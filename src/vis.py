from graphviz import Digraph
from ltl_regex import *
from typing import List, Tuple
from parser import parse

node_counter = 0
cluster_counter = 0


def make_graph(regex: OmegaRegex, filename: str, format: str) -> Digraph:
    latex = format == 'latex'
    if latex:
        format = 'pdf'
    g = Digraph('G', filename=f'{filename}.gv', format=format)
    g.attr(rankdir='LR')

    def make_omega_regex_graph(r: OmegaRegex, parents: List[str]):
        global cluster_counter
        match r:
            case Repeat(re):
                with g.subgraph(name=f'cluster_{cluster_counter}') as c:
                    cluster_counter += 1
                    _, heads = make_regex_graph(
                        c, re, parents, connect_parent=False)
                    c.attr(style='filled', color='lightgrey')
                    c.node_attr.update(style='filled', color='white')
                for head in heads:
                    for parent in parents:
                        g.edge(parent, head)
            case ConcatOmega(left, right):
                node1_tail, _ = make_regex_graph(
                    g, left, parents, connect_parent=True)
                make_omega_regex_graph(right, node1_tail)
            case UnionOmega(left, right):
                make_omega_regex_graph(left, parents)
                make_omega_regex_graph(right, parents)

    def make_regex_graph(g: Digraph, r: Regex, parents: List[str], connect_parent: bool = True) -> Tuple[List[str], List[str]]:
        global node_counter
        match r:
            case Epsilon():
                node_name = str(node_counter)
                if latex:
                    g.node(node_name, label='ε', texlbl='$\\varepsilon$')
                else:
                    g.node(node_name, 'ε')
                node_counter += 1
                if connect_parent:
                    for parent in parents:
                        g.edge(parent, node_name)
                return [node_name], [node_name]
            case Symbol(s):
                node_name = str(node_counter)
                if latex:
                    g.node(node_name, texlbl=f"${parse(s)}$", label=s)
                else:
                    g.node(node_name, s)
                node_counter += 1
                if connect_parent:
                    for parent in parents:
                        g.edge(parent, node_name)
                return [node_name], [node_name]
            case Concat(r1, r2):
                node1_tail, node1_head = make_regex_graph(
                    g, r1, parents, connect_parent)
                node2_tail, _ = make_regex_graph(
                    g, r2, node1_tail, connect_parent=True)
                return node2_tail, node1_head
            case Union(r1, r2):
                node1_tail, node1_head = make_regex_graph(
                    g, r1, parents, connect_parent)
                node2_tail, node2_head = make_regex_graph(
                    g, r2, parents, connect_parent)
                return list(set(node1_tail + node2_tail)), list(set(node1_head + node2_head))
            case Star(r):
                match r:
                    case Symbol(s):
                        node_name = str(node_counter)
                        if latex:
                            tex = parse(s)
                            s1 = s.replace("&", "&amp;")
                            g.node(node_name, label=f"<{s1}<BR /> <FONT POINT-SIZE=\"10\">repeats 0-∞</FONT>>", texlbl=f"${tex}$ \\\\ {{\\small \emph{{repeats $0$ - $\infty$}}}}", shape='egg')
                        else:
                            s1 = s.replace("&", "&amp;")
                            g.node(node_name, label=f"<{s1}<BR /> <FONT POINT-SIZE=\"10\">repeats 0-∞</FONT>>", shape='egg')
                        node_counter += 1
                        if connect_parent:
                            for parent in parents:
                                g.edge(parent, node_name)
                        return [node_name], [node_name]
                    case _:
                        node1_tail, node1_head = make_regex_graph(
                            g, r, parents, connect_parent)
                        node_name = str(node_counter)
                        if latex:
                            g.node(node_name, texlbl=f"$\cdots$", label='...')
                        else:
                            g.node(node_name, '...')
                        node_counter += 1
                        for tail in node1_tail:
                            g.edge(tail, node_name)
                        node2_tail, node2_head = make_regex_graph(
                            g, r, [node_name], connect_parent=True)
                        return node2_tail, node2_head
            case _:
                raise TypeError(f'Unsupported regex type: {r}')

    g.node('start', 'start')
    make_omega_regex_graph(regex, ['start'])
    return g


# a latex hack
def post_process_latex(filename: str):
    f = open(f'{filename}.tex', 'r')
    lines = f.read().splitlines()
    f.close()
    for i in range(len(lines)):
        line = lines[i]
        if "node" in line and "repeat" in line:
            index = line.find("node") + 4
            lines[i] = line[:index] + ' [align=center]' + line[index:]
    f = open(f'{filename}.tex', 'w')
    f.write("\n".join(lines))
    f.close()
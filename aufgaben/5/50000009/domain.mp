verbatimtex
\documentclass{article}
\usepackage{times}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{amsfonts}
\usepackage{txfonts}
\begin{document}
etex;

beginfig(1)

numeric u;
u = 100;

z0 = (0,0);
z1 = (0 * u, 0 * u);
z2 = (2 * u, 0 * u);
z3 = (2 * u, 2 * u);
z4 = (0 * u, 2 * u);

fill (z1--(2.05 * u,0)--(2.05*u,2.05*u)--(0*u,2.05*u)--cycle) withcolor (0.9,0.9,0.9);

path charboundary;
charboundary = (-0.05 * u, -0.05 * u)--(2.05 * u, -0.05 * u)
		--(2.05 * u, 2.05 * u)--(-0.05 * u, 2.05 * u)--cycle;

pickup pencircle scaled 0.7pt;

for tzero = -2 step 0.25 until 3:
	draw ((0, tzero * u) shifted (-5,-5))--((0, tzero * u) shifted (2*u+5,2*u+5))
		withcolor red;
endfor;

clip currentpicture to charboundary;

drawarrow (z0 shifted (-5,0))--(z2 shifted (10,0));
label.top(btex $x$ etex, z2 shifted (10,0));
drawarrow (z0 shifted (0,-5))--(0,2*u + 10);
label.lft(btex $t$ etex, z4 shifted(0,10));

label(btex $\Omega$ etex, (1 * u,1 *u));

pickup pencircle scaled 2pt yscaled 0.1pt;
draw z1--(z4 shifted (0,0.05 * u)) withcolor green;
pickup pencircle scaled 0.1pt yscaled 20;
draw z1--(z2 shifted (0.05 * u,0)) withcolor green;
pickup pencircle scaled 2pt;
draw z1 withcolor green;

pickup pencircle scaled 1pt;
draw (1 * u,-3)--(1 * u,3); label.bot(btex $1$ etex, (1 * u,-3));
draw (2 * u,-3)--(2 * u,3); label.bot(btex $2$ etex, (2 * u,-3));

draw (-3,1 * u)--(3,1 * u); label.lft(btex $1$ etex, (-3,1 * u));
draw (-3,2 * u)--(3,2 * u); label.lft(btex $2$ etex, (-3,2 * u));

endfig;

end

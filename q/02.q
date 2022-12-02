input:read0 `:../files/02.input

/=========================================

strats:(-[;65 88]') `int $ (raze') (vs[" "]') input
score1:{y+1+$[((x+1) mod 3)=y;6;x=y;3;0]}
score2:{(3*y)+1+$[y=1;x;y=2;(x + 1) mod 3;(x - 1) mod 3]}
p1:sum (.[score1]') strats
p2:sum (.[score2]') strats

/=========================================

show 20#"="
show "part1"
show p1

show 20#"="
show "part2"
show p2

exit 0

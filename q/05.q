input:read0 `:../files/05.input

/=========================================

stacks:(trim') flip ({x where (((til count x)-1)mod 4)=0}') 1 _ reverse (input?"") # input
strip:{ssr [;"to ";""] ssr [;"from ";""] ssr[;"move ";""] x}
instructions:flip `num`from`to!("III";" ") 0:(strip') (1+input?"";count input) sublist input

move1:{[s;i] s[i[`to]-1]:s[i[`to]-1],reverse (neg i[`num])#s[i[`from]-1]; s[i[`from]-1]:(neg i[`num])_s[i[`from]-1];s}
p1: (last') move1/[stacks;instructions]

move2:{[s;i] s[i[`to]-1]:s[i[`to]-1],(neg i[`num])#s[i[`from]-1]; s[i[`from]-1]:(neg i[`num])_s[i[`from]-1];s}
p2: (last') move2/[stacks;instructions]

/=========================================

show 20#"="
show "part1"
show p1

show 20#"="
show "part2"
show p2

exit 0

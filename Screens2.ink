
LIST teamA = Adams, Smith, Jones, Worthington
LIST teamB = Firth, Forth, Judd, Mango, Pearce
// use the following team variable for either
LIST team = Alpha, Beta

VAR varList = ()

VAR chosenPic = 2

TEAM A
~ team = LIST_ALL(teamA)

{ LIST_ALL(team) } <>
'==> <>
{ chosenPic } <>
 { team(chosenPic) } <>
 {LIST_RANGE(team, chosenPic, chosenPic)}
 
FIRST TEAM B
~ team = LIST_ALL(teamB) 

{ LIST_ALL(team) } <>
'==> <>
{ chosenPic } <>
 { team(chosenPic) } <>
 {LIST_RANGE(team, chosenPic, chosenPic)}
 
 SECOND TEAM B
~ team = LIST_RANGE(teamB, 1, 99)

{ LIST_ALL(team) } <>
'==> <>
{ chosenPic } <>
 { team(chosenPic) } <>
 {LIST_RANGE(team, chosenPic, chosenPic)}
 
 TEAM by variable
 ~ varList = teamB
 
 { LIST_ALL(varList) } <>
'==> <>
 { chosenPic } <>
 {LIST_RANGE(varList, chosenPic, chosenPic)}
//  { varList(chosenPic) }

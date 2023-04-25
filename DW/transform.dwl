//Adding numbers separated by paragraphs and getting the output maximum number

%dw 2.0
output application/json
// i just taken payload as variable " v "
var v= payload
---
// here i used max it Returns the highest Comparable value from the payload 
max((v splitBy "\n\n") map (sum($ splitBy "\n") as Number))

//splitBy  "\n" is a platform-dependent line separator as on Windows systems “\n” is used to add a new line in text

// splitBy "\n" forward slash  means we are getting new line and value also coming in next line  
// in this forword "\n" we are getting spaces also 

//(payload splitBy "\n") 
//EX:-"1",
//   "2",
//   "",
//   "3",
//   "4",
//   "5"

// if we place splitBy "/n" Backslash slash  means we are getting  value beside the value like 

//(payload splitBy "/n") 
//EX:-1\n2\n\n3\n4\n5  

//(payload splitBy "\n\n")
//here  "\n\n" it was adding data like the 
//first number would be 3 means (1+2)
//Second number would be 12 means (3+4+5+0)

//after that i was used  sum  for summation of each paragraph
//payload
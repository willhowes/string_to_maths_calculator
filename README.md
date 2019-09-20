# String to maths calculator

- A program that takes a string and evaluates  the answer.
- This was a process review undertaking at Makers Academy


## Notes on the instructions given by reviewer
- A program to make academic maths papers easier to read
-  it scans through maths papers, looking for sums
- the sums are given as strings
- pass in a string and the program will evaluate the expression
- return the original string and the evaluated results in an array
- first element in array the original sum, the second element is the result.

### Example:
INPUT: string "1 + 1"
OUTPUT: array ["1 + 1", 2]

### Program should handle the four common math operators
plus, minus, divide, multiply +, -, /, *

### Edge cases:
- empty strings
Input: Empty string: ""
Output: ["", 0]

- single numbers
INput: "1"
Output: ["1", 1]

- negative nos:
input "1.5 * -1"
output ["1.5 * -1", -1.5]

- can't divide by zero
input: "5 / 0"
ouput: ErrorType: Zero division error. message: "Divided by zero"

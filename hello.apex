// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

/*string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);**/

//Assignment 1
System.debug(POB.nFibonacci(10));
//Assignment 2
List<Integer> Input = new List<Integer>{5,4,3,2,1};
List<Integer> sortedList = POB.sortList(Input);
System.debug(sortedList);
//Assignment 3
System.debug(POB.nFactorial(3));
//Assignment 4
List<Integer> Input = new List<Integer>{8,4,3,2,51};
List<Integer> rotatedleftList = POB.rotateLeftNtimes(Input, 3);
System.debug(rotatedleftList);
//Assignment 5
//Assignment 6
POB.updateAccountSize();
//Assignment 7
POB.updateCAleads();
//Assignment 8
POB.closePastDueOpportunities();
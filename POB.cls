/*Write the following methods in a class called P0B. 
Note: The method signatures are given.**/

public  class POB {

        /*
     * 1. Return the nth Fibonacci number
     * Test Cases:
     * Input: 0     Output: 0
     * Input: 1    Output: 1
     * Input: 2     Output: 1
     * Input: 10    Output: 55
    */
    public static Integer nFibonacci(Integer n){
        Integer f1 = 0;
        Integer f2 = 1;
        Integer nextnumb = 0;
        if (n <= 1){
            return n;
        } 
        
        for(Integer i =2; i<=n; i++){
            nextnumb = f1 + f2;
            f1 = f2;
            f2 = nextnumb;
         }
          return nextnumb;
         }
     /*
     * 2. Sort a list of integers.
     * Test Cases:
     * Input: [2,4,5,1,3,1]     Output: [1,1,2,3,4,5]
     * Input: [5,4,3,2,1]     Output: [1,2,3,4,5]
     *
     * Don't use the sort() method... that would be lame.
    */
     public static List<Integer> sortList (List<Integer> intList) {
        Integer T1=0;
        Integer T2=0;
        list<Integer> sortedlist = new list<Integer>();
        for(Integer i= 0; i<intList.size(); i++){
          for(Integer j=0; j<intList.size(); j++) {
              if(intList.get(j)> intList.get(i)){
                  T1=intList.get(i);
                  T2=intList.get(j);
                  intList.set(j,T1);
                  intList.set(i,T2);
              }
          }
        }
        sortedlist = intList;
        return sortedlist;
    }
    /*
     * 3. Return the factorial of n.
     * Test Cases:
     * Input: 0    Output: 1
     * Input: 1    Output: 1
     * Input: 3    Output: 6
    */
    public static Integer nFactorial(Integer n){
        if(n==0){
            return 1;
        }
        return n*nFactorial(n-1);
    }
    /*
     * 4. Rotate left
     * Given a list, list, and an integer, n, rotate the values in list left n times and return list
     * Test Cases:
     * Input: [1,2,3,4,5], 1    Output: [2,3,4,5,1]
     * Input: [1,2,3,4,5], 6    Output: [2,3,4,5,1]
     * Input: [1,2,3,4,5], 3    Output: [4,5,1,2,3]
    */
   public static List<Integer> rotateLeftNtimes(List<Integer> nList, Integer n ){
       system.debug(nList);
     for(Integer i= 0; i< n; i++){
         // store the first elt of the list
         Integer j, firstelt=nlist.get(0);
         System.debug(nList);
         for(j=0; j< nlist.size()-1; j++){
             // shift element of the list by one
           nList.set(j,j+1);
                    }
                    // first element of the list is added at the end
                    nList.set(j,firstelt);

     }          
     return nList;          
    }
/*
     * 5. Balanced Brackets
     * A bracket is any one of the following: (, ), {, }, [, or ]
     * 
     * The following are balanced brackets:
     *    ( )
     *    ( ) ( )
     *    ( ( ) )
     *    ( { [ ] } )
     *
     * The following are NOT balanced brackets:
     *   (
     *   )
     *   ( ( )
     *   ( [ ) ]
     *
     * Return true if balanced
     * Return false if not balanced
    */
  // public boolean balance
   /*
     * 6. Create a method that retrieves a list of all accounts and updates those accounts.
     *      Create a custom field on the Account standard object called Size__c that will be a 
     * picklist containing small/medium/large.
     *     Create a method that retrieves a list of all accounts. 
     *         - If an account has between 1-1000 employees then it is classified as small.
     *         - If an account has between 1001-10000 employees it is classified as medium.
    *         - If an account has more than 10000 employees it is classified as large.
     *     Update the Size__c field on each account to reflect the amount of employees in the Account.
    */
    
    public static void updateAccountSize(){
               
            List<Account> udpdateAccounts = new List<Account>();
           for(Account acc:[SELECT Id, NumberOfEmployees, size__c from Account where NumberOfEmployees > 0]){
               
            if(acc.NumberOfEmployees > 0 && acc.NumberOfEmployees <= 1000){
                acc.size__c = 'small';
            }
            else if(acc.NumberOfEmployees > 1000 && acc.NumberOfEmployees <= 10000){
                acc.size__c = 'medium';
            }
            else {
                acc.size__c = 'large';
            }   
               udpdateAccounts.add(acc);
           }
           update udpdateAccounts;  
    }
  /* 
     * 7. Create a method that will find all leads that contain 'ca' in their fields. 
     *     If a lead is located in California(CA), change their Lead Status field to 'Closed - Not 
     * Converted' and their description should display the message, "We are no longer doing 
     * business in California."
     */
        public static void updateCALeads(){
       
            List<Lead> leads = [SELECT Id,Status,Description from Lead where State = 'California'];
            for(Lead l : leads){
                l.Status = 'Closed';
                l.Description = 'We are no longer doing business in Calefornia';
            }
            update leads;
       
        }  
        /*
     * 8. Create a method that will find all Opportunities which have already passed their Close Date 
     * and have a Stage field that is not 'Closed Won'. Since they have passed their Close Date and 
     * they are not marked as 'Closed Won', they should be marked as 'Closed Lost'.
     */
  public static void closePastDueOpportunities(){
      list<Opportunity> Opportunities = [SELECT Id from Opportunity where closeDate <= TODAY AND StageName!='Closed Won'];
      for(Opportunity opp: Opportunities){
          opp.StageName= 'Closed Loss';
      }
      update Opportunities;
  }
    }

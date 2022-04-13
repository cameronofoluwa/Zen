public with sharing class loopsAndDMLTwo {
    public loopsAndDMLTwo() {
        Account newAcct = new Account(name = 'Acme');
        try {
           insert newAcct;
        } catch (DmlException e) {
        // Process exception here
        }

        
        Account myAcct = [SELECT Id, Name, BillingCity FROM Account WHERE Id = :newAcct.Id];
        myAcct.BillingCity = 'San Francisco'; 
        
        try {
            update myAcct;
        } catch (DmlException e) {
            // Process exception here
        }

        List<Account> acctList = new List<Account>();
        // Fill the accounts list with some accounts
        
        try {
            upsert acctList;
        } catch (DmlException e) {
           
        }


        Account[] doomedAccts = [SELECT Id, Name FROM Account 
        WHERE Name = 'Acme']; 
        try {
            delete doomedAccts;
            } catch (DmlException e) {
            // Process exception here
        }


        Account[] savedAccts = [SELECT Id, Name FROM Account WHERE Name = 'Acme' ALL ROWS]; 
        try {
            undelete savedAccts;
        } catch (DmlException e) {
            // Process exception here
        }


        List<Account> ls = new List<Account>{new Account(name='Acme Inc.'),new Account(name='Acme Corp.')};
        insert ls;
        
        Account masterAcct = [SELECT Id, Name FROM Account WHERE Name = 'Acme Inc.' LIMIT 1];
        Account mergeAcct = [SELECT Id, Name FROM Account WHERE Name = 'Acme' LIMIT 1];
        try {
            merge masterAcct mergeAcct;
        } catch (DmlException e) {
            // Process exception here
        }
    }
}

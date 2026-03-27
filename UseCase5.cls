public with sharing class UseCase5 {
    
    //method that, given an account name and contact name, checks if there is a relationship between them 
    public static Boolean accountContactLink(String accName, String conName) {

        List<Contact> conList = [SELECT Id, Name FROM Contact WHERE Name = :conName AND Account.Name = :accName];

        if(conList.size() > 0) {
            return true;
        } 

        return false;
    }
}

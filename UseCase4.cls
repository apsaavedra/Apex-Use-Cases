public with sharing class UseCase4 {
    
    //method to retrieve all the contact emails of an account
    public static List<String> accountAssociatedContactsEmails(String accountName) {

        List<String> listOfEmails = new List<String>();

        List<Account> acc = [SELECT Id, Name FROM Account WHERE Name = :accountName LIMIT 1];

        if(acc.size() == 1){
            List<Contact> listOfContacts = [SELECT Id, Email FROM Contact WHERE AccountId = :acc[0].Id];

            if(listOfContacts.size() > 0) {
                for (Contact con : listOfContacts) {
                    if(con.Email != null) {
                    listOfEmails.add(con.Email);
                    }
                 }
            }
        }

        return listOfEmails;
    }
}

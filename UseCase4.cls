public with sharing class UseCase4 {
    
    //method to retrieve all the contact emails of an account
    public static List<String> accountAssociatedContactsEmails(String accountName) {

        List<String> listOfEmails = new List<String>();

        List<Contact> listOfContacts = [SELECT Id, Email FROM Contact WHERE Account.Name = :accountName];

        if(listOfContacts.size() > 0) {
            for (Contact con : listOfContacts) {
                if(con.Email != null) {
                listOfEmails.add(con.Email);
                }
            }
        }

        return listOfEmails;
    }
}

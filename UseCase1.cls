public with sharing class UseCase1 {
 
    public static void InsertNewContact(String firstName, String lastName, String email, String accountId) {

        List<Contact> listContacts = new List<Contact>();

        Contact contact = new Contact();

        if(!String.isBlank(lastName)) {
        contact.FirstName = firstName;
        contact.LastName = lastName;
        contact.Email = email;
        contact.AccountId = accountId;
        listContacts.add(contact);
        }

        if(!listContacts.isEmpty()) {
            insert listContacts;
        }
    }
}

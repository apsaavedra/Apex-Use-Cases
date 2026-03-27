public with sharing class UseCase3 {

    /*method to send an outbound email to a user. 
    For this to be posible, the email of the sender must be verified, 
    and in Deliverability (in Setup), Access to Send Email must be 'All Email' 
    and 'Verify the ownership of email sending domains by DKIM keys' must be checked*/
  
    public static void sendAlertEmail(String email) {

        if(!String.isEmpty(email)) {
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();

            List<String> listEmails = new List<String>{email};

            mail.setSubject('HI - Take a look!');
            mail.setPlainTextBody('Hello! This is a test. This Email was created and send with Apex');
            mail.setToAddresses(listEmails);

            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });  
        }
    
    }
}

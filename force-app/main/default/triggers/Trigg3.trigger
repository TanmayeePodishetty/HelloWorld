trigger Trigg3 on customerinfo__c (before update,before insert) {
    for(customerinfo__c obj:Trigger.New){
       
			//Integer dtDate = Date.valueOf(obj.AccountOpeningDate__c).year();
   		   //  System.debug(dtDate);
			//	if(dtDate == 2022)
            Date firstDate = Date.valueOf(obj.AccountOpeningDate__c);
			date myDate = date.today();
			Integer monthsBetween = firstDate.monthsBetween(myDate);
        if( monthsBetween>=12)
		  
		{
            if(obj.Balance__c>10000 && obj.Balance__c<100000){
                obj.Comments__c=' You are Silver Customer.Please contact branch for new offers especially for you';
            } 
            else if(obj.Balance__c>100000 && obj.Balance__c<1000000){
                obj.Comments__c='You are Gold Customer.Please contact branch for new offers especially for you.'; 
            }
            else if(obj.Balance__c>1000000){
                obj.Comments__c='You are Platinum Customer.Please contact branch for new offers especially for you.'; 
            }
            
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            Messaging.SingleEmailMessage bye = new Messaging.SingleEmailMessage();
            List<Messaging.SingleEmailMessage> mails =  new List<Messaging.SingleEmailMessage>();
            List<String> sendTo = new List<String>();
            sendTo.add('guddutanmayee98@gmail.com');
            sendTo.add('tanmayeep@dextara.com');
            bye.setToAddresses(sendTo);
            bye.setSubject('Your contact detail are added'); 
            bye.setHtmlBody('Byee');
            
            mail.setToAddresses(sendTo);
            mail.setSubject('Congrats'); 
            String body = 'You are Silver Customer.Please contact branch for new offers especially for you';
            mail.setHtmlBody(body);
            mails.add(mail);
            mails.add(bye);
            Messaging.sendEmail(mails);
        }
        
    

}
}
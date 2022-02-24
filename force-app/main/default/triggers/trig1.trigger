trigger trig1 on Aadhar__c (after update) {
for(Aadhar__c ad:Trigger.old){

if(ad.Annualsalary__c>5000){
ad.Address__c='hyderabad';
update ad;
}
}
}
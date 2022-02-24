public class Task {
    public void main1(){
        List<Contact> acc = new List<Contact>();
        acc=([SELECT Name FROM Contact
              WHERE Name LIKE 'S%'
            LIMIT 10]);
        
        
    }

}
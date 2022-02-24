public class Sample4 {
    String mail='guddutanmayee98@gmail.srin';
    public void email(){
        if(mail.containsAny('@')&&(mail.endsWith('.com')||mail.endsWith('.gov')||mail.endsWith('.biz')||mail.endsWith('.in')||mail.endsWith('.mil')))
        {
           System.debug('valid mail id'+' '+ mail);
          }
        else{
            System.debug('invalid mail');
        }
       
        
    }

}
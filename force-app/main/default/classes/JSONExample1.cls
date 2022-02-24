public class JSONExample1
{
    Integer id;
    String name;
    String username;
    String email;
    Address address;
    public Static void fetchdata()
    {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://jsonplaceholder.typicode.com/users');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        if(response.getStatusCode() == 200)
        {
            //List<Object>results = (List<Object>)JSON.deserializeUntyped(response.getBody());
            //System.debug()
            JSONParser ob = JSON.createParser(response.getBody());
            System.debug(ob);
            while (ob.nextToken() != null) {
                if (ob.getCurrentToken() == JSONToken.START_ARRAY) {
                    while (ob.nextToken() != null) {
                        if (ob.getCurrentToken() == JSONToken.START_OBJECT)
                        {
                            JSONExample1 z=(JSONExample1)ob.readValueAs(JSONExample1.class);
                            System.debug(z.email);
                            System.debug(z.address.geo);
                        }
                    }
                }
            }
        }
        
        
        
    }
    
}
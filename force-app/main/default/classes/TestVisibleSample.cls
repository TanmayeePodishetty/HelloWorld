public class TestVisibleSample {
    @TestVisible
    private boolean status;
    
    public boolean numbertest(Integer a)
    {
        if(Math.mod(a, 2)==0)
        {
            status=true;
        }
        else
        {
            status=false;
        }
        return status;
    }
    

}
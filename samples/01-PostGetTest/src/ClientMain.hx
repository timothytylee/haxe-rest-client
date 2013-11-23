import restclient.RestClient;
#if neko
import neko.Sys;
#end

class ClientMain
{
    static function main()
    {
        var inParams = new Hash<String>();
        inParams.set("key", "test");
        inParams.set("value", "asdf");
        RestClient.post(
            "http://localhost:8000",
            inParams);
        
        var outParams = new Hash<String>();
        outParams.set("key", "test");
        var result = RestClient.get(
            "http://localhost:8000",
            outParams);
            
        trace("Returned from server: " + result);
        
        trace("Press Enter to close the client...");
#if neko
        Sys.stdin().readLine();
#end
    }
}
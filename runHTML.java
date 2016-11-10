import java.io.*;
import java.lang.*;
public class runHTML{ 
  public static void main(String args[]) throws IOException,InterruptedException {
  Runtime rTime = Runtime.getRuntime();
  String url = "http://localhost/CsTesting2/index.php";
  String browser = "C:/Program Files/Internet Explorer/iexplore.exe ";
  Process pc = rTime.exec(browser + url);
  pc.waitFor();
  }
}

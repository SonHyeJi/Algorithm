
import java.util.Scanner;

public class Main {

  public static void main(String[] args) {

    Scanner sc = new Scanner(System.in);
    int h = sc.nextInt();
    int m = sc.nextInt();
    int t = sc.nextInt();

    m = h * 60 + m;
    m = m + t;

    h = (m/60) % 24;
    int min = m%60;

    System.out.println(h + " " + min);

  }
}
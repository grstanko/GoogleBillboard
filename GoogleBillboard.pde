public final static String e =
    "2."
    + "718281828459045235360287471352662497757247093699959574966967627724076630"
    + "3535475945713821785251664274274663919320030599218174135966290435";
final int LEN = 10;
public void setup() {
  for (int i = LEN; i < e.length(); i++) {
    String digits = e.substring(i - LEN + 1, i);
    double d = Double.parseDouble(digits);
    if (isPrime((long) d))
      System.out.println("Prime off:" + (i - 10) + " v" + (long) d);
  }
}
public void draw() {
  // not needed for this assignment
}
boolean isPrime(long n) {
  if (n <= 1)
    return false;

  for (int i = 2; i < n; i++)
    if (n % i == 0)
      return false;

  return true;
}

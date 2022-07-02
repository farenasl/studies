package CoderByte;

import java.util.*; 

class Main {
  public static String ArrayMatching(String[] strArr) {
    int [] first = Arrays.stream(strArr[0].replace("[","").replace("]","").replace(" ","").split(",")).mapToInt(Integer::parseInt).toArray();
    int [] second = Arrays.stream(strArr[1].replace("[","").replace("]","").replace(" ","").split(",")).mapToInt(Integer::parseInt).toArray();
    int x = (first.length > second.length ? first.length : second.length);

    int [] results = new int[x];

    for (int i = x-1; i >= 0; i--)
      if (i <= (first.length - 1))
      {
        if (i <= (second.length - 1))
          results[i] = first[i] + second[i];
        else
          results[i] = first[i];
      }
      else
        results[i] = second[i];

    return String.valueOf(Arrays.toString(results).replace("[","").replace(", ", "-").replace("]",""));
  }

  public static void main (String[] args) {  
    // keep this function call here
    // System.out.println(ArrayMatching(new String[] {"[5, 2, 3]", "[2, 2, 3, 10, 6]"}));
    // System.out.println(ArrayMatching(new String[] {"[1, 2, 1]", "[2, 1, 5, 2]"}));
    // System.out.println(String.valueOf("1-2") == String.valueOf("1-2"));
    System.out.print("Test 1 passing: " + (ArrayMatching(new String[] {"[5, 2, 3]", "[2, 2, 3, 10, 6]"}).equals("7-4-6-10-6")) + "\r\n");
    System.out.print("Test 2 passing: " + (ArrayMatching(new String[] {"[1, 2, 1]", "[2, 1, 5, 2]"}).equals("3-3-6-2")) + "\r\n"); 
  }
}
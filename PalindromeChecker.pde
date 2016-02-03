public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String a = new String();
   String b = new String();


    for (int i = 0; i < word.length(); i ++) {
    String c = word.substring(i, i + 1);
    if (! (c.equals(" ") || c.equals(".") || c.equals(",") || c.equals("!") || c.equals("'")  )) {
      a = a + c.toLowerCase();
    }
  }
  
  

   for(int i = a.length() - 1; i > -1; i--)
   {
    b = b + a.substring(i, i + 1);
   }
      if(b.equals(a))
   {
    return true;
   }
 
  return false;
}


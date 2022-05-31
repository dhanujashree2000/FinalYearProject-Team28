

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Locale;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author admin
 */
public class NewClass {
 
 
  public static void main(String[] args) throws Exception
  {
      Locale currentLocale = Locale.getDefault();
 
System.out.println(currentLocale.getDisplayLanguage());
System.out.println(currentLocale.getDisplayCountry());
System.out.println(currentLocale.getDisplayName(currentLocale));
 
System.out.println(currentLocale.getLanguage());
System.out.println(currentLocale.getCountry());
  }
}

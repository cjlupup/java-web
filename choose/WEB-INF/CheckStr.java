package mybean;
import java.io.*;
import java.lang.String.*;
import javax.servlet.http.*;
public class CheckStr
{
	public CheckStr()
	{
	}
	public boolean checkString(String str)
	{
		boolean bool=true;
		int num=str.length();
		for(int i=0;i<num;i++)
		{
			if(str.charAt(i)<48||str.charAt(i)>122)
			{
				i=num+1;
				bool=false;
			}
			else if(str.charAt(i)>57&&str.charAt(i)<65)
			{
				i=num+1;
				bool=false;
				}
			else if(90<str.charAt(i)&&str.charAt(i)<97)
			{
				i=num+1;
				bool=false;
			}
			else
			bool=true;
		}
		return bool;
		
	}
	public boolean checkEmail(String str)
	{
		boolean bool=true;
		if(str.indexOf('@')<0)
			bool=false;
		else if(str.indexOf('.')<0)
				bool=false;
			 else if(str.indexOf('@')>str.indexOf('.'))
			 		bool=false;
			 		else
			 		bool=true;	
		return bool;
	}
	public boolean checkNum(String str)
	{
		boolean bool=true;
		for(int i=0;i<str.length();i++)
		{
			if(str.charAt(i)<48||str.charAt(i)>57){
			bool=false;
			i=str.length()+1;
			}
			else 
			bool=true;
		}
		return bool;
	}
}
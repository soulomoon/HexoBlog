---
title: C# Class Virtual method 
date: 2017-05-23 23:41:19
tags: c# dotnet
Categories: c#
---
C# is an OO language, with a lot of easy way to get things done class as Object.
One of the most important character of class would be class method,  the soul for OO.
And here we have the following way to declare a method:

* ### Virtual

When you declare a method as virtual,  declaring it it in derived class require you to adding a `override` or `new` modifier. The run-time type of the instance is the determine factor, we can see that when `TrySpeak`, 
Passing in child and father, both call `Speak` of father, while `TryScream`, would call each method. In an instance of Child, There are two `Scream` methods from Child class or Father class. We could either call the `Scream`  from Child class or Father class.
Because `Virtaul` Modifier mark the method so it can be overriding by the derived class, which means, when you use an `Child` instance, even the `Scream` is called from Father class, it is overriden, it would be defferent if you use new modifier. So Bassically  

```C#
import system;

class Father
{
    Speak()
    {
      	Console.Writeline("Father is speaking")	
    }
    virtual Scream()
    {
      	Console.Writeline("Father is screaming")	
    }
}
class Child: father
{
    Speak()
    {
      	Console.Writeline("Child is speaking")	
    }
    override Scream()
    {
      	Console.Writeline("Child is screaming")	
    }
}

class APP
{
    public static void Main()
    {
        // We new two instances here
        Father father = new Father();
        Child child = new Child();
        
        // Here we call their scream or speak through TryScream or TrySpeak
        TrySpeak(father);
        TrySpeak(child);
        //>>>"Father is speaking"
        //>>>"Father is speaking"

        TryScream(father);
        TryScream(child);
        //>>>"Father is screaming"
        //>>>"Child is screaming"

    }
    // when your method take an Parameter who type is Father
    // You can either pass in a Father instance or A instance of a derived Class from Father
    // which could be Child
    public static void TrySpeak(Father person)
    {
        person.Scream();
    }
    public static void TryScream(Father person)
    {
        person.Speak();
    }
}
```
You can find Docs from microsoft here:
[Docs](https://docs.microsoft.com/en-us/dotnet/articles/csharp/tour-of-csharp/classes-and-objects)

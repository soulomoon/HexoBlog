---
title: Linq Use 'Sql Like'
date: 2017-05-26 23:29:48
tags:
---

C# Linq provide a very cool method to operate on set. especially when you work with sql, you could almost abondent the way that stich sql string word by word.

But I came with a little difficult when interpreting the sql "LIKE" operation to line. after a search on google, there are two options came out. 

The first, use the contains, beginwith and endwith to search instead. But there are a limit with this one, say I want to want to provide a function to provide a way to search one keyword, that matches "LIKE" in sql. Notice there are three function here I need to combind them, that meas I have to work on some extra function to dynamically swtich between these three.

The second, work on version greater than .NET 4.0, use sqlfunction [PatIndex](https://msdn.microsoft.com/en-us/library/system.data.objects.sqlclient.sqlfunctions.patindex.aspx), that return The starting character position where the string pattern was found, if you feed on a string pattern and target. The rest is to findout if it is larger than zero. You then have what you want on "LIKE":

`PATINDEX('%ter%', 'interesting data')`

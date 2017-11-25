---
title: Droping Foreign Key in Sql Server
date: 2017-06-07 00:02:26
tags:
---

Since foreign key is a kind of constrain in database

We can drop foreign key like this  

```sql
ALTER TABLE 'TableName' drop CONSTRAINT 'FKConstrainName';
```

InOrder to find 'FKConstainName', we can use this function in MSSQLs 

```sql
EXEC sp_fkeys 'TableName'
```
![pic](avatar.jpg)

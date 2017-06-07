---
title: droping foreign key in sql server
date: 2017-06-07 00:02:26
tags:
---

Since foreign key is a kind of constrain in database

We can drop foreign key like this  

```mssql
ALTER TABLE 'TableName' drop CONSTRAINT 'FKConstrainName';
```

InOrder to find 'FKConstainName', we can use this function in MSSQLs 

```mssql
EXEC sp_fkeys 'TableName'
```
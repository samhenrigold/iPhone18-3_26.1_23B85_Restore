@interface IMDSqlSelectQuery
+ (id)selectQueryForTable:(id)table withColumns:(id)columns;
+ (id)selectQueryForTable:(id)table withColumns:(id)columns where:(id)where;
- (IMDSqlSelectQuery)initWithTableName:(id)name;
- (id)createQueryString;
@end

@implementation IMDSqlSelectQuery

- (IMDSqlSelectQuery)initWithTableName:(id)name
{
  v8.receiver = self;
  v8.super_class = IMDSqlSelectQuery;
  v3 = [(IMDSqlQuery *)&v8 initWithTableName:name];
  v6 = v3;
  if (v3)
  {
    objc_msgSend_setColumns_(v3, v4, @"*", v5);
  }

  return v6;
}

- (id)createQueryString
{
  v5 = MEMORY[0x1E696AD60];
  v6 = objc_msgSend_columns(self, a2, v2, v3);
  v10 = objc_msgSend_tableName(self, v7, v8, v9);
  v13 = objc_msgSend_stringWithFormat_(v5, v11, @"SELECT %@ FROM %@", v12, v6, v10);
  v17 = objc_msgSend_where(self, v14, v15, v16);
  if (v17)
  {
    objc_msgSend_appendFormat_(v13, v18, @" WHERE %@", v20, v17);
  }

  if (objc_msgSend_limit(self, v18, v19, v20))
  {
    v24 = objc_msgSend_limit(self, v21, v22, v23);
    objc_msgSend_appendFormat_(v13, v25, @" LIMIT %lld", v26, v24);
  }

  objc_msgSend_appendString_(v13, v21, @";", v23);
  return v13;
}

+ (id)selectQueryForTable:(id)table withColumns:(id)columns
{
  v5 = objc_msgSend_selectQueryForTable_(self, a2, table, columns);
  objc_msgSend_setColumns_(v5, v6, columns, v7);
  return v5;
}

+ (id)selectQueryForTable:(id)table withColumns:(id)columns where:(id)where
{
  v7 = objc_msgSend_selectQueryForTable_(self, a2, table, columns);
  objc_msgSend_setColumns_(v7, v8, columns, v9);
  objc_msgSend_setWhere_(v7, v10, where, v11);
  return v7;
}

@end
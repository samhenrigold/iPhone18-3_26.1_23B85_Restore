@interface IMDSqlQuery
+ (id)databaseQuery:(id)query;
- (IMDSqlQuery)initWithTableName:(id)name;
- (id)createQueryString;
- (void)dealloc;
@end

@implementation IMDSqlQuery

- (IMDSqlQuery)initWithTableName:(id)name
{
  v9.receiver = self;
  v9.super_class = IMDSqlQuery;
  v7 = [(IMDSqlQuery *)&v9 init];
  if (v7)
  {
    v7->_tableName = objc_msgSend_copy(name, v4, v5, v6);
  }

  return v7;
}

+ (id)databaseQuery:(id)query
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithTableName_(v4, v5, query, v6);

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMDSqlQuery;
  [(IMDSqlQuery *)&v3 dealloc];
}

- (id)createQueryString
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = IMFileLocationTrimFileName();
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4, @"Use one of the subclasses", v5);
  v9 = objc_msgSend_stringWithFormat_(v2, v7, @"Failure in %s at %s:%d. %@", v8, "[IMDSqlQuery createQueryString]", v3, 40, v6, 0x1B7D22539, 0, "[IMDSqlQuery createQueryString]", "[IMDSqlQuery createQueryString]");
  v10 = IMGetAssertionFailureHandler();
  if (v10)
  {
    v10(v9);
  }

  else
  {
    v14 = objc_msgSend_warning(MEMORY[0x1E69A6138], v11, v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEC540(v9, v14);
    }
  }

  return 0;
}

@end
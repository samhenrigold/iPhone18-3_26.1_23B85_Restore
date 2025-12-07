@interface IMDPredicateToSQLConverter
- (IMDPredicateToSQLConverter)initWithPredicate:(id)predicate keyPathsToColumns:(id)columns columnPrefix:(id)prefix;
- (NSArray)parameters;
- (void)bindParametersToSqliteWithStatement:(CSDBSqliteStatement *)statement;
@end

@implementation IMDPredicateToSQLConverter

- (NSArray)parameters
{
  v4 = objc_msgSend_copy(self->_foundParameters, a2, v2, v3);

  return v4;
}

- (IMDPredicateToSQLConverter)initWithPredicate:(id)predicate keyPathsToColumns:(id)columns columnPrefix:(id)prefix
{
  v19 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  columnsCopy = columns;
  prefixCopy = prefix;
  v18.receiver = self;
  v18.super_class = IMDPredicateToSQLConverter;
  v11 = [(IMDPredicateToSQLConverter *)&v18 init];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    foundParameters = v11->_foundParameters;
    v11->_foundParameters = v12;

    objc_storeStrong(&v11->_keyPathsToColumns, columns);
    objc_storeStrong(&v11->_columnPrefix, prefix);
    v14 = sub_1B7B81744(v11, predicateCopy);
    expression = v11->_expression;
    v11->_expression = v14;
  }

  v16 = v11;

  return v16;
}

- (void)bindParametersToSqliteWithStatement:(CSDBSqliteStatement *)statement
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = objc_msgSend_parameters(self, a2, statement, v3, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v17, v21, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          CSDBSqliteBindTextFromCFString();
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_integerValue(v10, v12, v13, v14);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_13;
          }

          objc_msgSend___im_nanosecondTimeInterval(v10, v11, v15, v16);
        }

        CSDBSqliteBindInt64();
LABEL_13:
        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v11, &v17, v21, 16);
    }

    while (v7);
  }
}

@end
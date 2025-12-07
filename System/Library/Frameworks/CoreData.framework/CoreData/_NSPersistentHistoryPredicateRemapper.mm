@interface _NSPersistentHistoryPredicateRemapper
+ (id)defaultInstance;
- (_BYTE)replacementValueForKeyPath:(_BYTE *)result;
- (_NSPersistentHistoryPredicateRemapper)initWithStoreIdentifier:(id)identifier;
- (id)createPredicateForFetchFromPredicate:(id)predicate withContext:(id)context;
- (id)replacementValueForValue:(uint64_t)value;
- (void)dealloc;
- (void)visitPredicateExpression:(id)expression;
@end

@implementation _NSPersistentHistoryPredicateRemapper

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _NSPersistentHistoryPredicateRemapper;
  [(_NSPersistentHistoryPredicateRemapper *)&v3 dealloc];
}

+ (id)defaultInstance
{
  result = defaultInstance_di_38;
  if (!defaultInstance_di_38)
  {
    result = objc_alloc_init(_NSPersistentHistoryPredicateRemapper);
    defaultInstance_di_38 = result;
  }

  return result;
}

- (_NSPersistentHistoryPredicateRemapper)initWithStoreIdentifier:(id)identifier
{
  v4 = [(_NSPersistentHistoryPredicateRemapper *)self init];
  if (v4)
  {
    v4->_storeID = identifier;
  }

  return v4;
}

- (id)createPredicateForFetchFromPredicate:(id)predicate withContext:(id)context
{
  if (predicate)
  {
    v6 = [predicate copy];
    [v6 acceptVisitor:self flags:1];
    if (self->_storeID)
    {
      return v6;
    }
  }

  v8 = [MEMORY[0x1E696AE18] predicateWithValue:{predicate == 0, context}];

  return v8;
}

- (id)replacementValueForValue:(uint64_t)value
{
  v39 = *MEMORY[0x1E69E9840];
  if (!value)
  {
    return 0;
  }

  if (!a2)
  {
    if (*(value + 16) == 1)
    {
      *(value + 16) = 0;
      v4 = objc_alloc(MEMORY[0x1E696AD98]);

      return [v4 initWithInt:0];
    }

    return 0;
  }

  obj = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      _backingObjectID = [obj _backingObjectID];
      goto LABEL_12;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }

    obj = objc_msgSend_valueForKey_([obj storeTokens]);
    if (obj)
    {
      goto LABEL_13;
    }

    v7 = 0;
    *(value + 8) = 0;
    return v7;
  }

  _backingObjectID = [obj objectID];
LABEL_12:
  obj = _backingObjectID;
LABEL_13:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = obj;
LABEL_15:

    return v6;
  }

  if ([obj isNSArray])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = [(_NSPersistentHistoryPredicateRemapper *)value replacementValueForValue:?];
          [v7 addObject:v12];
        }

        v9 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v9);
    }

    return v7;
  }

  if ([obj isNSSet])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = [(_NSPersistentHistoryPredicateRemapper *)value replacementValueForValue:?];
          [v7 addObject:v17];
        }

        v14 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v14);
    }

    return v7;
  }

  if ([obj isNSOrderedSet])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = [obj countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        for (k = 0; k != v19; ++k)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = [(_NSPersistentHistoryPredicateRemapper *)value replacementValueForValue:?];
          [v7 addObject:v22];
        }

        v19 = [obj countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v19);
    }

    return v7;
  }

  if (![obj isNSString])
  {
    v6 = obj;
    goto LABEL_15;
  }

  return [obj copy];
}

- (_BYTE)replacementValueForKeyPath:(_BYTE *)result
{
  v8[4] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if ([a2 isNSString])
    {
      v7[0] = @"author";
      v7[1] = @"bundleID";
      v8[0] = @"AUTHORTS";
      v8[1] = @"BUNDLEIDTS";
      v7[2] = @"contextName";
      v7[3] = @"processID";
      v8[2] = @"CONTEXTNAMETS";
      v8[3] = @"PROCESSIDTS";
      v3 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:{4), "objectForKey:", a2}];
      if (v3)
      {
        return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@", v3, @"NAME"];
      }

      if ([a2 isEqualToString:@"transactionNumber"] || (objc_msgSend(a2, "isEqualToString:", @"changeID") & 1) != 0 || objc_msgSend(a2, "isEqualToString:", @"token"))
      {
        if ([a2 isEqualToString:@"token"])
        {
          v2[16] = 1;
        }

        v4 = objc_alloc(MEMORY[0x1E696AEC0]);
        v5 = NSSQLPrimaryKeyPropertyName;
      }

      else if ([a2 isEqualToString:@"timestamp"])
      {
        v4 = objc_alloc(MEMORY[0x1E696AEC0]);
        v5 = PFPersistentHistoryTransactionTimestamp;
      }

      else if ([a2 isEqualToString:@"changeType"])
      {
        v4 = objc_alloc(MEMORY[0x1E696AEC0]);
        v5 = PFPersistentHistoryChangeType;
      }

      else if ([a2 isEqualToString:@"changedEntity"])
      {
        v4 = objc_alloc(MEMORY[0x1E696AEC0]);
        v5 = PFPersistentHistoryChangeEntity;
      }

      else if ([a2 isEqualToString:@"transaction"] && byte_1ED4BEECF == 1)
      {
        v4 = objc_alloc(MEMORY[0x1E696AEC0]);
        v5 = PFPersistentHistoryChangeTransactionID;
      }

      else
      {
        if (![a2 isEqualToString:@"changes"] || byte_1ED4BEECF != 1)
        {
          return [a2 copy];
        }

        v4 = objc_alloc(MEMORY[0x1E696AEC0]);
        v5 = PFPersistentHistoryTransactionChanges;
      }

      return [v4 initWithString:*v5];
    }

    else
    {

      return a2;
    }
  }

  return result;
}

- (void)visitPredicateExpression:(id)expression
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_previousKeyPathExpressionWasToken = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [expression expressionType] == 3)
  {
LABEL_3:
    keyPath = [expression keyPath];
    if (keyPath)
    {
      v6 = keyPath;
      v7 = [(_NSPersistentHistoryPredicateRemapper *)self replacementValueForKeyPath:keyPath];
      v8 = v7;
      if (v7)
      {
        if (v7 != v6)
        {
          v9 = "_value";
LABEL_15:
          object_setInstanceVariableWithStrongDefault(expression, v9, v8);
          goto LABEL_16;
        }
      }
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return;
  }

  constantValue = [expression constantValue];
  if (constantValue || self->_previousKeyPathExpressionWasToken)
  {
    v11 = [(_NSPersistentHistoryPredicateRemapper *)self replacementValueForValue:constantValue];
    v8 = v11;
    if (v11)
    {
      if (v11 != constantValue)
      {
        v9 = "constantValue";
        goto LABEL_15;
      }
    }
  }

LABEL_16:

  MEMORY[0x1EEE66BE0]();
}

@end
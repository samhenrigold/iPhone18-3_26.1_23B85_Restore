@interface _DKPredicateValidator
+ (BOOL)validatePredicate:(id)predicate allowedKeys:(id)keys error:(id *)error;
+ (BOOL)validateSortDescriptors:(id)descriptors;
- (BOOL)validateWithError:(id *)error;
- (_DKPredicateValidator)initWithPredicate:(id)predicate allowedKeys:(id)keys;
- (void)visitPredicateExpression:(id)expression;
@end

@implementation _DKPredicateValidator

+ (BOOL)validatePredicate:(id)predicate allowedKeys:(id)keys error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (predicate)
  {
    keysCopy = keys;
    predicateCopy = predicate;
    v10 = [[self alloc] initWithPredicate:predicateCopy allowedKeys:keysCopy];

    if (v10)
    {
      LOBYTE(error) = [v10 validateWithError:error];
    }

    else if (error)
    {
      v13 = *MEMORY[0x1E696A578];
      v14[0] = @"Predicate was invalid because it was nil.";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMQueryErrorDomain" code:2 userInfo:v11];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    LOBYTE(error) = 1;
  }

  return error;
}

- (_DKPredicateValidator)initWithPredicate:(id)predicate allowedKeys:(id)keys
{
  predicateCopy = predicate;
  keysCopy = keys;
  if (predicateCopy)
  {
    v15.receiver = self;
    v15.super_class = _DKPredicateValidator;
    v8 = [(_DKPredicateValidator *)&v15 init];
    if (v8)
    {
      v9 = [predicateCopy copy];
      predicate = v8->_predicate;
      v8->_predicate = v9;

      if (keysCopy)
      {
        v11 = [MEMORY[0x1E695DFD8] setWithArray:keysCopy];
        allowedKeys = v8->_allowedKeys;
        v8->_allowedKeys = v11;
      }
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)validateWithError:(id *)error
{
  [(_DKPredicateValidator *)self setValidated:1];
  predicate = [(_DKPredicateValidator *)self predicate];

  if (predicate)
  {
    predicate2 = [(_DKPredicateValidator *)self predicate];
    [predicate2 acceptVisitor:self flags:3];

    if (error)
    {
      error = [(_DKPredicateValidator *)self error];

      if (error)
      {
        *error = [(_DKPredicateValidator *)self error];
      }
    }
  }

  return [(_DKPredicateValidator *)self validated];
}

- (void)visitPredicateExpression:(id)expression
{
  v56[1] = *MEMORY[0x1E69E9840];
  expressionCopy = expression;
  if ([(_DKPredicateValidator *)self validated])
  {
    v5 = objc_alloc(MEMORY[0x1E695DFD8]);
    v42 = [v5 initWithObjects:{*MEMORY[0x1E696A240], *MEMORY[0x1E696A258], *MEMORY[0x1E696A288], *MEMORY[0x1E696A290], *MEMORY[0x1E696A298], *MEMORY[0x1E696A5B0], *MEMORY[0x1E696A748], *MEMORY[0x1E696A900], *MEMORY[0x1E696AA50], *MEMORY[0x1E696AA58], *MEMORY[0x1E696AA60], 0}];
    expressionType = [expressionCopy expressionType];
    v41 = expressionCopy;
    if (expressionType == 10)
    {
LABEL_5:
      keyPath = [expressionCopy keyPath];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v55 = *MEMORY[0x1E696A578];
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid keypath class: %@", objc_opt_class()];
        v56[0] = v27;
        obj = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:&v55 count:1];

        v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMQueryErrorDomain" code:2 userInfo:obj];
        [(_DKPredicateValidator *)self setError:v28];

        [(_DKPredicateValidator *)self setValidated:0];
        goto LABEL_38;
      }

      keyPath2 = [expressionCopy keyPath];
      v8 = [keyPath2 componentsSeparatedByString:@"."];

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = v8;
      v9 = 0;
      v10 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
      if (!v10)
      {
        goto LABEL_24;
      }

      v11 = *v45;
      while (1)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v45 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v44 + 1) + 8 * i);
          if ([v13 hasPrefix:@"@"])
          {
            if ([v13 length] < 2)
            {
              goto LABEL_21;
            }

            v14 = [v13 substringFromIndex:1];
            if (([v42 containsObject:v14] & 1) == 0)
            {
              [(_DKPredicateValidator *)self setValidated:0];
            }
          }

          else
          {
            allowedKeys = [(_DKPredicateValidator *)self allowedKeys];
            if (allowedKeys)
            {
              allowedKeys2 = [(_DKPredicateValidator *)self allowedKeys];
              v17 = [allowedKeys2 containsObject:v13];

              if ((v17 & 1) == 0)
              {
LABEL_21:
                [(_DKPredicateValidator *)self setValidated:0];
                continue;
              }
            }

            if (!v9)
            {
              v9 = objc_opt_new();
            }

            [v9 addObject:v13];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
        if (!v10)
        {
LABEL_24:

          if (![(_DKPredicateValidator *)self validated])
          {
            v52 = *MEMORY[0x1E696A578];
            v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Used keys: %@", v9];
            v53 = v18;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];

            v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMQueryErrorDomain" code:2 userInfo:v19];
            [(_DKPredicateValidator *)self setError:v20];
          }

          goto LABEL_38;
        }
      }
    }

    if (expressionType != 4)
    {
      if (expressionType == 3)
      {
        goto LABEL_5;
      }

      goto LABEL_39;
    }

    keyPath = [expressionCopy function];
    obj = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"valueForKey:", @"valueForKeyPath:", @"value", 0}];
    if ([obj containsObject:keyPath])
    {
      goto LABEL_38;
    }

    if (![keyPath isEqual:@"castObject:toType:"])
    {
      v29 = MEMORY[0x1E696ABC8];
      function = [expressionCopy function];
      arguments = [expressionCopy arguments];
      v32 = [v29 expressionForFunction:function arguments:arguments];

      if (!v32)
      {
        [(_DKPredicateValidator *)self setValidated:0];
        v48 = *MEMORY[0x1E696A578];
        v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid function: %@", keyPath];
        v49 = v33;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];

        v35 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMQueryErrorDomain" code:2 userInfo:v34];
        [(_DKPredicateValidator *)self setError:v35];

        v32 = 0;
      }

LABEL_38:
LABEL_39:

      expressionCopy = v41;
      goto LABEL_40;
    }

    arguments2 = [expressionCopy arguments];
    if ([arguments2 count] == 2)
    {
      arguments3 = [expressionCopy arguments];
      v23 = [arguments3 objectAtIndexedSubscript:1];
      if (![v23 expressionType])
      {
        arguments4 = [expressionCopy arguments];
        v37 = [arguments4 objectAtIndexedSubscript:1];
        constantValue = [v37 constantValue];
        v39 = [constantValue isEqual:@"NSDate"];

        if (v39)
        {
          goto LABEL_38;
        }

LABEL_33:
        [(_DKPredicateValidator *)self setValidated:0];
        v24 = MEMORY[0x1E696ABC0];
        v50 = *MEMORY[0x1E696A578];
        v51 = @"Unsupported cast";
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        v26 = [v24 errorWithDomain:@"BMQueryErrorDomain" code:3 userInfo:v25];
        [(_DKPredicateValidator *)self setError:v26];

        goto LABEL_38;
      }
    }

    goto LABEL_33;
  }

LABEL_40:
}

+ (BOOL)validateSortDescriptors:(id)descriptors
{
  v29 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"alloc", @"new", @"init", @"mutableCopy", @"release", @"retain", @"autorelease", @"dealloc", @"finalize", 0}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = descriptorsCopy;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v23 + 1) + 8 * i) key];
        v11 = [v10 componentsSeparatedByString:@"."];

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v20;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v20 != v15)
              {
                objc_enumerationMutation(v12);
              }

              if ([v4 containsObject:*(*(&v19 + 1) + 8 * j)])
              {

                v17 = 0;
                goto LABEL_19;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v17 = 1;
    }

    while (v7);
  }

  else
  {
    v17 = 1;
  }

LABEL_19:

  return v17;
}

@end
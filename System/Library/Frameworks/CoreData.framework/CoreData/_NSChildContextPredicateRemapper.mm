@interface _NSChildContextPredicateRemapper
- (_NSChildContextPredicateRemapper)init;
- (_NSChildContextPredicateRemapper)initWithContext:(id)context;
- (id)createPredicateForFetchFromPredicate:(id)predicate withContext:(id)context;
- (id)replacementValueForValue:(uint64_t)value;
- (void)dealloc;
- (void)visitPredicateExpression:(id)expression;
@end

@implementation _NSChildContextPredicateRemapper

- (_NSChildContextPredicateRemapper)init
{
  v3.receiver = self;
  v3.super_class = _NSChildContextPredicateRemapper;
  return [(_NSChildContextPredicateRemapper *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _NSChildContextPredicateRemapper;
  [(_NSChildContextPredicateRemapper *)&v3 dealloc];
}

- (_NSChildContextPredicateRemapper)initWithContext:(id)context
{
  v4 = [(_NSChildContextPredicateRemapper *)self init];
  if (v4)
  {
    v4->_context = context;
  }

  return v4;
}

- (id)createPredicateForFetchFromPredicate:(id)predicate withContext:(id)context
{
  if (predicate && context)
  {
    v6 = [predicate copy];
    [v6 acceptVisitor:self flags:1];
    return v6;
  }

  else
  {

    return [predicate copy];
  }
}

- (id)replacementValueForValue:(uint64_t)value
{
  v2 = 0;
  v40 = *MEMORY[0x1E69E9840];
  if (!value || !a2)
  {
    return v2;
  }

  obj = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    obj = [obj objectID];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(value + 8);
    if (v4)
    {
      v5 = *(*(v4 + 168) + 8);
      v6 = obj;
      if (v5)
      {
        v7 = [*v5 objectForKey:obj];
        v6 = obj;
        if (v7)
        {
          v6 = v7;
        }
      }
    }

    else
    {
      v6 = obj;
    }

    return v6;
  }

  if ([obj isNSArray])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v34;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = [(_NSChildContextPredicateRemapper *)value replacementValueForValue:?];
          [v2 addObject:v12];
        }

        v9 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v9);
    }

    return v2;
  }

  if ([obj isNSSet])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = [(_NSChildContextPredicateRemapper *)value replacementValueForValue:?];
          [v2 addObject:v17];
        }

        v14 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v14);
    }

    return v2;
  }

  if ([obj isNSOrderedSet])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = [(_NSChildContextPredicateRemapper *)value replacementValueForValue:?];
          [v2 addObject:v23];
        }

        v20 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v20);
    }

    return v2;
  }

  if ([obj isNSString])
  {

    return [obj copy];
  }

  else
  {

    return obj;
  }
}

- (void)visitPredicateExpression:(id)expression
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    constantValue = [expression constantValue];
    if (constantValue)
    {
      v6 = constantValue;
      v7 = [(_NSChildContextPredicateRemapper *)self replacementValueForValue:constantValue];
      if (v7)
      {
        if (v7 != v6)
        {
          object_setInstanceVariableWithStrongDefault(expression, "constantValue", v7);
        }
      }
    }

    MEMORY[0x1EEE66BE0]();
  }
}

@end
@interface NSCompoundPredicateOperator(_NSCoreDataSQLPredicateCategories)
- (id)minimalFormInContext:()_NSCoreDataSQLPredicateCategories ofPredicates:;
@end

@implementation NSCompoundPredicateOperator(_NSCoreDataSQLPredicateCategories)

- (id)minimalFormInContext:()_NSCoreDataSQLPredicateCategories ofPredicates:
{
  v45 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  operatorType = [self operatorType];
  if (operatorType == 2)
  {
    selfCopy = self;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v24 = [a4 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v40;
      while (2)
      {
        v27 = 0;
        do
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(a4);
          }

          v28 = *(*(&v39 + 1) + 8 * v27);
          v20 = objc_autoreleasePoolPush();
          v29 = [v28 minimalFormInContext:a3];
          if ([objc_msgSend(MEMORY[0x1E696AF08] "defaultInstance")])
          {
            v32 = MEMORY[0x1E696AF08];
LABEL_38:
            defaultInstance = [v32 defaultInstance];
            objc_autoreleasePoolPop(v20);
            return defaultInstance;
          }

          if (([objc_msgSend(MEMORY[0x1E696ABE8] "defaultInstance")] & 1) == 0)
          {
            [array addObject:v29];
          }

          objc_autoreleasePoolPop(v20);
          ++v27;
        }

        while (v25 != v27);
        v25 = [a4 countByEnumeratingWithState:&v39 objects:v44 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    v30 = [array count];
    if (v30 != 1)
    {
      self = selfCopy;
      if (!v30)
      {
        v23 = MEMORY[0x1E696ABE8];
        return [v23 defaultInstance];
      }

      return [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(self subpredicates:{"operatorType"), array}];
    }

    return [array objectAtIndex:0];
  }

  if (operatorType == 1)
  {
    selfCopy2 = self;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = [a4 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v36;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(a4);
          }

          v19 = *(*(&v35 + 1) + 8 * v18);
          v20 = objc_autoreleasePoolPush();
          v21 = [v19 minimalFormInContext:a3];
          if ([objc_msgSend(MEMORY[0x1E696ABE8] "defaultInstance")])
          {
            v32 = MEMORY[0x1E696ABE8];
            goto LABEL_38;
          }

          if (([objc_msgSend(MEMORY[0x1E696AF08] "defaultInstance")] & 1) == 0)
          {
            [array addObject:v21];
          }

          objc_autoreleasePoolPop(v20);
          ++v18;
        }

        while (v16 != v18);
        v16 = [a4 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v22 = [array count];
    if (v22 != 1)
    {
      self = selfCopy2;
      if (!v22)
      {
        v23 = MEMORY[0x1E696AF08];
        return [v23 defaultInstance];
      }

      return [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(self subpredicates:{"operatorType"), array}];
    }

    return [array objectAtIndex:0];
  }

  if (operatorType)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Bad compound predicate predicateOperator type" userInfo:0]);
  }

  v9 = [objc_msgSend(a4 objectAtIndex:{0), "minimalFormInContext:", a3}];
  v10 = [objc_msgSend(MEMORY[0x1E696AF08] "defaultInstance")];
  defaultInstance2 = [MEMORY[0x1E696ABE8] defaultInstance];
  defaultInstance = defaultInstance2;
  if (v10)
  {
    return defaultInstance;
  }

  if (![defaultInstance2 isEqual:v9])
  {
    [array addObject:v9];
    return [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(self subpredicates:{"operatorType"), array}];
  }

  v13 = MEMORY[0x1E696AF08];

  return [v13 defaultInstance];
}

@end
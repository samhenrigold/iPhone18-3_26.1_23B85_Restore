@interface NSFunctionExpression(_NSCoreDataSQLPredicateCategories)
- (id)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories;
- (id)minimalFormInContext:()_NSCoreDataSQLPredicateCategories;
- (uint64_t)_mapKVCOperatorsToFunctionsInContext:()_NSCoreDataSQLPredicateCategories;
@end

@implementation NSFunctionExpression(_NSCoreDataSQLPredicateCategories)

- (id)minimalFormInContext:()_NSCoreDataSQLPredicateCategories
{
  selfCopy = self;
  selector = [self selector];
  if (selector != sel_valueForKey_ && selector != sel_valueForKeyPath_)
  {
    return selfCopy;
  }

  v7 = [objc_msgSend(selfCopy "operand")];
  expressionType = [v7 expressionType];
  if (expressionType == 1)
  {
    if (![objc_msgSend(selfCopy "arguments")])
    {
      return selfCopy;
    }

    goto LABEL_30;
  }

  if (expressionType == 3 || expressionType == 4 && (sel_valueForKey_ == [v7 selector] || sel_valueForKeyPath_ == objc_msgSend(v7, "selector")))
  {
    v9 = [objc_msgSend(v7 "arguments")];
    v10 = [objc_msgSend(selfCopy "arguments")];
    expressionType2 = [v9 expressionType];
    v12 = expressionType2;
    if (expressionType2 == 10 || !expressionType2 && ([objc_msgSend(v7 "operand")], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      expressionType3 = [v10 expressionType];
      if (expressionType3 == 10 || !expressionType3 && ([v10 constantValue], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if (v12 == 10)
        {
          constantValue = [objc_msgSend(objc_msgSend(v7 "arguments")];
        }

        else
        {
          constantValue = [v9 constantValue];
        }

        v15 = constantValue;
        if ([v10 expressionType] == 10)
        {
          keyPath = [v10 keyPath];
        }

        else
        {
          keyPath = [v10 constantValue];
        }

        v17 = keyPath;
        v18 = objc_opt_class();
        v19 = [v18 _newKeyPathExpressionForString:{objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, v17)}];
        defaultInstance = [MEMORY[0x1E696AEA0] defaultInstance];
        if (defaultInstance == [v7 operand])
        {
          v24 = [objc_alloc(MEMORY[0x1E696ACB8]) initWithOperand:objc_msgSend(v7 andKeyPath:{"operand"), v19}];
        }

        else
        {
          v21 = objc_alloc(objc_opt_class());
          expressionType4 = [v7 expressionType];
          operand = [v7 operand];
          v24 = [v21 initWithExpressionType:expressionType4 operand:operand selector:sel_valueForKeyPath_ argumentArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v19)}];
        }

        selfCopy = v24;

LABEL_30:
        v25 = [selfCopy _mapKVCOperatorsToFunctionsInContext:a3];
        if (v25)
        {
          return v25;
        }
      }
    }
  }

  return selfCopy;
}

- (uint64_t)_mapKVCOperatorsToFunctionsInContext:()_NSCoreDataSQLPredicateCategories
{
  v5 = [objc_msgSend(self "arguments")];
  expressionType = [v5 expressionType];
  if (expressionType)
  {
    if (expressionType != 10)
    {
      return 0;
    }

    keyPath = [v5 keyPath];
  }

  else
  {
    keyPath = [v5 constantValue];
  }

  v8 = keyPath;
  location = CFStringFind(keyPath, @"@", 0).location;
  if (location == -1)
  {
    return 0;
  }

  v10 = location;
  v11 = CFStringFind(v8, @"@", 4uLL);
  if (v11.location != v10)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11.length, @"Too many KVC aggregates in keypath: %@", v8);
LABEL_15:
    [a3 setValue:objc_msgSend(v18 forKey:{"exceptionWithName:reason:userInfo:", v19, v20, 0), @"NSUnderlyingException"}];
    return 0;
  }

  Length = CFStringGetLength(v8);
  v13 = v10 + 1;
  if (Length <= v10 + 1)
  {
LABEL_14:
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"Malformed keypath: %@", v8);
    goto LABEL_15;
  }

  if (CFStringGetCharacterAtIndex(v8, v13) != 99)
  {
    v23 = [(__CFString *)v8 componentsSeparatedByString:@"."];
    v24 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v25 = [v23 count];
    if (v25)
    {
      v26 = v25;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      do
      {
        v30 = [v23 objectAtIndex:v27];
        if ([v30 characterAtIndex:0] == 64)
        {
          v29 = v30;
        }

        else
        {
          if (v28)
          {
            [v24 appendString:@"."];
          }

          [v24 appendString:v30];
          v28 = 1;
        }

        ++v27;
      }

      while (v26 != v27);
    }

    else
    {
      v29 = 0;
    }

    if ([objc_msgSend(a3 objectForKey:{@"supportedKVCAggregates", "containsObject:", v29}])
    {
      if ([objc_msgSend(self "operand")] == 1 && objc_msgSend(v24, "length"))
      {
        v31 = [v29 substringFromIndex:1];
        if ([@"avg" isEqual:v31])
        {
          v32 = @"average";
        }

        else
        {
          v32 = v31;
        }

        v33 = [(__CFString *)v32 mutableCopy];
        [v33 appendString:@":"];
        v34 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v24];
        v35 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v34, 0}];
        v21 = [MEMORY[0x1E696ABC8] expressionForFunction:v33 arguments:v35];
      }

      else
      {
        v21 = 0;
      }

      return v21;
    }

    [a3 setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8), 0), @"NSUnderlyingException"}];

    return 0;
  }

  v14 = [objc_msgSend(self "operand")];
  if (v14 != 13)
  {
    if (v14 == 1)
    {
      if (v10)
      {
        v15 = [(__CFString *)v8 substringWithRange:0, v10 - 1];
        v16 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v15];
        v17 = MEMORY[0x1E695DEC8];
        goto LABEL_46;
      }

      goto LABEL_14;
    }

    return 0;
  }

  v36 = [-[__CFString componentsSeparatedByString:](v8 componentsSeparatedByString:{@".", "mutableCopy"}];
  [v36 removeLastObject];
  if ([v36 count] && objc_msgSend(objc_msgSend(v36, "objectAtIndex:", 0), "isEqualToString:", &stru_1EF3F1768))
  {
    [v36 removeObjectAtIndex:0];
  }

  if (![v36 count])
  {
    v43 = objc_alloc(MEMORY[0x1E695DEC8]);
    operand = [self operand];
    v41 = v43;
    goto LABEL_48;
  }

  v37 = [v36 componentsJoinedByString:@"."];
  v38 = MEMORY[0x1E696ABC8];
  operand2 = [self operand];
  if ([v36 count] == 1)
  {
    v40 = @"valueForKey:";
  }

  else
  {
    v40 = @"valueForKeyPath:";
  }

  v16 = [v38 expressionForFunction:operand2 selectorName:v40 arguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", objc_msgSend(MEMORY[0x1E696ABC8], "expressionForConstantValue:", v37))}];
  v17 = MEMORY[0x1E695DEC8];
LABEL_46:
  v41 = [v17 alloc];
  operand = v16;
LABEL_48:
  v44 = [v41 initWithObject:operand];
  v45 = [MEMORY[0x1E696ABC8] expressionForFunction:@"count:" arguments:v44];

  return v45;
}

- (id)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories
{
  v62[1] = *MEMORY[0x1E69E9840];
  v44 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  expressionType = [self expressionType];
  v57 = 0;
  v43 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (expressionType == 3)
  {
    keyPath = [self keyPath];
    v7 = [keyPath rangeOfString:@"@"];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [keyPath rangeOfString:@"." options:4];
      if (v17 != 0x7FFFFFFFFFFFFFFFLL && v7 < v17)
      {
        v18 = MEMORY[0x1E696ABC0];
        v61 = @"expression";
        v62[0] = self;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
        v8 = 0;
        v57 = [v18 errorWithDomain:*MEMORY[0x1E696A250] code:134097 userInfo:v19];
        goto LABEL_22;
      }
    }

    [v44 addObject:{objc_msgSend(self, "keyPath")}];
    goto LABEL_4;
  }

  v9 = [objc_msgSend(self "operand")];
  if (!v9)
  {
    v8 = 0;
    goto LABEL_22;
  }

  v10 = [MEMORY[0x1E695DFA8] set];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  arguments = [self arguments];
  v12 = [arguments countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v12)
  {
    v13 = *v54;
LABEL_8:
    v14 = 0;
    while (1)
    {
      if (*v54 != v13)
      {
        objc_enumerationMutation(arguments);
      }

      v15 = [*(*(&v53 + 1) + 8 * v14) _keypathsForDerivedPropertyValidation:&v57];
      if (!v15)
      {
        goto LABEL_17;
      }

      [v10 addObjectsFromArray:{objc_msgSend(v15, "allObjects")}];
      if (v12 == ++v14)
      {
        v12 = [arguments countByEnumeratingWithState:&v53 objects:v60 count:16];
        if (v12)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  selector = [self selector];
  if (sel_valueForKey_ == selector || sel_valueForKeyPath_ == selector)
  {
    if ([v9 count])
    {
      if ([v10 count])
      {
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v25 = [v9 countByEnumeratingWithState:&v49 objects:v59 count:16];
        if (v25)
        {
          v38 = v9;
          v39 = v25;
          v40 = *v50;
          v41 = a3;
LABEL_32:
          v26 = 0;
          v27 = v38;
          v28 = v39;
          while (1)
          {
            if (*v50 != v40)
            {
              objc_enumerationMutation(v27);
            }

            v29 = *(*(&v49 + 1) + 8 * v26);
            v30 = objc_autoreleasePoolPush();
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v31 = [v10 countByEnumeratingWithState:&v45 objects:v58 count:16];
            v42 = v30;
            if (v31)
            {
              v32 = *v46;
              while (2)
              {
                for (i = 0; i != v31; ++i)
                {
                  if (*v46 != v32)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v34 = *(*(&v45 + 1) + 8 * i);
                  if ([v34 hasPrefix:@"$"])
                  {
                    v35 = 0;
                    goto LABEL_45;
                  }

                  [v44 addObject:{objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v29, v34)}];
                }

                v31 = [v10 countByEnumeratingWithState:&v45 objects:v58 count:16];
                if (v31)
                {
                  continue;
                }

                break;
              }

              v35 = 1;
LABEL_45:
              v27 = v38;
              v28 = v39;
            }

            else
            {
              v35 = 1;
            }

            a3 = v41;
            objc_autoreleasePoolPop(v42);
            if (!v35)
            {
              goto LABEL_17;
            }

            if (++v26 == v28)
            {
              v8 = 1;
              v39 = [v27 countByEnumeratingWithState:&v49 objects:v59 count:16];
              if (v39)
              {
                goto LABEL_32;
              }

              goto LABEL_22;
            }
          }
        }

        goto LABEL_4;
      }

      allObjects = [v9 allObjects];
    }

    else
    {
      allObjects = [v10 allObjects];
    }

    [v44 addObjectsFromArray:allObjects];
    goto LABEL_4;
  }

  if ([objc_msgSend(self "operand")])
  {
LABEL_17:
    v8 = 0;
    goto LABEL_22;
  }

  v37 = [objc_msgSend(self "operand")];
  if (NSClassFromString(@"_NSPredicateUtilities") == v37)
  {
    [self selector];
    if (!object_getMethodImplementation())
    {
      goto LABEL_17;
    }

    [v44 addObjectsFromArray:{objc_msgSend(v10, "allObjects")}];
  }

  else if (sel_canonical_ != [self selector])
  {
    goto LABEL_17;
  }

LABEL_4:
  v8 = 1;
LABEL_22:
  v20 = v57;
  if (a3 && v57)
  {
    *a3 = v57;
  }

  [v43 drain];
  v21 = 0;
  v22 = v57;
  v23 = v44;
  if (v8)
  {
    return v44;
  }

  else
  {
    return 0;
  }
}

@end
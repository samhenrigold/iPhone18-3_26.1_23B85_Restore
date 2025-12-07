@interface NSSQLIntermediate
+ (BOOL)expressionIsBasicKeypath:(id)keypath;
+ (BOOL)isSimpleKeypath:(id)keypath;
- (BOOL)_functionExpressionIsSubqueryFollowedByKeypath:(_BOOL8)result;
- (BOOL)isFunctionScoped;
- (BOOL)isHavingScoped;
- (BOOL)isIndexExpressionScoped;
- (BOOL)isIndexScoped;
- (BOOL)isOrScoped;
- (BOOL)isTargetColumnsScoped;
- (BOOL)isUpdateColumnsScoped;
- (BOOL)isUpdateScoped;
- (BOOL)isWhereScoped;
- (NSSQLIntermediate)initWithScope:(id)scope;
- (char)promoteJoinsInKeypathsForExpression:(char *)result;
- (id)_generateSQLForConstantValue:(uint64_t)value inContext:;
- (id)_generateSQLForExpression:(uint64_t)expression allowToMany:(void *)many inContext:;
- (id)_generateSQLForFetchExpression:(uint64_t)expression allowToMany:(void *)many inContext:;
- (id)_generateSQLForKeyPathExpression:(id)expression allowToMany:(BOOL)many inContext:(id)context;
- (id)_generateSQLForVariableExpression:(id)expression allowToMany:(BOOL)many inContext:(id)context;
- (id)_lastScopedItem;
- (id)generateSQLStringInContext:(id)context;
- (uint64_t)_generateSQLForConstantCollection:(uint64_t)collection reboundFrom:(void *)from inContext:;
- (uint64_t)_generateSQLForSubqueryExpression:(uint64_t)expression trailingKeypath:(void *)keypath inContext:;
- (uint64_t)isSimpleNoIndexFunction:(uint64_t)function;
- (uint64_t)isVariableBasedKeypathScopedBySubquery:(uint64_t)result;
- (void)_generateSQLForExpressionCollection:(uint64_t)collection allowToMany:(void *)many inContext:;
- (void)_promoteJoinsForSubqueryScopedKeypath:(id)keypath;
@end

@implementation NSSQLIntermediate

- (BOOL)isIndexScoped
{
  scope = self->_scope;
  if (scope)
  {
    LOBYTE(scope) = [(NSSQLIntermediate *)scope isIndexScoped];
  }

  return scope;
}

- (BOOL)isTargetColumnsScoped
{
  scope = self->_scope;
  if (scope)
  {
    LOBYTE(scope) = [(NSSQLIntermediate *)scope isTargetColumnsScoped];
  }

  return scope;
}

- (BOOL)isUpdateScoped
{
  scope = self->_scope;
  if (scope)
  {
    LOBYTE(scope) = [(NSSQLIntermediate *)scope isUpdateScoped];
  }

  return scope;
}

- (BOOL)isOrScoped
{
  scope = self->_scope;
  if (scope)
  {
    LOBYTE(scope) = [(NSSQLIntermediate *)scope isOrScoped];
  }

  return scope;
}

- (BOOL)isUpdateColumnsScoped
{
  scope = self->_scope;
  if (scope)
  {
    LOBYTE(scope) = [(NSSQLIntermediate *)scope isUpdateColumnsScoped];
  }

  return scope;
}

- (id)_lastScopedItem
{
  result = self->_scope;
  if (result)
  {
    return [result _lastScopedItem];
  }

  return result;
}

- (BOOL)isFunctionScoped
{
  scope = self->_scope;
  if (scope)
  {
    LOBYTE(scope) = [(NSSQLIntermediate *)scope isFunctionScoped];
  }

  return scope;
}

- (BOOL)isIndexExpressionScoped
{
  scope = self->_scope;
  if (scope)
  {
    LOBYTE(scope) = [(NSSQLIntermediate *)scope isIndexExpressionScoped];
  }

  return scope;
}

- (NSSQLIntermediate)initWithScope:(id)scope
{
  v5.receiver = self;
  v5.super_class = NSSQLIntermediate;
  result = [(NSSQLIntermediate *)&v5 init];
  if (result)
  {
    result->_scope = scope;
  }

  return result;
}

- (id)generateSQLStringInContext:(id)context
{
  v5 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v5, v6, v7, v8, v9, v10);
  return 0;
}

- (BOOL)isHavingScoped
{
  scope = self->_scope;
  if (scope)
  {
    LOBYTE(scope) = [(NSSQLIntermediate *)scope isHavingScoped];
  }

  return scope;
}

- (BOOL)isWhereScoped
{
  scope = self->_scope;
  if (scope)
  {
    LOBYTE(scope) = [(NSSQLIntermediate *)scope isWhereScoped];
  }

  return scope;
}

+ (BOOL)expressionIsBasicKeypath:(id)keypath
{
  if ([keypath expressionType] != 4 || objc_msgSend(objc_msgSend(keypath, "operand"), "expressionType") != 1 && objc_msgSend(objc_msgSend(keypath, "operand"), "expressionType"))
  {
    return 0;
  }

  if (sel_valueForKey_ == [keypath selector])
  {
    return 1;
  }

  return sel_valueForKeyPath_ == [keypath selector];
}

+ (BOOL)isSimpleKeypath:(id)keypath
{
  if ([keypath expressionType] == 3)
  {
    return 1;
  }

  return [self expressionIsBasicKeypath:keypath];
}

- (uint64_t)isSimpleNoIndexFunction:(uint64_t)function
{
  if (!function)
  {
    return 0;
  }

  if ([a2 expressionType] != 4)
  {
    return 0;
  }

  if (sel_noindex_ != [a2 selector])
  {
    return 0;
  }

  arguments = [a2 arguments];
  if (!arguments)
  {
    return 0;
  }

  v5 = arguments;
  if ([arguments count] != 1)
  {
    return 0;
  }

  lastObject = [v5 lastObject];
  v7 = objc_opt_class();

  return [v7 isSimpleKeypath:lastObject];
}

- (uint64_t)isVariableBasedKeypathScopedBySubquery:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if ([a2 expressionType] == 4 && objc_msgSend(objc_msgSend(a2, "operand"), "expressionType") == 2)
    {
      result = [v3 governingEntityForKeypathExpression:a2];
      if (result)
      {
        return sel_valueForKey_ == [a2 selector] || sel_valueForKeyPath_ == objc_msgSend(a2, "selector");
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_promoteJoinsForSubqueryScopedKeypath:(id)keypath
{
  scope = self->_scope;
  if (scope)
  {
    [(NSSQLIntermediate *)scope _promoteJoinsForSubqueryScopedKeypath:keypath];
  }
}

- (char)promoteJoinsInKeypathsForExpression:(char *)result
{
  v19 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v3 = result;
  while (1)
  {
    result = [a2 expressionType];
    if (result != 20)
    {
      break;
    }

    -[NSSQLIntermediate promoteJoinsInKeypathsForExpression:](v3, [a2 trueExpression]);
    a2 = [a2 falseExpression];
  }

  if (result <= 9)
  {
    if (result != 3)
    {
      if (result == 4)
      {
        result = [a2 selector];
        if (sel_max_ != result && sel_min_ != result && sel_count_ != result)
        {
          if ([objc_opt_class() isSimpleKeypath:a2])
          {
            return -[NSSQLFetchIntermediate promoteToOuterJoinsAlongKeypathWithComponents:]([v3 fetchIntermediate], objc_msgSend(objc_msgSend(a2, "predicateFormat"), "componentsSeparatedByString:", @"."));
          }

          else if ([(NSSQLIntermediate *)v3 isVariableBasedKeypathScopedBySubquery:a2])
          {
            return [v3 _promoteJoinsForSubqueryScopedKeypath:a2];
          }

          else
          {
            v16 = 0u;
            v17 = 0u;
            v14 = 0u;
            v15 = 0u;
            arguments = [a2 arguments];
            result = [arguments countByEnumeratingWithState:&v14 objects:v18 count:16];
            if (result)
            {
              v11 = result;
              v12 = *v15;
              do
              {
                v13 = 0;
                do
                {
                  if (*v15 != v12)
                  {
                    objc_enumerationMutation(arguments);
                  }

                  [(NSSQLIntermediate *)v3 promoteJoinsInKeypathsForExpression:?];
                }

                while (v11 != v13);
                result = [arguments countByEnumeratingWithState:&v14 objects:v18 count:16];
                v11 = result;
              }

              while (result);
            }
          }
        }
      }

      return result;
    }

    goto LABEL_15;
  }

  if (result != 14)
  {
    if (result != 10)
    {
      return result;
    }

LABEL_15:
    v4 = [objc_msgSend(a2 "predicateFormat")];
    fetchIntermediate = [v3 fetchIntermediate];

    return [(NSSQLFetchIntermediate *)fetchIntermediate promoteToOuterJoinsAlongKeypathWithComponents:v4];
  }

  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  constantValue = [a2 constantValue];
  result = [constantValue countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(constantValue);
        }

        [(NSSQLIntermediate *)v3 promoteJoinsInKeypathsForExpression:?];
      }

      while (v7 != v9);
      result = [constantValue countByEnumeratingWithState:&v14 objects:v18 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

- (BOOL)_functionExpressionIsSubqueryFollowedByKeypath:(_BOOL8)result
{
  if (result)
  {
    return [a2 expressionType] == 4 && objc_msgSend(objc_msgSend(a2, "operand"), "expressionType") == 13 && (sel_valueForKey_ == objc_msgSend(a2, "selector") || sel_valueForKeyPath_ == objc_msgSend(a2, "selector")) && objc_msgSend(objc_msgSend(a2, "arguments"), "count") == 1;
  }

  return result;
}

- (id)_generateSQLForConstantValue:(uint64_t)value inContext:
{
  if (result)
  {
    v4 = [[NSSQLConstantValueIntermediate alloc] initWithConstantValue:a2 inScope:result context:value];
    v5 = [(NSSQLConstantValueIntermediate *)v4 generateSQLStringInContext:value];

    return v5;
  }

  return result;
}

- (uint64_t)_generateSQLForSubqueryExpression:(uint64_t)expression trailingKeypath:(void *)keypath inContext:
{
  if (self)
  {
    if ([objc_msgSend(a2 "collection")] - 3 <= 1)
    {
      v8 = [[NSSQLSubqueryExpressionIntermediate alloc] initWithExpression:a2 trailingKeypath:expression inScope:self];
      v9 = [(NSSQLSubqueryExpressionIntermediate *)v8 generateSQLStringInContext:keypath];

      return v9;
    }

    [keypath setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], @"Unsupported subquery collection expression type", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", a2, @"subquery", @"NSUnderlyingException"}];
  }

  return 0;
}

- (id)_generateSQLForKeyPathExpression:(id)expression allowToMany:(BOOL)many inContext:(id)context
{
  manyCopy = many;
  if ([objc_msgSend(expression "operand")])
  {
    v9 = [(NSSQLExpressionIntermediate *)[NSSQLKeypathExpressionIntermediate alloc] initWithExpression:expression allowToMany:manyCopy inScope:self];
    v10 = [(NSSQLKeypathExpressionIntermediate *)v9 generateSQLStringInContext:context];

    return v10;
  }

  else
  {
    constantValue = [expression constantValue];
    if (([constantValue isNSArray] & 1) != 0 || (objc_msgSend(constantValue, "isNSSet") & 1) != 0 || objc_msgSend(constantValue, "isNSOrderedSet"))
    {

      return [(NSSQLIntermediate *)self _generateSQLForConstantCollection:constantValue reboundFrom:0 inContext:context];
    }

    else
    {

      return [(NSSQLIntermediate *)self _generateSQLForConstantValue:constantValue inContext:context];
    }
  }
}

- (uint64_t)_generateSQLForConstantCollection:(uint64_t)collection reboundFrom:(void *)from inContext:
{
  v61 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v8 = [objc_msgSend(from objectForKey:{@"nestingLevel", "intValue"}];
  if ([a2 isNSArray] & 1) != 0 || (objc_msgSend(a2, "isNSSet"))
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = [a2 isNSOrderedSet] ^ 1;
  }

  if (v8 <= 0 && (v9 & 1) == 0 && [a2 count] >= 0x65)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v10 = [a2 countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (!v10)
    {
LABEL_34:
      v26 = [from objectForKey:@"bindIntarrays"];
      if (!v26)
      {
        v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [from setObject:v26 forKey:@"bindIntarrays"];
      }

      v27 = [[NSSQLBindIntarray alloc] initWithValue:a2];
      v28 = [from objectForKey:@"aliasGenerator"];
      [(NSSQLBindIntarray *)v27 setTableName:[(NSSQLAliasGenerator *)v28 generateTempTableName]];
      v30 = [v26 count];
      [v26 addObject:v27];
      [(NSSQLBindIntarray *)v27 setIndex:v30];

      if (collection)
      {
        v31 = [v26 count];
        v32 = [objc_msgSend(from objectForKey:{@"entity", "entityDescription"}];
        v33 = [from objectForKey:@"bindIntarraysSubstitutionOrder"];
        if (!v33)
        {
          v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [from setObject:v33 forKey:@"bindIntarraysSubstitutionOrder"];
        }

        [v33 addObject:collection];
        [v33 addObject:v32];
        [v33 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v31)}];
      }

      return [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"(SELECT * FROM %@) ", -[NSSQLBindIntarray tableName](v27, "tableName")];
    }

    v11 = v10;
    v12 = *v55;
LABEL_11:
    v13 = 0;
    while (1)
    {
      if (*v55 != v12)
      {
        objc_enumerationMutation(a2);
      }

      v14 = *(*(&v54 + 1) + 8 * v13);
      if (![v14 isNSNumber])
      {
        break;
      }

      objCType = [v14 objCType];
      if (objCType)
      {
        v16 = *objCType - 66;
        v17 = v16 > 0x31;
        v18 = (1 << v16) & 0x2848200028483;
        if (v17 || v18 == 0)
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        v11 = [a2 countByEnumeratingWithState:&v54 objects:v60 count:16];
        if (v11)
        {
          goto LABEL_11;
        }

        goto LABEL_34;
      }
    }

    [_PFRoutines anyObjectFromCollection:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a2 = [_PFRoutines newArrayOfObjectIDsFromCollection:a2];
    }

    v20 = [objc_msgSend(from objectForKey:{@"entity", "entityDescription"}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v21 = [a2 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (!v21)
    {
      goto LABEL_34;
    }

    v22 = v21;
    v23 = *v51;
LABEL_27:
    v24 = 0;
    while (1)
    {
      if (*v51 != v23)
      {
        objc_enumerationMutation(a2);
      }

      v25 = *(*(&v50 + 1) + 8 * v24);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![objc_msgSend(v25 "entity")])
      {
        break;
      }

      if (v22 == ++v24)
      {
        v22 = [a2 countByEnumeratingWithState:&v50 objects:v59 count:16];
        if (v22)
        {
          goto LABEL_27;
        }

        goto LABEL_34;
      }
    }
  }

  v34 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @" (");
  [from setValue:MEMORY[0x1E695E118] forKey:@"sqlIneligibleForCaching"];
  if ([objc_msgSend(from objectForKey:{@"generatePairs", "BOOLValue"}])
  {
    [v34 appendString:@"VALUES "];
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v35 = a2;
  v36 = [a2 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v47;
    v39 = 1;
    while (2)
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v47 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v41 = *(*(&v46 + 1) + 8 * i);
        if ((v39 & 1) == 0)
        {
          [v34 appendString:{@", "}];
          v42 = objc_msgSend_valueForKey_(from);
          if ([v42 count])
          {
            [v42 replaceObjectAtIndex:0 withObject:MEMORY[0x1E695E118]];
          }
        }

        v43 = [(NSSQLIntermediate *)self _generateSQLForConstantValue:v41 inContext:from];
        if (!v43)
        {

          return 0;
        }

        v44 = v43;
        [v34 appendString:v43];

        v39 = 0;
      }

      v37 = [v35 countByEnumeratingWithState:&v46 objects:v58 count:16];
      v39 = 0;
      if (v37)
      {
        continue;
      }

      break;
    }
  }

  [v34 appendString:@" "]);
  [from setValue:0 forKey:@"explicitRestrictingEntityQualifier"];
  return v34;
}

- (id)_generateSQLForVariableExpression:(id)expression allowToMany:(BOOL)many inContext:(id)context
{
  scope = self->_scope;
  if (scope)
  {

    return [NSSQLIntermediate _generateSQLForVariableExpression:"_generateSQLForVariableExpression:allowToMany:inContext:" allowToMany:? inContext:?];
  }

  else
  {
    v10 = [(NSSQLExpressionIntermediate *)[NSSQLVariableExpressionIntermediate alloc] initWithExpression:expression allowToMany:many inScope:self];
    v11 = [(NSSQLVariableExpressionIntermediate *)v10 generateSQLStringInContext:context];

    if (!v11)
    {
      if (![context objectForKey:@"NSUnderlyingException"])
      {
        [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], expression), 0), @"NSUnderlyingException"}];
      }

      return 0;
    }

    return v11;
  }
}

- (void)_generateSQLForExpressionCollection:(uint64_t)collection allowToMany:(void *)many inContext:
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  if ([self isIndexExpressionScoped])
  {
    [many setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], @"Unsupported: collections not allowed in index expressions.", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", a2, @"Bad value", @"NSUnderlyingException"}];
  }

  v8 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @" (");
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    v12 = 1;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(a2);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        if ((v12 & 1) == 0)
        {
          [v8 appendString:{@", "}];
          v15 = objc_msgSend_valueForKey_(many);
          if ([v15 count])
          {
            [v15 replaceObjectAtIndex:0 withObject:MEMORY[0x1E695E118]];
          }
        }

        v16 = [(NSSQLIntermediate *)self _generateSQLForExpression:v14 allowToMany:collection inContext:many];
        if (!v16)
        {

          [many setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14), 0), @"NSUnderlyingException"}];
          return 0;
        }

        v17 = v16;
        [v8 appendString:v16];

        v12 = 0;
        ++v13;
      }

      while (v10 != v13);
      v10 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v12 = 0;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  [v8 appendString:@" "]);
  [many setValue:0 forKey:@"explicitRestrictingEntityQualifier"];
  return v8;
}

- (id)_generateSQLForExpression:(uint64_t)expression allowToMany:(void *)many inContext:
{
  selfCopy = self;
  if (!self)
  {
    return selfCopy;
  }

  if ([many objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  expressionType = [a2 expressionType];
  if (expressionType > 9)
  {
    if (expressionType <= 13)
    {
      if (expressionType != 10)
      {
        if (expressionType == 13)
        {
          v12 = selfCopy;
          v13 = a2;
          v11 = 0;
LABEL_27:

          return [(NSSQLIntermediate *)v12 _generateSQLForSubqueryExpression:v13 trailingKeypath:v11 inContext:many];
        }

        goto LABEL_44;
      }

      goto LABEL_30;
    }

    switch(expressionType)
    {
      case 14:
        constantValue = [a2 constantValue];

        return [(NSSQLIntermediate *)selfCopy _generateSQLForExpressionCollection:constantValue allowToMany:expression inContext:many];
      case 20:
        v19 = [(NSSQLExpressionIntermediate *)[NSSQLTernaryExpressionIntermediate alloc] initWithExpression:a2 allowToMany:expression inScope:selfCopy];
        v20 = [(NSSQLTernaryExpressionIntermediate *)v19 generateSQLStringInContext:many];

        return v20;
      case 50:

        return [(NSSQLIntermediate *)selfCopy _generateSQLForFetchExpression:a2 allowToMany:0 inContext:many];
      default:
        goto LABEL_44;
    }
  }

  else if (expressionType <= 1)
  {
    if (expressionType)
    {
      if (expressionType == 1)
      {
        v14 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"_pk"];
        v15 = selfCopy;
        expressionCopy = 0;
LABEL_31:

        return [v15 _generateSQLForKeyPathExpression:v14 allowToMany:expressionCopy inContext:many];
      }

      goto LABEL_44;
    }

    constantValue2 = [a2 constantValue];

    return [(NSSQLIntermediate *)selfCopy _generateSQLForConstantValue:constantValue2 inContext:many];
  }

  else
  {
    if (expressionType != 2)
    {
      if (expressionType != 3)
      {
        if (expressionType == 4)
        {
          if (([objc_opt_class() expressionIsBasicKeypath:a2] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](selfCopy, a2))
          {
            if (![(NSSQLIntermediate *)selfCopy _functionExpressionIsSubqueryFollowedByKeypath:a2])
            {
              v21 = [(NSSQLExpressionIntermediate *)[NSSQLFunctionExpressionIntermediate alloc] initWithExpression:a2 allowToMany:0 inScope:selfCopy];
              selfCopy = [(NSSQLFunctionExpressionIntermediate *)v21 generateSQLStringInContext:many];
              if (!selfCopy && ![many objectForKey:@"NSUnderlyingExceptionKey"])
              {
                [many setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2), 0), @"NSUnderlyingException"}];
              }

              return selfCopy;
            }

            operand = [a2 operand];
            v11 = [objc_msgSend(a2 "arguments")];
            v12 = selfCopy;
            v13 = operand;
            goto LABEL_27;
          }

          goto LABEL_30;
        }

LABEL_44:
        [many setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], objc_msgSend(a2, "expressionType"), a2), 0), @"NSUnderlyingException"}];
        return 0;
      }

LABEL_30:
      v15 = selfCopy;
      v14 = a2;
      expressionCopy = expression;
      goto LABEL_31;
    }

    return [selfCopy _generateSQLForVariableExpression:a2 allowToMany:expression inContext:many];
  }
}

- (id)_generateSQLForFetchExpression:(uint64_t)expression allowToMany:(void *)many inContext:
{
  if (!self || [many objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  if ([self isIndexScoped])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObject:a2 forKey:@"expression"];
    v10 = @"Fetch request expressions not allowed in indexes";
    v11 = v7;
    v12 = v8;
LABEL_5:
    [many setObject:objc_msgSend(v11 forKey:{"exceptionWithName:reason:userInfo:", v12, v10, v9), @"NSUnderlyingException"}];
    return 0;
  }

  requestExpression = [a2 requestExpression];
  v16 = [requestExpression expressionValueWithObject:0 context:0];
  v17 = [many objectForKey:@"persistentStore"];
  requestExpression2 = [a2 requestExpression];
  contextExpression = [a2 contextExpression];
  if (![requestExpression2 expressionType])
  {
    v20 = [objc_msgSend(requestExpression2 "constantValue")];
    v21 = v20;
    if ((!v20 || ![v20 count]) && !objc_msgSend(contextExpression, "expressionType"))
    {
      v21 = [objc_msgSend(objc_msgSend(contextExpression "constantValue")];
    }

    if ([v21 count] == 1 && (objc_msgSend(v21, "containsObject:", v17) & 1) != 0)
    {
      v22 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v23 = [many objectForKey:@"nestingLevel"];
      v24 = [many objectForKey:@"persistentStore"];
      v25 = ([a2 isCountOnlyRequest] & 1) != 0 || objc_msgSend(v16, "resultType") == 4;
      v30 = [[NSSQLGenerator alloc] initWithPersistentStore:v24];
      [v16 _resolveEntityWithContext:{objc_msgSend(objc_msgSend(a2, "contextExpression"), "expressionValueWithObject:context:", 0, 0)}];
      unsignedIntValue = [v23 unsignedIntValue];
      isWhereScoped = [self isWhereScoped];
      if (v30)
      {
        v33 = [(NSSQLGenerator *)v30 newSQLStatementForRequest:v16 ignoreInheritance:0 countOnly:v25 nestingLevel:(unsignedIntValue + 1) nestIsWhereScoped:isWhereScoped requestContext:0];
      }

      else
      {
        v33 = 0;
      }

      if (v33)
      {
        v13 = objc_msgSend(@"("), "mutableCopy";
        [v13 appendString:{objc_msgSend(v33, "sqlString")}];
        [v13 appendString:@""]);
        [objc_msgSend(many objectForKey:{@"bindVars", "addObjectsFromArray:", objc_msgSend(v33, "bindVariables")}];
      }

      else
      {
        v13 = 0;
      }

      [v22 drain];
      return v13;
    }
  }

  v26 = [a2 expressionValueWithObject:0 context:{objc_msgSend(MEMORY[0x1E695DF90], "dictionary")}];
  v27 = v26;
  if (!v26 || [v26 isNSNumber])
  {
    selfCopy3 = self;
    v29 = v27;
LABEL_20:

    return [(NSSQLIntermediate *)selfCopy3 _generateSQLForConstantValue:v29 inContext:many];
  }

  if ([self isUpdateScoped])
  {
    if ([v27 count])
    {
      if ([v27 count] != 1)
      {
        v34 = MEMORY[0x1E695DF30];
        v35 = *MEMORY[0x1E695D940];
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObject:requestExpression forKey:@"expression"];
        v10 = @"Unsupported fetch request expression in update - too many results";
        v11 = v34;
        v12 = v35;
        goto LABEL_5;
      }

      v29 = [v27 objectAtIndex:0];
      selfCopy3 = self;
    }

    else
    {
      selfCopy3 = self;
      v29 = 0;
    }

    goto LABEL_20;
  }

  return [(NSSQLIntermediate *)self _generateSQLForConstantCollection:v27 reboundFrom:0 inContext:many];
}

@end
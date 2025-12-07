@interface NSSQLFunctionExpressionIntermediate
+ (BOOL)functionIsAcceptableAsAggregate:(uint64_t)aggregate;
- (id)_generateNowStringInContext:(void *)context;
- (id)_generateType4SQLForSymbol:(void *)symbol inContext:;
- (id)generateSQLStringInContext:(id)context;
- (id)generateType1SQLString:(void *)string inContext:;
- (uint64_t)_generateCorrelatedSubqueryStringWithSymbol:(void *)symbol forExpression:(void *)expression inContext:;
- (uint64_t)_generateSQLForCountInContext:(uint64_t)context;
- (void)_generateArgumentStringForCollection:(void *)collection inContext:;
- (void)_generateDistinctStringInContext:(void *)context;
- (void)_generateGroupConcatInContext:(void *)context;
- (void)_generateLengthStringInContext:(id *)context;
- (void)_generateMathStringWithSymbol:(void *)symbol inContext:;
- (void)_generateRtreeIndexStringInContext:(void *)result;
- (void)_generateUncorrelatedSubqueryStringWithSymbol:(void *)symbol forAttribute:(void *)attribute inContext:;
- (void)generateType2SQLString:(void *)string inContext:;
- (void)generateType3SQLString:(int)string keypathOnly:(void *)only inContext:;
@end

@implementation NSSQLFunctionExpressionIntermediate

+ (BOOL)functionIsAcceptableAsAggregate:(uint64_t)aggregate
{
  objc_opt_self();
  if (!_MergedGlobals_79)
  {
    _MergedGlobals_79 = sel_count_;
    *algn_1ED4BEA98 = sel_max_;
    qword_1ED4BEAA0 = sel_min_;
    unk_1ED4BEAA8 = sel_average_;
    qword_1ED4BEAB0 = sel_sum_;
  }

  selector = [a2 selector];
  if (selector != _MergedGlobals_79 && selector != *algn_1ED4BEA98 && selector != qword_1ED4BEAA0 && selector != unk_1ED4BEAA8 && selector != qword_1ED4BEAB0)
  {
    return 0;
  }

  v8 = selector;
  arguments = [a2 arguments];
  if ([arguments count] != 1)
  {
    return 0;
  }

  v10 = [arguments objectAtIndex:0];
  if ([v10 expressionType] == 1 && v8 == _MergedGlobals_79)
  {
    return 1;
  }

  result = [NSSQLIntermediate isSimpleKeypath:v10];
  if (result)
  {
    return [objc_msgSend(objc_msgSend(objc_msgSend(v10 "arguments")] == 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (void)_generateArgumentStringForCollection:(void *)collection inContext:
{
  v22 = *MEMORY[0x1E69E9840];
  if ([collection objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  v6 = [&stru_1EF3F1768 mutableCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [a2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    while (2)
    {
      v11 = 0;
      v16 = v9 + v8;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(a2);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        if (v9 >= 1)
        {
          [v6 appendString:{@", "}];
        }

        v13 = [(NSSQLIntermediate *)self _generateSQLForExpression:v12 allowToMany:1 inContext:collection];
        if (!v13)
        {
          if (![collection objectForKey:@"NSUnderlyingException"])
          {
            [collection setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, self[2]), 0), @"NSUnderlyingException"}];
          }

          return 0;
        }

        v14 = v13;
        [v6 appendString:v13];

        ++v9;
        ++v11;
      }

      while (v8 != v11);
      v8 = [a2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v9 = v16;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

- (void)_generateMathStringWithSymbol:(void *)symbol inContext:
{
  if (!self)
  {
    return 0;
  }

  arguments = [self[2] arguments];
  if ([arguments count] != 2)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], arguments);
LABEL_7:
    [symbol setObject:objc_msgSend(v11 forKey:{"exceptionWithName:reason:userInfo:", v12, v13, 0), @"NSUnderlyingException"}];
    return 0;
  }

  v7 = -[NSSQLIntermediate _generateSQLForExpression:allowToMany:inContext:](self, [objc_msgSend(self[2] "arguments")], 0, symbol);
  if (!v7)
  {
    if ([symbol objectForKey:@"NSUnderlyingException"])
    {
      return 0;
    }

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v15 = MEMORY[0x1E696AEC0];
    v16 = [arguments objectAtIndex:0];
    goto LABEL_14;
  }

  v8 = v7;
  objc_msgSend(v7, "insertString:atIndex:", @"("), 0;
  [v8 appendString:a2];
  v9 = -[NSSQLIntermediate _generateSQLForExpression:allowToMany:inContext:](self, [objc_msgSend(self[2] "arguments")], 0, symbol);
  if (!v9)
  {

    if ([symbol objectForKey:@"NSUnderlyingException"])
    {
      return 0;
    }

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v15 = MEMORY[0x1E696AEC0];
    v16 = [arguments objectAtIndex:1];
LABEL_14:
    v13 = objc_msgSend_stringWithFormat_(v15, v16);
    goto LABEL_7;
  }

  v10 = v9;
  [v8 appendString:v9];
  [v8 appendString:@""]);

  return v8;
}

- (void)_generateUncorrelatedSubqueryStringWithSymbol:(void *)symbol forAttribute:(void *)attribute inContext:
{
  v33[1] = *MEMORY[0x1E69E9840];
  if ([self isIndexScoped])
  {
    if ([attribute objectForKey:@"NSUnderlyingException"])
    {
      return 0;
    }

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self[2]);
    v11 = self[2];
    v32 = @"expression";
    v33[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v13 = v8;
    v14 = v9;
    v15 = v10;
LABEL_14:
    [attribute setObject:objc_msgSend(v13 forKey:{"exceptionWithName:reason:userInfo:", v14, v15, v12), @"NSUnderlyingException"}];
    return 0;
  }

  entity = [symbol entity];
  v17 = [objc_msgSend(attribute objectForKey:{@"aliasGenerator", "generateTableAlias"}];
  v18 = objc_msgSend(@"(SELECT "), "mutableCopy";
  [v18 appendString:a2];
  objc_msgSend(v18, "appendString:", @"(");
  [v18 appendString:v17];
  [v18 appendString:@"."];
  [v18 appendString:{objc_msgSend(symbol, "columnName")}];
  [v18 appendString:@" FROM "]);
  [v18 appendString:{objc_msgSend(entity, "tableName")}];
  [v18 appendString:@" "];
  [v18 appendString:v17];
  v19 = [attribute objectForKey:@"restrictingEntityPredicate"];
  if (v19)
  {
    v20 = v19;
    if ([self isTargetColumnsScoped])
    {
      v21 = objc_opt_self();
      if (v21 == objc_opt_class())
      {
        v25 = [objc_msgSend(objc_msgSend(objc_msgSend(v20 "subpredicates")];
        v26 = [objc_msgSend(objc_msgSend(objc_msgSend(v20 "subpredicates")];
        objc_msgSend(v18, "appendString:", @" WHERE (");
        [v18 appendString:v17];
        [v18 appendString:@"."];
        [v18 appendString:@"Z_ENT"];
        [v18 appendString:@" >= "];
        v27 = [(NSSQLIntermediate *)self _generateSQLForConstantValue:v25 inContext:attribute];
        if (v27)
        {
          v28 = v27;
          [v18 appendString:v27];

          [v18 appendString:@" AND "];
          [v18 appendString:v17];
          [v18 appendString:@"."];
          [v18 appendString:@"Z_ENT"];
          [v18 appendString:@" <= "];
          v29 = [(NSSQLIntermediate *)self _generateSQLForConstantValue:v26 inContext:attribute];
          if (v29)
          {
            v30 = v29;
            [v18 appendString:v29];

            [v18 appendString:@""]);
            goto LABEL_12;
          }
        }
      }

      else
      {
        v22 = [objc_msgSend(v20 "rightExpression")];
        [v18 appendString:@" WHERE "];
        [v18 appendString:v17];
        [v18 appendString:@"."];
        [v18 appendString:@"Z_ENT"];
        [v18 appendString:@" = "];
        v23 = [(NSSQLIntermediate *)self _generateSQLForConstantValue:v22 inContext:attribute];
        if (v23)
        {
          v24 = v23;
          [v18 appendString:v23];

          goto LABEL_12;
        }
      }

      v13 = MEMORY[0x1E695DF30];
      v14 = *MEMORY[0x1E695D930];
      v15 = @"Can't generate sql for entityID";
      v12 = 0;
      goto LABEL_14;
    }
  }

LABEL_12:
  [v18 appendString:@""]);
  return v18;
}

- (uint64_t)_generateCorrelatedSubqueryStringWithSymbol:(void *)symbol forExpression:(void *)expression inContext:
{
  v59[1] = *MEMORY[0x1E69E9840];
  if ([self isIndexScoped])
  {
    if ([expression objectForKey:@"NSUnderlyingException"])
    {
      return 0;
    }

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self[2], a2);
    v11 = self[2];
    v58 = @"expression";
    v59[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    v13 = v8;
    v14 = v9;
    v15 = v10;
LABEL_7:
    v19 = [v13 exceptionWithName:v14 reason:v15 userInfo:v12];
    expressionCopy = expression;
LABEL_8:
    [expressionCopy setObject:v19 forKey:@"NSUnderlyingException"];
    return 0;
  }

  if ([self isUpdateScoped])
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0]);
LABEL_6:
    v15 = v18;
    v13 = v16;
    v14 = v17;
    v12 = 0;
    goto LABEL_7;
  }

  v55 = a2;
  selfCopy = self;
  destinationEntity = [self governingEntityForKeypathExpression:symbol];
  v24 = [objc_msgSend(objc_msgSend(objc_msgSend(symbol "arguments")];
  v25 = [v24 count];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v56 = 0;
    v57 = v25 - 1;
    expressionCopy2 = expression;
    symbolCopy = symbol;
    while (1)
    {
      v51 = v28;
      v30 = v28;
      v31 = v29;
      while (1)
      {
        v32 = [v24 objectAtIndex:v31];
        if (!destinationEntity)
        {
          v30 = v51;
LABEL_56:

          v39 = MEMORY[0x1E695DF30];
          v40 = *MEMORY[0x1E695D940];
          v41 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v32);
LABEL_57:
          v19 = [v39 exceptionWithName:v40 reason:v41 userInfo:0];
          expressionCopy = expressionCopy2;
          goto LABEL_8;
        }

        v33 = [*(destinationEntity + 40) objectForKey:v32];
        if (!v33)
        {
          goto LABEL_56;
        }

        v34 = v33;
        propertyType = [v33 propertyType];
        if (propertyType != 1)
        {
          break;
        }

        if (v29 < v57)
        {
          goto LABEL_56;
        }

        if ((v27 & 1) == 0)
        {
          goto LABEL_48;
        }

        if (v30)
        {
          [v30 appendString:@"."];
        }

        else
        {
          v30 = objc_alloc_init(MEMORY[0x1E696AD60]);
        }

        [v30 appendString:v32];
        ++v31;
        v27 = 1;
        if (v26 == v31)
        {
          expression = expressionCopy2;
          symbol = symbolCopy;
          goto LABEL_49;
        }
      }

      if (propertyType == 7)
      {
        if (v27)
        {
          if (v30)
          {
            [v30 appendString:@"."];
            v36 = v30;
          }

          else
          {
            v36 = objc_alloc_init(MEMORY[0x1E696AD60]);
            v30 = v36;
          }
        }

        else if (v56)
        {
          [v56 appendString:@"."];
          v36 = v56;
        }

        else
        {
          v36 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v56 = v36;
        }

        [v36 appendString:v32];
        destinationEntity = [v34 destinationEntity];
        v29 = v31 + 1;
        v28 = v30;
        v38 = v57 == v31;
        expression = expressionCopy2;
        symbol = symbolCopy;
        if (v38)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if ((propertyType & 0xFE) == 8)
        {
          if (v27)
          {
LABEL_48:

            v39 = MEMORY[0x1E695DF30];
            v40 = *MEMORY[0x1E695D940];
            v41 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], symbolCopy);
            goto LABEL_57;
          }

          v37 = v56;
          if (v56)
          {
            [v56 appendString:@"."];
          }

          else
          {
            v37 = objc_alloc_init(MEMORY[0x1E696AD60]);
          }

          v56 = v37;
          [v37 appendString:v32];
          destinationEntity = [v34 destinationEntity];
          v27 = 1;
        }

        v29 = v31 + 1;
        v28 = v30;
        v38 = v57 == v31;
        expression = expressionCopy2;
        symbol = symbolCopy;
        if (v38)
        {
          goto LABEL_45;
        }
      }
    }
  }

  v56 = 0;
  v30 = 0;
LABEL_45:
  if (([@"count" isEqual:v55] & 1) == 0)
  {

    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], symbol);
    goto LABEL_6;
  }

LABEL_49:
  if (v30)
  {
    [v30 appendString:@".@"];
    v42 = v30;
  }

  else
  {
    v42 = [@".@" mutableCopy];
    v30 = v42;
  }

  [v42 appendString:v55];
  operand = [symbol operand];
  v44 = [objc_opt_class() _newKeyPathExpressionForString:v56];

  v45 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v44, 0}];
  v46 = [MEMORY[0x1E696ABC8] expressionForFunction:operand selectorName:@"valueForKeyPath:" arguments:v45];

  v47 = [objc_msgSend(expression objectForKey:{@"aliasGenerator", "generateSubqueryVariableAlias"}];
  v48 = [MEMORY[0x1E696ABC8] expressionForSubquery:v46 usingIteratorVariable:v47 predicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithValue:", 1)}];
  v49 = [objc_opt_class() _newKeyPathExpressionForString:v30];

  v50 = [[NSSQLSubqueryExpressionIntermediate alloc] initWithExpression:v48 trailingKeypath:v49 inScope:selfCopy[1]];
  v21 = [(NSSQLSubqueryExpressionIntermediate *)v50 generateSQLStringInContext:expression];

  if (!v21)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], symbol);
    goto LABEL_6;
  }

  return v21;
}

- (id)generateType1SQLString:(void *)string inContext:
{
  v54[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  if ([self isIndexScoped])
  {
    if (![string objectForKey:@"NSUnderlyingException"])
    {
      v6 = MEMORY[0x1E695DF30];
      v7 = *MEMORY[0x1E695D940];
      v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(self + 16));
      v9 = *(self + 16);
      v51 = @"expression";
      v52 = v9;
      v10 = MEMORY[0x1E695DF20];
      v11 = &v52;
      v12 = &v51;
LABEL_5:
      v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
      v14 = v6;
      v15 = v7;
      v16 = v8;
LABEL_19:
      [string setObject:objc_msgSend(v14 forKey:{"exceptionWithName:reason:userInfo:", v15, v16, v13), @"NSUnderlyingException"}];
      return 0;
    }

    return 0;
  }

  v17 = [objc_msgSend(*(self + 16) "arguments")];
  if (!v17)
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(self + 16), a2);
    v14 = v24;
LABEL_17:
    v15 = v25;
LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  v18 = v17;
  if ([self isTargetColumnsScoped] && objc_msgSend(objc_msgSend(objc_msgSend(self, "fetchIntermediate"), "selectIntermediate"), "onlyFetchesAggregates") && objc_msgSend(objc_msgSend(objc_msgSend(*(self + 16), "arguments"), "firstObject"), "expressionType") == 3)
  {
    v19 = -[NSSQLExpressionIntermediate initWithExpression:allowToMany:inScope:]([NSSQLKeypathExpressionIntermediate alloc], "initWithExpression:allowToMany:inScope:", [objc_msgSend(*(self + 16) "arguments")], 1, self);
    v20 = [(NSSQLKeypathExpressionIntermediate *)v19 generateSQLStringInContext:string];

    if (!v20)
    {
      return 0;
    }

    v21 = [a2 mutableCopy];
    objc_msgSend(v21, "appendString:", @"(");
    goto LABEL_25;
  }

  if (v18 != 1)
  {
    v21 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v21 appendString:a2];
    objc_msgSend(v21, "appendString:", @"(");
    arguments = [*(self + 16) arguments];
    selfCopy4 = self;
    goto LABEL_23;
  }

  v22 = [objc_msgSend(*(self + 16) "arguments")];
  if (![self isIndexScoped])
  {
    expressionType = [v22 expressionType];
    if (([objc_opt_class() isSimpleKeypath:v22] & 1) != 0 || -[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, v22))
    {
      v31 = [objc_msgSend(objc_msgSend(v22 "arguments")];
      if ([v31 rangeOfString:@"."] != 0x7FFFFFFFFFFFFFFFLL)
      {
        return [(NSSQLFunctionExpressionIntermediate *)self _generateCorrelatedSubqueryStringWithSymbol:a2 forExpression:v22 inContext:string];
      }

      v32 = [self governingEntityForKeypathExpression:v22];
      if (v32)
      {
        v33 = [*(v32 + 40) objectForKey:v31];
      }

      else
      {
        v33 = 0;
      }

      if ([v33 propertyType] == 1)
      {
        return [(NSSQLFunctionExpressionIntermediate *)self _generateUncorrelatedSubqueryStringWithSymbol:a2 forAttribute:v33 inContext:string];
      }

      goto LABEL_46;
    }

    if (expressionType <= 12)
    {
      if (!expressionType)
      {
        constantValue = [v22 constantValue];
        if ([constantValue isNSSet] & 1) != 0 || (objc_msgSend(constantValue, "isNSArray") & 1) != 0 || (objc_msgSend(constantValue, "isNSOrderedSet"))
        {
          if (objc_opt_respondsToSelector())
          {
            [*(self + 16) allowEvaluation];
          }

          v49 = [*(self + 16) expressionValueWithObject:0 context:0];
          selfCopy3 = self;
        }

        else
        {
          selfCopy3 = self;
          v49 = constantValue;
        }

        return [(NSSQLIntermediate *)selfCopy3 _generateSQLForConstantValue:v49 inContext:string];
      }

      if (expressionType != 4 || ![(NSSQLIntermediate *)self _functionExpressionIsSubqueryFollowedByKeypath:v22])
      {
        goto LABEL_52;
      }

      v39 = -[NSSQLSubqueryExpressionIntermediate initWithExpression:trailingKeypath:inScope:]([NSSQLSubqueryExpressionIntermediate alloc], "initWithExpression:trailingKeypath:inScope:", [*(self + 16) operand], objc_msgSend(objc_msgSend(*(self + 16), "arguments"), "objectAtIndex:", 0), *(self + 8));
      v40 = [(NSSQLSubqueryExpressionIntermediate *)v39 generateSQLStringInContext:string];

      if (v40)
      {
        v21 = [a2 mutableCopy];
        [v21 appendString:v40];

        return v21;
      }

      if ([string objectForKey:@"NSUnderlyingException"])
      {
        return 0;
      }

      goto LABEL_57;
    }

    if (expressionType == 13)
    {
      v42 = [(NSSQLIntermediate *)self _generateSQLForSubqueryExpression:v22 trailingKeypath:0 inContext:string];
      if (v42)
      {
        v43 = v42;
        v21 = [a2 mutableCopy];
        [v21 appendString:v43];

        return v21;
      }

      if ([string objectForKey:@"NSUnderlyingException"])
      {
        return 0;
      }

LABEL_46:
      v37 = MEMORY[0x1E695DF30];
      v38 = *MEMORY[0x1E695D940];
      v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v22);
      v14 = v37;
      v15 = v38;
      goto LABEL_18;
    }

    if (expressionType != 14)
    {
      if (expressionType == 20)
      {
        if ([objc_msgSend(*(self + 16) "arguments")] != 1 && !objc_msgSend(string, "objectForKey:", @"NSUnderlyingException"))
        {
          [string setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, *(self + 16)), 0), @"NSUnderlyingException"}];
        }

        v35 = -[NSSQLExpressionIntermediate initWithExpression:allowToMany:inScope:]([NSSQLTernaryExpressionIntermediate alloc], "initWithExpression:allowToMany:inScope:", [objc_msgSend(*(self + 16) "arguments")], 0, self);
        v36 = [(NSSQLTernaryExpressionIntermediate *)v35 generateSQLStringInContext:string];

        if (!v36)
        {
          if (![string objectForKey:@"NSUnderlyingException"])
          {
            [string setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(self + 16)), 0), @"NSUnderlyingException"}];
          }

          return 0;
        }

        v21 = [a2 mutableCopy];
        objc_msgSend(v21, "appendString:", @"(");
        [v21 appendString:v36];

LABEL_26:
        [v21 appendString:@""]);
        return v21;
      }

LABEL_52:
      v41 = MEMORY[0x1E695DF30];
      v25 = *MEMORY[0x1E695D940];
      v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, v22);
      v14 = v41;
      goto LABEL_17;
    }

    constantValue2 = [v22 constantValue];
    v45 = [constantValue2 count];
    if (v45 == 1)
    {
      v21 = -[NSSQLIntermediate _generateSQLForExpression:allowToMany:inContext:](self, [constantValue2 objectAtIndex:0], 1, string);
      if (v21)
      {
        return v21;
      }

      if ([string objectForKey:@"NSUnderlyingException"])
      {
        return 0;
      }

      goto LABEL_57;
    }

    if (!v45)
    {
LABEL_57:
      v46 = MEMORY[0x1E695DF30];
      v47 = *MEMORY[0x1E695D940];
      v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(self + 16));
      v14 = v46;
      v15 = v47;
      goto LABEL_18;
    }

    v21 = [a2 mutableCopy];
    objc_msgSend(v21, "appendString:", @"(");
    selfCopy4 = self;
    arguments = constantValue2;
LABEL_23:
    v29 = [(NSSQLFunctionExpressionIntermediate *)selfCopy4 _generateArgumentStringForCollection:arguments inContext:string];
    if (!v29)
    {

      return 0;
    }

    v20 = v29;
LABEL_25:
    [v21 appendString:v20];

    goto LABEL_26;
  }

  if (![string objectForKey:@"NSUnderlyingException"])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(self + 16));
    v23 = *(self + 16);
    v53 = @"expression";
    v54[0] = v23;
    v10 = MEMORY[0x1E695DF20];
    v11 = v54;
    v12 = &v53;
    goto LABEL_5;
  }

  return 0;
}

- (void)generateType2SQLString:(void *)string inContext:
{
  if (!self)
  {
    return 0;
  }

  v6 = [objc_msgSend(self[2] "arguments")];
  if (v6 != 1)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    if (v6)
    {
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObject:self[2] forKey:@"Bad value"];
      v9 = @"Invalid number of parameters passed to uppercase: function";
      v10 = v7;
      v11 = v8;
    }

    else
    {
      v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self[2]);
      v10 = v7;
      v11 = v8;
      v12 = 0;
    }

    [string setObject:objc_msgSend(v10 forKey:{"exceptionWithName:reason:userInfo:", v11, v9, v12), @"NSUnderlyingException"}];
    return 0;
  }

  v13 = [objc_msgSend(self[2] "arguments")];
  expressionType = [v13 expressionType];
  if (([objc_opt_class() isSimpleKeypath:v13] & 1) == 0 && (-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, v13) & 1) == 0 && (expressionType || !objc_msgSend(objc_msgSend(v13, "constantValue"), "isNSString")))
  {
    [string setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13), 0), @"NSUnderlyingException"}];
    return 0;
  }

  v15 = [a2 mutableCopy];
  v16 = [(NSSQLIntermediate *)self _generateSQLForExpression:v13 allowToMany:0 inContext:string];
  if (!v16)
  {

    v15 = 0;
  }

  [v15 appendString:v16];
  [v15 appendString:@""]);

  return v15;
}

- (void)generateType3SQLString:(int)string keypathOnly:(void *)only inContext:
{
  if (!self)
  {
    return 0;
  }

  v8 = [objc_msgSend(self[2] "arguments")];
  if (v8 != 1)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    if (v8)
    {
      v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self[2]);
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObject:self[2] forKey:@"Bad value"];
      v12 = v9;
      v13 = v10;
      v11 = v18;
    }

    else
    {
      v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self[2]);
      v12 = v9;
      v13 = v10;
      v14 = 0;
    }

    [only setObject:objc_msgSend(v12 forKey:{"exceptionWithName:reason:userInfo:", v13, v11, v14), @"NSUnderlyingException"}];
    return 0;
  }

  if (string)
  {
    v15 = [objc_msgSend(self[2] "arguments")];
    if (([objc_opt_class() isSimpleKeypath:v15] & 1) == 0 && (-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, v15) & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [only setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self[2]), 0), @"NSUnderlyingException"}];
      }
    }
  }

  v16 = [a2 mutableCopy];
  v17 = -[NSSQLIntermediate _generateSQLForExpression:allowToMany:inContext:](self, [objc_msgSend(self[2] "arguments")], 0, only);
  if (!v17)
  {

    v16 = 0;
  }

  [v16 appendString:v17];
  [v16 appendString:@""]);

  return v16;
}

- (uint64_t)_generateSQLForCountInContext:(uint64_t)context
{
  v33[1] = *MEMORY[0x1E69E9840];
  if (!context)
  {
    return 0;
  }

  if ([context isIndexScoped])
  {
    if ([a2 objectForKey:@"NSUnderlyingException"])
    {
      return 0;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(context + 16));
    v7 = *(context + 16);
    v32 = @"expression";
    v33[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    goto LABEL_5;
  }

  arguments = [*(context + 16) arguments];
  v14 = [arguments count];
  if (![arguments count])
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = @"Invalid number of arguments to count (requires at least 1 argument)";
LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  if (v14 >= 2)
  {
    v15 = -[NSSQLIntermediate _generateSQLForConstantValue:inContext:](context, [MEMORY[0x1E696AD98] numberWithInteger:v14], a2);
    if (v15)
    {
      return v15;
    }

LABEL_28:
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(context + 16));
    v10 = v23;
    v11 = v24;
    goto LABEL_29;
  }

  v17 = [arguments objectAtIndex:0];
  expressionType = [v17 expressionType];
  if ([context isTargetColumnsScoped] && objc_msgSend(objc_msgSend(objc_msgSend(context, "fetchIntermediate"), "selectIntermediate"), "onlyFetchesAggregates") && objc_msgSend(MEMORY[0x1E696ABC8], "expressionForEvaluatedObject") == v17)
  {
    v21 = @"count(*)";
    goto LABEL_38;
  }

  if ([context isTargetColumnsScoped] && objc_msgSend(objc_msgSend(objc_msgSend(context, "fetchIntermediate"), "selectIntermediate"), "onlyFetchesAggregates") && ((objc_msgSend(objc_opt_class(), "isSimpleKeypath:", v17) & 1) != 0 || -[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v17)) && objc_msgSend(objc_msgSend(v17, "keyPath"), "rangeOfString:", @".") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [(NSSQLExpressionIntermediate *)[NSSQLKeypathExpressionIntermediate alloc] initWithExpression:v17 allowToMany:1 inScope:context];
    v20 = v19;
    goto LABEL_43;
  }

  if (expressionType == 1 && [context isHavingScoped])
  {
    v21 = @"COUNT(*)";
LABEL_38:

    return [(__CFString *)v21 mutableCopy];
  }

  if (([objc_opt_class() isSimpleKeypath:v17] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v17))
  {
    if (expressionType == 4)
    {
      if ([(NSSQLIntermediate *)context _functionExpressionIsSubqueryFollowedByKeypath:v17])
      {
        v27 = [objc_msgSend(objc_msgSend(objc_msgSend(v17 "arguments")];
        [v27 appendString:@".@count"];
        v28 = [objc_opt_class() _newKeyPathExpressionForString:v27];

        v20 = -[NSSQLSubqueryExpressionIntermediate initWithExpression:trailingKeypath:inScope:]([NSSQLSubqueryExpressionIntermediate alloc], "initWithExpression:trailingKeypath:inScope:", [v17 operand], v28, *(context + 8));
        v19 = v20;
LABEL_43:
        v29 = [(NSSQLKeypathExpressionIntermediate *)v19 generateSQLStringInContext:a2];

        if (v29)
        {
          v30 = CFSTR("COUNT(");
          goto LABEL_45;
        }

LABEL_46:
        if ([a2 objectForKey:@"NSUnderlyingException"])
        {
          return 0;
        }

        goto LABEL_28;
      }

      if ([@"distinct:" isEqual:{objc_msgSend(v17, "function")}])
      {
        v31 = [(NSSQLExpressionIntermediate *)[NSSQLFunctionExpressionIntermediate alloc] initWithExpression:v17 allowToMany:1 inScope:context];
        v29 = [(NSSQLFunctionExpressionIntermediate *)v31 generateSQLStringInContext:a2];

        if (!v29)
        {
          if ([a2 objectForKey:@"NSUnderlyingException"])
          {
            return 0;
          }

          goto LABEL_28;
        }

        v30 = CFSTR("COUNT (");
LABEL_45:
        v16 = [(__CFString *)v30 mutableCopy];
        [v16 appendString:v29];

        [v16 appendString:@""]);
        return v16;
      }
    }

    else if (expressionType == 13)
    {
      v25 = [objc_opt_class() _newKeyPathExpressionForString:@".@count"];
      v26 = [[NSSQLSubqueryExpressionIntermediate alloc] initWithExpression:v17 trailingKeypath:v25 inScope:*(context + 8)];

      v16 = [(NSSQLSubqueryExpressionIntermediate *)v26 generateSQLStringInContext:a2];
      if (v16)
      {
        return v16;
      }

      goto LABEL_46;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(context + 16));
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:*(context + 16) forKey:@"Bad value"];
LABEL_5:
    v9 = v8;
    v10 = v4;
    v11 = v5;
    v12 = v6;
LABEL_30:
    [a2 setObject:objc_msgSend(v10 forKey:{"exceptionWithName:reason:userInfo:", v11, v12, v9), @"NSUnderlyingException"}];
    return 0;
  }

  return [(NSSQLFunctionExpressionIntermediate *)context _generateCorrelatedSubqueryStringWithSymbol:v17 forExpression:a2 inContext:?];
}

- (void)_generateGroupConcatInContext:(void *)context
{
  v49[1] = *MEMORY[0x1E69E9840];
  if (!context)
  {
    return 0;
  }

  if ([context isIndexScoped])
  {
    if ([a2 objectForKey:@"NSUnderlyingException"])
    {
      return 0;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], context[2]);
    v7 = context[2];
    v48 = @"expression";
    v49[0] = v7;
    v8 = MEMORY[0x1E695DF20];
    v9 = v49;
    v10 = &v48;
    goto LABEL_5;
  }

  if ([context[2] selector] == sel_groupConcat_ && objc_msgSend(objc_msgSend(context[2], "arguments"), "count") != 1)
  {
    if ([a2 objectForKey:@"NSUnderlyingException"])
    {
      return 0;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [objc_msgSend(context[2] "arguments")]);
    v26 = context[2];
    v46 = @"expression";
    v47 = v26;
    v8 = MEMORY[0x1E695DF20];
    v9 = &v47;
    v10 = &v46;
    goto LABEL_5;
  }

  if ([context[2] selector] == sel_groupConcat_separator_)
  {
    if ([objc_msgSend(context[2] "arguments")] != 2)
    {
      if ([a2 objectForKey:@"NSUnderlyingException"])
      {
        return 0;
      }

      v4 = MEMORY[0x1E695DF30];
      v5 = *MEMORY[0x1E695D940];
      v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [objc_msgSend(context[2] "arguments")]);
      v27 = context[2];
      v44 = @"expression";
      v45 = v27;
      v8 = MEMORY[0x1E695DF20];
      v9 = &v45;
      v10 = &v44;
      goto LABEL_5;
    }

    if (([objc_msgSend(objc_msgSend(context[2] "arguments")] & 1) == 0)
    {
      if ([a2 objectForKey:@"NSUnderlyingException"])
      {
        return 0;
      }

      v4 = MEMORY[0x1E695DF30];
      v5 = *MEMORY[0x1E695D940];
      v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [objc_msgSend(context[2] "arguments")]);
      v20 = context[2];
      v42 = @"expression";
      v43 = v20;
      v8 = MEMORY[0x1E695DF20];
      v9 = &v43;
      v10 = &v42;
      goto LABEL_5;
    }
  }

  v17 = [objc_msgSend(context[2] "arguments")];
  if (![v17 expressionType])
  {
    constantValue = [v17 constantValue];
    if (([constantValue isNSArray] & 1) != 0 || (objc_msgSend(constantValue, "isNSSet") & 1) != 0 || objc_msgSend(constantValue, "isNSOrderedSet"))
    {
      if ([a2 objectForKey:@"NSUnderlyingException"])
      {
        return 0;
      }

      v22 = MEMORY[0x1E695DF30];
      v23 = *MEMORY[0x1E695D940];
      v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], constantValue);
      v25 = context[2];
      v40 = @"expression";
      v41 = v25;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v12 = v22;
      v13 = v23;
      v14 = v24;
      goto LABEL_6;
    }

    if (([constantValue isNSNumber] & 1) != 0 || objc_msgSend(constantValue, "isNSString"))
    {
      v19 = [(NSSQLIntermediate *)context _generateSQLForConstantValue:constantValue inContext:a2];
      goto LABEL_19;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [context[2] arguments]);
    v33 = context[2];
    v38 = @"expression";
    v39 = v33;
    v8 = MEMORY[0x1E695DF20];
    v9 = &v39;
    v10 = &v38;
LABEL_5:
    v11 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:1];
    v12 = v4;
    v13 = v5;
    v14 = v6;
LABEL_6:
    [a2 setObject:objc_msgSend(v12 forKey:{"exceptionWithName:reason:userInfo:", v13, v14, v11), @"NSUnderlyingException"}];
    return 0;
  }

  if ((![context isTargetColumnsScoped] || (objc_msgSend(objc_msgSend(objc_msgSend(context, "fetchIntermediate"), "selectIntermediate"), "onlyFetchesAggregates") & 1) == 0) && !objc_msgSend(context, "isHavingScoped"))
  {
    return 0;
  }

  if (([objc_opt_class() isSimpleKeypath:v17] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v17))
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [context[2] arguments]);
    v32 = context[2];
    v34 = @"expression";
    v35 = v32;
    v8 = MEMORY[0x1E695DF20];
    v9 = &v35;
    v10 = &v34;
    goto LABEL_5;
  }

  v18 = [(NSSQLExpressionIntermediate *)[NSSQLKeypathExpressionIntermediate alloc] initWithExpression:v17 allowToMany:1 inScope:context];
  v19 = [(NSSQLKeypathExpressionIntermediate *)v18 generateSQLStringInContext:a2];

  if (!v19)
  {
    if (![a2 objectForKey:@"NSUnderlyingException"])
    {
      v28 = MEMORY[0x1E695DF30];
      v29 = *MEMORY[0x1E695D940];
      v30 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], context[2]);
      v31 = context[2];
      v36 = @"expression";
      v37 = v31;
      [a2 setValue:objc_msgSend(v28 forKey:{"exceptionWithName:reason:userInfo:", v29, v30, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v37, &v36, 1)), @"NSUnderlyingException"}];
    }

    return 0;
  }

LABEL_19:
  v15 = objc_msgSend(@"group_concat("), "mutableCopy";
  [v15 appendString:v19];

  if ([objc_msgSend(context[2] "arguments")] == 2)
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{@"selectBindVars", "addObject:", -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", objc_msgSend(objc_msgSend(context[2], "arguments"), "lastObject"), 6, 0)}];
    [v15 appendString:{@", ?"}];
  }

  [v15 appendString:@""]);
  return v15;
}

- (id)_generateType4SQLForSymbol:(void *)symbol inContext:
{
  v36[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  if ([self isIndexScoped])
  {
    if (![symbol objectForKey:@"NSUnderlyingException"])
    {
      v6 = MEMORY[0x1E695DF30];
      v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(self + 16));
      v8 = *(self + 16);
      v35 = @"expression";
      v36[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      [symbol setObject:objc_msgSend(v6 forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], v7, v9), @"NSUnderlyingException"}];
    }

    return 0;
  }

  if ([objc_msgSend(*(self + 16) "arguments")] != 1)
  {
LABEL_14:
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(self + 16));
LABEL_15:
    v19 = v18;
    v20 = v16;
    v21 = v17;
LABEL_16:
    [symbol setObject:objc_msgSend(v20 forKey:{"exceptionWithName:reason:userInfo:", v21, v19, 0), @"NSUnderlyingException"}];
    return 0;
  }

  v10 = [objc_msgSend(*(self + 16) "arguments")];
  expressionType = [v10 expressionType];
  if (!expressionType)
  {
    constantValue = [v10 constantValue];
    if (([constantValue isNSArray] & 1) != 0 || (objc_msgSend(constantValue, "isNSSet") & 1) != 0 || objc_msgSend(constantValue, "isNSOrderedSet"))
    {
      if ([constantValue count])
      {
        if ([@"avg" isEqual:a2])
        {
          v24 = [NSClassFromString(@"_NSPredicateUtilities") average:constantValue];
        }

        else
        {
          v24 = [NSClassFromString(@"_NSPredicateUtilities") sum:constantValue];
        }
      }

      else
      {
        v24 = [MEMORY[0x1E696AD98] numberWithInt:0];
      }

      selfCopy2 = self;
    }

    else
    {
      if (![constantValue isNSNumber])
      {
LABEL_61:
        v16 = MEMORY[0x1E695DF30];
        v17 = *MEMORY[0x1E695D940];
        v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(self + 16) arguments]);
        goto LABEL_15;
      }

      selfCopy2 = self;
      v24 = constantValue;
    }

    return [(NSSQLIntermediate *)selfCopy2 _generateSQLForConstantValue:v24 inContext:symbol];
  }

  v12 = expressionType;
  if ([self isTargetColumnsScoped] && (objc_msgSend(objc_msgSend(objc_msgSend(self, "fetchIntermediate"), "selectIntermediate"), "onlyFetchesAggregates") & 1) != 0 || objc_msgSend(self, "isHavingScoped"))
  {
    if (([objc_opt_class() isSimpleKeypath:v10] & 1) != 0 || -[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, v10))
    {
      v13 = [(NSSQLExpressionIntermediate *)[NSSQLKeypathExpressionIntermediate alloc] initWithExpression:v10 allowToMany:1 inScope:self];
      v14 = [(NSSQLKeypathExpressionIntermediate *)v13 generateSQLStringInContext:symbol];

      if (v14)
      {
LABEL_13:
        v15 = [a2 mutableCopy];
        objc_msgSend(v15, "appendString:", @"(");
        [v15 appendString:v14];

        [v15 appendString:@""]);
        return v15;
      }

      if (![symbol objectForKey:@"NSUnderlyingException"])
      {
        goto LABEL_60;
      }

      return 0;
    }

    if (v12 != 20)
    {
      v29 = MEMORY[0x1E695DF30];
      v30 = *MEMORY[0x1E695D940];
      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, [*(self + 16) arguments]);
      v20 = v29;
      v21 = v30;
      goto LABEL_16;
    }

    goto LABEL_55;
  }

  if (([objc_opt_class() isSimpleKeypath:v10] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, v10))
  {
    if ([v10 expressionType] == 13)
    {
      v31 = [@".@" mutableCopy];
      [v31 appendString:a2];
      v32 = [objc_opt_class() _newKeyPathExpressionForString:v31];

      v33 = [[NSSQLSubqueryExpressionIntermediate alloc] initWithExpression:v10 trailingKeypath:v32 inScope:*(self + 8)];
      v15 = [(NSSQLSubqueryExpressionIntermediate *)v33 generateSQLStringInContext:symbol];

      if (v15)
      {
        return v15;
      }

      if ([symbol objectForKey:@"NSUnderlyingException"])
      {
        return 0;
      }

      goto LABEL_60;
    }

    if (v12 == 20)
    {
LABEL_55:
      [objc_msgSend(*(self + 16) "arguments")];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = -[NSSQLExpressionIntermediate initWithExpression:allowToMany:inScope:]([NSSQLTernaryExpressionIntermediate alloc], "initWithExpression:allowToMany:inScope:", [objc_msgSend(*(self + 16) "arguments")], 0, self);
        v14 = [(NSSQLTernaryExpressionIntermediate *)v34 generateSQLStringInContext:symbol];

        if (v14)
        {
          goto LABEL_13;
        }

        if ([symbol objectForKey:@"NSUnderlyingException"])
        {
          return 0;
        }
      }

      else if ([symbol objectForKey:@"NSUnderlyingException"])
      {
        return 0;
      }

LABEL_60:
      [symbol setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(self + 16)), 0), @"NSUnderlyingException"}];
      return 0;
    }

    goto LABEL_61;
  }

  v25 = [objc_msgSend(objc_msgSend(v10 "arguments")];
  if ([v25 rangeOfString:@"."] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = [self governingEntityForKeypathExpression:v10];
    if (v26)
    {
      v27 = [*(v26 + 40) objectForKey:v25];
    }

    else
    {
      v27 = 0;
    }

    if ([v27 propertyType] == 1)
    {

      return [(NSSQLFunctionExpressionIntermediate *)self _generateUncorrelatedSubqueryStringWithSymbol:a2 forAttribute:v27 inContext:symbol];
    }

    goto LABEL_14;
  }

  return [(NSSQLFunctionExpressionIntermediate *)self _generateCorrelatedSubqueryStringWithSymbol:a2 forExpression:v10 inContext:symbol];
}

- (void)_generateDistinctStringInContext:(void *)context
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!context)
  {
    return 0;
  }

  if ([context isIndexScoped])
  {
    if ([a2 objectForKey:@"NSUnderlyingException"])
    {
      return 0;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], context[2]);
    v7 = context[2];
    v20 = @"expression";
    v21[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v9 = v4;
    v10 = v5;
    v11 = v6;
LABEL_13:
    [a2 setObject:objc_msgSend(v9 forKey:{"exceptionWithName:reason:userInfo:", v10, v11, v8), @"NSUnderlyingException"}];
    return 0;
  }

  if ([objc_msgSend(context[2] "arguments")] != 1)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], context[2]);
    v9 = v16;
LABEL_12:
    v10 = v17;
    v8 = 0;
    goto LABEL_13;
  }

  v12 = [objc_msgSend(context[2] "arguments")];
  if ([v12 expressionType] != 1 && (objc_msgSend(objc_opt_class(), "isSimpleKeypath:", v12) & 1) == 0 && (-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v12) & 1) == 0)
  {
LABEL_17:
    v19 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12);
    v9 = v19;
    goto LABEL_12;
  }

  v13 = [(NSSQLIntermediate *)context _generateSQLForExpression:v12 allowToMany:1 inContext:a2];
  if (!v13)
  {
    if ([a2 objectForKey:@"NSUnderlyingException"])
    {
      return 0;
    }

    goto LABEL_17;
  }

  v14 = v13;
  v15 = [@"DISTINCT " mutableCopy];
  [v15 appendString:v14];

  return v15;
}

- (id)_generateNowStringInContext:(void *)context
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!context)
  {
    return 0;
  }

  if ([context isIndexScoped])
  {
    if ([a2 objectForKey:@"NSUnderlyingException"])
    {
      return 0;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], context[2]);
    v7 = context[2];
    v16 = @"expression";
    v17[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v9 = v4;
    v10 = v5;
    v11 = v6;
LABEL_7:
    [a2 setObject:objc_msgSend(v9 forKey:{"exceptionWithName:reason:userInfo:", v10, v11, v8), @"NSUnderlyingException"}];
    return 0;
  }

  if ([objc_msgSend(context[2] "arguments")])
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], context[2]);
    v9 = v12;
    v10 = v13;
    v8 = 0;
    goto LABEL_7;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:?];

  return [(NSSQLIntermediate *)context _generateSQLForConstantValue:v15 inContext:a2];
}

- (void)_generateLengthStringInContext:(id *)context
{
  if (!context)
  {
    return 0;
  }

  if ([objc_msgSend(context[2] "arguments")] != 1)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], context[2]);
    v11 = v8;
LABEL_11:
    [a2 setObject:objc_msgSend(v11 forKey:{"exceptionWithName:reason:userInfo:", v9, v10, 0), @"NSUnderlyingException"}];
    return 0;
  }

  v4 = [objc_msgSend(context[2] "arguments")];
  if ([v4 expressionType] && (objc_msgSend(objc_opt_class(), "isSimpleKeypath:", v4) & 1) == 0 && (-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v4) & 1) == 0)
  {
LABEL_10:
    v12 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4);
    v11 = v12;
    goto LABEL_11;
  }

  v5 = [(NSSQLIntermediate *)context _generateSQLForExpression:v4 allowToMany:0 inContext:a2];
  if (!v5)
  {
    if ([a2 objectForKey:@"NSUnderlyingException"])
    {
      return 0;
    }

    goto LABEL_10;
  }

  v6 = v5;
  v7 = objc_msgSend(@"length("), "mutableCopy";
  [v7 appendString:v6];
  [v7 appendString:@""]);

  return v7;
}

- (void)_generateRtreeIndexStringInContext:(void *)result
{
  if (result)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{a2, @"You should not have made it here, scope failed at its job : %@", result[2]), 0}];

    return [a2 setObject:v3 forKey:@"NSUnderlyingException"];
  }

  return result;
}

- (id)generateSQLStringInContext:(id)context
{
  if ([context objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  selector = [(NSExpression *)self->super._expression selector];
  if (sel_max_ == selector)
  {
    v12 = @"max";
LABEL_33:

    return [(NSSQLFunctionExpressionIntermediate *)self generateType1SQLString:v12 inContext:context];
  }

  if (sel_min_ == selector)
  {
    v12 = @"min";
    goto LABEL_33;
  }

  if (sel_uppercase_ == selector)
  {
    v13 = CFSTR("NSCoreDataToUpper(");
LABEL_38:

    return [(NSSQLFunctionExpressionIntermediate *)&self->super.super.super.isa generateType2SQLString:v13 inContext:context];
  }

  if (sel_lowercase_ == selector)
  {
    v13 = CFSTR("NSCoreDataToLower(");
    goto LABEL_38;
  }

  if (sel_onesComplement_ == selector)
  {
    v14 = CFSTR("(~");
LABEL_43:
    selfCopy2 = self;
    v16 = 0;
LABEL_44:

    return [(NSSQLFunctionExpressionIntermediate *)&selfCopy2->super.super.super.isa generateType3SQLString:v14 keypathOnly:v16 inContext:context];
  }

  if (sel_abs_ == selector)
  {
    v14 = CFSTR("abs(");
    goto LABEL_43;
  }

  if (sel_noindex_ == selector)
  {
    v14 = CFSTR("+(");
    selfCopy2 = self;
    v16 = 1;
    goto LABEL_44;
  }

  if (sel_average_ == selector)
  {
    v17 = @"avg";
LABEL_50:

    return [(NSSQLFunctionExpressionIntermediate *)self _generateType4SQLForSymbol:v17 inContext:context];
  }

  if (sel_sum_ == selector)
  {
    v17 = @"total";
    goto LABEL_50;
  }

  if (sel_count_ == selector)
  {

    return [(NSSQLFunctionExpressionIntermediate *)self _generateSQLForCountInContext:context];
  }

  if (sel_add_to_ == selector)
  {
    v18 = @" + ";
LABEL_65:

    return [(NSSQLFunctionExpressionIntermediate *)&self->super.super.super.isa _generateMathStringWithSymbol:v18 inContext:context];
  }

  if (sel_from_subtract_ == selector)
  {
    v18 = @" - ";
    goto LABEL_65;
  }

  if (sel_multiply_by_ == selector)
  {
    v18 = @" * ";
    goto LABEL_65;
  }

  if (sel_divide_by_ == selector)
  {
    v18 = @" / ";
    goto LABEL_65;
  }

  if (sel_modulus_by_ == selector)
  {
    v18 = @" % ";
    goto LABEL_65;
  }

  if (sel_bitwiseAnd_with_ == selector)
  {
    v18 = @" & ";
    goto LABEL_65;
  }

  if (sel_bitwiseOr_with_ == selector)
  {
    v18 = @" | ";
    goto LABEL_65;
  }

  if (sel_leftshift_by_ == selector)
  {
    v18 = @" << ";
    goto LABEL_65;
  }

  if (sel_rightshift_by_ == selector)
  {
    v18 = @" >> ";
    goto LABEL_65;
  }

  if (sel_distinct_ == selector)
  {

    return [(NSSQLFunctionExpressionIntermediate *)&self->super.super.super.isa _generateDistinctStringInContext:context];
  }

  else if (sel_now == selector)
  {

    return [(NSSQLFunctionExpressionIntermediate *)&self->super.super.super.isa _generateNowStringInContext:context];
  }

  else if (sel_length_ == selector)
  {

    return [(NSSQLFunctionExpressionIntermediate *)&self->super.super.super.isa _generateLengthStringInContext:context];
  }

  else
  {
    if (sel_indexed_by_ == selector)
    {
      [(NSSQLFunctionExpressionIntermediate *)self _generateRtreeIndexStringInContext:context];
      return 0;
    }

    if (sel_groupConcat_ != selector && sel_groupConcat_separator_ != selector)
    {
      if (![context objectForKey:@"NSUnderlyingException"])
      {
        isIndexScoped = [(NSSQLIntermediate *)self isIndexScoped];
        v8 = MEMORY[0x1E695DF30];
        v9 = *MEMORY[0x1E695D940];
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:self->super._expression forKey:@"Bad value"];
        if (isIndexScoped)
        {
          v11 = @"Unsupported function type passed as index component (either not a valid function at all, or just not valid in this context).";
        }

        else
        {
          v11 = @"Unsupported function type passed to SQL store";
        }

        [context setObject:objc_msgSend(v8 forKey:{"exceptionWithName:reason:userInfo:", v9, v11, v10), @"NSUnderlyingException"}];
      }

      return 0;
    }

    return [(NSSQLFunctionExpressionIntermediate *)&self->super.super.super.isa _generateGroupConcatInContext:context];
  }
}

@end
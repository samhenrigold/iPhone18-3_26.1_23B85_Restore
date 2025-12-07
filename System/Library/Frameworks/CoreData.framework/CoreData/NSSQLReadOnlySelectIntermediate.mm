@interface NSSQLReadOnlySelectIntermediate
- (NSSQLReadOnlySelectIntermediate)initWithScope:(id)scope;
- (id)generateSQLStringInContext:(id)context;
- (id)resolveVariableExpression:(id)expression inContext:(id)context;
- (void)dealloc;
@end

@implementation NSSQLReadOnlySelectIntermediate

- (void)dealloc
{
  *&self->_onlyFetchesAggregates = 0;

  self->_variableToAliasMappings = 0;
  v3.receiver = self;
  v3.super_class = NSSQLReadOnlySelectIntermediate;
  [(NSSQLSelectIntermediate *)&v3 dealloc];
}

- (NSSQLReadOnlySelectIntermediate)initWithScope:(id)scope
{
  v5.receiver = self;
  v5.super_class = NSSQLReadOnlySelectIntermediate;
  v3 = [(NSSQLIntermediate *)&v5 initWithScope:scope];
  if (v3)
  {
    *&v3->_onlyFetchesAggregates = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3->_variableToAliasMappings = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v3;
}

- (id)resolveVariableExpression:(id)expression inContext:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = [context objectForKey:@"storeRequest"];
  v8 = [*&self->_onlyFetchesAggregates objectForKey:expression];
  if (v8)
  {

    return [v8 mutableCopy];
  }

  else
  {
    variable = [expression variable];
    propertiesToFetch = [v7 propertiesToFetch];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [propertiesToFetch countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
LABEL_7:
      v15 = 0;
      while (1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(propertiesToFetch);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        if ([v16 _propertyType] == 5 && (objc_msgSend(objc_msgSend(v16, "name"), "isEqual:", variable) & 1) != 0)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [propertiesToFetch countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v13)
          {
            goto LABEL_7;
          }

          goto LABEL_16;
        }
      }

      v17 = [context objectForKey:@"aliasGenerator"];
      generateVariableAlias = [(NSSQLAliasGenerator *)v17 generateVariableAlias];
      [*&self->_onlyFetchesAggregates setObject:generateVariableAlias forKey:expression];
      [(NSMutableDictionary *)self->_variableToAliasMappings setObject:generateVariableAlias forKey:v16];
      result = [generateVariableAlias mutableCopy];
      if (result)
      {
        return result;
      }
    }

LABEL_16:
    if (![context objectForKey:@"NSUnderlyingException"])
    {
      [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], expression), 0), @"NSUnderlyingException"}];
    }

    return 0;
  }
}

- (id)generateSQLStringInContext:(id)context
{
  contextCopy = context;
  v110 = *MEMORY[0x1E69E9840];
  if ([context objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  v7 = [(NSArray *)self->super._fetchColumns count];
  *(&self->super._isCount + 1) = 1;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->super._fetchColumns, "count")}];
  fetchIntermediate = [(NSSQLIntermediate *)self fetchIntermediate];
  v85 = v7;
  v80 = fetchIntermediate;
  if (!fetchIntermediate || !fetchIntermediate[9])
  {
    if (!v7)
    {
      v15 = 1;
LABEL_37:
      v82 = 1;
      goto LABEL_38;
    }

    v16 = 0;
    while (1)
    {
      v17 = [(NSArray *)self->super._fetchColumns objectAtIndex:v16];
      if ([v17 _propertyType] != 5)
      {
        goto LABEL_27;
      }

      expression = [v17 expression];
      expressionType = [expression expressionType];
      if (expressionType == 3)
      {
        goto LABEL_28;
      }

      if (expressionType == 4)
      {
        if (sel_valueForKey_ == [expression selector] || sel_valueForKeyPath_ == objc_msgSend(expression, "selector"))
        {
LABEL_28:
          v19 = [expression _mapKVCOperatorsToFunctionsInContext:contextCopy];
          if ([contextCopy objectForKey:@"NSUnderlyingException"])
          {
LABEL_163:
            [contextCopy setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], expression), 0), @"NSUnderlyingException"}];
            return 0;
          }

          if (v19)
          {
            v17 = [v17 copy];
            [v17 setExpression:v19];
          }

          else
          {
            *(&self->super._isCount + 1) = 0;
          }

          v7 = v85;
          goto LABEL_33;
        }

        if (![NSSQLFunctionExpressionIntermediate functionIsAcceptableAsAggregate:expression])
        {
LABEL_27:
          *(&self->super._isCount + 1) = 0;
        }
      }

LABEL_33:
      [v8 addObject:v17];
      if (v7 == ++v16)
      {
        v15 = 0;
        goto LABEL_37;
      }
    }
  }

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v11 = [(NSArray *)self->super._fetchColumns objectAtIndex:i];
      if ([v11 _propertyType] == 5)
      {
        expression = [v11 expression];
        expressionType2 = [expression expressionType];
        if (expressionType2 == 3 || expressionType2 == 4 && (sel_valueForKey_ == [expression selector] || sel_valueForKeyPath_ == objc_msgSend(expression, "selector")))
        {
          v14 = [expression _mapKVCOperatorsToFunctionsInContext:contextCopy];
          if ([contextCopy objectForKey:@"NSUnderlyingException"])
          {
            goto LABEL_163;
          }

          if (v14)
          {
            v11 = [v11 copy];
            [v11 setExpression:v14];
          }

          v7 = v85;
        }
      }

      [v8 addObject:v11];
    }

    v15 = 0;
    v82 = 0;
  }

  else
  {
    v82 = 0;
    v15 = 1;
  }

LABEL_38:
  v20 = [contextCopy objectForKey:@"keypathExpressionDestinationRelationship"];
  v21 = [contextCopy objectForKey:@"entity"];
  v22 = objc_alloc_init(NSSQLEntity);
  [(NSSQLEntity *)v22 copyValuesForReadOnlyFetch:v21];
  [contextCopy setObject:v22 forKey:@"fabricatedSQLEntityForReadOnlyFetch"];
  v78 = v22;

  v76 = v20;
  if (v21)
  {
    v81 = *(v21 + 40);
  }

  else
  {
    v81 = 0;
  }

  v79 = v21;
  v83 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SELECT "];
  v5 = v23;
  if (!*(&self->super._isCount + 1) && self->super._useDistinct)
  {
    [v23 appendString:@"DISTINCT "];
  }

  if (v15)
  {
LABEL_44:
    v24 = contextCopy;
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v26 = [v8 countByEnumeratingWithState:&v86 objects:v108 count:16];
    if (v26)
    {
      v27 = *v87;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v87 != v27)
          {
            objc_enumerationMutation(v8);
          }

          [v25 addObject:{objc_msgSend(*(*(&v86 + 1) + 8 * j), "name")}];
        }

        v26 = [v8 countByEnumeratingWithState:&v86 objects:v108 count:16];
      }

      while (v26);
    }

    v29 = [(NSSQLEntity *)v78 addPropertiesForReadOnlyFetch:v83 keys:v25 context:v24];

    if ((v29 & 1) == 0)
    {

      return 0;
    }

    [v5 appendString:@" FROM "];
    [v5 appendString:{-[NSSQLEntity tableName](self->super._entity, "tableName")}];
    [v5 appendString:@" "];
    [v5 appendString:self->super._entityAlias];
    [v5 appendString:@" "];
    [v24 removeObjectForKey:@"keypathExpressionDestinationRelationship"];
    if (v76)
    {
      [v24 setObject:v76 forKey:@"keypathExpressionDestinationRelationship"];
    }

    return v5;
  }

  v30 = 0;
  v84 = contextCopy;
  while (1)
  {
    [contextCopy removeObjectForKey:@"keypathExpressionDestinationRelationship"];
    if (v30)
    {
      [v5 appendString:{@", "}];
    }

    v31 = [v8 objectAtIndex:v30];
    v32 = [(NSArray *)self->super._fetchColumns objectAtIndex:v30];
    _propertyType = [(NSPropertyDescription *)v31 _propertyType];
    if ([(NSPropertyDescription *)v31 _isAttribute])
    {
      if ((v82 & 1) != 0 || [(NSSQLFetchIntermediate *)v80 groupByClauseContainsKeypath:?])
      {
        v101[0] = MEMORY[0x1E69E9820];
        v101[1] = 3221225472;
        v102 = __62__NSSQLReadOnlySelectIntermediate_generateSQLStringInContext___block_invoke;
        v103 = &unk_1E6EC4350;
        v104 = v81;
        v105 = v5;
        selfCopy = self;
        v107 = v83;
        v95 = 0;
        v96 = &v95;
        v97 = 0x3052000000;
        v98 = __Block_byref_object_copy__33;
        v99 = __Block_byref_object_dispose__33;
        v94[0] = MEMORY[0x1E69E9820];
        v94[1] = 3221225472;
        v94[2] = __62__NSSQLReadOnlySelectIntermediate_generateSQLStringInContext___block_invoke_51;
        v94[3] = &unk_1E6EC4378;
        v94[5] = v101;
        v94[6] = &v95;
        v94[4] = v5;
        v100 = v94;
        if ([(NSPropertyDescription *)v31 attributeType]== 2100)
        {
          (*(v96[5] + 16))();
          [v5 replaceCharactersInRange:objc_msgSend(v5 withString:{"length") - 2, 1, &stru_1EF3F1768}];
        }

        else
        {
          if (v31 && [(NSPropertyDescription *)v31 superCompositeAttribute])
          {
            _qualifiedName = [(NSPropertyDescription *)v31 _qualifiedName];
          }

          else
          {
            _qualifiedName = [(NSPropertyDescription *)v31 name];
          }

          v102(v101, _qualifiedName);
        }

        _Block_object_dispose(&v95, 8);
        goto LABEL_142;
      }

      if (v5)
      {
      }

LABEL_170:

      [v84 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v31), 0), @"NSUnderlyingException"}];
      return 0;
    }

    if (_propertyType != 5)
    {
      if (_propertyType != 4)
      {
        goto LABEL_167;
      }

      if ((v82 & 1) == 0 && ![(NSSQLFetchIntermediate *)v80 groupByClauseContainsKeypath:?])
      {
        if (v5)
        {
        }

        goto LABEL_170;
      }

      v34 = [v81 objectForKey:{-[NSPropertyDescription name](v31, "name")}];
      v35 = objc_alloc_init(NSSQLToOne);
      v36 = v35;
      if (v35)
      {
        v35->super.super._propertyDescription = v31;
      }

      [(NSSQLToOne *)v35 copyValuesForReadOnlyFetch:v34];
      destinationEntity = [(NSSQLRelationship *)v36 destinationEntity];
      if (destinationEntity)
      {
        v38 = *(destinationEntity + 152);
        if (v38)
        {
          if ([v38 count])
          {
            [v5 appendString:self->super._columnAlias];
            [v5 appendString:@"."];
            if (v36)
            {
              foreignEntityKey = v36->_foreignEntityKey;
            }

            else
            {
              foreignEntityKey = 0;
            }

            [v5 appendString:{-[NSSQLColumn columnName](foreignEntityKey, "columnName")}];
            [v5 appendString:{@", "}];
          }
        }
      }

      goto LABEL_141;
    }

    expression2 = [(NSPropertyDescription *)v31 expression];
    expressionType3 = [expression2 expressionType];
    if (expressionType3)
    {
      break;
    }

    constantValue = [expression2 constantValue];
    if (([constantValue isNSArray] & 1) != 0 || (objc_msgSend(constantValue, "isNSSet") & 1) != 0 || (objc_msgSend(constantValue, "isNSOrderedSet") & 1) != 0 || objc_msgSend(constantValue, "isNSDictionary"))
    {
      if (v5)
      {
      }

      [v84 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], @"Constant select targets must be values, not collections", 0), @"NSUnderlyingException"}];
      return 0;
    }

    v46 = [[NSSQLConstantValueIntermediate alloc] initWithConstantValue:constantValue inScope:self context:v84];
    v47 = [(NSSQLConstantValueIntermediate *)v46 generateSQLStringInContext:v84];

    if (!v47)
    {
      if (v5)
      {
      }

      if (![v84 objectForKey:@"NSUnderlyingException"])
      {
        [v84 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], constantValue), 0), @"NSUnderlyingException"}];
      }

      return 0;
    }

    [v5 appendString:v47];

    v48 = [[NSSQLAttribute alloc] initForReadOnlyFetchWithExpression:v31];
    v49 = v48;
    if (v48)
    {
      v48[1] = v31;
    }

    [v83 addObject:v48];

LABEL_142:
    v70 = [(NSMutableDictionary *)self->_variableToAliasMappings objectForKey:v31];
    if (v70)
    {
      [v5 appendFormat:@" AS %@", v70];
    }

    ++v30;
    contextCopy = v84;
    if (v30 == v85)
    {
      goto LABEL_44;
    }
  }

  if (expressionType3 == 1)
  {
    v43 = [[NSSQLToOne alloc] initForReadOnlyFetchWithEntity:v79 propertyDescription:v31];
    v36 = v43;
    if (v43)
    {
      v43->super.super._propertyDescription = v31;
      if (![v84 objectForKey:@"nestedWhereSelect"])
      {
        v44 = v36->_foreignEntityKey;
        goto LABEL_82;
      }
    }

    else if (![v84 objectForKey:@"nestedWhereSelect"])
    {
      v44 = 0;
LABEL_82:
      if (v79 && (v79[20] || (v68 = v79[19]) != 0 && [v68 count]))
      {
        [v5 appendString:self->super._columnAlias];
        [v5 appendString:@"."];
        [v5 appendString:{-[NSSQLColumn columnName](v44, "columnName")}];
      }

      else
      {
        if (v44)
        {
          columnValue = v44->_columnValue;
        }

        else
        {
          columnValue = 0;
        }

        [v5 appendFormat:@"%u", -[NSNumber unsignedIntValue](columnValue, "unsignedIntValue")];
      }

      [v5 appendString:{@", "}];
    }

LABEL_141:
    [v5 appendString:self->super._columnAlias];
    [v5 appendString:@"."];
    [v5 appendString:{-[NSSQLToOne columnName](v36, "columnName")}];
    [v83 addObject:v36];

    goto LABEL_142;
  }

  if ((expressionType3 - 3) <= 1)
  {
    if (sel_inverseOrderKey_ != [expression2 selector])
    {
      if (([objc_opt_class() isSimpleKeypath:expression2] & 1) != 0 || -[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, expression2))
      {
        v50 = [(NSSQLExpressionIntermediate *)[NSSQLKeypathExpressionIntermediate alloc] initWithExpression:expression2 allowToMany:0 inScope:self];
      }

      else
      {
        if (![(NSSQLIntermediate *)self _functionExpressionIsSubqueryFollowedByKeypath:expression2])
        {
          v51 = [(NSSQLExpressionIntermediate *)[NSSQLFunctionExpressionIntermediate alloc] initWithExpression:expression2 allowToMany:0 inScope:self];
          if ([objc_msgSend(expression2 "function")] && -[NSPropertyDescription expressionResultType](v31, "expressionResultType") != 700)
          {

            if (![v84 objectForKey:@"NSUnderlyingException"])
            {
              [v84 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], @"groupConcat: requires the expressionResultType to be NSStringAttributeType", 0), @"NSUnderlyingException"}];
            }

            return 0;
          }

          goto LABEL_103;
        }

        v50 = -[NSSQLSubqueryExpressionIntermediate initWithExpression:trailingKeypath:inScope:]([NSSQLSubqueryExpressionIntermediate alloc], "initWithExpression:trailingKeypath:inScope:", [expression2 operand], objc_msgSend(objc_msgSend(expression2, "arguments"), "objectAtIndex:", 0), self);
      }

      v51 = v50;
LABEL_103:
      v52 = [(NSSQLFunctionExpressionIntermediate *)v51 generateSQLStringInContext:v84];
      if (v52)
      {
        [v5 appendString:v52];

        v53 = [v84 objectForKey:@"keypathExpressionDestinationRelationship"];
        if (v53 && [(NSPropertyDescription *)v31 expressionResultType]== 2000)
        {
          v54 = objc_alloc_init(NSSQLToOne);
          [(NSSQLToOne *)v54 copyValuesForReadOnlyFetch:v53];
          if (v54)
          {
            v54->super.super._propertyDescription = v32;
          }

          [v83 addObject:v54];
        }

        else
        {
          v61 = [[NSSQLAttribute alloc] initForReadOnlyFetchWithExpression:v31];
          v75 = v61;
          if (v61)
          {
            v61[1] = v32;
          }

          [v83 addObject:?];
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          obj = [objc_msgSend(v84 objectForKeyedSubscript:{@"storeRequest", "sortDescriptors"}];
          v62 = [obj countByEnumeratingWithState:&v90 objects:v109 count:16];
          if (v62)
          {
            v63 = *v91;
            while (2)
            {
              for (k = 0; k != v62; ++k)
              {
                if (*v91 != v63)
                {
                  objc_enumerationMutation(obj);
                }

                v65 = *(*(&v90 + 1) + 8 * k);
                name = [(NSPropertyDescription *)v31 name];
                if (-[NSString isEqualToString:](name, "isEqualToString:", [v65 key]))
                {
                  if (v79)
                  {
                    v71 = v79[5];
                  }

                  else
                  {
                    v71 = 0;
                  }

                  if (![v71 objectForKeyedSubscript:name])
                  {
                    v72 = [v84 objectForKey:@"aliasGenerator"];
                    generateVariableAlias = [(NSSQLAliasGenerator *)v72 generateVariableAlias];
                    [(NSMutableDictionary *)self->_variableToAliasMappings setObject:generateVariableAlias forKey:v31];
                    [(NSSQLColumn *)v75 _setColumnName:generateVariableAlias];
                  }

                  goto LABEL_150;
                }
              }

              v62 = [obj countByEnumeratingWithState:&v90 objects:v109 count:16];
              if (v62)
              {
                continue;
              }

              break;
            }
          }

LABEL_150:
        }

        goto LABEL_142;
      }

      if ([v84 objectForKey:@"NSUnderlyingException"])
      {
        return 0;
      }

LABEL_184:
      [v84 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], expression2), 0), @"NSUnderlyingException"}];
      return 0;
    }

    [v5 appendString:{objc_msgSend(objc_msgSend(objc_msgSend(expression2, "arguments"), "objectAtIndex:", 0), "constantValue")}];
    v67 = [[NSSQLAttribute alloc] initForReadOnlyFetchWithExpression:v31];
    v57 = v67;
    if (v67)
    {
      v67[1] = v32;
    }

    goto LABEL_134;
  }

  if (expressionType3 == 20)
  {
    v58 = [(NSSQLExpressionIntermediate *)[NSSQLTernaryExpressionIntermediate alloc] initWithExpression:expression2 allowToMany:0 inScope:self];
    v59 = [(NSSQLTernaryExpressionIntermediate *)v58 generateSQLStringInContext:v84];

    if (!v59)
    {

      if ([v84 objectForKey:@"NSUnderlyingException"])
      {
        return 0;
      }

      goto LABEL_184;
    }

    [v5 appendString:v59];

    v60 = [[NSSQLAttribute alloc] initForReadOnlyFetchWithExpression:v31];
    v57 = v60;
    if (v60)
    {
      v60[1] = v32;
    }

    goto LABEL_134;
  }

  if (expressionType3 != 50 || ([expression2 isCountOnlyRequest] & 1) == 0 && objc_msgSend(objc_msgSend(objc_msgSend(expression2, "requestExpression"), "expressionValueWithObject:context:", 0, 0), "resultType") != 4)
  {
LABEL_167:

    [v84 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v31), 0), @"NSUnderlyingException"}];
    return 0;
  }

  v55 = [(NSSQLIntermediate *)self _generateSQLForFetchExpression:expression2 allowToMany:1 inContext:v84];
  if (v55)
  {
    [v5 appendString:v55];

    v56 = [[NSSQLAttribute alloc] initForReadOnlyFetchWithExpression:v31];
    v57 = v56;
    if (v56)
    {
      v56[1] = v32;
    }

LABEL_134:
    [v83 addObject:v57];

    goto LABEL_142;
  }

  if (![v84 objectForKey:@"NSUnderlyingException"])
  {
    goto LABEL_184;
  }

  return 0;
}

void __62__NSSQLReadOnlySelectIntermediate_generateSQLStringInContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKey:a2];
  v5 = [(NSSQLColumn *)[NSSQLAttribute alloc] initForReadOnlyFetching];
  [v5 copyValuesForReadOnlyFetch:v3];
  v4 = v5;
  if (v5 && (v5[16] & 1) != 0)
  {
    [*(a1 + 40) appendString:*(*(a1 + 48) + 56)];
    [*(a1 + 40) appendString:@"."];
    v4 = v5;
  }

  [*(a1 + 40) appendString:{objc_msgSend(v4, "columnName")}];
  [*(a1 + 56) addObject:v5];
}

uint64_t __62__NSSQLReadOnlySelectIntermediate_generateSQLStringInContext___block_invoke_51(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [a2 elements];
    result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (result)
    {
      v6 = result;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(a1[6] + 8) + 40) + 16))();
          ++v8;
        }

        while (v6 != v8);
        result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      (*(a1[5] + 16))(a1[5], [a2 _qualifiedName]);
      v9 = a1[4];

      return [v9 appendString:{@", "}];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

@end
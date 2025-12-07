@interface NSSQLSubqueryExpressionIntermediate
- (BOOL)_isKeypathScopedToSubquery:(_BOOL8)result;
- (BOOL)keypathExpressionIsSafeLHSForIn:(id)in;
- (NSSQLSubqueryExpressionIntermediate)initWithExpression:(id)expression trailingKeypath:(id)keypath inScope:(id)scope;
- (id)_generateSQLForVariableExpression:(id)expression allowToMany:(BOOL)many inContext:(id)context;
- (id)fetchIntermediateForKeypathExpression:(id)expression;
- (id)generateSQLStringInContext:(id)context;
- (id)governingAliasForKeypathExpression:(id)expression;
- (id)governingEntityForKeypathExpression:(id)expression;
- (uint64_t)canDoDirectJoinGivenPredicate:(void *)predicate;
- (void)_promoteJoinsForSubqueryScopedKeypath:(id)keypath;
- (void)_promoteJoinsForSubqueryScopedKeypaths;
- (void)_setVariableColumn:(uint64_t)column;
- (void)dealloc;
@end

@implementation NSSQLSubqueryExpressionIntermediate

- (void)_promoteJoinsForSubqueryScopedKeypaths
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  keypathsToPromote = self->_keypathsToPromote;
  v4 = [(NSMutableArray *)keypathsToPromote countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(keypathsToPromote);
        }

        [(NSSQLFetchIntermediate *)&self->_fetchIntermediate->super.super.super.isa promoteToOuterJoinsAlongKeypathWithComponents:?];
      }

      v5 = [(NSMutableArray *)keypathsToPromote countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSSQLIntermediate *)self->super.super._scope _promoteJoinsForSubqueryScopedKeypaths];
}

- (void)dealloc
{
  self->_trailingKeypath = 0;
  self->_selectFromEntity = 0;
  self->_variableExpression = 0;
  self->_governingEntityForVariable = 0;

  self->_selectFromCorrelationTarget = 0;
  self->_fetchIntermediate = 0;

  self->_selectEntityAlias = 0;
  self->_variableAlias = 0;

  self->_variableColumn = 0;
  self->_keypathsToPromote = 0;
  v3.receiver = self;
  v3.super_class = NSSQLSubqueryExpressionIntermediate;
  [(NSSQLSubqueryExpressionIntermediate *)&v3 dealloc];
}

- (NSSQLSubqueryExpressionIntermediate)initWithExpression:(id)expression trailingKeypath:(id)keypath inScope:(id)scope
{
  v11.receiver = self;
  v11.super_class = NSSQLSubqueryExpressionIntermediate;
  v7 = [(NSSQLExpressionIntermediate *)&v11 initWithExpression:expression allowToMany:0 inScope:scope];
  if (v7)
  {
    v7->_trailingKeypath = keypath;
    if (keypath)
    {
      if ([objc_msgSend(keypath "constantValue")] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v7->_hasTrailingFunction = 1;
      }

      v8 = [objc_msgSend(keypath "constantValue")];
      v7->_isCount = v8;
      if (v8)
      {
        v7->_onlyTrailIsCount = [objc_msgSend(keypath "constantValue")];
        defaultInstance = [MEMORY[0x1E696AF08] defaultInstance];
        v7->_subqueryHasTruePredicate = defaultInstance == [expression predicate];
      }
    }

    v7->_variableExpression = [expression variableExpression];
    v7->_useDistinct = 0;
  }

  return v7;
}

- (BOOL)_isKeypathScopedToSubquery:(_BOOL8)result
{
  if (result)
  {
    v3 = result;
    return [a2 expressionType] == 4 && objc_msgSend(objc_msgSend(a2, "operand"), "expressionType") == 2 && (sel_valueForKey_ == objc_msgSend(a2, "selector") || sel_valueForKeyPath_ == objc_msgSend(a2, "selector")) && (objc_msgSend(objc_msgSend(a2, "operand"), "isEqual:", *(v3 + 40)) & 1) != 0;
  }

  return result;
}

- (id)fetchIntermediateForKeypathExpression:(id)expression
{
  if ([(NSSQLSubqueryExpressionIntermediate *)self _isKeypathScopedToSubquery:expression])
  {
    return self->_fetchIntermediate;
  }

  scope = self->super.super._scope;

  return [(NSSQLIntermediate *)scope fetchIntermediateForKeypathExpression:expression];
}

- (id)governingEntityForKeypathExpression:(id)expression
{
  if ([(NSSQLSubqueryExpressionIntermediate *)self _isKeypathScopedToSubquery:expression])
  {
    return self->_governingEntityForVariable;
  }

  v6.receiver = self;
  v6.super_class = NSSQLSubqueryExpressionIntermediate;
  return [(NSSQLIntermediate *)&v6 governingEntityForKeypathExpression:expression];
}

- (id)governingAliasForKeypathExpression:(id)expression
{
  if ([(NSSQLSubqueryExpressionIntermediate *)self _isKeypathScopedToSubquery:expression])
  {
    return self->_variableAlias;
  }

  v6.receiver = self;
  v6.super_class = NSSQLSubqueryExpressionIntermediate;
  return [(NSSQLIntermediate *)&v6 governingAliasForKeypathExpression:expression];
}

- (id)_generateSQLForVariableExpression:(id)expression allowToMany:(BOOL)many inContext:(id)context
{
  manyCopy = many;
  if ([expression isEqual:{-[NSExpression variableExpression](self->super._expression, "variableExpression")}])
  {
    v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@" "];
    [v9 appendString:self->_variableAlias];
    [v9 appendString:@"."];
    [v9 appendString:{-[NSSQLColumn columnName](self->_variableColumn, "columnName")}];
    return v9;
  }

  else
  {
    scope = self->super.super._scope;

    return [(NSSQLIntermediate *)scope _generateSQLForVariableExpression:expression allowToMany:manyCopy inContext:context];
  }
}

- (void)_promoteJoinsForSubqueryScopedKeypath:(id)keypath
{
  if ([objc_msgSend(keypath "operand")])
  {
    if ([keypath expressionType] == 3)
    {
      keyPath = [keypath keyPath];
    }

    else
    {
      keyPath = [objc_msgSend(objc_msgSend(keypath "arguments")];
    }

    v6 = [keyPath componentsSeparatedByString:@"."];
    keypathsToPromote = self->_keypathsToPromote;
    if (!keypathsToPromote)
    {
      keypathsToPromote = objc_alloc_init(MEMORY[0x1E695DF70]);
      self->_keypathsToPromote = keypathsToPromote;
    }

    [(NSMutableArray *)keypathsToPromote addObject:v6];
  }

  scope = self->super.super._scope;

  [(NSSQLIntermediate *)scope _promoteJoinsForSubqueryScopedKeypath:keypath];
}

- (BOOL)keypathExpressionIsSafeLHSForIn:(id)in
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(NSSQLSubqueryExpressionIntermediate *)self _isKeypathScopedToSubquery:in])
  {
    destinationEntity = [(NSSQLSubqueryExpressionIntermediate *)self governingEntityForKeypathExpression:in];
    if ([in expressionType] == 3)
    {
      keyPath = [in keyPath];
    }

    else
    {
      keyPath = [objc_msgSend(objc_msgSend(in "arguments")];
    }

    v8 = [keyPath componentsSeparatedByString:@"."];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v20;
LABEL_8:
      v13 = 0;
      while (1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        if (!destinationEntity)
        {
          return 1;
        }

        v14 = [destinationEntity[5] objectForKey:*(*(&v19 + 1) + 8 * v13)];
        if (!v14)
        {
          return 1;
        }

        v15 = v14;
        if ([v14 isToMany])
        {
          break;
        }

        v16 = v15[24];
        if (v16 == 7)
        {
          destinationEntity = [v15 destinationEntity];
        }

        else
        {
          if (v16 == 9)
          {
            break;
          }

          destinationEntity = 0;
        }

LABEL_20:
        if (v10 == ++v13)
        {
          v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
          result = 1;
          if (v10)
          {
            goto LABEL_8;
          }

          return result;
        }
      }

      destinationEntity2 = [v15 destinationEntity];
      if (v11)
      {
        return 0;
      }

      destinationEntity = destinationEntity2;
      v11 = 1;
      goto LABEL_20;
    }

    return 1;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = NSSQLSubqueryExpressionIntermediate;
    return [(NSSQLIntermediate *)&v18 keypathExpressionIsSafeLHSForIn:in];
  }
}

- (void)_setVariableColumn:(uint64_t)column
{
  if (*(column + 88) != a2)
  {
    v4 = a2;

    *(column + 88) = a2;
  }
}

- (uint64_t)canDoDirectJoinGivenPredicate:(void *)predicate
{
  v4 = [NSSQLSubqueryExpressionIntermediatePredicateVisitor alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NSSQLSubqueryExpressionIntermediatePredicateVisitor;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    if (v5)
    {
      v5[1] = predicate;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 checkPredicate:a2];

  return v6;
}

- (id)generateSQLStringInContext:(id)context
{
  contextCopy = context;
  v155 = *MEMORY[0x1E69E9840];
  if ([context objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  if (![(NSSQLIntermediate *)self isIndexScoped])
  {
    trailingKeypath = self->_trailingKeypath;
    if (trailingKeypath)
    {
      predicateFormat = [(NSExpression *)trailingKeypath predicateFormat];
      v13 = [predicateFormat rangeOfString:@".@"];
      if (v13 != [predicateFormat rangeOfString:@".@" options:4])
      {
LABEL_6:
        v14 = MEMORY[0x1E695DF30];
        v15 = *MEMORY[0x1E695D940];
        v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->super._expression);
        v9 = v14;
        v10 = v15;
        v7 = 0;
        goto LABEL_7;
      }
    }

    else
    {
      predicateFormat = 0;
    }

    if ((-[NSSQLIntermediate isTargetColumnsScoped](self, "isTargetColumnsScoped") || -[NSSQLIntermediate isUpdateScoped](self, "isUpdateScoped")) && !self->_trailingKeypath && ([predicateFormat hasSuffix:@".@count"] & 1) == 0 && (objc_msgSend(predicateFormat, "hasSuffix:", @".@min") & 1) == 0 && (objc_msgSend(predicateFormat, "hasSuffix:", @".@max") & 1) == 0 && (objc_msgSend(predicateFormat, "hasSuffix:", @".@sum") & 1) == 0 && (objc_msgSend(predicateFormat, "hasSuffix:", @".@avg") & 1) == 0)
    {
      goto LABEL_6;
    }

    self->_fetchIntermediate = [[NSSQLFetchIntermediate alloc] initWithScope:self];
    collection = [(NSExpression *)self->super._expression collection];
    if (([objc_opt_class() isSimpleKeypath:collection] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, collection))
    {
      [contextCopy setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], collection), 0), @"NSUnderlyingException"}];
      goto LABEL_138;
    }

    v19 = [objc_msgSend(objc_msgSend(objc_msgSend(collection "arguments")];
    if ([v19 count] < 2)
    {
      array = [MEMORY[0x1E695DEC8] array];
    }

    else
    {
      array = [v19 subarrayWithRange:{1, objc_msgSend(v19, "count") - 1}];
    }

    v148 = array;
    v21 = [(NSSQLIntermediate *)self->super.super._scope governingEntityForKeypathExpression:collection];
    self->_selectFromEntity = v21;
    isUpdateColumnsScoped = [(NSSQLIntermediate *)self isUpdateColumnsScoped];
    scope = self->super.super._scope;
    if (isUpdateColumnsScoped)
    {
      governingAlias = [(NSSQLIntermediate *)scope governingAlias];
      if (governingAlias)
      {
        goto LABEL_29;
      }

      tableName = [(NSSQLEntity *)v21 tableName];
    }

    else
    {
      tableName = [(NSSQLIntermediate *)scope governingAliasForKeypathExpression:collection];
    }

    governingAlias = tableName;
LABEL_29:
    v145 = collection;
    v26 = [v19 objectAtIndex:0];
    if (v21)
    {
      v27 = [(NSMutableDictionary *)v21->_properties objectForKey:v26];
      v28 = objc_msgSend_valueForKey_(contextCopy);
      if (v27)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v28 = objc_msgSend_valueForKey_(contextCopy);
    }

    v29 = v28;
    if ([v28 count])
    {
      lastObject = [v29 lastObject];
      v31 = [v19 objectAtIndex:0];
      if (lastObject)
      {
        v27 = [*(lastObject + 40) objectForKey:v31];
      }

      else
      {
        v27 = 0;
      }

      [v29 removeLastObject];
    }

    else
    {
      v27 = 0;
    }

LABEL_37:
    v32 = [objc_msgSend(contextCopy objectForKey:{@"aliasGenerator", "generateTableAlias"}];
    self->_selectEntityAlias = v32;
    self->_variableAlias = v32;
    self->_governingEntityForVariable = self->_selectFromEntity;
    propertyType = [v27 propertyType];
    [(NSSQLStatementIntermediate *)self->_fetchIntermediate setGoverningAlias:self->_selectEntityAlias];
    switch(propertyType)
    {
      case 9:
        destinationEntity = [v27 destinationEntity];
        self->_selectFromEntity = destinationEntity;
        self->_governingEntityForVariable = destinationEntity;
        if (v27)
        {
          v39 = v27[7];
        }

        else
        {
          v39 = 0;
        }

        v46 = [governingAlias mutableCopy];
        [v46 appendString:@"."];
        if (v21)
        {
          primaryKey = v21->_primaryKey;
        }

        else
        {
          primaryKey = 0;
        }

        [v46 appendString:{-[NSSQLColumn columnName](primaryKey, "columnName")}];
        [v46 appendString:@" = "];
        [v46 appendString:self->_selectEntityAlias];
        [v46 appendString:@"."];
        [v46 appendString:-[NSSQLManyToMany inverseColumnName](v39)];
        [(NSSQLStatementIntermediate *)self->_fetchIntermediate setCorrelationToken:v46];

        if (self->_onlyTrailIsCount && self->_subqueryHasTruePredicate)
        {
          v48 = [objc_msgSend(v27 "correlationTableName")];
          self->_selectFromCorrelationTarget = v48;
          [(NSMutableString *)v48 appendString:@" "];
          [(NSMutableString *)self->_selectFromCorrelationTarget appendString:self->_selectEntityAlias];
          v40 = 0;
          goto LABEL_63;
        }

        v49 = [objc_msgSend(v27 "correlationTableName")];
        self->_selectFromCorrelationTarget = v49;
        [(NSMutableString *)v49 appendString:@" "];
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:self->_selectEntityAlias];
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:@" JOIN "];
        -[NSMutableString appendString:](self->_selectFromCorrelationTarget, "appendString:", [objc_msgSend(v27 "destinationEntity")]);
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:@" "];
        v50 = [objc_msgSend(contextCopy objectForKey:{@"aliasGenerator", "generateTableAlias"}];
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:v50];
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:@" ON "];
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:self->_selectEntityAlias];
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:@"."];
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:[(__CFString *)v39 columnName]];
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:@" = "];
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:v50];
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:@"."];
        selectFromCorrelationTarget = self->_selectFromCorrelationTarget;
        destinationEntity2 = [v27 destinationEntity];
        if (destinationEntity2)
        {
          destinationEntity2 = destinationEntity2[16];
        }

        -[NSMutableString appendString:](selectFromCorrelationTarget, "appendString:", [destinationEntity2 columnName]);

        self->_selectEntityAlias = v50;
        self->_variableAlias = self->_selectEntityAlias;
        break;
      case 8:
        destinationEntity3 = [v27 destinationEntity];
        self->_selectFromEntity = destinationEntity3;
        self->_governingEntityForVariable = destinationEntity3;
        if (v27)
        {
          v42 = v27[7];
        }

        else
        {
          v42 = 0;
        }

        v43 = [governingAlias mutableCopy];
        [v43 appendString:@"."];
        if (v21)
        {
          v44 = v21->_primaryKey;
        }

        else
        {
          v44 = 0;
        }

        [v43 appendString:{-[NSSQLColumn columnName](v44, "columnName")}];
        [v43 appendString:@" = "];
        [v43 appendString:self->_selectEntityAlias];
        [v43 appendString:@"."];
        [v43 appendString:{objc_msgSend(objc_msgSend(v42, "foreignKey"), "columnName")}];
        [(NSSQLStatementIntermediate *)self->_fetchIntermediate setCorrelationToken:v43];

        break;
      case 7:
        destinationEntity4 = [v27 destinationEntity];
        self->_selectFromEntity = destinationEntity4;
        self->_governingEntityForVariable = destinationEntity4;
        v35 = [governingAlias mutableCopy];
        [v35 appendString:@"."];
        [v35 appendString:{objc_msgSend(objc_msgSend(v27, "foreignKey"), "columnName")}];
        [v35 appendString:@" = "];
        [v35 appendString:self->_selectEntityAlias];
        [v35 appendString:@"."];
        selectFromEntity = self->_selectFromEntity;
        if (selectFromEntity)
        {
          v37 = selectFromEntity->_primaryKey;
        }

        else
        {
          v37 = 0;
        }

        [v35 appendString:{-[NSSQLColumn columnName](v37, "columnName")}];
        [(NSSQLStatementIntermediate *)self->_fetchIntermediate setCorrelationToken:v35];

        destinationEntity5 = [v27 destinationEntity];
        if (destinationEntity5)
        {
          v39 = *(destinationEntity5 + 128);
        }

        else
        {
          v39 = 0;
        }

        v40 = 1;
        goto LABEL_63;
      default:
        [contextCopy setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->super._expression), 0), @"NSUnderlyingException"}];
        goto LABEL_138;
    }

    destinationEntity6 = [v27 destinationEntity];
    if (destinationEntity6)
    {
      v40 = 0;
      v39 = *(destinationEntity6 + 128);
    }

    else
    {
      v39 = 0;
      v40 = 0;
    }

LABEL_63:
    [(NSSQLSubqueryExpressionIntermediate *)self _setVariableColumn:v39];
    [(NSSQLStatementIntermediate *)self->_fetchIntermediate setGoverningEntity:self->_selectFromEntity];
    v54 = self->_trailingKeypath;
    if (v54)
    {
      v55 = [(NSString *)[(NSExpression *)v54 keyPath] componentsSeparatedByString:@"."];
    }

    else
    {
      v55 = 0;
    }

    if ([-[NSArray objectAtIndex:](v55 objectAtIndex:{0), "isEqualToString:", &stru_1EF3F1768}])
    {
      v55 = [(NSArray *)v55 subarrayWithRange:1, [(NSArray *)v55 count]- 1];
    }

    if (!self->_hasTrailingFunction)
    {
      goto LABEL_73;
    }

    if ([(NSArray *)v55 count]> 1)
    {
      [v148 count];
LABEL_77:
      v57 = [v148 mutableCopy];
      v150 = 0u;
      v151 = 0u;
      v152 = 0u;
      v153 = 0u;
      v58 = [(NSArray *)v55 countByEnumeratingWithState:&v150 objects:v154 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v151;
        do
        {
          for (i = 0; i != v59; ++i)
          {
            if (*v151 != v60)
            {
              objc_enumerationMutation(v55);
            }

            v62 = *(*(&v150 + 1) + 8 * i);
            if (([v62 hasPrefix:@"@"] & 1) == 0)
            {
              [v57 addObject:v62];
            }
          }

          v59 = [(NSArray *)v55 countByEnumeratingWithState:&v150 objects:v154 count:16];
        }

        while (v59);
      }

      v63 = [v148 count];
      v149 = v63 - 1;
      v64 = [v57 count];
      v65 = v64;
      v146 = v64 - 1;
      v147 = v63;
      if (!v64)
      {
        v67 = 0;
        v72 = 0;
        goto LABEL_113;
      }

      v144 = contextCopy;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      destinationEntity7 = self->_selectFromEntity;
      v143 = v64 == v63;
      while (1)
      {
        v70 = [v57 objectAtIndex:v68];
        if (!destinationEntity7)
        {
          break;
        }

        v71 = [(NSMutableDictionary *)destinationEntity7->_properties objectForKey:v70];
        if (!v71)
        {
          break;
        }

        v72 = v71;
        propertyType2 = [(NSSQLProperty *)v71 propertyType];
        if ((propertyType2 - 7) > 2)
        {
          if (v146 != v68)
          {
LABEL_110:
            v77 = MEMORY[0x1E695DF30];
            v78 = *MEMORY[0x1E695D940];
            v79 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->super._expression);
            goto LABEL_111;
          }

          v67 |= v65 == v147;
          v66 = 1;
        }

        else
        {
          if (!(((propertyType2 & 0xE) != 8) | v40 & 1))
          {
            goto LABEL_110;
          }

          v40 &= (propertyType2 & 0xE) != 8;
          destinationEntity7 = [(NSSQLColumn *)v72 destinationEntity];
        }

        if (v149 == v68)
        {
          if (v67)
          {
            self->_governingEntityForVariable = destinationEntity7;
            selfCopy2 = self;
            v75 = v72;
          }

          else
          {
            destinationEntity8 = [(NSSQLColumn *)v72 destinationEntity];
            self->_governingEntityForVariable = destinationEntity8;
            if (destinationEntity8)
            {
              v75 = destinationEntity8->_primaryKey;
            }

            else
            {
              v75 = 0;
            }

            selfCopy2 = self;
          }

          [(NSSQLSubqueryExpressionIntermediate *)selfCopy2 _setVariableColumn:v75];
        }

        if (v65 == ++v68)
        {
          if (v66)
          {
            self->_targetColumn = v72;
            contextCopy = v144;
            if (v65 == 1)
            {
              v80 = 1;
              v81 = v143;
              goto LABEL_116;
            }

            self->_variableAlias = 0;
            v84 = 1;
            v81 = v143;
LABEL_119:
            if ([(NSSQLIntermediate *)self isUpdateColumnsScoped])
            {
              [contextCopy setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v145), 0), @"NSUnderlyingException"}];
              goto LABEL_138;
            }

            v85 = [contextCopy objectForKey:@"subqueryCollectionContext"];
            [contextCopy setObject:self forKey:@"subqueryCollectionContext"];
            v86 = [NSSQLJoinIntermediate createJoinIntermediatesForKeypath:v57 startEntity:&self->_selectFromEntity->super.super.isa startAlias:self->_selectEntityAlias forScope:self inStatementIntermediate:&self->_fetchIntermediate->super.super.super.isa inContext:contextCopy];
            if (v85)
            {
              [contextCopy setObject:v85 forKey:@"subqueryCollectionContext"];
            }

            else
            {
              [contextCopy removeObjectForKey:@"subqueryCollectionContext"];
            }

            if ([contextCopy objectForKey:@"NSUnderlyingException"])
            {

              goto LABEL_138;
            }

            if (v86)
            {
              if (v81)
              {
                v87 = v148;
                if (v67)
                {
                  v87 = [v148 subarrayWithRange:{0, v149}];
                }

                v88 = [(NSSQLFetchIntermediate *)&self->_fetchIntermediate->super.super.super.isa finalJoinForKeypathWithComponents:v87];
                v89 = v88;
                if (v88)
                {
                  if (v84)
                  {
                    v90 = v88[4];
                    goto LABEL_133;
                  }

                  v129 = v88[2];
                  if (v129 && *(v129 + 24) == 9)
                  {
                    if ([(NSSQLSubqueryExpressionIntermediate *)self canDoDirectJoinGivenPredicate:?])
                    {
                      *(v89 + 56) = 1;
                      v130 = v89[5];
                      self->_variableAlias = v130;
                      self->_targetAlias = v130;
                      v131 = objc_alloc_init(NSSQLColumn);
                      inverseColumnName = [(NSSQLManyToMany *)v129 inverseColumnName];
                      [(NSSQLColumn *)v131 _setColumnName:inverseColumnName];
                      if (v131)
                      {
                        *&v131->super._flags |= 1u;
                      }

                      [(NSSQLSubqueryExpressionIntermediate *)self _setVariableColumn:v131];

LABEL_221:
                      v96 = &OBJC_IVAR___NSSQLSubqueryExpressionIntermediate__targetColumn;
                      variableColumn = self->_variableColumn;
                    }

                    else
                    {
                      v139 = v89[4];
                      self->_variableAlias = v139;
                      self->_targetAlias = v139;
                      destinationEntity9 = [v89[2] destinationEntity];
                      if (destinationEntity9)
                      {
                        v141 = *(destinationEntity9 + 128);
                      }

                      else
                      {
                        v141 = 0;
                      }

                      [(NSSQLSubqueryExpressionIntermediate *)self _setVariableColumn:v141];
                      v96 = &OBJC_IVAR___NSSQLSubqueryExpressionIntermediate__targetColumn;
                      variableColumn = self->_variableColumn;
                    }

LABEL_137:
                    *(&self->super.super.super.isa + *v96) = variableColumn;

LABEL_138:
                    if ([contextCopy objectForKey:@"NSUnderlyingException"])
                    {
LABEL_139:

                      v16 = 0;
                      self->_fetchIntermediate = 0;
                      return v16;
                    }

                    predicate = [(NSExpression *)self->super._expression predicate];
                    if (predicate)
                    {
                      v98 = predicate;
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v99 = [[NSSQLSimpleWhereIntermediate alloc] initWithPredicate:[(NSExpression *)self->super._expression predicate] inScope:self];
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v99 = [[NSSQLCompoundWhereIntermediate alloc] initWithPredicate:[(NSExpression *)self->super._expression predicate] inScope:self inContext:contextCopy];
                          if (!v99)
                          {
                            goto LABEL_139;
                          }
                        }

                        else
                        {
                          if ([MEMORY[0x1E696AE18] predicateWithValue:1] != v98)
                          {

                            self->_fetchIntermediate = 0;
                            [contextCopy setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], @"Unknown predicate type", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", self->super._expression, @"subquery", @"NSUnderlyingException"}];
                          }

                          v99 = 0;
                        }
                      }

                      if ([contextCopy objectForKey:@"NSUnderlyingException"])
                      {

                        return 0;
                      }

                      [(NSSQLStatementIntermediate *)self->_fetchIntermediate setWhereIntermediate:v99];
                    }

                    v100 = self->_trailingKeypath;
                    if (!v100)
                    {
                      v104 = self->_variableColumn;
                      goto LABEL_165;
                    }

                    v101 = [(NSString *)[(NSExpression *)v100 keyPath] componentsSeparatedByString:@"."];
                    if ([-[NSArray objectAtIndex:](v101 objectAtIndex:{0), "isEqual:", &stru_1EF3F1768}])
                    {
                      v101 = [(NSArray *)v101 mutableCopy];
                      [(NSArray *)v101 removeObjectAtIndex:0];
                    }

                    v102 = [(NSArray *)v101 objectAtIndex:[(NSArray *)v101 count]- 1];
                    if (self->_hasTrailingFunction)
                    {
                      v103 = v102;
                      if ([@"@count" isEqual:v102])
                      {
                        v104 = objc_alloc_init(NSSQLColumn);
                        if ([(NSSQLIntermediate *)self isUpdateColumnsScoped])
                        {
                          v105 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSSQLColumn *)self->_targetColumn columnName], v142);
                        }

                        else
                        {
                          v105 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->_targetAlias, [(NSSQLColumn *)self->_targetColumn columnName]);
                        }

                        [(NSSQLColumn *)v104 _setColumnName:v105];
                        if (!v104)
                        {
LABEL_165:
                          v108 = self->_selectFromCorrelationTarget;
                          v109 = [NSSQLSelectIntermediate alloc];
                          selectEntityAlias = self->_selectEntityAlias;
                          if (v108)
                          {
                            v111 = -[NSSQLSelectIntermediate initForCorrelationTarget:alias:fetchColumns:inScope:](v109, "initForCorrelationTarget:alias:fetchColumns:inScope:", self->_selectFromCorrelationTarget, selectEntityAlias, [MEMORY[0x1E695DEC8] arrayWithObject:v104], self);
                          }

                          else
                          {
                            v111 = -[NSSQLSelectIntermediate initWithEntity:alias:fetchColumns:inScope:](v109, "initWithEntity:alias:fetchColumns:inScope:", self->_selectFromEntity, selectEntityAlias, [MEMORY[0x1E695DEC8] arrayWithObject:v104], self);
                          }

                          v112 = v111;
                          [(NSSQLSelectIntermediate *)v111 setColumnAlias:?];
                          if (v112)
                          {
                            v112[48] = self->_useDistinct;
                          }

                          [(NSSQLFetchIntermediate *)self->_fetchIntermediate setSelectIntermediate:v112];

LABEL_171:
                          v113 = [(NSSQLFetchIntermediate *)self->_fetchIntermediate generateSQLStringInContext:contextCopy];
                          if (v113)
                          {
                            v114 = v113;
                            v16 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"(");
                            [v16 appendString:v114];
                            [v16 appendString:@""]);

                            return v16;
                          }

                          return 0;
                        }

LABEL_164:
                        *&v104->super._flags &= ~1u;
                        goto LABEL_165;
                      }

                      if (([objc_msgSend(contextCopy objectForKey:{@"supportedKVCAggregates", "containsObject:", v103}] & 1) != 0 || objc_msgSend(v103, "isEqual:", @"@total"))
                      {
                        if ([(NSSQLProperty *)self->_targetColumn propertyType]== 1)
                        {
                          if ([v103 characterAtIndex:1] == 97)
                          {
                            v115 = @"AVG";
                          }

                          else
                          {
                            v115 = [objc_msgSend(v103 substringFromIndex:{1), "uppercaseString"}];
                          }

                          v104 = objc_alloc_init(NSSQLColumn);
                          v106 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1EF3F1768];
                          [v106 appendString:v115];
                          objc_msgSend(v106, "appendString:", @"(");
                          if (![(NSSQLIntermediate *)self isUpdateColumnsScoped])
                          {
                            [v106 appendString:self->_targetAlias];
                            [v106 appendString:@"."];
                          }

                          [v106 appendString:{-[NSSQLColumn columnName](self->_targetColumn, "columnName")}];
                          columnName = @" ");
                          goto LABEL_163;
                        }

                        v116 = MEMORY[0x1E695DF30];
                        v117 = *MEMORY[0x1E695D940];
                        v118 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->super._expression, v142);
                      }

                      else
                      {
                        v116 = MEMORY[0x1E695DF30];
                        v117 = *MEMORY[0x1E695D940];
                        v118 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->super._expression, self->_trailingKeypath);
                      }

                      [contextCopy setObject:objc_msgSend(v116 forKey:{"exceptionWithName:reason:userInfo:", v117, v118, 0), @"NSUnderlyingException"}];
                      goto LABEL_171;
                    }

                    v104 = objc_alloc_init(NSSQLColumn);
                    v106 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1EF3F1768];
                    if (![(NSSQLIntermediate *)self isUpdateColumnsScoped])
                    {
                      [v106 appendString:self->_targetAlias];
                      [v106 appendString:@"."];
                    }

                    columnName = [(NSSQLColumn *)self->_targetColumn columnName];
LABEL_163:
                    [v106 appendString:columnName];
                    [(NSSQLColumn *)v104 _setColumnName:v106];

                    if (!v104)
                    {
                      goto LABEL_165;
                    }

                    goto LABEL_164;
                  }

                  v136 = v88[4];
LABEL_217:
                  v137 = v136;
                  self->_variableAlias = v137;
                  self->_targetAlias = v137;
                  if (v89)
                  {
                    destinationEntity10 = [v89[2] destinationEntity];
                    if (destinationEntity10)
                    {
                      v94 = *(destinationEntity10 + 128);
                      goto LABEL_220;
                    }

                    goto LABEL_246;
                  }
                }

                else
                {
                  v136 = 0;
                  v90 = 0;
                  if ((v84 & 1) == 0)
                  {
                    goto LABEL_217;
                  }

LABEL_133:
                  v91 = v90;
                  self->_variableAlias = v91;
                  self->_targetAlias = v91;
                  if (v89)
                  {
                    destinationEntity11 = [v89[2] destinationEntity];
                    lastObject2 = [v148 lastObject];
                    if (destinationEntity11)
                    {
                      v94 = [*(destinationEntity11 + 40) objectForKey:lastObject2];
LABEL_220:
                      [(NSSQLSubqueryExpressionIntermediate *)self _setVariableColumn:v94];
                      goto LABEL_221;
                    }

LABEL_246:
                    v94 = 0;
                    goto LABEL_220;
                  }

                  [v148 lastObject];
                }

                v94 = 0;
                goto LABEL_220;
              }

              if (v147)
              {
                v119 = [(NSSQLFetchIntermediate *)&self->_fetchIntermediate->super.super.super.isa finalJoinForKeypathWithComponents:v148];
                if (v119)
                {
                  v120 = v119;
                  destinationEntity12 = [v119[2] destinationEntity];
                  if (destinationEntity12)
                  {
                    v122 = *(destinationEntity12 + 128);
                  }

                  else
                  {
                    v122 = 0;
                  }

                  [(NSSQLSubqueryExpressionIntermediate *)self _setVariableColumn:v122];
                  v123 = v120[4];
                }

                else
                {
                  [(NSSQLSubqueryExpressionIntermediate *)self _setVariableColumn:?];
                  v123 = 0;
                }

                self->_variableAlias = v123;
                v124 = v57;
                if (v84)
                {
                  v124 = [v57 subarrayWithRange:{0, v146}];
                }

                v125 = [(NSSQLFetchIntermediate *)&self->_fetchIntermediate->super.super.super.isa finalJoinForKeypathWithComponents:v124];
                if (v125)
                {
                  self->_targetAlias = v125[4];
                  destinationEntity13 = [v125[2] destinationEntity];
                  v127 = destinationEntity13;
                  if (v84)
                  {
                    lastObject3 = [v57 lastObject];
                    if (!v127)
                    {
LABEL_223:
                      variableColumn = 0;
                      goto LABEL_215;
                    }

LABEL_212:
                    variableColumn = [*(v127 + 40) objectForKey:lastObject3];
LABEL_215:
                    v96 = &OBJC_IVAR___NSSQLSubqueryExpressionIntermediate__targetColumn;
                    goto LABEL_137;
                  }

                  if (!destinationEntity13)
                  {
                    goto LABEL_223;
                  }

LABEL_214:
                  variableColumn = *(v127 + 128);
                  goto LABEL_215;
                }
              }

              else
              {
                v133 = v57;
                if (v84)
                {
                  v133 = [v57 subarrayWithRange:{0, v146}];
                }

                v134 = [(NSSQLFetchIntermediate *)&self->_fetchIntermediate->super.super.super.isa finalJoinForKeypathWithComponents:v133];
                self->_variableAlias = self->_selectEntityAlias;
                if (v134)
                {
                  self->_targetAlias = v134[4];
                  destinationEntity14 = [v134[2] destinationEntity];
                  v127 = destinationEntity14;
                  if (v84)
                  {
                    lastObject3 = [v57 lastObject];
                    if (!v127)
                    {
                      goto LABEL_223;
                    }

                    goto LABEL_212;
                  }

                  if (!destinationEntity14)
                  {
                    goto LABEL_223;
                  }

                  goto LABEL_214;
                }
              }

              v96 = &OBJC_IVAR___NSSQLSubqueryExpressionIntermediate__targetColumn;
              self->_targetAlias = 0;
              if (v84)
              {
                [v57 lastObject];
                variableColumn = 0;
                v96 = &OBJC_IVAR___NSSQLSubqueryExpressionIntermediate__targetColumn;
              }

              else
              {
                variableColumn = 0;
              }

              goto LABEL_137;
            }

LABEL_136:
            v86 = 0;
            self->_variableAlias = self->_selectEntityAlias;
            variableColumn = self->_selectEntityAlias;
            v96 = &OBJC_IVAR___NSSQLSubqueryExpressionIntermediate__targetAlias;
            goto LABEL_137;
          }

          contextCopy = v144;
LABEL_113:
          destinationEntity15 = [(NSSQLColumn *)v72 destinationEntity];
          if (destinationEntity15)
          {
            v83 = *(destinationEntity15 + 128);
          }

          else
          {
            v83 = 0;
          }

          v80 = 0;
          self->_targetColumn = v83;
          v81 = v65 == v147;
LABEL_116:

          self->_variableAlias = 0;
          if (v65 && (v80 & 1) == 0)
          {
            v84 = 0;
            goto LABEL_119;
          }

          goto LABEL_136;
        }
      }

      v77 = MEMORY[0x1E695DF30];
      v78 = *MEMORY[0x1E695D940];
      v79 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->super._expression, v70);
LABEL_111:
      contextCopy = v144;
      [v144 setObject:objc_msgSend(v77 forKey:{"exceptionWithName:reason:userInfo:", v78, v79, 0), @"NSUnderlyingException"}];
      goto LABEL_138;
    }

    if (self->_hasTrailingFunction)
    {
      v56 = 0;
    }

    else
    {
LABEL_73:
      v56 = [(NSArray *)v55 count]!= 0;
    }

    if (![v148 count] && !v56)
    {
      self->_targetAlias = self->_variableAlias;
      self->_targetColumn = self->_variableColumn;
      goto LABEL_138;
    }

    goto LABEL_77;
  }

  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:self->super._expression forKey:@"expression"];
  v8 = @"Subquery expressions not allowed in indexes";
  v9 = v5;
  v10 = v6;
LABEL_7:
  [contextCopy setObject:objc_msgSend(v9 forKey:{"exceptionWithName:reason:userInfo:", v10, v8, v7), @"NSUnderlyingException"}];
  return 0;
}

@end
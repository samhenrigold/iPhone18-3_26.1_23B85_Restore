@interface NSSQLStatementIntermediate
- (BOOL)keypathExpressionIsSafeLHSForIn:(id)in;
- (NSSQLStatementIntermediate)initWithEntity:(id)entity alias:(id)alias inScope:(id)scope;
- (id)governingAliasForKeypathExpression:(id)expression;
- (id)governingEntityForKeypathExpression:(id)expression;
- (void)dealloc;
- (void)setCorrelationToken:(uint64_t)token;
- (void)setGoverningAlias:(id)alias;
- (void)setLimitIntermediate:(uint64_t)intermediate;
- (void)setOrderIntermediate:(uint64_t)intermediate;
- (void)setWhereIntermediate:(uint64_t)intermediate;
@end

@implementation NSSQLStatementIntermediate

- (void)dealloc
{
  self->_governingAlias = 0;

  self->_whereClause = 0;
  self->_limitClause = 0;

  self->_orderIntermediate = 0;
  self->_correlationToken = 0;
  v3.receiver = self;
  v3.super_class = NSSQLStatementIntermediate;
  [(NSSQLStatementIntermediate *)&v3 dealloc];
}

- (NSSQLStatementIntermediate)initWithEntity:(id)entity alias:(id)alias inScope:(id)scope
{
  v7 = [(NSSQLIntermediate *)self initWithScope:scope];
  v8 = v7;
  if (v7)
  {
    v7->_governingEntity = entity;
    v7->_governingAlias = alias;
  }

  return v8;
}

- (void)setWhereIntermediate:(uint64_t)intermediate
{
  if (intermediate)
  {
    if (*(intermediate + 40) != a2)
    {
      v4 = a2;

      *(intermediate + 40) = a2;
    }
  }
}

- (void)setLimitIntermediate:(uint64_t)intermediate
{
  if (intermediate)
  {
    if (*(intermediate + 48) != a2)
    {
      v4 = a2;

      *(intermediate + 48) = a2;
    }
  }
}

- (void)setOrderIntermediate:(uint64_t)intermediate
{
  if (intermediate)
  {
    if (*(intermediate + 56) != a2)
    {
      v4 = a2;

      *(intermediate + 56) = a2;
    }
  }
}

- (void)setCorrelationToken:(uint64_t)token
{
  if (token)
  {
    if (*(token + 32) != a2)
    {
      v4 = a2;

      *(token + 32) = a2;
    }
  }
}

- (void)setGoverningAlias:(id)alias
{
  if (self->_governingAlias != alias)
  {
    aliasCopy = alias;

    self->_governingAlias = alias;
  }
}

- (id)governingAliasForKeypathExpression:(id)expression
{
  scope = self->super._scope;
  if (!scope)
  {
    if ([objc_opt_class() isSimpleKeypath:expression])
    {
      return self->_governingAlias;
    }

    scope = self->super._scope;
  }

  return [(NSSQLIntermediate *)scope governingAliasForKeypathExpression:expression];
}

- (id)governingEntityForKeypathExpression:(id)expression
{
  scope = self->super._scope;
  if (!scope)
  {
    if ([objc_opt_class() isSimpleKeypath:expression])
    {
      return self->_governingEntity;
    }

    scope = self->super._scope;
  }

  return [(NSSQLIntermediate *)scope governingEntityForKeypathExpression:expression];
}

- (BOOL)keypathExpressionIsSafeLHSForIn:(id)in
{
  v24 = *MEMORY[0x1E69E9840];
  scope = self->super._scope;
  if (scope)
  {
    goto LABEL_6;
  }

  if (([objc_opt_class() isSimpleKeypath:in] & 1) == 0)
  {
    scope = self->super._scope;
LABEL_6:

    return [(NSSQLIntermediate *)scope keypathExpressionIsSafeLHSForIn:in];
  }

  destinationEntity = [(NSSQLStatementIntermediate *)self governingEntityForKeypathExpression:in];
  if ([in expressionType] == 3)
  {
    keyPath = [in keyPath];
  }

  else
  {
    keyPath = [objc_msgSend(objc_msgSend(in "arguments")];
  }

  v9 = [keyPath componentsSeparatedByString:@"."];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v20;
LABEL_12:
    v14 = 0;
    while (1)
    {
      if (*v20 != v13)
      {
        objc_enumerationMutation(v9);
      }

      if (!destinationEntity)
      {
        return 1;
      }

      v15 = [destinationEntity[5] objectForKey:*(*(&v19 + 1) + 8 * v14)];
      if (!v15)
      {
        return 1;
      }

      v16 = v15;
      if ([v15 isToMany])
      {
        break;
      }

      v17 = v16[24];
      if (v17 == 7)
      {
        destinationEntity = [v16 destinationEntity];
      }

      else
      {
        if (v17 == 9)
        {
          break;
        }

        destinationEntity = 0;
      }

LABEL_24:
      if (v11 == ++v14)
      {
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        result = 1;
        if (v11)
        {
          goto LABEL_12;
        }

        return result;
      }
    }

    destinationEntity2 = [v16 destinationEntity];
    if (v12)
    {
      return 0;
    }

    destinationEntity = destinationEntity2;
    v12 = 1;
    goto LABEL_24;
  }

  return 1;
}

@end
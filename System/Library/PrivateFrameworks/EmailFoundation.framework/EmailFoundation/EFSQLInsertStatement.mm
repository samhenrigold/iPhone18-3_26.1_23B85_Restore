@interface EFSQLInsertStatement
- (BOOL)isEmpty;
- (EFSQLInsertStatement)initWithTable:(id)table conflictResolution:(unint64_t)resolution;
- (NSString)queryString;
- (id)addValue;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)_renderQueryStringForNamedBindings:(void *)bindings into:;
- (void)_renderValuesForNamedBindings:(void *)bindings intoString:;
- (void)enumerateBindingIndicesAndValuesUsingBlock:(id)block;
- (void)enumerateBindingNamesAndValuesUsingBlock:(id)block;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation EFSQLInsertStatement

- (EFSQLInsertStatement)initWithTable:(id)table conflictResolution:(unint64_t)resolution
{
  tableCopy = table;
  v17.receiver = self;
  v17.super_class = EFSQLInsertStatement;
  v7 = [(EFSQLInsertStatement *)&v17 init];
  if (v7)
  {
    v8 = [tableCopy copy];
    table = v7->_table;
    v7->_table = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    values = v7->_values;
    v7->_values = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    requiredColumns = v7->_requiredColumns;
    v7->_requiredColumns = v12;

    v14 = v7->_values;
    v15 = [(_EFSQLInsertStatementValue *)[_EFSQLInsertStatementFirstValue alloc] initWithRequiredColumns:?];
    [(NSMutableArray *)v14 addObject:v15];

    v7->_conflictResolution = resolution;
  }

  return v7;
}

- (BOOL)isEmpty
{
  if (self)
  {
    values = self->_values;
  }

  else
  {
    values = 0;
  }

  v4 = values;
  if ([(NSMutableArray *)v4 count]== 1)
  {
    if (self)
    {
      requiredColumns = self->_requiredColumns;
    }

    else
    {
      requiredColumns = 0;
    }

    v6 = [(NSMutableOrderedSet *)requiredColumns count]== 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)queryString
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [(EFSQLInsertStatement *)self _renderQueryStringForNamedBindings:v3 into:?];

  return v3;
}

- (void)_renderQueryStringForNamedBindings:(void *)bindings into:
{
  v3 = a2;
  bindingsCopy = bindings;
  if (self)
  {
    v6 = *(self + 24);
    lastObject = [v6 lastObject];
    v8 = lastObject;
    if (lastObject)
    {
      v9 = *(lastObject + 16);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v11 = [v10 count];
    v12 = *(self + 24);
    lastObject2 = [v12 lastObject];
    v14 = lastObject2;
    if (lastObject2)
    {
      v15 = *(lastObject2 + 24);
    }

    else
    {
      v15 = 0;
    }

    v16 = [v15 count];

    if (!(v11 + v16))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__renderQueryStringForNamedBindings_into_ object:self file:@"EFSQLInsertStatement.m" lineNumber:157 description:@"Last value contains no data"];
    }

    [bindingsCopy appendString:@"INSERT"];
    v17 = *(self + 16);
    if (v17)
    {
      [bindingsCopy appendString:@" OR "];
      v18 = EFSQLStringForConflictResolution(v17);
      [bindingsCopy appendString:v18];
    }

    [bindingsCopy appendString:@" INTO "];
    [bindingsCopy appendString:*(self + 8)];
    objc_msgSend(bindingsCopy, "appendString:", @" (");
    v19 = *(self + 32);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __64__EFSQLInsertStatement__renderQueryStringForNamedBindings_into___block_invoke;
    v22[3] = &unk_1E8249D08;
    v20 = bindingsCopy;
    v23 = v20;
    [v19 enumerateObjectsUsingBlock:v22];

    [v20 appendString:@" VALUES "]);
    [(EFSQLInsertStatement *)self _renderValuesForNamedBindings:v3 intoString:v20];
  }
}

void __64__EFSQLInsertStatement__renderQueryStringForNamedBindings_into___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [*(a1 + 32) appendString:v5];
}

- (void)_renderValuesForNamedBindings:(void *)bindings intoString:
{
  bindingsCopy = bindings;
  if (self)
  {
    v6 = *(self + 32);
    v7 = *(self + 24);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__EFSQLInsertStatement__renderValuesForNamedBindings_intoString___block_invoke;
    v9[3] = &unk_1E8249D58;
    v10 = bindingsCopy;
    v11 = v6;
    v12 = a2;
    v8 = v6;
    [v7 enumerateObjectsUsingBlock:v9];
  }
}

void __65__EFSQLInsertStatement__renderValuesForNamedBindings_intoString___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = CFSTR(", (");
  }

  else
  {
    v6 = CFSTR("(");
  }

  [*(a1 + 32) appendString:v6];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __65__EFSQLInsertStatement__renderValuesForNamedBindings_intoString___block_invoke_2;
  v12 = &unk_1E8249D30;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v8 = v5;
  v16 = *(a1 + 48);
  v14 = v8;
  v15 = a3;
  [v7 enumerateObjectsUsingBlock:&v9];
  [*(a1 + 32) appendString:@""], v9, v10, v11, v12);
}

void __65__EFSQLInsertStatement__renderValuesForNamedBindings_intoString___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  v5 = [*(a1 + 40) objectForKeyedSubscript:v8];
  if (objc_opt_respondsToSelector())
  {
    v6 = *(a1 + 32);
    if (*(a1 + 56) == 1)
    {
      [v6 appendString:@":insert_"];
      [*(a1 + 32) appendString:v8];
      if (*(a1 + 48))
      {
        [*(a1 + 32) appendFormat:@"_%lu", *(a1 + 48)];
      }
    }

    else
    {
      [v6 appendString:@"?"];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v7 = [v5 ef_SQLIsolatedExpression];
    [v7 ef_renderSQLExpressionInto:*(a1 + 32)];
  }
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  if (self)
  {
    values = self->_values;
  }

  else
  {
    values = 0;
  }

  if ([(NSMutableArray *)values count]== 1)
  {
    if (self)
    {
LABEL_5:
      v7 = self->_values;
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLInsertStatement.m" lineNumber:133 description:@"Direct statement access only works with a single value"];

    if (self)
    {
      goto LABEL_5;
    }
  }

  v7 = 0;
LABEL_6:
  firstObject = [(NSMutableArray *)v7 firstObject];
  v9 = [firstObject objectForKeyedSubscript:subscriptCopy];

  return v9;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  if (self)
  {
    values = self->_values;
  }

  else
  {
    values = 0;
  }

  if ([(NSMutableArray *)values count]== 1)
  {
    if (self)
    {
LABEL_5:
      v9 = self->_values;
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLInsertStatement.m" lineNumber:138 description:@"Direct statement access only works with a single value"];

    if (self)
    {
      goto LABEL_5;
    }
  }

  v9 = 0;
LABEL_6:
  firstObject = [(NSMutableArray *)v9 firstObject];
  [firstObject setObject:objectCopy forKeyedSubscript:subscriptCopy];
}

- (void)enumerateBindingIndicesAndValuesUsingBlock:(id)block
{
  v34 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v31 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  if (self)
  {
    values = self->_values;
  }

  else
  {
    values = 0;
  }

  v6 = values;
  v21 = v6;
  v20 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v20)
  {
    v7 = 0;
    v8 = *v28;
    v18 = *v28;
    selfCopy = self;
    do
    {
      v22 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v27 + 1) + 8 * v22);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        if (self)
        {
          requiredColumns = self->_requiredColumns;
        }

        else
        {
          requiredColumns = 0;
        }

        v11 = requiredColumns;
        v12 = [(NSMutableOrderedSet *)v11 countByEnumeratingWithState:&v23 objects:v32 count:16];
        if (v12)
        {
          v13 = *v24;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = [v9 objectForKeyedSubscript:{*(*(&v23 + 1) + 8 * i), v18, selfCopy}];
              if (objc_opt_respondsToSelector())
              {
                blockCopy[2](blockCopy, v7, v15, &v31);
                v16 = v31;

                if (v16)
                {

                  v6 = v21;
                  goto LABEL_27;
                }

                v7 += (v16 & 1) == 0;
              }

              else
              {
              }
            }

            v12 = [(NSMutableOrderedSet *)v11 countByEnumeratingWithState:&v23 objects:v32 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v6 = v21;
        self = selfCopy;
        ++v22;
        v8 = v18;
      }

      while (v22 != v20);
      v17 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v27 objects:v33 count:16];
      v20 = v17;
    }

    while (v17);
  }

LABEL_27:
}

- (void)enumerateBindingNamesAndValuesUsingBlock:(id)block
{
  blockCopy = block;
  if (self)
  {
    values = self->_values;
  }

  else
  {
    values = 0;
  }

  v6 = values;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__EFSQLInsertStatement_enumerateBindingNamesAndValuesUsingBlock___block_invoke;
  v8[3] = &unk_1E8249D80;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [(NSMutableArray *)v6 enumerateObjectsUsingBlock:v8];
}

void __65__EFSQLInsertStatement_enumerateBindingNamesAndValuesUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v17 = a1;
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = v8[4];
  }

  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        if (objc_opt_respondsToSelector())
        {
          v14 = a3 ? [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@":insert_%@_%lu", v12, a3] : objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithFormat:", @":insert_%@", v12);
          v15 = v14;
          (*(*(v17 + 40) + 16))();
          v16 = *a4;

          if (v16)
          {

            goto LABEL_17;
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
}

- (id)addValue
{
  selfCopy = self;
  if (self)
  {
    self = self->_values;
  }

  if ([(EFSQLInsertStatement *)self count]!= 1)
  {
    if (selfCopy)
    {
      values = selfCopy->_values;
    }

    else
    {
      values = 0;
    }

    lastObject = [(NSMutableArray *)values lastObject];
    v5 = lastObject;
    if (lastObject)
    {
      lastObject = lastObject[2];
    }

    if (![lastObject count])
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"No columns were defined for the previous value"];
      v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v12);
    }

    goto LABEL_15;
  }

  if (selfCopy)
  {
    v3 = selfCopy->_values;
  }

  else
  {
    v3 = 0;
  }

  firstObject = [(NSMutableArray *)v3 firstObject];
  v5 = firstObject;
  if (firstObject)
  {
    firstObject = firstObject[2];
  }

  if ([firstObject count])
  {
LABEL_15:

    v8 = [_EFSQLInsertStatementFollowUpValue alloc];
    if (selfCopy)
    {
      requiredColumns = selfCopy->_requiredColumns;
    }

    else
    {
      requiredColumns = 0;
    }

    v5 = [(_EFSQLInsertStatementValue *)v8 initWithRequiredColumns:?];
    if (selfCopy)
    {
      v10 = selfCopy->_values;
    }

    else
    {
      v10 = 0;
    }

    [(NSMutableArray *)v10 addObject:v5];
  }

  return v5;
}

@end
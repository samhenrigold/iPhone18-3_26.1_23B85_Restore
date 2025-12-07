@interface NSSQLGroupByIntermediate
- (NSSQLGroupByIntermediate)initWithProperties:(id)properties inScope:(id)scope;
- (id)generateSQLStringInContext:(id)context;
- (void)dealloc;
@end

@implementation NSSQLGroupByIntermediate

- (void)dealloc
{
  self->_properties = 0;
  v3.receiver = self;
  v3.super_class = NSSQLGroupByIntermediate;
  [(NSSQLGroupByIntermediate *)&v3 dealloc];
}

- (NSSQLGroupByIntermediate)initWithProperties:(id)properties inScope:(id)scope
{
  v7.receiver = self;
  v7.super_class = NSSQLGroupByIntermediate;
  v5 = [(NSSQLIntermediate *)&v7 initWithScope:scope];
  if (v5)
  {
    v5->_properties = [properties copy];
  }

  return v5;
}

- (id)generateSQLStringInContext:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(NSSQLIntermediate *)self isUpdateScoped])
  {
    [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0]), 0), @"NSUnderlyingException"}];
    return 0;
  }

  else
  {
    fetchIntermediate = [(NSSQLIntermediate *)self fetchIntermediate];
    v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = self->_properties;
    v7 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v22;
      while (2)
      {
        v11 = 0;
        v12 = -v9;
        v19 = v8 + v9;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v21 + 1) + 8 * v11);
          if ([v13 _propertyType] == 5)
          {
            -[NSSQLFetchIntermediate addGroupByKeypath:](fetchIntermediate, [objc_msgSend(v13 "expression")]);
            expression = [v13 expression];
          }

          else
          {
            name = [v13 name];
            [(NSSQLFetchIntermediate *)fetchIntermediate addGroupByKeypath:name];
            expression = [MEMORY[0x1E696ABC8] expressionForKeyPath:name];
          }

          v16 = [(NSSQLIntermediate *)self _generateSQLForExpression:expression allowToMany:0 inContext:context];
          if (!v16)
          {
            if (!objc_msgSend_valueForKey_(context))
            {
              [context setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13), 0), @"NSUnderlyingException"}];
            }

            return 0;
          }

          v17 = v16;
          if (v12 != v11)
          {
            [v6 appendString:{@", "}];
          }

          [v6 appendString:v17];

          ++v11;
        }

        while (v8 != v11);
        v8 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
        v9 = v19;
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  return v6;
}

@end
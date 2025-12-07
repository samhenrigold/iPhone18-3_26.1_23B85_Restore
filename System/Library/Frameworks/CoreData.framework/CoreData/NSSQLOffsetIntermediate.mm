@interface NSSQLOffsetIntermediate
- (NSSQLOffsetIntermediate)initWithOffset:(unint64_t)offset inScope:(id)scope;
- (id)generateSQLStringInContext:(id)context;
@end

@implementation NSSQLOffsetIntermediate

- (NSSQLOffsetIntermediate)initWithOffset:(unint64_t)offset inScope:(id)scope
{
  v6.receiver = self;
  v6.super_class = NSSQLOffsetIntermediate;
  result = [(NSSQLIntermediate *)&v6 initWithScope:scope];
  if (result)
  {
    result->_offset = offset;
  }

  return result;
}

- (id)generateSQLStringInContext:(id)context
{
  if ([context objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  if ([(NSSQLIntermediate *)self isUpdateScoped]|| (v5 = [(NSSQLIntermediate *)self fetchIntermediate]) == 0 || !v5[6])
  {
    [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0]), 0), @"NSUnderlyingException"}];
    return 0;
  }

  v6 = objc_msgSend_valueForKey_(context);
  if (!v6)
  {
    return [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" OFFSET %lu", self->_offset];
  }

  v7 = v6;
  v8 = objc_msgSend_valueForKey_(v6);
  if (!v8)
  {
    return [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" OFFSET %lu", self->_offset];
  }

  v9 = v8;
  if ([v8 expressionType])
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = @"Unable to generate SQL - non-constant expression for offset substitution.";
LABEL_18:
    [context setValue:objc_msgSend(v10 forKey:{"exceptionWithName:reason:userInfo:", v11, v12, v7), @"NSUnderlyingException"}];
    return 0;
  }

  constantValue = [v9 constantValue];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = @"Unable to generate SQL - non-NSNumber value for offset substitution.";
    goto LABEL_18;
  }

  v15 = [objc_msgSend_valueForKey_(context) count];
  v16 = [(NSSQLIntermediate *)self _generateSQLForConstantValue:constantValue inContext:context];
  if ([objc_msgSend_valueForKey_(context) count] - v15 >= 2)
  {
    if (!objc_msgSend_valueForKey_(context))
    {
      [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], constantValue), 0), @"NSUnderlyingException"}];
    }

    return 0;
  }

  v17 = objc_msgSend_valueForKey_(context);
  [v17 addObject:@"FETCH_REQUEST_OFFSET_SUBSTITUTION"];
  [v17 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v15)}];
  v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" OFFSET %@", v16];

  return v18;
}

@end
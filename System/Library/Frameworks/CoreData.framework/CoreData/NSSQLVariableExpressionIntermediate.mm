@interface NSSQLVariableExpressionIntermediate
- (id)generateSQLStringInContext:(id)context;
@end

@implementation NSSQLVariableExpressionIntermediate

- (id)generateSQLStringInContext:(id)context
{
  variable = [(NSExpression *)self->super._expression variable];
  v6 = objc_msgSend_valueForKey_(context);
  v7 = objc_msgSend_valueForKey_(v6);
  if (!v7)
  {
    v10 = [objc_msgSend(-[NSSQLIntermediate fetchIntermediate](self "fetchIntermediate")];
    if (v10)
    {
      return v10;
    }

    if (![context objectForKey:@"NSUnderlyingException"])
    {
      [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->super._expression), 0), @"NSUnderlyingException"}];
    }

    return 0;
  }

  v8 = v7;
  [(NSSQLIntermediate *)self isTargetColumnsScoped];
  v9 = [objc_msgSend_valueForKey_(context) count];
  v10 = [(NSSQLIntermediate *)self _generateSQLForExpression:v8 allowToMany:self->super._allowToMany inContext:context];
  if ([objc_msgSend_valueForKey_(context) count] - v9 >= 2)
  {
    if (!objc_msgSend_valueForKey_(context))
    {
      [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->super._expression), 0), @"NSUnderlyingException"}];
    }

    return 0;
  }

  v11 = objc_msgSend_valueForKey_(context);
  [v11 addObject:variable];
  [v11 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v9)}];
  return v10;
}

@end
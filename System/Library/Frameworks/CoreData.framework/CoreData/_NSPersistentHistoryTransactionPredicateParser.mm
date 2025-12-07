@interface _NSPersistentHistoryTransactionPredicateParser
- (BOOL)parse:(id *)parse;
- (_NSPersistentHistoryTransactionPredicateParser)initWithPredicate:(id)predicate;
- (void)dealloc;
- (void)visitPredicateExpression:(id)expression;
@end

@implementation _NSPersistentHistoryTransactionPredicateParser

- (void)dealloc
{
  self->_predicate = 0;

  self->_storeTokens = 0;
  self->_localError = 0;
  v3.receiver = self;
  v3.super_class = _NSPersistentHistoryTransactionPredicateParser;
  [(_NSPersistentHistoryTransactionPredicateParser *)&v3 dealloc];
}

- (_NSPersistentHistoryTransactionPredicateParser)initWithPredicate:(id)predicate
{
  v4 = [(_NSPersistentHistoryTransactionPredicateParser *)self init];
  if (v4)
  {
    v4->_predicate = [predicate copy];
    v4->_storeTokens = objc_alloc_init(MEMORY[0x1E695DF90]);
    *&v4->_hasDate = 0;
    v4->_localError = 0;
  }

  return v4;
}

- (BOOL)parse:(id *)parse
{
  predicate = self->_predicate;
  if (!predicate)
  {
    return 1;
  }

  v6 = 1;
  [(NSPredicate *)predicate acceptVisitor:self flags:1];
  localError = self->_localError;
  if (localError)
  {
    v6 = 0;
    if (parse)
    {
      *parse = localError;
    }
  }

  return v6;
}

- (void)visitPredicateExpression:(id)expression
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (self->_localError)
  {
    return;
  }

  if ([expression expressionType])
  {
    if ([expression expressionType] != 10 || !objc_msgSend(objc_msgSend(expression, "keyPath"), "isEqualToString:", @"TIMESTAMP"))
    {
      return;
    }

    if (self->_hasDate)
    {
      v14 = *MEMORY[0x1E696A578];
      v15 = @"Only one date predicate is allowed for history deletion.";
      v5 = MEMORY[0x1E695DF20];
      v6 = &v15;
      v7 = &v14;
LABEL_8:
      v8 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:1];
      v9 = objc_alloc(MEMORY[0x1E696ABC0]);
      self->_localError = [v9 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v8];
      return;
    }

    goto LABEL_20;
  }

  [expression constantValue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  constantValue = [expression constantValue];
  if (isKindOfClass)
  {
    storeTokens = self->_storeTokens;
    storeTokens = [constantValue storeTokens];

    [(NSMutableDictionary *)storeTokens addEntriesFromDictionary:storeTokens];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(expression "constantValue")])
    {
      self->_hasTimestamp = 1;
      return;
    }

    [expression constantValue];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_hasTimestamp)
    {
      if (self->_hasDate)
      {
        v16 = *MEMORY[0x1E696A578];
        v17[0] = @"Only one date predicate is allowed for history deletion.";
        v5 = MEMORY[0x1E695DF20];
        v6 = v17;
        v7 = &v16;
        goto LABEL_8;
      }

LABEL_20:
      self->_hasDate = 1;
    }
  }
}

@end
@interface CADCompoundFilter
- (BOOL)applicableToEntityType:(int)type;
- (BOOL)validate;
- (CADCompoundFilter)initWithCoder:(id)coder;
- (CADCompoundFilter)initWithFilters:(id)filters operation:(int64_t)operation;
- (id)extendWhereClause:(id)clause usingOperation:(int64_t)operation withValues:(id)values andTypes:(id)types;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADCompoundFilter

- (CADCompoundFilter)initWithFilters:(id)filters operation:(int64_t)operation
{
  filtersCopy = filters;
  v11.receiver = self;
  v11.super_class = CADCompoundFilter;
  v7 = [(CADCompoundFilter *)&v11 init];
  if (v7)
  {
    if (![filtersCopy count])
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"filters must contain at least one value"];
    }

    v8 = [filtersCopy copy];
    filters = v7->_filters;
    v7->_filters = v8;

    v7->_operation = operation;
  }

  return v7;
}

- (BOOL)validate
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(NSArray *)self->_filters count])
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_filters;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v10 + 1) + 8 * i) validate])
        {
          v8 = 0;
          goto LABEL_12;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_12:

  return v8;
}

- (BOOL)applicableToEntityType:(int)type
{
  v3 = *&type;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_filters;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![*(*(&v11 + 1) + 8 * i) applicableToEntityType:{v3, v11}])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (id)extendWhereClause:(id)clause usingOperation:(int64_t)operation withValues:(id)values andTypes:(id)types
{
  v30 = *MEMORY[0x277D85DE8];
  clauseCopy = clause;
  valuesCopy = values;
  typesCopy = types;
  if (![(NSArray *)self->_filters count])
  {
    [CADCompoundFilter extendWhereClause:a2 usingOperation:self withValues:? andTypes:?];
  }

  v14 = _CADPropertySearchPredicateExtendWhereClause(clauseCopy, operation, @"(");

  v15 = self->_operation != 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = self->_filters;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    v20 = 2;
    do
    {
      v21 = 0;
      v22 = v14;
      do
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v14 = [*(*(&v25 + 1) + 8 * v21) extendWhereClause:v22 usingOperation:v20 withValues:valuesCopy andTypes:{typesCopy, v25}];

        ++v21;
        v20 = v15;
        v22 = v14;
      }

      while (v18 != v21);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v20 = v15;
    }

    while (v18);
  }

  v23 = _CADPropertySearchPredicateExtendWhereClause(v14, 2, @""));

  return v23;
}

- (CADCompoundFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CADCompoundFilter;
  v5 = [(CADFilter *)&v13 initWithCoder:coderCopy];
  v7 = v5;
  if (v5 && (_CADPropertySearchPredicateGetAllowedFilterTypes(v5, v6), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClasses:v8 forKey:@"filters"], v9 = objc_claimAutoreleasedReturnValue(), filters = v7->_filters, v7->_filters = v9, filters, v8, v7->_operation = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"operation"), !-[CADCompoundFilter validate](v7, "validate")))
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CADCompoundFilter;
  coderCopy = coder;
  [(CADFilter *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_filters forKey:{@"filters", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_operation forKey:@"operation"];
}

- (void)extendWhereClause:(uint64_t)a1 usingOperation:(uint64_t)a2 withValues:andTypes:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CADCompoundFilter.m" lineNumber:46 description:@"No filters"];
}

@end
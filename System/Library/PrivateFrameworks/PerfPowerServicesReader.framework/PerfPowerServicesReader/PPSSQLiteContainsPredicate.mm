@interface PPSSQLiteContainsPredicate
+ (id)_arrayFromValues:(id)values;
+ (id)_containsPredicateWithProperty:(id)property values:(id)values isNegative:(BOOL)negative;
+ (id)containsPredicateWithProperty:(id)property values:(id)values;
+ (id)doesNotContainPredicateWithProperty:(id)property values:(id)values;
- (BOOL)isEqual:(id)equal;
- (PPSSQLiteContainsPredicate)initWithProperty:(id)property values:(id)values isNegative:(BOOL)negative;
- (id)description;
- (id)sqlForEntity:(id)entity;
- (void)bindToStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index;
@end

@implementation PPSSQLiteContainsPredicate

+ (id)containsPredicateWithProperty:(id)property values:(id)values
{
  v4 = [self _containsPredicateWithProperty:property values:values isNegative:0];

  return v4;
}

+ (id)doesNotContainPredicateWithProperty:(id)property values:(id)values
{
  v4 = [self _containsPredicateWithProperty:property values:values isNegative:1];

  return v4;
}

- (PPSSQLiteContainsPredicate)initWithProperty:(id)property values:(id)values isNegative:(BOOL)negative
{
  propertyCopy = property;
  valuesCopy = values;
  v16.receiver = self;
  v16.super_class = PPSSQLiteContainsPredicate;
  v10 = [(PPSSQLiteContainsPredicate *)&v16 init];
  if (v10)
  {
    v11 = [propertyCopy copy];
    property = v10->super._property;
    v10->super._property = v11;

    v13 = [valuesCopy copy];
    values = v10->_values;
    v10->_values = v13;

    v10->_isNegative = negative;
  }

  return v10;
}

+ (id)_containsPredicateWithProperty:(id)property values:(id)values isNegative:(BOOL)negative
{
  negativeCopy = negative;
  propertyCopy = property;
  v9 = [self _arrayFromValues:values];
  if ([v9 count] == 1)
  {
    firstObject = [v9 firstObject];
    if (negativeCopy)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v12 = [PPSSQLiteComparisonPredicate predicateWithProperty:propertyCopy value:firstObject comparisonType:v11];
  }

  else
  {
    v12 = [[PPSSQLiteContainsPredicate alloc] initWithProperty:propertyCopy values:v9 isNegative:negativeCopy];
  }

  return v12;
}

+ (id)_arrayFromValues:(id)values
{
  v16 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allObjects = valuesCopy;
LABEL_5:
    v5 = allObjects;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allObjects = [valuesCopy allObjects];
    goto LABEL_5;
  }

  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(valuesCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = valuesCopy;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

LABEL_14:

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = PPSSQLiteContainsPredicate;
  if (-[PPSSQLitePropertyPredicate isEqual:](&v12, sel_isEqual_, equalCopy) && (v5 = -[PPSSQLiteContainsPredicate isNegative](self, "isNegative"), v5 == [equalCopy isNegative]))
  {
    values = [(PPSSQLiteContainsPredicate *)self values];
    values2 = [equalCopy values];
    if (values == values2)
    {
      v6 = 1;
    }

    else
    {
      values3 = [(PPSSQLiteContainsPredicate *)self values];
      values4 = [equalCopy values];
      v6 = [values3 isEqual:values4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)bindToStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  values = [(PPSSQLiteContainsPredicate *)self values];
  v7 = [values countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(values);
        }

        PPSSQLiteBindFoundationValueToStatement(statement, *index, *(*(&v10 + 1) + 8 * v9));
        ++*index;
        ++v9;
      }

      while (v7 != v9);
      v7 = [values countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)sqlForEntity:(id)entity
{
  entityCopy = entity;
  v5 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
  property = [(PPSSQLitePropertyPredicate *)self property];
  v7 = [entityCopy disambiguatedSQLForProperty:property shouldEscape:1];
  [v5 appendString:v7];

  if ([(PPSSQLiteContainsPredicate *)self isNegative])
  {
    v8 = CFSTR(" NOT IN (");
  }

  else
  {
    v8 = CFSTR(" IN (");
  }

  [v5 appendString:v8];
  values = [(PPSSQLiteContainsPredicate *)self values];
  v10 = [values count];

  if (v10)
  {
    [v5 appendString:@"?"];
    v11 = v10 - 1;
    if (v10 != 1)
    {
      do
      {
        [v5 appendString:{@", ?"}];
        --v11;
      }

      while (v11);
    }
  }

  [v5 appendString:@""]);
  [v5 appendString:@""]);

  return v5;
}

- (id)description
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  values = [(PPSSQLiteContainsPredicate *)self values];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(values, "count")}];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  values2 = [(PPSSQLiteContainsPredicate *)self values];
  v7 = [values2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(values2);
        }

        v10 = [*(*(&v18 + 1) + 8 * i) description];
        [v5 addObject:v10];
      }

      v7 = [values2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = [v5 componentsJoinedByString:{@", "}];
  v12 = MEMORY[0x277CCACA8];
  property = [(PPSSQLitePropertyPredicate *)self property];
  v14 = property;
  if (self->_isNegative)
  {
    v15 = "";
  }

  else
  {
    v15 = "NOT ";
  }

  v16 = [v12 stringWithFormat:@"'%@' %sIN (%@)", property, v15, v11];

  return v16;
}

@end
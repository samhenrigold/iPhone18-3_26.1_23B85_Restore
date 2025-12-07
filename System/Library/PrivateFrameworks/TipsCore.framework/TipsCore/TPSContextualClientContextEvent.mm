@interface TPSContextualClientContextEvent
- (TPSContextualClientContextEvent)initWithCoder:(id)coder;
- (TPSContextualClientContextEvent)initWithDictionary:(id)dictionary;
- (id)clientContextKeys;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSContextualClientContextEvent

- (TPSContextualClientContextEvent)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = TPSContextualClientContextEvent;
  v5 = [(TPSContextualEvent *)&v23 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy TPSSafeArrayForKey:@"conditions"];
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          v14 = [TPSContextualClientContextCondition alloc];
          v15 = [(TPSContextualClientContextCondition *)v14 initWithDictionary:v13, v19];
          [v7 addObject:v15];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      v16 = [v7 copy];
      conditions = v5->_conditions;
      v5->_conditions = v16;
    }
  }

  return v5;
}

- (TPSContextualClientContextEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = TPSContextualClientContextEvent;
  v5 = [(TPSContextualEvent *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"conditions"];
    conditions = v5->_conditions;
    v5->_conditions = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSContextualClientContextEvent;
  coderCopy = coder;
  [(TPSContextualEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_conditions forKey:{@"conditions", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = TPSContextualClientContextEvent;
  v4 = [(TPSContextualEvent *)&v6 copyWithZone:zone];
  [v4 setConditions:self->_conditions];
  return v4;
}

- (id)clientContextKeys
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_conditions;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) key];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v9.receiver = self;
  v9.super_class = TPSContextualClientContextEvent;
  v4 = [(TPSContextualEvent *)&v9 debugDescription];
  v5 = [v3 initWithString:v4];

  conditions = [(TPSContextualClientContextEvent *)self conditions];
  v7 = [conditions debugDescription];
  [v5 appendFormat:@"%@ = %@", @"conditions", v7];

  return v5;
}

@end
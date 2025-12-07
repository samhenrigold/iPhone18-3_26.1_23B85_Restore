@interface REKeyMultiValueMap
- (REKeyMultiValueMap)initWithValuePointFunctionOptions:(unint64_t)options;
- (void)addKey:(id)key withValues:(id)values;
- (void)enumerateValuesForKey:(id)key usingBlock:(id)block;
- (void)insertValue:(id)value forKey:(id)key;
- (void)removeKey:(id)key;
- (void)removeValue:(id)value forKey:(id)key;
@end

@implementation REKeyMultiValueMap

- (REKeyMultiValueMap)initWithValuePointFunctionOptions:(unint64_t)options
{
  v10.receiver = self;
  v10.super_class = REKeyMultiValueMap;
  v4 = [(REKeyMultiValueMap *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:options];
    keyMap = v4->_keyMap;
    v4->_keyMap = v5;

    v7 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:options valueOptions:0];
    valueMap = v4->_valueMap;
    v4->_valueMap = v7;
  }

  return v4;
}

- (void)addKey:(id)key withValues:(id)values
{
  v18 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valuesCopy = values;
  [(NSMapTable *)self->_keyMap setObject:valuesCopy forKey:keyCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = valuesCopy;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(NSMapTable *)self->_valueMap setObject:keyCopy forKey:*(*(&v13 + 1) + 8 * v12++), v13];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)removeKey:(id)key
{
  v15 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMapTable *)self->_keyMap objectForKey:keyCopy, 0];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NSMapTable *)self->_valueMap removeObjectForKey:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(NSMapTable *)self->_keyMap removeObjectForKey:keyCopy];
}

- (void)insertValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v7 = [(REKeyMultiValueMap *)self valuesForKey:keyCopy];
  array = [v7 mutableCopy];

  [(REKeyMultiValueMap *)self removeKey:keyCopy];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  [array addObject:valueCopy];
  v9 = [array copy];
  [(REKeyMultiValueMap *)self addKey:keyCopy withValues:v9];
}

- (void)removeValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v7 = [(REKeyMultiValueMap *)self valuesForKey:keyCopy];
  v8 = [v7 mutableCopy];

  [(REKeyMultiValueMap *)self removeKey:keyCopy];
  [v8 removeObject:valueCopy];

  if ([v8 count])
  {
    v9 = [v8 copy];
    [(REKeyMultiValueMap *)self addKey:keyCopy withValues:v9];
  }
}

- (void)enumerateValuesForKey:(id)key usingBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(REKeyMultiValueMap *)self valuesForKey:key, 0];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v12 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end
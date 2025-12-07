@interface _LSAggregatePropertyList
- (BOOL)_getPropertyList:(id *)list;
- (BOOL)_getValue:(id *)value forPropertyListKey:(id)key;
- (_LSAggregatePropertyList)initWithCoder:(id)coder;
- (_LSAggregatePropertyList)initWithLazyPropertyLists:(id)lists;
- (void)encodeWithCoder:(id)coder;
- (void)prewarm;
@end

@implementation _LSAggregatePropertyList

- (_LSAggregatePropertyList)initWithLazyPropertyLists:(id)lists
{
  listsCopy = lists;
  v9.receiver = self;
  v9.super_class = _LSAggregatePropertyList;
  v5 = [(_LSLazyPropertyList *)&v9 init];
  if (v5)
  {
    v6 = [listsCopy copy];
    plists = v5->_plists;
    v5->_plists = v6;
  }

  return v5;
}

- (BOOL)_getPropertyList:(id *)list
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_plists;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        propertyList = [(_LSLazyPropertyList *)*(*(&v14 + 1) + 8 * v9) propertyList];
        if (propertyList)
        {
          [v5 addEntriesFromDictionary:{propertyList, v14}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v5 copy];
  v12 = v11;
  *list = v11;

  return v11 != 0;
}

- (BOOL)_getValue:(id *)value forPropertyListKey:(id)key
{
  v19 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_plists;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) objectForKey:keyCopy ofClass:{0, v14}];
        if (v11)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = v11;
  *value = v11;

  return v8;
}

- (void)prewarm
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = self->_plists;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5++) prewarm];
      }

      while (v3 != v5);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = _LSAggregatePropertyList;
  [(_LSLazyPropertyList *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_plists forKey:@"plists"];
}

- (_LSAggregatePropertyList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _LSAggregatePropertyList;
  v5 = [(_LSLazyPropertyList *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy ls_decodeArrayWithValuesOfClass:objc_opt_class() forKey:@"plists"];
    plists = v5->_plists;
    v5->_plists = v6;
  }

  return v5;
}

@end
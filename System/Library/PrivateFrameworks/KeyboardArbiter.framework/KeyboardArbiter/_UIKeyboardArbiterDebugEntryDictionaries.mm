@interface _UIKeyboardArbiterDebugEntryDictionaries
+ (id)entryWithDictionaries:(id)dictionaries;
- (void)enumerateContents:(id)contents;
@end

@implementation _UIKeyboardArbiterDebugEntryDictionaries

+ (id)entryWithDictionaries:(id)dictionaries
{
  dictionariesCopy = dictionaries;
  v6 = objc_alloc_init(self);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 2, dictionaries);
  }

  return v7;
}

- (void)enumerateContents:(id)contents
{
  v16 = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  v14.receiver = self;
  v14.super_class = _UIKeyboardArbiterDebugEntryDictionaries;
  [(_UIKeyboardArbiterDebugEntry *)&v14 enumerateContents:contentsCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_dictionaries;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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

        contentsCopy[2](contentsCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

@end
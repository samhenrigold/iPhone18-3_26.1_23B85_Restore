@interface _LTDisambiguationChangeManager
- (BOOL)hasAnyChangeOfType:(unint64_t)type;
- (BOOL)restoreChangesToResult:(id)result;
- (NSDictionary)changeMapping;
- (_LTDisambiguationChangeManager)init;
- (void)addUserSelection:(id)selection;
@end

@implementation _LTDisambiguationChangeManager

- (_LTDisambiguationChangeManager)init
{
  v7.receiver = self;
  v7.super_class = _LTDisambiguationChangeManager;
  v2 = [(_LTDisambiguationChangeManager *)&v7 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    changeMapping = v2->_changeMapping;
    v2->_changeMapping = dictionary;

    v5 = v2;
  }

  return v2;
}

- (NSDictionary)changeMapping
{
  v2 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_changeMapping copyItems:1];

  return v2;
}

- (void)addUserSelection:(id)selection
{
  selectionCopy = selection;
  if (selectionCopy)
  {
    changeMapping = self->_changeMapping;
    v11 = selectionCopy;
    sourceSnippet = [selectionCopy sourceSnippet];
    v7 = [(NSMutableDictionary *)changeMapping objectForKeyedSubscript:sourceSnippet];

    if (v7)
    {
      [v7 addUserSelection:v11];
    }

    else
    {
      v8 = objc_alloc_init(_LTDisambiguationChangeSet);
      [(_LTDisambiguationChangeSet *)v8 addUserSelection:v11];
      v9 = self->_changeMapping;
      sourceSnippet2 = [v11 sourceSnippet];
      [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:sourceSnippet2];
    }

    selectionCopy = v11;
  }
}

- (BOOL)restoreChangesToResult:(id)result
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  sentences = [result sentences];
  v5 = [sentences countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(sentences);
        }

        v7 += [*(*(&v16 + 1) + 8 * i) _restoreChanges:self];
      }

      v6 = [sentences countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);

    if (v7)
    {
      v12 = _LTOSLogDisambiguation(v10, v11);
      v13 = 1;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v21 = v7;
        _os_log_impl(&dword_23AAF5000, v12, OS_LOG_TYPE_INFO, "Restored changes to %zu sentences in result", buf, 0xCu);
      }

      return v13;
    }
  }

  else
  {
  }

  v14 = _LTOSLogDisambiguation(v10, v11);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [_LTDisambiguationChangeManager restoreChangesToResult:v14];
  }

  return 0;
}

- (BOOL)hasAnyChangeOfType:(unint64_t)type
{
  allValues = [(NSMutableDictionary *)self->_changeMapping allValues];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53___LTDisambiguationChangeManager_hasAnyChangeOfType___block_invoke;
  v6[3] = &__block_descriptor_40_e36_B16__0___LTDisambiguationChangeSet_8l;
  v6[4] = type;
  LOBYTE(type) = [allValues lt_hasObjectPassingTest:v6];

  return type;
}

@end
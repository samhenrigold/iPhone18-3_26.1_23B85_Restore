@interface _ICTransientLexicon
+ (id)transientLexiconForIdentifier:(unsigned int)identifier;
- (BOOL)containsEntity:(id)entity;
- (BOOL)entityIsHyphenatedWord:(id)word;
- (_ICTransientLexicon)initWithName:(id)name typeFlags:(unsigned __int8)flags;
- (id)getEntries;
- (id)getEntryRefCount:(id)count;
- (id)getUsageCount:(id)count;
- (id)namedEntitiesForEntry:(id)entry;
- (id)sortKeyEquivalents:(id)equivalents;
- (uint64_t)_tokenIdentiferForEntry:(uint64_t)TokenID;
- (void)_mutableNamedEntitiesForEntry:(void *)entry;
- (void)_mutableNamedEntitiesForLXEntry:(void *)entry;
- (void)addEntity:(id)entity asAliasOfEntity:(id)ofEntity;
- (void)addEntity:(id)entity forEntry:(id)entry;
- (void)createAdditionalDataForEntityIfNeeded:(id)needed;
- (void)dealloc;
- (void)removeAllEntities;
- (void)removeEntity:(id)entity;
- (void)setIsHyphenatedWord:(BOOL)word forEntity:(id)entity;
@end

@implementation _ICTransientLexicon

- (void)dealloc
{
  CFRelease(self->_lexicon);
  v3.receiver = self;
  v3.super_class = _ICTransientLexicon;
  [(_ICTransientLexicon *)&v3 dealloc];
}

- (_ICTransientLexicon)initWithName:(id)name typeFlags:(unsigned __int8)flags
{
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = _ICTransientLexicon;
  v8 = [(_ICTransientLexicon *)&v23 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v8->_name, name);
  v9->_typeFlags = flags;
  v9->_identifier = ++generateIdentifier_count;
  v10 = objc_opt_new();
  tokenIdentifierToEntitiesMap = v9->_tokenIdentifierToEntitiesMap;
  v9->_tokenIdentifierToEntitiesMap = v10;

  v12 = objc_opt_new();
  entityToTokenIdentifiersMap = v9->_entityToTokenIdentifiersMap;
  v9->_entityToTokenIdentifiersMap = v12;

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D23178], nameCopy);
  v22 = 0;
  v9->_lexicon = LXLexiconCreateTransient();
  CFRelease(Mutable);
  if (v9->_lexicon)
  {
    v17 = transientLexiconMap(v15, v16);
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9->_identifier];
    [v17 setObject:v9 forKeyedSubscript:v18];

    LXLexiconRepositoryAddOrUpdate();
LABEL_4:
    v19 = v9;
    goto LABEL_8;
  }

  v20 = _ICPersNamedEntityOSLogFacility(v15);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [(_ICTransientLexicon *)nameCopy initWithName:v20 typeFlags:?];
  }

  v19 = 0;
LABEL_8:

  return v19;
}

+ (id)transientLexiconForIdentifier:(unsigned int)identifier
{
  v3 = *&identifier;
  v4 = transientLexiconMap(self, a2);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (void)createAdditionalDataForEntityIfNeeded:(id)needed
{
  neededCopy = needed;
  entityToAdditionalDataMap = self->_entityToAdditionalDataMap;
  v9 = neededCopy;
  if (!entityToAdditionalDataMap)
  {
    v6 = objc_opt_new();
    v7 = self->_entityToAdditionalDataMap;
    self->_entityToAdditionalDataMap = v6;

    neededCopy = v9;
    entityToAdditionalDataMap = self->_entityToAdditionalDataMap;
  }

  v8 = [(NSMutableDictionary *)entityToAdditionalDataMap objectForKeyedSubscript:neededCopy];

  if (!v8)
  {
    [(NSMutableDictionary *)self->_entityToAdditionalDataMap setObject:&unk_28670F148 forKeyedSubscript:v9];
  }
}

- (BOOL)entityIsHyphenatedWord:(id)word
{
  v3 = [(NSMutableDictionary *)self->_entityToAdditionalDataMap objectForKeyedSubscript:word];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue & 1;
}

- (void)setIsHyphenatedWord:(BOOL)word forEntity:(id)entity
{
  wordCopy = word;
  entityCopy = entity;
  [(_ICTransientLexicon *)self createAdditionalDataForEntityIfNeeded:entityCopy];
  v7 = [(NSMutableDictionary *)self->_entityToAdditionalDataMap objectForKeyedSubscript:entityCopy];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  wordCopy = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue & 0xFFFFFFFFFFFFFFFELL | wordCopy];
  [(NSMutableDictionary *)self->_entityToAdditionalDataMap setObject:wordCopy forKeyedSubscript:entityCopy];
}

- (void)addEntity:(id)entity asAliasOfEntity:(id)ofEntity
{
  v21 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  v7 = [(NSMutableDictionary *)self->_entityToTokenIdentifiersMap objectForKey:ofEntity];
  entityToTokenIdentifiersMap = self->_entityToTokenIdentifiersMap;
  v9 = [v7 mutableCopy];
  [(NSMutableDictionary *)entityToTokenIdentifiersMap setObject:v9 forKey:entityCopy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(NSMutableDictionary *)self->_tokenIdentifierToEntitiesMap objectForKeyedSubscript:*(*(&v16 + 1) + 8 * v14), v16];
        [v15 addObject:entityCopy];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)removeEntity:(id)entity
{
  v18 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  v5 = [(NSMutableDictionary *)self->_entityToTokenIdentifiersMap objectForKey:entityCopy];
  v6 = v5;
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)self->_tokenIdentifierToEntitiesMap objectForKeyedSubscript:v11];
          [v12 removeObject:entityCopy];
          if (![v12 count])
          {
            [(NSMutableDictionary *)self->_tokenIdentifierToEntitiesMap removeObjectForKey:v11];
            [v11 unsignedIntValue];
            LXLexiconRemoveEntry();
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(NSMutableDictionary *)self->_entityToTokenIdentifiersMap removeObjectForKey:entityCopy];
    [(NSMutableDictionary *)self->_entityToAdditionalDataMap removeObjectForKey:entityCopy];
  }
}

- (void)removeAllEntities
{
  LXLexiconClear();
  [(NSMutableDictionary *)self->_entityToTokenIdentifiersMap removeAllObjects];
  [(NSMutableDictionary *)self->_tokenIdentifierToEntitiesMap removeAllObjects];
  entityToAdditionalDataMap = self->_entityToAdditionalDataMap;

  [(NSMutableDictionary *)entityToAdditionalDataMap removeAllObjects];
}

- (BOOL)containsEntity:(id)entity
{
  v3 = [(NSMutableDictionary *)self->_entityToTokenIdentifiersMap objectForKey:entity];
  v4 = v3 != 0;

  return v4;
}

- (id)sortKeyEquivalents:(id)equivalents
{
  equivalentsCopy = equivalents;
  v4 = objc_opt_new();
  name = [equivalentsCopy name];

  v8 = v4;
  LXLexiconEnumerateEntriesForString();

  v6 = v8;
  return v8;
}

- (id)getEntries
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_entityToTokenIdentifiersMap, "count")}];
  RootCursor = LXLexiconCreateRootCursor();
  v5 = v2;
  LXCursorEnumerateEntriesRecursively();
  CFRelease(RootCursor);

  return v5;
}

- (id)getEntryRefCount:(id)count
{
  countCopy = count;
  if ([countCopy length])
  {
    [(_ICTransientLexicon(TestingSupport) *)self getEntryRefCount:countCopy, &v7];
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getUsageCount:(id)count
{
  countCopy = count;
  if ([countCopy length] && (v5 = +[_ICLexiconUtilities copyEntry:forString:](_ICLexiconUtilities, "copyEntry:forString:", self->_lexicon, countCopy)) != 0)
  {
    v6 = v5;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:LXEntryGetUsageCount()];
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_mutableNamedEntitiesForLXEntry:(void *)entry
{
  entryCopy = entry;
  if (entry)
  {
    TokenID = LXEntryGetTokenID();
    v4 = entryCopy[2];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:TokenID];
    entryCopy = [v4 objectForKeyedSubscript:v5];
  }

  return entryCopy;
}

- (uint64_t)_tokenIdentiferForEntry:(uint64_t)TokenID
{
  v3 = a2;
  if (TokenID)
  {
    v4 = [_ICLexiconUtilities copyEntry:*(TokenID + 8) forString:v3];
    if (v4)
    {
      v5 = v4;
      TokenID = LXEntryGetTokenID();
      CFRelease(v5);
    }

    else
    {
      TokenID = 0;
    }
  }

  return TokenID;
}

- (void)_mutableNamedEntitiesForEntry:(void *)entry
{
  v3 = a2;
  if (entry)
  {
    v4 = [_ICLexiconUtilities copyEntry:entry[1] forString:v3];
    if (v4)
    {
      v6 = v4;
      entry = [(_ICTransientLexicon *)entry _mutableNamedEntitiesForLXEntry:v4];
      CFRelease(v6);
    }

    else
    {
      entry = 0;
    }
  }

  return entry;
}

- (id)namedEntitiesForEntry:(id)entry
{
  v3 = [(_ICTransientLexicon *)self _mutableNamedEntitiesForEntry:entry];
  v4 = [v3 copy];

  return v4;
}

- (void)addEntity:(id)entity forEntry:(id)entry
{
  v22 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  entryCopy = entry;
  v8 = _ICPersNamedEntityOSLogFacility(entryCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    name = self->_name;
    *buf = 138412546;
    v19 = entryCopy;
    v20 = 2112;
    v21 = name;
    _os_log_debug_impl(&dword_254BD0000, v8, OS_LOG_TYPE_DEBUG, "Add: %@ to: %@", buf, 0x16u);
  }

  if ((self->_typeFlags & 4) != 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v11 = [(_ICTransientLexicon *)self _mutableNamedEntitiesForEntry:entryCopy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42___ICTransientLexicon_addEntity_forEntry___block_invoke;
  v16[3] = &unk_2797ADDF0;
  v16[4] = self;
  v17 = v10;
  v12 = MEMORY[0x259C27030](v16);
  if (v11)
  {
    [v11 addObject:entityCopy];
    v13 = [(_ICTransientLexicon *)self _tokenIdentiferForEntry:entryCopy];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:v10];
    [v11 addObject:entityCopy];
    [entityCopy timestamp];
    v13 = LXLexiconAddWithCreationTime();
    LXLexiconIncrementUsageCount();
    LXLexiconSetUserBitfield();
    tokenIdentifierToEntitiesMap = self->_tokenIdentifierToEntitiesMap;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
    [(NSMutableDictionary *)tokenIdentifierToEntitiesMap setObject:v11 forKeyedSubscript:v15];
  }

  (v12)[2](v12, entityCopy, v13);
}

- (void)initWithName:(os_log_t)log typeFlags:.cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_254BD0000, log, OS_LOG_TYPE_ERROR, "Error creating lexicon (name = %@): %@", &v4, 0x16u);
}

@end
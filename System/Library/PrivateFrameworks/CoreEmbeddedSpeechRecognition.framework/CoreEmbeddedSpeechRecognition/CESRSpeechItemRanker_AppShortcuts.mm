@interface CESRSpeechItemRanker_AppShortcuts
- (BOOL)addSet:(id)set;
- (BOOL)enumerateRankedItemsWithError:(id *)error usingBlock:(id)block;
- (CESRSpeechItemRanker_AppShortcuts)initWithInstance:(id)instance speechProfileSite:(id)site categoryGroup:(id)group;
@end

@implementation CESRSpeechItemRanker_AppShortcuts

- (BOOL)enumerateRankedItemsWithError:(id *)error usingBlock:(id)block
{
  v57 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    sets = [(CESRSpeechItemRanker_AppShortcuts *)self sets];
    *buf = 136315394;
    *&buf[4] = "[CESRSpeechItemRanker_AppShortcuts enumerateRankedItemsWithError:usingBlock:]";
    *&buf[12] = 2048;
    *&buf[14] = [sets count];
    _os_log_impl(&dword_225EEB000, v5, OS_LOG_TYPE_INFO, "%s Ranking %lu AppShortcuts items", buf, 0x16u);
  }

  v38 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSMutableDictionary count](self->_setDict, "count")}];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = self->_setDict;
  v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v8)
  {
    v9 = *v50;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v50 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v49 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_setDict objectForKey:v11];
        v13 = [v12 changePublisherWithUseCase:@"SpeechProfile"];
        sharedItemCount = [v13 sharedItemCount];

        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sharedItemCount];
        [v38 setObject:v15 forKey:v11];
      }

      v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[CESRSpeechItemRanker_AppShortcuts enumerateRankedItemsWithError:usingBlock:]";
    *&buf[12] = 2112;
    *&buf[14] = v38;
    _os_log_debug_impl(&dword_225EEB000, v16, OS_LOG_TYPE_DEBUG, "%s AppShortcuts item count table:\n%@", buf, 0x16u);
  }

  v17 = [v38 keysSortedByValueUsingComparator:&__block_literal_global];
  calculateItemLimit = [(CESRSpeechItemRanker *)self calculateItemLimit];
  v19 = [v17 count];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v17;
  v20 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v20)
  {
    v22 = calculateItemLimit;
    v35 = *v46;
    *&v21 = 136315906;
    v33 = v21;
    while (2)
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v46 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v45 + 1) + 8 * j);
        v25 = [v38 objectForKey:{v24, v33}];
        unsignedIntegerValue = [v25 unsignedIntegerValue];

        if (unsignedIntegerValue >= v22 / v19)
        {
          v27 = v22 / v19;
        }

        else
        {
          v27 = unsignedIntegerValue;
        }

        v28 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
        {
          *buf = v33;
          *&buf[4] = "[CESRSpeechItemRanker_AppShortcuts enumerateRankedItemsWithError:usingBlock:]";
          *&buf[12] = 2112;
          *&buf[14] = v24;
          *&buf[22] = 1024;
          LODWORD(v54[0]) = v22 / v19;
          WORD2(v54[0]) = 1024;
          *(v54 + 6) = v27;
          _os_log_debug_impl(&dword_225EEB000, v28, OS_LOG_TYPE_DEBUG, "%s AppShortcuts adding item for app id %@ - fair quota: %u actual taken: %u", buf, 0x22u);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v54[0] = 0;
        v29 = [(NSMutableDictionary *)self->_setDict objectForKey:v24];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __78__CESRSpeechItemRanker_AppShortcuts_enumerateRankedItemsWithError_usingBlock___block_invoke_2;
        v41[3] = &unk_27857F020;
        v43 = buf;
        v44 = v27;
        v42 = blockCopy;
        v40.receiver = self;
        v40.super_class = CESRSpeechItemRanker_AppShortcuts;
        v30 = [(CESRSpeechItemRanker *)&v40 enumerateAllItemsOfSet:v29 error:error usingBlock:v41];

        _Block_object_dispose(buf, 8);
        if ((v30 & 1) == 0)
        {
          v31 = 0;
          goto LABEL_27;
        }

        --v19;
        v22 -= v27;
      }

      v20 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v31 = 1;
LABEL_27:

  return v31;
}

- (BOOL)addSet:(id)set
{
  setCopy = set;
  itemType = [setCopy itemType];
  if (itemType == 12010)
  {
    setDict = self->_setDict;
    v7 = [setCopy descriptorWithKey:*MEMORY[0x277CF9498]];
    value = [v7 value];
    [(NSMutableDictionary *)setDict setObject:setCopy forKey:value];
  }

  return itemType == 12010;
}

- (CESRSpeechItemRanker_AppShortcuts)initWithInstance:(id)instance speechProfileSite:(id)site categoryGroup:(id)group
{
  v9.receiver = self;
  v9.super_class = CESRSpeechItemRanker_AppShortcuts;
  v5 = [(CESRSpeechItemRanker *)&v9 initWithInstance:instance speechProfileSite:site categoryGroup:group];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    setDict = v5->_setDict;
    v5->_setDict = v6;
  }

  return v5;
}

@end
@interface TITransientLexiconManager
+ (TITransientLexiconManager)sharedInstance;
+ (id)getEntries:(_LXLexicon *)entries;
+ (id)singletonInstance;
+ (void)setSharedTITransientLexiconManager:(id)manager;
- (BOOL)searchForWord:(id)word;
- (BOOL)searchForWordCaseInsensitive:(id)insensitive;
- (BOOL)searchHelper:(_LXLexicon *)helper forWord:(__CFString *)word caseSensitive:(BOOL)sensitive;
- (TISupplementalLexiconController)ensureSupplementalLexicons;
- (TITransientLexiconManager)init;
- (_LXLexicon)addressBookLexiconForLocale:(const char *)locale;
- (_LXLexicon)appNameLexiconForLocale:(const char *)locale;
- (_LXLexicon)filterLexicon:(_LXLexicon *)lexicon againstLocale:(String *)locale;
- (_LXLexicon)filteredLexicon:(_LXLexicon *)lexicon fromLexiconCache:(void *)cache forLocale:(const char *)locale;
- (id)_currentConnection;
- (id)addContactObserver:(id)observer;
- (void)dealloc;
- (void)debugLogEntities;
- (void)getOnce:(id)once;
- (void)loadLexicons;
- (void)namedEntitiesUpdateCallback;
- (void)performMaintenance;
- (void)registerNamedEntitiesUpdateCallback;
- (void)releaseCachedNamedEntityLexicons;
- (void)supplementalLexiconControllerProcessDidTerminate:(id)terminate;
@end

@implementation TITransientLexiconManager

+ (TITransientLexiconManager)sharedInstance
{
  if (__testingInstance)
  {
    v2 = __testingInstance;
  }

  else
  {
    v2 = +[TITransientLexiconManager singletonInstance];
  }

  return v2;
}

+ (id)singletonInstance
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (+[TITransientLexiconManager singletonInstance]::onceToken != -1)
    {
      dispatch_once(&+[TITransientLexiconManager singletonInstance]::onceToken, &__block_literal_global_4295);
    }
  }

  else if (+[TITransientLexiconManager singletonInstance]::onceToken != -1)
  {
    TIDispatchSync();
  }

  v2 = +[TITransientLexiconManager singletonInstance]::singletonInstance;

  return v2;
}

- (void)debugLogEntities
{
  __45__TITransientLexiconManager_debugLogEntities__block_invoke(self->_namedEntityLexiconRef);
  namedEntityPhraseLexiconRef = self->_namedEntityPhraseLexiconRef;

  __45__TITransientLexiconManager_debugLogEntities__block_invoke(namedEntityPhraseLexiconRef);
}

void __45__TITransientLexiconManager_debugLogEntities__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v2 = TIOSLogFacility();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = MEMORY[0x277CCACA8];
        v4 = LXLexiconCopyName();
        v5 = [TITransientLexiconManager getEntries:a1];
        v6 = [v5 componentsJoinedByString:{@", "}];
        v7 = [v3 stringWithFormat:@"%s %@ contains [ %@ ]", "-[TITransientLexiconManager debugLogEntities]_block_invoke", v4, v6];
        *buf = 138412290;
        v9 = v7;
        _os_log_debug_impl(&dword_22CA55000, v2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

- (_LXLexicon)appNameLexiconForLocale:(const char *)locale
{
  v25[2] = *MEMORY[0x277D85DE8];
  KB::String::String(v22, locale);
  if (!std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>(self->_appNameLexicons, v22, v4))
  {
    v6 = v24;
    if (!v24)
    {
      v6 = v25;
    }

    if (v22[0])
    {
      v7 = v6;
    }

    else
    {
      v7 = "";
    }

    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    v9 = UIKeyboardStaticUnigramsFile(v8);
    KB::utf8_string(v9, v21);

    v10 = [TIInputMode inputModeWithIdentifier:v8];
    v11 = UIKeyboardDeltaLexiconPathForInputMode(v10);
    KB::utf8_string(v11, v20);

    KB::String::String(v19, v22);
    KB::String::String(v18, v21);
    KB::String::String(v17, v20);
    KB::AppTrieLoader::create();
  }

  v12 = std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>(self->_appNameLexicons, v22, v5);
  if (!v12)
  {
    abort();
  }

  (*(*v12[6] + 16))(&v15);
  v13 = *v15;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  if (v24 && v23 == 1)
  {
    free(v24);
  }

  return v13;
}

- (_LXLexicon)addressBookLexiconForLocale:(const char *)locale
{
  v25[2] = *MEMORY[0x277D85DE8];
  KB::String::String(v22, locale);
  if (!std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>(self->_addressBookLexicons, v22, v4))
  {
    v6 = v24;
    if (!v24)
    {
      v6 = v25;
    }

    if (v22[0])
    {
      v7 = v6;
    }

    else
    {
      v7 = "";
    }

    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    v9 = UIKeyboardStaticUnigramsFile(v8);
    KB::utf8_string(v9, v21);

    v10 = [TIInputMode inputModeWithIdentifier:v8];
    v11 = UIKeyboardDeltaLexiconPathForInputMode(v10);
    KB::utf8_string(v11, v20);

    KB::String::String(v19, v22);
    KB::String::String(v18, v21);
    KB::String::String(v17, v20);
    KB::AddressBookTrieLoader::create();
  }

  v12 = std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>(self->_addressBookLexicons, v22, v5);
  if (!v12)
  {
    abort();
  }

  (*(*v12[6] + 16))(&v15);
  v13 = *v15;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  if (v24 && v23 == 1)
  {
    free(v24);
  }

  return v13;
}

- (_LXLexicon)filteredLexicon:(_LXLexicon *)lexicon fromLexiconCache:(void *)cache forLocale:(const char *)locale
{
  v34 = *MEMORY[0x277D85DE8];
  if (!lexicon)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    v29 = 136315138;
    *v30 = "[TITransientLexiconManager filteredLexicon:fromLexiconCache:forLocale:]";
    v11 = MEMORY[0x277D86220];
    v12 = "%s  Lexicon being asked to filter is null - will return a null reference in return";
LABEL_40:
    _os_log_debug_impl(&dword_22CA55000, v11, OS_LOG_TYPE_DEBUG, v12, &v29, 0xCu);
    return 0;
  }

  if (!locale)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    v29 = 136315138;
    *v30 = "[TITransientLexiconManager filteredLexicon:fromLexiconCache:forLocale:]";
    v11 = MEMORY[0x277D86220];
    v12 = "%s  localeId being asked to filter with is null - will return a null reference in return";
    goto LABEL_40;
  }

  lexiconCopy = lexicon;
  KB::String::String(v32, locale);
  if (std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>(cache, v32, v8))
  {
    goto LABEL_4;
  }

  v14 = [(TITransientLexiconManager *)self filterLexicon:lexiconCopy againstLocale:v32];
  if (!v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v29 = 136315138;
      *v30 = "[TITransientLexiconManager filteredLexicon:fromLexiconCache:forLocale:]";
      _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Failed to filter the named entity lexicon; returning an unfiltered one", &v29, 0xCu);
    }

    goto LABEL_6;
  }

  v15 = v14;
  KB::String::String(&v29, v32);
  v31[2] = v15;
  if (*&v30[4])
  {
    v16 = *&v30[4];
  }

  else
  {
    v16 = v31;
  }

  v17 = KB::String::hash(v16, v29);
  v20 = v17;
  v21 = *(cache + 1);
  if (!v21)
  {
    goto LABEL_38;
  }

  v22 = vcnt_s8(v21);
  v22.i16[0] = vaddlv_u8(v22);
  v23 = v22.u32[0];
  if (v22.u32[0] > 1uLL)
  {
    v24 = v17;
    if (v21 <= v17)
    {
      v24 = v17 % v21;
    }
  }

  else
  {
    v24 = (v21 - 1) & v17;
  }

  v25 = *(*cache + 8 * v24);
  if (!v25 || (v26 = *v25) == 0)
  {
LABEL_38:
    operator new();
  }

  while (1)
  {
    v27 = v26[1];
    if (v27 == v20)
    {
      break;
    }

    if (v23 > 1)
    {
      if (v27 >= v21)
      {
        v27 %= v21;
      }
    }

    else
    {
      v27 &= v21 - 1;
    }

    if (v27 != v24)
    {
      goto LABEL_38;
    }

LABEL_37:
    v26 = *v26;
    if (!v26)
    {
      goto LABEL_38;
    }
  }

  if (v26 + 2 != &v29 && !KB::String::equal((v26 + 2), &v29, 1, v18, v19))
  {
    goto LABEL_37;
  }

  if (*&v30[4])
  {
    v28 = v30[2] == 1;
  }

  else
  {
    v28 = 0;
  }

  if (v28)
  {
    free(*&v30[4]);
  }

LABEL_4:
  v10 = std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>(cache, v32, v9);
  if (!v10)
  {
    abort();
  }

  lexiconCopy = v10[6];
LABEL_6:
  if (v33 && v32[6] == 1)
  {
    free(v33);
  }

  return lexiconCopy;
}

- (_LXLexicon)filterLexicon:(_LXLexicon *)lexicon againstLocale:(String *)locale
{
  v11 = *MEMORY[0x277D85DE8];
  if (lexicon)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v5 = LXLexiconCopyName();
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%u", v5, arc4random()];
    CFDictionarySetValue(Mutable, *MEMORY[0x277D23178], v6);
    v8[7] = 0;
    LXLexiconCreateTransient();
    LXLexiconRepositoryAddOrUpdate();
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = __Block_byref_object_copy__50;
    v8[4] = __Block_byref_object_dispose__51;
    v8[5] = "";
    KB::StaticDictionary::create();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[TITransientLexiconManager filterLexicon:againstLocale:]";
    _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Lexicon being asked to filter is null - will return a null reference in return", buf, 0xCu);
  }

  return 0;
}

void __57__TITransientLexiconManager_filterLexicon_againstLocale___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = LXEntryCopyString();
  v4 = *(*(*(a1 + 32) + 8) + 48);
  KB::utf8_string(&v7, v3);
  v5 = KB::StaticDictionary::contains(v4, &v7, 0, 0.0);
  if (v8)
  {
    v6 = BYTE6(v7) == 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    free(v8);
    if (v5)
    {
LABEL_6:
      if (!v3)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else if (v5)
  {
    goto LABEL_6;
  }

  v7 = 0;
  LXEntryGetTimestamp();
  LXLexiconAddWithCreationTime();
  LXLexiconIncrementUsageCount();
  if (!v3)
  {
    return;
  }

LABEL_7:
  CFRelease(v3);
}

- (void)getOnce:(id)once
{
  onceCopy = once;
  v5 = dispatch_semaphore_create(0);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4272;
  v17 = __Block_byref_object_dispose__4273;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__TITransientLexiconManager_getOnce___block_invoke;
  v10[3] = &unk_27872FED0;
  v12 = &v13;
  v6 = v5;
  v11 = v6;
  v7 = [(TITransientLexiconManager *)self addContactObserver:v10];
  v8 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v6, v8))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "_ICPredictionManager quickTypePredictionWithTrigger timeout", v9, 2u);
    }

    [(TITransientLexiconManager *)self removeContactObserver:v7];
  }

  else
  {
    [(TITransientLexiconManager *)self removeContactObserver:v7];
    onceCopy[2](onceCopy, v14[5]);
  }

  _Block_object_dispose(&v13, 8);
}

intptr_t __37__TITransientLexiconManager_getOnce___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

- (BOOL)searchForWordCaseInsensitive:(id)insensitive
{
  v9 = self->_supplementalLexiconSearchEnabled && (-[TITransientLexiconManager supplementalLexicons](self, "supplementalLexicons"), v5 = v4 = insensitive;

  return v9;
}

- (BOOL)searchForWord:(id)word
{
  wordCopy = word;
  if (!self->_supplementalLexiconSearchEnabled || (-[TITransientLexiconManager supplementalLexicons](self, "supplementalLexicons"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 activeWordLexicon], v5, !v6) || (-[TITransientLexiconManager supplementalLexicons](self, "supplementalLexicons"), v7 = objc_claimAutoreleasedReturnValue(), v8 = 1, v9 = -[TITransientLexiconManager searchHelper:forWord:caseSensitive:](self, "searchHelper:forWord:caseSensitive:", objc_msgSend(v7, "activeWordLexicon"), wordCopy, 1), v7, !v9))
  {
    v8 = [(TITransientLexiconManager *)self searchHelper:[(TITransientLexiconManager *)self namedEntityLexicon] forWord:wordCopy caseSensitive:1];
  }

  return v8;
}

- (BOOL)searchHelper:(_LXLexicon *)helper forWord:(__CFString *)word caseSensitive:(BOOL)sensitive
{
  if (helper)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    LXLexiconEnumerateEntriesForString();
    v5 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void __64__TITransientLexiconManager_searchHelper_forWord_caseSensitive___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  if (CFStringCompare(v5, *(a1 + 40), *(a1 + 48) ^ 1) == kCFCompareEqualTo)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  CFRelease(v5);
}

- (id)addContactObserver:(id)observer
{
  observerCopy = observer;
  [(TITransientLexiconManager *)self loadLexicons];
  v5 = [(_ICLexiconManaging *)self->_inputContextLexiconManager addContactObserver:observerCopy];

  return v5;
}

- (void)supplementalLexiconControllerProcessDidTerminate:(id)terminate
{
  v4 = TISupplementalLexiconOSLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_INFO, "Process terminated -- removing supplemental lexicon controller", v6, 2u);
  }

  supplementalLexicons = self->_supplementalLexicons;
  self->_supplementalLexicons = 0;
}

- (void)performMaintenance
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[TITransientLexiconManager performMaintenance]";
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Performing maintenance in Transient Lexicon Manager", &v7, 0xCu);
  }

  lexiconManager = [MEMORY[0x277D1C0B0] lexiconManager];
  inputContextLexiconManager = self->_inputContextLexiconManager;
  self->_inputContextLexiconManager = lexiconManager;

  [(TITransientLexiconManager *)self registerNamedEntitiesUpdateCallback];
  namedEntityLexiconRef = self->_namedEntityLexiconRef;
  if (namedEntityLexiconRef)
  {
    CFRelease(namedEntityLexiconRef);
    self->_namedEntityLexiconRef = 0;
  }

  namedEntityPhraseLexiconRef = self->_namedEntityPhraseLexiconRef;
  if (namedEntityPhraseLexiconRef)
  {
    CFRelease(namedEntityPhraseLexiconRef);
    self->_namedEntityPhraseLexiconRef = 0;
  }

  self->_lexiconsLoaded = 0;
  [(TITransientLexiconManager *)self loadLexicons];
  [(TITransientLexiconManager *)self namedEntitiesUpdateCallback];
}

- (void)loadLexicons
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_lexiconsLoaded)
  {
    loadLexicons = [(_ICLexiconManaging *)self->_inputContextLexiconManager loadLexicons];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [loadLexicons countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(loadLexicons);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          if ([v8 typeFlags])
          {
            typeFlags = [v8 typeFlags];
            v10 = CFRetain([v8 getLexiconImplementation]);
            if ((typeFlags & 4) != 0)
            {
              v11 = 16;
            }

            else
            {
              v11 = 8;
            }

            *(&self->super.isa + v11) = v10;
          }
        }

        v5 = [loadLexicons countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    self->_lexiconsLoaded = 1;
  }
}

- (void)namedEntitiesUpdateCallback
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[TITransientLexiconManager namedEntitiesUpdateCallback]";
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Received a named entities update callback, rebuilding the cached lexicons", &v2, 0xCu);
  }

  operator new();
}

- (void)registerNamedEntitiesUpdateCallback
{
  objc_initWeak(&location, self);
  if (objc_opt_respondsToSelector())
  {
    inputContextLexiconManager = self->_inputContextLexiconManager;
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __64__TITransientLexiconManager_registerNamedEntitiesUpdateCallback__block_invoke;
    v8 = &unk_2787311D8;
    objc_copyWeak(&v9, &location);
    v4 = _Block_copy(&v5);
    [(_ICLexiconManaging *)inputContextLexiconManager performSelector:sel_addNamedEntitiesUpdateObserver_ withObject:v4, v5, v6, v7, v8];

    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(&location);
}

void __64__TITransientLexiconManager_registerNamedEntitiesUpdateCallback__block_invoke(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  TIDispatchAsync();
  objc_destroyWeak(&v1);
}

void __64__TITransientLexiconManager_registerNamedEntitiesUpdateCallback__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained namedEntitiesUpdateCallback];
    WeakRetained = v2;
  }
}

- (TISupplementalLexiconController)ensureSupplementalLexicons
{
  supplementalLexicons = [(TITransientLexiconManager *)self supplementalLexicons];
  if (!supplementalLexicons)
  {
    v4 = [TISupplementalLexiconController alloc];
    _currentConnection = [(TITransientLexiconManager *)self _currentConnection];
    supplementalLexicons = [(TISupplementalLexiconController *)v4 initWithConnection:_currentConnection];

    [(TISupplementalLexiconController *)supplementalLexicons setDelegate:self];
    objc_storeStrong(&self->_supplementalLexicons, supplementalLexicons);
  }

  v6 = supplementalLexicons;

  return v6;
}

- (id)_currentConnection
{
  if (__overridingCurrentConnectionForTesting)
  {
    currentConnection = __overridingCurrentConnectionForTesting;
  }

  else
  {
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  }

  return currentConnection;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  namedEntityPhraseLexiconRef = self->_namedEntityPhraseLexiconRef;
  if (namedEntityPhraseLexiconRef)
  {
    CFRelease(namedEntityPhraseLexiconRef);
  }

  namedEntityLexiconRef = self->_namedEntityLexiconRef;
  if (namedEntityLexiconRef)
  {
    CFRelease(namedEntityLexiconRef);
  }

  [(TITransientLexiconManager *)self releaseCachedNamedEntityLexicons];
  addressBookLexicons = self->_addressBookLexicons;
  if (addressBookLexicons)
  {
    v7 = addressBookLexicons[2];
    while (v7)
    {
      v8 = v7;
      v7 = *v7;
      v9 = v8[7];
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      v10 = v8[3];
      if (v10 && *(v8 + 22) == 1)
      {
        free(v10);
      }

      operator delete(v8);
    }

    v11 = *addressBookLexicons;
    *addressBookLexicons = 0;
    if (v11)
    {
      operator delete(v11);
    }

    MEMORY[0x2318BE270](addressBookLexicons, 0x10A0C408EF24B1CLL);
  }

  appNameLexicons = self->_appNameLexicons;
  if (appNameLexicons)
  {
    v13 = appNameLexicons[2];
    while (v13)
    {
      v14 = v13;
      v13 = *v13;
      v15 = v14[7];
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v15);
      }

      v16 = v14[3];
      if (v16 && *(v14 + 22) == 1)
      {
        free(v16);
      }

      operator delete(v14);
    }

    v17 = *appNameLexicons;
    *appNameLexicons = 0;
    if (v17)
    {
      operator delete(v17);
    }

    MEMORY[0x2318BE270](appNameLexicons, 0x10A0C408EF24B1CLL);
  }

  v18.receiver = self;
  v18.super_class = TITransientLexiconManager;
  [(TITransientLexiconManager *)&v18 dealloc];
}

- (void)releaseCachedNamedEntityLexicons
{
  namedEntityLexicons = self->_namedEntityLexicons;
  if (namedEntityLexicons)
  {
    v4 = namedEntityLexicons[2];
    if (!v4)
    {
      goto LABEL_7;
    }

    do
    {
      v5 = v4[6];
      if (v5)
      {
        CFRelease(v5);
      }

      v4 = *v4;
    }

    while (v4);
    namedEntityLexicons = self->_namedEntityLexicons;
    if (namedEntityLexicons)
    {
LABEL_7:
      v6 = std::__hash_table<std::__hash_value_type<KB::String,_LXLexicon const*>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,_LXLexicon const*>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,_LXLexicon const*>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,_LXLexicon const*>>>::~__hash_table(namedEntityLexicons);
      MEMORY[0x2318BE270](v6, 0x10A0C408EF24B1CLL);
    }
  }

  namedEntityPhraseLexicons = self->_namedEntityPhraseLexicons;
  if (namedEntityPhraseLexicons)
  {
    v8 = namedEntityPhraseLexicons[2];
    if (!v8)
    {
      goto LABEL_14;
    }

    do
    {
      v9 = v8[6];
      if (v9)
      {
        CFRelease(v9);
      }

      v8 = *v8;
    }

    while (v8);
    namedEntityPhraseLexicons = self->_namedEntityPhraseLexicons;
    if (namedEntityPhraseLexicons)
    {
LABEL_14:
      std::__hash_table<std::__hash_value_type<KB::String,_LXLexicon const*>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,_LXLexicon const*>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,_LXLexicon const*>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,_LXLexicon const*>>>::~__hash_table(namedEntityPhraseLexicons);

      JUMPOUT(0x2318BE270);
    }
  }
}

- (TITransientLexiconManager)init
{
  v6.receiver = self;
  v6.super_class = TITransientLexiconManager;
  v2 = [(TITransientLexiconManager *)&v6 init];
  if (v2)
  {
    lexiconManager = [MEMORY[0x277D1C0B0] lexiconManager];
    inputContextLexiconManager = v2->_inputContextLexiconManager;
    v2->_inputContextLexiconManager = lexiconManager;

    [(TITransientLexiconManager *)v2 registerNamedEntitiesUpdateCallback];
    v2->_supplementalLexiconSearchEnabled = 1;
    [(TITransientLexiconManager *)v2 loadLexicons];
    operator new();
  }

  return 0;
}

+ (id)getEntries:(_LXLexicon *)entries
{
  array = [MEMORY[0x277CBEB18] array];
  RootCursor = LXLexiconCreateRootCursor();
  v6 = array;
  LXCursorEnumerateEntriesRecursively();
  CFRelease(RootCursor);

  return v6;
}

void __40__TITransientLexiconManager_getEntries___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = LXEntryCopyString();
  [v2 addObject:v3];
}

void __46__TITransientLexiconManager_singletonInstance__block_invoke_2(uint64_t a1)
{
  if (+[TITransientLexiconManager singletonInstance]::onceToken != -1)
  {
    dispatch_once(&+[TITransientLexiconManager singletonInstance]::onceToken, *(a1 + 32));
  }
}

uint64_t __46__TITransientLexiconManager_singletonInstance__block_invoke()
{
  v0 = objc_alloc_init(TITransientLexiconManager);
  v1 = +[TITransientLexiconManager singletonInstance]::singletonInstance;
  +[TITransientLexiconManager singletonInstance]::singletonInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (void)setSharedTITransientLexiconManager:(id)manager
{
  managerCopy = manager;
  if (__testingInstance != managerCopy)
  {
    v5 = managerCopy;
    objc_storeStrong(&__testingInstance, manager);
    managerCopy = v5;
  }
}

@end
@interface TISupplementalLexiconController
- (TISupplementalLexicon)activeLexicon;
- (TISupplementalLexiconController)initWithConnection:(id)connection;
- (TISupplementalLexiconControllerDelegate)delegate;
- (_LXLexicon)activePhraseLexicon;
- (_LXLexicon)activeWordLexicon;
- (id)identifiersOfItemsEqualToMecrabraCandidate:(id)candidate;
- (id)lexiconWithIdentifier:(unint64_t)identifier;
- (void)_sendActiveLexiconDidChangeNotification;
- (void)addLexicon:(id)lexicon;
- (void)clearActiveLexicon;
- (void)removeLexiconWithIdentifier:(unint64_t)identifier;
- (void)setActiveLexiconWithIdentifier:(unint64_t)identifier;
@end

@implementation TISupplementalLexiconController

- (TISupplementalLexiconControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)identifiersOfItemsEqualToMecrabraCandidate:(id)candidate
{
  v23 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  if (self->_activeLexiconIdentifier)
  {
    v5 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    lexicons = self->_lexicons;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{self->_activeLexiconIdentifier, 0}];
    v8 = [(NSMutableDictionary *)lexicons objectForKeyedSubscript:v7];
    items = [v8 items];

    v10 = [items countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(items);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([v14 core_isEqualToMecabraCandidate:candidateCopy])
          {
            v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v14, "identifier")}];
            [v5 addObject:v15];
          }
        }

        v11 = [items countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    allObjects = [v5 allObjects];
  }

  else
  {
    allObjects = MEMORY[0x277CBEBF8];
  }

  return allObjects;
}

- (id)lexiconWithIdentifier:(unint64_t)identifier
{
  lexicons = self->_lexicons;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:identifier];
  v5 = [(NSMutableDictionary *)lexicons objectForKeyedSubscript:v4];

  return v5;
}

- (_LXLexicon)activePhraseLexicon
{
  if (!self->_activeLexiconIdentifier)
  {
    return 0;
  }

  entityStores = self->_entityStores;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v4 = [(NSMutableDictionary *)entityStores objectForKeyedSubscript:v3];
  phraseLexicon = [v4 phraseLexicon];
  getLexiconImplementation = [phraseLexicon getLexiconImplementation];

  return getLexiconImplementation;
}

- (_LXLexicon)activeWordLexicon
{
  if (!self->_activeLexiconIdentifier)
  {
    return 0;
  }

  entityStores = self->_entityStores;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v4 = [(NSMutableDictionary *)entityStores objectForKeyedSubscript:v3];
  wordLexicon = [v4 wordLexicon];
  getLexiconImplementation = [wordLexicon getLexiconImplementation];

  return getLexiconImplementation;
}

- (void)clearActiveLexicon
{
  v3 = TISupplementalLexiconOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_22CA55000, v3, OS_LOG_TYPE_INFO, "Clear active lexicon", v7, 2u);
  }

  activeLexicon = [(TISupplementalLexiconController *)self activeLexicon];
  self->_activeLexiconIdentifier = 0;
  activeLexicon2 = [(TISupplementalLexiconController *)self activeLexicon];

  if (activeLexicon != activeLexicon2)
  {
    [(TISupplementalLexiconController *)self _sendActiveLexiconDidChangeNotification];
  }
}

- (void)_sendActiveLexiconDidChangeNotification
{
  v13 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v3 = TISupplementalLexiconOSLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      activeLexicon = [self activeLexicon];
      *buf = 134217984;
      identifier = [activeLexicon identifier];
      _os_log_impl(&dword_22CA55000, v3, OS_LOG_TYPE_INFO, "Active supplemental lexicon did change (active identifier=%llu)", buf, 0xCu);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    activeLexicon2 = [self activeLexicon];
    if (activeLexicon2)
    {
      activeLexicon3 = [self activeLexicon];
      v10 = activeLexicon3;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      [defaultCenter postNotificationName:@"TIActiveLexiconDidChangeNotification" object:self userInfo:v8];
    }

    else
    {
      [defaultCenter postNotificationName:@"TIActiveLexiconDidChangeNotification" object:self userInfo:MEMORY[0x277CBEC10]];
    }
  }
}

- (void)setActiveLexiconWithIdentifier:(unint64_t)identifier
{
  activeLexicon = [(TISupplementalLexiconController *)self activeLexicon];
  self->_activeLexiconIdentifier = identifier;
  activeLexicon2 = [(TISupplementalLexiconController *)self activeLexicon];

  if (activeLexicon != activeLexicon2)
  {
    [(TISupplementalLexiconController *)self _sendActiveLexiconDidChangeNotification];
  }
}

- (TISupplementalLexicon)activeLexicon
{
  if (self->_activeLexiconIdentifier)
  {
    lexicons = self->_lexicons;
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    v4 = [(NSMutableDictionary *)lexicons objectForKeyedSubscript:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)removeLexiconWithIdentifier:(unint64_t)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = TISupplementalLexiconOSLogFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v13 = 134217984;
    identifierCopy = identifier;
    _os_log_impl(&dword_22CA55000, v5, OS_LOG_TYPE_INFO, "Remove supplemental lexicon with identifier=%llu", &v13, 0xCu);
  }

  activeLexicon = [(TISupplementalLexiconController *)self activeLexicon];
  if (self->_activeLexiconIdentifier == identifier)
  {
    self->_activeLexiconIdentifier = 0;
  }

  entityStores = self->_entityStores;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:identifier];
  [(NSMutableDictionary *)entityStores removeObjectForKey:v8];

  lexicons = self->_lexicons;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:identifier];
  [(NSMutableDictionary *)lexicons removeObjectForKey:v10];

  activeLexicon2 = [(TISupplementalLexiconController *)self activeLexicon];

  if (activeLexicon != activeLexicon2)
  {
    [(TISupplementalLexiconController *)self _sendActiveLexiconDidChangeNotification];
  }
}

- (void)addLexicon:(id)lexicon
{
  v60 = *MEMORY[0x277D85DE8];
  lexiconCopy = lexicon;
  v5 = TISupplementalLexiconOSLogFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    identifier = [lexiconCopy identifier];
    items = [lexiconCopy items];
    *buf = 134218240;
    v57 = identifier;
    v58 = 2048;
    v59 = [items count];
    _os_log_impl(&dword_22CA55000, v5, OS_LOG_TYPE_INFO, "Add supplemental lexicon with identifier=%llu (#items=%lu)", buf, 0x16u);
  }

  activeLexicon = [(TISupplementalLexiconController *)self activeLexicon];
  if (self->_needsAtSignSearchPrefixQuirk && ![lexiconCopy searchPrefixes])
  {
    [lexiconCopy setSearchPrefixes:1];
  }

  v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Supplemental-%d-%llu", self->_connectionIdentifier, objc_msgSend(lexiconCopy, "identifier")];
  items2 = [lexiconCopy items];
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(items2, "count")}];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = items2;
  v11 = [v10 countByEnumeratingWithState:&v47 objects:buf count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v48;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v47 + 1) + 8 * i) core_appendEntitiesToArray:v9];
      }

      v12 = [v10 countByEnumeratingWithState:&v47 objects:buf count:16];
    }

    while (v12);
  }

  mEMORY[0x277D6F380] = [MEMORY[0x277D6F380] sharedInputModeController];
  enabledInputModeIdentifiers = [mEMORY[0x277D6F380] enabledInputModeIdentifiers];

  v17 = [MEMORY[0x277CBEB58] set];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v18 = enabledInputModeIdentifiers;
  v19 = [v18 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v44;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v44 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = TIInputModeGetLanguageWithRegion();
        if (v23)
        {
          [v17 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v20);
  }

  v24 = [objc_alloc(MEMORY[0x277D1C0C0]) initWithName:v38];
  [v24 setMinimumWordLength:1];
  if (objc_opt_respondsToSelector())
  {
    [v24 setTreatHyphenatedWordAsPhrase:1];
  }

  v25 = [v17 copy];
  [v24 setAcceptedLanguages:v25];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v51 = 136315394;
    v52 = "TICreateNamedEntityStore";
    v53 = 2112;
    v54 = v17;
    _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Setting the accepted languages as : %@", v51, 0x16u);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v26 = v9;
  v27 = [v26 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v40;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v40 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [v24 addEntity:*(*(&v39 + 1) + 8 * k) isDurable:1];
      }

      v28 = [v26 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v28);
  }

  entityStores = self->_entityStores;
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(lexiconCopy, "identifier")}];
  [(NSMutableDictionary *)entityStores setObject:v24 forKeyedSubscript:v32];

  lexicons = self->_lexicons;
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(lexiconCopy, "identifier")}];
  [(NSMutableDictionary *)lexicons setObject:lexiconCopy forKeyedSubscript:v34];

  activeLexicon2 = [(TISupplementalLexiconController *)self activeLexicon];

  if (activeLexicon != activeLexicon2)
  {
    [(TISupplementalLexiconController *)self _sendActiveLexiconDidChangeNotification];
  }
}

- (TISupplementalLexiconController)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v23.receiver = self;
  v23.super_class = TISupplementalLexiconController;
  v5 = [(TISupplementalLexiconController *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    v8 = *MEMORY[0x277CBECE8];
    if (connectionCopy)
    {
      objc_msgSend_auditToken(connectionCopy);
    }

    else
    {
      memset(&token, 0, sizeof(token));
    }

    v9 = SecTaskCreateWithAuditToken(v8, &token);
    v10 = SecTaskCopySigningIdentifier(v9, 0);
    CFRelease(v9);
    *(v5 + 40) = objc_msgSend_isEqualToString_(v10);

    if (connectionCopy)
    {
      objc_msgSend_auditToken(connectionCopy);
    }

    else
    {
      memset(&token, 0, sizeof(token));
    }

    *(v5 + 11) = audit_token_to_pidversion(&token);
    v11 = objc_opt_new();
    v12 = *(v5 + 2);
    *(v5 + 2) = v11;

    if (connectionCopy)
    {
      objc_msgSend_auditToken(connectionCopy);
    }

    else
    {
      memset(&token, 0, sizeof(token));
    }

    v13 = audit_token_to_pid(&token);
    v14 = dispatch_source_create(MEMORY[0x277D85D20], v13, 0x80000000uLL, MEMORY[0x277D85CD0]);
    v15 = *(v5 + 4);
    *(v5 + 4) = v14;

    objc_initWeak(&token, v5);
    v16 = *(v5 + 4);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __54__TISupplementalLexiconController_initWithConnection___block_invoke;
    v20[3] = &unk_278731338;
    objc_copyWeak(&v22, &token);
    v17 = v5;
    v21 = v17;
    dispatch_source_set_event_handler(v16, v20);
    dispatch_resume(*(v5 + 4));
    v18 = v17;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&token);
  }

  return v5;
}

void __54__TISupplementalLexiconController_initWithConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    dispatch_source_cancel(WeakRetained[4]);
    v3 = v6[4];
    v6[4] = 0;

    v6[3] = 0;
    [v6[2] removeAllObjects];
    v4 = objc_loadWeakRetained(v6 + 6);

    WeakRetained = v6;
    if (v4)
    {
      v5 = objc_loadWeakRetained(v6 + 6);
      [v5 supplementalLexiconControllerProcessDidTerminate:*(a1 + 32)];

      WeakRetained = v6;
    }
  }
}

@end
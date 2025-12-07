@interface _ICPortraitLexiconSource
- (_ICPortraitLexiconSource)init;
- (id)_makeContactDelegate;
- (id)_makeNamedEntityDelegate;
- (id)_makePPNamedEntityStore;
- (void)provideFeedbackForString:(id)string type:(unsigned __int8)type style:(unsigned __int8)style;
- (void)startLoadingWithManager:(id)manager;
@end

@implementation _ICPortraitLexiconSource

- (_ICPortraitLexiconSource)init
{
  v8.receiver = self;
  v8.super_class = _ICPortraitLexiconSource;
  v2 = [(_ICPortraitLexiconSource *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    contactStore = v2->_contactStore;
    v2->_contactStore = v3;

    _makePPNamedEntityStore = [(_ICPortraitLexiconSource *)v2 _makePPNamedEntityStore];
    namedEntityStore = v2->_namedEntityStore;
    v2->_namedEntityStore = _makePPNamedEntityStore;
  }

  return v2;
}

- (id)_makePPNamedEntityStore
{
  if (_makePPNamedEntityStore_onceToken != -1)
  {
    [_ICPortraitLexiconSource _makePPNamedEntityStore];
  }

  v3 = _makePPNamedEntityStore_store;

  return v3;
}

- (void)startLoadingWithManager:(id)manager
{
  v4 = objc_storeWeak(&self->_manager, manager);
  v5 = _ICPersNamedEntityOSLogFacility(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_254BD0000, v5, OS_LOG_TYPE_INFO, "_ICPortraitLexiconSource loading data", buf, 2u);
  }

  _makeContactDelegate = [(_ICPortraitLexiconSource *)self _makeContactDelegate];
  contactDelegate = self->_contactDelegate;
  self->_contactDelegate = _makeContactDelegate;

  contactStore = self->_contactStore;
  v9 = self->_contactDelegate;
  v24 = 0;
  [(PPContactStore *)contactStore loadContactNameRecordsAndMonitorChangesWithDelegate:v9 error:&v24];
  v10 = v24;
  v11 = v10;
  if (v10)
  {
    v12 = _ICPersContactOSLogFacility(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(_ICPortraitLexiconSource *)v11 startLoadingWithManager:v12];
    }
  }

  _makeNamedEntityDelegate = [(_ICPortraitLexiconSource *)self _makeNamedEntityDelegate];
  namedEntityDelegate = self->_namedEntityDelegate;
  self->_namedEntityDelegate = _makeNamedEntityDelegate;

  v15 = objc_alloc_init(MEMORY[0x277D3A430]);
  v16 = +[_ICPortraitUtilities acceptedSourceBundleIds];
  [v15 setMatchingSourceBundleIds:v16];

  v17 = +[_ICPortraitUtilities excludedAlgorithms];
  [v15 setExcludingAlgorithms:v17];

  namedEntityStore = self->_namedEntityStore;
  v19 = self->_namedEntityDelegate;
  v23 = 0;
  [(PPNamedEntityStore *)namedEntityStore loadNamedEntityRecordsAndMonitorChangesWithDelegate:v19 query:v15 error:&v23];
  v20 = v23;
  v21 = v20;
  if (v20)
  {
    v22 = _ICPersNamedEntityOSLogFacility(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(_ICPortraitLexiconSource *)v21 startLoadingWithManager:v22];
    }
  }
}

- (id)_makeContactDelegate
{
  v3 = [objc_alloc(MEMORY[0x277D3A370]) initWithName:@"ICPortraitLexiconSource"];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48___ICPortraitLexiconSource__makeContactDelegate__block_invoke;
  v15[3] = &unk_2797ADBD0;
  objc_copyWeak(&v16, &location);
  [v3 setContactNameRecordsSetup:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48___ICPortraitLexiconSource__makeContactDelegate__block_invoke_2;
  v13[3] = &unk_2797ADBF8;
  objc_copyWeak(&v14, &location);
  [v3 setContactNameRecordsHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48___ICPortraitLexiconSource__makeContactDelegate__block_invoke_3;
  v11[3] = &unk_2797ADC20;
  objc_copyWeak(&v12, &location);
  [v3 setContactNameRecordsCompletion:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48___ICPortraitLexiconSource__makeContactDelegate__block_invoke_4;
  v9[3] = &unk_2797ADBD0;
  objc_copyWeak(&v10, &location);
  [v3 setRecentContactNameRecordsSetup:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48___ICPortraitLexiconSource__makeContactDelegate__block_invoke_5;
  v7[3] = &unk_2797ADBF8;
  objc_copyWeak(&v8, &location);
  [v3 setRecentContactNameRecordsHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48___ICPortraitLexiconSource__makeContactDelegate__block_invoke_6;
  v5[3] = &unk_2797ADC20;
  objc_copyWeak(&v6, &location);
  [v3 setRecentContactNameRecordsCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v3;
}

- (id)_makeNamedEntityDelegate
{
  v3 = [objc_alloc(MEMORY[0x277D3A440]) initWithName:@"ICPortraitLexiconSource"];
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke;
  v17[3] = &unk_2797ADBD0;
  objc_copyWeak(&v18, &location);
  [v3 setNamedEntityRecordsSetup:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke_2;
  v15[3] = &unk_2797ADC48;
  objc_copyWeak(&v16, &location);
  [v3 setNamedEntityRecordsHandler:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke_3;
  v13[3] = &unk_2797ADC20;
  objc_copyWeak(&v14, &location);
  [v3 setNamedEntityRecordsCompletion:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke_4;
  v11[3] = &unk_2797ADBD0;
  objc_copyWeak(&v12, &location);
  [v3 setRecentNamedEntityRecordsSetup:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke_5;
  v9[3] = &unk_2797ADC48;
  objc_copyWeak(&v10, &location);
  [v3 setRecentNamedEntityRecordsHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke_6;
  v7[3] = &unk_2797ADC20;
  objc_copyWeak(&v8, &location);
  [v3 setRecentNamedEntityRecordsCompletion:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke_7;
  v5[3] = &unk_2797ADC20;
  objc_copyWeak(&v6, &location);
  [v3 setResetNamedEntityRecordData:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v3;
}

- (void)provideFeedbackForString:(id)string type:(unsigned __int8)type style:(unsigned __int8)style
{
  styleCopy = style;
  typeCopy = type;
  stringCopy = string;
  v9 = stringCopy;
  if (typeCopy == 3)
  {
    v10 = [objc_alloc(MEMORY[0x277D3A3B8]) initWithOfferedString:stringCopy];
LABEL_15:
    v11 = v10;
    v12 = _ICPersNamedEntityOSLogFacility(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [_ICPortraitLexiconSource provideFeedbackForString:styleCopy type:typeCopy style:v12];
    }

    [(PPNamedEntityStore *)self->_namedEntityStore registerFeedback:v11 completion:0];
    goto LABEL_18;
  }

  if (typeCopy == 1 && styleCopy == 1)
  {
    v10 = [objc_alloc(MEMORY[0x277D3A3B8]) initWithExplicitlyEngagedString:stringCopy];
    goto LABEL_15;
  }

  if (typeCopy == 1 && styleCopy == 2)
  {
    v10 = [objc_alloc(MEMORY[0x277D3A3B8]) initWithImplicitlyEngagedString:stringCopy];
    goto LABEL_15;
  }

  if (typeCopy == 2 && styleCopy == 1)
  {
    v10 = [objc_alloc(MEMORY[0x277D3A3B8]) initWithExplicitlyRejectedString:stringCopy];
    goto LABEL_15;
  }

  if (typeCopy == 2 && styleCopy == 2)
  {
    v10 = [objc_alloc(MEMORY[0x277D3A3B8]) initWithImplicitlyRejectedString:stringCopy];
    goto LABEL_15;
  }

  v11 = _ICPersNamedEntityOSLogFacility(stringCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [_ICPortraitLexiconSource provideFeedbackForString:typeCopy type:styleCopy style:v11];
  }

LABEL_18:
}

- (void)startLoadingWithManager:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_254BD0000, a2, OS_LOG_TYPE_ERROR, "failed to load contact name records from Portrait: %@", &v2, 0xCu);
}

- (void)startLoadingWithManager:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_254BD0000, a2, OS_LOG_TYPE_ERROR, "failed to load named entity records from Portrait: %@", &v2, 0xCu);
}

- (void)provideFeedbackForString:(int)a1 type:(int)a2 style:(os_log_t)log .cold.1(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_254BD0000, log, OS_LOG_TYPE_ERROR, "Error: feedback received by _ICPortraitLexiconSource with unknown type or style: %d / %d", v3, 0xEu);
}

- (void)provideFeedbackForString:(unsigned __int8)a1 type:(int)a2 style:(os_log_t)log .cold.2(unsigned __int8 a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a2;
  v4 = 1024;
  v5 = a1;
  _os_log_debug_impl(&dword_254BD0000, log, OS_LOG_TYPE_DEBUG, "Feedback received by _ICPortraitLexiconSource with type = %d, style = %d", v3, 0xEu);
}

@end
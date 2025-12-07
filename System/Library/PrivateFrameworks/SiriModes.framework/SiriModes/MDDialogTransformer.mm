@interface MDDialogTransformer
+ (BOOL)_alwaysPrintSiriResponse;
+ (BOOL)supportsTransformationForAceCommand:(id)command;
+ (id)_addViewsForAddDialogs:(id)dialogs views:(id)views;
+ (id)_configurationDictionary;
+ (id)_firstSnippetInViews:(id)views;
+ (id)_redundantDUCIds;
+ (id)_removeRedundantUtteranceViewsFromAddViews:(id)views forMode:(unint64_t)mode;
+ (id)_removeSpeakableTextFromAddViews:(id)views forMode:(unint64_t)mode;
+ (id)_removeUtteranceViewsFromAddViews:(id)views forMode:(unint64_t)mode;
+ (id)_sayItForDialog:(id)dialog;
+ (id)_speakableTextForDialog:(id)dialog mode:(unint64_t)mode;
+ (id)_transformDialogAddViews:(id)views forMode:(unint64_t)mode;
+ (id)_transformLegacyAddViews:(id)views forMode:(unint64_t)mode;
+ (id)_utteranceViewForDialog:(id)dialog mode:(unint64_t)mode printedOnly:(BOOL)only;
+ (id)transformAddDialogs:(id)dialogs forMode:(unint64_t)mode;
+ (id)transformAddViews:(id)views forMode:(unint64_t)mode;
+ (unint64_t)typeOfAddViews:(id)views;
+ (void)_logModeComputationForAceCommand:(id)command mode:(unint64_t)mode;
@end

@implementation MDDialogTransformer

+ (id)transformAddViews:(id)views forMode:(unint64_t)mode
{
  v22 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  [self _logModeComputationForAceCommand:viewsCopy mode:mode];
  v8 = [self typeOfAddViews:viewsCopy];
  if (v8 == 2)
  {
    v16 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [MDDialogTransformer transformAddViews:v16 forMode:viewsCopy];
    }

    v4 = [viewsCopy copy];
    [v4 setViews:MEMORY[0x277CBEBF8]];
  }

  else
  {
    if (v8 == 1)
    {
      v13 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        aceId = [viewsCopy aceId];
        v18 = 136315394;
        v19 = "+[MDDialogTransformer transformAddViews:forMode:]";
        v20 = 2112;
        v21 = aceId;
        _os_log_impl(&dword_26807E000, v14, OS_LOG_TYPE_DEFAULT, "%s #modes Found dialog AddViews (aceId = %@)", &v18, 0x16u);
      }

      v12 = [self _transformDialogAddViews:viewsCopy forMode:mode];
    }

    else
    {
      if (v8)
      {
        goto LABEL_14;
      }

      v9 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        aceId2 = [viewsCopy aceId];
        v18 = 136315394;
        v19 = "+[MDDialogTransformer transformAddViews:forMode:]";
        v20 = 2112;
        v21 = aceId2;
        _os_log_impl(&dword_26807E000, v10, OS_LOG_TYPE_DEFAULT, "%s #modes Found legacy AddViews (aceId = %@)", &v18, 0x16u);
      }

      v12 = [self _transformLegacyAddViews:viewsCopy forMode:mode];
    }

    v4 = v12;
  }

LABEL_14:

  return v4;
}

+ (id)transformAddDialogs:(id)dialogs forMode:(unint64_t)mode
{
  v46 = *MEMORY[0x277D85DE8];
  dialogsCopy = dialogs;
  [self _logModeComputationForAceCommand:dialogsCopy mode:mode];
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    aceId = [dialogsCopy aceId];
    dialogs = [dialogsCopy dialogs];
    *buf = 136315650;
    v38 = "+[MDDialogTransformer transformAddDialogs:forMode:]";
    v39 = 2112;
    v40 = aceId;
    v41 = 2048;
    v42 = [dialogs count];
    _os_log_impl(&dword_26807E000, v9, OS_LOG_TYPE_DEFAULT, "%s #modes AddDialogs (aceId = %@) contains %tu dialogs", buf, 0x20u);
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _alwaysPrintSiriResponse = [self _alwaysPrintSiriResponse];
  if (_alwaysPrintSiriResponse)
  {
    v14 = *v7;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v38 = "+[MDDialogTransformer transformAddDialogs:forMode:]";
      _os_log_impl(&dword_26807E000, v14, OS_LOG_TYPE_DEFAULT, "%s #modes alwaysPrintSiriResponse = YES", buf, 0xCu);
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  dialogs2 = [dialogsCopy dialogs];
  v16 = [dialogs2 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(dialogs2);
        }

        v20 = *(*(&v33 + 1) + 8 * i);
        if ((_alwaysPrintSiriResponse | [v20 spokenOnly] ^ 1) == 1)
        {
          v21 = [self _utteranceViewForDialog:v20 mode:mode printedOnly:1];
          [v12 addObject:v21];
        }

        if (([v20 printedOnly] & 1) == 0 && mode <= 3 && mode != 2)
        {
          v22 = [self _sayItForDialog:v20];
          [v32 addObject:v22];
        }
      }

      v17 = [dialogs2 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v17);
  }

  v23 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v24 = v23;
    aceId2 = [v31 aceId];
    v26 = [v12 count];
    v27 = [v32 count];
    *buf = 136315906;
    v38 = "+[MDDialogTransformer transformAddDialogs:forMode:]";
    v39 = 2112;
    v40 = aceId2;
    v41 = 2048;
    v42 = v26;
    v43 = 2048;
    v44 = v27;
    _os_log_impl(&dword_26807E000, v24, OS_LOG_TYPE_DEFAULT, "%s #modes AddDialogs (aceId = %@) transformed into %tu utterance views and %tu sayIts.", buf, 0x2Au);
  }

  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v12 count])
  {
    v29 = [self _addViewsForAddDialogs:v31 views:v12];
    [v28 addObject:v29];
  }

  if ([v32 count])
  {
    [v28 addObjectsFromArray:v32];
  }

  return v28;
}

+ (BOOL)supportsTransformationForAceCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (unint64_t)typeOfAddViews:(id)views
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  views = [views views];
  v4 = [views countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(views);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        v7 |= objc_opt_isKindOfClass();
        dialog = [v10 dialog];
        LODWORD(v10) = dialog != 0;

        v6 |= v10;
      }

      v5 = [views countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);

    if (v7 & v6)
    {
      v12 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v21 = "+[MDDialogTransformer typeOfAddViews:]";
        _os_log_impl(&dword_26807E000, v12, OS_LOG_TYPE_DEFAULT, "%s #modes SAUIAddViews has type: AddViewsTypeMixed", buf, 0xCu);
      }

      return 2;
    }

    if (v6)
    {
      v14 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v21 = "+[MDDialogTransformer typeOfAddViews:]";
        _os_log_impl(&dword_26807E000, v14, OS_LOG_TYPE_DEFAULT, "%s #modes SAUIAddViews has type: AddViewsTypeDialog", buf, 0xCu);
      }

      return 1;
    }
  }

  else
  {
  }

  v15 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "+[MDDialogTransformer typeOfAddViews:]";
    _os_log_impl(&dword_26807E000, v15, OS_LOG_TYPE_DEFAULT, "%s #modes SAUIAddViews has type: AddViewsTypeLegacy", buf, 0xCu);
  }

  return 0;
}

+ (id)_transformLegacyAddViews:(id)views forMode:(unint64_t)mode
{
  v16 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  if (([self _shouldTransformLegacyAddViews] & 1) == 0)
  {
    goto LABEL_12;
  }

  if (mode < 2 || mode == 3)
  {
    if (![self _alwaysPrintSiriResponse])
    {
      v11 = [self _removeUtteranceViewsFromAddViews:viewsCopy forMode:mode];
      goto LABEL_13;
    }

    v10 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "+[MDDialogTransformer _transformLegacyAddViews:forMode:]";
      _os_log_impl(&dword_26807E000, v10, OS_LOG_TYPE_DEFAULT, "%s #modes alwaysPrintSiriResponse = YES", &v14, 0xCu);
    }

LABEL_12:
    v11 = viewsCopy;
LABEL_13:
    v4 = v11;
    goto LABEL_14;
  }

  if (mode == 2)
  {
    if ([self _alwaysPrintSiriResponse])
    {
      v8 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315138;
        v15 = "+[MDDialogTransformer _transformLegacyAddViews:forMode:]";
        _os_log_impl(&dword_26807E000, v8, OS_LOG_TYPE_DEFAULT, "%s #modes alwaysPrintSiriResponse = YES", &v14, 0xCu);
      }

      v9 = viewsCopy;
    }

    else
    {
      v9 = [self _removeRedundantUtteranceViewsFromAddViews:viewsCopy forMode:2];
    }

    v13 = v9;
    v4 = [self _removeSpeakableTextFromAddViews:v9 forMode:2];
  }

LABEL_14:

  return v4;
}

+ (id)_configurationDictionary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__MDDialogTransformer__configurationDictionary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_configurationDictionary_onceToken != -1)
  {
    dispatch_once(&_configurationDictionary_onceToken, block);
  }

  v2 = _configurationDictionary_configDictionary;

  return v2;
}

void __47__MDDialogTransformer__configurationDictionary__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = [v1 pathForResource:@"ModesConfiguration" ofType:@"plist"];

  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v2];
  v4 = _configurationDictionary_configDictionary;
  _configurationDictionary_configDictionary = v3;

  if (!_configurationDictionary_configDictionary)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __47__MDDialogTransformer__configurationDictionary__block_invoke_cold_1();
    }

    v5 = _configurationDictionary_configDictionary;
    _configurationDictionary_configDictionary = MEMORY[0x277CBEC10];
  }
}

+ (id)_redundantDUCIds
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__MDDialogTransformer__redundantDUCIds__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_redundantDUCIds_onceToken != -1)
  {
    dispatch_once(&_redundantDUCIds_onceToken, block);
  }

  v2 = _redundantDUCIds_redundantDUCIds;

  return v2;
}

void __39__MDDialogTransformer__redundantDUCIds__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) _configurationDictionary];
  v2 = [v1 objectForKeyedSubscript:@"redundantDUCs"];

  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v2, "count")}];
  v4 = _redundantDUCIds_redundantDUCIds;
  _redundantDUCIds_redundantDUCIds = v3;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = _redundantDUCIds_redundantDUCIds;
        v11 = [*(*(&v12 + 1) + 8 * v9) lowercaseString];
        [v10 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

+ (BOOL)_alwaysPrintSiriResponse
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  siriResponseShouldAlwaysPrint = [mEMORY[0x277CEF368] siriResponseShouldAlwaysPrint];

  return siriResponseShouldAlwaysPrint;
}

+ (id)_firstSnippetInViews:(id)views
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  viewsCopy = views;
  v4 = [viewsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(viewsCopy);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [viewsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (id)_removeRedundantUtteranceViewsFromAddViews:(id)views forMode:(unint64_t)mode
{
  v41 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  views = [viewsCopy views];
  v7 = [self _firstSnippetInViews:views];

  if (v7)
  {
    v27 = v7;
    _redundantDUCIds = [self _redundantDUCIds];
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    views2 = [viewsCopy views];
    v10 = [views2 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(views2);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            dialogIdentifier = [v15 dialogIdentifier];
            v17 = dialogIdentifier;
            v18 = &stru_2878F0090;
            if (dialogIdentifier)
            {
              v18 = dialogIdentifier;
            }

            v19 = v18;

            lowercaseString = [(__CFString *)v19 lowercaseString];
            v21 = [_redundantDUCIds containsObject:lowercaseString];

            if (v21)
            {
              v22 = *MEMORY[0x277CEF098];
              if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
              {
                v23 = v22;
                v24 = MDModeGetName(mode);
                *buf = 136315650;
                v35 = "+[MDDialogTransformer _removeRedundantUtteranceViewsFromAddViews:forMode:]";
                v36 = 2112;
                v37 = v19;
                v38 = 2112;
                v39 = v24;
                _os_log_impl(&dword_26807E000, v23, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing redundant AssistantUtteranceView (%@) for current mode: %@", buf, 0x20u);
              }
            }

            else
            {
              [v8 addObject:v15];
            }
          }

          else
          {
            [v8 addObject:v14];
          }
        }

        v11 = [views2 countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v11);
    }

    v25 = [viewsCopy copy];
    [v25 setViews:v8];

    v7 = v27;
  }

  else
  {
    v25 = viewsCopy;
  }

  return v25;
}

+ (id)_removeSpeakableTextFromAddViews:(id)views forMode:(unint64_t)mode
{
  v79 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  [viewsCopy views];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v68 = 0u;
  v4 = [obj countByEnumeratingWithState:&v65 objects:v78 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v66;
    v55 = *v66;
    do
    {
      v7 = 0;
      v56 = v5;
      do
      {
        if (*v66 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v65 + 1) + 8 * v7);
        speakableText = [v8 speakableText];

        if (speakableText)
        {
          speakableText2 = [v8 speakableText];
          v11 = [speakableText2 length];

          if (v11)
          {
            v12 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              v13 = v12;
              speakableText3 = [v8 speakableText];
              aceId = [v8 aceId];
              v16 = MDModeGetName(mode);
              *buf = 136315906;
              v71 = "+[MDDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
              v72 = 2112;
              v73 = speakableText3;
              v74 = 2112;
              v75 = aceId;
              v76 = 2112;
              v77 = v16;
              _os_log_impl(&dword_26807E000, v13, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableText '%@' from view %@ for current mode: %@", buf, 0x2Au);
            }
          }

          [v8 setSpeakableText:0];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v8;
          speakableSuffix = [v17 speakableSuffix];
          v19 = [speakableSuffix length];

          if (v19)
          {
            v20 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              v21 = v20;
              speakableSuffix2 = [v17 speakableSuffix];
              aceId2 = [v17 aceId];
              v24 = MDModeGetName(mode);
              *buf = 136315906;
              v71 = "+[MDDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
              v72 = 2112;
              v73 = speakableSuffix2;
              v74 = 2112;
              v75 = aceId2;
              v76 = 2112;
              v77 = v24;
              _os_log_impl(&dword_26807E000, v21, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableSuffix '%@' from SAUIDisambiguationList %@ for current mode: %@", buf, 0x2Au);
            }
          }

          [v17 setSpeakableSuffix:0];
          speakableDelimiter = [v17 speakableDelimiter];
          v26 = [speakableDelimiter length];

          if (v26)
          {
            v27 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              v28 = v27;
              speakableDelimiter2 = [v17 speakableDelimiter];
              aceId3 = [v17 aceId];
              v31 = MDModeGetName(mode);
              *buf = 136315906;
              v71 = "+[MDDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
              v72 = 2112;
              v73 = speakableDelimiter2;
              v74 = 2112;
              v75 = aceId3;
              v76 = 2112;
              v77 = v31;
              _os_log_impl(&dword_26807E000, v28, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableDelimiter '%@' from SAUIDisambiguationList %@ for current mode: %@", buf, 0x2Au);
            }
          }

          v59 = v7;
          [v17 setSpeakableDelimiter:0];
          speakableFinalDelimiter = [v17 speakableFinalDelimiter];
          v33 = [speakableFinalDelimiter length];

          if (v33)
          {
            v34 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              v35 = v34;
              speakableFinalDelimiter2 = [v17 speakableFinalDelimiter];
              aceId4 = [v17 aceId];
              v38 = MDModeGetName(mode);
              *buf = 136315906;
              v71 = "+[MDDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
              v72 = 2112;
              v73 = speakableFinalDelimiter2;
              v74 = 2112;
              v75 = aceId4;
              v76 = 2112;
              v77 = v38;
              _os_log_impl(&dword_26807E000, v35, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableFinalDelimiter '%@' from SAUIDisambiguationList %@ for current mode: %@", buf, 0x2Au);
            }
          }

          [v17 setSpeakableFinalDelimiter:0];
          v58 = v17;
          items = [v17 items];
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v40 = [items countByEnumeratingWithState:&v61 objects:v69 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v62;
            do
            {
              for (i = 0; i != v41; ++i)
              {
                if (*v62 != v42)
                {
                  objc_enumerationMutation(items);
                }

                v44 = *(*(&v61 + 1) + 8 * i);
                speakableText4 = [v44 speakableText];
                v46 = [speakableText4 length];

                if (v46)
                {
                  v47 = *MEMORY[0x277CEF098];
                  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
                  {
                    v48 = v47;
                    speakableText5 = [v44 speakableText];
                    aceId5 = [v44 aceId];
                    v51 = MDModeGetName(mode);
                    *buf = 136315906;
                    v71 = "+[MDDialogTransformer _removeSpeakableTextFromAddViews:forMode:]";
                    v72 = 2112;
                    v73 = speakableText5;
                    v74 = 2112;
                    v75 = aceId5;
                    v76 = 2112;
                    v77 = v51;
                    _os_log_impl(&dword_26807E000, v48, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing speakableText '%@' from SAUIListItem %@ for current mode: %@", buf, 0x2Au);
                  }
                }

                [v44 setSpeakableText:0];
              }

              v41 = [items countByEnumeratingWithState:&v61 objects:v69 count:16];
            }

            while (v41);
          }

          [v58 setItems:items];

          v6 = v55;
          v5 = v56;
          v7 = v59;
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v65 objects:v78 count:16];
    }

    while (v5);
  }

  v52 = [viewsCopy copy];
  [v52 setViews:obj];

  return v52;
}

+ (id)_removeUtteranceViewsFromAddViews:(id)views forMode:(unint64_t)mode
{
  v60 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  views = [viewsCopy views];
  v7 = [self _firstSnippetInViews:views];
  if (v7)
  {
    selfCopy = self;
    v42 = viewsCopy;
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v40 = v7;
    listenAfterSpeaking = [v7 listenAfterSpeaking];
    [listenAfterSpeaking BOOLValue];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v41 = views;
    v10 = views;
    v11 = [v10 countByEnumeratingWithState:&v47 objects:v59 count:16];
    v44 = v8;
    if (v11)
    {
      v12 = v11;
      v13 = *v48;
      v14 = 1;
      v15 = v45;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v48 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v47 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
            speakableText = [v18 speakableText];

            if (speakableText)
            {
              speakableText2 = [v18 speakableText];
              [v8 addObject:speakableText2];

              v14 &= [v18 canUseServerTTS];
            }

            dialogIdentifier = [v18 dialogIdentifier];

            if (dialogIdentifier)
            {
              dialogIdentifier2 = [v18 dialogIdentifier];
              [v15 addObject:dialogIdentifier2];
            }

            listenAfterSpeaking2 = [v18 listenAfterSpeaking];
            [listenAfterSpeaking2 BOOLValue];

            v24 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              v25 = v24;
              dialogIdentifier3 = [v18 dialogIdentifier];
              v27 = MDModeGetName(mode);
              *buf = 136315650;
              v54 = "+[MDDialogTransformer _removeUtteranceViewsFromAddViews:forMode:]";
              v55 = 2112;
              v56 = dialogIdentifier3;
              v57 = 2112;
              v58 = v27;
              _os_log_impl(&dword_26807E000, v25, OS_LOG_TYPE_DEFAULT, "%s #modes Suppressing AssistantUtteranceView (%@) for current mode: %@", buf, 0x20u);

              v8 = v44;
              v15 = v45;
            }
          }

          else
          {
            [v46 addObject:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v47 objects:v59 count:16];
      }

      while (v12);
    }

    else
    {
      LOBYTE(v14) = 1;
    }

    v7 = v40;
    speakableText3 = [v40 speakableText];

    if (speakableText3)
    {
      speakableText4 = [v40 speakableText];
      [v8 addObject:speakableText4];
    }

    if ([v8 count])
    {
      v31 = [v8 componentsJoinedByString:@"\n"];
      [v40 setSpeakableText:v31];
      [v40 setCanUseServerTTS:v14 & 1];
    }

    if (v45)
    {
      aceId = [v40 aceId];

      if (aceId)
      {
        v33 = MEMORY[0x277CBEB38];
        v51[0] = @"snippetAceId";
        aceId2 = [v40 aceId];
        v51[1] = @"dialogIdentifiers";
        v52[0] = aceId2;
        v52[1] = v45;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
        v36 = [v33 dictionaryWithDictionary:v35];
        [v39 setDialogIdentifiers:v36];
      }
    }

    viewsCopy = v42;
    v28 = [v42 copy];
    [v28 setViews:v46];

    views = v41;
  }

  else
  {
    v28 = viewsCopy;
  }

  return v28;
}

+ (id)_transformDialogAddViews:(id)views forMode:(unint64_t)mode
{
  v54 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v35 = viewsCopy;
  views = [viewsCopy views];
  v9 = [views countByEnumeratingWithState:&v40 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    v39 = views;
    do
    {
      v12 = 0;
      do
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(views);
        }

        v13 = *(*(&v40 + 1) + 8 * v12);
        dialog = [v13 dialog];
        if (!dialog)
        {
          [v7 addObject:v13];
          goto LABEL_16;
        }

        if ([self _alwaysPrintSiriResponse])
        {
          v15 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v48 = "+[MDDialogTransformer _transformDialogAddViews:forMode:]";
            _os_log_impl(&dword_26807E000, v15, OS_LOG_TYPE_DEFAULT, "%s #modes alwaysPrintSiriResponse = YES", buf, 0xCu);
          }

          v16 = [self _utteranceViewForDialog:dialog mode:mode printedOnly:{objc_msgSend(dialog, "printedOnly")}];
          v52[0] = v16;
          v52[1] = v13;
          v17 = MEMORY[0x277CBEA60];
          v18 = v52;
          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v16 = [self _utteranceViewForDialog:dialog mode:mode printedOnly:0];
          v51[0] = v16;
          v51[1] = v13;
          v17 = MEMORY[0x277CBEA60];
          v18 = v51;
LABEL_15:
          v19 = [v17 arrayWithObjects:v18 count:2];
          [v7 addObjectsFromArray:v19];

          goto LABEL_16;
        }

        if (mode < 2 || mode == 3)
        {
          if ([dialog printedOnly])
          {
            v23 = v13;
            v24 = [self _utteranceViewForDialog:dialog mode:mode printedOnly:1];
            [v7 addObject:v24];
          }

          else
          {
            v23 = [v13 copy];
            v25 = [self _speakableTextForDialog:dialog mode:mode];
            [v23 setSpeakableText:v25];

            [v23 setCanUseServerTTS:{objc_msgSend(dialog, "canUseServerTTS")}];
            dialogIdentifier = [dialog dialogIdentifier];
            if (dialogIdentifier)
            {
              v27 = dialogIdentifier;
              aceId = [v23 aceId];

              if (aceId)
              {
                v29 = MEMORY[0x277CBEB38];
                v45[0] = @"snippetAceId";
                aceId2 = [v23 aceId];
                v45[1] = @"dialogIdentifiers";
                v46[0] = aceId2;
                dialogIdentifier2 = [dialog dialogIdentifier];
                v44 = dialogIdentifier2;
                v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
                v46[1] = v36;
                v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
                v31 = [v29 dictionaryWithDictionary:v30];
                [self setDialogIdentifiers:v31];
              }

              views = v39;
            }
          }

          goto LABEL_34;
        }

        if (mode == 2)
        {
          if ([dialog spokenOnly])
          {
            v20 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              v21 = v20;
              dialogIdentifier3 = [dialog dialogIdentifier];
              *buf = 136315394;
              v48 = "+[MDDialogTransformer _transformDialogAddViews:forMode:]";
              v49 = 2112;
              v50 = dialogIdentifier3;
              _os_log_impl(&dword_26807E000, v21, OS_LOG_TYPE_DEFAULT, "%s #modes IGNORING Dialog (%@) for DisplayOnly Mode since it is Spoken Only", buf, 0x16u);

              views = v39;
              goto LABEL_32;
            }
          }

          else
          {
            v21 = [self _utteranceViewForDialog:dialog mode:2 printedOnly:0];
            [v7 addObject:v21];
LABEL_32:
          }

          v23 = v13;
          goto LABEL_34;
        }

        v23 = 0;
LABEL_34:
        [v7 addObject:v23];

LABEL_16:
        ++v12;
      }

      while (v10 != v12);
      v32 = [views countByEnumeratingWithState:&v40 objects:v53 count:16];
      v10 = v32;
    }

    while (v32);
  }

  v33 = [v35 copy];
  [v33 setViews:v7];

  return v33;
}

+ (id)_utteranceViewForDialog:(id)dialog mode:(unint64_t)mode printedOnly:(BOOL)only
{
  onlyCopy = only;
  v42 = *MEMORY[0x277D85DE8];
  dialogCopy = dialog;
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    dialogIdentifier = [dialogCopy dialogIdentifier];
    v12 = MDModeGetName(mode);
    v36 = 136315650;
    v37 = "+[MDDialogTransformer _utteranceViewForDialog:mode:printedOnly:]";
    v38 = 2112;
    v39 = dialogIdentifier;
    v40 = 2112;
    v41 = v12;
    _os_log_impl(&dword_26807E000, v10, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming Dialog (%@) into an Utterance View for current mode: %@", &v36, 0x20u);
  }

  v13 = objc_alloc_init(MEMORY[0x277D47A00]);
  aceId = [dialogCopy aceId];
  [v13 setAceId:aceId];

  refId = [dialogCopy refId];
  [v13 setRefId:refId];

  [v13 setCanUseServerTTS:{objc_msgSend(dialogCopy, "canUseServerTTS")}];
  configuration = [dialogCopy configuration];
  context = [configuration context];
  [v13 setContext:context];

  dialogIdentifier2 = [dialogCopy dialogIdentifier];
  [v13 setDialogIdentifier:dialogIdentifier2];

  metricsContext = [dialogCopy metricsContext];
  [v13 setMetricsContext:metricsContext];

  dialogCategory = [dialogCopy dialogCategory];
  [v13 setDialogCategory:dialogCategory];

  if (onlyCopy)
  {
    content = [dialogCopy content];
    text = [content text];
LABEL_5:

    v23 = 0;
    goto LABEL_19;
  }

  text = 0;
  if (mode <= 1)
  {
    if (mode)
    {
      v23 = 0;
      if (mode != 1)
      {
        goto LABEL_19;
      }

      caption = [dialogCopy caption];
      text2 = [caption text];
      v26 = text2;
      if (text2)
      {
        text = text2;
      }

      else
      {
        content2 = [dialogCopy content];
        text = [content2 text];
      }

      selfCopy2 = self;
      v31 = dialogCopy;
      modeCopy = 1;
      goto LABEL_18;
    }

LABEL_15:
    content3 = [dialogCopy content];
    text = [content3 text];

    selfCopy2 = self;
    v31 = dialogCopy;
    modeCopy = mode;
LABEL_18:
    v23 = [selfCopy2 _speakableTextForDialog:v31 mode:modeCopy];
    goto LABEL_19;
  }

  if (mode == 3)
  {
    goto LABEL_15;
  }

  v23 = 0;
  if (mode == 2)
  {
    content = [dialogCopy caption];
    text3 = [content text];
    v28 = text3;
    if (text3)
    {
      text = text3;
    }

    else
    {
      content4 = [dialogCopy content];
      text = [content4 text];
    }

    goto LABEL_5;
  }

LABEL_19:
  [v13 setText:text];
  [v13 setSpeakableText:v23];

  return v13;
}

+ (id)_speakableTextForDialog:(id)dialog mode:(unint64_t)mode
{
  v26 = *MEMORY[0x277D85DE8];
  dialogCopy = dialog;
  v7 = dialogCopy;
  if (mode <= 1)
  {
    if (mode)
    {
      if (mode != 1)
      {
        goto LABEL_22;
      }

      caption = [dialogCopy caption];

      v9 = *MEMORY[0x277CEF098];
      v10 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
      if (caption)
      {
        if (v10)
        {
          v11 = v9;
          dialogIdentifier = [v7 dialogIdentifier];
          *v25 = 136315394;
          *&v25[4] = "+[MDDialogTransformer _speakableTextForDialog:mode:]";
          *&v25[12] = 2112;
          *&v25[14] = dialogIdentifier;
          _os_log_impl(&dword_26807E000, v11, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming Dialog (%@) CAPTION into speakable text for DisplayForward Mode", v25, 0x16u);
        }

        caption2 = [v7 caption];
        speakableTextOverride = [caption2 speakableTextOverride];
        if (!speakableTextOverride)
        {
          caption3 = [v7 caption];
LABEL_20:
          v23 = caption3;
          text = [caption3 text];

          goto LABEL_21;
        }

        goto LABEL_18;
      }

      if (!v10)
      {
LABEL_17:
        caption2 = [v7 content];
        speakableTextOverride = [caption2 speakableTextOverride];
        if (!speakableTextOverride)
        {
          caption3 = [v7 content];
          goto LABEL_20;
        }

LABEL_18:
        text = speakableTextOverride;
LABEL_21:

        goto LABEL_22;
      }

      v20 = v9;
      dialogIdentifier2 = [v7 dialogIdentifier];
      *v25 = 136315394;
      *&v25[4] = "+[MDDialogTransformer _speakableTextForDialog:mode:]";
      *&v25[12] = 2112;
      *&v25[14] = dialogIdentifier2;
      v22 = "%s #modes Transforming Dialog (%@) CONTENT into speakable text for DisplayForward Mode (Caption is nil)";
LABEL_16:
      _os_log_impl(&dword_26807E000, v20, OS_LOG_TYPE_DEFAULT, v22, v25, 0x16u);

      goto LABEL_17;
    }

LABEL_14:
    v19 = *MEMORY[0x277CEF098];
    if (!os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v20 = v19;
    dialogIdentifier2 = [v7 dialogIdentifier];
    *v25 = 136315394;
    *&v25[4] = "+[MDDialogTransformer _speakableTextForDialog:mode:]";
    *&v25[12] = 2112;
    *&v25[14] = dialogIdentifier2;
    v22 = "%s #modes Transforming Dialog (%@) CONTENT into speakable text for VoiceOnly Mode";
    goto LABEL_16;
  }

  if (mode == 3)
  {
    goto LABEL_14;
  }

  if (mode == 2)
  {
    v16 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      dialogIdentifier3 = [v7 dialogIdentifier];
      *v25 = 136315394;
      *&v25[4] = "+[MDDialogTransformer _speakableTextForDialog:mode:]";
      *&v25[12] = 2112;
      *&v25[14] = dialogIdentifier3;
      _os_log_impl(&dword_26807E000, v17, OS_LOG_TYPE_DEFAULT, "%s #modes IGNORING Dialog (%@) speakable text for DisplayOnly Mode", v25, 0x16u);
    }

    text = 0;
  }

LABEL_22:

  return text;
}

+ (id)_sayItForDialog:(id)dialog
{
  v27 = *MEMORY[0x277D85DE8];
  dialogCopy = dialog;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    dialogIdentifier = [dialogCopy dialogIdentifier];
    v23 = 136315394;
    v24 = "+[MDDialogTransformer _sayItForDialog:]";
    v25 = 2112;
    v26 = dialogIdentifier;
    _os_log_impl(&dword_26807E000, v5, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming Dialog (%@) into a SayIt", &v23, 0x16u);
  }

  v7 = objc_alloc_init(MEMORY[0x277D47B10]);
  aceId = [dialogCopy aceId];
  [v7 setAceId:aceId];

  refId = [dialogCopy refId];
  [v7 setRefId:refId];

  [v7 setCanUseServerTTS:{objc_msgSend(dialogCopy, "canUseServerTTS")}];
  configuration = [dialogCopy configuration];
  context = [configuration context];
  [v7 setContext:context];

  dialogIdentifier2 = [dialogCopy dialogIdentifier];
  [v7 setDialogIdentifier:dialogIdentifier2];

  configuration2 = [dialogCopy configuration];
  gender = [configuration2 gender];
  [v7 setGender:gender];

  configuration3 = [dialogCopy configuration];
  languageCode = [configuration3 languageCode];
  [v7 setLanguageCode:languageCode];

  content = [dialogCopy content];
  speakableTextOverride = [content speakableTextOverride];
  if (speakableTextOverride)
  {
    [v7 setMessage:speakableTextOverride];
  }

  else
  {
    content2 = [dialogCopy content];
    text = [content2 text];
    [v7 setMessage:text];
  }

  metricsContext = [dialogCopy metricsContext];
  [v7 setMetricsContext:metricsContext];

  return v7;
}

+ (id)_addViewsForAddDialogs:(id)dialogs views:(id)views
{
  v24 = *MEMORY[0x277D85DE8];
  dialogsCopy = dialogs;
  viewsCopy = views;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    aceId = [dialogsCopy aceId];
    v20 = 136315394;
    v21 = "+[MDDialogTransformer _addViewsForAddDialogs:views:]";
    v22 = 2112;
    v23 = aceId;
    _os_log_impl(&dword_26807E000, v8, OS_LOG_TYPE_DEFAULT, "%s #modes Transforming AddDialog (aceId = %@) into an AddViews", &v20, 0x16u);
  }

  v10 = objc_alloc_init(MEMORY[0x277D479E8]);
  aceId2 = [dialogsCopy aceId];
  [v10 setAceId:aceId2];

  refId = [dialogsCopy refId];
  [v10 setRefId:refId];

  metricsContext = [dialogsCopy metricsContext];
  [v10 setMetricsContext:metricsContext];

  listenAfterSpeaking = [dialogsCopy listenAfterSpeaking];

  if (listenAfterSpeaking)
  {
    lastObject = [viewsCopy lastObject];
    listenAfterSpeaking2 = [dialogsCopy listenAfterSpeaking];
    [lastObject setListenAfterSpeaking:listenAfterSpeaking2];

    lastObject2 = [viewsCopy lastObject];
    listenAfterSpeakingBehavior = [dialogsCopy listenAfterSpeakingBehavior];
    [lastObject2 setListenAfterSpeakingBehavior:listenAfterSpeakingBehavior];
  }

  [v10 setViews:viewsCopy];

  return v10;
}

+ (void)_logModeComputationForAceCommand:(id)command mode:(unint64_t)mode
{
  commandCopy = command;
  aceId = [commandCopy aceId];

  if (aceId)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    aceId2 = [commandCopy aceId];
    [dictionary setObject:aceId2 forKey:@"aceId"];

    v9 = MDModeGetNameForAnalytics(mode);
    [dictionary setObject:v9 forKey:@"mode"];

    encodedClassName = [commandCopy encodedClassName];
    [dictionary setObject:encodedClassName forKey:@"aceClass"];

    _analytics = [self _analytics];
    [_analytics logEventWithType:5602 context:dictionary];
  }
}

+ (void)transformAddViews:(void *)a1 forMode:(void *)a2 .cold.1(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 aceId];
  v5[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_26807E000, v3, OS_LOG_TYPE_ERROR, "%s #modes Invalid AddViews (aceId = %@). Both AssistantUtteranceView and Dialog on the same AddViews is unsupported.", v5, 0x16u);
}

void __47__MDDialogTransformer__configurationDictionary__block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_26807E000, v0, OS_LOG_TYPE_ERROR, "%s #modes Failed to load configuration file: %@", v1, 0x16u);
}

@end
@interface VCShortcutsObliterator
- (BOOL)deleteAppGroupWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)deleteDataVaultWithError:(id *)error;
- (BOOL)deleteKeychainItemsWithError:(id *)error;
- (BOOL)terminateProcessWithIdentifier:(id)identifier assertion:(id *)assertion error:(id *)error;
- (VCShortcutsObliterator)initWithTriggerRegistrar:(id)registrar syncDataHandlers:(id)handlers;
- (void)obliterate:(id *)obliterate;
- (void)resetWatchSync;
@end

@implementation VCShortcutsObliterator

- (void)resetWatchSync
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  syncDataHandlers = [(VCShortcutsObliterator *)self syncDataHandlers];
  v3 = [syncDataHandlers valueForKeyPath:@"@distinctUnionOfArrays.services"];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = v8;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;

        [v10 requestFullResync];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (BOOL)terminateProcessWithIdentifier:(id)identifier assertion:(id *)assertion error:(id *)error
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCShortcutsObliterator.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v10 = [MEMORY[0x277D46F60] identityForEmbeddedApplicationIdentifier:identifierCopy];
  v11 = [MEMORY[0x277D46FA0] predicateMatchingIdentity:v10];
  v12 = [objc_alloc(MEMORY[0x277D47010]) initWithExplanation:@"VCShortcutsObliterator is terminating Shortcuts processes upon a data obliteration request"];
  [v12 setMaximumTerminationResistance:40];
  v13 = [objc_alloc(MEMORY[0x277D47018]) initWithPredicate:v11 context:v12];
  v24 = 0;
  v25 = 0;
  v14 = [v13 execute:&v25 error:&v24];
  v15 = v25;
  v16 = v24;
  if (assertion)
  {
    v17 = v15;
    *assertion = v15;
  }

  if ((v14 & 1) == 0)
  {
    domain = [v16 domain];
    if ([domain isEqualToString:*MEMORY[0x277D47088]])
    {
      errorCopy = error;
      code = [v16 code];

      if (code != 3)
      {
        error = errorCopy;
        if (!errorCopy)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      domain = v16;
      v16 = 0;
      error = errorCopy;
    }

    if (error)
    {
LABEL_10:
      v20 = v16;
      *error = v16;
    }
  }

LABEL_11:

  return v14;
}

- (BOOL)deleteDataVaultWithError:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D7A338];
  v18 = 0;
  v19 = 0;
  v5 = [(VCShortcutsObliterator *)self terminateProcessWithIdentifier:v4 assertion:&v19 error:&v18];
  v6 = v19;
  v7 = v18;
  v8 = v7;
  if (!v5 && v7)
  {
    v9 = getWFObliteratorLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v21 = "[VCShortcutsObliterator deleteDataVaultWithError:]";
      v22 = 2114;
      v23 = v4;
      v24 = 2114;
      v25 = v8;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_FAULT, "%s Terminating %{public}@ failed with error: %{public}@", buf, 0x20u);
    }

    if (error)
    {
      v10 = v8;
      *error = v8;
    }
  }

  wf_shortcutsDirectoryURL = [MEMORY[0x277CBEBC0] wf_shortcutsDirectoryURL];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v17 = 0;
  v13 = [defaultManager removeItemAtURL:wf_shortcutsDirectoryURL error:&v17];
  v14 = v17;

  if (v6)
  {
    [v6 invalidate];
  }

  if ([v14 vc_isFileNotFound])
  {

    v14 = 0;
    v13 = 1;
  }

  else if (error && v14)
  {
    v15 = v14;
    *error = v14;
  }

  return v13;
}

- (BOOL)deleteAppGroupWithIdentifier:(id)identifier error:(id *)error
{
  v20[3] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCShortcutsObliterator.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  [identifierCopy UTF8String];
  container_create_or_lookup_for_current_user();
  v8 = identifierCopy;
  v18 = v8;
  v9 = container_delete();
  v10 = v9 == 21 || v9 == 1;
  if (v9 != 1 && v9 != 21)
  {
    v11 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Moving %@'s app group container out of its live location failed with error: %llu", v8, v9];
    v20[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v14 = [v11 errorWithDomain:@"VCShortcutsObliteratorErrorDomain" code:2 userInfo:v13];

    if (error)
    {
      v15 = v14;
      *error = v14;
    }
  }

  return v10;
}

void __61__VCShortcutsObliterator_deleteAppGroupWithIdentifier_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2 != 1 && a2 != 21)
  {
    v4 = getWFObliteratorLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = *(a1 + 32);
      v6 = 136315650;
      v7 = "[VCShortcutsObliterator deleteAppGroupWithIdentifier:error:]_block_invoke";
      v8 = 2114;
      v9 = v5;
      v10 = 2048;
      v11 = a2;
      _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_FAULT, "%s container_delete for app group %{public}@ failed with error: %llu", &v6, 0x20u);
    }
  }
}

- (BOOL)deleteKeychainItemsWithError:(id *)error
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CDBEC8];
  v14[0] = *MEMORY[0x277CDC228];
  v14[1] = v4;
  v5 = *MEMORY[0x277CFC730];
  v15[0] = *MEMORY[0x277CDC238];
  v15[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v7 = SecItemDelete(v6);
  v8 = v7;
  if (v7 != -25300 && v7 != 0)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v7 userInfo:0];
    if (error)
    {
      v10 = v10;
      *error = v10;
    }
  }

  if (v8)
  {
    v11 = v8 == -25300;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;

  return v12;
}

- (void)obliterate:(id *)obliterate
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = getWFObliteratorLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v49 = "[VCShortcutsObliterator obliterate:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Starting obliterator", buf, 0xCu);
  }

  obliterateCopy = obliterate;

  v6 = getWFObliteratorLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v49 = "[VCShortcutsObliterator obliterate:]";
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_INFO, "%s Unregistering triggers...", buf, 0xCu);
  }

  triggerRegistrar = [(VCShortcutsObliterator *)self triggerRegistrar];
  [triggerRegistrar unregisterAllTriggers];

  v8 = getWFObliteratorLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v49 = "[VCShortcutsObliterator obliterate:]";
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_INFO, "%s Deleting keychain...", buf, 0xCu);
  }

  v47 = 0;
  v9 = [(VCShortcutsObliterator *)self deleteKeychainItemsWithError:&v47];
  v10 = v47;
  if (v9)
  {
    goto LABEL_12;
  }

  v11 = getWFObliteratorLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v49 = "[VCShortcutsObliterator obliterate:]";
    v50 = 2114;
    v51 = v10;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_FAULT, "%s Deleting keychain failed with error: %{public}@", buf, 0x16u);
  }

  if (!v10)
  {
LABEL_12:
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  v13 = getWFObliteratorLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v49 = "[VCShortcutsObliterator obliterate:]";
    _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_INFO, "%s Deleting app groups...", buf, 0xCu);
  }

  v39 = v10;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = *MEMORY[0x277CFC720];
  v54[0] = *MEMORY[0x277CFC6E0];
  v54[1] = v14;
  v54[2] = *MEMORY[0x277CFC728];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];
  v16 = [v15 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v44;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        v21 = v18;
        if (*v44 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v22 = *(*(&v43 + 1) + 8 * i);
        v42 = v18;
        v23 = [(VCShortcutsObliterator *)self deleteAppGroupWithIdentifier:v22 error:&v42, v39];
        v18 = v42;

        if (!v23)
        {
          v24 = getWFObliteratorLogObject();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315650;
            v49 = "[VCShortcutsObliterator obliterate:]";
            v50 = 2112;
            v51 = v22;
            v52 = 2114;
            v53 = v18;
            _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_FAULT, "%s Deleting the %@ app group failed with error: %{public}@", buf, 0x20u);
          }

          if (v18)
          {
            v25 = v18;

            v12 = v25;
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  v26 = getWFObliteratorLogObject();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v49 = "[VCShortcutsObliterator obliterate:]";
    _os_log_impl(&dword_23103C000, v26, OS_LOG_TYPE_INFO, "%s Clearing user defaults...", buf, 0xCu);
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removePersistentDomainForName:*MEMORY[0x277D7A348]];

  v28 = getWFObliteratorLogObject();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v49 = "[VCShortcutsObliterator obliterate:]";
    _os_log_impl(&dword_23103C000, v28, OS_LOG_TYPE_INFO, "%s Clearing Siri Vocab...", buf, 0xCu);
  }

  mEMORY[0x277CD42E8] = [MEMORY[0x277CD42E8] sharedVocabulary];
  v30 = objc_opt_new();
  [mEMORY[0x277CD42E8] setVocabularyStrings:v30 ofType:50000];

  v31 = getWFObliteratorLogObject();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v49 = "[VCShortcutsObliterator obliterate:]";
    _os_log_impl(&dword_23103C000, v31, OS_LOG_TYPE_INFO, "%s Deleting data vault...", buf, 0xCu);
  }

  v41 = 0;
  v32 = [(VCShortcutsObliterator *)self deleteDataVaultWithError:&v41];
  v33 = v41;
  if (!v32)
  {
    v34 = getWFObliteratorLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v49 = "[VCShortcutsObliterator obliterate:]";
      v50 = 2114;
      v51 = v33;
      _os_log_impl(&dword_23103C000, v34, OS_LOG_TYPE_FAULT, "%s Deleting data vault failed with error: %{public}@", buf, 0x16u);
    }

    if (v33)
    {
      v35 = v33;

      v12 = v35;
    }
  }

  v36 = getWFObliteratorLogObject();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v49 = "[VCShortcutsObliterator obliterate:]";
    _os_log_impl(&dword_23103C000, v36, OS_LOG_TYPE_INFO, "%s Resetting watch sync...", buf, 0xCu);
  }

  [(VCShortcutsObliterator *)self resetWatchSync];
  v37 = getWFObliteratorLogObject();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v49 = "[VCShortcutsObliterator obliterate:]";
    _os_log_impl(&dword_23103C000, v37, OS_LOG_TYPE_INFO, "%s Finished obliterating", buf, 0xCu);
  }

  if (obliterateCopy)
  {
    v38 = v12;
    *obliterateCopy = v12;
  }
}

- (VCShortcutsObliterator)initWithTriggerRegistrar:(id)registrar syncDataHandlers:(id)handlers
{
  registrarCopy = registrar;
  handlersCopy = handlers;
  if (!handlersCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCShortcutsObliterator.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"syncDataHandlers"}];
  }

  v15.receiver = self;
  v15.super_class = VCShortcutsObliterator;
  v10 = [(VCShortcutsObliterator *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_triggerRegistrar, registrar);
    objc_storeStrong(&v11->_syncDataHandlers, handlers);
    v12 = v11;
  }

  return v11;
}

@end
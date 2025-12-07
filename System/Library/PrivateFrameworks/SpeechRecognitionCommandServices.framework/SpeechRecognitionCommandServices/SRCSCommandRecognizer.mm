@interface SRCSCommandRecognizer
- (SRCSCommandRecognizer)initWithCommandRecognitionSystem:(id)system commandIdentifiers:(id)identifiers;
- (SRCSCommandRecognizer)initWithCommandRecognitionSystem:(id)system spokenCommands:(id)commands;
- (id)commandRecognitionSystem;
@end

@implementation SRCSCommandRecognizer

- (SRCSCommandRecognizer)initWithCommandRecognitionSystem:(id)system commandIdentifiers:(id)identifiers
{
  v29 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  identifiersCopy = identifiers;
  v8 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = identifiersCopy;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        v15 = [SRCSSpokenCommand alloc];
        v16 = [(SRCSSpokenCommand *)v15 initWithIdentifier:v14, v22];
        if (!v16)
        {
          v19 = SRCSLogGeneral(0);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v27 = v14;
            _os_log_impl(&dword_26B44D000, v19, OS_LOG_TYPE_DEFAULT, "Error, could not create command %@!", buf, 0xCu);
          }

          selfCopy = 0;
          goto LABEL_13;
        }

        v17 = v16;
        [v8 addObject:v16];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  self = [(SRCSCommandRecognizer *)self initWithCommandRecognitionSystem:systemCopy spokenCommands:v8];
  selfCopy = self;
LABEL_13:
  v20 = selfCopy;

  return v20;
}

- (SRCSCommandRecognizer)initWithCommandRecognitionSystem:(id)system spokenCommands:(id)commands
{
  v25 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  commandsCopy = commands;
  v23.receiver = self;
  v23.super_class = SRCSCommandRecognizer;
  v8 = [(SRCSCommandRecognizer *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_commandRecognitionSystem, systemCopy);
    objc_storeStrong(&v9->_spokenCommands, commands);
    if (initWithCommandRecognitionSystem_spokenCommands__staticInitialization != -1)
    {
      [SRCSCommandRecognizer initWithCommandRecognitionSystem:spokenCommands:];
    }

    [systemCopy addRecognizer:v9];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v9->_spokenCommands;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v19 + 1) + 8 * i) setCommandRecognizer:v9];
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }

    v15 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__SRCSCommandRecognizer_initWithCommandRecognitionSystem_spokenCommands___block_invoke_2;
    block[3] = &unk_279CF53B0;
    v18 = v9;
    dispatch_async(v15, block);
  }

  return v9;
}

void __73__SRCSCommandRecognizer_initWithCommandRecognitionSystem_spokenCommands___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [*(a1 + 32) spokenCommands];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v9 + 1) + 8 * i) fstGrammar];
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v3 = SRCSLogGeneral(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __73__SRCSCommandRecognizer_initWithCommandRecognitionSystem_spokenCommands___block_invoke_2_cold_1(v3);
    }
  }
}

- (id)commandRecognitionSystem
{
  WeakRetained = objc_loadWeakRetained(&self->_commandRecognitionSystem);

  return WeakRetained;
}

@end
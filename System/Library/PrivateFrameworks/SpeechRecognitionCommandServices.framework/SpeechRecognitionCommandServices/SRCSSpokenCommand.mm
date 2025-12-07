@interface SRCSSpokenCommand
- (SRCSSpokenCommand)initWithIdentifier:(id)identifier;
- (SRCSSpokenCommand)initWithStrings:(id)strings;
- (id)_initWithSpokenCommand:(id)command;
- (id)commandRecognizer;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)fstGrammar;
- (id)languageModelTree;
- (void)_replaceBuiltInIdentiferNodesWithSubTreesInMutableLM:(id)m;
@end

@implementation SRCSSpokenCommand

- (SRCSSpokenCommand)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SRCSSpokenCommand;
  v6 = [(SRCSSpokenCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (SRCSSpokenCommand)initWithStrings:(id)strings
{
  stringsCopy = strings;
  _uniqueCustomCommandIdentifier = [(SRCSSpokenCommand *)self _uniqueCustomCommandIdentifier];
  v6 = [(SRCSSpokenCommand *)self initWithIdentifier:_uniqueCustomCommandIdentifier];

  strings = v6->_strings;
  v6->_strings = stringsCopy;

  return v6;
}

- (id)_initWithSpokenCommand:(id)command
{
  commandCopy = command;
  v12.receiver = self;
  v12.super_class = SRCSSpokenCommand;
  v5 = [(SRCSSpokenCommand *)&v12 init];
  if (v5)
  {
    identifier = [commandCopy identifier];
    identifier = v5->_identifier;
    v5->_identifier = identifier;

    strings = [commandCopy strings];
    strings = v5->_strings;
    v5->_strings = strings;

    commandRecognizer = [commandCopy commandRecognizer];
    objc_storeWeak(&v5->_commandRecognizer, commandRecognizer);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 _initWithSpokenCommand:self];
}

- (id)commandRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_commandRecognizer);

  return WeakRetained;
}

- (id)languageModelTree
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_languageModelTree)
  {
    if ([(NSArray *)selfCopy->_strings count])
    {
      v3 = [(NSArray *)selfCopy->_strings componentsJoinedByString:@"|"];
      v27 = 0;
      v4 = [SRCSCommandStringsTable languageModelDictionaryFromCommandText:v3 parsingErrorString:&v27];
      commandRecognitionSystem = v27;

      if (v4 && (v6 = [commandRecognitionSystem length]) == 0)
      {
        [v4 setObject:selfCopy->_identifier forKey:kSRCSCommandParseDictionaryKeyIdentifier[0]];
        v21 = v4;
        p_super = &selfCopy->_languageModelTree->super.super;
        selfCopy->_languageModelTree = v21;
      }

      else
      {
        p_super = SRCSLogGeneral(v6);
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
        {
          identifier = selfCopy->_identifier;
          v9 = [(NSArray *)selfCopy->_strings componentsJoinedByString:@"|"];
          *buf = 138412802;
          v29 = identifier;
          v30 = 2112;
          v31 = v9;
          v32 = 2112;
          v33 = commandRecognitionSystem;
          _os_log_impl(&dword_26B44D000, p_super, OS_LOG_TYPE_DEFAULT, "Error found while creating language model for (%@) %@: %@", buf, 0x20u);
        }
      }
    }

    else if ([(NSString *)selfCopy->_identifier length])
    {
      WeakRetained = objc_loadWeakRetained(&selfCopy->_commandRecognizer);
      commandRecognitionSystem = [WeakRetained commandRecognitionSystem];

      v11 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
      localeIdentifier = [commandRecognitionSystem localeIdentifier];
      v13 = [v11 commandStringsTableForLocaleIdentifier:localeIdentifier];

      v14 = selfCopy->_identifier;
      targetTypes = [commandRecognitionSystem targetTypes];
      v26 = 0;
      v16 = [v13 languageModelDictionaryForCommandIdentifier:v14 targetTypes:targetTypes parsingErrorString:&v26];
      v17 = v26;

      if (v16 && (v18 = [v17 length]) == 0)
      {
        [v16 setObject:selfCopy->_identifier forKey:kSRCSCommandParseDictionaryKeyIdentifier[0]];
        v23 = v16;
        v19 = &selfCopy->_languageModelTree->super.super;
        selfCopy->_languageModelTree = v23;
      }

      else
      {
        v19 = SRCSLogGeneral(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = selfCopy->_identifier;
          *buf = 138412546;
          v29 = v20;
          v30 = 2112;
          v31 = v17;
          _os_log_impl(&dword_26B44D000, v19, OS_LOG_TYPE_DEFAULT, "Error found while creating language model for %@: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      commandRecognitionSystem = SRCSLogGeneral(0);
      if (os_log_type_enabled(commandRecognitionSystem, OS_LOG_TYPE_DEFAULT))
      {
        v22 = selfCopy->_identifier;
        *buf = 138412290;
        v29 = v22;
        _os_log_impl(&dword_26B44D000, commandRecognitionSystem, OS_LOG_TYPE_DEFAULT, "Error found while creating language model for %@", buf, 0xCu);
      }
    }

    if (selfCopy->_languageModelTree)
    {
      [(SRCSSpokenCommand *)selfCopy _replaceBuiltInIdentiferNodesWithSubTreesInMutableLM:?];
    }
  }

  objc_sync_exit(selfCopy);

  languageModelTree = selfCopy->_languageModelTree;

  return languageModelTree;
}

- (void)_replaceBuiltInIdentiferNodesWithSubTreesInMutableLM:(id)m
{
  v22 = *MEMORY[0x277D85DE8];
  mCopy = m;
  v5 = [mCopy objectForKey:kSRCSCommandParseDictionaryKeyIsBuiltInIdentifier[0]];
  if (![v5 BOOLValue])
  {
LABEL_7:

    goto LABEL_8;
  }

  v6 = [mCopy objectForKey:kSRCSCommandParseDictionaryKeyChildren[0]];
  v7 = [v6 count];

  if (!v7)
  {
    v8 = [mCopy objectForKey:kSRCSCommandParseDictionaryKeyIdentifier[0]];
    if (v8)
    {
      v5 = v8;
      WeakRetained = objc_loadWeakRetained(&self->_commandRecognizer);
      commandRecognitionSystem = [WeakRetained commandRecognitionSystem];
      v11 = [commandRecognitionSystem languageModelTreeForBuiltInLMIdentifier:v5];

      if (v11)
      {
        [mCopy removeAllObjects];
        [mCopy addEntriesFromDictionary:v11];
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = [mCopy objectForKey:{kSRCSCommandParseDictionaryKeyChildren[0], 0}];
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SRCSSpokenCommand *)self _replaceBuiltInIdentiferNodesWithSubTreesInMutableLM:*(*(&v17 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (id)fstGrammar
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_fstGrammar)
  {
    languageModelTree = [(SRCSSpokenCommand *)selfCopy languageModelTree];
    if (languageModelTree)
    {
      v4 = [CMDPGrammar alloc];
      WeakRetained = objc_loadWeakRetained(&selfCopy->_commandRecognizer);
      commandRecognitionSystem = [WeakRetained commandRecognitionSystem];
      localeIdentifier = [commandRecognitionSystem localeIdentifier];
      v8 = [(CMDPGrammar *)v4 initWithCommandTreeDictionary:languageModelTree forLocaleIdentifier:localeIdentifier];
      fstGrammar = selfCopy->_fstGrammar;
      selfCopy->_fstGrammar = v8;
    }
  }

  objc_sync_exit(selfCopy);

  v10 = selfCopy->_fstGrammar;

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(SRCSSpokenCommand *)self identifier];
  strings = [(SRCSSpokenCommand *)self strings];
  v6 = [v3 stringWithFormat:@"%@, %@, Rec Params: %@", identifier, strings, self->_recognizedParameters];

  return v6;
}

@end
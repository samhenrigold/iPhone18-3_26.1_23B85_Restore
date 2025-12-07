@interface PHNumberPadKeyCommandHandler
- (PHNumberPadKeyCommandHandler)initWithViewController:(id)controller selector:(SEL)selector;
- (char)characterForNumberPadCharacter:(int64_t)character;
- (int64_t)numberPadCharacterForString:(id)string;
- (void)handleKeyCommand:(id)command receivedCharacterBlock:(id)block receivedSpecialCharacterBlock:(id)characterBlock;
@end

@implementation PHNumberPadKeyCommandHandler

- (PHNumberPadKeyCommandHandler)initWithViewController:(id)controller selector:(SEL)selector
{
  controllerCopy = controller;
  if (initWithViewController_selector__onceToken != -1)
  {
    [PHNumberPadKeyCommandHandler initWithViewController:selector:];
  }

  v14.receiver = self;
  v14.super_class = PHNumberPadKeyCommandHandler;
  v7 = [(PHNumberPadKeyCommandHandler *)&v14 init];
  if (v7)
  {
    if ([initWithViewController_selector__commandCharacters length])
    {
      v8 = 0;
      do
      {
        v9 = [initWithViewController_selector__commandCharacters substringWithRange:{v8, 1}];
        v10 = [MEMORY[0x277D75650] keyCommandWithInput:v9 modifierFlags:0 action:selector];
        [controllerCopy addKeyCommand:v10];

        ++v8;
      }

      while (v8 < [initWithViewController_selector__commandCharacters length]);
    }

    v11 = [MEMORY[0x277D75650] keyCommandWithInput:@"\r" modifierFlags:0 action:selector];
    [controllerCopy addKeyCommand:v11];
    v12 = [MEMORY[0x277D75650] keyCommandWithInput:@"\b" modifierFlags:0 action:selector];

    [controllerCopy addKeyCommand:v12];
  }

  return v7;
}

void __64__PHNumberPadKeyCommandHandler_initWithViewController_selector___block_invoke()
{
  v5 = [MEMORY[0x277CCAB68] stringWithString:@"01234567890abcdefghijklmnopqrstuvwxyz+*#"];
  for (i = 0; i != 12; ++i)
  {
    v1 = [MEMORY[0x277D6ED70] localizedLettersForCharacter:TPNumberPadCharacters[i]];
    [v5 appendString:v1];
  }

  v2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v3 = [v5 stringByTrimmingCharactersInSet:v2];
  v4 = initWithViewController_selector__commandCharacters;
  initWithViewController_selector__commandCharacters = v3;
}

- (void)handleKeyCommand:(id)command receivedCharacterBlock:(id)block receivedSpecialCharacterBlock:(id)characterBlock
{
  v27 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  blockCopy = block;
  characterBlockCopy = characterBlock;
  v11 = PHDefaultLog(characterBlockCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = commandCopy;
    _os_log_impl(&dword_2429BC000, v11, OS_LOG_TYPE_DEFAULT, "Handling key command - %@", &v25, 0xCu);
  }

  if (characterBlockCopy)
  {
    input = [commandCopy input];
    v13 = [input isEqualToString:@"\r"];

    if (v13)
    {
      v15 = PHDefaultLog(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_2429BC000, v15, OS_LOG_TYPE_DEFAULT, "Calling callback for PHNumberPadKeyCommandHandlerSpecialCharacterDial", &v25, 2u);
      }

      v16 = 1;
LABEL_12:

      characterBlockCopy[2](characterBlockCopy, v16);
      goto LABEL_13;
    }

    input2 = [commandCopy input];
    v18 = [input2 isEqualToString:@"\b"];

    if (v18)
    {
      v15 = PHDefaultLog(v19);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_2429BC000, v15, OS_LOG_TYPE_DEFAULT, "Calling callback for PHNumberPadKeyCommandHandlerSpecialCharacterBackspace", &v25, 2u);
      }

      v16 = 0;
      goto LABEL_12;
    }
  }

LABEL_13:
  if (blockCopy)
  {
    input3 = [commandCopy input];
    v21 = [(PHNumberPadKeyCommandHandler *)self numberPadCharacterForString:input3];

    v22 = [(PHNumberPadKeyCommandHandler *)self characterForNumberPadCharacter:v21];
    if (v22)
    {
      v23 = v22;
      v24 = PHDefaultLog(v22);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 67109120;
        LODWORD(v26) = v23;
        _os_log_impl(&dword_2429BC000, v24, OS_LOG_TYPE_DEFAULT, "Calling callback for character '%c'", &v25, 8u);
      }

      blockCopy[2](blockCopy, v23);
    }
  }
}

- (char)characterForNumberPadCharacter:(int64_t)character
{
  if (character > 0xE)
  {
    return 48;
  }

  else
  {
    return a1234567890[character];
  }
}

- (int64_t)numberPadCharacterForString:(id)string
{
  v25 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:&unk_285537DC8];
  for (i = 0; i != 12; ++i)
  {
    v6 = TPNumberPadCharacters[i];
    v7 = [MEMORY[0x277D6ED70] localizedLettersForCharacter:v6];
    localizedLowercaseString = [v7 localizedLowercaseString];

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    [v4 setObject:v9 forKeyedSubscript:localizedLowercaseString];
  }

  localizedLowercaseString2 = [stringCopy localizedLowercaseString];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [v4 allKeys];
  v12 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    intValue = 13;
    while (2)
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(allKeys);
        }

        v17 = *(*(&v20 + 1) + 8 * j);
        if ([v17 containsString:localizedLowercaseString2])
        {
          v18 = [v4 objectForKeyedSubscript:v17];
          intValue = [v18 intValue];

          goto LABEL_14;
        }
      }

      v13 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    intValue = 13;
  }

LABEL_14:

  return intValue;
}

@end
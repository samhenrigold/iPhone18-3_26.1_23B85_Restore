@interface TIIndicScriptComposer_pa
- (NSDictionary)_modifiersToAllowedPrefixes;
- (id)_displayStringForModifier:(id)modifier withPrefix:(id)prefix;
- (id)_outputForModifier:(id)modifier withPrefix:(id)prefix displayString:(id *)string;
- (id)contextualDisplayKeys;
- (id)stringByComposingInput:(id)input;
@end

@implementation TIIndicScriptComposer_pa

- (id)stringByComposingInput:(id)input
{
  inputCopy = input;
  context = [(TIIndicScriptComposer *)self context];
  v6 = [(TIIndicScriptComposer_pa *)self _outputForModifier:inputCopy withPrefix:context];

  if ([v6 length])
  {
    v7 = v6;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TIIndicScriptComposer_pa;
    v7 = [(TIIndicScriptComposer *)&v10 stringByComposingInput:inputCopy];
  }

  v8 = v7;

  return v8;
}

- (id)contextualDisplayKeys
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = TIIndicScriptComposer_pa;
  contextualDisplayKeys = [(TIIndicScriptComposer *)&v19 contextualDisplayKeys];
  v4 = [contextualDisplayKeys mutableCopy];

  context = [(TIIndicScriptComposer *)self context];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  _modifiersToAllowedPrefixes = [(TIIndicScriptComposer_pa *)self _modifiersToAllowedPrefixes];
  allKeys = [_modifiersToAllowedPrefixes allKeys];

  v8 = [allKeys countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [(TIIndicScriptComposer_pa *)self _displayStringForModifier:v12 withPrefix:context];
        [v4 setObject:v13 forKeyedSubscript:v12];
      }

      v9 = [allKeys countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }

  return v4;
}

- (id)_displayStringForModifier:(id)modifier withPrefix:(id)prefix
{
  modifierCopy = modifier;
  v10 = modifierCopy;
  v7 = [(TIIndicScriptComposer_pa *)self _outputForModifier:modifierCopy withPrefix:prefix displayString:&v10];
  v8 = v10;

  if (v7)
  {
    v7 = v8;
  }

  return v7;
}

- (id)_outputForModifier:(id)modifier withPrefix:(id)prefix displayString:(id *)string
{
  modifierCopy = modifier;
  prefixCopy = prefix;
  _modifiersToAllowedPrefixes = [(TIIndicScriptComposer_pa *)self _modifiersToAllowedPrefixes];
  v11 = [_modifiersToAllowedPrefixes objectForKeyedSubscript:modifierCopy];

  if (v11)
  {
    languageIdentifier = [(TIIndicScriptComposer *)self languageIdentifier];
    v13 = [prefixCopy _lastConjunctInLanguage:languageIdentifier];

    v14 = [MEMORY[0x277CCACA8] _stringWithUnichar:{objc_msgSend(v13, "_lastLongCharacter")}];
    if ([v13 rangeOfString:@"੍" options:2] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v11, "containsObject:", v14))
    {
      if (string)
      {
        *string = [v13 stringByAppendingString:modifierCopy];
      }

      v15 = modifierCopy;
    }

    else
    {
      v16 = [v11 objectAtIndexedSubscript:0];
      v17 = [v16 stringByAppendingString:modifierCopy];
      v15 = v17;
      if (string)
      {
        v18 = v17;
        *string = v15;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSDictionary)_modifiersToAllowedPrefixes
{
  modifiersToAllowedPrefixes = self->_modifiersToAllowedPrefixes;
  if (!modifiersToAllowedPrefixes)
  {
    self->_modifiersToAllowedPrefixes = &unk_28400C310;
    modifiersToAllowedPrefixes = self->_modifiersToAllowedPrefixes;
  }

  return modifiersToAllowedPrefixes;
}

@end
@interface SRCSCommandStringsTable
+ (BOOL)isLocaleIdentifier:(id)identifier containedInLocaleIdentifiers:(id)identifiers;
+ (BOOL)isSameLocaleIdentifier:(id)identifier secondLocaleIdentifier:(id)localeIdentifier;
+ (NSArray)activeTargetTypes;
+ (NSArray)supportedTargetTypes;
+ (NSString)deviceName;
+ (id)commandStringsLoader;
+ (id)componentsFromLocaleIdentifier:(id)identifier;
+ (id)formattedBuiltInCommandString:(id)string;
+ (id)languageModelDictionaryFromCommandText:(id)text parsingErrorString:(id *)string;
+ (void)setCommandStringsLoader:(id)loader;
- (BOOL)isSupportedCommandIdentifier:(id)identifier forLocaleIdentifier:(id)localeIdentifier;
- (BOOL)isSupportedCommandIdentifier:(id)identifier forTargetTypes:(id)types;
- (SRCSCommandStringsTable)initWithLocaleIdentifier:(id)identifier;
- (id)_commandDescriptionsTable;
- (id)_commandStringsDictionaryForLocaleIdentifier:(id)identifier;
- (id)_commandStringsTable;
- (id)_descriptionTypeForParameterIdentifier:(id)identifier commandIdentifier:(id)commandIdentifier;
- (id)_exampleStringPermutationsFromCommandIdentifier:(id)identifier;
- (id)_keyboardKeyNamesTable;
- (id)_modifierKeyNamesTable;
- (id)_phoneticKeyNamesTable;
- (id)_rootCommandIdentifierFrom:(id)from foundTargetType:(id *)type;
- (id)_spokenStringPermutationOfLanguageModelDictionary:(id)dictionary givenPermutation:(unsigned __int16 *)permutation stringsTable:(id)table segmentOffsets:(id)offsets;
- (id)_warningsOfIncorrectTokenizationAcrossSegmentBoundariesInLanguageModelDictionary:(id)dictionary stringsTable:(id)table;
- (id)descriptionStringForCommandIdentifier:(id)identifier descriptionType:(id)type targetTypes:(id)types;
- (id)exampleParameterStringsTable;
- (id)languageModelDictionaryForCommandIdentifier:(id)identifier targetTypes:(id)types parsingErrorString:(id *)string;
- (id)mutableAttributedStringByReplacingPlaceholderAttribute:(id)attribute withAttributeName:(id)name inAttributedString:(id)string withValueTable:(id)table;
- (id)mutableAttributedStringCommandDescriptionForCommandIdentifier:(id)identifier calculateDisplayedAttributedStringWidthBlock:(id)block;
- (id)parameterIdentifiersFromCommandIdentifier:(id)identifier;
- (id)phrasesForCommandIdentifier:(id)identifier targetTypes:(id)types parameterStrings:(id)strings;
- (id)rowDataForTargetTypes:(id)types;
- (id)setOfBuiltInIdentifiersFromLanguageModelDictionary:(id)dictionary;
- (id)spokenStringPermutationsOfLanguageModelDictionary:(id)dictionary stringsTable:(id)table restrictPermutationsToShortestAndLongest:(BOOL)longest;
- (id)supportedCommandIdentifiersForTargetTypes:(id)types;
- (id)unparsedCommandTextForCommandIdentifier:(id)identifier targetTypes:(id)types;
- (id)warningStringForText:(id)text identifier:(id)identifier textTable:(id)table;
- (unint64_t)countOptionalNodesOfLanguageModelDictionary:(id)dictionary;
- (void)_flushCommandStringsTable;
- (void)_removeDuplicateSpacesFromMutableString:(id)string;
- (void)dealloc;
- (void)resolveReferencesInMutableAttributedString:(id)string stringsTable:(id)table;
@end

@implementation SRCSCommandStringsTable

+ (NSArray)supportedTargetTypes
{
  if (supportedTargetTypes_onceToken != -1)
  {
    +[SRCSCommandStringsTable supportedTargetTypes];
  }

  v3 = sSupportedTargetTypes;

  return v3;
}

void __47__SRCSCommandStringsTable_supportedTargetTypes__block_invoke()
{
  v2[9] = *MEMORY[0x277D85DE8];
  v2[0] = kSRCSCommandTargetTypeNone;
  v2[1] = kSRCSCommandTargetTypeOSX;
  v2[2] = kSRCSCommandTargetTypeiOS;
  v2[3] = kSRCSCommandTargetTypeiPad;
  v2[4] = kSRCSCommandTargetTypeiPhone;
  v2[5] = kSRCSCommandTargetTypeCarPlay;
  v2[6] = kSRCSCommandTargetTypeRealityDevice;
  v2[7] = kSRCSCommandTargetTypetvOS;
  v2[8] = kSRCSCommandTargetTypewatchOS;
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:9];
  v1 = sSupportedTargetTypes;
  sSupportedTargetTypes = v0;
}

+ (NSArray)activeTargetTypes
{
  if (activeTargetTypes_onceToken != -1)
  {
    +[SRCSCommandStringsTable activeTargetTypes];
  }

  v3 = sActiveTargetTypes;

  return v3;
}

void __44__SRCSCommandStringsTable_activeTargetTypes__block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = MGCopyAnswer();
  v1 = [v0 intValue];
  if (v0)
  {
    CFRelease(v0);
  }

  if (v1 == 1)
  {
    v9 = kSRCSCommandTargetTypeiPhone;
    v10 = kSRCSCommandTargetTypeCarPlay;
    v11 = kSRCSCommandTargetTypeiOS;
    v12 = kSRCSCommandTargetTypeNone;
    v2 = MEMORY[0x277CBEA60];
    v3 = &v9;
    v4 = 4;
  }

  else if (v1 == 3)
  {
    v13 = kSRCSCommandTargetTypeiPad;
    v14 = kSRCSCommandTargetTypeiOS;
    v15 = kSRCSCommandTargetTypeNone;
    v2 = MEMORY[0x277CBEA60];
    v3 = &v13;
    v4 = 3;
  }

  else
  {
    v7 = kSRCSCommandTargetTypeiOS;
    v8 = kSRCSCommandTargetTypeNone;
    v2 = MEMORY[0x277CBEA60];
    v3 = &v7;
    v4 = 2;
  }

  v5 = [v2 arrayWithObjects:v3 count:{v4, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16}];
  v6 = sActiveTargetTypes;
  sActiveTargetTypes = v5;
}

+ (id)componentsFromLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (componentsFromLocaleIdentifier__staticLocaleComponentsCacheSetup != -1)
    {
      +[SRCSCommandStringsTable componentsFromLocaleIdentifier:];
    }

    v4 = sLocaleComponentsCache;
    objc_sync_enter(v4);
    v5 = [sLocaleComponentsCache objectForKey:identifierCopy];
    if (!v5)
    {
      v5 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:identifierCopy];
      if (v5)
      {
        [sLocaleComponentsCache setObject:v5 forKey:identifierCopy];
      }
    }

    objc_sync_exit(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __58__SRCSCommandStringsTable_componentsFromLocaleIdentifier___block_invoke()
{
  sLocaleComponentsCache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isSameLocaleIdentifier:(id)identifier secondLocaleIdentifier:(id)localeIdentifier
{
  localeIdentifierCopy = localeIdentifier;
  v6 = [SRCSCommandStringsTable componentsFromLocaleIdentifier:identifier];
  v7 = [SRCSCommandStringsTable componentsFromLocaleIdentifier:localeIdentifierCopy];

  v8 = *MEMORY[0x277CBE6C8];
  v9 = [v6 objectForKey:*MEMORY[0x277CBE6C8]];
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = v9;
  v11 = [v7 objectForKey:v8];
  if (!v11)
  {
    v16 = 0;
    goto LABEL_17;
  }

  v12 = v11;
  v13 = [v6 objectForKey:v8];
  v14 = [v7 objectForKey:v8];
  v15 = [v13 caseInsensitiveCompare:v14];

  if (!v15)
  {
    v17 = *MEMORY[0x277CBE690];
    v10 = [v6 objectForKey:*MEMORY[0x277CBE690]];
    if (!v10)
    {
      v12 = [v7 objectForKey:v17];
      if (!v12)
      {
        v16 = 1;
LABEL_16:

        goto LABEL_17;
      }
    }

    v18 = [v6 objectForKey:v17];
    if (v18)
    {
      v19 = v18;
      v20 = [v7 objectForKey:v17];
      if (v20)
      {
        v21 = v20;
        v22 = [v6 objectForKey:v17];
        v23 = [v7 objectForKey:v17];
        v16 = [v22 caseInsensitiveCompare:v23] == 0;

        if (!v10)
        {
          goto LABEL_16;
        }

LABEL_17:

        goto LABEL_18;
      }
    }

    v16 = 0;
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

LABEL_4:
  v16 = 0;
LABEL_18:

  return v16;
}

+ (BOOL)isLocaleIdentifier:(id)identifier containedInLocaleIdentifiers:(id)identifiers
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  identifiersCopy = identifiers;
  v7 = [identifiersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        if ([SRCSCommandStringsTable isSameLocaleIdentifier:identifierCopy secondLocaleIdentifier:*(*(&v11 + 1) + 8 * i), v11])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [identifiersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

+ (id)languageModelDictionaryFromCommandText:(id)text parsingErrorString:(id *)string
{
  textCopy = text;
  v6 = objc_opt_class();
  objc_sync_enter(v6);
  if (string)
  {
    *string = 0;
  }

  v9 = 0;
  v7 = CreateMutableDictionaryFromSpokenCommandString(textCopy, &v9);
  if (string && v9)
  {
    *string = v9;
  }

  objc_sync_exit(v6);

  return v7;
}

- (SRCSCommandStringsTable)initWithLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = SRCSCommandStringsTable;
  v6 = [(SRCSCommandStringsTable *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localeIdentifier, identifier);
    v8 = CFLocaleCreate(0, v7->_localeIdentifier);
    if (v8)
    {
      v9 = v8;
      v13.location = 0;
      v13.length = 0;
      v7->_wordUnitStringTokenizer = CFStringTokenizerCreate(0, &stru_287C0A5E8, v13, 0, v8);
      CFRelease(v9);
    }

    _commandStringsTable = [(SRCSCommandStringsTable *)v7 _commandStringsTable];

    if (!_commandStringsTable)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  wordUnitStringTokenizer = self->_wordUnitStringTokenizer;
  if (wordUnitStringTokenizer)
  {
    CFRelease(wordUnitStringTokenizer);
  }

  v4.receiver = self;
  v4.super_class = SRCSCommandStringsTable;
  [(SRCSCommandStringsTable *)&v4 dealloc];
}

- (id)_commandStringsTable
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  commandStringsCache = selfCopy->_commandStringsCache;
  if (!commandStringsCache)
  {
    v4 = [(SRCSCommandStringsTable *)selfCopy _commandStringsDictionaryForLocaleIdentifier:selfCopy->_localeIdentifier];
    v5 = selfCopy->_commandStringsCache;
    selfCopy->_commandStringsCache = v4;

    commandStringsCache = selfCopy->_commandStringsCache;
  }

  v6 = commandStringsCache;
  objc_sync_exit(selfCopy);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SRCSCommandStringsTable__commandStringsTable__block_invoke;
  block[3] = &unk_279CF53B0;
  block[4] = selfCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  return v6;
}

uint64_t __47__SRCSCommandStringsTable__commandStringsTable__block_invoke(uint64_t a1)
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel__flushCommandStringsTable object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:sel__flushCommandStringsTable withObject:0 afterDelay:20.0];
}

- (void)_flushCommandStringsTable
{
  obj = self;
  objc_sync_enter(obj);
  commandStringsCache = obj->_commandStringsCache;
  obj->_commandStringsCache = 0;

  objc_sync_exit(obj);
}

- (id)_commandDescriptionsTable
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  commandDescriptionsCache = selfCopy->_commandDescriptionsCache;
  if (!commandDescriptionsCache)
  {
    v4 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
    v5 = [v4 dictionaryForLocaleIdentifier:selfCopy->_localeIdentifier resourceFileName:@"CommandDescriptions" resourceFileExtension:@"strings"];
    v6 = selfCopy->_commandDescriptionsCache;
    selfCopy->_commandDescriptionsCache = v5;

    commandDescriptionsCache = selfCopy->_commandDescriptionsCache;
  }

  v7 = commandDescriptionsCache;
  objc_sync_exit(selfCopy);

  return v7;
}

- (id)_keyboardKeyNamesTable
{
  v27 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  keyboardKeyNamesCache = selfCopy->_keyboardKeyNamesCache;
  if (!keyboardKeyNamesCache)
  {
    v4 = objc_opt_new();
    v5 = selfCopy->_keyboardKeyNamesCache;
    selfCopy->_keyboardKeyNamesCache = v4;

    v6 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
    v7 = [v6 dictionaryForLocaleIdentifier:selfCopy->_localeIdentifier resourceFileName:@"KeyboardKeyNames" resourceFileExtension:@"strings"];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    allKeys = [v7 allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
    p_isa = &selfCopy->super.isa;
    if (v9)
    {
      v11 = *v23;
      obj = allKeys;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v7 objectForKey:{v13, obj}];
          if (v14)
          {
            v21 = 0;
            v15 = [SRCSCommandStringsTable languageModelDictionaryFromCommandText:v14 parsingErrorString:&v21];
            v16 = v21;
            if (![v16 length])
            {
              v17 = [p_isa spokenStringPermutationsOfLanguageModelDictionary:v15 stringsTable:0];
              if (v17)
              {
                [p_isa[5] setObject:v17 forKey:v13];
              }
            }
          }
        }

        allKeys = obj;
        v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    selfCopy = p_isa;
    keyboardKeyNamesCache = p_isa[5];
  }

  v18 = keyboardKeyNamesCache;
  objc_sync_exit(selfCopy);

  return v18;
}

- (id)_phoneticKeyNamesTable
{
  v30 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  phoneticKeyNamesCache = selfCopy->_phoneticKeyNamesCache;
  if (!phoneticKeyNamesCache)
  {
    v4 = objc_opt_new();
    v5 = selfCopy->_phoneticKeyNamesCache;
    selfCopy->_phoneticKeyNamesCache = v4;

    v6 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
    localeIdentifier = selfCopy->_localeIdentifier;
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v6 dictionaryForLocaleIdentifier:localeIdentifier bundle:v8 subDirectory:@"LocalizedPhoneticAlphabet" rootFileName:@"PhoneticAlphabet" rootFileExtension:@"plist"];
    v10 = [v9 objectForKey:@"PhoneticPronunciationMapping"];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    allKeys = [v10 allKeys];
    v12 = [allKeys countByEnumeratingWithState:&v25 objects:v29 count:16];
    p_isa = &selfCopy->super.isa;
    if (v12)
    {
      v14 = *v26;
      obj = allKeys;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          v17 = [v10 objectForKey:{v16, obj}];
          if (v17)
          {
            v24 = 0;
            v18 = [SRCSCommandStringsTable languageModelDictionaryFromCommandText:v17 parsingErrorString:&v24];
            v19 = v24;
            if (![v19 length])
            {
              v20 = [p_isa spokenStringPermutationsOfLanguageModelDictionary:v18 stringsTable:0];
              if (v20)
              {
                [p_isa[7] setObject:v20 forKey:v16];
              }
            }
          }
        }

        allKeys = obj;
        v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    selfCopy = p_isa;
    phoneticKeyNamesCache = p_isa[7];
  }

  v21 = phoneticKeyNamesCache;
  objc_sync_exit(selfCopy);

  return v21;
}

- (id)_modifierKeyNamesTable
{
  v27 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  modifierKeyNamesCache = selfCopy->_modifierKeyNamesCache;
  if (!modifierKeyNamesCache)
  {
    v4 = objc_opt_new();
    v5 = selfCopy->_modifierKeyNamesCache;
    selfCopy->_modifierKeyNamesCache = v4;

    v6 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
    v7 = [v6 dictionaryForLocaleIdentifier:selfCopy->_localeIdentifier resourceFileName:@"ModifierKeyNames" resourceFileExtension:@"strings"];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    allKeys = [v7 allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
    p_isa = &selfCopy->super.isa;
    if (v9)
    {
      v11 = *v23;
      obj = allKeys;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v7 objectForKey:{v13, obj}];
          if (v14)
          {
            v21 = 0;
            v15 = [SRCSCommandStringsTable languageModelDictionaryFromCommandText:v14 parsingErrorString:&v21];
            v16 = v21;
            if (![v16 length])
            {
              v17 = [p_isa spokenStringPermutationsOfLanguageModelDictionary:v15 stringsTable:0];
              if (v17)
              {
                [p_isa[6] setObject:v17 forKey:v13];
              }
            }
          }
        }

        allKeys = obj;
        v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    selfCopy = p_isa;
    modifierKeyNamesCache = p_isa[6];
  }

  v18 = modifierKeyNamesCache;
  objc_sync_exit(selfCopy);

  return v18;
}

- (id)exampleParameterStringsTable
{
  v76 = *MEMORY[0x277D85DE8];
  parameterIdentifiersToExamplesTable = self->_parameterIdentifiersToExamplesTable;
  if (!parameterIdentifiersToExamplesTable)
  {
    v52 = RXEngineTypeForLocaleIdentifier();
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    selfCopy = self;
    [(SRCSCommandStringsTable *)self _commandDescriptionsTable];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = v71 = 0u;
    v5 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v69;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v69 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v68 + 1) + 8 * i);
          if ([v9 hasPrefix:@"ExampleParameter."])
          {
            v10 = [v9 rangeOfString:@"." options:0 range:{objc_msgSend(@"ExampleParameter.", "length"), objc_msgSend(v9, "length") - objc_msgSend(@"ExampleParameter.", "length")}];
            if (v10 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v12 = v10;
              v13 = v11;
              v14 = [v9 substringToIndex:v10];
              array = [dictionary objectForKey:v14];
              if (!array)
              {
                array = [MEMORY[0x277CBEB18] array];
                [dictionary setObject:array forKey:v14];
              }

              if (v52 == 1 || ![v9 hasPrefix:@"ExampleParameter.IntegerValue"])
              {
                v16 = [obj objectForKey:v9];
                [array addObject:v16];
              }

              else
              {
                v16 = [v9 substringWithRange:{v12 + v13, objc_msgSend(v9, "rangeOfString:options:range:", @"_", 0, v13, objc_msgSend(v9, "length") - v13) - (v12 + v13)}];
                if ([v16 integerValue] <= 9)
                {
                  v17 = [obj objectForKey:v9];
                  [array addObject:v17];
                }
              }
            }
          }
        }

        v6 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
      }

      while (v6);
    }

    v18 = objc_opt_new();
    p_isa = &selfCopy->super.isa;
    v20 = selfCopy->_parameterIdentifiersToExamplesTable;
    selfCopy->_parameterIdentifiersToExamplesTable = v18;

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v23 = [AllValidCommandParameterIdentifiers(v21 v22)];
    v24 = [v23 countByEnumeratingWithState:&v64 objects:v74 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v65;
      do
      {
        v27 = 0;
        do
        {
          if (*v65 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v64 + 1) + 8 * v27);
          if (([v28 isEqualToString:kSRCSCommandParameterSwitchableApplication[0]] & 1) != 0 || objc_msgSend(v28, "isEqualToString:", kSRCSCommandParameterRunningApplication[0]))
          {
            v29 = dictionary;
            v30 = @"ExampleParameter.AppName";
            goto LABEL_35;
          }

          if (([v28 isEqualToString:kSRCSCommandParameterTextSegmentCardinalNumber[0]] & 1) != 0 || (objc_msgSend(v28, "isEqualToString:", kSRCSCommandParameterScreenDistanceCardinalNumber[0]) & 1) != 0 || (objc_msgSend(v28, "isEqualToString:", kSRCSCommandParameterNumberZeroThroughOneHundred[0]) & 1) != 0 || (objc_msgSend(v28, "isEqualToString:", kSRCSCommandParameterNumberTwoThroughNinetyNine[0]) & 1) != 0 || (objc_msgSend(v28, "isEqualToString:", kSRCSCommandParameterNumberTwoThroughNinetyNine2[0]) & 1) != 0 || (objc_msgSend(v28, "isEqualToString:", kSRCSCommandParameterOverlayLabel[0]) & 1) != 0 || objc_msgSend(v28, "isEqualToString:", kSRCSCommandParameterOverlayLabel2[0]))
          {
            v29 = dictionary;
            v30 = @"ExampleParameter.IntegerValue";
            goto LABEL_35;
          }

          if (([v28 isEqualToString:kSRCSCommandParameterMenuItem[0]] & 1) != 0 || (objc_msgSend(v28, "isEqualToString:", kSRCSCommandParameterWindowItem[0]) & 1) != 0 || objc_msgSend(v28, "isEqualToString:", kSRCSCommandParameterWindowItem2[0]))
          {
            v29 = dictionary;
            v30 = @"ExampleParameter.ElementName";
            goto LABEL_35;
          }

          if ([v28 isEqualToString:kSRCSCommandParameterMenuBarItem[0]])
          {
            v29 = dictionary;
            v30 = @"ExampleParameter.MenuBarName";
LABEL_35:
            v31 = [v29 objectForKey:v30];
            if (v31)
            {
              [p_isa[8] setObject:v31 forKey:v28];
            }

            goto LABEL_37;
          }

          if (([v28 isEqualToString:kSRCSCommandParameterDictation[0]] & 1) != 0 || objc_msgSend(v28, "isEqualToString:", kSRCSCommandParameterDictation2[0]))
          {
            v29 = dictionary;
            v30 = @"ExampleParameter.DictatedPhrase";
            goto LABEL_35;
          }

          if ([v28 isEqualToString:kSRCSCommandParameterKeyboardKeyName[0]])
          {
            v31 = objc_opt_new();
            _phoneticKeyNamesTable = [p_isa _phoneticKeyNamesTable];
            _keyboardKeyNamesTable = [p_isa _keyboardKeyNamesTable];
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v48 = _keyboardKeyNamesTable;
            allKeys = [_keyboardKeyNamesTable allKeys];
            v53 = [allKeys countByEnumeratingWithState:&v60 objects:v73 count:16];
            if (v53)
            {
              v47 = *v61;
              do
              {
                for (j = 0; j != v53; ++j)
                {
                  if (*v61 != v47)
                  {
                    objc_enumerationMutation(allKeys);
                  }

                  v34 = *(*(&v60 + 1) + 8 * j);
                  v35 = [v48 objectForKey:v34];
                  [v31 addObjectsFromArray:v35];

                  v36 = [_phoneticKeyNamesTable objectForKey:v34];
                  if (v36)
                  {
                    [v31 addObjectsFromArray:v36];
                  }
                }

                v53 = [allKeys countByEnumeratingWithState:&v60 objects:v73 count:16];
              }

              while (v53);
            }

            p_isa = &selfCopy->super.isa;
            [(NSMutableDictionary *)selfCopy->_parameterIdentifiersToExamplesTable setObject:v31 forKey:v28];

            v37 = _phoneticKeyNamesTable;
            goto LABEL_69;
          }

          if ([v28 isEqualToString:kSRCSCommandParameterModifierKeys[0]])
          {
            v31 = objc_opt_new();
            _modifierKeyNamesTable = [p_isa _modifierKeyNamesTable];
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v54 = _modifierKeyNamesTable;
            allKeys2 = [_modifierKeyNamesTable allKeys];
            v39 = [allKeys2 countByEnumeratingWithState:&v56 objects:v72 count:16];
            if (v39)
            {
              v40 = v39;
              v51 = *v57;
              do
              {
                for (k = 0; k != v40; ++k)
                {
                  if (*v57 != v51)
                  {
                    objc_enumerationMutation(allKeys2);
                  }

                  v42 = [v54 objectForKey:*(*(&v56 + 1) + 8 * k)];
                  [v31 addObjectsFromArray:v42];
                }

                v40 = [allKeys2 countByEnumeratingWithState:&v56 objects:v72 count:16];
              }

              while (v40);
            }

            p_isa = &selfCopy->super.isa;
            [(NSMutableDictionary *)selfCopy->_parameterIdentifiersToExamplesTable setObject:v31 forKey:v28];
            v37 = v54;
LABEL_69:

LABEL_37:
          }

          ++v27;
        }

        while (v27 != v25);
        v43 = [v23 countByEnumeratingWithState:&v64 objects:v74 count:16];
        v25 = v43;
      }

      while (v43);
    }

    parameterIdentifiersToExamplesTable = p_isa[8];
  }

  return parameterIdentifiersToExamplesTable;
}

- (id)supportedCommandIdentifiersForTargetTypes:(id)types
{
  v23 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  array = [MEMORY[0x277CBEB18] array];
  v6 = [typesCopy count];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  _commandStringsTable = [(SRCSCommandStringsTable *)self _commandStringsTable];
  allKeys = [_commandStringsTable allKeys];

  v9 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v17 = 0;
        v14 = [(SRCSCommandStringsTable *)self _rootCommandIdentifierFrom:v13 foundTargetType:&v17];
        v15 = v17;
        if ([v14 length] && (objc_msgSend(array, "containsObject:", v14) & 1) == 0 && (!v6 || objc_msgSend(typesCopy, "containsObject:", v15)) && -[SRCSCommandStringsTable isSupportedCommandIdentifier:forLocaleIdentifier:](self, "isSupportedCommandIdentifier:forLocaleIdentifier:", v14, self->_localeIdentifier))
        {
          [array addObject:v14];
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return array;
}

- (BOOL)isSupportedCommandIdentifier:(id)identifier forTargetTypes:(id)types
{
  typesCopy = types;
  v11 = 0;
  v7 = [(SRCSCommandStringsTable *)self _rootCommandIdentifierFrom:identifier foundTargetType:&v11];
  v8 = v11;
  if (v7)
  {
    v9 = [typesCopy containsObject:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isSupportedCommandIdentifier:(id)identifier forLocaleIdentifier:(id)localeIdentifier
{
  localeIdentifierCopy = localeIdentifier;
  identifierCopy = identifier;
  v7 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
  commandAttributes = [v7 commandAttributes];
  v9 = [commandAttributes objectForKey:identifierCopy];

  v10 = [v9 objectForKey:kSRCSCommandAttributeIncludeOnlyForLocales];
  if (v10 && ![SRCSCommandStringsTable isLocaleIdentifier:localeIdentifierCopy containedInLocaleIdentifiers:v10])
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v11 = [v9 objectForKey:kSRCSCommandAttributeExcludeAlwaysForLocales];
    if (v11)
    {
      v12 = ![SRCSCommandStringsTable isLocaleIdentifier:localeIdentifierCopy containedInLocaleIdentifiers:v11];
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  return v12;
}

- (id)_rootCommandIdentifierFrom:(id)from foundTargetType:(id *)type
{
  fromCopy = from;
  v6 = kSRCSCommandTargetTypeNone;
  v7 = [fromCopy rangeOfString:@"_" options:4];
  if (v8 == 1 && (v9 = v7, v7 < [fromCopy length] - 1))
  {
    v10 = [fromCopy substringFromIndex:v9 + 1];
    if ([v10 length])
    {
      v11 = [fromCopy substringToIndex:v9];

      v12 = v10;
    }

    else
    {

      v12 = 0;
      v11 = 0;
    }

    v6 = v12;
  }

  else
  {
    v11 = fromCopy;
  }

  v13 = v6;
  *type = v6;

  return v11;
}

- (unint64_t)countOptionalNodesOfLanguageModelDictionary:(id)dictionary
{
  v19 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyAttributes[0]];
  v6 = [v5 objectForKey:kSRCSCommandParseAttributeOptional[0]];
  bOOLValue = [v6 BOOLValue];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [dictionaryCopy objectForKey:{kSRCSCommandParseDictionaryKeyChildren[0], 0}];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        bOOLValue += [(SRCSCommandStringsTable *)self countOptionalNodesOfLanguageModelDictionary:*(*(&v14 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  return bOOLValue;
}

- (id)_spokenStringPermutationOfLanguageModelDictionary:(id)dictionary givenPermutation:(unsigned __int16 *)permutation stringsTable:(id)table segmentOffsets:(id)offsets
{
  v57 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  tableCopy = table;
  offsetsCopy = offsets;
  v51 = [MEMORY[0x277CCAB68] stringWithString:&stru_287C0A5E8];
  v8 = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyAttributes[0]];
  v9 = [v8 objectForKey:kSRCSCommandParseAttributeOptional[0]];
  LODWORD(table) = [v9 BOOLValue];

  tableCopy2 = table;
  if (table)
  {
    v48 = *permutation & 1;
    *permutation >>= 1;
  }

  else
  {
    v48 = 1;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyChildren[0]];
  v10 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v10)
  {
    v11 = *v53;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v53 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v52 + 1) + 8 * i);
        if (offsetsCopy)
        {
          v14 = objc_opt_new();
        }

        else
        {
          v14 = 0;
        }

        v15 = [(SRCSCommandStringsTable *)self _spokenStringPermutationOfLanguageModelDictionary:v13 givenPermutation:permutation stringsTable:tableCopy segmentOffsets:v14];
        v16 = v15;
        if (v48 && [v15 length])
        {
          if (offsetsCopy && [v14 count])
          {
            if ([v51 length])
            {
              v17 = [v14 count];
              if (v17 >= 1)
              {
                for (j = 0; j != v17; ++j)
                {
                  v19 = [v14 objectAtIndex:j];
                  range = [v19 range];
                  v21 = [v51 length];
                  [v19 range];
                  [v19 setRange:{range + v21, v22}];
                }
              }
            }

            [offsetsCopy addObjectsFromArray:v14];
          }

          [v51 appendString:v16];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v10);
  }

  if (v48)
  {
    v23 = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyIsBuiltInIdentifier[0]];
    bOOLValue = [v23 BOOLValue];

    if (!bOOLValue)
    {
      v25 = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyText[0]];
      if ([(__CFString *)v25 length])
      {
        if (offsetsCopy)
        {
          selfCopy = self;
          objc_sync_enter(selfCopy);
          wordUnitStringTokenizer = selfCopy->_wordUnitStringTokenizer;
          v59.length = [(__CFString *)v25 length];
          v59.location = 0;
          CFStringTokenizerSetString(wordUnitStringTokenizer, v25, v59);
          if (CFStringTokenizerAdvanceToNextToken(selfCopy->_wordUnitStringTokenizer))
          {
            CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(selfCopy->_wordUnitStringTokenizer);
            v38 = v25;
            if ((tableCopy2 & 1) == 0)
            {
              v38 = [(__CFString *)v25 substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length];
            }

            v39 = [SRCSCommandSegmentInfo segmentInfoWith:CurrentTokenRange.location text:CurrentTokenRange.length, v38];
            [offsetsCopy addObject:v39];

            if ((tableCopy2 & 1) == 0)
            {
            }
          }

          objc_sync_exit(selfCopy);
        }

        [v51 appendString:v25];
      }

      goto LABEL_56;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:kSRCSCommandParseDictionaryKeyIdentifier[0]];
    v26 = [tableCopy objectForKey:v25];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v26;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;
    if ([v28 length])
    {
      v31 = [(__CFString *)v25 isEqualToString:kSRCSCommandParameterDeviceName[0]];
      v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v33 = v32;
      if (v31)
      {
        [v32 localizedStringForKey:@"CommandParameter.DeviceNameFormatString" value:&stru_287C0A5E8 table:0];
      }

      else
      {
        [v32 localizedStringForKey:@"CommandParameter.GenericFormatString" value:&stru_287C0A5E8 table:0];
      }
      v34 = ;
      [v51 appendFormat:v34, v28];
    }

    else if ([v30 count])
    {
      if (![v30 count])
      {
LABEL_55:

LABEL_56:
        goto LABEL_57;
      }

      if ([v30 count] < 2)
      {
        v41 = 0;
      }

      else
      {
        do
        {
          v40 = random();
          v41 = v40 % [v30 count];
        }

        while (_spokenStringPermutationOfLanguageModelDictionary_givenPermutation_stringsTable_segmentOffsets__sLastRandomInteger == v41);
      }

      _spokenStringPermutationOfLanguageModelDictionary_givenPermutation_stringsTable_segmentOffsets__sLastRandomInteger = v41;
      v33 = [v30 objectAtIndex:?];
      [v51 appendString:v33];
    }

    else
    {
      v33 = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyIdentifier[0]];
      [v51 appendFormat:@"{%@}", v33];
    }

    goto LABEL_55;
  }

LABEL_57:

  return v51;
}

- (id)setOfBuiltInIdentifiersFromLanguageModelDictionary:(id)dictionary
{
  v23 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyChildren[0]];
  if ([v6 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [dictionaryCopy objectForKey:{kSRCSCommandParseDictionaryKeyChildren[0], 0}];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(SRCSCommandStringsTable *)self setOfBuiltInIdentifiersFromLanguageModelDictionary:*(*(&v18 + 1) + 8 * i)];
          allObjects = [v12 allObjects];
          [v5 addObjectsFromArray:allObjects];
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v14 = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyIsBuiltInIdentifier[0]];
    bOOLValue = [v14 BOOLValue];

    if (bOOLValue)
    {
      v16 = [dictionaryCopy objectForKeyedSubscript:kSRCSCommandParseDictionaryKeyIdentifier[0]];
      if (v16)
      {
        [v5 addObject:v16];
      }
    }
  }

  return v5;
}

- (void)_removeDuplicateSpacesFromMutableString:(id)string
{
  stringCopy = string;
    ;
  }
}

- (id)unparsedCommandTextForCommandIdentifier:(id)identifier targetTypes:(id)types
{
  v28 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v7 = typesCopy;
  if (identifier && typesCopy)
  {
    v26 = 0;
    v8 = [(SRCSCommandStringsTable *)self _rootCommandIdentifierFrom:identifier foundTargetType:&v26];
    v9 = v26;
    _commandStringsTable = [(SRCSCommandStringsTable *)self _commandStringsTable];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    supportedTargetTypes = [objc_opt_class() supportedTargetTypes];
    reverseObjectEnumerator = [supportedTargetTypes reverseObjectEnumerator];

    v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          if ([v7 containsObject:v17])
          {
            if ([v17 isEqualToString:kSRCSCommandTargetTypeNone])
            {
              v18 = v8;
            }

            else
            {
              v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v8, v17];
            }

            v19 = v18;
            v20 = [_commandStringsTable objectForKeyedSubscript:v18];
            if ([(__CFString *)v20 length])
            {

              goto LABEL_20;
            }
          }
        }

        v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v20 = &stru_287C0A5E8;
    }

    else
    {
      v20 = &stru_287C0A5E8;
    }

LABEL_20:
  }

  else
  {
    NSLog(&cfstr_ErrorDonTPassN.isa);
    v20 = &stru_287C0A5E8;
  }

  return v20;
}

- (id)languageModelDictionaryForCommandIdentifier:(id)identifier targetTypes:(id)types parsingErrorString:(id *)string
{
  identifierCopy = identifier;
  typesCopy = types;
  v10 = [(SRCSCommandStringsTable *)self unparsedCommandTextForCommandIdentifier:identifierCopy targetTypes:typesCopy];
  v11 = objc_opt_class();
  objc_sync_enter(v11);
  if (string)
  {
    *string = 0;
  }

  v14 = 0;
  v12 = CreateMutableDictionaryFromSpokenCommandString(v10, &v14);
  if (string && v14)
  {
    *string = v14;
  }

  objc_sync_exit(v11);

  return v12;
}

- (id)spokenStringPermutationsOfLanguageModelDictionary:(id)dictionary stringsTable:(id)table restrictPermutationsToShortestAndLongest:(BOOL)longest
{
  longestCopy = longest;
  v41 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  tableCopy = table;
  array = [MEMORY[0x277CBEB18] array];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v11 = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyAttributes[0]];
  v12 = [v11 objectForKey:kSRCSCommandParseAttributePath[0]];

  if (v12)
  {
    v14 = SRCSLogGeneral(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = dictionaryCopy;
      _os_log_impl(&dword_26B44D000, v14, OS_LOG_TYPE_DEFAULT, "Malformed LM dictionary in spokenStringPermutationsOfLanguageModelDictionary:stringsTable:, should not have a path at the top level: %@.", buf, 0xCu);
    }
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyChildren[0]];
    v33 = [v14 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v33)
    {
      v28 = dictionaryCopy;
      obj = v14;
      v30 = *v35;
      v31 = longestCopy;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v35 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          v17 = [(SRCSCommandStringsTable *)self countOptionalNodesOfLanguageModelDictionary:v16, v28];
          v18 = objc_opt_new();
          if (v17 <= 0xF)
          {
            v19 = 0;
            v20 = 1 << v17;
            do
            {
              *buf = v19;
              v21 = [(SRCSCommandStringsTable *)self spokenStringPermutationOfLanguageModelDictionary:v16 givenPermutation:buf stringsTable:tableCopy];
              [(SRCSCommandStringsTable *)self _removeDuplicateSpacesFromMutableString:v21];
              v22 = [v21 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
              [v18 addObject:v22];

              ++v19;
            }

            while (v20 != v19);
          }

          v23 = objc_alloc(MEMORY[0x277CBEB18]);
          allObjects = [v18 allObjects];
          v25 = [allObjects sortedArrayUsingComparator:&__block_literal_global_228];
          v26 = [v23 initWithArray:v25];

          if (v31 && [v26 count] >= 3)
          {
            [v26 removeObjectsInRange:{1, objc_msgSend(v26, "count") - 2}];
          }

          [array addObjectsFromArray:v26];
        }

        v14 = obj;
        v33 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v33);
      dictionaryCopy = v28;
    }
  }

  return array;
}

uint64_t __131__SRCSCommandStringsTable_spokenStringPermutationsOfLanguageModelDictionary_stringsTable_restrictPermutationsToShortestAndLongest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 length];
  if (v6 <= [v5 length])
  {
    v8 = [v4 length];
    if (v8 >= [v5 length])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)_warningsOfIncorrectTokenizationAcrossSegmentBoundariesInLanguageModelDictionary:(id)dictionary stringsTable:(id)table
{
  v43 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  tableCopy = table;
  array = [MEMORY[0x277CBEB18] array];
  v6 = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyAttributes[0]];
  v7 = [v6 objectForKey:kSRCSCommandParseAttributePath[0]];

  if (v7)
  {
    v9 = SRCSLogGeneral(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = dictionaryCopy;
      _os_log_impl(&dword_26B44D000, v9, OS_LOG_TYPE_DEFAULT, "Malformed LM dictionary in _warningsOfIncorrectTokenizationAcrossSegmentBoundariesInLanguageModelDictionary:stringsTable:, should not have a path at the top level: %@.", buf, 0xCu);
    }
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyChildren[0]];
    v30 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v30)
    {
      v29 = *v37;
      do
      {
        v10 = 0;
        do
        {
          if (*v37 != v29)
          {
            v11 = v10;
            objc_enumerationMutation(obj);
            v10 = v11;
          }

          v31 = v10;
          v35 = *(*(&v36 + 1) + 8 * v10);
          v12 = [(SRCSCommandStringsTable *)self countOptionalNodesOfLanguageModelDictionary:?];
          if (v12 <= 0xF)
          {
            v13 = 0;
            v34 = (1 << v12);
            do
            {
              array2 = [MEMORY[0x277CBEB18] array];
              *buf = v13;
              v15 = [(SRCSCommandStringsTable *)self _spokenStringPermutationOfLanguageModelDictionary:v35 givenPermutation:buf stringsTable:tableCopy segmentOffsets:array2];
              selfCopy = self;
              objc_sync_enter(selfCopy);
              wordUnitStringTokenizer = self->_wordUnitStringTokenizer;
              v45.length = [(__CFString *)v15 length];
              v45.location = 0;
              CFStringTokenizerSetString(wordUnitStringTokenizer, v15, v45);
LABEL_12:
              while (CFStringTokenizerAdvanceToNextToken(self->_wordUnitStringTokenizer))
              {
                location = CFStringTokenizerGetCurrentTokenRange(self->_wordUnitStringTokenizer).location;
                v19 = [array2 count];
                if (v19 >= 1)
                {
                  v20 = 0;
                  while (1)
                  {
                    v21 = [array2 objectAtIndex:v20];
                    v22 = [v21 range] == location;

                    if (v22)
                    {
                      break;
                    }

                    if (v19 == ++v20)
                    {
                      goto LABEL_12;
                    }
                  }

                  [array2 removeObjectAtIndex:v20];
                }
              }

              objc_sync_exit(selfCopy);

              if ([array2 count])
              {
                v23 = MEMORY[0x277CCACA8];
                v24 = [array2 componentsJoinedByString:{@", "}];
                v25 = [v23 stringWithFormat:@"%@ in “%@”", v24, v15];
                [array addObject:v25];
              }

              ++v13;
            }

            while (v13 < v34);
          }

          v10 = v31 + 1;
        }

        while (v31 + 1 != v30);
        v30 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v30);
    }

    v9 = obj;
  }

  return array;
}

- (id)descriptionStringForCommandIdentifier:(id)identifier descriptionType:(id)type targetTypes:(id)types
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  typeCopy = type;
  typesCopy = types;
  _commandDescriptionsTable = [(SRCSCommandStringsTable *)self _commandDescriptionsTable];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = typesCopy;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v24;
LABEL_3:
    v17 = 0;
    v18 = v15;
    while (1)
    {
      if (*v24 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v23 + 1) + 8 * v17);
      if ([v19 isEqualToString:@"None"])
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", identifierCopy, typeCopy, v22];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%@", identifierCopy, typeCopy, v19];
      }
      v20 = ;
      v15 = [_commandDescriptionsTable objectForKey:v20];

      if ([v15 length])
      {
        break;
      }

      ++v17;
      v18 = v15;
      if (v14 == v17)
      {
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)mutableAttributedStringByReplacingPlaceholderAttribute:(id)attribute withAttributeName:(id)name inAttributedString:(id)string withValueTable:(id)table
{
  nameCopy = name;
  tableCopy = table;
  v11 = MEMORY[0x277CCAB48];
  stringCopy = string;
  attributeCopy = attribute;
  v14 = [[v11 alloc] initWithAttributedString:stringCopy];
  v15 = [stringCopy length];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __134__SRCSCommandStringsTable_mutableAttributedStringByReplacingPlaceholderAttribute_withAttributeName_inAttributedString_withValueTable___block_invoke;
  v22[3] = &unk_279CF5490;
  v23 = tableCopy;
  v16 = v14;
  v24 = v16;
  v25 = nameCopy;
  v17 = nameCopy;
  v18 = tableCopy;
  [stringCopy enumerateAttribute:attributeCopy inRange:0 options:v15 usingBlock:{0, v22}];

  [v16 removeAttribute:attributeCopy range:{0, objc_msgSend(v16, "length")}];
  v19 = v25;
  v20 = v16;

  return v16;
}

uint64_t __134__SRCSCommandStringsTable_mutableAttributedStringByReplacingPlaceholderAttribute_withAttributeName_inAttributedString_withValueTable___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) objectForKey:a2];
  if (v7)
  {
    [*(a1 + 40) addAttribute:*(a1 + 48) value:v7 range:{a3, a4}];
  }

  return MEMORY[0x2821F96F8]();
}

- (id)phrasesForCommandIdentifier:(id)identifier targetTypes:(id)types parameterStrings:(id)strings
{
  stringsCopy = strings;
  v12 = 0;
  v9 = [(SRCSCommandStringsTable *)self languageModelDictionaryForCommandIdentifier:identifier targetTypes:types parsingErrorString:&v12];
  if (v9)
  {
    v10 = [(SRCSCommandStringsTable *)self spokenStringPermutationsOfLanguageModelDictionary:v9 stringsTable:stringsCopy restrictPermutationsToShortestAndLongest:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)mutableAttributedStringCommandDescriptionForCommandIdentifier:(id)identifier calculateDisplayedAttributedStringWidthBlock:(id)block
{
  v4 = MEMORY[0x28223BE20](self, a2, identifier, block);
  v6 = v5;
  v7 = v4;
  v432 = *MEMORY[0x277D85DE8];
  v277 = v8;
  v295 = v6;
  v9 = objc_opt_new();
  v10 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
  v284 = v7;
  v280 = [v10 commandStringsTableForLocaleIdentifier:v7[1]];

  v270 = objc_opt_new();
  v364 = 0u;
  v365 = 0u;
  v366 = 0u;
  v367 = 0u;
  v12 = [AllValidCommandParameterIdentifiers(v270 v11)];
  v13 = [v12 countByEnumeratingWithState:&v364 objects:v431 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v365;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v365 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v364 + 1) + 8 * i);
        v18 = +[SRCSCommandStringsTable activeTargetTypes];
        v19 = [v280 descriptionStringForCommandIdentifier:v17 descriptionType:@"NAME" targetTypes:v18];

        if ([v19 length])
        {
          [v270 setObject:v19 forKey:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v364 objects:v431 count:16];
    }

    while (v14);
  }

  v20 = +[SRCSCommandStringsTable activeTargetTypes];
  v21 = v280;
  v22 = [v280 descriptionStringForCommandIdentifier:@"Section.Phrases" descriptionType:@"TITL" targetTypes:v20];

  v23 = 0x277CCA000uLL;
  v24 = objc_alloc(MEMORY[0x277CCAB48]);
  if (v22)
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v22];
  }

  else
  {
    v25 = &stru_287C0A5E8;
  }

  v26 = v22;
  v27 = 0x2803FF000uLL;
  v429[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
  v429[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
  v430[0] = kSRCSCommandDescriptionsSectionTitleValue;
  v430[1] = kSRCSCommandDescriptionsSectionTitleValue;
  v429[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
  v430[2] = kSRCSCommandDescriptionsSectionTitleValue;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v430 forKeys:v429 count:3];
  v29 = [v24 initWithString:v25 attributes:v28];

  v261 = v26;
  if (v26)
  {
  }

  v260 = v29;
  [v9 appendAttributedString:v29];
  v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v273 = [v30 localizedStringForKey:@"CommandDisplay.commandDisplayWithBulletAndNewLineFormatter" value:&stru_287C0A5E8 table:0];

  v31 = +[SRCSCommandStringsTable activeTargetTypes];
  v32 = [v284 phrasesForCommandIdentifier:v277 targetTypes:v31 parameterStrings:v270];

  string = [MEMORY[0x277CCAB68] string];
  v360 = 0u;
  v361 = 0u;
  v362 = 0u;
  v363 = 0u;
  obj = v32;
  v33 = [obj countByEnumeratingWithState:&v360 objects:v428 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v361;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v361 != v35)
        {
          objc_enumerationMutation(obj);
        }

        [string appendFormat:v273, *(*(&v360 + 1) + 8 * j)];
      }

      v34 = [obj countByEnumeratingWithState:&v360 objects:v428 count:16];
    }

    while (v34);
  }

  v37 = objc_alloc(MEMORY[0x277CCAB48]);
  v426[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
  v426[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
  v427[0] = kSRCSCommandDescriptionsVariantValue;
  v427[1] = kSRCSCommandDescriptionsSectionDescValue;
  v426[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
  v427[2] = kSRCSCommandDescriptionsSectionDescValue;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v427 forKeys:v426 count:3];
  v39 = [v37 initWithString:string attributes:v38];

  v259 = v39;
  [v9 appendAttributedString:v39];
  v40 = +[SRCSCommandStringsTable activeTargetTypes];
  v41 = [v280 descriptionStringForCommandIdentifier:v277 descriptionType:@"SUMM" targetTypes:v40];

  v262 = v41;
  v268 = [v284 parameterIdentifiersFromCommandIdentifier:v277];
  v289 = v9;
  if ([v41 length] || objc_msgSend(v268, "count"))
  {
    v42 = +[SRCSCommandStringsTable activeTargetTypes];
    v43 = [v280 descriptionStringForCommandIdentifier:@"Section.Description" descriptionType:@"TITL" targetTypes:v42];

    v44 = objc_alloc(MEMORY[0x277CCAB48]);
    v45 = &stru_287C0A5E8;
    if (v43)
    {
      v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v43];
    }

    v424[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
    v424[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
    v425[0] = kSRCSCommandDescriptionsSectionTitleValue;
    v425[1] = kSRCSCommandDescriptionsSectionTitleValue;
    v424[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
    v425[2] = kSRCSCommandDescriptionsSectionTitleValue;
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v425 forKeys:v424 count:3];
    v286 = [v44 initWithString:v45 attributes:v46];

    v281 = v43;
    if (v43)
    {
    }

    [v9 appendAttributedString:v286];
    if ([v262 length])
    {
      v47 = objc_alloc(MEMORY[0x277CCAB48]);
      v262 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v262];
      v49 = [v47 initWithString:v262];

      [v280 resolveReferencesInMutableAttributedString:v49 stringsTable:v270];
      v422[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
      v422[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
      v423[0] = kSRCSCommandDescriptionsSectionDescValue;
      v423[1] = kSRCSCommandDescriptionsSectionDescValue;
      v422[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
      v423[2] = kSRCSCommandDescriptionsSectionDescValue;
      v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v423 forKeys:v422 count:3];
      [v49 addAttributes:v50 range:{0, objc_msgSend(v49, "length")}];

      [v9 appendAttributedString:v49];
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v356 = 0u;
    v357 = 0u;
    v358 = 0u;
    v359 = 0u;
    v294 = v268;
    v301 = [v294 countByEnumeratingWithState:&v356 objects:v421 count:16];
    if (v301)
    {
      v296 = *v357;
      v51 = 0.0;
      v52 = v270;
      v53 = 0x277CBE000;
      do
      {
        for (k = 0; k != v301; ++k)
        {
          if (*v357 != v296)
          {
            objc_enumerationMutation(v294);
          }

          v55 = *(*(&v356 + 1) + 8 * k);
          v56 = [v52 objectForKey:v55];
          v57 = [SRCSCommandStringsTable formattedBuiltInCommandString:v56];

          if ([v57 length])
          {
            v58 = objc_alloc(MEMORY[0x277CCAB48]);
            v419[0] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
            v419[1] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
            v420[0] = kSRCSCommandDescriptionsSectionDescBoldValue;
            v420[1] = kSRCSCommandDescriptionsSectionDescValue;
            v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v420 forKeys:v419 count:2];
            v60 = [v58 initWithString:v57 attributes:v59];

            v61 = [v284 _descriptionTypeForParameterIdentifier:v55 commandIdentifier:v277];
            v62 = objc_alloc(MEMORY[0x277CCAB48]);
            v63 = +[SRCSCommandStringsTable activeTargetTypes];
            v64 = [v280 descriptionStringForCommandIdentifier:v55 descriptionType:v61 targetTypes:v63];
            v65 = [v62 initWithString:v64];

            v52 = v270;
            [v280 resolveReferencesInMutableAttributedString:v65 stringsTable:v270];
            v53 = 0x277CBE000uLL;
            v417[0] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
            v417[1] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
            v418[0] = kSRCSCommandDescriptionsSectionDescValue;
            v418[1] = kSRCSCommandDescriptionsSectionDescValue;
            v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v418 forKeys:v417 count:2];
            [(__CFString *)v65 addAttributes:v66 range:0, [(__CFString *)v65 length]];

            if ([(__CFString *)v65 length])
            {
              v67 = v65;
            }

            else
            {
              v67 = &stru_287C0A5E8;
            }

            [dictionary setObject:v67 forKey:v60];
            if (v295)
            {
              v68 = v295[2]();
            }

            else
            {
              v68 = 10.0;
            }

            if (v68 > v51)
            {
              v51 = v68;
            }
          }
        }

        v301 = [v294 countByEnumeratingWithState:&v356 objects:v421 count:16];
      }

      while (v301);
      v69 = v51;
    }

    else
    {
      v69 = 0.0;
      v53 = 0x277CBE000;
    }

    v70 = objc_opt_new();
    v352 = 0u;
    v353 = 0u;
    v354 = 0u;
    v355 = 0u;
    allKeys = [dictionary allKeys];
    v302 = [(__CFString *)allKeys countByEnumeratingWithState:&v352 objects:v416 count:16];
    if (v302)
    {
      v297 = *v353;
      v53 = 0x277CBE000uLL;
      do
      {
        for (m = 0; m != v302; ++m)
        {
          if (*v353 != v297)
          {
            objc_enumerationMutation(allKeys);
          }

          v72 = *(*(&v352 + 1) + 8 * m);
          [v70 appendAttributedString:v72];
          v73 = objc_alloc(MEMORY[0x277CCAB48]);
          v414[0] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
          v414[1] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
          v415[0] = kSRCSCommandDescriptionsSectionDescValue;
          v415[1] = kSRCSCommandDescriptionsSectionDescValue;
          v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v415 forKeys:v414 count:2];
          v75 = [v73 initWithString:@"\t" attributes:v74];
          [v70 appendAttributedString:v75];

          v76 = [dictionary objectForKey:v72];
          [v70 appendAttributedString:v76];

          v77 = objc_alloc(MEMORY[0x277CCAB48]);
          v412[0] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
          v412[1] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
          v413[0] = kSRCSCommandDescriptionsSectionDescValue;
          v413[1] = kSRCSCommandDescriptionsSectionDescValue;
          v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v413 forKeys:v412 count:2];
          v79 = [v77 initWithString:@"\n" attributes:v78];
          [v70 appendAttributedString:v79];
        }

        v302 = [(__CFString *)allKeys countByEnumeratingWithState:&v352 objects:v416 count:16];
      }

      while (v302);
    }

    v80 = v53;
    v27 = 0x2803FF000uLL;
    v410 = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
    v411 = kSRCSCommandDescriptionsParameterValue;
    v81 = [*(v80 + 2752) dictionaryWithObjects:&v411 forKeys:&v410 count:1];
    [v70 addAttributes:v81 range:{0, objc_msgSend(v70, "length")}];

    v9 = v289;
    [v289 appendAttributedString:v70];
    v82 = +[SRCSCommandStringsTable activeTargetTypes];
    v21 = v280;
    v83 = [v280 descriptionStringForCommandIdentifier:v277 descriptionType:@"DESC" targetTypes:v82];

    v23 = 0x277CCA000uLL;
    v84 = 0x277CCA000uLL;
    if ([v83 length])
    {
      v85 = objc_alloc(MEMORY[0x277CCAB48]);
      v86 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v83];
      v87 = [v85 initWithString:v86];
      v88 = v80;
      v89 = v87;

      [v280 resolveReferencesInMutableAttributedString:v89 stringsTable:v270];
      v408[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
      v408[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
      v409[0] = kSRCSCommandDescriptionsSectionDescValue;
      v409[1] = kSRCSCommandDescriptionsSectionDescValue;
      v408[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
      v409[2] = kSRCSCommandDescriptionsSectionDescValue;
      v90 = [*(v88 + 2752) dictionaryWithObjects:v409 forKeys:v408 count:3];
      [v89 addAttributes:v90 range:{0, objc_msgSend(v89, "length")}];

      [v289 appendAttributedString:v89];
    }
  }

  else
  {
    v69 = 0.0;
    v84 = 0x277CCA000;
  }

  if ([v268 count])
  {
    v91 = [v284 _exampleStringPermutationsFromCommandIdentifier:v277];
    if ([v91 count])
    {
      v92 = +[SRCSCommandStringsTable activeTargetTypes];
      v93 = [v21 descriptionStringForCommandIdentifier:@"Section.Examples" descriptionType:@"TITL" targetTypes:v92];

      v94 = objc_alloc(MEMORY[0x277CCAB48]);
      if (v93)
      {
        v95 = [*(v84 + 3240) stringWithFormat:@"%@\n", v93];
      }

      else
      {
        v95 = &stru_287C0A5E8;
      }

      v406[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
      v406[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
      v407[0] = kSRCSCommandDescriptionsSectionTitleValue;
      v407[1] = kSRCSCommandDescriptionsSectionTitleValue;
      v406[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
      v407[2] = kSRCSCommandDescriptionsSectionTitleValue;
      v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v407 forKeys:v406 count:3];
      v97 = [v94 initWithString:v95 attributes:v96];

      if (v93)
      {
      }

      [v9 appendAttributedString:v97];
      string2 = [MEMORY[0x277CCAB68] string];
      v348 = 0u;
      v349 = 0u;
      v350 = 0u;
      v351 = 0u;
      v99 = v91;
      v100 = [v99 countByEnumeratingWithState:&v348 objects:v405 count:16];
      if (v100)
      {
        v101 = v100;
        v102 = *v349;
        do
        {
          for (n = 0; n != v101; ++n)
          {
            if (*v349 != v102)
            {
              objc_enumerationMutation(v99);
            }

            [string2 appendFormat:v273, *(*(&v348 + 1) + 8 * n)];
          }

          v101 = [v99 countByEnumeratingWithState:&v348 objects:v405 count:16];
        }

        while (v101);
      }

      v104 = objc_alloc(MEMORY[0x277CCAB48]);
      v27 = 0x2803FF000uLL;
      v403[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
      v403[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
      v404[0] = kSRCSCommandDescriptionsVariantValue;
      v404[1] = kSRCSCommandDescriptionsSectionDescValue;
      v403[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
      v404[2] = kSRCSCommandDescriptionsSectionDescValue;
      v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v404 forKeys:v403 count:3];
      v106 = [v104 initWithString:string2 attributes:v105];

      [v9 appendAttributedString:v106];
      v23 = 0x277CCA000uLL;

      v84 = 0x277CCA000uLL;
    }
  }

  v346 = 0u;
  v347 = 0u;
  v344 = 0u;
  v345 = 0u;
  v401[0] = kSRCSCommandParameterModifierKeys[0];
  v401[1] = kSRCSCommandParameterKeyboardKeyName[0];
  v306 = [MEMORY[0x277CBEA60] arrayWithObjects:v401 count:2];
  v107 = [v306 countByEnumeratingWithState:&v344 objects:v402 count:16];
  if (v107)
  {
    v108 = v107;
    v109 = *v345;
    v298 = *v345;
    do
    {
      for (ii = 0; ii != v108; ++ii)
      {
        if (*v345 != v109)
        {
          objc_enumerationMutation(v306);
        }

        v111 = *(*(&v344 + 1) + 8 * ii);
        if ([v268 containsObject:v111])
        {
          exampleParameterStringsTable = [v21 exampleParameterStringsTable];
          v113 = [exampleParameterStringsTable objectForKey:v111];

          if ([v113 count])
          {
            v114 = *(v84 + 3240);
            v115 = +[SRCSCommandStringsTable activeTargetTypes];
            v116 = [v280 descriptionStringForCommandIdentifier:v111 descriptionType:@"TITL" targetTypes:v115];
            [v114 stringWithFormat:@"%@\n", v116];
            v118 = v117 = v9;

            v119 = objc_alloc(MEMORY[0x277CCAB48]);
            if (v118)
            {
              v120 = v118;
            }

            else
            {
              v120 = &stru_287C0A5E8;
            }

            v399[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
            v399[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
            v400[0] = kSRCSCommandDescriptionsSectionTitleValue;
            v400[1] = kSRCSCommandDescriptionsSectionTitleValue;
            v399[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
            v400[2] = kSRCSCommandDescriptionsSectionTitleValue;
            v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v400 forKeys:v399 count:3];
            v122 = [v119 initWithString:v120 attributes:v121];

            [v117 appendAttributedString:v122];
            string3 = [MEMORY[0x277CCAB68] string];
            v340 = 0u;
            v341 = 0u;
            v342 = 0u;
            v343 = 0u;
            v124 = [v113 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
            v125 = [v124 countByEnumeratingWithState:&v340 objects:v398 count:16];
            if (v125)
            {
              v126 = v125;
              v127 = *v341;
              do
              {
                for (jj = 0; jj != v126; ++jj)
                {
                  if (*v341 != v127)
                  {
                    objc_enumerationMutation(v124);
                  }

                  [string3 appendFormat:v273, *(*(&v340 + 1) + 8 * jj)];
                }

                v126 = [v124 countByEnumeratingWithState:&v340 objects:v398 count:16];
              }

              while (v126);
            }

            v23 = 0x277CCA000uLL;
            v129 = objc_alloc(MEMORY[0x277CCAB48]);
            v27 = 0x2803FF000uLL;
            v396[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
            v396[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
            v397[0] = kSRCSCommandDescriptionsVariantValue;
            v397[1] = kSRCSCommandDescriptionsSectionDescValue;
            v396[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
            v397[2] = kSRCSCommandDescriptionsSectionDescValue;
            v130 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v397 forKeys:v396 count:3];
            v131 = [v129 initWithString:string3 attributes:v130];

            [v289 appendAttributedString:v131];
            v9 = v289;
            v84 = 0x277CCA000uLL;
            v109 = v298;
          }

          v21 = v280;
        }
      }

      v108 = [v306 countByEnumeratingWithState:&v344 objects:v402 count:16];
    }

    while (v108);
  }

  if (([v277 isEqualToString:@"Dictation.Streaming"] & 1) != 0 || (objc_msgSend(v277, "isEqualToString:", @"System.StartDictationMode") & 1) != 0 || (v133 = 0.0, objc_msgSend(v277, "isEqualToString:", @"System.StartSpellingMode")))
  {
    v134 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
    v135 = v284[1];
    v136 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v137 = [v134 dictionaryForLocaleIdentifier:v135 bundle:v136 subDirectory:@"LocalizedCommandDocumentation" rootFileName:@"EmbeddedCommands" rootFileExtension:@"plist"];

    if (v137)
    {
      v138 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v307 = [v138 localizedStringForKey:@"CommandDisplay.commandDisplayQuotedWithBulletFormatter" value:&stru_287C0A5E8 table:0];

      v338 = 0u;
      v339 = 0u;
      v336 = 0u;
      v337 = 0u;
      v258 = v137;
      v282 = [v137 objectForKey:kSRCSEmbeddedCommandsKeySections];
      v290 = [v282 countByEnumeratingWithState:&v336 objects:v395 count:16];
      if (v290)
      {
        v287 = *v337;
        v139 = 0.0;
        do
        {
          v140 = 0;
          do
          {
            if (*v337 != v287)
            {
              objc_enumerationMutation(v282);
            }

            allKeys = v140;
            v141 = *(*(&v336 + 1) + 8 * v140);
            array = [MEMORY[0x277CBEB18] array];
            v332 = 0u;
            v333 = 0u;
            v334 = 0u;
            v335 = 0u;
            v143 = [v141 objectForKey:kSRCSEmbeddedCommandsKeyItems];
            v144 = [v143 countByEnumeratingWithState:&v332 objects:v394 count:16];
            if (v144)
            {
              v145 = v144;
              v146 = *v333;
              do
              {
                for (kk = 0; kk != v145; ++kk)
                {
                  if (*v333 != v146)
                  {
                    objc_enumerationMutation(v143);
                  }

                  v148 = *(*(&v332 + 1) + 8 * kk);
                  v149 = [v148 objectForKey:kSRCSEmbeddedCommandsKeyMode];
                  if ([v149 isEqualToString:kSRCSEmbeddedCommandsModeAll])
                  {
                    goto LABEL_114;
                  }

                  v150 = [v277 isEqualToString:@"System.StartSpellingMode"];
                  v151 = &kSRCSEmbeddedCommandsModeSpellingOnly;
                  if (!v150)
                  {
                    v151 = &kSRCSEmbeddedCommandsModeDictationOnly;
                  }

                  if ([v149 isEqualToString:*v151])
                  {
LABEL_114:
                    [array addObject:v148];
                  }
                }

                v145 = [v143 countByEnumeratingWithState:&v332 objects:v394 count:16];
              }

              while (v145);
            }

            v330 = 0u;
            v331 = 0u;
            v328 = 0u;
            v329 = 0u;
            v299 = array;
            v152 = [v299 countByEnumeratingWithState:&v328 objects:v393 count:16];
            if (v152)
            {
              v153 = v152;
              v303 = *v329;
              do
              {
                for (mm = 0; mm != v153; ++mm)
                {
                  if (*v329 != v303)
                  {
                    objc_enumerationMutation(v299);
                  }

                  v155 = [*(*(&v328 + 1) + 8 * mm) objectForKey:kSRCSEmbeddedCommandsKeyCommandStrings];
                  v324 = 0u;
                  v325 = 0u;
                  v326 = 0u;
                  v327 = 0u;
                  v156 = v155;
                  v157 = [v156 countByEnumeratingWithState:&v324 objects:v392 count:16];
                  if (v157)
                  {
                    v158 = v157;
                    v159 = *v325;
                    do
                    {
                      for (nn = 0; nn != v158; ++nn)
                      {
                        if (*v325 != v159)
                        {
                          objc_enumerationMutation(v156);
                        }

                        v161 = [MEMORY[0x277CCACA8] stringWithFormat:v307, *(*(&v324 + 1) + 8 * nn)];
                        v162 = objc_alloc(MEMORY[0x277CCAB48]);
                        v390[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
                        v390[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
                        v391[0] = kSRCSCommandDescriptionsPuncCommentValue;
                        v391[1] = kSRCSCommandDescriptionsSectionDescValue;
                        v390[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
                        v391[2] = kSRCSCommandDescriptionsSectionDescValue;
                        v163 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v391 forKeys:v390 count:3];
                        v164 = [v162 initWithString:v161 attributes:v163];

                        if (v295)
                        {
                          v165 = v295[2]();
                        }

                        else
                        {
                          v165 = 10.0;
                        }

                        if (v165 > v139)
                        {
                          v139 = v165;
                        }
                      }

                      v158 = [v156 countByEnumeratingWithState:&v324 objects:v392 count:16];
                    }

                    while (v158);
                  }
                }

                v153 = [v299 countByEnumeratingWithState:&v328 objects:v393 count:16];
              }

              while (v153);
            }

            v140 = (&allKeys->isa + 1);
            v23 = 0x277CCA000;
          }

          while (&allKeys->isa + 1 != v290);
          v290 = [v282 countByEnumeratingWithState:&v336 objects:v395 count:16];
        }

        while (v290);
        v133 = v139;
        v9 = v289;
        v21 = v280;
        v84 = 0x277CCA000;
        v27 = 0x2803FF000;
      }

      else
      {
        v133 = 0.0;
      }

      v166 = +[SRCSCommandStringsTable activeTargetTypes];
      v167 = [v21 descriptionStringForCommandIdentifier:@"Section.Punctuation" descriptionType:@"TITL" targetTypes:v166];

      v168 = objc_alloc(*(v23 + 2888));
      if (v167)
      {
        v167 = [*(v84 + 3240) stringWithFormat:@"%@\n", v167];
      }

      else
      {
        v167 = &stru_287C0A5E8;
      }

      v388[0] = *(v27 + 2632);
      v388[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
      v389[0] = kSRCSCommandDescriptionsSectionTitleValue;
      v389[1] = kSRCSCommandDescriptionsSectionTitleValue;
      v388[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
      v389[2] = kSRCSCommandDescriptionsSectionTitleValue;
      v170 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v389 forKeys:v388 count:3];
      v257 = [v168 initWithString:v167 attributes:v170];

      if (v167)
      {
      }

      [v9 appendAttributedString:v257];
      if ([v277 isEqualToString:@"System.StartSpellingMode"])
      {
        v171 = @"DSC2";
      }

      else
      {
        v171 = @"DESC";
      }

      v172 = +[SRCSCommandStringsTable activeTargetTypes];
      v173 = [v21 descriptionStringForCommandIdentifier:@"Section.Punctuation" descriptionType:v171 targetTypes:v172];

      v174 = objc_alloc(*(v23 + 2888));
      if (v173)
      {
        v173 = [*(v84 + 3240) stringWithFormat:@"%@\n", v173];
      }

      else
      {
        v173 = &stru_287C0A5E8;
      }

      v256 = v167;
      v386[0] = *(v27 + 2632);
      v386[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
      v387[0] = kSRCSCommandDescriptionsSectionDescValue;
      v387[1] = kSRCSCommandDescriptionsSectionDescValue;
      v386[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
      v387[2] = kSRCSCommandDescriptionsSectionDescValue;
      v176 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v387 forKeys:v386 count:3];
      v177 = [v174 initWithString:v173 attributes:v176];

      v255 = v173;
      if (v173)
      {
      }

      v254 = v177;
      [v9 appendAttributedString:v177];
      v178 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v279 = [v178 localizedStringForKey:@"CommandDisplay.commandDisplayHortLine" value:&stru_287C0A5E8 table:0];

      v322 = 0u;
      v323 = 0u;
      v320 = 0u;
      v321 = 0u;
      v263 = [v258 objectForKey:kSRCSEmbeddedCommandsKeySections];
      v266 = [v263 countByEnumeratingWithState:&v320 objects:v385 count:16];
      if (v266)
      {
        v265 = *v321;
        do
        {
          v179 = 0;
          do
          {
            if (*v321 != v265)
            {
              objc_enumerationMutation(v263);
            }

            v269 = v179;
            v180 = *(*(&v320 + 1) + 8 * v179);
            array2 = [MEMORY[0x277CBEB18] array];
            v316 = 0u;
            v317 = 0u;
            v318 = 0u;
            v319 = 0u;
            v271 = v180;
            v182 = [v180 objectForKey:kSRCSEmbeddedCommandsKeyItems];
            v183 = [v182 countByEnumeratingWithState:&v316 objects:v384 count:16];
            if (v183)
            {
              v184 = v183;
              v185 = *v317;
              do
              {
                for (i1 = 0; i1 != v184; ++i1)
                {
                  if (*v317 != v185)
                  {
                    objc_enumerationMutation(v182);
                  }

                  v187 = *(*(&v316 + 1) + 8 * i1);
                  v188 = [v187 objectForKey:kSRCSEmbeddedCommandsKeyMode];
                  if ([v188 isEqualToString:kSRCSEmbeddedCommandsModeAll])
                  {
                    goto LABEL_168;
                  }

                  v189 = [v277 isEqualToString:@"System.StartSpellingMode"];
                  v190 = &kSRCSEmbeddedCommandsModeSpellingOnly;
                  if (!v189)
                  {
                    v190 = &kSRCSEmbeddedCommandsModeDictationOnly;
                  }

                  if ([v188 isEqualToString:*v190])
                  {
LABEL_168:
                    [array2 addObject:v187];
                  }
                }

                v184 = [v182 countByEnumeratingWithState:&v316 objects:v384 count:16];
              }

              while (v184);
            }

            v191 = [array2 count];
            v312 = 0u;
            v313 = 0u;
            v314 = 0u;
            v315 = 0u;
            v272 = array2;
            v278 = [v272 countByEnumeratingWithState:&v312 objects:v383 count:16];
            if (v278)
            {
              v192 = 0;
              v193 = 0;
              v275 = *v313;
              v276 = v191 - 1;
              v194 = 0x277CCA000uLL;
              do
              {
                v195 = 0;
                do
                {
                  if (*v313 != v275)
                  {
                    v196 = v195;
                    objc_enumerationMutation(v272);
                    v195 = v196;
                  }

                  v283 = v195;
                  v285 = v192;
                  v304 = *(*(&v312 + 1) + 8 * v195);
                  if ((v193 & 1) == 0)
                  {
                    v197 = *(v84 + 3240);
                    v198 = [v271 objectForKey:kSRCSEmbeddedCommandsKeyTitle];
                    v198 = [v197 stringWithFormat:@"PunctuationGroup.%@", v198];
                    v200 = +[SRCSCommandStringsTable activeTargetTypes];
                    v201 = [v21 descriptionStringForCommandIdentifier:v198 descriptionType:@"TITL" targetTypes:v200];

                    v202 = objc_alloc(*(v194 + 2888));
                    if (v201)
                    {
                      v201 = [*(v84 + 3240) stringWithFormat:@"%@\n", v201];
                      v274 = v201;
                    }

                    else
                    {
                      v201 = &stru_287C0A5E8;
                    }

                    v381[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
                    v381[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
                    v382[0] = kSRCSCommandDescriptionsSectionSubTitleValue;
                    v382[1] = kSRCSCommandDescriptionsSectionSubTitleValue;
                    v381[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
                    v382[2] = kSRCSCommandDescriptionsSectionSubTitleValue;
                    v204 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v382 forKeys:v381 count:3];
                    v205 = [v202 initWithString:v201 attributes:v204];

                    if (v201)
                    {
                    }

                    [v9 appendAttributedString:v205];
                    v206 = objc_alloc(*(v194 + 2888));
                    v279 = [*(v84 + 3240) stringWithFormat:@"%@\n", v279];
                    v379[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
                    v379[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
                    v380[0] = kSRCSCommandDescriptionsPuncDividerValue;
                    v380[1] = kSRCSCommandDescriptionsPuncDividerValue;
                    v379[2] = kSRCSCommandDescriptionsStrikethroughColorPlaceholderAttributeName;
                    v379[3] = kSRCSCommandDescriptionsStrikethroughStylePlaceholderAttributeName;
                    v380[2] = kSRCSCommandDescriptionsSectionDescValue;
                    v380[3] = kSRCSCommandDescriptionsSectionDescValue;
                    v208 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v380 forKeys:v379 count:4];
                    v209 = [v206 initWithString:v279 attributes:v208];

                    [v9 appendAttributedString:v209];
                    v291 = v205;
                    v210 = +[SRCSCommandStringsTable activeTargetTypes];
                    v211 = [v280 descriptionStringForCommandIdentifier:@"PunctuationColumnHeader.Phrase" descriptionType:@"TITL" targetTypes:v210];

                    v212 = +[SRCSCommandStringsTable activeTargetTypes];
                    v213 = [v280 descriptionStringForCommandIdentifier:@"PunctuationColumnHeader.Result" descriptionType:@"TITL" targetTypes:v212];

                    v214 = objc_alloc(*(v194 + 2888));
                    v213 = [*(v84 + 3240) stringWithFormat:@"%@\t%@\n", v211, v213];
                    v377[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
                    v377[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
                    v378[0] = kSRCSCommandDescriptionsHeaderValue;
                    v378[1] = kSRCSCommandDescriptionsSectionDescValue;
                    v377[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
                    v378[2] = kSRCSCommandDescriptionsSectionDescValue;
                    v216 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v378 forKeys:v377 count:3];
                    v217 = [v214 initWithString:v213 attributes:v216];

                    v194 = 0x277CCA000uLL;
                    [v9 appendAttributedString:v217];
                    [v9 appendAttributedString:v209];
                  }

                  v218 = [v304 objectForKey:kSRCSEmbeddedCommandsKeyCommandStrings];
                  v308 = 0u;
                  v309 = 0u;
                  v310 = 0u;
                  v311 = 0u;
                  v292 = v218;
                  v219 = [v292 countByEnumeratingWithState:&v308 objects:v376 count:16];
                  if (v219)
                  {
                    v220 = v219;
                    v221 = 0;
                    v300 = *v309;
                    do
                    {
                      v222 = 0;
                      v288 = v221;
                      v223 = -v221;
                      do
                      {
                        if (*v309 != v300)
                        {
                          objc_enumerationMutation(v292);
                        }

                        v224 = [*(v84 + 3240) stringWithFormat:v307, *(*(&v308 + 1) + 8 * v222)];
                        v225 = objc_alloc(*(v194 + 2888));
                        v226 = *(v84 + 3240);
                        v227 = &stru_287C0A5E8;
                        if (v223 == v222)
                        {
                          allKeys = [v304 objectForKey:kSRCSEmbeddedCommandsKeyResult];
                          v227 = allKeys;
                        }

                        v227 = [v226 stringWithFormat:@"%@\t%@", v224, v227];
                        v374[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
                        v374[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
                        v375[0] = kSRCSCommandDescriptionsItemValue;
                        v375[1] = kSRCSCommandDescriptionsSectionDescValue;
                        v374[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
                        v375[2] = kSRCSCommandDescriptionsSectionDescValue;
                        v229 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v375 forKeys:v374 count:3];
                        v230 = [v225 initWithString:v227 attributes:v229];

                        if (v223 != v222)
                        {
                          [v9 appendAttributedString:v230];
                          v84 = 0x277CCA000uLL;
LABEL_197:
                          v241 = objc_alloc(*(v194 + 2888));
                          v370[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
                          v370[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
                          v371[0] = kSRCSCommandDescriptionsItemValue;
                          v371[1] = kSRCSCommandDescriptionsSectionDescValue;
                          v370[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
                          v371[2] = kSRCSCommandDescriptionsSectionDescValue;
                          v235 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v371 forKeys:v370 count:3];
                          v240 = [v241 initWithString:@"\n" attributes:v235];
                          goto LABEL_198;
                        }

                        [v9 appendAttributedString:v230];
                        v231 = [v304 objectForKey:kSRCSEmbeddedCommandsKeyComment];
                        v232 = [v231 length];

                        v84 = 0x277CCA000;
                        if (!v232)
                        {
                          goto LABEL_197;
                        }

                        v233 = objc_alloc(*(v194 + 2888));
                        v234 = MEMORY[0x277CCACA8];
                        v235 = [v304 objectForKey:kSRCSEmbeddedCommandsKeyResult];
                        if ([v235 length])
                        {
                          v236 = @"  ";
                        }

                        else
                        {
                          v236 = &stru_287C0A5E8;
                        }

                        v237 = [v304 objectForKey:kSRCSEmbeddedCommandsKeyComment];
                        v237 = [v234 stringWithFormat:@"%@%@\n", v236, v237];
                        v372[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
                        v372[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
                        v373[0] = kSRCSCommandDescriptionsItemValue;
                        v373[1] = kSRCSCommandDescriptionsPuncCommentValue;
                        v372[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
                        v373[2] = kSRCSCommandDescriptionsPuncCommentValue;
                        v239 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v373 forKeys:v372 count:3];
                        v240 = [v233 initWithString:v237 attributes:v239];

                        v194 = 0x277CCA000;
                        v84 = 0x277CCA000;

                        v9 = v289;
LABEL_198:

                        [v9 appendAttributedString:v240];
                        ++v222;
                      }

                      while (v220 != v222);
                      v221 = v288 + v220;
                      v220 = [v292 countByEnumeratingWithState:&v308 objects:v376 count:16];
                    }

                    while (v220);
                  }

                  v242 = objc_alloc(*(v194 + 2888));
                  v243 = &stru_287C0A5E8;
                  if (v285 < v276)
                  {
                    v243 = v279;
                  }

                  v243 = [*(v84 + 3240) stringWithFormat:@"%@\n", v243];
                  v368[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
                  v368[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
                  v369[0] = kSRCSCommandDescriptionsPuncDividerValue;
                  v369[1] = kSRCSCommandDescriptionsPuncDividerValue;
                  v368[2] = kSRCSCommandDescriptionsStrikethroughColorPlaceholderAttributeName;
                  v368[3] = kSRCSCommandDescriptionsStrikethroughStylePlaceholderAttributeName;
                  v369[2] = kSRCSCommandDescriptionsPuncDividerValue;
                  v369[3] = kSRCSCommandDescriptionsPuncDividerValue;
                  v245 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v369 forKeys:v368 count:4];
                  v246 = [v242 initWithString:v243 attributes:v245];

                  [v9 appendAttributedString:v246];
                  v192 = v285 + 1;

                  v21 = v280;
                  v195 = v283 + 1;
                  v193 = 1;
                }

                while (v283 + 1 != v278);
                v278 = [v272 countByEnumeratingWithState:&v312 objects:v383 count:16];
              }

              while (v278);
            }

            v179 = v269 + 1;
          }

          while (v269 + 1 != v266);
          v266 = [v263 countByEnumeratingWithState:&v320 objects:v385 count:16];
        }

        while (v266);
      }

      v137 = v258;
    }

    else
    {
      v133 = 0.0;
    }
  }

  v247 = kSRCSCommandDescriptionsMaxParameterLengthPlaceholderAttributeName;
  *&v132 = v69;
  v248 = [MEMORY[0x277CCABB0] numberWithFloat:v132];
  [v9 addAttribute:v247 value:v248 range:{0, objc_msgSend(v9, "length")}];

  v249 = kSRCSCommandDescriptionsMaxEmbeddedCommandLengthPlaceholderAttributeName;
  *&v250 = v133;
  v251 = [MEMORY[0x277CCABB0] numberWithFloat:v250];
  [v9 addAttribute:v249 value:v251 range:{0, objc_msgSend(v9, "length")}];

  v252 = v9;
  return v9;
}

- (id)_exampleStringPermutationsFromCommandIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[SRCSCommandStringsTable activeTargetTypes];
  v12 = 0;
  v6 = [(SRCSCommandStringsTable *)self languageModelDictionaryForCommandIdentifier:identifierCopy targetTypes:v5 parsingErrorString:&v12];

  v7 = v12;
  v8 = [v7 length];

  v9 = 0;
  if (!v8)
  {
    exampleParameterStringsTable = [(SRCSCommandStringsTable *)self exampleParameterStringsTable];
    v9 = [(SRCSCommandStringsTable *)self spokenStringPermutationsOfLanguageModelDictionary:v6 stringsTable:exampleParameterStringsTable restrictPermutationsToShortestAndLongest:0];
  }

  return v9;
}

- (id)_descriptionTypeForParameterIdentifier:(id)identifier commandIdentifier:(id)commandIdentifier
{
  identifierCopy = identifier;
  commandIdentifierCopy = commandIdentifier;
  if (_descriptionTypeForParameterIdentifier_commandIdentifier__staticAlternateParameterDescriptionTypeTableSetUp != -1)
  {
    [SRCSCommandStringsTable _descriptionTypeForParameterIdentifier:commandIdentifier:];
  }

  if (RXEngineTypeForLocaleIdentifier() != 1 && (([identifierCopy isEqualToString:@"BuiltInLM.TextSegmentCardinalNumber"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"BuiltInLM.ScreenDistanceCardinalNumber") & 1) != 0) || objc_msgSend(identifierCopy, "hasPrefix:", @"BuiltInLM.Dictation") && +[SRCSCommandStringsTable isLocaleIdentifier:containedInLocaleIdentifiers:](SRCSCommandStringsTable, "isLocaleIdentifier:containedInLocaleIdentifiers:", self->_localeIdentifier, RXLocalesSupportingSpellingMode()))
  {
    v10 = @"DSC2";
  }

  else
  {
    v8 = [_descriptionTypeForParameterIdentifier_commandIdentifier__sAlternateParameterDescriptionTypeTable objectForKey:identifierCopy];
    v9 = [v8 containsObject:commandIdentifierCopy];

    if (v9)
    {
      v10 = @"DSC2";
    }

    else
    {
      v10 = @"DESC";
    }
  }

  return v10;
}

void __84__SRCSCommandStringsTable__descriptionTypeForParameterIdentifier_commandIdentifier___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _descriptionTypeForParameterIdentifier_commandIdentifier__sAlternateParameterDescriptionTypeTable;
  _descriptionTypeForParameterIdentifier_commandIdentifier__sAlternateParameterDescriptionTypeTable = v0;

  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"System.OverlayIncrementLabel", @"System.OverlayIncrementLabelUsingCardinalNumber", @"System.OverlayDecrementLabel", @"System.OverlayDecrementLabelUsingCardinalNumber", @"System.OverlaySetValueByPercentAtLabel", @"System.OverlayShowActionsForLabel", @"System.OverlayShowContextualMenuAtLabel", 0}];
  [_descriptionTypeForParameterIdentifier_commandIdentifier__sAlternateParameterDescriptionTypeTable setObject:v2 forKey:kSRCSCommandParameterOverlayLabel[0]];
}

- (id)parameterIdentifiersFromCommandIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[SRCSCommandStringsTable activeTargetTypes];
  v10 = 0;
  v6 = [(SRCSCommandStringsTable *)self languageModelDictionaryForCommandIdentifier:identifierCopy targetTypes:v5 parsingErrorString:&v10];

  v7 = [(SRCSCommandStringsTable *)self setOfBuiltInIdentifiersFromLanguageModelDictionary:v6];
  allObjects = [v7 allObjects];

  return allObjects;
}

- (void)resolveReferencesInMutableAttributedString:(id)string stringsTable:(id)table
{
  selfCopy = self;
  v46[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  tableCopy = table;
  string = [stringCopy string];
  v8 = [string rangeOfString:@"{"];
  v10 = v9;

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v43 = tableCopy;
    do
    {
      v11 = v8 + v10;
      string2 = [stringCopy string];
      v13 = [string2 rangeOfString:@"}" options:0 range:{v8 + v10, objc_msgSend(stringCopy, "length") - (v8 + v10)}];
      v15 = v14;

      string3 = [stringCopy string];
      v17 = [string3 substringWithRange:{v11, v13 - v11}];

      if ([v17 hasPrefix:@"BuiltInLM."])
      {
        v18 = [tableCopy objectForKey:v17];

        if (v18)
        {
          v19 = objc_alloc(MEMORY[0x277CCAB48]);
          v20 = [tableCopy objectForKey:v17];
          v21 = [SRCSCommandStringsTable formattedBuiltInCommandString:v20];
          v18 = [v19 initWithString:v21];

          tableCopy = v43;
        }
      }

      else
      {
        v18 = 0;
      }

      if ([v17 hasPrefix:@"CommonSection."])
      {
        v22 = objc_alloc(MEMORY[0x277CCAB48]);
        v23 = +[SRCSCommandStringsTable activeTargetTypes];
        v24 = [(SRCSCommandStringsTable *)selfCopy descriptionStringForCommandIdentifier:v17 descriptionType:@"DESC" targetTypes:v23];
        v25 = [v22 initWithString:v24];

        tableCopy = v43;
        [(SRCSCommandStringsTable *)selfCopy resolveReferencesInMutableAttributedString:v25 stringsTable:v43];
        v18 = v25;
      }

      if ([v17 hasPrefix:@"RemoteURLRef."])
      {
        v26 = +[SRCSCommandStringsTable activeTargetTypes];
        v27 = [(SRCSCommandStringsTable *)selfCopy descriptionStringForCommandIdentifier:v17 descriptionType:@"URLD" targetTypes:v26];

        v28 = +[SRCSCommandStringsTable activeTargetTypes];
        v29 = [(SRCSCommandStringsTable *)selfCopy descriptionStringForCommandIdentifier:v17 descriptionType:@"URLS" targetTypes:v28];

        if ([v27 length] && objc_msgSend(v29, "length"))
        {
          v30 = objc_alloc(MEMORY[0x277CCAB48]);
          v45 = @"NSLink";
          v46[0] = v29;
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
          v32 = [v30 initWithString:v27 attributes:v31];

          v18 = v32;
        }

        tableCopy = v43;
      }

      if (v18)
      {
        goto LABEL_22;
      }

      v33 = +[SRCSCommandStringsTable activeTargetTypes];
      v44 = 0;
      v34 = [(SRCSCommandStringsTable *)selfCopy languageModelDictionaryForCommandIdentifier:v17 targetTypes:v33 parsingErrorString:&v44];
      v35 = v44;

      v36 = [v35 length];
      if (v36)
      {
      }

      else
      {
        v37 = [(SRCSCommandStringsTable *)selfCopy spokenStringPermutationsOfLanguageModelDictionary:v34 stringsTable:tableCopy restrictPermutationsToShortestAndLongest:1];
        if ([v37 count])
        {
          v38 = objc_alloc(MEMORY[0x277CCAB48]);
          firstObject = [v37 firstObject];
          v18 = [v38 initWithString:firstObject];
        }

        else
        {
          v18 = 0;
        }

        tableCopy = v43;
        if (v18)
        {
          goto LABEL_22;
        }
      }

      v18 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:@"<unknown>"];
LABEL_22:
      [stringCopy replaceCharactersInRange:v8 withAttributedString:{v15 - v8 + v13, v18}];

      string4 = [stringCopy string];
      v8 = [string4 rangeOfString:@"{"];
      v10 = v41;
    }

    while (v8 != 0x7FFFFFFFFFFFFFFFLL);
  }
}

+ (NSString)deviceName
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_287C0A5E8;
  }

  v5 = v4;

  return &v4->isa;
}

- (id)rowDataForTargetTypes:(id)types
{
  v103 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v65 = typesCopy;
  if ([typesCopy containsObject:kSRCSCommandTargetTypeOSX])
  {
    mEMORY[0x277D79890] = [MEMORY[0x277D79890] shared];
    v7 = [mEMORY[0x277D79890] bestSupportedLocaleFor:self->_localeIdentifier];

    mEMORY[0x277D79890]2 = [MEMORY[0x277D79890] shared];
    localeIdentifier = [v7 localeIdentifier];
    v10 = [mEMORY[0x277D79890]2 engineForLocale:localeIdentifier];

    if ([v10 isEqualToString:@"s2"])
    {
      +[VCCommandObjC allCommandIdentifiersForMacLegacyDevice];
    }

    else
    {
      +[VCCommandObjC allCommandIdentifiersForMacQuasarDevice];
    }
    v11 = ;
    [v5 addObjectsFromArray:v11];
  }

  if ([typesCopy containsObject:kSRCSCommandTargetTypeiPhone])
  {
    v12 = +[VCCommandObjC allCommandIdentifiersForIPhoneDevice];
    [v5 addObjectsFromArray:v12];
  }

  if ([typesCopy containsObject:kSRCSCommandTargetTypeCarPlay])
  {
    v13 = +[VCCommandObjC allCommandIdentifiersForCarPlayDevice];
    [v5 addObjectsFromArray:v13];
  }

  if ([typesCopy containsObject:kSRCSCommandTargetTypeiPad])
  {
    v14 = +[VCCommandObjC allCommandIdentifiersForIPadDevice];
    [v5 addObjectsFromArray:v14];
  }

  if ([typesCopy containsObject:kSRCSCommandTargetTypeRealityDevice])
  {
    v15 = +[VCCommandObjC allCommandIdentifiersForVisionDevice];
    [v5 addObjectsFromArray:v15];
  }

  if ([typesCopy containsObject:kSRCSCommandTargetTypetvOS])
  {
    v16 = +[VCCommandObjC allCommandIdentifiersForIPodDevice];
    [v5 addObjectsFromArray:v16];
  }

  v70 = v5;
  _commandStringsTable = [(SRCSCommandStringsTable *)self _commandStringsTable];
  allKeys = [_commandStringsTable allKeys];
  v98[0] = MEMORY[0x277D85DD0];
  v98[1] = 3221225472;
  v98[2] = __49__SRCSCommandStringsTable_rowDataForTargetTypes___block_invoke;
  v98[3] = &unk_279CF54B8;
  v98[4] = self;
  v19 = [allKeys sortedArrayUsingComparator:v98];

  v64 = objc_opt_new();
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = v19;
  v20 = [obj countByEnumeratingWithState:&v94 objects:v102 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v95;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v95 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v94 + 1) + 8 * i);
        v93 = 0;
        v25 = [(SRCSCommandStringsTable *)self _rootCommandIdentifierFrom:v24 foundTargetType:&v93];
        v26 = v93;
        if (v26 && [typesCopy containsObject:v26])
        {
          [v64 setObject:v24 forKeyedSubscript:v25];
        }
      }

      v21 = [obj countByEnumeratingWithState:&v94 objects:v102 count:16];
    }

    while (v21);
  }

  v72 = 1;
  v27 = v70;
  do
  {
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    allValues = [v64 allValues];
    v29 = [allValues sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

    v30 = [v29 countByEnumeratingWithState:&v89 objects:v101 count:16];
    if (!v30)
    {
      goto LABEL_74;
    }

    v31 = v30;
    v32 = *v90;
    v73 = v29;
    v69 = *v90;
    do
    {
      v33 = 0;
      v71 = v31;
      do
      {
        if (*v90 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v89 + 1) + 8 * v33);
        if (![typesCopy count])
        {
          v35 = v34;
          v36 = 0;
          goto LABEL_72;
        }

        v88 = 0;
        v35 = [(SRCSCommandStringsTable *)self _rootCommandIdentifierFrom:v34 foundTargetType:&v88];
        v36 = v88;
        if (v36 && [v27 containsObject:v35] && objc_msgSend(typesCopy, "containsObject:", v36))
        {
          v75 = v36;
          [MEMORY[0x277CCAB68] string];
          v38 = v37 = v35;
          array2 = [MEMORY[0x277CBEA60] array];
          v87 = 0;
          v77 = v37;
          v40 = typesCopy;
          v41 = [(SRCSCommandStringsTable *)self languageModelDictionaryForCommandIdentifier:v37 targetTypes:typesCopy parsingErrorString:&v87];
          v42 = v87;
          if ([v42 length])
          {
            [v38 appendString:v42];
          }

          v74 = v42;
          v76 = v41;
          if ([v38 length])
          {
            v36 = v75;
            typesCopy = v40;
            v29 = v73;
          }

          else
          {
            v43 = [(SRCSCommandStringsTable *)self spokenStringPermutationsOfLanguageModelDictionary:v41 stringsTable:0];

            typesCopy = v40;
            v68 = v43;
            if (v72 == 1)
            {
              v85 = 0uLL;
              v86 = 0uLL;
              v83 = 0uLL;
              v84 = 0uLL;
              v44 = v43;
              v45 = [v44 countByEnumeratingWithState:&v83 objects:v100 count:16];
              if (v45)
              {
                v46 = v45;
                v47 = *v84;
                do
                {
                  for (j = 0; j != v46; ++j)
                  {
                    if (*v84 != v47)
                    {
                      objc_enumerationMutation(v44);
                    }

                    lowercaseString = [*(*(&v83 + 1) + 8 * j) lowercaseString];
                    array3 = [v4 objectForKey:lowercaseString];
                    if (!array3)
                    {
                      array3 = [MEMORY[0x277CBEB18] array];
                      [v4 setObject:array3 forKey:lowercaseString];
                    }

                    [array3 addObject:v34];
                  }

                  v46 = [v44 countByEnumeratingWithState:&v83 objects:v100 count:16];
                }

                while (v46);
                typesCopy = v65;
                v29 = v73;
                v32 = v69;
                v31 = v71;
                v36 = v75;
              }

              else
              {
                v31 = v71;
                v36 = v75;
                v29 = v73;
              }
            }

            else
            {
              v81 = 0uLL;
              v82 = 0uLL;
              v79 = 0uLL;
              v80 = 0uLL;
              array2 = v43;
              v51 = [array2 countByEnumeratingWithState:&v79 objects:v99 count:16];
              if (v51)
              {
                v52 = v51;
                v53 = *v80;
                do
                {
                  for (k = 0; k != v52; ++k)
                  {
                    if (*v80 != v53)
                    {
                      objc_enumerationMutation(array2);
                    }

                    v55 = [(SRCSCommandStringsTable *)self warningStringForText:*(*(&v79 + 1) + 8 * k) identifier:v34 textTable:v4];
                    if ([v55 length] && (objc_msgSend(v38, "isEqualToString:", v55) & 1) == 0)
                    {
                      if ([v38 length])
                      {
                        [v38 appendString:@"  "];
                      }

                      [v38 appendString:v55];
                    }
                  }

                  v52 = [array2 countByEnumeratingWithState:&v79 objects:v99 count:16];
                }

                while (v52);
              }

              v29 = v73;
              v32 = v69;
              v31 = v71;
              v36 = v75;
              if ([v38 length])
              {
                goto LABEL_69;
              }

              v44 = [(SRCSCommandStringsTable *)self _warningsOfIncorrectTokenizationAcrossSegmentBoundariesInLanguageModelDictionary:v76 stringsTable:0];
              if ([v44 count])
              {
                v56 = MEMORY[0x277CCACA8];
                v57 = [v44 componentsJoinedByString:@" "];;
                v58 = [v56 stringWithFormat:@"Optional phrase crosses word boundary, see: %@.  Optional phrases must contain entire words, not just characters to be prepended to the following word or appended to the preceding word. Fix by expanding the optional phrases as additional variants separated by the '|' symbol.", v57];
                [v38 appendString:v58];

                v31 = v71;
                v32 = v69;
              }
            }

            array2 = v68;
          }

LABEL_69:
          if (v72 == 2)
          {
            v59 = MEMORY[0x277CBEB38];
            _commandStringsTable2 = [(SRCSCommandStringsTable *)self _commandStringsTable];
            v61 = [_commandStringsTable2 objectForKey:v34];
            v62 = [v59 dictionaryWithObjectsAndKeys:{v77, @"Identifier", v61, @"Text", v34, @"DatabaseKey", v36, @"TargetType", array2, @"Permutations", v38, @"Warning", 0}];
            [array addObject:v62];

            v31 = v71;
            v29 = v73;

            v32 = v69;
          }

          v35 = v77;
          v27 = v70;
        }

LABEL_72:

        ++v33;
      }

      while (v33 != v31);
      v31 = [v29 countByEnumeratingWithState:&v89 objects:v101 count:16];
    }

    while (v31);
LABEL_74:

    ++v72;
  }

  while (v72 != 3);

  return array;
}

uint64_t __49__SRCSCommandStringsTable_rowDataForTargetTypes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21[9] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21[0] = kSRCSCommandTargetTypeNone;
  v21[1] = kSRCSCommandTargetTypeOSX;
  v21[2] = kSRCSCommandTargetTypeiOS;
  v21[3] = kSRCSCommandTargetTypewatchOS;
  v21[4] = kSRCSCommandTargetTypeiPad;
  v21[5] = kSRCSCommandTargetTypeiPhone;
  v21[6] = kSRCSCommandTargetTypeCarPlay;
  v21[7] = kSRCSCommandTargetTypeRealityDevice;
  v21[8] = kSRCSCommandTargetTypetvOS;
  v6 = MEMORY[0x277CBEA60];
  v7 = a2;
  v8 = [v6 arrayWithObjects:v21 count:9];
  v9 = *(a1 + 32);
  v20 = 0;
  v10 = [v9 _rootCommandIdentifierFrom:v7 foundTargetType:&v20];

  v11 = v20;
  if (v11)
  {
    v12 = [v8 indexOfObject:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 32);
  v19 = 0;
  v14 = [v13 _rootCommandIdentifierFrom:v5 foundTargetType:&v19];
  v15 = v19;
  if (v15)
  {
    v16 = [v8 indexOfObject:v15];
  }

  else
  {
    v16 = 0;
  }

  if ([v10 isEqualToString:v14])
  {
    if (v12 >= v16)
    {
      v17 = v12 > v16;
    }

    else
    {
      v17 = -1;
    }
  }

  else
  {
    v17 = [v10 caseInsensitiveCompare:v14];
  }

  return v17;
}

- (id)warningStringForText:(id)text identifier:(id)identifier textTable:(id)table
{
  textCopy = text;
  identifierCopy = identifier;
  tableCopy = table;
  lowercaseString = [textCopy lowercaseString];
  v11 = [tableCopy objectForKey:lowercaseString];

  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CCA940]) initWithArray:v11];
  }

  else
  {
    v12 = 0;
  }

  if ([textCopy length] && objc_msgSend(v11, "count") >= 2)
  {
    v13 = [v12 countForObject:identifierCopy];
    v14 = MEMORY[0x277CCACA8];
    if (v13 < 2)
    {
      v16 = [v11 componentsJoinedByString:{@", "}];
      identifierCopy = [v14 stringWithFormat:@"Redundant permutation (%@", textCopy, v16];

      if (identifierCopy)
      {
        goto LABEL_28;
      }
    }

    else
    {
      identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Redundant permutation (%@", textCopy, identifierCopy];
      if (identifierCopy)
      {
        goto LABEL_28;
      }
    }
  }

  if ([textCopy length] || (objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Empty permutation found in %@. Check if any optional phrases causes a permutation to be reduced to an empty string.", identifierCopy), (textCopy = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([textCopy length] && objc_msgSend(textCopy, "rangeOfString:", @"(") != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(textCopy, "rangeOfString:", @"")) != 0x7FFFFFFFFFFFFFFFLL)
    {
      identifierCopy = @"Alternative words cannot be indicated using parentheses. Please use two separate command strings, adding another command string entry if necessary.";
      goto LABEL_28;
    }

    v17 = [textCopy stringByReplacingOccurrencesOfString:@" " withString:&stru_287C0A5E8];
    if ([v17 rangeOfString:@"{BuiltInLM.NumberTwoThroughNinetyNine}{BuiltInLM.NumberTwoThroughNinetyNine.2}"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v17, "rangeOfString:", @"{BuiltInLM.KeyboardKeyName}{BuiltInLM.NumberTwoThroughNinetyNine}") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v17, "rangeOfString:", @"{BuiltInLM.OverlayLabel}{BuiltInLM.NumberTwoThroughNinetyNine}") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v17, "rangeOfString:", @"{BuiltInLM.OverlayLabel}{BuiltInLM.NumberZeroThroughOneHundred}") == 0x7FFFFFFFFFFFFFFFLL)
    {
    }

    else
    {
      identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Two numbered parameters appear consecutively without an intervening word or phrase which may cause the following permutation to fail: %@", textCopy];

      if (identifierCopy)
      {
        goto LABEL_28;
      }
    }

    if (![textCopy length] || objc_msgSend(textCopy, "rangeOfString:", @"’") == 0x7FFFFFFFFFFFFFFFLL)
    {
      identifierCopy = 0;
      goto LABEL_28;
    }

    textCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Instead of using right single quotation mark (’)(U+2019) in translations e.g. in %@, please use apostrophe(')(U+0027).", textCopy];
  }

  identifierCopy = textCopy;
LABEL_28:
  if (identifierCopy)
  {
    v19 = identifierCopy;
  }

  else
  {
    v19 = &stru_287C0A5E8;
  }

  v20 = v19;

  return v19;
}

- (id)_commandStringsDictionaryForLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[SRCSCommandStringsTable commandStringsLoader];

  if (v4)
  {
    v5 = [SRCSCommandStringsTable componentsFromLocaleIdentifier:identifierCopy];
    v6 = [v5 objectForKey:*MEMORY[0x277CBE6C8]];

    if ([(__CFString *)v6 isEqualToString:@"nb"])
    {

      v6 = @"no";
    }

    v7 = +[SRCSCommandStringsTable commandStringsLoader];
    v8 = (v7)[2](v7, identifierCopy, v6);
  }

  else
  {
    v6 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
    v8 = [(__CFString *)v6 dictionaryForLocaleIdentifier:identifierCopy resourceFileName:@"CommandStrings" resourceFileExtension:@"strings"];
  }

  return v8;
}

+ (id)commandStringsLoader
{
  v2 = _Block_copy(sCommandStringsLoader);

  return v2;
}

+ (void)setCommandStringsLoader:(id)loader
{
  sCommandStringsLoader = _Block_copy(loader);

  MEMORY[0x2821F96F8]();
}

+ (id)formattedBuiltInCommandString:(id)string
{
  if (string)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = MEMORY[0x277CCA8D8];
    stringCopy = string;
    v6 = [v4 bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"CommandParameter.GenericFormatString" value:&stru_287C0A5E8 table:0];
    stringCopy = [v3 stringWithFormat:v7, stringCopy];
  }

  else
  {
    stringCopy = 0;
  }

  return stringCopy;
}

@end
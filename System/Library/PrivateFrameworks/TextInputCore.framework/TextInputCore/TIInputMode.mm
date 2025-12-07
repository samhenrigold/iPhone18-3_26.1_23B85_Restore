@interface TIInputMode
+ (TIInputMode)inputModeWithIdentifier:(id)identifier isSiriMode:(BOOL)mode originalIdentifier:(id)originalIdentifier;
- (BOOL)deletesByComposedCharacterSequence;
- (BOOL)doesComposeText;
- (BOOL)doesSupportInlineCompletion;
- (BOOL)isEqual:(id)equal;
- (BOOL)preferredModelLocaleIsMultilingual;
- (BOOL)spaceAutocorrectionEnabled;
- (BOOL)supportsMultilingualKeyboard;
- (BOOL)supportsPrediction;
- (BOOL)typedStringLMRankingEnabled;
- (BOOL)wantsMultilingualUnionOVS;
- (Class)inputManagerClass;
- (Class)keyboardFeatureSpecializationClass;
- (Class)keyboardFeatureSpecializationClassFromInputModeProperties;
- (Class)multilingualInputManagerClass;
- (NSArray)additionalConfiguredLatinLanguages;
- (NSArray)allAccentKeyStrings;
- (NSDictionary)compositionMap;
- (NSDictionary)layoutTags;
- (NSDictionary)reverseCompositionMap;
- (NSLocale)locale;
- (NSString)autocorrectionLocaleIdentifier;
- (NSString)clauseDelimitingCharacters;
- (NSString)languageWithRegion;
- (NSString)nonstopPunctuationCharacters;
- (NSString)preferredModelLocaleIdentifier;
- (NSString)replacementForDoubleSpace;
- (NSString)sentenceDelimitingCharacters;
- (NSString)sentencePrefixingCharacters;
- (NSString)sentenceTrailingCharacters;
- (NSString)spaceDeletingCharacters;
- (NSString)variant;
- (NSString)wordMedialPunctuationCharacters;
- (TIInputMode)initWithNormalizedIdentifier:(id)identifier isSiriMode:(BOOL)mode;
- (id)description;
- (id)preferredMultilingualLanguageModelLocale;
- (unint64_t)hash;
- (void)setQuickTypeKeyboardFeatureSpecializationClass;
@end

@implementation TIInputMode

- (Class)multilingualInputManagerClass
{
  multilingualInputManagerClass = self->_multilingualInputManagerClass;
  if (!multilingualInputManagerClass)
  {
    normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
    v5 = TIGetInputModeProperties();

    v6 = [v5 objectForKey:*MEMORY[0x277D6F760]];
    bOOLValue = [v6 BOOLValue];

    if (bOOLValue && ([(objc_class *)[(TIInputMode *)self inputManagerClass] isSubclassOfClass:objc_opt_class()]& 1) == 0)
    {
      inputManagerClass = objc_opt_class();
    }

    else
    {
      inputManagerClass = [(TIInputMode *)self inputManagerClass];
    }

    self->_multilingualInputManagerClass = inputManagerClass;

    multilingualInputManagerClass = self->_multilingualInputManagerClass;
  }

  return multilingualInputManagerClass;
}

- (NSString)languageWithRegion
{
  languageWithRegion = self->_languageWithRegion;
  if (!languageWithRegion)
  {
    normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
    v5 = TIInputModeGetLanguageWithRegion();
    v6 = [v5 copy];
    v7 = self->_languageWithRegion;
    self->_languageWithRegion = v6;

    languageWithRegion = self->_languageWithRegion;
  }

  return languageWithRegion;
}

- (unint64_t)hash
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v4 = [normalizedIdentifier hash];

  isSiriMode = [(TIInputMode *)self isSiriMode];
  v6 = 81069269;
  if (isSiriMode)
  {
    v6 = 16843009;
  }

  return v6 + v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v6 = [v3 stringWithFormat:@"<%@: %p identifier = %@>", v4, self, normalizedIdentifier];;

  return v6;
}

- (NSLocale)locale
{
  locale = self->_locale;
  if (!locale)
  {
    v4 = objc_alloc(MEMORY[0x277CBEAF8]);
    normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
    v6 = [v4 initWithLocaleIdentifier:normalizedIdentifier];
    v7 = self->_locale;
    self->_locale = v6;

    locale = self->_locale;
  }

  return locale;
}

- (NSDictionary)compositionMap
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F698]];

  return v4;
}

- (NSDictionary)reverseCompositionMap
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F720]];

  return v4;
}

- (NSArray)allAccentKeyStrings
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F668]];

  return v4;
}

- (NSString)replacementForDoubleSpace
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F6C8]];

  return v4;
}

- (NSString)preferredModelLocaleIdentifier
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    locale = [(TIInputMode *)self locale];
    localeIdentifier = [locale localeIdentifier];
    goto LABEL_5;
  }

  preferredMultilingualLanguageModelLocale = [(TIInputMode *)self preferredMultilingualLanguageModelLocale];
  if (preferredMultilingualLanguageModelLocale)
  {
    localeIdentifier = preferredMultilingualLanguageModelLocale;
    locale = localeIdentifier;
LABEL_5:
    localeIdentifier2 = localeIdentifier;
    goto LABEL_6;
  }

  locale2 = [(TIInputMode *)self locale];
  localeIdentifier2 = [locale2 localeIdentifier];

  locale = 0;
LABEL_6:

  return localeIdentifier2;
}

- (id)preferredMultilingualLanguageModelLocale
{
  originalIdentifier = [(TIInputMode *)self originalIdentifier];
  v3 = TIInputModeGetPreferredMultilingualLanguageModelLocale();

  return v3;
}

- (BOOL)preferredModelLocaleIsMultilingual
{
  selfCopy = self;
  preferredModelLocaleIdentifier = [(TIInputMode *)self preferredModelLocaleIdentifier];
  preferredMultilingualLanguageModelLocale = [(TIInputMode *)selfCopy preferredMultilingualLanguageModelLocale];
  LOBYTE(selfCopy) = preferredModelLocaleIdentifier == preferredMultilingualLanguageModelLocale;

  return selfCopy;
}

- (BOOL)doesSupportInlineCompletion
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F6E8]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (NSString)autocorrectionLocaleIdentifier
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F678]];

  return v4;
}

- (NSString)spaceDeletingCharacters
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F748]];

  return v4;
}

- (NSString)wordMedialPunctuationCharacters
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F780]];

  return v4;
}

- (NSString)sentenceTrailingCharacters
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F738]];

  return v4;
}

- (NSString)clauseDelimitingCharacters
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F688]];

  return v4;
}

- (NSString)sentenceDelimitingCharacters
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F728]];

  return v4;
}

- (NSString)sentencePrefixingCharacters
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F730]];

  return v4;
}

- (NSString)nonstopPunctuationCharacters
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F710]];

  return v4;
}

- (NSDictionary)layoutTags
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F700]];

  return v4;
}

- (BOOL)deletesByComposedCharacterSequence
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F6C0]];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)doesComposeText
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();
  v4 = [v3 objectForKey:*MEMORY[0x277D6F690]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)typedStringLMRankingEnabled
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();

  v4 = [v3 objectForKey:*MEMORY[0x277D6F768]];
  v5 = v4;
  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)spaceAutocorrectionEnabled
{
  if (TIGetKeyboardDisableSpaceCorrectionsValue_onceToken != -1)
  {
    dispatch_once(&TIGetKeyboardDisableSpaceCorrectionsValue_onceToken, &__block_literal_global_147);
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = [mEMORY[0x277D6F470] valueForPreferenceKey:@"KeyboardDisableSpaceCorrections"];

  LOBYTE(mEMORY[0x277D6F470]) = [v4 BOOLValue];
  if (mEMORY[0x277D6F470])
  {
    return 0;
  }

  if (TIGetKeyboardForceSpaceCorrectionsValue_onceToken != -1)
  {
    dispatch_once(&TIGetKeyboardForceSpaceCorrectionsValue_onceToken, &__block_literal_global_158);
  }

  mEMORY[0x277D6F470]2 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v7 = [mEMORY[0x277D6F470]2 valueForPreferenceKey:@"KeyboardForceSpaceCorrections"];

  LOBYTE(mEMORY[0x277D6F470]2) = [v7 BOOLValue];
  if (mEMORY[0x277D6F470]2)
  {
    return 1;
  }

  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v9 = TIGetInputModeProperties();

  v10 = [v9 objectForKey:*MEMORY[0x277D6F740]];
  v11 = v10;
  if (v10)
  {
    bOOLValue = [v10 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)wantsMultilingualUnionOVS
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();

  v4 = [v3 objectForKey:*MEMORY[0x277D6F778]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsMultilingualKeyboard
{
  originalIdentifier = [(TIInputMode *)self originalIdentifier];
  v3 = TIInputModeSupportsMultilingual();

  return v3;
}

- (BOOL)supportsPrediction
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v3 = TIGetInputModeProperties();

  v4 = [v3 objectForKey:*MEMORY[0x277D6F6D8]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (Class)keyboardFeatureSpecializationClass
{
  keyboardFeatureSpecializationClass = self->_keyboardFeatureSpecializationClass;
  if (!keyboardFeatureSpecializationClass)
  {
    keyboardFeatureSpecializationClass = [(TIInputMode *)self keyboardFeatureSpecializationClassFromInputModeProperties];
    self->_keyboardFeatureSpecializationClass = keyboardFeatureSpecializationClass;
    if (!keyboardFeatureSpecializationClass)
    {
      [(TIInputMode *)self supportsPrediction];
      keyboardFeatureSpecializationClass = objc_opt_class();
      self->_keyboardFeatureSpecializationClass = keyboardFeatureSpecializationClass;
    }
  }

  return keyboardFeatureSpecializationClass;
}

- (Class)keyboardFeatureSpecializationClassFromInputModeProperties
{
  normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
  v4 = TIGetInputModeProperties();

  v5 = [v4 objectForKey:*MEMORY[0x277D6F6F8]];
  v6 = NSClassFromString(v5);
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    normalizedIdentifier2 = [(TIInputMode *)self normalizedIdentifier];
    v10 = TIBundleForInputMode();

    v7 = [v10 classNamed:v5];
  }

  v11 = v7;

  return v7;
}

- (Class)inputManagerClass
{
  inputManagerClass = self->_inputManagerClass;
  if (!inputManagerClass)
  {
    normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
    v5 = TIGetInputModeProperties();

    if (!self->_inputManagerClass)
    {
      v6 = [v5 objectForKey:*MEMORY[0x277D6F6F0]];
      if (v6)
      {
        normalizedIdentifier2 = [(TIInputMode *)self normalizedIdentifier];
        v8 = TIBundleForInputMode();

        v9 = [v8 classNamed:v6];
        self->_inputManagerClass = v9;
        if (!v9 && ((objc_msgSend_isEqualToString_(v6) & 1) != 0 || objc_msgSend_isEqualToString_(v6)))
        {
          self->_inputManagerClass = objc_opt_class();
        }
      }

      if (!self->_inputManagerClass)
      {
        self->_inputManagerClass = objc_opt_class();
      }
    }

    inputManagerClass = self->_inputManagerClass;
  }

  return inputManagerClass;
}

- (NSArray)additionalConfiguredLatinLanguages
{
  v3 = TIInputModeGetMultilingualID();

  if (v3)
  {
    v4 = TIInputModeGetMultilingualSet();
    v5 = [v4 mutableCopy];

    [v5 removeObject:self->_originalIdentifier];
    v6 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1246];
    [v5 filterUsingPredicate:v6];
LABEL_8:

    goto LABEL_9;
  }

  v6 = TIInputModeGetNormalizedIdentifier();
  if (!objc_msgSend_isEqualToString_(v6))
  {
    v5 = 0;
    goto LABEL_8;
  }

  v7 = TIInputModeGetSWLayout();
  isEqualToString = objc_msgSend_isEqualToString_(v7);

  if (isEqualToString)
  {
    v5 = &unk_28400B8E0;
  }

  else
  {
    v5 = 0;
  }

LABEL_9:

  return v5;
}

- (NSString)variant
{
  variant = self->_variant;
  if (!variant)
  {
    normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
    v5 = TIInputModeGetVariant();
    v6 = [v5 copy];
    v7 = self->_variant;
    self->_variant = v6;

    variant = self->_variant;
  }

  return variant;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      normalizedIdentifier = [(TIInputMode *)self normalizedIdentifier];
      if (objc_msgSend_isEqualToString_(normalizedIdentifier))
      {
        originalIdentifier = [(TIInputMode *)self originalIdentifier];
        v8 = TIInputModeGetSWLayout();
        originalIdentifier2 = [(TIInputMode *)v5 originalIdentifier];
        v10 = TIInputModeGetSWLayout();
        isEqualToString = objc_msgSend_isEqualToString_(v8);

        if (!isEqualToString)
        {
          goto LABEL_10;
        }
      }

      else
      {
        normalizedIdentifier2 = [(TIInputMode *)self normalizedIdentifier];
        normalizedIdentifier3 = [(TIInputMode *)v5 normalizedIdentifier];
        v15 = objc_msgSend_isEqualToString_(normalizedIdentifier2);

        if ((v15 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      isSiriMode = [(TIInputMode *)self isSiriMode];
      if (isSiriMode == [(TIInputMode *)v5 isSiriMode])
      {
        originalIdentifier3 = [(TIInputMode *)self originalIdentifier];
        v18 = TIInputModeGetMultilingualID();
        originalIdentifier4 = [(TIInputMode *)v5 originalIdentifier];
        v20 = TIInputModeGetMultilingualID();
        v12 = v18 == v20;

        goto LABEL_12;
      }

LABEL_10:
      v12 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (TIInputMode)initWithNormalizedIdentifier:(id)identifier isSiriMode:(BOOL)mode
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = TIInputMode;
  v7 = [(TIInputMode *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    normalizedIdentifier = v7->_normalizedIdentifier;
    v7->_normalizedIdentifier = v8;

    v7->_isSiriMode = mode;
  }

  return v7;
}

+ (TIInputMode)inputModeWithIdentifier:(id)identifier isSiriMode:(BOOL)mode originalIdentifier:(id)originalIdentifier
{
  modeCopy = mode;
  identifierCopy = identifier;
  originalIdentifierCopy = originalIdentifier;
  if (modeCopy)
  {
    v9 = &inputModeWithIdentifier_isSiriMode_originalIdentifier__cachedSiriInputModes;
  }

  else
  {
    v9 = &inputModeWithIdentifier_isSiriMode_originalIdentifier__cachedInputModes;
  }

  v10 = *v9;
  if (!*v9)
  {
    v11 = objc_opt_new();
    v12 = *v9;
    *v9 = v11;

    v10 = *v9;
  }

  v13 = v10;
  v14 = [v13 objectForKey:identifierCopy];
  if (v14)
  {
    v15 = v14;
    v16 = originalIdentifierCopy;
  }

  else
  {
    v17 = TIInputModeGetNormalizedIdentifier();
    v15 = [v13 objectForKey:v17];
    if (originalIdentifierCopy)
    {
      v18 = originalIdentifierCopy;
    }

    else
    {
      v18 = identifierCopy;
    }

    v16 = v18;

    if (!v15 || ([v15 originalIdentifier], v19 = objc_claimAutoreleasedReturnValue(), v19, v19 != v16))
    {
      v20 = [[TIInputMode alloc] initWithNormalizedIdentifier:v17 isSiriMode:modeCopy];

      v21 = [v16 copy];
      [(TIInputMode *)v20 setOriginalIdentifier:v21];

      [v13 setObject:v20 forKey:v17];
      v15 = v20;
    }

    [v13 setObject:v15 forKey:identifierCopy];
    if (v16 != identifierCopy)
    {
      [v13 setObject:v15 forKey:v16];
    }
  }

  return v15;
}

- (void)setQuickTypeKeyboardFeatureSpecializationClass
{
  if (!self->_keyboardFeatureSpecializationClass)
  {
    self->_keyboardFeatureSpecializationClass = objc_opt_class();
  }
}

@end
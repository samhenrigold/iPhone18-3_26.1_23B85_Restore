@interface TIIndicScriptComposer
- (BOOL)_characterBeforeCursorIsConsonant;
- (BOOL)_characterBeforeCursorIsVowel;
- (BOOL)_characterBeforeCursorIsVowelLetter;
- (BOOL)_contextIsStartOfWord;
- (BOOL)_isSingleGlyph:(id)glyph;
- (NSString)context;
- (TIIndicScriptComposer)initWithLanguage:(id)language contextFetcher:(id)fetcher;
- (id)_consonantLetters;
- (id)_consonantLettersSet;
- (id)_contextualVowelLetters;
- (id)_letterToSignConverter;
- (id)_singleGlyphConjuncts;
- (id)_stringByStrippingTrailingVirama:(id)virama;
- (id)_vowelLetterToSignConverter;
- (id)_vowelLetters;
- (id)_vowelLettersAndSigns;
- (id)_vowelModifierLetterToSignConverter;
- (id)contextualDisplayKeys;
- (id)stringByComposingInput:(id)input;
- (int)scriptCode;
@end

@implementation TIIndicScriptComposer

- (id)contextualDisplayKeys
{
  selfCopy = self;
  v68 = *MEMORY[0x277D85DE8];
  languageIdentifier = [(TIIndicScriptComposer *)self languageIdentifier];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  context = [(TIIndicScriptComposer *)selfCopy context];
  v5 = [context _lastConjunctInLanguage:languageIdentifier];
  _characterBeforeCursorIsConsonant = [(TIIndicScriptComposer *)selfCopy _characterBeforeCursorIsConsonant];
  _characterBeforeCursorIsVowel = [(TIIndicScriptComposer *)selfCopy _characterBeforeCursorIsVowel];
  v44 = languageIdentifier;
  v46 = _characterBeforeCursorIsVowel && [(TIIndicScriptComposer *)selfCopy _characterBeforeCursorIsVowelLetter];
  v52 = v5;
  v48 = v52;
  if (![(TIIndicScriptComposer *)selfCopy _isSingleGlyph:v52])
  {
    v48 = [MEMORY[0x277CCACA8] _stringWithUnichar:{objc_msgSend(v52, "_lastLongCharacter")}];
  }

  [(TIIndicScriptComposer *)selfCopy _contextualVowelLetters];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v64 = 0u;
  v7 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
  v8 = selfCopy;
  if (v7)
  {
    v9 = v7;
    v10 = *v62;
    do
    {
      v11 = 0;
      do
      {
        if (*v62 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v61 + 1) + 8 * v11);
        if (_characterBeforeCursorIsConsonant)
        {
          _vowelLetterToSignConverter = [(TIIndicScriptComposer *)selfCopy _vowelLetterToSignConverter];
          v14 = (_vowelLetterToSignConverter)[2](_vowelLetterToSignConverter, v12, v52);
          v15 = [v14 length];

          if (v15)
          {
            v16 = [v48 stringByAppendingString:v14];
            [dictionary setObject:v16 forKeyedSubscript:v12];

            selfCopy = v8;
            goto LABEL_25;
          }

          v17 = v14;
          selfCopy = v8;
        }

        else
        {
          v17 = 0;
        }

        if (!_characterBeforeCursorIsVowel)
        {
          v14 = v17;
          goto LABEL_24;
        }

        _vowelModifierLetterToSignConverter = [(TIIndicScriptComposer *)selfCopy _vowelModifierLetterToSignConverter];
        v14 = (_vowelModifierLetterToSignConverter)[2](_vowelModifierLetterToSignConverter, v12, v52);

        if (![v14 length])
        {

LABEL_23:
          selfCopy = v8;
LABEL_24:
          [dictionary setObject:@"UI-Nothing" forKeyedSubscript:v12];
          goto LABEL_25;
        }

        isEqualToString = objc_msgSend_isEqualToString_(v14);

        if (isEqualToString)
        {
          goto LABEL_23;
        }

        selfCopy = v8;
        if (v46)
        {
          v20 = v48;
        }

        else
        {
          v20 = v52;
        }

        v21 = [v20 stringByAppendingString:v14];
        [dictionary setObject:v21 forKeyedSubscript:v12];

LABEL_25:
        ++v11;
      }

      while (v9 != v11);
      v22 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
      v9 = v22;
    }

    while (v22);
  }

  if ([(TIIndicScriptComposer *)selfCopy composesConsonants])
  {
    v51 = [(TIIndicScriptComposer *)selfCopy _stringByStrippingTrailingVirama:context];
    v23 = [v51 length];
    v24 = [context length];
    _consonantLetters = [(TIIndicScriptComposer *)selfCopy _consonantLetters];
    _consonantLettersSet = [(TIIndicScriptComposer *)selfCopy _consonantLettersSet];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v26 = _consonantLetters;
    v27 = [v26 countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v58;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v58 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v57 + 1) + 8 * i);
          v32 = [v52 stringByAppendingString:v31];
          if (v23 < v24 && [_consonantLettersSet longCharacterIsMember:{objc_msgSend(v51, "_lastLongCharacter")}] && -[TIIndicScriptComposer _isSingleGlyph:](v8, "_isSingleGlyph:", v32))
          {
            v33 = dictionary;
            v34 = v32;
          }

          else
          {
            v33 = dictionary;
            v34 = @"UI-Nothing";
          }

          [v33 setObject:v34 forKeyedSubscript:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v28);
    }
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  allKeys = [dictionary allKeys];
  v36 = [allKeys countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v54;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v54 != v38)
        {
          objc_enumerationMutation(allKeys);
        }

        v40 = *(*(&v53 + 1) + 8 * j);
        v41 = [dictionary objectForKeyedSubscript:v40];
        _stringByRemovingOffensiveOrVulgarWords = [v41 _stringByRemovingOffensiveOrVulgarWords];
        if ((objc_msgSend_isEqualToString_(v41) & 1) == 0)
        {
          [dictionary setObject:_stringByRemovingOffensiveOrVulgarWords forKeyedSubscript:v40];
        }
      }

      v37 = [allKeys countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v37);
  }

  return dictionary;
}

- (id)stringByComposingInput:(id)input
{
  inputCopy = input;
  _lastLongCharacter = [inputCopy _lastLongCharacter];
  if (_lastLongCharacter != [(TIIndicScriptComposer *)self _viramaSign])
  {
    _letterToSignConverter = [(TIIndicScriptComposer *)self _letterToSignConverter];
    if (_letterToSignConverter)
    {
      context = [(TIIndicScriptComposer *)self context];
      v9 = (_letterToSignConverter)[2](_letterToSignConverter, inputCopy, context);

      if (v9)
      {

        goto LABEL_11;
      }
    }

    goto LABEL_9;
  }

  context2 = [(TIIndicScriptComposer *)self context];
  _lastLongCharacter2 = [context2 _lastLongCharacter];
  _viramaSign = [(TIIndicScriptComposer *)self _viramaSign];

  if (_lastLongCharacter2 == _viramaSign)
  {
    v9 = @"‌";
    goto LABEL_11;
  }

  if ([(TIIndicScriptComposer *)self _characterBeforeCursorIsConsonant])
  {
LABEL_9:
    v9 = inputCopy;
    goto LABEL_11;
  }

  v9 = &stru_283FDFAF8;
LABEL_11:

  return v9;
}

- (BOOL)_isSingleGlyph:(id)glyph
{
  glyphCopy = glyph;
  languageIdentifier = [(TIIndicScriptComposer *)self languageIdentifier];
  if (objc_msgSend_isEqualToString_(languageIdentifier) & 1) != 0 || (objc_msgSend_isEqualToString_(languageIdentifier) & 1) != 0 || (objc_msgSend_isEqualToString_(languageIdentifier))
  {
    v6 = 1;
  }

  else if ([glyphCopy length])
  {
    _singleGlyphConjuncts = [(TIIndicScriptComposer *)self _singleGlyphConjuncts];
    v6 = [_singleGlyphConjuncts containsObject:glyphCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_singleGlyphConjuncts
{
  singleGlyphConjuncts = self->_singleGlyphConjuncts;
  if (!singleGlyphConjuncts)
  {
    v4 = MEMORY[0x277CCACA8];
    [(TIIndicScriptComposer *)self scriptCode];
    v5 = [v4 stringWithCString:uscript_getShortName() encoding:1];
    v6 = TIGetIndicScriptComposerRules();
    v7 = [v6 objectForKeyedSubscript:v5];

    v8 = [MEMORY[0x277CBEB98] setWithArray:v7];
    v9 = self->_singleGlyphConjuncts;
    self->_singleGlyphConjuncts = v8;

    singleGlyphConjuncts = self->_singleGlyphConjuncts;
  }

  return singleGlyphConjuncts;
}

- (id)_letterToSignConverter
{
  if ([(TIIndicScriptComposer *)self _contextIsStartOfWord])
  {
    goto LABEL_2;
  }

  if ([(TIIndicScriptComposer *)self _characterBeforeCursorIsConsonant])
  {
    _vowelLetterToSignConverter = [(TIIndicScriptComposer *)self _vowelLetterToSignConverter];
  }

  else
  {
    if (![(TIIndicScriptComposer *)self _characterBeforeCursorIsVowel])
    {
LABEL_2:
      _vowelLetterToSignConverter = 0;
      goto LABEL_7;
    }

    _vowelLetterToSignConverter = [(TIIndicScriptComposer *)self _vowelModifierLetterToSignConverter];
  }

LABEL_7:

  return _vowelLetterToSignConverter;
}

- (id)_vowelModifierLetterToSignConverter
{
  vowelModifierLetterToSignConverter = self->_vowelModifierLetterToSignConverter;
  if (!vowelModifierLetterToSignConverter)
  {
    self->_vowelModifierLetterToSignConverter = &__block_literal_global_33;
    vowelModifierLetterToSignConverter = &__block_literal_global_33;
  }

  v4 = _Block_copy(vowelModifierLetterToSignConverter);

  return v4;
}

id __60__TIIndicScriptComposer__vowelModifierLetterToSignConverter__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  v6 = a3;
  KB::String::String(v38, [v4 UTF8String]);
  KB::utf8_string(v6, v36);

  KB::String::String(v26, v38);
  KB::String::String(v24, v36);
  v7 = v27;
  if (!v27)
  {
    KB::String::compute_length(v26);
    v7 = v27;
  }

  if (v7 <= 1)
  {
    v31 = 0x100000;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    KB::String::operator=(&v31, v26);
    goto LABEL_48;
  }

  KB::String::String(&v31, v26);
  v10 = 0;
  if (v29)
  {
    v11 = v29;
  }

  else
  {
    v11 = &v30;
  }

  v12 = v26[0];
  while (1)
  {
    v13 = TI::IndicUtils::kVowelLettersA[v10];
    v49 = v11;
    LODWORD(v50) = 0;
    HIDWORD(v50) = v12;
    v51 = 0;
    KB::String::iterator::initialize(&v49);
    if (v51 == v13)
    {
      break;
    }

    if (++v10 == 9)
    {
      goto LABEL_40;
    }
  }

  *&v45 = v11;
  DWORD2(v45) = 0;
  HIDWORD(v45) = v12;
  LODWORD(v46) = 0;
  KB::String::iterator::initialize(&v45);
  v47 = v45;
  v48 = v46;
  KB::String::iterator::operator++(&v47);
  v42 = v11;
  LODWORD(v43) = v12;
  HIDWORD(v43) = v12;
  v44 = 0;
  KB::String::iterator::initialize(&v42);
  KB::String::String(&v49, &v47, &v42);
  if (v13 == 2437 || v13 == 2821)
  {
    KB::String::String(&v47, &v49);
    KB::String::String(&v45, v24);
    v14 = !shouldConvertToSign_beng_orya(&v47, &v45, v15, v16, v17);
  }

  else
  {
    v14 = 0;
    if (v13 == 2565)
    {
      KB::String::String(&v45, &v49);
      KB::String::String(&v42, v24);
      convertTippiToBindiIfNeeded(&v47, &v45, &v42);
      KB::String::operator=(&v49, &v47);
      if (*(&v47 + 1) && BYTE6(v47) == 1)
      {
        free(*(&v47 + 1));
      }

      if (v43 && BYTE6(v42) == 1)
      {
        free(v43);
      }

      if (*(&v45 + 1) && BYTE6(v45) == 1)
      {
        free(*(&v45 + 1));
      }

      goto LABEL_37;
    }
  }

  if (v13 != 2821 && v13 != 2437)
  {
    if (!v14)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (*(&v45 + 1) && BYTE6(v45) == 1)
  {
    free(*(&v45 + 1));
  }

  if (*(&v47 + 1) && BYTE6(v47) == 1)
  {
    free(*(&v47 + 1));
  }

  if (v14)
  {
LABEL_36:
    KB::String::operator=(&v49, v26);
  }

LABEL_37:
  KB::String::operator=(&v31, &v49);
  if (v50 && BYTE6(v49) == 1)
  {
    free(v50);
  }

LABEL_40:
  KB::String::String(&v49, &v31);
  KB::String::String(v40, v24);
  v18 = shouldAddSignToContext(&v49, v40);
  if (v41 && v40[6] == 1)
  {
    free(v41);
  }

  if (v50 && BYTE6(v49) == 1)
  {
    free(v50);
  }

  if ((v18 & 1) == 0)
  {
    KB::String::operator=(&v31, v26);
  }

LABEL_48:
  if (v25 && v24[6] == 1)
  {
    free(v25);
  }

  if (v29 && v28 == 1)
  {
    free(v29);
  }

  if (KB::String::equal(v38, &v31, 1, v8, v9))
  {
    v19 = v4;
  }

  else
  {
    v20 = v34;
    if (!v34)
    {
      v20 = &v35;
    }

    if (v31)
    {
      v21 = v20;
    }

    else
    {
      v21 = "";
    }

    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:v21];
  }

  v22 = v19;
  if (v34 && v33 == 1)
  {
    free(v34);
  }

  if (v37 && v36[6] == 1)
  {
    free(v37);
  }

  if (v39 && v38[6] == 1)
  {
    free(v39);
  }

  return v22;
}

- (id)_vowelLetterToSignConverter
{
  vowelLetterToSignConverter = self->_vowelLetterToSignConverter;
  if (!vowelLetterToSignConverter)
  {
    self->_vowelLetterToSignConverter = &__block_literal_global_31_15249;
    vowelLetterToSignConverter = &__block_literal_global_31_15249;
  }

  v4 = _Block_copy(vowelLetterToSignConverter);

  return v4;
}

KB *__52__TIIndicScriptComposer__vowelLetterToSignConverter__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  KB::utf8_string(v4, v24);
  KB::utf8_string(v5, v22);

  KB::String::String(v15, v24);
  KB::String::String(v13, v22);
  TI::IndicUtils::convertLetterToSign(v18, v15, v13);
  if (v14 && v13[6] == 1)
  {
    free(v14);
  }

  if (v17 && v16 == 1)
  {
    free(v17);
  }

  if (KB::String::equal(v24, v18, 1, v6, v7))
  {
    v8 = v4;
  }

  else
  {
    v9 = v20;
    if (!v20)
    {
      v9 = &v21;
    }

    if (v18[0])
    {
      v10 = v9;
    }

    else
    {
      v10 = "";
    }

    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
  }

  v11 = v8;
  if (v20 && v19 == 1)
  {
    free(v20);
  }

  if (v23 && v22[6] == 1)
  {
    free(v23);
  }

  if (v25 && v24[6] == 1)
  {
    free(v25);
  }

  return v11;
}

- (BOOL)_contextIsStartOfWord
{
  context = [(TIIndicScriptComposer *)self context];
  if ([context length])
  {
    if ([TIIndicScriptComposer _contextIsStartOfWord]::__onceToken != -1)
    {
      dispatch_once(&[TIIndicScriptComposer _contextIsStartOfWord]::__onceToken, &__block_literal_global_15251);
    }

    v3 = [context characterAtIndex:{objc_msgSend(context, "length") - 1}];
    v4 = [-[TIIndicScriptComposer _contextIsStartOfWord]::__nonLetterCharacterSet characterIsMember:v3];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void __46__TIIndicScriptComposer__contextIsStartOfWord__block_invoke()
{
  v2 = [MEMORY[0x277CCA900] letterCharacterSet];
  v0 = [v2 invertedSet];
  v1 = [TIIndicScriptComposer _contextIsStartOfWord]::__nonLetterCharacterSet;
  [TIIndicScriptComposer _contextIsStartOfWord]::__nonLetterCharacterSet = v0;
}

- (id)_stringByStrippingTrailingVirama:(id)virama
{
  viramaCopy = virama;
  if ([viramaCopy length] && (v5 = objc_msgSend(viramaCopy, "_lastLongCharacter"), v5 == -[TIIndicScriptComposer _viramaSign](self, "_viramaSign")) && objc_msgSend(viramaCopy, "_rangeOfLongCharacterAtIndex:", objc_msgSend(viramaCopy, "length") - 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [viramaCopy substringToIndex:{objc_msgSend(viramaCopy, "length") - v6}];
  }

  else
  {
    v7 = viramaCopy;
  }

  v8 = v7;

  return v8;
}

- (BOOL)_characterBeforeCursorIsConsonant
{
  context = [(TIIndicScriptComposer *)self context];
  v6 = 0;
  if ([context length])
  {
    v4 = [context characterAtIndex:{objc_msgSend(context, "length") - 1}];
    _consonantLettersSet = [(TIIndicScriptComposer *)self _consonantLettersSet];
    LOBYTE(v4) = [_consonantLettersSet characterIsMember:v4];

    if (v4)
    {
      v6 = 1;
    }
  }

  return v6;
}

- (BOOL)_characterBeforeCursorIsVowelLetter
{
  context = [(TIIndicScriptComposer *)self context];
  v6 = 0;
  if ([context length])
  {
    v4 = [context characterAtIndex:{objc_msgSend(context, "length") - 1}];
    _vowelLetters = [(TIIndicScriptComposer *)self _vowelLetters];
    LOBYTE(v4) = [_vowelLetters characterIsMember:v4];

    if (v4)
    {
      v6 = 1;
    }
  }

  return v6;
}

- (BOOL)_characterBeforeCursorIsVowel
{
  context = [(TIIndicScriptComposer *)self context];
  v6 = 0;
  if ([context length])
  {
    v4 = [context characterAtIndex:{objc_msgSend(context, "length") - 1}];
    _vowelLettersAndSigns = [(TIIndicScriptComposer *)self _vowelLettersAndSigns];
    LOBYTE(v4) = [_vowelLettersAndSigns characterIsMember:v4];

    if (v4)
    {
      v6 = 1;
    }
  }

  return v6;
}

- (id)_vowelLettersAndSigns
{
  vowelLettersAndSigns = self->_vowelLettersAndSigns;
  if (!vowelLettersAndSigns)
  {
    v4 = objc_opt_new();
    v5 = TI::IndicUtils::initialVowelLetterForScript([(TIIndicScriptComposer *)self scriptCode]);
    [(NSCharacterSet *)v4 addCharactersInRange:v5, 16];
    [(NSCharacterSet *)v4 addCharactersInRange:v5 + 57, 15];
    v6 = self->_vowelLettersAndSigns;
    self->_vowelLettersAndSigns = v4;

    vowelLettersAndSigns = self->_vowelLettersAndSigns;
  }

  return vowelLettersAndSigns;
}

- (id)_vowelLetters
{
  vowelLetters = self->_vowelLetters;
  if (!vowelLetters)
  {
    v4 = objc_opt_new();
    [(NSCharacterSet *)v4 addCharactersInRange:TI::IndicUtils::initialVowelLetterForScript([(TIIndicScriptComposer *)self scriptCode]), 16];
    v5 = self->_vowelLetters;
    self->_vowelLetters = v4;

    vowelLetters = self->_vowelLetters;
  }

  return vowelLetters;
}

- (id)_contextualVowelLetters
{
  contextualVowelLetters = self->_contextualVowelLetters;
  if (!contextualVowelLetters)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:16];
    scriptCode = [(TIIndicScriptComposer *)self scriptCode];
    v6 = TI::IndicUtils::initialVowelLetterForScript(scriptCode);
    if (v6 > (v6 - 4))
    {
      v7 = (v6 - 4);
      do
      {
        v15[0] = v6;
        v15[1] = v7;
        v8 = [MEMORY[0x277CCACA8] stringWithCharacters:v15 length:2];
        [(NSArray *)v4 addObject:v8];

        ++v7;
      }

      while (v6 > v7);
    }

    v9 = v6 + 15;
    v14 = v6 + 1;
    do
    {
      v10 = [MEMORY[0x277CCACA8] stringWithCharacters:&v14 length:1];
      [(NSArray *)v4 addObject:v10];

      ++v14;
    }

    while (v14 <= v9);
    if (scriptCode > 15)
    {
      if (scriptCode == 16)
      {
        [(NSArray *)v4 addObject:@"ਅੱ"];
        v11 = @"ਅੰ";
        goto LABEL_16;
      }

      if (scriptCode == 31)
      {
        v11 = @"ଅ‍୍ୟ";
        goto LABEL_16;
      }
    }

    else
    {
      if (scriptCode == 4)
      {
        v11 = @"অ‍্য";
        goto LABEL_16;
      }

      if (scriptCode == 10)
      {
        v11 = @"ॲ";
LABEL_16:
        [(NSArray *)v4 addObject:v11];
      }
    }

    v12 = self->_contextualVowelLetters;
    self->_contextualVowelLetters = v4;

    contextualVowelLetters = self->_contextualVowelLetters;
  }

  return contextualVowelLetters;
}

- (id)_consonantLetters
{
  p_consonantLetters = &self->_consonantLetters;
  consonantLetters = self->_consonantLetters;
  if (!consonantLetters)
  {
    obj = 0;
    GetConsonantLettersSetAndArray([(TIIndicScriptComposer *)self scriptCode], 0, &obj);
    objc_storeStrong(p_consonantLetters, obj);
    consonantLetters = self->_consonantLetters;
  }

  return consonantLetters;
}

- (id)_consonantLettersSet
{
  p_consonantLettersSet = &self->_consonantLettersSet;
  consonantLettersSet = self->_consonantLettersSet;
  if (!consonantLettersSet)
  {
    obj = 0;
    GetConsonantLettersSetAndArray([(TIIndicScriptComposer *)self scriptCode], &obj, 0);
    objc_storeStrong(p_consonantLettersSet, obj);
    consonantLettersSet = self->_consonantLettersSet;
  }

  return consonantLettersSet;
}

- (int)scriptCode
{
  languageIdentifier = [(TIIndicScriptComposer *)self languageIdentifier];
  ScriptCodeForLanguage = GetScriptCodeForLanguage(languageIdentifier);

  return ScriptCodeForLanguage;
}

- (NSString)context
{
  contextFetcher = [(TIIndicScriptComposer *)self contextFetcher];
  v3 = contextFetcher[2]();

  return v3;
}

- (TIIndicScriptComposer)initWithLanguage:(id)language contextFetcher:(id)fetcher
{
  languageCopy = language;
  fetcherCopy = fetcher;
  v11.receiver = self;
  v11.super_class = TIIndicScriptComposer;
  v8 = [(TIIndicScriptComposer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TIIndicScriptComposer *)v8 setLanguageIdentifier:languageCopy];
    [(TIIndicScriptComposer *)v9 setContextFetcher:fetcherCopy];
  }

  return v9;
}

@end
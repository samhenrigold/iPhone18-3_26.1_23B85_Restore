@interface TIKeyboardFeatureSpecialization_el
- (id)externalStringToInternal:(id)internal;
- (id)internalStringToExternal:(id)external;
- (id)nonstopPunctuationCharacters;
- (id)sentenceDelimitingCharacters;
- (id)sentencePrefixingCharacters;
- (id)sentenceTrailingCharacters;
- (void)createInputManager:(id)manager;
@end

@implementation TIKeyboardFeatureSpecialization_el

- (void)createInputManager:(id)manager
{
  v6.receiver = self;
  v6.super_class = TIKeyboardFeatureSpecialization_el;
  [(TIKeyboardQuickTypeSpecialization *)&v6 createInputManager:manager];
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  [inputMode locale];
  objc_claimAutoreleasedReturnValue();

  operator new();
}

- (id)sentencePrefixingCharacters
{
  v5.receiver = self;
  v5.super_class = TIKeyboardFeatureSpecialization_el;
  sentencePrefixingCharacters = [(TIKeyboardFeatureSpecialization *)&v5 sentencePrefixingCharacters];
  v3 = [sentencePrefixingCharacters stringByAppendingString:@"«"];

  return v3;
}

- (id)sentenceDelimitingCharacters
{
  v5.receiver = self;
  v5.super_class = TIKeyboardFeatureSpecialization_el;
  sentenceDelimitingCharacters = [(TIKeyboardFeatureSpecialization *)&v5 sentenceDelimitingCharacters];
  v3 = [sentenceDelimitingCharacters stringByAppendingString:@""];;

  return v3;
}

- (id)sentenceTrailingCharacters
{
  v5.receiver = self;
  v5.super_class = TIKeyboardFeatureSpecialization_el;
  sentenceTrailingCharacters = [(TIKeyboardFeatureSpecialization *)&v5 sentenceTrailingCharacters];
  v3 = [sentenceTrailingCharacters stringByAppendingString:@"»"];

  return v3;
}

- (id)externalStringToInternal:(id)internal
{
  v13 = *MEMORY[0x29EDCA608];
  v11 = 0xB400000385;
  v12 = 168;
  internalCopy = internal;
  std::vector<unsigned int>::vector[abi:nn200100](__p, &v11, 3uLL);
  KB::utf8_string(v10, internalCopy, v5);

  [(TIKeyboardFeatureSpecialization *)self precomposedCharacterSet];
  KB::decompose_diacritics();
  v7 = KB::ns_string(&v11, v6);
  KB::String::~String(&v11);
  KB::String::~String(v10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v7;
}

- (id)internalStringToExternal:(id)external
{
  v28[2] = *MEMORY[0x29EDCA608];
  KB::utf8_string(v25, external, a2);
  [(TIKeyboardFeatureSpecialization *)self precomposedCharacterSet];
  KB::compose_diacritics();
  KB::String::~String(v25);
  KB::String::String(v25);
  v4 = v27;
  if (!v27)
  {
    v4 = v28;
  }

  v21 = v4;
  v22 = 0;
  v23 = v26;
  v24 = 0;
  KB::String::iterator::initialize(&v21);
  v5 = v27;
  if (!v27)
  {
    v5 = v28;
  }

  v17 = v5;
  v18 = v26;
  v19 = v26;
  v20 = 0;
  KB::String::iterator::initialize(&v17);
  while (v22 != v18)
  {
    if (v24 == 963)
    {
      v7 = v27;
      if (!v27)
      {
        v7 = v28;
      }

      v17 = v7;
      v18 = 0;
      v19 = v26;
      v20 = 0;
      KB::String::iterator::initialize(&v17);
      if (v22 != v18)
      {
        KB::String::iterator::operator-();
        if (((0x40001FEu >> u_charType(c)) & 1) == 0)
        {
          KB::String::iterator::operator-();
        }
      }

      KB::String::iterator::operator+();
      v8 = v27;
      if (!v27)
      {
        v8 = v28;
      }

      v13 = v8;
      v14 = v26;
      v15 = v26;
      c = 0;
      KB::String::iterator::initialize(&v13);
      if (v18 != v14)
      {
        KB::String::iterator::operator+();
        if (((0x40001FEu >> u_charType(v12)) & 1) == 0)
        {
          KB::String::iterator::operator+();
        }
      }
    }

    KB::String::append(v25);
    KB::String::iterator::operator++();
    v9 = v27;
    if (!v27)
    {
      v9 = v28;
    }

    v17 = v9;
    v18 = v26;
    v19 = v26;
    v20 = 0;
    KB::String::iterator::initialize(&v17);
  }

  v10 = KB::ns_string(v25, v6);
  KB::String::~String(v25);
  KB::String::~String(&v26);

  return v10;
}

- (id)nonstopPunctuationCharacters
{
  v5.receiver = self;
  v5.super_class = TIKeyboardFeatureSpecialization_el;
  nonstopPunctuationCharacters = [(TIKeyboardFeatureSpecialization *)&v5 nonstopPunctuationCharacters];
  v3 = [nonstopPunctuationCharacters stringByAppendingString:@"´¨΅"];

  return v3;
}

@end
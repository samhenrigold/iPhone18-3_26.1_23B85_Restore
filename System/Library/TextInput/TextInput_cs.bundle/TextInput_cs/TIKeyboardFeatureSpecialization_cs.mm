@interface TIKeyboardFeatureSpecialization_cs
- (id)accentKeyStringForKeyboardState:(id)state;
- (id)externalStringToInternal:(id)internal;
- (id)internalStringToExternal:(id)external;
- (id)nonstopPunctuationCharacters;
@end

@implementation TIKeyboardFeatureSpecialization_cs

- (id)accentKeyStringForKeyboardState:(id)state
{
  stateCopy = state;
  layoutState = [stateCopy layoutState];
  hasAccentKey = [layoutState hasAccentKey];

  if (hasAccentKey)
  {
    documentState = [stateCopy documentState];
    contextBeforeInput = [documentState contextBeforeInput];

    v8 = [contextBeforeInput length];
    v9 = @"ˇ";
    if (v8 && ([contextBeforeInput characterAtIndex:v8 - 1] & 0xFFFFFFDF) == 0x55)
    {
      v9 = @"˚";
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)externalStringToInternal:(id)internal
{
  v13 = *MEMORY[0x29EDCA608];
  v11 = 0x2C7000000B4;
  v12 = 730;
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
  v9 = *MEMORY[0x29EDCA608];
  KB::utf8_string(v7, external, a2);
  [(TIKeyboardFeatureSpecialization *)self precomposedCharacterSet];
  KB::compose_diacritics();
  v5 = KB::ns_string(v8, v4);
  KB::String::~String(v8);
  KB::String::~String(v7);

  return v5;
}

- (id)nonstopPunctuationCharacters
{
  v5.receiver = self;
  v5.super_class = TIKeyboardFeatureSpecialization_cs;
  nonstopPunctuationCharacters = [(TIKeyboardFeatureSpecialization *)&v5 nonstopPunctuationCharacters];
  v3 = [nonstopPunctuationCharacters stringByAppendingString:@"ˇ´˚"];

  return v3;
}

@end
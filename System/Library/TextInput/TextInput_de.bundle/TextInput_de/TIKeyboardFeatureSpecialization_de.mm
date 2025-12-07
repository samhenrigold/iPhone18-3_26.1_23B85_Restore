@interface TIKeyboardFeatureSpecialization_de
- (id)externalStringToInternal:(id)internal;
- (id)internalStringToExternal:(id)external;
- (void)createInputManager:(id)manager;
@end

@implementation TIKeyboardFeatureSpecialization_de

- (void)createInputManager:(id)manager
{
  v6.receiver = self;
  v6.super_class = TIKeyboardFeatureSpecialization_de;
  [(TIKeyboardQuickTypeSpecialization *)&v6 createInputManager:manager];
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  [inputMode locale];
  objc_claimAutoreleasedReturnValue();

  operator new();
}

- (id)externalStringToInternal:(id)internal
{
  v11[4] = *MEMORY[0x29EDCA608];
  v11[0] = 0x2CB000000B4;
  internalCopy = internal;
  std::vector<unsigned int>::vector[abi:nn200100](__p, v11, 2uLL);
  KB::utf8_string(v10, internalCopy, v5);

  [(TIKeyboardFeatureSpecialization *)self precomposedCharacterSet];
  KB::decompose_diacritics();
  v7 = KB::ns_string(v11, v6);
  KB::String::~String(v11);
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

@end
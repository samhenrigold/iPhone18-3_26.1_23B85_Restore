@interface TIKeyboardInputManager_haw
- (id)externalStringToInternal:(id)internal;
- (id)internalStringToExternal:(id)external;
- (id)sentencePrefixingCharacters;
- (void)initImplementation;
@end

@implementation TIKeyboardInputManager_haw

- (void)initImplementation
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x29EDC7290]))
  {
    operator new();
  }

  return *(&self->super.super.super.isa + *MEMORY[0x29EDC7290]);
}

- (id)externalStringToInternal:(id)internal
{
  v12 = *MEMORY[0x29EDCA608];
  v11[0] = 175;
  internalCopy = internal;
  std::vector<unsigned int>::vector[abi:nn200100](__p, v11, 1uLL);
  KB::utf8_string(v10, internalCopy, v5);

  [(TIKeyboardInputManager_haw *)self precomposedCharacterSet];
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
  [(TIKeyboardInputManager_haw *)self precomposedCharacterSet];
  KB::compose_diacritics();
  v5 = KB::ns_string(v8, v4);
  KB::String::~String(v8);
  KB::String::~String(v7);

  return v5;
}

- (id)sentencePrefixingCharacters
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManager_haw;
  sentencePrefixingCharacters = [(TIKeyboardInputManager_haw *)&v5 sentencePrefixingCharacters];
  v3 = [sentencePrefixingCharacters stringByAppendingString:@"ʻ"];

  return v3;
}

@end
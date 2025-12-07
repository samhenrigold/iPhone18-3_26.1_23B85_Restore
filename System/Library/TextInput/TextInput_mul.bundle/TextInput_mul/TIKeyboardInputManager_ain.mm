@interface TIKeyboardInputManager_ain
- (id)deleteComposedTextFromIndex:(unint64_t)index count:(unint64_t *)count;
@end

@implementation TIKeyboardInputManager_ain

- (id)deleteComposedTextFromIndex:(unint64_t)index count:(unint64_t *)count
{
  v15[4] = *MEMORY[0x29EDCA608];
  TIInputManager::input_string(v15, *(&self->super.super.super.isa + *MEMORY[0x29EDC7290]));
  v7 = KB::ns_string(v15, v6);
  v8 = [(TIKeyboardInputManager_ain *)self internalStringToExternal:v7];

  KB::String::~String(v15);
  v9 = index - 1;
  if (v9 <= [v8 length])
  {
    v10 = [v8 substringToIndex:v9];
    [*(&self->super.super.super.isa + *MEMORY[0x29EDC7288]) setString:v10];
    keyboardFeatureSpecialization = [(TIKeyboardInputManager_ain *)self keyboardFeatureSpecialization];
    v12 = [keyboardFeatureSpecialization externalStringToInternal:v10 byConvertingEagerly:1];
    KB::utf8_string(v15, v12, v13);
    TIInputManager::set_input();
    KB::String::~String(v15);
  }

  return 0;
}

@end
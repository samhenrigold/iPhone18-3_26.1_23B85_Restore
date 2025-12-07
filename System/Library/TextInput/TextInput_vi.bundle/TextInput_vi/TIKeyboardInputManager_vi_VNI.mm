@interface TIKeyboardInputManager_vi_VNI
- (BOOL)allowsAutocorrectionForCurrentInputString;
@end

@implementation TIKeyboardInputManager_vi_VNI

- (BOOL)allowsAutocorrectionForCurrentInputString
{
  v7[4] = *MEMORY[0x29EDCA608];
  TIInputManager::input_string(v7, *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]));
  v3 = KB::ns_string(v7, v2);
  KB::String::~String(v7);
  tI_vietnameseVNISpecialsCharacterSet = [MEMORY[0x29EDB9F50] TI_vietnameseVNISpecialsCharacterSet];
  v5 = [v3 rangeOfCharacterFromSet:tI_vietnameseVNISpecialsCharacterSet] == 0x7FFFFFFFFFFFFFFFLL;

  return v5;
}

@end
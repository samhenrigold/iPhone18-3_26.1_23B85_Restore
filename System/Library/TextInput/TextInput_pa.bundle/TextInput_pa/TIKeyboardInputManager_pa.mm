@interface TIKeyboardInputManager_pa
- (id)deleteFromInput:(unint64_t *)input;
- (void)initImplementation;
- (void)syncToLayoutState:(id)state;
@end

@implementation TIKeyboardInputManager_pa

- (void)initImplementation
{
  result = *(&self->super.super.super.super.isa + *MEMORY[0x29EDC7290]);
  if (!result)
  {
    operator new();
  }

  return result;
}

- (void)syncToLayoutState:(id)state
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManager_pa;
  stateCopy = state;
  [(TIKeyboardInputManagerIndic *)&v6 syncToLayoutState:stateCopy];
  softwareLayout = [stateCopy softwareLayout];

  -[TIKeyboardInputManager_pa setIsPhoneticLayout:](self, "setIsPhoneticLayout:", [softwareLayout isEqualToString:@"Punjabi-Phonetic"]);
}

- (id)deleteFromInput:(unint64_t *)input
{
  v28[4] = *MEMORY[0x29EDCA608];
  if (input)
  {
    *input = 1;
  }

  v5 = *MEMORY[0x29EDC7290];
  if (*(&self->super.super.super.super.isa + v5))
  {
    inputIndex = [(TIKeyboardInputManager_pa *)self inputIndex];
    if (*(&self->super.super.super.super.isa + v5))
    {
      v7 = inputIndex == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7 || (v8 = inputIndex, v9 = *MEMORY[0x29EDC7288], [*(&self->super.super.super.super.isa + v9) length] < inputIndex))
    {
      v27.receiver = self;
      v27.super_class = TIKeyboardInputManager_pa;
      v10 = [(TIKeyboardInputManager_pa *)&v27 deleteFromInput:input];
    }

    else
    {
      v11 = v8;
      TIInputManager::input_string(v28, *(&self->super.super.super.super.isa + v5));
      v13 = KB::ns_string(v28, v12);
      v14 = [(TIKeyboardInputManager_pa *)self internalStringToExternal:v13];

      KB::String::~String(v28);
      if ([v14 length] >= 2 && (v15 = v8 - 2, v8 >= 2) && (objc_msgSend(v14, "characterAtIndex:", v15) == 2637 || objc_msgSend(v14, "characterAtIndex:", v8 - 1) == 2620))
      {
        TIInputManager::delete_from_input(*(&self->super.super.super.super.isa + v5));
        TIInputManager::delete_from_input(*(&self->super.super.super.super.isa + v5));
        TIInputManager::delete_from_favonius_stroke_history(*(&self->super.super.super.super.isa + v5));
      }

      else if ([(TIKeyboardInputManager_pa *)self isPhoneticLayout])
      {
        if ([v14 length] >= 3 && v8 >= 3 && (objc_msgSend(v14, "characterAtIndex:", v8 - 2) == 2622 || objc_msgSend(v14, "characterAtIndex:", v8 - 2) == 2566) && objc_msgSend(v14, "characterAtIndex:", v8 - 1) == 2562)
        {
          v16 = [(TIKeyboardInputManager_pa *)self externalStringToInternal:@"ਾਂ"];
          KB::utf8_string(v28, v16, v17);
          TIInputManager::delete_suffix_from_input();
          KB::String::~String(v28);
        }

        else
        {
          TIInputManager::delete_from_input(*(&self->super.super.super.super.isa + v5));
        }
      }

      else
      {
        v18 = [v14 characterAtIndex:v8 - 1];
        KB::lower_character(v28, v18, v19, 0);
        TIInputManager::delete_suffix_from_input();
        KB::String::~String(v28);
      }

      TIInputManager::input_string(v28, *(&self->super.super.super.super.isa + v5));
      v21 = KB::ns_string(v28, v20);
      v22 = [(TIKeyboardInputManager_pa *)self internalStringToExternal:v21];

      KB::String::~String(v28);
      TIInputManager::input_stem(v28, *(&self->super.super.super.super.isa + v5));
      v24 = KB::ns_string(v28, v23);
      v25 = [(TIKeyboardInputManager_pa *)self internalStringToExternal:v24];

      KB::String::~String(v28);
      v10 = [(TIKeyboardInputManager_pa *)self suffixOfDesiredString:v25 toAppendToInputString:*(&self->super.super.super.super.isa + v9) withInputIndex:v11 afterDeletionCount:input];
      [*(&self->super.super.super.super.isa + v9) setString:v22];
      if (![v10 length])
      {

        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end
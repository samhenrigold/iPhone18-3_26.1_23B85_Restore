@interface TIKeyboardInputManager_my
- (id)deleteFromInput:(unint64_t *)input;
- (id)externalStringToInternal:(id)internal;
- (id)internalStringToExternal:(id)external;
@end

@implementation TIKeyboardInputManager_my

- (id)internalStringToExternal:(id)external
{
  externalCopy = external;
  v4 = [externalCopy mutableCopy];
  if ([v4 length] >= 2 && objc_msgSend(v4, "characterAtIndex:", objc_msgSend(v4, "length") - 1) == 4145)
  {
    [v4 insertString:@"​" atIndex:{objc_msgSend(v4, "length") - 1}];
  }

  if (InternalToExternalRegex(void)::__onceToken != -1)
  {
    [TIKeyboardInputManager_my internalStringToExternal:];
  }

  v5 = InternalToExternalRegex(void)::__regex;
  v6 = [externalCopy length];
  v12 = MEMORY[0x29EDCA5F8];
  v13 = 3221225472;
  v14 = __54__TIKeyboardInputManager_my_internalStringToExternal___block_invoke;
  v15 = &unk_29F37BC80;
  v16 = externalCopy;
  v7 = v4;
  v17 = v7;
  v8 = externalCopy;
  [v5 enumerateMatchesInString:v8 options:0 range:0 usingBlock:{v6, &v12}];
  [v7 replaceOccurrencesOfString:@"ဦ" withString:@"ဦ" options:2 range:{0, objc_msgSend(v7, "length", v12, v13, v14, v15)}];
  [v7 replaceOccurrencesOfString:@"ဥ်" withString:@"ဉ်" options:2 range:{0, objc_msgSend(v7, "length")}];
  [v7 replaceOccurrencesOfString:@"သြ" withString:@"ဩ" options:2 range:{0, objc_msgSend(v7, "length")}];
  [v7 replaceOccurrencesOfString:@"ဩော်" withString:@"ဪ" options:2 range:{0, objc_msgSend(v7, "length")}];
  v9 = v17;
  v10 = v7;

  return v7;
}

- (id)externalStringToInternal:(id)internal
{
  internalCopy = internal;
  v4 = internalCopy;
  if (internalCopy)
  {
    v5 = [internalCopy mutableCopy];
    if (ExternalToInternalRegex(void)::__onceToken != -1)
    {
      [TIKeyboardInputManager_my externalStringToInternal:];
    }

    v6 = ExternalToInternalRegex(void)::__regex;
    v7 = [v4 length];
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __54__TIKeyboardInputManager_my_externalStringToInternal___block_invoke;
    v12[3] = &unk_29F37BC80;
    v13 = v4;
    v8 = v5;
    v14 = v8;
    [v6 enumerateMatchesInString:v13 options:0 range:0 usingBlock:{v7, v12}];
    v9 = v14;
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)deleteFromInput:(unint64_t *)input
{
  v22[4] = *MEMORY[0x29EDCA608];
  if (input)
  {
    *input = 1;
  }

  v5 = *MEMORY[0x29EDC7290];
  if (*(&self->super.super.super.isa + v5))
  {
    inputIndex = [(TIKeyboardInputManager_my *)self inputIndex];
    if (inputIndex >= 3 && (v7 = inputIndex, v8 = *MEMORY[0x29EDC7288], [*(&self->super.super.super.isa + v8) length] >= inputIndex))
    {
      v10 = v7;
      TIInputManager::input_string(v22, *(&self->super.super.super.isa + v5));
      v12 = KB::ns_string(v22, v11);
      KB::String::~String(v22);
      if ([v12 hasSuffix:@"င်္"])
      {
        KB::utf8_string(v22, @"င်္", v13);
        TIInputManager::delete_suffix_from_input();
        KB::String::~String(v22);
      }

      else
      {
        TIInputManager::delete_from_input(*(&self->super.super.super.isa + v5));
      }

      TIInputManager::input_string(v22, *(&self->super.super.super.isa + v5));
      v15 = KB::ns_string(v22, v14);
      v16 = [(TIKeyboardInputManager_my *)self internalStringToExternal:v15];

      KB::String::~String(v22);
      TIInputManager::input_stem(v22, *(&self->super.super.super.isa + v5));
      v18 = KB::ns_string(v22, v17);
      v19 = [(TIKeyboardInputManager_my *)self internalStringToExternal:v18];

      KB::String::~String(v22);
      v9 = [(TIKeyboardInputManager_my *)self suffixOfDesiredString:v19 toAppendToInputString:*(&self->super.super.super.isa + v8) withInputIndex:v10 afterDeletionCount:input];
      [*(&self->super.super.super.isa + v8) setString:v16];
      if (![v9 length])
      {

        v9 = 0;
      }
    }

    else
    {
      v21.receiver = self;
      v21.super_class = TIKeyboardInputManager_my;
      v9 = [(TIKeyboardInputManager_my *)&v21 deleteFromInput:input];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
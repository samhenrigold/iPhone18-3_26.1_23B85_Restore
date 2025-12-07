@interface TIKeyboardInputManager_si
- (id)addInput:(id)input flags:(unsigned int)flags point:(CGPoint)point firstDelete:(unint64_t *)delete;
- (unsigned)composedCharacterWithInputCharacter:(unsigned __int16)character;
- (void)deleteFromInputWithContext:(id)context;
- (void)syncToKeyboardState:(id)state from:(id)from afterContextChange:(BOOL)change;
@end

@implementation TIKeyboardInputManager_si

- (void)syncToKeyboardState:(id)state from:(id)from afterContextChange:(BOOL)change
{
  changeCopy = change;
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManager_si;
  [(TIKeyboardInputManager_si *)&v7 syncToKeyboardState:state from:from afterContextChange:?];
  if (changeCopy)
  {
    [(TIKeyboardInputManager_si *)self setLastTypedChar:0];
  }
}

- (id)addInput:(id)input flags:(unsigned int)flags point:(CGPoint)point firstDelete:(unint64_t *)delete
{
  y = point.y;
  x = point.x;
  v9 = *&flags;
  v22 = *MEMORY[0x29EDCA608];
  inputCopy = input;
  if ([inputCopy length] == 1)
  {
    v12 = [inputCopy characterAtIndex:0];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(TIKeyboardInputManager_si *)self composedCharacterWithInputCharacter:v12];
  v20 = v13;
  if (v13)
  {
    v14 = v13;
    *delete = 1;
    TIInputManager::delete_from_input(*(&self->super.super.super.isa + *MEMORY[0x29EDC7290]));
    MEMORY[0x29EDA4B90](v21, v14);
    TIInputManager::add_input();
    KB::String::~String(v21);
    if (v14 == 3548)
    {
      v15 = 3548;
    }

    else
    {
      v15 = 0;
    }

    [(TIKeyboardInputManager_si *)self setLastTypedChar:v15];
    v16 = [MEMORY[0x29EDBA0F8] stringWithCharacters:&v20 length:1];
  }

  else
  {
    [(TIKeyboardInputManager_si *)self setLastTypedChar:v12];
    v19.receiver = self;
    v19.super_class = TIKeyboardInputManager_si;
    v16 = [(TIKeyboardInputManager_si *)&v19 addInput:inputCopy flags:v9 point:delete firstDelete:x, y];
  }

  v17 = v16;

  return v17;
}

- (unsigned)composedCharacterWithInputCharacter:(unsigned __int16)character
{
  characterCopy = character;
  lastTypedChar = [(TIKeyboardInputManager_si *)self lastTypedChar];
  if (!characterCopy || !lastTypedChar)
  {
    return 0;
  }

  if (lastTypedChar <= 3472)
  {
    if (lastTypedChar > 3468)
    {
      if (lastTypedChar == 3469)
      {
        if (characterCopy == 3544)
        {
          return 3470;
        }
      }

      else if (lastTypedChar == 3471 && characterCopy == 3551)
      {
        return 3472;
      }
    }

    else if (lastTypedChar == 3461)
    {
      if ((characterCopy - 3535) < 3)
      {
        return characterCopy - 73;
      }
    }

    else if (lastTypedChar == 3467 && characterCopy == 3551)
    {
      return 3468;
    }

    return 0;
  }

  if (lastTypedChar > 3543)
  {
    if (lastTypedChar == 3544)
    {
      if (characterCopy == 3544)
      {
        return 3570;
      }
    }

    else if (lastTypedChar == 3545)
    {
      if (characterCopy <= 3534)
      {
        if (characterCopy == 3473)
        {
          return 3475;
        }

        if (characterCopy == 3530)
        {
          return 3546;
        }
      }

      else
      {
        switch(characterCopy)
        {
          case 3551:
            return 3550;
          case 3545:
            return 3547;
          case 3535:
            return 3548;
        }
      }
    }

    else if (lastTypedChar == 3548 && characterCopy == 3530)
    {
      return 3549;
    }

    return 0;
  }

  if (lastTypedChar == 3473)
  {
    if (characterCopy == 3530)
    {
      return 3474;
    }

    return 0;
  }

  if (lastTypedChar != 3476)
  {
    return 0;
  }

  if (characterCopy == 3551)
  {
    v5 = 3478;
  }

  else
  {
    v5 = 0;
  }

  if (characterCopy == 3530)
  {
    return 3477;
  }

  return v5;
}

- (void)deleteFromInputWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_si;
  [(TIKeyboardInputManager_si *)&v4 deleteFromInputWithContext:context];
  [(TIKeyboardInputManager_si *)self setLastTypedChar:0];
}

@end
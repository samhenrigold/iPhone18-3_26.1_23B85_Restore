@interface TIKeyboardInputManager_vi
+ (void)cleanupUnikey;
+ (void)setupUnikey;
- (BOOL)canHandleCharacter:(unsigned __int16)character;
- (BOOL)shouldDynamicallySwitchBetweenPrimaryAndSecondary;
- (TIKeyboardInputManager_vi)initWithConfig:(id)config keyboardState:(id)state;
- (id)addInput:(id)input flags:(unsigned int)flags point:(CGPoint)point firstDelete:(unint64_t *)delete;
- (id)decomposeTelex:(id)telex;
- (id)deleteFromInput:(unint64_t *)input;
- (id)externalStringToInternal:(id)internal ignoreCompositionDisabled:(BOOL)disabled useReverseMap:(BOOL)map;
- (id)internalStringToExternal:(id)external ignoreCompositionDisabled:(BOOL)disabled;
- (unint64_t)deleteLengthForString:(id)string;
- (unsigned)inputIndex;
- (unsigned)lexiconID;
- (void)acceptInput;
- (void)createTransliterator;
- (void)dealloc;
- (void)initImplementation;
- (void)setInput:(id)input withIndex:(unsigned int)index;
- (void)setInputIndex:(unsigned int)index;
- (void)updateChoseSecondaryOnBackspaceIntoWord;
- (void)updateUnikeyWithVietnameseType:(int)type;
@end

@implementation TIKeyboardInputManager_vi

- (TIKeyboardInputManager_vi)initWithConfig:(id)config keyboardState:(id)state
{
  stateCopy = state;
  configCopy = config;
  +[TIKeyboardInputManager_vi setupUnikey];
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_vi;
  v8 = [(TIKeyboardInputManager_mul *)&v10 initWithConfig:configCopy keyboardState:stateCopy];

  if (v8)
  {
    (*(&v8->super.super.super.super.isa + *MEMORY[0x29EDC7290]))[737] = 0;
  }

  else
  {
    +[TIKeyboardInputManager_vi cleanupUnikey];
  }

  return v8;
}

- (void)initImplementation
{
  WeakRetained = objc_loadWeakRetained((self + 8));
  v7 = KB::ns_string(a2, v6);
  v9 = [WeakRetained internalStringToExternal:v7];

  KB::utf8_string(a3, v9, v8);
}

- (void)dealloc
{
  [objc_opt_class() cleanupUnikey];
  if (self->m_transliterator)
  {
    utrans_close();
    self->m_transliterator = 0;
  }

  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_vi;
  [(TIKeyboardInputManager_vi *)&v3 dealloc];
}

- (unsigned)lexiconID
{
  m_lexiconID = self->m_lexiconID;
  if (!m_lexiconID)
  {
    v4 = MEMORY[0x29EDBA070];
    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    locale = [inputMode locale];
    localeIdentifier = [locale localeIdentifier];
    [localeIdentifier UTF8String];
    v8 = [v4 numberWithUnsignedInt:TILexiconIDForLocaleIdentifier()];
    v9 = self->m_lexiconID;
    self->m_lexiconID = v8;

    m_lexiconID = self->m_lexiconID;
  }

  return [(NSNumber *)m_lexiconID unsignedIntValue];
}

- (BOOL)shouldDynamicallySwitchBetweenPrimaryAndSecondary
{
  keyboardState = [(TIKeyboardInputManager_vi *)self keyboardState];
  autocorrectionEnabled = [keyboardState autocorrectionEnabled];

  mEMORY[0x29EDC70E8] = [MEMORY[0x29EDC70E8] sharedPreferencesController];
  v6 = [mEMORY[0x29EDC70E8] BOOLForPreferenceKey:*MEMORY[0x29EDC7108]];

  return [(TIKeyboardInputManager_mul *)self isUsingMultilingual]& autocorrectionEnabled & v6;
}

+ (void)setupUnikey
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!__UnikeyRefCount++)
  {
    UnikeySetup();
    UnikeySetInputMethod();
    UnikeyGetOptions();
    UnikeySetOptions();
  }

  objc_sync_exit(selfCopy);
}

+ (void)cleanupUnikey
{
  obj = self;
  objc_sync_enter(obj);
  if (__UnikeyRefCount)
  {
    if (!--__UnikeyRefCount)
    {
      UnikeyCleanup();
    }
  }

  objc_sync_exit(obj);
}

- (void)createTransliterator
{
  v29[1] = *MEMORY[0x29EDCA608];
  v2 = TIBundleForInputMode();
  v3 = [v2 pathForResource:@"vi_TelexTransliterator" ofType:@"txt"];
  if (v3)
  {
    v29[0] = 0;
    v4 = [MEMORY[0x29EDBA0F8] stringWithContentsOfFile:v3 encoding:4 error:v29];
    v5 = v29[0];
    v6 = v5;
    if (!v4)
    {
      if (v5)
      {
        NSLog(&cfstr_ErrorOpeningTr.isa, v5);
      }

      v10 = 0;
      goto LABEL_29;
    }

    v7 = malloc_type_malloc(2 * [v4 length], 0x1000040BDFB0063uLL);
    v8 = [@"vi_TelexTransliterator" length];
    if (v7)
    {
      v9 = v8 < 1;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = 0;
      if (!v7)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v28 = 0;
      MEMORY[0x2A1C7C4A8](v8);
      [@"vi_TelexTransliterator" getCharacters:&v21 - ((v11 + 15) & 0x1FFFFFFF0) range:0];
      [v4 getCharacters:v7];
      v10 = utrans_openU();
      v12 = v28;
      if (v28 >= 1)
      {
        v13 = 32;
        if (v26 >= 1 && v25 <= 0)
        {
          v13 = v7[v26];
        }

        v22 = v13;
        v23 = v26;
        v14 = 8;
        v24 = &v21;
        do
        {
          if (!*(&v25 + v14))
          {
            break;
          }

          v14 += 2;
        }

        while (v14 != 40);
        v15 = [MEMORY[0x29EDBA0F8] stringWithCharacters:? length:?];
        v16 = &v28;
        v17 = 40;
        while (*(&v25 + v17))
        {
          v17 += 2;
          if (v17 == 72)
          {
            goto LABEL_26;
          }
        }

        v16 = (&v25 + v17);
LABEL_26:
        v18 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v27 length:((v16 - v27) >> 1)];
        v19 = u_errorName(v12);
        NSLog(&cfstr_ParseErrorSFor.isa, v19, @"vi_TelexTransliterator", v25, v23, v15, v22, v18);
      }

      if (!v7)
      {
        goto LABEL_29;
      }
    }

    free(v7);
LABEL_29:

    goto LABEL_30;
  }

  NSLog(&cfstr_CanTFindTransl.isa);
  v10 = 0;
LABEL_30:

  return v10;
}

- (id)decomposeTelex:(id)telex
{
  telexCopy = telex;
  if (!self->m_transliterator)
  {
    self->m_transliterator = [(TIKeyboardInputManager_vi *)self createTransliterator];
  }

  v9 = [telexCopy length];
  v5 = malloc_type_malloc(6 * v9, 0x1000040BDFB0063uLL);
  if (v5)
  {
    v6 = v5;
    [telexCopy getCharacters:v5 range:{0, objc_msgSend(telexCopy, "length")}];
    utrans_transUChars();
    v7 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v6 length:v9];
    free(v6);
  }

  else
  {
    NSLog(&cfstr_CouldnTCreateU.isa);
    v7 = 0;
  }

  return v7;
}

- (id)addInput:(id)input flags:(unsigned int)flags point:(CGPoint)point firstDelete:(unint64_t *)delete
{
  y = point.y;
  x = point.x;
  v9 = *&flags;
  v25 = *MEMORY[0x29EDCA608];
  inputCopy = input;
  compositionDisabled = [(TIKeyboardInputManager_vi *)self compositionDisabled];
  v13 = *MEMORY[0x29EDC7290];
  v14 = *(&self->super.super.super.super.isa + v13);
  v15 = v14[24];
  TIInputManager::input_string(&v24, v14);
  v17 = KB::ns_string(&v24, v16);
  KB::String::~String(&v24);
  if (compositionDisabled)
  {
    [(TIKeyboardInputManager_vi *)self setCompositionDisabled:1];
    if (![(TIKeyboardInputManager_vi *)self compositionDisabled])
    {
      v18 = *(&self->super.super.super.super.isa + *MEMORY[0x29EDC7288]) != 0;
      goto LABEL_6;
    }
  }

  else
  {
    -[TIKeyboardInputManager_vi setCompositionDisabled:](self, "setCompositionDisabled:", [v17 length] > v15);
  }

  v18 = 0;
LABEL_6:
  self->m_useInternalIndex = v18;
  if ((v9 & 0x80) != 0)
  {
    v19 = inputCopy;
    v20 = *(&self->super.super.super.super.isa + v13);
    KB::utf8_string(&v24, v19, v21);
    TIInputManager::add_input(v20, &v24);
    KB::String::~String(&v24);
    [*(&self->super.super.super.super.isa + *MEMORY[0x29EDC7288]) setString:v19];
  }

  else
  {
    v23.receiver = self;
    v23.super_class = TIKeyboardInputManager_vi;
    v19 = [(TIKeyboardInputManager_vi *)&v23 addInput:inputCopy flags:v9 point:delete firstDelete:x, y];
  }

  self->m_useInternalIndex = 0;
  if ([inputCopy isEqualToString:@" "])
  {
    [(TIKeyboardInputManager_vi *)self setCompositionDisabled:0];
  }

  return v19;
}

- (BOOL)canHandleCharacter:(unsigned __int16)character
{
  characterCopy = character;
  letterCharacterSet = [MEMORY[0x29EDB9F50] letterCharacterSet];
  v6 = [letterCharacterSet characterIsMember:characterCopy];

  if (v6)
  {
    return 1;
  }

  vietnameseType = [(TIKeyboardInputManager_vi *)self vietnameseType];
  switch(vietnameseType)
  {
    case 3:
      tI_vietnameseVIQRSpecialsCharacterSet = [MEMORY[0x29EDB9F50] TI_vietnameseVIQRSpecialsCharacterSet];
      goto LABEL_9;
    case 2:
      tI_vietnameseVIQRSpecialsCharacterSet = [MEMORY[0x29EDB9F50] TI_vietnameseVNISpecialsCharacterSet];
      goto LABEL_9;
    case 1:
      tI_vietnameseVIQRSpecialsCharacterSet = [MEMORY[0x29EDB9F50] TI_vietnameseTelexSpecialsCharacterSet];
LABEL_9:
      v10 = tI_vietnameseVIQRSpecialsCharacterSet;
      v11 = [tI_vietnameseVIQRSpecialsCharacterSet characterIsMember:characterCopy];

      return v11;
  }

  return 0;
}

- (id)externalStringToInternal:(id)internal ignoreCompositionDisabled:(BOOL)disabled useReverseMap:(BOOL)map
{
  internalCopy = internal;
  v8 = internalCopy;
  if ([(TIKeyboardInputManager_vi *)self inputTypeSupportsDecomposition])
  {
    if (disabled || (v8 = internalCopy, ![(TIKeyboardInputManager_vi *)self compositionDisabled]))
    {
      v8 = [(TIKeyboardInputManager_vi *)self decomposeTelex:internalCopy];
    }
  }

  return v8;
}

- (id)internalStringToExternal:(id)external ignoreCompositionDisabled:(BOOL)disabled
{
  externalCopy = external;
  if (disabled || ![(TIKeyboardInputManager_vi *)self compositionDisabled])
  {
    v8 = [externalCopy length];
    v7 = [MEMORY[0x29EDBA050] stringWithCapacity:v8];
    UnikeyResetBuf();
    [(TIKeyboardInputManager_vi *)self updateUnikeyWithVietnameseType:[(TIKeyboardInputManager_vi *)self vietnameseType]];
    if (v8)
    {
      v9 = 0;
      v10 = MEMORY[0x29EDC72B0];
      v11 = MEMORY[0x29EDC72A0];
      v12 = MEMORY[0x29EDC72A8];
      do
      {
        v13 = [externalCopy characterAtIndex:v9];
        chars = v13;
        if ([(TIKeyboardInputManager_vi *)self canHandleCharacter:v13])
        {
          UnikeySetCapsState();
          UnikeyFilter();
          v14 = *v10;
          if (v14 | *v11)
          {
            if (v14)
            {
              v15 = *v11 < 1;
            }

            else
            {
              v15 = 1;
            }

            if (v15)
            {
              if (v14)
              {
                *(v12 + v14) = 0;
                v16 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v12];
                [(__CFString *)v7 appendString:v16];
              }
            }

            else
            {
              *(v12 + v14) = 0;
              if ([(__CFString *)v7 length]>= *v11)
              {
                v17 = [(__CFString *)v7 length]- *v11;
              }

              else
              {
                v17 = 0;
              }

              v18 = [(__CFString *)v7 length]- v17;
              v19 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v12];
              [(__CFString *)v7 replaceCharactersInRange:v17 withString:v18, v19];

              v10 = MEMORY[0x29EDC72B0];
            }
          }

          else
          {
            CFStringAppendCharacters(v7, &chars, 1);
          }
        }

        else
        {
          CFStringAppendCharacters(v7, &chars, 1);
          UnikeyResetBuf();
        }

        ++v9;
      }

      while (v8 != v9);
    }
  }

  else
  {
    v7 = externalCopy;
  }

  return v7;
}

- (void)acceptInput
{
  v2.receiver = self;
  v2.super_class = TIKeyboardInputManager_vi;
  [(TIKeyboardInputManager_vi *)&v2 acceptInput];
}

- (void)setInput:(id)input withIndex:(unsigned int)index
{
  v4 = *&index;
  inputCopy = input;
  if ([(TIKeyboardInputManager_vi *)self shouldDynamicallySwitchBetweenPrimaryAndSecondary])
  {
    v7 = [(TIKeyboardInputManager_vi *)self decomposeTelex:inputCopy];
    -[TIKeyboardInputManager_vi setCompositionDisabled:](self, "setCompositionDisabled:", [inputCopy isEqualToString:v7]);
  }

  if (![(TIKeyboardInputManager_vi *)self compositionDisabled])
  {
    -[TIKeyboardInputManager_vi setCompositionDisabled:](self, "setCompositionDisabled:", [inputCopy length] > v4);
  }

  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_vi;
  [(TIKeyboardInputManager_mul *)&v8 setInput:inputCopy withIndex:v4];
}

- (void)setInputIndex:(unsigned int)index
{
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_vi;
  [(TIKeyboardInputManager_vi *)&v3 setInputIndex:*&index];
}

- (unsigned)inputIndex
{
  if (self->m_useInternalIndex)
  {
    v4 = *(&self->super.super.super.super.isa + *MEMORY[0x29EDC7290]);
    if (v4)
    {
      return *(v4 + 96);
    }
  }

  v7 = v2;
  v8 = v3;
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManager_vi;
  return [(TIKeyboardInputManager_vi *)&v6 inputIndex];
}

- (unint64_t)deleteLengthForString:(id)string
{
  v14[4] = *MEMORY[0x29EDCA608];
  stringCopy = string;
  v5 = [stringCopy length];
  v6 = v5 != 0;
  v7 = *MEMORY[0x29EDC7290];
  TIInputManager::input_string(v14, *(&self->super.super.super.super.isa + v7));
  v9 = KB::ns_string(v14, v8);
  KB::String::~String(v14);
  v10 = (*(&self->super.super.super.super.isa + v7))[24];
  if (v10 >= v5 && [v9 length] >= v10)
  {
    v11 = [v9 substringWithRange:{v10 - v5, v5}];
    v12 = [stringCopy isEqualToString:v11];

    if (v12)
    {
      v6 = v5;
    }
  }

  return v6;
}

- (id)deleteFromInput:(unint64_t *)input
{
  v30[4] = *MEMORY[0x29EDCA608];
  if (input)
  {
    *input = 1;
  }

  v5 = *MEMORY[0x29EDC7290];
  if (*(&self->super.super.super.super.isa + v5))
  {
    inputIndex = [(TIKeyboardInputManager_vi *)self inputIndex];
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
      v29.receiver = self;
      v29.super_class = TIKeyboardInputManager_vi;
      v10 = [(TIKeyboardInputManager_vi *)&v29 deleteFromInput:input];
    }

    else
    {
      v28 = v8;
      TIInputManager::input_string(v30, *(&self->super.super.super.super.isa + v5));
      v12 = KB::ns_string(v30, v11);
      v13 = [(TIKeyboardInputManager_mul *)self internalStringToExternal:v12];

      KB::String::~String(v30);
      v14 = [v13 rangeOfComposedCharacterSequenceAtIndex:v8 - 1];
      v16 = [v13 substringWithRange:{v14, v15}];
      v17 = [(TIKeyboardInputManager_mul *)self externalStringToInternal:v16];
      v18 = [(TIKeyboardInputManager_vi *)self deleteLengthForString:v17];
      if (v18)
      {
        v19 = v18;
        v20 = 1;
        do
        {
          TIInputManager::delete_from_input(*(&self->super.super.super.super.isa + v5));
          if (v20 != 1)
          {
            TIInputManager::delete_from_favonius_stroke_history(*(&self->super.super.super.super.isa + v5));
          }
        }

        while (v19 > v20++);
      }

      TIInputManager::input_string(v30, *(&self->super.super.super.super.isa + v5));
      v23 = KB::ns_string(v30, v22);
      KB::String::~String(v30);
      v24 = [(TIKeyboardInputManager_mul *)self internalStringToExternal:v23];
      v25 = [v23 substringToIndex:(*(&self->super.super.super.super.isa + v5))[24]];
      v26 = [(TIKeyboardInputManager_mul *)self internalStringToExternal:v25];

      v10 = [(TIKeyboardInputManager_vi *)self suffixOfDesiredString:v26 toAppendToInputString:*(&self->super.super.super.super.isa + v9) withInputIndex:v28 afterDeletionCount:input];
      [*(&self->super.super.super.super.isa + v9) setString:v24];
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

- (void)updateUnikeyWithVietnameseType:(int)type
{
  if (type <= 3)
  {
    UnikeySetInputMethod();
  }
}

- (void)updateChoseSecondaryOnBackspaceIntoWord
{
  v6[4] = *MEMORY[0x29EDCA608];
  TIInputManager::input_string(v6, *(&self->super.super.super.super.isa + *MEMORY[0x29EDC7290]));
  v4 = KB::ns_string(v6, v3);
  KB::String::~String(v6);
  v5 = [(TIKeyboardInputManager_vi *)self internalStringToExternal:v4 ignoreCompositionDisabled:1];
  -[TIKeyboardInputManager_mul setChoseSecondary:](self, "setChoseSecondary:", [v5 isEqualToString:*(&self->super.super.super.super.isa + *MEMORY[0x29EDC7288])] ^ 1);
}

@end
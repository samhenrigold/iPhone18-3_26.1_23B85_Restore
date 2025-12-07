@interface TIKeyboardInputManager_ta
- (id)addInput:(id)input flags:(unsigned int)flags point:(CGPoint)point firstDelete:(unint64_t *)delete;
- (id)deleteFromInput:(unint64_t *)input;
- (id)externalStringToInternal:(id)internal;
- (id)internalStringToExternal:(id)external;
- (id)keyboardFeatureSpecialization;
- (void)closeTransliterators;
- (void)configureTransliterators;
- (void)dealloc;
- (void)initTransliteratorsWithID:(id)d;
- (void)syncToLayoutState:(id)state;
@end

@implementation TIKeyboardInputManager_ta

- (void)syncToLayoutState:(id)state
{
  stateCopy = state;
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_ta;
  [(TIKeyboardInputManagerIndic *)&v8 syncToLayoutState:stateCopy];
  if (![(TIKeyboardInputManagerIndic *)self alphabeticLayout])
  {
    softwareLayout = [stateCopy softwareLayout];
    if ([softwareLayout isEqualToString:@"QWERTY-Tamil"])
    {
      self->_isQWERTYLayout = 1;
    }

    else
    {
      keyboardState = [(TIKeyboardInputManager_ta *)self keyboardState];
      if ([keyboardState hardwareKeyboardMode])
      {
        hardwareLayout = [stateCopy hardwareLayout];
        self->_isQWERTYLayout = [hardwareLayout isEqualToString:@"Tamil99"] ^ 1;
      }

      else
      {
        self->_isQWERTYLayout = 0;
      }
    }

    [(TIKeyboardInputManager_ta *)self configureTransliterators];
  }
}

- (id)keyboardFeatureSpecialization
{
  [(TIKeyboardInputManagerIndic *)self alphabeticLayout];
  v3 = objc_opt_class();
  tamilFeatureSpecialization = self->_tamilFeatureSpecialization;
  if (!tamilFeatureSpecialization)
  {
    v5 = [v3 alloc];
    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    v7 = [v5 initWithInputMode:inputMode];
    v8 = self->_tamilFeatureSpecialization;
    self->_tamilFeatureSpecialization = v7;

    config = [(TIKeyboardInputManager_ta *)self config];
    -[TIKeyboardFeatureSpecialization setUseRelaxedOVSPolicy:](self->_tamilFeatureSpecialization, "setUseRelaxedOVSPolicy:", [config allowRelaxedOVSPolicy]);

    config2 = [(TIKeyboardInputManager_ta *)self config];
    -[TIKeyboardFeatureSpecialization setSkipCandidateQualityFilter:](self->_tamilFeatureSpecialization, "setSkipCandidateQualityFilter:", [config2 skipCandidateQualityFilter]);

    tamilFeatureSpecialization = self->_tamilFeatureSpecialization;
  }

  return tamilFeatureSpecialization;
}

- (void)dealloc
{
  [(TIKeyboardInputManager_ta *)self closeTransliterators];
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_ta;
  [(TIKeyboardInputManager_ta *)&v3 dealloc];
}

- (void)closeTransliterators
{
  if (self->_internalToExternalTransliterator)
  {
    utrans_close();
    self->_internalToExternalTransliterator = 0;
  }

  if (self->_externalToInternalTransliterator)
  {
    utrans_close();
    self->_externalToInternalTransliterator = 0;
  }
}

- (void)configureTransliterators
{
  [(TIKeyboardInputManager_ta *)self closeTransliterators];
  if (self->_isQWERTYLayout)
  {
    v3 = @"AnjalTransliterator";
  }

  else
  {
    v3 = @"Tamil99Transliterator";
  }

  [(TIKeyboardInputManager_ta *)self initTransliteratorsWithID:v3];
}

- (void)initTransliteratorsWithID:(id)d
{
  v15[1] = *MEMORY[0x29EDCA608];
  dCopy = d;
  v5 = TIBundleForInputMode();
  v6 = [v5 pathForResource:dCopy ofType:@"txt"];
  if (v6)
  {
    v15[0] = 0;
    v7 = [MEMORY[0x29EDBA0F8] stringWithContentsOfFile:v6 encoding:4 error:v15];
    v8 = v15[0];
    if (v7)
    {
      v9 = malloc_type_malloc(2 * [v7 length], 0x1000040BDFB0063uLL);
      v10 = [dCopy length];
      if (v9)
      {
        v11 = v10 < 1;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if (!v9)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v13[1] = v13;
        v14 = 0;
        MEMORY[0x2A1C7C4A8](v10);
        [dCopy getCharacters:v13 - ((v12 + 15) & 0x1FFFFFFF0) range:0];
        [v7 getCharacters:v9];
        self->_internalToExternalTransliterator = utrans_openU();
        if (v14 <= 0)
        {
          self->_externalToInternalTransliterator = utrans_openU();
          if (v14 >= 1)
          {
            utrans_close();
            self->_internalToExternalTransliterator = 0;
          }
        }
      }

      free(v9);
    }

LABEL_14:
  }
}

- (id)externalStringToInternal:(id)internal
{
  internalCopy = internal;
  if ([(TIKeyboardInputManagerIndic *)self alphabeticLayout])
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManager_ta;
    v5 = [(TIKeyboardInputManager_ta *)&v8 externalStringToInternal:internalCopy];
  }

  else
  {
    v5 = Transliterate(internalCopy, self->_externalToInternalTransliterator);
  }

  v6 = v5;

  return v6;
}

- (id)internalStringToExternal:(id)external
{
  externalCopy = external;
  if ([(TIKeyboardInputManagerIndic *)self alphabeticLayout])
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManager_ta;
    v5 = [(TIKeyboardInputManager_ta *)&v8 internalStringToExternal:externalCopy];
  }

  else
  {
    v5 = Transliterate(externalCopy, self->_internalToExternalTransliterator);
  }

  v6 = v5;

  return v6;
}

- (id)addInput:(id)input flags:(unsigned int)flags point:(CGPoint)point firstDelete:(unint64_t *)delete
{
  y = point.y;
  x = point.x;
  v9 = *&flags;
  inputCopy = input;
  if (!-[TIKeyboardInputManagerIndic alphabeticLayout](self, "alphabeticLayout") && !self->_isQWERTYLayout && [inputCopy isEqualToString:@"க்ஷ"])
  {
    v12 = [MEMORY[0x29EDBA0F8] _stringWithUnichar:3005];

    inputCopy = v12;
  }

  v15.receiver = self;
  v15.super_class = TIKeyboardInputManager_ta;
  v13 = [(TIKeyboardInputManager_ta *)&v15 addInput:inputCopy flags:v9 point:delete firstDelete:x, y];

  return v13;
}

- (id)deleteFromInput:(unint64_t *)input
{
  v31[4] = *MEMORY[0x29EDCA608];
  if ([(TIKeyboardInputManagerIndic *)self alphabeticLayout])
  {
    v30.receiver = self;
    v30.super_class = TIKeyboardInputManager_ta;
    [(TIKeyboardInputManager_ta *)&v30 deleteFromInput:input];
    v11 = LABEL_11:;
    goto LABEL_12;
  }

  if (input)
  {
    *input = 0;
  }

  inputIndex = [(TIKeyboardInputManager_ta *)self inputIndex];
  v7 = *MEMORY[0x29EDC7290];
  if (*(&self->super.super.super.super.isa + v7))
  {
    v8 = inputIndex == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || (v9 = inputIndex, v10 = *MEMORY[0x29EDC7288], [*(&self->super.super.super.super.isa + v10) length] < inputIndex))
  {
    v29.receiver = self;
    v29.super_class = TIKeyboardInputManager_ta;
    [(TIKeyboardInputManager_ta *)&v29 deleteFromInput:input];
    goto LABEL_11;
  }

  v26 = v9;
  v27 = a2;
  v28 = v9;
  v13 = [*(&self->super.super.super.super.isa + v10) substringToIndex:?];
  v14 = 0;
  v11 = 0;
  v15 = *(&self->super.super.super.super.isa + v7);
  do
  {
    TIInputManager::delete_from_input(v15);
    if (v14)
    {
      TIInputManager::delete_from_favonius_stroke_history(*(&self->super.super.super.super.isa + v7));
    }

    TIInputManager::input_string(v31, *(&self->super.super.super.super.isa + v7));
    v17 = KB::ns_string(v31, v16);
    KB::String::~String(v31);
    v18 = [v17 substringToIndex:(*(&self->super.super.super.super.isa + v7))[24]];
    v19 = [(TIKeyboardInputManager_ta *)self internalStringToExternal:v18];

    if (v19 && (v20 = [v13 length], v20 > objc_msgSend(v19, "length")) && objc_msgSend(v13, "hasPrefix:", v19))
    {
      v21 = [(TIKeyboardInputManager_ta *)self suffixOfDesiredString:v19 toAppendToInputString:*(&self->super.super.super.super.isa + v10) withInputIndex:v28 afterDeletionCount:input];

      v22 = [(TIKeyboardInputManager_ta *)self internalStringToExternal:v17];
      [*(&self->super.super.super.super.isa + v10) setString:v22];

      v23 = 1;
      v11 = v21;
    }

    else
    {
      v23 = 0;
    }

    v15 = *(&self->super.super.super.super.isa + v7);
    v24 = *(v15 + 24);
    if (v23)
    {
      break;
    }

    v14 = 1;
  }

  while (v24);
  if ((v23 & 1) == 0)
  {
    if (v24)
    {
      [(TIKeyboardInputManager_ta *)(&self->super.super.super.super.isa + v10) deleteFromInput:v27, self, v26];
    }

    v25 = [(TIKeyboardInputManager_ta *)self suffixOfDesiredString:&stru_2A252CFB8 toAppendToInputString:*(&self->super.super.super.super.isa + v10) withInputIndex:v28 afterDeletionCount:input];

    v11 = v25;
  }

LABEL_12:

  return v11;
}

- (void)deleteFromInput:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x29EDB9F28] currentHandler];
  [v8 handleFailureInMethod:a2 object:a3 file:@"TIKeyboardInputManager_ta.mm" lineNumber:286 description:{@"Wrong deletion for Tamil input %@ from index %d", *a1, a4}];
}

@end
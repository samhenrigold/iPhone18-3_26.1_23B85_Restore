@interface TIKeyboardInputManagerFavonius_ko
- (BOOL)acceptsCharacter:(unsigned int)character;
- (BOOL)canHandleKeyHitTest;
- (Hangul2SetAutomata)batchConverter;
- (TIKeyboardInputManagerFavonius_ko)initWithConfig:(id)config keyboardState:(id)state;
- (id)composeJamo:(id)jamo;
- (id)deleteFromInput:(unint64_t *)input;
- (void)acceptInput;
- (void)addInput:(id)input withContext:(id)context;
- (void)clearInput;
- (void)dealloc;
- (void)initImplementation;
- (void)setInput:(id)input;
- (void)setInputIndex:(unsigned int)index;
- (void)syncToLayoutState:(id)state;
- (void)textAccepted:(id)accepted fromPredictiveInputBar:(BOOL)bar withInput:(id)input;
@end

@implementation TIKeyboardInputManagerFavonius_ko

- (TIKeyboardInputManagerFavonius_ko)initWithConfig:(id)config keyboardState:(id)state
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerFavonius_ko;
  result = [(TIKeyboardInputManagerFavonius_ko *)&v5 initWithConfig:config keyboardState:state];
  if (result)
  {
    result->_deleteSyllable = 1;
  }

  return result;
}

- (void)initImplementation
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x29EDC7290]))
  {
    operator new();
  }

  return *(&self->super.super.super.isa + *MEMORY[0x29EDC7290]);
}

- (Hangul2SetAutomata)batchConverter
{
  result = self->_batchConverter;
  if (!result)
  {
    operator new();
  }

  return result;
}

- (void)syncToLayoutState:(id)state
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerFavonius_ko;
  stateCopy = state;
  [(TIKeyboardInputManagerFavonius_ko *)&v6 syncToLayoutState:stateCopy];
  softwareLayout = [stateCopy softwareLayout];

  LODWORD(stateCopy) = [softwareLayout isEqualToString:@"Korean10Key"];
  *([(TIKeyboardInputManagerFavonius_ko *)self batchConverter]+ 36) = stateCopy;
  TIInputManager_ko::set_is_10key(*(&self->super.super.super.isa + *MEMORY[0x29EDC7290]), stateCopy);
}

- (void)dealloc
{
  batchConverter = self->_batchConverter;
  if (batchConverter)
  {
    Hangul2SetAutomata::~Hangul2SetAutomata(batchConverter);
    MEMORY[0x29EDA3FF0]();
    self->_batchConverter = 0;
  }

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerFavonius_ko;
  [(TIKeyboardInputManagerFavonius_ko *)&v4 dealloc];
}

- (id)composeJamo:(id)jamo
{
  jamoCopy = jamo;
  v5 = _composeJamo(jamoCopy, [(TIKeyboardInputManagerFavonius_ko *)self batchConverter]);

  return v5;
}

- (BOOL)canHandleKeyHitTest
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerFavonius_ko;
  canHandleKeyHitTest = [(TIKeyboardInputManagerFavonius_ko *)&v5 canHandleKeyHitTest];
  if (canHandleKeyHitTest)
  {
    LOBYTE(canHandleKeyHitTest) = TIInputManager_ko::is_10key(*(&self->super.super.super.isa + *MEMORY[0x29EDC7290])) ^ 1;
  }

  return canHandleKeyHitTest;
}

- (void)clearInput
{
  self->_deleteSyllable = 1;
  v2.receiver = self;
  v2.super_class = TIKeyboardInputManagerFavonius_ko;
  [(TIKeyboardInputManagerFavonius_ko *)&v2 clearInput];
}

- (void)acceptInput
{
  self->_deleteSyllable = 1;
  v2.receiver = self;
  v2.super_class = TIKeyboardInputManagerFavonius_ko;
  [(TIKeyboardInputManagerFavonius_ko *)&v2 acceptInput];
}

- (void)setInput:(id)input
{
  inputCopy = input;
  [(TIKeyboardInputManagerFavonius_ko *)self clearInput];
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerFavonius_ko;
  [(TIKeyboardInputManagerFavonius_ko *)&v5 setInput:inputCopy];
}

- (void)setInputIndex:(unsigned int)index
{
  self->_deleteSyllable = 1;
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManagerFavonius_ko;
  [(TIKeyboardInputManagerFavonius_ko *)&v3 setInputIndex:*&index];
}

- (BOOL)acceptsCharacter:(unsigned int)character
{
  v3 = *&character;
  if ([TIKeyboardInputManagerFavonius_ko acceptsCharacter:]::onceToken != -1)
  {
    [TIKeyboardInputManagerFavonius_ko acceptsCharacter:];
  }

  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerFavonius_ko;
  return [(TIKeyboardInputManagerFavonius_ko *)&v6 acceptsCharacter:v3]|| MEMORY[0x29EDA4220]([TIKeyboardInputManagerFavonius_ko acceptsCharacter:]::hangul_set, v3) != 0;
}

- (void)textAccepted:(id)accepted fromPredictiveInputBar:(BOOL)bar withInput:(id)input
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerFavonius_ko;
  [(TIKeyboardInputManagerBase *)&v6 textAccepted:accepted fromPredictiveInputBar:bar withInput:input];
  [(TIKeyboardInputManagerFavonius_ko *)self clearInput];
}

- (void)addInput:(id)input withContext:(id)context
{
  v16[4] = *MEMORY[0x29EDCA608];
  inputCopy = input;
  contextCopy = context;
  string = [inputCopy string];
  self->_deleteSyllable = 0;
  [inputCopy setAutoshifted:0];
  [inputCopy setUppercase:0];
  isMultitap = [inputCopy isMultitap];
  if (![string isEqualToString:@"ㆍ"])
  {
    if (!isMultitap)
    {
      goto LABEL_10;
    }

    v14 = 1;
    goto LABEL_9;
  }

  TIInputManager::input_string(v16, *(&self->super.super.super.isa + *MEMORY[0x29EDC7290]));
  v11 = KB::ns_string(v16, v10);
  KB::String::~String(v16);
  v12 = [v11 hasSuffix:@"ㆍㆍ"];

  v13 = v12 | isMultitap;
  if (v12)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  if (v13)
  {
    do
    {
LABEL_9:
      [(TIKeyboardInputManagerFavonius_ko *)self deleteFromInputWithContext:contextCopy];
      --v14;
    }

    while (v14);
  }

LABEL_10:
  v15.receiver = self;
  v15.super_class = TIKeyboardInputManagerFavonius_ko;
  [(TIKeyboardInputManagerFavonius_ko *)&v15 addInput:inputCopy withContext:contextCopy];
}

- (id)deleteFromInput:(unint64_t *)input
{
  v16[4] = *MEMORY[0x29EDCA608];
  if (!input)
  {
    if (!self->_deleteSyllable)
    {
      goto LABEL_6;
    }

LABEL_5:
    v15.receiver = self;
    v15.super_class = TIKeyboardInputManagerFavonius_ko;
    v5 = [(TIKeyboardInputManagerFavonius_ko *)&v15 deleteFromInput:input];
    goto LABEL_12;
  }

  *input = 0;
  if (self->_deleteSyllable)
  {
    goto LABEL_5;
  }

  *input = 1;
LABEL_6:
  v6 = *MEMORY[0x29EDC7290];
  if (*(&self->super.super.super.isa + v6) && (v7 = [(TIKeyboardInputManagerFavonius_ko *)self inputIndex], TIInputManager::delete_from_input(*(&self->super.super.super.isa + v6)), v8 = *MEMORY[0x29EDC7288], *(&self->super.super.super.isa + v8)))
  {
    TIInputManager::input_string(v16, *(&self->super.super.super.isa + v6));
    v10 = KB::ns_string(v16, v9);
    KB::String::~String(v16);
    v11 = [(TIKeyboardInputManagerFavonius_ko *)self internalStringToExternal:v10];
    v12 = [v10 substringToIndex:{objc_msgSend(v10, "_indexFromStartingIndex:byIncrementingComposedCharacterSequenceCount:", 0, (*(&self->super.super.super.isa + v6))[24])}];
    v13 = [(TIKeyboardInputManagerFavonius_ko *)self internalStringToExternal:v12];

    v5 = [(TIKeyboardInputManagerFavonius_ko *)self suffixOfDesiredString:v13 toAppendToInputString:*(&self->super.super.super.isa + v8) withInputIndex:v7 afterDeletionCount:input];
    [*(&self->super.super.super.isa + v8) setString:v11];
    if (![v5 length])
    {

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_12:

  return v5;
}

@end
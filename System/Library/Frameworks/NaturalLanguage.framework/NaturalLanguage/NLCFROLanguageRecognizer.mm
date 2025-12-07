@interface NLCFROLanguageRecognizer
+ (id)dominantLanguageForString:(id)string;
- (NLCFROLanguageRecognizer)init;
- (id)dominantLanguage;
- (id)languageHypothesesWithMaximum:(unint64_t)maximum;
- (void)dealloc;
- (void)processString:(id)string;
- (void)reset;
@end

@implementation NLCFROLanguageRecognizer

- (NLCFROLanguageRecognizer)init
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = *MEMORY[0x1E6998248];
  [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v3 = NLTaggerCreate();
  if (v3)
  {
    v4 = v3;
    v9.receiver = self;
    v9.super_class = NLCFROLanguageRecognizer;
    v5 = [(NLLanguageRecognizer *)&v9 init];
    self = v5;
    if (v5)
    {
      v5->_tagger = v4;
      v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
      string = self->_string;
      self->_string = v6;
    }
  }

  return self;
}

- (void)dealloc
{
  tagger = self->_tagger;
  if (tagger)
  {
    CFRelease(tagger);
  }

  v4.receiver = self;
  v4.super_class = NLCFROLanguageRecognizer;
  [(NLLanguageRecognizer *)&v4 dealloc];
}

+ (id)dominantLanguageForString:(id)string
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = *MEMORY[0x1E6998248];
  v3 = MEMORY[0x1E695DEC8];
  stringCopy = string;
  [v3 arrayWithObjects:v8 count:1];
  v5 = NLTaggerCreate();
  NLTaggerSetString();

  v6 = NLTaggerCopyTagAtIndex();
  CFRelease(v5);

  return v6;
}

- (void)processString:(id)string
{
  stringCopy = string;
  if ([(NSMutableString *)self->_string length])
  {
    [(NSMutableString *)self->_string appendString:@" "];
  }

  [(NSMutableString *)self->_string appendString:stringCopy];
}

- (void)reset
{
  string = self->_string;
  v3 = [(NSMutableString *)string length];

  [(NSMutableString *)string replaceCharactersInRange:0 withString:v3, &stru_1F10C6540];
}

- (id)dominantLanguage
{
  NLTaggerSetString();
  v2 = NLTaggerCopyTagAtIndex();
  NLTaggerSetString();

  return v2;
}

- (id)languageHypothesesWithMaximum:(unint64_t)maximum
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (maximum)
  {
    dominantLanguage = [(NLCFROLanguageRecognizer *)self dominantLanguage];
    if (dominantLanguage)
    {
      [dictionary setObject:&unk_1F10D1490 forKey:dominantLanguage];
    }
  }

  return dictionary;
}

@end
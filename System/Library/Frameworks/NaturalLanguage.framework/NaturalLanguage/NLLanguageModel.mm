@interface NLLanguageModel
+ (id)languageModelWithOptions:(id)options error:(id *)error;
- (BOOL)getConditionalProbabilityForTokenID:(unsigned int)d context:(const unsigned int *)context length:(unint64_t)length probability:(double *)probability;
- (NLLanguageModel)initWithLocalization:(id)localization;
- (double)conditionalProbabilityForEntry:(id)entry context:(id)context;
- (double)conditionalProbabilityForWord:(id)word context:(id)context;
- (id)description;
- (id)languages;
- (id)locale;
- (id)stringForTokenID:(unsigned int)d;
- (unsigned)tokenIDForString:(id)string;
- (void)dealloc;
- (void)enumeratePredictionsForContext:(id)context maxEntriesPerPrediction:(unint64_t)prediction usingBlock:(id)block;
- (void)enumeratePredictionsForContext:(id)context maxWordsPerPrediction:(unint64_t)prediction usingBlock:(id)block;
@end

@implementation NLLanguageModel

- (NLLanguageModel)initWithLocalization:(id)localization
{
  localizationCopy = localization;
  v5 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:localizationCopy];
  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  v7 = [v6 initWithObjectsAndKeys:{v5, *MEMORY[0x1E69ABF90], 0}];
  v14.receiver = self;
  v14.super_class = NLLanguageModel;
  v8 = [(NLLanguageModel *)&v14 init];
  if (v8)
  {
    v9 = [localizationCopy copy];
    localization = v8->_localization;
    v8->_localization = v9;

    v8->_model = LMLanguageModelCreate();
    v11 = [[NLLexicon alloc] initWithLocalization:localizationCopy];
    lexicon = v8->_lexicon;
    v8->_lexicon = v11;
  }

  return v8;
}

+ (id)languageModelWithOptions:(id)options error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v6 = localizationForOptions(optionsCopy);
  v7 = granularityForOptions(optionsCopy);
  v8 = stringForKey(optionsCopy, @"Architecture", @"LSTM");
  v9 = BOOLForKey(optionsCopy, @"UseLMS", 0);
  if (v7 != 1)
  {
    if (v9)
    {
      v10 = NLLMSLanguageModel;
      goto LABEL_5;
    }

    if (!v8 || ![v8 isEqual:@"Transformer"])
    {
      v11 = [(NLLanguageModel *)[NLLMLanguageModel alloc] initWithLocalization:v6];
      goto LABEL_6;
    }
  }

  v10 = NLNLPLanguageModel;
LABEL_5:
  v11 = [[v10 alloc] initWithLocalization:v6 options:optionsCopy];
LABEL_6:
  v12 = v11;
  if (error && !v11)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load language model for %@", v6];
    v14 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v18[0] = v13;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *error = [v14 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:11 userInfo:v15];
  }

  return v12;
}

- (void)dealloc
{
  if (self->_model)
  {
    LMLanguageModelRelease();
  }

  v3.receiver = self;
  v3.super_class = NLLanguageModel;
  [(NLLanguageModel *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v7.receiver = self;
  v7.super_class = NLLanguageModel;
  v4 = [(NLLanguageModel *)&v7 description];
  v5 = objc_msgSend(v3, "stringWithFormat:", @"%@(%@"), v4, self->_localization;

  if (self->_model)
  {
    [v5 appendFormat:@":%p", self->_model];
  }

  [v5 appendString:@""]);

  return v5;
}

- (id)languages
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"und";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)locale
{
  v3 = objc_alloc(MEMORY[0x1E695DF58]);
  localization = [(NLLanguageModel *)self localization];
  v5 = [v3 initWithLocaleIdentifier:localization];

  return v5;
}

- (BOOL)getConditionalProbabilityForTokenID:(unsigned int)d context:(const unsigned int *)context length:(unint64_t)length probability:(double *)probability
{
  v10 = 0xC03E000000000000;
  if (self->_model)
  {
    LMLanguageModelConditionalProbability();
    v10 = v7;
    LODWORD(lexicon) = 1;
    if (!probability)
    {
      return lexicon;
    }
  }

  else
  {
    lexicon = self->_lexicon;
    if (!lexicon)
    {
      return lexicon;
    }

    LODWORD(lexicon) = [(NLLexicon *)lexicon getProbabilityForTokenID:*&d probability:&v10, length];
    if (!probability)
    {
      return lexicon;
    }
  }

  if (lexicon)
  {
    *probability = v10;
    LOBYTE(lexicon) = 1;
  }

  return lexicon;
}

- (double)conditionalProbabilityForEntry:(id)entry context:(id)context
{
  v12 = -30.0;
  contextCopy = context;
  entryCopy = entry;
  v8 = tokensForEntrySequence(contextCopy);
  tokenID = [entryCopy tokenID];

  v10 = [contextCopy count];
  [(NLLanguageModel *)self getConditionalProbabilityForTokenID:tokenID context:v8 length:v10 probability:&v12];
  if (v8)
  {
    free(v8);
  }

  return v12;
}

- (double)conditionalProbabilityForWord:(id)word context:(id)context
{
  contextCopy = context;
  v7 = [(NLLexicon *)self->_lexicon entryForString:word];
  tokenizer = self->_tokenizer;
  if (!tokenizer)
  {
    v9 = [[NLTokenizer alloc] initWithUnit:0];
    v10 = self->_tokenizer;
    self->_tokenizer = v9;

    tokenizer = self->_tokenizer;
  }

  v11 = entrySequenceForStringWithOptionalBOS(contextCopy, self->_lexicon, tokenizer, 1);
  if (v7)
  {
    [(NLLanguageModel *)self conditionalProbabilityForEntry:v7 context:v11];
    v13 = v12;
  }

  else
  {
    v13 = -30.0;
  }

  return v13;
}

- (void)enumeratePredictionsForContext:(id)context maxEntriesPerPrediction:(unint64_t)prediction usingBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  if (self->_model && self->_lexicon)
  {
    v9 = tokensForEntrySequence(contextCopy);
    [contextCopy count];
    v10 = blockCopy;
    LMLanguageModelEnumeratePredictionsWithBlock();
    if (v9)
    {
      free(v9);
    }
  }
}

void __85__NLLanguageModel_enumeratePredictionsForContext_maxEntriesPerPrediction_usingBlock___block_invoke(uint64_t a1, unsigned int *a2, uint64_t a3, double a4)
{
  for (i = [MEMORY[0x1E695DF70] array];
  {
    v9 = *a2++;
    v10 = [*(*(a1 + 32) + 24) entryForTokenID:v9];
    [i addObject:v10];
  }

  (*(*(a1 + 40) + 16))(a4);
}

- (void)enumeratePredictionsForContext:(id)context maxWordsPerPrediction:(unint64_t)prediction usingBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  if (self->_model)
  {
    lexicon = self->_lexicon;
    if (lexicon)
    {
      tokenizer = self->_tokenizer;
      if (!tokenizer)
      {
        v11 = [[NLTokenizer alloc] initWithUnit:0];
        v12 = self->_tokenizer;
        self->_tokenizer = v11;

        lexicon = self->_lexicon;
        tokenizer = self->_tokenizer;
      }

      v13 = entrySequenceForStringWithOptionalBOS(contextCopy, lexicon, tokenizer, 1);
      v14 = tokensForEntrySequence(v13);
      [v13 count];
      v15 = blockCopy;
      LMLanguageModelEnumeratePredictionsWithBlock();
      if (v14)
      {
        free(v14);
      }
    }
  }
}

void __83__NLLanguageModel_enumeratePredictionsForContext_maxWordsPerPrediction_usingBlock___block_invoke(uint64_t a1, unsigned int *a2, uint64_t a3, double a4)
{
  for (i = [MEMORY[0x1E696AD60] string];
  {
    v9 = *a2++;
    v10 = [*(*(a1 + 32) + 24) entryForTokenID:v9];
    v11 = [v10 string];

    if (v11)
    {
      if ([i length])
      {
        [i appendString:@" "];
      }

      [i appendString:v11];
    }
  }

  if ([i length])
  {
    (*(*(a1 + 40) + 16))(a4);
  }
}

- (unsigned)tokenIDForString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (self->_model && (v6 = [stringCopy UTF8String]) != 0)
  {
    strlen(v6);
    TokenIDForUTF8String = LMLanguageModelGetTokenIDForUTF8String();
  }

  else
  {
    TokenIDForUTF8String = 0;
  }

  return TokenIDForUTF8String;
}

- (id)stringForTokenID:(unsigned int)d
{
  model = self->_model;
  if (model)
  {
    model = LMLanguageModelCreateStringForTokenID();
    if (!model)
    {
      model = 0;
    }

    v3 = vars8;
  }

  return model;
}

@end
@interface NLEmbedding
+ (BOOL)_writeEmbeddingForDictionary:(id)dictionary language:(id)language revision:(unint64_t)revision toURL:(id)l orData:(id)data error:(id *)error;
+ (BOOL)assetsAvailableForEmbeddingType:(id)type language:(id)language;
+ (BOOL)writeEmbeddingMLModelForDictionary:(id)dictionary language:(id)language revision:(unint64_t)revision toURL:(id)l options:(id)options error:(id *)error;
+ (NLEmbedding)embeddingWithContentsOfURL:(NSURL *)url error:(NSError *)error;
+ (NLEmbedding)embeddingWithData:(id)data error:(id *)error;
+ (NLEmbedding)embeddingWithMLModel:(id)model error:(id *)error;
+ (NLEmbedding)sentenceEmbeddingForLanguage:(NLLanguage)language;
+ (NLEmbedding)sentenceEmbeddingForLanguage:(NLLanguage)language revision:(NSUInteger)revision;
+ (NLEmbedding)wordEmbeddingForLanguage:(NLLanguage)language;
+ (NLEmbedding)wordEmbeddingForLanguage:(NLLanguage)language revision:(NSUInteger)revision;
+ (NSIndexSet)supportedRevisionsForLanguage:(NLLanguage)language;
+ (NSIndexSet)supportedSentenceEmbeddingRevisionsForLanguage:(NLLanguage)language;
+ (NSUInteger)currentRevisionForLanguage:(NLLanguage)language;
+ (NSUInteger)currentSentenceEmbeddingRevisionForLanguage:(NLLanguage)language;
+ (id)_embeddingWithContentsOfURL:(id)l error:(id *)error;
+ (id)_embeddingWithData:(id)data error:(id *)error;
+ (id)contextualWordEmbeddingForLanguage:(id)language;
+ (id)contextualWordEmbeddingForLanguage:(id)language revision:(unint64_t)revision;
+ (id)embeddingDataForDictionary:(id)dictionary language:(id)language revision:(unint64_t)revision error:(id *)error;
+ (id)modelDescriptionForEmbedding:(id)embedding;
+ (id)supportedContextualWordEmbeddingRevisionsForLanguage:(id)language;
+ (id)supportedRevisionsForType:(id)type locale:(id)locale;
+ (id)transformerContextualTokenEmbeddingForLanguage:(id)language;
+ (unint64_t)currentContextualWordEmbeddingRevisionForLanguage:(id)language;
+ (unint64_t)currentRevisionForType:(id)type locale:(id)locale;
+ (void)requestAssetsForEmbeddingType:(id)type language:(id)language withCompletionHandler:(id)handler;
- (BOOL)getVector:(float *)vector forString:(NSString *)string;
- (NLEmbedding)initWithContentsOfURL:(id)l error:(id *)p_isa;
- (NLEmbedding)initWithData:(id)data error:(id *)error;
- (NLEmbedding)initWithMLModel:(id)model error:(id *)error;
- (NLEmbedding)initWithNLModel:(id)model error:(id *)p_isa;
- (NLEmbedding)initWithType:(id)type architecture:(id)architecture locale:(id)locale version:(id)version;
- (NLLanguage)language;
- (NSArray)neighborsForString:(NSString *)string maximumCount:(NSUInteger)maxCount maximumDistance:(NLDistance)maxDistance distanceType:(NLDistanceType)distanceType;
- (NSArray)neighborsForVector:(NSArray *)vector maximumCount:(NSUInteger)maxCount maximumDistance:(NLDistance)maxDistance distanceType:(NLDistanceType)distanceType;
- (NSArray)vectorForString:(NSString *)string;
- (NSUInteger)revision;
- (id)_initWithContentsOfURL:(id)l error:(id *)p_isa;
- (id)_initWithData:(id)data error:(id *)p_isa;
- (id)vectorsForTokenizedSentences:(id)sentences maxTokens:(unint64_t)tokens;
- (id)vectorsForTokenizedSentences:(id)sentences untokenizedSentences:(id)untokenizedSentences maxTokens:(unint64_t)tokens;
- (id)vectorsForUntokenizedSentences:(id)sentences maxTokens:(unint64_t)tokens;
- (void)_createEmbeddingRefWithContentsOfURL:(id)l;
- (void)_createEmbeddingRefWithData:(id)data;
- (void)dealloc;
- (void)enumerateNeighborsForString:(NSString *)string maximumCount:(NSUInteger)maxCount maximumDistance:(NLDistance)maxDistance distanceType:(NLDistanceType)distanceType usingBlock:(void *)block;
- (void)enumerateNeighborsForVector:(NSArray *)vector maximumCount:(NSUInteger)maxCount maximumDistance:(NLDistance)maxDistance distanceType:(NLDistanceType)distanceType usingBlock:(void *)block;
@end

@implementation NLEmbedding

- (void)dealloc
{
  embedding = self->_embedding;
  if (embedding)
  {
    CFRelease(embedding);
  }

  v4.receiver = self;
  v4.super_class = NLEmbedding;
  [(NLEmbedding *)&v4 dealloc];
}

- (NLEmbedding)initWithType:(id)type architecture:(id)architecture locale:(id)locale version:(id)version
{
  v23[2] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  architectureCopy = architecture;
  localeCopy = locale;
  versionCopy = version;
  v14 = MEMORY[0x1E695DF90];
  v15 = *MEMORY[0x1E69981F8];
  v22[0] = *MEMORY[0x1E6998208];
  v22[1] = v15;
  v23[0] = typeCopy;
  v23[1] = localeCopy;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v17 = [v14 dictionaryWithDictionary:v16];

  if (architectureCopy)
  {
    [v17 setObject:architectureCopy forKey:*MEMORY[0x1E69981E0]];
  }

  if (versionCopy)
  {
    [v17 setObject:versionCopy forKey:*MEMORY[0x1E6998230]];
  }

  selfCopy = NLStringEmbeddingCreateWithOptions();
  if (selfCopy)
  {
    if (NLStringEmbeddingGetDimension() < 1)
    {
      selfCopy = 0;
    }

    else
    {
      v21.receiver = self;
      v21.super_class = NLEmbedding;
      v19 = [(NLEmbedding *)&v21 init];
      if (v19)
      {
        v19->_embedding = selfCopy;
        v19->_usesUntokenizedSentences = 0;
      }

      self = v19;
      selfCopy = self;
    }
  }

  return selfCopy;
}

- (void)_createEmbeddingRefWithContentsOfURL:(id)l
{
  v12[2] = *MEMORY[0x1E69E9840];
  path = [l path];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v10 = 0;
  if ([defaultManager fileExistsAtPath:path isDirectory:&v10] && (v10 & 1) == 0)
  {
    v6 = *MEMORY[0x1E6998210];
    v7 = *MEMORY[0x1E6998200];
    v11[0] = *MEMORY[0x1E6998208];
    v11[1] = v7;
    v12[0] = v6;
    v12[1] = path;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v5 = NLStringEmbeddingCreateWithOptions();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_initWithContentsOfURL:(id)l error:(id *)p_isa
{
  selfCopy = self;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = [(NLEmbedding *)self _createEmbeddingRefWithContentsOfURL:l];
  if (v6 && (v7 = v6, NLStringEmbeddingGetDimension() >= 1))
  {
    v12.receiver = selfCopy;
    v12.super_class = NLEmbedding;
    v8 = [(NLEmbedding *)&v12 init];
    if (v8)
    {
      v8->_embedding = v7;
    }

    selfCopy = v8;
    p_isa = &selfCopy->super.isa;
  }

  else if (p_isa)
  {
    v9 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A578];
    v14[0] = @"Failed to load embedding file";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *p_isa = [v9 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v10];

    p_isa = 0;
  }

  return p_isa;
}

- (NLEmbedding)initWithContentsOfURL:(id)l error:(id *)p_isa
{
  v30[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  path = [lCopy path];
  pathExtension = [path pathExtension];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v24 = 0;
  if (([defaultManager fileExistsAtPath:path isDirectory:&v24] & 1) == 0)
  {
    if (!p_isa)
    {
      goto LABEL_9;
    }

    v12 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A578];
    v30[0] = @"Could not find embedding file";
    v13 = MEMORY[0x1E695DF20];
    v14 = v30;
    v15 = &v29;
    goto LABEL_7;
  }

  if (v24)
  {
    goto LABEL_3;
  }

  if ([pathExtension isEqualToString:@"mlmodel"])
  {
    if (!p_isa)
    {
      goto LABEL_9;
    }

    v12 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A578];
    v28 = @"Cannot load embedding from uncompiled mlmodel file";
    v13 = MEMORY[0x1E695DF20];
    v14 = &v28;
    v15 = &v27;
LABEL_7:
    v16 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
    *p_isa = [v12 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v16];

    goto LABEL_8;
  }

  if (v24)
  {
LABEL_3:
    v10 = [NLModel modelWithContentsOfURL:lCopy error:p_isa];
    if (v10)
    {
      v11 = v10;
      self = [(NLEmbedding *)self initWithNLModel:v10 error:p_isa];

      p_isa = &self->super.isa;
      goto LABEL_9;
    }

LABEL_8:
    p_isa = 0;
    goto LABEL_9;
  }

  v18 = [(NLEmbedding *)self _createEmbeddingRefWithContentsOfURL:lCopy];
  if (!v18 || (v19 = v18, NLStringEmbeddingGetDimension() < 1))
  {
    if (p_isa)
    {
      v21 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v26 = @"Failed to load embedding file";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      *p_isa = [v21 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v22];
    }

    goto LABEL_3;
  }

  v23.receiver = self;
  v23.super_class = NLEmbedding;
  v20 = [(NLEmbedding *)&v23 init];
  if (v20)
  {
    v20->_embedding = v19;
  }

  self = v20;
  p_isa = &self->super.isa;
LABEL_9:

  return p_isa;
}

- (void)_createEmbeddingRefWithData:(id)data
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69981F0];
  v9[0] = *MEMORY[0x1E6998208];
  v9[1] = v3;
  v10[0] = *MEMORY[0x1E6998210];
  v10[1] = data;
  v4 = MEMORY[0x1E695DF20];
  dataCopy = data;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = NLStringEmbeddingCreateWithOptions();
  return v7;
}

- (id)_initWithData:(id)data error:(id *)p_isa
{
  selfCopy = self;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = [(NLEmbedding *)self _createEmbeddingRefWithData:data];
  if (v6 && (v7 = v6, NLStringEmbeddingGetDimension() >= 1))
  {
    v12.receiver = selfCopy;
    v12.super_class = NLEmbedding;
    v8 = [(NLEmbedding *)&v12 init];
    if (v8)
    {
      v8->_embedding = v7;
    }

    selfCopy = v8;
    p_isa = &selfCopy->super.isa;
  }

  else if (p_isa)
  {
    v9 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A578];
    v14[0] = @"Failed to load embedding data";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *p_isa = [v9 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:5 userInfo:v10];

    p_isa = 0;
  }

  return p_isa;
}

- (NLEmbedding)initWithData:(id)data error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = [(NLEmbedding *)self _createEmbeddingRefWithData:dataCopy];
  if (v7 && (v8 = v7, NLStringEmbeddingGetDimension() >= 1))
  {
    v16.receiver = self;
    v16.super_class = NLEmbedding;
    v9 = [(NLEmbedding *)&v16 init];
    if (v9)
    {
      v9->_embedding = v8;
    }

    self = v9;
    selfCopy2 = self;
  }

  else
  {
    if (error)
    {
      v11 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A578];
      v18[0] = @"Failed to load embedding data";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      *error = [v11 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:5 userInfo:v12];
    }

    v13 = [NLModel modelWithData:dataCopy error:error];
    if (v13)
    {
      v14 = v13;
      self = [(NLEmbedding *)self initWithNLModel:v13 error:error];

      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  return selfCopy2;
}

- (NLEmbedding)initWithNLModel:(id)model error:(id *)p_isa
{
  v16[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  embedding = [modelCopy embedding];
  _embeddingRef = [embedding _embeddingRef];

  if (_embeddingRef)
  {
    v14.receiver = self;
    v14.super_class = NLEmbedding;
    v10 = [(NLEmbedding *)&v14 init];
    if (v10)
    {
      v10->_embedding = CFRetain(_embeddingRef);
      objc_storeStrong(&v10->_nlModel, model);
    }

    self = v10;
    p_isa = &self->super.isa;
  }

  else if (p_isa)
  {
    v11 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v16[0] = @"Failed to load embedding file";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *p_isa = [v11 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:6 userInfo:v12];

    p_isa = 0;
  }

  return p_isa;
}

- (NLEmbedding)initWithMLModel:(id)model error:(id *)error
{
  v6 = [NLModel modelWithMLModel:model error:?];
  if (v6)
  {
    self = [(NLEmbedding *)self initWithNLModel:v6 error:error];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v8 = selfCopy;

  return v8;
}

+ (NLEmbedding)wordEmbeddingForLanguage:(NLLanguage)language
{
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v3)
  {
    v4 = [NLEmbedding alloc];
    v5 = [(NLEmbedding *)v4 initWithType:*MEMORY[0x1E6998210] locale:v3 version:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)contextualWordEmbeddingForLanguage:(id)language
{
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v3)
  {
    v4 = [NLEmbedding alloc];
    v5 = [(NLEmbedding *)v4 initWithType:*MEMORY[0x1E6998218] architecture:*MEMORY[0x1E69981E8] locale:v3 version:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (NLEmbedding)sentenceEmbeddingForLanguage:(NLLanguage)language
{
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v3)
  {
    v4 = [NLEmbedding alloc];
    v5 = [(NLEmbedding *)v4 initWithType:*MEMORY[0x1E6998220] locale:v3 version:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (NLEmbedding)wordEmbeddingForLanguage:(NLLanguage)language revision:(NSUInteger)revision
{
  v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v5)
  {
    v6 = [NLEmbedding alloc];
    v7 = *MEMORY[0x1E6998210];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:revision];
    v9 = [(NLEmbedding *)v6 initWithType:v7 locale:v5 version:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)contextualWordEmbeddingForLanguage:(id)language revision:(unint64_t)revision
{
  v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v5)
  {
    v6 = [NLEmbedding alloc];
    v7 = *MEMORY[0x1E6998218];
    v8 = *MEMORY[0x1E69981E8];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:revision];
    v10 = [(NLEmbedding *)v6 initWithType:v7 architecture:v8 locale:v5 version:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)transformerContextualTokenEmbeddingForLanguage:(id)language
{
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v3)
  {
    v4 = [NLEmbedding alloc];
    v5 = *MEMORY[0x1E6998218];
    v6 = *MEMORY[0x1E69981C8];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:2];
    v8 = [(NLEmbedding *)v4 initWithType:v5 architecture:v6 locale:v3 version:v7];

    if (v8)
    {
      [(NLEmbedding *)v8 setUsesUntokenizedSentences:1];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (NLEmbedding)sentenceEmbeddingForLanguage:(NLLanguage)language revision:(NSUInteger)revision
{
  v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v5)
  {
    v6 = [NLEmbedding alloc];
    v7 = *MEMORY[0x1E6998220];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:revision];
    v9 = [(NLEmbedding *)v6 initWithType:v7 locale:v5 version:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)enumerateNeighborsForString:(NSString *)string maximumCount:(NSUInteger)maxCount maximumDistance:(NLDistance)maxDistance distanceType:(NLDistanceType)distanceType usingBlock:(void *)block
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = block;
  v8 = NLStringEmbeddingCopyNeighborsWithDistances();
  allKeys = [v8 allKeys];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __96__NLEmbedding_enumerateNeighborsForString_maximumCount_maximumDistance_distanceType_usingBlock___block_invoke;
  v26[3] = &unk_1E7628EA8;
  v10 = v8;
  v27 = v10;
  v11 = [allKeys sortedArrayUsingComparator:v26];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v23 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v22 + 1) + 8 * v16);
      v18 = [v10 objectForKey:v17];
      [v18 doubleValue];
      v20 = v19;

      v21 = 0;
      v7[2](v7, v17, &v21, v20);
      if (v21)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

uint64_t __96__NLEmbedding_enumerateNeighborsForString_maximumCount_maximumDistance_distanceType_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [v7 compare:v8];
  return v9;
}

- (NSArray)neighborsForString:(NSString *)string maximumCount:(NSUInteger)maxCount maximumDistance:(NLDistance)maxDistance distanceType:(NLDistanceType)distanceType
{
  v10 = string;
  array = [MEMORY[0x1E695DF70] array];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__NLEmbedding_neighborsForString_maximumCount_maximumDistance_distanceType___block_invoke;
  v16[3] = &unk_1E762A1A0;
  v12 = array;
  v17 = v12;
  [(NLEmbedding *)self enumerateNeighborsForString:v10 maximumCount:maxCount maximumDistance:distanceType distanceType:v16 usingBlock:maxDistance];
  if ([(NSArray *)v12 count]|| [(NLEmbedding *)self containsString:v10])
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (void)enumerateNeighborsForVector:(NSArray *)vector maximumCount:(NSUInteger)maxCount maximumDistance:(NLDistance)maxDistance distanceType:(NLDistanceType)distanceType usingBlock:(void *)block
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = block;
  v8 = NLStringEmbeddingCopyNeighborsForVectorWithDistances();
  allKeys = [v8 allKeys];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __96__NLEmbedding_enumerateNeighborsForVector_maximumCount_maximumDistance_distanceType_usingBlock___block_invoke;
  v26[3] = &unk_1E7628EA8;
  v10 = v8;
  v27 = v10;
  v11 = [allKeys sortedArrayUsingComparator:v26];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v23 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v22 + 1) + 8 * v16);
      v18 = [v10 objectForKey:v17];
      [v18 doubleValue];
      v20 = v19;

      v21 = 0;
      v7[2](v7, v17, &v21, v20);
      if (v21)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

uint64_t __96__NLEmbedding_enumerateNeighborsForVector_maximumCount_maximumDistance_distanceType_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [v7 compare:v8];
  return v9;
}

- (NSArray)neighborsForVector:(NSArray *)vector maximumCount:(NSUInteger)maxCount maximumDistance:(NLDistance)maxDistance distanceType:(NLDistanceType)distanceType
{
  v10 = MEMORY[0x1E695DF70];
  v11 = vector;
  array = [v10 array];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__NLEmbedding_neighborsForVector_maximumCount_maximumDistance_distanceType___block_invoke;
  v15[3] = &unk_1E762A1A0;
  v13 = array;
  v16 = v13;
  [(NLEmbedding *)self enumerateNeighborsForVector:v11 maximumCount:maxCount maximumDistance:distanceType distanceType:v15 usingBlock:maxDistance];

  return v13;
}

- (NSArray)vectorForString:(NSString *)string
{
  v3 = NLStringEmbeddingCopyVector();

  return v3;
}

- (BOOL)getVector:(float *)vector forString:(NSString *)string
{
  v6 = NLStringEmbeddingCopyData();
  v7 = v6;
  if (v6)
  {
    bytes = [v6 bytes];
    if ([(NLEmbedding *)self dimension])
    {
      v9 = 0;
      do
      {
        vector[v9] = *(bytes + 4 * v9);
        ++v9;
      }

      while (v9 < [(NLEmbedding *)self dimension]);
    }
  }

  return v7 != 0;
}

- (id)vectorsForTokenizedSentences:(id)sentences maxTokens:(unint64_t)tokens
{
  sentencesCopy = sentences;
  v6 = [sentencesCopy count];
  Dimension = NLStringEmbeddingGetDimension();
  dimension = [MEMORY[0x1E695DF88] dataWithLength:4 * tokens * v6 * Dimension];
  dimension2 = [MEMORY[0x1E695DF88] dataWithLength:4 * Dimension];
  [dimension mutableBytes];
  [dimension2 mutableBytes];
  LODWORD(tokens) = NLStringEmbeddingFillWordVectors();

  if (tokens)
  {
    v10 = dimension;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

- (id)vectorsForUntokenizedSentences:(id)sentences maxTokens:(unint64_t)tokens
{
  sentencesCopy = sentences;
  v6 = [sentencesCopy count];
  Dimension = NLStringEmbeddingGetDimension();
  dimension = [MEMORY[0x1E695DF88] dataWithLength:4 * tokens * v6 * Dimension];
  dimension2 = [MEMORY[0x1E695DF88] dataWithLength:4 * Dimension];
  [dimension mutableBytes];
  [dimension2 mutableBytes];
  LODWORD(tokens) = NLStringEmbeddingFillTokenVectorsWithShape();

  if (tokens)
  {
    v10 = dimension;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

- (id)vectorsForTokenizedSentences:(id)sentences untokenizedSentences:(id)untokenizedSentences maxTokens:(unint64_t)tokens
{
  sentencesCopy = sentences;
  untokenizedSentencesCopy = untokenizedSentences;
  if ([(NLEmbedding *)self usesUntokenizedSentences])
  {
    [(NLEmbedding *)self vectorsForUntokenizedSentences:untokenizedSentencesCopy maxTokens:tokens];
  }

  else
  {
    [(NLEmbedding *)self vectorsForTokenizedSentences:sentencesCopy maxTokens:tokens];
  }
  v10 = ;

  return v10;
}

- (NLLanguage)language
{
  v2 = NLStringEmbeddingCopyModelLocale();
  localeIdentifier = [v2 localeIdentifier];

  return localeIdentifier;
}

- (NSUInteger)revision
{
  valuePtr = 0;
  result = NLStringEmbeddingCopyVersion();
  if (result)
  {
    v3 = result;
    CFNumberGetValue(result, kCFNumberNSIntegerType, &valuePtr);
    CFRelease(v3);
    return valuePtr;
  }

  return result;
}

+ (id)supportedRevisionsForType:(id)type locale:(id)locale
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = NLStringEmbeddingCopySupportedVersions();
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [indexSet addIndex:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "unsignedIntegerValue", v12)}];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    CFRelease(v6);
  }

  return indexSet;
}

+ (NSIndexSet)supportedRevisionsForLanguage:(NLLanguage)language
{
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v4)
  {
    v5 = [self supportedRevisionsForType:*MEMORY[0x1E6998210] locale:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)supportedContextualWordEmbeddingRevisionsForLanguage:(id)language
{
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v4)
  {
    v5 = [self supportedRevisionsForType:*MEMORY[0x1E6998218] locale:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (NSIndexSet)supportedSentenceEmbeddingRevisionsForLanguage:(NLLanguage)language
{
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v4)
  {
    v5 = [self supportedRevisionsForType:*MEMORY[0x1E6998220] locale:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (unint64_t)currentRevisionForType:(id)type locale:(id)locale
{
  result = NLStringEmbeddingCopyCurrentVersion();
  if (result)
  {
    v5 = result;
    unsignedIntegerValue = [result unsignedIntegerValue];
    CFRelease(v5);
    return unsignedIntegerValue;
  }

  return result;
}

+ (NSUInteger)currentRevisionForLanguage:(NLLanguage)language
{
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v4)
  {
    v5 = [self currentRevisionForType:*MEMORY[0x1E6998210] locale:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (unint64_t)currentContextualWordEmbeddingRevisionForLanguage:(id)language
{
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v4)
  {
    v5 = [self currentRevisionForType:*MEMORY[0x1E6998218] locale:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (NSUInteger)currentSentenceEmbeddingRevisionForLanguage:(NLLanguage)language
{
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:language];
  if (v4)
  {
    v5 = [self currentRevisionForType:*MEMORY[0x1E6998220] locale:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_writeEmbeddingForDictionary:(id)dictionary language:(id)language revision:(unint64_t)revision toURL:(id)l orData:(id)data error:(id *)error
{
  v66 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  languageCopy = language;
  lCopy = l;
  memset(v55, 0, sizeof(v55));
  errorCopy = error;
  dataCopy = data;
  if ([dictionaryCopy countByEnumeratingWithState:v55 objects:v65 count:16])
  {
    v15 = [dictionaryCopy objectForKey:**(&v55[0] + 1)];
    v16 = [v15 count];
  }

  else
  {
    v16 = 0;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v17 = dictionaryCopy;
  v18 = [v17 countByEnumeratingWithState:&v51 objects:v64 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v52;
LABEL_6:
    v21 = 0;
    while (1)
    {
      if (*v52 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v51 + 1) + 8 * v21);
      v23 = [v17 objectForKey:v22];
      v24 = [v23 count];

      if (v16 != v24)
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [v17 countByEnumeratingWithState:&v51 objects:v64 count:16];
        if (v19)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }

    NSLog(&cfstr_EmbeddingDicti.isa, v22, v24, v16);

    if (errorCopy)
    {
      v28 = MEMORY[0x1E696ABC0];
      v58 = *MEMORY[0x1E696A578];
      v59 = @"Embedding dictionary has mismatched dimensions";
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      [v28 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:4 userInfo:v29];
      *errorCopy = v30 = 0;
      v26 = languageCopy;
      v31 = dataCopy;
      v32 = lCopy;
      goto LABEL_40;
    }

    v30 = 0;
    v26 = languageCopy;
    v31 = dataCopy;
    v32 = lCopy;
  }

  else
  {
LABEL_12:

    if (v16)
    {
      if ([v17 count] >= 0x7A121)
      {
        v25 = 1;
      }

      else
      {
        v25 = 3;
      }

      v26 = languageCopy;
      if (languageCopy)
      {
        v27 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:languageCopy];
      }

      else
      {
        v27 = 0;
      }

      v32 = lCopy;
      v34 = 10;
      v50 = v27;
      do
      {
        if (!(v16 % v34))
        {
          break;
        }

        --v34;
      }

      while (v34);
      if (v34 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = v34;
      }

      v36 = MEMORY[0x1E695DF90];
      v62[0] = *MEMORY[0x1E6998230];
      v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:revision];
      v63[0] = v37;
      v62[1] = *MEMORY[0x1E6998240];
      v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v35];
      v63[1] = v38;
      v62[2] = *MEMORY[0x1E6998238];
      v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];
      v63[2] = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:3];
      v29 = [v36 dictionaryWithDictionary:v40];

      v41 = v50;
      if (v50)
      {
        [v29 setObject:v50 forKey:*MEMORY[0x1E69981F8]];
      }

      v31 = dataCopy;
      if (v32)
      {
        path = [v32 path];
        [v29 setObject:path forKey:*MEMORY[0x1E6998200]];
      }

      if (dataCopy)
      {
        [v29 setObject:dataCopy forKey:*MEMORY[0x1E69981F0]];
      }

      v43 = NLStringEmbeddingSaveCompressedModel();
      v30 = v43;
      if (errorCopy && (v43 & 1) == 0)
      {
        v44 = MEMORY[0x1E696ABC0];
        v60 = *MEMORY[0x1E696A578];
        v61 = @"Failed to save embedding file";
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v41 = v50;
        *errorCopy = [v44 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:7 userInfo:v45];
      }
    }

    else
    {
      v26 = languageCopy;
      v31 = dataCopy;
      if (!errorCopy)
      {
        v30 = 0;
        v32 = lCopy;
        goto LABEL_41;
      }

      v33 = MEMORY[0x1E696ABC0];
      v56 = *MEMORY[0x1E696A578];
      v57 = @"Embedding dictionary is missing data";
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      [v33 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:4 userInfo:v29];
      *errorCopy = v30 = 0;
      v32 = lCopy;
    }

LABEL_40:
  }

LABEL_41:

  return v30;
}

+ (id)embeddingDataForDictionary:(id)dictionary language:(id)language revision:(unint64_t)revision error:(id *)error
{
  v10 = MEMORY[0x1E695DF88];
  languageCopy = language;
  dictionaryCopy = dictionary;
  data = [v10 data];
  LODWORD(error) = [self _writeEmbeddingForDictionary:dictionaryCopy language:languageCopy revision:revision toURL:0 orData:data error:error];

  if (error)
  {
    v14 = data;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

+ (id)modelDescriptionForEmbedding:(id)embedding
{
  v3 = MEMORY[0x1E696AEC0];
  embeddingCopy = embedding;
  revision = [embeddingCopy revision];
  dimension = [embeddingCopy dimension];
  vocabularySize = [embeddingCopy vocabularySize];

  return [v3 stringWithFormat:@"This model is an embedding (version %llu) with dimension %llu and vocabulary size %llu", revision, dimension, vocabularySize];
}

+ (BOOL)writeEmbeddingMLModelForDictionary:(id)dictionary language:(id)language revision:(unint64_t)revision toURL:(id)l options:(id)options error:(id *)error
{
  languageCopy = language;
  lCopy = l;
  optionsCopy = options;
  v17 = [self embeddingDataForDictionary:dictionary language:languageCopy revision:revision error:error];
  if (v17)
  {
    v18 = [NLEmbedding embeddingWithData:v17 error:error];
    if (v18)
    {
      v35 = optionsCopy;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{languageCopy, @"Language", 0}];
      v20 = [NLModelConfiguration defaultModelConfigurationForType:0 options:v19 error:error];

      v21 = [[NLModelImplE alloc] initWithModelData:v17 configuration:v20 labelMap:0 vocabularyMap:0 documentFrequencyMap:0 customEmbeddingData:0 trainingInfo:0 error:0];
      v34 = v20;
      v22 = [[NLModel alloc] initWithConfiguration:v20 modelImpl:v21];
      if (v22)
      {
        v32 = v21;
        v33 = lCopy;
        v23 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v35];
        v24 = *MEMORY[0x1E695FDB8];
        v25 = [v23 objectForKey:*MEMORY[0x1E695FDB8]];

        if (!v25)
        {
          v26 = [self modelDescriptionForEmbedding:v18];
          [v23 setObject:v26 forKey:v24];
        }

        v27 = *MEMORY[0x1E695FDD0];
        v28 = [v23 objectForKey:*MEMORY[0x1E695FDD0]];

        if (!v28)
        {
          revision = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", revision];
          [v23 setObject:revision forKey:v27];
        }

        lCopy = v33;
        v30 = [(NLModel *)v22 writeMLModelToURL:v33 options:v23 error:error];

        optionsCopy = v35;
        v21 = v32;
      }

      else
      {
        optionsCopy = v35;
        if (error)
        {
          [MEMORY[0x1E696ABC0] errorWithDomain:@"NLNaturalLanguageErrorDomain" code:6 userInfo:0];
          *error = v30 = 0;
        }

        else
        {
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = 0;
    }
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"NLNaturalLanguageErrorDomain" code:6 userInfo:0];
    *error = v30 = 0;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

+ (NLEmbedding)embeddingWithContentsOfURL:(NSURL *)url error:(NSError *)error
{
  v5 = url;
  v6 = [[NLEmbedding alloc] initWithContentsOfURL:v5 error:error];

  return v6;
}

+ (NLEmbedding)embeddingWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [[NLEmbedding alloc] initWithData:dataCopy error:error];

  return v6;
}

+ (NLEmbedding)embeddingWithMLModel:(id)model error:(id *)error
{
  modelCopy = model;
  v6 = [[NLEmbedding alloc] initWithMLModel:modelCopy error:error];

  return v6;
}

+ (id)_embeddingWithContentsOfURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = [[NLEmbedding alloc] _initWithContentsOfURL:lCopy error:error];

  return v6;
}

+ (id)_embeddingWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [[NLEmbedding alloc] _initWithData:dataCopy error:error];

  return v6;
}

+ (BOOL)assetsAvailableForEmbeddingType:(id)type language:(id)language
{
  typeCopy = type;
  languageCopy = language;
  if (!languageCopy)
  {
    goto LABEL_10;
  }

  if (![typeCopy isEqualToString:@"Static"])
  {
    if ([typeCopy isEqualToString:@"Dynamic"])
    {
      v7 = [NLEmbedding contextualWordEmbeddingForLanguage:languageCopy];
      goto LABEL_6;
    }

    if ([typeCopy isEqualToString:@"Contextual"])
    {
      v8 = [NLContextualEmbedding contextualEmbeddingWithLanguage:languageCopy];
      hasAvailableAssets = [v8 hasAvailableAssets];
      goto LABEL_7;
    }

LABEL_10:
    hasAvailableAssets = 0;
    goto LABEL_11;
  }

  v7 = [NLEmbedding wordEmbeddingForLanguage:languageCopy];
LABEL_6:
  v8 = v7;
  hasAvailableAssets = v7 != 0;
LABEL_7:

LABEL_11:
  return hasAvailableAssets;
}

+ (void)requestAssetsForEmbeddingType:(id)type language:(id)language withCompletionHandler:(id)handler
{
  typeCopy = type;
  languageCopy = language;
  handlerCopy = handler;
  if (languageCopy)
  {
    if ([typeCopy isEqualToString:@"Static"])
    {
      v10 = @"WordEmbedding";
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __76__NLEmbedding_requestAssetsForEmbeddingType_language_withCompletionHandler___block_invoke;
      v18[3] = &unk_1E7629E18;
      v11 = &v19;
      v19 = handlerCopy;
      v12 = v18;
    }

    else
    {
      if (![typeCopy isEqualToString:@"Dynamic"])
      {
        if (![typeCopy isEqualToString:@"Contextual"])
        {
          goto LABEL_8;
        }

        v13 = [NLContextualEmbedding contextualEmbeddingWithLanguage:languageCopy];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __76__NLEmbedding_requestAssetsForEmbeddingType_language_withCompletionHandler___block_invoke_3;
        v14[3] = &unk_1E7629E18;
        v11 = &v15;
        v15 = handlerCopy;
        [v13 requestEmbeddingAssetsWithCompletionHandler:v14];

        goto LABEL_7;
      }

      v10 = @"ContextualEmbedding";
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __76__NLEmbedding_requestAssetsForEmbeddingType_language_withCompletionHandler___block_invoke_2;
      v16[3] = &unk_1E7629E18;
      v11 = &v17;
      v17 = handlerCopy;
      v12 = v16;
    }

    [NLTagger requestAssetsForLanguage:languageCopy tagScheme:v10 completionHandler:v12];
LABEL_7:
  }

LABEL_8:
}

@end
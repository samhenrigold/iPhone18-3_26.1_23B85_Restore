@interface AFSpeechPhrase
- (AFSpeechPhrase)initWithCoder:(id)coder;
- (AFSpeechPhrase)initWithDictionary:(id)dictionary;
- (AFSpeechPhrase)initWithInterpretations:(id)interpretations isLowConfidence:(BOOL)confidence;
- (BOOL)isEqual:(id)equal;
- (id)allInterpretationStringsAndScores;
- (id)bestInterpretation;
- (id)description;
- (id)dictionaryRepresentation;
- (id)firstInterpretation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSpeechPhrase

- (id)allInterpretationStringsAndScores
{
  v32 = *MEMORY[0x1E69E9840];
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(AFSpeechPhrase *)self interpretations];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v3 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v24 = *v26;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v25 + 1) + 8 * i);
        confidenceScoreAvg = [v6 confidenceScoreAvg];
        confidenceScoreMax = [v6 confidenceScoreMax];
        confidenceScoreMin = [v6 confidenceScoreMin];
        confidenceScore = [v6 confidenceScore];
        tokens = [v6 tokens];
        v12 = [tokens count];

        text = [v6 text];

        if (text)
        {
          v29[0] = @"avg";
          v14 = [MEMORY[0x1E696AD98] numberWithInteger:confidenceScoreAvg];
          v30[0] = v14;
          v29[1] = @"max";
          v15 = [MEMORY[0x1E696AD98] numberWithInteger:confidenceScoreMax];
          v30[1] = v15;
          v29[2] = @"min";
          v16 = [MEMORY[0x1E696AD98] numberWithInteger:confidenceScoreMin];
          v30[2] = v16;
          v29[3] = @"sum";
          v17 = [MEMORY[0x1E696AD98] numberWithInteger:confidenceScore];
          v30[3] = v17;
          v29[4] = @"count";
          v18 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
          v30[4] = v18;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:5];
          text2 = [v6 text];
          [v23 setObject:v19 forKey:text2];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v4);
  }

  return v23;
}

- (id)bestInterpretation
{
  v18 = *MEMORY[0x1E69E9840];
  interpretations = [(AFSpeechPhrase *)self interpretations];
  if ([interpretations count] == 1)
  {
    v3 = [interpretations objectAtIndex:0];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = interpretations;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v3 = 0;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (v3)
          {
            confidenceScore = [*(*(&v13 + 1) + 8 * i) confidenceScore];
            if (confidenceScore <= [v3 confidenceScore])
            {
              continue;
            }
          }

          v11 = v9;

          v3 = v11;
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)firstInterpretation
{
  interpretations = [(AFSpeechPhrase *)self interpretations];
  firstObject = [interpretations firstObject];

  return firstObject;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_interpretations;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:dictionaryRepresentation];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  v17[1] = @"isLowConfidence";
  v18[0] = v3;
  v17[0] = @"interpretations";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLowConfidence];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  return v11;
}

- (AFSpeechPhrase)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"interpretations"];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = v5;
  if (v8 && (NSClassFromString(v7), (objc_opt_isKindOfClass() & 1) != 0))
  {

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__8765;
    v22 = __Block_byref_object_dispose__8766;
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __37__AFSpeechPhrase_initWithDictionary___block_invoke;
    v17[3] = &unk_1E73436F0;
    v17[4] = &v24;
    v17[5] = &v18;
    [v8 enumerateObjectsUsingBlock:v17];
    if ((v25[3] & 1) != 0 || ![v19[5] count])
    {
      selfCopy = 0;
    }

    else
    {
      v9 = [dictionaryCopy objectForKey:@"isLowConfidence"];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = v9;
      v13 = v11;
      v14 = v13;
      if (v12 && (NSClassFromString(v13), (objc_opt_isKindOfClass() & 1) != 0))
      {

        self = -[AFSpeechPhrase initWithInterpretations:isLowConfidence:](self, "initWithInterpretations:isLowConfidence:", v19[5], [v12 BOOLValue]);
        selfCopy = self;
      }

      else
      {

        selfCopy = 0;
      }
    }

    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(&v24, 8);
  }

  else
  {

    selfCopy = 0;
  }

  return selfCopy;
}

void __37__AFSpeechPhrase_initWithDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = v6;
  v12 = v9;
  if (v9 && (NSClassFromString(v8), isKindOfClass = objc_opt_isKindOfClass(), v9 = v12, (isKindOfClass & 1) != 0))
  {
  }

  else
  {

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  v11 = [[AFSpeechInterpretation alloc] initWithDictionary:v12];
  if (!v11)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v11];
}

- (AFSpeechPhrase)initWithInterpretations:(id)interpretations isLowConfidence:(BOOL)confidence
{
  interpretationsCopy = interpretations;
  v11.receiver = self;
  v11.super_class = AFSpeechPhrase;
  v7 = [(AFSpeechPhrase *)&v11 init];
  if (v7)
  {
    v8 = [interpretationsCopy copy];
    interpretations = v7->_interpretations;
    v7->_interpretations = v8;

    v7->_isLowConfidence = confidence;
  }

  return v7;
}

- (AFSpeechPhrase)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = AFSpeechPhrase;
  v5 = [(AFSpeechPhrase *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"interpretations"];
    interpretations = v5->_interpretations;
    v5->_interpretations = v9;

    v5->_isLowConfidence = [coderCopy decodeBoolForKey:@"isLowConfidence"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  interpretations = self->_interpretations;
  coderCopy = coder;
  [coderCopy encodeObject:interpretations forKey:@"interpretations"];
  [coderCopy encodeBool:self->_isLowConfidence forKey:@"isLowConfidence"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = AFSpeechPhrase;
  v4 = [(AFSpeechPhrase *)&v9 description];
  interpretations = self->_interpretations;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLowConfidence];
  v7 = [v3 stringWithFormat:@"%@, interpretations=%@, isLowConfidence=%@", v4, interpretations, v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && ((v5 = *(equalCopy + 2), v5 == self->_interpretations) || [(NSArray *)v5 isEqualToArray:?]) && equalCopy[8] == self->_isLowConfidence;

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_interpretations hash];
  firstObject = [(NSArray *)self->_interpretations firstObject];
  v5 = [firstObject hash];

  return v5 ^ v3;
}

@end
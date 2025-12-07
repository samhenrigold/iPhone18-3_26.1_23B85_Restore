@interface NLContextualEmbeddingResult
- (NLContextualEmbeddingResult)initWithString:(id)string tokenDictionaries:(id)dictionaries data:(id)data language:(id)language tokenVectorDimension:(unint64_t)dimension;
- (NSArray)tokenVectorAtIndex:(NSUInteger)characterIndex tokenRange:(NSRangePointer)tokenRange;
- (NSUInteger)sequenceLength;
- (id)_tokenVectorAtIndex:(unint64_t)index;
- (void)enumerateTokenVectorsInRange:(NSRange)range usingBlock:(void *)block;
@end

@implementation NLContextualEmbeddingResult

- (NLContextualEmbeddingResult)initWithString:(id)string tokenDictionaries:(id)dictionaries data:(id)data language:(id)language tokenVectorDimension:(unint64_t)dimension
{
  stringCopy = string;
  dictionariesCopy = dictionaries;
  dataCopy = data;
  languageCopy = language;
  v26.receiver = self;
  v26.super_class = NLContextualEmbeddingResult;
  v16 = [(NLContextualEmbeddingResult *)&v26 init];
  if (v16)
  {
    v17 = [stringCopy copy];
    string = v16->_string;
    v16->_string = v17;

    v19 = [dictionariesCopy copy];
    tokenDictionaries = v16->_tokenDictionaries;
    v16->_tokenDictionaries = v19;

    v21 = [dataCopy copy];
    data = v16->_data;
    v16->_data = v21;

    v23 = [languageCopy copy];
    language = v16->_language;
    v16->_language = v23;

    v16->_tokenVectorDimension = dimension;
  }

  return v16;
}

- (NSUInteger)sequenceLength
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_tokenDictionaries;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) objectForKey:{@"SubtokenRanges", v11}];
        v9 = v8;
        if (v8)
        {
          v5 += [v8 count];
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_tokenVectorAtIndex:(unint64_t)index
{
  array = [MEMORY[0x1E695DF70] array];
  bytes = [(NSData *)self->_data bytes];
  tokenVectorDimension = self->_tokenVectorDimension;
  if (tokenVectorDimension)
  {
    v9 = bytes;
    v10 = 0;
    v11 = 4 * index;
    do
    {
      LODWORD(v7) = *&v9[4 * v10 + v11 * tokenVectorDimension];
      v12 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
      [array addObject:v12];

      ++v10;
      tokenVectorDimension = self->_tokenVectorDimension;
    }

    while (v10 < tokenVectorDimension);
  }

  return array;
}

- (NSArray)tokenVectorAtIndex:(NSUInteger)characterIndex tokenRange:(NSRangePointer)tokenRange
{
  v40 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self->_tokenDictionaries;
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  v28 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v28)
  {
    v22 = tokenRange;
    v6 = 0;
    v25 = 0;
    v29 = 0;
    v27 = *v35;
    while (2)
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(&v34 + 1) + 8 * i) objectForKey:{@"SubtokenRanges", v22}];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v31;
LABEL_8:
          v13 = 0;
          v14 = v6;
          v6 += v11;
          while (1)
          {
            if (*v31 != v12)
            {
              objc_enumerationMutation(v9);
            }

            rangeValue = [*(*(&v30 + 1) + 8 * v13) rangeValue];
            if (rangeValue <= characterIndex && rangeValue + v16 > characterIndex)
            {
              break;
            }

            ++v14;
            if (v11 == ++v13)
            {
              v11 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
              if (v11)
              {
                goto LABEL_8;
              }

              goto LABEL_17;
            }
          }

          v18 = rangeValue;
          v19 = v16;
          v20 = [(NLContextualEmbeddingResult *)self _tokenVectorAtIndex:v14];

          if (v18 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v29 = v20;
            v25 = v19;
            v6 = v14;
            continue;
          }

          v23 = v18;
          goto LABEL_24;
        }

LABEL_17:
      }

      v28 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }

    v23 = 0x7FFFFFFFFFFFFFFFLL;
    v19 = v25;
    v20 = v29;
LABEL_24:
    tokenRange = v22;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  if (tokenRange)
  {
    tokenRange->location = v23;
    tokenRange->length = v19;
  }

  return v20;
}

- (void)enumerateTokenVectorsInRange:(NSRange)range usingBlock:(void *)block
{
  length = range.length;
  location = range.location;
  v42 = *MEMORY[0x1E69E9840];
  v28 = block;
  v39 = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_tokenDictionaries;
  v25 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v25)
  {
    v5 = 0;
    v24 = *v36;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v36 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v35 + 1) + 8 * v6);
      v8 = [v7 objectForKey:@"TokenRange"];
      rangeValue = [v8 rangeValue];
      v11 = v10;

      v12 = [v7 objectForKey:@"SubtokenRanges"];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v29 = v12;
      v13 = [v29 countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v13)
      {
        v14 = v13;
        v26 = v6;
        v15 = *v32;
LABEL_8:
        v16 = 0;
        while (1)
        {
          v17 = v5;
          if (*v32 != v15)
          {
            objc_enumerationMutation(v29);
          }

          rangeValue2 = [*(*(&v31 + 1) + 8 * v16) rangeValue];
          v20 = v19;
          if (rangesMatch(location, length, rangeValue, v11) && rangesMatch(location, length, rangeValue2, v20))
          {
            v21 = [(NLContextualEmbeddingResult *)self _tokenVectorAtIndex:v5];
            v28[2](v28, v21, rangeValue2, v20, &v39);
          }

          if (v39)
          {
            break;
          }

          ++v16;
          v5 = v17 + 1;
          if (v14 == v16)
          {
            v14 = [v29 countByEnumeratingWithState:&v31 objects:v40 count:16];
            if (v14)
            {
              goto LABEL_8;
            }

            break;
          }
        }

        v5 = v17 + 1;
        v6 = v26;
      }

      v22 = v39;
      if (v22)
      {
        break;
      }

      if (++v6 == v25)
      {
        v25 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v41 count:16];
        if (v25)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end
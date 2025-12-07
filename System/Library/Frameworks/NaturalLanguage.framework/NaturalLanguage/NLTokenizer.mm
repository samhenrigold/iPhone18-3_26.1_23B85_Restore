@interface NLTokenizer
- (NLTokenizer)initWithUnit:(NLTokenUnit)unit;
- (NSArray)tokensForRange:(NSRange)range;
- (NSRange)tokenRangeAtIndex:(NSUInteger)characterIndex;
- (NSRange)tokenRangeForRange:(NSRange)range;
- (const)_tokenAtIndex:(unint64_t)index;
- (id)_wordCharacterSet;
- (void)dealloc;
- (void)enumerateTokensInRange:(NSRange)range usingBlock:(void *)block;
- (void)setLanguage:(NLLanguage)language;
- (void)setString:(NSString *)string;
@end

@implementation NLTokenizer

- (id)_wordCharacterSet
{
  if (_wordCharacterSet_onceToken != -1)
  {
    [NLTokenizer _wordCharacterSet];
  }

  v3 = _wordCharacterSet_wordCharacterSet;

  return v3;
}

- (void)dealloc
{
  if (self->_tokenizer)
  {
    NLTokenizerRelease();
  }

  v3.receiver = self;
  v3.super_class = NLTokenizer;
  [(NLTokenizer *)&v3 dealloc];
}

- (NLTokenizer)initWithUnit:(NLTokenUnit)unit
{
  selfCopy = self;
  if (unit == NLTokenUnitDocument && (v11.receiver = self, v11.super_class = NLTokenizer, v5 = [(NLTokenizer *)&v11 init], (selfCopy = v5) != 0))
  {
    v5->_unit = 3;
  }

  else
  {
    v6 = NLTokenizerCreate();
    if (v6)
    {
      v7 = v6;
      v10.receiver = selfCopy;
      v10.super_class = NLTokenizer;
      v8 = [(NLTokenizer *)&v10 init];
      selfCopy = v8;
      if (v8)
      {
        v8->_unit = unit;
        v8->_tokenizer = v7;
      }
    }
  }

  return selfCopy;
}

- (void)setString:(NSString *)string
{
  v5 = string;
  objc_storeStrong(&self->_string, string);
  if (self->_tokenizer)
  {
    [(NSString *)v5 length];
    NLTokenizerSetString();
  }
}

- (void)setLanguage:(NLLanguage)language
{
  v4 = language;
  localeIdentifier = v4;
  if (self->_tokenizer)
  {
    v5 = CFLocaleCreate(0, v4);
    v4 = localeIdentifier;
    if (v5)
    {
      v6 = v5;
      NLTokenizerSetLocale();
      CFRelease(v6);
      v4 = localeIdentifier;
    }
  }

  v7 = [(__CFString *)v4 copy];
  v8 = self->_language;
  self->_language = v7;
}

void __32__NLTokenizer__wordCharacterSet__block_invoke()
{
  v4 = [MEMORY[0x1E696AD48] whitespaceAndNewlineCharacterSet];
  v0 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  [v4 formUnionWithCharacterSet:v0];
  v1 = ;
  [v4 formUnionWithCharacterSet:v1];

  [v4 invert];
  v2 = [v4 copy];
  v3 = _wordCharacterSet_wordCharacterSet;
  _wordCharacterSet_wordCharacterSet = v2;
}

- (const)_tokenAtIndex:(unint64_t)index
{
  if ([(NSString *)self->_string length]<= index || !self->_tokenizer)
  {
    return 0;
  }

  v4 = NLTokenizerGoToTokenAtIndex();
  if (v4)
  {
    if ([(NLTokenizer *)self unit]== NLTokenUnitWord)
    {
      var0 = v4->var0.var0;
      var1 = v4->var0.var1;
      string = self->_string;
      _wordCharacterSet = [(NLTokenizer *)self _wordCharacterSet];
      [(NSString *)string rangeOfCharacterFromSet:_wordCharacterSet options:0 range:var0, var1];
      v10 = v9;

      if (!v10)
      {
        return 0;
      }
    }
  }

  return v4;
}

- (NSRange)tokenRangeAtIndex:(NSUInteger)characterIndex
{
  v5 = [(NSString *)self->_string length];
  if (v5 <= characterIndex)
  {
    goto LABEL_7;
  }

  var1 = v5;
  if ([(NLTokenizer *)self unit]!= NLTokenUnitDocument)
  {
    if (self->_tokenizer)
    {
      v8 = [(NLTokenizer *)self _tokenAtIndex:characterIndex];
      if (v8)
      {
        v9 = v8;
        var0 = v8->var0.var0;
        var1 = v9->var0.var1;
        goto LABEL_8;
      }
    }

LABEL_7:
    var1 = 0;
    var0 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_8;
  }

  var0 = 0;
LABEL_8:
  v10 = var1;
  result.length = v10;
  result.location = var0;
  return result;
}

- (NSRange)tokenRangeForRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [(NSString *)self->_string length];
  if (v6 <= location)
  {
    goto LABEL_16;
  }

  var1 = v6;
  if (location + length <= v6)
  {
    v8 = length;
  }

  else
  {
    v8 = v6 - location;
  }

  if ([(NLTokenizer *)self unit]== NLTokenUnitDocument)
  {
    var0 = 0;
    goto LABEL_17;
  }

  if (!self->_tokenizer)
  {
LABEL_16:
    var1 = 0;
    var0 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_17;
  }

  v10 = [(NLTokenizer *)self _tokenAtIndex:location];
  if (!v10)
  {
    if ([(NLTokenizer *)self unit]== NLTokenUnitWord)
    {
      v18 = v8 + location;
      v19 = location;
      while (v19 < v18)
      {
        v20 = [(NSString *)self->_string rangeOfComposedCharacterSequenceAtIndex:v19];
        v22 = v20 + v21;
        if (v20 + v21 <= v19 || v22 >= v18)
        {
          break;
        }

        v10 = [(NLTokenizer *)self _tokenAtIndex:v22];
        v19 = v22;
        if (v10)
        {
          goto LABEL_9;
        }
      }
    }

    goto LABEL_16;
  }

LABEL_9:
  var0 = v10->var0.var0;
  var1 = v10->var0.var1;
  if (v8)
  {
    v11 = var1 + var0;
    v12 = v8 + location;
    if (var1 + var0 < v8 + location)
    {
      v13 = v12 - 1;
      v14 = [(NLTokenizer *)self _tokenAtIndex:v12 - 1];
      if (v14)
      {
LABEL_12:
        v15 = v14->var0.var1 + v14->var0.var0;
        if (v15 > v11)
        {
          var1 = v15 - var0;
        }
      }

      else if ([(NLTokenizer *)self unit]== NLTokenUnitWord)
      {
        while (v13 > v11)
        {
          v24 = [(NSString *)self->_string rangeOfComposedCharacterSequenceAtIndex:v13 - 1];
          if (v24 >= v13 || v24 < v11)
          {
            break;
          }

          v26 = v24;
          v14 = [(NLTokenizer *)self _tokenAtIndex:v24];
          v13 = v26;
          if (v14)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

LABEL_17:
  v16 = var0;
  v17 = var1;
  result.length = v17;
  result.location = v16;
  return result;
}

- (NSArray)tokensForRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  array = [MEMORY[0x1E695DF70] array];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __30__NLTokenizer_tokensForRange___block_invoke;
  v9[3] = &unk_1E7629E80;
  v7 = array;
  v10 = v7;
  [(NLTokenizer *)self enumerateTokensInRange:location usingBlock:length, v9];

  return v7;
}

void __30__NLTokenizer_tokensForRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696B098] valueWithRange:{a2, a3}];
  [v3 addObject:v4];
}

- (void)enumerateTokensInRange:(NSRange)range usingBlock:(void *)block
{
  length = range.length;
  location = range.location;
  v7 = block;
  v8 = [(NSString *)self->_string length];
  v39 = 0;
  unit = [(NLTokenizer *)self unit];
  _wordCharacterSet = [(NLTokenizer *)self _wordCharacterSet];
  if (enumerateTokensInRange_usingBlock__onceToken != -1)
  {
    [NLTokenizer enumerateTokensInRange:usingBlock:];
  }

  v11 = location + length;
  if (location + length <= v8)
  {
    if ([(NLTokenizer *)self unit]== NLTokenUnitDocument)
    {
      (*(v7 + 2))(v7, 0, v8, 0, &v39);
      goto LABEL_34;
    }

    if (!self->_tokenizer)
    {
      goto LABEL_34;
    }

    v12 = NLTokenizerGoToTokenAtIndex();
    if (v12)
    {
LABEL_8:
      NextToken = v12;
      v36 = unit;
      v37 = _wordCharacterSet;
      v38 = location;
      while (1)
      {
        v14 = NextToken[1];
        if (v14 < 1)
        {
          goto LABEL_34;
        }

        v15 = *NextToken;
        v16 = *NextToken + v14;
        if (*NextToken >= v11 || v16 < location)
        {
          goto LABEL_34;
        }

        if (unit)
        {
          break;
        }

        [(NSString *)self->_string rangeOfCharacterFromSet:_wordCharacterSet options:0 range:*NextToken, NextToken[1]];
        if (v19)
        {
          v18 = (NextToken[2] >> 3) & 1;
          if (v15 < v16)
          {
            v20 = v15;
            do
            {
              v21 = [(NSString *)self->_string rangeOfCharacterFromSet:enumerateTokensInRange_usingBlock__nonAlphanumericCharacterSet options:0 range:v20, v16 - v20];
              if (!v22)
              {
                break;
              }

              v23 = v21;
              v24 = v22;
              v25 = [(NSString *)self->_string rangeOfComposedCharacterSequenceAtIndex:v21];
              if (v25 + v26 <= v16)
              {
                v24 = v26;
                v23 = v25;
              }

              [(NSString *)self->_string rangeOfCharacterFromSet:enumerateTokensInRange_usingBlock__nonWordInternalCharacterSet options:0 range:v23, v24];
              if (v27)
              {
                v28 = [(NSString *)self->_string substringWithRange:v23, v24];
                v29 = CEMStringContainsEmoji();
                v30 = 4;
                if (!v29)
                {
                  v30 = 2;
                }

                v18 |= v30;
              }

              v20 = v23 + v24;
            }

            while (v23 + v24 < v16);
          }

          goto LABEL_17;
        }

LABEL_18:
        if ((v39 & 1) == 0)
        {
          NextToken = NLTokenizerGetNextToken();
          if (NextToken)
          {
            continue;
          }
        }

        goto LABEL_34;
      }

      v18 = 0;
LABEL_17:
      (*(v7 + 2))(v7, v15, v14, v18, &v39);
      _wordCharacterSet = v37;
      location = v38;
      unit = v36;
      goto LABEL_18;
    }

    if ([(NLTokenizer *)self unit]== NLTokenUnitWord)
    {
      v31 = location;
      while (v31 < v11)
      {
        v32 = [(NSString *)self->_string rangeOfComposedCharacterSequenceAtIndex:v31];
        v34 = v32 + v33;
        if (v32 + v33 <= v31 || v34 >= v11)
        {
          break;
        }

        v12 = NLTokenizerGoToTokenAtIndex();
        v31 = v34;
        if (v12)
        {
          goto LABEL_8;
        }
      }
    }
  }

LABEL_34:
}

void __49__NLTokenizer_enumerateTokensInRange_usingBlock___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v1 = [v0 invertedSet];
  v2 = enumerateTokensInRange_usingBlock__nonAlphanumericCharacterSet;
  enumerateTokensInRange_usingBlock__nonAlphanumericCharacterSet = v1;

  v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"':_-’"];
  v3 = [v5 invertedSet];
  v4 = enumerateTokensInRange_usingBlock__nonWordInternalCharacterSet;
  enumerateTokensInRange_usingBlock__nonWordInternalCharacterSet = v3;
}

@end
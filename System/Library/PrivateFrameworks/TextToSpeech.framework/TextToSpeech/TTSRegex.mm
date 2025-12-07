@interface TTSRegex
- (TTSRegex)initWithCStringPattern:(const char *)pattern options:(unint64_t)options;
- (TTSRegex)initWithPattern:(id)pattern options:(unint64_t)options;
- (TTSRegex)initWithPerlPattern:(id)pattern;
- (id)_matchFromOvector:(unint64_t *)ovector matches:(int)matches string:(const char *)string length:(unint64_t)length;
- (id)matchesInCString:(const char *)string length:(unint64_t)length;
- (void)dealloc;
- (void)enumerateMatchesInCString:(const char *)string ranges:(id)ranges usingBlock:(id)block;
- (void)enumerateMatchesInCString:(const char *)string startOffset:(unint64_t)offset length:(unint64_t)length usingBlock:(id)block;
@end

@implementation TTSRegex

- (void)dealloc
{
  if ([(TTSRegex *)self compiledPCRERegex])
  {
    pcre2_code_free_8([(TTSRegex *)self compiledPCRERegex]);
  }

  v3.receiver = self;
  v3.super_class = TTSRegex;
  [(TTSRegex *)&v3 dealloc];
}

- (TTSRegex)initWithPerlPattern:(id)pattern
{
  patternCopy = pattern;
  v5 = [patternCopy hasSuffix:@"/i"];
  v6 = [patternCopy hasSuffix:@"/i"];
  if (v5)
  {
    v7 = [patternCopy substringToIndex:{objc_msgSend(patternCopy, "length") - 1}];

    patternCopy = v7;
  }

  if (v6)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [patternCopy substringWithRange:{1, objc_msgSend(patternCopy, "length") - 2}];

  v10 = [(TTSRegex *)self initWithPattern:v9 options:v8];
  return v10;
}

- (TTSRegex)initWithPattern:(id)pattern options:(unint64_t)options
{
  patternCopy = pattern;
  [pattern cStringUsingEncoding:4];

  return MEMORY[0x1EEE66B58](self, sel_initWithCStringPattern_options_);
}

- (TTSRegex)initWithCStringPattern:(const char *)pattern options:(unint64_t)options
{
  v15 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = TTSRegex;
  v5 = [(TTSRegex *)&v13 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v12 = 0;
  v11 = 0;
  v6 = pcre2_compile_8(pattern);
  if (v6)
  {
    [(TTSRegex *)v5 setCompiledPCRERegex:v6];
LABEL_4:
    v7 = v5;
    goto LABEL_8;
  }

  pcre2_get_error_message_8(v12, v14, 512);
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
  v9 = AXTTSLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1A95783A4(&v11, v8, v9);
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)enumerateMatchesInCString:(const char *)string startOffset:(unint64_t)offset length:(unint64_t)length usingBlock:(id)block
{
  blockCopy = block;
  compiledPCRERegex = [(TTSRegex *)self compiledPCRERegex];
  v11 = pcre2_match_data_create_from_pattern_8(compiledPCRERegex, 0);
  matched = pcre2_match_8([(TTSRegex *)self compiledPCRERegex]);
  if (matched == -1)
  {
    pcre2_match_data_free_8(v11);
    goto LABEL_34;
  }

  v13 = matched;
  ovector_pointer_8 = pcre2_get_ovector_pointer_8(v11);
  v15 = [(TTSRegex *)self _matchFromOvector:ovector_pointer_8 matches:v13 string:string length:length];
  if (v15)
  {
    blockCopy[2](blockCopy, v15);
  }

  v28 = v15;
  HIDWORD(v32) = 0;
  pcre2_pattern_info_8(compiledPCRERegex, 0, (&v32 + 4));
  v31 = HIDWORD(v32);
  LODWORD(v32) = 0;
  pcre2_pattern_info_8(compiledPCRERegex, 0x14u, &v32);
  v29 = v32 - 3;
  v30 = length - 1;
  while (1)
  {
    while (1)
    {
      v16 = ovector_pointer_8[1];
      if (*ovector_pointer_8 != v16)
      {
        break;
      }

      if (v16 == length)
      {
        goto LABEL_33;
      }

      v17 = pcre2_match_8(compiledPCRERegex);
      if (v17 != -1)
      {
        goto LABEL_15;
      }

      v18 = v16 + 1;
      ovector_pointer_8[1] = v16 + 1;
      if (v29 <= 2 && v16 < v30 && string[v16] == 13 && string[v18] == 10)
      {
        ovector_pointer_8[1] = v16 + 2;
      }

      else if ((v31 & 0x80000) != 0 && v18 < length)
      {
        v23 = &string[v16 + 1];
        v24 = v30 - v16;
        v25 = v16 + 2;
        do
        {
          v26 = *v23++;
          if ((v26 & 0xC0) != 0x80)
          {
            break;
          }

          ovector_pointer_8[1] = v25++;
          --v24;
        }

        while (v24);
      }
    }

    startchar_8 = pcre2_get_startchar_8(v11);
    if (v16 <= startchar_8)
    {
      if (startchar_8 >= length)
      {
        goto LABEL_33;
      }

      v22 = startchar_8 + 1;
      if ((v31 & 0x80000) != 0 && v22 < length)
      {
        do
        {
          if ((string[v22] & 0xC0) != 0x80)
          {
            break;
          }

          ++v22;
        }

        while (length != v22);
      }
    }

    v17 = pcre2_match_8(compiledPCRERegex);
    if (v17 == -1)
    {
      goto LABEL_33;
    }

LABEL_15:
    v20 = v17;
    if ((v17 & 0x80000000) != 0)
    {
      break;
    }

    v21 = [(TTSRegex *)self _matchFromOvector:ovector_pointer_8 matches:v17 string:string length:length, v28];
    blockCopy[2](blockCopy, v21);
  }

  v27 = AXTTSLogCommon();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    sub_1A9578430(v20, v27);
  }

LABEL_33:
  pcre2_match_data_free_8(v11);

LABEL_34:
}

- (void)enumerateMatchesInCString:(const char *)string ranges:(id)ranges usingBlock:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  blockCopy = block;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [rangesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(rangesCopy);
        }

        rangeValue = [*(*(&v16 + 1) + 8 * v13) rangeValue];
        [(TTSRegex *)self enumerateMatchesInCString:string startOffset:rangeValue length:v15 + rangeValue usingBlock:blockCopy];
        ++v13;
      }

      while (v11 != v13);
      v11 = [rangesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

- (id)matchesInCString:(const char *)string length:(unint64_t)length
{
  array = [MEMORY[0x1E695DF70] array];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A93464CC;
  v10[3] = &unk_1E7880328;
  v8 = array;
  v11 = v8;
  [(TTSRegex *)self enumerateMatchesInCString:string length:length usingBlock:v10];

  return v8;
}

- (id)_matchFromOvector:(unint64_t *)ovector matches:(int)matches string:(const char *)string length:(unint64_t)length
{
  array = [MEMORY[0x1E695DF70] array];
  if (matches < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = ovector + 1;
    matchesCopy = matches;
    do
    {
      v12 = *(v10 - 1);
      if (v12 == -1 && v9 == 0)
      {
        v9 = 0;
      }

      else
      {
        v14 = *v10 - v12;
        if (v12 == -1)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = *(v10 - 1);
        }

        if (v9)
        {
          v16 = objc_alloc_init(TTSRegexCaptureGroup);
          [(TTSRegexCaptureGroup *)v16 setUtf8Range:v15, v14];
          [array addObject:v16];
        }

        else
        {
          v9 = objc_alloc_init(TTSRegexMatch);
          [(TTSRegexMatch *)v9 setUtf8Range:v15, v14];
        }
      }

      v10 += 2;
      --matchesCopy;
    }

    while (matchesCopy);
  }

  [(TTSRegexMatch *)v9 setCaptureGroups:array];

  return v9;
}

@end
@interface VCSParsedLine
+ (int64_t)tokenizeKeyword:(const char *)keyword withType:(unint64_t *)type;
+ (int64_t)tokenizeNSStringKeyword:(id)keyword withType:(unint64_t *)type;
- (VCSParsedLine)init;
- (id)convertedContent;
- (id)description;
- (id)loadFromCString:(char *)string withParseState:(id)state;
- (void)reset;
- (void)setContentFromCString:(char *)string;
- (void)setKeywordFromCString:(char *)string;
@end

@implementation VCSParsedLine

+ (int64_t)tokenizeKeyword:(const char *)keyword withType:(unint64_t *)type
{
  v5 = bsearch(keyword, &vcsTokensList, 0x29uLL, 0x18uLL, vcsTokenCompare);
  if (v5)
  {
    if (type)
    {
      *type = v5[2];
    }

    return *v5;
  }

  else
  {
    if (type)
    {
      *type = 0;
    }

    return 50;
  }
}

+ (int64_t)tokenizeNSStringKeyword:(id)keyword withType:(unint64_t *)type
{
  keywordCopy = keyword;
  uTF8String = [keyword UTF8String];

  return [self tokenizeKeyword:uTF8String withType:type];
}

- (VCSParsedLine)init
{
  v10.receiver = self;
  v10.super_class = VCSParsedLine;
  v2 = [(VCSParsedLine *)&v10 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 40) = xmmword_2754F54C0;
    v4 = *(v2 + 1);
    *(v2 + 1) = 0;

    v5 = objc_alloc_init(MEMORY[0x277CBEB28]);
    content = v3->_content;
    v3->_content = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    params = v3->_params;
    v3->_params = v7;

    v3->_usePalmD4Hooks = 0;
  }

  return v3;
}

- (void)reset
{
  *&self->_type = xmmword_2754F54C0;
  keyword = self->_keyword;
  self->_keyword = 0;

  [(NSMutableData *)self->_content setLength:0];
  params = self->_params;

  [(NSMutableDictionary *)params removeAllObjects];
}

- (id)loadFromCString:(char *)string withParseState:(id)state
{
  stateCopy = state;
  v47 = 0;
  v7 = strlen(string);
  switch(v7)
  {
    case 0uLL:
      goto LABEL_66;
    case 2uLL:
      v10 = *string;
      if (v10 == 10 || v10 == 13)
      {
        goto LABEL_66;
      }

      break;
    case 1uLL:
      selfCopy = 0;
      v9 = *string;
      if (v9 == 10 || v9 == 13)
      {
        goto LABEL_67;
      }

      break;
  }

  v12 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
  reset = [(VCSParsedLine *)self reset];
  for (i = 0; ; ++i)
  {
    v15 = string[i];
    if (v15 != 45)
    {
      if (!string[i])
      {
        i = 0;
        goto LABEL_18;
      }

      if ((v15 & 0xFFFFFFDF) - 65 >= 0x1A)
      {
        break;
      }
    }
  }

  v16 = stateCopy;
  memcpy(v12, string, i);
  *(v12 + i) = 0;
  [(VCSParsedLine *)self setKeywordFromCString:v12];
  v17 = [VCSParsedLine tokenizeKeyword:v12 withType:&v47];
  [(VCSParsedLine *)self setType:v47];
  v18 = v17;
  stateCopy = v16;
  reset = [(VCSParsedLine *)self setTokenID:v18];
LABEL_18:
  for (LODWORD(v19) = i; ; LODWORD(v19) = v19 + 1)
  {
    v20 = string[v19];
    if (v20 != 32)
    {
      break;
    }
  }

  if ((v20 - 58) >= 2)
  {
    v37 = VCSLogHandle(reset);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [VCSParsedLine loadFromCString:stateCopy withParseState:?];
    }

    goto LABEL_65;
  }

  if (v47 == 1)
  {
    if (v20 == 58)
    {
      v39 = v19 + 1;
      v46 = 0;
      do
      {
        v40 = v39;
        v41 = string[v39++];
      }

      while (v41 == 32);
      v42 = v40;
      v43 = [VCSParsedLine tokenizeKeyword:&string[v40] withType:&v46];
      if (v46 != 2)
      {
        v44 = VCSLogHandle(v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [VCSParsedLine loadFromCString:stateCopy withParseState:?];
        }
      }

      v38 = &string[v42];
      goto LABEL_57;
    }

    v37 = VCSLogHandle(reset);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [VCSParsedLine loadFromCString:stateCopy withParseState:?];
    }

    goto LABEL_65;
  }

  if (v47 != 3)
  {
    v37 = VCSLogHandle(reset);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [VCSParsedLine loadFromCString:v12 withParseState:stateCopy];
    }

LABEL_65:

    free(v12);
LABEL_66:
    selfCopy = 0;
    goto LABEL_67;
  }

  while (v20 == 59)
  {
    v21 = 0;
    v22 = v19 + 1;
    for (j = v19 + 1; ; ++j)
    {
      v24 = string[j];
      if (v24 != 45)
      {
        if (!string[j])
        {
          v25 = &string[j];
          goto LABEL_32;
        }

        if ((v24 & 0xFFFFFFDF) - 65 >= 0x1A)
        {
          break;
        }
      }

      ++v21;
    }

    v25 = &string[j];
    memcpy(v12, &string[v22], v21);
    *(v12 + v21) = 0;
    i = j;
LABEL_32:
    for (LODWORD(v19) = i; ; LODWORD(v19) = v19 + 1)
    {
      v26 = string[v19];
      if (v26 != 32)
      {
        break;
      }
    }

    if (v26 == 61)
    {
      v27 = strlen(v25);
      v28 = malloc_type_malloc(v27 + 1, 0x100004077774924uLL);
      LODWORD(v19) = v19 + 1;
      v29 = string[v19];
      v30 = v28;
      do
      {
        if (v29 == 92)
        {
          if (string[(v19 + 1)] == 59)
          {
            LODWORD(v19) = v19 + 1;
          }

          LOBYTE(v29) = string[v19];
        }

        *v30++ = v29;
        v19 = (v19 + 1);
        v29 = string[v19];
      }

      while ((v29 & 0xFE) != 0x3A);
      *v30 = 0;
      params = self->_params;
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:v28];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
      [(NSMutableDictionary *)params setObject:v32 forKey:v33];

      free(v28);
      v34 = v19;
    }

    else
    {
      v34 = v19;
      v35 = self->_params;
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
      [(NSMutableDictionary *)v35 setObject:&stru_28841D818 forKey:v36];
    }

    v20 = string[v34];
  }

  if (v20 != 58)
  {
    goto LABEL_58;
  }

  v38 = &string[(v19 + 1)];
LABEL_57:
  [(VCSParsedLine *)self setContentFromCString:v38];
LABEL_58:
  if (self)
  {
    -[VCSParsedLine setUsePalmD4Hooks:](self, "setUsePalmD4Hooks:", [stateCopy palmImport]);
  }

  free(v12);
  selfCopy = self;
LABEL_67:

  return selfCopy;
}

- (void)setKeywordFromCString:(char *)string
{
  self->_keyword = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];

  MEMORY[0x2821F96F8]();
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = VCSParsedLine;
  v4 = [(VCSParsedLine *)&v10 description];
  keyword = self->_keyword;
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = [v6 initWithData:self->_content encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v8 = [v3 stringWithFormat:@"%@ %@, %@", v4, keyword, v7];

  return v8;
}

- (void)setContentFromCString:(char *)string
{
  [(NSMutableData *)self->_content setLength:0];
  v5 = strlen(string) + 1;
  content = self->_content;

  [(NSMutableData *)content appendBytes:string length:v5];
}

- (id)convertedContent
{
  v3 = [(NSMutableDictionary *)self->_params objectForKeyedSubscript:@"ENCODING"];
  params = self->_params;
  if (v3)
  {
    [(NSMutableDictionary *)params removeObjectForKey:@"ENCODING"];
  }

  else
  {
    v5 = [(NSMutableDictionary *)params objectForKeyedSubscript:@"QUOTED-PRINTABLE"];
    if (!v5)
    {
      v10 = self->_content;
      goto LABEL_11;
    }

    v6 = v5;
    v3 = @"QUOTED-PRINTABLE";
    [(NSMutableDictionary *)self->_params removeObjectForKey:@"QUOTED-PRINTABLE"];
  }

  if ([(__CFString *)v3 isEqualToString:@"QUOTED-PRINTABLE"])
  {
    vCSDecodeBase64 = [(NSMutableData *)self->_content VCSDecodeQuotedPrintableForText:0];
  }

  else
  {
    v8 = [(__CFString *)v3 isEqualToString:@"BASE64"];
    content = self->_content;
    if (v8)
    {
      vCSDecodeBase64 = [(NSMutableData *)content VCSDecodeBase64];
    }

    else
    {
      vCSDecodeBase64 = content;
    }
  }

  v10 = vCSDecodeBase64;

LABEL_11:
  v11 = [(NSMutableDictionary *)self->_params objectForKey:@"CHARSET"];
  v12 = v11;
  if (v11 && ![(__CFString *)v11 isEqualToString:@"macintosh"])
  {
    [(NSMutableDictionary *)self->_params removeObjectForKey:@"CHARSET"];
    SystemEncoding = CFStringConvertIANACharSetNameToEncoding(v12);
  }

  else
  {
    if (!self->_usePalmD4Hooks)
    {
      v14 = 134217984;
      goto LABEL_18;
    }

    SystemEncoding = CFStringGetSystemEncoding();
  }

  v14 = SystemEncoding;
LABEL_18:
  v15 = [(NSMutableData *)v10 VCSConvert8bitBufferToUTF8From:v14];
  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v15 encoding:4];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)loadFromCString:(void *)a1 withParseState:.cold.1(void *a1)
{
  [a1 lineNumber];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)loadFromCString:(uint64_t)a1 withParseState:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  [a2 lineNumber];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)loadFromCString:(uint64_t)a1 withParseState:(void *)a2 .cold.3(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  [a2 lineNumber];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)loadFromCString:(void *)a1 withParseState:.cold.4(void *a1)
{
  [a1 lineNumber];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

@end
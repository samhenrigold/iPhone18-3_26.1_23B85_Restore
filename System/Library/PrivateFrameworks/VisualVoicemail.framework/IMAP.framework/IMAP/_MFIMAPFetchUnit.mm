@interface _MFIMAPFetchUnit
- (BOOL)matchesFetchResponse:(id)response;
- (id)copyFailedFetchResponse;
- (void)_setupExpectedFetchResult;
- (void)dealloc;
@end

@implementation _MFIMAPFetchUnit

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _MFIMAPFetchUnit;
  [(_MFIMAPFetchUnit *)&v2 dealloc];
}

- (void)_setupExpectedFetchResult
{
  if (![@"BODYSTRUCTURE" caseInsensitiveCompare:self->_fetchItem])
  {
    v13 = [[MFIMAPFetchResult alloc] initWithType:6];
    expectedFetchResult = self->_expectedFetchResult;
    self->_expectedFetchResult = v13;
LABEL_12:

    MEMORY[0x2821F96F8](v13, expectedFetchResult);
    return;
  }

  v3 = [(NSString *)self->_fetchItem length];
  v4 = [(NSString *)self->_fetchItem rangeOfString:@"BODY" options:9];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(NSString *)self->_fetchItem rangeOfString:@".PEEK" options:9 range:v4 + v5, v3 - (v4 + v5)];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [(NSString *)self->_fetchItem rangeOfString:@"[" options:8 range:v6 + v7, v3 - (v6 + v7)];
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = v8 + v9;
        v11 = [(NSString *)self->_fetchItem rangeOfString:@"]" options:4 range:v8 + v9, v3 - (v8 + v9)];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL && v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = v11;
          v26 = [(NSString *)self->_fetchItem substringWithRange:v10, v11 - v10];
          if ([(MFIMAPFetchResult *)v26 rangeOfString:@"HEADER" options:9]== 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = [[MFIMAPFetchResult alloc] initWithType:7];
            v17 = self->_expectedFetchResult;
            self->_expectedFetchResult = v16;

            [(MFIMAPFetchResult *)self->_expectedFetchResult setSection:v26];
          }

          else
          {
            v18 = [[MFIMAPFetchResult alloc] initWithType:4];
            v19 = self->_expectedFetchResult;
            self->_expectedFetchResult = v18;
          }

          v13 = [(NSString *)self->_fetchItem rangeOfString:@"<" options:0 range:v15, v3 - v15];
          v21 = v13;
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v22 = v20;
            v13 = [(NSString *)self->_fetchItem hasSuffix:@">"];
            if (v13)
            {
              v23 = v21 + v22;
              v13 = [(NSString *)self->_fetchItem rangeOfString:@"." options:0 range:v23, v3 - v23];
              if (v13 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v24 = [(NSString *)self->_fetchItem substringWithRange:v23, v13 - v23];
                intValue = [v24 intValue];

                v13 = [(MFIMAPFetchResult *)self->_expectedFetchResult setStartOffset:intValue];
              }
            }
          }

          expectedFetchResult = v26;
          goto LABEL_12;
        }
      }
    }
  }
}

- (BOOL)matchesFetchResponse:(id)response
{
  v24 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v18 = responseCopy;
  if (!self->_expectedFetchResult)
  {
    if (!self->_fetchItem || ([(_MFIMAPFetchUnit *)self _setupExpectedFetchResult], responseCopy = v18, !self->_expectedFetchResult))
    {
      v16 = 0;
      goto LABEL_25;
    }
  }

  [responseCopy fetchResults];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v19 + 1) + 8 * v8);
      type = [v9 type];
      if ((type - 4) < 2)
      {
        break;
      }

      if (type == 6)
      {
        if ([(MFIMAPFetchResult *)self->_expectedFetchResult type]== 6)
        {
          goto LABEL_20;
        }
      }

      else if (type == 7)
      {
        break;
      }

LABEL_17:
      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v6)
        {
          goto LABEL_4;
        }

        goto LABEL_19;
      }
    }

    type2 = [(MFIMAPFetchResult *)self->_expectedFetchResult type];
    if (type2 <= 7 && ((1 << type2) & 0xB0) != 0)
    {
      section = [v9 section];
      section2 = [(MFIMAPFetchResult *)self->_expectedFetchResult section];
      v15 = [section caseInsensitiveCompare:section2] == 0;

      if (v15)
      {
LABEL_20:
        v16 = 1;
        goto LABEL_21;
      }
    }

    goto LABEL_17;
  }

LABEL_19:
  v16 = 0;
LABEL_21:

LABEL_25:
  return v16;
}

- (id)copyFailedFetchResponse
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (!self->_uid)
  {
    return 0;
  }

  if (!self->_expectedFetchResult)
  {
    [(_MFIMAPFetchUnit *)self _setupExpectedFetchResult];
    if (!self->_expectedFetchResult)
    {
      return 0;
    }
  }

  v3 = objc_alloc_init(MFIMAPResponse);
  [(MFIMAPResponse *)v3 setResponseType:17];
  [(MFIMAPResponse *)v3 setNumber:0];
  v8[0] = 0;
  v7 = [[MFIMAPFetchResult alloc] initWithType:8];

  [(MFIMAPFetchResult *)v7 setUid:self->_uid];
  objc_storeStrong(v8, self->_expectedFetchResult);
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:&v7 count:2];
  [(MFIMAPResponse *)v3 setFetchResults:v4];

  for (i = 1; i != -1; --i)
  {
  }

  return v3;
}

@end
@interface _MFIMAPFetchUnit
- (BOOL)matchesFetchResponse:(id)response;
- (id)copyFailedFetchResponse;
- (void)_setupExpectedFetchResult;
- (void)dealloc;
@end

@implementation _MFIMAPFetchUnit

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MFIMAPFetchUnit;
  [(_MFIMAPFetchUnit *)&v3 dealloc];
}

- (void)_setupExpectedFetchResult
{
  if ([@"BODYSTRUCTURE" caseInsensitiveCompare:self->_fetchItem])
  {
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
            v13 = v11;
            v14 = [(NSString *)self->_fetchItem substringWithRange:v10, v11 - v10];
            v15 = [(NSString *)v14 rangeOfString:@"HEADER" options:9];
            v16 = [MFIMAPFetchResult alloc];
            if (v15 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v17 = [(MFIMAPFetchResult *)v16 initWithType:7];
              self->_expectedFetchResult = v17;
              [(MFIMAPFetchResult *)v17 setSection:v14];
            }

            else
            {
              self->_expectedFetchResult = [(MFIMAPFetchResult *)v16 initWithType:4];
            }

            v18 = [(NSString *)self->_fetchItem rangeOfString:@"<" options:0 range:v13, v3 - v13];
            if (v18 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v20 = v18;
              v21 = v19;
              if ([(NSString *)self->_fetchItem hasSuffix:@">"])
              {
                v22 = v20 + v21;
                v23 = [(NSString *)self->_fetchItem rangeOfString:@"." options:0 range:v22, v3 - v22];
                if (v23 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  intValue = [[(NSString *)self->_fetchItem substringWithRange:v22 intValue];
                  expectedFetchResult = self->_expectedFetchResult;

                  [(MFIMAPFetchResult *)expectedFetchResult setStartOffset:intValue];
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    self->_expectedFetchResult = [[MFIMAPFetchResult alloc] initWithType:6];
  }
}

- (BOOL)matchesFetchResponse:(id)response
{
  v20 = *MEMORY[0x277D85DE8];
  if (!self->_expectedFetchResult)
  {
    if (!self->_fetchItem || ([(_MFIMAPFetchUnit *)self _setupExpectedFetchResult], !self->_expectedFetchResult))
    {
      LOBYTE(v6) = 0;
      return v6;
    }
  }

  fetchResults = [response fetchResults];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [fetchResults countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
LABEL_4:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(fetchResults);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      type = [v10 type];
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
      if (v7 == ++v9)
      {
        v6 = [fetchResults countByEnumeratingWithState:&v15 objects:v19 count:16];
        v7 = v6;
        if (v6)
        {
          goto LABEL_4;
        }

        return v6;
      }
    }

    type2 = [(MFIMAPFetchResult *)self->_expectedFetchResult type];
    v13 = type2 > 7 || ((1 << type2) & 0xB0) == 0;
    if (!v13 && ![objc_msgSend(v10 "section")])
    {
LABEL_20:
      LOBYTE(v6) = 1;
      return v6;
    }

    goto LABEL_17;
  }

  return v6;
}

- (id)copyFailedFetchResponse
{
  v6[2] = *MEMORY[0x277D85DE8];
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
  v6[0] = [[MFIMAPFetchResult alloc] initWithType:8];
  [v6[0] setUid:self->_uid];
  v6[1] = self->_expectedFetchResult;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:v6 count:2];

  [(MFIMAPResponse *)v3 setFetchResults:v4];
  return v3;
}

@end
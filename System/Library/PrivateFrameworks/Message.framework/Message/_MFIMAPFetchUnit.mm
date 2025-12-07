@interface _MFIMAPFetchUnit
- (BOOL)matchesFetchResponse:(id)response;
- (id)copyFailedFetchResponse;
- (void)_setupExpectedFetchResult;
@end

@implementation _MFIMAPFetchUnit

- (void)_setupExpectedFetchResult
{
  if (![@"BODYSTRUCTURE" caseInsensitiveCompare:self->_fetchItem])
  {
    v13 = [[MFIMAPFetchResult alloc] initWithType:6];
    expectedFetchResult = self->_expectedFetchResult;
    self->_expectedFetchResult = v13;
LABEL_13:

    return;
  }

  if ([@"X-APPLE-REMOTE-LINKS" caseInsensitiveCompare:self->_fetchItem])
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
            v15 = v11;
            v27 = [(NSString *)self->_fetchItem substringWithRange:v10, v11 - v10];
            if ([(MFIMAPFetchResult *)v27 rangeOfString:@"HEADER" options:9]== 0x7FFFFFFFFFFFFFFFLL)
            {
              v16 = [[MFIMAPFetchResult alloc] initWithType:7];
              v17 = self->_expectedFetchResult;
              self->_expectedFetchResult = v16;

              [(MFIMAPFetchResult *)self->_expectedFetchResult setSection:v27];
            }

            else
            {
              v18 = [[MFIMAPFetchResult alloc] initWithType:4];
              v19 = self->_expectedFetchResult;
              self->_expectedFetchResult = v18;
            }

            v21 = [(NSString *)self->_fetchItem rangeOfString:@"<" options:0 range:v15, v3 - v15];
            if (v21 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v22 = v20;
              if ([(NSString *)self->_fetchItem hasSuffix:@">"])
              {
                v23 = v21 + v22;
                v24 = [(NSString *)self->_fetchItem rangeOfString:@"." options:0 range:v23, v3 - v23];
                if (v24 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v25 = [(NSString *)self->_fetchItem substringWithRange:v23, v24 - v23];
                  intValue = [v25 intValue];

                  [(MFIMAPFetchResult *)self->_expectedFetchResult setStartOffset:intValue];
                }
              }
            }

            expectedFetchResult = v27;
            goto LABEL_13;
          }
        }
      }
    }
  }
}

- (BOOL)matchesFetchResponse:(id)response
{
  v23 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v17 = responseCopy;
  if (!self->_expectedFetchResult)
  {
    if (!self->_fetchItem || ([(_MFIMAPFetchUnit *)self _setupExpectedFetchResult], responseCopy = v17, !self->_expectedFetchResult))
    {
      v15 = 0;
      goto LABEL_27;
    }
  }

  [responseCopy fetchResults];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v5 = v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = *v19;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v18 + 1) + 8 * v8);
      type = [v9 type];
      if (type > 6)
      {
        break;
      }

      if ((type - 4) < 2)
      {
        goto LABEL_16;
      }

      if (type == 6 && [(MFIMAPFetchResult *)self->_expectedFetchResult type]== 6)
      {
        goto LABEL_22;
      }

LABEL_19:
      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v6)
        {
          goto LABEL_4;
        }

        goto LABEL_21;
      }
    }

    if (type != 7)
    {
      if (type == 12 && [(MFIMAPFetchResult *)self->_expectedFetchResult type]== 12)
      {
LABEL_22:
        v15 = 1;
        goto LABEL_23;
      }

      goto LABEL_19;
    }

LABEL_16:
    type2 = [(MFIMAPFetchResult *)self->_expectedFetchResult type];
    if (type2 <= 7 && ((1 << type2) & 0xB0) != 0)
    {
      section = [v9 section];
      section2 = [(MFIMAPFetchResult *)self->_expectedFetchResult section];
      v14 = [section caseInsensitiveCompare:section2] == 0;

      if (v14)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_19;
  }

LABEL_21:
  v15 = 0;
LABEL_23:

LABEL_27:
  return v15;
}

- (id)copyFailedFetchResponse
{
  v8[1] = *MEMORY[0x1E69E9840];
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
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:&v7 count:2];
  [(MFIMAPResponse *)v3 setFetchResults:v4];

  for (i = 1; i != -1; --i)
  {
  }

  return v3;
}

@end
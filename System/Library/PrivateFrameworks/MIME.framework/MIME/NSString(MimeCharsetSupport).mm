@interface NSString(MimeCharsetSupport)
- (id)_mf_bestMimeCharset:()MimeCharsetSupport;
- (id)mf_bestMimeCharsetForMessageDeliveryUsingSubtype:()MimeCharsetSupport;
- (id)mf_bestMimeCharsetUsingHint:()MimeCharsetSupport;
@end

@implementation NSString(MimeCharsetSupport)

- (id)_mf_bestMimeCharset:()MimeCharsetSupport
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    CanBeConvertedLosslessly = 0;
    v7 = 0;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      if (![v10 coversLargeUnicodeSubset])
      {
        goto LABEL_12;
      }

      if ((v7 & 1) == 0)
      {
        CanBeConvertedLosslessly = MFStringCanBeConvertedLosslessly(self, 0);
      }

      v7 = 1;
      if (!CanBeConvertedLosslessly)
      {
        break;
      }

      CanBeConvertedLosslessly = 1;
LABEL_15:
      if (v5 == ++v9)
      {
        v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }

    CanBeConvertedLosslessly = 0;
LABEL_12:
    if ([v10 cfStringEncoding] != 1586 && MFStringCanBeConvertedLosslessly(self, objc_msgSend(v10, "cfStringEncoding")))
    {
      v11 = v10;
      if (v11)
      {
        v12 = v11;
        goto LABEL_19;
      }
    }

    goto LABEL_15;
  }

LABEL_17:
  v12 = 0;
LABEL_19:

  return v12;
}

- (id)mf_bestMimeCharsetUsingHint:()MimeCharsetSupport
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = +[MFMimeCharset allMimeCharsets];
  v5 = [self _mf_bestMimeCharset:v28];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 encoding] != 134217984 || a3 == -1;
    if (!v7 && a3 != 134217984)
    {
      v10 = _indexOfEncodingInCharsets(0x8000100u, v28);
      v11 = _indexOfEncodingInCharsets(a3, v28);
      if (v11 > v10 && v10 != 0x7FFFFFFFFFFFFFFFLL && v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = [MFMimeCharset charsetForEncoding:a3];
        primaryLanguage = [v27 primaryLanguage];
        v26 = primaryLanguage;
        if (primaryLanguage)
        {
          v25 = v28;
          v13 = primaryLanguage;
          if ([v13 length])
          {
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v14 = v25;
            array = 0;
            v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
            if (v16)
            {
              v17 = *v30;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v30 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v29 + 1) + 8 * i);
                  primaryLanguage2 = [v19 primaryLanguage];
                  v21 = primaryLanguage2;
                  if (primaryLanguage2 && [primaryLanguage2 isEqualToString:v13])
                  {
                    if (!array)
                    {
                      array = [MEMORY[0x1E695DF70] array];
                    }

                    [array addObject:v19];
                  }

                  else
                  {
                    [0 addObject:v19];
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
              }

              while (v16);
            }
          }

          else
          {
            array = v25;
          }

          v22 = [self _mf_bestMimeCharset:array];
          v23 = v22;
          if (v22)
          {
            v24 = v22;

            v6 = v24;
          }
        }
      }
    }
  }

  return v6;
}

- (id)mf_bestMimeCharsetForMessageDeliveryUsingSubtype:()MimeCharsetSupport
{
  v4 = a3;
  if ([v4 isEqualToString:@"html"])
  {
    [MFMimeCharset charsetForEncoding:134217984];
  }

  else
  {
    [self mf_bestMimeCharset];
  }
  v5 = ;

  return v5;
}

@end
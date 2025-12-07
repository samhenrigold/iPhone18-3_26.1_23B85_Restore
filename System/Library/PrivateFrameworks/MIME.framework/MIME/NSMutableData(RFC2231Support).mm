@interface NSMutableData(RFC2231Support)
- (void)mf_appendRFC2231CompliantValue:()RFC2231Support forKey:;
@end

@implementation NSMutableData(RFC2231Support)

- (void)mf_appendRFC2231CompliantValue:()RFC2231Support forKey:
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v33 = v6;
  if (v6 && v7)
  {
    v30 = v7;
    v32 = [v7 dataUsingEncoding:1 allowLossyConversion:1];
    if (mf_appendRFC2231CompliantValue_forKey__onceToken != -1)
    {
      [NSMutableData(RFC2231Support) mf_appendRFC2231CompliantValue:forKey:];
    }

    v8 = [(__CFString *)v6 length];
    v40.location = 0;
    v40.length = v8;
    if (CFStringFindCharacterFromSet(v33, mf_appendRFC2231CompliantValue_forKey__specialCSet, v40, 0, 0))
    {
      mf_bestMimeCharset = [(__CFString *)v33 mf_bestMimeCharset];
      cfStringEncoding = [mf_bestMimeCharset cfStringEncoding];
      charsetName = [mf_bestMimeCharset charsetName];
    }

    else
    {
      charsetName = 0;
      cfStringEncoding = 1536;
    }

    if (v8 >= 1)
    {
      v11 = 0;
      v12 = -1;
      while (1)
      {
        *&v13 = 0xAAAAAAAAAAAAAAAALL;
        *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v37[2] = v13;
        v37[3] = v13;
        v37[0] = v13;
        v37[1] = v13;
        v35 = 0xAAAAAAAAAAAAAAAALL;
        v39.location = v11;
        v39.length = v8;
        Bytes = MFStringGetBytes(v33, v39, cfStringEncoding, 0, 0, v37, 64, &v35);
        [self mf_appendCString:";\n\t"];
        [self appendData:v32];
        if (v8 > Bytes || (v12 & 0x80000000) == 0)
        {
          memset(v36, 170, 20);
          [self appendBytes:"*" length:1];
          [self appendBytes:v36 length:{__snprintf_chk(v36, 0x14uLL, 0, 0x14uLL, "%d", ++v12)}];
        }

        v34 = v8 - Bytes;
        v15 = v35;
        v16 = v37 + v35;
        if (charsetName)
        {
          break;
        }

        if (!mf_appendRFC2231CompliantValue_forKey__mimeNeedsQuoteByteSet)
        {
          v22 = [objc_alloc(MEMORY[0x1E699B790]) initWithCString:{" ()<>@, ;:\\/[]?="}];
          v23 = mf_appendRFC2231CompliantValue_forKey__mimeNeedsQuoteByteSet;
          mf_appendRFC2231CompliantValue_forKey__mimeNeedsQuoteByteSet = v22;

          v24 = [objc_alloc(MEMORY[0x1E699B790]) initWithCString:"\"];
          v25 = mf_appendRFC2231CompliantValue_forKey__mimeNeedsEscapeByteSet;
          mf_appendRFC2231CompliantValue_forKey__mimeNeedsEscapeByteSet = v24;
        }

        [self appendBytes:"=" length:1];
        if (v15 >= 1)
        {
          v26 = v37;
          while (![mf_appendRFC2231CompliantValue_forKey__mimeNeedsQuoteByteSet byteIsMember:*v26])
          {
            if (++v26 >= v16)
            {
              v20 = 0;
              goto LABEL_27;
            }
          }

          v20 = mf_appendRFC2231CompliantValue_forKey__mimeNeedsEscapeByteSet;
          [self appendBytes:"" length:1];
          goto LABEL_27;
        }

        v20 = 0;
LABEL_41:
        v8 = v34;

        v11 += Bytes;
        if (v34 <= 0)
        {
          goto LABEL_42;
        }
      }

      v17 = mf_appendRFC2231CompliantValue_forKey__percentEscapeSet;
      if (!mf_appendRFC2231CompliantValue_forKey__percentEscapeSet)
      {
        v18 = [objc_alloc(MEMORY[0x1E699B808]) initWithRange:{97, 26}];
        [v18 addBytesInRange:{48, 10}];
        [v18 addBytesInRange:{65, 26}];
        [v18 addBytesInRange:{47, 1}];
        [v18 addBytesInRange:{46, 1}];
        [v18 invert];
        v19 = mf_appendRFC2231CompliantValue_forKey__percentEscapeSet;
        mf_appendRFC2231CompliantValue_forKey__percentEscapeSet = v18;

        v17 = mf_appendRFC2231CompliantValue_forKey__percentEscapeSet;
      }

      v20 = v17;
      [self appendBytes:"*=" length:2];
      if (v12 <= 0)
      {
        v21 = [charsetName dataUsingEncoding:1 allowLossyConversion:1];
        [self appendData:v21];

        [self mf_appendCString:"''"];
      }

LABEL_27:
      if (v15 >= 1)
      {
        v27 = v37;
        v28 = v37;
        v29 = v37;
        do
        {
          if ([v20 byteIsMember:*v29])
          {
            if (v29 > v28)
            {
              [self appendBytes:v28 length:v27 - v28];
              v28 = v29;
            }

            if (charsetName)
            {
              *v36 = -1431655766;
              [self appendBytes:v36 length:{__snprintf_chk(v36, 4uLL, 0, 4uLL, "%%%02X", *v29)}];
              ++v28;
            }

            else
            {
              [self appendBytes:"\" length:1];
            }
          }

          ++v29;
          v27 = (v27 + 1);
        }

        while (v29 < v16);
        if (v29 > v28)
        {
          [self appendBytes:v28 length:v27 - v28];
        }
      }

      if (!charsetName && v20)
      {
        [self appendBytes:"" length:1];
      }

      goto LABEL_41;
    }

LABEL_42:

    v7 = v30;
  }
}

@end
@interface NSMutableDictionary(RFC2231Support)
- (void)mf_fixupRFC2231Values;
@end

@implementation NSMutableDictionary(RFC2231Support)

- (void)mf_fixupRFC2231Values
{
  v83 = *MEMORY[0x1E69E9840];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  allKeys = [self allKeys];
  v2 = [allKeys countByEnumeratingWithState:&v76 objects:v81 count:16];
  if (v2)
  {
    obj = 0;
    v3 = *v77;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v77 != v3)
        {
          objc_enumerationMutation(allKeys);
        }

        v5 = *(*(&v76 + 1) + 8 * i);
        if ([v5 rangeOfString:@"*"] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v6 = obj;
          if (!obj)
          {
            v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
          }

          obj = v6;
          [v6 addObject:v5];
        }
      }

      v2 = [allKeys countByEnumeratingWithState:&v76 objects:v81 count:16];
    }

    while (v2);

    if (obj)
    {
      [obj sortUsingSelector:sel_caseInsensitiveCompare_];
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      obja = obj;
      v7 = [obja countByEnumeratingWithState:&v72 objects:v80 count:16];
      v8 = 0;
      if (!v7)
      {
        v65 = 0;
        goto LABEL_102;
      }

      v65 = 0;
      v60 = *v73;
      bytesDeallocator = *MEMORY[0x1E695E498];
      v63 = -1;
      while (1)
      {
        v61 = v7;
        v9 = 0;
        v10 = v8;
        do
        {
          if (*v73 != v60)
          {
            objc_enumerationMutation(obja);
          }

          v11 = *(*(&v72 + 1) + 8 * v9);
          v69 = [self objectForKey:v11];
          v12 = [v11 length];
          if (mf_fixupRFC2231Values_onceToken != -1)
          {
            [NSMutableDictionary(RFC2231Support) mf_fixupRFC2231Values];
          }

          v13 = [mf_fixupRFC2231Values_keyRegex firstMatchInString:v11 options:0 range:{0, v12}];
          v67 = v13;
          if (v13 && [v13 range] != 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([v67 numberOfRanges] != 3)
            {
              __assert_rtn("[NSMutableDictionary(RFC2231Support) mf_fixupRFC2231Values]", "MimeHeaderEncoding.m", 610, "[match numberOfRanges] == 3");
            }

            v68 = [v11 substringWithRange:{0, objc_msgSend(v67, "range")}];
            v20 = [v67 rangeAtIndex:1];
            v22 = v21;
            v23 = [v67 rangeAtIndex:2];
            v24 = v23;
            v26 = v25;
            if (v20 == 0x7FFFFFFFFFFFFFFFLL && v23 == 0x7FFFFFFFFFFFFFFFLL)
            {
              intValue = -1;
              v14 = 1;
            }

            else
            {
              intValue = -1;
              if (v20 != 0x7FFFFFFFFFFFFFFFLL && v22)
              {
                v39 = [v11 substringWithRange:{v20, v22}];
                intValue = [v39 intValue];
              }

              v14 = v24 != 0x7FFFFFFFFFFFFFFFLL && v26 != 0;
            }
          }

          else
          {
            v68 = v11;
            v14 = 0;
            intValue = -1;
          }

          if (v65 && ([v65 isEqualToString:?] & 1) != 0)
          {
            v64 = 0;
            if (!v14)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v63 = -1;
            v64 = 1;
            if (!v14)
            {
LABEL_26:
              v8 = v69;
              v15 = 0;
              goto LABEL_89;
            }
          }

          v17 = [v69 rangeOfString:@"'"];
          if (v17 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = [v69 length];
            v15 = 0;
            v19 = 0;
          }

          else
          {
            v27 = v16;
            v28 = [v69 rangeOfString:@"'" options:0 range:{v17 + v27, objc_msgSend(v69, "length") - (v17 + v27)}];
            v30 = v29;
            v15 = [v69 substringWithRange:{0, v17}];
            v31 = [v69 length];
            if (v30)
            {
              v32 = v28;
            }

            else
            {
              v32 = v17;
            }

            if (v30)
            {
              v33 = v30;
            }

            else
            {
              v33 = v27;
            }

            v19 = v33 + v32;
            v18 = v31 - (v33 + v32);
          }

          if (v64)
          {
            v63 = MFEncodingForCharset(v15);
          }

          v34 = v63;
          if (v63 == -1)
          {
            v34 = 1536;
          }

          v63 = v34;
          v35 = v69;
          v36 = v35;
          if (v18 < 3 || [(__CFString *)v35 rangeOfString:@"%" options:0 range:v19, v18 - 2]== 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_87;
          }

          *&v37 = 0xAAAAAAAAAAAAAAAALL;
          *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v82[2] = v37;
          v82[3] = v37;
          v82[0] = v37;
          v82[1] = v37;
          if (v18 < 0x41)
          {
            v38 = v82;
          }

          else
          {
            v38 = malloc_type_malloc(v18, 0xDD5335BBuLL);
          }

          v84.location = v19;
          v84.length = v18;
          if (v18 != MFStringGetBytes(v36, v84, 0x600u, 0, 0, v38, v18, 0))
          {
            v8 = 0;
            goto LABEL_84;
          }

          v58 = v19;
          v59 = v36;
          v41 = 0;
          v42 = &v38[v18];
          v43 = v38;
          do
          {
            v44 = *v43;
            if (v44 != 37)
            {
              goto LABEL_68;
            }

            if ((v43 + 2) >= v42 || (v45 = v43[1], (v45 & 0x80000000) != 0) || (*(MEMORY[0x1E69E9830] + 4 * v45 + 60) & 0x10000) == 0 || (v46 = v43[2], (v46 & 0x80000000) != 0) || (*(MEMORY[0x1E69E9830] + 4 * v46 + 60) & 0x10000) == 0)
            {
              LOBYTE(v44) = 37;
LABEL_68:
              ++v43;
              goto LABEL_69;
            }

            v57 = __toupper(v45);
            v43 += 3;
            v47 = __toupper(v46);
            if (v57 <= 57)
            {
              v48 = -48;
            }

            else
            {
              v48 = -55;
            }

            v49 = v48 + v57;
            if (v47 <= 57)
            {
              v50 = -48;
            }

            else
            {
              v50 = -55;
            }

            LOBYTE(v44) = v50 + v47 + 16 * v49;
LABEL_69:
            if (&v38[v41] != v43)
            {
              v38[v41] = v44;
            }

            ++v41;
          }

          while (v43 < v42);
          if (&v38[v41] == v43)
          {
            v8 = 0;
            v19 = v58;
            v36 = v59;
          }

          else
          {
            v36 = v59;
            v19 = v58;
            v51 = CFDataCreateWithBytesNoCopy(0, v38, v41, bytesDeallocator);
            v8 = MFCreateStringWithData(v51, v63, 0);
          }

LABEL_84:
          if (v38 != v82)
          {
            free(v38);
          }

          if (!v8)
          {
LABEL_87:
            v8 = [(__CFString *)v36 substringWithRange:v19, v18];
          }

LABEL_89:
          if (v8)
          {
            [self removeObjectForKey:v11];
            if (v64)
            {
              v52 = v68;

              v65 = v52;
              [self setObject:v8 forKey:v52];
            }

            else if (intValue)
            {
              if (intValue >= 1)
              {
                v53 = [self objectForKey:v65];
                v54 = [objc_allocWithZone(MEMORY[0x1E696AD60]) initWithCapacity:{objc_msgSend(v8, "length") + objc_msgSend(v53, "length")}];
                v55 = v54;
                if (v53)
                {
                  [v54 appendString:v53];
                }

                [v55 appendString:v8];
                [self setObject:v55 forKey:v65];
              }
            }

            else
            {
              [self setObject:v8 forKey:v65];
            }
          }

          ++v9;
          v10 = v8;
        }

        while (v9 != v61);
        v7 = [obja countByEnumeratingWithState:&v72 objects:v80 count:16];
        if (!v7)
        {
LABEL_102:

          allKeys = obja;
          goto LABEL_103;
        }
      }
    }
  }

  else
  {
LABEL_103:
  }
}

@end
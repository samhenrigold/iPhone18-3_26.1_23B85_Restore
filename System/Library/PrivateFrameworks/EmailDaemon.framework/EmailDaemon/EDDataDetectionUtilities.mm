@interface EDDataDetectionUtilities
+ (BOOL)isRealWord:(id)word;
+ (id)detectOneTimeCodeWithDataDetectors:(id)detectors;
+ (id)extractOneTimeCode:(id)code withSubject:(id)subject;
+ (id)log;
@end

@implementation EDDataDetectionUtilities

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__EDDataDetectionUtilities_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_28 != -1)
  {
    dispatch_once(&log_onceToken_28, block);
  }

  v2 = log_log_27;

  return v2;
}

void __31__EDDataDetectionUtilities_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_27;
  log_log_27 = v1;
}

+ (BOOL)isRealWord:(id)word
{
  v20 = *MEMORY[0x1E69E9840];
  wordCopy = word;
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  v6 = [localeIdentifier hasPrefix:@"en"];
  v7 = +[EDLexicon english];
  v8 = [v7 isRealWord:wordCopy];

  if (v8)
  {
    v9 = +[EDDataDetectionUtilities log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:wordCopy];
      v16 = 138543362;
      v17 = v10;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "This current paragraph does not contain a valid code since %{public}@ is a real English word", &v16, 0xCu);
    }
  }

  else
  {
    if ((v6 & 1) != 0 || (+[EDLexicon current](EDLexicon, "current"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isRealWord:wordCopy], v12, !v13))
    {
      v11 = 0;
      goto LABEL_10;
    }

    v9 = +[EDDataDetectionUtilities log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:wordCopy];
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = localeIdentifier;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "This current paragraph does not contain a valid code since %{public}@ is a real word in this language: %@", &v16, 0x16u);
    }
  }

  v11 = 1;
LABEL_10:

  return v11;
}

+ (id)detectOneTimeCodeWithDataDetectors:(id)detectors
{
  v47 = *MEMORY[0x1E69E9840];
  detectorsCopy = detectors;
  v36 = detectorsCopy;
  v6 = [detectorsCopy length];
  if (v6 >= 0x1F4)
  {
    v7 = 500;
  }

  else
  {
    v7 = v6;
  }

  if (v6)
  {
    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = [objc_alloc(MEMORY[0x1E6999A90]) initWithScannerType:0 passiveIntent:1];
    [MEMORY[0x1E6999A88] scanString:detectorsCopy range:0 configuration:v7];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v8 = v39 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v9)
    {
      v10 = *v39;
      v11 = *MEMORY[0x1E6999990];
      v3 = "Skipping one-time code with length %ld";
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v39 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v38 + 1) + 8 * i);
          type = [v13 type];
          v14 = [type isEqualToString:v11];

          if (v14)
          {
            value = [v13 value];
            v16 = [value length] < 0xA;

            if (v16)
            {
              type = [v13 value];
              [v37 addObject:type];
            }

            else
            {
              type = +[EDDataDetectionUtilities log];
              if (os_log_type_enabled(type, OS_LOG_TYPE_DEFAULT))
              {
                value2 = [v13 value];
                v18 = [value2 length];
                *buf = 134217984;
                v43 = v18;
                _os_log_impl(&dword_1C61EF000, type, OS_LOG_TYPE_DEFAULT, "Skipping one-time code with length %ld", buf, 0xCu);
              }
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v9);
    }

    if (![v37 count])
    {
      v33 = +[EDDataDetectionUtilities log];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C61EF000, v33, OS_LOG_TYPE_DEFAULT, "No one-time codes detected using data detectors", buf, 2u);
      }

      v29 = 0;
      goto LABEL_38;
    }

    v19 = [v37 ef_filter:&__block_literal_global_36];
    if ([v19 count])
    {
      v20 = [v19 count];
      if (v20 < [v37 count])
      {
        v21 = +[EDDataDetectionUtilities log];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v37 count];
          v23 = [v19 count];
          *buf = 134218240;
          v43 = v22;
          v44 = 2048;
          v45 = v23;
          _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "Found %lu potential codes, filtered down to %lu codes.", buf, 0x16u);
        }

        v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v19];
        v37 = v24;
      }
    }

    v25 = [v37 count];
    if (v25 < 2 || (-[NSObject firstObject](v37, "firstObject"), v3 = objc_claimAutoreleasedReturnValue(), v26 = [v3 length], -[NSObject objectAtIndexedSubscript:](v37, "objectAtIndexedSubscript:", 1), type = objc_claimAutoreleasedReturnValue(), v26 >= -[NSObject length](type, "length")))
    {
      firstObject = [v37 firstObject];
      if (v25 < 2)
      {
LABEL_32:
        v30 = +[EDDataDetectionUtilities log];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v37 count];
          v32 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:firstObject];
          *buf = 134218242;
          v43 = v31;
          v44 = 2112;
          v45 = v32;
          _os_log_impl(&dword_1C61EF000, v30, OS_LOG_TYPE_DEFAULT, "We found %lu potential One-Time Code(s) in this email, the One-Time Code to use is : %@", buf, 0x16u);
        }

        v33 = firstObject;
        v29 = v33;
LABEL_38:

        v28 = v37;
        goto LABEL_39;
      }
    }

    else
    {
      firstObject = [v37 objectAtIndexedSubscript:1];
    }

    goto LABEL_32;
  }

  v28 = +[EDDataDetectionUtilities log];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_DEFAULT, "No valid string sent to data detectors", buf, 2u);
  }

  v29 = 0;
LABEL_39:

  return v29;
}

BOOL __63__EDDataDetectionUtilities_detectOneTimeCodeWithDataDetectors___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 length] == 8 || objc_msgSend(v2, "length") == 6;

  return v3;
}

+ (id)extractOneTimeCode:(id)code withSubject:(id)subject
{
  v52 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  subjectCopy = subject;
  v43 = codeCopy;
  v40 = subjectCopy;
  if (codeCopy)
  {
    v7 = codeCopy;
    if (subjectCopy)
    {
      codeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", subjectCopy, codeCopy];
      goto LABEL_8;
    }
  }

  else
  {
    v9 = +[EDDataDetectionUtilities log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [EDDataDetectionUtilities extractOneTimeCode:v9 withSubject:?];
    }

    v7 = v40;
  }

  codeCopy = v7;
LABEL_8:
  v39 = codeCopy;
  v10 = [EDDataDetectionUtilities detectOneTimeCodeWithDataDetectors:?];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v34 = +[EDOTCKeywords localizedExpressionStrings];
    if ([v34 count])
    {
      newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v32 = [MEMORY[0x1E696AD48] characterSetWithCharactersInString:@"-"];
      alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
      [v32 formUnionWithCharacterSet:alphanumericCharacterSet];

      v41 = [MEMORY[0x1E696AE88] scannerWithString:codeCopy];
      v36 = 0;
      v33 = 0;
      v38 = 0;
      v14 = 0;
      v15 = 0;
      while (([v41 isAtEnd] & 1) == 0)
      {
        v48 = v15;
        [v41 scanUpToCharactersFromSet:newlineCharacterSet intoString:&v48];
        v42 = v48;

        whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v17 = [v42 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

        if ([v17 length])
        {
          if (v33)
          {
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v18 = v34;
            v19 = [v18 countByEnumeratingWithState:&v44 objects:v51 count:16];
            if (v19)
            {
              v20 = *v45;
              while (2)
              {
                for (i = 0; i != v19; ++i)
                {
                  if (*v45 != v20)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v22 = *(*(&v44 + 1) + 8 * i);
                  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", v14, v17];
                  if ([v23 rangeOfString:v22 options:1025] != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v28 = +[EDDataDetectionUtilities log];
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v50 = v22;
                      _os_log_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_DEFAULT, "Mail detected a one-time code with keyword: %@", buf, 0xCu);
                    }

                    codeCopy = v43;
                    v36 = v36;

                    v12 = v36;
                    goto LABEL_45;
                  }

                  codeCopy = v43;
                }

                v19 = [v18 countByEnumeratingWithState:&v44 objects:v51 count:16];
                if (v19)
                {
                  continue;
                }

                break;
              }
            }
          }

          if (-[NSObject length](v17, "length") - 4) > 5 || ([self isRealWord:v17])
          {
            v24 = v14;
            v14 = v17;
          }

          else
          {
            v25 = [v17 stringByTrimmingCharactersInSet:v32];
            v33 = [v25 isEqualToString:&stru_1F45B4608];

            v24 = v36;
            v36 = v17;
          }

          v26 = v17;

          ++v38;
        }

        v27 = v42;
        v15 = v42;
        if (v38 == 10)
        {
          goto LABEL_38;
        }
      }

      v27 = v15;
LABEL_38:
      v42 = v27;
      if (([v41 isAtEnd] & 1) == 0)
      {
        v30 = +[EDDataDetectionUtilities log];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v50 = 10;
          _os_log_impl(&dword_1C61EF000, v30, OS_LOG_TYPE_DEFAULT, "Mail stopped scanning the message after line %lu", buf, 0xCu);
        }
      }

      v17 = +[EDDataDetectionUtilities log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "No one-time code detected using our heuristics", buf, 2u);
      }

      v12 = 0;
LABEL_45:
    }

    else
    {
      v29 = +[EDDataDetectionUtilities log];
      newlineCharacterSet = v29;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [EDDataDetectionUtilities extractOneTimeCode:v29 withSubject:?];
      }

      v36 = 0;
      v12 = 0;
    }

    v11 = 0;
  }

  return v12;
}

@end
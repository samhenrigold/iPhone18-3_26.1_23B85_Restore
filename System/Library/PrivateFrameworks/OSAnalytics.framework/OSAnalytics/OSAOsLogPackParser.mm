@interface OSAOsLogPackParser
- (OSAOsLogPackParser)initWithMaxNumAruments:(unint64_t)aruments;
- (id)compose:(id)compose;
- (id)extractArguments:(id)arguments;
- (id)filterOutSensitiveParts:(id)parts withFormats:(id)formats;
- (id)parse:(id)parse;
@end

@implementation OSAOsLogPackParser

- (OSAOsLogPackParser)initWithMaxNumAruments:(unint64_t)aruments
{
  v5.receiver = self;
  v5.super_class = OSAOsLogPackParser;
  result = [(OSAOsLogPackParser *)&v5 init];
  if (result)
  {
    result->_maxNumArguments = aruments;
  }

  return result;
}

- (id)parse:(id)parse
{
  parseCopy = parse;
  v5 = objc_opt_new();
  bytes = [parseCopy bytes];
  v7 = *(bytes + 69);
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__1;
  v55 = __Block_byref_object_dispose__1;
  v56 = (*(self->_readCStringFromTarget + 2))();
  v8 = v52[5];
  if (v8 && [v8 length] && objc_msgSend(v52[5], "length") < 0x401)
  {
    objc_storeStrong(&self->_formatString, v52[5]);
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __28__OSAOsLogPackParser_parse___block_invoke;
    v50[3] = &unk_1E7A272E8;
    v50[4] = &v51;
    v11 = MEMORY[0x1B2703360](v50);
    self->_formatStringIsSafe = (*(self->_pointerPointsToSafeMemory + 2))();
    v12 = (*(self->_modulePathForMemoryPointer + 2))();
    v48 = v7;
    v49 = (bytes + 70);
    formatStringOriginatingModulePath = self->_formatStringOriginatingModulePath;
    self->_formatStringOriginatingModulePath = v12;

    v14 = 0;
    while ([v52[5] length])
    {
      if (v14 >= self->_maxNumArguments)
      {
        break;
      }

      v15 = [v52[5] rangeOfString:@"%"];
      if (!v16)
      {
        break;
      }

      v17 = v15;
      if ([v52[5] length] < v15)
      {
        break;
      }

      if ([v52[5] characterAtIndex:v17 + 1] == 37)
      {
        v18 = [OSAParsedOsLogPart alloc];
        v19 = [v52[5] substringToIndex:v17];
        v20 = [(OSAParsedOsLogPart *)v18 initWithLiteral:v19 isSafe:self->_formatStringIsSafe];
        [v5 addObject:v20];

        v21 = [[OSAParsedOsLogPart alloc] initWithLiteral:@"%" isSafe:self->_formatStringIsSafe];
        [v5 addObject:v21];

        v11[2](v11, v17 + 2);
      }

      else
      {
        if (!v48)
        {
          break;
        }

        v47 = v49[1];
        v22 = [OSAParsedOsLogPart alloc];
        v23 = [v52[5] substringToIndex:v17];
        v24 = [(OSAParsedOsLogPart *)v22 initWithLiteral:v23 isSafe:self->_formatStringIsSafe];
        [v5 addObject:v24];

        v25 = [v52[5] substringFromIndex:v17 + 1];
        v11[2](v11, v17);
        v11[2](v11, 1);
        if ([v25 hasPrefix:@"s"])
        {
          v11[2](v11, 1);
          if ((*v49 & 0xF0) != 0x20 || v49[1] != 8)
          {
            goto LABEL_75;
          }

          v26 = v25;
          __memcpy_chk();
          v27 = [OSAParsedOsLogPart alloc];
          v28 = (*(self->_readCStringFromTarget + 2))();
          v29 = [(OSAParsedOsLogPart *)v27 initWithArgument:v28 argSpecifier:@"%s" isSafe:(*(self->_pointerPointsToSafeMemory + 2))()];
          [v5 addObject:v29];
        }

        else
        {
          if ([v25 hasPrefix:@"d"])
          {
            v11[2](v11, [@"d" length]);
            if (*v49 > 0xFu || v49[1] != 4)
            {
              goto LABEL_75;
            }

            v26 = v25;
            __memcpy_chk();
            v30 = [OSAParsedOsLogPart alloc];
            v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 0];
            v32 = [(OSAParsedOsLogPart *)v30 initWithArgument:v31 argSpecifier:@"%d" isSafe:1];
            [v5 addObject:v32];
          }

          else if ([v25 hasPrefix:@"ld"])
          {
            v11[2](v11, [@"ld" length]);
            if (*v49 > 0xFu || v49[1] != 8)
            {
              goto LABEL_75;
            }

            v26 = v25;
            __memcpy_chk();
            v33 = [OSAParsedOsLogPart alloc];
            v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", 0];
            v32 = [(OSAParsedOsLogPart *)v33 initWithArgument:v31 argSpecifier:@"%ld" isSafe:1];
            [v5 addObject:v32];
          }

          else if ([v25 hasPrefix:@"lld"])
          {
            v11[2](v11, [@"lld" length]);
            if (*v49 > 0xFu || v49[1] != 8)
            {
              goto LABEL_75;
            }

            v26 = v25;
            __memcpy_chk();
            v34 = [OSAParsedOsLogPart alloc];
            v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", 0];
            v32 = [(OSAParsedOsLogPart *)v34 initWithArgument:v31 argSpecifier:@"%lld" isSafe:1];
            [v5 addObject:v32];
          }

          else if ([v25 hasPrefix:@"u"])
          {
            v11[2](v11, [@"u" length]);
            if (*v49 > 0xFu || v49[1] != 4)
            {
              goto LABEL_75;
            }

            v26 = v25;
            __memcpy_chk();
            v35 = [OSAParsedOsLogPart alloc];
            v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 0];
            v32 = [(OSAParsedOsLogPart *)v35 initWithArgument:v31 argSpecifier:@"%u" isSafe:1];
            [v5 addObject:v32];
          }

          else if ([v25 hasPrefix:@"lu"])
          {
            v11[2](v11, [@"lu" length]);
            if (*v49 > 0xFu || v49[1] != 8)
            {
              goto LABEL_75;
            }

            v26 = v25;
            __memcpy_chk();
            v36 = [OSAParsedOsLogPart alloc];
            v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 0];
            v32 = [(OSAParsedOsLogPart *)v36 initWithArgument:v31 argSpecifier:@"%lu" isSafe:1];
            [v5 addObject:v32];
          }

          else if ([v25 hasPrefix:@"llu"])
          {
            v11[2](v11, [@"llu" length]);
            if (*v49 > 0xFu || v49[1] != 8)
            {
              goto LABEL_75;
            }

            v26 = v25;
            __memcpy_chk();
            v37 = [OSAParsedOsLogPart alloc];
            v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", 0];
            v32 = [(OSAParsedOsLogPart *)v37 initWithArgument:v31 argSpecifier:@"%llu" isSafe:1];
            [v5 addObject:v32];
          }

          else if ([v25 hasPrefix:@"x"])
          {
            v11[2](v11, [@"x" length]);
            if (*v49 > 0xFu || v49[1] != 4)
            {
              goto LABEL_75;
            }

            v26 = v25;
            __memcpy_chk();
            v38 = [OSAParsedOsLogPart alloc];
            v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%x", 0];
            v32 = [(OSAParsedOsLogPart *)v38 initWithArgument:v31 argSpecifier:@"%x" isSafe:1];
            [v5 addObject:v32];
          }

          else if ([v25 hasPrefix:@"lx"])
          {
            v11[2](v11, [@"lx" length]);
            if (*v49 > 0xFu || v49[1] != 8)
            {
              goto LABEL_75;
            }

            v26 = v25;
            __memcpy_chk();
            v39 = [OSAParsedOsLogPart alloc];
            v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lx", 0];
            v32 = [(OSAParsedOsLogPart *)v39 initWithArgument:v31 argSpecifier:@"%lx" isSafe:1];
            [v5 addObject:v32];
          }

          else if ([v25 hasPrefix:@"llx"])
          {
            v11[2](v11, [@"llx" length]);
            if (*v49 > 0xFu || v49[1] != 8)
            {
              goto LABEL_75;
            }

            v26 = v25;
            __memcpy_chk();
            v40 = [OSAParsedOsLogPart alloc];
            v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llx", 0];
            v32 = [(OSAParsedOsLogPart *)v40 initWithArgument:v31 argSpecifier:@"%llx" isSafe:1];
            [v5 addObject:v32];
          }

          else
          {
            v26 = v25;
            if ([v25 hasPrefix:@"hhu"])
            {
              v11[2](v11, [@"hhu" length]);
              if (*v49 > 0xFu || v49[1] != 4)
              {
                goto LABEL_75;
              }

              __memcpy_chk();
              v41 = [OSAParsedOsLogPart alloc];
              v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 0];
              v32 = [(OSAParsedOsLogPart *)v41 initWithArgument:v31 argSpecifier:@"%hhu" isSafe:1];
              [v5 addObject:v32];
            }

            else if ([v25 hasPrefix:@"hhd"])
            {
              v11[2](v11, [@"hhd" length]);
              if (*v49 > 0xFu || v49[1] != 4)
              {
                goto LABEL_75;
              }

              __memcpy_chk();
              v42 = [OSAParsedOsLogPart alloc];
              v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhd", 0];
              v32 = [(OSAParsedOsLogPart *)v42 initWithArgument:v31 argSpecifier:@"%hhd" isSafe:1];
              [v5 addObject:v32];
            }

            else
            {
              if ([v25 hasPrefix:@"p"])
              {
                v11[2](v11, [@"p" length]);
                if (*v49 > 0xFu || v49[1] != 8)
                {
                  goto LABEL_75;
                }
              }

              else
              {
                if (![v25 hasPrefix:@"@"])
                {
                  v44 = [[OSAParsedOsLogPart alloc] initWithLiteral:@"%" isSafe:self->_formatStringIsSafe];
                  [v5 addObject:v44];

LABEL_75:
                  break;
                }

                v11[2](v11, [@"p" length]);
                if ((*v49 & 0xF0) != 0x40 || v49[1] != 8)
                {
                  goto LABEL_75;
                }
              }

              __memcpy_chk();
              v43 = [OSAParsedOsLogPart alloc];
              v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", 0];
              v32 = [(OSAParsedOsLogPart *)v43 initWithArgument:v31 argSpecifier:@"%p" isSafe:1];
              [v5 addObject:v32];
            }
          }
        }

        --v48;
        v49 += v47 + 2;
        ++v14;
      }
    }

    if ([v52[5] length])
    {
      v45 = [OSAParsedOsLogPart alloc];
      v46 = [(OSAParsedOsLogPart *)v45 initWithLiteral:v52[5] isSafe:self->_formatStringIsSafe];
      [v5 addObject:v46];
    }

    v9 = [v5 copy];
  }

  else
  {
    v9 = v5;
  }

  _Block_object_dispose(&v51, 8);

  return v9;
}

uint64_t __28__OSAOsLogPackParser_parse___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [*(*(*(a1 + 32) + 8) + 40) substringFromIndex:a2];

  return MEMORY[0x1EEE66BB8]();
}

- (id)filterOutSensitiveParts:(id)parts withFormats:(id)formats
{
  v33 = *MEMORY[0x1E69E9840];
  partsCopy = parts;
  formatsCopy = formats;
  v8 = objc_opt_new();
  if (self->_formatStringIsSafe)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = partsCopy;
    v9 = partsCopy;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = v10;
    v12 = *v29;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        isSafe = [v14 isSafe];
        v16 = isSafe;
        if (formatsCopy)
        {
          argSpecifier = [v14 argSpecifier];

          if (argSpecifier)
          {
            if (v16)
            {
              argSpecifier2 = [v14 argSpecifier];
              v19 = [formatsCopy containsObject:argSpecifier2];

              if (v19)
              {
LABEL_13:
                [v8 addObject:v14];
                continue;
              }
            }
          }

          else if (v16)
          {
            goto LABEL_13;
          }
        }

        else if (isSafe)
        {
          goto LABEL_13;
        }

        v20 = [OSAParsedOsLogPart alloc];
        argSpecifier3 = [v14 argSpecifier];
        argSpecifier4 = [v14 argSpecifier];
        v23 = [(OSAParsedOsLogPart *)v20 initWithArgument:argSpecifier3 argSpecifier:argSpecifier4 isSafe:1];
        [v8 addObject:v23];
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (!v11)
      {
LABEL_18:

        v24 = [v8 copy];
        partsCopy = v27;
        goto LABEL_20;
      }
    }
  }

  v25 = [[OSAParsedOsLogPart alloc] initWithLiteral:@"%s" isSafe:1];
  [v8 addObject:v25];

  v24 = v8;
LABEL_20:

  return v24;
}

- (id)compose:(id)compose
{
  v20 = *MEMORY[0x1E69E9840];
  composeCopy = compose;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = composeCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        stringValue = [v10 stringValue];

        if (stringValue)
        {
          stringValue2 = [v10 stringValue];
          [v4 appendString:stringValue2];
        }

        else
        {
          [v4 appendString:@"<null>"];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

- (id)extractArguments:(id)arguments
{
  v20 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = argumentsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 isArgument])
        {
          stringValue = [v10 stringValue];

          if (stringValue)
          {
            stringValue2 = [v10 stringValue];
            [v4 addObject:stringValue2];
          }

          else
          {
            [v4 addObject:@"<null>"];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

@end
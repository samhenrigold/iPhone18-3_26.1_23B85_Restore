@interface NSError(MCExtension)
+ (id)MCErrorWithDomain:()MCExtension code:descriptionArray:suggestion:USEnglishSuggestion:underlyingError:errorType:extraUserInfo:;
- (id)MCErrorType;
- (id)MCFindPrimaryError;
- (id)MCUSEnglishDescription;
- (id)MCUSEnglishSuggestion;
- (id)MCVerboseDescription;
- (uint64_t)MCContainsErrorDomain:()MCExtension code:;
- (uint64_t)MCCopyAsPrimaryError;
@end

@implementation NSError(MCExtension)

+ (id)MCErrorWithDomain:()MCExtension code:descriptionArray:suggestion:USEnglishSuggestion:underlyingError:errorType:extraUserInfo:
{
  v34 = a4;
  v35 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([v14 count] < 2)
  {
    v28 = MCLocalizedStringInTable(@"UNKNOWN_ERROR", @"Errors");
    [dictionary setObject:v28 forKey:*MEMORY[0x1E696A578]];

    v26 = MCUSEnglishErrorString(@"UNKNOWN_ERROR");
    v27 = @"USEnglishDescription";
    goto LABEL_7;
  }

  v21 = [v14 objectAtIndex:0];
  [dictionary setObject:v21 forKey:*MEMORY[0x1E696A578]];

  v22 = [v14 objectAtIndex:1];
  null = [MEMORY[0x1E695DFB0] null];
  v24 = [v22 isEqual:null];

  if ((v24 & 1) == 0)
  {
    v25 = [v14 objectAtIndex:1];
    [dictionary setObject:v25 forKey:@"USEnglishDescription"];
  }

  if ([v14 count] >= 3)
  {
    v26 = [v14 subarrayWithRange:{2, objc_msgSend(v14, "count") - 2}];
    v27 = @"descriptionParameters";
LABEL_7:
    [dictionary setObject:v26 forKey:{v27, v34}];
  }

  if (!v15)
  {
    if (!v17)
    {
      goto LABEL_20;
    }

    mCFindPrimaryError = [v17 MCFindPrimaryError];
    if (!mCFindPrimaryError)
    {
      mCFindPrimaryError = v17;
    }

    localizedDescription = [mCFindPrimaryError localizedDescription];
    [dictionary setObject:localizedDescription forKey:*MEMORY[0x1E696A598]];

    mCUSEnglishDescription = [mCFindPrimaryError MCUSEnglishDescription];
    if (mCUSEnglishDescription)
    {
      [dictionary setObject:mCUSEnglishDescription forKey:@"USEnglishSuggestion"];
    }

    goto LABEL_19;
  }

  [dictionary setObject:v15 forKey:*MEMORY[0x1E696A598]];
  if (v16)
  {
    [dictionary setObject:v16 forKey:@"USEnglishSuggestion"];
  }

  if (v17)
  {
LABEL_19:
    [dictionary setObject:v17 forKey:*MEMORY[0x1E696AA08]];
  }

LABEL_20:
  if (v18)
  {
    [dictionary setObject:v18 forKey:@"MCErrorType"];
  }

  if (v19)
  {
    [dictionary addEntriesFromDictionary:v19];
  }

  v32 = [MEMORY[0x1E696ABC0] errorWithDomain:v35 code:v34 userInfo:dictionary];

  return v32;
}

- (id)MCVerboseDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@:\n", v5];

  localizedDescription = [self localizedDescription];
  v8 = localizedDescription;
  if (localizedDescription)
  {
    [v6 appendFormat:@"Desc   : %@\n", localizedDescription];
  }

  localizedRecoverySuggestion = [self localizedRecoverySuggestion];
  v10 = localizedRecoverySuggestion;
  if (localizedRecoverySuggestion)
  {
    [v6 appendFormat:@"Sugg   : %@\n", localizedRecoverySuggestion];
  }

  mCUSEnglishDescription = [self MCUSEnglishDescription];
  v12 = mCUSEnglishDescription;
  if (mCUSEnglishDescription)
  {
    [v6 appendFormat:@"US Desc: %@\n", mCUSEnglishDescription];
  }

  v28 = v8;
  mCUSEnglishSuggestion = [self MCUSEnglishSuggestion];
  v14 = mCUSEnglishSuggestion;
  if (mCUSEnglishSuggestion)
  {
    [v6 appendFormat:@"US Sugg: %@\n", mCUSEnglishSuggestion];
  }

  domain = [self domain];
  [v6 appendFormat:@"Domain : %@\nCode   : %d\n", domain, objc_msgSend(self, "code")];

  userInfo = [self userInfo];
  v17 = [userInfo objectForKey:@"MCErrorType"];

  if (v17)
  {
    [v6 appendFormat:@"Type   : %@\n", v17];
  }

  v27 = v10;
  userInfo2 = [self userInfo];
  v19 = [userInfo2 objectForKey:@"descriptionParameters"];

  if (v19)
  {
    [v6 appendFormat:@"Params : %@\n", v19];
  }

  userInfo3 = [self userInfo];
  v21 = *MEMORY[0x1E696AA08];
  v22 = [userInfo3 objectForKey:*MEMORY[0x1E696AA08]];

  if (v22)
  {
    mCVerboseDescription = [v22 MCVerboseDescription];
    [v6 appendFormat:@"...Underlying error:\n%@", mCVerboseDescription];
  }

  userInfo4 = [self userInfo];
  v25 = [userInfo4 mutableCopy];

  [v25 removeObjectForKey:*MEMORY[0x1E696A578]];
  [v25 removeObjectForKey:*MEMORY[0x1E696A598]];
  [v25 removeObjectForKey:@"USEnglishDescription"];
  [v25 removeObjectForKey:@"USEnglishSuggestion"];
  [v25 removeObjectForKey:@"MCErrorType"];
  [v25 removeObjectForKey:@"descriptionParameters"];
  [v25 removeObjectForKey:v21];
  if ([v25 count])
  {
    [v6 appendFormat:@"Extra info:\n%@", v25];
  }

  return v6;
}

- (id)MCFindPrimaryError
{
  userInfo = [self userInfo];
  v2 = *MEMORY[0x1E696AA08];
  v3 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

  if (v3)
  {
    while (1)
    {
      userInfo2 = [v3 userInfo];
      v5 = [userInfo2 objectForKey:@"isPrimary"];

      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v5 BOOLValue])
          {
            break;
          }
        }
      }

      userInfo3 = [v3 userInfo];
      v7 = [userInfo3 objectForKey:v2];

      v3 = v7;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v8 = v3;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  return v8;
}

- (uint64_t)MCCopyAsPrimaryError
{
  userInfo = [self userInfo];
  v3 = [userInfo mutableCopy];

  v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v3 setObject:v4 forKey:@"isPrimary"];

  v5 = MEMORY[0x1E696ABC0];
  domain = [self domain];
  v7 = [v5 errorWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v3}];

  return v7;
}

- (uint64_t)MCContainsErrorDomain:()MCExtension code:
{
  v6 = a3;
  selfCopy = self;
  if (selfCopy)
  {
    v8 = selfCopy;
    v9 = *MEMORY[0x1E696AA08];
    do
    {
      domain = [v8 domain];
      if ([domain isEqualToString:v6])
      {
        code = [v8 code];

        if (code == a4)
        {
          v14 = 1;
          goto LABEL_10;
        }
      }

      else
      {
      }

      userInfo = [v8 userInfo];
      v13 = [userInfo objectForKey:v9];

      v8 = v13;
    }

    while (v13);
    v14 = 0;
LABEL_10:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)MCUSEnglishDescription
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"USEnglishDescription"];

  return v2;
}

- (id)MCUSEnglishSuggestion
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"USEnglishSuggestion"];

  return v2;
}

- (id)MCErrorType
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"MCErrorType"];

  return v2;
}

@end
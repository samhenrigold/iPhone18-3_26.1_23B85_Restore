@interface FBKSDeviceToken
+ (id)_basicParameterWithoutLabel;
+ (id)_basicParametersForWriting;
+ (id)_queryForParticipantID:(id)d isForWriting:(BOOL)writing;
+ (id)fetchDeviceTokenForParticipantID:(id)d;
+ (void)clearAllDeviceTokens;
+ (void)clearDeviceTokenForParticipantID:(id)d;
+ (void)setDeviceToken:(id)token forParticipantID:(id)d;
@end

@implementation FBKSDeviceToken

+ (void)clearAllDeviceTokens
{
  _basicParameterWithoutLabel = [self _basicParameterWithoutLabel];

  SecItemDelete(_basicParameterWithoutLabel);
}

+ (id)fetchDeviceTokenForParticipantID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [self _queryForParticipantID:dCopy isForWriting:0];
  v6 = [v5 mutableCopy];

  [v6 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697B318]];
  result = 0;
  v7 = SecItemCopyMatching(v6, &result);
  if (v7 == -25300)
  {
    v9 = Log_1(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      unsignedLongValue = [dCopy unsignedLongValue];
      *buf = 134217984;
      v15 = unsignedLongValue;
      _os_log_impl(&dword_1B00C4000, v9, OS_LOG_TYPE_DEFAULT, "Could not find device token for participant [%lu]", buf, 0xCu);
    }
  }

  else
  {
    if (!v7)
    {
      v8 = objc_alloc(MEMORY[0x1E696AEC0]);
      v9 = result;
      v10 = [v8 initWithData:result encoding:4];
      goto LABEL_9;
    }

    v9 = Log_1(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[FBKSDeviceToken fetchDeviceTokenForParticipantID:];
    }
  }

  v10 = 0;
LABEL_9:

  return v10;
}

+ (void)setDeviceToken:(id)token forParticipantID:(id)d
{
  v24[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  tokenCopy = token;
  v8 = [self _queryForParticipantID:dCopy isForWriting:0];
  v9 = [v8 mutableCopy];

  v10 = [self _queryForParticipantID:dCopy isForWriting:1];

  v11 = [v10 mutableCopy];
  v23 = *MEMORY[0x1E697B3C0];
  v12 = [tokenCopy dataUsingEncoding:4];

  v24[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  [v11 addEntriesFromDictionary:v13];
  v14 = SecItemCopyMatching(v9, 0);
  v15 = v14;
  v16 = Log_1(v14);
  v17 = v16;
  if (v15 == -25300)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_1B00C4000, v17, OS_LOG_TYPE_DEFAULT, "Creating new token", v22, 2u);
    }

    v21 = SecItemAdd(v11, 0);
    if (v21)
    {
      v17 = Log_1(v21);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[FBKSDeviceToken setDeviceToken:forParticipantID:];
      }

      goto LABEL_19;
    }
  }

  else
  {
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[FBKSDeviceToken setDeviceToken:forParticipantID:];
      }

      goto LABEL_19;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_1B00C4000, v17, OS_LOG_TYPE_DEFAULT, "Updating existing token", v22, 2u);
    }

    v18 = SecItemDelete(v9);
    if (v18)
    {
      v19 = Log_1(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        +[FBKSDeviceToken setDeviceToken:forParticipantID:];
      }
    }

    v20 = SecItemAdd(v11, 0);
    if (v20)
    {
      v17 = Log_1(v20);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[FBKSDeviceToken setDeviceToken:forParticipantID:];
      }

LABEL_19:
    }
  }
}

+ (void)clearDeviceTokenForParticipantID:(id)d
{
  v3 = [self _queryForParticipantID:d isForWriting:0];

  SecItemDelete(v3);
}

+ (id)_basicParametersForWriting
{
  v14[6] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E697AFF8];
  v14[0] = *MEMORY[0x1E697B008];
  v3 = *MEMORY[0x1E697AE88];
  v13[0] = v2;
  v13[1] = v3;
  v4 = +[FBKSSharedConstants appleSeedURL];
  host = [v4 host];
  lowercaseString = [host lowercaseString];
  v7 = *MEMORY[0x1E697ADC8];
  v14[1] = lowercaseString;
  v14[2] = @"Feedback Assistant";
  v8 = *MEMORY[0x1E697ABD8];
  v13[2] = v7;
  v13[3] = v8;
  v9 = *MEMORY[0x1E697ABD0];
  v14[3] = *MEMORY[0x1E697ABE8];
  v14[4] = @"group.com.apple.feedback";
  v10 = *MEMORY[0x1E697B390];
  v13[4] = v9;
  v13[5] = v10;
  v14[5] = MEMORY[0x1E695E118];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:6];

  return v11;
}

+ (id)_basicParameterWithoutLabel
{
  v12[4] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E697AFF8];
  v12[0] = *MEMORY[0x1E697B008];
  v3 = *MEMORY[0x1E697AE88];
  v11[0] = v2;
  v11[1] = v3;
  v4 = +[FBKSSharedConstants appleSeedURL];
  host = [v4 host];
  lowercaseString = [host lowercaseString];
  v7 = *MEMORY[0x1E697ABD0];
  v12[1] = lowercaseString;
  v12[2] = @"group.com.apple.feedback";
  v8 = *MEMORY[0x1E697B390];
  v11[2] = v7;
  v11[3] = v8;
  v12[3] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  return v9;
}

+ (id)_queryForParticipantID:(id)d isForWriting:(BOOL)writing
{
  writingCopy = writing;
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DF90];
  dCopy = d;
  v8 = [v6 alloc];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", dCopy, *MEMORY[0x1E697AC30]];

  v16[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v11 = [v8 initWithDictionary:v10];

  if (writingCopy)
  {
    [self _basicParametersForWriting];
  }

  else
  {
    [self _basicParameterWithoutLabel];
  }
  v12 = ;
  [v11 addEntriesFromDictionary:v12];

  v13 = [v11 copy];

  return v13;
}

@end
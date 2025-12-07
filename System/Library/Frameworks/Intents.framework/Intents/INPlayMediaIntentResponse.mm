@interface INPlayMediaIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INPlayMediaIntentResponse)initWithBackingStore:(id)store;
- (INPlayMediaIntentResponse)initWithCode:(INPlayMediaIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INPlayMediaIntentResponse)initWithCoder:(id)coder;
- (INPlayMediaIntentResponseCode)code;
- (NSDictionary)nowPlayingInfo;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)_intents_prepareResponse;
- (void)encodeWithCoder:(id)coder;
- (void)setNowPlayingInfo:(NSDictionary *)nowPlayingInfo;
@end

@implementation INPlayMediaIntentResponse

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"code";
  code = [(INPlayMediaIntentResponse *)self code];
  v4 = code;
  if (code < (INPlayMediaIntentResponseCodeFailureUnknownMediaType|INPlayMediaIntentResponseCodeSuccess))
  {
    null = off_1E7285E60[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v11[1] = @"nowPlayingInfo";
  v12[0] = null;
  nowPlayingInfo = [(INPlayMediaIntentResponse *)self nowPlayingInfo];
  null2 = nowPlayingInfo;
  if (!nowPlayingInfo)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (!nowPlayingInfo)
  {
  }

  if (v4 >= 0xC)
  {
  }

  return v9;
}

- (void)setNowPlayingInfo:(NSDictionary *)nowPlayingInfo
{
  v4 = nowPlayingInfo;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDictionary(v4);

  [_responseMessagePBRepresentation setNowPlayingInfo:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSDictionary)nowPlayingInfo
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  nowPlayingInfo = [_responseMessagePBRepresentation nowPlayingInfo];
  v4 = INIntentSlotValueTransformFromDictionary(nowPlayingInfo);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INPlayMediaIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INPlayMediaIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INPlayMediaIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INPlayMediaIntentResponseCodeInProgress"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INPlayMediaIntentResponseCodeSuccess"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INPlayMediaIntentResponseCodeHandleInApp"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INPlayMediaIntentResponseCodeFailure"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INPlayMediaIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 7;
  }

  if ([nameCopy isEqualToString:@"INPlayMediaIntentResponseCodeFailureUnknownMediaType"])
  {
    v4 = 8;
  }

  if ([nameCopy isEqualToString:@"INPlayMediaIntentResponseCodeFailureNoUnplayedContent"])
  {
    v4 = 9;
  }

  if ([nameCopy isEqualToString:@"INPlayMediaIntentResponseCodeFailureRestrictedContent"])
  {
    v5 = 10;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INPlayMediaIntentResponseCodeFailureMaxStreamLimitReached"];

  if (v6)
  {
    return 11;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  code = [(INPlayMediaIntentResponse *)self code];
  if ((code - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F1C8[code - 1];
  }
}

- (INPlayMediaIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INPlayMediaIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INPlayMediaIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INPlayMediaIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INPlayMediaIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INPlayMediaIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INPlayMediaIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INPlayMediaIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INPlayMediaIntentResponse)initWithCode:(INPlayMediaIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INPlayMediaIntentResponseCodeFailureMaxStreamLimitReached)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7285E60[code];
    }

    v10 = v9;
    *buf = 136315906;
    v15 = "[INPlayMediaIntentResponse initWithCode:userActivity:]";
    v16 = 2048;
    v17 = code;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v13.receiver = self;
  v13.super_class = INPlayMediaIntentResponse;
  v11 = [(INIntentResponse *)&v13 _initWithCode:code userActivity:v6];

  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if ((code - 8) < 4)
  {
    return code - 7;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 0xA)
  {
    return 3;
  }

  else
  {
    return dword_18EE5F198[code - 1];
  }
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  v5 = 3;
  v6 = 2;
  if (type != 4)
  {
    v6 = type == 5;
  }

  if (type != 2)
  {
    v5 = v6;
  }

  v7 = 4;
  v8 = code - 1;
  v9 = 6;
  if (requested)
  {
    v9 = 7;
  }

  if (v8 >= 4)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8 | 8;
  }

  if (type != 1)
  {
    v10 = 0;
  }

  if (type)
  {
    v7 = v10;
  }

  if (type <= 1)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

- (void)_intents_prepareResponse
{
  v41 = *MEMORY[0x1E69E9840];
  nowPlayingInfo = [(INPlayMediaIntentResponse *)self nowPlayingInfo];
  if (![nowPlayingInfo count] || !MediaRemoteLibrary() || !MediaPlayerLibrary())
  {
    goto LABEL_29;
  }

  v4 = getMPMediaItemPropertyArtwork();
  v26 = [nowPlayingInfo objectForKeyedSubscript:v4];

  if (!v26)
  {
    v5 = [nowPlayingInfo objectForKeyedSubscript:getkMRMediaRemoteNowPlayingInfoArtworkData()];
    if (v5)
    {
      v26 = [INImage imageWithImageData:v5];
      v6 = [nowPlayingInfo objectForKeyedSubscript:getkMRMediaRemoteNowPlayingInfoArtworkDataWidth()];
      v7 = [nowPlayingInfo objectForKeyedSubscript:getkMRMediaRemoteNowPlayingInfoArtworkDataHeight()];
      if (v7 && v6)
      {
        [v6 doubleValue];
        v9 = v8;
        [v7 doubleValue];
        [v26 _setImageSize:{v9, v10}];
      }
    }

    else
    {
      v26 = 0;
    }
  }

  v11 = [nowPlayingInfo mutableCopy];
  v12 = getMPMediaItemPropertyArtwork();
  [v11 removeObjectForKey:v12];

  [v11 removeObjectForKey:getkMRMediaRemoteNowPlayingInfoArtworkData()];
  [v11 removeObjectForKey:getkMRMediaRemoteNowPlayingInfoArtworkDataHeight()];
  [v11 removeObjectForKey:getkMRMediaRemoteNowPlayingInfoArtworkDataWidth()];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v13 = getkMRMediaRemoteNowPlayingInfoArtworkMIMETypeSymbolLoc_ptr;
  v39 = getkMRMediaRemoteNowPlayingInfoArtworkMIMETypeSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoArtworkMIMETypeSymbolLoc_ptr)
  {
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __getkMRMediaRemoteNowPlayingInfoArtworkMIMETypeSymbolLoc_block_invoke;
    v34 = &unk_1E72888B8;
    v35 = &v36;
    v14 = MediaRemoteLibrary();
    v37[3] = dlsym(v14, "kMRMediaRemoteNowPlayingInfoArtworkMIMEType");
    getkMRMediaRemoteNowPlayingInfoArtworkMIMETypeSymbolLoc_ptr = *(v35[1] + 24);
    v13 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v13)
  {
    v24 = dlerror();
    abort_report_np("%s", v24);
    goto LABEL_32;
  }

  [v11 removeObjectForKey:*v13];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = nowPlayingInfo;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v40 count:16];
  if (v16)
  {
    v17 = *v28;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v19 hasPrefix:@"kMRMediaRemote"])
        {
          goto LABEL_28;
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v27 objects:v40 count:16];
    }

    while (v16);
  }

  v20 = v11;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v21 = getMPNowPlayingInfoDictionaryToMRNowPlayingInfoDictionarySymbolLoc_ptr;
  v39 = getMPNowPlayingInfoDictionaryToMRNowPlayingInfoDictionarySymbolLoc_ptr;
  if (!getMPNowPlayingInfoDictionaryToMRNowPlayingInfoDictionarySymbolLoc_ptr)
  {
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __getMPNowPlayingInfoDictionaryToMRNowPlayingInfoDictionarySymbolLoc_block_invoke;
    v34 = &unk_1E72888B8;
    v35 = &v36;
    v22 = MediaPlayerLibrary();
    v23 = dlsym(v22, "MPNowPlayingInfoDictionaryToMRNowPlayingInfoDictionary");
    *(v35[1] + 24) = v23;
    getMPNowPlayingInfoDictionaryToMRNowPlayingInfoDictionarySymbolLoc_ptr = *(v35[1] + 24);
    v21 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v21)
  {
    v25 = dlerror();
    abort_report_np("%s", v25);
LABEL_32:
    __break(1u);
  }

  v15 = v21(v20);

  v11 = [v15 mutableCopy];
LABEL_28:

  [v11 setObject:v26 forKeyedSubscript:@"artwork"];
  [(INPlayMediaIntentResponse *)self setNowPlayingInfo:v11];

LABEL_29:
}

@end
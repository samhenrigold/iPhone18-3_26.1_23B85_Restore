@interface SABaseCommand(INSExtensionService)
- (BOOL)ins_isJSONPayload;
- (id)ins_aceIntent;
- (id)ins_aceIntentResponse;
- (id)ins_afAnalyticsContext;
- (void)ins_invokeErrorCompletionHandler:()INSExtensionService forUnderlyingError:;
- (void)ins_invokeErrorCompletionHandler:()INSExtensionService withErrorCode:underlyingError:;
- (void)ins_sendIntent:()INSExtensionService toExtensionProxy:onQueue:completionHandler:;
@end

@implementation SABaseCommand(INSExtensionService)

- (id)ins_afAnalyticsContext
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = +[INSAnalytics sharedAnalytics];
  v3 = [v2 contextDictionaryForCommand:self];

  selfCopy = self;
  if (selfCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = selfCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  metricsContext = [v6 metricsContext];

  if (metricsContext)
  {
    v11 = @"metricsContext";
    v12[0] = metricsContext;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = IFMergeDictionaries();

    v3 = v8;
  }

  return v3;
}

- (id)ins_aceIntent
{
  ins_jsonEncodedIntent = [self ins_jsonEncodedIntent];

  if (!ins_jsonEncodedIntent || ([self ins_jsonEncodedIntent], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "dataUsingEncoding:", 4), v4 = objc_claimAutoreleasedReturnValue(), INIntentCreate(), ins_protobufEncodedIntent = objc_claimAutoreleasedReturnValue(), v4, v3, !ins_protobufEncodedIntent))
  {
    ins_protobufEncodedIntent = [self ins_protobufEncodedIntent];

    if (ins_protobufEncodedIntent)
    {
      ins_protobufEncodedIntent2 = [self ins_protobufEncodedIntent];
      typeName = [ins_protobufEncodedIntent2 typeName];
      ins_protobufEncodedIntent3 = [self ins_protobufEncodedIntent];
      data = [ins_protobufEncodedIntent3 data];
      ins_protobufEncodedIntent = INIntentCreate();
    }
  }

  return ins_protobufEncodedIntent;
}

- (BOOL)ins_isJSONPayload
{
  ins_jsonEncodedIntent = [self ins_jsonEncodedIntent];
  v2 = ins_jsonEncodedIntent != 0;

  return v2;
}

- (void)ins_invokeErrorCompletionHandler:()INSExtensionService forUnderlyingError:
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (a3)
  {
    v6 = MEMORY[0x277D47208];
    v7 = a3;
    v8 = [[v6 alloc] initWithErrorCode:-1];
    domain = [v5 domain];
    code = [v5 code];
    if (![domain isEqualToString:*MEMORY[0x277CD3838]])
    {
      v14 = [domain isEqualToString:*MEMORY[0x277CD3848]];
      v11 = @"kAFAssistantErrorDomain";
      v15 = @"kAFAssistantErrorDomain";
      if (v14)
      {
        if (code == 2005)
        {
          v17 = 1315;
          [v8 setErrorCode:1315];
          v11 = @"kAFAssistantErrorDomain";
        }

        else
        {
          v16 = 1399;
          if (code == 5001)
          {
            v16 = 1301;
          }

          if (code == 5000)
          {
            v17 = 1304;
          }

          else
          {
            v17 = v16;
          }

          v11 = @"kAFAssistantErrorDomain";
        }
      }

      else
      {
        v17 = 1399;
      }

      goto LABEL_19;
    }

    if (code == 3001)
    {
      v11 = @"kAFAssistantErrorDomain";
      v18 = @"kAFAssistantErrorDomain";
      v13 = MEMORY[0x277D484C0];
    }

    else
    {
      if (code != 3005)
      {
        v11 = @"kAFAssistantErrorDomain";
        v19 = @"kAFAssistantErrorDomain";
        v17 = 1302;
        goto LABEL_19;
      }

      v11 = @"SiriAceErrorDomain";
      v12 = @"SiriAceErrorDomain";
      v13 = MEMORY[0x277D48478];
    }

    v17 = *v13;
    [v8 setErrorCode:*v13];
LABEL_19:
    v20 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA7E8];
    v24[0] = v5;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v22 = [v20 errorWithDomain:v11 code:v17 userInfo:v21];

    v7[2](v7, v8, v22);
    kdebug_trace();
  }
}

- (void)ins_invokeErrorCompletionHandler:()INSExtensionService withErrorCode:underlyingError:
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    ins_analyticsEndEventType = [self ins_analyticsEndEventType];
    v11 = 603;
    if (a4 != 1306)
    {
      v11 = ins_analyticsEndEventType;
    }

    v24 = v11;
    if (a4 == 1316)
    {
      v12 = *MEMORY[0x277D48488];
    }

    else
    {
      v12 = a4;
    }

    v13 = [objc_alloc(MEMORY[0x277D47208]) initWithErrorCode:v12];
    if (v9)
    {
      v14 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277CCA7E8];
      v26[0] = v9;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v16 = [v14 errorWithDomain:@"kAFAssistantErrorDomain" code:a4 userInfo:v15];
    }

    else
    {
      v16 = 0;
    }

    v8[2](v8, v13, v16);
    v17 = +[INSAnalytics sharedAnalytics];
    v18 = [v17 contextDictionaryForCommand:v13];

    v19 = +[INSAnalytics sharedAnalytics];
    ins_afAnalyticsContext = [self ins_afAnalyticsContext];
    v21 = +[INSAnalytics sharedAnalytics];
    v22 = [v21 contextDictionaryForError:v16];
    v23 = IFMergeDictionaries();
    [v19 logEventWithType:v24 context:v23 contextNoCopy:{1, v18, v22, 0}];
  }
}

- (void)ins_sendIntent:()INSExtensionService toExtensionProxy:onQueue:completionHandler:
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = a6;
  v8 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    v9 = 136315394;
    v10 = "[SABaseCommand(INSExtensionService) ins_sendIntent:toExtensionProxy:onQueue:completionHandler:]";
    v11 = 2112;
    selfCopy = self;
    _os_log_error_impl(&dword_25553C000, v8, OS_LOG_TYPE_ERROR, "%s %@ delivered to the wrong service", &v9, 0x16u);
  }

  [self ins_invokeErrorCompletionHandler:v7 withErrorCode:1303 underlyingError:0];
}

- (id)ins_aceIntentResponse
{
  ins_jsonEncodedIntentResponse = [self ins_jsonEncodedIntentResponse];

  if (!ins_jsonEncodedIntentResponse || ([self ins_jsonEncodedIntentResponse], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "dataUsingEncoding:", 4), v4 = objc_claimAutoreleasedReturnValue(), INIntentResponseCreate(), v5 = objc_claimAutoreleasedReturnValue(), v4, v3, !v5))
  {
    ins_protobufEncodedIntentResponse = [self ins_protobufEncodedIntentResponse];

    if (ins_protobufEncodedIntentResponse)
    {
      ins_protobufEncodedIntentResponse2 = [self ins_protobufEncodedIntentResponse];
      data = [ins_protobufEncodedIntentResponse2 data];

      if (data)
      {
        ins_protobufEncodedIntentResponse3 = [self ins_protobufEncodedIntentResponse];
        typeName = [ins_protobufEncodedIntentResponse3 typeName];
        v5 = INIntentResponseCreate();
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end
@interface SAIntentGroupHandleIntent
@end

@implementation SAIntentGroupHandleIntent

void __108__SAIntentGroupHandleIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke(uint64_t a1)
{
  v3 = +[INSAnalytics sharedAnalytics];
  v2 = [*(a1 + 32) ins_afAnalyticsContext];
  [v3 logEventWithType:617 context:v2 contextNoCopy:1];
}

void __108__SAIntentGroupHandleIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __108__SAIntentGroupHandleIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_2_5;
  v12[3] = &unk_2797EACC0;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v13 = v6;
  v14 = v7;
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v8, v12);
}

void __108__SAIntentGroupHandleIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_2_5(id *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v2 = a1[5];
    v22 = INSExtensionServiceTraceCompletionHandlerWithCode(a1[7], 722470896);
    v3 = [a1[4] errorCode];
    v4 = [a1[4] underlyingError];
    [v2 ins_invokeErrorCompletionHandler:v22 withErrorCode:v3 underlyingError:v4];
  }

  else
  {
    v5 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      v6 = a1[6];
      v7 = v5;
      v8 = [v6 backingStore];
      *buf = 136315394;
      v24 = "[SAIntentGroupHandleIntent(INSExtensionService) ins_sendIntent:toExtensionProxy:onQueue:completionHandler:]_block_invoke_2";
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_25553C000, v7, OS_LOG_TYPE_INFO, "%s intentResponse.backingStore = %@", buf, 0x16u);
    }

    v9 = objc_alloc_init(MEMORY[0x277D473D8]);
    v10 = [a1[5] aceId];
    [v9 setRefId:v10];

    if ([a1[5] ins_isJSONPayload])
    {
      v11 = INSJSONEncodedIntentResponse(a1[6]);
      [v9 setJsonEncodedIntentResponse:v11];
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x277D47418]);
      v12 = [a1[6] backingStore];
      v13 = [v12 data];
      [v11 setData:v13];

      v14 = [a1[6] _payloadResponseTypeName];
      [v11 setTypeName:v14];

      [v9 setIntentResponse:v11];
    }

    v15 = a1[7];
    if (v15)
    {
      v15[2](v15, v9, 0);
    }

    v16 = +[INSAnalytics sharedAnalytics];
    v17 = [v16 contextDictionaryForCommand:v9];

    v18 = +[INSAnalytics sharedAnalytics];
    v19 = [a1[5] ins_analyticsEndEventType];
    v20 = [a1[5] ins_afAnalyticsContext];
    v21 = IFMergeDictionaries();
    [v18 logEventWithType:v19 context:v21 contextNoCopy:{1, v17, 0}];
  }
}

void __108__SAIntentGroupHandleIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __108__SAIntentGroupHandleIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_3;
  v8[3] = &unk_2797EAC98;
  v9 = v4;
  v10 = v5;
  v6 = v4;
  v7 = v5;
  [v6 _retrieveImageDataWithReply:v8];
}

void __108__SAIntentGroupHandleIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[SAIntentGroupHandleIntent(INSExtensionService) ins_sendIntent:toExtensionProxy:onQueue:completionHandler:]_block_invoke_3";
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&dword_25553C000, v7, OS_LOG_TYPE_ERROR, "%s Unable to retrieve image data = %@", &v12, 0x16u);
    }

    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    v9 = *(a1 + 32);
    [v5 _imageSize];
    [v9 _setImageSize:?];
    v10 = [MEMORY[0x277CD3AD0] sharedCache];
    [v10 addCacheableObject:v5];

    v11 = [MEMORY[0x277CD3AD0] sharedCache];
    [v11 addCacheableObject:*(a1 + 32)];

    v8 = *(*(a1 + 40) + 16);
  }

  v8();
}

@end
@interface SAIntentGroupResolveIntentSlot(INSExtensionService)
- (void)ins_sendIntent:()INSExtensionService toExtensionProxy:onQueue:completionHandler:;
@end

@implementation SAIntentGroupResolveIntentSlot(INSExtensionService)

- (void)ins_sendIntent:()INSExtensionService toExtensionProxy:onQueue:completionHandler:
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x277CD38C8];
  v15 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    backingStore = [v10 backingStore];
    *buf = 136315394;
    v35 = "[SAIntentGroupResolveIntentSlot(INSExtensionService) ins_sendIntent:toExtensionProxy:onQueue:completionHandler:]";
    v36 = 2112;
    v37 = backingStore;
    _os_log_impl(&dword_25553C000, v16, OS_LOG_TYPE_INFO, "%s intent.backingStore = %@", buf, 0x16u);

    v15 = *v14;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v18 = v15;
    intentSlotKeyPath = [self intentSlotKeyPath];
    *buf = 136315394;
    v35 = "[SAIntentGroupResolveIntentSlot(INSExtensionService) ins_sendIntent:toExtensionProxy:onQueue:completionHandler:]";
    v36 = 2112;
    v37 = intentSlotKeyPath;
    _os_log_impl(&dword_25553C000, v18, OS_LOG_TYPE_INFO, "%s intentSlotKeyPath = %@", buf, 0x16u);
  }

  v20 = +[INSAnalytics sharedAnalytics];
  ins_afAnalyticsContext = [self ins_afAnalyticsContext];
  [v20 logEventWithType:607 context:ins_afAnalyticsContext contextNoCopy:1];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __113__SAIntentGroupResolveIntentSlot_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke;
  v33[3] = &unk_2797EAC50;
  v33[4] = self;
  [v11 setResponseHandler:v33];
  intentSlotKeyPath2 = [self intentSlotKeyPath];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __113__SAIntentGroupResolveIntentSlot_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_2;
  v27[3] = &unk_2797EA928;
  v28 = v12;
  selfCopy = self;
  v30 = v10;
  v31 = intentSlotKeyPath2;
  v32 = v13;
  v23 = v13;
  v24 = intentSlotKeyPath2;
  v25 = v10;
  v26 = v12;
  [v11 resolveIntentSlotKeyPath:v24 completionHandler:v27];
}

@end
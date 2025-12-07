@interface WFCellularPlansManager
+ (id)dataRateToRadioAccessTechnologyModeMapping;
+ (id)modesFromDataRate:(int64_t)rate;
- (BOOL)resetCellularDataStatisticsWithError:(id *)error;
- (BOOL)setAutomaticDataLineSwitching:(BOOL)switching error:(id *)error;
- (BOOL)setDefaultDataLineToPlan:(id)plan error:(id *)error;
- (BOOL)setDefaultVoiceLineToPlan:(id)plan error:(id *)error;
- (BOOL)setPlanStatus:(BOOL)status forPlan:(id)plan error:(id *)error;
- (NSArray)allPlans;
- (WFCellularPlansManager)init;
- (id)contexts;
@end

@implementation WFCellularPlansManager

- (id)contexts
{
  v13 = *MEMORY[0x277D85DE8];
  client = [(WFCellularPlansManager *)self client];
  v8 = 0;
  v3 = [client getSubscriptionInfoWithError:&v8];
  v4 = v8;

  if (v4)
  {
    v5 = getWFActionsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[WFCellularPlansManager contexts]";
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_23DE30000, v5, OS_LOG_TYPE_ERROR, "%s Failed to get CTXPCServiceSubscriptionInfo with error: %@", buf, 0x16u);
    }
  }

  subscriptions = [v3 subscriptions];

  return subscriptions;
}

- (BOOL)setPlanStatus:(BOOL)status forPlan:(id)plan error:(id *)error
{
  statusCopy = status;
  v27 = *MEMORY[0x277D85DE8];
  planCopy = plan;
  v8 = getWFActionsLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    label = [planCopy label];
    *buf = 136315650;
    v24 = "[WFCellularPlansManager setPlanStatus:forPlan:error:]";
    v25 = 1024;
    *v26 = statusCopy;
    *&v26[4] = 2112;
    *&v26[6] = label;
    _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_DEBUG, "%s Setting status to %d for plan with label %@", buf, 0x1Cu);
  }

  sharedManager = [getCTCellularPlanManagerClass() sharedManager];
  v11 = [sharedManager planItemsShouldUpdate:1];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __54__WFCellularPlansManager_setPlanStatus_forPlan_error___block_invoke;
  v21[3] = &unk_278C1C348;
  v12 = planCopy;
  v22 = v12;
  v13 = [v11 if_firstObjectPassingTest:v21];
  if (v13)
  {
    v14 = [sharedManager didSelectPlanItem:v13 isEnable:statusCopy];
    v15 = v14 == 0;
    v16 = getWFActionsLogObject();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      if (v17)
      {
        *buf = 136315650;
        v24 = "[WFCellularPlansManager setPlanStatus:forPlan:error:]";
        v25 = 2112;
        *v26 = v12;
        *&v26[8] = 2112;
        *&v26[10] = v14;
        _os_log_impl(&dword_23DE30000, v16, OS_LOG_TYPE_ERROR, "%s Failed to set plan item state for plan %@: %@", buf, 0x20u);
      }

      if (error)
      {
        v18 = v14;
        *error = v14;
      }
    }

    else
    {
      if (v17)
      {
        *buf = 136315650;
        v24 = "[WFCellularPlansManager setPlanStatus:forPlan:error:]";
        v25 = 1024;
        *v26 = statusCopy;
        *&v26[4] = 2112;
        *&v26[6] = v12;
        _os_log_impl(&dword_23DE30000, v16, OS_LOG_TYPE_ERROR, "%s Successfully set plan item state to %d for plan %@", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v19 = getWFActionsLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v24 = "[WFCellularPlansManager setPlanStatus:forPlan:error:]";
      _os_log_impl(&dword_23DE30000, v19, OS_LOG_TYPE_ERROR, "%s Could not find a valid plan item, bailing out.", buf, 0xCu);
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7CB30] code:5 userInfo:0];
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

uint64_t __54__WFCellularPlansManager_setPlanStatus_forPlan_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 iccid];
  v4 = [*(a1 + 32) iccid];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (BOOL)resetCellularDataStatisticsWithError:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v12[0] = 0;
  v13 = 0u;
  v14 = 0;
  v12[1] = self;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v4 = get_CTServerConnectionCreateWithIdentifierSymbolLoc_ptr;
  v18 = get_CTServerConnectionCreateWithIdentifierSymbolLoc_ptr;
  if (!get_CTServerConnectionCreateWithIdentifierSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v20 = __get_CTServerConnectionCreateWithIdentifierSymbolLoc_block_invoke;
    v21 = &unk_278C222B8;
    v22 = &v15;
    v5 = CoreTelephonyLibrary_20875();
    v6 = dlsym(v5, "_CTServerConnectionCreateWithIdentifier");
    *(v22[1] + 24) = v6;
    get_CTServerConnectionCreateWithIdentifierSymbolLoc_ptr = *(v22[1] + 24);
    v4 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v4)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CTServerConnectionRef WFCTServerConnectionCreateWithIdentifier(CFAllocatorRef, CFStringRef, CTServerConnectionCallback, _CTServerConnectionContext *)"}];
    [currentHandler handleFailureInFunction:v11 file:@"WFCellularManager.m" lineNumber:37 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v7 = (v4)(*MEMORY[0x277CBECE8], @"com.apple.shortcuts", WFCoreTelephonyConnectionCallbackStub, v12);
  if (v7)
  {
    _CTServerConnectionEraseCellularDataUsageRecords();
    CFRelease(v7);
  }

  else
  {
    v8 = getWFActionsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[WFCellularPlansManager resetCellularDataStatisticsWithError:]";
      _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_ERROR, "%s Failed to get CTServerConnection", &buf, 0xCu);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7CB30] code:16 userInfo:0];
    }
  }

  return v7 != 0;
}

- (BOOL)setAutomaticDataLineSwitching:(BOOL)switching error:(id *)error
{
  switchingCopy = switching;
  v14 = *MEMORY[0x277D85DE8];
  v6 = getWFActionsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315394;
    v11 = "[WFCellularPlansManager setAutomaticDataLineSwitching:error:]";
    v12 = 1024;
    v13 = switchingCopy;
    _os_log_impl(&dword_23DE30000, v6, OS_LOG_TYPE_DEBUG, "%s Setting automatic data line switching to %d", &v10, 0x12u);
  }

  client = [(WFCellularPlansManager *)self client];
  v8 = [client setSupportDynamicDataSimSwitch:switchingCopy];

  return 1;
}

- (BOOL)setDefaultDataLineToPlan:(id)plan error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  planCopy = plan;
  v7 = getWFActionsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    label = [planCopy label];
    v12 = 136315394;
    v13 = "[WFCellularPlansManager setDefaultDataLineToPlan:error:]";
    v14 = 2112;
    v15 = label;
    _os_log_impl(&dword_23DE30000, v7, OS_LOG_TYPE_DEBUG, "%s Setting default data line to plan with label %@", &v12, 0x16u);
  }

  client = [(WFCellularPlansManager *)self client];
  ctContext = [planCopy ctContext];
  [client setActiveUserDataSelection:ctContext error:error];

  return 1;
}

- (BOOL)setDefaultVoiceLineToPlan:(id)plan error:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  planCopy = plan;
  isDataOnlyLine = [planCopy isDataOnlyLine];
  v8 = getWFActionsLogObject();
  v9 = v8;
  if (!isDataOnlyLine)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      label = [planCopy label];
      v16 = 136315394;
      v17 = "[WFCellularPlansManager setDefaultVoiceLineToPlan:error:]";
      v18 = 2112;
      v19 = label;
      _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_DEBUG, "%s Setting default voice line to plan with label %@", &v16, 0x16u);
    }

    client = [(WFCellularPlansManager *)self client];
    ctContext = [planCopy ctContext];
    [client setDefaultVoice:ctContext error:error];
    goto LABEL_9;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315138;
    v17 = "[WFCellularPlansManager setDefaultVoiceLineToPlan:error:]";
    _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_ERROR, "%s Cannot use data-only line as voice line, bailing out", &v16, 0xCu);
  }

  if (error)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D7CB30];
    v20 = *MEMORY[0x277CCA450];
    client = WFLocalizedString(@"Cannot set a data-only cellular plan as the Default Voice Line.");
    v21[0] = client;
    ctContext = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *error = [v10 errorWithDomain:v11 code:5 userInfo:ctContext];
LABEL_9:
  }

  return isDataOnlyLine ^ 1;
}

- (NSArray)allPlans
{
  v21 = *MEMORY[0x277D85DE8];
  sharedManager = [getCTCellularPlanManagerClass() sharedManager];
  v4 = [sharedManager planItemsShouldUpdate:1];
  client = [(WFCellularPlansManager *)self client];
  v16 = 0;
  v6 = [client getSubscriptionInfoWithError:&v16];
  v7 = v16;

  if (v7)
  {
    v8 = getWFActionsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[WFCellularPlansManager allPlans]";
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_ERROR, "%s Failed to get CTXPCServiceSubscriptionInfo with error: %@", buf, 0x16u);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    subscriptions = [v6 subscriptions];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __34__WFCellularPlansManager_allPlans__block_invoke;
    v12[3] = &unk_278C1C320;
    v13 = sharedManager;
    v14 = subscriptions;
    selfCopy = self;
    v8 = subscriptions;
    v9 = [v4 if_compactMap:v12];
  }

  return v9;
}

WFCellularPlan *__34__WFCellularPlansManager_allPlans__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  v5 = [*(a1 + 32) getSubscriptionContextUUIDforPlan:v3];
  v6 = [v4 initWithUUIDString:v5];

  v7 = *(a1 + 40);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __34__WFCellularPlansManager_allPlans__block_invoke_2;
  v17[3] = &unk_278C1C2F8;
  v8 = v6;
  v18 = v8;
  v9 = [v7 if_firstObjectPassingTest:v17];
  if (!v9)
  {
    v10 = getWFActionsLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 UUIDString];
      *buf = 136315394;
      v20 = "[WFCellularPlansManager allPlans]_block_invoke";
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_23DE30000, v10, OS_LOG_TYPE_DEFAULT, "%s CTXPCServiceSubscriptionContext couldn't be created (%@), still creating cellular plan but some functionality may not be available.", buf, 0x16u);
    }
  }

  if ([v9 isSimHidden])
  {
    v12 = getWFActionsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v8 UUIDString];
      *buf = 136315394;
      v20 = "[WFCellularPlansManager allPlans]_block_invoke";
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_23DE30000, v12, OS_LOG_TYPE_INFO, "%s Won't create a WFCellularPlan for contextUUID %@ because that SIM is hidden", buf, 0x16u);
    }

    v14 = 0;
  }

  else
  {
    v15 = [WFCellularPlan alloc];
    v12 = [*(a1 + 48) client];
    v14 = [(WFCellularPlan *)v15 initWithCTXPCServiceSubscriptionContext:v9 client:v12 planItem:v3];
  }

  return v14;
}

uint64_t __34__WFCellularPlansManager_allPlans__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (WFCellularPlansManager)init
{
  v13.receiver = self;
  v13.super_class = WFCellularPlansManager;
  v2 = [(WFCellularPlansManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
    v5 = dispatch_queue_create("com.apple.shortcuts.WFCellularPlansManager", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v7 = getCoreTelephonyClientClass_softClass_20990;
    v18 = getCoreTelephonyClientClass_softClass_20990;
    if (!getCoreTelephonyClientClass_softClass_20990)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __getCoreTelephonyClientClass_block_invoke_20991;
      v14[3] = &unk_278C222B8;
      v14[4] = &v15;
      __getCoreTelephonyClientClass_block_invoke_20991(v14);
      v7 = v16[3];
    }

    v8 = v7;
    _Block_object_dispose(&v15, 8);
    v9 = [[v7 alloc] initWithQueue:v2->_queue];
    client = v2->_client;
    v2->_client = v9;

    v11 = v2;
  }

  return v2;
}

+ (id)dataRateToRadioAccessTechnologyModeMapping
{
  v5[9] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_28509BA38;
  v4[1] = &unk_28509BA50;
  v5[0] = &unk_28509CDA0;
  v5[1] = &unk_28509CDB8;
  v4[2] = &unk_28509BA68;
  v4[3] = &unk_28509BA80;
  v5[2] = &unk_28509CDD0;
  v5[3] = &unk_28509CDE8;
  v4[4] = &unk_28509BA98;
  v4[5] = &unk_28509BAB0;
  v5[4] = &unk_28509CE00;
  v5[5] = &unk_28509CE18;
  v4[6] = &unk_28509BAC8;
  v4[7] = &unk_28509BAE0;
  v5[6] = &unk_28509CE30;
  v5[7] = &unk_28509CE48;
  v4[8] = &unk_28509BB10;
  v5[8] = &unk_28509CE60;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:9];

  return v2;
}

+ (id)modesFromDataRate:(int64_t)rate
{
  dataRateToRadioAccessTechnologyModeMapping = [self dataRateToRadioAccessTechnologyModeMapping];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:rate];
  v6 = [dataRateToRadioAccessTechnologyModeMapping objectForKey:v5];

  return v6;
}

@end
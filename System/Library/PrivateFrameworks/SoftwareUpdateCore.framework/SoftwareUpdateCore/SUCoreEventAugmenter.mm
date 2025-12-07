@interface SUCoreEventAugmenter
+ (void)augmentEvent:(id)event withDescriptor:(id)descriptor specifyAlternateUpdate:(BOOL)update;
+ (void)augmentEvent:(id)event withPolicy:(id)policy;
+ (void)augmentEvent:(id)event withPolicy:(id)policy primaryDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor;
- (SUCoreEventAugmenter)init;
- (void)augmentEvent:(id)event;
- (void)setAlternateDescriptor:(id)descriptor;
- (void)setPolicy:(id)policy;
- (void)setPrimaryDescriptor:(id)descriptor;
@end

@implementation SUCoreEventAugmenter

- (SUCoreEventAugmenter)init
{
  v7.receiver = self;
  v7.super_class = SUCoreEventAugmenter;
  v2 = [(SUCoreEventAugmenter *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.su.eventAugmenter", v3);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v4;
  }

  return v2;
}

- (void)setPolicy:(id)policy
{
  policyCopy = policy;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__SUCoreEventAugmenter_setPolicy___block_invoke;
  v7[3] = &unk_27892D478;
  v7[4] = self;
  v8 = policyCopy;
  v6 = policyCopy;
  dispatch_sync(stateQueue, v7);
}

- (void)setPrimaryDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SUCoreEventAugmenter_setPrimaryDescriptor___block_invoke;
  v7[3] = &unk_27892D478;
  v7[4] = self;
  v8 = descriptorCopy;
  v6 = descriptorCopy;
  dispatch_sync(stateQueue, v7);
}

- (void)setAlternateDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SUCoreEventAugmenter_setAlternateDescriptor___block_invoke;
  v7[3] = &unk_27892D478;
  v7[4] = self;
  v8 = descriptorCopy;
  v6 = descriptorCopy;
  dispatch_sync(stateQueue, v7);
}

- (void)augmentEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__SUCoreEventAugmenter_augmentEvent___block_invoke;
  v7[3] = &unk_27892D478;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_sync(stateQueue, v7);
}

+ (void)augmentEvent:(id)event withPolicy:(id)policy
{
  eventCopy = event;
  policyCopy = policy;
  if (!eventCopy)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    requestedProductMarketingVersion = mEMORY[0x277D64428];
    v11 = @"missing required event param";
LABEL_10:
    [mEMORY[0x277D64428] trackAnomaly:@"[EVENT_AUGMENTER]" forReason:v11 withResult:8101 withError:0];
    goto LABEL_11;
  }

  if (!policyCopy)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    requestedProductMarketingVersion = mEMORY[0x277D64428];
    v11 = @"missing required policy param";
    goto LABEL_10;
  }

  if ([policyCopy isSupervisedPolicy])
  {
    [eventCopy setSafeObject:*MEMORY[0x277D647A8] forKey:*MEMORY[0x277D646C0]];
  }

  delayPeriodDays = [policyCopy delayPeriodDays];
  if (delayPeriodDays >= 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:delayPeriodDays];
    [eventCopy setSafeObject:v7 forKey:*MEMORY[0x277D645B8]];
  }

  requestedProductMarketingVersion = [policyCopy requestedProductMarketingVersion];
  [eventCopy setSafeObject:requestedProductMarketingVersion forKey:*MEMORY[0x277D64698]];
  mdmPathName = [policyCopy mdmPathName];
  [eventCopy setSafeObject:mdmPathName forKey:*MEMORY[0x277D64628]];

LABEL_11:
}

+ (void)augmentEvent:(id)event withDescriptor:(id)descriptor specifyAlternateUpdate:(BOOL)update
{
  updateCopy = update;
  eventCopy = event;
  descriptorCopy = descriptor;
  v9 = descriptorCopy;
  if (descriptorCopy)
  {
    v10 = updateCopy && [descriptorCopy descriptorAudienceType] == 2;
    productBuildVersion = [v9 productBuildVersion];
    [eventCopy setSafeObject:? forKey:?];
    updateTypeName = [v9 updateTypeName];
    [eventCopy setSafeObject:? forKey:?];
    v12 = *MEMORY[0x277D647A8];
    v13 = *MEMORY[0x277D64730];
    if ([v9 rampEnabled])
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    v42 = v14;
    [eventCopy setSafeObject:? forKey:?];
    v41 = +[SUCoreDescriptor nameForDescriptorAudienceType:](SUCoreDescriptor, "nameForDescriptorAudienceType:", [v9 descriptorAudienceType]);
    [eventCopy setSafeObject:? forKey:?];
    v40 = +[SUCoreDescriptor nameForDescriptorPreferredUpdateType:](SUCoreDescriptor, "nameForDescriptorPreferredUpdateType:", [v9 preferredUpdateType]);
    [eventCopy setSafeObject:? forKey:?];
    if ([v9 mandatoryUpdateEligible])
    {
      v15 = v12;
    }

    else
    {
      v15 = v13;
    }

    v39 = v15;
    [eventCopy setSafeObject:? forKey:?];
    if ([v9 mandatoryUpdateOptional])
    {
      v16 = v12;
    }

    else
    {
      v16 = v13;
    }

    v38 = v16;
    [eventCopy setSafeObject:? forKey:?];
    associatedSplatDescriptor = [v9 associatedSplatDescriptor];
    if (associatedSplatDescriptor)
    {
      v18 = v12;
    }

    else
    {
      v18 = v13;
    }

    v19 = v18;
    [eventCopy setSafeObject:v19 forKey:*MEMORY[0x277D64690]];
    v36 = v19;
    if (v19)
    {
      productBuildVersion2 = [associatedSplatDescriptor productBuildVersion];
      [eventCopy setSafeObject:productBuildVersion2 forKey:*MEMORY[0x277D64688]];
    }

    v37 = associatedSplatDescriptor;
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "totalRequiredFreeSpace")}];
    v22 = MEMORY[0x277D64580];
    if (!v10)
    {
      v22 = MEMORY[0x277D646D0];
    }

    [eventCopy setSafeObject:v21 forKey:*v22];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "preSUStagingRequiredSize")}];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "preSUStagingOptionalSize")}];
    if ([v9 enablePreSUStaging])
    {
      v25 = v12;
    }

    else
    {
      v25 = v13;
    }

    v26 = MEMORY[0x277CCABB0];
    v27 = v25;
    v28 = [v26 numberWithUnsignedLongLong:{objc_msgSend(v9, "preSUStagingMaxSize")}];
    [eventCopy setSafeObject:v23 forKey:*MEMORY[0x277D64670]];
    [eventCopy setSafeObject:v24 forKey:*MEMORY[0x277D64668]];
    [eventCopy setSafeObject:v27 forKey:*MEMORY[0x277D64658]];

    [eventCopy setSafeObject:v28 forKey:*MEMORY[0x277D64660]];
    v45 = 0;
    v46 = 0;
    v29 = [SUCoreSpace cacheDeleteGetReserveSpace:&v46 withError:&v45];
    v30 = v46;
    v31 = v45;
    v32 = v31;
    if (!v29 && !v31)
    {
      v33 = [v30 safeObjectForKey:@"CACHE_DELETE_RESERVE_SPACE_FILESYSTEM_AMOUNT" ofClass:objc_opt_class()];
      [v30 safeObjectForKey:@"CACHE_DELETE_RESERVE_SPACE_AMOUNT" ofClass:objc_opt_class()];
      v35 = v34 = v21;
      [eventCopy setSafeObject:v33 forKey:*MEMORY[0x277D64860]];
      [eventCopy setSafeObject:v35 forKey:*MEMORY[0x277D64858]];

      v21 = v34;
    }
  }

  else
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackAnomaly:@"[EVENT_AUGMENTER]" forReason:@"missing required descriptor param" withResult:8101 withError:0];
  }
}

+ (void)augmentEvent:(id)event withPolicy:(id)policy primaryDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor
{
  eventCopy = event;
  policyCopy = policy;
  descriptorCopy = descriptor;
  alternateDescriptorCopy = alternateDescriptor;
  if (!eventCopy)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackAnomaly:@"[EVENT_AUGMENTER]" forReason:@"missing required event param" withResult:8101 withError:0];

    goto LABEL_11;
  }

  if (!policyCopy)
  {
    mEMORY[0x277D64428]2 = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428]2 trackAnomaly:@"[EVENT_AUGMENTER]" forReason:@"missing required policy param" withResult:8101 withError:0];

    if (descriptorCopy)
    {
      goto LABEL_4;
    }

LABEL_15:
    mEMORY[0x277D64428]3 = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428]3 trackAnomaly:@"[EVENT_AUGMENTER]" forReason:@"missing required descriptor param" withResult:8101 withError:0];

    goto LABEL_4;
  }

  if (!descriptorCopy)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (policyCopy)
  {
    [SUCoreEventAugmenter augmentEvent:eventCopy withPolicy:policyCopy];
  }

  if (descriptorCopy)
  {
    [SUCoreEventAugmenter augmentEvent:eventCopy withDescriptor:descriptorCopy specifyAlternateUpdate:alternateDescriptorCopy != 0];
  }

  if (alternateDescriptorCopy)
  {
    [SUCoreEventAugmenter augmentEvent:eventCopy withDescriptor:alternateDescriptorCopy specifyAlternateUpdate:descriptorCopy != 0];
  }

LABEL_11:
}

@end
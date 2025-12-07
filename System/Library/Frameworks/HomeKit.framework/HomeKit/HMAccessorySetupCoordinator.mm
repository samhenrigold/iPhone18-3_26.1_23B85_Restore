@interface HMAccessorySetupCoordinator
+ (BOOL)isCHIPSetupPayloadURL:(id)l;
+ (BOOL)isHAPSetupPayloadURL:(id)l;
+ (BOOL)isSetupPayloadURL:(id)l;
+ (BOOL)isSetupPayloadURLString:(id)string;
+ (NSUUID)UUID;
+ (id)communicationProtocolForSetupPayloadURLString:(id)string;
+ (id)logCategory;
+ (id)setupPayloadURLFromSetupPayloadURLString:(id)string;
- (HMAccessorySetupCoordinator)init;
- (HMAccessorySetupCoordinator)initWithContext:(id)context;
- (NSUUID)messageTargetUUID;
- (void)_createCHIPSetupAccessoryPayloadWithMessagePayload:(void *)payload activity:(void *)activity completionHandler:;
- (void)cancelStagedCHIPAccessoryPairingWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)cancelStagingForStagingRequestUUID:(id)d completionHandler:(id)handler;
- (void)configure;
- (void)confirmDeviceCredentialForStagingRequestUUID:(id)d;
- (void)createCHIPSetupPayloadStringForStagedPairingWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)createSetupAccessoryPayloadWithCHIPDecimalStringRepresentation:(id)representation completionHandler:(id)handler;
- (void)createSetupAccessoryPayloadWithSetupPayloadURL:(id)l completionHandler:(id)handler;
- (void)createSetupAccessoryPayloadWithSetupPayloadURLString:(id)string completionHandler:(id)handler;
- (void)dealloc;
- (void)handleCommissioneeInfoMessage:(id)message;
- (void)handleMultiStepStageResponseError:(void *)error payload:(void *)payload activity:;
- (void)handleUpdateStagingProgressMessage:(id)message;
- (void)rejectDeviceCredentialForStagingRequestUUID:(id)d;
- (void)selectThreadNetworkAssociation:(id)association forStagingRequestUUID:(id)d;
- (void)selectWiFiNetworkAssociation:(id)association forStagingRequestUUID:(id)d;
- (void)stageCHIPAccessoryPairingInStepsWithPayload:(id)payload delegate:(id)delegate scanningNetworks:(BOOL)networks completionHandler:(id)handler;
@end

@implementation HMAccessorySetupCoordinator

- (HMAccessorySetupCoordinator)init
{
  v3 = [(HMXPCMessageTransportConfiguration *)[HMMutableXPCMessageTransportConfiguration alloc] initWithMachServiceName:@"com.apple.homed.xpc.accessory-setup"];
  v4 = HMDispatchQueueNameString(self, 0);
  uTF8String = [v4 UTF8String];
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create(uTF8String, v6);
  [(HMXPCMessageTransportConfiguration *)v3 setQueue:v7];

  [(HMXPCMessageTransportConfiguration *)v3 setRequiresHomeDataAccess:0];
  v8 = [[_HMContext alloc] initWithXPCClientConfiguration:v3];
  v9 = [(HMAccessorySetupCoordinator *)self initWithContext:v8];

  return v9;
}

- (void)configure
{
  if (self)
  {
    v3 = [objc_getProperty(self a2];
    [v3 registerForMessage:@"HMASC.m.updateStagingProgress" receiver:self selector:sel_handleUpdateStagingProgressMessage_];
    [v3 registerForMessage:@"HMASC.m.commissioneeInfo" receiver:self selector:sel_handleCommissioneeInfoMessage_];
  }
}

- (NSUUID)messageTargetUUID
{
  v2 = objc_opt_class();

  return [v2 UUID];
}

- (void)handleCommissioneeInfoMessage:(id)message
{
  v27[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  messagePayload = [messageCopy messagePayload];
  v6 = [messagePayload hmf_UUIDForKey:@"HMASC.mk.stagingRequestUUID"];

  messagePayload2 = [messageCopy messagePayload];
  v27[0] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v9 = [messagePayload2 hmf_unarchivedObjectForKey:@"HMASC.mk.commissioneeInfo" ofClasses:v8];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v6 && v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v14;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Calling didReceiveCommissioneeInfo for staging request %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    if (selfCopy)
    {
      objc_getProperty(selfCopy, v15, 24, 1);
    }

    if (objc_opt_respondsToSelector())
    {
      if (selfCopy)
      {
        Property = objc_getProperty(selfCopy, v16, 8, 1);
      }

      else
      {
        Property = 0;
      }

      delegateCaller = [Property delegateCaller];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __61__HMAccessorySetupCoordinator_handleCommissioneeInfoMessage___block_invoke;
      v20[3] = &unk_1E754E5E8;
      v20[4] = selfCopy;
      v21 = v9;
      v22 = v6;
      [delegateCaller invokeBlock:v20];
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v19;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Ignoring Commissionee Info message without required parameters", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }
}

uint64_t __61__HMAccessorySetupCoordinator_handleCommissioneeInfoMessage___block_invoke(void *a1, const char *a2)
{
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 24, 1);
  }

  v4 = a1[5];
  v5 = a1[6];

  return [Property didReceiveCommissioneeInfo:v4 forStagingRequestUUID:v5];
}

- (void)handleUpdateStagingProgressMessage:(id)message
{
  v32 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  messagePayload = [messageCopy messagePayload];
  v6 = [messagePayload hmf_UUIDForKey:@"HMASC.mk.stagingRequestUUID"];

  messagePayload2 = [messageCopy messagePayload];
  v8 = [messagePayload2 hmf_numberForKey:@"HMASC.mk.setupAccessoryProgress"];

  if (v6 && v8)
  {
    unsignedIntegerValue = [v8 unsignedIntegerValue];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = HMSetupAccessoryProgressAsString(unsignedIntegerValue);
      *buf = 138543874;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateProgress with '%@' for staging request %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    if (selfCopy)
    {
      objc_getProperty(selfCopy, v15, 24, 1);
    }

    if (objc_opt_respondsToSelector())
    {
      if (selfCopy)
      {
        Property = objc_getProperty(selfCopy, v16, 8, 1);
      }

      else
      {
        Property = 0;
      }

      delegateCaller = [Property delegateCaller];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __66__HMAccessorySetupCoordinator_handleUpdateStagingProgressMessage___block_invoke;
      v23[3] = &unk_1E754E120;
      v23[4] = selfCopy;
      v25 = unsignedIntegerValue;
      v24 = v6;
      [delegateCaller invokeBlock:v23];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v22;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Ignoring Update Staging Progress message without required parameters", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }
}

uint64_t __66__HMAccessorySetupCoordinator_handleUpdateStagingProgressMessage___block_invoke(void *a1, const char *a2)
{
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 24, 1);
  }

  v5 = a1[5];
  v4 = a1[6];

  return [Property didUpdateProgress:v4 forStagingRequestUUID:v5];
}

- (void)cancelStagedCHIPAccessoryPairingWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
LABEL_8:
    Property = 0;
    goto LABEL_6;
  }

  v12 = handlerCopy;
  v13 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Cancel staged CHIP accessory pairing"];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    identifier = [v13 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v31 = v17;
    v32 = 2114;
    v33 = shortDescription;
    v34 = 2112;
    v35 = identifierCopy;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Canceling staged CHIP accessory pairing with identifier: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v20 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [objc_opt_class() UUID];
  v5 = [v20 initWithTarget:uUID];

  v28 = @"HMASC.mk.chipAccessoryPairingIdentifier";
  v29 = identifierCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v7 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASC.m.cancelStagedCHIPAccessoryPairing" destination:v5 payload:v6];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __96__HMAccessorySetupCoordinator_cancelStagedCHIPAccessoryPairingWithIdentifier_completionHandler___block_invoke;
  v25[3] = &unk_1E754E480;
  v25[4] = selfCopy;
  v26 = v13;
  v27 = v12;
  handler = v12;
  v4 = v13;
  [v7 setResponseHandler:v25];
  if (!selfCopy)
  {
    goto LABEL_8;
  }

  Property = objc_getProperty(selfCopy, v22, 8, 1);
LABEL_6:
  messageDispatcher = [Property messageDispatcher];
  [messageDispatcher sendMessage:v7];
}

void __96__HMAccessorySetupCoordinator_cancelStagedCHIPAccessoryPairingWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    *v21 = 138543874;
    *&v21[4] = v11;
    *&v21[12] = 2114;
    *&v21[14] = v13;
    *&v21[22] = 2112;
    v22 = v5;
    v14 = "%{public}@[%{public}@] Failed to cancel CHIP accessory pairing: %@";
    v15 = v10;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    *v21 = 138543618;
    *&v21[4] = v11;
    *&v21[12] = 2114;
    *&v21[14] = v13;
    v14 = "%{public}@[%{public}@] Successfully canceled CHIP accessory pairing";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 22;
  }

  _os_log_impl(&dword_19BB39000, v15, v16, v14, v21, v17);

LABEL_7:
  objc_autoreleasePoolPop(v7);
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v18, 8, 1);
  }

  v20 = [Property delegateCaller];
  [v20 callCompletion:*(a1 + 48) error:v5];
}

- (void)createCHIPSetupPayloadStringForStagedPairingWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  handler = handlerCopy;
  if (!handlerCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
LABEL_10:
    Property = 0;
    goto LABEL_7;
  }

  v12 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Create CHIP setup code"];
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    identifier = [v12 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v30 = v16;
    v31 = 2114;
    v32 = shortDescription;
    v33 = 2112;
    v34 = identifierCopy;
    _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Creating CHIP setup payload string for staged accessory pairing with identifier: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v19 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [objc_opt_class() UUID];
  v5 = [v19 initWithTarget:uUID];

  v27 = @"HMASC.mk.chipAccessoryPairingIdentifier";
  v28 = identifierCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v7 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASC.m.createCHIPSetupPayloadString" destination:v5 payload:v6];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __108__HMAccessorySetupCoordinator_createCHIPSetupPayloadStringForStagedPairingWithIdentifier_completionHandler___block_invoke;
  v24[3] = &unk_1E754E480;
  v24[4] = selfCopy;
  v25 = v12;
  handlerCopy2 = handler;
  handler = handler;
  v4 = v12;
  [v7 setResponseHandler:v24];
  if (!selfCopy)
  {
    goto LABEL_10;
  }

  Property = objc_getProperty(selfCopy, v21, 8, 1);
LABEL_7:
  messageDispatcher = [Property messageDispatcher];
  [messageDispatcher sendMessage:v7];
}

void __108__HMAccessorySetupCoordinator_createCHIPSetupPayloadStringForStagedPairingWithIdentifier_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_stringForKey:@"HMASC.mk.setupPayloadString"];
  v8 = objc_autoreleasePoolPush();
  v9 = a1[4];
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[5] identifier];
      v14 = [v13 shortDescription];
      *buf = 138543874;
      v36 = v12;
      v37 = 2114;
      v38 = v14;
      v39 = 2112;
      v40 = v7;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully created CHIP setup payload string: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    Property = a1[4];
    if (Property)
    {
      Property = objc_getProperty(Property, v15, 8, 1);
    }

    v17 = [Property delegateCaller];
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __108__HMAccessorySetupCoordinator_createCHIPSetupPayloadStringForStagedPairingWithIdentifier_completionHandler___block_invoke_143;
    v29 = &unk_1E754E458;
    v18 = &v31;
    v31 = a1[6];
    v19 = &v30;
    v30 = v7;
    v20 = &v26;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [a1[5] identifier];
      v23 = [v22 shortDescription];
      *buf = 138544130;
      v36 = v21;
      v37 = 2114;
      v38 = v23;
      v39 = 2112;
      v40 = v6;
      v41 = 2112;
      v42 = v5;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Could not find CHIP setup payload string in response payload %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v25 = a1[4];
    if (v25)
    {
      v25 = objc_getProperty(v25, v24, 8, 1);
    }

    v17 = [v25 delegateCaller];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __108__HMAccessorySetupCoordinator_createCHIPSetupPayloadStringForStagedPairingWithIdentifier_completionHandler___block_invoke_142;
    v32[3] = &unk_1E754E458;
    v18 = &v34;
    v34 = a1[6];
    v19 = &v33;
    v33 = v5;
    v20 = v32;
  }

  [v17 invokeBlock:{v20, v26, v27, v28, v29, v30}];
}

- (void)cancelStagingForStagingRequestUUID:(id)d completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
LABEL_8:
    Property = 0;
    goto LABEL_6;
  }

  v12 = handlerCopy;
  v13 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Cancel staging"];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    identifier = [v13 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v31 = v17;
    v32 = 2114;
    v33 = shortDescription;
    v34 = 2112;
    v35 = dCopy;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Cancelling staging with request UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v20 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [objc_opt_class() UUID];
  v5 = [v20 initWithTarget:uUID];

  v28 = @"HMASC.mk.stagingRequestUUID";
  v29 = dCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v7 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASC.m.cancelStaging" destination:v5 payload:v6];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __84__HMAccessorySetupCoordinator_cancelStagingForStagingRequestUUID_completionHandler___block_invoke;
  v25[3] = &unk_1E754E480;
  v25[4] = selfCopy;
  v26 = v13;
  v27 = v12;
  handler = v12;
  v4 = v13;
  [v7 setResponseHandler:v25];
  if (!selfCopy)
  {
    goto LABEL_8;
  }

  Property = objc_getProperty(selfCopy, v22, 8, 1);
LABEL_6:
  messageDispatcher = [Property messageDispatcher];
  [messageDispatcher sendMessage:v7];
}

void __84__HMAccessorySetupCoordinator_cancelStagingForStagingRequestUUID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    *v21 = 138543874;
    *&v21[4] = v11;
    *&v21[12] = 2114;
    *&v21[14] = v13;
    *&v21[22] = 2112;
    v22 = v5;
    v14 = "%{public}@[%{public}@] Failed to cancel staging: %@";
    v15 = v10;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    *v21 = 138543618;
    *&v21[4] = v11;
    *&v21[12] = 2114;
    *&v21[14] = v13;
    v14 = "%{public}@[%{public}@] Successfully cancelled staging";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 22;
  }

  _os_log_impl(&dword_19BB39000, v15, v16, v14, v21, v17);

LABEL_7:
  objc_autoreleasePoolPop(v7);
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v18, 8, 1);
  }

  v20 = [Property delegateCaller];
  [v20 callCompletion:*(a1 + 48) error:v5];
}

- (void)selectWiFiNetworkAssociation:(id)association forStagingRequestUUID:(id)d
{
  v49 = *MEMORY[0x1E69E9840];
  associationCopy = association;
  dCopy = d;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
  }

  v8 = dCopy;
  v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Select WiFi network association"];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [v9 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138544130;
    v42 = v13;
    v43 = 2114;
    v44 = shortDescription;
    v45 = 2112;
    v46 = associationCopy;
    v47 = 2112;
    v48 = v8;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Selecting WiFi network association %@ for request UUID: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  if (!associationCopy)
  {
    v16 = 0;
    goto LABEL_8;
  }

  v40 = 0;
  v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:associationCopy requiringSecureCoding:1 error:&v40];
  v17 = v40;
  v18 = v17;
  if (v16)
  {

LABEL_8:
    v19 = objc_alloc(MEMORY[0x1E69A2A00]);
    uUID = [objc_opt_class() UUID];
    v21 = [v19 initWithTarget:uUID];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:v8 forKeyedSubscript:@"HMASC.mk.stagingRequestUUID"];
    [dictionary setObject:v16 forKeyedSubscript:@"HMASC.mk.wifiNetworkAssociation"];
    v23 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASC.m.selectWiFiNetworkAssociation" destination:v21 payload:dictionary];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __82__HMAccessorySetupCoordinator_selectWiFiNetworkAssociation_forStagingRequestUUID___block_invoke_2;
    v36[3] = &unk_1E754E570;
    v36[4] = selfCopy;
    v37 = v9;
    [v23 setResponseHandler:v36];
    if (selfCopy)
    {
      Property = objc_getProperty(selfCopy, v24, 8, 1);
    }

    else
    {
      Property = 0;
    }

    messageDispatcher = [Property messageDispatcher];
    [messageDispatcher sendMessage:v23];

    goto LABEL_16;
  }

  v27 = objc_autoreleasePoolPush();
  v28 = selfCopy;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    identifier2 = [v9 identifier];
    shortDescription2 = [identifier2 shortDescription];
    *buf = 138544130;
    v42 = v30;
    v43 = 2114;
    v44 = shortDescription2;
    v45 = 2112;
    v46 = associationCopy;
    v47 = 2112;
    v48 = v18;
    _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to encode WiFi network association %@: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v27);
  if (v28)
  {
    v34 = objc_getProperty(v28, v33, 8, 1);
  }

  else
  {
    v34 = 0;
  }

  delegateCaller = [v34 delegateCaller];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __82__HMAccessorySetupCoordinator_selectWiFiNetworkAssociation_forStagingRequestUUID___block_invoke;
  v38[3] = &unk_1E754E5C0;
  v38[4] = v28;
  v39 = v18;
  v16 = v18;
  [delegateCaller invokeBlock:v38];

LABEL_16:
}

uint64_t __82__HMAccessorySetupCoordinator_selectWiFiNetworkAssociation_forStagingRequestUUID___block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 16, 1);
  }

  v3 = Property[2];

  return v3();
}

- (void)handleMultiStepStageResponseError:(void *)error payload:(void *)payload activity:
{
  v91[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  errorCopy = error;
  payloadCopy = payload;
  if (self)
  {
    v56 = [errorCopy hmf_UUIDForKey:@"HMASC.mk.stagingRequestUUID"];
    v91[0] = NSClassFromString(&cfstr_Mtsdevicecrede.isa);
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:1];
    v11 = [errorCopy hmf_unarchivedObjectForKey:@"HMASC.mk.deviceCredential" ofClasses:v10];

    v90[0] = objc_opt_class();
    v90[1] = NSClassFromString(&cfstr_Mtswifiscanres.isa);
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
    v13 = [errorCopy hmf_unarchivedObjectForKey:@"HMASC.mk.wifiScanResults" ofClasses:v12];

    v89[0] = objc_opt_class();
    v89[1] = NSClassFromString(&cfstr_Mtsthreadscanr.isa);
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];
    v15 = [errorCopy hmf_unarchivedObjectForKey:@"HMASC.mk.threadScanResults" ofClasses:v14];

    v16 = [errorCopy hmf_stringForKey:@"HMASC.mk.chipAccessoryPairingIdentifier"];
    v53 = [errorCopy hmf_UUIDForKey:@"HMASC.mk.devicePairingUUID"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    v54 = v13;
    v55 = v11;
    if (v11 || v13 || v15 || v16)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v36 = v52 = v7;
        identifier = [payloadCopy identifier];
        [identifier shortDescription];
        v38 = v16;
        v40 = v39 = v15;
        *buf = 138545154;
        v74 = v36;
        v75 = 2114;
        v76 = v40;
        v77 = 2112;
        v78 = v56;
        v79 = 2112;
        v80 = v55;
        v81 = 2112;
        v82 = v54;
        v83 = 2112;
        v84 = v39;
        v85 = 2112;
        v86 = v38;
        v87 = 2112;
        v88 = v53;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully completed a step in staged CHIP accessory pairing with response staging request UUID: %@, device credential: %@, WiFi scan results: %@, Thread scan results: %@, pairing identifier: %@, device pairing UUID: %@", buf, 0x52u);

        v15 = v39;
        v16 = v38;

        v7 = v52;
      }

      objc_autoreleasePoolPop(v17);
      if (v55)
      {
        v42 = [objc_getProperty(selfCopy v41];
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __82__HMAccessorySetupCoordinator_handleMultiStepStageResponseError_payload_activity___block_invoke_175;
        v67[3] = &unk_1E754E5E8;
        v67[4] = selfCopy;
        v68 = v55;
        v69 = v56;
        [v42 invokeBlock:v67];
      }

      v35 = v53;
      v43 = v54;
      if (v54)
      {
        v44 = [objc_getProperty(selfCopy v41];
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __82__HMAccessorySetupCoordinator_handleMultiStepStageResponseError_payload_activity___block_invoke_2;
        v64[3] = &unk_1E754E5E8;
        v64[4] = selfCopy;
        v65 = v54;
        v66 = v56;
        [v44 invokeBlock:v64];
      }

      if (v15)
      {
        v45 = [objc_getProperty(selfCopy v41];
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __82__HMAccessorySetupCoordinator_handleMultiStepStageResponseError_payload_activity___block_invoke_3;
        v61[3] = &unk_1E754E5E8;
        v61[4] = selfCopy;
        v62 = v15;
        v63 = v56;
        [v45 invokeBlock:v61];
      }

      if (!v16)
      {
        goto LABEL_20;
      }

      v51 = v15;
      v46 = objc_getProperty(selfCopy, v41, 16, 1);
      objc_setProperty_atomic_copy(selfCopy, v47, 0, 16);
      objc_setProperty_atomic(selfCopy, v48, 0, 24);
      v50 = [objc_getProperty(selfCopy v49];
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __82__HMAccessorySetupCoordinator_handleMultiStepStageResponseError_payload_activity___block_invoke_4;
      v57[3] = &unk_1E754E0F8;
      v32 = &v60;
      v60 = v46;
      v33 = &v58;
      v58 = v16;
      v59 = v53;
      v34 = v46;
      [v50 invokeBlock:v57];

      v31 = v59;
    }

    else
    {
      v51 = 0;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v21 = payloadCopy;
        v23 = v22 = v7;
        identifier2 = [v21 identifier];
        shortDescription = [identifier2 shortDescription];
        *buf = 138543874;
        v74 = v23;
        v75 = 2114;
        v76 = shortDescription;
        v77 = 2112;
        v78 = v22;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to stage CHIP accessory pairing in steps: %@", buf, 0x20u);

        v7 = v22;
        payloadCopy = v21;
        v16 = 0;
      }

      objc_autoreleasePoolPop(v17);
      v27 = objc_getProperty(selfCopy, v26, 16, 1);
      objc_setProperty_atomic_copy(selfCopy, v28, 0, 16);
      objc_setProperty_atomic(selfCopy, v29, 0, 24);
      v31 = [objc_getProperty(selfCopy v30];
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __82__HMAccessorySetupCoordinator_handleMultiStepStageResponseError_payload_activity___block_invoke;
      v70[3] = &unk_1E754E458;
      v32 = &v72;
      v72 = v27;
      v33 = &v71;
      v71 = v7;
      v34 = v27;
      [v31 invokeBlock:v70];
      v35 = v53;
    }

    v43 = v54;
    v15 = v51;
LABEL_20:
  }
}

uint64_t __82__HMAccessorySetupCoordinator_handleMultiStepStageResponseError_payload_activity___block_invoke_175(void *a1, const char *a2)
{
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 24, 1);
  }

  v4 = a1[5];
  v5 = a1[6];

  return [Property didReceiveDeviceCredential:v4 forStagingRequestUUID:v5];
}

uint64_t __82__HMAccessorySetupCoordinator_handleMultiStepStageResponseError_payload_activity___block_invoke_2(void *a1, const char *a2)
{
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 24, 1);
  }

  v4 = a1[5];
  v5 = a1[6];

  return [Property didReceiveWiFiScanResults:v4 forStagingRequestUUID:v5];
}

uint64_t __82__HMAccessorySetupCoordinator_handleMultiStepStageResponseError_payload_activity___block_invoke_3(void *a1, const char *a2)
{
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 24, 1);
  }

  v4 = a1[5];
  v5 = a1[6];

  return [Property didReceiveThreadScanResults:v4 forStagingRequestUUID:v5];
}

- (void)selectThreadNetworkAssociation:(id)association forStagingRequestUUID:(id)d
{
  v45 = *MEMORY[0x1E69E9840];
  associationCopy = association;
  dCopy = d;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
  }

  v8 = dCopy;
  v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Select Thread network association"];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [v9 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v40 = v13;
    v41 = 2114;
    v42 = shortDescription;
    v43 = 2112;
    v44 = v8;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Select Thread network association with request UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  if (!associationCopy)
  {
    v16 = 0;
    goto LABEL_8;
  }

  v38 = 0;
  v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:associationCopy requiringSecureCoding:1 error:&v38];
  v17 = v38;
  v18 = v17;
  if (v16)
  {

LABEL_8:
    v19 = objc_alloc(MEMORY[0x1E69A2A00]);
    uUID = [objc_opt_class() UUID];
    v21 = [v19 initWithTarget:uUID];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:v8 forKeyedSubscript:@"HMASC.mk.stagingRequestUUID"];
    [dictionary setObject:v16 forKeyedSubscript:@"HMASC.mk.threadNetworkAssociation"];
    v23 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASC.m.selectThreadNetworkAssociation" destination:v21 payload:dictionary];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __84__HMAccessorySetupCoordinator_selectThreadNetworkAssociation_forStagingRequestUUID___block_invoke_2;
    v34[3] = &unk_1E754E570;
    v34[4] = selfCopy;
    v35 = v9;
    [v23 setResponseHandler:v34];
    if (selfCopy)
    {
      Property = objc_getProperty(selfCopy, v24, 8, 1);
    }

    else
    {
      Property = 0;
    }

    messageDispatcher = [Property messageDispatcher];
    [messageDispatcher sendMessage:v23];

    goto LABEL_16;
  }

  v27 = objc_autoreleasePoolPush();
  v28 = selfCopy;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543874;
    v40 = v30;
    v41 = 2112;
    v42 = associationCopy;
    v43 = 2112;
    v44 = v18;
    _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode Thread network association %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v27);
  if (v28)
  {
    v32 = objc_getProperty(v28, v31, 8, 1);
  }

  else
  {
    v32 = 0;
  }

  delegateCaller = [v32 delegateCaller];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __84__HMAccessorySetupCoordinator_selectThreadNetworkAssociation_forStagingRequestUUID___block_invoke;
  v36[3] = &unk_1E754E5C0;
  v36[4] = v28;
  v37 = v18;
  v16 = v18;
  [delegateCaller invokeBlock:v36];

LABEL_16:
}

uint64_t __84__HMAccessorySetupCoordinator_selectThreadNetworkAssociation_forStagingRequestUUID___block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 16, 1);
  }

  v3 = Property[2];

  return v3();
}

- (void)rejectDeviceCredentialForStagingRequestUUID:(id)d
{
  v36 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
LABEL_8:
    Property = 0;
    goto LABEL_6;
  }

  v3 = dCopy;
  v10 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Reject device credential"];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    identifier = [v10 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v31 = v14;
    v32 = 2114;
    v33 = shortDescription;
    v34 = 2112;
    v35 = v3;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Rejecting device credential with request UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v17 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [objc_opt_class() UUID];
  v5 = [v17 initWithTarget:uUID];

  v28 = @"HMASC.mk.stagingRequestUUID";
  v29 = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v7 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASC.m.rejectDeviceCredential" destination:v5 payload:v6];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __75__HMAccessorySetupCoordinator_rejectDeviceCredentialForStagingRequestUUID___block_invoke;
  v25 = &unk_1E754E570;
  v26 = selfCopy;
  v27 = v10;
  v4 = v10;
  [v7 setResponseHandler:&v22];
  if (!selfCopy)
  {
    goto LABEL_8;
  }

  Property = objc_getProperty(selfCopy, v19, 8, 1);
LABEL_6:
  messageDispatcher = [Property messageDispatcher];
  [messageDispatcher sendMessage:v7];
}

- (void)confirmDeviceCredentialForStagingRequestUUID:(id)d
{
  v36 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
LABEL_8:
    Property = 0;
    goto LABEL_6;
  }

  v3 = dCopy;
  v10 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Confirm device credential"];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    identifier = [v10 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v31 = v14;
    v32 = 2114;
    v33 = shortDescription;
    v34 = 2112;
    v35 = v3;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Confirm device credential with request UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v17 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [objc_opt_class() UUID];
  v5 = [v17 initWithTarget:uUID];

  v28 = @"HMASC.mk.stagingRequestUUID";
  v29 = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v7 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASC.m.confirmDeviceCredential" destination:v5 payload:v6];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __76__HMAccessorySetupCoordinator_confirmDeviceCredentialForStagingRequestUUID___block_invoke;
  v25 = &unk_1E754E570;
  v26 = selfCopy;
  v27 = v10;
  v4 = v10;
  [v7 setResponseHandler:&v22];
  if (!selfCopy)
  {
    goto LABEL_8;
  }

  Property = objc_getProperty(selfCopy, v19, 8, 1);
LABEL_6:
  messageDispatcher = [Property messageDispatcher];
  [messageDispatcher sendMessage:v7];
}

- (void)stageCHIPAccessoryPairingInStepsWithPayload:(id)payload delegate:(id)delegate scanningNetworks:(BOOL)networks completionHandler:(id)handler
{
  networksCopy = networks;
  v48 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  delegateCopy = delegate;
  handlerCopy = handler;
  if (!payloadCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!delegateCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
LABEL_10:
    Property = 0;
    goto LABEL_7;
  }

  v9 = handlerCopy;
  v17 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Stage CHIP accessory pairing in steps"];
  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v21 = v35 = delegateCopy;
    [v17 identifier];
    v22 = v34 = v9;
    shortDescription = [v22 shortDescription];
    v24 = HMFBooleanToString();
    *buf = 138544130;
    v41 = v21;
    v42 = 2114;
    v43 = shortDescription;
    v44 = 2112;
    v45 = payloadCopy;
    v46 = 2112;
    v47 = v24;
    _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Staging CHIP accessory pairing in steps with payload: %@, shouldScanNetworks: %@", buf, 0x2Au);

    v9 = v34;
    delegateCopy = v35;
  }

  objc_autoreleasePoolPop(v18);
  v25 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [objc_opt_class() UUID];
  v7 = [v25 initWithTarget:uUID];

  v38[0] = @"HMASC.mk.shouldScanNetworks";
  v27 = [MEMORY[0x1E696AD98] numberWithBool:networksCopy];
  v38[1] = @"HMASC.mk.setupAccessoryPayload";
  v39[0] = v27;
  v28 = encodeRootObject(payloadCopy);
  v39[1] = v28;
  networksCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];

  v8 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASC.m.stageCHIPAccessoryPairingInSteps" destination:v7 payload:networksCopy];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __119__HMAccessorySetupCoordinator_stageCHIPAccessoryPairingInStepsWithPayload_delegate_scanningNetworks_completionHandler___block_invoke;
  v36[3] = &unk_1E754E570;
  v36[4] = selfCopy;
  v37 = v17;
  v6 = v17;
  [v8 setResponseHandler:v36];
  if (!selfCopy)
  {
    goto LABEL_10;
  }

  objc_setProperty_atomic(selfCopy, v29, delegateCopy, 24);
  objc_setProperty_atomic_copy(selfCopy, v30, v9, 16);
  Property = objc_getProperty(selfCopy, v31, 8, 1);
LABEL_7:
  messageDispatcher = [Property messageDispatcher];
  [messageDispatcher sendMessage:v8];
}

- (void)createSetupAccessoryPayloadWithCHIPDecimalStringRepresentation:(id)representation completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  handlerCopy = handler;
  if (!representationCopy)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v8 = handlerCopy;
  if (!handlerCopy)
  {
    goto LABEL_7;
  }

  v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Create setup accessory payload with CHIP decimal string representation"];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [v9 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v20 = v13;
    v21 = 2114;
    v22 = shortDescription;
    v23 = 2112;
    v24 = representationCopy;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Creating setup accessory payload with CHIP decimal string representation: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v17 = @"HMASC.mk.chipSetupPayloadDecimalStringRepresentation";
  v18 = representationCopy;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [(HMAccessorySetupCoordinator *)selfCopy _createCHIPSetupAccessoryPayloadWithMessagePayload:v16 activity:v9 completionHandler:v8];
}

- (void)_createCHIPSetupAccessoryPayloadWithMessagePayload:(void *)payload activity:(void *)activity completionHandler:
{
  payloadCopy = payload;
  activityCopy = activity;
  if (self)
  {
    v9 = MEMORY[0x1E69A2A00];
    v10 = a2;
    v11 = [v9 alloc];
    uUID = [objc_opt_class() UUID];
    v13 = [v11 initWithTarget:uUID];

    v14 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASC.m.createCHIPSetupAccessoryPayload" destination:v13 payload:v10];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __109__HMAccessorySetupCoordinator__createCHIPSetupAccessoryPayloadWithMessagePayload_activity_completionHandler___block_invoke;
    v17[3] = &unk_1E754E480;
    v17[4] = self;
    v18 = payloadCopy;
    v19 = activityCopy;
    [v14 setResponseHandler:v17];
    v16 = [objc_getProperty(self v15];
    [v16 sendMessage:v14];
  }
}

void __109__HMAccessorySetupCoordinator__createCHIPSetupAccessoryPayloadWithMessagePayload_activity_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v39[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  v8 = [v6 hmf_unarchivedObjectForKey:@"HMASC.mk.setupAccessoryPayload" ofClasses:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = a1[4];
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[5] identifier];
      v15 = [v14 shortDescription];
      *buf = 138543874;
      v32 = v13;
      v33 = 2114;
      v34 = v15;
      v35 = 2112;
      v36 = v8;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully created setup accessory payload: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    Property = a1[4];
    if (Property)
    {
      Property = objc_getProperty(Property, v16, 8, 1);
    }

    v18 = [Property delegateCaller];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __109__HMAccessorySetupCoordinator__createCHIPSetupAccessoryPayloadWithMessagePayload_activity_completionHandler___block_invoke_177;
    v26[3] = &unk_1E754E458;
    v19 = &v28;
    v28 = a1[6];
    v27 = v8;
    [v18 invokeBlock:v26];

    v20 = v27;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [a1[5] identifier];
      v23 = [v22 shortDescription];
      *buf = 138544130;
      v32 = v21;
      v33 = 2114;
      v34 = v23;
      v35 = 2112;
      v36 = v6;
      v37 = 2112;
      v38 = v5;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Could not find setup accessory payload in response payload %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    v25 = a1[4];
    if (v25)
    {
      v25 = objc_getProperty(v25, v24, 8, 1);
    }

    v20 = [v25 delegateCaller];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __109__HMAccessorySetupCoordinator__createCHIPSetupAccessoryPayloadWithMessagePayload_activity_completionHandler___block_invoke_176;
    v29[3] = &unk_1E754E430;
    v19 = &v30;
    v30 = a1[6];
    [v20 invokeBlock:v29];
  }
}

void __109__HMAccessorySetupCoordinator__createCHIPSetupAccessoryPayloadWithMessagePayload_activity_completionHandler___block_invoke_176(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)createSetupAccessoryPayloadWithSetupPayloadURL:(id)l completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  if (!lCopy)
  {
    _HMFPreconditionFailure();
LABEL_14:
    _HMFPreconditionFailure();
  }

  v8 = handlerCopy;
  if (!handlerCopy)
  {
    goto LABEL_14;
  }

  if ([objc_opt_class() isHAPSetupPayloadURL:lCopy])
  {
    v23 = 0;
    v9 = [[HMSetupAccessoryPayload alloc] initWithHAPSetupPayloadURL:lCopy error:&v23];
    v10 = v23;
    (v8)[2](v8, v9, v10);
  }

  else if ([objc_opt_class() isCHIPSetupPayloadURL:lCopy])
  {
    v10 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Create setup accessory payload for CHIP setup payload URL"];
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      identifier = [v10 identifier];
      shortDescription = [identifier shortDescription];
      *buf = 138543874;
      v27 = v14;
      v28 = 2114;
      v29 = shortDescription;
      v30 = 2112;
      v31 = lCopy;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Creating setup accessory payload for CHIP setup payload URL: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v24 = @"HMASC.mk.setupPayloadURL";
    v25 = lCopy;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [(HMAccessorySetupCoordinator *)selfCopy _createCHIPSetupAccessoryPayloadWithMessagePayload:v17 activity:v10 completionHandler:v8];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      scheme = [lCopy scheme];
      *buf = 138543874;
      v27 = v21;
      v28 = 2112;
      v29 = scheme;
      v30 = 2112;
      v31 = lCopy;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unsupported URL scheme %@ in setupPayloadURL: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    (v8)[2](v8, 0, v10);
  }
}

- (void)createSetupAccessoryPayloadWithSetupPayloadURLString:(id)string completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  handlerCopy = handler;
  if (!stringCopy)
  {
    _HMFPreconditionFailure();
LABEL_10:
    _HMFPreconditionFailure();
  }

  v8 = handlerCopy;
  if (!handlerCopy)
  {
    goto LABEL_10;
  }

  v9 = [HMAccessorySetupCoordinator setupPayloadURLFromSetupPayloadURLString:stringCopy];
  if (v9)
  {
    [(HMAccessorySetupCoordinator *)self createSetupAccessoryPayloadWithSetupPayloadURL:v9 completionHandler:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = stringCopy;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to create setup payload URL from string: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    (v8)[2](v8, 0, v14);
  }
}

- (void)dealloc
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 8, 1);
  }

  messageDispatcher = [(HMAccessorySetupCoordinator *)self messageDispatcher];
  [messageDispatcher deregisterReceiver:selfCopy];

  v4.receiver = selfCopy;
  v4.super_class = HMAccessorySetupCoordinator;
  [(HMAccessorySetupCoordinator *)&v4 dealloc];
}

- (HMAccessorySetupCoordinator)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = HMAccessorySetupCoordinator;
  v6 = [(HMAccessorySetupCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t28 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t28, &__block_literal_global_48313);
  }

  v3 = logCategory__hmf_once_v29;

  return v3;
}

uint64_t __42__HMAccessorySetupCoordinator_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v29;
  logCategory__hmf_once_v29 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)setupPayloadURLFromSetupPayloadURLString:(id)string
{
  v3 = MEMORY[0x1E696AB08];
  stringCopy = string;
  whitespaceCharacterSet = [v3 whitespaceCharacterSet];
  invertedSet = [whitespaceCharacterSet invertedSet];
  v7 = [stringCopy stringByAddingPercentEncodingWithAllowedCharacters:invertedSet];

  v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];

  return v8;
}

+ (BOOL)isCHIPSetupPayloadURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  if ([scheme isEqualToString:@"CH"])
  {
    v5 = 1;
  }

  else
  {
    scheme2 = [lCopy scheme];
    v5 = [scheme2 isEqualToString:@"MT"];
  }

  return v5;
}

+ (BOOL)isHAPSetupPayloadURL:(id)l
{
  scheme = [l scheme];
  v4 = [scheme isEqualToString:@"X-HM"];

  return v4;
}

+ (id)communicationProtocolForSetupPayloadURLString:(id)string
{
  stringCopy = string;
  v4 = [objc_opt_class() setupPayloadURLFromSetupPayloadURLString:stringCopy];

  if ([objc_opt_class() isHAPSetupPayloadURL:v4])
  {
    v5 = &unk_1F0EFD268;
  }

  else if ([objc_opt_class() isCHIPSetupPayloadURL:v4])
  {
    v5 = &unk_1F0EFD280;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (NSUUID)UUID
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"188914BD-5163-425C-9E59-CAE9BFA1A288"];

  return v2;
}

+ (BOOL)isSetupPayloadURL:(id)l
{
  lCopy = l;
  if ([self isHAPSetupPayloadURL:lCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [self isCHIPSetupPayloadURL:lCopy];
  }

  return v5;
}

+ (BOOL)isSetupPayloadURLString:(id)string
{
  selfCopy = self;
  v4 = [self setupPayloadURLFromSetupPayloadURLString:string];
  LOBYTE(selfCopy) = [selfCopy isSetupPayloadURL:v4];

  return selfCopy;
}

@end
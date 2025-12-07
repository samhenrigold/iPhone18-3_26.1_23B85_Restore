@interface HMSiriEndpointProfile
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)manuallyDisabled;
- (BOOL)mergeFromNewObject:(id)object;
- (HMSiriEndpointProfile)init;
- (HMSiriEndpointProfile)initWithSiriEndpointProfile:(id)profile;
- (HMSiriEndpointProfileAssistant)currentAssistant;
- (HMSiriEndpointProfileDelegate)delegate;
- (NSArray)assistants;
- (NSArray)attributeDescriptions;
- (NSNumber)activeIdentifier;
- (NSString)capabilityToString;
- (NSString)shortDescription;
- (NSString)siriEndpointVersion;
- (NSString)siriEngineVersion;
- (NSUUID)sessionHubIdentifier;
- (id)logIdentifier;
- (id)siriEndpointProfile;
- (int64_t)multifunctionButton;
- (int64_t)sessionState;
- (unint64_t)capability;
- (void)applyOnboardingSelections:(id)selections completionHandler:(id)handler;
- (void)deleteSiriHistoryWithCompletionHandler:(id)handler;
- (void)refreshStateWithCompletionHandler:(id)handler;
- (void)setNotifications:(BOOL)notifications options:(unint64_t)options completionHandler:(id)handler;
- (void)siriEndpointProfile:(id)profile didUpdateActiveIdentifier:(id)identifier;
- (void)siriEndpointProfile:(id)profile didUpdateAssistants:(id)assistants;
- (void)siriEndpointProfile:(id)profile didUpdateManuallyDisabled:(BOOL)disabled;
- (void)siriEndpointProfile:(id)profile didUpdateMultifunctionButton:(int64_t)button;
- (void)siriEndpointProfile:(id)profile didUpdateNeedsOnboarding:(BOOL)onboarding;
- (void)siriEndpointProfile:(id)profile didUpdateSessionHubIdentifier:(id)identifier;
- (void)siriEndpointProfile:(id)profile didUpdateSessionState:(int64_t)state;
- (void)siriEndpointProfile:(id)profile didUpdateSiriEngineVersion:(id)version;
- (void)siriEndpointProfile:(id)profile didUpdateSupportsOnboarding:(BOOL)onboarding;
@end

@implementation HMSiriEndpointProfile

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_3;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_41(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_42;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_43(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_44;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_45(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_46;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_47(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_48;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_49(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_50;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_51(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_52;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_53(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_54;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

uint64_t __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_54(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "multifunctionButton")}];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateMultifunctionButton : %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 40) siriEndpointProfile:*(a1 + 32) didUpdateMultifunctionButton:{objc_msgSend(*(a1 + 32), "multifunctionButton")}];
}

uint64_t __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_52(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "manuallyDisabled")}];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateManuallyDisabled : %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 40) siriEndpointProfile:*(a1 + 32) didUpdateManuallyDisabled:{objc_msgSend(*(a1 + 32), "manuallyDisabled")}];
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_50(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) activeIdentifier];
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateActiveIdentifier : %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = a1 + 32;
  v7 = *(a1 + 32);
  v8 = *(v9 + 8);
  v10 = [v7 activeIdentifier];
  [v8 siriEndpointProfile:v7 didUpdateActiveIdentifier:v10];
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_48(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) assistants];
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateAssistants : %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = a1 + 32;
  v7 = *(a1 + 32);
  v8 = *(v9 + 8);
  v10 = [v7 assistants];
  [v8 siriEndpointProfile:v7 didUpdateAssistants:v10];
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_46(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) siriEngineVersion];
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateSiriEngineVersion : %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = a1 + 32;
  v7 = *(a1 + 32);
  v8 = *(v9 + 8);
  v10 = [v7 siriEngineVersion];
  [v8 siriEndpointProfile:v7 didUpdateSiriEngineVersion:v10];
}

uint64_t __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_44(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    [*(a1 + 32) capability];
    v6 = HMFBooleanToString();
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateSupportsOnboarding : %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 40) siriEndpointProfile:*(a1 + 32) didUpdateSupportsOnboarding:{(objc_msgSend(*(a1 + 32), "capability") >> 1) & 1}];
}

uint64_t __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_42(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    [*(a1 + 32) capability];
    v6 = HMFBooleanToString();
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateNeedsOnboarding : %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 40) siriEndpointProfile:*(a1 + 32) didUpdateNeedsOnboarding:{objc_msgSend(*(a1 + 32), "capability") & 1}];
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) sessionHubIdentifier];
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateSessionHubIdentifier : %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = a1 + 32;
  v7 = *(a1 + 32);
  v8 = *(v9 + 8);
  v10 = [v7 sessionHubIdentifier];
  [v8 siriEndpointProfile:v7 didUpdateSessionHubIdentifier:v10];
}

void __69___HMSiriEndpointProfile_setNotifications_options_completionHandler___block_invoke(uint64_t a1)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v22[0] = @"enable";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 64)];
  v22[1] = @"options";
  v23[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  v23[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v5 = MEMORY[0x1E69A2A10];
  v6 = [*(a1 + 32) messageDestination];
  v7 = [v5 messageWithName:@"HMSE.en" destination:v6 payload:v4];

  v8 = [*(a1 + 32) context];
  v9 = [v8 pendingRequests];

  v10 = [v7 identifier];
  v11 = _Block_copy(*(a1 + 48));
  [v9 addCompletionBlock:v11 forIdentifier:v10];

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __69___HMSiriEndpointProfile_setNotifications_options_completionHandler___block_invoke_2;
  v18 = &unk_1E754E0A8;
  v19 = v9;
  v20 = v10;
  v21 = *(a1 + 40);
  v12 = v10;
  v13 = v9;
  [v7 setResponseHandler:&v15];
  v14 = [*(a1 + 40) messageDispatcher];
  [v14 sendMessage:v7 completionHandler:0];
}

void __69___HMSiriEndpointProfile_setNotifications_options_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v7 = [v3 removeCompletionBlockForIdentifier:v4];
  v6 = [*(a1 + 48) delegateCaller];
  [v6 callCompletion:v7 error:v5];
}

void __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 sessionHubIdentifier];
  [v1 siriEndpointProfile:v2 didUpdateSessionHubIdentifier:v3];
}

void __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 siriEngineVersion];
  [v1 siriEndpointProfile:v2 didUpdateSiriEngineVersion:v3];
}

uint64_t __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 capability] & 1;

  return [v1 siriEndpointProfile:v2 didUpdateNeedsOnboarding:v3];
}

uint64_t __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = ([v2 capability] >> 1) & 1;

  return [v1 siriEndpointProfile:v2 didUpdateSupportsOnboarding:v3];
}

void __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 activeIdentifier];
  [v1 siriEndpointProfile:v2 didUpdateActiveIdentifier:v3];
}

uint64_t __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 manuallyDisabled];

  return [v1 siriEndpointProfile:v2 didUpdateManuallyDisabled:v3];
}

uint64_t __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 multifunctionButton];

  return [v1 siriEndpointProfile:v2 didUpdateMultifunctionButton:v3];
}

void __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 assistants];
  [v1 siriEndpointProfile:v2 didUpdateAssistants:v3];
}

void __60___HMSiriEndpointProfile_refreshStateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v23[0] = @"session";
  v23[1] = @"settings";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v3 = MEMORY[0x1E69A2A10];
  v4 = [*(a1 + 32) messageDestination];
  v21 = @"property-list";
  v22 = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v6 = [v3 messageWithName:@"HMSE.rs" destination:v4 payload:v5];

  v7 = [*(a1 + 32) context];
  v8 = [v7 pendingRequests];

  v9 = [v6 identifier];
  v10 = _Block_copy(*(a1 + 48));
  [v8 addCompletionBlock:v10 forIdentifier:v9];

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __60___HMSiriEndpointProfile_refreshStateWithCompletionHandler___block_invoke_2;
  v17 = &unk_1E754E0A8;
  v18 = v8;
  v19 = v9;
  v20 = *(a1 + 40);
  v11 = v9;
  v12 = v8;
  [v6 setResponseHandler:&v14];
  v13 = [*(a1 + 40) messageDispatcher];
  [v13 sendMessage:v6 completionHandler:0];
}

void __60___HMSiriEndpointProfile_refreshStateWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v7 = [v3 removeCompletionBlockForIdentifier:v4];
  v6 = [*(a1 + 48) delegateCaller];
  [v6 callCompletion:v7 error:v5];
}

uint64_t __59___HMSiriEndpointProfile_notifyClientDidUpdateSessionState__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 sessionState];

  return [v1 siriEndpointProfile:v2 didUpdateSessionState:v3];
}

uint64_t __37___HMSiriEndpointProfile_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v38;
  logCategory__hmf_once_v38 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (HMSiriEndpointProfileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  accessory = [(HMAccessoryProfile *)self accessory];
  uniqueIdentifier = [accessory uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (NSArray)attributeDescriptions
{
  v36[10] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessory = [(HMAccessoryProfile *)self accessory];
  uniqueIdentifier = [accessory uniqueIdentifier];
  v33 = [v3 initWithName:@"accessoryUniqueIdentifier" value:uniqueIdentifier];
  v36[0] = v33;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v32 = HMSiriEndpointProfileSessionStateTypeToString([(HMSiriEndpointProfile *)self sessionState]);
  v31 = [v4 initWithName:@"sessionState" value:v32];
  v36[1] = v31;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  sessionHubIdentifier = [(HMSiriEndpointProfile *)self sessionHubIdentifier];
  v29 = [v5 initWithName:@"sessionHubIdentifier" value:sessionHubIdentifier];
  v36[2] = v29;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  siriEndpointVersion = [(HMSiriEndpointProfile *)self siriEndpointVersion];
  v27 = [v6 initWithName:@"siriEndpointVersion" value:siriEndpointVersion];
  v36[3] = v27;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v26 = HMSiriEndpointProfileCapabilityToString([(HMSiriEndpointProfile *)self capability]);
  v25 = [v7 initWithName:@"capability" value:v26];
  v36[4] = v25;
  v8 = objc_alloc(MEMORY[0x1E69A29C8]);
  siriEngineVersion = [(HMSiriEndpointProfile *)self siriEngineVersion];
  v9 = [v8 initWithName:@"siriEngineVersion" value:siriEngineVersion];
  v36[5] = v9;
  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSiriEndpointProfile *)self isNeedsOnboarding];
  v11 = HMFBooleanToString();
  v12 = [v10 initWithName:@"needsOnboarding" value:v11];
  v36[6] = v12;
  v13 = objc_alloc(MEMORY[0x1E69A29C8]);
  activeIdentifier = [(HMSiriEndpointProfile *)self activeIdentifier];
  v15 = [v13 initWithName:@"activeIdentifier" value:activeIdentifier];
  v36[7] = v15;
  v16 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSiriEndpointProfile *)self manuallyDisabled];
  v17 = HMFBooleanToString();
  v18 = [v16 initWithName:@"manuallyDisabled" value:v17];
  v36[8] = v18;
  v19 = objc_alloc(MEMORY[0x1E69A29C8]);
  v20 = HMSiriEndpointProfileMultifunctionButtonTypeToString([(HMSiriEndpointProfile *)self multifunctionButton]);
  v21 = [v19 initWithName:@"multifunctionButton" value:v20];
  v36[9] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:10];

  return v22;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (void)setNotifications:(BOOL)notifications options:(unint64_t)options completionHandler:(id)handler
{
  notificationsCopy = notifications;
  handlerCopy = handler;
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = accessoryProfile;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [v10 setNotifications:notificationsCopy options:options completionHandler:handlerCopy];
}

- (void)refreshStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = accessoryProfile;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 refreshStateWithCompletionHandler:handlerCopy];
}

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    accessoryProfile = [v6 accessoryProfile];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = accessoryProfile;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      accessoryProfile2 = [(HMAccessoryProfile *)self accessoryProfile];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = accessoryProfile2;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      v14 = [v13 mergeFromNewObject:v10];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)siriEndpointProfile:(id)profile didUpdateMultifunctionButton:(int64_t)button
{
  v26 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  delegate = [(HMSiriEndpointProfile *)self delegate];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMSiriEndpointProfileMultifunctionButtonTypeToString(button);
    *buf = 138543874;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = delegate;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated multifunction Button: %@, delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if (objc_opt_respondsToSelector())
  {
    accessoryProfile = [(HMAccessoryProfile *)selfCopy accessoryProfile];
    context = [accessoryProfile context];
    delegateCaller = [context delegateCaller];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__HMSiriEndpointProfile_siriEndpointProfile_didUpdateMultifunctionButton___block_invoke;
    v16[3] = &unk_1E754E120;
    v17 = delegate;
    v18 = selfCopy;
    buttonCopy = button;
    [delegateCaller invokeBlock:v16];
  }
}

- (void)siriEndpointProfile:(id)profile didUpdateManuallyDisabled:(BOOL)disabled
{
  v26 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  delegate = [(HMSiriEndpointProfile *)self delegate];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMFBooleanToString();
    *buf = 138543874;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = delegate;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated manually disabled: %@, delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if (objc_opt_respondsToSelector())
  {
    accessoryProfile = [(HMAccessoryProfile *)selfCopy accessoryProfile];
    context = [accessoryProfile context];
    delegateCaller = [context delegateCaller];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__HMSiriEndpointProfile_siriEndpointProfile_didUpdateManuallyDisabled___block_invoke;
    v16[3] = &unk_1E754DC70;
    v17 = delegate;
    v18 = selfCopy;
    disabledCopy = disabled;
    [delegateCaller invokeBlock:v16];
  }
}

- (void)siriEndpointProfile:(id)profile didUpdateAssistants:(id)assistants
{
  v26 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  assistantsCopy = assistants;
  delegate = [(HMSiriEndpointProfile *)self delegate];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v21 = v12;
    v22 = 2112;
    v23 = assistantsCopy;
    v24 = 2112;
    v25 = delegate;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated assistants: %@, delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (objc_opt_respondsToSelector())
  {
    accessoryProfile = [(HMAccessoryProfile *)selfCopy accessoryProfile];
    context = [accessoryProfile context];
    delegateCaller = [context delegateCaller];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__HMSiriEndpointProfile_siriEndpointProfile_didUpdateAssistants___block_invoke;
    v16[3] = &unk_1E754E5E8;
    v17 = delegate;
    v18 = selfCopy;
    v19 = assistantsCopy;
    [delegateCaller invokeBlock:v16];
  }
}

- (void)siriEndpointProfile:(id)profile didUpdateActiveIdentifier:(id)identifier
{
  v27 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  identifierCopy = identifier;
  delegate = [(HMSiriEndpointProfile *)self delegate];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v22 = v12;
    v23 = 2112;
    v24 = identifierCopy;
    v25 = 2112;
    v26 = delegate;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated active identifier: %@, delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  currentAssistant = [(HMSiriEndpointProfile *)selfCopy currentAssistant];
  if (currentAssistant && (objc_opt_respondsToSelector() & 1) != 0)
  {
    accessoryProfile = [(HMAccessoryProfile *)selfCopy accessoryProfile];
    context = [accessoryProfile context];
    delegateCaller = [context delegateCaller];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__HMSiriEndpointProfile_siriEndpointProfile_didUpdateActiveIdentifier___block_invoke;
    v17[3] = &unk_1E754E5E8;
    v18 = delegate;
    v19 = selfCopy;
    v20 = currentAssistant;
    [delegateCaller invokeBlock:v17];
  }
}

- (void)siriEndpointProfile:(id)profile didUpdateSupportsOnboarding:(BOOL)onboarding
{
  v26 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  delegate = [(HMSiriEndpointProfile *)self delegate];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMFBooleanToString();
    *buf = 138543874;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = delegate;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated siri endpoint capability supports on boarding: %@, delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if (objc_opt_respondsToSelector())
  {
    accessoryProfile = [(HMAccessoryProfile *)selfCopy accessoryProfile];
    context = [accessoryProfile context];
    delegateCaller = [context delegateCaller];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __73__HMSiriEndpointProfile_siriEndpointProfile_didUpdateSupportsOnboarding___block_invoke;
    v16[3] = &unk_1E754DC70;
    v17 = delegate;
    v18 = selfCopy;
    onboardingCopy = onboarding;
    [delegateCaller invokeBlock:v16];
  }
}

- (void)siriEndpointProfile:(id)profile didUpdateNeedsOnboarding:(BOOL)onboarding
{
  v26 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  delegate = [(HMSiriEndpointProfile *)self delegate];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMFBooleanToString();
    *buf = 138543874;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = delegate;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated siri endpoint capability needs on boarding: %@, delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if (objc_opt_respondsToSelector())
  {
    accessoryProfile = [(HMAccessoryProfile *)selfCopy accessoryProfile];
    context = [accessoryProfile context];
    delegateCaller = [context delegateCaller];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __70__HMSiriEndpointProfile_siriEndpointProfile_didUpdateNeedsOnboarding___block_invoke;
    v16[3] = &unk_1E754DC70;
    v17 = delegate;
    v18 = selfCopy;
    onboardingCopy = onboarding;
    [delegateCaller invokeBlock:v16];
  }
}

- (void)siriEndpointProfile:(id)profile didUpdateSiriEngineVersion:(id)version
{
  v26 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  versionCopy = version;
  delegate = [(HMSiriEndpointProfile *)self delegate];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v21 = v12;
    v22 = 2112;
    v23 = versionCopy;
    v24 = 2112;
    v25 = delegate;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated siri endpoint version: %@, delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (objc_opt_respondsToSelector())
  {
    accessoryProfile = [(HMAccessoryProfile *)selfCopy accessoryProfile];
    context = [accessoryProfile context];
    delegateCaller = [context delegateCaller];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__HMSiriEndpointProfile_siriEndpointProfile_didUpdateSiriEngineVersion___block_invoke;
    v16[3] = &unk_1E754E5E8;
    v17 = delegate;
    v18 = selfCopy;
    v19 = versionCopy;
    [delegateCaller invokeBlock:v16];
  }
}

- (void)siriEndpointProfile:(id)profile didUpdateSessionHubIdentifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  identifierCopy = identifier;
  delegate = [(HMSiriEndpointProfile *)self delegate];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v21 = v12;
    v22 = 2112;
    v23 = identifierCopy;
    v24 = 2112;
    v25 = delegate;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated siri endpoint session hud identifier: %@, delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (objc_opt_respondsToSelector())
  {
    accessoryProfile = [(HMAccessoryProfile *)selfCopy accessoryProfile];
    context = [accessoryProfile context];
    delegateCaller = [context delegateCaller];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __75__HMSiriEndpointProfile_siriEndpointProfile_didUpdateSessionHubIdentifier___block_invoke;
    v16[3] = &unk_1E754E5E8;
    v17 = delegate;
    v18 = selfCopy;
    v19 = identifierCopy;
    [delegateCaller invokeBlock:v16];
  }
}

- (void)siriEndpointProfile:(id)profile didUpdateSessionState:(int64_t)state
{
  v25 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  delegate = [(HMSiriEndpointProfile *)self delegate];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v20 = v11;
    v21 = 2048;
    stateCopy = state;
    v23 = 2112;
    v24 = delegate;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated siri endpoint session state: %lu, delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if (objc_opt_respondsToSelector())
  {
    accessoryProfile = [(HMAccessoryProfile *)selfCopy accessoryProfile];
    context = [accessoryProfile context];
    delegateCaller = [context delegateCaller];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__HMSiriEndpointProfile_siriEndpointProfile_didUpdateSessionState___block_invoke;
    v15[3] = &unk_1E754E120;
    v16 = delegate;
    v17 = selfCopy;
    stateCopy2 = state;
    [delegateCaller invokeBlock:v15];
  }
}

- (HMSiriEndpointProfileAssistant)currentAssistant
{
  v18 = *MEMORY[0x1E69E9840];
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  activeIdentifier = [v4 activeIdentifier];
  if (activeIdentifier)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    assistants = [v4 assistants];
    v7 = [assistants countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(assistants);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          identifier = [v10 identifier];
          if ([activeIdentifier isEqual:identifier])
          {
            v7 = v10;

            goto LABEL_15;
          }
        }

        v7 = [assistants countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)assistants
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  assistants = [v4 assistants];

  return assistants;
}

- (int64_t)multifunctionButton
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  multifunctionButton = [v4 multifunctionButton];
  return multifunctionButton;
}

- (BOOL)manuallyDisabled
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  manuallyDisabled = [v4 manuallyDisabled];
  return manuallyDisabled;
}

- (NSNumber)activeIdentifier
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  activeIdentifier = [v4 activeIdentifier];

  return activeIdentifier;
}

- (NSString)capabilityToString
{
  capability = [(HMSiriEndpointProfile *)self capability];

  return HMSiriEndpointProfileCapabilityToString(capability);
}

- (unint64_t)capability
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  capability = [v4 capability];
  return capability;
}

- (NSString)siriEngineVersion
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  siriEngineVersion = [v4 siriEngineVersion];

  return siriEngineVersion;
}

- (NSString)siriEndpointVersion
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  siriEndpointVersion = [v4 siriEndpointVersion];

  return siriEndpointVersion;
}

- (NSUUID)sessionHubIdentifier
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  sessionHubIdentifier = [v4 sessionHubIdentifier];

  return sessionHubIdentifier;
}

- (int64_t)sessionState
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  sessionState = [v4 sessionState];
  return sessionState;
}

- (id)siriEndpointProfile
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {

    return v4;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    [(HMSiriEndpointProfile *)v6 deleteSiriHistoryWithCompletionHandler:v7, v8];
  }

  return result;
}

- (void)deleteSiriHistoryWithCompletionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Deleting siri history", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  siriEndpointProfile = [(HMSiriEndpointProfile *)selfCopy siriEndpointProfile];
  [siriEndpointProfile deleteSiriHistoryWithCompletionHandler:handlerCopy];
}

- (void)applyOnboardingSelections:(id)selections completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  selectionsCopy = selections;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = selectionsCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Applying onboarding with selections: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  siriEndpointProfile = [(HMSiriEndpointProfile *)selfCopy siriEndpointProfile];
  [siriEndpointProfile applyOnboardingSelections:selectionsCopy completionHandler:handlerCopy];
}

- (HMSiriEndpointProfile)initWithSiriEndpointProfile:(id)profile
{
  profileCopy = profile;
  v7.receiver = self;
  v7.super_class = HMSiriEndpointProfile;
  v5 = [(HMAccessoryProfile *)&v7 initWithAccessoryProfile:profileCopy];
  if (v5)
  {
    [profileCopy setDelegate:v5];
  }

  return v5;
}

- (HMSiriEndpointProfile)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t27_62129 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t27_62129, &__block_literal_global_62130);
  }

  v3 = logCategory__hmf_once_v28_62131;

  return v3;
}

uint64_t __36__HMSiriEndpointProfile_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v28_62131;
  logCategory__hmf_once_v28_62131 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end
@interface LAAnalyticsPasscodeFallbackPeriod
+ (id)_persistedInstancesStorage;
+ (id)activePersistentInstances;
- (BOOL)shouldCollect;
- (LAAnalyticsPasscodeFallbackPeriod)initWithPolicyGroup:(int64_t)group;
- (NSArray)policies;
- (NSString)policyGroupName;
- (id)buildPayload;
- (id)description;
- (id)instanceToReplaceWithWhenRemovedFromStorage;
- (int64_t)timeInterval;
- (void)biometrySucceededWithEvaluationRequest:(id)request;
- (void)passcodePresentedWithEvaluationRequest:(id)request biometryAttempts:(int64_t)attempts;
@end

@implementation LAAnalyticsPasscodeFallbackPeriod

+ (id)activePersistentInstances
{
  _persistedInstancesStorage = [self _persistedInstancesStorage];
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global];
  v4 = [_persistedInstancesStorage filteredArrayUsingPredicate:v3];

  return v4;
}

uint64_t __62__LAAnalyticsPasscodeFallbackPeriod_activePersistentInstances__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 wasSent] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (LAAnalyticsPasscodeFallbackPeriod)initWithPolicyGroup:(int64_t)group
{
  v5.receiver = self;
  v5.super_class = LAAnalyticsPasscodeFallbackPeriod;
  result = [(LAAnalytics *)&v5 initWithEventName:@"com.apple.LocalAuthentication.PasscodeRecoveryTime"];
  if (result)
  {
    result->_policyGroup = group;
  }

  return result;
}

- (void)passcodePresentedWithEvaluationRequest:(id)request biometryAttempts:(int64_t)attempts
{
  requestCopy = request;
  policies = [(LAAnalyticsPasscodeFallbackPeriod *)self policies];
  if (!policies || (v8 = policies, -[LAAnalyticsPasscodeFallbackPeriod policies](self, "policies"), v9 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(requestCopy, "policy")}], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "containsObject:", v10), v10, v9, v8, v11))
  {
    if (!self->_passcodePresentedTime)
    {
      if (attempts < 1)
      {
        goto LABEL_9;
      }

      v12 = [MEMORY[0x277CBEAA8] now];
      passcodePresentedTime = self->_passcodePresentedTime;
      self->_passcodePresentedTime = v12;
    }

    ++self->_passcodeCount;
    self->_biometryAttempts += attempts;
    v14 = LA_LOG(policies);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [LAAnalyticsPasscodeFallbackPeriod passcodePresentedWithEvaluationRequest:v14 biometryAttempts:?];
    }
  }

LABEL_9:
}

- (void)biometrySucceededWithEvaluationRequest:(id)request
{
  requestCopy = request;
  policies = [(LAAnalyticsPasscodeFallbackPeriod *)self policies];
  if (!policies || (v6 = policies, -[LAAnalyticsPasscodeFallbackPeriod policies](self, "policies"), v7 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(requestCopy, "policy")}], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "containsObject:", v8), v8, v7, v6, v9))
  {
    if (self->_passcodePresentedTime)
    {
      v10 = [MEMORY[0x277CBEAA8] now];
      biometrySuccessTime = self->_biometrySuccessTime;
      self->_biometrySuccessTime = v10;

      v13 = LA_LOG(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(LAAnalyticsPasscodeFallbackPeriod *)self biometrySucceededWithEvaluationRequest:v13];
      }

      [(LAAnalytics *)self collectIfNeeded];
    }
  }
}

- (NSArray)policies
{
  policyGroup = [(LAAnalyticsPasscodeFallbackPeriod *)self policyGroup];
  if ((policyGroup - 1) > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_278A61458 + policyGroup - 1);
  }
}

- (NSString)policyGroupName
{
  policyGroup = [(LAAnalyticsPasscodeFallbackPeriod *)self policyGroup];
  if (policyGroup > 3)
  {
    return @"Stockholm";
  }

  else
  {
    return &off_278A61470[policyGroup]->isa;
  }
}

- (int64_t)timeInterval
{
  if (!self->_passcodePresentedTime)
  {
    return 0;
  }

  biometrySuccessTime = self->_biometrySuccessTime;
  if (biometrySuccessTime)
  {
    [(NSDate *)biometrySuccessTime timeIntervalSinceDate:?];
    return v4;
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    [v6 timeIntervalSinceDate:self->_passcodePresentedTime];
    v5 = v7;
  }

  return v5;
}

- (BOOL)shouldCollect
{
  v2 = +[(LACBiometryHelper *)BiometryHelper];
  v3 = [v2 biometryType] == 2;

  return v3;
}

- (id)buildPayload
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"policyGroupName";
  policyGroupName = [(LAAnalyticsPasscodeFallbackPeriod *)self policyGroupName];
  v10[0] = policyGroupName;
  v9[1] = @"passcodeCount";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsPasscodeFallbackPeriod passcodeCount](self, "passcodeCount")}];
  v10[1] = v4;
  v9[2] = @"biometryAttempts";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsPasscodeFallbackPeriod biometryAttempts](self, "biometryAttempts")}];
  v10[2] = v5;
  v9[3] = @"timeInterval";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LAAnalyticsPasscodeFallbackPeriod timeInterval](self, "timeInterval")}];
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  policyGroupName = [(LAAnalyticsPasscodeFallbackPeriod *)self policyGroupName];
  v5 = [v3 stringWithFormat:@"<LAAnalyticsPasscodeFallbackPeriod group:%@, passcodeCount:%d, biometryAttempts:%d timeInterval: %d>", policyGroupName, -[LAAnalyticsPasscodeFallbackPeriod passcodeCount](self, "passcodeCount"), -[LAAnalyticsPasscodeFallbackPeriod biometryAttempts](self, "biometryAttempts"), -[LAAnalyticsPasscodeFallbackPeriod timeInterval](self, "timeInterval")];

  return v5;
}

- (id)instanceToReplaceWithWhenRemovedFromStorage
{
  v2 = [[LAAnalyticsPasscodeFallbackPeriod alloc] initWithPolicyGroup:[(LAAnalyticsPasscodeFallbackPeriod *)self policyGroup]];

  return v2;
}

+ (id)_persistedInstancesStorage
{
  if (_persistedInstancesStorage_onceToken != -1)
  {
    +[LAAnalyticsPasscodeFallbackPeriod _persistedInstancesStorage];
  }

  v3 = _persistedInstancesStorage_storage;

  return v3;
}

void *__63__LAAnalyticsPasscodeFallbackPeriod__persistedInstancesStorage__block_invoke()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v1 = _persistedInstancesStorage_storage;
  _persistedInstancesStorage_storage = v0;

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  result = [&unk_284B71E40 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(&unk_284B71E40);
        }

        v6 = -[LAAnalyticsPasscodeFallbackPeriod initWithPolicyGroup:]([LAAnalyticsPasscodeFallbackPeriod alloc], "initWithPolicyGroup:", [*(*(&v7 + 1) + 8 * v5) integerValue]);
        if ([(LAAnalyticsPasscodeFallbackPeriod *)v6 shouldCollect])
        {
          [(LAAnalytics *)v6 persistInStorage:_persistedInstancesStorage_storage];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [&unk_284B71E40 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

- (void)passcodePresentedWithEvaluationRequest:(uint64_t)a1 biometryAttempts:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_238B7F000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ was updated after passcode presentation", &v2, 0xCu);
}

- (void)biometrySucceededWithEvaluationRequest:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_238B7F000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ was updated after biometry success", &v2, 0xCu);
}

@end
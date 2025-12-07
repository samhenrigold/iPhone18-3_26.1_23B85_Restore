@interface HKCoreTelephonyClient
- (BOOL)isEmergencyServicePhoneNumber:(id)number;
- (HKCoreTelephonyClient)init;
- (HKCoreTelephonyClient)initWithQueue:(id)queue;
- (void)activeSubscriptionsDidChange;
- (void)dealloc;
- (void)fetchMobileCountryCodeFromCellularWithCompletion:(id)completion;
- (void)invalidateCachedCountryCode;
- (void)onForeground:(id)foreground;
- (void)plmnChanged:(id)changed plmn:(id)plmn;
- (void)simLessSubscriptionsDidChange;
- (void)subscriptionInfoDidChange;
@end

@implementation HKCoreTelephonyClient

- (HKCoreTelephonyClient)initWithQueue:(id)queue
{
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = HKCoreTelephonyClient;
  v6 = [(HKCoreTelephonyClient *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_queue, queue);
    v8 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:v7->_queue];
    client = v7->_client;
    v7->_client = v8;

    [(CoreTelephonyClient *)v7->_client setDelegate:v7];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_onForeground_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
  }

  return v7;
}

- (HKCoreTelephonyClient)init
{
  v3 = HKCreateSerialDispatchQueue(self, @"HKCoreTelephonyClient");
  v4 = [(HKCoreTelephonyClient *)self initWithQueue:v3];

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIApplicationWillEnterForegroundNotification" object:0];

  v4.receiver = self;
  v4.super_class = HKCoreTelephonyClient;
  [(HKCoreTelephonyClient *)&v4 dealloc];
}

- (void)fetchMobileCountryCodeFromCellularWithCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSString *)self->_cachedCountryCode copy];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    completionCopy[2](completionCopy, v5, 0);
  }

  else
  {
    client = self->_client;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__HKCoreTelephonyClient_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke;
    v7[3] = &unk_1E73801A8;
    v7[4] = self;
    v8 = completionCopy;
    [(CoreTelephonyClient *)client getCurrentDataSubscriptionContext:v7];
  }
}

void __74__HKCoreTelephonyClient_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 24);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__HKCoreTelephonyClient_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7380180;
  v6[4] = v4;
  v7 = v3;
  [v5 copyMobileCountryCode:a2 completion:v6];
}

void __74__HKCoreTelephonyClient_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v10 = a2;
  os_unfair_lock_lock(v5 + 2);
  v7 = [v10 copy];
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = v7;

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  (*(*(a1 + 40) + 16))();
}

- (BOOL)isEmergencyServicePhoneNumber:(id)number
{
  numberCopy = number;
  client = self->_client;
  v19 = 0;
  v6 = [(CoreTelephonyClient *)client getCurrentDataSubscriptionContextSync:&v19];
  v7 = v19;
  v9 = v7;
  if (v7)
  {
    _HKInitializeLogging(v7, v8);
    v10 = HKLogMedicalID;
    if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
    {
      [(HKCoreTelephonyClient *)v9 isEmergencyServicePhoneNumber:v10];
    }

    v11 = 0;
  }

  else
  {
    v12 = self->_client;
    v18 = 0;
    v11 = [(CoreTelephonyClient *)v12 isEmergencyNumberWithWhitelistIncluded:v6 number:numberCopy error:&v18];
    v13 = v18;
    v15 = v13;
    if (v13)
    {
      _HKInitializeLogging(v13, v14);
      v16 = HKLogMedicalID;
      if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
      {
        [(HKCoreTelephonyClient *)v15 isEmergencyServicePhoneNumber:v16];
      }

      v11 = 0;
    }
  }

  return v11;
}

- (void)invalidateCachedCountryCode
{
  os_unfair_lock_lock(&self->_lock);
  cachedCountryCode = self->_cachedCountryCode;
  self->_cachedCountryCode = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)onForeground:(id)foreground
{
  v10 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging(self, a2);
  v4 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2082;
    v9 = "[HKCoreTelephonyClient onForeground:]";
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_INFO, "[%{public}@.%{public}s] flushing caches", &v6, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  cachedCountryCode = self->_cachedCountryCode;
  self->_cachedCountryCode = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)plmnChanged:(id)changed plmn:(id)plmn
{
  v10 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging(self, a2);
  v5 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2082;
    v9 = "[HKCoreTelephonyClient plmnChanged:plmn:]";
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_INFO, "[%{public}@.%{public}s]", &v6, 0x16u);
  }

  [(HKCoreTelephonyClient *)self invalidateCachedCountryCode];
}

- (void)subscriptionInfoDidChange
{
  v8 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging(self, a2);
  v3 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
  {
    v4 = 138543618;
    selfCopy = self;
    v6 = 2082;
    v7 = "[HKCoreTelephonyClient subscriptionInfoDidChange]";
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_INFO, "[%{public}@.%{public}s]", &v4, 0x16u);
  }

  [(HKCoreTelephonyClient *)self invalidateCachedCountryCode];
}

- (void)activeSubscriptionsDidChange
{
  v8 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging(self, a2);
  v3 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
  {
    v4 = 138543618;
    selfCopy = self;
    v6 = 2082;
    v7 = "[HKCoreTelephonyClient activeSubscriptionsDidChange]";
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_INFO, "[%{public}@.%{public}s]", &v4, 0x16u);
  }

  [(HKCoreTelephonyClient *)self invalidateCachedCountryCode];
}

- (void)simLessSubscriptionsDidChange
{
  v8 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging(self, a2);
  v3 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
  {
    v4 = 138543618;
    selfCopy = self;
    v6 = 2082;
    v7 = "[HKCoreTelephonyClient simLessSubscriptionsDidChange]";
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_INFO, "[%{public}@.%{public}s]", &v4, 0x16u);
  }

  [(HKCoreTelephonyClient *)self invalidateCachedCountryCode];
}

- (void)isEmergencyServicePhoneNumber:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Failed to get CTXPCServiceSubscriptionInfo with error, %{public}@", &v2, 0xCu);
}

- (void)isEmergencyServicePhoneNumber:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Error validating if number is emergency number with error, %{public}@", &v2, 0xCu);
}

@end
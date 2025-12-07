@interface HMDAssistantWatchAuthenticationDataSource
- (void)getCurrentRequestIsWatchAuthenticatedWithCompletion:(id)completion;
@end

@implementation HMDAssistantWatchAuthenticationDataSource

- (void)getCurrentRequestIsWatchAuthenticatedWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Requesting watch auth from siri for current request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = objc_alloc_init(MEMORY[0x277CEF3A8]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HMDAssistantWatchAuthenticationDataSource_getCurrentRequestIsWatchAuthenticatedWithCompletion___block_invoke;
  v12[3] = &unk_279724EF8;
  v13 = v9;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = v9;
  [v11 getCurrentRequestIsWatchAuthenticatedWithCompletion:v12];
}

@end
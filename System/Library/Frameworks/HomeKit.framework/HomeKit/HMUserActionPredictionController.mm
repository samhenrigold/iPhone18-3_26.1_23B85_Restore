@interface HMUserActionPredictionController
+ (id)logCategory;
- (HMUserActionPredictionController)initWithHomeIdentifier:(id)identifier predictionProvider:(id)provider;
- (HMUserActionPredictionControllerDelegate)delegate;
- (id)predictions;
- (void)didUpdatePredictions:(id)predictions forHomeWithIdentifier:(id)identifier;
- (void)fetchPredictionsWithCompletion:(id)completion;
- (void)setDelegate:(id)delegate;
@end

@implementation HMUserActionPredictionController

- (void)didUpdatePredictions:(id)predictions forHomeWithIdentifier:(id)identifier
{
  v33 = *MEMORY[0x1E69E9840];
  predictionsCopy = predictions;
  identifierCopy = identifier;
  homeIdentifier = [(HMUserActionPredictionController *)self homeIdentifier];
  v9 = [identifierCopy hmf_isEqualToUUID:homeIdentifier];

  if (v9)
  {
    delegate = [(HMUserActionPredictionController *)self delegate];
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138544130;
      v26 = v14;
      v27 = 2112;
      v28 = delegate;
      v29 = 2112;
      v30 = predictionsCopy;
      v31 = 2112;
      v32 = identifierCopy;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate: %@ of updated user action predictions: %@ for home with identifier: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    if (objc_opt_respondsToSelector())
    {
      context = [(HMUserActionPredictionController *)selfCopy context];
      delegateCaller = [context delegateCaller];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __79__HMUserActionPredictionController_didUpdatePredictions_forHomeWithIdentifier___block_invoke;
      v21[3] = &unk_1E754E5E8;
      v22 = delegate;
      v23 = selfCopy;
      v24 = predictionsCopy;
      [delegateCaller invokeBlock:v21];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v26 = v20;
      v27 = 2112;
      v28 = predictionsCopy;
      v29 = 2112;
      v30 = identifierCopy;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Not notifying of updated user action predictions: %@ for home with identifier: %@ due to wrong home", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }
}

- (id)predictions
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

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_storeWeak(&self->_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->_lock);
  if (!delegateCopy || WeakRetained)
  {
    if (delegateCopy || !WeakRetained)
    {
      return;
    }

    predictionProvider = [(HMUserActionPredictionController *)self predictionProvider];
    homeIdentifier = [(HMUserActionPredictionController *)self homeIdentifier];
    [predictionProvider removeSubscriber:self forHomeIdentifier:homeIdentifier];
  }

  else
  {
    predictionProvider = [(HMUserActionPredictionController *)self predictionProvider];
    homeIdentifier = [(HMUserActionPredictionController *)self homeIdentifier];
    [predictionProvider addSubscriber:self forHomeIdentifier:homeIdentifier];
  }
}

- (HMUserActionPredictionControllerDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)fetchPredictionsWithCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUserActionPredictionController fetchPredictionsWithCompletion:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v5 = completionCopy;
  context = [(HMUserActionPredictionController *)self context];

  if (context)
  {
    context2 = [(HMUserActionPredictionController *)self context];
    delegateCaller = [context2 delegateCaller];

    predictionProvider = [(HMUserActionPredictionController *)self predictionProvider];
    homeIdentifier = [(HMUserActionPredictionController *)self homeIdentifier];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __67__HMUserActionPredictionController_fetchPredictionsWithCompletion___block_invoke;
    v22[3] = &unk_1E7547588;
    v23 = delegateCaller;
    v24 = v5;
    v11 = delegateCaller;
    [predictionProvider fetchPredictionsForHomeWithIdentifier:homeIdentifier completion:v22];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v15;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@fetchPredictionsWithCompletion is missing a context", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v5[2](v5, MEMORY[0x1E695E0F0]);
  }
}

- (HMUserActionPredictionController)initWithHomeIdentifier:(id)identifier predictionProvider:(id)provider
{
  identifierCopy = identifier;
  providerCopy = provider;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = providerCopy;
  if (!providerCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return +[(HMUserActionPredictionController *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMUserActionPredictionController;
  v9 = [(HMUserActionPredictionController *)&v15 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:identifierCopy];
    homeIdentifier = v9->_homeIdentifier;
    v9->_homeIdentifier = v10;

    objc_storeStrong(&v9->_predictionProvider, provider);
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6, &__block_literal_global_11102);
  }

  v3 = logCategory__hmf_once_v7;

  return v3;
}

uint64_t __47__HMUserActionPredictionController_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v7;
  logCategory__hmf_once_v7 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
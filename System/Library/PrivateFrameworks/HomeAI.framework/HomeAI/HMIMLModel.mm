@interface HMIMLModel
- (BOOL)_ensureModelWithError:(id *)error;
- (HMIMLModel)initWithModelURL:(id)l;
- (MLModel)underlyingModel;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (void)timerDidFire:(id)fire;
@end

@implementation HMIMLModel

- (HMIMLModel)initWithModelURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = HMIMLModel;
  v6 = [(HMIMLModel *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modelURL, l);
    v7->_lock._os_unfair_lock_opaque = 0;
    v8 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:? options:?];
    watchdogTimer = v7->_watchdogTimer;
    v7->_watchdogTimer = v8;

    [(HMFTimer *)v7->_watchdogTimer setDelegate:?];
  }

  return v7;
}

- (MLModel)underlyingModel
{
  v3 = [(HMIMLModel *)self _ensureModelWithError:?];
  model = 0;
  if (v3)
  {
    model = [(HMIMLModel *)self model];
  }

  return model;
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  if ([(HMIMLModel *)self _ensureModelWithError:?])
  {
    os_unfair_lock_lock_with_options();
    model = [(HMIMLModel *)self model];
    v7 = [model predictionFromFeatures:? error:?];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_ensureModelWithError:(id *)error
{
  os_unfair_lock_lock_with_options();
  model = [(HMIMLModel *)self model];

  if (model)
  {
    watchdogTimer = [(HMIMLModel *)self watchdogTimer];
    [watchdogTimer resume];

    v7 = 1;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CBFF38]);
    v9 = +[HMIPreference sharedInstance];
    usesCPUOnly = [v9 usesCPUOnly];

    if (usesCPUOnly)
    {
      [v8 setComputeUnits:?];
    }

    else
    {
      v11 = +[HMIPreference sharedInstance];
      [v11 BOOLPreferenceForKey:? defaultValue:?];
      [v8 setAllowBackgroundGPUCompute:?];
    }

    v12 = MEMORY[0x277CBFF20];
    modelURL = [(HMIMLModel *)self modelURL];
    v14 = [v12 modelWithContentsOfURL:? configuration:? error:?];
    v15 = 0;
    [(HMIMLModel *)self setModel:?];

    model2 = [(HMIMLModel *)self model];
    v7 = model2 != 0;

    if (model2)
    {
      v17 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:?];
      [(HMIMLModel *)self setTransaction:?];

      watchdogTimer2 = [(HMIMLModel *)self watchdogTimer];
      [watchdogTimer2 resume];
    }

    else
    {
      v19 = MEMORY[0x277CCACA8];
      modelURL2 = [(HMIMLModel *)self modelURL];
      path = [modelURL2 path];
      watchdogTimer2 = [v19 stringWithFormat:path];

      v22 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
      v23 = v22;
      if (error)
      {
        v24 = v22;
        *error = v23;
      }

      HMIErrorLog(self, v23);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (void)timerDidFire:(id)fire
{
  v16 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  v5 = objc_autoreleasePoolPush();
  os_unfair_lock_lock_with_options();
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    modelURL = [(HMIMLModel *)selfCopy modelURL];
    path = [modelURL path];
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = path;
    _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_INFO, "%{public}@Unloading model at path %@ after period of inactivity", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [(HMIMLModel *)selfCopy setModel:?];
  [(HMIMLModel *)selfCopy setTransaction:?];
  os_unfair_lock_unlock(&self->_lock);
  objc_autoreleasePoolPop(v5);
}

@end
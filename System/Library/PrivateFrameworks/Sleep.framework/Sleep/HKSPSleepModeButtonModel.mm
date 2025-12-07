@interface HKSPSleepModeButtonModel
- (BOOL)isSelected;
- (HKSPSleepModeButtonModel)initWithDelegate:(id)delegate;
- (HKSPSleepModeButtonModel)initWithSleepStore:(id)store delegate:(id)delegate behavior:(id)behavior;
- (HKSPSleepModeButtonModelDelegate)delegate;
- (void)_checkSleepModeState;
- (void)_launchAppForOnboarding;
- (void)_queue_updateStateWithSleepMode:(int64_t)mode;
- (void)_updateStateWithSleepMode:(int64_t)mode;
- (void)setSelected:(BOOL)selected;
@end

@implementation HKSPSleepModeButtonModel

- (HKSPSleepModeButtonModel)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [HKSPSleepStore alloc];
  v6 = HKSPGenerateSleepStoreIdentifier(@"sleepModeButton");
  v7 = [(HKSPSleepStore *)v5 initWithIdentifier:v6];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  v9 = [(HKSPSleepModeButtonModel *)self initWithSleepStore:v7 delegate:delegateCopy behavior:mEMORY[0x277CCDD30]];

  return v9;
}

- (HKSPSleepModeButtonModel)initWithSleepStore:(id)store delegate:(id)delegate behavior:(id)behavior
{
  storeCopy = store;
  delegateCopy = delegate;
  behaviorCopy = behavior;
  v16.receiver = self;
  v16.super_class = HKSPSleepModeButtonModel;
  v12 = [(HKSPSleepModeButtonModel *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sleepStore, store);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    objc_storeStrong(&v13->_behavior, behavior);
    [(HKSPSleepStore *)v13->_sleepStore addObserver:v13];
    [(HKSPSleepModeButtonModel *)v13 _checkSleepModeState];
    v14 = v13;
  }

  return v13;
}

- (void)_checkSleepModeState
{
  sleepModeFuture = [(HKSPSleepStore *)self->_sleepStore sleepModeFuture];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__HKSPSleepModeButtonModel__checkSleepModeState__block_invoke;
  v5[3] = &unk_279C73FF0;
  v5[4] = self;
  v4 = [sleepModeFuture addSuccessBlock:v5];
}

uint64_t __48__HKSPSleepModeButtonModel__checkSleepModeState__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];

  return [v2 _updateStateWithSleepMode:v3];
}

- (BOOL)isSelected
{
  isAppleWatch = [(_HKBehavior *)self->_behavior isAppleWatch];
  sleepMode = self->_sleepMode;
  v5 = sleepMode == 2;
  v6 = sleepMode != 0;
  if (isAppleWatch)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__HKSPSleepModeButtonModel_setSelected___block_invoke;
  v10[3] = &unk_279C74040;
  v10[4] = self;
  selectedCopy2 = selected;
  v5 = MEMORY[0x26D64AA30](v10, a2);
  v6 = v5;
  if (selectedCopy)
  {
    sleepStore = self->_sleepStore;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__HKSPSleepModeButtonModel_setSelected___block_invoke_302;
    v8[3] = &unk_279C74090;
    v8[4] = self;
    v9 = v5;
    [(HKSPSleepStore *)sleepStore currentSleepEventRecordWithCompletion:v8];
  }

  else
  {
    v5[2](v5);
  }
}

void __40__HKSPSleepModeButtonModel_setSelected___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(*(a1 + 32) + 16);
  v3 = *(a1 + 40);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __40__HKSPSleepModeButtonModel_setSelected___block_invoke_2;
  v8 = &unk_279C74018;
  objc_copyWeak(&v9, &location);
  [v2 setSleepModeOn:v3 completion:&v5];
  if (*(a1 + 40))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 32) _queue_updateStateWithSleepMode:{v4, v5, v6, v7, v8}];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __40__HKSPSleepModeButtonModel_setSelected___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((a2 & 1) == 0)
  {
    v7 = HKSPLogForCategory(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543618;
      v10 = objc_opt_class();
      v11 = 2114;
      v12 = v5;
      v8 = v10;
      _os_log_error_impl(&dword_269A84000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] failed to set sleep mode: %{public}@", &v9, 0x16u);
    }

    [WeakRetained _checkSleepModeState];
  }
}

void __40__HKSPSleepModeButtonModel_setSelected___block_invoke_302(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__HKSPSleepModeButtonModel_setSelected___block_invoke_2_303;
  v11[3] = &unk_279C74068;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __40__HKSPSleepModeButtonModel_setSelected___block_invoke_2_303(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277CCDD30] sharedBehavior];
    v3 = [v2 isAppleWatch];
    v4 = *(a1 + 32);
    if (v3)
    {
      v5 = [v4 isAnySleepTrackingOnboardingCompleted];

      if ((v5 & 1) == 0)
      {
LABEL_4:
        v6 = HKSPLogForCategory(7uLL);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138543362;
          v15 = objc_opt_class();
          v7 = v15;
          _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] onboarding not completed", &v14, 0xCu);
        }

        [*(a1 + 40) _launchAppForOnboarding];
        return;
      }
    }

    else
    {
      v9 = [v4 isAnySleepCoachingOnboardingCompleted];

      if (!v9)
      {
        goto LABEL_4;
      }
    }

    v10 = *(*(a1 + 56) + 16);

    v10();
  }

  else
  {
    v8 = HKSPLogForCategory(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = *(a1 + 48);
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v13 = v11;
      _os_log_error_impl(&dword_269A84000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] failed to get onboarding version: %{public}@", &v14, 0x16u);
    }
  }
}

- (void)_launchAppForOnboarding
{
  v4 = HKSPSleepURLWithOptionsFromSource(@"onboardSleepCoaching", 0, @"SleepModeButton", 0);
  delegate = [(HKSPSleepModeButtonModel *)self delegate];
  [delegate sleepModeButtonModel:self launchURL:v4];
}

- (void)_updateStateWithSleepMode:(int64_t)mode
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__HKSPSleepModeButtonModel__updateStateWithSleepMode___block_invoke;
  v3[3] = &unk_279C740B8;
  v3[4] = self;
  v3[5] = mode;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (void)_queue_updateStateWithSleepMode:(int64_t)mode
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = NSStringFromHKSPSleepMode(mode);
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating sleep mode state: %{public}@", &v10, 0x16u);
  }

  self->_sleepMode = mode;
  delegate = [(HKSPSleepModeButtonModel *)self delegate];
  [delegate sleepModeButtonModelChanged:self];
}

- (HKSPSleepModeButtonModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface HKWatchAppAvailability
- (HKWatchAppAvailability)initWithBundleID:(id)d;
- (id)findApplicationIn:(id)in;
- (void)appInstallStateOnWatch:(id)watch completion:(id)completion;
- (void)appQuery:(id)query resultsDidChange:(id)change;
- (void)dealloc;
@end

@implementation HKWatchAppAvailability

- (HKWatchAppAvailability)initWithBundleID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = HKWatchAppAvailability;
  v6 = [(HKWatchAppAvailability *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, d);
    v7->_installState = -1;
    v8 = [HKObserverSet alloc];
    v9 = [(HKObserverSet *)v8 initWithName:@"AppAvailabilityObservers" loggingCategory:HKLogDefault];
    observers = v7->_observers;
    v7->_observers = v9;
  }

  return v7;
}

- (void)dealloc
{
  query = [(HKWatchAppAvailability *)self query];
  [query setObserver:0];

  v4.receiver = self;
  v4.super_class = HKWatchAppAvailability;
  [(HKWatchAppAvailability *)&v4 dealloc];
}

- (void)appInstallStateOnWatch:(id)watch completion:(id)completion
{
  watchCopy = watch;
  completionCopy = completion;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v9 = getASDAppQueryClass_softClass;
  v22 = getASDAppQueryClass_softClass;
  if (!getASDAppQueryClass_softClass)
  {
    location[0] = MEMORY[0x1E69E9820];
    location[1] = 3221225472;
    location[2] = __getASDAppQueryClass_block_invoke;
    location[3] = &unk_1E7378388;
    location[4] = &v19;
    __getASDAppQueryClass_block_invoke(location);
    v9 = v20[3];
  }

  v10 = v9;
  _Block_object_dispose(&v19, 8);
  v11 = [v9 queryForSystemAppsOnPairedDevice:watchCopy];
  [(HKWatchAppAvailability *)self setQuery:v11];

  query = [(HKWatchAppAvailability *)self query];
  [query setObserver:self];

  objc_initWeak(location, self);
  query2 = [(HKWatchAppAvailability *)self query];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__HKWatchAppAvailability_appInstallStateOnWatch_completion___block_invoke;
  v15[3] = &unk_1E7381968;
  objc_copyWeak(v17, location);
  v14 = completionCopy;
  v16 = v14;
  v17[1] = a2;
  [query2 executeQueryWithResultHandler:v15];

  objc_destroyWeak(v17);
  objc_destroyWeak(location);
}

void __60__HKWatchAppAvailability_appInstallStateOnWatch_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    v15 = *(a1 + 32);
    v14 = [MEMORY[0x1E696ABC0] hk_error:100 format:{@"%@ deallocated", objc_opt_class()}];
    (*(v15 + 16))(v15, 3, v14);
LABEL_17:

    goto LABEL_18;
  }

  if (!v6 || ([WeakRetained _test_apps], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v12 = [v8 _test_apps];
    if (v12)
    {
      v13 = [v8 _test_apps];
      v14 = [v8 findApplicationIn:v13];
    }

    else
    {
      v14 = [v8 findApplicationIn:v5];
    }

    if (v14)
    {
      if ([v14 isInstalled])
      {
        v18 = 2;
      }

      else
      {
        v27 = [v14 progress];
        v18 = v27 != 0;
      }

      [v8 setInstallState:v18];
      v24 = *(a1 + 32);
      v25 = *(v24 + 16);
      v26 = v18;
    }

    else
    {
      _HKInitializeLogging(v16, v17);
      v19 = HKLogDefault;
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 48);
        v21 = v19;
        v22 = NSStringFromSelector(v20);
        v23 = [v8 bundleID];
        *buf = 138543874;
        v34 = v8;
        v35 = 2114;
        v36 = v22;
        v37 = 2114;
        v38 = v23;
        _os_log_impl(&dword_19197B000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> Application (%{public}@) was not found on watch", buf, 0x20u);
      }

      [v8 setInstallState:0];
      v24 = *(a1 + 32);
      v25 = *(v24 + 16);
      v26 = 0;
    }

    v25(v24, v26, 0);
    goto LABEL_17;
  }

  _HKInitializeLogging(v10, v11);
  v28 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
  {
    v29 = *(a1 + 48);
    v30 = v28;
    v31 = NSStringFromSelector(v29);
    v32 = [v8 bundleID];
    *buf = 138544130;
    v34 = v8;
    v35 = 2114;
    v36 = v31;
    v37 = 2114;
    v38 = v32;
    v39 = 2114;
    v40 = v6;
    _os_log_error_impl(&dword_19197B000, v30, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] -> Failed to fetch install state for application (%{public}@) with error: %{public}@", buf, 0x2Au);
  }

  [v8 setInstallState:3];
  (*(*(a1 + 32) + 16))();
LABEL_18:
}

- (id)findApplicationIn:(id)in
{
  v4 = MEMORY[0x1E696AE18];
  inCopy = in;
  bundleID = [(HKWatchAppAvailability *)self bundleID];
  v7 = [v4 predicateWithFormat:@"bundleID == %@", bundleID];

  v8 = [inCopy filteredArrayUsingPredicate:v7];

  firstObject = [v8 firstObject];

  return firstObject;
}

- (void)appQuery:(id)query resultsDidChange:(id)change
{
  v39 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  queryCopy = query;
  query = [(HKWatchAppAvailability *)self query];

  if (query == queryCopy)
  {
    _test_apps = [(HKWatchAppAvailability *)self _test_apps];
    if (_test_apps)
    {
      _test_apps2 = [(HKWatchAppAvailability *)self _test_apps];
      v12 = [(HKWatchAppAvailability *)self findApplicationIn:_test_apps2];
    }

    else
    {
      v12 = [(HKWatchAppAvailability *)self findApplicationIn:changeCopy];
    }

    if (v12)
    {
      if ([v12 isInstalled])
      {
        v15 = 2;
      }

      else
      {
        progress = [v12 progress];
        v15 = progress != 0;
      }
    }

    else
    {
      _HKInitializeLogging(v13, v14);
      v16 = HKLogDefault;
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = NSStringFromSelector(a2);
        bundleID = [(HKWatchAppAvailability *)self bundleID];
        *buf = 138543874;
        selfCopy2 = self;
        v35 = 2114;
        v36 = v18;
        v37 = 2114;
        v38 = bundleID;
        _os_log_impl(&dword_19197B000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> Application (%{public}@) was not found on watch", buf, 0x20u);
      }

      v15 = 0;
    }

    if ([(HKWatchAppAvailability *)self installState]== v15)
    {
      if (v15 == 1)
      {
        observers = self->_observers;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __52__HKWatchAppAvailability_appQuery_resultsDidChange___block_invoke_2;
        v30[3] = &unk_1E73819B8;
        v30[4] = self;
        v31 = v12;
        [(HKWatchAppAvailabilityObserver *)observers notifyObservers:v30];
      }
    }

    else
    {
      v22 = [(HKWatchAppAvailability *)self setInstallState:v15];
      _HKInitializeLogging(v22, v23);
      v24 = HKLogDefault;
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        v25 = MEMORY[0x1E696AD98];
        v26 = self->_observers;
        v27 = v24;
        v28 = [v25 numberWithUnsignedInteger:{-[HKWatchAppAvailabilityObserver count](v26, "count")}];
        *buf = 138543618;
        selfCopy2 = self;
        v35 = 2112;
        v36 = v28;
        _os_log_impl(&dword_19197B000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying %@ observers of onboarding completion update", buf, 0x16u);
      }

      v29 = self->_observers;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __52__HKWatchAppAvailability_appQuery_resultsDidChange___block_invoke;
      v32[3] = &unk_1E7381990;
      v32[4] = self;
      v32[5] = v15;
      [(HKWatchAppAvailabilityObserver *)v29 notifyObservers:v32];
    }
  }
}

void __52__HKWatchAppAvailability_appQuery_resultsDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = MEMORY[0x1E696AD98];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) progress];
    [v5 fractionCompleted];
    v6 = [v3 numberWithDouble:?];
    [v7 watchAppAvailability:v4 appInstallProgressDidUpdate:v6];
  }
}

@end
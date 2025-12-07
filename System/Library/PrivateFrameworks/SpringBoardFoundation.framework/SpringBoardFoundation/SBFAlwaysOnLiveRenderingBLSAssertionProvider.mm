@interface SBFAlwaysOnLiveRenderingBLSAssertionProvider
- (BLSAssertionObserving)assertionObserver;
- (SBFAlwaysOnLiveRenderingBLSAssertionProvider)init;
- (id)acquireWithExplanation:(id)explanation attributes:(id)attributes;
- (int64_t)acquiredAssertionsCount;
- (void)assertion:(id)assertion didCancelWithError:(id)error;
- (void)assertionWasAcquired:(id)acquired;
@end

@implementation SBFAlwaysOnLiveRenderingBLSAssertionProvider

- (SBFAlwaysOnLiveRenderingBLSAssertionProvider)init
{
  v6.receiver = self;
  v6.super_class = SBFAlwaysOnLiveRenderingBLSAssertionProvider;
  v2 = [(SBFAlwaysOnLiveRenderingBLSAssertionProvider *)&v6 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    assertions = v2->_assertions;
    v2->_assertions = weakToStrongObjectsMapTable;
  }

  return v2;
}

- (id)acquireWithExplanation:(id)explanation attributes:(id)attributes
{
  v18 = *MEMORY[0x1E69E9840];
  explanationCopy = explanation;
  v7 = [MEMORY[0x1E698E518] acquireWithExplanation:explanationCopy observer:self attributes:attributes];
  v8 = SBLogLiveRendering(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v12 = 138543874;
    v13 = v10;
    v14 = 2048;
    v15 = v7;
    v16 = 2112;
    v17 = explanationCopy;
    _os_log_impl(&dword_1BEA11000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> live-rendering assertion created with reason '%@'", &v12, 0x20u);
  }

  return v7;
}

- (int64_t)acquiredAssertionsCount
{
  keyEnumerator = [(NSMapTable *)self->_assertions keyEnumerator];
  v3 = 0;
  v4 = -1;
  do
  {
    nextObject = [keyEnumerator nextObject];

    ++v4;
    v3 = nextObject;
  }

  while (nextObject);

  return v4;
}

- (void)assertionWasAcquired:(id)acquired
{
  v22 = *MEMORY[0x1E69E9840];
  acquiredCopy = acquired;
  assertions = self->_assertions;
  v6 = [MEMORY[0x1E695DF00] now];
  identifier = [acquiredCopy identifier];
  [(NSMapTable *)assertions setObject:v6 forKey:identifier];

  explanation = [acquiredCopy explanation];
  acquiredAssertionsCount = [(SBFAlwaysOnLiveRenderingBLSAssertionProvider *)self acquiredAssertionsCount];
  v10 = acquiredAssertionsCount;
  v11 = SBLogLiveRendering(acquiredAssertionsCount);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = 138544130;
    v15 = v13;
    v16 = 2048;
    v17 = acquiredCopy;
    v18 = 2112;
    v19 = explanation;
    v20 = 1024;
    v21 = v10;
    _os_log_impl(&dword_1BEA11000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> live-rendering assertion acquired with reason '%@' (activeCount: %d)", &v14, 0x26u);
  }
}

- (void)assertion:(id)assertion didCancelWithError:(id)error
{
  v32 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  errorCopy = error;
  identifier = [assertionCopy identifier];
  v9 = [(NSMapTable *)self->_assertions objectForKey:identifier];
  if (v9)
  {
    [(NSMapTable *)self->_assertions removeObjectForKey:identifier];
    explanation = [assertionCopy explanation];
    acquiredAssertionsCount = [(SBFAlwaysOnLiveRenderingBLSAssertionProvider *)self acquiredAssertionsCount];
    v12 = [errorCopy debugDescription];
    timeIntervalSinceNow = [v9 timeIntervalSinceNow];
    v15 = v14;
    explanation2 = SBLogLiveRendering(timeIntervalSinceNow);
    if (os_log_type_enabled(explanation2, OS_LOG_TYPE_DEFAULT))
    {
      if (v15 < 0.0)
      {
        v15 = -v15;
      }

      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v20 = 138544642;
      v21 = v18;
      v22 = 2048;
      v23 = assertionCopy;
      v24 = 2048;
      v25 = v15;
      v26 = 2112;
      v27 = explanation;
      v28 = 2112;
      v29 = v12;
      v30 = 1024;
      v31 = acquiredAssertionsCount;
      _os_log_impl(&dword_1BEA11000, explanation2, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> live-rendering assertion released after %.2f seconds with reason '%@' (error: %@, activeCount: %d)", &v20, 0x3Au);
    }

    goto LABEL_8;
  }

  explanation = SBLogLiveRendering(0);
  if (os_log_type_enabled(explanation, OS_LOG_TYPE_INFO))
  {
    v19 = objc_opt_class();
    v12 = NSStringFromClass(v19);
    explanation2 = [assertionCopy explanation];
    v20 = 138543874;
    v21 = v12;
    v22 = 2048;
    v23 = assertionCopy;
    v24 = 2112;
    v25 = *&explanation2;
    _os_log_impl(&dword_1BEA11000, explanation, OS_LOG_TYPE_INFO, "<%{public}@: %p> live-rendering assertion release ignored because is not ours (reason: '%@')", &v20, 0x20u);
LABEL_8:
  }
}

- (BLSAssertionObserving)assertionObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_assertionObserver);

  return WeakRetained;
}

@end
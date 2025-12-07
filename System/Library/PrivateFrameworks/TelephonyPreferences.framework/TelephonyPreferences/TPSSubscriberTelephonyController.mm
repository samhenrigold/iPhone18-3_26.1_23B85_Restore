@interface TPSSubscriberTelephonyController
- (BOOL)isSIMPasscodeLockEnabled;
- (NSString)SIMStatus;
- (TPSSubscriberTelephonyController)init;
- (TPSSubscriberTelephonyController)initWithSubscriptionContext:(id)context;
- (id)getSIMPasscodeLockEnabledValue;
- (id)getSIMPasscodeLockEnabledValueWithError:(id *)error;
- (id)getSIMPasscodeRemainingAttemptsValue;
- (id)getSIMPasscodeRemainingAttemptsValueWithError:(id *)error;
- (id)getSIMStatus;
- (id)getSIMStatusWithError:(id *)error;
- (int64_t)SIMPasscodeRemainingAttempts;
- (void)changePIN:(id)n newPin:(id)pin;
- (void)changePIN:(id)n newPin:(id)pin completion:(id)completion;
- (void)fetchSIMPasscodeLockEnabled;
- (void)fetchSIMPasscodeLockEnabledWithCompletion:(id)completion;
- (void)fetchSIMPasscodeRemainingAttempts;
- (void)fetchSIMPasscodeRemainingAttemptsWithCompletion:(id)completion;
- (void)fetchSIMStatus;
- (void)fetchSIMStatusWithCompletion:(id)completion;
- (void)getSIMPasscodeRemainingAttemptsValue;
- (void)getSIMStatus;
- (void)presentSIMPasscodeAlert;
- (void)setSIMLockEnabled:(BOOL)enabled pin:(id)pin;
- (void)setSIMLockEnabled:(BOOL)enabled pin:(id)pin completion:(id)completion;
- (void)setSIMPasscodeLockEnabled:(BOOL)enabled;
- (void)setSIMPasscodeRemainingAttempts:(int64_t)attempts;
- (void)setSIMStatus:(id)status;
- (void)simLockSaveRequestDidComplete:(id)complete success:(BOOL)success;
- (void)simPinChangeRequestDidComplete:(id)complete success:(BOOL)success;
- (void)simPinEntryErrorDidOccur:(id)occur status:(id)status;
- (void)simPukEntryErrorDidOccur:(id)occur status:(id)status;
- (void)simStatusDidChange:(id)change status:(id)status;
@end

@implementation TPSSubscriberTelephonyController

- (TPSSubscriberTelephonyController)init
{
  [(TPSSubscriberTelephonyController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSSubscriberTelephonyController)initWithSubscriptionContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = TPSSubscriberTelephonyController;
  v6 = [(TPSTelephonyController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, context);
    v7->_SIMPasscodeRemainingAttempts = 0x7FFFFFFFFFFFFFFFLL;
    getSIMStatus = [(TPSSubscriberTelephonyController *)v7 getSIMStatus];
    v9 = [getSIMStatus copy];
    SIMStatus = v7->_SIMStatus;
    v7->_SIMStatus = v9;

    [(TPSSubscriberTelephonyController *)v7 fetchSIMPasscodeLockEnabled];
    [(TPSSubscriberTelephonyController *)v7 fetchSIMPasscodeRemainingAttempts];
  }

  return v7;
}

- (BOOL)isSIMPasscodeLockEnabled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__TPSSubscriberTelephonyController_isSIMPasscodeLockEnabled__block_invoke;
  v4[3] = &unk_2782E3988;
  v4[4] = self;
  v4[5] = &v5;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setSIMPasscodeLockEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__TPSSubscriberTelephonyController_setSIMPasscodeLockEnabled___block_invoke;
  v3[3] = &unk_2782E3D58;
  v3[4] = self;
  enabledCopy = enabled;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v3];
}

void *__62__TPSSubscriberTelephonyController_setSIMPasscodeLockEnabled___block_invoke(void *result)
{
  v3 = result[4];
  v4 = *(result + 40);
  if (*(v3 + 72) != v4)
  {
    v8 = v1;
    v9 = v2;
    *(v3 + 72) = v4;
    v5 = result[4];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__TPSSubscriberTelephonyController_setSIMPasscodeLockEnabled___block_invoke_2;
    v6[3] = &unk_2782E3D58;
    v6[4] = v5;
    v7 = *(result + 40);
    return [v5 performAtomicDelegateBlock:v6];
  }

  return result;
}

void __62__TPSSubscriberTelephonyController_setSIMPasscodeLockEnabled___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __62__TPSSubscriberTelephonyController_setSIMPasscodeLockEnabled___block_invoke_3;
          block[3] = &unk_2782E3D30;
          v10 = *(a1 + 32);
          block[4] = v7;
          block[5] = v10;
          v12 = *(a1 + 40);
          dispatch_async(v9, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

- (int64_t)SIMPasscodeRemainingAttempts
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__TPSSubscriberTelephonyController_SIMPasscodeRemainingAttempts__block_invoke;
  v4[3] = &unk_2782E3AA0;
  v4[4] = self;
  v4[5] = &v5;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __64__TPSSubscriberTelephonyController_SIMPasscodeRemainingAttempts__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[10];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v2 getSIMPasscodeRemainingAttemptsValue];
    *(*(a1 + 32) + 80) = [v4 integerValue];

    v3 = *(*(a1 + 32) + 80);
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (void)setSIMPasscodeRemainingAttempts:(int64_t)attempts
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__TPSSubscriberTelephonyController_setSIMPasscodeRemainingAttempts___block_invoke;
  v3[3] = &unk_2782E3B10;
  v3[4] = self;
  v3[5] = attempts;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v3];
}

void *__68__TPSSubscriberTelephonyController_setSIMPasscodeRemainingAttempts___block_invoke(void *result)
{
  v3 = result[4];
  v4 = result[5];
  if (*(v3 + 80) != v4)
  {
    v9 = v1;
    v10 = v2;
    *(v3 + 80) = v4;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__TPSSubscriberTelephonyController_setSIMPasscodeRemainingAttempts___block_invoke_2;
    v6[3] = &unk_2782E3B10;
    v5 = result[5];
    v7 = result[4];
    v8 = v5;
    return [v7 performAtomicDelegateBlock:v6];
  }

  return result;
}

void __68__TPSSubscriberTelephonyController_setSIMPasscodeRemainingAttempts___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __68__TPSSubscriberTelephonyController_setSIMPasscodeRemainingAttempts___block_invoke_3;
          block[3] = &unk_2782E3AE8;
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          block[4] = v7;
          block[5] = v10;
          block[6] = v11;
          dispatch_async(v9, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

- (NSString)SIMStatus
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__TPSSubscriberTelephonyController_SIMStatus__block_invoke;
  v4[3] = &unk_2782E3988;
  v4[4] = self;
  v4[5] = &v5;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setSIMStatus:(id)status
{
  statusCopy = status;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__TPSSubscriberTelephonyController_setSIMStatus___block_invoke;
  v6[3] = &unk_2782E39D0;
  v6[4] = self;
  v7 = statusCopy;
  v5 = statusCopy;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v6];
}

void __49__TPSSubscriberTelephonyController_setSIMStatus___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 88) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 88);
    *(v5 + 88) = v4;

    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__TPSSubscriberTelephonyController_setSIMStatus___block_invoke_2;
    v8[3] = &unk_2782E39D0;
    v8[4] = v7;
    v9 = *(a1 + 40);
    [v7 performAtomicDelegateBlock:v8];
  }
}

void __49__TPSSubscriberTelephonyController_setSIMStatus___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __49__TPSSubscriberTelephonyController_setSIMStatus___block_invoke_3;
          block[3] = &unk_2782E3888;
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          block[4] = v7;
          block[5] = v10;
          v13 = v11;
          dispatch_async(v9, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

- (void)changePIN:(id)n newPin:(id)pin
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__TPSSubscriberTelephonyController_changePIN_newPin___block_invoke;
  v4[3] = &unk_2782E3A48;
  v4[4] = self;
  [(TPSSubscriberTelephonyController *)self changePIN:n newPin:pin completion:v4];
}

void __53__TPSSubscriberTelephonyController_changePIN_newPin___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = [v2 domain];

    if (v4)
    {
      v7 = TPSLog(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __53__TPSSubscriberTelephonyController_changePIN_newPin___block_invoke_cold_1();
      }
    }
  }
}

- (void)changePIN:(id)n newPin:(id)pin completion:(id)completion
{
  completionCopy = completion;
  pinCopy = pin;
  nCopy = n;
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  subscriptionContext = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  [telephonyClient changePIN:subscriptionContext oldPin:nCopy newPin:pinCopy completion:completionCopy];
}

- (void)setSIMLockEnabled:(BOOL)enabled pin:(id)pin
{
  enabledCopy = enabled;
  pinCopy = pin;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__TPSSubscriberTelephonyController_setSIMLockEnabled_pin___block_invoke;
  v7[3] = &unk_2782E3D80;
  objc_copyWeak(&v8, &location);
  v9 = enabledCopy;
  [(TPSSubscriberTelephonyController *)self setSIMLockEnabled:enabledCopy pin:pinCopy completion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __58__TPSSubscriberTelephonyController_setSIMLockEnabled_pin___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = [v2 domain];

    if (v4)
    {
      v7 = TPSLog(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __58__TPSSubscriberTelephonyController_setSIMLockEnabled_pin___block_invoke_cold_1();
      }
    }
  }
}

- (void)setSIMLockEnabled:(BOOL)enabled pin:(id)pin completion:(id)completion
{
  enabledCopy = enabled;
  completionCopy = completion;
  pinCopy = pin;
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  subscriptionContext = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  [telephonyClient saveSIMLockValue:subscriptionContext enabled:enabledCopy pin:pinCopy completion:completionCopy];
}

- (void)presentSIMPasscodeAlert
{
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  subscriptionContext = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__TPSSubscriberTelephonyController_presentSIMPasscodeAlert__block_invoke;
  v6[3] = &unk_2782E3DA8;
  v6[4] = self;
  v6[5] = a2;
  [telephonyClient promptForSIMUnlock:subscriptionContext completion:v6];
}

void __59__TPSSubscriberTelephonyController_presentSIMPasscodeAlert__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = [v2 domain];

    if (v4)
    {
      v7 = TPSLog(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __59__TPSSubscriberTelephonyController_presentSIMPasscodeAlert__block_invoke_cold_1();
      }
    }
  }
}

- (id)getSIMPasscodeLockEnabledValue
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v3 = [(TPSSubscriberTelephonyController *)self getSIMPasscodeLockEnabledValueWithError:&v14];
  v4 = v14;
  v5 = v4;
  if (v4)
  {
    domain = [v4 domain];

    if (domain)
    {
      v9 = TPSLog(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = v11;
        v13 = NSStringFromSelector(a2);
        *buf = 138412802;
        v16 = v11;
        v17 = 2112;
        v18 = v13;
        v19 = 2112;
        v20 = v5;
        _os_log_error_impl(&dword_21B8E9000, v9, OS_LOG_TYPE_ERROR, "[%@ %@] failed with error %@.", buf, 0x20u);
      }
    }
  }

  return v3;
}

- (id)getSIMPasscodeLockEnabledValueWithError:(id *)error
{
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  subscriptionContext = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  v7 = [telephonyClient fetchSIMLockValue:subscriptionContext error:error];

  return v7;
}

- (void)fetchSIMPasscodeLockEnabled
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __63__TPSSubscriberTelephonyController_fetchSIMPasscodeLockEnabled__block_invoke;
  v2[3] = &unk_2782E3DD0;
  v2[4] = self;
  v2[5] = a2;
  [(TPSSubscriberTelephonyController *)self fetchSIMPasscodeLockEnabledWithCompletion:v2];
}

void __63__TPSSubscriberTelephonyController_fetchSIMPasscodeLockEnabled__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) setSIMPasscodeLockEnabled:{objc_msgSend(a2, "BOOLValue")}];
  if (v5)
  {
    v6 = [v5 domain];

    if (v6)
    {
      v9 = TPSLog(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = *(a1 + 40);
        v12 = v10;
        v13 = NSStringFromSelector(v11);
        v14 = 138412802;
        v15 = v10;
        v16 = 2112;
        v17 = v13;
        v18 = 2112;
        v19 = v5;
        _os_log_error_impl(&dword_21B8E9000, v9, OS_LOG_TYPE_ERROR, "[%@ %@] failed with error %@.", &v14, 0x20u);
      }
    }
  }
}

- (void)fetchSIMPasscodeLockEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  subscriptionContext = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  [telephonyClient fetchSIMLockValue:subscriptionContext completion:completionCopy];
}

- (id)getSIMPasscodeRemainingAttemptsValue
{
  v10 = 0;
  v2 = [(TPSSubscriberTelephonyController *)self getSIMPasscodeRemainingAttemptsValueWithError:&v10];
  v3 = v10;
  v4 = v3;
  if (v3)
  {
    domain = [v3 domain];

    if (domain)
    {
      v8 = TPSLog(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [TPSSubscriberTelephonyController getSIMPasscodeRemainingAttemptsValue];
      }
    }
  }

  return v2;
}

- (id)getSIMPasscodeRemainingAttemptsValueWithError:(id *)error
{
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  subscriptionContext = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  v7 = [telephonyClient getRemainingPINAttemptCount:subscriptionContext error:error];

  return v7;
}

- (void)fetchSIMPasscodeRemainingAttempts
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __69__TPSSubscriberTelephonyController_fetchSIMPasscodeRemainingAttempts__block_invoke;
  v2[3] = &unk_2782E3DD0;
  v2[4] = self;
  v2[5] = a2;
  [(TPSSubscriberTelephonyController *)self fetchSIMPasscodeRemainingAttemptsWithCompletion:v2];
}

void __69__TPSSubscriberTelephonyController_fetchSIMPasscodeRemainingAttempts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) setSIMPasscodeRemainingAttempts:{objc_msgSend(a2, "integerValue")}];
  if (v5)
  {
    v6 = [v5 domain];

    if (v6)
    {
      v9 = TPSLog(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = *(a1 + 40);
        v12 = v10;
        v13 = NSStringFromSelector(v11);
        v14 = 138412802;
        v15 = v10;
        v16 = 2112;
        v17 = v13;
        v18 = 2112;
        v19 = v5;
        _os_log_error_impl(&dword_21B8E9000, v9, OS_LOG_TYPE_ERROR, "[%@ %@] failed with error %@.", &v14, 0x20u);
      }
    }
  }
}

- (void)fetchSIMPasscodeRemainingAttemptsWithCompletion:(id)completion
{
  completionCopy = completion;
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  subscriptionContext = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  [telephonyClient getRemainingPINAttemptCount:subscriptionContext completion:completionCopy];
}

- (id)getSIMStatus
{
  v10 = 0;
  v2 = [(TPSSubscriberTelephonyController *)self getSIMStatusWithError:&v10];
  v3 = v10;
  v4 = v3;
  if (v3)
  {
    domain = [v3 domain];

    if (domain)
    {
      v8 = TPSLog(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [TPSSubscriberTelephonyController getSIMStatus];
      }
    }
  }

  return v2;
}

- (id)getSIMStatusWithError:(id *)error
{
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  subscriptionContext = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  v7 = [telephonyClient getSIMStatus:subscriptionContext error:error];

  return v7;
}

- (void)fetchSIMStatus
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __50__TPSSubscriberTelephonyController_fetchSIMStatus__block_invoke;
  v2[3] = &unk_2782E3DF8;
  v2[4] = self;
  v2[5] = a2;
  [(TPSSubscriberTelephonyController *)self fetchSIMStatusWithCompletion:v2];
}

void __50__TPSSubscriberTelephonyController_fetchSIMStatus__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) setSIMStatus:a2];
  if (v5)
  {
    v6 = [v5 domain];

    if (v6)
    {
      v9 = TPSLog(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = *(a1 + 40);
        v12 = v10;
        v13 = NSStringFromSelector(v11);
        v14 = 138412802;
        v15 = v10;
        v16 = 2112;
        v17 = v13;
        v18 = 2112;
        v19 = v5;
        _os_log_error_impl(&dword_21B8E9000, v9, OS_LOG_TYPE_ERROR, "[%@ %@] failed with error %@.", &v14, 0x20u);
      }
    }
  }
}

- (void)fetchSIMStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  subscriptionContext = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  [telephonyClient getSIMStatus:subscriptionContext completion:completionCopy];
}

- (void)simStatusDidChange:(id)change status:(id)status
{
  v21 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  statusCopy = status;
  uuid = [changeCopy uuid];
  subscriptionContext = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  uuid2 = [subscriptionContext uuid];
  v11 = [uuid isEqual:uuid2];

  if (v11)
  {
    v14 = TPSLog(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = statusCopy;
      v19 = 2112;
      v20 = changeCopy;
      _os_log_impl(&dword_21B8E9000, v14, OS_LOG_TYPE_DEFAULT, "SIM status changed to %@ for subscription context %@.", &v17, 0x16u);
    }

    getSIMPasscodeLockEnabledValue = [(TPSSubscriberTelephonyController *)self getSIMPasscodeLockEnabledValue];
    -[TPSSubscriberTelephonyController setSIMPasscodeLockEnabled:](self, "setSIMPasscodeLockEnabled:", [getSIMPasscodeLockEnabledValue BOOLValue]);

    getSIMPasscodeRemainingAttemptsValue = [(TPSSubscriberTelephonyController *)self getSIMPasscodeRemainingAttemptsValue];
    -[TPSSubscriberTelephonyController setSIMPasscodeRemainingAttempts:](self, "setSIMPasscodeRemainingAttempts:", [getSIMPasscodeRemainingAttemptsValue integerValue]);

    [(TPSSubscriberTelephonyController *)self setSIMStatus:statusCopy];
  }
}

- (void)simLockSaveRequestDidComplete:(id)complete success:(BOOL)success
{
  successCopy = success;
  v23 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  uuid = [completeCopy uuid];
  subscriptionContext = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  uuid2 = [subscriptionContext uuid];
  v10 = [uuid isEqual:uuid2];

  if (v10)
  {
    v13 = TPSLog(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"unsuccessful";
      if (successCopy)
      {
        v14 = @"successful";
      }

      *buf = 138412546;
      v20 = v14;
      v21 = 2112;
      v22 = completeCopy;
      _os_log_impl(&dword_21B8E9000, v13, OS_LOG_TYPE_DEFAULT, "SIM lock save request was %@ for subscription context %@.", buf, 0x16u);
    }

    getSIMPasscodeLockEnabledValue = [(TPSSubscriberTelephonyController *)self getSIMPasscodeLockEnabledValue];
    -[TPSSubscriberTelephonyController setSIMPasscodeLockEnabled:](self, "setSIMPasscodeLockEnabled:", [getSIMPasscodeLockEnabledValue BOOLValue]);

    getSIMPasscodeRemainingAttemptsValue = [(TPSSubscriberTelephonyController *)self getSIMPasscodeRemainingAttemptsValue];
    -[TPSSubscriberTelephonyController setSIMPasscodeRemainingAttempts:](self, "setSIMPasscodeRemainingAttempts:", [getSIMPasscodeRemainingAttemptsValue integerValue]);

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __74__TPSSubscriberTelephonyController_simLockSaveRequestDidComplete_success___block_invoke;
    v17[3] = &unk_2782E3D58;
    v17[4] = self;
    v18 = successCopy;
    [(TPSController *)self performAtomicDelegateBlock:v17];
  }
}

void __74__TPSSubscriberTelephonyController_simLockSaveRequestDidComplete_success___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __74__TPSSubscriberTelephonyController_simLockSaveRequestDidComplete_success___block_invoke_2;
          block[3] = &unk_2782E3D30;
          v10 = *(a1 + 32);
          block[4] = v7;
          block[5] = v10;
          v12 = *(a1 + 40);
          dispatch_async(v9, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

- (void)simPinEntryErrorDidOccur:(id)occur status:(id)status
{
  v17 = *MEMORY[0x277D85DE8];
  occurCopy = occur;
  uuid = [occurCopy uuid];
  subscriptionContext = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  uuid2 = [subscriptionContext uuid];
  v9 = [uuid isEqual:uuid2];

  if (v9)
  {
    v12 = TPSLog(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = occurCopy;
      _os_log_impl(&dword_21B8E9000, v12, OS_LOG_TYPE_DEFAULT, "SIM PIN entry attempt failed for subscription context %@.", buf, 0xCu);
    }

    getSIMPasscodeRemainingAttemptsValue = [(TPSSubscriberTelephonyController *)self getSIMPasscodeRemainingAttemptsValue];
    -[TPSSubscriberTelephonyController setSIMPasscodeRemainingAttempts:](self, "setSIMPasscodeRemainingAttempts:", [getSIMPasscodeRemainingAttemptsValue integerValue]);

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__TPSSubscriberTelephonyController_simPinEntryErrorDidOccur_status___block_invoke;
    v14[3] = &unk_2782E3960;
    v14[4] = self;
    [(TPSController *)self performAtomicDelegateBlock:v14];
  }
}

void __68__TPSSubscriberTelephonyController_simPinEntryErrorDidOccur_status___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v11[2] = __68__TPSSubscriberTelephonyController_simPinEntryErrorDidOccur_status___block_invoke_2;
          v11[3] = &unk_2782E39D0;
          v10 = *(a1 + 32);
          v11[4] = v7;
          v11[5] = v10;
          dispatch_async(v9, v11);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (void)simPukEntryErrorDidOccur:(id)occur status:(id)status
{
  v16 = *MEMORY[0x277D85DE8];
  occurCopy = occur;
  uuid = [occurCopy uuid];
  subscriptionContext = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  uuid2 = [subscriptionContext uuid];
  v9 = [uuid isEqual:uuid2];

  if (v9)
  {
    v12 = TPSLog(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = occurCopy;
      _os_log_impl(&dword_21B8E9000, v12, OS_LOG_TYPE_DEFAULT, "SIM PUK entry attempt failed for subscription context %@.", buf, 0xCu);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__TPSSubscriberTelephonyController_simPukEntryErrorDidOccur_status___block_invoke;
    v13[3] = &unk_2782E3960;
    v13[4] = self;
    [(TPSController *)self performAtomicDelegateBlock:v13];
  }
}

void __68__TPSSubscriberTelephonyController_simPukEntryErrorDidOccur_status___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v11[2] = __68__TPSSubscriberTelephonyController_simPukEntryErrorDidOccur_status___block_invoke_2;
          v11[3] = &unk_2782E39D0;
          v10 = *(a1 + 32);
          v11[4] = v7;
          v11[5] = v10;
          dispatch_async(v9, v11);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (void)simPinChangeRequestDidComplete:(id)complete success:(BOOL)success
{
  successCopy = success;
  v22 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  uuid = [completeCopy uuid];
  subscriptionContext = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  uuid2 = [subscriptionContext uuid];
  v10 = [uuid isEqual:uuid2];

  if (v10)
  {
    v13 = TPSLog(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"unsuccessful";
      if (successCopy)
      {
        v14 = @"successful";
      }

      *buf = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = completeCopy;
      _os_log_impl(&dword_21B8E9000, v13, OS_LOG_TYPE_DEFAULT, "SIM PIN change was %@ for %@.", buf, 0x16u);
    }

    getSIMPasscodeRemainingAttemptsValue = [(TPSSubscriberTelephonyController *)self getSIMPasscodeRemainingAttemptsValue];
    -[TPSSubscriberTelephonyController setSIMPasscodeRemainingAttempts:](self, "setSIMPasscodeRemainingAttempts:", [getSIMPasscodeRemainingAttemptsValue integerValue]);

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__TPSSubscriberTelephonyController_simPinChangeRequestDidComplete_success___block_invoke;
    v16[3] = &unk_2782E3D58;
    v16[4] = self;
    v17 = successCopy;
    [(TPSController *)self performAtomicDelegateBlock:v16];
  }
}

void __75__TPSSubscriberTelephonyController_simPinChangeRequestDidComplete_success___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __75__TPSSubscriberTelephonyController_simPinChangeRequestDidComplete_success___block_invoke_2;
          block[3] = &unk_2782E3D30;
          v10 = *(a1 + 32);
          block[4] = v7;
          block[5] = v10;
          v12 = *(a1 + 40);
          dispatch_async(v9, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

void __53__TPSSubscriberTelephonyController_changePIN_newPin___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_1(v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __58__TPSSubscriberTelephonyController_setSIMLockEnabled_pin___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  WeakRetained = objc_loadWeakRetained((v0 + 32));
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __59__TPSSubscriberTelephonyController_presentSIMPasscodeAlert__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v1 = v0;
  v2 = objc_opt_class();
  v3 = *(v1 + 40);
  v4 = v2;
  v10 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)getSIMPasscodeRemainingAttemptsValue
{
  OUTLINED_FUNCTION_2();
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_1(v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)getSIMStatus
{
  OUTLINED_FUNCTION_2();
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_1(v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end
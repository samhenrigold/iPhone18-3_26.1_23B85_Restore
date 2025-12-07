@interface LPKUserSwitchCycleController
- (BOOL)_isLoginSession;
- (BOOL)_validateUserSwitchExpectation;
- (BOOL)startUserSwitchWithType:(unint64_t)type count:(int64_t)count username:(id)username password:(id)password loginDelay:(int64_t)delay logoutDelay:(int64_t)logoutDelay;
- (BOOL)triggerTestUserSwitchIfNeeded;
- (LPKUserSwitchCycleController)initWithDelegate:(id)delegate;
- (LPKUserSwitchCycleResponder)delegate;
- (unint64_t)_currentEnvironment;
- (void)_clearOutLocalPerfTestDefaults;
- (void)_fixTestStatesForRetry;
- (void)_loginAccount:(id)account password:(id)password localLoginOnly:(BOOL)only delay:(double)delay;
- (void)_scheduleRetryWithTimeout:(double)timeout;
- (void)_setUserSwitchDestinationExpectation:(unint64_t)expectation retryIfFailed:(BOOL)failed completionHandler:(id)handler;
- (void)_triggerFastLogoutWithDelay:(double)delay;
- (void)_triggerFullLogoutWithDelay:(double)delay;
- (void)_updateLocalPerfTestCycleCount:(int64_t)count;
- (void)_validateUserSwitchExpectation;
- (void)triggerTestUserSwitchIfNeeded;
@end

@implementation LPKUserSwitchCycleController

- (LPKUserSwitchCycleController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = LPKUserSwitchCycleController;
  v5 = [(LPKUserSwitchCycleController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (BOOL)startUserSwitchWithType:(unint64_t)type count:(int64_t)count username:(id)username password:(id)password loginDelay:(int64_t)delay logoutDelay:(int64_t)logoutDelay
{
  v42 = *MEMORY[0x277D85DE8];
  usernameCopy = username;
  passwordCopy = password;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if ([MEMORY[0x277D244C0] isInternalBuild])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      typeCopy = type;
      v40 = 2048;
      countCopy = count;
      _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Starting user switch cycle with type: %lu for %ld times", buf, 0x16u);
    }

    v16 = dispatch_semaphore_create(0);
    mEMORY[0x277D244D0] = [MEMORY[0x277D244D0] sharedStorage];
    v37[0] = MEMORY[0x277CBEC38];
    v36[0] = @"LPKIsLocalUserSwitchTestOngoing";
    v36[1] = @"LPKLocalUserSwitchTestType";
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    v37[1] = v18;
    v36[2] = @"LPKLocalUserSwitchTestRemainCycleCount";
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:count];
    v20 = v19;
    v21 = @"Local User";
    if (usernameCopy)
    {
      v21 = usernameCopy;
    }

    v37[2] = v19;
    v37[3] = v21;
    v36[3] = @"LPKLocalUserSwitchTestUsername";
    v36[4] = @"LPKLocalUserSwitchTestPassword";
    v22 = &stru_28683D458;
    if (passwordCopy)
    {
      v22 = passwordCopy;
    }

    v37[4] = v22;
    v36[5] = @"LPKLocalUserSwitchTestLoginDelay";
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:delay];
    v37[5] = v23;
    v36[6] = @"LPKLocalUserSwitchTestLogoutDelay";
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:logoutDelay];
    v37[6] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:7];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __103__LPKUserSwitchCycleController_startUserSwitchWithType_count_username_password_loginDelay_logoutDelay___block_invoke;
    v29[3] = &unk_279827BD0;
    v31 = &v32;
    v29[4] = self;
    v26 = v16;
    v30 = v26;
    [mEMORY[0x277D244D0] saveKeyValuePairs:v25 completionHandler:v29];

    dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
    v27 = *(v33 + 24);
  }

  else
  {
    v27 = *(v33 + 24);
  }

  _Block_object_dispose(&v32, 8);

  return v27 & 1;
}

intptr_t __103__LPKUserSwitchCycleController_startUserSwitchWithType_count_username_password_loginDelay_logoutDelay___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) triggerTestUserSwitchIfNeeded];
  }

  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

- (BOOL)triggerTestUserSwitchIfNeeded
{
  v50[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D244C0] isInternalBuild])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v46 = "[LPKUserSwitchCycleController triggerTestUserSwitchIfNeeded]";
      _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    mEMORY[0x277D244D0] = [MEMORY[0x277D244D0] sharedStorage];
    v4 = [mEMORY[0x277D244D0] retrieveValueForKey:@"LPKIsLocalUserSwitchTestOngoing"];
    bOOLValue = [v4 BOOLValue];

    if (!bOOLValue)
    {
      goto LABEL_31;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v46 = "[LPKUserSwitchCycleController triggerTestUserSwitchIfNeeded]";
      _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Local user switch test is ongoing", buf, 0xCu);
    }

    v6 = [mEMORY[0x277D244D0] retrieveValueForKey:@"LPKLocalUserSwitchTestRemainCycleCount"];
    integerValue = [v6 integerValue];

    if (![(LPKUserSwitchCycleController *)self _validateUserSwitchExpectation])
    {
      v8 = [mEMORY[0x277D244D0] retrieveValueForKey:@"LPKLocalUserSwitchTestIsPerformanceTest"];
      bOOLValue2 = [v8 BOOLValue];

      v10 = [mEMORY[0x277D244D0] retrieveValueForKey:@"LPKLocalUserSwitchTestRetryCount"];
      unsignedIntValue = [v10 unsignedIntValue];

      if (!bOOLValue2 || !unsignedIntValue)
      {
        [(LPKUserSwitchCycleController *)self _clearOutLocalPerfTestDefaults];
        goto LABEL_31;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "We are doing performance test, try to recover", buf, 2u);
      }

      [(LPKUserSwitchCycleController *)self _fixTestStatesForRetry];
    }

    if (integerValue)
    {
      v12 = [mEMORY[0x277D244D0] retrieveValueForKey:@"LPKLocalUserSwitchTestType"];
      unsignedIntegerValue = [v12 unsignedIntegerValue];

      v14 = [mEMORY[0x277D244D0] retrieveValueForKey:@"LPKLocalUserSwitchTestUsername"];
      v15 = [mEMORY[0x277D244D0] retrieveValueForKey:@"LPKLocalUserSwitchTestPassword"];
      v16 = [mEMORY[0x277D244D0] retrieveValueForKey:@"LPKLocalUserSwitchTestLoginDelay"];
      integerValue2 = [v16 integerValue];

      v18 = 5.0;
      if (integerValue2 >= 5.0)
      {
        v19 = integerValue2;
      }

      else
      {
        v19 = 5.0;
      }

      v20 = [mEMORY[0x277D244D0] retrieveValueForKey:@"LPKLocalUserSwitchTestLogoutDelay"];
      integerValue3 = [v20 integerValue];

      if (integerValue3 >= 5.0)
      {
        v18 = integerValue3;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v46 = "[LPKUserSwitchCycleController triggerTestUserSwitchIfNeeded]";
        v47 = 2048;
        v48 = unsignedIntegerValue;
        _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Will perform switch type: %ld", buf, 0x16u);
      }

      v22 = objc_opt_new();
      if ([(__CFString *)v14 length])
      {
        v23 = v22;
        v24 = v14;
      }

      else
      {
        v24 = @"Local User";
        v23 = v22;
      }

      [v23 setUsername:v24];
      if (-[__CFString length](v14, "length") && [v15 length])
      {
        v31 = 0;
      }

      else
      {

        v15 = 0;
        v31 = 1;
      }

      v32 = v18;
      if (unsignedIntegerValue > 1)
      {
        if (unsignedIntegerValue == 2)
        {
          if (![(LPKUserSwitchCycleController *)self _isLoginSession])
          {
            [(LPKUserSwitchCycleController *)self _updateLocalPerfTestCycleCount:integerValue - 1];
            [(LPKUserSwitchCycleController *)self _triggerFastLogoutWithDelay:v32];
            goto LABEL_63;
          }

          goto LABEL_61;
        }

        if (unsignedIntegerValue == 3)
        {
          if ([(LPKUserSwitchCycleController *)self _isLoginSession])
          {
LABEL_61:
            [(LPKUserSwitchCycleController *)self _loginAccount:v14 password:v15 localLoginOnly:v31 delay:v19];
            goto LABEL_63;
          }

          [(LPKUserSwitchCycleController *)self _updateLocalPerfTestCycleCount:integerValue - 1];
LABEL_59:
          [(LPKUserSwitchCycleController *)self _triggerFullLogoutWithDelay:v32];
LABEL_63:

LABEL_64:
          v25 = 1;
          goto LABEL_65;
        }
      }

      else
      {
        if (!unsignedIntegerValue)
        {
          if ([(LPKUserSwitchCycleController *)self _isLoginSession])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v46 = "[LPKUserSwitchCycleController triggerTestUserSwitchIfNeeded]";
              _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Will trigger first time login", buf, 0xCu);
            }

            [(LPKUserSwitchCycleController *)self _updateLocalPerfTestCycleCount:integerValue - 1];
            mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
            v36 = [mEMORY[0x277D77BF8] userExists:v22];

            if (v36)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v46 = "[LPKUserSwitchCycleController triggerTestUserSwitchIfNeeded]";
                _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: User exist, we need to delete the user first", buf, 0xCu);
              }

              mEMORY[0x277D77BF8]2 = [MEMORY[0x277D77BF8] sharedManager];
              v39[0] = MEMORY[0x277D85DD0];
              v39[1] = 3221225472;
              v39[2] = __61__LPKUserSwitchCycleController_triggerTestUserSwitchIfNeeded__block_invoke_46;
              v39[3] = &unk_279827C20;
              v39[4] = self;
              v40 = v14;
              v43 = v31;
              v41 = v15;
              v42 = v19;
              [mEMORY[0x277D77BF8]2 deleteUser:v22 completionHandler:v39];

              goto LABEL_63;
            }

            goto LABEL_61;
          }

          goto LABEL_59;
        }

        if (unsignedIntegerValue == 1)
        {
          if ([(LPKUserSwitchCycleController *)self _isLoginSession])
          {
            mEMORY[0x277D77BF8]3 = [MEMORY[0x277D77BF8] sharedManager];
            v34 = [mEMORY[0x277D77BF8]3 userExists:v22];

            if (v34)
            {
              [(LPKUserSwitchCycleController *)self _updateLocalPerfTestCycleCount:integerValue - 1];
            }

            goto LABEL_61;
          }

          goto LABEL_59;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [LPKUserSwitchCycleController triggerTestUserSwitchIfNeeded];
      }

      goto LABEL_63;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v46 = "[LPKUserSwitchCycleController triggerTestUserSwitchIfNeeded]";
      _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: No more user switch to do", buf, 0xCu);
    }

    mEMORY[0x277D77BF8]4 = [MEMORY[0x277D77BF8] sharedManager];
    currentUser = [mEMORY[0x277D77BF8]4 currentUser];
    isLoginUser = [currentUser isLoginUser];

    v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!isLoginUser)
    {
      if (v29)
      {
        *buf = 136315138;
        v46 = "[LPKUserSwitchCycleController triggerTestUserSwitchIfNeeded]";
        _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Not login user, trigger full logout", buf, 0xCu);
      }

      [(LPKUserSwitchCycleController *)self _triggerFullLogoutWithDelay:5.0];
      goto LABEL_64;
    }

    if (v29)
    {
      *buf = 136315138;
      v46 = "[LPKUserSwitchCycleController triggerTestUserSwitchIfNeeded]";
      _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Is login user, dump result", buf, 0xCu);
    }

    [(LPKUserSwitchCycleController *)self _clearOutLocalPerfTestDefaults];
    v49 = @"LPKLocalUserSwitchTestHasFinishedSuccessfully";
    v50[0] = MEMORY[0x277CBEC38];
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __61__LPKUserSwitchCycleController_triggerTestUserSwitchIfNeeded__block_invoke;
    v44[3] = &unk_279827BF8;
    v44[4] = self;
    [mEMORY[0x277D244D0] saveKeyValuePairs:v30 completionHandler:v44];

LABEL_31:
    v25 = 0;
LABEL_65:

    return v25;
  }

  return 0;
}

void __61__LPKUserSwitchCycleController_triggerTestUserSwitchIfNeeded__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 performanceTestDidFinishSuccessfully];
}

- (void)_clearOutLocalPerfTestDefaults
{
  v6[10] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D244D0] = [MEMORY[0x277D244D0] sharedStorage];
  v6[0] = @"LPKIsLocalUserSwitchTestOngoing";
  v6[1] = @"LPKLocalUserSwitchTestType";
  v6[2] = @"LPKLocalUserSwitchTestRemainCycleCount";
  v6[3] = @"LPKLocalUserSwitchTestUsername";
  v6[4] = @"LPKLocalUserSwitchTestPassword";
  v6[5] = @"LPKUserSwitchDestination";
  v6[6] = @"LPKLocalUserSwitchTestHasFinishedSuccessfully";
  v6[7] = @"LPKLocalUserSwitchTestIsPerformanceTest";
  v6[8] = @"TestHasBeenPrewarmed";
  v6[9] = @"LPKLocalUserSwitchTestRetryCount";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:10];
  [mEMORY[0x277D244D0] clearKeys:v4 completionHandler:0];

  delegate = [(LPKUserSwitchCycleController *)self delegate];
  [delegate performanceTestWillTerminate];
}

- (void)_updateLocalPerfTestCycleCount:(int64_t)count
{
  v8[2] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D244D0] = [MEMORY[0x277D244D0] sharedStorage];
  v7[0] = @"LPKLocalUserSwitchTestRemainCycleCount";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  v7[1] = @"TestHasBeenPrewarmed";
  v8[0] = v5;
  v8[1] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [mEMORY[0x277D244D0] saveKeyValuePairs:v6 completionHandler:0];
}

- (void)_loginAccount:(id)account password:(id)password localLoginOnly:(BOOL)only delay:(double)delay
{
  accountCopy = account;
  passwordCopy = password;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__LPKUserSwitchCycleController__loginAccount_password_localLoginOnly_delay___block_invoke;
  v14[3] = &unk_279827C98;
  objc_copyWeak(v17, &location);
  v17[1] = *&delay;
  v12 = accountCopy;
  v15 = v12;
  v13 = passwordCopy;
  v16 = v13;
  onlyCopy = only;
  [(LPKUserSwitchCycleController *)self _setUserSwitchDestinationExpectation:2 retryIfFailed:1 completionHandler:v14];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __76__LPKUserSwitchCycleController__loginAccount_password_localLoginOnly_delay___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = dispatch_time(0, (*(a1 + 56) * 1000000000.0));
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __76__LPKUserSwitchCycleController__loginAccount_password_localLoginOnly_delay___block_invoke_2;
      v7[3] = &unk_279827C70;
      v7[4] = v5;
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = *(a1 + 64);
      dispatch_after(v6, MEMORY[0x277D85CD0], v7);
    }

    else
    {
      [WeakRetained _clearOutLocalPerfTestDefaults];
    }
  }
}

void __76__LPKUserSwitchCycleController__loginAccount_password_localLoginOnly_delay___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D244D0] sharedStorage];
  v3 = [v2 retrieveValueForKey:@"LPKIsLocalUserSwitchTestOngoing"];
  v4 = [v3 BOOLValue];

  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 _scheduleRetryWithTimeout:65.0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 136315394;
      v13 = "[LPKUserSwitchCycleController _loginAccount:password:localLoginOnly:delay:]_block_invoke_2";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Calling into LoginUI to login account: %@", buf, 0x16u);
    }

    v7 = [*(a1 + 32) delegate];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__LPKUserSwitchCycleController__loginAccount_password_localLoginOnly_delay___block_invoke_49;
    v11[3] = &unk_279827C48;
    v11[4] = *(a1 + 32);
    [v7 forceLoggingInAppleID:v8 password:v9 localLoginOnly:v10 completionHandler:v11];
  }

  else
  {

    [v5 _clearOutLocalPerfTestDefaults];
  }
}

void __76__LPKUserSwitchCycleController__loginAccount_password_localLoginOnly_delay___block_invoke_49(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __76__LPKUserSwitchCycleController__loginAccount_password_localLoginOnly_delay___block_invoke_49_cold_1();
    }

    v4 = [v3 domain];
    if ([v4 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v3 code] == 4099)
      {

        goto LABEL_11;
      }

      v5 = [v3 code];

      if (v5 == 4097)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __76__LPKUserSwitchCycleController__loginAccount_password_localLoginOnly_delay___block_invoke_49_cold_2();
    }

    [*(a1 + 32) _clearOutLocalPerfTestDefaults];
  }

LABEL_11:
}

- (void)_triggerFastLogoutWithDelay:(double)delay
{
  v9 = *MEMORY[0x277D85DE8];
  if (![(LPKUserSwitchCycleController *)self _isLoginSession])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "[LPKUserSwitchCycleController _triggerFastLogoutWithDelay:]";
      _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __60__LPKUserSwitchCycleController__triggerFastLogoutWithDelay___block_invoke;
    v5[3] = &unk_279827CE8;
    objc_copyWeak(v6, buf);
    v6[1] = *&delay;
    [(LPKUserSwitchCycleController *)self _setUserSwitchDestinationExpectation:0 retryIfFailed:1 completionHandler:v5];
    objc_destroyWeak(v6);
    objc_destroyWeak(buf);
  }
}

void __60__LPKUserSwitchCycleController__triggerFastLogoutWithDelay___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__LPKUserSwitchCycleController__triggerFastLogoutWithDelay___block_invoke_2;
      block[3] = &unk_279827CC0;
      block[4] = v5;
      dispatch_after(v6, MEMORY[0x277D85CD0], block);
    }

    else
    {
      [WeakRetained _clearOutLocalPerfTestDefaults];
    }
  }
}

void __60__LPKUserSwitchCycleController__triggerFastLogoutWithDelay___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D244D0] sharedStorage];
  v3 = [v2 retrieveValueForKey:@"LPKIsLocalUserSwitchTestOngoing"];
  v4 = [v3 BOOLValue];

  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 _scheduleRetryWithTimeout:370.0];
    v6 = [MEMORY[0x277D244B0] sharedController];
    [v6 logoutWithLogoutType:1 completionHandler:0];
  }

  else
  {

    [v5 _clearOutLocalPerfTestDefaults];
  }
}

- (void)_triggerFullLogoutWithDelay:(double)delay
{
  v12 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  currentUser = [mEMORY[0x277D77BF8] currentUser];
  isLoginUser = [currentUser isLoginUser];

  if ((isLoginUser & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[LPKUserSwitchCycleController _triggerFullLogoutWithDelay:]";
      _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__LPKUserSwitchCycleController__triggerFullLogoutWithDelay___block_invoke;
    v8[3] = &unk_279827CE8;
    objc_copyWeak(v9, buf);
    v9[1] = *&delay;
    [(LPKUserSwitchCycleController *)self _setUserSwitchDestinationExpectation:0 retryIfFailed:1 completionHandler:v8];
    objc_destroyWeak(v9);
    objc_destroyWeak(buf);
  }
}

void __60__LPKUserSwitchCycleController__triggerFullLogoutWithDelay___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__LPKUserSwitchCycleController__triggerFullLogoutWithDelay___block_invoke_2;
      block[3] = &unk_279827CC0;
      block[4] = v5;
      dispatch_after(v6, MEMORY[0x277D85CD0], block);
    }

    else
    {
      [WeakRetained _clearOutLocalPerfTestDefaults];
    }
  }
}

void __60__LPKUserSwitchCycleController__triggerFullLogoutWithDelay___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D244D0] sharedStorage];
  v3 = [v2 retrieveValueForKey:@"LPKIsLocalUserSwitchTestOngoing"];
  v4 = [v3 BOOLValue];

  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 _scheduleRetryWithTimeout:370.0];
    v6 = [MEMORY[0x277D244B0] sharedController];
    [v6 logoutWithLogoutType:0 completionHandler:0];
  }

  else
  {

    [v5 _clearOutLocalPerfTestDefaults];
  }
}

- (void)_setUserSwitchDestinationExpectation:(unint64_t)expectation retryIfFailed:(BOOL)failed completionHandler:(id)handler
{
  v18[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  mEMORY[0x277D244D0] = [MEMORY[0x277D244D0] sharedStorage];
  v17 = @"LPKUserSwitchDestination";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:expectation];
  v18[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __101__LPKUserSwitchCycleController__setUserSwitchDestinationExpectation_retryIfFailed_completionHandler___block_invoke;
  v13[3] = &unk_279827D10;
  failedCopy = failed;
  v14 = handlerCopy;
  expectationCopy = expectation;
  v13[4] = self;
  v12 = handlerCopy;
  [mEMORY[0x277D244D0] saveKeyValuePairs:v11 completionHandler:v13];
}

void __101__LPKUserSwitchCycleController__setUserSwitchDestinationExpectation_retryIfFailed_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __101__LPKUserSwitchCycleController__setUserSwitchDestinationExpectation_retryIfFailed_completionHandler___block_invoke_cold_1();
  }

  if (*(a1 + 56) != 1)
  {
LABEL_8:
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Retry setting user switch destination expectation", v6, 2u);
    }

    [*(a1 + 32) _setUserSwitchDestinationExpectation:*(a1 + 48) retryIfFailed:0 completionHandler:*(a1 + 40)];
  }
}

- (unint64_t)_currentEnvironment
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  currentUser = [mEMORY[0x277D77BF8] currentUser];
  isLoginUser = [currentUser isLoginUser];

  if (isLoginUser)
  {
    return 0;
  }

  if ([(LPKUserSwitchCycleController *)self _isLoginSession])
  {
    return 1;
  }

  return 2;
}

- (BOOL)_validateUserSwitchExpectation
{
  mEMORY[0x277D244D0] = [MEMORY[0x277D244D0] sharedStorage];
  v4 = [mEMORY[0x277D244D0] retrieveValueForKey:@"LPKUserSwitchDestination"];

  if (v4 && (v5 = [v4 integerValue], v5 != -[LPKUserSwitchCycleController _currentEnvironment](self, "_currentEnvironment")))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [LPKUserSwitchCycleController _validateUserSwitchExpectation];
    }

    v7 = objc_opt_new();
    v8 = @"Logout";
    if (v5 == 2)
    {
      v8 = @"Login";
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ failed", v8];
    [v7 logErrorEventForTopic:@"Shared iPad User Switch Test" reason:v9 error:0 details:0];

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)_isLoginSession
{
  IsLoginSession = MKBUserSessionIsLoginSession();

  return IsLoginSession;
}

- (void)_fixTestStatesForRetry
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[LPKUserSwitchCycleController _fixTestStatesForRetry]";
    _os_log_impl(&dword_2561AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  mEMORY[0x277D244D0] = [MEMORY[0x277D244D0] sharedStorage];
  v4 = [mEMORY[0x277D244D0] retrieveValueForKey:@"LPKLocalUserSwitchTestRemainCycleCount"];
  integerValue = [v4 integerValue];

  v6 = [mEMORY[0x277D244D0] retrieveValueForKey:@"LPKLocalUserSwitchTestRetryCount"];
  unsignedIntValue = [v6 unsignedIntValue];

  v8 = [mEMORY[0x277D244D0] retrieveValueForKey:@"TestHasBeenPrewarmed"];
  bOOLValue = [v8 BOOLValue];

  _currentEnvironment = [(LPKUserSwitchCycleController *)self _currentEnvironment];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{_currentEnvironment, @"LPKUserSwitchDestination"}];
  v16[0] = v11;
  v15[1] = @"LPKLocalUserSwitchTestRemainCycleCount";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue + bOOLValue];
  v16[1] = v12;
  v15[2] = @"LPKLocalUserSwitchTestRetryCount";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue - 1];
  v16[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  [mEMORY[0x277D244D0] saveKeyValuePairs:v14 error:0];
}

- (void)_scheduleRetryWithTimeout:(double)timeout
{
  v4 = dispatch_time(0, (timeout * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__LPKUserSwitchCycleController__scheduleRetryWithTimeout___block_invoke;
  block[3] = &unk_279827CC0;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

uint64_t __58__LPKUserSwitchCycleController__scheduleRetryWithTimeout___block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __58__LPKUserSwitchCycleController__scheduleRetryWithTimeout___block_invoke_cold_1();
  }

  [*(a1 + 32) _fixTestStatesForRetry];
  return [*(a1 + 32) triggerTestUserSwitchIfNeeded];
}

- (LPKUserSwitchCycleResponder)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)triggerTestUserSwitchIfNeeded
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __76__LPKUserSwitchCycleController__loginAccount_password_localLoginOnly_delay___block_invoke_49_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __76__LPKUserSwitchCycleController__loginAccount_password_localLoginOnly_delay___block_invoke_49_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __101__LPKUserSwitchCycleController__setUserSwitchDestinationExpectation_retryIfFailed_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_validateUserSwitchExpectation
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end
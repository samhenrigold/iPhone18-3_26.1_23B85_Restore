@interface HKMobileCountryCodeManager
+ (BOOL)isOverridePresent;
+ (id)overrideMobileCountryCode;
+ (void)setOverrideMobileCountryCode:(id)code;
- (BOOL)_isLocationAvailableWithError:(id *)error;
- (HKMobileCountryCodeManager)init;
- (id)_wrapperWithMobileCountryCode:(id)code error:(id *)error;
- (id)copyISOCountryCodeForMobileCountryCode:(id)code error:(id *)error;
- (id)currentCountryCode;
- (id)currentEstimate;
- (id)mobileCountryCodeFromCellularWithError:(id *)error;
- (void)_submitAnalyticsForError:(id)error mobileCountryCode:(id)code;
- (void)dealloc;
- (void)fetchISOCountryCodeFromCellularWithCompletion:(id)completion;
- (void)fetchMobileCountryCodeFromCellularWithCompletion:(id)completion;
@end

@implementation HKMobileCountryCodeManager

- (HKMobileCountryCodeManager)init
{
  v10.receiver = self;
  v10.super_class = HKMobileCountryCodeManager;
  v2 = [(HKMobileCountryCodeManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = HKCreateSerialDispatchQueue(v2, @"mobile-country-code.telephony");
    v5 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:v4];
    coreTelephonyClient = v3->_coreTelephonyClient;
    v3->_coreTelephonyClient = v5;

    [(CoreTelephonyClient *)v3->_coreTelephonyClient setDelegate:v3];
    v3->_coreTelephonyServerConnection = _CTServerConnectionCreateOnTargetQueue();
    v7 = objc_alloc_init(MEMORY[0x1E698B6B0]);
    radiosPreferences = v3->_radiosPreferences;
    v3->_radiosPreferences = v7;
  }

  return v3;
}

- (void)dealloc
{
  coreTelephonyServerConnection = self->_coreTelephonyServerConnection;
  if (coreTelephonyServerConnection)
  {
    CFRelease(coreTelephonyServerConnection);
  }

  v4.receiver = self;
  v4.super_class = HKMobileCountryCodeManager;
  [(HKMobileCountryCodeManager *)&v4 dealloc];
}

- (void)fetchISOCountryCodeFromCellularWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__HKMobileCountryCodeManager_fetchISOCountryCodeFromCellularWithCompletion___block_invoke;
  v6[3] = &unk_1E73859F8;
  v7 = completionCopy;
  v5 = completionCopy;
  [(HKMobileCountryCodeManager *)self fetchMobileCountryCodeFromCellularWithCompletion:v6];
}

void __76__HKMobileCountryCodeManager_fetchISOCountryCodeFromCellularWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 ISOCode];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)fetchMobileCountryCodeFromCellularWithCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v18 = 0;
  v5 = [(HKMobileCountryCodeManager *)self _isLocationAvailableWithError:&v18];
  v6 = v18;
  if (v5)
  {
    _overrideISOCountryCode = [objc_opt_class() _overrideISOCountryCode];
    v9 = _overrideISOCountryCode;
    if (_overrideISOCountryCode)
    {
      _HKInitializeLogging(_overrideISOCountryCode, v8);
      v12 = HKLogInfrastructure(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        *buf = 138543618;
        v20 = v13;
        v21 = 2114;
        v22 = v9;
        _os_log_impl(&dword_19197B000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Returning ISO country code override override: %{public}@", buf, 0x16u);
      }

      if ([v9 isEqualToString:@"NONE"])
      {
        v14 = [MEMORY[0x1E696ABC0] hk_error:109 description:@"OVERRIDE: No estimate available"];
        completionCopy[2](completionCopy, 0, v14);
      }

      else
      {
        v14 = [[HKMobileCountryCode alloc] initWithMobileCountryCode:&stru_1F05FF230 ISOCode:v9 isOverridden:1];
        (completionCopy)[2](completionCopy, v14, 0);
      }
    }

    else
    {
      coreTelephonyClient = self->_coreTelephonyClient;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __79__HKMobileCountryCodeManager_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke;
      v16[3] = &unk_1E73801A8;
      v16[4] = self;
      v17 = completionCopy;
      [(CoreTelephonyClient *)coreTelephonyClient getCurrentDataSubscriptionContext:v16];
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, v6);
  }
}

void __79__HKMobileCountryCodeManager_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(v7 + 8);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __79__HKMobileCountryCodeManager_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke_29;
    v14[3] = &unk_1E7380180;
    v14[4] = v7;
    v15 = v6;
    [v8 copyMobileCountryCode:a2 completion:v14];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] hk_error:109 description:@"Failed to get current data subscription context" underlyingError:v5];
    _HKInitializeLogging(v9, v10);
    v13 = HKLogInfrastructure(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __79__HKMobileCountryCodeManager_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke_cold_1();
    }

    [*(a1 + 32) _submitAnalyticsForError:@"Nil data subscription context" mobileCountryCode:0];
    (*(*(a1 + 40) + 16))();
  }
}

void __79__HKMobileCountryCodeManager_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke_29(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x1E696ABC0] hk_error:109 description:@"Failed to get mobile country code" underlyingError:v5];
    _HKInitializeLogging(v7, v8);
    v11 = HKLogInfrastructure(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __79__HKMobileCountryCodeManager_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke_29_cold_1();
    }

    [*(a1 + 32) _submitAnalyticsForError:@"Error getting mobile country code" mobileCountryCode:0];
    v12 = *(*(a1 + 40) + 16);
  }

  else
  {
    v13 = *(a1 + 32);
    v19 = 0;
    v7 = [v13 _wrapperWithMobileCountryCode:a2 error:&v19];
    v14 = v19;
    v6 = v14;
    if (v14)
    {
      _HKInitializeLogging(v14, v15);
      v18 = HKLogInfrastructure(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __79__HKMobileCountryCodeManager_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke_29_cold_2();
      }

      v12 = *(*(a1 + 40) + 16);
    }

    else
    {
      v12 = *(*(a1 + 40) + 16);
    }
  }

  v12();
}

- (id)mobileCountryCodeFromCellularWithError:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  if ([(HKMobileCountryCodeManager *)self _isLocationAvailableWithError:?])
  {
    _overrideISOCountryCode = [objc_opt_class() _overrideISOCountryCode];
    v7 = _overrideISOCountryCode;
    if (_overrideISOCountryCode)
    {
      _HKInitializeLogging(_overrideISOCountryCode, v6);
      v10 = HKLogInfrastructure(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v32 = objc_opt_class();
        v33 = 2114;
        v34 = v7;
        _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Returning ISO country code override override: %{public}@", buf, 0x16u);
      }

      if ([v7 isEqualToString:@"NONE"])
      {
        [MEMORY[0x1E696ABC0] hk_assignError:error code:109 description:@"OVERRIDE: No estimate available"];
        v11 = 0;
      }

      else
      {
        v11 = [[HKMobileCountryCode alloc] initWithMobileCountryCode:&stru_1F05FF230 ISOCode:v7 isOverridden:1];
      }
    }

    else
    {
      coreTelephonyClient = self->_coreTelephonyClient;
      v30 = 0;
      v13 = [(CoreTelephonyClient *)coreTelephonyClient getCurrentDataSubscriptionContextSync:&v30];
      v14 = v30;
      if (v13)
      {
        v15 = self->_coreTelephonyClient;
        v29 = v14;
        v16 = [(CoreTelephonyClient *)v15 copyMobileCountryCode:v13 error:&v29];
        v17 = v29;

        if (v17)
        {
          v18 = [MEMORY[0x1E696ABC0] hk_assignError:error code:109 description:@"Failed to get mobile country code" underlyingError:v17];
          _HKInitializeLogging(v18, v19);
          v22 = HKLogInfrastructure(v20, v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [HKMobileCountryCodeManager mobileCountryCodeFromCellularWithError:];
          }

          [(HKMobileCountryCodeManager *)self _submitAnalyticsForError:@"Error getting mobile country code" mobileCountryCode:0];
          v11 = 0;
        }

        else
        {
          v11 = [(HKMobileCountryCodeManager *)self _wrapperWithMobileCountryCode:v16 error:error];
        }

        v14 = v17;
      }

      else
      {
        v23 = [MEMORY[0x1E696ABC0] hk_assignError:error code:109 description:@"Failed to get current data subscription context" underlyingError:v14];
        _HKInitializeLogging(v23, v24);
        v27 = HKLogInfrastructure(v25, v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [HKMobileCountryCodeManager mobileCountryCodeFromCellularWithError:];
        }

        [(HKMobileCountryCodeManager *)self _submitAnalyticsForError:@"Nil data subscription context" mobileCountryCode:0];
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_isLocationAvailableWithError:(id *)error
{
  [(RadiosPreferences *)self->_radiosPreferences refresh];
  airplaneMode = [(RadiosPreferences *)self->_radiosPreferences airplaneMode];
  if (airplaneMode)
  {
    v6 = [MEMORY[0x1E696ABC0] hk_assignError:error code:109 description:@"Location not available"];
    _HKInitializeLogging(v6, v7);
    v10 = HKLogInfrastructure(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HKMobileCountryCodeManager _isLocationAvailableWithError:?];
    }
  }

  return airplaneMode ^ 1;
}

- (id)_wrapperWithMobileCountryCode:(id)code error:(id *)error
{
  codeCopy = code;
  overrideMobileCountryCode = [objc_opt_class() overrideMobileCountryCode];
  v8 = overrideMobileCountryCode;
  if (overrideMobileCountryCode)
  {
    v9 = overrideMobileCountryCode;

    codeCopy = v9;
  }

  hk_copyNonEmptyString = [codeCopy hk_copyNonEmptyString];

  if (hk_copyNonEmptyString && [hk_copyNonEmptyString integerValue] != 0xFFFF)
  {
    v12 = [(HKMobileCountryCodeManager *)self copyISOCountryCodeForMobileCountryCode:hk_copyNonEmptyString error:error];
    if (v12)
    {
      v11 = [[HKMobileCountryCode alloc] initWithMobileCountryCode:hk_copyNonEmptyString ISOCode:v12 isOverridden:v8 != 0];
    }

    else
    {
      [(HKMobileCountryCodeManager *)self _submitAnalyticsForError:@"Nil ISO country code" mobileCountryCode:hk_copyNonEmptyString];
      v11 = 0;
    }
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:109 format:@"MCC is unknown"];
    [(HKMobileCountryCodeManager *)self _submitAnalyticsForError:@"Nil mobile country code" mobileCountryCode:0];
    v11 = 0;
  }

  return v11;
}

- (id)copyISOCountryCodeForMobileCountryCode:(id)code error:(id *)error
{
  if (self->_coreTelephonyServerConnection)
  {
    if (!_CTServerConnectionCopyISOForMCC())
    {
      uppercaseString = [0 uppercaseString];

      return uppercaseString;
    }

    v5 = MEMORY[0x1E696ABC0];
    v6 = @"CoreTelephony server copying ISO from MCC failed";
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = @"CoreTelephony server connection was NULL";
  }

  [v5 hk_assignError:error code:100 description:v6];
  return 0;
}

+ (BOOL)isOverridePresent
{
  overrideMobileCountryCode = [self overrideMobileCountryCode];
  if (overrideMobileCountryCode)
  {
    v4 = 1;
  }

  else
  {
    _overrideISOCountryCode = [self _overrideISOCountryCode];
    v4 = _overrideISOCountryCode != 0;
  }

  return v4;
}

+ (void)setOverrideMobileCountryCode:(id)code
{
  v3 = *MEMORY[0x1E695E890];
  CFPreferencesSetAppValue(@"HKMobileCountryCodeOverride", code, *MEMORY[0x1E695E890]);

  CFPreferencesAppSynchronize(v3);
}

+ (id)overrideMobileCountryCode
{
  v15 = *MEMORY[0x1E69E9840];
  if (+[_HKBehavior isAppleInternalInstall])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [standardUserDefaults stringForKey:@"HKMobileCountryCodeOverride"];
    hk_copyNonEmptyString = [v3 hk_copyNonEmptyString];

    if (hk_copyNonEmptyString)
    {
      _HKInitializeLogging(v5, v6);
      v9 = HKLogInfrastructure(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543618;
        v12 = objc_opt_class();
        v13 = 2114;
        v14 = hk_copyNonEmptyString;
        _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Returning overridden MCC %{public}@.", &v11, 0x16u);
      }
    }
  }

  else
  {
    hk_copyNonEmptyString = 0;
  }

  return hk_copyNonEmptyString;
}

- (void)_submitAnalyticsForError:(id)error mobileCountryCode:(id)code
{
  v13[3] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  codeCopy = code;
  overrideMobileCountryCode = [objc_opt_class() overrideMobileCountryCode];

  if (!overrideMobileCountryCode)
  {
    v12[0] = @"Error";
    v12[1] = @"MobileCountryCode";
    v8 = @"-1";
    if (codeCopy)
    {
      v8 = codeCopy;
    }

    v13[0] = errorCopy;
    v13[1] = v8;
    v12[2] = @"UserLocale";
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    v13[2] = localeIdentifier;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
    AnalyticsSendEvent();
  }
}

- (id)currentCountryCode
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v2 = [(HKMobileCountryCodeManager *)self mobileCountryCodeFromCellularWithError:&v13];
  v3 = v13;
  v5 = v3;
  if (!v2)
  {
    _HKInitializeLogging(v3, v4);
    v8 = HKLogInfrastructure(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      *buf = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v5;
      v10 = v9;
      _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed to retrieve country code: %{public}@", buf, 0x16u);
    }
  }

  iSOCode = [v2 ISOCode];

  return iSOCode;
}

- (id)currentEstimate
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v2 = [(HKMobileCountryCodeManager *)self mobileCountryCodeFromCellularWithError:&v15];
  v3 = v15;
  v5 = v3;
  if (v2)
  {
    v6 = [HKRegulatoryDomainEstimate alloc];
    iSOCode = [v2 ISOCode];
    timestamp = [v2 timestamp];
    v9 = -[HKRegulatoryDomainEstimate initWithISOCode:timestamp:provenance:](v6, "initWithISOCode:timestamp:provenance:", iSOCode, timestamp, [v2 provenance]);
  }

  else
  {
    _HKInitializeLogging(v3, v4);
    iSOCode = HKLogInfrastructure(v10, v11);
    if (os_log_type_enabled(iSOCode, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      *buf = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = v5;
      v13 = v12;
      _os_log_impl(&dword_19197B000, iSOCode, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed to retrieve country code: %{public}@", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

void __79__HKMobileCountryCodeManager_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_6();
  objc_opt_class();
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __79__HKMobileCountryCodeManager_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke_29_cold_1()
{
  OUTLINED_FUNCTION_2_6();
  objc_opt_class();
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __79__HKMobileCountryCodeManager_fetchMobileCountryCodeFromCellularWithCompletion___block_invoke_29_cold_2()
{
  OUTLINED_FUNCTION_2_6();
  objc_opt_class();
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)mobileCountryCodeFromCellularWithError:.cold.1()
{
  OUTLINED_FUNCTION_2_6();
  objc_opt_class();
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)mobileCountryCodeFromCellularWithError:.cold.2()
{
  OUTLINED_FUNCTION_2_6();
  objc_opt_class();
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_isLocationAvailableWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  objc_opt_class();
  OUTLINED_FUNCTION_2_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end
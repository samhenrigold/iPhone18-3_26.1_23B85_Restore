@interface CalHolidayAccountUtils
+ (BOOL)_isEnabledWithAccount:(id)account;
+ (BOOL)holidayCalendarIsEnabledWithAccountStore:(id)store;
+ (id)_createUnsavedHolidayAccountWithAccountStore:(id)store;
+ (id)_holidayAccountWithAccountStore:(id)store;
+ (id)holidayAccountDescription;
+ (id)logHandle;
+ (void)ensureHolidayAccountExistsWithAccountStore:(id)store;
+ (void)setHolidayCalendarIsEnabled:(BOOL)enabled withAccountStore:(id)store;
@end

@implementation CalHolidayAccountUtils

+ (id)logHandle
{
  if (logHandle_onceToken_2 != -1)
  {
    +[CalHolidayAccountUtils logHandle];
  }

  v3 = logHandle_logHandle_2;

  return v3;
}

uint64_t __35__CalHolidayAccountUtils_logHandle__block_invoke()
{
  logHandle_logHandle_2 = os_log_create("com.apple.calendar", "HolidayAccountUtils");

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)holidayCalendarIsEnabledWithAccountStore:(id)store
{
  selfCopy = self;
  v4 = [self _holidayAccountWithAccountStore:store];
  LOBYTE(selfCopy) = [selfCopy _isEnabledWithAccount:v4];

  return selfCopy;
}

+ (void)setHolidayCalendarIsEnabled:(BOOL)enabled withAccountStore:(id)store
{
  enabledCopy = enabled;
  v15 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v7 = [self _holidayAccountWithAccountStore:storeCopy];
  if ([self _isEnabledWithAccount:v7] != enabledCopy)
  {
    logHandle = [self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = enabledCopy;
      _os_log_impl(&dword_1B990D000, logHandle, OS_LOG_TYPE_DEFAULT, "Setting holiday account to %{BOOL}d", buf, 8u);
    }

    if (!v7)
    {
      v7 = [self _createUnsavedHolidayAccountWithAccountStore:storeCopy];
    }

    [v7 setEnabled:enabledCopy forDataclass:*MEMORY[0x1E6959630]];
    v12 = 0;
    v9 = [storeCopy saveVerifiedAccount:v7 error:&v12];
    v10 = v12;
    if (v9)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"CalHolidayAccountEnabledChanged" object:0];
    }

    else
    {
      defaultCenter = [self logHandle];
      if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_ERROR))
      {
        [CalHolidayAccountUtils setHolidayCalendarIsEnabled:v10 withAccountStore:defaultCenter];
      }
    }
  }
}

+ (void)ensureHolidayAccountExistsWithAccountStore:(id)store
{
  storeCopy = store;
  v4 = [self _holidayAccountWithAccountStore:?];
  if (!v4)
  {
    [self setHolidayCalendarIsEnabled:1 withAccountStore:storeCopy];
  }
}

+ (id)holidayAccountDescription
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:self];
  v3 = [v2 localizedStringForKey:@"Holiday Calendar" value:&stru_1F379FFA8 table:0];

  return v3;
}

+ (BOOL)_isEnabledWithAccount:(id)account
{
  if (account)
  {
    return [account isEnabledForDataclass:*MEMORY[0x1E6959630]];
  }

  else
  {
    return 0;
  }
}

+ (id)_holidayAccountWithAccountStore:(id)store
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = *MEMORY[0x1E6959870];
  v4 = MEMORY[0x1E695DEC8];
  storeCopy = store;
  v6 = [v4 arrayWithObjects:v13 count:1];
  v12 = 0;
  v7 = [storeCopy accountsWithAccountTypeIdentifiers:v6 error:&v12];

  v8 = v12;
  if (v7)
  {
    firstObject = [v7 firstObject];
  }

  else
  {
    logHandle = [self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [(CalHolidayAccountUtils *)v8 _holidayAccountWithAccountStore:logHandle];
    }

    firstObject = 0;
  }

  return firstObject;
}

+ (id)_createUnsavedHolidayAccountWithAccountStore:(id)store
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [store accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959870]];
  v5 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v4];
  holidayAccountDescription = [self holidayAccountDescription];
  [v5 setAccountDescription:holidayAccountDescription];

  [v5 setAuthenticationType:*MEMORY[0x1E6959AC0]];
  [v5 setSupportsAuthentication:0];
  [v5 setVisible:0];
  logHandle = [self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [v5 identifier];
    v10 = 138543362;
    v11 = identifier;
    _os_log_impl(&dword_1B990D000, logHandle, OS_LOG_TYPE_DEFAULT, "Creating holiday account with identifier %{public}@", &v10, 0xCu);
  }

  return v5;
}

+ (void)setHolidayCalendarIsEnabled:(uint64_t)a1 withAccountStore:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Failed to save holiday account: %@", &v2, 0xCu);
}

+ (void)_holidayAccountWithAccountStore:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Failed to get holiday account: %@", &v2, 0xCu);
}

@end
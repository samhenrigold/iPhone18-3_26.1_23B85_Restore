@interface CDPContext(AsyncMode)
- (uint64_t)disableAsyncModeRequested;
@end

@implementation CDPContext(AsyncMode)

- (uint64_t)disableAsyncModeRequested
{
  v9 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CFD4A8] isSubsetOfContextTypeRepair:{objc_msgSend(self, "type")}] & 1) != 0 || objc_msgSend(self, "type") == 3 || objc_msgSend(self, "type") == 4 || objc_msgSend(self, "type") == 5 || objc_msgSend(self, "type") == 6 || objc_msgSend(self, "type") == 7 || objc_msgSend(self, "type") == 8)
  {
    v2 = _CDPLogSystem();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:

      return 1;
    }

    v7 = 134217984;
    type = [self type];
    v3 = "Disabling async secure backup enrollment for CDPContextType: %ld";
    v4 = v2;
    v5 = 12;
LABEL_10:
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, v3, &v7, v5);
    goto LABEL_11;
  }

  if (([self isLocalSecretCached] & 1) == 0)
  {
    v2 = _CDPLogSystem();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v7) = 0;
    v3 = "Disabling async secure backup enrollment since context has no cached local secret.";
    goto LABEL_22;
  }

  if ([self _disableAsyncSecureBackupEnrollment])
  {
    v2 = _CDPLogSystem();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v7) = 0;
    v3 = "Context has disabled async secure backup enrollment";
    goto LABEL_22;
  }

  result = CFPreferencesGetAppBooleanValue(@"DisableAsyncEnable", @"com.apple.corecdp", 0);
  if (result)
  {
    v2 = _CDPLogSystem();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v7) = 0;
    v3 = "Pref to disable async enable was set...";
LABEL_22:
    v4 = v2;
    v5 = 2;
    goto LABEL_10;
  }

  return result;
}

@end
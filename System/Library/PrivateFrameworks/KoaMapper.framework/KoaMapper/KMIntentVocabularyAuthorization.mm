@interface KMIntentVocabularyAuthorization
- (BOOL)isAuthorizedApp:(id)app;
@end

@implementation KMIntentVocabularyAuthorization

- (BOOL)isAuthorizedApp:(id)app
{
  v16 = *MEMORY[0x277D85DE8];
  appCopy = app;
  v4 = [MEMORY[0x277CD43D0] _siriAuthorizationStatusForAppID:appCopy];
  if (v4 != 3)
  {
    v5 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO))
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v5;
      v8 = [v6 numberWithInteger:v4];
      v10 = 136315650;
      v11 = "[KMIntentVocabularyAuthorization isAuthorizedApp:]";
      v12 = 2112;
      v13 = appCopy;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_2559DF000, v7, OS_LOG_TYPE_INFO, "%s App is not authorized to share vocabulary with Siri. appId=%@ authStatus=%@", &v10, 0x20u);
    }
  }

  return v4 == 3;
}

@end
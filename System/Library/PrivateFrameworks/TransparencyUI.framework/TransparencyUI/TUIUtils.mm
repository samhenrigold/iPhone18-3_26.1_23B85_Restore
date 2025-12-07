@interface TUIUtils
+ (BOOL)_checkMismatchedAccountError:(id)error;
+ (BOOL)_checkNetworkError:(id)error;
+ (BOOL)isAuthError:(id)error;
+ (BOOL)isDateExpired:(id)expired;
+ (BOOL)isHSA2;
+ (BOOL)isMismatchedAccountError:(id)error;
+ (BOOL)isNetworkError:(id)error;
+ (BOOL)isTransparencyFeatureEnabled:(const char *)enabled;
+ (void)isHSA2;
@end

@implementation TUIUtils

+ (BOOL)isTransparencyFeatureEnabled:(const char *)enabled
{
  if (!enabled)
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  v4 = _os_feature_enabled_impl();
  if (!strcmp(enabled, ffKTReportToApple))
  {
    if (!v4)
    {
      goto LABEL_15;
    }

    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_11 != -1)
    {
      +[TUIUtils isTransparencyFeatureEnabled:];
    }

    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11, OS_LOG_TYPE_ERROR))
    {
      +[TUIUtils isTransparencyFeatureEnabled:];
    }

    goto LABEL_14;
  }

  if (v4)
  {
LABEL_14:
    LOBYTE(v5) = 1;
    return v5;
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_11 != -1)
  {
    +[TUIUtils isTransparencyFeatureEnabled:];
  }

  v5 = os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    +[TUIUtils isTransparencyFeatureEnabled:];
LABEL_15:
    LOBYTE(v5) = 0;
  }

  return v5;
}

uint64_t __41__TUIUtils_isTransparencyFeatureEnabled___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __41__TUIUtils_isTransparencyFeatureEnabled___block_invoke_46()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isNetworkError:(id)error
{
  errorCopy = error;
  v5 = [self _checkNetworkError:errorCopy];
  if (v5)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_11 != -1)
    {
      +[TUIUtils isNetworkError:];
    }

    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11, OS_LOG_TYPE_DEBUG))
    {
      +[TUIUtils isNetworkError:];
    }
  }

  return v5;
}

uint64_t __27__TUIUtils_isNetworkError___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isMismatchedAccountError:(id)error
{
  errorCopy = error;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  domain = [errorCopy domain];
  if (![domain isEqual:*MEMORY[0x277D735D0]])
  {

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  code = [errorCopy code];

  if (code != -290 || ![self _checkMismatchedAccountError:errorCopy])
  {
    goto LABEL_11;
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_11 != -1)
  {
    +[TUIUtils isMismatchedAccountError:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11, OS_LOG_TYPE_DEBUG))
  {
    +[TUIUtils isMismatchedAccountError:];
  }

  v7 = 1;
LABEL_12:

  return v7;
}

uint64_t __37__TUIUtils_isMismatchedAccountError___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isDateExpired:(id)expired
{
  v3 = MEMORY[0x277CBEAA8];
  expiredCopy = expired;
  v5 = [v3 now];
  v6 = [expiredCopy earlierDate:v5];

  return v6 == expiredCopy;
}

+ (BOOL)isAuthError:(id)error
{
  errorCopy = error;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  domain = [errorCopy domain];
  v7 = [domain isEqualToString:*MEMORY[0x277D46258]];
  if ((v7 & 1) == 0)
  {
    domain2 = [errorCopy domain];
    if (([domain2 isEqualToString:*MEMORY[0x277D46260]] & 1) == 0)
    {

LABEL_13:
      v12 = 0;
      goto LABEL_14;
    }
  }

  userInfo = [errorCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"statusCode"];
  integerValue = [v9 integerValue];

  if ((v7 & 1) == 0)
  {
  }

  if (integerValue != 401)
  {
    goto LABEL_13;
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_11 != -1)
  {
    +[TUIUtils isAuthError:];
  }

  v11 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11, OS_LOG_TYPE_DEBUG))
  {
    [(TUIUtils *)v11 isAuthError:errorCopy, self];
  }

  v12 = 1;
LABEL_14:

  return v12;
}

uint64_t __24__TUIUtils_isAuthError___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)_checkNetworkError:(id)error
{
  v40 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_18;
  }

  domain = [errorCopy domain];
  if ([domain isEqual:*MEMORY[0x277D735F8]])
  {
    goto LABEL_15;
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqual:*MEMORY[0x277CCA738]])
  {
LABEL_14:

LABEL_15:
LABEL_16:
    v11 = 1;
    goto LABEL_18;
  }

  domain3 = [errorCopy domain];
  if ([domain3 isEqual:*MEMORY[0x277CBACE8]])
  {
LABEL_13:

    goto LABEL_14;
  }

  domain4 = [errorCopy domain];
  if ([domain4 isEqual:*MEMORY[0x277D735F0]] && objc_msgSend(errorCopy, "code") == -343)
  {
LABEL_12:

    goto LABEL_13;
  }

  domain5 = [errorCopy domain];
  if ([domain5 isEqual:*MEMORY[0x277D735E8]] && objc_msgSend(errorCopy, "code") == -41)
  {
LABEL_11:

    goto LABEL_12;
  }

  domain6 = [errorCopy domain];
  if ([domain6 isEqual:*MEMORY[0x277D735E0]])
  {

    goto LABEL_11;
  }

  domain7 = [errorCopy domain];
  v34 = [domain7 isEqualToString:*MEMORY[0x277D46258]];
  if ((v34 & 1) == 0)
  {
    domain8 = [errorCopy domain];
    if (![domain8 isEqualToString:*MEMORY[0x277D46260]])
    {
      v33 = 0;
      goto LABEL_29;
    }

    v31 = domain8;
  }

  userInfo = [errorCopy userInfo];
  v15 = [userInfo objectForKeyedSubscript:@"statusCode"];
  if ([v15 integerValue] < 500)
  {

    if (v34)
    {

      goto LABEL_31;
    }

    v33 = 0;
    domain8 = v31;
    goto LABEL_29;
  }

  userInfo2 = [errorCopy userInfo];
  [userInfo2 objectForKeyedSubscript:@"statusCode"];
  v16 = v30 = domain7;
  v33 = [v16 integerValue] < 600;

  domain7 = v30;
  domain8 = v31;
  if ((v34 & 1) == 0)
  {
LABEL_29:
  }

  if (v33)
  {
    goto LABEL_16;
  }

LABEL_31:
  domain9 = [errorCopy domain];
  v18 = [domain9 isEqual:*MEMORY[0x277D735D8]];

  if (v18)
  {
    goto LABEL_16;
  }

  userInfo3 = [errorCopy userInfo];
  v20 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if ([self _checkNetworkError:v20])
  {
    v11 = 1;
  }

  else
  {
    userInfo4 = [errorCopy userInfo];
    v22 = [userInfo4 objectForKeyedSubscript:*MEMORY[0x277CCA578]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v36;
        while (2)
        {
          v27 = 0;
          v28 = v20;
          do
          {
            if (*v36 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v20 = *(*(&v35 + 1) + 8 * v27);

            if ([self _checkNetworkError:v20])
            {
              v11 = 1;
              goto LABEL_46;
            }

            ++v27;
            v28 = v20;
          }

          while (v25 != v27);
          v25 = [v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      v20 = 0;
      v11 = 0;
LABEL_46:
    }

    else
    {
      v11 = 0;
    }
  }

LABEL_18:
  return v11;
}

+ (BOOL)_checkMismatchedAccountError:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_24;
  }

  domain = [errorCopy domain];
  if ([domain isEqual:@"IDSKeyTransparencyVerifierErrorDomain"])
  {
    code = [errorCopy code];

    if (code == -8003)
    {
      v7 = 1;
      goto LABEL_24;
    }
  }

  else
  {
  }

  userInfo = [errorCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if ([self _checkMismatchedAccountError:v9])
  {
    v7 = 1;
  }

  else
  {
    userInfo2 = [errorCopy userInfo];
    v11 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA578]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v20;
        while (2)
        {
          v16 = 0;
          v17 = v9;
          do
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v9 = *(*(&v19 + 1) + 8 * v16);

            if ([self _checkMismatchedAccountError:{v9, v19}])
            {
              v7 = 1;
              goto LABEL_21;
            }

            ++v16;
            v17 = v9;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v9 = 0;
      v7 = 0;
LABEL_21:
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_24:
  return v7;
}

+ (BOOL)isHSA2
{
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  mEMORY[0x277CFD480] = [MEMORY[0x277CFD480] sharedInstance];
  primaryAccountAltDSID = [mEMORY[0x277CFD480] primaryAccountAltDSID];
  v10 = 0;
  v5 = [mEMORY[0x277CF0130] authKitAccountWithAltDSID:primaryAccountAltDSID error:&v10];
  v6 = v10;

  if (v5)
  {
    mEMORY[0x277CF0130]2 = [MEMORY[0x277CF0130] sharedInstance];
    v8 = [mEMORY[0x277CF0130]2 securityLevelForAccount:v5] == 4;
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_11 != -1)
    {
      +[TUIUtils isHSA2];
    }

    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11, OS_LOG_TYPE_ERROR))
    {
      +[TUIUtils isHSA2];
    }

    v8 = 0;
  }

  return v8;
}

uint64_t __18__TUIUtils_isHSA2__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

+ (void)isTransparencyFeatureEnabled:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)isTransparencyFeatureEnabled:.cold.4()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)isNetworkError:.cold.2()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_26F50B000, v0, v1, "%s YES: error = %{public}@ on %{public}@", v2);
}

+ (void)isMismatchedAccountError:.cold.2()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_26F50B000, v0, v1, "%s YES: error = %{public}@ on %{public}@", v2);
}

+ (void)isAuthError:(uint64_t)a3 .cold.2(void *a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 domain];
  v7 = [a2 code];
  v8 = [a2 localizedDescription];
  v9 = 136316162;
  v10 = "+[TUIUtils isAuthError:]";
  v11 = 2114;
  v12 = v6;
  v13 = 2048;
  v14 = v7;
  v15 = 2114;
  v16 = v8;
  v17 = 2114;
  v18 = a3;
  _os_log_debug_impl(&dword_26F50B000, v5, OS_LOG_TYPE_DEBUG, "%s YES: domain = %{public}@, code = %ld, description = %{public}@ on %{public}@", &v9, 0x34u);
}

+ (void)isHSA2
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

@end
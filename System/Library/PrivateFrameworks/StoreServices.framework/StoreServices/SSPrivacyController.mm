@interface SSPrivacyController
+ (BOOL)shouldDisplayPrivacyLinkWithIdentifier:(id)identifier;
+ (id)_appendPrivacyAcknowledgementToActiveAccount:(id)account withURL:(id)l;
+ (id)_syncPrivacyAcknowledgementOnAccount:(id)account URL:(id)l;
+ (id)_translateIdentifierToPrivacyAcknowledgement:(id)acknowledgement withVersion:(unint64_t)version;
+ (id)appStorePrivacyIdentifiers;
+ (id)storePrivacyIdentifiers;
+ (id)viewControllerForPrivacySplashWithIdentifier:(id)identifier URL:(id)l;
+ (unint64_t)_currentPrivacyContentVersionForIdentifier:(id)identifier;
+ (void)_appendPrivacyAcknowledgement:(id)acknowledgement toAccount:(id)account;
+ (void)_appendPrivacyAcknowledgementToLocalAccount:(id)account;
+ (void)acknowledgePrivacyLinkWithIdentifier:(id)identifier URL:(id)l;
@end

@implementation SSPrivacyController

+ (void)acknowledgePrivacyLinkWithIdentifier:(id)identifier URL:(id)l
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  lCopy = l;
  v8 = [self _currentPrivacyContentVersionForIdentifier:identifierCopy];
  if (!v8)
  {
    v9 = +[SSLogConfig sharedPrivacyConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v12) = shouldLog | 2;
    }

    else
    {
      LODWORD(v12) = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v22 = 138543618;
      v23 = objc_opt_class();
      v24 = 2114;
      v25 = identifierCopy;
      v14 = v23;
      v15 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@: %{public}@ has an invalid content version. Refusing to acknowledge it.", &v22, 22);

      if (!v15)
      {
        goto LABEL_15;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
      free(v15);
      SSFileLog(v9, @"%@", v16, v17, v18, v19, v20, v21, oSLogObject);
    }

    goto LABEL_15;
  }

  v9 = [self _translateIdentifierToPrivacyAcknowledgement:identifierCopy withVersion:v8];
  [self _appendPrivacyAcknowledgementToLocalAccount:v9];
  v10 = [self _appendPrivacyAcknowledgementToActiveAccount:v9 withURL:lCopy];
  [v10 addFinishBlock:&__block_literal_global_0];

LABEL_15:
}

+ (BOOL)shouldDisplayPrivacyLinkWithIdentifier:(id)identifier
{
  v74 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  ShouldDisableGDPR = SSDebugShouldDisableGDPR(identifierCopy, v5);
  v7 = +[SSLogConfig sharedPrivacyConfig];
  activeAccount = v7;
  if (!ShouldDisableGDPR)
  {
    if (!v7)
    {
      activeAccount = +[SSLogConfig sharedConfig];
    }

    shouldLog = [activeAccount shouldLog];
    if ([activeAccount shouldLogToDisk])
    {
      LODWORD(v21) = shouldLog | 2;
    }

    else
    {
      LODWORD(v21) = shouldLog;
    }

    oSLogObject = [activeAccount OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v21 = v21;
    }

    else
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v66 = 138543618;
      v67 = objc_opt_class();
      v68 = 2114;
      v69 = identifierCopy;
      v23 = v67;
      v24 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_1D48BA000, oSLogObject, 1, "%{public}@: Determining whether or not the privacy policy should be displayed for %{public}@.", &v66, 22);

      if (!v24)
      {
        goto LABEL_26;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:4];
      free(v24);
      SSFileLog(activeAccount, @"%@", v25, v26, v27, v28, v29, v30, oSLogObject);
    }

LABEL_26:
    v31 = +[SSAccountStore defaultStore];
    activeAccount = [v31 activeAccount];

    if (!activeAccount)
    {
      v32 = +[SSAccountStore defaultStore];
      localAccount = [v32 localAccount];
      activeAccount = [localAccount resultWithError:0];
    }

    privacyAcknowledgement = [activeAccount privacyAcknowledgement];
    v35 = [privacyAcknowledgement objectForKeyedSubscript:identifierCopy];
    if (v35)
    {
      v36 = [self _currentPrivacyContentVersionForIdentifier:identifierCopy];
      v37 = +[SSLogConfig sharedPrivacyConfig];
      if (!v37)
      {
        v37 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v37 shouldLog];
      if ([v37 shouldLogToDisk])
      {
        LODWORD(v39) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v39) = shouldLog2;
      }

      oSLogObject2 = [v37 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
      {
        v39 = v39;
      }

      else
      {
        v39 &= 2u;
      }

      if (v39)
      {
        v41 = objc_opt_class();
        v42 = v41;
        unsignedIntegerValue = [v35 unsignedIntegerValue];
        v66 = 138544130;
        v67 = v41;
        v68 = 2114;
        v69 = identifierCopy;
        v70 = 2048;
        v71 = unsignedIntegerValue;
        v72 = 2048;
        v73 = v36;
        LODWORD(v65) = 42;
        v44 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 1, "%{public}@: identifier = %{public}@ | lastAcceptedVersion = %lu | currentVersion = %lu", &v66, v65);

        if (!v44)
        {
LABEL_41:

          LOBYTE(v13) = [v35 unsignedIntegerValue] < v36;
LABEL_55:

          goto LABEL_56;
        }

        oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v44 encoding:4];
        free(v44);
        SSFileLog(v37, @"%@", v45, v46, v47, v48, v49, v50, oSLogObject2);
      }

      goto LABEL_41;
    }

    v51 = +[SSLogConfig sharedPrivacyConfig];
    if (!v51)
    {
      v51 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v51 shouldLog];
    if ([v51 shouldLogToDisk])
    {
      LODWORD(v53) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v53) = shouldLog3;
    }

    oSLogObject3 = [v51 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      v53 = v53;
    }

    else
    {
      v53 &= 2u;
    }

    if (v53)
    {
      v55 = objc_opt_class();
      v66 = 138543618;
      v67 = v55;
      v68 = 2114;
      v69 = identifierCopy;
      v56 = v55;
      LODWORD(v65) = 22;
      v57 = _os_log_send_and_compose_impl(v53, 0, 0, 0, &dword_1D48BA000, oSLogObject3, 1, "%{public}@: No privacy policy for %{public}@ has ever been acknowledged.", &v66, v65);

      if (!v57)
      {
LABEL_54:

        LOBYTE(v13) = 1;
        goto LABEL_55;
      }

      oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v57 encoding:4];
      free(v57);
      SSFileLog(v51, @"%@", v58, v59, v60, v61, v62, v63, oSLogObject3);
    }

    goto LABEL_54;
  }

  if (!v7)
  {
    activeAccount = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [activeAccount shouldLog];
  if ([activeAccount shouldLogToDisk])
  {
    LODWORD(v10) = shouldLog4 | 2;
  }

  else
  {
    LODWORD(v10) = shouldLog4;
  }

  oSLogObject4 = [activeAccount OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v10;
  }

  else
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v66 = 138543362;
  v67 = objc_opt_class();
  v12 = v67;
  v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_1D48BA000, oSLogObject4, 0, "%{public}@: Returning NO from shouldDisplayPrivacyLinkWithIdentifier: because the internal default is set.", &v66, 12);

  if (v13)
  {
    oSLogObject4 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:4];
    free(v13);
    SSFileLog(activeAccount, @"%@", v14, v15, v16, v17, v18, v19, oSLogObject4);
LABEL_13:

    LOBYTE(v13) = 0;
  }

LABEL_56:

  return v13;
}

+ (id)storePrivacyIdentifiers
{
  if (storePrivacyIdentifiers_ss_once_token___COUNTER__ != -1)
  {
    +[SSPrivacyController storePrivacyIdentifiers];
  }

  v3 = storePrivacyIdentifiers_ss_once_object___COUNTER__;

  return v3;
}

void __46__SSPrivacyController_storePrivacyIdentifiers__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4[0] = @"com.apple.onboarding.itunesstore";
  v4[1] = @"com.apple.onboarding.videos";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = [v0 initWithArray:v1];
  v3 = storePrivacyIdentifiers_ss_once_object___COUNTER__;
  storePrivacyIdentifiers_ss_once_object___COUNTER__ = v2;
}

+ (id)appStorePrivacyIdentifiers
{
  if (appStorePrivacyIdentifiers_ss_once_token___COUNTER__ != -1)
  {
    +[SSPrivacyController appStorePrivacyIdentifiers];
  }

  v3 = appStorePrivacyIdentifiers_ss_once_object___COUNTER__;

  return v3;
}

void __49__SSPrivacyController_appStorePrivacyIdentifiers__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4[0] = @"com.apple.onboarding.appstore";
  v4[1] = @"com.apple.onboarding.applearcade";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = [v0 initWithArray:v1];
  v3 = appStorePrivacyIdentifiers_ss_once_object___COUNTER__;
  appStorePrivacyIdentifiers_ss_once_object___COUNTER__ = v2;
}

+ (id)viewControllerForPrivacySplashWithIdentifier:(id)identifier URL:(id)l
{
  v39 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  lCopy = l;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v7 = getAMSUIPrivacyViewControllerClass_softClass;
  v34 = getAMSUIPrivacyViewControllerClass_softClass;
  if (!getAMSUIPrivacyViewControllerClass_softClass)
  {
    *&v35 = MEMORY[0x1E69E9820];
    *(&v35 + 1) = 3221225472;
    v36 = __getAMSUIPrivacyViewControllerClass_block_invoke;
    v37 = &unk_1E84AC2A8;
    v38 = &v31;
    __getAMSUIPrivacyViewControllerClass_block_invoke(&v35);
    v7 = v32[3];
  }

  v8 = v7;
  _Block_object_dispose(&v31, 8);
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __72__SSPrivacyController_viewControllerForPrivacySplashWithIdentifier_URL___block_invoke;
  v28 = &unk_1E84AC230;
  v29 = identifierCopy;
  v9 = lCopy;
  v30 = v9;
  v10 = [v7 privacyControllerWithIdentifier:identifierCopy acknowledgementHandler:&v25];
  if (!v10)
  {
    v11 = +[SSLogConfig sharedPrivacyConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      LODWORD(v13) = shouldLog | 2;
    }

    else
    {
      LODWORD(v13) = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v15 = objc_opt_class();
      LODWORD(v35) = 138543362;
      *(&v35 + 4) = v15;
      v16 = v15;
      v17 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_1D48BA000, oSLogObject, 2, "%{public}@: Could not initialize the privacy view controller. Make sure your project has linked the AMSUI framework.", &v35, 12, v25, v26, v27, v28, v29);

      if (!v17)
      {
LABEL_16:

        goto LABEL_17;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:4];
      free(v17);
      SSFileLog(v11, @"%@", v18, v19, v20, v21, v22, v23, oSLogObject);
    }

    goto LABEL_16;
  }

LABEL_17:

  return v10;
}

void *__72__SSPrivacyController_viewControllerForPrivacySplashWithIdentifier_URL___block_invoke(void *result, uint64_t a2)
{
  if (!a2)
  {
    return [SSPrivacyController acknowledgePrivacyLinkWithIdentifier:result[4] URL:result[5]];
  }

  return result;
}

+ (void)_appendPrivacyAcknowledgement:(id)acknowledgement toAccount:(id)account
{
  v58 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v6 = MEMORY[0x1E695DF90];
  acknowledgementCopy = acknowledgement;
  v8 = [v6 alloc];
  privacyAcknowledgement = [accountCopy privacyAcknowledgement];
  v10 = privacyAcknowledgement;
  if (privacyAcknowledgement)
  {
    v11 = privacyAcknowledgement;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  v12 = [v8 initWithDictionary:v11];

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __63__SSPrivacyController__appendPrivacyAcknowledgement_toAccount___block_invoke;
  v48[3] = &unk_1E84AC258;
  v13 = v12;
  v49 = v13;
  [acknowledgementCopy enumerateKeysAndObjectsUsingBlock:v48];

  privacyAcknowledgement2 = [accountCopy privacyAcknowledgement];
  v15 = [privacyAcknowledgement2 isEqualToDictionary:v13];

  if (v15)
  {
    v16 = +[SSLogConfig sharedPrivacyConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      LODWORD(v18) = shouldLog | 2;
    }

    else
    {
      LODWORD(v18) = shouldLog;
    }

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v18 = v18;
    }

    else
    {
      v18 &= 2u;
    }

    if (!v18)
    {
      goto LABEL_29;
    }

    v20 = objc_opt_class();
    v21 = v20;
    hashedDescription = [accountCopy hashedDescription];
    privacyAcknowledgement3 = [accountCopy privacyAcknowledgement];
    v50 = 138544130;
    v51 = v20;
    v52 = 2114;
    v53 = hashedDescription;
    v54 = 2114;
    v55 = privacyAcknowledgement3;
    v56 = 2114;
    v57 = v13;
    v24 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_1D48BA000, oSLogObject, 1, "%{public}@: The privacy acknowledgement on the account matches what we're trying to add to it. account = %{public}@ | account.privacyAcknowledgement = %{public}@ | privacyAcknowledgement = %{public}@", &v50, 42);

    if (v24)
    {
      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:4];
      free(v24);
      SSFileLog(v16, @"%@", v25, v26, v27, v28, v29, v30, oSLogObject);
LABEL_29:
    }
  }

  else
  {
    v31 = [v13 copy];
    [accountCopy setPrivacyAcknowledgement:v31];

    v32 = +[SSAccountStore defaultStore];
    v47 = 0;
    v33 = [v32 saveAccount:accountCopy verifyCredentials:0 error:&v47];
    v16 = v47;

    if ((v33 & 1) == 0)
    {
      oSLogObject = +[SSLogConfig sharedPrivacyConfig];
      if (!oSLogObject)
      {
        oSLogObject = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [oSLogObject shouldLog];
      if ([oSLogObject shouldLogToDisk])
      {
        LODWORD(v35) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v35) = shouldLog2;
      }

      v19OSLogObject = [oSLogObject OSLogObject];
      if (os_log_type_enabled(v19OSLogObject, OS_LOG_TYPE_ERROR))
      {
        v35 = v35;
      }

      else
      {
        v35 &= 2u;
      }

      if (v35)
      {
        v37 = objc_opt_class();
        v38 = v37;
        hashedDescription2 = [accountCopy hashedDescription];
        v50 = 138543874;
        v51 = v37;
        v52 = 2114;
        v53 = hashedDescription2;
        v54 = 2114;
        v55 = v16;
        v40 = _os_log_send_and_compose_impl(v35, 0, 0, 0, &dword_1D48BA000, v19OSLogObject, 16, "%{public}@: Failed to save %{public}@. error = %{public}@", &v50, 32);

        if (!v40)
        {
          goto LABEL_29;
        }

        v19OSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v40 encoding:4];
        free(v40);
        SSFileLog(oSLogObject, @"%@", v41, v42, v43, v44, v45, v46, v19OSLogObject);
      }

      goto LABEL_29;
    }
  }
}

void __63__SSPrivacyController__appendPrivacyAcknowledgement_toAccount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
    }
  }
}

+ (id)_appendPrivacyAcknowledgementToActiveAccount:(id)account withURL:(id)l
{
  v43 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  lCopy = l;
  v8 = +[SSAccountStore defaultStore];
  activeAccount = [v8 activeAccount];

  v10 = +[SSLogConfig sharedPrivacyConfig];
  v11 = v10;
  if (activeAccount)
  {
    if (!v10)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      LODWORD(v13) = shouldLog | 2;
    }

    else
    {
      LODWORD(v13) = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v37 = 138543874;
      v38 = objc_opt_class();
      v39 = 2114;
      v40 = activeAccount;
      v41 = 2114;
      v42 = accountCopy;
      v15 = v38;
      v16 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "%{public}@: Acknowledging privacy consent on the active account. activeAccount = %{public}@ | privacyAcknowledgement = %{public}@", &v37, 32);

      if (!v16)
      {
LABEL_14:

        [self _appendPrivacyAcknowledgement:accountCopy toAccount:activeAccount];
        v23 = [self _syncPrivacyAcknowledgementOnAccount:activeAccount URL:lCopy];
        goto LABEL_28;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog(v11, @"%@", v17, v18, v19, v20, v21, v22, oSLogObject);
    }

    goto LABEL_14;
  }

  if (!v10)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    LODWORD(v25) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v25) = shouldLog2;
  }

  oSLogObject2 = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v25;
  }

  else
  {
    v25 &= 2u;
  }

  if (!v25)
  {
    goto LABEL_26;
  }

  v37 = 138543362;
  v38 = objc_opt_class();
  v27 = v38;
  v28 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 0, "%{public}@: There's no active account to acknowledgement privacy consent on.", &v37, 12);

  if (v28)
  {
    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:4];
    free(v28);
    SSFileLog(v11, @"%@", v29, v30, v31, v32, v33, v34, oSLogObject2);
LABEL_26:
  }

  v23 = objc_alloc_init(SSBinaryPromise);
  v35 = SSError(@"SSErrorDomain", 106, @"Not Available", @"No account to acknowledge");
  [(SSBinaryPromise *)v23 finishWithError:v35];

LABEL_28:

  return v23;
}

+ (void)_appendPrivacyAcknowledgementToLocalAccount:(id)account
{
  v24 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = +[SSLogConfig sharedPrivacyConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v20 = 138543618;
  v21 = objc_opt_class();
  v22 = 2114;
  v23 = accountCopy;
  v9 = v21;
  v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "%{public}@: Acknowledging privacy consent on local account. privacyAcknowledgement = %{public}@", &v20, 22);

  if (v10)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
LABEL_12:
  }

  v17 = +[SSAccountStore defaultStore];
  localAccount = [v17 localAccount];
  v19 = [localAccount resultWithError:0];

  [self _appendPrivacyAcknowledgement:accountCopy toAccount:v19];
}

+ (unint64_t)_currentPrivacyContentVersionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v4 = getOBBundleClass_softClass;
  v20 = getOBBundleClass_softClass;
  if (!getOBBundleClass_softClass)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getOBBundleClass_block_invoke;
    v15 = &unk_1E84AC2A8;
    v16 = &v17;
    __getOBBundleClass_block_invoke(&v12);
    v4 = v18[3];
  }

  v5 = v4;
  _Block_object_dispose(&v17, 8);
  v6 = [v4 bundleWithIdentifier:identifierCopy];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v7 = getOBPrivacyFlowClass_softClass;
  v20 = getOBPrivacyFlowClass_softClass;
  if (!getOBPrivacyFlowClass_softClass)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getOBPrivacyFlowClass_block_invoke;
    v15 = &unk_1E84AC2A8;
    v16 = &v17;
    __getOBPrivacyFlowClass_block_invoke(&v12);
    v7 = v18[3];
  }

  v8 = v7;
  _Block_object_dispose(&v17, 8);
  v9 = [v7 flowWithBundle:v6];
  contentVersion = [v9 contentVersion];

  return contentVersion;
}

+ (id)_syncPrivacyAcknowledgementOnAccount:(id)account URL:(id)l
{
  accountCopy = account;
  lCopy = l;
  v8 = objc_alloc_init(SSBinaryPromise);
  if ([accountCopy isLocalAccount])
  {
    v9 = SSError(@"SSErrorDomain", 106, @"Not Available", @"Privacy acknowlegment not available for local accounts");
    [(SSBinaryPromise *)v8 finishWithError:v9];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = +[SSDevice currentDevice];
    uniqueDeviceIdentifier = [v10 uniqueDeviceIdentifier];

    if (uniqueDeviceIdentifier)
    {
      [v9 setObject:uniqueDeviceIdentifier forKeyedSubscript:@"guid"];
    }

    privacyAcknowledgement = [accountCopy privacyAcknowledgement];

    if (privacyAcknowledgement)
    {
      privacyAcknowledgement2 = [accountCopy privacyAcknowledgement];
      [v9 setObject:privacyAcknowledgement2 forKeyedSubscript:@"privacyAcknowledgement"];
    }

    v14 = objc_alloc_init(SSMutableURLRequestProperties);
    [(SSMutableURLRequestProperties *)v14 setCachePolicy:1];
    [(SSMutableURLRequestProperties *)v14 setHTTPMethod:@"POST"];
    [(SSMutableURLRequestProperties *)v14 setRequestParameters:v9];
    [(SSMutableURLRequestProperties *)v14 setURL:lCopy];
    [(SSMutableURLRequestProperties *)v14 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
    v41 = 0;
    v42 = &v41;
    v43 = 0x2050000000;
    v15 = getISStoreURLOperationClass_softClass;
    v44 = getISStoreURLOperationClass_softClass;
    if (!getISStoreURLOperationClass_softClass)
    {
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __getISStoreURLOperationClass_block_invoke;
      v39 = &unk_1E84AC2A8;
      v40 = &v41;
      __getISStoreURLOperationClass_block_invoke(&v36);
      v15 = v42[3];
    }

    v16 = v15;
    _Block_object_dispose(&v41, 8);
    v17 = objc_alloc_init(v15);
    v18 = [[SSAuthenticationContext alloc] initWithAccount:accountCopy];
    [v17 setAuthenticationContext:v18];

    v41 = 0;
    v42 = &v41;
    v43 = 0x2050000000;
    v19 = getISProtocolDataProviderClass_softClass;
    v44 = getISProtocolDataProviderClass_softClass;
    if (!getISProtocolDataProviderClass_softClass)
    {
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __getISProtocolDataProviderClass_block_invoke;
      v39 = &unk_1E84AC2A8;
      v40 = &v41;
      __getISProtocolDataProviderClass_block_invoke(&v36);
      v19 = v42[3];
    }

    v20 = v19;
    _Block_object_dispose(&v41, 8);
    v21 = objc_alloc_init(v19);
    [v17 setDataProvider:v21];

    [v17 setRequestProperties:v14];
    objc_initWeak(&location, v17);
    objc_initWeak(&from, self);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __64__SSPrivacyController__syncPrivacyAcknowledgementOnAccount_URL___block_invoke;
    v29[3] = &unk_1E84AC280;
    objc_copyWeak(&v32, &from);
    objc_copyWeak(&v33, &location);
    v22 = v8;
    v30 = v22;
    v31 = accountCopy;
    [v17 setCompletionBlock:v29];
    v41 = 0;
    v42 = &v41;
    v43 = 0x2050000000;
    v23 = getISOperationQueueClass_softClass;
    v44 = getISOperationQueueClass_softClass;
    if (!getISOperationQueueClass_softClass)
    {
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __getISOperationQueueClass_block_invoke;
      v39 = &unk_1E84AC2A8;
      v40 = &v41;
      __getISOperationQueueClass_block_invoke(&v36);
      v23 = v42[3];
    }

    v24 = v23;
    _Block_object_dispose(&v41, 8);
    mainQueue = [v23 mainQueue];
    [mainQueue addOperation:v17];

    v26 = v31;
    v27 = v22;

    objc_destroyWeak(&v33);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __64__SSPrivacyController__syncPrivacyAcknowledgementOnAccount_URL___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  v4 = [v3 success];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 56));
    v6 = [v5 dataProvider];
    v7 = [v6 output];

    v8 = +[SSLogConfig sharedPrivacyConfig];
    v9 = v8;
    if (v7)
    {
      if (!v8)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      v10 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        LODWORD(v11) = v10 | 2;
      }

      else
      {
        LODWORD(v11) = v10;
      }

      v12 = [v9 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v11 = v11;
      }

      else
      {
        v11 &= 2u;
      }

      if (v11)
      {
        v50 = 138543362;
        v51 = objc_opt_class();
        v13 = v51;
        v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1D48BA000, v12, 1, "%{public}@: Successfully acknowledged privacy consent.", &v50, 12);

        if (!v14)
        {
LABEL_15:

          [WeakRetained _appendPrivacyAcknowledgement:v7 toAccount:*(a1 + 40)];
LABEL_42:
          [*(a1 + 32) finishWithSuccess];
          goto LABEL_43;
        }

        v12 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
        free(v14);
        SSFileLog(v9, @"%@", v15, v16, v17, v18, v19, v20, v12);
      }

      goto LABEL_15;
    }

    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v39 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v40) = v39 | 2;
    }

    else
    {
      LODWORD(v40) = v39;
    }

    v41 = [v9 OSLogObject];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v40 = v40;
    }

    else
    {
      v40 &= 2u;
    }

    if (v40)
    {
      v50 = 138543362;
      v51 = objc_opt_class();
      v42 = v51;
      v43 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &dword_1D48BA000, v41, 16, "%{public}@: Successfully acknowledged privacy consent, but the response body is nil.", &v50, 12);

      if (!v43)
      {
LABEL_41:

        goto LABEL_42;
      }

      v41 = [MEMORY[0x1E696AEC0] stringWithCString:v43 encoding:4];
      free(v43);
      SSFileLog(v9, @"%@", v44, v45, v46, v47, v48, v49, v41);
    }

    goto LABEL_41;
  }

  v21 = +[SSLogConfig sharedPrivacyConfig];
  if (!v21)
  {
    v21 = +[SSLogConfig sharedConfig];
  }

  v22 = [v21 shouldLog];
  if ([v21 shouldLogToDisk])
  {
    LODWORD(v23) = v22 | 2;
  }

  else
  {
    LODWORD(v23) = v22;
  }

  v24 = [v21 OSLogObject];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v23 = v23;
  }

  else
  {
    v23 &= 2u;
  }

  if (!v23)
  {
    goto LABEL_27;
  }

  v25 = objc_opt_class();
  v26 = v25;
  v27 = objc_loadWeakRetained((a1 + 56));
  v28 = [v27 error];
  v50 = 138543618;
  v51 = v25;
  v52 = 2114;
  v53 = v28;
  v29 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &dword_1D48BA000, v24, 16, "%{public}@: Failed to acknowledge privacy consent. error = %{public}@", &v50, 22);

  if (v29)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithCString:v29 encoding:4];
    free(v29);
    SSFileLog(v21, @"%@", v30, v31, v32, v33, v34, v35, v24);
LABEL_27:
  }

  v36 = *(a1 + 32);
  v7 = objc_loadWeakRetained((a1 + 56));
  v37 = [v7 error];
  v38 = SSErrorWithUnderlyingError(v37, @"SSErrorDomain", 100, @"Acknowlegment Failed", @"Failed to send acknowlegment");
  [v36 finishWithError:v38];

LABEL_43:
}

+ (id)_translateIdentifierToPrivacyAcknowledgement:(id)acknowledgement withVersion:(unint64_t)version
{
  v39 = *MEMORY[0x1E69E9840];
  acknowledgementCopy = acknowledgement;
  if (![acknowledgementCopy length])
  {
    [SSPrivacyController _translateIdentifierToPrivacyAcknowledgement:a2 withVersion:self];
  }

  storePrivacyIdentifiers = [self storePrivacyIdentifiers];
  appStorePrivacyIdentifiers = [self appStorePrivacyIdentifiers];
  if ([storePrivacyIdentifiers containsObject:acknowledgementCopy])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = storePrivacyIdentifiers;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (!v12)
    {
      goto LABEL_22;
    }

    v13 = v12;
    v25 = appStorePrivacyIdentifiers;
    v26 = storePrivacyIdentifiers;
    v14 = *v32;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{version, v25, v26}];
        [v10 setObject:v17 forKeyedSubscript:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v13);
LABEL_20:
    appStorePrivacyIdentifiers = v25;
    storePrivacyIdentifiers = v26;
    goto LABEL_22;
  }

  if ([appStorePrivacyIdentifiers containsObject:acknowledgementCopy])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = appStorePrivacyIdentifiers;
    v18 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (!v18)
    {
      goto LABEL_22;
    }

    v19 = v18;
    v25 = appStorePrivacyIdentifiers;
    v26 = storePrivacyIdentifiers;
    v20 = *v28;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v11);
        }

        v22 = *(*(&v27 + 1) + 8 * j);
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{version, v25, v26, v27}];
        [v10 setObject:v23 forKeyedSubscript:v22];
      }

      v19 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v19);
    goto LABEL_20;
  }

  v35 = acknowledgementCopy;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:version];
  v36 = v11;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
LABEL_22:

  return v10;
}

+ (void)_translateIdentifierToPrivacyAcknowledgement:(uint64_t)a1 withVersion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SSPrivacyController.m" lineNumber:298 description:@"identifier cannot be empty or nil."];
}

@end
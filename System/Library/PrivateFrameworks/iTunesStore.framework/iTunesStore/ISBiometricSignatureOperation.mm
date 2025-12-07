@interface ISBiometricSignatureOperation
- (BOOL)_promptUserToAuthenticateForIdentityMapChangeWithAccountIdentifier:(id)identifier accountName:(id)name;
- (ISBiometricSignatureOperation)initWithBiometricAuthenticationContext:(id)context touchIDDialog:(id)dialog fallbackDialog:(id)fallbackDialog;
- (void)run;
@end

@implementation ISBiometricSignatureOperation

- (ISBiometricSignatureOperation)initWithBiometricAuthenticationContext:(id)context touchIDDialog:(id)dialog fallbackDialog:(id)fallbackDialog
{
  contextCopy = context;
  dialogCopy = dialog;
  fallbackDialogCopy = fallbackDialog;
  v16.receiver = self;
  v16.super_class = ISBiometricSignatureOperation;
  v12 = [(ISOperation *)&v16 init];
  if (v12)
  {
    v13 = objc_opt_new();
    biometricStore = v12->_biometricStore;
    v12->_biometricStore = v13;

    objc_storeStrong(&v12->_context, context);
    objc_storeStrong(&v12->_fallbackDialog, fallbackDialog);
    objc_storeStrong(&v12->_touchIDDialog, dialog);
  }

  return v12;
}

- (void)run
{
  selfCopy = self;
  v192 = *MEMORY[0x277D85DE8];
  context = [(ISBiometricSignatureOperation *)self context];
  accountIdentifier = [context accountIdentifier];

  context2 = [(ISBiometricSignatureOperation *)selfCopy context];
  challenge = [context2 challenge];

  biometricStore = [(ISBiometricSignatureOperation *)selfCopy biometricStore];
  v7 = [biometricStore biometricAvailabilityForAccountIdentifier:accountIdentifier];
  v8 = v7;
  v182 = biometricStore;
  v183 = selfCopy;
  if (v7 > 3)
  {
    switch(v7)
    {
      case 4:
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38])
        {
          mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog = [mEMORY[0x277D69B38] shouldLog];
        if ([mEMORY[0x277D69B38] shouldLogToDisk])
        {
          LODWORD(v24) = shouldLog | 2;
        }

        else
        {
          LODWORD(v24) = shouldLog;
        }

        oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v24 = v24;
        }

        else
        {
          v24 &= 2u;
        }

        if (!v24)
        {
          goto LABEL_89;
        }

        v188 = 138543362;
        v189 = objc_opt_class();
        v13 = v189;
        v14 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: BiometricAvailability - Invalid for no account", &v188, 12);
        goto LABEL_87;
      case 5:
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38])
        {
          mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog2 = [mEMORY[0x277D69B38] shouldLog];
        if ([mEMORY[0x277D69B38] shouldLogToDisk])
        {
          LODWORD(v42) = shouldLog2 | 2;
        }

        else
        {
          LODWORD(v42) = shouldLog2;
        }

        oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v42 = v42;
        }

        else
        {
          v42 &= 2u;
        }

        if (!v42)
        {
          goto LABEL_89;
        }

        v188 = 138543362;
        v189 = objc_opt_class();
        v13 = v189;
        v14 = _os_log_send_and_compose_impl(v42, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: BiometricAvailability - Invalid for invalid account", &v188, 12);
        goto LABEL_87;
      case 6:
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38])
        {
          mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog3 = [mEMORY[0x277D69B38] shouldLog];
        if ([mEMORY[0x277D69B38] shouldLogToDisk])
        {
          LODWORD(v16) = shouldLog3 | 2;
        }

        else
        {
          LODWORD(v16) = shouldLog3;
        }

        oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v16 = v16;
        }

        else
        {
          v16 &= 2u;
        }

        if (!v16)
        {
          goto LABEL_89;
        }

        v188 = 138543362;
        v189 = objc_opt_class();
        v13 = v189;
        v14 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: BiometricAvailability - Invalid for unknown", &v188, 12);
        goto LABEL_87;
    }

    goto LABEL_105;
  }

  if (!v7)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog4 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      LODWORD(v19) = shouldLog4 | 2;
    }

    else
    {
      LODWORD(v19) = shouldLog4;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v19 = v19;
    }

    else
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v188 = 138543362;
      v189 = objc_opt_class();
      v21 = v189;
      v22 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_275BC3000, oSLogObject2, 2, "%{public}@: BiometricAvailability - Available", &v188, 12);

      if (!v22)
      {
LABEL_40:

        goto LABEL_139;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v22 encoding:4];
      free(v22);
      v166 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_40;
  }

  if (v7 != 2)
  {
    if (v7 == 3)
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog5 = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        LODWORD(v11) = shouldLog5 | 2;
      }

      else
      {
        LODWORD(v11) = shouldLog5;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v11 = v11;
      }

      else
      {
        v11 &= 2u;
      }

      if (!v11)
      {
        goto LABEL_89;
      }

      v188 = 138543362;
      v189 = objc_opt_class();
      v13 = v189;
      v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: BiometricAvailability - Invalid for no identities", &v188, 12);
LABEL_87:
      v43 = v14;

      if (!v43)
      {
LABEL_90:

        goto LABEL_106;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v43 encoding:4];
      free(v43);
      v166 = oSLogObject;
      SSFileLog();
LABEL_89:

      goto LABEL_90;
    }

    goto LABEL_105;
  }

  mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]3)
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog6 = [mEMORY[0x277D69B38]3 shouldLog];
  if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
  {
    LODWORD(v27) = shouldLog6 | 2;
  }

  else
  {
    LODWORD(v27) = shouldLog6;
  }

  oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    v27 = v27;
  }

  else
  {
    v27 &= 2u;
  }

  if (v27)
  {
    v188 = 138543362;
    v189 = objc_opt_class();
    v29 = v189;
    v30 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &dword_275BC3000, oSLogObject3, 16, "%{public}@: BiometricAvailability - Invalid for identity map change", &v188, 12);

    if (!v30)
    {
      goto LABEL_63;
    }

    oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v30 encoding:4];
    free(v30);
    v166 = oSLogObject3;
    SSFileLog();
  }

LABEL_63:
  mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]4)
  {
    mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog7 = [mEMORY[0x277D69B38]4 shouldLog];
  if ([mEMORY[0x277D69B38]4 shouldLogToDisk])
  {
    LODWORD(v33) = shouldLog7 | 2;
  }

  else
  {
    LODWORD(v33) = shouldLog7;
  }

  oSLogObject4 = [mEMORY[0x277D69B38]4 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v33 = v33;
  }

  else
  {
    v33 &= 2u;
  }

  if (v33)
  {
    v35 = objc_opt_class();
    v188 = 138543362;
    v189 = v35;
    v36 = v35;
    LODWORD(v172) = 12;
    v37 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &dword_275BC3000, oSLogObject4, 0, "%{public}@: Prompting for auth due to biometric identity change", &v188, v172);

    if (!v37)
    {
      goto LABEL_75;
    }

    oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v37 encoding:4];
    free(v37);
    v166 = oSLogObject4;
    SSFileLog();
  }

LABEL_75:
  context3 = [(ISBiometricSignatureOperation *)selfCopy context];
  accountName = [context3 accountName];

  if (![(ISBiometricSignatureOperation *)selfCopy _promptUserToAuthenticateForIdentityMapChangeWithAccountIdentifier:accountIdentifier accountName:accountName])
  {
    context4 = [(ISBiometricSignatureOperation *)selfCopy context];
    [context4 setIsIdentityMapInvalid:1];

    mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]5)
    {
      mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog8 = [mEMORY[0x277D69B38]5 shouldLog];
    if ([mEMORY[0x277D69B38]5 shouldLogToDisk])
    {
      LODWORD(v47) = shouldLog8 | 2;
    }

    else
    {
      LODWORD(v47) = shouldLog8;
    }

    oSLogObject5 = [mEMORY[0x277D69B38]5 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v47;
    }

    else
    {
      v47 &= 2u;
    }

    if (v47)
    {
      v49 = objc_opt_class();
      v188 = 138543362;
      v189 = v49;
      v50 = v49;
      LODWORD(v172) = 12;
      v51 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &dword_275BC3000, oSLogObject5, 0, "%{public}@: Removing merchant session for invalid identity map", &v188, v172);

      if (!v51)
      {
LABEL_103:

        touchIDDialog = [(ISBiometricSignatureOperation *)selfCopy touchIDDialog];
        paymentSheet = [touchIDDialog paymentSheet];
        [paymentSheet setMerchantSession:0];

        touchIDDialog2 = [(ISBiometricSignatureOperation *)selfCopy touchIDDialog];
        paymentSheet2 = [touchIDDialog2 paymentSheet];
        [paymentSheet2 setApplePayClassic:0];

        v8 = 2;
        goto LABEL_104;
      }

      oSLogObject5 = [MEMORY[0x277CCACA8] stringWithCString:v51 encoding:4];
      free(v51);
      v166 = oSLogObject5;
      SSFileLog();
    }

    goto LABEL_103;
  }

  v40 = +[ISBiometricStore sharedInstance];
  [v40 saveIdentityMapForAccountIdentifier:accountIdentifier];

  v8 = [biometricStore biometricAvailabilityForAccountIdentifier:accountIdentifier];
LABEL_104:

LABEL_105:
  if (v8)
  {
LABEL_106:
    mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]6)
    {
      mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog9 = [mEMORY[0x277D69B38]6 shouldLog];
    if ([mEMORY[0x277D69B38]6 shouldLogToDisk])
    {
      LODWORD(v58) = shouldLog9 | 2;
    }

    else
    {
      LODWORD(v58) = shouldLog9;
    }

    oSLogObject6 = [mEMORY[0x277D69B38]6 OSLogObject];
    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
    {
      v58 = v58;
    }

    else
    {
      v58 &= 2u;
    }

    if (v58)
    {
      v60 = objc_opt_class();
      v61 = MEMORY[0x277CCABB0];
      v62 = v60;
      v63 = [v61 numberWithInteger:v8];
      v188 = 138543618;
      v189 = v60;
      v190 = 2114;
      v191 = v63;
      LODWORD(v172) = 22;
      v64 = _os_log_send_and_compose_impl(v58, 0, 0, 0, &dword_275BC3000, oSLogObject6, 16, "%{public}@: Challenge signature failed with unavailable biometrics: %{public}@", &v188, v172);

      selfCopy = v183;
      if (!v64)
      {
LABEL_118:

        touchIDDialog3 = [(ISBiometricSignatureOperation *)selfCopy touchIDDialog];
        paymentSheet3 = [touchIDDialog3 paymentSheet];
        if (paymentSheet3)
        {
          context5 = [(ISBiometricSignatureOperation *)selfCopy context];
          [context5 setPaymentSheet:paymentSheet3];
        }

        context6 = [(ISBiometricSignatureOperation *)selfCopy context];
        isExtendedAction = [context6 isExtendedAction];

        if (isExtendedAction)
        {
          oSLogObject7 = SSError();
          mEMORY[0x277D69B38]7 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
          v72 = SSErrorBySettingUserInfoValue();
LABEL_134:

          fpanID = 0;
          paymentTokenData = 0;
          v80 = 0;
LABEL_135:

          v81 = v72;
          selfCopy = v183;
          goto LABEL_136;
        }

        mEMORY[0x277D69B38]7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38]7)
        {
          mEMORY[0x277D69B38]7 = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog10 = [mEMORY[0x277D69B38]7 shouldLog];
        if ([mEMORY[0x277D69B38]7 shouldLogToDisk])
        {
          LODWORD(v74) = shouldLog10 | 2;
        }

        else
        {
          LODWORD(v74) = shouldLog10;
        }

        oSLogObject7 = [mEMORY[0x277D69B38]7 OSLogObject];
        if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
        {
          v74 = v74;
        }

        else
        {
          v74 &= 2u;
        }

        if (!v74)
        {
LABEL_133:
          v72 = 0;
          goto LABEL_134;
        }

        v75 = objc_opt_class();
        v188 = 138543362;
        v189 = v75;
        v76 = v75;
        LODWORD(v172) = 12;
        v77 = _os_log_send_and_compose_impl(v74, 0, 0, 0, &dword_275BC3000, oSLogObject7, 0, "%{public}@: Attempting to fallback to password payment", &v188, v172);

        if (v77)
        {
          oSLogObject7 = [MEMORY[0x277CCACA8] stringWithCString:v77 encoding:4];
          free(v77);
          v168 = oSLogObject7;
          SSFileLog();
          goto LABEL_133;
        }

LABEL_215:
        fpanID = 0;
        paymentTokenData = 0;
        v80 = 0;
        v72 = 0;
        goto LABEL_135;
      }

      oSLogObject6 = [MEMORY[0x277CCACA8] stringWithCString:v64 encoding:4];
      free(v64);
      v167 = oSLogObject6;
      SSFileLog();
    }

    goto LABEL_118;
  }

LABEL_139:
  context7 = [(ISBiometricSignatureOperation *)selfCopy context];
  isExtendedAction2 = [context7 isExtendedAction];
  v86 = isExtendedAction2;
  v87 = isExtendedAction2;

  if (v86)
  {
    goto LABEL_158;
  }

  touchIDDialog4 = [(ISBiometricSignatureOperation *)selfCopy touchIDDialog];
  isDualAction = [touchIDDialog4 isDualAction];

  mEMORY[0x277D69B38]8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]8)
  {
    mEMORY[0x277D69B38]8 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog11 = [mEMORY[0x277D69B38]8 shouldLog];
  if ([mEMORY[0x277D69B38]8 shouldLogToDisk])
  {
    LODWORD(v92) = shouldLog11 | 2;
  }

  else
  {
    LODWORD(v92) = shouldLog11;
  }

  oSLogObject8 = [mEMORY[0x277D69B38]8 OSLogObject];
  if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
  {
    v92 = v92;
  }

  else
  {
    v92 &= 2u;
  }

  if (v92)
  {
    v94 = objc_opt_class();
    v95 = MEMORY[0x277CCABB0];
    v96 = v94;
    v97 = [v95 numberWithBool:isDualAction];
    v188 = 138543618;
    v189 = v94;
    v190 = 2114;
    v191 = v97;
    LODWORD(v172) = 22;
    v98 = _os_log_send_and_compose_impl(v92, 0, 0, 0, &dword_275BC3000, oSLogObject8, 0, "%{public}@: Evaluating ACL capabilities for dual-action buy: %{public}@", &v188, v172);

    selfCopy = v183;
    if (!v98)
    {
      goto LABEL_152;
    }

    oSLogObject8 = [MEMORY[0x277CCACA8] stringWithCString:v98 encoding:4];
    free(v98);
    v169 = oSLogObject8;
    SSFileLog();
  }

LABEL_152:
  if (!isDualAction)
  {
    goto LABEL_158;
  }

  if (!+[ISBiometricStore shouldUseApplePayClassic])
  {
    if (+[ISBiometricStore shouldUseAutoEnrollment])
    {
      goto LABEL_157;
    }

LABEL_158:
    mEMORY[0x277D69B38]9 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]9)
    {
      mEMORY[0x277D69B38]9 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog12 = [mEMORY[0x277D69B38]9 shouldLog];
    if ([mEMORY[0x277D69B38]9 shouldLogToDisk])
    {
      LODWORD(v105) = shouldLog12 | 2;
    }

    else
    {
      LODWORD(v105) = shouldLog12;
    }

    oSLogObject9 = [mEMORY[0x277D69B38]9 OSLogObject];
    if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_DEFAULT))
    {
      v105 = v105;
    }

    else
    {
      v105 &= 2u;
    }

    if (v105)
    {
      v107 = objc_opt_class();
      v108 = MEMORY[0x277CCABB0];
      v109 = v107;
      v110 = [v108 numberWithInteger:v87];
      v188 = 138543618;
      v189 = v107;
      v190 = 2114;
      v191 = v110;
      LODWORD(v172) = 22;
      v111 = _os_log_send_and_compose_impl(v105, 0, 0, 0, &dword_275BC3000, oSLogObject9, 0, "%{public}@: Evaluating ACL capabilities for purpose: %{public}@", &v188, v172);

      selfCopy = v183;
      if (!v111)
      {
LABEL_170:

        if (v87)
        {
          goto LABEL_174;
        }

        context8 = [(ISBiometricSignatureOperation *)selfCopy context];
        v102 = 1;
        goto LABEL_172;
      }

      oSLogObject9 = [MEMORY[0x277CCACA8] stringWithCString:v111 encoding:4];
      free(v111);
      v169 = oSLogObject9;
      SSFileLog();
    }

    goto LABEL_170;
  }

  context9 = [(ISBiometricSignatureOperation *)selfCopy context];
  v169 = [ISBiometricStore isActionSupported:3 withBiometricAuthenticationContext:context9];

  if (+[ISBiometricStore shouldUseAutoEnrollment])
  {
LABEL_157:
    context8 = [(ISBiometricSignatureOperation *)selfCopy context];
    v102 = 4;
LABEL_172:
    v169 = [ISBiometricStore isActionSupported:v102 withBiometricAuthenticationContext:context8, v169];
  }

  if (!v169)
  {
    mEMORY[0x277D69B38]10 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]10)
    {
      mEMORY[0x277D69B38]10 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog13 = [mEMORY[0x277D69B38]10 shouldLog];
    if ([mEMORY[0x277D69B38]10 shouldLogToDisk])
    {
      LODWORD(v134) = shouldLog13 | 2;
    }

    else
    {
      LODWORD(v134) = shouldLog13;
    }

    oSLogObject10 = [mEMORY[0x277D69B38]10 OSLogObject];
    if (os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_DEFAULT))
    {
      v134 = v134;
    }

    else
    {
      v134 &= 2u;
    }

    if (v134)
    {
      v136 = objc_opt_class();
      v188 = 138543362;
      v189 = v136;
      v137 = v136;
      LODWORD(v172) = 12;
      v138 = _os_log_send_and_compose_impl(v134, 0, 0, 0, &dword_275BC3000, oSLogObject10, 0, "%{public}@: Aborting signature attempt due to bad ACL version", &v188, v172);

      if (!v138)
      {
        goto LABEL_202;
      }

      oSLogObject10 = [MEMORY[0x277CCACA8] stringWithCString:v138 encoding:4];
      free(v138);
      v171 = oSLogObject10;
      SSFileLog();
    }

LABEL_202:
    mEMORY[0x277D69B38]11 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]11)
    {
      mEMORY[0x277D69B38]11 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog14 = [mEMORY[0x277D69B38]11 shouldLog];
    if ([mEMORY[0x277D69B38]11 shouldLogToDisk])
    {
      LODWORD(v141) = shouldLog14 | 2;
    }

    else
    {
      LODWORD(v141) = shouldLog14;
    }

    oSLogObject11 = [mEMORY[0x277D69B38]11 OSLogObject];
    if (os_log_type_enabled(oSLogObject11, OS_LOG_TYPE_ERROR))
    {
      v141 = v141;
    }

    else
    {
      v141 &= 2u;
    }

    if (v141)
    {
      v143 = objc_opt_class();
      v188 = 138543618;
      v189 = v143;
      v190 = 2114;
      v191 = @"Incorrect ACL version";
      v144 = v143;
      LODWORD(v172) = 22;
      v145 = _os_log_send_and_compose_impl(v141, 0, 0, 0, &dword_275BC3000, oSLogObject11, 16, "%{public}@: Challenge signature failed: %{public}@", &v188, v172);

      if (!v145)
      {
LABEL_214:

        touchIDDialog3 = [MEMORY[0x277CCACA8] stringWithFormat:@"mt-tid-%@", accountIdentifier];
        v186 = *MEMORY[0x277CCA240];
        v187 = touchIDDialog3;
        paymentSheet3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v187 forKeys:&v186 count:1];
        mEMORY[0x277D69B38]7 = [MEMORY[0x277D69CB8] sharedStorage];
        [mEMORY[0x277D69B38]7 removeCookiesWithProperties:paymentSheet3];
        goto LABEL_215;
      }

      oSLogObject11 = [MEMORY[0x277CCACA8] stringWithCString:v145 encoding:4];
      free(v145);
      SSFileLog();
    }

    goto LABEL_214;
  }

LABEL_174:
  mEMORY[0x277D69B38]12 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]12)
  {
    mEMORY[0x277D69B38]12 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog15 = [mEMORY[0x277D69B38]12 shouldLog];
  if ([mEMORY[0x277D69B38]12 shouldLogToDisk])
  {
    LODWORD(v114) = shouldLog15 | 2;
  }

  else
  {
    LODWORD(v114) = shouldLog15;
  }

  oSLogObject12 = [mEMORY[0x277D69B38]12 OSLogObject];
  if (os_log_type_enabled(oSLogObject12, OS_LOG_TYPE_DEFAULT))
  {
    v114 = v114;
  }

  else
  {
    v114 &= 2u;
  }

  if (v114)
  {
    v116 = objc_opt_class();
    v188 = 138543362;
    v189 = v116;
    v117 = v116;
    LODWORD(v172) = 12;
    v118 = _os_log_send_and_compose_impl(v114, 0, 0, 0, &dword_275BC3000, oSLogObject12, 0, "%{public}@: Device key count is correct, will attempt to sign challenge", &v188, v172);

    if (!v118)
    {
      goto LABEL_186;
    }

    oSLogObject12 = [MEMORY[0x277CCACA8] stringWithCString:v118 encoding:4];
    free(v118);
    v170 = oSLogObject12;
    SSFileLog();
  }

LABEL_186:
  v185 = 0;
  touchIDDialog3 = [biometricStore publicKeyDataForAccountIdentifier:accountIdentifier purpose:v87 error:&v185];
  v81 = v185;
  if (touchIDDialog3)
  {
    paymentSheet3 = ISCopyEncodedBase64([touchIDDialog3 bytes], objc_msgSend(touchIDDialog3, "length"));
    mEMORY[0x277D69B38]7 = [challenge stringByAppendingString:paymentSheet3];
    v180 = [mEMORY[0x277D69B38]7 dataUsingEncoding:4];
    touchIDDialog5 = [(ISBiometricSignatureOperation *)selfCopy touchIDDialog];
    v120 = touchIDDialog5;
    v177 = accountIdentifier;
    if (touchIDDialog5)
    {
      v121 = MEMORY[0x277D69BE8];
      body = [touchIDDialog5 body];
      context10 = [(ISBiometricSignatureOperation *)selfCopy context];
      [context10 accountName];
      v125 = v124 = v120;
      v179 = [v121 stringWithFormattedUsernameForString:body username:v125];

      v120 = v124;
      v126 = [v124 buttonForButtonType:0];
      title = [v126 title];

      title2 = [v124 title];
      paymentSheet4 = [v124 paymentSheet];

      if (!paymentSheet4)
      {
        biometricStore = v182;
        selfCopy = v183;
        goto LABEL_230;
      }

      selfCopy = v183;
      context11 = [(ISBiometricSignatureOperation *)v183 context];
      [v124 paymentSheet];
      v131 = v130 = title;
      [context11 setPaymentSheet:v131];

      title = v130;
      biometricStore = v182;
    }

    else
    {
      context11 = [(ISBiometricSignatureOperation *)selfCopy context];
      [context11 accountName];
      v179 = title2 = 0;
      title = 0;
    }

LABEL_230:
    v149 = objc_alloc_init(MEMORY[0x277D69A78]);
    [v149 setCancelLabel:title];
    [v149 setReason:v179];
    [v149 setTitle:title2];
    context12 = [(ISBiometricSignatureOperation *)selfCopy context];
    v173 = v149;
    [context12 setConsolidatedDialog:v149];

    context13 = [(ISBiometricSignatureOperation *)selfCopy context];
    v184 = v81;
    v152 = [biometricStore signData:v180 context:context13 error:&v184];
    v72 = v184;

    v175 = v120;
    v176 = v152;
    v174 = title;
    if (!v152 || v72)
    {
      mEMORY[0x277D69B38]13 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]13)
      {
        mEMORY[0x277D69B38]13 = [MEMORY[0x277D69B38] sharedConfig];
      }

      LODWORD(v161) = [mEMORY[0x277D69B38]13 shouldLog];
      if ([mEMORY[0x277D69B38]13 shouldLogToDisk])
      {
        LODWORD(v161) = v161 | 2;
      }

      oSLogObject13 = [mEMORY[0x277D69B38]13 OSLogObject];
      if (os_log_type_enabled(oSLogObject13, OS_LOG_TYPE_ERROR))
      {
        v161 = v161;
      }

      else
      {
        v161 &= 2u;
      }

      v157 = v173;
      if (!v161)
      {
        v80 = 0;
        goto LABEL_254;
      }

      v162 = objc_opt_class();
      v188 = 138543618;
      v189 = v162;
      v190 = 2114;
      v191 = v72;
      v163 = v162;
      LODWORD(v172) = 22;
      v160 = _os_log_send_and_compose_impl(v161, 0, 0, 0, &dword_275BC3000, oSLogObject13, 16, "%{public}@: Challenge signature failed with error: %{public}@", &v188, v172);

      v80 = 0;
      if (!v160)
      {
LABEL_255:

        context14 = [(ISBiometricSignatureOperation *)v183 context];
        paymentTokenData = [context14 paymentTokenData];

        context15 = [(ISBiometricSignatureOperation *)v183 context];
        fpanID = [context15 fpanID];

        accountIdentifier = v177;
        goto LABEL_135;
      }
    }

    else
    {
      v80 = ISCopyEncodedBase64([v152 bytes], objc_msgSend(v152, "length"));
      [biometricStore saveIdentityMapForAccountIdentifier:v177];
      mEMORY[0x277D69B38]13 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]13)
      {
        mEMORY[0x277D69B38]13 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog16 = [mEMORY[0x277D69B38]13 shouldLog];
      if ([mEMORY[0x277D69B38]13 shouldLogToDisk])
      {
        LODWORD(v155) = shouldLog16 | 2;
      }

      else
      {
        LODWORD(v155) = shouldLog16;
      }

      oSLogObject13 = [mEMORY[0x277D69B38]13 OSLogObject];
      if (os_log_type_enabled(oSLogObject13, OS_LOG_TYPE_DEBUG))
      {
        v155 = v155;
      }

      else
      {
        v155 &= 2u;
      }

      v157 = v173;
      if (!v155)
      {
        goto LABEL_254;
      }

      v158 = objc_opt_class();
      v188 = 138543362;
      v189 = v158;
      v159 = v158;
      LODWORD(v172) = 12;
      v160 = _os_log_send_and_compose_impl(v155, 0, 0, 0, &dword_275BC3000, oSLogObject13, 2, "%{public}@: Challenge signature generated", &v188, v172);

      if (!v160)
      {
        goto LABEL_255;
      }
    }

    oSLogObject13 = [MEMORY[0x277CCACA8] stringWithCString:v160 encoding:4];
    free(v160);
    v168 = oSLogObject13;
    SSFileLog();
LABEL_254:

    goto LABEL_255;
  }

  paymentSheet3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!paymentSheet3)
  {
    paymentSheet3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  LODWORD(v146) = [paymentSheet3 shouldLog];
  if ([paymentSheet3 shouldLogToDisk])
  {
    LODWORD(v146) = v146 | 2;
  }

  mEMORY[0x277D69B38]7 = [paymentSheet3 OSLogObject];
  if (os_log_type_enabled(mEMORY[0x277D69B38]7, OS_LOG_TYPE_ERROR))
  {
    v146 = v146;
  }

  else
  {
    v146 &= 2u;
  }

  if (!v146)
  {
LABEL_226:
    fpanID = 0;
    paymentTokenData = 0;
    v80 = 0;
    v72 = v81;
    goto LABEL_135;
  }

  v147 = objc_opt_class();
  v188 = 138543618;
  v189 = v147;
  v190 = 2114;
  v191 = v81;
  v148 = v147;
  LODWORD(v172) = 22;
  v80 = _os_log_send_and_compose_impl(v146, 0, 0, 0, &dword_275BC3000, mEMORY[0x277D69B38]7, 16, "%{public}@: Public key copy failed with error: %{public}@", &v188, v172);

  if (v80)
  {
    mEMORY[0x277D69B38]7 = [MEMORY[0x277CCACA8] stringWithCString:v80 encoding:4];
    free(v80);
    v168 = mEMORY[0x277D69B38]7;
    SSFileLog();
    goto LABEL_226;
  }

  fpanID = 0;
  paymentTokenData = 0;
LABEL_136:

  [(ISOperation *)selfCopy setError:v81];
  [(ISOperation *)selfCopy setSuccess:v80 != 0, v168];
  outputBlock = [(ISBiometricSignatureOperation *)selfCopy outputBlock];
  v83 = outputBlock;
  if (outputBlock)
  {
    (*(outputBlock + 16))(outputBlock, v80, paymentTokenData, fpanID, v81);
  }
}

- (BOOL)_promptUserToAuthenticateForIdentityMapChangeWithAccountIdentifier:(id)identifier accountName:(id)name
{
  v70 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  identifierCopy = identifier;
  v8 = +[ISDevice sharedInstance];
  deviceBiometricStyle = [v8 deviceBiometricStyle];

  v10 = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccountIdentifier:identifierCopy];
  [v10 setCanCreateNewAccount:0];
  [v10 setCanSetActiveAccount:0];
  [v10 setPromptStyle:1];
  [v10 setShouldCreateNewSession:1];
  v63 = nameCopy;
  if ([nameCopy length])
  {
    if (deviceBiometricStyle == 3)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = v12;
      v14 = @"PROMPT_REASON_NEW_FACE_FORMAT_%@";
      goto LABEL_9;
    }

    if (deviceBiometricStyle == 2)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = v12;
      v14 = @"PROMPT_REASON_NEW_FINGERS_FORMAT_%@";
LABEL_9:
      v17 = [v12 localizedStringForKey:v14 value:&stru_2884BCFD0 table:@"Mesa"];
      nameCopy = [v11 stringWithFormat:v17, nameCopy];

LABEL_22:
      goto LABEL_37;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v21 = shouldLog | 2;
    }

    else
    {
      v21 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v23 = v21;
    }

    else
    {
      v23 = v21 & 2;
    }

    if (!v23)
    {
      goto LABEL_35;
    }

    v66 = 138543362;
    v67 = objc_opt_class();
    v24 = v67;
    v25 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: Could not determine biometric style with account name", &v66, 12);
    goto LABEL_33;
  }

  if (deviceBiometricStyle == 3)
  {
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v15;
    v16 = @"PROMPT_REASON_NEW_FACE_ANONYMOUS";
    goto LABEL_21;
  }

  if (deviceBiometricStyle == 2)
  {
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v15;
    v16 = @"PROMPT_REASON_NEW_FINGERS_ANONYMOUS";
LABEL_21:
    nameCopy = [v15 localizedStringForKey:v16 value:&stru_2884BCFD0 table:@"Mesa"];
    goto LABEL_22;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v27 = shouldLog2 | 2;
  }

  else
  {
    v27 = shouldLog2;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v28 = v27;
  }

  else
  {
    v28 = v27 & 2;
  }

  if (!v28)
  {
    goto LABEL_35;
  }

  v66 = 138543362;
  v67 = objc_opt_class();
  v24 = v67;
  v25 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: Could not determine biometric style", &v66, 12);
LABEL_33:
  v29 = v25;

  if (v29)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v29 encoding:4];
    free(v29);
    v59 = oSLogObject;
    SSFileLog();
LABEL_35:
  }

  nameCopy = 0;
LABEL_37:
  [v10 setReasonDescription:{nameCopy, v59}];
  v30 = dispatch_semaphore_create(0);
  v31 = objc_alloc_init(ISServerAuthenticationOperation);
  [(ISServerAuthenticationOperation *)v31 setAuthenticationContext:v10];
  fallbackDialog = [(ISBiometricSignatureOperation *)self fallbackDialog];
  [(ISServerAuthenticationOperation *)v31 setDialog:fallbackDialog];

  [(ISServerAuthenticationOperation *)v31 setPerformsButtonAction:0];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __112__ISBiometricSignatureOperation__promptUserToAuthenticateForIdentityMapChangeWithAccountIdentifier_accountName___block_invoke;
  v64[3] = &unk_27A670868;
  v64[4] = self;
  v33 = v30;
  v65 = v33;
  [(ISServerAuthenticationOperation *)v31 setCompletionBlock:v64];
  v34 = +[ISOperationQueue mainQueue];
  [v34 addOperation:v31];

  v35 = dispatch_time(0, 30000000000);
  if (!dispatch_semaphore_wait(v33, v35))
  {
    goto LABEL_51;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog3 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v38 = shouldLog3 | 2;
  }

  else
  {
    v38 = shouldLog3;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v40 = v38;
  }

  else
  {
    v40 = v38 & 2;
  }

  if (!v40)
  {
    goto LABEL_49;
  }

  v41 = objc_opt_class();
  v66 = 138543362;
  v67 = v41;
  v42 = v41;
  LODWORD(v61) = 12;
  v43 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &dword_275BC3000, oSLogObject2, 16, "%{public}@: Authentication challenge for invalid identity map timed out", &v66, v61);

  if (v43)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v43 encoding:4];
    free(v43);
    v60 = oSLogObject2;
    SSFileLog();
LABEL_49:
  }

LABEL_51:
  success = [(ISOperation *)v31 success];
  error = [(ISOperation *)v31 error];

  if (error)
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog4 = [mEMORY[0x277D69B38]3 shouldLog];
    if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
    {
      v48 = shouldLog4 | 2;
    }

    else
    {
      v48 = shouldLog4;
    }

    oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v50 = v48;
    }

    else
    {
      v50 = v48 & 2;
    }

    if (v50)
    {
      v51 = objc_opt_class();
      v62 = v51;
      [(ISOperation *)v31 error];
      v52 = v33;
      v53 = success;
      v54 = v10;
      v56 = v55 = nameCopy;
      v66 = 138543618;
      v67 = v51;
      v68 = 2114;
      v69 = v56;
      LODWORD(v61) = 22;
      v57 = _os_log_send_and_compose_impl(v50, 0, 0, 0, &dword_275BC3000, oSLogObject3, 16, "%{public}@: Authentication challenge for invalid identity map failed with error: %{public}@", &v66, v61);

      nameCopy = v55;
      v10 = v54;
      success = v53;
      v33 = v52;

      if (!v57)
      {
LABEL_64:

        goto LABEL_65;
      }

      oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v57 encoding:4];
      free(v57);
      SSFileLog();
    }

    goto LABEL_64;
  }

LABEL_65:

  return success;
}

intptr_t __112__ISBiometricSignatureOperation__promptUserToAuthenticateForIdentityMapChangeWithAccountIdentifier_accountName___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v9 = 138543362;
  v10 = objc_opt_class();
  v6 = v10;
  v7 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_275BC3000, v5, 0, "%{public}@: Authentication challenge for invalid identity map did complete", &v9, 12);

  if (v7)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:4];
    free(v7);
    SSFileLog();
LABEL_12:
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

@end
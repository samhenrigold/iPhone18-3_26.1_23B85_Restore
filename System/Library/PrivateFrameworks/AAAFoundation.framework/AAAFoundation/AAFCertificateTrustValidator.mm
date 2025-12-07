@interface AAFCertificateTrustValidator
- (BOOL)_checkPinningPolicy:(id)policy type:(unint64_t)type;
- (BOOL)_trySSLPinning:(id)pinning;
- (__SecPolicy)_policyForType:(unint64_t)type host:(id)host;
- (int64_t)validateCertificateTrustWithChallenge:(id)challenge type:(unint64_t)type;
@end

@implementation AAFCertificateTrustValidator

- (int64_t)validateCertificateTrustWithChallenge:(id)challenge type:(unint64_t)type
{
  v20 = *MEMORY[0x1E69E9840];
  protectionSpace = [challenge protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v8 = [authenticationMethod isEqualToString:*MEMORY[0x1E696A968]];

  v10 = _AAFLogSystem(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (!v11)
    {
      goto LABEL_11;
    }

    LOWORD(v18) = 0;
    v13 = "Unsupported authentication method detected, proceed with default handling.";
LABEL_9:
    v14 = v10;
    v15 = 2;
    goto LABEL_10;
  }

  if (v11)
  {
    v18 = 134217984;
    typeCopy2 = type;
    _os_log_impl(&dword_1C8644000, v10, OS_LOG_TYPE_DEFAULT, "Validating certificate trust for type %lu.", &v18, 0xCu);
  }

  v12 = [(AAFCertificateTrustValidator *)self _checkPinningPolicy:protectionSpace type:type];
  if (v12)
  {
    v10 = _AAFLogSystem(v12);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      typeCopy2 = type;
      v13 = "Certificate type %lu is trusted.";
      v14 = v10;
      v15 = 12;
LABEL_10:
      _os_log_impl(&dword_1C8644000, v14, OS_LOG_TYPE_DEFAULT, v13, &v18, v15);
    }

LABEL_11:
    v16 = 1;
    goto LABEL_12;
  }

  if (type)
  {
    v12 = [(AAFCertificateTrustValidator *)self _trySSLPinning:protectionSpace];
    if (v12)
    {
      v10 = _AAFLogSystem(v12);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      LOWORD(v18) = 0;
      v13 = "SSL Certificate is trusted.";
      goto LABEL_9;
    }
  }

  v10 = _AAFLogSystem(v12);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    v16 = 2;
    _os_log_impl(&dword_1C8644000, v10, OS_LOG_TYPE_DEFAULT, "Server cert validity check failed!", &v18, 2u);
  }

  else
  {
    v16 = 2;
  }

LABEL_12:

  return v16;
}

- (BOOL)_checkPinningPolicy:(id)policy type:(unint64_t)type
{
  policyCopy = policy;
  serverTrust = [policyCopy serverTrust];
  host = [policyCopy host];

  v9 = [(AAFCertificateTrustValidator *)self _policyForType:type host:host];
  if (!v9)
  {
    v14 = _AAFLogSystem(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AAFCertificateTrustValidator _checkPinningPolicy:v14 type:?];
    }

    goto LABEL_9;
  }

  v10 = v9;
  v11 = SecTrustSetPolicies(serverTrust, v9);
  if (v11)
  {
    v12 = SecCopyErrorMessageString(v11, 0);
    v13 = _AAFLogSystem(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AAFCertificateTrustValidator _checkPinningPolicy:v12 type:v13];
    }

    CFRelease(v10);
LABEL_9:
    v15 = 0;
    goto LABEL_15;
  }

  error = 0;
  v16 = SecTrustEvaluateWithError(serverTrust, &error);
  v15 = v16;
  if (error)
  {
    v17 = _AAFLogSystem(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AAFCertificateTrustValidator _checkPinningPolicy:v17 type:?];
    }

    CFRelease(error);
    error = 0;
  }

  CFRelease(v10);
LABEL_15:

  return v15;
}

- (__SecPolicy)_policyForType:(unint64_t)type host:(id)host
{
  hostCopy = host;
  switch(type)
  {
    case 0uLL:
      SSL = SecPolicyCreateSSL(1u, hostCopy);
      goto LABEL_7;
    case 2uLL:
      SSL = SecPolicyCreateAppleiCloudSetupService();
      goto LABEL_7;
    case 1uLL:
      SSL = SecPolicyCreateAppleGSService();
LABEL_7:
      v4 = SSL;
      break;
  }

  return v4;
}

- (BOOL)_trySSLPinning:(id)pinning
{
  pinningCopy = pinning;
  if (+[AFUtilities isInternalBuild]&& (AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AAFDisableCertPinning", @"com.apple.AAAFoundation", 0), AppBooleanValue))
  {
    v6 = _AAFLogSystem(AppBooleanValue);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C8644000, v6, OS_LOG_TYPE_DEFAULT, "Standard pinning is diabled, falling back to SSL pinning.", v9, 2u);
    }

    v7 = [(AAFCertificateTrustValidator *)self _checkPinningPolicy:pinningCopy type:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_checkPinningPolicy:(uint64_t)a1 type:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C8644000, a2, OS_LOG_TYPE_ERROR, "Error setting trust policy: %@", &v2, 0xCu);
}

- (void)_checkPinningPolicy:(uint64_t *)a1 type:(NSObject *)a2 .cold.2(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1C8644000, a2, OS_LOG_TYPE_ERROR, "Error evaluating certificate trust: %@", &v3, 0xCu);
}

@end
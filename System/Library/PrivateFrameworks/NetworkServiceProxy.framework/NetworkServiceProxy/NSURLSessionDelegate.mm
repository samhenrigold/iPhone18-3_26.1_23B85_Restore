@interface NSURLSessionDelegate
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
@end

@implementation NSURLSessionDelegate

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v62 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  challengeCopy = challenge;
  handlerCopy = handler;
  v11 = nplog_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sessionDescription = [sessionCopy sessionDescription];
    protectionSpace = [challengeCopy protectionSpace];
    *buf = 138412546;
    v57 = sessionDescription;
    v58 = 2048;
    serverTrust = [protectionSpace serverTrust];
    _os_log_debug_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_DEBUG, "Received an authentication challenge for %@, serverTrust = %p", buf, 0x16u);
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  serverTrust2 = [protectionSpace2 serverTrust];

  if (!serverTrust2)
  {
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_41;
  }

  protectionSpace3 = [challengeCopy protectionSpace];
  serverTrust3 = [protectionSpace3 serverTrust];

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v17 = Mutable;
    leafOID = [(NSURLSessionDelegate *)self leafOID];

    if (leafOID)
    {
      v19 = nplog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sessionDescription2 = [sessionCopy sessionDescription];
        validationHostname = [(NSURLSessionDelegate *)self validationHostname];
        leafOID2 = [(NSURLSessionDelegate *)self leafOID];
        *buf = 138412802;
        v57 = sessionDescription2;
        v58 = 2112;
        serverTrust = validationHostname;
        v60 = 2112;
        v61 = leafOID2;
        _os_log_debug_impl(&dword_1AE7E2000, v19, OS_LOG_TYPE_DEBUG, "Creating a pinning policy with name %@, hostname %@, and leaf OID %@", buf, 0x20u);
      }

      sessionDescription3 = [sessionCopy sessionDescription];
      validationHostname2 = [(NSURLSessionDelegate *)self validationHostname];
      leafOID3 = [(NSURLSessionDelegate *)self leafOID];
      AppleSSLPinned = SecPolicyCreateAppleSSLPinned();

      if (!AppleSSLPinned)
      {
        v40 = nplog_obj();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sessionDescription4 = [sessionCopy sessionDescription];
          validationHostname3 = [(NSURLSessionDelegate *)self validationHostname];
          leafOID4 = [(NSURLSessionDelegate *)self leafOID];
          *buf = 138412802;
          v57 = sessionDescription4;
          v58 = 2112;
          serverTrust = validationHostname3;
          v60 = 2112;
          v61 = leafOID4;
          _os_log_error_impl(&dword_1AE7E2000, v40, OS_LOG_TYPE_ERROR, "Failed to create a pinning policy from name %@, hostname %@, and OID %@", buf, 0x20u);
        }

        goto LABEL_40;
      }

      CFArrayAppendValue(v17, AppleSSLPinned);
      CFRelease(AppleSSLPinned);
    }

    else
    {
      validationHostname4 = [(NSURLSessionDelegate *)self validationHostname];

      if (validationHostname4)
      {
        validationHostname5 = [(NSURLSessionDelegate *)self validationHostname];
        protectionSpace4 = [challengeCopy protectionSpace];
        host = [protectionSpace4 host];
        v29 = [host isEqualToString:@"gateway.icloud.com"];

        if (v29)
        {

          validationHostname5 = @"gateway.icloud.com";
        }

        v30 = nplog_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v57 = validationHostname5;
          _os_log_debug_impl(&dword_1AE7E2000, v30, OS_LOG_TYPE_DEBUG, "Creating a server trust policy with hostname %@", buf, 0xCu);
        }

        SSL = SecPolicyCreateSSL(1u, validationHostname5);
        if (!SSL)
        {
          v46 = nplog_obj();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v57 = validationHostname5;
            _os_log_error_impl(&dword_1AE7E2000, v46, OS_LOG_TYPE_ERROR, "Failed to create a SSL policy from hostname %@", buf, 0xCu);
          }

          handlerCopy[2](handlerCopy, 3, 0);
          CFRelease(v17);

          goto LABEL_41;
        }

        v32 = SSL;
        CFArrayAppendValue(v17, SSL);
        CFRelease(v32);
      }
    }

    if ([(NSURLSessionDelegate *)self revocationFailClosed])
    {
      v33 = nplog_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1AE7E2000, v33, OS_LOG_TYPE_DEBUG, "Creating a policy to require revocation check success", buf, 2u);
      }

      Revocation = SecPolicyCreateRevocation(0x18uLL);
      if (!Revocation)
      {
        v38 = nplog_obj();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1AE7E2000, v38, OS_LOG_TYPE_ERROR, "Failed to create a revocation policy", buf, 2u);
        }

        goto LABEL_39;
      }

      v35 = Revocation;
      CFArrayAppendValue(v17, Revocation);
      CFRelease(v35);
    }

    v36 = SecTrustSetPolicies(serverTrust3, v17);
    if (v36)
    {
      v37 = v36;
      v38 = nplog_obj();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sessionDescription5 = [sessionCopy sessionDescription];
        *buf = 138412546;
        v57 = sessionDescription5;
        v58 = 1024;
        LODWORD(serverTrust) = v37;
        _os_log_error_impl(&dword_1AE7E2000, v38, OS_LOG_TYPE_ERROR, "Failed to set the trust policies for %@: %d", buf, 0x12u);
      }

LABEL_39:

LABEL_40:
      handlerCopy[2](handlerCopy, 3, 0);
      CFRelease(v17);
      goto LABEL_41;
    }

    result[0] = MEMORY[0x1E69E9820];
    result[1] = 3221225472;
    result[2] = __73__NSURLSessionDelegate_URLSession_didReceiveChallenge_completionHandler___block_invoke;
    result[3] = &unk_1E7A31040;
    result[4] = self;
    v54 = sessionCopy;
    v41 = handlerCopy;
    v55 = v41;
    v42 = SecTrustEvaluateAsyncWithError(serverTrust3, MEMORY[0x1E69E96A0], result);
    CFRelease(v17);
    if (v42)
    {
      v43 = nplog_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v57) = v42;
        _os_log_error_impl(&dword_1AE7E2000, v43, OS_LOG_TYPE_ERROR, "SecTrustEvaluateAsync returned an error: %d", buf, 8u);
      }

      v41[2](v41, 1, 0);
    }
  }

  else
  {
    v24 = nplog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v24, OS_LOG_TYPE_ERROR, "Failed to create an array to hold policies", buf, 2u);
    }

    handlerCopy[2](handlerCopy, 3, 0);
  }

LABEL_41:
}

void __73__NSURLSessionDelegate_URLSession_didReceiveChallenge_completionHandler___block_invoke(uint64_t a1, __SecTrust *a2, int a3, NSObject *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = nplog_obj();
  v9 = v8;
  if (a3)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_INFO, "SecTrustEvaluateAsyncWithError success", buf, 2u);
    }

    result = kSecTrustResultInvalid;
    if (SecTrustGetTrustResult(a2, &result) || result != kSecTrustResultUnspecified && result != kSecTrustResultProceed)
    {
      v9 = nplog_obj();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      v10 = [*(a1 + 40) sessionDescription];
      *buf = 138412546;
      v22 = v10;
      v23 = 1024;
      LODWORD(v24) = result;
      _os_log_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_DEFAULT, "%@ TLS certificate failed validation with result %d", buf, 0x12u);
      goto LABEL_7;
    }

    if (![*(a1 + 32) enableExtendedValidation])
    {
      v9 = nplog_obj();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }

      v11 = [*(a1 + 40) sessionDescription];
      *buf = 138412290;
      v22 = v11;
      _os_log_debug_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_DEBUG, "Extended validation for %@ is not enabled", buf, 0xCu);
      goto LABEL_13;
    }

    v9 = SecTrustCopyResult(a2);
    v14 = nplog_obj();
    v10 = v14;
    if (v9)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v19 = [*(a1 + 40) sessionDescription];
        *buf = 138412546;
        v22 = v19;
        v23 = 2112;
        v24 = v9;
        _os_log_debug_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEBUG, "Got trust result info for %@: %@", buf, 0x16u);
      }

      v15 = [v9 objectForKeyedSubscript:*MEMORY[0x1E697B338]];

      if (v15)
      {
        v16 = CFGetTypeID(v15);
        if (v16 == CFBooleanGetTypeID())
        {
          if (CFBooleanGetValue(v15))
          {
            goto LABEL_14;
          }
        }
      }

      v10 = nplog_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v17 = [*(a1 + 40) sessionDescription];
      *buf = 138412290;
      v22 = v17;
      v18 = "%@ TLS certificate failed extended validation";
    }

    else
    {
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_7:

        goto LABEL_10;
      }

      v17 = [*(a1 + 40) sessionDescription];
      *buf = 138412290;
      v22 = v17;
      v18 = "Failed to get validation results for %@ TLS certificate";
    }

    _os_log_error_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);

    goto LABEL_7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v22 = a4;
    _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "SecTrustEvaluateAsyncWithError failed with %@", buf, 0xCu);
  }

LABEL_10:

  if ([*(a1 + 32) ignoreInvalidCerts])
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:

      v12 = *(a1 + 48);
      v13 = [MEMORY[0x1E696AF30] credentialForTrust:a2];
      (*(v12 + 16))(v12, 0, v13);

      return;
    }

    v11 = [*(a1 + 40) sessionDescription];
    *buf = 138412290;
    v22 = v11;
    _os_log_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring invalid %@ TLS cert", buf, 0xCu);
LABEL_13:

    goto LABEL_14;
  }

  (*(*(a1 + 48) + 16))();
}

@end
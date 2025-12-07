@interface CLCertificatePinningHelper
+ (int)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
+ (void)initialize;
@end

@implementation CLCertificatePinningHelper

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[CLCertificatePinningHelper initialize];
  }
}

id __40__CLCertificatePinningHelper_initialize__block_invoke()
{
  v2[10] = *MEMORY[0x277D85DE8];
  v1[0] = @"gsp10-ssl.apple.com";
  v2[0] = [MEMORY[0x277CBEB68] null];
  v1[1] = @"gs-loc.apple.com";
  v2[1] = [MEMORY[0x277CBEB68] null];
  v2[2] = @"1.2.840.113635.100.6.27.35";
  v1[2] = @"iphone-ld.apple.com";
  v1[3] = @"configuration.apple.com";
  v2[3] = [MEMORY[0x277CBEB68] null];
  v1[4] = @"cl5.apple.com";
  v2[4] = [MEMORY[0x277CBEB68] null];
  v1[5] = @"cl4.apple.com";
  v2[5] = [MEMORY[0x277CBEB68] null];
  v1[6] = @"cl3.apple.com";
  v2[6] = [MEMORY[0x277CBEB68] null];
  v1[7] = @"cl2.apple.com";
  v2[7] = [MEMORY[0x277CBEB68] null];
  v1[8] = @"ingest.apple-studies.com";
  v2[8] = [MEMORY[0x277CBEB68] null];
  v1[9] = @"ingest.stg.apple-studies.com";
  v2[9] = [MEMORY[0x277CBEB68] null];
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v2 forKeys:v1 count:10];
  sLeafOIDs = result;
  return result;
}

+ (int)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v45 = *MEMORY[0x277D85DE8];
  protectionSpace = [objc_msgSend(challenge protectionSpace];
  if (![protectionSpace isEqualToString:*MEMORY[0x277CBAB00]])
  {
    goto LABEL_18;
  }

  v8 = [objc_msgSend(challenge "protectionSpace")];
  v9 = [objc_msgSend(challenge "protectionSpace")];
  v10 = [sLeafOIDs objectForKeyedSubscript:v8];
  if (v10)
  {
    v11 = v10;
    if (v10 == [MEMORY[0x277CBEB68] null])
    {
      if (onceToken_Utility_Default != -1)
      {
        +[CLCertificatePinningHelper URLSession:didReceiveChallenge:completionHandler:];
      }

      v21 = logObject_Utility_Default;
      if (!os_log_type_enabled(logObject_Utility_Default, OS_LOG_TYPE_INFO))
      {
        v17 = 3;
        goto LABEL_21;
      }

      *buf = 68289283;
      v38 = 0;
      v39 = 2082;
      v40 = &unk_245B71571;
      v41 = 2081;
      uTF8String = [v8 UTF8String];
      _os_log_impl(&dword_245B6E000, v21, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Warning Empty pinning rule for host, host:%{private, location:escape_only}s}", buf, 0x1Cu);
      v17 = 3;
      goto LABEL_19;
    }

    AppleSSLPinned = SecPolicyCreateAppleSSLPinned();
    if (AppleSSLPinned)
    {
      v13 = AppleSSLPinned;
      v14 = SecTrustSetPolicies(v9, AppleSSLPinned);
      CFRelease(v13);
      v15 = kSecTrustResultInvalid;
      result = kSecTrustResultInvalid;
      if (v14)
      {
LABEL_8:
        if (v15 == kSecTrustResultProceed || v15 == kSecTrustResultUnspecified)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

LABEL_19:
        if (onceToken_Utility_Default != -1)
        {
          +[CLCertificatePinningHelper URLSession:didReceiveChallenge:completionHandler:];
        }

        goto LABEL_21;
      }

      err = 0;
      if (SecTrustEvaluateWithError(v9, &err))
      {
        SecTrustGetTrustResult(v9, &result);
        v15 = result;
        goto LABEL_8;
      }

      if (onceToken_Utility_Default != -1)
      {
        +[CLCertificatePinningHelper URLSession:didReceiveChallenge:completionHandler:];
      }

      v29 = logObject_Utility_Default;
      if (os_log_type_enabled(logObject_Utility_Default, OS_LOG_TYPE_ERROR))
      {
        Code = CFErrorGetCode(err);
        Domain = CFErrorGetDomain(err);
        *buf = 68289539;
        v38 = 0;
        v39 = 2082;
        v40 = &unk_245B71571;
        v41 = 2049;
        uTF8String = Code;
        v43 = 2113;
        uTF8String2 = Domain;
        _os_log_impl(&dword_245B6E000, v29, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Can't SecTrustEvaluate returned the error, errorCode:%{private}ld, error:%{private, location:escape_only}@}", buf, 0x26u);
        if (onceToken_Utility_Default != -1)
        {
          +[CLCertificatePinningHelper URLSession:didReceiveChallenge:completionHandler:];
        }
      }

      v32 = logObject_Utility_Default;
      if (!os_signpost_enabled(logObject_Utility_Default))
      {
LABEL_50:
        v17 = 2;
        goto LABEL_19;
      }

      v33 = CFErrorGetCode(err);
      v34 = CFErrorGetDomain(err);
      *buf = 68289539;
      v38 = 0;
      v39 = 2082;
      v40 = &unk_245B71571;
      v41 = 2049;
      uTF8String = v33;
      v43 = 2113;
      uTF8String2 = v34;
      v26 = "Can't SecTrustEvaluate returned the error";
      v27 = "{msg%{public}.0s:Can't SecTrustEvaluate returned the error, errorCode:%{private}ld, error:%{private, location:escape_only}@}";
      v28 = v32;
    }

    else
    {
      if (onceToken_Utility_Default != -1)
      {
        +[CLCertificatePinningHelper URLSession:didReceiveChallenge:completionHandler:];
      }

      v22 = logObject_Utility_Default;
      if (os_log_type_enabled(logObject_Utility_Default, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289538;
        v38 = 0;
        v39 = 2082;
        v40 = &unk_245B71571;
        v41 = 2082;
        uTF8String = [v8 UTF8String];
        v43 = 2082;
        uTF8String2 = [v11 UTF8String];
        _os_log_impl(&dword_245B6E000, v22, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to create a security policy, host:%{public, location:escape_only}s, leafOID:%{public, location:escape_only}s}", buf, 0x26u);
        if (onceToken_Utility_Default != -1)
        {
          +[CLCertificatePinningHelper URLSession:didReceiveChallenge:completionHandler:];
        }
      }

      v23 = logObject_Utility_Default;
      if (!os_signpost_enabled(logObject_Utility_Default))
      {
        v17 = 2;
        goto LABEL_21;
      }

      uTF8String3 = [v8 UTF8String];
      uTF8String4 = [v11 UTF8String];
      *buf = 68289538;
      v38 = 0;
      v39 = 2082;
      v40 = &unk_245B71571;
      v41 = 2082;
      uTF8String = uTF8String3;
      v43 = 2082;
      uTF8String2 = uTF8String4;
      v26 = "Unable to create a security policy";
      v27 = "{msg%{public}.0s:Unable to create a security policy, host:%{public, location:escape_only}s, leafOID:%{public, location:escape_only}s}";
      v28 = v23;
    }

    _os_signpost_emit_with_name_impl(&dword_245B6E000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v26, v27, buf, 0x26u);
    goto LABEL_50;
  }

  if (onceToken_Utility_Default != -1)
  {
    +[CLCertificatePinningHelper URLSession:didReceiveChallenge:completionHandler:];
  }

  v18 = logObject_Utility_Default;
  v17 = 0;
  if (os_log_type_enabled(logObject_Utility_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v38 = 0;
    v39 = 2082;
    v40 = &unk_245B71571;
    v41 = 2081;
    uTF8String = [v8 UTF8String];
    _os_log_impl(&dword_245B6E000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning No pinning rule for host, host:%{private, location:escape_only}s}", buf, 0x1Cu);
LABEL_18:
    v17 = 0;
    goto LABEL_19;
  }

LABEL_21:
  v19 = logObject_Utility_Default;
  if (os_log_type_enabled(logObject_Utility_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v38 = 0;
    v39 = 2082;
    v40 = &unk_245B71571;
    v41 = 2049;
    uTF8String = v17;
    _os_log_impl(&dword_245B6E000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#VerifyHost result, result:%{private}lu}", buf, 0x1Cu);
  }

  if (v17 == 2)
  {
    (*(handler + 2))(handler, 2, 0);
  }

  else if (v17 == 1)
  {
    (*(handler + 2))(handler, 0, [MEMORY[0x277CBAB80] credentialForTrust:{objc_msgSend(objc_msgSend(challenge, "protectionSpace"), "serverTrust")}]);
  }

  else
  {
    (*(handler + 2))(handler, 1, 0);
  }

  return v17;
}

@end
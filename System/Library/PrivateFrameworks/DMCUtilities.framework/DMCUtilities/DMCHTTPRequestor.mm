@interface DMCHTTPRequestor
+ (BOOL)_parsePairingTokenMissingErrorWithMessage:(id)message details:(id)details outError:(id *)error;
+ (BOOL)_parsePlatformSSORequiredErrorWithMessage:(id)message details:(id)details outError:(id *)error;
+ (BOOL)_parseSoftwareUpdateRequiredErrorWithMessage:(id)message details:(id)details outError:(id *)error;
+ (BOOL)_parseUnrecognizedDeviceErrorWithMessage:(id)message details:(id)details outError:(id *)error;
+ (BOOL)_parseWellKnownFailedErrorWithMessage:(id)message details:(id)details outError:(id *)error;
+ (BOOL)parse403ErrorWithResponseDictionary:(id)dictionary outError:(id *)error;
+ (BOOL)parsePredefined403ErrorWithResponseDictionary:(id)dictionary outError:(id *)error;
+ (id)_getServerErrorCodeFromResponseDictionary:(id)dictionary;
+ (id)_getServerErrorDetailsFromResponseDictionary:(id)dictionary;
+ (id)_getServerErrorMessageFromResponseDictionary:(id)dictionary;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)startWithRequest:(id)request username:(id)username password:(id)password anchorCertificateRefs:(id)refs completionBlock:(id)block;
@end

@implementation DMCHTTPRequestor

- (void)startWithRequest:(id)request username:(id)username password:(id)password anchorCertificateRefs:(id)refs completionBlock:(id)block
{
  v52 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  blockCopy = block;
  refsCopy = refs;
  passwordCopy = password;
  [(DMCHTTPRequestor *)self setUsername:username];
  [(DMCHTTPRequestor *)self setPassword:passwordCopy];

  [(DMCHTTPRequestor *)self setAnchorCertificateRefs:refsCopy];
  [(DMCHTTPRequestor *)self setSelfReference:self];
  [(DMCHTTPRequestor *)self setDidFailDueToMissingCredentials:0];
  [(DMCHTTPRequestor *)self setDidFailDueToCertNotTrusted:0];
  v16 = [requestCopy valueForHTTPHeaderField:@"User-Agent"];

  if (!v16)
  {
    [requestCopy setValue:@"DeviceManagementClient/1.0" forHTTPHeaderField:@"User-Agent"];
  }

  ephemeralSessionConfiguration = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
  [ephemeralSessionConfiguration setRequestCachePolicy:1];
  [ephemeralSessionConfiguration setTimeoutIntervalForRequest:90.0];
  [ephemeralSessionConfiguration setTLSMinimumSupportedProtocolVersion:771];
  authenticator = [(DMCHTTPRequestor *)self authenticator];

  if (authenticator)
  {
    authenticator2 = [(DMCHTTPRequestor *)self authenticator];
    v47 = 0;
    v20 = [authenticator2 authenticateRequest:requestCopy error:&v47];
    v21 = v47;

    if ((v20 & 1) == 0)
    {
      v24 = *DMCLogObjects(v22, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy2 = v21;
        _os_log_impl(&dword_1B1630000, v24, OS_LOG_TYPE_ERROR, "Failed to authenticate request with error: %{public}@", buf, 0xCu);
      }
    }
  }

  v25 = [MEMORY[0x1E696AF78] sessionWithConfiguration:ephemeralSessionConfiguration delegate:self delegateQueue:0];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __93__DMCHTTPRequestor_startWithRequest_username_password_anchorCertificateRefs_completionBlock___block_invoke;
  v43[3] = &unk_1E7ADCB48;
  v26 = requestCopy;
  v44 = v26;
  selfCopy = self;
  v27 = blockCopy;
  v46 = v27;
  v28 = [v25 dataTaskWithRequest:v26 completionHandler:v43];
  authenticator3 = [(DMCHTTPRequestor *)self authenticator];
  v30 = objc_opt_respondsToSelector();

  if (v30)
  {
    authenticator4 = [(DMCHTTPRequestor *)self authenticator];
    v42 = 0;
    v34 = [authenticator4 prepareTask:v28 error:&v42];
    v35 = v42;

    if ((v34 & 1) == 0)
    {
      v38 = *DMCLogObjects(v36, v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy2 = v35;
        _os_log_impl(&dword_1B1630000, v38, OS_LOG_TYPE_ERROR, "Failed to prepare task with error: %{public}@", buf, 0xCu);
      }
    }
  }

  v39 = *DMCLogObjects(v31, v32);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = v39;
    v41 = [v26 URL];
    *buf = 138543618;
    selfCopy2 = self;
    v50 = 2114;
    v51 = v41;
    _os_log_impl(&dword_1B1630000, v40, OS_LOG_TYPE_INFO, "%{public}@ Starting request to %{public}@", buf, 0x16u);
  }

  [v28 resume];
}

void __93__DMCHTTPRequestor_startWithRequest_username_password_anchorCertificateRefs_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [DMCHTTPLog logHTTPDetailsForIdentifier:@"Logs" request:*(a1 + 32) response:v8 responseData:v7 responseError:v9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = v11;
  if (v11 && [v11 statusCode] == 403 && (objc_msgSend(v12, "MIMEType"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"application/json"), v13, v14))
  {
    v16 = [DMCHTTPRequestor jsonDictFromResponse:v7];
    if (v16)
    {
      v62 = v9;
      [DMCHTTPRequestor parse403ErrorWithResponseDictionary:v16 outError:&v62];
      v17 = v62;

      v9 = v17;
    }

    else
    {
      v61 = *DMCLogObjects(0, v15);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1630000, v61, OS_LOG_TYPE_DEBUG, "Response from server could not be deserialized.", buf, 2u);
      }
    }
  }

  else
  {
    if ([*(a1 + 40) didFailDueToMissingCredentials])
    {
      v25 = MEMORY[0x1E696ABC0];
      v26 = DMCErrorArray(@"HTTP_INVALID_USERNAME_PASSWORD", v18, v19, v20, v21, v22, v23, v24, 0);
      v27 = [v25 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23003 descriptionArray:v26 underlyingError:v9 errorType:@"DMCFatalError"];

      if (v12)
      {
        v28 = [v12 statusCode];
        if (v28 == 401)
        {
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
          v31 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
          v32 = [v30 stringByTrimmingCharactersInSet:v31];

          if ([v32 length])
          {
            v33 = [v27 userInfo];
            v34 = [v33 mutableCopy];

            [v34 setObject:v32 forKeyedSubscript:@"loginPrompt"];
            v35 = MEMORY[0x1E696ABC0];
            v36 = [v27 domain];
            v37 = [v35 errorWithDomain:v36 code:objc_msgSend(v27 userInfo:{"code"), v34}];

            v27 = v37;
          }
        }
      }
    }

    else
    {
      v28 = [*(a1 + 40) didFailDueToCertNotTrusted];
      if (!v28)
      {
        goto LABEL_18;
      }

      v38 = MEMORY[0x1E696ABC0];
      v39 = [*(a1 + 32) URL];
      v47 = DMCErrorArray(@"HTTP_ERROR_INVALID_SERVER_CERT_P_URL_%@", v40, v41, v42, v43, v44, v45, v46, v39);
      v27 = [v38 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23002 descriptionArray:v47 errorType:@"DMCFatalError"];
    }

    v9 = v27;
  }

LABEL_18:
  v48 = *DMCLogObjects(v28, v29);
  if (v9)
  {
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v49 = *(a1 + 40);
    v50 = v48;
    v51 = [v9 DMCVerboseDescription];
    *buf = 138543618;
    v64 = v49;
    v65 = 2114;
    v66 = v51;
    _os_log_impl(&dword_1B1630000, v50, OS_LOG_TYPE_ERROR, "%{public}@ failed to communicate with the MDM server. Error: %{public}@", buf, 0x16u);

    goto LABEL_25;
  }

  v52 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);
  if (v52)
  {
    v54 = MEMORY[0x1E696AEC0];
    v55 = v48;
    v56 = [[v54 alloc] initWithData:v7 encoding:4];
    *buf = 138543362;
    v64 = v56;
    _os_log_impl(&dword_1B1630000, v55, OS_LOG_TYPE_INFO, "%{public}@", buf, 0xCu);
  }

  v57 = *DMCLogObjects(v52, v53);
  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
  {
    v58 = *(a1 + 40);
    v50 = v57;
    v59 = [v7 length];
    *buf = 138543618;
    v64 = v58;
    v65 = 2048;
    v66 = v59;
    _os_log_impl(&dword_1B1630000, v50, OS_LOG_TYPE_INFO, "%{public}@ finished communicating. Received %lu bytes.", buf, 0x16u);
LABEL_25:
  }

LABEL_26:
  v60 = *(a1 + 48);
  if (v60)
  {
    (*(v60 + 16))(v60, v7, v8, v9);
  }

  [*(a1 + 40) setSelfReference:0];
}

+ (id)_getServerErrorMessageFromResponseDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"message"];
  if ([v3 length])
  {
    v5 = v3;
  }

  else
  {
    v6 = *DMCLogObjects(0, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B1630000, v6, OS_LOG_TYPE_ERROR, "Server response did not contain message key.", v8, 2u);
    }

    v5 = &stru_1F2860120;
  }

  return v5;
}

+ (id)_getServerErrorCodeFromResponseDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"code"];
  if ([v3 length])
  {
    v5 = v3;
  }

  else
  {
    v6 = *DMCLogObjects(0, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B1630000, v6, OS_LOG_TYPE_ERROR, "Server response did not contain error key.", v8, 2u);
    }

    v5 = &stru_1F2860120;
  }

  return v5;
}

+ (id)_getServerErrorDetailsFromResponseDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"details"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) != 0 && (isKindOfClass = [v3 count]) != 0)
  {
    v6 = v3;
  }

  else
  {
    v7 = *DMCLogObjects(isKindOfClass, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_ERROR, "Server response did not contain error details.", v9, 2u);
    }

    v6 = MEMORY[0x1E695E0F8];
  }

  return v6;
}

+ (BOOL)parse403ErrorWithResponseDictionary:(id)dictionary outError:(id *)error
{
  dictionaryCopy = dictionary;
  if (![DMCHTTPRequestor parsePredefined403ErrorWithResponseDictionary:dictionaryCopy outError:error])
  {
    v7 = [DMCHTTPRequestor _getServerErrorMessageFromResponseDictionary:dictionaryCopy];
    if ([v7 length])
    {
      if (!error)
      {
        v6 = 1;
        goto LABEL_12;
      }

      v15 = MEMORY[0x1E696ABC0];
      v16 = DMCErrorArray(@"HTTP_ERROR_403_RESPONSE_FROM_SERVER_WITH_MESSAGE_%@", v8, v9, v10, v11, v12, v13, v14, v7);
      *error = [v15 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23004 descriptionArray:v16 errorType:@"DMCFatalError"];
    }

    else
    {
      v16 = [DMCHTTPRequestor _getServerErrorCodeFromResponseDictionary:dictionaryCopy];
      v17 = [v16 length];
      v6 = v17 != 0;
      if (!error || !v17)
      {
        goto LABEL_10;
      }

      v25 = MEMORY[0x1E696ABC0];
      v26 = DMCErrorArray(@"HTTP_ERROR_403_RESPONSE_FROM_SERVER_NO_MESSAGE_%@", v18, v19, v20, v21, v22, v23, v24, v16);
      *error = [v25 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23005 descriptionArray:v26 errorType:@"DMCFatalError"];
    }

    v6 = 1;
LABEL_10:

LABEL_12:
    goto LABEL_13;
  }

  v6 = 1;
LABEL_13:

  return v6;
}

+ (BOOL)parsePredefined403ErrorWithResponseDictionary:(id)dictionary outError:(id *)error
{
  dictionaryCopy = dictionary;
  v7 = [self _getServerErrorCodeFromResponseDictionary:dictionaryCopy];
  v8 = [self _getServerErrorMessageFromResponseDictionary:dictionaryCopy];
  v9 = [self _getServerErrorDetailsFromResponseDictionary:dictionaryCopy];

  if ([v7 isEqualToString:@"com.apple.softwareupdate.required"])
  {
    v10 = [self _parseSoftwareUpdateRequiredErrorWithMessage:v8 details:v9 outError:error];
  }

  else if ([v7 isEqualToString:@"com.apple.watch.pairing.token.missing"])
  {
    v10 = [self _parsePairingTokenMissingErrorWithMessage:v8 details:v9 outError:error];
  }

  else if ([v7 isEqualToString:@"com.apple.unrecognized.device"])
  {
    v10 = [self _parseUnrecognizedDeviceErrorWithMessage:v8 details:v9 outError:error];
  }

  else if ([v7 isEqualToString:@"com.apple.well-known.failed"])
  {
    v10 = [self _parseWellKnownFailedErrorWithMessage:v8 details:v9 outError:error];
  }

  else
  {
    if (![v7 isEqualToString:@"com.apple.psso.required"])
    {
      v11 = 0;
      goto LABEL_12;
    }

    v10 = [self _parsePlatformSSORequiredErrorWithMessage:v8 details:v9 outError:error];
  }

  v11 = v10;
LABEL_12:

  return v11;
}

+ (BOOL)_parsePairingTokenMissingErrorWithMessage:(id)message details:(id)details outError:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v8 = [details objectForKeyedSubscript:@"security-token"];
  v16 = [v8 length];
  if (v16)
  {
    if (error)
    {
      v23 = MEMORY[0x1E696ABC0];
      v17 = DMCErrorArray(@"HTTP_ERROR_403_RESPONSE_PAIRING_TOKEN_MISSING_%@", v9, v10, v11, v12, v13, v14, v15, messageCopy);
      v27 = @"PairingParameters";
      v25[0] = @"SecurityToken";
      v25[1] = @"WatchUDID";
      v26[0] = v8;
      v18 = +[DMCMobileGestalt deviceUDID];
      v26[1] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
      v28[0] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      *error = [v23 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23007 descriptionArray:v17 suggestion:0 USEnglishSuggestion:0 underlyingError:0 errorType:@"DMCFatalError" addtionalUserInfo:v20];
    }
  }

  else
  {
    v21 = *DMCLogObjects(0, v9);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v21, OS_LOG_TYPE_ERROR, "Response from server does not contain security-token key.", buf, 2u);
    }
  }

  return v16 != 0;
}

+ (BOOL)_parseSoftwareUpdateRequiredErrorWithMessage:(id)message details:(id)details outError:(id *)error
{
  detailsCopy = details;
  v8 = [detailsCopy count];
  if (v8)
  {
    v9 = objc_opt_new();
    [v9 setObject:detailsCopy forKeyedSubscript:@"SoftwareUpdateInfo"];
    if (error)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = DMCErrorArray(@"HTTP_ERROR_403_RESPONSE_SOFTWARE_UPDATE_REQUIRED", v10, v11, v12, v13, v14, v15, v16, 0);
      v19 = [v9 copy];
      *error = [v17 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23006 descriptionArray:v18 suggestion:0 USEnglishSuggestion:0 underlyingError:0 errorType:@"DMCFatalError" addtionalUserInfo:v19];
    }
  }

  else
  {
    v20 = *DMCLogObjects(0, v7);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v20, OS_LOG_TYPE_ERROR, "Response from server does not contain valid details dict.", buf, 2u);
    }
  }

  return v8 != 0;
}

+ (BOOL)_parseUnrecognizedDeviceErrorWithMessage:(id)message details:(id)details outError:(id *)error
{
  if (error)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = DMCErrorArray(@"HTTP_ERROR_403_RESPONSE_UNRECOGNIZED_DEVICE", a2, message, details, error, v5, v6, v7, 0);
    *error = [v9 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23008 descriptionArray:v10 suggestion:0 USEnglishSuggestion:0 underlyingError:0 errorType:@"DMCFatalError"];
  }

  return 1;
}

+ (BOOL)_parseWellKnownFailedErrorWithMessage:(id)message details:(id)details outError:(id *)error
{
  messageCopy = message;
  detailsCopy = details;
  if (error)
  {
    v16 = MEMORY[0x1E696ABC0];
    if (messageCopy)
    {
      DMCUnformattedErrorArray(messageCopy, v8, v9, v10, v11, v12, v13, v14, 0);
    }

    else
    {
      DMCErrorArray(@"HTTP_ERROR_403_RESPONSE_WELLKNOWN_FAILED", v8, v9, v10, v11, v12, v13, v14, 0);
    }
    v17 = ;
    *error = [v16 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23009 descriptionArray:v17 suggestion:0 USEnglishSuggestion:0 underlyingError:0 errorType:@"DMCFatalError"];
  }

  return 1;
}

+ (BOOL)_parsePlatformSSORequiredErrorWithMessage:(id)message details:(id)details outError:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  detailsCopy = details;
  if (error)
  {
    v16 = MEMORY[0x1E696ABC0];
    if (messageCopy)
    {
      DMCUnformattedErrorArray(messageCopy, v8, v9, v10, v11, v12, v13, v14, 0);
    }

    else
    {
      DMCErrorArray(@"HTTP_ERROR_403_RESPONSE_PLATFORM_SSO_REQUIRED", v8, v9, v10, v11, v12, v13, v14, 0);
    }
    v17 = ;
    if (detailsCopy)
    {
      v20 = @"ErrorDetails";
      v21[0] = detailsCopy;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    }

    else
    {
      v18 = 0;
    }

    *error = [v16 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23011 descriptionArray:v17 suggestion:0 USEnglishSuggestion:0 underlyingError:0 errorType:@"DMCFatalError" addtionalUserInfo:v18];
    if (detailsCopy)
    {
    }
  }

  return 1;
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v80 = *MEMORY[0x1E69E9840];
  challengeCopy = challenge;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];

  v14 = *DMCLogObjects(v12, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy2 = authenticationMethod;
    _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_INFO, "Handling challenge for protection space %{public}@", buf, 0xCu);
  }

  previousFailureCount = [challengeCopy previousFailureCount];
  if (previousFailureCount < 1)
  {
    if ([(DMCHTTPRequestor *)authenticationMethod isEqualToString:*MEMORY[0x1E696A968]])
    {
      protectionSpace2 = [challengeCopy protectionSpace];
      serverTrust = [protectionSpace2 serverTrust];

      if (!serverTrust)
      {
        goto LABEL_48;
      }

      selfCopy = self;
      v69 = handlerCopy;
      v27 = *DMCLogObjects(v25, v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1630000, v27, OS_LOG_TYPE_DEBUG, "Server Trust certificates:", buf, 2u);
      }

      trust = serverTrust;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v28 = SecTrustCopyCertificateChain(serverTrust);
      v29 = [(__CFArray *)v28 countByEnumeratingWithState:&v71 objects:v79 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v72;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v72 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = SecCertificateCopySubjectSummary(*(*(&v71 + 1) + 8 * i));
            if (v33)
            {
              v35 = v33;
              v36 = *DMCLogObjects(v33, v34);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                selfCopy2 = v35;
                _os_log_impl(&dword_1B1630000, v36, OS_LOG_TYPE_DEBUG, "  %{public}@", buf, 0xCu);
              }

              CFRelease(v35);
            }
          }

          v30 = [(__CFArray *)v28 countByEnumeratingWithState:&v71 objects:v79 count:16];
        }

        while (v30);
      }

      self = selfCopy;
      anchorCertificateRefs = [(DMCHTTPRequestor *)selfCopy anchorCertificateRefs];
      v38 = [anchorCertificateRefs count];

      if (v38)
      {
        anchorCertificateRefs2 = [(DMCHTTPRequestor *)selfCopy anchorCertificateRefs];
        v40 = SecTrustSetAnchorCertificates(trust, anchorCertificateRefs2);

        if (v40)
        {
          v43 = *DMCLogObjects(v41, v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(selfCopy2) = v40;
            v44 = "Could not set anchor certificates for trust evaluation. Status: %d";
LABEL_39:
            _os_log_impl(&dword_1B1630000, v43, OS_LOG_TYPE_ERROR, v44, buf, 8u);
            goto LABEL_47;
          }

          goto LABEL_47;
        }

        v53 = SecTrustSetAnchorCertificatesOnly(trust, 1u);
        if (v53)
        {
          v55 = v53;
          v43 = *DMCLogObjects(v53, v54);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(selfCopy2) = v55;
            v44 = "Could not use exclude system default anchor certificates for trust evaluation. Status: %d";
            goto LABEL_39;
          }

LABEL_47:

          handlerCopy = v69;
LABEL_48:
          v66 = *DMCLogObjects(v25, v26);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v48 = "Rejecting server trust. Canceling.";
            v49 = v66;
            v50 = OS_LOG_TYPE_INFO;
            goto LABEL_50;
          }

LABEL_52:
          handlerCopy[2](handlerCopy, 2, 0);
          goto LABEL_53;
        }
      }

      error = 0;
      if (!SecTrustEvaluateWithError(trust, &error))
      {
        v63 = CFErrorCopyDescription(error);
        v65 = *DMCLogObjects(v63, v64);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          selfCopy2 = v63;
          _os_log_impl(&dword_1B1630000, v65, OS_LOG_TYPE_ERROR, "Handle challenge, trust evaluation failed: %{public}@", buf, 0xCu);
        }

        [(DMCHTTPRequestor *)selfCopy setDidFailDueToCertNotTrusted:1];
        CFRelease(v63);
        CFRelease(error);
        goto LABEL_47;
      }

      v58 = *DMCLogObjects(v56, v57);
      handlerCopy = v69;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1630000, v58, OS_LOG_TYPE_INFO, "Accepting server trust.", buf, 2u);
      }
    }

    else if (([(DMCHTTPRequestor *)authenticationMethod isEqualToString:*MEMORY[0x1E696A960]]& 1) == 0)
    {
      v45 = [(DMCHTTPRequestor *)authenticationMethod isEqualToString:*MEMORY[0x1E696A958]];
      if (!v45)
      {
        v47 = *DMCLogObjects(v45, v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy2 = self;
          v77 = 2114;
          v78 = authenticationMethod;
          v48 = "%{public}@ cannot accept the authentication method %{public}@";
          v49 = v47;
          v50 = OS_LOG_TYPE_ERROR;
          v51 = 22;
LABEL_51:
          _os_log_impl(&dword_1B1630000, v49, v50, v48, buf, v51);
          goto LABEL_52;
        }

        goto LABEL_52;
      }
    }

    v59 = MEMORY[0x1E696AF30];
    username = [(DMCHTTPRequestor *)self username];
    password = [(DMCHTTPRequestor *)self password];
    v62 = [v59 credentialWithUser:username password:password persistence:0];

    (handlerCopy)[2](handlerCopy, 0, v62);
    goto LABEL_53;
  }

  v17 = *DMCLogObjects(previousFailureCount, v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1630000, v17, OS_LOG_TYPE_ERROR, "We have failed too many times.", buf, 2u);
  }

  if (([(DMCHTTPRequestor *)authenticationMethod isEqualToString:*MEMORY[0x1E696A960]]& 1) == 0)
  {
    v18 = [(DMCHTTPRequestor *)authenticationMethod isEqualToString:*MEMORY[0x1E696A958]];
    if (!v18)
    {
      v52 = *DMCLogObjects(v18, v19);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v48 = "Canceling the authentication challenge...";
        v49 = v52;
        v50 = OS_LOG_TYPE_DEBUG;
LABEL_50:
        v51 = 2;
        goto LABEL_51;
      }

      goto LABEL_52;
    }
  }

  v20 = [(DMCHTTPRequestor *)self setDidFailDueToMissingCredentials:1];
  v22 = *DMCLogObjects(v20, v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1630000, v22, OS_LOG_TYPE_DEBUG, "Continue without credential for authentication challenge...", buf, 2u);
  }

  handlerCopy[2](handlerCopy, 0, 0);
LABEL_53:
}

@end
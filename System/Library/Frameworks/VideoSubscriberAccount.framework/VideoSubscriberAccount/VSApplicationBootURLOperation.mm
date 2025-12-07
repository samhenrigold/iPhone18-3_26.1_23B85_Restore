@interface VSApplicationBootURLOperation
- (BOOL)validateTrust:(__SecTrust *)trust;
- (BOOL)verifyCertificateIsSystemTrustedWithTrust:(__SecTrust *)trust;
- (VSApplicationBootURLOperation)init;
- (VSApplicationBootURLOperation)initWithBootURL:(id)l isDeveloper:(BOOL)developer;
- (id)generateFilePathForURL:(id)l;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)executionDidBegin;
@end

@implementation VSApplicationBootURLOperation

- (VSApplicationBootURLOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSApplicationBootURLOperation)initWithBootURL:(id)l isDeveloper:(BOOL)developer
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = VSApplicationBootURLOperation;
  v8 = [(VSApplicationBootURLOperation *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_url, l);
    v9->_developer = developer;
    v10 = objc_alloc_init(VSPreferences);
    preferences = v9->_preferences;
    v9->_preferences = v10;
  }

  return v9;
}

- (void)executionDidBegin
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = [(VSApplicationBootURLOperation *)self url];
  scheme = [v3 scheme];
  if ([(VSApplicationBootURLOperation *)self isForTesting])
  {
    allowInsecureAuthContext = 0;
  }

  else
  {
    preferences = [(VSApplicationBootURLOperation *)self preferences];
    allowInsecureAuthContext = [preferences allowInsecureAuthContext];
  }

  isDeveloper = [(VSApplicationBootURLOperation *)self isDeveloper];
  if (isDeveloper)
  {
    v8 = VSDefaultLogObject(isDeveloper);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "URL is for a developer added provider, skipping system trust verification.", &buf, 2u);
    }

LABEL_7:

    v9 = [VSFailable failableWithObject:v3];
    [(VSApplicationBootURLOperation *)self setUrlOrError:v9];

    [(VSAsyncOperation *)self finishExecutionIfPossible];
    goto LABEL_19;
  }

  skipSystemTrustVerification = [(VSApplicationBootURLOperation *)self skipSystemTrustVerification];
  if (skipSystemTrustVerification)
  {
    v8 = VSDefaultLogObject(skipSystemTrustVerification);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "System trust is set to be skipped, skipping system trust verification.", &buf, 2u);
    }

    goto LABEL_7;
  }

  if (scheme && (([scheme isEqual:*MEMORY[0x277CCA778]] & 1) != 0 || ((objc_msgSend(scheme, "isEqualToString:", @"https") | allowInsecureAuthContext) & 1) != 0))
  {
    v11 = objc_alloc(MEMORY[0x277CCAB70]);
    v12 = [(VSApplicationBootURLOperation *)self url];
    v13 = [v11 initWithURL:v12];

    [v13 _setNonAppInitiated:1];
    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    if ([(VSApplicationBootURLOperation *)self isForTesting])
    {
      [defaultSessionConfiguration setRequestCachePolicy:1];
    }

    v15 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration delegate:self delegateQueue:0];
    objc_initWeak(&buf, self);
    v16 = [(VSApplicationBootURLOperation *)self url];
    objc_initWeak(&location, v16);

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __50__VSApplicationBootURLOperation_executionDidBegin__block_invoke;
    v23[3] = &unk_278B75358;
    objc_copyWeak(&v24, &buf);
    objc_copyWeak(&v25, &location);
    v17 = [v15 dataTaskWithRequest:v13 completionHandler:v23];
    [v17 resume];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
    objc_destroyWeak(&buf);
  }

  else
  {
    vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v19 = [vs_frameworkBundle localizedStringForKey:@"URL_BAD_SCHEME_ERROR_DESCRIPTION" value:0 table:0];

    v28 = *MEMORY[0x277CCA450];
    v29[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSErrorDomain" code:0 userInfo:v20];
    v22 = [VSFailable failableWithError:v21];
    [(VSApplicationBootURLOperation *)self setUrlOrError:v22];

    [(VSAsyncOperation *)self finishExecutionIfPossible];
  }

LABEL_19:
}

void __50__VSApplicationBootURLOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = v9;
  if (v7)
  {
    v11 = VSErrorLogObject(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __50__VSApplicationBootURLOperation_executionDidBegin__block_invoke_cold_1(v10, v7, v11);
    }

    v12 = v7;
    if ([v12 code] == -999)
    {
      v13 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
      v14 = [v13 localizedStringForKey:@"SYSTEM_TRUST_VERIFICATION_ERROR_DESCRIPTION" value:0 table:0];

      v33 = *MEMORY[0x277CCA450];
      v34[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSErrorDomain" code:6 userInfo:v15];
      v17 = [VSFailable failableWithError:v16];
      [WeakRetained setUrlOrError:v17];

LABEL_29:
LABEL_30:

      goto LABEL_31;
    }

LABEL_28:
    v14 = [VSFailable failableWithError:v12];
    [WeakRetained setUrlOrError:v14];
    goto LABEL_29;
  }

  if (v6)
  {
    v18 = [WeakRetained isForTesting];
    if (v18)
    {
      v19 = VSDefaultLogObject(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23AB8E000, v19, OS_LOG_TYPE_DEFAULT, "Boot URL fetched for testing or EV was skipped, skipping storage.", buf, 2u);
      }

      v12 = [VSFailable failableWithObject:v10];
      [WeakRetained setUrlOrError:v12];
      goto LABEL_30;
    }

    v21 = v6;
    v22 = [WeakRetained generateFilePathForURL:v10];
    if (v22)
    {
      v30 = 0;
      [v21 writeToFile:v22 options:0 error:&v30];
      v23 = v30;
      v12 = v23;
      if (v23)
      {
        v24 = VSErrorLogObject(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          __50__VSApplicationBootURLOperation_executionDidBegin__block_invoke_cold_2();
        }

        v25 = v12;
      }

      else
      {
        v27 = VSDefaultLogObject(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v32 = v22;
          _os_log_impl(&dword_23AB8E000, v27, OS_LOG_TYPE_DEFAULT, "Wrote boot URL contents to %@", buf, 0xCu);
        }

        v28 = [MEMORY[0x277CBEBC0] fileURLWithPath:v22];
        v29 = [VSFailable failableWithObject:v28];
        [WeakRetained setUrlOrError:v29];
      }
    }

    else
    {
      v26 = VSErrorLogObject(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __50__VSApplicationBootURLOperation_executionDidBegin__block_invoke_cold_3();
      }

      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSErrorDomain" code:2 userInfo:0];
    }

    if (v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v20 = VSErrorLogObject(v9);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __50__VSApplicationBootURLOperation_executionDidBegin__block_invoke_cold_4(v10, v20);
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSErrorDomain" code:1 userInfo:0];
    if (v12)
    {
      goto LABEL_28;
    }
  }

LABEL_31:
  [WeakRetained finishExecutionIfPossible];
}

- (id)generateFilePathForURL:(id)l
{
  v29[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v4 = NSTemporaryDirectory();
  v5 = v4;
  if (!v4)
  {
    path = VSErrorLogObject(0);
    if (os_log_type_enabled(path, OS_LOG_TYPE_ERROR))
    {
      [VSApplicationBootURLOperation generateFilePathForURL:];
    }

    goto LABEL_12;
  }

  v6 = MEMORY[0x277CBEBC0];
  v29[0] = v4;
  v29[1] = @"com.apple.VideoSubscriberAccount";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v8 = [v6 fileURLWithPathComponents:v7];
  path = [v8 path];

  if (!path)
  {
    v16 = VSErrorLogObject(v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [VSApplicationBootURLOperation generateFilePathForURL:];
    }

LABEL_12:
    path2 = 0;
    goto LABEL_20;
  }

  path = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v27 = 0;
  [defaultManager createDirectoryAtPath:path withIntermediateDirectories:0 attributes:0 error:&v27];
  v12 = v27;

  if (v12)
  {
    domain = [v12 domain];
    if ([domain isEqual:*MEMORY[0x277CCA050]])
    {
      code = [v12 code];

      if (code == 516)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    v18 = VSErrorLogObject(v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [VSApplicationBootURLOperation generateFilePathForURL:];
    }
  }

LABEL_17:
  absoluteString = [lCopy absoluteString];

  if (!absoluteString)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [url absoluteString] parameter must not be nil."];
  }

  absoluteString2 = [lCopy absoluteString];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(absoluteString2, "hash")}];
  stringValue = [v21 stringValue];

  v23 = MEMORY[0x277CBEBC0];
  v28[0] = v5;
  v28[1] = @"com.apple.VideoSubscriberAccount";
  v28[2] = stringValue;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v25 = [v23 fileURLWithPathComponents:v24];
  path2 = [v25 path];

LABEL_20:

  return path2;
}

- (BOOL)validateTrust:(__SecTrust *)trust
{
  error = 0;
  v3 = SecTrustEvaluateWithError(trust, &error);
  v4 = v3;
  if (!v3)
  {
    v5 = VSErrorLogObject(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(VSApplicationBootURLOperation *)&error validateTrust:v5];
    }
  }

  return v4;
}

- (BOOL)verifyCertificateIsSystemTrustedWithTrust:(__SecTrust *)trust
{
  preferences = [(VSApplicationBootURLOperation *)self preferences];
  allowNonSystemTrust = [preferences allowNonSystemTrust];

  if (!allowNonSystemTrust)
  {
    if (trust)
    {
      v10 = [(VSApplicationBootURLOperation *)self validateTrust:trust];
      if (v10)
      {
        v11 = SecTrustCopyCertificateChain(trust);
        v8 = v11;
        if (v11)
        {
          if ([(__CFArray *)v11 lastObject])
          {
            v9 = 1;
            SecTrustStoreForDomain();
            v12 = SecTrustStoreContains();
            if (v12)
            {
              goto LABEL_22;
            }

            v13 = VSErrorLogObject(v12);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              [VSApplicationBootURLOperation verifyCertificateIsSystemTrustedWithTrust:];
            }
          }

          else
          {
            v13 = VSErrorLogObject(0);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              [VSApplicationBootURLOperation verifyCertificateIsSystemTrustedWithTrust:];
            }
          }
        }

        else
        {
          v13 = VSErrorLogObject(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [VSApplicationBootURLOperation verifyCertificateIsSystemTrustedWithTrust:];
          }
        }
      }

      else
      {
        v8 = VSErrorLogObject(v10);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [VSApplicationBootURLOperation verifyCertificateIsSystemTrustedWithTrust:];
        }
      }
    }

    else
    {
      v8 = VSErrorLogObject(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [VSApplicationBootURLOperation verifyCertificateIsSystemTrustedWithTrust:];
      }
    }

    v9 = 0;
    goto LABEL_22;
  }

  v8 = VSDefaultLogObject(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Skipping system trust requirement due to default override.", v15, 2u);
  }

  v9 = 1;
LABEL_22:

  return v9;
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  protectionSpace = [challenge protectionSpace];
  serverTrust = [protectionSpace serverTrust];
  v10 = SecTrustCopyInfo();
  [(VSApplicationBootURLOperation *)self setTrustInfo:v10];
  authenticationMethod = [protectionSpace authenticationMethod];
  v12 = [authenticationMethod isEqualToString:*MEMORY[0x277CCA720]];

  if (v12)
  {
    v14 = [(VSApplicationBootURLOperation *)self verifyCertificateIsSystemTrustedWithTrust:serverTrust];
    if (v14)
    {
      v15 = VSDefaultLogObject(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23AB8E000, v15, OS_LOG_TYPE_DEFAULT, "System trust verified.", buf, 2u);
      }

      v16 = [MEMORY[0x277CCACF0] credentialForTrust:{objc_msgSend(protectionSpace, "serverTrust")}];
      v17 = 0;
    }

    else
    {
      v19 = VSErrorLogObject(v14);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [VSApplicationBootURLOperation URLSession:didReceiveChallenge:completionHandler:];
      }

      v16 = 0;
      v17 = 2;
    }
  }

  else
  {
    v18 = VSDefaultLogObject(v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_23AB8E000, v18, OS_LOG_TYPE_DEFAULT, "Challenge was not server trust.", v20, 2u);
    }

    v16 = 0;
    v17 = 1;
  }

  handlerCopy[2](handlerCopy, v17, v16);
}

void __50__VSApplicationBootURLOperation_executionDidBegin__block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 absoluteString];
  OUTLINED_FUNCTION_1_0();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_23AB8E000, a3, OS_LOG_TYPE_ERROR, "Error fetching application boot URL contents from %@: %@", v6, 0x16u);
}

void __50__VSApplicationBootURLOperation_executionDidBegin__block_invoke_cold_2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_23AB8E000, v1, OS_LOG_TYPE_ERROR, "Error writing boot URL contents to %@: %@", v2, 0x16u);
}

void __50__VSApplicationBootURLOperation_executionDidBegin__block_invoke_cold_4(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 absoluteString];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Request to application boot URL %@ returned no contents.", v4, 0xCu);
}

- (void)generateFilePathForURL:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_23AB8E000, v0, OS_LOG_TYPE_ERROR, "Error creating temporary directory: %@", v1, 0xCu);
}

- (void)validateTrust:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error validating certificate trust: %@", &v3, 0xCu);
}

@end
@interface ECSecureMIMETrustEvaluation
+ (NSArray)anchorCertificatesForTesting;
+ (OS_os_log)log;
+ (id)evaluateTrust:(__SecTrust *)trust withOptions:(unint64_t)options signerEmailAddress:(id)address;
+ (id)reevaluateWithNetworkAccessAllowed:(id)allowed;
+ (void)setAnchorCertificatesForTesting:(id)testing;
- (BOOL)requiresReevaluationWithNetworkAccess;
- (ECSecureMIMETrustEvaluation)initWithCoder:(id)coder;
- (NSString)description;
- (id)_initWithTrust:(__SecTrust *)trust options:(unint64_t)options signerEmailAddress:(id)address;
- (void)_evaluate;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ECSecureMIMETrustEvaluation

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ECSecureMIMETrustEvaluation_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_4 != -1)
  {
    dispatch_once(&log_onceToken_4, block);
  }

  v2 = log_log_4;

  return v2;
}

void __34__ECSecureMIMETrustEvaluation_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_4;
  log_log_4 = v1;
}

+ (id)evaluateTrust:(__SecTrust *)trust withOptions:(unint64_t)options signerEmailAddress:(id)address
{
  addressCopy = address;
  v9 = [[self alloc] _initWithTrust:trust options:options signerEmailAddress:addressCopy];

  return v9;
}

+ (id)reevaluateWithNetworkAccessAllowed:(id)allowed
{
  v17[4] = *MEMORY[0x277D85DE8];
  allowedCopy = allowed;
  if ([allowedCopy requiresReevaluationWithNetworkAccess])
  {
    v17[0] = 0;
    v5 = serializeTrust([allowedCopy trust], v17);
    v6 = v17[0];
    v7 = v6;
    if (v5)
    {
      v16 = v6;
      v8 = copyDeserializedTrust(v5, &v16);
      v9 = v16;

      if (v8)
      {

        options = [allowedCopy options];
        trust = [allowedCopy trust];
        signerEmailAddress = [allowedCopy signerEmailAddress];
        v13 = [self evaluateTrust:trust withOptions:options | 3 signerEmailAddress:signerEmailAddress];

        CFRelease(v8);
        goto LABEL_12;
      }

      v14 = +[ECSecureMIMETrustEvaluation log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [v9 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        +[ECSecureMIMETrustEvaluation reevaluateWithNetworkAccessAllowed:];
      }

      v7 = v9;
    }

    else
    {
      v14 = +[ECSecureMIMETrustEvaluation log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [v7 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        +[ECSecureMIMETrustEvaluation reevaluateWithNetworkAccessAllowed:];
      }
    }

    v13 = 0;
  }

  else
  {
    v13 = allowedCopy;
  }

LABEL_12:

  return v13;
}

- (id)_initWithTrust:(__SecTrust *)trust options:(unint64_t)options signerEmailAddress:(id)address
{
  v42 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  if (!trust)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ECSecureMIMETrustEvaluation.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"trust"}];
  }

  v35.receiver = self;
  v35.super_class = ECSecureMIMETrustEvaluation;
  v9 = [(ECSecureMIMETrustEvaluation *)&v35 init];
  v10 = v9;
  if (v9)
  {
    v9->_trust = trust;
    CFRetain(trust);
    v10->_options = options;
    v11 = [addressCopy copy];
    signerEmailAddress = v10->_signerEmailAddress;
    v10->_signerEmailAddress = v11;

    trust = v10->_trust;
    options = v10->_options;
    policies = 0;
    LODWORD(Allowed) = SecTrustCopyPolicies(trust, &policies);
    v33 = policies;
    if (Allowed)
    {
      v16 = +[ECSecureMIMETrustEvaluation log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [ECSecureMIMETrustEvaluation _initWithTrust:v16 options:? signerEmailAddress:?];
      }
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v18 = v33;
      v19 = [(__CFArray *)v18 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v19)
      {
        v20 = *v37;
        v21 = *MEMORY[0x277CDC4C0];
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v37 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v36 + 1) + 8 * i);
            OidString = SecPolicyGetOidString();
            if (!CFEqual(v21, OidString))
            {
              [v17 addObject:v23];
            }
          }

          v19 = [(__CFArray *)v18 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v19);
      }

      if ((options & 2) != 0)
      {
        if (options)
        {
          v25 = 3;
        }

        else
        {
          v25 = 67;
        }

        Revocation = SecPolicyCreateRevocation(v25);
        [v17 addObject:Revocation];
      }

      Allowed = SecTrustSetPolicies(trust, v17);
      if (Allowed)
      {
        v27 = +[ECSecureMIMETrustEvaluation log];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [ECSecureMIMETrustEvaluation _initWithTrust:v17 options:Allowed signerEmailAddress:v27];
        }
      }

      else
      {
        Allowed = SecTrustSetNetworkFetchAllowed(trust, options & 1);
        if (Allowed)
        {
          v27 = +[ECSecureMIMETrustEvaluation log];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [ECSecureMIMETrustEvaluation _initWithTrust:Allowed options:v27 signerEmailAddress:?];
          }
        }

        else
        {
          v27 = +[ECSecureMIMETrustEvaluation anchorCertificatesForTesting];
          if (v27)
          {
            LODWORD(Allowed) = SecTrustSetAnchorCertificates(trust, v27);
            if (Allowed)
            {
              v28 = +[ECSecureMIMETrustEvaluation log];
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                [ECSecureMIMETrustEvaluation _initWithTrust:options:signerEmailAddress:];
              }
            }
          }

          else
          {
            LODWORD(Allowed) = 0;
          }
        }
      }

      if (!Allowed)
      {
        [(ECSecureMIMETrustEvaluation *)v10 _evaluate];
        goto LABEL_36;
      }
    }

    v10->_trustResult = 7;
    v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:Allowed userInfo:0];
    error = v10->_error;
    v10->_error = v29;
  }

LABEL_36:

  return v10;
}

- (void)dealloc
{
  CFRelease(self->_trust);
  v3.receiver = self;
  v3.super_class = ECSecureMIMETrustEvaluation;
  [(ECSecureMIMETrustEvaluation *)&v3 dealloc];
}

- (ECSecureMIMETrustEvaluation)initWithCoder:(id)coder
{
  v17[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(ECSecureMIMETrustEvaluation *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_trust"];
    v17[0] = 0;
    v7 = copyDeserializedTrust(v6, v17);
    v8 = v17[0];
    if (!v7)
    {
      v9 = +[ECSecureMIMETrustEvaluation log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [v8 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [ECSecureMIMETrustEvaluation initWithCoder:];
      }
    }

    v5->_trust = v7;
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_signerEmailAddress"];
    signerEmailAddress = v5->_signerEmailAddress;
    v5->_signerEmailAddress = v10;

    v5->_options = [coderCopy decodeIntegerForKey:@"EFPropertyKey_options"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_error"];
    error = v5->_error;
    v5->_error = v12;

    v14 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"EFPropertyKey_trustResult"];
    v5->_trustResult = [v15 unsignedIntValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v11[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v11[0] = 0;
  v5 = serializeTrust([(ECSecureMIMETrustEvaluation *)self trust], v11);
  v6 = v11[0];
  if (!v5)
  {
    v7 = +[ECSecureMIMETrustEvaluation log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [ECSecureMIMETrustEvaluation encodeWithCoder:];
    }
  }

  [coderCopy encodeObject:v5 forKey:@"EFPropertyKey_trust"];
  signerEmailAddress = [(ECSecureMIMETrustEvaluation *)self signerEmailAddress];
  [coderCopy encodeObject:signerEmailAddress forKey:@"EFPropertyKey_signerEmailAddress"];

  [coderCopy encodeInteger:-[ECSecureMIMETrustEvaluation options](self forKey:{"options"), @"EFPropertyKey_options"}];
  error = [(ECSecureMIMETrustEvaluation *)self error];
  [coderCopy encodeObject:error forKey:@"EFPropertyKey_error"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[ECSecureMIMETrustEvaluation trustResult](self, "trustResult")}];
  [coderCopy encodeObject:v10 forKey:@"EFPropertyKey_trustResult"];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = self->_trustResult - 1;
  if (v5 > 6)
  {
    v6 = "kSecTrustResultInvalid";
  }

  else
  {
    v6 = off_27874C338[v5];
  }

  return [v3 stringWithFormat:@"<%@ %p trust=%@ signerEmailAddress=%@ options=%d trustResult=%s(%d) error=%@>", v4, self, self->_trust, self->_signerEmailAddress, self->_options, v6, self->_trustResult, self->_error];
}

- (void)_evaluate
{
  v13[1] = *MEMORY[0x277D85DE8];
  v11 = 0;
  p_trust = &self->_trust;
  SecTrustEvaluateWithError(self->_trust, &v11);
  error = self->_error;
  self->_error = v11;

  TrustResult = SecTrustGetTrustResult(*p_trust, &self->_trustResult);
  if (TrustResult)
  {
    v6 = +[ECSecureMIMETrustEvaluation log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ECSecureMIMETrustEvaluation _evaluate];
    }

    v7 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA068];
    v13[0] = @"SecTrustGetTrustResult failed";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v7 errorWithDomain:*MEMORY[0x277CCA590] code:TrustResult userInfo:v8];
    v10 = self->_error;
    self->_error = v9;
  }
}

- (BOOL)requiresReevaluationWithNetworkAccess
{
  if (self->_options)
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  domain = [(NSError *)self->_error domain];
  if (![domain isEqual:*MEMORY[0x277CCA590]])
  {

    goto LABEL_7;
  }

  code = [(NSError *)self->_error code];

  if (code != -25318)
  {
LABEL_7:
    v6 = SecTrustCopyResult(self->_trust);
    v7 = [(__CFDictionary *)v6 objectForKeyedSubscript:*MEMORY[0x277CDC598]];
    v5 = [v7 BOOLValue] ^ 1;

    return v5;
  }

  LOBYTE(v5) = 1;
  return v5;
}

+ (NSArray)anchorCertificatesForTesting
{
  v2 = [sAnchorCertificatesForTesting copy];

  return v2;
}

+ (void)setAnchorCertificatesForTesting:(id)testing
{
  testingCopy = testing;
  v3 = [testingCopy copy];
  v4 = sAnchorCertificatesForTesting;
  sAnchorCertificatesForTesting = v3;
}

+ (void)reevaluateWithNetworkAccessAllowed:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

+ (void)reevaluateWithNetworkAccessAllowed:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_initWithTrust:(int)a1 options:(NSObject *)a2 signerEmailAddress:.cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_22D092000, a2, OS_LOG_TYPE_ERROR, "SecTrustCopyPolicies returned %d", v2, 8u);
}

- (void)_initWithTrust:(uint64_t)a1 options:(uint64_t)a2 signerEmailAddress:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 67109378;
  HIDWORD(v3) = a2;
  LOWORD(v4) = 2114;
  *(&v4 + 2) = a1;
  OUTLINED_FUNCTION_0_3(&dword_22D092000, a2, a3, "SecTrustSetPolicies returned %d, policies = %{public}@", v3, v4, WORD4(v4), *MEMORY[0x277D85DE8]);
}

- (void)_initWithTrust:(char)a1 options:(uint64_t)a2 signerEmailAddress:(NSObject *)a3 .cold.3(char a1, uint64_t a2, NSObject *a3)
{
  v3 = "false";
  if (a1)
  {
    v3 = "true";
  }

  LODWORD(v4) = 136315394;
  HIDWORD(v4) = v3;
  OUTLINED_FUNCTION_0_3(&dword_22D092000, a2, a3, "SecTrustSetNetworkFetchAllowed(%s) returned %d", v4, HIDWORD(v3));
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)encodeWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

@end
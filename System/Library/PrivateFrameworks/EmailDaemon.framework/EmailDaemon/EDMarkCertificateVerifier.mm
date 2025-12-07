@interface EDMarkCertificateVerifier
- (BOOL)_verifyIndicatorData:(void *)data withMarkCertificateData:(void *)certificateData domain:(void *)domain date:(CFErrorRef *)date error:;
- (id)_bimiSelectorFromMessage:(uint64_t)message;
- (id)_certificateChainFromPEMData:(void *)data;
- (id)_senderAddressFromMessage:(uint64_t)message;
- (id)_splitPEMStringIntoCertificatePEMData:(uint64_t)data;
- (uint64_t)_verifyIndicatorData:(void *)data withMarkCertificateData:(void *)certificateData forBaseMessage:;
@end

@implementation EDMarkCertificateVerifier

void ___ef_log_EDMarkCertificateVerifier_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDMarkCertificateVerifier");
  v1 = _ef_log_EDMarkCertificateVerifier_log;
  _ef_log_EDMarkCertificateVerifier_log = v0;
}

- (uint64_t)_verifyIndicatorData:(void *)data withMarkCertificateData:(void *)certificateData forBaseMessage:
{
  v54 = *MEMORY[0x1E69E9840];
  v7 = a2;
  dataCopy = data;
  certificateDataCopy = certificateData;
  if (!self)
  {
    v18 = 0;
    goto LABEL_42;
  }

  v10 = [(EDMarkCertificateVerifier *)self _senderAddressFromMessage:certificateDataCopy];
  dateReceived = [certificateDataCopy dateReceived];
  v12 = dateReceived;
  if (!v10 || !dateReceived)
  {
    v17 = _ef_log_EDMarkCertificateVerifier(dateReceived);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [EDMarkCertificateVerifier _verifyIndicatorData:v10 != 0 withMarkCertificateData:v17 forBaseMessage:?];
    }

    v18 = 0;
    goto LABEL_41;
  }

  domain = [v10 domain];
  v52 = 0;
  v14 = [(EDMarkCertificateVerifier *)self _verifyIndicatorData:v7 withMarkCertificateData:dataCopy domain:domain date:v12 error:&v52];
  v15 = v52;
  v16 = v15;
  if (!v14)
  {
    code = [(__CFError *)v15 code];
    if (code != -67602 || (-[__CFError domain](v16, "domain"), v20 = objc_claimAutoreleasedReturnValue(), v47 = *MEMORY[0x1E696A768], v21 = [v20 isEqualToString:?], v20, (v21 & 1) == 0))
    {
      v26 = _ef_log_EDMarkCertificateVerifier(code);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [(__CFError *)v16 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDMarkCertificateVerifier _verifyIndicatorData:withMarkCertificateData:forBaseMessage:];
      }

      v53 = 0;
      goto LABEL_40;
    }

    highLevelDomain = [v10 highLevelDomain];
    v45 = [highLevelDomain isEqualToString:domain];
    if (v45)
    {
      v22 = v16;
    }

    else
    {
      v51 = v16;
      v27 = [(EDMarkCertificateVerifier *)self _verifyIndicatorData:v7 withMarkCertificateData:dataCopy domain:highLevelDomain date:v12 error:&v51];
      v22 = v51;

      if (v27)
      {
        v53 = 1;
LABEL_39:

        v16 = v22;
        goto LABEL_40;
      }

      code2 = [(__CFError *)v22 code];
      if (code2 != -67602 || (-[__CFError domain](v22, "domain"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v29 isEqualToString:v47], v29, (v30 & 1) == 0))
      {
        v31 = _ef_log_EDMarkCertificateVerifier(code2);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [(__CFError *)v22 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          [EDMarkCertificateVerifier _verifyIndicatorData:withMarkCertificateData:forBaseMessage:];
        }

        v53 = 0;
        goto LABEL_39;
      }
    }

    v23 = [(EDMarkCertificateVerifier *)self _bimiSelectorFromMessage:certificateDataCopy];
    v43 = v23;
    if (!v23)
    {
      goto LABEL_31;
    }

    v44 = [v23 mutableCopy];
    [v44 appendString:@"._bimi."];
    [v44 appendString:domain];
    v50 = v22;
    v24 = [(EDMarkCertificateVerifier *)self _verifyIndicatorData:v7 withMarkCertificateData:dataCopy domain:v44 date:v12 error:&v50];
    v25 = v50;

    if (v24)
    {
      v53 = 1;
LABEL_37:

LABEL_38:
      v22 = v25;
      goto LABEL_39;
    }

    code3 = [(__CFError *)v25 code];
    if (code3 != -67602 || (-[__CFError domain](v25, "domain"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v33 isEqualToString:v47], v33, (v34 & 1) == 0))
    {
      v36 = _ef_log_EDMarkCertificateVerifier(code3);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [(__CFError *)v25 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDMarkCertificateVerifier _verifyIndicatorData:withMarkCertificateData:forBaseMessage:];
      }

      v53 = 0;
      goto LABEL_37;
    }

    if (v45)
    {
      v22 = v25;
LABEL_30:

LABEL_31:
      v35 = _ef_log_EDMarkCertificateVerifier(v23);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [(__CFError *)v22 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDMarkCertificateVerifier _verifyIndicatorData:withMarkCertificateData:forBaseMessage:];
      }

      v53 = 0;
      v25 = v22;
      goto LABEL_38;
    }

    v38 = [v43 mutableCopy];
    [v38 appendString:@"._bimi."];
    [v38 appendString:highLevelDomain];
    v49 = v25;
    v39 = [(EDMarkCertificateVerifier *)self _verifyIndicatorData:v7 withMarkCertificateData:dataCopy domain:v38 date:v12 error:&v49];
    v22 = v49;

    if (!v39)
    {
      code4 = [(__CFError *)v22 code];
      if (code4 == -67602)
      {
        domain2 = [(__CFError *)v22 domain];
        v41 = [domain2 isEqualToString:v47];

        if (v41)
        {

          goto LABEL_30;
        }
      }

      v42 = _ef_log_EDMarkCertificateVerifier(code4);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [(__CFError *)v22 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDMarkCertificateVerifier _verifyIndicatorData:withMarkCertificateData:forBaseMessage:];
      }
    }

    v53 = v39;

    v25 = v22;
    goto LABEL_37;
  }

  v53 = 1;
LABEL_40:

  v18 = v53;
LABEL_41:

LABEL_42:
  return v18;
}

- (id)_senderAddressFromMessage:(uint64_t)message
{
  v3 = a2;
  v4 = v3;
  if (message)
  {
    v5 = MEMORY[0x1E699B340];
    headers = [v3 headers];
    v7 = [headers firstHeaderForKey:*MEMORY[0x1E699B0E8]];
    v8 = [v5 tagValueListFromString:v7 error:0];

    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E699A760]];
    v10 = v9;
    if (v9)
    {
      firstObject = v9;
    }

    else
    {
      senders = [v4 senders];
      firstObject = [senders firstObject];
    }

    emailAddressValue = [firstObject emailAddressValue];
  }

  else
  {
    emailAddressValue = 0;
  }

  return emailAddressValue;
}

- (BOOL)_verifyIndicatorData:(void *)data withMarkCertificateData:(void *)certificateData domain:(void *)domain date:(CFErrorRef *)date error:
{
  v11 = a2;
  dataCopy = data;
  certificateDataCopy = certificateData;
  domainCopy = domain;
  if (!self)
  {
    v24 = 0;
    goto LABEL_23;
  }

  trust = 0;
  v15 = [(EDMarkCertificateVerifier *)self _certificateChainFromPEMData:dataCopy];
  if ([v15 count])
  {
    VerifiedMark = SecPolicyCreateVerifiedMark();
    if (VerifiedMark)
    {
      v17 = SecTrustCreateWithCertificates(v15, VerifiedMark, &trust);
      if (v17)
      {
        v18 = _ef_log_EDMarkCertificateVerifier(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [EDMarkCertificateVerifier _verifyIndicatorData:withMarkCertificateData:domain:date:error:];
        }
      }

      else
      {
        if (!domainCopy || (v22 = SecTrustSetVerifyDate(trust, domainCopy), !v22))
        {
          error = 0;
          v20 = SecTrustEvaluateWithError(trust, &error);
          v19 = error;
LABEL_18:

          CFRelease(VerifiedMark);
          if (trust)
          {
            CFRelease(trust);
          }

          goto LABEL_20;
        }

        v18 = _ef_log_EDMarkCertificateVerifier(v22);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [EDMarkCertificateVerifier _verifyIndicatorData:withMarkCertificateData:domain:date:error:];
        }
      }

      v19 = 0;
      v20 = 0;
      goto LABEL_18;
    }

    v21 = _ef_log_EDMarkCertificateVerifier(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [EDMarkCertificateVerifier _verifyIndicatorData:withMarkCertificateData:domain:date:error:];
    }
  }

  else
  {
    v21 = _ef_log_EDMarkCertificateVerifier(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [EDMarkCertificateVerifier _verifyIndicatorData:withMarkCertificateData:domain:date:error:];
    }
  }

  v19 = 0;
  v20 = 0;
LABEL_20:
  if (date)
  {
    v23 = v19;
    *date = v19;
  }

  v28 = v20;

  v24 = v28;
LABEL_23:

  return v24;
}

- (id)_bimiSelectorFromMessage:(uint64_t)message
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v15 = v3;
  if (message)
  {
    v4 = MEMORY[0x1E699B290];
    headers = [v3 headers];
    v6 = [v4 authenticationResultsForHeaders:headers];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      v10 = *MEMORY[0x1E699B058];
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v16 + 1) + 8 * v11) firstStatementForMethod:@"bimi"];
        v13 = [v12 valueForPropertyType:v10 property:@"selector"];

        if (v13)
        {
          break;
        }

        if (v8 == ++v11)
        {
          v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_certificateChainFromPEMData:(void *)data
{
  v3 = a2;
  if (data)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:1];
    v5 = [(EDMarkCertificateVerifier *)data _splitPEMStringIntoCertificatePEMData:v4];
    data = [v5 ef_compactMap:&__block_literal_global_29];
  }

  return data;
}

- (id)_splitPEMStringIntoCertificatePEMData:(uint64_t)data
{
  v3 = a2;
  if (data)
  {
    v4 = [MEMORY[0x1E696AE88] scannerWithString:v3];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v4 scanUpToString:@"-----BEGIN CERTIFICATE-----" intoString:0];
    v7 = 0;
    while (1)
    {
      v13 = v7;
      v8 = [v4 scanUpToString:@"-----END CERTIFICATE-----" intoString:&v13];
      v9 = v13;

      if (!v8)
      {
        break;
      }

      [v6 appendString:v9];
      v12 = v9;
      [v4 scanString:@"-----END CERTIFICATE-----" intoString:&v12];
      v7 = v12;

      [v6 appendString:v7];
      v10 = [v6 dataUsingEncoding:1];
      [v5 addObject:v10];
      [v4 scanUpToString:@"-----BEGIN CERTIFICATE-----" intoString:0];
      [v6 setString:&stru_1F45B4608];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __58__EDMarkCertificateVerifier__certificateChainFromPEMData___block_invoke()
{
  v0 = SecCertificateCreateWithPEM();

  return v0;
}

- (void)_verifyIndicatorData:(char)a1 withMarkCertificateData:(char)a2 forBaseMessage:(NSObject *)a3 .cold.1(char a1, char a2, NSObject *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = @"without sender and date";
  if (a1)
  {
    v3 = @"without sender";
  }

  if (a2)
  {
    v3 = @"without date";
  }

  v4 = 138543362;
  v5 = v3;
  OUTLINED_FUNCTION_7(&dword_1C61EF000, a2, a3, "Could not verify indicator for message %{public}@", &v4);
}

- (void)_verifyIndicatorData:withMarkCertificateData:forBaseMessage:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Indicator verification failed with error: %{public}@", v5);
}

@end
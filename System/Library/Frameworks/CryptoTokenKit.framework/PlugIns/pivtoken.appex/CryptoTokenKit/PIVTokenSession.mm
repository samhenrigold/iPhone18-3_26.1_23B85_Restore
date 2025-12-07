@interface PIVTokenSession
- (BOOL)tokenSession:(id)session supportsOperation:(int64_t)operation usingKey:(id)key algorithm:(id)algorithm;
- (PIVTokenSession)initWithToken:(id)token;
- (id)generalAuthenticateWithData:(id)data operation:(id)operation dataTag:(unint64_t)tag usingKey:(id)key error:(id *)error;
- (id)tokenSession:(id)session beginAuthForOperation:(int64_t)operation constraint:(id)constraint error:(id *)error;
@end

@implementation PIVTokenSession

- (PIVTokenSession)initWithToken:(id)token
{
  v4.receiver = self;
  v4.super_class = PIVTokenSession;
  return [(PIVTokenSession *)&v4 initWithToken:token];
}

- (id)tokenSession:(id)session beginAuthForOperation:(int64_t)operation constraint:(id)constraint error:(id *)error
{
  constraintCopy = constraint;
  if ([constraintCopy isEqual:@"PIN"] & 1) != 0 || (v9 = objc_msgSend(constraintCopy, "isEqual:", @"PINAlways"), (v9))
  {
    v10 = [(PIVTokenSession *)self getSmartCardWithError:error];
    if (v10)
    {
      if (!-[PIVTokenSession authState](self, "authState") || [constraintCopy isEqual:@"PINAlways"] && -[PIVTokenSession authState](self, "authState") == 2 || (objc_msgSend(v10, "context"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
      {
        v12 = [[PIVAuthOperation alloc] initWithSession:self smartCard:v10];
      }

      else
      {
        v12 = objc_opt_new();
      }

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v14 = sub_100001258(v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000036C0(constraintCopy, v14);
    }

    if (error)
    {
      v19 = NSLocalizedDescriptionKey;
      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"WRONG_CONSTR" value:&stru_1000083D8 table:0];
      v20 = v16;
      v17 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      *error = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:v17];
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)tokenSession:(id)session supportsOperation:(int64_t)operation usingKey:(id)key algorithm:(id)algorithm
{
  algorithmCopy = algorithm;
  keyCopy = key;
  token = [(PIVTokenSession *)self token];
  keychainContents = [token keychainContents];
  v13 = [keychainContents keyForObjectID:keyCopy error:0];

  if (!v13)
  {
    goto LABEL_29;
  }

  if (operation == 4)
  {
    if (![v13 canPerformKeyExchange])
    {
      goto LABEL_29;
    }

    keyType = [v13 keyType];
    v21 = [keyType isEqual:kSecAttrKeyTypeECSECPrimeRandom];

    if (!v21)
    {
      goto LABEL_29;
    }

    if ([algorithmCopy isAlgorithm:kSecKeyAlgorithmECDHKeyExchangeStandard])
    {
      goto LABEL_20;
    }

    v19 = &kSecKeyAlgorithmECDHKeyExchangeCofactor;
    goto LABEL_25;
  }

  if (operation == 3)
  {
    if (![v13 canDecrypt])
    {
      goto LABEL_29;
    }

    keyType2 = [v13 keyType];
    v18 = [keyType2 isEqual:kSecAttrKeyTypeRSA];

    if (!v18)
    {
      goto LABEL_29;
    }

    v19 = &kSecKeyAlgorithmRSAEncryptionRaw;
    goto LABEL_25;
  }

  if (operation != 2 || ![v13 canSign])
  {
    goto LABEL_29;
  }

  keyType3 = [v13 keyType];
  v15 = [keyType3 isEqual:kSecAttrKeyTypeRSA];

  if (!v15)
  {
    keyType4 = [v13 keyType];
    v24 = [keyType4 isEqual:kSecAttrKeyTypeECSECPrimeRandom];

    if (!v24)
    {
      goto LABEL_29;
    }

    if ([v13 keySizeInBits] == 256)
    {
      v19 = &kSecKeyAlgorithmECDSASignatureDigestX962SHA256;
    }

    else
    {
      if ([v13 keySizeInBits] != 384)
      {
        goto LABEL_29;
      }

      v19 = &kSecKeyAlgorithmECDSASignatureDigestX962SHA384;
    }

LABEL_25:
    v16 = [algorithmCopy isAlgorithm:*v19];
    goto LABEL_26;
  }

  if (![algorithmCopy isAlgorithm:kSecKeyAlgorithmRSASignatureRaw])
  {
LABEL_29:
    v22 = 0;
    goto LABEL_30;
  }

  if (([algorithmCopy supportsAlgorithm:kSecKeyAlgorithmRSASignatureDigestPKCS1v15Raw] & 1) == 0 && (objc_msgSend(algorithmCopy, "supportsAlgorithm:", kSecKeyAlgorithmRSASignatureDigestPSSSHA1) & 1) == 0 && (objc_msgSend(algorithmCopy, "supportsAlgorithm:", kSecKeyAlgorithmRSASignatureDigestPSSSHA224) & 1) == 0 && (objc_msgSend(algorithmCopy, "supportsAlgorithm:", kSecKeyAlgorithmRSASignatureDigestPSSSHA256) & 1) == 0 && (objc_msgSend(algorithmCopy, "supportsAlgorithm:", kSecKeyAlgorithmRSASignatureDigestPSSSHA384) & 1) == 0)
  {
    v16 = [algorithmCopy supportsAlgorithm:kSecKeyAlgorithmRSASignatureDigestPSSSHA512];
LABEL_26:
    v22 = v16;
    goto LABEL_30;
  }

LABEL_20:
  v22 = 1;
LABEL_30:

  return v22;
}

- (id)generalAuthenticateWithData:(id)data operation:(id)operation dataTag:(unint64_t)tag usingKey:(id)key error:(id *)error
{
  dataCopy = data;
  operationCopy = operation;
  keyCopy = key;
  v15 = [(PIVTokenSession *)self getSmartCardWithError:error];
  if (!v15)
  {
    value2 = 0;
    goto LABEL_28;
  }

  token = [(PIVTokenSession *)self token];
  keychainContents = [token keychainContents];
  v18 = [keychainContents keyForObjectID:keyCopy error:error];

  if (v18)
  {
    v42 = dataCopy;
    constraints = [v18 constraints];
    v20 = [constraints objectForKeyedSubscript:operationCopy];
    v21 = [v20 isEqual:&__kCFBooleanTrue];

    if ((v21 & 1) == 0)
    {
      if (![(PIVTokenSession *)self authState])
      {
        goto LABEL_15;
      }

      constraints2 = [v18 constraints];
      v23 = [constraints2 objectForKeyedSubscript:operationCopy];
      if ([v23 isEqual:@"PINAlways"] && -[PIVTokenSession authState](self, "authState") == 2)
      {

        goto LABEL_15;
      }

      context = [v15 context];

      if (!context)
      {
LABEL_15:
        if (error)
        {
          [NSError errorWithDomain:TKErrorDomain code:-9 userInfo:0];
          *error = value2 = 0;
        }

        else
        {
          value2 = 0;
        }

LABEL_26:
        dataCopy = v42;
        goto LABEL_27;
      }

      [(PIVTokenSession *)self setAuthState:2];
    }

    v41 = operationCopy;
    v43 = 0;
    v26 = [TKBERTLVRecord alloc];
    v27 = [TKBERTLVRecord alloc];
    v28 = +[NSData data];
    v29 = [v27 initWithTag:130 value:v28];
    v50[0] = v29;
    v30 = [[TKBERTLVRecord alloc] initWithTag:tag value:v42];
    v50[1] = v30;
    v31 = [NSArray arrayWithObjects:v50 count:2];
    v32 = [v26 initWithTag:124 records:v31];

    [v15 setUseCommandChaining:1];
    v33 = [v15 sendIns:135 p1:objc_msgSend(v18 p2:"algID") request:objc_msgSend(v18 expectedTag:"keyID") sw:v32 error:{124, &v43, error}];
    v34 = v33;
    if (v33)
    {
      value = [v33 value];
      v36 = [TKBERTLVRecord recordFromData:value];

      v37 = [v36 tag];
      if (v37 == 130)
      {
        value2 = [v36 value];
        operationCopy = v41;
      }

      else
      {
        v38 = sub_100001258(v37);
        operationCopy = v41;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          token2 = [(PIVTokenSession *)self token];
          *buf = 138543874;
          v45 = token2;
          v46 = 2114;
          v47 = keyCopy;
          v48 = 2112;
          v49 = v34;
          _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%{public}@: crypto with key %{public}@ returned bad formatted response %@", buf, 0x20u);

          operationCopy = v41;
        }

        if (error)
        {
          [NSError errorWithDomain:TKErrorDomain code:-3 userInfo:0];
          *error = value2 = 0;
        }

        else
        {
          value2 = 0;
        }
      }
    }

    else
    {
      value2 = 0;
      operationCopy = v41;
    }

    goto LABEL_26;
  }

  value2 = 0;
LABEL_27:

LABEL_28:

  return value2;
}

@end
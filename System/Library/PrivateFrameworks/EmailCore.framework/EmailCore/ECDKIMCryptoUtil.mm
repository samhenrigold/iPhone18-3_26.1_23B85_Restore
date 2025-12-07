@interface ECDKIMCryptoUtil
+ (BOOL)verifySignedData:(id)data withSignatureData:(id)signatureData publicKeyData:(id)keyData hashingAlgorithm:(unint64_t)algorithm error:(id *)error;
@end

@implementation ECDKIMCryptoUtil

uint64_t ___ef_log_ECDKIMCryptoUtil_block_invoke()
{
  _ef_log_ECDKIMCryptoUtil_log = os_log_create("com.apple.email", "ECDKIMCryptoUtil");

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)verifySignedData:(id)data withSignatureData:(id)signatureData publicKeyData:(id)keyData hashingAlgorithm:(unint64_t)algorithm error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  signatureDataCopy = signatureData;
  keyDataCopy = keyData;
  v14 = keyDataCopy;
  if (signatureDataCopy)
  {
    error = 0;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v16 = Mutable;
    if (!Mutable)
    {
      v21 = 0;
LABEL_28:
      if (error)
      {
        if (error)
        {
          errorCopy = error;
          *error = errorCopy;
        }

        else
        {
          CFRelease(error);
        }
      }

      v30 = v21 == 1;
      goto LABEL_33;
    }

    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC028], *MEMORY[0x277CDC060]);
    CFDictionaryAddValue(v16, *MEMORY[0x277CDBFE0], *MEMORY[0x277CDC000]);
    CFDictionaryAddValue(v16, *MEMORY[0x277CDC560], *MEMORY[0x277CBED28]);
    v17 = SecKeyCreateWithData(v14, v16, &error);
    if (v17)
    {
      if (algorithm == 1)
      {
        *&v38 = 0xAAAAAAAAAAAAAAAALL;
        *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *md = v38;
        *&md[16] = v38;
        v39 = dataCopy;
        CC_SHA256([dataCopy bytes], objc_msgSend(dataCopy, "length"), md);
        v19 = CFDataCreate(0, md, 32);
        v40 = SecKeyVerifySignature(v17, *MEMORY[0x277CDC388], v19, signatureDataCopy, &error);
        v21 = v40;
        if (!v40)
        {
          v41 = _ef_log_ECDKIMCryptoUtil(v40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            [(ECDKIMCryptoUtil *)&error verifySignedData:v41 withSignatureData:v42 publicKeyData:v43 hashingAlgorithm:v44 error:v45, v46, v47];
          }
        }

        goto LABEL_25;
      }

      if (!algorithm)
      {
        memset(md, 170, 20);
        v18 = dataCopy;
        CC_SHA1([dataCopy bytes], objc_msgSend(dataCopy, "length"), md);
        v19 = CFDataCreate(0, md, 20);
        v20 = SecKeyVerifySignature(v17, *MEMORY[0x277CDC378], v19, signatureDataCopy, &error);
        v21 = v20;
        if (!v20)
        {
          v22 = _ef_log_ECDKIMCryptoUtil(v20);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(ECDKIMCryptoUtil *)&error verifySignedData:v22 withSignatureData:v23 publicKeyData:v24 hashingAlgorithm:v25 error:v26, v27, v28];
          }
        }

LABEL_25:
        CFRelease(v19);
LABEL_26:
        CFRelease(v16);
        if (v17)
        {
          CFRelease(v17);
        }

        goto LABEL_28;
      }
    }

    else
    {
      v31 = _ef_log_ECDKIMCryptoUtil(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [(ECDKIMCryptoUtil *)&error verifySignedData:v31 withSignatureData:v32 publicKeyData:v33 hashingAlgorithm:v34 error:v35, v36, v37];
      }
    }

    v21 = 0;
    goto LABEL_26;
  }

  v29 = _ef_log_ECDKIMCryptoUtil(keyDataCopy);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [ECDKIMCryptoUtil verifySignedData:v29 withSignatureData:? publicKeyData:? hashingAlgorithm:? error:?];
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-67688 userInfo:0];
    *error = v30 = 0;
  }

  else
  {
    v30 = 0;
  }

LABEL_33:

  return v30;
}

+ (void)verifySignedData:(uint64_t)a3 withSignatureData:(uint64_t)a4 publicKeyData:(uint64_t)a5 hashingAlgorithm:(uint64_t)a6 error:(uint64_t)a7 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_0(&dword_22D092000, a2, a3, "Unable to verify signature with error: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)verifySignedData:(uint64_t)a3 withSignatureData:(uint64_t)a4 publicKeyData:(uint64_t)a5 hashingAlgorithm:(uint64_t)a6 error:(uint64_t)a7 .cold.3(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_0(&dword_22D092000, a2, a3, "Unable to get SecKeyRef with error: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end
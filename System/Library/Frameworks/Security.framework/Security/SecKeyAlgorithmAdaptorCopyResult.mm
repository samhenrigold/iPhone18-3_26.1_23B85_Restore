@interface SecKeyAlgorithmAdaptorCopyResult
@end

@implementation SecKeyAlgorithmAdaptorCopyResult

BOOL __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15SHA1_block_invoke(uint64_t a1, CFDataRef theData)
{
  CFDataGetLength(theData);
  CFDataGetBytePtr(theData);
  CFDataGetLength(*(a1 + 32));
  CFDataGetBytePtr(*(a1 + 32));
  ccsha1_di();
  return ccrsa_emsa_pkcs1v15_verify() == 0;
}

BOOL __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15SHA256_block_invoke(uint64_t a1, CFDataRef theData)
{
  CFDataGetLength(theData);
  CFDataGetBytePtr(theData);
  CFDataGetLength(*(a1 + 32));
  CFDataGetBytePtr(*(a1 + 32));
  ccsha256_di();
  return ccrsa_emsa_pkcs1v15_verify() == 0;
}

BOOL __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15SHA384_block_invoke(uint64_t a1, CFDataRef theData)
{
  CFDataGetLength(theData);
  CFDataGetBytePtr(theData);
  CFDataGetLength(*(a1 + 32));
  CFDataGetBytePtr(*(a1 + 32));
  ccsha384_di();
  return ccrsa_emsa_pkcs1v15_verify() == 0;
}

BOOL __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPSSSHA512_block_invoke(uint64_t a1, const __CFData *a2)
{
  v4 = SecKeyCopyAttributes(**(a1 + 32));
  v5 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"bsiz"];
  ccsha512_di();
  ccsha512_di();
  ccsha512_di();
  CFDataGetLength(*(a1 + 40));
  CFDataGetBytePtr(*(a1 + 40));
  [v5 integerValue];
  CFDataGetBytePtr(a2);
  v6 = ccrsa_emsa_pss_decode() == 0;

  return v6;
}

BOOL __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPSSSHA384_block_invoke(uint64_t a1, const __CFData *a2)
{
  v4 = SecKeyCopyAttributes(**(a1 + 32));
  v5 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"bsiz"];
  ccsha384_di();
  ccsha384_di();
  ccsha384_di();
  CFDataGetLength(*(a1 + 40));
  CFDataGetBytePtr(*(a1 + 40));
  [v5 integerValue];
  CFDataGetBytePtr(a2);
  v6 = ccrsa_emsa_pss_decode() == 0;

  return v6;
}

BOOL __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPSSSHA256_block_invoke(uint64_t a1, const __CFData *a2)
{
  v4 = SecKeyCopyAttributes(**(a1 + 32));
  v5 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"bsiz"];
  ccsha256_di();
  ccsha256_di();
  ccsha256_di();
  CFDataGetLength(*(a1 + 40));
  CFDataGetBytePtr(*(a1 + 40));
  [v5 integerValue];
  CFDataGetBytePtr(a2);
  v6 = ccrsa_emsa_pss_decode() == 0;

  return v6;
}

BOOL __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPSSSHA224_block_invoke(uint64_t a1, const __CFData *a2)
{
  v4 = SecKeyCopyAttributes(**(a1 + 32));
  v5 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"bsiz"];
  ccsha224_di();
  ccsha224_di();
  ccsha224_di();
  CFDataGetLength(*(a1 + 40));
  CFDataGetBytePtr(*(a1 + 40));
  [v5 integerValue];
  CFDataGetBytePtr(a2);
  v6 = ccrsa_emsa_pss_decode() == 0;

  return v6;
}

BOOL __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPSSSHA1_block_invoke(uint64_t a1, const __CFData *a2)
{
  v4 = SecKeyCopyAttributes(**(a1 + 32));
  v5 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"bsiz"];
  ccsha1_di();
  ccsha1_di();
  ccsha1_di();
  CFDataGetLength(*(a1 + 40));
  CFDataGetBytePtr(*(a1 + 40));
  [v5 integerValue];
  CFDataGetBytePtr(a2);
  v6 = ccrsa_emsa_pss_decode() == 0;

  return v6;
}

BOOL __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15MD5_block_invoke(uint64_t a1, CFDataRef theData)
{
  CFDataGetLength(theData);
  CFDataGetBytePtr(theData);
  CFDataGetLength(*(a1 + 32));
  CFDataGetBytePtr(*(a1 + 32));
  ccmd5_di();
  return ccrsa_emsa_pkcs1v15_verify() == 0;
}

BOOL __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15Raw_block_invoke(uint64_t a1, CFDataRef theData)
{
  CFDataGetLength(theData);
  CFDataGetBytePtr(theData);
  CFDataGetLength(*(a1 + 32));
  CFDataGetBytePtr(*(a1 + 32));
  return ccrsa_emsa_pkcs1v15_verify() == 0;
}

BOOL __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15SHA512_block_invoke(uint64_t a1, CFDataRef theData)
{
  CFDataGetLength(theData);
  CFDataGetBytePtr(theData);
  CFDataGetLength(*(a1 + 32));
  CFDataGetBytePtr(*(a1 + 32));
  ccsha512_di();
  return ccrsa_emsa_pkcs1v15_verify() == 0;
}

BOOL __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15SHA224_block_invoke(uint64_t a1, CFDataRef theData)
{
  CFDataGetLength(theData);
  CFDataGetBytePtr(theData);
  CFDataGetLength(*(a1 + 32));
  CFDataGetBytePtr(*(a1 + 32));
  ccsha224_di();
  return ccrsa_emsa_pkcs1v15_verify() == 0;
}

BOOL __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureRaw_block_invoke(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (*BytePtr)
  {
    v6 = 1;
  }

  else
  {
    v6 = Length < 1;
  }

  if (v6)
  {
    v7 = Length;
  }

  else
  {
    do
    {
      v8 = *++BytePtr;
      v7 = Length - 1;
      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = Length > 1;
      }

      --Length;
    }

    while (v9);
  }

  if (v7 != CFDataGetLength(*(a1 + 32)))
  {
    return 0;
  }

  v10 = CFDataGetBytePtr(*(a1 + 32));
  return memcmp(v10, BytePtr, v7) == 0;
}

@end
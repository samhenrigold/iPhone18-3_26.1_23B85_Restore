CFDataRef SecCertificateCopyPrecertTBS(uint64_t a1)
{
  v1 = 0;
  v26 = *(a1 + 32);
  v24 = 0;
  v25 = 0;
  v23 = 0uLL;
  v2 = *(a1 + 504);
  if (v2 > 0x555555555555554)
  {
    return v1;
  }

  v4 = malloc_type_malloc(16 * v2, 0x1010040FDD9F14CuLL);
  v5 = malloc_type_malloc(24 * *(a1 + 504), 0x1000040D248FAB4uLL);
  v6 = v5;
  v1 = 0;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[8] = v7;
  v22 = v7;
  v21[6] = v7;
  v21[7] = v7;
  v21[4] = v7;
  v21[5] = v7;
  v21[2] = v7;
  v21[3] = v7;
  v21[0] = v7;
  v21[1] = v7;
  if (!v4 || !v5)
  {
    goto LABEL_25;
  }

  if (DERParseSequence(&v26, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs, v21, 0xA0uLL))
  {
    goto LABEL_34;
  }

  if (*(&v22 + 1))
  {
    memset(v20, 170, sizeof(v20));
    if (DERDecodeSeqInit(&v22, v20, &v20[1]) || v20[0] != 0x2000000000000010)
    {
      goto LABEL_34;
    }

    v8 = 0;
    memset(v19, 170, sizeof(v19));
    while (1)
    {
      v9 = DERDecodeSeqNext(&v20[1], v19);
      if (v9)
      {
        break;
      }

      if (v19[0] != 0x2000000000000010)
      {
        goto LABEL_34;
      }

      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v17 = v10;
      v18 = v10;
      *__s1 = v10;
      if (DERParseSequenceContent(&v19[1], DERNumExtensionItemSpecs, &DERExtensionItemSpecs, __s1, 0x30uLL))
      {
        goto LABEL_34;
      }

      if (__s1[1] != 10 || memcmp(__s1[0], &_oidGoogleEmbeddedSignedCertificateTimestamp, 0xAuLL))
      {
        if (v8 > *(a1 + 504))
        {
          goto LABEL_34;
        }

        v4[v8] = *&v19[1];
        v11 = &v6[24 * v8];
        *(v11 + 8) = 0;
        *v11 = 16 * v8;
        *(v11 + 1) = 0x2000000000000010;
        ++v8;
      }
    }

    if (v9 != 1)
    {
      goto LABEL_34;
    }
  }

  else
  {
    LOWORD(v8) = 0;
  }

  *(&v23 + 1) = DERLengthOfEncodedSequence(0x2000000000000010, v4, v8, v6);
  v12 = malloc_type_malloc(*(&v23 + 1), 0x12B6E279uLL);
  *&v23 = v12;
  if (v12)
  {
    if (!DEREncodeSequence(0x2000000000000010, v4, v8, v6, v12, &v23 + 1))
    {
      v22 = v23;
      v13 = DERLengthOfEncodedSequence(0x2000000000000010, v21, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs);
      v25 = v13;
      if (v13 <= 0x7FFFFFFFFFFFFFFELL)
      {
        v14 = malloc_type_malloc(v13, 0x809CA9FCuLL);
        v24 = v14;
        if (v14)
        {
          if (!DEREncodeSequence(0x2000000000000010, v21, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs, v14, &v25))
          {
            v1 = CFDataCreate(*MEMORY[0x1E695E480], v24, v25);
            goto LABEL_25;
          }
        }
      }
    }

LABEL_34:
    v1 = 0;
LABEL_25:
    if (v23)
    {
      free(v23);
    }

    goto LABEL_27;
  }

  v1 = 0;
LABEL_27:
  if (v24)
  {
    free(v24);
  }

  if (v4)
  {
    free(v4);
  }

  if (v6)
  {
    free(v6);
  }

  return v1;
}

__CFData *SecKeyRSAVerifyAdaptorCopyResult(uint64_t a1, const __CFData *a2, __CFString **a3, void *a4)
{
  v7 = a4;
  *(a1 + 8) = 3;
  CFArrayAppendValue(*(a1 + 16), @"algid:encrypt:RSA:raw");
  v8 = SecKeyRunAlgorithmAndCopyResult(a1, a2, 0, a3);
  v9 = v8;
  if (*(a1 + 24))
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    goto LABEL_15;
  }

  if (!v7[2](v7, v8))
  {
    v12 = *MEMORY[0x1E695E4C0];
    if (v9 != *MEMORY[0x1E695E4C0])
    {
      if (v12)
      {
        CFRetain(*MEMORY[0x1E695E4C0]);
      }

      CFRelease(v9);
      v9 = v12;
    }

    SecError(-67808, a3, @"RSA signature verification failed, no match");
    goto LABEL_15;
  }

  v11 = *MEMORY[0x1E695E4D0];
  if (v9 == *MEMORY[0x1E695E4D0])
  {
LABEL_15:
    v11 = v9;
    goto LABEL_16;
  }

  if (v11)
  {
    CFRetain(*MEMORY[0x1E695E4D0]);
  }

  CFRelease(v9);
LABEL_16:

  return v11;
}

__CFData *SecRSAPublicKeyCopyOperationResult(uint64_t a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, uint64_t a5, const __CFData *a6, uint64_t a7, __CFString **a8)
{
  if (!CFEqual(cf1, @"algid:encrypt:RSA:raw-cc"))
  {
    return *MEMORY[0x1E695E738];
  }

  Mutable = *MEMORY[0x1E695E4D0];
  if (a2 != 3)
  {
    if (a2 == 2)
    {
      if (!a5)
      {
        Length = CFDataGetLength(a6);
        if (Length == ((ccrsa_block_size() + 7) & 0xFFFFFFFFFFFFFFF8))
        {
          CFDataGetLength(a6);
          CFDataGetBytePtr(a6);
          if ((ccn_cmpn() & 0x80000000) == 0)
          {
            SecError(-50, a8, @"RSApubkey wrong size of buffer to encrypt");
            return 0;
          }

          v15 = 0;
          goto LABEL_14;
        }

        goto LABEL_19;
      }

      return Mutable;
    }

    return *MEMORY[0x1E695E738];
  }

  if (!a5)
  {
    Length = CFDataGetLength(a6);
    if (Length == ((ccrsa_block_size() + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      if (SecCFAllocatorZeroize_sOnce != -1)
      {
        dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
      }

      v15 = SecCFAllocatorZeroize_sAllocator;
LABEL_14:
      Mutable = CFDataCreateMutable(v15, 0);
      CFDataSetLength(Mutable, Length);
      CFDataGetMutableBytePtr(Mutable);
      CFDataGetBytePtr(a6);
      v16 = ccrsa_pub_crypt();
      if (!v16)
      {
        return Mutable;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      SecError(-50, a8, @"rsa_pub_crypt failed, ccerr=%d", v16);
      return 0;
    }

LABEL_19:
    SecError(-50, a8, @"%@: sign - input buffer bad size (%d bytes)", a1, Length);
    return 0;
  }

  return Mutable;
}

__CFData *SecKeyRSACopyCCUnitToBigEndian(const __CFData *a1, CFIndex a2)
{
  if (!a1)
  {
    return 0;
  }

  CFDataGetLength(a1);
  CFDataGetBytePtr(a1);
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  Mutable = CFDataCreateMutable(SecCFAllocatorZeroize_sAllocator, 0);
  CFDataSetLength(Mutable, a2);
  CFDataGetLength(Mutable);
  CFDataGetMutableBytePtr(Mutable);
  ccn_write_uint_padded();
  return Mutable;
}

__CFData *SecSHA256DigestCreateFromData(const __CFAllocator *a1, const __CFData *a2)
{
  Mutable = CFDataCreateMutable(a1, 32);
  CFDataSetLength(Mutable, 32);
  CFDataGetBytePtr(a2);
  CFDataGetLength(a2);
  CFDataGetMutableBytePtr(Mutable);
  CCDigest();
  return Mutable;
}

uint64_t SecCertificateGetPolicyMappings(uint64_t a1)
{
  if (*(a1 + 328))
  {
    return a1 + 328;
  }

  else
  {
    return 0;
  }
}

uint64_t SecCertificateGetInhibitAnyPolicySkipCerts(uint64_t a1)
{
  if (*(a1 + 376))
  {
    return a1 + 376;
  }

  else
  {
    return 0;
  }
}

uint64_t SecKeyDigestAndVerify(void *a1, const SecAsn1Oid *a2, const UInt8 *a3, CFIndex a4, const UInt8 *a5, CFIndex a6)
{
  AlgorithmForSecAsn1AlgId = SecKeyGetAlgorithmForSecAsn1AlgId(a1, a2, 1u);
  if (!AlgorithmForSecAsn1AlgId)
  {
    return 4294967292;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __SecKeyDigestAndVerify_block_invoke;
  v13[3] = &__block_descriptor_48_e58__v40__0____CFData__8____CFData__16____qq_24_____CFError_32l;
  v13[4] = a1;
  v13[5] = AlgorithmForSecAsn1AlgId;
  return SecKeyPerformLegacyOperation(a3, a4, a5, a6, 0, 0, v13);
}

const SecAsn1Oid *SecKeyGetAlgorithmForSecAsn1AlgId(void *a1, const SecAsn1Oid *a2, unsigned int a3)
{
  AlgorithmId = SecKeyGetAlgorithmId(a1);
  if (AlgorithmId == 1)
  {
    v6 = SecKeyGetAlgorithmForSecAsn1AlgId_translationTableRSA;
  }

  else
  {
    if (AlgorithmId != 3)
    {
      return 0;
    }

    v6 = SecKeyGetAlgorithmForSecAsn1AlgId_translationTableECDSA;
  }

  result = *v6;
  if (*v6)
  {
    while (!SecAsn1OidCompare(result, a2))
    {
      v8 = v6[1];
      if (v8)
      {
        if (SecAsn1OidCompare(v8, a2))
        {
          break;
        }
      }

      v9 = v6[4];
      v6 += 4;
      result = v9;
      if (!v9)
      {
        return result;
      }
    }

    return v6[a3 + 2]->Length;
  }

  return result;
}

BOOL SecAsn1OidCompare(const SecAsn1Oid *oid1, const SecAsn1Oid *oid2)
{
  if (!oid1 || !oid2)
  {
    return oid1 == oid2;
  }

  if (oid1->Length == oid2->Length)
  {
    return memcmp(oid1->Data, oid2->Data, oid1->Length) == 0;
  }

  return 0;
}

uint64_t SecKeyPerformLegacyOperation(const UInt8 *a1, CFIndex a2, const UInt8 *a3, CFIndex a4, UInt8 *a5, CFIndex *a6, void *a7)
{
  cf = 0;
  v13 = *MEMORY[0x1E695E498];
  v14 = a7;
  v15 = CFDataCreateWithBytesNoCopy(0, a1, a2, v13);
  v16 = CFDataCreateWithBytesNoCopy(0, a3, a4, v13);
  range = xmmword_18895E1A0;
  v17 = v14[2](v14, v15, v16, &range, &cf);

  if (!v17 || (v18 = CFGetTypeID(v17), TypeID = CFDataGetTypeID(), !a6) || v18 != TypeID)
  {
LABEL_8:
    if (!v15)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v20.length = range.length;
  if (range.length == -1)
  {
    v20.length = CFDataGetLength(v17);
    range.length = v20.length;
  }

  if (v20.length <= *a6)
  {
    *a6 = v20.length;
    v20.location = range.location;
    CFDataGetBytes(v17, v20, a5);
    goto LABEL_8;
  }

  SecError(-50, &cf, @"buffer too small (required %d, provided %d)", v20.length, *a6);
  if (v15)
  {
LABEL_9:
    CFRelease(v15);
  }

LABEL_10:
  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (!cf)
  {
    return 0;
  }

  OSStatus = SecErrorGetOSStatus(cf);
  if (OSStatus == -67808)
  {
    v22 = 4294957487;
  }

  else
  {
    v22 = OSStatus;
  }

  CFRelease(cf);
  return v22;
}

uint64_t __SecKeyDigestAndVerify_block_invoke(uint64_t a1, CFDataRef signedData, CFDataRef signature, uint64_t a4, CFErrorRef *a5)
{
  if (SecKeyVerifySignature(*(a1 + 32), *(a1 + 40), signedData, signature, a5))
  {
    return *MEMORY[0x1E695E4D0];
  }

  else
  {
    return 0;
  }
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_RSASignatureMessagePKCS1v15SHA1(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:RSA:digest-PKCS1v15:SHA1");
  v8 = ccsha1_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15SHA1(uint64_t a1, uint64_t a2, const __CFData *a3, __CFString **a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15SHA1_block_invoke;
  v5[3] = &__block_descriptor_40_e19_C16__0____CFData__8l;
  v5[4] = a2;
  return SecKeyRSAVerifyAdaptorCopyResult(a1, a3, a4, v5);
}

void *SecPolicyCreateAppleIDSService(const void *a1)
{
  AppleServerAuthCommon = SecPolicyCreateAppleServerAuthCommon(a1, @"1.2.840.113635.100.1.67", @"IDSBag", &oidAppleCertExtAppleServerAuthenticationIDSProd, &oidAppleCertExtAppleServerAuthenticationIDSProdQA);
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, AppleServerAuthCommon[4]);
  CFDictionaryRemoveValue(MutableCopy, @"Revocation");
  v3 = AppleServerAuthCommon[4];
  if (v3)
  {
    CFRelease(v3);
  }

  AppleServerAuthCommon[4] = MutableCopy;
  return AppleServerAuthCommon;
}

void *SecPolicyCreateAppleServerAuthCommon(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v11 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (!a1)
  {
    goto LABEL_27;
  }

  CFDictionaryAddValue(v11, @"SSLHostname", a1);
  v12 = *MEMORY[0x1E695E4D0];
  CFDictionaryAddValue(v11, @"BlackListedLeaf", *MEMORY[0x1E695E4D0]);
  CFDictionaryAddValue(v11, @"GrayListedLeaf", v12);
  add_eku(v11, &oidExtendedKeyUsageServerAuth);
  if (!requireUATPinning(a3))
  {
    goto LABEL_20;
  }

  SecPolicyAddAppleAnchorOptions(v11);
  if (a5)
  {
    v13 = *(a4 + 8);
    if ((v13 & 0x8000000000000000) == 0 && (*(a5 + 8) & 0x8000000000000000) == 0)
    {
      v14 = CFDataCreate(0, *a4, v13);
      v15 = CFDataCreate(0, *a5, *(a5 + 8));
      add_leaf_prod_qa_element(v11, v14, v15);
      if (v14)
      {
        CFRelease(v14);
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }

    v16 = SecDERItemCopyOIDDecimalRepresentation(0, a4);
    v17 = SecDERItemCopyOIDDecimalRepresentation(0, a5);
    v18 = v17;
    v19 = v17 != 0;
    if (v16 && v17)
    {
      add_leaf_prod_qa_markers_value_string(v11, v16, v17);
      CFRelease(v16);
LABEL_18:
      CFRelease(v18);
      goto LABEL_19;
    }

    if (!v16)
    {
      if (!v17)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else
  {
    add_leaf_marker_value(v11, a4, 0);
    v20 = SecDERItemCopyOIDDecimalRepresentation(0, a4);
    if (!v20)
    {
      goto LABEL_19;
    }

    v16 = v20;
    v18 = 0;
    v19 = 0;
  }

  add_leaf_marker_value_string(v11, @"1.2.840.113635.100.6.48.1", v16);
  CFRelease(v16);
  if (v19)
  {
    goto LABEL_18;
  }

LABEL_19:
  add_oid(v11, @"IntermediateMarkerOid", _oidAppleIntmMarkerAppleServerAuthentication, 10);
LABEL_20:
  if (!SecPolicyRemoveWeakHashOptions(v11) || !SecPolicyAddStrongKeySizeOptions(v11))
  {
LABEL_27:
    v21 = 0;
    goto LABEL_23;
  }

  CFDictionaryAddValue(v11, @"Revocation", @"AnyRevocationMethod");
  v21 = SecPolicyCreate(a2, a3, v11);
LABEL_23:
  CFRelease(v11);
  return v21;
}

uint64_t requireUATPinning(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!os_variant_allows_internal_security_policies())
  {
    v4 = secLogObjForScope("pinningQA");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "could not disable pinning: not an internal release";
LABEL_7:
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
    }

    return 1;
  }

  v2 = CFStringCreateWithFormat(0, 0, @"AppleServerAuthenticationNoPinning%@", a1);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  if (!CFPreferencesGetAppBooleanValue(v2, @"com.apple.security", 0))
  {
    v7 = secLogObjForScope("pinningQA");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "could not disable pinning: %@ not true", buf, 0xCu);
    }

    CFRelease(v3);
    if (CFPreferencesGetAppBooleanValue(@"AppleServerAuthenticationNoPinning", @"com.apple.security", 0))
    {
      return 0;
    }

    v4 = secLogObjForScope("pinningQA");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "could not disable pinning: AppleServerAuthenticationNoPinning not true";
      goto LABEL_7;
    }

    return 1;
  }

  CFRelease(v3);
  return 0;
}

BOOL SecPolicyAddAppleAnchorOptions(const __CFDictionary *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    add_element(a1, @"AnchorApple", Mutable);
    CFRelease(Mutable);
  }

  return Mutable != 0;
}

void add_leaf_prod_qa_element(const __CFDictionary *a1, const void *a2, const void *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Value = CFDictionaryGetValue(a1, @"LeafMarkersProdAndQA");
  if (Value)
  {
    v8 = Value;
    v9 = CFDictionaryGetValue(Value, @"ProdMarker");
    v10 = CFDictionaryGetValue(v8, @"QAMarker");
    if (v9 && (v11 = CFGetTypeID(v9), v11 == CFArrayGetTypeID()) && v10 && (v12 = CFGetTypeID(v10), v12 == CFArrayGetTypeID()))
    {
      CFRetain(v9);
      CFRetain(v10);
    }

    else
    {
      v13 = MEMORY[0x1E695E9C0];
      v14 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v15 = CFArrayCreateMutable(0, 0, v13);
      CFArrayAppendValue(v14, v9);
      CFArrayAppendValue(v15, v10);
      v10 = v15;
      v9 = v14;
    }

    CFArrayAppendValue(v9, a2);
    CFArrayAppendValue(v10, a3);
    CFDictionaryAddValue(Mutable, @"ProdMarker", v9);
    CFDictionaryAddValue(Mutable, @"QAMarker", v10);
    if (v9)
    {
      CFRelease(v9);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    CFDictionaryAddValue(Mutable, @"ProdMarker", a2);
    CFDictionaryAddValue(Mutable, @"QAMarker", a3);
  }

  CFDictionarySetValue(a1, @"LeafMarkersProdAndQA", Mutable);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void add_leaf_prod_qa_markers_value_string(const __CFDictionary *a1, void *a2, void *a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v10 = @"1.2.840.113635.100.6.48.1";
  keys[0] = @"1.2.840.113635.100.6.48.1";
  v8 = a3;
  values = a2;
  v4 = MEMORY[0x1E695E9D8];
  v5 = MEMORY[0x1E695E9E8];
  v6 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = CFDictionaryCreate(0, &v10, &v8, 1, v4, v5);
  add_leaf_prod_qa_element(a1, v6, v7);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void add_oid(const __CFDictionary *a1, const void *a2, UInt8 *bytes, CFIndex length)
{
  if ((length & 0x8000000000000000) == 0)
  {
    v6 = CFDataCreate(*MEMORY[0x1E695E480], bytes, length);
    if (v6)
    {
      v7 = v6;
      add_element(a1, a2, v6);

      CFRelease(v7);
    }
  }
}

CFDataRef SecCertificateCopyNormalizedIssuerSequence(SecCertificateRef certificate)
{
  if (certificate && (v1 = *(certificate + 72)) != 0)
  {
    return SecCopySequenceFromContent(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t DERLengthOfLength(unint64_t a1)
{
  if (a1 < 0x80)
  {
    return 1;
  }

  v2 = a1;
  result = 1;
  do
  {
    ++result;
    v3 = v2 > 0xFF;
    v2 >>= 8;
  }

  while (v3);
  return result;
}

CFDataRef SecCertificateCopySerialNumberData(SecCertificateRef certificate, CFErrorRef *error)
{
  if (certificate)
  {
    v2 = *(certificate + 71);
    if (v2)
    {
      CFRetain(*(certificate + 71));
    }
  }

  else
  {
    v2 = 0;
    if (error)
    {
      *error = CFErrorCreate(0, *MEMORY[0x1E695E638], -26275, 0);
    }
  }

  return v2;
}

__CFData *SecDERItemCopySequence(uint64_t a1)
{
  v7 = DERLengthOfLength(*(a1 + 8));
  v2 = v7 + *(a1 + 8) + 1;
  if (v2 < 0)
  {
    return 0;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v2);
  CFDataSetLength(Mutable, v2);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  *MutableBytePtr = 48;
  v5 = MutableBytePtr + 1;
  if (DEREncodeLength(*(a1 + 8), (MutableBytePtr + 1), &v7))
  {
    if (!Mutable)
    {
      return Mutable;
    }

    CFRelease(Mutable);
    return 0;
  }

  memcpy(&v5[v7], *a1, *(a1 + 8));
  return Mutable;
}

__CFData *SecCopySequenceFromContent(const __CFData *a1)
{
  if (CFDataGetLength(a1) < 0)
  {
    return 0;
  }

  v3[0] = CFDataGetBytePtr(a1);
  v3[1] = CFDataGetLength(a1);
  return SecDERItemCopySequence(v3);
}

CFDataRef SecCertificateCopyNormalizedSubjectSequence(SecCertificateRef certificate)
{
  if (certificate && (v1 = *(certificate + 73)) != 0)
  {
    return SecCopySequenceFromContent(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t SecCertificateGetPolicyConstraints(uint64_t a1)
{
  if (*(a1 + 308))
  {
    return a1 + 308;
  }

  else
  {
    return 0;
  }
}

uint64_t SecCertificateHasUnknownCriticalExtension(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 296);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t SecPolicyCheckCertNonEmptySubject(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 192))
    {
      return 1;
    }

    if ((SecCertificateIsCA(a1) & 1) == 0)
    {
      v3 = *(a1 + 456);
      if (v3)
      {
        if (*(v3 + 16) == 1)
        {
          return 1;
        }
      }
    }
  }

  else
  {
    SecCertificateIsCA(0);
  }

  return 0;
}

BOOL SecCertificateAppendToXPCArray(uint64_t a1, xpc_object_t xarray, __CFString **a3)
{
  if (!a1)
  {
    return 1;
  }

  v4 = *(a1 + 24);
  if ((v4 & 0x8000000000000000) != 0)
  {
    return 1;
  }

  v5 = *(a1 + 16);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    xpc_array_set_data(xarray, 0xFFFFFFFFFFFFFFFFLL, v5, v4);
    return 1;
  }

  return SecError(-50, a3, @"failed to der encode certificate");
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_RSASignatureMessagePKCS1v15SHA256(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:RSA:digest-PKCS1v15:SHA256");
  v8 = ccsha256_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15SHA256(uint64_t a1, uint64_t a2, const __CFData *a3, __CFString **a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15SHA256_block_invoke;
  v5[3] = &__block_descriptor_40_e19_C16__0____CFData__8l;
  v5[4] = a2;
  return SecKeyRSAVerifyAdaptorCopyResult(a1, a3, a4, v5);
}

__CFData *SecKeyAlgorithmAdaptorCopyBigEndianToCCUnit(uint64_t *a1, const __CFData *a2, uint64_t a3, __CFString **a4)
{
  if (a1[3] == 1)
  {

    return SecKeyRunAlgorithmAndCopyResult(a1, 0, 0, a4);
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v9 = *a1;
    _SecKeyCheck(*a1, "SecKeyGetBlockSize");
    v10 = *(*(v9 + 16) + 80);
    if (v10)
    {
      v11 = v10(v9);
    }

    else
    {
      v11 = 0;
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __SecKeyAlgorithmAdaptorCopyBigEndianToCCUnit_block_invoke;
    v13[3] = &unk_1E70E0818;
    v13[4] = &v14;
    v13[5] = a1;
    v13[6] = a3;
    v13[7] = a4;
    PerformWithBigEndianToCCUnit(a2, v11, v13);
    v12 = v15[3];
    _Block_object_dispose(&v14, 8);
    return v12;
  }
}

void sub_1887F2870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_EncryptDecrypt_RSAEncryptionRaw(uint64_t a1, const __CFData *a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:encrypt:RSA:raw-cc");

  return SecKeyAlgorithmAdaptorCopyBigEndianToCCUnit(a1, a2, a3, a4);
}

void PerformWithBigEndianToCCUnit(const __CFData *a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    Length = CFDataGetLength(a1);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __PerformWithBigEndianToCCUnit_block_invoke;
    v10[3] = &unk_1E70E0840;
    if (Length <= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = Length;
    }

    v9 = v8 + 7;
    v12 = v8;
    v13 = Length;
    v14 = a1;
    v11 = v6;
    PerformWithCFDataBuffer(v9 & 0xFFFFFFFFFFFFFFF8, v10);
  }

  else
  {
    (*(v5 + 2))(v5, 0);
  }
}

void __SecKeyAlgorithmAdaptorCopyBigEndianToCCUnit_block_invoke(uint64_t a1, const __CFData *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = SecKeyRunAlgorithmAndCopyResult(*(a1 + 40), a2, *(a1 + 48), *(a1 + 56));
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  if (v4)
  {
    v5 = **(a1 + 40);
    _SecKeyCheck(v5, "SecKeyGetBlockSize");
    v6 = *(v5[2] + 80);
    if (v6)
    {
      v7 = v6(v5);
    }

    else
    {
      v7 = 0;
    }

    v8 = SecKeyRSACopyCCUnitToBigEndian(v4, v7);
    v9 = *(v3 + 24);
    if (v9)
    {
      CFRelease(v9);
    }

    *(v3 + 24) = v8;
  }
}

uint64_t __PerformWithBigEndianToCCUnit_block_invoke(uint64_t a1, uint64_t a2)
{
  CFDataGetBytePtr(*(a1 + 56));
  ccn_read_uint();
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void SecRSAPublicKeyDestroy(uint64_t a1)
{
  if (*(a1 + 24))
  {
    cc_clear();
    free(*(a1 + 24));
    *(a1 + 24) = 0;
  }
}

uint64_t SecCertificateIsSelfSigned(void *a1, _BYTE *a2)
{
  if (!SecCertificateIsCertificate(a1))
  {
    return 4294941021;
  }

  if (!a2)
  {
    return 4294967246;
  }

  IsSelfSigned = _SecCertificateIsSelfSigned(a1);
  result = 0;
  *a2 = IsSelfSigned;
  return result;
}

CFDataRef SecCertificateCopySubjectPublicKeyInfoSHA256Digest(const void *a1)
{
  result = SecCertificateCopySPKIEncoded(a1);
  if (result)
  {
    v3 = result;
    v4 = CFGetAllocator(a1);
    BytePtr = CFDataGetBytePtr(v3);
    Length = CFDataGetLength(v3);
    v7 = SecSHA256DigestCreate(v4, BytePtr, Length);
    CFRelease(v3);
    return v7;
  }

  return result;
}

OSStatus SecStaticCodeCreateWithPath(CFURLRef path, SecCSFlags flags, SecStaticCodeRef *staticCode)
{
  if (flags < 2)
  {
    v4 = Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()();
    Security::SecCFObject::allocate(0x298, *(v4 + 200), v5);
    Security::cfString(__p, path);
    if (v9 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    Security::CodeSigning::DiskRep::bestGuess(v6, 0);
  }

  Security::MacOSError::throwMe(0xFFFEFA02);
}

void sub_1887F2D64(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  Security::SecCFObject::operator delete(v15);
  switch(a2)
  {
    case 6:
      v18 = __cxa_begin_catch(a1);
      if (v18[36] == 8)
      {
        break;
      }

LABEL_6:
      (*(*v18 + 24))(v18);
      break;
    case 5:
      goto LABEL_5;
    case 4:
      v18 = __cxa_begin_catch(a1);
      v20 = v18[36];
      if (v20 > 0x1A)
      {
        goto LABEL_6;
      }

      v21 = 1 << v20;
      if ((v21 & 0x800108) == 0 && (v21 & 0x4014000) == 0)
      {
        goto LABEL_6;
      }

      break;
    case 3:
LABEL_5:
      v19 = __cxa_begin_catch(a1);
      (*(*v19 + 24))(v19);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v22);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x1887F2D24);
}

uint64_t Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()()
{
  os_unfair_lock_lock(&unk_1EA91CEF8);
  if (!Security::CodeSigning::gCFObjects)
  {
    Security::CodeSigning::gCFObjects = Security::ModuleNexusCommon::create(&Security::CodeSigning::gCFObjects, Security::ModuleNexus<Security::CodeSigning::CFObjects>::make);
  }

  os_unfair_lock_unlock(&unk_1EA91CEF8);
  return Security::CodeSigning::gCFObjects;
}

void sub_1887F2FC4(void *a1)
{
  __cxa_begin_catch(a1);
  os_unfair_lock_unlock(&unk_1EA91CEF8);
  __cxa_rethrow();
}

uint64_t Security::SecCFObject::allocate(Security::SecCFObject *this, uint64_t a2, const Security::CFClass *a3)
{
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v6, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  atomic_store(0, (Instance + 16));
  return Instance + 24;
}

void *Security::cfString(Security *this, const __CFURL *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!a2 || (v3 = this, memset(__b, 170, sizeof(__b)), this = CFURLGetFileSystemRepresentation(a2, 1u, __b, 1025), !this))
  {
    Security::CFError::throwMe(this);
  }

  return std::string::basic_string[abi:ne200100]<0>(v3, __b);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void Security::CodeSigning::DiskRep::bestGuess(char *a1, unsigned int *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a2 || (a2[6] & 1) == 0)
  {
    v3.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v3.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v14.st_blksize = v3;
    *v14.st_qspare = v3;
    *&v14.st_size = v3;
    v14.st_ctimespec = v3;
    v14.st_birthtimespec = v3;
    v14.st_atimespec = v3;
    v14.st_mtimespec = v3;
    *&v14.st_dev = v3;
    *&v14.st_uid = v3;
    if (stat(a1, &v14))
    {
      v10 = __error();
      Security::UnixError::throwMe(*v10);
    }

    if ((v14.st_mode & 0xF000) == 0x4000)
    {
      operator new();
    }

    __p = Security::makeCFURL(a1, 0, 0, v4);
    if (__p)
    {
      v12 = _CFBundleCreateWithExecutableURLIfMightBeBundle();
      if (v12)
      {
        operator new();
      }

      Security::CFRef<__CFBundle *>::~CFRef(&v12);
    }

    Security::CFRef<__CFURL const*>::~CFRef(&__p);
  }

  v11 = 0xAAAAAAAAFFFFFFFFLL;
  Security::UnixPlusPlus::FileDesc::open(&v11, a1, 0, 438);
  v5 = v11;
  memset(&v14, 170, 28);
  if (Security::UnixPlusPlus::FileDesc::read(v11, &v14, 0x1CuLL, 0) == 28)
  {
    v6 = -4;
    do
    {
      if (__CFADD__(v6++, 1))
      {
        break;
      }

      st_ino_high = 0;
      if (v14.st_dev <= -889275715)
      {
        if (v14.st_dev != -1095041334)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v14.st_dev > -822415875)
        {
          if ((v14.st_dev + 17958194) < 2)
          {
            st_ino_high = HIDWORD(v14.st_ino);
          }

          else if (v14.st_dev == -822415874 || v14.st_dev == -805638658)
          {
            st_ino_high = bswap32(HIDWORD(v14.st_ino));
          }

LABEL_21:
          if (st_ino_high <= 0xB && ((0x9E4u >> st_ino_high) & 1) != 0)
          {
            operator new();
          }

          v14.st_mtimespec.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v9.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v9.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          *&v14.st_uid = v9;
          v14.st_atimespec = v9;
          *&v14.st_dev = v9;
          if (Security::UnixPlusPlus::FileDesc::read(v5, &v14, 0x38uLL, 0) == 56)
          {
            if (DYLDCache::matchArchitecture(&v14))
            {
              operator new();
            }
          }

          operator new();
        }

        if (v14.st_dev != -889275714)
        {
          goto LABEL_21;
        }
      }
    }

    while (Security::UnixPlusPlus::FileDesc::read(v5, &v14, 0x1CuLL, bswap32(v14.st_uid)) == 28);
  }

  st_ino_high = 0;
  goto LABEL_21;
}

void sub_1887F3CB4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::unique_ptr<Security::Universal>::~unique_ptr[abi:ne200100](&a15);
  Security::CodeSigning::SingleDiskRep::~SingleDiskRep(v26);
  MEMORY[0x18CFD9760](v26, 0x10B3C40BD7F8033);
  Security::UnixPlusPlus::FileDesc::closeAndLog(&a10);
  if (a2 == 1)
  {
    v29 = __cxa_begin_catch(a1);
    if ((*(*v29 + 32))(v29) == 2)
    {
      Security::MacOSError::throwMe(0xFFFEFA04);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x1887F4010);
}

void sub_1887F4008(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

CFURLRef Security::makeCFURL(Security *this, const char *a2, uint64_t a3, const __CFURL *a4)
{
  v4 = a2;
  if (!a3)
  {
    if (this)
    {
      v6 = CFStringCreateWithCString(0, this, 0x8000100u);
      if (!v6)
      {
        v6 = CFStringCreateWithCString(0, this, 0x600u);
        if (!v6)
        {
          goto LABEL_15;
        }
      }

      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v12 = v8;
    v9 = CFURLCreateWithFileSystemPath(0, v8, kCFURLPOSIXPathStyle, v4);
    goto LABEL_14;
  }

  if (!this)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v6 = CFStringCreateWithCString(0, this, 0x8000100u);
  if (!v6)
  {
    v6 = CFStringCreateWithCString(0, this, 0x600u);
    if (!v6)
    {
LABEL_15:
      Security::CFError::throwMe(v6);
    }
  }

  v7 = v6;
LABEL_11:
  v12 = v7;
  v9 = MEMORY[0x18CFD91B0](0);
LABEL_14:
  v10 = v9;
  Security::CFRef<__CFString const*>::~CFRef(&v12);
  return v10;
}

void sub_1887F4110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFString const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

const void **Security::CFRef<__CFString const*>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

pthread_mutex_t *Security::Mutex::Mutex(pthread_mutex_t *this)
{
  v2 = pthread_mutex_init(this, 0);
  if (v2)
  {
    Security::UnixError::throwMe(v2);
  }

  return this;
}

const void **Security::CodeSigning::BundleDiskRep::setup(uint64_t a1, uint64_t a2)
{
  v90 = *MEMORY[0x1E69E9840];
  *(a1 + 177) = 0;
  *(a1 + 72) = 0;
  v80 = CFBundleCopyExecutableURL(*(a1 + 24));
  v79 = _CFBundleCopyInfoPlistURL();
  memset(&v78, 170, sizeof(v78));
  v4 = (*(*a1 + 48))(a1);
  Security::cfStringRelease(&v78, v4);
  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v78.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v78.__r_.__value_.__l.__size_;
  }

  memset(v77, 170, sizeof(v77));
  v6 = v77;
  std::string::basic_string[abi:ne200100](v77, size + 9);
  if (SHIBYTE(v77[2]) < 0)
  {
    v6 = v77[0];
  }

  if (size)
  {
    if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v78;
    }

    else
    {
      v7 = v78.__r_.__value_.__r.__words[0];
    }

    memmove(v6, v7, size);
  }

  strcpy(v6 + size, "/Contents");
  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = v78.__r_.__value_.__l.__size_;
  }

  memset(v76, 170, sizeof(v76));
  v9 = v76;
  std::string::basic_string[abi:ne200100](v76, v8 + 14);
  if (SHIBYTE(v76[2]) < 0)
  {
    v9 = v76[0];
  }

  if (v8)
  {
    if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v78;
    }

    else
    {
      v10 = v78.__r_.__value_.__r.__words[0];
    }

    memmove(v9, v10, v8);
  }

  strcpy(v9 + v8, "/Support Files");
  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v78.__r_.__value_.__l.__size_;
  }

  memset(&v89, 170, sizeof(v89));
  v12 = &v89;
  std::string::basic_string[abi:ne200100](&v89, v11 + 10);
  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v89.__r_.__value_.__r.__words[0];
  }

  if (v11)
  {
    if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v78;
    }

    else
    {
      v13 = v78.__r_.__value_.__r.__words[0];
    }

    memmove(v12, v13, v11);
  }

  strcpy(v12 + v11, "/Versions/");
  v14 = "Current";
  if (a2 && *(a2 + 8))
  {
    v14 = *(a2 + 8);
  }

  v15 = strlen(v14);
  v16 = std::string::append(&v89, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  *&__b[16] = *(&v16->__r_.__value_.__l + 2);
  *__b = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(__b, "/.", 2uLL);
  __sz = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if ((__b[23] & 0x80000000) != 0)
  {
    operator delete(*__b);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v77[2]) >= 0)
  {
    v19 = v77;
  }

  else
  {
    v19 = v77[0];
  }

  if (!access(v19, 0))
  {
    memset(__b, 0, 24);
    *&__b[24] = 0xAAAAAAAA00000000;
    std::string::basic_string[abi:ne200100]<0>(&v89, "^Contents$");
    Security::CodeSigning::DirValidator::require(__b, &v89, 2, 0);
  }

  if (SHIBYTE(v76[2]) >= 0)
  {
    v20 = v76;
  }

  else
  {
    v20 = v76[0];
  }

  if (access(v20, 0))
  {
    if (a2 && (*(a2 + 48) & 1) != 0)
    {
      goto LABEL_191;
    }

    if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!access(__sz.__r_.__value_.__l.__data_, 0))
      {
        std::string::__init_copy_ctor_external(&v74, __sz.__r_.__value_.__l.__data_, __sz.__r_.__value_.__l.__size_);
LABEL_57:
        if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v74;
        }

        else
        {
          v23 = v74.__r_.__value_.__r.__words[0];
        }

        *__b = Security::makeCFURL(v23, 0, 0, v21);
        Unique = _CFBundleCreateUnique();
        Security::CFRef<__CFURL const*>::~CFRef(__b);
        if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v74.__r_.__value_.__l.__data_);
        }

        if (Unique)
        {
          v25 = *(a1 + 24);
          if (v25)
          {
            CFRelease(v25);
          }

          *(a1 + 24) = Unique;
          if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v73, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
          }

          else
          {
            v73 = v78;
          }

          memset(__p, 170, sizeof(__p));
          std::string::basic_string[abi:ne200100]<0>(__p, "Current");
          memset(__b, 170, sizeof(__b));
          if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v26 = v73.__r_.__value_.__l.__size_;
          }

          memset(&v89, 170, sizeof(v89));
          v27 = &v89;
          std::string::basic_string[abi:ne200100](&v89, v26 + 17);
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v27 = v89.__r_.__value_.__r.__words[0];
          }

          if (v26)
          {
            if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v28 = &v73;
            }

            else
            {
              v28 = v73.__r_.__value_.__r.__words[0];
            }

            memmove(v27, v28, v26);
          }

          strcpy(v27 + v26, "/Versions/Current");
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &v89;
          }

          else
          {
            v29 = v89.__r_.__value_.__r.__words[0];
          }

          v30 = readlink(v29, __b, 0x3FFuLL);
          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }

          if (v30 >= 1)
          {
            __b[v30] = 0;
            std::string::basic_string[abi:ne200100]<0>(&v87, "(Current|");
            std::string::basic_string[abi:ne200100]<0>(v83, __b);
            Security::CodeSigning::ResourceBuilder::escapeRE(&v81, v83);
            if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = &v81;
            }

            else
            {
              v31 = v81.__r_.__value_.__r.__words[0];
            }

            if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v32 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v32 = v81.__r_.__value_.__l.__size_;
            }

            v33 = std::string::append(&v87, v31, v32);
            v34 = *&v33->__r_.__value_.__l.__data_;
            v89.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
            *&v89.__r_.__value_.__l.__data_ = v34;
            v33->__r_.__value_.__l.__size_ = 0;
            v33->__r_.__value_.__r.__words[2] = 0;
            v33->__r_.__value_.__r.__words[0] = 0;
            v35 = std::string::append(&v89, ")", 1uLL);
            v36 = v35->__r_.__value_.__r.__words[0];
            v86[0] = v35->__r_.__value_.__l.__size_;
            *(v86 + 7) = *(&v35->__r_.__value_.__r.__words[1] + 7);
            v37 = HIBYTE(v35->__r_.__value_.__r.__words[2]);
            v35->__r_.__value_.__l.__size_ = 0;
            v35->__r_.__value_.__r.__words[2] = 0;
            v35->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            __p[0] = v36;
            __p[1] = v86[0];
            *(&__p[1] + 7) = *(v86 + 7);
            HIBYTE(__p[2]) = v37;
            if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v89.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v81.__r_.__value_.__l.__data_);
            }

            if (v84 < 0)
            {
              operator delete(v83[0]);
            }

            if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v87.__r_.__value_.__l.__data_);
            }
          }

          memset(&v81, 0, sizeof(v81));
          v82 = 0xAAAAAAAA00000000;
          std::string::basic_string[abi:ne200100]<0>(&v89, "^Versions$");
          Security::CodeSigning::DirValidator::require(&v81, &v89, 34, 0);
        }

        Security::MacOSError::throwMe(0xFFFEFA04);
      }
    }

    else if (!access(&__sz, 0))
    {
      v74 = __sz;
      goto LABEL_57;
    }

    if (a2)
    {
LABEL_191:
      if (*(a2 + 8))
      {
        Security::MacOSError::throwMe(0xFFFEFA04);
      }
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  InfoDictionary = CFBundleGetInfoDictionary(*(a1 + 24));
  Value = CFDictionaryGetValue(InfoDictionary, @"MainHTML");
  CFDictionaryGetValue(InfoDictionary, @"IFMajorVersion");
  v87.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
  v40 = CFBundleCopyExecutableURL(*(a1 + 24));
  v87.__r_.__value_.__r.__words[0] = v40;
  if (!v40 || Value)
  {
    Security::CFRef<__CFURL const*>::~CFRef(&v87.__r_.__value_.__l.__data_);
    if (Value)
    {
      v48 = CFGetTypeID(Value);
      if (v48 == CFStringGetTypeID())
      {
        Security::cfString(__b, Value);
        v49 = CFBundleCopySupportFilesDirectoryURL(*(a1 + 24));
        v89.__r_.__value_.__r.__words[0] = v49;
        if (__b[23] >= 0)
        {
          v51 = __b;
        }

        else
        {
          v51 = *__b;
        }

        CFURL = Security::makeCFURL(v51, 0, v49, v50);
        v53 = *(a1 + 64);
        if (v53)
        {
          CFRelease(v53);
        }

        *(a1 + 64) = CFURL;
        Security::CFRef<__CFURL const*>::~CFRef(&v89.__r_.__value_.__l.__data_);
        if ((__b[23] & 0x80000000) != 0)
        {
          operator delete(*__b);
        }

        if (*(a1 + 64))
        {
          operator new();
        }
      }

      Security::MacOSError::throwMe(0xFFFEFA2CLL);
    }

    v89.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
    v89.__r_.__value_.__r.__words[0] = _CFBundleCopyInfoPlistURL();
    if (v89.__r_.__value_.__r.__words[0])
    {
      Security::CFRef<__CFURL const*>::operator=((a1 + 64), &v89.__r_.__value_.__l.__data_);
      operator new();
    }

    Security::CFRef<__CFURL const*>::~CFRef(&v89.__r_.__value_.__l.__data_);
    memset(__b, 170, 24);
    (*(*a1 + 56))(&v89, a1);
    memset(__b, 0, 24);
    if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v59 = &v89;
    }

    else
    {
      v59 = v89.__r_.__value_.__r.__words[0];
    }

    *&v87.__r_.__value_.__l.__data_ = v59;
    v60 = fts_open(&v87.__r_.__value_.__l.__data_, 28, 0);
    v61 = 1;
    while (1)
    {
      v62 = v61;
      do
      {
        while (1)
        {
          v63 = fts_read(v60);
          if (!v63)
          {
            fts_close(v60);
            if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v89.__r_.__value_.__l.__data_);
            }

            v69 = __b[23];
            if (__b[23] < 0)
            {
              v69 = *&__b[8];
            }

            if (v69)
            {
              if (__b[23] >= 0)
              {
                v70 = __b;
              }

              else
              {
                v70 = *__b;
              }

              v71 = Security::makeCFURL(v70, 0, 0, v68);
              v72 = *(a1 + 64);
              if (v72)
              {
                CFRelease(v72);
              }

              *(a1 + 64) = v71;
              operator new();
            }

            Security::MacOSError::throwMe(0xFFFEFA2CLL);
          }

          fts_info = v63->fts_info;
          if (fts_info != 8 && fts_info != 11)
          {
            break;
          }

          fts_path = v63->fts_path;
          if (!strcmp(&fts_path[v63->fts_pathlen - 5], ".dist"))
          {
            v67 = __b[23];
            if (__b[23] < 0)
            {
              v67 = *&__b[8];
            }

            if (v67)
            {
              Security::MacOSError::throwMe(0xFFFEFA2CLL);
            }

            std::string::__assign_external(__b, fts_path);
          }
        }
      }

      while (fts_info != 1);
      v61 = 0;
      if ((v62 & 1) == 0)
      {
        fts_set(v60, v63, 4);
        v61 = 0;
      }
    }
  }

  if (!a2 || !*(a2 + 8))
  {
    if (v80)
    {
      Security::CodeSigning::BundleDiskRep::checkMoved(a1, v80, v40);
    }

    if (v79)
    {
      *__b = 0xAAAAAAAAAAAAAAAALL;
      v41 = _CFBundleCopyInfoPlistURL();
      *__b = v41;
      if (v41)
      {
        Security::CodeSigning::BundleDiskRep::checkMoved(a1, v79, v41);
      }

      Security::CFRef<__CFURL const*>::~CFRef(__b);
    }
  }

  Security::CFRef<__CFURL const*>::operator=((a1 + 64), &v87.__r_.__value_.__l.__data_);
  (*(*a1 + 40))(__b, a1);
  if (__b[23] >= 0)
  {
    v42 = __b;
  }

  else
  {
    v42 = *__b;
  }

  v43 = Security::CodeSigning::DiskRep::bestFileGuess(v42, a2);
  Security::RefPointer<Security::CodeSigning::DiskRep>::setPointer(a1 + 104, v43);
  if ((__b[23] & 0x80000000) != 0)
  {
    operator delete(*__b);
  }

  v44 = *(*(**(a1 + 104) + 144))(*(a1 + 104));
  (*(*a1 + 40))(__b, a1);
  Security::CodeSigning::BundleDiskRep::checkPlainFile(a1, v44, __b);
  if ((__b[23] & 0x80000000) != 0)
  {
    operator delete(*__b);
  }

  v45 = CFBundleGetInfoDictionary(*(a1 + 24));
  v47 = v45 && (v46 = CFDictionaryGetValue(v45, @"CFBundlePackageType")) != 0 && CFEqual(v46, @"APPL") != 0;
  (*(**(a1 + 104) + 128))(__b);
  v54 = std::string::insert(__b, 0, "bundle with ", 0xCuLL);
  v55 = v54->__r_.__value_.__r.__words[0];
  v89.__r_.__value_.__r.__words[0] = v54->__r_.__value_.__l.__size_;
  *(v89.__r_.__value_.__r.__words + 7) = *(&v54->__r_.__value_.__r.__words[1] + 7);
  v56 = HIBYTE(v54->__r_.__value_.__r.__words[2]);
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v57 = v89.__r_.__value_.__r.__words[0];
  *(a1 + 80) = v55;
  *(a1 + 88) = v57;
  *(a1 + 95) = *(v89.__r_.__value_.__r.__words + 7);
  *(a1 + 103) = v56;
  if ((__b[23] & 0x80000000) != 0)
  {
    operator delete(*__b);
    if (!v47)
    {
      goto LABEL_145;
    }
  }

  else if (!v47)
  {
    goto LABEL_145;
  }

  std::operator+<char>();
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 80) = *__b;
  *(a1 + 96) = *&__b[16];
LABEL_145:
  *(a1 + 73) = v22 & v47;
  Security::CFRef<__CFURL const*>::~CFRef(&v87.__r_.__value_.__l.__data_);
  if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__sz.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v76[2]) < 0)
  {
    operator delete(v76[0]);
  }

  if (SHIBYTE(v77[2]) < 0)
  {
    operator delete(v77[0]);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  Security::CFRef<__CFURL const*>::~CFRef(&v79);
  return Security::CFRef<__CFURL const*>::~CFRef(&v80);
}

void sub_1887F5548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, const void *a42, const void *a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63, uint64_t _150)
{
  if (a66 < 0)
  {
    operator delete(__p);
  }

  if (*(v66 - 121) < 0)
  {
    operator delete(*(v66 - 144));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  Security::CFRef<__CFURL const*>::~CFRef(&a42);
  Security::CFRef<__CFURL const*>::~CFRef(&a44);
  _Unwind_Resume(a1);
}

CFURLRef Security::CodeSigning::BundleDiskRep::copyCanonicalPath(CFBundleRef *this)
{
  result = CFBundleCopyBundleURL(this[3]);
  if (!result)
  {
    Security::CFError::throwMe(0);
  }

  return result;
}

const void **Security::cfStringRelease(Security *this, const __CFURL *a2)
{
  v3 = a2;
  Security::cfString(this, a2);
  return Security::CFRef<__CFURL const*>::~CFRef(&v3);
}

void sub_1887F5AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFURL const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

const void **Security::CFRef<__CFURL const*>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *Security::CodeSigning::BundleDiskRep::checkMoved(Security::CodeSigning::BundleDiskRep *this, const __CFURL *a2, const __CFURL *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  memset(__s2, 170, sizeof(__s2));
  Security::cfString(v12, a2);
  if (v13 >= 0)
  {
    v6 = v12;
  }

  else
  {
    v6 = v12[0];
  }

  if (realpath_DARWIN_EXTSN(v6, __b))
  {
    Security::cfString(__p, a3);
    if (v11 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = realpath_DARWIN_EXTSN(v7, __s2) == 0;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v8 = 1;
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v8)
  {
    Security::MacOSError::throwMe(0xFFFEFA3DLL);
  }

  result = strcmp(__b, __s2);
  if (result)
  {
    LODWORD(v12[0]) = -67011;
    return std::__tree<int>::__emplace_unique_key_args<int,int const&>(this + 26, -67011, v12);
  }

  return result;
}

void sub_1887F5D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef *Security::CFRef<__CFURL const*>::operator=(CFTypeRef *a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRetain(*a2);
    v4 = *a2;
  }

  else
  {
    v4 = 0;
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = v4;
  return a1;
}

void Security::UnixPlusPlus::FileDesc::open(Security::UnixPlusPlus::FileDesc *this, const char *a2, int a3, int a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = open(a2, a3, a4 & 0xFFF);
  *this = v8;
  if (v8 == -1)
  {
    v11 = __error();
    if ((a4 & 0x7000) != 0x1000 || *v11 != 2)
    {
      v12 = __error();
      Security::UnixError::throwMe(*v12);
    }
  }

  else
  {
    *(this + 4) = 0;
    v9 = secLogObjForScope("unixio");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *this;
      *buf = 136315906;
      v14 = a2;
      v15 = 1024;
      v16 = a3;
      v17 = 1024;
      v18 = a4;
      v19 = 1024;
      v20 = v10;
      _os_log_debug_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEBUG, "open(%s,0x%x,0x%x) = %d", buf, 0x1Eu);
    }
  }
}

uint64_t Security::CodeSigning::DiskRep::bestFileGuess(char *a1, uint64_t a2)
{
  *v5 = 0xAAAAAAAAAAAAAAAALL;
  *&v5[24] = 0xAAAAAAAAAAAAAA00;
  v3 = 0xFFFFFFFF00000000;
  v4 = 0uLL;
  *&v5[16] = 0;
  if (a2)
  {
    v3 = *a2;
    v4 = *(a2 + 8);
    *v5 = *(a2 + 24);
    *&v5[9] = *(a2 + 33);
  }

  v5[0] = 1;
  return Security::CodeSigning::DiskRep::bestGuess(a1, &v3);
}

ssize_t Security::UnixPlusPlus::FileDesc::read(Security::UnixPlusPlus::FileDesc *this, void *a2, size_t a3, off_t a4)
{
  result = pread(this, a2, a3, a4);
  if (result == -1)
  {
    v5 = __error();
    Security::UnixError::throwMe(*v5);
  }

  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t Security::CodeSigning::SingleDiskRep::SingleDiskRep(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1EFA8C1B0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 16) = v3;
  }

  *(a1 + 40) = -1;
  *(a1 + 44) = 0;
  return a1;
}

Security::UnixPlusPlus::FileDesc *Security::CodeSigning::SingleDiskRep::fd(Security::CodeSigning::SingleDiskRep *this)
{
  v1 = (this + 40);
  if (*(this + 10) == -1)
  {
    v4 = *(this + 2);
    v2 = this + 16;
    v3 = v4;
    if (v2[23] >= 0)
    {
      v5 = v2;
    }

    else
    {
      v5 = v3;
    }

    Security::UnixPlusPlus::FileDesc::open(v1, v5, 0, 438);
  }

  return v1;
}

uint64_t Security::Universal::Universal(uint64_t a1, unsigned int *a2, off_t a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 56) = 0;
  v6 = (a1 + 56);
  *(a1 + 64) = 0;
  *(a1 + 48) = a1 + 56;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  memset(v35, 170, 28);
  if (Security::UnixPlusPlus::FileDesc::read(*a2, v35, 0x1CuLL, a3) != 28)
  {
    goto LABEL_47;
  }

  if (v35[0].i32[0] <= -805638659)
  {
    if (v35[0].i32[0] == -1095041334 || v35[0].i32[0] == -889275714)
    {
      v11 = bswap32(v35[0].u32[1]);
      *(a1 + 16) = v11;
      if (v11 <= 0x64)
      {
        v12 = 20 * v11 + 20;
        v13 = malloc_type_malloc(v12, 0x1000040A86A77D5uLL);
        *(a1 + 8) = v13;
        if (v13)
        {
          v14 = Security::UnixPlusPlus::FileDesc::read(*a2, v13, v12, *(a1 + 32) + 8);
          v15 = *(a1 + 8);
          if (v14 == v12)
          {
            v16 = *(a1 + 8);
            do
            {
              *v16 = vrev32q_s8(*v16);
              v16[1].i32[0] = bswap32(v16[1].u32[0]);
              v16 = (v16 + 20);
              v17 = *(a1 + 16);
              v18 = &v15[20 * v17];
            }

            while (v16 <= v18);
            if (v18->i32[0] == 16777228)
            {
              *(a1 + 16) = v17 + 1;
            }

            v19 = secLogObjForScope("macho");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v28 = *(a1 + 16);
              buf.st_dev = 134218240;
              *&buf.st_mode = a1;
              WORD2(buf.st_ino) = 1024;
              *(&buf.st_ino + 6) = v28;
              _os_log_debug_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEBUG, "%p is a fat file with %d architectures", &buf, 0x12u);
            }

            v32 = &v32;
            v33 = &v32;
            v34 = 0;
            if (*(a1 + 16))
            {
              operator new();
            }

            *&buf.st_dev = &__block_literal_global_17115;
            std::list<fat_arch *>::__sort<BOOL({block_pointer})(fat_arch const*,fat_arch const*)>(&v32, &v32, 0, &buf);
            if (v33 != &v32)
            {
              v31 = v33[2][1];
              v21 = *v6;
              if (*v6)
              {
                do
                {
                  while (1)
                  {
                    v22 = v21;
                    v23 = v21[4];
                    if (v31 >= v23)
                    {
                      break;
                    }

                    v21 = *v22;
                    if (!*v22)
                    {
                      goto LABEL_33;
                    }
                  }

                  if (v23 >= v31)
                  {
                    free(*(a1 + 8));
                    v29 = secLogObjForScope("SecError");
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      LOWORD(buf.st_dev) = 0;
                      _os_log_impl(&dword_1887D2000, v29, OS_LOG_TYPE_DEFAULT, "Error processing fat file: Two architectures have the same size", &buf, 2u);
                    }

                    Security::MacOSError::throwMe(0xFFFEF7A9);
                  }

                  v21 = v22[1];
                }

                while (v21);
              }

LABEL_33:
              operator new();
            }

            if ((*(a1 + 76) & 1) == 0)
            {
              v24.tv_sec = 0xAAAAAAAAAAAAAAAALL;
              v24.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
              *&buf.st_blksize = v24;
              *buf.st_qspare = v24;
              buf.st_birthtimespec = v24;
              *&buf.st_size = v24;
              buf.st_mtimespec = v24;
              buf.st_ctimespec = v24;
              *&buf.st_uid = v24;
              buf.st_atimespec = v24;
              *&buf.st_dev = v24;
              Security::UnixPlusPlus::FileDesc::fstat(*a2, &buf);
              if (buf.st_size)
              {
                v25 = secLogObjForScope("SecError");
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  v26.tv_sec = 0xAAAAAAAAAAAAAAAALL;
                  v26.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
                  *&buf.st_blksize = v26;
                  *buf.st_qspare = v26;
                  buf.st_birthtimespec = v26;
                  *&buf.st_size = v26;
                  buf.st_mtimespec = v26;
                  buf.st_ctimespec = v26;
                  *&buf.st_uid = v26;
                  buf.st_atimespec = v26;
                  *&buf.st_dev = v26;
                  Security::UnixPlusPlus::FileDesc::fstat(*a2, &buf);
                  *v36 = 134218240;
                  v37 = 0;
                  v38 = 2048;
                  st_size = buf.st_size;
                  _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "STRICT VALIDATION ERROR: Extra data after the last slice in a universal file (expected %zu found %zu)", v36, 0x16u);
                }

                *(a1 + 76) = 1;
              }
            }

            std::__list_imp<fat_arch *>::clear(&v32);
            return a1;
          }

          free(v15);
          v30 = 8;
        }

        else
        {
          v30 = *__error();
        }

        Security::UnixError::throwMe(v30);
      }

      goto LABEL_47;
    }

    v7 = -822415874;
LABEL_22:
    if (v35[0].i32[0] == v7)
    {
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 20) = vrev32_s8(*(v35 + 4));
      v8 = secLogObjForScope("macho");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v20 = NXGetArchInfoFromCpuType(*(a1 + 20), *(a1 + 24) & 0xFFFFFF);
        if (v20)
        {
          name = v20->name;
        }

        else
        {
          name = 0;
        }

LABEL_43:
        buf.st_dev = 134218242;
        *&buf.st_mode = a1;
        WORD2(buf.st_ino) = 2080;
        *(&buf.st_ino + 6) = name;
        _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%p is a thin file (%s)", &buf, 0x16u);
        return a1;
      }

      return a1;
    }

LABEL_47:
    Security::UnixError::throwMe(8);
  }

  if ((v35[0].i32[0] + 17958194) >= 2)
  {
    v7 = -805638658;
    goto LABEL_22;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = *(v35 + 4);
  v8 = secLogObjForScope("macho");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = NXGetArchInfoFromCpuType(*(a1 + 20), *(a1 + 24) & 0xFFFFFF);
    if (v9)
    {
      name = v9->name;
    }

    else
    {
      name = 0;
    }

    goto LABEL_43;
  }

  return a1;
}

void sub_1887F69C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__list_imp<fat_arch *>::clear(va);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*v17);
  _Unwind_Resume(a1);
}

void Security::UnixPlusPlus::FileDesc::closeAndLog(Security::UnixPlusPlus::FileDesc *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if ((v2 & 0x80000000) == 0)
  {
    v3 = 0;
    v4 = 2;
    while (close(v2) == -1 && v4)
    {
      v3 = *__error();
      if ((v3 & 0xFFFFFFFE) == 4)
      {
        --v4;
      }

      else
      {
        v5 = secLogObjForScope("unixio");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v6 = *this;
          *buf = 67109376;
          v10 = v6;
          v11 = 1024;
          v12 = v3;
          _os_log_debug_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEBUG, "close(%d) error %d", buf, 0xEu);
        }

        v4 = 0;
      }

      v2 = *this;
    }

    v7 = secLogObjForScope("unixio");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *this;
      *buf = 67109376;
      v10 = v8;
      v11 = 1024;
      v12 = v3;
      _os_log_debug_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEBUG, "close(%d) err: %d", buf, 0xEu);
    }

    *this = -1;
  }
}

Security::UnixError *Security::RefPointer<Security::CodeSigning::DiskRep>::setPointer(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v5 = pthread_mutex_lock((a1 + 8));
  if (v5)
  {
    Security::UnixError::throwMe(v5);
  }

  if (a2)
  {
    atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
  }

  Security::RefPointer<Security::CodeSigning::DiskRep>::release_internal(a1);
  *a1 = a2;
  result = pthread_mutex_unlock(v4);
  if (result)
  {
    Security::UnixError::throwMe(result);
  }

  return result;
}

void *Security::RefPointer<Security::CodeSigning::DiskRep>::release_internal(void *result)
{
  if (*result && atomic_fetch_add_explicit((*result + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v1 = result;
    result = *result;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *v1 = 0;
  }

  return result;
}

uint64_t Security::UnixPlusPlus::FileDesc::fstat(Security::UnixPlusPlus::FileDesc *this, stat *a2)
{
  result = fstat(this, a2);
  if (result)
  {
    v3 = __error();
    Security::UnixError::throwMe(*v3);
  }

  return result;
}

uint64_t *Security::CodeSigning::BundleDiskRep::checkPlainFile(uint64_t a1, Security::UnixPlusPlus::FileDesc *this, uint64_t a3)
{
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v10.st_blksize = v5;
  *v10.st_qspare = v5;
  v10.st_birthtimespec = v5;
  *&v10.st_size = v5;
  v10.st_mtimespec = v5;
  v10.st_ctimespec = v5;
  *&v10.st_uid = v5;
  v10.st_atimespec = v5;
  *v9.st_qspare = v5;
  *&v10.st_dev = v5;
  *&v9.st_size = v5;
  *&v9.st_blksize = v5;
  v9.st_ctimespec = v5;
  v9.st_birthtimespec = v5;
  v9.st_atimespec = v5;
  v9.st_mtimespec = v5;
  *&v9.st_dev = v5;
  *&v9.st_uid = v5;
  Security::UnixPlusPlus::FileDesc::fstat(this, &v10);
  if (*(a3 + 23) >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  result = lstat(v6, &v9);
  if (result)
  {
    v8 = __error();
    Security::UnixError::throwMe(*v8);
  }

  if ((v10.st_mode & 0xF000) != 0x8000 || v10.st_dev != v9.st_dev || v10.st_ino != v9.st_ino)
  {
    v10.st_dev = -67015;
    return std::__tree<int>::__emplace_unique_key_args<int,int const&>((a1 + 208), -67015, &v10);
  }

  return result;
}

void Security::Universal::architecture(Security::Universal *this)
{
  if (*(this + 1))
  {
    v2 = Security::Universal::bestNativeArch(this);

    Security::Universal::findImage(this, v2, SHIDWORD(v2));
  }

  operator new();
}

void Security::CodeSigning::MachORep::format(Security::CodeSigning::MachORep *this@<X0>, void *a2@<X8>)
{
  v3 = (*(*this + 80))(this);
  if (v3)
  {
    v4 = v3;
    v25[0] = 0;
    v25[1] = 0;
    v24 = v25;
    Security::Universal::architectures(v3, &v24);
    if (*(v4 + 8))
    {
      memset(&v23, 170, sizeof(v23));
      std::string::basic_string[abi:ne200100]<0>(&v23, "Mach-O universal (");
      v5 = v24;
      if (v24 != v25)
      {
        do
        {
          if (v5 != v24)
          {
            std::string::append(&v23, " ", 1uLL);
          }

          Security::Architecture::displayName(&__p, v5 + 7);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(&v23, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v8 = *(v5 + 1);
          if (v8)
          {
            do
            {
              v9 = v8;
              v8 = *v8;
            }

            while (v8);
          }

          else
          {
            do
            {
              v9 = *(v5 + 2);
              v10 = *v9 == v5;
              v5 = v9;
            }

            while (!v10);
          }

          v5 = v9;
        }

        while (v9 != v25);
      }

      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v11 = v23.__r_.__value_.__l.__size_;
      }

      memset(a2, 170, 24);
      std::string::basic_string[abi:ne200100](a2, v11 + 1);
      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      if (v11)
      {
        if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v23;
        }

        else
        {
          v12 = v23.__r_.__value_.__r.__words[0];
        }

        memmove(a2, v12, v11);
      }

      *(a2 + v11) = 41;
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      v13 = v23.__r_.__value_.__r.__words[0];
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "Mach-O thin (");
      Security::Architecture::displayName(v20, v24 + 7);
      if ((v21 & 0x80u) == 0)
      {
        v14 = v20;
      }

      else
      {
        v14 = v20[0];
      }

      if ((v21 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v20[1];
      }

      v16 = std::string::append(&__p, v14, v15);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v23.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v23.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = std::string::append(&v23, ")", 1uLL);
      v19 = *&v18->__r_.__value_.__l.__data_;
      a2[2] = *(&v18->__r_.__value_.__l + 2);
      *a2 = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      v13 = __p.__r_.__value_.__r.__words[0];
    }

    operator delete(v13);
LABEL_48:
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v25[0]);
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(a2, "Mach-O (unrecognized format)");
}

void sub_1887F7168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(a28);
  _Unwind_Resume(a1);
}

uint64_t Security::Universal::architectures(uint64_t this, uint64_t a2)
{
  v3 = this;
  if (!*(this + 8))
  {
    Security::Universal::architecture(this);
  }

  if (*(this + 16))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(*(v3 + 8) + v4);
      this = std::__tree<Security::Architecture>::__emplace_unique_key_args<Security::Architecture,Security::Architecture>(a2, v6, &v6);
      ++v5;
      v4 += 20;
    }

    while (v5 < *(v3 + 16));
  }

  return this;
}

uint64_t Security::MachO::MachO(uint64_t a1, unsigned int *a2, off_t a3, uint64_t a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  *(a1 + 36) = v6;
  *(a1 + 40) = *(a2 + 4);
  *a1 = &unk_1EFA8AC00;
  *(a1 + 48) = a3;
  *(a1 + 56) = a4;
  *(a1 + 104) = 0;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v53.st_blksize = v8;
    *v53.st_qspare = v8;
    v53.st_birthtimespec = v8;
    *&v53.st_size = v8;
    v53.st_mtimespec = v8;
    v53.st_ctimespec = v8;
    *&v53.st_uid = v8;
    v53.st_atimespec = v8;
    *&v53.st_dev = v8;
    Security::UnixPlusPlus::FileDesc::fstat(v6, &v53);
    *(a1 + 56) = v53.st_size;
    v7 = *(a1 + 48);
    v6 = *a2;
  }

  if (Security::UnixPlusPlus::FileDesc::read(v6, (a1 + 64), 0x1CuLL, v7) != 28)
  {
    goto LABEL_70;
  }

  Security::MachOBase::initHeader(a1, (a1 + 64));
  v9 = *(*(a1 + 8) + 20);
  v10 = bswap32(v9);
  if (*(a1 + 33))
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = malloc_type_malloc(v11, 0x100004000313F17uLL);
  *(a1 + 96) = v12;
  if (!v12)
  {
    v52 = __error();
    Security::UnixError::throwMe(*v52);
  }

  v13 = 28;
  if (*(a1 + 32))
  {
    v13 = 32;
  }

  if (Security::UnixPlusPlus::FileDesc::read(*a2, v12, v11, v13 + *(a1 + 48)) != v11)
  {
    goto LABEL_70;
  }

  Command = *(a1 + 96);
  *(a1 + 16) = Command;
  LODWORD(v15) = *(*(a1 + 8) + 20);
  v16 = bswap32(v15);
  v15 = *(a1 + 33) ? v16 : v15;
  v17 = v15 + Command;
  *(a1 + 24) = v17;
  if (Command + 8 > v17)
  {
    goto LABEL_70;
  }

  if (!*(a1 + 56))
  {
    return a1;
  }

  if (!Command)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v18 = *Command;
    v19 = *(a1 + 33);
    v20 = bswap32(*Command);
    if (*(a1 + 33))
    {
      v18 = v20;
    }

    if (v18 == 1)
    {
      break;
    }

    if (v18 == 25)
    {
      v21 = *(Command + 4);
      v22 = bswap32(v21);
      if (*(a1 + 33))
      {
        v21 = v22;
      }

      if (v21 <= 0x47)
      {
        goto LABEL_70;
      }

      if (!strncmp((Command + 8), "__LINKEDIT", 0x10uLL))
      {
        v37 = *(Command + 40);
        v38 = *(Command + 48);
        v39 = bswap64(v37);
        if (v19)
        {
          v37 = v39;
        }

        v40 = bswap64(v38);
        if (v19)
        {
          v38 = v40;
        }

        v41 = v38 + v37;
        v42 = *(a1 + 56);
        v33 = v38 + v37 == v42;
        v43 = secLogObjForScope("macho");
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_60;
        }

        v44 = " NOT";
        if (v41 == v42)
        {
          v44 = &unk_188967DD7;
        }

        v53.st_dev = 136315138;
        *&v53.st_mode = v44;
        _os_log_debug_impl(&dword_1887D2000, v43, OS_LOG_TYPE_DEBUG, "64-bit linkedit is%s valid", &v53, 0xCu);
        if (v41 == v42)
        {
          return a1;
        }

LABEL_61:
        v49 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v53.st_dev) = 0;
          _os_log_impl(&dword_1887D2000, v49, OS_LOG_TYPE_DEFAULT, "STRICT VALIDATION ERROR: invalid structure", &v53, 2u);
        }

        *(a1 + 104) = 1;
        return a1;
      }
    }

    else if (v18 == 2)
    {
      v25 = *(Command + 4);
      v26 = bswap32(v25);
      if (*(a1 + 33))
      {
        v25 = v26;
      }

      if (v25 > 0x17)
      {
        v27 = *(Command + 16);
        v28 = *(Command + 20);
        v29 = bswap32(v27);
        if (*(a1 + 33))
        {
          v27 = v29;
        }

        v30 = bswap32(v28);
        if (*(a1 + 33))
        {
          v28 = v30;
        }

        v31 = v28 + v27;
        v32 = *(a1 + 56);
        v33 = v32 == v31;
        v34 = secLogObjForScope("macho");
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_60;
        }

        v35 = " NOT";
        if (v32 == v31)
        {
          v35 = &unk_188967DD7;
        }

        v53.st_dev = 136315138;
        *&v53.st_mode = v35;
        v36 = "symtab is%s valid";
LABEL_68:
        _os_log_debug_impl(&dword_1887D2000, v34, OS_LOG_TYPE_DEBUG, v36, &v53, 0xCu);
        if (v32 == v31)
        {
          return a1;
        }

        goto LABEL_61;
      }

LABEL_70:
      Security::UnixError::throwMe(8);
    }

LABEL_33:
    Command = Security::MachOBase::nextCommand(a1, Command);
    if (!Command)
    {
      goto LABEL_61;
    }
  }

  v23 = *(Command + 4);
  v24 = bswap32(v23);
  if (*(a1 + 33))
  {
    v23 = v24;
  }

  if (v23 <= 0x37)
  {
    goto LABEL_70;
  }

  if (strncmp((Command + 8), "__LINKEDIT", 0x10uLL))
  {
    goto LABEL_33;
  }

  v45 = *(Command + 32);
  v46 = *(Command + 36);
  v47 = bswap32(v45);
  if (v19)
  {
    v45 = v47;
  }

  v48 = bswap32(v46);
  if (v19)
  {
    v46 = v48;
  }

  v31 = v46 + v45;
  v32 = *(a1 + 56);
  v33 = v32 == v31;
  v34 = secLogObjForScope("macho");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v51 = " NOT";
    if (v32 == v31)
    {
      v51 = &unk_188967DD7;
    }

    v53.st_dev = 136315138;
    *&v53.st_mode = v51;
    v36 = "32-bit linkedit is%s valid";
    goto LABEL_68;
  }

LABEL_60:
  if (!v33)
  {
    goto LABEL_61;
  }

  return a1;
}

uint64_t Security::MachOBase::initHeader(uint64_t this, const mach_header *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  *(this + 8) = a2;
  magic = a2->magic;
  if (a2->magic > -17958195)
  {
    if (magic == -17958194)
    {
      v3 = 0;
      v4 = 0;
      goto LABEL_11;
    }

    if (magic == -17958193)
    {
      v3 = 0;
      goto LABEL_8;
    }

LABEL_12:
    v7 = this;
    v5 = secLogObjForScope("macho");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = **(v7 + 8);
      *buf = 134218240;
      v9 = v7;
      v10 = 1024;
      v11 = v6;
      _os_log_debug_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEBUG, "%p: unrecognized header magic (%x)", buf, 0x12u);
    }

    Security::UnixError::throwMe(8);
  }

  if (magic == -822415874)
  {
    v4 = 0;
    v3 = 1;
    goto LABEL_11;
  }

  if (magic != -805638658)
  {
    goto LABEL_12;
  }

  v3 = 1;
LABEL_8:
  v4 = 1;
LABEL_11:
  *(this + 33) = v3;
  *(this + 32) = v4;
  return this;
}

unint64_t Security::MachOBase::nextCommand(Security::MachOBase *this, const load_command *a2)
{
  cmdsize = a2->cmdsize;
  v3 = *(this + 33);
  v4 = bswap32(cmdsize);
  if (*(this + 33))
  {
    cmdsize = v4;
  }

  if (!cmdsize)
  {
LABEL_10:
    Security::UnixError::throwMe(8);
  }

  result = a2 + cmdsize;
  v7 = *(this + 3);
  if (v7 <= result)
  {
    return 0;
  }

  if (v7 < result + 8)
  {
    goto LABEL_10;
  }

  v8 = *(result + 4);
  v9 = bswap32(v8);
  v10 = v3 ? v9 : v8;
  if (v7 < result + v10)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t std::__tree<Security::Architecture>::__emplace_unique_key_args<Security::Architecture,Security::Architecture>(uint64_t result, unint64_t a2, void *a3)
{
  v3 = *(result + 8);
  if (!v3)
  {
LABEL_25:
    operator new();
  }

  v4 = HIDWORD(a2);
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 28);
      v8 = v4 != HIDWORD(v6) && SHIDWORD(a2) < SHIDWORD(v6);
      if (a2 != v6)
      {
        v8 = a2 < v6;
      }

      if (!v8)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_25;
      }
    }

    v9 = v4 != HIDWORD(v6) && SHIDWORD(v6) < SHIDWORD(a2);
    v10 = v9;
    v11 = a2 == v6 ? v10 : v6 < a2;
    if (v11 != 1)
    {
      return result;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_25;
    }
  }
}

void Security::MachO::~MachO(void **this)
{
  *this = &unk_1EFA8AC00;
  free(this[12]);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8AC00;
  free(this[12]);
}

void *Security::Architecture::displayName(Security::Architecture *this, cpu_type_t *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = NXGetArchInfoFromCpuType(*a2, a2[1] & 0xFFFFFF);
  if (v4 && (name = v4->name) != 0)
  {

    return std::string::basic_string[abi:ne200100]<0>(this, name);
  }

  else
  {
    memset(__str, 170, 20);
    snprintf(__str, 0x14uLL, "(%d:%d)", *a2, a2[1] & 0xFFFFFF);
    return std::string::basic_string[abi:ne200100]<0>(this, __str);
  }
}

void std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

BOOL Security::UnixPlusPlus::FileDesc::hasExtendedAttribute(Security::UnixPlusPlus::FileDesc *this, const char *a2)
{
  v2 = fgetxattr(this, a2, 0, 0, 0, 0);
  if (v2 != -1)
  {
    return v2 != 0;
  }

  v4 = __error();
  result = 0;
  v5 = *v4;
  if (v5 != 1 && v5 != 93)
  {
    v6 = __error();
    Security::UnixError::throwMe(*v6);
  }

  return result;
}

const void **Security::CFRef<__CFBundle *>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

Security::CodeSigning::SecStaticCode *Security::CodeSigning::SecStaticCode::SecStaticCode(Security::CodeSigning::SecStaticCode *this, atomic_uint *a2, int a3)
{
  *(this + 1) = 1;
  *this = &unk_1EFA8B9C0;
  *(this + 2) = 0;
  Security::Mutex::Mutex((this + 40));
  if (a2)
  {
    atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
  }

  *(this + 14) = 0;
  *(this + 4) = a2;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 13) = this + 112;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  *(this + 18) = this + 152;
  *(this + 176) = 0;
  *(this + 185) = 0;
  *(this + 192) = 0;
  *(this + 25) = 0;
  *(this + 28) = &unk_1EFA8A950;
  Security::Mutex::Mutex((this + 232));
  *(this + 296) = 0;
  *(this + 38) = 0;
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v7 = dispatch_queue_create("com.apple.security.validation-progress", v6);
  *(this + 360) = 0u;
  *(this + 39) = v7;
  *(this + 40) = 0;
  *(this + 328) = 0u;
  *(this + 43) = this + 352;
  *(this + 44) = 0;
  *(this + 63) = 0;
  *(this + 512) = 0;
  *(this + 71) = 0;
  *(this + 576) = 0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 481) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 69) = 0;
  *(this + 75) = 0;
  *(this + 584) = 0u;
  *(this + 152) = a3;
  *(this + 306) = 0;
  *(this + 77) = 0x7FF8000000000000;
  *(this + 624) = 1;
  *(this + 163) = 0;
  *(this + 82) = 0;
  *(this + 632) = 0u;
  *(this + 648) = 0;
  return this;
}

void sub_1887F8030(_Unwind_Exception *a1)
{
  Security::CFRef<__CFDictionary const*>::~CFRef((v1 + 656));
  Security::CFRef<__CFArray const*>::~CFRef((v1 + 640));
  Security::CFRef<__SecTrust *>::~CFRef(v5);
  Security::CFRef<__CFURL const*>::~CFRef(v7);
  Security::CFRef<__CFData const*>::~CFRef((v1 + 568));
  Security::CFRef<__CFDictionary const*>::~CFRef((v1 + 552));
  Security::CFRef<__CFArray const*>::~CFRef((v1 + 544));
  Security::CFRef<__CFData const*>::~CFRef((v1 + 536));
  Security::CFRef<__CFDictionary const*>::~CFRef(v6);
  Security::CFRef<__CFDictionary const*>::~CFRef((v1 + 504));
  Security::CFRef<__CFDictionary const*>::~CFRef((v1 + 488));
  v10 = (v1 + 480);
  v11 = -96;
  do
  {
    v10 = Security::CFRef<__CFData const*>::~CFRef(v10) - 1;
    v11 += 8;
  }

  while (v11);
  Security::CFRef<__CFData const*>::~CFRef((v1 + 368));
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*v8);
  Security::CFRef<__CFData const*>::~CFRef((v1 + 336));
  Security::Dispatch::Queue::~Queue(v4);
  Security::CFRef<__CFArray const*>::~CFRef(v3);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(v1 + 152));
  Security::CFRef<__CFData const*>::~CFRef((v1 + 136));
  Security::CFRef<__CFData const*>::~CFRef(v2);
  std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(*(v1 + 112));
  Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(v1 + 32);
  _Unwind_Resume(a1);
}

const void *Security::SecCFObject::handle(atomic_uchar *this, int a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = (*(*this + 16))(this);
  v6 = v5;
  if (a2 && (atomic_exchange(this - 8, 1u) & 1) != 0)
  {
    CFRetain(v5);
  }

  objc_autoreleasePoolPop(v4);
  return v6;
}

OSStatus SecCodeCopySigningInformation(SecStaticCodeRef code, SecCSFlags flags, CFDictionaryRef *information)
{
  v61[8] = *MEMORY[0x1E69E9840];
  if (flags >= 0x100)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v4 = flags;
  v50 = 0xAAAAAAAAAAAAAAAALL;
  v6 = Security::CodeSigning::SecStaticCode::requiredStatic(code, *&flags);
  Security::SecPointerBase::SecPointerBase(&v50, v6);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v7 = v50;
  theDict[0] = 0xAAAAAAAAAAAAAAAALL;
  (*(**(v50 + 32) + 40))(__p);
  if (v58 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  valuePtr = Security::makeCFURL(v9, 0, 0, v8);
  theDict[0] = Security::makeCFMutableDictionary(valuePtr, v10, v11, v12, v13, @"main-executable", valuePtr);
  Security::CFRef<__CFURL const*>::~CFRef(&valuePtr);
  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = Security::CodeSigning::SecStaticCode::codeDirectory(v7, 0);
  v15 = theDict[0];
  if (v14)
  {
    v16 = Security::CodeSigning::SecStaticCode::codeDirectory(v7, 1);
    std::string::basic_string[abi:ne200100]<0>(v55, &v16[bswap32(*(v16 + 5))]);
    Security::CFTempString::CFTempString<std::string>(&valuePtr, v55);
    CFDictionaryAddValue(v15, @"identifier", valuePtr);
    Security::CFRef<__CFString const*>::~CFRef(&valuePtr);
    if (v56 < 0)
    {
      operator delete(v55[0]);
    }

    v17 = theDict[0];
    valuePtr = bswap32(*(Security::CodeSigning::SecStaticCode::codeDirectory(v7, 0) + 3));
    v53[0] = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
    CFDictionaryAddValue(v17, @"flags", v53[0]);
    Security::CFRef<__CFNumber const*>::~CFRef(v53);
    v18 = theDict[0];
    (*(**(v7 + 32) + 128))(v53);
    Security::CFTempString::CFTempString<std::string>(&valuePtr, v53);
    CFDictionaryAddValue(v18, @"format", valuePtr);
    Security::CFRef<__CFString const*>::~CFRef(&valuePtr);
    if (v54 < 0)
    {
      operator delete(v53[0]);
    }

    v19 = theDict[0];
    if (Security::CodeSigning::SecStaticCode::codeDirectory(v7, 0))
    {
      v20 = *(v7 + 32);
      if (v20)
      {
        if (v21)
        {
          if (v21[151] < 0)
          {
            std::string::__init_copy_ctor_external(&v52, *(v21 + 16), *(v21 + 17));
          }

          else
          {
            v52 = *(v21 + 128);
          }

LABEL_21:
          Security::CFTempString::CFTempString<std::string>(&valuePtr, &v52);
          CFDictionaryAddValue(v19, @"source", valuePtr);
          Security::CFRef<__CFString const*>::~CFRef(&valuePtr);
          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v52.__r_.__value_.__l.__data_);
          }

          v23 = theDict[0];
          v24 = Security::CodeSigning::SecStaticCode::cdHash(v7);
          CFDictionaryAddValue(v23, @"unique", v24);
          v25 = theDict[0];
          v27 = Security::CodeSigning::SecStaticCode::cdHashes(v7, v26);
          CFDictionaryAddValue(v25, @"cdhashes", v27);
          v29 = theDict[0];
          v30 = *(v7 + 552);
          if (!v30)
          {
            CFMutableDictionary = Security::makeCFMutableDictionary(v28);
            v51[0] = CFMutableDictionary;
            v32 = *(v7 + 104);
            if (v32 != v7 + 112)
            {
              BytePtr = CFDataGetBytePtr(*(v32 + 40));
              theDict[3] = 0xAAAAAAAAAAAAAAAALL;
              Security::CodeSigning::CodeDirectory::cdhash(BytePtr, 0);
            }

            Security::CFRef<__CFArray const*>::operator=((v7 + 552), CFMutableDictionary);
            Security::CFRef<__CFDictionary *>::~CFRef(v51);
            v30 = *(v7 + 552);
          }

          CFDictionaryAddValue(v29, @"cdhashes-full", v30);
          v34 = Security::CodeSigning::SecStaticCode::codeDirectory(v7, 0);
          v35 = theDict[0];
          LODWORD(v51[0]) = v34[37];
          valuePtr = CFNumberCreate(0, kCFNumberIntType, v51);
          CFDictionaryAddValue(v35, @"digest-algorithm", valuePtr);
          v36 = Security::CFRef<__CFNumber const*>::~CFRef(&valuePtr);
          v51[3] = 0xAAAAAAAAAAAAAAAALL;
          std::set<unsigned int>::set[abi:ne200100](v36, (v7 + 344));
          if (valuePtr != v61)
          {
            v37 = 0;
            v38 = valuePtr;
            while (1)
            {
              v39 = *(v38 + 1);
              if (v39)
              {
                do
                {
                  v40 = v39;
                  v39 = *v39;
                }

                while (v39);
              }

              else
              {
                do
                {
                  v40 = *(v38 + 2);
                  v41 = *v40 == v38;
                  v38 = v40;
                }

                while (!v41);
              }

              ++v37;
              v38 = v40;
              if (v40 == v61)
              {
                operator new[]();
              }
            }
          }

          operator new[]();
        }
      }

      v22 = "embedded";
    }

    else
    {
      v22 = "unsigned";
    }

    std::string::basic_string[abi:ne200100]<0>(&v52, v22);
    goto LABEL_21;
  }

  theDict[0] = 0;
  Security::CFRef<__CFDictionary *>::~CFRef(theDict);
  cf = v15;
  if ((v4 & 8) != 0)
  {
    __p[0] = 0xAAAAAAAAAAAAAAAALL;
    {
      Security::MacOSError::throwMe(0xFFFEFA01);
    }

    Security::SecPointerBase::SecPointerBase(__p, v44);
    if (__p[0])
    {
      v45 = *(__p[0] + 2);
      if (v45)
      {
        v46 = (*(*v45 + 104))(v45);
      }

      else
      {
        v46 = 1;
      }

      v47 = Security::cfmake<__CFDictionary const*>("{+%O,%O=%u}", cf, @"status", v46);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = v47;
    }

    Security::SecPointerBase::~SecPointerBase(__p);
    v15 = cf;
  }

  cf = 0;
  if (!information)
  {
    Security::MacOSError::throwMe(0xFFFEFA03);
  }

  *information = v15;
  Security::CFRef<__CFDictionary const*>::~CFRef(&cf);
  Security::SecPointerBase::~SecPointerBase(&v50);
  return 0;
}

void sub_1887F98FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, char a57)
{
  if (a2)
  {
    if (v58)
    {
      operator delete(v58);
    }

    if (v57)
    {
      operator delete(v57);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1887F8E44);
  }

  _Unwind_Resume(exception_object);
}

Security::SecPointerBase *Security::SecPointerBase::SecPointerBase(Security::SecPointerBase *this, atomic_uchar *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a2 && (atomic_exchange(a2 - 8, 1u) & 1) != 0)
  {
    v5 = (*(*a2 + 16))(a2);
    CFRetain(v5);
  }

  *this = a2;
  objc_autoreleasePoolPop(v4);
  return this;
}

const UInt8 *Security::CodeSigning::SecStaticCode::codeDirectory(Security::CodeSigning::SecStaticCode *this, int a2)
{
  v3 = *(this + 42);
  if (v3)
  {
    goto LABEL_23;
  }

  v5 = Security::CodeSigning::SecStaticCode::codeDirectories(this, a2);
  if (v5)
  {
    v6 = &Security::CodeSigning::hashPriorities;
    v7 = 4;
    while (1)
    {
      if (*(this + 44))
      {
        v8 = (this + 352);
        v9 = *(this + 44);
        do
        {
          v10 = v9[7];
          v11 = v10 >= v7;
          v12 = v10 < v7;
          if (v11)
          {
            v8 = v9;
          }

          v9 = *&v9[2 * v12];
        }

        while (v9);
        if (v8 != (this + 352) && v7 >= v8[7])
        {
          break;
        }
      }

      v13 = v6[1];
      ++v6;
      v7 = v13;
      if (!v13)
      {
        Security::MacOSError::throwMe(0xFFFEFA48);
      }
    }

    v14 = v5[1];
    if (!v14)
    {
LABEL_20:
      std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
    }

    while (1)
    {
      while (1)
      {
        v15 = *(v14 + 8);
        if (v7 >= v15)
        {
          break;
        }

        v14 = *v14;
        if (!v14)
        {
          goto LABEL_20;
        }
      }

      if (v15 >= v7)
      {
        break;
      }

      v14 = v14[1];
      if (!v14)
      {
        goto LABEL_20;
      }
    }

    Security::CFRef<__CFURL const*>::operator=(this + 42, v14 + 5);
  }

  v3 = *(this + 42);
  if (v3)
  {
LABEL_23:

    return CFDataGetBytePtr(v3);
  }

  else
  {
    if (a2)
    {
      Security::MacOSError::throwMe(0xFFFEFA0ALL);
    }

    return 0;
  }
}

void sub_1887FA2D4(void *a1)
{
  __cxa_begin_catch(a1);
  if (!v2)
  {
    if (!*(v1 + 336))
    {
      __cxa_end_catch();
      if (!*(v1 + 336))
      {
        JUMPOUT(0x1887FA2B8);
      }

      JUMPOUT(0x1887FA298);
    }

    Security::Syslog::warning("code signing internal problem: mDir set despite exception exit", v3);
    Security::MacOSError::throwMe(0xFFFEFA18);
  }

  __cxa_rethrow();
}

uint64_t ___ZNK8Security11CodeSigning13SecStaticCode19loadCodeDirectoriesERNSt3__13mapIjNS_9CFCopyRefIPK8__CFDataEENS2_4lessIjEENS2_9allocatorINS2_4pairIKjS8_EEEEEE_block_invoke(void *a1, int a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = (*(**(a1[7] + 32) + 24))(*(a1[7] + 32));
  *&v44[1] = v2;
  if (v2)
  {
    BytePtr = CFDataGetBytePtr(v2);
    Length = CFDataGetLength(*&v44[1]);
    v44[0] = -67061;
    if (Length < 0x60)
    {
      goto LABEL_42;
    }

    if (*BytePtr != 34397946 || (v5 = bswap32(*(BytePtr + 1)), v5 <= 0x5F))
    {
      *__error() = 22;
      goto LABEL_42;
    }

    if (Length != v5)
    {
      goto LABEL_42;
    }

    v6 = *(BytePtr + 2);
    v7 = bswap32(v6);
    if (v7 - 192513 < 0xFFFF1000)
    {
      v44[0] = -67059;
      goto LABEL_42;
    }

    if (v7 > 0x20500)
    {
      v8 = secLogObjForScope("codedir");
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
      v6 = *(BytePtr + 2);
      if (v9)
      {
        *buf = 134218496;
        *&buf[4] = BytePtr;
        *&buf[12] = 1024;
        *&buf[14] = bswap32(v6);
        *&buf[18] = 1024;
        *&buf[20] = 132352;
        _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%p version 0x%x newer than current 0x%x", buf, 0x18u);
        v6 = *(BytePtr + 2);
      }
    }

    v10 = bswap32(v6);
    v11 = v10 > 0x204FF && *(BytePtr + 23) != 0;
    v12 = bswap32(*(BytePtr + 5));
    v13 = bswap32(*(BytePtr + 1));
    if (v13 > v12)
    {
      v14 = &BytePtr[v12];
      if (memchr(v14, 0, v13 - v12) && v14 != 0)
      {
        if (v10 <= 0x201FF || (v16 = *(BytePtr + 12)) == 0 || (v17 = bswap32(v16), v13 > v17) && ((v18 = &BytePtr[v17], memchr(v18, 0, v13 - v17)) ? (v19 = v18 == 0) : (v19 = 1), !v19))
        {
          v20 = bswap32(*(BytePtr + 4));
          v21 = BytePtr[36];
          v22 = bswap32(*(BytePtr + 6));
          v23 = v20 - v21 * v22;
          v24 = bswap32(*(BytePtr + 7));
          if (v23 >= 8 && v23 + (v24 + v22) * v21 <= v13)
          {
            if (!v11 || ((v26 = bswap32(*(BytePtr + 23)), v27 = v26 >= 8, v28 = v24 * v21 + v26, v27) ? (v29 = v28 > v13) : (v29 = 1), !v29))
            {
              if (v10 <= 0x200FF)
              {
                goto LABEL_57;
              }

              v30 = *(BytePtr + 11);
              if (!v30)
              {
                goto LABEL_69;
              }

              v31 = bswap32(v30);
              v32 = &BytePtr[v31];
              if (!&BytePtr[v31])
              {
                goto LABEL_69;
              }

              if (v31 >= 8)
              {
                v33 = 0;
                v34 = v31;
                while (1)
                {
                  if (v31 + 24 > v13)
                  {
                    goto LABEL_42;
                  }

                  if (!*v32)
                  {
                    break;
                  }

                  v33 += bswap32(*v32);
                  v32 += 6;
                  v31 = v32 - BytePtr;
                  v34 += 24;
                  if (v34 <= 7)
                  {
                    goto LABEL_42;
                  }
                }

                v35 = (v33 - 1) * v21;
                v36 = v20 + v35;
                if (v36 >= 8 && v36 + v21 <= v13)
                {
                  if (!v11 || (v10 <= 0x204FF || (v38 = *(BytePtr + 23)) == 0 ? (v39 = 0) : (v39 = &BytePtr[v35 + bswap32(v38)]), (v40 = v39 - BytePtr, v40 >= 8) && v40 + v21 <= v13))
                  {
LABEL_69:
                    if (v10 > 0x202FF)
                    {
                      v41 = *(BytePtr + 7);
                      if (v41)
                      {
                        v42 = bswap64(v41);
                        goto LABEL_58;
                      }
                    }

LABEL_57:
                    v42 = bswap32(*(BytePtr + 8));
LABEL_58:
                    if (BytePtr[39])
                    {
                      if (!v42 || ((v42 - 1) >> BytePtr[39]) + 1 != v24)
                      {
                        goto LABEL_42;
                      }
                    }

                    else if (v24 != (v42 != 0))
                    {
                      goto LABEL_42;
                    }

                    memset(buf, 170, sizeof(buf));
                    operator new();
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_42:
    Security::MacOSError::throwMe(v44[0]);
  }

  Security::CFRef<__CFData const*>::~CFRef(&v44[1]);
  return 0;
}

void sub_1887FA81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFData const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

CFDataRef Security::CodeSigning::BundleDiskRep::component(Security::CodeSigning::BundleDiskRep *this, Security::CodeSigning::CodeDirectory *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = a2;
  if (a2 != 3)
  {
    if (a2 == 1)
    {
      v4 = _CFBundleCopyInfoPlistURL();
      v16 = v4;
      if (v4)
      {
        v5 = v4;
        memset(__p, 170, sizeof(__p));
        Security::cfString(__p, v4);
        v18 = 0xAAAAAAAAFFFFFFFFLL;
        if (SHIBYTE(__p[2]) >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        Security::UnixPlusPlus::FileDesc::open(&v18, v6, 0, 438);
        v7 = v18;
        Security::CodeSigning::BundleDiskRep::checkPlainFile(this, v18, __p);
        v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *&v20.st_blksize = v8;
        *v20.st_qspare = v8;
        v20.st_birthtimespec = v8;
        *&v20.st_size = v8;
        v20.st_mtimespec = v8;
        v20.st_ctimespec = v8;
        *&v20.st_uid = v8;
        v20.st_atimespec = v8;
        *&v20.st_dev = v8;
        Security::UnixPlusPlus::FileDesc::fstat(v7, &v20);
        v9 = Security::cfMapFile(v7, v20.st_size);
        if (!v9)
        {
          v14 = secLogObjForScope("bundlediskrep");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            Security::cfString(&v20, v5);
            if ((v20.st_gid & 0x80000000) == 0)
            {
              v15 = &v20;
            }

            else
            {
              v15 = *&v20.st_dev;
            }

            *buf = 136315138;
            v22 = v15;
            _os_log_debug_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEBUG, "failed to load %s", buf, 0xCu);
            if (SHIBYTE(v20.st_gid) < 0)
            {
              operator delete(*&v20.st_dev);
            }
          }

          Security::MacOSError::throwMe(0xFFFEFA45);
        }

        Security::UnixPlusPlus::FileDesc::closeAndLog(&v18);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v9 = 0;
      }

      Security::CFRef<__CFURL const*>::~CFRef(&v16);
      return v9;
    }

    v12 = (*(**(this + 13) + 24))(*(this + 13), a2);
    *&v20.st_dev = v12;
    if (v12)
    {
      v9 = v12;
      if (*(this + 177))
      {
        if ((*(this + 176) & 1) == 0)
        {
          Security::MacOSError::throwMe(0xFFFEFA0BLL);
        }
      }

      else
      {
        *(this + 88) = 257;
      }

LABEL_31:
      *&v20.st_dev = 0;
      Security::CFRef<__CFData const*>::~CFRef(&v20);
      return v9;
    }

    Security::CFRef<__CFData const*>::~CFRef(&v20);
    *&v20.st_dev = 0xAAAAAAAAAAAAAAAALL;
    v13 = Security::CodeSigning::CodeDirectory::canonicalSlotName(a2);
    if (v13)
    {
      *&v20.st_dev = Security::CodeSigning::BundleDiskRep::metaData(this, v13);
      if (*&v20.st_dev)
      {
        if (*(this + 177))
        {
          if (*(this + 176))
          {
            Security::MacOSError::throwMe(0xFFFEFA0BLL);
          }
        }

        else
        {
          *(this + 88) = 256;
        }

        std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(this + 184, a2, &v17);
        v9 = *&v20.st_dev;
        goto LABEL_31;
      }
    }

    else
    {
      *&v20.st_dev = 0;
    }

    Security::CFRef<__CFData const*>::~CFRef(&v20);
    return 0;
  }

  std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(this + 184, 3u, &v17);
  v10 = Security::CodeSigning::CodeDirectory::canonicalSlotName(3);
  if (!v10)
  {
    return 0;
  }

  return Security::CodeSigning::BundleDiskRep::metaData(this, v10);
}

CFDataRef Security::CodeSigning::MachORep::component(Security::CodeSigning::MachORep *this, Security::CodeSigning::EmbeddedSignatureBlob *a2)
{
  if (a2 == 1)
  {

    Security::CodeSigning::MachORep::infoPlist(this);
  }

  result = Security::CodeSigning::MachORep::signingData(this);
  if (result)
  {
    v5 = Security::CodeSigning::MachORep::signingData(this);

    return Security::CodeSigning::EmbeddedSignatureBlob::component(v5, a2, v6);
  }

  return result;
}

const load_command *Security::MachOBase::findCommand(Security::MachOBase *this, int a2)
{
  for (i = *(this + 2); i; i = Security::MachOBase::nextCommand(this, i))
  {
    cmd = i->cmd;
    v6 = bswap32(i->cmd);
    if (*(this + 33))
    {
      cmd = v6;
    }

    if (cmd == a2)
    {
      break;
    }
  }

  return i;
}

const load_command *Security::MachOBase::findCodeSignature(Security::MachOBase *this)
{
  result = Security::MachOBase::findCommand(this, 29);
  if (result)
  {
    cmdsize = result->cmdsize;
    v4 = bswap32(cmdsize);
    if (*(this + 33))
    {
      cmdsize = v4;
    }

    if (cmdsize <= 0xF)
    {
      Security::UnixError::throwMe(8);
    }
  }

  return result;
}

void *Security::CFCopyRef<__CFData const*>::CFCopyRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void ***std::unique_ptr<std::__tree_node<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,void *>>>>::~unique_ptr[abi:ne200100](const void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      Security::CFRef<__CFData const*>::~CFRef(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

CFMutableDictionaryRef Security::makeCFMutableDictionary(Security *this)
{
  result = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!result)
  {
    Security::CFError::throwMe(0);
  }

  return result;
}

uint64_t std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t result, unsigned int a2, _DWORD *a3)
{
  v3 = *(result + 8);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 28);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void __KCSharingLogObject_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("kcsharing-logger", v2);
  v1 = KCSharingLogObject_logQueue;
  KCSharingLogObject_logQueue = v0;
}

void Security::MacOSError::throwMe(Security::MacOSError *this)
{
  v1 = this;
  exception = __cxa_allocate_exception(0x98uLL);
  Security::MacOSError::MacOSError(exception, v1);
}

id KCSharingSetupServerProtocol(void *a1)
{
  v7[11] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = +[SecXPCHelper safeErrorClasses];
  v3 = MEMORY[0x1E695DFD8];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  v7[4] = objc_opt_class();
  v7[5] = objc_opt_class();
  v7[6] = objc_opt_class();
  v7[7] = objc_opt_class();
  v7[8] = objc_opt_class();
  v7[9] = objc_opt_class();
  v7[10] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:11];
  v5 = [v3 setWithArray:v4];

  [v1 setClasses:v2 forSelector:sel_provisionWithReply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_setChangeTrackingEnabled_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_fetchRemoteChangesWithReply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_saveLocalChangesWithReply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_getGroupByGroupID_completion_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_wipe_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v5 forSelector:sel_getGroupsWithRequest_completion_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_getGroupsWithRequest_completion_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v5 forSelector:sel_createGroupWithRequest_completion_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_createGroupWithRequest_completion_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v5 forSelector:sel_updateGroupWithRequest_completion_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_updateGroupWithRequest_completion_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v5 forSelector:sel_leaveGroupWithRequest_completion_ argumentIndex:0 ofReply:0];
  [v1 setClasses:v2 forSelector:sel_leaveGroupWithRequest_completion_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v5 forSelector:sel_deleteGroupWithRequest_completion_ argumentIndex:0 ofReply:0];
  [v1 setClasses:v2 forSelector:sel_deleteGroupWithRequest_completion_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_acceptInviteForGroupID_completion_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_declineInviteForGroupID_completion_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v5 forSelector:sel_checkAvailabilityForHandles_completion_ argumentIndex:0 ofReply:0];
  [v1 setClasses:v5 forSelector:sel_checkAvailabilityForHandles_completion_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_checkAvailabilityForHandles_completion_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_verifyGroupsInSyncWithCompletion_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_verifyGroupsInSyncAndResyncMissingGroupsWithCompletion_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_performMaintenanceWithCompletion_ argumentIndex:0 ofReply:1];

  return v1;
}

CFErrorRef SecCreateCFErrorWithXPCObject(void *a1)
{
  v20 = 0;
  if (MEMORY[0x18CFDC200]() != MEMORY[0x1E69E9E80])
  {
    SecCFCreateErrorWithFormat(1, sSecXPCErrorDomain, 0, &v20, v2, @"Remote error not dictionary!: %@", v3, v4, a1);
    return v20;
  }

  string = xpc_dictionary_get_string(a1, "domain");
  v7 = MEMORY[0x1E695E480];
  if (string)
  {
    v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], string, 0x8000100u);
  }

  else
  {
    v8 = sSecXPCErrorDomain;
    CFRetain(sSecXPCErrorDomain);
  }

  int64 = xpc_dictionary_get_int64(a1, "code");
  length = 0;
  cf = 0;
  data = xpc_dictionary_get_data(a1, "userinfo", &length);
  if (data)
  {
    v14 = &data[length];
    v15 = der_decode_plist(*v7, &cf, 0, data, &data[length], v11, v12, v13);
    v16 = cf;
    if (v15 == v14)
    {
      v5 = CFErrorCreate(0, v8, int64, cf);
      if (v16)
      {
        CFRelease(v16);
      }

      goto LABEL_11;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v5 = CFErrorCreate(0, v8, int64, 0);
LABEL_11:
  if (v8)
  {
    CFRelease(v8);
  }

  return v5;
}

id KCSharingLogObject(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4506;
  v20 = __Block_byref_object_dispose__4507;
  v5 = MEMORY[0x1E69E9C18];
  v6 = MEMORY[0x1E69E9C18];
  v21 = v5;
  if (KCSharingLogObject_onceToken != -1)
  {
    dispatch_once(&KCSharingLogObject_onceToken, &__block_literal_global_4508);
  }

  v7 = KCSharingLogObject_logQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __KCSharingLogObject_block_invoke_2;
  block[3] = &unk_1E70D6AC0;
  v13 = v4;
  v14 = v3;
  v15 = &v16;
  v8 = v3;
  v9 = v4;
  dispatch_sync(v7, block);
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __KCSharingLogObject_block_invoke_2(void *a1)
{
  if (!KCSharingLogObject_scopeMap)
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
    v3 = KCSharingLogObject_scopeMap;
    KCSharingLogObject_scopeMap = v2;
  }

  v4 = a1[5];
  if (a1[4])
  {
    v5 = [v4 stringByAppendingFormat:@"-%@", a1[4]];
  }

  else
  {
    v5 = v4;
  }

  v13 = v5;
  v6 = [KCSharingLogObject_scopeMap objectForKeyedSubscript:v5];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(a1[6] + 8) + 40))
  {
    v9 = v13;
    v10 = os_log_create("com.apple.security.keychain.sharing", [v13 cStringUsingEncoding:4]);
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    [KCSharingLogObject_scopeMap setObject:*(*(a1[6] + 8) + 40) forKeyedSubscript:v13];
  }
}

void sec_protocol_options_add_tls_application_protocol(sec_protocol_options_t options, const char *application_protocol)
{
  if (options)
  {
    if (application_protocol)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 0x40000000;
      v2[2] = __sec_protocol_options_add_tls_application_protocol_block_invoke;
      v2[3] = &__block_descriptor_tmp_26;
      v2[4] = application_protocol;
      sec_protocol_options_access_handle(options, v2);
    }
  }
}

BOOL __sec_protocol_options_add_tls_application_protocol_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 48);
    if (!v4)
    {
      v4 = xpc_array_create(0, 0);
      *(a2 + 48) = v4;
    }

    xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, *(a1 + 32));
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_server_raw_public_key_certificates(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 0x40000000;
      v2[2] = __sec_protocol_options_set_server_raw_public_key_certificates_block_invoke;
      v2[3] = &__block_descriptor_tmp_164;
      v2[4] = a2;
      return sec_protocol_options_access_handle(result, v2);
    }
  }

  return result;
}

CFMutableArrayRef __sec_protocol_options_set_server_raw_public_key_certificates_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a2 + 280);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 280) = 0;
  }

  v5 = *MEMORY[0x1E695E480];
  Count = CFArrayGetCount(*(a1 + 32));
  result = CFArrayCreateMutable(v5, Count, MEMORY[0x1E695E9C0]);
  if (result)
  {
    v8 = result;
    for (i = 0; i < CFArrayGetCount(*(a1 + 32)); ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), i);
      CFArrayAppendValue(v8, ValueAtIndex);
    }

    *(a2 + 280) = v8;
    return 1;
  }

  return result;
}

uint64_t sec_protocol_metadata_copy_quic_transport_parameters(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_copy_quic_transport_parameters_block_invoke;
  v3[3] = &unk_1E70D62A8;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_metadata_copy_quic_transport_parameters_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 152);
    if (v3)
    {
      *(*(*(a1 + 32) + 8) + 24) = v3;
      dispatch_retain(*(*(*(a1 + 32) + 8) + 24));
    }
  }

  return a2 != 0;
}

BOOL sec_protocol_metadata_get_early_data_accepted(sec_protocol_metadata_t metadata)
{
  if (metadata)
  {
    LOBYTE(metadata) = sec_protocol_metadata_access_handle(metadata, &__block_literal_global_111);
  }

  return metadata;
}

uint64_t sec_protocol_metadata_copy_serialized_session(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_copy_serialized_session_block_invoke;
  v3[3] = &unk_1E70D6170;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_metadata_copy_serialized_session_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 24);
    if (v3)
    {
      if (*(a2 + 16))
      {
        *(*(*(a1 + 32) + 8) + 24) = v3();
      }
    }
  }

  return a2 != 0;
}

uint64_t __sec_protocol_metadata_get_early_data_accepted_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(a2 + 336) >> 3) & 1;
  }

  else
  {
    return 0;
  }
}

void sec_protocol_options_set_peer_authentication_required(sec_protocol_options_t options, BOOL peer_authentication_required)
{
  if (options)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_peer_authentication_required_block_invoke;
    v2[3] = &__block_descriptor_tmp_50;
    v3 = peer_authentication_required;
    sec_protocol_options_access_handle(options, v2);
  }
}

BOOL __sec_protocol_options_set_peer_authentication_required_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 369) = *(a2 + 369) & 0xFBFFFFFF | (*(a1 + 32) << 26) | 0x10000000;
  }

  return a2 != 0;
}

uint64_t sec_protocol_helper_ciphersuite_group_to_ciphersuite_list(unsigned int a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 > 4)
  {
    v2 = 0;
    result = 0;
  }

  else
  {
    v2 = qword_18895ED40[a1];
    result = *(&off_1E70D6910 + a1);
  }

  *a2 = v2;
  return result;
}

__CFData *_SecItemCreateUUIDBasedPersistentRef(const __CFString *a1, CFDataRef theData, const __CFDictionary *a3)
{
  if (a3)
  {
    TokenPersistentRefData = CreateTokenPersistentRefData(a1, a3);
    if (TokenPersistentRefData)
    {
      v6 = TokenPersistentRefData;
      v7 = *MEMORY[0x1E695E480];
      Length = CFDataGetLength(TokenPersistentRefData);
      Mutable = CFDataCreateMutable(v7, Length + 4);
      CFDataAppendBytes(Mutable, "tkpr", 4);
      BytePtr = CFDataGetBytePtr(v6);
      v11 = CFDataGetLength(v6);
      CFDataAppendBytes(Mutable, BytePtr, v11);
LABEL_14:
      CFRelease(v6);
      return Mutable;
    }
  }

  if (!theData)
  {
    return 0;
  }

  v12 = CFDataGetLength(theData);
  Mutable = 0;
  if (!a1 || v12 != 16)
  {
    return Mutable;
  }

  v13 = CFGetTypeID(a1);
  if (v13 != CFStringGetTypeID() || CFStringGetLength(a1) < 1)
  {
    return 0;
  }

  v14 = *MEMORY[0x1E695E480];
  v6 = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v15 = CFGetTypeID(a1);
  Mutable = 0;
  if (v15 == CFStringGetTypeID())
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___SecItemCreateUUIDBasedPersistentRef_block_invoke;
    v23[3] = &__block_descriptor_40_e19_v16__0____CFData__8l;
    v23[4] = v6;
    maxBufLen = 0;
    v16 = CFStringGetLength(a1);
    v26.location = 0;
    v26.length = v16;
    CFStringGetBytes(a1, v26, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    v17 = maxBufLen;
    v18 = CFDataCreateMutable(v14, 0);
    CFDataSetLength(v18, v17);
    usedBufLen = 0xAAAAAAAAAAAAAAAALL;
    MutableBytePtr = CFDataGetMutableBytePtr(v18);
    v27.location = 0;
    v27.length = v16;
    CFStringGetBytes(a1, v27, 0x8000100u, 0, 0, MutableBytePtr, maxBufLen, &usedBufLen);
    ___SecItemCreateUUIDBasedPersistentRef_block_invoke(v23, v18);
    if (v18)
    {
      CFRelease(v18);
    }

    v20 = CFDataGetBytePtr(theData);
    v21 = CFDataGetLength(theData);
    CFDataAppendBytes(v6, v20, v21);
    Mutable = CFDataCreateCopy(v14, v6);
  }

  if (v6)
  {
    goto LABEL_14;
  }

  return Mutable;
}

__CFData *CreateTokenPersistentRefData(const void *a1, CFDictionaryRef theDict)
{
  if (CFDictionaryGetValue(theDict, @"toid"))
  {
    Value = CFDictionaryGetValue(theDict, @"tkid");
    if (Value)
    {
      v5 = CFGetTypeID(Value);
      v13 = 0;
      DERData = 0;
      if (v5 != CFStringGetTypeID())
      {
        return DERData;
      }

      goto LABEL_4;
    }

    return 0;
  }

  if (CFEqual(a1, @"idnt"))
  {
    v21 = CFDictionaryGetValue(theDict, @"certtkid");
    if (!v21)
    {
      return 0;
    }

    v22 = CFGetTypeID(v21);
    if (v22 != CFStringGetTypeID())
    {
      return 0;
    }

    v23 = @"certdata";
  }

  else
  {
    v24 = CFDictionaryGetValue(theDict, @"tkid");
    if (!v24)
    {
      return 0;
    }

    v25 = CFGetTypeID(v24);
    if (v25 != CFStringGetTypeID())
    {
      return 0;
    }

    v23 = @"v_Data";
  }

  v26 = CFDictionaryGetValue(theDict, v23);
  if (!v26)
  {
    return 0;
  }

  v27 = v26;
  v28 = CFGetTypeID(v26);
  if (v28 != CFDataGetTypeID())
  {
    return 0;
  }

  v29 = SecTokenItemValueCopy(v27, 0);
  if (!v29)
  {
    return 0;
  }

  v13 = v29;
  v30 = CFDictionaryGetValue(v29, @"oid");
  if (!v30 || (v31 = CFGetTypeID(v30), v31 != CFDataGetTypeID()))
  {
    DERData = 0;
    goto LABEL_5;
  }

LABEL_4:
  v15 = CFArrayCreateForCFTypes(*MEMORY[0x1E695E480], v6, v7, v8, v9, v10, v11, v12, a1);
  DERData = CFPropertyListCreateDERData(v15, v15, 0, v16, v17, v18, v19, v20);
  CFRelease(v15);
  if (v13)
  {
LABEL_5:
    CFRelease(v13);
  }

  return DERData;
}

uint64_t __SecAccessControlGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

BOOL __SecItemAdd_block_invoke(uint64_t a1, __CFString **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __SecItemAdd_block_invoke_2;
  v4[3] = &__block_descriptor_40_e105_B48__0__TKClientTokenSession_8____CFDictionary__16____CFDictionary__24____CFDictionary__32_____CFError_40l;
  v4[4] = *(a1 + 40);
  return SecItemAuthDoQuery((v2 + 32), 0, SecItemAdd, a2, v4);
}

uint64_t __SecItemAdd_block_invoke_2(uint64_t a1, void *a2, const __CFDictionary *a3, uint64_t a4, const __CFDictionary *a5, CFErrorRef *a6)
{
  v10 = a2;
  v11 = v10;
  if (v10)
  {
    v12 = *(a1 + 32);
    v13 = v10;
    cf = 0;
    v32 = 0;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a3);
    CFDictionarySetValue(MutableCopy, @"pdmn", @"dk");
    Value = CFDictionaryGetValue(MutableCopy, @"toid");
    if (Value)
    {
      v16 = Value;
      CFRetain(Value);
      CFDictionaryRemoveValue(MutableCopy, @"toid");
      v17 = SecTokenCopyUpdatedObjectID(v13, v16, MutableCopy, a6);
      CFRelease(v16);
      if (v17)
      {
        goto LABEL_4;
      }
    }

    else
    {
      CFDictionaryRemoveValue(MutableCopy, @"toid");
      v17 = SecTokenCopyUpdatedObjectID(v13, 0, MutableCopy, a6);
      if (v17)
      {
LABEL_4:
        CFDictionaryRemoveValue(MutableCopy, @"toid");
        if (CFDictionaryContainsKey(MutableCopy, @"v_Ref"))
        {
          CFDictionaryRemoveValue(MutableCopy, @"v_Ref");
        }

        else
        {
          if (!SecTokenItemCreateFromAttributes(MutableCopy, a5, v13, v17, &v32, a6))
          {
            v18 = 0;
            goto LABEL_47;
          }

          if (v32)
          {
            v28 = SecItemCopyAttributeDictionary(v32, 0);
            v18 = v28;
            if (v28)
            {
              context[0] = MEMORY[0x1E69E9820];
              context[1] = 3221225472;
              context[2] = __SecTokenItemAdd_block_invoke;
              context[3] = &__block_descriptor_40_e15_v24__0r_v8r_v16l;
              context[4] = MutableCopy;
              CFDictionaryApplyFunction(v28, apply_block_2_10426, context);
            }

            goto LABEL_7;
          }
        }

        v18 = 0;
LABEL_7:
        v19 = *MEMORY[0x1E695E4D0];
        CFDictionarySetValue(MutableCopy, @"r_Attributes", *MEMORY[0x1E695E4D0]);
        CFDictionarySetValue(MutableCopy, @"r_Data", v19);
        v20 = CFDictionaryGetValue(MutableCopy, @"perm");
        v21 = *MEMORY[0x1E695E4C0];
        if (v20 && v21)
        {
          if (CFEqual(v20, v21))
          {
LABEL_10:
            cf = CFRetain(MutableCopy);
LABEL_32:
            v24 = SecItemResultProcess(a3, a5, v13, cf, v12, a6);
LABEL_33:
            v27 = v17;
            goto LABEL_34;
          }
        }

        else if (v20 == v21)
        {
          goto LABEL_10;
        }

        if (gSecurityd && (v25 = *gSecurityd) != 0)
        {
          v26 = SecSecurityClientGet();
          if (v25(MutableCopy, v26, &cf, a6))
          {
            goto LABEL_32;
          }
        }

        else
        {
          SecSecurityClientGet();
          if (cftype_to_BOOL_cftype_error_request(0, MutableCopy, &cf, a6))
          {
            goto LABEL_32;
          }
        }

LABEL_47:
        v24 = 0;
        goto LABEL_33;
      }
    }

    v27 = 0;
    v18 = 0;
    v24 = 0;
LABEL_34:
    if (cf)
    {
      CFRelease(cf);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (v17)
    {
      CFRelease(v27);
    }

    if (v32)
    {
      CFRelease(v32);
    }

    goto LABEL_45;
  }

  context[0] = 0;
  logUnreasonableDataLength(a3);
  if ((isModifyingAPIRateWithinLimits() & 1) == 0)
  {
    __security_simulatecrash(@"BUG IN CLIENT OF SECITEM: too many writes. See https://at.apple.com/secitemratelimit", 0x53C0000Fu);
  }

  if (gSecurityd && (v22 = *gSecurityd) != 0)
  {
    v23 = SecSecurityClientGet();
    if ((v22(a3, v23, context, a6) & 1) == 0)
    {
LABEL_16:
      v24 = 0;
      goto LABEL_45;
    }
  }

  else
  {
    SecSecurityClientGet();
    if (!cftype_to_BOOL_cftype_error_request(0, a3, context, a6))
    {
      goto LABEL_16;
    }
  }

  v24 = SecItemResultProcess(a3, a5, 0, context[0], *(a1 + 32), a6);
  if (context[0])
  {
    CFRelease(context[0]);
  }

LABEL_45:

  return v24;
}

void logUnreasonableDataLength(const void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (v2 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(a1, @"v_Data");
      if (Value)
      {
        v4 = Value;
        v5 = CFGetTypeID(Value);
        if (v5 == CFDataGetTypeID())
        {
          Length = CFDataGetLength(v4);
          if (Length > 0x8000)
          {
            v7 = Length;
            v8 = secLogObjForScope("SecWarning");
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v9 = 134217984;
              v10 = v7;
              _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "keychain item data exceeds reasonable size (%lu bytes)", &v9, 0xCu);
            }
          }
        }
      }
    }
  }
}

void Security::CFError::throwMe(Security::CFError *this)
{
  exception = __cxa_allocate_exception(0x90uLL);
  Security::CFError::CFError(exception);
}

uint64_t Security::mmapDeallocatorDeallocate(Security *this, CFDataRef theData, void *a3)
{
  v4 = *CFDataGetBytePtr(theData);

  return munmap(this, v4);
}

void Security::CodeSigning::BundleDiskRep::~BundleDiskRep(Security::CodeSigning::BundleDiskRep *this)
{
  Security::CodeSigning::BundleDiskRep::~BundleDiskRep(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8B178;
  *(this + 2) = &unk_1EFA8B2A0;
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(this + 27));
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(this + 24));
  Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(this + 104);
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  Security::CFRef<__CFURL const*>::~CFRef(this + 8);
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  Security::CFRef<__CFBundle *>::~CFRef(this + 3);

  Security::CodeSigning::DiskRep::~DiskRep(this);
}

void Security::CodeSigning::MachORep::~MachORep(Security::CodeSigning::MachORep *this)
{
  Security::CodeSigning::MachORep::~MachORep(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8BE48;
  *(this + 6) = &unk_1EFA8BF70;
  v2 = *(this + 7);
  if (v2)
  {
    free(*(v2 + 8));
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(v2 + 56));
    MEMORY[0x18CFD9760](v2, 0x1020C4076728D04);
  }

  free(*(this + 8));
  *this = &unk_1EFA8C1B0;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 40));
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  Security::CodeSigning::DiskRep::~DiskRep(this);
}

void Security::SecCFObject::operator delete(char *a1)
{
  v1 = a1 - 24;
  v2 = CFGetAllocator(a1 - 24);
  CFAllocatorDeallocate(v2, v1);
}

void *Security::CodeSigning::SecStaticCode::requiredStatic(Security::CodeSigning::SecStaticCode *this, const __SecCode *a2)
{
  if (!this)
  {
    goto LABEL_8;
  }

  v2 = this + 24;
  if (result)
  {
    return result;
  }

  if (!v4)
  {
LABEL_8:
    Security::MacOSError::throwMe(0xFFFEFA01);
  }

  v5 = v4;
  if ((v4[24] & 1) == 0)
  {
    (*(*v4 + 80))(v4);
    v5[24] = 1;
  }

  return *(v5 + 4);
}

uint64_t Security::CFClass::refCountForType(Security::CFClass *this, Security::CFClass *a2, const void *a3)
{
  v14 = 0;
  if (a2)
  {
    v5 = a2 + 24;
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(*v5 + 64))(v5);
  v8 = v6;
  if (v6)
  {
    v9 = pthread_mutex_lock(v6);
    if (v9)
    {
      Security::UnixError::throwMe(v9);
    }

    v11 = Security::CFClass::cleanupObject(this, a2, &v14, v10);
    v12 = pthread_mutex_unlock(v8);
    if (v12)
    {
      Security::UnixError::throwMe(v12);
    }
  }

  else
  {
    v11 = Security::CFClass::cleanupObject(this, a2, &v14, v7);
  }

  if (v14 == 1)
  {
    (*(*v5 + 8))(v5);
  }

  return v11;
}

void sub_1887FD468(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::StLock<Security::Mutex,&Security::Mutex::lock,&Security::Mutex::unlock>::~StLock(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1887FD448);
}

uint64_t Security::CFClass::cleanupObject(Security::CFClass *this, Security::CFClass *a2, _BYTE *a3, BOOL *a4)
{
  *a3 = 0;
  if (a2)
  {
    v7 = (a2 + 24);
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_lock(v7 + 3);
  os_unfair_lock_opaque = v7[2]._os_unfair_lock_opaque;
  if (this == -1)
  {
    if (!os_unfair_lock_opaque)
    {
      os_unfair_lock_unlock(v7 + 3);
      goto LABEL_14;
    }

LABEL_10:
    v9 = os_unfair_lock_opaque + this;
    v7[2]._os_unfair_lock_opaque = v9;
    os_unfair_lock_unlock(v7 + 3);
    if (!this)
    {
      return v9;
    }

    if (v9)
    {
      return 0;
    }

LABEL_14:
    if ((*(*&v7->_os_unfair_lock_opaque + 72))(v7))
    {
      Security::CFClass::finalizeType(a2, v10);
      v9 = 0;
      *a3 = 1;
      return v9;
    }

    return 0;
  }

  if (os_unfair_lock_opaque != -1)
  {
    goto LABEL_10;
  }

  os_unfair_lock_unlock(v7 + 3);
  if (this)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

__CFDictionary *Security::makeCFMutableDictionary(Security *this, void *key, const void *a3, void *keya, const void *a5, ...)
{
  CFMutableDictionary = Security::makeCFMutableDictionary(this);
  CFDictionaryAddValue(CFMutableDictionary, keya, a5);
  return CFMutableDictionary;
}

void *Security::CodeSigning::SecStaticCode::codeDirectories(Security::CodeSigning::SecStaticCode *this, int a2)
{
  v2 = this + 104;
  v3 = (this + 104);
  if (!*(this + 15))
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x4002000000;
    v52 = __Block_byref_object_copy__18077;
    v55[0] = 0;
    v55[1] = 0;
    v53 = __Block_byref_object_dispose__18078;
    v54 = v55;
    v42 = 0;
    v43 = &v42;
    v44 = 0x4002000000;
    v45 = __Block_byref_object_copy__13;
    v48[0] = 0;
    v48[1] = 0;
    v46 = __Block_byref_object_dispose__14;
    v47 = v48;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3002000000;
    v39 = __Block_byref_object_copy__15;
    v40 = __Block_byref_object_dispose__16;
    v41 = 0;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 0x40000000;
    v30 = ___ZNK8Security11CodeSigning13SecStaticCode19loadCodeDirectoriesERNSt3__13mapIjNS_9CFCopyRefIPK8__CFDataEENS2_4lessIjEENS2_9allocatorINS2_4pairIKjS8_EEEEEE_block_invoke;
    v31 = &unk_1E70E4B00;
    v32 = &v49;
    v33 = &v42;
    v34 = &v36;
    v35 = this;
    if (___ZNK8Security11CodeSigning13SecStaticCode19loadCodeDirectoriesERNSt3__13mapIjNS_9CFCopyRefIPK8__CFDataEENS2_4lessIjEENS2_9allocatorINS2_4pairIKjS8_EEEEEE_block_invoke(v29, 0))
    {
      v6 = 4096;
      do
      {
        v7 = v30(v29, v6);
        v8 = v6 == 4100;
        v6 = (v6 + 1);
        if (v8)
        {
          v9 = 0;
        }

        else
        {
          v9 = v7;
        }
      }

      while ((v9 & 1) != 0);
      v10 = v50;
      if (!v50[7])
      {
        Security::MacOSError::throwMe(0xFFFEFA0BLL);
      }

      v11 = v50 + 5;
      v12 = *(this + 13);
      *(this + 13) = v50[5];
      v10[5] = v12;
      v15 = *(this + 14);
      v14 = *(this + 15);
      v13 = (this + 112);
      v17 = *(v10 + 3);
      v16 = v10 + 6;
      *(this + 7) = v17;
      *v16 = v15;
      v16[1] = v14;
      if (*(this + 15))
      {
        v3 = (*v13 + 16);
      }

      *v3 = v13;
      if (v14)
      {
        v11 = (*v16 + 16);
      }

      *v11 = v16;
      v18 = v43;
      v19 = v43 + 5;
      v20 = *(this + 43);
      *(this + 43) = v43[5];
      *v19 = v20;
      v21 = (this + 352);
      v23 = *(v18 + 3);
      v22 = v18 + 6;
      v25 = *(this + 44);
      v24 = *(this + 45);
      *(this + 22) = v23;
      *v22 = v25;
      v22[1] = v24;
      if (*(this + 45))
      {
        v26 = (*v21 + 16);
      }

      else
      {
        v26 = (this + 344);
      }

      *v26 = v21;
      if (v24)
      {
        v19 = (*v22 + 16);
      }

      *v19 = v22;
      Security::CFRef<__CFURL const*>::operator=(this + 16, v37 + 5);
    }

    _Block_object_dispose(&v36, 8);
    Security::CFRef<__CFData const*>::~CFRef(&v41);
    _Block_object_dispose(&v42, 8);
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v48[0]);
    _Block_object_dispose(&v49, 8);
    std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(v55[0]);
    v27 = *(this + 15);
    if (v27)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    if (!v27 && a2)
    {
      Security::MacOSError::throwMe(0xFFFEFA0ALL);
    }
  }

  return v3;
}

uint64_t Security::CodeSigning::MachORep::signingData(Security::CodeSigning::MachORep *this)
{
  v4 = *MEMORY[0x1E69E9840];
  result = *(this + 8);
  if (!result)
  {
    v3 = (*(*this + 80))(this);
    Security::Universal::architecture(v3);
  }

  return result;
}

void sub_1887FDD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  (*(*v21 + 8))(v21, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void *Security::BlobCore::readBlob(Security::BlobCore *this, off_t a2, int a3, size_t a4)
{
  v7 = this;
  __buf = 0;
  if (pread(this, &__buf, 8uLL, a2) != 8)
  {
    return 0;
  }

  v8 = bswap32(HIDWORD(__buf));
  if (bswap32(__buf) != a3 || v8 < 0xC)
  {
    goto LABEL_6;
  }

  if (a4 && v8 > a4)
  {
    v10 = 12;
    goto LABEL_11;
  }

  v13 = malloc_type_malloc(v8, 0x100004000313F17uLL);
  v11 = v13;
  if (v13)
  {
    *v13 = __buf;
    v14 = bswap32(HIDWORD(__buf)) - 8;
    if (pread(v7, v13 + 1, v14, a2 + 8) != v14)
    {
      free(v11);
LABEL_6:
      v10 = 22;
LABEL_11:
      v11 = 0;
      *__error() = v10;
    }
  }

  return v11;
}

CFDataRef Security::CodeSigning::EmbeddedSignatureBlob::blobData(Security::CodeSigning::EmbeddedSignatureBlob *this, const UInt8 *a2, const Security::BlobCore *a3)
{
  if (Security::CodeSigning::CodeDirectory::slotAttributes(this) >= 2)
  {
    v6 = bswap32(*(a2 + 1));
    v7 = a2;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_13;
    }

    v4 = bswap32(*(a2 + 1));
    if (*a2 != 17555194 || v4 <= 7)
    {
      *__error() = 22;
LABEL_13:
      Security::MacOSError::throwMe(0xFFFEFA1BLL);
    }

    v6 = v4 - 8;
    v7 = a2 + 8;
  }

  return CFDataCreate(0, v7, v6);
}

CFDataRef Security::CodeSigning::EmbeddedSignatureBlob::component(Security::CodeSigning::EmbeddedSignatureBlob *this, Security::CodeSigning::EmbeddedSignatureBlob *a2, const Security::BlobCore *a3)
{
  v3 = *(this + 2);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  LODWORD(v5) = bswap32(v3);
  v5 = v5 <= 1 ? 1 : v5;
  v6 = (this + 12);
  while (1)
  {
    v7 = *v6;
    v6 += 2;
    if (bswap32(v7) == a2)
    {
      break;
    }

    if (v5 == ++v4)
    {
      return 0;
    }
  }

  v8 = *(this + 2 * v4 + 4);
  v10 = v8 == 0;
  v9 = this + bswap32(v8);
  v10 = v10 || v9 == 0;
  if (v10)
  {
    return 0;
  }

  else
  {
    return Security::CodeSigning::EmbeddedSignatureBlob::blobData(a2, v9, a3);
  }
}

uint64_t Security::CodeSigning::CodeDirectory::slotAttributes(Security::CodeSigning::CodeDirectory *this)
{
  if (this <= 4095)
  {
    if (this > 0xB)
    {
      return 0;
    }

    if (((1 << this) & 0xFA4) != 0)
    {
      return 2;
    }

    if (this)
    {
      return 0;
    }

    return 3;
  }

  if (this < 0x10000)
  {
    if ((this - 4096) < 5)
    {
      return 3;
    }

    return 0;
  }

  return this == 0x10000 || this == 65537;
}

const void **Security::CFRef<__CFData const*>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *std::__tree<unsigned int>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

CFDataRef Security::CodeSigning::BundleDiskRep::metaData(Security::CodeSigning::BundleDiskRep *this, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  Security::CodeSigning::BundleDiskRep::metaPath(&__p, this, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  CFURL = Security::makeCFURL(p_p, 0, 0, v3);
  v7 = CFURL;
  v11 = CFURL;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (CFURL)
  {
LABEL_6:
    File = Security::cfLoadFile(v7, v6);
    goto LABEL_11;
  }

  v9 = secLogObjForScope("bundlediskrep");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = a2;
    _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "no metapath for %s", &__p, 0xCu);
  }

  File = 0;
LABEL_11:
  Security::CFRef<__CFURL const*>::~CFRef(&v11);
  return File;
}

const char *Security::CodeSigning::CodeDirectory::canonicalSlotName(Security::CodeSigning::CodeDirectory *this)
{
  if (this <= 8)
  {
    if (this > 4)
    {
      if (this > 6)
      {
        if (this == 7)
        {
          return "CodeEntitlementDER";
        }

        else
        {
          return "LaunchConstraintSelf";
        }
      }

      else if (this == 5)
      {
        return "CodeEntitlements";
      }

      else
      {
        return "CodeRepSpecific";
      }
    }

    if (this > 2)
    {
      if (this == 3)
      {
        return "CodeResources";
      }

      else
      {
        return "CodeTopDirectory";
      }
    }

    if (!this)
    {
      return "CodeDirectory";
    }

    if (this == 2)
    {
      return "CodeRequirements";
    }

    return 0;
  }

  if (this <= 4096)
  {
    if (this <= 10)
    {
      if (this == 9)
      {
        return "LaunchConstraintParent";
      }

      else
      {
        return "LaunchConstraintResponsible";
      }
    }

    if (this == 11)
    {
      return "LibraryConstraint";
    }

    if (this == 4096)
    {
      return "CodeRequirements-1";
    }

    return 0;
  }

  if (this > 4098)
  {
    switch(this)
    {
      case 0x1003:
        return "CodeRequirements-4";
      case 0x1004:
        return "CodeRequirements-5";
      case 0x10000:
        return "CodeSignature";
    }

    return 0;
  }

  if (this == 4097)
  {
    return "CodeRequirements-2";
  }

  else
  {
    return "CodeRequirements-3";
  }
}

void Security::CodeSigning::BundleDiskRep::metaPath(std::string *this, const char *a2, const char *a3)
{
  v6 = (a2 + 32);
  if ((a2[55] & 0x8000000000000000) != 0)
  {
    if (*(a2 + 5))
    {
      goto LABEL_20;
    }
  }

  else if (a2[55])
  {
    goto LABEL_20;
  }

  memset(&v18, 170, sizeof(v18));
  v7 = CFBundleCopySupportFilesDirectoryURL(*(a2 + 3));
  Security::cfStringRelease(&v18, v7);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  memset(v17, 170, sizeof(v17));
  v9 = v17;
  std::string::basic_string[abi:ne200100](v17, size + 15);
  if (v17[23] < 0)
  {
    v9 = *v17;
  }

  if (size)
  {
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v18;
    }

    else
    {
      v10 = v18.__r_.__value_.__r.__words[0];
    }

    memmove(v9, v10, size);
  }

  strcpy(&v9[size], "/_CodeSignature");
  if (a2[55] < 0)
  {
    operator delete(*v6);
  }

  *v6 = *v17;
  *(v6 + 2) = *&v17[16];
  v11 = v6;
  if (a2[55] < 0)
  {
    v11 = *v6;
  }

  *(a2 + 56) = access(v11, 0) == 0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
    if (a3)
    {
      goto LABEL_21;
    }

LABEL_34:
    if (a2[55] < 0)
    {
      std::string::__init_copy_ctor_external(this, *(a2 + 4), *(a2 + 5));
    }

    else
    {
      *&this->__r_.__value_.__l.__data_ = *v6;
      this->__r_.__value_.__r.__words[2] = *(v6 + 2);
    }

    return;
  }

LABEL_20:
  if (!a3)
  {
    goto LABEL_34;
  }

LABEL_21:
  if (a2[55] >= 0)
  {
    v12 = *(a2 + 55);
  }

  else
  {
    v12 = *(a2 + 5);
  }

  memset(&v18, 170, sizeof(v18));
  v13 = &v18;
  std::string::basic_string[abi:ne200100](&v18, v12 + 1);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = v18.__r_.__value_.__r.__words[0];
  }

  if (v12)
  {
    if (a2[55] >= 0)
    {
      v14 = v6;
    }

    else
    {
      v14 = *(a2 + 4);
    }

    memmove(v13, v14, v12);
  }

  *(&v13->__r_.__value_.__l.__data_ + v12) = 47;
  v15 = strlen(a3);
  v16 = std::string::append(&v18, a3, v15);
  *this = *v16;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_1887FE588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFDataRef Security::cfLoadFile(Security *this, const __CFURL *a2)
{
  Security::cfString(&v12, this);
  *__p = *&v12.st_dev;
  v11 = *&v12.st_uid;
  if ((v12.st_gid & 0x80000000) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  *v9 = 0xAAAAAAAAFFFFFFFFLL;
  Security::UnixPlusPlus::FileDesc::open(v9, v2, 0, 4534);
  v3.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v3.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v8.st_blksize = v3;
  *v8.st_qspare = v3;
  v8.st_birthtimespec = v3;
  *&v8.st_size = v3;
  v8.st_mtimespec = v3;
  v8.st_ctimespec = v3;
  *&v8.st_uid = v3;
  v8.st_atimespec = v3;
  *&v8.st_dev = v3;
  v4 = v9[0];
  if (v9[0] == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    if (!fstat(v9[0], &v8) && (v8.st_size & 0x8000000000000000) == 0)
    {
      v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v12.st_blksize = v6;
      *v12.st_qspare = v6;
      v12.st_birthtimespec = v6;
      *&v12.st_size = v6;
      v12.st_mtimespec = v6;
      v12.st_ctimespec = v6;
      *&v12.st_uid = v6;
      v12.st_atimespec = v6;
      *&v12.st_dev = v6;
      Security::UnixPlusPlus::FileDesc::fstat(v4, &v12);
      v5 = Security::cfMapFile(v4, v12.st_size);
    }
  }

  Security::UnixPlusPlus::FileDesc::closeAndLog(v9);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1887FE6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(const void **a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(*a1);
    std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(a1[1]);
    Security::CFRef<__CFData const*>::~CFRef(a1 + 5);

    operator delete(a1);
  }
}

CFStringRef *Security::CFTempString::CFTempString<std::string>(CFStringRef *a1, char *cStr)
{
  v2 = cStr;
  if (cStr[23] < 0 && (v2 = *cStr) == 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = CFStringCreateWithCString(0, v2, 0x8000100u);
    if (!v4)
    {
      v4 = CFStringCreateWithCString(0, v2, 0x600u);
      if (!v4)
      {
        Security::CFError::throwMe(0);
      }
    }
  }

  *a1 = v4;
  return a1;
}

const void **Security::CFRef<__CFNumber const*>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void Security::CodeSigning::BundleDiskRep::format(Security::CodeSigning::BundleDiskRep *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 103) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 10), *(this + 11));
  }

  else
  {
    *a2 = *(this + 80);
  }
}

CFDataRef Security::CodeSigning::SecStaticCode::cdHash(CFDataRef *this)
{
  if (!this[67])
  {
    v2 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 0);
    if (v2)
    {
      Security::CodeSigning::CodeDirectory::cdhash(v2, 1u);
    }
  }

  return this[67];
}

void Security::CodeSigning::CodeDirectory::cdhash(Security::CodeSigning::CodeDirectory *this, unsigned int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5 = v2;
  v6 = v2;
  v3 = v2;
  v4 = v2;
  Security::CodeSigning::CodeDirectory::hashFor(*(this + 37));
}

void sub_1887FEA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  Security::RefPointer<Security::DynamicHash>::~RefPointer(va);
  _Unwind_Resume(a1);
}

void Security::CodeSigning::CodeDirectory::hashFor(Security::CodeSigning::CodeDirectory *this)
{
  if (this > 2)
  {
    if (this == 3)
    {
      operator new();
    }

    if (this == 4)
    {
      operator new();
    }
  }

  else
  {
    if (this == 1)
    {
      operator new();
    }

    if (this == 2)
    {
      operator new();
    }
  }

  Security::MacOSError::throwMe(0xFFFEFA0DLL);
}

Security::CCHashInstance *Security::CCHashInstance::CCHashInstance(Security::CCHashInstance *this, uint64_t a2, uint64_t a3)
{
  *(this + 2) = 0;
  *this = &unk_1EFA8A810;
  v5 = CCDigestCreate();
  *(this + 2) = v5;
  if (!v5)
  {
    Security::UnixError::throwMe(0xC);
  }

  *(this + 3) = a3;
  return this;
}

uint64_t Security::CCHashInstance::digestLength(Security::CCHashInstance *this)
{
  if (*(this + 3))
  {
    return *(this + 3);
  }

  else
  {
    return CCDigestOutputSize();
  }
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *a1, size_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_1887FEC8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *Security::CCHashInstance::finish(Security::CCHashInstance *this, unsigned __int8 *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (*(this + 3))
  {
    v4 = CCDigestOutputSize();
    v5 = MEMORY[0x1EEE9AC00](v4);
    v7 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      memset(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v6);
    }

    CCDigestFinal();
    return memcpy(a2, v7, *(this + 3));
  }

  else
  {

    return CCDigestFinal();
  }
}

uint64_t Security::RefPointer<Security::DynamicHash>::~RefPointer(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = pthread_mutex_lock((a1 + 8));
  if (v3)
  {
    Security::UnixError::throwMe(v3);
  }

  Security::RefPointer<Security::DynamicHash>::release_internal(a1);
  v4 = pthread_mutex_unlock(v2);
  if (v4)
  {
    Security::UnixError::throwMe(v4);
  }

  Security::Mutex::~Mutex(v2);
  return a1;
}

void Security::CCHashInstance::~CCHashInstance(Security::CCHashInstance *this)
{
  Security::CCHashInstance::~CCHashInstance(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8A810;
  CCDigestDestroy();
}

void *Security::RefPointer<Security::DynamicHash>::release_internal(void *result)
{
  if (*result && atomic_fetch_add_explicit((*result + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v1 = result;
    result = *result;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *v1 = 0;
  }

  return result;
}

void Security::Mutex::~Mutex(pthread_mutex_t *this)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = pthread_mutex_destroy(this);
  if (v1)
  {
    v3 = v1;
    v2 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v4) = 67109120;
      HIDWORD(v4) = v3;
      _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "Probable bug: error destroying Mutex: %d", &v4, 8u);
    }

    Security::UnixError::throwMe(v3);
  }
}

void sub_1887FF008(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t amfi_interface_cdhash_in_trustcache(__int128 *a1, uint64_t a2, void *a3)
{
  result = 22;
  if (a1 && a2 == 20 && a3)
  {
    *a3 = 0;
    result = __sandbox_ms();
    if (result)
    {
      return *__error();
    }

    else
    {
      *a3 = 0;
    }
  }

  return result;
}

UInt8 *Security::CodeSigning::SecStaticCode::validateDirectory(UInt8 *this)
{
  v1 = this;
  __p[6] = *MEMORY[0x1E69E9840];
  if (this[176] != 1 || (this[211] & 0x40) != 0 && (this[177] & 1) == 0)
  {
    v2 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 0);
    if (!v2 || (v2[15] & 2) == 0)
    {
      __p[3] = v1;
      v3 = Security::CodeSigning::SecStaticCode::signature(v1);
      Security::CodeSigning::SecStaticCode::codeDirectory(v1, 1);
      *(v1 + 47) = 0;
      v27 = 0xAAAAAAAAAAAAAAAALL;
      cf = 0;
      if ((v1[209] & 4) != 0)
      {
        __p[0] = SecPolicyCreateAppleSoftwareSigning();
      }

      else
      {
        __p[0] = SecPolicyCreateiPhoneApplicationSigning();
      }

      CFArray = Security::makeCFArray(__p[0], v4, v5, __p[0]);
      Security::CFRef<__SecPolicy *>::~CFRef(__p);
      v27 = CFArray;
      v7 = *(v1 + 16);
      v8 = *(v1 + 79);
      if (v8)
      {
        CFRelease(v8);
      }

      *(v1 + 79) = 0;
      if (cf)
      {
        CFRelease(cf);
      }

      cf = 0;
      v9 = SecCMSVerifySignedData_internal(v3, v7, CFArray, v1 + 79, 0, 0, &cf);
      if (v9)
      {
        Security::MacOSError::throwMe(v9);
      }

      *(v1 + 47) = SecTrustGetVerifyTime(*(v1 + 79));
      v26 = 0;
      v10 = SecTrustEvaluateInternal(*(v1 + 79), &v26);
      if (v10)
      {
        Security::MacOSError::throwMe(v10);
      }

      __p[0] = 0;
      Value = CFDictionaryGetValue(cf, kSecCMSHashAgility);
      Security::CFRef<__CFArray const*>::operator=(__p, Value);
      if (__p[0])
      {
        CFDictionaryFrom = Security::makeCFDictionaryFrom(__p[0], v12);
        v13 = CFDictionaryGetValue(CFDictionaryFrom, @"cdhashes");
        v15 = Security::CodeSigning::SecStaticCode::cdHashes(v1, v14);
        if (!v13 || !CFEqual(v13, v15))
        {
          Security::MacOSError::throwMe(0xFFFEFA0BLL);
        }

        Security::CFRef<__CFDictionary const*>::~CFRef(&CFDictionaryFrom);
      }

      v16 = SecTrustCopyCertificateChain(*(v1 + 79));
      v17 = *(v1 + 80);
      if (v17)
      {
        CFRelease(v17);
      }

      *(v1 + 80) = v16;
      v19 = v26 == 4 || v26 == 1;
      v1[648] = v19;
      Security::CFRef<__CFData const*>::~CFRef(__p);
      Security::CFRef<__CFArray const*>::~CFRef(&v27);
      Security::CFRef<__CFDictionary const*>::~CFRef(&cf);
      Security::CodeSigning::SecStaticCode::verifySignature(void)::_DTFrameCODESIGN_EVAL_STATIC_SIGNATURE::~_DTFrameCODESIGN_EVAL_STATIC_SIGNATURE();
    }

    v1[184] = 0;
    if ((v1[211] & 0x40) != 0)
    {
      v1[177] = 1;
    }

    this = Security::CodeSigning::SecStaticCode::codeDirectory(v1, 1);
    v20 = *(this + 6);
    if (v20)
    {
      v21 = bswap32(v20);
      if (v21 >= 0xB)
      {
        v22 = 11;
      }

      else
      {
        v22 = v21;
      }

      do
      {
        if (*&v1[8 * v22 + 392])
        {
          if (v22 == 3)
          {
            v23 = -67023;
          }

          else
          {
            v23 = -67061;
          }

          if (v22 == 1)
          {
            v24 = 4294900266;
          }

          else
          {
            v24 = v23;
          }

          this = (*(*v1 + 96))(v1, v22, v24);
        }

        --v22;
      }

      while (v22);
    }

    v1[176] = 1;
    *(v1 + 45) = 0;
  }

  return this;
}

void sub_1887FF41C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, void *__p, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2)
  {
    Security::CFRef<__SecPolicy *>::~CFRef(&__p);
    Security::CFRef<__CFDictionary const*>::~CFRef(&a13);
    Security::CodeSigning::SecStaticCode::verifySignature(void)::_DTFrameCODESIGN_EVAL_STATIC_SIGNATURE::~_DTFrameCODESIGN_EVAL_STATIC_SIGNATURE();
    v20 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v17 + 176) = 1;
      *(v17 + 180) = (*(*v20 + 24))(v20);
      __cxa_rethrow();
    }

    v21 = secLogObjForScope("staticCode");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v17;
      _os_log_debug_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEBUG, "%p validation threw non-common exception", &buf, 0xCu);
    }

    *(v17 + 176) = 1;
    Security::Syslog::notice("code signing internal problem: unknown exception thrown by validation", v22);
    *(v17 + 180) = -67048;
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1887FF5F4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1887FF5FCLL);
  }

  __clang_call_terminate(a1);
}

CFTypeRef Security::CodeSigning::SecStaticCode::cdHashes(Security::CodeSigning::SecStaticCode *this, uint64_t a2)
{
  result = *(this + 68);
  if (!result)
  {
    CFMutableArray = Security::makeCFMutableArray(0, a2);
    theArray = CFMutableArray;
    v5 = *(this + 13);
    if (v5 != (this + 112))
    {
      BytePtr = CFDataGetBytePtr(v5[5]);
      v8 = 0xAAAAAAAAAAAAAAAALL;
      Security::CodeSigning::CodeDirectory::cdhash(BytePtr, 1u);
    }

    v7 = (this + 544);
    Security::CFRef<__CFArray const*>::operator=(v7, CFMutableArray);
    Security::CFRef<__CFArray *>::~CFRef(&theArray);
    return *v7;
  }

  return result;
}

void sub_1887FF6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFArray *>::~CFRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef *Security::CFRef<__CFArray const*>::operator=(CFTypeRef *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = cf;
  return a1;
}

const void **Security::CFRef<__CFArray *>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **Security::CFRef<__CFDictionary *>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t **std::set<unsigned int>::set[abi:ne200100](uint64_t **a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(a1, v3, *(v5 + 7), v5 + 7);
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

uint64_t std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(uint64_t **a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  v4 = a2;
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *(a2 + 28), v6 > a3))
  {
    v7 = *a2;
    if (*a1 == a2)
    {
      v9 = a2;
LABEL_16:
      if (v7)
      {
        v10 = (v9 + 8);
      }

      else
      {
        v10 = a2;
      }

      goto LABEL_19;
    }

    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = *(v8 + 8);
      }

      while (v8);
    }

    else
    {
      v13 = a2;
      do
      {
        v9 = *(v13 + 16);
        v14 = *v9 == v13;
        v13 = v9;
      }

      while (v14);
    }

    if (*(v9 + 28) < a3)
    {
      goto LABEL_16;
    }

    v15 = *v5;
    if (!*v5)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v16 = v15;
        v17 = *(v15 + 7);
        if (v17 <= a3)
        {
          break;
        }

        v15 = *v16;
        v5 = v16;
        if (!*v16)
        {
          goto LABEL_38;
        }
      }

      if (v17 >= a3)
      {
        break;
      }

      v5 = v16 + 1;
      v15 = v16[1];
      if (!v15)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    v10 = v5;
    goto LABEL_19;
  }

  if (v6 >= a3)
  {
    return v4;
  }

  v10 = (a2 + 8);
  v11 = *(a2 + 8);
  if (v11)
  {
    do
    {
      v10 = v11;
      v11 = *v11;
      v12 = v10;
    }

    while (v11);
  }

  else
  {
    v12 = a2;
    do
    {
      v18 = v12;
      v12 = *(v12 + 16);
    }

    while (*v12 != v18);
  }

  if (v12 != v5 && *(v12 + 28) <= a3)
  {
    v19 = *v5;
    if (!*v5)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v20 = v19;
        v21 = *(v19 + 7);
        if (v21 <= a3)
        {
          break;
        }

        v19 = *v20;
        v5 = v20;
        if (!*v20)
        {
          goto LABEL_38;
        }
      }

      if (v21 >= a3)
      {
        goto LABEL_40;
      }

      v5 = v20 + 1;
      v19 = v20[1];
      if (!v19)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_19:
  v4 = *v10;
  if (!*v10)
  {
LABEL_38:
    operator new();
  }

  return v4;
}

CFNumberRef ___ZN8Security11CodeSigning13SecStaticCode18signingInformationEj_block_invoke(uint64_t a1, unsigned int a2)
{
  valuePtr = a2;
  v2 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  valuePtr = v2;
  Security::CFRef<__CFNumber const*>::~CFRef(&valuePtr);
  return v2;
}

uint64_t Security::CodeSigning::SecStaticCode::signature(Security::CodeSigning::SecStaticCode *this)
{
  v1 = *(this + 46);
  if (!v1)
  {
    v1 = (*(**(this + 4) + 24))(*(this + 4), 0x10000);
    v3 = *(this + 46);
    if (v3)
    {
      CFRelease(v3);
    }

    *(this + 46) = v1;
    if (!v1)
    {
      Security::MacOSError::throwMe(0xFFFEFA0ALL);
    }
  }

  return v1;
}

uint64_t Security::CodeSigning::SecStaticCode::validationCategory(CFDataRef *this)
{
  result = *(this + 163);
  if (!result)
  {
    v3 = Security::CodeSigning::SecStaticCode::cdHash(this);
    v12 = 0;
    BytePtr = CFDataGetBytePtr(v3);
    Length = CFDataGetLength(v3);
    if (!amfi_interface_cdhash_in_trustcache(BytePtr, Length, &v12) && v12 == 1)
    {
      result = 1;
LABEL_24:
      *(this + 163) = result;
      return result;
    }

    v6 = Security::CodeSigning::SecStaticCode::signature(this);
    v7 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 0);
    if (v7 && (v7[15] & 2) != 0)
    {
      result = 10;
      goto LABEL_24;
    }

    v12 = 0;
    if (os_variant_allows_internal_security_policies())
    {
      v8 = 1;
    }

    else
    {
      if (SecAreQARootCertificatesEnabled_onceToken != -1)
      {
        dispatch_once(&SecAreQARootCertificatesEnabled_onceToken, &__block_literal_global_16024);
      }

      v8 = SecAreQARootCertificatesEnabled_sQACertsEnabled;
    }

    v9 = CFDataGetBytePtr(v6);
    v10 = CFDataGetLength(v6);
    v11 = CTVerifyAmfiCertificateChain(v9, v10, v8 & 1, 16, &v12);
    result = 10;
    *(this + 163) = 10;
    if (!v11)
    {
      if ((v12 & 0x80000001140) != 0 || (v8 & ((v12 & 0x100000002200) != 0)) != 0)
      {
        result = 4;
        goto LABEL_24;
      }

      if ((v12 & 0x90) != 0)
      {
        result = 3;
        goto LABEL_24;
      }

      if ((v12 & 0x10000) != 0)
      {
        result = 5;
        goto LABEL_24;
      }

      if ((v12 & 0x400) == 0 && (v12 & 0xC000) != 0)
      {
        result = 2;
        goto LABEL_24;
      }
    }
  }

  return result;
}

uint64_t Security::CodeSigning::SecStaticCode::infoDictionary(Security::CodeSigning::SecStaticCode *this, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  result = *(this + 61);
  if (!result || a2 && (*(this + 496) & 1) == 0)
  {
    Dictionary = Security::CodeSigning::SecStaticCode::getDictionary(this, 1, a2);
    v6 = *(this + 61);
    if (v6)
    {
      CFRelease(v6);
    }

    *(this + 61) = Dictionary;
    *(this + 496) = a2;
    v7 = secLogObjForScope("staticCode");
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    result = *(this + 61);
    if (v8)
    {
      v9 = "not ";
      v10 = 134218498;
      v11 = this;
      if (a2)
      {
        v9 = &unk_188967DD7;
      }

      v12 = 2048;
      v13 = result;
      v14 = 2080;
      v15 = v9;
      _os_log_debug_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEBUG, "%p loaded InfoDict %p, %schecked", &v10, 0x20u);
      return *(this + 61);
    }
  }

  return result;
}

const __CFData *Security::CodeSigning::SecStaticCode::getDictionary(UInt8 *this, uint64_t a2, int a3)
{
  if (a3)
  {
    Security::CodeSigning::SecStaticCode::validateDirectory(this);
  }

  result = (*(*this + 80))(this, a2, 4294900235);
  if (result)
  {
    v6 = result;
    (*(*this + 96))(this, a2, 4294900235);
    result = Security::makeCFDictionaryFrom(v6, v7);
    if (!result)
    {
      Security::MacOSError::throwMe(0xFFFEFA0ELL);
    }
  }

  return result;
}

CFTypeRef Security::CodeSigning::SecStaticCode::component(Security::CodeSigning::SecStaticCode *this, unsigned int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = this + 8 * a2;
  v3 = *(v2 + 49);
  v4 = MEMORY[0x1E695E738];
  if (v3)
  {
    goto LABEL_23;
  }

  theData = 0xAAAAAAAAAAAAAAAALL;
  theData = (*(**(this + 4) + 24))(*(this + 4));
  if (!theData)
  {
    if (*(this + 176))
    {
      v11 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 1);
      if (Security::CodeSigning::CodeDirectory::slotIsPresent(v11, -a2))
      {
        if (a2 == 3)
        {
          v20 = -67023;
        }

        else
        {
          v20 = -67061;
        }

        if (a2 == 1)
        {
          v21 = 4294900266;
        }

        else
        {
          v21 = v20;
        }

        Security::MacOSError::throwMe(v21);
      }
    }

    if (a2 == 7)
    {
      v12 = (*(*this + 80))(this, 5, 4294900235);
      if (v12)
      {
        (*(*this + 96))(this, 5, 4294900235);
        BytePtr = CFDataGetBytePtr(v12);
        v14 = bswap32(BytePtr[1]);
        if (*BytePtr == 1903288058 && v14 > 7)
        {
          v22 = Security::CodeSigning::EntitlementBlob::entitlements(BytePtr);
          if (CESerializeCFDictionary() == *MEMORY[0x1E69E50B8])
          {
            v18 = Security::Blob<Security::CodeSigning::EntitlementDERBlob,4208882034u>::blobify(0);
            v19 = *(v2 + 49);
            if (v19)
            {
              CFRelease(v19);
            }

            *(v2 + 49) = v18;
            CFRelease(0);
            Security::CFRef<__CFDictionary const*>::~CFRef(&v22);
            goto LABEL_22;
          }

          v17 = secLogObjForScope("staticCode");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v25 = this;
            _os_log_debug_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEBUG, "%p the XML cannot be converted to valid DER", buf, 0xCu);
          }

          Security::CFRef<__CFDictionary const*>::~CFRef(&v22);
        }

        else
        {
          *__error() = 22;
        }
      }
    }

    Security::CFRef<__CFArray const*>::operator=(v2 + 49, *v4);
LABEL_22:
    Security::CFRef<__CFData const*>::~CFRef(&theData);
    v3 = *(v2 + 49);
LABEL_23:
    if (v3 == *v4)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  if (!*(this + 176))
  {
    Security::CFRef<__CFURL const*>::operator=(v2 + 49, &theData);
    goto LABEL_22;
  }

  v7 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 1);
  if (Security::CodeSigning::CodeDirectory::slotIsPresent(v7, -a2))
  {
    v8 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 1);
    v9 = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    Security::CodeSigning::CodeDirectory::validateSlot(v8, v9, Length, -a2);
  }

  Security::CFRef<__CFData const*>::~CFRef(&theData);
  return 0;
}

void sub_1888001C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  Security::CFRef<__CFData const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

CFDataRef Security::cfMapFile(Security *this, size_t a2)
{
  v3 = this;
  v4 = lseek(this, 0, 1);
  v5 = mmap(0, a2, 1, 2, v3, v4);
  if (v5 == -1)
  {
    return 0;
  }

  v6 = v5;
  *bytes = a2;
  v11 = CFDataCreate(0, bytes, 8);
  context.version = xmmword_1EFA8A8F8;
  *&context.retain = unk_1EFA8A908;
  *&context.copyDescription = xmmword_1EFA8A918;
  *&context.reallocate = unk_1EFA8A928;
  context.preferredSize = off_1EFA8A938;
  context.info = v11;
  v9 = CFAllocatorCreate(0, &context);
  v7 = CFDataCreateWithBytesNoCopy(0, v6, *bytes, v9);
  if (!v7)
  {
    munmap(v6, a2);
  }

  Security::CFRef<__CFAllocator const*>::~CFRef(&v9);
  Security::CFRef<__CFData const*>::~CFRef(&v11);
  return v7;
}

const void **Security::CFRef<__CFAllocator const*>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

BOOL Security::CodeSigning::CodeDirectory::slotIsPresent(Security::CodeSigning::CodeDirectory *this, signed int a2)
{
  if (-bswap32(*(this + 6)) > a2)
  {
    return 0;
  }

  if (bswap32(*(this + 7)) <= a2)
  {
    return 0;
  }

  v2 = *(this + 36);
  if (!*(this + 36))
  {
    return 0;
  }

  v3 = this + bswap32(*(this + 4)) + v2 * a2;
  v4 = v2 - 1;
  do
  {
    v5 = *v3++;
    result = v5 != 0;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v4 == 0;
    }

    --v4;
  }

  while (!v7);
  return result;
}

void Security::CodeSigning::CodeDirectory::validateSlot(Security::CodeSigning::CodeDirectory *this, const void *a2, uint64_t a3, int a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = secLogObjForScope("codedir");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = this;
    *&buf[12] = 1024;
    *&buf[14] = a4;
    _os_log_debug_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEBUG, "%p validating slot %d", buf, 0x12u);
  }

  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v7;
  v10 = v7;
  *buf = v7;
  *&buf[16] = v7;
  Security::CodeSigning::CodeDirectory::hashFor(*(this + 37));
}

void sub_1888005D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Security::RefPointer<Security::DynamicHash>::~RefPointer(va);
  _Unwind_Resume(a1);
}

BOOL Security::CodeSigning::SecStaticCode::validateComponent(Security::CodeSigning::SecStaticCode *this, unsigned int a2, Security::MacOSError *a3)
{
  v5 = *(this + a2 + 49);
  v6 = *MEMORY[0x1E695E738];
  v7 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 1);
  v8 = v7;
  if (v5 != v6)
  {
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v5);
    Security::CodeSigning::CodeDirectory::validateSlot(v8, BytePtr, Length, -a2);
  }

  result = Security::CodeSigning::CodeDirectory::slotIsPresent(v7, -a2);
  if (result)
  {
    Security::MacOSError::throwMe(a3);
  }

  return result;
}

CFPropertyListRef Security::makeCFDictionaryFrom(CFDataRef xmlData, const __CFData *a2)
{
  if (!xmlData)
  {
    return 0;
  }

  v2 = CFPropertyListCreateFromXMLData(0, xmlData, 0, 0);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    TypeID = CFDictionaryGetTypeID();
    if (v4 != TypeID)
    {
      Security::CFError::throwMe(TypeID);
    }
  }

  return v3;
}

const UInt8 *Security::CodeSigning::SecStaticCode::teamID(Security::CodeSigning::SecStaticCode *this)
{
  v1 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 1);
  if (bswap32(*(v1 + 2)) >> 9 >= 0x101 && (v2 = *(v1 + 12)) != 0)
  {
    return &v1[bswap32(v2)];
  }

  else
  {
    return 0;
  }
}

uint64_t Security::CodeSigning::SecStaticCode::entitlements(UInt8 *this, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!*(this + 63) || a2 && (this[512] & 1) == 0)
  {
    if (a2)
    {
      Security::CodeSigning::SecStaticCode::validateDirectory(this);
    }

    v4 = (*(*this + 80))(this, 7, 4294900235);
    if (v4)
    {
      v5 = v4;
      v6 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 1);
      if (Security::CodeSigning::CodeDirectory::slotIsPresent(v6, -7))
      {
        (*(*this + 96))(this, 7, 4294900235);
      }

      BytePtr = CFDataGetBytePtr(v5);
      v8 = bswap32(*(BytePtr + 1));
      if (*BytePtr == 1920065274 && v8 > 7)
      {
        v10 = BytePtr;
        v11 = secLogObjForScope("staticCode");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v18 = bswap32(*(v10 + 1));
          v19 = "not ";
          *buf = 134218498;
          v25 = this;
          if (a2)
          {
            v19 = &unk_188967DD7;
          }

          v26 = 2048;
          v27 = v18;
          v28 = 2080;
          v29 = v19;
          _os_log_debug_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEBUG, "%p loaded DER blob with length %zu, %schecked", buf, 0x20u);
        }

        v12 = MEMORY[0x1E69E50B8];
        if (!*(this + 70))
        {
          v13 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v10 + 8, bswap32(*(v10 + 1)) - 8, *MEMORY[0x1E695E498]);
          v23 = v13;
          v14 = secLogObjForScope("staticCode");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            Length = CFDataGetLength(v13);
            *buf = 134218240;
            v25 = this;
            v26 = 2048;
            v27 = Length;
            _os_log_debug_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEBUG, "%p creating new CEQueryContext DER blob with length %lu", buf, 0x16u);
            v13 = v23;
          }

          if (SecCEContextFromCFData(v13, this + 70) != *v12)
          {
            *(this + 70) = 0;
            v22 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v25 = this;
              _os_log_impl(&dword_1887D2000, v22, OS_LOG_TYPE_DEFAULT, "%p caused an error during CoreEntitlements parsing", buf, 0xCu);
            }

            Security::MacOSError::throwMe(0xFFFF995DLL);
          }

          Security::CFRef<__CFData const*>::~CFRef(&v23);
        }

        v23 = 0xAAAAAAAAAAAAAAAALL;
        if (CEQueryContextToCFDictionary() != *v12)
        {
          v21 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v25 = this;
            _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "%p caused an error during CoreEntitlements dictionary generation", buf, 0xCu);
          }

          Security::MacOSError::throwMe(0xFFFF995DLL);
        }

        v15 = v23;
        v16 = *(this + 63);
        if (v16)
        {
          CFRelease(v16);
        }

        *(this + 63) = v15;
        this[512] = a2;
      }

      else
      {
        *__error() = 22;
      }
    }
  }

  return *(this + 63);
}

void sub_188800AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFData const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

const void **Security::CFRef<__CFDictionary const*>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **Security::CFRef<__CFArray const*>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void Security::SecPointerBase::~SecPointerBase(Security::SecPointerBase *this)
{
  v2 = objc_autoreleasePoolPush();
  if (*this)
  {
    v3 = (*(**this + 16))(*this);
    CFRelease(v3);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t Security::CFClass::finalizeType(Security::CFClass *this, const void *a2)
{
  if (this)
  {
    v2 = this + 24;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(*v2 + 64))(v2, a2);
  if (!v3)
  {
    return (*(*v2 + 56))(v2);
  }

  v6 = v3;
  v4 = pthread_mutex_lock(v3);
  if (v4)
  {
    Security::UnixError::throwMe(v4);
  }

  atomic_exchange(v2 - 8, 1u);
  (*(*v2 + 56))(v2);
  result = pthread_mutex_unlock(v6);
  if (result)
  {
    Security::UnixError::throwMe(result);
  }

  return result;
}

void sub_188800CD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Security::StLock<Security::Mutex,&Security::Mutex::lock,&Security::Mutex::unlock>::~StLock(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x188800CBCLL);
}

void Security::CodeSigning::SecStaticCode::~SecStaticCode(Security::CodeSigning::SecStaticCode *this)
{
  *this = &unk_1EFA8B9C0;
  SecCEReleaseContext(this + 70);
  free(*(this + 66));
  v2 = *(this + 25);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 75);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    Security::CodeSigning::ResourceBuilder::~ResourceBuilder(v4);
    MEMORY[0x18CFD9760]();
  }

  Security::CFRef<__CFDictionary const*>::~CFRef(this + 82);
  Security::CFRef<__CFArray const*>::~CFRef(this + 80);
  Security::CFRef<__SecTrust *>::~CFRef(this + 79);
  Security::CFRef<__CFURL const*>::~CFRef(this + 73);
  Security::CFRef<__CFData const*>::~CFRef(this + 71);
  Security::CFRef<__CFDictionary const*>::~CFRef(this + 69);
  Security::CFRef<__CFArray const*>::~CFRef(this + 68);
  Security::CFRef<__CFData const*>::~CFRef(this + 67);
  Security::CFRef<__CFDictionary const*>::~CFRef(this + 65);
  Security::CFRef<__CFDictionary const*>::~CFRef(this + 63);
  Security::CFRef<__CFDictionary const*>::~CFRef(this + 61);
  v5 = (this + 480);
  v6 = -96;
  do
  {
    v5 = Security::CFRef<__CFData const*>::~CFRef(v5) - 1;
    v6 += 8;
  }

  while (v6);
  Security::CFRef<__CFData const*>::~CFRef(this + 46);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(this + 44));
  Security::CFRef<__CFData const*>::~CFRef(this + 42);
  Security::Dispatch::Queue::~Queue((this + 224));
  Security::CFRef<__CFArray const*>::~CFRef(this + 21);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(this + 19));
  Security::CFRef<__CFData const*>::~CFRef(this + 17);
  Security::CFRef<__CFData const*>::~CFRef(this + 16);
  std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(*(this + 14));
  Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(this + 32);
}

{
  Security::CodeSigning::SecStaticCode::~SecStaticCode(this);

  Security::SecCFObject::operator delete(v1);
}

void sub_188800E9C(void *a1)
{
  Security::CFRef<__CFDictionary const*>::~CFRef((v1 + 656));
  Security::CFRef<__CFArray const*>::~CFRef((v1 + 640));
  Security::CFRef<__SecTrust *>::~CFRef((v1 + 632));
  Security::CFRef<__CFURL const*>::~CFRef((v1 + 584));
  Security::CFRef<__CFData const*>::~CFRef((v1 + 568));
  Security::CFRef<__CFDictionary const*>::~CFRef((v1 + 552));
  Security::CFRef<__CFArray const*>::~CFRef((v1 + 544));
  Security::CFRef<__CFData const*>::~CFRef((v1 + 536));
  Security::CFRef<__CFDictionary const*>::~CFRef((v1 + 520));
  Security::CFRef<__CFDictionary const*>::~CFRef((v1 + 504));
  Security::CFRef<__CFDictionary const*>::~CFRef((v1 + 488));
  v3 = (v1 + 480);
  v4 = -96;
  do
  {
    v3 = Security::CFRef<__CFData const*>::~CFRef(v3) - 1;
    v4 += 8;
  }

  while (v4);
  Security::CFRef<__CFData const*>::~CFRef((v1 + 368));
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(v1 + 352));
  Security::CFRef<__CFData const*>::~CFRef((v1 + 336));
  Security::Dispatch::Queue::~Queue((v1 + 224));
  Security::CFRef<__CFArray const*>::~CFRef((v1 + 168));
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(v1 + 152));
  Security::CFRef<__CFData const*>::~CFRef((v1 + 136));
  Security::CFRef<__CFData const*>::~CFRef((v1 + 128));
  std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(*(v1 + 112));
  Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(v1 + 32);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x188800E88);
}

const void **Security::CFRef<__SecTrust *>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void Security::Dispatch::Queue::~Queue(Security::Dispatch::Queue *this)
{
  *this = &unk_1EFA8A950;
  dispatch_barrier_sync(*(this + 11), &__block_literal_global_17012);
  dispatch_release(*(this + 11));
  std::exception_ptr::~exception_ptr(this + 10);
  Security::Mutex::~Mutex((this + 8));
}

{
  Security::Dispatch::Queue::~Queue(this);

  JUMPOUT(0x18CFD9760);
}

uint64_t Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = pthread_mutex_lock((a1 + 8));
  if (v3)
  {
    Security::UnixError::throwMe(v3);
  }

  Security::RefPointer<Security::CodeSigning::DiskRep>::release_internal(a1);
  v4 = pthread_mutex_unlock(v2);
  if (v4)
  {
    Security::UnixError::throwMe(v4);
  }

  Security::Mutex::~Mutex(v2);
  return a1;
}

uint64_t SecTokenItemCreateFromAttributes(const __CFDictionary *a1, const __CFDictionary *a2, void *a3, const void *a4, uint64_t *a5, CFTypeRef *a6)
{
  v11 = a3;
  v38 = 0;
  cf = 0;
  theDict = a2;
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a1);
  Value = CFDictionaryGetValue(a1, @"tkid");
  if (!a4)
  {
    goto LABEL_10;
  }

  v14 = Value;
  if (!Value)
  {
    goto LABEL_10;
  }

  v15 = CFGetTypeID(Value);
  if (v15 != CFStringGetTypeID())
  {
    SecError(-50, a6, @"Unexpected type");

LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  if (v11 || (SecTokenSessionCreate(v14, &theDict, &cf), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    CFDictionarySetValue(MutableCopy, @"u_TokenSession", v11);
LABEL_7:
    if (theDict)
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __SecTokenItemCreateFromAttributes_block_invoke;
      v36[3] = &__block_descriptor_40_e15_v24__0r_v8r_v16l;
      v36[4] = MutableCopy;
      CFDictionaryApplyFunction(theDict, apply_block_2_10426, v36);
    }

    CFDictionarySetValue(MutableCopy, @"toid", a4);
LABEL_10:
    v16 = CFDictionaryGetValue(MutableCopy, @"class");
    if (CFEqual(v16, @"keys"))
    {
      v17 = SecKeyCreateFromAttributeDictionary(MutableCopy);
LABEL_14:
      v18 = v17;
LABEL_15:
      *a5 = v18;

      v19 = 1;
      goto LABEL_18;
    }

    if (CFEqual(v16, @"cert"))
    {
      v17 = SecCertificateCreateFromAttributeDictionary(MutableCopy);
      goto LABEL_14;
    }

    if (!CFEqual(v16, @"idnt"))
    {
      v18 = 0;
      goto LABEL_15;
    }

    v22 = CFDictionaryGetValue(MutableCopy, @"certdata");
    v23 = *MEMORY[0x1E695E480];
    v24 = SecCertificateCreateWithData(*MEMORY[0x1E695E480], v22);
    v25 = SecKeyCreateFromAttributeDictionary(MutableCopy);
    if (v25 && v24)
    {
      v26 = SecIdentityCreate(v23, v24, v25);
    }

    else
    {
      v31 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1887D2000, v31, OS_LOG_TYPE_DEFAULT, "SecItem: failed to create identity", buf, 2u);
      }

      v26 = 0;
      v18 = 0;
      if (!v25)
      {
        goto LABEL_38;
      }
    }

    CFRelease(v25);
    v18 = v26;
LABEL_38:
    if (v24)
    {
      CFRelease(v24);
    }

    goto LABEL_15;
  }

  if (!cf)
  {
    v33 = MEMORY[0x1E696ABC0];
    v34 = getTKErrorDomain();
    v35 = [v33 errorWithDomain:v34 code:-7 userInfo:0];

    if (a6)
    {
      *a6 = v35;
    }

    goto LABEL_17;
  }

  Domain = CFErrorGetDomain(cf);
  getTKErrorDomain();
  if (CFEqual(Domain, v28))
  {
    Code = CFErrorGetCode(cf);
    getTKTokenNotFoundAndRegistered_10505();
    if (Code == v30)
    {
      v11 = 0;
      goto LABEL_7;
    }
  }

  if (!a6)
  {
    goto LABEL_17;
  }

  v20 = cf;
  v32 = *a6;
  if (*a6 != cf)
  {
    if (!cf || (CFRetain(cf), (v32 = *a6) != 0))
    {
      CFRelease(v32);
    }

    v19 = 0;
    *a6 = v20;
LABEL_18:
    v20 = cf;
    if (!cf)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v19 = 0;
  if (cf)
  {
LABEL_19:
    CFRelease(v20);
  }

LABEL_20:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  return v19;
}

SecKeyRef SecKeyCreateFromAttributeDictionary(const __CFDictionary *a1)
{
  error = 0;
  Value = CFDictionaryGetValue(a1, @"v_Data");
  v3 = SecKeyCreateWithData(Value, a1, &error);
  if (!v3)
  {
    CFRelease(error);
  }

  return v3;
}

SecKeyRef SecKeyCreateWithData(CFDataRef keyData, CFDictionaryRef attributes, CFErrorRef *error)
{
  *&v64[5] = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = _os_activity_create(&dword_1887D2000, "SecKeyCreateWithData", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v7, &state);
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  v8 = SecCFAllocatorZeroize_sAllocator;
  Value = CFDictionaryGetValue(attributes, @"tkid");
  if (!Value)
  {
    if (!keyData)
    {
      SecError(-50, error, @"Failed to provide key data to SecKeyCreateWithData");
LABEL_32:
      CTKKey = 0;
      goto LABEL_33;
    }

    v13 = CFDictionaryGetValue(attributes, @"type");
    v14 = SecKeyParamsAsInt64(v13, @"key type", error);
    if (v14 < 0)
    {
      goto LABEL_46;
    }

    v15 = CFDictionaryGetValue(attributes, @"kcls");
    v16 = SecKeyParamsAsInt64(v15, @"key class", error);
    v17 = v16;
    if (v16 < 0)
    {
      goto LABEL_30;
    }

    if (v16 == 2)
    {
      SecError(-4, error, @"Unsupported symmetric key type: %@", v13);
      goto LABEL_30;
    }

    if (v16 != 1)
    {
      if (v16)
      {
        SecError(-50, error, @"Unsupported key class: %@", v15);
        goto LABEL_30;
      }

      if (v14 > 107)
      {
        if (v14 <= 110)
        {
          if (v14 == 108)
          {
            BytePtr = CFDataGetBytePtr(keyData);
            Length = CFDataGetLength(keyData);
            CTKKey = SecKeyCreate(v8, &kSecX448PublicKeyDescriptor, BytePtr, Length, 7);
            if (CTKKey)
            {
              goto LABEL_33;
            }

            SecError(-50, error, @"X448 public key creation from data failed");
          }

          else if (v14 == 109)
          {
            v52 = CFDataGetBytePtr(keyData);
            v53 = CFDataGetLength(keyData);
            CTKKey = SecKeyCreate(v8, &kSecKyberPublicKeyDescriptor, v52, v53, 0);
            if (CTKKey)
            {
              goto LABEL_33;
            }

            SecError(-50, error, @"Kyber public key creation from data failed");
          }

          else
          {
            v27 = CFDataGetBytePtr(keyData);
            v28 = CFDataGetLength(keyData);
            CTKKey = SecKeyCreate(v8, &kSecMLKEMPublicKeyDescriptor, v27, v28, 0);
            if (CTKKey)
            {
              goto LABEL_33;
            }

            SecError(-50, error, @"ML-KEM public key creation from data failed");
          }

          goto LABEL_46;
        }

        if ((v14 - 2147483678) >= 3)
        {
          if (v14 == 111)
          {
            v18 = CFDataGetBytePtr(keyData);
            v19 = CFDataGetLength(keyData);
            CTKKey = SecKeyCreate(v8, &kSecMLDSAPublicKeyDescriptor, v18, v19, 0);
            if (CTKKey)
            {
              goto LABEL_33;
            }

            SecError(-50, error, @"ML-DSA public key creation from data failed");
            goto LABEL_46;
          }

          goto LABEL_91;
        }

        goto LABEL_44;
      }

      if (v14 > 104)
      {
        if (v14 == 105)
        {
          v56 = CFDataGetBytePtr(keyData);
          v57 = CFDataGetLength(keyData);
          CTKKey = SecKeyCreate(v8, &kSecEd25519PublicKeyDescriptor, v56, v57, 7);
          if (CTKKey)
          {
            goto LABEL_33;
          }

          SecError(-50, error, @"Ed25519 public key creation from data failed");
        }

        else if (v14 == 106)
        {
          v58 = CFDataGetBytePtr(keyData);
          v59 = CFDataGetLength(keyData);
          CTKKey = SecKeyCreate(v8, &kSecX25519PublicKeyDescriptor, v58, v59, 7);
          if (CTKKey)
          {
            goto LABEL_33;
          }

          SecError(-50, error, @"X25519 public key creation from data failed");
        }

        else
        {
          v29 = CFDataGetBytePtr(keyData);
          v30 = CFDataGetLength(keyData);
          CTKKey = SecKeyCreate(v8, &kSecEd448PublicKeyDescriptor, v29, v30, 7);
          if (CTKKey)
          {
            goto LABEL_33;
          }

          SecError(-50, error, @"Ed448 public key creation from data failed");
        }

        goto LABEL_46;
      }

      if (v14 != 42)
      {
        if (v14 != 43 && v14 != 73)
        {
LABEL_91:
          v60 = [MEMORY[0x1E696AD98] numberWithLongLong:v14];
          SecError(-50, error, @"Unsupported public key type: %@ (algorithm: %@)", v13, v60);

LABEL_46:
          v17 = 0;
          goto LABEL_30;
        }

LABEL_44:
        v25 = CFDataGetBytePtr(keyData);
        v26 = CFDataGetLength(keyData);
        CTKKey = SecKeyCreate(v8, &kSecECPublicKeyDescriptor, v25, v26, 7);
        if (CTKKey)
        {
          goto LABEL_33;
        }

        SecError(-50, error, @"EC public key creation from data failed");
        goto LABEL_46;
      }

      v54 = CFDataGetBytePtr(keyData);
      v55 = CFDataGetLength(keyData);
      v41 = SecKeyCreate(v8, &kSecRSAPublicKeyDescriptor, v54, v55, 7);
      if (!v41)
      {
        SecError(-50, error, @"RSA public key creation from data failed");
        goto LABEL_46;
      }

LABEL_86:
      CTKKey = v41;
      goto LABEL_33;
    }

    if (v14 > 106)
    {
      if (v14 <= 108)
      {
        if (v14 == 107)
        {
          v42 = CFDataGetBytePtr(keyData);
          v43 = CFDataGetLength(keyData);
          CTKKey = SecKeyCreate(v8, &kSecEd448PrivateKeyDescriptor, v42, v43, 7);
          if (CTKKey)
          {
            goto LABEL_33;
          }

          SecError(-50, error, @"Ed448 private key creation from data failed");
        }

        else
        {
          v33 = CFDataGetBytePtr(keyData);
          v34 = CFDataGetLength(keyData);
          CTKKey = SecKeyCreate(v8, &kSecX448PrivateKeyDescriptor, v33, v34, 7);
          if (CTKKey)
          {
            goto LABEL_33;
          }

          SecError(-50, error, @"X448 private key creation from data failed");
        }

        goto LABEL_77;
      }

      switch(v14)
      {
        case 'm':
          v44 = CFDataGetBytePtr(keyData);
          v45 = CFDataGetLength(keyData);
          CTKKey = SecKeyCreate(v8, &kSecKyberPrivateKeyDescriptor, v44, v45, 0);
          if (CTKKey)
          {
            goto LABEL_33;
          }

          SecError(-50, error, @"Kyber private key creation from data failed");
          goto LABEL_77;
        case 'n':
          v48 = CFDataGetBytePtr(keyData);
          v49 = CFDataGetLength(keyData);
          CTKKey = SecKeyCreate(v8, &kSecMLKEMPrivateKeyDescriptor, v48, v49, 0);
          if (CTKKey)
          {
            goto LABEL_33;
          }

          SecError(-50, error, @"ML-KEM private key creation from data failed");
          goto LABEL_77;
        case 'o':
          v23 = CFDataGetBytePtr(keyData);
          v24 = CFDataGetLength(keyData);
          CTKKey = SecKeyCreate(v8, &kSecMLDSAPrivateKeyDescriptor, v23, v24, 0);
          if (CTKKey)
          {
            goto LABEL_33;
          }

          SecError(-50, error, @"ML-DSA private key creation from data failed");
          goto LABEL_77;
      }

      goto LABEL_76;
    }

    if (v14 <= 72)
    {
      if (v14 == 42)
      {
        v39 = CFDataGetBytePtr(keyData);
        v40 = CFDataGetLength(keyData);
        v41 = SecKeyCreate(v8, &kSecRSAPrivateKeyDescriptor, v39, v40, 7);
        if (v41)
        {
          goto LABEL_86;
        }

        SecError(-50, error, @"RSA private key creation from data failed");
LABEL_77:
        v17 = 1;
LABEL_30:
        v11 = _SECKEY_LOG_11460();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          if (error)
          {
            v35 = *error;
          }

          else
          {
            v35 = 0;
          }

          *buf = 67109634;
          *v63 = v14;
          *&v63[4] = 1024;
          *&v63[6] = v17;
          v64[0] = 2114;
          *&v64[1] = v35;
          v36 = "Failed to create key from data, algorithm:%d, class:%d: %{public}@";
          v37 = v11;
          v38 = 24;
          goto LABEL_80;
        }

LABEL_31:

        goto LABEL_32;
      }

      if (v14 != 43)
      {
LABEL_76:
        SecError(-50, error, @"Unsupported private key type: %@", v13);
        goto LABEL_77;
      }
    }

    else if (v14 != 73)
    {
      if (v14 == 105)
      {
        v46 = CFDataGetBytePtr(keyData);
        v47 = CFDataGetLength(keyData);
        CTKKey = SecKeyCreate(v8, &kSecEd25519PrivateKeyDescriptor, v46, v47, 7);
        if (CTKKey)
        {
          goto LABEL_33;
        }

        SecError(-50, error, @"Ed25519 private key creation from data failed");
        goto LABEL_77;
      }

      if (v14 == 106)
      {
        v20 = CFDataGetBytePtr(keyData);
        v21 = CFDataGetLength(keyData);
        CTKKey = SecKeyCreate(v8, &kSecX25519PrivateKeyDescriptor, v20, v21, 7);
        if (CTKKey)
        {
          goto LABEL_33;
        }

        SecError(-50, error, @"X25519 private key creation from data failed");
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    v31 = CFDataGetBytePtr(keyData);
    v32 = CFDataGetLength(keyData);
    CTKKey = SecKeyCreate(v8, &kSecECPrivateKeyDescriptor, v31, v32, 7);
    if (CTKKey)
    {
      goto LABEL_33;
    }

    SecError(-50, error, @"EC private key creation from data failed");
    goto LABEL_77;
  }

  CTKKey = SecKeyCreateCTKKey(v8, attributes, error);
  if (!CTKKey)
  {
    v11 = _SECKEY_LOG_11460();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      if (error)
      {
        v12 = *error;
      }

      else
      {
        v12 = 0;
      }

      *buf = 138543618;
      *v63 = Value;
      *&v63[8] = 2114;
      *v64 = v12;
      v36 = "Failed to create key for tokenID=%{public}@: %{public}@";
      v37 = v11;
      v38 = 22;
LABEL_80:
      _os_log_debug_impl(&dword_1887D2000, v37, OS_LOG_TYPE_DEBUG, v36, buf, v38);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

LABEL_33:
  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v6);
  return CTKKey;
}

uint64_t SecKeyParamsAsInt64(void *a1, uint64_t a2, __CFString **a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a1 longLongValue];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v6];
    v8 = [v7 isEqualToString:a1];

    if (v8)
    {
      return v6;
    }

    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
    SecError(-50, a3, @"Unsupported %@: %@ (converted value: %@"), a2, a1, v9;

    return -1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    SecError(-50, a3, @"Unsupported %@: %@", a2, a1);
    return -1;
  }

  return [a1 longLongValue];
}

void SecRSAPrivateKeyDestroy(uint64_t a1)
{
  if (*(a1 + 24))
  {
    cc_clear();
    free(*(a1 + 24));
    *(a1 + 24) = 0;
  }
}

uint64_t SecRSAPrivateKeyInit(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, int a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a4 == 7)
  {
LABEL_4:
    v6 = ccrsa_import_priv_n();
    if ((v6 - 129) >= 0xFFFFFFFFFFFFFF80)
    {
      v7 = v6;
      v8 = malloc_type_calloc(1uLL, 7 * ((4 * v6) & 0x3F8) + 32 * v6 + 176, 0x10600407F0B3959uLL);
      *(a1 + 24) = v8;
      if (v8)
      {
        *v8 = v7;
        fips186_key = ccrsa_import_priv();
        goto LABEL_7;
      }

      return 4294967188;
    }

    return 4294967246;
  }

  if (a4 != 5)
  {
    if (a4 != 1)
    {
      return 4294967246;
    }

    goto LABEL_4;
  }

  Value = CFDictionaryGetValue(theDict, @"bsiz");
  if (Value)
  {
    v12 = Value;
    v13 = CFGetTypeID(Value);
    if (v13 == CFNumberGetTypeID())
    {
      *v19 = 0xAAAAAAAAAAAAAAAALL;
      CFNumberGetValue(v12, kCFNumberCFIndexType, v19);
      IntValue = *v19;
    }

    else
    {
      v15 = CFGetTypeID(v12);
      if (v15 != CFStringGetTypeID())
      {
        goto LABEL_17;
      }

      IntValue = CFStringGetIntValue(v12);
    }

    if ((IntValue - 8193) > 0xFFFFFFFFFFFFE1FELL)
    {
      v17 = (IntValue + 63) >> 6;
      v18 = malloc_type_calloc(1uLL, 7 * (((IntValue + 63) >> 4) & 0x7F8) + 32 * v17 + 176, 0x10600407F0B3959uLL);
      *(a1 + 24) = v18;
      if (v18)
      {
        *v18 = v17;
        ccrng();
        ccrng();
        fips186_key = ccrsa_generate_fips186_key();
LABEL_7:
        if (fips186_key)
        {
          return 4294967246;
        }

        else
        {
          return 0;
        }
      }

      return 4294967188;
    }
  }

LABEL_17:
  v16 = secLogObjForScope("SecWarning");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 138412290;
    *&v19[4] = theDict;
    _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "Invalid or missing key size in: %@", v19, 0xCu);
  }

  return 4294941985;
}

__CFDictionary *SecRSAPrivateKeyCopyAttributeDictionary(void *a1)
{
  v2 = SecRSAPrivateKeyCopyPKCS1(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = SecKeyCopyAttributeDictionaryWithLocalKey(a1, @"42", v2);
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v4);
  CFDictionarySetValue(MutableCopy, @"drve", *MEMORY[0x1E695E4C0]);
  valuePtr = cczp_bitlen();
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  CFDictionarySetValue(MutableCopy, @"bsiz", v6);
  CFDictionarySetValue(MutableCopy, @"esiz", v6);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  CFRelease(v3);
  return MutableCopy;
}

__CFData *SecRSAPrivateKeyCopyPKCS1(void *a1)
{
  v1 = CFGetAllocator(a1);
  v2 = ccrsa_export_priv_size();
  Mutable = CFDataCreateMutable(v1, v2);
  v4 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, v2);
    CFDataGetMutableBytePtr(v4);
    if (ccrsa_export_priv())
    {
      CFRelease(v4);
      return 0;
    }
  }

  return v4;
}

uint64_t SecRSAPrivateKeyCopyPublicSerialization(void *a1, __CFData **a2)
{
  v3 = CFGetAllocator(a1);
  v4 = ccrsa_ctx_public();
  PKCS1 = SecRSAPublicKeyCreatePKCS1(v3, v4);
  *a2 = PKCS1;
  if (PKCS1)
  {
    return 0;
  }

  else
  {
    return 4294941021;
  }
}

uint64_t _SSLNewContext(int a1, SSLContextRef *a2)
{
  if (!a2)
  {
    return 4294967246;
  }

  v3 = SSLCreateContext(*MEMORY[0x1E695E480], (a1 == 0), kSSLStreamType);
  *a2 = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 4294967188;
  }
}

SSLContextRef SSLCreateContext(CFAllocatorRef alloc, SSLProtocolSide protocolSide, SSLConnectionType connectionType)
{
  v3 = SSLCreateContextWithRecordFuncs(alloc, protocolSide, connectionType, SSLRecordLayerInternal);
  if (!v3)
  {
    return v3;
  }

  v4 = malloc_type_malloc(0x30uLL, 0x7BE92BBDuLL);
  if (!v4)
  {
LABEL_16:
    CFRelease(v3);
    return 0;
  }

  v5 = v4;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *v4 = 0u;
  ccrng();
  v6 = tls_record_create();
  *v5 = v6;
  if (!v6)
  {
LABEL_15:
    free(v5);
    goto LABEL_16;
  }

  v7 = malloc_type_malloc(0x4800uLL, 0x7BE92BBDuLL);
  if (v7)
  {
    v8 = 18432;
  }

  else
  {
    v8 = 0;
  }

  v5[2] = v8;
  v5[3] = v7;
  if (!v7)
  {
    if (*v5)
    {
      tls_record_destroy();
    }

    goto LABEL_15;
  }

  v5[1] = v3;
  v9 = *(v3 + 80);
  v10 = v9 > 6;
  v11 = (1 << v9) & 0x59;
  if (!v10 && v11 != 0)
  {
    *(v3 + 48) = v5;
  }

  return v3;
}

uint64_t SSLCreateContextWithRecordFuncs(uint64_t a1, int a2, int a3, uint64_t a4)
{
  SSLContextGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), 0x220uLL);
    v9 = tls_handshake_create();
    *(v8 + 56) = v9;
    if (v9)
    {
      if (SSLCreateContextWithRecordFuncs_onceToken != -1)
      {
        dispatch_once(&SSLCreateContextWithRecordFuncs_onceToken, &__block_literal_global_8321);
      }

      *(v8 + 64) = g_session_cache;
      tls_handshake_set_callbacks();
      *(v8 + 104) = a3 == 1;
      *(v8 + 80) = 0;
      *(v8 + 424) = 0x3FF0000000000000;
      *(v8 + 432) = 1400;
      tls_handshake_get_min_protocol_version();
      tls_handshake_get_max_protocol_version();
      if (a2 == 1)
      {
        tls_handshake_set_sct_enable();
        tls_handshake_set_ocsp_enable();
      }

      *(v8 + 88) = 0;
      *(v8 + 108) = a2;
      *(v8 + 40) = a4;
      *(v8 + 187) = 1;
      *(v8 + 314) = 1;
      *(v8 + 315) = kSSLDisableRecordSplittingDefaultValue == 0;
      *(v8 + 513) = 0;
      if (kSSLSessionConfigDefaultValue)
      {
        SSLSetSessionConfig(v8, kSSLSessionConfigDefaultValue);
      }

      if (kMinDhGroupSizeDefaultValue)
      {
        tls_handshake_set_min_dh_group_size();
      }

      if (kMinProtocolVersionDefaultValue)
      {
        SSLSetProtocolVersionMin(v8, kMinProtocolVersionDefaultValue);
      }

      *(v8 + 352) = 0;
      *(v8 + 355) = 0;
    }

    else
    {
      CFRelease(v8);
      return 0;
    }
  }

  return v8;
}

CFTypeID SSLContextGetTypeID(void)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SSLContextGetTypeID_block_invoke;
  block[3] = &__block_descriptor_tmp_8315;
  block[4] = &SSLContextGetTypeID_sSSLContextGetTypeIDSingleton;
  if (SSLContextGetTypeID_sSSLContextGetTypeIDOnce != -1)
  {
    dispatch_once(&SSLContextGetTypeID_sSSLContextGetTypeIDOnce, block);
  }

  return SSLContextGetTypeID_sSSLContextGetTypeIDSingleton;
}

OSStatus SSLSetIOFuncs(SSLContextRef context, SSLReadFunc readFunc, SSLWriteFunc writeFunc)
{
  if (!context)
  {
    return -50;
  }

  if (*(context + 5) != SSLRecordLayerInternal)
  {
    return -909;
  }

  v5 = *(context + 20);
  v6 = v5 > 6;
  v7 = (1 << v5) & 0x59;
  if (v6 || v7 == 0)
  {
    return -909;
  }

  result = 0;
  *(context + 2) = readFunc;
  *(context + 3) = writeFunc;
  return result;
}

uint64_t SecIdentityCreate(uint64_t a1, void *cf, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  TypeID = SecCertificateGetTypeID();
  Instance = 0;
  if (!a3 || v5 != TypeID)
  {
    return Instance;
  }

  v8 = CFGetTypeID(a3);
  if (v8 != SecKeyGetTypeID())
  {
    return 0;
  }

  v9 = SecKeyCopyPublicKey(a3);
  if (!v9)
  {
    v15 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "SecIdentityCreate: failed to extract public key from private key", &v18, 2u);
    }

    return 0;
  }

  v10 = v9;
  v11 = SecKeyCopyExternalRepresentation(v9, 0);
  v12 = SecCertificateCopyKey(cf);
  v13 = SecKeyCopyExternalRepresentation(v12, 0);
  v14 = v13;
  if (v11 && v13)
  {
    if (CFEqual(v13, v11))
    {
      goto LABEL_9;
    }

LABEL_16:
    v17 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 141558786;
      v19 = 1752392040;
      v20 = 2112;
      v21 = v14;
      v22 = 2160;
      v23 = 1752392040;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "Creating SecIdentity with mismatching public keys: %{mask.hash}@, %{mask.hash}@", &v18, 0x2Au);
    }

    Instance = 0;
    goto LABEL_19;
  }

  if (v13 != v11)
  {
    goto LABEL_16;
  }

LABEL_9:
  SecIdentityGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    CFRetain(cf);
    CFRetain(a3);
    *(Instance + 16) = cf;
    *(Instance + 24) = a3;
  }

LABEL_19:
  CFRelease(v10);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return Instance;
}

CFDataRef SecKeyCreateSignature(SecKeyRef key, SecKeyAlgorithm algorithm, CFDataRef dataToSign, CFErrorRef *error)
{
  v8 = objc_autoreleasePoolPush();
  v9 = _os_activity_create(&dword_1887D2000, "SecKeyCreateSignature", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v9, &state);
  _SecKeyCheck(key, "SecKeyCreateSignature");
  if (!dataToSign)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"SecKeyCreateSignature() called with NULL dataToSign"];
  }

  v17 = 0;
  v14[0] = key;
  v14[1] = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, algorithm);
  cf = Mutable;
  v16 = 0;
  v11 = SecKeyRunAlgorithmAndCopyResult(v14, dataToSign, 0, &v17);
  v12 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v12);
  }

  _SecKeyErrorPropagate(v11 != 0, "SecKeyCreateSignature", v17, error);
  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v8);
  return v11;
}

uint64_t _SSLSetEnableCertVerify(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  v3 = *(a1 + 80);
  v4 = v3 > 6;
  v5 = (1 << v3) & 0x59;
  if (v4 || v5 == 0)
  {
    return 4294966387;
  }

  result = 0;
  *(a1 + 187) = a2;
  return result;
}

OSStatus SSLSetClientSideAuthenticate(SSLContextRef context, SSLAuthenticate auth)
{
  if (!context)
  {
    return -50;
  }

  v2 = *(context + 20);
  v3 = v2 > 6;
  v4 = (1 << v2) & 0x59;
  if (v3 || v4 == 0)
  {
    return -909;
  }

  *(context + 63) = auth;
  if (auth <= kTryAuthenticate)
  {
    tls_handshake_set_client_auth();
  }

  return 0;
}

CFTypeID SecIdentityGetTypeID(void)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecIdentityGetTypeID_block_invoke;
  block[3] = &__block_descriptor_tmp_10284;
  block[4] = &SecIdentityGetTypeID_sSecIdentityGetTypeIDSingleton;
  if (SecIdentityGetTypeID_sSecIdentityGetTypeIDOnce != -1)
  {
    dispatch_once(&SecIdentityGetTypeID_sSecIdentityGetTypeIDOnce, block);
  }

  return SecIdentityGetTypeID_sSecIdentityGetTypeIDSingleton;
}

OSStatus SSLSetCertificate(SSLContextRef context, CFArrayRef certRefs)
{
  if (!context)
  {
    return -50;
  }

  v4 = *(context + 19);
  if (v4)
  {
    *(context + 19) = 0;
    CFRelease(v4);
  }

  if (certRefs)
  {
    result = tls_helper_set_identity_from_array();
    if (result)
    {
      return result;
    }

    *(context + 19) = certRefs;
    CFRetain(certRefs);
  }

  return 0;
}

size_t SecKeyGetBlockSize(SecKeyRef key)
{
  _SecKeyCheck(key, "SecKeyGetBlockSize");
  v2 = *(*(key + 2) + 80);
  if (!v2)
  {
    return 0;
  }

  return v2(key);
}

OSStatus SSLSetProtocolVersionMin(SSLContextRef context, SSLProtocol minVersion)
{
  if (!context)
  {
    return -50;
  }

  v2 = minVersion - 1;
  if ((minVersion - 1) > 8)
  {
    return -9830;
  }

  v3 = dword_1889605B8[v2];
  if (!*(context + 104))
  {
    if (v3 - 772 >= 0xFFFFFFFC)
    {
      if (v3 > *(context + 25))
      {
        *(context + 25) = v3;
      }

      goto LABEL_13;
    }

    return -9830;
  }

  if (v2 != 8)
  {
    return -9830;
  }

  if (*(context + 25) >> 8 >= 0xFFu)
  {
    *(context + 25) = 65279;
  }

LABEL_13:
  *(context + 24) = v3;
  tls_handshake_set_min_protocol_version();
  tls_handshake_set_max_protocol_version();
  return 0;
}

OSStatus SSLSetConnection(SSLContextRef context, SSLConnectionRef connection)
{
  if (!context)
  {
    return -50;
  }

  if (*(context + 5) != SSLRecordLayerInternal)
  {
    return -909;
  }

  v4 = *(context + 20);
  v5 = v4 > 6;
  v6 = (1 << v4) & 0x59;
  if (v5 || v6 == 0)
  {
    return -909;
  }

  result = 0;
  *(context + 4) = connection;
  return result;
}

OSStatus SSLSetSessionOption(SSLContextRef context, SSLSessionOption option, Boolean value)
{
  if (!context)
  {
    return -50;
  }

  v4 = *(context + 20);
  v5 = v4 > 6;
  v6 = (1 << v4) & 0x59;
  if (v5 || v6 == 0)
  {
    return -909;
  }

  result = -50;
  if (option > kSSLSessionOptionSendOneByteRecord)
  {
    if (option <= kSSLSessionOptionFallback)
    {
      if (option == kSSLSessionOptionAllowServerIdentityChange)
      {
        tls_handshake_set_server_identity_change();
        result = 0;
        *(context + 360) = 1;
      }

      else
      {
        tls_handshake_set_fallback();
        result = 0;
        *(context + 513) = value;
      }
    }

    else
    {
      switch(option)
      {
        case kSSLSessionOptionBreakOnClientHello:
          result = 0;
          *(context + 359) = value;
          break;
        case kSSLSessionOptionAllowRenegotiation:
          tls_handshake_set_renegotiation();
          result = 0;
          *(context + 361) = 1;
          break;
        case kSSLSessionOptionEnableSessionTickets:
          tls_handshake_set_session_ticket_enabled();
          result = 0;
          *(context + 362) = 1;
          break;
      }
    }
  }

  else
  {
    if (option > kSSLSessionOptionBreakOnCertRequested)
    {
      if (option != kSSLSessionOptionBreakOnClientAuth)
      {
        if (option == kSSLSessionOptionFalseStart)
        {
          tls_handshake_set_false_start();
          result = 0;
          *(context + 512) = value;
        }

        else
        {
          if (*(context + 315) != value)
          {
            (*(*(context + 5) + 72))(*(context + 6), 0, value != 0);
          }

          result = 0;
          *(context + 315) = value;
        }

        return result;
      }

      result = 0;
      *(context + 355) = value;
LABEL_28:
      *(context + 187) = value == 0;
      return result;
    }

    if (option == kSSLSessionOptionBreakOnServerAuth)
    {
      result = 0;
      *(context + 353) = value;
      goto LABEL_28;
    }

    if (option == kSSLSessionOptionBreakOnCertRequested)
    {
      result = 0;
      *(context + 354) = value;
    }
  }

  return result;
}

OSStatus SSLHandshake(SSLContextRef context)
{
  if (!context)
  {
    return -50;
  }

  v2 = *(context + 20);
  if (v2 == 3)
  {
    return -9805;
  }

  if (v2 == 4)
  {
    return -9806;
  }

  if (*(context + 104))
  {
    if (*(context + 52) != 0.0 && *(context + 52) < CFAbsoluteTimeGetCurrent())
    {
      result = MEMORY[0x18CFDBB00](*(context + 7));
      if (result)
      {
        return result;
      }
    }

    v2 = *(context + 20);
  }

  if (v2 == 6)
  {
    v4 = *(context + 21);
    if (v4 == -67818 || v4 == -67820)
    {
      tls_handshake_send_alert();

      return SSLClose(context);
    }

    else
    {
LABEL_20:
      while (1)
      {
        result = SSLHandshakeProceed(context);
        if (result)
        {
          if (result != -9849)
          {
            break;
          }
        }

        if (*(context + 18) && *(context + 19))
        {
          result = (*(*(context + 5) + 64))(*(context + 6));
          if ((result + 10009) <= 9)
          {
            return dword_188960578[result + 10009];
          }

          return result;
        }
      }
    }
  }

  else
  {
    if (v2)
    {
      goto LABEL_20;
    }

    if (*(context + 27) != 1 || (result = SSLHandshakeStart(context)) == 0)
    {
      *(context + 20) = 1;
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t SSLHandshakeProceed(uint64_t a1)
{
  v2 = tls_handshake_continue();
  if (!v2)
  {
    v2 = (*(*(a1 + 40) + 64))(*(a1 + 48));
    if ((v2 + 10009) <= 9)
    {
      v2 = dword_188960578[(v2 + 10009)];
    }

    if (!v2)
    {
      memset(v4, 170, sizeof(v4));
      v2 = (**(a1 + 40))(*(a1 + 48), v4);
      if ((v2 + 10009) <= 9)
      {
        v2 = dword_188960578[(v2 + 10009)];
      }

      if (!v2)
      {
        v2 = tls_handshake_process();
        v5 = *v4;
        v6 = *&v4[16];
        (*(*(a1 + 40) + 56))(*(a1 + 48), &v5);
      }

      if (*(a1 + 108) == 1 && (*(a1 + 552) & 1) == 0 && (*(a1 + 553) & 1) == 0 && v2 != -9803 && v2)
      {
        log_SecureTransport_early_fail(v2);
      }
    }
  }

  return v2;
}

uint64_t tls_handshake_message_callback(uint64_t a1, int a2)
{
  result = 0;
  if (a2 <= 12)
  {
    if (a2 == 1)
    {
      *(a1 + 392) = tls_handshake_get_peer_signature_algorithms();
      if (*(a1 + 359))
      {
        return 4294957445;
      }

      else
      {
        return 0;
      }
    }

    if (a2 != 2)
    {
      if (a2 != 11)
      {
        return result;
      }

      result = tls_helper_set_peer_pubkey();
      if (result)
      {
        return result;
      }

      if (!*(a1 + 108))
      {
        goto LABEL_14;
      }

      return 0;
    }

    *(a1 + 553) = 1;
    peer_alpn_data = tls_handshake_get_peer_alpn_data();
    if (peer_alpn_data && (v5 = *(a1 + 536)) != 0)
    {
      v6 = 544;
    }

    else
    {
      peer_alpn_data = tls_handshake_get_peer_npn_data();
      if (!peer_alpn_data)
      {
LABEL_29:
        peer_signature_algorithms = tls_handshake_get_peer_signature_algorithms();
        result = 0;
        *(a1 + 392) = peer_signature_algorithms;
        return result;
      }

      v5 = *(a1 + 520);
      v6 = 528;
    }

    v5(a1, *(a1 + v6), peer_alpn_data[1], *peer_alpn_data);
    goto LABEL_29;
  }

  if (a2 == 67)
  {
    result = tls_handshake_get_peer_npn_data();
    if (!result)
    {
      return result;
    }

    (*(a1 + 520))(a1, *(a1 + 528), *(result + 8), *result);
    return 0;
  }

  if (a2 != 14)
  {
    if (a2 != 13)
    {
      return result;
    }

    *(a1 + 256) = 1;
    *(a1 + 408) = tls_handshake_get_peer_acceptable_client_auth_type();
    if (*(a1 + 354) && !*(a1 + 152))
    {
      *(a1 + 357) = 1;
      return 4294957454;
    }

    return 0;
  }

LABEL_14:

  return tls_verify_peer_cert(a1);
}
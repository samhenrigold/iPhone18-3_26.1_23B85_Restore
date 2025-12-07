CFDictionaryRef SecTrustCopyResult(SecTrustRef trust)
{
  v1 = trust;
  if (trust)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    SecTrustEvaluateIfNecessary(v1);
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2000000000;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v2 = *(v1 + 17);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SecTrustCopyDetails_block_invoke;
    block[3] = &unk_1E70E3A08;
    block[4] = &v13;
    block[5] = v1;
    dispatch_sync(v2, block);
    v3 = v14[3];
    _Block_object_dispose(&v13, 8);
    v7[3] = v3;
    v4 = *(v1 + 17);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __SecTrustCopyResult_block_invoke;
    v6[3] = &unk_1E70E3100;
    v6[4] = v7;
    v6[5] = &v8;
    v6[6] = v1;
    dispatch_sync(v4, v6);
    v1 = v9[3];
    _Block_object_dispose(v7, 8);
    _Block_object_dispose(&v8, 8);
  }

  return v1;
}

void __SecTrustCopyResult_block_invoke(void *a1)
{
  v2 = *(*(a1[4] + 8) + 24);
  if (v2)
  {
    CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"TrustResultDetails", v2);
    CFRelease(*(*(a1[4] + 8) + 24));
  }

  v3 = CFNumberCreate(0, kCFNumberSInt32Type, (a1[6] + 112));
  if (v3)
  {
    v4 = v3;
    CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"TrustResultValue", v3);
    CFRelease(v4);
  }

  v5 = a1[6];
  v6 = *(v5 + 96);
  if (*(v5 + 112))
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = *(v5 + 64);
    if (v8)
    {
      CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"TrustEvaluationDate", v8);
    }

    value = 0xAAAAAAAAAAAAAAAALL;
    if (CFDictionaryGetValueIfPresent(v6, @"CertificateTransparency", &value))
    {
      CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"TrustCertificateTransparency", value);
    }

    v15 = 0xAAAAAAAAAAAAAAAALL;
    if (CFDictionaryGetValueIfPresent(v6, @"ExtendedValidation", &v15))
    {
      CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"TrustExtendedValidation", v15);
    }

    v14 = 0xAAAAAAAAAAAAAAAALL;
    if (CFDictionaryGetValueIfPresent(v6, @"CompanyName", &v14))
    {
      CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"Organization", v14);
    }

    v13 = 0xAAAAAAAAAAAAAAAALL;
    if (CFDictionaryGetValueIfPresent(v6, @"TrustRevocationChecked", &v13))
    {
      CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"TrustRevocationChecked", v13);
    }

    v12 = 0xAAAAAAAAAAAAAAAALL;
    if (CFDictionaryGetValueIfPresent(v6, @"TrustRevocationReason", &v12))
    {
      CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"TrustRevocationReason", v12);
    }

    v11 = 0xAAAAAAAAAAAAAAAALL;
    if (CFDictionaryGetValueIfPresent(v6, @"TrustExpirationDate", &v11))
    {
      CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"TrustExpirationDate", v11);
    }

    v9 = 0xAAAAAAAAAAAAAAAALL;
    v10 = 0xAAAAAAAAAAAAAAAALL;
    if (CFDictionaryGetValueIfPresent(v6, @"QCStatements", &v10))
    {
      CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"TrustQCStatements", v10);
    }

    if (CFDictionaryGetValueIfPresent(v6, @"QWACValidation", &v9))
    {
      CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"TrustQWACValidation", v9);
    }
  }
}

uint64_t SecTrustCopyTrustStoreContentDigest(CFErrorRef *a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (gTrustd && (v2 = *(gTrustd + 56)) != 0)
  {
    v3 = v2(a1);
  }

  else
  {
    v4 = _os_activity_create(&dword_1887D2000, "SecTrustCopyTrustStoreContentDigest", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v4, &state);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __SecTrustCopyTrustStoreContentDigest_block_invoke_2;
    v6[3] = &unk_1E70E3148;
    v6[4] = &v8;
    securityd_send_sync_and_do(0x86u, a1, &__block_literal_global_14860, v6);
    os_release(v4);
    v3 = v9[3];
    os_activity_scope_leave(&state);
  }

  _Block_object_dispose(&v8, 8);
  return v3;
}

BOOL __SecTrustCopyTrustStoreContentDigest_block_invoke_2(uint64_t a1, xpc_object_t xdict, __CFString **a3)
{
  if (xdict && xpc_dictionary_get_value(xdict, "status") && MEMORY[0x18CFDC200]() == MEMORY[0x1E69E9F10])
  {
    *(*(*(a1 + 32) + 8) + 24) = _CFXPCCreateCFObjectFromXPCObject();
    return *(*(*(a1 + 32) + 8) + 24) != 0;
  }

  else
  {

    return SecError(-26276, a3, @"Unable to get trust store content digest");
  }
}

uint64_t SecTrustCopyTrustStoreAssetVersion(CFErrorRef *a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (gTrustd && (v2 = *(gTrustd + 48)) != 0)
  {
    v3 = v2(a1);
  }

  else
  {
    v4 = _os_activity_create(&dword_1887D2000, "SecTrustCopyTrustStoreAssetVersion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v4, &state);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __SecTrustCopyTrustStoreAssetVersion_block_invoke_2;
    v6[3] = &unk_1E70E3190;
    v6[4] = &v8;
    securityd_send_sync_and_do(0x87u, a1, &__block_literal_global_363, v6);
    os_release(v4);
    v3 = v9[3];
    os_activity_scope_leave(&state);
  }

  _Block_object_dispose(&v8, 8);
  return v3;
}

BOOL __SecTrustCopyTrustStoreAssetVersion_block_invoke_2(uint64_t a1, xpc_object_t xdict, __CFString **a3)
{
  if (xdict && xpc_dictionary_get_value(xdict, "status") && MEMORY[0x18CFDC200]() == MEMORY[0x1E69E9F10])
  {
    *(*(*(a1 + 32) + 8) + 24) = _CFXPCCreateCFObjectFromXPCObject();
    return *(*(*(a1 + 32) + 8) + 24) != 0;
  }

  else
  {

    return SecError(-26276, a3, @"Unable to get trust store asset version");
  }
}

uint64_t SecTrustGetTrustStoreVersionNumber(CFErrorRef *a1)
{
  if (gTrustd && (v2 = *(gTrustd + 64)) != 0)
  {

    return v2();
  }

  else
  {
    v4 = _os_activity_create(&dword_1887D2000, "SecTrustGetTrustStoreVersionNumber", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    v6.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v4, &v6);
    v5 = do_ota_pki_op(0x13u, a1);
    os_release(v4);
    os_activity_scope_leave(&v6);
    return v5;
  }
}

uint64_t do_ota_pki_op(unsigned int a1, CFErrorRef *a2)
{
  message = securityd_create_message(a1, a2);
  if (message)
  {
    v4 = message;
    v5 = securityd_message_with_reply_sync(message, a2);
    if (!v5)
    {
      uint64 = 0;
      v6 = v4;
LABEL_15:
      xpc_release(v6);
      return uint64;
    }

    v6 = v5;
    if (xpc_dictionary_get_value(v5, "status") && MEMORY[0x18CFDC200]() == MEMORY[0x1E69E9F18])
    {
      uint64 = xpc_dictionary_get_uint64(v6, "status");
      if (!a2)
      {
LABEL_14:
        xpc_release(v4);
        goto LABEL_15;
      }
    }

    else
    {
      uint64 = 0;
      if (!a2)
      {
        goto LABEL_14;
      }
    }

    if (xpc_dictionary_get_value(v6, "error"))
    {
      if (MEMORY[0x18CFDC200]() == MEMORY[0x1E69E9E80])
      {
        value = xpc_dictionary_get_value(v6, "error");
        if (value)
        {
          *a2 = SecCreateCFErrorWithXPCObject(value);
        }
      }
    }

    goto LABEL_14;
  }

  return 0;
}

uint64_t SecTrustGetAssetVersionNumber(CFErrorRef *a1)
{
  if (gTrustd && (v2 = *(gTrustd + 72)) != 0)
  {

    return v2();
  }

  else
  {
    v4 = _os_activity_create(&dword_1887D2000, "SecTrustGetAssetVersionNumber", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    v6.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v4, &v6);
    v5 = do_ota_pki_op(0x14u, a1);
    os_release(v4);
    os_activity_scope_leave(&v6);
    return v5;
  }
}

uint64_t SecTrustOTAPKIGetUpdatedAsset(CFErrorRef *a1)
{
  if (gTrustd && (v2 = *(gTrustd + 80)) != 0)
  {

    return v2();
  }

  else
  {
    v4 = _os_activity_create(&dword_1887D2000, "SecTrustOTAPKIGetUpdatedAsset", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    v6.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v4, &v6);
    v5 = do_ota_pki_op(0x17u, a1);
    os_release(v4);
    os_activity_scope_leave(&v6);
    return v5;
  }
}

uint64_t SecTrustOTASecExperimentGetUpdatedAsset(CFErrorRef *a1)
{
  if (gTrustd && (v2 = *(gTrustd + 88)) != 0)
  {

    return v2();
  }

  else
  {
    v4 = _os_activity_create(&dword_1887D2000, "SecTrustOTASecExperimentGetUpdatedAsset", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    v6.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v4, &v6);
    v5 = do_ota_pki_op(0x77u, a1);
    os_release(v4);
    os_activity_scope_leave(&v6);
    return v5;
  }
}

uint64_t SecTrustOTASecExperimentCopyAsset(CFErrorRef *a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (gTrustd && (v1 = *(gTrustd + 96)) != 0)
  {
    v2 = v1(a1);
  }

  else
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __SecTrustOTASecExperimentCopyAsset_block_invoke_2;
    v4[3] = &unk_1E70E31D8;
    v4[4] = &v5;
    securityd_send_sync_and_do(0x76u, a1, &__block_literal_global_370, v4);
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

BOOL __SecTrustOTASecExperimentCopyAsset_block_invoke_2(uint64_t a1, xpc_object_t xdict, __CFString **a3)
{
  if (xdict && xpc_dictionary_get_value(xdict, "status") && MEMORY[0x18CFDC200]() == MEMORY[0x1E69E9E80])
  {
    *(*(*(a1 + 32) + 8) + 24) = _CFXPCCreateCFObjectFromXPCObject();
    return *(*(*(a1 + 32) + 8) + 24) != 0;
  }

  else
  {

    return SecError(-26276, a3, @"Unable to get SecExperiment Assets");
  }
}

uint64_t SecTrustTriggerValidUpdate(CFErrorRef *a1)
{
  if (gTrustd && (v2 = *(gTrustd + 200)) != 0)
  {

    return v2();
  }

  else
  {
    v4 = _os_activity_create(&dword_1887D2000, "SecTrustTriggerValidUpdate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    v6.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v4, &v6);
    v5 = do_ota_pki_op(0x7Cu, a1);
    os_release(v4);
    os_activity_scope_leave(&v6);
    return v5 != 0;
  }
}

uint64_t SecTrustReportTLSAnalytics(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v3 = 0;
  if (!a1 || !a2)
  {
    return v3 & 1;
  }

  if (!gTrustd || (v7 = *(gTrustd + 144)) == 0)
  {
    v9 = _os_activity_create(&dword_1887D2000, "SecTrustReportTLSAnalytics", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v9, &state);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __SecTrustReportTLSAnalytics_block_invoke;
    v11[3] = &__block_descriptor_tmp_377;
    v11[4] = a1;
    v11[5] = a2;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __SecTrustReportTLSAnalytics_block_invoke_2;
    v10[3] = &unk_1E70E3220;
    v10[4] = &v12;
    securityd_send_sync_and_do(0x73u, a3, v11, v10);
    os_release(v9);
    v3 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
    os_activity_scope_leave(&state);
    return v3 & 1;
  }

  return v7();
}

BOOL __SecTrustReportTLSAnalytics_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  v5 = SecXPCDictionarySetString(a2, "eventName", *(a1 + 32), a3);
  if (v5)
  {
    xpc_dictionary_set_value(a2, "eventAttributes", *(a1 + 40));
  }

  return v5;
}

uint64_t SecTrustEvaluateLeafOnly(__SecTrust *a1, int *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 4294967246;
  }

  result = SecTrustValidateInput(a1);
  if (!result)
  {
    *&context = 0xAAAAAAAAAAAAAAAALL;
    *(&context + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v52[8] = v5;
    *&v52[24] = v5;
    *v52 = -1;
    *&v52[40] = 0xAAAAAAAAAAAAAAAALL;
    v47 = 0;
    v48 = &v47;
    v49 = 0x2000000000;
    v50 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2000000000;
    v46 = 0;
    v6 = *(a1 + 17);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __SecTrustEvaluateLeafOnly_block_invoke;
    block[3] = &unk_1E70E3290;
    block[5] = &v43;
    block[6] = a1;
    block[4] = &v47;
    dispatch_sync(v6, block);
    v7 = v48[3];
    v8 = v44[3];
    VerifyTime = SecTrustGetVerifyTime(a1);
    if (v7)
    {
      CFRetain(v7);
    }

    *&context = v7;
    if (v8)
    {
      CFRetain(v8);
    }

    *(&context + 1) = v8;
    *v52 = VerifyTime;
    v10 = *MEMORY[0x1E695E480];
    v11 = MEMORY[0x1E695E9D8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
    CFDictionaryAddValue(Mutable, @"SSLHostname", SecPolicyCheckCertSSLHostname);
    CFDictionaryAddValue(Mutable, @"Email", SecPolicyCheckCertEmail);
    CFDictionaryAddValue(Mutable, @"TemporalValidity", SecPolicyCheckCertTemporalValidity);
    CFDictionaryAddValue(Mutable, @"ValidLeaf", SecPolicyCheckCertValidLeaf);
    CFDictionaryAddValue(Mutable, @"WeakKeySize", SecPolicyCheckCertWeakKeySize);
    CFDictionaryAddValue(Mutable, @"WeakSignature", SecPolicyCheckCertWeakSignature);
    CFDictionaryAddValue(Mutable, @"KeyUsage", SecPolicyCheckCertKeyUsage);
    CFDictionaryAddValue(Mutable, @"ExtendedKeyUsage", SecPolicyCheckCertExtendedKeyUsage);
    CFDictionaryAddValue(Mutable, @"SubjectCommonName", SecPolicyCheckCertSubjectCommonName);
    CFDictionaryAddValue(Mutable, @"SubjectCommonNamePrefix", SecPolicyCheckCertSubjectCommonNamePrefix);
    CFDictionaryAddValue(Mutable, @"SubjectCommonNameTEST", SecPolicyCheckCertSubjectCommonNameTEST);
    CFDictionaryAddValue(Mutable, @"SubjectOrganization", SecPolicyCheckCertSubjectOrganization);
    CFDictionaryAddValue(Mutable, @"SubjectOrganizationalUnit", SecPolicyCheckCertSubjectOrganizationalUnit);
    CFDictionaryAddValue(Mutable, @"NotValidBefore", SecPolicyCheckCertNotValidBefore);
    CFDictionaryAddValue(Mutable, @"EAPTrustedServerNames", SecPolicyCheckCertEAPTrustedServerNames);
    CFDictionaryAddValue(Mutable, @"LeafMarkerOid", SecPolicyCheckCertLeafMarkerOid);
    CFDictionaryAddValue(Mutable, @"LeafMarkerOidWithoutValueCheck", SecPolicyCheckCertLeafMarkerOidWithoutValueCheck);
    CFDictionaryAddValue(Mutable, @"LeafMarkersProdAndQA", SecPolicyCheckCertLeafMarkersProdAndQA);
    CFDictionaryAddValue(Mutable, @"NotCA", SecPolicyCheckCertNotCA);
    CFDictionaryAddValue(Mutable, @"URI", SecPolicyCheckCertURI);
    CFDictionaryAddValue(Mutable, @"NonEmptySubject", SecPolicyCheckCertNonEmptySubject);
    CFDictionaryAddValue(Mutable, @"KeySize", SecPolicyCheckCertKeySize);
    CFDictionaryAddValue(Mutable, @"SignatureHashAlgorithms", SecPolicyCheckCertSignatureHashAlgorithms);
    CFDictionaryAddValue(Mutable, @"CertificatePolicy", SecPolicyCheckCertCertificatePolicy);
    CFDictionaryAddValue(Mutable, @"CriticalExtensions", SecPolicyCheckCertCriticalExtensions);
    CFDictionaryAddValue(Mutable, @"UnparseableExtension", SecPolicyCheckCertUnparseableExtension);
    CFDictionaryAddValue(Mutable, @"DuplicateExtension", SecPolicyCheckCertDuplicateExtension);
    *&v52[24] = Mutable;
    *&v52[32] = 0;
    *values = CFDictionaryCreateMutable(v10, 0, v11, MEMORY[0x1E695E9E8]);
    *&v52[8] = CFArrayCreate(v10, values, 1, MEMORY[0x1E695E9C0]);
    CFRelease(*values);
    v52[40] = 1;
    Count = CFArrayGetCount(v8);
    if (Count < 1)
    {
LABEL_13:
      v17 = 4;
      v18 = 1;
    }

    else
    {
      v14 = Count;
      v15 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v15);
        *&v52[32] = v15;
        CFDictionaryApplyFunction(ValueAtIndex[4], SecLeafPVCValidateKey, &context);
        if ((v52[40] & 1) == 0 && !*&v52[8])
        {
          break;
        }

        if (v14 == ++v15)
        {
          if (v52[40])
          {
            goto LABEL_13;
          }

          break;
        }
      }

      v18 = 0;
      v17 = 5;
    }

    v19 = SecTrustGetVerifyTime(a1);
    v20 = *(v48[3] + 176);
    Current = CFAbsoluteTimeGetCurrent();
    if (v20 >= v19 + 4500.0 || v20 <= Current)
    {
      v20 = v19 + 4500.0;
    }

    v23 = CFDateCreate(0, v19);
    v24 = CFDateCreate(0, v20);
    v25 = *(a1 + 17);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 0x40000000;
    v35 = context;
    v36 = *v52;
    v37 = *&v52[16];
    v38 = *&v52[32];
    v34[2] = __SecTrustEvaluateLeafOnly_block_invoke_2;
    v34[3] = &__block_descriptor_tmp_382;
    v34[4] = a1;
    v41 = v17;
    v39 = v23;
    v40 = v24;
    dispatch_sync(v25, v34);
    v26 = *(&context + 1);
    if (*(&context + 1))
    {
      *(&context + 1) = 0;
      CFRelease(v26);
    }

    v27 = *&v52[8];
    if (*&v52[8])
    {
      *&v52[8] = 0;
      CFRelease(v27);
    }

    v28 = *&v52[24];
    if (*&v52[24])
    {
      *&v52[24] = 0;
      CFRelease(v28);
    }

    v29 = context;
    if (context)
    {
      *&context = 0;
      CFRelease(v29);
    }

    if ((v18 & 1) == 0)
    {
      v30 = SecTrustCopyFailureDescription(a1);
      v31 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *values = 138412290;
        *&values[4] = v30;
        _os_log_impl(&dword_1887D2000, v31, OS_LOG_TYPE_DEFAULT, "%@", values, 0xCu);
      }

      CFRelease(v30);
    }

    if (a2)
    {
      *a2 = v17;
    }

    v32 = v48[3];
    if (v32)
    {
      CFRelease(v32);
    }

    v33 = v44[3];
    if (v33)
    {
      CFRelease(v33);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&v47, 8);
    return 0;
  }

  return result;
}

const void *__SecTrustEvaluateLeafOnly_block_invoke(void *a1)
{
  result = CFArrayGetValueAtIndex(*(a1[6] + 16), 0);
  v3 = result;
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(a1[4] + 8) + 24) = v3;
  v4 = a1[6];
  v5 = *(v4 + 32);
  if (v5)
  {
    result = CFRetain(*(v4 + 32));
  }

  *(*(a1[5] + 8) + 24) = v5;
  return result;
}

void __SecTrustEvaluateLeafOnly_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 112) = *(a1 + 120);
  v3 = *(v2 + 88);
  if (v3)
  {
    *(v2 + 88) = 0;
    CFRelease(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRetain(*(a1 + 64));
  }

  *(*(a1 + 32) + 88) = v4;
  MutableCopy = CFArrayCreateMutableCopy(0, 1, *(*(a1 + 32) + 16));
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  if (v7)
  {
    *(v6 + 72) = 0;
    CFRelease(v7);
    v6 = *(a1 + 32);
  }

  *(v6 + 72) = MutableCopy;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = Mutable;
  v10 = *(a1 + 104);
  if (v10)
  {
    CFDictionarySetValue(Mutable, @"TrustResultNotBefore", v10);
  }

  v11 = *(a1 + 112);
  if (v11)
  {
    CFDictionarySetValue(v9, @"TrustResultNotAfter", v11);
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 96);
  if (v13)
  {
    *(v12 + 96) = 0;
    CFRelease(v13);
    v12 = *(a1 + 32);
  }

  *(v12 + 96) = v9;
}

SecTrustRef SecTrustDeserialize(const __CFData *a1, CFErrorRef *a2, uint64_t a3)
{
  v7 = 0;
  if (a1)
  {
    result = CFPropertyListCreateWithDERData(0, a1, a3, 0, a2);
    if (result)
    {
      v5 = result;
      v6 = SecTrustCreateFromPlist(result, &v7);
      if (v6)
      {
        SecError(v6, a2, @"unable to create trust ref");
      }

      CFRelease(v5);
      return v7;
    }
  }

  else
  {
    SecError(-50, a2, @"null serialized trust input");
    return 0;
  }

  return result;
}

uint64_t SecTrustCopyPropertyListRepresentation(uint64_t a1, __CFString **a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (a1)
  {
    v3 = *(a1 + 136);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __SecTrustCopyPropertyListRepresentation_block_invoke;
    v6[3] = &unk_1E70E3300;
    v6[4] = &v7;
    v6[5] = a1;
    dispatch_sync(v3, v6);
    if (!v8[3])
    {
      SecError(-26275, a2, @"unable to create trust plist");
    }
  }

  else
  {
    SecError(-50, a2, @"null trust input");
  }

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t SecTrustIncrementExceptionResetCount(CFErrorRef *a1)
{
  v2 = _os_activity_create(&dword_1887D2000, "SecTrustIncrementExceptionResetCount", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  v8.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v2, &v8);
  if (gTrustd && (v3 = *(gTrustd + 168)) != 0)
  {
    v4 = v3(a1);
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    *buf = MEMORY[0x1E69E9820];
    v10 = 0x40000000;
    v11 = __to_BOOL_error_request_block_invoke;
    v12 = &unk_1E70E3A58;
    v13 = &v14;
    securityd_send_sync_and_do(0x79u, a1, 0, buf);
    v4 = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
  }

  os_release(v2);
  if (a1)
  {
    if (((*a1 == 0) & v4) != 0)
    {
LABEL_7:
      v5 = 0;
      goto LABEL_12;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v6 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "Failed to increment the exceptions epoch.", buf, 2u);
  }

  v5 = 4294941020;
LABEL_12:
  os_activity_scope_leave(&v8);
  return v5;
}

uint64_t SecTrustSetClientAuditToken(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  v4 = *(a1 + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecTrustSetNeedsEvaluation_block_invoke;
  block[3] = &__block_descriptor_tmp_80_14598;
  block[4] = a1;
  dispatch_sync(v4, block);
  v5 = *(a1 + 136);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __SecTrustSetClientAuditToken_block_invoke;
  v7[3] = &__block_descriptor_tmp_400;
  v7[4] = a1;
  v7[5] = a2;
  dispatch_sync(v5, v7);
  return 0;
}

void __SecTrustSetClientAuditToken_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 144);
  if (v3 != v1)
  {
    if (!v1 || (CFRetain(v1), (v3 = *(v2 + 144)) != 0))
    {
      CFRelease(v3);
    }

    *(v2 + 144) = v1;
  }
}

uint64_t SecTrustGetAppleAnchors()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecGetAppleTrustAnchors_block_invoke;
  block[3] = &__block_descriptor_tmp_1_16598;
  v2 = 0;
  if (SecGetAppleTrustAnchors_onceToken != -1)
  {
    dispatch_once(&SecGetAppleTrustAnchors_onceToken, block);
  }

  return SecGetAppleTrustAnchors_anchors;
}

__CFString *SecTrustStoreDomainName(CFTypeRef cf)
{
  v1 = cf;
  if (cf)
  {
    if (gTrustd)
    {
      v2 = @"user";
      if ((*gTrustd)(@"user", 0) == cf)
      {
        return v2;
      }

      v2 = @"admin";
      if ((*gTrustd)(@"admin", 0) == v1)
      {
        return v2;
      }

      v2 = @"system";
      if ((*gTrustd)(@"system", 0) == v1)
      {
        return v2;
      }
    }

    else
    {
      v3 = CFGetTypeID(cf);
      if (v3 == CFStringGetTypeID())
      {
        return v1;
      }
    }

    return 0;
  }

  return v1;
}

__CFString *SecTrustSettingsDomainName(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E70E3F40[a1];
  }
}

uint64_t SecTrustSettingsDomainForName(CFTypeRef cf2)
{
  if (!cf2)
  {
    return 0xFFFFFFFFLL;
  }

  if (CFEqual(@"user", cf2))
  {
    return 0;
  }

  if (CFEqual(@"admin", cf2))
  {
    return 1;
  }

  if (CFEqual(@"system", cf2))
  {
    return 2;
  }

  return 0xFFFFFFFFLL;
}

BOOL SecXPCDictionarySetCertificate(void *a1, uint64_t a2, __CFString **a3)
{
  if (a2 && (v4 = *(a2 + 24), v4 >= 1))
  {
    xpc_dictionary_set_data(a1, "cert", *(a2 + 16), v4);
    return 1;
  }

  else
  {

    return SecError(-50, a3, @"NULL certificate");
  }
}

uint64_t SecTrustStoreSetTrustSettings(uint64_t a1, void *a2, const void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = -1431655766;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  if (SecCertificateIsCertificate(a2))
  {
    IsSelfSigned = _SecCertificateIsSelfSigned(a2);
    *(v23 + 6) = 0;
    v7 = validateTrustSettings(IsSelfSigned, a3, v19 + 3);
    *(v23 + 6) = v7;
    if (!v7)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = __SecTrustStoreSetTrustSettings_block_invoke;
      v17[3] = &unk_1E70E3B18;
      v17[6] = a1;
      v17[7] = a2;
      v17[4] = &v22;
      v17[5] = &v18;
      _os_activity_initiate(&dword_1887D2000, "SecTrustStoreSetTrustSettings", OS_ACTIVITY_FLAG_DEFAULT, v17);
      if (!*(v23 + 6))
      {
        v8 = secLogObjForScope("truststore");
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_10;
        }

        *buf = 141558274;
        v27 = 1752392040;
        v28 = 2112;
        v29 = a2;
        v9 = "Set TrustSettings for %{mask.hash}@";
        v10 = v8;
        v11 = 22;
        goto LABEL_9;
      }
    }
  }

  else
  {
    *(v23 + 6) = -26275;
  }

  v12 = secLogObjForScope("SecError");
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_10;
  }

  v13 = *(v23 + 6);
  *buf = 141558530;
  v27 = 1752392040;
  v28 = 2112;
  v29 = a2;
  v30 = 1024;
  v31 = v13;
  v9 = "Failed set trust settings for %{mask.hash}@, %d";
  v10 = v12;
  v11 = 28;
LABEL_9:
  _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_10:
  v14 = v19[3];
  if (v14)
  {
    v19[3] = 0;
    CFRelease(v14);
  }

  v15 = *(v23 + 6);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v15;
}

uint64_t validateTrustSettings(uint64_t a1, const void *a2, __CFArray **a3)
{
  if (a1 && !a2)
  {
    return 0;
  }

  if (!a1 && !a2)
  {
    return 4294967246;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    v14 = CFArrayGetTypeID();
    if (v14 != CFGetTypeID(a2))
    {
      return 4294967246;
    }

    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      return 4294967188;
    }

    MutableCopy = Mutable;
    Count = CFArrayGetCount(a2);
    if (Count < 1)
    {
      v6 = 4294967246;
    }

    else
    {
      v17 = Count;
      v18 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v18);
        value = 0;
        v20 = validateTrustSettings(a1, ValueAtIndex, &value);
        if (v20)
        {
          break;
        }

        CFArrayAppendValue(MutableCopy, value);
        v21 = value;
        if (value)
        {
          value = 0;
          CFRelease(v21);
        }

        if (v17 == ++v18)
        {
          goto LABEL_31;
        }
      }

      v6 = v20;
    }

LABEL_38:
    CFRelease(MutableCopy);
    return v6;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a2);
  v9 = CFDictionaryGetValue(MutableCopy, @"kSecTrustSettingsResult");
  valuePtr = 0;
  if (v9)
  {
    v10 = v9;
    v11 = CFGetTypeID(v9);
    v12 = CFNumberGetTypeID();
    if (!a1 && v11 != v12)
    {
      goto LABEL_17;
    }

    v13 = CFGetTypeID(v10);
    if (v13 == CFNumberGetTypeID() && CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr) && (a1 && valuePtr == 2 || !a1 && valuePtr == 1))
    {
      goto LABEL_17;
    }
  }

  else if (!a1)
  {
LABEL_17:
    v6 = 4294967246;
    goto LABEL_32;
  }

  v22 = CFDictionaryGetValue(MutableCopy, @"kSecTrustSettingsPolicy");
  if (v22)
  {
    v23 = v22;
    CompatibilityOidString = SecPolicyGetCompatibilityOidString(v22);
    v25 = v23[3];
    CFDictionarySetValue(MutableCopy, @"kSecTrustSettingsPolicy", CompatibilityOidString);
    if (v25)
    {
      CFDictionaryAddValue(MutableCopy, @"kSecTrustSettingsPolicyName", v25);
    }
  }

LABEL_31:
  v6 = 0;
LABEL_32:
  if (a3 && !v6)
  {
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    v6 = 0;
    *a3 = MutableCopy;
  }

  if (MutableCopy)
  {
    goto LABEL_38;
  }

  return v6;
}

uint64_t __SecTrustStoreSetTrustSettings_block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __SecTrustStoreSetTrustSettings_block_invoke_2;
  v3[3] = &unk_1E70E3AF0;
  v5 = *(a1 + 56);
  v4 = *(a1 + 40);
  result = SecOSStatusWith(v3);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __SecTrustStoreSetTrustSettings_block_invoke_2(void *a1, CFErrorRef *a2)
{
  if (gTrustd && (v5 = *(gTrustd + 16)) != 0)
  {
    v6 = a1[6];
    v7 = *(*(a1[4] + 8) + 24);
    v8 = a1[5];

    return v5(v8, v6, v7, a2);
  }

  else
  {
    v14 = v2;
    v15 = v3;
    v10 = *(*(a1[4] + 8) + 24);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __string_cert_cftype_to_error_block_invoke;
    v11[3] = &__block_descriptor_tmp_69_14935;
    v12 = *(a1 + 5);
    v13 = v10;
    return securityd_send_sync_and_do(5u, a2, v11, 0);
  }
}

size_t __string_cert_cftype_to_error_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  result = SecXPCDictionarySetString(a2, "domain", *(a1 + 32), a3);
  if (result)
  {
    result = SecXPCDictionarySetCertificate(a2, *(a1 + 40), a3);
    if (result)
    {
      v11 = *(a1 + 48);
      if (v11)
      {

        return SecXPCDictionarySetPListWithRepair(a2, "settings", v11, a3, v7, v8, v9, v10);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t SecTrustStoreRemoveCertificate(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_1887D2000, "SecTrustStoreRemoveCertificate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v4, &state);
  if (!a1)
  {
    v5 = 4294967246;
LABEL_3:
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558530;
      v12 = 1752392040;
      v13 = 2112;
      v14 = a2;
      v15 = 1024;
      v16 = v5;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "Failed to remove trust settings for %{mask.hash}@, %d", buf, 0x1Cu);
    }

    goto LABEL_7;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __SecTrustStoreRemoveCertificate_block_invoke;
  v9[3] = &__block_descriptor_tmp_8_14946;
  v9[4] = a1;
  v9[5] = a2;
  v5 = SecOSStatusWith(v9);
  if (v5)
  {
    goto LABEL_3;
  }

  v7 = secLogObjForScope("truststore");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v12 = 1752392040;
    v13 = 2112;
    v14 = a2;
    _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "Removed TrustSettings for %{mask.hash}@", buf, 0x16u);
    v5 = 0;
  }

LABEL_7:
  os_release(v4);
  os_activity_scope_leave(&state);
  return v5;
}

uint64_t __SecTrustStoreRemoveCertificate_block_invoke(uint64_t a1, CFErrorRef *a2)
{
  if (gTrustd && (v5 = *(gTrustd + 24)) != 0)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);

    return v5(v7, v6, a2);
  }

  else
  {
    v11 = v2;
    v12 = v3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __string_cert_to_BOOL_error_block_invoke;
    v9[3] = &__block_descriptor_tmp_70_14949;
    v10 = *(a1 + 32);
    return securityd_send_sync_and_do(6u, a2, v9, 0);
  }
}

CFIndex SecTrustStoreGetSettingsVersionNumber(_DWORD *a1)
{
  if (!a1)
  {
    return 4294967246;
  }

  err = 0;
  *a1 = SecTrustGetTrustStoreVersionNumber(&err);
  if (!err)
  {
    return 0;
  }

  Code = CFErrorGetCode(err);
  if (err)
  {
    CFRelease(err);
  }

  return Code;
}

CFIndex SecTrustStoreGetSettingsAssetVersionNumber(_DWORD *a1)
{
  if (!a1)
  {
    return 4294967246;
  }

  err = 0;
  *a1 = SecTrustGetAssetVersionNumber(&err);
  if (!err)
  {
    return 0;
  }

  Code = CFErrorGetCode(err);
  if (err)
  {
    CFRelease(err);
  }

  return Code;
}

uint64_t SecTrustStoreCopyAll(uint64_t a1, void *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v4 = _os_activity_create(&dword_1887D2000, "SecTrustStoreCopyAll", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v4, &state);
  if (a1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __SecTrustStoreCopyAll_block_invoke;
    v7[3] = &unk_1E70E3B60;
    v7[4] = &v9;
    v7[5] = a1;
    v5 = SecOSStatusWith(v7);
    *a2 = v10[3];
  }

  else
  {
    v5 = 4294967246;
  }

  os_release(v4);
  os_activity_scope_leave(&state);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __SecTrustStoreCopyAll_block_invoke(uint64_t a1, CFErrorRef *a2)
{
  if (gTrustd && (v2 = *(gTrustd + 120)) != 0)
  {
    return v2(*(a1 + 40), 0, *(*(a1 + 32) + 8) + 24, a2);
  }

  else
  {
    return string_string_to_array_error(*(a1 + 40), 0, *(*(a1 + 32) + 8) + 24, a2);
  }
}

uint64_t string_string_to_array_error(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __string_string_to_array_error_block_invoke;
  v6[3] = &__block_descriptor_tmp_72_14952;
  v6[4] = a2;
  v6[5] = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __string_string_to_array_error_block_invoke_2;
  v5[3] = &__block_descriptor_tmp_73_14953;
  v5[4] = a3;
  return securityd_send_sync_and_do(0x64u, a4, v6, v5);
}

BOOL __string_string_to_array_error_block_invoke(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v6 = *(a1 + 32);
  if (!v6 || (result = SecXPCDictionarySetString(a2, "policies", v6, a3), result))
  {
    v8 = *(a1 + 40);

    return SecXPCDictionarySetString(a2, "domain", v8, a3);
  }

  return result;
}

BOOL __string_string_to_array_error_block_invoke_2(uint64_t a1, xpc_object_t xdict, __CFString **a3)
{
  result = 1;
  if (*(a1 + 32))
  {
    **(a1 + 32) = SecXPCDictionaryCopyArray(xdict, "status", a3);
    if (!**(a1 + 32))
    {
      return 0;
    }
  }

  return result;
}

uint64_t SecTrustStoreCopyAnchors(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v4 = _os_activity_create(&dword_1887D2000, "SecTrustStoreCopyAnchors", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v4, &state);
  if (a1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __SecTrustStoreCopyAnchors_block_invoke;
    v7[3] = &unk_1E70E3B88;
    v7[5] = a1;
    v7[6] = a2;
    v7[4] = &v9;
    v5 = SecOSStatusWith(v7);
    os_release(v4);
    if (v5)
    {
      a1 = 0;
    }

    else
    {
      a1 = v10[3];
    }
  }

  else
  {
    os_release(v4);
  }

  os_activity_scope_leave(&state);
  _Block_object_dispose(&v9, 8);
  return a1;
}

uint64_t __SecTrustStoreCopyAnchors_block_invoke(void *a1, CFErrorRef *a2)
{
  if (gTrustd && (v2 = *(gTrustd + 120)) != 0)
  {
    return v2(a1[5], a1[6], *(a1[4] + 8) + 24, a2);
  }

  else
  {
    return string_string_to_array_error(a1[5], a1[6], *(a1[4] + 8) + 24, a2);
  }
}

uint64_t SecTrustStoreCopyUsageConstraints(uint64_t a1, uint64_t a2, const __CFArray **a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v6 = _os_activity_create(&dword_1887D2000, "SecTrustStoreCopyUsageConstraints", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v6, &state);
  v7 = 4294967246;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 0x40000000;
        v15[2] = __SecTrustStoreCopyUsageConstraints_block_invoke;
        v15[3] = &unk_1E70E3BB0;
        v15[5] = a1;
        v15[6] = a2;
        v15[4] = &v17;
        v7 = SecOSStatusWith(v15);
        v8 = v18[3];
        *a3 = v8;
        if (!v7)
        {
          if (v8)
          {
            Count = CFArrayGetCount(v8);
            v11 = secLogObjForScope("truststore");
            v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
            if (Count)
            {
              if (v12)
              {
                *buf = 141558274;
                v22 = 1752392040;
                v23 = 2112;
                v24 = a2;
                v13 = "Found usage constraints for %{mask.hash}@";
LABEL_15:
                _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
              }
            }

            else if (v12)
            {
              *buf = 141558274;
              v22 = 1752392040;
              v23 = 2112;
              v24 = a2;
              v13 = "Found no usage constraints for %{mask.hash}@";
              goto LABEL_15;
            }
          }

          else
          {
            v11 = secLogObjForScope("truststore");
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 141558274;
              v22 = 1752392040;
              v23 = 2112;
              v24 = a2;
              v13 = "Found no trust settings for %{mask.hash}@";
              goto LABEL_15;
            }
          }

          v7 = 0;
          goto LABEL_17;
        }
      }
    }
  }

  v9 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558530;
    v22 = 1752392040;
    v23 = 2112;
    v24 = a2;
    v25 = 1024;
    v26 = v7;
    _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "Failed to get usage contraints for %{mask.hash}@, %d", buf, 0x1Cu);
  }

LABEL_17:
  os_release(v6);
  os_activity_scope_leave(&state);
  _Block_object_dispose(&v17, 8);
  return v7;
}

uint64_t __SecTrustStoreCopyUsageConstraints_block_invoke(void *a1, CFErrorRef *a2)
{
  if (gTrustd && (v5 = *(gTrustd + 128)) != 0)
  {
    v6 = a1[6];
    v7 = *(a1[4] + 8) + 24;
    v8 = a1[5];

    return v5(v8, v6, v7, a2);
  }

  else
  {
    v14 = v2;
    v15 = v3;
    v10 = *(a1[4] + 8) + 24;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __string_cert_to_array_error_block_invoke;
    v12[3] = &__block_descriptor_tmp_74_14963;
    v13 = *(a1 + 5);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __string_cert_to_array_error_block_invoke_2;
    v11[3] = &__block_descriptor_tmp_75_14964;
    v11[4] = v10;
    return securityd_send_sync_and_do(0x65u, a2, v12, v11);
  }
}

BOOL __string_cert_to_array_error_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  result = SecXPCDictionarySetString(a2, "domain", *(a1 + 32), a3);
  if (result)
  {
    v7 = *(a1 + 40);

    return SecXPCDictionarySetCertificate(a2, v7, a3);
  }

  return result;
}

uint64_t SecTrustStoreRemoveAll(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_1887D2000, "SecTrustStoreRemoveAll", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v2, &state);
  if (!a1)
  {
    v3 = 4294967246;
LABEL_3:
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "Failed to remove all trust settings, %d", buf, 8u);
    }

    goto LABEL_7;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __SecTrustStoreRemoveAll_block_invoke;
  v7[3] = &__block_descriptor_tmp_12_14966;
  v7[4] = a1;
  v3 = SecOSStatusWith(v7);
  if (v3)
  {
    goto LABEL_3;
  }

  v5 = secLogObjForScope("truststore");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "Removed all trust settings", buf, 2u);
    v3 = 0;
  }

LABEL_7:
  os_release(v2);
  os_activity_scope_leave(&state);
  return v3;
}

uint64_t __SecTrustStoreRemoveAll_block_invoke(uint64_t a1, CFErrorRef *a2)
{
  if (gTrustd && (v4 = *(gTrustd + 32)) != 0)
  {
    v5 = *(a1 + 32);

    return v4(v5, a2);
  }

  else
  {
    v8[5] = v2;
    v8[6] = v3;
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __string_to_error_block_invoke;
    v8[3] = &__block_descriptor_tmp_76_14969;
    v8[4] = v7;
    return securityd_send_sync_and_do(0x81u, a2, v8, &__block_literal_global_14970);
  }
}

uint64_t SecTrustStoreSetCTExceptions(__CFString *a1, uint64_t a2, CFErrorRef *a3)
{
  v5 = a1;
  if (a1 && gTrustd)
  {
    v6 = *(gTrustd + 152);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_11:
    v8 = _os_activity_create(&dword_1887D2000, "SecTrustStoreSetCTExceptions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v8, &state);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __SecTrustStoreSetCTExceptions_block_invoke;
    v11[3] = &__block_descriptor_tmp_29_14975;
    v11[4] = a2;
    v11[5] = v5;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __SecTrustStoreSetCTExceptions_block_invoke_2;
    v10[3] = &unk_1E70E3C48;
    v10[4] = &v12;
    securityd_send_sync_and_do(0x74u, a3, v11, v10);
    os_release(v8);
    v9 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
    os_activity_scope_leave(&state);
    return v9;
  }

  if (!gTrustd)
  {
    goto LABEL_11;
  }

  v6 = *(gTrustd + 152);
  if (!v6)
  {
    goto LABEL_11;
  }

  a1 = @"com.apple.trusttests";
LABEL_8:

  return v6(a1);
}

uint64_t __SecTrustStoreSetCTExceptions_block_invoke(uint64_t a1, void *a2, __CFString **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 32);
  if (v11)
  {
    SecXPCDictionarySetPListWithRepair(a2, "exceptions", v11, a3, a5, a6, a7, a8);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    SecXPCDictionarySetString(a2, "appID", v12, a3);
  }

  return 1;
}

uint64_t SecTrustStoreCopyCTExceptions(uint64_t a1, CFErrorRef *a2)
{
  if (gTrustd && (v4 = *(gTrustd + 160)) != 0)
  {

    return v4();
  }

  else
  {
    v6 = _os_activity_create(&dword_1887D2000, "SecTrustStoreCopyCTExceptions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v6, &state);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __SecTrustStoreCopyCTExceptions_block_invoke;
    v9[3] = &__block_descriptor_tmp_31_14982;
    v9[4] = a1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __SecTrustStoreCopyCTExceptions_block_invoke_2;
    v8[3] = &unk_1E70E3C90;
    v8[4] = &v10;
    securityd_send_sync_and_do(0x75u, a2, v9, v8);
    os_release(v6);
    v7 = v11[3];
    _Block_object_dispose(&v10, 8);
    os_activity_scope_leave(&state);
    return v7;
  }
}

uint64_t __SecTrustStoreCopyCTExceptions_block_invoke(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    SecXPCDictionarySetString(a2, "appID", v4, a3);
  }

  return 1;
}

uint64_t SecTrustStoreSetCARevocationAdditions(__CFString *a1, uint64_t a2, CFErrorRef *a3)
{
  v5 = a1;
  if (a1 && gTrustd)
  {
    v6 = *(gTrustd + 184);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_11:
    v8 = _os_activity_create(&dword_1887D2000, "SecTrustStoreSetCARevocationAdditions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v8, &state);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __SecTrustStoreSetCARevocationAdditions_block_invoke;
    v11[3] = &__block_descriptor_tmp_37_14985;
    v11[4] = a2;
    v11[5] = v5;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __SecTrustStoreSetCARevocationAdditions_block_invoke_2;
    v10[3] = &unk_1E70E3CF0;
    v10[4] = &v12;
    securityd_send_sync_and_do(0x7Au, a3, v11, v10);
    os_release(v8);
    v9 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
    os_activity_scope_leave(&state);
    return v9;
  }

  if (!gTrustd)
  {
    goto LABEL_11;
  }

  v6 = *(gTrustd + 184);
  if (!v6)
  {
    goto LABEL_11;
  }

  a1 = @"com.apple.trusttests";
LABEL_8:

  return v6(a1);
}

uint64_t __SecTrustStoreSetCARevocationAdditions_block_invoke(uint64_t a1, void *a2, __CFString **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 32);
  if (v11)
  {
    SecXPCDictionarySetPListWithRepair(a2, "revocationCheck", v11, a3, a5, a6, a7, a8);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    SecXPCDictionarySetString(a2, "appID", v12, a3);
  }

  return 1;
}

uint64_t SecTrustStoreCopyCARevocationAdditions(uint64_t a1, CFErrorRef *a2)
{
  if (gTrustd && (v4 = *(gTrustd + 192)) != 0)
  {

    return v4();
  }

  else
  {
    v6 = _os_activity_create(&dword_1887D2000, "SecTrustStoreCopyCARevocationAdditions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v6, &state);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __SecTrustStoreCopyCARevocationAdditions_block_invoke;
    v9[3] = &__block_descriptor_tmp_39_14989;
    v9[4] = a1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __SecTrustStoreCopyCARevocationAdditions_block_invoke_2;
    v8[3] = &unk_1E70E3D38;
    v8[4] = &v10;
    securityd_send_sync_and_do(0x7Bu, a2, v9, v8);
    os_release(v6);
    v7 = v11[3];
    _Block_object_dispose(&v10, 8);
    os_activity_scope_leave(&state);
    return v7;
  }
}

uint64_t __SecTrustStoreCopyCARevocationAdditions_block_invoke(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    SecXPCDictionarySetString(a2, "appID", v4, a3);
  }

  return 1;
}

uint64_t SecTrustStoreSetTransparentConnectionPins(__CFString *a1, uint64_t a2, CFErrorRef *a3)
{
  v5 = a1;
  if (a1 && gTrustd)
  {
    v6 = *(gTrustd + 208);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_11:
    v8 = _os_activity_create(&dword_1887D2000, "SecTrustStoreSetTransparentConnectionPins", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v8, &state);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __SecTrustStoreSetTransparentConnectionPins_block_invoke;
    v11[3] = &__block_descriptor_tmp_42_14992;
    v11[4] = a2;
    v11[5] = v5;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __SecTrustStoreSetTransparentConnectionPins_block_invoke_2;
    v10[3] = &unk_1E70E3D80;
    v10[4] = &v12;
    securityd_send_sync_and_do(0x7Du, a3, v11, v10);
    os_release(v8);
    v9 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
    os_activity_scope_leave(&state);
    return v9;
  }

  if (!gTrustd)
  {
    goto LABEL_11;
  }

  v6 = *(gTrustd + 208);
  if (!v6)
  {
    goto LABEL_11;
  }

  a1 = @"com.apple.trusttests";
LABEL_8:

  return v6(a1);
}

uint64_t __SecTrustStoreSetTransparentConnectionPins_block_invoke(uint64_t a1, void *a2, __CFString **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 32);
  if (v11)
  {
    SecXPCDictionarySetPListWithRepair(a2, "anchors", v11, a3, a5, a6, a7, a8);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    SecXPCDictionarySetString(a2, "appID", v12, a3);
  }

  return 1;
}

uint64_t SecTrustStoreCopyTransparentConnectionPins(uint64_t a1, CFErrorRef *a2)
{
  if (gTrustd && (v4 = *(gTrustd + 216)) != 0)
  {

    return v4();
  }

  else
  {
    v6 = _os_activity_create(&dword_1887D2000, "SecTrustStoreCopyTransparentConnectionPins", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v6, &state);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __SecTrustStoreCopyTransparentConnectionPins_block_invoke;
    v9[3] = &__block_descriptor_tmp_44_14996;
    v9[4] = a1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __SecTrustStoreCopyTransparentConnectionPins_block_invoke_2;
    v8[3] = &unk_1E70E3DC8;
    v8[4] = &v10;
    securityd_send_sync_and_do(0x7Eu, a2, v9, v8);
    os_release(v6);
    v7 = v11[3];
    _Block_object_dispose(&v10, 8);
    os_activity_scope_leave(&state);
    return v7;
  }
}

uint64_t __SecTrustStoreCopyTransparentConnectionPins_block_invoke(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    SecXPCDictionarySetString(a2, "appID", v4, a3);
  }

  return 1;
}

CFDataRef SecXPCDictionaryCopyData(void *a1, const char *a2, __CFString **a3)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, a2, &length);
  if (data)
  {
    if ((length & 0x8000000000000000) != 0)
    {
      SecError(-50, a3, @"too large data for key %s", a2);
    }

    else
    {
      result = CFDataCreate(*MEMORY[0x1E695E480], data, length);
      if (result)
      {
        return result;
      }

      SecError(-50, a3, @"failed to create data for key %s", a2);
    }
  }

  else
  {
    SecError(-50, a3, @"no data for key %s", a2);
  }

  return 0;
}

CFStringRef SecXPCDictionaryCopyString(void *a1, __CFString **a2)
{
  string = xpc_dictionary_get_string(a1, "status");
  if (string)
  {
    v4 = string;
    result = CFStringCreateWithCString(*MEMORY[0x1E695E480], string, 0x8000100u);
    if (result)
    {
      return result;
    }

    SecError(-108, a2, @"object for key %s failed to convert %s to CFString", "status", v4);
  }

  else
  {
    SecError(-50, a2, @"object for key %s not string", "status");
  }

  return 0;
}

uint64_t safeContentsParse(uint64_t **a1, unint64_t a2, char *a3)
{
  v23 = 0;
  if (*a1)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3 || SEC_ASN1Decode(**a1, &v23, &NSS_P12_SafeContentsTemplate, a3, a2))
  {
    return 0xFFFFFFFFLL;
  }

  if (v23)
  {
    if (*v23)
    {
      v5 = 0;
        ;
      }

      if (v5)
      {
        v7 = 0;
        v8 = *MEMORY[0x1E695E480];
        v9 = *MEMORY[0x1E695E498];
        v10 = 8 * v5;
        do
        {
          v11 = v23[v7 / 8];
          v12 = *(v11 + 24);
          if (!v12)
          {
            return 0xFFFFFFFFLL;
          }

          v13 = *(v11 + 16);
          result = 0xFFFFFFFFLL;
          if (v13 > 3)
          {
            if ((v13 - 4) >= 3)
            {
              return result;
            }
          }

          else if (v13 != 1)
          {
            if (v13 == 2)
            {
              v30 = 0uLL;
              p12Decrypt(a1, v12, v12 + 32, &v30);
              if (v17)
              {
                return 0xFFFFFFFFLL;
              }

              v29 = 0;
              v27 = 0u;
              v28 = 0u;
              v25 = 0u;
              v26 = 0u;
              if (!*a1)
              {
                return 0xFFFFFFFFLL;
              }

              if (!*(&v30 + 1))
              {
                return 0xFFFFFFFFLL;
              }

              if (SEC_ASN1Decode(**a1, &v25, &kSecAsn1PrivateKeyInfoTemplate, *(&v30 + 1), v30))
              {
                return 0xFFFFFFFFLL;
              }

              v24[0] = *(&v26 + 1);
              v24[1] = v26;
              v18 = DEROidCompare(&oidEcPubKey, v24);
              v19 = &oidEcPubKey;
              if (!v18)
              {
                v20 = DEROidCompare(&oidRsa, v24);
                v19 = &oidRsa;
                if (!v20)
                {
                  return 0xFFFFFFFFLL;
                }
              }

              v21 = CFDataCreateWithBytesNoCopy(v8, v19->data, v19->length, v9);
              if (emit_item(a1, *(v11 + 32), @"algid", v21))
              {
                if (!v21)
                {
                  return 0xFFFFFFFFLL;
                }

                v22 = -1;
LABEL_36:
                CFRelease(v21);
              }

              else
              {
                if (v21)
                {
                  CFRelease(v21);
                }

                v21 = CFDataCreate(v8, *(&v28 + 1), v28);
                if (emit_item(a1, *(v11 + 32), @"key", v21))
                {
                  v22 = -1;
                }

                else
                {
                  v22 = 0;
                }

                if (v21)
                {
                  goto LABEL_36;
                }
              }

              if (v22)
              {
                return 0xFFFFFFFFLL;
              }

              goto LABEL_38;
            }

            if (v13 != 3)
            {
              return result;
            }

            v15 = *(v12 + 16);
            if (v15 != 2)
            {
              if (v15 != 1)
              {
                return result;
              }

              v16 = CFDataCreate(v8, *(v12 + 32), *(v12 + 24));
              if (emit_item(a1, *(v11 + 32), @"cert", v16))
              {
                if (v16)
                {
                  CFRelease(v16);
                }

                return 0xFFFFFFFFLL;
              }

              CFRelease(v16);
            }
          }

LABEL_38:
          v7 += 8;
        }

        while (v10 != v7);
      }
    }
  }

  return 0;
}

double p12Decrypt(uint64_t a1, void *a2, uint64_t a3, _OWORD *a4)
{
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v8 = a2[2];
  if (v8)
  {
    v63 = 0uLL;
    v64 = 0uLL;
    v61 = 0uLL;
    v62 = 0uLL;
    v59 = 0uLL;
    v60 = 0uLL;
    v57 = 0uLL;
    v58 = 0uLL;
    v55 = 0uLL;
    v56 = 0uLL;
    v9 = *a1;
    v10 = a2[3];
    if (*a1 && v10)
    {
      if (!SEC_ASN1Decode(*v9, &v55, &NSS_P12_PBE_ParamsTemplate, v10, v8))
      {
        goto LABEL_10;
      }

      v9 = *a1;
      v10 = a2[3];
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    if (v9 && v10 && !SEC_ASN1Decode(*v9, &v55, &NSS_P12_PBE2_ParamsTemplate, v10, a2[2]))
    {
      v55 = v58;
      v56 = v59;
    }
  }

LABEL_10:
  v11 = *a2 - 1;
  v65 = a2[1];
  v66 = v11;
  if (DEROidCompare(&OID_PKCS12_pbep, &v65))
  {
    v13 = *(a2[1] + *a2 - 1);
    if (v13 > 7 || v13 == 4)
    {
      return result;
    }

    v15 = &pkcsOidInfos + 16 * v13;
    v16 = *(v15 - 4);
    v17 = *(v15 - 3);
    v19 = *(v15 - 2);
    v18 = *(v15 - 1);
    v20 = 20;
  }

  else
  {
    if (!DEROidCompare(&OID_PKCS5_pbep2, &v65))
    {
      return result;
    }

    v16 = 0;
    v20 = 32;
    v18 = 1;
    v19 = 16;
    v17 = 256;
  }

  v21 = v56;
  if (v56 && (v22 = *(&v56 + 1)) != 0)
  {
    if (v56 > 4)
    {
      return result;
    }

    options = v18;
    v23 = 0;
    do
    {
      v24 = *v22++;
      v23 = v24 | (v23 << 8);
      --v21;
    }

    while (v21);
    if (!v17)
    {
LABEL_32:
      v25 = 0;
      v26 = 0;
      if (v16)
      {
        goto LABEL_33;
      }

LABEL_30:
      v51 = 0;
      v52 = &v51;
      v53 = 0x2000000000;
      v54 = 0;
      v27 = *(a1 + 8);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 0x40000000;
      v44 = v61;
      v45 = v62;
      v46 = v63;
      v47 = v64;
      v40 = v57;
      v41 = v58;
      v42 = v59;
      v43 = v60;
      v38 = v55;
      v25 = v17 >> 3;
      v37[2] = __p12Decrypt_block_invoke;
      v37[3] = &unk_1E70E40D0;
      v37[4] = &v51;
      v39 = v56;
      v50 = v23;
      v48 = v25;
      v49 = v26;
      v65 = MEMORY[0x1E69E9820];
      v66 = 0x40000000;
      v67 = __CFStringPerformWithCString_block_invoke;
      v68 = &unk_1E70E4418;
      v69 = v37;
      CFStringPerformWithCStringAndLength(v27, &v65);
      v28 = *(v52 + 6);
      _Block_object_dispose(&v51, 8);
      if (v28)
      {
        return result;
      }

      goto LABEL_34;
    }
  }

  else
  {
    options = v18;
    v23 = 0;
    if (!v17)
    {
      goto LABEL_32;
    }
  }

  if (!*a1)
  {
    goto LABEL_32;
  }

  v25 = (v17 + 7) >> 3;
  v26 = PORT_ArenaAlloc(**a1, v25);
  if (!v26)
  {
    v25 = 0;
  }

  if (!v16)
  {
    goto LABEL_30;
  }

LABEL_33:
  if (p12_pbe_gen(*(a1 + 8), *(&v55 + 1), v55, v23, 1, v26, v25, 0x40u, v20))
  {
    return result;
  }

LABEL_34:
  v29 = *(&v64 + 1);
  if (*(&v64 + 1) && v64)
  {
LABEL_44:
    v36 = 0uLL;
    v31 = *a1;
    if (*a1)
    {
      dataOutAvailable = *a3;
      dataOut = PORT_ArenaAlloc(*v31, *a3);
      *(&v36 + 1) = dataOut;
      v34 = options;
      if (dataOut)
      {
        *&v36 = dataOutAvailable;
      }

      else
      {
        dataOutAvailable = 0;
      }
    }

    else
    {
      dataOutAvailable = 0;
      dataOut = 0;
      v34 = options;
    }

    if (!CCCrypt(1u, v16, v34, v26, v25, v29, *(a3 + 8), *a3, dataOut, dataOutAvailable, &v36))
    {
      result = *&v36;
      *a4 = v36;
    }

    return result;
  }

  if (!v19)
  {
    v29 = 0;
    goto LABEL_44;
  }

  if (*a1)
  {
    v29 = PORT_ArenaAlloc(**a1, v19);
    if (v29)
    {
      v30 = v19;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
    v29 = 0;
  }

  if (!p12_pbe_gen(*(a1 + 8), *(&v55 + 1), v55, v23, 2, v29, v30, 0x40u, v20))
  {
    goto LABEL_44;
  }

  return result;
}

uint64_t __p12Decrypt_block_invoke(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  result = CCKeyDerivationPBKDF(2u, __s, v4, *(a1 + 48), *(a1 + 40), 3u, *(a1 + 216), *(a1 + 208), *(a1 + 200));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t emit_item(uint64_t a1, void *a2, void *a3, const void *a4)
{
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = Mutable;
  key = a3;
  v38 = a4;
  if (a2)
  {
    if (*a2)
    {
      v11 = 0;
        ;
      }

      if (v11)
      {
        v13 = 0;
        v14 = v11;
        do
        {
          v15 = a2[v13];
          v16 = v15[2];
          if (v16 && *v16)
          {
            v17 = v16 + 1;
            v18 = -1;
            do
            {
              v19 = *v17++;
              ++v18;
            }

            while (v19);
            v20 = v18 == 0;
          }

          else
          {
            v20 = 0;
          }

          v41 = 0xAAAAAAAAAAAAAAAALL;
          v42 = 0xAAAAAAAAAAAAAAAALL;
          v41 = v15[1];
          v42 = *v15;
          if (DEROidCompare(&v41, &oidFriendlyName))
          {
            if (!v20)
            {
              goto LABEL_41;
            }

            v39 = 0xAAAAAAAAAAAAAAAALL;
            v40 = 0xAAAAAAAAAAAAAAAALL;
            if (!*a1)
            {
              goto LABEL_41;
            }

            v21 = *v15[2];
            v22 = v21[1];
            if (!v22 || SEC_ASN1Decode(**a1, &v39, kSecAsn1BMPStringTemplate, v22, *v21))
            {
              goto LABEL_41;
            }

            v23 = CFStringCreateWithBytes(v8, v40, v39, 0x100u, 1u);
            if (v23)
            {
              v24 = v23;
              v25 = v10;
              v26 = @"label";
LABEL_28:
              CFDictionarySetValue(v25, v26, v24);
              CFRelease(v24);
            }
          }

          else if (DEROidCompare(&v41, &oidLocalKeyId))
          {
            if (!v20 || (v39 = 0xAAAAAAAAAAAAAAAALL, v40 = 0xAAAAAAAAAAAAAAAALL, !*a1) || (v27 = *v15[2], (v28 = v27[1]) == 0) || SEC_ASN1Decode(**a1, &v39, kSecAsn1OctetStringTemplate, v28, *v27))
            {
LABEL_41:
              v35 = 0xFFFFFFFFLL;
              goto LABEL_39;
            }

            v29 = CFDataCreate(v8, v40, v39);
            if (v29)
            {
              v24 = v29;
              v25 = v10;
              v26 = @"keyid";
              goto LABEL_28;
            }
          }

          ++v13;
        }

        while (v13 != v14);
      }
    }
  }

  Value = CFDictionaryGetValue(v10, @"keyid");
  if (!Value)
  {
    Value = CFDictionaryGetValue(v10, @"label");
  }

  if (Value)
  {
    v31 = Value;
  }

  else
  {
    v31 = v38;
  }

  v32 = CFDictionaryGetValue(*(a1 + 16), v31);
  v33 = key;
  if (v32)
  {
    v34 = v38;
  }

  else
  {
    CFDictionarySetValue(v10, key, v38);
    v32 = *(a1 + 16);
    v33 = v31;
    v34 = v10;
  }

  CFDictionarySetValue(v32, v33, v34);
  v35 = 0;
LABEL_39:
  CFRelease(v10);
  return v35;
}

uint64_t __Block_byref_object_copy__15916(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _getAppAttestInternalSymbol(void *a1, char *__symbol)
{
  if (_initAppAttestInternal_onceToken == -1)
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&_initAppAttestInternal_onceToken, &__block_literal_global_584);
    if (!a1)
    {
      return;
    }
  }

  if (!*a1)
  {
    v4 = dlsym(appAttestInternal, __symbol);
    *a1 = v4;
    if (!v4)
    {
      fprintf(*MEMORY[0x1E69E9848], "symbol %s is missing", __symbol);
      abort();
    }
  }
}

void *___initAppAttestInternal_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppAttestInternal.framework/AppAttestInternal", 5);
  appAttestInternal = result;
  return result;
}

void sub_188915CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188915E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1889160FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188916E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SecRequestClientIdentity(const void *a1, const void *a2, void *a3, void *a4)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = "subject";
  if (a1)
  {
    v10 = 0;
  }

  if (!a2)
  {
    v10 = "parameters";
  }

  if (!v7)
  {
    v10 = "queue";
  }

  if (!v8)
  {
    v10 = "result block";
  }

  if (v10)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SecRequestClientIdentity was called with NULL %s", v10];
    v12 = v11;
    if (v9)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A768];
      v27 = *MEMORY[0x1E696A578];
      v28[0] = v11;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v16 = [v13 errorWithDomain:v14 code:-50 userInfo:v15];

      (v9)[2](v9, 0, v16);
    }

    else
    {
      v16 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
      }
    }
  }

  else
  {
    if (a1)
    {
      CFRetain(a1);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__15916;
    v25 = __Block_byref_object_dispose__15917;
    v26 = os_transaction_create();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __SecRequestClientIdentity_block_invoke;
    block[3] = &unk_1E70E4340;
    v20 = a1;
    v21 = a2;
    v18 = v9;
    p_buf = &buf;
    dispatch_async(v7, block);

    _Block_object_dispose(&buf, 8);
  }
}

void __SecRequestClientIdentity_block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[AcmeCertRequest alloc] initWithSubject:a1[6] parameters:a1[7]];
  v4 = [(AcmeCertRequest *)v3 sanitizeParameters];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v10 = 0;
    [(AcmeCertRequest *)v3 identityWithError:&v10];
    v5 = v10;
  }

  (*(a1[4] + 16))();
  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  objc_autoreleasePoolPop(v2);
}

uint64_t SecAreQARootCertificatesEnabled()
{
  if (SecAreQARootCertificatesEnabled_onceToken != -1)
  {
    dispatch_once(&SecAreQARootCertificatesEnabled_onceToken, &__block_literal_global_16024);
  }

  return SecAreQARootCertificatesEnabled_sQACertsEnabled;
}

void __SecAreQARootCertificatesEnabled_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v3 = 4;
  v0 = sysctlbyname("security.mac.amfi.qa_root_certs_allowed", &v4, &v3, 0, 0);
  if (v0)
  {
    v1 = v0;
    v2 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v6 = v1;
      _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "Unable to check QA certificate status: %d", buf, 8u);
    }
  }

  else
  {
    SecAreQARootCertificatesEnabled_sQACertsEnabled = v4 == 1;
  }
}

uint64_t p12_pbe_gen(const __CFString *a1, const void *a2, size_t a3, unsigned int a4, uint64_t a5, void *a6, size_t a7, CC_LONG a8, unsigned int a9)
{
  v71 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = a8;
  MEMORY[0x1EEE9AC00](a1);
  memset(&v55 - ((v16 + 15) & 0x1FFFFFFF0), v17, v16);
  ExternalRepresentation = CFStringCreateExternalRepresentation(*MEMORY[0x1E695E480], a1, 0x10000100u, 0);
  if (!ExternalRepresentation)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = ExternalRepresentation;
  v65 = &v55 - ((v16 + 15) & 0x1FFFFFFF0);
  bytes = 0;
  MutableCopy = CFDataCreateMutableCopy(0, 0, ExternalRepresentation);
  CFRelease(v19);
  if (!MutableCopy)
  {
    return 0xFFFFFFFFLL;
  }

  CFDataAppendBytes(MutableCopy, &bytes, 2);
  v68 = 0;
  Length = CFDataGetLength(MutableCopy);
  BytePtr = CFDataGetBytePtr(MutableCopy);
  v23 = concatenate_to_blocksize(BytePtr, Length, v16, &v68);
  CFRelease(MutableCopy);
  if (!v23)
  {
    return 0xFFFFFFFFLL;
  }

  v67 = 0;
  if (!a3)
  {
    goto LABEL_41;
  }

  v24 = concatenate_to_blocksize(a2, a3, v16, &v67);
  if (!v24)
  {
    goto LABEL_41;
  }

  v25 = v24;
  v64 = a4;
  v26 = v67;
  v27 = v68;
  v66 = v68 + v67;
  v28 = malloc_type_malloc(v68 + v67, 0xFDE39E47uLL);
  if (!v28)
  {
    free(v25);
LABEL_41:
    v53 = v23;
LABEL_42:
    free(v53);
    return 0xFFFFFFFFLL;
  }

  v29 = v28;
  v63 = a9;
  memcpy(v28, v25, v26);
  v30 = &v29[v26];
  v31 = v63;
  memcpy(v30, v23, v27);
  free(v25);
  free(v23);
  v32 = (a7 + v31 - 1) / v31 * v31;
  v58 = malloc_type_malloc(v32, 0xB7A8DC55uLL);
  if (!v58)
  {
    v53 = v29;
    goto LABEL_42;
  }

  v55 = a6;
  v56 = a7;
  v57 = &v55;
  v33 = v64;
  if (v32 < 1)
  {
LABEL_38:
    v51 = v58;
    memmove(v55, v58, v56);
    free(v51);
    free(v29);
    return 0;
  }

  else
  {
    v34 = v58;
    v61 = &v58[v32];
    v62 = (v16 + 7) >> 3;
    v59 = v64 - 1;
    HIDWORD(v36) = v31 - 20;
    LODWORD(v36) = v31 - 20;
    v35 = v36 >> 2;
    v60 = v35;
    while (1)
    {
      if (v35 <= 2)
      {
        if (v35)
        {
          if (v35 == 2)
          {
            c.wbuf[2] = 0xAAAAAAAAAAAAAAAALL;
            *&v38 = 0xAAAAAAAAAAAAAAAALL;
            *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *&c.hash[6] = v38;
            *c.wbuf = v38;
            *&c.hash[4] = v38;
            *&c.hash[2] = v38;
            *c.hash = v38;
            *c.count = v38;
            CC_SHA224_Init(&c);
            CC_SHA224_Update(&c, v65, a8);
            CC_SHA224_Update(&c, v29, v66);
            CC_SHA224_Final(v34, &c);
          }
        }

        else
        {
          *&v41 = 0xAAAAAAAAAAAAAAAALL;
          *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&c.hash[6] = v41;
          *c.wbuf = v41;
          *&c.hash[4] = v41;
          *&c.hash[2] = v41;
          *c.hash = v41;
          *c.count = v41;
          CC_SHA1_Init(&c);
          CC_SHA1_Update(&c, v65, a8);
          CC_SHA1_Update(&c, v29, v66);
          CC_SHA1_Final(v34, &c);
        }
      }

      else
      {
        switch(v35)
        {
          case 3:
            c.wbuf[2] = 0xAAAAAAAAAAAAAAAALL;
            *&v39 = 0xAAAAAAAAAAAAAAAALL;
            *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *&c.hash[6] = v39;
            *c.wbuf = v39;
            *&c.hash[4] = v39;
            *&c.hash[2] = v39;
            *c.hash = v39;
            *c.count = v39;
            CC_SHA256_Init(&c);
            CC_SHA256_Update(&c, v65, a8);
            CC_SHA256_Update(&c, v29, v66);
            CC_SHA256_Final(v34, &c);
            break;
          case 7:
            *&v40 = 0xAAAAAAAAAAAAAAAALL;
            *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *&c.wbuf[12] = v40;
            *&c.wbuf[14] = v40;
            *&c.wbuf[8] = v40;
            *&c.wbuf[10] = v40;
            *&c.wbuf[4] = v40;
            *&c.wbuf[6] = v40;
            *c.wbuf = v40;
            *&c.wbuf[2] = v40;
            *&c.hash[6] = v40;
            *&c.hash[4] = v40;
            *&c.hash[2] = v40;
            *c.hash = v40;
            *c.count = v40;
            CC_SHA384_Init(&c);
            CC_SHA384_Update(&c, v65, a8);
            CC_SHA384_Update(&c, v29, v66);
            CC_SHA384_Final(v34, &c);
            break;
          case 11:
            *&v37 = 0xAAAAAAAAAAAAAAAALL;
            *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *&c.wbuf[12] = v37;
            *&c.wbuf[14] = v37;
            *&c.wbuf[8] = v37;
            *&c.wbuf[10] = v37;
            *&c.wbuf[4] = v37;
            *&c.wbuf[6] = v37;
            *c.wbuf = v37;
            *&c.wbuf[2] = v37;
            *&c.hash[6] = v37;
            *&c.hash[4] = v37;
            *&c.hash[2] = v37;
            *c.hash = v37;
            *c.count = v37;
            CC_SHA512_Init(&c);
            CC_SHA512_Update(&c, v65, a8);
            CC_SHA512_Update(&c, v29, v66);
            CC_SHA512_Final(v34, &c);
            break;
        }
      }

      if (v33 >= 2)
      {
        v42 = v59;
        do
        {
          CCDigest();
          --v42;
        }

        while (v42);
      }

      c.count[0] = 0;
      v43 = concatenate_to_blocksize(v34, v31, v16, &c);
      if (!v43)
      {
        goto LABEL_46;
      }

      v44 = v43;
      if ((c.count[0] + 8) >> 3 <= v62)
      {
        v45 = v62;
      }

      else
      {
        v45 = (c.count[0] + 8) >> 3;
      }

      v46 = malloc_type_malloc(8 * v45, 0x100004000313F17uLL);
      if (!v46)
      {
        free(v44);
LABEL_46:
        free(v29);
        v54 = v58;
        goto LABEL_48;
      }

      v47 = v46;
      ccn_read_uint();
      ccn_add1();
      free(v44);
      v48 = malloc_type_malloc(8 * v45, 0x100004000313F17uLL);
      if (!v48)
      {
        break;
      }

      v49 = v48;
      if (v66)
      {
        LODWORD(v50) = 0;
        do
        {
          ccn_read_uint();
          ccn_add();
          while (ccn_bitlen() > (8 * a8))
          {
            ccn_set_bit();
          }

          ccn_write_uint_padded();
          v50 = v50 + a8;
        }

        while (v66 > v50);
      }

      v31 = v63;
      v34 += v63;
      free(v47);
      free(v49);
      v33 = v64;
      v35 = v60;
      if (v34 >= v61)
      {
        goto LABEL_38;
      }
    }

    free(v29);
    free(v58);
    v54 = v47;
LABEL_48:
    free(v54);
    return 0xFFFFFFFFLL;
  }
}

char *concatenate_to_blocksize(const void *a1, size_t a2, unint64_t a3, int64_t *a4)
{
  v7 = (a2 + a3 - 1) / a3 * a3;
  v8 = malloc_type_malloc(v7, 0xF4419374uLL);
  v9 = v8;
  if (v8)
  {
    if (v7 >= 1)
    {
      v10 = &v8[v7];
      v11 = v8;
      do
      {
        if (v10 - v11 >= a2)
        {
          v12 = a2;
        }

        else
        {
          v12 = v10 - v11;
        }

        memcpy(v11, a1, v12);
        v11 += a2;
      }

      while (v11 < v10);
    }

    *a4 = v7;
  }

  return v9;
}

uint64_t (*pbkdf2(uint64_t (*result)(uint64_t, uint64_t, char *, size_t, char *), size_t a2, uint64_t a3, uint64_t a4, void *__src, size_t __n, unint64_t a7, char *a8, unint64_t a9, char *a10))(uint64_t, uint64_t, char *, size_t, char *)
{
  v16 = a9 / a2;
  v20 = a9 / a2 * a2;
  if ((a9 / a2))
  {
    v21 = &a10[a2];
    v17 = 1;
    do
    {
      v18 = result;
      v19 = a7;
      F(result, a2, a3, a4, __src, __n, a7, v17, a8, v21);
      result = v18;
      a7 = v19;
      a8 += a2;
      ++v17;
    }

    while (v17 <= v16);
  }

  else
  {
    v17 = 1;
  }

  if (a9 != v20)
  {
    F(result, a2, a3, a4, __src, __n, a7, v17, a10, &a10[a2]);

    return memcpy(a8, a10, a9 - v20);
  }

  return result;
}

void *F(uint64_t (*a1)(uint64_t, uint64_t, char *, size_t, char *), size_t a2, uint64_t a3, uint64_t a4, void *__src, size_t __n, unint64_t a7, unsigned int a8, void *a9, char *a10)
{
  v17 = a10;
  v18 = &a10[a2];
  memcpy(&a10[a2], __src, __n);
  *&v18[__n] = bswap32(a8);
  a1(a3, a4, v18, __n + 4, a10);
  result = memcpy(a9, a10, a2);
  if (a7 >= 2)
  {
    v20 = 2;
    do
    {
      v21 = v18;
      result = a1(a3, a4, v17, a2, v18);
      if (a2)
      {
        v22 = 0;
        do
        {
          *(a9 + v22) ^= v18[v22];
          ++v22;
        }

        while (a2 > v22);
      }

      ++v20;
      v18 = v17;
      v17 = v21;
    }

    while (v20 <= a7);
  }

  return result;
}

__CFString *SecLogAPICreate(uint64_t a1, const char *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v20 = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppend(Mutable, @"SecAPITrace ");
  CFStringAppendCString(Mutable, a2, 0x600u);
  CFStringAppendCString(Mutable, "ENTER", 0x600u);
  if (a3)
  {
    v12 = CFStringCreateWithFormatAndArguments(v10, 0, a3, va);
    CFStringAppend(Mutable, v12);
    if (v12)
    {
      CFRelease(v12);
    }
  }

  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18 = v13;
  v19 = v13;
  v16 = v13;
  v17 = v13;
  *__str = v13;
  snprintf(__str, 0x50uLL, "C%p F%p", vars0[1], *vars0);
  CFStringAppend(Mutable, @"CALLER ");
  CFStringAppendCString(Mutable, __str, 0x600u);
  return Mutable;
}

void CFStringSetPerformWithDescription(const __CFSet *a1, uint64_t a2)
{
  if (a1 && (Count = CFSetGetCount(a1), Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]), CFSetApplyFunction(a1, appendDescriptionToArray, Mutable), v15.length = CFArrayGetCount(Mutable), v15.location = 0, CFArraySortValues(Mutable, v15, compare, 0), Mutable))
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"{(");
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2000000000;
    v9[3] = &stru_1EFA8C6C8;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __CFStringArrayPerformWithDelimiterWithDescription_block_invoke;
    v8[3] = &unk_1E70E44F0;
    v8[4] = &v10;
    v8[5] = v9;
    v16.length = CFArrayGetCount(Mutable);
    v16.location = 0;
    CFArrayApplyFunction(Mutable, v16, apply_block_1_16171, v8);
    CFStringAppend(v11[3], @"}"));
    (*(a2 + 16))(a2, v11[3]);
    v6 = v11[3];
    if (v6)
    {
      v11[3] = 0;
      CFRelease(v6);
    }

    _Block_object_dispose(v9, 8);
    _Block_object_dispose(&v10, 8);

    CFRelease(Mutable);
  }

  else
  {
    v7 = *(a2 + 16);

    v7(a2, @"null");
  }
}

void appendDescriptionToArray(__CFString *a1, __CFArray *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {
    v5 = a2;
    v6 = a1;
LABEL_8:

    CFArrayAppendValue(v5, v6);
    return;
  }

  v7 = CFCopyDescription(a1);
  if (!v7)
  {
    v6 = @"null";
    v5 = a2;
    goto LABEL_8;
  }

  v8 = v7;
  CFArrayAppendValue(a2, v7);

  CFRelease(v8);
}

void __CFDictionaryCopySuperCompactDescription_block_invoke(uint64_t a1, const __CFString *a2, const __CFString *cf)
{
  if (!cf)
  {
    goto LABEL_12;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFDataGetTypeID())
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"0x");
    BytePtr = CFDataGetBytePtr(cf);
    Length = CFDataGetLength(cf);
    if (Length >= 1)
    {
      v10 = Length;
      do
      {
        v11 = *BytePtr++;
        CFStringAppendFormat(MutableCopy, 0, @"%02X", v11);
        --v10;
      }

      while (v10);
    }

    v21.location = 0;
    v21.length = 5;
    CFStringDelete(MutableCopy, v21);
    goto LABEL_16;
  }

  v12 = CFGetTypeID(cf);
  if (v12 != CFStringGetTypeID())
  {
    v16 = CFGetTypeID(cf);
    if (v16 == CFNumberGetTypeID())
    {
      v14 = *MEMORY[0x1E695E480];
      Copy = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@", cf);
      goto LABEL_14;
    }

LABEL_12:
    MutableCopy = 0;
    goto LABEL_16;
  }

  v13 = CFStringGetLength(cf);
  v14 = *MEMORY[0x1E695E480];
  if (v13 > 5)
  {
    v22.location = 0;
    v22.length = 6;
    Copy = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], cf, v22);
  }

  else
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], cf);
  }

LABEL_14:
  v17 = Copy;
  v18 = CFStringGetLength(Copy);
  MutableCopy = CFStringCreateMutableCopy(v14, v18, v17);
  if (v17)
  {
    CFRelease(v17);
  }

LABEL_16:
  CharacterAtIndex = CFStringGetCharacterAtIndex(a2, 0);
  CFStringAppendFormat(*(a1 + 32), 0, @"%c:%@ ", CharacterAtIndex, MutableCopy);
  if (MutableCopy)
  {

    CFRelease(MutableCopy);
  }
}

uint64_t CFDataCreateWithRandomBytes(size_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __CFDataCreateWithRandomBytes_block_invoke;
  v3[3] = &unk_1E70E4460;
  v3[4] = &v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __PerformWithBufferAndClear_block_invoke;
  v8[3] = &unk_1E70E46A8;
  v8[4] = v3;
  PerformWithBuffer(a1, v8);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

CFDataRef __CFDataCreateWithRandomBytes_block_invoke(uint64_t a1, size_t a2, void *bytes)
{
  CCRandomGenerateBytes(bytes, a2);
  result = CFDataCreate(0, bytes, a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __GetShortDateFormatter_block_invoke(uint64_t a1)
{
  v2 = CFLocaleCopyCurrent();
  **(a1 + 32) = CFDateFormatterCreate(*MEMORY[0x1E695E480], v2, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetFormat(**(a1 + 32), @"yyyy-MM-dd HH:mm");
  if (v2)
  {

    CFRelease(v2);
  }
}

dispatch_queue_t __GetShortDateFormatterQueue_block_invoke(uint64_t a1)
{
  result = dispatch_queue_create("Date Formatting", 0);
  **(a1 + 32) = result;
  return result;
}

CFStringRef __withStringOfAbsoluteTime_block_invoke(uint64_t a1, __CFDateFormatter *a2)
{
  result = CFDateFormatterCreateStringWithAbsoluteTime(*MEMORY[0x1E695E480], a2, *(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __withShortDateFormatter_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __GetShortDateFormatter_block_invoke;
  block[3] = &__block_descriptor_tmp_53_16244;
  block[4] = &GetShortDateFormatter_sGetShortDateFormatterSingleton;
  if (GetShortDateFormatter_sGetShortDateFormatterOnce != -1)
  {
    dispatch_once(&GetShortDateFormatter_sGetShortDateFormatterOnce, block);
  }

  v2 = GetShortDateFormatter_sGetShortDateFormatterSingleton;
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void der_encode_date(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = MEMORY[0x18CFD8B20](a1);
  der_encode_generalizedtime_body_repair(0, 0, a2, a3, v5);
  if (!ccder_encode_constructed_tl())
  {
    v9 = sSecDERErrorDomain;

    SecCFCreateErrorWithFormat(-7, v9, 0, 0, v6, @"ccder failed to encode", v7, v8);
  }
}

void __getAnchors_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  addAnchor(Mutable, AppleRootCAHash, 1);
  addAnchor(Mutable, AppleRootG2Hash, 1);
  addAnchor(Mutable, AppleRootG3Hash, 1);
  addAnchor(Mutable, ApplePlatformBackportRSARootG1Hash, 1);
  addAnchor(Mutable, ApplePlatformBackportECCRootG1Hash, 1);
  addAnchor(Mutable, ApplePlatformBootstrapECCRootG1_hash, 1);
  addAnchor(Mutable, TestAppleRootCAHash, 0);
  addAnchor(Mutable, TestAppleRootCAJunHash, 0);
  addAnchor(Mutable, TestAppleGlobalRootHash, 0);
  addAnchor(Mutable, TestAppleRootG2Hash, 0);
  addAnchor(Mutable, TestAppleRootG3Hash, 0);
  addAnchor(Mutable, TestApplePlatformBackportRSARootG1Hash, 0);
  addAnchor(Mutable, TestApplePlatformBackportECCRootG1Hash, 0);
  addAnchor(Mutable, TestApplePlatformBootstrapECCRootG1_hash, 0);
  getAnchors_anchors = Mutable;
}

void addAnchor(const __CFDictionary *a1, const UInt8 *a2, int a3)
{
  v5 = CFDataCreateWithBytesNoCopy(0, a2, 32, *MEMORY[0x1E695E498]);
  if (CFDictionaryGetValue(a1, v5))
  {
    abort();
  }

  v6 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(a1, v5, *v6);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t SecIsAppleTrustAnchor(void *a1, char a2)
{
  v3 = SecCertificateCopySHA256Digest(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (getAnchors_onceToken != -1)
  {
    dispatch_once(&getAnchors_onceToken, &__block_literal_global_4_16589);
  }

  if (!getAnchors_anchors)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(getAnchors_anchors, v4);
  v6 = Value;
  if (Value)
  {
    v7 = CFGetTypeID(Value);
    if (v7 == CFBooleanGetTypeID())
    {
      v8 = CFBooleanGetValue(v6);
      v6 = v8 != 0;
      if (a2)
      {
        v9 = v8;
        v10 = os_variant_allows_internal_security_policies() | ((a2 & 2) >> 1);
        if (v9)
        {
          v6 = 1;
        }

        else
        {
          v6 = v10;
        }
      }

      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_11:
  CFRelease(v4);
  return v6;
}

void __SecGetAppleTrustAnchors_block_invoke(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 6, MEMORY[0x1E695E9C0]);
  addCertificate(Mutable, &AppleRootCA, 1215);
  addCertificate(Mutable, &AppleRootG2, 1430);
  addCertificate(Mutable, &AppleRootG3, 583);
  addCertificate(Mutable, &ApplePlatformBackportRSARootG1, 1402);
  addCertificate(Mutable, &ApplePlatformBackportECCRootG1, 556);
  addCertificate(Mutable, &ApplePlatformBootstrapECCRootG1_cert, 632);
  if ((os_variant_allows_internal_security_policies() & 1) != 0 || *(a1 + 32) == 1)
  {
    addCertificate(Mutable, &TestAppleRootCA, 1232);
    addCertificate(Mutable, &TestAppleRootCAJun, 1232);
    addCertificate(Mutable, &TestAppleGlobalRoot, 630);
    addCertificate(Mutable, &TestAppleRootG2, 1452);
    addCertificate(Mutable, &TestAppleRootG3, 592);
    addCertificate(Mutable, &TestApplePlatformBackportRSARootG1, 1412);
    addCertificate(Mutable, &TestApplePlatformBackportECCRootG1, 565);
    addCertificate(Mutable, &TestApplePlatformBootstrapECCRootG1_cert, 643);
  }

  SecGetAppleTrustAnchors_anchors = Mutable;
}

void addCertificate(const __CFArray *a1, const void *a2, int64_t a3)
{
  v4 = SecCertificateCreateWithBytes(0, a2, a3);
  v6.length = CFArrayGetCount(a1);
  v6.location = 0;
  if (CFArrayContainsValue(a1, v6, v4))
  {
    abort();
  }

  CFArrayAppendValue(a1, v4);
  if (v4)
  {

    CFRelease(v4);
  }
}

BOOL SecKernError(int a1, CFErrorRef *a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1 && a2)
  {
    v5 = *a2;
    *a2 = 0;
    SecCFCreateErrorWithFormatAndArguments(a1, *MEMORY[0x1E695E630], v5, a2, 0, format, va);
  }

  return a1 == 0;
}

void SecCFCreateErrorWithFormatAndArguments(CFIndex a1, const __CFString *a2, __CFString *cf, CFErrorRef *a4, CFDictionaryRef formatOptions, CFStringRef format, va_list arguments)
{
  if (!a4)
  {
    return;
  }

  if (*a4)
  {
    if (cf && *a4 != cf)
    {

      CFRelease(cf);
    }

    return;
  }

  v11 = CFStringCreateWithFormatAndArguments(0, formatOptions, format, arguments);
  v30 = 0;
  v12 = MEMORY[0x1E695E620];
  if (!cf)
  {
    goto LABEL_30;
  }

  v13 = CFErrorCopyUserInfo(cf);
  Value = CFDictionaryGetValue(v13, *v12);
  if (Value)
  {
    v15 = CFStringCompare(v11, Value, 0) == kCFCompareEqualTo;
    if (!v13)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15 = 0;
  if (v13)
  {
LABEL_11:
    CFRelease(v13);
  }

LABEL_12:
  Code = CFErrorGetCode(cf);
  Domain = CFErrorGetDomain(cf);
  v18 = CFStringCompare(a2, Domain, 0);
  v20 = Code == a1 && v18 == kCFCompareEqualTo;
  v21 = cf;
  if (v20 && v15)
  {
    goto LABEL_19;
  }

  v23 = CFErrorCopyUserInfo(cf);
  if (v23)
  {
    v24 = v23;
    if (CFDictionaryContainsKey(v23, @"numberOfErrorsDeep") == 1)
    {
      v25 = CFDictionaryGetValue(v24, @"numberOfErrorsDeep");
      if (v25)
      {
        valuePtr = 0;
        CFNumberGetValue(v25, kCFNumberLongType, &valuePtr);
        if (valuePtr > 199)
        {
          CFRelease(v24);
          v21 = cf;
LABEL_19:
          CFRetain(v21);
          *a4 = cf;
          CFRelease(cf);
          if (!v11)
          {
            return;
          }

          v22 = v11;
          goto LABEL_44;
        }

        v30 = valuePtr + 1;
      }
    }

    CFRelease(v24);
  }

LABEL_30:
  v26 = *MEMORY[0x1E695E480];
  v27 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &v30);
  Mutable = CFDictionaryCreateMutable(v26, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v29 = Mutable;
  if (cf)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E695E670], cf);
  }

  if (v27)
  {
    CFDictionaryAddValue(v29, @"numberOfErrorsDeep", v27);
  }

  if (v11)
  {
    CFDictionaryAddValue(v29, *v12, v11);
  }

  *a4 = CFErrorCreate(v26, a2, a1, v29);
  if (v27)
  {
    CFRelease(v27);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (cf)
  {
    v22 = cf;
LABEL_44:
    CFRelease(v22);
  }
}

void SecCheckErrno(uint64_t a1, CFErrorRef *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a2)
  {
    v10 = *__error();
    v11 = *a2;
    *a2 = 0;
    v12 = CFStringCreateWithFormatAndArguments(*MEMORY[0x1E695E480], 0, a3, va);
    v13 = *MEMORY[0x1E695E640];
    v14 = strerror(v10);
    SecCFCreateErrorWithFormat(v10, v13, v11, a2, v15, @"%@: [%d] %s", v16, v17, v12, v10, v14, va);
    if (v12)
    {
      CFRelease(v12);
    }
  }
}

BOOL SecError(int a1, __CFString **a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1)
  {
    cf = 0;
    v5 = *MEMORY[0x1E695E638];
    if (a2)
    {
      SecCFCreateErrorWithFormatAndArguments(a1, v5, *a2, &cf, 0, format, va);
      *a2 = cf;
    }

    else
    {
      SecCFCreateErrorWithFormatAndArguments(a1, v5, 0, &cf, 0, format, va);
      v6 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v6);
      }
    }
  }

  return a1 == 0;
}

uint64_t SecRequirementError(uint64_t a1, CFErrorRef *a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (a2 && (a1 & 1) == 0)
  {
    v5 = *a2;
    *a2 = 0;
    SecCFCreateErrorWithFormatAndArguments(-50, *MEMORY[0x1E695E638], v5, a2, 0, format, va);
  }

  return a1;
}

BOOL SecAllocationError(uint64_t a1, CFErrorRef *a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (!a1 && a2)
  {
    v5 = *a2;
    *a2 = 0;
    SecCFCreateErrorWithFormatAndArguments(-108, *MEMORY[0x1E695E638], v5, a2, 0, format, va);
  }

  return a1 != 0;
}

CFTypeRef CFPropertyListCreateWithDERData(const __CFAllocator *a1, CFDataRef theData, uint64_t a3, void *a4, CFErrorRef *a5)
{
  cf = 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v11 = &BytePtr[Length];
  v15 = der_decode_plist(a1, &cf, a5, BytePtr, &BytePtr[Length], v12, v13, v14);
  if (!v15 || v15 == v11)
  {
    if (a4)
    {
      *a4 = 400;
    }
  }

  else
  {
    SecCFCreateErrorWithFormat(-1, sSecDERErrorDomain, 0, a5, v16, @"trailing garbage after plist item", v17, v18);
    v19 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v19);
    }
  }

  return cf;
}

uint64_t der_encode_null(CFErrorRef *a1, uint64_t a2, uint64_t a3)
{
  v7 = ccder_encode_tl();
  if (!v7)
  {
    SecCFCreateErrorWithFormat(-7, sSecDERErrorDomain, 0, a1, v4, @"ccder failed to encode", v5, v6);
  }

  return v7;
}

uint64_t der_sizeof_set(const __CFSet *a1, uint64_t a2)
{
  v3 = xmmword_18895E1B0;
  v4 = a2;
  CFSetApplyFunction(a1, add_value_size, &v3);
  if (v3 == 1)
  {
    return ccder_sizeof();
  }

  else
  {
    return 0;
  }
}

uint64_t add_value_size(uint64_t result, uint64_t a2)
{
  if (*a2 == 1)
  {
    result = der_sizeof_plist(result, *(a2 + 16));
    if (result)
    {
      *(a2 + 8) += result;
    }

    else
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t der_encode_set_repair(const __CFSet *a1, CFErrorRef *a2, char a3, uint64_t a4, uint64_t a5)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v16[0] = 0xAAAAAAAAAAAAAA01;
  v16[1] = a2;
  BYTE1(v16[0]) = a3;
  v16[2] = Mutable;
  v16[3] = 0;
  CFSetApplyFunction(a1, add_sequence_to_array_16816, v16);
  if ((v16[0] & 1) == 0)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  v17.length = CFArrayGetCount(Mutable);
  v17.location = 0;
  CFArraySortValues(Mutable, v17, cfdata_compare_der_contents_16815, 0);
  Count = CFArrayGetCount(Mutable);
  if (Count >= 1)
  {
    v10 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v10 - 2);
      CFDataGetLength(ValueAtIndex);
      CFDataGetBytePtr(ValueAtIndex);
      ccder_encode_body();
      --v10;
    }

    while (v10 > 1);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  result = ccder_encode_constructed_tl();
  if (!result)
  {
    SecCFCreateErrorWithFormat(-7, sSecDERErrorDomain, 0, a2, v13, @"ccder failed to encode", v14, v15);
    return 0;
  }

  return result;
}

uint64_t cfdata_compare_der_contents_16815(const __CFData *a1, const __CFData *a2)
{
  Length = CFDataGetLength(a1);
  v5 = CFDataGetLength(a2);
  v6 = v5;
  if ((Length & 0x8000000000000000) != 0 || v5 < 0)
  {
    if (Length >= v5)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }

    if (Length <= v5)
    {
      return v12;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (Length >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = Length;
    }

    BytePtr = CFDataGetBytePtr(a1);
    v9 = CFDataGetBytePtr(a2);
    v10 = memcmp(BytePtr, v9, v7);
    if (v10 <= 0 && (v10 || Length <= v6))
    {
      if (v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = Length >= v6;
      }

      v14 = !v13;
      return v14 << 63 >> 63;
    }

    else
    {
      return 1;
    }
  }
}

void add_sequence_to_array_16816(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 == 1)
  {
    v10 = der_sizeof_plist(a1, *(a2 + 8), a3, a4, a5, a6, a7, a8);
    if (!v10)
    {
      *a2 = 0;
      return;
    }

    v11 = v10;
    Mutable = CFDataCreateMutable(*(a2 + 24), v10);
    CFDataSetLength(Mutable, v11);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v14 = der_encode_plist_repair(a1, *(a2 + 8), *(a2 + 1), MutableBytePtr, &MutableBytePtr[v11]);
    if (v14)
    {
      v16.length = v14 - MutableBytePtr;
      v16.location = 0;
      CFDataDeleteBytes(Mutable, v16);
      CFArrayAppendValue(*(a2 + 16), Mutable);
      if (!Mutable)
      {
        return;
      }
    }

    else
    {
      *a2 = 0;
      if (!Mutable)
      {
        return;
      }
    }

    CFRelease(Mutable);
  }
}

uint64_t GetKeybagAssertionQueue()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __GetKeybagAssertionQueue_block_invoke;
  block[3] = &__block_descriptor_tmp_16820;
  block[4] = &GetKeybagAssertionQueue_sGetKeybagAssertionQueueSingleton;
  if (GetKeybagAssertionQueue_sGetKeybagAssertionQueueOnce != -1)
  {
    dispatch_once(&GetKeybagAssertionQueue_sGetKeybagAssertionQueueOnce, block);
  }

  return GetKeybagAssertionQueue_sGetKeybagAssertionQueueSingleton;
}

dispatch_queue_t __GetKeybagAssertionQueue_block_invoke(uint64_t a1)
{
  result = dispatch_queue_create("AKS Lock Assertion Queue", 0);
  **(a1 + 32) = result;
  return result;
}

uint64_t __SecAKSKeybagHoldLockAssertion_block_invoke(uint64_t result)
{
  v1 = result;
  v6 = *MEMORY[0x1E69E9840];
  if (!count)
  {
    v2 = secLogObjForScope("lockassertions");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 40);
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "Requesting lock assertion for %lld seconds", &v4, 0xCu);
    }

    result = aks_assert_hold();
    *(*(*(v1 + 32) + 8) + 24) = result;
  }

  if (!*(*(*(v1 + 32) + 8) + 24))
  {
    ++count;
  }

  return result;
}

uint64_t __SecAKSKeybagDropLockAssertion_block_invoke(uint64_t result)
{
  v3 = count;
  if (count)
  {
    --count;
    if (v3 == 1)
    {
      v7 = v1;
      v8 = v2;
      v4 = result;
      v5 = secLogObjForScope("lockassertions");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "Dropping lock assertion", v6, 2u);
      }

      result = aks_assert_drop();
      *(*(*(v4 + 32) + 8) + 24) = result;
    }
  }

  return result;
}

void __SecIsEduMode_block_invoke()
{
  v0 = MKBUserTypeDeviceMode();
  if (v0)
  {
    v1 = v0;
    value = 0;
    if (CFDictionaryGetValueIfPresent(v0, *MEMORY[0x1E69B1A10], &value))
    {
      if (CFEqual(value, *MEMORY[0x1E69B1A20]))
      {
        SecIsEduMode_result = 1;
      }
    }

    CFRelease(v1);
  }

  else
  {
    v2 = secLogObjForScope("edumode");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "Cannot determine because deviceMode is NULL", v3, 2u);
    }
  }
}

CFURLRef SecCopyURLForFileInBaseDirectory(const __CFString *a1, uint64_t a2)
{
  v4 = SecCopyBaseFilesURL(1);
  if (a2)
  {
    v5 = *MEMORY[0x1E695E480];
    Copy = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@/%@", a1, a2);
  }

  else
  {
    if (!a1)
    {
      goto LABEL_10;
    }

    v5 = *MEMORY[0x1E695E480];
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], a1);
  }

  v7 = Copy;
  if (v4 && Copy)
  {
    v8 = CFURLCreateCopyAppendingPathComponent(v5, v4, Copy, a2 == 0);
    CFRelease(v7);
LABEL_11:
    CFRelease(v4);
    return v8;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

LABEL_10:
  v8 = 0;
  if (v4)
  {
    goto LABEL_11;
  }

  return v8;
}

void WithPathInDirectory(const __CFURL *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    memset(__b, 170, sizeof(__b));
    CFURLGetFileSystemRepresentation(a1, 0, __b, 1024);
    (*(a2 + 16))(a2, __b);
    CFRelease(a1);
  }
}

void WithPathInKeychainDirectory(uint64_t a1, uint64_t a2)
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v4 = SecCopyURLForFileInBaseDirectory(@"Library/Keychains", a1);

  WithPathInDirectory(v4, a2);
}

uint64_t __security_simulatecrash(uint64_t a1, unsigned int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = a1;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "Simulating crash, reason: %@, code=%08x", &v6, 0x12u);
  }

  getpid();
  return SimulateCrash();
}

xpc_object_t SecCreateXPCObjectWithCFError(__CFError *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  Domain = CFErrorGetDomain(a1);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 0x40000000;
  v21[2] = __SecXPCDictionarySetCFString_block_invoke;
  v21[3] = &__block_descriptor_tmp_16943;
  v21[4] = v2;
  v21[5] = "domain";
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = __CFStringPerformWithCString_block_invoke;
  v22[3] = &unk_1E70E4418;
  v22[4] = v21;
  CFStringPerformWithCStringAndLength(Domain, v22);
  Code = CFErrorGetCode(a1);
  xpc_dictionary_set_int64(v2, "code", Code);
  v5 = CFErrorCopyUserInfo(a1);
  v12 = der_sizeof_plist(v5, 0, v6, v7, v8, v9, v10, v11);
  if (v12)
  {
    v13 = v12;
    v14 = malloc_type_malloc(v12, 0xD5244697uLL);
    v15 = &v14[v13];
    v19 = der_encode_plist_repair(v5, 0, 0, v14, v15, v16, v17, v18);
    if (v19)
    {
      xpc_dictionary_set_data(v2, "userinfo", v19, v15 - v19);
    }

    free(v14);
  }

  CFRelease(v5);
  return v2;
}

uint64_t SecGetCurrentServerLoggingInfo(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __SecGetCurrentServerLoggingInfo_block_invoke;
  v3[3] = &unk_1E70E46F0;
  v3[4] = &v4;
  v3[5] = a1;
  _os_activity_initiate(&dword_1887D2000, "SecGetCurrentServerLoggingInfo", OS_ACTIVITY_FLAG_DEFAULT, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void __SecGetCurrentServerLoggingInfo_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v2 = *(gSecurityd + 520)) != 0)
  {
    v3 = v2(*(a1 + 40));
  }

  else
  {
    v4 = *(a1 + 40);
    v6 = 0;
    v7 = &v6;
    v8 = 0x2000000000;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __void_to_dict_error_request_block_invoke;
    v5[3] = &unk_1E70E4768;
    v5[4] = &v6;
    securityd_send_sync_and_do(0x1Fu, v4, 0, v5);
    v3 = v7[3];
    _Block_object_dispose(&v6, 8);
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

BOOL __void_to_dict_error_request_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  v4 = SecXPCDictionaryCopyPListAndPossiblyMutateMessage(1, a2, "status", a3);
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return v4 != 0;
}

uint64_t SecSetLoggingInfoForXPCScope(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = -86;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 0x40000000;
  activity_block[2] = __SecSetLoggingInfoForXPCScope_block_invoke;
  activity_block[3] = &unk_1E70E4718;
  activity_block[4] = &v5;
  activity_block[5] = a1;
  activity_block[6] = a2;
  _os_activity_initiate(&dword_1887D2000, "SecSetLoggingInfoForXPCScope", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __SecSetLoggingInfoForXPCScope_block_invoke(void *a1)
{
  if (gSecurityd && (v2 = *(gSecurityd + 528)) != 0)
  {
    result = v2(a1[5], a1[6]);
  }

  else
  {
    v5 = a1[5];
    v4 = a1[6];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __dict_to_error_request_block_invoke_16954;
    v6[3] = &__block_descriptor_tmp_5_16955;
    v6[4] = v5;
    result = securityd_send_sync_and_do(0x20u, v4, v6, 0);
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t SecSetLoggingInfoForCircleScope(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = -86;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 0x40000000;
  activity_block[2] = __SecSetLoggingInfoForCircleScope_block_invoke;
  activity_block[3] = &unk_1E70E4740;
  activity_block[4] = &v5;
  activity_block[5] = a1;
  activity_block[6] = a2;
  _os_activity_initiate(&dword_1887D2000, "SecSetLoggingInfoForCircleScope", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __SecSetLoggingInfoForCircleScope_block_invoke(void *a1)
{
  if (gSecurityd && (v2 = *(gSecurityd + 536)) != 0)
  {
    result = v2(a1[5], a1[6]);
  }

  else
  {
    v5 = a1[5];
    v4 = a1[6];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __dict_to_error_request_block_invoke_16954;
    v6[3] = &__block_descriptor_tmp_5_16955;
    v6[4] = v5;
    result = securityd_send_sync_and_do(0x21u, v4, v6, 0);
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

char *Security::CFMake::makestring(Security::CFMake *this)
{
  v2 = *this;
  if (**this == 39)
  {
    *this = ++v2;
    result = strchr(v2, 39);
    if (!result)
    {
      return result;
    }

    v4 = result + 1;
  }

  else
  {
    v5 = MEMORY[0x1E69E9830];
    v4 = *this;
    do
    {
      while (1)
      {
        v7 = *++v4;
        v6 = v7;
        if ((v7 & 0x80000000) != 0)
        {
          break;
        }

        if ((*(v5 + 4 * v6 + 60) & 0x500) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    while (__maskrune(v6, 0x500uLL));
LABEL_9:
    result = v4;
  }

  *this = v4;
  v8 = (result - v2);
  v9 = *(this + 2);

  return CFStringCreateWithBytes(v9, v2, v8, 0x8000100u, 0);
}

uint64_t Security::CFScan::scan(Security::CFScan *this, const __CFString *a2)
{
  while (Security::CFMunge::next(this) == 64)
  {
    v4 = (*this)++;
    v5 = *(v4 + 1);
    if (v5 == 69)
    {
      *this = v4 + 2;
      v8 = *(this + 1);
      v9 = *v8;
      *v8 += 2;
      *(this + 6) = *v9;
    }

    else if (v5 == 65)
    {
      *this = v4 + 2;
      v6 = *(this + 1);
      v7 = (*v6)++;
      *(this + 2) = *v7;
    }
  }

  v10 = Security::CFMunge::next(this);
  if (v10 <= 0x5A)
  {
    if (!v10)
    {
      return 1;
    }

    if (v10 != 37)
    {
      if (v10 != 61)
      {
        return 0;
      }

      ++*this;
      v11 = Security::CFMake::make(this);
      v12 = CFEqual(a2, v11) != 0;
      CFRelease(v11);
      return v12;
    }

    v12 = 0;
    v19 = (*this)++;
    v20 = *(v19 + 1);
    if (v20 <= 0x52)
    {
      if (*(v19 + 1) <= 0x43u)
      {
        if (v20 != 65)
        {
          if (v20 != 66)
          {
            return v12;
          }

          TypeID = CFBooleanGetTypeID();
          v27 = Security::CFScan::typescan(this, a2, TypeID);
          v12 = v27 == 1;
          if (v27)
          {
            return v12;
          }

          if (**this == 102)
          {
            v28 = *(this + 1);
            v29 = *v28;
            *v28 += 2;
            v30 = *v29;
            v31 = *(this + 1);
            v32 = (*v31)++;
            if (*MEMORY[0x1E695E4D0] != a2 || (*(this + 28) & 1) != 0)
            {
              return 1;
            }

            v33 = *v32;
            v34 = *v33 | v30;
          }

          else
          {
            if (*(this + 28))
            {
              return 1;
            }

            v34 = *MEMORY[0x1E695E4D0] == a2;
            v43 = *(this + 1);
            v44 = (*v43)++;
            v33 = *v44;
          }

          *v33 = v34;
          return 1;
        }

        v35 = CFArrayGetTypeID();
      }

      else
      {
        switch(v20)
        {
          case 'D':
            v35 = CFDictionaryGetTypeID();
            break;
          case 'N':
            v35 = CFNumberGetTypeID();
            break;
          case 'O':
            if ((*(this + 28) & 1) == 0)
            {
              v21 = *(this + 1);
              v22 = (*v21)++;
              **v22 = a2;
            }

            return 1;
          default:
            return v12;
        }
      }

      return Security::CFScan::typescan(this, a2, v35) == 1;
    }

    if (*(v19 + 1) <= 0x63u)
    {
      if (v20 != 83)
      {
        if (v20 != 88)
        {
          return v12;
        }

        v35 = CFDataGetTypeID();
        return Security::CFScan::typescan(this, a2, v35) == 1;
      }
    }

    else
    {
      if (v20 == 100)
      {
        *this = v19 + 2;
        if (!a2)
        {
          return 1;
        }

        v40 = CFGetTypeID(a2);
        if (v40 != CFNumberGetTypeID())
        {
          return 0;
        }

        v24 = Security::cfNumber<int>(a2);
        goto LABEL_63;
      }

      if (v20 != 115)
      {
        if (v20 != 117)
        {
          return v12;
        }

        *this = v19 + 2;
        if (!a2)
        {
          return 1;
        }

        v23 = CFGetTypeID(a2);
        if (v23 != CFNumberGetTypeID())
        {
          return 0;
        }

        v24 = Security::cfNumber<unsigned int>(a2);
LABEL_63:
        if ((*(this + 28) & 1) == 0)
        {
          v41 = *(this + 1);
          v42 = (*v41)++;
          **v42 = v24;
        }

        return 1;
      }
    }

    v36 = CFStringGetTypeID();
    v37 = Security::CFScan::typescan(this, a2, v36);
    v12 = v37 == 1;
    if (v37)
    {
      return v12;
    }

    Security::cfString(&__str, a2);
    if ((*(this + 28) & 1) == 0)
    {
      v38 = *(this + 1);
      v39 = (*v38)++;
      std::string::operator=(*v39, &__str);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    return 1;
  }

  if (v10 <= 122)
  {
    if (v10 != 91)
    {
      return 0;
    }

    if (!a2)
    {
      v17 = this;
      v18 = 0;
      goto LABEL_36;
    }

    v16 = CFGetTypeID(a2);
    if (v16 == CFArrayGetTypeID())
    {
      v17 = this;
      v18 = a2;
LABEL_36:

      return Security::CFScan::scanarray(v17, v18);
    }

    return 0;
  }

  if (v10 != 123)
  {
    return 0;
  }

  if (a2)
  {
    v13 = CFGetTypeID(a2);
    if (v13 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    v14 = this;
    v15 = a2;
  }

  else
  {
    v14 = this;
    v15 = 0;
  }

  return Security::CFScan::scandictionary(v14, v15);
}

void sub_18891AF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFDataRef Security::CFScan::scandictionary(Security::CFScan *this, const __CFDictionary *a2)
{
  ++*this;
  while (1)
  {
    v4 = Security::CFMunge::next(this) == 125;
    result = v4;
    if (v4)
    {
      break;
    }

    v6 = Security::CFMunge::next(this);
    if (v6 == 63)
    {
      ++*this;
    }

    result = Security::CFMake::make(this);
    if (!result)
    {
      break;
    }

    v7 = result;
    v8 = *(this + 28);
    if (a2)
    {
      Value = CFDictionaryGetValue(a2, result);
    }

    else
    {
      Value = 0;
    }

    if (v6 != 63 && !Value || (*(this + 28) |= Value == 0, Security::CFMunge::next(this) != 61) || (++*this, (Security::CFScan::scan(this, Value) & 1) == 0))
    {
      CFRelease(v7);
      return 0;
    }

    *(this + 28) = v8;
    CFRelease(v7);
  }

  return result;
}

uint64_t Security::CFScan::scanarray(Security::CFScan *this, CFArrayRef theArray)
{
  ++*this;
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v10 = 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    v7 = 1;
    while (1)
    {
      if (Security::CFMunge::next(this) == 93)
      {
        v9 = 1;
        goto LABEL_10;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
      if ((Security::CFScan::scan(this, ValueAtIndex) & 1) == 0)
      {
        break;
      }

      v7 = v5 > ++v6;
      if (v5 == v6)
      {
        goto LABEL_10;
      }
    }

    v9 = 0;
LABEL_10:
    v10 = v7 & v9;
  }

  return v10 & 1;
}

uint64_t Security::CFScan::typescan(Security::CFScan *this, CFTypeRef cf, uint64_t a3)
{
  if (cf && CFGetTypeID(cf) != a3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = (*this)++;
  v6 = *(v5 + 1);
  if (v6 == 110)
  {
    *this = v5 + 2;
    return 1;
  }

  if (v6 == 79)
  {
    *this = v5 + 2;
    if ((*(this + 28) & 1) == 0)
    {
      v7 = *(this + 1);
      v8 = (*v7)++;
      **v8 = cf;
    }

    return 1;
  }

  return 0;
}

uint64_t Security::cfNumber<unsigned int>(const __CFNumber *a1)
{
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  Value = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
  if (!Value)
  {
    Security::CFError::throwMe(Value);
  }

  return valuePtr;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E70D0D08, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

uint64_t Security::cfNumber<int>(const __CFNumber *a1)
{
  valuePtr = -1431655766;
  Value = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  if (!Value)
  {
    Security::CFError::throwMe(Value);
  }

  return valuePtr;
}

__CFDictionary *Security::cfadd(Security *this, __CFDictionary *a2, const char *a3, ...)
{
  va_start(va, a3);
  va_copy(v7, va);
  v5[0] = a2;
  v5[1] = &v7;
  v5[2] = 0;
  v6 = 0;
  result = Security::CFMunge::next(v5);
  if (result == 123)
  {
    ++v5[0];
    return Security::CFMake::add(v5, this);
  }

  return result;
}

uint64_t Security::cfscan(const __CFString *this, const void *a2, const char *a3, ...)
{
  va_start(va, a3);
  va_copy(v4, va);
  v5[0] = a2;
  v5[1] = &v4;
  v5[2] = 0;
  v6 = 0;
  v7 = 0;
  return Security::CFScan::scan(v5, this);
}

void Security::SecPointerBase::assign(Security::SecPointerBase *this, atomic_uchar *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a2 && (atomic_exchange(a2 - 8, 1u) & 1) != 0)
  {
    v5 = (*(*a2 + 16))(a2);
    CFRetain(v5);
  }

  if (*this)
  {
    v6 = (*(**this + 16))(*this);
    CFRelease(v6);
  }

  *this = a2;

  objc_autoreleasePoolPop(v4);
}

void DYLDCache::~DYLDCache(DYLDCache *this)
{
  DYLDCache::~DYLDCache(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8A8A8;
  munmap(*(this + 2), *(this + 3));
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 8));
}

const char *DYLDCache::matchArchitecture(char *__s1)
{
  v2 = "\a";
  while (1)
  {
    v3 = strcmp(__s1, v2 + 8);
    if (!v3)
    {
      break;
    }

    v4 = *(v2 + 9);
    v2 += 36;
    if (!v4)
    {
      v2 = &unk_188967360;
      break;
    }
  }

  if (*__s1 == 0x2031765F646C7964)
  {
    v5 = &DYLDCache::defaultArchitecture;
  }

  else
  {
    v5 = 0;
  }

  if (v3)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

Security::UnixError *Security::Mutex::lock(pthread_mutex_t *this)
{
  result = pthread_mutex_lock(this);
  if (result)
  {
    Security::UnixError::throwMe(result);
  }

  return result;
}

CFDataRef Security::CFMallocData::operator __CFData const*(uint64_t a1)
{
  result = CFDataCreateWithBytesNoCopy(0, *a1, *(a1 + 8), *MEMORY[0x1E695E488]);
  if (!result)
  {
    Security::CFError::throwMe(0);
  }

  *a1 = 0;
  return result;
}

CFMutableDictionaryRef Security::makeCFMutableDictionary(CFDictionaryRef theDict, const __CFDictionary *a2)
{
  result = CFDictionaryCreateMutableCopy(0, 0, theDict);
  if (!result)
  {
    Security::CFError::throwMe(0);
  }

  return result;
}

void Security::cfString(std::string *this, CFStringRef theString)
{
  if (theString)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
    if (!CStringPtr)
    {
      this->__r_.__value_.__r.__words[0] = 0;
      this->__r_.__value_.__l.__size_ = 0;
      this->__r_.__value_.__r.__words[2] = 0;
      Length = CFStringGetLength(theString);
      if (CFStringGetMaximumSizeForEncoding(Length, 0x8000100u) > -2)
      {
        operator new();
      }

      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v5 = CStringPtr;
  }

  else
  {
    v5 = &unk_188967DD7;
  }

  std::string::basic_string[abi:ne200100]<0>(this, v5);
}

void sub_18891B768(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

void Security::cfString(std::string *this, __CFString *cf)
{
  if (!cf)
  {
    Security::MacOSError::throwMe(0xFFFEFA13);
  }

  v4 = CFGetTypeID(cf);
  if (v4 == CFStringGetTypeID())
  {

    Security::cfString(this, cf);
  }

  else if (v4 == CFURLGetTypeID())
  {

    Security::cfString(this, cf);
  }

  else if (v4 == CFBundleGetTypeID())
  {
    v5 = CFBundleCopyBundleURL(cf);

    Security::cfStringRelease(this, v5);
  }

  else
  {
    v6 = CFCopyDescription(cf);
    Security::cfString(this, v6);
    Security::CFRef<__CFString const*>::~CFRef(&v6);
  }
}

void sub_18891B9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFString const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

uint64_t Security::StLock<Security::Mutex,&Security::Mutex::lock,&Security::Mutex::unlock>::~StLock(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = pthread_mutex_unlock(*a1);
    if (v2)
    {
      Security::UnixError::throwMe(v2);
    }
  }

  return a1;
}

void Security::Dispatch::Group::~Group(Security::Dispatch::Group *this)
{
  Security::Dispatch::Group::~Group(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8A990;
  dispatch_group_wait(*(this + 11), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(*(this + 11));
  std::exception_ptr::~exception_ptr(this + 10);
  Security::Mutex::~Mutex((this + 8));
}

void Security::Dispatch::Semaphore::~Semaphore(dispatch_object_t *this)
{
  *this = &unk_1EFA8A9B0;
  dispatch_release(this[1]);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8A9B0;
  dispatch_release(this[1]);
}

void Security::Dispatch::SemaphoreWait::~SemaphoreWait(Security::Dispatch::SemaphoreWait *this)
{
  *this = &unk_1EFA8A9D0;
  if (*(this + 16) == 1)
  {
    dispatch_semaphore_signal(*(*(this + 1) + 8));
  }

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8A9D0;
  if (*(this + 16) == 1)
  {
    dispatch_semaphore_signal(*(*(this + 1) + 8));
  }
}

uint64_t ___ZN8Security8Dispatch23ExceptionAwareEnqueuing21enqueueWithDispatcherEU13block_pointerFvU13block_pointerFvvEES3__block_invoke(uint64_t result)
{
  if ((*(*(result + 40) + 64) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_18891BCC4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12)
{
  __cxa_begin_catch(a1);
  a11 = v12;
  a12 = 0xAAAAAAAAAAAAAA01;
  Security::Mutex::lock(v12);
  *(v12 + 64) = 1;
  std::current_exception();
  std::exception_ptr::operator=((v12 + 72), &a10);
  std::exception_ptr::~exception_ptr(&a10);
  Security::StLock<Security::Mutex,&Security::Mutex::lock,&Security::Mutex::unlock>::~StLock(&a11);
  __cxa_end_catch();
  JUMPOUT(0x18891BCB4);
}

void Security::Dispatch::Group::wait(Security::Dispatch::Group *this)
{
  dispatch_group_wait(*(this + 11), 0xFFFFFFFFFFFFFFFFLL);
  if (*(this + 72) == 1)
  {
    *(this + 72) = 0;
    std::exception_ptr::exception_ptr(&v3, this + 10);
    v2.__ptr_ = &v3;
    std::rethrow_exception(v2);
    __break(1u);
  }
}

_DWORD *Security::BlobWrapper::alloc(Security::BlobWrapper *this, unint64_t a2)
{
  if (a2 > 0xFFFFFFFFFFFFFFF7)
  {
    return 0;
  }

  v4 = a2 + 8;
  v5 = malloc_type_malloc(a2 + 8, 0x100004000313F17uLL);
  v2 = v5;
  if (v5)
  {
    *v5 = 17555194;
    v5[1] = bswap32(v4);
    memcpy(v5 + 2, this, v4 - 8);
  }

  return v2;
}

void Security::UnixError::~UnixError(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x18CFD9760);
}

uint64_t Security::MacOSError::unixError(Security::MacOSError *this)
{
  v1 = *(this + 36) - 100000;
  if (v1 >= 0x100)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v1;
  }
}

void Security::MacOSError::~MacOSError(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x18CFD9760);
}

void Security::CFError::~CFError(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x18CFD9760);
}

void Security::ModuleNexusError::~ModuleNexusError(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x18CFD9760);
}

void Security::CommonError::LogBacktrace(Security::CommonError *this)
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = secLogObjForScope("security_exception");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v35 = v2;
    v36 = v2;
    v33 = v2;
    v34 = v2;
    v31 = v2;
    v32 = v2;
    v29 = v2;
    v30 = v2;
    v27 = v2;
    v28 = v2;
    v25 = v2;
    v26 = v2;
    v23 = v2;
    v24 = v2;
    *v21 = v2;
    v22 = v2;
    v3 = backtrace(v21, 32);
    v4 = backtrace_symbols(v21, v3);
    v5 = v4;
    memset(&v18, 0, sizeof(v18));
    if (v3 < 1)
    {
      free(v4);
    }

    else
    {
      for (i = 0; i != v3; ++i)
      {
        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          v18.__r_.__value_.__l.__size_ = 0;
          v7 = v18.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v18.__r_.__value_.__s + 23) = 0;
          v7 = &v18;
        }

        v7->__r_.__value_.__s.__data_[0] = 0;
        __stringp = v5[i];
        while (1)
        {
          v8 = strsep(&__stringp, " ");
          v9 = v8;
          if (!v8)
          {
            break;
          }

          if (*v8)
          {
            status = 0;
            v10 = __cxa_demangle(v8, 0, 0, &status);
            v11 = v10;
            if (status)
            {
              v12 = strlen(v9);
              std::string::append(&v18, v9, v12);
            }

            else
            {
              v13 = strlen(v10);
              std::string::append(&v18, v11, v13);
            }

            std::string::append(&v18, " ", 1uLL);
            if (v11)
            {
              free(v11);
            }
          }

          else
          {
            std::string::append(&v18, " ", 1uLL);
          }
        }

        v14 = secLogObjForScope("security_exception");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v15 = &v18;
          }

          else
          {
            v15 = v18.__r_.__value_.__r.__words[0];
          }

          status = 136315138;
          v20 = v15;
          _os_log_debug_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEBUG, "%s", &status, 0xCu);
        }
      }

      v16 = SHIBYTE(v18.__r_.__value_.__r.__words[2]);
      free(v5);
      if (v16 < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }
    }
  }
}

Security::UnixError *Security::UnixError::UnixError(Security::UnixError *this, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  *(this + 72) = xmmword_1889674AE;
  *(this + 88) = unk_1889674BE;
  *(this + 104) = xmmword_1889674CE;
  *(this + 120) = unk_1889674DE;
  *(this + 8) = *"CommonError";
  *(this + 24) = unk_18896747E;
  *(this + 40) = xmmword_18896748E;
  *(this + 56) = unk_18896749E;
  *(this + 17) = 128;
  *this = &unk_1EFA8AA30;
  *(this + 36) = a2;
  snprintf(this + 8, *(this + 17), "UNIX error exception: %d", *(this + 36));
  v3 = secLogObjForScope("security_exception");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    v5 = (*(*this + 16))(this);
    *buf = 136315138;
    v8 = v5;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  Security::CommonError::LogBacktrace(v4);
  return this;
}

void Security::UnixError::throwMe(Security::UnixError *this)
{
  v1 = this;
  exception = __cxa_allocate_exception(0x98uLL);
  Security::UnixError::UnixError(exception, v1);
}

Security::MacOSError *Security::MacOSError::MacOSError(Security::MacOSError *this, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *(this + 72) = xmmword_1889674AE;
  *(this + 88) = unk_1889674BE;
  *(this + 104) = xmmword_1889674CE;
  *(this + 120) = unk_1889674DE;
  *(this + 8) = *"CommonError";
  *(this + 24) = unk_18896747E;
  *(this + 40) = xmmword_18896748E;
  *(this + 56) = unk_18896749E;
  *(this + 17) = 128;
  *this = &unk_1EFA8AA68;
  *(this + 36) = a2;
  snprintf(this + 8, *(this + 17), "MacOS error: %d", *(this + 36));
  if (a2 != -67050)
  {
    v4 = secLogObjForScope("security_exception");
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v6 = (*(*this + 16))(this);
      *buf = 136315138;
      v9 = v6;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    Security::CommonError::LogBacktrace(v5);
  }

  return this;
}

void Security::MacOSError::throwMe(Security::MacOSError *this, uint64_t a2, const char *a3, ...)
{
  v3 = this;
  exception = __cxa_allocate_exception(0x98uLL);
  Security::MacOSError::MacOSError(exception, v3);
}

Security::CFError *Security::CFError::CFError(Security::CFError *this)
{
  *(this + 72) = xmmword_1889674AE;
  *(this + 88) = unk_1889674BE;
  *(this + 104) = xmmword_1889674CE;
  *(this + 120) = unk_1889674DE;
  *(this + 8) = *"CommonError";
  *(this + 24) = unk_18896747E;
  *(this + 40) = xmmword_18896748E;
  *(this + 56) = unk_18896749E;
  *(this + 17) = 128;
  *this = &unk_1EFA8AAA0;
  v2 = secLogObjForScope("security_exception");
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *v5 = 0;
    _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "CFError", v5, 2u);
  }

  Security::CommonError::LogBacktrace(v3);
  return this;
}

void Security::ModuleNexusError::throwMe(Security::ModuleNexusError *this)
{
  exception = __cxa_allocate_exception(0x90uLL);
  *(exception + 72) = xmmword_1889674AE;
  *(exception + 88) = unk_1889674BE;
  *(exception + 104) = xmmword_1889674CE;
  *(exception + 120) = unk_1889674DE;
  *(exception + 8) = *"CommonError";
  *(exception + 24) = unk_18896747E;
  *(exception + 40) = xmmword_18896748E;
  *(exception + 56) = unk_18896749E;
  *(exception + 17) = 128;
  *exception = &unk_1EFA8AAF0;
}

void Security::UnixPlusPlus::FileDesc::close(Security::UnixPlusPlus::FileDesc *this)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if ((v2 & 0x80000000) == 0)
  {
    if (close(v2) == -1)
    {
      v5 = __error();
      Security::UnixError::throwMe(*v5);
    }

    v3 = secLogObjForScope("unixio");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *this;
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_debug_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEBUG, "close(%d)", v6, 8u);
    }

    *this = -1;
  }
}

ssize_t Security::UnixPlusPlus::FileDesc::writeAll(ssize_t this, char *__buf, size_t __nbyte)
{
  if (__nbyte)
  {
    v3 = __nbyte;
    v5 = this;
    do
    {
      this = write(*v5, __buf, v3);
      if (this == -1)
      {
        if (*__error() != 35)
        {
          v6 = __error();
          Security::UnixError::throwMe(*v6);
        }

        this = 0;
      }

      __buf += this;
      v3 -= this;
    }

    while (v3);
  }

  return this;
}

off_t Security::UnixPlusPlus::FileDesc::seek(Security::UnixPlusPlus::FileDesc *this, off_t a2)
{
  result = lseek(this, a2, 0);
  if (result == -1)
  {
    v3 = __error();
    Security::UnixError::throwMe(*v3);
  }

  return result;
}

float Security::UnixPlusPlus::FileDesc::fcntl(Security::UnixPlusPlus::FileDesc *this, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = fcntl(*this, 48, a3, 1);
  v5 = secLogObjForScope("unixio");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *this;
    *buf = 67109888;
    v10 = v7;
    v11 = 1024;
    v12 = 48;
    v13 = 2048;
    v14 = 1;
    v15 = 1024;
    v16 = v4;
    _os_log_debug_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEBUG, "%d fcntl(%d,%p) = %d", buf, 0x1Eu);
  }

  if (v4 == -1)
  {
    v8 = __error();
    Security::UnixError::throwMe(*v8);
  }

  return result;
}

int *Security::UnixPlusPlus::FileDesc::removeAttr(Security::UnixPlusPlus::FileDesc *this, const char *a2)
{
  result = fremovexattr(this, a2, 0);
  if (result)
  {
    result = __error();
    if (*result != 93)
    {
      v3 = __error();
      Security::UnixError::throwMe(*v3);
    }
  }

  return result;
}

ssize_t Security::UnixPlusPlus::FileDesc::listAttr(Security::UnixPlusPlus::FileDesc *this, char *a2, size_t a3)
{
  result = flistxattr(this, a2, a3, 0);
  if (result == -1)
  {
    v4 = __error();
    Security::UnixError::throwMe(*v4);
  }

  return result;
}

const void **Security::UnixPlusPlus::FileDesc::mediumType(std::string *this, Security::UnixPlusPlus::FileDesc *a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v3.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v3.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v13.st_blksize = v3;
  *v13.st_qspare = v3;
  v13.st_birthtimespec = v3;
  *&v13.st_size = v3;
  v13.st_mtimespec = v3;
  v13.st_ctimespec = v3;
  *&v13.st_uid = v3;
  v13.st_atimespec = v3;
  *&v13.st_dev = v3;
  Security::UnixPlusPlus::FileDesc::fstat(a2, &v13);
  matching = 0xAAAAAAAAAAAAAAAALL;
  Security::CFTemp<__CFDictionary const*>::CFTemp(&matching, "{%s=%d,%s=%d}", "BSD Major", HIBYTE(v13.st_dev), "BSD Minor", v13.st_dev & 0xFFFFFF);
  v4 = *MEMORY[0x1E696CD60];
  v5 = matching;
  matching = 0;
  MatchingService = IOServiceGetMatchingService(v4, v5);
  v7 = MatchingService;
  if (!MatchingService)
  {
    Security::CFRef<__CFDictionary const*>::~CFRef(&matching);
    v11 = 0;
LABEL_6:
    this->__r_.__value_.__r.__words[0] = 0;
    this->__r_.__value_.__l.__size_ = 0;
    this->__r_.__value_.__r.__words[2] = 0;
    return Security::CFRef<__CFDictionary const*>::~CFRef(&v11);
  }

  v8 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"Device Characteristics", 0, 3u);
  IOObjectRelease(v7);
  Security::CFRef<__CFDictionary const*>::~CFRef(&matching);
  v11 = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(v8, @"Medium Type");
  if (!Value)
  {
    goto LABEL_6;
  }

  Security::cfString(this, Value);
  return Security::CFRef<__CFDictionary const*>::~CFRef(&v11);
}

void sub_18891CB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  Security::CFRef<__CFDictionary const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef *Security::CFTemp<__CFDictionary const*>::CFTemp(CFTypeRef *a1, const char *a2, ...)
{
  va_start(va, a2);
  *a1 = 0;
  va_copy(v5, va);
  v6[0] = a2;
  v6[1] = &v5;
  v6[2] = 0;
  v7 = 0;
  v3 = Security::CFMake::make(v6);
  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = v3;
  return a1;
}

void *DefaultAllocator::realloc(DefaultAllocator *this, void *ptr, size_t size)
{
  result = malloc_type_realloc(ptr, size, 0x301F5A77uLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v5 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v5, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  return result;
}

void *DefaultAllocator::malloc(DefaultAllocator *this, size_t size)
{
  result = malloc_type_malloc(size, 0xD24D8E0BuLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  return result;
}

void *SensitiveAllocator::realloc(SensitiveAllocator *this, char *ptr, size_t a3)
{
  v5 = malloc_size(ptr);
  if (v5 > a3)
  {
    v5 = memset_s(&ptr[a3], v5 - a3, 0, v5 - a3);
  }

  return DefaultAllocator::realloc(v5, ptr, a3);
}

void SensitiveAllocator::free(SensitiveAllocator *this, void *ptr)
{
  v3 = malloc_size(ptr);
  memset_s(ptr, v3, 0, v3);

  free(ptr);
}

uint64_t Security::Allocator::standard(Security::Allocator *this)
{
  os_unfair_lock_lock(&unk_1EA91CDF8);
  if (!defaultAllocators)
  {
    defaultAllocators = Security::ModuleNexusCommon::create(&defaultAllocators, Security::ModuleNexus<DefaultAllocators>::make);
  }

  os_unfair_lock_unlock(&unk_1EA91CDF8);
  return defaultAllocators;
}

void sub_18891CDE8(void *a1)
{
  __cxa_begin_catch(a1);
  os_unfair_lock_unlock(&unk_1EA91CDF8);
  __cxa_rethrow();
}

uint64_t Security::CFClass::copyDebugDescType(Security::CFClass *this, const void *a2)
{
  if (this)
  {
    v2 = this + 24;
  }

  else
  {
    v2 = 0;
  }

  return (*(*v2 + 48))(v2, a2);
}

void sub_18891CEC0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18891CEB8);
}

uint64_t Security::CFClass::copyFormattingDescType(Security::CFClass *this, const void *a2, const __CFDictionary *a3)
{
  if (this)
  {
    v3 = this + 24;
  }

  else
  {
    v3 = 0;
  }

  return (*(*v3 + 40))(v3, a2, a3);
}

void sub_18891CF1C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18891CF14);
}

uint64_t Security::CFClass::hashType(Security::CFClass *this, const void *a2)
{
  if (this)
  {
    v2 = this + 24;
  }

  else
  {
    v2 = 0;
  }

  return (*(*v2 + 32))(v2, a2);
}

void sub_18891CF78(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18891CF70);
}

uint64_t Security::CFClass::equalType(Security::CFClass *this, char *a2, const void *a3)
{
  if (this)
  {
    v3 = this + 24;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    v4 = a2 + 24;
  }

  else
  {
    v4 = 0;
  }

  return (*(*v3 + 24))(v3, v4, a3);
}

void sub_18891CFDC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18891CFD4);
}

uint64_t Security::Architecture::local(Security::Architecture *this)
{
  image_header = _dyld_get_image_header(0);
  v12 = &unk_1EFA8AC20;
  Security::MachOBase::initHeader(&v12, image_header);
  v2 = 28;
  if (v16)
  {
    v2 = 32;
  }

  v3 = image_header + v2;
  LODWORD(v4) = v13[5];
  v5 = bswap32(v4);
  if (v17)
  {
    v4 = v5;
  }

  else
  {
    v4 = v4;
  }

  v14 = image_header + v2;
  v15 = &v3[v4];
  if (v3 + 8 > &v3[v4])
  {
    Security::UnixError::throwMe(8);
  }

  v7 = v13[1];
  LODWORD(v6) = v13[2];
  v8 = bswap32(v7);
  if (v17)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = bswap32(v6);
  if (v17)
  {
    v6 = v10;
  }

  else
  {
    v6 = v6;
  }

  return v9 | (v6 << 32);
}

CFDataRef Security::MachO::dataAt(Security::MachO *this, uint64_t a2, size_t size)
{
  v9[0] = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = 0xAAAAAAAAAAAAAAAALL;
  Security::CFMallocData::CFMallocData(v9, size);
  if (Security::UnixPlusPlus::FileDesc::read(*(this + 9), v9[0], size, *(this + 6) + a2) != size)
  {
    v8 = __error();
    Security::UnixError::throwMe(*v8);
  }

  v6 = Security::CFMallocData::operator __CFData const*(v9);
  if (v9[0])
  {
    free(v9[0]);
  }

  return v6;
}

void sub_18891D1AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

Security::CFMallocData *Security::CFMallocData::CFMallocData(Security::CFMallocData *this, size_t size)
{
  v4 = malloc_type_malloc(size, 0x168A441uLL);
  *this = v4;
  *(this + 1) = size;
  if (!v4)
  {
    v6 = __error();
    Security::UnixError::throwMe(*v6);
  }

  return this;
}

uint64_t *std::list<fat_arch *>::__sort<BOOL({block_pointer})(fat_arch const*,fat_arch const*)>(uint64_t **a1, uint64_t **a2, unint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v8 = *a2;
      if ((*(*a4 + 16))())
      {
        v10 = *v8;
        v9 = v8[1];
        *(v10 + 8) = v9;
        *v9 = v10;
        v11 = *v4;
        *(v11 + 8) = v8;
        *v8 = v11;
        *v4 = v8;
        v8[1] = v4;
        return v8;
      }
    }

    else
    {
      v13 = a3 >> 1;
      v14 = (a3 >> 1) + 1;
      v15 = a1;
      do
      {
        v15 = v15[1];
        --v14;
      }

      while (v14 > 1);
      v16 = std::list<fat_arch *>::__sort<BOOL({block_pointer})(fat_arch const*,fat_arch const*)>(a1, v15, a3 >> 1, a4);
      v4 = std::list<fat_arch *>::__sort<BOOL({block_pointer})(fat_arch const*,fat_arch const*)>(v15, a2, a3 - v13, a4);
      if ((*(*a4 + 16))())
      {
          ;
        }

        v19 = *i;
        v20 = (*i)[1];
        v21 = *v4;
        *(v21 + 8) = v20;
        *v20 = v21;
        v22 = *v16;
        v18 = v16[1];
        *(v22 + 8) = v4;
        *v4 = v22;
        *v16 = v19;
        v19[1] = v16;
      }

      else
      {
        v18 = v16[1];
        i = v4;
        v4 = v16;
      }

      if (v18 != i && i != a2)
      {
        v23 = i;
        do
        {
          if ((*(*a4 + 16))())
          {
              ;
            }

            v26 = *j;
            v27 = *(*j + 8);
            v28 = *i;
            v28[1] = v27;
            *v27 = v28;
            if (v23 == i)
            {
              v23 = j;
            }

            v29 = *v18;
            v25 = v18[1];
            v29[1] = i;
            *i = v29;
            *v18 = v26;
            v26[1] = v18;
            i = j;
          }

          else
          {
            v25 = v18[1];
          }

          v30 = v25 == v23 || i == a2;
          v18 = v25;
        }

        while (!v30);
      }
    }
  }

  return v4;
}

void *std::__list_imp<fat_arch *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

unint64_t Security::Universal::bestNativeArch(Security::Universal *this)
{
  if (*(this + 1))
  {
    v2 = Security::Architecture::local(this);
    v3 = NXFindBestFatArch(v2, HIDWORD(v2) & 0xFFFFFF, *(this + 1), *(this + 4));
    if (v3)
    {
      cputype = v3->cputype;
      cpusubtype = v3->cpusubtype;
    }

    else
    {
      v6 = *(this + 1);
      cputype = *v6;
      cpusubtype = v6[1];
    }
  }

  else
  {
    cputype = *(this + 5);
    cpusubtype = *(this + 6);
  }

  return cputype | (cpusubtype << 32);
}

Security::Universal *Security::Universal::findArch(Security::Universal *this, const Security::Architecture *a2, int a3, int a4)
{
  if (!a2)
  {
LABEL_19:
    Security::UnixError::throwMe(8);
  }

  v4 = (this + 20 * a2);
  v5 = this;
  while (*v5 != a3 || *(v5 + 1) != a4)
  {
    v5 = (v5 + 20);
    if (v5 >= v4)
    {
      v5 = this;
      while (*v5 != a3 || ((*(v5 + 1) ^ a4) & 0xFFFFFF) != 0)
      {
        v5 = (v5 + 20);
        if (v5 >= v4)
        {
          v5 = this;
          while (*v5 != a3 || (*(v5 + 1) & 0xFFFFFF) != 0)
          {
            v5 = (v5 + 20);
            if (v5 >= v4)
            {
              while (*this != a3)
              {
                this = (this + 20);
                if (this >= v4)
                {
                  goto LABEL_19;
                }
              }

              return this;
            }
          }

          return v5;
        }
      }

      return v5;
    }
  }

  return v5;
}

void Security::Universal::architecture(Security::Universal **this, const Security::Architecture *a2, int a3)
{
  if (this[1])
  {

    Security::Universal::findImage(this, a2, a3);
  }

  if (*(this + 5) == a2 && (a3 == -1 || ((*(this + 6) ^ a3) & 0xFFFFFF) == 0))
  {
    operator new();
  }

  Security::UnixError::throwMe(8);
}

uint64_t Security::Universal::archOffset(Security::Universal *this, const Security::Architecture *a2, int a3)
{
  if (*(this + 1))
  {
    v3 = *(this + 4);
    return v3 + *(Security::Universal::findArch(*(this + 1), *(this + 4), a2, a3) + 2);
  }

  else
  {
    if (*(this + 5) != a2 || a3 != -1 && ((*(this + 6) ^ a3) & 0xFFFFFF) != 0)
    {
      Security::UnixError::throwMe(8);
    }

    return 0;
  }
}

void *Security::Bundle::lookupSymbol(Security::Bundle *this, const char *a2)
{
  functionName = CFStringCreateWithCString(0, a2, 0);
  if (!functionName)
  {
    Security::UnixError::throwMe(0x55);
  }

  v3 = Security::Bundle::cfBundle(this);
  FunctionPointerForName = CFBundleGetFunctionPointerForName(v3, functionName);
  if (!FunctionPointerForName)
  {
    Security::UnixError::throwMe(0x55);
  }

  Security::CFRef<__CFString const*>::~CFRef(&functionName);
  return FunctionPointerForName;
}

void sub_18891D8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFString const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

uint64_t Security::Bundle::cfBundle(Security::Bundle *this)
{
  v9 = *MEMORY[0x1E69E9840];
  result = *(this + 8);
  if (!result)
  {
    v3 = secLogObjForScope("bundle");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v7 = (this + 16);
      if (*(this + 39) < 0)
      {
        v7 = *v7;
      }

      *v8 = 136315138;
      *&v8[4] = v7;
      _os_log_debug_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEBUG, "instantiating CFBundle for %s", v8, 0xCu);
    }

    v4 = *(this + 39);
    if (v4 < 0)
    {
      v5 = *(this + 2);
      v4 = *(this + 3);
    }

    else
    {
      v5 = this + 16;
    }

    v6 = CFURLCreateFromFileSystemRepresentation(0, v5, v4, 1u);
    *v8 = v6;
    if (!v6 || (v6 = CFBundleCreate(0, v6), (*(this + 8) = v6) == 0))
    {
      Security::CFError::throwMe(v6);
    }

    Security::CFRef<__CFURL const*>::~CFRef(v8);
    return *(this + 8);
  }

  return result;
}

SecStaticCodeRef Security::OSXCode::codeRef(Security::OSXCode *this)
{
  staticCode = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 16))(__p);
  if (v6 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  CFURL = Security::makeCFURL(v2, 0, 0, v1);
  v3 = SecStaticCodeCreateWithPath(CFURL, 0, &staticCode);
  if (v3)
  {
    Security::MacOSError::throwMe(v3);
  }

  Security::CFRef<__CFURL const*>::~CFRef(&CFURL);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return staticCode;
}

void sub_18891DAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Security::Bundle::executablePath(Security::Bundle *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 63) < 0)
  {
    v4 = *(this + 6);
    if (v4)
    {
      v5 = *(this + 5);

      std::string::__init_copy_ctor_external(a2, v5, v4);
      return;
    }
  }

  else if (*(this + 63))
  {
LABEL_11:
    *&a2->__r_.__value_.__l.__data_ = *(this + 40);
    a2->__r_.__value_.__r.__words[2] = *(this + 7);
    return;
  }

  v6 = Security::Bundle::cfBundle(this);
  v7 = CFBundleCopyExecutableURL(v6);
  Security::cfStringRelease(__p, v7);
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  *(this + 7) = v9;
  *(this + 40) = *__p;
  HIBYTE(v9) = 0;
  LOBYTE(__p[0]) = 0;
  if ((*(this + 63) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  std::string::__init_copy_ctor_external(a2, *(this + 5), *(this + 6));
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_18891DBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Security::Bundle::canonicalPath(Security::Bundle *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 39) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 2), *(this + 3));
  }

  else
  {
    *a2 = *(this + 16);
  }
}

void Security::Bundle::~Bundle(Security::Bundle *this)
{
  Security::Bundle::~Bundle(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8ACD0;
  v2 = *(this + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void Security::LoadableBundle::unload(Security::LoadableBundle *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = secLogObjForScope("bundle");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    if (*(this + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(this + 2), *(this + 3));
    }

    else
    {
      __p = *(this + 16);
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 134218242;
    v7 = this;
    v8 = 2080;
    v9 = p_p;
    _os_log_debug_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEBUG, "%p (%s) unloaded", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v3 = Security::Bundle::cfBundle(this);
  CFBundleUnloadExecutable(v3);
}

void Security::LoadableBundle::load(Security::LoadableBundle *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = Security::Bundle::cfBundle(this);
  Executable = CFBundleLoadExecutable(v2);
  if (!Executable)
  {
    Security::CFError::throwMe(Executable);
  }

  v4 = secLogObjForScope("bundle");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (*(this + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(this + 2), *(this + 3));
    }

    else
    {
      __p = *(this + 16);
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 134218242;
    v8 = this;
    v9 = 2080;
    v10 = p_p;
    _os_log_debug_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEBUG, "%p (%s) loaded", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void Security::LoadableBundle::~LoadableBundle(Security::LoadableBundle *this)
{
  Security::Bundle::~Bundle(this);

  JUMPOUT(0x18CFD9760);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E70D0D10, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t Security::ModuleNexusCommon::create(Security::ModuleNexusCommon *this, void *(*a2)(void))
{
  v4 = *(this + 1);
  v3 = (this + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN8Security17ModuleNexusCommon6createEPFPvvE_block_invoke;
  v6[3] = &__block_descriptor_tmp_17145;
  v6[4] = this;
  v6[5] = a2;
  if (v4 != -1)
  {
    dispatch_once(v3, v6);
  }

  result = *this;
  if (!*this)
  {
    Security::ModuleNexusError::throwMe(0);
  }

  return result;
}

uint64_t ___ZN8Security17ModuleNexusCommon6createEPFPvvE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = (*(a1 + 40))();
  *v1 = result;
  return result;
}

void sub_18891E0B8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

CFDataRef Security::CodeSigning::DetachedRep::component(uint64_t (***this)(Security::CodeSigning::EmbeddedSignatureBlob **), Security::CodeSigning::EmbeddedSignatureBlob *a2, const Security::BlobCore *a3)
{
  result = Security::CodeSigning::EmbeddedSignatureBlob::component(this[14], a2, a3);
  if (!result)
  {
    v7 = this[15];
    if (!v7 || (result = Security::CodeSigning::EmbeddedSignatureBlob::component(v7, a2, v6)) == 0)
    {
      v8 = *(*(*this)[2](this) + 24);

      return v8();
    }
  }

  return result;
}

void Security::CodeSigning::DetachedRep::~DetachedRep(Security::CodeSigning::DetachedRep *this)
{
  *this = &unk_1EFA8AD68;
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  Security::CFRef<__CFData const*>::~CFRef(this + 12);
  Security::CFRef<__CFData const*>::~CFRef(this + 11);
  *this = &unk_1EFA8AEA0;
  Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(this + 16);
  Security::CodeSigning::DiskRep::~DiskRep(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8AD68;
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  Security::CFRef<__CFData const*>::~CFRef(this + 12);
  Security::CFRef<__CFData const*>::~CFRef(this + 11);
  *this = &unk_1EFA8AEA0;
  Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(this + 16);

  Security::CodeSigning::DiskRep::~DiskRep(this);
}

_DWORD *Security::Blob<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u>::specific(_DWORD *result)
{
  if (result)
  {
    if (*result == -1072898310 && (v1 = 8 * bswap32(result[2]), v2 = v1 + 12, v3 = bswap32(result[1]), v1 + 12 <= v3))
    {
      if ((v1 | 4uLL) >= 0xC)
      {
        for (i = v1 + 8; ; i -= 8)
        {
          v6 = *(result + i);
          if (v6)
          {
            v7 = bswap32(v6);
            v8 = v2 > v7 || v7 + 8 > v3;
            if (v8 || bswap32(*(result + v7 + 4)) + v7 > v3)
            {
              break;
            }
          }

          v9 = i - 4;
          if (v9 <= 19)
          {
            return result;
          }
        }

        return 0;
      }
    }

    else
    {
      v4 = __error();
      result = 0;
      *v4 = 22;
    }
  }

  return result;
}

uint64_t Security::SuperBlobCore<Security::SuperBlob<4208856257u,unsigned int>,4208856257u,unsigned int>::find(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  LODWORD(v4) = bswap32(v2);
  v4 = v4 <= 1 ? 1 : v4;
  v5 = (a1 + 12);
  while (1)
  {
    v6 = *v5;
    v5 += 2;
    if (bswap32(v6) == a2)
    {
      break;
    }

    if (v4 == ++v3)
    {
      return 0;
    }
  }

  v7 = *(a1 + 12 + 8 * v3 + 4);
  if (v7)
  {
    return bswap32(v7) + a1;
  }

  else
  {
    return 0;
  }
}

void Security::CodeSigning::FilterRep::~FilterRep(Security::CodeSigning::FilterRep *this)
{
  *this = &unk_1EFA8AEA0;
  Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(this + 16);

  Security::CodeSigning::DiskRep::~DiskRep(this);
}

Security::CodeSigning::SingleDiskRep::Writer *Security::CodeSigning::SingleDiskRep::Writer::Writer(Security::CodeSigning::SingleDiskRep::Writer *this, atomic_uint *a2, int a3)
{
  *(this + 2) = 0;
  *(this + 12) = -1;
  *(this + 5) = a3;
  *this = &unk_1EFA8C070;
  Security::Mutex::Mutex((this + 32));
  if (a2)
  {
    atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
  }

  *(this + 3) = a2;
  *(this + 24) = -1;
  *(this + 100) = 0;
  return this;
}

ssize_t Security::CodeSigning::DYLDCacheRep::Writer::flush(Security::CodeSigning::DYLDCacheRep::Writer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 17);
  if (v9)
  {
    MEMORY[0x18CFD9760](v9, 0x1000C403E1C8BA9);
  }

  *(this + 17) = Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::make(this + 104, a2, a3, a4, a5, a6, a7, a8);
  v10 = Security::CodeSigning::SingleDiskRep::Writer::fd(this);
  Security::UnixPlusPlus::FileDesc::seek(*v10, *(*(this + 16) + 104));
  v11 = Security::CodeSigning::SingleDiskRep::Writer::fd(this);
  v12 = *(this + 17);
  v13 = bswap32(*(v12 + 4));

  return Security::UnixPlusPlus::FileDesc::writeAll(v11, v12, v13);
}

_DWORD *Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::make(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 16);
  v39 = 0uLL;
  *&v40 = 0;
  v10 = Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::size(a1, &v39, 0, a4, a5, a6, a7, a8, v36);
  v11 = malloc_type_malloc(v10, 0x10000403E1C8BA9uLL);
  if (!v11)
  {
    Security::UnixError::throwMe(0xC);
  }

  v12 = v11;
  v13 = *(a1 + 16);
  *v11 = -1072898310;
  v11[1] = bswap32(v10);
  v11[2] = bswap32(v13);
  v14 = *a1;
  if (*a1 != a1 + 8)
  {
    v15 = 0;
    v16 = 8 * v9 + 12;
    do
    {
      v17 = &v12[2 * v15 + 3];
      *v17 = bswap32(*(v14 + 8));
      v17[1] = bswap32(v16);
      memcpy(v12 + v16, v14[5], bswap32(*(v14[5] + 4)));
      v18 = v14[1];
      v19 = v14;
      if (v18)
      {
        do
        {
          v20 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v20 = v19[2];
          v21 = *v20 == v19;
          v19 = v20;
        }

        while (!v21);
      }

      v16 += bswap32(*(v14[5] + 4));
      ++v15;
      v14 = v20;
    }

    while (v20 != (a1 + 8));
  }

  v47 = 0xAAAAAAAAAAAAAAAALL;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46[7] = v22;
  v46[8] = v22;
  v46[5] = v22;
  v46[6] = v22;
  v46[3] = v22;
  v46[4] = v22;
  v46[1] = v22;
  v46[2] = v22;
  v46[0] = v22;
  v44 = v22;
  v45 = v22;
  *__src = v22;
  *__p = v22;
  v40 = v22;
  v41 = v22;
  v39 = v22;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v39);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "Maker ", 6);
  v23 = MEMORY[0x18CFD9640](&v39, a1);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " assembles ", 11);
  v25 = MEMORY[0x18CFD9670](v24, *(a1 + 16));
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " blob(s) into ", 14);
  v27 = MEMORY[0x18CFD9640](v26, v12);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " (size=", 7);
  v29 = MEMORY[0x18CFD9660](v28, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ")", 1);
  v30 = secLogObjForScope("superblob");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    if ((BYTE8(v45) & 0x10) != 0)
    {
      v33 = v45;
      if (v45 < __src[1])
      {
        *&v45 = __src[1];
        v33 = __src[1];
      }

      v34 = __src[0];
    }

    else
    {
      if ((BYTE8(v45) & 8) == 0)
      {
        v32 = 0;
        v38 = 0;
LABEL_27:
        *(&__dst + v32) = 0;
        p_dst = &__dst;
        if (v38 < 0)
        {
          p_dst = __dst;
        }

        *buf = 136315138;
        v49 = p_dst;
        _os_log_debug_impl(&dword_1887D2000, v30, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
        if (v38 < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_11;
      }

      v34 = *(&v40 + 1);
      v33 = *(&v41 + 1);
    }

    v32 = v33 - v34;
    if ((v33 - v34) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v32 >= 0x17)
    {
      operator new();
    }

    v38 = v33 - v34;
    if (v32)
    {
      memmove(&__dst, v34, v32);
    }

    goto LABEL_27;
  }

LABEL_11:
  *&v39 = *MEMORY[0x1E69E54E8];
  *(&v39 + *(v39 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v39 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v39 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v40);
  std::ostream::~ostream();
  MEMORY[0x18CFD96D0](v46);
  return v12;
}

uint64_t Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::size(void *a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *a1;
  if (*a1 == a1 + 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = v9[1];
      v12 = v9;
      if (v11)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v10 += bswap32(*(v9[5] + 4));
      v9 = v13;
    }

    while (v13 != a1 + 1);
  }

  v15 = a2[1];
  if (*a2 != v15)
  {
    v16 = *a2;
    do
    {
      v17 = *v16++;
      v10 += v17;
    }

    while (v16 != v15);
  }

  v18 = a1[2] + v15 - *a2;
  if (a3)
  {
    v21 = &a9;
    do
    {
      ++v18;
      v10 += a3;
      v19 = v21;
      v21 += 8;
      a3 = *v19;
    }

    while (*v19);
  }

  return v10 + 8 * v18 + 12;
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  *(a1 + 112) = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, (a1 + 8));
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x18CFD9680](a1 + 16);
  *(a1 + 72) = 0;
  v7 = a1 + 72;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 16;
  *(a1 + 96) = a1 + 72;
  std::string::resize((a1 + 72), 0x16uLL, 0);
  v8 = *(a1 + 95);
  if (v8 < 0)
  {
    v8 = *(a1 + 80);
  }

  *(a1 + 48) = v7;
  *(a1 + 56) = v7;
  *(a1 + 64) = v7 + v8;
  return a1;
}

void sub_18891F054(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v1 + 8) = v3;
  std::locale::~locale((v1 + 16));
  std::ostream::~ostream();
  MEMORY[0x18CFD96D0](v2);
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v20[0] = 0xAAAAAAAAAAAAAAAALL;
  v20[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x18CFD9610](v20, a1);
  if (LOBYTE(v20[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(__b, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      HIBYTE(__b[2].__locale_) = v16;
      memset(__b, v9, v16);
      *(&__b[0].__locale_ + v16) = 0;
      if (SHIBYTE(__b[2].__locale_) >= 0)
      {
        locale = __b;
      }

      else
      {
        locale = __b[0].__locale_;
      }

      v18 = (*(*v7 + 96))(v7, locale, v16);
      if (SHIBYTE(__b[2].__locale_) < 0)
      {
        operator delete(__b[0].__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x18CFD9620](v20);
  return a1;
}

void sub_18891F354(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x18CFD9620](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x18891F328);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x18CFD96D0](a1 + 112);
  return a1;
}

void Security::CodeSigning::DYLDCacheRep::Writer::addDiscretionary(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  v5 = *(*(v4 + 80) + 20);
  v6 = bswap32(v5);
  if (*(v4 + 96))
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = 24 * (v7 + 1);
  *(a2 + 160) = v8;
  v9 = malloc_type_realloc(*(a2 + 152), v8, 0x1000040504FFAC1uLL);
  *(a2 + 152) = v9;
  if (!v9)
  {
    Security::UnixError::throwMe(0xC);
  }

  bzero(v9, *(a2 + 160));
  if (v7)
  {
    v10 = *(a1 + 128);
    v11 = *(v10 + 72);
    v12 = *(v10 + 96);
    v13 = bswap32(*(*(v10 + 80) + 16));
    if (!*(v10 + 96))
    {
      v13 = *(*(v10 + 80) + 16);
    }

    v14 = (*(a2 + 152) + 8);
    do
    {
      if (v13 + 32 > v11)
      {
        Security::UnixError::throwMe(8);
      }

      v15 = *(v10 + 64) + v13;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = bswap64(*v15);
      if (v12)
      {
        v16 = v18;
      }

      *v14 = bswap64(v16);
      v19 = *(v15 + 16);
      v20 = bswap64(v19);
      if (v12)
      {
        v19 = v20;
      }

      v21 = bswap32(v19 >> 12);
      v22 = bswap64(v17);
      if (v12)
      {
        v17 = v22;
      }

      *(v14 - 2) = bswap32(v17 >> 12);
      *(v14 - 1) = v21;
      v23 = *(v15 + 24);
      if (v12)
      {
        LOBYTE(v23) = HIBYTE(v23);
      }

      if ((v23 & 4) != 0)
      {
        *(a2 + 168) = v19;
        *(a2 + 176) = v17;
        *(a2 + 184) = 0;
      }

      v14 += 3;
      v13 += 32;
      --v7;
    }

    while (v7);
  }
}

void Security::CodeSigning::DYLDCacheRep::Writer::~Writer(Security::CodeSigning::DYLDCacheRep::Writer *this)
{
  Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::~Maker(this + 104);
  *this = &unk_1EFA8C070;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 96));
  Security::RefPointer<Security::CodeSigning::SingleDiskRep>::~RefPointer(this + 3);

  JUMPOUT(0x18CFD9760);
}

{
  Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::~Maker(this + 104);
  *this = &unk_1EFA8C070;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 96));
  Security::RefPointer<Security::CodeSigning::SingleDiskRep>::~RefPointer(this + 3);
}

uint64_t Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::~Maker(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      free(v3[5]);
      v4 = v3[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != v2);
  }

  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(a1 + 8));
  return a1;
}

void *Security::RefPointer<Security::CodeSigning::SingleDiskRep>::~RefPointer(void *a1)
{
  v2 = pthread_mutex_lock((a1 + 1));
  if (v2)
  {
    Security::UnixError::throwMe(v2);
  }

  if (*a1 && atomic_fetch_add_explicit((*a1 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    if (*a1)
    {
      (*(**a1 + 8))(*a1);
    }

    *a1 = 0;
  }

  v3 = pthread_mutex_unlock((a1 + 1));
  if (v3)
  {
    Security::UnixError::throwMe(v3);
  }

  Security::Mutex::~Mutex((a1 + 1));
  return a1;
}

uint64_t Security::CodeSigning::DYLDCacheRep::pageSize(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*a3 == 33554444 || *a3 == 16777228)
  {
    return 0x4000;
  }

  else
  {
    return 4096;
  }
}

void *Security::CodeSigning::DYLDCacheRep::format@<X0>(Security::CodeSigning::DYLDCacheRep *this@<X0>, void *a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = NXGetArchInfoFromCpuType(**(this + 11), *(*(this + 11) + 4) & 0xFFFFFF);
  if (v4 && (name = v4->name) != 0)
  {
    v16 = -1431655766;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v6;
    v15 = v6;
    v12 = v6;
    v13 = v6;
    *__str = v6;
    v11 = v6;
    v7 = *(*(this + 10) + 32);
    v8 = bswap64(v7);
    if (*(this + 96))
    {
      v7 = v8;
    }

    snprintf(__str, 0x64uLL, "OS X Shared Library Cache (%s @ 0x%llx)", name, v7);
    return std::string::basic_string[abi:ne200100]<0>(a2, __str);
  }

  else
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, "OS X Shared Library Cache (unknown type)");
  }
}

Security::CodeSigning::EmbeddedSignatureBlob *Security::CodeSigning::DYLDCacheRep::component(Security::CodeSigning::DYLDCacheRep *this, Security::CodeSigning::EmbeddedSignatureBlob *a2, const Security::BlobCore *a3)
{
  result = *(this + 15);
  if (result)
  {
    return Security::CodeSigning::EmbeddedSignatureBlob::component(result, a2, a3);
  }

  return result;
}

void Security::CodeSigning::DYLDCacheRep::~DYLDCacheRep(void **this)
{
  *this = &unk_1EFA8AFC0;
  DYLDCache::~DYLDCache((this + 6));
  *this = &unk_1EFA8C1B0;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 5));
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  Security::CodeSigning::DiskRep::~DiskRep(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8AFC0;
  DYLDCache::~DYLDCache((this + 6));
  *this = &unk_1EFA8C1B0;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 5));
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  Security::CodeSigning::DiskRep::~DiskRep(this);
}

void Security::CodeSigning::SingleDiskRep::~SingleDiskRep(void **this)
{
  *this = &unk_1EFA8C1B0;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 5));
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  Security::CodeSigning::DiskRep::~DiskRep(this);
}

uint64_t Security::CodeSigning::DirScanner::DirScanner(uint64_t a1, const std::string *a2)
{
  *(a1 + 1080) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::string::operator=(a1, a2);
  if (*(a1 + 24))
  {
    Security::MacOSError::throwMe(0xFFFEF7A9);
  }

  *__error() = 0;
  v3 = a1;
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;
  }

  v4 = opendir(v3);
  *(a1 + 24) = v4;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    if (*__error() != 2)
    {
      v7 = __error();
      Security::UnixError::throwMe(*v7);
    }

    v5 = 0;
  }

  *(a1 + 1080) = v5;
  return a1;
}

void sub_18891FBD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void Security::CodeSigning::DirScanner::~DirScanner(Security::CodeSigning::DirScanner *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    closedir(v2);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

dirent *Security::CodeSigning::DirScanner::getNext(Security::CodeSigning::DirScanner *this)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  do
  {
    v2 = readdir_r(*(this + 3), (this + 32), &v4);
    if (v2)
    {
      Security::UnixError::throwMe(v2);
    }

    result = v4;
  }

  while (v4 && v4->d_name[0] == 46 && (!v4->d_name[1] || v4->d_name[1] == 46 && !v4->d_name[2]));
  return result;
}

BOOL Security::CodeSigning::DirScanner::isRegularFile(Security::CodeSigning::DirScanner *this, dirent *a2)
{
  if (a2->d_type)
  {
    return a2->d_type == 8;
  }

  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v17.st_blksize = v5;
  *v17.st_qspare = v5;
  v17.st_birthtimespec = v5;
  *&v17.st_size = v5;
  v17.st_mtimespec = v5;
  v17.st_ctimespec = v5;
  *&v17.st_uid = v5;
  v17.st_atimespec = v5;
  *&v17.st_dev = v5;
  if (*(this + 23) >= 0)
  {
    v6 = *(this + 23);
  }

  else
  {
    v6 = *(this + 1);
  }

  memset(&v14, 170, sizeof(v14));
  v7 = &v14;
  std::string::basic_string[abi:ne200100](&v14, v6 + 1);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v14.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(this + 23) >= 0)
    {
      v8 = this;
    }

    else
    {
      v8 = *this;
    }

    memmove(v7, v8, v6);
  }

  *(&v7->__r_.__value_.__l.__data_ + v6) = 47;
  v9 = strlen(a2->d_name);
  v10 = std::string::append(&v14, a2->d_name, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v16 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v16 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  v13 = stat(v12, &v17);
  if (v13)
  {
    Security::MacOSError::throwMe(v13);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return (v17.st_mode & 0xF000) == 0x8000;
}

void sub_18891FE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Security::CodeSigning::DirValidator::~DirValidator(Security::CodeSigning::ResourceBuilder::Rule ***this)
{
  v3 = *this;
  v2 = this[1];
  if (*this != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {
        v5 = *(v4 + 8);
        if (v5)
        {
          _Block_release(v5);
        }

        Security::CodeSigning::ResourceBuilder::Rule::~Rule(v4);
        MEMORY[0x18CFD9760]();
        v2 = this[1];
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *this;
  }

  if (v3)
  {
    this[1] = v3;
    operator delete(v3);
  }
}

void Security::CodeSigning::DirValidator::validate(const regex_t ***a1, uint64_t a2, unsigned int a3)
{
  __b[129] = *MEMORY[0x1E69E9840];
  v56 = 0;
  v57 = 0;
  v55 = &v56;
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  __b[0] = v6;
  __b[1] = 0;
  v7 = fts_open(__b, 21, 0);
  v50 = a3;
  if (!v7)
  {
    v49 = __error();
    Security::UnixError::throwMe(*v49);
  }

LABEL_5:
  while (1)
  {
    v8 = fts_read(v7);
    v9 = v8;
    if (!v8)
    {
      break;
    }

    v10 = *(a2 + 23);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 8);
    }

    v11 = &v8->fts_path[v10];
    v12 = v8->fts_statp->st_mode & 0x49;
    fts_info = v8->fts_info;
    v14 = secLogObjForScope("dirval");
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if (fts_info > 7)
    {
      if (fts_info == 12)
      {
        if (v15)
        {
          fts_path = v9->fts_path;
          LODWORD(__b[0]) = 136315138;
          *(__b + 4) = fts_path;
          _os_log_debug_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEBUG, "symlink %s", __b, 0xCu);
        }

        memset(__b, 170, 0x400uLL);
        v27 = readlink(v9->fts_accpath, __b, 0x3FFuLL);
        if (v27 < 0)
        {
          v45 = __error();
          Security::UnixError::throwMe(*v45);
        }

        *(__b + v27) = 0;
        v19 = Security::CodeSigning::DirValidator::match(a1, v11 + 1, 4, v12 != 0, __b);
      }

      else
      {
        if (fts_info != 8)
        {
LABEL_74:
          if (v15)
          {
            v46 = v9->fts_info;
            fts_errno = v9->fts_errno;
            v48 = v9->fts_path;
            LODWORD(__b[0]) = 67109634;
            HIDWORD(__b[0]) = v46;
            LOWORD(__b[1]) = 1024;
            *(&__b[1] + 2) = fts_errno;
            HIWORD(__b[1]) = 2080;
            __b[2] = v48;
            _os_log_debug_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEBUG, "type %d (errno %d): %s", __b, 0x18u);
          }

          Security::MacOSError::throwMe(v50);
        }

        if (v15)
        {
          v35 = v9->fts_path;
          LODWORD(__b[0]) = 136315138;
          *(__b + 4) = v35;
          _os_log_debug_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEBUG, "file %s", __b, 0xCu);
        }

        v19 = Security::CodeSigning::DirValidator::match(a1, v11 + 1, 1, v12 != 0, 0);
      }

      v22 = v19;
      if (v19)
      {
        goto LABEL_24;
      }

LABEL_38:
      if (v9->fts_info != 8 || (*(a2 + 23) >= 0 ? (v28 = a2) : (v28 = *a2), !Security::CodeSigning::pathFileSystemUsesXattrFiles(v28, v20)))
      {
LABEL_72:
        Security::MacOSError::throwMe(v50);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v9->fts_path);
      IsValidXattrFile = Security::CodeSigning::pathIsValidXattrFile(__p, "csutilities");
      v30 = IsValidXattrFile;
      if (v54 < 0)
      {
        operator delete(__p[0]);
        if ((v30 & 1) == 0)
        {
          goto LABEL_72;
        }
      }

      else if (!IsValidXattrFile)
      {
        goto LABEL_72;
      }

      v31 = secLogObjForScope("dirval");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = v9->fts_path;
        LODWORD(__b[0]) = 136315138;
        *(__b + 4) = v32;
        v17 = v31;
        v18 = "skipping file due to xattr: %s";
LABEL_49:
        _os_log_debug_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEBUG, v18, __b, 0xCu);
      }
    }

    else if (fts_info == 1)
    {
      if (v15)
      {
        v33 = v9->fts_path;
        LODWORD(__b[0]) = 136315138;
        *(__b + 4) = v33;
        _os_log_debug_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEBUG, "entering %s", __b, 0xCu);
      }

      if (v9->fts_level)
      {
        v21 = Security::CodeSigning::DirValidator::match(a1, v11 + 1, 2, v12 != 0, 0);
        v22 = v21;
        if (v21)
        {
          v23 = *(&v21[1].re_magic + 1);
          if ((v23 & 0x20) != 0)
          {
            goto LABEL_25;
          }
        }

        fts_set(v7, v9, 4);
        if (!v22)
        {
          goto LABEL_38;
        }

LABEL_24:
        v23 = *(&v22[1].re_magic + 1);
LABEL_25:
        if ((v23 & 0x10) != 0)
        {
          for (i = v56; i; i = *v25)
          {
            while (1)
            {
              v25 = i;
              v26 = i[4];
              if (v22 < v26)
              {
                break;
              }

              if (v26 >= v22)
              {
                goto LABEL_5;
              }

              i = v25[1];
              if (!i)
              {
                goto LABEL_50;
              }
            }
          }

LABEL_50:
          operator new();
        }
      }
    }

    else
    {
      if (fts_info != 6)
      {
        goto LABEL_74;
      }

      if (v15)
      {
        v16 = v9->fts_path;
        LODWORD(__b[0]) = 136315138;
        *(__b + 4) = v16;
        v17 = v14;
        v18 = "leaving %s";
        goto LABEL_49;
      }
    }
  }

  if (v57 != *(a1 + 6))
  {
    __b[32] = 0xAAAAAAAAAAAAAAAALL;
    *&v36 = 0xAAAAAAAAAAAAAAAALL;
    *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&__b[28] = v36;
    *&__b[30] = v36;
    *&__b[24] = v36;
    *&__b[26] = v36;
    *&__b[20] = v36;
    *&__b[22] = v36;
    *&__b[16] = v36;
    *&__b[18] = v36;
    *&__b[12] = v36;
    *&__b[14] = v36;
    *&__b[8] = v36;
    *&__b[10] = v36;
    *&__b[6] = v36;
    *&__b[2] = v36;
    *&__b[4] = v36;
    *__b = v36;
    std::ostringstream::basic_ostringstream[abi:ne200100](__b);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__b, "matched ", 8);
    v37 = MEMORY[0x18CFD9670](__b, v57);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " of ", 4);
    v39 = MEMORY[0x18CFD9650](v38, *(a1 + 6));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " required rules", 15);
    v40 = secLogObjForScope("dirval");
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_71;
    }

    if ((__b[13] & 0x10) != 0)
    {
      v42 = __b[12];
      if (__b[12] < __b[7])
      {
        __b[12] = __b[7];
        v42 = __b[7];
      }

      v43 = __b[6];
    }

    else
    {
      if ((__b[13] & 8) == 0)
      {
        v41 = 0;
        v52 = 0;
LABEL_67:
        *(&__dst + v41) = 0;
        p_dst = &__dst;
        if (v52 < 0)
        {
          p_dst = __dst;
        }

        *buf = 136315138;
        v59 = p_dst;
        _os_log_debug_impl(&dword_1887D2000, v40, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
        if (v52 < 0)
        {
          operator delete(__dst);
        }

LABEL_71:
        Security::MacOSError::throwMe(v50);
      }

      v43 = __b[3];
      v42 = __b[5];
    }

    v41 = v42 - v43;
    if ((v42 - v43) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v41 >= 0x17)
    {
      operator new();
    }

    v52 = v42 - v43;
    if (v41)
    {
      memmove(&__dst, v43, v41);
    }

    goto LABEL_67;
  }

  fts_close(v7);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v56);
}

void sub_188920580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  fts_close(v42);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(a24);
  _Unwind_Resume(a1);
}

const regex_t *Security::CodeSigning::DirValidator::match(const regex_t ***this, char *a2, int a3, char a4, char *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if (*this != this[1])
  {
    while (1)
    {
      v11 = *v5;
      v12 = *(&(*v5)[1].re_magic + 1);
      if ((v12 & a3) != 0 && ((v12 & 8) == 0 || (a4 & 1) == 0))
      {
        if (Security::CodeSigning::ResourceBuilder::Rule::match(*v5, a2))
        {
          break;
        }
      }

LABEL_29:
      if (++v5 == this[1])
      {
        return 0;
      }
    }

    if (!a5)
    {
      return v11;
    }

    v14 = *&v11[2].re_magic;
    if (!v14)
    {
      Security::Syslog::notice("code signing internal problem: !mTargetBlock", v13);
      Security::MacOSError::throwMe(0xFFFEFA18);
    }

    memset(v27, 170, sizeof(v27));
    std::string::basic_string[abi:ne200100]<0>(&v28, a2);
    std::string::basic_string[abi:ne200100]<0>(__p, a5);
    (*(v14 + 16))(v27, v14, &v28, __p);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v28.re_endp) < 0)
    {
      operator delete(*&v28.re_magic);
    }

    v15 = HIBYTE(v27[2]);
    if (SHIBYTE(v27[2]) < 0)
    {
      v15 = v27[1];
    }

    if (v15)
    {
      v16 = secLogObjForScope("dirval");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        if (SHIBYTE(v27[2]) >= 0)
        {
          v23 = v27;
        }

        else
        {
          v23 = v27[0];
        }

        v28.re_magic = 136315650;
        *(&v28.re_magic + 1) = a2;
        WORD2(v28.re_nsub) = 2080;
        *(&v28.re_nsub + 6) = a5;
        HIWORD(v28.re_endp) = 2080;
        v28.re_g = v23;
        _os_log_debug_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEBUG, "%s: match target %s against %s", &v28, 0x20u);
      }

      *&v17 = 0xAAAAAAAAAAAAAAAALL;
      *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v28.re_magic = v17;
      *&v28.re_endp = v17;
      if (SHIBYTE(v27[2]) >= 0)
      {
        v18 = v27;
      }

      else
      {
        v18 = v27[0];
      }

      if (regcomp(&v28, v18, 5))
      {
        Security::Syslog::notice("code signing internal problem: failed to compile internal RE", v19);
        Security::MacOSError::throwMe(0xFFFEFA18);
      }

      v20 = regexec(&v28, a5, 0, 0, 0);
      MEMORY[0x18CFDB4E0](&v28);
      if (v20)
      {
        if (v20 != 1)
        {
          Security::Syslog::notice("code signing internal error: regexec failed error=%d", v21, v20);
          Security::MacOSError::throwMe(0xFFFEFA18);
        }

        v22 = 0;
      }

      else
      {
        v22 = 1;
      }

      if ((HIBYTE(v27[2]) & 0x80) == 0)
      {
LABEL_28:
        if (v22)
        {
          return v11;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v22 = 1;
      if ((HIBYTE(v27[2]) & 0x80) == 0)
      {
        goto LABEL_28;
      }
    }

    operator delete(v27[0]);
    goto LABEL_28;
  }

  return 0;
}

void sub_1889209A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Security::CodeSigning::DirValidator::Rule::Rule(uint64_t a1, __int128 *a2, uint64_t a3, const void *a4)
{
  *&Security::CodeSigning::ResourceBuilder::Rule::Rule(a1, a2, 0, a3)[2].re_magic = 0;
  if (a4)
  {
    *(a1 + 64) = _Block_copy(a4);
  }

  return a1;
}

void Security::CodeSigning::registerStapledTicketWithSystem(Security::CodeSigning *this, const __CFData *a2)
{
  if (this)
  {
    v2 = secLogObjForScope("notarization");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEBUG, "Registering stapled ticket with system", v3, 2u);
    }
  }
}

const void **Security::CFRef<__CFError *>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_188920B24(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x188920B1CLL);
}

uint64_t SecCodeSignerCreate(const __CFDictionary *a1, int a2, void *a3)
{
  if ((a2 & 0xFEFFF000) != 0)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v11 = 0xAAAAAAAAAAAAAAAALL;
  v6 = Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()();
  v8 = Security::SecCFObject::allocate(0x140, *(v6 + 408), v7);
  *(v8 + 8) = 1;
  *v8 = &unk_1EFA8B958;
  *(v8 + 16) = a2;
  *(v8 + 168) = 0;
  *(v8 + 160) = 0;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 152) = v8 + 160;
  *(v8 + 288) = 0;
  *(v8 + 296) = 0;
  *(v8 + 176) = 0u;
  *(v8 + 192) = 0u;
  *(v8 + 208) = 0u;
  *(v8 + 224) = 0u;
  *(v8 + 240) = 0;
  *(v8 + 256) = 0;
  *(v8 + 264) = 0;
  *(v8 + 272) = 0;
  *(v8 + 304) = 0;
  *(v8 + 312) = 0;
  Security::SecPointerBase::SecPointerBase(&v11, v8);
  Security::CodeSigning::SecCodeSigner::parameters(v11, a1);
  v9 = Security::SecCFObject::handle(v11, 1);
  if (!a3)
  {
    Security::MacOSError::throwMe(0xFFFEFA03);
  }

  *a3 = v9;
  Security::SecPointerBase::~SecPointerBase(&v11);
  return 0;
}

void sub_188920F74(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  switch(a2)
  {
    case 6:
      v11 = __cxa_begin_catch(a1);
      if (v11[36] == 8)
      {
        break;
      }

LABEL_6:
      (*(*v11 + 24))(v11);
      break;
    case 5:
      goto LABEL_5;
    case 4:
      v11 = __cxa_begin_catch(a1);
      v13 = v11[36];
      if (v13 > 0x1A)
      {
        goto LABEL_6;
      }

      v14 = 1 << v13;
      if ((v14 & 0x800108) == 0 && (v14 & 0x4014000) == 0)
      {
        goto LABEL_6;
      }

      break;
    case 3:
LABEL_5:
      v12 = __cxa_begin_catch(a1);
      (*(*v12 + 24))(v12);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v15);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x188920F3CLL);
}

uint64_t SecCodeSignerAddSignatureWithErrors(uint64_t a1, Security::CodeSigning::SecStaticCode *a2, int a3)
{
  if ((a3 & 0xEFFFFFFF) != 0)
  {
    v3 = 4294900226;
    goto LABEL_6;
  }

  v3 = 4294900225;
  {
LABEL_6:
    Security::MacOSError::throwMe(v3);
  }

  v8 = v6;
  v9 = Security::CodeSigning::SecStaticCode::required(a2, v7);
  Security::CodeSigning::SecCodeSigner::sign(v8, v9, a3);
  return 0;
}

void *Security::CodeSigning::SecStaticCode::required(Security::CodeSigning::SecStaticCode *this, const __SecCode *a2)
{
  {
    Security::MacOSError::throwMe(0xFFFEFA01);
  }

  return result;
}

CFDateRef Security::CodeSigning::copyCutOffDate(const __CFString *this, const __CFString *a2, CFAbsoluteTime a3)
{
  v4 = CFDateCreate(0, a3);
  v5 = CFPreferencesCopyValue(this, @"com.apple.security.syspolicy", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (!v5)
  {
    CFRetain(v4);
    v8 = v4;
    if (!v4)
    {
      return v8;
    }

    goto LABEL_7;
  }

  v6 = v5;
  v7 = CFGetTypeID(v5);
  v8 = v4;
  if (v7 == CFDateGetTypeID())
  {
    if (CFDateCompare(v4, v6, 0) <= kCFCompareEqualTo)
    {
      v8 = v4;
    }

    else
    {
      v8 = v6;
    }
  }

  CFRetain(v8);
  CFRelease(v6);
  if (v4)
  {
LABEL_7:
    CFRelease(v4);
  }

  return v8;
}

void Security::CodeSigning::SecCode::checkValidity(uint64_t this, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!*(this + 16))
  {
    return;
  }

  Security::CodeSigning::SecCode::checkValidity(*(this + 16), a2);
  if ((*(this + 24) & 1) == 0)
  {
    (*(*this + 80))(this);
    *(this + 24) = 1;
  }

  v4 = *(this + 32);
  *(v4 + 208) = a2;
  v5 = *(this + 16);
  if ((*(v5 + 24) & 1) == 0)
  {
    (*(*v5 + 80))(*(this + 16));
    *(v5 + 24) = 1;
  }

  v6 = *(v5 + 32);
  Security::CodeSigning::SecStaticCode::validateNonResourceComponents(v4);
  if ((a2 & 0x10) != 0)
  {
    v9 = *(v4 + 32);
    v10 = Security::CodeSigning::SecStaticCode::codeDirectory(v4, 1);
    *&__p[8] = 0;
    *&__p[16] = 0;
    *__p = &__p[8];
    (*(*v9 + 232))(v9, v10, __p, a2);
    goto LABEL_11;
  }

  if ((a2 & 0x2000) != 0)
  {
    v7 = *(v4 + 32);
    v8 = Security::CodeSigning::SecStaticCode::codeDirectory(v4, 1);
    *&__p[8] = 0;
    *&__p[16] = 0;
    *__p = &__p[8];
    (*(*v7 + 240))(v7, v8, __p, a2);
LABEL_11:
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*&__p[8]);
  }

  v11 = (*(**(this + 16) + 104))(*(this + 16), this);
  if ((v11 & 1) == 0)
  {
    v12 = os_variant_allows_internal_security_policies();
    if ((v11 & 0x10000000) == 0 || !(((v11 & 0x4000000) == 0) | v12 & 1))
    {
      Security::MacOSError::throwMe(0xFFFEFA09);
    }
  }

  if (*(this + 24))
  {
    v14 = (this + 40);
    v13 = *(this + 40);
    if (!v13)
    {
      goto LABEL_20;
    }

LABEL_19:
    v15 = Security::CodeSigning::SecStaticCode::cdHash(v4);
    if (!CFEqual(v13, v15))
    {
      v16 = (*(**(v4 + 32) + 48))(*(v4 + 32));
      v17 = secLogObjForScope("SecCode");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        if ((*(this + 24) & 1) == 0)
        {
          (*(*this + 80))(this);
          *(this + 24) = 1;
        }

        v18 = *v14;
        v19 = Security::CodeSigning::SecStaticCode::cdHash(v4);
        *__p = 138412802;
        *&__p[4] = v16;
        *&__p[12] = 2112;
        *&__p[14] = v18;
        *&__p[22] = 2112;
        v21 = v19;
        _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "cdhash mismatch: %@, %@, %@", __p, 0x20u);
      }

      Security::MacOSError::throwMe(0xFFFEFA26);
    }

    goto LABEL_20;
  }

  (*(*this + 80))(this);
  v14 = (this + 40);
  v13 = *(this + 40);
  *(this + 24) = 1;
  if (v13)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (*(*(this + 16) + 16))
  {
    Security::CodeSigning::SecStaticCode::validateRequirements(v4, kSecHostRequirementType, v6, 4294900249);
    Security::CodeSigning::SecStaticCode::validateRequirements(v6, kSecGuestRequirementType, v4, 0);
  }

  Security::CodeSigning::SecCode::checkValidity::_DTFrameCODESIGN_EVAL_DYNAMIC::~_DTFrameCODESIGN_EVAL_DYNAMIC();
}

void sub_188921A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  Security::CFRef<__CFURL const*>::~CFRef(&a9);
  Security::CodeSigning::SecCode::checkValidity::_DTFrameCODESIGN_EVAL_DYNAMIC::~_DTFrameCODESIGN_EVAL_DYNAMIC();
  _Unwind_Resume(a1);
}

uint64_t Security::CodeSigning::BundleDiskRep::createRawComponents@<X0>(Security::CodeSigning::BundleDiskRep *this@<X0>, void *a2@<X8>)
{
  v4 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v13 = 0;
  do
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
    v5 = Security::CodeSigning::CodeDirectory::canonicalSlotName(v4);
    if (v5)
    {
      v12 = Security::CodeSigning::BundleDiskRep::metaData(this, v5);
      if (v12)
      {
        v14 = &v13;
        v6 = std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a2, v13, &v14);
        Security::CFRef<__CFURL const*>::operator=(v6 + 5, &v12);
      }
    }

    else
    {
      v12 = 0;
    }

    Security::CFRef<__CFData const*>::~CFRef(&v12);
    v7 = v13;
    v4 = ++v13;
  }

  while (v7 < 10);
  result = 4096;
  v13 = 4096;
  do
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
    v9 = Security::CodeSigning::CodeDirectory::canonicalSlotName(result);
    if (v9)
    {
      v12 = Security::CodeSigning::BundleDiskRep::metaData(this, v9);
      if (v12)
      {
        v14 = &v13;
        v10 = std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a2, v13, &v14);
        Security::CFRef<__CFURL const*>::operator=(v10 + 5, &v12);
      }
    }

    else
    {
      v12 = 0;
    }

    Security::CFRef<__CFData const*>::~CFRef(&v12);
    v11 = v13;
    result = ++v13;
  }

  while (v11 < 4100);
  return result;
}

uint64_t **std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_188921EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Security::StLock<Security::Mutex,&Security::Mutex::lock,&Security::Mutex::unlock>::~StLock(&a9);
  std::__tree<std::string>::destroy(*v12);
  Security::RefPointer<Security::CodeSigning::DiskRep::Writer>::~RefPointer(v11);
  Security::RefPointer<Security::CodeSigning::BundleDiskRep>::~RefPointer((v9 + 24));
  MEMORY[0x18CFD9760](v9, v10);
  _Unwind_Resume(a1);
}

void std::__tree<std::string>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::string>::destroy(*a1);
    std::__tree<std::string>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t Security::RefPointer<Security::CodeSigning::DiskRep::Writer>::~RefPointer(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = pthread_mutex_lock((a1 + 8));
  if (v3)
  {
    Security::UnixError::throwMe(v3);
  }

  Security::RefPointer<Security::CodeSigning::DiskRep::Writer>::release_internal(a1);
  v4 = pthread_mutex_unlock(v2);
  if (v4)
  {
    Security::UnixError::throwMe(v4);
  }

  Security::Mutex::~Mutex(v2);
  return a1;
}

void *Security::RefPointer<Security::CodeSigning::BundleDiskRep>::~RefPointer(void *a1)
{
  v2 = pthread_mutex_lock((a1 + 1));
  if (v2)
  {
    Security::UnixError::throwMe(v2);
  }

  if (*a1 && atomic_fetch_add_explicit((*a1 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    if (*a1)
    {
      (*(**a1 + 8))(*a1);
    }

    *a1 = 0;
  }

  v3 = pthread_mutex_unlock((a1 + 1));
  if (v3)
  {
    Security::UnixError::throwMe(v3);
  }

  Security::Mutex::~Mutex((a1 + 1));
  return a1;
}

void *Security::RefPointer<Security::CodeSigning::DiskRep::Writer>::release_internal(void *result)
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

void Security::CodeSigning::BundleDiskRep::Writer::flush(Security::CodeSigning::BundleDiskRep::Writer *this)
{
  __b[136] = *MEMORY[0x1E69E9840];
  (*(**(this + 12) + 48))(*(this + 12));
  memset(__b, 170, 0x440uLL);
  v2 = *(this + 3);
  if (*(v2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(v2 + 32), *(v2 + 40));
  }

  else
  {
    v9 = *(v2 + 32);
  }

  Security::CodeSigning::DirScanner::DirScanner(__b, &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (LOBYTE(__b[135]) == 1)
  {
    while (1)
    {
      Next = Security::CodeSigning::DirScanner::getNext(__b);
      if (!Next)
      {
        break;
      }

      if (!Security::CodeSigning::DirScanner::isRegularFile(__b, Next))
      {
        Security::MacOSError::throwMe(0xFFFEFA3ALL);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, Next->d_name);
      v4 = std::__tree<std::string>::find<std::string>(this + 176, __p);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      if ((this + 184) == v4)
      {
        if (!__b[3] || (v5 = dirfd(__b[3]), v5 == -1) || unlinkat(v5, Next->d_name, 0) == -1)
        {
          v6 = __error();
          Security::UnixError::throwMe(*v6);
        }
      }
    }
  }

  Security::CodeSigning::DirScanner::~DirScanner(__b);
}

uint64_t std::__tree<std::string>::find<std::string>(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void Security::CodeSigning::BundleDiskRep::Writer::remove(Security::CodeSigning::BundleDiskRep::Writer *this)
{
  (*(**(this + 12) + 40))(*(this + 12));
  v2 = 0;
  do
  {
    Security::CodeSigning::BundleDiskRep::Writer::remove(this, v2);
    v2 = (v2 + 1);
  }

  while (v2 != 12);

  Security::CodeSigning::BundleDiskRep::Writer::remove(this, 0x10000);
}

void Security::CodeSigning::BundleDiskRep::Writer::remove(const char **this, Security::CodeSigning::CodeDirectory *a2)
{
  v3 = Security::CodeSigning::CodeDirectory::canonicalSlotName(a2);
  if (v3)
  {
    Security::CodeSigning::BundleDiskRep::metaPath(&v10, this[3], v3);
    v4 = SHIBYTE(v10.__r_.__value_.__r.__words[2]);
    v5 = v10.__r_.__value_.__r.__words[0];
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v10;
    }

    else
    {
      v6 = v10.__r_.__value_.__r.__words[0];
    }

    v7 = unlink(v6);
    v8 = v7;
    if (v4 < 0)
    {
      operator delete(v5);
      if (!v8)
      {
        return;
      }
    }

    else if (!v7)
    {
      return;
    }

    if (*__error() != 2)
    {
      v9 = __error();
      Security::UnixError::throwMe(*v9);
    }
  }
}

void Security::CodeSigning::BundleDiskRep::Writer::component(Security::CodeSigning::BundleDiskRep::Writer *this, Security::CodeSigning::CodeDirectory *a2, const __CFData *a3)
{
  if (a2 == 3)
  {
    v5 = "CodeResources";
LABEL_8:
    v8 = *(this + 3);
    memset(&__str, 170, sizeof(__str));
    Security::CodeSigning::BundleDiskRep::metaPath(&__str, v8, 0);
    if ((*(v8 + 56) & 1) == 0)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if (mkdir(p_str, 0x1EDu))
      {
        if (*__error() != 17)
        {
          v10 = __error();
          Security::UnixError::throwMe(*v10);
        }
      }

      else
      {
        v11 = (*(*v8 + 48))(v8);
        Security::cfStringRelease(__p, v11);
        if (v19 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &__str;
        }

        else
        {
          v13 = __str.__r_.__value_.__r.__words[0];
        }

        copyfile(v12, v13, 0, 3u);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }

        std::string::operator=((v8 + 32), &__str);
        *(v8 + 56) = 1;
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    memset(&__str, 170, sizeof(__str));
    Security::CodeSigning::BundleDiskRep::metaPath(&__str, *(this + 3), v5);
    v17 = 0xAAAAAAAAFFFFFFFFLL;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &__str;
    }

    else
    {
      v14 = __str.__r_.__value_.__r.__words[0];
    }

    Security::UnixPlusPlus::FileDesc::open(&v17, v14, 1537, 420);
    BytePtr = CFDataGetBytePtr(a3);
    Length = CFDataGetLength(a3);
    Security::UnixPlusPlus::FileDesc::writeAll(&v17, BytePtr, Length);
    Security::UnixPlusPlus::FileDesc::close(&v17);
    std::string::basic_string[abi:ne200100]<0>(__p, v5);
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 22, __p, __p);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    Security::UnixPlusPlus::FileDesc::closeAndLog(&v17);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    return;
  }

  v6 = *(this + 12);
  if (v6[20])
  {
    v5 = Security::CodeSigning::CodeDirectory::canonicalSlotName(a2);
    if (!v5)
    {
      Security::MacOSError::throwMe(0xFFFEFA2CLL);
    }

    goto LABEL_8;
  }

  v7 = *(*v6 + 16);

  v7();
}

void sub_188922794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(uint64_t **a1, void *a2, uint64_t a3)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  result = std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void *std::__tree<std::string>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void Security::CodeSigning::BundleDiskRep::Writer::~Writer(char **this)
{
  *this = &unk_1EFA8B2E8;
  std::__tree<std::string>::destroy(this[23]);
  Security::RefPointer<Security::CodeSigning::DiskRep::Writer>::~RefPointer((this + 12));
  Security::RefPointer<Security::CodeSigning::BundleDiskRep>::~RefPointer(this + 3);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8B2E8;
  std::__tree<std::string>::destroy(this[23]);
  Security::RefPointer<Security::CodeSigning::DiskRep::Writer>::~RefPointer((this + 12));
  Security::RefPointer<Security::CodeSigning::BundleDiskRep>::~RefPointer(this + 3);
}

CFDataRef Security::CodeSigning::BundleDiskRep::allowedResourceOmissions(CFBundleRef *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v20, "^");
  Security::CodeSigning::BundleDiskRep::resourcesRelativePath(__p, this);
  if ((v19 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v3 = v19;
  }

  else
  {
    v3 = __p[1];
  }

  v4 = std::string::append(&v20, v2, v3);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v21, ".*\\.lproj/locversion.plist$", 0x1BuLL);
  v14 = *&v6->__r_.__value_.__l.__data_;
  v23 = v6->__r_.__value_.__r.__words[2];
  v22 = v14;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v15 = &v22;
  if (v23 < 0)
  {
    v15 = v22;
  }

  v16 = Security::cfmake<__CFArray const*>(v6, v7, v8, v9, v10, v11, v12, v13, v15);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return v16;
}

void sub_188922B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void Security::CodeSigning::BundleDiskRep::resourcesRelativePath(Security::CodeSigning::BundleDiskRep *this, CFBundleRef *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  memset(&__str, 170, sizeof(__str));
  (*(*a2 + 7))(&__str, a2);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size >= 3)
  {
    v6 = p_str + size;
    v7 = size;
    v8 = p_str;
    do
    {
      v9 = memchr(v8, 47, v7 - 2);
      if (!v9)
      {
        break;
      }

      if (*v9 == 11823 && v9[2] == 47)
      {
        if (v9 != v6)
        {
          v11 = v9 - p_str;
          if (v9 - p_str != -1)
          {
LABEL_18:
            v12 = std::string::replace(&__str, v11, 2uLL, &unk_188967DD7, 0);
            std::string::operator=(&__str, v12);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v13 = &__str;
            }

            else
            {
              v13 = __str.__r_.__value_.__r.__words[0];
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __str.__r_.__value_.__l.__size_;
            }

            if (size >= 3)
            {
              v14 = v13 + size;
              v15 = size;
              v16 = v13;
              while (1)
              {
                v17 = memchr(v16, 47, v15 - 2);
                if (!v17)
                {
                  break;
                }

                if (*v17 == 11823 && v17[2] == 47)
                {
                  if (v17 != v14)
                  {
                    v11 = v17 - v13;
                    if (v17 - v13 != -1)
                    {
                      goto LABEL_18;
                    }
                  }

                  goto LABEL_35;
                }

                v16 = (v17 + 1);
                v15 = v14 - v16;
                if (v14 - v16 < 3)
                {
                  goto LABEL_35;
                }
              }
            }
          }
        }

        break;
      }

      v8 = (v9 + 1);
      v7 = v6 - v8;
    }

    while (v6 - v8 >= 3);
  }

LABEL_35:
  std::string::basic_string(&v33, &__str, size - 2, 2uLL, v36);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v33.__r_.__value_.__l.__size_ != 2)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
      goto LABEL_47;
    }

    v19 = *v33.__r_.__value_.__l.__data_;
    operator delete(v33.__r_.__value_.__l.__data_);
    if (v19 != 11823)
    {
      goto LABEL_47;
    }
  }

  else if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) != 2 || LOWORD(v33.__r_.__value_.__l.__data_) != 11823)
  {
    goto LABEL_47;
  }

  v20 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = __str.__r_.__value_.__l.__size_;
  }

  std::string::basic_string(&v33, &__str, 0, v20 - 2, v36);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = v33;
LABEL_47:
  *(this + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21 = (this + 8);
  *(this + 2) = 0xAAAAAAAAAAAAAAAALL;
  *this = 0xAAAAAAAAAAAAAAAALL;
  v22 = CFBundleCopyResourcesDirectoryURL(a2[3]);
  Security::cfStringRelease(this, v22);
  v23 = *(this + 23);
  if (v23 >= 0)
  {
    v24 = *(this + 23);
  }

  else
  {
    v24 = *(this + 1);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = __str.__r_.__value_.__l.__size_;
  }

  if (v24 == v25 && ((v26 = *this, v23 >= 0) ? (v27 = this) : (v27 = *this), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v28 = &__str) : (v28 = __str.__r_.__value_.__r.__words[0]), !memcmp(v27, v28, v24)))
  {
    if (v23 < 0)
    {
      *v21 = 0;
      this = v26;
    }

    else
    {
      *(this + 23) = 0;
    }

    *this = 0;
  }

  else
  {
    if (std::string::compare(this, 0, v25, &__str, 0, v25))
    {
      Security::MacOSError::throwMe(0xFFFEFA2CLL);
    }

    v29 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v29 = __str.__r_.__value_.__l.__size_;
    }

    std::string::basic_string(&v33, this, v29 + 1, 0xFFFFFFFFFFFFFFFFLL, &v35);
    v30 = std::string::append(&v33, "/", 1uLL);
    v31 = v30->__r_.__value_.__r.__words[0];
    *v36 = v30->__r_.__value_.__l.__size_;
    *&v36[7] = *(&v30->__r_.__value_.__r.__words[1] + 7);
    v32 = HIBYTE(v30->__r_.__value_.__r.__words[2]);
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = v31;
    *v21 = *v36;
    *(this + 15) = *&v36[7];
    *(this + 23) = v32;
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}
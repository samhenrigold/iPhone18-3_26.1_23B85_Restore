id logger(uint64_t a1)
{
  if (logger_onceToken != -1)
  {
    logger_cold_1();
  }

  v2 = logger_log;

  return v2;
}

id logger_0(uint64_t a1)
{
  if (logger_onceToken_0 != -1)
  {
    logger_cold_1_0();
  }

  v2 = logger_log_0;

  return v2;
}

id logger_1(uint64_t a1)
{
  if (logger_onceToken_1 != -1)
  {
    logger_cold_1_1();
  }

  v2 = logger_log_1;

  return v2;
}

id logger_2(uint64_t a1)
{
  if (logger_onceToken_2 != -1)
  {
    logger_cold_1_2();
  }

  v2 = logger_log_2;

  return v2;
}

void sub_1DF25CB30()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    greenTeaDeviceCapability = MobileGestalt_get_greenTeaDeviceCapability();

    qword_1ED5EC898 = greenTeaDeviceCapability;
  }

  else
  {
    __break(1u);
  }
}

void PARegisterUserInfoValueProviderForPAErrorDomain()
{
  if (PARegisterUserInfoValueProviderForPAErrorDomain_registerOnce != -1)
  {
    PARegisterUserInfoValueProviderForPAErrorDomain_cold_1();
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __logger_block_invoke()
{
  logger_log = os_log_create("com.apple.PrivacyAccounting", "PATCCAccess");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __logger_block_invoke_0()
{
  logger_log_0 = os_log_create("com.apple.PrivacyAccounting", "PAAccessReader");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __logger_block_invoke_1()
{
  logger_log_1 = os_log_create("com.apple.PrivacyAccounting", "PACoalescingIntervalTracker");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __logger_block_invoke_2()
{
  logger_log_2 = os_log_create("com.apple.PrivacyAccounting", "PALSUtils");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1DF25DC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  __destructor_8_s0_s8_s16(va);
  _Unwind_Resume(a1);
}

void sub_1DF25E218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PADefaultBundleRecordRetriever()
{
  if (PADefaultBundleRecordRetriever_once != -1)
  {
    PADefaultBundleRecordRetriever_cold_1();
  }

  v0 = _Block_copy(PADefaultBundleRecordRetriever_result);

  return v0;
}

uint64_t __PADefaultBundleRecordRetriever_block_invoke()
{
  PADefaultBundleRecordRetriever_result = [&__block_literal_global_91 copy];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF25E928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AccessRecord.Timing(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF25E9D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AccessRecord.Timing(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF25EA78()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1DF25F7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF262180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id implicitIdentityForEntitlementDictionary(void *a1, void *a2, char *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:@"com.apple.private.attribution.app-store-app.usage-reporting-only.implicitly-assumed-identity"];

  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:@"com.apple.private.attribution.app-store-app.usage-reporting-only.implicitly-assumed-identity"];
    v9 = v6;
    if (v8)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        [v8 hasPrefix:@"/"];
        [v8 UTF8String];
        v15 = tcc_identity_create();
LABEL_14:

LABEL_15:
        v16 = 1;
        if (!a3)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      v13 = logger(isKindOfClass);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        implicitIdentityForEntitlementDictionary_cold_1();
      }
    }

    v15 = 0;
    goto LABEL_14;
  }

  v11 = [v5 objectForKeyedSubscript:@"com.apple.private.attribution.usage-reporting-only.implicitly-assumed-identity"];

  if (v11)
  {
    v12 = @"com.apple.private.attribution.usage-reporting-only.implicitly-assumed-identity";
LABEL_13:
    v8 = [v5 objectForKeyedSubscript:v12];
    v15 = implicitIdentityEntryToTCCIdentity(v8, v6);
    goto LABEL_15;
  }

  v14 = [v5 objectForKeyedSubscript:@"com.apple.private.attribution.implicitly-assumed-identity"];

  if (v14)
  {
    v12 = @"com.apple.private.attribution.implicitly-assumed-identity";
    goto LABEL_13;
  }

  v16 = 0;
  v15 = 0;
  if (a3)
  {
LABEL_16:
    *a3 = v16;
  }

LABEL_17:

  return v15;
}

id PAImplicitClientIdentityForBundle(void *a1)
{
  v1 = a1;
  v2 = [v1 infoDictionary];
  v3 = [v1 bundlePath];

  v4 = implicitIdentityForEntitlementDictionary(v2, v3, 0);

  return v4;
}

BOOL PAEntitlementDictionaryBelongsToSystemProcess(void *a1)
{
  v1 = implicitIdentityForEntitlementDictionary(a1, @"<anonymous entitlement dictionary>", 0);
  if (v1)
  {
    v2 = tcc_identity_get_type() != 0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL PABundleRecordBelongsToSystemProcess(void *a1)
{
  v1 = [a1 entitlements];
  v2 = [v1 objectForKey:@"com.apple.private.attribution.implicitly-assumed-identity" ofClass:objc_opt_class()];

  if (v2)
  {
    v3 = tcc_identity_get_type() != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PAAuthenticatedClientIdentity(_OWORD *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  *token.val = *a1;
  *&token.val[4] = v3;
  v4 = *MEMORY[0x1E695E480];
  v5 = a2;
  v6 = SecTaskCreateWithAuditToken(v4, &token);
  if (v6)
  {
    v7 = v6;
    *token.val = @"com.apple.private.attribution.explicitly-assumed-identities";
    *&token.val[2] = @"com.apple.private.attribution.implicitly-assumed-identity";
    *&token.val[4] = @"com.apple.private.attribution.usage-reporting-only.implicitly-assumed-identity";
    *&token.val[6] = @"com.apple.private.attribution.app-store-app.usage-reporting-only.implicitly-assumed-identity";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&token count:4];
    error = 0;
    v9 = SecTaskCopyValuesForEntitlements(v7, v8, &error);
    v10 = error;
    v11 = v10;
    if (v9)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (!v12)
    {
      v13 = logger(v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        PAAuthenticatedClientIdentity_cold_1(v11, v13);
      }
    }

    CFRelease(v7);
  }

  else
  {
    v8 = logger(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(token.val[0]) = 0;
      _os_log_impl(&dword_1DF25B000, v8, OS_LOG_TYPE_DEFAULT, "Failed to create SecTaskRef for audit token", &token, 2u);
    }

    v9 = 0;
  }

  v14 = [PALazyAuditTokenBasedClientIdentity alloc];
  v15 = a1[1];
  *token.val = *a1;
  *&token.val[4] = v15;
  v16 = [(PALazyAuditTokenBasedClientIdentity *)v14 initWithAuditToken:&token];
  v17 = PAAuthenticatedClientIdentityWithClientProperties(v9, v16, v5);

  return v17;
}

id PAAuthenticatedClientIdentityWithClientProperties(void *a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v53 = 0;
  v8 = implicitIdentityForEntitlementDictionary(v5, v6, &v53);
  v9 = v8;
  if (v53 == 1 && v8 == 0)
  {
    goto LABEL_36;
  }

  if (!v8)
  {
    if (v7)
    {
LABEL_14:
      v16 = [v5 objectForKeyedSubscript:@"com.apple.private.attribution.explicitly-assumed-identities"];
      v52 = v7;
      v17 = v16;
      v50 = v6;
      if (v17)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          obj = v17;
          v51 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
          if (v51)
          {
            v46 = v6;
            v45 = v17;
            v47 = v7;
            v48 = v5;
            v19 = *v55;
            v20 = v50;
            while (2)
            {
              for (i = 0; i != v51; ++i)
              {
                if (*v55 != v19)
                {
                  objc_enumerationMutation(obj);
                }

                v22 = *(*(&v54 + 1) + 8 * i);
                v23 = v52;
                v24 = v22;
                v25 = v20;
                objc_opt_class();
                v26 = objc_opt_isKindOfClass();
                if (v26)
                {
                  v27 = v19;
                  v28 = [v24 objectForKeyedSubscript:@"type"];
                  v29 = [v24 objectForKeyedSubscript:@"value"];
                  type = tcc_identity_get_type();
                  v31 = type;
                  if (type >= 4)
                  {
                    v34 = logger(type);
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
                    {
                      buf = 134217984;
                      v60 = v31;
                      _os_log_fault_impl(&dword_1DF25B000, v34, OS_LOG_TYPE_FAULT, "Unexpected tcc_identity_type_t: %llu", &buf, 0xCu);
                    }

                    v32 = 0;
                  }

                  else
                  {
                    v32 = off_1E86ABEF8[type];
                  }

                  if ([v28 isEqual:v32])
                  {
                    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_identifier()];
                    v36 = [v29 isEqual:v35];

                    if (v36)
                    {

LABEL_51:
                      v39 = v23;
                      v7 = v47;
                      v5 = v48;
                      v6 = v46;
                      goto LABEL_39;
                    }
                  }

                  v37 = [v28 isEqual:@"wildcard"];

                  v20 = v50;
                  v19 = v27;
                  if (v37)
                  {
                    goto LABEL_51;
                  }
                }

                else
                {
                  v33 = logger(v26);
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
                  {
                    buf = 138543618;
                    v60 = v20;
                    v61 = 2114;
                    v62 = v24;
                    _os_log_fault_impl(&dword_1DF25B000, v33, OS_LOG_TYPE_FAULT, "BUG IN %{public}@! They have a malformed explicitly assumed identity entitlement. Each entry should be a dictionary describing an identity, but we got %{public}@", &buf, 0x16u);
                  }
                }
              }

              v51 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
              if (v51)
              {
                continue;
              }

              break;
            }

            v7 = v47;
            v5 = v48;
            v17 = v45;
            v6 = v46;
          }
        }

        else
        {
          obj = logger(isKindOfClass);
          if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
          {
            PAAuthenticatedClientIdentityWithClientProperties_cold_2();
          }
        }
      }

      v41 = [v50 identity];
      v42 = areTCCIdentitiesEqual(v52, v41);

      if (v42)
      {
        v38 = v50;
      }

      else
      {
        v44 = logger(v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
        {
          PAAuthenticatedClientIdentityWithClientProperties_cold_3(v50, v52);
        }

        v38 = v50;
      }

      goto LABEL_37;
    }

LABEL_36:
    v38 = v6;
LABEL_37:
    v15 = [v38 identity];
    goto LABEL_38;
  }

  if (v7 && !areTCCIdentitiesEqual(v8, v7))
  {
    v11 = [v5 objectForKeyedSubscript:@"com.apple.private.attribution.permit-mixed-identities"];
    v12 = [v11 isEqual:MEMORY[0x1E695E118]];

    if ((v12 & 1) == 0)
    {
      v14 = logger(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        PAAuthenticatedClientIdentityWithClientProperties_cold_1(v6, v7);
      }

      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_12:
  v15 = v9;
LABEL_38:
  v39 = v15;
LABEL_39:

  return v39;
}

uint64_t areTCCIdentitiesEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    goto LABEL_9;
  }

  if ((v3 != 0) == (v4 == 0) || (type = tcc_identity_get_type(), type != tcc_identity_get_type()) || ([MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_identifier()], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", tcc_identity_get_identifier()), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, !v9) || (verifier_type = tcc_identity_get_verifier_type(), verifier_type != tcc_identity_get_verifier_type()))
  {
    v13 = 0;
    goto LABEL_10;
  }

  if (!verifier_type)
  {
LABEL_9:
    v13 = 1;
    goto LABEL_10;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_verifier_code_requirement_string()];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_verifier_code_requirement_string()];
  v13 = [v11 isEqual:v12];

LABEL_10:
  return v13 & 1;
}

void __lookupTCCIdentity_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    v7 = logger(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __lookupTCCIdentity_block_invoke_cold_1(a3, v7);
    }
  }
}

id implicitIdentityEntryToTCCIdentity(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v11 = 0;
    goto LABEL_20;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v7 = logger(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      implicitIdentityEntryToTCCIdentity_cold_1();
    }

    v11 = 0;
    goto LABEL_19;
  }

  v6 = [v3 objectForKeyedSubscript:@"type"];
  if (tccIdentityTypeForIdentityTypeString_once != -1)
  {
    implicitIdentityEntryToTCCIdentity_cold_2();
  }

  v7 = [tccIdentityTypeForIdentityTypeString_mapping objectForKeyedSubscript:v6];

  if (!v7)
  {
    v9 = logger(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      implicitIdentityEntryToTCCIdentity_cold_4(v4, v3);
    }

    goto LABEL_17;
  }

  [v7 intValue];
  v9 = [v3 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();
  if ((v10 & 1) == 0)
  {
    v12 = logger(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      implicitIdentityEntryToTCCIdentity_cold_3();
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  [v9 UTF8String];
  v11 = tcc_identity_create();
LABEL_18:

LABEL_19:
LABEL_20:

  return v11;
}

void __tccIdentityTypeForIdentityTypeString_block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2[0] = @"bundleID";
  v2[1] = @"path";
  v3[0] = &unk_1F5A580A0;
  v3[1] = &unk_1F5A580B8;
  v2[2] = @"hostedUUID";
  v2[3] = @"fileProviderID";
  v3[2] = &unk_1F5A580D0;
  v3[3] = &unk_1F5A580E8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = tccIdentityTypeForIdentityTypeString_mapping;
  tccIdentityTypeForIdentityTypeString_mapping = v0;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

uint64_t PAPBReplayKitAccessReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(PAPBAccess);
        objc_storeStrong((a1 + 8), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !PAPBAccessReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(PAPBApplication);
    objc_storeStrong((a1 + 16), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !PAPBApplicationReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

void sub_1DF26499C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF264D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1DF2652B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF265610(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1DF265D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF265EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __destructor_8_s0_s8_s16(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void sub_1DF2669B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_1DF267F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF268138(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1DF2683F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

BOOL writeBytesToStream(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v7 = a1;
  if (a3)
  {
    v8 = 0;
    v9 = 512;
    v10 = a3;
    while (1)
    {
      v11 = [v7 write:a2 + v8 maxLength:v10];
      if (v11 < 0)
      {
        break;
      }

      if (!v11)
      {
        v9 = 640;
        break;
      }

      v10 -= v11;
      if (v10)
      {
        v8 += v11;
        if (v8 < a3)
        {
          continue;
        }
      }

      goto LABEL_7;
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:v9 userInfo:0];
    v12 = v13 != 0;
    if (a4 && v13)
    {
      v13 = v13;
      *a4 = v13;
      v12 = 1;
    }
  }

  else
  {
LABEL_7:
    v12 = 0;
    v13 = 0;
  }

  return !v12;
}

uint64_t PAPBTCCAccessReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(PAPBAccess);
        objc_storeStrong((a1 + 8), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !PAPBAccessReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v13 = *(a1 + 16);
    *(a1 + 16) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PAPBAccessReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v36[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v36[0] & 0x7F) << v5;
        if ((v36[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            *(a1 + 52) |= 1u;
            v36[0] = 0;
            v28 = [a2 position] + 8;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:v36 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v36[0];
            goto LABEL_65;
          case 5:
            v27 = PBReaderReadData();
            if (v27)
            {
              [a1 addAssetIdentifiers:v27];
            }

LABEL_53:

            goto LABEL_65;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              LOBYTE(v36[0]) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:v36 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v36[0] & 0x7F) << v21;
              if ((v36[0] & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_61;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_61:
            v32 = 16;
            goto LABEL_62;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v27 = objc_alloc_init(PAPBApplication);
            objc_storeStrong((a1 + 24), v27);
            v36[0] = 0;
            v36[1] = 0;
            if (!PBReaderPlaceMark() || !PAPBApplicationReadFrom(v27, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_53;
          case 2:
            v30 = PBReaderReadData();
            v31 = *(a1 + 40);
            *(a1 + 40) = v30;

            goto LABEL_65;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              LOBYTE(v36[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v36 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v36[0] & 0x7F) << v14;
              if ((v36[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_57;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_57:
            v32 = 48;
LABEL_62:
            *(a1 + v32) = v20;
            goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_65:
      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DF26B2A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_1DF26B620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  _Block_object_dispose(&a16, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PABundleRecordIsVisibleApplication(void *a1)
{
  v1 = a1;
  if ([v1 conformsToProtocol:&unk_1F5A5DE90])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 appTags];
    if ([v5 containsObject:@"hidden"])
    {
      v6 = 0;
    }

    else
    {
      v7 = [v4 bundleIdentifier];
      v6 = [v7 isEqualToString:@"com.apple.springboard"] ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id PAAssociatedBundleIdentifiersForApplication(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x1E695DFA8] set];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __PAAssociatedBundleIdentifiersForApplication_block_invoke;
    aBlock[3] = &unk_1E86AC230;
    v3 = v2;
    v19 = v3;
    v4 = _Block_copy(aBlock);
    v5 = [v1 bundleIdentifier];
    v4[2](v4, v5);

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v1 applicationExtensionRecords];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) bundleIdentifier];
          v4[2](v4, v11);
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v8);
    }

    v12 = v3;
  }

  else
  {
    v12 = [MEMORY[0x1E695DFD8] set];
  }

  return v12;
}

id *__PAAssociatedBundleIdentifiersForApplication_block_invoke(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] addObject:a2];
  }

  return result;
}

id __PADefaultBundleRecordRetriever_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 identifierType];
  if (v3 == 2)
  {
    v9 = MEMORY[0x1E6963620];
    if (v2)
    {
      objc_msgSend_auditToken(v2);
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    v12 = 0;
    v6 = [v9 bundleRecordForAuditToken:v13 error:&v12];
    v8 = v12;
    v7 = v8;
    if (v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v3)
    {
      v7 = logger_2(v3);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __PADefaultBundleRecordRetriever_block_invoke_2_cold_2(v2, v7);
      }

      goto LABEL_14;
    }

    v4 = MEMORY[0x1E6963620];
    v5 = [v2 bundleID];
    *&v13[0] = 0;
    v6 = [v4 bundleRecordWithBundleIdentifier:v5 allowPlaceholder:0 error:v13];
    v7 = *&v13[0];

    if (v6)
    {
      goto LABEL_15;
    }
  }

  v10 = logger_2(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __PADefaultBundleRecordRetriever_block_invoke_2_cold_1(v2, v7, v10);
  }

LABEL_14:
  v6 = 0;
LABEL_15:

  return v6;
}

void sub_1DF26C6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id coalesceGroupedRecordsToRepublish(void *a1, char a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        if ([v10 count] < 2)
        {
          v18 = [v10 firstObject];
        }

        else
        {
          v11 = [v10 lastObject];
          v12 = [v11 access];

          if (a2)
          {
            v13 = [v10 lastObject];
            [v13 startTime];
            v15 = v14;

            v16 = [v10 valueForKeyPath:@"@max.endTime"];
            [v16 doubleValue];
          }

          else
          {
            v19 = [v10 valueForKeyPath:@"@min.startTime"];
            [v19 doubleValue];
            v15 = v20;

            v16 = [v10 lastObject];
            [v16 endTime];
          }

          v21 = v17;

          v18 = -[PACoalescedAccessRecord initWithAccess:startTime:endTime:count:]([PACoalescedAccessRecord alloc], "initWithAccess:startTime:endTime:count:", v12, [v10 count], v15, v21);
        }

        [v4 addObject:v18];
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __coalesceGroupedRecordsToRepublish_block_invoke;
  v24[3] = &__block_descriptor_33_e59_q24__0__PACompleteAccessRecord_8__PACompleteAccessRecord_16l;
  v25 = a2;
  [v4 sortUsingComparator:v24];
  v22 = [v4 copy];

  return v22;
}

uint64_t __coalesceGroupedRecordsToRepublish_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32) == 1)
  {
    [v5 startTime];
    v8 = v7;
    [v6 startTime];
    if (v8 >= v9)
    {
      [v5 startTime];
      v15 = v14;
      [v6 startTime];
      if (v15 <= v16)
      {
        v10 = 0;
      }

      else
      {
        v10 = -1;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    [v5 endTime];
    v12 = v11;
    [v6 endTime];
    if (v12 >= v13)
    {
      [v5 endTime];
      v18 = v17;
      [v6 endTime];
      v10 = v18 > v19;
    }

    else
    {
      v10 = -1;
    }
  }

  return v10;
}

uint64_t PAPBOutOfProcessPickerAccessReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_36:
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(PAPBAccess);
        objc_storeStrong((a1 + 8), v13);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !PAPBAccessReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PAPBLocationAccessReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(PAPBAccess);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !PAPBAccessReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *PAApplicationIdentifierTypeToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E86AC4E0[a1];
  }
}

uint64_t PAPBApplicationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PAErrorBoolValueForUserInfoKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 userInfo];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (_NSIsNSNumber())
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1DF271C18()
{
  if (qword_1ED5EC7D8 != -1)
  {
    swift_once();
  }

  return qword_1ED5EC898;
}

id _PALoggingOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _PALoggingOptions.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PALoggingOptions();
  return objc_msgSendSuper2(&v2, sel_init);
}

id _PALoggingOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PALoggingOptions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata accessor for PAAccessCategory()
{
  if (!qword_1ECE2EFD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECE2EFD0);
    }
  }
}

uint64_t sub_1DF271DEC(uint64_t a1, id *a2)
{
  result = sub_1DF27BB18();
  *a2 = 0;
  return result;
}

uint64_t sub_1DF271E64(uint64_t a1, id *a2)
{
  v3 = sub_1DF27BB28();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1DF271EE4@<X0>(uint64_t *a1@<X8>)
{
  sub_1DF27BB38();
  v2 = sub_1DF27BB08();

  *a1 = v2;
  return result;
}

uint64_t sub_1DF271F28@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1DF27BB08();

  *a2 = v3;
  return result;
}

uint64_t sub_1DF271F70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DF27BB38();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DF271F9C(uint64_t a1)
{
  v2 = sub_1DF27225C(&qword_1ECE2EFF0, &unk_1DF27EBF0);
  v3 = sub_1DF27225C(&qword_1ECE2EFF8, &unk_1DF27EB90);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DF27209C()
{
  v0 = sub_1DF27BB38();
  v1 = MEMORY[0x1E12D0DD0](v0);

  return v1;
}

uint64_t sub_1DF2720D8(uint64_t a1)
{
  sub_1DF27BB38();
  sub_1DF27BB48();
}

uint64_t sub_1DF27212C(uint64_t a1)
{
  sub_1DF27BB38();
  sub_1DF27BCC8();
  sub_1DF27BB48();
  v1 = sub_1DF27BCE8();

  return v1;
}

uint64_t sub_1DF2721A0(void *a1, uint64_t *a2)
{
  v2 = sub_1DF27BB38();
  v4 = v3;
  if (v2 == sub_1DF27BB38() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DF27BCA8();
  }

  return v7 & 1;
}

uint64_t sub_1DF27225C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PAAccessCategory();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id InitialSwift.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InitialSwift.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InitialSwift();
  return objc_msgSendSuper2(&v2, sel_init);
}

id InitialSwift.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InitialSwift();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AccessHistory.makeIterator()@<X0>(uint64_t *a1@<X8>)
{
  v7[0] = *v1;
  v7[1] = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F000, &qword_1DF27ECB0);
  v4 = sub_1DF2724BC();
  a1[3] = v3;
  a1[4] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v3 - 8) + 32))(boxed_opaque_existential_1, v7, v3);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1DF2724BC()
{
  result = qword_1ECE2F008;
  if (!qword_1ECE2F008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE2F000, &qword_1DF27ECB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE2F008);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DF272568@<X0>(uint64_t *a1@<X8>)
{
  AccessHistory.makeIterator()(a1);
}

uint64_t sub_1DF2725A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DF27959C(v2, a1, a2);

  return v3;
}

uint64_t static AccessHistory<>.forReport.getter@<X0>(uint64_t *a1@<X8>)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F010, &qword_1DF27ECB8);
  v3 = MEMORY[0x1EEE9AC00](v29, v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v26 - v7;
  v9 = sub_1DF27BA98();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v26 - v16;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F018, &qword_1DF27ECC0);
  MEMORY[0x1EEE9AC00](v28, v18);
  v20 = &v26 - v19;
  sub_1DF27BA48();
  sub_1DF27BA58();
  sub_1DF27ABFC(&qword_1ECE2F020, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  result = sub_1DF27BAF8();
  if (result)
  {
    v27 = a1;
    v22 = *(v10 + 32);
    v22(v8, v17, v9);
    v23 = v5;
    v24 = v29;
    v22(&v8[*(v29 + 48)], v14, v9);
    sub_1DF27AC44(v8, v23, &qword_1ECE2F010, &qword_1DF27ECB8);
    v26 = *(v24 + 48);
    v22(v20, v23, v9);
    v25 = *(v10 + 8);
    v25(v23 + v26, v9);
    sub_1DF27AA68(v8, v23, &qword_1ECE2F010, &qword_1DF27ECB8);
    v22(&v20[*(v28 + 36)], (v23 + *(v24 + 48)), v9);
    v25(v23, v9);
    static AccessHistory<>.forReport(in:)(v20, v27);
    return sub_1DF27AAD0(v20, &qword_1ECE2F018, &qword_1DF27ECC0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static AccessHistory<>.forReport(in:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F018, &qword_1DF27ECC0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v13 - v6;
  sub_1DF27AC44(a1, v13 - v6, &qword_1ECE2F018, &qword_1DF27ECC0);
  v8 = [objc_opt_self() sharedInstance];
  v13[0] = 0;
  v9 = [v8 publisherForReportWithError_];

  if (v9)
  {
    v10 = v13[0];
    return sub_1DF272AB0(v7, v9, a2);
  }

  else
  {
    v12 = v13[0];
    sub_1DF27AAD0(v7, &qword_1ECE2F018, &qword_1DF27ECC0);
    sub_1DF27BA28();

    return swift_willThrow();
  }
}

uint64_t sub_1DF272AB0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v35 = a1;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F018, &qword_1DF27ECC0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v34 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F210, &qword_1DF27EFC0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v33 - v9;
  v40 = type metadata accessor for AccessRecord(0);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v11);
  v39 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x1E69E7CC0];
  v46 = nullsub_1;
  v47 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1DF274418;
  v45 = &block_descriptor;
  v14 = _Block_copy(&aBlock);
  v46 = sub_1DF27ACD4;
  v47 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1DF27452C;
  v45 = &block_descriptor_38;
  v15 = _Block_copy(&aBlock);
  v16 = a2;

  v17 = [v16 sinkWithCompletion:v14 shouldContinue:v15];
  v33 = v16;

  _Block_release(v15);
  _Block_release(v14);

  swift_beginAccess();
  v18 = *(v13 + 16);

  if (v18 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DF27BC68())
  {
    v20 = 0;
    v21 = (v38 + 48);
    v22 = MEMORY[0x1E69E7CC0];
    v37 = i;
    while ((v18 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x1E12D0E80](v20, v18);
      v24 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      sub_1DF272FEC(v23, v10);
      if ((*v21)(v10, 1, v40) == 1)
      {
        sub_1DF27AAD0(v10, &qword_1ECE2F210, &qword_1DF27EFC0);
      }

      else
      {
        sub_1DF27AB30(v10, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1DF2755BC(0, v22[2] + 1, 1, v22);
        }

        v26 = v22[2];
        v25 = v22[3];
        if (v26 >= v25 >> 1)
        {
          v22 = sub_1DF2755BC((v25 > 1), v26 + 1, 1, v22);
        }

        v22[2] = v26 + 1;
        sub_1DF27AB30(v39, v22 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v26);
        i = v37;
      }

      ++v20;
      if (v24 == i)
      {
        goto LABEL_21;
      }
    }

    if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v23 = swift_unknownObjectRetain();
    v24 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v28 = v34;
  v27 = v35;
  v29 = sub_1DF27AC44(v35, v34, &qword_1ECE2F018, &qword_1DF27ECC0);
  MEMORY[0x1EEE9AC00](v29, v30);
  *(&v33 - 2) = v28;
  v41 = sub_1DF273C00(sub_1DF27ACDC, (&v33 - 4), v22);

  sub_1DF27598C(&v41);

  sub_1DF27AAD0(v27, &qword_1ECE2F018, &qword_1DF27ECC0);
  v31 = v41;
  result = sub_1DF27AAD0(v28, &qword_1ECE2F018, &qword_1DF27ECC0);
  *v36 = v31;
  return result;
}

uint64_t sub_1DF272FEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DF27BAC8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessRecord(0);
  v47 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  v46 = a2;
  if (v13)
  {
    v14 = v13;
    [v13 startTime];
    v16 = v15;
    [v14 endTime];
    if (v16 == v17)
    {
      [v14 startTime];
      sub_1DF27BA38();
      type metadata accessor for AccessRecord.Timing(0);
    }

    else
    {
      [v14 endTime];
      v20 = v19;
      [v14 startTime];
      if (v20 - v21 >= 60.0)
      {
        v45[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8) + 48);
        [v14 startTime];
        sub_1DF27BA38();
      }

      [v14 endTime];
      sub_1DF27BA38();
      type metadata accessor for AccessRecord.Timing(0);
    }

    goto LABEL_11;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    [v18 startTime];
    sub_1DF27BA38();
    type metadata accessor for AccessRecord.Timing(0);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    v23 = [a1 access];
    v24 = [v23 identifier];

    sub_1DF27BAB8();
    v25 = sub_1DF27BAA8();
    v27 = v26;
    (*(v5 + 8))(v8, v4);
    *v12 = v25;
    v12[1] = v27;
    v28 = [a1 access];
    v29 = [v28 accessor];

    v30 = [v29 bundleID];
    v31 = sub_1DF27BB38();
    v33 = v32;

    v12[2] = v31;
    v12[3] = v33;
    v34 = [a1 access];
    v35 = [v34 category];

    v12[4] = v35;
    v36 = [a1 access];
    v37 = [v36 accessCount];

    if (v37)
    {
      v38 = [a1 access];
      v39 = [v38 accessCount];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v39 = 0;
    }

    v40 = v12 + *(v9 + 32);
    *v40 = v39;
    v40[8] = v37 == 0;
    v41 = v46;
    sub_1DF27AB30(v12, v46);
    return (*(v47 + 56))(v41, 0, 1, v9);
  }

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    [v22 endTime];
    sub_1DF27BA38();
    type metadata accessor for AccessRecord.Timing(0);
    goto LABEL_11;
  }

  objc_opt_self();
  v43 = swift_dynamicCastObjCClass();
  result = swift_unknownObjectRelease();
  if (v43)
  {
    __break(1u);
  }

  else
  {
    v44 = *(v47 + 56);

    return v44(a2, 1, 1, v9);
  }

  return result;
}

uint64_t sub_1DF273558(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F200, &qword_1DF27EFB0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v35 - v5;
  v7 = type metadata accessor for AccessRecord.Timing(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DF27BA98();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v39 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v35 - v18;
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v35 - v22;
  MEMORY[0x1EEE9AC00](v21, v24);
  v38 = &v35 - v25;
  v26 = *(type metadata accessor for AccessRecord(0) + 28);
  v37 = a1;
  sub_1DF27AB94(a1 + v26, v10, type metadata accessor for AccessRecord.Timing);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8) + 48);
    v27 = *(v12 + 32);
    v27(v19, v10, v11);
    (*(v12 + 8))(&v10[v36], v11);
  }

  else
  {
    v27 = *(v12 + 32);
    v27(v19, v10, v11);
  }

  v27(v23, v19, v11);
  v28 = v38;
  v27(v38, v23, v11);
  sub_1DF2739CC(v6);
  v29 = *(v12 + 48);
  v30 = v29(v6, 1, v11);
  v31 = v39;
  if (v30 == 1)
  {
    sub_1DF27BA58();
    if (v29(v6, 1, v11) != 1)
    {
      sub_1DF27AAD0(v6, &qword_1ECE2F200, &qword_1DF27EFB0);
    }
  }

  else
  {
    v27(v39, v6, v11);
  }

  sub_1DF27ABFC(&qword_1ECE2F020, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1DF27BAE8() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F018, &qword_1DF27ECC0), (sub_1DF27BAF8()))
  {
    v32 = 1;
  }

  else if (sub_1DF27BAE8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F018, &qword_1DF27ECC0);
    v32 = sub_1DF27BAF8();
  }

  else
  {
    v32 = 0;
  }

  v33 = *(v12 + 8);
  v33(v31, v11);
  v33(v28, v11);
  return v32 & 1;
}

uint64_t sub_1DF2739CC@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AccessRecord.Timing(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DF27BA98();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF27AB94(v2, v7, type metadata accessor for AccessRecord.Timing);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v9 + 56))(a1, 1, 1, v8);
      return sub_1DF27AA08(v7, type metadata accessor for AccessRecord.Timing);
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
    v15 = *(v9 + 32);
    v15(v12, &v7[*(v16 + 48)], v8);
    (*(v9 + 8))(v7, v8);
  }

  else
  {
    v15 = *(v9 + 32);
    v15(v12, v7, v8);
  }

  v15(a1, v12, v8);
  return (*(v9 + 56))(a1, 0, 1, v8);
}

uint64_t sub_1DF273C00(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AccessRecord(0);
  v27 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v26 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v23 - v13;
  v25 = *(a3 + 16);
  if (v25)
  {
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    v23[1] = a2;
    v24 = a3;
    v23[0] = a1;
    while (v15 < *(a3 + 16))
    {
      v17 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v18 = *(v27 + 72);
      sub_1DF27AB94(a3 + v17 + v18 * v15, v14, type metadata accessor for AccessRecord);
      v19 = a1(v14);
      if (v3)
      {
        sub_1DF27AA08(v14, type metadata accessor for AccessRecord);

        goto LABEL_15;
      }

      if (v19)
      {
        sub_1DF27AB30(v14, v26);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DF275794(0, *(v16 + 16) + 1, 1);
          v16 = v28;
        }

        v22 = *(v16 + 16);
        v21 = *(v16 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1DF275794((v21 > 1), v22 + 1, 1);
          v16 = v28;
        }

        *(v16 + 16) = v22 + 1;
        result = sub_1DF27AB30(v26, v16 + v17 + v22 * v18);
        a3 = v24;
        a1 = v23[0];
      }

      else
      {
        result = sub_1DF27AA08(v14, type metadata accessor for AccessRecord);
      }

      if (v25 == ++v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v16;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t AccessRecord.accessorID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t static AccessRecord.AccessorID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF27BCA8();
  }
}

uint64_t AccessRecord.AccessorID.hash(into:)(uint64_t a1)
{
  MEMORY[0x1E12D0F50](0);

  return sub_1DF27BB48();
}

uint64_t AccessRecord.AccessorID.hashValue.getter()
{
  sub_1DF27BCC8();
  MEMORY[0x1E12D0F50](0);
  sub_1DF27BB48();
  return sub_1DF27BCE8();
}

uint64_t sub_1DF274044()
{
  sub_1DF27BCC8();
  MEMORY[0x1E12D0F50](0);
  sub_1DF27BB48();
  return sub_1DF27BCE8();
}

uint64_t sub_1DF2740A4(uint64_t a1)
{
  MEMORY[0x1E12D0F50](0);

  return sub_1DF27BB48();
}

uint64_t sub_1DF2740F8(uint64_t a1)
{
  sub_1DF27BCC8();
  MEMORY[0x1E12D0F50](0);
  sub_1DF27BB48();
  return sub_1DF27BCE8();
}

uint64_t sub_1DF274154(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF27BCA8();
  }
}

void sub_1DF274418(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1DF274480(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = swift_unknownObjectRetain();
  MEMORY[0x1E12D0E00](v3);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DF27BBA8();
  }

  sub_1DF27BBC8();
  swift_endAccess();
  return 1;
}

uint64_t sub_1DF27452C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_1DF274598(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v3 = type metadata accessor for AccessRecord.Timing(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F200, &qword_1DF27EFB0);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v43 - v16;
  v18 = sub_1DF27BA98();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v43 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v43 - v25;
  MEMORY[0x1EEE9AC00](v24, v27);
  v46 = &v43 - v28;
  v29 = type metadata accessor for AccessRecord(0);
  sub_1DF27AB94(a2 + *(v29 + 28), v6, type metadata accessor for AccessRecord.Timing);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v19 + 56))(v14, 1, 1, v18);
      sub_1DF27AA08(v6, type metadata accessor for AccessRecord.Timing);
      goto LABEL_7;
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
    v31 = *(v19 + 32);
    v31(v26, &v6[*(v32 + 48)], v18);
    (*(v19 + 8))(v6, v18);
  }

  else
  {
    v31 = *(v19 + 32);
    v31(v26, v6, v18);
  }

  v31(v14, v26, v18);
  (*(v19 + 56))(v14, 0, 1, v18);
LABEL_7:
  sub_1DF27AA68(v14, v17, &qword_1ECE2F200, &qword_1DF27EFB0);
  v33 = *(v19 + 48);
  v34 = v33(v17, 1, v18);
  v35 = v46;
  if (v34 == 1)
  {
    sub_1DF27AAD0(v17, &qword_1ECE2F200, &qword_1DF27EFB0);
    v36 = 0;
  }

  else
  {
    v37 = *(v19 + 32);
    v37(v46, v17, v18);
    v38 = v44;
    sub_1DF2739CC(v44);
    if (v33(v38, 1, v18) == 1)
    {
      (*(v19 + 8))(v35, v18);
      sub_1DF27AAD0(v38, &qword_1ECE2F200, &qword_1DF27EFB0);
      v36 = 1;
    }

    else
    {
      v39 = v43;
      v37(v43, v38, v18);
      sub_1DF27ABFC(&qword_1ECE2F020, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v40 = sub_1DF27BAD8();
      v41 = *(v19 + 8);
      v41(v39, v18);
      v41(v35, v18);
      v36 = v40 ^ 1;
    }
  }

  return v36 & 1;
}

uint64_t sub_1DF274CD8@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for AccessRecord.Timing(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DF27BA98();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1 + OBJC_IVAR____TtCFE17PrivacyAccountingCSo14PAAccessReader23_accessRecordsForReportFzT4fromV10Foundation4Date2toS2__CSo12NSEnumeratorL_18AccessRecordObject_record;
  v13 = type metadata accessor for AccessRecord(0);
  sub_1DF27AB94(v12 + *(v13 + 28), v6, type metadata accessor for AccessRecord.Timing);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8) + 48);
    v14 = *(v8 + 32);
    v14(v11, v6, v7);
    (*(v8 + 8))(&v6[v15], v7);
  }

  else
  {
    v14 = *(v8 + 32);
    v14(v11, v6, v7);
  }

  v14(a1, v11, v7);
  return (*(v8 + 56))(a1, 0, 1, v7);
}

id sub_1DF274EF8(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F200, &qword_1DF27EFB0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v16 - v7;
  v9 = a1;
  a3();

  v10 = sub_1DF27BA98();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_1DF27BA68();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

uint64_t sub_1DF275028@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for AccessRecord.Timing(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DF27BA98();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1 + OBJC_IVAR____TtCFE17PrivacyAccountingCSo14PAAccessReader23_accessRecordsForReportFzT4fromV10Foundation4Date2toS2__CSo12NSEnumeratorL_18AccessRecordObject_record;
  v13 = type metadata accessor for AccessRecord(0);
  sub_1DF27AB94(v12 + *(v13 + 28), v6, type metadata accessor for AccessRecord.Timing);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v8 + 56))(a1, 1, 1, v7);
      return sub_1DF27AA08(v6, type metadata accessor for AccessRecord.Timing);
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
    v16 = *(v8 + 32);
    v16(v11, &v6[*(v17 + 48)], v7);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v16 = *(v8 + 32);
    v16(v11, v6, v7);
  }

  v16(a1, v11, v7);
  return (*(v8 + 56))(a1, 0, 1, v7);
}

id sub_1DF275318()
{
  v2.receiver = v0;
  v2.super_class = _s18AccessRecordObjectCMa(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1DF275388(uint64_t a1, uint64_t a2)
{
  sub_1DF27BCC8();
  sub_1DF27BB48();
  v4 = sub_1DF27BCE8();

  return sub_1DF275400(a1, a2, v4);
}

unint64_t sub_1DF275400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1DF27BCA8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_1DF2754B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F238, &qword_1DF27EFE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1DF2755BC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE2F240, &unk_1DF27EFF0);
  v10 = *(type metadata accessor for AccessRecord(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AccessRecord(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1DF275794(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF2757B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DF2757B4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE2F240, &unk_1DF27EFF0);
  v10 = *(type metadata accessor for AccessRecord(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AccessRecord(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1DF27598C(uint64_t *a1)
{
  v2 = *(type metadata accessor for AccessRecord(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1DF278FBC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1DF275A34(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1DF275A34(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1DF27BC98();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for AccessRecord(0);
        v6 = sub_1DF27BBB8();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for AccessRecord(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DF276488(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DF275B60(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DF275B60(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v108 = a1;
  v106 = type metadata accessor for AccessRecord.Timing(0);
  v8 = MEMORY[0x1EEE9AC00](v106, v7);
  v101 = &v81[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v81[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F200, &qword_1DF27EFB0);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v95 = &v81[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v98 = &v81[-v19];
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v81[-v21];
  v23 = sub_1DF27BA98();
  v24 = *(v23 - 8);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v81[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v88 = &v81[-v31];
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v35 = &v81[-v34];
  MEMORY[0x1EEE9AC00](v33, v36);
  v100 = &v81[-v37];
  v102 = type metadata accessor for AccessRecord(0);
  v39 = MEMORY[0x1EEE9AC00](v102, v38);
  v93 = &v81[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v107 = &v81[-v43];
  result = MEMORY[0x1EEE9AC00](v42, v44);
  v109 = &v81[-v47];
  v83 = a2;
  if (a3 != a2)
  {
    v48 = *a4;
    v49 = *(v46 + 72);
    v50 = (v24 + 32);
    v99 = (v24 + 8);
    v105 = (v24 + 56);
    v104 = (v24 + 48);
    v51 = v48 + v49 * (a3 - 1);
    v91 = -v49;
    v92 = v48;
    v52 = &v108[-a3];
    v82 = v49;
    v53 = v48 + v49 * a3;
    v96 = v22;
    v97 = v12;
    v89 = v35;
    v90 = v28;
    v54 = v50;
    v108 = v50;
LABEL_6:
    v87 = a3;
    v84 = v53;
    v85 = v52;
    v55 = v52;
    v86 = v51;
    while (1)
    {
      v103 = v55;
      sub_1DF27AB94(v53, v109, type metadata accessor for AccessRecord);
      v56 = v107;
      sub_1DF27AB94(v51, v107, type metadata accessor for AccessRecord);
      v57 = *(v102 + 28);
      sub_1DF27AB94(&v56[v57], v12, type metadata accessor for AccessRecord.Timing);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v59 = *v105;
          v60 = v98;
          (*v105)(v98, 1, 1, v23);
          v61 = v12;
          v62 = v60;
          sub_1DF27AA08(v61, type metadata accessor for AccessRecord.Timing);
          goto LABEL_13;
        }

        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
        v63 = *v54;
        (*v54)(v35, &v12[*(v64 + 48)], v23);
        (*v99)(v12, v23);
      }

      else
      {
        v63 = *v54;
        (*v54)(v35, v12, v23);
      }

      v62 = v98;
      v63(v98, v35, v23);
      v59 = *v105;
      (*v105)(v62, 0, 1, v23);
LABEL_13:
      v65 = v96;
      sub_1DF27AA68(v62, v96, &qword_1ECE2F200, &qword_1DF27EFB0);
      v66 = *v104;
      if ((*v104)(v65, 1, v23) == 1)
      {
        sub_1DF27AAD0(v65, &qword_1ECE2F200, &qword_1DF27EFB0);
        sub_1DF27AA08(v107, type metadata accessor for AccessRecord);
        result = sub_1DF27AA08(v109, type metadata accessor for AccessRecord);
        v12 = v97;
        v54 = v108;
LABEL_5:
        a3 = v87 + 1;
        v51 = v86 + v82;
        v52 = v85 - 1;
        v53 = v84 + v82;
        if (v87 + 1 == v83)
        {
          return result;
        }

        goto LABEL_6;
      }

      v67 = v65;
      v68 = *v108;
      (*v108)(v100, v67, v23);
      sub_1DF27AB94(&v109[v57], v101, type metadata accessor for AccessRecord.Timing);
      v69 = swift_getEnumCaseMultiPayload();
      if (v69)
      {
        if (v69 == 1)
        {
          v70 = v95;
          v59(v95, 1, 1, v23);
          sub_1DF27AA08(v101, type metadata accessor for AccessRecord.Timing);
          goto LABEL_20;
        }

        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
        v73 = v101;
        v71 = v90;
        v68(v90, &v101[*(v72 + 48)], v23);
        (*v99)(v73, v23);
      }

      else
      {
        v71 = v90;
        v68(v90, v101, v23);
      }

      v70 = v95;
      v68(v95, v71, v23);
      v59(v70, 0, 1, v23);
      v35 = v89;
LABEL_20:
      if (v66(v70, 1, v23) == 1)
      {
        (*v99)(v100, v23);
        sub_1DF27AAD0(v70, &qword_1ECE2F200, &qword_1DF27EFB0);
        sub_1DF27AA08(v107, type metadata accessor for AccessRecord);
        result = sub_1DF27AA08(v109, type metadata accessor for AccessRecord);
        v12 = v97;
        v54 = v108;
        v74 = v103;
      }

      else
      {
        v75 = v88;
        v76 = v108;
        v68(v88, v70, v23);
        sub_1DF27ABFC(&qword_1ECE2F020, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        v77 = v100;
        v94 = sub_1DF27BAD8();
        v78 = *v99;
        (*v99)(v75, v23);
        v78(v77, v23);
        sub_1DF27AA08(v107, type metadata accessor for AccessRecord);
        v54 = v76;
        result = sub_1DF27AA08(v109, type metadata accessor for AccessRecord);
        v12 = v97;
        v74 = v103;
        if (v94)
        {
          goto LABEL_5;
        }
      }

      if (!v92)
      {
        __break(1u);
        return result;
      }

      v79 = v93;
      sub_1DF27AB30(v53, v93);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1DF27AB30(v79, v51);
      v51 += v91;
      v53 += v91;
      v80 = __CFADD__(v74, 1);
      v55 = v74 + 1;
      if (v80)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1DF276488(uint64_t *a1, uint64_t a2, uint64_t (**a3)(uint64_t a1), uint64_t a4)
{
  v215 = a1;
  v258 = type metadata accessor for AccessRecord.Timing(0);
  v7 = MEMORY[0x1EEE9AC00](v258, v6);
  v252 = &v212 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v255 = &v212 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v230 = &v212 - v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v235 = &v212 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F200, &qword_1DF27EFB0);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v245 = &v212 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v212 - v23;
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v212 - v27;
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v220 = &v212 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v35 = &v212 - v34;
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = &v212 - v37;
  v39 = sub_1DF27BA98();
  v40 = *(v39 - 8);
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v244 = &v212 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v239 = &v212 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45, v47);
  v247 = &v212 - v49;
  v51 = MEMORY[0x1EEE9AC00](v48, v50);
  v251 = &v212 - v52;
  v54 = MEMORY[0x1EEE9AC00](v51, v53);
  v219 = &v212 - v55;
  v57 = MEMORY[0x1EEE9AC00](v54, v56);
  v216 = &v212 - v58;
  v60 = MEMORY[0x1EEE9AC00](v57, v59);
  v223 = &v212 - v61;
  MEMORY[0x1EEE9AC00](v60, v62);
  v229 = &v212 - v63;
  v249 = type metadata accessor for AccessRecord(0);
  v233 = *(v249 - 8);
  v65 = MEMORY[0x1EEE9AC00](v249, v64);
  v221 = &v212 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v65, v67);
  v243 = &v212 - v69;
  v71 = MEMORY[0x1EEE9AC00](v68, v70);
  v254 = &v212 - v72;
  v74 = MEMORY[0x1EEE9AC00](v71, v73);
  v259 = &v212 - v75;
  v77 = MEMORY[0x1EEE9AC00](v74, v76);
  v79 = &v212 - v78;
  v81 = MEMORY[0x1EEE9AC00](v77, v80);
  v238 = &v212 - v82;
  v84 = MEMORY[0x1EEE9AC00](v81, v83);
  v212 = &v212 - v85;
  result = MEMORY[0x1EEE9AC00](v84, v86);
  v213 = &v212 - v88;
  v234 = a3;
  if (a3[1] < 1)
  {
    v91 = MEMORY[0x1E69E7CC0];
LABEL_133:
    v90 = *v215;
    if (!*v215)
    {
      goto LABEL_175;
    }

    v40 = v91;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a4 = v237;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v40;
    }

    else
    {
LABEL_169:
      result = sub_1DF278EC4(v40);
    }

    v261 = result;
    v40 = *(result + 16);
    if (v40 >= 2)
    {
      while (*v234)
      {
        v208 = *(result + 16 * v40);
        v209 = result;
        v210 = *(result + 16 * (v40 - 1) + 40);
        sub_1DF277C60(*v234 + *(v233 + 72) * v208, *v234 + *(v233 + 72) * *(result + 16 * (v40 - 1) + 32), *v234 + *(v233 + 72) * v210, v90);
        if (a4)
        {
        }

        if (v210 < v208)
        {
          goto LABEL_162;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v209 = sub_1DF278EC4(v209);
        }

        if (v40 - 2 >= *(v209 + 2))
        {
          goto LABEL_163;
        }

        v211 = &v209[16 * v40];
        *v211 = v208;
        *(v211 + 1) = v210;
        v261 = v209;
        sub_1DF278E38(v40 - 1);
        result = v261;
        v40 = *(v261 + 16);
        if (v40 <= 1)
        {
        }
      }

      goto LABEL_173;
    }
  }

  v89 = a3[1];
  v90 = 0;
  v260 = v40 + 32;
  v250 = (v40 + 8);
  v256 = (v40 + 48);
  v257 = (v40 + 56);
  v91 = MEMORY[0x1E69E7CC0];
  v214 = a4;
  v248 = v24;
  v246 = v28;
  v228 = v35;
  v227 = v38;
  v92 = v249;
  v231 = v79;
  v93 = v89;
  while (1)
  {
    v240 = v260 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v222 = v91;
    v217 = v90;
    if (v90 + 1 >= v93)
    {
      v93 = v90 + 1;
      goto LABEL_42;
    }

    v94 = *v234;
    v40 = *(v233 + 72);
    v95 = *v234 + v40 * (v90 + 1);
    v242 = type metadata accessor for AccessRecord;
    v253 = v95;
    v96 = v213;
    sub_1DF27AB94(v95, v213, type metadata accessor for AccessRecord);
    v241 = v94;
    v97 = v94 + v40 * v90;
    v98 = v212;
    sub_1DF27AB94(v97, v212, v242);
    v99 = v237;
    LODWORD(v232) = sub_1DF274598(v96, v98);
    if (v99)
    {
      sub_1DF27AA08(v98, type metadata accessor for AccessRecord);
      sub_1DF27AA08(v213, type metadata accessor for AccessRecord);
    }

    v237 = 0;
    sub_1DF27AA08(v98, type metadata accessor for AccessRecord);
    result = sub_1DF27AA08(v213, type metadata accessor for AccessRecord);
    v100 = v90 + 2;
    v101 = v241 + v40 * (v90 + 2);
    v236 = v93;
    v241 = v40;
    v90 = v253;
    while (v93 != v100)
    {
      sub_1DF27AB94(v101, v238, type metadata accessor for AccessRecord);
      v253 = v90;
      sub_1DF27AB94(v90, v79, type metadata accessor for AccessRecord);
      v105 = *(v92 + 28);
      sub_1DF27AB94(&v79[v105], v235, type metadata accessor for AccessRecord.Timing);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v107 = v228;
          v242 = *v257;
          (v242)(v228, 1, 1, v39);
          sub_1DF27AA08(v235, type metadata accessor for AccessRecord.Timing);
          goto LABEL_16;
        }

        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
        v108 = *v260;
        v111 = v235;
        v112 = v223;
        (*v260)(v223, v235 + *(v110 + 48), v39);
        v113 = v111;
        v109 = v112;
        (*v250)(v113, v39);
      }

      else
      {
        v108 = *v260;
        v109 = v223;
        (*v260)(v223, v235, v39);
      }

      v107 = v228;
      v108(v228, v109, v39);
      v242 = *v257;
      (v242)(v107, 0, 1, v39);
LABEL_16:
      v114 = v227;
      sub_1DF27AA68(v107, v227, &qword_1ECE2F200, &qword_1DF27EFB0);
      v115 = *v256;
      if ((*v256)(v114, 1, v39) != 1)
      {
        v116 = *v260;
        (*v260)(v229, v114, v39);
        sub_1DF27AB94(v238 + v105, v230, type metadata accessor for AccessRecord.Timing);
        v117 = swift_getEnumCaseMultiPayload();
        if (v117)
        {
          v118 = v219;
          if (v117 == 1)
          {
            v119 = v220;
            (v242)(v220, 1, 1, v39);
            sub_1DF27AA08(v230, type metadata accessor for AccessRecord.Timing);
            goto LABEL_23;
          }

          v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
          v121 = v230;
          v116(v118, v230 + *(v120 + 48), v39);
          (*v250)(v121, v39);
        }

        else
        {
          v118 = v219;
          v116(v219, v230, v39);
        }

        v119 = v220;
        v116(v220, v118, v39);
        (v242)(v119, 0, 1, v39);
LABEL_23:
        if (v115(v119, 1, v39) == 1)
        {
          (*v250)(v229, v39);
          sub_1DF27AAD0(v119, &qword_1ECE2F200, &qword_1DF27EFB0);
          v102 = 0;
        }

        else
        {
          v122 = v216;
          v116(v216, v119, v39);
          sub_1DF27ABFC(&qword_1ECE2F020, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
          v123 = v229;
          v102 = sub_1DF27BAD8();
          v124 = *v250;
          (*v250)(v122, v39);
          v124(v123, v39);
        }

        goto LABEL_8;
      }

      sub_1DF27AAD0(v114, &qword_1ECE2F200, &qword_1DF27EFB0);
      v102 = 1;
LABEL_8:
      v79 = v231;
      v93 = v236;
      v103 = v253;
      sub_1DF27AA08(v231, type metadata accessor for AccessRecord);
      result = sub_1DF27AA08(v238, type metadata accessor for AccessRecord);
      v104 = v232 ^ v102;
      ++v100;
      v40 = v241;
      v101 += v241;
      v90 = v103 + v241;
      v92 = v249;
      if ((v104 & 1) == 0)
      {
        v93 = v100 - 1;
        break;
      }
    }

    a4 = v214;
    if ((v232 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (v93 < v217)
    {
      goto LABEL_168;
    }

    if (v217 < v93)
    {
      v90 = v40 * (v93 - 1);
      v125 = v93;
      v126 = v93 * v40;
      v236 = v125;
      v127 = v217;
      v128 = v217 * v40;
      do
      {
        if (v127 != --v125)
        {
          v129 = *v234;
          if (!*v234)
          {
            goto LABEL_172;
          }

          sub_1DF27AB30(v129 + v128, v221);
          if (v128 < v90 || v129 + v128 >= v129 + v126)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v128 != v90)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1DF27AB30(v221, v129 + v90);
          v24 = v248;
          v40 = v241;
        }

        ++v127;
        v90 -= v40;
        v126 -= v40;
        v128 += v40;
      }

      while (v127 < v125);
      v92 = v249;
      v79 = v231;
      v93 = v236;
    }

LABEL_42:
    v130 = v234[1];
    if (v93 >= v130)
    {
      goto LABEL_52;
    }

    if (__OFSUB__(v93, v217))
    {
      goto LABEL_165;
    }

    if (v93 - v217 >= a4)
    {
LABEL_52:
      v90 = v93;
      goto LABEL_53;
    }

    v131 = v217 + a4;
    if (__OFADD__(v217, a4))
    {
      goto LABEL_166;
    }

    a4 = v217;
    if (v131 >= v130)
    {
      v90 = v234[1];
    }

    else
    {
      v90 = v131;
    }

    if (v90 < v217)
    {
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
      goto LABEL_169;
    }

    if (v93 == v90)
    {
      v90 = v93;
      goto LABEL_54;
    }

    v178 = *v234;
    v179 = *(v233 + 72);
    v180 = *v234 + v179 * (v93 - 1);
    v241 = -v179;
    v242 = v178;
    v181 = v217 - v93;
    v218 = v179;
    v182 = v178 + v93 * v179;
    v183 = v247;
    v224 = v90;
LABEL_108:
    v236 = v93;
    v225 = v182;
    v184 = v182;
    v226 = v181;
    v40 = v181;
    v232 = v180;
    v185 = v180;
LABEL_109:
    v253 = v40;
    sub_1DF27AB94(v184, v259, type metadata accessor for AccessRecord);
    v186 = v254;
    sub_1DF27AB94(v185, v254, type metadata accessor for AccessRecord);
    v187 = *(v92 + 28);
    sub_1DF27AB94(v186 + v187, v255, type metadata accessor for AccessRecord.Timing);
    v188 = swift_getEnumCaseMultiPayload();
    if (v188)
    {
      if (v188 == 1)
      {
        v189 = *v257;
        (*v257)(v24, 1, 1, v39);
        sub_1DF27AA08(v255, type metadata accessor for AccessRecord.Timing);
        goto LABEL_115;
      }

      v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
      v190 = *v260;
      v192 = v255;
      (*v260)(v183, v255 + *(v191 + 48), v39);
      (*v250)(v192, v39);
    }

    else
    {
      v190 = *v260;
      (*v260)(v183, v255, v39);
    }

    v190(v24, v183, v39);
    v189 = *v257;
    (*v257)(v24, 0, 1, v39);
LABEL_115:
    v193 = v246;
    sub_1DF27AA68(v24, v246, &qword_1ECE2F200, &qword_1DF27EFB0);
    v194 = *v256;
    if ((*v256)(v193, 1, v39) != 1)
    {
      break;
    }

    sub_1DF27AAD0(v193, &qword_1ECE2F200, &qword_1DF27EFB0);
    v40 = type metadata accessor for AccessRecord;
    sub_1DF27AA08(v254, type metadata accessor for AccessRecord);
    sub_1DF27AA08(v259, type metadata accessor for AccessRecord);
    v183 = v247;
    v92 = v249;
LABEL_107:
    v93 = v236 + 1;
    v180 = v232 + v218;
    v181 = v226 - 1;
    v182 = &v225[v218];
    v90 = v224;
    if (v236 + 1 != v224)
    {
      goto LABEL_108;
    }

    v79 = v231;
LABEL_53:
    a4 = v217;
LABEL_54:
    if (v90 < a4)
    {
      goto LABEL_164;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v224 = v90;
    if (result)
    {
      v91 = v222;
    }

    else
    {
      result = sub_1DF2754B8(0, *(v222 + 2) + 1, 1, v222);
      v91 = result;
    }

    v90 = *(v91 + 2);
    v132 = *(v91 + 3);
    v40 = v90 + 1;
    if (v90 >= v132 >> 1)
    {
      result = sub_1DF2754B8((v132 > 1), v90 + 1, 1, v91);
      v91 = result;
    }

    *(v91 + 2) = v40;
    v133 = &v91[16 * v90];
    v134 = v224;
    *(v133 + 4) = a4;
    *(v133 + 5) = v134;
    v135 = *v215;
    if (!*v215)
    {
      goto LABEL_174;
    }

    if (v90)
    {
      while (2)
      {
        a4 = v40 - 1;
        if (v40 >= 4)
        {
          v140 = &v91[16 * v40 + 32];
          v141 = *(v140 - 64);
          v142 = *(v140 - 56);
          v146 = __OFSUB__(v142, v141);
          v143 = v142 - v141;
          if (v146)
          {
            goto LABEL_151;
          }

          v145 = *(v140 - 48);
          v144 = *(v140 - 40);
          v146 = __OFSUB__(v144, v145);
          v138 = v144 - v145;
          v139 = v146;
          if (v146)
          {
            goto LABEL_152;
          }

          v147 = &v91[16 * v40];
          v149 = *v147;
          v148 = *(v147 + 1);
          v146 = __OFSUB__(v148, v149);
          v150 = v148 - v149;
          if (v146)
          {
            goto LABEL_154;
          }

          v146 = __OFADD__(v138, v150);
          v151 = v138 + v150;
          if (v146)
          {
            goto LABEL_157;
          }

          if (v151 >= v143)
          {
            v169 = &v91[16 * a4 + 32];
            v171 = *v169;
            v170 = *(v169 + 1);
            v146 = __OFSUB__(v170, v171);
            v172 = v170 - v171;
            if (v146)
            {
              goto LABEL_161;
            }

            if (v138 < v172)
            {
              a4 = v40 - 2;
            }
          }

          else
          {
LABEL_74:
            if (v139)
            {
              goto LABEL_153;
            }

            v152 = &v91[16 * v40];
            v154 = *v152;
            v153 = *(v152 + 1);
            v155 = __OFSUB__(v153, v154);
            v156 = v153 - v154;
            v157 = v155;
            if (v155)
            {
              goto LABEL_156;
            }

            v158 = &v91[16 * a4 + 32];
            v160 = *v158;
            v159 = *(v158 + 1);
            v146 = __OFSUB__(v159, v160);
            v161 = v159 - v160;
            if (v146)
            {
              goto LABEL_159;
            }

            if (__OFADD__(v156, v161))
            {
              goto LABEL_160;
            }

            if (v156 + v161 < v138)
            {
              goto LABEL_88;
            }

            if (v138 < v161)
            {
              a4 = v40 - 2;
            }
          }
        }

        else
        {
          if (v40 == 3)
          {
            v136 = *(v91 + 4);
            v137 = *(v91 + 5);
            v146 = __OFSUB__(v137, v136);
            v138 = v137 - v136;
            v139 = v146;
            goto LABEL_74;
          }

          v162 = &v91[16 * v40];
          v164 = *v162;
          v163 = *(v162 + 1);
          v146 = __OFSUB__(v163, v164);
          v156 = v163 - v164;
          v157 = v146;
LABEL_88:
          if (v157)
          {
            goto LABEL_155;
          }

          v165 = &v91[16 * a4];
          v167 = *(v165 + 4);
          v166 = *(v165 + 5);
          v146 = __OFSUB__(v166, v167);
          v168 = v166 - v167;
          if (v146)
          {
            goto LABEL_158;
          }

          if (v168 < v156)
          {
            break;
          }
        }

        v90 = a4 - 1;
        if (a4 - 1 >= v40)
        {
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        if (!*v234)
        {
          goto LABEL_171;
        }

        v173 = v91;
        v40 = *&v91[16 * v90 + 32];
        v174 = *&v91[16 * a4 + 40];
        v175 = v237;
        sub_1DF277C60(*v234 + *(v233 + 72) * v40, *v234 + *(v233 + 72) * *&v91[16 * a4 + 32], *v234 + *(v233 + 72) * v174, v135);
        v237 = v175;
        if (v175)
        {
        }

        if (v174 < v40)
        {
          goto LABEL_149;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v176 = v173;
        }

        else
        {
          v176 = sub_1DF278EC4(v173);
        }

        v92 = v249;
        if (v90 >= *(v176 + 2))
        {
          goto LABEL_150;
        }

        v177 = &v176[16 * v90];
        *(v177 + 4) = v40;
        *(v177 + 5) = v174;
        v261 = v176;
        result = sub_1DF278E38(a4);
        v91 = v261;
        v40 = *(v261 + 16);
        if (v40 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v93 = v234[1];
    v90 = v224;
    a4 = v214;
    if (v224 >= v93)
    {
      goto LABEL_133;
    }
  }

  v195 = *v260;
  (*v260)(v251, v193, v39);
  sub_1DF27AB94(v259 + v187, v252, type metadata accessor for AccessRecord.Timing);
  v196 = swift_getEnumCaseMultiPayload();
  if (v196)
  {
    v197 = v244;
    if (v196 == 1)
    {
      v198 = v245;
      (v189)(v245, 1, 1, v39);
      sub_1DF27AA08(v252, type metadata accessor for AccessRecord.Timing);
      goto LABEL_122;
    }

    v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
    v200 = v252;
    v195(v197, v252 + *(v199 + 48), v39);
    (*v250)(v200, v39);
  }

  else
  {
    v197 = v244;
    v195(v244, v252, v39);
  }

  v198 = v245;
  v195(v245, v197, v39);
  (v189)(v198, 0, 1, v39);
LABEL_122:
  if (v194(v198, 1, v39) == 1)
  {
    (*v250)(v251, v39);
    sub_1DF27AAD0(v198, &qword_1ECE2F200, &qword_1DF27EFB0);
    sub_1DF27AA08(v254, type metadata accessor for AccessRecord);
    result = sub_1DF27AA08(v259, type metadata accessor for AccessRecord);
    v183 = v247;
    v24 = v248;
    v92 = v249;
  }

  else
  {
    v201 = v239;
    v195(v239, v198, v39);
    sub_1DF27ABFC(&qword_1ECE2F020, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v202 = v251;
    v40 = sub_1DF27BAD8();
    v203 = *v250;
    (*v250)(v201, v39);
    v203(v202, v39);
    sub_1DF27AA08(v254, type metadata accessor for AccessRecord);
    result = sub_1DF27AA08(v259, type metadata accessor for AccessRecord);
    v183 = v247;
    v24 = v248;
    v92 = v249;
    if (v40)
    {
      goto LABEL_107;
    }
  }

  v204 = v253;
  if (v242)
  {
    v205 = v243;
    sub_1DF27AB30(v184, v243);
    swift_arrayInitWithTakeFrontToBack();
    sub_1DF27AB30(v205, v185);
    v185 += v241;
    v184 += v241;
    v206 = __CFADD__(v204, 1);
    v40 = v204 + 1;
    if (v206)
    {
      goto LABEL_107;
    }

    goto LABEL_109;
  }

  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
  return result;
}

uint64_t sub_1DF277C60(char *a1, unint64_t a2, char *a3, char *a4)
{
  v159 = type metadata accessor for AccessRecord.Timing(0);
  v9 = MEMORY[0x1EEE9AC00](v159, v8);
  v148 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v154 = (&v136 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v151 = &v136 - v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v158 = (&v136 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F200, &qword_1DF27EFB0);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v141 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v147 = &v136 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v145 = &v136 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = &v136 - v31;
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v150 = &v136 - v35;
  MEMORY[0x1EEE9AC00](v34, v36);
  v156 = &v136 - v37;
  v38 = sub_1DF27BA98();
  v137 = *(v38 - 8);
  v40 = MEMORY[0x1EEE9AC00](v38, v39);
  v42 = &v136 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v40, v43);
  v139 = &v136 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v143 = &v136 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v144 = &v136 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50, v52);
  v55 = &v136 - v54;
  v57 = MEMORY[0x1EEE9AC00](v53, v56);
  v140 = &v136 - v58;
  v60 = MEMORY[0x1EEE9AC00](v57, v59);
  v146 = &v136 - v61;
  MEMORY[0x1EEE9AC00](v60, v62);
  v149 = &v136 - v63;
  v163 = type metadata accessor for AccessRecord(0);
  v65 = MEMORY[0x1EEE9AC00](v163, v64);
  v152 = &v136 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v65, v67);
  v155 = (&v136 - v69);
  v71 = MEMORY[0x1EEE9AC00](v68, v70);
  v157 = (&v136 - v72);
  result = MEMORY[0x1EEE9AC00](v71, v73);
  v160 = &v136 - v75;
  v153 = *(v76 + 72);
  if (!v153)
  {
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (a2 - a1 == 0x8000000000000000 && v153 == -1)
  {
    goto LABEL_95;
  }

  v77 = &a3[-a2];
  if (&a3[-a2] != 0x8000000000000000 || v153 != -1)
  {
    v78 = (a2 - a1) / v153;
    v166 = a1;
    v165 = a4;
    if (v78 < v77 / v153)
    {
      v79 = v78 * v153;
      if (a4 < a1 || &a1[v79] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v152 = &a4[v79];
      v164 = &a4[v79];
      v148 = a3;
      v82 = v79 < 1 || a2 >= a3;
      v83 = v156;
      if (!v82)
      {
        v84 = (v137 + 32);
        v147 = (v137 + 8);
        v154 = (v137 + 48);
        v155 = (v137 + 56);
        v145 = (v137 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v144 = v55;
        v142 = v32;
        while (1)
        {
          sub_1DF27AB94(a2, v160, type metadata accessor for AccessRecord);
          v85 = v157;
          sub_1DF27AB94(a4, v157, type metadata accessor for AccessRecord);
          v86 = *(v163 + 28);
          sub_1DF27AB94(v85 + v86, v158, type metadata accessor for AccessRecord.Timing);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v161 = a4;
          v162 = a2;
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              v88 = *v155;
              v89 = v150;
              (*v155)(v150, 1, 1, v38);
              sub_1DF27AA08(v158, type metadata accessor for AccessRecord.Timing);
              goto LABEL_27;
            }

            v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
            v90 = *v84;
            v93 = v158;
            v91 = v146;
            (*v84)(v146, v158 + *(v92 + 48), v38);
            (*v147)(v93, v38);
          }

          else
          {
            v90 = *v84;
            v91 = v146;
            (*v84)(v146, v158, v38);
          }

          v89 = v150;
          v90(v150, v91, v38);
          v88 = *v155;
          (*v155)(v89, 0, 1, v38);
          v83 = v156;
LABEL_27:
          sub_1DF27AA68(v89, v83, &qword_1ECE2F200, &qword_1DF27EFB0);
          v94 = *v154;
          if ((*v154)(v83, 1, v38) == 1)
          {
            sub_1DF27AAD0(v83, &qword_1ECE2F200, &qword_1DF27EFB0);
            sub_1DF27AA08(v157, type metadata accessor for AccessRecord);
            sub_1DF27AA08(v160, type metadata accessor for AccessRecord);
            a2 = v162;
            v95 = v153;
            goto LABEL_29;
          }

          v96 = v83;
          v97 = *v84;
          (*v84)(v149, v96, v38);
          sub_1DF27AB94(v160 + v86, v151, type metadata accessor for AccessRecord.Timing);
          v98 = swift_getEnumCaseMultiPayload();
          if (!v98)
          {
            v100 = v144;
            v97(v144, v151, v38);
LABEL_40:
            v99 = v142;
            v97(v142, v100, v38);
            v88(v99, 0, 1, v38);
            goto LABEL_41;
          }

          if (v98 != 1)
          {
            v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
            v102 = v151;
            v100 = v144;
            v97(v144, &v151[*(v101 + 48)], v38);
            (*v147)(v102, v38);
            goto LABEL_40;
          }

          v99 = v142;
          v88(v142, 1, 1, v38);
          sub_1DF27AA08(v151, type metadata accessor for AccessRecord.Timing);
LABEL_41:
          if (v94(v99, 1, v38) == 1)
          {
            (*v147)(v149, v38);
            sub_1DF27AAD0(v99, &qword_1ECE2F200, &qword_1DF27EFB0);
            sub_1DF27AA08(v157, type metadata accessor for AccessRecord);
            sub_1DF27AA08(v160, type metadata accessor for AccessRecord);
            a2 = v162;
            v95 = v153;
LABEL_44:
            a4 = v161;
            if (a1 < a2 || a1 >= a2 + v95)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v95;
            goto LABEL_50;
          }

          v103 = v140;
          v97(v140, v99, v38);
          sub_1DF27ABFC(&qword_1ECE2F020, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
          v104 = v149;
          v105 = sub_1DF27BAD8();
          v106 = *v147;
          (*v147)(v103, v38);
          v106(v104, v38);
          sub_1DF27AA08(v157, type metadata accessor for AccessRecord);
          sub_1DF27AA08(v160, type metadata accessor for AccessRecord);
          a2 = v162;
          v95 = v153;
          if ((v105 & 1) == 0)
          {
            goto LABEL_44;
          }

LABEL_29:
          a4 = &v161[v95];
          if (a1 < v161 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v161)
          {
            swift_arrayInitWithTakeBackToFront();
            v165 = a4;
            goto LABEL_50;
          }

          v165 = a4;
LABEL_50:
          a1 += v95;
          v166 = a1;
          v83 = v156;
          if (a4 >= v152 || a2 >= v148)
          {
            goto LABEL_93;
          }
        }
      }

      goto LABEL_93;
    }

    v80 = v77 / v153 * v153;
    v81 = v153;
    if (a4 < a2 || a2 + v80 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v162 = a2;
    v107 = &a4[v80];
    if (v80 < 1)
    {
LABEL_92:
      v166 = v162;
      v164 = v107;
LABEL_93:
      sub_1DF278ED8(&v166, &v165, &v164);
      return 1;
    }

    v138 = v42;
    v108 = -v81;
    v151 = (v137 + 8);
    v156 = (v137 + 48);
    v157 = (v137 + 56);
    v142 = (v137 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v109 = &a4[v80];
    v149 = v108;
    v150 = a1;
    v161 = a4;
    v158 = (v137 + 32);
LABEL_56:
    v137 = v107;
    v110 = v162;
    v162 = &v108[v162];
    v153 = v110;
    while (1)
    {
      if (v110 <= a1)
      {
        v166 = v110;
        v164 = v137;
        goto LABEL_93;
      }

      v111 = a3;
      v146 = v107;
      v160 = &v108[v109];
      sub_1DF27AB94(&v108[v109], v155, type metadata accessor for AccessRecord);
      v112 = v152;
      sub_1DF27AB94(v162, v152, type metadata accessor for AccessRecord);
      v113 = *(v163 + 28);
      sub_1DF27AB94(v112 + v113, v154, type metadata accessor for AccessRecord.Timing);
      v114 = swift_getEnumCaseMultiPayload();
      if (v114)
      {
        if (v114 == 1)
        {
          v115 = v109;
          v116 = *v157;
          v117 = v147;
          (*v157)(v147, 1, 1, v38);
          sub_1DF27AA08(v154, type metadata accessor for AccessRecord.Timing);
          goto LABEL_66;
        }

        v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
        v118 = *v158;
        v121 = v154;
        v119 = v143;
        (*v158)(v143, v154 + *(v120 + 48), v38);
        (*v151)(v121, v38);
      }

      else
      {
        v118 = *v158;
        v119 = v143;
        (*v158)(v143, v154, v38);
      }

      v117 = v147;
      v115 = v109;
      v118(v147, v119, v38);
      v116 = *v157;
      (*v157)(v117, 0, 1, v38);
LABEL_66:
      v122 = v145;
      sub_1DF27AA68(v117, v145, &qword_1ECE2F200, &qword_1DF27EFB0);
      v123 = *v156;
      if ((*v156)(v122, 1, v38) == 1)
      {
        sub_1DF27AAD0(v122, &qword_1ECE2F200, &qword_1DF27EFB0);
        v124 = 0;
        v109 = v115;
        v108 = v149;
        a1 = v150;
        goto LABEL_78;
      }

      v125 = v122;
      v126 = *v158;
      (*v158)(v144, v125, v38);
      sub_1DF27AB94(v155 + v113, v148, type metadata accessor for AccessRecord.Timing);
      v127 = swift_getEnumCaseMultiPayload();
      if (!v127)
      {
        v140 = v111;
        v129 = v138;
        v126(v138, v148, v38);
        v109 = v115;
LABEL_73:
        a1 = v150;
        v128 = v141;
        v126(v141, v129, v38);
        v116(v128, 0, 1, v38);
        v111 = v140;
        goto LABEL_74;
      }

      v109 = v115;
      if (v127 != 1)
      {
        v140 = v111;
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
        v131 = v148;
        v129 = v138;
        v126(v138, &v148[*(v130 + 48)], v38);
        (*v151)(v131, v38);
        goto LABEL_73;
      }

      v128 = v141;
      v116(v141, 1, 1, v38);
      sub_1DF27AA08(v148, type metadata accessor for AccessRecord.Timing);
      a1 = v150;
LABEL_74:
      if (v123(v128, 1, v38) == 1)
      {
        (*v151)(v144, v38);
        sub_1DF27AAD0(v128, &qword_1ECE2F200, &qword_1DF27EFB0);
        v124 = 1;
      }

      else
      {
        v132 = v139;
        v126(v139, v128, v38);
        sub_1DF27ABFC(&qword_1ECE2F020, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        v133 = v144;
        v134 = sub_1DF27BAD8();
        v135 = *v151;
        (*v151)(v132, v38);
        v135(v133, v38);
        v124 = v134 ^ 1;
      }

      v108 = v149;
LABEL_78:
      v110 = v153;
      a3 = &v108[v111];
      sub_1DF27AA08(v152, type metadata accessor for AccessRecord);
      sub_1DF27AA08(v155, type metadata accessor for AccessRecord);
      if (v124)
      {
        if (v111 < v110 || a3 >= v110)
        {
          swift_arrayInitWithTakeFrontToBack();
          v107 = v146;
        }

        else
        {
          v107 = v146;
          if (v111 != v110)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        if (v109 <= v161)
        {
          goto LABEL_92;
        }

        goto LABEL_56;
      }

      v107 = v160;
      if (v111 < v109 || a3 >= v109)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v111 != v109)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v109 = v107;
      if (v160 <= v161)
      {
        v162 = v110;
        goto LABEL_92;
      }
    }
  }

LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_1DF278E38(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DF278EC4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1DF278ED8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for AccessRecord(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t _s17PrivacyAccounting12AccessRecordV6TimingO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v3 = sub_1DF27BA98();
  v64 = *(v3 - 8);
  v65 = v3;
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v61 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v62 = &v61 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v63 = &v61 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v61 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v61 - v18;
  v20 = type metadata accessor for AccessRecord.Timing(0);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v61 - v27;
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v61 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F208, &qword_1DF27EFB8);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v36 = &v61 - v35;
  v37 = &v61 + *(v34 + 56) - v35;
  sub_1DF27AB94(a1, &v61 - v35, type metadata accessor for AccessRecord.Timing);
  sub_1DF27AB94(v66, v37, type metadata accessor for AccessRecord.Timing);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1DF27AB94(v36, v31, type metadata accessor for AccessRecord.Timing);
    if (!swift_getEnumCaseMultiPayload())
    {
      v58 = v64;
      v57 = v65;
      (*(v64 + 32))(v19, v37, v65);
      v41 = sub_1DF27BA78();
      v59 = *(v58 + 8);
      v59(v19, v57);
      v59(v31, v57);
      goto LABEL_16;
    }

    (*(v64 + 8))(v31, v65);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1DF27AB94(v36, v28, type metadata accessor for AccessRecord.Timing);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = v64;
      v39 = v65;
      (*(v64 + 32))(v16, v37, v65);
      v41 = sub_1DF27BA78();
      v42 = *(v40 + 8);
      v42(v16, v39);
      v42(v28, v39);
LABEL_16:
      sub_1DF27AA08(v36, type metadata accessor for AccessRecord.Timing);
      return v41 & 1;
    }

    (*(v64 + 8))(v28, v65);
    goto LABEL_13;
  }

  sub_1DF27AB94(v36, v24, type metadata accessor for AccessRecord.Timing);
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8) + 48);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v54 = *(v64 + 8);
    v55 = &v24[v43];
    v56 = v65;
    v54(v55, v65);
    v54(v24, v56);
LABEL_13:
    sub_1DF27AAD0(v36, &qword_1ECE2F208, &qword_1DF27EFB8);
    goto LABEL_14;
  }

  v45 = v63;
  v44 = v64;
  v46 = *(v64 + 32);
  v47 = v65;
  v46(v63, v37, v65);
  v48 = v62;
  v46(v62, &v24[v43], v47);
  v49 = &v37[v43];
  v50 = v61;
  v46(v61, v49, v47);
  v51 = sub_1DF27BA78();
  v52 = *(v44 + 8);
  v52(v24, v47);
  if (v51)
  {
    v53 = v48;
    v41 = sub_1DF27BA78();
    v52(v50, v47);
    v52(v53, v47);
    v52(v45, v47);
    goto LABEL_16;
  }

  v52(v50, v47);
  v52(v48, v47);
  v52(v45, v47);
  sub_1DF27AA08(v36, type metadata accessor for AccessRecord.Timing);
LABEL_14:
  v41 = 0;
  return v41 & 1;
}

unint64_t sub_1DF2795A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F228, &qword_1DF27EFD0);
    v3 = sub_1DF27BC78();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DF27AC44(v4, &v13, &qword_1ECE2F230, &unk_1DF27EFD8);
      v5 = v13;
      v6 = v14;
      result = sub_1DF275388(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DF27ACAC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1DF2796D0(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v58 = sub_1DF27B9F8();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v3);
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F210, &qword_1DF27EFC0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v49 - v7);
  v9 = type metadata accessor for AccessRecord(0);
  v50 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v49 = &v49 - v15;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F010, &qword_1DF27ECB8);
  v17 = MEMORY[0x1EEE9AC00](v53, v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v49 - v21;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F018, &qword_1DF27ECC0);
  MEMORY[0x1EEE9AC00](v51, v23);
  v52 = &v49 - v24;
  v25 = sub_1DF27BA98();
  sub_1DF27ABFC(&qword_1ECE2F020, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v26 = a2;
  v27 = v57;
  if (sub_1DF27BAD8())
  {
    LODWORD(v60[0]) = 22;
    sub_1DF2795A0(MEMORY[0x1E69E7CC0]);
    sub_1DF27ABFC(&qword_1ECE2F220, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v28 = v55;
    v29 = v58;
    sub_1DF27BA08();
    sub_1DF27B9E8();
    v56[1](v28, v29);
    return swift_willThrow();
  }

  else
  {
    result = sub_1DF27BAF8();
    if (result)
    {
      v55 = v13;
      v56 = v8;
      v58 = v9;
      v31 = *(v25 - 8);
      v32 = v31[2];
      v32(v22, v27, v25);
      v33 = v53;
      v32(&v22[*(v53 + 48)], v26, v25);
      sub_1DF27AC44(v22, v19, &qword_1ECE2F010, &qword_1DF27ECB8);
      v57 = *(v33 + 48);
      v34 = v31[4];
      v35 = v52;
      v34(v52, v19, v25);
      v36 = v31[1];
      v36(&v19[v57], v25);
      sub_1DF27AA68(v22, v19, &qword_1ECE2F010, &qword_1DF27ECB8);
      v34((v35 + *(v51 + 36)), &v19[*(v33 + 48)], v25);
      v36(v19, v25);
      v37 = v54;
      static AccessHistory<>.forReport(in:)(v35, &v64);
      result = sub_1DF27AAD0(v35, &qword_1ECE2F018, &qword_1DF27ECC0);
      if (!v37)
      {
        v57 = 0;
        v38 = v64;
        v63 = MEMORY[0x1E69E7CC0];
        sub_1DF27BC38();
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F000, &qword_1DF27ECB0);
        v61 = v39;
        v62 = sub_1DF2724BC();
        v60[0] = v38;
        v60[1] = 0;
        v54 = v38;

        __swift_mutable_project_boxed_opaque_existential_1(v60, v39);
        v40 = v56;
        sub_1DF27BBE8();
        v41 = (v50 + 48);
        v42 = (*(v50 + 48))(v40, 1, v58);
        v43 = v55;
        v44 = v49;
        if (v42 != 1)
        {
          do
          {
            sub_1DF27AB30(v40, v44);
            sub_1DF27AB94(v44, v43, type metadata accessor for AccessRecord);
            v45 = _s18AccessRecordObjectCMa(0);
            v46 = objc_allocWithZone(v45);
            sub_1DF27AB94(v43, v46 + OBJC_IVAR____TtCFE17PrivacyAccountingCSo14PAAccessReader23_accessRecordsForReportFzT4fromV10Foundation4Date2toS2__CSo12NSEnumeratorL_18AccessRecordObject_record, type metadata accessor for AccessRecord);
            v59.receiver = v46;
            v59.super_class = v45;
            objc_msgSendSuper2(&v59, sel_init);
            sub_1DF27AA08(v43, type metadata accessor for AccessRecord);
            sub_1DF27AA08(v44, type metadata accessor for AccessRecord);
            sub_1DF27BC18();
            sub_1DF27BC48();
            sub_1DF27BC58();
            sub_1DF27BC28();
            __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
            sub_1DF27BBE8();
          }

          while ((*v41)(v40, 1, v58) != 1);
        }

        sub_1DF27AAD0(v60, &qword_1ECE2F218, &qword_1DF27EFC8);
        sub_1DF27AAD0(v40, &qword_1ECE2F210, &qword_1DF27EFC0);
        _s18AccessRecordObjectCMa(0);
        v47 = sub_1DF27BB98();

        v48 = [v47 objectEnumerator];

        return v48;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t _s17PrivacyAccounting20ReverseChronologicalO15isOrderedBeforeySbAA12AccessRecordV6TimingO_AHtFZ_0(uint64_t a1, uint64_t a2)
{
  v41[1] = a1;
  v3 = type metadata accessor for AccessRecord.Timing(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F200, &qword_1DF27EFB0);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = v41 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v41 - v17;
  v19 = sub_1DF27BA98();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v41[0] = v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = v41 - v26;
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = v41 - v29;
  sub_1DF27AB94(a2, v6, type metadata accessor for AccessRecord.Timing);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v20 + 56))(v15, 1, 1, v19);
      sub_1DF27AA08(v6, type metadata accessor for AccessRecord.Timing);
      goto LABEL_7;
    }

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
    v32 = *(v20 + 32);
    v32(v27, &v6[*(v33 + 48)], v19);
    (*(v20 + 8))(v6, v19);
  }

  else
  {
    v32 = *(v20 + 32);
    v32(v27, v6, v19);
  }

  v32(v15, v27, v19);
  (*(v20 + 56))(v15, 0, 1, v19);
LABEL_7:
  sub_1DF27AA68(v15, v18, &qword_1ECE2F200, &qword_1DF27EFB0);
  v34 = *(v20 + 48);
  if (v34(v18, 1, v19) == 1)
  {
    sub_1DF27AAD0(v18, &qword_1ECE2F200, &qword_1DF27EFB0);
    v35 = 0;
  }

  else
  {
    v36 = *(v20 + 32);
    v36(v30, v18, v19);
    sub_1DF2739CC(v11);
    if (v34(v11, 1, v19) == 1)
    {
      (*(v20 + 8))(v30, v19);
      sub_1DF27AAD0(v11, &qword_1ECE2F200, &qword_1DF27EFB0);
      v35 = 1;
    }

    else
    {
      v37 = v41[0];
      v36(v41[0], v11, v19);
      sub_1DF27ABFC(&qword_1ECE2F020, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v38 = sub_1DF27BAD8();
      v39 = *(v20 + 8);
      v39(v37, v19);
      v39(v30, v19);
      v35 = v38 ^ 1;
    }
  }

  return v35 & 1;
}

unint64_t sub_1DF27A2E4()
{
  result = qword_1ECE2F028[0];
  if (!qword_1ECE2F028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECE2F028);
  }

  return result;
}

uint64_t sub_1DF27A338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DF27A38C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF27A3D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DF27A428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DF27A478(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF27A4C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DF27A548(uint64_t a1)
{
  type metadata accessor for PAAccessCategory();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AccessRecord.Timing(319);
    if (v2 <= 0x3F)
    {
      sub_1DF27A5FC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DF27A5FC()
{
  if (!qword_1ECE2F148)
  {
    v0 = sub_1DF27BBD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE2F148);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DF27A658(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF27A6A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DF27A744(uint64_t a1)
{
  sub_1DF27BA98();
  if (v1 <= 0x3F)
  {
    sub_1DF27A7B8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1DF27A7B8(uint64_t a1)
{
  if (!qword_1ECE2F168)
  {
    sub_1DF27BA98();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECE2F168);
    }
  }
}

uint64_t getEnumTagSinglePayload for ReverseChronological(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ReverseChronological(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1DF27A940(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF27A978(uint64_t a1)
{
  result = type metadata accessor for AccessRecord(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF27AA08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DF27AA68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DF27AAD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DF27AB30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF27AB94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF27ABFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF27AC44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_1DF27ACAC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void PAAuthenticatedClientIdentity_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DF25B000, a2, OS_LOG_TYPE_ERROR, "Failed to retrieve entitlements for process.  Got %@", &v2, 0xCu);
}

void PAAuthenticatedClientIdentityWithClientProperties_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = tcc_object_copy_description();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_1DF25B000, v3, v4, "BUG IN %{public}@! They attempted to provide a runtime-determined identity (%{public}@) while using the assumed-identity entitlement", v5, v6, v7, v8);
}

void PAAuthenticatedClientIdentityWithClientProperties_cold_3(uint64_t a1, uint64_t a2)
{
  v2 = tcc_object_copy_description();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_1DF25B000, v3, v4, "BUG IN %@! They are attempting to assume an identity that they aren't entitled to: %{public}@", v5, v6, v7, v8);
}

void __lookupTCCIdentity_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1DF25B000, a2, OS_LOG_TYPE_ERROR, "TCC attribution for client failed with error: %{public}@", &v2, 0xCu);
}

void implicitIdentityEntryToTCCIdentity_cold_4(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"type"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_1DF25B000, v3, v4, "BUG IN %{public}@! Encountered malformed implicitly assumed identity entitlement. Bad identity type: %{public}@", v5, v6, v7, v8);
}

void __PADefaultBundleRecordRetriever_block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1DF25B000, log, OS_LOG_TYPE_ERROR, "Failed to fetch LS record for application=%{public}@ with error=%{public}@", &v3, 0x16u);
}

void __PADefaultBundleRecordRetriever_block_invoke_2_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1DF25B000, a2, OS_LOG_TYPE_DEBUG, "Skipping LS lookup for application=%{public}@", &v2, 0xCu);
}
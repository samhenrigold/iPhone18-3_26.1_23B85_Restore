const char *NetworkQualityStages_to_string(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return "UnknownStage";
  }

  else
  {
    return off_2799694F8[a1];
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25B967EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 224), 8);
  _Block_object_dispose((v38 - 192), 8);
  _Block_object_dispose((v38 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __getSymptomReporter_block_invoke()
{
  result = symptom_framework_init();
  getSymptomReporter_symptomReporter = result;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x1Cu);
}

uint64_t CreateSelfSignedIdentity(void *a1, sec_identity_t *a2, CFArrayRef *a3)
{
  v44[2] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = *MEMORY[0x277CDC060];
  v7 = *MEMORY[0x277CDC018];
  v43[0] = *MEMORY[0x277CDC028];
  v43[1] = v7;
  v44[0] = v6;
  v44[1] = &unk_286D22C88;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
  RandomKey = SecKeyCreateRandomKey(v8, 0);
  if (RandomKey)
  {
    v11 = RandomKey;
    v12 = SecKeyCopyPublicKey(RandomKey);
    if (v12)
    {
      v14 = v12;
      v34 = a3;
      v40[0] = *MEMORY[0x277CDC458];
      v40[1] = @"Apple Inc.";
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
      v41 = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      v42[0] = v16;
      v38[0] = *MEMORY[0x277CDC448];
      v38[1] = v5;
      v35 = v5;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
      v39 = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
      v42[1] = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];

      v36 = *MEMORY[0x277CDC210];
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:7];
      v37 = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];

      SelfSignedCertificate = SecGenerateSelfSignedCertificate();
      if (SelfSignedCertificate)
      {
        v24 = SelfSignedCertificate;
        v25 = SecIdentityCreate();
        if (v25)
        {
          v27 = v25;
          v28 = [MEMORY[0x277CBEA60] arrayWithObject:v24];
          v29 = *v34;
          *v34 = v28;

          v30 = sec_identity_create_with_certificates(v27, *v34);
          v31 = *a2;
          *a2 = v30;

          CFRelease(v27);
          CFRelease(v24);
          v32 = 0;
LABEL_18:
          v5 = v35;
          CFRelease(v14);
          CFRelease(v11);

          goto LABEL_19;
        }

        netqual_log_init(0, v26);
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
        {
          CreateSelfSignedIdentity_cold_1();
        }

        CFRelease(v24);
      }

      else
      {
        netqual_log_init(0, v23);
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
        {
          CreateSelfSignedIdentity_cold_2();
        }
      }

      v32 = 4294966387;
      goto LABEL_18;
    }

    netqual_log_init(0, v13);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      CreateSelfSignedIdentity_cold_3();
    }

    CFRelease(v11);
  }

  else
  {
    netqual_log_init(0, v10);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      CreateSelfSignedIdentity_cold_4();
    }
  }

  v32 = 4294966387;
LABEL_19:

  return v32;
}

const char *nw_connection_client_accurate_ecn_state_to_string(unsigned int a1)
{
  if (a1 > 9)
  {
    return "ecn_unknown_state";
  }

  else
  {
    return off_279969558[a1];
  }
}

const char *nw_interface_type_to_string(unsigned int a1)
{
  if (a1 > 4)
  {
    return "unknown";
  }

  else
  {
    return off_2799695A8[a1];
  }
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_25B96FB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 216), 8);
  _Block_object_dispose((v33 - 184), 8);
  _Block_object_dispose((v33 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25B9722B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float get_average(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      v6 = 0.0;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v11 + 1) + 8 * i) floatValue];
          v6 = v6 + v8;
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }

    else
    {
      v6 = 0.0;
    }

    v9 = v6 / [v2 count];
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

void netqual_log_init(uint64_t result, uint64_t a2)
{
  if (netqual_log_init_onceToken != -1)
  {
    netqual_log_init_cold_1();
  }
}

uint64_t __netqual_log_init_block_invoke()
{
  os_log_netqual = os_log_create("com.apple.networkQuality", "netqual");

  return MEMORY[0x2821F96F8]();
}

void sub_25B973A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NetworkQualityNetworkServiceType_ToString(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return @"unknown";
  }

  else
  {
    return off_2799696C0[a1];
  }
}

void sub_25B9784C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}
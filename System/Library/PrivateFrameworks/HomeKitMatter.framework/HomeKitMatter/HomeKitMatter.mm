void *isFeatureMatteriPhoneOnlyPairingControlEnabled()
{
  v1 = isFeatureMatteriPhoneOnlyPairingControlEnabledForTests;
  if (!isFeatureMatteriPhoneOnlyPairingControlEnabledForTests)
  {
    v3 = [MEMORY[0x277D0F8E8] productInfo];
    v4 = [v3 productClass];

    if (v4 == 3)
    {
      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        result = CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingForIPadEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
        if (!result)
        {
          return result;
        }
      }

      if (isHH2Enabled_onceToken == -1)
      {
        return isHH2Enabled_hh2Enabled;
      }

LABEL_20:
      dispatch_once(&isHH2Enabled_onceToken, &__block_literal_global_8710);
      return isHH2Enabled_hh2Enabled;
    }

    v5 = [MEMORY[0x277D0F8E8] productInfo];
    v6 = [v5 productPlatform];

    if (v6 == 1)
    {
      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        result = CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingForMacEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
        if (!result)
        {
          return result;
        }
      }

      if (isHH2Enabled_onceToken != -1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        result = CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
        if (!result)
        {
          return result;
        }
      }

      if (isHH2Enabled_onceToken != -1)
      {
        goto LABEL_20;
      }
    }

    return isHH2Enabled_hh2Enabled;
  }

  return [v1 BOOLValue];
}

unint64_t isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled()
{
  v1 = isFeatureMatteriPhoneOnlyPairingControlEnabledForTests;
  if (isFeatureMatteriPhoneOnlyPairingControlEnabledForTests)
  {

    return [v1 BOOLValue];
  }

  else
  {
    result = isFeatureMatteriPhoneOnlyPairingControlEnabled();
    if (result)
    {
      return (_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"ThreadServiceEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) != 0;
    }
  }

  return result;
}

__CFString *HMMTRAccessoryPairingStepAsString(unint64_t a1)
{
  if (a1 >= 0x17)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Undefined HMMTRAccessoryPairingStep %tu", a1];
  }

  else
  {
    v2 = off_2786EC708[a1];
  }

  return v2;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AEE65A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_22AEEE5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1810(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AEEEA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AEEEDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AEEF12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AEEF2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AEEF8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AEF0264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AEF0870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AEF41B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AEF497C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AEF4AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AF040CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3169(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AF047D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AF09EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3457(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AF0A2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AF0BE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AF0DEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AF0EDAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AF16758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4540(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AF1A094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id encodeValues(void *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count])
  {
    v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = v1;
    v3 = v1;
    v4 = v2;
    obj = v3;
    v5 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v29;
      v8 = *MEMORY[0x277CD5128];
      v24 = v2;
      v27 = *MEMORY[0x277CD5128];
      do
      {
        v9 = 0;
        v25 = v6;
        do
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v28 + 1) + 8 * v9);
          v11 = [v10 objectForKeyedSubscript:v8];

          if (v11)
          {
            v12 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
            v13 = [v12 objectForKeyedSubscript:v8];
            v32 = 0;
            v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v32];
            v15 = v32;
            if (v15)
            {
              v16 = v7;
              v17 = objc_autoreleasePoolPush();
              v18 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v19 = HMFGetLogIdentifier();
                *buf = 138543618;
                v35 = v19;
                v36 = 2112;
                v37 = v15;
                _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot encode NSError for HMFMessage: %@", buf, 0x16u);

                v4 = v24;
              }

              objc_autoreleasePoolPop(v17);
              v20 = [MEMORY[0x277CBEA90] data];
              v7 = v16;
              v6 = v25;
            }

            else
            {
              v20 = v14;
            }

            v8 = v27;
            [v12 setObject:v20 forKeyedSubscript:v27];
          }

          else
          {
            v12 = v10;
          }

          [v4 addObject:v12];
          ++v9;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v6);
    }

    v21 = [MEMORY[0x277CD5318] encodeXPCResponseValues:v4];

    v1 = v23;
  }

  else
  {
    v21 = v1;
  }

  return v21;
}

id decodeValues(void *a1)
{
  v1 = decodeValuesKeepingXPCEncoding(a1);
  v2 = [MEMORY[0x277CD5318] decodeXPCResponseValues:v1];

  return v2;
}

id decodeValuesKeepingXPCEncoding(void *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count])
  {
    v2 = [v1 count];
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
    v5 = v3;
    if (v2)
    {
      v6 = 0;
      v7 = *MEMORY[0x277CD5128];
      *&v4 = 138543618;
      v25 = v4;
      v27 = v3;
      v28 = v1;
      v26 = v2;
      do
      {
        v8 = [v1 objectAtIndexedSubscript:{v6, v25}];
        v9 = [v8 objectForKeyedSubscript:v7];
        if (v9 && (v10 = v9, [v8 objectForKeyedSubscript:v7], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, v10, (isKindOfClass & 1) != 0))
        {
          v13 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
          v14 = [v13 objectForKeyedSubscript:v7];
          v15 = MEMORY[0x277CCAAC8];
          v16 = objc_opt_class();
          v29 = 0;
          v17 = [v15 unarchivedObjectOfClass:v16 fromData:v14 error:&v29];
          v18 = v29;
          v19 = v17;
          if (v18)
          {
            v20 = objc_autoreleasePoolPush();
            v21 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = HMFGetLogIdentifier();
              *buf = v25;
              v31 = v22;
              v32 = 2112;
              v33 = v17;
              _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cannot decode NSError for HMFMessage: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v20);
            v19 = v18;
          }

          v23 = v19;

          [v13 setObject:v23 forKeyedSubscript:v7];
          v5 = v27;
          v1 = v28;
          v2 = v26;
        }

        else
        {
          v13 = v8;
        }

        [v5 addObject:v13];
        ++v6;
      }

      while (v2 != v6);
    }
  }

  else
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithArray:v1];
  }

  return v5;
}

void sub_22AF2525C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5708(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AF259FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t attributePathMatches(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 endpoint];
  if (!v5 || ([v3 endpoint], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToNumber:", v6), v6, v7))
  {
    v8 = [v4 cluster];
    if (v8 && ([v3 cluster], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToNumber:", v9), v9, !v10))
    {
      v7 = 0;
    }

    else
    {
      v11 = [v4 attribute];
      if (v11)
      {
        v12 = [v3 attribute];
        v7 = [v11 isEqualToNumber:v12];
      }

      else
      {
        v7 = 1;
      }
    }
  }

  return v7;
}

uint64_t __Block_byref_object_copy__5859(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AF2DC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

__CFString *HMMTRUserPrivilegeAsString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"None";
  }

  else
  {
    return off_2786EE340[a1 - 1];
  }
}

id dictionaryFromMatterMetrics(void *a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v31 = [MEMORY[0x277CBEB38] dictionary];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v33 = v1;
  obj = [v1 allKeys];
  v34 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v34)
  {
    v32 = *v37;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v36 + 1) + 8 * i);
        v4 = [v33 metricDataForKey:v3];
        v5 = v4;
        if (v4)
        {
          v6 = v4;
          v7 = v3;
          v35 = v31;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v8 = [&unk_283EE92B8 countByEnumeratingWithState:&v40 objects:v45 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v41;
            do
            {
              v11 = 0;
              v12 = v7;
              do
              {
                if (*v41 != v10)
                {
                  objc_enumerationMutation(&unk_283EE92B8);
                }

                v7 = [v12 stringByReplacingOccurrencesOfString:*(*(&v40 + 1) + 8 * v11) withString:@"_"];

                ++v11;
                v12 = v7;
              }

              while (v9 != v11);
              v9 = [&unk_283EE92B8 countByEnumeratingWithState:&v40 objects:v45 count:16];
            }

            while (v9);
          }

          v13 = [v6 value];

          if (v13)
          {
            v14 = [v7 stringByAppendingString:@"_value"];
            v15 = [v6 value];
            v16 = v35;
            [v35 setObject:v15 forKeyedSubscript:v14];

            v17 = [v6 value];
          }

          else
          {
            v17 = &unk_283EE8580;
            v16 = v35;
          }

          v18 = [v6 errorCode];

          if (v18)
          {
            v19 = [v7 stringByAppendingString:@"_error"];
            v20 = [v6 errorCode];
            [v16 setObject:v20 forKeyedSubscript:v19];

            v21 = [v6 errorCode];

            v17 = v21;
          }

          v22 = [v6 duration];

          if (v22)
          {
            v23 = [v7 stringByAppendingString:@"_duration"];
            v24 = MEMORY[0x277CCABB0];
            v25 = [v6 duration];
            [v25 doubleValue];
            v27 = [v24 numberWithUnsignedLongLong:(v26 * 1000.0)];
            [v35 setObject:v27 forKeyedSubscript:v23];

            v16 = v35;
          }

          [v16 setObject:v17 forKeyedSubscript:v7];
        }
      }

      v34 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v34);
  }

  v28 = [v31 copy];

  return v28;
}

void __submitMatterMetrics_block_invoke_2(uint64_t a1)
{
  v29[3] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = dictionaryFromMatterMetrics(*(a1 + 32));
  v4 = objc_autoreleasePoolPush();
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 40);
    *buf = 138544130;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    *&buf[22] = 2048;
    v28 = [v3 count];
    LOWORD(v29[0]) = 2112;
    *(v29 + 2) = v3;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Submitting Matter metric event '%@' to CA with %lu entries: %@ ", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(a1 + 40);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __submitMatterMetrics_block_invoke_2;
  v21[3] = &unk_2786EE360;
  v9 = v3;
  v22 = v9;
  v10 = v8;
  v11 = v21;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v12 = getAnalyticsSendEventLazySymbolLoc_ptr;
  v26 = getAnalyticsSendEventLazySymbolLoc_ptr;
  if (!getAnalyticsSendEventLazySymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAnalyticsSendEventLazySymbolLoc_block_invoke;
    v28 = &unk_2786EE388;
    v29[0] = &v23;
    __getAnalyticsSendEventLazySymbolLoc_block_invoke(buf);
    v12 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v12)
  {
    v20 = dlerror();
    abort_report_np("%s", v20);
    __break(1u);
  }

  v13 = v12(v10, v11);

  v14 = objc_autoreleasePoolPush();
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = v16;
    v18 = *(a1 + 40);
    v19 = @"no";
    *buf = 138543874;
    if (v13)
    {
      v19 = @"yes";
    }

    *&buf[4] = v16;
    *&buf[12] = 2112;
    *&buf[14] = v18;
    *&buf[22] = 2112;
    v28 = v19;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Submission of Matter metric event '%@' was: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  objc_autoreleasePoolPop(v2);
}

void sub_22AF3F9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAnalyticsSendEventLazySymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CoreAnalyticsLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreAnalyticsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2786EE3A8;
    v7 = 0;
    CoreAnalyticsLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = CoreAnalyticsLibraryCore_frameworkLibrary;
    if (CoreAnalyticsLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = CoreAnalyticsLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "AnalyticsSendEventLazy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAnalyticsSendEventLazySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreAnalyticsLibraryCore_frameworkLibrary = result;
  return result;
}

void __submitMatterMetrics_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v0 = dispatch_queue_create("com.apple.matter.metrics", v2);
  v1 = submitMatterMetrics_metricsQueue;
  submitMatterMetrics_metricsQueue = v0;
}

void sub_22AF46344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7675(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AF51638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22AF57F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8108(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t isHH2Enabled()
{
  if (isHH2Enabled_onceToken != -1)
  {
    dispatch_once(&isHH2Enabled_onceToken, &__block_literal_global_8710);
  }

  return isHH2Enabled_hh2Enabled;
}

void __isHH2Enabled_block_invoke()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Hmdhomemanager.isa)];
  v1 = [v0 bundlePath];
  v2 = [v1 containsString:@"HomeKitDaemonLegacy.framework"];

  if ((v2 & 1) == 0)
  {
    isHH2Enabled_hh2Enabled = 1;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = v5;
    v7 = @"HH1";
    if (isHH2Enabled_hh2Enabled)
    {
      v7 = @"HH2";
    }

    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@HomeKit Matter is Running in %@ mode", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
}

void *isFeatureMatterLocalFabricConfigEnabled(uint64_t a1, uint64_t a2)
{
  v2 = isFeatureMatteriPhoneOnlyPairingControlEnabledForTests;
  if (isFeatureMatteriPhoneOnlyPairingControlEnabledForTests || (v2 = isFeatureMatterLocalFabricConfigEnabledForTests) != 0)
  {

    return [v2 BOOLValue];
  }

  else if (isFeatureMatterRVCEnabled())
  {
    if (isHH2Enabled_onceToken != -1)
    {
      dispatch_once(&isHH2Enabled_onceToken, &__block_literal_global_8710);
    }

    return isHH2Enabled_hh2Enabled;
  }

  else
  {

    return isFeatureMatteriPhoneOnlyPairingControlEnabled();
  }
}

uint64_t isFeatureMatterRVCEnabled()
{
  v1 = isFeatureMatterRVCEnabledForTests;
  if (isFeatureMatterRVCEnabledForTests)
  {

    return [v1 BOOLValue];
  }

  else
  {
    return (_os_feature_enabled_impl() & 1) != 0 || HM_FEATURE_RVC_DEFAULTS_ENABLED() != 0;
  }
}

unint64_t isFeatureMatteriPhoneOnlyPairingControlForIPEnabled()
{
  v1 = isFeatureMatteriPhoneOnlyPairingControlEnabledForTests;
  if (isFeatureMatteriPhoneOnlyPairingControlEnabledForTests)
  {

    return [v1 BOOLValue];
  }

  else
  {
    result = isFeatureMatteriPhoneOnlyPairingControlEnabled();
    if (result)
    {
      return (_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingForIPEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) != 0;
    }
  }

  return result;
}

void sub_22AF6DAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AF6DC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AF744B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22AF75F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9232(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AF78B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AF79E80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22AF7AC44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AF7BFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AF7C184(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22AF7F0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v27 - 192), 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_22AF8035C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AF80844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AF811E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ReadIntegerWithContextSpecificTag(char **a1, unint64_t *a2, void *a3)
{
  *a3 = 0;
  v3 = *a2;
  if (*a2 < 2)
  {
    return 0;
  }

  v6 = *a1;
  v7 = **a1;
  if ((v7 & 0xE0) == 0x20 && !v6[1])
  {
    result = 0;
    v10 = v7 & 0x1F;
    if (v10 > 3)
    {
      if (v10 <= 5)
      {
        if (v10 != 4)
        {
          v11 = 0;
          goto LABEL_12;
        }

        v11 = 0;
        v12 = 1;
LABEL_24:
        v13 = v12 + 2;
        if (v3 >= v12 + 2)
        {
          *a3 = LittleEndianNumberFromBytes((v6 + 2), v12, v11);
          *a1 += v13;
          *a2 -= v13;
          return 1;
        }

        return 0;
      }

      if (v10 != 6)
      {
        if (v10 != 7)
        {
          return result;
        }

        v11 = 0;
        goto LABEL_18;
      }

      v11 = 0;
    }

    else
    {
      if (v10 <= 1)
      {
        if (v10)
        {
          v11 = 1;
LABEL_12:
          v12 = 2;
          goto LABEL_24;
        }

        v12 = 1;
        v11 = 1;
        goto LABEL_24;
      }

      if (v10 != 2)
      {
        v11 = 1;
LABEL_18:
        v12 = 8;
        goto LABEL_24;
      }

      v11 = 1;
    }

    v12 = 4;
    goto LABEL_24;
  }

  return 0;
}

uint64_t ReadOctetStringWithContextSpecificTag(char **a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v4 = *a2;
  if (*a2 < 2)
  {
    return 0;
  }

  v5 = *a1;
  v6 = **a1;
  if ((v6 & 0xE0) != 0x20)
  {
    return 0;
  }

  if (v5[1] != 1)
  {
    return 0;
  }

  v7 = (v6 & 0x1F) - 16;
  if (v7 > 3)
  {
    return 0;
  }

  v8 = qword_22AFFDA88[v7];
  v9 = v8 + 2;
  if (v4 < v8 + 2)
  {
    return 0;
  }

  v11 = 0;
  do
  {
    v11 = v5[v8-- + 1] | (v11 << 8);
  }

  while (v8);
  v12 = v11 + v9;
  if (!__CFADD__(v11, v9) && v4 >= v12)
  {
    *a3 = &v5[v9];
    *a4 = v11;
    *a1 += v12;
    *a2 -= v12;
    return 1;
  }

  return v8;
}

id LittleEndianNumberFromBytes(uint64_t a1, unint64_t a2, int a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = a1 - 1;
  do
  {
    v4 = (*(v7 + a2) | (*&v4 << 8));
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v7 + a2) < 0;
    }

    v9 = v8;
    v5 |= v9;
    ++v6;
    --v7;
  }

  while (a2 != v6);
  if ((a3 & v5) == 1)
  {
    if (a2 <= 7)
    {
      v10 = (9 - a2) & 0xE;
      v11 = v4;
      v12 = vaddq_s64(vdupq_n_s64(a2), xmmword_22AFFDA40);
      v13.i64[0] = 255;
      v13.i64[1] = 255;
      v14 = vdupq_n_s64(2uLL);
      do
      {
        v15 = v11;
        v11 = vorrq_s8(vshlq_u64(v13, vshlq_n_s64(v12, 3uLL)), v11);
        v12 = vaddq_s64(v12, v14);
        v10 -= 2;
      }

      while (v10);
      v16 = vbslq_s8(vcgtq_u64(vorrq_s8(vdupq_n_s64((7 - a2) & 6), xmmword_22AFFDA40), vdupq_lane_s64(7 - a2, 0)), v15, v11);
      v4 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
    }

    v17 = [MEMORY[0x277CCABB0] numberWithLongLong:*&v4];
  }

  else
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v4];
  }

  return v17;
}

void sub_22AF9013C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22AF90E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10189(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AF91668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AF92264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AF94AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_22AF9B96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_22AF9E71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AF9EB24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_22AFA3C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AFA3EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AFA4D48(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22AFA9404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AFAB260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_22AFB1218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AFB3480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 224), 8);
  _Block_object_dispose((v34 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_22AFB3B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, ...)
{
  va_start(va, a45);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AFC3FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AFC767C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AFD7248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10952(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AFD7AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AFD871C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

void sub_22AFE0438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AFE0668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AFE3E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11650(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AFE9D6C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22AFED1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AFED8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AFEDFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AFEE72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12349(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12513(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}
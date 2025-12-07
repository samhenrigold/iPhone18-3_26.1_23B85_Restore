void sub_22AADDAA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22AADDDC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AADF484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HAPAuthMethodToString(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"HAPAuthMethodUnknown";
  }

  else
  {
    return off_2786D2590[a1];
  }
}

id HAPAuthFeaturesToString(char a1)
{
  if (a1)
  {
    v2 = [@"<" stringByAppendingString:@" AuthV2"];
    if ((a1 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = @"<";
  if ((a1 & 4) != 0)
  {
LABEL_5:
    v3 = [(__CFString *)v2 stringByAppendingString:@" AuthV3"];

    v2 = v3;
  }

LABEL_6:
  if ((a1 & 2) == 0)
  {
    if ((a1 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = [(__CFString *)v2 stringByAppendingString:@" Token"];

  v2 = v7;
  if ((a1 & 8) != 0)
  {
LABEL_8:
    v4 = [(__CFString *)v2 stringByAppendingString:@" SWCert"];

    v2 = v4;
  }

LABEL_9:
  v5 = [(__CFString *)v2 stringByAppendingString:@" >"];

  return v5;
}

uint64_t HAPGetPreferredAuthMethod(int a1)
{
  v1 = 2;
  v2 = 4;
  v3 = 5;
  if ((a1 & 0x10) != 0)
  {
    v3 = 6;
  }

  if ((a1 & 8) == 0)
  {
    v2 = v3;
  }

  if ((a1 & 2) == 0)
  {
    v1 = v2;
  }

  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v1;
  }

  if ((a1 & 0xFFFFFFBF) != 0)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_22AAE5D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AAE6A28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__374(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AAE6CF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AAE6E70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AAE7044(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22AAE72F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22AAE7410(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22AAE774C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AAE794C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *HAPAudioCodecBitRateAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"HAPAudioCodecBitRateConstant";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPAudioCodecBitRate %ld", a1];
    }
  }

  else
  {
    v2 = @"HAPAudioCodecBitRateVariable";
  }

  return v2;
}

__CFString *HAPAudioCodecSampleRateAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPAudioCodecSampleRate %ld", a1];
  }

  else
  {
    v2 = off_2786D2618[a1];
  }

  return v2;
}

__CFString *HAPAudioCodecTypeAsString(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPAudioCodecType %ld", a1];
  }

  else
  {
    v2 = off_2786D2630[a1];
  }

  return v2;
}

void sub_22AAEC5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AAED9FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AAEE670(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

uint64_t _SavePairedPeerDelegateCallback_f(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (v7 && (isKindOfClass & 1) != 0)
  {
    v9 = [v7 server];

    v7 = v9;
  }

  v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a3 length:32];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a1 length:a2 encoding:4];
  v12 = [v7 identifier];
  v13 = [v12 isEqualToString:v11];

  v14 = objc_autoreleasePoolPush();
  if (v13)
  {
    v15 = v7;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v17;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Pair-Setup - Saving KeyChain for accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [v15 keyStore];
    v25 = 0;
    [v18 savePublicKey:v10 forAccessoryName:v11 error:&v25];
    v19 = v25;

    [v15 associateAccessoryWithControllerKeyUsingAccessoryPublicKey:v10];
    v20 = [v19 code];
  }

  else
  {
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v7 identifier];
      *buf = 138543874;
      v27 = v22;
      v28 = 2112;
      v29 = v23;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@Device id changed during pair setup: %@, %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v20 = 4294960591;
  }

  return v20;
}

uint64_t _FindPairedPeerDelegateCallback_f(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  v7 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (v7 && (isKindOfClass & 1) != 0)
  {
    v9 = [v7 server];

    v7 = v9;
  }

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a1 length:a2 encoding:4];
  v11 = [v7 identifier];
  v12 = [v11 isEqualToString:v10];

  if (v12)
  {
    v13 = [v7 keyStore];
    v20 = 0;
    v14 = [v13 readPublicKeyForAccessoryName:v10 registeredWithHomeKit:0 error:&v20];
    v15 = v20;

    v16 = [v15 code];
    if (!v16)
    {
      if (v14)
      {
        if ([v14 length] == 32)
        {
          v17 = [v14 bytes];
          v16 = 0;
          v18 = v17[1];
          *a3 = *v17;
          a3[1] = v18;
        }

        else
        {
          v16 = 4294960553;
        }
      }

      else
      {
        v16 = 4294960569;
      }
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 4294960542;
  }

  return v16;
}

uint64_t _CopyPairingIdentityDelegateCallback_f(int a1, char **a2, _OWORD *a3, _OWORD *a4, void *a5)
{
  v51 = *MEMORY[0x277D85DE8];
  v9 = a5;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (v9 && (isKindOfClass & 1) != 0)
  {
    v11 = [v9 server];

    v9 = v11;
  }

  v12 = [v9 pairingRequest];
  v13 = [v12 pairingIdentity];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v15 = [v9 keyBag];
    v14 = [v15 currentIdentity];

    if (!v14)
    {
      v39 = a2;
      v24 = [v9 keyStore];
      if (a4)
      {
        v45 = 0;
        v46 = 0;
        v44 = 0;
        v27 = [v9 identifier];
        v43 = 0;
        [v24 getControllerPublicKey:&v46 secretKey:&v45 username:&v44 allowCreation:a1 != 0 forAccessory:v27 error:&v43];
        v22 = v46;
        v25 = v45;
        v23 = v44;
        v26 = v43;

        v14 = 0;
      }

      else
      {
        v41 = 0;
        v42 = 0;
        v28 = [v9 identifier];
        v40 = 0;
        [v24 getControllerPublicKey:&v42 secretKey:0 username:&v41 allowCreation:a1 != 0 forAccessory:v28 error:&v40];
        v22 = v42;
        v23 = v41;
        v26 = v40;

        v14 = 0;
        v25 = 0;
      }

      a2 = v39;
      goto LABEL_16;
    }
  }

  v16 = objc_autoreleasePoolPush();
  v17 = v9;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [v14 identifier];
    *buf = 138543618;
    v48 = v19;
    v49 = 2114;
    v50 = v20;
    _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_INFO, "%{public}@Using Pairing Identity for PV/PS : %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v21 = [v14 publicKey];
  v22 = [v21 data];

  v23 = [v14 identifier];
  if (a4)
  {
    v24 = [v14 privateKey];
    v25 = [v24 data];
    v26 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v26 = 0;
  v25 = 0;
LABEL_17:
  v29 = [v26 code];
  if (v29)
  {
    goto LABEL_29;
  }

  if (!v22)
  {
    goto LABEL_31;
  }

  if ([v22 length] != 32)
  {
    goto LABEL_30;
  }

  v30 = [v22 bytes];
  v31 = v30[1];
  *a3 = *v30;
  a3[1] = v31;
  if (!a4)
  {
    goto LABEL_24;
  }

  if (!v25)
  {
LABEL_31:
    v29 = 4294960569;
    goto LABEL_29;
  }

  if ([v25 length] != 32)
  {
    goto LABEL_30;
  }

  v32 = [v25 bytes];
  v33 = v32[1];
  *a4 = *v32;
  a4[1] = v33;
LABEL_24:
  v29 = 0;
  if (a2 && v23)
  {
    v34 = [v23 lengthOfBytesUsingEncoding:4];
    if (v34)
    {
      v35 = v34;
      v36 = malloc_type_calloc(v34 + 1, 1uLL, 0x100004077774924uLL);
      if (v36)
      {
        v37 = v36;
        strlcpy(v36, [v23 UTF8String], v35 + 1);
        v29 = 0;
        *a2 = v37;
      }

      else
      {
        v29 = 4294960568;
      }

      goto LABEL_29;
    }

LABEL_30:
    v29 = 4294960553;
  }

LABEL_29:

  return v29;
}

void sub_22AAF0980(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_22AAF12F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AAF2814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak((v27 - 128));
  _Unwind_Resume(a1);
}

void sub_22AAF30EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__742(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AAF33A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AAF4A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AAF50FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AAF57FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AAF6B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AAF742C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *_PairSetupEventHandler(void *result, uint64_t a2, void *a3)
{
  if (result == 3)
  {
    return [a3 _handlePairSetupAfterM4Callback];
  }

  return result;
}

uint64_t _PairSetupPromptForSetupCodeDelegateCallback_f(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 _promptForSetupCodeWithFlags:a1 delaySeconds:a2 pairingFlags:PairingSessionGetPeerFlags() isWAC:0];

  return v6;
}

void sub_22AAF9DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AAFB4E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _parseNotificationContextFromCharacteristicResponse(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 hmf_stringForKey:@"context"];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v2 options:0];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@[HAPAccessoryServerIP] Notification context not present in response", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v3 = 0;
  }

  return v3;
}

void sub_22AB01FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB03128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id location, id a58)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak(&a43);
  objc_destroyWeak(&a42);
  objc_destroyWeak(&a55);
  objc_destroyWeak(&a54);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a58);
  _Unwind_Resume(a1);
}

void sub_22AB03F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  objc_destroyWeak((v44 + 48));
  objc_destroyWeak(&a34);
  objc_destroyWeak(&a33);
  objc_destroyWeak(&a36);
  objc_destroyWeak(va);
  objc_destroyWeak((v45 - 192));
  _Unwind_Resume(a1);
}

void sub_22AB073E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  objc_destroyWeak((v39 + 48));
  objc_destroyWeak(&a29);
  objc_destroyWeak(&a28);
  objc_destroyWeak(&a31);
  objc_destroyWeak(va);
  objc_destroyWeak((v40 - 160));
  _Unwind_Resume(a1);
}

void sub_22AB08A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB091C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB09598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB099B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB0A08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB0A62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB0B8B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AB0D43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB10B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

HAPService *_parseSerializedService(void *a1)
{
  v193 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v127 = objc_autoreleasePoolPush();
    v128 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
      v129 = HMFGetLogIdentifier();
      *buf = 138543618;
      v188 = v129;
      v189 = 2114;
      v190 = objc_opt_class();
      v130 = v190;
      _os_log_impl(&dword_22AADC000, v128, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Expected service object to be a dictionary in the attribute database, instead it is a %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v127);
    v125 = 0;
    goto LABEL_175;
  }

  v2 = [v1 objectForKeyedSubscript:@"characteristics"];
  v155 = v2;
  if (!v2)
  {
    v131 = objc_autoreleasePoolPush();
    v132 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
    {
      v133 = HMFGetLogIdentifier();
      *buf = 138543362;
      v188 = v133;
      _os_log_impl(&dword_22AADC000, v132, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] No characteristics found when parsing service object in attribute database", buf, 0xCu);
    }

    goto LABEL_158;
  }

  v3 = v2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v131 = objc_autoreleasePoolPush();
    v134 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
    {
      v135 = HMFGetLogIdentifier();
      *buf = 138543874;
      v188 = v135;
      v189 = 2114;
      v190 = @"characteristics";
      v191 = 2114;
      v192 = objc_opt_class();
      v136 = v192;
      _os_log_impl(&dword_22AADC000, v134, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Expected '%{public}@' to be an array in the service object of the attribute database, instead it is a %{public}@", buf, 0x20u);
    }

LABEL_158:
    objc_autoreleasePoolPop(v131);
    v125 = 0;
    goto LABEL_174;
  }

  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v173 objects:v182 count:16];
  v153 = v4;
  if (!v6)
  {
LABEL_136:

    v110 = [v1 hmf_numberForKey:@"iid"];
    obj = v110;
    if (v110)
    {
      v111 = v110;
      [v1 hmf_BOOLForKey:@"primary"];
      [v1 hmf_BOOLForKey:@"hidden"];
      v112 = [v1 hmf_arrayForKey:@"linked"];
      v113 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v112, "count")}];
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v114 = v112;
      v115 = [v114 countByEnumeratingWithState:&v169 objects:v181 count:16];
      if (v115)
      {
        v116 = v115;
        v117 = *v170;
        do
        {
          for (i = 0; i != v116; ++i)
          {
            if (*v170 != v117)
            {
              objc_enumerationMutation(v114);
            }

            v119 = *(*(&v169 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v113 addObject:v119];
            }
          }

          v116 = [v114 countByEnumeratingWithState:&v169 objects:v181 count:16];
        }

        while (v116);
      }

      [v113 removeObject:v111];
      v120 = [v1 hmf_stringForKey:@"type"];
      if (v120)
      {
        v121 = v120;
        v122 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v120];

        v123 = v153;
        v124 = [HAPService initWithType:"initWithType:instanceID:parsedCharacteristics:serviceProperties:linkedServices:" instanceID:v122 parsedCharacteristics:v111 serviceProperties:? linkedServices:?];
        v125 = v124;
        if (v124)
        {
          v126 = v124;
        }

        else
        {
          v148 = objc_autoreleasePoolPush();
          v149 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
          {
            v150 = HMFGetLogIdentifier();
            *buf = 138543362;
            v188 = v150;
            _os_log_impl(&dword_22AADC000, v149, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Unable to parse serialized service.", buf, 0xCu);

            v123 = v153;
          }

          objc_autoreleasePoolPop(v148);
        }
      }

      else
      {
        v144 = objc_autoreleasePoolPush();
        v145 = HMFGetOSLogHandle();
        v123 = v153;
        if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
        {
          v146 = HMFGetLogIdentifier();
          v147 = [v1 objectForKeyedSubscript:@"type"];
          *buf = 138543618;
          v188 = v146;
          v189 = 2112;
          v190 = v147;
          _os_log_impl(&dword_22AADC000, v145, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Unable to parse serialized service type: %@.", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v144);
        v125 = 0;
      }

      v4 = v123;
    }

    else
    {
      v140 = objc_autoreleasePoolPush();
      v141 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
      {
        v142 = HMFGetLogIdentifier();
        v143 = [v1 objectForKeyedSubscript:@"iid"];
        *buf = 138543618;
        v188 = v142;
        v189 = 2112;
        v190 = v143;
        _os_log_impl(&dword_22AADC000, v141, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Unable to parse serialized service instanceID: %@.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v140);
      v125 = 0;
    }

    goto LABEL_173;
  }

  v7 = v6;
  v8 = 0;
  v167 = *v174;
  v152 = v1;
  obj = v5;
LABEL_6:
  v9 = 0;
  v10 = v8;
  v154 = v7;
  while (1)
  {
    if (*v174 != v167)
    {
      objc_enumerationMutation(obj);
    }

    v11 = *(*(&v173 + 1) + 8 * v9);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [(__CFString *)v11 hmf_numberForKey:@"iid"];
      v13 = [(__CFString *)v11 hmf_stringForKey:@"type"];
      v14 = v13;
      if (v12)
      {
        v15 = v13 == 0;
      }

      else
      {
        v15 = 1;
      }

      v166 = v9;
      if (v15)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543618;
          v188 = v18;
          v189 = 2112;
          v190 = v11;
          _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] unable to parse characteristic: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v8 = 0;
        goto LABEL_126;
      }

      v163 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v13];

      v27 = [(__CFString *)v11 objectForKeyedSubscript:@"perms"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v161 = v10;
      v162 = v12;
      v165 = v11;
      if (isKindOfClass)
      {
        v179 = 0u;
        v180 = 0u;
        v177 = 0u;
        v178 = 0u;
        v29 = v27;
        v30 = [v29 countByEnumeratingWithState:&v177 objects:buf count:16];
        if (v30)
        {
          v31 = v30;
          v168 = 0;
          v32 = *v178;
LABEL_24:
          v33 = 0;
          while (1)
          {
            if (*v178 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v177 + 1) + 8 * v33);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v49 = objc_autoreleasePoolPush();
              v50 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                v51 = HMFGetLogIdentifier();
                v52 = objc_opt_class();
                *v183 = 138543618;
                v184 = v51;
                v185 = 2114;
                v186 = v52;
                v53 = v52;
                _os_log_impl(&dword_22AADC000, v50, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Expected characteristic property to be a string in the properties array in the attribute database, instead it is a %{public}@", v183, 0x16u);
              }

              objc_autoreleasePoolPop(v49);
              LOWORD(v168) = 0;
              goto LABEL_66;
            }

            if ([v34 isEqualToString:@"pr"])
            {
              v35 = v168 | 2;
            }

            else if ([v34 isEqualToString:@"pw"])
            {
              v35 = v168 | 4;
            }

            else if ([v34 isEqualToString:@"ev"])
            {
              v35 = v168 | 1;
            }

            else if ([v34 isEqualToString:@"bonjour"])
            {
              v35 = v168 | 8;
            }

            else
            {
              if ([v34 isEqualToString:@"aa"])
              {
                v168 |= 0x10u;
                v36 = objc_autoreleasePoolPush();
                v37 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  v38 = HMFGetLogIdentifier();
                  *v183 = 138543618;
                  v184 = v38;
                  v185 = 2048;
                  v186 = v168;
                  _os_log_impl(&dword_22AADC000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPAccessoryServerIP] Characteristic with AAD Properties: %lu", v183, 0x16u);
                }

                objc_autoreleasePoolPop(v36);
                goto LABEL_37;
              }

              if ([v34 isEqualToString:@"tw"])
              {
                v35 = v168 | 0x20;
              }

              else
              {
                if (([v34 isEqualToString:@"hd"] & 1) != 0 || objc_msgSend(v34, "isEqualToString:", @"hidden"))
                {
                  v39 = objc_autoreleasePoolPush();
                  v40 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                  {
                    v41 = HMFGetLogIdentifier();
                    *v183 = 138543618;
                    v184 = v41;
                    v185 = 2048;
                    v186 = v168 | 0x40u;
                    _os_log_impl(&dword_22AADC000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPAccessoryServerIP] Characteristic which is hidden: %lu", v183, 0x16u);
                  }

                  objc_autoreleasePoolPop(v39);
                  v168 |= 0x40u;
                  goto LABEL_37;
                }

                if (![v34 isEqualToString:@"wr"])
                {
                  if ([v34 isEqualToString:@"enc"])
                  {
                    v42 = v168 | 0x100;
                  }

                  else
                  {
                    v42 = v168;
                  }

                  v168 = v42;
                  goto LABEL_37;
                }

                v35 = v168 | 0x80;
              }
            }

            v168 = v35;
LABEL_37:
            if (v31 == ++v33)
            {
              v43 = [v29 countByEnumeratingWithState:&v177 objects:buf count:16];
              v31 = v43;
              if (v43)
              {
                goto LABEL_24;
              }

              goto LABEL_65;
            }
          }
        }

        LOWORD(v168) = 0;
LABEL_65:

LABEL_66:
        v11 = v165;
      }

      else
      {
        v44 = objc_autoreleasePoolPush();
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = HMFGetLogIdentifier();
          v47 = objc_opt_class();
          *buf = 138543618;
          v188 = v46;
          v189 = 2114;
          v190 = v47;
          v48 = v47;
          _os_log_impl(&dword_22AADC000, v45, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Expected characteristic properties to be an array in the attribute database, instead it is a %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v44);
        LOWORD(v168) = 0;
      }

      v54 = [(__CFString *)v11 hmf_numberForKey:@"ev"];
      v55 = v11;
      v159 = [(__CFString *)v55 hmf_stringForKey:@"description"];
      v56 = [(__CFString *)v55 hmf_stringForKey:@"format"];
      v158 = [(__CFString *)v55 hmf_stringForKey:@"unit"];
      v57 = v55;
      v58 = v56;
      v59 = objc_alloc_init(HAPMetadataConstraints);
      v157 = v58;
      if (([v58 isEqualToString:@"int"] & 1) != 0 || (objc_msgSend(v58, "isEqualToString:", @"float") & 1) != 0 || (objc_msgSend(v58, "isEqualToString:", @"BOOL") & 1) != 0 || (objc_msgSend(v58, "isEqualToString:", @"int8") & 1) != 0 || (objc_msgSend(v58, "isEqualToString:", @"int16") & 1) != 0 || (objc_msgSend(v58, "isEqualToString:", @"int64") & 1) != 0 || (objc_msgSend(v58, "isEqualToString:", @"uint8") & 1) != 0 || (objc_msgSend(v58, "isEqualToString:", @"uint16") & 1) != 0 || (objc_msgSend(v58, "isEqualToString:", @"uint32") & 1) != 0 || objc_msgSend(v58, "isEqualToString:", @"uint64"))
      {
        v60 = [v58 isEqualToString:@"string"];
        v61 = [(__CFString *)v57 hmf_numberForKey:@"minValue"];
        [(HAPMetadataConstraints *)v59 setMinimumValue:v61];

        v62 = [(__CFString *)v57 hmf_numberForKey:@"maxValue"];
        [(HAPMetadataConstraints *)v59 setMaximumValue:v62];

        v63 = [(__CFString *)v57 hmf_numberForKey:@"minStep"];
        [(HAPMetadataConstraints *)v59 setStepValue:v63];

        if ((v60 & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      else if (![v58 isEqualToString:@"string"])
      {
        goto LABEL_80;
      }

      v64 = [(__CFString *)v57 hmf_numberForKey:@"maxLen"];
      [(HAPMetadataConstraints *)v59 setMaxLength:v64];

      v65 = [(HAPMetadataConstraints *)v59 maxLength];

      if (!v65)
      {
        [(HAPMetadataConstraints *)v59 setMaxLength:&unk_283EA9620];
      }

LABEL_80:
      v66 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
      v67 = [(__CFString *)v57 hmf_arrayForKey:@"valid-values" ofClasses:v66];

      v68 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
      v69 = [(__CFString *)v57 hmf_arrayForKey:@"valid-values-range" ofClasses:v68];

      v160 = v54;
      v156 = v67;
      if ([v67 count] || objc_msgSend(v69, "count"))
      {
        v70 = [MEMORY[0x277CBEB18] arrayWithArray:v67];
      }

      else
      {
        v70 = 0;
      }

      if ([v69 count] && (objc_msgSend(v69, "count") & 1) == 0 && objc_msgSend(v69, "count"))
      {
        v71 = 0;
        do
        {
          v72 = [v69 objectAtIndexedSubscript:v71];
          v73 = [v69 objectAtIndexedSubscript:v71 | 1];
          v74 = [v72 integerValue];
          if (v74 <= [v73 integerValue])
          {
            do
            {
              v75 = [MEMORY[0x277CCABB0] numberWithInteger:v74];
              v76 = [(__CFString *)v70 containsObject:v75];

              if ((v76 & 1) == 0)
              {
                v77 = [MEMORY[0x277CCABB0] numberWithInteger:v74];
                [(__CFString *)v70 addObject:v77];
              }
            }

            while (v74++ < [v73 integerValue]);
          }

          v71 += 2;
        }

        while ([v69 count] > v71);
      }

      v10 = v161;
      v12 = v162;
      if ([(__CFString *)v70 count])
      {
        [(__CFString *)v70 sortUsingComparator:&__block_literal_global_1341];
        v79 = objc_autoreleasePoolPush();
        v80 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          v81 = HMFGetLogIdentifier();
          *buf = 138543618;
          v188 = v81;
          v189 = 2112;
          v190 = v70;
          _os_log_impl(&dword_22AADC000, v80, OS_LOG_TYPE_DEBUG, "%{public}@[HAPAccessoryServerIP] Setting valid values: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v79);
        [(HAPMetadataConstraints *)v59 setValidValues:v70];
      }

      v82 = [(HAPMetadataConstraints *)v59 minimumValue];
      if (v82)
      {
        v11 = v165;
      }

      else
      {
        v82 = [(HAPMetadataConstraints *)v59 maximumValue];
        v11 = v165;
        if (!v82)
        {
          v82 = [(HAPMetadataConstraints *)v59 stepValue];
          if (!v82)
          {
            v82 = [(HAPMetadataConstraints *)v59 maxLength];
            if (!v82)
            {
              v108 = [(HAPMetadataConstraints *)v59 validValues];
              v83 = [v108 count];

              if (!v83)
              {
LABEL_103:

                v84 = [[HAPCharacteristicMetadata alloc] initWithConstraints:v83 description:v159 format:v157 units:v158];
                v85 = [HMFObjectCacheHAPCharacteristicMetadata hap_cacheInstanceForMetadata:v84];

                v86 = [(__CFString *)v57 objectForKeyedSubscript:@"value"];
                v87 = v86;
                if ((v168 & 2) != 0)
                {
                  if (!v86)
                  {
                    v102 = objc_autoreleasePoolPush();
                    v103 = HMFGetOSLogHandle();
                    v90 = v85;
                    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                    {
                      v104 = HMFGetLogIdentifier();
                      *buf = 138543362;
                      v188 = v104;
                      _os_log_impl(&dword_22AADC000, v103, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Readable characteristics must contain 'value' key", buf, 0xCu);
                    }

                    objc_autoreleasePoolPop(v102);
                    v8 = 0;
                    v7 = v154;
                    goto LABEL_118;
                  }

                  v90 = v85;
                  v92 = [v85 format];
                  v93 = HAPCharacteristicFormatFromString(v92);

                  v94 = [(__CFString *)v57 objectForKeyedSubscript:@"value"];
                  if (v93)
                  {
                    v95 = +[HAPJSONValueTransformer defaultJSONValueTransformer];
                    *&v177 = 0;
                    v96 = [v95 reverseTransformedValue:v94 format:v93 error:&v177];
                    v97 = v177;

                    if (v97)
                    {
                      v98 = objc_autoreleasePoolPush();
                      v99 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
                      {
                        v100 = HMFGetLogIdentifier();
                        *buf = 138543874;
                        v188 = v100;
                        v189 = 2114;
                        v190 = v94;
                        v191 = 2114;
                        v192 = v97;
                        _os_log_impl(&dword_22AADC000, v99, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Failed to transform the value '%{public}@' with error: %{public}@", buf, 0x20u);

                        v12 = v162;
                      }

                      objc_autoreleasePoolPop(v98);
                      v8 = 0;
                      v7 = v154;
                      v11 = v165;
                      v101 = v160;
                      goto LABEL_125;
                    }
                  }

                  else
                  {
                    v105 = objc_autoreleasePoolPush();
                    v106 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                    {
                      v107 = HMFGetLogIdentifier();
                      *buf = 138543362;
                      v188 = v107;
                      _os_log_impl(&dword_22AADC000, v106, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] The characteristic has not specified a characteristic format type. This may cause the characteristic value to contain an object of an unexpected type. For now, the value will be passed through without transformation into an appropriate type. At some point in the future, support for this accessory may be dropped.", buf, 0xCu);
                    }

                    objc_autoreleasePoolPop(v105);
                    v96 = v94;
                  }

                  v7 = v154;
                }

                else
                {
                  v7 = v154;
                  if (v86)
                  {
                    v88 = objc_autoreleasePoolPush();
                    v89 = HMFGetOSLogHandle();
                    v90 = v85;
                    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                    {
                      v91 = HMFGetLogIdentifier();
                      *buf = 138543362;
                      v188 = v91;
                      _os_log_impl(&dword_22AADC000, v89, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Non-readable characteristics must not contain 'value' key", buf, 0xCu);

                      v7 = v154;
                    }

                    objc_autoreleasePoolPop(v88);
                    v8 = 0;
LABEL_118:
                    v101 = v160;
LABEL_125:

                    v14 = v163;
                    v4 = v153;
LABEL_126:

                    v26 = v166;
                    goto LABEL_127;
                  }

                  v96 = 0;
                  v90 = v85;
                }

                v101 = v160;
                v8 = -[HAPCharacteristic initWithType:instanceID:value:stateNumber:properties:eventNotificationsEnabled:metadata:]([HAPCharacteristic alloc], "initWithType:instanceID:value:stateNumber:properties:eventNotificationsEnabled:metadata:", v163, v162, v96, 0, v168, [v160 BOOLValue], v90);

                goto LABEL_125;
              }

LABEL_102:
              v83 = v59;
              goto LABEL_103;
            }
          }
        }
      }

      goto LABEL_102;
    }

    v19 = v10;
    v20 = v9;
    v21 = objc_autoreleasePoolPush();
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = objc_opt_class();
      *buf = 138543618;
      v188 = v23;
      v189 = 2114;
      v190 = v24;
      v25 = v24;
      _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Expected characteristic object to be a dictionary in the attribute database, instead it is a %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v8 = 0;
    v26 = v20;
    v10 = v19;
LABEL_127:

    if (!v8)
    {
      break;
    }

    [v4 addObject:v8];
    v9 = v26 + 1;
    v10 = v8;
    if (v9 == v7)
    {
      v5 = obj;
      v109 = [obj countByEnumeratingWithState:&v173 objects:v182 count:16];
      v7 = v109;
      if (!v109)
      {

        v1 = v152;
        goto LABEL_136;
      }

      goto LABEL_6;
    }
  }

  v137 = objc_autoreleasePoolPush();
  v138 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
  {
    v139 = HMFGetLogIdentifier();
    *buf = 138543362;
    v188 = v139;
    _os_log_impl(&dword_22AADC000, v138, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerIP] Unable to parse serialized characteristic.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v137);
  v125 = 0;
  v1 = v152;
LABEL_173:

LABEL_174:
LABEL_175:

  return v125;
}

void sub_22AB17150(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t HAPAccessoryServerDiscoveryMethod(uint64_t a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t HAPErrorCodeFromHAPBLEStatusErrorCode(int a1)
{
  result = 3;
  if (a1 > 3)
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        return 9;
      }

      else
      {
        return 17;
      }
    }

    if (a1 == 6)
    {
      return result;
    }

    if (a1 == 8)
    {
      return 31;
    }

    return 1;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 5;
    }

    else
    {
      return 16;
    }
  }

  if (!a1)
  {
    return 0;
  }

  if (a1 != 1)
  {
    return 1;
  }

  return result;
}

void sub_22AB1C2CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AB1C518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t verifyResponseStateAndError(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];

  result = TLV8Get();
  if (!result)
  {
    return 4294960553;
  }

  return result;
}

uint64_t appendRequestMethodAndState(uint64_t a1, unsigned int a2)
{
  result = TLV8BufferAppendUInt64();
  if (!result)
  {

    return TLV8BufferAppendUInt64();
  }

  return result;
}

void hap2LogInitialize()
{
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }
}

uint64_t __hap2LogInitialize_block_invoke()
{
  v0 = os_log_create("com.apple.CoreHAP", "HAP");
  v1 = hap2Log_default;
  hap2Log_default = v0;

  v2 = os_log_create("com.apple.CoreHAP", "Browser");
  v3 = hap2Log_browser;
  hap2Log_browser = v2;

  v4 = os_log_create("com.apple.CoreHAP", "Accessory");
  v5 = hap2Log_accessory;
  hap2Log_accessory = v4;

  hap2Log_coap = os_log_create("com.apple.CoreHAP", "CoAP");

  return MEMORY[0x2821F96F8]();
}

void sub_22AB210D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2091(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AB21868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB242B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB25A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

void sub_22AB26B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB26DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB270D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB274BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB2BD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2760(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AB2C04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t _FindPairedPeerDelegateCallback_f_2809(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v23 = 0;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    v8 = 0;
    goto LABEL_11;
  }

  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a1 length:a2 encoding:4];
  if (!v8)
  {
    v10 = 0;
    v22 = -6705;
    goto LABEL_15;
  }

  v9 = [v7 _handlePeerPairingIdentityRequestWithIdentifier:v8 status:&v23];
  v10 = v9;
  if (!v23)
  {
    v11 = [v9 identifier];
    v12 = [v8 isEqualToString:v11];

    if ((v12 & 1) == 0)
    {
      v22 = -6748;
      goto LABEL_15;
    }

    if (a3)
    {
      v13 = [v10 publicKey];

      if (v13)
      {
        v14 = [v10 publicKey];
        v15 = [v14 data];
        v16 = [v15 length];
        v17 = *MEMORY[0x277D0F1D8];

        if (v16 == v17)
        {
          v18 = [v10 publicKey];
          v19 = [v18 data];
          memcpy(a3, [v19 bytes], v16);

          goto LABEL_9;
        }

        v22 = -6743;
LABEL_15:
        v23 = v22;
        goto LABEL_9;
      }

LABEL_11:
      v22 = -6727;
      goto LABEL_15;
    }
  }

LABEL_9:
  v20 = v23;

  return v20;
}

uint64_t _CopyPairingIdentityDelegateCallback_f_2810(uint64_t a1, char **a2, void *a3, void *a4, void *a5)
{
  v34 = 0;
  v8 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_17;
  }

  v9 = [v8 _handleLocalPairingIdentityRequestWithStatus:&v34];
  v10 = v9;
  if (v34)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    v11 = [v9 identifier];
    v12 = [v11 lengthOfBytesUsingEncoding:4];

    if (!v12)
    {
      goto LABEL_18;
    }

    v13 = malloc_type_calloc(v12 + 1, 1uLL, 0x100004077774924uLL);
    if (!v13)
    {
      v33 = -6728;
      goto LABEL_20;
    }

    v14 = v13;
    v15 = [v10 identifier];
    strlcpy(v14, [v15 UTF8String], v12 + 1);

    *a2 = v14;
  }

  v16 = MEMORY[0x277D0F1D8];
  if (!a3)
  {
    goto LABEL_11;
  }

  v17 = [v10 publicKey];

  if (!v17)
  {
    goto LABEL_17;
  }

  v18 = [v10 publicKey];
  v19 = [v18 data];
  v20 = [v19 length];
  v21 = *v16;

  if (v20 != v21)
  {
LABEL_18:
    v33 = -6743;
    goto LABEL_20;
  }

  v22 = [v10 publicKey];
  v23 = [v22 data];
  memcpy(a3, [v23 bytes], v20);

LABEL_11:
  if (a4)
  {
    v24 = [v10 privateKey];

    if (v24)
    {
      v25 = [v10 privateKey];
      v26 = [v25 data];
      v27 = [v26 length];
      v28 = *v16;

      if (v27 == v28)
      {
        v29 = [v10 privateKey];
        v30 = [v29 data];
        memcpy(a4, [v30 bytes], v27);

        goto LABEL_15;
      }

      goto LABEL_18;
    }

LABEL_17:
    v33 = -6727;
LABEL_20:
    v34 = v33;
  }

LABEL_15:
  v31 = v34;

  return v31;
}

__CFString *HAPWiFiConfigurationOperationTypeAsString(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPWiFiConfigurationOperationType %ld", a1];
  }

  else
  {
    v2 = off_2786D34A0[a1 - 1];
  }

  return v2;
}

__CFString *HAPWiFiSecurityModeAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"HAPWiFiSecurityModeWPA2PSK";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPWiFiSecurityMode %ld", a1];
    }
  }

  else
  {
    v2 = @"HAPWiFiSecurityModeNone";
  }

  return v2;
}

void sub_22AB33F68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

__CFString *HAPDiagnosticsSnapshotAudioAsString(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!a1)
  {
    goto LABEL_12;
  }

  v3 = 1;
  v4 = a1;
  do
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_9;
    }

    if (v3 == 1)
    {
      v5 = @"HAPDiagnosticsSnapshotAudioAudioRecording";
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_9;
      }

      v5 = @"HAPDiagnosticsSnapshotAudioAudioClips";
    }

    v4 &= ~v3;
    [v2 addObject:v5];
LABEL_9:
    v3 *= 2;
  }

  while (v3 - 1 < a1);
  if (v4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown options %lu", v4];
    [v2 addObject:v6];
  }

LABEL_12:
  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"None";
  }

  return v7;
}

__CFString *HAPDiagnosticsSnapshotOptionsAsString(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!a1)
  {
    goto LABEL_12;
  }

  v3 = 1;
  v4 = a1;
  do
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_9;
    }

    if (v3 == 1)
    {
      v5 = @"HAPDiagnosticsSnapshotOptionDelay";
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_9;
      }

      v5 = @"HAPDiagnosticsSnapshotOptionConfigurableMaxSize";
    }

    v4 &= ~v3;
    [v2 addObject:v5];
LABEL_9:
    v3 *= 2;
  }

  while (v3 - 1 < a1);
  if (v4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown options %lu", v4];
    [v2 addObject:v6];
  }

LABEL_12:
  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"None";
  }

  return v7;
}

__CFString *HAPDiagnosticsSnapshotTypeAsString(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!a1)
  {
    goto LABEL_12;
  }

  v3 = 1;
  v4 = a1;
  do
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_9;
    }

    if (v3 == 1)
    {
      v5 = @"HAPDiagnosticsSnapshotTypeManufacturerSnapshot";
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_9;
      }

      v5 = @"HAPDiagnosticsSnapshotTypeADKSnapshot";
    }

    v4 &= ~v3;
    [v2 addObject:v5];
LABEL_9:
    v3 *= 2;
  }

  while (v3 - 1 < a1);
  if (v4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown options %lu", v4];
    [v2 addObject:v6];
  }

LABEL_12:
  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"None";
  }

  return v7;
}

void sub_22AB3DEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB3E06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4322(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AB3E2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB3E458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB3E70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB3E81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB3EA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB3EC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB3ED9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB3EFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB3F1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB3F8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB3FCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB40044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB40264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB40558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22AB40B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB40EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *HAPNFCAccessKeyStateAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"HAPNFCAccessKeyStateActive";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPNFCAccessKeyState %ld", a1];
    }
  }

  else
  {
    v2 = @"HAPNFCAccessKeyStateSuspended";
  }

  return v2;
}

__CFString *HAPNFCAccessKeyTypeAsString(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"HAPNFCAccessKeyTypeEd25519";
  }

  else if (a1 == 2)
  {
    v2 = @"HAPNFCAccessKeyTypeNIST256";
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPNFCAccessKeyType %ld", a1];
  }

  return v2;
}

__CFString *HAPNFCAccessOperationTypeAsString(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPNFCAccessOperationType %ld", a1];
  }

  else
  {
    v2 = off_2786D3590[a1 - 1];
  }

  return v2;
}

__CFString *HAPNFCAccessResponseStatusAsString(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPNFCAccessResponseStatus %ld", a1];
  }

  else
  {
    v2 = off_2786D35A8[a1];
  }

  return v2;
}

__CFString *HAPAccessoryServerDiscoveryMethodToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Keystore";
  }

  else
  {
    return off_2786D35D0[a1 - 1];
  }
}

__CFString *HAPAccessCodeOperationTypeAsString(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPAccessCodeOperationType %ld", a1];
  }

  else
  {
    v2 = off_2786D35E8[a1 - 1];
  }

  return v2;
}

__CFString *HAPAccessCodeResponseStatusAsString(unint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPAccessCodeResponseStatus %ld", a1];
  }

  else
  {
    v2 = off_2786D3610[a1];
  }

  return v2;
}

__CFString *HAP2TLVErrorsAsString(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"HAP2TLVErrorsUnknown";
  }

  else if (a1 == 2)
  {
    v2 = @"HAP2TLVErrorsAuthentication";
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAP2TLVErrors %ld", a1];
  }

  return v2;
}

__CFString *HAP2TLVPairingStateAsString(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"HAP2TLVPairingStateM1";
  }

  else if (a1 == 2)
  {
    v2 = @"HAP2TLVPairingStateM2";
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAP2TLVPairingState %ld", a1];
  }

  return v2;
}

uint64_t _deserializeDataToKeyPair(void *a1, _OWORD *a2, _OWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = 0;
  v7 = 4294960591;
  if (!v5 || !a2)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_14;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (!a3)
  {
    goto LABEL_14;
  }

  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
  v6 = v11;
  if (!v11)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v7 = 4294960563;
    goto LABEL_14;
  }

  if ([v11 length] != 129)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_21;
  }

  v12 = [v6 componentsSeparatedByString:@"+"];
  v10 = v12;
  if (!v12)
  {
    v8 = 0;
    v9 = 0;
    v7 = 4294960579;
    goto LABEL_14;
  }

  if ([v12 count] != 2)
  {
    v8 = 0;
    v9 = 0;
    v7 = 4294960532;
    goto LABEL_14;
  }

  v8 = [v10 objectAtIndexedSubscript:0];
  if ([v8 length] != 64)
  {
    v9 = 0;
    goto LABEL_21;
  }

  v9 = [v10 objectAtIndexedSubscript:1];
  if ([v9 length] != 64)
  {
    goto LABEL_21;
  }

  v13 = _deserializePublicKey([v8 UTF8String], objc_msgSend(v8, "length"), &v15);
  if (v13)
  {
    v7 = v13;
    goto LABEL_14;
  }

  [v9 UTF8String];
  if ([v9 length] != 64 || (v7 = HexToData(), !v7))
  {
LABEL_21:
    v7 = 4294960553;
  }

LABEL_14:

  return v7;
}

uint64_t _deserializePublicKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 64)
  {
    return 4294960553;
  }

  LODWORD(result) = HexToData();
  if (result)
  {
    return result;
  }

  else
  {
    return 4294960553;
  }
}

uint64_t _serializeKeyPairToData(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  result = 4294960591;
  if (a1 && a2)
  {
    if (a3)
    {
      DataToHexCStringEx();
      DataToHexCStringEx();
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s+%s", v9, __s];
      v7 = [v6 dataUsingEncoding:4];
      *a3 = v7;
      memset_s(__s, 0x41uLL, 0, 0x41uLL);

      return 0;
    }
  }

  return result;
}

id __viewHintForKeyType(void *a1)
{
  v1 = [a1 unsignedIntegerValue];
  v2 = 0;
  if (v1 <= 1836347953)
  {
    if (v1 <= 1751998828)
    {
      if (v1 != 1651209584)
      {
        if (v1 != 1751216227)
        {
          goto LABEL_20;
        }

        v5 = MEMORY[0x277CDBE90];
        goto LABEL_19;
      }
    }

    else if ((v1 - 1751998829) >= 2 && v1 != 1751999337)
    {
      v3 = 1752001330;
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (v1 <= 1852203840)
  {
    if (v1 != 1836347954 && v1 != 1836347987)
    {
      v3 = 1836348530;
LABEL_10:
      if (v1 != v3)
      {
        goto LABEL_20;
      }
    }

LABEL_18:
    v5 = MEMORY[0x277CDBE60];
LABEL_19:
    v2 = *v5;
    goto LABEL_20;
  }

  v4 = v1 - 1852203841;
  if (v4 <= 0x11 && ((1 << v4) & 0x20101) != 0)
  {
    goto LABEL_18;
  }

LABEL_20:

  return v2;
}

const char *KeyTypeDescription(void *a1)
{
  v1 = [a1 unsignedIntegerValue];
  if (v1 > 1751999336)
  {
    if (v1 <= 1836347986)
    {
      if (v1 > 1752001640)
      {
        if (v1 == 1752001641)
        {
          return "hmli";
        }

        if (v1 == 1836347954)
        {
          return "mtr2";
        }
      }

      else
      {
        if (v1 == 1751999337)
        {
          return "hmci";
        }

        if (v1 == 1752001330)
        {
          return "hmk2";
        }
      }
    }

    else if (v1 <= 1852203840)
    {
      if (v1 == 1836347987)
      {
        return "mtrS";
      }

      if (v1 == 1836348530)
      {
        return "mttr";
      }
    }

    else
    {
      switch(v1)
      {
        case 1852203841:
          return "nfcA";
        case 1852203849:
          return "nfcI";
        case 1852203858:
          return "nfcR";
      }
    }
  }

  else if (v1 <= 1751216204)
  {
    if (v1 > 1751216193)
    {
      if (v1 == 1751216194)
      {
        return "hapB";
      }

      if (v1 == 1751216195)
      {
        return "hapC";
      }
    }

    else
    {
      if (v1 == 1651209584)
      {
        return "bkup";
      }

      if (v1 == 1751216193)
      {
        return "hapA";
      }
    }
  }

  else if (v1 <= 1751216226)
  {
    if (v1 == 1751216205)
    {
      return "hapM";
    }

    if (v1 == 1751216211)
    {
      return "hapS";
    }
  }

  else
  {
    switch(v1)
    {
      case 1751216227:
        return "hapc";
      case 1751998829:
        return "hmam";
      case 1751998830:
        return "hmams";
    }
  }

  return "unknown";
}

uint64_t __Block_byref_object_copy__5207(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AB4A160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB4A464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB4A840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB4BB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22AB4BD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _deserializeUUID(void *a1, void *a2)
{
  v3 = a1;
  v4 = 4294960591;
  if (v3 && a2)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v3, "bytes")}];
    if (v5)
    {
      v6 = v5;
      *a2 = v6;

      v4 = 0;
    }

    else
    {
      v4 = 4294960579;
    }
  }

  return v4;
}

void sub_22AB4C510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22AB4C880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22AB4CB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 168), 8);
  _Block_object_dispose((v33 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_22AB4D21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22AB4EEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB4F218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22AB4F400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22AB4F618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22AB50160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22AB508F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22AB50ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB511A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22AB5153C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 160), 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22AB51B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB51CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB51E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t deviceSupportsKeychainSync()
{
  v11 = *MEMORY[0x277D85DE8];
  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  if (HAPIsHH2Enabled_hh2Enabled == 1)
  {
    v0 = objc_autoreleasePoolPush();
    v1 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v2 = HMFGetLogIdentifier();
      v7 = 138543618;
      v8 = v2;
      v9 = 2080;
      v10 = "BOOL deviceSupportsKeychainSync(void)";
      _os_log_impl(&dword_22AADC000, v1, OS_LOG_TYPE_INFO, "%{public}@%s always returns YES because HAPIsHH2Enabled() is true)", &v7, 0x16u);
    }

    objc_autoreleasePoolPop(v0);
    return 1;
  }

  else
  {
    v4 = [MEMORY[0x277D0F910] systemInfo];
    v5 = [v4 productPlatform];
    v3 = (v5 < 6) & (0x26u >> v5);
  }

  return v3;
}

void sub_22AB5282C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 168), 8);
  _Block_object_dispose((v31 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_22AB52DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22AB542C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v35 - 216), 8);
  _Block_object_dispose((v35 - 168), 8);
  _Block_object_dispose((v35 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_22AB5538C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB57100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5467(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AB575E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

id mapUnderlyingErrorToHAPError(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = v2;
  if (v1)
  {
    [v2 setObject:v1 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v4 = [v1 domain];
  v5 = *MEMORY[0x277CCA590];

  if (v4 != v5)
  {
    goto LABEL_4;
  }

  v9 = [v1 code];
  if (v9 > 52)
  {
    if ((v9 - 53) >= 2 && v9 != 61)
    {
      goto LABEL_4;
    }

    [v3 setObject:&unk_283EA9788 forKeyedSubscript:*MEMORY[0x277D17D68]];
    v6 = 8;
  }

  else
  {
    if (v9 != -6722)
    {
      if (v9 == -3936 || v9 == 5)
      {
        v6 = 26;
        goto LABEL_5;
      }

LABEL_4:
      v6 = 22;
      goto LABEL_5;
    }

    v6 = 25;
  }

LABEL_5:
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:v6 userInfo:v3];

  return v7;
}

void sub_22AB5EA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id location)
{
  objc_destroyWeak(&a35);
  objc_destroyWeak(&a43);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a50, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5927(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AB5FCD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB60710(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_22AB61014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB61C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CoreWiFiLibraryCore(uint64_t a1)
{
  if (!CoreWiFiLibraryCore_frameworkLibrary)
  {
    CoreWiFiLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return CoreWiFiLibraryCore_frameworkLibrary;
}

void __getCWFInterfaceClass_block_invoke(uint64_t a1)
{
  v6 = 0;
  v2 = CoreWiFiLibraryCore(&v6);
  v3 = v6;
  if (v2)
  {
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = abort_report_np("%s", v6);
  }

  free(v3);
LABEL_3:
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CWFInterface");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCWFInterfaceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = abort_report_np("Unable to find class %s", "CWFInterface");
    __61__HAPWACAccessoryClient__joinAccessoryNetworkWithCompletion___block_invoke(v4, v5);
  }
}

uint64_t __CoreWiFiLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreWiFiLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_22AB625C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB630F0(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

id _notificationContextTLVDataFromPayload(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3 + 5;
  if (a3 + 5 <= a2)
  {
    v14 = a1 + a3;
    v15 = *(a1 + a3);
    v16 = *(v14 + 4);
    v17 = objc_autoreleasePoolPush();
    v18 = v7;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v34 = v20;
      v35 = 1024;
      *v36 = v15;
      *&v36[4] = 1024;
      *&v36[6] = v16;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Notification context identifier: 0x%x source: 0x%x", buf, 0x18u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [HAPTLVUnsignedNumberValue alloc];
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
    v23 = [(HAPTLVNumberValueBase *)v21 initWithValue:v22];

    v24 = [[HAPNotificationContextSourceWrapper alloc] initWithValue:v16];
    v25 = [[HAPCharacteristicNotificationContext alloc] initWithContextIdentifier:v23 source:v24 clockTickCounter:0];
    v32 = 0;
    v13 = [(HAPCharacteristicNotificationContext *)v25 serializeWithError:&v32];
    v26 = v32;
    if (v26)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = v18;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v34 = v30;
        v35 = 2114;
        *v36 = v26;
        _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode notification context with error: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v7;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v34 = v12;
      v35 = 2048;
      *v36 = a2;
      *&v36[8] = 2048;
      v37 = v8;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Received notification context of invalid length:%lu:%lu in payload", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  return v13;
}

void sub_22AB6E2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak((v36 - 160));
  _Unwind_Resume(a1);
}

void sub_22AB74C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6553(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AB76304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB7695C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB76FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6734(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AB77C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22AB7814C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB78A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB7921C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB795A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB7969C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *HAPCharacteristicValueTransitionEndBehaviorAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"HAPCharacteristicValueTransitionEndBehaviorLoop";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPCharacteristicValueTransitionEndBehavior %ld", a1];
    }
  }

  else
  {
    v2 = @"HAPCharacteristicValueTransitionEndBehaviorNoChange";
  }

  return v2;
}

__CFString *HAPCharacteristicValueTransitionLinearStartConditionAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPCharacteristicValueTransitionLinearStartCondition %ld", a1];
  }

  else
  {
    v2 = off_2786D3DE8[a1];
  }

  return v2;
}

__CFString *HAPFirmwareUpdateStateAsString(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPFirmwareUpdateState %ld", a1];
  }

  else
  {
    v2 = off_2786D3E00[a1];
  }

  return v2;
}

__CFString *HAPOTAProviderStateAsString(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPOTAProviderState %ld", a1];
  }

  else
  {
    v2 = off_2786D3E28[a1];
  }

  return v2;
}

void sub_22AB7F24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB825B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22AB83BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB83DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AB852B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_22AB85B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB872C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB895BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 96));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_22AB89A50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_22AB8A0D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AB8A8B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB8AEC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_22AB8B5C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_22AB8FD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _callCharacteristicOperationCompletion(void *a1, void *a2, char a3, void *a4, void *a5)
{
  v18 = a1;
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10 | v11)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = [v18 shortDescription];
      v14 = (a3 - 1);
      v15 = qword_22AC9DD10[v14];
      v16 = [v12 stringWithFormat:off_2786D4498[v14], v13];

      v17 = [MEMORY[0x277CCA9B8] hapErrorWithCode:v15 description:v16 reason:v11 suggestion:0 underlyingError:v10];
    }

    else
    {
      v17 = 0;
    }

    v9[2](v9, v18, v17);
  }
}

void sub_22AB90AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB90F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7552(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AB94554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 64));
  __HMFActivityScopeLeave();
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AB9558C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 64));
  objc_destroyWeak(&location);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_22AB96AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, uint64_t a22, char a23)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_22AB97A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _parseCharacteristicInstanceID(void *a1, void *a2)
{
  v3 = a1;
  v4 = +[HAPDataValueTransformer defaultDataValueTransformer];
  v5 = [v3 value];

  v9 = 0;
  v6 = [v4 reverseTransformedValue:v5 format:2 error:&v9];
  v7 = v9;

  if (a2 && !v6)
  {
    *a2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Invalid Characteristic Instance ID value." reason:0 suggestion:0 underlyingError:v7];
  }

  return v6;
}

uint64_t _isServiceInstanceIDCharacteristic(void *a1)
{
  v1 = a1;
  v2 = [v1 UUID];
  v3 = [MEMORY[0x277CBE0A0] UUIDWithString:@"E604E95D-A759-4817-87D3-AA005083A0D1"];
  if ([v2 isEqual:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v1 UUID];
    v6 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000051-0000-1000-8000-0026BB765291"];
    v4 = [v5 isEqual:v6];
  }

  return v4;
}

id _parseServiceInstanceID(void *a1, void *a2)
{
  v3 = a1;
  v4 = +[HAPDataValueTransformer defaultDataValueTransformer];
  v5 = [v3 value];

  v9 = 0;
  v6 = [v4 reverseTransformedValue:v5 format:2 error:&v9];
  v7 = v9;

  if (a2 && !v6)
  {
    *a2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Invalid Service Instance ID value." reason:0 suggestion:0 underlyingError:v7];
  }

  return v6;
}

uint64_t _isServiceSignatureCharacteristic(void *a1)
{
  v1 = [a1 UUID];
  v2 = [MEMORY[0x277CBE0A0] UUIDWithString:@"000000A5-0000-1000-8000-0026BB765291"];
  v3 = [v1 isEqual:v2];

  return v3;
}

void sub_22ABA0464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22ABA1310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22ABA2FAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

id _createCharacteristicWriteBody(void *a1, uint64_t a2, void *a3, int a4, void *a5, void *a6, double a7)
{
  v13 = a3;
  v14 = a5;
  v15 = a1;
  TLV8BufferInit();
  v16 = +[HAPDataValueTransformer defaultDataValueTransformer];
  v17 = [v16 transformedValue:v15 format:a2 error:a6];

  if (!v17)
  {
    v20 = 0;
LABEL_20:
    v19 = 0;
    goto LABEL_4;
  }

  [v17 bytes];
  [v17 length];
  appended = TLV8BufferAppend();
  if (!appended)
  {
    if (!v13 || ([v13 bytes], objc_msgSend(v13, "length"), appended = TLV8BufferAppend(), !appended))
    {
      if (a7 <= 0.0)
      {
        goto LABEL_26;
      }

      if (!(a7 * 10.0))
      {
        v20 = 0;
        v19 = 4294960559;
        goto LABEL_4;
      }

      appended = TLV8BufferAppendUInt64();
      if (!appended)
      {
LABEL_26:
        if (!a4 || (appended = TLV8BufferAppendUInt64(), !appended))
        {
          if (![v14 length] || (objc_msgSend(v14, "bytes"), objc_msgSend(v14, "length"), appended = TLV8BufferAppend(), !appended))
          {
            v20 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:v25];
            if (!v20)
            {
              v19 = 4294960568;
              goto LABEL_4;
            }

            goto LABEL_20;
          }
        }
      }
    }
  }

  v19 = appended;
  v20 = 0;
LABEL_4:
  TLV8BufferFree();
  if (a6 && v19)
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = [MEMORY[0x277CCA9B8] errorWithOSStatus:v19];
    *a6 = [v21 hapErrorWithCode:12 description:@"Write failed." reason:@"Failed to create write request body." suggestion:0 underlyingError:v22];
  }

  return v20;
}

uint64_t _parseLinkedServices(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if ([v5 length] < 2 || (objc_msgSend(v5, "length") & 1) != 0)
  {
    if (a3)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Linked services has invalid value field." reason:0 suggestion:0 underlyingError:0];
      *a3 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if ([v5 length] >= 2)
    {
      do
      {
        v7 = v5;
        v11 = 0;
        [v5 getBytes:&v11 length:2];
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v11];
        [v6 addObject:v8];

        v5 = [v7 subdataWithRange:{2, objc_msgSend(v7, "length") - 2}];
      }

      while ([v5 length] > 1);
    }

    v9 = 1;
  }

  return v9;
}

uint64_t _parseBTLEPresentationFormat(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  if ([v5 length] > 6)
  {
    if (!a2 || ([v5 getBytes:&v11 length:7], *a2 = v11, v7 = v12, *(a2 + 1) = v12, *(a2 + 2) = v13, v8 = v14, *(a2 + 4) = v14, v9 = v15, *(a2 + 6) = v15, !v7) && v8 == 1 && !v9)
    {
      v6 = 1;
      goto LABEL_12;
    }

    if (a3)
    {
      *a3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Invalid characteristic format descriptor value." reason:0 suggestion:0 underlyingError:0];
    }

    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_12;
  }

  [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Invalid characteristic format descriptor value length." reason:0 suggestion:0 underlyingError:0];
  *a3 = v6 = 0;
LABEL_12:

  return v6;
}

uint64_t _parseHAPCharacteristicFormat(unsigned __int8 a1, void *a2, void *a3)
{
  if (a1 - 1) < 0x1Bu && ((0x50AAAA9u >> (a1 - 1)))
  {
    if (a2)
    {
      *a2 = qword_22AC9DBF8[(a1 - 1)];
    }

    return 1;
  }

  else
  {
    if (a3)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid characteristic format type, %u", a1];
      *a3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:v5 reason:0 suggestion:0 underlyingError:0];
    }

    return 0;
  }
}

uint64_t _parseHAPCharacteristicUnit(int a1, uint64_t *a2, void *a3)
{
  if (HIWORD(a1) > 0x2730u)
  {
    switch(HIWORD(a1))
    {
      case 0x2731u:
        v4 = 5;
        if (!a2)
        {
          return 1;
        }

        break;
      case 0x2763u:
        v4 = 2;
        if (!a2)
        {
          return 1;
        }

        break;
      case 0x27ADu:
        v4 = 4;
        if (!a2)
        {
          return 1;
        }

        break;
      default:
        goto LABEL_16;
    }

LABEL_22:
    *a2 = v4;
    return 1;
  }

  switch(HIWORD(a1))
  {
    case 0x2700u:
      v4 = 0;
      if (!a2)
      {
        return 1;
      }

      goto LABEL_22;
    case 0x2703u:
      v4 = 1;
      if (!a2)
      {
        return 1;
      }

      goto LABEL_22;
    case 0x272Fu:
      v4 = 3;
      if (!a2)
      {
        return 1;
      }

      goto LABEL_22;
  }

LABEL_16:
  if (a3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid characteristic unit type, %04x", HIWORD(a1)];
    *a3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:v5 reason:0 suggestion:0 underlyingError:0];
  }

  return 0;
}

BOOL _parseCharacteristicValidRange(void *a1, uint64_t a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  if (![v7 length] || (objc_msgSend(v7, "length") & 1) != 0)
  {
    if (!a4)
    {
LABEL_9:
      v12 = 0;
      goto LABEL_10;
    }

    [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"The characteristic valid range value length must be a multiple of 2." reason:0 suggestion:0 underlyingError:0];
    *a4 = v12 = 0;
  }

  else
  {
    if ((a2 - 12) < 4 || a2 == 9)
    {
      if (a4)
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = HAPCharacteristicFormatToString(a2);
        v11 = [v9 stringWithFormat:@"Characteristics with format type '%@' do not support valid ranges", v10];

        *a4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:v11 reason:0 suggestion:0 underlyingError:0];
      }

      goto LABEL_9;
    }

    v14 = [v7 length] >> 1;
    v15 = [v7 length] >> 1;
    v16 = [v7 subdataWithRange:{0, v14}];
    v17 = [v7 subdataWithRange:{v14, v15}];
    v36 = a2 - 11;
    if ((a2 - 11) >= 3)
    {
      v18 = a2;
    }

    else
    {
      v18 = 2;
    }

    v19 = +[HAPDataValueTransformer defaultDataValueTransformer];
    v38 = 0;
    v20 = [v19 reverseTransformedValue:v16 format:v18 error:&v38];
    v21 = v38;

    if (v20)
    {
      v35 = v16;
      v22 = +[HAPDataValueTransformer defaultDataValueTransformer];
      v37 = v21;
      v34 = v17;
      v23 = [v22 reverseTransformedValue:v17 format:v18 error:&v37];
      v24 = v37;

      v12 = v23 != 0;
      if (v23)
      {
        if (v36 > 2)
        {
          v25 = v20;
          [v8 setMinimumValue:v20];
          [v8 setMaximumValue:v23];
        }

        else
        {
          v25 = v20;
          if ([v20 longLongValue] >= 1)
          {
            [v8 setMinLength:v20];
          }

          [v8 setMaxLength:v23];
        }
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543618;
          v40 = v33;
          v41 = 2112;
          v42 = v24;
          _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPBTLE] Failed to transform upper value with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v17 = v34;
        v25 = v20;
        if (a4)
        {
          *a4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Failed to parse upper value" reason:0 suggestion:0 underlyingError:v24];
        }
      }

      v16 = v35;
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = HMFGetOSLogHandle();
      v28 = v21;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v30 = v29 = v16;
        *buf = 138543618;
        v40 = v30;
        v41 = 2112;
        v42 = v28;
        _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPBTLE] Failed to transform lower value with error: %@", buf, 0x16u);

        v16 = v29;
      }

      objc_autoreleasePoolPop(v26);
      if (a4)
      {
        [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Failed to parse lower value" reason:0 suggestion:0 underlyingError:v28];
        *a4 = v12 = 0;
      }

      else
      {
        v12 = 0;
      }

      v24 = v28;
      v25 = 0;
    }
  }

LABEL_10:

  return v12;
}

BOOL _parseCharacteristicStepValue(void *a1, uint64_t a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  if (![v7 length])
  {
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"The characteristic step value length must be greater than 0." reason:0 suggestion:0 underlyingError:0];
      *a4 = v12 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  if ((a2 - 11) < 5 || a2 == 9)
  {
    if (a4)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = HAPCharacteristicFormatToString(a2);
      v11 = [v9 stringWithFormat:@"Characteristics with format type '%@' do not support step value", v10];

      *a4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:v11 reason:0 suggestion:0 underlyingError:0];
    }

    goto LABEL_7;
  }

  v14 = +[HAPDataValueTransformer defaultDataValueTransformer];
  v20 = 0;
  v15 = [v14 reverseTransformedValue:v7 format:a2 error:&v20];
  v16 = v20;

  v12 = v15 != 0;
  if (v15)
  {
    [v8 setStepValue:v15];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v19;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPBTLE] Failed to transform step value with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Failed to parse step value" reason:0 suggestion:0 underlyingError:v16];
    }
  }

LABEL_8:
  return v12;
}

BOOL _parseCharacteristicValidValues(void *a1, uint64_t a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  if (![v7 length])
  {
    if (a4)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = @"The characteristic valid values length must be greater than 0.";
      v15 = 0;
      goto LABEL_11;
    }

LABEL_14:
    v16 = 0;
    goto LABEL_15;
  }

  if ((a2 - 16) >= 0xFFFFFFFFFFFFFFF5)
  {
    if (a4)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = HAPCharacteristicFormatToString(a2);
      v19 = [v17 stringWithFormat:@"Characteristics with format type '%@' do not support valid values", v18];

      *a4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:v19 reason:0 suggestion:0 underlyingError:0];
    }

    goto LABEL_14;
  }

  if ((a2 - 1) > 3 || (v9 = qword_22AC9DCD0[a2 - 1], ([v7 length] & v9) != 0))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v12;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPBTLE] Failed to extract valid values, total size is not a multiple of the format size", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    if (a4)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = @"Failed to extract valid values";
      v15 = @"Total size is not a multiple of the format's size";
LABEL_11:
      [v13 hapErrorWithCode:12 description:v14 reason:v15 suggestion:0 underlyingError:0];
      *a4 = v16 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v21 = _getValuesFromData(v7, a2);
  v22 = [v21 count];
  v16 = v22 != 0;
  if (v22)
  {
    [v21 sortUsingComparator:&__block_literal_global_7865];
    v23 = objc_autoreleasePoolPush();
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v25;
      v31 = 2112;
      v32 = v21;
      _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_DEBUG, "%{public}@[HAPBTLE] Setting valid values to : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    [v8 setValidValues:v21];
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v28;
      _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPBTLE] Failed to extract valid values", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Failed to extract valid values" reason:0 suggestion:0 underlyingError:0];
    }
  }

LABEL_15:
  return v16;
}

uint64_t _parseCharacteristicValidValuesRange(void *a1, uint64_t a2, void *a3, void *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  if ([v7 length] && (objc_msgSend(v7, "length") & 1) == 0)
  {
    if ((a2 - 16) < 0xFFFFFFFFFFFFFFF5)
    {
      v9 = MEMORY[0x277CBEB18];
      v10 = [v8 validValues];
      v11 = [v9 arrayWithArray:v10];

      if ((a2 - 1) > 3 || (v12 = qword_22AC9DCD0[a2 - 1], ([v7 length] & v12) != 0))
      {
        v13 = objc_autoreleasePoolPush();
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = HMFGetLogIdentifier();
          *buf = 138543362;
          v43 = v15;
          _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPBTLE] Failed to extract valid value range, total size is not a multiple of the format's size", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v13);
        if (a4)
        {
          [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Failed to extract valid value range" reason:@"Total size is not a multiple of the format's size" suggestion:0 underlyingError:0];
          *a4 = v16 = 0;
        }

        else
        {
          v16 = 0;
        }

        goto LABEL_38;
      }

      v20 = _getValuesFromData(v7, a2);
      if ([v20 count])
      {
        v33 = objc_autoreleasePoolPush();
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543362;
          v43 = v35;
          _os_log_impl(&dword_22AADC000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPBTLE] Failed to extract valid value range, valid value ranges are not pairs", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v33);
        if (a4)
        {
          [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Failed to extract valid value range" reason:@"Valid value ranges are not pairs" suggestion:0 underlyingError:0];
          *a4 = v16 = 0;
LABEL_37:

LABEL_38:
          goto LABEL_39;
        }
      }

      else
      {
        v40 = a4;
        v41 = v8;
        if ([v20 count])
        {
          v21 = 0;
          do
          {
            v22 = [v20 objectAtIndex:v21];
            v23 = v20;
            v24 = [v20 objectAtIndex:v21 | 1];
            v25 = [v22 integerValue];
            if (v25 <= [v24 integerValue])
            {
              do
              {
                v26 = [MEMORY[0x277CCABB0] numberWithInteger:v25];
                v27 = [v11 containsObject:v26];

                if ((v27 & 1) == 0)
                {
                  v28 = [MEMORY[0x277CCABB0] numberWithInteger:v25];
                  [v11 addObject:v28];
                }
              }

              while (v25++ < [v24 integerValue]);
            }

            v21 += 2;
            v20 = v23;
          }

          while (v21 < [v23 count]);
        }

        if ([v11 count])
        {
          [v11 sortUsingComparator:&__block_literal_global_1513];
          v30 = objc_autoreleasePoolPush();
          v31 = HMFGetOSLogHandle();
          v8 = v41;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v32 = HMFGetLogIdentifier();
            *buf = 138543618;
            v43 = v32;
            v44 = 2112;
            v45 = v11;
            _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_DEBUG, "%{public}@[HAPBTLE] Setting valid values to : %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v30);
          [v41 setValidValues:v11];
          v16 = 1;
          goto LABEL_37;
        }

        v36 = objc_autoreleasePoolPush();
        v37 = HMFGetOSLogHandle();
        v8 = v41;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543362;
          v43 = v38;
          _os_log_impl(&dword_22AADC000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPBTLE] Failed to extract valid values", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v36);
        if (v40)
        {
          [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Failed to extract valid values" reason:0 suggestion:0 underlyingError:0];
          *v40 = v16 = 0;
          goto LABEL_37;
        }
      }

      v16 = 0;
      goto LABEL_37;
    }

    if (a4)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = HAPCharacteristicFormatToString(a2);
      v19 = [v17 stringWithFormat:@"Characteristics with format type '%@' do not support valid values", v18];

      *a4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:v19 reason:0 suggestion:0 underlyingError:0];
    }

    goto LABEL_14;
  }

  if (!a4)
  {
LABEL_14:
    v16 = 0;
    goto LABEL_39;
  }

  [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"The characteristic valid values range length must be even" reason:0 suggestion:0 underlyingError:0];
  *a4 = v16 = 0;
LABEL_39:

  return v16;
}

id _getValuesFromData(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "length")}];
  if ((a2 - 1) > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_22AC9DCF0[a2 - 1];
  }

  if ([v3 length])
  {
    v6 = 0;
    do
    {
      v7 = [v3 subdataWithRange:{v6, v5}];
      v8 = +[HAPDataValueTransformer defaultDataValueTransformer];
      v12 = 0;
      v9 = [v8 reverseTransformedValue:v7 format:a2 error:&v12];
      v10 = v12;

      if (!v10 && ([v4 containsObject:v9] & 1) == 0)
      {
        [v4 addObject:v9];
      }

      v6 += v5;
    }

    while (v6 < [v3 length]);
  }

  return v4;
}

id HAPTLVWriteSInt64(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (a1 == a1)
  {
    LOBYTE(v4[0]) = a1;
    v1 = 1;
  }

  else
  {
    v4[0] = a1;
    v1 = 8;
  }

  v2 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:v1];

  return v2;
}

unint64_t HAPTLVParseSInt64(char *a1, uint64_t a2, int *a3)
{
  result = 0;
  v5 = -6743;
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v5 = 0;
      result = *a1;
    }

    else if (a2 == 2)
    {
      v5 = 0;
      result = (a1[1] << 8) | *a1;
      if (!a3)
      {
        return result;
      }

      goto LABEL_12;
    }

LABEL_11:
    if (!a3)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (a2 != 4)
  {
    if (a2 == 8)
    {
      v5 = 0;
      result = *a1;
      if (!a3)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v5 = 0;
  result = *a1;
  if (!a3)
  {
    return result;
  }

LABEL_12:
  *a3 = v5;
  return result;
}

id HAPTLVWriteUInt64(unint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1 > 0xFF)
  {
    if (a1 >> 16)
    {
      v4 = a1;
      if (HIDWORD(a1))
      {
        v5 = BYTE4(a1);
        v6 = BYTE5(a1);
        v7 = BYTE6(a1);
        v8 = HIBYTE(a1);
        v1 = 8;
      }

      else
      {
        v1 = 4;
      }
    }

    else
    {
      LOWORD(v4) = a1;
      v1 = 2;
    }
  }

  else
  {
    LOBYTE(v4) = a1;
    v1 = 1;
  }

  v2 = [MEMORY[0x277CBEA90] dataWithBytes:&v4 length:v1];

  return v2;
}

uint64_t HAPTLVParseUInt64(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  result = 0;
  v5 = -6743;
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v5 = 0;
      result = *a1;
    }

    else if (a2 == 2)
    {
      v5 = 0;
      result = *a1;
      if (!a3)
      {
        return result;
      }

      goto LABEL_12;
    }

LABEL_11:
    if (!a3)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (a2 != 4)
  {
    if (a2 == 8)
    {
      v5 = 0;
      result = *a1;
      if (!a3)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v5 = 0;
  result = *a1;
  if (!a3)
  {
    return result;
  }

LABEL_12:
  *a3 = v5;
  return result;
}

id HAPTLVCreateParseArrayToString(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@[", v4];
  [v5 appendString:v6];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = MEMORY[0x277CCACA8];
        v13 = [*(*(&v18 + 1) + 8 * i) descriptionWithIndent:v4];
        v14 = [v12 stringWithFormat:@" %@", v13];
        [v5 appendString:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@]", v4];
  [v5 appendString:v15];

  v16 = [v5 copy];

  return v16;
}

id HAPTLVParseContiguousTlvs(int a1, unint64_t a2, unint64_t a3, unint64_t *a4, void *a5)
{
  if (a2 >= a3)
  {
    goto LABEL_4;
  }

  Next = TLV8GetNext();
  if (Next)
  {
    if (a5)
    {
      HMErrorFromOSStatus(Next);
      v10 = 0;
      *a5 = v9 = 0;
      goto LABEL_5;
    }

    v10 = 0;
    goto LABEL_14;
  }

  v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
  if (!v12)
  {
LABEL_4:
    *a4 = a2;
    v9 = 0;
    v10 = 0;
    goto LABEL_5;
  }

  v10 = v12;
  if (a5)
  {
    v13 = v12;
    v9 = 0;
    *a5 = v10;
    goto LABEL_5;
  }

LABEL_14:
  v9 = 0;
LABEL_5:

  return v9;
}

id HAPDateWithTimeIntervalSince1970(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CBEAA8];
    v2 = [a1 value];
    v3 = [v1 dateWithTimeIntervalSince1970:{objc_msgSend(v2, "longLongValue")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_22ABAE094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ConvertFromHAPIPStatusErrorCode(void *a1)
{
  v1 = 17;
  switch(a1)
  {
    case 0xFFFFFFFFFFFEECF3:
      v1 = 2405;
      goto LABEL_16;
    case 0xFFFFFFFFFFFEECF4:
      v1 = 48;
      goto LABEL_16;
    case 0xFFFFFFFFFFFEECF5:
      v1 = 87;
      goto LABEL_16;
    case 0xFFFFFFFFFFFEECF6:
      v1 = 3;
      goto LABEL_16;
    case 0xFFFFFFFFFFFEECF7:
      v1 = 2;
      goto LABEL_16;
    case 0xFFFFFFFFFFFEECF8:
      a1 = [MEMORY[0x277CCA9B8] hapErrorWithCode:41 description:@"Accessory reported an internal timeout" reason:0 suggestion:0 underlyingError:0];
      goto LABEL_17;
    case 0xFFFFFFFFFFFEECF9:
      v1 = 16;
      goto LABEL_16;
    case 0xFFFFFFFFFFFEECFALL:
      v1 = 7;
      goto LABEL_16;
    case 0xFFFFFFFFFFFEECFBLL:
      v1 = 6;
      goto LABEL_16;
    case 0xFFFFFFFFFFFEECFCLL:
      v1 = 5;
      goto LABEL_16;
    case 0xFFFFFFFFFFFEECFDLL:
      v1 = 14;
      goto LABEL_16;
    case 0xFFFFFFFFFFFEECFELL:
      v1 = 88;
      goto LABEL_16;
    case 0xFFFFFFFFFFFEECFFLL:
      goto LABEL_16;
    default:
      if (!a1)
      {
        goto LABEL_17;
      }

      v1 = 52;
LABEL_16:
      a1 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:v1];
LABEL_17:

      return a1;
  }
}

id HMErrorFromOSStatus(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    DebugGetErrorString();
    v17[0] = *MEMORY[0x277CCA450];
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed with OSStatus code %d (%s)", a1, v19];
    v18[0] = v2;
    v17[1] = *MEMORY[0x277CCA7E8];
    v3 = [MEMORY[0x277CCA9B8] errorWithOSStatus:a1];
    v18[1] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

    if (a1 > -6761)
    {
      v5 = 3;
      switch(a1)
      {
        case 0xFFFFE598:
        case 0xFFFFE599:
        case 0xFFFFE59A:
        case 0xFFFFE59F:
        case 0xFFFFE5A0:
        case 0xFFFFE5BB:
        case 0xFFFFE5BC:
        case 0xFFFFE5BD:
        case 0xFFFFE5BE:
          v5 = 54;
          break;
        case 0xFFFFE59B:
        case 0xFFFFE59C:
        case 0xFFFFE59D:
        case 0xFFFFE5A3:
        case 0xFFFFE5A5:
        case 0xFFFFE5A6:
        case 0xFFFFE5A7:
        case 0xFFFFE5A8:
        case 0xFFFFE5AA:
        case 0xFFFFE5AB:
        case 0xFFFFE5AC:
        case 0xFFFFE5AD:
        case 0xFFFFE5AE:
        case 0xFFFFE5AF:
        case 0xFFFFE5B0:
        case 0xFFFFE5B1:
        case 0xFFFFE5B4:
        case 0xFFFFE5B5:
        case 0xFFFFE5B6:
        case 0xFFFFE5B7:
        case 0xFFFFE5B8:
        case 0xFFFFE5B9:
        case 0xFFFFE5BA:
        case 0xFFFFE5BF:
        case 0xFFFFE5C0:
        case 0xFFFFE5C1:
        case 0xFFFFE5C2:
        case 0xFFFFE5C3:
        case 0xFFFFE5C5:
        case 0xFFFFE5C6:
        case 0xFFFFE5C8:
        case 0xFFFFE5C9:
        case 0xFFFFE5CD:
        case 0xFFFFE5CE:
        case 0xFFFFE5D1:
          goto LABEL_15;
        case 0xFFFFE59E:
          v5 = 55;
          break;
        case 0xFFFFE5A1:
        case 0xFFFFE5A2:
        case 0xFFFFE5A9:
          v5 = 56;
          break;
        case 0xFFFFE5A4:
        case 0xFFFFE5B3:
        case 0xFFFFE5C4:
        case 0xFFFFE5C7:
        case 0xFFFFE5CC:
          goto LABEL_6;
        case 0xFFFFE5B2:
          v5 = 66;
          break;
        case 0xFFFFE5CA:
        case 0xFFFFE5CF:
        case 0xFFFFE5D0:
          break;
        case 0xFFFFE5CB:
          goto LABEL_14;
        case 0xFFFFE5D2:
          v5 = 48;
          break;
        default:
          if ((a1 - 35) > 0x1E || ((1 << (a1 - 35)) & 0x42010001) == 0)
          {
            goto LABEL_15;
          }

LABEL_14:
          v5 = 4;
          break;
      }
    }

    else
    {
      switch(a1)
      {
        case 0xFFFEEA18:
          v5 = 96;
          break;
        case 0xFFFFE58B:
          v5 = 10;
          break;
        case 0xFFFFE590:
LABEL_6:
          v5 = 53;
          break;
        default:
LABEL_15:
          if ((a1 - 200400) >= 0x64)
          {
            if ((a1 - 200500) >= 0x64)
            {
              if ((a1 + 25298) <= 0xFFFFFFFD)
              {
                v7 = objc_autoreleasePoolPush();
                v8 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                {
                  v9 = HMFGetLogIdentifier();
                  *buf = 138543874;
                  v12 = v9;
                  v13 = 1024;
                  v14 = a1;
                  v15 = 2080;
                  v16 = v19;
                  _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Treating OSStatus %d (%s) as Generic error", buf, 0x1Cu);
                }

                objc_autoreleasePoolPop(v7);
              }

              v5 = 52;
            }

            else
            {
              v5 = 59;
            }
          }

          else
          {
            v5 = 58;
          }

          break;
      }
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:v5 userInfo:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id HMErrorFromHAPErrorCode(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed with HAP Error code %ld", a1, *MEMORY[0x277CCA450]];
  v8[0] = v2;
  v7[1] = *MEMORY[0x277CCA7E8];
  v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:a1];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMErrorDomain" code:a1 userInfo:v4];

  return v5;
}

void sub_22ABB07CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22ABB09E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9123(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22ABB0BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22ABB0EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22ABB10C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22ABB11F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABB1434(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22ABB1560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABB1864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22ABB1DA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22ABB2640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22ABB2810(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22ABB2E64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22ABB30F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22ABB3318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABB3598(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22ABB3874(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22ABB3B64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22ABB3EB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22ABB4128(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22ABB44BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABB46A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABB4864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABB4A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABB5674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9445(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22ABB5E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __HMFActivityScopeLeave();
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9649(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22ABB60F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABB6208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABB6310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABB6418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *HAPAccessCodeCharacterSetAsString(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a1)
  {
    v3 = 1;
    v4 = a1;
    do
    {
      if (v3 == 1 && (a1 & 1) != 0)
      {
        v4 &= ~1uLL;
        [v2 addObject:@"HAPAccessCodeCharacterSetArabicNumerals"];
      }

      v3 *= 2;
    }

    while (v3 - 1 < a1);
    if (v4)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown options %lu", v4];
      [v2 addObject:v5];
    }
  }

  if ([v2 count])
  {
    v6 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = @"None";
  }

  return v6;
}

__CFString *HAPAccessCodeFlagsAsString(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a1)
  {
    v3 = 1;
    v4 = a1;
    do
    {
      if (v3 == 1 && (a1 & 1) != 0)
      {
        v4 &= ~1uLL;
        [v2 addObject:@"HAPAccessCodeFlagHasRestrictions"];
      }

      v3 *= 2;
    }

    while (v3 - 1 < a1);
    if (v4)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown options %lu", v4];
      [v2 addObject:v5];
    }
  }

  if ([v2 count])
  {
    v6 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = @"None";
  }

  return v6;
}

void sub_22ABB9C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22ABBC62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22ABC1710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10722(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22ABC192C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABC1DFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22ABC212C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22ABC23E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22ABC263C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22ABC28B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22ABC2B58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22ABC2DA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22ABC2FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22ABC322C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22ABC3790(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22ABC3E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABC4CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11021(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22ABC55FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABC6238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABC6D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22ABC73E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22ABC8274(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22ABC8490(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22ABC8778(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22ABC8D9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22ABC917C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22ABC93C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22ABC95F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22ABC989C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22ABC9B40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22ABC9DE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22ABCAA3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22ABCAF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  os_unfair_lock_unlock((v13 + v14));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABCB2DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22ABCB990(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

HAP2AccessoryServerDiscoveryAccessoryInfo *accessoryInfoForBonjourDevice(void *a1, void *a2, void *a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [(__CFString *)v5 name];
  if (v8)
  {
    v9 = [(__CFString *)v5 txtDictionary];
    if (!v9)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v19 = hap2Log_browser;
      if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v70 = v5;
        _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "Received bonjour device that has no TXT record: %@", buf, 0xCu);
      }

      v18 = 0;
      goto LABEL_65;
    }

    v10 = [(__CFString *)v5 identifierStr];
    if (!v10)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v20 = hap2Log_browser;
      if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v70 = v5;
        _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "Received bonjour device that has a no device id: %@", buf, 0xCu);
      }

      v18 = 0;
      goto LABEL_64;
    }

    v11 = [[HAPDeviceID alloc] initWithDeviceIDString:v10];
    if (!v11)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v21 = hap2Log_browser;
      if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v70 = v10;
        v71 = 2112;
        v72 = v5;
        _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_INFO, "Received bonjour device that has an invalid device id '%@': %@", buf, 0x16u);
      }

      v18 = 0;
      goto LABEL_63;
    }

    v67[0] = @"bonjourServiceName";
    v67[1] = @"bonjourServiceType";
    v68[0] = v8;
    v68[1] = v6;
    v67[2] = @"bonjourServiceDomain";
    v67[3] = @"bonjourTXTRecord";
    v68[2] = v7;
    v68[3] = v9;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:4];
    v65 = v11;
    v66 = v12;
    v64 = v8;
    v13 = v9;
    v14 = [(__CFString *)v13 objectForKeyedSubscript:@"sf"];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 intValue];
    }

    else
    {
      v16 = 0;
    }

    v22 = [(__CFString *)v13 objectForKeyedSubscript:@"ci"];
    v23 = v22;
    if (v22)
    {
      v62 = [v22 longLongValue];
    }

    else
    {
      v62 = 1;
    }

    v24 = @"c#";
    v25 = [(__CFString *)v13 objectForKeyedSubscript:@"c#"];
    v63 = v11;
    if (v25)
    {
      v26 = v25;
      v27 = [(__CFString *)v25 longLongValue];
      if ((v27 - 0x100000000) <= 0xFFFFFFFF00000000)
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v28 = hap2Log_browser;
        v29 = @"c#";
        if (!os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
        {
          goto LABEL_58;
        }

        *buf = 138412546;
        v70 = @"c#";
        v71 = 2112;
        v72 = v13;
        v30 = "Received txtRecord that has a bad value for key '%@': %@";
        v31 = v28;
        v32 = 22;
        goto LABEL_37;
      }

      v61 = v27;

      v35 = [(__CFString *)v13 objectForKeyedSubscript:@"s#"];
      v36 = v35;
      if (v35)
      {
        v35 = [v35 longLongValue];
      }

      if ((v35 - 0x100000000) < 0xFFFFFFFF00000001)
      {
        v37 = 1;
      }

      else
      {
        v37 = v35;
      }

      v60 = v37;

      v38 = @"pv";
      v39 = [(__CFString *)v13 objectForKeyedSubscript:@"pv"];
      if (v39)
      {
        v26 = v39;
        v40 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:v39];
        if (v40)
        {
          v58 = v16;
          v59 = v40;

          v41 = [(__CFString *)v13 objectForKeyedSubscript:@"md"];
          if (v41)
          {
            v26 = v41;
            v42 = [(__CFString *)v13 objectForKeyedSubscript:@"ff"];
            v43 = v42;
            if (v42)
            {
              v57 = [v42 longLongValue];
            }

            else
            {
              v57 = 0;
            }

            v49 = @"sh";
            v50 = [(__CFString *)v13 objectForKeyedSubscript:@"sh"];
            if (v50)
            {
              v51 = v50;
              v52 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v50 options:0];
              v50 = v51;
              if (!v52)
              {
                if (hap2LogInitialize_onceToken != -1)
                {
                  dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
                }

                log = hap2Log_browser;
                if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v70 = @"sh";
                  v71 = 2112;
                  v72 = v13;
                  _os_log_impl(&dword_22AADC000, log, OS_LOG_TYPE_INFO, "Received txtRecord that has a bad value for key '%@': %@", buf, 0x16u);
                }

                v52 = 0;
                v50 = v51;
              }
            }

            else
            {
              v52 = 0;
            }

            v53 = v52;
            loga = v52;

            v54 = v53;
            v29 = v59;
            v44 = [[HAP2AccessoryServerDiscoveryHAPAccessoryInfo alloc] initWithDeviceID:v65 rawDiscoveryInfo:v66 name:v64 model:v26 status:v58 category:v62 configurationNumber:v61 stateNumber:v60 protocolVersion:v59 featureFlags:v57 setupHash:v54];
          }

          else
          {
            if (hap2LogInitialize_onceToken != -1)
            {
              dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
            }

            v48 = hap2Log_browser;
            if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v70 = @"md";
              _os_log_error_impl(&dword_22AADC000, v48, OS_LOG_TYPE_ERROR, "Received txtRecord that doesn't include key '%@'", buf, 0xCu);
            }

            v26 = 0;
            v44 = 0;
            v29 = v59;
          }

          goto LABEL_59;
        }

        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v47 = hap2Log_browser;
        v29 = @"pv";
        if (!os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
        {
LABEL_58:
          v44 = 0;
LABEL_59:

          if (v44)
          {
            v45 = v44;
          }

          else
          {
            v45 = [[HAP2AccessoryServerDiscoveryAccessoryInfo alloc] initWithDeviceID:v65 rawDiscoveryInfo:v66];
          }

          v18 = v45;
          v11 = v63;

LABEL_63:
LABEL_64:

LABEL_65:
          goto LABEL_66;
        }

        *buf = 138412802;
        v70 = @"pv";
        v71 = 2112;
        v72 = v26;
        v73 = 2112;
        v74 = v13;
        v30 = "Received txtRecord that has a bad value for key '%@' ('%@'): %@";
        v31 = v47;
        v32 = 32;
LABEL_37:
        _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_INFO, v30, buf, v32);
        goto LABEL_58;
      }

      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v33 = hap2Log_browser;
      v29 = @"pv";
      if (!os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
      {
LABEL_57:
        v26 = 0;
        goto LABEL_58;
      }

      *buf = 138412546;
      v70 = @"pv";
      v71 = 2112;
      v72 = v13;
      v34 = "Received txtRecord that has no value for key '%@': %@";
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v33 = hap2Log_browser;
      v29 = @"c#";
      if (!os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
      {
        goto LABEL_57;
      }

      *buf = 138412546;
      v70 = @"c#";
      v71 = 2112;
      v72 = v13;
      v34 = "Received txtRecord that has a no value for key '%@': %@";
    }

    _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_INFO, v34, buf, 0x16u);
    goto LABEL_57;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v17 = hap2Log_browser;
  if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v70 = v5;
    _os_log_error_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "Received bonjour device that has no service name: %@", buf, 0xCu);
  }

  v18 = 0;
LABEL_66:

  return v18;
}

void sub_22ABD855C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_22ABD8C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABD96A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABD98A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11841(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HAPOperatingStateAbnormalReasonsAsString(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!a1)
  {
    goto LABEL_14;
  }

  v3 = 1;
  v4 = a1;
  do
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_11;
    }

    switch(v3)
    {
      case 1:
        v5 = @"HAPOperatingStateAbnormalReasonOther";
        break;
      case 4:
        v5 = @"HAPOperatingStateAbnormalReasonHighTemperature";
        break;
      case 2:
        v5 = @"HAPOperatingStateAbnormalReasonLowTemperature";
        break;
      default:
        goto LABEL_11;
    }

    v4 &= ~v3;
    [v2 addObject:v5];
LABEL_11:
    v3 *= 2;
  }

  while (v3 - 1 < a1);
  if (v4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown options %lu", v4];
    [v2 addObject:v6];
  }

LABEL_14:
  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"None";
  }

  return v7;
}

void sub_22ABDA06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12038(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

HAP2AccessoryServerDiscoveryAccessoryInfo *accessoryInfoForBrowseResult(void *a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = nw_browse_result_copy_endpoint(v1);
  v3 = v2;
  if (!v2)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v24 = hap2Log_browser;
    if (!os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *applier = 138412290;
    *&applier[4] = v1;
    v25 = "Received browse result that has no endpoint: %@";
LABEL_25:
    v28 = v24;
    v29 = 12;
    goto LABEL_26;
  }

  type = nw_endpoint_get_type(v2);
  if (type != nw_endpoint_type_bonjour_service)
  {
    v26 = type;
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v27 = hap2Log_browser;
    if (!os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *applier = 67109378;
    *&applier[4] = v26;
    *&applier[8] = 2112;
    *&applier[10] = v1;
    v25 = "Received browse result that has unhandled endpoint type %u: %@";
    v28 = v27;
    v29 = 18;
    goto LABEL_26;
  }

  bonjour_service_name = nw_endpoint_get_bonjour_service_name(v3);
  if (!bonjour_service_name)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v24 = hap2Log_browser;
    if (!os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *applier = 138412290;
    *&applier[4] = v1;
    v25 = "Received browse result that has no service name: %@";
    goto LABEL_25;
  }

  v6 = bonjour_service_name;
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:bonjour_service_name];
  if (!v7)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v30 = hap2Log_browser;
    if (!os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *applier = 136315394;
    *&applier[4] = v6;
    *&applier[12] = 2112;
    *&applier[14] = v1;
    v25 = "Received browse result that has bad service name '%s': %@";
    v28 = v30;
    v29 = 22;
LABEL_26:
    _os_log_error_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, v25, applier, v29);
LABEL_30:
    v31 = 0;
    goto LABEL_31;
  }

  v8 = v7;
  bonjour_service_type = nw_endpoint_get_bonjour_service_type(v3);
  if (!bonjour_service_type)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v33 = hap2Log_browser;
    if (!os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *applier = 138412290;
    *&applier[4] = v1;
    v34 = "Received browse result that has no service type: %@";
    v35 = v33;
    v36 = 12;
    goto LABEL_96;
  }

  v10 = bonjour_service_type;
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:bonjour_service_type];
  if (v11)
  {
    v12 = v11;
    bonjour_service_domain = nw_endpoint_get_bonjour_service_domain(v3);
    if (bonjour_service_domain)
    {
      v14 = bonjour_service_domain;
      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:bonjour_service_domain];
      if (v15)
      {
        v16 = v15;
        v17 = nw_browse_result_copy_txt_record_object(v1);
        if (v17)
        {
          v18 = v17;
          v61 = v16;
          if (nw_txt_record_is_dictionary(v18))
          {
            v19 = v18;
            v20 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:nw_txt_record_get_key_count(v19)];
            *applier = MEMORY[0x277D85DD0];
            *&applier[8] = 3221225472;
            *&applier[16] = __txtRecordDictionaryForNetworkTxtRecordDictionary_block_invoke;
            v76 = &unk_2786D4AF0;
            v77 = v19;
            v21 = v20;
            v78 = v21;
            v22 = v19;
            if (nw_txt_record_apply(v22, applier))
            {
              v23 = [v21 copy];
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            v44 = v18;
            v67 = 0;
            v68 = &v67;
            v69 = 0x3032000000;
            v70 = __Block_byref_object_copy__12038;
            v71 = __Block_byref_object_dispose__12039;
            v72 = 0;
            access_bytes[0] = MEMORY[0x277D85DD0];
            access_bytes[1] = 3221225472;
            access_bytes[2] = __txtRecordDictionaryForNetworkTxtRecordData_block_invoke;
            access_bytes[3] = &unk_2786D4B18;
            access_bytes[4] = &v67;
            nw_txt_record_access_bytes(v44, access_bytes);
            v45 = v68[5];
            if (v45)
            {
              v46 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v45, "count")}];
              v62 = 0;
              v63 = &v62;
              v64 = 0x2020000000;
              v65 = 1;
              v47 = v68[5];
              *applier = MEMORY[0x277D85DD0];
              *&applier[8] = 3221225472;
              *&applier[16] = __txtRecordDictionaryForNetworkTxtRecordData_block_invoke_198;
              v76 = &unk_2786D4B40;
              v77 = v44;
              v79 = &v62;
              v48 = v46;
              v78 = v48;
              [v47 enumerateKeysAndObjectsUsingBlock:applier];
              if (*(v63 + 24) == 1)
              {
                v23 = [v48 copy];
              }

              else
              {
                v23 = 0;
              }

              _Block_object_dispose(&v62, 8);
            }

            else
            {
              if (hap2LogInitialize_onceToken != -1)
              {
                dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
              }

              v49 = hap2Log_browser;
              if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_ERROR))
              {
                *applier = 138412290;
                *&applier[4] = v44;
                _os_log_error_impl(&dword_22AADC000, v49, OS_LOG_TYPE_ERROR, "Received txtRecord with data that couldn't be parsed: %@", applier, 0xCu);
              }

              v23 = 0;
            }

            _Block_object_dispose(&v67, 8);
          }

          if (v23)
          {
            v50 = [v12 isEqualToString:@"_airplay._tcp"];
            v51 = v50;
            v52 = @"deviceid";
            if (!v50)
            {
              v52 = @"id";
            }

            v53 = v52;
            v54 = [v23 objectForKeyedSubscript:v53];
            if (v54)
            {
              v55 = [[HAPDeviceID alloc] initWithDeviceIDString:v54];
              if (v55)
              {
                v73[0] = @"bonjourServiceName";
                v73[1] = @"bonjourServiceType";
                v74[0] = v8;
                v74[1] = v12;
                v73[2] = @"bonjourServiceDomain";
                v73[3] = @"bonjourTXTRecord";
                v74[2] = v61;
                v74[3] = v23;
                v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:4];
                if ((v51 & 1) != 0 || (hapAccessoryInfoWithDeviceID(v55, v56, v8, v23), (v31 = objc_claimAutoreleasedReturnValue()) == 0))
                {
                  v31 = [[HAP2AccessoryServerDiscoveryAccessoryInfo alloc] initWithDeviceID:v55 rawDiscoveryInfo:v56];
                }
              }

              else
              {
                v60 = v53;
                if (hap2LogInitialize_onceToken != -1)
                {
                  dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
                }

                v59 = hap2Log_browser;
                if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
                {
                  *applier = 138412546;
                  *&applier[4] = @"id";
                  *&applier[12] = 2112;
                  *&applier[14] = v23;
                  _os_log_impl(&dword_22AADC000, v59, OS_LOG_TYPE_INFO, "Received txtRecord that has an invalid '%@' value: %@", applier, 0x16u);
                }

                v31 = 0;
                v53 = v60;
              }
            }

            else
            {
              v57 = v53;
              if (hap2LogInitialize_onceToken != -1)
              {
                dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
              }

              v58 = hap2Log_browser;
              if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
              {
                *applier = 138412546;
                *&applier[4] = @"id";
                *&applier[12] = 2112;
                *&applier[14] = v23;
                _os_log_impl(&dword_22AADC000, v58, OS_LOG_TYPE_INFO, "Received txtRecord that has a no '%@': %@", applier, 0x16u);
              }

              v31 = 0;
              v53 = v57;
            }
          }

          else
          {
            v31 = 0;
          }

          v16 = v61;
        }

        else
        {
          if (hap2LogInitialize_onceToken != -1)
          {
            dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
          }

          v43 = hap2Log_browser;
          if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
          {
            *applier = 138412290;
            *&applier[4] = v1;
            _os_log_impl(&dword_22AADC000, v43, OS_LOG_TYPE_INFO, "Received browse result that has no TXT record: %@", applier, 0xCu);
          }

          v31 = 0;
        }

        goto LABEL_93;
      }

      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v42 = hap2Log_browser;
      if (!os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_ERROR))
      {
LABEL_49:
        v31 = 0;
LABEL_93:

        goto LABEL_94;
      }

      *applier = 136315394;
      *&applier[4] = v14;
      *&applier[12] = 2112;
      *&applier[14] = v1;
      v39 = "Received browse result that has bad service name '%s': %@";
      v40 = v42;
      v41 = 22;
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v38 = hap2Log_browser;
      if (!os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *applier = 138412290;
      *&applier[4] = v1;
      v39 = "Received browse result that has no service domain: %@";
      v40 = v38;
      v41 = 12;
    }

    _os_log_error_impl(&dword_22AADC000, v40, OS_LOG_TYPE_ERROR, v39, applier, v41);
    goto LABEL_49;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v37 = hap2Log_browser;
  if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_ERROR))
  {
    *applier = 136315394;
    *&applier[4] = v10;
    *&applier[12] = 2112;
    *&applier[14] = v1;
    v34 = "Received browse result that has bad service name '%s': %@";
    v35 = v37;
    v36 = 22;
LABEL_96:
    _os_log_error_impl(&dword_22AADC000, v35, OS_LOG_TYPE_ERROR, v34, applier, v36);
  }

LABEL_41:
  v31 = 0;
LABEL_94:

LABEL_31:

  return v31;
}

void sub_22ABDAE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __txtRecordDictionaryForNetworkTxtRecordDictionary_block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a2];
  if (!v10)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v13 = hap2Log_browser;
    if (!os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v14 = *(a1 + 32);
    v21 = 136315394;
    *v22 = a2;
    *&v22[8] = 2112;
    *&v22[10] = v14;
    v15 = "Received txtRecord that has a bad key '%s': %@";
    goto LABEL_10;
  }

  if (a3 == 3)
  {
    [*(a1 + 40) setObject:&stru_283E79C60 forKeyedSubscript:v10];
    goto LABEL_17;
  }

  if (a3 != 4)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v17 = hap2Log_browser;
    if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 32);
      v21 = 67109634;
      *v22 = a3;
      *&v22[4] = 2112;
      *&v22[6] = v10;
      *&v22[14] = 2112;
      *&v22[16] = v20;
      _os_log_debug_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEBUG, "Received txtRecord that has a bad state (%d) for key '%@': %@", &v21, 0x1Cu);
    }

    goto LABEL_17;
  }

  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a4 length:a5 encoding:4];
  if (v11)
  {
    v12 = v11;
    [*(a1 + 40) setObject:v11 forKeyedSubscript:v10];

LABEL_17:
    v16 = 1;
    goto LABEL_18;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v13 = hap2Log_browser;
  if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
  {
    v19 = *(a1 + 32);
    v21 = 138412546;
    *v22 = v10;
    *&v22[8] = 2112;
    *&v22[10] = v19;
    v15 = "Received txtRecord that has a bad value for '%@': %@";
LABEL_10:
    _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, v15, &v21, 0x16u);
  }

LABEL_11:
  v16 = 0;
LABEL_18:

  return v16;
}

uint64_t __txtRecordDictionaryForNetworkTxtRecordData_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a2 length:a3];
  v5 = [MEMORY[0x277CCAB78] dictionaryFromTXTRecordData:v4];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return 1;
}

void __txtRecordDictionaryForNetworkTxtRecordData_block_invoke_198(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = MEMORY[0x277CCACA8];
  v9 = a3;
  v10 = [[v8 alloc] initWithData:v9 encoding:4];

  if (v10)
  {
    [*(a1 + 40) setObject:v10 forKeyedSubscript:v7];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v11 = hap2Log_browser;
    if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "Received txtRecord that has a bad key '%@': %@", &v13, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }
}

HAP2AccessoryServerDiscoveryHAPAccessoryInfo *hapAccessoryInfoWithDeviceID(void *a1, void *a2, void *a3, void *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [v10 objectForKeyedSubscript:@"sf"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 intValue];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v10 objectForKeyedSubscript:@"ci"];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 longLongValue];
  }

  else
  {
    v16 = 1;
  }

  v17 = @"c#";
  v18 = @"c#";
  v19 = [v10 objectForKeyedSubscript:@"c#"];
  if (!v19)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v26 = hap2Log_browser;
    if (!os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
    {
      goto LABEL_33;
    }

    *buf = 138412546;
    v49 = @"c#";
    v50 = 2112;
    v51 = v10;
    v27 = "Received txtRecord that has a no value for key '%@': %@";
LABEL_32:
    _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_INFO, v27, buf, 0x16u);
LABEL_33:
    v20 = 0;
    goto LABEL_34;
  }

  v20 = v19;
  v21 = [v19 longLongValue];
  if ((v21 - 0x100000000) <= 0xFFFFFFFF00000000)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v22 = hap2Log_browser;
    if (!os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
    {
      goto LABEL_34;
    }

    *buf = 138412546;
    v49 = @"c#";
    v50 = 2112;
    v51 = v10;
    v23 = "Received txtRecord that has a bad value for key '%@': %@";
    v24 = v22;
    v25 = 22;
    goto LABEL_13;
  }

  v28 = v21;

  v29 = [v10 objectForKeyedSubscript:@"s#"];
  v30 = v29;
  if (v29)
  {
    v29 = [v29 longLongValue];
  }

  if ((v29 - 0x100000000) < 0xFFFFFFFF00000001)
  {
    v31 = 1;
  }

  else
  {
    v31 = v29;
  }

  v17 = @"pv";
  v32 = @"pv";
  v33 = [v10 objectForKeyedSubscript:@"pv"];
  if (!v33)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v26 = hap2Log_browser;
    if (!os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
    {
      goto LABEL_33;
    }

    *buf = 138412546;
    v49 = @"pv";
    v50 = 2112;
    v51 = v10;
    v27 = "Received txtRecord that has no value for key '%@': %@";
    goto LABEL_32;
  }

  v20 = v33;
  v34 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:v33];
  if (!v34)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v40 = hap2Log_browser;
    if (!os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
    {
      goto LABEL_34;
    }

    *buf = 138412802;
    v49 = @"pv";
    v50 = 2112;
    v51 = v20;
    v52 = 2112;
    v53 = v10;
    v23 = "Received txtRecord that has a bad value for key '%@' ('%@'): %@";
    v24 = v40;
    v25 = 32;
LABEL_13:
    _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_INFO, v23, buf, v25);
LABEL_34:
    v38 = 0;
    goto LABEL_35;
  }

  v17 = v34;
  v47 = v31;

  v35 = [v10 objectForKeyedSubscript:@"md"];
  if (!v35)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v41 = hap2Log_browser;
    if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v49 = @"md";
      _os_log_error_impl(&dword_22AADC000, v41, OS_LOG_TYPE_ERROR, "Received txtRecord that doesn't include key '%@'", buf, 0xCu);
    }

    goto LABEL_33;
  }

  v20 = v35;
  v36 = [v10 objectForKeyedSubscript:@"ff"];
  v37 = v36;
  if (v36)
  {
    v46 = [v36 longLongValue];
  }

  else
  {
    v46 = 0;
  }

  v42 = @"sh";
  v43 = [v10 objectForKeyedSubscript:@"sh"];
  v45 = v43;
  if (v43)
  {
    v43 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v43 options:0];
    if (!v43)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v44 = hap2Log_browser;
      if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v49 = @"sh";
        v50 = 2112;
        v51 = v10;
        _os_log_impl(&dword_22AADC000, v44, OS_LOG_TYPE_INFO, "Received txtRecord that has a bad value for key '%@': %@", buf, 0x16u);
      }

      v43 = 0;
    }
  }

  v38 = [[HAP2AccessoryServerDiscoveryHAPAccessoryInfo alloc] initWithDeviceID:v7 rawDiscoveryInfo:v8 name:v9 model:v20 status:v13 category:v16 configurationNumber:v28 stateNumber:v47 protocolVersion:v17 featureFlags:v46 setupHash:v43];
LABEL_35:

  return v38;
}

void sub_22ABDC3CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_22ABDCB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABDCD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HAPDispatchQueueName(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = a1;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if (v4)
  {
    v8 = @".";
  }

  else
  {
    v8 = &stru_283E79C60;
  }

  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = &stru_283E79C60;
  }

  v10 = [v5 hash];

  v11 = [v3 stringWithFormat:@"com.apple.CoreHAP.%@%@%@.%tu", v7, v8, v9, v10];

  v12 = [v11 UTF8String];
  return v12;
}

uint64_t HAPCompareStateNumberWithRollover(void *a1, void *a2, unint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5 && v6)
  {
    if ([v5 compare:v6] == 1 && (v8 = objc_msgSend(v5, "unsignedIntValue"), v8 - objc_msgSend(v7, "unsignedIntValue") <= a3 >> 1))
    {
      v9 = 1;
    }

    else if ([v5 compare:v7])
    {
      v9 = -1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (v6)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    if (v5)
    {
      v9 = 1;
    }

    else
    {
      v9 = v10;
    }
  }

  return v9;
}

uint64_t HAPValidateSetupHash(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (a1 && a2 && v5)
  {
    v8 = a1;
    v9 = [a2 uppercaseString];
    v10 = [v6 stringByAppendingString:v9];
    v11 = [v10 dataUsingEncoding:{4, 0, 0, 0, 0, 0, 0, 0, 0}];
    if (CC_SHA512([v11 bytes], objc_msgSend(v11, "length"), &v14))
    {
      v12 = [MEMORY[0x277CBEA90] dataWithBytes:&v14 length:4];
    }

    else
    {
      v12 = 0;
    }

    v7 = [v12 isEqual:v8];
  }

  return v7;
}

id HAPShortUUIDType(void *a1)
{
  v1 = a1;
  if ([v1 hasSuffix:@"-0000-1000-8000-0026BB765291"])
  {
    v2 = [v1 substringToIndex:{objc_msgSend(v1, "length") - objc_msgSend(@"-0000-1000-8000-0026BB765291", "length")}];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

id HAPGetHAPMetadataVersion()
{
  v0 = +[HAPMetadata getSharedInstance];
  v1 = [v0 version];

  return v1;
}

BOOL HAPIsInternalBuild()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productVariant] == 3;

  return v1;
}

uint64_t HAPIsHH2Enabled()
{
  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  return HAPIsHH2Enabled_hh2Enabled;
}

void __HAPIsHH2Enabled_block_invoke()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Hmdhomemanager.isa)];
  v1 = [v0 bundlePath];
  v2 = [v1 containsString:@"HomeKitDaemonLegacy.framework"];

  if ((v2 & 1) == 0)
  {
    HAPIsHH2Enabled_hh2Enabled = 1;
  }

  if (HAPIsInternalBuild())
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Homekittesthos.isa)];
    v4 = [v3 bundlePath];
    v5 = [v4 containsString:@"HomeKitTestHostApp.app"];

    if (v5)
    {
      HAPIsHH2Enabled_hh2Enabled = 0;
      v6 = objc_autoreleasePoolPush();
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v8;
        _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Detected unit test app. Switching the flag to HH1", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  v9 = objc_autoreleasePoolPush();
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v12 = v11;
    v13 = @"HH1";
    if (HAPIsHH2Enabled_hh2Enabled)
    {
      v13 = @"HH2";
    }

    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@coreHAP Running in %@ mode", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
}

uint64_t HAPEqualInstanceIDs(void *a1, void *a2)
{
  v3 = a2;
  v4 = HAPInstanceIDFromValue(a1);
  v5 = HAPInstanceIDFromValue(v3);

  v6 = [v4 isEqual:v5];
  return v6;
}

id HAPInstanceIDFromValue(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  if ([v3 hmf_isInteger])
  {
    v4 = [MEMORY[0x277CCAC80] scannerWithString:v3];
    v12 = 0;
    v5 = 0;
    if (![v4 scanUnsignedLongLong:&v12])
    {
      goto LABEL_14;
    }

    v6 = MEMORY[0x277CCABB0];
    v7 = v12;
    goto LABEL_12;
  }

  v8 = v1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v4 = v9;

  if (v4)
  {
    v10 = MEMORY[0x277CCABB0];
    v7 = [v4 unsignedLongLongValue];
    v6 = v10;
LABEL_12:
    v5 = [v6 numberWithUnsignedLongLong:v7];
    goto LABEL_14;
  }

  v5 = 0;
LABEL_14:

  return v5;
}

id HAPInstanceIDFromUniqueIdentifier(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"+"];
  if ([v1 count] == 2)
  {
    v2 = [v1 objectAtIndexedSubscript:1];
    v3 = HAPInstanceIDFromValue(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id HAPServerIDFromUniqueIdentifier(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"+"];
  if ([v1 count] == 2)
  {
    v2 = [v1 objectAtIndexedSubscript:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id HAPUniqueIdentifier(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a1;
  v5 = [a2 stringValue];
  v6 = [v3 stringWithFormat:@"%@%@%@", v4, @"+", v5];

  return v6;
}

BOOL HAPIsHomePod()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productClass] == 6;

  return v1;
}

__CFString *HAPOperatingStateAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPOperatingState %ld", a1];
  }

  else
  {
    v2 = off_2786D4BA0[a1];
  }

  return v2;
}

void sub_22ABE14FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *HAPStagingNotReadyReasonsAsString(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!a1)
  {
    goto LABEL_14;
  }

  v3 = 1;
  v4 = a1;
  do
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_11;
    }

    switch(v3)
    {
      case 1:
        v5 = @"HAPStagingNotReadyReasonOther";
        break;
      case 4:
        v5 = @"HAPStagingNotReadyReasonConnectivity";
        break;
      case 2:
        v5 = @"HAPStagingNotReadyReasonLowBattery";
        break;
      default:
        goto LABEL_11;
    }

    v4 &= ~v3;
    [v2 addObject:v5];
LABEL_11:
    v3 *= 2;
  }

  while (v3 - 1 < a1);
  if (v4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown options %lu", v4];
    [v2 addObject:v6];
  }

LABEL_14:
  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"None";
  }

  return v7;
}

__CFString *HAPUpdateNotReadyReasonsAsString(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a1)
  {
    v3 = 1;
    v4 = a1;
    do
    {
      if ((v3 & a1) != 0)
      {
        v5 = v3 - 1;
        if (v3 - 1) <= 7 && ((0x8Bu >> v5))
        {
          v4 &= ~v3;
          [v2 addObject:off_2786D4BE0[v5]];
        }
      }

      v3 *= 2;
    }

    while (v3 - 1 < a1);
    if (v4)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown options %lu", v4];
      [v2 addObject:v6];
    }
  }

  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"None";
  }

  return v7;
}

uint64_t isValidTypeName(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    v6 = "%{public}@### Type name is nil";
LABEL_11:
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_ERROR, v6, &v8, 0xCu);

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    v6 = "%{public}@### Type name is not a string";
    goto LABEL_11;
  }

  if (![v1 length])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v5;
      v6 = "%{public}@### Type name is an empty string";
      goto LABEL_11;
    }

LABEL_12:

    objc_autoreleasePoolPop(v3);
    v2 = 0;
    goto LABEL_13;
  }

  v2 = 1;
LABEL_13:

  return v2;
}

uint64_t isValidInstanceID(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v1 doubleValue];
      v3 = floor(v2);
      [v1 doubleValue];
      if (v3 == ceil(v4))
      {
        if ([v1 unsignedLongLongValue])
        {
          v9 = 1;
          goto LABEL_12;
        }

        v5 = objc_autoreleasePoolPush();
        v6 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = HMFGetLogIdentifier();
          v11 = 138543362;
          v12 = v7;
          v8 = "%{public}@### instance ID is not > 0";
          goto LABEL_10;
        }
      }

      else
      {
        v5 = objc_autoreleasePoolPush();
        v6 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = HMFGetLogIdentifier();
          v11 = 138543362;
          v12 = v7;
          v8 = "%{public}@### instance ID is not an integer";
LABEL_10:
          _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, v8, &v11, 0xCu);
        }
      }
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = HMFGetLogIdentifier();
        v11 = 138543362;
        v12 = v7;
        v8 = "%{public}@### instance ID is not a number";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v7;
      v8 = "%{public}@### nil instance ID";
      goto LABEL_10;
    }
  }

  objc_autoreleasePoolPop(v5);
  v9 = 0;
LABEL_12:

  return v9;
}

uint64_t numbersAreNotEqualNilSafe(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = 1;
    if (v3 && v4)
    {
      if (CFNumberIsFloatType(v3) || CFNumberIsFloatType(v5))
      {
        [v3 floatValue];
        v8 = v7;
        [v5 floatValue];
        v6 = vabds_f32(v8, v9) >= 0.00000011921;
      }

      else
      {
        v6 = [v3 isEqualToNumber:v5] ^ 1;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_22ABE4570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13039(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22ABE4A68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_22ABE4F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABE6A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _HandleSocketEvent_f(uint64_t a1, void *a2)
{
  v2 = a1;
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 delegate];
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = CUPrintFlags32();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@[HAP HTTP Client] Received socket event with flags %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (v4)
  {
    [v4 httpClient:v3 didReceiveSocketEvent:(v2 >> 1) & 2 | (v2 >> 11) & 1];
  }
}

void _Invalidated_f(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v3 = a2;
  v4 = [v3 delegate];
  DebugGetErrorString();
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v4 identifier];
    *buf = 138544130;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 1024;
    v18 = a1;
    v19 = 2080;
    v20 = v21;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@[HAP HTTP Client] Received invalidate callback from CoreUtils HTTPClient %@ due to %d (%s)", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v5);
  [v3 setInvalidated:1];
  v9 = HMErrorFromOSStatus(a1);
  [v3 setInvalidateReason:v9];

  if ([v3 invalidateRequested])
  {
    [v3 setInvalidateRequested:0];
  }

  else if ([v3 _delegateRespondsToSelector:sel_httpClientDidCloseConnectionDueToServer_])
  {
    v10 = [v3 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___Invalidated_f_block_invoke;
    block[3] = &unk_2786D6CA0;
    v12 = v3;
    dispatch_async(v10, block);
  }
}

void _HandleEvent_f(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@[HAP HTTP Client] Received event message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v23 = 0;
  v24 = 0;
  v7 = a2;
  v8 = *(a1 + 9648);
  if (v8)
  {
    goto LABEL_8;
  }

  v9 = *(a1 + 8456);
  if ((v9 - 300) <= 0xFFFFFF9B)
  {
    v10 = 0;
    v8 = (v9 + 200000);
  }

  else if (*(a1 + 8528) && *(a1 + 8520))
  {
    v8 = HTTPGetHeaderField();
    if (v8)
    {
LABEL_8:
      v10 = 0;
      goto LABEL_9;
    }

    v10 = 0;
    v8 = 4294960579;
  }

  else
  {
    v10 = 0;
    v8 = 4294960558;
  }

LABEL_9:
  v11 = HMErrorFromOSStatus(v8);
  if (v11)
  {
    v12 = v11;
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v15;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@[HAP HTTP Client] ### Received event but failed to deliver it due to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    if ([v7 _delegateRespondsToSelector:sel_httpClient_didReceiveEvent_])
    {
      v16 = [v7 delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___HandleEvent_f_block_invoke;
      block[3] = &unk_2786D7050;
      v21 = v7;
      v10 = 0;
      v22 = v10;
      dispatch_async(v16, block);
    }

    v12 = 0;
  }

  v17 = [v7 delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v19)
  {
    [v19 incrementHAPIPHTTPEventsCount];
  }
}

void _HandleConnectionProgress(int a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a1 - 1) >= 2)
  {
    if (a1 == 4)
    {
    }

    else if (a1 == 3)
    {
      v6 = [objc_alloc(MEMORY[0x277D0F858]) initWithSocketAddress:a2];
      v7 = [v5 delegate];
      [v7 httpClient:v5 didStartConnectingToNetAddress:v6];
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = v5;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = 138543618;
        v13 = v11;
        v14 = 1024;
        v15 = a1;
        _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unknown Phase in HandleConnectionProgress: %d", &v12, 0x12u);
      }

      objc_autoreleasePoolPop(v8);
    }
  }
}

void _HandleWillSendMessage_f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = [MEMORY[0x277CBEA90] dataWithBytes:a1 length:a2];
  v11 = 0;
  if (a3 && a4)
  {
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:a4];
  }

  if ([v9 _debugDelegateRespondsToSelector:sel_httpClient_willSendHTTPMessageWithHeaders_body_])
  {
    v12 = [v9 debugDelegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___HandleWillSendMessage_f_block_invoke;
    block[3] = &unk_2786D7078;
    v14 = v9;
    v15 = v10;
    v16 = v11;
    dispatch_async(v12, block);
  }
}

void _HandleDidReceiveMessage_f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = [MEMORY[0x277CBEA90] dataWithBytes:a1 length:a2];
  v11 = 0;
  if (a3 && a4)
  {
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:a4];
  }

  if ([v9 _debugDelegateRespondsToSelector:sel_httpClient_didReceiveHTTPMessageWithHeaders_body_])
  {
    v12 = [v9 debugDelegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___HandleDidReceiveMessage_f_block_invoke;
    block[3] = &unk_2786D7078;
    v14 = v9;
    v15 = v10;
    v16 = v11;
    dispatch_async(v12, block);
  }
}

__CFString *HAPHTTPSerializationTypeDescription(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_2786D4CF8[a1 - 1];
  }
}

__CFString *HAPNotificationContextSourceAsString(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPNotificationContextSource %ld", a1];
  }

  else
  {
    v2 = off_2786D4D18[a1 - 1];
  }

  return v2;
}

id _stringForMessage(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = *(a1 + 6);
  if (!*a1 && !*(a1 + 1) && !*(a1 + 4) && !*(a1 + 48))
  {
    v11 = "Ping";
    if (a2)
    {
      v11 = "Pong";
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"<%s id=%lu>", v11, v4];
    goto LABEL_14;
  }

  if (*(a1 + 4))
  {
    v5 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(a1 + 40) length:? freeWhenDone:?];
    v6 = [v5 hmf_hexadecimalStringWithOptions:2];

    if ((v2 & 1) == 0)
    {
      if (v6)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"<Request id=%lu, token=%@, size=%lu>", v4, v6, *(a1 + 24) + *(a1 + 3)];
LABEL_12:

        goto LABEL_15;
      }

      goto LABEL_13;
    }

LABEL_11:
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u.%02u", *(a1 + 1) >> 5, *(a1 + 1) & 0x1F];
    v7 = [v8 stringWithFormat:@"<Response id=%lu, token=%@, code=%@, size=%lu>", v4, v6, v9, *(a1 + 24) + *(a1 + 3)];

    goto LABEL_12;
  }

  if (a2)
  {
    v6 = 0;
    goto LABEL_11;
  }

LABEL_13:
  [MEMORY[0x277CCACA8] stringWithFormat:@"<Event id=%lu>", v4, v12];
  v7 = LABEL_14:;
LABEL_15:

  return v7;
}

id stringForToken(int a1)
{
  v4 = a1;
  v1 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&v4 length:4 freeWhenDone:0];
  v2 = [v1 hmf_hexadecimalStringWithOptions:2];

  return v2;
}

void sub_22ABEDA40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22ABEED8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABEEED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABEF084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABEF290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13800(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22ABF0710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABF0838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14027(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22ABF12F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABF1930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABF1C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_22ABF20F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *HAPWiFiConfigurationUpdateStatusAsString(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!a1)
  {
    goto LABEL_26;
  }

  v3 = 1;
  v4 = a1;
  do
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_23;
    }

    if (v3 >= 0x100000)
    {
      if (v3 >= 0x400000)
      {
        if (v3 == 0x400000)
        {
          v5 = @"HAPWiFiConfigurationUpdateStatusNetworkConfigured";
        }

        else
        {
          if (v3 != 0x800000)
          {
            goto LABEL_23;
          }

          v5 = @"HAPWiFiConfigurationUpdateStatusConnectionVerified";
        }
      }

      else if (v3 == 0x100000)
      {
        v5 = @"HAPWiFiConfigurationUpdateStatusAuthenticationFailed";
      }

      else
      {
        if (v3 != 0x200000)
        {
          goto LABEL_23;
        }

        v5 = @"HAPWiFiConfigurationUpdateStatusLinkEstablished";
      }
    }

    else if (v3 >= 0x40000)
    {
      if (v3 == 0x40000)
      {
        v5 = @"HAPWiFiConfigurationUpdateStatusUpdateSuccessful";
      }

      else
      {
        if (v3 != 0x80000)
        {
          goto LABEL_23;
        }

        v5 = @"HAPWiFiConfigurationUpdateStatusUpdateFailed";
      }
    }

    else
    {
      v5 = @"HAPWiFiConfigurationUpdateStatusUpdatePending";
      if (v3 != 0x10000)
      {
        if (v3 != 0x20000)
        {
          goto LABEL_23;
        }

        v5 = @"HAPWiFiConfigurationUpdateStatusSessionRestartRequired";
      }
    }

    v4 &= ~v3;
    [v2 addObject:v5];
LABEL_23:
    v3 *= 2;
  }

  while (v3 - 1 < a1);
  if (v4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown options %lu", v4];
    [v2 addObject:v6];
  }

LABEL_26:
  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"None";
  }

  return v7;
}

void sub_22ABFDB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABFDFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABFEE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15106(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22ABFF420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22ABFF800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22ABFF984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _PairSetupAfterM4(int a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (a1 == 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 pairingSession];
      PeerFlags = PairingSessionGetPeerFlags();
      [v4 pairingSession];
      v6 = PairingSessionCopyProperty();
      v7 = CFGetTypeID(v6);
      if (v7 == CFDataGetTypeID())
      {
        v8 = v6;
        v9 = objc_autoreleasePoolPush();
        v10 = v4;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          v13 = [v8 shortDescription];
          *buf = 138543874;
          v16 = v12;
          v17 = 1024;
          v18 = PeerFlags;
          v19 = 2112;
          v20 = v13;
          _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Pair-setup after M4, flags %08X  productData %@", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v9);
        v14 = [HAPAccessory productDataStringFromData:v8];
        [v10 _handleProductData:v14];

        if (!v6)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v8 = 0;
        if (!v6)
        {
          goto LABEL_8;
        }
      }

      CFRelease(v6);
LABEL_8:
    }
  }
}

uint64_t _PromptForSetupCodeDelegateCallback_f(int a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 1024;
    v15 = a1;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@_PromptForSetupCodeDelegateCallback_f with flags: %u", &v12, 0x12u);
  }

  objc_autoreleasePoolPop(v6);
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ((a1 & 0x20000) != 0)
    {
      [v9 handleBackoffRequestWithTimeout:a2];
    }

    else if ((a1 & 0x10000) != 0 && ([v9 isHandlingInvalidSetupCode] & 1) == 0)
    {
      [v9 handleInvalidSetupCodeAndRestart:1];
    }

    else
    {
      [v9 handleSetupCodeRequest];
    }

    v10 = 0;
  }

  else
  {
    v10 = 4294960569;
  }

  return v10;
}

uint64_t _PairingShowSetupCode_f(int a1, void *a2, uint64_t a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = objc_autoreleasePoolPush();
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v10;
    v25 = 1024;
    LODWORD(v26) = a1;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@_PairingShowSetupCode_f with flags: %u", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v8);
  v11 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = 0;
    v12 = [v11 _showSetupCodeWithError:&v22];
    v13 = v22;
    v14 = v13;
    if (v12)
    {
      v15 = [v12 lengthOfBytesUsingEncoding:4];
      if (v15 <= a3 - 1)
      {
        v20 = v15;
        memcpy(a2, [v12 UTF8String], v15);
        v16 = 0;
        *(a2 + v20) = 0;
      }

      else
      {
        v16 = 4294960553;
      }
    }

    else
    {
      v16 = [v13 code];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@Error during _PairingShowSetupCode_f, object is not a HAPSRPPairSetupSession: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 4294960591;
  }

  return v16;
}

uint64_t _SavePairedPeerDelegateCallback_f_15196(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a1 length:a2 encoding:4];
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:32];
    v10 = v9;
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = @"nonnil";
        v22 = 138544130;
        v23 = v14;
        if (v8)
        {
          v16 = @"nonnil";
        }

        else
        {
          v16 = @"nil";
        }

        v25 = v16;
        v24 = 2112;
        if (!v10)
        {
          v15 = @"nil";
        }

        v26 = 2112;
        v27 = v15;
        v28 = 2112;
        v29 = v7;
        _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@Error during _SavePairedPeerDelegateCallback_f with peerIdentifier: %@, peerPublicKeyData: %@, session: %@", &v22, 0x2Au);
      }

      objc_autoreleasePoolPop(v12);
      v17 = 4294960591;
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v9];
      v19 = [[HAPPairingIdentity alloc] initWithIdentifier:v8 publicKey:v18 privateKey:0 permissions:0];
      v20 = v19;
      v17 = 4294960596;
      if (v19)
      {
        if ([v7 handleSavePeerRequestWithPeerIdentity:v19 error:0])
        {
          v17 = 0;
        }

        else
        {
          v17 = 4294960596;
        }
      }
    }
  }

  else
  {
    v17 = 4294960569;
  }

  return v17;
}

uint64_t _CopyPairingIdentityDelegateCallback_f_15205(uint64_t a1, char **a2, void *a3, void *a4, void *a5)
{
  v34 = 0;
  v8 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_17;
  }

  v9 = [v8 _handleLocalPairingIdentityRequestWithStatus:&v34];
  v10 = v9;
  if (v34)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    v11 = [v9 identifier];
    v12 = [v11 lengthOfBytesUsingEncoding:4];

    if (!v12)
    {
      goto LABEL_18;
    }

    v13 = malloc_type_calloc(v12 + 1, 1uLL, 0x100004077774924uLL);
    if (!v13)
    {
      v33 = -6728;
      goto LABEL_20;
    }

    v14 = v13;
    v15 = [v10 identifier];
    strlcpy(v14, [v15 UTF8String], v12 + 1);

    *a2 = v14;
  }

  v16 = MEMORY[0x277D0F1D8];
  if (!a3)
  {
    goto LABEL_11;
  }

  v17 = [v10 publicKey];

  if (!v17)
  {
    goto LABEL_17;
  }

  v18 = [v10 publicKey];
  v19 = [v18 data];
  v20 = [v19 length];
  v21 = *v16;

  if (v20 != v21)
  {
LABEL_18:
    v33 = -6743;
    goto LABEL_20;
  }

  v22 = [v10 publicKey];
  v23 = [v22 data];
  memcpy(a3, [v23 bytes], v20);

LABEL_11:
  if (a4)
  {
    v24 = [v10 privateKey];

    if (v24)
    {
      v25 = [v10 privateKey];
      v26 = [v25 data];
      v27 = [v26 length];
      v28 = *v16;

      if (v27 == v28)
      {
        v29 = [v10 privateKey];
        v30 = [v29 data];
        memcpy(a4, [v30 bytes], v27);

        goto LABEL_15;
      }

      goto LABEL_18;
    }

LABEL_17:
    v33 = -6727;
LABEL_20:
    v34 = v33;
  }

LABEL_15:
  v31 = v34;

  return v31;
}

__CFString *StringForSystemPowerChangedMessage(uint64_t a1)
{
  HIDWORD(v3) = a1 + 536870288;
  LODWORD(v3) = a1 + 536870288;
  v2 = v3 >> 4;
  if (v2 < 0xC && ((0xA07u >> v2) & 1) != 0)
  {
    v4 = off_2786D50D8[v2];
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing string for IOSystemMessage: 0x%X", a1];
  }

  return v4;
}

void sub_22AC08F18(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22AC09CC8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22AC09DC8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

__CFString *HAPAccessoryServerPairSetupTypeToString(unint64_t a1)
{
  if (a1 > 7)
  {
    return &stru_283E79C60;
  }

  else
  {
    return off_2786D52B0[a1];
  }
}

id HAPPairingStateFromData(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];

  TLV8Get();

  return 0;
}

__CFString *HAPUserPermissionTypeDescription(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<Unknown value: %ld>", a1];
  }

  else
  {
    v2 = off_2786D52F0[a1];
  }

  return v2;
}

__CFString *HAPLinkTypeDescription(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<Unknown value: %ld>", a1];
  }

  else
  {
    v2 = off_2786D5320[a1];
  }

  return v2;
}

__CFString *HAPCommunicationProtocolDescription(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<Unknown value: %ld>", a1];
  }

  else
  {
    v2 = off_2786D5338[a1];
  }

  return v2;
}

__CFString *HAPLinkLayerTypeDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Ethernet";
  }

  else
  {
    return off_2786D5358[a1];
  }
}

__CFString *HAPCharacteristicValueTransitionTypesAsString(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!a1)
  {
    goto LABEL_12;
  }

  v3 = 1;
  v4 = a1;
  do
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_9;
    }

    if (v3 == 1)
    {
      v5 = @"HAPCharacteristicValueTransitionTypeLinear";
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_9;
      }

      v5 = @"HAPCharacteristicValueTransitionTypeLinearDerived";
    }

    v4 &= ~v3;
    [v2 addObject:v5];
LABEL_9:
    v3 *= 2;
  }

  while (v3 - 1 < a1);
  if (v4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown options %lu", v4];
    [v2 addObject:v6];
  }

LABEL_12:
  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"None";
  }

  return v7;
}

__CFString *HAPCharacteristicFormatToString(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_2786D55E0[a1 - 1];
  }

  return v2;
}

uint64_t HAPCharacteristicFormatFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"uint8"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"uint16"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"uint32"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"uint64"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"int8"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"int16"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"int"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"int64"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"BOOL"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"float"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"string"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"data"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"tlv8"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"array"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"dict"])
  {
    v2 = 15;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *HAPCharacteristicUnitToString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_2786D5658[a1 - 1];
  }

  return v2;
}

uint64_t HAPCharacteristicUnitFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"seconds"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"arcdegrees"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"celsius"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"percentage"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"lux"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_22AC14B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17262(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AC14E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC15104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22AC152C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC15540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22AC157DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC15914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC167A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17482(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AC17830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC17A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC17CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC17F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC181E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC18454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC186C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC18934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC18DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_22AC193B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 216), 8);
  _Block_object_dispose((v33 - 184), 8);
  _Block_object_dispose((v33 - 152), 8);
  _Block_object_dispose((v33 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_22AC1A1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose((v32 - 128), 8);
  _Block_object_dispose((v32 - 96), 8);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __validateAccessoryRuntimeInformationService_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 type];
  v8 = [v7 isEqualToString:@"0000023C-0000-1000-8000-0026BB765291"];

  if (v8)
  {
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "Accessory Runtime Information service contains more than one Ping characteristic", buf, 2u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }

    v10 = [v6 metadata];
    v11 = [v10 format];
    v12 = HAPCharacteristicFormatFromString(v11);

    if (v12 != 12)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v13 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_error_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "Accessory Runtime Information service contains an invalid Ping characteristic", v14, 2u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}
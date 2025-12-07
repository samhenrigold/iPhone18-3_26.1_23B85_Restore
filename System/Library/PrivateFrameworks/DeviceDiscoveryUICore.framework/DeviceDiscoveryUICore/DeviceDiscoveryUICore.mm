uint64_t sub_230EFB69C()
{
  if (*v0)
  {
    return 0x64656C6261736964;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_230EFB6D8@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_230EFB760()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_230EFB7A8()
{
  v1 = sub_230F390B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_230F0CD64(*(v0 + v5), *(v0 + v5 + 8));

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_230EFB8B4()
{
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_230EFB928()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_230EFB960()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_230EFB9A0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_230EFB9F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_230EFBA84(uint64_t a1, uint64_t a2)
{
  v4 = sub_230F390B8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_230EFBAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_230F390B8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_230EFBB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_230F390B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_230EFBC30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_230F390B8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_230EFBD10(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_230F394D8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_230EFBDBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_230F394D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_230EFBE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_230F390B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB824B0, &qword_230F3CAB0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_230EFBF9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_230F390B8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB824B0, &qword_230F3CAB0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_230EFC0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_230F390B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_230EFC19C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_230F390B8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_230EFC254(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_230EFC2A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__CFString *DDUINotificationResultString(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"Unexpected Response!";
  }

  else
  {
    return off_2788F5848[a1];
  }
}

os_log_t _DDUICoreLog()
{
  v0 = os_log_create("com.apple.DeviceDiscoveryUI", "core");

  return v0;
}

id DDUICorePrimaryQueue(uint64_t a1)
{
  if (DDUICorePrimaryQueue_onceToken[0] != -1)
  {
    DDUICorePrimaryQueue_cold_1();
  }

  v2 = DDUICorePrimaryQueue_primaryQueue;

  return v2;
}

void __DDUICorePrimaryQueue_block_invoke()
{
  attr = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_get_global_queue(25, 0);
  v1 = dispatch_queue_create_with_target_V2("com.apple.DeviceDiscoveryUI.queue", attr, v0);
  v2 = DDUICorePrimaryQueue_primaryQueue;
  DDUICorePrimaryQueue_primaryQueue = v1;
}

__CFString *DDUILocalizedString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.DeviceDiscoveryUI"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_2845BF6E0 table:0];
  }

  else
  {
    v4 = &stru_2845BF6E0;
  }

  return v4;
}

__CFString *DDUICoreLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.DeviceDiscoveryUICore"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_2845BF6E0 table:0];
  }

  else
  {
    v4 = &stru_2845BF6E0;
  }

  return v4;
}

__CFString *DDUICoreSingLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.DeviceDiscoveryUICore"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_2845BF6E0 table:@"LocalizableSing"];
  }

  else
  {
    v4 = &stru_2845BF6E0;
  }

  return v4;
}

__CFString *DDUILocalizedUsageStringForBundle(__CFBundle *a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = CFBundleCopyLocalizedString(a1, [v5 stringWithFormat:@"%@-UsageDescription", a2], v6, @"InfoPlist");

  return v7;
}

id DDUILocalizedUsageStringWithSuffixForBundle(__CFBundle *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a4;
  v9 = [v7 stringWithFormat:@"%@-%@", a2, a3];
  v10 = DDUILocalizedUsageStringForBundle(a1, v9, v8);

  return v10;
}

id DDUIBuildLocalizedKeyForDeviceTypes(void *a1, char a2)
{
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v5 = v4;
  if ((a2 & 8) != 0)
  {
    [v4 appendString:@"_WATCH"];
    if ((a2 & 1) == 0)
    {
LABEL_3:
      if ((a2 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_3;
  }

  [v5 appendString:@"_PHONE"];
  if ((a2 & 2) != 0)
  {
LABEL_4:
    [v5 appendString:@"_PAD"];
  }

LABEL_5:
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v3, v5, 0];

  return v6;
}

_DDUIRapportPairingTransport *DDUIEndpointPairingBrowsingTransportForOptions(uint64_t a1)
{
  if (a1)
  {
    v3 = [[_DDUIRapportPairingTransport alloc] initWithMode:0];
  }

  else
  {
    v2 = _DDUICoreLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      DDUIEndpointPairingBrowsingTransportForOptions_cold_1(a1, v2);
    }

    v3 = 0;
  }

  return v3;
}

_DDUIRapportPairingTransport *DDUIEndpointPairingListeningTransportForOptions(uint64_t a1)
{
  if (a1)
  {
    v3 = [[_DDUIRapportPairingTransport alloc] initWithMode:1];
  }

  else
  {
    v2 = _DDUICoreLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      DDUIEndpointPairingListeningTransportForOptions_cold_1(a1, v2);
    }

    v3 = 0;
  }

  return v3;
}

os_log_t _DDUICoreRapportLog()
{
  v0 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");

  return v0;
}

void sub_230EFE92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_230EFF090(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_230EFF4D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_230F00B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_230F01640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_230F027D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_230F02AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_230F02E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id UnsupportedErrorWithDescription(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCA9B8];
  v2 = *MEMORY[0x277CCA5B8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = a1;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a1;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v1 errorWithDomain:v2 code:19 userInfo:v5];

  return v6;
}

uint64_t initFigContinuityCaptureGetUserPreferenceDisabled()
{
  if (CMCaptureLibrary_sOnce != -1)
  {
    initFigContinuityCaptureGetUserPreferenceDisabled_cold_1();
  }

  v0 = dlsym(CMCaptureLibrary_sLib, "FigContinuityCaptureGetUserPreferenceDisabled");
  softLinkFigContinuityCaptureGetUserPreferenceDisabled = v0;

  return (v0)();
}

void *__CMCaptureLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CMCapture.framework/CMCapture", 2);
  CMCaptureLibrary_sLib = result;
  return result;
}

Class initCPSDedicatedCameraRequest()
{
  if (CompanionServicesLibrary_sOnce != -1)
  {
    initCPSDedicatedCameraRequest_cold_1();
  }

  result = objc_getClass("CPSDedicatedCameraRequest");
  classCPSDedicatedCameraRequest = result;
  getCPSDedicatedCameraRequestClass = CPSDedicatedCameraRequestFunction;
  return result;
}

void *__CompanionServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CompanionServices.framework/CompanionServices", 2);
  CompanionServicesLibrary_sLib = result;
  return result;
}

Class initCPSAuthenticationSession()
{
  if (CompanionServicesLibrary_sOnce != -1)
  {
    initCPSDedicatedCameraRequest_cold_1();
  }

  result = objc_getClass("CPSAuthenticationSession");
  classCPSAuthenticationSession = result;
  getCPSAuthenticationSessionClass = CPSAuthenticationSessionFunction;
  return result;
}

void sub_230F046DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *DDUIEndpointPairingSessionResultString(uint64_t a1)
{
  v1 = &stru_2845BF6E0;
  if (a1 == 1)
  {
    v1 = @"Cancelled";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Accepted";
  }
}

void sub_230F05D48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

__CFString *DDUIEndpointPairingSessionStateString(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"invalid";
  }

  else
  {
    return off_2788F5F28[a1];
  }
}

uint64_t DDUIDeviceTypeForModelString(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"Watch"])
  {
    v2 = 8;
  }

  else if ([v1 hasPrefix:@"iPhone"] & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"iPod"))
  {
    v2 = 1;
  }

  else if ([v1 hasPrefix:@"iPad"])
  {
    v2 = 2;
  }

  else if ([v1 hasPrefix:@"AppleTV"])
  {
    v2 = 16;
  }

  else if ([v1 containsString:@"Mac"])
  {
    v2 = 4;
  }

  else
  {
    v4 = _DDUICoreLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      DDUIDeviceTypeForModelString_cold_1(v1, v4);
    }

    v2 = 0;
  }

  return v2;
}

__SecKey *DDUINearFieldIdentity(void *a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CDC018];
  v16[0] = *MEMORY[0x277CDC028];
  v16[1] = v3;
  v17[0] = a1;
  v4 = MEMORY[0x277CCABB0];
  v5 = a1;
  v6 = [v4 numberWithUnsignedInteger:a2];
  v17[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  RandomKey = SecKeyCreateRandomKey(v7, 0);
  v9 = SecKeyCopyPublicKey(RandomKey);
  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (v9)
  {
    CFRelease(v9);
  }

  if (SelfSignedCertificate)
  {
    v11 = SecIdentityCreate();
    CFRelease(SelfSignedCertificate);
    if (RandomKey)
    {
      CFRelease(RandomKey);
    }

    if (v11)
    {
      RandomKey = sec_identity_create(v11);
      CFRelease(v11);
      if (!RandomKey)
      {
        v12 = _DDUICoreLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          DDUINearFieldIdentity_cold_1();
        }
      }

      goto LABEL_19;
    }

    v14 = _DDUICoreLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      DDUINearFieldIdentity_cold_2();
    }

LABEL_18:
    RandomKey = 0;
    goto LABEL_19;
  }

  v13 = _DDUICoreLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    DDUINearFieldIdentity_cold_3();
  }

  if (RandomKey)
  {
    CFRelease(RandomKey);
    goto LABEL_18;
  }

LABEL_19:

  return RandomKey;
}

__SecIdentity *DDUINearFieldPublicKeyFromIdentity(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_16;
  }

  v3 = sec_identity_copy_ref(v1);
  v4 = v3;
  if (!v3)
  {
    goto LABEL_17;
  }

  privateKeyRef = 0;
  v5 = SecIdentityCopyPrivateKey(v3, &privateKeyRef);
  CFRelease(v4);
  if (v5)
  {
    if (privateKeyRef)
    {
      CFRelease(privateKeyRef);
      privateKeyRef = 0;
    }

    v6 = _DDUICoreLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      DDUINearFieldPublicKeyFromIdentity_cold_1();
    }
  }

  if (!privateKeyRef)
  {
    goto LABEL_16;
  }

  v7 = SecKeyCopyPublicKey(privateKeyRef);
  if (privateKeyRef)
  {
    CFRelease(privateKeyRef);
    privateKeyRef = 0;
  }

  if (v7)
  {
    v4 = SecKeyCopySubjectPublicKeyInfo();
    CFRelease(v7);
    if (v4)
    {
      v8 = v4;
    }
  }

  else
  {
LABEL_16:
    v4 = 0;
  }

LABEL_17:

  return v4;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_230F09BE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_230F0A090(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_230F0AC04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

DDUIInfoPlist *DDUIInfoPlistFromTopLevelDictionary(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(DDUIInfoPlist);
  v3 = [v1 objectForKey:@"Browses"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = DDUIInfoPlistServiceMapFromArray(v3);
    [(DDUIInfoPlist *)v2 setBrowsesByIdentifier:v4];
  }

  v5 = [v1 objectForKey:@"Advertises"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = DDUIInfoPlistServiceMapFromArray(v5);
    [(DDUIInfoPlist *)v2 setAdvertisesByIdentifier:v6];
  }

  v7 = _DDUICoreLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = v2;
    v11 = 2112;
    v12 = v1;
    _os_log_impl(&dword_230EF9000, v7, OS_LOG_TYPE_INFO, "Loaded info plist %@ from %@", &v9, 0x16u);
  }

  return v2;
}

id DDUIInfoPlistServiceMapFromArray(void *a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v38;
    v25 = *v38;
    v26 = v2;
    do
    {
      v6 = 0;
      v30 = v4;
      do
      {
        if (*v38 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v37 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          v9 = [v8 objectForKey:@"NSApplicationServiceIdentifier"];
          v32 = v9;
          if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v11 = objc_alloc_init(DDUIInfoPlistService);
            v12 = v10;
            p_super = &v11->super;
            [(DDUIInfoPlistService *)v11 setIdentifier:v12];
            v14 = [v8 objectForKey:@"NSApplicationServiceUsageDescription"];
            objc_opt_class();
            v31 = v14;
            if (objc_opt_isKindOfClass())
            {
              [p_super setUsageDescription:v14];
            }

            v15 = [v8 objectForKey:@"NSApplicationServicePlatformSupport", v25, v26];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = p_super;
              v28 = v8;
              v35 = 0u;
              v36 = 0u;
              v33 = 0u;
              v34 = 0u;
              v16 = v15;
              v17 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = 0;
                v20 = *v34;
                do
                {
                  for (i = 0; i != v18; ++i)
                  {
                    if (*v34 != v20)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v22 = *(*(&v33 + 1) + 8 * i);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      if ([v22 isEqualToString:@"iOS"])
                      {
                        v19 = v19 | 1;
                      }

                      else if ([v22 isEqualToString:@"iPadOS"])
                      {
                        v19 = v19 | 2;
                      }

                      else if ([v22 isEqualToString:@"watchOS"])
                      {
                        v19 = v19 | 8;
                      }

                      else
                      {
                        v19 = v19;
                      }
                    }
                  }

                  v18 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
                }

                while (v18);
              }

              else
              {
                v19 = 0;
              }

              p_super = v27;
              [v27 setDeviceTypes:v19];
              v5 = v25;
              v2 = v26;
              v8 = v28;
            }

            v23 = [p_super identifier];
            [v29 setObject:p_super forKey:v23];

            v4 = v30;
          }

          else
          {
            p_super = _DDUICoreLog();
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v43 = @"NSApplicationServiceIdentifier";
              _os_log_impl(&dword_230EF9000, p_super, OS_LOG_TYPE_DEFAULT, "Identifier item under %@, is not of class NSString", buf, 0xCu);
            }
          }
        }

        else
        {
          v8 = _DDUICoreLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v43 = @"NSApplicationServices";
            _os_log_impl(&dword_230EF9000, v8, OS_LOG_TYPE_DEFAULT, "Top level item under %@, is not of class NSDictionary", buf, 0xCu);
          }
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v4);
  }

  return v29;
}

id DDUIFetchInfoPlistFromRecord(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = _DDUICoreLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [v1 URL];
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_230EF9000, v2, OS_LOG_TYPE_DEFAULT, "Looking for bundle at %@", &v9, 0xCu);
  }

  v4 = [v1 infoDictionary];
  v5 = [v4 objectForKey:@"NSApplicationServices" ofClass:objc_opt_class()];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = DDUIInfoPlistFromTopLevelDictionary(v5);
  }

  else
  {
    v7 = _DDUICoreLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543874;
      v10 = @"NSApplicationServices";
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v1;
      _os_log_impl(&dword_230EF9000, v7, OS_LOG_TYPE_DEFAULT, "Invalid %{public}@ value found. %@ is not an NSDictionary from %@", &v9, 0x20u);
    }

    v6 = 0;
  }

  return v6;
}

id DDUIDeviceTypeString(char a1)
{
  v2 = objc_msgSend(objc_alloc(MEMORY[0x277CCAB68]), "initWithString:", @"(");
  v3 = v2;
  if ((a1 & 8) == 0)
  {
    if ((a1 & 1) == 0)
    {
      if ((a1 & 2) == 0)
      {
        if ((a1 & 0x10) == 0)
        {
          if ((a1 & 4) == 0)
          {
            goto LABEL_20;
          }

LABEL_19:
          [v3 appendString:@"Mac"];
          goto LABEL_20;
        }

        goto LABEL_17;
      }

LABEL_15:
      [v3 appendString:@"iPad"];
      if ((a1 & 0x10) != 0)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

LABEL_13:
    [v3 appendString:@"iPhone"];
    if ((a1 & 2) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  [v2 appendString:@"Watch"];
  if (a1)
  {
    [v3 appendString:@"|"];
    goto LABEL_13;
  }

  if ((a1 & 2) != 0)
  {
LABEL_14:
    [v3 appendString:@"|"];
    goto LABEL_15;
  }

LABEL_9:
  if ((a1 & 0x10) != 0)
  {
LABEL_16:
    [v3 appendString:@"|"];
LABEL_17:
    [v3 appendString:@"TV"];
    if ((a1 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_10:
  if ((a1 & 4) != 0)
  {
LABEL_18:
    [v3 appendString:@"|"];
    goto LABEL_19;
  }

LABEL_20:
  [v3 appendString:@""]);

  return v3;
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

uint64_t sub_230F0CA78(uint64_t a1)
{
  v3 = [v1 otherSettings];
  v4 = [v3 objectForSetting_];

  if (v4)
  {
    sub_230F39888();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_230F0D798(v9, &qword_27DB81D50, &unk_230F3BFE0);
    return 0;
  }
}

uint64_t DDUIConfirmationDialogSceneSettings.requestKind.getter@<X0>(uint64_t a1@<X8>)
{
  sub_230F39008();
  swift_allocObject();
  sub_230F38FF8();
  v3 = [v1 otherSettings];
  v4 = [v3 objectForSetting_];

  if (v4)
  {
    sub_230F39888();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v9 = v14;
  v10 = v15;
  if (!*(&v15 + 1))
  {

    result = sub_230F0D798(&v9, &qword_27DB81D50, &unk_230F3BFE0);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_9:
    v6 = 0uLL;
    v8 = -1;
    v7 = 0uLL;
    goto LABEL_10;
  }

  sub_230F0CD10();
  sub_230F38FE8();
  sub_230F0CD64(v12, v13);

  v6 = v9;
  v7 = v10;
  v8 = v11;
LABEL_10:
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

unint64_t sub_230F0CD10()
{
  result = qword_27DB81D58;
  if (!qword_27DB81D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB81D58);
  }

  return result;
}

uint64_t sub_230F0CD64(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id DDUIConfirmationDialogSceneSettings.mutableCopy(with:)@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DDUIConfirmationDialogMutableSceneSettings();
  result = [objc_allocWithZone(v3) initWithSettings_];
  a1[3] = v3;
  *a1 = result;
  return result;
}

id DDUIConfirmationDialogSceneSettings.__allocating_init(settings:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithSettings_];

  return v3;
}

id DDUIConfirmationDialogSceneSettings.init(settings:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DDUIConfirmationDialogSceneSettings();
  v3 = objc_msgSendSuper2(&v5, sel_initWithSettings_, a1);

  return v3;
}

id DDUIConfirmationDialogSceneSettings.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DDUIConfirmationDialogSceneSettings.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DDUIConfirmationDialogSceneSettings();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_230F0CFA8(uint64_t a1)
{
  sub_230F39038();
  swift_allocObject();
  sub_230F39028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB81E48, &qword_230F3C080);
  sub_230F0D6C0();
  v3 = sub_230F39018();
  v5 = v4;
  sub_230F0D798(a1, &qword_27DB81E48, &qword_230F3C080);
  v6 = [v1 otherSettings];
  if (v5 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    sub_230F0D80C(v3, v5);
    v7 = sub_230F39058();
    sub_230F0D7F8(v3, v5);
  }

  [v6 setObject:v7 forSetting:18492851];

  swift_unknownObjectRelease();
  sub_230F0D7F8(v3, v5);
}

id sub_230F0D128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = objc_allocWithZone(a4(a1, a2, a3));

  return [v5 initWithSettings_];
}

id sub_230F0D188(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6.receiver = a1;
  v6.super_class = a4(a1, a2);
  return objc_msgSendSuper2(&v6, sel_initWithSettings_, a3);
}

id sub_230F0D1EC(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_230F0D248(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t variable initialization expression of DDUINoticeXPCService.continuation@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB81E20, &qword_230F3C860);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id variable initialization expression of NameDropIdentity.nicknameProvider()
{
  v0 = objc_allocWithZone(MEMORY[0x277D18DB0]);

  return [v0 init];
}

uint64_t variable initialization expression of DDUIPermissionClient.queue()
{
  v0 = sub_230F39808();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_230F397F8();
  MEMORY[0x28223BE20](v4);
  v5 = sub_230F39578();
  MEMORY[0x28223BE20](v5 - 8);
  sub_230F0D5C8();
  sub_230F39568();
  v7[1] = MEMORY[0x277D84F90];
  sub_230F0DD1C(&qword_27DB81E30, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB81E38, &qword_230F3BFF0);
  sub_230F0D614();
  sub_230F39898();
  (*(v1 + 104))(v3, *MEMORY[0x277D85268], v0);
  return sub_230F39828();
}

unint64_t sub_230F0D5C8()
{
  result = qword_27DB822C0;
  if (!qword_27DB822C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DB822C0);
  }

  return result;
}

unint64_t sub_230F0D614()
{
  result = qword_27DB81E40;
  if (!qword_27DB81E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB81E38, &qword_230F3BFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB81E40);
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

unint64_t sub_230F0D6C0()
{
  result = qword_27DB81E50;
  if (!qword_27DB81E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB81E48, &qword_230F3C080);
    sub_230F0D744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB81E50);
  }

  return result;
}

unint64_t sub_230F0D744()
{
  result = qword_27DB81E58;
  if (!qword_27DB81E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB81E58);
  }

  return result;
}

uint64_t sub_230F0D798(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_230F0D7F8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_230F0CD64(result, a2);
  }

  return result;
}

void sub_230F0D80C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_230F0D868(uint64_t a1, id *a2)
{
  result = sub_230F395E8();
  *a2 = 0;
  return result;
}

uint64_t sub_230F0D8E0(uint64_t a1, id *a2)
{
  v3 = sub_230F395F8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_230F0D960@<X0>(uint64_t *a1@<X8>)
{
  sub_230F39608();
  v2 = sub_230F395D8();

  *a1 = v2;
  return result;
}

uint64_t sub_230F0D9A4()
{
  v0 = sub_230F39608();
  v1 = MEMORY[0x23191FB90](v0);

  return v1;
}

uint64_t sub_230F0D9E0(uint64_t a1)
{
  sub_230F39608();
  sub_230F39638();
}

uint64_t sub_230F0DA34(uint64_t a1)
{
  sub_230F39608();
  sub_230F39BA8();
  sub_230F39638();
  v1 = sub_230F39BC8();

  return v1;
}

uint64_t sub_230F0DAA8(void *a1, uint64_t *a2)
{
  v2 = sub_230F39608();
  v4 = v3;
  if (v2 == sub_230F39608() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_230F39B28();
  }

  return v7 & 1;
}

uint64_t sub_230F0DB30@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_230F395D8();

  *a2 = v3;
  return result;
}

uint64_t sub_230F0DB78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_230F39608();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_230F0DBCC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_230F0DC18(uint64_t a1)
{
  v2 = sub_230F0DD1C(&qword_27DB81EE8, type metadata accessor for LaunchOptionsKey, &unk_230F3C1E4);
  v3 = sub_230F0DD1C(&unk_27DB81EF0, type metadata accessor for LaunchOptionsKey, &unk_230F3C184);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_230F0DD1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_230F0DDF4()
{
  v0 = sub_230F391F8();
  __swift_allocate_value_buffer(v0, qword_27DB82080);
  __swift_project_value_buffer(v0, qword_27DB82080);
  return sub_230F391E8();
}

uint64_t DDUIAppSettingsManager.Setting.description.getter(char a1)
{
  if (a1)
  {
    return 0x64656C6261736964;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_230F0DEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_230F39B28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656C6261736964 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230F39B28();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_230F0DF8C(uint64_t a1)
{
  v2 = sub_230F0E410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230F0DFC8(uint64_t a1)
{
  v2 = sub_230F0E410();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230F0E010(uint64_t a1)
{
  v2 = sub_230F0E464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230F0E04C(uint64_t a1)
{
  v2 = sub_230F0E464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230F0E088(uint64_t a1)
{
  v2 = sub_230F0E4B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230F0E0C4(uint64_t a1)
{
  v2 = sub_230F0E4B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DDUIAppSettingsManager.Setting.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82098, &qword_230F3C280);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB820A0, &qword_230F3C288);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB820A8, &qword_230F3C290);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230F0E410();
  sub_230F39BE8();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_230F0E464();
    sub_230F39AB8();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_230F0E4B8();
    sub_230F39AB8();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_230F0E410()
{
  result = qword_27DB820B0;
  if (!qword_27DB820B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB820B0);
  }

  return result;
}

unint64_t sub_230F0E464()
{
  result = qword_27DB820B8;
  if (!qword_27DB820B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB820B8);
  }

  return result;
}

unint64_t sub_230F0E4B8()
{
  result = qword_27DB820C0;
  if (!qword_27DB820C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB820C0);
  }

  return result;
}

uint64_t DDUIAppSettingsManager.Setting.hashValue.getter(char a1)
{
  sub_230F39BA8();
  MEMORY[0x2319200C0](a1 & 1);
  return sub_230F39BC8();
}

uint64_t sub_230F0E598()
{
  v1 = *v0;
  sub_230F39BA8();
  MEMORY[0x2319200C0](v1);
  return sub_230F39BC8();
}

uint64_t sub_230F0E5E0(uint64_t a1)
{
  v2 = *v1;
  sub_230F39BA8();
  MEMORY[0x2319200C0](v2);
  return sub_230F39BC8();
}

uint64_t sub_230F0E624@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_230F1039C(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t DDUIAppSettingsManager.__allocating_init()()
{
  v0 = swift_allocObject();
  DDUIAppSettingsManager.init()();
  return v0;
}

void *DDUIAppSettingsManager.init()()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v0[17] = MEMORY[0x277D84F98];
  v2 = v0 + 17;
  v0[14] = 0x7265507070414444;
  v0[15] = 0xEF6E6F697373696DLL;
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_230F395D8();
  v5 = [v3 initWithSuiteName_];

  v6 = v5;
  if (!v5)
  {
    if (qword_27DB81CF0 != -1)
    {
      swift_once();
    }

    v7 = sub_230F391F8();
    __swift_project_value_buffer(v7, qword_27DB82080);
    v8 = sub_230F391D8();
    v9 = sub_230F397B8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_230EF9000, v8, v9, "Failed to load UserDefaults for com.apple.DeviceDiscoveryUI", v10, 2u);
      MEMORY[0x231920D30](v10, -1, -1);
    }

    v6 = [objc_opt_self() standardUserDefaults];
  }

  v1[16] = v6;
  v11 = v6;

  v12 = sub_230F395D8();

  v13 = [v11 dataForKey_];

  if (v13)
  {
    v14 = sub_230F39068();
    v16 = v15;

    sub_230F39008();
    swift_allocObject();
    sub_230F38FF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB820C8, &qword_230F3C298);
    sub_230F10954(&qword_27DB820D0, sub_230F10890, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_230F38FE8();

    v25 = v38[0];
    if (qword_27DB81CF0 != -1)
    {
      swift_once();
    }

    v26 = sub_230F391F8();
    __swift_project_value_buffer(v26, qword_27DB82080);

    v27 = sub_230F391D8();
    v28 = sub_230F397D8();

    if (os_log_type_enabled(v27, v28))
    {
      v37 = v16;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38[0] = v30;
      *v29 = 136315138;
      v31 = sub_230F39598();
      v33 = sub_230F0F28C(v31, v32, v38);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_230EF9000, v27, v28, "Loaded settings: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x231920D30](v30, -1, -1);
      MEMORY[0x231920D30](v29, -1, -1);
      v34 = v14;
      v35 = v37;
    }

    else
    {
      v34 = v14;
      v35 = v16;
    }

    sub_230F0CD64(v34, v35);

    swift_beginAccess();
    *v2 = v25;
  }

  else
  {
    if (qword_27DB81CF0 != -1)
    {
      swift_once();
    }

    v17 = sub_230F391F8();
    __swift_project_value_buffer(v17, qword_27DB82080);

    v18 = sub_230F391D8();
    v19 = sub_230F397B8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38[0] = v21;
      *v20 = 136315138;
      v22 = v1[14];
      v23 = v1[15];

      v24 = sub_230F0F28C(v22, v23, v38);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_230EF9000, v18, v19, "No data found for %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x231920D30](v21, -1, -1);
      MEMORY[0x231920D30](v20, -1, -1);
    }
  }

  return v1;
}

void *DDUIAppSettingsManager.bundleIDs.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_230F0F208(*(v1 + 16), 0);
  v4 = sub_230F10244(&v7, v3 + 4, v2, v1);
  v5 = v7;

  sub_230F1094C(v5);
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

DeviceDiscoveryUICore::DDUIAppSettingsManager::Setting_optional __swiftcall DDUIAppSettingsManager.setting(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v1 + 136);
  if (*(v4 + 16))
  {

    v5 = sub_230F0F834(countAndFlagsBits, object);
    if (v6)
    {
      v7.value = *(*(v4 + 56) + v5);

      return v7;
    }
  }

  return 2;
}

Swift::Void __swiftcall DDUIAppSettingsManager.updateSetting(_:for:)(DeviceDiscoveryUICore::DDUIAppSettingsManager::Setting _, Swift::String a2)
{
  v3 = v2;
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v3 + 136);
  *(v3 + 136) = 0x8000000000000000;
  sub_230F100D8(_ & 1, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);
  *(v3 + 136) = v14;
  swift_endAccess();
  sub_230F39038();
  swift_allocObject();
  sub_230F39028();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB820C8, &qword_230F3C298);
  sub_230F10954(&qword_27DB820E8, sub_230F109D8, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  v8 = sub_230F39018();
  v10 = v9;

  v11 = *(v3 + 128);
  v12 = sub_230F39058();
  v13 = sub_230F395D8();
  [v11 setObject:v12 forKey:v13];

  sub_230F0CD64(v8, v10);
}

uint64_t DDUIAppSettingsManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DDUIAppSettingsManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_230F0F208(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB82720, &qword_230F3C688);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_230F0F28C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_230F0F358(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_230F10F9C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_230F0F358(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_230F0F464(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_230F399B8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_230F0F464(uint64_t a1, unint64_t a2)
{
  v3 = sub_230F0F4B0(a1, a2);
  sub_230F0F5E0(&unk_2845BDBB8);
  return v3;
}

void *sub_230F0F4B0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_230F0F6CC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_230F399B8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_230F39678();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_230F0F6CC(v10, 0);
        result = sub_230F39968();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_230F0F5E0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_230F0F740(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_230F0F6CC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82150, &qword_230F3C690);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_230F0F740(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82150, &qword_230F3C690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_230F0F834(uint64_t a1, uint64_t a2)
{
  sub_230F39BA8();
  sub_230F39638();
  v4 = sub_230F39BC8();

  return sub_230F0FA08(a1, a2, v4);
}

unint64_t sub_230F0F8AC(uint64_t a1)
{
  sub_230F39608();
  sub_230F39BA8();
  sub_230F39638();
  v2 = sub_230F39BC8();

  return sub_230F0FAC0(a1, v2);
}

unint64_t sub_230F0F940(uint64_t a1)
{
  v2 = sub_230F39908();

  return sub_230F0FBC4(a1, v2);
}

unint64_t sub_230F0F984(uint64_t a1)
{
  sub_230F390B8();
  sub_230F10EA4(&qword_27DB82138, MEMORY[0x277CC9600]);
  v2 = sub_230F395A8();

  return sub_230F0FC8C(a1, v2);
}

unint64_t sub_230F0FA08(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_230F39B28())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_230F0FAC0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_230F39608();
      v8 = v7;
      if (v6 == sub_230F39608() && v8 == v9)
      {
        break;
      }

      v11 = sub_230F39B28();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_230F0FBC4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_230F10EE8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23191FE20](v9, a1);
      sub_230F10F44(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_230F0FC8C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_230F390B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_230F10EA4(&qword_27DB82140, MEMORY[0x277CC9610]);
      v15 = sub_230F395C8();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_230F0FE38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82148, &qword_230F3C680);
  v34 = v4;
  result = sub_230F39A08();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_230F39BA8();
      sub_230F39638();
      result = sub_230F39BC8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_230F100D8(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_230F0F834(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_230F0FE38(v16, a4 & 1);
      result = sub_230F0F834(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_230F39B48();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_230F3411C();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void *sub_230F10244(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_230F1039C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82158, &qword_230F3C698);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82160, &qword_230F3C6A0);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82168, &qword_230F3C6A8);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230F0E410();
  v11 = v26;
  sub_230F39BD8();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_230F39AA8();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_230F1A0A8();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_230F399A8();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82170, &unk_230F3C6B0);
    *v19 = &type metadata for DDUIAppSettingsManager.Setting;
    sub_230F39A58();
    sub_230F39998();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_230F0E464();
    sub_230F39A48();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_230F0E4B8();
    sub_230F39A48();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  return v31 & 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_230F10890()
{
  result = qword_27DB820D8;
  if (!qword_27DB820D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB820D8);
  }

  return result;
}

uint64_t sub_230F108E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB820E0, &qword_230F3C2A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230F10954(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB820C8, &qword_230F3C298);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230F109D8()
{
  result = qword_27DB820F0;
  if (!qword_27DB820F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB820F0);
  }

  return result;
}

unint64_t sub_230F10A30()
{
  result = qword_27DB820F8;
  if (!qword_27DB820F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB820F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DDUIPermissionRequest.Kind.SameAccountCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DDUIPermissionRequest.Kind.SameAccountCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_230F10C40()
{
  result = qword_27DB82100;
  if (!qword_27DB82100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82100);
  }

  return result;
}

unint64_t sub_230F10C98()
{
  result = qword_27DB82108;
  if (!qword_27DB82108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82108);
  }

  return result;
}

unint64_t sub_230F10CF0()
{
  result = qword_27DB82110;
  if (!qword_27DB82110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82110);
  }

  return result;
}

unint64_t sub_230F10D48()
{
  result = qword_27DB82118;
  if (!qword_27DB82118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82118);
  }

  return result;
}

unint64_t sub_230F10DA0()
{
  result = qword_27DB82120;
  if (!qword_27DB82120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82120);
  }

  return result;
}

unint64_t sub_230F10DF8()
{
  result = qword_27DB82128;
  if (!qword_27DB82128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82128);
  }

  return result;
}

unint64_t sub_230F10E50()
{
  result = qword_27DB82130;
  if (!qword_27DB82130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82130);
  }

  return result;
}

uint64_t sub_230F10EA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_230F390B8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230F10F9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_230F110D4()
{
  v0 = sub_230F391F8();
  __swift_allocate_value_buffer(v0, qword_27DB82178);
  __swift_project_value_buffer(v0, qword_27DB82178);
  v1 = _DDUICoreLog();
  return sub_230F39208();
}

uint64_t sub_230F11160(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_230F39248();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_230F39238())
  {
    if (a2())
    {
      v8 = sub_230F39658();
      v10 = v9;
      swift_unknownObjectRelease();
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        return v8;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_27DB81CF8 != -1)
    {
      swift_once();
    }

    v13 = sub_230F391F8();
    __swift_project_value_buffer(v13, qword_27DB82178);
    (*(v5 + 16))(v7, a1, v4);
    v14 = sub_230F391D8();
    v15 = sub_230F397C8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      v18 = sub_230F39228();
      v20 = v19;
      (*(v5 + 8))(v7, v4);
      v21 = sub_230F0F28C(v18, v20, &v23);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_230EF9000, v14, v15, "Could not convert endpoint to nw_endpoint %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x231920D30](v17, -1, -1);
      MEMORY[0x231920D30](v16, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }

  return 0;
}

uint64_t sub_230F11404()
{
  v0 = sub_230F391F8();
  __swift_allocate_value_buffer(v0, qword_2814AF430);
  __swift_project_value_buffer(v0, qword_2814AF430);
  sub_230F39658();
  return sub_230F391E8();
}

uint64_t DDUIService.startServer()()
{
  v1[8] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB826F0, &qword_230F3DD10);
  v1[9] = swift_task_alloc();
  v2 = sub_230F39278();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230F11580, 0, 0);
}

uint64_t sub_230F11580()
{
  if (qword_2814AF420 != -1)
  {
    swift_once();
  }

  v1 = sub_230F391F8();
  __swift_project_value_buffer(v1, qword_2814AF430);
  v2 = sub_230F391D8();
  v3 = sub_230F397D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230EF9000, v2, v3, "Starting server for application service:com.apple.DDUI-Picker", v4, 2u);
    MEMORY[0x231920D30](v4, -1, -1);
  }

  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 72);
  v18 = *(v0 + 64);

  sub_230F39268();
  sub_230F392D8();
  sub_230F392B8();
  sub_230F39298();
  (*(v8 + 16))(v5, v6, v7);
  sub_230F39378();
  swift_allocObject();

  v10 = sub_230F39358();
  *(v0 + 16) = xmmword_230F3C6C0;
  type metadata accessor for DDUIServiceActor(0);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  swift_allocObject();

  v12 = sub_230F1E898(v11, (v0 + 16));
  v13 = sub_230F39748();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v10;
  v14[5] = v12;
  v15 = sub_230F11BEC(0, 0, v9, &unk_230F3C718, v14);

  (*(v8 + 8))(v6, v7);
  *(v18 + OBJC_IVAR____TtC21DeviceDiscoveryUICore11DDUIService_serverTask) = v15;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_230F1186C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 40) = v7;
  v8 = type metadata accessor for DDUIServiceActor(0);
  v9 = sub_230F18438(&qword_2814AF560, type metadata accessor for DDUIServiceActor, &protocol conformance descriptor for DDUIServiceActor);
  *v7 = v5;
  v7[1] = sub_230F11960;

  return MEMORY[0x282125BF8](a5, v8, v9);
}

uint64_t sub_230F11960()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_230F11A94, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_230F11A94()
{
  v1 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB822D8, &qword_230F3C848);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_230F3C6D0;
  sub_230F39978();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x23191FB50](0xD00000000000001FLL, 0x8000000230F40040);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB822C8, &unk_230F3C920);
  sub_230F399C8();
  v3 = v0[2];
  v4 = v0[3];
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_230F39B98();

  v5 = v0[1];

  return v5();
}

uint64_t sub_230F11BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB826F0, &qword_230F3DD10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_230F181C4(a3, v25 - v10);
  v12 = sub_230F39748();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_230F0D798(v11, &qword_27DB826F0, &qword_230F3DD10);
  }

  else
  {
    sub_230F39738();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_230F396F8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_230F39628() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_230F0D798(a3, &qword_27DB826F0, &qword_230F3DD10);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_230F0D798(a3, &qword_27DB826F0, &qword_230F3DD10);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_230F12050(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_230F120F8;

  return DDUIService.startServer()();
}

uint64_t sub_230F120F8()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t DDUIService.startNearFieldServer(localIdentity:listenerUUID:remotePublicKey:contactID:deviceModel:deviceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[23] = v15;
  v9[24] = v8;
  v9[21] = a8;
  v9[22] = v14;
  v9[19] = a6;
  v9[20] = a7;
  v9[17] = a4;
  v9[18] = a5;
  v9[15] = a2;
  v9[16] = a3;
  v9[14] = a1;
  v10 = sub_230F390B8();
  v9[25] = v10;
  v11 = *(v10 - 8);
  v9[26] = v11;
  v9[27] = *(v11 + 64);
  v9[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB826F0, &qword_230F3DD10);
  v9[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230F1234C, 0, 0);
}

uint64_t sub_230F1234C()
{
  v49 = v0;
  if (qword_2814AF420 != -1)
  {
    swift_once();
  }

  v1 = sub_230F391F8();
  __swift_project_value_buffer(v1, qword_2814AF430);

  v2 = sub_230F391D8();
  v3 = sub_230F397D8();

  if (os_log_type_enabled(v2, v3))
  {
    v41 = *(v0 + 176);
    v43 = *(v0 + 184);
    v37 = *(v0 + 160);
    v39 = *(v0 + 168);
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v6 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v48 = v45;
    *v6 = 136315650;
    *(v0 + 64) = v5;
    *(v0 + 72) = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB821A0, &qword_230F3E680);
    v7 = sub_230F39618();
    v9 = sub_230F0F28C(v7, v8, &v48);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v0 + 80) = v37;
    *(v0 + 88) = v39;

    v10 = sub_230F39618();
    v12 = sub_230F0F28C(v10, v11, &v48);

    *(v6 + 14) = v12;
    *(v6 + 22) = 2080;
    *(v0 + 96) = v41;
    *(v0 + 104) = v43;

    v13 = sub_230F39618();
    v15 = sub_230F0F28C(v13, v14, &v48);

    *(v6 + 24) = v15;
    _os_log_impl(&dword_230EF9000, v2, v3, "Starting server for NFC contactID: %s model: %s name: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x231920D30](v45, -1, -1);
    MEMORY[0x231920D30](v6, -1, -1);
  }

  v16 = *(v0 + 192);
  v17 = OBJC_IVAR____TtC21DeviceDiscoveryUICore11DDUIService_nearfieldServerTask;
  if (*(v16 + OBJC_IVAR____TtC21DeviceDiscoveryUICore11DDUIService_nearfieldServerTask))
  {

    sub_230F39758();

    *(v16 + v17) = 0;
  }

  v19 = *(v0 + 224);
  v18 = *(v0 + 232);
  v20 = *(v0 + 208);
  v21 = *(v0 + 200);
  v44 = v17;
  v46 = v16;
  v23 = *(v0 + 176);
  v22 = *(v0 + 184);
  v42 = *(v0 + 136);
  v38 = *(v0 + 216);
  v40 = *(v0 + 128);
  v24 = *(v0 + 112);
  v36 = *(v0 + 120);

  v47 = *(v0 + 144);
  v35 = *(v0 + 160);
  _s7Network12NWParametersC21DeviceDiscoveryUICoreE38applicationServiceQUICServerParameters8identityACSo07OS_sec_J0_pSg_tFZ_0(v24);
  sub_230F39298();
  sub_230F39378();
  swift_allocObject();

  v25 = sub_230F392F8();
  *(v0 + 32) = v35;
  *(v0 + 16) = v47;
  *(v0 + 48) = v23;
  *(v0 + 56) = v22;
  type metadata accessor for DDUIServiceActor(0);
  swift_allocObject();

  v27 = sub_230F1E898(v26, (v0 + 16));
  v28 = sub_230F39748();
  (*(*(v28 - 8) + 56))(v18, 1, 1, v28);
  (*(v20 + 16))(v19, v36, v21);
  v29 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = v25;
  *(v30 + 5) = v27;
  (*(v20 + 32))(&v30[v29], v19, v21);
  v31 = &v30[(v38 + v29 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v31 = v40;
  v31[1] = v42;
  sub_230F0D80C(v40, v42);
  v32 = sub_230F11BEC(0, 0, v18, &unk_230F3C730, v30);

  *(v46 + v44) = v32;

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_230F12824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a4;
  v8[3] = a6;
  v10 = sub_230F390B8();
  v8[6] = v10;
  v8[7] = *(v10 - 8);
  v8[8] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[9] = v11;
  v12 = type metadata accessor for DDUIServiceActor(0);
  v13 = sub_230F18438(&qword_2814AF560, type metadata accessor for DDUIServiceActor, &protocol conformance descriptor for DDUIServiceActor);
  *v11 = v8;
  v11[1] = sub_230F12978;

  return MEMORY[0x282125BE8](a5, v12, v13);
}

uint64_t sub_230F12978()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_230F13084;
  }

  else
  {
    v2 = sub_230F12A8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230F12A8C()
{
  v46 = v0;
  if (sub_230F39368())
  {
    v2 = v0[4];
    v1 = v0[5];
    sub_230F39258();

    sub_230F39078();
    v3 = sub_230F39628();

    bonjour_service = nw_endpoint_create_bonjour_service((v3 + 32), "_asquic._udp", "local");

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB821C0, &qword_230F3C750);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_230F3C6D0;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    sub_230F0D80C(v2, v1);
    v6 = sub_230F396B8();

    nw_endpoint_set_public_keys();

    v7 = MEMORY[0x231920450]();
    DDUIAddEndpointToArray(bonjour_service, v7);
    nw_listener_set_advertise_endpoints();
    if (qword_2814AF420 != -1)
    {
      swift_once();
    }

    v9 = v0[7];
    v8 = v0[8];
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[3];
    v13 = v0[4];
    v14 = sub_230F391F8();
    __swift_project_value_buffer(v14, qword_2814AF430);
    (*(v9 + 16))(v8, v12, v10);
    sub_230F0D80C(v13, v11);
    v15 = sub_230F391D8();
    v16 = sub_230F397D8();
    sub_230F0CD64(v13, v11);
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v45 = v23;
      *v21 = 136315394;
      sub_230F18438(&qword_27DB821D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      log = v15;
      v24 = sub_230F39B08();
      v26 = v25;
      (*(v19 + 8))(v18, v20);
      v27 = sub_230F0F28C(v24, v26, &v45);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2112;
      v28 = sub_230F39058();
      *(v21 + 14) = v28;
      *v22 = v28;
      _os_log_impl(&dword_230EF9000, log, v16, "did advertise boop endpoint: listenerUUID:%s, remotePublicKey:%@", v21, 0x16u);
      sub_230F0D798(v22, &qword_27DB820E0, &qword_230F3C2A0);
      MEMORY[0x231920D30](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x231920D30](v23, -1, -1);
      MEMORY[0x231920D30](v21, -1, -1);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      (*(v19 + 8))(v18, v20);
    }
  }

  else
  {
    if (qword_2814AF420 != -1)
    {
      swift_once();
    }

    v29 = sub_230F391F8();
    __swift_project_value_buffer(v29, qword_2814AF430);
    v30 = sub_230F391D8();
    v31 = sub_230F397B8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_230EF9000, v30, v31, "No listener available", v32, 2u);
      MEMORY[0x231920D30](v32, -1, -1);
    }

    sub_230F17B58();
    v33 = swift_allocError();
    *v34 = 5;
    swift_willThrow();
    if (qword_2814AF420 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v29, qword_2814AF430);
    v35 = v33;
    v36 = sub_230F391D8();
    v37 = sub_230F397B8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = v33;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_230EF9000, v36, v37, "Error publishing actor system: %@", v38, 0xCu);
      sub_230F0D798(v39, &qword_27DB820E0, &qword_230F3C2A0);
      MEMORY[0x231920D30](v39, -1, -1);
      MEMORY[0x231920D30](v38, -1, -1);
    }

    else
    {
    }
  }

  v42 = v0[1];

  return v42();
}

uint64_t sub_230F13084()
{
  v1 = *(v0 + 80);
  if (qword_2814AF420 != -1)
  {
    swift_once();
  }

  v2 = sub_230F391F8();
  __swift_project_value_buffer(v2, qword_2814AF430);
  v3 = v1;
  v4 = sub_230F391D8();
  v5 = sub_230F397B8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_230EF9000, v4, v5, "Error publishing actor system: %@", v6, 0xCu);
    sub_230F0D798(v7, &qword_27DB820E0, &qword_230F3C2A0);
    MEMORY[0x231920D30](v7, -1, -1);
    MEMORY[0x231920D30](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_230F133F8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, const void *a7, void *a8)
{
  v8[2] = a1;
  v8[3] = a8;
  v16 = sub_230F390B8();
  v8[4] = v16;
  v8[5] = *(v16 - 8);
  v17 = swift_task_alloc();
  v8[6] = v17;
  v8[7] = _Block_copy(a7);
  sub_230F39098();
  v30 = a6;
  v32 = a1;
  swift_unknownObjectRetain();
  v18 = a3;
  a8;
  v19 = a4;
  v20 = a5;
  v31 = sub_230F39068();
  v22 = v21;

  if (a4)
  {
    a4 = sub_230F39608();
    v24 = v23;

    v8[8] = v24;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = 0;
    v8[8] = 0;
    if (a5)
    {
LABEL_3:
      a5 = sub_230F39608();
      v26 = v25;

      v8[9] = v26;
      if (!a6)
      {
        goto LABEL_7;
      }

      goto LABEL_4;
    }
  }

  v26 = 0;
  v8[9] = 0;
  if (a6)
  {
LABEL_4:
    sub_230F39608();
    a6 = v27;
  }

LABEL_7:
  v8[10] = a6;
  v8[11] = v22;
  v8[12] = v31;
  v28 = swift_task_alloc();
  v8[13] = v28;
  *v28 = v8;
  v28[1] = sub_230F13630;

  return DDUIService.startNearFieldServer(localIdentity:listenerUUID:remotePublicKey:contactID:deviceModel:deviceName:)(v32, v17, v31, v22, a4, v24, a5, v26);
}

uint64_t sub_230F13630()
{
  v9 = *(*v0 + 96);
  v8 = *(*v0 + 88);
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v7 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v10 = *v0;

  sub_230F0CD64(v9, v8);

  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v7);
  v1[2](v1);
  _Block_release(v1);

  v5 = *(v10 + 8);

  return v5();
}

Swift::Void __swiftcall DDUIService.stopNearFieldServer()()
{
  v1 = v0;
  if (qword_2814AF420 != -1)
  {
    swift_once();
  }

  v2 = sub_230F391F8();
  __swift_project_value_buffer(v2, qword_2814AF430);
  v3 = sub_230F391D8();
  v4 = sub_230F397D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_230EF9000, v3, v4, "Stopping server for NFC", v5, 2u);
    MEMORY[0x231920D30](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC21DeviceDiscoveryUICore11DDUIService_nearfieldServerTask;
  if (*(v1 + OBJC_IVAR____TtC21DeviceDiscoveryUICore11DDUIService_nearfieldServerTask))
  {

    sub_230F39758();
  }

  *(v1 + v6) = 0;
}

uint64_t DDUIService.connectToBoop(endpoint:parameters:bundleID:serviceIdentifier:publicKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[40] = a7;
  v8[41] = a8;
  v8[38] = a5;
  v8[39] = a6;
  v8[36] = a3;
  v8[37] = a4;
  v8[34] = a1;
  v8[35] = a2;
  v8[42] = type metadata accessor for BoopConnectionResponse(0);
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230F13AC4, 0, 0);
}

uint64_t sub_230F13AC4()
{
  v37 = v0;
  if (qword_2814AF420 != -1)
  {
    swift_once();
  }

  v1 = sub_230F391F8();
  *(v0 + 360) = __swift_project_value_buffer(v1, qword_2814AF430);
  v2 = sub_230F391D8();
  v3 = sub_230F397D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230EF9000, v2, v3, "Attempting to create boop actor", v4, 2u);
    MEMORY[0x231920D30](v4, -1, -1);
  }

  type metadata accessor for DDUIServiceActor(0);
  sub_230F39378();
  sub_230F39338();
  sub_230F18438(&qword_2814AF568, type metadata accessor for DDUIServiceActor, &protocol conformance descriptor for DDUIServiceActor);
  *(v0 + 368) = sub_230F39128();

  sub_230F31C10();
  if (v6)
  {
    v8 = *(v0 + 320);
    v7 = *(v0 + 328);
    v9 = *(v0 + 304);
    v10 = *(v0 + 312);
    v11 = *(v0 + 296);
    *(v0 + 80) = *(v0 + 288);
    *(v0 + 88) = v11;
    *(v0 + 96) = v9;
    *(v0 + 104) = v10;
    *(v0 + 112) = v5;
    *(v0 + 120) = v6;
    *(v0 + 128) = v8;
    *(v0 + 136) = v7;
    v12 = *(v0 + 80);
    v13 = *(v0 + 96);
    v14 = *(v0 + 128);
    *(v0 + 48) = *(v0 + 112);
    *(v0 + 64) = v14;
    *(v0 + 16) = v12;
    *(v0 + 32) = v13;

    sub_230F0D80C(v8, v7);
    sub_230F17BAC(v0 + 80, v0 + 144);
    v15 = sub_230F391D8();
    v16 = sub_230F397D8();
    sub_230F17C08(v0 + 80);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v36 = v18;
      *v17 = 136315138;
      sub_230F17BAC(v0 + 80, v0 + 208);
      v19 = BoopLaunchRequest.description.getter();
      v21 = v20;
      sub_230F17C08(v0 + 80);
      v22 = sub_230F0F28C(v19, v21, &v36);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_230EF9000, v15, v16, "Sending request: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x231920D30](v18, -1, -1);
      MEMORY[0x231920D30](v17, -1, -1);
    }

    v23 = swift_task_alloc();
    *(v0 + 376) = v23;
    *v23 = v0;
    v23[1] = sub_230F14000;
    v24 = *(v0 + 352);

    return DDUIServiceActor.requestBoopApplicationListener(_:)(v24, v0 + 16);
  }

  else
  {
    sub_230F17B58();
    v26 = swift_allocError();
    *v27 = 3;
    swift_willThrow();
    v28 = v26;
    v29 = sub_230F391D8();
    v30 = sub_230F397B8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      v33 = v26;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_230EF9000, v29, v30, "error calling boopTest: %@", v31, 0xCu);
      sub_230F0D798(v32, &qword_27DB820E0, &qword_230F3C2A0);
      MEMORY[0x231920D30](v32, -1, -1);
      MEMORY[0x231920D30](v31, -1, -1);
    }

    else
    {
    }

    v35 = *(v0 + 8);

    return v35(0);
  }
}

uint64_t sub_230F14000()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_230F143B0;
  }

  else
  {
    v2 = sub_230F14114;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230F14114()
{
  v23 = v0;
  sub_230F17D50(v0[44], v0[43], type metadata accessor for BoopConnectionResponse);
  v1 = sub_230F391D8();
  v2 = sub_230F397D8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[43];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    v7 = BoopConnectionResponse.description.getter();
    v9 = v8;
    sub_230F17DB8(v4, type metadata accessor for BoopConnectionResponse);
    v10 = sub_230F0F28C(v7, v9, &v22);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_230EF9000, v1, v2, "Got response: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x231920D30](v6, -1, -1);
    MEMORY[0x231920D30](v5, -1, -1);
  }

  else
  {

    sub_230F17DB8(v4, type metadata accessor for BoopConnectionResponse);
  }

  v11 = v0[44];
  v12 = v0[42];
  sub_230F39078();
  v13 = sub_230F39628();

  bonjour_service = nw_endpoint_create_bonjour_service((v13 + 32), "_asquic._udp", "local");

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB821C0, &qword_230F3C750);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_230F3C6D0;
  v16 = (v11 + *(v12 + 20));
  v17 = *v16;
  v18 = v16[1];
  *(v15 + 32) = *v16;
  *(v15 + 40) = v18;
  sub_230F0D80C(v17, v18);
  v19 = sub_230F396B8();

  nw_endpoint_set_public_keys();

  sub_230F17C08((v0 + 10));
  sub_230F17DB8(v11, type metadata accessor for BoopConnectionResponse);

  v20 = v0[1];

  return v20(bonjour_service);
}

uint64_t sub_230F143B0()
{
  sub_230F17C08(v0 + 80);
  v1 = *(v0 + 384);
  v2 = v1;
  v3 = sub_230F391D8();
  v4 = sub_230F397B8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_230EF9000, v3, v4, "error calling boopTest: %@", v5, 0xCu);
    sub_230F0D798(v6, &qword_27DB820E0, &qword_230F3C2A0);
    MEMORY[0x231920D30](v6, -1, -1);
    MEMORY[0x231920D30](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9(0);
}

uint64_t DDUIService.connectTo(endpoint:bundleID:hostBundleID:serviceIdentifier:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[67] = v13;
  v8[66] = v12;
  v8[65] = a8;
  v8[63] = a6;
  v8[64] = a7;
  v8[61] = a4;
  v8[62] = a5;
  v8[59] = a2;
  v8[60] = a3;
  v8[58] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB821C8, qword_230F3C760);
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v9 = sub_230F390B8();
  v8[70] = v9;
  v8[71] = *(v9 - 8);
  v8[72] = swift_task_alloc();
  v8[73] = swift_task_alloc();
  type metadata accessor for TapLaunchResponse(0);
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230F146B4, 0, 0);
}

uint64_t sub_230F146B4()
{
  v69 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 496);
  v67 = *(v0 + 488);
  v68 = v3;

  MEMORY[0x23191FB50](46, 0xE100000000000000);
  MEMORY[0x23191FB50](v2, v1);
  v4 = v67;
  v5 = v68;
  *(v0 + 616) = v67;
  *(v0 + 624) = v5;
  if (qword_2814AF420 != -1)
  {
    swift_once();
  }

  v6 = sub_230F391F8();
  *(v0 + 632) = __swift_project_value_buffer(v6, qword_2814AF430);

  v7 = sub_230F391D8();
  v8 = sub_230F397D8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v67 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_230F0F28C(v4, v5, &v67);
    _os_log_impl(&dword_230EF9000, v7, v8, "Creating the actor for combinedServiceName: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x231920D30](v10, -1, -1);
    MEMORY[0x231920D30](v9, -1, -1);
  }

  type metadata accessor for DDUIServiceActor(0);
  sub_230F39378();
  sub_230F39338();
  sub_230F18438(&qword_2814AF568, type metadata accessor for DDUIServiceActor, &protocol conformance descriptor for DDUIServiceActor);
  *(v0 + 640) = sub_230F39128();

  v11 = IDSCopyLocalDeviceUniqueID();
  if (!v11)
  {

    sub_230F17B58();
    swift_allocError();
    v23 = 1;
LABEL_21:
    *v22 = v23;
    swift_willThrow();

    v58 = *(v0 + 8);

    return v58();
  }

  v12 = v11;
  v13 = sub_230F39608();
  v15 = v14;

  v16 = sub_230F391D8();
  v17 = sub_230F397D8();

  if (os_log_type_enabled(v16, v17))
  {
    v59 = *(v0 + 520);
    v61 = *(v0 + 528);
    v63 = *(v0 + 488);
    v65 = *(v0 + 496);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v67 = v19;
    *v18 = 136315650;
    v20 = sub_230F0F28C(v13, v15, &v67);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_230F0F28C(v59, v61, &v67);
    *(v18 + 22) = 2080;
    *(v18 + 24) = sub_230F0F28C(v63, v65, &v67);
    _os_log_impl(&dword_230EF9000, v16, v17, "Attempting to create mapping ID for %s with service %s bundleID: %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x231920D30](v19, -1, -1);
    MEMORY[0x231920D30](v18, -1, -1);

    v21 = *(v0 + 512);
    if (v21)
    {
LABEL_8:
      v51 = sub_230F1AC58(*(v0 + 504), v21);
      v53 = v52;
      v54 = *(v0 + 496);

      v55 = *(v0 + 488);
      sub_230F31C10();
      if (!v57)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }
  }

  else
  {

    v21 = *(v0 + 512);
    if (v21)
    {
      goto LABEL_8;
    }
  }

  v55 = 0;
  v54 = 0;
  v51 = 0;
  v53 = 0;
  sub_230F31C10();
  if (!v57)
  {
LABEL_20:
    sub_230F17C5C(v55, v54, v51, v53);

    sub_230F17B58();
    swift_allocError();
    v23 = 3;
    goto LABEL_21;
  }

LABEL_12:
  v24 = v57;
  v64 = v53;
  v66 = v55;
  v25 = v56;

  v26 = sub_230F391D8();
  v27 = sub_230F397A8();

  if (os_log_type_enabled(v26, v27))
  {
    v62 = v51;
    v28 = swift_slowAlloc();
    v60 = v54;
    v29 = swift_slowAlloc();
    v67 = v29;
    *v28 = 136315138;

    v30 = sub_230F0F28C(v25, v24, &v67);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_230EF9000, v26, v27, "Got deviceName %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    v31 = v29;
    v54 = v60;
    MEMORY[0x231920D30](v31, -1, -1);
    v32 = v28;
    v51 = v62;
    MEMORY[0x231920D30](v32, -1, -1);
  }

  v33 = *(v0 + 528);
  v34 = *(v0 + 520);
  v35 = *(v0 + 496);
  *(v0 + 160) = *(v0 + 488);
  *(v0 + 168) = v35;
  *(v0 + 176) = v34;
  *(v0 + 184) = v33;
  *(v0 + 192) = v66;
  *(v0 + 200) = v54;
  *(v0 + 208) = v51;
  *(v0 + 216) = v64;
  *(v0 + 224) = v25;
  *(v0 + 232) = v24;
  v36 = *(v0 + 160);
  v37 = *(v0 + 176);
  v38 = *(v0 + 224);
  *(v0 + 128) = *(v0 + 208);
  *(v0 + 144) = v38;
  v39 = *(v0 + 192);
  *(v0 + 96) = v37;
  *(v0 + 112) = v39;
  *(v0 + 80) = v36;

  sub_230F17CA0(v0 + 160, v0 + 240);
  v40 = sub_230F391D8();
  v41 = sub_230F397D8();
  sub_230F17CFC(v0 + 160);
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v67 = v43;
    *v42 = 136315138;
    sub_230F17CA0(v0 + 160, v0 + 320);
    v44 = TapLaunchRequest.description.getter();
    v46 = v45;
    sub_230F17CFC(v0 + 160);
    v47 = sub_230F0F28C(v44, v46, &v67);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_230EF9000, v40, v41, "Sending request: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    MEMORY[0x231920D30](v43, -1, -1);
    MEMORY[0x231920D30](v42, -1, -1);
  }

  v48 = swift_task_alloc();
  *(v0 + 648) = v48;
  *v48 = v0;
  v48[1] = sub_230F14EAC;
  v49 = *(v0 + 608);

  return DDUIServiceActor.requestApplicationListener(_:)(v49, v0 + 80);
}

uint64_t sub_230F14EAC()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {

    sub_230F17CFC(v2 + 160);
    v3 = sub_230F15DB8;
  }

  else
  {
    sub_230F17CFC(v2 + 160);
    v3 = sub_230F14FD8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230F14FD8()
{
  v60 = v0;
  sub_230F17D50(v0[76], v0[75], type metadata accessor for TapLaunchResponse);
  v1 = sub_230F391D8();
  v2 = sub_230F397D8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[75];
  if (v3)
  {
    v5 = v0[74];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v58 = v7;
    *v6 = 136315138;
    sub_230F17D50(v4, v5, type metadata accessor for TapLaunchResponse);
    sub_230F39978();

    v59[0] = 0xD00000000000001ELL;
    v59[1] = 0x8000000230F3FDC0;
    sub_230F18438(&qword_27DB821D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v8 = sub_230F39B08();
    MEMORY[0x23191FB50](v8);

    MEMORY[0x23191FB50](41, 0xE100000000000000);
    sub_230F17DB8(v5, type metadata accessor for TapLaunchResponse);
    sub_230F17DB8(v4, type metadata accessor for TapLaunchResponse);
    v9 = sub_230F0F28C(0xD00000000000001ELL, 0x8000000230F3FDC0, &v58);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_230EF9000, v1, v2, "Got response: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x231920D30](v7, -1, -1);
    MEMORY[0x231920D30](v6, -1, -1);
  }

  else
  {

    sub_230F17DB8(v4, type metadata accessor for TapLaunchResponse);
  }

  v10 = v0[76];
  v11 = v0[71];
  v12 = v0[70];
  v13 = v0[58];
  v14 = *(v11 + 16);
  v0[83] = v14;
  v0[84] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v13, v10, v12);
  v15 = sub_230F39238();
  v0[85] = v15;
  if (!v15)
  {
    goto LABEL_12;
  }

  if (!nw_endpoint_get_device_id())
  {
    swift_unknownObjectRelease();
LABEL_12:
    v35 = v0[76];
    v36 = v0[71];
    v37 = v0[70];
    v38 = v0[58];

    sub_230F17B58();
    swift_allocError();
    *v39 = 1;
    swift_willThrow();

    (*(v36 + 8))(v38, v37);
    goto LABEL_13;
  }

  v16 = sub_230F39658();
  v18 = v17;
  v0[86] = v16;
  v0[87] = v17;
  v19 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = v16;
    v14(v0[73], v0[58], v0[70]);

    v21 = sub_230F391D8();
    v22 = sub_230F397D8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v0[78];
      v56 = v22;
      v24 = v0[77];
      v25 = v0[73];
      v26 = v0[71];
      log = v21;
      v27 = v0[70];
      v28 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v59[0] = v57;
      *v28 = 136315650;
      *(v28 + 4) = sub_230F0F28C(v24, v23, v59);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_230F0F28C(v20, v18, v59);
      *(v28 + 22) = 2080;
      sub_230F18438(&qword_27DB821D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v29 = v25;
      v30 = sub_230F39B08();
      v32 = v31;
      v33 = *(v26 + 8);
      v33(v29, v27);
      v34 = sub_230F0F28C(v30, v32, v59);

      *(v28 + 24) = v34;
      _os_log_impl(&dword_230EF9000, log, v56, "Creating endpoint with service name %s, remoteDeviceID %s and endpointID: %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x231920D30](v57, -1, -1);
      MEMORY[0x231920D30](v28, -1, -1);
    }

    else
    {
      v46 = v0[73];
      v47 = v0[71];
      v48 = v0[70];

      v33 = *(v47 + 8);
      v33(v46, v48);
    }

    v0[88] = v33;
    v49 = v0[69];
    v50 = [objc_allocWithZone(MEMORY[0x277D44150]) init];
    v0[89] = v50;
    v51 = sub_230F395D8();
    v0[90] = v51;
    v52 = sub_230F395D8();
    v0[91] = v52;
    v53 = sub_230F39088();
    v0[92] = v53;
    v0[2] = v0;
    v0[7] = v49;
    v0[3] = sub_230F1577C;
    v54 = swift_continuation_init();
    v0[57] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB821D0, &qword_230F3CAC0);
    v0[50] = MEMORY[0x277D85DD0];
    v0[51] = 1107296256;
    v0[52] = sub_230F160D4;
    v0[53] = &block_descriptor;
    v0[54] = v54;
    [v50 createEndpointToDeviceMapping:v51 deviceID:v52 endpointID:v53 completion:v0 + 50];

    return MEMORY[0x282200938](v0 + 2);
  }

  v35 = v0[76];
  v42 = v0[71];
  v43 = v0[70];
  v44 = v0[58];

  sub_230F17B58();
  swift_allocError();
  *v45 = 1;
  swift_willThrow();
  swift_unknownObjectRelease();

  (*(v42 + 8))(v44, v43);
LABEL_13:
  sub_230F17DB8(v35, type metadata accessor for TapLaunchResponse);

  v40 = v0[1];

  return v40();
}

uint64_t sub_230F1577C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 744) = v1;
  if (v1)
  {

    v2 = sub_230F15E84;
  }

  else
  {
    v2 = sub_230F158A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230F158A0()
{
  v47 = v0;
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[68];
  sub_230F17E30(v0[69], v3);
  v4 = (*(v1 + 48))(v3, 1, v2);
  v5 = v0[92];
  v43 = v0[91];
  v45 = v0[90];
  v6 = v0[89];
  if (v4 == 1)
  {
    v7 = v0[83];
    v8 = v0[72];
    v9 = v0[70];
    v10 = v0[58];
    sub_230F0D798(v0[68], &qword_27DB821C8, qword_230F3C760);

    v7(v8, v10, v9);

    v11 = sub_230F391D8();
    v12 = sub_230F397B8();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[88];
    v15 = v0[87];
    if (v13)
    {
      v42 = v0[86];
      v16 = v0[78];
      v17 = v0[77];
      v18 = v0[72];
      v19 = v0[70];
      v20 = swift_slowAlloc();
      v44 = v14;
      v21 = swift_slowAlloc();
      v46[0] = v21;
      *v20 = 136315650;
      v22 = sub_230F0F28C(v17, v16, v46);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      v23 = sub_230F0F28C(v42, v15, v46);

      *(v20 + 14) = v23;
      *(v20 + 22) = 2080;
      sub_230F18438(&qword_27DB821D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v24 = sub_230F39B08();
      v26 = v25;
      v44(v18, v19);
      v27 = sub_230F0F28C(v24, v26, v46);

      *(v20 + 24) = v27;
      _os_log_impl(&dword_230EF9000, v11, v12, "Got a nil agentUUID while trying to create the mapping from %s to %s with %s.", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x231920D30](v21, -1, -1);
      MEMORY[0x231920D30](v20, -1, -1);
    }

    else
    {
      v32 = v0[72];
      v33 = v0[70];

      v14(v32, v33);
    }

    v34 = v0[88];
    v35 = v0[76];
    v36 = v0[70];
    v37 = v0[58];
    sub_230F17B58();
    swift_allocError();
    *v38 = 4;
    swift_willThrow();
    swift_unknownObjectRelease();

    v34(v37, v36);
    sub_230F17DB8(v35, type metadata accessor for TapLaunchResponse);

    v31 = v0[1];
  }

  else
  {
    v28 = v0[71];
    v40 = v0[70];
    v41 = v0[92];
    v29 = v0[68];
    v30 = v0[59];
    sub_230F17DB8(v0[76], type metadata accessor for TapLaunchResponse);
    swift_unknownObjectRelease();

    (*(v28 + 32))(v30, v29, v40);

    v31 = v0[1];
  }

  return v31();
}

uint64_t sub_230F15DB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230F15E84(uint64_t a1)
{
  v9 = v1[92];
  v10 = v1[91];
  v11 = v1[90];
  v2 = v1[89];
  v3 = v1[88];
  v4 = v1[76];
  v5 = v1[70];
  v6 = v1[58];
  swift_willThrow();
  swift_unknownObjectRelease();

  v3(v6, v5);
  sub_230F17DB8(v4, type metadata accessor for TapLaunchResponse);

  v7 = v1[1];

  return v7();
}

void sub_230F15FEC()
{
  if (qword_2814AF420 != -1)
  {
    swift_once();
  }

  v0 = sub_230F391F8();
  __swift_project_value_buffer(v0, qword_2814AF430);
  oslog = sub_230F391D8();
  v1 = sub_230F397B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_230EF9000, oslog, v1, "DDUIListenerActor is no longer valid", v2, 2u);
    MEMORY[0x231920D30](v2, -1, -1);
  }
}

uint64_t sub_230F160D4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB821C8, qword_230F3C760);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB822C8, &unk_230F3C920);
    v13 = swift_allocError();
    *v14 = a3;
    v15 = a3;

    return MEMORY[0x282200958](v12, v13);
  }

  else
  {
    if (a2)
    {
      sub_230F39098();
      v16 = sub_230F390B8();
      (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
    }

    else
    {
      v17 = sub_230F390B8();
      (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    }

    sub_230F17E30(v9, v11);
    sub_230F17E30(v11, *(*(v12 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

id DDUIService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DDUIService.init()()
{
  *&v0[OBJC_IVAR____TtC21DeviceDiscoveryUICore11DDUIService_serverTask] = 0;
  *&v0[OBJC_IVAR____TtC21DeviceDiscoveryUICore11DDUIService_nearfieldServerTask] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DDUIService();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DDUIService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DDUIService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static NWParameters.applicationServiceQUICClientParameters(localOnly:identity:)(char a1, uint64_t a2)
{
  application_service_quic_using_identity = nw_parameters_create_application_service_quic_using_identity();
  if (application_service_quic_using_identity)
  {
    v4 = application_service_quic_using_identity;
    nw_parameters_set_prohibit_constrained(application_service_quic_using_identity, 1);
    swift_unknownObjectRetain();
    nw_parameters_set_source_application_by_bundle_id();
    nw_parameters_set_include_peer_to_peer(v4, 1);
    if (sub_230F168C0())
    {
      if ((a1 & 1) == 0)
      {
        nw_parameters_set_local_only(v4, 0);
      }
    }

    else
    {
      nw_parameters_set_required_interface_subtype();
      nw_parameters_set_multipath_service(v4, nw_multipath_service_disabled);
    }

    sub_230F39538();
    v5 = MEMORY[0x23191FA20]();
    v6 = sub_230F39508();

    if ((v6 & 1) == 0)
    {
      nw_parameters_set_prohibit_expensive(v4, 1);
      empty = xpc_array_create_empty();
      v8 = sub_230F39218();
      xpc_array_set_uint64(empty, v8, 2uLL);
      nw_parameters_set_prohibited_interface_types();
      swift_unknownObjectRelease();
    }

    v9 = xpc_array_create_empty();
    v10 = sub_230F39218();
    xpc_array_set_uint64(v9, v10, 0x3EAuLL);
    nw_parameters_set_preferred_interface_subtypes();
    v11 = xpc_array_create_empty();
    v12 = sub_230F39218();
    xpc_array_set_uint64(v11, v12, 0x3E9uLL);
    nw_parameters_set_prohibited_interface_subtypes();
    v29 = 0;
    v13 = nw_parameters_copy_default_protocol_stack(v4);
    v14 = swift_allocObject();
    *(v14 + 16) = &v29;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_230F17EC4;
    *(v15 + 24) = v14;
    v27 = sub_230F17F10;
    v28 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_230F16AFC;
    v26 = &block_descriptor_18;
    v16 = _Block_copy(&aBlock);

    nw_protocol_stack_iterate_application_protocols(v13, v16);
    _Block_release(v16);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      __break(1u);
    }

    else
    {
      if (v29 == 1)
      {
        v17 = xpc_array_create(0, 0);
        v18 = sub_230F39218();
        xpc_array_set_string(v17, v18, "com.apple.rapport.browse");
        v19 = xpc_array_create(0, 0);
        v20 = sub_230F39218();
        xpc_array_set_string(v19, v20, "RapportBrowseAgent");
        nw_parameters_set_preferred_netagent_classes();
        swift_unknownObjectRelease();
        swift_unknownObjectRetain();
        v21 = sub_230F392E8();
        sub_230F392A8();
        sub_230F392C8();
        nw_parameters_set_server_mode();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v21;
      }

      aBlock = 0;
      v24 = 0xE000000000000000;
      sub_230F39978();
      MEMORY[0x23191FB50](0xD00000000000003ALL, 0x8000000230F3FE90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82240, &unk_230F3C780);
      sub_230F399C8();
      MEMORY[0x23191FB50](0x74656D6172617020, 0xED0000203A737265);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB82248, &unk_230F3C790);
      sub_230F399C8();
    }
  }

  result = sub_230F399D8();
  __break(1u);
  return result;
}

uint64_t sub_230F168C0()
{
  v0 = sub_230F39438();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230F39538();
  v4 = MEMORY[0x23191FA20]();
  v5 = sub_230F394F8();

  sub_230F39418();
  LOBYTE(v4) = sub_230F393F8();
  v6 = *(v1 + 8);
  v6(v3, v0);
  if (v4 & 1) != 0 || (sub_230F39408(), v7 = sub_230F393F8(), v6(v3, v0), (v7))
  {
    v8 = 1;
  }

  else
  {
    sub_230F39428();
    v8 = sub_230F393F8();
    v6(v3, v0);
  }

  return v5 & v8 & (SFDeviceClassCodeGet() != 4);
}

uint64_t sub_230F16A30(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6(a2, a3, sub_230F18420, v8);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_230F16AFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_230F16B50(NSObject *a1, _BYTE *a2, uint64_t a3, uint64_t a4, void (*a5)(NSObject *, uint64_t))
{
  result = nw_protocol_options_is_quic(a1);
  if (result && (*a2 & 1) == 0)
  {
    v11 = nw_quic_copy_sec_protocol_options(a1);
    sub_230F183D8(0, &qword_27DB822B8, 0x277CBEBD0);
    v12 = MEMORY[0x23191FCF0]();
    v13 = sub_230F39528();

    if (v13)
    {
      sec_protocol_options_clear_tls_application_protocols();
    }

    sec_protocol_options_add_tls_application_protocol(v11, "h3");
    v17[4] = a3;
    v17[5] = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_230F16A30;
    v17[3] = a4;
    v14 = _Block_copy(v17);
    sub_230F183D8(0, &qword_27DB822C0, 0x277D85C78);
    v15 = sub_230F39818();
    sec_protocol_options_set_verify_block(v11, v14, v15);

    _Block_release(v14);
    sub_230F39538();
    v16 = MEMORY[0x23191FA20]();
    LODWORD(v14) = sub_230F394E8();

    nw_quic_set_idle_timeout(a1, v14);
    a5(a1, 1);
    result = swift_unknownObjectRelease();
    *a2 = 1;
  }

  return result;
}

uint64_t sub_230F16CE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_230F16DA0;

  return sub_230F1186C(a1, v4, v5, v7, v6);
}

uint64_t sub_230F16DA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_230F16E94(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_230F16F8C;

  return v6(a1);
}

uint64_t sub_230F16F8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_230F17084(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_230F18650;

  return v6();
}

uint64_t sub_230F1716C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_230F16DA0;

  return v7();
}

uint64_t sub_230F17254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB826F0, &qword_230F3DD10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_230F181C4(a3, v23 - v10);
  v12 = sub_230F39748();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_230F0D798(v11, &qword_27DB826F0, &qword_230F3DD10);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_230F39738();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_230F396F8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_230F39628() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_230F0D798(a3, &qword_27DB826F0, &qword_230F3DD10);

    return v21;
  }

LABEL_8:
  sub_230F0D798(a3, &qword_27DB826F0, &qword_230F3DD10);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_230F17540(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_230F18654;

  return v6(a1);
}

uint64_t _s7Network12NWParametersC21DeviceDiscoveryUICoreE38applicationServiceQUICServerParameters8identityACSo07OS_sec_J0_pSg_tFZ_0(uint64_t a1)
{
  application_service_quic_using_identity = nw_parameters_create_application_service_quic_using_identity();
  if (application_service_quic_using_identity)
  {
    v3 = application_service_quic_using_identity;
    nw_parameters_set_prohibit_constrained(application_service_quic_using_identity, 1);
    swift_unknownObjectRetain();
    nw_parameters_set_source_application_by_bundle_id();
    nw_parameters_set_include_peer_to_peer(v3, 1);
    nw_parameters_set_attach_protocol_listener();
    nw_parameters_set_server_mode();
    if (sub_230F168C0())
    {
      nw_parameters_set_local_only(v3, 0);
    }

    else
    {
      if (a1)
      {
        nw_parameters_set_required_interface_subtype();
      }

      nw_parameters_set_multipath_service(v3, nw_multipath_service_disabled);
    }

    sub_230F39538();
    v4 = MEMORY[0x23191FA20]();
    v5 = sub_230F39508();

    if ((v5 & 1) == 0)
    {
      nw_parameters_set_prohibit_expensive(v3, 1);
      empty = xpc_array_create_empty();
      v7 = sub_230F39218();
      xpc_array_set_uint64(empty, v7, 2uLL);
      nw_parameters_set_prohibited_interface_types();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    v20 = 0;
    v8 = nw_parameters_copy_default_protocol_stack(v3);
    v9 = swift_allocObject();
    *(v9 + 16) = &v20;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_230F18480;
    *(v10 + 24) = v9;
    v18 = sub_230F18664;
    v19 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_230F16AFC;
    v17 = &block_descriptor_82;
    v11 = _Block_copy(&aBlock);

    nw_protocol_stack_iterate_application_protocols(v8, v11);
    _Block_release(v11);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }

    else
    {
      if (v20 == 1)
      {
        sub_230F392D8();
        swift_unknownObjectRetain();
        v12 = sub_230F392E8();
        sub_230F392A8();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v12;
      }

      aBlock = 0;
      v15 = 0xE000000000000000;
      sub_230F39978();
      MEMORY[0x23191FB50](0xD00000000000003ALL, 0x8000000230F3FE90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82240, &unk_230F3C780);
      sub_230F399C8();
      MEMORY[0x23191FB50](0x74656D6172617020, 0xED0000203A737265);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB82248, &unk_230F3C790);
      sub_230F399C8();
    }
  }

  result = sub_230F399D8();
  __break(1u);
  return result;
}

uint64_t sub_230F17A10(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_230F390B8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_230F18650;

  return sub_230F12824(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

unint64_t sub_230F17B58()
{
  result = qword_27DB821B0;
  if (!qword_27DB821B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB821B0);
  }

  return result;
}

void sub_230F17C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_230F17D50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_230F17DB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_230F17E30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB821C8, qword_230F3C760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_230F17F50()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_230F18650;

  return sub_230F133F8(v2, v3, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_230F18038()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_230F18650;

  return sub_230F17084(v2, v3, v4);
}

uint64_t sub_230F180F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_230F18650;

  return sub_230F1716C(a1, v4, v5, v6);
}

uint64_t sub_230F181C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB826F0, &qword_230F3DD10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230F18234(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_230F18650;

  return sub_230F17540(a1, v4);
}

uint64_t sub_230F182EC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_230F18650;

  return sub_230F12050(v2, v3);
}

uint64_t objectdestroy_31Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_230F183D8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_230F18438(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_230F184CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_230F18650;

  return sub_230F16E94(a1, v4);
}

uint64_t sub_230F18584(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_230F16DA0;

  return sub_230F16E94(a1, v4);
}

uint64_t sub_230F18668()
{
  v0 = sub_230F391F8();
  __swift_allocate_value_buffer(v0, qword_27DB822E0);
  __swift_project_value_buffer(v0, qword_27DB822E0);
  return sub_230F391E8();
}

id DDUINoticeXPCService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *DDUINoticeXPCService.init()()
{
  v1 = OBJC_IVAR____TtC21DeviceDiscoveryUICore20DDUINoticeXPCService_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB81E20, &qword_230F3C860);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v4 = sub_230F395D8();
  v5 = [v3 initWithMachServiceName_];

  *&v0[OBJC_IVAR____TtC21DeviceDiscoveryUICore20DDUINoticeXPCService_listener] = v5;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for DDUINoticeXPCService(0);
  v6 = objc_msgSendSuper2(&v15, sel_init);
  v7 = OBJC_IVAR____TtC21DeviceDiscoveryUICore20DDUINoticeXPCService_listener;
  v8 = *&v6[OBJC_IVAR____TtC21DeviceDiscoveryUICore20DDUINoticeXPCService_listener];
  v9 = v6;
  [v8 setDelegate_];
  [*&v6[v7] resume];
  if (qword_27DB81D08 != -1)
  {
    swift_once();
  }

  v10 = sub_230F391F8();
  __swift_project_value_buffer(v10, qword_27DB822E0);
  v11 = sub_230F391D8();
  v12 = sub_230F397D8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_230EF9000, v11, v12, "created XPCListener, waiting for connections...", v13, 2u);
    MEMORY[0x231920D30](v13, -1, -1);
  }

  return v9;
}

uint64_t type metadata accessor for DDUINoticeXPCService(uint64_t a1)
{
  result = qword_27DB82390;
  if (!qword_27DB82390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230F189A0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_230F189E4(void *a1, const char *a2)
{
  if (qword_27DB81D08 != -1)
  {
    swift_once();
  }

  v4 = sub_230F391F8();
  __swift_project_value_buffer(v4, qword_27DB822E0);
  v5 = a1;
  oslog = sub_230F391D8();
  v6 = sub_230F397B8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v5;
    *v8 = v5;
    v9 = v5;
    _os_log_impl(&dword_230EF9000, oslog, v6, a2, v7, 0xCu);
    sub_230F0D798(v8, &qword_27DB820E0, &qword_230F3C2A0);
    MEMORY[0x231920D30](v8, -1, -1);
    MEMORY[0x231920D30](v7, -1, -1);
  }
}

Swift::Void __swiftcall DDUINoticeXPCService.userDidRespond(accepted:)(Swift::Bool accepted)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB81E20, &qword_230F3C860);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82310, &qword_230F3C868);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16[-v9];
  if (qword_27DB81D08 != -1)
  {
    swift_once();
  }

  v11 = sub_230F391F8();
  __swift_project_value_buffer(v11, qword_27DB822E0);
  v12 = sub_230F391D8();
  v13 = sub_230F397D8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = accepted;
    _os_log_impl(&dword_230EF9000, v12, v13, "userDidRespond was called, resuming, accepted: %{BOOL}d", v14, 8u);
    MEMORY[0x231920D30](v14, -1, -1);
  }

  v15 = OBJC_IVAR____TtC21DeviceDiscoveryUICore20DDUINoticeXPCService_continuation;
  swift_beginAccess();
  sub_230F19DD0(v2 + v15, v10);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_230F0D798(v10, &qword_27DB82310, &qword_230F3C868);
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_230F0D798(v10, &qword_27DB82310, &qword_230F3C868);
    v16[7] = accepted;
    sub_230F39708();
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_230F18EBC()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_230F18FB4;
  v4 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 5, 0, 0, 0xD000000000000015, 0x8000000230F400B0, sub_230F19E40, v2, v4);
}

uint64_t sub_230F18FB4()
{

  return MEMORY[0x2822009F8](sub_230F190CC, 0, 0);
}

uint64_t sub_230F190E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82310, &qword_230F3C868);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB81E20, &qword_230F3C860);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC21DeviceDiscoveryUICore20DDUINoticeXPCService_continuation;
  swift_beginAccess();
  sub_230F19FD8(v6, a2 + v9);
  return swift_endAccess();
}

id DDUINoticeXPCService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DDUINoticeXPCService(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DDUINoticeXPCClient.__allocating_init()()
{
  v0 = swift_allocObject();
  DDUINoticeXPCClient.init()();
  return v0;
}

uint64_t DDUINoticeXPCClient.init()()
{
  v1 = v0;
  *(v0 + 16) = 0;
  if (qword_27DB81D08 != -1)
  {
    swift_once();
  }

  v2 = sub_230F391F8();
  __swift_project_value_buffer(v2, qword_27DB822E0);
  v3 = sub_230F391D8();
  v4 = sub_230F397D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_230EF9000, v3, v4, "Creating DDUINoticeXPCClient", v5, 2u);
    MEMORY[0x231920D30](v5, -1, -1);
  }

  v6 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v7 = sub_230F395D8();
  v8 = [v6 initWithMachServiceName:v7 options:0];

  v9 = *(v0 + 16);
  *(v0 + 16) = v8;

  v10 = *(v0 + 16);
  if (v10)
  {
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 interfaceWithProtocol_];
    [v12 setRemoteObjectInterface_];

    v14 = *(v0 + 16);
    if (v14)
    {
      v35 = sub_230F19E48;
      v36 = v0;
      aBlock = MEMORY[0x277D85DD0];
      v32 = 1107296256;
      v33 = sub_230F189A0;
      v34 = &block_descriptor_0;
      v15 = _Block_copy(&aBlock);
      v16 = v14;

      [v16 setInvalidationHandler_];
      _Block_release(v15);

      v17 = *(v0 + 16);
      if (v17)
      {
        v35 = sub_230F19E84;
        v36 = v0;
        aBlock = MEMORY[0x277D85DD0];
        v32 = 1107296256;
        v33 = sub_230F189A0;
        v34 = &block_descriptor_4;
        v18 = _Block_copy(&aBlock);

        v19 = v17;

        [v19 setInterruptionHandler_];
        _Block_release(v18);

        v20 = *(v0 + 16);
        if (v20)
        {
          [v20 resume];
        }
      }
    }
  }

  v21 = sub_230F391D8();
  v22 = sub_230F397D8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 136315138;
    v30 = *(v1 + 16);
    aBlock = v24;
    v25 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82318, &unk_230F3C878);
    v26 = sub_230F39618();
    v28 = sub_230F0F28C(v26, v27, &aBlock);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_230EF9000, v21, v22, "XPC Connection established: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x231920D30](v24, -1, -1);
    MEMORY[0x231920D30](v23, -1, -1);
  }

  return v1;
}

void sub_230F196E8(uint64_t a1, const char *a2)
{
  if (qword_27DB81D08 != -1)
  {
    swift_once();
  }

  v4 = sub_230F391F8();
  __swift_project_value_buffer(v4, qword_27DB822E0);

  oslog = sub_230F391D8();
  v5 = sub_230F397B8();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = *(a1 + 16);
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&dword_230EF9000, oslog, v5, a2, v6, 0xCu);
    sub_230F0D798(v7, &qword_27DB820E0, &qword_230F3C2A0);
    MEMORY[0x231920D30](v7, -1, -1);
    MEMORY[0x231920D30](v6, -1, -1);
  }
}

Swift::Void __swiftcall DDUINoticeXPCClient.sendUserResponse(accepted:)(Swift::Bool accepted)
{
  if (qword_27DB81D08 != -1)
  {
    swift_once();
  }

  v3 = sub_230F391F8();
  __swift_project_value_buffer(v3, qword_27DB822E0);
  v4 = sub_230F391D8();
  v5 = sub_230F397D8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_230EF9000, v4, v5, "Attempting to send user response", v6, 2u);
    MEMORY[0x231920D30](v6, -1, -1);
  }

  v7 = *(v1 + 16);
  if (v7 && (v8 = [v7 remoteObjectProxy], sub_230F39888(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB82320, &qword_230F3C888), (swift_dynamicCast() & 1) != 0))
  {
    [v12 userDidRespondWithAccepted_];
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = sub_230F391D8();
    v10 = sub_230F397B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_230EF9000, v9, v10, "Failed to get proxy", v11, 2u);
      MEMORY[0x231920D30](v11, -1, -1);
    }
  }
}

uint64_t DDUINoticeXPCClient.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_230F19A84(void *a1)
{
  v2 = v1;
  if (qword_27DB81D08 != -1)
  {
    swift_once();
  }

  v4 = sub_230F391F8();
  __swift_project_value_buffer(v4, qword_27DB822E0);
  v5 = a1;
  v6 = sub_230F391D8();
  v7 = sub_230F397D8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    v10 = [v5 description];
    v11 = sub_230F39608();
    v13 = v12;

    v14 = sub_230F0F28C(v11, v13, &v23);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_230EF9000, v6, v7, "Got a new connection, %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x231920D30](v9, -1, -1);
    MEMORY[0x231920D30](v8, -1, -1);
  }

  v15 = [objc_opt_self() interfaceWithProtocol_];
  [v5 setExportedInterface_];

  [v5 setExportedObject_];
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  v27 = sub_230F1A048;
  v28 = v16;
  v23 = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_230F189A0;
  v26 = &block_descriptor_16;
  v17 = _Block_copy(&v23);
  v18 = v5;

  [v18 setInvalidationHandler_];
  _Block_release(v17);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v27 = sub_230F1A06C;
  v28 = v19;
  v23 = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_230F189A0;
  v26 = &block_descriptor_22;
  v20 = _Block_copy(&v23);
  v21 = v18;

  [v21 setInterruptionHandler_];
  _Block_release(v20);
  [v21 resume];
  return 1;
}

uint64_t sub_230F19DD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82310, &qword_230F3C868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_230F19EB0(uint64_t a1)
{
  sub_230F19F50(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_230F19F50(uint64_t a1)
{
  if (!qword_27DB823A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB81E20, &qword_230F3C860);
    v1 = sub_230F39868();
    if (!v2)
    {
      atomic_store(v1, &qword_27DB823A0);
    }
  }
}

uint64_t sub_230F19FD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82310, &qword_230F3C868);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_230F1A0A8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_230F1A0DC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DDUIServiceActor.requestBoopApplicationListener(_:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_230F39188();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB823C0, &qword_230F3C910);
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v6 = sub_230F393D8();
  v3[27] = v6;
  v3[28] = *(v6 - 8);
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230F1A298, 0, 0);
}

{
  v3[42] = a2;
  v3[43] = v2;
  v3[41] = a1;
  v3[44] = type metadata accessor for BoopConnectionResponse(0);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82488, &qword_230F3CA88);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v4 = sub_230F390B8();
  v3[54] = v4;
  v3[55] = *(v4 - 8);
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = type metadata accessor for DDUIPermissionRequest(0);
  v3[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82490, &qword_230F3CA90);
  v3[60] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230F1ECC4, v2, 0);
}

uint64_t sub_230F1A298()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0 + 152);
    sub_230F39318();
    v2 = *v1;
    v3 = v1[1];
    v4 = v1[3];
    *(v0 + 48) = v1[2];
    *(v0 + 64) = v4;
    *(v0 + 16) = v2;
    *(v0 + 32) = v3;
    sub_230F17BAC(v1, v0 + 80);
    sub_230F391A8();
    sub_230F20760();
    sub_230F207B4();
    sub_230F393A8();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB822C8, &unk_230F3C920);
    sub_230F393B8();
    v6 = type metadata accessor for BoopConnectionResponse(0);
    sub_230F20828(&qword_27DB823D8, type metadata accessor for BoopConnectionResponse, &protocol conformance descriptor for BoopConnectionResponse);
    sub_230F20828(&qword_27DB823E0, type metadata accessor for BoopConnectionResponse, &protocol conformance descriptor for BoopConnectionResponse);
    sub_230F393C8();
    sub_230F39398();
    sub_230F39198();
    v11 = swift_task_alloc();
    *(v0 + 240) = v11;
    v12 = type metadata accessor for DDUIServiceActor(0);
    sub_230F20828(&qword_2814AF568, type metadata accessor for DDUIServiceActor, &protocol conformance descriptor for DDUIServiceActor);
    *v11 = v0;
    v11[1] = sub_230F1A684;
    v13 = *(v0 + 232);
    v14 = *(v0 + 184);
    v15 = *(v0 + 160);
    v16 = *(v0 + 144);

    return MEMORY[0x282125BC0](v16, v15, v14, v13, v5, v6, v12, v5);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 256) = v7;
    *v7 = v0;
    v7[1] = sub_230F1A878;
    v8 = *(v0 + 152);
    v9 = *(v0 + 144);

    return DDUIServiceActor.requestBoopApplicationListener(_:)(v9, v8);
  }
}

uint64_t sub_230F1A684()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_230F1A9C8;
  }

  else
  {
    v2 = sub_230F1A798;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230F1A798()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  (*(v0[22] + 8))(v0[23], v0[21]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_230F1A878()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_230F1A9C8()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  (*(v0[22] + 8))(v0[23], v0[21]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_230F1AAA8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v3[2] = *a2;
  v3[3] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[4] = v6;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_230F39388();
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_230F27E50;

  return DDUIServiceActor.requestBoopApplicationListener(_:)(a3, v6);
}

uint64_t sub_230F1AC58(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v6 = sub_230F25278(a1, a2, 0);
  if (v2)
  {
  }

  else if (v6)
  {
    v14 = v6;
    v15 = [v6 localizedName];
    v16 = sub_230F39608();

    return v16;
  }

  if (qword_27DB81D10 != -1)
  {
    swift_once();
  }

  v7 = sub_230F391F8();
  __swift_project_value_buffer(v7, qword_27DB823A8);

  v8 = sub_230F391D8();
  v9 = sub_230F397B8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_230F0F28C(a1, a2, &v17);
    _os_log_impl(&dword_230EF9000, v8, v9, "Unable to get app name for bundle ID %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x231920D30](v11, -1, -1);
    MEMORY[0x231920D30](v10, -1, -1);
  }

  sub_230F17B58();
  swift_allocError();
  *v12 = 10;
  return swift_willThrow();
}

uint64_t DDUIServiceActor.requestApplicationListener(_:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_230F39188();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB823E8, &qword_230F3C9C8);
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  v6 = sub_230F393D8();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230F1AFE0, 0, 0);
}

{
  v3[63] = a2;
  v3[64] = v2;
  v3[62] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB821C8, qword_230F3C760);
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB824B0, &qword_230F3CAB0);
  v3[69] = swift_task_alloc();
  v4 = sub_230F390B8();
  v3[70] = v4;
  v3[71] = *(v4 - 8);
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = type metadata accessor for DDUIPermissionRequest(0);
  v3[78] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82490, &qword_230F3CA90);
  v3[79] = swift_task_alloc();
  v5 = sub_230F39248();
  v3[80] = v5;
  v3[81] = *(v5 - 8);
  v3[82] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230F21074, v2, 0);
}

uint64_t sub_230F1AFE0()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0 + 184);
    sub_230F39318();
    *(v0 + 16) = *v1;
    v2 = v1[1];
    v3 = v1[2];
    v4 = v1[4];
    *(v0 + 64) = v1[3];
    *(v0 + 80) = v4;
    *(v0 + 32) = v2;
    *(v0 + 48) = v3;
    sub_230F17CA0(v1, v0 + 96);
    sub_230F391A8();
    sub_230F23944();
    sub_230F23998();
    sub_230F393A8();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB822C8, &unk_230F3C920);
    sub_230F393B8();
    v6 = type metadata accessor for TapLaunchResponse(0);
    sub_230F20828(&qword_27DB82400, type metadata accessor for TapLaunchResponse, &protocol conformance descriptor for TapLaunchResponse);
    sub_230F20828(&qword_27DB82408, type metadata accessor for TapLaunchResponse, &protocol conformance descriptor for TapLaunchResponse);
    sub_230F393C8();
    sub_230F39398();
    sub_230F39198();
    v11 = swift_task_alloc();
    *(v0 + 272) = v11;
    v12 = type metadata accessor for DDUIServiceActor(0);
    sub_230F20828(&qword_2814AF568, type metadata accessor for DDUIServiceActor, &protocol conformance descriptor for DDUIServiceActor);
    *v11 = v0;
    v11[1] = sub_230F1B3D4;
    v13 = *(v0 + 264);
    v14 = *(v0 + 216);
    v15 = *(v0 + 192);
    v16 = *(v0 + 176);

    return MEMORY[0x282125BC0](v16, v15, v14, v13, v5, v6, v12, v5);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 288) = v7;
    *v7 = v0;
    v7[1] = sub_230F1B5C8;
    v8 = *(v0 + 184);
    v9 = *(v0 + 176);

    return DDUIServiceActor.requestApplicationListener(_:)(v9, v8);
  }
}

uint64_t sub_230F1B3D4()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_230F1B718;
  }

  else
  {
    v2 = sub_230F1B4E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230F1B4E8()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_230F1B5C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_230F1B718()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_230F1B7F8()
{
  v0 = sub_230F391F8();
  __swift_allocate_value_buffer(v0, qword_27DB823A8);
  __swift_project_value_buffer(v0, qword_27DB823A8);
  sub_230F39658();
  return sub_230F391E8();
}

uint64_t DDUIError.hashValue.getter(unsigned __int8 a1)
{
  sub_230F39BA8();
  MEMORY[0x2319200C0](a1);
  return sub_230F39BC8();
}

uint64_t BoopConnectionError.hashValue.getter()
{
  sub_230F39BA8();
  MEMORY[0x2319200C0](0);
  return sub_230F39BC8();
}

unint64_t TapLaunchResponse.description.getter()
{
  sub_230F39978();

  sub_230F390B8();
  sub_230F20828(&qword_27DB821D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_230F39B08();
  MEMORY[0x23191FB50](v0);

  MEMORY[0x23191FB50](41, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

uint64_t sub_230F1BA5C()
{
  sub_230F39BA8();
  MEMORY[0x2319200C0](0);
  return sub_230F39BC8();
}

uint64_t sub_230F1BAA0(uint64_t a1)
{
  sub_230F39BA8();
  MEMORY[0x2319200C0](0);
  return sub_230F39BC8();
}

uint64_t sub_230F1BAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E696F70646E65 && a2 == 0xEA00000000004449)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230F39B28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230F1BB8C(uint64_t a1)
{
  v2 = sub_230F23A44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230F1BBC8(uint64_t a1)
{
  v2 = sub_230F23A44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TapLaunchResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82410, &qword_230F3CA58);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230F23A44();
  sub_230F39BE8();
  sub_230F390B8();
  sub_230F20828(&qword_27DB82420, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_230F39AF8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t TapLaunchResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_230F390B8();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82428, &qword_230F3CA60);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TapLaunchResponse(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230F23A44();
  sub_230F39BD8();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_230F20828(&qword_27DB82430, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_230F39A98();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_230F2680C(v11, v13, type metadata accessor for TapLaunchResponse);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_230F1C030(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82410, &qword_230F3CA58);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230F23A44();
  sub_230F39BE8();
  sub_230F390B8();
  sub_230F20828(&qword_27DB82420, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_230F39AF8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_230F1C1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0x746163696C707061;
  }

  sub_230F39978();

  MEMORY[0x23191FB50](a1, a2);
  MEMORY[0x23191FB50](0x6D614E707061202CLL, 0xEB00000000203A65);
  MEMORY[0x23191FB50](a3, a4);
  MEMORY[0x23191FB50](41, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

uint64_t sub_230F1C2A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v19[0] = a4;
  v19[1] = a5;
  v22 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82558, &qword_230F3D6D8);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82560, &qword_230F3D6E0);
  v23 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82568, &qword_230F3D6E8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230F2791C();
  v16 = v24;
  sub_230F39BE8();
  if (v16)
  {
    v28 = 0;
    sub_230F279C4();
    sub_230F39AB8();
    v27 = 0;
    v17 = v25;
    sub_230F39AD8();
    if (!v17)
    {
      v26 = 1;
      sub_230F39AD8();
    }

    (*(v23 + 8))(v11, v9);
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v29 = 1;
    sub_230F27970();
    sub_230F39AB8();
    (*(v20 + 8))(v8, v21);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_230F1C5E0(uint64_t a1)
{
  v2 = sub_230F27970();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230F1C61C(uint64_t a1)
{
  v2 = sub_230F27970();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230F1C658()
{
  if (*v0)
  {
    return 0x746163696C707061;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_230F1C6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000230F403D0 == a2 || (sub_230F39B28() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746163696C707061 && a2 == 0xEB000000006E6F69)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_230F39B28();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_230F1C78C(uint64_t a1)
{
  v2 = sub_230F2791C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230F1C7C8(uint64_t a1)
{
  v2 = sub_230F2791C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230F1C804()
{
  if (*v0)
  {
    return 0x656D614E707061;
  }

  else
  {
    return 0x6C646E7542707061;
  }
}

uint64_t sub_230F1C848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000444965;
  if (v6 || (sub_230F39B28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230F39B28();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_230F1C928(uint64_t a1)
{
  v2 = sub_230F279C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230F1C964(uint64_t a1)
{
  v2 = sub_230F279C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230F1C9A0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_230F2558C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_230F1C9FC()
{
  if (v0[5])
  {
    v2 = v0[6];
  }

  else
  {
    v3 = *v0;
    v4 = v0[1];
    v5 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v6 = sub_230F25278(v3, v4, 0);
    if (v1)
    {
    }

    else if (v6)
    {
      v8 = v6;
      v9 = [v6 localizedName];
      v2 = sub_230F39608();

      return v2;
    }

    sub_230F17B58();
    v2 = swift_allocError();
    *v7 = 10;
    swift_willThrow();
  }

  return v2;
}

uint64_t TapLaunchRequest.description.getter()
{
  v1 = v0;
  sub_230F39978();
  MEMORY[0x23191FB50](0xD00000000000001BLL, 0x8000000230F401A0);
  MEMORY[0x23191FB50](*v1, v1[1]);
  MEMORY[0x23191FB50](0xD000000000000015, 0x8000000230F401C0);
  MEMORY[0x23191FB50](v1[2], v1[3]);
  MEMORY[0x23191FB50](0x203A646E696B202CLL, 0xE800000000000000);
  v2 = sub_230F1C1AC(v1[4], v1[5], v1[6], v1[7]);
  MEMORY[0x23191FB50](v2);

  MEMORY[0x23191FB50](0x656369766564202CLL, 0xEE00203A656D614ELL);
  MEMORY[0x23191FB50](v1[8], v1[9]);
  MEMORY[0x23191FB50](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_230F1CC2C()
{
  v1 = 0x4449656C646E7562;
  v2 = 1684957547;
  if (*v0 != 2)
  {
    v2 = 0x614E656369766564;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_230F1CCA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230F25AC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230F1CCD0(uint64_t a1)
{
  v2 = sub_230F23A98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230F1CD0C(uint64_t a1)
{
  v2 = sub_230F23A98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TapLaunchRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82438, &qword_230F3CA68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230F23A98();
  sub_230F39BE8();
  LOBYTE(v12) = 0;
  sub_230F39AD8();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_230F39AD8();
    v10 = *(v3 + 48);
    v12 = *(v3 + 32);
    v13 = v10;
    v11[15] = 2;
    sub_230F23AEC();
    sub_230F39AF8();
    LOBYTE(v12) = 3;
    sub_230F39AD8();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 TapLaunchRequest.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_230F25C3C(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

__n128 sub_230F1CF94@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_230F25C3C(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t BoopLaunchRequest.description.getter()
{
  v1 = v0;
  sub_230F39978();
  MEMORY[0x23191FB50](0xD00000000000001CLL, 0x8000000230F401E0);
  MEMORY[0x23191FB50](*v1, v1[1]);
  MEMORY[0x23191FB50](0xD000000000000015, 0x8000000230F401C0);
  MEMORY[0x23191FB50](v1[2], v1[3]);
  MEMORY[0x23191FB50](0x656369766564202CLL, 0xEE00203A656D614ELL);
  MEMORY[0x23191FB50](v1[4], v1[5]);
  result = MEMORY[0x23191FB50](0xD000000000000019, 0x8000000230F40200);
  v3 = v0[6];
  v4 = v0[7] >> 62;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = v3 + 16;
    v3 = *(v3 + 16);
    if (!__OFSUB__(*(v5 + 8), v3))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v4)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(v3), v3))
  {
LABEL_9:
    v6 = sub_230F39B08();
    MEMORY[0x23191FB50](v6);

    MEMORY[0x23191FB50](10537, 0xE200000000000000);
    return 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_230F1D184()
{
  v1 = 0x4449656C646E7562;
  v2 = 0x614E656369766564;
  if (*v0 != 2)
  {
    v2 = 0x654B63696C627570;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_230F1D20C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230F260F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230F1D234(uint64_t a1)
{
  v2 = sub_230F25FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230F1D270(uint64_t a1)
{
  v2 = sub_230F25FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BoopLaunchRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82450, &qword_230F3CA70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230F25FEC();
  sub_230F39BE8();
  LOBYTE(v12) = 0;
  sub_230F39AD8();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_230F39AD8();
    LOBYTE(v12) = 2;
    sub_230F39AD8();
    v12 = *(v3 + 48);
    v13 = v12;
    v11[23] = 3;
    sub_230F26040(&v13, v11);
    sub_230F2609C();
    sub_230F39AF8();
    sub_230F0CD64(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

double BoopLaunchRequest.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_230F2626C(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

double sub_230F1D508@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_230F2626C(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t BoopConnectionResponse.description.getter()
{
  sub_230F39978();
  MEMORY[0x23191FB50](0xD000000000000024, 0x8000000230F40220);
  sub_230F390B8();
  sub_230F20828(&qword_27DB821D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v1 = sub_230F39B08();
  MEMORY[0x23191FB50](v1);

  MEMORY[0x23191FB50](0xD000000000000019, 0x8000000230F40200);
  result = type metadata accessor for BoopConnectionResponse(0);
  v3 = (v0 + *(result + 20));
  v4 = *v3;
  v5 = v3[1] >> 62;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_9;
    }

    v6 = v4 + 16;
    v4 = *(v4 + 16);
    if (!__OFSUB__(*(v6 + 8), v4))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v5)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(v4), v4))
  {
LABEL_9:
    v7 = sub_230F39B08();
    MEMORY[0x23191FB50](v7);

    MEMORY[0x23191FB50](10537, 0xE200000000000000);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_230F1D6FC()
{
  if (*v0)
  {
    return 0x654B63696C627570;
  }

  else
  {
    return 0x4E65636976726573;
  }
}

uint64_t sub_230F1D744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61;
  if (v6 || (sub_230F39B28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230F39B28();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_230F1D82C(uint64_t a1)
{
  v2 = sub_230F265A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230F1D868(uint64_t a1)
{
  v2 = sub_230F265A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BoopConnectionResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82468, &qword_230F3CA78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230F265A4();
  sub_230F39BE8();
  LOBYTE(v13) = 0;
  sub_230F390B8();
  sub_230F20828(&qword_27DB82420, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_230F39AF8();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for BoopConnectionResponse(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_230F0D80C(v13, v10);
    sub_230F2609C();
    sub_230F39AF8();
    sub_230F0CD64(v13, v14);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t BoopConnectionResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_230F390B8();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82478, &qword_230F3CA80);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for BoopConnectionResponse(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230F265A4();
  sub_230F39BD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  LOBYTE(v28) = 0;
  sub_230F20828(&qword_27DB82430, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v15 = v27;
  v16 = v25;
  sub_230F39A98();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  v29 = 1;
  sub_230F265F8();
  sub_230F39A98();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v28;
  sub_230F2664C(v18, v23);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_230F26780(v18, type metadata accessor for BoopConnectionResponse);
}

uint64_t sub_230F1DE2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_230F1DE4C, 0, 0);
}

uint64_t sub_230F1DE4C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D44150]) init];
  v0[21] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_230F1DF88;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB825B0, &qword_230F3D710);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_230F1E5A8;
  v0[13] = &block_descriptor_93;
  v0[14] = v2;
  [v1 getIdentitiesWithFlags:16682 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_230F1DF88()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_230F1E3DC;
  }

  else
  {
    v2 = sub_230F1E098;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230F1E098()
{
  v29 = v0;
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
LABEL_23:
    v2 = sub_230F398D8();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v17 = *(v0 + 168);

    if (qword_27DB81D10 != -1)
    {
      swift_once();
    }

    v18 = sub_230F391F8();
    __swift_project_value_buffer(v18, qword_27DB823A8);

    v19 = sub_230F391D8();
    v20 = sub_230F397B8();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = *(v0 + 152);
      v21 = *(v0 + 160);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_230F0F28C(v22, v21, &v28);
      _os_log_impl(&dword_230EF9000, v19, v20, "Unable to obtain remote identity for device %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x231920D30](v24, -1, -1);
      MEMORY[0x231920D30](v23, -1, -1);
    }

    sub_230F17B58();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();
    v26 = *(v0 + 8);

    return v26();
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_24;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x23191FE90](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v7 = [v4 idsDeviceID];
    if (!v7)
    {
      goto LABEL_4;
    }

    v8 = *(v0 + 152);
    v27 = *(v0 + 160);
    v9 = v7;
    v10 = sub_230F39608();
    v12 = v11;

    if (v10 == v8 && v12 == v27)
    {
      break;
    }

    v14 = sub_230F39B28();

    if (v14)
    {
      goto LABEL_18;
    }

LABEL_4:

    ++v3;
    if (v6 == v2)
    {
      goto LABEL_24;
    }
  }

LABEL_18:

  v15 = *(v0 + 8);

  return v15(v5);
}

uint64_t sub_230F1E3DC(uint64_t a1)
{
  v15 = v1;
  v2 = v1[21];
  v3 = v1[22];
  swift_willThrow();

  if (qword_27DB81D10 != -1)
  {
    swift_once();
  }

  v4 = sub_230F391F8();
  __swift_project_value_buffer(v4, qword_27DB823A8);

  v5 = sub_230F391D8();
  v6 = sub_230F397B8();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v1[19];
    v7 = v1[20];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_230F0F28C(v8, v7, &v14);
    _os_log_impl(&dword_230EF9000, v5, v6, "Unable to obtain remote identity for device %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x231920D30](v10, -1, -1);
    MEMORY[0x231920D30](v9, -1, -1);
  }

  sub_230F17B58();
  swift_allocError();
  *v11 = 2;
  swift_willThrow();
  v12 = v1[1];

  return v12();
}

uint64_t sub_230F1E5A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB822C8, &unk_230F3C920);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_230F27A18();
    **(*(v4 + 64) + 40) = sub_230F396C8();

    return swift_continuation_throwingResume();
  }
}

uint64_t DDUIServiceActor.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_id;
  v4 = sub_230F393E8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_230F1E710()
{
  v1 = 7104878;
  sub_230F39978();
  MEMORY[0x23191FB50](0xD000000000000019, 0x8000000230F40340);
  if (v0[1])
  {
    v2 = *v0;
    v3 = v0[1];
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x23191FB50](v2, v3);

  MEMORY[0x23191FB50](0x656369766564202CLL, 0xEF203A6C65646F4DLL);
  if (v0[3])
  {
    v4 = v0[2];
    v5 = v0[3];
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x23191FB50](v4, v5);

  MEMORY[0x23191FB50](0x656369766564202CLL, 0xEE00203A656D614ELL);
  if (v0[5])
  {
    v1 = v0[4];
    v6 = v0[5];
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x23191FB50](v1, v6);

  MEMORY[0x23191FB50](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_230F1E898(uint64_t a1, _OWORD *a2)
{
  v12 = a2;
  v13 = sub_230F393E8();
  v4 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_suspendedBundleIdentifiers) = &unk_2845BDBE0;
  *(v2 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_scenelessBundleIdentifiers) = &unk_2845BDC10;
  v11 = OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_actorSystem;
  *(v2 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_actorSystem) = a1;
  type metadata accessor for DDUIServiceActor(0);
  v14 = a1;
  sub_230F39378();
  sub_230F20828(&qword_2814AF418, MEMORY[0x277CD8E58], MEMORY[0x277CD8E38]);
  sub_230F20828(&qword_2814AF568, type metadata accessor for DDUIServiceActor, &protocol conformance descriptor for DDUIServiceActor);

  sub_230F390F8();
  (*(v4 + 32))(v2 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_id, v6, v13);
  v7 = (v2 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails);
  v8 = v12;
  v9 = v12[1];
  *v7 = *v12;
  v7[1] = v9;
  v7[2] = v8[2];
  v14 = *(v2 + v11);

  sub_230F390D8();

  return v2;
}

uint64_t sub_230F1ECC4()
{
  v72 = v0;
  if (qword_27DB81D10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 336);
  v2 = sub_230F391F8();
  *(v0 + 488) = __swift_project_value_buffer(v2, qword_27DB823A8);
  sub_230F17BAC(v1, v0 + 80);
  v3 = sub_230F391D8();
  v4 = sub_230F397D8();
  sub_230F17C08(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v71[0] = v6;
    *v5 = 136315138;
    v7 = BoopLaunchRequest.description.getter();
    v9 = sub_230F0F28C(v7, v8, v71);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_230EF9000, v3, v4, "Got incoming Boop Launch Request: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x231920D30](v6, -1, -1);
    MEMORY[0x231920D30](v5, -1, -1);
  }

  type metadata accessor for DDUIServiceActor(0);
  sub_230F20828(&qword_2814AF568, type metadata accessor for DDUIServiceActor, &protocol conformance descriptor for DDUIServiceActor);
  sub_230F39118();
  v10 = *(v0 + 480);
  if (*(v0 + 232))
  {
    __swift_project_boxed_opaque_existential_1((v0 + 208), *(v0 + 232));
    sub_230F39288();
    v11 = sub_230F39248();
    v12 = *(v11 - 8);
    (*(v12 + 56))(v10, 0, 1, v11);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 208));
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_230F0D798(*(v0 + 480), &qword_27DB82490, &qword_230F3CA90);
      v13 = sub_230F391D8();
      v14 = sub_230F397D8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_230EF9000, v13, v14, "Unable to determine kind from endpoint, falling back to senderDetails", v15, 2u);
        MEMORY[0x231920D30](v15, -1, -1);
      }

      v16 = *(v0 + 344);

      v17 = (v16 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails);
      v18 = *(v16 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails + 8);
      if (v18 == 1)
      {
        v19 = 0;
        v18 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
      }

      else
      {
        v20 = v17[4];
        v21 = v17[5];
        v22 = v17[2];
        v23 = v17[3];
        v19 = *v17;
      }

      sub_230F2F320(v22, v23, v20, v21, v19, v18, v0 + 288);
      v29 = *(v0 + 288);
      v30 = *(v0 + 296);
      v31 = *(v0 + 304);
      v32 = *(v0 + 312);
      v33 = *(v0 + 320);
      *(v0 + 248) = v29;
      *(v0 + 256) = v30;
      *(v0 + 264) = v31;
      *(v0 + 272) = v32;
      *(v0 + 280) = v33;
      sub_230F266B0(v29, v30, v31, v32, v33);
      v34 = sub_230F391D8();
      v35 = sub_230F397D8();
      sub_230F26718(v29, v30, v31, v32, v33);
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v71[0] = v69;
        *v36 = 136315138;
        sub_230F266B0(v29, v30, v31, v32, v33);
        v67 = v35;
        v37 = DDUIPermissionRequest.Kind.description.getter();
        v39 = v38;
        sub_230F26718(v29, v30, v31, v32, v33);
        v40 = sub_230F0F28C(v37, v39, v71);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_230EF9000, v34, v67, "Using Kind: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v69);
        MEMORY[0x231920D30](v69, -1, -1);
        MEMORY[0x231920D30](v36, -1, -1);
      }

      v41 = *(v0 + 336);
      sub_230F390A8();
      v42 = *v41;
      *(v0 + 496) = *v41;
      v43 = v41[1];
      *(v0 + 504) = v43;

      v44 = sub_230F1AC58(v42, v43);
      v48 = *(v0 + 464);
      v47 = *(v0 + 472);
      v49 = *(v0 + 456);
      v50 = *(v0 + 432);
      v51 = *(v0 + 440);
      v52 = *(v0 + 336);
      v53 = v48[6];
      v68 = v54;
      v70 = v44;
      v55 = sub_230F394D8();
      (*(*(v55 - 8) + 56))(v47 + v53, 1, 1, v55);
      v56 = *(v52 + 16);
      *(v0 + 512) = v56;
      v57 = *(v52 + 24);
      *(v0 + 520) = v57;
      v58 = *(v51 + 32);
      *(v0 + 528) = v58;
      *(v0 + 536) = (v51 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v58(v47, v49, v50);
      v59 = v47 + v48[7];
      v60 = *(v0 + 248);
      v61 = *(v0 + 264);
      *(v59 + 32) = *(v0 + 280);
      *v59 = v60;
      *(v59 + 16) = v61;
      v62 = (v47 + v48[5]);
      *v62 = v70;
      v62[1] = v68;
      v63 = (v47 + v48[8]);
      *v63 = v56;
      v63[1] = v57;
      v64 = (v47 + v48[9]);
      *v64 = v42;
      v64[1] = v43;

      v65 = swift_task_alloc();
      *(v0 + 544) = v65;
      *v65 = v0;
      v65[1] = sub_230F1F584;
      v66 = *(v0 + 472);

      return sub_230F2F700(v66);
    }
  }

  else
  {
    sub_230F0D798(v0 + 208, &qword_27DB82498, &qword_230F3CA98);
    v24 = sub_230F39248();
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  }

  sub_230F0D798(*(v0 + 480), &qword_27DB82490, &qword_230F3CA90);
  v25 = sub_230F391D8();
  v26 = sub_230F397B8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_230EF9000, v25, v26, "Unable to Fetch Endpoint From Peer", v27, 2u);
    MEMORY[0x231920D30](v27, -1, -1);
  }

  sub_230F17B58();
  swift_allocError();
  *v28 = 0;
  swift_willThrow();

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_230F1F584()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  v3 = *(v2 + 344);
  if (v0)
  {
    v4 = sub_230F1F87C;
  }

  else
  {
    v4 = sub_230F1F6B0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230F1F6B0()
{
  v16 = v0;
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  v14 = v0[62];
  v15 = v2;

  MEMORY[0x23191FB50](46, 0xE100000000000000);
  MEMORY[0x23191FB50](v3, v1);
  v4 = v14;
  v5 = v15;
  v0[70] = v14;
  v0[71] = v5;

  v6 = sub_230F391D8();
  v7 = sub_230F397D8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_230F0F28C(v4, v5, &v14);
    _os_log_impl(&dword_230EF9000, v6, v7, "Attempting to create mapping for service: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x231920D30](v9, -1, -1);
    MEMORY[0x231920D30](v8, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[72] = v10;
  *v10 = v0;
  v10[1] = sub_230F1F998;
  v12 = v0[62];
  v11 = v0[63];

  return sub_230F23B40(v12, v11, v4, v5);
}

uint64_t sub_230F1F87C()
{
  sub_230F26780(*(v0 + 472), type metadata accessor for DDUIPermissionRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230F1F998()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  v3 = *(v2 + 344);

  if (v0)
  {

    v4 = sub_230F20504;
  }

  else
  {
    v4 = sub_230F1FAEC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230F1FAEC()
{
  v1 = v0[52];
  v2 = [objc_allocWithZone(MEMORY[0x277D44150]) init];
  v0[74] = v2;
  v3 = sub_230F395D8();
  v0[75] = v3;
  v4 = sub_230F39058();
  v0[76] = v4;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_230F1FC6C;
  v5 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB824A8, &qword_230F3CAA8);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_230F20BB8;
  v0[21] = &block_descriptor_1;
  v0[22] = v5;
  [v2 exchangeQUICPublicKeyFor:v3 publicKey:v4 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_230F1FC6C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 616) = v2;
  if (v2)
  {
    v3 = *(v1 + 344);

    v4 = sub_230F20620;
    v5 = v3;
  }

  else
  {
    v5 = *(v1 + 344);
    v4 = sub_230F1FD94;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_230F1FD94()
{
  v66 = v0;
  v59 = *(v0 + 608);
  v60 = *(v0 + 600);
  v1 = *(v0 + 592);
  v2 = *(v0 + 440);
  v63 = *(v0 + 432);
  v3 = *(v0 + 424);
  v5 = *(v0 + 400);
  v4 = *(v0 + 408);
  v6 = *(v0 + 384);
  sub_230F26874(*(v0 + 416), v4, &qword_27DB82488, &qword_230F3CA88);
  v7 = *(v6 + 48);
  v9 = *(v4 + v7);
  v8 = *(v4 + v7 + 8);
  v10 = (v3 + v7);
  sub_230F26874(v4, v3, &qword_27DB821C8, qword_230F3C760);
  *v10 = v9;
  v10[1] = v8;

  sub_230F27A64(v3, v5, &qword_27DB82488, &qword_230F3CA88);
  sub_230F0D7F8(*(v5 + *(v6 + 48)), *(v5 + *(v6 + 48) + 8));
  if ((*(v2 + 48))(v5, 1, v63) == 1)
  {
    v11 = (v0 + 400);
  }

  else
  {
    v12 = *(v0 + 424);
    v13 = *(v0 + 392);
    (*(v0 + 528))(*(v0 + 448), *(v0 + 400), *(v0 + 432));
    sub_230F27A64(v12, v13, &qword_27DB82488, &qword_230F3CA88);
    v14 = (v13 + *(v6 + 48));
    v15 = v14[1];
    if (v15 >> 60 != 15)
    {
      v29 = *(v0 + 440);
      v28 = *(v0 + 448);
      v30 = *(v0 + 432);
      v31 = *(v0 + 392);
      v33 = *(v0 + 368);
      v32 = *(v0 + 376);
      v34 = *(v0 + 352);
      v61 = *(v0 + 360);
      v35 = *v14;

      sub_230F0D798(v31, &qword_27DB821C8, qword_230F3C760);
      (*(v29 + 16))(v32, v28, v30);
      v36 = (v32 + *(v34 + 20));
      *v36 = v35;
      v36[1] = v15;
      sub_230F2664C(v32, v33);
      sub_230F2664C(v32, v61);
      v37 = sub_230F391D8();
      v38 = sub_230F397D8();
      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 472);
      v41 = *(v0 + 440);
      v42 = *(v0 + 448);
      v44 = *(v0 + 424);
      v43 = *(v0 + 432);
      v46 = *(v0 + 360);
      v45 = *(v0 + 368);
      if (v39)
      {
        v64 = *(v0 + 448);
        v47 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v65[0] = v57;
        *v47 = 136315394;
        sub_230F20828(&qword_27DB821D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v62 = v40;
        v48 = sub_230F39B08();
        v58 = v44;
        v50 = v49;
        sub_230F26780(v45, type metadata accessor for BoopConnectionResponse);
        v51 = sub_230F0F28C(v48, v50, v65);

        *(v47 + 4) = v51;
        *(v47 + 12) = 2112;
        v52 = sub_230F39058();
        sub_230F26780(v46, type metadata accessor for BoopConnectionResponse);
        *(v47 + 14) = v52;
        *v56 = v52;
        _os_log_impl(&dword_230EF9000, v37, v38, "did get listener response - serviceName: %s, publicKey: %@", v47, 0x16u);
        sub_230F0D798(v56, &qword_27DB820E0, &qword_230F3C2A0);
        MEMORY[0x231920D30](v56, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v57);
        MEMORY[0x231920D30](v57, -1, -1);
        MEMORY[0x231920D30](v47, -1, -1);

        (*(v41 + 8))(v64, v43);
        sub_230F0D798(v58, &qword_27DB82488, &qword_230F3CA88);
        v53 = type metadata accessor for DDUIPermissionRequest;
        v54 = v62;
      }

      else
      {

        sub_230F26780(v45, type metadata accessor for BoopConnectionResponse);
        (*(v41 + 8))(v42, v43);
        sub_230F0D798(v44, &qword_27DB82488, &qword_230F3CA88);
        sub_230F26780(v40, type metadata accessor for DDUIPermissionRequest);
        v54 = v46;
        v53 = type metadata accessor for BoopConnectionResponse;
      }

      sub_230F26780(v54, v53);
      sub_230F2680C(*(v0 + 376), *(v0 + 328), type metadata accessor for BoopConnectionResponse);

      v27 = *(v0 + 8);
      goto LABEL_13;
    }

    v11 = (v0 + 392);
    (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
  }

  sub_230F0D798(*v11, &qword_27DB821C8, qword_230F3C760);

  v16 = sub_230F391D8();
  v17 = sub_230F397B8();

  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 568);
  if (v18)
  {
    v20 = *(v0 + 560);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v65[0] = v22;
    *v21 = 136315138;
    v23 = sub_230F0F28C(v20, v19, v65);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_230EF9000, v16, v17, "Failed to create mapping for %s.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x231920D30](v22, -1, -1);
    MEMORY[0x231920D30](v21, -1, -1);
  }

  else
  {
  }

  v24 = *(v0 + 472);
  v25 = *(v0 + 424);
  sub_230F17B58();
  swift_allocError();
  *v26 = 4;
  swift_willThrow();
  sub_230F0D798(v25, &qword_27DB82488, &qword_230F3CA88);
  sub_230F26780(v24, type metadata accessor for DDUIPermissionRequest);

  v27 = *(v0 + 8);
LABEL_13:

  return v27();
}

uint64_t sub_230F20504()
{
  sub_230F26780(*(v0 + 472), type metadata accessor for DDUIPermissionRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230F20620(uint64_t a1)
{
  v2 = v1[76];
  v3 = v1[75];
  v4 = v1[74];
  v5 = v1[59];
  swift_willThrow();
  sub_230F26780(v5, type metadata accessor for DDUIPermissionRequest);

  v6 = v1[1];

  return v6();
}

unint64_t sub_230F20760()
{
  result = qword_27DB823C8;
  if (!qword_27DB823C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB823C8);
  }

  return result;
}

unint64_t sub_230F207B4()
{
  result = qword_27DB823D0;
  if (!qword_27DB823D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB823D0);
  }

  return result;
}

uint64_t sub_230F20828(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_230F20890(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v3[2] = *a2;
  v3[3] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[4] = v6;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_230F39388();
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_230F20A40;

  return DDUIServiceActor.requestApplicationListener(_:)(a3, v6);
}

uint64_t sub_230F20A40()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_230F20BB8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB821C8, qword_230F3C760);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB82488, &qword_230F3CA88);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB822C8, &unk_230F3C920);
    v15 = swift_allocError();
    *v16 = a4;
    v17 = a4;

    return MEMORY[0x282200958](v14, v15);
  }

  else
  {
    if (a2)
    {
      sub_230F39098();
      v18 = sub_230F390B8();
      (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
    }

    else
    {
      v19 = sub_230F390B8();
      (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
    }

    sub_230F26874(v10, v13, &qword_27DB821C8, qword_230F3C760);
    if (a3)
    {
      v20 = a3;
      a3 = sub_230F39068();
      v22 = v21;
    }

    else
    {
      v22 = 0xF000000000000000;
    }

    v23 = &v13[*(v11 + 48)];
    *v23 = a3;
    *(v23 + 1) = v22;
    sub_230F26874(v13, *(*(v14 + 64) + 40), &qword_27DB82488, &qword_230F3CA88);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_230F21074()
{
  v32 = v0;
  if (qword_27DB81D10 != -1)
  {
    swift_once();
  }

  v1 = v0[63];
  v2 = sub_230F391F8();
  v0[83] = __swift_project_value_buffer(v2, qword_27DB823A8);
  sub_230F17CA0(v1, (v0 + 18));
  v3 = sub_230F391D8();
  v4 = sub_230F397D8();
  sub_230F17CFC(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136315138;
    v7 = TapLaunchRequest.description.getter();
    v9 = sub_230F0F28C(v7, v8, &v31);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_230EF9000, v3, v4, "Got incoming Tap Launch Request: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x231920D30](v6, -1, -1);
    MEMORY[0x231920D30](v5, -1, -1);
  }

  type metadata accessor for DDUIServiceActor(0);
  sub_230F20828(&qword_2814AF568, type metadata accessor for DDUIServiceActor, &protocol conformance descriptor for DDUIServiceActor);
  sub_230F39118();
  v10 = v0[81];
  v11 = v0[80];
  v12 = v0[79];
  if (!v0[47])
  {
    sub_230F0D798((v0 + 44), &qword_27DB82498, &qword_230F3CA98);
    (*(v10 + 56))(v12, 1, 1, v11);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(v0 + 44, v0[47]);
  sub_230F39288();
  (*(v10 + 56))(v12, 0, 1, v11);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 44);
  if ((*(v10 + 48))(v12, 1, v11) == 1)
  {
LABEL_13:
    sub_230F0D798(v0[79], &qword_27DB82490, &qword_230F3CA90);
    v19 = sub_230F391D8();
    v20 = sub_230F397B8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_230EF9000, v19, v20, "Unable to Fetch Endpoint From Peer", v21, 2u);
      MEMORY[0x231920D30](v21, -1, -1);
    }

    sub_230F17B58();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    goto LABEL_20;
  }

  (*(v0[81] + 32))(v0[82], v0[79], v0[80]);
  v13 = sub_230F39238();
  v0[84] = v13;
  if (v13)
  {
    if (nw_endpoint_get_device_id())
    {
      v14 = sub_230F39658();
      v16 = v15;
      v0[85] = v14;
      v0[86] = v15;
      v17 = swift_task_alloc();
      v0[87] = v17;
      *v17 = v0;
      v17[1] = sub_230F21620;

      return sub_230F1DE2C(v14, v16);
    }

    swift_unknownObjectRelease();
  }

  v23 = sub_230F391D8();
  v24 = sub_230F397B8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_230EF9000, v23, v24, "Missing DeviceID from Endpoint", v25, 2u);
    MEMORY[0x231920D30](v25, -1, -1);
  }

  v26 = v0[82];
  v27 = v0[81];
  v28 = v0[80];

  sub_230F17B58();
  swift_allocError();
  *v29 = 1;
  swift_willThrow();
  (*(v27 + 8))(v26, v28);
LABEL_20:

  v30 = v0[1];

  return v30();
}

uint64_t sub_230F21620(uint64_t a1)
{
  v3 = *v2;
  v3[88] = a1;
  v3[89] = v1;

  if (v1)
  {
    v4 = v3[64];

    v5 = sub_230F23340;
    v6 = v4;
  }

  else
  {
    v6 = v3[64];
    v5 = sub_230F2174C;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_230F2174C()
{
  v1 = *(v0 + 712);
  sub_230F300D4(*(v0 + 704), v0 + 392);
  v2 = *(v0 + 704);
  if (v1)
  {
    v3 = *(v0 + 504);

    v4 = *(v3 + 64);
    v5 = *(v3 + 72);

    v6 = 0;
    v35 = 0;
    v34 = 2;
  }

  else
  {
    v4 = *(v0 + 392);
    v5 = *(v0 + 400);
    v6 = *(v0 + 408);
    v35 = *(v0 + 416);
    v34 = *(v0 + 424);
  }

  sub_230F390A8();
  v7 = sub_230F1C9FC();
  v9 = v8;
  v33 = v7;
  v10 = *(v0 + 552);
  v11 = *(v0 + 504);
  v12 = sub_230F394D8();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v32 = *(v11 + 16);
  *(v0 + 720) = v32;
  v13 = *(v11 + 24);
  *(v0 + 728) = v13;
  v14 = *(v11 + 48);
  *(v0 + 432) = *(v11 + 32);
  *(v0 + 448) = v14;
  v15 = *(v0 + 440);
  if (v15)
  {
    v31 = *(v0 + 432);

    sub_230F268DC(v0 + 432, v0 + 464);
  }

  else
  {
    v16 = *(v0 + 504);
    v15 = v16[1];
    v31 = *v16;
  }

  v17 = *(v0 + 624);
  v18 = *(v0 + 616);
  v19 = *(v0 + 608);
  v20 = *(v0 + 568);
  v21 = *(v0 + 560);
  v22 = *(v0 + 552);
  v23 = *(v20 + 32);
  *(v0 + 736) = v23;
  *(v0 + 744) = (v20 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v23(v17, v19, v21);
  v24 = v17 + v18[7];
  *v24 = v4;
  *(v24 + 8) = v5;
  *(v24 + 16) = v6;
  *(v24 + 24) = v35;
  *(v24 + 32) = v34;
  v25 = (v17 + v18[5]);
  *v25 = v33;
  v25[1] = v9;
  sub_230F26874(v22, v17 + v18[6], &qword_27DB824B0, &qword_230F3CAB0);
  v26 = (v17 + v18[8]);
  *v26 = v32;
  v26[1] = v13;
  v27 = (v17 + v18[9]);
  *v27 = v31;
  v27[1] = v15;
  v28 = swift_task_alloc();
  *(v0 + 752) = v28;
  *v28 = v0;
  v28[1] = sub_230F21B5C;
  v29 = *(v0 + 624);

  return sub_230F2F700(v29);
}

uint64_t sub_230F21B5C()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = *(v2 + 512);

    v4 = sub_230F21DC0;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 512);
    v4 = sub_230F21C84;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_230F21C84()
{
  v1 = v0 + 54;
  v2 = v0[55];
  if (v2)
  {
    v3 = v0 + 54;
  }

  else
  {
    v3 = v0[63];
    v2 = v3[1];
  }

  v4 = v0[91];
  v5 = v0[90];
  MEMORY[0x23191FB50](*v3, v2);
  MEMORY[0x23191FB50](46, 0xE100000000000000);
  MEMORY[0x23191FB50](v5, v4);
  v0[96] = 0;
  v0[97] = 0xE000000000000000;
  v6 = v0[55];
  if (!v6)
  {
    v1 = v0[63];
    v6 = v1[1];
  }

  v7 = *v1;

  v8 = swift_task_alloc();
  v0[98] = v8;
  *v8 = v0;
  v8[1] = sub_230F21F38;

  return sub_230F23B40(v7, v6, 0, 0xE000000000000000);
}

uint64_t sub_230F21DC0()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 624);

  swift_unknownObjectRelease();
  sub_230F26780(v4, type metadata accessor for DDUIPermissionRequest);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_230F21F38()
{
  v2 = *v1;
  *(*v1 + 792) = v0;

  if (v0)
  {
    v3 = *(v2 + 512);
    swift_bridgeObjectRelease_n();

    v4 = sub_230F2348C;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 512);

    v4 = sub_230F22094;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_230F22094()
{
  v17 = v0;

  v1 = sub_230F391D8();
  v2 = sub_230F397D8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[97];
    v4 = v0[96];
    v5 = v0[86];
    v6 = v0[85];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_230F0F28C(v6, v5, &v16);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230F0F28C(v4, v3, &v16);
    _os_log_impl(&dword_230EF9000, v1, v2, "Querying to see if we have a current mapping with %s for service: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231920D30](v8, -1, -1);
    MEMORY[0x231920D30](v7, -1, -1);
  }

  v9 = v0[68];
  v10 = [objc_allocWithZone(MEMORY[0x277D44150]) init];
  v0[100] = v10;
  v11 = sub_230F395D8();
  v0[101] = v11;
  v12 = sub_230F395D8();
  v0[102] = v12;
  v0[2] = v0;
  v0[7] = v9;
  v0[3] = sub_230F22340;
  v13 = swift_continuation_init();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB821D0, &qword_230F3CAC0);
  v0[103] = v14;
  v0[35] = v14;
  v0[28] = MEMORY[0x277D85DD0];
  v0[29] = 1107296256;
  v0[30] = sub_230F160D4;
  v0[31] = &block_descriptor_19;
  v0[32] = v13;
  [v10 queryDeviceToListenerMapping:v11 deviceID:v12 completion:v0 + 28];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_230F22340()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 832) = v2;
  if (v2)
  {
    v3 = *(v1 + 512);

    v4 = sub_230F23604;
    v5 = v3;
  }

  else
  {
    v5 = *(v1 + 512);
    v4 = sub_230F22474;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_230F22474()
{
  v56 = v0;
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[67];
  sub_230F26874(v0[68], v3, &qword_27DB821C8, qword_230F3C760);
  v4 = *(v1 + 48);
  v0[105] = v4;
  v0[106] = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v3, 1, v2);
  v6 = v0[102];
  v7 = v0[101];
  v8 = v0[100];
  if (v5 == 1)
  {
    sub_230F0D798(v0[67], &qword_27DB821C8, qword_230F3C760);

    v9 = sub_230F391D8();
    v10 = sub_230F397D8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_230EF9000, v9, v10, "No mappingID found", v11, 2u);
      MEMORY[0x231920D30](v11, -1, -1);
    }

    v12 = sub_230F391D8();
    v13 = sub_230F397D8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[97];
      v15 = v0[96];
      v16 = v0[86];
      v17 = v0[85];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v55 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_230F0F28C(v17, v16, &v55);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_230F0F28C(v15, v14, &v55);
      _os_log_impl(&dword_230EF9000, v12, v13, "Attempting to create mapping with %s for service: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231920D30](v19, -1, -1);
      MEMORY[0x231920D30](v18, -1, -1);
    }

    v20 = v0[103];
    v21 = v0[66];
    v22 = [objc_allocWithZone(MEMORY[0x277D44150]) init];
    v0[107] = v22;
    v23 = sub_230F395D8();
    v0[108] = v23;
    v24 = sub_230F395D8();
    v0[109] = v24;
    v0[10] = v0;
    v0[15] = v21;
    v0[11] = sub_230F22B70;
    v25 = swift_continuation_init();
    v0[43] = v20;
    v0[36] = MEMORY[0x277D85DD0];
    v0[37] = 1107296256;
    v0[38] = sub_230F160D4;
    v0[39] = &block_descriptor_22_0;
    v0[40] = v25;
    [v22 createDeviceToListenerMapping:v23 deviceID:v24 completion:v0 + 36];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {
    v26 = v0[92];
    v27 = v0[75];
    v53 = v0[74];
    v28 = v0[71];
    v29 = v0[70];
    v30 = v0[67];

    v26(v27, v30, v29);

    (*(v28 + 16))(v53, v27, v29);
    v31 = sub_230F391D8();
    v54 = sub_230F397D8();
    v32 = os_log_type_enabled(v31, v54);
    v33 = v0[88];
    v34 = v0[82];
    v35 = v0[81];
    v36 = v0[80];
    v37 = v0[78];
    v38 = v0[74];
    v39 = v0[71];
    v40 = v0[70];
    if (v32)
    {
      v51 = v0[88];
      v41 = swift_slowAlloc();
      v52 = v34;
      v42 = swift_slowAlloc();
      v55 = v42;
      *v41 = 136315138;
      sub_230F20828(&qword_27DB821D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v49 = v37;
      v50 = v36;
      v43 = sub_230F39B08();
      v45 = v44;
      (*(v39 + 8))(v38, v40);
      v46 = sub_230F0F28C(v43, v45, &v55);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_230EF9000, v31, v54, "Found mappingID: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x231920D30](v42, -1, -1);
      MEMORY[0x231920D30](v41, -1, -1);
      swift_unknownObjectRelease();

      sub_230F26780(v49, type metadata accessor for DDUIPermissionRequest);
      (*(v35 + 8))(v52, v50);
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v39 + 8))(v38, v40);
      sub_230F26780(v37, type metadata accessor for DDUIPermissionRequest);
      (*(v35 + 8))(v34, v36);
    }

    (v0[92])(v0[62], v0[75], v0[70]);

    v47 = v0[1];

    return v47();
  }
}

uint64_t sub_230F22B70()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 880) = v2;
  if (v2)
  {
    v3 = *(v1 + 512);

    v4 = sub_230F237A4;
    v5 = v3;
  }

  else
  {
    v5 = *(v1 + 512);
    v4 = sub_230F22CA4;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_230F22CA4()
{
  v55 = v0;
  v1 = v0[105];
  v2 = v0[70];
  v3 = v0[65];
  sub_230F26874(v0[66], v3, &qword_27DB821C8, qword_230F3C760);
  v4 = v1(v3, 1, v2);
  v5 = v0[109];
  v6 = v0[108];
  v7 = v0[107];
  if (v4 == 1)
  {
    sub_230F0D798(v0[65], &qword_27DB821C8, qword_230F3C760);

    v8 = sub_230F391D8();
    v9 = sub_230F397B8();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[97];
    if (v10)
    {
      v12 = v0[96];
      v13 = v0[86];
      v14 = v0[85];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v54[0] = v16;
      *v15 = 136315394;
      v17 = sub_230F0F28C(v14, v13, v54);

      *(v15 + 4) = v17;
      *(v15 + 12) = 2080;
      v18 = sub_230F0F28C(v12, v11, v54);

      *(v15 + 14) = v18;
      _os_log_impl(&dword_230EF9000, v8, v9, "Got a nil endpointUUID while trying to create a mapping for %s and service %s.", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231920D30](v16, -1, -1);
      MEMORY[0x231920D30](v15, -1, -1);
    }

    else
    {
    }

    v40 = v0[88];
    v41 = v0[82];
    v42 = v0[81];
    v43 = v0[80];
    v44 = v0[78];
    sub_230F17B58();
    swift_allocError();
    *v45 = 4;
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_230F26780(v44, type metadata accessor for DDUIPermissionRequest);
    (*(v42 + 8))(v41, v43);

    v46 = v0[1];
  }

  else
  {
    v19 = v0[92];
    v20 = v0[73];
    v52 = v0[72];
    v21 = v0[71];
    v22 = v0[70];
    v23 = v0[65];

    v19(v20, v23, v22);

    (*(v21 + 16))(v52, v20, v22);
    v24 = sub_230F391D8();
    v53 = sub_230F397D8();
    v25 = os_log_type_enabled(v24, v53);
    v26 = v0[88];
    v27 = v0[82];
    v28 = v0[81];
    v29 = v0[80];
    v30 = v0[78];
    v31 = v0[72];
    v32 = v0[71];
    v33 = v0[70];
    if (v25)
    {
      v50 = v0[88];
      v34 = swift_slowAlloc();
      v51 = v27;
      v35 = swift_slowAlloc();
      v54[0] = v35;
      *v34 = 136315138;
      sub_230F20828(&qword_27DB821D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v48 = v30;
      v49 = v29;
      v36 = sub_230F39B08();
      v38 = v37;
      (*(v32 + 8))(v31, v33);
      v39 = sub_230F0F28C(v36, v38, v54);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_230EF9000, v24, v53, "Created Mapping with mappingID: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x231920D30](v35, -1, -1);
      MEMORY[0x231920D30](v34, -1, -1);
      swift_unknownObjectRelease();

      sub_230F26780(v48, type metadata accessor for DDUIPermissionRequest);
      (*(v28 + 8))(v51, v49);
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v32 + 8))(v31, v33);
      sub_230F26780(v30, type metadata accessor for DDUIPermissionRequest);
      (*(v28 + 8))(v27, v29);
    }

    (v0[92])(v0[62], v0[73], v0[70]);

    v46 = v0[1];
  }

  return v46();
}

uint64_t sub_230F23340()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[80];
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_230F2348C()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 624);

  swift_unknownObjectRelease();
  sub_230F26780(v4, type metadata accessor for DDUIPermissionRequest);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_230F23604(uint64_t a1)
{
  v2 = v1[102];
  v11 = v1[101];
  v3 = v1[100];
  v4 = v1[88];
  v5 = v1[82];
  v6 = v1[81];
  v7 = v1[80];
  v8 = v1[78];
  swift_willThrow();
  swift_unknownObjectRelease();

  sub_230F26780(v8, type metadata accessor for DDUIPermissionRequest);
  (*(v6 + 8))(v5, v7);

  v9 = v1[1];

  return v9();
}

uint64_t sub_230F237A4(uint64_t a1)
{
  v2 = v1[109];
  v11 = v1[108];
  v3 = v1[107];
  v4 = v1[88];
  v5 = v1[82];
  v6 = v1[81];
  v7 = v1[80];
  v8 = v1[78];
  swift_willThrow();
  swift_unknownObjectRelease();

  sub_230F26780(v8, type metadata accessor for DDUIPermissionRequest);
  (*(v6 + 8))(v5, v7);

  v9 = v1[1];

  return v9();
}

unint64_t sub_230F23944()
{
  result = qword_27DB823F0;
  if (!qword_27DB823F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB823F0);
  }

  return result;
}

unint64_t sub_230F23998()
{
  result = qword_27DB823F8;
  if (!qword_27DB823F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB823F8);
  }

  return result;
}

uint64_t sub_230F23A0C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_230F23A44()
{
  result = qword_27DB82418;
  if (!qword_27DB82418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82418);
  }

  return result;
}

unint64_t sub_230F23A98()
{
  result = qword_27DB82440;
  if (!qword_27DB82440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82440);
  }

  return result;
}

unint64_t sub_230F23AEC()
{
  result = qword_27DB82448;
  if (!qword_27DB82448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB82448);
  }

  return result;
}

uint64_t sub_230F23B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[104] = v4;
  v5[103] = a4;
  v5[102] = a3;
  v5[101] = a2;
  v5[100] = a1;
  return MEMORY[0x2822009F8](sub_230F23B70, v4, 0);
}

uint64_t sub_230F23B70()
{
  v54 = v0;
  if (qword_27DB81D10 != -1)
  {
    swift_once();
  }

  v1 = sub_230F391F8();
  v0[105] = __swift_project_value_buffer(v1, qword_27DB823A8);

  v2 = sub_230F391D8();
  v3 = sub_230F397D8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[101];
    v5 = v0[100];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v53 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_230F0F28C(v5, v4, &v53);
    _os_log_impl(&dword_230EF9000, v2, v3, "request to open application for bundleID: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x231920D30](v7, -1, -1);
    MEMORY[0x231920D30](v6, -1, -1);
  }

  v8 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  v0[106] = v8;
  if (v8)
  {
    v9 = v8;
    v10 = v0[104];
    v11 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
    v0[107] = v11;
    v12 = [objc_allocWithZone(MEMORY[0x277CF0B58]) initWithInfo:v11 responder:0];
    v0[108] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB825C0, &qword_230F3D718);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_230F3C8E0;
    v0[87] = sub_230F39608();
    v0[88] = v14;
    sub_230F39928();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB825C8, &qword_230F3D720);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_230F3C8F0;
    *(v15 + 32) = v12;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB825D0, &qword_230F3D728);
    *(inited + 96) = v52;
    *(inited + 72) = v15;
    v0[89] = sub_230F39608();
    v0[90] = v16;
    v51 = v12;
    sub_230F39928();
    *(inited + 168) = MEMORY[0x277D839B0];
    *(inited + 144) = 0;
    v0[91] = sub_230F39608();
    v0[92] = v17;
    sub_230F39928();
    type metadata accessor for FBSOpenApplicationLaunchIntent(0);
    *(inited + 240) = v18;
    *(inited + 216) = 4;
    sub_230F25354(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB825D8, &qword_230F3D730);
    swift_arrayDestroy();
    v19 = sub_230F39588();

    v20 = objc_opt_self();
    v21 = [v20 optionsWithDictionary_];

    v22 = *(v10 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_suspendedBundleIdentifiers);
    v23 = (v22 + 40);
    v24 = *(v22 + 16) + 1;
    while (--v24)
    {
      if (*(v23 - 1) != v0[100] || *v23 != v0[101])
      {
        v23 += 2;
        if ((sub_230F39B28() & 1) == 0)
        {
          continue;
        }
      }

      v50 = v20;

      v26 = sub_230F391D8();
      v27 = sub_230F397D8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = v0[101];
        v29 = v0[100];
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v53 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_230F0F28C(v29, v28, &v53);
        _os_log_impl(&dword_230EF9000, v26, v27, "setting fbs applications to launch suspended for bundleID: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        MEMORY[0x231920D30](v31, -1, -1);
        MEMORY[0x231920D30](v30, -1, -1);
      }

      v32 = v0[103];
      v33 = v0[102];
      v34 = swift_initStackObject();
      *(v34 + 16) = xmmword_230F3C8E0;
      v0[93] = sub_230F39608();
      v0[94] = v35;
      sub_230F39928();
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_230F3C8F0;
      *(v36 + 32) = v51;
      *(v34 + 96) = v52;
      *(v34 + 72) = v36;
      v0[95] = sub_230F39608();
      v0[96] = v37;
      v38 = v51;
      sub_230F39928();
      *(v34 + 168) = MEMORY[0x277D839B0];
      *(v34 + 144) = 1;
      v0[97] = sub_230F39608();
      v0[98] = v39;
      sub_230F39928();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB825E0, &qword_230F3D738);
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_230F3C6D0;
      v41 = *MEMORY[0x277D76690];
      *(v40 + 32) = *MEMORY[0x277D76690];
      *(v40 + 40) = v33;
      *(v40 + 48) = v32;

      v42 = v41;
      v43 = sub_230F25490(v40);
      swift_setDeallocating();
      sub_230F0D798(v40 + 32, &qword_27DB825E8, &qword_230F3D740);
      *(v34 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB825F0, &qword_230F3D748);
      *(v34 + 216) = v43;
      sub_230F25354(v34);
      swift_setDeallocating();
      swift_arrayDestroy();
      v44 = sub_230F39588();

      v45 = [v50 optionsWithDictionary_];

      v21 = v45;
      break;
    }

    v0[109] = v21;
    v46 = sub_230F395D8();
    v0[110] = v46;
    v0[2] = v0;
    v0[7] = v0 + 99;
    v0[3] = sub_230F243B4;
    v47 = swift_continuation_init();
    v0[79] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB825F8, &qword_230F3D750);
    v0[76] = v47;
    v0[72] = MEMORY[0x277D85DD0];
    v0[73] = 1107296256;
    v0[74] = sub_230F24714;
    v0[75] = &block_descriptor_97;
    [v9 openApplication:v46 withOptions:v21 completion:v0 + 72];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v48 = v0[1];

    return v48();
  }
}

uint64_t sub_230F243B4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 888) = v2;
  v3 = *(v1 + 832);
  if (v2)
  {
    v4 = sub_230F24670;
  }

  else
  {
    v4 = sub_230F244D4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230F244D4()
{
  v17 = v0;
  v1 = *(v0 + 880);

  v2 = sub_230F391D8();
  v3 = sub_230F397D8();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 872);
  v6 = *(v0 + 864);
  v7 = *(v0 + 856);
  v8 = *(v0 + 848);
  if (v4)
  {
    v15 = *(v0 + 848);
    v9 = *(v0 + 808);
    v10 = *(v0 + 800);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_230F0F28C(v10, v9, &v16);
    _os_log_impl(&dword_230EF9000, v2, v3, "did open application for bundleID: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x231920D30](v12, -1, -1);
    MEMORY[0x231920D30](v11, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_230F24670(uint64_t a1)
{
  v2 = v1[110];
  v3 = v1[109];
  v4 = v1[108];
  v5 = v1[107];
  v6 = v1[106];
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

uint64_t sub_230F24714(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB822C8, &unk_230F3C920);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return MEMORY[0x282200958](v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x282200958](v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t static DDUIServiceActor.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DDUIServiceActor(0);
  sub_230F39378();
  sub_230F20828(&qword_2814AF418, MEMORY[0x277CD8E58], MEMORY[0x277CD8E38]);
  sub_230F20828(&qword_2814AF568, type metadata accessor for DDUIServiceActor, &protocol conformance descriptor for DDUIServiceActor);
  result = sub_230F390E8();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_id;
    v8 = sub_230F393E8();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_actorSystem) = a2;

    return v6;
  }

  return result;
}

uint64_t DDUIServiceActor.deinit()
{
  v1 = OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_id;
  sub_230F39378();
  sub_230F20828(&qword_2814AF418, MEMORY[0x277CD8E58], MEMORY[0x277CD8E38]);
  sub_230F39108();
  v2 = sub_230F393E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_230F26914(*(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails), *(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails + 8), *(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails + 16), *(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails + 24), *(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails + 32), *(v0 + OBJC_IVAR____TtC21DeviceDiscoveryUICore16DDUIServiceActor_senderDetails + 40));
  swift_defaultActor_destroy();
  return v0;
}
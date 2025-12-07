void sub_252169D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_252169DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_25216A974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25216F4B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25216FE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2521700F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_252171358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25217168C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_252172B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id colorForThreshold(uint64_t a1)
{
  v2 = [MEMORY[0x277D75348] colorWithRed:0.0156862745 green:0.870588235 blue:0.502222222 alpha:1.0];
  if (a1 == 100 || a1 == 80)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.8 blue:0.0 alpha:1.0];

    v2 = v3;
  }

  return v2;
}

void sub_2521784A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_252178E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_252179F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak((v36 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25217ADB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_25217C1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25217C778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FrontBoardServicesLibrary();
  result = dlsym(v2, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t FrontBoardServicesLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __FrontBoardServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2796F7190;
    v5 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = FrontBoardServicesLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FrontBoardServicesLibrary();
  result = dlsym(v2, "FBSOpenApplicationOptionKeyUnlockDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FrontBoardServicesLibrary();
  result = dlsym(v2, "FBSOpenApplicationOptionKeyLaunchOrigin");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getLSApplicationWorkspaceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2796F71C8;
    v6 = 0;
    CoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("LSApplicationWorkspace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLSApplicationWorkspaceClass_block_invoke_cold_1();
  }

  getLSApplicationWorkspaceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_25217E534(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 168));
  _Unwind_Resume(a1);
}

void sub_25217EFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double AXHARoundToPixel(double a1)
{
  v2 = *&AXHARoundToPixel_scale;
  if (*&AXHARoundToPixel_scale == -1.0)
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 scale];
    AXHARoundToPixel_scale = v4;

    v2 = *&AXHARoundToPixel_scale;
  }

  return round(v2 * a1) / v2;
}

double HUICCFooterHeight(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 540.0;
  }

  else
  {
    v2 = 740.0;
  }

  if (a1)
  {
    v3 = 340.0;
  }

  else
  {
    v3 = 640.0;
  }

  if (a1)
  {
    v4 = 340.0;
  }

  else
  {
    v4 = 540.0;
  }

  if (a1)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 177.0;
  }

  if (a1)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 176.0;
  }

  if (a1)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 169.0;
  }

  if (a1)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 172.0;
  }

  v28.origin.x = HUIReferenceScreenBounds(a1, a2);
  if (CGRectGetWidth(v28) >= 1024.0)
  {
    v9 = [MEMORY[0x277D12B60] deviceIsPad];
    if (v9)
    {
      v9 = [MEMORY[0x277D12B60] deviceHasHomeButton];
      if (v9)
      {
        return v3;
      }
    }
  }

  v29.origin.x = HUIReferenceScreenBounds(v9, v10);
  if (CGRectGetWidth(v29) >= 1024.0)
  {
    v11 = [MEMORY[0x277D12B60] deviceIsPad];
    if (v11)
    {
      v11 = [MEMORY[0x277D12B60] deviceHasHomeButton];
      if (!v11)
      {
        return v2;
      }
    }
  }

  v30.origin.x = HUIReferenceScreenBounds(v11, v12);
  if (CGRectGetWidth(v30) >= 834.0)
  {
    v13 = [MEMORY[0x277D12B60] deviceIsPad];
    if (v13)
    {
      v13 = [MEMORY[0x277D12B60] deviceHasHomeButton];
      if (!v13)
      {
        return v3;
      }
    }
  }

  v31.origin.x = HUIReferenceScreenBounds(v13, v14);
  if (CGRectGetWidth(v31) < 834.0 || ![MEMORY[0x277D12B60] deviceIsPad] || (v2 = v3, (objc_msgSend(MEMORY[0x277D12B60], "deviceHasHomeButton") & 1) == 0))
  {
    v15 = [MEMORY[0x277D12B60] deviceIsPad];
    v2 = v4;
    if ((v15 & 1) == 0)
    {
      v32.origin.x = HUIReferenceScreenBounds(v15, v16);
      v2 = v5;
      if (CGRectGetWidth(v32) < 428.0)
      {
        v33.origin.x = HUIReferenceScreenBounds(v17, v18);
        if (CGRectGetWidth(v33) < 414.0 || (v19 = [MEMORY[0x277D12B60] deviceHasHomeButton], v19))
        {
          v34.origin.x = HUIReferenceScreenBounds(v19, v20);
          v2 = v6;
          if (CGRectGetWidth(v34) < 414.0)
          {
            v35.origin.x = HUIReferenceScreenBounds(v21, v22);
            if (CGRectGetWidth(v35) >= 390.0)
            {
              return v8;
            }

            else
            {
              v36.origin.x = HUIReferenceScreenBounds(v23, v24);
              if (CGRectGetWidth(v36) < 375.0 || (v25 = [MEMORY[0x277D12B60] deviceHasHomeButton], v25))
              {
                v37.origin.x = HUIReferenceScreenBounds(v25, v26);
                if (CGRectGetWidth(v37) < 375.0)
                {
                  return v8;
                }

                else
                {
                  return v7;
                }
              }

              else
              {
                return v7;
              }
            }
          }
        }

        else
        {
          return v6;
        }
      }
    }
  }

  return v2;
}

double HUIReferenceScreenBounds(uint64_t a1, uint64_t a2)
{
  if (HUIReferenceScreenBounds_onceToken != -1)
  {
    HUIReferenceScreenBounds_cold_1();
  }

  return *&HUIReferenceScreenBounds_ReferenceScreenBounds_0;
}

void __HUIReferenceScreenBounds_block_invoke()
{
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 _referenceBounds];
  HUIReferenceScreenBounds_ReferenceScreenBounds_0 = v0;
  HUIReferenceScreenBounds_ReferenceScreenBounds_1 = v1;
  HUIReferenceScreenBounds_ReferenceScreenBounds_2 = v2;
  HUIReferenceScreenBounds_ReferenceScreenBounds_3 = v3;
}

id accessibilityHearingUIBundle()
{
  v0 = accessibilityHearingUIBundle_AXBundle;
  if (!accessibilityHearingUIBundle_AXBundle)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = accessibilityHearingUIBundle_AXBundle;
    accessibilityHearingUIBundle_AXBundle = v1;

    v0 = accessibilityHearingUIBundle_AXBundle;
  }

  return v0;
}

id accessibilityHearingAidImageNamed(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277D755B8];
  v3 = accessibilityHearingUIBundle();
  v4 = [v2 imageNamed:v1 inBundle:v3];

  if (!v4)
  {
    v4 = [MEMORY[0x277D755B8] _systemImageNamed:v1];
  }

  return v4;
}

id attributedStringWithFeatureSettings(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v9];
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v9];
  }

  else
  {
    v14 = [v10 fontDescriptor];
    v20 = *MEMORY[0x277D74338];
    v21[0] = v11;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v16 = [v14 fontDescriptorByAddingAttributes:v15];

    v17 = MEMORY[0x277D74300];
    [v16 pointSize];
    v18 = [v17 fontWithDescriptor:v16 size:?];

    [v12 addAttribute:*MEMORY[0x277D740A8] value:v18 range:{a4, a5}];
    v13 = v12;

    v10 = v18;
  }

  return v13;
}

void sub_252180434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25218101C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25218202C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2521821CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_2521822AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_252183060(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 96));
  _Unwind_Resume(a1);
}

void sub_25218379C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_252183FF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_252185FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_252186470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_252188A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_252189454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_252189A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25218ACB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25218B020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25218B96C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_25218C344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25218D178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HUICCMenuTextLabel()
{
  v0 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
  v1 = objc_alloc_init(MEMORY[0x277D756B8]);
  v2 = MEMORY[0x277D74300];
  [v0 pointSize];
  v3 = [v2 fontWithDescriptor:v0 size:?];
  [v1 setFont:v3];

  [v1 setLineBreakMode:4];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setNumberOfLines:0];
  v4 = [MEMORY[0x277D75348] whiteColor];
  [v1 setTextColor:v4];

  [v1 setTextAlignment:1];

  return v1;
}

id HUICCImageViewWithImage(void *a1)
{
  v1 = MEMORY[0x277D755E8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  [v3 setContentMode:1];
  [v3 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [MEMORY[0x277D75348] systemWhiteColor];
  [v3 setTintColor:v5];

  [v3 setImage:v2];
  v6 = [v3 heightAnchor];
  v7 = [v6 constraintEqualToConstant:35.0];
  [v7 setActive:1];

  v8 = [v3 widthAnchor];
  v9 = [v8 constraintEqualToConstant:35.0];
  [v9 setActive:1];

  return v3;
}

id HUICCButtonVCWithSystemImageName(void *a1)
{
  v1 = MEMORY[0x277D755D0];
  v2 = a1;
  v3 = [v1 configurationWithPointSize:4 weight:23.0];
  v4 = [MEMORY[0x277D755B8] _systemImageNamed:v2 withConfiguration:v3];

  v5 = objc_alloc(MEMORY[0x277CFC988]);
  v6 = [MEMORY[0x277D75348] whiteColor];
  v7 = [v5 initWithGlyphImage:v4 highlightColor:v6 useLightStyle:1];

  [v7 setLabelsVisible:0];
  [v7 setToggleStateOnTap:0];
  v8 = [v7 view];
  [v8 sizeToFit];

  v9 = [v7 button];
  [v9 setHighlighted:0];

  v10 = [v7 button];
  v11 = [v10 widthAnchor];
  v12 = [v11 constraintEqualToConstant:54.0];
  [v12 setActive:1];

  v13 = [v7 button];
  v14 = [v13 heightAnchor];
  v15 = [v14 constraintEqualToConstant:54.0];
  [v15 setActive:1];

  return v7;
}

id HUICCBackgroundVisualStylingProviderForCategory(uint64_t a1)
{
  v2 = [MEMORY[0x277CFC968] _moduleBackgroundMaterialView];
  v3 = [v2 visualStylingProviderForCategory:a1];

  return v3;
}

uint64_t HUICCLargeTextEnabled()
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  if ([v1 isEqualToString:*MEMORY[0x277D76808]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D76800]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D767F8]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D767F0]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x277D767E8]];
  }

  return v2;
}

void sub_252191258(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id attributedStringWithImage(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = MEMORY[0x277CCAB48];
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = a1;
  v14 = objc_alloc_init(v9);
  v15 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v11];

  v16 = objc_alloc_init(MEMORY[0x277D74270]);
  v17 = [MEMORY[0x277D755D0] configurationWithTextStyle:v10 scale:1];
  v18 = [MEMORY[0x277D755B8] systemImageNamed:v13 withConfiguration:v17];

  v19 = [v18 imageWithTintColor:v12];

  v20 = [v19 imageWithRenderingMode:1];

  v21 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v10 variant:a5];

  [v21 capHeight];
  v23 = v22;
  [v20 size];
  v25 = v23 - v24;
  v26 = (roundf(v25) * 0.5);
  [v20 size];
  v28 = v27;
  [v20 size];
  [v16 setBounds:{0.0, v26, v28, v29}];
  [v16 setImage:v20];
  v30 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v16];
  [v14 appendAttributedString:v30];
  v31 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:@" "];
  [v14 appendAttributedString:v31];

  [v14 appendAttributedString:v15];

  return v14;
}

uint64_t sub_252191F64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2521A52AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3D20, &qword_2521A9940);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_2521984BC(v2, &v14 - v9, &qword_27F4D3D20, &qword_2521A9940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2521A515C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2521A573C();
    v13 = sub_2521A53DC();
    sub_2521A4FAC();

    sub_2521A529C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void __swiftcall HUIEQChart.Configuration.init(visibleGridCount:reachableGridCount:padCornerRadius:valueIndicatorActiveDimension:valueIndicatorInactiveDimension:gridDotDimension:gridDensity:edgeAntiAliasingSafetyInset:snapIndicatorToGrid:)(HearingUI::HUIEQChart::Configuration *__return_ptr retstr, Swift::Double visibleGridCount, Swift::Double reachableGridCount, Swift::Double padCornerRadius, Swift::Double valueIndicatorActiveDimension, Swift::Double valueIndicatorInactiveDimension, Swift::Double gridDotDimension, Swift::Int gridDensity, Swift::Double edgeAntiAliasingSafetyInset, Swift::Bool snapIndicatorToGrid)
{
  retstr->visibleGridCount = visibleGridCount;
  retstr->reachableGridCount = reachableGridCount;
  retstr->padCornerRadius = padCornerRadius;
  retstr->valueIndicatorActiveDimension = valueIndicatorActiveDimension;
  retstr->valueIndicatorInactiveDimension = valueIndicatorInactiveDimension;
  retstr->gridDotDimension = gridDotDimension;
  retstr->gridDensity = gridDensity;
  retstr->edgeAntiAliasingSafetyInset = edgeAntiAliasingSafetyInset;
  retstr->snapIndicatorToGrid = snapIndicatorToGrid;
}

double sub_252192334()
{
  xmmword_27F4D3C28 = xmmword_2521A9860;
  unk_27F4D3C38 = xmmword_2521A9870;
  result = 10.0;
  xmmword_27F4D3C48 = xmmword_2521A9880;
  qword_27F4D3C58 = 10;
  unk_27F4D3C60 = 0x3FF0000000000000;
  byte_27F4D3C68 = 0;
  return result;
}

__n128 static HUIEQChart.Configuration.mac.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27F4D3C20 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&qword_27F4D3C58;
  *(a1 + 32) = xmmword_27F4D3C48;
  *(a1 + 48) = v1;
  *(a1 + 64) = byte_27F4D3C68;
  result = unk_27F4D3C38;
  *a1 = xmmword_27F4D3C28;
  *(a1 + 16) = result;
  return result;
}

double sub_2521923E8()
{
  xmmword_27F4D3C78 = xmmword_2521A9890;
  unk_27F4D3C88 = xmmword_2521A98A0;
  result = 10.0;
  xmmword_27F4D3C98 = xmmword_2521A9880;
  qword_27F4D3CA8 = 10;
  unk_27F4D3CB0 = 0;
  byte_27F4D3CB8 = 0;
  return result;
}

__n128 sub_252192424@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27F4D3C70 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&qword_27F4D3CA8;
  *(a1 + 32) = xmmword_27F4D3C98;
  *(a1 + 48) = v1;
  *(a1 + 64) = byte_27F4D3CB8;
  result = unk_27F4D3C88;
  *a1 = xmmword_27F4D3C78;
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for HUIEQChart(uint64_t a1)
{
  result = qword_27F4D3D80;
  if (!qword_27F4D3D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

float64x2_t sub_252192554()
{
  v1 = type metadata accessor for HUIEQChart(0);
  v2 = v1;
  v3 = v0 + v1[14];
  if (*(v3 + 64) != 1)
  {
    v12 = (v0 + v1[5]);
    v13 = v12[1];
    v19 = *v12;
    v20 = v13;
    v21 = *(v12 + 1);
    goto LABEL_5;
  }

  v4 = (v0 + v1[6]);
  v5 = *v4;
  v6 = v4[1];
  LOBYTE(v4) = *(v4 + 16);
  v19 = v5;
  v20 = v6;
  LOBYTE(v21) = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F30, &qword_2521A9D58);
  MEMORY[0x25309A920](&v18, v7);
  v8 = (v0 + v2[5]);
  v9 = v8[1];
  v11 = v8[2];
  v10 = v8[3];
  if (LOBYTE(v18.f64[0]) == 1)
  {
    v19 = *v8;
    v20 = v9;
    *&v21 = v11;
    *(&v21 + 1) = v10;
LABEL_5:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F28, &qword_2521A9D50);
    MEMORY[0x25309A920](&v18, v14);
    return v18;
  }

  v19 = *v8;
  v20 = v9;
  *&v21 = v11;
  *(&v21 + 1) = v10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F28, &qword_2521A9D50);
  MEMORY[0x25309A920](&v18, v16);
  v17 = vdivq_f64(vsubq_f64(*(v0 + v2[12]), *(v0 + v2[11])), vdupq_lane_s64(COERCE__INT64(*(v3 + 48)), 0));
  return vmulq_f64(v17, vrndaq_f64(vdivq_f64(v18, v17)));
}

void sub_2521926A0()
{
  sub_252192554();
  v1 = type metadata accessor for HUIEQChart(0);
  v2 = v1[12];
  v3 = (v0 + v1[11]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v0 + v2) - *v3;
  v7 = *(v0 + v2 + 8) - v5;
  v13.origin.x = *v3;
  v13.origin.y = v5;
  v13.size.width = v6;
  v13.size.height = v7;
  MinX = CGRectGetMinX(v13);
  v14.origin.x = v4;
  v14.origin.y = v5;
  v14.size.width = v6;
  v14.size.height = v7;
  if (MinX > CGRectGetMaxX(v14))
  {
    __break(1u);
    goto LABEL_7;
  }

  v15.origin.x = v4;
  v15.origin.y = v5;
  v15.size.width = v6;
  v15.size.height = v7;
  MinY = CGRectGetMinY(v15);
  v16.origin.x = v4;
  v16.origin.y = v5;
  v16.size.width = v6;
  v16.size.height = v7;
  if (MinY > CGRectGetMaxY(v16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v10 = *(v0 + v1[14] + 48);
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = v10;
  v17.size.height = v10;
  v11 = CGRectGetMinX(v17);
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = v10;
  v18.size.height = v10;
  if (v11 > CGRectGetMaxX(v18))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v10;
  v19.size.height = v10;
  v12 = CGRectGetMinY(v19);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v10;
  v20.size.height = v10;
  if (v12 > CGRectGetMaxY(v20))
  {
LABEL_9:
    __break(1u);
  }
}

__n128 HUIEQChart.init(value:isActive:colorBorder:pulsingValueIndicator:defaultValue:minValue:maxValue:backgroundColor:configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, double a17@<D7>, char a18, uint64_t a19, __int128 *a20)
{
  v51 = a20[2];
  v52 = a20[3];
  v53 = *(a20 + 64);
  v49 = *a20;
  v50 = a20[1];
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3D20, &qword_2521A9940);
  swift_storeEnumTagMultiPayload();
  v34 = type metadata accessor for HUIEQChart(0);
  v35 = a9 + v34[9];
  type metadata accessor for CGPoint(0);
  sub_2521A55BC();
  *v35 = v47;
  *(v35 + 2) = v48;
  v36 = a9 + v34[5];
  *v36 = a1;
  *(v36 + 1) = a2;
  *(v36 + 2) = a10;
  *(v36 + 3) = a11;
  v37 = a9 + v34[6];
  *v37 = a3;
  *(v37 + 1) = a4;
  v37[16] = a5;
  v38 = a9 + v34[7];
  *v38 = a6;
  *(v38 + 1) = a7;
  v38[16] = a8;
  *(a9 + v34[8]) = a18;
  v39 = (a9 + v34[10]);
  *v39 = a12;
  v39[1] = a13;
  v40 = (a9 + v34[11]);
  *v40 = a14;
  v40[1] = a15;
  v41 = (a9 + v34[12]);
  *v41 = a16;
  v41[1] = a17;
  *(a9 + v34[13]) = a19;
  v42 = a9 + v34[14];
  *(v42 + 2) = v51;
  *(v42 + 3) = v52;
  v42[64] = v53;
  result = v50;
  *v42 = v49;
  *(v42 + 1) = v50;
  return result;
}

double HUIEQChart.body.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_2521A533C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3D28, &qword_2521A9948);
  sub_252192AB0(v1, (a1 + *(v3 + 44)));
  v4 = sub_2521A53FC();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3D30, &qword_2521A9950) + 36);
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_252192AB0@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3EC0, &qword_2521A9C80);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for HUIEQChart(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521977A0(a1, v13);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  sub_252197808(v13, v15 + v14);
  v16 = sub_2521A52DC();
  v32 = 1;
  sub_252193E44(&v39);
  v35 = v41;
  v36 = v42;
  v33 = v39;
  v34 = v40;
  v38[1] = v40;
  v38[2] = v41;
  v38[3] = v42;
  v38[4] = v43;
  v37 = v43;
  v38[0] = v39;
  sub_2521984BC(&v33, &v28, &qword_27F4D3EC8, &qword_2521A9C88);
  sub_252198438(v38, &qword_27F4D3EC8, &qword_2521A9C88);
  *&v31[23] = v34;
  *&v31[39] = v35;
  *&v31[55] = v36;
  *&v31[71] = v37;
  *&v31[7] = v33;
  LOBYTE(v13) = v32;
  v17 = sub_2521A542C();
  KeyPath = swift_getKeyPath();
  *(&v29[2] + 1) = *&v31[32];
  *(&v29[3] + 1) = *&v31[48];
  *(&v29[4] + 1) = *&v31[64];
  *(v29 + 1) = *v31;
  v28 = v16;
  LOBYTE(v29[0]) = v13;
  *(&v29[1] + 1) = *&v31[16];
  *&v29[5] = *&v31[79];
  *(&v29[5] + 1) = KeyPath;
  v30 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3ED0, &qword_2521A9CC0);
  sub_2521978F4();
  sub_2521A54EC();
  v43 = v29[3];
  v44 = v29[4];
  v45 = v29[5];
  v46 = v30;
  v39 = v28;
  v40 = v29[0];
  v41 = v29[1];
  v42 = v29[2];
  sub_252198438(&v39, &qword_27F4D3ED0, &qword_2521A9CC0);
  v19 = swift_getKeyPath();
  v20 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F00, &qword_2521A9D08) + 36)];
  *v20 = v19;
  *(v20 + 1) = 1;
  v20[16] = 0;
  v21 = swift_getKeyPath();
  v22 = &v9[*(v4 + 44)];
  *v22 = v21;
  v22[1] = 0x3FD999999999999ALL;
  sub_252197A34(v9, v6);
  v23 = v27;
  *v27 = sub_25219786C;
  v23[1] = v15;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F08, &qword_2521A9D40);
  sub_252197A34(v6, v24 + *(v25 + 48));

  sub_252197AA4(v9);
  sub_252197AA4(v6);
}

double sub_252192E44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_2521A565C();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F38, &qword_2521A9D60);
  sub_252192F0C(a2, a1, a3 + *(v7 + 44));
  sub_2521A50FC();
  sub_2521A50FC();
  sub_2521A565C();
  sub_2521A50EC();
  v8 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F40, &qword_2521A9D68) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t sub_252192F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v75 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F48, &qword_2521A9D70);
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v68 = &v65 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F50, &qword_2521A9D78);
  v73 = *(v6 - 8);
  v74 = v6;
  MEMORY[0x28223BE20](v6);
  v72 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = &v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F58, &qword_2521A9D80);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v71 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v65 - v14;
  sub_2521A50FC();
  v16 = sub_2521A565C();
  v66 = v17;
  v67 = v16;
  v18 = type metadata accessor for HUIEQChart(0);
  v19 = *(a1 + v18[13]);
  v20 = a1 + v18[14];
  v21 = *(v20 + 56);

  v22 = sub_2521A53FC();
  sub_2521A509C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  LOBYTE(v86[0]) = 0;
  sub_2521A565C();
  sub_2521A50EC();
  *&v82[7] = *&v82[56];
  *&v82[23] = *&v82[72];
  *&v82[39] = *&v82[88];
  v31 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F60, &qword_2521A9D88) + 36)];
  v32 = *(v20 + 16);
  v33 = *(sub_2521A519C() + 20);
  v34 = *MEMORY[0x277CE0118];
  v35 = sub_2521A52EC();
  (*(*(v35 - 8) + 104))(&v31[v33], v34, v35);
  *v31 = v32;
  *(v31 + 1) = v32;
  *&v31[*(sub_2521A518C() + 20)] = v21;
  *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F68, &qword_2521A9D90) + 36)] = 256;
  v36 = v66;
  *v15 = v67;
  *(v15 + 1) = v36;
  *(v15 + 2) = v19;
  v15[24] = v22;
  *(v15 + 25) = *v83;
  *(v15 + 7) = *&v83[3];
  *(v15 + 4) = v24;
  *(v15 + 5) = v26;
  *(v15 + 6) = v28;
  *(v15 + 7) = v30;
  v15[64] = 0;
  v37 = *&v82[16];
  *(v15 + 65) = *v82;
  *(v15 + 81) = v37;
  *(v15 + 97) = *&v82[32];
  *(v15 + 14) = *&v82[47];
  *&v15[*(v11 + 44)] = 0x3FF0000000000000;
  sub_252193594(a1, v84);
  v38 = *(a1 + v18[8]);
  if (qword_27F4D3D10 != -1)
  {
    swift_once();
  }

  v39 = qword_27F4D42C0;

  *&v40 = *&sub_252192554();
  v42 = v41;
  sub_2521A50FC();
  sub_2521936CC(v40, v42, v43, v44);
  LOBYTE(v86[0]) = 0;
  LOBYTE(v77) = v38;
  *(&v77 + 1) = 0x403C000000000000;
  *&v78 = v39;
  *(&v78 + 1) = 0x3FD6666666666666;
  LOBYTE(v79) = 0;
  *(&v79 + 1) = v45;
  *&v80 = v46;
  *(&v80 + 1) = 0x4010000000000000;
  v81 = 0;
  sub_2521A50FC();
  v47 = v68;
  sub_252193A08(v68, v48, v49);
  sub_2521A50DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F70, &qword_2521A9D98);
  sub_252197BD4();
  sub_252198364(&qword_27F4D3FD8, &qword_27F4D3F48, &qword_2521A9D70, MEMORY[0x277CDF728]);
  v50 = v76;
  v51 = v70;
  sub_2521A551C();
  (*(v69 + 8))(v47, v51);
  v86[2] = v79;
  v86[3] = v80;
  v87 = v81;
  v86[0] = v77;
  v86[1] = v78;
  sub_252198438(v86, &qword_27F4D3F70, &qword_2521A9D98);
  v52 = v71;
  sub_2521984BC(v15, v71, &qword_27F4D3F58, &qword_2521A9D80);
  v53 = v72;
  v54 = v73;
  v55 = *(v73 + 16);
  v56 = v74;
  v55(v72, v50, v74);
  v57 = v75;
  sub_2521984BC(v52, v75, &qword_27F4D3F58, &qword_2521A9D80);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3FE0, &qword_2521A9DC8);
  v59 = v57 + *(v58 + 48);
  v60 = v84[5];
  *(v59 + 64) = v84[4];
  *(v59 + 80) = v60;
  *(v59 + 96) = v84[6];
  *(v59 + 112) = v85;
  v61 = v84[1];
  *v59 = v84[0];
  *(v59 + 16) = v61;
  v62 = v84[3];
  *(v59 + 32) = v84[2];
  *(v59 + 48) = v62;
  v55((v57 + *(v58 + 64)), v53, v56);
  v63 = *(v54 + 8);
  v63(v76, v56);
  sub_252198438(v15, &qword_27F4D3F58, &qword_2521A9D80);
  v63(v53, v56);
  return sub_252198438(v52, &qword_27F4D3F58, &qword_2521A9D80);
}

int8x16_t sub_252193594@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2521926A0();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for HUIEQChart(0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F30, &qword_2521A9D58);
  MEMORY[0x25309A920](&v25, v9);
  v10 = v25;
  LOBYTE(v25) = 0;
  sub_2521A50FC();
  v23 = v12;
  v24 = v11;
  v13 = (a1 + *(v8 + 56));
  v14 = *v13;
  v15 = v13[1];
  v13 += 4;
  v22 = (v14 - v15) / v14;
  v16 = vld1q_dup_f64(v13);
  v21 = v16;
  v17 = sub_2521A53FC();
  *a2 = 0;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = 0;
  *(a2 + 32) = 10;
  *(a2 + 40) = 0x4000000000000000;
  *(a2 + 48) = v10;
  *(a2 + 56) = 0x3FD47AE147AE147BLL;
  *(a2 + 64) = v17;
  v18.f64[0] = v23;
  v18.f64[1] = v24;
  v19 = vsubq_f64(vmulq_n_f64(v18, v22), v21);
  result = vbicq_s8(v19, vcltzq_f64(v19));
  *(a2 + 88) = result;
  *(a2 + 72) = result;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0x4000000000000000;
  return result;
}

void sub_2521936CC(double a1, double a2, CGFloat a3, CGFloat a4)
{
  *&v40[3] = a1;
  *&v40[4] = a2;
  v7 = sub_2521A515C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v40 - v12;
  v14 = type metadata accessor for HUIEQChart(0);
  v15 = (v4 + v14[14]);
  v16 = (*v15 - v15[1]) / *v15;
  v17 = v15[4];
  v18 = v16 * a3 - v17;
  v19 = v16 * a4 - v17;
  if (v18 >= 0.0)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0.0;
  }

  if (v19 >= 0.0)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0.0;
  }

  v42.origin.x = 0.0;
  v42.origin.y = 0.0;
  v42.size.width = a3;
  v42.size.height = a4;
  v43 = CGRectInset(v42, v20, v21);
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  v25 = v14[12];
  v26 = (v4 + v14[11]);
  v27 = *v26;
  v28 = v26[1];
  v29 = *(v4 + v25) - *v26;
  v30 = *(v4 + v25 + 8) - v28;
  v43.origin.x = *v26;
  v43.origin.y = v28;
  v43.size.width = v29;
  v43.size.height = v30;
  MinX = CGRectGetMinX(v43);
  v44.origin.x = v27;
  v44.origin.y = v28;
  v44.size.width = v29;
  v44.size.height = v30;
  MaxX = CGRectGetMaxX(v44);
  *&v40[2] = MinX;
  if (MinX > MaxX)
  {
    __break(1u);
    goto LABEL_13;
  }

  *&v40[1] = MaxX;
  v45.origin.x = v27;
  v45.origin.y = v28;
  v45.size.width = v29;
  v45.size.height = v30;
  MinY = CGRectGetMinY(v45);
  v46.origin.x = v27;
  v46.origin.y = v28;
  v46.size.width = v29;
  v34 = MinY;
  v46.size.height = v30;
  MaxY = CGRectGetMaxY(v46);
  *v40 = v34;
  if (v34 > MaxY)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_252191F64(v13);
  (*(v8 + 104))(v10, *MEMORY[0x277CDFA90], v7);
  sub_2521A514C();
  v36 = *(v8 + 8);
  v36(v10, v7);
  v36(v13, v7);
  v37 = x;
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v38 = CGRectGetMinX(v47);
  v48.origin.x = v37;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  if (v38 > CGRectGetMaxX(v48))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v49.origin.x = v37;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  v39 = CGRectGetMinY(v49);
  v50.origin.x = v37;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  if (v39 > CGRectGetMaxY(v50))
  {
LABEL_15:
    __break(1u);
  }
}

uint64_t sub_252193A08@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  v42 = a1;
  v6 = type metadata accessor for HUIEQChart(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2521A537C();
  MEMORY[0x28223BE20](v11);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3FE8, &qword_2521A9DD0);
  MEMORY[0x28223BE20](v37);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3FF0, &qword_2521A9DD8);
  v15 = *(v14 - 8);
  v40 = v14;
  v41 = v15;
  MEMORY[0x28223BE20](v14);
  v38 = v3;
  v39 = &v37 - v16;
  v17 = (v3 + *(v7 + 64));
  v18 = (*v17 - v17[1]) / *v17;
  v19 = v17[4];
  v20 = v18 * a2 - v19;
  v21 = v18 * a3 - v19;
  if (v20 >= 0.0)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0.0;
  }

  if (v21 >= 0.0)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0.0;
  }

  v43.origin.x = 0.0;
  v43.origin.y = 0.0;
  v43.size.width = a2;
  v43.size.height = a3;
  v44 = CGRectInset(v43, v22, v23);
  x = v44.origin.x;
  y = v44.origin.y;
  width = v44.size.width;
  height = v44.size.height;
  sub_2521A517C();
  sub_2521A538C();
  sub_2521A50AC();
  sub_2521977A0(v3, &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v29 = (v28 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_252197808(v10, v30 + v28);
  v31 = (v30 + v29);
  *v31 = a2;
  v31[1] = a3;
  v32 = (v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v32 = x;
  v32[1] = y;
  v32[2] = width;
  v32[3] = height;
  sub_252198364(&qword_27F4D3FF8, &qword_27F4D3FE8, &qword_2521A9DD0, MEMORY[0x277CDDA40]);
  sub_252198090();
  v33 = v39;
  sub_2521A564C();

  sub_252198438(v13, &qword_27F4D3FE8, &qword_2521A9DD0);
  sub_2521977A0(v38, v10);
  v34 = swift_allocObject();
  sub_252197808(v10, v34 + v28);
  sub_252198364(&qword_27F4D4018, &qword_27F4D3FF0, &qword_2521A9DD8, MEMORY[0x277CDFB18]);
  v35 = v40;
  sub_2521A563C();

  return (*(v41 + 8))(v33, v35);
}

void sub_252193E44(uint64_t a1@<X8>)
{
  v2 = sub_2521A55AC();
  v3 = sub_2521A56CC();
  v4 = comfortSoundsLocString();

  sub_2521A56EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F10, &qword_2521A9D48);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2521A98B0;
  sub_2521926A0();
  v7 = v6;
  v44.origin.x = 0.0;
  v44.origin.y = 0.0;
  v44.size.width = 10.0;
  v44.size.height = 10.0;
  MinX = CGRectGetMinX(v44);
  v45.origin.x = 0.0;
  v45.origin.y = 0.0;
  v45.size.width = 10.0;
  v45.size.height = 10.0;
  MaxX = CGRectGetMaxX(v45);
  if (MinX > MaxX)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = MaxX;
  v46.origin.x = 0.0;
  v46.origin.y = 0.0;
  v46.size.width = 10.0;
  v46.size.height = 10.0;
  MinY = CGRectGetMinY(v46);
  v47.origin.x = 0.0;
  v47.origin.y = 0.0;
  v47.size.width = 10.0;
  v47.size.height = 10.0;
  if (MinY > CGRectGetMaxY(v47))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v43 = v2;
  *(v5 + 56) = MEMORY[0x277D85048];
  v15 = sub_252197B0C(v12, v13, v14);
  *(v5 + 64) = v15;
  *(v5 + 32) = (v7 - MinX) / (v10 - MinX) * 200.0 + -100.0;
  sub_2521A56DC();

  sub_252197B60(v16, v17, v18);
  v19 = sub_2521A54AC();
  v21 = v20;
  v40 = v22;
  v42 = v23;
  v41 = sub_2521A559C();
  v24 = sub_2521A56CC();
  v25 = comfortSoundsLocString();

  sub_2521A56EC();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2521A98B0;
  sub_2521926A0();
  v28 = v27;
  v48.origin.x = 0.0;
  v48.origin.y = 0.0;
  v48.size.width = 10.0;
  v48.size.height = 10.0;
  v29 = CGRectGetMinX(v48);
  v49.origin.x = 0.0;
  v49.origin.y = 0.0;
  v49.size.width = 10.0;
  v49.size.height = 10.0;
  if (v29 > CGRectGetMaxX(v49))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v50.origin.x = 0.0;
  v50.origin.y = 0.0;
  v50.size.width = 10.0;
  v50.size.height = 10.0;
  v30 = CGRectGetMinY(v50);
  v51.origin.x = 0.0;
  v51.origin.y = 0.0;
  v51.size.width = 10.0;
  v51.size.height = 10.0;
  MaxY = CGRectGetMaxY(v51);
  if (v30 > MaxY)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v32 = (v28 - v30) / (MaxY - v30) * 200.0 + -100.0;
  if (v32 == 0.0)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = -v32;
  }

  *(v26 + 56) = MEMORY[0x277D85048];
  *(v26 + 64) = v15;
  *(v26 + 32) = v33;
  sub_2521A56DC();

  v34 = sub_2521A54AC();
  v36 = v35;
  v38 = v37 & 1;
  *a1 = v43;
  *(a1 + 8) = v19;
  *(a1 + 16) = v21;
  *(a1 + 24) = v40 & 1;
  *(a1 + 32) = v42;
  *(a1 + 40) = v41;
  *(a1 + 48) = v34;
  *(a1 + 56) = v35;
  *(a1 + 64) = v37 & 1;
  *(a1 + 72) = v39;

  sub_252197BB4(v19, v21, v40 & 1);

  sub_252197BB4(v34, v36, v38);

  sub_252197BC4(v34, v36, v38);

  sub_252197BC4(v19, v21, v40 & 1);
}

void sub_2521942A8(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4008, &qword_2521A9DE0);
  MEMORY[0x28223BE20](v16);
  v18 = &v68 - v17;
  v19 = sub_2521A50CC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for HUIEQChart(0);
  v24 = (a2 + v23[6]);
  v25 = *v24;
  v26 = v24[1];
  LOBYTE(v24) = *(v24 + 16);
  v85 = v25;
  v86 = v26;
  v87 = v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F30, &qword_2521A9D58);
  v28 = MEMORY[0x25309A920](&v84, v27);
  if ((v84 & 1) == 0)
  {
    v29 = MEMORY[0x25309A9B0](v28, 0.2, 0.85, 0.0);
    v83 = a1;
    MEMORY[0x28223BE20](v29);
    *(&v68 - 2) = a2;
    sub_2521A511C();

    a1 = v83;
  }

  sub_2521984BC(a1, v18, &qword_27F4D4008, &qword_2521A9DE0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v32 = &qword_27F4D4008;
    v33 = &qword_2521A9DE0;
    v34 = v18;
    goto LABEL_8;
  }

  v30 = *v18;
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4038, &qword_2521A9DF8) + 48);
  if ((v30 & 1) == 0 || (*(v20 + 48))(&v18[v31], 1, v19) == 1)
  {
    v32 = &unk_27F4D4040;
    v33 = &unk_2521A9E00;
    v34 = &v18[v31];
LABEL_8:
    sub_252198438(v34, v32, v33);
    return;
  }

  (*(v20 + 32))(v22, &v18[v31], v19);
  sub_2521A50BC();
  v83 = v35;
  v37 = v36;
  v88.origin.x = 0.0;
  v88.origin.y = 0.0;
  v88.size.width = a3;
  v88.size.height = a4;
  MinX = CGRectGetMinX(v88);
  v89.origin.x = 0.0;
  v89.origin.y = 0.0;
  v89.size.width = a3;
  v89.size.height = a4;
  MaxX = CGRectGetMaxX(v89);
  v82 = MinX;
  if (MinX > MaxX)
  {
    __break(1u);
    goto LABEL_19;
  }

  v90.origin.x = 0.0;
  v90.origin.y = 0.0;
  v90.size.width = a3;
  v90.size.height = a4;
  MinY = CGRectGetMinY(v90);
  v91.origin.x = 0.0;
  v91.origin.y = 0.0;
  v91.size.width = a3;
  v91.size.height = a4;
  MaxY = CGRectGetMaxY(v91);
  if (MinY > MaxY)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v41 = MaxY;
  v80 = v37;
  v92.origin.x = -1.0;
  v92.origin.y = -1.0;
  v92.size.width = 2.0;
  v92.size.height = 2.0;
  v42 = CGRectGetMinX(v92);
  v93.origin.x = -1.0;
  v93.origin.y = -1.0;
  v93.size.width = 2.0;
  v93.size.height = 2.0;
  v79 = CGRectGetMaxX(v93);
  if (v42 > v79)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v78 = MinY;
  v94.origin.x = -1.0;
  v94.origin.y = -1.0;
  v94.size.width = 2.0;
  v94.size.height = 2.0;
  v43 = CGRectGetMinY(v94);
  v95.origin.x = -1.0;
  v95.origin.y = -1.0;
  v95.size.width = 2.0;
  v95.size.height = 2.0;
  v76 = CGRectGetMaxY(v95);
  v77 = v43;
  if (v43 > v76)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v75 = v42;
  sub_2521A50BC();
  v45 = v44;
  v47 = v46;
  v96.origin.x = a5;
  v96.origin.y = a6;
  v96.size.width = a7;
  v96.size.height = a8;
  v48 = CGRectGetMinX(v96);
  v97.origin.x = a5;
  v97.origin.y = a6;
  v97.size.width = a7;
  v97.size.height = a8;
  v49 = CGRectGetMaxX(v97);
  v74 = v48;
  v73 = v49;
  if (v48 > v49)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v70 = v45;
  v71 = v47;
  v72 = v41;
  v98.origin.x = a5;
  v98.origin.y = a6;
  v98.size.width = a7;
  v98.size.height = a8;
  v50 = CGRectGetMinY(v98);
  v99.origin.x = a5;
  v99.origin.y = a6;
  v99.size.width = a7;
  v99.size.height = a8;
  v51 = CGRectGetMaxY(v99);
  if (v50 > v51)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v69 = v51;
  v52 = v23[12];
  v53 = (a2 + v23[11]);
  v55 = *v53;
  v54 = v53[1];
  v56 = *(a2 + v52) - *v53;
  v68 = *(a2 + v52 + 8);
  v57 = v68 - v54;
  v100.origin.x = v55;
  v100.origin.y = v54;
  v100.size.width = v56;
  v100.size.height = v68 - v54;
  v58 = CGRectGetMinX(v100);
  v101.origin.x = v55;
  v101.origin.y = v54;
  v101.size.width = v56;
  v101.size.height = v57;
  v59 = CGRectGetMaxX(v101);
  if (v58 > v59)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v60 = v59;
  v102.origin.x = v55;
  v102.origin.y = v54;
  v102.size.width = v56;
  v102.size.height = v57;
  v61 = CGRectGetMinY(v102);
  v103.origin.x = v55;
  v103.origin.y = v54;
  v103.size.width = v56;
  v103.size.height = v57;
  v62 = CGRectGetMaxY(v103);
  if (v61 <= v62)
  {
    v63 = v75 + (*&v83 - v82) / (MaxX - v82) * (v79 - v75);
    v64 = v77 + (v80 - v78) / (v72 - v78) * (v76 - v77);
    v65 = v58 + (v70 - v74) / (v73 - v74) * (v60 - v58);
    v66 = v54 + v68 - (v61 + (v71 - v50) / (v69 - v50) * (v62 - v61));
    v67 = MEMORY[0x25309A9A0](0.05, 0.86, 0.25);
    MEMORY[0x28223BE20](v67);
    *(&v68 - 6) = a2;
    *(&v68 - 5) = v65;
    *(&v68 - 4) = v66;
    *(&v68 - 3) = v63;
    *(&v68 - 2) = v64;
    sub_2521A511C();

    (*(v20 + 8))(v22, v19);
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_252194960(uint64_t a1)
{
  type metadata accessor for HUIEQChart(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F30, &qword_2521A9D58);
  return sub_2521A55FC();
}

uint64_t sub_2521949DC(uint64_t a1, float64_t a2, float64_t a3, double a4, double a5)
{
  sub_252194A90(a2, a3);
  type metadata accessor for HUIEQChart(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4030, &qword_2521A9DF0);
  return sub_2521A55CC();
}

int *sub_252194A90(float64_t a1, float64_t a2)
{
  result = type metadata accessor for HUIEQChart(0);
  v4 = vmovn_s64(vmvnq_s8(vcgeq_f64(*(v2 + result[12]), *(v2 + result[11]))));
  if (v4.i8[0])
  {
    __break(1u);
  }

  else if ((v4.i8[4] & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F28, &qword_2521A9D50);
    return sub_2521A55FC();
  }

  __break(1u);
  return result;
}

void sub_252194B48(uint64_t a1, uint64_t a2)
{
  v3 = sub_2521A4F8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4020, &qword_2521A9DE8);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  v12 = sub_2521A4F4C();
  MEMORY[0x28223BE20](v12 - 8);
  v54 = sub_2521A4F0C();
  v13 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  v19 = MEMORY[0x25309A9B0](0.3, 1.0, 0.0);
  v55 = a2;
  v52 = v19;
  sub_2521A511C();
  sub_2521926A0();
  v21 = v20;
  v23 = v22;
  v56.origin.x = 0.0;
  v56.origin.y = 0.0;
  v56.size.width = 10.0;
  v56.size.height = 10.0;
  MinX = CGRectGetMinX(v56);
  v57.origin.x = 0.0;
  v57.origin.y = 0.0;
  v57.size.width = 10.0;
  v57.size.height = 10.0;
  MaxX = CGRectGetMaxX(v57);
  if (MinX > MaxX)
  {
    __break(1u);
    goto LABEL_12;
  }

  v26 = MaxX;
  v58.origin.x = 0.0;
  v58.origin.y = 0.0;
  v58.size.width = 10.0;
  v58.size.height = 10.0;
  MinY = CGRectGetMinY(v58);
  v59.origin.x = 0.0;
  v59.origin.y = 0.0;
  v59.size.width = 10.0;
  v59.size.height = 10.0;
  MaxY = CGRectGetMaxY(v59);
  if (MinY > MaxY)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v29 = MaxY;
  v50 = v4;
  v51 = v3;
  v30 = sub_2521A56CC();
  v31 = comfortSoundsLocString();

  sub_2521A56EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F10, &qword_2521A9D48);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_2521A98C0;
  v33 = (v21 - MinX) / (v26 - MinX) * 200.0 + -100.0;
  if (COERCE__INT64(fabs(v33)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v33 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v34 = MEMORY[0x277D83B88];
  v35 = MEMORY[0x277D83C10];
  *(v32 + 56) = MEMORY[0x277D83B88];
  *(v32 + 64) = v35;
  *(v32 + 32) = v33;
  v36 = (v23 - MinY) / (v29 - MinY) * 200.0 + -100.0;
  v37 = -v36;
  v38 = COERCE__INT64(fabs(v36)) > 0x7FEFFFFFFFFFFFFFLL;
  v39 = v36 == 0.0;
  v40 = 0.0;
  if (!v39)
  {
    v40 = v37;
    if (v38)
    {
      goto LABEL_16;
    }
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v40 < 9.22337204e18)
  {
    *(v32 + 96) = v34;
    *(v32 + 104) = v35;
    *(v32 + 72) = v40;
    sub_2521A56DC();

    sub_2521A4F3C();
    sub_2521A4F1C();
    v41 = *MEMORY[0x277CB8848];
    v42 = sub_2521A4EFC();
    v43 = *(v42 - 8);
    (*(v43 + 104))(v11, v41, v42);
    (*(v43 + 56))(v11, 0, 1, v42);
    v44 = sub_2521984BC(v11, v53, &qword_27F4D4020, &qword_2521A9DE8);
    sub_2521983C8(v44, v45, v46);
    sub_2521A4F2C();
    sub_252198438(v11, &qword_27F4D4020, &qword_2521A9DE8);
    v47 = v54;
    (*(v13 + 16))(v15, v18, v54);
    MEMORY[0x25309A2D0](v15);
    v48 = v51;
    sub_2521A4F7C();

    (*(v50 + 8))(v6, v48);
    (*(v13 + 8))(v18, v47);
    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_25219516C(uint64_t a1)
{
  type metadata accessor for HUIEQChart(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F30, &qword_2521A9D58);
  sub_2521A55FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4030, &qword_2521A9DF0);
  return sub_2521A55CC();
}

double sub_252195254@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_2521A533C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3D28, &qword_2521A9948);
  sub_252192AB0(v1, (a1 + *(v3 + 44)));
  v4 = sub_2521A53FC();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3D30, &qword_2521A9950) + 36);
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

double HUIEQChart.ValueIndicator.body.getter@<D0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 16);
  sub_2521A565C();
  sub_2521A50EC();
  *&v9[6] = v10;
  *&v9[22] = v11;
  *&v9[38] = v12;

  sub_2521A554C();
  v5 = sub_2521A556C();

  sub_2521A554C();
  v6 = sub_2521A556C();

  sub_2521A554C();
  v7 = sub_2521A556C();

  *a1 = v4;
  *(a1 + 8) = 256;
  *(a1 + 10) = *v9;
  *(a1 + 26) = *&v9[16];
  *(a1 + 42) = *&v9[32];
  *(a1 + 56) = *(&v12 + 1);
  *(a1 + 64) = v5;
  result = 4.0;
  *(a1 + 72) = xmmword_2521A98D0;
  *(a1 + 88) = 0x3FE0000000000000;
  *(a1 + 96) = v6;
  *(a1 + 104) = xmmword_2521A98E0;
  *(a1 + 120) = 0x4018000000000000;
  *(a1 + 128) = v7;
  *(a1 + 136) = xmmword_2521A98D0;
  *(a1 + 152) = 0x4000000000000000;
  return result;
}

__n128 HUIEQChart.DottedGrid.body.getter@<Q0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v3 = swift_allocObject();
  v4 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v4;
  result = *(v1 + 32);
  v6 = *(v1 + 48);
  *(v3 + 48) = result;
  *(v3 + 64) = v6;
  *a1 = sub_252196470;
  a1[1] = v3;
  return result;
}

uint64_t sub_252195488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2521A510C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  *a3 = sub_2521A565C();
  a3[1] = v9;
  v10 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3E38, "DM") + 44);
  *v10 = sub_2521A565C();
  *(v10 + 1) = v11;
  *(v10 + 2) = 0;
  v10[24] = 0;
  *(v10 + 4) = 0;
  v10[40] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3E40, &unk_2521A9C20);
  v13 = *(a2 + 32);
  if (__OFADD__(v13, 1))
  {
    __break(1u);
  }

  else if (((v13 + 1) & 0x8000000000000000) == 0)
  {
    v23[1] = *(result + 44);
    v23[2] = 0;
    v23[3] = v13 + 1;
    swift_getKeyPath();
    (*(v7 + 16))(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    v14 = (*(v7 + 80) + 80) & ~*(v7 + 80);
    v15 = swift_allocObject();
    v16 = *(a2 + 16);
    *(v15 + 1) = *a2;
    *(v15 + 2) = v16;
    v17 = *(a2 + 48);
    *(v15 + 3) = *(a2 + 32);
    *(v15 + 4) = v17;
    (*(v7 + 32))(&v15[v14], v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3E48, &qword_2521A9C48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3E50, &qword_2521A9C50);
    sub_252197318();
    sub_252198364(&qword_27F4D3E68, &qword_27F4D3E50, &qword_2521A9C50, MEMORY[0x277CDF0A0]);
    sub_2521A561C();
    sub_2521A50FC();
    v19 = v18 * -0.5 / v13;
    sub_2521A50FC();
    v21 = v20 * -0.5 / v13;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3E70, &qword_2521A9C58);
    v22 = &v10[*(result + 36)];
    *v22 = v19;
    v22[1] = v21;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_252195744@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2521A510C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = *a1;
  *a4 = 0;
  *(a4 + 8) = 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3E50, &qword_2521A9C50);
  v13 = *(a2 + 32);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else if ((v15 & 0x8000000000000000) == 0)
  {
    v20[1] = *(result + 36);
    v20[2] = 0;
    v20[3] = v15;
    swift_getKeyPath();
    (*(v9 + 16))(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
    v16 = (*(v9 + 80) + 88) & ~*(v9 + 80);
    v17 = swift_allocObject();
    v18 = *(a2 + 16);
    *(v17 + 16) = *a2;
    *(v17 + 32) = v18;
    v19 = *(a2 + 48);
    *(v17 + 48) = *(a2 + 32);
    *(v17 + 64) = v19;
    *(v17 + 80) = v11;
    (*(v9 + 32))(v17 + v16, v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3E48, &qword_2521A9C48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3E78, &qword_2521A9C60);
    sub_252197318();
    sub_252197508();
    return sub_2521A561C();
  }

  __break(1u);
  return result;
}

double sub_252195960@<D0>(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_252195B90();
  v8 = v7;
  sub_252195D88(a3);
  v13 = *(a2 + 1);
  v14 = *(a2 + 2);
  sub_252195D88(a3);
  sub_2521A565C();
  v9 = sub_2521A50EC();
  *&v12 = v8;
  *(&v12 + 1) = v15;
  LOBYTE(v13) = v16 & 1;
  *(&v13 + 1) = v17;
  LOBYTE(v14) = v18 & 1;
  *(&v14 + 1) = v19;
  MEMORY[0x25309A9B0](v9, 0.5, 1.0, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3E88, &qword_2521A9C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3E90, &qword_2521A9C70);
  sub_2521975FC();
  sub_2521976DC();
  sub_2521A552C();

  sub_2521A50FC();
  sub_2521A50FC();
  sub_2521A565C();
  sub_2521A50EC();
  v10 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3E78, &qword_2521A9C60) + 36));
  *v10 = v12;
  v10[1] = v13;
  result = *&v14;
  v10[2] = v14;
  return result;
}

void sub_252195B90()
{
  if (*v0 == 1 && (*(v0 + 24) & 1) == 0)
  {
    v7 = *(v0 + 56);
    v1 = *(v0 + 32);
    v8.origin.x = 0.0;
    v8.origin.y = 0.0;
    v8.size.width = v1;
    v8.size.height = v1;
    MinX = CGRectGetMinX(v8);
    v9.origin.x = 0.0;
    v9.origin.y = 0.0;
    v9.size.width = v1;
    v9.size.height = v1;
    if (MinX > CGRectGetMaxX(v9))
    {
      __break(1u);
    }

    else
    {
      v10.origin.x = 0.0;
      v10.origin.y = 0.0;
      v10.size.width = v1;
      v10.size.height = v1;
      MinY = CGRectGetMinY(v10);
      v11.origin.x = 0.0;
      v11.origin.y = 0.0;
      v11.size.width = v1;
      v11.size.height = v1;
      if (MinY <= CGRectGetMaxY(v11))
      {
        v12.origin.x = 0.0;
        v12.origin.y = 0.0;
        v12.size.width = v1;
        v12.size.height = v1;
        v4 = CGRectGetMinX(v12);
        v13.origin.x = 0.0;
        v13.origin.y = 0.0;
        v13.size.width = v1;
        v13.size.height = v1;
        if (v4 <= CGRectGetMaxX(v13))
        {
          v14.origin.x = 0.0;
          v14.origin.y = 0.0;
          v14.size.width = v1;
          v14.size.height = v1;
          v5 = CGRectGetMinY(v14);
          v15.origin.x = 0.0;
          v15.origin.y = 0.0;
          v15.size.width = v1;
          v15.size.height = v1;
          MaxY = CGRectGetMaxY(v15);
          if (v7 >= 0.0 && v5 <= MaxY)
          {
            return;
          }

LABEL_12:
          __break(1u);
          return;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_252195D88(uint64_t result)
{
  v2 = *(v1 + 32);
  if (*(v1 + 48) != 1)
  {
    if (!__OFADD__(v2, 1))
    {
      return result;
    }

    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result && __OFADD__(v2, 1))
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_252195DF4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = result;
  v7 = *(a2 + 32);
  if (*(a2 + 48))
  {
    v8 = 1.0;
    if (!a3)
    {
      goto LABEL_15;
    }

    v9 = __OFADD__(v7, 1);
    v10 = v7 + 1;
    if (!v9)
    {
      v11 = v10 - 1;
      if (v11 == a3 || a4 == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v9 = __OFADD__(v7, 1);
    v13 = v7 + 1;
    if (!v9)
    {
      if ((v13 & 1) == 0)
      {
LABEL_14:
        v8 = 0.7;
        goto LABEL_15;
      }

      v11 = v13 / 2;
      v8 = 1.0;
      if (v11 == a3)
      {
LABEL_15:
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3EB8, &qword_2521A9C78);
        (*(*(v14 - 8) + 16))(a5, v5, v14);
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3E90, &qword_2521A9C70);
        *(a5 + *(result + 36)) = v8;
        return result;
      }

LABEL_13:
      if (v11 != a4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 sub_252195EF0@<Q0>(void *a1@<X8>)
{
  v3 = swift_allocObject();
  v4 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v4;
  result = *(v1 + 32);
  v6 = *(v1 + 48);
  *(v3 + 48) = result;
  *(v3 + 64) = v6;
  *a1 = sub_252198678;
  a1[1] = v3;
  return result;
}

uint64_t HUIEQChart.GridDot.body.getter()
{
  if (qword_27F4D3D18 != -1)
  {
    swift_once();
  }

  v1 = MEMORY[0x25309A9B0](v0, 0.5, 0.7, 0.0);
  MEMORY[0x28223BE20](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3D38, &qword_2521A9958);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3D40, &qword_2521A9960);
  sub_252196480();
  sub_252196578();
  sub_2521A552C();
}

uint64_t sub_2521960B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = -0.1;
  if (a3 >= -0.1)
  {
    v5 = a3;
  }

  v6 = v5 * 3.5 + 1.0;
  v7 = a3 <= 1.0;
  v8 = 4.5;
  if (v7)
  {
    v8 = v6;
  }

  if (v8 >= 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  sub_2521A56BC();
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3D70, &qword_2521A9970);
  (*(*(v14 - 8) + 16))(a2, a1, v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3D40, &qword_2521A9960);
  v16 = a2 + *(result + 36);
  *v16 = v9;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  return result;
}

uint64_t sub_252196198()
{
  if (qword_27F4D3D18 != -1)
  {
    swift_once();
  }

  v1 = MEMORY[0x25309A9B0](v0, 0.5, 0.7, 0.0);
  MEMORY[0x28223BE20](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3D38, &qword_2521A9958);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3D40, &qword_2521A9960);
  sub_252196480();
  sub_252196578();
  sub_2521A552C();
}

uint64_t sub_252196328(uint64_t a1)
{
  v2 = sub_2521A515C();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_2521A520C();
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

unint64_t sub_252196480()
{
  result = qword_27F4D3D48;
  if (!qword_27F4D3D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D3D38, &qword_2521A9958);
    sub_252198364(&qword_27F4D3D50, &qword_27F4D3D58, &qword_2521A9968, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D3D48);
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

unint64_t sub_252196578()
{
  result = qword_27F4D3D60;
  if (!qword_27F4D3D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D3D40, &qword_2521A9960);
    sub_252198364(&qword_27F4D3D68, &qword_27F4D3D70, &qword_2521A9970, MEMORY[0x277CE0520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D3D60);
  }

  return result;
}

uint64_t sub_2521966B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3D78, &qword_2521A9AE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_252196794(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3D78, &qword_2521A9AE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_25219685C(uint64_t a1)
{
  sub_252196A04(319, &qword_27F4D3D90, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_252196A04(319, &qword_27F4D3D98, type metadata accessor for CGPoint, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_252198614(319, &qword_27F4D3DA0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_252196A04(319, &qword_27F4D3DA8, type metadata accessor for CGPoint, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CGPoint(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_252196A04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_252196A90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_252196AE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_252196B60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_252196BA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_252196C10(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[64])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_252196C64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HUIEQChart.GridDot(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HUIEQChart.GridDot(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_252196D70(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252196DEC()
{
  result = qword_27F4D3DC0;
  if (!qword_27F4D3DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D3D30, &qword_2521A9950);
    sub_252198364(&qword_27F4D3DC8, &qword_27F4D3DD0, &qword_2521A9BA8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D3DC0);
  }

  return result;
}

unint64_t sub_252196EA8()
{
  result = qword_27F4D3DD8;
  if (!qword_27F4D3DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D3DE0, &qword_2521A9BB0);
    sub_252196F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D3DD8);
  }

  return result;
}

unint64_t sub_252196F34()
{
  result = qword_27F4D3DE8;
  if (!qword_27F4D3DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D3DF0, &qword_2521A9BB8);
    sub_252196FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D3DE8);
  }

  return result;
}

unint64_t sub_252196FC0()
{
  result = qword_27F4D3DF8;
  if (!qword_27F4D3DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D3E00, &qword_2521A9BC0);
    sub_25219704C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D3DF8);
  }

  return result;
}

unint64_t sub_25219704C()
{
  result = qword_27F4D3E08;
  if (!qword_27F4D3E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D3E10, &qword_2521A9BC8);
    sub_252198364(&qword_27F4D3D50, &qword_27F4D3D58, &qword_2521A9968, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D3E08);
  }

  return result;
}

uint64_t sub_252197148()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D3D38, &qword_2521A9958);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D3D40, &qword_2521A9960);
  sub_252196480();
  sub_252196578();
  return swift_getOpaqueTypeConformance2();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25219720C()
{
  v1 = sub_2521A510C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252197294@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2521A510C() - 8);
  v6 = v2 + ((*(v5 + 80) + 80) & ~*(v5 + 80));

  return sub_252195744(a1, v2 + 16, v6, a2);
}

unint64_t sub_252197318()
{
  result = qword_27F4D3E58;
  if (!qword_27F4D3E58)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D3E48, &qword_2521A9C48);
    sub_2521973A4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D3E58);
  }

  return result;
}

unint64_t sub_2521973A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F4D3E60;
  if (!qword_27F4D3E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D3E60);
  }

  return result;
}

uint64_t sub_2521973F8()
{
  v1 = sub_2521A510C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_252197480@<D0>(uint64_t a2@<X8>)
{
  sub_2521A510C();
  v4 = *(v2 + 80);

  return sub_252195960((v2 + 16), v4, a2);
}

unint64_t sub_252197508()
{
  result = qword_27F4D3E80;
  if (!qword_27F4D3E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D3E78, &qword_2521A9C60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D3E88, &qword_2521A9C68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D3E90, &qword_2521A9C70);
    sub_2521975FC();
    sub_2521976DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D3E80);
  }

  return result;
}

unint64_t sub_2521975FC()
{
  result = qword_27F4D3E98;
  if (!qword_27F4D3E98)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D3E88, &qword_2521A9C68);
    sub_252197688(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D3E98);
  }

  return result;
}

unint64_t sub_252197688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F4D3EA0;
  if (!qword_27F4D3EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D3EA0);
  }

  return result;
}

unint64_t sub_2521976DC()
{
  result = qword_27F4D3EA8;
  if (!qword_27F4D3EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D3E90, &qword_2521A9C70);
    sub_252198364(&qword_27F4D3EB0, &qword_27F4D3EB8, &qword_2521A9C78, MEMORY[0x277CE0520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D3EA8);
  }

  return result;
}

uint64_t sub_2521977A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HUIEQChart(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252197808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HUIEQChart(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_25219786C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for HUIEQChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_252192E44(a1, v6, a2);
}

unint64_t sub_2521978F4()
{
  result = qword_27F4D3ED8;
  if (!qword_27F4D3ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D3ED0, &qword_2521A9CC0);
    sub_252198364(&qword_27F4D3EE0, &qword_27F4D3EE8, &qword_2521A9CC8, MEMORY[0x277CE1138]);
    sub_252198364(&qword_27F4D3EF0, &qword_27F4D3EF8, &qword_2521A9CD0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D3ED8);
  }

  return result;
}

uint64_t sub_252197A34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3EC0, &qword_2521A9C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252197AA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3EC0, &qword_2521A9C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_252197B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F4D3F18;
  if (!qword_27F4D3F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D3F18);
  }

  return result;
}

unint64_t sub_252197B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F4D3F20;
  if (!qword_27F4D3F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D3F20);
  }

  return result;
}

void sub_252197BB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_252197BC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_252197BD4()
{
  result = qword_27F4D3F78;
  if (!qword_27F4D3F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D3F70, &qword_2521A9D98);
    sub_252196D70(&qword_27F4D3F80, &qword_27F4D3F88, &qword_2521A9DA0, sub_252197CB8);
    sub_252198364(&qword_27F4D3FC8, &qword_27F4D3FD0, &qword_2521A9DC0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D3F78);
  }

  return result;
}

unint64_t sub_252197CB8()
{
  result = qword_27F4D3F90;
  if (!qword_27F4D3F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D3F98, &qword_2521A9DA8);
    sub_252197D70();
    sub_252198364(&qword_27F4D3FB8, &qword_27F4D3FC0, &qword_2521A9DB8, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D3F90);
  }

  return result;
}

unint64_t sub_252197D70()
{
  result = qword_27F4D3FA0;
  if (!qword_27F4D3FA0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D3FA8, &qword_2521A9DB0);
    sub_252197DFC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D3FA0);
  }

  return result;
}

unint64_t sub_252197DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F4D3FB0;
  if (!qword_27F4D3FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D3FB0);
  }

  return result;
}

uint64_t sub_252197E50()
{
  v1 = *(type metadata accessor for HUIEQChart(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3D20, &qword_2521A9940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2521A515C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32, v2 | 7);
}

void sub_252197FDC(uint64_t a1)
{
  v3 = *(type metadata accessor for HUIEQChart(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + v6 + 16);
  v13 = *(v1 + v6 + 24);

  sub_2521942A8(a1, v1 + v4, v8, v9, v10, v11, v12, v13);
}

unint64_t sub_252198090()
{
  result = qword_27F4D4000;
  if (!qword_27F4D4000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D4008, &qword_2521A9DE0);
    sub_25219811C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4000);
  }

  return result;
}

unint64_t sub_25219811C()
{
  result = qword_27F4D4010;
  if (!qword_27F4D4010)
  {
    sub_2521A50CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4010);
  }

  return result;
}

uint64_t objectdestroy_52Tm()
{
  v1 = *(type metadata accessor for HUIEQChart(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3D20, &qword_2521A9940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2521A515C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_2521982F4(uint64_t a1)
{
  v3 = *(type metadata accessor for HUIEQChart(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_252194B48(a1, v4);
}

uint64_t sub_252198364(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2521983C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F4D4028;
  if (!qword_27F4D4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4028);
  }

  return result;
}

uint64_t sub_252198438(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2521984BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_252198530(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_252198550(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_2521985A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2521985C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_252198614(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_25219868C()
{
  sub_2521A545C();
  sub_2521A543C();
  sub_2521A546C();

  v0 = sub_2521A541C();

  qword_27F4D4BA8 = v0;
  return result;
}

uint64_t sub_2521986E4()
{
  sub_2521A547C();
  sub_2521A544C();
  v0 = sub_2521A546C();

  qword_27F4D4BB0 = v0;
  return result;
}

uint64_t sub_252198728()
{
  v0 = sub_2521A532C();
  __swift_allocate_value_buffer(v0, qword_27F4D4BB8);
  v1 = __swift_project_value_buffer(v0, qword_27F4D4BB8);
  v2 = *MEMORY[0x277CE0248];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

void sub_2521987B0()
{
  v0 = sub_2521A56CC();
  v1 = hearingLocString();

  v2 = sub_2521A56EC();
  v4 = v3;

  qword_27F4D4BD0 = v2;
  *algn_27F4D4BD8 = v4;
}

void sub_252198828()
{
  v0 = sub_2521A56CC();
  v1 = hearingLocString();

  v2 = sub_2521A56EC();
  v4 = v3;

  qword_27F4D4BE0 = v2;
  *algn_27F4D4BE8 = v4;
}

void sub_2521988A0()
{
  v0 = sub_2521A56CC();
  v1 = hearingLocString();

  v2 = sub_2521A56EC();
  v4 = v3;

  qword_27F4D4BF0 = v2;
  *algn_27F4D4BF8 = v4;
}

uint64_t sub_25219895C(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v6 = sub_2521A553C();
  v7 = MEMORY[0x28223BE20](v6);
  (*(v9 + 104))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v7);
  result = sub_2521A557C();
  *a5 = result;
  return result;
}

uint64_t sub_252198A50()
{
  v0 = [objc_opt_self() darkGrayColor];
  result = sub_2521A558C();
  qword_27F4D4C10 = result;
  return result;
}

void sub_252198A90(uint64_t a1)
{
  v3 = type metadata accessor for Pill(0);
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 - 1;
  if (__OFSUB__(*v1, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v8 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__OFADD__(v8, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((*v1 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v9 = v1[1];
  v17 = v1;
  v10 = v1[4];
  v19 = xmmword_2521A9E30;
  v18 = xmmword_2521A9E40;
  do
  {
    sub_2521A4F5C();
    if (qword_27F4D3D00 != -1)
    {
      swift_once();
    }

    v11 = qword_27F4D4C10;
    v6[v3[5]] = v9 == 0;
    *&v6[v3[6]] = v11;
    *&v6[v3[7]] = 0x3FD3333333333333;
    *&v6[v3[8]] = a1;
    v12 = &v6[v3[9]];
    v13 = v18;
    *v12 = v19;
    v12[1] = v13;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_25219D8D0(0, v10[2] + 1, 1, v10);
    }

    v15 = v10[2];
    v14 = v10[3];
    if (v15 >= v14 >> 1)
    {
      v10 = sub_25219D8D0((v14 > 1), v15 + 1, 1, v10);
    }

    v10[2] = v15 + 1;
    sub_25219EE68(v6, v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, type metadata accessor for Pill);
    --v9;
    --v7;
  }

  while (v7);
  v17[4] = v10;
}

uint64_t sub_252198CD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v71 = sub_2521A531C();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_2521A53CC();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D40D0, &qword_2521A9FB8);
  MEMORY[0x28223BE20](v59);
  v6 = &v56 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D40D8, &qword_2521A9FC0);
  MEMORY[0x28223BE20](v60);
  v57 = &v56 - v7;
  v8 = sub_2521A532C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D40E0, &qword_2521A9FC8);
  MEMORY[0x28223BE20](v58);
  v13 = &v56 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D40E8, &qword_2521A9FD0);
  MEMORY[0x28223BE20](v74);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D40F0, &qword_2521A9FD8);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v73 = &v56 - v19;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D40F8, &qword_2521A9FE0);
  MEMORY[0x28223BE20](v64);
  v65 = &v56 - v20;
  v21 = sub_2521A534C();
  v22 = type metadata accessor for SoundMeterView(0);
  v23 = *(v2 + *(v22 + 24));
  *v13 = v21;
  *(v13 + 1) = v23;
  v13[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4100, &qword_2521A9FE8);
  sub_2521997A0(v2, &v13[*(v24 + 44)]);
  v25 = *(v22 + 32);
  v72 = v2;
  if (*(v2 + v25 + 26) != 1)
  {
    goto LABEL_6;
  }

  sub_25219D5CC(v11);
  if (qword_27F4D3CD0 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v8, qword_27F4D4BB8);
  v27 = sub_25219DF8C(v11, v26);
  (*(v9 + 8))(v11, v8);
  if (v27)
  {
    sub_2521A565C();
    sub_2521A51AC();
    v28 = v57;
    sub_2521984BC(v13, v57, &qword_27F4D40E0, &qword_2521A9FC8);
    v29 = (v28 + *(v60 + 36));
    v30 = v84;
    v29[4] = v83;
    v29[5] = v30;
    v29[6] = v85;
    v31 = v80;
    *v29 = v79;
    v29[1] = v31;
    v32 = v82;
    v29[2] = v81;
    v29[3] = v32;
    sub_2521984BC(v28, v6, &qword_27F4D40D8, &qword_2521A9FC0);
    swift_storeEnumTagMultiPayload();
    sub_25219D45C();
    sub_252198364(&qword_27F4D4110, &qword_27F4D40E0, &qword_2521A9FC8, MEMORY[0x277CE1198]);
    sub_2521A536C();
    sub_252198438(v28, &qword_27F4D40D8, &qword_2521A9FC0);
  }

  else
  {
LABEL_6:
    sub_2521984BC(v13, v6, &qword_27F4D40E0, &qword_2521A9FC8);
    swift_storeEnumTagMultiPayload();
    sub_25219D45C();
    sub_252198364(&qword_27F4D4110, &qword_27F4D40E0, &qword_2521A9FC8, MEMORY[0x277CE1198]);
    sub_2521A536C();
  }

  sub_252198438(v13, &qword_27F4D40E0, &qword_2521A9FC8);
  sub_25219ECEC(v15, v18, &qword_27F4D40E8, &qword_2521A9FD0);
  v33 = v61;
  sub_2521A53BC();
  v34 = sub_25219D514();
  sub_2521A550C();
  (*(v62 + 8))(v33, v63);
  sub_252198438(v18, &qword_27F4D40E8, &qword_2521A9FD0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  if (*&v77 == 80)
  {
    if (qword_27F4D3CE0 != -1)
    {
      swift_once();
    }

    v35 = &qword_27F4D4BE0;
    goto LABEL_15;
  }

  if (v77 == 0.0)
  {
    if (qword_27F4D3CD8 != -1)
    {
      swift_once();
    }

    v35 = &qword_27F4D4BD0;
LABEL_15:
    v36 = *v35;
    v37 = v35[1];

    goto LABEL_17;
  }

  v36 = 0.0;
  v37 = 0xE000000000000000;
LABEL_17:
  v77 = v36;
  v78 = v37;

  MEMORY[0x25309AA30](8236, 0xE200000000000000);

  v39 = v77;
  v38 = v78;
  if (qword_27F4D3CE8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F10, &qword_2521A9D48);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2521A98B0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  v41 = sub_25219B3BC(v77);
  v43 = v42;
  *(v40 + 56) = MEMORY[0x277D837D0];
  *(v40 + 64) = sub_25219D7DC(v41, v42, v44);
  *(v40 + 32) = v41;
  *(v40 + 40) = v43;
  v45 = sub_2521A56DC();
  v47 = v46;

  v77 = v39;
  v78 = v38;

  MEMORY[0x25309AA30](v45, v47);

  v75 = v74;
  v76 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_252197B60(OpaqueTypeConformance2, v49, v50);
  v51 = v65;
  v52 = v67;
  v53 = v73;
  sub_2521A54FC();

  (*(v66 + 8))(v53, v52);
  v54 = v68;
  sub_2521A530C();
  sub_2521A516C();
  (*(v69 + 8))(v54, v71);
  return sub_25219D830(v51);
}

uint64_t sub_2521997A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4138, &qword_2521AA090);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v46 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = (a1 + *(type metadata accessor for SoundMeterView(0) + 24));
  v39 = a1;
  sub_2521A565C();
  sub_2521A50EC();
  v44 = v50;
  v45 = v48;
  v42 = v53;
  v43 = v52;
  v62 = 1;
  v61 = v49;
  v60 = v51;
  v41 = sub_2521A52BC();
  LOBYTE(v54) = 1;
  sub_252199D70(a1, &v82);
  v69 = *&v83[80];
  v70 = *&v83[96];
  v71[0] = *&v83[112];
  *(v71 + 11) = *&v83[123];
  v65 = *&v83[16];
  v66 = *&v83[32];
  v67 = *&v83[48];
  v68 = *&v83[64];
  v63 = v82;
  v64 = *v83;
  v72[6] = *&v83[80];
  v72[7] = *&v83[96];
  v73[0] = *&v83[112];
  *(v73 + 11) = *&v83[123];
  v72[2] = *&v83[16];
  v72[3] = *&v83[32];
  v72[4] = *&v83[48];
  v72[5] = *&v83[64];
  v72[0] = v82;
  v72[1] = *v83;
  sub_2521984BC(&v63, &v77, &qword_27F4D4140, &qword_2521AA098);
  sub_252198438(v72, &qword_27F4D4140, &qword_2521AA098);
  *(&v47[6] + 7) = v69;
  *(&v47[7] + 7) = v70;
  *(&v47[8] + 7) = v71[0];
  *(&v47[9] + 2) = *(v71 + 11);
  *(&v47[2] + 7) = v65;
  *(&v47[3] + 7) = v66;
  *(&v47[4] + 7) = v67;
  *(&v47[5] + 7) = v68;
  *(v47 + 7) = v63;
  *(&v47[1] + 7) = v64;
  v11 = v54;
  v40 = v54;
  v35 = sub_2521A53EC();
  v12 = *v10;
  *v9 = sub_2521A533C();
  *(v9 + 1) = v12;
  v9[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4148, &qword_2521AA0A0);
  sub_25219AFC0(v39, &v9[*(v13 + 44)]);
  v14 = sub_2521A53EC();
  v15 = &v9[*(v5 + 44)];
  *v15 = v14;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  v15[40] = 1;
  sub_2521A565C();
  sub_2521A50EC();
  v38 = v56;
  v39 = v54;
  v36 = v59;
  v37 = v58;
  v76 = 1;
  v75 = v55;
  v74 = v57;
  LOBYTE(v12) = v62;
  LOBYTE(v10) = v61;
  LOBYTE(v5) = v60;
  v16 = v46;
  sub_2521984BC(v9, v46, &qword_27F4D4138, &qword_2521AA090);
  v32 = v76;
  v33 = v75;
  v34 = v74;
  *a2 = 0;
  *(a2 + 8) = v12;
  v17 = v44;
  *(a2 + 16) = v45;
  *(a2 + 24) = v10;
  *(a2 + 32) = v17;
  *(a2 + 40) = v5;
  v18 = v42;
  *(a2 + 48) = v43;
  *(a2 + 56) = v18;
  v19 = v41;
  v77 = v41;
  LOBYTE(v78[0]) = v11;
  *(&v78[2] + 1) = v47[2];
  *(&v78[1] + 1) = v47[1];
  *(v78 + 1) = v47[0];
  *(&v78[6] + 1) = v47[6];
  *(&v78[5] + 1) = v47[5];
  *(&v78[4] + 1) = v47[4];
  *(&v78[3] + 1) = v47[3];
  *(&v78[10] + 1) = v47[10];
  *(&v78[9] + 1) = v47[9];
  *(&v78[8] + 1) = v47[8];
  *(&v78[7] + 1) = v47[7];
  v20 = v35;
  BYTE8(v78[10]) = v35;
  v79 = 0u;
  v80 = 0u;
  v81 = 1;
  *(a2 + 288) = 1;
  v21 = v78[8];
  *(a2 + 192) = v78[7];
  *(a2 + 208) = v21;
  v22 = v78[4];
  *(a2 + 128) = v78[3];
  *(a2 + 144) = v22;
  v23 = v78[6];
  *(a2 + 160) = v78[5];
  *(a2 + 176) = v23;
  v24 = v78[0];
  *(a2 + 64) = v77;
  *(a2 + 80) = v24;
  v25 = v78[2];
  *(a2 + 96) = v78[1];
  *(a2 + 112) = v25;
  v26 = v78[10];
  *(a2 + 224) = v78[9];
  *(a2 + 240) = v26;
  v27 = v80;
  *(a2 + 256) = v79;
  *(a2 + 272) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4150, &qword_2521AA0A8);
  sub_2521984BC(v16, a2 + *(v28 + 64), &qword_27F4D4138, &qword_2521AA090);
  v29 = a2 + *(v28 + 80);
  *v29 = 0;
  *(v29 + 8) = v32;
  *(v29 + 16) = v39;
  *(v29 + 24) = v33;
  *(v29 + 32) = v38;
  *(v29 + 40) = v34;
  v30 = v36;
  *(v29 + 48) = v37;
  *(v29 + 56) = v30;
  sub_2521984BC(&v77, &v82, &qword_27F4D4158, &qword_2521AA0B0);
  sub_252198438(v9, &qword_27F4D4138, &qword_2521AA090);
  sub_252198438(v16, &qword_27F4D4138, &qword_2521AA090);
  *&v83[113] = v47[7];
  *&v83[129] = v47[8];
  *&v83[145] = v47[9];
  *&v83[49] = v47[3];
  *&v83[65] = v47[4];
  *&v83[81] = v47[5];
  *&v83[97] = v47[6];
  *&v83[1] = v47[0];
  *&v83[17] = v47[1];
  v82 = v19;
  v83[0] = v40;
  v84 = v47[10];
  *&v83[33] = v47[2];
  v85 = v20;
  v86 = 0u;
  v87 = 0u;
  v88 = 1;
  return sub_252198438(&v82, &qword_27F4D4158, &qword_2521AA0B0);
}

uint64_t sub_252199D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25219A100(&v53);
  v25 = *(&v53 + 1);
  v26 = v53;
  v23 = *(&v54 + 1);
  v24 = v54;
  v22 = v55;
  if (*(a1 + *(type metadata accessor for SoundMeterView(0) + 32) + 25) == 1)
  {
    sub_25219A3C0(&v53);
    v5 = *(&v53 + 1);
    v4 = v53;
    v6 = v54;
    v7 = *(&v54 + 1);
    v20 = *(&v55 + 1);
    v8 = v55;
    LOBYTE(v48) = v54;
    LOBYTE(v37) = v56;
    sub_252197BB4(v53, *(&v53 + 1), v54);

    sub_252197BC4(v4, v5, v6);

    sub_252197BB4(v4, v5, v6);
    *&v53 = v4;
    LOBYTE(v54) = v48;
    LOBYTE(v56) = v37;

    v9 = 1;
    v10 = v20;
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v8 = 0;
    v10 = 0;
    v9 = 0;
    *&v53 = 0;
    *&v54 = 0;
    *&v56 = 0;
  }

  *(&v53 + 1) = v5;
  *(&v54 + 1) = v7;
  *&v55 = v8;
  *(&v55 + 1) = v10;
  *(&v56 + 1) = 0;
  v57 = v9;
  sub_25219A610(&v48);
  v11 = v48;
  v18 = *(&v48 + 1);
  v12 = v49;
  v13 = *(&v49 + 1);
  v19 = *(&v49 + 1);
  v21 = v48;
  KeyPath = swift_getKeyPath();
  v30 = v55;
  v31 = v56;
  v33[2] = v55;
  v33[3] = v56;
  v28 = v53;
  v29 = v54;
  v33[0] = v53;
  v33[1] = v54;
  LOBYTE(v48) = v12;
  v32 = v57;
  v34 = v57;
  v41 = v57;
  v39 = v55;
  v40 = v56;
  v37 = v53;
  v38 = v54;
  v35 = v11;
  v36[0] = v12;
  *&v36[8] = v13;
  *&v36[16] = KeyPath;
  *&v36[24] = 258;
  v36[26] = 1;

  sub_2521984BC(v33, &v48, &qword_27F4D4260, &qword_2521AA230);
  sub_2521984BC(&v35, &v48, &qword_27F4D4268, &qword_2521AA238);
  sub_252198438(&v53, &qword_27F4D4260, &qword_2521AA230);
  *&v27[7] = v35;
  *&v27[23] = *v36;
  *&v27[34] = *&v36[11];
  v14 = v37;
  *(a2 + 56) = v38;
  v15 = v40;
  *(a2 + 72) = v39;
  *(a2 + 88) = v15;
  *(a2 + 40) = v14;
  *(a2 + 105) = *v27;
  *a2 = v26;
  *(a2 + 8) = v25;
  *(a2 + 16) = v24;
  *(a2 + 24) = v23;
  *(a2 + 32) = v22;
  *(a2 + 104) = v41;
  *(a2 + 121) = *&v27[16];
  *(a2 + 137) = *&v27[32];
  *(a2 + 153) = *&v27[48];
  v42[0] = v21;
  v42[1] = v18;
  v43 = v12;
  v44 = v19;
  v45 = KeyPath;
  v46 = 258;
  v47 = 1;
  sub_252198438(v42, &qword_27F4D4268, &qword_2521AA238);
  v50 = v30;
  v51 = v31;
  v52 = v32;
  v48 = v28;
  v49 = v29;
  sub_252198438(&v48, &qword_27F4D4260, &qword_2521AA230);
}

double sub_25219A100@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SoundMeterView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  if (v9 >= 0.0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2521A506C();
  }

  v2 = sub_2521A559C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  if (*&v9 == 80)
  {
    if (qword_27F4D3CF8 != -1)
    {
      swift_once();
    }

    v3 = &qword_27F4D4C08;
  }

  else if (v9 == 0.0)
  {
    if (qword_27F4D3CF0 != -1)
    {
      swift_once();
    }

    v3 = &qword_27F4D4C00;
  }

  else
  {
    if (qword_27F4D3D00 != -1)
    {
      swift_once();
    }

    v3 = &qword_27F4D4C10;
  }

  v4 = *v3;

  KeyPath = swift_getKeyPath();
  if (qword_27F4D3CC0 != -1)
  {
    swift_once();
  }

  v6 = qword_27F4D4BA8;
  v7 = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v4;
  a1[3] = v7;
  a1[4] = v6;

  return result;
}

uint64_t sub_25219A3C0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SoundMeterView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  if (v18 < 0.0)
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  if (*&v18 != 80)
  {
    if (v18 == 0.0)
    {
      if (qword_27F4D3CD8 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

LABEL_6:
    v4 = 0xE000000000000000;
    goto LABEL_9;
  }

  if (qword_27F4D3CE0 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_8:

LABEL_9:
  sub_252197B60(v4, v2, v3);
  v5 = sub_2521A54AC();
  v7 = v6;
  v9 = v8;
  if (qword_27F4D3CC0 != -1)
  {
    swift_once();
  }

  v10 = sub_2521A549C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_252197BC4(v5, v7, v9 & 1);

  result = swift_getKeyPath();
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

char *sub_25219A610@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v106 = a1;
  v3 = sub_2521A4EEC();
  v4 = *(v3 - 8);
  v104 = v3;
  v105 = v4;
  MEMORY[0x28223BE20](v3);
  v103 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2521A532C();
  v101 = *(v6 - 8);
  v102 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F4D3CE8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3F10, &qword_2521A9D48);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2521A98B0;
  v10 = type metadata accessor for SoundMeterView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  v11 = sub_25219B3BC(v109);
  v13 = v12;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_25219D7DC(v11, v12, v14);
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  *&v15 = COERCE_DOUBLE(sub_2521A56DC());
  v17 = v16;

  v109 = *&v15;
  v110 = v17;
  v107 = 32;
  v108 = 0xE100000000000000;
  v21 = sub_252197B60(v18, v19, v20);
  v22 = sub_2521A576C();

  if (*(v22 + 16) != 2)
  {

    v23 = sub_2521A4FBC();
    v24 = sub_2521A572C();
    if (!os_log_type_enabled(v23, v24))
    {
LABEL_9:

      goto LABEL_10;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Invalid string split.";
LABEL_8:
    _os_log_impl(&dword_252166000, v23, v24, v26, v25, 2u);
    MEMORY[0x25309B5A0](v25, -1, -1);
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  if (v109 < 0.0)
  {

LABEL_10:
    v109 = 0.0;
    v110 = 0xE000000000000000;
    result = sub_2521A54AC();
    goto LABEL_11;
  }

  if (*(v2 + *(v10 + 32) + 26) != 1)
  {
    goto LABEL_16;
  }

  sub_25219D5CC(v8);
  if (qword_27F4D3CD0 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v32 = v102;
    v33 = __swift_project_value_buffer(v102, qword_27F4D4BB8);
    v34 = sub_25219DF8C(v8, v33);
    (*(v101 + 8))(v8, v32);
    if (v34)
    {
      v35 = 10;
    }

    else
    {
LABEL_16:
      v35 = 32;
    }

    if (*(v22 + 16))
    {
      break;
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  v102 = v35;
  v36 = *(v22 + 40);
  v109 = *(v22 + 32);
  v110 = v36;

  v37 = v103;
  sub_2521A4EDC();
  sub_2521A577C();
  v39 = v38;
  v40 = *(v105 + 8);
  v105 += 8;
  v40(v37, v104);

  if ((v39 & 1) == 0)
  {
    v45 = *(v22 + 40);
    v109 = *(v22 + 32);
    v110 = v45;
    swift_bridgeObjectRetain_n();
    MEMORY[0x25309AA30](v102, 0xE100000000000000);

    v10 = sub_2521A54AC();
    v37 = v46;
    LOBYTE(v40) = v47;
    if (qword_27F4D3CC0 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_35;
  }

  if (*(v22 + 16) < 2uLL)
  {
    __break(1u);
LABEL_35:
    swift_once();
LABEL_24:
    v48 = sub_2521A549C();
    v50 = v49;
    v52 = v51;
    v105 = v53;
    sub_252197BC4(v10, v37, v40 & 1);

    if (*(v22 + 16) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v104) = v52;
      v55 = *(v22 + 48);
      v54 = *(v22 + 56);

      v109 = v55;
      v110 = v54;
      v21 = sub_2521A54AC();
      v22 = v56;
      LOBYTE(v10) = v57;
      if (qword_27F4D3CC8 == -1)
      {
LABEL_26:
        v58 = sub_2521A549C();
        v60 = v59;
        v62 = v61;
        sub_252197BC4(v21, v22, v10 & 1);

        v63 = v104;
        v64 = sub_2521A548C();
        v102 = v65;
        v103 = v64;
        v67 = v66;
        v69 = v68;
        sub_252197BC4(v58, v60, v62 & 1);

        sub_252197BC4(v48, v50, v63 & 1);

        v30 = v69;
        v29 = v67;
        v28 = v102;
        result = v103;
        goto LABEL_11;
      }
    }

    swift_once();
    goto LABEL_26;
  }

  v41 = *(v22 + 56);
  v109 = *(v22 + 48);
  v110 = v41;

  v42 = v103;
  sub_2521A4EDC();
  sub_2521A577C();
  v44 = v43;
  v40(v42, v104);

  if (v44)
  {

    v23 = sub_2521A4FBC();
    v24 = sub_2521A572C();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_9;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Invalid string split -- no decimal value found.";
    goto LABEL_8;
  }

  v70 = *(v22 + 40);
  v109 = *(v22 + 32);
  v110 = v70;
  swift_bridgeObjectRetain_n();
  MEMORY[0x25309AA30](v102, 0xE100000000000000);

  v71 = sub_2521A54AC();
  v73 = v72;
  v75 = v74;
  if (qword_27F4D3CC8 != -1)
  {
    swift_once();
  }

  v76 = sub_2521A549C();
  v104 = v77;
  v105 = v76;
  v79 = v78;
  LODWORD(v103) = v80;
  sub_252197BC4(v71, v73, v75 & 1);

  v82 = *(v22 + 48);
  v81 = *(v22 + 56);

  v109 = v82;
  v110 = v81;
  v83 = sub_2521A54AC();
  v85 = v84;
  v87 = v86;
  if (qword_27F4D3CC0 != -1)
  {
    swift_once();
  }

  v88 = sub_2521A549C();
  v90 = v89;
  v92 = v91;
  sub_252197BC4(v83, v85, v87 & 1);

  v93 = v103;
  v102 = v79;
  v94 = sub_2521A548C();
  v96 = v95;
  v98 = v97;
  v100 = v99;
  sub_252197BC4(v88, v90, v92 & 1);

  sub_252197BC4(v105, v102, v93 & 1);

  v30 = v100;
  v29 = v98;
  v28 = v96;
  result = v94;
LABEL_11:
  v31 = v106;
  *v106 = result;
  v31[1] = v28;
  *(v31 + 16) = v29 & 1;
  v31[3] = v30;
  return result;
}

uint64_t sub_25219AFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4160, &qword_2521AA0B8);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4168, &qword_2521AA0C0);
  MEMORY[0x28223BE20](v7 - 8);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for SoundMeterView(0);
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_25219EC84(a1, &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoundMeterView);
  v16 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v17 = swift_allocObject();
  sub_25219EE68(&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for SoundMeterView);
  v18 = a1 + *(v13 + 40);
  if (*(*(v18 + 32) + 16))
  {
    type metadata accessor for Pill(0);
  }

  sub_2521A565C();
  v19 = 1;
  sub_2521A50EC();
  v20 = v39;
  v21 = v41;
  v32 = v44;
  v33 = v43;
  v38 = v40;
  v37 = v42;
  v22 = *(v18 + 24);
  v23 = v36;
  if (v22 == 1)
  {
    *v6 = sub_2521A52CC();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4178, &qword_2521AA0D0);
    sub_25219BE88(a1, &v6[*(v24 + 44)]);
    *&v6[*(v23 + 36)] = 0x3FE0000000000000;
    sub_25219ECEC(v6, v11, &qword_27F4D4160, &qword_2521AA0B8);
    v19 = 0;
  }

  (*(v35 + 56))(v11, v19, 1, v23);
  v25 = v38;
  v26 = v37;
  v27 = v34;
  sub_2521984BC(v11, v34, &qword_27F4D4168, &qword_2521AA0C0);
  *a2 = sub_25219E458;
  *(a2 + 8) = v17;
  *(a2 + 16) = v20;
  *(a2 + 24) = v25;
  *(a2 + 32) = v21;
  *(a2 + 40) = v26;
  v28 = v32;
  *(a2 + 48) = v33;
  *(a2 + 56) = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4170, &qword_2521AA0C8);
  sub_2521984BC(v27, a2 + *(v29 + 48), &qword_27F4D4168, &qword_2521AA0C0);

  sub_252198438(v11, &qword_27F4D4168, &qword_2521AA0C0);
  sub_252198438(v27, &qword_27F4D4168, &qword_2521AA0C0);
}

uint64_t sub_25219B3BC(double a1)
{
  sub_25219E408();
  v1 = sub_2521A574C();
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v2 setNumberStyle_];
  [v2 setMaximumFractionDigits_];
  v3 = sub_2521A575C();
  v4 = [v2 stringFromNumber_];

  [v2 setNotANumberSymbol_];
  v5 = [v2 stringFromNumber_];

  if (v5)
  {
    v6 = sub_2521A56EC();
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_25219B4E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SoundMeterView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = sub_2521A52DC();
  v9 = (a1 + *(v5 + 40));
  v10 = *v9;
  v11 = v9[4];
  sub_2521A50FC();
  if (*(v11 + 16))
  {
    v13 = v12;
    v14 = type metadata accessor for Pill(0);
    v15 = (v13 - *(v11 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)) + *(v14 + 36)) * v10) / v10;
  }

  else
  {
    v15 = 0.0;
  }

  *a2 = v8;
  *(a2 + 8) = v15;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D41F8, &qword_2521AA150);
  sub_25219DB64(v11);
  v21[1] = v16;
  swift_getKeyPath();
  sub_25219EC84(a1, v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoundMeterView);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_25219EE68(v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for SoundMeterView);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_25219E9B8;
  *(v19 + 24) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4200, &qword_2521AA178);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4208, &qword_2521AA180);
  sub_252198364(&qword_27F4D4210, &qword_27F4D4200, &qword_2521AA178, MEMORY[0x277D83980]);
  sub_25219EAE0();
  return sub_2521A561C();
}

uint64_t sub_25219B7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v31[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4248, &qword_2521AA1A0);
  MEMORY[0x28223BE20](v6);
  v8 = v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4228, &qword_2521AA188);
  MEMORY[0x28223BE20](v9);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4238, &qword_2521AA190);
  MEMORY[0x28223BE20](v12);
  v14 = (v31 - v13);
  sub_25219BB58(a1);
  v16 = v15;
  v17 = sub_25219BB58(a1);

  *v14 = sub_2521A565C();
  v14[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4250, &qword_2521AA1A8);
  sub_2521A0324(a2, v16, v14 + *(v19 + 44), v17);

  if (*(a2 + *(type metadata accessor for Pill(0) + 20)) == 1)
  {
    v20 = sub_2521A568C();
    v21 = sub_2521A53AC();
    sub_2521A56AC();
    v23 = v22;
    v25 = v24;
    v26 = &v11[*(v9 + 36)];
    v27 = sub_2521A4F6C();
    (*(*(v27 - 8) + 16))(v26, a2, v27);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D41E0, &qword_2521AA110);
    *&v26[*(v28 + 36)] = v20;
    v29 = &v26[*(v28 + 40)];
    *v29 = v21;
    *(v29 + 1) = v23;
    *(v29 + 2) = v25;
    v29[24] = 1;
    sub_2521984BC(v14, v11, &qword_27F4D4238, &qword_2521AA190);
    sub_2521984BC(v11, v8, &qword_27F4D4228, &qword_2521AA188);
    swift_storeEnumTagMultiPayload();
    sub_25219EB98();
    sub_252198364(&qword_27F4D4230, &qword_27F4D4238, &qword_2521AA190, MEMORY[0x277CE11A8]);
    sub_2521A536C();
    sub_252198438(v11, &qword_27F4D4228, &qword_2521AA188);
  }

  else
  {
    sub_2521984BC(v14, v8, &qword_27F4D4238, &qword_2521AA190);
    swift_storeEnumTagMultiPayload();
    sub_25219EB98();
    sub_252198364(&qword_27F4D4230, &qword_27F4D4238, &qword_2521AA190, MEMORY[0x277CE11A8]);
    sub_2521A536C();
  }

  return sub_252198438(v14, &qword_27F4D4238, &qword_2521AA190);
}

double sub_25219BB58(uint64_t a1)
{
  v5 = type metadata accessor for SoundMeterView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  v6 = (v1 + *(v5 + 32));
  v7 = v6[2];
  v8 = *(v7 + 16);
  if (!v8)
  {
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_25;
  }

  v9 = *(v7 + 32);
  if (v13 > v9)
  {
    if (v8 >= 3)
    {
      v3 = *(v7 + 48);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2521A506C();

      if (*(v7 + 16))
      {
        if (!__OFSUB__(*v6, 1))
        {
          v10 = (v13 - *(v7 + 32)) / (v3 - v9) * (*v6 - 1) + 1.0;
          goto LABEL_9;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  if (!*(v7 + 16))
  {
    goto LABEL_29;
  }

  v10 = v13 / *(v7 + 32);
LABEL_9:
  v11 = v10 - a1;
  if (v11 <= 0.0)
  {
    v11 = 0.0;
  }

  v2 = 1.0;
  if (v11 <= 1.0)
  {
    v3 = v11;
  }

  else
  {
    v3 = 1.0;
  }

  if (v3 == 0.0)
  {
    if (qword_27F4D3D00 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  if (*&v13 == 80)
  {
    if (qword_27F4D3CF8 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_32;
  }

  if (v13 == 0.0)
  {
    if (qword_27F4D3CF0 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_32;
  }

  if (qword_27F4D3D00 != -1)
  {
LABEL_32:
    swift_once();
  }

LABEL_24:
  v2 = v3;
LABEL_25:

  return v2;
}

uint64_t sub_25219BE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for SoundMeterView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4180, &qword_2521AA0D8);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v16 = a1 + *(v7 + 40);
  v17 = *(v16 + 16);
  if (*(v17 + 16))
  {
    v62 = v8;
    v63 = &v53 - v13;
    v59 = v15;
    v60 = v14;
    v61 = v12;
    v65 = sub_25219B3BC(*(v17 + 32));
    v66 = v18;
    v56 = sub_252197B60(v65, v18, v19);
    v2 = sub_2521A54AC();
    v3 = v20;
    LOBYTE(v8) = v21;
    if (qword_27F4D3CC8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v54 = qword_27F4D4BB0;
  v22 = sub_2521A549C();
  v57 = v23;
  v58 = v22;
  v55 = v24;
  v64 = v25;
  sub_252197BC4(v2, v3, v8 & 1);

  v65 = *(v16 + 32);
  sub_25219EC84(a1, &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoundMeterView);
  v26 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v27 = swift_allocObject();
  sub_25219EE68(&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for SoundMeterView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4188, &qword_2521AA0E0);
  sub_2521A4F6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4190, &qword_2521AA0E8);
  sub_252198364(&qword_27F4D4198, &qword_27F4D4188, &qword_2521AA0E0, MEMORY[0x277D83980]);
  sub_25219E6A0();
  sub_25219E918(&qword_27F4D41E8, type metadata accessor for Pill, &unk_2521AA55C);
  v28 = v63;
  result = sub_2521A562C();
  if (*(v17 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v65 = sub_25219B3BC(*(v17 + 48));
    v66 = v30;
    v31 = sub_2521A54AC();
    v33 = v32;
    v35 = v34;
    v36 = sub_2521A549C();
    v53 = v37;
    v54 = v36;
    LODWORD(v56) = v38;
    v62 = v39;
    sub_252197BC4(v31, v33, v35 & 1);

    LOBYTE(v31) = v55 & 1;
    LOBYTE(v65) = v55 & 1;
    v40 = v59;
    v41 = v60;
    v42 = *(v60 + 16);
    v43 = v61;
    v42(v59, v28, v61);
    v45 = v57;
    v44 = v58;
    *a2 = v58;
    *(a2 + 8) = v45;
    *(a2 + 16) = v31;
    *(a2 + 24) = v64;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D41F0, &qword_2521AA118);
    v42(a2 + v46[16], v40, v43);
    v47 = a2 + v46[20];
    *v47 = 0;
    *(v47 + 8) = 1;
    v48 = a2 + v46[24];
    v50 = v53;
    v49 = v54;
    *v48 = v54;
    *(v48 + 8) = v50;
    v51 = v56 & 1;
    *(v48 + 16) = v56 & 1;
    *(v48 + 24) = v62;
    sub_252197BB4(v44, v45, v31);

    sub_252197BB4(v49, v50, v51);
    v52 = *(v41 + 8);

    v52(v63, v43);
    sub_252197BC4(v49, v50, v51);

    v52(v40, v43);
    sub_252197BC4(v44, v45, v65);
  }

  return result;
}

uint64_t sub_25219C3DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D41B0, &qword_2521AA0F0);
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  if (*(a1 + *(type metadata accessor for Pill(0) + 20)) == 1)
  {
    v14 = *(a2 + *(type metadata accessor for SoundMeterView(0) + 32) + 16);
    if (*(v14 + 16) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v47 = sub_25219B3BC(*(v14 + 40));
      v48 = v15;
      sub_252197B60(v47, v15, v16);
      v17 = sub_2521A54AC();
      v43 = v18;
      v44 = v17;
      v20 = v19;
      v45 = v21;
      v42 = sub_2521A540C();
      sub_2521A509C();
      v4 = v22;
      v5 = v23;
      v6 = v24;
      v7 = v25;
      v3 = v20 & 1;
      LOBYTE(v47) = v20 & 1;
      LOBYTE(v50[0]) = 0;
      if (qword_27F4D3CC8 == -1)
      {
LABEL_4:
        v26 = qword_27F4D4BB0;
        KeyPath = swift_getKeyPath();

        v28 = sub_2521A568C();
        v29 = sub_2521A53AC();
        sub_2521A569C();
        v31 = v30;
        v33 = v32;
        v34 = &v13[*(v11 + 36)];
        v35 = sub_2521A4F6C();
        (*(*(v35 - 8) + 16))(v34, a1, v35);
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D41E0, &qword_2521AA110);
        *&v34[*(v36 + 36)] = v28;
        v37 = &v34[*(v36 + 40)];
        *v37 = v29;
        *(v37 + 1) = v31;
        *(v37 + 2) = v33;
        v37[24] = 0;
        v38 = v43;
        *v13 = v44;
        *(v13 + 1) = v38;
        v13[16] = v3;
        *(v13 + 5) = *(&v47 + 3);
        *(v13 + 17) = v47;
        *(v13 + 3) = v45;
        v13[32] = v42;
        *(v13 + 9) = *(v50 + 3);
        *(v13 + 33) = v50[0];
        *(v13 + 5) = v4;
        *(v13 + 6) = v5;
        *(v13 + 7) = v6;
        *(v13 + 8) = v7;
        v13[72] = 0;
        *(v13 + 73) = *v49;
        *(v13 + 19) = *&v49[3];
        *(v13 + 10) = KeyPath;
        *(v13 + 11) = v26;
        sub_25219ECEC(v13, a3, &qword_27F4D41B0, &qword_2521AA0F0);
        return (*(v46 + 56))(a3, 0, 1, v11);
      }
    }

    swift_once();
    goto LABEL_4;
  }

  v40 = *(v46 + 56);

  return v40(a3, 1, 1, v11);
}

double sub_25219C770(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  return v3;
}

uint64_t sub_25219C7DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  return v1;
}

uint64_t SoundMeterData.deinit()
{
  v1 = OBJC_IVAR____TtC9HearingUI14SoundMeterData__slowLeq;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4060, &qword_2521A9E60);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9HearingUI14SoundMeterData__fastLeq, v2);
  v4 = OBJC_IVAR____TtC9HearingUI14SoundMeterData__thresholdLevel;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4078, &qword_2521A9E68);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return v0;
}

uint64_t SoundMeterData.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9HearingUI14SoundMeterData__slowLeq;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4060, &qword_2521A9E60);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9HearingUI14SoundMeterData__fastLeq, v2);
  v4 = OBJC_IVAR____TtC9HearingUI14SoundMeterData__thresholdLevel;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4078, &qword_2521A9E68);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_25219CA88()
{
  v1 = v0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4078, &qword_2521A9E68);
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4060, &qword_2521A9E60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC9HearingUI14SoundMeterData__slowLeq;
  v16 = 0xBFF0000000000000;
  sub_2521A502C();
  v10 = *(v6 + 32);
  v10(v0 + v9, v8, v5);
  v11 = OBJC_IVAR____TtC9HearingUI14SoundMeterData__fastLeq;
  v16 = 0xBFF0000000000000;
  sub_2521A502C();
  v10(v0 + v11, v8, v5);
  v12 = OBJC_IVAR____TtC9HearingUI14SoundMeterData__thresholdLevel;
  v16 = 0;
  type metadata accessor for HCEDThresholdLevel(0);
  sub_2521A502C();
  (*(v2 + 32))(v1 + v12, v4, v15);
  v13 = OBJC_IVAR____TtC9HearingUI14SoundMeterData_didChange;
  sub_2521A501C();
  swift_allocObject();
  *(v1 + v13) = sub_2521A500C();
  return v1;
}

uint64_t sub_25219CCB4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SoundMeterData(0);
  result = sub_2521A4FEC();
  *a2 = result;
  return result;
}

void sub_25219CD1C(uint64_t a1)
{
  sub_25219CE3C();
  if (v1 <= 0x3F)
  {
    sub_25219D224(319, &qword_27F4D4098, type metadata accessor for HCEDThresholdLevel, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_25219CE3C()
{
  if (!qword_27F4D4090)
  {
    v0 = sub_2521A508C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D4090);
    }
  }
}

uint64_t sub_25219CEA0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2521A4FDC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D40A0, &qword_2521A9ED8);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 16);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_25219CFCC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2521A4FDC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D40A0, &qword_2521A9ED8);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8] + 16) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_25219D100(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25219D138(uint64_t a1)
{
  sub_2521A4FDC();
  if (v1 <= 0x3F)
  {
    sub_25219D224(319, &qword_27F4D40B8, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_25219D288(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25219D224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_25219D288(uint64_t a1)
{
  if (!qword_27F4D40C0)
  {
    type metadata accessor for SoundMeterData(255);
    sub_25219E918(&qword_27F4D40C8, type metadata accessor for SoundMeterData, &protocol conformance descriptor for SoundMeterData);
    v1 = sub_2521A513C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D40C0);
    }
  }
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

uint64_t sub_25219D330(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25219D378(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SoundMeterMetrics(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SoundMeterMetrics(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

unint64_t sub_25219D45C()
{
  result = qword_27F4D4108;
  if (!qword_27F4D4108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D40D8, &qword_2521A9FC0);
    sub_252198364(&qword_27F4D4110, &qword_27F4D40E0, &qword_2521A9FC8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4108);
  }

  return result;
}

unint64_t sub_25219D514()
{
  result = qword_27F4D4118;
  if (!qword_27F4D4118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D40E8, &qword_2521A9FD0);
    sub_25219D45C();
    sub_252198364(&qword_27F4D4110, &qword_27F4D40E0, &qword_2521A9FC8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4118);
  }

  return result;
}

uint64_t sub_25219D5CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2521A52AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4128, &qword_2521AA2E0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_2521984BC(v2, &v14 - v9, &qword_27F4D4128, &qword_2521AA2E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2521A532C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2521A573C();
    v13 = sub_2521A53DC();
    sub_2521A4FAC();

    sub_2521A529C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

unint64_t sub_25219D7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F4D4120;
  if (!qword_27F4D4120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4120);
  }

  return result;
}

uint64_t sub_25219D830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D40F8, &qword_2521A9FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_25219D8D0(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4270, &unk_2521AA2A0);
  v10 = *(type metadata accessor for Pill(0) - 8);
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
  v15 = *(type metadata accessor for Pill(0) - 8);
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

uint64_t sub_25219DAA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2521A525C();
  *a1 = result;
  return result;
}

uint64_t sub_25219DB00@<X0>(uint64_t a1@<X8>)
{
  result = sub_2521A527C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_25219DB64(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4240, &qword_2521AA198);
  MEMORY[0x28223BE20](v42);
  v41 = (&v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - v5;
  v7 = MEMORY[0x277D84F90];
  v40 = *(a1 + 16);
  if (v40)
  {
    v43 = v4;
    v8 = *(v4 + 80);
    v37 = v8;
    v38 = (v8 + 32) & ~v8;
    v9 = MEMORY[0x277D84F90] + v38;
    v10 = 0;
    v11 = 0;
    v12 = *(type metadata accessor for Pill(0) - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v39 = *(v12 + 72);
    v14 = v7;
    while (1)
    {
      v15 = v41;
      v16 = *(v42 + 48);
      *v41 = v10;
      sub_25219EC84(v13, v15 + v16, type metadata accessor for Pill);
      v17 = v6;
      sub_25219ECEC(v15, v6, &qword_27F4D4240, &qword_2521AA198);
      if (v11)
      {
        v44 = v14;
      }

      else
      {
        v18 = v14[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4258, &qword_2521AA1F8);
        v21 = *(v43 + 72);
        v22 = v38;
        v44 = swift_allocObject();
        v23 = _swift_stdlib_malloc_size(v44);
        if (!v21)
        {
          goto LABEL_35;
        }

        v24 = v23 - v22;
        if (v23 - v22 == 0x8000000000000000 && v21 == -1)
        {
          goto LABEL_36;
        }

        v26 = v24 / v21;
        v27 = v44;
        *(v44 + 2) = v20;
        v27[3] = 2 * (v24 / v21);
        v28 = v27 + v22;
        v29 = v14[3] >> 1;
        v30 = v29 * v21;
        if (v14[2])
        {
          if (v27 < v14 || v28 >= v14 + v38 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v14[2] = 0;
        }

        v9 = &v28[v30];
        v11 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v29;
      }

      v32 = v43;
      v6 = v17;
      v33 = __OFSUB__(v11--, 1);
      if (v33)
      {
        break;
      }

      ++v10;
      sub_25219ECEC(v17, v9, &qword_27F4D4240, &qword_2521AA198);
      v9 += *(v32 + 72);
      v13 += v39;
      v7 = v44;
      v14 = v44;
      if (v40 == v10)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = 0;
LABEL_29:
  v34 = v7[3];
  if (v34 >= 2)
  {
    v35 = v34 >> 1;
    v33 = __OFSUB__(v35, v11);
    v36 = v35 - v11;
    if (v33)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v7[2] = v36;
  }
}

void sub_25219DEC0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = MEMORY[0x277D84F90];
  if (!a1)
  {
    v3 = 1;
LABEL_5:
    v4 = v3;
    v5 = v3;
    v6 = v3;
    sub_252198A90(a1);
    *a2 = xmmword_2521A9E50;
    *(a2 + 16) = &unk_28645D718;
    *(a2 + 24) = v4;
    *(a2 + 25) = v5;
    *(a2 + 26) = v6;
    *(a2 + 32) = v7;
    return;
  }

  if (a1 == 1)
  {
    v3 = 0;
    goto LABEL_5;
  }

  sub_2521A578C();
  __break(1u);
}

BOOL sub_25219DF8C(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_2521A532C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a1, v3, v8);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = *MEMORY[0x277CE0268];
  if (v13 != *MEMORY[0x277CE0268])
  {
    if (v13 == *MEMORY[0x277CE0298])
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x277CE02A0])
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x277CE0290])
    {
      goto LABEL_7;
    }

    if (v13 == *MEMORY[0x277CE0260])
    {
      v14 = 4;
    }

    else if (v13 == *MEMORY[0x277CE0270])
    {
      v14 = 5;
    }

    else if (v13 == *MEMORY[0x277CE0248])
    {
      v14 = 6;
    }

    else if (v13 == *MEMORY[0x277CE0280])
    {
      v14 = 7;
    }

    else if (v13 == *MEMORY[0x277CE0278])
    {
      v14 = 8;
    }

    else if (v13 == *MEMORY[0x277CE0288])
    {
      v14 = 9;
    }

    else if (v13 == *MEMORY[0x277CE0250])
    {
      v14 = 10;
    }

    else
    {
      if (v13 != *MEMORY[0x277CE0258])
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  (v11)(v6, v20, v3);
  v16 = v12(v6, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x277CE0298])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x277CE02A0])
  {
    v17 = 2;
  }

  else
  {
    if (v16 != *MEMORY[0x277CE0290])
    {
      if (v16 == *MEMORY[0x277CE0260])
      {
        v17 = 4;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0270])
      {
        v17 = 5;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0248])
      {
        v17 = 6;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0280])
      {
        v17 = 7;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0278])
      {
        v17 = 8;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0288])
      {
        v17 = 9;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0250])
      {
        v17 = 10;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0258])
      {
        v17 = 11;
        return v14 >= v17;
      }

      (*(v4 + 8))(v6, v3);
    }

    v17 = 3;
  }

  return v14 >= v17;
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

unint64_t sub_25219E408()
{
  result = qword_27F4D4130;
  if (!qword_27F4D4130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4D4130);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for SoundMeterView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v1 + 20);
  v6 = sub_2521A4FDC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4128, &qword_2521AA2E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2521A532C();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25219E60C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SoundMeterView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_25219E6A0()
{
  result = qword_27F4D41A0;
  if (!qword_27F4D41A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D4190, &qword_2521AA0E8);
    sub_25219E724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D41A0);
  }

  return result;
}

unint64_t sub_25219E724()
{
  result = qword_27F4D41A8;
  if (!qword_27F4D41A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D41B0, &qword_2521AA0F0);
    sub_25219E7DC();
    sub_252198364(&qword_27F4D41D8, &qword_27F4D41E0, &qword_2521AA110, MEMORY[0x277CE05B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D41A8);
  }

  return result;
}

unint64_t sub_25219E7DC()
{
  result = qword_27F4D41B8;
  if (!qword_27F4D41B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D41C0, &qword_2521AA0F8);
    sub_25219E894();
    sub_252198364(&qword_27F4D3EF0, &qword_27F4D3EF8, &qword_2521A9CD0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D41B8);
  }

  return result;
}

unint64_t sub_25219E894()
{
  result = qword_27F4D41C8;
  if (!qword_27F4D41C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D41D0, &unk_2521AA100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D41C8);
  }

  return result;
}

uint64_t sub_25219E918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25219E960@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2521A525C();
  *a1 = result;
  return result;
}

uint64_t sub_25219E9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for SoundMeterView(0);

  return sub_25219B7A8(a1, a2, a3);
}

uint64_t sub_25219EA40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25219EA78(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4240, &qword_2521AA198);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_25219EAE0()
{
  result = qword_27F4D4218;
  if (!qword_27F4D4218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D4208, &qword_2521AA180);
    sub_25219EB98();
    sub_252198364(&qword_27F4D4230, &qword_27F4D4238, &qword_2521AA190, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4218);
  }

  return result;
}

unint64_t sub_25219EB98()
{
  result = qword_27F4D4220;
  if (!qword_27F4D4220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D4228, &qword_2521AA188);
    sub_252198364(&qword_27F4D4230, &qword_27F4D4238, &qword_2521AA190, MEMORY[0x277CE11A8]);
    sub_252198364(&qword_27F4D41D8, &qword_27F4D41E0, &qword_2521AA110, MEMORY[0x277CE05B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4220);
  }

  return result;
}

uint64_t sub_25219EC84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25219ECEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25219ED58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2521A523C();
  *a1 = result;
  return result;
}

uint64_t sub_25219EDAC@<X0>(uint64_t a1@<X8>)
{
  result = sub_2521A527C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_25219EE10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2521A51DC();
  *a1 = result;
  return result;
}

uint64_t sub_25219EE68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_25219EED4()
{
  result = qword_27F4D4278;
  if (!qword_27F4D4278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D40F8, &qword_2521A9FE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D40E8, &qword_2521A9FD0);
    sub_25219D514();
    swift_getOpaqueTypeConformance2();
    sub_25219E918(&qword_27F4D4280, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4278);
  }

  return result;
}

uint64_t sub_25219EFD4(uint64_t a1)
{
  v2 = sub_2521A532C();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_2521A51CC();
}

id HUISoundMeterViewInterface.init(configurationType:)(void *a1)
{
  v3 = sub_2521A4FDC();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SoundMeterView(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v36 - v9);
  v37 = OBJC_IVAR___HUISoundMeterViewInterfaceInternal_logger;
  sub_2521A4FCC();
  type metadata accessor for SoundMeterData(0);
  swift_allocObject();
  v11 = sub_25219CA88();
  v41 = v1;
  *&v1[OBJC_IVAR___HUISoundMeterViewInterfaceInternal_data] = v11;
  *v10 = 0;

  sub_2521A4FCC();
  v12 = v5[7];
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4128, &qword_2521AA2E0);
  swift_storeEnumTagMultiPayload();
  sub_25219DEC0(a1, v44);
  v13 = v10 + v5[8];
  v14 = v44[1];
  *v13 = v44[0];
  *(v13 + 1) = v14;
  *(v13 + 4) = v45;
  v15 = 5.0;
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_12;
    }

    v15 = 2.5;
  }

  v16 = (v10 + v5[6]);
  *v16 = 0.5;
  v16[1] = v15;
  v16[2] = 2.5;
  v17 = (v10 + v5[9]);
  sub_25219FD5C(&qword_27F4D40C8, type metadata accessor for SoundMeterData, &protocol conformance descriptor for SoundMeterData);
  *v17 = sub_2521A512C();
  v17[1] = v18;
  v19 = OBJC_IVAR___HUISoundMeterViewInterfaceInternal_soundMeterView;
  v20 = v41;
  sub_25219FC94(v10, &v41[OBJC_IVAR___HUISoundMeterViewInterfaceInternal_soundMeterView]);
  sub_25219FCF8(&v20[v19], v7);
  sub_25219FD5C(&qword_27F4D4290, type metadata accessor for SoundMeterView, &unk_2521A9F64);
  sub_2521A55DC();
  v21 = sub_2521A539C();

  swift_getObjectType();
  v22 = v21;
  sub_2521A52FC();
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  a1 = &__block_descriptor_57_e8_32s40s48s_e5_v8__0ls32l8s40l8s48l8;
  if (!v23)
  {

    v29 = v38;
    v28 = v39;
    v30 = v40;
    (*(v39 + 16))(v38, &v20[v37], v40);
    v31 = sub_2521A4FBC();
    v32 = sub_2521A573C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_252166000, v31, v32, "Unable to cast SDK-provided hosting controller to UIViewController", v33, 2u);
      MEMORY[0x25309B5A0](v33, -1, -1);
    }

    (*(v28 + 8))(v29, v30);
    v24 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
    goto LABEL_10;
  }

  v24 = v23;
  v25 = [v23 view];
  if (v25)
  {
    v26 = v25;
    v27 = [objc_opt_self() clearColor];
    [v26 setBackgroundColor_];

LABEL_10:
    *&v20[OBJC_IVAR___HUISoundMeterViewInterfaceInternal_viewController] = v24;
    v34 = type metadata accessor for HUISoundMeterViewInterface(0);
    v42.receiver = v20;
    v42.super_class = v34;
    return objc_msgSendSuper2(&v42, sel_init);
  }

  __break(1u);
LABEL_12:
  v43 = a1;
  result = sub_2521A578C();
  __break(1u);
  return result;
}

uint64_t sub_25219F644(uint64_t a1, double a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_2521A507C();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2521A507C();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2521A507C();

  sub_2521A4FFC();
}

id HUISoundMeterViewInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HUISoundMeterViewInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HUISoundMeterViewInterface(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t SoundMeterConfigurationType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_25219F97C()
{
  v1 = *v0;
  sub_2521A579C();
  MEMORY[0x25309AAE0](v1);
  return sub_2521A57BC();
}

uint64_t sub_25219F9F0(uint64_t a1)
{
  v2 = *v1;
  sub_2521A579C();
  MEMORY[0x25309AAE0](v2);
  return sub_2521A57BC();
}

unint64_t *sub_25219FA34@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

double sub_25219FA98@<D0>(double *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  result = v6;
  *a4 = v6;
  return result;
}

uint64_t sub_25219FB28(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2521A507C();
}

uint64_t sub_25219FBA0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  *a2 = v4;
  return result;
}

uint64_t sub_25219FC20(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2521A507C();
}

uint64_t sub_25219FC94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundMeterView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25219FCF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundMeterView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25219FD5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for HUISoundMeterViewInterface(uint64_t a1)
{
  result = qword_27F4D42A8;
  if (!qword_27F4D42A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25219FE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F4D42A0;
  if (!qword_27F4D42A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D42A0);
  }

  return result;
}

uint64_t sub_25219FEF8(uint64_t a1)
{
  result = type metadata accessor for SoundMeterView(319);
  if (v2 <= 0x3F)
  {
    result = sub_2521A4FDC();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2521A0084(uint64_t a1)
{
  v2 = type metadata accessor for SoundMeterView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2521A0170()
{
  result = sub_2521A555C();
  qword_27F4D42B8 = result;
  return result;
}

uint64_t sub_2521A0204(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_2521A558C();
  *a3 = result;
  return result;
}

double sub_2521A0270(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

uint64_t sub_2521A0324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v81 = a2;
  v72 = a3;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D42D0, &qword_2521AA4E8);
  MEMORY[0x28223BE20](v86);
  v71 = &v62[-v6];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D42D8, &qword_2521AA4F0);
  MEMORY[0x28223BE20](v84);
  v85 = &v62[-v7];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D42E0, &qword_2521AA4F8);
  MEMORY[0x28223BE20](v80);
  v77 = &v62[-v8];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D42E8, &qword_2521AA500);
  MEMORY[0x28223BE20](v78);
  v70 = &v62[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D42F0, &qword_2521AA508);
  MEMORY[0x28223BE20](v10);
  v12 = &v62[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v62[-v14];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D42F8, &qword_2521AA510);
  MEMORY[0x28223BE20](v82);
  v73 = &v62[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v62[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4300, &qword_2521AA518);
  MEMORY[0x28223BE20](v20 - 8);
  v76 = &v62[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v75 = &v62[-v23];
  MEMORY[0x28223BE20](v24);
  v74 = &v62[-v25];
  MEMORY[0x28223BE20](v26);
  v83 = &v62[-v27];
  v28 = type metadata accessor for Pill(0);
  v79 = (a1 + *(v28 + 36));
  v29 = v79[3];
  v69 = sub_2521A519C();
  v30 = *(v69 + 20);
  v31 = *MEMORY[0x277CE0118];
  v32 = sub_2521A52EC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 104);
  v68 = v31;
  v67 = v32;
  v66 = v34;
  v65 = v33 + 104;
  (v34)(v15 + v30, v31);
  *v15 = v29;
  v15[1] = v29;
  if (qword_27F4D3D00 != -1)
  {
    swift_once();
  }

  v35 = qword_27F4D4C10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4308, &qword_2521AA520);
  *(v15 + *(v36 + 52)) = v35;
  *(v15 + *(v36 + 56)) = 256;
  *(v15 + *(v10 + 36)) = 0x3FF0000000000000;
  v63 = *(a1 + *(v28 + 20));
  v37 = v10;
  if (v63 == 1)
  {
    v38 = *v79;

    sub_2521A565C();
    v64 = v38;
    sub_2521A50EC();
    v39 = v70;
    sub_2521984BC(v15, v70, &qword_27F4D42F0, &qword_2521AA508);
    v40 = &v39[*(v78 + 36)];
    v41 = v88;
    *v40 = v87;
    v40[1] = v41;
    v40[2] = v89;
    sub_2521984BC(v39, v77, &qword_27F4D42E8, &qword_2521AA500);
    swift_storeEnumTagMultiPayload();
    sub_2521A11AC(&qword_27F4D4310, &qword_27F4D42E8, &qword_2521AA500, sub_2521A10BC);
    sub_2521A10BC();
    sub_2521A536C();
    sub_252198438(v39, &qword_27F4D42E8, &qword_2521AA500);
    sub_252198438(v15, &qword_27F4D42F0, &qword_2521AA508);
    sub_2521984BC(v19, v85, &qword_27F4D42F8, &qword_2521AA510);
    swift_storeEnumTagMultiPayload();
    sub_2521A11AC(&qword_27F4D4328, &qword_27F4D42D0, &qword_2521AA4E8, sub_2521A1230);
    sub_2521A1230();
    sub_2521A536C();
  }

  else
  {
    sub_2521984BC(v15, v77, &qword_27F4D42F0, &qword_2521AA508);
    swift_storeEnumTagMultiPayload();
    sub_2521A11AC(&qword_27F4D4310, &qword_27F4D42E8, &qword_2521AA500, sub_2521A10BC);
    sub_2521A10BC();

    sub_2521A536C();
    sub_252198438(v15, &qword_27F4D42F0, &qword_2521AA508);
    v42 = *v79;
    sub_2521A565C();
    v64 = v42;
    sub_2521A50EC();
    v43 = v71;
    sub_2521984BC(v19, v71, &qword_27F4D42F8, &qword_2521AA510);
    v44 = v85;
    v45 = &v43[*(v86 + 36)];
    v46 = v88;
    *v45 = v87;
    v45[1] = v46;
    v45[2] = v89;
    sub_2521984BC(v43, v44, &qword_27F4D42D0, &qword_2521AA4E8);
    swift_storeEnumTagMultiPayload();
    sub_2521A11AC(&qword_27F4D4328, &qword_27F4D42D0, &qword_2521AA4E8, sub_2521A1230);
    sub_2521A1230();
    sub_2521A536C();
    sub_252198438(v43, &qword_27F4D42D0, &qword_2521AA4E8);
  }

  sub_252198438(v19, &qword_27F4D42F8, &qword_2521AA510);
  v66(&v12[*(v69 + 20)], v68, v67);
  *v12 = v29;
  *(v12 + 1) = v29;
  *&v12[*(v36 + 52)] = v81;
  *&v12[*(v36 + 56)] = 256;
  *&v12[*(v37 + 36)] = a4;
  if (v63)
  {

    sub_2521A565C();
    sub_2521A50EC();
    v47 = v70;
    sub_2521984BC(v12, v70, &qword_27F4D42F0, &qword_2521AA508);
    v48 = &v47[*(v78 + 36)];
    v49 = v91;
    *v48 = v90;
    v48[1] = v49;
    v48[2] = v92;
    sub_2521984BC(v47, v77, &qword_27F4D42E8, &qword_2521AA500);
    swift_storeEnumTagMultiPayload();
    sub_2521A11AC(&qword_27F4D4310, &qword_27F4D42E8, &qword_2521AA500, sub_2521A10BC);
    sub_2521A10BC();
    v50 = v73;
    sub_2521A536C();
    sub_252198438(v47, &qword_27F4D42E8, &qword_2521AA500);
    sub_252198438(v12, &qword_27F4D42F0, &qword_2521AA508);
    sub_2521984BC(v50, v85, &qword_27F4D42F8, &qword_2521AA510);
    swift_storeEnumTagMultiPayload();
    sub_2521A11AC(&qword_27F4D4328, &qword_27F4D42D0, &qword_2521AA4E8, sub_2521A1230);
    sub_2521A1230();
    v51 = v74;
    sub_2521A536C();
  }

  else
  {
    sub_2521984BC(v12, v77, &qword_27F4D42F0, &qword_2521AA508);
    swift_storeEnumTagMultiPayload();
    sub_2521A11AC(&qword_27F4D4310, &qword_27F4D42E8, &qword_2521AA500, sub_2521A10BC);
    sub_2521A10BC();

    v50 = v73;
    sub_2521A536C();
    sub_252198438(v12, &qword_27F4D42F0, &qword_2521AA508);
    sub_2521A565C();
    sub_2521A50EC();
    v52 = v71;
    sub_2521984BC(v50, v71, &qword_27F4D42F8, &qword_2521AA510);
    v53 = v85;
    v54 = &v52[*(v86 + 36)];
    v55 = v91;
    *v54 = v90;
    v54[1] = v55;
    v54[2] = v92;
    sub_2521984BC(v52, v53, &qword_27F4D42D0, &qword_2521AA4E8);
    swift_storeEnumTagMultiPayload();
    sub_2521A11AC(&qword_27F4D4328, &qword_27F4D42D0, &qword_2521AA4E8, sub_2521A1230);
    sub_2521A1230();
    v51 = v74;
    sub_2521A536C();
    sub_252198438(v52, &qword_27F4D42D0, &qword_2521AA4E8);
  }

  sub_252198438(v50, &qword_27F4D42F8, &qword_2521AA510);
  v56 = v83;
  v57 = v75;
  sub_2521984BC(v83, v75, &qword_27F4D4300, &qword_2521AA518);
  v58 = v76;
  sub_2521984BC(v51, v76, &qword_27F4D4300, &qword_2521AA518);
  v59 = v72;
  sub_2521984BC(v57, v72, &qword_27F4D4300, &qword_2521AA518);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4338, &qword_2521AA528);
  sub_2521984BC(v58, v59 + *(v60 + 48), &qword_27F4D4300, &qword_2521AA518);
  sub_252198438(v51, &qword_27F4D4300, &qword_2521AA518);
  sub_252198438(v56, &qword_27F4D4300, &qword_2521AA518);
  sub_252198438(v58, &qword_27F4D4300, &qword_2521AA518);
  return sub_252198438(v57, &qword_27F4D4300, &qword_2521AA518);
}

uint64_t type metadata accessor for Pill(uint64_t a1)
{
  result = qword_27F4D4340;
  if (!qword_27F4D4340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2521A10BC()
{
  result = qword_27F4D4318;
  if (!qword_27F4D4318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D42F0, &qword_2521AA508);
    sub_2521A1148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4318);
  }

  return result;
}

unint64_t sub_2521A1148()
{
  result = qword_27F4D4320;
  if (!qword_27F4D4320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D4308, &qword_2521AA520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4320);
  }

  return result;
}

uint64_t sub_2521A11AC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2521A1230()
{
  result = qword_27F4D4330;
  if (!qword_27F4D4330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D42F8, &qword_2521AA510);
    sub_2521A11AC(&qword_27F4D4310, &qword_27F4D42E8, &qword_2521AA500, sub_2521A10BC);
    sub_2521A10BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4330);
  }

  return result;
}

uint64_t sub_2521A12FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2521A4F6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2521A13CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2521A4F6C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2521A1484(uint64_t a1)
{
  result = sub_2521A4F6C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2521A1538()
{
  result = qword_27F4D4350;
  if (!qword_27F4D4350)
  {
    sub_2521A4F6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D4350);
  }

  return result;
}

uint64_t sub_2521A1590@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2521A4F6C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double sub_2521A1678()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  return v1;
}

uint64_t sub_2521A1768(double a1, double a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_2521A507C();
}

double sub_2521A17E0@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_2521A1864(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_2521A507C();
}

uint64_t (*sub_2521A18E0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2521A505C();
  return sub_2521A4A30;
}

uint64_t sub_2521A1984(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4368, &qword_2521AA5F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4360, &qword_2521AA5F0);
  sub_2521A504C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_2521A1B24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4368, &qword_2521AA5F8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4360, &qword_2521AA5F0);
  sub_2521A504C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2521A1C5C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4368, &qword_2521AA5F8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9HearingUI15HUIEQChartModel__value;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4360, &qword_2521AA5F0);
  sub_2521A503C();
  swift_endAccess();
  return sub_2521A4A34;
}

uint64_t (*sub_2521A1E4C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2521A505C();
  return sub_2521A4A30;
}

uint64_t sub_2521A1EF0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4380, &qword_2521AA660);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  v14 = *(v7 + 16);
  v14(&v16 - v12, a1, v6, v11);
  (v14)(v9, v13, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4378, &qword_2521AA658);
  sub_2521A504C();
  swift_endAccess();
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_2521A20A4(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4380, &qword_2521AA660);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4378, &qword_2521AA658);
  sub_2521A504C();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_2521A21DC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4380, &qword_2521AA660);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9HearingUI15HUIEQChartModel__isActive;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4378, &qword_2521AA658);
  sub_2521A503C();
  swift_endAccess();
  return sub_2521A4A34;
}

uint64_t sub_2521A2360(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  sub_2521A506C();

  return v7;
}

uint64_t sub_2521A23F0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  return v3;
}

uint64_t sub_2521A2470(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1;
  return sub_2521A507C();
}

uint64_t sub_2521A24F0(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_2521A507C();
}

uint64_t sub_2521A256C@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  *a4 = v6;
  return result;
}

uint64_t sub_2521A2600(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_2521A507C();
}

uint64_t (*sub_2521A2670(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2521A505C();
  return sub_2521A2714;
}

void sub_2521A2718(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_2521A2780(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_2521A503C();
  return swift_endAccess();
}

uint64_t sub_2521A2818(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_2521A503C();
  return swift_endAccess();
}

uint64_t (*sub_2521A289C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4380, &qword_2521AA660);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9HearingUI15HUIEQChartModel__colorBorder;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4378, &qword_2521AA658);
  sub_2521A503C();
  swift_endAccess();
  return sub_2521A2A0C;
}

void sub_2521A2A10(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_2521A504C();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_2521A504C();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_2521A2C78(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2521A2CD8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9HearingUI15HUIEQChartModel_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2521A2D70;
}

void sub_2521A2D70(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

BOOL sub_2521A2E3C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 tinnitusFilterMode];

  return v1 == 0;
}

double sub_2521A2E98()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 tinnitusFilterPoint];

  v3 = 0.0;
  if (v2)
  {
    [v2 xValue];
    v3 = v4;
  }

  v5 = [v0 sharedInstance];
  v6 = [v5 tinnitusFilterPoint];

  if (v6)
  {
    [v6 yValue];
  }

  return v3;
}

id HUIEQChartModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HUIEQChartModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4378, &qword_2521AA658);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4360, &qword_2521AA5F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC9HearingUI15HUIEQChartModel__value;
  type metadata accessor for CGPoint(0);
  v16 = 0;
  v17 = 0;
  sub_2521A502C();
  (*(v6 + 32))(&v0[v9], v8, v5);
  v10 = OBJC_IVAR____TtC9HearingUI15HUIEQChartModel__isActive;
  LOBYTE(v16) = 0;
  sub_2521A502C();
  v11 = *(v2 + 32);
  v11(&v0[v10], v4, v1);
  v12 = OBJC_IVAR____TtC9HearingUI15HUIEQChartModel__colorBorder;
  LOBYTE(v16) = 0;
  sub_2521A502C();
  v11(&v0[v12], v4, v1);
  swift_unknownObjectWeakInit();
  v13 = type metadata accessor for HUIEQChartModel(0);
  v15.receiver = v0;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_2521A3320@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HUIEQChartModel(0);
  result = sub_2521A4FEC();
  *a2 = result;
  return result;
}

uint64_t static HUIEQChartHostingViewController.create(with:width:height:)(void *a1, double a2, double a3)
{
  type metadata accessor for HUIEQChartModel(0);
  sub_2521A49D4(&qword_27F4D4390, type metadata accessor for HUIEQChartModel, &protocol conformance descriptor for HUIEQChartModel);
  v4 = a1;
  sub_2521A512C();
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D4398, &qword_2521AA6C0));
  return sub_2521A535C();
}

id HUIEQChartHostingViewController.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HUIEQChartHostingViewController();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2521A35A4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_2521A35DC@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  sub_2521A571C();
  v10 = a2;
  v11 = sub_2521A570C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = a1;
  *(v12 + 40) = v10;
  *(v12 + 48) = a4;
  *(v12 + 56) = a5;
  v14 = v10;
  v15 = sub_2521A570C();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v13;
  *(v16 + 32) = a1;
  *(v16 + 40) = v14;
  *(v16 + 48) = a4;
  *(v16 + 56) = a5;
  type metadata accessor for CGPoint(0);
  sub_2521A560C();
  v17 = v14;
  v18 = sub_2521A570C();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v13;
  *(v19 + 32) = a1;
  *(v19 + 40) = v17;
  *(v19 + 48) = a4;
  *(v19 + 56) = a5;
  v20 = v17;
  v21 = sub_2521A570C();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v13;
  *(v22 + 32) = a1;
  *(v22 + 40) = v20;
  *(v22 + 48) = a4;
  *(v22 + 56) = a5;
  sub_2521A560C();
  v23 = v20;
  v24 = sub_2521A570C();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v13;
  *(v25 + 32) = a1;
  *(v25 + 40) = v23;
  *(v25 + 48) = a4;
  *(v25 + 56) = a5;
  v26 = sub_2521A570C();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v13;
  sub_2521A560C();
  if (qword_27F4D3D08 != -1)
  {
    swift_once();
  }

  v28 = qword_27F4D42B8;
  v29 = qword_27F4D3C70;

  if (v29 != -1)
  {
    swift_once();
  }

  v58 = xmmword_27F4D3C98;
  v59 = *&qword_27F4D3CA8;
  v60 = byte_27F4D3CB8;
  v56 = xmmword_27F4D3C78;
  v57 = unk_27F4D3C88;
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D3D20, &qword_2521A9940);
  swift_storeEnumTagMultiPayload();
  v30 = type metadata accessor for HUIEQChart(0);
  v31 = a3 + v30[9];
  sub_2521A55BC();
  *v31 = v45;
  *(v31 + 2) = v46;
  v32 = (a3 + v30[5]);
  *v32 = v53;
  v32[1] = v54;
  v33 = a3 + v30[6];
  *v33 = v50;
  *(v33 + 1) = v51;
  v33[16] = v52;
  v34 = a3 + v30[7];
  *v34 = v47;
  *(v34 + 1) = v48;
  v34[16] = v49;
  *(a3 + v30[8]) = 0;
  v35 = (a3 + v30[10]);
  *v35 = 0;
  v35[1] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + v30[11]) = _Q0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a3 + v30[12]) = _Q0;
  *(a3 + v30[13]) = v28;
  v42 = a3 + v30[14];
  *(v42 + 2) = v58;
  *(v42 + 3) = v59;
  v42[64] = v60;
  *v42 = v56;
  *(v42 + 1) = v57;
  sub_2521A565C();
  sub_2521A50EC();
  v43 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4D43C0, &qword_2521AA838) + 36));
  *v43 = v53;
  v43[1] = v54;
  result = *&v55;
  v43[2] = v55;
  return result;
}

double sub_2521A3A48@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_2521A3AC8(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v7 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = a5;
  sub_2521A506C();

  if (v6 == v14 && v7 == v15)
  {
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2521A507C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2521A506C();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2521A506C();

      [v11 updateChartModel:v8 didUpdateValue:{v12, v13}];
      swift_unknownObjectRelease();
    }
  }
}

void sub_2521A3C6C(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2521A506C();

  *a2 = v3;
}

uint64_t sub_2521A3CEC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a5;
  return sub_2521A507C();
}

void sub_2521A3D5C(BOOL *a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 tinnitusFilterMode];

  *a1 = v3 == 0;
}

void *sub_2521A3DD4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2521A506C();

    [v2 updateChartModel:v0 didUpdateValue:{v3, v4}];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t type metadata accessor for HUIEQChartModel(uint64_t a1)
{
  result = qword_27F4D43A0;
  if (!qword_27F4D43A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2521A3FD4@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_2521A4094(uint64_t a1)
{
  sub_2521A4694(319);
  if (v1 <= 0x3F)
  {
    sub_2521A46EC();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2521A4694(uint64_t a1)
{
  if (!qword_27F4D43B0)
  {
    type metadata accessor for CGPoint(255);
    v1 = sub_2521A508C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4D43B0);
    }
  }
}

void sub_2521A46EC()
{
  if (!qword_27F4D43B8)
  {
    v0 = sub_2521A508C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4D43B8);
    }
  }
}

uint64_t sub_2521A473C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2521A4784(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2521A48AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2521A4918()
{
  result = qword_27F4D43C8;
  if (!qword_27F4D43C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4D43C0, &qword_2521AA838);
    sub_2521A49D4(&unk_27F4D43D0, type metadata accessor for HUIEQChart, &protocol conformance descriptor for HUIEQChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4D43C8);
  }

  return result;
}

uint64_t sub_2521A49D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}
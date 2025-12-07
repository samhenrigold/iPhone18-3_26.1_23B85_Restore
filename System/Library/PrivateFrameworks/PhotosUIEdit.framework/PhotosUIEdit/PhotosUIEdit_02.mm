uint64_t OUTLINED_FUNCTION_9_3(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return PEPhotoStyleDPad.withAnimation(duration:_:completion:)(v12, &a12, 0, 0, a3);
}

void sub_25E724E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E726DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *PECopyEditsSettingIdentifierName(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"PECopyEditsSettingIdentifierCinematic";
  }

  else
  {
    return off_279A30190[a1 - 1];
  }
}

void sub_25E72EF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E72FE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_25E731ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVNSceneprintClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNSceneprintClass_softClass;
  v7 = getVNSceneprintClass_softClass;
  if (!getVNSceneprintClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getVNSceneprintClass_block_invoke;
    v3[3] = &unk_279A304A0;
    v3[4] = &v4;
    __getVNSceneprintClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_25E7332A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNSceneprintClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __VisionLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279A304C0;
    v8 = 0;
    VisionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!VisionLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *VisionLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PEEditAction.m" lineNumber:53 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("VNSceneprint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getVNSceneprintClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PEEditAction.m" lineNumber:54 description:{@"Unable to find class %s", "VNSceneprint"}];

LABEL_10:
    __break(1u);
  }

  getVNSceneprintClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary = result;
  return result;
}

double PEExteriorAngleSum(void *a1)
{
  v1 = a1;
  v2 = 0.0;
  if ([v1 pointCount] >= 3)
  {
    v3 = 1;
    do
    {
      [v1 pointAtIndex:v3 - 1];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      [v1 pointAtIndex:v3];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [v1 pointAtIndex:++v3];
      LODWORD(v16) = v9;
      LODWORD(v17) = v15;
      v2 = v2 + PESignedAngleBetweenPoints(v5, v7, v16, v11, v13, v17, v20, v21, v18, v19);
    }

    while ([v1 pointCount] - 1 > v3);
  }

  return v2;
}

long double PESignedAngleBetweenPoints(float a1, float a2, double a3, float a4, float a5, double a6, double a7, double a8, float a9, float a10)
{
  v10 = (a4 - a1);
  v11 = (a5 - a2);
  v12 = (a9 - a4);
  v13 = (a10 - a5);
  v14 = sqrt(v11 * v11 + v10 * v10);
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  if (v14 >= 0.00001)
  {
    v17 = 1.0 / v14 * v10;
    v16 = 1.0 / v14 * v11;
  }

  v18 = sqrt(v13 * v13 + v12 * v12);
  v19 = 0.0;
  if (v18 >= 0.00001)
  {
    v19 = 1.0 / v18 * v12;
    v15 = 1.0 / v18 * v13;
  }

  return atan2(v19 * v16 - v15 * v17, v16 * v15 + v19 * v17);
}

id thresholdImage(void *a1, float a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBF738];
  v4 = a1;
  v5 = [v3 cachedKernelWithString:{@"kernel vec4 PECleanupSegmentAnalyzerColorThreshold(__sample c, float t) { c = compare(c - t, vec4(0.0), vec4(1.0)) return c; }"}];;
  objc_msgSend_extent(v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v18[0] = v4;
  *&v6 = a2;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v18[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];

  v16 = [v5 applyWithExtent:v15 arguments:{v7, v9, v11, v13}];

  return v16;
}

double PEVectorNormalize(double a1, double a2)
{
  v2 = sqrt(a2 * a2 + a1 * a1);
  v3 = 0.0;
  if (v2 >= 0.00001)
  {
    return a1 * (1.0 / v2);
  }

  return v3;
}

id PELocalizedString(void *a1)
{
  v1 = a1;
  if (PELocalizedString_once != -1)
  {
    dispatch_once(&PELocalizedString_once, &__block_literal_global_713);
  }

  v2 = [PELocalizedString_frameworkBundle localizedStringForKey:v1 value:&stru_2870659C0 table:@"PhotosUIEdit"];
  if (objc_msgSend_isEqualToString_(v2))
  {
    v3 = [PELocalizedString_frameworkBundle localizedStringForKey:v1 value:&stru_2870659C0 table:@"PhotosUIEdit-Styles"];

    v2 = v3;
  }

  if (objc_msgSend_isEqualToString_(v2))
  {
    v4 = [PELocalizedString_frameworkBundle localizedStringForKey:v1 value:&stru_2870659C0 table:@"PhotosUIEdit-Cleanup"];

    v2 = v4;
  }

  if (objc_msgSend_isEqualToString_(v2))
  {
    v5 = [PELocalizedString_frameworkBundle localizedStringForKey:v1 value:&stru_2870659C0 table:@"PhotosUIEdit-4K120"];

    v2 = v5;
  }

  if (objc_msgSend_isEqualToString_(v2))
  {
    v6 = [PELocalizedString_frameworkBundle localizedStringForKey:v1 value:&stru_2870659C0 table:@"PhotosUIEdit-SpatialAudio"];

    v2 = v6;
  }

  if (objc_msgSend_isEqualToString_(v2))
  {
    v7 = [PELocalizedString_frameworkBundle localizedStringForKey:v1 value:&stru_2870659C0 table:@"PhotosUIEdit-Styles-BP"];

    v2 = v7;
  }

  return v2;
}

uint64_t __PELocalizedString_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = PELocalizedString_frameworkBundle;
  PELocalizedString_frameworkBundle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id PEStringWithValidatedFormat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = PFStringWithValidatedFormatAndLocale();

  return v9;
}

id PELocalizedStringWithValidatedFormat(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = MEMORY[0x277CBEAF8];
  v11 = a2;
  v12 = a1;
  v13 = [v10 currentLocale];
  v14 = PFStringWithValidatedFormatAndLocale();

  return v14;
}

__CFString *PEEditActionTypeString(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_279A30810[a1 - 1];
  }
}

__CFString *PESCAPReviewFallbackReasonString(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_279A308C0[a1 - 1];
  }
}

__CFString *PESCAPActionTypeString(uint64_t a1)
{
  if (a1)
  {
    return @"Smart C&P";
  }

  else
  {
    return @"Legacy C&P";
  }
}

void sub_25E742538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25E743468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1609(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2266(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E74710C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_25E748440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose((v65 - 224), 8);
  _Block_object_dispose((v65 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_25E74A498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2457(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E74AE7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_25E74B284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_25E74B9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E74C58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E74D568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2556(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PECanRenderPortrait()
{
  if (PECanRenderPortrait_onceToken != -1)
  {
    dispatch_once(&PECanRenderPortrait_onceToken, &__block_literal_global_210);
  }

  return PECanRenderPortrait_canRenderPortrait;
}

void __PECanRenderPortrait_block_invoke()
{
  v0 = MTLCreateSystemDefaultDevice();
  PECanRenderPortrait_canRenderPortrait = [v0 supportsFeatureSet:1];
}

__CFString *PEPhotoEditSessionEndString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Saved";
  }

  else
  {
    return off_279A31388[a1 - 1];
  }
}

__CFString *PEPhotoEditSessionEntryPointString(uint64_t a1)
{
  v1 = @"1UPButton";
  if (a1 == 1)
  {
    v1 = @"1UPQuickCrop";
  }

  if (a1 == 2)
  {
    return @"Arrowing";
  }

  else
  {
    return v1;
  }
}

__CFString *PEPhotoEditSessionSaveActionTypeString(uint64_t a1)
{
  v1 = @"Save";
  if (a1 == 2)
  {
    v1 = @"SaveAsDuplicate";
  }

  if (a1 == 1)
  {
    return @"SaveAsNewClip";
  }

  else
  {
    return v1;
  }
}

uint64_t __Block_byref_object_copy__3065(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PEAdjustmentCanApplyAdjustments(void *a1, void *a2, void *a3)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = a2;
  v35 = v5;
  if (![v4 count])
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL PEAdjustmentCanApplyAdjustments(NSArray<id<PEAdjustment>> *__strong _Nonnull, NSArray<PHAsset *> *__strong _Nonnull, NSError *__autoreleasing * _Nullable)"}];
    [v27 handleFailureInFunction:v28 file:@"PEAdjustment.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"adjustments.count"}];

    v5 = v35;
  }

  if (![v5 count])
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL PEAdjustmentCanApplyAdjustments(NSArray<id<PEAdjustment>> *__strong _Nonnull, NSArray<PHAsset *> *__strong _Nonnull, NSError *__autoreleasing * _Nullable)"}];
    [v29 handleFailureInFunction:v30 file:@"PEAdjustment.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"assets.count"}];

    v5 = v35;
  }

  v33 = objc_alloc_init(PEResourceManager);
  v6 = 0;
  if ([v5 count])
  {
    v36 = 0;
    v32 = *MEMORY[0x277CCA068];
    do
    {
      v7 = [v5 objectAtIndexedSubscript:v36];
      v48 = 0;
      v49 = &v48;
      v50 = 0x3032000000;
      v51 = __Block_byref_object_copy__3117;
      v52 = __Block_byref_object_dispose__3118;
      v53 = 0;
      v42 = 0;
      v43 = &v42;
      v44 = 0x3032000000;
      v45 = __Block_byref_object_copy__3117;
      v46 = __Block_byref_object_dispose__3118;
      v47 = 0;
      v8 = dispatch_group_create();
      dispatch_group_enter(v8);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __PEAdjustmentCanApplyAdjustments_block_invoke_2;
      v38[3] = &unk_279A31628;
      v40 = &v48;
      v41 = &v42;
      v9 = v8;
      v39 = v9;
      [(PEResourceManager *)v33 loadResourceForAsset:v7 requireLocalResources:0 forceRunAsUnadjustedAsset:0 progressHandler:&__block_literal_global_3119 resultHandler:v38];
      v10 = dispatch_time(0, 120000000000);
      v34 = dispatch_group_wait(v9, v10);
      if (v34)
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = [v7 uuid];
        v13 = [v11 stringWithFormat:@"Timed out loading edit resources for asset: %@", v12];

        v14 = MEMORY[0x277CCA9B8];
        v54 = v32;
        v55[0] = v13;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
        v16 = [v14 errorWithDomain:@"PEAdjustmentErrorDomain" code:1 userInfo:v15];
LABEL_9:

        v17 = 0;
        v6 = v16;
      }

      else
      {
        for (i = 0; i < [v4 count]; ++i)
        {
          v13 = [v4 objectAtIndexedSubscript:i];
          if (objc_opt_respondsToSelector())
          {
            v15 = objc_alloc_init(PEValuesCalculator);
            [(PEValuesCalculator *)v15 setEditSource:v49[5]];
            [(PEValuesCalculator *)v15 setCompositionController:v43[5]];
            v19 = v43[5];
            v37 = 0;
            v20 = [v13 canApplyToCompositionController:v19 valuesCalculator:v15 asset:v7 error:&v37];
            v21 = v37;
            v16 = v21;
            if (!v20)
            {
              goto LABEL_9;
            }
          }
        }

        v17 = 1;
      }

      _Block_object_dispose(&v42, 8);
      _Block_object_dispose(&v48, 8);

      if (v34)
      {
        break;
      }

      v22 = [v35 count];
      v5 = v35;
      ++v36;
      v23 = v17 ^ 1;
      if (v36 >= v22)
      {
        v23 = 1;
      }
    }

    while ((v23 & 1) == 0);
    if (a3)
    {
      v24 = v17;
    }

    else
    {
      v24 = 1;
    }

    if ((v24 & 1) == 0)
    {
      v25 = v6;
      v17 = 0;
      *a3 = v6;
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

void sub_25E7557E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3117(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __PEAdjustmentCanApplyAdjustments_block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 editSource];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 compositionController];

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = a1[4];

  dispatch_group_leave(v10);
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114E0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
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

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}
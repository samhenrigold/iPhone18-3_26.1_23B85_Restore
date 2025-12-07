@interface SetSectionProperty
@end

@implementation SetSectionProperty

void __captureSession_SetSectionProperty_block_invoke_2(uint64_t a1)
{
  captureSession_setPreviewSinkProperty(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {

    CFRelease(v4);
  }
}

void *__captureSession_SetSectionProperty_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{&unk_1F2244CE0, @"PreviewFilters", &unk_1F2244E00, @"PortraitLightingEffectStrength", &unk_1F2244E18, @"SemanticStyles", &unk_1F2244E30, @"PrimaryCaptureRect", 0}];
  captureSession_SetSectionProperty_sPropertyKTraceLabelsByPreviewSinkProperty = result;
  return result;
}

void __captureSession_SetSectionProperty_block_invoke_1349(uint64_t a1)
{
  captureSession_setPreviewSinkProperty(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {

    CFRelease(v4);
  }
}

void *__captureSession_SetSectionProperty_block_invoke_3()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v2[0] = @"BeginIrisMovieCaptureHostTime";
  v2[1] = @"EndIrisMovieCaptureHostTime";
  v2[2] = @"PreservesLivePhotoCaptureSuspendedOnSessionStop";
  v2[3] = @"UserInitiatedCaptureRequestTime";
  result = [v0 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v2, 4)}];
  captureSession_SetSectionProperty_propertyKeysSupportingAsyncSetter = result;
  return result;
}

void __captureSession_SetSectionProperty_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(*(a1 + 32) + 8) + 24) = captureSession_setSectionPropertyInternal(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), a5, a6, a7, a8, v12);
  v9 = *(a1 + 48);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 64);
  if (v11)
  {

    CFRelease(v11);
  }
}

uint64_t __captureSession_SetSectionProperty_block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = captureSession_setSectionPropertyInternal(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), a5, a6, a7, a8, v10);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end
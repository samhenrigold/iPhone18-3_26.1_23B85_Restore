uint64_t PUIDynamicRotationIsActive(uint64_t a1, uint64_t a2)
{
  if (PUIDynamicRotationIsActive_onceToken != -1)
  {
    PUIDynamicRotationIsActive_cold_1();
  }

  return PUIDynamicRotationIsActive_dynamicRotationIsActive;
}

void sub_1A8C882EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _PUIStyleCompareUsingIdentifiers(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a2;
  v6 = _PUIStyleIdentifierForStyle(a1, v3);
  v7 = _PUIStyleIdentifierForStyle(v5, v3);

  v8 = [v6 isEqualToString:v7];
  return v8;
}

id _PUIStyleIdentifierForStyle(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 allowsVariation];
  v5 = objc_opt_respondsToSelector();
  if (a2 && (v5 & 1) != 0 && v4)
  {
    v6 = [v3 nonVariatedIdentifier];
  }

  else
  {
    v6 = [v3 identifier];
  }

  v7 = v6;

  return v7;
}

uint64_t PUIPosterBoundingShapeFromInt(uint64_t a1)
{
  if (PUIPosterBoundingShapeIsValid(a1))
  {
    return a1;
  }

  else
  {
    return -1;
  }
}

uint64_t PUIPosterBoundingShapeIsValid(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v2 = [&unk_1F1C92C98 containsObject:v1];

  return v2;
}

uint64_t PUIFeatureEnabled(uint64_t a1)
{
  switch(a1)
  {
    case 0:

      goto LABEL_4;
    case 1:

      goto LABEL_4;
    case 2:

      goto LABEL_4;
    case 3:

      goto LABEL_4;
    case 4:

      goto LABEL_4;
    case 5:

      goto LABEL_4;
    case 6:

      goto LABEL_4;
    case 7:

      goto LABEL_4;
    case 8:

      goto LABEL_4;
    case 9:

      goto LABEL_4;
    case 10:
      if (!PFFeatureEnabled())
      {
        goto LABEL_42;
      }

      result = _os_feature_enabled_impl();
      break;
    case 11:

      return MEMORY[0x1EEE4E310]();
    case 12:

      goto LABEL_4;
    case 13:

LABEL_4:
      result = PFFeatureEnabled();
      break;
    default:
LABEL_42:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_1A8C89D80(uint64_t a1, int a2)
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

uint64_t sub_1A8C89DA0(uint64_t result, int a2, int a3)
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

uint64_t sub_1A8C89DC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1A8C8BFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRIncomingCallTextViewAdapterWrapperClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PosterKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PosterKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7854368;
    v6 = 0;
    PosterKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (PosterKitLibraryCore_frameworkLibrary)
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
  result = objc_getClass("PRIncomingCallTextViewAdapterWrapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRIncomingCallTextViewAdapterWrapperClass_block_invoke_cold_1();
  }

  getPRIncomingCallTextViewAdapterWrapperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PosterKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PosterKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A8C8ED4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8C8FB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t NSStringFromPUIStyleType(uint64_t a1)
{
  if (NSStringFromPUIStyleType_onceToken != -1)
  {
    NSStringFromPUIStyleType_cold_1();
  }

  v2 = NSStringFromPUIStyleType_typeToStringMap;

  return [v2 objectForKey:a1];
}

void __NSStringFromPUIStyleType_block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x1E698E6E0]) initWithCapacity:5];
  [v2 setObject:@"OpaqueDiscreteColors" forKey:0];
  [v2 setObject:@"Gradient" forKey:1];
  [v2 setObject:@"VibrantMaterial" forKey:2];
  [v2 setObject:@"VibrantMonochrome" forKey:3];
  [v2 setObject:@"LUT" forKey:4];
  v0 = [v2 copy];
  v1 = NSStringFromPUIStyleType_typeToStringMap;
  NSStringFromPUIStyleType_typeToStringMap = v0;
}

__CFString *NSStringFromPUIStyleGradientType(uint64_t a1)
{
  v1 = @"A";
  if (a1 == 1)
  {
    v1 = @"R";
  }

  if (a1 == 2)
  {
    return @"C";
  }

  else
  {
    return v1;
  }
}

id LocalizedNSStringFromPUIHomeScreenStyleVariantOption(void *a1)
{
  v1 = a1;
  v2 = [v1 isEqualToString:@"auto"];
  if (v2)
  {
    v3 = PUIBundle(v2);
    v4 = v3;
    v5 = @"AUTO";
  }

  else
  {
    v6 = [v1 isEqualToString:@"light"];
    if (v6)
    {
      v3 = PUIBundle(v6);
      v4 = v3;
      v5 = @"LIGHT";
    }

    else
    {
      v7 = [v1 isEqualToString:@"dark"];
      if (v7)
      {
        v3 = PUIBundle(v7);
        v4 = v3;
        v5 = @"DARK";
      }

      else
      {
        v10 = [v1 isEqualToString:@"always"];
        v11 = v10;
        v3 = PUIBundle(v10);
        v4 = v3;
        if (v11)
        {
          v5 = @"ALWAYS";
        }

        else
        {
          v5 = @"AUTO";
        }
      }
    }
  }

  v8 = [v3 localizedStringForKey:v5 value:&stru_1F1C6DED8 table:0];

  return v8;
}

_PUIStylePickerHomeScreenCAAsset *_PUIStylePickerHomeScreenCAAssetFromPUIHomeScreenStylePickerTypeOption(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"auto"])
  {
    v2 = [_PUIStylePickerHomeScreenCAAsset alloc];
    v3 = @"choice-0";
    goto LABEL_7;
  }

  if ([v1 isEqualToString:@"light"] || objc_msgSend(v1, "isEqualToString:", @"default"))
  {
    v2 = [_PUIStylePickerHomeScreenCAAsset alloc];
LABEL_6:
    v3 = @"choice-2";
    goto LABEL_7;
  }

  if ([v1 isEqualToString:@"dark"])
  {
    v2 = [_PUIStylePickerHomeScreenCAAsset alloc];
    v3 = @"choice-1";
  }

  else
  {
    if ([v1 isEqualToString:@"clear"])
    {
      v2 = [_PUIStylePickerHomeScreenCAAsset alloc];
    }

    else
    {
      v6 = [v1 isEqualToString:@"accent"];
      v2 = [_PUIStylePickerHomeScreenCAAsset alloc];
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v3 = @"choice-3";
  }

LABEL_7:
  v4 = [(_PUIStylePickerHomeScreenCAAsset *)v2 initWithAssetName:v3 bundle:0];

  return v4;
}

void sub_1A8C967DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A8C9798C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&a28);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8C99150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PUILogCommon(uint64_t a1)
{
  if (PUILogCommon_onceToken != -1)
  {
    PUILogCommon_cold_1();
  }

  v2 = PUILogCommon___logObj;

  return v2;
}

uint64_t __PUILogCommon_block_invoke()
{
  v0 = os_log_create("com.apple.PosterUIFoundation", "Common");
  v1 = PUILogCommon___logObj;
  PUILogCommon___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id PUILogRendering(uint64_t a1)
{
  if (PUILogRendering_onceToken != -1)
  {
    PUILogRendering_cold_1();
  }

  v2 = PUILogRendering___logObj;

  return v2;
}

uint64_t __PUILogRendering_block_invoke()
{
  v0 = os_log_create("com.apple.PosterUIFoundation", "Rendering");
  v1 = PUILogRendering___logObj;
  PUILogRendering___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id PUILogCaching(uint64_t a1)
{
  if (PUILogCaching_onceToken != -1)
  {
    PUILogCaching_cold_1();
  }

  v2 = PUILogCaching___logObj;

  return v2;
}

uint64_t __PUILogCaching_block_invoke()
{
  v0 = os_log_create("com.apple.PosterUIFoundation", "Caching");
  v1 = PUILogCaching___logObj;
  PUILogCaching___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id PUILogSnapshotter(uint64_t a1)
{
  if (PUILogSnapshotter_onceToken != -1)
  {
    PUILogSnapshotter_cold_1();
  }

  v2 = PUILogSnapshotter___logObj;

  return v2;
}

uint64_t __PUILogSnapshotter_block_invoke()
{
  v0 = os_log_create("com.apple.PosterUIFoundation", "Snapshotter");
  v1 = PUILogSnapshotter___logObj;
  PUILogSnapshotter___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id PUILogSnapshotting(uint64_t a1)
{
  if (PUILogSnapshotting_onceToken != -1)
  {
    PUILogSnapshotting_cold_1();
  }

  v2 = PUILogSnapshotting___logObj;

  return v2;
}

uint64_t __PUILogSnapshotting_block_invoke()
{
  v0 = os_log_create("com.apple.PosterUIFoundation", "Snapshotting");
  v1 = PUILogSnapshotting___logObj;
  PUILogSnapshotting___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id PUILogSnapshotCache(uint64_t a1)
{
  if (PUILogSnapshotCache_onceToken != -1)
  {
    PUILogSnapshotCache_cold_1();
  }

  v2 = PUILogSnapshotCache___logObj;

  return v2;
}

uint64_t __PUILogSnapshotCache_block_invoke()
{
  v0 = os_log_create("com.apple.PosterUIFoundation", "SnapshotCache");
  v1 = PUILogSnapshotCache___logObj;
  PUILogSnapshotCache___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id PUILogAnalysisService(uint64_t a1)
{
  if (PUILogAnalysisService_onceToken != -1)
  {
    PUILogAnalysisService_cold_1();
  }

  v2 = PUILogAnalysisService___logObj;

  return v2;
}

uint64_t __PUILogAnalysisService_block_invoke()
{
  v0 = os_log_create("com.apple.PosterUIFoundation", "AnalysisService");
  v1 = PUILogAnalysisService___logObj;
  PUILogAnalysisService___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id PUILogAnalysis(uint64_t a1)
{
  if (PUILogAnalysis_onceToken != -1)
  {
    PUILogAnalysis_cold_1();
  }

  v2 = PUILogAnalysis___logObj;

  return v2;
}

uint64_t __PUILogAnalysis_block_invoke()
{
  v0 = os_log_create("com.apple.PosterUIFoundation", "Analysis");
  v1 = PUILogAnalysis___logObj;
  PUILogAnalysis___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id PUILogReusableViewCache(uint64_t a1)
{
  if (PUILogReusableViewCache_onceToken != -1)
  {
    PUILogReusableViewCache_cold_1();
  }

  v2 = PUILogReusableViewCache___logObj;

  return v2;
}

uint64_t __PUILogReusableViewCache_block_invoke()
{
  v0 = os_log_create("com.apple.PosterUIFoundation", "ReusableViewCache");
  v1 = PUILogReusableViewCache___logObj;
  PUILogReusableViewCache___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

__IOSurface *PUICreateIOSurfaceForImage(void *a1, uint64_t *a2, int a3)
{
  v38[3] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [v5 pui_wrappedIOSurface];
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      *a2 = 0;
    }
  }

  else
  {
    [v5 scale];
    v9 = v8;
    [v5 size];
    v11 = v10;
    if (MEMORY[0x1AC5761E0](*MEMORY[0x1E696D130]) >= vcvtpd_u64_f64(v9 * v12) && MEMORY[0x1AC5761E0](*MEMORY[0x1E696CF58]) >= vcvtpd_u64_f64(v9 * v11))
    {
      v13 = PUIIOSurfaceFromCGImage([v5 CGImage], 1);
      v14 = v13;
      if (v13)
      {
        v7 = v13;
      }

      else
      {
        v15 = [v5 CGImage];
        if (CGImageGetBitsPerComponent(v15) > 8)
        {
          goto LABEL_23;
        }

        CGImageGetWidth(v15);
        CGImageGetHeight(v15);
        if (!CGImageGetImageProvider())
        {
          goto LABEL_23;
        }

        v16 = *MEMORY[0x1E695E4D0];
        v17 = *MEMORY[0x1E695F288];
        if (a3)
        {
          v37[0] = *MEMORY[0x1E695F298];
          v37[1] = v17;
          v18 = *MEMORY[0x1E695F280];
          v38[0] = v16;
          v38[1] = v18;
          v37[2] = *MEMORY[0x1E695F290];
          v38[2] = v16;
          v19 = MEMORY[0x1E695DF20];
          v20 = v38;
          v21 = v37;
          v22 = 3;
        }

        else
        {
          v35[0] = *MEMORY[0x1E695F298];
          v35[1] = v17;
          v23 = *MEMORY[0x1E695F280];
          v36[0] = v16;
          v36[1] = v23;
          v19 = MEMORY[0x1E695DF20];
          v20 = v36;
          v21 = v35;
          v22 = 2;
        }

        v24 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v22];
        v25 = CGImageProviderCopyImageBlockSetWithOptions();
        if (v25)
        {
          v26 = v25;
          CGImageBlockSetGetImageBlock();
          CGImageBlockGetBytesPerRow();
          CGImageBlockGetData();
          v7 = IOSurfaceWrapClientImage();
          *a2 = v26;
          ColorSpace = CGImageProviderGetColorSpace();
          if (ColorSpace)
          {
            v28 = ColorSpace;
            DeviceRGB = CGColorSpaceCreateDeviceRGB();
            if ((CGColorSpaceEqualToColorSpace() & 1) == 0)
            {
              v30 = CGColorSpaceCopyPropertyList(v28);
              if (v30)
              {
                v31 = v30;
                IOSurfaceSetValue(v7, *MEMORY[0x1E696CEE0], v30);
                CFRelease(v31);
              }
            }

            CGColorSpaceRelease(DeviceRGB);
          }
        }

        else
        {
          v7 = 0;
        }

        if (v7)
        {
          [(__IOSurface *)v7 setAttachment:@"PUI-WrapsClientImage" forKey:*MEMORY[0x1E696CF98]];
        }

        else
        {
LABEL_23:
          MGGetBoolAnswer();
          [v5 size];
          [v5 scale];
          [v5 pui_colorSpace];
          v34 = v5;
          v32 = BSUISurfaceWithColorSpaceAndDrawBlock();
          v7 = v32;
          if (v32)
          {
            [(__IOSurface *)v32 setAttachment:@"PosterUIFoundation" forKey:*MEMORY[0x1E696CF98]];
          }
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

id __PUICreateCroppedIOSurface(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v11 = a1;
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  if (CGRectIsEmpty(v25) || (BSFloatLessThanOrEqualToFloat() & 1) != 0 || (BSFloatLessThanOrEqualToFloat() & 1) != 0)
  {
    v12 = 0;
    goto LABEL_5;
  }

  texture = 0;
  pixelBufferOut = 0;
  pixelTransferSessionOut = 0;
  v14 = *MEMORY[0x1E695E480];
  v15 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v11, 0, &pixelBufferOut);
  if (v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = pixelBufferOut == 0;
  }

  if (v16 || ((v15 = VTPixelTransferSessionCreate(v14, &pixelTransferSessionOut)) == 0 ? (v17 = pixelTransferSessionOut == 0) : (v17 = 1), v17))
  {
    IOSurfaceBackedCVPixelBufferWithAttributes = v15;
  }

  else
  {
    v26.origin.x = a2;
    v26.origin.y = a3;
    v26.size.width = a4;
    v26.size.height = a5;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v26);
    IOSurfaceBackedCVPixelBufferWithAttributes = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983E40], DictionaryRepresentation);
    CFRelease(DictionaryRepresentation);
    if (!IOSurfaceBackedCVPixelBufferWithAttributes)
    {
      IOSurfaceGetPixelFormat(v11);
      IOSurfaceBackedCVPixelBufferWithAttributes = FigCreateIOSurfaceBackedCVPixelBufferWithAttributes();
      v18 = 0;
      if (IOSurfaceBackedCVPixelBufferWithAttributes || !texture)
      {
        goto LABEL_19;
      }

      IOSurfaceBackedCVPixelBufferWithAttributes = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, pixelBufferOut, texture);
      if (!IOSurfaceBackedCVPixelBufferWithAttributes)
      {
        v18 = CVPixelBufferGetIOSurface(texture);
        goto LABEL_19;
      }
    }
  }

  v18 = 0;
LABEL_19:
  CVPixelBufferRelease(pixelBufferOut);
  CVPixelBufferRelease(texture);
  if (pixelTransferSessionOut)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
    CFRelease(pixelTransferSessionOut);
  }

  if (IOSurfaceBackedCVPixelBufferWithAttributes)
  {
    v12 = 0;
  }

  else
  {
    v12 = v18;
  }

LABEL_5:

  return v12;
}

id __PUIImageByApplyingColorSpace(void *a1, CGColorSpace *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 CGImage];
  if (!v4)
  {
    v10 = PUILogCommon(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __PUIImageByApplyingColorSpace_cold_4(v3, v10);
    }

    goto LABEL_13;
  }

  v5 = v4;
  ColorSpace = CGImageGetColorSpace(v4);
  if (!ColorSpace)
  {
    v10 = PUILogCommon(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __PUIImageByApplyingColorSpace_cold_3(v3, v10);
    }

LABEL_13:

    v11 = v3;
    goto LABEL_36;
  }

  v7 = ColorSpace;
  v8 = CGColorSpaceRetain(a2);
  if (v8)
  {
    goto LABEL_29;
  }

  Type = CGColorSpaceGetType();
  if (Type <= 1)
  {
    if (Type)
    {
      if (Type == 1)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

LABEL_21:
    DeviceGray = CGColorSpaceCreateDeviceGray();
    goto LABEL_23;
  }

  switch(Type)
  {
    case 2:
      goto LABEL_22;
    case 4:
      goto LABEL_16;
    case 3:
      goto LABEL_21;
  }

LABEL_17:
  IsICCCompatible = CGColorSpaceIsICCCompatible();
  if (!IsICCCompatible)
  {
    v15 = PUILogCommon(IsICCCompatible);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __PUIImageByApplyingColorSpace_cold_1(v7);
    }

    goto LABEL_27;
  }

  Model = CGColorSpaceGetModel(v7);
  if (Model != 2)
  {
    if (Model != 1)
    {
      if (!Model)
      {
        goto LABEL_21;
      }

      v15 = PUILogCommon(Model);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __PUIImageByApplyingColorSpace_cold_2(v7);
      }

LABEL_27:

LABEL_28:
      v8 = CGColorSpaceRetain(v7);
      goto LABEL_29;
    }

LABEL_16:
    DeviceGray = CGColorSpaceCreateDeviceRGB();
    goto LABEL_23;
  }

LABEL_22:
  DeviceGray = CGColorSpaceCreateDeviceCMYK();
LABEL_23:
  v8 = DeviceGray;
  if (!DeviceGray)
  {
    goto LABEL_28;
  }

LABEL_29:
  v11 = v3;
  if ((CGColorSpaceEqualToColorSpace() & 1) == 0)
  {
    CopyWithColorSpace = CGImageCreateCopyWithColorSpace(v5, v8);
    if (CopyWithColorSpace)
    {
      v17 = CopyWithColorSpace;
      v18 = objc_alloc(MEMORY[0x1E69DCAB8]);
      [v3 scale];
      v11 = [v18 initWithCGImage:v17 scale:objc_msgSend(v3 orientation:{"imageOrientation"), v19}];

      CFRelease(v17);
    }

    else
    {
      v20 = PUILogCommon(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = 138412802;
        v23 = v8;
        v24 = 2112;
        v25 = v5;
        v26 = 2114;
        v27 = v7;
        _os_log_error_impl(&dword_1A8C85000, v20, OS_LOG_TYPE_ERROR, "Failed to create copy with colorSpace=%@ of original CGImage=%@ with colorSpace=%{public}@", &v22, 0x20u);
      }

      v11 = v3;
    }
  }

  CGColorSpaceRelease(v8);
LABEL_36:

  return v11;
}

BOOL PUIIOSurfaceIsVolatile(__IOSurface *a1)
{
  oldState = 0;
  if (IOSurfaceSetPurgeable(a1, 3u, &oldState))
  {
    v1 = 1;
  }

  else
  {
    v1 = oldState == 0;
  }

  return !v1;
}

BOOL PUIWritePNGFromCGImageRef(CGImage *a1, CFURLRef url, void *a3)
{
  v5 = CGImageDestinationCreateWithURL(url, @"public.png", 1uLL, 0);
  CGImageDestinationAddImage(v5, a1, 0);
  v6 = CGImageDestinationFinalize(v5);
  v7 = v6;
  if (a3 && !v6)
  {
    v8 = PFFunctionNameForAddress();
    *a3 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
  }

  CFRelease(v5);
  return v7;
}

void releaseIOSurface(void *a1)
{
  [a1 unlockWithOptions:1 seed:0];
  [a1 decrementUseCount];
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_1A8C9EA4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromPUIPosterLegibilityStyle(uint64_t a1)
{
  v1 = @"None";
  if (a1 == 1)
  {
    v1 = @"LightContentWithDarkShadow";
  }

  if (a1 == 2)
  {
    return @"DarkContentWithLightShadow";
  }

  else
  {
    return v1;
  }
}

BOOL _UILegibilityStyleForPUIPosterLegibilityStyle(_BOOL8 result)
{
  if (result != 2)
  {
    return result;
  }

  return result;
}

BOOL PUIPosterLegibilityStyleForUILegibilityStyle(_BOOL8 result)
{
  if (result != 2)
  {
    return result;
  }

  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

uint64_t OUTLINED_FUNCTION_2()
{

  return objc_opt_class();
}

__CFString *UIFontNameForPUIFontIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PRTimeFontIdentifierRounded"])
  {
    v2 = @".SFRoundedNumeric-Medium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSoft"])
  {
    v2 = @".SFSoftNumeric-Semibold";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSlab"])
  {
    v2 = @".ADTSlabSoftNumeric-Semibold";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierStencil"])
  {
    v2 = @".SFStencilNumeric-Semibold";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierRail"])
  {
    v2 = @".SFRailRoundedNumeric-Heavy";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierNewYork"])
  {
    v2 = @".NewYorkSoftNumeric-Semibold";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSFArabic"])
  {
    v2 = @".SFArabic-Medium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSFArabicRounded"])
  {
    v2 = @".SFArabicRounded-Medium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSFHebrew"])
  {
    v2 = @".SFHebrew-Medium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSFHebrewRounded"])
  {
    v2 = @".SFHebrewRounded-Medium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSFPro"])
  {
    v2 = @".SFUI-Medium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSFRounded"])
  {
    v2 = @".SFUIRounded-Medium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierNewYorkAlpha"])
  {
    v2 = @".NewYork-Medium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSFCondensed"])
  {
    v2 = @".SFUI-CondensedMedium";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PUIFontIdentifierForFontName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@".SFRoundedNumeric-Medium"])
  {
    v2 = @"PRTimeFontIdentifierRounded";
  }

  else if ([v1 isEqualToString:@".SFSoftNumeric-Semibold"])
  {
    v2 = @"PRTimeFontIdentifierSoft";
  }

  else if ([v1 isEqualToString:@".ADTSlabSoftNumeric-Semibold"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @".ADTSlabNumeric-Semibold"))
  {
    v2 = @"PRTimeFontIdentifierSlab";
  }

  else if ([v1 isEqualToString:@".SFStencilNumeric-Semibold"])
  {
    v2 = @"PRTimeFontIdentifierStencil";
  }

  else if ([v1 isEqualToString:@".SFRailRoundedNumeric-Heavy"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @".SFRailNumeric-Heavy"))
  {
    v2 = @"PRTimeFontIdentifierRail";
  }

  else if ([v1 isEqualToString:@".NewYorkSoftNumeric-Semibold"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @".NewYorkNumeric-Semibold"))
  {
    v2 = @"PRTimeFontIdentifierNewYork";
  }

  else if ([v1 isEqualToString:@".SFArabic-Medium"])
  {
    v2 = @"PRTimeFontIdentifierSFArabic";
  }

  else if ([v1 isEqualToString:@".SFArabicRounded-Medium"])
  {
    v2 = @"PRTimeFontIdentifierSFArabicRounded";
  }

  else if ([v1 isEqualToString:@".SFHebrew-Medium"])
  {
    v2 = @"PRTimeFontIdentifierSFHebrew";
  }

  else if ([v1 isEqualToString:@".SFHebrewRounded-Medium"])
  {
    v2 = @"PRTimeFontIdentifierSFHebrewRounded";
  }

  else if ([v1 isEqualToString:@".SFUI-Medium"])
  {
    v2 = @"PRTimeFontIdentifierSFPro";
  }

  else if ([v1 isEqualToString:@"..SFCompactRounded-Regular"])
  {
    v2 = @"PRTimeFontIdentifierSFRounded";
  }

  else if ([v1 isEqualToString:@".SFCompact-Medium"])
  {
    v2 = @"PRTimeFontIdentifierSFCondensed";
  }

  else if ([v1 isEqualToString:@".NewYork-Medium"])
  {
    v2 = @"PRTimeFontIdentifierNewYorkAlpha";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PUILocalizedDisplayNameForTimeFontIdentifier(void *a1)
{
  v1 = a1;
  v2 = [v1 isEqualToString:@"PRTimeFontIdentifierRounded"];
  if (v2)
  {
    v3 = @"TIME_FONT_ROUNDED";
LABEL_13:
    v4 = PUIBundle(v2);
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F1C6DED8 table:0];

    goto LABEL_14;
  }

  v2 = [v1 isEqualToString:@"PRTimeFontIdentifierSoft"];
  if (v2)
  {
    v3 = @"TIME_FONT_SOFT";
    goto LABEL_13;
  }

  v2 = [v1 isEqualToString:@"PRTimeFontIdentifierSlab"];
  if (v2)
  {
    v3 = @"TIME_FONT_SLAB";
    goto LABEL_13;
  }

  v2 = [v1 isEqualToString:@"PRTimeFontIdentifierStencil"];
  if (v2)
  {
    v3 = @"TIME_FONT_STENCIL";
    goto LABEL_13;
  }

  v2 = [v1 isEqualToString:@"PRTimeFontIdentifierRail"];
  if (v2)
  {
    v3 = @"TIME_FONT_RAIL";
    goto LABEL_13;
  }

  v2 = [v1 isEqualToString:@"PRTimeFontIdentifierNewYork"];
  if (v2)
  {
    v3 = @"TIME_FONT_NEWYORK";
    goto LABEL_13;
  }

  v5 = 0;
LABEL_14:

  return v5;
}

__CFString *PUIMinimumVariableFontNameForTimeFontIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PRTimeFontIdentifierRounded"])
  {
    v2 = @".SFRoundedNumeric-Thin";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSoft"])
  {
    v2 = @".SFSoftNumeric-Thin";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSlab"])
  {
    v2 = @".ADTSlabSoftNumeric-Medium";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierStencil"])
  {
    v2 = @".SFStencilNumeric-Thin";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierNewYork"])
  {
    v2 = @".NewYorkSoftNumeric-Medium";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PUIMaximumVariableFontNameForTimeFontIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PRTimeFontIdentifierRounded"])
  {
    v2 = @".SFRoundedNumeric-Heavy";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSoft"])
  {
    v2 = @".SFSoftNumeric-Heavy";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierSlab"])
  {
    v2 = @".ADTSlabSoftNumeric-Heavy";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierStencil"])
  {
    v2 = @".SFStencilNumeric-Heavy";
  }

  else if ([v1 isEqualToString:@"PRTimeFontIdentifierNewYork"])
  {
    v2 = @".NewYorkSoftNumeric-Heavy";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PUIFontIdentifiers(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if ((a1 & 1) == 0)
  {
    [v2 addObject:@"PRTimeFontIdentifierSoft"];
    [v3 addObject:@"PRTimeFontIdentifierRounded"];
    [v3 addObject:@"PRTimeFontIdentifierStencil"];
    [v3 addObject:@"PRTimeFontIdentifierNewYork"];
    [v3 addObject:@"PRTimeFontIdentifierSlab"];
    [v3 addObject:@"PRTimeFontIdentifierRail"];
  }

  return v3;
}

id PUIFontAttributesForPUIFontIdentifier(void *a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 isEqualToString:@"PRTimeFontIdentifierNewYork"])
  {
    v13[0] = *MEMORY[0x1E69658F8];
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1869640570];
    v11[0] = v2;
    v12[0] = &unk_1F1C92718;
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1397704276];
    v11[1] = v3;
    v12[1] = &unk_1F1C92730;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v13[1] = *MEMORY[0x1E6965890];
    v14[0] = v4;
    v14[1] = &unk_1F1C92748;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

LABEL_5:
    goto LABEL_7;
  }

  if ([v1 isEqualToString:@"PRTimeFontIdentifierSlab"])
  {
    v9 = *MEMORY[0x1E69658F8];
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1397704276];
    v7 = v2;
    v8 = &unk_1F1C92760;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v10 = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    goto LABEL_5;
  }

  v5 = MEMORY[0x1E695E0F8];
LABEL_7:

  return v5;
}

void __destructor_8_s24_s32(uint64_t a1)
{
  v2 = *(a1 + 32);
}

id __copy_helper_block_e8_40n17_8_8_t0w24_s24_s32(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  *(a1 + 64) = *(a2 + 64);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  return result;
}

void __destroy_helper_block_e8_40n9_8_s24_s32(uint64_t a1)
{
  v2 = *(a1 + 72);
}

void __copy_assignment_8_8_t0w24_s24_s32(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  objc_storeStrong((a1 + 24), *(a2 + 3));
  v5 = *(a2 + 4);

  objc_storeStrong((a1 + 32), v5);
}

void sub_1A8CAA0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PUIPosterSnapshotBundleSharedDateFormatter(uint64_t a1)
{
  if (PUIPosterSnapshotBundleSharedDateFormatter_onceToken != -1)
  {
    PUIPosterSnapshotBundleSharedDateFormatter_cold_1();
  }

  v2 = PUIPosterSnapshotBundleSharedDateFormatter_dateFormatter;

  return v2;
}

uint64_t __PUIPosterSnapshotBundleSharedDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v1 = PUIPosterSnapshotBundleSharedDateFormatter_dateFormatter;
  PUIPosterSnapshotBundleSharedDateFormatter_dateFormatter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id PUIPosterCurrentSnapshotBundleEpochAndVersionIdentifier(uint64_t a1)
{
  if (PUIPosterCurrentSnapshotBundleEpochAndVersionIdentifier_onceToken != -1)
  {
    PUIPosterCurrentSnapshotBundleEpochAndVersionIdentifier_cold_1();
  }

  v2 = PUIPosterCurrentSnapshotBundleEpochAndVersionIdentifier_currentSnapshotBundleEpochAndVersion;

  return v2;
}

uint64_t __PUIPosterCurrentSnapshotBundleEpochAndVersionIdentifier_block_invoke()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d+%d+%d", 21, 14, 5];
  v1 = PUIPosterCurrentSnapshotBundleEpochAndVersionIdentifier_currentSnapshotBundleEpochAndVersion;
  PUIPosterCurrentSnapshotBundleEpochAndVersionIdentifier_currentSnapshotBundleEpochAndVersion = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id _posterLevelSetForComponent(uint64_t a1)
{
  v2 = 0;
  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      v3 = -1000;
    }

    else
    {
      if (a1 != 6)
      {
        goto LABEL_13;
      }

      v3 = -2000;
    }
  }

  else
  {
    if (a1 == 9)
    {
      v2 = +[PUIPosterLevelSet allLevelsExceptFloating];
      goto LABEL_13;
    }

    if (a1 == 8)
    {
      v2 = +[PUIPosterLevelSet compositeLevelSet];
      goto LABEL_13;
    }

    if (a1 != 7)
    {
      goto LABEL_13;
    }

    v3 = 1000;
  }

  v2 = [PUIPosterLevelSet levelSetForLevel:v3];
LABEL_13:

  return v2;
}

uint64_t _componentForLevelSet(void *a1)
{
  v1 = a1;
  if ([v1 numberOfLevels] != 1)
  {
    if ([v1 isCompositeLevelSet])
    {
      v2 = 8;
      goto LABEL_13;
    }

    v3 = +[PUIPosterLevelSet allLevelsExceptFloating];
    v4 = [v1 isEqualToLevelSet:v3];

    if (v4)
    {
      v2 = 9;
      goto LABEL_13;
    }

LABEL_12:
    v2 = 0;
    goto LABEL_13;
  }

  if (([v1 containsLevel:-2000] & 1) == 0)
  {
    if ([v1 containsLevel:-1000])
    {
      v2 = 5;
      goto LABEL_13;
    }

    if ([v1 containsLevel:1000])
    {
      v2 = 7;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v2 = 6;
LABEL_13:

  return v2;
}

id PUIPosterSnapshotBundleURLForComponent(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    PUIPosterSnapshotBundleURLForComponent_cold_1();
  }

  v4 = v3;
  v5 = 0;
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      v6 = PUIPosterSnapshotBundleURLForComponent(v3, 2);
      if (a2 == 5)
      {
        v7 = v6;
        v8 = @"Foreground.atx";
      }

      else
      {
        v7 = v6;
        v8 = @"Background.atx";
      }
    }

    else
    {
      switch(a2)
      {
        case 7:
          v6 = PUIPosterSnapshotBundleURLForComponent(v3, 2);
          v7 = v6;
          v8 = @"Floating.atx";
          break;
        case 8:
          v6 = PUIPosterSnapshotBundleURLForComponent(v3, 2);
          v7 = v6;
          v8 = @"Composite.atx";
          break;
        case 9:
          v6 = PUIPosterSnapshotBundleURLForComponent(v3, 2);
          v7 = v6;
          v8 = @"AllLevelsExceptFloating.atx";
          break;
        default:
          goto LABEL_23;
      }
    }

    goto LABEL_22;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v6 = PUIPosterSnapshotBundleURLForComponent(v3, 1);
      v7 = v6;
      v8 = @"Info.plist";
    }

    else
    {
      v6 = PUIPosterSnapshotBundleURLForComponent(v3, 2);
      v7 = v6;
      v8 = @"ColorStatistics.plist";
    }

LABEL_22:
    v5 = [v6 URLByAppendingPathComponent:v8 isDirectory:0];

    goto LABEL_23;
  }

  if (a2 == 1)
  {
    v9 = @"Contents";
  }

  else
  {
    if (a2 != 2)
    {
      goto LABEL_23;
    }

    v9 = @"Resources";
  }

  v5 = [v3 URLByAppendingPathComponent:v9 isDirectory:1];
LABEL_23:

  return v5;
}

id PUIPosterSnapshotBundleURLForPosterLevelSet(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    PUIPosterSnapshotBundleURLForPosterLevelSet_cold_1();
  }

  v5 = v4;
  v6 = _componentForLevelSet(v4);
  if (v6)
  {
    v7 = PUIPosterSnapshotBundleURLForComponent(v3, v6);
  }

  else
  {
    v8 = PUIPosterSnapshotBundleURLForComponent(v3, 8);
    v9 = [v8 URLByDeletingLastPathComponent];

    v10 = objc_opt_new();
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __PUIPosterSnapshotBundleURLForPosterLevelSet_block_invoke;
    v19 = &unk_1E7854A48;
    v20 = v10;
    v11 = v10;
    [v5 enumerateLevels:&v16];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v11 componentsJoinedByString:@"-"];
    v14 = [v12 stringWithFormat:@"Snapshot-[%@].atx", v13, v16, v17, v18, v19];
    v7 = [v9 URLByAppendingPathComponent:v14];
  }

  return v7;
}

void __PUIPosterSnapshotBundleURLForPosterLevelSet_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Lvl%lld]", a2];
  [v2 addObject:v3];
}

void PUIPosterSnapshotBundleComponentEnumerate(void *a1)
{
  v1 = a1;
  v2 = 0;
  do
  {
    do
    {
      ++v2;
    }

    while (!v2);
    v3 = 0;
    v1[2](v1, v2, &v3);
  }

  while (v2 <= 9 && (v3 & 1) == 0);
}

void PUIPosterSnapshotBundleComponentEnumerateDirectories(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PUIPosterSnapshotBundleComponentEnumerateDirectories_block_invoke;
  v3[3] = &unk_1E7854A70;
  v4 = v1;
  v2 = v1;
  PUIPosterSnapshotBundleComponentEnumerate(v3);
}

uint64_t __PUIPosterSnapshotBundleComponentEnumerateDirectories_block_invoke(uint64_t result, uint64_t a2)
{
  if ((a2 - 1) <= 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

double PUIPosterParallaxRequiredOverhangForDeviceClass(int a1)
{
  result = 78.0;
  if (a1 != 2)
  {
    return 26.0;
  }

  return result;
}

double PUIPosterParallaxDesiredOverhangForDeviceClass(int a1)
{
  result = 34.0;
  if (a1 == 2)
  {
    return 118.0;
  }

  return result;
}

double PUIPosterParallaxRequiredOverhangForCurrentDeviceClass()
{
  v0 = [MEMORY[0x1E698E730] sharedInstance];
  if ([v0 deviceClass] == 2)
  {
    v1 = 78.0;
  }

  else
  {
    v1 = 26.0;
  }

  return v1;
}

double PUIPosterParallaxDesiredOverhangForCurrentDeviceClass()
{
  v0 = [MEMORY[0x1E698E730] sharedInstance];
  if ([v0 deviceClass] == 2)
  {
    v1 = 118.0;
  }

  else
  {
    v1 = 34.0;
  }

  return v1;
}

void sub_1A8CAD390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PUIDynamicRotationIsActive_block_invoke()
{
  v0 = PF_IS_PAD_DEVICE();
  result = PFFeatureEnabled();
  v2 = result;
  if ((v0 & 1) == 0)
  {
    result = _os_feature_enabled_impl();
    v2 &= result;
  }

  PUIDynamicRotationIsActive_dynamicRotationIsActive = v2;
  return result;
}

void sub_1A8CAFB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL PUIMaterialsIsLowQualityDevice(uint64_t a1, uint64_t a2)
{
  if (PUIMaterialsIsLowQualityDevice_onceToken != -1)
  {
    PUIMaterialsIsLowQualityDevice_cold_1();
  }

  return PUIMaterialsIsLowQualityDevice_supportsHighQualityBlurs == 0;
}

void __PUIMaterialsIsLowQualityDevice_block_invoke()
{
  v1 = MGGetStringAnswer();
  if ([v1 isEqualToString:@"t8010"])
  {
    v0 = 0;
  }

  else
  {
    v0 = [v1 isEqualToString:@"t8011"] ^ 1;
  }

  PUIMaterialsIsLowQualityDevice_supportsHighQualityBlurs = v0;
}

id PUIHomeScreenLegibilityMaterialRecipeBundle()
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = objc_opt_self();
  v2 = [v0 bundleForClass:v1];

  return v2;
}

void PUIHomeScreenLegibilityMaterialRecipeScaleAdjustment_block_invoke(uint64_t result, uint64_t a2)
{
  if (PUIMaterialsIsLowQualityDevice_onceToken != -1)
  {
    PUIMaterialsIsLowQualityDevice_cold_1();
  }
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

__CFString *NSStringFromPUIRenderingMode(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown - %ld)", a1];
  }

  else
  {
    v2 = off_1E7854C28[a1];
  }

  return v2;
}

__CFString *NSStringFromPUIRenderingContent(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"preview";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown - %ld)", a1];
    }
  }

  else
  {
    v2 = @"default";
  }

  return v2;
}

__CFString *NSStringFromPUIPosterPreviewContent(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown - %ld)", a1];
  }

  else
  {
    v2 = off_1E7854C48[a1];
  }

  return v2;
}

void sub_1A8CB6DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak((v26 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v27 - 104));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A8CB8324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v27 + 64));
  objc_destroyWeak(&location);
  objc_sync_exit(v26);
  _Unwind_Resume(a1);
}

void sub_1A8CB9264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PosterKitLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = PosterKitLibraryCore_frameworkLibrary_0;
  v6 = PosterKitLibraryCore_frameworkLibrary_0;
  if (!PosterKitLibraryCore_frameworkLibrary_0)
  {
    v7 = xmmword_1E7854DF0;
    v8 = *off_1E7854E00;
    v9 = 0;
    v4[3] = _sl_dlopen();
    PosterKitLibraryCore_frameworkLibrary_0 = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1A8CBA7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PosterKitLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  PosterKitLibraryCore_frameworkLibrary_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PosterKitLibrary()
{
  v3 = 0;
  v0 = PosterKitLibraryCore(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

id getPRIncomingCallFontsProviderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRIncomingCallFontsProviderClass_softClass;
  v7 = getPRIncomingCallFontsProviderClass_softClass;
  if (!getPRIncomingCallFontsProviderClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPRIncomingCallFontsProviderClass_block_invoke;
    v3[3] = &unk_1E7854348;
    v3[4] = &v4;
    __getPRIncomingCallFontsProviderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A8CBA9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRIncomingCallFontsProviderClass_block_invoke(uint64_t a1)
{
  PosterKitLibrary();
  result = objc_getClass("PRIncomingCallFontsProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRIncomingCallFontsProviderClass_block_invoke_cold_1();
  }

  getPRIncomingCallFontsProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPRIncomingCallMetricsProviderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRIncomingCallMetricsProviderClass_softClass;
  v7 = getPRIncomingCallMetricsProviderClass_softClass;
  if (!getPRIncomingCallMetricsProviderClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPRIncomingCallMetricsProviderClass_block_invoke;
    v3[3] = &unk_1E7854348;
    v3[4] = &v4;
    __getPRIncomingCallMetricsProviderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A8CBAB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRIncomingCallMetricsProviderClass_block_invoke(uint64_t a1)
{
  PosterKitLibrary();
  result = objc_getClass("PRIncomingCallMetricsProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRIncomingCallMetricsProviderClass_block_invoke_cold_1();
  }

  getPRIncomingCallMetricsProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A8CBCC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  _Block_object_dispose((v65 - 248), 8);
  _Block_object_dispose((v65 - 200), 8);
  _Block_object_dispose((v65 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A8CBF350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A8CC1BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PUITextLayoutSetSharedInit(void *a1)
{
  if (!a1[1])
  {
    v3 = a1;
    v4 = objc_opt_new();
    v5 = a1[1];
    a1[1] = v4;
  }
}

id PUIBundle(uint64_t a1)
{
  if (PUIBundle___onceToken != -1)
  {
    PUIBundle_cold_1();
  }

  v2 = PUIBundle___posterKitBundle;

  return v2;
}

void __PUIBundle_block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_self();
  v1 = [v0 bundleForClass:v3];
  v2 = PUIBundle___posterKitBundle;
  PUIBundle___posterKitBundle = v1;
}

uint64_t PUIIsPlatformSupported(uint64_t a1, uint64_t a2)
{
  if (PUIIsPlatformSupported_onceToken != -1)
  {
    PUIIsPlatformSupported_cold_1();
  }

  return PUIIsPlatformSupported_isPlatformSupported;
}

uint64_t __PUIIsPlatformSupported_block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v4 = _os_feature_enabled_impl();
    result = 0;
  }

  else
  {
    result = _os_feature_enabled_impl();
    v4 = 0;
  }

  PUIIsPlatformSupported_isPlatformSupported = (v1 == 0) & result | v4 & 1;
  return result;
}

id PUIPinViewWithinView(void *a1, void *a2)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1;
  v18 = [v4 leadingAnchor];
  v17 = [v3 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v19[0] = v16;
  v5 = [v4 trailingAnchor];
  v6 = [v3 trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v19[1] = v7;
  v8 = [v4 topAnchor];
  v9 = [v3 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v19[2] = v10;
  v11 = [v4 bottomAnchor];

  v12 = [v3 bottomAnchor];

  v13 = [v11 constraintEqualToAnchor:v12];
  v19[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v14];

  return v14;
}

double PUIContentFrameForDisplayConfigurationAndOrientation(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = a1;
  v8 = PUIFeatureEnabled(8);
  if (v7)
  {
    if (v8)
    {
      [v7 bounds];
      if ((BSSizeEqualToSize() & 1) == 0)
      {
        BSSizeSwap();
        v9 = BSSizeEqualToSize();
        if ((v9 & 1) == 0 && PUIDynamicRotationIsActive(v9, v10) && BSInterfaceOrientationIsLandscape())
        {
          BSSizeSwap();
        }
      }
    }
  }

  return a3;
}

BOOL PUICGRectIsValidSalientContentRectangle(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (CGRectIsNull(*&a1))
  {
    return 0;
  }

  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  if (CGRectIsInfinite(v9))
  {
    return 0;
  }

  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  return !CGRectIsEmpty(v10);
}

void sub_1A8CC5BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8CC5D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id PUIIOSurfaceFromCGImage(id a1, int a2)
{
  if (a1)
  {
    Property = CGImageGetProperty();
    if (!Property && CGImageGetImageProvider() && ((CallbackVersion = CGImageProviderGetCallbackVersion(), v7 = CGImageWasCreatedWithIOSurface(), CallbackVersion > 1) ? (v8 = a2) : (v8 = 0), (v7 & 1) != 0 || v8))
    {
      a1 = CGImageProviderCopyIOSurface();
    }

    else
    {
      a1 = Property;
    }

    v2 = vars8;
  }

  return a1;
}

id LocalizedNSStringFromPUIHomeScreenStyleTypeOption(void *a1)
{
  v1 = a1;
  v2 = [v1 isEqualToString:@"auto"];
  if (v2)
  {
    v3 = PUIBundle(v2);
    v4 = v3;
    v5 = @"AUTOMATIC";
  }

  else
  {
    v6 = [v1 isEqualToString:@"light"];
    if (v6)
    {
      v3 = PUIBundle(v6);
      v4 = v3;
      v5 = @"LIGHT";
    }

    else
    {
      v7 = [v1 isEqualToString:@"default"];
      if (v7)
      {
        v3 = PUIBundle(v7);
        v4 = v3;
        v5 = @"DEFAULT";
      }

      else
      {
        v8 = [v1 isEqualToString:@"dark"];
        if (v8)
        {
          v3 = PUIBundle(v8);
          v4 = v3;
          v5 = @"DARK";
        }

        else
        {
          v9 = [v1 isEqualToString:@"clear"];
          if (v9)
          {
            v3 = PUIBundle(v9);
            v4 = v3;
            v5 = @"CLEAR";
          }

          else
          {
            v12 = [v1 isEqualToString:@"accent"];
            v13 = v12;
            v3 = PUIBundle(v12);
            v4 = v3;
            if (v13)
            {
              v5 = @"TINT";
            }

            else
            {
              v5 = @"DEFAULT";
            }
          }
        }
      }
    }
  }

  v10 = [v3 localizedStringForKey:v5 value:&stru_1F1C6DED8 table:0];

  return v10;
}

id PUISystemDefaultNumberingSystemType()
{
  v0 = MEMORY[0x1E69AAE08];
  v1 = [MEMORY[0x1E695DF58] currentLocale];
  v2 = [v1 localeIdentifier];
  v3 = [v0 numberingSystemForLocaleID:v2];

  return v3;
}

uint64_t __PUINumberingSystemTypeSortArray_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [PUINumberingSystem numberingSystemForType:a2];
  v6 = [v5 localizedDisplayName];

  v7 = [PUINumberingSystem numberingSystemForType:v4];

  v8 = [v7 localizedDisplayName];

  v9 = [v6 localizedCompare:v8];
  return v9;
}

uint64_t PUINumberingSystemTypeRequiresLanguageTagging(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"deva"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"arabext"];
  }

  return v2;
}

__CFString *PUINumberingTypeSystemLanguageTag(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"deva"])
  {
    v2 = [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:&unk_1F1C92CE0];
    v3 = [v2 firstObject];
  }

  else if ([v1 isEqualToString:@"arabext"])
  {
    v3 = @"ur";
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *PUIStylePickerComponentToString(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      return @"PUIStylePickerComponentFont";
    }

    if (a1 == 2)
    {
      return @"PUIStylePickerComponentNumberingSystem";
    }
  }

  else
  {
    switch(a1)
    {
      case 4:
        return @"PUIStylePickerComponentStyle";
      case 8:
        return @"PUIStylePickerComponentTextLayout";
      case 16:
        return @"PUIStylePickerComponentTextAlignment";
    }
  }

  return @"(unknown PUIStylePickerComponent)";
}

__CFString *PUIStylePickerComponentsToString(uint64_t a1)
{
  v2 = objc_opt_new();
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __PUIStylePickerComponentsToString_block_invoke;
  v13 = &unk_1E7855888;
  v3 = v2;
  v14 = v3;
  v4 = &v10;
  if (a1)
  {
    v5 = 0;
    v15 = 0;
    v6 = vcnt_s8(a1);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.i32[0];
    do
    {
      if (((1 << v5) & a1) != 0)
      {
        (v12)(v4);
        if (v15)
        {
          break;
        }

        --v7;
      }

      if (v5 > 0x3E)
      {
        break;
      }

      ++v5;
    }

    while (v7 > 0);
  }

  if ([v3 count])
  {
    v8 = [v3 componentsJoinedByString:@"|"];
  }

  else
  {
    v8 = @"(null PUIStylePickerComponents)";
  }

  return v8;
}

uint64_t __PUIStylePickerComponentsToString_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v3 = @"PUIStylePickerComponentFont";
      return [v2 addObject:v3];
    }

    if (a2 == 2)
    {
      v3 = @"PUIStylePickerComponentNumberingSystem";
      return [v2 addObject:v3];
    }

LABEL_13:
    v3 = @"(unknown PUIStylePickerComponent)";
    return [v2 addObject:v3];
  }

  if (a2 == 4)
  {
    v3 = @"PUIStylePickerComponentStyle";
    return [v2 addObject:v3];
  }

  if (a2 == 8)
  {
    v3 = @"PUIStylePickerComponentTextLayout";
    return [v2 addObject:v3];
  }

  if (a2 != 16)
  {
    goto LABEL_13;
  }

  v3 = @"PUIStylePickerComponentTextAlignment";
  return [v2 addObject:v3];
}

uint64_t PUIImageOrientationForImageCapturedInInterfaceOrientationToBeDisplayedInInterfaceOrientation(uint64_t a1, uint64_t a2)
{
  _UIInterfaceOrientationRotationDirectionForRotationFromInterfaceOrientationToInterfaceOrientation();
  _UIAngleInRadiansForRotationBetweenAngleAndAngleInDirection();
  if (BSFloatEqualToFloat())
  {
    return 0;
  }

  if (BSFloatEqualToFloat())
  {
    return 1;
  }

  if (BSFloatEqualToFloat())
  {
    return 2;
  }

  if (BSFloatEqualToFloat())
  {
    return 3;
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"This should be impossible, do you have a precision error?"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    PUIImageOrientationForImageCapturedInInterfaceOrientationToBeDisplayedInInterfaceOrientation_cold_1(v3);
  }

  [v3 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

uint64_t PUIImageOrientationForCGImageOrientation(int a1)
{
  if ((a1 - 2) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1A8D24D70[a1 - 2];
  }
}

uint64_t PUIStyleBackgroundTypeForLuminance(double a1)
{
  if (a1 < 0.0 || a1 > 1.0)
  {
    return 0;
  }

  if (a1 > 0.9)
  {
    return 2;
  }

  if (a1 >= 0.1)
  {
    return 1;
  }

  return 3;
}

uint64_t BSUIVibrancyBackgroundTypeForPUIStyleBackgroundType(uint64_t a1)
{
  if (a1 == 3)
  {
    return 2;
  }

  else
  {
    return a1 == 2;
  }
}

__CFString *NSStringFromPUIPosterSignificantEvent(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(invalid - %lu)", a1];
  }

  else
  {
    v2 = off_1E7855990[a1];
  }

  return v2;
}

__CFString *NSStringFromPUIPosterLevel(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    if (a1 > 1999)
    {
      if (a1 == 2000)
      {
        v2 = @"CO6";

        return v2;
      }

      if (a1 == 3000)
      {
        v2 = @"M7";

        return v2;
      }
    }

    else
    {
      if (!a1)
      {
        v2 = @"TIME4";

        return v2;
      }

      if (a1 == 1000)
      {
        v2 = @"FL5";

        return v2;
      }
    }

LABEL_36:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(UNK%lu)", a1];

    return v2;
  }

  if (a1 > -1001)
  {
    if (a1 == -1000)
    {
      v2 = @"FG2";

      return v2;
    }

    if (a1 == -500)
    {
      v2 = @"FU3";

      return v2;
    }

    goto LABEL_36;
  }

  if (a1 != -3000)
  {
    if (a1 == -2000)
    {
      v2 = @"BG1";

      return v2;
    }

    goto LABEL_36;
  }

  v2 = @"BD0";

  return v2;
}

void PUIResolveMaxPixelOption(void *a1, uint64_t a2)
{
  v18 = a1;
  v2 = [v18 objectForKey:kPUIImageDestinationMaxPixelCGSizeKey];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v18 removeObjectForKey:kPUIImageDestinationMaxPixelCGSizeKey];
  if (v6)
  {
    [v6 bs_CGSizeValue];
    v8 = v7;
    v10 = v9;
    CGImageGetSizeAfterOrientation();
    v13 = v8 == *MEMORY[0x1E695F060] && v10 == *(MEMORY[0x1E695F060] + 8);
    if (!v13 && (v11 != v8 || v12 != v10))
    {
      v14 = v12 * (v8 / v11);
      if (v8 >= v10)
      {
        v15 = v8;
      }

      else
      {
        v15 = v10;
      }

      if (v14 >= v10)
      {
        v16 = v10;
      }

      else
      {
        v16 = v15;
      }

      v17 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
      [v18 setObject:v17 forKey:*MEMORY[0x1E696D328]];
    }
  }
}

void sub_1A8CE00AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPIParallaxLegacyPosterStyleClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PhotoImagingLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PhotoImagingLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7855AC0;
    v6 = 0;
    PhotoImagingLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (PhotoImagingLibraryCore_frameworkLibrary)
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
  result = objc_getClass("PIParallaxLegacyPosterStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPIParallaxLegacyPosterStyleClass_block_invoke_cold_1();
  }

  getPIParallaxLegacyPosterStyleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhotoImagingLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PhotoImagingLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A8CE1870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A8CE20A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_1A8CE2D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8CE33C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1A8CE482C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1AC5769F0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id PUIAnalysisSet(uint64_t a1)
{
  if (PUIAnalysisSet_onceToken != -1)
  {
    PUIAnalysisSet_cold_1();
  }

  v2 = PUIAnalysisSet_validOps;

  return v2;
}

uint64_t __PUIAnalysisSet_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"PUIAnalysis_DETERMINE_PROMINENT_COLOR", @"PUIAnalysis_DETERMINE_COLOR_BOXES", 0}];
  v1 = PUIAnalysisSet_validOps;
  PUIAnalysisSet_validOps = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t PUIAnalysisIsValid(void *a1)
{
  v1 = a1;
  v2 = PUIAnalysisSet(v1);
  v3 = [v2 containsObject:v1];

  return v3;
}

void PUIAnalysisEnumerate(void *a1)
{
  v1 = a1;
  v2 = PUIAnalysisSet(v1);
  [v2 enumerateObjectsUsingBlock:v1];
}

id PUIAnalysisResultClassForPUIAnalysis(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PUIAnalysis_DETERMINE_PROMINENT_COLOR"])
  {
    v2 = objc_opt_self();
LABEL_5:
    v3 = v2;
    goto LABEL_7;
  }

  if ([v1 isEqualToString:@"PUIAnalysis_DETERMINE_COLOR_BOXES"])
  {
    v2 = objc_opt_class();
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

id PUIAnalysisResultClasses(uint64_t a1)
{
  if (PUIAnalysisResultClasses_onceToken != -1)
  {
    PUIAnalysisResultClasses_cold_1();
  }

  v2 = PUIAnalysisResultClasses_resultClasses;

  return v2;
}

void __PUIAnalysisResultClasses_block_invoke()
{
  v0 = objc_opt_new();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __PUIAnalysisResultClasses_block_invoke_2;
  v4[3] = &unk_1E7855F20;
  v5 = v0;
  v1 = v0;
  PUIAnalysisEnumerate(v4);
  v2 = [v1 copy];
  v3 = PUIAnalysisResultClasses_resultClasses;
  PUIAnalysisResultClasses_resultClasses = v2;
}

uint64_t __PUIAnalysisResultClasses_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = PUIAnalysisResultClassForPUIAnalysis(a2);
  v4 = *(a1 + 32);

  return [v4 bs_safeAddObject:v3];
}

uint64_t PRUISExecuteProminentColorAnalysisOnImage(uint64_t a1, void *a2)
{
  v98[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = PRUISExecuteProminentColorAnalysisOnImage_count++;
    Current = CFAbsoluteTimeGetCurrent();
    v8 = PUILogCommon(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = v5;
      LOWORD(v93) = 2082;
      *(&v93 + 2) = "BOOL PRUISExecuteProminentColorAnalysisOnImage(CGImageRef _Nonnull, void (^__strong _Nonnull)(UIColor *__strong, NSError *__strong))";
      _os_log_impl(&dword_1A8C85000, v8, OS_LOG_TYPE_INFO, "(%d) start %{public}s", buf, 0x12u);
    }

    v10 = PUILogCommon(v9);
    v11 = os_signpost_id_generate(v10);

    v13 = PUILogCommon(v12);
    v14 = v13;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "prominent color", &unk_1A8D256D3, buf, 2u);
    }

    *buf = 0;
    *&v93 = buf;
    *(&v93 + 1) = 0x3032000000;
    v94 = __Block_byref_object_copy__5;
    v95 = __Block_byref_object_dispose__5;
    v77 = 0;
    v78 = &v77;
    v79 = 0x2050000000;
    v15 = getNURenderContextClass_softClass;
    v80 = getNURenderContextClass_softClass;
    if (!getNURenderContextClass_softClass)
    {
      v71 = MEMORY[0x1E69E9820];
      v72 = 3221225472;
      v73 = __getNURenderContextClass_block_invoke;
      v74 = &unk_1E7854348;
      v75 = &v77;
      __getNURenderContextClass_block_invoke(&v71);
      v15 = *(v78 + 24);
    }

    v16 = v15;
    _Block_object_dispose(&v77, 8);
    v96 = [[v15 alloc] initWithPurpose:1];
    v71 = 0;
    v72 = &v71;
    v73 = 0x3032000000;
    v74 = __Block_byref_object_copy__5;
    v75 = __Block_byref_object_dispose__5;
    v76 = 0;
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __PRUISExecuteProminentColorAnalysisOnImage_block_invoke;
    v63[3] = &unk_1E7855F48;
    v65 = &v71;
    v66 = buf;
    v64 = v4;
    v67 = v11;
    v70 = 1;
    v69 = v5;
    v68 = Current;
    v17 = MEMORY[0x1AC5769F0](v63);
    if (PRUISExecuteProminentColorAnalysisOnImage_onceToken != -1)
    {
      PRUISExecuteProminentColorAnalysisOnImage_cold_1();
    }

    if (PRUISExecuteProminentColorAnalysisOnImage_compositionIdentifier && *(v93 + 40))
    {
      v18 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:a1];
      v19 = *(v72 + 40);
      *(v72 + 40) = v18;

      if (*(v72 + 40))
      {
        v20 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        v21 = [*(v72 + 40) imageByColorMatchingWorkingSpaceToColorSpace:v20];
        v22 = *(v72 + 40);
        *(v72 + 40) = v21;

        CGColorSpaceRelease(v20);
        if (*(v72 + 40))
        {
          if (PRUISExecuteProminentColorAnalysisOnImage_onceToken_36 != -1)
          {
            PRUISExecuteProminentColorAnalysisOnImage_cold_2();
          }

          v82 = 0;
          v83 = &v82;
          v84 = 0x2050000000;
          v23 = getNUCIImageSourceDefinitionClass_softClass;
          v85 = getNUCIImageSourceDefinitionClass_softClass;
          if (!getNUCIImageSourceDefinitionClass_softClass)
          {
            v77 = MEMORY[0x1E69E9820];
            v78 = 3221225472;
            v79 = __getNUCIImageSourceDefinitionClass_block_invoke;
            v80 = &unk_1E7854348;
            v81 = &v82;
            __getNUCIImageSourceDefinitionClass_block_invoke(&v77);
            v23 = v83[3];
          }

          v24 = v23;
          _Block_object_dispose(&v82, 8);
          v25 = [v23 alloc];
          v26 = [v25 initWithCIImage:*(v72 + 40) orientation:1];
          v82 = 0;
          v83 = &v82;
          v84 = 0x2050000000;
          v27 = getNUGenericCompositionClass_softClass;
          v85 = getNUGenericCompositionClass_softClass;
          if (!getNUGenericCompositionClass_softClass)
          {
            v77 = MEMORY[0x1E69E9820];
            v78 = 3221225472;
            v79 = __getNUGenericCompositionClass_block_invoke;
            v80 = &unk_1E7854348;
            v81 = &v82;
            __getNUGenericCompositionClass_block_invoke(&v77);
            v27 = v83[3];
          }

          v28 = v27;
          _Block_object_dispose(&v82, 8);
          v29 = [v27 alloc];
          v30 = [v29 initWithIdentifier:PRUISExecuteProminentColorAnalysisOnImage_compositionIdentifier];
          v82 = 0;
          v83 = &v82;
          v84 = 0x2050000000;
          v31 = getNUSourceClass_softClass;
          v85 = getNUSourceClass_softClass;
          if (!getNUSourceClass_softClass)
          {
            v77 = MEMORY[0x1E69E9820];
            v78 = 3221225472;
            v79 = __getNUSourceClass_block_invoke;
            v80 = &unk_1E7854348;
            v81 = &v82;
            __getNUSourceClass_block_invoke(&v77);
            v31 = v83[3];
          }

          v32 = v31;
          _Block_object_dispose(&v82, 8);
          v33 = objc_alloc_init(v31);
          v34 = [MEMORY[0x1E696AFB0] UUID];
          v35 = [v34 UUIDString];
          [v33 setAssetIdentifier:v35];

          [v33 setDefinition:v26];
          [v30 setObject:v33 forKeyedSubscript:@"source"];
          v36 = dispatch_group_create();
          dispatch_group_enter(v36);
          v37 = objc_alloc_init(MEMORY[0x1E698E618]);
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __PRUISExecuteProminentColorAnalysisOnImage_block_invoke_3;
          v59[3] = &unk_1E7855F70;
          v38 = v37;
          v60 = v38;
          v62 = v17;
          v39 = v36;
          v61 = v39;
          v40 = MEMORY[0x1AC5769F0](v59);
          v41 = objc_autoreleasePoolPush();
          v42 = PRUISExecuteProminentColorAnalysisOnImage_txQueue;
          v54[0] = MEMORY[0x1E69E9820];
          v54[1] = 3221225472;
          v54[2] = __PRUISExecuteProminentColorAnalysisOnImage_block_invoke_4;
          v54[3] = &unk_1E7856020;
          v43 = v30;
          v55 = v43;
          v58 = buf;
          v44 = v40;
          v57 = v44;
          v45 = v39;
          v56 = v45;
          [v42 dispatchAsync:v54];

          objc_autoreleasePoolPop(v41);
        }

        else
        {
          v52 = MEMORY[0x1E696ABC0];
          v86 = *MEMORY[0x1E696A588];
          v87 = @"source image deallocated before prominent color analysis could be run.";
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
          v43 = [v52 errorWithDomain:@"com.apple.PosterUIFoundation" code:-1 userInfo:v26];
          (v17)[2](v17, 0, v43);
        }

        v47 = 1;
        goto LABEL_32;
      }

      v51 = MEMORY[0x1E696ABC0];
      v88 = *MEMORY[0x1E696A588];
      v89 = @"source image deallocated before prominent color analysis could be run.";
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      v43 = [v51 errorWithDomain:@"com.apple.PosterUIFoundation" code:-1 userInfo:v26];
      (v17)[2](v17, 0, v43);
    }

    else
    {
      v46 = MEMORY[0x1E696ABC0];
      v90 = *MEMORY[0x1E696A588];
      v91 = @"PhotosImaging was unable to register schema information.";
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      v43 = [v46 errorWithDomain:@"com.apple.PosterUIFoundation" code:-1 userInfo:v26];
      (v17)[2](v17, 0, v43);
    }

    v47 = 0;
LABEL_32:

    _Block_object_dispose(&v71, 8);
    _Block_object_dispose(buf, 8);

    goto LABEL_33;
  }

  if (v3)
  {
    v48 = MEMORY[0x1E696ABC0];
    v97 = *MEMORY[0x1E696A588];
    v98[0] = @"nil input image";
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:&v97 count:1];
    v50 = [v48 errorWithDomain:@"com.apple.PosterUIFoundation" code:-1 userInfo:v49];
    (v4)[2](v4, 0, v50);
  }

  v47 = 0;
LABEL_33:

  return v47;
}

void sub_1A8CE6158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v44 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __PRUISExecuteProminentColorAnalysisOnImage_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  [*(*(*(a1 + 48) + 8) + 40) cancelAllRequests];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  if (!(v5 | v6))
  {
    v12 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A588];
    v35[0] = @"prominent color was nil";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v6 = [v12 errorWithDomain:@"com.apple.PosterUIFoundation" code:-1 userInfo:v13];
  }

  v14 = PUILogCommon(v11);
  v15 = v14;
  if (v6)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __PRUISExecuteProminentColorAnalysisOnImage_block_invoke_cold_1(v6, v15);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    LOWORD(v27[0]) = 0;
    _os_log_impl(&dword_1A8C85000, v15, OS_LOG_TYPE_INFO, "_determineProminentColor ran successfully", v27, 2u);
  }

  v16 = (*(*(a1 + 32) + 16))();
  v17 = PUILogCommon(v16);
  v18 = v17;
  v19 = *(a1 + 56);
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    LOWORD(v27[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A8C85000, v18, OS_SIGNPOST_INTERVAL_END, v19, "prominent color", &unk_1A8D256D3, v27, 2u);
  }

  v21 = PUILogCommon(v20);
  v22 = v21;
  v23 = OS_LOG_TYPE_ERROR;
  if (v5 && !v6)
  {
    v23 = *(a1 + 76);
  }

  if (os_log_type_enabled(v21, v23))
  {
    v24 = *(a1 + 72);
    v25 = CFAbsoluteTimeGetCurrent() - *(a1 + 64);
    if (v6)
    {
      v26 = v6;
    }

    else
    {
      v26 = v5;
    }

    v27[0] = 67109890;
    v27[1] = v24;
    v28 = 2082;
    v29 = "BOOL PRUISExecuteProminentColorAnalysisOnImage(CGImageRef _Nonnull, void (^__strong _Nonnull)(UIColor *__strong, NSError *__strong))_block_invoke";
    v30 = 2048;
    v31 = v25;
    v32 = 2114;
    v33 = v26;
    _os_log_impl(&dword_1A8C85000, v22, v23, "(%d) end %{public}s; completed in %.4f / %{public}@", v27, 0x26u);
  }
}

void __PRUISExecuteProminentColorAnalysisOnImage_block_invoke_26()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getPISchemaClass_softClass;
  v8 = getPISchemaClass_softClass;
  if (!getPISchemaClass_softClass)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getPISchemaClass_block_invoke;
    v4[3] = &unk_1E7854348;
    v4[4] = &v5;
    __getPISchemaClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [v0 registerPhotosSchema];
  v3 = PRUISExecuteProminentColorAnalysisOnImage_compositionIdentifier;
  PRUISExecuteProminentColorAnalysisOnImage_compositionIdentifier = v2;
}

void sub_1A8CE6554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PRUISExecuteProminentColorAnalysisOnImage_block_invoke_2()
{
  v0 = [objc_alloc(MEMORY[0x1E69C5138]) initWithTransactionName:@"ProminentColor"];
  v1 = PRUISExecuteProminentColorAnalysisOnImage_txQueue;
  PRUISExecuteProminentColorAnalysisOnImage_txQueue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __PRUISExecuteProminentColorAnalysisOnImage_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) signal])
  {
    (*(*(a1 + 48) + 16))();
    dispatch_group_leave(*(a1 + 40));
  }
}

void __PRUISExecuteProminentColorAnalysisOnImage_block_invoke_4(uint64_t a1)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v2 = getPIParallaxColorAnalysisRequestClass_softClass;
  v24 = getPIParallaxColorAnalysisRequestClass_softClass;
  if (!getPIParallaxColorAnalysisRequestClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getPIParallaxColorAnalysisRequestClass_block_invoke;
    v19 = &unk_1E7854348;
    v20 = &v21;
    __getPIParallaxColorAnalysisRequestClass_block_invoke(buf);
    v2 = v22[3];
  }

  v3 = v2;
  _Block_object_dispose(&v21, 8);
  v4 = [[v2 alloc] initWithComposition:*(a1 + 32)];
  [v4 setSegmentationMatte:0];
  [v4 setAnalyzeBackground:1];
  [v4 setMaxDominantColors:10];
  [v4 setRenderContext:*(*(*(a1 + 56) + 8) + 40)];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __PRUISExecuteProminentColorAnalysisOnImage_block_invoke_5;
  v14[3] = &unk_1E7855FF8;
  v15 = *(a1 + 48);
  [v4 submit:v14];
  v5 = *(a1 + 40);
  v6 = dispatch_time(0, 20000000000);
  v7 = dispatch_group_wait(v5, v6);
  v8 = v7 == 0;
  v9 = PUILogCommon(v7);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A8C85000, v10, OS_LOG_TYPE_INFO, "determineProminentColorWithCompletion finished", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __PRUISExecuteProminentColorAnalysisOnImage_block_invoke_4_cold_1(v10);
    }

    v11 = *(a1 + 48);
    v12 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A588];
    v26[0] = @"Timed out.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v13 = [v12 errorWithDomain:@"com.apple.PosterUIFoundation" code:-1 userInfo:v10];
    (*(v11 + 16))(v11, 0, v13);
  }
}

void sub_1A8CE68DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PRUISExecuteProminentColorAnalysisOnImage_block_invoke_5(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v19 = 0;
  v3 = [a2 result:&v19];
  v4 = v19;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v10 = [v3 dominantColors];
      v11 = [v10 bs_mapNoNulls:&__block_literal_global_53];

      v12 = [v11 bs_filter:&__block_literal_global_56];

      v13 = [v12 sortedArrayUsingComparator:&__block_literal_global_59];
      v14 = [v13 count];
      v15 = *(a1 + 32);
      if (v14)
      {
        v16 = [v13 firstObject];
        (*(v15 + 16))(v15, v16, 0);
      }

      else
      {
        v17 = MEMORY[0x1E696ABC0];
        v20 = *MEMORY[0x1E696A588];
        v21 = @"PhotoImaging did not return any colors.";
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        v18 = [v17 errorWithDomain:@"com.apple.PosterUIFoundation" code:-1 userInfo:v16];
        (*(v15 + 16))(v15, 0, v18);
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A588];
    v23[0] = @"PhotoImaging did not return a result.";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v9 = [v7 errorWithDomain:@"com.apple.PosterUIFoundation" code:-1 userInfo:v8];
    (*(v6 + 16))(v6, 0, v9);
  }
}

uint64_t __PRUISExecuteProminentColorAnalysisOnImage_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DC888];
  v3 = [a2 CGColor];

  return [v2 colorWithCGColor:v3];
}

BOOL __PRUISExecuteProminentColorAnalysisOnImage_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 pui_hslValues];
  [v2 luminance];
  v4 = v3 > 0.25;

  return v4;
}

uint64_t __PRUISExecuteProminentColorAnalysisOnImage_block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 pui_hsbValues];
  v6 = [v4 pui_hsbValues];

  [v5 saturation];
  v8 = v7;
  [v6 saturation];
  if (v8 > v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = v8 < v9;
  }

  return v10;
}

void __getNURenderContextClass_block_invoke(uint64_t a1)
{
  NeutrinoCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NURenderContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNURenderContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getNURenderContextClass_block_invoke_cold_1();
    NeutrinoCoreLibrary();
  }
}

void NeutrinoCoreLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!NeutrinoCoreLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __NeutrinoCoreLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7856040;
    v3 = 0;
    NeutrinoCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!NeutrinoCoreLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __NeutrinoCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NeutrinoCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void __getPISchemaClass_block_invoke(uint64_t a1)
{
  PhotoImagingLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PISchema");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPISchemaClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPISchemaClass_block_invoke_cold_1();
    PhotoImagingLibrary();
  }
}

void PhotoImagingLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PhotoImagingLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __PhotoImagingLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7856058;
    v3 = 0;
    PhotoImagingLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!PhotoImagingLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PhotoImagingLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  PhotoImagingLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getNUCIImageSourceDefinitionClass_block_invoke(uint64_t a1)
{
  NeutrinoCoreLibrary();
  result = objc_getClass("NUCIImageSourceDefinition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNUCIImageSourceDefinitionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getNUCIImageSourceDefinitionClass_block_invoke_cold_1();
    return __getNUGenericCompositionClass_block_invoke(v3);
  }

  return result;
}

Class __getNUGenericCompositionClass_block_invoke(uint64_t a1)
{
  NeutrinoCoreLibrary();
  result = objc_getClass("NUGenericComposition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNUGenericCompositionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getNUGenericCompositionClass_block_invoke_cold_1();
    return __getNUSourceClass_block_invoke(v3);
  }

  return result;
}

Class __getNUSourceClass_block_invoke(uint64_t a1)
{
  NeutrinoCoreLibrary();
  result = objc_getClass("NUSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNUSourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getNUSourceClass_block_invoke_cold_1();
    return __getPIParallaxColorAnalysisRequestClass_block_invoke(v3);
  }

  return result;
}

PUIAnalysisServiceRequest *__getPIParallaxColorAnalysisRequestClass_block_invoke(uint64_t a1)
{
  PhotoImagingLibrary();
  result = objc_getClass("PIParallaxColorAnalysisRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPIParallaxColorAnalysisRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPIParallaxColorAnalysisRequestClass_block_invoke_cold_1();
    return [(PUIAnalysisServiceRequest *)v3 initWithImage:v4 analyses:v5, v6];
  }

  return result;
}

void sub_1A8CEA6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PUIWallpaperTreatmentBundle(uint64_t a1)
{
  if (PUIWallpaperTreatmentBundle___onceToken != -1)
  {
    PUIWallpaperTreatmentBundle_cold_1();
  }

  v2 = PUIWallpaperTreatmentBundle___posterUIFoundationBundle;

  return v2;
}

void __PUIWallpaperTreatmentBundle_block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_self();
  v1 = [v0 bundleForClass:v3];
  v2 = PUIWallpaperTreatmentBundle___posterUIFoundationBundle;
  PUIWallpaperTreatmentBundle___posterUIFoundationBundle = v1;
}

void sub_1A8CEE414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8CEEA1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8CEED30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

__CFString *PUIErrorCodeToDebugDescription(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"Unknown error.";
  }

  else
  {
    return off_1E7856258[a1 - 1];
  }
}

id PUIStyleGradientTypeToCAEditingGradientLayerTypeFrom(id a1)
{
  if (a1 <= 2)
  {
    a1 = **(&unk_1E78563F8 + a1);
  }

  return a1;
}

BOOL __doesURLMatchPredicate(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v5 isFileURL])
  {
    v8 = [v5 URLByResolvingSymlinksInPath];
    v9 = [v8 path];

    v10 = [v6 URLByStandardizingPath];
    v11 = [v10 path];

    if (![v9 hasPrefix:v11])
    {
      v12 = 0;
      goto LABEL_64;
    }

    if ([v7 type] == 3)
    {
      v12 = 1;
LABEL_64:

      goto LABEL_65;
    }

    v13 = [v9 substringFromIndex:{objc_msgSend(v11, "length") + 1}];
    [MEMORY[0x1E696AE88] scannerWithString:v13];
    v14 = v94 = 0;
    ____doesURLMatchPredicate_block_invoke(v14, v14, @"/", &v94);
    v15 = v94;
    v16 = [v15 length];
    if (v16)
    {
      v16 = [v7 snapshotCacheEpoch];
      if (v16)
      {
        v17 = v16;
        v83 = v13;
        v18 = [v7 snapshotVersion];
        if (v18)
        {
          v19 = v18;
          v20 = [v7 snapshotBundleVersion];

          v13 = v83;
          if (v20)
          {
            v21 = [v7 snapshotCacheEpoch];
            v86 = [v21 intValue];

            v22 = [v7 snapshotVersion];
            v23 = [v22 intValue];

            v24 = [v7 snapshotBundleVersion];
            v25 = v15;
            v26 = [v24 intValue];

            v27 = v23;
            v13 = v83;
            v28 = v26;
            v15 = v25;
            v29 = PUIPosterSnapshotBundleEpochAndVersionIdentifier(v86, v27, v28);
            LODWORD(v25) = [v25 isEqualToString:v29];

            if (!v25)
            {
              v12 = 0;
LABEL_63:

              goto LABEL_64;
            }
          }
        }

        else
        {
        }
      }
    }

    v93 = 0;
    ____doesURLMatchPredicate_block_invoke(v16, v14, @"/", &v93);
    v87 = v93;
    v30 = [v87 length];
    if (v30)
    {
      v31 = [v7 posterProvider];

      if (v31)
      {
        v32 = [v7 posterProvider];
        v33 = [v32 isEqualToString:v87];

        if (!v33)
        {
          v12 = 0;
LABEL_62:

          goto LABEL_63;
        }
      }
    }

    v82 = v15;
    v92 = 0;
    ____doesURLMatchPredicate_block_invoke(v30, v14, @"/", &v92);
    v85 = v92;
    if ([v85 length])
    {
      v34 = [v7 posterUUID];

      if (v34)
      {
        v35 = [v7 posterUUID];
        v36 = [v35 UUIDString];
        v37 = BSEqualStrings();

        if (!v37)
        {
          v12 = 0;
          goto LABEL_28;
        }
      }
    }

    v38 = [v7 type];
    if (v38 == 2)
    {
      v12 = 1;
LABEL_28:
      v15 = v82;
LABEL_61:

      goto LABEL_62;
    }

    v84 = v13;
    v91 = 0;
    ____doesURLMatchPredicate_block_invoke(v38, v14, @"/", &v91);
    v81 = v91;
    v39 = [v81 length];
    if (v39)
    {
      v40 = [v7 posterVersion];

      if (v40)
      {
        v41 = [v7 type];
        v42 = [v81 integerValue];
        v43 = [v7 posterVersion];
        v44 = [v43 integerValue];

        if (v41 == 1)
        {
          v12 = v42 < v44;
LABEL_59:
          v15 = v82;
          v13 = v84;
          goto LABEL_60;
        }

        if (v42 != v44)
        {
          v12 = 0;
          goto LABEL_59;
        }
      }
    }

    v90 = 0;
    ____doesURLMatchPredicate_block_invoke(v39, v14, @"/", &v90);
    v45 = v90;
    v46 = [v45 length];
    v80 = v45;
    if (v46)
    {
      v47 = [v7 interfaceOrientation];

      if (v47)
      {
        v48 = [v7 interfaceOrientation];
        v49 = [v48 stringValue];
        v50 = [v45 containsString:v49];

        if (!v50)
        {
          v12 = 0;
          v15 = v82;
          v13 = v84;
LABEL_56:

LABEL_60:
          goto LABEL_61;
        }
      }
    }

    v89 = 0;
    ____doesURLMatchPredicate_block_invoke(v46, v14, @"/", &v89);
    v51 = v89;
    v52 = [v51 length];
    v78 = v51;
    if (v52)
    {
      v53 = [v7 snapshotDefinitionIdentifier];

      if (v53)
      {
        v54 = [v7 snapshotDefinitionIdentifier];
        v55 = BSEqualStrings();

        if (!v55)
        {
          v12 = 0;
          v15 = v82;
          v13 = v84;
          goto LABEL_55;
        }
      }
    }

    v88 = 0;
    ____doesURLMatchPredicate_block_invoke(v52, v14, @"/", &v88);
    v56 = v88;
    v57 = [v7 userInterfaceStyle];
    v58 = [v57 integerValue];

    v79 = v56;
    if ([v56 length] && v58 && !BSEqualStrings())
    {
      v12 = 0;
      v15 = v82;
      v13 = v84;
      goto LABEL_54;
    }

    v59 = [v7 matchingOcclusionRectNames];
    if (v59)
    {

      v15 = v82;
    }

    else
    {
      v60 = [v7 contentOcclusionRectangles];

      v15 = v82;
      if (!v60)
      {
        v12 = 1;
LABEL_52:
        v13 = v84;
LABEL_54:

LABEL_55:
        goto LABEL_56;
      }
    }

    v61 = [[PUIPosterSnapshotBundle alloc] initWithURL:v5];
    v12 = 0;
    if (v61)
    {
      v62 = [v7 matchingOcclusionRectNames];
      v77 = v61;
      v63 = [v62 count];

      v64 = v63 >= 2;
      v61 = v77;
      if (!v64 || (v75 = MEMORY[0x1E695DFD8], -[PUIPosterSnapshotBundle contentOcclusionRectangles](v77, "contentOcclusionRectangles"), v76 = objc_claimAutoreleasedReturnValue(), [v76 allRects], v65 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v65, "keyEnumerator"), v66 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v66, "allObjects"), v67 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v75, "setWithArray:", v67), v68 = objc_claimAutoreleasedReturnValue(), v67, v66, v15 = v82, v65, v76, objc_msgSend(v7, "matchingOcclusionRectNames"), v69 = objc_claimAutoreleasedReturnValue(), LODWORD(v65) = objc_msgSend(v69, "intersectsSet:", v68), v69, v68, v61 = v77, v65))
      {
        v70 = [v7 contentOcclusionRectangles];

        if (!v70 || (-[PUIPosterSnapshotBundle contentOcclusionRectangles](v61, "contentOcclusionRectangles"), v71 = objc_claimAutoreleasedReturnValue(), [v7 contentOcclusionRectangles], v72 = objc_claimAutoreleasedReturnValue(), v73 = objc_msgSend(v71, "isEqual:", v72), v72, v61 = v77, v71, (v73 & 1) != 0))
        {
          v12 = 1;
        }
      }
    }

    goto LABEL_52;
  }

  v12 = 0;
LABEL_65:

  return v12;
}

void ____doesURLMatchPredicate_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  [v6 scanUpToString:a3 intoString:a4];
  [v6 setScanLocation:{objc_msgSend(v6, "scanLocation") + 1}];
}

uint64_t __doesBundleMatchPredicate(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5)
  {
    if ([v7 type] == 2)
    {
      v9 = [v8 snapshotBundleUUID];
      v10 = [v5 snapshotBundleUUID];
      doesURLMatchPredicate = [v9 isEqual:v10];
    }

    else
    {
      v9 = [v5 bundleURL];
      doesURLMatchPredicate = __doesURLMatchPredicate(v9, v6, v8);
    }
  }

  else
  {
    doesURLMatchPredicate = 0;
  }

  return doesURLMatchPredicate;
}

void sub_1A8D001BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A8D032FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8D043EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1AC5769F0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

Class __getMTMaterialLayerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreMaterialLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreMaterialLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E78568C0;
    v6 = 0;
    CoreMaterialLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreMaterialLibraryCore_frameworkLibrary)
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
  result = objc_getClass("MTMaterialLayer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMTMaterialLayerClass_block_invoke_cold_1();
  }

  getMTMaterialLayerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreMaterialLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreMaterialLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t DebugViewComponent.hashValue.getter()
{
  sub_1A8D18B3C();
  MEMORY[0x1AC5756C0](0);
  return sub_1A8D18B5C();
}

uint64_t sub_1A8D08AC0()
{
  sub_1A8D18B3C();
  MEMORY[0x1AC5756C0](0);
  return sub_1A8D18B5C();
}

uint64_t sub_1A8D08B2C(uint64_t a1)
{
  sub_1A8D18B3C();
  MEMORY[0x1AC5756C0](0);
  return sub_1A8D18B5C();
}

unint64_t sub_1A8D08B70()
{
  result = qword_1EB344B38;
  if (!qword_1EB344B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB344B38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DebugViewComponent(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DebugViewComponent(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A8D08D1C(uint64_t a1, int a2)
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

uint64_t sub_1A8D08D3C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_1A8D08DE0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1A8D08E34(uint64_t a1, int a2)
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

uint64_t sub_1A8D08E7C(uint64_t result, int a2, int a3)
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

__n128 sub_1A8D08EE4@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1A8D1880C();
  BSRectWithSize();
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = 0.0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      CGRectGetWidth(*&v6);
    }

    else if (a1 == 4)
    {
      v15 = CGRectGetWidth(*&v6) * 0.5;
      goto LABEL_12;
    }
  }

  else if (a1 == 1)
  {
    CGRectGetHeight(*&v6);
  }

  else if (a1 == 2)
  {
    v14 = CGRectGetHeight(*&v6) * 0.5;
  }

  v15 = 0.0;
LABEL_12:
  v81.origin.x = UIEdgeInsetsInsetRect(v10, v11, v12, v13, v14, v15);
  x = v81.origin.x;
  y = v81.origin.y;
  width = v81.size.width;
  height = v81.size.height;
  CGRectGetWidth(v81);
  v82.origin.x = x;
  v82.origin.y = y;
  v82.size.width = width;
  v82.size.height = height;
  CGRectGetHeight(v82);
  sub_1A8D189EC();
  sub_1A8D187FC();
  v72 = v77;
  v71 = v79;
  v70 = 0;
  *&v65 = a2;
  *(&v65 + 1) = v76;
  LOBYTE(v66) = v77;
  *(&v66 + 1) = v78;
  v67[0] = v79;
  *&v67[8] = v80;
  v67[24] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344B68, &qword_1A8D25268);
  sub_1A8D09ED8();
  sub_1A8D188FC();
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      sub_1A8D0A27C(&v73, &v65, &qword_1EB344BF8, &qword_1A8D252B0);
      v28 = sub_1A8D1888C();
      v35 = 1;
      v39 = v73;
      v40 = v74;
      v41[0] = v75[0];
      *(v41 + 9) = *(v75 + 9);
      v36 = v73;
      v37 = v74;
      v38[0] = v75[0];
      *(v38 + 9) = *(v75 + 9);
      sub_1A8D0A27C(&v73, &v65, &qword_1EB344B80, &qword_1A8D25278);
      sub_1A8D0A27C(&v36, &v65, &qword_1EB344BF8, &qword_1A8D252B0);
      sub_1A8D0A2E4(&v39, &qword_1EB344BF8, &qword_1A8D252B0);
      sub_1A8D0A2E4(&v73, &qword_1EB344B80, &qword_1A8D25278);
      v44 = v37;
      *v45 = v38[0];
      *&v45[9] = *(v38 + 9);
      v43 = v36;
      v42 = 1;
      *&v34[7] = v36;
      *&v34[23] = v37;
      *&v34[39] = *v45;
      *&v34[55] = *&v45[16];
      v55 = v28;
      v56 = 0;
      v57[0] = 1;
      *&v57[1] = *v34;
      *&v57[64] = *&v45[24];
      *&v57[49] = *&v34[48];
      *&v57[33] = *&v34[32];
      *&v57[17] = *&v34[16];
      *&v57[72] = 0;
      v57[80] = 1;
      *&v69[16] = 1;
      v68 = *&v57[48];
      *v69 = *&v57[64];
      v65 = v28;
      v66 = *v57;
      *v67 = *&v57[16];
      *&v67[16] = *&v57[32];
      v52 = 0;
      v21 = &qword_1EB344BD8;
      v22 = &qword_1A8D252A0;
      sub_1A8D0A27C(&v55, &v59, &qword_1EB344BD8, &qword_1A8D252A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344BD8, &qword_1A8D252A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344BE8, &qword_1A8D252A8);
      v29 = MEMORY[0x1E69817F8];
      sub_1A8D0A344(&qword_1EB344BD0, &qword_1EB344BD8, &qword_1A8D252A0, MEMORY[0x1E69817F8]);
      sub_1A8D0A344(&qword_1EB344BE0, &qword_1EB344BE8, &qword_1A8D252A8, v29);
      sub_1A8D188FC();
      v68 = v62;
      *v69 = v63;
      *&v69[16] = v64;
      v65 = v59;
      v66 = v60;
      *v67 = *v61;
      *&v67[16] = *&v61[16];
      v54 = 1;
      v69[18] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344B98, &qword_1A8D25280);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344BC8, &qword_1A8D25298);
      sub_1A8D0A030();
      sub_1A8D0A110();
      sub_1A8D188FC();
      v68 = v50;
      *v69 = *v51;
      *&v69[15] = *&v51[15];
      v65 = v46;
      v66 = v47;
      *v67 = v48;
      *&v67[16] = v49;
      v58 = 0;
      v69[19] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344B78, &qword_1A8D25270);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344B80, &qword_1A8D25278);
      sub_1A8D09FA4();
      sub_1A8D0A1F0();
      sub_1A8D188FC();
      goto LABEL_23;
    }

    if (a1 == 4)
    {
      sub_1A8D0A27C(&v73, &v65, &qword_1EB344BF8, &qword_1A8D252B0);
      v24 = sub_1A8D1888C();
      v52 = 1;
      *v34 = v73;
      *&v34[16] = v74;
      *&v34[32] = v75[0];
      *&v34[41] = *(v75 + 9);
      v43 = v73;
      v44 = v74;
      *v45 = v75[0];
      *&v45[9] = *(v75 + 9);
      sub_1A8D0A27C(&v73, &v65, &qword_1EB344B80, &qword_1A8D25278);
      sub_1A8D0A27C(&v43, &v65, &qword_1EB344BF8, &qword_1A8D252B0);
      sub_1A8D0A2E4(v34, &qword_1EB344BF8, &qword_1A8D252B0);
      sub_1A8D0A2E4(&v73, &qword_1EB344B80, &qword_1A8D25278);
      v54 = 1;
      *&v53[7] = v43;
      *&v53[23] = v44;
      *&v53[39] = *v45;
      *&v53[48] = *&v45[9];
      v55 = v24;
      v56 = 0;
      v57[0] = v52;
      *&v57[8] = 0;
      v57[16] = 1;
      *&v57[65] = *&v45[9];
      *&v57[49] = *&v53[32];
      *&v57[33] = *&v53[16];
      *&v57[17] = *v53;
      v65 = v24;
      v66 = *v57;
      *v67 = *&v57[16];
      *&v67[16] = *&v57[32];
      v68 = *&v57[48];
      *v69 = *&v57[64];
      v69[16] = v45[24];
      v58 = 1;
      v69[17] = 1;
      v21 = &qword_1EB344BE8;
      v22 = &qword_1A8D252A8;
      sub_1A8D0A27C(&v55, &v59, &qword_1EB344BE8, &qword_1A8D252A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344BD8, &qword_1A8D252A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344BE8, &qword_1A8D252A8);
      v25 = MEMORY[0x1E69817F8];
      sub_1A8D0A344(&qword_1EB344BD0, &qword_1EB344BD8, &qword_1A8D252A0, MEMORY[0x1E69817F8]);
      sub_1A8D0A344(&qword_1EB344BE0, &qword_1EB344BE8, &qword_1A8D252A8, v25);
      sub_1A8D188FC();
      v68 = v62;
      *v69 = v63;
      *&v69[16] = v64;
      v65 = v59;
      v66 = v60;
      *v67 = *v61;
      *&v67[16] = *&v61[16];
      LOBYTE(v36) = 1;
      v69[18] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344B98, &qword_1A8D25280);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344BC8, &qword_1A8D25298);
      sub_1A8D0A030();
      sub_1A8D0A110();
      sub_1A8D188FC();
      v68 = v50;
      *v69 = *v51;
      *&v69[15] = *&v51[15];
      v65 = v46;
      v66 = v47;
      *v67 = v48;
      *&v67[16] = v49;
      LOBYTE(v39) = 0;
      v69[19] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344B78, &qword_1A8D25270);
      goto LABEL_19;
    }
  }

  else
  {
    if (a1 == 1)
    {
      sub_1A8D0A27C(&v73, &v65, &qword_1EB344BF8, &qword_1A8D252B0);
      v26 = sub_1A8D188EC();
      v35 = 1;
      v39 = v73;
      v40 = v74;
      v41[0] = v75[0];
      *(v41 + 9) = *(v75 + 9);
      v36 = v73;
      v37 = v74;
      v38[0] = v75[0];
      *(v38 + 9) = *(v75 + 9);
      sub_1A8D0A27C(&v73, &v65, &qword_1EB344B80, &qword_1A8D25278);
      sub_1A8D0A27C(&v36, &v65, &qword_1EB344BF8, &qword_1A8D252B0);
      sub_1A8D0A2E4(&v39, &qword_1EB344BF8, &qword_1A8D252B0);
      sub_1A8D0A2E4(&v73, &qword_1EB344B80, &qword_1A8D25278);
      v44 = v37;
      *v45 = v38[0];
      *&v45[9] = *(v38 + 9);
      v43 = v36;
      v42 = 1;
      *&v34[7] = v36;
      *&v34[23] = v37;
      *&v34[39] = *v45;
      *&v34[55] = *&v45[16];
      v55 = v26;
      v56 = 0;
      v57[0] = 1;
      *&v57[1] = *v34;
      *&v57[64] = *&v45[24];
      *&v57[49] = *&v34[48];
      *&v57[33] = *&v34[32];
      *&v57[17] = *&v34[16];
      *&v57[72] = 0;
      v57[80] = 1;
      *&v69[16] = 1;
      v68 = *&v57[48];
      *v69 = *&v57[64];
      v65 = v26;
      v66 = *v57;
      *v67 = *&v57[16];
      *&v67[16] = *&v57[32];
      v52 = 0;
      v21 = &qword_1EB344BA8;
      v22 = &qword_1A8D25288;
      sub_1A8D0A27C(&v55, &v59, &qword_1EB344BA8, &qword_1A8D25288);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344BA8, &qword_1A8D25288);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344BB8, &qword_1A8D25290);
      v27 = MEMORY[0x1E6981870];
      sub_1A8D0A344(&qword_1EB344BA0, &qword_1EB344BA8, &qword_1A8D25288, MEMORY[0x1E6981870]);
      sub_1A8D0A344(&qword_1EB344BB0, &qword_1EB344BB8, &qword_1A8D25290, v27);
      sub_1A8D188FC();
      v68 = v62;
      *v69 = v63;
      *&v69[16] = v64;
      v65 = v59;
      v66 = v60;
      *v67 = *v61;
      *&v67[16] = *&v61[16];
      v54 = 0;
      v69[18] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344B98, &qword_1A8D25280);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344BC8, &qword_1A8D25298);
      sub_1A8D0A030();
      sub_1A8D0A110();
      sub_1A8D188FC();
      v68 = v50;
      *v69 = *v51;
      *&v69[15] = *&v51[15];
      v65 = v46;
      v66 = v47;
      *v67 = v48;
      *&v67[16] = v49;
      v58 = 0;
      v69[19] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344B78, &qword_1A8D25270);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344B80, &qword_1A8D25278);
      sub_1A8D09FA4();
      sub_1A8D0A1F0();
      sub_1A8D188FC();
      goto LABEL_23;
    }

    if (a1 == 2)
    {
      sub_1A8D0A27C(&v73, &v65, &qword_1EB344BF8, &qword_1A8D252B0);
      v20 = sub_1A8D188EC();
      v52 = 1;
      *v34 = v73;
      *&v34[16] = v74;
      *&v34[32] = v75[0];
      *&v34[41] = *(v75 + 9);
      v43 = v73;
      v44 = v74;
      *v45 = v75[0];
      *&v45[9] = *(v75 + 9);
      sub_1A8D0A27C(&v73, &v65, &qword_1EB344B80, &qword_1A8D25278);
      sub_1A8D0A27C(&v43, &v65, &qword_1EB344BF8, &qword_1A8D252B0);
      sub_1A8D0A2E4(v34, &qword_1EB344BF8, &qword_1A8D252B0);
      sub_1A8D0A2E4(&v73, &qword_1EB344B80, &qword_1A8D25278);
      v54 = 1;
      *&v33[7] = v43;
      *&v33[23] = v44;
      *&v33[39] = *v45;
      v55 = v20;
      v56 = 0;
      v57[0] = v52;
      *&v57[8] = 0;
      v57[16] = 1;
      *&v57[65] = *&v45[9];
      *&v57[49] = *&v33[32];
      *&v57[33] = *&v33[16];
      *&v57[17] = *v33;
      v65 = v20;
      v66 = *v57;
      *v67 = *&v57[16];
      *&v67[16] = *&v57[32];
      v68 = *&v57[48];
      *v69 = *&v57[64];
      v69[16] = v45[24];
      v58 = 1;
      v69[17] = 1;
      v21 = &qword_1EB344BB8;
      v22 = &qword_1A8D25290;
      sub_1A8D0A27C(&v55, &v59, &qword_1EB344BB8, &qword_1A8D25290);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344BA8, &qword_1A8D25288);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344BB8, &qword_1A8D25290);
      v23 = MEMORY[0x1E6981870];
      sub_1A8D0A344(&qword_1EB344BA0, &qword_1EB344BA8, &qword_1A8D25288, MEMORY[0x1E6981870]);
      sub_1A8D0A344(&qword_1EB344BB0, &qword_1EB344BB8, &qword_1A8D25290, v23);
      sub_1A8D188FC();
      v68 = v62;
      *v69 = v63;
      *&v69[16] = v64;
      v65 = v59;
      v66 = v60;
      *v67 = *v61;
      *&v67[16] = *&v61[16];
      LOBYTE(v36) = 0;
      v69[18] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344B98, &qword_1A8D25280);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344BC8, &qword_1A8D25298);
      sub_1A8D0A030();
      sub_1A8D0A110();
      sub_1A8D188FC();
      v68 = v50;
      *v69 = *v51;
      *&v69[15] = *&v51[15];
      v65 = v46;
      v66 = v47;
      *v67 = v48;
      *&v67[16] = v49;
      LOBYTE(v39) = 0;
      v69[19] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344B78, &qword_1A8D25270);
LABEL_19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344B80, &qword_1A8D25278);
      sub_1A8D09FA4();
      sub_1A8D0A1F0();
      sub_1A8D188FC();
LABEL_23:
      sub_1A8D0A2E4(&v73, &qword_1EB344B80, &qword_1A8D25278);
      sub_1A8D0A2E4(&v55, v21, v22);
      v68 = v62;
      *v69 = v63;
      *&v69[16] = v64;
      v65 = v59;
      v66 = v60;
      *v67 = *v61;
      *&v67[16] = *&v61[16];
      goto LABEL_24;
    }
  }

  v59 = v73;
  v60 = v74;
  *v61 = v75[0];
  *&v61[9] = *(v75 + 9);
  LOBYTE(v46) = 1;
  HIBYTE(v64) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344B78, &qword_1A8D25270);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344B80, &qword_1A8D25278);
  sub_1A8D09FA4();
  sub_1A8D0A1F0();
  sub_1A8D188FC();
LABEL_24:
  v30 = *v69;
  *(a3 + 64) = v68;
  *(a3 + 80) = v30;
  *(a3 + 96) = *&v69[16];
  v31 = v66;
  *a3 = v65;
  *(a3 + 16) = v31;
  result = *&v67[16];
  *(a3 + 32) = *v67;
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_1A8D09E00@<X0>(double (**a1)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_1A8D09E6C;
  a1[1] = v5;
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

unint64_t sub_1A8D09ED8()
{
  result = qword_1EB344B70;
  if (!qword_1EB344B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB344B68, &qword_1A8D25268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB344B70);
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

unint64_t sub_1A8D09FA4()
{
  result = qword_1EB344B88;
  if (!qword_1EB344B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB344B78, &qword_1A8D25270);
    sub_1A8D0A030();
    sub_1A8D0A110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB344B88);
  }

  return result;
}

unint64_t sub_1A8D0A030()
{
  result = qword_1EB344B90;
  if (!qword_1EB344B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB344B98, &qword_1A8D25280);
    v1 = MEMORY[0x1E6981870];
    sub_1A8D0A344(&qword_1EB344BA0, &qword_1EB344BA8, &qword_1A8D25288, MEMORY[0x1E6981870]);
    sub_1A8D0A344(&qword_1EB344BB0, &qword_1EB344BB8, &qword_1A8D25290, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB344B90);
  }

  return result;
}

unint64_t sub_1A8D0A110()
{
  result = qword_1EB344BC0;
  if (!qword_1EB344BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB344BC8, &qword_1A8D25298);
    v1 = MEMORY[0x1E69817F8];
    sub_1A8D0A344(&qword_1EB344BD0, &qword_1EB344BD8, &qword_1A8D252A0, MEMORY[0x1E69817F8]);
    sub_1A8D0A344(&qword_1EB344BE0, &qword_1EB344BE8, &qword_1A8D252A8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB344BC0);
  }

  return result;
}

unint64_t sub_1A8D0A1F0()
{
  result = qword_1EB344BF0;
  if (!qword_1EB344BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB344B80, &qword_1A8D25278);
    sub_1A8D09ED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB344BF0);
  }

  return result;
}

uint64_t sub_1A8D0A27C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A8D0A2E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A8D0A344(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1A8D0A3B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1A8D0A3F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A8D0A474@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 32))
  {
    v4 = *v2;
    v6 = *(v2 + 24);
    v5 = *(v2 + 32);
    LOBYTE(v24) = *(v2 + 16) & 1;
    LOBYTE(v18) = 1;
    v29 = v4;
    LOBYTE(v30) = v24;
    *(&v30 + 1) = v6;
    *&v31 = v5;
    v33[24] = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344C10, &qword_1A8D25370);
  }

  else
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v10 = *a1;
    v9 = *(a1 + 8);
    v39.origin.x = *a1;
    v39.origin.y = v9;
    v39.size.width = v8;
    v39.size.height = v7;
    CGRectGetWidth(v39);
    v40.origin.x = v10;
    v40.origin.y = v9;
    v40.size.width = v8;
    v40.size.height = v7;
    CGRectGetHeight(v40);
    sub_1A8D189EC();
    sub_1A8D187FC();
    *&v36 = *(v2 + 32);
    v11 = *(v2 + 16);
    v34 = *v2;
    v35 = v11;
    v21 = v37;
    v22 = *v38;
    v23 = *&v38[16];
    v18 = v34;
    v19 = v11;
    v20 = v36;
    *&v28[16] = *&v38[16];
    v27 = v37;
    *v28 = *v38;
    v24 = v34;
    v25 = v11;
    v26 = v36;
    sub_1A8D0A27C(v2, &v29, &qword_1EB344C18, &qword_1A8D25378);
    sub_1A8D0A27C(&v18, &v29, &qword_1EB344C10, &qword_1A8D25370);
    sub_1A8D0A2E4(&v24, &qword_1EB344C10, &qword_1A8D25370);
    v31 = v20;
    v32 = v21;
    *v33 = v22;
    *&v33[16] = v23;
    v29 = v18;
    v30 = v19;
    v33[24] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344C10, &qword_1A8D25370);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344C18, &qword_1A8D25378);
  sub_1A8D0AADC();
  sub_1A8D0A344(&qword_1EB344C28, &qword_1EB344C18, &qword_1A8D25378, MEMORY[0x1E6981870]);
  sub_1A8D188FC();
  v12 = v37;
  v26 = v36;
  v27 = v37;
  v13 = *v38;
  *v28 = *v38;
  v14 = *&v38[9];
  *&v28[9] = *&v38[9];
  v16 = v35;
  v24 = v34;
  v15 = v34;
  v25 = v35;
  a2[2] = v36;
  a2[3] = v12;
  a2[4] = v13;
  *(a2 + 73) = v14;
  *a2 = v15;
  a2[1] = v16;
  v29 = v34;
  v30 = v35;
  *&v33[9] = *&v38[9];
  v32 = v37;
  *v33 = *v38;
  v31 = v36;
  sub_1A8D0A27C(&v24, &v18, &qword_1EB344C30, &qword_1A8D25380);
  return sub_1A8D0A2E4(&v29, &qword_1EB344C30, &qword_1A8D25380);
}

double sub_1A8D0A740@<D0>(uint64_t a2@<X8>)
{
  v4 = sub_1A8D188EC();
  sub_1A8D0A808(v2, v18);
  v14 = v4;
  v15 = 0;
  v16 = 1;
  v17 = v18[0];
  v5 = *(v2 + 40);
  v12[0] = *(v2 + 24);
  v12[1] = v5;
  v13 = *(v2 + 56);
  sub_1A8D0A474(v12, v18);

  v6 = sub_1A8D1890C();
  v7 = v18[3];
  v8 = v18[4];
  *(a2 + 32) = v18[2];
  *(a2 + 48) = v7;
  v9 = v18[5];
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  v10 = v18[1];
  *a2 = v18[0];
  *(a2 + 16) = v10;
  *(a2 + 96) = v6;
  result = 0.0;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 1;
  return result;
}

uint64_t sub_1A8D0A808@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344C38, &qword_1A8D25388);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - v4;
  v37 = *a1;
  sub_1A8D0AB94(a1, v32);
  sub_1A8D0ABCC();
  v6 = sub_1A8D1896C();
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 16);
  if (v11 == sub_1A8D18A8C())
  {
    v12 = sub_1A8D189AC();
  }

  else if (v11 == sub_1A8D18A9C())
  {
    v12 = sub_1A8D189CC();
  }

  else
  {
    v12 = sub_1A8D189BC();
  }

  v30 = *(a1 + 8);
  v32[0] = v12;
  v13 = sub_1A8D1893C();
  v15 = v14;
  v17 = v16;
  sub_1A8D0AC20(v6, v8, v10 & 1);

  v18 = sub_1A8D1891C();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  sub_1A8D1892C();
  sub_1A8D0A2E4(v5, &qword_1EB344C38, &qword_1A8D25388);
  v19 = sub_1A8D1894C();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_1A8D0AC20(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  v32[0] = v19;
  v32[1] = v21;
  v33 = v23 & 1;
  v34 = v25;
  v35 = KeyPath;
  v36 = 0x3F847AE147AE147BLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344C48, &qword_1A8D253C0);
  sub_1A8D0AC30();
  result = sub_1A8D189DC();
  v28 = v31;
  *v31 = v30;
  v28[1] = result;
  return result;
}

unint64_t sub_1A8D0AADC()
{
  result = qword_1EB344C20;
  if (!qword_1EB344C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB344C10, &qword_1A8D25370);
    sub_1A8D0A344(&qword_1EB344C28, &qword_1EB344C18, &qword_1A8D25378, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB344C20);
  }

  return result;
}

unint64_t sub_1A8D0ABCC()
{
  result = qword_1EB344C40;
  if (!qword_1EB344C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB344C40);
  }

  return result;
}

uint64_t sub_1A8D0AC20(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1A8D0AC30()
{
  result = qword_1EB344C50;
  if (!qword_1EB344C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB344C48, &qword_1A8D253C0);
    sub_1A8D0A344(&qword_1EB344C58, &qword_1EB344C60, &qword_1A8D253C8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB344C50);
  }

  return result;
}

unint64_t sub_1A8D0ACE8()
{
  result = qword_1EB344C68;
  if (!qword_1EB344C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB344C70, &unk_1A8D253D0);
    sub_1A8D0AD74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB344C68);
  }

  return result;
}

unint64_t sub_1A8D0AD74()
{
  result = qword_1EB344C78;
  if (!qword_1EB344C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB344C30, &qword_1A8D25380);
    sub_1A8D0AADC();
    sub_1A8D0A344(&qword_1EB344C28, &qword_1EB344C18, &qword_1A8D25378, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB344C78);
  }

  return result;
}

uint64_t sub_1A8D0AE2C()
{
  v0 = sub_1A8D1873C();
  __swift_allocate_value_buffer(v0, qword_1EB3454F0);
  __swift_project_value_buffer(v0, qword_1EB3454F0);
  return sub_1A8D1872C();
}

id sub_1A8D0AED0(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1A8D18AEC();
  swift_getErrorValue();
  sub_1A8D18B2C();

  MEMORY[0x1AC5755D0](0x6E4972657355202CLL, 0xEC000000203A6F66);
  v4 = sub_1A8D1868C();
  v5 = [v4 userInfo];

  sub_1A8D189FC();
  v6 = sub_1A8D18A0C();
  v8 = v7;

  MEMORY[0x1AC5755D0](v6, v8);

  v9 = sub_1A8D18A1C();

  LOBYTE(v6) = sub_1A8D18A8C();
  v10 = [objc_opt_self() mainScreen];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [ObjCClassFromMetadata uiImageWithMessage:v9 level:v6 frame:a2 location:{v12, v14, v16, v18}];
  return v19;
}

id sub_1A8D0B1DC(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = a3;
  v7 = sub_1A8D1868C();
  v8 = [a1 *a4];

  return v8;
}

id sub_1A8D0B254(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1A8D18AEC();
  swift_getErrorValue();
  sub_1A8D18B2C();

  MEMORY[0x1AC5755D0](0x6E4972657355202CLL, 0xEC000000203A6F66);
  v4 = sub_1A8D1868C();
  v5 = [v4 userInfo];

  sub_1A8D189FC();
  v6 = sub_1A8D18A0C();
  v8 = v7;

  MEMORY[0x1AC5755D0](v6, v8);

  v9 = sub_1A8D18A1C();

  LOBYTE(v6) = sub_1A8D18A8C();
  v10 = [objc_opt_self() mainScreen];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [ObjCClassFromMetadata uiViewWithMessage:v9 level:v6 frame:a2 location:{v12, v14, v16, v18}];
  return v19;
}

id sub_1A8D0B4C0()
{
  v1 = *(v0 + 48);
  v11 = *(v0 + 32);
  v12 = v1;
  v13 = *(v0 + 64);
  v2 = *(v0 + 16);
  v9 = *v0;
  v10 = v2;
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344CC8, &qword_1A8D254A0));
  sub_1A8D0AB94(v0, v8);
  v4 = sub_1A8D1884C();
  v5 = [v4 layer];
  *&v9 = &type metadata for FrameResponsiveMessageView;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344CD0, &qword_1A8D254A8);
  sub_1A8D18A3C();
  v6 = sub_1A8D18A1C();

  [v5 setName_];

  return v4;
}

id sub_1A8D0B5BC(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A8D1885C();
  (*(v3 + 16))(v5, v1, a1);
  v6 = sub_1A8D1883C();
  v7 = [v6 layer];
  v10[1] = a1;
  swift_getMetatypeMetadata();
  sub_1A8D18A3C();
  v8 = sub_1A8D18A1C();

  [v7 setName_];

  return v6;
}

uint64_t sub_1A8D0B7A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A8D188CC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1A8D188BC();
  sub_1A8D188AC();
  sub_1A8D1889C();

  sub_1A8D188AC();
  sub_1A8D188DC();
  v18[0] = sub_1A8D1895C();
  v18[1] = v5;
  v19 = v6 & 1;
  v20 = v7;
  v8 = sub_1A8D189DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344C80, &unk_1A8D253E0);
  explicit = atomic_load_explicit((swift_initStaticObject() + 16), memory_order_acquire);
  if (explicit)
  {
    v10 = explicit;
    sub_1A8D0BE64(a1, &v15);

    if (*(&v16 + 1))
    {
      sub_1A8D0D4DC(&v15, v18);
      v11 = v20;
      v12 = v21;
      __swift_project_boxed_opaque_existential_1(v18, v20);
      (*(v12 + 8))(v11, v12);

      return __swift_destroy_boxed_opaque_existential_1(v18);
    }
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
  }

  result = sub_1A8D0D474(&v15);
  v14 = MEMORY[0x1E6981900];
  a2[3] = MEMORY[0x1E6981910];
  a2[4] = v14;
  *a2 = v8;
  return result;
}

void __swiftcall PUIDebugViewFactory.init()(PUIDebugViewFactory *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void static PUIDebugViewFactory.setup(with:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344C80, &unk_1A8D253E0);
  if (atomic_load_explicit((swift_initStaticObject() + 16), memory_order_acquire))
  {
    return;
  }

  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1A8D0C898(0, v2, 0);
    v3 = v26;
    v4 = a1 + 32;
    do
    {
      sub_1A8D0C8B8(v4, &v22);
      v5 = v24;
      v6 = v25;
      __swift_project_boxed_opaque_existential_1(&v22, v24);
      (*(v6 + 16))(v5, v6);
      __swift_destroy_boxed_opaque_existential_1(&v22);
      v26 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1A8D0C898((v7 > 1), v8 + 1, 1);
        v3 = v26;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = 0xD000000000000011;
      *(v9 + 40) = 0x80000001A8D2E850;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v11 = sub_1A8D0D200(v10);

  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = sub_1A8D0BF50(*(v11 + 16), 0);
    v14 = sub_1A8D0CAB8(&v22, v13 + 4, v12, v11);
    sub_1A8D0D298(v22);
    if (v14 == v12)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_11:
  if (*(v3 + 16) == v13[2])
  {

    if (qword_1EB343658 != -1)
    {
      swift_once();
    }

    v15 = sub_1A8D1873C();
    __swift_project_value_buffer(v15, qword_1EB3454F0);
    v16 = sub_1A8D1871C();
    v17 = sub_1A8D18AAC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1A8C85000, v16, v17, "Initializing PUIDebugViewFactory", v18, 2u);
      MEMORY[0x1AC576E00](v18, -1, -1);
    }

    v19 = objc_allocWithZone(PUIDebugViewFactory);
    *&v19[OBJC_IVAR___PUIDebugViewFactory_viewProviders] = a1;
    v21.receiver = v19;
    v21.super_class = PUIDebugViewFactory;

    objc_msgSendSuper2(&v21, sel_init);
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_1A8D18AEC();

    v22 = 0xD000000000000016;
    v23 = 0x80000001A8D2E8B0;
    v20 = MEMORY[0x1AC5755E0](v3, MEMORY[0x1E69E6158]);
    MEMORY[0x1AC5755D0](v20);

    sub_1A8D18AFC();
    __break(1u);
  }
}

uint64_t sub_1A8D0BE64@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR___PUIDebugViewFactory_viewProviders);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = v4 + 32;
    while (v7 < *(v4 + 16))
    {
      sub_1A8D0C8B8(v8, &v11);
      v9 = v12;
      v10 = v13;
      __swift_project_boxed_opaque_existential_1(&v11, v12);
      (*(v10 + 16))(v9, v10);
      if (!v6)
      {
        return sub_1A8D0D4DC(&v11, a2);
      }

      ++v7;
      result = __swift_destroy_boxed_opaque_existential_1(&v11);
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void *sub_1A8D0BF50(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344CE0, &qword_1A8D254B8);
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

uint64_t sub_1A8D0BFD4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1A8D18B3C();
  sub_1A8D18A4C();
  v8 = sub_1A8D18B5C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1A8D18B0C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1A8D0C384(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1A8D0C124(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344CE8, qword_1A8D254C0);
  result = sub_1A8D18ADC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1A8D18B3C();
      sub_1A8D18A4C();
      result = sub_1A8D18B5C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A8D0C384(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1A8D0C124(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1A8D0C504();
      goto LABEL_16;
    }

    sub_1A8D0C660(v8 + 1);
  }

  v10 = *v4;
  sub_1A8D18B3C();
  sub_1A8D18A4C();
  result = sub_1A8D18B5C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1A8D18B0C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1A8D18B1C();
  __break(1u);
  return result;
}

void *sub_1A8D0C504()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344CE8, qword_1A8D254C0);
  v2 = *v0;
  v3 = sub_1A8D18ACC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A8D0C660(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344CE8, qword_1A8D254C0);
  result = sub_1A8D18ADC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1A8D18B3C();

      sub_1A8D18A4C();
      result = sub_1A8D18B5C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

char *sub_1A8D0C898(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A8D0C9AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1A8D0C8B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

char *sub_1A8D0C9AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344CE0, &qword_1A8D254B8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A8D0CAB8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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

uint64_t sub_1A8D0CC10(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v33 = a4;
  v32 = a3;
  v30 = a1;
  v31 = a2;
  v29 = sub_1A8D186AC();
  v12 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A8D186CC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A8D186FC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[0] = 91;
  v34[1] = 0xE100000000000000;
  sub_1A8D186EC();
  sub_1A8D186BC();
  sub_1A8D1869C();
  v23 = sub_1A8D186DC();
  v25 = v24;
  (*(v12 + 8))(v14, v29);
  (*(v16 + 8))(v18, v15);
  (*(v20 + 8))(v22, v19);
  MEMORY[0x1AC5755D0](v23, v25);

  MEMORY[0x1AC5755D0](8285, 0xE200000000000000);
  MEMORY[0x1AC5755D0](v30, v31);
  v45 = 0;
  v35 = v32;
  *v36 = v46[0];
  *&v36[3] = *(v46 + 3);
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = 0;
  *v42 = *v44;
  *&v42[3] = *&v44[3];
  v43 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344CD8, &qword_1A8D254B0);
  swift_allocObject();
  MEMORY[0x1AC5753A0](v34);
  v26 = sub_1A8D1881C();

  return v26;
}

id sub_1A8D0CF20(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v33 = a4;
  v32 = a3;
  v30 = a1;
  v31 = a2;
  v29 = sub_1A8D186AC();
  v12 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A8D186CC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A8D186FC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 91;
  v35 = 0xE100000000000000;
  sub_1A8D186EC();
  sub_1A8D186BC();
  sub_1A8D1869C();
  v23 = sub_1A8D186DC();
  v25 = v24;
  (*(v12 + 8))(v14, v29);
  (*(v16 + 8))(v18, v15);
  (*(v20 + 8))(v22, v19);
  MEMORY[0x1AC5755D0](v23, v25);

  MEMORY[0x1AC5755D0](8285, 0xE200000000000000);
  MEMORY[0x1AC5755D0](v30, v31);
  v46 = 0;
  v36 = v32;
  *v37 = v47[0];
  *&v37[3] = *(v47 + 3);
  v38 = a5;
  v39 = a6;
  v40 = a7;
  v41 = a8;
  v42 = 0;
  *&v43[3] = *&v45[3];
  *v43 = *v45;
  v44 = v33;
  v26 = sub_1A8D0B4C0();

  return v26;
}

uint64_t sub_1A8D0D200(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC5755F0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1A8D0BFD4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1A8D0D2D8(uint64_t a1)
{
  result = sub_1A8D0D3F0(&qword_1EB344C90, &protocol conformance descriptor for PUIDebugViewFactory);
  *(a1 + 8) = result;
  return result;
}

unint64_t type metadata accessor for PUIDebugViewFactory()
{
  result = qword_1EB343630;
  if (!qword_1EB343630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB343630);
  }

  return result;
}

uint64_t sub_1A8D0D3AC(uint64_t a1)
{
  result = sub_1A8D0D3F0(&qword_1EB344CA8, &protocol conformance descriptor for PUIDebugViewFactory);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A8D0D3F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PUIDebugViewFactory();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A8D0D474(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB344CC0, &qword_1A8D25498);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A8D0D4DC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1A8D0D608(void (*a1)(void))
{
  v2 = sub_1A8D1879C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  result = PUIFeatureEnabled(9);
  if (result)
  {
    a1();
    v4[3] = sub_1A8D187DC();
    v4[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v4);
    sub_1A8D187EC();
    return sub_1A8D18ABC();
  }

  return result;
}

void sub_1A8D0D6E0(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_1A8D1879C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = a1;
  if (PUIFeatureEnabled(9))
  {
    a3();
    v7[3] = sub_1A8D187DC();
    v7[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v7);
    sub_1A8D187EC();
    sub_1A8D18ABC();
  }

  else
  {
  }
}

Swift::Void __swiftcall UIView.pui_setLockscreenControlGlassBackground()()
{
  v0 = sub_1A8D1879C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v10[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = sub_1A8D187DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (PUIFeatureEnabled(9))
  {
    sub_1A8D1878C();
    sub_1A8D1877C();
    (*(v1 + 8))(v4, v0);
    sub_1A8D187EC();
    v10[3] = v5;
    v10[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v10);
    sub_1A8D187AC();
    (*(v6 + 8))(v8, v5);
    sub_1A8D18ABC();
  }
}

void sub_1A8D0D9E0(void *a1)
{
  v1 = a1;
  UIView.pui_setLockscreenControlGlassBackground()();
}

Swift::Void __swiftcall UIView.pui_setHomescreenCloseGlassBackground()()
{
  v1 = sub_1A8D1879C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = sub_1A8D187DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v18[-1] - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18[-1] - v14;
  if (PUIFeatureEnabled(9))
  {
    sub_1A8D1878C();
    v17 = v0;
    sub_1A8D1876C();
    (*(v2 + 8))(v5, v1);
    sub_1A8D187EC();
    sub_1A8D187AC();
    v16 = *(v7 + 8);
    v16(v10, v6);
    sub_1A8D187CC();
    v16(v13, v6);
    v18[3] = v6;
    v18[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v18);
    sub_1A8D187BC();
    v16(v15, v6);
    sub_1A8D18ABC();
  }
}

void sub_1A8D0DCB4(void *a1)
{
  v1 = a1;
  UIView.pui_setHomescreenCloseGlassBackground()();
}

Swift::Void __swiftcall UIView.pui_setPosterSwitcherGlassBackground()()
{
  v0 = sub_1A8D1879C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1A8D187DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (PUIFeatureEnabled(9))
  {
    sub_1A8D1878C();
    sub_1A8D187EC();
    v6[3] = v1;
    v6[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v6);
    sub_1A8D187AC();
    (*(v2 + 8))(v4, v1);
    sub_1A8D18ABC();
  }
}

void sub_1A8D0DE7C(void *a1)
{
  v1 = a1;
  UIView.pui_setPosterSwitcherGlassBackground()();
}

Swift::Void __swiftcall UIView.pui_setGlassGroupBackground()()
{
  if (PUIFeatureEnabled(9))
  {
    v0[3] = sub_1A8D1875C();
    v0[4] = MEMORY[0x1E69DBEA8];
    __swift_allocate_boxed_opaque_existential_1(v0);
    sub_1A8D1874C();
    sub_1A8D18ABC();
  }
}

void sub_1A8D0DF1C(void *a1)
{
  v1 = a1;
  if (PUIFeatureEnabled(9))
  {
    v2[3] = sub_1A8D1875C();
    v2[4] = MEMORY[0x1E69DBEA8];
    __swift_allocate_boxed_opaque_existential_1(v2);
    sub_1A8D1874C();
    sub_1A8D18ABC();
  }

  else
  {
  }
}

void sub_1A8D0DFE4(void *a1)
{
  v1 = a1;
  sub_1A8D18ABC();
}

void __PUIImageByApplyingColorSpace_cold_1(uint64_t a1)
{
  CGColorSpaceGetType();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1A8C85000, v1, v2, "Don't know which device colorspace matches type=%i -> space=%{public}@", v3, v4, v5, v6);
}

void __PUIImageByApplyingColorSpace_cold_2(CGColorSpace *a1)
{
  CGColorSpaceGetModel(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1A8C85000, v1, v2, "Don't know which device colorspace matches ICC model=%i -> space=%{public}@", v3, v4, v5, v6);
}

void __PUIImageByApplyingColorSpace_cold_3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A8C85000, a2, OS_LOG_TYPE_ERROR, "The original image doesn't have a colorspace -> image=%{public}@", &v2, 0xCu);
}

void __PUIImageByApplyingColorSpace_cold_4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A8C85000, a2, OS_LOG_TYPE_ERROR, "The original image isn't CGImage based -> image=%{public}@", &v2, 0xCu);
}

void PUIPosterSnapshotBundleURLForComponent_cold_1()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"bundleURL != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSURL * _Nonnull PUIPosterSnapshotBundleURLForComponent(NSURL *__strong _Nonnull, PUIPosterSnapshotBundleComponent)"}];
    *buf = 138544130;
    v3 = v1;
    v4 = 2114;
    v5 = @"PUIPosterSnapshotBundle.m";
    v6 = 1024;
    v7 = 83;
    v8 = 2114;
    v9 = v0;
    _os_log_error_impl(&dword_1A8C85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void PUIPosterSnapshotBundleURLForPosterLevelSet_cold_1()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"bundleURL != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSURL * _Nonnull PUIPosterSnapshotBundleURLForPosterLevelSet(NSURL *__strong _Nonnull, PUIPosterLevelSet *__strong _Nonnull)"}];
    *buf = 138544130;
    v3 = v1;
    v4 = 2114;
    v5 = @"PUIPosterSnapshotBundle.m";
    v6 = 1024;
    v7 = 111;
    v8 = 2114;
    v9 = v0;
    _os_log_error_impl(&dword_1A8C85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void PUIImageOrientationForImageCapturedInInterfaceOrientationToBeDisplayedInInterfaceOrientation_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIImageOrientation PUIImageOrientationForImageCapturedInInterfaceOrientationToBeDisplayedInInterfaceOrientation(BSInterfaceOrientation, BSInterfaceOrientation)"}];
  v3 = 138544130;
  v4 = v2;
  v5 = 2114;
  v6 = @"UIImageOrientation+PosterUIFoundation.m";
  v7 = 1024;
  v8 = 42;
  v9 = 2114;
  v10 = a1;
  _os_log_error_impl(&dword_1A8C85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v3, 0x26u);
}

void __PRUISExecuteProminentColorAnalysisOnImage_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A8C85000, a2, OS_LOG_TYPE_ERROR, "_determineProminentColor failed to run w/ error: %{public}@", &v2, 0xCu);
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC58](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectFromString(NSString *string)
{
  MEMORY[0x1EEE4DB30](string);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGSize CGSizeFromString(NSString *string)
{
  MEMORY[0x1EEE4DB38](string);
  result.height = v2;
  result.width = v1;
  return result;
}

NSDirectionalEdgeInsets NSDirectionalEdgeInsetsFromString(NSString *string)
{
  MEMORY[0x1EEE4DB40](string);
  result.trailing = v4;
  result.bottom = v3;
  result.leading = v2;
  result.top = v1;
  return result;
}
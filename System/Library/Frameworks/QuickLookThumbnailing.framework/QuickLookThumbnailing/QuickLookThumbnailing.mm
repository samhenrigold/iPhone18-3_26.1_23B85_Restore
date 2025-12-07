void sub_1CA1E9950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v21 - 136), 8);
  _Unwind_Resume(a1);
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

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getFPSandboxingURLWrapperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFPSandboxingURLWrapperClass_softClass;
  v7 = getFPSandboxingURLWrapperClass_softClass;
  if (!getFPSandboxingURLWrapperClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getFPSandboxingURLWrapperClass_block_invoke;
    v3[3] = &unk_1E8369C70;
    v3[4] = &v4;
    __getFPSandboxingURLWrapperClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA1E9D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void QLTInitLogging()
{
  if (QLTInitLogging_once != -1)
  {
    QLTInitLogging_cold_1();
  }
}

id _log()
{
  v0 = qword_1EDAC3C60;
  if (!qword_1EDAC3C60)
  {
    QLTInitLogging();
    v0 = qword_1EDAC3C60;
  }

  return v0;
}

id _log_0()
{
  v0 = qltLogHandles[0];
  if (!qltLogHandles[0])
  {
    QLTInitLogging();
    v0 = qltLogHandles[0];
  }

  return v0;
}

id _log_1()
{
  v0 = qword_1EDAC3C58;
  if (!qword_1EDAC3C58)
  {
    QLTInitLogging();
    v0 = qword_1EDAC3C58;
  }

  return v0;
}

id _log_2()
{
  v0 = qword_1EDAC3C78;
  if (!qword_1EDAC3C78)
  {
    QLTInitLogging();
    v0 = qword_1EDAC3C78;
  }

  return v0;
}

void __QLTInitLogging_block_invoke()
{
  for (i = 0; i != 23; ++i)
  {
    v1 = os_log_create("com.apple.quicklook", _block_invoke_categories[i]);
    v2 = qltLogHandles[i];
    qltLogHandles[i] = v1;
  }
}

Class __QLTImageClassWithError_block_invoke()
{
  result = NSClassFromString(&cfstr_Uiimage.isa);
  QLTImageClassWithError_ImageClass = result;
  return result;
}

void sub_1CA1EA774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CGImageRef QLImageCreateForDefaultThumbnailGenerationFromData(void *a1)
{
  v1 = a1;
  v2 = [v1 format];
  v3 = [v1 data];

  v4 = CGDataProviderCreateWithCFData(v3);
  v5 = [v2 width];
  v6 = [v2 height];
  v7 = [v2 bitsPerComponent];
  v8 = [v2 bitsPerPixel];
  v9 = [v2 bytesPerRow];
  DeviceRGB = [v2 colorSpace];
  if (!DeviceRGB)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v11 = DeviceRGB;
  }

  v12 = CGImageCreate(v5, v6, v7, v8, v9, DeviceRGB, [v2 bitmapInfo], v4, 0, 1, kCGRenderingIntentDefault);
  if (!v12)
  {
    v13 = [v2 width];
    v14 = [v2 height];
    v15 = [v2 bitsPerComponent];
    v16 = [v2 bitsPerPixel];
    v17 = [v2 bytesPerRow];
    v18 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B0]);
    v19 = v18;
    v12 = CGImageCreate(v13, v14, v15, v16, v17, v18, [v2 bitmapInfo], v4, 0, 1, kCGRenderingIntentDefault);
    if (!v12)
    {
      v20 = [v2 width];
      v21 = [v2 height];
      v22 = [v2 bitsPerComponent];
      v23 = [v2 bitsPerPixel];
      v24 = [v2 bytesPerRow];
      DeviceGray = CGColorSpaceCreateDeviceGray();
      v26 = DeviceGray;
      v12 = CGImageCreate(v20, v21, v22, v23, v24, DeviceGray, [v2 bitmapInfo], v4, 0, 1, kCGRenderingIntentDefault);
    }
  }

  v27 = v12;
  if (v4)
  {
    CGDataProviderRelease(v4);
  }

  return v27;
}

__CFString *QLThumbnailRepresentationTypeToString(uint64_t a1)
{
  v1 = @"Icon";
  if (a1 == 1)
  {
    v1 = @"LowQualityThumbnail";
  }

  if (a1 == 2)
  {
    return @"Thumbnail";
  }

  else
  {
    return v1;
  }
}

id QLTImageClassWithError(void *a1)
{
  if (QLTImageClassWithError_once != -1)
  {
    QLTImageClassWithError_cold_1();
  }

  if (!QLTImageClassWithError_ImageClass)
  {
    NSLog(&cfstr_QlErrorYouNeed.isa);
    if (a1)
    {
      *a1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"QLThumbnailErrorDomain" code:103 userInfo:0];
    }
  }

  v2 = QLTImageClassWithError_ImageClass;

  return v2;
}

uint64_t sub_1CA1EB06C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA1EB0A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA1EB0DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA1EB114(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ThumbnailExtensionConfiguration(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_1CA1EB15C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CA1EB1AC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA1EB1E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t QLCompareVersion(const __CFString *a1, const __CFString *cf)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = cf == 0;
    v9 = 1;
    goto LABEL_9;
  }

  if (!cf)
  {
    return 1;
  }

  v4 = CFGetTypeID(cf);
  v5 = CFGetTypeID(cf);
  TypeID = CFStringGetTypeID();
  if (v4 != TypeID)
  {
    v8 = v5 == TypeID;
    v9 = -1;
LABEL_9:
    if (v8)
    {
      return v9;
    }

    else
    {
      return -v9;
    }
  }

  if (v5 != v4)
  {
    return 1;
  }

  if (CFEqual(a1, cf))
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  if ((Length - 101) < 0xFFFFFFFFFFFFFF9CLL)
  {
    v11 = 0;
LABEL_25:
    v16 = 0;
    goto LABEL_26;
  }

  v12 = Length;
  v13 = v38;
  v40.location = 0;
  v40.length = Length;
  CFStringGetCharacters(a1, v40, v38);
  v11 = 0;
  while (1)
  {
    v14 = *v13;
    if (v14 - 58 < 0xFFFFFFF6)
    {
      break;
    }

    v11 = (v14 & 0xF) + 10 * v11;
    ++v13;
    v15 = v12-- <= 1;
    if (v15)
    {
      goto LABEL_25;
    }
  }

  if (v14 == 46)
  {
    if (v12 < 2)
    {
      goto LABEL_25;
    }

    v16 = 0;
    ++v13;
    while (1)
    {
      v17 = v12 - 1;
      v14 = *v13;
      if (v14 - 58 < 0xFFFFFFF6)
      {
        break;
      }

      v16 = (v14 & 0xF) + 10 * v16;
      ++v13;
      --v12;
      if ((v17 + 1) <= 2)
      {
        goto LABEL_26;
      }
    }

    if (v14 == 46)
    {
      if (v12 < 3)
      {
LABEL_26:
        v18 = 0;
LABEL_27:
        v14 = 0;
        goto LABEL_28;
      }

      v18 = 0;
      v12 -= 2;
      ++v13;
      while (1)
      {
        v14 = *v13;
        if (v14 - 58 < 0xFFFFFFF6)
        {
          break;
        }

        v18 = (v14 & 0xF) + 10 * v18;
        ++v13;
        v15 = v12-- <= 1;
        if (v15)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v18 = 0;
      --v12;
    }
  }

  else
  {
    v18 = 0;
    v16 = 0;
  }

  if (v12 < 2)
  {
LABEL_28:
    v19 = 0;
    goto LABEL_29;
  }

  v19 = 0;
  v29 = v13 + 1;
  v30 = v12 + 1;
  do
  {
    v32 = *v29++;
    v31 = v32;
    if ((v32 - 58) < 0xFFFFFFF6)
    {
      break;
    }

    v19 = (v31 & 0xF) + 10 * v19;
    --v30;
  }

  while (v30 > 2);
LABEL_29:
  v20 = CFStringGetLength(cf);
  if ((v20 - 101) < 0xFFFFFFFFFFFFFF9CLL)
  {
    v21 = 0;
LABEL_42:
    v25 = 0;
    goto LABEL_43;
  }

  v22 = v20;
  v23 = v38;
  v41.location = 0;
  v41.length = v20;
  CFStringGetCharacters(cf, v41, v38);
  v21 = 0;
  while (1)
  {
    v24 = *v23;
    if (v24 - 58 < 0xFFFFFFF6)
    {
      break;
    }

    v21 = (v24 & 0xF) + 10 * v21;
    ++v23;
    v15 = v22-- <= 1;
    if (v15)
    {
      goto LABEL_42;
    }
  }

  if (v24 == 46)
  {
    if (v22 < 2)
    {
      goto LABEL_42;
    }

    v25 = 0;
    ++v23;
    while (1)
    {
      v26 = v22 - 1;
      v24 = *v23;
      if (v24 - 58 < 0xFFFFFFF6)
      {
        break;
      }

      v25 = (v24 & 0xF) + 10 * v25;
      ++v23;
      --v22;
      if ((v26 + 1) <= 2)
      {
        goto LABEL_43;
      }
    }

    if (v24 == 46)
    {
      if (v22 < 3)
      {
LABEL_43:
        v27 = 0;
LABEL_44:
        v24 = 0;
        goto LABEL_45;
      }

      v27 = 0;
      v22 -= 2;
      ++v23;
      while (1)
      {
        v37 = *v23;
        if ((v37 - 58) < 0xFFFFFFF6)
        {
          break;
        }

        v27 = (v37 & 0xF) + 10 * v27;
        ++v23;
        v15 = v22-- <= 1;
        if (v15)
        {
          goto LABEL_44;
        }
      }

      v24 = *v23;
    }

    else
    {
      v27 = 0;
      --v22;
    }
  }

  else
  {
    v27 = 0;
    v25 = 0;
  }

  if (v22 >= 2)
  {
    v28 = 0;
    v33 = v23 + 1;
    v34 = v22 + 1;
    do
    {
      v36 = *v33++;
      v35 = v36;
      if ((v36 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v28 = (v35 & 0xF) + 10 * v28;
      --v34;
    }

    while (v34 > 2);
    goto LABEL_46;
  }

LABEL_45:
  v28 = 0;
LABEL_46:
  if (v11 > v21)
  {
    return 1;
  }

  if (v11 < v21)
  {
    return -1;
  }

  if (v16 > v25)
  {
    return 1;
  }

  if (v16 < v25)
  {
    return -1;
  }

  if (v18 > v27)
  {
    return 1;
  }

  if (v18 < v27)
  {
    return -1;
  }

  if (v14 > v24)
  {
    return 1;
  }

  if (v14 < v24)
  {
    return -1;
  }

  if (v19 > v28)
  {
    return 1;
  }

  if (v19 >= v28)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

void sub_1CA1ECD48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_1CA1ED9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFPItemIDClass_block_invoke(uint64_t a1)
{
  FileProviderLibrary();
  result = objc_getClass("FPItemID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFPItemIDClass_block_invoke_cold_1();
  }

  getFPItemIDClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1CA1EF360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFPItemClass_block_invoke(uint64_t a1)
{
  FileProviderLibrary();
  result = objc_getClass("FPItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFPItemClass_block_invoke_cold_1();
  }

  getFPItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1CA1F0B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA1F3D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CA1F4144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t ql_external_thumbnail_cache_create_tables_initial(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 execute:{@"CREATE TABLE thumbnails( fpitemId TEXT NOT NULL, versionId BLOB NOT NULL, last_hit_date INTEGER NOT NULL, size INTEGER NOT NULL, file_extension TEXT NOT NULL, PRIMARY KEY (fpitemId))"}] && objc_msgSend(v3, "execute:", @"CREATE INDEX last_hit_date ON thumbnails (last_hit_date)"))
  {
    v4 = [v3 setUserVersion:1];
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  if ((v4 & 1) == 0)
  {
    *a2 = [v3 lastError];
  }

LABEL_8:

  return v4;
}

void sub_1CA1F6B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA1F6E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA1F7034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA1F71A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA1F7340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA1F75DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1CA1F79E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA1F7E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_1CA1FACB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t QLIconAutoDisplayExtension(void *a1)
{
  v1 = QLIconAutoDisplayExtension_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    QLIconAutoDisplayExtension_cold_1();
  }

  v3 = QLSetContainsContentType(QLIconAutoDisplayExtension_autoDisplayExtensionUTIs, v2);

  return v3;
}

void __QLIconAutoDisplayExtension_block_invoke()
{
  v14 = MEMORY[0x1E695DFA8];
  v13 = *MEMORY[0x1E6982F40];
  v12 = *MEMORY[0x1E6982F68];
  v0 = *MEMORY[0x1E6982F90];
  v1 = *MEMORY[0x1E6982F98];
  v15 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"org.oasis-open.opendocument.text"];
  v2 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.microsoft.word.doc"];
  v3 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"org.openxmlformats.wordprocessingml.document"];
  v4 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.microsoft.excel.xls"];
  v5 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"org.openxmlformats.spreadsheetml.sheet"];
  v6 = *MEMORY[0x1E6982F10];
  v7 = *MEMORY[0x1E6982E18];
  v8 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"public.xhtml"];
  v9 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.webarchive"];
  v10 = [v14 setWithObjects:{v13, v12, v0, v1, v15, v2, v3, v4, v5, v6, v7, v8, v9, 0}];
  v11 = QLIconAutoDisplayExtension_autoDisplayExtensionUTIs;
  QLIconAutoDisplayExtension_autoDisplayExtensionUTIs = v10;
}

void setErrorWrappingUnderlyingError(void *a1, void *a2, uint64_t a3, void *a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  if (a4)
  {
    v9 = MEMORY[0x1E696ABC0];
    if (v7)
    {
      v11 = *MEMORY[0x1E696AA08];
      v12[0] = v7;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    }

    else
    {
      v10 = 0;
    }

    *a4 = [v9 errorWithDomain:v8 code:a3 userInfo:v10];
    if (v7)
    {
    }
  }
}

void sub_1CA1FCD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA1FDCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA1FF308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_1CA1FFF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
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

void sub_1CA200284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1CA2004CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA201578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CloudDocsLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CloudDocsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CloudDocsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E836A660;
    v5 = 0;
    CloudDocsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CloudDocsLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!CloudDocsLibraryCore_frameworkLibrary)
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

void sub_1CA202DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose((v24 - 176), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA2039BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _QLCopyResourcePropertyForKey(void *a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = _log_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v24 = a1;
    _os_log_impl(&dword_1CA1E7000, v8, OS_LOG_TYPE_INFO, "Getting NSURL thumbnails property for %@", buf, 0xCu);
  }

  v9 = a2;
  v10 = *MEMORY[0x1E695DC50];
  if (([v9 isEqualToString:*MEMORY[0x1E695DC50]] & 1) == 0)
  {
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:@"QLUnsupportedURLKey" reason:@"QuickLook only handles NSURLThumbnailDictionaryKey and userInfo:{on OS X, NSURLThumbnailKey", 0}];
    objc_exception_throw(v21);
  }

  v22 = 0;
  v11 = [QLThumbnailAddition thumbnailsDictionaryForURL:a1 error:&v22];
  v12 = v22;
  if (a3)
  {
    v13 = v11;
    if (([v9 isEqualToString:v10] & 1) == 0)
    {
      v14 = [v13 objectForKey:*MEMORY[0x1E695DA70]];

      v13 = v14;
    }

    *a3 = v13;
  }

  if (v11)
  {
    goto LABEL_9;
  }

  if (!v12)
  {
    v20 = _log_0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = a1;
      _os_log_impl(&dword_1CA1E7000, v20, OS_LOG_TYPE_INFO, "Returning empty thumbnails dictionary for %@", buf, 0xCu);
    }

LABEL_9:
    v15 = 1;
    goto LABEL_10;
  }

  if ([v12 code] == 2 && (objc_msgSend(v12, "domain"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", *MEMORY[0x1E696A798]), v17, v18))
  {
    v19 = _log_0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v24 = v12;
      v25 = 2112;
      v26 = a1;
      _os_log_impl(&dword_1CA1E7000, v19, OS_LOG_TYPE_INFO, "Hit error %@ retrieving the thumbnails property for %@. This is expected if this is a logical URL corresponding to a sidefault.", buf, 0x16u);
    }
  }

  else
  {
    v19 = _log_0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      _QLCopyResourcePropertyForKey_cold_1();
    }
  }

  v15 = 0;
  if (a4)
  {
    *a4 = v12;
  }

LABEL_10:

  return v15;
}

BOOL _QLSetResourcePropertyForKey(uint64_t a1, void *a2, const void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = _log_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = a1;
    _os_log_impl(&dword_1CA1E7000, v8, OS_LOG_TYPE_INFO, "Setting NSURL thumbnails property for %@", buf, 0xCu);
  }

  v9 = a2;
  if (![v9 isEqualToString:*MEMORY[0x1E695DC50]])
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = @"QLUnsupportedURLKey";
    v17 = @"QuickLook only handles NSURLThumbnailsKey";
    goto LABEL_12;
  }

  if (a3)
  {
    if (*MEMORY[0x1E695E738] != a3)
    {
      v10 = CFGetTypeID(a3);
      if (v10 != CFDictionaryGetTypeID())
      {
        v15 = MEMORY[0x1E695DF30];
        v16 = @"QLThumbnailInvalidFormat";
        v17 = @"The value for the NSURL thumbnails key should be a dictionary where keys are dimensions and values are NSImage / UIImage instances";
LABEL_12:
        v18 = [v15 exceptionWithName:v16 reason:v17 userInfo:0];
        objc_exception_throw(v18);
      }
    }
  }

  v19 = 0;
  v11 = [QLThumbnailAddition setThumbnailsDictionary:a3 forURL:a1 error:&v19];
  v12 = v19;
  v13 = v12;
  if (a4)
  {
    *a4 = v12;
  }

  return v11;
}

void *__getBRStartDownloadForItemsWithOptionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudDocsLibrary();
  result = dlsym(v2, "BRStartDownloadForItemsWithOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBRStartDownloadForItemsWithOptionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBRThumbnailChangedAtURLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudDocsLibrary();
  result = dlsym(v2, "BRThumbnailChangedAtURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBRThumbnailChangedAtURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CloudDocsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CloudDocsLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_1CA205C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

id errorWithCodeAndUnderlyingError(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  if (a2)
  {
    v9 = *MEMORY[0x1E696AA08];
    v10[0] = a2;
    v4 = MEMORY[0x1E695DF20];
    v5 = a2;
    v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v3 errorWithDomain:@"QLExternalThumbnailCache" code:a1 userInfo:v6];
  }

  else
  {
    v6 = 0;
    v7 = [v3 errorWithDomain:@"QLExternalThumbnailCache" code:a1 userInfo:0];
  }

  return v7;
}

void sub_1CA2084B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVFileTypeAVCISymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVFileTypeAVCI");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVFileTypeAVCISymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

BOOL QLGetRealPath(const char *a1, _BYTE *a2)
{
  v3 = open(a1, 0x8000, 0);
  if (v3 < 0)
  {
    v6 = _log_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      QLGetRealPath_cold_2();
    }
  }

  else
  {
    v4 = v3;
    if (fcntl(v3, 50, a2) != -1)
    {
      close(v4);
      return *a2 != 0;
    }

    v7 = _log_0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      QLGetRealPath_cold_1();
    }

    close(v4);
  }

  return 0;
}

uint64_t QLTPrefersExtendedRange(uint64_t a1, uint64_t a2)
{
  if (QLTPrefersExtendedRange_onceToken != -1)
  {
    QLTPrefersExtendedRange_cold_1();
  }

  return QLTPrefersExtendedRange_supportsDeepColor;
}

uint64_t __QLTPrefersExtendedRange_block_invoke()
{
  result = MGGetBoolAnswer();
  QLTPrefersExtendedRange_supportsDeepColor = result;
  return result;
}

uint64_t _QLComputeValuesForCGContextCreationWithSizeAndScale(_DWORD *a1, _DWORD *a2, int *a3, int *a4, int *a5, void *a6, CGColorSpaceRef space, double a8, double a9, double a10)
{
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(space);
  v21 = CGColorSpaceUsesExtendedRange(space);
  v22 = v21;
  v23 = 16;
  if (NumberOfComponents != 1 || !v21)
  {
    if (CGColorSpaceIsWideGamutRGB(space))
    {
      v23 = 16;
    }

    else
    {
      v23 = 8;
    }
  }

  *a1 = vcvtpd_s64_f64(a8 * a10);
  *a2 = vcvtpd_s64_f64(a9 * a10);
  *a3 = v23;
  Type = CGColorSpaceGetType();
  v27 = (Type == 6 || Type == 10) && NumberOfComponents == 4 || NumberOfComponents == 1;
  v28 = !v27;
  if (v27)
  {
    v29 = NumberOfComponents;
  }

  else
  {
    v29 = NumberOfComponents + 1;
  }

  if (Type == 2)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  if (Type == 2)
  {
    v31 = NumberOfComponents;
  }

  else
  {
    v31 = v29;
  }

  *a4 = *a3 * v31;
  result = CGBitmapGetAlignedBytesPerRow();
  *a6 = result;
  if (v22)
  {
    v33 = 4352;
  }

  else
  {
    v33 = 0;
  }

  *a5 = v30 | v33;
  return result;
}

CGContext *QLTCreateCGContext(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4, double a5, double a6, double a7)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  if (QLTPrefersExtendedRange_onceToken != -1)
  {
    QLTPrefersExtendedRange_cold_1();
  }

  if (QLTPrefersExtendedRange_supportsDeepColor)
  {
LABEL_6:
    if (ExtendedSRGBColorSpace_onceToken != -1)
    {
      QLTCreateCGContext_cold_2();
    }

    v12 = &ExtendedSRGBColorSpace_extendedSRGBColorSpace;
  }

  else
  {
LABEL_9:
    if (StandardSRGBColorSpace_onceToken != -1)
    {
      QLTCreateCGContext_cold_3();
    }

    v12 = &StandardSRGBColorSpace_standardSRGBColorSpace;
  }

  v13 = *v12;

  return QLTCreateCGContextWithSize(v13, a3, a4, a5, a6, a7);
}

CGContext *QLTCreateCGContextWithSize(CGColorSpace *a1, uint64_t a2, size_t *a3, double a4, double a5, double a6)
{
  v7 = a2;
  v9 = a1;
  if (!a1)
  {
    if (QLTPrefersExtendedRange_onceToken != -1)
    {
      QLTPrefersExtendedRange_cold_1();
    }

    if (QLTPrefersExtendedRange_supportsDeepColor)
    {
      if (ExtendedSRGBColorSpace_onceToken != -1)
      {
        QLTCreateCGContext_cold_2();
      }

      v12 = &ExtendedSRGBColorSpace_extendedSRGBColorSpace;
    }

    else
    {
      if (StandardSRGBColorSpace_onceToken != -1)
      {
        QLTCreateCGContext_cold_3();
      }

      v12 = &StandardSRGBColorSpace_standardSRGBColorSpace;
    }

    v9 = *v12;
  }

  if (CGColorSpaceUsesITUR_2100TF(v9))
  {
    if (DisplayP3_onceToken != -1)
    {
      QLTCreateCGContextWithSize_cold_4();
    }

    v9 = DisplayP3_displayP3ColorSpace;
  }

  bitsPerComponent = 0;
  v26 = 0;
  bitmapInfo = 0;
  v23 = 0;
  _QLComputeValuesForCGContextCreationWithSizeAndScale(&v26 + 1, &v26, &bitsPerComponent + 1, &bitsPerComponent, &bitmapInfo, &v23, v9, a4, a5, a6);
  v14 = v26;
  v13 = HIDWORD(v26);
  if (SHIDWORD(v26) < 1 || v26 <= 0)
  {
    v16 = _log_0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      QLTCreateCGContextWithSize_cold_5(v13, v14, v16);
    }

    return 0;
  }

  else
  {
    v18 = v23;
    if (v7)
    {
      v19 = (*MEMORY[0x1E69E9AC8] + v23 * v26 - 1) & -*MEMORY[0x1E69E9AC8];
      *a3 = v19;
      v20 = mmap(0, v19, 3, 4097, 1627389952, 0);
    }

    else
    {
      v20 = 0;
      if (a3)
      {
        *a3 = v23 * v26;
      }
    }

    v21 = CGBitmapContextCreate(v20, v13, v14, SHIDWORD(bitsPerComponent), v18, v9, bitmapInfo);
    v17 = v21;
    if (v21)
    {
      v27.size.width = v13;
      v27.size.height = v14;
      v27.origin.x = 0.0;
      v27.origin.y = 0.0;
      CGContextClearRect(v21, v27);
    }
  }

  return v17;
}

id QLTGetDefaultCacheLocation()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v1 = [v0 objectAtIndexedSubscript:0];

  v2 = [v1 stringByAppendingPathComponent:@"com.apple.QuickLook.thumbnailcache"];

  return v2;
}

CGImage *QLCGImageRefPNGRepresentation(CGImage *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF88] data];
    v3 = [*MEMORY[0x1E6982F28] identifier];
    v4 = CGImageDestinationCreateWithData(v2, v3, 1uLL, 0);

    if (v4)
    {
      CGImageDestinationAddImage(v4, v1, 0);
      v5 = CGImageDestinationFinalize(v4);
      CFRelease(v4);
      if (v5)
      {
        v6 = v2;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v1 = v6;
  }

  return v1;
}

void QLTRunInMainThreadAsync(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    QLTRunInMainThreadAsync_cold_1();
  }

  block = v1;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void QLTRunInMainThreadSync(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    QLTRunInMainThreadSync_cold_1();
  }

  block = v1;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t QLSetContainsContentType(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    pthread_mutex_lock(&QLSetContainsContentType_lock);
    if ([v3 containsObject:v5])
    {
      v6 = 1;
    }

    else
    {
      [v3 allObjects];
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = v14 = 0u;
      v6 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v8 = *v12;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v7);
            }

            if ([v5 conformsToType:{*(*(&v11 + 1) + 8 * i), v11}])
            {
              if (([v5 isDynamic] & 1) == 0)
              {
                [v3 addObject:v5];
              }

              v6 = 1;
              goto LABEL_17;
            }
          }

          v6 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }

    pthread_mutex_unlock(&QLSetContainsContentType_lock);
  }

  return v6;
}

CGColorSpaceRef __ExtendedSRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  ExtendedSRGBColorSpace_extendedSRGBColorSpace = result;
  return result;
}

CGColorSpaceRef __StandardSRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  StandardSRGBColorSpace_standardSRGBColorSpace = result;
  return result;
}

CGColorSpaceRef __DisplayP3_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  DisplayP3_displayP3ColorSpace = result;
  return result;
}

uint64_t AVFoundationLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = AVFoundationLibraryCore_frameworkLibrary;
  v6 = AVFoundationLibraryCore_frameworkLibrary;
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E836A760;
    v8 = *off_1E836A770;
    v9 = 0;
    v4[3] = _sl_dlopen();
    AVFoundationLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1CA20A4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AVFoundationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  AVFoundationLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AVFoundationLibrary()
{
  v3 = 0;
  v0 = AVFoundationLibraryCore(&v3);
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

uint64_t UIKitLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = UIKitLibraryCore_frameworkLibrary;
  v6 = UIKitLibraryCore_frameworkLibrary;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E836A788;
    v8 = *off_1E836A798;
    v9 = 0;
    v4[3] = _sl_dlopen();
    UIKitLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1CA20A70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  UIKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t UIKitLibrary()
{
  v3 = 0;
  v0 = UIKitLibraryCore(&v3);
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

id getUIImageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIImageClass_softClass;
  v7 = getUIImageClass_softClass;
  if (!getUIImageClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getUIImageClass_block_invoke;
    v3[3] = &unk_1E8369C70;
    v3[4] = &v4;
    __getUIImageClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA20A8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIImageClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getUIImageClass_block_invoke_cold_1();
    return getUIGraphicsBeginImageContextWithOptionsSymbolLoc();
  }

  return result;
}

uint64_t getUIGraphicsBeginImageContextWithOptionsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr;
  v6 = getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr;
  if (!getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v4[3] = dlsym(v1, "UIGraphicsBeginImageContextWithOptions");
    getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1CA20AA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsBeginImageContextWithOptionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsBeginImageContextWithOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _UIGraphicsBeginImageContextWithOptions(uint64_t a1, double a2, double a3, double a4)
{
  UIGraphicsBeginImageContextWithOptionsSymbolLoc = getUIGraphicsBeginImageContextWithOptionsSymbolLoc();
  if (UIGraphicsBeginImageContextWithOptionsSymbolLoc)
  {
    v9.n128_f64[0] = a2;
    v10.n128_f64[0] = a3;
    v11.n128_f64[0] = a4;

    return UIGraphicsBeginImageContextWithOptionsSymbolLoc(a1, v9, v10, v11);
  }

  else
  {
    +[QLThumbnailAddition preFPFSDownloadThumbnailAtTaggedURL:completionHandler:];
    return getUIGraphicsGetCurrentContextSymbolLoc();
  }
}

uint64_t getUIGraphicsGetCurrentContextSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUIGraphicsGetCurrentContextSymbolLoc_ptr;
  v6 = getUIGraphicsGetCurrentContextSymbolLoc_ptr;
  if (!getUIGraphicsGetCurrentContextSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v4[3] = dlsym(v1, "UIGraphicsGetCurrentContext");
    getUIGraphicsGetCurrentContextSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1CA20ABCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsGetCurrentContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsGetCurrentContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsGetCurrentContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _UIGraphicsGetCurrentContext()
{
  CurrentContextSymbolLoc = getUIGraphicsGetCurrentContextSymbolLoc();
  if (CurrentContextSymbolLoc)
  {

    return CurrentContextSymbolLoc();
  }

  else
  {
    +[QLThumbnailAddition preFPFSDownloadThumbnailAtTaggedURL:completionHandler:];
    return getUIGraphicsEndImageContextSymbolLoc();
  }
}

uint64_t getUIGraphicsEndImageContextSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUIGraphicsEndImageContextSymbolLoc_ptr;
  v6 = getUIGraphicsEndImageContextSymbolLoc_ptr;
  if (!getUIGraphicsEndImageContextSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v4[3] = dlsym(v1, "UIGraphicsEndImageContext");
    getUIGraphicsEndImageContextSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1CA20AD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsEndImageContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsEndImageContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsEndImageContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _UIGraphicsEndImageContext()
{
  UIGraphicsEndImageContextSymbolLoc = getUIGraphicsEndImageContextSymbolLoc();
  if (UIGraphicsEndImageContextSymbolLoc)
  {

    return UIGraphicsEndImageContextSymbolLoc();
  }

  else
  {
    +[QLThumbnailAddition preFPFSDownloadThumbnailAtTaggedURL:completionHandler:];
    return getUIGraphicsPushContextSymbolLoc();
  }
}

uint64_t getUIGraphicsPushContextSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUIGraphicsPushContextSymbolLoc_ptr;
  v6 = getUIGraphicsPushContextSymbolLoc_ptr;
  if (!getUIGraphicsPushContextSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v4[3] = dlsym(v1, "UIGraphicsPushContext");
    getUIGraphicsPushContextSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1CA20AEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsPushContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsPushContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsPushContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _UIGraphicsPushContext(uint64_t a1)
{
  UIGraphicsPushContextSymbolLoc = getUIGraphicsPushContextSymbolLoc();
  if (UIGraphicsPushContextSymbolLoc)
  {

    return UIGraphicsPushContextSymbolLoc(a1);
  }

  else
  {
    +[QLThumbnailAddition preFPFSDownloadThumbnailAtTaggedURL:completionHandler:];
    return getUIGraphicsPopContextSymbolLoc();
  }
}

uint64_t getUIGraphicsPopContextSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUIGraphicsPopContextSymbolLoc_ptr;
  v6 = getUIGraphicsPopContextSymbolLoc_ptr;
  if (!getUIGraphicsPopContextSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v4[3] = dlsym(v1, "UIGraphicsPopContext");
    getUIGraphicsPopContextSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1CA20B024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsPopContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsPopContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsPopContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _UIGraphicsPopContext()
{
  UIGraphicsPopContextSymbolLoc = getUIGraphicsPopContextSymbolLoc();
  if (UIGraphicsPopContextSymbolLoc)
  {

    return UIGraphicsPopContextSymbolLoc();
  }

  else
  {
    +[QLThumbnailAddition preFPFSDownloadThumbnailAtTaggedURL:completionHandler:];
    return FileProviderLibraryCore(v2);
  }
}

uint64_t FileProviderLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = FileProviderLibraryCore_frameworkLibrary;
  v6 = FileProviderLibraryCore_frameworkLibrary;
  if (!FileProviderLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E836A7B0;
    v8 = *off_1E836A7C0;
    v9 = 0;
    v4[3] = _sl_dlopen();
    FileProviderLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1CA20B1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FileProviderLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  FileProviderLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t FileProviderLibrary()
{
  v3 = 0;
  v0 = FileProviderLibraryCore(&v3);
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

uint64_t getFPIsCloudDocsWithFPFSEnabledSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getFPIsCloudDocsWithFPFSEnabledSymbolLoc_ptr;
  v6 = getFPIsCloudDocsWithFPFSEnabledSymbolLoc_ptr;
  if (!getFPIsCloudDocsWithFPFSEnabledSymbolLoc_ptr)
  {
    v1 = FileProviderLibrary();
    v4[3] = dlsym(v1, "FPIsCloudDocsWithFPFSEnabled");
    getFPIsCloudDocsWithFPFSEnabledSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1CA20B3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getFPIsCloudDocsWithFPFSEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FileProviderLibrary();
  result = dlsym(v2, "FPIsCloudDocsWithFPFSEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFPIsCloudDocsWithFPFSEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _FPIsCloudDocsWithFPFSEnabled()
{
  FPIsCloudDocsWithFPFSEnabledSymbolLoc = getFPIsCloudDocsWithFPFSEnabledSymbolLoc();
  if (FPIsCloudDocsWithFPFSEnabledSymbolLoc)
  {

    return FPIsCloudDocsWithFPFSEnabledSymbolLoc();
  }

  else
  {
    +[QLThumbnailAddition preFPFSDownloadThumbnailAtTaggedURL:completionHandler:];
    return getFPURLMightBeInFileProviderSymbolLoc();
  }
}

uint64_t getFPURLMightBeInFileProviderSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getFPURLMightBeInFileProviderSymbolLoc_ptr;
  v6 = getFPURLMightBeInFileProviderSymbolLoc_ptr;
  if (!getFPURLMightBeInFileProviderSymbolLoc_ptr)
  {
    v1 = FileProviderLibrary();
    v4[3] = dlsym(v1, "FPURLMightBeInFileProvider");
    getFPURLMightBeInFileProviderSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1CA20B51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getFPURLMightBeInFileProviderSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FileProviderLibrary();
  result = dlsym(v2, "FPURLMightBeInFileProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFPURLMightBeInFileProviderSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

QLFileThumbnailRequest *_FPURLMightBeInFileProvider(uint64_t a1)
{
  FPURLMightBeInFileProviderSymbolLoc = getFPURLMightBeInFileProviderSymbolLoc();
  if (FPURLMightBeInFileProviderSymbolLoc)
  {

    return FPURLMightBeInFileProviderSymbolLoc(a1);
  }

  else
  {
    +[QLThumbnailAddition preFPFSDownloadThumbnailAtTaggedURL:completionHandler:];
    return __getFPSandboxingURLWrapperClass_block_invoke(v4);
  }
}

QLFileThumbnailRequest *__getFPSandboxingURLWrapperClass_block_invoke(uint64_t a1)
{
  FileProviderLibrary();
  result = objc_getClass("FPSandboxingURLWrapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFPSandboxingURLWrapperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getFPSandboxingURLWrapperClass_block_invoke_cold_1();
    return [(QLFileThumbnailRequest *)v3 initWithItem:v4 maximumSize:v5 minimumSize:v10 scale:v8 options:v9 generationData:v6, v7];
  }

  return result;
}

void sub_1CA20C358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

CGImageRef QLCreateCGImageWithData(const __CFData *a1, CGColorSpaceRef space, double a3, double a4, double a5)
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  bytesPerRow = 0;
  _QLComputeValuesForCGContextCreationWithSizeAndScale(&v16, &v15, &v14 + 1, &v14, &v13, &bytesPerRow, space, a3, a4, a5);
  if (v16 < 1 || v15 <= 0)
  {
    v8 = qword_1EDAC3C78;
    if (!qword_1EDAC3C78)
    {
      QLTInitLogging();
      v8 = qword_1EDAC3C78;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      QLCreateCGImageWithData_cold_1(&v16, &v15, v8);
    }

    return 0;
  }

  else
  {
    v9 = CGDataProviderCreateWithCFData(a1);
    v10 = CGImageCreate(v16, v15, SHIDWORD(v14), v14, bytesPerRow, space, v13, v9, 0, 0, kCGRenderingIntentDefault);
    CGDataProviderRelease(v9);
    CGColorSpaceRelease(space);
  }

  return v10;
}

CGImageRef QLCreateCGImageWithDataAndFormat(const __CFData *a1, void *a2)
{
  v3 = a2;
  v4 = CGDataProviderCreateWithCFData(a1);
  v5 = [v3 width];
  v6 = [v3 height];
  v7 = [v3 bitsPerComponent];
  v8 = [v3 bitsPerPixel];
  v9 = [v3 bytesPerRow];
  v10 = [v3 colorSpace];
  v11 = [v3 bitmapInfo];

  v12 = CGImageCreate(v5, v6, v7, v8, v9, v10, v11, v4, 0, 0, kCGRenderingIntentDefault);
  CGDataProviderRelease(v4);
  return v12;
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

void sub_1CA20EAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA20EFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFPItemClass_block_invoke_0(uint64_t a1)
{
  FileProviderLibrary();
  result = objc_getClass("FPItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFPItemClass_block_invoke_cold_1();
  }

  getFPItemClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ThumbnailExtension.configuration.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for ThumbnailExtensionConfiguration(0, a1, a2, a4);
  v8 = objc_allocWithZone(type metadata accessor for ThumbnailExtensionConfiguration(0, *(v6 + 80), *(v6 + 88), v7));
  v9 = MEMORY[0x1E69E7D40];
  v10 = *v8;
  v11 = *MEMORY[0x1E69E7D40];
  *&v8[*((*MEMORY[0x1E69E7D40] & *v8) + 0x60)] = 0;
  v12 = *((v11 & v10) + 0x50);
  (*(*(v12 - 8) + 16))(&v8[*((*v9 & *v8) + 0x68)], v4, v12);
  v14 = type metadata accessor for ThumbnailExtensionConfiguration(0, v12, *((v11 & v10) + 0x58), v13);
  v21.receiver = v8;
  v21.super_class = v14;
  v20 = objc_msgSendSuper2(&v21, sel_init);
  v15 = objc_allocWithZone(QLThumbnailConnectionHandler);
  v16 = v20;
  v17 = [v15 initWithPrincipalObject_];

  swift_unknownObjectRelease();
  v18 = *((*v9 & *v16) + 0x60);
  v19 = *(v16 + v18);
  *(v16 + v18) = v17;

  *a3 = v16;
}

uint64_t static ThumbnailProviderBuilder.buildBlock(_:)@<X0>(uint64_t *a1@<X8>)
{

  return sub_1CA20F628(v2, a1);
}

uint64_t sub_1CA20F628@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  v4 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 0;
    v7 = result + 32;
    while (v6 < *(v2 + 16))
    {
      ++v6;
      v7 += 24;

      result = sub_1CA214520(v8);
      if (v5 == v6)
      {
        v4 = v10;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v9 = sub_1CA2160AC(v4);

    result = swift_allocObject();
    *(result + 16) = v2;
    *a2 = v9;
    a2[1] = &unk_1CA2202B8;
    a2[2] = result;
  }

  return result;
}

void sub_1CA20F734(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = [a1 item];
  [a1 maximumSize];
  v5 = v4;
  v7 = v6;
  [a1 minimumSize];
  v9 = v8;
  v11 = v10;
  [a1 scale];
  v13 = v12;
  v14 = [a1 options];
  type metadata accessor for QLFileThumbnailRequestOptions(0);
  sub_1CA217018(&qword_1EC43DEA8, type metadata accessor for QLFileThumbnailRequestOptions, &unk_1CA220690);
  v15 = sub_1CA21BB6C();

  if (*(v15 + 16) && (v16 = sub_1CA215A74(@"WantsLowQuality"), (v17 & 1) != 0) && (sub_1CA217060(*(v15 + 56) + 32 * v16, v29), swift_dynamicCast()))
  {
    v18 = v28;
    if (!*(v15 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v18 = 0;
    if (!*(v15 + 16))
    {
      goto LABEL_11;
    }
  }

  v19 = sub_1CA215A74(@"ThirdPartyVideoDecodersAllowed");
  if (v20)
  {
    sub_1CA217060(*(v15 + 56) + 32 * v19, v29);
    if (swift_dynamicCast())
    {
      v21 = v28;
      if (!*(v15 + 16))
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }
  }

LABEL_11:
  v21 = 0;
  if (!*(v15 + 16))
  {
    goto LABEL_16;
  }

LABEL_12:
  v22 = sub_1CA215A74(@"InterpolationQuality");
  if (v23)
  {
    sub_1CA217060(*(v15 + 56) + 32 * v22, v29);
    if (swift_dynamicCast())
    {
      v24 = v28;
      if (!*(v15 + 16))
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }
  }

LABEL_16:
  v24 = 0;
  if (!*(v15 + 16))
  {
LABEL_20:

    goto LABEL_21;
  }

LABEL_17:
  v25 = sub_1CA215A74(@"IconFlavor");
  if ((v26 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_1CA217060(*(v15 + 56) + 32 * v25, v29);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v27 = 0;
    goto LABEL_22;
  }

  v27 = v28;
LABEL_22:
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v13;
  *(a2 + 40) = v18;
  *(a2 + 44) = v24;
  *(a2 + 48) = v27;
  *(a2 + 52) = (v27 >> 8) & 7;
  *(a2 + 56) = v21;
}

__n128 ThumbnailRequest.options.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 32);
  result = *(v1 + 41);
  *(a1 + 41) = result;
  return result;
}

uint64_t ThumbnailRequest.contentType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CA21BB1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E3B8, &qword_1CA21FF10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  v10 = [*(v1 + 64) contentType];
  if (v10)
  {
    v11 = v10;
    sub_1CA21BAEC();

    v12 = *(v4 + 32);
    v12(v9, v6, v3);
    (*(v4 + 56))(v9, 0, 1, v3);
    return (v12)(a1, v9, v3);
  }

  else
  {
    (*(v4 + 56))(v9, 1, 1, v3);
    sub_1CA21BAFC();
    result = (*(v4 + 48))(v9, 1, v3);
    if (result != 1)
    {
      return sub_1CA216E20(v9, &qword_1EC43E3B8, &qword_1CA21FF10);
    }
  }

  return result;
}

uint64_t ThumbnailRequest.fileURL.getter(uint64_t a1)
{
  v2[2] = a1;
  sub_1CA21B9DC();
  v2[3] = swift_task_alloc();
  v3 = sub_1CA21B9EC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *(v1 + 64);
  v2[6] = v4;
  v2[7] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CA20FD1C, 0, 0);
}

uint64_t sub_1CA20FD1C()
{
  v1 = [*(v0 + 56) fileURL];
  if (v1)
  {
    v2 = v1;
    sub_1CA21BA8C();
  }

  else
  {
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v0 + 32);
    sub_1CA21B9CC();
    sub_1CA216248(MEMORY[0x1E69E7CC0]);
    sub_1CA217018(&qword_1EC43E3C0, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CA21BA5C();
    sub_1CA21B9BC();
    (*(v5 + 8))(v4, v6);
    swift_willThrow();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t ThumbnailRequest.data.getter()
{
  sub_1CA21B9DC();
  v1[2] = swift_task_alloc();
  v2 = sub_1CA21B9EC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v3 = swift_task_alloc();
  v4 = *(v0 + 64);
  v1[5] = v3;
  v1[6] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1CA20FF6C, 0, 0);
}

uint64_t sub_1CA20FF6C()
{
  v1 = [*(v0 + 48) fileData];
  v2 = *(v0 + 40);
  if (v1)
  {
    v3 = v1;
    v4 = sub_1CA21BAAC();
    v6 = v5;

    v7 = *(v0 + 8);

    return v7(v4, v6);
  }

  else
  {
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);
    sub_1CA21B9CC();
    sub_1CA216248(MEMORY[0x1E69E7CC0]);
    sub_1CA217018(&qword_1EC43E3C0, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CA21BA5C();
    sub_1CA21B9BC();
    (*(v10 + 8))(v2, v9);
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

BOOL ThumbnailRequest.isFileBacked.getter()
{
  v1 = [*(v0 + 64) data];
  if (v1)
  {
    v2 = sub_1CA21BAAC();
    v4 = v3;

    sub_1CA21638C(v2, v4);
  }

  return v1 == 0;
}

uint64_t ThumbnailReply.extensionBadge.getter()
{
  v1 = [*v0 extensionBadge];
  v2 = sub_1CA21BBDC();

  return v2;
}

void sub_1CA2101D8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 extensionBadge];
  v4 = sub_1CA21BBDC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1CA210230(uint64_t *a1, void **a2)
{
  v2 = *a2;

  v3 = sub_1CA21BBAC();

  [v2 setExtensionBadge_];
}

void ThumbnailReply.extensionBadge.setter(uint64_t a1, unint64_t a2)
{
  v3 = *v2;
  v4 = sub_1CA21BBAC();

  [v3 setExtensionBadge_];
}

void (*ThumbnailReply.extensionBadge.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[2] = *v1;
  v4 = [v3 extensionBadge];
  v5 = sub_1CA21BBDC();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  return sub_1CA2103B0;
}

void sub_1CA2103B0(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if (a2)
  {

    v3 = sub_1CA21BBAC();

    [v2 setExtensionBadge_];
  }

  else
  {
    v3 = sub_1CA21BBAC();

    [v2 setExtensionBadge_];
  }
}

id ThumbnailReply.metadata.getter()
{
  v1 = [*v0 metadata];

  return v1;
}

unint64_t static ThumbnailReply.fileURL(_:contentType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E3B8, &qword_1CA21FF10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  sub_1CA217154(a1, &v13 - v5, &qword_1EC43E3B8, &qword_1CA21FF10);
  v7 = sub_1CA21BA7C();
  v8 = sub_1CA21BB1C();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1CA21BADC();
    (*(v9 + 8))(v6, v8);
  }

  v11 = [objc_opt_self() replyWithFileURL:v7 contentType:v10];

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0x7FFFFFFFLL;
  *(a2 + 28) = 1;
  result = sub_1CA216248(MEMORY[0x1E69E7CC0]);
  *(a2 + 32) = result;
  *a2 = v11;
  return result;
}

unint64_t static ThumbnailReply.cgRenderer(size:renderer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v15[4] = sub_1CA2163E0;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1CA2107A0;
  v15[3] = &block_descriptor;
  v11 = _Block_copy(v15);
  v12 = objc_opt_self();

  v13 = [v12 replyWithContextSize:v11 drawingBlock:{a4, a5}];
  _Block_release(v11);

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 20) = 0x7FFFFFFFLL;
  *(a3 + 28) = 1;
  result = sub_1CA216248(MEMORY[0x1E69E7CC0]);
  *(a3 + 32) = result;
  *a3 = v13;
  return result;
}

uint64_t sub_1CA2107A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

unint64_t static ThumbnailReply.currentContextRenderer(size:renderer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v15[4] = sub_1CA216448;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1CA210948;
  v15[3] = &block_descriptor_8;
  v11 = _Block_copy(v15);
  v12 = objc_opt_self();

  v13 = [v12 replyWithContextSize:v11 currentContextDrawingBlock:{a4, a5}];
  _Block_release(v11);

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 20) = 0x7FFFFFFFLL;
  *(a3 + 28) = 1;
  result = sub_1CA216248(MEMORY[0x1E69E7CC0]);
  *(a3 + 32) = result;
  *a3 = v13;
  return result;
}

uint64_t sub_1CA210948(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

unint64_t static ThumbnailReply.data(_:contentType:attachments:)@<X0>(void *a1@<X3>, uint64_t a2@<X8>)
{
  v4 = sub_1CA21BA9C();
  v5 = sub_1CA21BADC();
  v6 = [objc_opt_self() replyWithData:v4 contentType:v5];

  v7 = [v6 item];
  if (v7)
  {
    v8 = v7;
    if (a1)
    {
      sub_1CA216498();
      a1 = sub_1CA21BB5C();
    }

    [v8 setAttachments_];
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0x7FFFFFFFLL;
  *(a2 + 28) = 1;
  result = sub_1CA216248(MEMORY[0x1E69E7CC0]);
  *(a2 + 32) = result;
  *a2 = v6;
  return result;
}

void static ThumbnailReply.cgImage(_:scale:isLowQuality:)(CGImage *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = CGImageGetWidth(a1) / a4;
  v9 = CGImageGetHeight(a1) / a4;
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a1;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  v11 = a1;
  static ThumbnailReply.cgRenderer(size:renderer:)(sub_1CA2164E4, v10, a3, v8, v9);

  v12 = CGImageGetColorSpace(v11);

  *(a3 + 8) = v12;
  *(a3 + 16) = a2;
}

uint64_t static ThumbnailReply.images(_:properties:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, unint64_t a3@<X0>)
{
  sub_1CA210C3C(a3);
  v5 = sub_1CA21BC1C();

  v6 = [objc_opt_self() replyWithImages_];

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0x7FFFFFFFLL;
  *(a2 + 28) = 1;
  sub_1CA216248(MEMORY[0x1E69E7CC0]);
  *a2 = v6;

  *(a2 + 32) = a1;
  return result;
}

char *sub_1CA210C3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1CA21BCEC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1CA215C90(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1CCA9BDE0](i, a1);
        type metadata accessor for CGImage(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1CA215C90((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1CA217140(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGImage(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1CA215C90((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1CA217140(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t static ThumbnailReply.imageRenderer(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v11[4] = sub_1CA216550;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1CA210F34;
  v11[3] = &block_descriptor_17;
  v7 = _Block_copy(v11);
  v8 = objc_opt_self();

  v9 = [v8 replyWithImageRenderer_];
  _Block_release(v7);

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 20) = 0x7FFFFFFFLL;
  *(a3 + 28) = 1;
  result = sub_1CA216248(MEMORY[0x1E69E7CC0]);
  *(a3 + 32) = result;
  *a3 = v9;
  return result;
}

uint64_t sub_1CA210F34(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1CA2170F4, v4);
}

void *ThumbnailReply.colorSpace.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t ThumbnailReply.additionalProperties.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1CA211154()
{
  v0 = sub_1CA21BB4C();
  __swift_allocate_value_buffer(v0, qword_1EC43EC78);
  __swift_project_value_buffer(v0, qword_1EC43EC78);
  return sub_1CA21BB3C();
}

void *ThumbnailProvider.init<A>(for:generator:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = sub_1CA21BABC();
  v11 = sub_1CA2160AC(v10);

  *a5 = v11;
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a1;
  result[5] = a2;
  a5[1] = &unk_1CA21FF30;
  a5[2] = result;
  return result;
}

uint64_t sub_1CA211270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 168) = a5;
  *(v6 + 176) = a6;
  *(v6 + 152) = a3;
  *(v6 + 160) = a4;
  *(v6 + 144) = a1;
  sub_1CA21B9DC();
  *(v6 + 184) = swift_task_alloc();
  v9 = sub_1CA21B9EC();
  *(v6 + 192) = v9;
  *(v6 + 200) = *(v9 - 8);
  *(v6 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E3B8, &qword_1CA21FF10);
  *(v6 + 216) = swift_task_alloc();
  v10 = sub_1CA21BB1C();
  *(v6 + 224) = v10;
  *(v6 + 232) = *(v10 - 8);
  *(v6 + 240) = swift_task_alloc();
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = *(a5 - 8);
  v11 = swift_task_alloc();
  v12 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v12;
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 57) = *(a2 + 41);
  v13 = *(a2 + 64);
  *(v6 + 264) = v11;
  *(v6 + 272) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1CA211480, 0, 0);
}

uint64_t sub_1CA211480()
{
  v1 = [*(v0 + 272) fileData];
  if (v1)
  {
    v2 = *(v0 + 272);
    v3 = v1;
    v4 = sub_1CA21BAAC();
    v6 = v5;

    v7 = [v2 contentType];
    v8 = *(v0 + 248);
    if (v7)
    {
      v10 = *(v0 + 232);
      v9 = *(v0 + 240);
      v12 = *(v0 + 216);
      v11 = *(v0 + 224);
      v13 = v7;
      sub_1CA21BAEC();

      v14 = *(v10 + 32);
      v14(v12, v9, v11);
      (*(v10 + 56))(v12, 0, 1, v11);
      v14(v8, v12, v11);
    }

    else
    {
      v20 = *(v0 + 224);
      v21 = *(v0 + 232);
      v22 = *(v0 + 216);
      (*(v21 + 56))(v22, 1, 1, v20);
      sub_1CA21BAFC();
      if ((*(v21 + 48))(v22, 1, v20) != 1)
      {
        sub_1CA216E20(*(v0 + 216), &qword_1EC43E3B8, &qword_1CA21FF10);
      }
    }

    v23 = swift_task_alloc();
    *(v0 + 280) = v23;
    *v23 = v0;
    v23[1] = sub_1CA21179C;
    v24 = *(v0 + 264);
    v25 = *(v0 + 248);

    return MEMORY[0x1EEDBF580](v24, v4, v6, v25);
  }

  else
  {
    v16 = *(v0 + 200);
    v15 = *(v0 + 208);
    v17 = *(v0 + 192);
    sub_1CA21B9CC();
    sub_1CA216248(MEMORY[0x1E69E7CC0]);
    sub_1CA217018(&qword_1EC43E3C0, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CA21BA5C();
    sub_1CA21B9BC();
    (*(v16 + 8))(v15, v17);
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1CA21179C()
{
  v2 = *v1;
  *(v2 + 288) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1CA211B6C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 32);
    *(v2 + 80) = *(v2 + 16);
    *(v2 + 96) = v4;
    *(v2 + 112) = *(v2 + 48);
    *(v2 + 121) = *(v2 + 57);
    v9 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v2 + 296) = v5;
    *v5 = v2;
    v5[1] = sub_1CA211994;
    v6 = *(v2 + 264);
    v7 = *(v2 + 144);

    return v9(v7, v6, v2 + 80);
  }
}

uint64_t sub_1CA211994()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1CA211C14;
  }

  else
  {
    v2 = sub_1CA211AA8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CA211AA8()
{
  (*(v0[32] + 8))(v0[33], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1CA211B6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CA211C14()
{
  (*(v0[32] + 8))(v0[33], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t ThumbnailProvider.init(contentType:generator:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E3D0, &qword_1CA21FF38);
  v8 = sub_1CA21BB1C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1CA21FF00;
  (*(v9 + 16))(v11 + v10, a1, v8);
  v12 = sub_1CA2160AC(v11);
  swift_setDeallocating();
  v13 = *(v9 + 8);
  v13(v11 + v10, v8);
  swift_deallocClassInstance();
  v13(a1, v8);
  *a4 = v12;
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  a4[1] = &unk_1CA21FF48;
  a4[2] = result;
  return result;
}

uint64_t sub_1CA211E54(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 80) = *(a2 + 64);
  v5 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v5;
  v6 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v3 + 88) = v7;
  *v7 = v3;
  v7[1] = sub_1CA211F68;

  return v9(a1, v3 + 16);
}

uint64_t sub_1CA211F68()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1CA21209C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1CA2120B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 168) = a1;
  *(v3 + 176) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E3B8, &qword_1CA21FF10);
  *(v3 + 184) = swift_task_alloc();
  v5 = sub_1CA21BB1C();
  *(v3 + 192) = v5;
  *(v3 + 200) = *(v5 - 8);
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *(a2 + 16);
  *(v3 + 88) = *a2;
  *(v3 + 104) = v7;
  v8 = *(a2 + 48);
  *(v3 + 120) = *(a2 + 32);
  *(v3 + 136) = v8;
  v9 = *(a2 + 64);
  *(v3 + 224) = v6;
  *(v3 + 232) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1CA2121E4, 0, 0);
}

void sub_1CA2121E4()
{
  v1 = v0[22];
  v35 = *(v1 + 16);
  if (v35)
  {
    v2 = 0;
    v3 = v1 + 32;
    v4 = v0[25];
    v43 = v4;
    v39 = (v4 + 32);
    v42 = (v4 + 56);
    v36 = v3;
    v37 = (v4 + 48);
    v41 = (v4 + 8);
LABEL_4:
    v5 = (v36 + 24 * v2);
    v6 = *v5;
    v0[30] = *v5;
    v34 = v5[1];
    v0[31] = v5[2];
    v38 = v2 + 1;
    v40 = v6 + 56;
    v7 = -1 << *(v6 + 32);
    if (-v7 < 64)
    {
      v8 = ~(-1 << -v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v6 + 56);
    v10 = (63 - v7) >> 6;
    v45 = v6;
    swift_bridgeObjectRetain_n();

    v11 = 0;
    do
    {
      if (!v9)
      {
        v0 = v44;
        while (1)
        {
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return;
          }

          if (v22 >= v10)
          {
            break;
          }

          v9 = *(v40 + 8 * v22);
          ++v11;
          if (v9)
          {
            v11 = v22;
            goto LABEL_17;
          }
        }

        swift_bridgeObjectRelease_n();

        v2 = v38;
        if (v38 == v35)
        {
          goto LABEL_20;
        }

        goto LABEL_4;
      }

      v0 = v44;
LABEL_17:
      v23 = v0[29];
      (*(v43 + 16))(v0[28], *(v45 + 48) + *(v43 + 72) * (__clz(__rbit64(v9)) | (v11 << 6)), v0[24]);
      v24 = [v23 contentType];
      v25 = v0[27];
      if (v24)
      {
        v12 = v0[26];
        v14 = v0[23];
        v13 = v0[24];
        v15 = v24;
        sub_1CA21BAEC();

        v16 = *v39;
        (*v39)(v14, v12, v13);
        (*v42)(v14, 0, 1, v13);
        v16(v25, v14, v13);
      }

      else
      {
        v27 = v0[23];
        v26 = v0[24];
        (*v42)(v27, 1, 1, v26);
        sub_1CA21BAFC();
        if ((*v37)(v27, 1, v26) != 1)
        {
          sub_1CA216E20(v0[23], &qword_1EC43E3B8, &qword_1CA21FF10);
        }
      }

      v9 &= v9 - 1;
      v17 = v0[27];
      v18 = v0[28];
      v19 = v0[24];
      v20 = sub_1CA21BB0C();
      v21 = *v41;
      (*v41)(v17, v19);
      v21(v18, v19);
    }

    while ((v20 & 1) == 0);
    v29 = *(v44 + 232);

    v30 = *(v44 + 136);
    *(v44 + 48) = *(v44 + 120);
    *(v44 + 64) = v30;
    v31 = *(v44 + 104);
    *(v44 + 16) = *(v44 + 88);
    *(v44 + 32) = v31;
    *(v44 + 80) = v29;
    v46 = (v34 + *v34);
    v32 = swift_task_alloc();
    *(v44 + 256) = v32;
    *v32 = v44;
    v32[1] = sub_1CA2126E0;
    v33 = *(v44 + 168);

    v46(v33, v44 + 16);
  }

  else
  {
LABEL_20:
    type metadata accessor for QLThumbnailError(0);
    v0[20] = 0;
    sub_1CA216248(MEMORY[0x1E69E7CC0]);
    sub_1CA217018(&qword_1EC43E438, type metadata accessor for QLThumbnailError, &unk_1CA220580);
    sub_1CA21BA5C();
    swift_willThrow();

    v28 = v0[1];

    v28();
  }
}

uint64_t sub_1CA2126E0()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1CA21289C;
  }

  else
  {
    v2 = sub_1CA2127F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CA2127F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CA21289C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1CA212938(uint64_t a1)
{
  result = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  if (result)
  {
    return [result shouldAcceptXPCConnection_];
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA21298C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E408, &qword_1CA220258);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_1CA21BC6C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1CA21BC4C();
  v11 = a1;
  v12 = v3;

  v13 = sub_1CA21BC3C();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v11;
  v14[5] = v12;
  v14[6] = a2;
  v14[7] = a3;
  sub_1CA2132B8(0, 0, v9, &unk_1CA220268, v14);
}

uint64_t sub_1CA212AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7[30] = a6;
  v7[31] = a7;
  v7[28] = a4;
  v7[29] = a5;
  v7[32] = *MEMORY[0x1E69E7D40] & *a5;
  sub_1CA21BC4C();
  v7[33] = sub_1CA21BC3C();
  v9 = sub_1CA21BC2C();
  v7[34] = v9;
  v7[35] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1CA212BB4, v9, v8);
}

uint64_t sub_1CA212BB4()
{
  v1 = *(v0 + 256);
  sub_1CA20F734(*(v0 + 224), v0 + 16);
  (*(*(v1 + 88) + 16))(*(v1 + 80));
  v2 = *(v0 + 32);
  *(v0 + 88) = *(v0 + 16);
  v3 = *(v0 + 48);
  *(v0 + 136) = *(v0 + 64);
  *(v0 + 120) = v3;
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  *(v0 + 288) = *(v0 + 200);
  *(v0 + 296) = v5;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 104) = v2;
  v8 = (v4 + *v4);
  v6 = swift_task_alloc();
  *(v0 + 304) = v6;
  *v6 = v0;
  v6[1] = sub_1CA212D2C;

  return v8(v0 + 160, v0 + 88);
}

uint64_t sub_1CA212D2C()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1CA21304C;
  }

  else
  {
    v2 = sub_1CA212E40;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CA212E40()
{

  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return MEMORY[0x1EEE6DFA0](sub_1CA212EAC, v1, v2);
}

uint64_t sub_1CA212EAC()
{

  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 180);
  v5 = *(v0 + 188);
  if (v4 != 0x7FFFFFFF)
  {
    [v2 setIconFlavor_];
    if (!v1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = v2;
  if (v1)
  {
LABEL_5:
    [v2 setColorSpace_];
  }

LABEL_6:
  v7 = *(v0 + 240);
  [v2 setIsLowQuality_];
  [v2 setInlinePreviewMode_];
  v8 = [v2 metadata];
  v9 = sub_1CA21BB5C();
  [v8 setAdditionalProperties_];

  v10 = v2;
  v7(v2, 0);

  sub_1CA216F38(v0 + 16);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1CA21304C()
{

  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return MEMORY[0x1EEE6DFA0](sub_1CA2130B8, v1, v2);
}

uint64_t sub_1CA2130B8()
{

  sub_1CA216F38((v0 + 2));
  if (qword_1EC43E660 != -1)
  {
    swift_once();
  }

  v1 = v0[39];
  v2 = v0[28];
  v3 = sub_1CA21BB4C();
  __swift_project_value_buffer(v3, qword_1EC43EC78);
  v4 = v2;
  v5 = v1;
  v6 = sub_1CA21BB2C();
  v7 = sub_1CA21BC9C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[39];
    v9 = v0[28];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2112;
    v12 = v9;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_1CA1E7000, v6, v7, "Generation error for request %@ : %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E410, &qword_1CA220288);
    swift_arrayDestroy();
    MEMORY[0x1CCA9CD40](v11, -1, -1);
    MEMORY[0x1CCA9CD40](v10, -1, -1);
  }

  v15 = v0[39];
  v16 = v0[30];

  v17 = v15;
  v16(0, v15);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1CA2132B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E408, &qword_1CA220258);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1CA217154(a3, v25 - v10, &qword_1EC43E408, &qword_1CA220258);
  v12 = sub_1CA21BC6C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1CA216E20(v11, &qword_1EC43E408, &qword_1CA220258);
  }

  else
  {
    sub_1CA21BC5C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1CA21BC2C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1CA21BBEC() + 32;
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

      sub_1CA216E20(a3, &qword_1EC43E408, &qword_1CA220258);

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

  sub_1CA216E20(a3, &qword_1EC43E408, &qword_1CA220258);
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

uint64_t sub_1CA2135B8(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = a1;
  sub_1CA21298C(v8, sub_1CA2170EC, v7);
}

void sub_1CA213658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1CA21BA6C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_1CA2136D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ThumbnailExtensionConfiguration(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1CA213748(uint64_t *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];

  v5 = *(*(*((v4 & v3) + 0x50) - 8) + 8);
  v6 = a1 + *((*v2 & *a1) + 0x68);

  return v5(v6);
}

uint64_t sub_1CA21382C(uint64_t a1, id *a2)
{
  result = sub_1CA21BBBC();
  *a2 = 0;
  return result;
}

uint64_t sub_1CA2138A4(uint64_t a1, id *a2)
{
  v3 = sub_1CA21BBCC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1CA213924@<X0>(uint64_t *a1@<X8>)
{
  sub_1CA21BBDC();
  v2 = sub_1CA21BBAC();

  *a1 = v2;
  return result;
}

uint64_t sub_1CA213968()
{
  v0 = sub_1CA21BBDC();
  v1 = MEMORY[0x1CCA9BD10](v0);

  return v1;
}

uint64_t sub_1CA2139A4(uint64_t a1)
{
  sub_1CA21BBDC();
  sub_1CA21BBFC();
}

uint64_t sub_1CA2139F8(uint64_t a1)
{
  sub_1CA21BBDC();
  sub_1CA21BD7C();
  sub_1CA21BBFC();
  v1 = sub_1CA21BD8C();

  return v1;
}

uint64_t sub_1CA213A6C(uint64_t a1)
{
  v2 = sub_1CA217018(&qword_1EC43E468, type metadata accessor for QLThumbnailError, &unk_1CA22053C);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CA213AD8(uint64_t a1)
{
  v2 = sub_1CA217018(&qword_1EC43E468, type metadata accessor for QLThumbnailError, &unk_1CA22053C);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1CA213B48(uint64_t a1)
{
  v2 = sub_1CA217018(&qword_1EC43E438, type metadata accessor for QLThumbnailError, &unk_1CA220580);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1CA213BBC(void *a1, uint64_t *a2)
{
  v2 = sub_1CA21BBDC();
  v4 = v3;
  if (v2 == sub_1CA21BBDC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1CA21BD2C();
  }

  return v7 & 1;
}

uint64_t sub_1CA213C54(uint64_t a1)
{
  v2 = sub_1CA217018(&qword_1EC43E438, type metadata accessor for QLThumbnailError, &unk_1CA220580);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1CA213CC0(uint64_t a1)
{
  v2 = sub_1CA217018(&qword_1EC43E438, type metadata accessor for QLThumbnailError, &unk_1CA220580);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1CA213D2C(void *a1, uint64_t a2)
{
  v4 = sub_1CA217018(&qword_1EC43E438, type metadata accessor for QLThumbnailError, &unk_1CA220580);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1CA213DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA217018(&qword_1EC43E438, type metadata accessor for QLThumbnailError, &unk_1CA220580);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1CA213E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CA21BD7C();
  sub_1CA21BB8C();
  return sub_1CA21BD8C();
}

void *sub_1CA213EBC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1CA213ED8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1CA21BBAC();

  *a2 = v3;
  return result;
}

uint64_t sub_1CA213F20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA21BBDC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CA213F4C(uint64_t a1)
{
  v2 = sub_1CA217018(&qword_1EC43DEA8, type metadata accessor for QLFileThumbnailRequestOptions, &unk_1CA220690);
  v3 = sub_1CA217018(&qword_1EC43E4A0, type metadata accessor for QLFileThumbnailRequestOptions, &unk_1CA2203B4);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA214008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA217018(&qword_1EC43E438, type metadata accessor for QLThumbnailError, &unk_1CA220580);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

unint64_t sub_1CA2140A0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1CA21BD2C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1CA214158(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CA214250;

  return v6(a1);
}

uint64_t sub_1CA214250()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_1CA214348(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E3D0, &qword_1CA21FF38);
  v10 = *(sub_1CA21BB1C() - 8);
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
  v15 = *(sub_1CA21BB1C() - 8);
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

uint64_t sub_1CA214520(uint64_t a1)
{
  v77 = sub_1CA21BB1C();
  v4 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E3B8, &qword_1CA21FF10);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v59 - v9;
  result = MEMORY[0x1EEE9AC00](v8);
  v14 = &v59 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v76 = v12;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v10;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_1CA214348(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_1CA215DC0(&v79, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v26 = *(v16 + 2);
    v27 = __OFADD__(v26, result);
    v28 = v26 + result;
    if (v27)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v28;
  }

  if (result != v23)
  {
    result = sub_1CA217280(v79);
LABEL_14:
    *v1 = v16;
    return result;
  }

LABEL_17:
  v74 = *(v16 + 2);
  v25 = v80;
  v65 = v79;
  v28 = v82;
  v24 = &v84;
  v60 = v81;
  v29 = v83;
  v63 = v80;
  if (v83)
  {
    v30 = v82;
LABEL_27:
    v72 = (v29 - 1) & v29;
    v34 = v77;
    (*(v2 + 16))(v14, *(v65 + 48) + (__clz(__rbit64(v29)) | (v30 << 6)) * v17, v77);
    v67 = *(v2 + 56);
    v67(v14, 0, 1, v34);
    v33 = v30;
    while (1)
    {
      v35 = v75;
      sub_1CA217154(v14, v75, &qword_1EC43E3B8, &qword_1CA21FF10);
      v36 = *(v2 + 48);
      v2 += 48;
      v71 = v36;
      if (v36(v35, 1, v34) == 1)
      {
        break;
      }

      v38 = (v4 + 32);
      v62 = (v60 + 64) >> 6;
      v66 = v4 + 56;
      v64 = (v4 + 16);
      v61 = (v4 + 8);
      v37 = v75;
      v73 = v38;
      while (1)
      {
        sub_1CA216E20(v37, &qword_1EC43E3B8, &qword_1CA21FF10);
        v39 = *(v16 + 3);
        v40 = v39 >> 1;
        if ((v39 >> 1) < v74 + 1)
        {
          v16 = sub_1CA214348((v39 > 1), v74 + 1, 1, v16);
          v40 = *(v16 + 3) >> 1;
        }

        v41 = v76;
        sub_1CA217154(v14, v76, &qword_1EC43E3B8, &qword_1CA21FF10);
        if (v71(v41, 1, v77) != 1)
        {
          break;
        }

        v42 = v33;
        v43 = v76;
        v4 = v74;
LABEL_38:
        v33 = v42;
        sub_1CA216E20(v43, &qword_1EC43E3B8, &qword_1CA21FF10);
        v74 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v37 = v75;
        sub_1CA217154(v14, v75, &qword_1EC43E3B8, &qword_1CA21FF10);
        if (v71(v37, 1, v77) == 1)
        {
          goto LABEL_30;
        }
      }

      v69 = &v16[v18];
      v4 = v74;
      v44 = *v73;
      if (v74 <= v40)
      {
        v45 = v40;
      }

      else
      {
        v45 = v74;
      }

      v70 = v45;
      v43 = v76;
      v46 = v77;
      v47 = v78;
      v68 = v44;
      while (1)
      {
        v51 = v47;
        v52 = v43;
        v53 = v46;
        v54 = v44;
        v44(v51, v52, v46);
        if (v4 == v70)
        {
          (*v61)(v78, v53);
          v4 = v70;
          v74 = v70;
          goto LABEL_33;
        }

        sub_1CA216E20(v14, &qword_1EC43E3B8, &qword_1CA21FF10);
        v74 = v4;
        v54(&v69[v4 * v17], v78, v53);
        v55 = v72;
        if (!v72)
        {
          break;
        }

        v56 = v33;
LABEL_55:
        v72 = (v55 - 1) & v55;
        v49 = v77;
        (*v64)(v14, *(v65 + 48) + (__clz(__rbit64(v55)) | (v56 << 6)) * v17, v77);
        v48 = 0;
        v58 = v56;
LABEL_44:
        v4 = v74 + 1;
        v67(v14, v48, 1, v49);
        v43 = v76;
        sub_1CA217154(v14, v76, &qword_1EC43E3B8, &qword_1CA21FF10);
        v50 = v71(v43, 1, v49);
        v46 = v49;
        v33 = v58;
        v42 = v58;
        v47 = v78;
        v44 = v68;
        if (v50 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v62 <= v33 + 1)
      {
        v57 = v33 + 1;
      }

      else
      {
        v57 = v62;
      }

      v58 = v57 - 1;
      while (1)
      {
        v56 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v56 >= v62)
        {
          v72 = 0;
          v48 = 1;
          v49 = v77;
          goto LABEL_44;
        }

        v55 = *(v63 + 8 * v56);
        ++v33;
        if (v55)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v34 = v77;
      v67 = *(v2 + 56);
      v67(v14, 1, 1, v77);
      v72 = 0;
    }

    v37 = v75;
LABEL_30:
    sub_1CA216E20(v14, &qword_1EC43E3B8, &qword_1CA21FF10);
    sub_1CA217280(v65);
    result = sub_1CA216E20(v37, &qword_1EC43E3B8, &qword_1CA21FF10);
    goto LABEL_14;
  }

LABEL_20:
  v31 = (*(v24 - 32) + 64) >> 6;
  if (v31 <= v28 + 1)
  {
    v32 = v28 + 1;
  }

  else
  {
    v32 = v31;
  }

  v33 = v32 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v31)
    {
      goto LABEL_57;
    }

    v29 = *(v25 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA214C40(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1CA21BB1C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1CA217018(&qword_1EC43DEB8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
  v33 = a2;
  v11 = sub_1CA21BB7C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1CA217018(&qword_1EC43DEB0, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
      v21 = sub_1CA21BB9C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1CA21527C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1CA214F20(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1CA21BB1C();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E418, &qword_1CA220290);
  result = sub_1CA21BCCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1CA217018(&qword_1EC43DEB8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
      result = sub_1CA21BB7C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1CA21527C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1CA21BB1C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1CA214F20(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1CA215520();
      goto LABEL_12;
    }

    sub_1CA215758(v10 + 1);
  }

  v12 = *v3;
  sub_1CA217018(&qword_1EC43DEB8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
  v13 = sub_1CA21BB7C();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1CA217018(&qword_1EC43DEB0, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
      v21 = sub_1CA21BB9C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1CA21BD3C();
  __break(1u);
  return result;
}

void *sub_1CA215520()
{
  v1 = v0;
  v2 = sub_1CA21BB1C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E418, &qword_1CA220290);
  v6 = *v0;
  v7 = sub_1CA21BCBC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1CA215758(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1CA21BB1C();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E418, &qword_1CA220290);
  v7 = sub_1CA21BCCC();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1CA217018(&qword_1EC43DEB8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
      result = sub_1CA21BB7C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

unint64_t sub_1CA215A74(uint64_t a1)
{
  sub_1CA21BBDC();
  sub_1CA21BD7C();
  sub_1CA21BBFC();
  v2 = sub_1CA21BD8C();

  return sub_1CA215B8C(a1, v2);
}

uint64_t sub_1CA215B08(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1CA21BD7C();
  sub_1CA21BBFC();
  v5 = sub_1CA21BD8C();

  return a3(a1, a2, v5);
}

unint64_t sub_1CA215B8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1CA21BBDC();
      v8 = v7;
      if (v6 == sub_1CA21BBDC() && v8 == v9)
      {
        break;
      }

      v11 = sub_1CA21BD2C();

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

char *sub_1CA215C90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CA215CB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CA215CB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E420, &qword_1CA220298);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1CA215DC0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1CA21BB1C();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
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

uint64_t sub_1CA2160AC(uint64_t a1)
{
  v2 = sub_1CA21BB1C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1CA217018(&qword_1EC43DEB8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
  result = MEMORY[0x1CCA9BD80](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1CA214C40(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t sub_1CA216248(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E428, &qword_1CA2202A0);
    v3 = sub_1CA21BCFC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CA217154(v4, &v13, &qword_1EC43E430, &qword_1CA2202A8);
      v5 = v13;
      v6 = v14;
      result = sub_1CA215B08(v13, v14, sub_1CA2140A0);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1CA217140(&v15, (v3[7] + 32 * result));
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

uint64_t sub_1CA21638C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

double block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1CA216498()
{
  result = qword_1EC43E3C8;
  if (!qword_1EC43E3C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC43E3C8);
  }

  return result;
}

uint64_t sub_1CA216550(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[2] = a1;
  v5[3] = a2;
  return v3(sub_1CA217104, v5);
}

uint64_t sub_1CA21659C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1CA2176DC;

  return sub_1CA211270(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_1CA216664(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CA216718;

  return sub_1CA211E54(a1, a2, v6);
}

uint64_t sub_1CA216718()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t getEnumTagSinglePayload for ThumbnailProviderBuilder(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ThumbnailProviderBuilder(_WORD *result, int a2, int a3)
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

uint64_t sub_1CA216928(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA216970(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CA2169EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1CA216A40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
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

uint64_t sub_1CA216AB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1CA216B00(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1CA216B6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1CA216BB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CA216C08(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1CA216CF0(uint64_t a1, int a2)
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

uint64_t sub_1CA216D10(uint64_t result, int a2, int a3)
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

uint64_t sub_1CA216D74()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1CA216718;

  return sub_1CA212AE0(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1CA216E20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CA216E80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA2176DC;

  return sub_1CA214158(a1, v4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

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

uint64_t sub_1CA217018(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CA217060(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_1CA217104()
{
  v1 = (*(v0 + 16))();

  return v1;
}

_OWORD *sub_1CA217140(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1CA217154(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CA2171BC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CA2176DC;

  return sub_1CA2120B4(a1, a2, v6);
}

void sub_1CA21750C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_1CA2175A4()
{
  result = qword_1EC43E490;
  if (!qword_1EC43E490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43E490);
  }

  return result;
}

void QLGetRealPath_cold_1()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1(&dword_1CA1E7000, v1, v2, "failed to get real path for %s: %s", v3, v4, v5, v6);
}

void QLGetRealPath_cold_2()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1(&dword_1CA1E7000, v1, v2, "failed to open path %s: %s", v3, v4, v5, v6);
}

void QLTCreateCGContextWithSize_cold_5(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_1CA1E7000, log, OS_LOG_TYPE_ERROR, "Did not create CGContext because of incorrect image size in pixels (width: %d, height: %d)", v3, 0xEu);
}

void QLCreateCGImageWithData_cold_1(int *a1, int *a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a2;
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_error_impl(&dword_1CA1E7000, log, OS_LOG_TYPE_ERROR, "Did not create CGContext for thumbail extension because of incorrect image size in pixels (width: %d, height: %d)", v5, 0xEu);
}

NSRect NSRectFromString(NSString *aString)
{
  MEMORY[0x1EEDC70C0](aString);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}
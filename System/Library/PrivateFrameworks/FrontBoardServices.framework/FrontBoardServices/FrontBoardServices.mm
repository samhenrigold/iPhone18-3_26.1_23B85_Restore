NSMapTable *FBSSettingForExtensionSelector(void *a1, const void *a2)
{
  if (!a2)
  {
    FBSSettingForExtensionSelector_cold_2();
  }

  if (!a1)
  {
    FBSSettingForExtensionSelector_cold_1();
  }

  os_unfair_lock_lock(&__ExtensionLock);
  if (__SelectorsToSettingsMap)
  {
    v4 = NSMapGet(__SelectorsToSettingsMap, [a1 _baseClass]);
    v5 = v4;
    if (v4)
    {
      v4 = NSMapGet(v4, a2);
    }

    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&__ExtensionLock);

  return v6;
}

void OUTLINED_FUNCTION_11(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1, uint64_t a2)
{

  return objc_opt_class();
}

void OUTLINED_FUNCTION_5_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2)
{

  return objc_opt_class();
}

void OUTLINED_FUNCTION_5_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x3Au);
}

__n128 OUTLINED_FUNCTION_5_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14)
{
  result = a14;
  *(v15 - 256) = a14.n128_u32[0];
  *(v15 - 252) = v14;
  return result;
}

__CFString *FBSDisplayTypeDescription(unint64_t a1)
{
  if (a1 == -1)
  {
    v5 = @"<<Invalid>>";
  }

  else
  {
    v2 = FBSDisplayTypeName(a1);
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
    }

    v5 = v4;
  }

  return v5;
}

__CFString *FBSDisplayTypeName(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E76BF2F0[a1];
  }
}

uint64_t FBSDisplayTagToFBSDisplayType(int a1, int a2, _BYTE *a3)
{
  if (a1 == 1)
  {
    result = 0;
    *a3 = 1;
  }

  else
  {
    v4 = 8;
    v5 = 3;
    v6 = 6;
    v7 = 4;
    v8 = 5;
    v9 = 7;
    if ((*&a2 & 0x10000) == 0)
    {
      v9 = -1;
    }

    if ((a2 & 0x10) == 0)
    {
      v8 = v9;
    }

    if ((a2 & 8) == 0)
    {
      v7 = v8;
    }

    if ((a2 & 0x40) == 0)
    {
      v6 = v7;
    }

    if ((a2 & 0x20) == 0)
    {
      v5 = v6;
    }

    if ((a2 & 0x80) == 0)
    {
      v4 = v5;
    }

    if ((a2 & 4) != 0)
    {
      return 1;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

id getkCADisplayOrientationRotation180()
{
  v0 = getkCADisplayOrientationRotation180SymbolLoc();
  if (!v0)
  {
    getkCADisplayOrientationRotation180_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCADisplayOrientationRotation180SymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayOrientationRotation180SymbolLoc_ptr;
  v6 = getkCADisplayOrientationRotation180SymbolLoc_ptr;
  if (!getkCADisplayOrientationRotation180SymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayOrientationRotation180");
    getkCADisplayOrientationRotation180SymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DBCE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getkCADisplayOrientationRotation270()
{
  v0 = getkCADisplayOrientationRotation270SymbolLoc();
  if (!v0)
  {
    getkCADisplayOrientationRotation270_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCADisplayOrientationRotation270SymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayOrientationRotation270SymbolLoc_ptr;
  v6 = getkCADisplayOrientationRotation270SymbolLoc_ptr;
  if (!getkCADisplayOrientationRotation270SymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayOrientationRotation270");
    getkCADisplayOrientationRotation270SymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DBCF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FBSDisplayRotationFromCADisplayRotation(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = getkCADisplayOrientationRotation90();
    v3 = [v1 isEqualToString:v2];

    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v5 = getkCADisplayOrientationRotation180();
      v6 = [v1 isEqualToString:v5];

      if (v6)
      {
        v4 = 2;
      }

      else
      {
        v7 = getkCADisplayOrientationRotation270();
        v8 = [v1 isEqualToString:v7];

        if (v8)
        {
          v4 = 3;
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id getkCADisplayOrientationRotation90()
{
  v0 = getkCADisplayOrientationRotation90SymbolLoc();
  if (!v0)
  {
    getkCADisplayOrientationRotation90_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCADisplayOrientationRotation90SymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayOrientationRotation90SymbolLoc_ptr;
  v6 = getkCADisplayOrientationRotation90SymbolLoc_ptr;
  if (!getkCADisplayOrientationRotation90SymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayOrientationRotation90");
    getkCADisplayOrientationRotation90SymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DBD148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getkCADisplayModeGamutP3()
{
  v0 = getkCADisplayModeGamutP3SymbolLoc();
  if (!v0)
  {
    getkCADisplayModeGamutP3_cold_1();
  }

  v1 = *v0;

  return v1;
}

void *FBSDisplayGamutFromCADisplayGamut(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = getkCADisplayModeGamutP3();
    v3 = [v1 isEqualToString:v2];

    return v3;
  }

  return result;
}

uint64_t getkCADisplayModeGamutP3SymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayModeGamutP3SymbolLoc_ptr;
  v6 = getkCADisplayModeGamutP3SymbolLoc_ptr;
  if (!getkCADisplayModeGamutP3SymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayModeGamutP3");
    getkCADisplayModeGamutP3SymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DBD2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FBSDisplayHDRModeFromCADisplayHDRMode(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = getkCADisplayModeHDR10();
    v3 = [v1 isEqualToString:v2];

    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v5 = getkCADisplayModeDolby();
      v6 = [v1 isEqualToString:v5];

      if (v6)
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id getkCADisplayModeHDR10()
{
  v0 = getkCADisplayModeHDR10SymbolLoc();
  if (!v0)
  {
    getkCADisplayModeHDR10_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCADisplayModeHDR10SymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayModeHDR10SymbolLoc_ptr;
  v6 = getkCADisplayModeHDR10SymbolLoc_ptr;
  if (!getkCADisplayModeHDR10SymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayModeHDR10");
    getkCADisplayModeHDR10SymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DBD47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getkCADisplayModeDolby()
{
  v0 = getkCADisplayModeDolbySymbolLoc();
  if (!v0)
  {
    getkCADisplayModeDolby_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCADisplayModeDolbySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayModeDolbySymbolLoc_ptr;
  v6 = getkCADisplayModeDolbySymbolLoc_ptr;
  if (!getkCADisplayModeDolbySymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayModeDolby");
    getkCADisplayModeDolbySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DBD59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FBSDisplayOverscanCompensationFromCADisplayOverscanAdjustment(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = getkCADisplayScaleContent();
    v3 = [v1 isEqualToString:v2];

    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v5 = getkCADisplayInsetBounds();
      v6 = [v1 isEqualToString:v5];

      if (v6)
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id getkCADisplayScaleContent()
{
  v0 = getkCADisplayScaleContentSymbolLoc();
  if (!v0)
  {
    getkCADisplayScaleContent_cold_1();
  }

  v1 = *v0;

  return v1;
}

id getkCADisplayInsetBounds()
{
  v0 = getkCADisplayInsetBoundsSymbolLoc();
  if (!v0)
  {
    getkCADisplayInsetBounds_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCADisplayScaleContentSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayScaleContentSymbolLoc_ptr;
  v6 = getkCADisplayScaleContentSymbolLoc_ptr;
  if (!getkCADisplayScaleContentSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayScaleContent");
    getkCADisplayScaleContentSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DBD7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCADisplayInsetBoundsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayInsetBoundsSymbolLoc_ptr;
  v6 = getkCADisplayInsetBoundsSymbolLoc_ptr;
  if (!getkCADisplayInsetBoundsSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayInsetBounds");
    getkCADisplayInsetBoundsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DBD88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FBSDisplayTypeToDisplayTag(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_1A2E69450[a1 - 1];
  }
}

uint64_t _FBSCreateUnsafeObjectFromData(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v1 length])
  {
    v2 = objc_autoreleasePoolPush();
    v8 = 0;
    v3 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v1 error:&v8];
    v4 = v8;
    v5 = v4;
    if (v3)
    {
      [v3 setRequiresSecureCoding:0];
      v6 = [v3 decodeObjectOfClasses:0 forKey:*MEMORY[0x1E696A508]];
      [v3 finishDecoding];
    }

    else
    {
      v3 = FBLogAppDataStore(v4);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _FBSCreateUnsafeObjectFromData_cold_2(v5, v3);
      }

      v6 = 0;
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void OUTLINED_FUNCTION_11_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_11_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_INFO, a4, (v5 - 112), 0xCu);
}

uint64_t OUTLINED_FUNCTION_11_4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);

  return [a1 countByEnumeratingWithState:va objects:v40 - 232 count:{16, a6, a7, a8}];
}

void ___realizeSettingsExtension_block_invoke_285(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!*(a1 + 48) || (objc_opt_isKindOfClass() & 1) != 0)
    {
      if (-[FBSSetting specialCollection](*(a1 + 32)) == 0x7FFFFFFFFFFFFFFFLL && [v6 count])
      {
        if (objc_opt_respondsToSelector())
        {
          [v6 firstObject];
        }

        else
        {
          [v6 anyObject];
        }

        objc_claimAutoreleasedReturnValue();
        objc_opt_respondsToSelector();
        BSSettingFlagForBool();
      }

      BSSettingFlagIsYes();
    }

    ___realizeSettingsExtension_block_invoke_285_cold_1(v6, (a1 + 48));
  }

  [(FBSSettings *)v5 _setValue:*(a1 + 32) forSetting:?];
}

void FBSRealizeSubclassExtension(objc_class *a1)
{
  v55[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    FBSRealizeSubclassExtension_cold_9();
  }

  Superclass = a1;
  os_unfair_lock_lock(&__SubclassLock);
  if (objc_opt_class() == Superclass)
  {
    goto LABEL_51;
  }

  do
  {
    v2 = objc_getAssociatedObject(Superclass, _FBSRealizedKey);
    v3 = v2 == 0;

    if (!v3)
    {
      break;
    }

    outCount = 0;
    Class = object_getClass(Superclass);
    v5 = 0;
    v52 = class_copyMethodList(Class, &outCount);
    if (!v52 || !outCount)
    {
      goto LABEL_50;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v52[v6];
      if (method_getImplementation(v10) == MEMORY[0x1E69E58E8])
      {
        goto LABEL_28;
      }

      name = method_getDescription(v10)->name;
      if (name == sel_subclassExtension)
      {
        v15 = [(objc_class *)Superclass subclassExtension];
        if (!v15)
        {
          goto LABEL_28;
        }

        v55[0] = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
        goto LABEL_27;
      }

      if (name == sel_subclassExtensions)
      {
        v16 = [(objc_class *)Superclass subclassExtensions];
LABEL_27:
        v17 = v16;

        v9 = v17;
        goto LABEL_28;
      }

      if (name == sel_immutableSubclass)
      {
        v7 = [(objc_class *)Superclass immutableSubclass];
        if (v7 && [v7 isSubclassOfClass:{-[objc_class _mutableClass](Superclass, "_mutableClass")}])
        {
          v27 = MEMORY[0x1E696AEC0];
          v28 = NSStringFromClass(Superclass);
          v29 = [v27 stringWithFormat:@"%@ is not immutable", v28];

          v30 = MEMORY[0x1E69E9C10];
          v31 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [MEMORY[0x1E696AEC0] stringWithUTF8String:"void FBSRealizeSubclassExtension(__unsafe_unretained Class _Nonnull)"];
            objc_claimAutoreleasedReturnValue();
            FBSRealizeSubclassExtension_cold_7();
          }

          v33 = v29;
          [v29 UTF8String];
          _bs_set_crash_log_message();
        }
      }

      else if (name == sel_mutableSubclass)
      {
        v8 = [(objc_class *)Superclass mutableSubclass];
        if (!v8)
        {
          v21 = MEMORY[0x1E696AEC0];
          v22 = NSStringFromClass(Superclass);
          v23 = [v21 stringWithFormat:@"+[%@ mutableSubclass] returned nil", v22];

          v24 = MEMORY[0x1E69E9C10];
          v25 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [MEMORY[0x1E696AEC0] stringWithUTF8String:"void FBSRealizeSubclassExtension(__unsafe_unretained Class _Nonnull)"];
            objc_claimAutoreleasedReturnValue();
            FBSRealizeSubclassExtension_cold_5();
          }

          v26 = v23;
          [v23 UTF8String];
          _bs_set_crash_log_message();
        }

        if (([v8 isSubclassOfClass:{-[objc_class _mutableClass](Superclass, "_mutableClass")}] & 1) == 0)
        {
          v34 = MEMORY[0x1E696AEC0];
          v35 = NSStringFromClass(Superclass);
          v36 = [v34 stringWithFormat:@"%@ is not mutable", v35];

          v37 = MEMORY[0x1E69E9C10];
          v38 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [MEMORY[0x1E696AEC0] stringWithUTF8String:"void FBSRealizeSubclassExtension(__unsafe_unretained Class _Nonnull)"];
            objc_claimAutoreleasedReturnValue();
            FBSRealizeSubclassExtension_cold_3();
          }

          v40 = v36;
          [v36 UTF8String];
          _bs_set_crash_log_message();
        }
      }

      else if (name == sel_settingForProperty_ || name == sel_allSettings || name == sel_allSettingsFromProtocol_ || name == sel_allSettingsFromExtension_)
      {
        v41 = MEMORY[0x1E696AEC0];
        v42 = NSStringFromSelector(name);
        v43 = [v41 stringWithFormat:@"+[FBSSettings %@] may not be overridden.", v42];

        v44 = MEMORY[0x1E69E9C10];
        v45 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [MEMORY[0x1E696AEC0] stringWithUTF8String:"void FBSRealizeSubclassExtension(__unsafe_unretained Class _Nonnull)"];
          objc_claimAutoreleasedReturnValue();
          FBSRealizeSubclassExtension_cold_1();
        }

        v47 = v43;
        [v43 UTF8String];
        _bs_set_crash_log_message();
      }

LABEL_28:
      ++v6;
    }

    while (v6 < outCount);
    if (v7 && v8 && v7 != v8)
    {
      [v7 _setCounterpartClass:v8];
      [v8 _setCounterpartClass:v7];
    }

    if (v9)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v5 = v9;
      v18 = [v5 countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (v18)
      {
        v19 = *v49;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v49 != v19)
            {
              objc_enumerationMutation(v5);
            }

            FBSRealizeSettingsExtension(Superclass, *(*(&v48 + 1) + 8 * i));
          }

          v18 = [v5 countByEnumeratingWithState:&v48 objects:v54 count:16];
        }

        while (v18);
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_50:
    objc_setAssociatedObject(Superclass, _FBSRealizedKey, &unk_1F15AE910, 0);
    Superclass = class_getSuperclass(Superclass);
    fbs_free(&v52);
  }

  while (Superclass != objc_opt_class());
LABEL_51:
  os_unfair_lock_unlock(&__SubclassLock);
}

void sub_1A2DBF038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  fbs_free(va);
  _Unwind_Resume(a1);
}

unint64_t FBSProcessResourceValueForTimeInterval(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  else
  {
    return (a1 * 1000.0);
  }
}

id FBLogWatchdog(uint64_t a1)
{
  if (FBLogWatchdog_onceToken != -1)
  {
    FBLogWatchdog_cold_1();
  }

  v2 = FBLogWatchdog___logObj;

  return v2;
}

id FBSProcessPrettyDescription(void *a1)
{
  v1 = a1;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_6;
  }

  v2 = [v1 identity];
  v3 = [v1 handle];
  v4 = v3;
  if (!v2)
  {
    if (v3)
    {
LABEL_8:
      v7 = MEMORY[0x1E696AEC0];
      v2 = [v4 name];
      v8 = v2;
      if (!v2)
      {
        v8 = [v4 bundleIdentifier];
      }

      v9 = [v7 stringWithFormat:@"%@:%d", v8, objc_msgSend(v4, "pid")];
      if (!v2)
      {
      }

      goto LABEL_15;
    }

LABEL_6:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v4 = v1) == 0)
    {
      v9 = [v1 description];
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  v5 = MEMORY[0x1E696AEC0];
  if (v3)
  {
    v6 = [v3 pid];
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  v9 = [v5 stringWithFormat:@"%@:%d", v2, v6];
LABEL_15:

LABEL_16:

  return v9;
}

__CFString *NSStringFromProcessResourceType(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return *(&off_1E76BFB40 + a1);
  }
}

void *FBSProcessResourceAllowanceIsValid(void *result)
{
  if (result)
  {
    if (*result)
    {
      return (result[1] != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t FBSSettingsExtensionIsRealized(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(&__ExtensionLock);
  v4 = [__SettingsToExtensionsMap objectForKey:a1];
  v5 = [v4 containsObject:a2];
  os_unfair_lock_unlock(&__ExtensionLock);

  return v5;
}

id FBSGetDefaultExtensions(void *a1)
{
  v1 = a1;
  os_unfair_lock_lock(&FBSGetDefaultExtensions___lock);
  Class = object_getClass(v1);
  v3 = _lock_getDefaultExtensions(v1, Class);

  os_unfair_lock_unlock(&FBSGetDefaultExtensions___lock);

  return v3;
}

id _lock_getDefaultExtensions(void *a1, void *a2)
{
  v3 = a1;
  if (objc_opt_class() == a2)
  {
    v4 = [MEMORY[0x1E695DFB8] orderedSet];
  }

  else
  {
    v4 = objc_getAssociatedObject(a2, _FBSDefaultExtensionsKey);
    if (!v4)
    {
      Superclass = class_getSuperclass(a2);
      v6 = _lock_getDefaultExtensions(v3, Superclass);
      if (!v6)
      {
        _lock_getDefaultExtensions_cold_1();
      }

      v4 = v6;
      outCount = 0;
      v16 = class_copyMethodList(a2, &outCount);
      if (outCount)
      {
        v7 = 0;
        while (1)
        {
          v8 = v16[v7];
          if (method_getName(v8) == sel_defaultExtensions)
          {
            break;
          }

          if (++v7 >= outCount)
          {
            goto LABEL_14;
          }
        }

        Implementation = method_getImplementation(v8);
        v10 = MEMORY[0x1E695DFB8];
        v11 = (Implementation)(v3, sel_defaultExtensions);
        v12 = [v10 orderedSetWithArray:v11];

        if ([v12 count] && (objc_msgSend(v12, "isSubsetOfOrderedSet:", v4) & 1) == 0)
        {
          v13 = [v4 mutableCopy];
          [v13 unionOrderedSet:v12];
          v14 = [v13 copy];

          v4 = v14;
        }
      }

LABEL_14:
      objc_setAssociatedObject(a2, _FBSDefaultExtensionsKey, v4, 1);
      fbs_free(&v16);
    }
  }

  return v4;
}

id FBLogCommon(uint64_t a1)
{
  if (FBLogCommon_onceToken != -1)
  {
    FBLogCommon_cold_1();
  }

  v2 = FBLogCommon___logObj;

  return v2;
}

uint64_t OUTLINED_FUNCTION_15_1(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);

  return [a1 countByEnumeratingWithState:&a17 objects:va count:{16, a6, a7, a8}];
}

void __accessProxiesWithBlock(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v4 = v1;
    os_unfair_lock_lock(&__accessProxiesWithBlock___lock);
    if (!__accessProxiesWithBlock___endpointToProxy)
    {
      v2 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:0];
      v3 = __accessProxiesWithBlock___endpointToProxy;
      __accessProxiesWithBlock___endpointToProxy = v2;
    }

    v4[2]();
    os_unfair_lock_unlock(&__accessProxiesWithBlock___lock);
    v1 = v4;
  }
}

BOOL FBSSceneActivityModeIsValid(int a1)
{
  result = 1;
  if ((a1 + 50) > 0x3C || ((1 << (a1 + 50)) & 0x1004010040000001) == 0)
  {
    return a1 == -128;
  }

  return result;
}

id FBSSettingForSelector(void *a1, const void *a2)
{
  v4 = FBSSettingForExtensionSelector(a1, a2);
  if (!v4)
  {
    v4 = FBSSettingForLegacySelector(a1, a2);
  }

  return v4;
}

id FBSSettingForLegacySelector(objc_class *a1, const void *a2)
{
  Superclass = a1;
  if ([(objc_class *)a1 _baseClass]== a1 || [(objc_class *)Superclass _mutableClass]== Superclass)
  {
    v7 = 0;
  }

  else
  {
    FBSIngestSubclassProperties(Superclass);
    if ([(objc_class *)Superclass isSubclassOfClass:[(objc_class *)Superclass _mutableClass]]&& [(objc_class *)Superclass _counterpartClass])
    {
      Superclass = [(objc_class *)Superclass _counterpartClass];
    }

    os_unfair_lock_lock(&__ExtensionLock);
    if (__SelectorsToSettingsMap)
    {
      while (Superclass != objc_opt_class())
      {
        v4 = NSMapGet(__SelectorsToSettingsMap, Superclass);
        v5 = v4;
        if (v4)
        {
          v6 = NSMapGet(v4, a2);
          if (v6)
          {
            v7 = v6;

            goto LABEL_13;
          }
        }

        Superclass = class_getSuperclass(Superclass);
      }
    }

    v7 = 0;
LABEL_13:
    os_unfair_lock_unlock(&__ExtensionLock);
  }

  return v7;
}

void FBSIngestSubclassProperties(uint64_t a1)
{
  if (!a1)
  {
    FBSIngestSubclassProperties_cold_1();
  }

  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __FBSIngestSubclassProperties_block_invoke;
  v1[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  v1[4] = a1;
  os_unfair_lock_lock(&__SubclassLock);
  (__FBSIngestSubclassProperties_block_invoke)(v1);
  os_unfair_lock_unlock(&__SubclassLock);
}

void __FBSIngestSubclassProperties_block_invoke(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 32); i != objc_opt_class(); i = class_getSuperclass(i))
  {
    v3 = objc_getAssociatedObject(i, _FBSIngestedKey);

    if (v3)
    {
      break;
    }

    _ingestPropertiesFromSettingsSubclass(i);
    objc_setAssociatedObject(i, _FBSIngestedKey, &unk_1F15AE910, 0);
  }
}

BOOL FBSSubclassHasBeenIngested(void *a1)
{
  if (!a1)
  {
    FBSSubclassHasBeenIngested_cold_1();
  }

  os_unfair_lock_lock(&__SubclassLock);
  v2 = objc_getAssociatedObject(a1, _FBSIngestedKey);
  v3 = v2 != 0;

  os_unfair_lock_unlock(&__SubclassLock);
  return v3;
}

uint64_t soft_CALayerGetRenderId(void *a1)
{
  v1 = a1;
  RenderIdSymbolLoc = getCALayerGetRenderIdSymbolLoc();
  if (!RenderIdSymbolLoc)
  {
    soft_CALayerGetRenderId_cold_1();
  }

  v3 = RenderIdSymbolLoc(v1);

  return v3;
}

uint64_t getCALayerGetRenderIdSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCALayerGetRenderIdSymbolLoc_ptr;
  v6 = getCALayerGetRenderIdSymbolLoc_ptr;
  if (!getCALayerGetRenderIdSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "CALayerGetRenderId");
    getCALayerGetRenderIdSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DC2FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___realizeSettingsExtension_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 valueForSetting:*(a1 + 32)];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

double ___realizeSettingsExtension_block_invoke_3(uint64_t a1, void *a2)
{
  memset(v5, 0, sizeof(v5));
  v3 = [a2 valueForSetting:*(a1 + 32)];
  [v3 getValue:v5 size:*(a1 + 40)];

  return *v5;
}

void FBSRealizeSceneExtension(void *a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    FBSRealizeSceneExtension_cold_3();
  }

  if (([a1 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    FBSRealizeSceneExtension_cold_1(a1);
  }

  if (objc_opt_class() == a1)
  {
    FBSRealizeSceneExtension_cold_2();
  }

  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [a1 settingsExtensions];
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    while (1)
    {
      if (*v25 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (!--v5)
      {
        v5 = [v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [a1 clientSettingsExtensions];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (1)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(v7);
      }

      if (!--v9)
      {
        v9 = [v7 countByEnumeratingWithState:&v20 objects:v29 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = [a1 transitionContextExtensions];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    while (1)
    {
      if (*v17 != v14)
      {
        objc_enumerationMutation(v11);
      }

      if (!--v13)
      {
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v28 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __FBSRealizeSceneExtension_block_invoke;
  v15[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  v15[4] = a1;
  os_unfair_lock_lock(&__ExtensionLock);
  __FBSRealizeSceneExtension_block_invoke(v15);
  os_unfair_lock_unlock(&__ExtensionLock);
}

void __FBSRealizeSceneExtension_block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = __SceneExtensions;
  if (!__SceneExtensions)
  {
    v3 = objc_opt_new();
    v4 = __SceneExtensions;
    __SceneExtensions = v3;

    v2 = __SceneExtensions;
  }

  if (([v2 containsObject:*(a1 + 32)] & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    [__SceneExtensions addObject:*(a1 + 32)];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = [*(a1 + 32) settingsExtensions];
    v7 = [v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      do
      {
        v10 = 0;
        do
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v6);
          }

          objc_opt_class();
          _realizeSettingsExtension();
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v8);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = [*(a1 + 32) clientSettingsExtensions];
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        v15 = 0;
        do
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          objc_opt_class();
          _realizeSettingsExtension();
          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v13);
    }

    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v16 = [*(a1 + 32) transitionContextExtensions];
    v17 = [v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v22;
      do
      {
        v20 = 0;
        do
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v16);
          }

          objc_opt_class();
          _realizeSettingsExtension();
          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
      }

      while (v18);
    }

    objc_autoreleasePoolPop(v5);
  }
}

void FBSRealizeSettingsExtension(uint64_t a1, void *a2)
{
  if ([a2 isSubclassOfClass:objc_opt_class()])
  {
    FBSRealizeSettingsExtension_cold_1();
  }

  if (a2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __FBSRealizeSettingsExtension_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0lu32l8u40l8;
    v4[4] = a1;
    v4[5] = a2;
    os_unfair_lock_lock(&__ExtensionLock);
    __FBSRealizeSettingsExtension_block_invoke(v4);
    os_unfair_lock_unlock(&__ExtensionLock);
  }
}

void __FBSRealizeSettingsExtension_block_invoke(uint64_t a1)
{
  [*(a1 + 32) _baseClass];

  _realizeSettingsExtension();
}

void _realizeSettingsExtension()
{
  v0 = MEMORY[0x1EEE9AC00]();
  aClass = v1;
  v2 = v0;
  v244 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&__ExtensionLock);
  v194 = v2;
  cls = [(objc_class *)v2 _baseClass];
  v185 = [__SettingsToExtensionsMap objectForKey:?];
  if (([v185 containsObject:aClass] & 1) == 0)
  {
    if (!cls)
    {
      _realizeSettingsExtension_cold_35();
    }

    if (([(objc_class *)cls isSubclassOfClass:objc_opt_class()]& 1) == 0)
    {
      _realizeSettingsExtension_cold_1();
    }

    if (([(objc_class *)aClass isSubclassOfClass:objc_opt_class()]& 1) == 0)
    {
      _realizeSettingsExtension_cold_2(aClass);
    }

    v200 = [(objc_class *)aClass isSubclassOfClass:objc_opt_class()];
    if (v200)
    {
      if (cls == v2)
      {
        _realizeSettingsExtension_cold_34();
      }
    }

    else if (cls != v2)
    {
      _realizeSettingsExtension_cold_3();
    }

    if (!__SettingsToExtensionsMap)
    {
      v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v4 = __SettingsToExtensionsMap;
      __SettingsToExtensionsMap = v3;

      v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v6 = __SelectorsToSettingsMap;
      __SelectorsToSettingsMap = v5;

      v7 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v8 = __LegacySettingsToSettingsMap;
      __LegacySettingsToSettingsMap = v7;
    }

    v9 = v185;
    if (!v185)
    {
      v9 = [MEMORY[0x1E695DFA8] set];
      [__SettingsToExtensionsMap setObject:v9 forKey:cls];
    }

    v185 = v9;
    [v9 addObject:aClass];
    if (v200)
    {
      v10 = v2;
    }

    else
    {
      v10 = cls;
    }

    v180 = v10;
    v11 = [__SelectorsToSettingsMap objectForKey:?];
    v12 = [v11 copy];

    table = v12;
    if (!v12)
    {
      table = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:258 valueOptions:0 capacity:32];
    }

    v13 = [__LegacySettingsToSettingsMap objectForKey:cls];
    v14 = [v13 copy];

    v184 = v14;
    if (!v14)
    {
      v15 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:1282 valueOptions:0 capacity:32];
      v184 = v15;
    }

    v16 = FBLogSceneExtension(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromClass(aClass);
      v18 = NSStringFromClass(cls);
      *buf = 138543618;
      *&buf[4] = v17;
      *&buf[12] = 2114;
      *&buf[14] = v18;
      _os_log_impl(&dword_1A2DBB000, v16, OS_LOG_TYPE_DEFAULT, "Realizing settings extension %{public}@ on %{public}@", buf, 0x16u);
    }

    v19 = [(objc_class *)aClass BSObjCProtocol];
    v183 = v19;
    if (v19)
    {
      v20 = [v19 name];
      v21 = _gatherProperties(v183);
      v22 = _gatherMethods(v183);
      v195 = [v22 mutableCopy];

      protocol = [v183 protocol];
      if (protocol)
      {
        class_addProtocol(cls, protocol);
      }

      bzero(&buf[16], 0xC10uLL);
      *buf = cls;
      *&buf[8] = aClass;
      oslog = v20;
      *&buf[16] = oslog;
      v236 = 0u;
      v235 = 0u;
      v234 = 0u;
      v233 = 0u;
      obj = v21;
      v191 = [obj countByEnumeratingWithState:&v233 objects:v242 count:16];
      if (v191)
      {
        if (v200)
        {
          v23 = v194;
        }

        else
        {
          v23 = aClass;
        }

        v189 = v23;
        v190 = *v234;
        do
        {
          v198 = 0;
          do
          {
            if (*v234 != v190)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v233 + 1) + 8 * v198);
            v25 = v24;
            if (v200)
            {
              v26 = [v24 copyAsReadWrite];

              v25 = v26;
            }

            else if (([v24 isReadWrite] & 1) == 0)
            {
              v145 = [MEMORY[0x1E696AEC0] stringWithFormat:@"property is not readwrite: %@", v25];
              v146 = MEMORY[0x1E69E9C10];
              v147 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
              {
                [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                objc_claimAutoreleasedReturnValue();
                _realizeSettingsExtension_cold_4();
              }

              v148 = v145;
              [v145 UTF8String];
              _bs_set_crash_log_message();
            }

            v27 = [v25 isRequired];
            v193 = [v25 isCopy];
            v192 = [v25 isWeak];
            if ((v192 & v27) == 1)
            {
              v116 = [MEMORY[0x1E696AEC0] stringWithFormat:@"only @optional properties can be weak: %@", v25];
              v117 = MEMORY[0x1E69E9C10];
              v118 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
              {
                [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                objc_claimAutoreleasedReturnValue();
                _realizeSettingsExtension_cold_32();
              }

              v119 = v116;
              [v116 UTF8String];
              _bs_set_crash_log_message();
            }

            v28 = [v25 name];
            v199 = [v25 value];
            v29 = [v199 type];
            if (v200)
            {
              v30 = [v25 customAttributeForKey:@"#"];
              v31 = v30;
              if (v30)
              {
                v32 = [v30 integerValue];
                if (!v32)
                {
                  v149 = [MEMORY[0x1E696AEC0] stringWithFormat:@"could not convert %@ to an integer", v31];
                  v150 = MEMORY[0x1E69E9C10];
                  v151 = MEMORY[0x1E69E9C10];
                  if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                  {
                    [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                    objc_claimAutoreleasedReturnValue();
                    _realizeSettingsExtension_cold_6();
                  }

                  v153 = v149;
                  [v149 UTF8String];
                  _bs_set_crash_log_message();
                }
              }

              else
              {
                v32 = 0x7FFFFFFFFFFFFFFFLL;
              }
            }

            else
            {
              v32 = 0x7FFFFFFFFFFFFFFFLL;
            }

            if (v29 > 0x5Du)
            {
              if (v29 == 98)
              {
                v120 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bitfields are not supported"];
                v121 = MEMORY[0x1E69E9C10];
                v122 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
                {
                  [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                  objc_claimAutoreleasedReturnValue();
                  _realizeSettingsExtension_cold_14();
                }

                v123 = v120;
                [v120 UTF8String];
                _bs_set_crash_log_message();
              }

              if (v29 == 94)
              {
                v133 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pointers are not supported"];
                v134 = MEMORY[0x1E69E9C10];
                v135 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
                {
                  [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                  objc_claimAutoreleasedReturnValue();
                  _realizeSettingsExtension_cold_8();
                }

                v136 = v133;
                [v133 UTF8String];
                _bs_set_crash_log_message();
              }
            }

            else
            {
              if (v29 == 91)
              {
                v124 = [MEMORY[0x1E696AEC0] stringWithFormat:@"C arrays are not supported"];
                v125 = MEMORY[0x1E69E9C10];
                v126 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
                {
                  [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                  objc_claimAutoreleasedReturnValue();
                  _realizeSettingsExtension_cold_12();
                }

                v127 = v124;
                [v124 UTF8String];
                _bs_set_crash_log_message();
              }

              if (v29 == 40)
              {
                v128 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unions are not supported"];
                v129 = MEMORY[0x1E69E9C10];
                v130 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                {
                  [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                  objc_claimAutoreleasedReturnValue();
                  _realizeSettingsExtension_cold_10();
                }

                v132 = v128;
                [v128 UTF8String];
                _bs_set_crash_log_message();
              }
            }

            v33 = v28;
            Property = class_getProperty(v189, [v28 UTF8String]);
            if (Property)
            {
              outCount = 0;
              v35 = property_copyAttributeList(Property, &outCount);
              v231 = v35;
              v36 = outCount;
              if (outCount)
              {
                do
                {
                  if (*v35->name == 86 && !*(v35->name + 1))
                  {
                    v110 = MEMORY[0x1E696AEC0];
                    v111 = NSStringFromClass(aClass);
                    v112 = [v110 stringWithFormat:@"Property %@ of extension %@ is inappropriately implemented with a backing ivar. Was this an accidental auto-synthesis?", v28, v111];

                    v113 = MEMORY[0x1E69E9C10];
                    v114 = MEMORY[0x1E69E9C10];
                    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
                    {
                      [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                      objc_claimAutoreleasedReturnValue();
                      _realizeSettingsExtension_cold_16();
                    }

                    v115 = v112;
                    [v112 UTF8String];
                    _bs_set_crash_log_message();
                  }

                  ++v35;
                  --v36;
                }

                while (v36);
              }

              fbs_free(&v231);
            }

            if ((v200 & 1) == 0 && [v28 isEqualToString:@"displayConfigurationRequest"])
            {
              v37 = NSClassFromString(&cfstr_Uiresponder.isa);
              if (v37)
              {
                v38 = FBLogSceneExtension(v37);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                {
                  *v238 = 138412290;
                  v239 = oslog;
                  _os_log_debug_impl(&dword_1A2DBB000, v38, OS_LOG_TYPE_DEBUG, "Skipping property displayConfigurationRequest from <%@> because it belongs to <UIApplicationSceneClientSettings>", v238, 0xCu);
                }

LABEL_61:

                v39 = [v25 getter];
                [v195 removeObject:v39];

                v40 = [v25 setter];
                [v195 removeObject:v40];
                goto LABEL_176;
              }

              v41 = FBLogSceneExtension(0);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                *v238 = 138412290;
                v239 = oslog;
                _os_log_error_impl(&dword_1A2DBB000, v41, OS_LOG_TYPE_ERROR, "Property displayConfigurationRequest from <%@> is being defined in a process that does not link UIKit. This probably won't behave correctly.", v238, 0xCu);
              }
            }

            if (v29 != 64)
            {
              v196 = 0;
LABEL_79:
              v47 = 1;
              goto LABEL_80;
            }

            v196 = [v199 objectClass];
            if (!v27)
            {
              goto LABEL_79;
            }

            if (v196)
            {
              v42 = 0;
            }

            else
            {
              v42 = v200;
            }

            if (v42 == 1)
            {
              v43 = [v199 objectProtocols];
              v44 = [v43 containsObject:&unk_1F15C5408];

              if (!v44)
              {
                goto LABEL_75;
              }

              v196 = objc_opt_class();
              v46 = FBLogSceneExtension(v196);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                *v238 = 138412546;
                v239 = v28;
                v240 = 2112;
                v241 = oslog;
                _os_log_debug_impl(&dword_1A2DBB000, v46, OS_LOG_TYPE_DEBUG, "Mapping property %@ in <%@> to BSCanonicalOrientationMapResolver", v238, 0x16u);
              }

              if (!v196)
              {
LABEL_75:
                v38 = FBLogSceneExtension(v45);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  *v238 = 138543618;
                  v239 = v28;
                  v240 = 2114;
                  v241 = oslog;
                  _os_log_impl(&dword_1A2DBB000, v38, OS_LOG_TYPE_DEFAULT, "Ignoring object property %{public}@ in <%{public}@> because it has no defined class.", v238, 0x16u);
                }

                goto LABEL_61;
              }
            }

            else if (!v196)
            {
              v154 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Object property %@ in <%@> has an unknown class.", v28, oslog];
              v155 = MEMORY[0x1E69E9C10];
              v156 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
              {
                [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                objc_claimAutoreleasedReturnValue();
                _realizeSettingsExtension_cold_18();
              }

              v157 = v154;
              [v154 UTF8String];
              _bs_set_crash_log_message();
            }

            v47 = v196 != objc_opt_class() && v196 != objc_opt_class() && v196 != objc_opt_class();
LABEL_80:
            v188 = _structDisposition(v199);
            v48 = v27 ^ 1;
            v49 = [FBSSetting settingWithName:v28 settingsClass:v194 extension:aClass local:v27 != 1 type:v29 legacySetting:v32 expectedClass:v196];
            v40 = v49;
            if ((v48 | v47))
            {
              [(FBSSetting *)v49 setSpecialCollection:?];
            }

            v50 = [v25 getter];
            if (!v50)
            {
              v137 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no getter for %@", v25];
              v138 = MEMORY[0x1E69E9C10];
              v139 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
              {
                [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                objc_claimAutoreleasedReturnValue();
                _realizeSettingsExtension_cold_30();
              }

              v140 = v137;
              [v137 UTF8String];
              _bs_set_crash_log_message();
            }

            [v195 removeObjectIdenticalTo:v50];
            v51 = [v50 selector];
            v52 = NSMapGet(table, v51);
            v53 = v52;
            if (v52)
            {
              if (![v52 isEqual:v40])
              {
                v158 = MEMORY[0x1E696AEC0];
                v159 = NSStringFromClass(aClass);
                v160 = [v158 stringWithFormat:@"setting named %@ from %@ already exists as %@", v28, v159, v53];

                v161 = MEMORY[0x1E69E9C10];
                v162 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
                {
                  [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                  objc_claimAutoreleasedReturnValue();
                  _realizeSettingsExtension_cold_20();
                }

                v163 = v160;
                [v160 UTF8String];
                _bs_set_crash_log_message();
              }

              v54 = v53;

              v40 = v54;
            }

            else
            {
              v55 = [v50 name];
              v56 = [v28 isEqualToString:v55];

              if ((v56 & 1) == 0)
              {
                v57 = NSSelectorFromString(&v28->isa);
                if (!v57)
                {
                  v58 = v28;
                  v57 = sel_registerName([v28 UTF8String]);
                }

                NSMapInsert(table, v57, v40);
              }

              NSMapInsert(table, v51, v40);
              if (v32 != 0x7FFFFFFFFFFFFFFFLL)
              {
                NSMapInsert(v184, v32, v40);
              }
            }

            if (v200)
            {
              MethodImplementation = class_getMethodImplementation(v194, v51);
              if (MethodImplementation != class_getMethodImplementation(cls, v51))
              {
                goto LABEL_129;
              }

LABEL_96:
              if (v29 == 123)
              {
                v61 = [v199 size];
                switch(v188)
                {
                  case 3:
                    v62 = v228;
                    v228[0] = MEMORY[0x1E69E9820];
                    v228[1] = 3221225472;
                    v228[2] = ___realizeSettingsExtension_block_invoke_3;
                    v228[3] = &unk_1E76BCF28;
                    v228[4] = v40;
                    v228[5] = v61;
                    break;
                  case 2:
                    v62 = v229;
                    v229[0] = MEMORY[0x1E69E9820];
                    v229[1] = 3221225472;
                    v229[2] = ___realizeSettingsExtension_block_invoke_2;
                    v229[3] = &unk_1E76BCF00;
                    v229[4] = v40;
                    v229[5] = v61;
                    break;
                  case 1:
                    v62 = v230;
                    v230[0] = MEMORY[0x1E69E9820];
                    v230[1] = 3221225472;
                    v230[2] = ___realizeSettingsExtension_block_invoke;
                    v230[3] = &unk_1E76BCED8;
                    v230[4] = v40;
                    v230[5] = v61;
                    break;
                  default:
                    v168 = MEMORY[0x1E696AEC0];
                    v169 = [v199 encoding];
                    v170 = [v168 stringWithFormat:@"Struct property %@ is not a supported format (%@) and must be explicitly synthesized using SYNTHESIZE_STRUCT_PROPERTY()", v28, v169];

                    v171 = MEMORY[0x1E69E9C10];
                    v172 = MEMORY[0x1E69E9C10];
                    if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
                    {
                      [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                      objc_claimAutoreleasedReturnValue();
                      _realizeSettingsExtension_cold_28();
                    }

                    v173 = v170;
                    [v170 UTF8String];
                    _bs_set_crash_log_message();
                }

                goto LABEL_122;
              }

              if (v29 == 64)
              {
                v62 = v227;
                v227[0] = MEMORY[0x1E69E9820];
                v227[1] = 3221225472;
                v227[2] = ___realizeSettingsExtension_block_invoke_259;
                v227[3] = &unk_1E76BCF50;
                v227[4] = v40;
LABEL_122:
                v63 = MEMORY[0x1A58E80F0](v62);

                v60 = imp_implementationWithBlock(v63);
                goto LABEL_123;
              }

              if (v29 <= 0x39u)
              {
                if (v29 == 35)
                {
                  v62 = v223;
                  v223[0] = MEMORY[0x1E69E9820];
                  v223[1] = 3221225472;
                  v223[2] = ___realizeSettingsExtension_block_invoke_5;
                  v223[3] = &unk_1E76BCFF0;
                  v223[4] = v40;
                  goto LABEL_122;
                }

                if (v29 == 42)
                {
                  v62 = v224;
                  v224[0] = MEMORY[0x1E69E9820];
                  v224[1] = 3221225472;
                  v224[2] = ___realizeSettingsExtension_block_invoke_4;
                  v224[3] = &unk_1E76BCFC8;
                  v224[4] = v40;
                  goto LABEL_122;
                }
              }

              else
              {
                switch(v29)
                {
                  case ':':
                    v62 = v222;
                    v222[0] = MEMORY[0x1E69E9820];
                    v222[1] = 3221225472;
                    v222[2] = ___realizeSettingsExtension_block_invoke_6;
                    v222[3] = &unk_1E76BD018;
                    v222[4] = v40;
                    goto LABEL_122;
                  case 'd':
                    v62 = v225;
                    v225[0] = MEMORY[0x1E69E9820];
                    v225[1] = 3221225472;
                    v225[2] = ___realizeSettingsExtension_block_invoke_3_263;
                    v225[3] = &unk_1E76BCFA0;
                    v225[4] = v40;
                    goto LABEL_122;
                  case 'f':
                    v62 = v226;
                    v226[0] = MEMORY[0x1E69E9820];
                    v226[1] = 3221225472;
                    v226[2] = ___realizeSettingsExtension_block_invoke_2_261;
                    v226[3] = &unk_1E76BCF78;
                    v226[4] = v40;
                    goto LABEL_122;
                }
              }

              v62 = v221;
              v221[0] = MEMORY[0x1E69E9820];
              v221[1] = 3221225472;
              v221[2] = ___realizeSettingsExtension_block_invoke_7;
              v221[3] = &unk_1E76BD040;
              v221[4] = v40;
              goto LABEL_122;
            }

            v60 = class_getMethodImplementation(aClass, v51);
            if (v60 == MEMORY[0x1E69E58E8])
            {
              goto LABEL_96;
            }

LABEL_123:
            v64 = 0;
            if (v60 && v60 != MEMORY[0x1E69E58E8])
            {
              v65 = [v50 encoding];
              v66 = v65;
              v67 = [v65 UTF8String];

              if (!v200)
              {
                _addBulkMethod(buf, v51, v60, v67);
LABEL_129:
                v64 = 0;
                goto LABEL_130;
              }

              _addMethod(v194, aClass, v51, v60, v67, 1);
              v68 = [(objc_class *)v194 _counterpartClass];
              v64 = 1;
              if (v68)
              {
                _addMethod(v68, aClass, v51, v60, v67, 1);
              }
            }

LABEL_130:

            v69 = [v25 setter];
            if (!v69)
            {
              v141 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no setter for %@", v25];
              v142 = MEMORY[0x1E69E9C10];
              v143 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
              {
                [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                objc_claimAutoreleasedReturnValue();
                _realizeSettingsExtension_cold_26();
              }

              v144 = v141;
              [v141 UTF8String];
              _bs_set_crash_log_message();
            }

            [v195 removeObjectIdenticalTo:v69];
            v70 = [v69 selector];
            v71 = NSMapGet(table, v70);
            v72 = v71;
            if (v71)
            {
              if (![v71 isEqual:v40])
              {
                v164 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setting named %@ already exists as %@", v28, v72];
                v165 = MEMORY[0x1E69E9C10];
                v166 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
                {
                  [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                  objc_claimAutoreleasedReturnValue();
                  _realizeSettingsExtension_cold_22();
                }

                v167 = v164;
                [v164 UTF8String];
                _bs_set_crash_log_message();
              }

              v73 = v72;

              v40 = v73;
            }

            else
            {
              if (v29 == 123)
              {
                v74 = [v28 stringByAppendingString:@":"];
                v75 = NSSelectorFromString(v74);
                if (!v75)
                {
                  v76 = v74;
                  v75 = sel_registerName([(NSString *)v74 UTF8String]);
                }

                NSMapInsert(table, v75, v40);
              }

              NSMapInsert(table, v70, v40);
            }

            if (!v200)
            {
              v77 = class_getMethodImplementation(aClass, v70);
              if (v77 != MEMORY[0x1E69E58E8])
              {
                goto LABEL_169;
              }

LABEL_143:
              if (v29 == 123)
              {
                v78 = [v28 stringByAppendingString:@":"];
                v79 = NSSelectorFromString(v78);
                v77 = class_getMethodImplementation(aClass, v79);

                if (v77 != MEMORY[0x1E69E58E8])
                {
                  v80 = 0;
                  goto LABEL_168;
                }

                v83 = [v199 encoding];
                switch(v188)
                {
                  case 3:
                    v84 = v218;
                    v218[0] = MEMORY[0x1E69E9820];
                    v218[1] = 3221225472;
                    v218[2] = ___realizeSettingsExtension_block_invoke_3_283;
                    v218[3] = &unk_1E76BD0B8;
                    break;
                  case 2:
                    v84 = v219;
                    v219[0] = MEMORY[0x1E69E9820];
                    v219[1] = 3221225472;
                    v219[2] = ___realizeSettingsExtension_block_invoke_2_281;
                    v219[3] = &unk_1E76BD090;
                    break;
                  case 1:
                    v84 = v220;
                    v220[0] = MEMORY[0x1E69E9820];
                    v220[1] = 3221225472;
                    v220[2] = ___realizeSettingsExtension_block_invoke_278;
                    v220[3] = &unk_1E76BD068;
                    break;
                  default:
                    v174 = MEMORY[0x1E696AEC0];
                    v175 = [v199 encoding];
                    v176 = [v174 stringWithFormat:@"Struct property %@ is not a supported format (%@) and must be explicitly synthesized using SYNTHESIZE_STRUCT_PROPERTY()", v28, v175];

                    v177 = MEMORY[0x1E69E9C10];
                    v178 = MEMORY[0x1E69E9C10];
                    if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
                    {
                      [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
                      objc_claimAutoreleasedReturnValue();
                      _realizeSettingsExtension_cold_24();
                    }

                    v179 = v176;
                    [v176 UTF8String];
                    _bs_set_crash_log_message();
                }

                v82 = v83;
                v84[4] = v82;
                v85 = (v84 + 4);
                v84[5] = v40;
                v86 = (v84 + 5);
                v80 = MEMORY[0x1A58E80F0](v84);

LABEL_165:
                if (v80)
                {
                  v77 = imp_implementationWithBlock(v80);
                }

                else
                {
                  v77 = MEMORY[0x1E69E58E8];
                }

LABEL_168:

LABEL_169:
                if (v77 && v77 != MEMORY[0x1E69E58E8])
                {
                  v87 = [v69 encoding];
                  v88 = v87;
                  v89 = [v87 UTF8String];

                  if (v200)
                  {
                    _addMethod(v194, aClass, v70, v77, v89, 1);
                    v90 = [(objc_class *)v194 _counterpartClass];
                    if (v90)
                    {
                      _addMethod(v90, aClass, v70, v77, v89, 1);
                    }
                  }

                  else
                  {
                    _addBulkMethod(buf, v70, v77, v89);
                  }
                }

                goto LABEL_175;
              }

              if (v29 == 64)
              {
                v213[0] = MEMORY[0x1E69E9820];
                v213[1] = 3221225472;
                v213[2] = ___realizeSettingsExtension_block_invoke_285;
                v213[3] = &unk_1E76BD0E0;
                v215 = v196;
                v213[4] = v40;
                v214 = v28;
                v216 = v193;
                v217 = v192;
                v80 = MEMORY[0x1A58E80F0](v213);

                v81 = v213;
LABEL_148:
                v82 = v81[4];
                goto LABEL_165;
              }

              if (v29 > 0x41u)
              {
                switch(v29)
                {
                  case 'B':
                    v207[0] = MEMORY[0x1E69E9820];
                    v207[1] = 3221225472;
                    v207[2] = ___realizeSettingsExtension_block_invoke_6_308;
                    v207[3] = &unk_1E76BD1D0;
                    v207[4] = v40;
                    v80 = MEMORY[0x1A58E80F0](v207);
                    v81 = v207;
                    goto LABEL_148;
                  case 'd':
                    v210[0] = MEMORY[0x1E69E9820];
                    v210[1] = 3221225472;
                    v210[2] = ___realizeSettingsExtension_block_invoke_3_302;
                    v210[3] = &unk_1E76BD158;
                    v210[4] = v40;
                    v80 = MEMORY[0x1A58E80F0](v210);
                    v81 = v210;
                    goto LABEL_148;
                  case 'f':
                    v211[0] = MEMORY[0x1E69E9820];
                    v211[1] = 3221225472;
                    v211[2] = ___realizeSettingsExtension_block_invoke_2_300;
                    v211[3] = &unk_1E76BD130;
                    v211[4] = v40;
                    v80 = MEMORY[0x1A58E80F0](v211);
                    v81 = v211;
                    goto LABEL_148;
                }
              }

              else
              {
                switch(v29)
                {
                  case '#':
                    v209[0] = MEMORY[0x1E69E9820];
                    v209[1] = 3221225472;
                    v209[2] = ___realizeSettingsExtension_block_invoke_4_304;
                    v209[3] = &unk_1E76BD180;
                    v209[4] = v40;
                    v80 = MEMORY[0x1A58E80F0](v209);
                    v81 = v209;
                    goto LABEL_148;
                  case '*':
                    v212[0] = MEMORY[0x1E69E9820];
                    v212[1] = 3221225472;
                    v212[2] = ___realizeSettingsExtension_block_invoke_298;
                    v212[3] = &unk_1E76BD108;
                    v212[4] = v40;
                    v80 = MEMORY[0x1A58E80F0](v212);
                    v81 = v212;
                    goto LABEL_148;
                  case ':':
                    v208[0] = MEMORY[0x1E69E9820];
                    v208[1] = 3221225472;
                    v208[2] = ___realizeSettingsExtension_block_invoke_5_306;
                    v208[3] = &unk_1E76BD1A8;
                    v208[4] = v40;
                    v80 = MEMORY[0x1A58E80F0](v208);
                    v81 = v208;
                    goto LABEL_148;
                }
              }

              v206[0] = MEMORY[0x1E69E9820];
              v206[1] = 3221225472;
              v206[2] = ___realizeSettingsExtension_block_invoke_7_310;
              v206[3] = &unk_1E76BD1F8;
              v206[4] = v40;
              v80 = MEMORY[0x1A58E80F0](v206);
              v81 = v206;
              goto LABEL_148;
            }

            if (v64)
            {
              goto LABEL_143;
            }

LABEL_175:

LABEL_176:
            ++v198;
          }

          while (v198 != v191);
          v91 = [obj countByEnumeratingWithState:&v233 objects:v242 count:16];
          v191 = v91;
        }

        while (v91);
      }

      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v92 = v195;
      v93 = [v92 countByEnumeratingWithState:&v202 objects:v237 count:16];
      if (v93)
      {
        v94 = *v203;
        do
        {
          for (i = 0; i != v93; ++i)
          {
            if (*v203 != v94)
            {
              objc_enumerationMutation(v92);
            }

            v96 = *(*(&v202 + 1) + 8 * i);
            InstanceMethod = class_getInstanceMethod(aClass, [v96 selector]);
            v98 = InstanceMethod;
            if (InstanceMethod)
            {
              Name = method_getName(InstanceMethod);
              Implementation = method_getImplementation(v98);
              TypeEncoding = method_getTypeEncoding(v98);
              _addBulkMethod(buf, Name, Implementation, TypeEncoding);
            }

            else
            {
              v102 = FBLogSceneExtension(0);
              if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
              {
                v103 = [v96 name];
                v104 = NSStringFromClass(aClass);
                *v238 = 138412546;
                v239 = v103;
                v240 = 2112;
                v241 = v104;
                _os_log_error_impl(&dword_1A2DBB000, v102, OS_LOG_TYPE_ERROR, "method %@ is not implemented on extension %@; ignoring", v238, 0x16u);
              }
            }
          }

          v93 = [v92 countByEnumeratingWithState:&v202 objects:v237 count:16];
        }

        while (v93);
      }

      _flushBulkMethods(buf);
      v105 = __SelectorsToSettingsMap;
      v106 = [(NSMapTable *)table copy];
      [v105 setObject:v106 forKey:v180];

      v107 = __LegacySettingsToSettingsMap;
      v108 = [(NSMapTable *)v184 copy];
      [v107 setObject:v108 forKey:cls];
    }

    else
    {
      oslog = FBLogSceneExtension(0);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v109 = NSStringFromClass(aClass);
        *buf = 138543362;
        *&buf[4] = v109;
        _os_log_impl(&dword_1A2DBB000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ defines no extension protocol!", buf, 0xCu);
      }
    }
  }
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

_DWORD *OUTLINED_FUNCTION_6_0()
{

  return [(FBSSceneIdentityToken *)v0 _initWithHost:v2 endpoint:v1 target:v3 workspace:v4 identifier:v5];
}

void ___realizeSettingsExtension_block_invoke_6_308(uint64_t a1, void *a2, int a3)
{
  v5 = *(a1 + 32);
  v9 = a2;
  v6 = [(FBSSetting *)v5 isNullPreserving];
  v7 = *MEMORY[0x1E695E4C0];
  if (!v6)
  {
    v7 = 0;
  }

  if (a3)
  {
    v8 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v8 = v7;
  }

  [(FBSSettings *)v9 _setValue:v8 forSetting:*(a1 + 32)];
}

void OUTLINED_FUNCTION_9_3(uint64_t a1)
{

  _FBSApplicationLibraryLogTransaction(a1, 3, 1, v1, v2);
}

NSMapTable *FBSSettingForLegacySetting(void *a1, const void *a2)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    FBSSettingForLegacySetting_cold_2();
  }

  if (!a1)
  {
    FBSSettingForLegacySetting_cold_1();
  }

  os_unfair_lock_lock(&__ExtensionLock);
  if (__LegacySettingsToSettingsMap)
  {
    v4 = NSMapGet(__LegacySettingsToSettingsMap, [a1 _baseClass]);
    v5 = v4;
    if (v4)
    {
      v4 = NSMapGet(v4, a2);
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = v4;
  os_unfair_lock_unlock(&__ExtensionLock);

  return v6;
}

void ___realizeSettingsExtension_block_invoke_7_310(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [(FBSSetting *)*(a1 + 32) isNullPreserving];
  if (a3 || v5)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  }

  else
  {
    v6 = 0;
  }

  [(FBSSettings *)v7 _setValue:v6 forSetting:*(a1 + 32)];
}

id FBSWorkspaceInitialize(void *a1)
{
  v1 = a1;
  os_unfair_lock_lock(&FBSWorkspaceInitialize___initializeLock);
  if (FBSWorkspaceInitialize___initialized == 1)
  {
    os_unfair_lock_unlock(&FBSWorkspaceInitialize___initializeLock);
    goto LABEL_9;
  }

  FBSWorkspaceInitialize___initialized = 1;
  v2 = [FBSWorkspace alloc];
  v3 = +[FBSWorkspaceCoupler _sharedInstance];
  v4 = [(FBSWorkspace *)v2 _initWithCoupler:v3 options:v1];

  v5 = +[FBSWorkspace _findDomainSpecification];
  v6 = [v5 launchIdentifiers];
  v7 = [v6 containsObject:@"com.apple.frontboard.workspace-service"];

  if (v7)
  {
    v8 = +[FBSWorkspace _startWorkspaceListener];
  }

  os_unfair_lock_unlock(&FBSWorkspaceInitialize___initializeLock);
  if (!v4)
  {
LABEL_9:
    FBSWorkspaceInitialize_cold_1();
  }

  return v4;
}

id FBLogSceneExtension(uint64_t a1)
{
  if (FBLogSceneExtension_onceToken != -1)
  {
    FBLogSceneExtension_cold_1();
  }

  v2 = FBLogSceneExtension___logObj;

  return v2;
}

uint64_t __FBLogSceneExtension_block_invoke()
{
  v0 = os_log_create("com.apple.FrontBoard", "SceneExtension");
  v1 = FBLogSceneExtension___logObj;
  FBLogSceneExtension___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t _structDisposition(void *a1)
{
  v1 = a1;
  if ([v1 isStruct])
  {
    v2 = [v1 structFlattenedMembers];
    v3 = [MEMORY[0x1E695DFD8] setWithArray:v2];
    if ([v2 count] < 2 || objc_msgSend(v3, "count") != 1)
    {
      v6 = 4;
LABEL_20:

      goto LABEL_21;
    }

    v4 = [v3 anyObject];
    if ([v4 size] == 8)
    {
      v5 = [v4 type];
      if ([v2 count] != 2)
      {
        v7 = [v2 count];
        if (v5 == 100 && v7 == 4)
        {
          v6 = 3;
        }

        else
        {
          v6 = 4;
        }

        goto LABEL_19;
      }

      v6 = 1;
      if (v5 == 81 || v5 == 113)
      {
LABEL_19:

        goto LABEL_20;
      }

      if (v5 == 100)
      {
        v6 = 2;
        goto LABEL_19;
      }
    }

    v6 = 4;
    goto LABEL_19;
  }

  v6 = 0;
LABEL_21:

  return v6;
}

id getCADisplayClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCADisplayClass_softClass;
  v7 = getCADisplayClass_softClass;
  if (!getCADisplayClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCADisplayClass_block_invoke;
    v3[3] = &unk_1E76BD7D0;
    v3[4] = &v4;
    __getCADisplayClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2DC7550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t QuartzCoreLibrary()
{
  v3 = 0;
  v0 = QuartzCoreLibraryCore(&v3);
  if (!v0)
  {
    QuartzCoreLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

Class __getCADisplayClass_block_invoke(uint64_t a1)
{
  QuartzCoreLibrary();
  result = objc_getClass("CADisplay");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCADisplayClass_block_invoke_cold_1();
  }

  getCADisplayClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t QuartzCoreLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = QuartzCoreLibraryCore_frameworkLibrary;
  v6 = QuartzCoreLibraryCore_frameworkLibrary;
  if (!QuartzCoreLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E76BFB58;
    v8 = *off_1E76BFB68;
    v9 = 0;
    v4[3] = _sl_dlopen();
    QuartzCoreLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1A2DC780C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _flushBulkMethods(uint64_t result)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(result + 24))
  {
    v2 = FBLogSceneExtension(result);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);

    if (v3 && *(result + 24))
    {
      v5 = 4;
      do
      {
        v6 = FBLogSceneExtension(v4);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v8 = NSStringFromSelector(*(result + 8 * v5));
          v9 = NSStringFromClass(*(result + 8));
          v10 = NSStringFromClass(*result);
          *buf = 138412802;
          v27 = v8;
          v28 = 2112;
          v29 = v9;
          v30 = 2112;
          v31 = v10;
          _os_log_debug_impl(&dword_1A2DBB000, v6, OS_LOG_TYPE_DEBUG, "registering method %@ from extension %@ on class %@", buf, 0x20u);
        }

        v7 = v5 - 3;
        ++v5;
      }

      while (v7 < *(result + 24));
    }

    v25 = 0;
    v11 = class_addMethodsBulk();
    v24 = v11;
    *(result + 24) = 0;
    if (v11)
    {
      if (v25)
      {
        for (i = 0; i < v25; ++i)
        {
          v20 = FBLogSceneExtension(v11);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = NSStringFromSelector(*(v24 + 8 * i));
            v22 = NSStringFromClass(*(result + 8));
            v23 = NSStringFromClass(*result);
            *buf = 138412802;
            v27 = v21;
            v28 = 2112;
            v29 = v22;
            v30 = 2112;
            v31 = v23;
            _os_log_error_impl(&dword_1A2DBB000, v20, OS_LOG_TYPE_ERROR, "unable to register method %@ from extension %@ on class %@", buf, 0x20u);
          }
        }
      }

      v12 = MEMORY[0x1E696AEC0];
      v13 = *(result + 16);
      v14 = NSStringFromClass(*result);
      v15 = [v12 stringWithFormat:@"unable to add some methods from <%@> to %@", v13, v14];

      v16 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _flushBulkMethods(struct BulkMethodContext *)"];
        objc_claimAutoreleasedReturnValue();
        _flushBulkMethods_cold_1();
      }

      v18 = v15;
      [v15 UTF8String];
      _bs_set_crash_log_message();
    }

    fbs_free(&v24);
  }
}

void sub_1A2DC7B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  fbs_free(va);
  _Unwind_Resume(a1);
}

uint64_t __FBLogCommon_block_invoke()
{
  v0 = os_log_create("com.apple.FrontBoard", "Common");
  v1 = FBLogCommon___logObj;
  FBLogCommon___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t OUTLINED_FUNCTION_8_3(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);

  return [a1 countByEnumeratingWithState:va objects:va1 count:{16, a6, a7}];
}

void OUTLINED_FUNCTION_13_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_13_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint8_t *a5)
{

  _os_log_impl(a1, v6, OS_LOG_TYPE_DEFAULT, v5, a5, 0x18u);
}

id _gatherProperties(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [v1 inheritedProtocols];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [v9 hasPrefix:@"NS"];

        if ((v10 & 1) == 0)
        {
          v11 = _gatherProperties(v8);
          [v2 addObjectsFromArray:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v12 = MEMORY[0x1E695DFD8];
  v13 = [v1 properties];
  v14 = [v12 setWithArray:v13];

  [v2 minusSet:v14];
  [v2 unionSet:v14];
  v15 = [v2 allObjects];

  return v15;
}

uint64_t FBSProcessResourceAllowanceMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t FBSProcessResourceAllowanceGetValue(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void *NSStringFromProcessResourceAllowance(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [off_1E76BC9B0 builderWithObject:0];
    v3 = [v2 appendObject:@"FBSProcessResourceAllowance" withName:0];
    if (*v1 > 2uLL)
    {
      v4 = @"(unknown)";
    }

    else
    {
      v4 = *(&off_1E76BFB40 + *v1);
    }

    v5 = [v2 appendObject:v4 withName:@"type"];
    v6 = v1[1];
    if ((*v1 - 1) > 1)
    {
      v8 = [v2 appendUInt64:v6 withName:@"value"];
    }

    else
    {
      v7 = [v2 appendTimeInterval:@"timeValue" withName:0 decomposeUnits:v6 / 1000.0];
    }

    v9 = v1[2];
    if (v9)
    {
      if (*v1 == 2)
      {
        v10 = [v2 appendTimeInterval:@"refreshInterval" withName:0 decomposeUnits:v9 / 1000.0];
      }

      else
      {
        v11 = [v2 appendUInt64:? withName:?];
      }
    }

    v1 = [v2 build];
  }

  return v1;
}

id _gatherMethods(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [v1 inheritedProtocols];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [v9 hasPrefix:@"NS"];

        if ((v10 & 1) == 0)
        {
          v11 = _gatherMethods(v8);
          [v2 addObjectsFromArray:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = [v1 methods];
  [v2 addObjectsFromArray:v12];

  v13 = [v2 allObjects];

  return v13;
}

void _addBulkMethod(uint64_t a1, const char *a2, void (*a3)(void), char *a4)
{
  if ([*(a1 + 8) isSubclassOfClass:objc_opt_class()])
  {
    v8 = *a1;
    v9 = *(a1 + 8);

    _addMethod(v8, v9, a2, a3, a4, 0);
  }

  else
  {
    v10 = *(a1 + 24);
    v11 = v10 + 1;
    *(a1 + 24) = v10 + 1;
    v12 = (a1 + 8 * v10);
    v12[4] = a2;
    v12[132] = a3;
    v12[260] = a4;
    if (v11 == 128)
    {

      _flushBulkMethods(a1);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2114;
  return result;
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void _realizeSettingsExtension_cold_35()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"baseClass != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _realizeSettingsExtension(__unsafe_unretained Class, __unsafe_unretained Class)"}];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, v8, v9);
  }

  v7 = v0;
  [v0 UTF8String];
  _bs_set_crash_log_message();
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return [v17 countByEnumeratingWithState:&a9 objects:va count:{16, a6, a7, a8}];
}

id FBLogSceneClient(uint64_t a1)
{
  if (FBLogSceneClient_onceToken != -1)
  {
    FBLogSceneClient_cold_1();
  }

  v2 = FBLogSceneClient___logObj;

  return v2;
}

uint64_t __FBLogSceneClient_block_invoke()
{
  v0 = os_log_create("com.apple.FrontBoard", "SceneClient");
  v1 = FBLogSceneClient___logObj;
  FBLogSceneClient___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id _NSStringFromFBSDisplayLayoutQOS(unsigned int a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%i)", a1];
  }

  else
  {
    v2 = *(&off_1E76BE6F0 + a1);
  }

  return v2;
}

id _serviceQualityForFBSDisplayLayoutQOS(int a1)
{
  if (a1 == 2)
  {
    v1 = [off_1E76BCA50 userInitiated];
  }

  else if (a1 == 1)
  {
    v1 = [off_1E76BCA50 serviceWithClass:21];
  }

  else
  {
    if (a1)
    {
      [off_1E76BCA50 background];
    }

    else
    {
      [off_1E76BCA50 utility];
    }
    v1 = ;
  }

  return v1;
}

BOOL OUTLINED_FUNCTION_31_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

__CFString *FBSDisplayGamutDescription(uint64_t a1)
{
  if ((a1 + 1) >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_1E76BF358[a1 + 1];
  }

  return v2;
}

__CFString *FBSDisplayHDRModeDescription(uint64_t a1)
{
  if ((a1 + 1) >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_1E76BF370[a1 + 1];
  }

  return v2;
}

double ___realizeSettingsExtension_block_invoke_3_263(uint64_t a1, void *a2)
{
  v2 = [a2 valueForSetting:*(a1 + 32)];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

void ___realizeSettingsExtension_block_invoke_3_302(uint64_t a1, void *a2, double a3)
{
  v8 = a2;
  v5 = [(FBSSetting *)*(a1 + 32) isNullPreserving];
  if (fabs(a3) < 2.22044605e-16 && v5 == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  }

  [(FBSSettings *)v8 _setValue:v7 forSetting:*(a1 + 32)];
}

void sub_1A2DCC68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___realizeSettingsExtension_block_invoke_3_283(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v8 = MEMORY[0x1E696B098];
  v9 = *(a1 + 32);
  v10 = v9;
  v11 = a2;
  v12 = [v8 valueWithBytes:&v13 objCType:{objc_msgSend(v9, "UTF8String", *&v13, *&v14, *&v15, *&v16)}];
  [(FBSSettings *)v11 _setValue:v12 forSetting:*(a1 + 40)];
}

id FBLogInterfaceOrientationObserver(uint64_t a1)
{
  if (FBLogInterfaceOrientationObserver_onceToken != -1)
  {
    FBLogInterfaceOrientationObserver_cold_1();
  }

  v2 = FBLogInterfaceOrientationObserver___logObj;

  return v2;
}

uint64_t FBSSceneJetsamPriorityGetJetsamMode(unsigned int a1)
{
  LOBYTE(v1) = 0;
  v2 = a1 >> 8;
  if (a1 >> 8 > 0x7F)
  {
    if (v2 != 128 && v2 != 246 && v2 != 236)
    {
      return v1;
    }

LABEL_8:
    v1 = a1 >> 8;
    return v1;
  }

  if (!v2 || v2 == 10)
  {
    goto LABEL_8;
  }

  return v1;
}

void _ingestPropertiesFromSettingsSubclass(objc_class *a1)
{
  v153[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _ingestPropertiesFromSettingsSubclass_cold_17();
  }

  v1 = a1;
  os_unfair_lock_assert_owner(&__SubclassLock);
  os_unfair_lock_assert_not_owner(&__ExtensionLock);
  if (!__BaseToSubclassMap)
  {
    v2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v3 = __BaseToSubclassMap;
    __BaseToSubclassMap = v2;

    v4 = __BaseToSubclassMap;
    v5 = [MEMORY[0x1E695DFA8] set];
    [v4 setObject:v5 forKey:objc_opt_class()];

    v6 = __BaseToSubclassMap;
    v7 = [MEMORY[0x1E695DFA8] set];
    [v6 setObject:v7 forKey:objc_opt_class()];

    v8 = __BaseToSubclassMap;
    v9 = [MEMORY[0x1E695DFA8] set];
    [v8 setObject:v9 forKey:objc_opt_class()];
  }

  v10 = [(objc_class *)v1 _baseClass];
  v11 = [__BaseToSubclassMap objectForKey:v10];
  if (([v11 containsObject:v1] & 1) == 0)
  {
    [v11 addObject:v1];
    v12 = [(objc_class *)v1 _mutableClass];
    if (v10 != v1)
    {
      v13 = v12;
      if (v12 != v1 && v10 != objc_opt_class())
      {
        v14 = NSStringFromClass(v1);
        v15 = FBLogSceneExtension(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v149 = v14;
          _os_log_impl(&dword_1A2DBB000, v15, OS_LOG_TYPE_DEFAULT, "Ingesting properties from %{public}@...", buf, 0xCu);
        }

        v16 = [(objc_class *)v1 _counterpartClass];
        if ([(objc_class *)v1 isSubclassOfClass:v13])
        {
          if (v10 == v13)
          {
            v17 = v1;
            goto LABEL_17;
          }

          if (v16)
          {
            v17 = v16;
LABEL_17:
            v18 = v1;
            goto LABEL_44;
          }

          v22 = [v14 rangeOfString:@"Mutable"];
          if (v22 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v23 = FBLogSceneExtension(0x7FFFFFFFFFFFFFFFLL);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              _ingestPropertiesFromSettingsSubclass_cold_5();
            }

            v17 = 0;
            v24 = 1;
            goto LABEL_47;
          }

          v25 = v21;
          v26 = MEMORY[0x1E696AEC0];
          v27 = [v14 substringToIndex:v22];
          v28 = [v14 substringFromIndex:v22 + v25];
          v19 = [v26 stringWithFormat:@"%@%@", v27, v28];

          v29 = NSClassFromString(v19);
          v30 = FBLogSceneExtension(v29);
          v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
          if (v29)
          {
            if (v31)
            {
              _ingestPropertiesFromSettingsSubclass_cold_1();
            }
          }

          else if (v31)
          {
            _ingestPropertiesFromSettingsSubclass_cold_4();
          }

          v18 = v1;
        }

        else
        {
          if (v16)
          {
            v17 = v1;
            v18 = v16;
            goto LABEL_44;
          }

          v19 = [MEMORY[0x1E696AB08] lowercaseLetterCharacterSet];
          if (![v14 length])
          {
            goto LABEL_28;
          }

          v20 = 0;
          while (([(NSString *)v19 characterIsMember:[v14 characterAtIndex:v20]]& 1) == 0)
          {
            if (++v20 >= [v14 length])
            {
              goto LABEL_28;
            }
          }

          if (v20 < 2)
          {
LABEL_28:
            v18 = 0;
LABEL_42:

            if (!v1)
            {
              v17 = 0;
              v24 = 1;
              goto LABEL_46;
            }

            v17 = v1;
LABEL_44:
            if (v17 == [v17 _baseClass])
            {
              _ingestPropertiesFromSettingsSubclass_cold_16();
            }

            v38 = [v11 addObject:v17];
            v24 = 0;
LABEL_46:
            v1 = v18;
            if (!v18)
            {
LABEL_49:
              v39 = FBLogSceneExtension(v38);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v149 = v14;
                _os_log_impl(&dword_1A2DBB000, v39, OS_LOG_TYPE_DEFAULT, "Unable to determine counterpart class for %{public}@.", buf, 0xCu);
              }

              goto LABEL_157;
            }

LABEL_47:
            if (v1 == [(objc_class *)v1 _mutableClass])
            {
              _ingestPropertiesFromSettingsSubclass_cold_15();
            }

            v38 = [v11 addObject:v1];
            if (v24)
            {
              goto LABEL_49;
            }

            if (!v16)
            {
              [v17 _setCounterpartClass:v1];
              [(objc_class *)v1 _setCounterpartClass:v17];
            }

            outCount = 0;
            v40 = class_copyPropertyList(v1, &outCount);
            v144 = v40;
            if (outCount)
            {
              v127 = NSStringFromClass(v17);

              v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[derived]", v127];
              v42 = NSProtocolFromString(v41);
              v125 = v41;
              LOBYTE(v41) = v42 == 0;

              if ((v41 & 1) == 0)
              {
                v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"a protocol named %@ already exists", v125];
                v101 = MEMORY[0x1E69E9C10];
                v102 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                {
                  [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _ingestPropertiesFromSettingsSubclass(__unsafe_unretained Class)"];
                  objc_claimAutoreleasedReturnValue();
                  _ingestPropertiesFromSettingsSubclass_cold_6();
                }

                v103 = v100;
                [v100 UTF8String];
                _bs_set_crash_log_message();
              }

              v128 = [off_1E76BC9F0 protocolWithName:v125];
              v126 = [(objc_class *)v1 _legacyDescriptionProvider];
              if (!v126)
              {
                v104 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"mutableInstance != nil"];
                v105 = MEMORY[0x1E69E9C10];
                v106 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                {
                  [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _ingestPropertiesFromSettingsSubclass(__unsafe_unretained Class)"];
                  objc_claimAutoreleasedReturnValue();
                  _ingestPropertiesFromSettingsSubclass_cold_12();
                }

                v107 = v104;
                [v104 UTF8String];
                _bs_set_crash_log_message();
              }

              if (outCount)
              {
                v43 = 0;
                v118 = *MEMORY[0x1E695E4D0];
                do
                {
                  v44 = v144[v43];
                  v45 = [MEMORY[0x1E696AEC0] bs_stringWithUTF8String:property_getName(v44)];
                  v46 = FBLogSceneExtension(v45);
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v149 = v45;
                    _os_log_debug_impl(&dword_1A2DBB000, v46, OS_LOG_TYPE_DEBUG, "Checking property %@...", buf, 0xCu);
                  }

                  if (([v45 isEqualToString:@"hash"]& 1) != 0 || ([v45 isEqualToString:@"superclass"]& 1) != 0 || ([v45 isEqualToString:@"description"]& 1) != 0 || ([v45 isEqualToString:@"debugDescription"]& 1) != 0)
                  {
                    goto LABEL_112;
                  }

                  v143 = 0;
                  v47 = [off_1E76BCA08 propertyWithProperty:v44 error:&v143];
                  v48 = v143;
                  v124 = v48;
                  if (!v47)
                  {
                    v51 = v48;
                    v47 = FBLogSceneExtension(v48);
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                    {
                      v52 = [v51 descriptionWithMultilinePrefix:0];
                      *buf = 138412546;
                      v149 = v45;
                      v150 = 2112;
                      v151 = v52;
                      _os_log_debug_impl(&dword_1A2DBB000, v47, OS_LOG_TYPE_DEBUG, "Skipping %@ due to error building property: %@", buf, 0x16u);
                    }

                    goto LABEL_111;
                  }

                  v49 = [v47 isReadOnly];
                  if (v49)
                  {
                    v50 = FBLogSceneExtension(v49);
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v149 = v45;
                      _os_log_debug_impl(&dword_1A2DBB000, v50, OS_LOG_TYPE_DEBUG, "Skipping %@ since it is readonly", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v53 = [v47 setter];
                    aSelector = [v53 selector];

                    v123 = [(objc_class *)v1 instancesRespondToSelector:aSelector];
                    if (!v123 || (-[NSObject getter](v47, "getter"), v54 = objc_claimAutoreleasedReturnValue(), v55 = [v17 instancesRespondToSelector:{objc_msgSend(v54, "selector")}], v54, (v55 & 1) != 0))
                    {
                      [v128 addProperty:v47];
                      v139 = 0;
                      v140 = &v139;
                      v141 = 0x2020000000;
                      v142 = 0;
                      v135 = 0;
                      v136 = &v135;
                      v137 = 0x2020000000;
                      v138 = 0;
                      if (!v123)
                      {
                        v138 = 0x7FFFFFFFFFFFFFFFLL;
                        v142 = 1;
                        goto LABEL_105;
                      }

                      context = objc_autoreleasePoolPush();
                      if ((objc_opt_respondsToSelector() & 1) == 0)
                      {
                        v108 = MEMORY[0x1E696AEC0];
                        v109 = NSStringFromSelector(aSelector);
                        v110 = [v108 stringWithFormat:@"instance doesn't respond to %@", v109];

                        v111 = MEMORY[0x1E69E9C10];
                        v112 = MEMORY[0x1E69E9C10];
                        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
                        {
                          [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _ingestPropertiesFromSettingsSubclass(__unsafe_unretained Class)"];
                          objc_claimAutoreleasedReturnValue();
                          _ingestPropertiesFromSettingsSubclass_cold_8();
                        }

                        v113 = v110;
                        [v110 UTF8String];
                        _bs_set_crash_log_message();
                      }

                      v117 = [v47 value];
                      v57 = [(__CFString *)v117 type];
                      v59 = v57;
                      if (v57 <= 0x3Fu)
                      {
                        if (v57 == 35)
                        {
                          v62 = objc_opt_class();
                        }

                        else
                        {
                          v62 = aSelector;
                          if (v57 != 58)
                          {
                            if (v57 == 63)
                            {
                              v82 = [MEMORY[0x1E696AEC0] stringWithFormat:@"type cannot be unknown"];
                              v83 = MEMORY[0x1E69E9C10];
                              v84 = MEMORY[0x1E69E9C10];
                              if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                              {
                                v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _ingestPropertiesFromSettingsSubclass(__unsafe_unretained Class)"];
                                *buf = 138544130;
                                v149 = v85;
                                v150 = 2114;
                                v151 = @"FBSSceneExtension.m";
                                v152 = 1024;
                                LODWORD(v153[0]) = 1047;
                                WORD2(v153[0]) = 2114;
                                *(v153 + 6) = v82;
                                _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
                              }

                              v86 = v82;
                              [v82 UTF8String];
                              _bs_set_crash_log_message();
                            }

                            goto LABEL_120;
                          }
                        }

                        [v126 aSelector];
                        goto LABEL_92;
                      }

                      if (v57 == 64)
                      {
                        v60 = [(__CFString *)v117 objectClass];
                        if (v60)
                        {
                          if (v60 == objc_opt_class())
                          {
                            v61 = v118;
                          }

                          else
                          {
                            v61 = [FBSObjectProxy proxyForClass:v60];
                          }
                        }

                        else
                        {
                          v63 = objc_opt_class();
                          v61 = [FBSObjectProxy proxyForClass:v63];
                        }

                        v64 = v61;
                        [v126 aSelector];

LABEL_92:
                        v65 = 0;
LABEL_93:
                        v66 = [(FBSSettings *)v126 _legacyOtherSettings];
                        v67 = [v66 allSettings];
                        if ([v67 count] == 1)
                        {
                          v134[0] = MEMORY[0x1E69E9820];
                          v134[1] = 3221225472;
                          v134[2] = ___ingestPropertiesFromSettingsSubclass_block_invoke;
                          v134[3] = &unk_1E76BD220;
                          v134[4] = &v135;
                          v134[5] = &v139;
                          [v67 enumerateWithBlock:v134];
                        }

                        else
                        {
                          v68 = [v67 count];
                          if (v68)
                          {
                            v69 = FBLogSceneExtension(v68);
                            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
                            {
                              v114 = NSStringFromClass(v1);
                              v70 = NSStringFromSelector(aSelector);
                              *buf = 138412546;
                              v149 = v114;
                              v150 = 2112;
                              aSelectora = v70;
                              v151 = v70;
                              _os_log_debug_impl(&dword_1A2DBB000, v69, OS_LOG_TYPE_DEBUG, "Calling [%@ %@] produced multiple settings changes. Ignoring this property.", buf, 0x16u);
                            }
                          }

                          else if (v65)
                          {
                            v69 = FBLogSceneExtension(0);
                            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
                            {
                              v71 = [(__CFString *)v117 encoding];
                              *buf = 138543618;
                              v149 = v45;
                              v150 = 2114;
                              aSelectorb = v71;
                              v151 = v71;
                              _os_log_debug_impl(&dword_1A2DBB000, v69, OS_LOG_TYPE_DEBUG, "Ignoring property %{public}@ because %{public}@ is not a supported encoding.", buf, 0x16u);
                            }
                          }

                          else
                          {
                            v69 = FBLogSceneExtension(0);
                            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
                            {
                              v115 = NSStringFromClass(v1);
                              aSelectorc = NSStringFromSelector(aSelector);
                              *buf = 138412546;
                              v149 = v115;
                              v150 = 2112;
                              v151 = aSelectorc;
                              _os_log_debug_impl(&dword_1A2DBB000, v69, OS_LOG_TYPE_DEBUG, "Calling [%@ %@] produced no settings changes. Ignoring this property.", buf, 0x16u);
                            }
                          }
                        }

                        [v66 removeAllSettings];

                        objc_autoreleasePoolPop(context);
LABEL_105:
                        v72 = [v128 removeProperty:v47];
                        if (*(v140 + 24) == 1)
                        {
                          v73 = FBLogSceneExtension(v72);
                          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 138412802;
                            v77 = "modern";
                            if (v123)
                            {
                              v77 = "legacy";
                            }

                            v149 = v45;
                            v150 = 2080;
                            v151 = v77;
                            v152 = 2112;
                            v153[0] = v125;
                            _os_log_debug_impl(&dword_1A2DBB000, v73, OS_LOG_TYPE_DEBUG, "Adding %@ as a %s property to %@", buf, 0x20u);
                          }

                          if (v123)
                          {
                            v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v136[3]];
                            v146 = @"#";
                            v147 = v74;
                            v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
                            v76 = [v47 copyAddingCustomAttributes:v75];

                            v47 = v76;
                          }

                          [v128 addProperty:v47];
                        }

                        _Block_object_dispose(&v135, 8);
                        _Block_object_dispose(&v139, 8);
                        goto LABEL_111;
                      }

                      if (v57 == 66)
                      {
LABEL_115:
                        [v126 aSelector];
                        goto LABEL_92;
                      }

LABEL_120:
                      if ((v57 & 0xFFFFFFFD) == 0x64)
                      {
                        LODWORD(v58) = 1.0;
                        [v126 aSelector];
                        goto LABEL_92;
                      }

                      v78 = v57 - 40;
                      if (v78 <= 0x3A)
                      {
                        if (((1 << (v57 - 40)) & 0x448000000000001) != 0)
                        {
                          v79 = FBLogSceneExtension(v57);
                          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 138412546;
                            v149 = v45;
                            v150 = 1024;
                            LODWORD(v151) = v59;
                            _os_log_debug_impl(&dword_1A2DBB000, v79, OS_LOG_TYPE_DEBUG, "Skipping %@ because this type (%d) is not supported", buf, 0x12u);
                          }

                          goto LABEL_127;
                        }

                        if (v78 == 2)
                        {
                          [v126 aSelector];
                          goto LABEL_92;
                        }
                      }

                      if (v57 != 123)
                      {
                        goto LABEL_115;
                      }

                      v80 = _structDisposition(v117);
                      switch(v80)
                      {
                        case 3:
                          [v126 aSelector];
                          goto LABEL_92;
                        case 2:
                          [v126 aSelector];
                          goto LABEL_92;
                        case 1:
                          [v126 aSelector];
                          goto LABEL_92;
                      }

                      v81 = FBLogSceneExtension(v80);
                      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412546;
                        v149 = v45;
                        v150 = 2112;
                        v151 = v117;
                        _os_log_debug_impl(&dword_1A2DBB000, v81, OS_LOG_TYPE_DEBUG, "Skipping %@ because this struct is not supported: %@", buf, 0x16u);
                      }

LABEL_127:
                      v65 = 1;
                      goto LABEL_93;
                    }

                    v50 = FBLogSceneExtension(v56);
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v149 = v45;
                      _os_log_debug_impl(&dword_1A2DBB000, v50, OS_LOG_TYPE_DEBUG, "Skipping %@ since it defines a setter but no getter", buf, 0xCu);
                    }
                  }

LABEL_111:
LABEL_112:

                  ++v43;
                }

                while (v43 < outCount);
              }

              v87 = [v128 properties];
              v88 = [v87 count] == 0;

              if (v88)
              {
                v93 = FBLogSceneExtension(v89);
                if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
                {
                  v96 = NSStringFromClass(v1);
                  _ingestPropertiesFromSettingsSubclass_cold_11(v96, buf, v93);
                }
              }

              else
              {
                v90 = FBLogSceneExtension(v89);
                if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
                {
                  v97 = NSStringFromClass(v1);
                  v98 = [v128 properties];
                  v99 = [v98 count];
                  *buf = 138543874;
                  v149 = v125;
                  v150 = 2114;
                  v151 = v97;
                  v152 = 2048;
                  v153[0] = v99;
                  _os_log_debug_impl(&dword_1A2DBB000, v90, OS_LOG_TYPE_DEBUG, "Derived protocol <%{public}@> from %{public}@ with %lu properties.", buf, 0x20u);
                }

                v91 = [v128 copy];
                v92 = [(FBSSettingsExtension *)FBSDerivedSettingsExtension extensionForBSObjCProtocol:v91];

                v129[0] = MEMORY[0x1E69E9820];
                v129[1] = 3221225472;
                v130 = ___ingestPropertiesFromSettingsSubclass_block_invoke_399;
                v131 = &__block_descriptor_48_e5_v8__0lu32l8u40l8;
                v132 = v17;
                v133 = v92;
                v93 = v129;
                os_unfair_lock_lock(&__ExtensionLock);
                (v130)(v93);
                os_unfair_lock_unlock(&__ExtensionLock);
              }

              v94 = v125;
            }

            else
            {
              v94 = FBLogSceneExtension(v40);
              if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
              {
                v95 = NSStringFromClass(v1);
                _ingestPropertiesFromSettingsSubclass_cold_14(v95, buf, v94);
              }

              v127 = v14;
            }

            fbs_free(&v144);
            v14 = v127;
LABEL_157:

            goto LABEL_158;
          }

          v32 = v20 - 1;
          v33 = MEMORY[0x1E696AEC0];
          v34 = [v14 substringToIndex:v20 - 1];
          v35 = [v14 substringFromIndex:v32];
          v30 = [v33 stringWithFormat:@"%@Mutable%@", v34, v35];

          v18 = NSClassFromString(&v30->isa);
          v36 = FBLogSceneExtension(v18);
          v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG);
          if (v18)
          {
            if (v37)
            {
              _ingestPropertiesFromSettingsSubclass_cold_1();
            }
          }

          else if (v37)
          {
            _ingestPropertiesFromSettingsSubclass_cold_2();
          }

          v29 = v1;
        }

        v1 = v29;
        goto LABEL_42;
      }
    }
  }

LABEL_158:
}

void sub_1A2DCEC8C()
{
  objc_end_catch();
  _Block_object_dispose(&v1, 8);
  _Block_object_dispose((v0 - 232), 8);
  JUMPOUT(0x1A2DCED50);
}

void sub_1A2DCED5C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1A2DCED68);
}

uint64_t ___ingestPropertiesFromSettingsSubclass_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

__CFString *NSStringFromFBSSceneLayerType(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(undefined: %ld)", a1];
  }

  else
  {
    v2 = off_1E76BF2D8[a1];
  }

  return v2;
}

double ___realizeSettingsExtension_block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  v3 = [a2 valueForSetting:*(a1 + 32)];
  [v3 getValue:v5 size:*(a1 + 40)];

  return *v5;
}

void FBSSettingForExtensionSelector_cold_1()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"settingsClass != ((void*)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"FBSSetting * _Nullable FBSSettingForExtensionSelector(__unsafe_unretained Class _Nonnull, SEL _Nonnull)"}];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_4_0(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, v7, v8);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
}

void OUTLINED_FUNCTION_14(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  [(FBSWorkspaceScenesClient *)v2 _executeCalloutFromHostEvent:va withBlock:?];
}

unint64_t OUTLINED_FUNCTION_14_0(unint64_t result, float a2)
{
  *&STACK[0x2C0] = a2;
  STACK[0x2C4] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);

  return [v48 countByEnumeratingWithState:&a17 objects:va count:{16, a6, a7, a8}];
}

void FBSProcessResourceAllowanceMakeWithScheduledTimeInterval(void *a1@<X8>, double a2@<D0>)
{
  v2 = (a2 * 1000.0);
  if (a2 <= 0.0)
  {
    v2 = 0;
  }

  *a1 = 2;
  a1[1] = v2;
  a1[2] = 0;
}

id OUTLINED_FUNCTION_29_0()
{

  return v0;
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x26u);
}

void OUTLINED_FUNCTION_7_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1, uint64_t a2)
{

  return objc_opt_class();
}

__n128 OUTLINED_FUNCTION_7_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14)
{
  result = a14;
  *(v16 - 256) = a14.n128_u32[0];
  *(v16 - 252) = v14;
  *(v16 - 248) = 1024;
  *(v16 - 246) = v15;
  *(v16 - 242) = 2114;
  *(v16 - 240) = a1;
  return result;
}

void OUTLINED_FUNCTION_10_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);

  return [v12 countByEnumeratingWithState:va objects:va1 count:{16, a6}];
}

uint64_t OUTLINED_FUNCTION_10_3(uint64_t a1)
{

  return [v1 applySettings:a1];
}

uint64_t OUTLINED_FUNCTION_10_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);

  return [a16 countByEnumeratingWithState:va objects:v40 - 232 count:{16, a6, a7, a8}];
}

id OUTLINED_FUNCTION_12_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{

  return a16;
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return objc_opt_respondsToSelector();
}

id FBSFrameworkBundle(uint64_t a1)
{
  if (FBSFrameworkBundle___once != -1)
  {
    FBSFrameworkBundle_cold_1();
  }

  v2 = FBSFrameworkBundle___bundle;

  return v2;
}

uint64_t __FBSFrameworkBundle_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = FBSFrameworkBundle___bundle;
  FBSFrameworkBundle___bundle = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void sub_1A2DD3468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

id FBSAllSettings(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] set];
  os_unfair_lock_lock(&__ExtensionLock);
  if (__SelectorsToSettingsMap)
  {
    v3 = [a1 _baseClass];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = NSAllMapTableKeys(__SelectorsToSettingsMap);
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if ([v9 isSubclassOfClass:{v3, v14}])
          {
            v10 = NSMapGet(__SelectorsToSettingsMap, v9);
            v11 = v10;
            if (v10)
            {
              v12 = NSAllMapTableValues(v10);
            }

            else
            {
              v12 = 0;
            }

            [v2 addObjectsFromArray:v12];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  os_unfair_lock_unlock(&__ExtensionLock);

  return v2;
}

id FBSAllSettingsFromProtocol(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [off_1E76BCA10 protocolForProtocol:v3];
  v6 = _gatherProperties(v5);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

        v11 = [*(*(&v14 + 1) + 8 * i) getter];
        v12 = FBSSettingForSelector(a1, [v11 selector]);

        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v4;
}

id FBSSettingNameForSelector(void *a1, const void *a2)
{
  if (a1)
  {
    v3 = [a1 _baseClass];
LABEL_3:
    v4 = FBSSettingForExtensionSelector(v3, a2);
    v5 = [(FBSSetting *)v4 name];

    goto LABEL_6;
  }

  v6 = objc_opt_class();
  v7 = FBSSettingForExtensionSelector(v6, a2);
  v5 = [(FBSSetting *)v7 name];

  if (!v5)
  {
    v8 = objc_opt_class();
    v9 = FBSSettingForExtensionSelector(v8, a2);
    v5 = [(FBSSetting *)v9 name];

    if (!v5)
    {
      v3 = objc_opt_class();
      goto LABEL_3;
    }
  }

LABEL_6:

  return v5;
}

uint64_t ___realizeSettingsExtension_block_invoke(uint64_t a1, void *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  v3 = [a2 valueForSetting:*(a1 + 32)];
  [v3 getValue:v5 size:*(a1 + 40)];

  return v5[0];
}

float ___realizeSettingsExtension_block_invoke_2_261(uint64_t a1, void *a2)
{
  v2 = [a2 valueForSetting:*(a1 + 32)];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

uint64_t ___realizeSettingsExtension_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 valueForSetting:*(a1 + 32)];
  v3 = [v2 UTF8String];

  return v3;
}

SEL ___realizeSettingsExtension_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 valueForSetting:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    v4 = NSSelectorFromString(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void _addMethod(objc_class *a1, objc_class *a2, SEL name, IMP imp, char *types, int a6)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _addMethod_cold_6();
  }

  if (!a2)
  {
    _addMethod_cold_5();
  }

  if (!name)
  {
    _addMethod_cold_4();
  }

  if (!imp)
  {
    _addMethod_cold_3();
  }

  if (!types)
  {
    _addMethod_cold_2();
  }

  if (!a6)
  {
    v15 = class_addMethod(a1, name, imp, types);
    v16 = v15;
    v17 = FBLogSceneExtension(v15);
    v11 = v17;
    if (!v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromSelector(name);
        v19 = NSStringFromClass(a2);
        v20 = NSStringFromClass(a1);
        *buf = 138412802;
        v27 = v18;
        v28 = 2112;
        v29 = v19;
        v30 = 2112;
        v31 = v20;
        _os_log_error_impl(&dword_1A2DBB000, v11, OS_LOG_TYPE_ERROR, "unable to register method %@ from extension %@ on class %@", buf, 0x20u);
      }

      v21 = MEMORY[0x1E696AEC0];
      v22 = NSStringFromSelector(name);
      v23 = NSStringFromClass(a2);
      v24 = NSStringFromClass(a1);
      v25 = [v21 stringWithFormat:@"unable to register method %@ from extension %@ on class %@", v22, v23, v24];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        _addMethod_cold_1(v25);
      }

      [v25 UTF8String];
      _bs_set_crash_log_message();
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v12 = NSStringFromSelector(name);
    v13 = NSStringFromClass(a2);
    v14 = NSStringFromClass(a1);
    *buf = 138412802;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v14;
    _os_log_debug_impl(&dword_1A2DBB000, v11, OS_LOG_TYPE_DEBUG, "registered method %@ from extension %@ on class %@", buf, 0x20u);
    goto LABEL_16;
  }

  v10 = class_replaceMethod(a1, name, imp, types);
  if (v10 && v10 != imp)
  {
    v11 = FBLogSceneExtension(v10);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      return;
    }

    v12 = NSStringFromSelector(name);
    v13 = NSStringFromClass(a2);
    v14 = NSStringFromClass(a1);
    *buf = 138543874;
    v27 = v12;
    v28 = 2114;
    v29 = v13;
    v30 = 2114;
    v31 = v14;
    _os_log_error_impl(&dword_1A2DBB000, v11, OS_LOG_TYPE_ERROR, "replaced @selector(%{public}@) from extension %{public}@ that was already implemented on %{public}@.", buf, 0x20u);
LABEL_16:

    goto LABEL_13;
  }
}

void ___realizeSettingsExtension_block_invoke_278(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v12 = a4;
  v6 = MEMORY[0x1E696B098];
  v7 = *(a1 + 32);
  v8 = v7;
  v9 = a2;
  v10 = [v6 valueWithBytes:&v11 objCType:{objc_msgSend(v7, "UTF8String", v11, v12)}];
  [(FBSSettings *)v9 _setValue:v10 forSetting:*(a1 + 40)];
}

void ___realizeSettingsExtension_block_invoke_2_281(uint64_t a1, void *a2, double a3, double a4)
{
  v11 = a3;
  v12 = a4;
  v6 = MEMORY[0x1E696B098];
  v7 = *(a1 + 32);
  v8 = v7;
  v9 = a2;
  v10 = [v6 valueWithBytes:&v11 objCType:{objc_msgSend(v7, "UTF8String", *&v11, *&v12)}];
  [(FBSSettings *)v9 _setValue:v10 forSetting:*(a1 + 40)];
}

void ___realizeSettingsExtension_block_invoke_298(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    a3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
  }

  [(FBSSettings *)v5 _setValue:a3 forSetting:*(a1 + 32)];
}

void ___realizeSettingsExtension_block_invoke_2_300(uint64_t a1, void *a2, float a3)
{
  v9 = a2;
  v5 = [(FBSSetting *)*(a1 + 32) isNullPreserving];
  if (fabsf(a3) < 0.00000011921 && v5 == 0)
  {
    v8 = 0;
  }

  else
  {
    *&v6 = a3;
    v8 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  }

  [(FBSSettings *)v9 _setValue:v8 forSetting:*(a1 + 32)];
}

void ___realizeSettingsExtension_block_invoke_4_304(uint64_t a1, void *a2, objc_class *a3)
{
  v5 = a2;
  if (a3)
  {
    a3 = NSStringFromClass(a3);
  }

  [(FBSSettings *)v5 _setValue:a3 forSetting:*(a1 + 32)];
}

void ___realizeSettingsExtension_block_invoke_5_306(uint64_t a1, void *a2, char *a3)
{
  v5 = a2;
  if (a3)
  {
    a3 = NSStringFromSelector(a3);
  }

  [(FBSSettings *)v5 _setValue:a3 forSetting:*(a1 + 32)];
}

void OUTLINED_FUNCTION_1(uint64_t a1@<X1>, uint64_t a2@<X2>, __int16 a3@<W8>)
{
  *(a2 + 24) = v3;
  *(a2 + 28) = a3;
  *(a2 + 30) = a1;
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

__CFString *NSStringFromFBSApplicationTrustState(unint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%d)", a1];
  }

  else
  {
    v2 = off_1E76BD240[a1];
  }

  return v2;
}

void sub_1A2DD6610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  fbs_release(va);
  _Unwind_Resume(a1);
}

void sub_1A2DD6D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  fbs_release(va);
  _Unwind_Resume(a1);
}

void sub_1A2DD84A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2DDC364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2DDD3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void sub_1A2DDD65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FBSLogApplicationLibrary(uint64_t a1)
{
  if (FBSLogApplicationLibrary_onceToken != -1)
  {
    FBSLogApplicationLibrary_cold_1();
  }

  v2 = FBSLogApplicationLibrary___logObj;

  return v2;
}

uint64_t __FBSLogApplicationLibrary_block_invoke()
{
  v0 = os_log_create("com.apple.frontboard.ApplicationLibrary", "default");
  v1 = FBSLogApplicationLibrary___logObj;
  FBSLogApplicationLibrary___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id FBSLogApplicationLibraryObserver(uint64_t a1)
{
  if (FBSLogApplicationLibraryObserver_onceToken != -1)
  {
    FBSLogApplicationLibraryObserver_cold_1();
  }

  v2 = FBSLogApplicationLibraryObserver___logObj;

  return v2;
}

uint64_t __FBSLogApplicationLibraryObserver_block_invoke()
{
  v0 = os_log_create("com.apple.frontboard.ApplicationLibrary", "observer");
  v1 = FBSLogApplicationLibraryObserver___logObj;
  FBSLogApplicationLibraryObserver___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id FBSLogApplicationPlaceholder(uint64_t a1)
{
  if (FBSLogApplicationPlaceholder_onceToken != -1)
  {
    FBSLogApplicationPlaceholder_cold_1();
  }

  v2 = FBSLogApplicationPlaceholder___logObj;

  return v2;
}

uint64_t __FBSLogApplicationPlaceholder_block_invoke()
{
  v0 = os_log_create("com.apple.frontboard.ApplicationLibrary", "placeholder");
  v1 = FBSLogApplicationPlaceholder___logObj;
  FBSLogApplicationPlaceholder___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t UIKitServicesLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = UIKitServicesLibraryCore_frameworkLibrary;
  v6 = UIKitServicesLibraryCore_frameworkLibrary;
  if (!UIKitServicesLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E76BD778;
    v8 = *off_1E76BD788;
    v9 = 0;
    v4[3] = _sl_dlopen();
    UIKitServicesLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1A2DDF3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __UIKitServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  UIKitServicesLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getUISApplicationStateClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getUISApplicationStateClass_softClass;
  v6 = getUISApplicationStateClass_softClass;
  if (!getUISApplicationStateClass_softClass)
  {
    UIKitServicesLibraryCore(0);
    v4[3] = objc_getClass("UISApplicationState");
    getUISApplicationStateClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1A2DDF568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUISApplicationStateClass_block_invoke(uint64_t a1)
{
  UIKitServicesLibraryCore(0);
  result = objc_getClass("UISApplicationState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUISApplicationStateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A2DDFA64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id FBSOpenApplicationErrorCreate(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  if (a1)
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = FBSOpenApplicationErrorCodeToString(a1);
    [v11 bs_setSafeObject:v12 forKey:*off_1E76BC958];

    if (v10)
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v10 arguments:&a9];
      [v11 bs_setSafeObject:v13 forKey:*MEMORY[0x1E696A588]];
    }

    a1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FBSOpenApplicationErrorDomain" code:a1 userInfo:v11];
  }

  return a1;
}

__CFString *FBSOpenApplicationErrorCodeToString(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return 0;
  }

  else
  {
    return off_1E76BD988[a1];
  }
}

__CFString *FBSOpenApplicationServiceErrorCodeToString(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E76BD9E0[a1];
  }
}

__CFString *NSStringFromFBSApplicationPlaceholderAction(unint64_t a1)
{
  if (a1 > 8)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E76BDBA0[a1];
  }
}

void sub_1A2DE24EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 176), 8);
  _Block_object_dispose((v32 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2DE2C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FBSWorkspaceErrorCreate(void *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a1;
  v12 = a3;
  v13 = [MEMORY[0x1E695DF90] dictionary];
  v14 = NSStringFromFBSWorkspaceErrorCode(a2);
  if (v14)
  {
    [v13 setObject:v14 forKey:*off_1E76BC958];
  }

  if (v11)
  {
    [v13 setObject:v11 forKey:*MEMORY[0x1E696AA08]];
  }

  if (v12)
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v12 arguments:&a9];
    [v13 setObject:v15 forKey:*MEMORY[0x1E696A588]];
  }

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FBSWorkspaceErrorDomain" code:a2 userInfo:v13];

  return v16;
}

__CFString *NSStringFromFBSWorkspaceErrorCode(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown - %ld)", a1];
  }

  else
  {
    v2 = off_1E76BDD20[a1];
  }

  return v2;
}

void sub_1A2DE5CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2DE615C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *FBSApplicationTerminationReasonDescription(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"<unknown termination reason>";
  }

  else
  {
    return off_1E76BDD58[a1];
  }
}

__CFString *FBSApplicationTerminationGroupDescription(uint64_t a1)
{
  v1 = @"<unknown>";
  if (a1 == 1)
  {
    v1 = @"all applications";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"foreground applications";
  }
}

__CFString *NSStringFromFBSOpenApplicationLaunchIntent(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E76BDF28[a1];
  }
}

__CFString *NSStringFromFBSSceneInterruptionPolicy(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_1E76BDFA0[a1];
  }

  return v2;
}

__CFString *FBSProcessExceptionCodeDescription(uint64_t a1)
{
  v1 = @"Force Quit";
  if (a1 != 4227595259)
  {
    v1 = 0;
  }

  if (a1 == 3735943697)
  {
    v2 = @"User Initiated Quit";
  }

  else
  {
    v2 = v1;
  }

  v3 = @"Resource Exclusion";
  if (a1 != 3735883980)
  {
    v3 = 0;
  }

  if (a1 == 3221229823)
  {
    v4 = @"Thermal Pressure";
  }

  else
  {
    v4 = v3;
  }

  if (a1 <= 3735943696)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  v6 = @"(none)";
  v7 = @"Watchdog Violation";
  if (a1 != 2343432205)
  {
    v7 = 0;
  }

  if (a1 == 732775916)
  {
    v8 = @"Security Violation";
  }

  else
  {
    v8 = v7;
  }

  if (a1)
  {
    v6 = v8;
  }

  if (a1 <= 3221229822)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

void sub_1A2DECA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

uint64_t SecurityLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = SecurityLibraryCore_frameworkLibrary;
  v6 = SecurityLibraryCore_frameworkLibrary;
  if (!SecurityLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E76BE058;
    v8 = *off_1E76BE068;
    v9 = 0;
    v4[3] = _sl_dlopen();
    SecurityLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1A2DED4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SecurityLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  SecurityLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SecurityLibrary()
{
  v3 = 0;
  v0 = SecurityLibraryCore(&v3);
  if (!v0)
  {
    SecurityLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

uint64_t getSecCertificateCreateWithDataSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getSecCertificateCreateWithDataSymbolLoc_ptr;
  v6 = getSecCertificateCreateWithDataSymbolLoc_ptr;
  if (!getSecCertificateCreateWithDataSymbolLoc_ptr)
  {
    v1 = SecurityLibrary();
    v4[3] = dlsym(v1, "SecCertificateCreateWithData");
    getSecCertificateCreateWithDataSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DED69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSecCertificateCreateWithDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SecurityLibrary();
  result = dlsym(v2, "SecCertificateCreateWithData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSecCertificateCreateWithDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_SecCertificateCreateWithData(uint64_t a1, uint64_t a2)
{
  v4 = getSecCertificateCreateWithDataSymbolLoc();
  if (!v4)
  {
    soft_SecCertificateCreateWithData_cold_1();
  }

  return v4(a1, a2);
}

uint64_t getSecCertificateCopySubjectSummarySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getSecCertificateCopySubjectSummarySymbolLoc_ptr;
  v6 = getSecCertificateCopySubjectSummarySymbolLoc_ptr;
  if (!getSecCertificateCopySubjectSummarySymbolLoc_ptr)
  {
    v1 = SecurityLibrary();
    v4[3] = dlsym(v1, "SecCertificateCopySubjectSummary");
    getSecCertificateCopySubjectSummarySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2DED824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSecCertificateCopySubjectSummarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SecurityLibrary();
  result = dlsym(v2, "SecCertificateCopySubjectSummary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSecCertificateCopySubjectSummarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_SecCertificateCopySubjectSummary(uint64_t a1)
{
  SecCertificateCopySubjectSummarySymbolLoc = getSecCertificateCopySubjectSummarySymbolLoc();
  if (!SecCertificateCopySubjectSummarySymbolLoc)
  {
    soft_SecCertificateCopySubjectSummary_cold_1();
  }

  return SecCertificateCopySubjectSummarySymbolLoc(a1);
}

id __displayBuilderError(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v10 = MEMORY[0x1E695DF90];
    v11 = a2;
    v12 = [v10 dictionary];
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v11 arguments:&a9];

    [v12 setObject:v13 forKey:*MEMORY[0x1E696A588]];
  }

  else
  {
    v12 = 0;
  }

  v14 = MEMORY[0x1E696ABC0];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [v14 errorWithDomain:v16 code:a1 userInfo:v12];

  return v17;
}

void FBSSetServiceFacilityManager(void *a1)
{
  v2 = a1;
  if (__manager != v2)
  {
    v3 = v2;
    objc_storeStrong(&__manager, a1);
    v2 = v3;
  }
}

void sub_1A2DF44EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2DF4854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2DF4AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _FBSApplicationLibraryLogTransaction(uint64_t a1, uint64_t a2, char a3, id a4, void *a5)
{
  v10 = a4;
  v9 = a5;
  Helper_x8__OBJC_CLASS___AITransactionLog = gotLoadHelper_x8__OBJC_CLASS___AITransactionLog(v6);
  [*(v8 + 2424) logStep:a1 byParty:11 phase:a2 success:a3 & 1 forBundleID:v10 description:{v9, Helper_x8__OBJC_CLASS___AITransactionLog}];
}

__CFString *NSStringFromFBSApplicationLibraryLogStep(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return @"Uninstall";
  }

  else
  {
    return off_1E76BE230[a1 - 1];
  }
}

void _vetProtocolMethod(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    _vetProtocolMethod_cold_1();
  }

  v2 = [v1 returnValue];
  v3 = [v2 isVoid];

  if ((v3 & 1) == 0)
  {
    _vetProtocolMethod_cold_2();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [v1 arguments];
  v4 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    v24 = *v33;
    v25 = v1;
    do
    {
      v7 = 0;
      v23 = sel_bs_array;
      v26 = v5;
      do
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * v7);
        if ([v8 isBlock])
        {
          v9 = [v1 lastArgument];

          if (v8 != v9)
          {
            _vetProtocolMethod_cold_4();
          }

          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v10 = [v8 blockArguments];
          v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v29;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v29 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v28 + 1) + 8 * i);
                if ([v15 isBlock])
                {
                  _vetProtocolMethod_cold_5();
                }

                if ([objc_msgSend(v15 "objectClass")])
                {
                  v16 = [v8 objectContainedClasses];
                  v17 = [v16 firstObject];
                  if (v17 != objc_opt_class())
                  {
                    v18 = [MEMORY[0x1E696AAA8] currentHandler];
                    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _vetProtocolMethod(BSObjCMethod *__strong _Nonnull)"];
                    [v18 handleFailureInFunction:v19 file:@"FBSInvocation.m" lineNumber:55 description:@"non-plist collections are not yet supported; see __FBSPlistCollection__"];

                    if (![v16 count])
                    {
                      _vetProtocolMethod_cold_6();
                    }
                  }
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v12);
            v1 = v25;
            v5 = v26;
            v6 = v24;
          }

LABEL_28:

          goto LABEL_34;
        }

        if ([v8 isObject] && objc_msgSend(objc_msgSend(v8, "objectClass"), "instancesRespondToSelector:", v23))
        {
          v10 = [v8 objectContainedClasses];
          v20 = [v10 firstObject];
          if (v20 != objc_opt_class())
          {
            v21 = [MEMORY[0x1E696AAA8] currentHandler];
            v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _vetProtocolMethod(BSObjCMethod *__strong _Nonnull)"];
            [v21 handleFailureInFunction:v22 file:@"FBSInvocation.m" lineNumber:65 description:@"non-plist collections are not yet supported; see __FBSPlistCollection__"];

            if (![v10 count])
            {
              _vetProtocolMethod_cold_3();
            }
          }

          goto LABEL_28;
        }

LABEL_34:
        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v5);
  }
}

void sub_1A2DF7AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a2)
  {
    if (a2 == 2)
    {
      v24 = objc_begin_catch(exception_object);
      v25 = FBLogSceneInvocation(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(*(v22 + 64));
        __46__FBSInvocation_initWithInvocation_interface___block_invoke_cold_1(v26, v24, va, v25);
      }

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(exception_object);
    }

    JUMPOUT(0x1A2DF7A50);
  }

  _Unwind_Resume(exception_object);
}

id _interfaceFromProtocol(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = objc_getAssociatedObject(v1, v2);
  if (!v3)
  {
    v3 = [off_1E76BCA10 protocolForProtocol:v1];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v3 methods];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          _vetProtocolMethod(*(*(&v11 + 1) + 8 * i));
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    v9 = objc_opt_class();
    objc_setAssociatedObject(v1, v9, v3, 0x301);
  }

  return v3;
}

void sub_1A2DFAD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void sub_1A2DFDD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2DFE610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1A2E00D04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_1A2E01580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t __FBLogWatchdog_block_invoke()
{
  v0 = os_log_create("com.apple.FrontBoard", "Watchdog");
  v1 = FBLogWatchdog___logObj;
  FBLogWatchdog___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id FBLogAppDataStore(uint64_t a1)
{
  if (FBLogAppDataStore_onceToken != -1)
  {
    FBLogAppDataStore_cold_1();
  }

  v2 = FBLogAppDataStore___logObj;

  return v2;
}

uint64_t __FBLogAppDataStore_block_invoke()
{
  v0 = os_log_create("com.apple.FrontBoard", "AppDataStore");
  v1 = FBLogAppDataStore___logObj;
  FBLogAppDataStore___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id FBLogAppLaunch(uint64_t a1)
{
  if (FBLogAppLaunch_onceToken != -1)
  {
    FBLogAppLaunch_cold_1();
  }

  v2 = FBLogAppLaunch___logObj;

  return v2;
}

uint64_t __FBLogAppLaunch_block_invoke()
{
  v0 = os_log_create("com.apple.FrontBoard", "AppLaunch");
  v1 = FBLogAppLaunch___logObj;
  FBLogAppLaunch___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __FBLogInterfaceOrientationObserver_block_invoke()
{
  v0 = os_log_create("com.apple.FrontBoard", "InterfaceOrientationObserver");
  v1 = FBLogInterfaceOrientationObserver___logObj;
  FBLogInterfaceOrientationObserver___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id FBLogSceneInvocation(uint64_t a1)
{
  if (FBLogSceneInvocation_onceToken != -1)
  {
    FBLogSceneInvocation_cold_1();
  }

  v2 = FBLogSceneInvocation___logObj;

  return v2;
}

uint64_t __FBLogSceneInvocation_block_invoke()
{
  v0 = os_log_create("com.apple.FrontBoard", "SceneInvocation");
  v1 = FBLogSceneInvocation___logObj;
  FBLogSceneInvocation___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1A2E032B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2E039F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2E03E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *FBSProcessSchedulingPolicyDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E76BED18[a1];
  }
}

__CFString *FBSProcessGraphicsPolicyDescription(uint64_t a1)
{
  v1 = @"(unknown)";
  if (a1 == 1)
  {
    v1 = @"full";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"none";
  }
}

__CFString *FBSProcessJetsamPolicyDescription(uint64_t a1)
{
  v1 = @"(unknown)";
  if (a1 == 1)
  {
    v1 = @"foreground";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"default";
  }
}

__CFString *FBSSceneEventSourceDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E76BED48[a1];
  }
}

uint64_t InstallCoordinationLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = InstallCoordinationLibraryCore_frameworkLibrary;
  v6 = InstallCoordinationLibraryCore_frameworkLibrary;
  if (!InstallCoordinationLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E76BED70;
    v8 = *off_1E76BED80;
    v9 = 0;
    v4[3] = _sl_dlopen();
    InstallCoordinationLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1A2E0916C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __InstallCoordinationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  InstallCoordinationLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t InstallCoordinationLibrary()
{
  v3 = 0;
  v0 = InstallCoordinationLibraryCore(&v3);
  if (!v0)
  {
    InstallCoordinationLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

id getIXAppInstallCoordinatorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIXAppInstallCoordinatorClass_softClass;
  v7 = getIXAppInstallCoordinatorClass_softClass;
  if (!getIXAppInstallCoordinatorClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIXAppInstallCoordinatorClass_block_invoke;
    v3[3] = &unk_1E76BD7D0;
    v3[4] = &v4;
    __getIXAppInstallCoordinatorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2E09338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIXAppInstallCoordinatorClass_block_invoke(uint64_t a1)
{
  InstallCoordinationLibrary();
  result = objc_getClass("IXAppInstallCoordinator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIXAppInstallCoordinatorClass_block_invoke_cold_1();
  }

  getIXAppInstallCoordinatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getIXUninstallOptionsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIXUninstallOptionsClass_softClass;
  v7 = getIXUninstallOptionsClass_softClass;
  if (!getIXUninstallOptionsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIXUninstallOptionsClass_block_invoke;
    v3[3] = &unk_1E76BD7D0;
    v3[4] = &v4;
    __getIXUninstallOptionsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2E09470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIXUninstallOptionsClass_block_invoke(uint64_t a1)
{
  InstallCoordinationLibrary();
  result = objc_getClass("IXUninstallOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIXUninstallOptionsClass_block_invoke_cold_1();
  }

  getIXUninstallOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getIXApplicationIdentityClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIXApplicationIdentityClass_softClass;
  v7 = getIXApplicationIdentityClass_softClass;
  if (!getIXApplicationIdentityClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIXApplicationIdentityClass_block_invoke;
    v3[3] = &unk_1E76BD7D0;
    v3[4] = &v4;
    __getIXApplicationIdentityClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2E095A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIXApplicationIdentityClass_block_invoke(uint64_t a1)
{
  InstallCoordinationLibrary();
  result = objc_getClass("IXApplicationIdentity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIXApplicationIdentityClass_block_invoke_cold_1();
  }

  getIXApplicationIdentityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getIXStringForUninstallDispositionSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIXStringForUninstallDispositionSymbolLoc_ptr;
  v6 = getIXStringForUninstallDispositionSymbolLoc_ptr;
  if (!getIXStringForUninstallDispositionSymbolLoc_ptr)
  {
    v1 = InstallCoordinationLibrary();
    v4[3] = dlsym(v1, "IXStringForUninstallDisposition");
    getIXStringForUninstallDispositionSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E096EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIXStringForUninstallDispositionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InstallCoordinationLibrary();
  result = dlsym(v2, "IXStringForUninstallDisposition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIXStringForUninstallDispositionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_IXStringForUninstallDisposition(uint64_t a1)
{
  IXStringForUninstallDispositionSymbolLoc = getIXStringForUninstallDispositionSymbolLoc();
  if (!IXStringForUninstallDispositionSymbolLoc)
  {
    soft_IXStringForUninstallDisposition_cold_1();
  }

  return IXStringForUninstallDispositionSymbolLoc(a1);
}

uint64_t EmbeddedDataResetLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = EmbeddedDataResetLibraryCore_frameworkLibrary;
  v6 = EmbeddedDataResetLibraryCore_frameworkLibrary;
  if (!EmbeddedDataResetLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E76BEDB8;
    v8 = *off_1E76BEDC8;
    v9 = 0;
    v4[3] = _sl_dlopen();
    EmbeddedDataResetLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1A2E09B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __EmbeddedDataResetLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  EmbeddedDataResetLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t EmbeddedDataResetLibrary()
{
  v3 = 0;
  v0 = EmbeddedDataResetLibraryCore(&v3);
  if (!v0)
  {
    EmbeddedDataResetLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

id getDDRResetServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getDDRResetServiceClass_softClass;
  v7 = getDDRResetServiceClass_softClass;
  if (!getDDRResetServiceClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getDDRResetServiceClass_block_invoke;
    v3[3] = &unk_1E76BD7D0;
    v3[4] = &v4;
    __getDDRResetServiceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2E09D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDDRResetServiceClass_block_invoke(uint64_t a1)
{
  EmbeddedDataResetLibrary();
  result = objc_getClass("DDRResetService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDDRResetServiceClass_block_invoke_cold_1();
  }

  getDDRResetServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getDDRResetRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getDDRResetRequestClass_softClass;
  v7 = getDDRResetRequestClass_softClass;
  if (!getDDRResetRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getDDRResetRequestClass_block_invoke;
    v3[3] = &unk_1E76BD7D0;
    v3[4] = &v4;
    __getDDRResetRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2E09EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDDRResetRequestClass_block_invoke(uint64_t a1)
{
  EmbeddedDataResetLibrary();
  result = objc_getClass("DDRResetRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDDRResetRequestClass_block_invoke_cold_1();
  }

  getDDRResetRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getDDRResetOptionsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getDDRResetOptionsClass_softClass;
  v7 = getDDRResetOptionsClass_softClass;
  if (!getDDRResetOptionsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getDDRResetOptionsClass_block_invoke;
    v3[3] = &unk_1E76BD7D0;
    v3[4] = &v4;
    __getDDRResetOptionsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2E09FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDDRResetOptionsClass_block_invoke(uint64_t a1)
{
  EmbeddedDataResetLibrary();
  result = objc_getClass("DDRResetOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDDRResetOptionsClass_block_invoke_cold_1();
  }

  getDDRResetOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id FBSSceneSnapshotErrorForCode(uint64_t a1)
{
  v1 = a1;
  v8[2] = *MEMORY[0x1E69E9840];
  if (a1 <= 1)
  {
    if (!a1)
    {
      goto LABEL_13;
    }

    if (a1 == 1)
    {
      v2 = @"invalid parameters";
      goto LABEL_12;
    }

LABEL_11:
    v2 = @"an unknown error occurred";
    goto LABEL_12;
  }

  if (a1 == 4)
  {
    v2 = @"an unrelated condition or state was not satisfied";
    goto LABEL_12;
  }

  if (a1 == 3)
  {
    v2 = @"the request was canceled";
    goto LABEL_12;
  }

  if (a1 != 2)
  {
    goto LABEL_11;
  }

  v2 = @"the request was denied";
LABEL_12:
  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E696A588];
  v7[0] = *MEMORY[0x1E696A578];
  v7[1] = v4;
  v8[0] = @"an error occurred during a scene snapshotting operation";
  v8[1] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v1 = [v3 errorWithDomain:@"FBSSceneSnapshotErrorDomain" code:v1 userInfo:v5];

LABEL_13:

  return v1;
}

id FBSSceneSnapshotActionResponseForErrorCode(uint64_t a1)
{
  v1 = FBSSceneSnapshotErrorForCode(a1);
  v2 = [off_1E76BC980 responseForError:v1];

  return v2;
}

void sub_1A2E0BBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ManagedConfigurationLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = ManagedConfigurationLibraryCore_frameworkLibrary;
  v6 = ManagedConfigurationLibraryCore_frameworkLibrary;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E76BEED0;
    v8 = *off_1E76BEEE0;
    v9 = 0;
    v4[3] = _sl_dlopen();
    ManagedConfigurationLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1A2E0CC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  ManagedConfigurationLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ManagedConfigurationLibrary()
{
  v3 = 0;
  v0 = ManagedConfigurationLibraryCore(&v3);
  if (!v0)
  {
    ManagedConfigurationLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

id getMCProfileConnectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMCProfileConnectionClass_softClass;
  v7 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMCProfileConnectionClass_block_invoke;
    v3[3] = &unk_1E76BD7D0;
    v3[4] = &v4;
    __getMCProfileConnectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2E0CE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  ManagedConfigurationLibrary();
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMCProfileConnectionClass_block_invoke_cold_1();
  }

  getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getMCManagedAppsChangedNotificationSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMCManagedAppsChangedNotificationSymbolLoc_ptr;
  v6 = getMCManagedAppsChangedNotificationSymbolLoc_ptr;
  if (!getMCManagedAppsChangedNotificationSymbolLoc_ptr)
  {
    v1 = ManagedConfigurationLibrary();
    v4[3] = dlsym(v1, "MCManagedAppsChangedNotification");
    getMCManagedAppsChangedNotificationSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E0CFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMCManagedAppsChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary();
  result = dlsym(v2, "MCManagedAppsChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCManagedAppsChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMCManagedAppsChangedNotification()
{
  MCManagedAppsChangedNotificationSymbolLoc = getMCManagedAppsChangedNotificationSymbolLoc();
  if (!MCManagedAppsChangedNotificationSymbolLoc)
  {
    getMCManagedAppsChangedNotification_cold_1();
  }

  v1 = *MCManagedAppsChangedNotificationSymbolLoc;

  return v1;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2E0DB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  fbs_release(va);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromFBSApplicationPlaceholderProgressState(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"(unknown)";
  }

  else
  {
    return *(&off_1E76BEF48 + a1);
  }
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void fbs_release(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }
}

__CFString *FBSApplicationLibraryErrorCodeDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E76BF2A8[a1];
  }
}

void sub_1A2E0FFFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2E118F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _proxyPassesInclusionFilter(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6 && (v6[2](v6, v5) & 1) == 0)
  {
    v9 = [v5 bundleIdentifier];
    if ([v7 containsObject:v9])
    {
      v8 = [v5 fbs_isLaunchProhibited] ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = [v5 fbs_isLaunchProhibited] ^ 1;
  }

  return v8;
}

uint64_t _proxyPassesIdentityFilter(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v9 && (v9[2](v9, v7, v8) & 1) == 0)
  {
    v12 = [v8 bundleIdentifier];
    if ([v10 containsObject:v12])
    {
      v11 = [v8 fbs_isLaunchProhibited] ^ 1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [v8 fbs_isLaunchProhibited] ^ 1;
  }

  return v11;
}

void sub_1A2E13E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _addResultToArrayCreatingArrayIfNecessary(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5 = *a1;
    v7 = v4;
    if (!*a1)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *a1 = v5;
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void sub_1A2E14D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2E150CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2E15438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 192), 8);
  _Block_object_dispose((v36 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_4_4(uint64_t a1)
{

  return kdebug_trace();
}

void OUTLINED_FUNCTION_22(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_28(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, uint64_t a13, ...)
{
  va_start(va, a13);
  a9 = 0u;
  a10 = 0u;
  a11 = 0u;
  a12 = 0u;

  return [a1 countByEnumeratingWithState:&a9 objects:va count:{16, a6, a7, a8}];
}

BOOL OUTLINED_FUNCTION_32(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void OUTLINED_FUNCTION_36(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 80) = a2;
  *(a1 + 4) = v2;
  *(v4 - 68) = 2114;
  *(a1 + 14) = v3;
}

BOOL OUTLINED_FUNCTION_38(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_49(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint8_t *a5)
{

  _os_log_impl(a1, v6, OS_LOG_TYPE_DEFAULT, v5, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return [v12 countByEnumeratingWithState:va objects:&STACK[0x318] count:{16, a6}];
}

uint64_t OUTLINED_FUNCTION_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{

  return [a10 countByEnumeratingWithState:a3 objects:a4 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{

  return [a13 countByEnumeratingWithState:a3 objects:a4 count:{16, a6, a7, a8}];
}

BOOL OUTLINED_FUNCTION_54(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_55(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [a1 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_56(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [a1 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromFBSSceneLayerAlignment(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"display";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
    }
  }

  else
  {
    v2 = @"scene";
  }

  return v2;
}

__CFString *FBSDisplayOverscanCompensationDescription(uint64_t a1)
{
  if ((a1 + 1) >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_1E76BF338[a1 + 1];
  }

  return v2;
}

id FBSDisplayOverscanCompensationToCADisplayOverscanAdjustment(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = getkCADisplayInsetBounds();
  }

  else if (a1 == 1)
  {
    v1 = getkCADisplayScaleContent();
  }

  else if (a1)
  {
    v1 = 0;
  }

  else
  {
    v1 = getkCADisplayNone();
  }

  return v1;
}

id FBSDisplayGamutToCADisplayGamut(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = getkCADisplayModeGamutP3();
  }

  else if (a1)
  {
    v1 = 0;
  }

  else
  {
    v1 = getkCADisplayModeGamutSRGB();
  }

  return v1;
}

id FBSDisplayHDRModeToCADisplayHDRMode(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = getkCADisplayModeDolby();
  }

  else if (a1 == 1)
  {
    v1 = getkCADisplayModeHDR10();
  }

  else if (a1)
  {
    v1 = 0;
  }

  else
  {
    v1 = getkCADisplayModeSDR();
  }

  return v1;
}

__CFString *FBSDisplayRotationDescription(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_1E76BF390[a1];
  }

  return v2;
}

double FBSDisplayRotationRadians(uint64_t a1)
{
  result = 0.0;
  if ((a1 - 1) <= 2)
  {
    return dbl_1A2E69438[a1 - 1];
  }

  return result;
}

id FBSDisplayRotationToCADisplayRotation(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (a1 == 1)
    {
      v1 = getkCADisplayOrientationRotation90();
      goto LABEL_9;
    }

LABEL_7:
    v1 = getkCADisplayOrientationRotation0();
    goto LABEL_9;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      v1 = getkCADisplayOrientationRotation270();
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v1 = getkCADisplayOrientationRotation180();
LABEL_9:

  return v1;
}

__CFString *FBSDisplayConnectionTypeDescription(uint64_t a1)
{
  if ((a1 + 1) >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_1E76BF3B0[a1 + 1];
  }

  return v2;
}

__CFString *NSStringFromFBSSceneResourceMode(int a1)
{
  if (a1 > -11)
  {
    if (a1 == -10)
    {
      v2 = @"support";
    }

    else if (a1)
    {
      if (a1 != 10)
      {
LABEL_20:
        v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown - %li)", a1];

        return v2;
      }

      v2 = @"priority";
    }

    else
    {
      v2 = @"default";
    }
  }

  else
  {
    switch(a1)
    {
      case -128:
        v2 = @"disabled";

        break;
      case -50:
        v2 = @"idle";

        break;
      case -20:
        v2 = @"utility";

        return v2;
      default:
        goto LABEL_20;
    }
  }

  return v2;
}

__CFString *NSStringFromFBSSceneActivityMode(int a1)
{
  if (a1 > -11)
  {
    if (a1 == -10)
    {
      v2 = @"support";
    }

    else if (a1)
    {
      if (a1 != 10)
      {
LABEL_20:
        v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(invalid - %d)", a1];

        return v2;
      }

      v2 = @"focal";
    }

    else
    {
      v2 = @"default";
    }
  }

  else
  {
    switch(a1)
    {
      case -128:
        v2 = @"externally-managed";

        break;
      case -50:
        v2 = @"suspended";

        break;
      case -20:
        v2 = @"utility";

        return v2;
      default:
        goto LABEL_20;
    }
  }

  return v2;
}

uint64_t FBSSceneJetsamPriorityCreate(int a1, int a2)
{
  if (((a1 + 20) > 0x1E || ((1 << (a1 + 20)) & 0x40100401) == 0) && a1 != -128)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"FBSSceneJetsamModeIsValid(mode)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      FBSSceneJetsamPriorityCreate_cold_1(v4);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
  }

  v2 = a2 & ~(a2 >> 31);
  if (v2 >= 9)
  {
    LOWORD(v2) = 9;
  }

  if (a1 == -128)
  {
    LOWORD(v2) = 0;
  }

  return (v2 | (a1 << 8));
}

BOOL FBSSceneJetsamModeIsValid(int a1)
{
  result = 1;
  if ((a1 + 20) > 0x1E || ((1 << (a1 + 20)) & 0x40100401) == 0)
  {
    return a1 == -128;
  }

  return result;
}

uint64_t FBSSceneJetsamPriorityGetResourceElevation(char a1)
{
  v1 = a1 & ~(a1 >> 31);
  if (v1 >= 9)
  {
    return 9;
  }

  else
  {
    return v1;
  }
}

uint64_t FBSSceneJetsamPriorityUpdateElevation(unsigned int a1, int a2)
{
  LOBYTE(v2) = 0;
  v3 = a1 >> 8;
  if (a1 >> 8 > 0x7F)
  {
    if (v3 != 128 && v3 != 246 && v3 != 236)
    {
      return FBSSceneJetsamPriorityCreate(v2, a2);
    }

LABEL_8:
    v2 = a1 >> 8;
    return FBSSceneJetsamPriorityCreate(v2, a2);
  }

  if (!v3 || v3 == 10)
  {
    goto LABEL_8;
  }

  return FBSSceneJetsamPriorityCreate(v2, a2);
}

id NSStringFromFBSSceneJetsamPriority(unsigned int a1)
{
  LOBYTE(v2) = 0;
  v3 = a1 >> 8;
  if (a1 >> 8 <= 0x7F)
  {
    if (v3 && v3 != 10)
    {
      goto LABEL_9;
    }
  }

  else if (v3 != 128 && v3 != 246 && v3 != 236)
  {
    goto LABEL_9;
  }

  v2 = a1 >> 8;
LABEL_9:
  v4 = a1 & ~(a1 >> 31);
  if (v4 >= 9)
  {
    v5 = 9;
  }

  else
  {
    v5 = v4;
  }

  v6 = NSStringFromFBSSceneJetsamMode(v2);
  v7 = [v6 stringByAppendingFormat:@"[+%d]", v5];

  return v7;
}

__CFString *NSStringFromFBSSceneJetsamMode(int a1)
{
  if (a1 <= -11)
  {
    if (a1 == -128)
    {
      v2 = @"disabled";
    }

    else
    {
      if (a1 != -20)
      {
LABEL_22:
        v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(invalid - %d)", a1];

        return v2;
      }

      v2 = @"utility";
    }
  }

  else if (a1 == -10)
  {
    v2 = @"support";
  }

  else
  {
    if (a1)
    {
      if (a1 == 10)
      {
        v2 = @"elevated";

        return v2;
      }

      goto LABEL_22;
    }

    v2 = @"default";
  }

  return v2;
}

__CFString *NSStringFromDiagnosticReportType(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E76BF3D8[a1];
  }
}

void sub_1A2E1A038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2E1B778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v19 - 72), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1A2E1D184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2E1D470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2E1D5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2E1D7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_4_5(uint64_t a1)
{

  return MEMORY[0x1EEDC70C8](v2, v1, a1);
}

uint64_t libmisLibraryCore(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = libmisLibraryCore_frameworkLibrary;
  v6 = libmisLibraryCore_frameworkLibrary;
  if (!libmisLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E76BF9F0;
    v8 = 0;
    v4[3] = _sl_dlopen();
    libmisLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1A2E27DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libmisLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libmisLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t libmisLibrary()
{
  v3 = 0;
  v0 = libmisLibraryCore(&v3);
  if (!v0)
  {
    libmisLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

uint64_t getMISQueryBlacklistForBundleSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISQueryBlacklistForBundleSymbolLoc_ptr;
  v6 = getMISQueryBlacklistForBundleSymbolLoc_ptr;
  if (!getMISQueryBlacklistForBundleSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISQueryBlacklistForBundle");
    getMISQueryBlacklistForBundleSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E27F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISQueryBlacklistForBundleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISQueryBlacklistForBundle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISQueryBlacklistForBundleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISQueryBlacklistForBundle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MISQueryBlacklistForBundleSymbolLoc = getMISQueryBlacklistForBundleSymbolLoc();
  if (!MISQueryBlacklistForBundleSymbolLoc)
  {
    soft_MISQueryBlacklistForBundle_cold_1();
  }

  return MISQueryBlacklistForBundleSymbolLoc(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t getMISQueryBlacklistForCdHashSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISQueryBlacklistForCdHashSymbolLoc_ptr;
  v6 = getMISQueryBlacklistForCdHashSymbolLoc_ptr;
  if (!getMISQueryBlacklistForCdHashSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISQueryBlacklistForCdHash");
    getMISQueryBlacklistForCdHashSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E28144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISQueryBlacklistForCdHashSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISQueryBlacklistForCdHash");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISQueryBlacklistForCdHashSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISQueryBlacklistForCdHash(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MISQueryBlacklistForCdHashSymbolLoc = getMISQueryBlacklistForCdHashSymbolLoc();
  if (!MISQueryBlacklistForCdHashSymbolLoc)
  {
    soft_MISQueryBlacklistForCdHash_cold_1();
  }

  return MISQueryBlacklistForCdHashSymbolLoc(a1, a2, a3, a4, a5);
}

uint64_t getMISAppApprovalStateSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISAppApprovalStateSymbolLoc_ptr;
  v6 = getMISAppApprovalStateSymbolLoc_ptr;
  if (!getMISAppApprovalStateSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISAppApprovalState");
    getMISAppApprovalStateSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E282F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISAppApprovalStateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISAppApprovalState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISAppApprovalStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISAppApprovalState(uint64_t a1, uint64_t a2)
{
  MISAppApprovalStateSymbolLoc = getMISAppApprovalStateSymbolLoc();
  if (!MISAppApprovalStateSymbolLoc)
  {
    soft_MISAppApprovalState_cold_1();
  }

  return MISAppApprovalStateSymbolLoc(a1, a2);
}

uint64_t getMISValidateUPPSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISValidateUPPSymbolLoc_ptr;
  v6 = getMISValidateUPPSymbolLoc_ptr;
  if (!getMISValidateUPPSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISValidateUPP");
    getMISValidateUPPSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2847C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISValidateUPPSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISValidateUPP");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISValidateUPPSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void soft_MISValidateUPP(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  MISValidateUPPSymbolLoc = getMISValidateUPPSymbolLoc();
  if (!MISValidateUPPSymbolLoc)
  {
    soft_MISValidateUPP_cold_1();
  }

  MISValidateUPPSymbolLoc(a1, v7, v5);
}

uint64_t getMISCopyErrorStringForErrorCodeSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISCopyErrorStringForErrorCodeSymbolLoc_ptr;
  v6 = getMISCopyErrorStringForErrorCodeSymbolLoc_ptr;
  if (!getMISCopyErrorStringForErrorCodeSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISCopyErrorStringForErrorCode");
    getMISCopyErrorStringForErrorCodeSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2862C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISCopyErrorStringForErrorCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISCopyErrorStringForErrorCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISCopyErrorStringForErrorCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISCopyErrorStringForErrorCode(uint64_t a1)
{
  MISCopyErrorStringForErrorCodeSymbolLoc = getMISCopyErrorStringForErrorCodeSymbolLoc();
  if (!MISCopyErrorStringForErrorCodeSymbolLoc)
  {
    soft_MISCopyErrorStringForErrorCode_cold_1();
  }

  return MISCopyErrorStringForErrorCodeSymbolLoc(a1);
}

uint64_t getMISValidateSignatureAndCopyInfoSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISValidateSignatureAndCopyInfoSymbolLoc_ptr;
  v6 = getMISValidateSignatureAndCopyInfoSymbolLoc_ptr;
  if (!getMISValidateSignatureAndCopyInfoSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISValidateSignatureAndCopyInfo");
    getMISValidateSignatureAndCopyInfoSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E287AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISValidateSignatureAndCopyInfoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISValidateSignatureAndCopyInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISValidateSignatureAndCopyInfoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISValidateSignatureAndCopyInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MISValidateSignatureAndCopyInfoSymbolLoc = getMISValidateSignatureAndCopyInfoSymbolLoc();
  if (!MISValidateSignatureAndCopyInfoSymbolLoc)
  {
    soft_MISValidateSignatureAndCopyInfo_cold_1();
  }

  return MISValidateSignatureAndCopyInfoSymbolLoc(a1, a2, a3);
}

uint64_t getMISValidationCopySignatureVersionSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISValidationCopySignatureVersionSymbolLoc_ptr;
  v6 = getMISValidationCopySignatureVersionSymbolLoc_ptr;
  if (!getMISValidationCopySignatureVersionSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISValidationCopySignatureVersion");
    getMISValidationCopySignatureVersionSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E28944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISValidationCopySignatureVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISValidationCopySignatureVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISValidationCopySignatureVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISValidationCopySignatureVersion(uint64_t a1, uint64_t a2)
{
  MISValidationCopySignatureVersionSymbolLoc = getMISValidationCopySignatureVersionSymbolLoc();
  if (!MISValidationCopySignatureVersionSymbolLoc)
  {
    soft_MISValidationCopySignatureVersion_cold_1();
  }

  return MISValidationCopySignatureVersionSymbolLoc(a1, a2);
}

uint64_t getkMISValidationOptionUnauthoritativeLaunchSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMISValidationOptionUnauthoritativeLaunchSymbolLoc_ptr;
  v6 = getkMISValidationOptionUnauthoritativeLaunchSymbolLoc_ptr;
  if (!getkMISValidationOptionUnauthoritativeLaunchSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "kMISValidationOptionUnauthoritativeLaunch");
    getkMISValidationOptionUnauthoritativeLaunchSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E28ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkMISValidationOptionUnauthoritativeLaunchSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "kMISValidationOptionUnauthoritativeLaunch");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMISValidationOptionUnauthoritativeLaunchSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkMISValidationOptionUnauthoritativeLaunch()
{
  v0 = getkMISValidationOptionUnauthoritativeLaunchSymbolLoc();
  if (!v0)
  {
    getkMISValidationOptionUnauthoritativeLaunch_cold_1();
  }

  return *v0;
}

uint64_t getkMISValidationOptionAuthoritativeLaunchSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMISValidationOptionAuthoritativeLaunchSymbolLoc_ptr;
  v6 = getkMISValidationOptionAuthoritativeLaunchSymbolLoc_ptr;
  if (!getkMISValidationOptionAuthoritativeLaunchSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "kMISValidationOptionAuthoritativeLaunch");
    getkMISValidationOptionAuthoritativeLaunchSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E28C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkMISValidationOptionAuthoritativeLaunchSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "kMISValidationOptionAuthoritativeLaunch");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMISValidationOptionAuthoritativeLaunchSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkMISValidationOptionAuthoritativeLaunch()
{
  v0 = getkMISValidationOptionAuthoritativeLaunchSymbolLoc();
  if (!v0)
  {
    getkMISValidationOptionAuthoritativeLaunch_cold_1();
  }

  return *v0;
}

uint64_t getkMISValidationOptionOnlineAuthorizationSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMISValidationOptionOnlineAuthorizationSymbolLoc_ptr;
  v6 = getkMISValidationOptionOnlineAuthorizationSymbolLoc_ptr;
  if (!getkMISValidationOptionOnlineAuthorizationSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "kMISValidationOptionOnlineAuthorization");
    getkMISValidationOptionOnlineAuthorizationSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E28D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkMISValidationOptionOnlineAuthorizationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "kMISValidationOptionOnlineAuthorization");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMISValidationOptionOnlineAuthorizationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkMISValidationOptionOnlineAuthorization()
{
  v0 = getkMISValidationOptionOnlineAuthorizationSymbolLoc();
  if (!v0)
  {
    getkMISValidationOptionOnlineAuthorization_cold_1();
  }

  return *v0;
}

uint64_t getkMISValidationOptionOnlineCheckTypeSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMISValidationOptionOnlineCheckTypeSymbolLoc_ptr;
  v6 = getkMISValidationOptionOnlineCheckTypeSymbolLoc_ptr;
  if (!getkMISValidationOptionOnlineCheckTypeSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "kMISValidationOptionOnlineCheckType");
    getkMISValidationOptionOnlineCheckTypeSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E28EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkMISValidationOptionOnlineCheckTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "kMISValidationOptionOnlineCheckType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMISValidationOptionOnlineCheckTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkMISValidationOptionOnlineCheckType()
{
  v0 = getkMISValidationOptionOnlineCheckTypeSymbolLoc();
  if (!v0)
  {
    getkMISValidationOptionOnlineCheckType_cold_1();
  }

  return *v0;
}

uint64_t getkMISMinSupportedSignatureVersionSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMISMinSupportedSignatureVersionSymbolLoc_ptr;
  v6 = getkMISMinSupportedSignatureVersionSymbolLoc_ptr;
  if (!getkMISMinSupportedSignatureVersionSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "kMISMinSupportedSignatureVersion");
    getkMISMinSupportedSignatureVersionSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2904C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkMISMinSupportedSignatureVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "kMISMinSupportedSignatureVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMISMinSupportedSignatureVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkMISMinSupportedSignatureVersion()
{
  v0 = getkMISMinSupportedSignatureVersionSymbolLoc();
  if (!v0)
  {
    getkMISMinSupportedSignatureVersion_cold_1();
  }

  return *v0;
}

uint64_t getkMISFutureMinSupportedSignatureVersionSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMISFutureMinSupportedSignatureVersionSymbolLoc_ptr;
  v6 = getkMISFutureMinSupportedSignatureVersionSymbolLoc_ptr;
  if (!getkMISFutureMinSupportedSignatureVersionSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "kMISFutureMinSupportedSignatureVersion");
    getkMISFutureMinSupportedSignatureVersionSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E291AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkMISFutureMinSupportedSignatureVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "kMISFutureMinSupportedSignatureVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMISFutureMinSupportedSignatureVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkMISFutureMinSupportedSignatureVersion()
{
  v0 = getkMISFutureMinSupportedSignatureVersionSymbolLoc();
  if (!v0)
  {
    getkMISFutureMinSupportedSignatureVersion_cold_1();
  }

  return *v0;
}

uint64_t getkMISValidationOptionHintMainExecutablePathSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMISValidationOptionHintMainExecutablePathSymbolLoc_ptr;
  v6 = getkMISValidationOptionHintMainExecutablePathSymbolLoc_ptr;
  if (!getkMISValidationOptionHintMainExecutablePathSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "kMISValidationOptionHintMainExecutablePath");
    getkMISValidationOptionHintMainExecutablePathSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2930C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkMISValidationOptionHintMainExecutablePathSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "kMISValidationOptionHintMainExecutablePath");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMISValidationOptionHintMainExecutablePathSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkMISValidationOptionHintMainExecutablePath()
{
  v0 = getkMISValidationOptionHintMainExecutablePathSymbolLoc();
  if (!v0)
  {
    getkMISValidationOptionHintMainExecutablePath_cold_1();
  }

  return *v0;
}

uint64_t getMISEnumerateInstalledProvisioningProfilesSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISEnumerateInstalledProvisioningProfilesSymbolLoc_ptr;
  v6 = getMISEnumerateInstalledProvisioningProfilesSymbolLoc_ptr;
  if (!getMISEnumerateInstalledProvisioningProfilesSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISEnumerateInstalledProvisioningProfiles");
    getMISEnumerateInstalledProvisioningProfilesSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2946C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISEnumerateInstalledProvisioningProfilesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISEnumerateInstalledProvisioningProfiles");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISEnumerateInstalledProvisioningProfilesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISEnumerateInstalledProvisioningProfiles(uint64_t a1, void *a2)
{
  v3 = a2;
  MISEnumerateInstalledProvisioningProfilesSymbolLoc = getMISEnumerateInstalledProvisioningProfilesSymbolLoc();
  if (!MISEnumerateInstalledProvisioningProfilesSymbolLoc)
  {
    soft_MISEnumerateInstalledProvisioningProfiles_cold_1();
  }

  v5 = MISEnumerateInstalledProvisioningProfilesSymbolLoc(a1, v3);

  return v5;
}

uint64_t getMISProvisioningProfileGetDeveloperCertificatesSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISProvisioningProfileGetDeveloperCertificatesSymbolLoc_ptr;
  v6 = getMISProvisioningProfileGetDeveloperCertificatesSymbolLoc_ptr;
  if (!getMISProvisioningProfileGetDeveloperCertificatesSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISProvisioningProfileGetDeveloperCertificates");
    getMISProvisioningProfileGetDeveloperCertificatesSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E295F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISProvisioningProfileGetDeveloperCertificatesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISProvisioningProfileGetDeveloperCertificates");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISProvisioningProfileGetDeveloperCertificatesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISProvisioningProfileGetDeveloperCertificates(uint64_t a1)
{
  DeveloperCertificatesSymbolLoc = getMISProvisioningProfileGetDeveloperCertificatesSymbolLoc();
  if (!DeveloperCertificatesSymbolLoc)
  {
    soft_MISProvisioningProfileGetDeveloperCertificates_cold_1();
  }

  return DeveloperCertificatesSymbolLoc(a1);
}

uint64_t getMISProfileGetValueSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISProfileGetValueSymbolLoc_ptr;
  v6 = getMISProfileGetValueSymbolLoc_ptr;
  if (!getMISProfileGetValueSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISProfileGetValue");
    getMISProfileGetValueSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E29778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISProfileGetValueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISProfileGetValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISProfileGetValueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISProfileGetValue(uint64_t a1, uint64_t a2)
{
  ValueSymbolLoc = getMISProfileGetValueSymbolLoc();
  if (!ValueSymbolLoc)
  {
    soft_MISProfileGetValue_cold_1();
  }

  return ValueSymbolLoc(a1, a2);
}

uint64_t getMISProvisioningProfileGetEntitlementsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISProvisioningProfileGetEntitlementsSymbolLoc_ptr;
  v6 = getMISProvisioningProfileGetEntitlementsSymbolLoc_ptr;
  if (!getMISProvisioningProfileGetEntitlementsSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISProvisioningProfileGetEntitlements");
    getMISProvisioningProfileGetEntitlementsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E29900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISProvisioningProfileGetEntitlementsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISProvisioningProfileGetEntitlements");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISProvisioningProfileGetEntitlementsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISProvisioningProfileGetEntitlements(uint64_t a1)
{
  EntitlementsSymbolLoc = getMISProvisioningProfileGetEntitlementsSymbolLoc();
  if (!EntitlementsSymbolLoc)
  {
    soft_MISProvisioningProfileGetEntitlements_cold_1();
  }

  return EntitlementsSymbolLoc(a1);
}

uint64_t getMISProvisioningProfileGetExpirationDateSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISProvisioningProfileGetExpirationDateSymbolLoc_ptr;
  v6 = getMISProvisioningProfileGetExpirationDateSymbolLoc_ptr;
  if (!getMISProvisioningProfileGetExpirationDateSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISProvisioningProfileGetExpirationDate");
    getMISProvisioningProfileGetExpirationDateSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E29A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISProvisioningProfileGetExpirationDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISProvisioningProfileGetExpirationDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISProvisioningProfileGetExpirationDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISProvisioningProfileGetExpirationDate(uint64_t a1)
{
  ExpirationDateSymbolLoc = getMISProvisioningProfileGetExpirationDateSymbolLoc();
  if (!ExpirationDateSymbolLoc)
  {
    soft_MISProvisioningProfileGetExpirationDate_cold_1();
  }

  return ExpirationDateSymbolLoc(a1);
}

uint64_t getMISProvisioningProfileGetUUIDSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISProvisioningProfileGetUUIDSymbolLoc_ptr;
  v6 = getMISProvisioningProfileGetUUIDSymbolLoc_ptr;
  if (!getMISProvisioningProfileGetUUIDSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISProvisioningProfileGetUUID");
    getMISProvisioningProfileGetUUIDSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E29C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISProvisioningProfileGetUUIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISProvisioningProfileGetUUID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISProvisioningProfileGetUUIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISProvisioningProfileGetUUID(uint64_t a1)
{
  UUIDSymbolLoc = getMISProvisioningProfileGetUUIDSymbolLoc();
  if (!UUIDSymbolLoc)
  {
    soft_MISProvisioningProfileGetUUID_cold_1();
  }

  return UUIDSymbolLoc(a1);
}

uint64_t getMISProvisioningProfileGrantsEntitlementSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISProvisioningProfileGrantsEntitlementSymbolLoc_ptr;
  v6 = getMISProvisioningProfileGrantsEntitlementSymbolLoc_ptr;
  if (!getMISProvisioningProfileGrantsEntitlementSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISProvisioningProfileGrantsEntitlement");
    getMISProvisioningProfileGrantsEntitlementSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E29D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISProvisioningProfileGrantsEntitlementSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISProvisioningProfileGrantsEntitlement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISProvisioningProfileGrantsEntitlementSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISProvisioningProfileGrantsEntitlement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MISProvisioningProfileGrantsEntitlementSymbolLoc = getMISProvisioningProfileGrantsEntitlementSymbolLoc();
  if (!MISProvisioningProfileGrantsEntitlementSymbolLoc)
  {
    soft_MISProvisioningProfileGrantsEntitlement_cold_1();
  }

  return MISProvisioningProfileGrantsEntitlementSymbolLoc(a1, a2, a3);
}

uint64_t getMISProvisioningProfileIsAppleInternalProfileSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISProvisioningProfileIsAppleInternalProfileSymbolLoc_ptr;
  v6 = getMISProvisioningProfileIsAppleInternalProfileSymbolLoc_ptr;
  if (!getMISProvisioningProfileIsAppleInternalProfileSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISProvisioningProfileIsAppleInternalProfile");
    getMISProvisioningProfileIsAppleInternalProfileSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E29F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISProvisioningProfileIsAppleInternalProfileSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISProvisioningProfileIsAppleInternalProfile");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISProvisioningProfileIsAppleInternalProfileSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISProvisioningProfileIsAppleInternalProfile(uint64_t a1)
{
  IsAppleInternalProfileSymbolLoc = getMISProvisioningProfileIsAppleInternalProfileSymbolLoc();
  if (!IsAppleInternalProfileSymbolLoc)
  {
    soft_MISProvisioningProfileIsAppleInternalProfile_cold_1();
  }

  return IsAppleInternalProfileSymbolLoc(a1);
}

uint64_t getMISProvisioningProfileProvisionsAllDevicesSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMISProvisioningProfileProvisionsAllDevicesSymbolLoc_ptr;
  v6 = getMISProvisioningProfileProvisionsAllDevicesSymbolLoc_ptr;
  if (!getMISProvisioningProfileProvisionsAllDevicesSymbolLoc_ptr)
  {
    v1 = libmisLibrary();
    v4[3] = dlsym(v1, "MISProvisioningProfileProvisionsAllDevices");
    getMISProvisioningProfileProvisionsAllDevicesSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2A098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMISProvisioningProfileProvisionsAllDevicesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libmisLibrary();
  result = dlsym(v2, "MISProvisioningProfileProvisionsAllDevices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMISProvisioningProfileProvisionsAllDevicesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_MISProvisioningProfileProvisionsAllDevices(uint64_t a1)
{
  MISProvisioningProfileProvisionsAllDevicesSymbolLoc = getMISProvisioningProfileProvisionsAllDevicesSymbolLoc();
  if (!MISProvisioningProfileProvisionsAllDevicesSymbolLoc)
  {
    soft_MISProvisioningProfileProvisionsAllDevices_cold_1();
  }

  return MISProvisioningProfileProvisionsAllDevicesSymbolLoc(a1);
}

id getMISLaunchWarningDatabaseClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMISLaunchWarningDatabaseClass_softClass;
  v7 = getMISLaunchWarningDatabaseClass_softClass;
  if (!getMISLaunchWarningDatabaseClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMISLaunchWarningDatabaseClass_block_invoke;
    v3[3] = &unk_1E76BD7D0;
    v3[4] = &v4;
    __getMISLaunchWarningDatabaseClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2E2A20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMISLaunchWarningDatabaseClass_block_invoke(uint64_t a1)
{
  libmisLibrary();
  result = objc_getClass("MISLaunchWarningDatabase");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMISLaunchWarningDatabaseClass_block_invoke_cold_1();
  }

  getMISLaunchWarningDatabaseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A2E2A460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2E2B5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2E2BECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FBSProcessResourceAllowanceMakeWithValue@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 0;
  return result;
}

uint64_t FBSProcessResourceAllowanceMakeWithTimeInterval@<X0>(uint64_t result@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v3 = (a3 * 1000.0);
  if (a3 <= 0.0)
  {
    v3 = 0;
  }

  *a2 = result;
  a2[1] = v3;
  a2[2] = 0;
  return result;
}

void FBSProcessResourceAllowanceMakeWithRealTimeInterval(void *a1@<X8>, double a2@<D0>)
{
  v2 = (a2 * 1000.0);
  if (a2 <= 0.0)
  {
    v2 = 0;
  }

  *a1 = 1;
  a1[1] = v2;
  a1[2] = 0;
}

int8x16_t FBSProcessResourceAllowanceMakeWithScheduledTimeIntervalAndRefreshInterval@<Q0>(uint64_t a1@<X8>, float64x2_t a2@<Q0>, float64_t a3@<D1>)
{
  a2.f64[1] = a3;
  *a1 = 2;
  result = vandq_s8(vcvtq_u64_f64(vmulq_f64(a2, vdupq_n_s64(0x408F400000000000uLL))), vcgtzq_f64(a2));
  *(a1 + 8) = result;
  return result;
}

double FBSProcessResourceAllowanceScale@<D0>(void *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  result = a1[1] * a3;
  *a2 = *a1;
  a2[1] = result;
  a2[2] = a1[2];
  return result;
}

double FBSProcessResourceAllowanceExtend@<D0>(void *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  result = a1[1] + a3;
  *a2 = *a1;
  a2[1] = result;
  a2[2] = a1[2];
  return result;
}

uint64_t FBSProcessResourceAllowanceGetType(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t FBSProcessResourceAllowanceValue(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

id NSStringFromProcessResourceValue(uint64_t a1, unint64_t a2)
{
  if ((a1 - 1) > 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a2];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3fs", a2 / 1000.0];
  }
  v2 = ;

  return v2;
}

uint64_t __QuartzCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  QuartzCoreLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCALayerGetRenderIdSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "CALayerGetRenderId");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCALayerGetRenderIdSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkCADisplayNoneSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayNoneSymbolLoc_ptr;
  v6 = getkCADisplayNoneSymbolLoc_ptr;
  if (!getkCADisplayNoneSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayNone");
    getkCADisplayNoneSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2D7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCADisplayNoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayNone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayNoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCADisplayNone()
{
  v0 = getkCADisplayNoneSymbolLoc();
  if (!v0)
  {
    getkCADisplayNone_cold_1();
  }

  v1 = *v0;

  return v1;
}

void *__getkCADisplayScaleContentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayScaleContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayScaleContentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCADisplayInsetBoundsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayInsetBounds");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayInsetBoundsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkCADisplayOrientationRotation0SymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayOrientationRotation0SymbolLoc_ptr;
  v6 = getkCADisplayOrientationRotation0SymbolLoc_ptr;
  if (!getkCADisplayOrientationRotation0SymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayOrientationRotation0");
    getkCADisplayOrientationRotation0SymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2D9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCADisplayOrientationRotation0SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayOrientationRotation0");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayOrientationRotation0SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCADisplayOrientationRotation0()
{
  v0 = getkCADisplayOrientationRotation0SymbolLoc();
  if (!v0)
  {
    getkCADisplayOrientationRotation0_cold_1();
  }

  v1 = *v0;

  return v1;
}

void *__getkCADisplayOrientationRotation90SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayOrientationRotation90");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayOrientationRotation90SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCADisplayOrientationRotation180SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayOrientationRotation180");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayOrientationRotation180SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCADisplayOrientationRotation270SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayOrientationRotation270");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayOrientationRotation270SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkCADisplayModeGamutSRGBSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayModeGamutSRGBSymbolLoc_ptr;
  v6 = getkCADisplayModeGamutSRGBSymbolLoc_ptr;
  if (!getkCADisplayModeGamutSRGBSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayModeGamutSRGB");
    getkCADisplayModeGamutSRGBSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2DC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCADisplayModeGamutSRGBSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayModeGamutSRGB");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayModeGamutSRGBSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCADisplayModeGamutSRGB()
{
  v0 = getkCADisplayModeGamutSRGBSymbolLoc();
  if (!v0)
  {
    getkCADisplayModeGamutSRGB_cold_1();
  }

  v1 = *v0;

  return v1;
}

void *__getkCADisplayModeGamutP3SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayModeGamutP3");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayModeGamutP3SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkCADisplayModeSDRSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCADisplayModeSDRSymbolLoc_ptr;
  v6 = getkCADisplayModeSDRSymbolLoc_ptr;
  if (!getkCADisplayModeSDRSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCADisplayModeSDR");
    getkCADisplayModeSDRSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2DDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCADisplayModeSDRSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayModeSDR");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayModeSDRSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCADisplayModeSDR()
{
  v0 = getkCADisplayModeSDRSymbolLoc();
  if (!v0)
  {
    getkCADisplayModeSDR_cold_1();
  }

  v1 = *v0;

  return v1;
}

void *__getkCADisplayModeHDR10SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayModeHDR10");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayModeHDR10SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCADisplayModeDolbySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCADisplayModeDolby");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCADisplayModeDolbySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkCASnapshotContextIdSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotContextIdSymbolLoc_ptr;
  v6 = getkCASnapshotContextIdSymbolLoc_ptr;
  if (!getkCASnapshotContextIdSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotContextId");
    getkCASnapshotContextIdSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2E000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotContextIdSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotContextId");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotContextIdSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotContextId()
{
  v0 = getkCASnapshotContextIdSymbolLoc();
  if (!v0)
  {
    getkCASnapshotContextId_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCASnapshotContextListSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotContextListSymbolLoc_ptr;
  v6 = getkCASnapshotContextListSymbolLoc_ptr;
  if (!getkCASnapshotContextListSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotContextList");
    getkCASnapshotContextListSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2E170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotContextListSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotContextList");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotContextListSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotContextList()
{
  v0 = getkCASnapshotContextListSymbolLoc();
  if (!v0)
  {
    getkCASnapshotContextList_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCASnapshotDisplayNameSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotDisplayNameSymbolLoc_ptr;
  v6 = getkCASnapshotDisplayNameSymbolLoc_ptr;
  if (!getkCASnapshotDisplayNameSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotDisplayName");
    getkCASnapshotDisplayNameSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2E2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotDisplayNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotDisplayName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotDisplayNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotDisplayName()
{
  v0 = getkCASnapshotDisplayNameSymbolLoc();
  if (!v0)
  {
    getkCASnapshotDisplayName_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCASnapshotFormatOpaqueSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotFormatOpaqueSymbolLoc_ptr;
  v6 = getkCASnapshotFormatOpaqueSymbolLoc_ptr;
  if (!getkCASnapshotFormatOpaqueSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotFormatOpaque");
    getkCASnapshotFormatOpaqueSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2E450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotFormatOpaqueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotFormatOpaque");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotFormatOpaqueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotFormatOpaque()
{
  v0 = getkCASnapshotFormatOpaqueSymbolLoc();
  if (!v0)
  {
    getkCASnapshotFormatOpaque_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCASnapshotFormatWideGamutSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotFormatWideGamutSymbolLoc_ptr;
  v6 = getkCASnapshotFormatWideGamutSymbolLoc_ptr;
  if (!getkCASnapshotFormatWideGamutSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotFormatWideGamut");
    getkCASnapshotFormatWideGamutSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2E5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotFormatWideGamutSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotFormatWideGamut");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotFormatWideGamutSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotFormatWideGamut()
{
  v0 = getkCASnapshotFormatWideGamutSymbolLoc();
  if (!v0)
  {
    getkCASnapshotFormatWideGamut_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCASnapshotModeSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotModeSymbolLoc_ptr;
  v6 = getkCASnapshotModeSymbolLoc_ptr;
  if (!getkCASnapshotModeSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotMode");
    getkCASnapshotModeSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2E730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotModeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotMode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotModeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotMode()
{
  v0 = getkCASnapshotModeSymbolLoc();
  if (!v0)
  {
    getkCASnapshotMode_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCASnapshotModeIncludeContextListSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotModeIncludeContextListSymbolLoc_ptr;
  v6 = getkCASnapshotModeIncludeContextListSymbolLoc_ptr;
  if (!getkCASnapshotModeIncludeContextListSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotModeIncludeContextList");
    getkCASnapshotModeIncludeContextListSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2E8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotModeIncludeContextListSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotModeIncludeContextList");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotModeIncludeContextListSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotModeIncludeContextList()
{
  v0 = getkCASnapshotModeIncludeContextListSymbolLoc();
  if (!v0)
  {
    getkCASnapshotModeIncludeContextList_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCASnapshotOriginXSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotOriginXSymbolLoc_ptr;
  v6 = getkCASnapshotOriginXSymbolLoc_ptr;
  if (!getkCASnapshotOriginXSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotOriginX");
    getkCASnapshotOriginXSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2EA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCASnapshotOriginXSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCASnapshotOriginX");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCASnapshotOriginXSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getkCASnapshotOriginX()
{
  v0 = getkCASnapshotOriginXSymbolLoc();
  if (!v0)
  {
    getkCASnapshotOriginX_cold_1();
  }

  v1 = *v0;

  return v1;
}

uint64_t getkCASnapshotOriginYSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCASnapshotOriginYSymbolLoc_ptr;
  v6 = getkCASnapshotOriginYSymbolLoc_ptr;
  if (!getkCASnapshotOriginYSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v4[3] = dlsym(v1, "kCASnapshotOriginY");
    getkCASnapshotOriginYSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A2E2EB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}
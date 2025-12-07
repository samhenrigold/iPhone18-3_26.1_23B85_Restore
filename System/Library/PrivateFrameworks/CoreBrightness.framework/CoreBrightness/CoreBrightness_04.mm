uint64_t __os_log_helper_16_2_3_8_0_8_0_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

double __handleShutdownNotification_block_invoke(uint64_t a1)
{
  v10 = a1;
  v9 = a1;
  if (*(a1 + 32))
  {
    [*(a1 + 32) stopRamp];
    [*(a1 + 32) setUserActive:0];
    [*(a1 + 32) updateBacklightDeviceWithReason:4];
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v8 = inited;
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
    {
      log = v8;
      type = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_impl(&dword_1DE8E5000, log, type, "Got shutdown notification -> turned off keyboard backlight", v6, 2u);
    }

    *&result = MEMORY[0x1E69E5920](*(a1 + 32)).n128_u64[0];
  }

  return result;
}

double __handleAvailabilityNotification_block_invoke(uint64_t a1)
{
  if (GSEventIsHardwareKeyboardAttached())
  {
    v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
    [*(a1 + 32) KBAvailabilityUpdateHandler:v4];
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    [*(a1 + 32) stopRamp];
    v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
    [*(a1 + 32) KBAvailabilityUpdateHandler:v3];
    MEMORY[0x1E69E5920](v3);
  }

  *&result = MEMORY[0x1E69E5920](*(a1 + 32)).n128_u64[0];
  return result;
}

uint64_t __os_log_helper_16_2_4_4_0_8_0_8_0_8_32(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 32;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_17_4_0_8_0_8_0_8_32_8_0_8_0_8_32_8_0_8_32_8_0_8_32_8_0_8_32_8_0_8_0_8_32_8_0(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *result = 2;
  *(result + 1) = 17;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 32;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 0;
  *(result + 39) = 8;
  *(result + 40) = a6;
  *(result + 48) = 0;
  *(result + 49) = 8;
  *(result + 50) = a7;
  *(result + 58) = 32;
  *(result + 59) = 8;
  *(result + 60) = a8;
  *(result + 68) = 0;
  *(result + 69) = 8;
  *(result + 70) = a9;
  *(result + 78) = 32;
  *(result + 79) = 8;
  *(result + 80) = a10;
  *(result + 88) = 0;
  *(result + 89) = 8;
  *(result + 90) = a11;
  *(result + 98) = 32;
  *(result + 99) = 8;
  *(result + 100) = a12;
  *(result + 108) = 0;
  *(result + 109) = 8;
  *(result + 110) = a13;
  *(result + 118) = 32;
  *(result + 119) = 8;
  *(result + 120) = a14;
  *(result + 128) = 0;
  *(result + 129) = 8;
  *(result + 130) = a15;
  *(result + 138) = 0;
  *(result + 139) = 8;
  *(result + 140) = a16;
  *(result + 148) = 32;
  *(result + 149) = 8;
  *(result + 150) = a17;
  *(result + 158) = 0;
  *(result + 159) = 8;
  *(result + 160) = a18;
  return result;
}

uint64_t __os_log_helper_16_2_8_8_32_8_0_8_0_8_0_8_0_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *result = 2;
  *(result + 1) = 8;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 0;
  *(result + 53) = 8;
  *(result + 54) = a7;
  *(result + 62) = 0;
  *(result + 63) = 8;
  *(result + 64) = a8;
  *(result + 72) = 0;
  *(result + 73) = 8;
  *(result + 74) = a9;
  return result;
}

void *ColorRampCallback(void *result, uint64_t a2)
{
  if (result)
  {
    return [result colorRampRoutine:a2];
  }

  return result;
}

uint64_t __os_log_helper_16_0_8_4_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *result = 0;
  *(result + 1) = 8;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 0;
  *(result + 39) = 8;
  *(result + 40) = a6;
  *(result + 48) = 0;
  *(result + 49) = 8;
  *(result + 50) = a7;
  *(result + 58) = 0;
  *(result + 59) = 8;
  *(result + 60) = a8;
  *(result + 68) = 0;
  *(result + 69) = 8;
  *(result + 70) = a9;
  return result;
}

uint64_t __os_log_helper_16_2_16_4_0_8_0_8_32_8_0_8_0_8_32_8_0_8_32_8_0_8_32_8_0_8_32_8_0_8_0_8_32_8_0(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *result = 2;
  *(result + 1) = 16;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 32;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 0;
  *(result + 39) = 8;
  *(result + 40) = a6;
  *(result + 48) = 32;
  *(result + 49) = 8;
  *(result + 50) = a7;
  *(result + 58) = 0;
  *(result + 59) = 8;
  *(result + 60) = a8;
  *(result + 68) = 32;
  *(result + 69) = 8;
  *(result + 70) = a9;
  *(result + 78) = 0;
  *(result + 79) = 8;
  *(result + 80) = a10;
  *(result + 88) = 32;
  *(result + 89) = 8;
  *(result + 90) = a11;
  *(result + 98) = 0;
  *(result + 99) = 8;
  *(result + 100) = a12;
  *(result + 108) = 32;
  *(result + 109) = 8;
  *(result + 110) = a13;
  *(result + 118) = 0;
  *(result + 119) = 8;
  *(result + 120) = a14;
  *(result + 128) = 0;
  *(result + 129) = 8;
  *(result + 130) = a15;
  *(result + 138) = 32;
  *(result + 139) = 8;
  *(result + 140) = a16;
  *(result + 148) = 0;
  *(result + 149) = 8;
  *(result + 150) = a17;
  return result;
}

uint64_t __os_log_helper_16_0_4_4_0_8_0_8_0_8_0(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 0;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

uint64_t __os_log_helper_16_0_9_4_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *result = 0;
  *(result + 1) = 9;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 0;
  *(result + 39) = 8;
  *(result + 40) = a6;
  *(result + 48) = 0;
  *(result + 49) = 8;
  *(result + 50) = a7;
  *(result + 58) = 0;
  *(result + 59) = 8;
  *(result + 60) = a8;
  *(result + 68) = 0;
  *(result + 69) = 8;
  *(result + 70) = a9;
  *(result + 78) = 0;
  *(result + 79) = 8;
  *(result + 80) = a10;
  return result;
}

uint64_t __os_log_helper_16_2_6_8_64_8_64_8_0_4_0_4_0_8_32(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 4;
  *(result + 34) = a5;
  *(result + 38) = 0;
  *(result + 39) = 4;
  *(result + 40) = a6;
  *(result + 44) = 32;
  *(result + 45) = 8;
  *(result + 46) = a7;
  return result;
}

uint64_t __os_log_helper_16_0_4_8_0_8_0_4_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *result = 0;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

id getMLFeatureValueClass_2()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getMLFeatureValueClass_softClass_2;
  v13 = getMLFeatureValueClass_softClass_2;
  if (!getMLFeatureValueClass_softClass_2)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLFeatureValueClass_block_invoke_2;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLFeatureValueClass_block_invoke_2(&v2);
  }

  v1 = MEMORY[0x1E69E5928](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

id getMLModelClass_2()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getMLModelClass_softClass_2;
  v13 = getMLModelClass_softClass_2;
  if (!getMLModelClass_softClass_2)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLModelClass_block_invoke_2;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLModelClass_block_invoke_2(&v2);
  }

  v1 = MEMORY[0x1E69E5928](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

id getMLPredictionOptionsClass_2()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getMLPredictionOptionsClass_softClass_2;
  v13 = getMLPredictionOptionsClass_softClass_2;
  if (!getMLPredictionOptionsClass_softClass_2)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLPredictionOptionsClass_block_invoke_2;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLPredictionOptionsClass_block_invoke_2(&v2);
  }

  v1 = MEMORY[0x1E69E5928](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

id getMLArrayBatchProviderClass_2()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getMLArrayBatchProviderClass_softClass_2;
  v13 = getMLArrayBatchProviderClass_softClass_2;
  if (!getMLArrayBatchProviderClass_softClass_2)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLArrayBatchProviderClass_block_invoke_2;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLArrayBatchProviderClass_block_invoke_2(&v2);
  }

  v1 = MEMORY[0x1E69E5928](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getMLFeatureValueClass_block_invoke_2(uint64_t a1)
{
  CoreMLLibrary_3();
  Class = objc_getClass("MLFeatureValue");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np("Unable to find class %s", "MLFeatureValue");
  }

  getMLFeatureValueClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreMLLibrary_3()
{
  v2 = 0;
  v1 = CoreMLLibraryCore_3(&v2);
  if (!v1)
  {
    abort_report_np("%s", v2);
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

uint64_t CoreMLLibraryCore_3(uint64_t a1)
{
  v10 = a1;
  v8 = CoreMLLibraryCore_frameworkLibrary_3;
  v9 = CoreMLLibraryCore_frameworkLibrary_3;
  if (!CoreMLLibraryCore_frameworkLibrary_3)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __CoreMLLibraryCore_block_invoke_3;
    v6 = &__block_descriptor_40_e5_v8__0l;
    v7 = v10;
    __CoreMLLibraryCore_block_invoke_3(&v2);
  }

  return CoreMLLibraryCore_frameworkLibrary_3;
}

uint64_t __CoreMLLibraryCore_block_invoke_3(uint64_t a1)
{
  result = _sl_dlopen();
  CoreMLLibraryCore_frameworkLibrary_3 = result;
  return result;
}

uint64_t __getMLModelClass_block_invoke_2(uint64_t a1)
{
  CoreMLLibrary_3();
  Class = objc_getClass("MLModel");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np("Unable to find class %s", "MLModel");
  }

  getMLModelClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __getMLPredictionOptionsClass_block_invoke_2(uint64_t a1)
{
  CoreMLLibrary_3();
  Class = objc_getClass("MLPredictionOptions");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np("Unable to find class %s", "MLPredictionOptions");
  }

  getMLPredictionOptionsClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __getMLArrayBatchProviderClass_block_invoke_2(uint64_t a1)
{
  CoreMLLibrary_3();
  Class = objc_getClass("MLArrayBatchProvider");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np("Unable to find class %s", "MLArrayBatchProvider");
  }

  getMLArrayBatchProviderClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void displayArrivalCallback(void *a1, io_iterator_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v10 = a2;
  if (a1 && v10)
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v12, v11);
      _os_log_impl(&dword_1DE8E5000, inited, OS_LOG_TYPE_DEFAULT, "display arrived refcon=%p", v12, 0xCu);
    }

    while (1)
    {
      v6 = IOIteratorNext(v10);
      if (!v6)
      {
        break;
      }

      [v11 handleDisplayArrival:v6];
    }
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v5 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v5 = init_default_corebrightness_log();
    }

    v9 = v5;
    v8 = 16;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "error: invalid input", v7, 2u);
    }
  }
}

uint64_t __os_log_helper_16_2_3_4_0_8_0_8_66(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 66;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

void sub_1DEA21FB8(uint64_t a1, int a2)
{
  *(v2 - 120) = a1;
  *(v2 - 124) = a2;
  _Block_object_dispose((v2 - 64), 8);
  _Unwind_Resume(*(v2 - 120));
}

uint64_t __os_log_helper_16_2_4_8_64_8_64_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_3_4_8_64_8_64_8_64_8_65(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 3;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 65;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_0_4_8_0_8_0_8_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *result = 0;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 4;
  *(result + 34) = a5;
  return result;
}

float DisplayPerceptualLuminanceToLuminance(uint64_t a1, float a2)
{
  v19 = a1;
  v18 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x20000000;
  v16 = 32;
  v17 = 0;
  v2 = *(a1 + 144);
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __DisplayPerceptualLuminanceToLuminance_block_invoke;
  v9 = &unk_1E867C8C8;
  v10 = &v13;
  v11 = v19;
  v12 = a2;
  disp_dispatch_sync(v2, &v5);
  v4 = v14[6];
  _Block_object_dispose(&v13, 8);
  return v4;
}

uint64_t __DisplayPerceptualLuminanceToLuminance_block_invoke(uint64_t a1)
{
  v1 = _DisplayPerceptualLuminanceToLuminanceInternal(*(a1 + 40), *(a1 + 48));
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v1;
  return result;
}

float DisplayReflectedLuminanceToPerceptualLuminance(uint64_t a1, float a2)
{
  v19 = a1;
  v18 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x20000000;
  v16 = 32;
  v17 = 0;
  v2 = *(a1 + 144);
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __DisplayReflectedLuminanceToPerceptualLuminance_block_invoke;
  v9 = &unk_1E867C8C8;
  v10 = &v13;
  v11 = v19;
  v12 = a2;
  disp_dispatch_sync(v2, &v5);
  v4 = v14[6];
  _Block_object_dispose(&v13, 8);
  return v4;
}

uint64_t __DisplayReflectedLuminanceToPerceptualLuminance_block_invoke(uint64_t a1)
{
  v1 = _DisplayReflectedLuminanceToPerceptualLuminanceInternal(*(a1 + 40), *(a1 + 48));
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v1;
  return result;
}

float _DisplayReflectedLuminanceToPerceptualLuminanceInternal(uint64_t a1, float a2)
{
  v5 = fminf(fmaxf(a2, 0.01), *(a1 + 1312));
  v2 = *(a1 + 1312) / 0.01;
  v4 = logf(v2);
  return (logf(v5 / *(a1 + 1312)) / v4) + 1.0;
}

float _DisplayPerceptualLuminanceToReflectedLuminanceInternal(uint64_t a1, float a2)
{
  v4 = *(a1 + 1312);
  v2 = v4 / 0.01;
  return v4 * powf(v2, a2 - 1.0);
}

float DisplayPerceptualLuminanceToReflectedLuminance(uint64_t a1, float a2)
{
  v19 = a1;
  v18 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x20000000;
  v16 = 32;
  v17 = 0;
  v2 = *(a1 + 144);
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __DisplayPerceptualLuminanceToReflectedLuminance_block_invoke;
  v9 = &unk_1E867C8C8;
  v10 = &v13;
  v11 = v19;
  v12 = a2;
  disp_dispatch_sync(v2, &v5);
  v4 = v14[6];
  _Block_object_dispose(&v13, 8);
  return v4;
}

uint64_t __DisplayPerceptualLuminanceToReflectedLuminance_block_invoke(uint64_t a1)
{
  v1 = _DisplayPerceptualLuminanceToReflectedLuminanceInternal(*(a1 + 40), *(a1 + 48));
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v1;
  return result;
}

uint64_t DisplayGetTypeID()
{
  if (!__kHIDDisplayTypeID)
  {
    pthread_once(&__displayTypeInit, __DisplayRegister);
  }

  return __kHIDDisplayTypeID;
}

uint64_t __DisplayRegister()
{
  result = _CFRuntimeRegisterClass();
  __kHIDDisplayTypeID = result;
  return result;
}

void *__DisplayRequiresBDM_block_invoke(uint64_t a1)
{
  v4 = a1;
  v3 = a1;
  v2 = 0;
  result = [*(*(a1 + 32) + 13040) loadUint:@"use-bright-dot-mitigation" toDestination:&v2];
  if (result)
  {
    DisplayRequiresBDM_requiresBDM = v2 != 0;
  }

  return result;
}

CFTypeRef DisplayCreateWithCapabilitiesAndID(const __CFAllocator *a1, io_object_t a2, NSObject *a3, uint64_t a4, int a5)
{
  v345 = *MEMORY[0x1E69E9840];
  allocator = a1;
  object = a2;
  target = a3;
  v292 = a4;
  v291 = a5;
  _logHandle = os_log_create("com.apple.CoreBrightness.Display", "default");
  cf = 0;
  CFProperty = 0;
  v287 = 0;
  Private = __DisplayCreatePrivate(allocator);
  if (!Private)
  {
    return 0;
  }

  *(Private + 69) = 0;
  *(Private + 70) = -1.0;
  *(Private + 55) = 0;
  *(Private + 56) = 0;
  *(Private + 57) = 0;
  *(Private + 2) = 0;
  *(Private + 10) = 0;
  *(Private + 3148) = v291;
  *(Private + 3149) = 0;
  *(Private + 3150) = 0;
  *(Private + 321) = 0;
  *(Private + 322) = 0;
  *(Private + 323) = 0;
  *(Private + 26) = 0;
  *(Private + 54) = 1199570944;
  *(Private + 12712) = 0;
  *(Private + 3182) = 1.0;
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v6) = info.denom;
  LODWORD(v5) = info.numer;
  *(Private + 7) = v5 / v6 * 0.000000001;
  if (!object)
  {
    goto LABEL_466;
  }

  if (IOObjectRetain(object))
  {
    goto LABEL_466;
  }

  *(Private + 20) = object;
  *(Private + 15) = 0;
  *(Private + 16) = 0;
  v7 = CFRetain(@"CBUser-0");
  *(Private + 1590) = v7;
  v8 = [CBBacklightNode alloc];
  v9 = [(CBBacklightNode *)v8 initWithService:object];
  *(Private + 1630) = v9;
  v284 = 0;
  number = 0;
  theDict = IORegistryEntryCreateCFProperty(object, @"IODisplayParameters", allocator, 0);
  if (!theDict)
  {
    goto LABEL_466;
  }

  v284 = CFDictionaryGetValue(theDict, @"brightness");
  if (v284)
  {
    number = CFDictionaryGetValue(v284, @"value");
    if (number)
    {
      CFNumberGetValue(number, kCFNumberSInt32Type, Private + 1244);
      number = CFDictionaryGetValue(v284, @"min");
      if (number)
      {
        CFNumberGetValue(number, kCFNumberSInt32Type, Private + 1236);
        number = CFDictionaryGetValue(v284, @"max");
        if (number)
        {
          CFNumberGetValue(number, kCFNumberSInt32Type, Private + 1240);
        }
      }
    }
  }

  CFRelease(theDict);
  cf = IORegistryEntryCreateCFProperty(object, @"new-backlight-architecture", allocator, 0);
  if (cf && cf == *MEMORY[0x1E695E4D0])
  {
    *(Private + 8) = 1;
    if (_logHandle)
    {
      v139 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v139 = inited;
    }

    oslog = v139;
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v137 = type;
      __os_log_helper_16_0_0(v280);
      _os_log_impl(&dword_1DE8E5000, log, v137, "New backlight architecture.", v280, 2u);
    }
  }

  else
  {
    pthread_once(&__displayThreadInit, __DisplayBrightnessThreadInit);
    *(Private + 9) = 1;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  CFProperty = IORegistryEntryCreateCFProperty(object, @"backlight-calibration-parameters", allocator, 0);
  if (CFProperty)
  {
    v135 = CFGetTypeID(CFProperty);
    if (v135 == CFDictionaryGetTypeID())
    {
      number = CFDictionaryGetValue(CFProperty, @"current-for-max-backlight");
      CFNumberGetValue(number, kCFNumberFloatType, Private + 1288);
      *(Private + 322) = *(Private + 322) / 65536.0;
      number = CFDictionaryGetValue(CFProperty, @"current-for-mid-backlight");
      CFNumberGetValue(number, kCFNumberFloatType, Private + 1292);
      *(Private + 323) = *(Private + 323) / 65536.0;
      number = CFDictionaryGetValue(CFProperty, @"hardware-max-current-limit");
      CFNumberGetValue(number, kCFNumberFloatType, Private + 1296);
      *(Private + 324) = *(Private + 324) / 65536.0;
      number = CFDictionaryGetValue(CFProperty, @"lMaxProduct");
      CFNumberGetValue(number, kCFNumberFloatType, Private + 1300);
      *(Private + 325) = *(Private + 325) / 65536.0;
      number = CFDictionaryGetValue(CFProperty, @"lMidProduct");
      CFNumberGetValue(number, kCFNumberFloatType, Private + 1304);
      *(Private + 326) = *(Private + 326) / 65536.0;
      number = CFDictionaryGetValue(CFProperty, @"lMinProduct");
      CFNumberGetValue(number, kCFNumberFloatType, Private + 1308);
      *(Private + 327) = *(Private + 327) / 65536.0;
      number = CFDictionaryGetValue(CFProperty, @"lMaxPanel");
      CFNumberGetValue(number, kCFNumberFloatType, Private + 1312);
      *(Private + 328) = *(Private + 328) / 65536.0;
      number = CFDictionaryGetValue(CFProperty, @"lMidPanel");
      CFNumberGetValue(number, kCFNumberFloatType, Private + 1316);
      *(Private + 329) = *(Private + 329) / 65536.0;
      number = CFDictionaryGetValue(CFProperty, @"lMinPanel");
      CFNumberGetValue(number, kCFNumberFloatType, Private + 1320);
      *(Private + 330) = *(Private + 330) / 65536.0;
      *(Private + 331) = *(Private + 328);
      number = CFDictionaryGetValue(CFProperty, @"milliAmps2NitsScaleFactor");
      if (number)
      {
        valuePtr = *(Private + 328);
        CFNumberGetValue(number, kCFNumberFloatType, &valuePtr);
        if (valuePtr > 0.0)
        {
          *(Private + 331) = valuePtr / 65536.0;
        }
      }

      if (_logHandle)
      {
        v134 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v133 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v133 = init_default_corebrightness_log();
        }

        v134 = v133;
      }

      v278 = v134;
      v277 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v344, COERCE__INT64(*(Private + 322)));
        _os_log_impl(&dword_1DE8E5000, v278, v277, "I_max=%f", v344, 0xCu);
      }

      if (_logHandle)
      {
        v132 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v131 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v131 = init_default_corebrightness_log();
        }

        v132 = v131;
      }

      v276 = v132;
      v275 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v343, COERCE__INT64(*(Private + 323)));
        _os_log_impl(&dword_1DE8E5000, v276, v275, "I_mid=%f", v343, 0xCu);
      }

      if (_logHandle)
      {
        v130 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v129 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v129 = init_default_corebrightness_log();
        }

        v130 = v129;
      }

      v274 = v130;
      v273 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v342, COERCE__INT64(*(Private + 324)));
        _os_log_impl(&dword_1DE8E5000, v274, v273, "Ihw_max=%f", v342, 0xCu);
      }

      if (_logHandle)
      {
        v128 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v127 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v127 = init_default_corebrightness_log();
        }

        v128 = v127;
      }

      v272 = v128;
      v271 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v341, COERCE__INT64(*(Private + 325)));
        _os_log_impl(&dword_1DE8E5000, v272, v271, "Lmax_product=%f", v341, 0xCu);
      }

      if (_logHandle)
      {
        v126 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v125 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v125 = init_default_corebrightness_log();
        }

        v126 = v125;
      }

      v270 = v126;
      v269 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v340, COERCE__INT64(*(Private + 326)));
        _os_log_impl(&dword_1DE8E5000, v270, v269, "Lmid_product=%f", v340, 0xCu);
      }

      if (_logHandle)
      {
        v124 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v123 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v123 = init_default_corebrightness_log();
        }

        v124 = v123;
      }

      v268 = v124;
      v267 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v339, COERCE__INT64(*(Private + 327)));
        _os_log_impl(&dword_1DE8E5000, v268, v267, "Lmin_product=%f", v339, 0xCu);
      }

      if (_logHandle)
      {
        v122 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v121 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v121 = init_default_corebrightness_log();
        }

        v122 = v121;
      }

      v266 = v122;
      v265 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v338, COERCE__INT64(*(Private + 328)));
        _os_log_impl(&dword_1DE8E5000, v266, v265, "Lmax_panel=%f", v338, 0xCu);
      }

      if (_logHandle)
      {
        v120 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v119 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v119 = init_default_corebrightness_log();
        }

        v120 = v119;
      }

      v264 = v120;
      v263 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v337, COERCE__INT64(*(Private + 329)));
        _os_log_impl(&dword_1DE8E5000, v264, v263, "Lmid_panel=%f", v337, 0xCu);
      }

      if (_logHandle)
      {
        v118 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v117 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v117 = init_default_corebrightness_log();
        }

        v118 = v117;
      }

      v262 = v118;
      v261 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v336, COERCE__INT64(*(Private + 330)));
        _os_log_impl(&dword_1DE8E5000, v262, v261, "Lmin_panel=%f", v336, 0xCu);
      }

      if (_logHandle)
      {
        v116 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v115 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v115 = init_default_corebrightness_log();
        }

        v116 = v115;
      }

      v260 = v116;
      v259 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v335, COERCE__INT64(*(Private + 331)));
        _os_log_impl(&dword_1DE8E5000, v260, v259, "milliAmps2NitsScaleFactor=%f", v335, 0xCu);
      }

      if ([+[CBAODState enableAODLiveON] sharedInstance]
      {
        v333 = xmmword_1DEACE4EC;
        v334 = 713503427;
        v331 = xmmword_1DEACE500;
        v332 = -1632750650;
        v46 = &v331;
        v47 = 0;
        if (MGIsDeviceOneOfType())
        {
          *(Private + 330) = 2.0;
        }
      }
    }

    CFRelease(CFProperty);
  }

  else
  {
    *(Private + 330) = 5.0;
    *(Private + 327) = 5.0;
    *(Private + 329) = 1124859904;
    *(Private + 326) = 1124859904;
    *(Private + 328) = 1137180672;
    *(Private + 325) = 1137180672;
    v10 = _DisplaySliderToLogicalBrightnessInternal(Private, 0.0);
    *(Private + 330) = v10;
    *(Private + 327) = v10;
    v11 = _DisplaySliderToLogicalBrightnessInternal(Private, 0.5);
    *(Private + 329) = v11;
    *(Private + 326) = v11;
    v12 = _DisplaySliderToLogicalBrightnessInternal(Private, 1.0);
    *(Private + 328) = v12;
    *(Private + 325) = v12;
    *(Private + 331) = *(Private + 328);
  }

  *(Private + 386) = *(Private + 328);
  *(Private + 383) = *(Private + 330);
  *(Private + 1548) = 0;
  v258 = *(Private + 383);
  [*(Private + 1630) loadFixedFloat:@"digital-dimming-min-nits" toDestination:{&v258, v46, v47}];
  *(Private + 382) = v258;
  v257 = *(Private + 386);
  [*(Private + 1630) loadFixedFloat:@"user-accessible-max-nits" toDestination:&v257];
  *(Private + 384) = v257;
  v256 = *(Private + 330);
  [*(Private + 1630) loadFixedFloat:@"aot-accessible-min-nits" toDestination:&v256];
  *(Private + 385) = v256;
  *(Private + 1516) = *(Private + 383) > *(Private + 382);
  *(Private + 1517) = *(Private + 386) > *(Private + 384);
  v287 = IORegistryEntryCreateCFProperty(object, @"backlight-marketing-table", *MEMORY[0x1E695E480], 0);
  if (v287)
  {
    v114 = CFGetTypeID(v287);
    if (v114 == CFDataGetTypeID())
    {
      count = CFDataGetLength(v287) / 4uLL;
      v254 = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
      BytePtr = CFDataGetBytePtr(v287);
      for (i = 0; i < count; ++i)
      {
        v251 = 0;
        v13 = BytePtr;
        BytePtr += 4;
        v251 = *v13;
        v254[i] = v251 / 65536.0;
      }

      v250 = *(Private + 386);
      v249 = *(Private + 383);
      if (_logHandle)
      {
        v113 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v112 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v112 = init_default_corebrightness_log();
        }

        v113 = v112;
      }

      v248 = v113;
      v247 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_6_8_0_8_0_8_0_8_0_8_0_8_0(v330, COERCE__INT64(*(Private + 386)), COERCE__INT64(*(Private + 383)), COERCE__INT64(*(Private + 384)), COERCE__INT64(*(Private + 382)), 0x3FF0000000000000, count);
        _os_log_debug_impl(&dword_1DE8E5000, v248, v247, "Digital dimming params: hardware max: %f, hardware min: %f, user accessible max: %f, dig.dimming min: %f, midpointfactor: %f, mark table entries count: %ld", v330, 0x3Eu);
      }

      v246 = 1.0;
      if (*(Private + 1516))
      {
        for (j = 0; j < count / 2; ++j)
        {
          v244 = (*(Private + 382) / v249) + ((j / (count / 2 - 1)) * (1.0 - (*(Private + 382) / v249)));
          v254[j] = v254[j] * v244;
          if (_logHandle)
          {
            v111 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v110 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v110 = init_default_corebrightness_log();
            }

            v111 = v110;
          }

          v243 = v111;
          v242 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_3_8_0_8_0_8_0(v329, j, COERCE__INT64(v254[j]), COERCE__INT64(v244));
            _os_log_debug_impl(&dword_1DE8E5000, v243, v242, "Rescaled marketing table %ld: %f (factor %f)", v329, 0x20u);
          }
        }
      }

      if (*(Private + 1517))
      {
        for (k = count / 2; k < count; ++k)
        {
          v240 = (((k - count / 2) / (count - 1 - count / 2)) * ((*(Private + 384) / v250) - 1.0)) + 1.0;
          v254[k] = v254[k] * v240;
          if (_logHandle)
          {
            v109 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v108 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v108 = init_default_corebrightness_log();
            }

            v109 = v108;
          }

          v239 = v109;
          v238 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_3_8_0_8_0_8_0(v328, k, COERCE__INT64(v254[k]), COERCE__INT64(v240));
            _os_log_debug_impl(&dword_1DE8E5000, v239, v238, "Rescaled marketing table %ld: %f (factor %f)", v328, 0x20u);
          }
        }
      }

      *(Private + 9) = v254;
      *(Private + 16) = count;
    }

    CFRelease(v287);
  }

  else
  {
    if (*(Private + 8))
    {
      goto LABEL_466;
    }

    v326 = 0x430C000040A00000;
    v327 = 1137180672;
    v237 = 3;
    v14 = malloc_type_calloc(3uLL, 4uLL, 0x100004052888210uLL);
    *(Private + 9) = v14;
    *(Private + 16) = v237;
    __memcpy_chk();
  }

  if (_logHandle)
  {
    v107 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v106 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v106 = init_default_corebrightness_log();
    }

    v107 = v106;
  }

  v236 = v107;
  v235 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_3_8_0_8_0_8_0(v325, COERCE__INT64(*(Private + 330)), COERCE__INT64(*(Private + 329)), COERCE__INT64(*(Private + 328)));
    _os_log_debug_impl(&dword_1DE8E5000, v236, v235, "Original panel calibration data: %f %f %f", v325, 0x20u);
  }

  if (*(Private + 1516))
  {
    v15 = *(Private + 382);
    *(Private + 330) = v15;
    *(Private + 327) = v15;
  }

  if (*(Private + 1517))
  {
    v16 = *(Private + 384);
    *(Private + 328) = v16;
    *(Private + 325) = v16;
  }

  if (_logHandle)
  {
    v105 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v104 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v104 = init_default_corebrightness_log();
    }

    v105 = v104;
  }

  v234 = v105;
  v233 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_3_8_0_8_0_8_0(v324, COERCE__INT64(*(Private + 330)), COERCE__INT64(*(Private + 329)), COERCE__INT64(*(Private + 328)));
    _os_log_debug_impl(&dword_1DE8E5000, v234, v233, "Overridden panel calibration data: %f %f %f", v324, 0x20u);
  }

  *(Private + 75) = 0;
  [*(Private + 1630) loadInt:@"nits2mAmps0thOrderCoef" toDestination:Private + 300];
  *(Private + 74) = 1310720;
  [*(Private + 1630) loadInt:@"nits2mAmps1stOrderCoef" toDestination:Private + 296];
  *(Private + 73) = 0;
  [*(Private + 1630) loadInt:@"nits2mAmps2ndOrderCoef" toDestination:Private + 292];
  *(Private + 76) = 1072064102;
  *(Private + 312) = 0;
  *(Private + 79) = -1.0;
  *(Private + 77) = 0;
  if ([*(Private + 1630) loadUint:@"display-type-A" toDestination:Private + 308])
  {
    if (_logHandle)
    {
      v103 = _logHandle;
    }

    else
    {
      v102 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v103 = v102;
    }

    v232 = v103;
    v231 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      v100 = v232;
      v101 = v231;
      __os_log_helper_16_0_0(v230);
      _os_log_impl(&dword_1DE8E5000, v100, v101, "New backlight architecture.", v230, 2u);
    }
  }

  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(Private + 24) = Mutable;
  if (*(Private + 24))
  {
    context = objc_autoreleasePoolPush();
    v322[0] = @"HardwareAccessibleMaxNits";
    v323[0] = [MEMORY[0x1E696AD98] numberWithDouble:*(Private + 386)];
    v322[1] = @"UserAccessibleMaxNits";
    v323[1] = [MEMORY[0x1E696AD98] numberWithDouble:*(Private + 384)];
    v322[2] = @"HardwareAccessibleMinNits";
    v323[2] = [MEMORY[0x1E696AD98] numberWithDouble:*(Private + 383)];
    v322[3] = @"MinNitsAccessibleWithDigitalDimming";
    v323[3] = [MEMORY[0x1E696AD98] numberWithDouble:*(Private + 382)];
    v322[4] = @"DigitalDimmingSupported";
    v323[4] = [MEMORY[0x1E696AD98] numberWithBool:*(Private + 1516) & 1];
    v322[5] = @"ExtrabrightEDRSupported";
    v323[5] = [MEMORY[0x1E696AD98] numberWithBool:*(Private + 1517) & 1];
    value = [MEMORY[0x1E695DF20] dictionaryWithObjects:v323 forKeys:v322 count:6];
    CFDictionarySetValue(*(Private + 24), @"VirtualBrightnessLimits", value);
    objc_autoreleasePoolPop(context);
    number = CFNumberCreate(allocator, kCFNumberFloatType, Private + 1320);
    if (number)
    {
      CFDictionarySetValue(*(Private + 24), @"DisplayPanelLuminanceMin", number);
      CFRelease(number);
    }

    number = CFNumberCreate(allocator, kCFNumberFloatType, Private + 1316);
    if (number)
    {
      CFDictionarySetValue(*(Private + 24), @"DisplayPanelLuminanceMid", number);
      CFRelease(number);
    }

    number = CFNumberCreate(allocator, kCFNumberFloatType, Private + 1312);
    if (number)
    {
      CFDictionarySetValue(*(Private + 24), @"DisplayPanelLuminanceMax", number);
      CFRelease(number);
    }

    number = CFNumberCreate(allocator, kCFNumberFloatType, Private + 1308);
    if (number)
    {
      CFDictionarySetValue(*(Private + 24), @"DisplayProductLuminanceMin", number);
      CFRelease(number);
    }

    number = CFNumberCreate(allocator, kCFNumberFloatType, Private + 1304);
    if (number)
    {
      CFDictionarySetValue(*(Private + 24), @"DisplayProductLuminanceMid", number);
      CFRelease(number);
    }

    number = CFNumberCreate(allocator, kCFNumberFloatType, Private + 1300);
    if (number)
    {
      CFDictionarySetValue(*(Private + 24), @"DisplayProductLuminanceMax", number);
      CFRelease(number);
    }

    number = CFNumberCreate(allocator, kCFNumberFloatType, Private + 1540);
    if (number)
    {
      CFDictionarySetValue(*(Private + 24), @"CBAODMinNits", number);
      CFRelease(number);
    }

    *(Private + 21) = 0;
    *(Private + 22) = 1;
    *(Private + 12) = 0;
    number = CFNumberCreate(allocator, kCFNumberIntType, Private + 308);
    if (number)
    {
      CFDictionarySetValue(*(Private + 24), @"DisplayTypeA", number);
      CFRelease(number);
    }

    v228 = 0;
    if ([*(Private + 1630) loadUint:@"default-curve-version" toDestination:&v228])
    {
      number = CFNumberCreate(allocator, kCFNumberIntType, &v228);
      if (number)
      {
        CFDictionarySetValue(*(Private + 24), @"DefaultCurveVersion", number);
        CFRelease(number);
      }
    }

    v227 = 0;
    if ([*(Private + 1630) loadUint:@"raise-high-curve" toDestination:&v227])
    {
      number = CFNumberCreate(allocator, kCFNumberIntType, &v227);
      if (number)
      {
        CFDictionarySetValue(*(Private + 24), @"RaiseHighCurve", number);
        CFRelease(number);
      }
    }

    v226 = 0;
    v225 = load_int_from_edt(object, @"plt-logic-version", &v226);
    if ((v225 & 1) == 0)
    {
      v226 = 0;
    }

    v224 = CFNumberCreate(allocator, kCFNumberIntType, &v226);
    if (v224)
    {
      CFDictionarySetValue(*(Private + 24), @"plt-logic-version", v224);
      CFRelease(v224);
    }

    *(Private + 285) = 1.0;
    *(Private + 1048) = 0;
    *(Private + 1120) = 0;
    v223 = 0;
    GlobalScalarFromDevice = _DisplayGetGlobalScalarFromDevice(Private, object);
    *(Private + 285) = GlobalScalarFromDevice;
    *(Private + 972) = 0;
    v222 = [*(Private + 1630) copyRestrictionDictionary];
    if (v222)
    {
      v221 = CFDictionaryGetValue(v222, @"multi_point");
      if (v221)
      {
        v98 = CFGetTypeID(v221);
        if (v98 == CFBooleanGetTypeID())
        {
          v19 = CFBooleanGetValue(v221) != 0;
          *(Private + 972) = v19;
        }
      }

      CFDictionarySetValue(*(Private + 24), @"BrightnessRestrictions", v222);
      CFRelease(v222);
      v223 = 1;
    }

    if (*(Private + 285) < 1.0 || (v223 & 1) != 0)
    {
      CFPreferencesSynchronize(@"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
      if (v223)
      {
        v220 = CFPreferencesCopyValue(@"DynamicSliderEnable", @"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
        if (v220)
        {
          v97 = CFGetTypeID(v220);
          if (v97 == CFNumberGetTypeID())
          {
            v219 = 1;
            CFNumberGetValue(v220, kCFNumberIntType, &v219);
            *(Private + 1048) = v219 == 0;
            *(Private + 1120) = v219 == 0;
            CFDictionarySetValue(*(Private + 24), @"DynamicSliderEnable", v220);
          }

          CFRelease(v220);
        }
      }

      if (*(Private + 285) < 1.0)
      {
        v218 = CFPreferencesCopyValue(@"BrightnessGlobalScalar", @"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
        if (v218)
        {
          v96 = CFGetTypeID(v218);
          if (v96 == CFNumberGetTypeID())
          {
            v217 = 1;
            CFNumberGetValue(v218, kCFNumberIntType, &v217);
            if (!v217)
            {
              *(Private + 285) = 1.0;
              CFDictionarySetValue(*(Private + 24), @"BrightnessGlobalScalar", @"disabled");
            }
          }

          CFRelease(v218);
        }
      }
    }

    v216 = 0;
    [*(Private + 1630) loadUint:@"supports-edm" toDestination:&v216];
    v95 = *(Private + 24);
    if (v216)
    {
      CFDictionarySetValue(v95, @"EDMSupported", *MEMORY[0x1E695E4D0]);
    }

    else
    {
      CFDictionarySetValue(v95, @"EDMSupported", *MEMORY[0x1E695E4C0]);
    }

    v215 = [*(Private + 1630) copyAABConstraintDictionary];
    if (v215)
    {
      CFDictionarySetValue(*(Private + 24), @"AABConstraints", v215);
      CFRelease(v215);
    }

    v214 = [*(Private + 1630) copyAABCapDictionary];
    if (v214)
    {
      CFDictionarySetValue(*(Private + 24), @"AABCurveCap", v214);
      CFRelease(v214);
    }

    *(Private + 232) = 0;
    *(Private + 62) = 0;
    *(Private + 61) = -1.0;
    *(Private + 63) = -1;
    *(Private + 65) = -1;
    *(Private + 64) = -1;
    v213 = 0;
    if ([*(Private + 1630) loadUint:@"pre-strobe-dim-period" toDestination:&v213])
    {
      *(Private + 61) = v213 / 1000.0;
      *(Private + 62) = 0;
    }

    v212 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, Private + 244);
    if (v212)
    {
      CFDictionarySetValue(*(Private + 24), @"PreStrobeDimPeriod", v212);
      CFRelease(v212);
    }

    v211 = 0;
    if ([*(Private + 1630) loadUint:@"pre-strobe-current" toDestination:&v211])
    {
      *(Private + 62) = 1;
    }

    v210 = 0;
    if ([*(Private + 1630) loadUint:@"pre-strobe-nit" toDestination:&v210])
    {
      *(Private + 62) = 1;
      v20 = v210 << 16;
      *(Private + 63) = v210 << 16;
      *(Private + 64) = v20;
    }

    v209 = 0;
    [*(Private + 1630) loadUint:@"pre-strobe-drop-als-samples" toDestination:&v209];
    v94 = *(Private + 24);
    if (v209)
    {
      CFDictionarySetValue(v94, @"PreStrobeDropALSSamples", *MEMORY[0x1E695E4D0]);
    }

    else
    {
      CFDictionarySetValue(v94, @"PreStrobeDropALSSamples", *MEMORY[0x1E695E4C0]);
    }

    v208 = 0;
    if ([*(Private + 1630) loadUint:@"sync-wake-ramp" toDestination:&v208])
    {
      *(Private + 21) = v208 != 0;
    }

    v207 = -1;
    v206 = IORegistryEntryCreateCFProperty(*(Private + 20), @"IODisplayParameters", *MEMORY[0x1E695E480], 0);
    if (v206)
    {
      v205 = CFDictionaryGetValue(v206, @"brightness");
      if (v205)
      {
        v204 = CFDictionaryGetValue(v205, @"value");
        if (v204)
        {
          CFNumberGetValue(v204, kCFNumberSInt32Type, &v207);
          *(Private + 26) = v207 != 0;
        }
      }

      if (_logHandle)
      {
        v93 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v92 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v92 = init_default_corebrightness_log();
        }

        v93 = v92;
      }

      v203 = v93;
      v202 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_66(v321, v206);
        _os_log_impl(&dword_1DE8E5000, v203, v202, "display parameters = %{public}@", v321, 0xCu);
      }

      CFRelease(v206);
    }

    v21 = 1.0;
    if (!v207)
    {
      v21 = 0.0;
    }

    v22 = v21;
    *(Private + 87) = v22;
    if (_logHandle)
    {
      v91 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v90 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v90 = init_default_corebrightness_log();
      }

      v91 = v90;
    }

    v201 = v91;
    v200 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_2_4_0_8_0(v320, v207, COERCE__INT64(*(Private + 87)));
      _os_log_impl(&dword_1DE8E5000, v201, v200, "brightness %d -> factor %f", v320, 0x12u);
    }

    *(Private + 350) = *(Private + 87);
    number = CFNumberCreate(allocator, kCFNumberFloatType, Private + 348);
    if (number)
    {
      CFDictionarySetValue(*(Private + 24), @"DisplayBrightnessFactor", number);
      CFRelease(number);
    }

    *(Private + 353) = 0;
    *(Private + 354) = 1.0;
    *(Private + 355) = 0;
    *(Private + 84) = (*(Private + 311) - *(Private + 309)) / (*(Private + 310) - *(Private + 309));
    number = CFNumberCreate(allocator, kCFNumberFloatType, Private + 336);
    if (number)
    {
      CFDictionarySetValue(*(Private + 24), @"DisplayBrightness", number);
      CFRelease(number);
    }

    if (cf)
    {
      v23 = _DisplaySliderToLogicalBrightnessInternal(Private, *(Private + 84));
      *(Private + 313) = v23;
      *(Private + 314) = *(Private + 313);
      *(Private + 372) = *(Private + 314);
      *(Private + 373) = *(Private + 313);
      *(Private + 315) = *(Private + 314);
      *(Private + 318) = *(Private + 314);
      v199 = 0;
      HIDWORD(v199) = *(Private + 315);
      LODWORD(v199) = 1;
      __DisplayUpdateAAPStateInternal(Private, &v199, 0);
      v198 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, Private + 1256);
      if (v198)
      {
        CFDictionarySetValue(*(Private + 24), @"DisplayNitsKey", v198);
        CFRelease(v198);
      }
    }

    *(Private + 98) = 0;
    v24 = *(Private + 330);
    *(Private + 99) = v24;
    *(Private + 100) = v24;
    *(Private + 114) = 1.0;
    v25 = *(Private + 328);
    *(Private + 115) = v25;
    *(Private + 116) = v25;
    *(Private + 130) = 1.0;
    v26 = *(Private + 328);
    *(Private + 131) = v26;
    *(Private + 132) = v26;
    *(Private + 69) = 0x407E000000000000;
    *(Private + 68) = 0x404E000000000000;
    *(Private + 67) = CFAbsoluteTimeGetCurrent();
    *(Private + 72) = *(Private + 67);
    *(Private + 74) = 0;
    *(Private + 584) = 1;
    *(Private + 70) = 30.0;
    *(Private + 71) = 0.5;
    *(Private + 160) = 1;
    *(Private + 162) = 1.0;
    *(Private + 82) = 0x3FE99999A0000000;
    *(Private + 170) = 1.0;
    *(Private + 172) = 1.0;
    *(Private + 171) = 1.0;
    *(Private + 173) = 0;
    *(Private + 174) = 1.0;
    *(Private + 175) = 0;
    *(Private + 180) = 1140457472;
    *(Private + 181) = 1140457472;
    *(Private + 208) = 1120403456;
    *(Private + 264) = 1.0;
    v27 = *(Private + 264);
    *(Private + 272) = v27;
    *(Private + 270) = v27;
    *(Private + 271) = v27;
    *(Private + 133) = 0;
    *(Private + 246) = 1.0;
    v28 = *(Private + 246);
    *(Private + 254) = v28;
    *(Private + 252) = v28;
    *(Private + 253) = v28;
    *(Private + 124) = 0;
    *(Private + 245) = *(Private + 329);
    *(Private + 244) = *(Private + 329);
    *(Private + 86) = 1.0;
    number = CFNumberCreate(allocator, kCFNumberFloatType, Private + 344);
    if (number)
    {
      CFDictionarySetValue(*(Private + 24), @"DisplayBrightnessMax", number);
      CFRelease(number);
    }

    *(Private + 85) = 0;
    if (*(Private + 9))
    {
      *(Private + 85) = (*(Private + 309) + 1) / *(Private + 310);
    }

    number = CFNumberCreate(allocator, kCFNumberFloatType, Private + 340);
    if (number)
    {
      CFDictionarySetValue(*(Private + 24), @"DisplayBrightnessMin", number);
      CFRelease(number);
    }

    *(Private + 307) = 1050253722;
    *(Private + 296) = 0.5;
    __DisplayUpdateAmbientProperties(Private, *(Private + 84));
    *(Private + 300) = 1063675494;
    *(Private + 298) = 0;
    number = CFNumberCreate(allocator, kCFNumberFloatType, Private + 1200);
    if (number)
    {
      CFDictionarySetValue(*(Private + 24), @"DisplayBrightnessAutoWeightMax", number);
      CFRelease(number);
    }

    *(Private + 299) = 1036831949;
    number = CFNumberCreate(allocator, kCFNumberFloatType, Private + 1196);
    if (number)
    {
      CFDictionarySetValue(*(Private + 24), @"DisplayBrightnessAutoWeightMin", number);
      CFRelease(number);
    }

    *(Private + 3185) = 10;
    *(Private + 3184) = 0;
    *(Private + 3183) = 0;
    __memset_chk();
    *(Private + 3236) = -1.0;
    v196 = MGGetBoolAnswer();
    v197 = v196 & 1;
    v29 = 1.0;
    if ((v196 & 1) == 0)
    {
      v29 = 0.0;
    }

    v30 = v29;
    *(Private + 301) = v30;
    v89 = *(Private + 24);
    if (v197)
    {
      CFDictionarySetValue(v89, @"DisplayBrightnessAuto", *MEMORY[0x1E695E4D0]);
    }

    else
    {
      CFDictionarySetValue(v89, @"DisplayBrightnessAuto", *MEMORY[0x1E695E4C0]);
    }

    *(Private + 50) = 6;
    number = CFNumberCreate(allocator, kCFNumberIntType, Private + 200);
    if (number)
    {
      CFDictionarySetValue(*(Private + 24), @"LogLevel", number);
      CFRelease(number);
    }

    v195 = 0;
    v194 = [*(Private + 1630) loadUint:@"use-cabal" toDestination:&v195];
    v193 = 0;
    v192 = [*(Private + 1630) loadUint:@"use-new-AAP-ramp" toDestination:&v193];
    if (v194 & 1) != 0 || (v192)
    {
      v88 = 1;
      if (!v193)
      {
        v88 = v195 != 0;
      }

      *(Private + 12282) = v88;
      v87 = 1;
      if (!v193)
      {
        v87 = v195 != 0;
      }

      *(Private + 12248) = v87;
      if (_logHandle)
      {
        v86 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v85 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v85 = init_default_corebrightness_log();
        }

        v86 = v85;
      }

      v191 = v86;
      v190 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_2_4_0_4_0(v319, v195, v193);
        _os_log_impl(&dword_1DE8E5000, v191, v190, "Use Cabal = %d, new AAP ramp = %d", v319, 0xEu);
      }

      if (v195)
      {
        if (_logHandle)
        {
          v84 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v83 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v83 = init_default_corebrightness_log();
          }

          v84 = v83;
        }

        v189 = v84;
        v188 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          v81 = v189;
          v82 = v188;
          __os_log_helper_16_0_0(v187);
          _os_log_impl(&dword_1DE8E5000, v81, v82, "AAP factor calculation function = DisplayUpdateAAPStateLookup", v187, 2u);
        }

        *(Private + 1559) = __DisplayUpdateAAPStateLookup;
      }

      else
      {
        if (_logHandle)
        {
          v80 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v79 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v79 = init_default_corebrightness_log();
          }

          v80 = v79;
        }

        v186 = v80;
        v185 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          v77 = v186;
          v78 = v185;
          __os_log_helper_16_0_0(v184);
          _os_log_impl(&dword_1DE8E5000, v77, v78, "AAP factor calculation function = DisplayUpdateAAPStateStandard", v184, 2u);
        }

        *(Private + 1559) = __DisplayUpdateAAPStateStandard;
      }
    }

    v183 = 0;
    if ([*(Private + 1630) loadUint:@"use-AAP" toDestination:&v183])
    {
      *(Private + 12248) = v183 != 0;
      if (_logHandle)
      {
        v76 = _logHandle;
      }

      else
      {
        v75 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v76 = v75;
      }

      v182 = v76;
      v181 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        if (*(Private + 12248))
        {
          v31 = "";
        }

        else
        {
          v31 = "don't ";
        }

        __os_log_helper_16_2_1_8_32(v318, v31);
        _os_log_impl(&dword_1DE8E5000, v182, v181, "%suse AAP", v318, 0xCu);
      }
    }

    if (*(Private + 12248))
    {
      *(Private + 3098) = 0;
      *(Private + 3115) = 1053609165;
      *(Private + 3114) = 0;
      *(Private + 3069) = 2.0;
      *(Private + 3068) = 5.0;
      *(Private + 3063) = 2.0;
      *(Private + 3065) = 1161527296;
      *(Private + 3066) = 1175232512;
      *(Private + 3064) = 1140457472;
      *(Private + 3072) = -1;
      *(Private + 12284) = 0;
      *(Private + 12285) = 0;
      *(Private + 12292) = 0;
      *(Private + 3117) = -1.0;
      *(Private + 3067) = 10.0;
      *(Private + 3075) = 0;
      *(Private + 3076) = 0;
      *(Private + 3107) = 0;
      *(Private + 3108) = 1.0;
      *(Private + 3109) = 0;
      *(Private + 392) = 0;
      *(Private + 393) = 0;
      *(Private + 1551) = CFAbsoluteTimeGetCurrent();
      *(Private + 3117) = -1.0;
      v180 = 0;
      [*(Private + 1630) loadUint:@"use-lut" toDestination:&v180];
      v316 = xmmword_1DEACE520;
      v317 = 460218192;
      v314 = xmmword_1DEACE534;
      v315 = 2144905009;
      v312 = xmmword_1DEACE548;
      v313 = 127894440;
      v310 = xmmword_1DEACE55C;
      v311 = 1070997468;
      if (MGIsDeviceOneOfType())
      {
        *(Private + 1540) = DBV_SDR_XDR;
        *(Private + 3078) = 68;
        *(Private + 1542) = LUX_SDR_XDR;
        *(Private + 3082) = 92;
        *(Private + 1544) = &LUT31_SDR_XDR;
        *(Private + 3086) = 92;
        *(Private + 3087) = 68;
        if (_logHandle)
        {
          v74 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v73 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v73 = init_default_corebrightness_log();
          }

          v74 = v73;
        }

        v179 = v74;
        v178 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          v71 = v179;
          v72 = v178;
          __os_log_helper_16_0_0(v177);
          _os_log_impl(&dword_1DE8E5000, v71, v72, "select XDR PCC configuration", v177, 2u);
        }
      }

      else
      {
        *(Private + 1540) = *(&D_SDRs + v180);
        *(Private + 3078) = 68;
        *(Private + 1542) = *(&L_SDRs + v180);
        *(Private + 3082) = 92;
        *(Private + 1544) = *(&A_SDRs + v180);
        *(Private + 3086) = 92;
        *(Private + 3087) = 68;
        if (_logHandle)
        {
          v70 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v69 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v69 = init_default_corebrightness_log();
          }

          v70 = v69;
        }

        v176 = v70;
        v175 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v67 = v176;
          v68 = v175;
          __os_log_helper_16_0_0(v174);
          _os_log_impl(&dword_1DE8E5000, v67, v68, "select non-XDR PCC configuration", v174, 2u);
        }
      }

      *(Private + 1546) = &HDR_LUT_PT;
      *(Private + 3090) = 100;
      *(Private + 1548) = &HDR_SCALE_DOWN;
      *(Private + 3094) = 100;
    }

    v173 = 0;
    if (*(Private + 8))
    {
      v173 = 1;
      v172 = (*(Private + 329) * 65536.0);
      v171 = CFNumberCreate(allocator, kCFNumberIntType, &v172);
      if (v171)
      {
        __DisplaySetBLDriverProperty(Private, @"DisplayBrightnessNitsNVRAM", v171);
        CFRelease(v171);
      }
    }

    number = CFNumberCreate(allocator, kCFNumberIntType, &v173);
    if (number)
    {
      CFDictionarySetValue(*(Private + 24), @"DisplayBackLightArchitecture", number);
      CFRelease(number);
    }

    *(Private + 3055) = 0;
    *(Private + 3056) = 1.0;
    *(Private + 3057) = 0;
    *(Private + 3053) = 1.0;
    *(Private + 3054) = 1.0;
    *(Private + 3052) = 1.0;
    *(Private + 12180) = 1;
    float_from_edt = load_float_from_edt(object, @"cpms-hdr-reset-duration");
    *(Private + 3046) = float_from_edt;
    v33 = load_float_from_edt(object, @"cpms-hdr-cap-multiplier");
    *(Private + 3047) = v33;
    memset(__b, 0, sizeof(__b));
    __sprintf_chk(__b, 0, 0x100uLL, "Display: %p", Private);
    if (target)
    {
      if (_logHandle)
      {
        v66 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v65 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v65 = init_default_corebrightness_log();
        }

        v66 = v65;
      }

      v170 = v66;
      v169 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v63 = v170;
        v64 = v169;
        __os_log_helper_16_0_0(v168);
        _os_log_impl(&dword_1DE8E5000, v63, v64, "Using root queue \n", v168, 2u);
      }

      *(Private + 160) = 1;
      v34 = dispatch_queue_create_with_target_V2(__b, 0, target);
      *(Private + 18) = v34;
    }

    else
    {
      if (_logHandle)
      {
        v62 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v61 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v61 = init_default_corebrightness_log();
        }

        v62 = v61;
      }

      v167 = v62;
      v166 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v59 = v167;
        v60 = v166;
        __os_log_helper_16_0_0(v165);
        _os_log_impl(&dword_1DE8E5000, v59, v60, "Using default queue \n", v165, 2u);
      }

      *(Private + 160) = 0;
      v35 = dispatch_queue_create(__b, 0);
      *(Private + 18) = v35;
    }

    __sprintf_chk(__b, 0, 0x100uLL, "DisplayAsync: %p", Private);
    v36 = dispatch_queue_create(__b, 0);
    *(Private + 21) = v36;
    __sprintf_chk(__b, 0, 0x100uLL, "DisplayAsyncCPMS: %p", Private);
    v37 = dispatch_queue_create(__b, 0);
    *(Private + 19) = v37;
    *(Private + 3125) = 0;
    *(Private + 3124) = -1.0;
    *(Private + 12522) = 1;
    *(Private + 12514) = 0;
    *(Private + 12520) = CBU_IsNightShiftSupported();
    v164 = 0;
    v164 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v164)
    {
      if (*(Private + 12520))
      {
        CFDictionaryAddValue(v164, @"SupportsNightMode", *MEMORY[0x1E695E4D0]);
      }

      else
      {
        CFDictionaryAddValue(v164, @"SupportsNightMode", *MEMORY[0x1E695E4C0]);
      }

      CFDictionarySetValue(*(Private + 24), @"SupportedColorFX", v164);
      CFRelease(v164);
    }

    *(Private + 1572) = 0;
    *(Private + 3146) = 300;
    __DisplayInitializeReport(Private);
    number = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, Private + 12584);
    if (number)
    {
      CFDictionarySetValue(*(Private + 24), @"PowerLogReportInterval", number);
      CFRelease(number);
    }

    *(Private + 12515) = 0;
    *(Private + 12512) = 0;
    *(Private + 12513) = 0;
    CFDictionarySetValue(*(Private + 24), @"BlueReductionEnabled", *MEMORY[0x1E695E4C0]);
    *(Private + 3132) = 1.0;
    if (*(Private + 12514) & 1) != 0 || (*(Private + 12520))
    {
      *(Private + 1563) = CFXCreate();
      if (*(Private + 1563))
      {
        CFXInstallCallback(*(Private + 1563), ColorRampCallback, Private);
        v163 = 0;
        if ([*(Private + 1630) loadUint:@"default-whitepoint-type" toDestination:&v163])
        {
          CFXSetWhitePointType(*(Private + 1563), v163);
        }

        if (*(Private + 12520))
        {
          v162 = CFXInitializeBlueLightReduction(*(Private + 1563));
          if (v162)
          {
            v161 = 0.0;
            v160 = 0.0;
            v159 = 0.0;
            v158 = 0.0;
            CFXGetBlueLightReductionCCTRange(*(Private + 1563), &v159, &v161, &v160);
            v158 = v160;
            CBU_GetNightShiftCCTRange(object, &v161, &v160, &v159, &v158);
            v157 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &v158);
            if (v157)
            {
              CFDictionarySetValue(*(Private + 24), @"BlueLightReductionCCTWarningKey", v157);
              CFRelease(v157);
            }

            v57 = MEMORY[0x1E695E8B8];
            v58 = MEMORY[0x1E695E8B0];
            CFPreferencesSynchronize(@"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
            v156 = CFPreferencesCopyValue(@"CBBlueLightReductionCCTRange", @"com.apple.CoreBrightness", *v57, *v58);
            if (v156)
            {
              TypeID = CFArrayGetTypeID();
              if (TypeID == CFGetTypeID(v156))
              {
                theArray = v156;
                if (CFArrayGetCount(v156) == 3)
                {
                  v307 = 0xBF800000BF800000;
                  v308 = -1.0;
                  memset(idx, 0, sizeof(idx));
                  while (idx[0] < 3)
                  {
                    *&idx[1] = CFArrayGetValueAtIndex(theArray, idx[0]);
                    if (*&idx[1])
                    {
                      v55 = CFNumberGetTypeID();
                      if (v55 == CFGetTypeID(*&idx[1]))
                      {
                        CFNumberGetValue(*&idx[1], kCFNumberFloatType, &v307 + 4 * idx[0]);
                      }
                    }

                    ++idx[0];
                  }

                  if (*&v307 != -1.0 && *(&v307 + 1) != -1.0 && v308 != -1.0)
                  {
                    v160 = *(&v307 + 1);
                    LODWORD(v161) = v307;
                    v159 = v308;
                  }
                }
              }

              CFRelease(v156);
            }

            CFXOverrideBlueLightReductionCCTRange(*(Private + 1563), v159, v161, v160);
            values = 0;
            v305 = 0;
            v306 = 0;
            v54 = MEMORY[0x1E695E480];
            values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &v161);
            v305 = CFNumberCreate(*v54, kCFNumberFloatType, &v160);
            v306 = CFNumberCreate(*v54, kCFNumberFloatType, &v159);
            if (values)
            {
              if (v305)
              {
                if (v306)
                {
                  v153 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 3, MEMORY[0x1E695E9C0]);
                  if (v153)
                  {
                    CFDictionarySetValue(*(Private + 24), @"BlueLightReductionCCTRange", v153);
                    CFRelease(v153);
                  }
                }
              }
            }

            if (values)
            {
              CFRelease(values);
            }

            if (v305)
            {
              CFRelease(v305);
            }

            if (v306)
            {
              CFRelease(v306);
            }

            v152 = CFPreferencesCopyValue(@"CBBlueLightReductionCCTTargetRaw", @"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
            v151 = CFXGetBlueLightReductionTargetCCT(*(Private + 1563));
            if (v152)
            {
              v53 = CFGetTypeID(v152);
              if (v53 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v152, kCFNumberFloatType, &v151);
                v151 = fminf(fmaxf(v151, v161), v159);
                CFXSetBlueLightReductionTargetCCT(*(Private + 1563), 0, v151, 0.0, 0.0);
              }

              CFRelease(v152);
            }

            keys = @"BlueLightReductionCCTTargetValue";
            v302 = 0;
            v302 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &v151);
            if (v302)
            {
              v150 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &v302, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              CFRelease(v302);
              if (v150)
              {
                CFDictionarySetValue(*(Private + 24), @"BlueLightReductionCCTTargetKey", v150);
                CFRelease(v150);
              }
            }
          }
        }
      }

      if (CFPreferencesAppSynchronize(*MEMORY[0x1E695E8A8]))
      {
        v149 = CFPreferencesCopyAppValue(@"CBCarryLogEnabled", *MEMORY[0x1E695E8A8]);
        v148 = 0;
        if (!v149)
        {
          v149 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v148);
        }

        if (v149)
        {
          v52 = CFNumberGetTypeID();
          if (v52 == CFGetTypeID(v149))
          {
            CFNumberGetValue(v149, kCFNumberIntType, &v148);
            CFXEnableLog(*(Private + 1563), v148 != 0);
            CFDictionarySetValue(*(Private + 24), @"CarryLogEnabled", v149);
          }

          CFRelease(v149);
        }
      }
    }

    *(Private + 287) = 0;
    *(Private + 1144) = 0;
    *(Private + 960) = 0;
    *(Private + 241) = 0;
    *(Private + 242) = 0;
    *(Private + 3136) = 0;
    *(Private + 1567) = 0;
    *(Private + 12548) = 0;
    *(Private + 3138) = 0;
    *(Private + 3139) = 0;
    *(Private + 282) = 0;
    *(Private + 283) = 0;
    *(Private + 284) = 0;
    *(Private + 317) = 0;
    *(Private + 1284) = 0;
    *(Private + 388) = 1.0;
    *(Private + 389) = 1;
    *(Private + 390) = 0;
    if (+[CBSoftWakeDisplayDelegate isSupported])
    {
      v51 = objc_alloc_init(CBSoftWakeDisplayDelegate);
    }

    else
    {
      v51 = 0;
    }

    *(Private + 41) = v51;
    *(Private + 288) = 10.0;
    *(Private + 289) = *(Private + 384);
    *(Private + 290) = 16.0;
    *(Private + 291) = *(Private + 386);
    *(Private + 293) = 10.0;
    *(Private + 1176) = 1;
    v147 = 0;
    if ([*(Private + 1630) loadFixedFloat:@"bright-dot-mitigation-nits1" toDestination:&v147])
    {
      *(Private + 289) = v147;
    }

    *(Private + 292) = *(Private + 289);
    v146 = 0;
    if ([*(Private + 1630) loadFixedFloat:@"bright-dot-mitigation-nits2" toDestination:&v146])
    {
      *(Private + 291) = v146;
    }

    v50 = objc_autoreleasePoolPush();
    if (*(Private + 24))
    {
      v145 = *(Private + 24);
      v300[0] = @"brightDotsMitigationLux1";
      LODWORD(v38) = *(Private + 288);
      v301[0] = [MEMORY[0x1E696AD98] numberWithFloat:v38];
      v300[1] = @"brightDotsMitigationLux2";
      LODWORD(v39) = *(Private + 290);
      v301[1] = [MEMORY[0x1E696AD98] numberWithFloat:v39];
      v300[2] = @"brightDotsMitigationNits1";
      LODWORD(v40) = *(Private + 289);
      v301[2] = [MEMORY[0x1E696AD98] numberWithFloat:v40];
      v300[3] = @"brightDotsMitigationNits2";
      LODWORD(v41) = *(Private + 291);
      v301[3] = [MEMORY[0x1E696AD98] numberWithFloat:v41];
      [v145 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKey:{"dictionaryWithObjects:forKeys:count:", v301, v300, 4), @"BrightDotsMitigationParameters"}];
    }

    objc_autoreleasePoolPop(v50);
    v144 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, Private + 1560);
    if (v144)
    {
      CFDictionarySetValue(*(Private + 24), @"BrightnessCLTMMode", v144);
      CFRelease(v144);
    }

    v143 = 4.0;
    v299 = xmmword_1E867C910;
    v297 = 0;
    v298 = 0;
    v49 = MEMORY[0x1E695E480];
    v297 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, Private + 1556);
    v298 = CFNumberCreate(*v49, kCFNumberFloatType, &v143);
    v42 = CFGetAllocator(Private);
    v142 = CFDictionaryCreate(v42, &v299, &v297, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v142)
    {
      CFDictionarySetValue(*(Private + 24), @"BrightnessCLTM", v142);
      CFRelease(v142);
    }

    if (v297)
    {
      CFRelease(v297);
    }

    if (v298)
    {
      CFRelease(v298);
    }

    v43 = _DisplayCheckEDRSupport(Private);
    *(Private + 3149) = v43;
    if (*(Private + 3149) == 1)
    {
      CBEDRServerAddMainDisplay(*(Private + 3148));
      SetLibEDRBrightness(Private, *(Private + 314), *(Private + 386), *(Private + 298), *(Private + 3132));
    }

    *(Private + 1504) = 0;
    *(Private + 377) = *(Private + 326);
    *(Private + 378) = *(Private + 386);
    v141 = 0;
    if ([*(Private + 1630) loadUint:@"has-2dbl" toDestination:&v141])
    {
      *(Private + 323) = v141 != 0;
    }

    v140 = 0;
    [*(Private + 1630) loadUint:@"supports-aurora" toDestination:&v140];
    v48 = objc_autoreleasePoolPush();
    if (*(Private + 24))
    {
      [*(Private + 24) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v140 == 1), @"AuroraSupported"}];
    }

    objc_autoreleasePoolPop(v48);
    *(Private + 3238) = 1.0;
    *(Private + 13016) = 0;
    *(Private + 1620) = 0;
    *(Private + 3256) = 1150681088;
    *(Private + 3257) = 4.0;
    *(Private + 3258) = 4.0;
    v44 = objc_alloc_init(CBDisplayRamps);
    *(Private + 33) = v44;
    return Private;
  }

LABEL_466:
  if (*(Private + 20))
  {
    IOObjectRelease(*(Private + 20));
  }

  if (*(Private + 9))
  {
    free(*(Private + 9));
    *(Private + 9) = 0;
    *(Private + 16) = 0;
  }

  CFRelease(Private);
  return 0;
}

uint64_t __DisplayCreatePrivate(uint64_t a1)
{
  DisplayGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 0;
  }

  __memset_chk();
  return Instance;
}

uint64_t __DisplayBrightnessThreadInit()
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 0;
  memset(&__b, 0, sizeof(__b));
  inserted = 0;
  port_info_out = 0;
  task = *MEMORY[0x1E69E9A60];
  port_info_outCnt = 1;
  if (mach_port_allocate(task, 1u, &__brightnessPort))
  {
    __assert_rtn("__DisplayBrightnessThreadInit", "Display.m", 1421, "KERN_SUCCESS == ret");
  }

  inserted = mach_port_insert_right(task, __brightnessPort, __brightnessPort, 0x14u);
  if (inserted)
  {
    __assert_rtn("__DisplayBrightnessThreadInit", "Display.m", 1424, "KERN_SUCCESS == ret");
  }

  inserted = mach_port_get_attributes(task, __brightnessPort, 1, &port_info_out, &port_info_outCnt);
  if (inserted)
  {
    __assert_rtn("__DisplayBrightnessThreadInit", "Display.m", 1427, "KERN_SUCCESS == ret");
  }

  port_info_out = 1024;
  inserted = MEMORY[0x1E12C4530](task, __brightnessPort, 1, &port_info_out, port_info_outCnt);
  if (inserted)
  {
    __assert_rtn("__DisplayBrightnessThreadInit", "Display.m", 1432, "KERN_SUCCESS == ret");
  }

  __brightnessDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (pthread_attr_init(&__b))
  {
    __assert_rtn("__DisplayBrightnessThreadInit", "Display.m", 1440, "!pthread_attr_init(&attr)");
  }

  if (pthread_attr_setdetachstate(&__b, 2))
  {
    __assert_rtn("__DisplayBrightnessThreadInit", "Display.m", 1441, "!pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED)");
  }

  if (pthread_create(&v5, &__b, brightnessThread, 0))
  {
    __assert_rtn("__DisplayBrightnessThreadInit", "Display.m", 1442, "!pthread_create( &tid, &attr, brightnessThread, NULL)");
  }

  if (pthread_attr_destroy(&__b))
  {
    __assert_rtn("__DisplayBrightnessThreadInit", "Display.m", 1443, "!pthread_attr_destroy(&attr)");
  }

  result = pthread_mutex_init(&__brightnessLock, 0);
  if (result)
  {
    __assert_rtn("__DisplayBrightnessThreadInit", "Display.m", 1444, "!pthread_mutex_init(&__brightnessLock, NULL)");
  }

  return result;
}

float _DisplaySliderToLogicalBrightnessInternal(uint64_t a1, float a2)
{
  v4 = a2;
  if (a1 && *(a1 + 72))
  {
    v3 = a2 * (*(a1 + 64) - 1);
    if (v3 >= *(a1 + 64) - 1)
    {
      v4 = *(*(a1 + 72) + 4 * (*(a1 + 64) - 1));
    }

    else
    {
      v4 = __interpolate(v3, *(*(a1 + 72) + 4 * v3), (v3 + 1), *(*(a1 + 72) + 4 * (v3 + 1)), v3);
    }
  }

  v5 = v4;
  if (a1)
  {
    if (v4 < *(a1 + 1304))
    {
      if (**(a1 + 72) <= *(a1 + 1320))
      {
        return __interpolate(*(a1 + 1308), *(a1 + 1320), *(a1 + 1304), *(a1 + 1316), v4);
      }
    }

    else
    {
      return __interpolate(*(a1 + 1304), *(a1 + 1316), *(a1 + 1300), *(a1 + 1312), v4);
    }
  }

  return v5;
}

float _DisplayGetGlobalScalarFromDevice(uint64_t a1, int a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  valuePtr[1] = a2;
  valuePtr[0] = 1.0;
  memset(v4, 0, sizeof(v4));
  v5 = 1.0;
  if ([*(a1 + 13040) getGlobalScalarTo:v4])
  {
    *(v7 + 12176) = v4[0];
    valuePtr[0] = _DisplayCalculateGlobalScalar(v7, v4);
    return *valuePtr;
  }

  else
  {
    if (v7)
    {
      if (*(v7 + 192))
      {
        keys[0] = @"Scalar";
        values = 0;
        values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, valuePtr);
        if (values)
        {
          value = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (value)
          {
            CFDictionarySetValue(*(v7 + 192), @"BrightnessGlobalScalar", value);
            CFRelease(value);
          }

          CFRelease(values);
        }
      }
    }

    return *valuePtr;
  }
}

void __DisplayUpdateAmbientProperties(uint64_t a1, float a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (_logHandle)
  {
    v7 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v7 = inited;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_8_0(v15, COERCE__INT64(*(a1 + 1204)));
    _os_log_debug_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEBUG, "autobrightness=%f\n", v15, 0xCu);
  }

  if (*(a1 + 1204) == 0.0)
  {
    *(a1 + 1208) = 0;
    *(a1 + 1212) = a2;
  }

  else
  {
    v9 = *(a1 + 1196);
    v8 = *(a1 + 1200);
    if (a2 > 0.5)
    {
      v11 = (1.0 - v9) + (v9 * a2);
      v3 = -(0.5 * ((v8 + 1.0) + (-2.0 * v9)) - (v8 + 1.0 - v9) * a2);
      v10 = v3;
    }

    else
    {
      v2 = (((v8 - v9) + 1.0) * a2) + 0.5 - (v8 / 2.0);
      v11 = v2;
      v10 = v9 * a2;
    }

    *(a1 + 1208) = v11 - v10;
    *(a1 + 1212) = v10;
  }

  if (_logHandle)
  {
    v5 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v4 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v4 = init_default_corebrightness_log();
    }

    v5 = v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v14, COERCE__INT64(a2), COERCE__INT64(*(a1 + 1196)), COERCE__INT64(*(a1 + 1200)), COERCE__INT64(*(a1 + 1208)), COERCE__INT64(*(a1 + 1212)));
    _os_log_debug_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEBUG, "brightness=%f min=%f max=%f slope=%f intercept=%f\n", v14, 0x34u);
  }
}

void __DisplayUpdateAAPStateStandard(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (*a2)
  {
    if (*a2 == 1)
    {
      if (*(a1 + 1232))
      {
        if (*(a1 + 12256) > *(a2 + 4))
        {
          if (*(a1 + 12280))
          {
            *(a1 + 12280) = 0;
            __DisplaySetAAPFactorWithFade(a1, 0, 0, 0.0, *(a1 + 12252));
          }
        }

        else
        {
          *(a1 + 12280) = 1;
          v3 = *(a1 + 12304) < *(a1 + 12256);
        }
      }

      *(a1 + 12304) = *(a2 + 4);
    }

    else if (*a2 == 2 && ((vabds_f32(*(a2 + 4), *(a1 + 12300)) / *(a1 + 12300)) * 100.0) > *(a1 + 12268))
    {
      *(a1 + 12300) = *(a2 + 4);
      v3 = (*(a1 + 12280) & 1) != 0;
    }
  }

  else
  {
    *(a1 + 12280) = *(a2 + 4) & 1;
    if (*(a1 + 12280))
    {
      v3 = *(a1 + 12304) >= *(a1 + 12256);
    }

    else
    {
      __DisplaySetAAPFactorWithFade(a1, 0, 0, 0.0, *(a1 + 12252));
    }
  }

  if (v3)
  {
    if (*(a1 + 12300) >= *(a1 + 12260))
    {
      if (*(a1 + 12300) < *(a1 + 12264))
      {
        v2 = ((*(a1 + 12460) - *(a1 + 12456)) * (*(a1 + 12300) - *(a1 + 12260))) / (*(a1 + 12264) - *(a1 + 12260));
      }

      else
      {
        v2 = *(a1 + 12460);
      }
    }

    else
    {
      v2 = *(a1 + 12456);
    }

    if (*(a1 + 12392) >= v2)
    {
      __DisplaySetAAPFactorWithFade(a1, 0, 0, v2, *(a1 + 12276));
    }

    else
    {
      __DisplaySetAAPFactorWithFade(a1, 0, 0, v2, *(a1 + 12272));
    }
  }
}

void __DisplayInitializeReport(uint64_t result)
{
  if (*(result + 12520) & 1) != 0 || (*(result + 12514))
  {
    if (*(result + 12504))
    {
      CFXClearReport(*(result + 12504));
    }

    __DisplayResetLogTimer(result, 0);
  }
}

BOOL _DisplayCheckEDRSupport(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  started = 0;
  if (CBU_IsWatch() || CBU_IsAccessory())
  {
    v6 = 0;
  }

  else if ((*(a1 + 321) & 1) == 0 || *(a1 + 12592))
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (_logHandle)
    {
      v4 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v4 = inited;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v8, *(a1 + 12592));
      _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEFAULT, "Not supporting LibEDR, uses CBEDR instead: displayID: %u", v8, 8u);
    }
  }

  if ((v6 & 1) == 1)
  {
    started = CBEDRServerStartServer();
  }

  v2 = 0;
  if (started)
  {
    v2 = v6;
  }

  return (v2 & 1) != 0;
}

uint64_t DisplayIsNightShiftEnabled(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  v1 = *(a1 + 144);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __DisplayIsNightShiftEnabled_block_invoke;
  v8 = &unk_1E867C928;
  v9 = &v11;
  v10 = v16;
  disp_dispatch_sync(v1, &v4);
  v3 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v3;
}

uint64_t __DisplayIsNightShiftEnabled_block_invoke(uint64_t result)
{
  if (v1 | ((*(*(result + 40) + 12513) & 1) == 0))
  {
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  *(*(*(result + 32) + 8) + 24) = v2;
  return result;
}

uint64_t DisplayNotify(unsigned __int8 a1)
{
  v4 = a1;
  out_token = 0;
  state64 = a1;
  notify_register_check("com.apple.iokit.hid.displayStatus", &out_token);
  notify_set_state(out_token, state64);
  return notify_post("com.apple.iokit.hid.displayStatus");
}

void DisplaySetState(uint64_t a1, int a2)
{
  v11 = a1;
  v10 = a2;
  v2 = *(a1 + 144);
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __DisplaySetState_block_invoke;
  v7 = &__block_descriptor_44_e5_v8__0l;
  v8 = v11;
  v9 = a2;
  disp_dispatch_sync(v2, &v3);
}

void __DisplaySetState_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = a1;
  v24 = a1;
  if (*(*(a1 + 32) + 44) != *(a1 + 40))
  {
    if (_logHandle)
    {
      v6 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v6 = inited;
    }

    v23 = v6;
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 40))
      {
        v1 = "ON";
      }

      else
      {
        v1 = "OFF";
      }

      __os_log_helper_16_2_1_8_32(v26, v1);
      _os_log_impl(&dword_1DE8E5000, v23, v22, "Notify display state %s....\n", v26, 0xCu);
    }

    *(*(a1 + 32) + 44) = *(a1 + 40);
    if (*(*(a1 + 32) + 144))
    {
      v2 = *(*(a1 + 32) + 144);
      block = MEMORY[0x1E69E9820];
      v17 = -1073741824;
      v18 = 0;
      v19 = __DisplaySetState_block_invoke_376;
      v20 = &__block_descriptor_40_e5_v8__0l;
      v21 = *(a1 + 32);
      dispatch_async(v2, &block);
    }

    if (*(*(a1 + 32) + 192))
    {
      theDict = *(*(a1 + 32) + 192);
      if (*(*(a1 + 32) + 44))
      {
        CFDictionarySetValue(theDict, @"DisplayOn", *MEMORY[0x1E695E4D0]);
      }

      else
      {
        CFDictionarySetValue(theDict, @"DisplayOn", *MEMORY[0x1E695E4C0]);
      }
    }

    v15 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 168);
    v8 = MEMORY[0x1E69E9820];
    v9 = -1073741824;
    v10 = 0;
    v11 = __DisplaySetState_block_invoke_2;
    v12 = &__block_descriptor_48_e5_v8__0l;
    v13 = *(a1 + 32);
    v14 = v15;
    dispatch_async(v3, &v8);
  }
}

uint64_t __DisplaySetState_block_invoke_376(uint64_t result)
{
  if (*(*(result + 32) + 16))
  {
    v1 = *(*(result + 32) + 16);
    v2 = *(*(result + 32) + 24);
    if (*(*(result + 32) + 44))
    {
      return v1(v2, @"DisplayOn", *MEMORY[0x1E695E4D0]);
    }

    else
    {
      return v1(v2, @"DisplayOn", *MEMORY[0x1E695E4C0]);
    }
  }

  return result;
}

uint64_t DisplayOpen(char *a1, uint64_t a2, uint64_t a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v63 = a1;
  v62 = a2;
  v61 = a3;
  v60 = 0;
  *(a1 + 2) = a2;
  *(v63 + 3) = v61;
  v59 = 0;
  v58 = 0;
  if (v63[12248])
  {
    allocator = CFGetAllocator(v63);
    v59 = CFNumberCreate(allocator, kCFNumberFloatType, v63 + 12460);
    v14 = CFGetAllocator(v63);
    v58 = CFNumberCreate(v14, kCFNumberFloatType, v63 + 12456);
  }

  v60 = 1;
  if (v59)
  {
    DisplaySetProperty(v63, @"DisplayAAPFactorMax", v59);
    CFRelease(v59);
  }

  if (v58)
  {
    DisplaySetProperty(v63, @"DisplayAAPFactorMin", v58);
    CFRelease(v58);
  }

  notify_register_check("com.apple.iokit.hid.displayStatus", v63 + 12);
  if (*(v63 + 87) == 0.0)
  {
    *(v63 + 11) = 0;
  }

  else
  {
    *(v63 + 11) = 1;
    v57 = *(v63 + 11);
    notify_set_state(*(v63 + 12), v57);
    notify_post("com.apple.iokit.hid.displayStatus");
  }

  if (*(v63 + 24))
  {
    theDict = *(v63 + 24);
    if (*(v63 + 11))
    {
      CFDictionarySetValue(theDict, @"DisplayOn", *MEMORY[0x1E695E4D0]);
    }

    else
    {
      CFDictionarySetValue(theDict, @"DisplayOn", *MEMORY[0x1E695E4C0]);
    }
  }

  *(v63 + 312) = -1;
  *(v63 + 27) = 0;
  ValueAtIndex = 0;
  DisplayList = IOMobileFramebufferCreateDisplayList();
  if (DisplayList)
  {
    for (i = 0; i < CFArrayGetCount(DisplayList); ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(DisplayList, i);
      if (!ValueAtIndex[2])
      {
        break;
      }
    }

    CFRelease(DisplayList);
    if (ValueAtIndex)
    {
      v53 = 0;
      v52 = IOMobileFramebufferOpenByName();
    }
  }

  *(v63 + 34) = 1;
  *(v63 + 35) = -1;
  *(v63 + 94) = -1.0;
  v63[380] = 0;
  if (v63[312])
  {
    *(v63 + 34) = 0;
  }

  if ((v63[312] & 1) == 0)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    *(v63 + 15) = dispatch_queue_create(0, v3);
  }

  v63[320] = 0;
  if (CBU_IsWatch())
  {
    v63[320] = 1;
  }

  *(v63 + 3098) = -1.0;
  __DisplaySetAAPFactor(v63, *(v63 + 3114));
  *(v63 + 71) = 0;
  v63[288] = 0;
  v63[289] = 0;
  CFProperty = IORegistryEntryCreateCFProperty(*(v63 + 20), @"nitsThresholdPLC", *MEMORY[0x1E695E480], 0);
  if (CFProperty)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(CFProperty))
    {
      CFNumberGetValue(CFProperty, kCFNumberIntType, v63 + 284);
      v63[288] = 1;
    }

    CFRelease(CFProperty);
  }

  if (*(v63 + 27))
  {
    v50 = 0;
    v50 = IORegistryEntrySearchCFProperty(*(v63 + 27), "IOService", @"limit_max_physical_brightness", *MEMORY[0x1E695E480], 3u);
    v49 = (*(v63 + 386) * 65536.0);
    if (_DisplayGetUint32FromCFNumberAndRelease(v50, &v49))
    {
      *(v63 + 386) = v49 / 65536.0;
    }

    if (_logHandle)
    {
      v11 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v11 = inited;
    }

    v48 = v11;
    v47 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v65, COERCE__INT64(*(v63 + 386)));
      _os_log_debug_impl(&dword_1DE8E5000, v48, v47, "New hardwareAccessibleMaxNits: %f", v65, 0xCu);
    }
  }

  v45 = MGGetBoolAnswer();
  v46 = v45 & 1;
  *(v63 + 3179) = (v45 & 1) != 0;
  if (_logHandle)
  {
    v9 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v8 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v8 = init_default_corebrightness_log();
    }

    v9 = v8;
  }

  v44 = v9;
  v43 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v46)
    {
      v4 = "OLED";
    }

    else
    {
      v4 = "LCD";
    }

    __os_log_helper_16_2_1_8_32(v64, v4);
    _os_log_impl(&dword_1DE8E5000, v44, v43, "Device has %s display.", v64, 0xCu);
  }

  if (*(v63 + 3149) == 1)
  {
    v39[0] = 0;
    v39[1] = v39;
    v40 = 0x20000000;
    v41 = 32;
    v42 = 0;
    v35[0] = 0;
    v35[1] = v35;
    v36 = 0x20000000;
    v37 = 32;
    v38 = 0;
    v31[0] = 0;
    v31[1] = v31;
    v32 = 0x20000000;
    v33 = 32;
    v34 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v28 = 0x20000000;
    v29 = 32;
    v30 = 0;
    v5 = *(v63 + 18);
    v17 = MEMORY[0x1E69E9820];
    v18 = -1073741824;
    v19 = 0;
    v20 = __DisplayOpen_block_invoke;
    v21 = &unk_1E867C970;
    v26 = v63;
    v22 = v39;
    v23 = v35;
    v24 = v31;
    v25 = v27;
    CBEDRServerRegisterCallbackBlockOnQueue(v5, &v17);
    v63[12181] = 0;
    if ([MEMORY[0x1E6991F30] isCPMSSupported] == 1)
    {
      v63[12181] = 1;
      if (DisplayHasDCP(v63))
      {
        *(v63 + 1516) = IOReportCopyChannelsInGroup();
        if (*(v63 + 1516))
        {
          *(v63 + 1518) = IOReportCreateSubscription();
        }
      }

      else
      {
        *(v63 + 1516) = 0;
        *(v63 + 1517) = 0;
        *(v63 + 1518) = 0;
        *(v63 + 1519) = 0;
        *(v63 + 1520) = 0;
        *(v63 + 1521) = 0;
        v16 = IOServiceMatching("IOMobileFramebuffer");
        *(v63 + 1516) = IOReportCopyChannelsWithID();
        if (*(v63 + 1516))
        {
          *(v63 + 1518) = IOReportCreateSubscription();
        }

        *(v63 + 1519) = IOReportCopyChannelsWithID();
        if (*(v63 + 1519))
        {
          *(v63 + 1521) = IOReportCreateSubscription();
        }

        *(v63 + 1511) = 0;
        *(v63 + 1512) = 0;
        *(v63 + 1514) = 0;
        *(v63 + 3030) = 0;
        if (v16)
        {
          CFRelease(v16);
        }
      }
    }

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v31, 8);
    _Block_object_dispose(v35, 8);
    _Block_object_dispose(v39, 8);
  }

  if (*(v63 + 21))
  {
    v7 = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
    *(v63 + 22) = v7;
    if (*(v63 + 22))
    {
      if (*(v63 + 18))
      {
        IONotificationPortSetDispatchQueue(*(v63 + 22), *(v63 + 18));
        IOServiceAddInterestNotification(*(v63 + 22), *(v63 + 20), "IOGeneralInterest", BacklightGeneralInterestNotificationCallback, v63, v63 + 46);
      }
    }
  }

  _DisplayReduceBacklightCompensation(v63, 1.0);
  return v60;
}

void __DisplaySetAAPFactor(_BYTE *a1, float a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = a1;
  v13 = a2;
  if (a1[12248])
  {
    if (*(v14 + 108))
    {
      v13 = fminf(fmaxf(v13, *(v14 + 12456)), *(v14 + 12460));
      v12 = (v13 * 1023.0);
      v11 = (*(v14 + 12392) * 1023.0);
      if (v12 != v11 || *(v14 + 12468) >= 0.0)
      {
        if (_logHandle)
        {
          v6 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          v6 = inited;
        }

        v10 = v6;
        v9 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          if (*(v14 + 12468) >= 0.0)
          {
            v4 = *(v14 + 12468);
          }

          else
          {
            v4 = v13;
          }

          __os_log_helper_16_0_1_8_0(v15, COERCE__INT64(v4));
          _os_log_debug_impl(&dword_1DE8E5000, v10, v9, "AAP factor=%0.4f", v15, 0xCu);
        }

        *(v14 + 12392) = v13;
        if (![+[CBAODState isAODActive] sharedInstance]
        {
          if (*(v14 + 321) & 1) != 0 && (CBU_PassContrastEnhancerStrengthThroughSyncDBV())
          {
            SendSyncDBVNotification(v14, 0, *(v14 + 1248) / 65536.0);
          }

          else
          {
            if (*(v14 + 12468) >= 0.0)
            {
              v3 = *(v14 + 12468);
            }

            else
            {
              v3 = *(v14 + 12392);
            }

            v8 = (v3 * 65536.0);
            v2 = CFGetAllocator(v14);
            property = CFNumberCreate(v2, kCFNumberSInt32Type, &v8);
            if (property)
            {
              IORegistryEntrySetCFProperty(*(v14 + 108), @"IOMFBContrastEnhancerStrength", property);
              CFRelease(property);
            }
          }
        }
      }
    }
  }
}

uint64_t _DisplayGetUint32FromCFNumberAndRelease(const void *a1, int *a2)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  if (a1)
  {
    v3 = CFGetTypeID(v7);
    if (v3 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetByteSize(v7) == 4)
      {
        CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr);
        *v6 = valuePtr;
        v5 = 1;
      }
    }

    CFRelease(v7);
  }

  return v5 & 1;
}

void BacklightGeneralInterestNotificationCallback(uint64_t a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a3 == -536870352)
    {
      *(a1 + 104) = 1;
      if (_logHandle)
      {
        v6 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        v6 = inited;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_4_0(v8, -536870352);
        _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "Backlight ON: %x", v8, 8u);
      }
    }

    else if (a3 == -536870384)
    {
      *(a1 + 104) = 0;
      if (_logHandle)
      {
        v4 = _logHandle;
      }

      else
      {
        v3 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v4 = v3;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_4_0(v7, -536870384);
        _os_log_debug_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEBUG, "Backlight OFF: %x", v7, 8u);
      }
    }
  }
}

void _DisplayReduceBacklightCompensation(uint64_t a1, float a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = a1;
  *&valuePtr[1] = a2;
  valuePtr[0] = (a2 * 65536.0);
  v4 = 0x20000;
  values = 0;
  v9 = 0;
  v2 = MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, valuePtr);
  v9 = CFNumberCreate(*v2, kCFNumberIntType, &v4);
  *keys = xmmword_1E867CBB8;
  if (values)
  {
    if (v9)
    {
      cf = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (cf)
      {
        __DisplaySetBLDriverProperty(v6, @"CompensationTweak", cf);
        CFRelease(cf);
      }
    }
  }

  if (values)
  {
    CFRelease(values);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void DisplayClose(uint64_t a1)
{
  if (*(a1 + 176))
  {
    IONotificationPortDestroy(*(a1 + 176));
    *(a1 + 176) = 0;
  }

  if (*(a1 + 184))
  {
    IOObjectRelease(*(a1 + 184));
    *(a1 + 184) = 0;
  }
}

void _DisplaySetLockState(uint64_t a1, int a2)
{
  v11 = a1;
  v10 = a2;
  v2 = *(a1 + 144);
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = ___DisplaySetLockState_block_invoke;
  v7 = &__block_descriptor_44_e5_v8__0l;
  v8 = v11;
  v9 = a2;
  disp_dispatch_sync(v2, &v3);
}

uint64_t DisplayGetProperty(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v18 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x20000000;
  v16 = 32;
  v17 = 0;
  v2 = *(a1 + 144);
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __DisplayGetProperty_block_invoke;
  v9 = &unk_1E867B990;
  v10 = &v13;
  v11 = v19;
  v12 = a2;
  disp_dispatch_sync(v2, &v5);
  v4 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v4;
}

const void *__DisplayGetProperty_block_invoke(uint64_t a1)
{
  result = CFDictionaryGetValue(*(*(a1 + 40) + 192), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void DisplayStop(uint64_t a1)
{
  v8 = a1;
  v1 = *(a1 + 144);
  v2 = MEMORY[0x1E69E9820];
  v3 = -1073741824;
  v4 = 0;
  v5 = __DisplayStop_block_invoke;
  v6 = &__block_descriptor_40_e5_v8__0l;
  v7 = v8;
  disp_dispatch_sync(v1, &v2);
}

void __DisplayStop_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 321))
  {
    [*(*(a1 + 32) + 208) pause];
  }

  else
  {
    dispatch_release(*(*(a1 + 32) + 12480));
    *(*(a1 + 32) + 12480) = 0;
  }
}

float DisplayInitializeFastEDR(uint64_t a1)
{
  *(a1 + 12608) = 0;
  result = 1.0;
  *(a1 + 12624) = 1.0;
  *(a1 + 12632) = 1.0;
  *(a1 + 12628) = 1.0;
  *(a1 + 12640) = 0;
  return result;
}

float DisplayInitializeRTPLCEDRRamp(uint64_t a1)
{
  *(a1 + 12656) = 0;
  result = 1.0;
  *(a1 + 12672) = 1.0;
  *(a1 + 12680) = 1.0;
  *(a1 + 12676) = 1.0;
  *(a1 + 12688) = 0;
  *(a1 + 12704) = 0;
  return result;
}

uint64_t DisplayStartRTPLCEDRCapRamp(uint64_t a1, char a2, float a3, float a4, float a5)
{
  v21 = a1;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17 = a2;
  v5 = *(a1 + 144);
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __DisplayStartRTPLCEDRCapRamp_block_invoke;
  v11 = &__block_descriptor_53_e5_v8__0l;
  v16 = a2 & 1;
  v13 = a3;
  v12 = v21;
  v14 = a4;
  v15 = a5;
  disp_dispatch_sync(v5, &v7);
  return 1;
}

void __DisplayStartRTPLCEDRCapRamp_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 52))
  {
    v12 = *(a1 + 40);
  }

  else
  {
    if (*(*(a1 + 32) + 12704))
    {
      v8 = *(*(a1 + 32) + 12676);
    }

    else
    {
      v8 = *(a1 + 40);
    }

    v12 = v8;
  }

  v11 = (fabsf(log2f(*(a1 + 44) / v12)) * *(a1 + 48));
  if (v11 <= 0.0)
  {
    v10 = *(*(a1 + 32) + 1328) | 1;
    *(*(a1 + 32) + 12672) = *(a1 + 44);
    *(*(a1 + 32) + 12676) = *(*(a1 + 32) + 12672);
    *(*(a1 + 32) + 12656) = 0;
    __DisplaySetLogicalBrightnessInternal(*(a1 + 32), v10 | 0x40, *(*(a1 + 32) + 1256));
  }

  else
  {
    *(*(a1 + 32) + 12656) = v11;
    *(*(a1 + 32) + 12672) = *(a1 + 44);
    *(*(a1 + 32) + 12680) = v12;
    *(*(a1 + 32) + 12676) = v12;
    *(*(a1 + 32) + 12664) = CFAbsoluteTimeGetCurrent();
    *(*(a1 + 32) + 12688) = 0;
    if (_logHandle)
    {
      v7 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v7 = inited;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v2 = "YES";
      if ((*(*(a1 + 32) + 12704) & 1) == 0)
      {
        v2 = "NO";
      }

      __os_log_helper_16_2_8_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_32(v14, COERCE__INT64(*(*(a1 + 32) + 12680)), COERCE__INT64(*(*(a1 + 32) + 12672)), *&v11, COERCE__INT64(*(a1 + 40)), COERCE__INT64(v12), COERCE__INT64(*(a1 + 44)), COERCE__INT64(*(*(a1 + 32) + 12676)), v2);
      _os_log_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEFAULT, "HDR RTPLC CAP: \n\tFADE: %f --------> %f, duration: %f, \n\tstart:%f, \n\thStart:%f, \n\ttarget:%f, \n\tdisplay->rtplcEDRFade.fade.Hcurrent: %f\n\trtplcFadeIsRunning: %s", v14, 0x52u);
    }

    LODWORD(v1) = 1007192201;
    __DisplayStartFadeWithType(*(a1 + 32), 6, v1);
  }

  if (_logHandle)
  {
    v5 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v4 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v4 = init_default_corebrightness_log();
    }

    v5 = v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1 + 32) + 12704))
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    __os_log_helper_16_2_5_8_32_8_0_8_0_8_0_8_32(v13, "RTPLC cap", COERCE__INT64(*(*(a1 + 32) + 12680)), COERCE__INT64(*(*(a1 + 32) + 12672)), *(*(a1 + 32) + 12656), v3);
    _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: %0.2f ->  %0.2f t: %f fadeIsRunning: %s", v13, 0x34u);
  }
}

uint64_t __os_log_helper_16_2_8_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_32(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *result = 2;
  *(result + 1) = 8;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 0;
  *(result + 53) = 8;
  *(result + 54) = a7;
  *(result + 62) = 0;
  *(result + 63) = 8;
  *(result + 64) = a8;
  *(result + 72) = 32;
  *(result + 73) = 8;
  *(result + 74) = a9;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_32_8_0_8_0_8_0_8_32(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 32;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

double __DisplayRTPLCEDRUpdateFade(uint64_t a1, uint64_t a2, double a3)
{
  v6 = (a3 - *(a2 + 8)) / *a2;
  if (v6 >= 1.0)
  {
    *(a2 + 20) = *(a2 + 16);
    result = 0.0;
    *a2 = 0;
    *(a1 + 12704) = 0;
  }

  else
  {
    v3 = -v6;
    v5 = *(a2 + 24);
    *&result = v5 * powf(fabsf(v5 / *(a2 + 16)), v3);
    *(a2 + 20) = LODWORD(result);
  }

  return result;
}

float DisplayGetCurrentRTPLCHeadroomCap(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 1.0;
  v1 = *(a1 + 144);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __DisplayGetCurrentRTPLCHeadroomCap_block_invoke;
  v8 = &unk_1E867C928;
  v9 = &v11;
  v10 = v16;
  disp_dispatch_sync(v1, &v4);
  v3 = v12[6];
  _Block_object_dispose(&v11, 8);
  return v3;
}

float __DisplayGetCurrentRTPLCHeadroomCap_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 12676);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void DisplayClockCapRamp(uint64_t a1)
{
  v8 = a1;
  v1 = *(a1 + 144);
  v2 = MEMORY[0x1E69E9820];
  v3 = -1073741824;
  v4 = 0;
  v5 = __DisplayClockCapRamp_block_invoke;
  v6 = &__block_descriptor_40_e5_v8__0l;
  v7 = v8;
  disp_dispatch_sync(v1, &v2);
}

void __DisplayClockCapRamp_block_invoke(uint64_t a1, double a2)
{
  *(*(a1 + 32) + 12712) = 1;
  LODWORD(a2) = 1015580809;
  __DisplayStartFadeWithType(*(a1 + 32), 5, a2);
}

void DisplayStopCapRamp(uint64_t a1)
{
  v8 = a1;
  v1 = *(a1 + 144);
  v2 = MEMORY[0x1E69E9820];
  v3 = -1073741824;
  v4 = 0;
  v5 = __DisplayStopCapRamp_block_invoke;
  v6 = &__block_descriptor_40_e5_v8__0l;
  v7 = v8;
  disp_dispatch_sync(v1, &v2);
}

void DisplaySetDCPPowerAssertionForAOT(uint64_t a1, char a2)
{
  v16 = a1;
  v15 = a2;
  v11[0] = 0;
  v11[1] = v11;
  v12 = 0x20000000;
  v13 = 32;
  if ((a2 & 1) == 1)
  {
    v3 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = *MEMORY[0x1E695E4C0];
  }

  v14 = v3;
  v2 = *(v16 + 144);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __DisplaySetDCPPowerAssertionForAOT_block_invoke;
  v8 = &unk_1E867C928;
  v10 = v16;
  v9 = v11;
  disp_dispatch_sync(v2, &v4);
  _Block_object_dispose(v11, 8);
}

float DisplaySliderToLogicalBrightness(uint64_t a1, float a2)
{
  v19 = a1;
  v18 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x20000000;
  v16 = 32;
  v17 = 0;
  v2 = *(a1 + 144);
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __DisplaySliderToLogicalBrightness_block_invoke;
  v9 = &unk_1E867C8C8;
  v10 = &v13;
  v11 = v19;
  v12 = a2;
  disp_dispatch_sync(v2, &v5);
  v4 = v14[6];
  _Block_object_dispose(&v13, 8);
  return v4;
}

uint64_t __DisplaySliderToLogicalBrightness_block_invoke(uint64_t a1)
{
  v1 = _DisplaySliderToLogicalBrightnessInternal(*(a1 + 40), *(a1 + 48));
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v1;
  return result;
}

float DisplayLogicalToSliderBrightness(uint64_t a1, float a2)
{
  v19 = a1;
  v18 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x20000000;
  v16 = 32;
  v17 = 0;
  v2 = *(a1 + 144);
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __DisplayLogicalToSliderBrightness_block_invoke;
  v9 = &unk_1E867C8C8;
  v10 = &v13;
  v11 = v19;
  v12 = a2;
  disp_dispatch_sync(v2, &v5);
  v4 = v14[6];
  _Block_object_dispose(&v13, 8);
  return v4;
}

uint64_t __DisplayLogicalToSliderBrightness_block_invoke(uint64_t a1)
{
  v1 = _DisplayLogicalToSliderBrightnessInternal(*(a1 + 40), *(a1 + 48));
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v1;
  return result;
}

void __ShortcutAllRamps(void *a1)
{
  v8 = a1;
  if (_logHandle)
  {
    v4 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v4 = inited;
  }

  v7 = v4;
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    log = v7;
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_impl(&dword_1DE8E5000, log, type, "Display has been turned off, shortcutting all ramps", v5, 2u);
  }

  *(v8 + 174) = 0;
  *(v8 + 52) = 0;
  *(v8 + 60) = 0;
  *(v8 + 75) = 0;
  *(v8 + 84) = 0;
  *(v8 + 125) = 0;
  *(v8 + 134) = 0;
  *(v8 + 1621) = 0;
  *(v8 + 168) = 0;
  *(v8 + 181) = 0;
  *(v8 + 1525) = 0;
  *(v8 + 1577) = 0;
  *(v8 + 1583) = 0;
  *(v8 + 198) = 0;
  *(v8 + 1551) = 0;
  *(v8 + 106) = 0;
  __DisplayFadeCallback(v8);
}

void DisplaySetCabalFactorOverride(uint64_t a1, float a2)
{
  v11 = a1;
  v10 = a2;
  v2 = *(a1 + 144);
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __DisplaySetCabalFactorOverride_block_invoke;
  v7 = &__block_descriptor_44_e5_v8__0l;
  v9 = a2;
  v8 = v11;
  disp_dispatch_sync(v2, &v3);
}

void __DisplaySetCabalFactorOverride_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 >= 0.0)
  {
    v4 = (clamp(*(a1 + 40), 1.0, 16.0) - 1.0) / 15.0;
  }

  *(*(a1 + 32) + 12468) = v4;
  if (_logHandle)
  {
    v2 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v2 = inited;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_32_8_0(v5, "CabalFactorOverride", COERCE__INT64(v4));
    _os_log_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_DEFAULT, "%s = %f\n", v5, 0x16u);
  }

  if (v4 >= 0.0)
  {
    __DisplaySetAAPFactor(*(a1 + 32), v4);
  }
}

void _DisplaySetBrightnessWeakCapWithFade(_BYTE *a1, char a2, float a3, float a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v42 = a1;
  v41 = a3;
  v40 = a4;
  v39 = a2;
  if (a1[380])
  {
    v40 = *(v42 + 94);
  }

  if (_logHandle)
  {
    v20 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v20 = inited;
  }

  v38 = v20;
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_8_0_8_0(v46, COERCE__INT64(v41), COERCE__INT64(v40));
    _os_log_debug_impl(&dword_1DE8E5000, v38, type, "max: %f fadePeriod: %f", v46, 0x16u);
  }

  if (v39)
  {
    *(v42 + 131) = v41;
    *(v42 + 130) = _DisplayLogicalToSliderBrightnessInternal(v42, v41);
    if (*(v42 + 87) < 1.0)
    {
      v40 = 0.0;
    }
  }

  else
  {
    v42[12080] = 1;
  }

  *(v42 + 74) = v40;
  v36 = _DisplayLuminanceToPerceptualLuminanceInternal(v42, v41);
  v35 = _DisplayLuminanceToPerceptualLuminanceInternal(v42, *(v42 + 132));
  if (float_equal(v36, v35))
  {
    v40 = 0.0;
  }

  if (v40 == 0.0)
  {
    *(v42 + 132) = v41;
    *(v42 + 153) = v36;
    *(v42 + 154) = v36;
    *(v42 + 152) = v36;
    __DisplaySetLogicalBrightnessInternal(v42, 0x300Au, *(v42 + 314));
    v42[584] = 1;
    if (_logHandle)
    {
      v18 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v17 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v17 = init_default_corebrightness_log();
      }

      v18 = v17;
    }

    oslog = v18;
    v33 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v15 = oslog;
      v16 = v33;
      __os_log_helper_16_0_0(v32);
      _os_log_debug_impl(&dword_1DE8E5000, v15, v16, "Weak cap: user interacted\n", v32, 2u);
    }

    if (_logHandle)
    {
      v14 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v13 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v13 = init_default_corebrightness_log();
      }

      v14 = v13;
    }

    v31 = v14;
    v30 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_4_8_32_8_0_8_0_8_0(v45, "Weak Cap", COERCE__INT64(v41), COERCE__INT64(*(v42 + 315)), COERCE__INT64(v36));
      _os_log_impl(&dword_1DE8E5000, v31, v30, "[BRT update: %s]: Weak cap: %f, nits = %f, P = %f", v45, 0x2Au);
    }
  }

  else
  {
    *(v42 + 78) = 0;
    *(v42 + 79) = 0;
    *(v42 + 75) = CFAbsoluteTimeGetCurrent();
    if (_logHandle)
    {
      v12 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v11 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v11 = init_default_corebrightness_log();
      }

      v12 = v11;
    }

    v29 = v12;
    v28 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v44, *(v42 + 74), *(v42 + 75), *(v42 + 1560));
      _os_log_debug_impl(&dword_1DE8E5000, v29, v28, "fadePeriod=%f startTime=%f display->fade.timer=%p\n", v44, 0x20u);
    }

    v27 = (v41 - *(v42 + 132)) / v40;
    UpdateFrequency = __DisplayGetUpdateFrequency(v42, v27);
    *(v42 + 153) = v35;
    *(v42 + 154) = v35;
    *(v42 + 152) = v36;
    if (_logHandle)
    {
      v10 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v9 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v9 = init_default_corebrightness_log();
      }

      v10 = v9;
    }

    v25 = v10;
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_8_8_32_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v43, "Weak Cap", COERCE__INT64(*(v42 + 132)), COERCE__INT64(v41), COERCE__INT64(*(v42 + 154)), COERCE__INT64(*(v42 + 152)), COERCE__INT64(v40), COERCE__INT64(v27), COERCE__INT64(UpdateFrequency));
      _os_log_impl(&dword_1DE8E5000, v25, v24, "[BRT update: %s]: weak cap begin ramp L: %0.2f -> %0.2f P: %0.2f -> %0.2f t: %f rate: %0.2f nits/s %0.2fhz", v43, 0x52u);
    }

    *&v4 = 1.0 / UpdateFrequency;
    __DisplayStartFadeWithType(v42, 7, v4);
    v42[584] = 1;
    if (_logHandle)
    {
      v8 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v7 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v7 = init_default_corebrightness_log();
      }

      v8 = v7;
    }

    v23 = v8;
    v22 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v5 = v23;
      v6 = v22;
      __os_log_helper_16_0_0(v21);
      _os_log_debug_impl(&dword_1DE8E5000, v5, v6, "Weak cap: user interacted\n", v21, 2u);
    }
  }
}

void __DisplaySetBrightnessWithFade(uint64_t a1, int a2, float a3, float a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = a3;
  *(a1 + 336) = a3;
  if (*(a1 + 36))
  {
    __DisplayUpdateAmbientProperties(a1, a3);
    v7 = __DisplayCalculateBrightnessAtAmbient(a1, *(a1 + 1184));
    if (_logHandle)
    {
      v6 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v6 = inited;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v12, COERCE__INT64(v10));
      _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "User Brightness Level=%f\n", v12, 0xCu);
    }

    __DisplaySetLogicalBrightnessLegacy(a1, 0, v7, 0.0);
  }

  else
  {
    if (a3 >= *(a1 + 340))
    {
      if (a3 > *(a1 + 344))
      {
        v10 = *(a1 + 344);
      }

      v4 = _DisplaySliderToLogicalBrightnessInternal(a1, v10);
    }

    else
    {
      v4 = _DisplaySliderToLogicalBrightnessInternal(a1, *(a1 + 340));
    }

    _DisplaySetLogicalBrightnessWithFade(a1, a2, 0, 0, v4, a4);
  }
}

void __DisplayReportCommit(NSObject **a1, float a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a1;
  valuePtr = a2;
  *keys = xmmword_1E867CC40;
  values = 0;
  v15 = 0;
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
  v15 = *MEMORY[0x1E695E4D0];
  if (values)
  {
    v2 = CFGetAllocator(v13);
    v11 = CFDictionaryCreate(v2, keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v11)
    {
      v3 = v13[18];
      block = MEMORY[0x1E69E9820];
      v5 = -1073741824;
      v6 = 0;
      v7 = ____DisplayReportCommit_block_invoke;
      v8 = &__block_descriptor_48_e5_v8__0l;
      v9 = v13;
      v10 = v11;
      dispatch_async(v3, &block);
    }
  }

  if (values)
  {
    CFRelease(values);
  }
}

uint64_t __os_log_helper_16_2_5_8_32_8_0_8_0_8_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 4;
  *(result + 44) = a6;
  return result;
}

uint64_t __DisplayGetPowerAccumulator(uint64_t a1)
{
  v9 = a1;
  v4 = 0;
  v5 = &v4;
  v6 = 0x20000000;
  v7 = 32;
  v8 = 0x8000000000000000;
  if (*(a1 + 12144))
  {
    if (*(v9 + 12136))
    {
      Samples = IOReportCreateSamples();
      if (Samples)
      {
        IOReportIterate();
        CFRelease(Samples);
      }
    }
  }

  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __DisplaySetProperty_block_invoke_458(void *a1)
{
  result = __DisplayGetPowerAccumulatorDCP(a1[6], (*(a1[5] + 8) + 24));
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void _DisplaySetAdaptiveDimmingLimitWithFade(uint64_t a1, float a2, float a3)
{
  v12 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 888) = Current;
  if (*(a1 + 380))
  {
    a3 = *(a1 + 376);
  }

  *(a1 + 832) = *(a1 + 1260);
  v3 = 0;
  if (!*(a1 + 228))
  {
    v3 = _DisplayAdaptiveDimmingLeftCallback;
  }

  *(a1 + 872) = v3;
  *(a1 + 880) = a1;
  *(a1 + 840) = a3;
  *(a1 + 848) = Current;
  *(a1 + 860) = _DisplayLuminanceToPerceptualLuminanceInternal(a1, *(a1 + 1260));
  *(a1 + 864) = *(a1 + 860);
  *(a1 + 856) = _DisplayLuminanceToPerceptualLuminanceInternal(a1, a2);
  if (_logHandle)
  {
    v6 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v6 = inited;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_6_8_32_8_0_8_0_8_0_8_0_8_0(v11, "Auto Dim", COERCE__INT64(*(a1 + 1260)), COERCE__INT64(a2), COERCE__INT64(*(a1 + 864)), COERCE__INT64(*(a1 + 856)), *(a1 + 840));
    _os_log_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: L: %0.2f -> %0.2f P: %0.2f -> %0.2f t: %f", v11, 0x3Eu);
  }

  LODWORD(v4) = 1015580809;
  __DisplayStartFadeWithType(a1, 13, v4);
}

float __DisplayCalculateBrightnessAtAmbient(float *a1, float a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (a2 >= 0.0)
  {
    if (a2 > 1.0)
    {
      v6 = 1.0;
    }
  }

  else
  {
    v6 = 0.0;
  }

  v5 = a1[303] + (a1[302] * v6);
  if (_logHandle)
  {
    v4 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v4 = inited;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v8, COERCE__INT64(v6), COERCE__INT64(a1[302]), COERCE__INT64(a1[303]), COERCE__INT64(a1[84]), COERCE__INT64(v5));
    _os_log_debug_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEBUG, "ambient=%f slope=%f intercept=%f user=%f brightness=%f\n", v8, 0x34u);
  }

  if (v5 > a1[86])
  {
    return a1[86];
  }

  if (v5 < a1[85])
  {
    return a1[85];
  }

  return v5;
}

void __DisplaySetLogicalBrightnessLegacy(float *a1, mach_port_t a2, float a3, double a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v16 = a4;
  v14 = 0;
  if (a3 >= a1[85])
  {
    if (a3 > a1[86])
    {
      v17 = a1[86];
    }
  }

  else
  {
    v17 = a1[85];
  }

  if (v17 <= a1[114])
  {
    if (v17 < a1[98])
    {
      v17 = a1[98];
    }
  }

  else
  {
    v17 = a1[114];
  }

  if (a4 == -1.0)
  {
    v4 = fabs((a1[88] - v17));
    v13 = v4;
    v16 = (a1[306] + (a1[305] * v4));
    if (_logHandle)
    {
      v11 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v11 = inited;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v21, COERCE__INT64(a1[305]), COERCE__INT64(a1[306]), COERCE__INT64((v13 * 64.0)), *&v16, COERCE__INT64(v16 / (v13 * 64.0)));
      _os_log_debug_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_DEBUG, "slope=%f intercept=%f delta=%f fadePeriod=%f steptime=%f\n", v21, 0x34u);
    }

    if (v16 <= 0.0)
    {
      v16 = -1.0;
    }

    v14 = 1;
  }

  if (_logHandle)
  {
    v9 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v8 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v8 = init_default_corebrightness_log();
    }

    v9 = v8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_0(v20, COERCE__INT64(v17), *&v16, (a2 & 1) != 0);
    _os_log_debug_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEBUG, "brightness=%f fadePeriod=%f block=%d\n", v20, 0x1Cu);
  }

  if (!v14 || a1[87] == 1.0)
  {
    a1[88] = v17;
    __DisplaySetPhysicalBrightnessLegacy(a1, a2, v17, v16);
  }

  else
  {
    v5 = (a1[88] * a1[87]) + 0.01;
    v12 = v5;
    if (v17 >= v5)
    {
      a1[89] = v17;
    }

    else
    {
      a1[89] = v5;
    }

    if (_logHandle)
    {
      v7 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v6 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v6 = init_default_corebrightness_log();
      }

      v7 = v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v19, COERCE__INT64(a1[88]), COERCE__INT64(a1[87]), COERCE__INT64(a1[89]), COERCE__INT64(v17), COERCE__INT64(v12));
      _os_log_debug_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEBUG, "logical=%f factor=%f pending=%f brightness=%f minPendingBrightness=%f\n", v19, 0x34u);
    }
  }
}

uint64_t GetCFBooleanValue(const __CFNumber *a1)
{
  v5 = a1;
  valuePtr = 0;
  if (a1)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v5))
    {
      CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
    }

    else
    {
      v2 = CFBooleanGetTypeID();
      if (v2 == CFGetTypeID(v5))
      {
        return CFEqual(v5, *MEMORY[0x1E695E4D0]);
      }
    }
  }

  return valuePtr;
}

{
  v5 = a1;
  valuePtr = 0;
  if (a1)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v5))
    {
      CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
    }

    else
    {
      v2 = CFBooleanGetTypeID();
      if (v2 == CFGetTypeID(v5))
      {
        return CFEqual(v5, *MEMORY[0x1E695E4D0]);
      }
    }
  }

  return valuePtr;
}

uint64_t evaluateClientOverrides(uint64_t a1)
{
  ClientOverrideState = getClientOverrideState(a1, 0);
  v2 = getClientOverrideState(a1, 1);
  if (ClientOverrideState)
  {
    if (*(a1 + 964) >= *(a1 + 400))
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  else if (v2)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

float _DisplaySetBrightnessMinPhysicalWithFade(uint64_t a1, float a2, float a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 380))
  {
    a3 = *(a1 + 376);
  }

  v16 = fmaxf(a2, *(a1 + 1320));
  if (_logHandle)
  {
    v12 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v12 = inited;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v23, COERCE__INT64(v16), COERCE__INT64(a3));
    _os_log_impl(&dword_1DE8E5000, v12, OS_LOG_TYPE_DEFAULT, "min: %f fadePeriod: %f", v23, 0x16u);
  }

  result = v16;
  if (v16 != *(a1 + 396))
  {
    *(a1 + 396) = v16;
    *(a1 + 392) = _DisplayLogicalToSliderBrightnessInternal(a1, v16);
    *(a1 + 408) = a3;
    if (a3 == 0.0)
    {
      *(a1 + 400) = v16;
      if (*(a1 + 36))
      {
        _DisplaySetAmbient(a1, 0, *(a1 + 1184));
      }

      else
      {
        v15 = _DisplayLuminanceToPerceptualLuminanceInternal(a1, v16);
        *(a1 + 428) = v15;
        *(a1 + 432) = v15;
        *(a1 + 424) = v15;
        __DisplaySetLogicalBrightnessInternal(a1, 0x3002u, *(a1 + 1256));
        if (_logHandle)
        {
          v10 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v9 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v9 = init_default_corebrightness_log();
          }

          v10 = v9;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_4_8_32_8_0_8_0_8_0(v22, "MIN cap", COERCE__INT64(a2), COERCE__INT64(*(a1 + 1260)), COERCE__INT64(v15));
          _os_log_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: Min brightness: %f, nits = %f, P = %f", v22, 0x2Au);
        }
      }
    }

    else
    {
      *(a1 + 440) = 0;
      *(a1 + 448) = 0;
      *(a1 + 416) = CFAbsoluteTimeGetCurrent();
      if (_logHandle)
      {
        v8 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v7 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v7 = init_default_corebrightness_log();
        }

        v8 = v7;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_3_8_0_8_0_8_0(v21, *(a1 + 408), *(a1 + 416), *(a1 + 12480));
        _os_log_debug_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEBUG, "fadePeriod=%f startTime=%f display->fade.timer=%p\n", v21, 0x20u);
      }

      v14 = (v16 - *(a1 + 400)) / a3;
      UpdateFrequency = __DisplayGetUpdateFrequency(a1, v14);
      *(a1 + 428) = _DisplayLuminanceToPerceptualLuminanceInternal(a1, *(a1 + 400));
      *(a1 + 432) = *(a1 + 428);
      *(a1 + 424) = _DisplayLuminanceToPerceptualLuminanceInternal(a1, v16);
      if (_logHandle)
      {
        v6 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v5 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v5 = init_default_corebrightness_log();
        }

        v6 = v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_8_8_32_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v20, "MIN cap", COERCE__INT64(*(a1 + 400)), COERCE__INT64(v16), COERCE__INT64(*(a1 + 432)), COERCE__INT64(*(a1 + 424)), COERCE__INT64(a3), COERCE__INT64(v14), COERCE__INT64(UpdateFrequency));
        _os_log_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: begin ramp L: %0.2f -> %0.2f P: %0.2f -> %0.2f t: %f rate: %0.2f nits/s %0.2fhz", v20, 0x52u);
      }

      *&v4 = 1.0 / UpdateFrequency;
      __DisplayStartFadeWithType(a1, 19, v4);
    }
  }

  return result;
}

void _DisplaySetAmbient(uint64_t a1, char a2, float a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3 >= 0.0 && a3 <= 1.0)
  {
    if (*(a1 + 348) == 1.0)
    {
      if (a2)
      {
        *(a1 + 1220) = *(a1 + 1228);
      }

      else
      {
        *(a1 + 1220) = 1.5;
      }

      *(a1 + 1224) = 0;
    }

    *(a1 + 1184) = a3;
    if (_logHandle)
    {
      v6 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v6 = inited;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_2_8_0_8_0(v11, COERCE__INT64(*(a1 + 1220)), COERCE__INT64(*(a1 + 1224)));
      _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "ALS: slope=%f intercept=%f \n", v11, 0x16u);
    }

    v7 = __DisplayCalculateBrightnessAtAmbient(a1, a3);
    if (_logHandle)
    {
      v4 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v3 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v3 = init_default_corebrightness_log();
      }

      v4 = v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v10, COERCE__INT64(v7));
      _os_log_debug_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEBUG, "Brightness For Ambient Level=%f\n", v10, 0xCu);
    }

    __DisplaySetLogicalBrightnessLegacy(a1, 2u, v7, -1.0);
  }
}

void _DisplaySetBrightnessEcoModeFactorWithFade(uint64_t a1, float a2, float a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 380))
  {
    a3 = *(a1 + 376);
  }

  if (_logHandle)
  {
    v8 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v8 = inited;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_8_0_8_0(v13, COERCE__INT64(a2), COERCE__INT64(a3));
    _os_log_debug_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEBUG, "factor: %f fadePeriod: %f", v13, 0x16u);
  }

  if (a2 != *(a1 + 648))
  {
    if (a3 == 0.0)
    {
      *(a1 + 648) = a2;
      *(a1 + 684) = a2;
      *(a1 + 688) = a2;
      *(a1 + 680) = a2;
      *(a1 + 664) = 0;
      v3 = 0.5 * (*(a1 + 648) - 0.8) / 0.199999988 + 0.5;
      _DisplayReduceBacklightCompensation(a1, v3);
      __DisplaySetLogicalBrightnessWithFadeInternal(a1, 12288, 0, 0, *(a1 + 1252), 0.0);
    }

    else
    {
      *(a1 + 704) = 0;
      *(a1 + 712) = 0;
      *(a1 + 664) = a3;
      Current = CFAbsoluteTimeGetCurrent();
      *(a1 + 672) = Current;
      *(a1 + 684) = *(a1 + 648);
      *(a1 + 688) = *(a1 + 648);
      *(a1 + 680) = a2;
      LODWORD(Current) = 1015580809;
      __DisplayStartFadeWithType(a1, 14, Current);
    }

    if (_logHandle)
    {
      v6 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v5 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v5 = init_default_corebrightness_log();
      }

      v6 = v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_5_8_32_8_0_8_0_8_0_8_0(v12, "Eco Mode", COERCE__INT64(*(a1 + 648)), COERCE__INT64(a2), COERCE__INT64(a3), 0x404E000000000000);
      _os_log_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: %0.2f -> %0.2f t: %f rate: %0.2fhz", v12, 0x34u);
    }
  }
}

void _DisplaySetBrightnessEcoModeLimitWithFade(uint64_t a1, float a2, float a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 380))
  {
    a3 = *(a1 + 376);
  }

  if (a3 == 0.0)
  {
    *(a1 + 780) = a2;
    v6 = _DisplayLuminanceToPerceptualLuminanceInternal(a1, a2);
    *(a1 + 804) = v6;
    *(a1 + 808) = v6;
    *(a1 + 800) = v6;
    *(a1 + 784) = a3;
    __DisplaySetLogicalBrightnessInternal(a1, 0x300Au, *(a1 + 1256));
  }

  else
  {
    *(a1 + 780) = *(a1 + 1260);
    *(a1 + 816) = 0;
    *(a1 + 824) = 0;
    *(a1 + 784) = a3;
    *(a1 + 792) = CFAbsoluteTimeGetCurrent();
    *(a1 + 804) = _DisplayLuminanceToPerceptualLuminanceInternal(a1, *(a1 + 1260));
    *(a1 + 808) = *(a1 + 804);
    *(a1 + 800) = _DisplayLuminanceToPerceptualLuminanceInternal(a1, a2);
    LODWORD(v3) = 1015580809;
    __DisplayStartFadeWithType(a1, 14, v3);
  }

  if (_logHandle)
  {
    v5 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v5 = inited;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_5_8_32_8_0_8_0_8_0_8_0(v10, "Eco Mode", COERCE__INT64(*(a1 + 1260)), COERCE__INT64(a2), COERCE__INT64(a3), 0x404E000000000000);
    _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: %0.2f -> %0.2f t: %f rate: %0.2fhz", v10, 0x34u);
  }
}

void _DisplaySetBrightnessDominoModeLimitWithFade(uint64_t a1, float a2, float a3)
{
  v10 = *MEMORY[0x1E69E9840];
  *(a1 + 760) = 0;
  *(a1 + 768) = 0;
  *(a1 + 728) = a3;
  *(a1 + 736) = CFAbsoluteTimeGetCurrent();
  *(a1 + 748) = _DisplayLuminanceToPerceptualLuminanceInternal(a1, *(a1 + 724));
  *(a1 + 752) = *(a1 + 748);
  *(a1 + 744) = _DisplayLuminanceToPerceptualLuminanceInternal(a1, a2);
  LODWORD(v3) = 1015580809;
  __DisplayStartFadeWithType(a1, 15, v3);
  if (_logHandle)
  {
    v5 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v5 = inited;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_5_8_32_8_0_8_0_8_0_8_0(v9, "Domino Mode", COERCE__INT64(*(a1 + 724)), COERCE__INT64(a2), COERCE__INT64(a3), 0x404E000000000000);
    _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: %f -> %f t: %f rate: %0.2fhz", v9, 0x34u);
  }
}

double __DisplayCancelFactorFade(uint64_t a1, float a2)
{
  v10 = a1;
  if (_DisplayRampIsRunning(a1))
  {
    if (_logHandle)
    {
      v6 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v6 = inited;
    }

    v9 = v6;
    v8 = 2;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_debug_impl(&dword_1DE8E5000, log, type, "cancel factor ramp", v7, 2u);
    }

    *(v10 + 88) = 0;
    if (*(v10 + 1424))
    {
      (*(v10 + 1424))(*(v10 + 1376));
    }

    result = 0.0;
    *(v10 + 1384) = 0;
  }

  return result;
}

void _DisplaySetBrightnessFactor(uint64_t a1, float a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v51 = a1;
  v50 = a2;
  v49 = a2 > 0.0;
  if ((__PAIR64__(*(a1 + 44), 0.0) - LODWORD(a2)) >> 32)
  {
    if (*(v51 + 44) || !v49)
    {
      if (*(v51 + 44) == 1 && !v49)
      {
        if (*(v51 + 328) && ([*(v51 + 328) isActive] & 1) != 0 && !objc_msgSend(*(v51 + 328), "action:", 0))
        {
          v44 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
          CFDictionarySetValue(*(v51 + 192), @"CBSoftWakeActive", v44);
          MEMORY[0x1E69E5920](v44);
        }

        v43 = mach_absolute_time() * *(v51 + 56);
        v42 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &v43);
        if (v42)
        {
          if (*(v51 + 192))
          {
            CFDictionarySetValue(*(v51 + 192), @"EventTimestampDisplayOff", v42);
          }

          if (_logHandle)
          {
            v14 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              inited = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              inited = init_default_corebrightness_log();
            }

            v14 = inited;
          }

          v41 = v14;
          v40 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            __os_log_helper_16_0_1_8_0(v52, *&v43);
            _os_log_impl(&dword_1DE8E5000, v41, v40, "ts=%f Setting kCBEventTimestampDisplayOffKey", v52, 0xCu);
          }

          CFRelease(v42);
        }

        _DisplayResetAdaptiveDimming(v51);
      }
    }

    else
    {
      valuePtr = mach_absolute_time() * *(v51 + 56);
      v47 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
      if (v47)
      {
        if (*(v51 + 192))
        {
          CFDictionarySetValue(*(v51 + 192), @"EventTimestampDisplayOn", v47);
        }

        if (_logHandle)
        {
          v16 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v15 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v15 = init_default_corebrightness_log();
          }

          v16 = v15;
        }

        v46 = v16;
        v45 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_1_8_0(v53, *&valuePtr);
          _os_log_impl(&dword_1DE8E5000, v46, v45, "ts=%f Setting kCBEventTimestampDisplayOnKey", v53, 0xCu);
        }

        CFRelease(v47);
      }

      if ((DisplayHasDCP(v51) & 1) != 0 && *(v51 + 108))
      {
        __memset_chk();
        *(v51 + 12736) = 0;
        *(v51 + 12732) = 0;
        *(v51 + 12944) = -1.0;
      }
    }

    *(v51 + 44) = v49;
    if (*(v51 + 144))
    {
      v2 = *(v51 + 144);
      block = MEMORY[0x1E69E9820];
      v35 = -1073741824;
      v36 = 0;
      v37 = ___DisplaySetBrightnessFactor_block_invoke;
      v38 = &__block_descriptor_40_e5_v8__0l;
      v39 = v51;
      dispatch_async(v2, &block);
    }

    if (*(v51 + 192))
    {
      theDict = *(v51 + 192);
      if (*(v51 + 44))
      {
        CFDictionarySetValue(theDict, @"DisplayOn", *MEMORY[0x1E695E4D0]);
      }

      else
      {
        CFDictionarySetValue(theDict, @"DisplayOn", *MEMORY[0x1E695E4C0]);
      }
    }

    v33 = v49;
    v3 = *(v51 + 168);
    v26 = MEMORY[0x1E69E9820];
    v27 = -1073741824;
    v28 = 0;
    v29 = ___DisplaySetBrightnessFactor_block_invoke_2;
    v30 = &__block_descriptor_48_e5_v8__0l;
    v31 = v51;
    v32 = v49;
    dispatch_async(v3, &v26);
  }

  if (*(v51 + 348) == 0.0 && v50 > 0.0)
  {
    __DisplayInitializeReport(v51);
  }

  *(v51 + 348) = v50;
  if (*(v51 + 348) == 0.0)
  {
    if (*(v51 + 232))
    {
      if (_logHandle)
      {
        v11 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v10 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v10 = init_default_corebrightness_log();
        }

        v11 = v10;
      }

      oslog = v11;
      v24 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v8 = oslog;
        v9 = v24;
        __os_log_helper_16_0_0(v23);
        _os_log_debug_impl(&dword_1DE8E5000, v8, v9, "Pre-strobe OFF (display off) \n", v23, 2u);
      }

      *(v51 + 232) = 0;
    }

    if (!getClientOverrideState(v51, 1))
    {
      *(v51 + 392) = 0;
      v4 = *(v51 + 1320);
      *(v51 + 396) = v4;
      *(v51 + 400) = v4;
    }

    if (*(v51 + 32) && *(v51 + 1204) > 0.0)
    {
      *(v51 + 1252) = *(v51 + 1320);
      *(v51 + 1492) = *(v51 + 1320);
      if ([+[CBSILState isSILActive] sharedInstance]
      {
        *(v51 + 1256) = 0;
      }
    }

    *(v51 + 12522) = 0;
    v5 = *(v51 + 144);
    v17 = MEMORY[0x1E69E9820];
    v18 = -1073741824;
    v19 = 0;
    v20 = ___DisplaySetBrightnessFactor_block_invoke_748;
    v21 = &__block_descriptor_40_e5_v8__0l;
    v22 = v51;
    dispatch_async(v5, &v17);
    v6 = *(v51 + 1080);
    *(v51 + 1084) = v6;
    *(v51 + 1056) = v6;
    *(v51 + 1064) = 0;
    v7 = *(v51 + 1008);
    *(v51 + 1012) = v7;
    *(v51 + 984) = v7;
    *(v51 + 992) = 0;
    __DisplayCommitReport(v51, 1);
  }
}

float __DisplayCalculateBrightnessFromFactorChange(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (_logHandle)
  {
    v4 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v4 = inited;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_8_0_8_0(v8, COERCE__INT64(*(a1 + 348)), COERCE__INT64(*(a1 + 356)));
    _os_log_debug_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEBUG, "Brightness factor=%f pending=%f\n", v8, 0x16u);
  }

  if (*(a1 + 348) == 1.0 && *(a1 + 356) != 0.0)
  {
    *(a1 + 352) = *(a1 + 356);
  }

  if (a2)
  {
    return *(a1 + 352);
  }

  else
  {
    return __DisplayCalculateBrightnessAtAmbient(a1, *(a1 + 1184));
  }
}

double __DisplayCancelReflectedBrightnessFadeInternal(uint64_t a1, double result)
{
  v10 = a1;
  if (*(a1 + 12248) & 1) != 0 && (_DisplayRampIsRunning(v10))
  {
    if (_logHandle)
    {
      v6 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v6 = inited;
    }

    v9 = v6;
    v8 = 2;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_debug_impl(&dword_1DE8E5000, log, type, "cancel AAP ramp", v7, 2u);
    }

    if ((*(v10 + 12282) & 1) == 0)
    {
      __DisplayUpdateAAPFactor(v10);
    }

    if (*(v10 + 1608))
    {
      (*(v10 + 1608))(*(v10 + 1616));
    }

    v2 = 0.0;
    *(v10 + 1576) = 0;
  }

  return v2;
}

double __DisplayCancelAAPFade(_BYTE *a1, double result)
{
  v10 = a1;
  if (a1[12248] & 1) != 0 && (_DisplayRampIsRunning(v10))
  {
    if (_logHandle)
    {
      v6 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v6 = inited;
    }

    v9 = v6;
    v8 = 2;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_debug_impl(&dword_1DE8E5000, log, type, "cancel AAP ramp", v7, 2u);
    }

    __DisplaySetAAPFactor(v10, 0.0);
    if (*(v10 + 1555))
    {
      (*(v10 + 1555))(*(v10 + 1556));
    }

    v2 = 0.0;
    *(v10 + 1550) = 0;
  }

  return v2;
}

uint64_t __os_log_helper_16_2_7_8_32_8_32_8_0_8_0_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *result = 2;
  *(result + 1) = 7;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 0;
  *(result + 53) = 8;
  *(result + 54) = a7;
  *(result + 62) = 0;
  *(result + 63) = 8;
  *(result + 64) = a8;
  return result;
}

void __DisplaySendPLCUpdate(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = *MEMORY[0x1E695E4C0];
  }

  if ((a2 & 1) == 1)
  {
    if (*(a1 + 16))
    {
      (*(a1 + 16))(*(a1 + 24), @"nitsExceedsPLCThreshold", v2);
    }

    if (*(a1 + 108))
    {
      IORegistryEntrySetCFProperty(*(a1 + 108), @"enablePLCMode", v2);
    }

    __DisplaySetBLDriverProperty(a1, @"plc-update", v2);
  }

  else
  {
    __DisplaySetBLDriverProperty(a1, @"plc-update", v2);
    if (*(a1 + 108))
    {
      IORegistryEntrySetCFProperty(*(a1 + 108), @"enablePLCMode", v2);
    }

    if (*(a1 + 16))
    {
      (*(a1 + 16))(*(a1 + 24), @"nitsExceedsPLCThreshold", v2);
    }
  }

  *(a1 + 289) = a2 & 1;
}

void __DisplaySetProperty_block_invoke_591(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    (*(*(a1 + 32) + 16))(*(*(a1 + 32) + 24), @"BrightnessCLTMMode", *(a1 + 40));
  }

  CFRelease(*(a1 + 40));
}

float _DisplaySetBrightnessMaxPhysicalZeroWithFade(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 380))
  {
    a5 = *(a1 + 376);
  }

  *(a1 + 460) = a4;
  *(a1 + 456) = _DisplayLogicalToSliderBrightnessInternal(a1, a4);
  *(a1 + 472) = a5;
  *(a1 + 504) = a2;
  *(a1 + 512) = a3;
  *(a1 + 480) = CFAbsoluteTimeGetCurrent();
  if (_logHandle)
  {
    v10 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v10 = inited;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_3_8_0_8_0_8_0(v19, *(a1 + 472), *(a1 + 480), *(a1 + 12480));
    _os_log_debug_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEBUG, "fadePeriod=%f startTime=%f display->fade.timer=%p\n", v19, 0x20u);
  }

  v12 = (a4 - *(a1 + 464)) / a5;
  UpdateFrequency = __DisplayGetUpdateFrequency(a1, v12);
  *(a1 + 492) = _DisplayLuminanceToPerceptualLuminanceInternal(a1, *(a1 + 464));
  *(a1 + 496) = *(a1 + 492);
  *(a1 + 488) = _DisplayLuminanceToPerceptualLuminanceInternal(a1, a4);
  if (_logHandle)
  {
    v8 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v7 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v7 = init_default_corebrightness_log();
    }

    v8 = v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_8_8_32_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v18, "MAX cap", COERCE__INT64(*(a1 + 464)), COERCE__INT64(a4), COERCE__INT64(*(a1 + 496)), COERCE__INT64(*(a1 + 488)), COERCE__INT64(a5), COERCE__INT64(v12), COERCE__INT64(UpdateFrequency));
    _os_log_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: begin ramp L: %0.2f -> %0.2f P: %0.2f -> %0.2f t: %f rate: %0.2f nits/s %0.2fhz", v18, 0x52u);
  }

  *&v5 = 1.0 / UpdateFrequency;
  __DisplayStartFadeWithType(a1, 18, v5);
  return result;
}

void _DisplayRampDoneCallback(uint64_t result)
{
  if (result)
  {
    if (_DisplayCLTMRev2Applicable(result))
    {
      *(result + 464) = 0;
      SetBLDriverNitsValueIfNotInLPM(result, 0);
    }
  }
}

void SetPreStrobeState(_BYTE *a1, char a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = a1;
  v18 = a2;
  if ((a1[232] & 1) != (a2 & 1))
  {
    v17 = 0;
    if (v18)
    {
      *(v19 + 59) = *(v19 + 35);
      v17 = 44236800;
      if (*(v19 + 64) > 0)
      {
        v17 = *(v19 + 64);
        if (*(v19 + 63) > 0)
        {
          if (*(v19 + 64) < *(v19 + 63))
          {
            v17 = 44236800;
          }

          else
          {
            v17 = *(v19 + 63);
          }
        }
      }
    }

    else
    {
      v17 = *(v19 + 59);
    }

    v19[232] = v18 & 1;
    if ((DisplayHasDCP(v19) & 1) != 0 && *(v19 + 27))
    {
      valuePtr = *(v19 + 378);
      if ((v18 & 1) != 0 && v17 > valuePtr)
      {
        valuePtr = v17;
      }

      v2 = CFGetAllocator(v19);
      v15 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
      if (v15)
      {
        if ((v19[321] & 1) == 0)
        {
          IORegistryEntrySetCFProperty(*(v19 + 27), @"BLNitsCap", v15);
        }

        *(v19 + 60) = valuePtr / 65536.0;
        CFRelease(v15);
      }

      if (_logHandle)
      {
        v5 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        v5 = inited;
      }

      v14 = v5;
      v13 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_2_8_0_8_0(v20, COERCE__INT64(valuePtr / 65536.0), COERCE__INT64(v17 / 65536.0));
        _os_log_debug_impl(&dword_1DE8E5000, v14, v13, "Pre-strobe: setting Cap=%f and Nits=%f \n", v20, 0x16u);
      }
    }

    if (v19[1516])
    {
      v3 = *(v19 + 18);
      block = MEMORY[0x1E69E9820];
      v7 = -1073741824;
      v8 = 0;
      v9 = __SetPreStrobeState_block_invoke;
      v10 = &__block_descriptor_41_e5_v8__0l;
      v11 = v19;
      v12 = v18 & 1;
      dispatch_async(v3, &block);
    }

    SetIOMFBBrightness(v19, v17, 1);
  }
}

float _DisplayGetGlobalScalarFromDictionary(uint64_t a1, int a2, const __CFDictionary *a3)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = -1.0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 1.0;
  v11 = 1;
  if (!a1 || !v18 || !v17)
  {
    return _DisplayGetGlobalScalarFromDevice(v19, v18);
  }

  cf = CFDictionaryGetValue(v17, @"enable");
  if (cf)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(cf))
    {
      valuePtr = 1;
      CFNumberGetValue(cf, kCFNumberIntType, &valuePtr);
      v11 = valuePtr != 0;
    }
  }

  if (v11)
  {
    if (([*(v19 + 13040) getGlobalScalarDisplayI:&v12 andB:&v12 + 4] & 1) == 0)
    {
      return _DisplayGetGlobalScalarFromDevice(v19, v18);
    }

    cf = CFDictionaryGetValue(v17, @"I_nominal");
    if (!cf)
    {
      return _DisplayGetGlobalScalarFromDevice(v19, v18);
    }

    v7 = CFNumberGetTypeID();
    if (v7 != CFGetTypeID(cf))
    {
      return _DisplayGetGlobalScalarFromDevice(v19, v18);
    }

    CFNumberGetValue(cf, kCFNumberFloatType, &v13);
    cf = CFDictionaryGetValue(v17, @"I_threshold");
    if (!cf)
    {
      return _DisplayGetGlobalScalarFromDevice(v19, v18);
    }

    v6 = CFNumberGetTypeID();
    if (v6 != CFGetTypeID(cf))
    {
      return _DisplayGetGlobalScalarFromDevice(v19, v18);
    }

    CFNumberGetValue(cf, kCFNumberFloatType, &v13 + 4);
    cf = CFDictionaryGetValue(v17, @"B_min");
    if (!cf)
    {
      return _DisplayGetGlobalScalarFromDevice(v19, v18);
    }

    v5 = CFNumberGetTypeID();
    if (v5 != CFGetTypeID(cf))
    {
      return _DisplayGetGlobalScalarFromDevice(v19, v18);
    }

    CFNumberGetValue(cf, kCFNumberFloatType, &v14);
    cf = CFDictionaryGetValue(v17, @"Slope");
    if (!cf)
    {
      return _DisplayGetGlobalScalarFromDevice(v19, v18);
    }

    v4 = CFNumberGetTypeID();
    if (v4 != CFGetTypeID(cf))
    {
      return _DisplayGetGlobalScalarFromDevice(v19, v18);
    }

    CFNumberGetValue(cf, kCFNumberFloatType, &v14 + 4);
    return _DisplayCalculateGlobalScalar(v19, &v12);
  }

  else
  {
    v16 = 1.0;
    CFDictionarySetValue(*(v19 + 192), @"BrightnessGlobalScalar", @"disabled");
    return v16;
  }
}

float DisplayEnableFullBrightnessRangeAccessOverride(uint64_t a1, char a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v38 = a1;
  v37 = a2;
  if (a2)
  {
    if ((*(v38 + 1548) & 1) == 0)
    {
      if (_logHandle)
      {
        v18 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        v18 = inited;
      }

      v36 = v18;
      v35 = 2;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        log = v36;
        type = v35;
        __os_log_helper_16_0_0(v34);
        _os_log_debug_impl(&dword_1DE8E5000, log, type, "DisplayEnableFullBrightnessRangeAccessOverride: Enable", v34, 2u);
      }

      v2 = *(v38 + 1544);
      *(v38 + 1312) = v2;
      *(v38 + 1300) = v2;
      v33 = *(v38 + 64);
      v32 = *(v38 + 72);
      if (*(v38 + 1517))
      {
        for (i = v33 / 2; i < v33; ++i)
        {
          v30 = *(v38 + 1544);
          v29 = 1.0;
          v28 = (((i - v33 / 2) / (v33 - 1 - v33 / 2)) * ((*(v38 + 1536) / v30) - 1.0)) + 1.0;
          if (v28 > 0.0)
          {
            *(v32 + 4 * i) = *(v32 + 4 * i) / v28;
          }

          if (_logHandle)
          {
            v14 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v13 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v13 = init_default_corebrightness_log();
            }

            v14 = v13;
          }

          v27 = v14;
          v26 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_3_8_0_8_0_8_0(v40, i, COERCE__INT64(*(v32 + 4 * i)), COERCE__INT64(v28));
            _os_log_debug_impl(&dword_1DE8E5000, v27, v26, "Rescaled marketing table %ld: %f (factor %f)", v40, 0x20u);
          }
        }
      }

      v3 = *(v38 + 1312);
      *(v38 + 460) = v3;
      *(v38 + 464) = v3;
      result = *(v38 + 1312);
      *(v38 + 460) = result;
      *(v38 + 528) = result;
      *(v38 + 1548) = 1;
    }
  }

  else if (*(v38 + 1548))
  {
    if (_logHandle)
    {
      v12 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v11 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v11 = init_default_corebrightness_log();
      }

      v12 = v11;
    }

    v25 = v12;
    v24 = 2;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v9 = v25;
      v10 = v24;
      __os_log_helper_16_0_0(v23);
      _os_log_debug_impl(&dword_1DE8E5000, v9, v10, "DisplayEnableFullBrightnessRangeAccessOverride: Disable", v23, 2u);
    }

    v5 = *(v38 + 1536);
    *(v38 + 1312) = v5;
    *(v38 + 1300) = v5;
    v22 = *(v38 + 64);
    v21 = *(v38 + 72);
    if (*(v38 + 1517))
    {
      for (j = v22 / 2; j < v22; ++j)
      {
        v19 = (((j - v22 / 2) / (v22 - 1 - v22 / 2)) * ((*(v38 + 1536) / *(v38 + 1544)) - 1.0)) + 1.0;
        *(v21 + 4 * j) = *(v21 + 4 * j) * v19;
        if (_logHandle)
        {
          v8 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v7 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v7 = init_default_corebrightness_log();
          }

          v8 = v7;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_3_8_0_8_0_8_0(v39, j, COERCE__INT64(*(v21 + 4 * j)), COERCE__INT64(v19));
          _os_log_debug_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEBUG, "Rescaled marketing table %ld: %f (factor %f)", v39, 0x20u);
        }
      }
    }

    v6 = *(v38 + 1312);
    *(v38 + 460) = v6;
    *(v38 + 464) = v6;
    result = *(v38 + 1312);
    *(v38 + 460) = result;
    *(v38 + 528) = result;
    *(v38 + 1548) = 0;
  }

  return result;
}

void _DisplaySetAuroraFactorWithFade(uint64_t a1, float a2, float a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 380))
  {
    a3 = *(a1 + 376);
  }

  v10 = 0;
  if (_logHandle)
  {
    v9 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v9 = inited;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_8_0_8_0(v15, COERCE__INT64(a2), COERCE__INT64(a3));
    _os_log_debug_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEBUG, "Aurora factor: %f fadePeriod: %f", v15, 0x16u);
  }

  if (*(a1 + 13016))
  {
    v10 = 1;
    a3 = 0.0;
  }

  if (a3 == 0.0)
  {
    *(a1 + 12952) = a2;
    *(a1 + 12980) = a2;
    *(a1 + 12984) = a2;
    *(a1 + 12976) = a2;
    *(a1 + 12960) = 0;
    if (*(a1 + 16))
    {
      context = objc_autoreleasePoolPush();
      *&v3 = a2;
      (*(a1 + 16))(*(a1 + 24), @"AuroraFactor", [MEMORY[0x1E696AD98] numberWithFloat:v3]);
      (*(a1 + 16))(*(a1 + 24), @"AuroraRampInProgress", *MEMORY[0x1E695E4C0]);
      objc_autoreleasePoolPop(context);
    }

    if ((v10 & 1) == 0 && (_DisplayRampIsRunning(a1) & 1) == 0)
    {
      __DisplaySetLogicalBrightnessWithFadeInternal(a1, 12288, 0, 0, *(a1 + 1252), 0.0);
    }
  }

  else
  {
    *(a1 + 13000) = 0;
    *(a1 + 13008) = 0;
    *(a1 + 12960) = a3;
    Current = CFAbsoluteTimeGetCurrent();
    *(a1 + 12968) = Current;
    *(a1 + 12980) = *(a1 + 12952);
    *(a1 + 12984) = *(a1 + 12952);
    *(a1 + 12976) = a2;
    LODWORD(Current) = 1015580809;
    __DisplayStartFadeWithType(a1, 11, Current);
  }

  if (_logHandle)
  {
    v6 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v5 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v5 = init_default_corebrightness_log();
    }

    v6 = v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_4_8_32_8_0_8_0_8_0(v14, "Aurora Factor", COERCE__INT64(*(a1 + 12980)), COERCE__INT64(*(a1 + 12976)), *(a1 + 12960));
    _os_log_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: %f -> %f t: %f", v14, 0x2Au);
  }
}

uint64_t _DisplayRampIsRunning(uint64_t a1)
{
  v3 = 1;
  if (!*(a1 + 12480))
  {
    LOBYTE(v2) = 0;
    if (*(a1 + 321))
    {
      v2 = [*(a1 + 208) isPaused] ^ 1;
    }

    v3 = v2;
  }

  return v3 & 1;
}

float _DisplayGetBrightness(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  v1 = *(a1 + 144);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = ___DisplayGetBrightness_block_invoke;
  v8 = &unk_1E867C928;
  v9 = &v11;
  v10 = v16;
  disp_dispatch_sync(v1, &v4);
  v3 = v12[6];
  _Block_object_dispose(&v11, 8);
  return v3;
}

float _DisplayResetAdaptiveDimming(uint64_t a1)
{
  v9 = a1;
  if (_logHandle)
  {
    v5 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v5 = inited;
  }

  v8 = v5;
  v7 = 2;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, "Display powering off; reset AutoDim state", v6, 2u);
  }

  *(v9 + 228) = 0;
  result = 100.0;
  *(v9 + 832) = 1120403456;
  return result;
}

void __DisplayCommitReport(uint64_t a1, char a2)
{
  v14 = a1;
  v13 = a2;
  if (*(a1 + 12520) & 1) != 0 || (*(v14 + 12514))
  {
    if (v13)
    {
      __DisplayResetLogTimer(v14, 1);
    }

    if (*(v14 + 12504))
    {
      bzero(v9, 0x200uLL);
      CFXGetReport(*(v14 + 12504), v9);
      v2 = v11 / v10;
      valuePtr = v2;
      v3 = v12 / v10;
      v7 = v3;
      valuePtr = fmaxf(fminf(valuePtr, *(v14 + 1312)), *(v14 + 1320));
      v7 = fmaxf(fminf(v3, *(v14 + 1312)), *(v14 + 1320));
      theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (theDict)
      {
        value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
        if (value)
        {
          CFDictionaryAddValue(theDict, @"AvgBacklightNits", value);
          CFRelease(value);
        }

        valuea = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &v7);
        if (valuea)
        {
          CFDictionaryAddValue(theDict, @"AvgLogicalBrightnessNits", valuea);
          CFRelease(valuea);
        }

        if (*(v14 + 16))
        {
          (*(v14 + 16))(*(v14 + 24), @"PowerLogReport", theDict);
        }

        CFDictionarySetValue(*(v14 + 192), @"PowerLogReport", theDict);
        CFRelease(theDict);
      }
    }
  }
}

float _DisplayGetBrightnessFactor(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  v1 = *(a1 + 144);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = ___DisplayGetBrightnessFactor_block_invoke;
  v8 = &unk_1E867C928;
  v9 = &v11;
  v10 = v16;
  disp_dispatch_sync(v1, &v4);
  v3 = v12[6];
  _Block_object_dispose(&v11, 8);
  return v3;
}

void DisplaySetAuroraFactorWithFade(uint64_t a1, float a2, float a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v3 = *(a1 + 144);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __DisplaySetAuroraFactorWithFade_block_invoke;
  v8 = &__block_descriptor_48_e5_v8__0l;
  v9 = v14;
  v10 = a2;
  v11 = a3;
  disp_dispatch_sync(v3, &v4);
}

void _DisplaySetRestrictionFactorWithFade(uint64_t a1, char a2, float a3, float a4, float a5, float a6)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = __PAIR64__(LODWORD(a6), LODWORD(a5));
  if (*(a1 + 380))
  {
    a4 = *(a1 + 376);
  }

  v13 = 0;
  if (_logHandle)
  {
    v11 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v11 = inited;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_0(v20, COERCE__INT64(a3), COERCE__INT64(a4), a2 & 1);
    _os_log_debug_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_DEBUG, "Restriction factor: %f fadePeriod: %f left: %d", v20, 0x1Cu);
  }

  *(a1 + 976) = v18;
  if (a2)
  {
    v12 = a1 + 984;
  }

  else
  {
    v12 = a1 + 1056;
  }

  if (a2 & 1) != 0 && (*(a1 + 1048) & 1) != 0 || (a2 & 1) == 0 && (*(a1 + 1120))
  {
    v13 = 1;
    a4 = 0.0;
  }

  if (a4 == 0.0)
  {
    *v12 = a3;
    *(v12 + 28) = a3;
    *(v12 + 32) = a3;
    *(v12 + 24) = a3;
    *(v12 + 8) = 0;
    if ((v13 & 1) == 0)
    {
      __DisplaySetLogicalBrightnessWithFadeInternal(a1, 12288, 0, 0, *(a1 + 1252), 0.0);
    }
  }

  else
  {
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 8) = a4;
    Current = CFAbsoluteTimeGetCurrent();
    *(v12 + 16) = Current;
    *(v12 + 28) = *v12;
    *(v12 + 32) = *v12;
    *(v12 + 24) = a3;
    LODWORD(Current) = 1015580809;
    __DisplayStartFadeWithType(a1, 17, Current);
  }

  if (_logHandle)
  {
    v9 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v8 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v8 = init_default_corebrightness_log();
    }

    v9 = v8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v7 = "left";
    }

    else
    {
      v7 = "right";
    }

    __os_log_helper_16_2_7_8_32_8_32_8_0_8_0_8_0_8_0_8_0(v19, "Restriction Factor", v7, COERCE__INT64(*(v12 + 28)), COERCE__INT64(*(v12 + 24)), *(v12 + 8), COERCE__INT64(*(a1 + 976)), COERCE__INT64(*(a1 + 980)));
    _os_log_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: %s: %f -> %f t: %f pivotingL: min = %f, max = %f", v19, 0x48u);
  }
}

void DisplaySetRestrictionFactorWithFade(uint64_t a1, char a2, float a3, float a4, float a5, float a6)
{
  v21 = __PAIR64__(LODWORD(a6), LODWORD(a5));
  v20 = a1;
  v19 = a3;
  v18 = a4;
  v17 = a2;
  v6 = *(a1 + 144);
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __DisplaySetRestrictionFactorWithFade_block_invoke;
  v11 = &__block_descriptor_57_e5_v8__0l;
  v12 = v20;
  v13 = a3;
  v14 = a4;
  v16 = a2 & 1;
  v15 = __PAIR64__(LODWORD(a6), LODWORD(a5));
  disp_dispatch_sync(v6, &v7);
}

float DisplayGetRestrictionFactorForNits(uint64_t a1, char a2, float a3)
{
  v21 = a1;
  v20 = a3;
  v19 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x20000000;
  v17 = 32;
  v18 = 0;
  v3 = *(a1 + 144);
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __DisplayGetRestrictionFactorForNits_block_invoke;
  v10 = &unk_1E867CA40;
  v11 = &v14;
  v13 = a2 & 1;
  v12 = v21;
  disp_dispatch_sync(v3, &v6);
  v5 = v20 / v15[6];
  _Block_object_dispose(&v14, 8);
  return v5;
}

float __DisplayGetRestrictionFactorForNits_block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(*(a1 + 40) + 1320);
  }

  else
  {
    v2 = *(*(a1 + 40) + 1312);
  }

  result = v2;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  return result;
}

float DisplayGetWeakCap(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  v1 = *(a1 + 144);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __DisplayGetWeakCap_block_invoke;
  v8 = &unk_1E867C928;
  v9 = &v11;
  v10 = v16;
  disp_dispatch_sync(v1, &v4);
  v3 = v12[6];
  _Block_object_dispose(&v11, 8);
  return v3;
}

void __DisplayGetWeakCap_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = *(*(a1 + 40) + 1312);
  if (*(*(a1 + 40) + 524) < *(*(a1 + 40) + 1312))
  {
    *(*(*(a1 + 32) + 8) + 24) = _DisplayPerceptualLuminanceToLuminanceInternal(*(a1 + 40), *(*(a1 + 40) + 608));
  }
}

void DisplayUpdateWeakCapOnSignificantAmbientChange(uint64_t a1)
{
  v8 = a1;
  v1 = *(a1 + 144);
  v2 = MEMORY[0x1E69E9820];
  v3 = -1073741824;
  v4 = 0;
  v5 = __DisplayUpdateWeakCapOnSignificantAmbientChange_block_invoke;
  v6 = &__block_descriptor_40_e5_v8__0l;
  v7 = v8;
  disp_dispatch_sync(v1, &v2);
}

void _DisplayUpdateWeakCapOnSignificantAmbientChange(float *a1)
{
  v8 = a1;
  if (a1[131] < a1[328] && v8[132] > v8[131])
  {
    if (_logHandle)
    {
      v4 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v4 = inited;
    }

    v7 = v4;
    v6 = 2;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      log = v7;
      type = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_debug_impl(&dword_1DE8E5000, log, type, "Display: Resetting weak cap on significant ambient change", v5, 2u);
    }

    _DisplaySetBrightnessWeakCapWithFade(v8, 0, v8[131], 10.0);
  }
}

float __DisplayGetUpdateFrequency(uint64_t a1, float a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = fminf(fmaxf(fabsf(a2), 1.0), 20.0);
  v8 = ((v10 - 1.0) / 20.0) * 95.0;
  v7 = v8;
  if (v8 == 95.0)
  {
    v9 = __DisplayNitsPerSecondToUpdateFrequency[v8];
  }

  else
  {
    v9 = __interpolate(v7, __DisplayNitsPerSecondToUpdateFrequency[v7], (v7 + 1), __DisplayNitsPerSecondToUpdateFrequency[v7 + 1], v8);
  }

  if (*(a1 + 321) & 1) == 0 && (CBU_ForceUpdateFrequencyAndFrameSkip())
  {
    if (v9 > 30.0)
    {
      v9 = 60.0;
    }

    else
    {
      v9 = 30.0;
    }
  }

  if (_logHandle)
  {
    v6 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v6 = inited;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_4_8_0_8_0_4_0_4_0(v12, COERCE__INT64(v10), COERCE__INT64(v9), v7, 96);
    _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "rate: %0.2f nits/s %0.2fhz         [%u/%u]", v12, 0x22u);
  }

  if (*(a1 + 384) == 0.0)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = *(a1 + 384);
  }

  if (*(a1 + 388) == 0.0)
  {
    v3 = 80.0;
  }

  else
  {
    v3 = *(a1 + 388);
  }

  return fminf(fmaxf(v9, v4), v3);
}

void _DisplayScheduleAsync(uint64_t a1)
{
  v8 = a1;
  v1 = *(a1 + 144);
  v2 = MEMORY[0x1E69E9820];
  v3 = -1073741824;
  v4 = 0;
  v5 = ___DisplayScheduleAsync_block_invoke;
  v6 = &__block_descriptor_40_e5_v8__0l;
  v7 = v8;
  disp_dispatch_sync(v1, &v2);
}

void _DisplayUnscheduleAsync(uint64_t a1)
{
  v8 = a1;
  v1 = *(a1 + 144);
  v2 = MEMORY[0x1E69E9820];
  v3 = -1073741824;
  v4 = 0;
  v5 = ___DisplayUnscheduleAsync_block_invoke;
  v6 = &__block_descriptor_40_e5_v8__0l;
  v7 = v8;
  disp_dispatch_sync(v1, &v2);
}

uint64_t DisplayGetBrightnessOverride(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 1504))
  {
    if (a2)
    {
      *a2 = *(a1 + 1524);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void DisplayAccessoryInitializeBrightnessOverrides(uint64_t a1)
{
  v6 = a1;
  CFPreferencesAppSynchronize(@"com.apple.CoreBrightness");
  v1 = @"DisplayTypeAOverride";
  if (!*(v6 + 308))
  {
    v1 = @"DisplayTypeBOverride";
  }

  v5 = v1;
  cf = CFPreferencesCopyAppValue(v1, @"com.apple.CoreBrightness");
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 == CFNumberGetTypeID())
    {
      valuePtr = -1.0;
      CFNumberGetValue(cf, kCFNumberFloatType, &valuePtr);
      *(v6 + 316) = valuePtr;
    }

    CFRelease(cf);
  }
}

void DisplaySetLogicalBrightnessWithFade(uint64_t a1, int a2, uint64_t a3, uint64_t a4, float a5, float a6)
{
  v23 = a1;
  v22 = a5;
  v21 = a2;
  v20 = a6;
  v19 = a3;
  v18 = a4;
  v6 = *(a1 + 144);
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __DisplaySetLogicalBrightnessWithFade_block_invoke;
  v11 = &__block_descriptor_68_e5_v8__0l;
  v12 = v23;
  v15 = a5;
  v16 = a2;
  v17 = a6;
  v13 = a3;
  v14 = a4;
  disp_dispatch_sync(v6, &v7);
}

void _DisplaySetVirtualBrightnessWithFade(uint64_t a1, unsigned int a2, void (*a3)(uint64_t), uint64_t a4, float a5, float a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 380))
  {
    a6 = *(a1 + 376);
  }

  *(a1 + 1492) = a5;
  *(a1 + 1440) = a6;
  if (_logHandle)
  {
    v10 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v10 = inited;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_8_0_8_0(v17, COERCE__INT64(a5), COERCE__INT64(a6));
    _os_log_debug_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEBUG, "L=%f fadePeriod=%f\n", v17, 0x16u);
  }

  if (a6 == 0.0 || a5 == 0.0)
  {
    v8 = 0;
    if (*(a1 + 1384) != 0.0)
    {
      v8 = 0;
      if (*(a1 + 1400) > 0.0)
      {
        v8 = *(a1 + 1400) < 1.0;
      }
    }

    v7 = 0;
    if (*(a1 + 1384) == 0.0)
    {
      v7 = 0;
      if (*(a1 + 348) > 0.0)
      {
        v7 = *(a1 + 348) < 1.0;
      }
    }

    if (v8 || v7)
    {
      *(a1 + 1488) = a5;
    }

    else
    {
      __DisplaySetVirtualBrightnessWithFadeInternal(a1, a5, 0.0, a2 | 0x1000, 0, 0);
    }

    if (a3)
    {
      a3(a4);
    }
  }

  else if (a2 & 0x10) != 0 && (_DisplayRampIsRunning(a1))
  {
    *(a1 + 1456) = _DisplayLuminanceToPerceptualLuminanceInternal(a1, *(a1 + 1492));
  }

  else
  {
    v6 = *(a1 + 1440);
    __DisplaySetVirtualBrightnessWithFadeInternal(a1, *(a1 + 1492), v6, a2, a3, a4);
  }
}

uint64_t __os_log_helper_16_0_5_8_0_8_0_4_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *result = 0;
  *(result + 1) = 5;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 0;
  *(result + 39) = 8;
  *(result + 40) = a6;
  return result;
}

void DisplayCancelBrightnessFade(uint64_t a1)
{
  v8 = a1;
  v1 = *(a1 + 144);
  v2 = MEMORY[0x1E69E9820];
  v3 = -1073741824;
  v4 = 0;
  v5 = __DisplayCancelBrightnessFade_block_invoke;
  v6 = &__block_descriptor_40_e5_v8__0l;
  v7 = v8;
  disp_dispatch_sync(v1, &v2);
}

double __DisplayCancelBrightnessFade_block_invoke(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  if (_DisplayRampIsRunning(*(a1 + 32)))
  {
    if (_logHandle)
    {
      v5 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v5 = inited;
    }

    v9 = v5;
    v8 = 2;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_debug_impl(&dword_1DE8E5000, log, type, "cancel ramp", v7, 2u);
    }

    *(*(a1 + 32) + 1252) = *(*(a1 + 32) + 1256);
    __DisplaySetLogicalBrightnessWithFadeInternal(*(a1 + 32), *(*(a1 + 32) + 1328) | 0x1000, 0, 0, *(*(a1 + 32) + 1256), 0.0);
    if (*(*(a1 + 32) + 1368))
    {
      (*(*(a1 + 32) + 1368))(*(*(a1 + 32) + 1376));
    }

    result = 0.0;
    *(*(a1 + 32) + 1336) = 0;
  }

  return result;
}

void __DisplayUpdateAAPFactor(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 12248) & 1) != 0 && !*(a1 + 40))
  {
    v5 = *(a1 + 1572);
    if (v5 <= 0.0)
    {
      v4 = 200.0;
    }

    else
    {
      v4 = *(a1 + 1256) / v5;
    }

    if ((v4 * 0.005) > 1.0)
    {
      v4 = 200.0;
    }

    v3 = (powf(v4 * 0.005, -0.45) - 1.0) / 5.0;
    if (_logHandle)
    {
      v2 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v2 = inited;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v7, COERCE__INT64(*(a1 + 1256)), COERCE__INT64(v5), COERCE__INT64(v4), COERCE__INT64(v3));
      _os_log_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_DEFAULT, "Lcurrent=%0.4f Lr=%0.4f DR=%0.4f factor=%0.4f\n", v7, 0x2Au);
    }

    __DisplaySetAAPFactor(a1, v3);
  }
}

void __DisplaySetReflectedBrightnessWithFade_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 12248))
  {
    v13 = 0.0;
    *(*(a1 + 32) + 1576) = *(a1 + 56);
    *(*(a1 + 32) + 1568) = *(a1 + 60);
    if (_logHandle)
    {
      v9 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v9 = inited;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_2_8_0_8_0(v17, COERCE__INT64(*(a1 + 60)), COERCE__INT64(*(a1 + 56)));
      _os_log_debug_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEBUG, "reflected=%f fadePeriod=%f\n", v17, 0x16u);
    }

    if (*(*(a1 + 32) + 1576) == 0.0)
    {
      *(*(a1 + 32) + 1572) = *(*(a1 + 32) + 1568);
      if (*(*(a1 + 32) + 1572) == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = _DisplayReflectedLuminanceToPerceptualLuminanceInternal(*(a1 + 32), *(*(a1 + 32) + 1572));
      }

      *(*(a1 + 32) + 1600) = v12;
      *(*(a1 + 32) + 1592) = v12;
      *(*(a1 + 32) + 1596) = v12;
      if ((*(*(a1 + 32) + 12282) & 1) == 0)
      {
        __DisplayUpdateAAPFactor(*(a1 + 32));
      }

      if (*(a1 + 40))
      {
        (*(a1 + 40))(*(a1 + 48));
      }
    }

    else if (*(*(a1 + 32) + 1572) != *(*(a1 + 32) + 1568))
    {
      *(*(a1 + 32) + 1608) = *(a1 + 40);
      *(*(a1 + 32) + 1616) = *(a1 + 48);
      *(*(a1 + 32) + 1584) = CFAbsoluteTimeGetCurrent();
      v13 = *(*(a1 + 32) + 12488);
      if (v13 == 0.0)
      {
        v13 = 0.100000001;
      }

      if (_logHandle)
      {
        v7 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v6 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v6 = init_default_corebrightness_log();
        }

        v7 = v6;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v16, COERCE__INT64(*(*(a1 + 32) + 1572)), COERCE__INT64(*(*(a1 + 32) + 1568)), COERCE__INT64(*(a1 + 56)), COERCE__INT64(1.0 / v13));
        _os_log_debug_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEBUG, "begin ramp Lr: %0.2f -> Lr: %0.2f t: %f %0.2fhz", v16, 0x2Au);
      }

      if (_logHandle)
      {
        v5 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v4 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v4 = init_default_corebrightness_log();
        }

        v5 = v4;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v15, *(*(a1 + 32) + 1576), *(*(a1 + 32) + 1584), *(*(a1 + 32) + 12480), *&v13);
        _os_log_debug_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEBUG, "fadePeriod=%f startTime=%f display->fade.timer=%p interval=%f\n", v15, 0x2Au);
      }

      if (*(*(a1 + 32) + 1572) == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = _DisplayReflectedLuminanceToPerceptualLuminanceInternal(*(a1 + 32), *(*(a1 + 32) + 1572));
      }

      *(*(a1 + 32) + 1600) = v11;
      *(*(a1 + 32) + 1596) = v11;
      *(*(a1 + 32) + 1592) = _DisplayReflectedLuminanceToPerceptualLuminanceInternal(*(a1 + 32), fmaxf(*(*(a1 + 32) + 1568), 0.01));
      HIDWORD(v1) = HIDWORD(v13);
      *&v1 = v13;
      __DisplayStartFadeWithType(*(a1 + 32), 4, v1);
    }

    if (_logHandle)
    {
      v3 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v2 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v2 = init_default_corebrightness_log();
      }

      v3 = v2;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_6_8_32_8_0_8_0_8_0_8_0_8_0(v14, "Reflected Brightness", COERCE__INT64(*(*(a1 + 32) + 1600)), COERCE__INT64(*(*(a1 + 32) + 1592)), *(*(a1 + 32) + 1576), *&v13, COERCE__INT64(*(*(a1 + 32) + 1568)));
      _os_log_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: %f -> %f t: %f interval: %0.2f L_reflected: %f", v14, 0x3Eu);
    }
  }
}

void DisplayCancelReflectedBrightnessFade(uint64_t a1)
{
  v8 = a1;
  v1 = *(a1 + 144);
  v2 = MEMORY[0x1E69E9820];
  v3 = -1073741824;
  v4 = 0;
  v5 = __DisplayCancelReflectedBrightnessFade_block_invoke;
  v6 = &__block_descriptor_40_e5_v8__0l;
  v7 = v8;
  disp_dispatch_sync(v1, &v2);
}

void __DisplayFadeUpdateAuroraFactorFade(uint64_t a1, uint64_t a2, double a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = a3 - *(a2 + 8);
  v14 = v15 / *a2;
  if (*(a2 + 20) == *(a2 + 16))
  {
    v14 = 1.0;
  }

  if (v14 >= 1.0)
  {
    *(a2 + 20) = *(a2 + 16);
    if (_logHandle)
    {
      v8 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v8 = inited;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_6_8_0_8_0_8_0_8_0_8_0_8_0(v19, *&a3, *&v15, *a2, *&v14, COERCE__INT64(*(a2 + 24)), COERCE__INT64(*(a2 + 16)));
      _os_log_debug_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEBUG, "now=%f delta=%f fade->period=%f portion=%f fade->Fstart=%f fade->Ftarget=%f [finished]\n", v19, 0x3Eu);
    }

    if (*(a2 + 40))
    {
      (*(a2 + 40))(*(a2 + 48));
    }

    HIDWORD(v4) = 0;
    *a2 = 0;
  }

  else
  {
    v13 = 2.0;
    v12 = *(a1 + 13028);
    if (*(a2 + 24) > *(a2 + 16))
    {
      v13 = 1.0 / 2.0;
      v12 = *(a1 + 13032);
    }

    v3 = v14 * (fabsf(log2f(*(a2 + 16) / *(a2 + 24))) * v12);
    v11 = *(a2 + 24);
    *(a2 + 20) = v11 * powf(v13, v3 / v12);
    if (_logHandle)
    {
      v10 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v9 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v9 = init_default_corebrightness_log();
      }

      v10 = v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_7_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v20, *&a3, *&v15, *a2, *&v14, COERCE__INT64(*(a2 + 24)), COERCE__INT64(*(a2 + 16)), COERCE__INT64(*(a2 + 20)));
      _os_log_debug_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEBUG, "now=%f delta=%f fade->period=%f portion=%f fade->Fstart=%f fade->Ftarget=%f Factor=%f\n", v20, 0x48u);
    }
  }

  if (*(a1 + 16))
  {
    LODWORD(v4) = *(a2 + 20);
    (*(a1 + 16))(*(a1 + 24), @"AuroraFactor", [MEMORY[0x1E696AD98] numberWithFloat:v4]);
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    if (*(a1 + 12960) <= 0.0)
    {
      v5(v6, @"AuroraRampInProgress", *MEMORY[0x1E695E4C0]);
    }

    else
    {
      v5(v6, @"AuroraRampInProgress", *MEMORY[0x1E695E4D0]);
    }
  }
}

void DisplayCancelRestrictionFactorFade(uint64_t a1, int a2)
{
  v11 = a1;
  v10 = a2;
  v2 = *(a1 + 144);
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __DisplayCancelRestrictionFactorFade_block_invoke;
  v7 = &__block_descriptor_44_e5_v8__0l;
  v8 = v11;
  v9 = a2;
  disp_dispatch_sync(v2, &v3);
}

uint64_t __DisplayCancelRestrictionFactorFade_block_invoke(uint64_t a1)
{
  v20 = a1;
  v19 = a1;
  result = _DisplayRampIsRunning(*(a1 + 32));
  if (result)
  {
    v18 = (*(a1 + 32) + 1064);
    if (__DisplayFactorFade_IsRunning(v18) && (!*(a1 + 40) || __DisplayFactorFade_Direction(v18) == *(a1 + 40)))
    {
      if (_logHandle)
      {
        v9 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        v9 = inited;
      }

      v17 = v9;
      v16 = 2;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        log = v17;
        type = v16;
        __os_log_helper_16_0_0(v15);
        _os_log_debug_impl(&dword_1DE8E5000, log, type, "Cancelling right restiction factor ramp", v15, 2u);
      }

      *(*(a1 + 32) + 1056) = *(v18 + 5);
      __DisplayFactorFade_Cancel(v18);
    }

    v14 = (*(a1 + 32) + 992);
    result = __DisplayFactorFade_IsRunning(v14);
    if (result)
    {
      if (!*(a1 + 40) || (result = __DisplayFactorFade_Direction(v14), result == *(a1 + 40)))
      {
        if (_logHandle)
        {
          v5 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v4 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v4 = init_default_corebrightness_log();
          }

          v5 = v4;
        }

        v13 = v5;
        v12 = 2;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v2 = v13;
          v3 = v12;
          __os_log_helper_16_0_0(v11);
          _os_log_debug_impl(&dword_1DE8E5000, v2, v3, "Cancelling left restriction factor ramp", v11, 2u);
        }

        *(*(a1 + 32) + 984) = *(v14 + 5);
        return __DisplayFactorFade_Cancel(v14);
      }
    }
  }

  return result;
}

uint64_t __DisplayFactorFade_Direction(uint64_t a1)
{
  if (__DisplayFactorFade_IsRunning(a1))
  {
    if (*(a1 + 16) <= *(a1 + 24))
    {
      return *(a1 + 16) < *(a1 + 24);
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t __DisplayFactorFade_Cancel(uint64_t a1)
{
  if (__DisplayFactorFade_IsRunning(a1))
  {
    *(a1 + 16) = *(a1 + 20);
    *a1 = 0;
    if (*(a1 + 40))
    {
      (*(a1 + 40))(*(a1 + 48));
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void DisplayCancelVirtualFade(uint64_t a1)
{
  v8 = a1;
  v1 = *(a1 + 144);
  v2 = MEMORY[0x1E69E9820];
  v3 = -1073741824;
  v4 = 0;
  v5 = __DisplayCancelVirtualFade_block_invoke;
  v6 = &__block_descriptor_40_e5_v8__0l;
  v7 = v8;
  disp_dispatch_sync(v1, &v2);
  DisplayCancelBrightnessFade(v8);
}

double __DisplayCancelVirtualFade_block_invoke(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  if (_DisplayRampIsRunning(*(a1 + 32)))
  {
    if (_logHandle)
    {
      v5 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v5 = inited;
    }

    v9 = v5;
    v8 = 2;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_debug_impl(&dword_1DE8E5000, log, type, "cancel ramp", v7, 2u);
    }

    *(*(a1 + 32) + 1492) = *(*(a1 + 32) + 1488);
    __DisplaySetVirtualBrightnessWithFadeInternal(*(a1 + 32), *(*(a1 + 32) + 1488), 0.0, 0, 0, 0);
    if (*(*(a1 + 32) + 1472))
    {
      (*(*(a1 + 32) + 1472))(*(*(a1 + 32) + 1480));
    }

    result = 0.0;
    *(*(a1 + 32) + 1440) = 0;
  }

  return result;
}

void __DisplaySetVirtualBrightnessWithFadeInternal(uint64_t a1, float a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 380))
  {
    a3 = *(a1 + 376);
  }

  v13 = 0.0;
  UpdateFrequency = 0.0;
  if (a3 == 0.0)
  {
    v6 = _DisplayLuminanceToPerceptualLuminanceInternal(a1, *(a1 + 1488));
    *(a1 + 1440) = 0;
    *(a1 + 1460) = v6;
    *(a1 + 1464) = v6;
    *(a1 + 1456) = v6;
    __DisplaySetLogicalBrightnessInternal(a1, 0x2000u, *(a1 + 1256));
  }

  else
  {
    *(a1 + 1472) = a5;
    *(a1 + 1480) = a6;
    *(a1 + 1448) = CFAbsoluteTimeGetCurrent();
    *(a1 + 1440) = a3;
    if (_logHandle)
    {
      v11 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v11 = inited;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v18, *(a1 + 1440), *(a1 + 1448), *(a1 + 12480));
      _os_log_debug_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_DEBUG, "fadePeriod=%f startTime=%f display->fade.timer=%p\n", v18, 0x20u);
    }

    v13 = (a2 - *(a1 + 1488)) / a3;
    UpdateFrequency = __DisplayGetUpdateFrequency(a1, v13);
    *(a1 + 1460) = _DisplayLuminanceToPerceptualLuminanceInternal(a1, *(a1 + 1488));
    *(a1 + 1464) = *(a1 + 1460);
    *(a1 + 1456) = _DisplayLuminanceToPerceptualLuminanceInternal(a1, a2);
    *&v7 = 1.0 / UpdateFrequency;
    __DisplayStartFadeWithType(a1, 2, v7);
  }

  if (_logHandle)
  {
    v9 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v8 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v8 = init_default_corebrightness_log();
    }

    v9 = v8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_8_8_32_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v17, "Virtual Brightness", COERCE__INT64(*(a1 + 1488)), COERCE__INT64(a2), COERCE__INT64(*(a1 + 1464)), COERCE__INT64(*(a1 + 1456)), *(a1 + 1440), COERCE__INT64(v13), COERCE__INT64(UpdateFrequency));
    _os_log_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: L: %0.2f -> %0.2f P: %0.2f -> %0.2f t: %f rate: %0.2f nits/s %0.2fhz", v17, 0x52u);
  }
}

void __BLPropertyChangedCallback(uint64_t a1, const void *a2, uint64_t a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  if (a2)
  {
    if (CFEqual(v13, @"brightness-nits"))
    {
      v3 = *(v14 + 144);
      v4 = MEMORY[0x1E69E9820];
      v5 = -1073741824;
      v6 = 0;
      v7 = ____BLPropertyChangedCallback_block_invoke;
      v8 = &__block_descriptor_56_e5_v8__0l;
      v9 = v14;
      v10 = v13;
      v11 = v12;
      dispatch_async(v3, &v4);
    }
  }
}

void *__DisplayHasDCP_block_invoke(uint64_t a1)
{
  v4 = a1;
  v3 = a1;
  v2 = 0;
  result = [*(*(a1 + 32) + 13040) loadUint:@"dcp-brightness-node" toDestination:&v2];
  if (result)
  {
    DisplayHasDCP_hasDCP = v2 != 0;
  }

  return result;
}

uint64_t __DisplayGetAPLColumn_block_invoke(uint64_t a1)
{
  v5 = a1;
  v4 = a1;
  v3 = 0;
  v2 = IORegistryEntrySearchCFProperty(*(*(a1 + 32) + 108), "IOService", @"cpms-apl-column", *MEMORY[0x1E695E480], 3u);
  result = _DisplayGetUint32FromCFDataAndRelease(v2, &v3);
  if (result)
  {
    DisplayGetAPLColumn_column = v3;
  }

  return result;
}

uint64_t __DisplayGetHDRAPLColumn_block_invoke(uint64_t a1)
{
  v5 = a1;
  v4 = a1;
  v3 = 0;
  v2 = IORegistryEntrySearchCFProperty(*(*(a1 + 32) + 108), "IOService", @"cpms-hdr-apl-column", *MEMORY[0x1E695E480], 3u);
  result = _DisplayGetUint32FromCFDataAndRelease(v2, &v3);
  if (result)
  {
    DisplayGetHDRAPLColumn_hdrColumn = v3;
  }

  return result;
}

void DisplaySetSliderScaler(uint64_t a1, float a2)
{
  v11 = a1;
  v10 = a2;
  v2 = *(a1 + 144);
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __DisplaySetSliderScaler_block_invoke;
  v7 = &__block_descriptor_44_e5_v8__0l;
  v8 = v11;
  v9 = a2;
  disp_dispatch_sync(v2, &v3);
}

uint64_t __DisplaySetSliderScaler_block_invoke(uint64_t a1)
{
  v1 = clamp(*(a1 + 40), 0.0, 1.0);
  result = a1;
  *(*(a1 + 32) + 12728) = v1;
  return result;
}

void __DisplayRelease(uint64_t a1)
{
  v9 = a1;
  v8 = a1;
  if ([MEMORY[0x1E6991F30] isCPMSSupported] == 1)
  {
    if (*(v8 + 12128))
    {
      CFRelease(*(v8 + 12128));
      *(v8 + 12128) = 0;
    }

    if (*(v8 + 12136))
    {
      CFRelease(*(v8 + 12136));
      *(v8 + 12136) = 0;
    }

    if (*(v8 + 12144))
    {
      CFRelease(*(v8 + 12144));
      *(v8 + 12144) = 0;
    }

    if (*(v8 + 12152))
    {
      CFRelease(*(v8 + 12152));
      *(v8 + 12152) = 0;
    }

    if (*(v8 + 12160))
    {
      CFRelease(*(v8 + 12160));
      *(v8 + 12160) = 0;
    }

    if (*(v8 + 12168))
    {
      CFRelease(*(v8 + 12168));
      *(v8 + 12168) = 0;
    }

    if (*(v8 + 12112))
    {
      dispatch_release(*(v8 + 12112));
      *(v8 + 12112) = 0;
    }
  }

  if (*(v8 + 72))
  {
    free(*(v8 + 72));
    *(v8 + 72) = 0;
    *(v8 + 64) = 0;
  }

  if (*(v8 + 144))
  {
    v1 = *(v8 + 144);
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = ____DisplayRelease_block_invoke;
    v6 = &__block_descriptor_40_e5_v8__0l;
    v7 = v8;
    disp_dispatch_sync(v1, &v2);
  }

  if (*(v8 + 120))
  {
    dispatch_release(*(v8 + 120));
    *(v8 + 120) = 0;
  }

  if (*(v8 + 144))
  {
    dispatch_release(*(v8 + 144));
    *(v8 + 144) = 0;
  }

  if (*(v8 + 168))
  {
    dispatch_release(*(v8 + 168));
    *(v8 + 168) = 0;
  }

  if (*(v8 + 152))
  {
    dispatch_release(*(v8 + 152));
    *(v8 + 152) = 0;
  }

  if (*(v8 + 12536))
  {
    CFRelease(*(v8 + 12536));
  }

  if (*(v8 + 12720))
  {
    CFRelease(*(v8 + 12720));
  }

  CBEDRServerRemoveDisplay(*(v8 + 12592));
  *(v8 + 12596) = 0;
  if (*(v8 + 328))
  {
    MEMORY[0x1E69E5920](*(v8 + 328));
    *(v8 + 328) = 0;
  }

  if (*(v8 + 264))
  {
    MEMORY[0x1E69E5920](*(v8 + 264));
    *(v8 + 264) = 0;
  }

  if (*(v8 + 13040))
  {
    MEMORY[0x1E69E5920](*(v8 + 13040));
    *(v8 + 13040) = 0;
  }
}

uint64_t brightnessThread(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v12 = 0;
  memset(__b, 0, sizeof(__b));
  while (1)
  {
    __b[0].msgh_size = 72;
    __b[0].msgh_local_port = __brightnessPort;
    v12 = mach_msg_receive(__b);
    if (v12)
    {
      break;
    }

    memcpy(msg, __b, sizeof(msg));
    while (1)
    {
      v3 = 0;
      if ((__b[2].msgh_remote_port & 4) == 0)
      {
        v3 = 0;
        if (*&__b[1].msgh_voucher_port == 0.0)
        {
          v3 = mach_msg(msg, 258, 0, 0x48u, __brightnessPort, 0, 0) == 0;
        }
      }

      if (!v3)
      {
        break;
      }

      memcpy(__b, msg, sizeof(__b));
    }

    __DisplaySetPhysicalBrightnessLegacyOnThread(*&__b[1].msgh_bits, *&__b[2].msgh_bits, __b[2].msgh_remote_port, *&__b[1].msgh_remote_port, *&__b[1].msgh_voucher_port);
    if (*&__b[1].msgh_voucher_port != 0.0 && *&__b[1].msgh_remote_port != 0.0)
    {
      usleep((*&__b[1].msgh_voucher_port * 1000000.0));
    }
  }

  if (_logHandle)
  {
    v7 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v7 = inited;
  }

  v10 = v7;
  v9 = 16;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    log = v10;
    type = v9;
    v1 = mach_error_string(v12);
    __os_log_helper_16_2_1_8_34(v14, v1);
    _os_log_error_impl(&dword_1DE8E5000, log, type, "brightnessThread: mach_msg_receive() failed: %{public}s\n", v14, 0xCu);
  }

  return v13;
}

uint64_t __os_log_helper_16_2_1_8_34(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void __DisplaySetPhysicalBrightnessLegacyOnThread(float *a1, unint64_t a2, int a3, float a4, double a5)
{
  v46 = *MEMORY[0x1E69E9840];
  v39 = a1;
  v38 = a4;
  v37 = a5;
  v36 = a2;
  v35 = a3;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  valuePtr = 0;
  v33 = 0;
  v32 = 0;
  v31 = a4;
  pthread_mutex_lock(&__brightnessLock);
  if (_logHandle)
  {
    v21 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v21 = inited;
  }

  v30 = v21;
  v29 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_8_0_8_0(v42, v36, __brightnessTS);
    _os_log_debug_impl(&dword_1DE8E5000, v30, v29, "timeStamp=%lld __brightnessTS=%lld\n", v42, 0x16u);
  }

  if (v36 > __brightnessTS)
  {
    __brightnessTS = v36;
    v31 = v31 * v39[87];
    if (v39[87] != 0.0)
    {
      if (v31 >= v39[85])
      {
        if (v31 > v39[86])
        {
          v31 = v39[86];
        }
      }

      else
      {
        v31 = v39[85];
      }
    }

    valuePtr = (ceil((v31 * (*(v39 + 310) - *(v39 + 309)))) + *(v39 + 309));
    if (valuePtr != *(v39 + 311))
    {
      v5 = CFGetAllocator(v39);
      v43 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
      if (v43)
      {
        v32 = (v37 * 65536.0);
        v6 = CFGetAllocator(v39);
        v44 = CFNumberCreate(v6, kCFNumberSInt32Type, &v32);
        if (v44)
        {
          CFDictionarySetValue(__brightnessDict, __brightnessKeys, v43);
          CFDictionarySetValue(__brightnessDict, off_1ECDB7D10[0], v44);
          if ((v35 & 2) != 0)
          {
            CFDictionaryRemoveValue(__brightnessDict, off_1ECDB7D18);
          }

          else
          {
            v33 = (ceil((v39[84] * (*(v39 + 310) - *(v39 + 309)))) + *(v39 + 309));
            v7 = CFGetAllocator(v39);
            v45 = CFNumberCreate(v7, kCFNumberSInt32Type, &v33);
            if (!v45)
            {
              goto LABEL_61;
            }

            CFDictionarySetValue(__brightnessDict, off_1ECDB7D18, v45);
          }

          if (!IORegistryEntrySetCFProperties(*(v39 + 20), __brightnessDict))
          {
            if (valuePtr || !*(v39 + 311))
            {
              if (valuePtr && !*(v39 + 311))
              {
                if (_logHandle)
                {
                  v15 = _logHandle;
                }

                else
                {
                  v14 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
                  v15 = v14;
                }

                oslog = v15;
                v23 = OS_LOG_TYPE_DEFAULT;
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  v12 = oslog;
                  v13 = v23;
                  __os_log_helper_16_0_0(v22);
                  _os_log_impl(&dword_1DE8E5000, v12, v13, "Brightness ON.\n", v22, 2u);
                }
              }
            }

            else
            {
              if (_logHandle)
              {
                v19 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v18 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v18 = init_default_corebrightness_log();
                }

                v19 = v18;
              }

              v27 = v19;
              v26 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                v16 = v27;
                v17 = v26;
                __os_log_helper_16_0_0(v25);
                _os_log_impl(&dword_1DE8E5000, v16, v17, "Brightness OFF.\n", v25, 2u);
              }
            }

            *(v39 + 311) = valuePtr;
            if (_logHandle)
            {
              v11 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v10 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v10 = init_default_corebrightness_log();
              }

              v11 = v10;
            }

            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_0_5_8_0_8_0_4_0_8_0_4_0(v41, COERCE__INT64(v31), COERCE__INT64(v39[87]), valuePtr, *&v37, v32);
              _os_log_debug_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_DEBUG, "brightness=%f factor=%f deviceBrightness=%d fadePeriod=%f fixedFadePeriod=0x%08x\n", v41, 0x2Cu);
            }

            if (v39[86] < 1.0)
            {
              if (_logHandle)
              {
                v9 = _logHandle;
              }

              else
              {
                v8 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
                v9 = v8;
              }

              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
              {
                __os_log_helper_16_0_2_8_0_8_0(v40, COERCE__INT64(v31), COERCE__INT64(v39[86]));
                _os_log_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEFAULT, "Device brightness %f based on max brightness of %f\n", v40, 0x16u);
              }
            }
          }
        }
      }
    }
  }

LABEL_61:
  pthread_mutex_unlock(&__brightnessLock);
  if (v43)
  {
    CFRelease(v43);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v45)
  {
    CFRelease(v45);
  }
}

uint64_t __os_log_helper_16_0_5_8_0_8_0_4_0_8_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  *result = 0;
  *(result + 1) = 5;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 0;
  *(result + 29) = 8;
  *(result + 30) = a5;
  *(result + 38) = 0;
  *(result + 39) = 4;
  *(result + 40) = a6;
  return result;
}

float _DisplayCalculateGlobalScalar(uint64_t a1, float *a2)
{
  __dst[7] = *MEMORY[0x1E69E9840];
  v11 = 1.0;
  if (a1 && a2)
  {
    v10 = *a2 / a2[2];
    if (v10 > a2[3])
    {
      v2 = 1.0 - (a2[5] * (v10 - a2[3]));
      numValues_4 = v2;
      if ((v2 * a2[1]) < a2[4])
      {
        numValues_4 = a2[4] / a2[1];
      }

      a2[6] = numValues_4;
      v11 = numValues_4;
    }

    memcpy(__dst, &off_1E867CAC8, 0x38uLL);
    memset(__b, 0, sizeof(__b));
    v4 = MEMORY[0x1E695E480];
    __b[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, a2 + 2);
    __b[1] = CFNumberCreate(*v4, kCFNumberFloatType, a2 + 3);
    __b[2] = CFNumberCreate(*v4, kCFNumberFloatType, a2 + 4);
    __b[3] = CFNumberCreate(*v4, kCFNumberFloatType, a2 + 5);
    __b[4] = CFNumberCreate(*v4, kCFNumberFloatType, a2 + 6);
    __b[5] = CFNumberCreate(*v4, kCFNumberFloatType, a2);
    __b[6] = CFNumberCreate(*v4, kCFNumberFloatType, a2 + 1);
    v8 = 1;
    for (i = 0; i < 7; ++i)
    {
      if (!__b[i])
      {
        v8 = 0;
        break;
      }
    }

    if (v8)
    {
      value = CFDictionaryCreate(*MEMORY[0x1E695E480], __dst, __b, 7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (value)
      {
        CFDictionarySetValue(*(a1 + 192), @"BrightnessGlobalScalar", value);
        CFRelease(value);
      }
    }

    for (j = 0; j < 7; ++j)
    {
      if (__b[j])
      {
        CFRelease(__b[j]);
      }
    }
  }

  return v11;
}

void __DisplayResetLogTimer(uint64_t a1, char a2)
{
  if (a2)
  {
    if (*(a1 + 12576))
    {
      dispatch_release(*(a1 + 12576));
      *(a1 + 12576) = 0;
    }
  }

  else if (!*(a1 + 12576))
  {
    *(a1 + 12576) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 144));
    if (*(a1 + 12576))
    {
      dispatch_set_context(*(a1 + 12576), a1);
      dispatch_source_set_timer(*(a1 + 12576), 0, 1000000000 * *(a1 + 12584), 0);
      dispatch_source_set_event_handler_f(*(a1 + 12576), __DisplayLogTimerCallback);
      dispatch_resume(*(a1 + 12576));
      *(a1 + 12568) = 1;
    }
  }
}

void __DisplayLogTimerCallback(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 12568))
    {
      *(a1 + 12568) = 0;
    }

    else
    {
      __DisplayCommitReport(a1, 0);
    }
  }
}

void __SetPreStrobeState_block_invoke(uint64_t a1)
{
  v9 = a1;
  v18 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v15 = a1;
  if (*(*(a1 + 32) + 16))
  {
    v14 = *(*(v9 + 32) + 1520);
    if (*(v9 + 40))
    {
      v14 = 1.0;
    }

    v1 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v2 = v14;
    v13 = [v1 initWithFloat:v2];
    v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v13, @"Scaler", 0}];
    v3 = MEMORY[0x1E69E5920](v13);
    (*(*(v9 + 32) + 16))(*(*(v9 + 32) + 24), @"UpdateDigitalDimmingBrightnessScaler", v12, v3);
    MEMORY[0x1E69E5920](v12);
    if (_logHandle)
    {
      v8 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v8 = inited;
    }

    oslog = v8;
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      log = oslog;
      *v5 = type;
      buf = v17;
      __os_log_helper_16_0_1_8_0(v17, COERCE__INT64(v14));
      _os_log_debug_impl(&dword_1DE8E5000, log, v5[0], "Pre-strobe: setting Scalar=%f\n", buf, 0xCu);
    }
  }
}

void SetWiggledDigitalDimmingScalar(uint64_t a1, float a2)
{
  v11 = a1;
  v10 = a2;
  if (a2 == 1.0)
  {
    SetWiggledDigitalDimmingScalar_direction = -1;
  }

  v2 = *(v11 + 144);
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __SetWiggledDigitalDimmingScalar_block_invoke;
  v7 = &__block_descriptor_44_e5_v8__0l;
  v8 = v11;
  v9 = v10;
  dispatch_async(v2, &block);
}

double __SetBLDriverNitsValue_block_invoke(uint64_t a1)
{
  v5 = a1;
  v10 = a1;
  v9 = a1;
  if (*(*(a1 + 32) + 16))
  {
    v8 = *(v5 + 40) / *(*(v5 + 32) + 1532);
    LODWORD(result) = *(*(v5 + 32) + 1520);
    if (*&result != v8)
    {
      v2 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v3 = v8;
      v7 = [v2 initWithFloat:v3];
      v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"Scaler", 0}];
      v4 = MEMORY[0x1E69E5920](v7);
      (*(*(v5 + 32) + 16))(*(*(v5 + 32) + 24), @"UpdateDigitalDimmingBrightnessScaler", v6, v4);
      *(*(v5 + 32) + 1520) = v8;
      *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
    }
  }

  return result;
}

float __SetBLDriverNitsValue_block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    result = *(*(a1 + 32) + 1520);
    if (result != 1.0)
    {
      v2 = objc_alloc(MEMORY[0x1E696AD98]);
      LODWORD(v3) = 1.0;
      v7 = [v2 initWithFloat:v3];
      v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"Scaler", 0}];
      v4 = MEMORY[0x1E69E5920](v7);
      (*(*(a1 + 32) + 16))(*(*(a1 + 32) + 24), @"UpdateDigitalDimmingBrightnessScaler", v6, v4);
      MEMORY[0x1E69E5920](v6);
      result = 1.0;
      *(*(a1 + 32) + 1520) = 1.0;
    }
  }

  return result;
}

float __SetBLDriverNitsValue_block_invoke_3(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    result = *(*(a1 + 32) + 1520);
    if (result != 1.0)
    {
      v2 = objc_alloc(MEMORY[0x1E696AD98]);
      LODWORD(v3) = 1.0;
      v7 = [v2 initWithFloat:v3];
      v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"Scaler", 0}];
      v4 = MEMORY[0x1E69E5920](v7);
      (*(*(a1 + 32) + 16))(*(*(a1 + 32) + 24), @"UpdateDigitalDimmingBrightnessScaler", v6, v4);
      MEMORY[0x1E69E5920](v6);
      result = 1.0;
      *(*(a1 + 32) + 1520) = 1.0;
    }
  }

  return result;
}

double __SetBLDriverNitsValue_block_invoke_4(uint64_t a1, double result)
{
  v5 = a1;
  v10 = a1;
  v9 = a1;
  if (*(*(a1 + 32) + 16))
  {
    v2 = 1.0;
    if (*(*(v5 + 32) + 1520) != 1.0)
    {
      v2 = 1.0;
    }

    v8 = v2;
    v3 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v4 = v8;
    v7 = [v3 initWithFloat:v4];
    v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"Scaler", 0}];
    (*(*(v5 + 32) + 16))(*(*(v5 + 32) + 24), @"UpdateDigitalDimmingBrightnessScaler", v6);
    *(*(v5 + 32) + 1520) = v8;
    MEMORY[0x1E69E5920](v7);
    *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  }

  return result;
}

double __SetWiggledDigitalDimmingScalar_block_invoke(uint64_t a1)
{
  v4 = a1;
  v9 = a1;
  v8 = a1;
  if (*(*(a1 + 32) + 16))
  {
    v7 = *(v4 + 40);
    if (v7 == *(*(v4 + 32) + 1520))
    {
      v7 = v7 + (0.000001 * SetWiggledDigitalDimmingScalar_direction);
      SetWiggledDigitalDimmingScalar_direction = -SetWiggledDigitalDimmingScalar_direction;
    }

    v1 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v2 = v7;
    v6 = [v1 initWithFloat:v2];
    v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v6, @"Scaler", 0}];
    (*(*(v4 + 32) + 16))(*(*(v4 + 32) + 24), @"UpdateDigitalDimmingBrightnessScaler", v5);
    *(*(v4 + 32) + 1520) = v7;
    MEMORY[0x1E69E5920](v6);
    *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  }

  return result;
}

void __DisplaySetPhysicalBrightnessLegacy(float *a1, mach_port_t a2, float a3, double a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = a1;
  v20 = a3;
  v19 = a4;
  v18 = a2;
  v17 = mach_absolute_time();
  if (_logHandle)
  {
    v12 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v12 = inited;
  }

  v16 = v12;
  v15 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_8_0_8_0(v25, COERCE__INT64(v20), *&v19);
    _os_log_debug_impl(&dword_1DE8E5000, v16, v15, "brightness=%f fadePeriod=%lf\n", v25, 0x16u);
  }

  if (v18)
  {
    if (_logHandle)
    {
      v6 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v5 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v5 = init_default_corebrightness_log();
      }

      v6 = v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v22, v17);
      _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "Calling __DisplaySetPhysicalBrightnessLegacyOnThread directly at ts=%lld\n", v22, 0xCu);
    }

    __DisplaySetPhysicalBrightnessLegacyOnThread(v21, v17, v18, v20, v19);
  }

  else
  {
    v14 = 0;
    memset(__b, 0, sizeof(__b));
    __b[0].msgh_bits = 19;
    __b[0].msgh_size = 64;
    __b[0].msgh_remote_port = __brightnessPort;
    __b[0].msgh_local_port = 0;
    __b[0].msgh_id = 1112688980;
    *&__b[1].msgh_bits = v21;
    *&__b[1].msgh_remote_port = v20;
    *&__b[1].msgh_voucher_port = v19;
    *&__b[2].msgh_bits = v17;
    __b[2].msgh_remote_port = v18;
    if (_logHandle)
    {
      v10 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v9 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v9 = init_default_corebrightness_log();
      }

      v10 = v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v24, v17);
      _os_log_debug_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEBUG, "Queueing brightness at ts=%lld\n", v24, 0xCu);
    }

    v14 = mach_msg_send(__b);
    if (v14)
    {
      if (_logHandle)
      {
        v8 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v7 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v7 = init_default_corebrightness_log();
        }

        v8 = v7;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v4 = mach_error_string(v14);
        __os_log_helper_16_2_1_8_34(v23, v4);
        _os_log_error_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_ERROR, "mach_msg_send() failed: %{public}s\n", v23, 0xCu);
      }
    }
  }
}

uint64_t _DisplayAdaptiveDimmingLeftCallback(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("_DisplayAdaptiveDimmingLeftCallback", "Display.m", 9521, "callbackData");
  }

  return [CBAnalytics autoDimLeave:CFAbsoluteTimeGetCurrent() - *(a1 + 888)];
}

uint64_t __DisplayGetInstantPower(uint64_t a1)
{
  v9 = a1;
  v4 = 0;
  v5 = &v4;
  v6 = 0x20000000;
  v7 = 32;
  v8 = 0x8000000000000000;
  if (*(a1 + 12168))
  {
    if (*(v9 + 12160))
    {
      Samples = IOReportCreateSamples();
      if (Samples)
      {
        IOReportIterate();
        CFRelease(Samples);
      }
    }
  }

  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __DisplayUpdateHDRCap(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  CPMSPowerConstraint = __DisplayGetCPMSPowerConstraint(a1);
  APLColumnOrDefault = DisplayGetAPLColumnOrDefault(a1, 0x64u);
  v6 = DisplayPowerToPhysicalBrightness(a1, APLColumnOrDefault, CPMSPowerConstraint);
  v5 = fmaxf(*(a1 + 12108) * *(a1 + 12188), v6);
  if (*(a1 + 12108) > v6)
  {
    if (_logHandle)
    {
      v4 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v4 = inited;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_2_8_0_8_0(v10, COERCE__INT64(*(a1 + 12108)), COERCE__INT64(v5));
      _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_INFO, "CPMS: Current HDR Power consumption is too high. Lowering from %f to %f", v10, 0x16u);
    }

    if (*(a1 + 12180))
    {
      v1 = __DisplayCPMSHDRFactor(a1, v5);
      __DisplaySetHDRFactorWithFade(a1, 0, 0, v1, 1.0);
    }

    else
    {
      *(a1 + 12108) = v5;
      v2 = _DisplayComputeEDRNitsCap(a1);
      SetLibEDRBrightness(a1, *(a1 + 1500), v2, *(a1 + 1192), *(a1 + 12528));
    }
  }
}

uint64_t __os_log_helper_16_0_4_8_0_8_0_4_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *result = 0;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 0;
  *(result + 29) = 4;
  *(result + 30) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_6_8_32_8_32_8_0_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 0;
  *(result + 53) = 8;
  *(result + 54) = a7;
  return result;
}

id getMLFeatureValueClass_3()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getMLFeatureValueClass_softClass_3;
  v13 = getMLFeatureValueClass_softClass_3;
  if (!getMLFeatureValueClass_softClass_3)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLFeatureValueClass_block_invoke_3;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLFeatureValueClass_block_invoke_3(&v2);
  }

  v1 = MEMORY[0x1E69E5928](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

id getMLModelClass_3()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getMLModelClass_softClass_3;
  v13 = getMLModelClass_softClass_3;
  if (!getMLModelClass_softClass_3)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLModelClass_block_invoke_3;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLModelClass_block_invoke_3(&v2);
  }

  v1 = MEMORY[0x1E69E5928](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

id getMLPredictionOptionsClass_3()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getMLPredictionOptionsClass_softClass_3;
  v13 = getMLPredictionOptionsClass_softClass_3;
  if (!getMLPredictionOptionsClass_softClass_3)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLPredictionOptionsClass_block_invoke_3;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLPredictionOptionsClass_block_invoke_3(&v2);
  }

  v1 = MEMORY[0x1E69E5928](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

id getMLArrayBatchProviderClass_3()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getMLArrayBatchProviderClass_softClass_3;
  v13 = getMLArrayBatchProviderClass_softClass_3;
  if (!getMLArrayBatchProviderClass_softClass_3)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getMLArrayBatchProviderClass_block_invoke_3;
    v6 = &unk_1E867B4F8;
    v7 = &v9;
    __getMLArrayBatchProviderClass_block_invoke_3(&v2);
  }

  v1 = MEMORY[0x1E69E5928](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getMLFeatureValueClass_block_invoke_3(uint64_t a1)
{
  CoreMLLibrary_4();
  Class = objc_getClass("MLFeatureValue");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np("Unable to find class %s", "MLFeatureValue");
  }

  getMLFeatureValueClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreMLLibrary_4()
{
  v2 = 0;
  v1 = CoreMLLibraryCore_4(&v2);
  if (!v1)
  {
    abort_report_np("%s", v2);
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

uint64_t CoreMLLibraryCore_4(uint64_t a1)
{
  v10 = a1;
  v8 = CoreMLLibraryCore_frameworkLibrary_4;
  v9 = CoreMLLibraryCore_frameworkLibrary_4;
  if (!CoreMLLibraryCore_frameworkLibrary_4)
  {
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __CoreMLLibraryCore_block_invoke_4;
    v6 = &__block_descriptor_40_e5_v8__0l;
    v7 = v10;
    __CoreMLLibraryCore_block_invoke_4(&v2);
  }

  return CoreMLLibraryCore_frameworkLibrary_4;
}

uint64_t __CoreMLLibraryCore_block_invoke_4(uint64_t a1)
{
  result = _sl_dlopen();
  CoreMLLibraryCore_frameworkLibrary_4 = result;
  return result;
}

uint64_t __getMLModelClass_block_invoke_3(uint64_t a1)
{
  CoreMLLibrary_4();
  Class = objc_getClass("MLModel");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np("Unable to find class %s", "MLModel");
  }

  getMLModelClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __getMLPredictionOptionsClass_block_invoke_3(uint64_t a1)
{
  CoreMLLibrary_4();
  Class = objc_getClass("MLPredictionOptions");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np("Unable to find class %s", "MLPredictionOptions");
  }

  getMLPredictionOptionsClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __getMLArrayBatchProviderClass_block_invoke_3(uint64_t a1)
{
  CoreMLLibrary_4();
  Class = objc_getClass("MLArrayBatchProvider");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np("Unable to find class %s", "MLArrayBatchProvider");
  }

  getMLArrayBatchProviderClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void AABC::SetDeviceInSleeve(NSObject **this, char a2)
{
  v11 = this;
  v10 = a2;
  v2 = this[488];
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = ___ZN4AABC17SetDeviceInSleeveEb_block_invoke;
  v7 = &__block_descriptor_41_e5_v8__0l;
  v8 = v11;
  v9 = a2 & 1;
  dispatch_sync(v2, &block);
}

void AABCFactoryFunction(AABC *a1, const __CFAllocator *a2)
{
  if (AABCFactoryFunction::pred != -1)
  {
    dispatch_once(&AABCFactoryFunction::pred, &__block_literal_global_14);
  }

  AABC::alloc(a1, a2);
}

os_log_t __AABCFactoryFunction_block_invoke()
{
  result = os_log_create("com.apple.CoreBrightness.AABC", "default");
  _logHandle = result;
  return result;
}

AABC *AABC::alloc(AABC *this, const __CFAllocator *a2, AAB::UpdateCurveStrategy *a3)
{
  v12 = this;
  v11 = a2;
  v10 = MEMORY[0x1E12C3440](this, 4016, 0x10A1040A90B1919, 0);
  if (v10)
  {
    v7 = v10;
    v3 = *MEMORY[0x1E695E4A8];
    p_byte7 = &byte7;
    v9 = CFUUIDGetConstantUUIDWithBytes(v3, 0x96u, 0x5Fu, 0xC3u, 0xCBu, 0x16u, 0xB8u, 0x48u, 0x2Fu, 0xA6u, 0xC6u, 0x48u, 0x63u, 7u, 0x52u, 0x16u, 0xE9u);
    AABC::AABC(v7, v9, v11);
    return v7;
  }

  else
  {
    v6 = v11;
    if (v11)
    {
      (*(*v6 + 8))(v6);
    }
  }

  return v10;
}

void AABC::AABC(AABC *this, const __CFUUID *a2, AAB::UpdateCurveStrategy *a3)
{
  AABC::AABC(this, a2, a3);
}

{
  v8 = *MEMORY[0x1E69E9840];
  AAB::AAB(this, a3);
  *this = &unk_1F599B890;
  *(this + 136) = 0;
  *(this + 144) = 0;
  *(this + 19) = 0;
  *(this + 160) = 0;
  *(this + 161) = 0;
  *(this + 162) = 0;
  AABC::ALSFilter::ALSFilter((this + 168));
  AABC::ALSFilter::ALSFilter((this + 216));
  *(this + 264) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  std::bitset<3ul>::bitset[abi:de200100](this + 37, 0);
  *(this + 76) = -1.0;
  *(this + 308) = 0;
  *(this + 79) = 17;
  *(this + 90) = 0;
  *(this + 91) = 0;
  *(this + 92) = 1;
  *(this + 392) = 0;
  *(this + 393) = 0;
  *(this + 50) = 0;
  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 432) = 0;
  *(this + 433) = 0;
  *(this + 434) = 0;
  *(this + 435) = 0;
  *(this + 436) = 0;
  *(this + 437) = 0;
  *(this + 110) = 0;
  *(this + 444) = 0;
  *(this + 56) = 0;
  *(this + 57) = 0;
  *(this + 58) = 0;
  *(this + 59) = 0;
  *(this + 120) = 0;
  *(this + 121) = 0;
  *(this + 122) = 0;
  *(this + 496) = 0;
  *(this + 497) = 0;
  *(this + 125) = 0;
  *(this + 126) = 1;
  *(this + 127) = 1;
  *(this + 128) = 0;
  *(this + 129) = 0;
  *(this + 130) = 0;
  *(this + 131) = 0.5;
  *(this + 132) = 1138819072;
  *(this + 133) = 1138819072;
  *(this + 134) = -1.0;
  *(this + 135) = -1.0;
  *(this + 136) = -1.0;
  *(this + 137) = 1138819072;
  *(this + 140) = 0;
  *(this + 141) = 1;
  *(this + 146) = 255;
  *(this + 74) = 0;
  *(this + 150) = 0;
  *(this + 151) = 0;
  *(this + 152) = 0;
  *(this + 154) = 0;
  *(this + 155) = 0;
  *(this + 156) = 0;
  *(this + 628) = 0;
  memset(this + 632, 0, 0x28uLL);
  *(this + 168) = 0;
  *(this + 169) = 0;
  *(this + 85) = 0;
  *(this + 86) = 0;
  *(this + 87) = 1045220557;
  *(this + 176) = 0;
  *(this + 177) = 5.0;
  *(this + 178) = 1124859904;
  *(this + 179) = 1140457472;
  *(this + 180) = 5.0;
  *(this + 181) = 1124859904;
  *(this + 182) = 1140457472;
  *(this + 184) = 5;
  *(this + 1560) = 0;
  *(this + 721) = 0;
  *(this + 722) = 0;
  *(this + 723) = 0;
  *(this + 2896) = 0;
  *(this + 3328) = 0;
  *(this + 3409) = 0;
  *(this + 853) = 1;
  *(this + 3424) = 0;
  *(this + 3425) = 0;
  *(this + 3426) = 1;
  *(this + 857) = 0;
  *(this + 3432) = AABC::_defaultSettings;
  *(this + 3448) = xmmword_1DEACE5F0;
  *(this + 866) = 3;
  *(this + 3468) = 0;
  *(this + 3720) = 1;
  *(this + 466) = 0;
  *(this + 938) = 0;
  *(this + 3757) = 1;
  *(this + 940) = 3.0;
  *(this + 941) = 0;
  *(this + 942) = 0;
  *(this + 943) = 0;
  *(this + 944) = 0;
  *(this + 945) = 0;
  *(this + 946) = 0;
  *(this + 947) = 0;
  *(this + 474) = 0;
  *(this + 950) = 0;
  *(this + 951) = 1045220557;
  *(this + 952) = 1045220557;
  *(this + 953) = 981668463;
  *(this + 954) = 1036831949;
  *(this + 955) = 1036831949;
  *(this + 956) = 0;
  *(this + 479) = 0;
  *(this + 960) = 0;
  *(this + 961) = 1.0;
  *(this + 481) = os_log_create("com.apple.CoreBrightness.AABC", "LowPowerMode");
  *(this + 965) = 0;
  *(this + 483) = 1;
  *(this + 968) = 0;
  *(this + 486) = objc_alloc_init(CBLowPowerMode);
  *(this + 488) = 0;
  *(this + 3992) = 0;
  *(this + 500) = 0;
  *(this + 4008) = 0;
  _logHandle = os_log_create("com.apple.CoreBrightness.AABC", "default");
  if (_logHandle)
  {
    v5 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v5 = inited;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v7, 4);
    _os_log_debug_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEBUG, "[%x]: ", v7, 8u);
  }

  memset(this + 632, 0, 0x28uLL);
  *(this + 158) = 0;
  *(this + 167) = 0;
  *(this + 166) = *(this + 167);
  *(this + 162) = 0;
  *(this + 163) = 0;
  *(this + 164) = 0;
  *(this + 165) = 0;
  *(this + 3376) = 0;
  *(this + 423) = 0;
  *(this + 425) = 0x4072C00000000000;
  *(this + 424) = 0;
  *(this + 845) = 3;
  *(this + 3916) = 0;
  *(this + 980) = 0;
  *(this + 978) = 0;
  *(this + 3924) = 0;
  *(this + 464) = objc_alloc_init(ALSSelectionStats);
  *(this + 467) = objc_alloc_init(AABCHistograms);
  *(this + 468) = objc_alloc_init(ALSOcclusionStats);
  if (+[CBSoftWakeAABCDelegate isSupported])
  {
    v3 = objc_alloc_init(CBSoftWakeAABCDelegate);
  }

  else
  {
    v3 = 0;
  }

  *(this + 485) = v3;
  AABC::UpdateState(this, 0);
}

void AABC::operator delete(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (_logHandle)
  {
    v2 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v2 = inited;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_1_8_0(v4, a1);
    _os_log_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_INFO, "%p", v4, 0xCu);
  }

  (*(*a1 + 32))(a1);
  CFAllocatorDeallocate(*MEMORY[0x1E695E480], a1);
}

void sub_1DEA4C800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AAB::AAB(AAB *this, AAB::UpdateCurveStrategy *a2)
{
  *this = &unk_1F599B920;
  *(this + 2) = 1070315492;
  *(this + 3) = 1031954742;
  *(this + 4) = 1070315492;
  *(this + 5) = 0;
  *(this + 6) = 1157234688;
  *(this + 7) = 1133903872;
  *(this + 8) = -1.0;
  *(this + 9) = -1.0;
  *(this + 8) = a2;
  std::mutex::mutex[abi:de200100](this + 9);
}
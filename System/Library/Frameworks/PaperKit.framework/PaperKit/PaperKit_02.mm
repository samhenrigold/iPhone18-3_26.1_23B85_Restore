void sub_1D390AA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  _Block_object_dispose((v15 - 80), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getPXDisplayAssetViewClass_block_invoke(uint64_t a1)
{
  PhotosUICoreLibrary();
  result = objc_getClass("PXDisplayAssetView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPXDisplayAssetViewClass_block_invoke_cold_1();
  }

  getPXDisplayAssetViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void PhotosUICoreLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PhotosUICoreLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __PhotosUICoreLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E845C4C8;
    v3 = 0;
    PhotosUICoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!PhotosUICoreLibraryCore_frameworkLibrary)
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

uint64_t __PhotosUICoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PhotosUICoreLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPXFileBackedUIMediaProviderClass_block_invoke(uint64_t a1)
{
  PhotosUICoreLibrary();
  result = objc_getClass("PXFileBackedUIMediaProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPXFileBackedUIMediaProviderClass_block_invoke_cold_1();
  }

  getPXFileBackedUIMediaProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPXFileBackedAssetClass_block_invoke(uint64_t a1)
{
  PhotosUICoreLibrary();
  result = objc_getClass("PXFileBackedAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPXFileBackedAssetClass_block_invoke_cold_1();
  }

  getPXFileBackedAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getVKCImageAnalyzerClass_block_invoke(uint64_t a1)
{
  VisionKitCoreLibrary();
  result = objc_getClass("VKCImageAnalyzer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVKCImageAnalyzerClass_block_invoke_cold_1();
  }

  getVKCImageAnalyzerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void VisionKitCoreLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!VisionKitCoreLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __VisionKitCoreLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E845C4E0;
    v3 = 0;
    VisionKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!VisionKitCoreLibraryCore_frameworkLibrary)
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

uint64_t __VisionKitCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  VisionKitCoreLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getVKCImageAnalysisInteractionClass_block_invoke(uint64_t a1)
{
  VisionKitCoreLibrary();
  result = objc_getClass("VKCImageAnalysisInteraction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVKCImageAnalysisInteractionClass_block_invoke_cold_1();
  }

  getVKCImageAnalysisInteractionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getVKCImageAnalyzerRequestClass_block_invoke(uint64_t a1)
{
  VisionKitCoreLibrary();
  result = objc_getClass("VKCImageAnalyzerRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVKCImageAnalyzerRequestClass_block_invoke_cold_1();
  }

  getVKCImageAnalyzerRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id PPKUnzipData(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E695DFF8];
  v3 = NSTemporaryDirectory();
  v4 = [v2 fileURLWithPath:v3];
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [v4 URLByAppendingPathComponent:v6];

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  [v8 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:0];
  v9 = archive_read_new();
  archive_read_support_format_all();
  archive_read_support_filter_all();
  [v1 bytes];
  [v1 length];
  if (archive_read_open_memory())
  {
    PPKUnzipData_cold_1();
  }

  v22 = v1;
  archive_write_disk_new();
  archive_write_disk_set_options();
  archive_write_disk_set_standard_lookup();
  archive_entry_new();
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  while (1)
  {
    next_header = archive_read_next_header();
    if (next_header == 1)
    {
      break;
    }

    if ((next_header & 0x80000000) != 0)
    {
      v21 = NSDataZipUtilsLogger(next_header);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        PPKUnzipData_cold_4(v9, v21);
      }

      __assert_rtn("PPKUnzipData", "PPKUnzipData.m", 49, "0");
    }

    v12 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:archive_entry_pathname() isDirectory:0 relativeToURL:v7];
    v13 = [v12 pathComponents];
    v14 = [v7 pathComponents];
    v15 = [v13 objectAtIndex:{objc_msgSend(v14, "count")}];

    if (v15)
    {
      [v10 addObject:v15];
    }

    v16 = [v12 path];
    [v16 fileSystemRepresentation];
    archive_entry_set_pathname();

    if (archive_write_header())
    {
      PPKUnzipData_cold_2();
    }

    data_block = archive_read_data_block();
    if (data_block)
    {
      if (data_block != 1)
      {
        PPKUnzipData_cold_3();
      }
    }

    else
    {
      archive_write_data_block();
    }
  }

  archive_read_close();
  archive_read_free();
  archive_write_close();
  archive_write_free();
  if ([v10 count] == 1)
  {
    v18 = [v10 anyObject];
    v19 = [v7 URLByAppendingPathComponent:v18];
  }

  else
  {
    v19 = v7;
  }

  return v19;
}

id NSDataZipUtilsLogger(uint64_t a1)
{
  if (NSDataZipUtilsLogger_onceToken != -1)
  {
    NSDataZipUtilsLogger_cold_1();
  }

  v2 = NSDataZipUtilsLogger_log;

  return v2;
}

void __NSDataZipUtilsLogger_block_invoke()
{
  v0 = os_log_create("com.apple.PaperKit", "NSDataZipArchiveLogger");
  v1 = NSDataZipUtilsLogger_log;
  NSDataZipUtilsLogger_log = v0;
}

id PPKGPInProcessMagicPaperViewControllerLogger(uint64_t a1)
{
  if (PPKGPInProcessMagicPaperViewControllerLogger_onceToken != -1)
  {
    PPKGPInProcessMagicPaperViewControllerLogger_cold_1();
  }

  v2 = PPKGPInProcessMagicPaperViewControllerLogger_log;

  return v2;
}

void __PPKGPInProcessMagicPaperViewControllerLogger_block_invoke()
{
  v0 = os_log_create("com.apple.PaperKit", "PPKGPInProcessMagicPaperViewController");
  v1 = PPKGPInProcessMagicPaperViewControllerLogger_log;
  PPKGPInProcessMagicPaperViewControllerLogger_log = v0;
}

id getGPInProcessMagicPaperViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getGPInProcessMagicPaperViewControllerClass_softClass;
  v7 = getGPInProcessMagicPaperViewControllerClass_softClass;
  if (!getGPInProcessMagicPaperViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getGPInProcessMagicPaperViewControllerClass_block_invoke;
    v3[3] = &unk_1E845C110;
    v3[4] = &v4;
    __getGPInProcessMagicPaperViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D390CEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getGPRecipeClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getGPRecipeClass_softClass;
  v7 = getGPRecipeClass_softClass;
  if (!getGPRecipeClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getGPRecipeClass_block_invoke;
    v3[3] = &unk_1E845C110;
    v3[4] = &v4;
    __getGPRecipeClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D390CF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D390D3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D390DE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getGPPromptElementClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getGPPromptElementClass_softClass;
  v7 = getGPPromptElementClass_softClass;
  if (!getGPPromptElementClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getGPPromptElementClass_block_invoke;
    v3[3] = &unk_1E845C110;
    v3[4] = &v4;
    __getGPPromptElementClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D390EA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getGPGenerationRecipeDataClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getGPGenerationRecipeDataClass_softClass;
  v7 = getGPGenerationRecipeDataClass_softClass;
  if (!getGPGenerationRecipeDataClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getGPGenerationRecipeDataClass_block_invoke;
    v3[3] = &unk_1E845C110;
    v3[4] = &v4;
    __getGPGenerationRecipeDataClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D390F9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getGPInProcessMagicPaperViewControllerClass_block_invoke(uint64_t a1)
{
  ImagePlaygroundInternalLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("GPInProcessMagicPaperViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGPInProcessMagicPaperViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getGPInProcessMagicPaperViewControllerClass_block_invoke_cold_1();
    ImagePlaygroundInternalLibrary();
  }
}

void ImagePlaygroundInternalLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ImagePlaygroundInternalLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ImagePlaygroundInternalLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E845C548;
    v3 = 0;
    ImagePlaygroundInternalLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!ImagePlaygroundInternalLibraryCore_frameworkLibrary)
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

uint64_t __ImagePlaygroundInternalLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ImagePlaygroundInternalLibraryCore_frameworkLibrary = result;
  return result;
}

void __getGPRecipeClass_block_invoke(uint64_t a1)
{
  ImagePlaygroundLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("GPRecipe");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGPRecipeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getGPRecipeClass_block_invoke_cold_1();
    ImagePlaygroundLibrary();
  }
}

void ImagePlaygroundLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ImagePlaygroundLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ImagePlaygroundLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E845C560;
    v3 = 0;
    ImagePlaygroundLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!ImagePlaygroundLibraryCore_frameworkLibrary)
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

uint64_t __ImagePlaygroundLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ImagePlaygroundLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getGPDrawOnImageRecipeClass_block_invoke(uint64_t a1)
{
  ImagePlaygroundLibrary();
  result = objc_getClass("GPDrawOnImageRecipe");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGPDrawOnImageRecipeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getGPDrawOnImageRecipeClass_block_invoke_cold_1();
    return __getGPMagicPaperStateClass_block_invoke(v3);
  }

  return result;
}

Class __getGPMagicPaperStateClass_block_invoke(uint64_t a1)
{
  ImagePlaygroundInternalLibrary();
  result = objc_getClass("GPMagicPaperState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGPMagicPaperStateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getGPMagicPaperStateClass_block_invoke_cold_1();
    return __getGPPromptElementClass_block_invoke(v3);
  }

  return result;
}

Class __getGPPromptElementClass_block_invoke(uint64_t a1)
{
  ImagePlaygroundLibrary();
  result = objc_getClass("GPPromptElement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGPPromptElementClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getGPPromptElementClass_block_invoke_cold_1();
    return __getGPGenerationRecipeDataClass_block_invoke(v3);
  }

  return result;
}

PPKQuickLookBannerView *__getGPGenerationRecipeDataClass_block_invoke(uint64_t a1)
{
  ImagePlaygroundLibrary();
  result = objc_getClass("GPGenerationRecipeData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGPGenerationRecipeDataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getGPGenerationRecipeDataClass_block_invoke_cold_1();
    return [(PPKQuickLookBannerView *)v3 initWithFrame:v4, v5];
  }

  return result;
}

uint64_t one-time initialization function for mathLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, mathLogger);
  __swift_project_value_buffer(v0, mathLogger);
  return Logger.init(subsystem:category:)();
}

void AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:)(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v36 = a1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v35 - v13;
  v15 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x440))(v12);
  v17 = v16;
  ObjectType = swift_getObjectType();
  v38 = (*(v17 + 16))(ObjectType, v17);

  v19 = v38;
  if (v38)
  {
    v37 = a3;
    v20 = OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate;
    v21 = *&v38[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate];
    if (v21)
    {
      v22 = *(v21 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController);
      if (v22)
      {
        v23 = v22;
        if (a2)
        {
          a2 = MEMORY[0x1DA6CCED0](v36, a2);
        }

        isa = UUID._bridgeToObjectiveC()().super.isa;
        [v23 mathResult:a2 itemUUID:isa];

        v19 = v38;
      }
    }

    if (a4)
    {
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v9 + 16))(&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v8);
      type metadata accessor for MainActor();

      v27 = static MainActor.shared.getter();
      v28 = (*(v9 + 80) + 40) & ~*(v9 + 80);
      v29 = swift_allocObject();
      v30 = MEMORY[0x1E69E85E0];
      *(v29 + 2) = v27;
      *(v29 + 3) = v30;
      *(v29 + 4) = v26;
      (*(v9 + 32))(&v29[v28], &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:), v29);
    }

    else
    {
      v31 = *&v19[v20];
      if (v31)
      {
        v32 = *(v31 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController);
        if (v32)
        {
          v33 = v32;
          v34 = UUID._bridgeToObjectiveC()().super.isa;
          [v33 mathResultAttributionImage:0 darkModeImage:0 string:0 date:0 itemUUID:v34];

          v19 = v38;
        }
      }
    }
  }
}

uint64_t closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Calculate22StocksKitCurrencyCacheC0A2UIE8ProviderVSgMd, &_s9Calculate22StocksKitCurrencyCacheC0A2UIE8ProviderVSgMR);
  v5[9] = swift_task_alloc();
  v5[10] = type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[12] = v7;
  v5[13] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:), v7, v6);
}

uint64_t closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v0[15] = static CalculateResultAttributionHandler.shared;
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

    return specialized CalculateResultAttributionHandler.lightModeImage()();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

{
  v0[23] = type metadata accessor for StocksKitCurrencyCache();
  v0[24] = static StocksKitCurrencyCache.shared.getter();
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);
  v2 = v0[9];

  return MEMORY[0x1EEDF1D98](v2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 192);

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return MEMORY[0x1EEE6DFA0](closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:), v4, v3);
}

{
  v1 = v0[9];

  v2 = type metadata accessor for StocksKitCurrencyCache.Provider();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[9];
  if (v4 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v0[9], &_s9Calculate22StocksKitCurrencyCacheC0A2UIE8ProviderVSgMd, &_s9Calculate22StocksKitCurrencyCacheC0A2UIE8ProviderVSgMR);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = StocksKitCurrencyCache.Provider.name.getter();
    v7 = v8;
    (*(v3 + 8))(v5, v2);
  }

  v0[26] = v6;
  v0[27] = v7;
  v9 = v0[12];
  v10 = v0[13];

  return MEMORY[0x1EEE6DFA0](closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:), v9, v10);
}

{
  v0[31] = static StocksKitCurrencyCache.shared.getter();
  v4 = (*MEMORY[0x1E69921F0] + MEMORY[0x1E69921F0]);
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);
  v2 = v0[8];

  return v4(v2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 248);

  v3 = *(v1 + 240);
  v4 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:), v4, v3);
}

{

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return MEMORY[0x1EEE6DFA0](closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:), v1, v2);
}

{
  v1 = *(v0 + 112);

  v2 = *(v1 + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate);
  if (v2 && (v3 = *(v2 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController), v4 = *(v0 + 216), v3))
  {
    if (v4)
    {
      v5 = *(v0 + 208);
      v6 = v3;
      v7 = MEMORY[0x1DA6CCED0](v5, v4);
    }

    else
    {
      v10 = v3;
      v7 = 0;
    }

    v11 = *(v0 + 56);
    outlined init with copy of Date?(*(v0 + 64), v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v12 = type metadata accessor for Date();
    v13 = *(v12 - 8);
    isa = 0;
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      v15 = *(v0 + 56);
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v13 + 8))(v15, v12);
    }

    v16 = *(v0 + 152);
    v17 = *(v0 + 136);
    v18 = *(v0 + 112);
    v19 = UUID._bridgeToObjectiveC()().super.isa;
    [v3 mathResultAttributionImage:v17 darkModeImage:v16 string:v7 date:isa itemUUID:v19];
  }

  else
  {
    v8 = *(v0 + 152);
    v9 = *(v0 + 136);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 64), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:)(void *a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v3 + 136) = a1;

  v5 = a1;
  v6 = swift_task_alloc();
  *(v3 + 144) = v6;
  *v6 = v4;
  v6[1] = closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return specialized CalculateResultAttributionHandler.darkModeImage()();
}

{
  v3 = *v1;
  *(*v1 + 152) = a1;

  v4 = *(v3 + 104);
  v5 = *(v3 + 96);
  v6 = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:), v5, v4);
}

uint64_t closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:)(uint64_t a1)
{
  v1[20] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x1EEE6DFA0](closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:), v3, v2);
}

{
  v1[28] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[29] = v3;
  v1[30] = v2;

  return MEMORY[0x1EEE6DFA0](closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:), v3, v2);
}

void AnyCanvas.calculateDocumentSetAttributes(_:itemUUID:)(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x440))();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 16))(ObjectType, v5);

  if (v7)
  {
    outlined init with copy of Date?(a1, v13, &_s8PaperKit25PKCalculateItemAttributes_pSgMd, &_s8PaperKit25PKCalculateItemAttributes_pSgMR);
    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit25PKCalculateItemAttributes_pMd, _s8PaperKit25PKCalculateItemAttributes_pMR);
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKMathRecognitionItemAttributes, 0x1E6978498);
      if (swift_dynamicCast())
      {
        v8 = *&v7[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate];
        if (v8)
        {
          v9 = *(v8 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController);
          if (v9)
          {
            v10 = v9;
            isa = UUID._bridgeToObjectiveC()().super.isa;
            [v10 setItemAttributes:v12 forItemUUID:isa];
          }
        }
      }

      else
      {
      }
    }

    else
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit25PKCalculateItemAttributes_pSgMd, &_s8PaperKit25PKCalculateItemAttributes_pSgMR);
    }
  }
}

Swift::Void __swiftcall AnyCanvas.calculateDocumentExpressionsChanged()()
{
  v1 = type metadata accessor for PKDrawing();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x440))(v3);
  v8 = v7;
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 16))(ObjectType, v8);

  if (v10)
  {
    v11 = v10;
    v12 = [v11 drawing];
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

    PKDrawing._bridgeToObjectiveC()(v13);
    v15 = v14;
    v16 = [v14 uuid];

    (*(v2 + 8))(v5, v1);
    v38 = &unk_1F4FC4E80;
    v17 = swift_dynamicCastObjCProtocolConditional();
    if (v17 && (v18 = v17, swift_getObjectType(), type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0), swift_dynamicCastMetatype()))
    {
      v19 = one-time initialization token for controllers;
      swift_unknownObjectRetain();
      if (v19 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v20 = static CalculateDocumentController.controllers;
      if (*(static CalculateDocumentController.controllers + 2) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v18), (v22 & 1) != 0))
      {
        v23 = *(v20[7] + 8 * v21);
        swift_endAccess();
        v24 = v23;
        swift_unknownObjectRelease();
        v25 = CalculateDocumentController.calculateDocumentProvider.getter();
        if (one-time initialization token for mathLogger != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        __swift_project_value_buffer(v26, mathLogger);
        swift_unknownObjectRetain_n();
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 134218240;
          v30 = [v25 recognizedExpressions];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CHMathExpression_pMd, &_sSo16CHMathExpression_pMR);
          v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v31 >> 62)
          {
            v32 = __CocoaSet.count.getter();
          }

          else
          {
            v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v29 + 4) = v32;
          swift_unknownObjectRelease();
          *(v29 + 12) = 2048;
          v33 = [v25 declaredVariables];
          v34 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v35 = *(v34 + 16);

          *(v29 + 14) = v35;
          swift_unknownObjectRelease();
          _os_log_impl(&dword_1D38C4000, v27, v28, "Updating CalculateDocumentProvider: %ld, %ld", v29, 0x16u);
          MEMORY[0x1DA6D0660](v29, -1, -1);
        }

        else
        {

          swift_unknownObjectRelease_n();
        }

        v36 = [v11 recognitionController];

        [v36 setCalculateDocumentProvider_];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_endAccess();

        swift_unknownObjectRelease_n();
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
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

unint64_t lazy protocol witness table accessor for type MiniButtonStyle and conformance MiniButtonStyle()
{
  result = lazy protocol witness table cache variable for type MiniButtonStyle and conformance MiniButtonStyle;
  if (!lazy protocol witness table cache variable for type MiniButtonStyle and conformance MiniButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MiniButtonStyle and conformance MiniButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GraphableExpressionsView, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GraphableExpressionsView, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GraphableExpressionsView, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy8PaperKit24GraphableExpressionsViewVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy8PaperKit24GraphableExpressionsViewVAA16_FlexFrameLayoutVGMR);
    lazy protocol witness table accessor for type GraphableExpressionsView and conformance GraphableExpressionsView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GraphableExpressionsView, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GraphableExpressionsView and conformance GraphableExpressionsView()
{
  result = lazy protocol witness table cache variable for type GraphableExpressionsView and conformance GraphableExpressionsView;
  if (!lazy protocol witness table cache variable for type GraphableExpressionsView and conformance GraphableExpressionsView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphableExpressionsView and conformance GraphableExpressionsView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.presentationCompactAdaptation(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.presentationCompactAdaptation(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.presentationCompactAdaptation(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29presentationCompactAdaptationyQrAA012PresentationH0VFQOyAeAE19allowsSecureDrawingQryFQOy09CalculateB00m11GraphBoundsE0V_Qo__Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29presentationCompactAdaptationyQrAA012PresentationH0VFQOyAeAE19allowsSecureDrawingQryFQOy09CalculateB00m11GraphBoundsE0V_Qo__Qo_AA14_PaddingLayoutVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19allowsSecureDrawingQryFQOy09CalculateB00g11GraphBoundsC0V_Qo_Md, &_s7SwiftUI4ViewPAAE19allowsSecureDrawingQryFQOy09CalculateB00g11GraphBoundsC0V_Qo_MR);
    type metadata accessor for CalculateGraphBoundsView();
    lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type CalculateGraphBoundsView and conformance CalculateGraphBoundsView, MEMORY[0x1E69922C8], MEMORY[0x1E69922C0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.presentationCompactAdaptation(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t View.popover<A>(isPresented:attachmentAnchor:arrowEdge:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 != 4)
  {
    MEMORY[0x1DA6CA140](a5, a2, a3);
  }

  return View.popoverCore<A>(isPresented:attachmentAnchor:arrowEdges:isDetachable:content:)();
}

uint64_t type metadata completion function for CGMutablePathRef(uint64_t a1)
{
  type metadata accessor for CGPathRef(255);
  *(a1 + 16) = v2;
  return 0;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CGPathElement(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for CGPathElement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CGAffineTransform(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGAffineTransform(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIFontWeight(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1DA6C8BF0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIFontWeight(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1DA6C8C00](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UILayoutPriority(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1DA6CD480](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UILayoutPriority(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1DA6CD490](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CGPathRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CGLineCap()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CGLineCap(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NSTextAlignment()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSTextAlignment(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Error._domain.getter in conformance related decl e for SYErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type related decl 'e' for SYErrorCode and conformance related decl 'e' for SYErrorCode, type metadata accessor for related decl 'e' for SYErrorCode, &protocol conformance descriptor for related decl 'e' for SYErrorCode);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance related decl e for SYErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type related decl 'e' for SYErrorCode and conformance related decl 'e' for SYErrorCode, type metadata accessor for related decl 'e' for SYErrorCode, &protocol conformance descriptor for related decl 'e' for SYErrorCode);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t protocol witness for Error._getEmbeddedNSError() in conformance related decl e for SYErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type related decl 'e' for SYErrorCode and conformance related decl 'e' for SYErrorCode, type metadata accessor for related decl 'e' for SYErrorCode, &protocol conformance descriptor for related decl 'e' for SYErrorCode);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

void protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSAttributedStringKey(uint64_t *a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = MEMORY[0x1DA6CCED0](v3);

  *a2 = v4;
}

void protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance UIRectCorner(uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a2 = v3;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CGColorRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance related decl e for SYErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type related decl 'e' for SYErrorCode and conformance related decl 'e' for SYErrorCode, type metadata accessor for related decl 'e' for SYErrorCode, &protocol conformance descriptor for related decl 'e' for SYErrorCode);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance related decl e for SYErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type related decl 'e' for SYErrorCode and conformance related decl 'e' for SYErrorCode, type metadata accessor for related decl 'e' for SYErrorCode, &protocol conformance descriptor for related decl 'e' for SYErrorCode);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t protocol witness for _ObjectiveCBridgeableError.init(_bridgedNSError:) in conformance related decl e for SYErrorCode(void *a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type related decl 'e' for SYErrorCode and conformance related decl 'e' for SYErrorCode, type metadata accessor for related decl 'e' for SYErrorCode, &protocol conformance descriptor for related decl 'e' for SYErrorCode);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance related decl e for SYErrorCode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type related decl 'e' for SYErrorCode and conformance related decl 'e' for SYErrorCode, type metadata accessor for related decl 'e' for SYErrorCode, &protocol conformance descriptor for related decl 'e' for SYErrorCode);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance related decl e for SYErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance UIKeyModifierFlags(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UITextContentType(uint64_t a1)
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UITextContentType and conformance UITextContentType, type metadata accessor for UITextContentType, &protocol conformance descriptor for UITextContentType);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UITextContentType and conformance UITextContentType, type metadata accessor for UITextContentType, &protocol conformance descriptor for UITextContentType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

double protocol witness for RawRepresentable.rawValue.getter in conformance UIFontWeight@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontWeight(uint64_t a1)
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UIFontWeight and conformance UIFontWeight, type metadata accessor for UIFontWeight, &protocol conformance descriptor for UIFontWeight);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UIFontWeight and conformance UIFontWeight, type metadata accessor for UIFontWeight, &protocol conformance descriptor for UIFontWeight);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey(uint64_t a1)
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSNotificationName(uint64_t a1)
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type NSNotificationName and conformance NSNotificationName, type metadata accessor for NSNotificationName, &protocol conformance descriptor for NSNotificationName);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type NSNotificationName and conformance NSNotificationName, type metadata accessor for NSNotificationName, &protocol conformance descriptor for NSNotificationName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey(uint64_t a1)
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey, &protocol conformance descriptor for NSURLResourceKey);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey, &protocol conformance descriptor for NSURLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CalculateKey(uint64_t a1)
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type CalculateKey and conformance CalculateKey, type metadata accessor for CalculateKey, &protocol conformance descriptor for CalculateKey);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type CalculateKey and conformance CalculateKey, type metadata accessor for CalculateKey, &protocol conformance descriptor for CalculateKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIActionIdentifier(uint64_t a1)
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UIActionIdentifier and conformance UIActionIdentifier, type metadata accessor for UIActionIdentifier, &protocol conformance descriptor for UIActionIdentifier);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UIActionIdentifier and conformance UIActionIdentifier, type metadata accessor for UIActionIdentifier, &protocol conformance descriptor for UIActionIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

float protocol witness for RawRepresentable.rawValue.getter in conformance UILayoutPriority@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UILayoutPriority(uint64_t a1)
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance PDFDocumentWriteOption(uint64_t a1)
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type PDFDocumentWriteOption and conformance PDFDocumentWriteOption, type metadata accessor for PDFDocumentWriteOption, &protocol conformance descriptor for PDFDocumentWriteOption);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type PDFDocumentWriteOption and conformance PDFDocumentWriteOption, type metadata accessor for PDFDocumentWriteOption, &protocol conformance descriptor for PDFDocumentWriteOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AFTextContentType(uint64_t a1)
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type AFTextContentType and conformance AFTextContentType, type metadata accessor for AFTextContentType, &protocol conformance descriptor for AFTextContentType);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type AFTextContentType and conformance AFTextContentType, type metadata accessor for AFTextContentType, &protocol conformance descriptor for AFTextContentType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance PDFPageDrawWithBoxOption(uint64_t a1)
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type PDFPageDrawWithBoxOption and conformance PDFPageDrawWithBoxOption, type metadata accessor for PDFPageDrawWithBoxOption, &protocol conformance descriptor for PDFPageDrawWithBoxOption);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type PDFPageDrawWithBoxOption and conformance PDFPageDrawWithBoxOption, type metadata accessor for PDFPageDrawWithBoxOption, &protocol conformance descriptor for PDFPageDrawWithBoxOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance PDFPageImageInitializationOption(uint64_t a1)
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type PDFPageImageInitializationOption and conformance PDFPageImageInitializationOption, type metadata accessor for PDFPageImageInitializationOption, &protocol conformance descriptor for PDFPageImageInitializationOption);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type PDFPageImageInitializationOption and conformance PDFPageImageInitializationOption, type metadata accessor for PDFPageImageInitializationOption, &protocol conformance descriptor for PDFPageImageInitializationOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance related decl e for SYErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type related decl 'e' for SYErrorCode and conformance related decl 'e' for SYErrorCode, type metadata accessor for related decl 'e' for SYErrorCode, &protocol conformance descriptor for related decl 'e' for SYErrorCode);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorTraitKey(uint64_t a1)
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UIFontDescriptorTraitKey and conformance UIFontDescriptorTraitKey, type metadata accessor for UIFontDescriptorTraitKey, &protocol conformance descriptor for UIFontDescriptorTraitKey);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UIFontDescriptorTraitKey and conformance UIFontDescriptorTraitKey, type metadata accessor for UIFontDescriptorTraitKey, &protocol conformance descriptor for UIFontDescriptorTraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance UITextContentType(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1DA6CCED0](*a1, a1[1]);

  *a2 = v3;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorAttributeName(uint64_t a1)
{
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName, &protocol conformance descriptor for UIFontDescriptorAttributeName);
  lazy protocol witness table accessor for type ColorPickerRepresentable and conformance ColorPickerRepresentable(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName, &protocol conformance descriptor for UIFontDescriptorAttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CGImageRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UIFontWeight()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1DA6CE840](*&v1);
}

void protocol witness for Hashable.hash(into:) in conformance UILayoutPriority()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CalculateKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x1DA6CD080](v0);

  return v1;
}

double protocol witness for Hashable.hash(into:) in conformance CalculateKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CalculateKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UITextContentType(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

void closure #1 in variable initialization expression of static PageLabelView.sidebarAttributedString()
{
  v0 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D40819A0);
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    v2 = [objc_opt_self() textAttachmentWithImage_];
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40);
    v3 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    v4 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v5 = v3;
    v6 = MEMORY[0x1DA6CCED0](32, 0xE100000000000000);
    v7 = [v4 initWithString_];

    [v5 appendAttributedString_];
  }

  else
  {
    __break(1u);
  }
}

char *PageLabelView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd, &_s5UIKit29_UICornerMaskingConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v75[-1] - v12;
  v14 = OBJC_IVAR____TtC8PaperKit13PageLabelView_blurEffect;
  *&v5[v14] = [objc_opt_self() effectWithStyle_];
  *&v5[OBJC_IVAR____TtC8PaperKit13PageLabelView_timer] = 0;
  v5[OBJC_IVAR____TtC8PaperKit13PageLabelView_showsSidebarIcon] = 1;
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v16 = OBJC_IVAR____TtC8PaperKit13PageLabelView_label;
  *&v5[OBJC_IVAR____TtC8PaperKit13PageLabelView_label] = v15;
  [v15 setOpaque_];
  [*&v5[v16] setBackgroundColor_];
  [*&v5[v16] setTextAlignment_];
  v17 = _UISolariumEnabled();
  v18 = *&v5[v16];
  v19 = objc_opt_self();
  if (v17)
  {
    v20 = *MEMORY[0x1E69DDCF8];
    v21 = *MEMORY[0x1E69DB970];
    v22 = v18;
    v23 = [v19 _preferredFontForTextStyle_weight_];
    [v22 setFont_];

    v24 = *&v5[v16];
    v25 = objc_opt_self();
    v26 = v24;
    v27 = [v25 labelColor];
    [v26 setTextColor_];
  }

  else
  {
    v28 = v18;
    v29 = [v19 boldSystemFontOfSize_];
    [v28 setFont_];

    v30 = *&v5[v16];
    v31 = objc_opt_self();
    v32 = v30;
    v33 = [v31 blackColor];
    [v32 setTextColor_];

    [*&v5[v16] setAlpha_];
  }

  if (_UISolariumEnabled())
  {
    v34 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    static _UICornerMaskingConfiguration.capsule.getter();
    v35 = type metadata accessor for _UICornerMaskingConfiguration();
    (*(*(v35 - 8) + 56))(v13, 0, 1, v35);
    UIView.cornerMaskingConfiguration.setter();
    static _Glass._GlassVariant.regular.getter();
    v75[3] = type metadata accessor for _Glass();
    v75[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v75);
    _Glass.init(_:smoothness:)();
    UIView._background.setter();
    [v34 addSubview_];
  }

  else
  {
    v34 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
    [v34 _setContinuousCornerRadius_];
    v36 = [v34 contentView];

    [v36 addSubview_];
  }

  *&v5[OBJC_IVAR____TtC8PaperKit13PageLabelView_blurView] = v34;
  v37 = type metadata accessor for PageLabelView();
  v76.receiver = v5;
  v76.super_class = v37;
  v38 = objc_msgSendSuper2(&v76, sel_initWithFrame_, a1, a2, a3, a4);
  v39 = OBJC_IVAR____TtC8PaperKit13PageLabelView_blurView;
  v40 = *&v38[OBJC_IVAR____TtC8PaperKit13PageLabelView_blurView];
  v41 = v38;
  [v40 setTranslatesAutoresizingMaskIntoConstraints_];
  v42 = *&v38[v39];
  v43 = v41;
  [v43 addSubview_];
  v44 = OBJC_IVAR____TtC8PaperKit13PageLabelView_label;
  [*&v43[OBJC_IVAR____TtC8PaperKit13PageLabelView_label] setTranslatesAutoresizingMaskIntoConstraints_];
  v45 = 10.0;
  if (_UISolariumEnabled())
  {
    v46 = 10.0;
  }

  else
  {
    v46 = 6.0;
  }

  if (_UISolariumEnabled())
  {
    v45 = 18.0;
  }

  v74 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1D4058C60;
  v48 = [*&v38[v39] topAnchor];
  v49 = [v43 topAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v47 + 32) = v50;
  v51 = [*&v38[v39] bottomAnchor];
  v52 = [v43 bottomAnchor];

  v53 = [v51 constraintEqualToAnchor_];
  *(v47 + 40) = v53;
  v54 = [*&v38[v39] trailingAnchor];
  v55 = [v43 &selRef_imageAnalysisOrientation + 4];

  v56 = [v54 constraintEqualToAnchor_];
  *(v47 + 48) = v56;
  v57 = [*&v38[v39] leadingAnchor];
  v58 = [v43 leadingAnchor];

  v59 = [v57 constraintEqualToAnchor_];
  *(v47 + 56) = v59;
  v60 = [*&v43[v44] topAnchor];
  v61 = [*&v38[v39] topAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:v46];

  *(v47 + 64) = v62;
  v63 = [*&v43[v44] bottomAnchor];
  v64 = [*&v38[v39] bottomAnchor];
  v65 = [v63 constraintEqualToAnchor:v64 constant:-v46];

  *(v47 + 72) = v65;
  v66 = [*&v43[v44] leadingAnchor];
  v67 = [*&v38[v39] leadingAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:v45];

  *(v47 + 80) = v68;
  v69 = [*&v43[v44] trailingAnchor];
  v70 = [*&v38[v39] trailingAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:-v45];

  *(v47 + 88) = v71;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v74 activateConstraints_];

  return v43;
}

id PageLabelView.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8PaperKit13PageLabelView_timer;
  [*&v0[OBJC_IVAR____TtC8PaperKit13PageLabelView_timer] invalidate];
  v2 = *&v0[v1];
  *&v0[v1] = 0;

  v4.receiver = v0;
  v4.super_class = type metadata accessor for PageLabelView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall PageLabelView.showNow(in:with:)(UIView *in, Swift::String with)
{
  v3 = v2;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v7 = type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x1EEE9AC00](v7 - 8);
  [v2 setAlpha_];
  v8 = *&v2[OBJC_IVAR____TtC8PaperKit13PageLabelView_label];
  v9 = _UISolariumEnabled();
  v10 = 0.4;
  if (v9)
  {
    v10 = 1.0;
  }

  [v8 setAlpha_];
  if (_UISolariumEnabled())
  {
    static _Glass._GlassVariant.regular.getter();
    v23[3] = type metadata accessor for _Glass();
    v23[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v23);
    _Glass.init(_:smoothness:)();
    UIView._background.setter();
  }

  else
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      [v11 setEffect_];
    }
  }

  if (v2[OBJC_IVAR____TtC8PaperKit13PageLabelView_showsSidebarIcon] == 1)
  {
    if (one-time initialization token for sidebarAttributedString != -1)
    {
      swift_once();
    }

    v12 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  }

  v13 = v12;
  v14 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v15 = v13;
  v16 = MEMORY[0x1DA6CCED0](countAndFlagsBits, object);
  v17 = [v14 initWithString_];

  [v15 appendAttributedString_];
  [v8 setAttributedText_];

  v18 = [v3 superview];
  v19 = &selRef_addSubview_;
  if (v18)
  {
    v20 = v18;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    v21 = in;
    v22 = static NSObject.== infix(_:_:)();

    if (v22)
    {
      v19 = &selRef_bringSubviewToFront_;
    }
  }

  [in *v19];
  PageLabelView.resetFadeOutTimer()();
}

Swift::Void __swiftcall PageLabelView.resetFadeOutTimer()()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC8PaperKit13PageLabelView_timer;
  v6 = *(v0 + OBJC_IVAR____TtC8PaperKit13PageLabelView_timer);
  if (v6)
  {
    v7 = v6;
    Date.init(timeIntervalSinceNow:)();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v2 + 8))(v4, v1);
    [v7 setFireDate_];
  }

  else
  {
    v9 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:sel__fadeOut selector:0 userInfo:1 repeats:2.0];
    v10 = *(v0 + v5);
    *(v0 + v5) = v9;
  }
}

void PageLabelView._fadeOut()()
{
  if (*(v0 + OBJC_IVAR____TtC8PaperKit13PageLabelView_timer))
  {
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = partial apply for closure #1 in PageLabelView.fadeOut(animated:);
    v11 = v2;
    v6 = MEMORY[0x1E69E9820];
    v7 = 1107296256;
    v8 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v9 = &block_descriptor;
    v3 = _Block_copy(&v6);

    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = partial apply for closure #2 in PageLabelView.fadeOut(animated:);
    v11 = v4;
    v6 = MEMORY[0x1E69E9820];
    v7 = 1107296256;
    v8 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v9 = &block_descriptor_10;
    v5 = _Block_copy(&v6);

    [v1 animateWithDuration:v3 animations:v5 completion:0.5];
    _Block_release(v5);
    _Block_release(v3);
  }
}

Swift::Void __swiftcall PageLabelView.fadeOut(animated:)(Swift::Bool animated)
{
  v2 = OBJC_IVAR____TtC8PaperKit13PageLabelView_timer;
  if (*&v1[OBJC_IVAR____TtC8PaperKit13PageLabelView_timer])
  {
    if (animated)
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = closure #1 in PageLabelView.fadeOut(animated:)partial apply;
      v14 = v4;
      v9 = MEMORY[0x1E69E9820];
      v10 = 1107296256;
      v11 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v12 = &block_descriptor_15;
      v5 = _Block_copy(&v9);

      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = closure #2 in PageLabelView.fadeOut(animated:)partial apply;
      v14 = v6;
      v9 = MEMORY[0x1E69E9820];
      v10 = 1107296256;
      v11 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v12 = &block_descriptor_20;
      v7 = _Block_copy(&v9);

      [v3 animateWithDuration:v5 animations:v7 completion:0.5];
      _Block_release(v7);
      _Block_release(v5);
    }

    else
    {
      [v1 removeFromSuperview];
      [*&v1[v2] invalidate];
      v8 = *&v1[v2];
      *&v1[v2] = 0;
    }
  }
}

void closure #1 in PageLabelView.fadeOut(animated:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (_UISolariumEnabled())
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      UIView._background.setter();
    }

    [v2 setAlpha_];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v3 = *&v2[OBJC_IVAR____TtC8PaperKit13PageLabelView_blurView];
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        v6 = v3;
        [v5 setEffect_];
      }
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void closure #2 in PageLabelView.fadeOut(animated:)(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((a1 & 1) == 0)
    {
      v4 = Strong;
      [Strong removeFromSuperview];
      v5 = OBJC_IVAR____TtC8PaperKit13PageLabelView_timer;
      [*&v4[OBJC_IVAR____TtC8PaperKit13PageLabelView_timer] invalidate];
      v6 = *&v4[v5];
      *&v4[v5] = 0;

      Strong = v6;
    }
  }
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

uint64_t closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidAppear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  type metadata accessor for MainActor();
  *(v4 + 72) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidAppear(_:), v6, v5);
}

uint64_t closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidAppear(_:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    CanvasGenerationTool.updateScrollViewLayout(_:animationDuration:animationCurveOptions:)(0, 0.0, 0.0);
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      v6 = TiledTextView.canvasGenerationToolOverlayController.getter();
      v7 = v6;
      v8 = *&v6[OBJC_IVAR____TtC8PaperKit37CanvasGenerationToolOverlayController_canvasGenerationToolController];
      if (v8)
      {
        v9 = *(v8 + OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool);

        v10 = &v9[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_canvasImageGenerationViewDelegate];
        v11 = swift_unknownObjectWeakLoadStrong();
        v12 = *(v10 + 1);

        if (v11)
        {
          ObjectType = swift_getObjectType();
          (*(v12 + 8))(ObjectType, v12);
          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidDisappear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidDisappear(_:), v6, v5);
}

uint64_t closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidDisappear(_:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();

    if (v3)
    {
      v4 = TiledTextView.canvasGenerationToolOverlayController.getter();
      v5 = v4;
      v6 = *&v4[OBJC_IVAR____TtC8PaperKit37CanvasGenerationToolOverlayController_canvasGenerationToolController];
      if (v6)
      {
        v7 = *(v6 + OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool);

        v8 = &v7[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_canvasImageGenerationViewDelegate];
        v9 = swift_unknownObjectWeakLoadStrong();
        v10 = *(v8 + 1);

        if (v9)
        {
          ObjectType = swift_getObjectType();
          (*(v10 + 16))(ObjectType, v10);
          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

Swift::Void __swiftcall CanvasGenerationTool.magicPaperViewController(_:didGenerate:)(PPKGPInProcessMagicPaperViewController *_, UIImage didGenerate)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, generativeLogger);
  v9 = v2;
  v10 = didGenerate.super.isa;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315650;
    v15 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v29);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001D4081A70, &v29);
    *(v13 + 22) = 2080;
    [(objc_class *)v10 size];
    v18 = CGSize.debugDescription.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v29);

    *(v13 + 24) = v20;
    _os_log_impl(&dword_1D38C4000, v11, v12, "%s - %s: (image.size = %s)", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v14, -1, -1);
    MEMORY[0x1DA6D0660](v13, -1, -1);
  }

  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v23 = v10;

  v24 = _;
  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v22;
  v26[5] = v24;
  v26[6] = v23;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in CanvasGenerationTool.magicPaperViewController(_:didGenerate:), v26);
}

uint64_t closure #1 in CanvasGenerationTool.magicPaperViewController(_:didGenerate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMd, &_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMR);
  v6[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGMd, &_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGMR);
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[19] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasGenerationTool.magicPaperViewController(_:didGenerate:), v9, v8);
}

uint64_t closure #1 in CanvasGenerationTool.magicPaperViewController(_:didGenerate:)()
{
  v79 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[16];
    v4 = v0[17];
    v5 = v0[15];
    v6 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_continuation;
    swift_beginAccess();
    outlined init with copy of CheckedContinuation<ImageWithEncodedRecipe, Error>?(v2 + v6, v5);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      outlined destroy of CheckedContinuation<ImageWithEncodedRecipe, Error>?(v0[15]);
      if (one-time initialization token for generativeLogger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, generativeLogger);
      v8 = v2;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v78 = v12;
        *v11 = 136315138;
        v13 = CanvasGenerationTool.nameAndPointerDescription.getter();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v78);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_1D38C4000, v9, v10, "%s returning (continuation is nil)", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x1DA6D0660](v12, -1, -1);
        MEMORY[0x1DA6D0660](v11, -1, -1);
      }
    }

    else
    {
      v23 = v0[13];
      (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
      v24 = [v23 encodedRecipe];
      if (!v24)
      {
        if (one-time initialization token for generativeLogger != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        __swift_project_value_buffer(v29, generativeLogger);
        v30 = v2;
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v78 = v34;
          *v33 = 136315138;
          v35 = CanvasGenerationTool.nameAndPointerDescription.getter();
          v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v78);

          *(v33 + 4) = v37;
          _os_log_impl(&dword_1D38C4000, v31, v32, "%s returning (encodedRecipe is nil)", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v34);
          MEMORY[0x1DA6D0660](v34, -1, -1);
          MEMORY[0x1DA6D0660](v33, -1, -1);
        }

        v38 = v30[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState];
        if (v38 < 8 || v38 == 8)
        {
          v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v58 & 1) == 0)
          {
            v72 = v0[17];
            v71 = v0[18];
            v73 = v0[16];
            LOBYTE(v78) = 9;
            CanvasGenerationTool.magicGenerativeState.setter(&v78);
            lazy protocol witness table accessor for type CanvasGenerationToolError and conformance CanvasGenerationToolError();
            v74 = swift_allocError();
            *v75 = 0xD000000000000015;
            *(v75 + 8) = 0x80000001D4081AA0;
            *(v75 + 16) = 1;
            v0[11] = v74;
            CheckedContinuation.resume(throwing:)();

            (*(v72 + 8))(v71, v73);
            goto LABEL_13;
          }
        }

        else
        {
        }

        v59 = v30;
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();

        v62 = os_log_type_enabled(v60, v61);
        v64 = v0[17];
        v63 = v0[18];
        v65 = v0[16];
        if (v62)
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *v66 = 136315138;
          v78 = v67;
          v68 = CanvasGenerationTool.nameAndPointerDescription.getter();
          v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v78);

          *(v66 + 4) = v70;
          _os_log_impl(&dword_1D38C4000, v60, v61, "%s returning (image generation has already failed)", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v67);
          MEMORY[0x1DA6D0660](v67, -1, -1);
          MEMORY[0x1DA6D0660](v66, -1, -1);
        }

        else
        {
        }

        (*(v64 + 8))(v63, v65);
        goto LABEL_13;
      }

      v25 = v24;
      v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      if (*(v2 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState) == 8)
      {
        outlined copy of Data._Representation(v26, v28);
      }

      else
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of Data._Representation(v26, v28);

        if ((v39 & 1) == 0)
        {
          v53 = v0[17];
          v54 = v0[18];
          v55 = v0[16];
          v56 = v0[14];
          LOBYTE(v78) = 8;
          CanvasGenerationTool.magicGenerativeState.setter(&v78);
          v0[8] = v56;
          v0[9] = v26;
          v0[10] = v28;
          v57 = v56;
          CheckedContinuation.resume(returning:)();
          outlined consume of Data._Representation(v26, v28);

          (*(v53 + 8))(v54, v55);
          goto LABEL_13;
        }
      }

      if (one-time initialization token for generativeLogger != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, generativeLogger);
      v41 = v2;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      v44 = os_log_type_enabled(v42, v43);
      v46 = v0[17];
      v45 = v0[18];
      v47 = v0[16];
      if (v44)
      {
        v76 = v28;
        v48 = swift_slowAlloc();
        v77 = v47;
        v78 = swift_slowAlloc();
        v49 = v78;
        *v48 = 136315138;
        v50 = CanvasGenerationTool.nameAndPointerDescription.getter();
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v78);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_1D38C4000, v42, v43, "%s returning (image has been generated already)", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x1DA6D0660](v49, -1, -1);
        MEMORY[0x1DA6D0660](v48, -1, -1);

        outlined consume of Data._Representation(v26, v76);
        outlined consume of Data._Representation(v26, v76);

        (*(v46 + 8))(v45, v77);
      }

      else
      {
        outlined consume of Data._Representation(v26, v28);
        outlined consume of Data._Representation(v26, v28);

        (*(v46 + 8))(v45, v47);
      }
    }
  }

  else
  {
    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, generativeLogger);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v78 = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x80000001D4081A50, &v78);
      _os_log_impl(&dword_1D38C4000, v17, v18, "%s returning (self is nil)", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1DA6D0660](v20, -1, -1);
      MEMORY[0x1DA6D0660](v19, -1, -1);
    }
  }

LABEL_13:

  v21 = v0[1];

  return v21();
}

uint64_t closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMd, &_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMR);
  v4[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGMd, &_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGMR);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:), v7, v6);
}

uint64_t closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:)()
{
  v43 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[11];
    v4 = v0[12];
    v5 = v0[10];
    v6 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_continuation;
    swift_beginAccess();
    outlined init with copy of CheckedContinuation<ImageWithEncodedRecipe, Error>?(v2 + v6, v5);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      outlined destroy of CheckedContinuation<ImageWithEncodedRecipe, Error>?(v0[10]);
      if (one-time initialization token for generativeLogger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, generativeLogger);
      v8 = v2;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v42 = v12;
        *v11 = 136315138;
        v13 = CanvasGenerationTool.nameAndPointerDescription.getter();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v42);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_1D38C4000, v9, v10, "%s returning (continuation is nil)", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x1DA6D0660](v12, -1, -1);
        MEMORY[0x1DA6D0660](v11, -1, -1);
      }
    }

    else
    {
      (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
      if (*(v2 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState) == 7)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          v36 = v0[12];
          v35 = v0[13];
          v37 = v0[11];
          LOBYTE(v42) = 7;
          CanvasGenerationTool.magicGenerativeState.setter(&v42);
          lazy protocol witness table accessor for type CanvasGenerationToolError and conformance CanvasGenerationToolError();
          v38 = swift_allocError();
          *v39 = 0;
          *(v39 + 8) = 0;
          *(v39 + 16) = 2;
          v0[8] = v38;
          CheckedContinuation.resume(throwing:)();

          (*(v36 + 8))(v35, v37);
          goto LABEL_22;
        }
      }

      if (one-time initialization token for generativeLogger != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, generativeLogger);
      v23 = v2;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      v26 = os_log_type_enabled(v24, v25);
      v28 = v0[12];
      v27 = v0[13];
      v29 = v0[11];
      if (v26)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 136315138;
        v42 = v31;
        v32 = CanvasGenerationTool.nameAndPointerDescription.getter();
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v42);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_1D38C4000, v24, v25, "%s returning (continuation has been cancelled already)", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x1DA6D0660](v31, -1, -1);
        MEMORY[0x1DA6D0660](v30, -1, -1);

        (*(v28 + 8))(v27, v29);
      }

      else
      {

        (*(v28 + 8))(v27, v29);
      }
    }
  }

  else
  {
    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, generativeLogger);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v42 = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x80000001D4081A50, &v42);
      _os_log_impl(&dword_1D38C4000, v17, v18, "%s returning (self is nil)", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1DA6D0660](v20, -1, -1);
      MEMORY[0x1DA6D0660](v19, -1, -1);
    }
  }

LABEL_22:

  v40 = v0[1];

  return v40();
}

uint64_t specialized CanvasGenerationTool.magicPaperViewControllerViewDidAppear(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, generativeLogger);
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315394;
    v10 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v20);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x80000001D4081AF0, &v20);
    _os_log_impl(&dword_1D38C4000, v6, v7, "%s - %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v9, -1, -1);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidAppear(_:), v16);
}

uint64_t specialized CanvasGenerationTool.magicPaperViewControllerViewDidDisappear(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, generativeLogger);
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315394;
    v10 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v20);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x80000001D4081AC0, &v20);
    _os_log_impl(&dword_1D38C4000, v6, v7, "%s - %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v9, -1, -1);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidDisappear(_:), v16);
}

uint64_t specialized CanvasGenerationTool.magicPaperViewControllerDidCancel(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, generativeLogger);
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315394;
    v10 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v20);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001D4081A20, &v20);
    _os_log_impl(&dword_1D38C4000, v6, v7, "%s - %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v9, -1, -1);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:), v16);
}

uint64_t partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:)(a1, v4, v5, v6);
}

uint64_t outlined init with copy of CheckedContinuation<ImageWithEncodedRecipe, Error>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMd, &_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CheckedContinuation<ImageWithEncodedRecipe, Error>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMd, &_sScCy8PaperKit22ImageWithEncodedRecipeVs5Error_pGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CanvasGenerationToolError and conformance CanvasGenerationToolError()
{
  result = lazy protocol witness table cache variable for type CanvasGenerationToolError and conformance CanvasGenerationToolError;
  if (!lazy protocol witness table cache variable for type CanvasGenerationToolError and conformance CanvasGenerationToolError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasGenerationToolError and conformance CanvasGenerationToolError);
  }

  return result;
}

uint64_t partial apply for closure #1 in CanvasGenerationTool.magicPaperViewController(_:didGenerate:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in CanvasGenerationTool.magicPaperViewController(_:didGenerate:)(a1, v4, v5, v6, v7, v8);
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidDisappear(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidDisappear(_:)(a1, v4, v5, v6);
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidAppear(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in CanvasGenerationTool.magicPaperViewControllerViewDidAppear(_:)(a1, v4, v5, v6);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GraphableVariablesView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for GraphableVariablesView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t one-time initialization function for labelFont()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for Font.Design();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = static Font.system(size:weight:design:)();
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v2, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  static GraphableVariablesView.labelFont = v4;
  return result;
}

uint64_t GraphableVariablesView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd, &_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMR);
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  v6 = specialized Collection.count.getter();

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAHyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAHyAHyAHyAHyAA6ButtonVyAA012_ConditionalJ0VyAcAE15dynamicTypeSizeyQrAA07DynamictU0OFQOyAA5ImageV_Qo_AHyA1_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameO0VGAPGAA01_J13ShapeModifierVyAA9RectangleVGGAA31AccessibilityAttachmentModifierVGtGGAPG_Qo_Md, &_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAHyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAHyAHyAHyAHyAA6ButtonVyAA012_ConditionalJ0VyAcAE15dynamicTypeSizeyQrAA07DynamictU0OFQOyAA5ImageV_Qo_AHyA1_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameO0VGAPGAA01_J13ShapeModifierVyAA9RectangleVGGAA31AccessibilityAttachmentModifierVGtGGAPG_Qo_MR);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA0G0PAAE15dynamicTypeSizeyQrAA07DynamicoP0OFQOyAA5ImageV_Qo_ACyAzA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameJ0VGAKGAA01_dxV0VyAA9RectangleVGGAA023AccessibilityAttachmentV0VGtGGAKGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA0G0PAAE15dynamicTypeSizeyQrAA07DynamicoP0OFQOyAA5ImageV_Qo_ACyAzA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameJ0VGAKGAA01_dxV0VyAA9RectangleVGGAA023AccessibilityAttachmentV0VGtGGAKGMR);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    return ForEach<>.init(_:id:content:)();
  }

  return result;
}

double closure #1 in GraphableVariablesView.body.getter@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA0G0PAAE15dynamicTypeSizeyQrAA07DynamicoP0OFQOyAA5ImageV_Qo_ACyAzA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameJ0VGAKGAA01_dxV0VyAA9RectangleVGGAA023AccessibilityAttachmentV0VGtGGAKGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA0G0PAAE15dynamicTypeSizeyQrAA07DynamicoP0OFQOyAA5ImageV_Qo_ACyAzA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameJ0VGAKGAA01_dxV0VyAA9RectangleVGGAA023AccessibilityAttachmentV0VGtGGAKGMR);
  MEMORY[0x1EEE9AC00](v44);
  v40 = (&v40 - v9);
  v10 = *a1;
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd, &_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMR);
  MEMORY[0x1DA6CA790](&v46);
  v12 = v46;
  swift_getKeyPath();
  v47 = v12;
  lazy protocol witness table accessor for type GraphableExpressionState and conformance GraphableExpressionState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v12 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable);
  v14 = *(v12 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable + 8);

  v41 = a2;
  v42 = a3;
  v47 = a2;
  v48 = a3;
  v43 = a4;
  v49 = a4;
  MEMORY[0x1DA6CA790](&v46, v11);
  v15 = v46;
  swift_getKeyPath();
  v47 = v15;
  v16 = v15 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState___observationRegistrar;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v15 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariables);

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v10 >= *(v17 + 16))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_11;
  }

  v18 = v17 + 16 * v10;
  v16 = *(v18 + 32);
  v15 = *(v18 + 40);

  if (v14)
  {
    if (v13 == v16 && v14 == v15)
    {
      LOBYTE(v13) = 1;
    }

    else
    {
      LOBYTE(v13) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  if (one-time initialization token for paperKitBundle != -1)
  {
    goto LABEL_14;
  }

LABEL_11:
  v50._object = 0x80000001D4081B40;
  v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v19.value._object = 0xEB00000000656C62;
  v20._object = 0x80000001D4081B20;
  v50._countAndFlagsBits = 0xD00000000000004CLL;
  v20._countAndFlagsBits = 0xD000000000000011;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, paperKitBundle, v21, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D4058CF0;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v22 + 32) = v16;
  *(v22 + 40) = v15;

  v23 = String.init(format:_:)();
  v25 = v24;

  v47 = v23;
  v48 = v25;
  v26 = static VerticalAlignment.center.getter();
  v27 = v40;
  *v40 = v26;
  *(v27 + 8) = 0;
  *(v27 + 16) = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA08_PaddingG0VG_AA6SpacerVAKyAKyAKyAKyAA6ButtonVyAA012_ConditionalJ0VyAA0D0PAAE15dynamicTypeSizeyQrAA07DynamicqR0OFQOyAA5ImageV_Qo_AKyA2_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameG0VGAOGAA01_jzX0VyAA9RectangleVGGAA023AccessibilityAttachmentX0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA08_PaddingG0VG_AA6SpacerVAKyAKyAKyAKyAA6ButtonVyAA012_ConditionalJ0VyAA0D0PAAE15dynamicTypeSizeyQrAA07DynamicqR0OFQOyAA5ImageV_Qo_AKyA2_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameG0VGAOGAA01_jzX0VyAA9RectangleVGGAA023AccessibilityAttachmentX0VGtGGMR);
  v29 = v41;
  v30 = v42;
  v31 = v43;
  specialized closure #1 in closure #1 in GraphableVariablesView.body.getter(&v47, v13 & 1, v41, v42, v43, v16, v15, v27 + *(v28 + 44));
  v32 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v33 = v27 + *(v44 + 36);
  *v33 = v32;
  *(v33 + 8) = v34;
  *(v33 + 16) = v35;
  *(v33 + 24) = v36;
  *(v33 + 32) = v37;
  *(v33 + 40) = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = v13 & 1;
  *(v38 + 24) = v29;
  *(v38 + 32) = v30;
  *(v38 + 40) = v31;
  *(v38 + 48) = v16;
  *(v38 + 56) = v15;
  lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();

  View.onTapGesture(count:perform:)();

  outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA0G0PAAE15dynamicTypeSizeyQrAA07DynamicoP0OFQOyAA5ImageV_Qo_ACyAzA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameJ0VGAKGAA01_dxV0VyAA9RectangleVGGAA023AccessibilityAttachmentV0VGtGGAKGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA0G0PAAE15dynamicTypeSizeyQrAA07DynamicoP0OFQOyAA5ImageV_Qo_ACyAzA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameJ0VGAKGAA01_dxV0VyAA9RectangleVGGAA023AccessibilityAttachmentV0VGtGGAKGMR);

  return result;
}

uint64_t specialized getter of attrString #1 in closure #1 in GraphableVariablesView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = type metadata accessor for AttributedString();
  v96 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v94 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMR);
  MEMORY[0x1EEE9AC00](v85);
  v83 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v82 = v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, _s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v80 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  v103 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v86 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v84 = v80 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v98 = v80 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGSgMd, &_sSny10Foundation16AttributedStringV5IndexVGSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v95 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v81 = v80 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v87 = v80 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v80 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v80 - v28;
  v30 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v97 = a1;

  AttributeContainer.init()();
  v92 = v32;
  AttributedString.init(_:attributes:)();
  v33 = *(v12 + 56);
  v100 = v29;
  v80[1] = v12 + 56;
  v80[0] = v33;
  v33(v29, 1, 1, v11);
  v106 = 91;
  v107 = 0xE100000000000000;
  v34 = type metadata accessor for Locale();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v99 = v35 + 56;
  v36(v10, 1, 1, v34);
  lazy protocol witness table accessor for type GraphableExpressionState and conformance GraphableExpressionState(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  v37 = lazy protocol witness table accessor for type String and conformance String();
  v102 = a2;
  AttributedStringProtocol.range<A>(of:options:locale:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s10Foundation6LocaleVSgMd, _s10Foundation6LocaleVSgMR);
  v38 = *(v12 + 48);
  v39 = v103;
  v101 = v12 + 48;
  v40 = v38(v26, 1);
  v93 = v38;
  v91 = v34;
  v90 = v36;
  v89 = v10;
  v88 = v37;
  if (v40 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_sSny10Foundation16AttributedStringV5IndexVGSgMd, &_sSny10Foundation16AttributedStringV5IndexVGSgMR);
    v41 = v97;
  }

  else
  {
    outlined init with take of Range<AttributedString.Index>(v26, v98, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
    v106 = 93;
    v107 = 0xE100000000000000;
    v36(v10, 1, 1, v34);
    v42 = v87;
    AttributedStringProtocol.range<A>(of:options:locale:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s10Foundation6LocaleVSgMd, _s10Foundation6LocaleVSgMR);
    v43 = v39;
    if ((v38)(v42, 1, v39) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v98, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_sSny10Foundation16AttributedStringV5IndexVGSgMd, &_sSny10Foundation16AttributedStringV5IndexVGSgMR);
      v41 = v97;
    }

    else
    {
      v44 = v84;
      outlined init with take of Range<AttributedString.Index>(v42, v84, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
      v45 = *(v39 + 36);
      v46 = type metadata accessor for AttributedString.Index();
      lazy protocol witness table accessor for type GraphableExpressionState and conformance GraphableExpressionState(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
      v47 = dispatch thunk of static Comparable.<= infix(_:_:)();
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v100, &_sSny10Foundation16AttributedStringV5IndexVGSgMd, &_sSny10Foundation16AttributedStringV5IndexVGSgMR);
      v41 = v97;
      if ((v47 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v49 = *(v46 - 8);
      v50 = v49[2];
      v51 = v82;
      v52 = v98;
      v50(v82, v98, v46);
      outlined destroy of StocksKitCurrencyCache.Provider?(v52, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
      v53 = v85;
      v50((v51 + *(v85 + 48)), v44 + v45, v46);
      outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
      v54 = v83;
      outlined init with copy of Date?(v51, v83, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMR);
      v98 = *(v53 + 48);
      v55 = v49[4];
      v56 = v81;
      v55(v81, v54, v46);
      v57 = v49[1];
      v57(v54 + v98, v46);
      outlined init with take of Range<AttributedString.Index>(v51, v54, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMR);
      v55((v56 + *(v43 + 36)), v54 + *(v85 + 48), v46);
      v57(v54, v46);
      (v80[0])(v56, 0, 1, v43);
      outlined init with take of Range<AttributedString.Index>(v56, v100, &_sSny10Foundation16AttributedStringV5IndexVGSgMd, &_sSny10Foundation16AttributedStringV5IndexVGSgMR);
    }
  }

  swift_beginAccess();
  v58 = v41[1];
  v106 = *v41;
  v107 = v58;
  v108 = 91;
  v109 = 0xE100000000000000;
  v59 = v89;
  v60 = v91;
  v61 = v90;
  v90(v89, 1, 1, v91);

  v99 = StringProtocol.range<A>(of:options:range:locale:)();
  v63 = v62;
  outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s10Foundation6LocaleVSgMd, _s10Foundation6LocaleVSgMR);

  if ((v63 & 1) == 0)
  {
    swift_beginAccess();
    v64 = v41[1];
    v106 = *v41;
    v107 = v64;
    v108 = 93;
    v109 = 0xE100000000000000;
    v61(v59, 1, 1, v60);

    StringProtocol.range<A>(of:options:range:locale:)();
    v66 = v65;
    outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s10Foundation6LocaleVSgMd, _s10Foundation6LocaleVSgMR);

    if ((v66 & 1) == 0)
    {
      v108 = 32;
      v109 = 0xE100000000000000;
      swift_beginAccess();
      lazy protocol witness table accessor for type String and conformance String();
      String.replaceSubrange<A>(_:with:)();
      v108 = 32;
      v109 = 0xE100000000000000;
      String.replaceSubrange<A>(_:with:)();
      swift_endAccess();
    }
  }

  swift_beginAccess();

  AttributeContainer.init()();
  v67 = v94;
  AttributedString.init(_:attributes:)();
  v68 = v96;
  v69 = v102;
  v70 = v104;
  (*(v96 + 8))(v102, v104);
  (*(v68 + 32))(v69, v67, v70);
  if (one-time initialization token for labelFont != -1)
  {
    swift_once();
  }

  v106 = static GraphableVariablesView.labelFont;
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute();

  AttributedString.subscript.setter();
  v71 = objc_opt_self();
  v72 = [v71 secondaryLabelColor];
  v106 = Color.init(uiColor:)();
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute();
  AttributedString.subscript.setter();
  v73 = v100;
  v74 = v95;
  outlined init with copy of Date?(v100, v95, &_sSny10Foundation16AttributedStringV5IndexVGSgMd, &_sSny10Foundation16AttributedStringV5IndexVGSgMR);
  if (v93(v74, 1, v103) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_sSny10Foundation16AttributedStringV5IndexVGSgMd, &_sSny10Foundation16AttributedStringV5IndexVGSgMR);
    v73 = v74;
  }

  else
  {
    v75 = v74;
    v76 = v86;
    outlined init with take of Range<AttributedString.Index>(v75, v86, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
    v77 = [v71 labelColor];
    v78 = Color.init(uiColor:)();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR, MEMORY[0x1E69E66D8]);
    v79 = AttributedString.subscript.modify();
    v105 = v78;
    AttributedSubstring.subscript.setter();
    v79(&v106, 0);
    outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  }

  return outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_sSny10Foundation16AttributedStringV5IndexVGSgMd, &_sSny10Foundation16AttributedStringV5IndexVGSgMR);
}

uint64_t specialized closure #1 in closure #1 in GraphableVariablesView.body.getter@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v75 = a6;
  v77 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGMR);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v73 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMR);
  MEMORY[0x1EEE9AC00](v76);
  v83 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v74 = &v73 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v82 = &v73 - v21;
  v22 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v22 - 8);
  specialized getter of attrString #1 in closure #1 in GraphableVariablesView.body.getter(a1, &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = Text.init(_:)();
  v78 = v25;
  v79 = v24;
  v27 = v26;
  v81 = v28;
  v80 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v84 = v27 & 1;
  LOBYTE(v90._countAndFlagsBits) = v27 & 1;
  LOBYTE(v86) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = a2;
  *(v37 + 24) = a3;
  *(v37 + 32) = a4;
  v38 = v75;
  *(v37 + 40) = a5;
  *(v37 + 48) = v38;
  *(v37 + 56) = a7;
  LODWORD(v75) = a2;
  v85 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA08ModifiedD0VyAkA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA08ModifiedD0VyAkA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMR);
  lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance <> _ConditionalContent<A, B>();
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v39 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGMR) + 36)];
  v40 = v102;
  *v39 = v101;
  *(v39 + 1) = v40;
  *(v39 + 2) = v103;
  LOBYTE(a4) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGMR) + 36)];
  *v49 = a4;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  v16[*(v14 + 36)] = 0;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v50.value._object = 0xEB00000000656C62;
  v51._countAndFlagsBits = 0x64657463656C6553;
  isa = paperKitBundle.super.isa;
  v106._object = 0x80000001D4081B90;
  v51._object = 0xE800000000000000;
  v50.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  v106._countAndFlagsBits = 0xD000000000000028;
  v90 = NSLocalizedString(_:tableName:bundle:value:comment:)(v51, v50, paperKitBundle, v53, v106);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  v54 = v74;
  View.accessibilityLabel<A>(_:)();

  outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGMR);
  v72 = 0x80000001D4081B90;
  if (v75)
  {
    v55 = 0x64657463656C6553;
    v56 = 0xE800000000000000;
  }

  else
  {
    v55 = 0x656C655320746F4ELL;
    v56 = 0xEC00000064657463;
  }

  v57.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v57.value._object = 0xEB00000000656C62;
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  v59 = 0xD000000000000028;
  v90 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v55, v57, isa, v58, *(&v72 - 1));
  v60 = v82;
  ModifiedContent<>.accessibilityValue<A>(_:)();

  outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMR);
  v61 = v83;
  outlined init with copy of Date?(v60, v83, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMR);
  v62 = v78;
  v63 = v79;
  *&v86 = v79;
  *(&v86 + 1) = v78;
  LOBYTE(v87) = v84;
  *(&v87 + 1) = v105[0];
  DWORD1(v87) = *(v105 + 3);
  v64 = v81;
  *(&v87 + 1) = v81;
  v65 = v80;
  LOBYTE(v88) = v80;
  *(&v88 + 1) = *v104;
  DWORD1(v88) = *&v104[3];
  *(&v88 + 1) = v30;
  *&v89[0] = v32;
  *(&v89[0] + 1) = v34;
  *&v89[1] = v36;
  BYTE8(v89[1]) = 0;
  v66 = v86;
  v67 = v87;
  v68 = v77;
  *(v77 + 57) = *(v89 + 9);
  v69 = v89[0];
  *(v68 + 32) = v88;
  *(v68 + 48) = v69;
  *v68 = v66;
  *(v68 + 16) = v67;
  *(v68 + 80) = 0;
  *(v68 + 88) = 1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicmN0OFQOyAA5ImageV_Qo_ACyAvA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameG0VGAGGAA01_dvT0VyAA9RectangleVGGAA023AccessibilityAttachmentT0VGtMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicmN0OFQOyAA5ImageV_Qo_ACyAvA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameG0VGAGGAA01_dvT0VyAA9RectangleVGGAA023AccessibilityAttachmentT0VGtMR);
  outlined init with copy of Date?(v61, v68 + *(v70 + 64), &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMR);
  outlined init with copy of Date?(&v86, &v90, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMR);
  v90._countAndFlagsBits = v63;
  v90._object = v62;
  v91 = v84;
  *v92 = v105[0];
  *&v92[3] = *(v105 + 3);
  v93 = v64;
  v94 = v65;
  *v95 = *v104;
  *&v95[3] = *&v104[3];
  v96 = v30;
  v97 = v32;
  v98 = v34;
  v99 = v36;
  v100 = 0;
  return outlined destroy of StocksKitCurrencyCache.Provider?(&v90, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in GraphableVariablesView.body.getter(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v20 = a2;
    v21 = a3;
    v22 = a4;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd, &_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMR);
    MEMORY[0x1DA6CA790](&v19);
    v10 = v19;
    if (*(v19 + 24))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v20 = v10;
      lazy protocol witness table accessor for type GraphableExpressionState and conformance GraphableExpressionState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v19 + 24) = 0;
    }

    v20 = a2;
    v21 = a3;
    v22 = a4;
    MEMORY[0x1DA6CA790](&v19, v9);
    v15 = v19;
    v16 = (v19 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable);
    if (*(v19 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable + 8))
    {
      goto LABEL_8;
    }

    *v16 = 0;
    v16[1] = 0;
  }

  else
  {
    v20 = a2;
    v21 = a3;
    v22 = a4;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd, &_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMR);
    MEMORY[0x1DA6CA790](&v19);

    GraphableExpressionState.graphableVariable.setter(a5, a6);

    v20 = a2;
    v21 = a3;
    v22 = a4;
    MEMORY[0x1DA6CA790](&v19, v14);
    v15 = v19;
    if (*(v19 + 24) != 1)
    {
LABEL_8:
      v17 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v17);
      v20 = v15;
      lazy protocol witness table accessor for type GraphableExpressionState and conformance GraphableExpressionState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    *(v19 + 24) = 1;
  }
}

uint64_t closure #2 in closure #1 in closure #1 in GraphableVariablesView.body.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMR);
  MEMORY[0x1EEE9AC00](v26);
  v4 = &v24 - v3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamichI0OFQOyAA5ImageV_Qo_AA08ModifiedD0VyAmA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamichI0OFQOyAA5ImageV_Qo_AA08ModifiedD0VyAmA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGG_GMR);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v24 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrAA07DynamiceF0OFQOyAA5ImageV_Qo_Md, &_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrAA07DynamiceF0OFQOyAA5ImageV_Qo_MR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  v28 = Image.init(systemName:)();
  (*(v8 + 104))(v10, *MEMORY[0x1E697E708], v7);
  if (a1)
  {
    v15 = MEMORY[0x1E6981748];
    View.dynamicTypeSize(_:)();
    (*(v8 + 8))(v10, v7);

    (*(v12 + 16))(v6, v14, v11);
    swift_storeEnumTagMultiPayload();
    v28 = v15;
    v29 = MEMORY[0x1E6981710];
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v17 = MEMORY[0x1E6981748];
    v18 = MEMORY[0x1E6981710];
    View.dynamicTypeSize(_:)();
    (*(v8 + 8))(v10, v7);

    v19 = [objc_opt_self() separatorColor];
    v20 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v28 = v20;
    v22 = AnyShapeStyle.init<A>(_:)();
    v23 = &v4[*(v26 + 36)];
    *v23 = KeyPath;
    v23[1] = v22;
    outlined init with copy of Date?(v4, v6, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMR);
    swift_storeEnumTagMultiPayload();
    v28 = v17;
    v29 = v18;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMR);
  }
}

uint64_t closure #2 in closure #1 in GraphableVariablesView.body.getter(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd, &_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMR);
    MEMORY[0x1DA6CA790](&v14, v6);
    v7 = v14;
    v8 = (v14 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable);
    if (*(v14 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable + 8))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v15 = v7;
      lazy protocol witness table accessor for type GraphableExpressionState and conformance GraphableExpressionState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    *v8 = 0;
    v8[1] = 0;
  }

  else
  {
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd, &_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMR);
    MEMORY[0x1DA6CA790](&v14, v13);

    GraphableExpressionState.graphableVariable.setter(a5, a6);
  }
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA0G0PAAE15dynamicTypeSizeyQrAA07DynamicoP0OFQOyAA5ImageV_Qo_ACyAzA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameJ0VGAKGAA01_dxV0VyAA9RectangleVGGAA023AccessibilityAttachmentV0VGtGGAKGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA0G0PAAE15dynamicTypeSizeyQrAA07DynamicoP0OFQOyAA5ImageV_Qo_ACyAzA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameJ0VGAKGAA01_dxV0VyAA9RectangleVGGAA023AccessibilityAttachmentV0VGtGGAKGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAGyAGyAGyAGyAA6ButtonVyAA012_ConditionalG0VyAA0E0PAAE15dynamicTypeSizeyQrAA07DynamicoP0OFQOyAA5ImageV_Qo_AGyAzA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameJ0VGAKGAA01_gxV0VyAA9RectangleVGGAA023AccessibilityAttachmentV0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAGyAGyAGyAGyAA6ButtonVyAA012_ConditionalG0VyAA0E0PAAE15dynamicTypeSizeyQrAA07DynamicoP0OFQOyAA5ImageV_Qo_AGyAzA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameJ0VGAKGAA01_gxV0VyAA9RectangleVGGAA023AccessibilityAttachmentV0VGtGGMR, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA08ModifiedD0VyAkA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA08ModifiedD0VyAkA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMR);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMR);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMR, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamichI0OFQOyAA5ImageV_Qo_AA08ModifiedE0VyAmA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGMd, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamichI0OFQOyAA5ImageV_Qo_AA08ModifiedE0VyAmA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGMR, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t lazy protocol witness table accessor for type GraphableExpressionState and conformance GraphableExpressionState(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of Range<AttributedString.Index>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ForEach<Range<Int>, Int, <<opaque return type of View.onTapGesture(count:perform:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.onTapGesture(count:perform:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.onTapGesture(count:perform:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySnySiGSiAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleE0VyAKyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAKyAKyAKyAKyAA6ButtonVyAA012_ConditionalL0VyAfAE15dynamicTypeSizeyQrAA07DynamicvW0OFQOyAA5ImageV_Qo_AKyA4_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameQ0VGASGAA01_L13ShapeModifierVyAA9RectangleVGGAA31AccessibilityAttachmentModifierVGtGGASG_Qo_GMd, &_s7SwiftUI7ForEachVySnySiGSiAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleE0VyAKyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVAKyAKyAKyAKyAA6ButtonVyAA012_ConditionalL0VyAfAE15dynamicTypeSizeyQrAA07DynamicvW0OFQOyAA5ImageV_Qo_AKyA4_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameQ0VGASGAA01_L13ShapeModifierVyAA9RectangleVGGAA31AccessibilityAttachmentModifierVGtGGASG_Qo_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA0G0PAAE15dynamicTypeSizeyQrAA07DynamicoP0OFQOyAA5ImageV_Qo_ACyAzA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameJ0VGAKGAA01_dxV0VyAA9RectangleVGGAA023AccessibilityAttachmentV0VGtGGAKGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_AA6SpacerVACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA0G0PAAE15dynamicTypeSizeyQrAA07DynamicoP0OFQOyAA5ImageV_Qo_ACyAzA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA06_FrameJ0VGAKGAA01_dxV0VyAA9RectangleVGGAA023AccessibilityAttachmentV0VGtGGAKGMR);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.onTapGesture(count:perform:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

id TiledDocumentView.init(in:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC8PaperKit17TiledDocumentView_currentPaperView + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC8PaperKit17TiledDocumentView_canvasElementController;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for CanvasElementController()) init];
  *&v1[OBJC_IVAR____TtC8PaperKit17TiledDocumentView_toolPicker] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKit17TiledDocumentView_selectionInteractionDelegate] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKit17TiledDocumentView__paperAttachments] = MEMORY[0x1E69E7CC0];
  type metadata accessor for PKDrawingCoherence(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for TiledDocumentView();
  v5 = objc_msgSendSuper2(&v9, sel_initInScrollView_sixChannelBlending_defaultDrawingClass_readOnly_, a1, 1, ObjCClassFromMetadata, 0);
  v6 = [v5 canvasView];
  if (v6)
  {
    v7 = v6;
    [v6 setOpaque_];
  }

  [v5 setCanvasViewZOrderPolicy_];

  return v5;
}

Swift::Void __swiftcall TiledDocumentView.didMoveToWindow()()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for TiledDocumentView();
  objc_msgSendSuper2(&v10, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit33TiledSelectionInteractionDelegateCyAA0C12DocumentViewCGMd, &_s8PaperKit33TiledSelectionInteractionDelegateCyAA0C12DocumentViewCGMR);
    v3 = objc_allocWithZone(v2);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v9.receiver = v3;
    v9.super_class = v2;
    v4 = objc_msgSendSuper2(&v9, sel_init);
    v5 = OBJC_IVAR____TtC8PaperKit17TiledDocumentView_selectionInteractionDelegate;
    v6 = *&v0[OBJC_IVAR____TtC8PaperKit17TiledDocumentView_selectionInteractionDelegate];
    *&v0[OBJC_IVAR____TtC8PaperKit17TiledDocumentView_selectionInteractionDelegate] = v4;

    v7 = [v0 selectionInteraction];
    [v7 setDelegate_];
    v8 = &protocol witness table for TiledDocumentView;
  }

  else
  {
    v7 = [v0 selectionInteraction];
    [v7 setDelegate_];
    v8 = 0;
  }

  *(*&v0[OBJC_IVAR____TtC8PaperKit17TiledDocumentView_canvasElementController] + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate + 8) = v8;
  swift_unknownObjectWeakAssign();
  CanvasElementController.delegate.didset();
}

void specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v31 = *(a1 + 16);
  if (!v31)
  {
    return;
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v30 = a1 + 32;
  v3 = &_sSay8PaperKit9AnyCanvasCGMd;
  while (1)
  {
    v35 = v1;
    v4 = v30 + 16 * v1;
    v6 = *v4;
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v5 + 104);
    v9 = v6;
    v10 = v8(ObjectType, v5);

    v11 = v10 >> 62;
    if (v10 >> 62)
    {
      v12 = __CocoaSet.count.getter();
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v2 >> 62;
    if (v2 >> 62)
    {
      v29 = __CocoaSet.count.getter();
      v15 = v29 + v12;
      if (__OFADD__(v29, v12))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = v14 + v12;
      if (__OFADD__(v14, v12))
      {
        goto LABEL_32;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v13)
      {
        v16 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v15 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      __CocoaSet.count.getter();
      goto LABEL_15;
    }

    if (v13)
    {
      goto LABEL_14;
    }

LABEL_15:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v16 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v11)
    {
      break;
    }

    v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v18 >> 1) - v17) < v12)
    {
      goto LABEL_35;
    }

    v32 = v12;
    v33 = v2;
    v20 = v16 + 8 * v17 + 32;
    if (v11)
    {
      if (v19 < 1)
      {
        goto LABEL_37;
      }

      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [AnyCanvas] and conformance [A], v3, &_sSay8PaperKit9AnyCanvasCGMR, MEMORY[0x1E69E6340]);
      v21 = v3;
      for (i = 0; i != v19; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v21, &_sSay8PaperKit9AnyCanvasCGMR);
        v23 = specialized protocol witness for Collection.subscript.read in conformance [A](v34, i, v10);
        v25 = *v24;
        (v23)(v34, 0);
        v21 = v3;
        *(v20 + 8 * i) = v25;
      }
    }

    else
    {
      type metadata accessor for AnyCanvas(0);
      swift_arrayInitWithCopy();
      v21 = v3;
    }

    v3 = v21;

    v2 = v33;
    if (v32 >= 1)
    {
      v26 = *(v16 + 16);
      v27 = __OFADD__(v26, v32);
      v28 = v26 + v32;
      if (v27)
      {
        goto LABEL_36;
      }

      *(v16 + 16) = v28;
    }

LABEL_4:
    v1 = v35 + 1;
    if (v35 + 1 == v31)
    {
      return;
    }
  }

  v19 = __CocoaSet.count.getter();
  if (v19)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v12 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

{
  v34 = *(a1 + 16);
  if (!v34)
  {
    return;
  }

  v1 = 0;
  v33 = a1 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = &_sSaySo16PKAttachmentViewCGMd;
  while (1)
  {
    v4 = v33 + 16 * v1;
    v5 = *v4;
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v8 = v5;
    v9 = [v8 window];
    if (v9)
    {

      v10 = (*(v6 + 96))(ObjectType, v6);
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    v11 = v10 >> 62;
    if (v10 >> 62)
    {
      v12 = __CocoaSet.count.getter();
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v2 >> 62;
    if (v2 >> 62)
    {
      v31 = __CocoaSet.count.getter();
      v15 = v31 + v12;
      if (__OFADD__(v31, v12))
      {
LABEL_35:
        __break(1u);
        return;
      }
    }

    else
    {
      v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = v14 + v12;
      if (__OFADD__(v14, v12))
      {
        goto LABEL_35;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v13)
      {
        v16 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v15 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

LABEL_17:
      __CocoaSet.count.getter();
      goto LABEL_18;
    }

    if (v13)
    {
      goto LABEL_17;
    }

LABEL_18:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v16 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_19:
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v11)
    {
      break;
    }

    v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_3;
    }

LABEL_23:
    if (((v18 >> 1) - v17) < v12)
    {
      goto LABEL_38;
    }

    v35 = v2;
    v37 = v1;
    v22 = v16 + 8 * v17 + 32;
    v32 = v16;
    if (v11)
    {
      if (v19 < 1)
      {
        goto LABEL_40;
      }

      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [PKAttachmentView] and conformance [A], v3, &_sSaySo16PKAttachmentViewCGMR, MEMORY[0x1E69E6340]);
      for (i = 0; i != v19; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &_sSaySo16PKAttachmentViewCGMR);
        v24 = v3;
        v25 = specialized protocol witness for Collection.subscript.read in conformance [A](v36, i, v10);
        v27 = *v26;
        (v25)(v36, 0);
        v3 = v24;
        *(v22 + 8 * i) = v27;
      }
    }

    else
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, lazy cache variable for type metadata for PKAttachmentView, 0x1E69783F0);
      swift_arrayInitWithCopy();
    }

    v2 = v35;
    v1 = v37;
    if (v12 >= 1)
    {
      v28 = *(v32 + 16);
      v29 = __OFADD__(v28, v12);
      v30 = v28 + v12;
      if (v29)
      {
        goto LABEL_39;
      }

      *(v32 + 16) = v30;
    }

LABEL_4:
    if (++v1 == v34)
    {
      return;
    }
  }

  v20 = v16;
  v21 = __CocoaSet.count.getter();
  v16 = v20;
  v19 = v21;
  if (v21)
  {
    goto LABEL_23;
  }

LABEL_3:

  if (v12 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

{
  v34 = *(a1 + 16);
  if (!v34)
  {
    return;
  }

  v33 = a1 + 32;
  type metadata accessor for ReflowSpace();
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v3 = v33 + 168 * v1;
    v4 = *(v3 + 144);
    v36[8] = *(v3 + 128);
    v36[9] = v4;
    v37 = *(v3 + 160);
    v5 = *(v3 + 80);
    v36[4] = *(v3 + 64);
    v36[5] = v5;
    v6 = *(v3 + 112);
    v36[6] = *(v3 + 96);
    v36[7] = v6;
    v7 = *(v3 + 16);
    v36[0] = *v3;
    v36[1] = v7;
    v8 = *(v3 + 48);
    v36[2] = *(v3 + 32);
    v36[3] = v8;
    v9 = *&v36[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D405CEB0;
    v11 = swift_allocObject();
    *(v11 + 160) = 1;
    *(v11 + 152) = 0;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
    *(v11 + 80) = 0;
    outlined init with copy of ReflowTextLine(v36, v35);
    UnknownCanvasElementView.flags.modify();
    *(v11 + 88) = 0;
    *(v11 + 96) = 0;
    *(v11 + 104) = v12;
    *(v11 + 112) = v13;
    *(v11 + 120) = -1;
    *(v11 + 128) = 0;
    *(v11 + 136) = 0;
    *(v11 + 144) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = xmmword_1D40671D0;
    *(inited + 32) = v11;

    v35[0] = v9;
    specialized Array.append<A>(contentsOf:)(inited);
    v14 = v35[0];
    outlined destroy of ReflowTextLine(v36);
    v15 = v14 >> 62;
    if (v14 >> 62)
    {
      v16 = __CocoaSet.count.getter();
    }

    else
    {
      v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v2 >> 62;
    if (v2 >> 62)
    {
      v32 = __CocoaSet.count.getter();
      v19 = v32 + v16;
      if (__OFADD__(v32, v16))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v18 + v16;
      if (__OFADD__(v18, v16))
      {
        goto LABEL_32;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v17)
      {
        v20 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v19 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      __CocoaSet.count.getter();
      goto LABEL_15;
    }

    if (v17)
    {
      goto LABEL_14;
    }

LABEL_15:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v20 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v21 = *(v20 + 16);
    v22 = *(v20 + 24);
    if (v15)
    {
      break;
    }

    v23 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v22 >> 1) - v21) < v16)
    {
      goto LABEL_35;
    }

    v38 = v2;
    v24 = v20 + 8 * v21 + 32;
    if (v15)
    {
      if (v23 < 1)
      {
        goto LABEL_37;
      }

      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [ReflowElement] and conformance [A], &_sSay8PaperKit13ReflowElementCGMd, _sSay8PaperKit13ReflowElementCGMR, MEMORY[0x1E69E6340]);
      for (i = 0; i != v23; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit13ReflowElementCGMd, _sSay8PaperKit13ReflowElementCGMR);
        v26 = specialized protocol witness for Collection.subscript.read in conformance [A](v35, i, v14);
        v28 = *v27;

        (v26)(v35, 0);
        *(v24 + 8 * i) = v28;
      }
    }

    else
    {
      type metadata accessor for ReflowElement();
      swift_arrayInitWithCopy();
    }

    v2 = v38;
    if (v16 >= 1)
    {
      v29 = *(v20 + 16);
      v30 = __OFADD__(v29, v16);
      v31 = v29 + v16;
      if (v30)
      {
        goto LABEL_36;
      }

      *(v20 + 16) = v31;
    }

LABEL_4:
    if (++v1 == v34)
    {
      return;
    }
  }

  v23 = __CocoaSet.count.getter();
  if (v23)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v16 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t TiledDocumentView.paperAttachmentsIncludingSubAttachments.getter()
{
  v1 = v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v4 = v1;
    while (1)
    {
      v5 = [v4 superview];

      if (!v5)
      {
        break;
      }

      v4 = v5;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v3 = 0;
    goto LABEL_16;
  }

  v3 = v2;
  v4 = v1;
LABEL_7:

  v7 = v4;
  v8 = specialized UIView.firstDescendent(where:)(v3);

  if (!v8)
  {
LABEL_16:
    swift_beginAccess();

    specialized Sequence.flatMap<A>(_:)(v29);
    v31 = v30;

    return v31;
  }

  type metadata accessor for TiledTextView();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

    goto LABEL_16;
  }

  v10 = v9;
  v11 = v8;
  TiledTextView.paperAttachments.getter();
  v13 = v12;
  v14 = [v10 scrollView];
  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
LABEL_18:
    v32 = specialized Sequence.flatMap<A>(_:)(v15);

    aBlock[0] = v13;
    specialized Array.append<A>(contentsOf:)(v32);

    return aBlock[0];
  }

  v16 = v14;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17 || (v18 = v17, v19 = [v17 textContainer], v20 = objc_msgSend(v19, sel_textLayoutManager), v19, !v20))
  {

    goto LABEL_18;
  }

  v39 = v15;
  v21 = [v18 textStorage];
  v36 = [v21 length];

  v37 = &v34;
  v33[2] = &v39;
  v23 = [v18 textStorage];
  v35 = *MEMORY[0x1E69DB5F8];
  v24 = swift_allocObject();
  *(v24 + 16) = v18;
  *(v24 + 24) = 0;
  *(v24 + 32) = partial apply for closure #1 in TiledTextView.paperDocumentAttachments.getter;
  *(v24 + 40) = v33;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for closure #1 in UITextView.enumeratePaperDocumentTextAttachments(in:createIfNeeded:options:using:);
  *(v25 + 24) = v24;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_0;
  v26 = _Block_copy(aBlock);
  v27 = v16;

  [v23 enumerateAttribute:v35 inRange:0 options:v36 usingBlock:{0, v26}];

  _Block_release(v26);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if ((v27 & 1) == 0)
  {
    v15 = v39;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

char *specialized TiledPaperKitView.selectedOrMostVisibleAttachment()()
{
  TiledTextView.paperAttachments.getter();
  v2 = v1;
  v15 = v0;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_25:

    goto LABEL_26;
  }

LABEL_24:
  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
    goto LABEL_25;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1DA6CE0C0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      result = *(v2 + 8 * v4 + 32);
    }

    v6 = result;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (!*&result[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView])
    {
      __break(1u);
      return result;
    }

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v8);
    v10 = v9;

    v11 = *(v10 + 16);

    if (v11)
    {
      break;
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_25;
    }
  }

  v12 = [v6 window];
  v13 = [v15 window];
  if (v12)
  {
    if (v13)
    {
      v14 = v13;

      if (v12 == v14)
      {
        return v6;
      }
    }

    else
    {
    }
  }

  else
  {
    if (!v13)
    {
      return v6;
    }
  }

LABEL_26:

  return specialized TiledPaperKitView.mostVisibleAttachment()();
}

{
  swift_beginAccess();

  specialized Sequence.flatMap<A>(_:)(v1);
  v3 = v2;

  v16 = v0;
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_24:

    return specialized TiledPaperKitView.mostVisibleAttachment()();
  }

LABEL_23:
  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_24;
  }

LABEL_3:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1DA6CE0C0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      result = *(v3 + 8 * v5 + 32);
    }

    v7 = result;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (!*&result[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView])
    {
      __break(1u);
      return result;
    }

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v9);
    v11 = v10;

    v12 = *(v11 + 16);

    if (v12)
    {
      break;
    }

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_24;
    }
  }

  v13 = [v7 window];
  v14 = [v16 window];
  if (v13)
  {
    if (v14)
    {
      v15 = v14;

      if (v13 == v15)
      {
        return v7;
      }
    }

    else
    {
    }
  }

  else
  {
    if (!v14)
    {
      return v7;
    }
  }

  return specialized TiledPaperKitView.mostVisibleAttachment()();
}

id TiledDocumentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TiledDocumentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void protocol witness for TiledPaperKitView.currentPaperView.setter in conformance TiledDocumentView(void *a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_currentPaperView + 8) = a2;
  swift_unknownObjectWeakAssign();
}

uint64_t protocol witness for TiledPaperKitView.paperAttachments.getter in conformance TiledDocumentView()
{
  swift_beginAccess();

  specialized Sequence.flatMap<A>(_:)(v0);
  v2 = v1;

  return v2;
}

void *protocol witness for CanvasElementControllerDelegate.canvasElementControllerToolPicker.getter in conformance TiledDocumentView()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_toolPicker);
  v2 = v1;
  return v1;
}

id protocol witness for CanvasElementControllerDelegate.canvasElementControllerWindow(_:) in conformance TiledDocumentView()
{
  v1 = [v0 window];

  return v1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized TiledDocumentView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_currentPaperView + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC8PaperKit17TiledDocumentView_canvasElementController;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for CanvasElementController()) init];
  *(v0 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_toolPicker) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_selectionInteractionDelegate) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView__paperAttachments) = MEMORY[0x1E69E7CC0];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized TiledDocumentView._canvasView(_:didCompleteRefinementEntry:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, _s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = v48 - v9;
  [a1 duration];
  v12 = v11;
  v13 = [a1 refinedStrokes];
  type metadata accessor for PKStroke();
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = *(v14 + 16);

  v16 = [a1 originalStrokes];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = *(v17 + 16);

  v19 = [a1 refinedWordCount];
  [a1 tokenDeviation];
  v21 = v20;
  [a1 tokenTranslation];
  v23 = v22;
  v24 = [a1 locale];
  if (v24)
  {
    v25 = v24;
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = type metadata accessor for Locale();
    (*(*(v26 - 8) + 56))(v6, 0, 1, v26);
  }

  else
  {
    v26 = type metadata accessor for Locale();
    (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  }

  v27 = v15 - v18;
  outlined init with take of Locale?(v6, v10);
  type metadata accessor for Locale();
  v28 = *(v26 - 8);
  if ((*(v28 + 48))(v10, 1, v26) == 1)
  {
    outlined destroy of Locale?(v10);
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v29 = Locale.identifier.getter();
    v30 = v31;
    (*(v28 + 8))(v10, v26);
  }

  v34 = [a1 isAutoRefined] ^ 1;
  v49[0] = 0;
  v50 = 0;
  v51 = 0;
  v61 = 0u;
  v62 = 0u;
  v63 = 0;
  swift_unknownObjectWeakInit();
  v35 = v12 * 1000.0;
  v54 = v35;
  v57 = v34;
  v55 = v27;
  v56 = v19;
  v32 = v21;
  v59 = v32;
  v33 = v23;
  v60 = v33;
  v58 = [v2 isAutoRefineEnabled];
  swift_unknownObjectWeakAssign();
  v52 = v29;
  v53 = v30;
  Strong = swift_unknownObjectWeakLoadStrong();
  v37 = [objc_opt_self() activePencil];
  v38 = [v37 isConnected];

  v49[0] = v38;
  v48[1] = static Locale.preferredLanguages.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
  v39 = BidirectionalCollection<>.joined(separator:)();
  v41 = v40;

  v50 = v39;
  v51 = v41;
  if (Strong)
  {
    v42 = Strong;
    specialized MagicPaperUsageAnalyticsEvent.countGroups(in:)(v42);
  }

  v43 = v53;
  if (v53)
  {
    v44 = v52;

    v50 = v44;
    v51 = v43;
  }

  v63 = 1;
  v45 = MEMORY[0x1DA6CCED0](0xD000000000000024, 0x80000001D4081D40);
  if (specialized AnalyticsEvent.caEventPayload.getter())
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v46.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v46.super.isa = 0;
  }

  AnalyticsSendEvent();

  return outlined destroy of MagicPaperUsageAutoRefineEvent(v49);
}

uint64_t outlined init with take of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, _s10Foundation6LocaleVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, _s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GraphableExpressionState.graphableVariables.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

double GraphableExpressionState.graphableVariables.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariables;
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*(v1 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariables), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t GraphableExpressionState.graphableVariable.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable);

  return v1;
}

uint64_t GraphableExpressionState.enabled.setter(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double GraphableExpressionState.graphableVariable.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable);
  v6 = *(v2 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t GraphableExpressionState.expression.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t GraphableExpressionState.expression.setter(uint64_t a1)
{
  type metadata accessor for CalculateExpression();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CalculateExpression and conformance CalculateExpression, MEMORY[0x1E69921C8], MEMORY[0x1E69921D8]);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t GraphableExpressionState.enabled.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 24);
}

uint64_t GraphableExpressionState.color.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t GraphableExpressionState.color.setter(uint64_t a1)
{
  if (!*(v1 + 32))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = static Color.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 32) = a1;
}

uint64_t closure #1 in GraphableExpressionState.color.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
}

uint64_t GraphableExpressionState.id.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__id;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t key path getter for GraphableExpressionState.id : GraphableExpressionState@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__id;
  swift_beginAccess();
  v5 = type metadata accessor for UUID();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for GraphableExpressionState.id : GraphableExpressionState(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return GraphableExpressionState.id.setter(v5);
}

uint64_t GraphableExpressionState.id.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__id;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(a1, v4);
}

uint64_t closure #1 in GraphableExpressionState.id.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__id;
  swift_beginAccess();
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

void closure #1 in GraphableExpressionState.graphableVariable.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t GraphableExpressionState.shouldBeObserved.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__shouldBeObserved);
}

uint64_t GraphableExpressionState.shouldBeObserved.setter(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__shouldBeObserved) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__shouldBeObserved) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t GraphableExpressionState.expressionIndex.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t GraphableExpressionState.expressionIndex.setter(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t GraphableExpressionState.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GraphableExpressionState(uint64_t a1)
{
  result = type metadata singleton initialization cache for GraphableExpressionState;
  if (!type metadata singleton initialization cache for GraphableExpressionState)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for GraphableExpressionState(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance GraphableExpressionState@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__id;
  swift_beginAccess();
  v5 = type metadata accessor for UUID();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void partial apply for closure #1 in GraphableExpressionState.graphableVariables.setter()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariables) = *(v0 + 24);
}

void _s8PaperKit24GraphableExpressionStateC17graphableVariableSSSgvsyyXEfU_TA_0()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t partial apply for closure #1 in GraphableExpressionState.color.setter()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t specialized GraphableExpressionState.init(expression:enabled:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 32) = 0;
  v10 = (v2 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariable);
  *v10 = 0;
  v10[1] = 0;
  *(v2 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariables) = MEMORY[0x1E69E7CC0];
  ObservationRegistrar.init()();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  CalculateExpression.id.getter();
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__id, v9, v6);
  *(v2 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__shouldBeObserved) = 0;
  *(v2 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__expressionIndex) = 0;
  *(v2 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__numExpressions) = 1;
  v11 = *(CalculateExpression.graphableVariables.getter() + 16);

  if (v11 >= 2)
  {
    if (a2)
    {
      v12 = CalculateExpression.graphableVariable.getter();
      GraphableExpressionState.graphableVariable.setter(v12, v13);
    }

    v14 = CalculateExpression.graphableVariables.getter();
    GraphableExpressionState.graphableVariables.setter(v14);
  }

  return v3;
}

uint64_t partial apply for closure #1 in GraphableExpressionState.expression.setter()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t UnknownCanvasElementView.sharedCanvasElement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMd, &_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v12 = *&v1[direct field offset for UnknownCanvasElementView.canvasElementTag];
  v13 = 1;
  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v8], v4);
  Capsule.rootID.getter();
  (*(v5 + 8))(v7, v4);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
}

void *UnknownCanvasElementView.init(canvasElement:tag:canvas:parentCanvasElement:)(char *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v66 = a4;
  v67 = a3;
  v8 = type metadata accessor for CRKeyPath();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMd, &_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  v16 = direct field offset for UnknownCanvasElementView.displayedAsset;
  v17 = type metadata accessor for CRAsset();
  (*(*(v17 - 8) + 56))(&v5[v16], 1, 1, v17);
  *&v5[direct field offset for UnknownCanvasElementView.displayedMaxDimensionInPixels] = 0;
  *&v5[direct field offset for UnknownCanvasElementView.getImageTask] = 0;
  *&v5[direct field offset for UnknownCanvasElementView.appearanceStreamView] = 0;
  *&v5[direct field offset for UnknownCanvasElementView.canvasElementTag] = a2;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v18 = v72;
  v19 = v73;
  v20 = v74;
  v21 = v75;
  v22 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v23 = direct field offset for UnknownCanvasElementView.thumbnailView;
  *&v5[direct field offset for UnknownCanvasElementView.thumbnailView] = v22;
  [v22 setContentMode_];
  [*&v5[v23] setClipsToBounds_];
  v24 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v25 = direct field offset for UnknownCanvasElementView.questionMarkView;
  *&v5[direct field offset for UnknownCanvasElementView.questionMarkView] = v24;
  [v24 setContentMode_];
  [*&v5[v25] setClipsToBounds_];
  v26 = *&v5[v25];
  v27 = MEMORY[0x1DA6CCED0](0xD00000000000001ALL, 0x80000001D4081FA0);
  v28 = [objc_opt_self() systemImageNamed_];

  [v26 setImage_];
  v29 = [objc_opt_self() effectWithStyle_];
  v30 = objc_allocWithZone(MEMORY[0x1E69DD298]);
  v70 = v29;
  v31 = [v30 initWithEffect_];
  v32 = direct field offset for UnknownCanvasElementView.blurEffectView;
  *&v5[direct field offset for UnknownCanvasElementView.blurEffectView] = v31;
  [v31 setMaskView_];
  [*&v5[v32] setFrame_];
  v33 = *(v11 + 16);
  v71 = a1;
  v34 = a1;
  v35 = v11;
  v33(v15, v34, v10);
  v36 = MEMORY[0x1E69E7D40];
  (*(v11 + 56))(&v5[*((*MEMORY[0x1E69E7D40] & *v5) + 0x3F8)], 1, 1, v10);
  *&v5[*((*v36 & *v5) + 0x400)] = 0;
  *&v5[*((*v36 & *v5) + 0x408)] = 0;
  *&v5[*((*v36 & *v5) + 0x410)] = 0;
  *&v5[*((*v36 & *v5) + 0x418)] = 0;
  *&v5[*((*v36 & *v5) + 0x420)] = 0;
  v33(&v5[*((*v36 & *v5) + 0x3F0)], v15, v10);
  v37 = v66;
  v68 = v66;
  v38 = v67;
  v69 = v67;
  v39 = v38;
  v40 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(v38, v37, v18, v19, v20, v21);
  specialized CanvasElementView.setupAccessibility()();
  if (v39)
  {
    (*((*v36 & *v40) + 0x520))();
  }

  v41 = *(v35 + 8);
  v41(v15, v10);
  v42 = *(v40 + direct field offset for UnknownCanvasElementView.thumbnailView);
  v43 = v40;
  [v43 addSubview_];
  [v43 addSubview_];
  if (one-time initialization token for imageMissingBackgroundColor != -1)
  {
    swift_once();
  }

  [v43 setBackgroundColor_];
  v44 = MEMORY[0x1DA6CCED0](0xD000000000000028, 0x80000001D4081FC0);
  [v43 setAccessibilityIdentifier_];

  if (!*(v43 + direct field offset for UnknownCanvasElementView.appearanceStreamView) && (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (v49 = Strong, v50 = (*((*v36 & *Strong) + 0x9E8))(), v49, v50) && (v51 = *((*v36 & *v43) + 0x3F0), swift_beginAccess(), v52 = v43 + v51, v53 = v62, v33(v62, v52, v10), v54 = v63, Capsule.rootID.getter(), v41(v53, v10), v55 = [v50 annotations], type metadata accessor for PDFAnnotation(), v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v55, MEMORY[0x1EEE9AC00](v57), *(&v62 - 2) = v54, v45 = specialized Sequence.first(where:)(partial apply for closure #1 in PaperKitPDFPage.annotationFor(id:), (&v62 - 4), v56), v50, , (*(v64 + 8))(v54, v65), v45))
  {
    type metadata accessor for CanvasElementPDFAnnotation(0);
    v58 = swift_dynamicCastClass();
    if (v58 && (v59 = v58, [v58 hasAppearanceStream]))
    {
      objc_allocWithZone(type metadata accessor for CanvasElementPDFAnnotationAppearanceStreamView());
      v60 = v45;
      v61 = CanvasElementPDFAnnotationAppearanceStreamView.init(annotation:)(v59);
      [v43 addSubview_];
      v46 = v61;
      specialized UnknownCanvasElementView.appearanceStreamView.setter(v61);

      v45 = v46;
    }

    else
    {
      v46 = v43;
      v60 = v68;
    }
  }

  else
  {
    v45 = v43;
    v46 = v68;
  }

  v41(v71, v10);
  return v43;
}

void @objc UnknownCanvasElementView.init(coder:)(uint64_t a1)
{
  v2 = direct field offset for UnknownCanvasElementView.displayedAsset;
  v3 = type metadata accessor for CRAsset();
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  *(a1 + direct field offset for UnknownCanvasElementView.displayedMaxDimensionInPixels) = 0;
  *(a1 + direct field offset for UnknownCanvasElementView.getImageTask) = 0;
  *(a1 + direct field offset for UnknownCanvasElementView.appearanceStreamView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void UnknownCanvasElementView.__ivar_destroyer()
{
  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + direct field offset for UnknownCanvasElementView.displayedAsset, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);

  v1 = *(v0 + direct field offset for UnknownCanvasElementView.appearanceStreamView);
}

id UnknownCanvasElementView.__deallocating_deinit()
{
  if (*&v0[direct field offset for UnknownCanvasElementView.getImageTask])
  {

    MEMORY[0x1DA6CD3C0](v1, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for UnknownCanvasElementView(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id @objc UnknownCanvasElementView.__deallocating_deinit(char *a1)
{
  if (*&a1[direct field offset for UnknownCanvasElementView.getImageTask])
  {
    v2 = a1;

    MEMORY[0x1DA6CD3C0](v3, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  else
  {
    v4 = a1;
  }

  v6.receiver = a1;
  v6.super_class = type metadata accessor for UnknownCanvasElementView(0);
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

void @objc UnknownCanvasElementView.__ivar_destroyer(uint64_t a1)
{
  outlined destroy of StocksKitCurrencyCache.Provider?(a1 + direct field offset for UnknownCanvasElementView.displayedAsset, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);

  v2 = *(a1 + direct field offset for UnknownCanvasElementView.appearanceStreamView);
}

Swift::Void __swiftcall UnknownCanvasElementView.layoutSubviews()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMd, &_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v47 - v4;
  v6 = type metadata accessor for UnknownCanvasElementView(0);
  v53.receiver = v1;
  v53.super_class = v6;
  objc_msgSendSuper2(&v53, sel_layoutSubviews);
  v7 = *(v1 + direct field offset for UnknownCanvasElementView.thumbnailView);
  [v1 bounds];
  [v7 setFrame_];

  v8 = *(v1 + direct field offset for UnknownCanvasElementView.blurEffectView);
  [v1 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v1 bounds];
  v18 = v17 * 0.2;
  [v1 bounds];
  v20 = v19 * 0.2;
  v54.origin.x = v10;
  v54.origin.y = v12;
  v54.size.width = v14;
  v54.size.height = v16;
  v55 = CGRectInset(v54, v18, v20);
  [v8 setFrame_];
  v21 = *(v1 + direct field offset for UnknownCanvasElementView.questionMarkView);
  [v8 bounds];
  [v21 setFrame_];

  v22 = *(v1 + direct field offset for UnknownCanvasElementView.appearanceStreamView);
  if (v22)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v24 = v22;
    v49 = v24;
    if (Strong)
    {
      [Strong bounds];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v56.origin.x = v26;
      v56.origin.y = v28;
      v56.size.width = v30;
      v56.size.height = v32;
      v57 = CGRectIntegral(v56);
    }

    else
    {
      [v24 frame];
    }

    width = v57.size.width;
    height = v57.size.height;
    v35 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
    swift_beginAccess();
    v48 = *(v3 + 16);
    v36 = v48(v5, v1 + v35, v2);
    v47 = &v47;
    MEMORY[0x1EEE9AC00](v36);
    v37 = type metadata accessor for UnknownCanvasElement(0);
    *(&v47 - 4) = v37;
    v38 = lazy protocol witness table accessor for type UnknownCanvasElement and conformance UnknownCanvasElement(&lazy protocol witness table cache variable for type UnknownCanvasElement and conformance UnknownCanvasElement, type metadata accessor for UnknownCanvasElement, &protocol conformance descriptor for UnknownCanvasElement);
    *(&v47 - 3) = v38;
    *(&v47 - 2) = &protocol witness table for UnknownCanvasElement;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v39 = *(v3 + 8);
    v39(v5, v2);
    v40 = v52 - height;
    v41 = v48(v5, v1 + v35, v2);
    MEMORY[0x1EEE9AC00](v41);
    *(&v47 - 4) = v37;
    *(&v47 - 3) = v38;
    *(&v47 - 2) = &protocol witness table for UnknownCanvasElement;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v39(v5, v2);
    v42 = v50;
    v43 = v51;
    [v1 frame];
    v46 = v49;
    [v49 setFrame_];
  }
}

void @objc UnknownCanvasElementView.layoutSubviews()(void *a1)
{
  v1 = a1;
  UnknownCanvasElementView.layoutSubviews()();
}

uint64_t type metadata accessor for UnknownCanvasElementView(uint64_t a1)
{
  result = type metadata singleton initialization cache for UnknownCanvasElementView;
  if (!type metadata singleton initialization cache for UnknownCanvasElementView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for UnknownCanvasElementView(uint64_t a1)
{
  type metadata accessor for CRAsset?(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

Swift::Void __swiftcall UnknownCanvasElementView.updateUI()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v106 = &v101 - v3;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSg_ADtMd, &_s9Coherence7CRAssetVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v107);
  v110 = &v101 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v112 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v104 = &v101 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v111 = &v101 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v113 = &v101 - v12;
  v115 = type metadata accessor for CRAsset();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v108 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v116 = &v101 - v15;
  v109 = type metadata accessor for UnknownCanvasElement(0);
  MEMORY[0x1EEE9AC00](v109);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMd, &_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMR);
  v18 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v122 = &v101 - v22;
  specialized CanvasElementView.updateGestures()();
  specialized CanvasElementView.updateFrame()();
  Strong = swift_unknownObjectWeakLoadStrong();
  v24 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v25 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x928))();
  }

  v26 = *((*v24 & *v1) + 0x3F0);
  swift_beginAccess();
  v27 = *(v18 + 16);
  v29 = v122;
  v28 = v123;
  v27(v122, &v1[v26], v123);
  Capsule.root.getter();
  outlined destroy of UnknownCanvasElement(v17);
  v30 = *(v18 + 8);
  v30(v29, v28);
  v118 = v26;
  v121 = v27;
  v117 = v18 + 16;
  v27(v20, &v1[v26], v28);
  swift_getKeyPath();
  v31 = v113;
  Capsule.subscript.getter();

  v119 = v30;
  v120 = v18 + 8;
  v30(v20, v28);
  v32 = v114;
  v33 = *(v114 + 48);
  v34 = v115;
  v35 = &unk_1EC7C3000;
  v36 = &unk_1EC7C3000;
  if (v33(v31, 1, v115) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
    [*&v1[direct field offset for UnknownCanvasElementView.thumbnailView] setImage_];
    v37 = 0;
    v38 = v1;
    goto LABEL_26;
  }

  v39 = *(v32 + 32);
  v40 = v116;
  v103 = v32 + 32;
  v102 = v39;
  v39(v116, v31, v34);
  [v1 bounds];
  Width = CGRectGetWidth(v127);
  [v1 bounds];
  Height = CGRectGetHeight(v128);
  if (Width > Height)
  {
    v43 = Width;
  }

  else
  {
    v43 = Height;
  }

  v44 = [v1 window];
  v38 = v1;
  if (v44)
  {
    v45 = v44;
    v46 = [v44 screen];

    [v46 scale];
    v48 = v47;
  }

  else
  {
    v48 = 1.0;
  }

  v49 = v110;
  v50 = v111;
  v51 = v43 * v48;
  if (COERCE__INT64(fabs(v43 * v48)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v51 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v51 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v113 = v51;
  v101 = *(v32 + 16);
  v101(v111, v40, v34);
  (*(v32 + 56))(v50, 0, 1, v34);
  v52 = direct field offset for UnknownCanvasElementView.displayedAsset;
  swift_beginAccess();
  v53 = *(v107 + 48);
  outlined init with copy of CRAsset?(v50, v49);
  outlined init with copy of CRAsset?(&v38[v52], v49 + v53);
  if (v33(v49, 1, v34) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
    if (v33(v49 + v53, 1, v34) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
      v54 = v116;
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v55 = v104;
  outlined init with copy of CRAsset?(v49, v104);
  if (v33(v49 + v53, 1, v34) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v111, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
    (*(v32 + 8))(v55, v34);
LABEL_19:
    outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9Coherence7CRAssetVSg_ADtMd, &_s9Coherence7CRAssetVSg_ADtMR);
    v54 = v116;
LABEL_23:
    v111 = direct field offset for UnknownCanvasElementView.getImageTask;
    if (*&v38[direct field offset for UnknownCanvasElementView.getImageTask])
    {

      MEMORY[0x1DA6CD3C0](v60, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    }

    v61 = type metadata accessor for TaskPriority();
    v62 = v106;
    (*(*(v61 - 8) + 56))(v106, 1, 1, v61);
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v64 = v108;
    v101(v108, v54, v34);
    v65 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v66 = (v105 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    *(v67 + 16) = 0;
    *(v67 + 24) = 0;
    v102(v67 + v65, v64, v34);
    v37 = v113;
    *(v67 + v66) = v113;
    *(v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = v63;
    v68 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v62, &async function pointer to partial apply for closure #1 in UnknownCanvasElementView.updateUI(), v67);
    outlined destroy of StocksKitCurrencyCache.Provider?(v62, &_sScPSgMd, &_sScPSgMR);
    (*(v32 + 8))(v116, v34);
    *&v38[v111] = v68;

    v36 = &unk_1EC7C3000;
    v35 = &unk_1EC7C3000;
    goto LABEL_26;
  }

  v56 = (v49 + v53);
  v57 = v108;
  v102(v108, v56, v34);
  lazy protocol witness table accessor for type UnknownCanvasElement and conformance UnknownCanvasElement(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995420]);
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();
  v59 = *(v32 + 8);
  v59(v57, v34);
  outlined destroy of StocksKitCurrencyCache.Provider?(v111, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  v59(v55, v34);
  outlined destroy of StocksKitCurrencyCache.Provider?(v110, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  v54 = v116;
  if ((v58 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  if (*&v38[direct field offset for UnknownCanvasElementView.displayedMaxDimensionInPixels] != v113)
  {
    goto LABEL_23;
  }

  (*(v32 + 8))(v54, v34);
  v36 = &unk_1EC7C3000;
  v35 = &unk_1EC7C3000;
  v37 = v113;
LABEL_26:
  *&v38[v35[400]] = v37;
  v70 = v122;
  v69 = v123;
  v121(v122, &v38[v118], v123);
  swift_getKeyPath();
  v71 = v112;
  Capsule.subscript.getter();

  v119(v70, v69);
  v72 = v36[399];
  swift_beginAccess();
  outlined assign with take of CRAsset?(v71, &v38[v72]);
  swift_endAccess();
  v73 = *&v38[direct field offset for UnknownCanvasElementView.appearanceStreamView];
  if (v73)
  {
    v74 = swift_unknownObjectWeakLoadStrong();
    v75 = v73;
    v116 = v75;
    if (v74)
    {
      [v74 bounds];
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v83 = v82;

      v129.origin.x = v77;
      v129.origin.y = v79;
      v129.size.width = v81;
      v129.size.height = v83;
      v130 = CGRectIntegral(v129);
    }

    else
    {
      [v75 frame];
    }

    v84 = v130.size.width;
    v85 = v130.size.height;
    v86 = v118;
    v88 = v122;
    v87 = v123;
    v89 = (v121)(v122, &v38[v118], v123, v130.origin, *&v130.origin.y);
    v115 = v38;
    MEMORY[0x1EEE9AC00](v89);
    v90 = v109;
    *(&v101 - 4) = v109;
    v91 = lazy protocol witness table accessor for type UnknownCanvasElement and conformance UnknownCanvasElement(&lazy protocol witness table cache variable for type UnknownCanvasElement and conformance UnknownCanvasElement, type metadata accessor for UnknownCanvasElement, &protocol conformance descriptor for UnknownCanvasElement);
    *(&v101 - 3) = v91;
    *(&v101 - 2) = &protocol witness table for UnknownCanvasElement;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v92 = v119;
    v119(v88, v87);
    v93 = v126 - v85;
    v94 = v115;
    v95 = (v121)(v88, v115 + v86, v87);
    MEMORY[0x1EEE9AC00](v95);
    *(&v101 - 4) = v90;
    *(&v101 - 3) = v91;
    *(&v101 - 2) = &protocol witness table for UnknownCanvasElement;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v92(v88, v87);
    v96 = v124;
    v97 = v125;
    [v94 frame];
    v100 = v116;
    [v116 setFrame_];
  }
}

uint64_t closure #1 in UnknownCanvasElementView.updateUI()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a6;
  v8 = swift_task_alloc();
  *(v6 + 48) = v8;
  *v8 = v6;
  v8[1] = closure #1 in UnknownCanvasElementView.updateUI();

  return CRAsset.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)(a5, 1, 0);
}

uint64_t closure #1 in UnknownCanvasElementView.updateUI()(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in UnknownCanvasElementView.updateUI(), 0, 0);
}

uint64_t closure #1 in UnknownCanvasElementView.updateUI()()
{
  v1 = v0[7];
  if (v1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[8] = Strong;
    if (Strong)
    {
      type metadata accessor for MainActor();
      v0[9] = static MainActor.shared.getter();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x1EEE6DFA0](closure #1 in UnknownCanvasElementView.updateUI(), v4, v3);
    }
  }

  v5 = v0[1];

  return v5();
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  v3 = *&v1[direct field offset for UnknownCanvasElementView.thumbnailView];
  v4 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v5 = v3;
  v6 = [v4 initWithCGImage_];
  [v5 setImage_];

  return MEMORY[0x1EEE6DFA0](closure #1 in UnknownCanvasElementView.updateUI(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void type metadata accessor for CRAsset?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CRAsset?)
  {
    type metadata accessor for CRAsset();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CRAsset?);
    }
  }
}

uint64_t outlined destroy of UnknownCanvasElement(uint64_t a1)
{
  v2 = type metadata accessor for UnknownCanvasElement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of CRAsset?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CRAsset?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in UnknownCanvasElementView.updateUI()(uint64_t a1)
{
  v4 = *(type metadata accessor for CRAsset() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in UnknownCanvasElementView.updateUI()(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t lazy protocol witness table accessor for type UnknownCanvasElement and conformance UnknownCanvasElement(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement()
{
  result = lazy protocol witness table cache variable for type TaggedCanvasElement and conformance TaggedCanvasElement;
  if (!lazy protocol witness table cache variable for type TaggedCanvasElement and conformance TaggedCanvasElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaggedCanvasElement and conformance TaggedCanvasElement);
  }

  return result;
}

unint64_t type metadata accessor for PDFAnnotation()
{
  result = lazy cache variable for type metadata for PDFAnnotation;
  if (!lazy cache variable for type metadata for PDFAnnotation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PDFAnnotation);
  }

  return result;
}

id specialized UnknownCanvasElementView.appearanceStreamView.setter(void *a1)
{
  v2 = direct field offset for UnknownCanvasElementView.appearanceStreamView;
  v3 = *(v1 + direct field offset for UnknownCanvasElementView.appearanceStreamView);
  *(v1 + direct field offset for UnknownCanvasElementView.appearanceStreamView) = a1;
  v4 = a1;

  [*(v1 + direct field offset for UnknownCanvasElementView.thumbnailView) setHidden_];
  v5 = *(v1 + direct field offset for UnknownCanvasElementView.blurEffectView);
  v6 = *(v1 + v2) != 0;

  return [v5 setHidden_];
}

uint64_t PKStrokeProperties.additionalFields.getter()
{
  type metadata accessor for PKStrokeProperties(0);
}

void PKStrokeProperties.additionalFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PKStrokeProperties(0) + 48);

  *(v1 + v3) = a1;
}

PaperKit::PKStrokeProperties::CodingKeys_optional __swiftcall PKStrokeProperties.CodingKeys.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue + 1) > 8)
  {
    *v1 = 9;
  }

  else
  {
    *v1 = byte_1D405A5FA[rawValue + 1];
  }

  return rawValue;
}

PaperKit::PKStrokeProperties::CodingKeys_optional __swiftcall PKStrokeProperties.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x7367616C665FLL && stringValue._object == 0xE600000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x444970756F7267 && object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x7079546570616873 && object == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 1752457584 && object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 1802723693 && object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0x6E616C5070696C63 && object == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 5;
  }

  else if (countAndFlagsBits == 0x6E6172546B6E695FLL && object == 0xED00006D726F6673 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 6;
  }

  else if (countAndFlagsBits == 0x72477265646E6572 && object == 0xED0000444970756FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 7;
  }

  else if (countAndFlagsBits == 0xD000000000000010 && 0x80000001D4081FF0 == object)
  {

    v7 = 8;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 8;
    }

    else
    {
      v7 = 9;
    }
  }

  *v4 = v7;
  return result;
}

PaperKit::PKStrokeProperties::CodingKeys_optional __swiftcall PKStrokeProperties.CodingKeys.init(intValue:)(Swift::Int intValue)
{
  v2 = v1;
  result.value = PKStrokeProperties.CodingKeys.init(rawValue:)(intValue).value;
  *v2 = v4;
  return result;
}

uint64_t PKStrokeProperties.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x7367616C665FLL;
    v7 = 0x7079546570616873;
    if (v1 != 2)
    {
      v7 = 1752457584;
    }

    if (*v0)
    {
      v6 = 0x444970756F7267;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6E6172546B6E695FLL;
    v3 = 0x72477265646E6572;
    if (v1 != 7)
    {
      v3 = 0xD000000000000010;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 1802723693;
    if (v1 != 4)
    {
      v4 = 0x6E616C5070696C63;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PKStrokeProperties.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](qword_1D405A608[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PKStrokeProperties.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](qword_1D405A608[v2]);
  return Hasher._finalize()();
}

PaperKit::PKStrokeProperties::CodingKeys_optional protocol witness for CodingKey.init(intValue:) in conformance PKStrokeProperties.CodingKeys@<W0>(Swift::Int a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = PKStrokeProperties.CodingKeys.init(rawValue:)(a1).value;
  *a2 = v4;
  return result;
}

uint64_t protocol witness for static IntCaseIterable.intCases.getter in conformance PKStrokeProperties.CodingKeys(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys();
  v5 = lazy protocol witness table accessor for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys();

  return MEMORY[0x1EEDF56F8](a1, a2, v4, v5);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PKStrokeProperties.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PKStrokeProperties.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PKStrokeProperties.visitReferences(_:)(uint64_t a1)
{
  v47 = type metadata accessor for AnyCRValue();
  v3 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_9Coherence10AnyCRValueV5valuetSgMd, &_sSi3key_9Coherence10AnyCRValueV5valuetSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for PKStrokeProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd, &_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMR);
  v45 = a1;
  Ref.visitReferences(_:)();
  v12 = *(v1 + *(v11 + 48));
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v40 = v3 + 16;
  v18 = (v3 + 32);
  v42 = v3;
  v43 = v12;
  v44 = (v3 + 8);

  v20 = 0;
  v41 = v10;
  v38 = v7;
  v39 = (v3 + 32);
  if (v16)
  {
    while (1)
    {
      v21 = v20;
LABEL_12:
      v24 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v25 = v24 | (v21 << 6);
      v26 = v42;
      v27 = *(*(v43 + 48) + 8 * v25);
      v28 = v46;
      v29 = v47;
      (*(v42 + 16))(v46, *(v43 + 56) + *(v42 + 72) * v25, v47);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_9Coherence10AnyCRValueV5valuetMd, &_sSi3key_9Coherence10AnyCRValueV5valuetMR);
      v31 = *(v30 + 48);
      v7 = v38;
      *v38 = v27;
      v32 = v29;
      v18 = v39;
      (*(v26 + 32))(&v7[v31], v28, v32);
      (*(*(v30 - 8) + 56))(v7, 0, 1, v30);
      v23 = v21;
      v10 = v41;
LABEL_13:
      outlined init with take of Range<AttributedString.Index>(v7, v10, &_sSi3key_9Coherence10AnyCRValueV5valuetSgMd, &_sSi3key_9Coherence10AnyCRValueV5valuetSgMR);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_9Coherence10AnyCRValueV5valuetMd, &_sSi3key_9Coherence10AnyCRValueV5valuetMR);
      if ((*(*(v33 - 8) + 48))(v10, 1, v33) == 1)
      {
      }

      v34 = &v10[*(v33 + 48)];
      v36 = v46;
      v35 = v47;
      (*v18)(v46, v34, v47);
      AnyCRValue.visitReferences(_:)();
      result = (*v44)(v36, v35);
      v20 = v23;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v17 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v17;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v17)
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_9Coherence10AnyCRValueV5valuetMd, &_sSi3key_9Coherence10AnyCRValueV5valuetMR);
        (*(*(v37 - 8) + 56))(v7, 1, 1, v37);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t PKStrokeProperties.copy(renamingReferences:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v120 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v122 = &v111 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v119 = &v111 - v11;
  v137 = type metadata accessor for CRKeyPath();
  v131 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v130 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v135 = &v111 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v116 = (&v111 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v118 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v128 = &v111 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v117 = &v111 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v111 - v24;
  v138 = type metadata accessor for UUID();
  v136 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v115 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v132 = &v111 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v121 = &v111 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v111 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v114 = &v111 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v126 = &v111 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd, &_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMR);
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v111 - v40;
  outlined init with copy of PKStrokeProperties(v2, a2, type metadata accessor for PKStrokeProperties);
  v42 = type metadata accessor for PKStrokeProperties(0);
  Ref.copy(renamingReferences:)();
  (*(v39 + 40))(a2 + v42[8], v41, v38);
  v43 = v136;
  v44 = specialized _NativeDictionary.mapValues<A>(_:)(*(v2 + v42[12]), a1);
  v45 = v42[12];

  v46 = a2;
  v47 = v138;
  v133 = v46;
  *(v46 + v45) = v44;
  v48 = v42;
  v49 = v42[5];
  v129 = v3;
  outlined init with copy of Date?(v3 + v49, v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v50 = v43[6];
  v51 = v50(v25, 1, v47);
  v134 = v33;
  v124 = v43 + 6;
  v125 = a1;
  v127 = v42;
  v123 = v50;
  if (v51 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v52 = v137;
    v53 = v130;
    goto LABEL_12;
  }

  v54 = v126;
  v112 = v43[4];
  v112(v126, v25, v47);
  v113 = v43[2];
  v113(v33, v54, v47);
  v55 = v116;
  CRKeyPath.init(_:)();
  v56 = *a1;
  if (*(*a1 + 16))
  {
    v57 = specialized __RawDictionaryStorage.find<A>(_:)(v55);
    v58 = v137;
    v59 = v131;
    v60 = v43;
    if (v61)
    {
      (*(v131 + 16))(v119, *(v56 + 56) + *(v131 + 72) * v57, v137);
    }
  }

  else
  {
    v60 = v43;
    v58 = v137;
    v59 = v131;
  }

  v62 = *(v59 + 8);
  v62(v55, v58);
  v63 = v119;
  v116 = *(v59 + 56);
  v116();
  v64 = (*(v59 + 48))(v63, 1, v58);
  v47 = v138;
  if (v64)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
    v65 = v117;
    (v60[7])(v117, 1, 1, v47);
  }

  else
  {
    v66 = *(v59 + 16);
    v67 = v63;
    v68 = v135;
    v66(v135, v67, v58);
    outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
    v65 = v117;
    CRKeyPath.uuid.getter();
    v62(v68, v58);
    if (v123(v65, 1, v47) != 1)
    {
      (v60[1])(v126, v47);
      v103 = v114;
      v104 = v112;
      v112(v114, v65, v47);
      v48 = v127;
      v105 = v127[5];
      v106 = v133;
      outlined destroy of StocksKitCurrencyCache.Provider?(v133 + v105, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v104(v106 + v105, v103, v47);
      (v60[7])(v106 + v105, 0, 1, v47);
      v43 = v60;
      a1 = v125;
      v53 = v130;
      v52 = v137;
      goto LABEL_11;
    }
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v69 = v134;
  UUID.init()();
  v48 = v127;
  v70 = v127[5];
  v71 = v133;
  outlined destroy of StocksKitCurrencyCache.Provider?(v133 + v70, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v72 = v113;
  v113((v71 + v70), v69, v47);
  (v60[7])(v71 + v70, 0, 1, v47);
  v73 = v121;
  v74 = v126;
  v72(v121, v126, v138);
  v75 = v135;
  CRKeyPath.init(_:)();
  v72(v73, v69, v138);
  v76 = v122;
  CRKeyPath.init(_:)();
  v52 = v137;
  (v116)(v76, 0, 1, v137);
  v43 = v60;
  a1 = v125;
  specialized Dictionary.subscript.setter(v76, v75);
  v77 = v43[1];
  v77(v69, v138);
  v78 = v74;
  v47 = v138;
  v77(v78, v138);
  v53 = v130;
LABEL_11:
  v50 = v123;
LABEL_12:
  v79 = v128;
  outlined init with copy of Date?(v129 + v48[6], v128, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v50(v79, 1, v47) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  v81 = v132;
  v128 = v43[4];
  (v128)(v132, v79, v47);
  v82 = v134;
  v129 = v43[2];
  v130 = (v43 + 2);
  v129(v134, v81, v47);
  CRKeyPath.init(_:)();
  v83 = *a1;
  if (*(*a1 + 16))
  {
    v84 = specialized __RawDictionaryStorage.find<A>(_:)(v53);
    v85 = v131;
    if (v86)
    {
      (*(v131 + 16))(v120, *(v83 + 56) + *(v131 + 72) * v84, v52);
      v87 = 0;
    }

    else
    {
      v87 = 1;
    }
  }

  else
  {
    v87 = 1;
    v85 = v131;
  }

  v88 = *(v85 + 8);
  v89 = v137;
  v88(v53, v137);
  v90 = v120;
  v131 = *(v85 + 56);
  (v131)(v120, v87, 1, v89);
  if ((*(v85 + 48))(v90, 1, v89))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
    v91 = v136;
    v92 = v118;
    (*(v136 + 56))(v118, 1, 1, v47);
LABEL_22:
    outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    UUID.init()();
    v95 = v127[6];
    v96 = v133;
    outlined destroy of StocksKitCurrencyCache.Provider?(v133 + v95, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v97 = v129;
    v129((v96 + v95), v82, v47);
    (*(v91 + 56))(v96 + v95, 0, 1, v47);
    v98 = v121;
    v99 = v132;
    v97(v121, v132, v47);
    v100 = v135;
    CRKeyPath.init(_:)();
    v97(v98, v82, v47);
    v101 = v122;
    CRKeyPath.init(_:)();
    (v131)(v101, 0, 1, v137);
    specialized Dictionary.subscript.setter(v101, v100);
    v102 = *(v91 + 8);
    v102(v82, v47);
    return (v102)(v99, v47);
  }

  v93 = v135;
  (*(v85 + 16))(v135, v90, v89);
  outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  v92 = v118;
  CRKeyPath.uuid.getter();
  v88(v93, v89);
  v82 = v134;
  v94 = v123(v92, 1, v47);
  v91 = v136;
  if (v94 == 1)
  {
    goto LABEL_22;
  }

  (*(v136 + 8))(v132, v47);
  v107 = v115;
  v108 = v128;
  (v128)(v115, v92, v47);
  v109 = v127[6];
  v110 = v133;
  outlined destroy of StocksKitCurrencyCache.Provider?(v133 + v109, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v108(v110 + v109, v107, v47);
  return (*(v91 + 56))(v110 + v109, 0, 1, v47);
}

uint64_t specialized Dictionary.subscript.setter(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1[1];
  if (v5)
  {
    v7 = a1[3];
    v6 = a1[4];
    v8 = a1[2];
    v25[0] = *a1;
    v25[1] = v5;
    v25[2] = v8;
    v25[3] = v7;
    v25[4] = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, a2, isUniquelyReferenced_nonNull_native);
    v10 = type metadata accessor for UUID();
    result = (*(*(v10 - 8) + 8))(a2, v10);
    *v2 = v24;
  }

  else
  {
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v13)
    {
      v14 = v12;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v2;
      v25[0] = *v3;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v25[0];
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v14, v18);
      v21 = *(*(v16 + 56) + 40 * v14);

      specialized _NativeDictionary._delete(at:)(v14, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMd, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v9);
    v4 = type metadata accessor for UUID();
    (*(*(v4 - 8) + 8))(a2, v4);
    return outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMd, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMR);
  }

  else
  {
    outlined init with take of WeakCalculateExpression(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v8;
  }

  return result;
}

{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), specialized _NativeDictionary.copy());
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for CRKeyPath();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for CRKeyPath();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      specialized _NativeDictionary._delete(at:)(v11, v13, MEMORY[0x1E69954B8], &lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954C8]);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for CRKeyPath();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for CRKeyPath();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);
    (*(v9 + 8))(a2, v8);
    return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v9 + 8))(a2, v8);
    *v2 = v16;
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for CRAsset();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for CRAsset();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      specialized _NativeDictionary._delete(at:)(v11, v13, MEMORY[0x1E6995408], &lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995418]);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for CRAsset();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), specialized _NativeDictionary.copy());
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSgs5NeverOGSgMd, &_sScCySo10CGImageRefaSgs5NeverOGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSgs5NeverOGMd, &_sScCySo10CGImageRefaSgs5NeverOGMR);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_sScCySo10CGImageRefaSgs5NeverOGSgMd, &_sScCySo10CGImageRefaSgs5NeverOGSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(a2, v13);
    return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_sScCySo10CGImageRefaSgs5NeverOGSgMd, &_sScCySo10CGImageRefaSgs5NeverOGSgMR);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for UUID();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(a2, v13);
    return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for UUID();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_sypSgMd, &_sypSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v6);

    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_sypSgMd, &_sypSgMR);
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v16 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v10 = v16;
      }

      v11 = *(v10 + 48);
      v12 = type metadata accessor for PDFPageID(0);
      outlined destroy of PKStrokeProperties(v11 + *(*(v12 - 8) + 72) * v8, type metadata accessor for PDFPageID);
      specialized _NativeDictionary._delete(at:)(v8, v10);
      result = outlined destroy of PKStrokeProperties(a3, type metadata accessor for PDFPageID);
      *v4 = v10;
    }

    else
    {
      return outlined destroy of PKStrokeProperties(a3, type metadata accessor for PDFPageID);
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a3, v15);
    result = outlined destroy of PKStrokeProperties(a3, type metadata accessor for PDFPageID);
    *v3 = v17;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v21 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v10 = v21;
      }

      v11 = *(v10 + 48);
      v12 = type metadata accessor for CRKeyPath();
      v13 = *(v12 - 8);
      v14 = *(v13 + 8);
      v14(v11 + *(v13 + 72) * v8, v12);
      specialized _NativeDictionary._delete(at:)(v8, v10);
      result = (v14)(a3, v12);
      *v4 = v10;
    }

    else
    {
      v19 = type metadata accessor for CRKeyPath();
      v20 = *(*(v19 - 8) + 8);

      return v20(a3, v19);
    }
  }

  else
  {
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a3, v17);
    v18 = type metadata accessor for CRKeyPath();
    result = (*(*(v18 - 8) + 8))(a3, v18);
    *v3 = v22;
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v7;
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_sypSgMd, &_sypSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v8);

    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_sypSgMd, &_sypSgMR);
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    v10 = type metadata accessor for UUID();
    result = (*(*(v10 - 8) + 8))(a2, v10);
    *v4 = v24;
  }

  else
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v14)
    {
      v15 = v13;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v4;
      v25 = *v5;
      if (!v16)
      {
        a4();
        v17 = v25;
      }

      v18 = *(v17 + 48);
      v19 = type metadata accessor for UUID();
      v20 = *(v19 - 8);
      v21 = *(v20 + 8);
      v21(v18 + *(v20 + 72) * v15, v19);

      specialized _NativeDictionary._delete(at:)(v15, v17, MEMORY[0x1E69695A8], &lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = (v21)(a2, v19);
      *v5 = v17;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  if (a3 == -1)
  {
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5, MEMORY[0x1E6969048], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v20 = *v6;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v18 = v20;
      }

      outlined consume of Data._Representation(*(*(v18 + 48) + 16 * v16), *(*(v18 + 48) + 16 * v16 + 8));
      outlined consume of AsyncCache<Data, CGImageRef>.CacheState(*(*(v18 + 56) + 24 * v16), *(*(v18 + 56) + 24 * v16 + 8), *(*(v18 + 56) + 24 * v16 + 16));
      specialized _NativeDictionary._delete(at:)(v16, v18);
      result = outlined consume of Data._Representation(a4, a5);
      *v6 = v18;
    }

    else
    {

      return outlined consume of Data._Representation(a4, a5);
    }
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3 & 1, a4, a5, v12);
    result = outlined consume of Data._Representation(a4, a5);
    *v6 = v19;
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v15 = *v4;
      if (!v11)
      {
        specialized _NativeDictionary.copy()();
        v12 = v15;
      }

      specialized _NativeDictionary._delete(at:)(v10, v12);
      *v4 = v12;
    }

    else
    {
    }
  }
}

uint64_t PKStrokeProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit18PKStrokePropertiesV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy8PaperKit18PKStrokePropertiesV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for PKStrokeProperties(0);
    LOBYTE(v18) = 1;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17[1] = v9[8];
    LOBYTE(v18) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd, &_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokePathStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd, &_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMR, MEMORY[0x1E69953C0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v18 = *(v3 + v9[9]);
    v22 = 4;
    type metadata accessor for PKStrokeMaskStruct();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, type metadata accessor for PKStrokeMaskStruct, &protocol conformance descriptor for PKStrokeMaskStruct);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = (v3 + v9[10]);
    v11 = *(v10 + 32);
    v12 = v10[1];
    v18 = *v10;
    v19 = v12;
    LOBYTE(v20) = v11;
    v22 = 5;
    lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = (v3 + v9[11]);
    v14 = *(v13 + 48);
    v15 = v13[1];
    v18 = *v13;
    v19 = v15;
    v20 = v13[2];
    v21 = v14;
    v22 = 6;
    type metadata accessor for CGAffineTransform(0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, type metadata accessor for CGAffineTransform, MEMORY[0x1E695EF50]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = 7;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v18 = *(v3 + v9[12]);
    v22 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySi9Coherence10AnyCRValueVGMd, &_sSDySi9Coherence10AnyCRValueVGMR);
    lazy protocol witness table accessor for type [Int : AnyCRValue] and conformance <> [A : B]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PKStrokeProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd, &_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMR);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit18PKStrokePropertiesV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy8PaperKit18PKStrokePropertiesV10CodingKeysOGMR);
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v15 + 20);
  v17 = type metadata accessor for UUID();
  v18 = *(*(v17 - 8) + 56);
  v55 = v16;
  v18(v14 + v16, 1, 1, v17);
  v52 = *(v12 + 24);
  v18(v14 + v52, 1, 1, v17);
  v50 = v12;
  v19 = v14;
  v20 = v14 + *(v12 + 40);
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v20[32] = 1;
  v53 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_9Coherence10AnyCRValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PKStrokeProperties.CodingKeys and conformance PKStrokeProperties.CodingKeys();
  v21 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    v25 = v55;
    v26 = v52;
    __swift_destroy_boxed_opaque_existential_0(v54);
    outlined destroy of StocksKitCurrencyCache.Provider?(v19 + v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v19 + v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v22 = v44;
    v23 = v45;
    LOBYTE(v56) = 0;
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v41 = v19;
    *v19 = v24;
    LOBYTE(v56) = 1;
    v27 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v51 = v11;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v40 = v27;
    v28 = v41;
    outlined assign with take of UUID?(v22, v41 + v55, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    LOBYTE(v56) = 2;
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = v50;
    *(v28 + v50[7]) = v29;
    LOBYTE(v56) = 3;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokePathStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd, &_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMR, MEMORY[0x1E69953D8]);
    v31 = v49;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v48 + 32))(v28 + v30[8], v23, v31);
    type metadata accessor for PKStrokeMaskStruct();
    v60 = 4;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, type metadata accessor for PKStrokeMaskStruct, &protocol conformance descriptor for PKStrokeMaskStruct);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v28 + v30[9]) = v56;
    v60 = 5;
    lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v32 = v58;
    v33 = v57;
    *v20 = v56;
    *(v20 + 1) = v33;
    v20[32] = v32;
    type metadata accessor for CGAffineTransform(0);
    v60 = 6;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, type metadata accessor for CGAffineTransform, MEMORY[0x1E695EF60]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v34 = v28 + v50[11];
    v35 = v59;
    v36 = v57;
    *v34 = v56;
    *(v34 + 16) = v36;
    *(v34 + 32) = v58;
    *(v34 + 48) = v35;
    LOBYTE(v56) = 7;
    v37 = v43;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of UUID?(v37, v28 + v52, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySi9Coherence10AnyCRValueVGMd, &_sSDySi9Coherence10AnyCRValueVGMR);
    v60 = 8;
    lazy protocol witness table accessor for type [Int : AnyCRValue] and conformance <> [A : B]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v38 = v50[12];
    (*(v46 + 8))(v51, v47);

    *(v28 + v38) = v56;
    outlined init with copy of PKStrokeProperties(v28, v42, type metadata accessor for PKStrokeProperties);
    __swift_destroy_boxed_opaque_existential_0(v54);
    return outlined destroy of PKStrokeProperties(v28, type metadata accessor for PKStrokeProperties);
  }
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance PKStrokeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties, &protocol conformance descriptor for PKStrokeProperties);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties, &protocol conformance descriptor for PKStrokeProperties);

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance PKStrokeProperties(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PKStrokeProperties and conformance PKStrokeProperties, type metadata accessor for PKStrokeProperties, &protocol conformance descriptor for PKStrokeProperties);

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PKStrokeStructCache.BoundsParameters(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return specialized static PKStrokeStructCache.BoundsParameters.== infix(_:_:)(v7, v8);
}

uint64_t PKStrokeStructCache.__deallocating_deinit()
{
  v1 = *(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t TaggedStroke.stroke.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PKStrokeProperties(v2, v6, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of PKStrokeProperties(v6, type metadata accessor for TaggedStroke);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
    v10 = *(v9 - 8);
    (*(v10 + 32))(a1, v6, v9);
    return (*(v10 + 56))(a1, 0, 1, v9);
  }
}

uint64_t TaggedStroke.substrokes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PKStrokeProperties(v2, v6, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
    v8 = *(v7 - 8);
    (*(v8 + 32))(a1, v6, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    outlined destroy of PKStrokeProperties(v6, type metadata accessor for TaggedStroke);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }
}

uint64_t PKStrokeInheritedProperties.ink.getter()
{
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

double PKStrokeInheritedProperties.transform.getter@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

__C::CGRect __swiftcall PKStrokeStruct.bounds(path:ink:transform:)(PKStrokePath_optional path, PKInk_optional ink, CGAffineTransform *transform)
{
  v4 = *&path.is_nil;
  isa = path.value.super.isa;
  v7 = *ink.value.super.isa;
  v6 = *(ink.value.super.isa + 1);
  v8 = *(ink.value.super.isa + 3);
  v65 = *(ink.value.super.isa + 2);
  v66 = v6;
  v9 = *(ink.value.super.isa + 4);
  v64 = *(ink.value.super.isa + 5);
  v10 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57.i8[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57.i8[-v14];
  v16 = *(type metadata accessor for PKStrokeStruct(0) + 24);
  v67 = v3;
  v17 = *(v3 + v16);
  if (one-time initialization token for unfairLock != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static PKStrokeStructCache.unfairLock);
  v19 = *(v17 + 16);
  v18 = *(v17 + 24);
  v20 = *(v17 + 32);
  v21 = *(v17 + 40);
  v22 = *(v17 + 64);
  v75[0] = *(v17 + 48);
  v75[1] = v22;
  v23 = *(v17 + 96);
  v75[2] = *(v17 + 80);
  v75[3] = v23;
  outlined init with copy of PKStrokeStructCache.BoundsParameters(v75, &v80);
  os_unfair_lock_unlock(&static PKStrokeStructCache.unfairLock);
  *&v80 = isa;
  v61 = v8;
  v62 = v7;
  v24 = v66;
  *(&v80 + 1) = v7;
  *&v81 = v66;
  v25 = v65;
  *(&v81 + 1) = v65;
  *&v82 = v8;
  v63 = v9;
  v26 = v64;
  *(&v82 + 1) = v9;
  *&v83 = v64;
  *(&v83 + 1) = v4;
  v76 = v80;
  v77 = v81;
  v78 = v82;
  v79 = v83;
  v27 = isa;
  v28 = v4;
  v84.origin.x = v19;
  v84.origin.y = v18;
  v84.size.width = v20;
  v84.size.height = v21;
  if (CGRectIsNull(v84) || !specialized static PKStrokeStructCache.BoundsParameters.== infix(_:_:)(v75, &v76))
  {
    v59 = v27;
    v60 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
    CRRegister.wrappedValue.getter();
    v29 = &v15[*(v10 + 44)];
    v30 = *v29;
    v57 = *(v29 + 1);
    v58 = v30;
    v31 = *(v29 + 4);
    v32 = *(v29 + 5);
    v33 = v29[48];
    outlined destroy of PKStrokeProperties(v15, type metadata accessor for PKStrokeProperties);
    if (v33)
    {
      v31 = 0.0;
      v32 = 0.0;
      v34 = -1;
    }

    else
    {
      v34 = 0;
    }

    if (v4 && isa)
    {
      v35 = vdupq_n_s64(v34);
      v57 = vbslq_s8(v35, xmmword_1D4059310, v57);
      v58 = vbslq_s8(v35, xmmword_1D4059320, v58);
      v36 = v59;
      v37 = v60;
      CRRegister.wrappedValue.getter();
      v38 = *&v12[*(v10 + 36)];

      outlined destroy of PKStrokeProperties(v12, type metadata accessor for PKStrokeProperties);
      if (v38)
      {
        v39 = *(*(v38 + 16) + 16);
      }

      else
      {
        v39 = 0;
      }

      v41 = v62;
      v40 = v63;
      v42 = v61;
      v43 = objc_opt_self();
      *&v71 = v41;
      *(&v71 + 1) = v24;
      *&v72 = v25;
      *(&v72 + 1) = v42;
      *&v73 = v40;
      *(&v73 + 1) = v26;
      v68[0] = v58;
      v68[1] = v57;
      v69 = v31;
      v70 = v32;
      [v43 _calculateBounds_transform_ink_inkTransform_strokePath_];
      v19 = v44;
      v18 = v45;
      v20 = v46;
      v21 = v47;
    }

    else
    {
      v19 = *MEMORY[0x1E695F050];
      v18 = *(MEMORY[0x1E695F050] + 8);
      v20 = *(MEMORY[0x1E695F050] + 16);
      v21 = *(MEMORY[0x1E695F050] + 24);
    }

    os_unfair_lock_lock(&static PKStrokeStructCache.unfairLock);
    *(v17 + 16) = v19;
    *(v17 + 24) = v18;
    *(v17 + 32) = v20;
    *(v17 + 40) = v21;
    v48 = *(v17 + 96);
    v49 = *(v17 + 48);
    v50 = *(v17 + 64);
    v73 = *(v17 + 80);
    v74 = v48;
    v71 = v49;
    v72 = v50;
    v51 = v79;
    *(v17 + 80) = v78;
    *(v17 + 96) = v51;
    v52 = v77;
    *(v17 + 48) = v76;
    *(v17 + 64) = v52;
    outlined init with copy of PKStrokeStructCache.BoundsParameters(&v80, v68);
    outlined destroy of PKStrokeStructCache.BoundsParameters(&v71);
    os_unfair_lock_unlock(&static PKStrokeStructCache.unfairLock);
  }

  outlined destroy of PKStrokeStructCache.BoundsParameters(&v80);
  outlined destroy of PKStrokeStructCache.BoundsParameters(v75);
  v53 = v19;
  v54 = v18;
  v55 = v20;
  v56 = v21;
  result.size.height = v56;
  result.size.width = v55;
  result.origin.y = v54;
  result.origin.x = v53;
  return result;
}

void closure #1 in CRRegister<>.bounds(in:)(CGFloat *a1@<X0>, void *a2@<X2>, CGRect *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v24 - v8);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  Ref.subscript.getter();
  v14 = a2[3];
  v15 = a2[4];
  v16 = __swift_project_boxed_opaque_existential_1(a2, v14);
  v17 = specialized CRRegister<>.bounds(in:)(v16, v9, v14, v15);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  (*(v7 + 8))(v9, v6);
  v25.origin.x = v10;
  v25.origin.y = v11;
  v25.size.width = v12;
  v25.size.height = v13;
  v26.origin.x = v17;
  v26.origin.y = v19;
  v26.size.width = v21;
  v26.size.height = v23;
  *a3 = CGRectUnion(v25, v26);
}

uint64_t CRRegister<>.requiredContentVersion<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v120 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
  v95 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v122 = &v94 - v6;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v127 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v121 = &v94 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v123 = &v94 - v9;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v94 - v10;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd, &_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMR);
  v106 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v94 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v114 = &v94 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
  v118 = *(v14 - 8);
  v119 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v115 = &v94 - v15;
  v16 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v102 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd, &_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMR);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v97 = &v94 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v94 - v21;
  v109 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v94 - v25;
  v128 = a2;
  v129 = a3;
  v132 = type metadata accessor for Capsule();
  v116 = *(v132 - 1);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v94 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
  v108 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v94 - v29;
  v31 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v31);
  v113 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v111 = &v94 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v94 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v94 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMR);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v94 - v42;
  v96 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v96);
  v107 = &v94 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v117 = &v94 - v46;
  v126 = v5;
  CRRegister.value.getter();
  outlined init with take of TaggedStroke(v40, v37, type metadata accessor for TaggedStroke);
  v112 = v31;
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of PKStrokeProperties(v37, type metadata accessor for TaggedStroke);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
    (*(*(v47 - 8) + 56))(v43, 1, 1, v47);
  }

  else
  {
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
    v49 = *(v48 - 8);
    (*(v49 + 32))(v43, v37, v48);
    (*(v49 + 56))(v43, 0, 1, v48);
  }

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
  v51 = *(v50 - 8);
  v52 = (*(v51 + 48))(v43, 1, v50);
  v53 = v127;
  if (v52 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMR);
  }

  else
  {
    v54 = v107;
    v55 = v120;
    Ref.subscript.getter();
    (*(v51 + 8))(v43, v50);
    outlined init with take of TaggedStroke(v54, v117, type metadata accessor for PKStrokeStruct);
    (*(v116 + 16))(v131, v55, v132);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
    CRRegister.wrappedValue.getter();
    v56 = (v108 + 48);
    v57 = (v108 + 8);
    for (i = (v108 + 32); ; (*i)(v30, v22, v28))
    {
      swift_getWitnessTable();
      Ref.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
      CRRegister.wrappedValue.getter();
      outlined destroy of PKStrokeProperties(v26, type metadata accessor for PKStrokeInheritedProperties);
      if ((*v56)(v22, 1, v28) == 1)
      {
        break;
      }

      (*v57)(v30, v28);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
    (*(v116 + 8))(v131, v132);
    v59 = v110;
    Ref.subscript.getter();
    (*v57)(v30, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
    CRRegister.wrappedValue.getter();
    outlined destroy of PKStrokeProperties(v59, type metadata accessor for PKStrokeInheritedProperties);
    v60 = v133;
    if (v133)
    {
      v61 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
      v62 = v117;
      v63 = v99;
      CRRegister.wrappedValue.getter();
      v64 = v100;
      v65 = v97;
      v66 = v101;
      (*(v100 + 16))(v97, v63 + *(v98 + 32), v101);
      outlined destroy of PKStrokeProperties(v63, type metadata accessor for PKStrokeProperties);
      v67 = v102;
      Ref.subscript.getter();
      (*(v64 + 8))(v65, v66);
      isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
      v69 = type metadata accessor for PKStrokePath();
      (*(*(v69 - 8) + 8))(v67, v69);
      v70 = [v61 _requiredContentVersionForStrokePath_ink_];

      outlined destroy of PKStrokeProperties(v62, type metadata accessor for PKStrokeStruct);
      return v70;
    }

    outlined destroy of PKStrokeProperties(v117, type metadata accessor for PKStrokeStruct);
    v53 = v127;
  }

  v71 = v111;
  CRRegister.value.getter();
  v72 = v113;
  outlined init with take of TaggedStroke(v71, v113, type metadata accessor for TaggedStroke);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v74 = v130;
  v75 = v119;
  v76 = v114;
  if (EnumCaseMultiPayload == 1)
  {
    v77 = v118;
    (*(v118 + 32))(v114, v72, v119);
    v78 = 0;
    v79 = v120;
  }

  else
  {
    outlined destroy of PKStrokeProperties(v72, type metadata accessor for TaggedStroke);
    v78 = 1;
    v79 = v120;
    v77 = v118;
  }

  (*(v77 + 56))(v76, v78, 1, v75);
  if ((*(v77 + 48))(v76, 1, v75) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMR);
    return 1;
  }

  else
  {
    (*(v77 + 32))(v115, v76, v75);
    v80 = v103;
    Ref.subscript.getter();
    v81 = v105;
    CRSequence.makeIterator()();
    (*(v104 + 8))(v80, v81);
    v82 = v123;
    CRSequence.Iterator.next()();
    v83 = v82;
    v70 = 1;
    v132 = *(v53 + 48);
    if (v132(v83, 1, v74) != 1)
    {
      v131 = *(v53 + 32);
      v84 = (v95 + 8);
      v127 = v53 + 32;
      v85 = (v53 + 8);
      v70 = 1;
      v86 = v129;
      do
      {
        v88 = v121;
        (v131)(v121, v83, v74);
        v89 = v122;
        v90 = v128;
        Ref.subscript.getter();
        v91 = CRRegister<>.requiredContentVersion<A>(in:)(v79, v90, v86);
        v92 = v89;
        v74 = v130;
        (*v84)(v92, v126);
        (*v85)(v88, v74);
        if (v70 < v91)
        {
          v70 = v91;
          if (v91 == 4)
          {
            break;
          }
        }

        v87 = v123;
        CRSequence.Iterator.next()();
        v83 = v87;
      }

      while (v132(v87, 1, v74) != 1);
    }

    (*(v106 + 8))(v124, v125);
    (*(v118 + 8))(v115, v119);
  }

  return v70;
}

uint64_t Ref<>.getAllStrokes<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v60 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v72 = &v55 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd, &_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMR);
  v57 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v55 - v13;
  v58 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v58);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v55 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v55 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  v62 = *(v26 - 8);
  v63 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v55 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v61 = &v55 - v29;
  v70 = a3;
  v71 = a2;
  v59 = v7;
  v30 = a4;
  v31 = v69;
  Ref.subscript.getter();
  CRRegister.value.getter();
  (*(v20 + 8))(v22, v19);
  outlined init with take of TaggedStroke(v18, v15, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
    v33 = *(v32 - 8);
    (*(v33 + 32))(v25, v15, v32);
    (*(v33 + 56))(v25, 0, 1, v32);
  }

  else
  {
    outlined destroy of PKStrokeProperties(v15, type metadata accessor for TaggedStroke);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
    (*(*(v34 - 8) + 56))(v25, 1, 1, v34);
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
  v36 = *(v35 - 8);
  v37 = (*(v36 + 48))(v25, 1, v35);
  v39 = v64;
  v38 = v65;
  if (v37 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMR);
    v40 = v59;
    v41 = v60;
    v42 = v56;
    (*(v60 + 16))(v56, v31, v59);
    v43 = v66;
    specialized Set._Variant.insert(_:)(v66, v42);
    return (*(v41 + 8))(v43, v40);
  }

  else
  {
    v45 = v55;
    v68 = v30;
    Ref.subscript.getter();
    (*(v36 + 8))(v25, v35);
    (*(v62 + 32))(v61, v45, v63);
    CRSequence.makeIterator()();
    v46 = v72;
    CRSequence.Iterator.next()();
    v47 = v46;
    v48 = v59;
    v49 = v60;
    v69 = *(v60 + 48);
    v50 = v69(v46, 1, v59);
    v51 = v66;
    v52 = v67;
    v53 = v38;
    if (v50 != 1)
    {
      v54 = *(v49 + 32);
      do
      {
        v54(v51, v47, v48);
        Ref<>.getAllStrokes<A>(_:in:)(v52, v71, v70, v68);
        (*(v49 + 8))(v51, v48);
        CRSequence.Iterator.next()();
        v47 = v72;
      }

      while (v69(v72, 1, v48) != 1);
    }

    (*(v57 + 8))(v39, v53);
    return (*(v62 + 8))(v61, v63);
  }
}

uint64_t PKStrokeInheritedProperties.inherited.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);

  return CRRegister.wrappedValue.getter();
}

uint64_t key path setter for PKStrokeInheritedProperties.inherited : PKStrokeInheritedProperties(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  outlined init with copy of Date?(v7, v4, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
}

uint64_t PKStrokeInheritedProperties.inherited.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
}

uint64_t (*PKStrokeInheritedProperties.inherited.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t PKStrokeInheritedProperties.$inherited.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);

  return CRRegister.projectedValue.getter();
}

uint64_t (*PKStrokeInheritedProperties.$inherited.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$inherited.modify;
}

uint64_t key path getter for PKStrokeInheritedProperties.ink : PKStrokeInheritedProperties@<X0>(void *a1@<X8>)
{
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  result = CRRegister.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for PKStrokeInheritedProperties.ink : PKStrokeInheritedProperties(id *a1)
{
  v1 = *a1;
  type metadata accessor for PKStrokeInheritedProperties(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  return CRRegister.wrappedValue.setter();
}

uint64_t PKStrokeInheritedProperties.ink.setter(uint64_t a1)
{
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*PKStrokeInheritedProperties.ink.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t (*PKStrokeInheritedProperties.$ink.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for PKStrokeInheritedProperties(0) + 20);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

double key path getter for PKStrokeInheritedProperties.transform : PKStrokeInheritedProperties@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t key path setter for PKStrokeInheritedProperties.transform : PKStrokeInheritedProperties(_OWORD *a1)
{
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  return CRRegister.wrappedValue.setter();
}

uint64_t PKStrokeInheritedProperties.transform.setter(_OWORD *a1)
{
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*PKStrokeInheritedProperties.transform.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t key path getter for PKStrokeInheritedProperties.$transform : PKStrokeInheritedProperties()
{
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for PKStrokeInheritedProperties.$transform : PKStrokeInheritedProperties(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for PKStrokeInheritedProperties(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PKStrokeInheritedProperties.$transform.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for PKStrokeInheritedProperties(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PKStrokeInheritedProperties.$transform.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for PKStrokeInheritedProperties(0) + 24);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

BOOL PKStrokeInheritedProperties.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v69 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v62 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v64 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v57 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v61 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v57 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57 - v23;
  v65 = type metadata accessor for PKStrokeInheritedProperties.Partial(0);
  MEMORY[0x1EEE9AC00](v65);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v2;
  outlined init with copy of PKStrokeProperties(v2, v26, type metadata accessor for PKStrokeInheritedProperties.Partial);
  v70 = a1;
  v28 = PKStrokeInheritedProperties.Partial.canMerge(delta:)(a1);
  outlined destroy of PKStrokeProperties(v26, type metadata accessor for PKStrokeInheritedProperties.Partial);
  if (!v28)
  {
    return v28;
  }

  v58 = v28;
  v59 = v9;
  outlined init with copy of Date?(v2, v24, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
  v57 = v17;
  v29 = *(v17 + 48);
  v30 = v29(v24, 1, v16);
  outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
  if (v30 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v70, v27, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
  }

  else
  {
    outlined init with copy of Date?(v70, v21, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
    if (v29(v21, 1, v16) != 1)
    {
      v33 = v57;
      v34 = v60;
      (*(v57 + 32))(v60, v21, v16);
      v31 = v27;
      v35 = v29(v27, 1, v16);
      v32 = v65;
      if (!v35)
      {
        CRRegister.merge(delta:)();
      }

      (*(v33 + 8))(v34, v16);
      goto LABEL_10;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
  }

  v31 = v27;
  v32 = v65;
LABEL_10:
  v36 = *(v32 + 20);
  outlined init with copy of Date?(v31 + v36, v15, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
  v37 = *(v68 + 48);
  v38 = v66;
  v39 = v37(v15, 1, v66);
  outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
  v40 = *(v32 + 20);
  v41 = v39 == 1;
  v42 = v69;
  if (v41)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v70 + v40, v31 + v36, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
  }

  else
  {
    v43 = v63;
    outlined init with copy of Date?(v70 + v40, v63, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
    v44 = v37(v43, 1, v38);
    if (v44 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
    }

    else
    {
      v45 = v68;
      v46 = v61;
      (*(v68 + 32))(v61, v43, v38);
      if (!v37((v31 + v36), 1, v38))
      {
        CRRegister.merge(delta:)();
      }

      (*(v45 + 8))(v46, v38);
    }
  }

  v47 = v67;
  v48 = *(v32 + 24);
  v49 = v59;
  outlined init with copy of Date?(v31 + v48, v59, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
  v50 = *(v42 + 48);
  v51 = v50(v49, 1, v47);
  outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
  v52 = *(v32 + 24);
  if (v51 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v70 + v52, v31 + v48, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    v53 = v64;
    outlined init with copy of Date?(v70 + v52, v64, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
    if (v50(v53, 1, v47) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      v54 = v69;
      v55 = v62;
      (*(v69 + 32))(v62, v53, v47);
      if (!v50(v31 + v48, 1, v47))
      {
        CRRegister.merge(delta:)();
      }

      (*(v54 + 8))(v55, v47);
    }
  }

  LOBYTE(v28) = v58;
  return v28;
}

BOOL PKStrokeInheritedProperties.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v46 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v45 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v51 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v52 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v45 - v22;
  outlined init with copy of Date?(a1, v19, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
  v24 = *(v21 + 48);
  if (v24(v19, 1, v20) == 1)
  {
    v16 = v19;
    v25 = v54;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
    v26 = v52;
    v27 = v53;
    goto LABEL_6;
  }

  (*(v21 + 32))(v23, v19, v20);
  v25 = v54;
  outlined init with copy of Date?(v54, v16, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
  if (v24(v16, 1, v20) == 1)
  {
    (*(v21 + 8))(v23, v20);
    goto LABEL_5;
  }

  v39 = CRRegister.canMerge(delta:)();
  v40 = *(v21 + 8);
  v40(v23, v20);
  v40(v16, v20);
  v26 = v52;
  v27 = v53;
  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v28 = type metadata accessor for PKStrokeInheritedProperties.Partial(0);
  outlined init with copy of Date?(a1 + *(v28 + 20), v11, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
  v29 = *(v26 + 48);
  if (v29(v11, 1, v12) == 1)
  {
    v27 = v11;
    v31 = v50;
    v30 = v51;
    v32 = v49;
  }

  else
  {
    v33 = v25;
    v34 = v47;
    (*(v26 + 32))(v47, v11, v12);
    outlined init with copy of Date?(v33 + *(v28 + 20), v27, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
    v35 = v29(v27, 1, v12);
    v32 = v49;
    if (v35 != 1)
    {
      v41 = CRRegister.canMerge(delta:)();
      v42 = *(v26 + 8);
      v42(v34, v12);
      v42(v27, v12);
      v31 = v50;
      v30 = v51;
      v25 = v54;
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v26 + 8))(v34, v12);
    v31 = v50;
    v30 = v51;
    v25 = v54;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
LABEL_11:
  outlined init with copy of Date?(a1 + *(v28 + 24), v32, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
  v36 = *(v30 + 48);
  v37 = v48;
  if (v36(v32, 1, v48) == 1)
  {
LABEL_14:
    outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
    return 1;
  }

  (*(v30 + 32))(v31, v32, v37);
  v32 = v46;
  outlined init with copy of Date?(v25 + *(v28 + 24), v46, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v36(v32, 1, v37) == 1)
  {
    (*(v30 + 8))(v31, v37);
    goto LABEL_14;
  }

  v43 = CRRegister.canMerge(delta:)();
  v44 = *(v30 + 8);
  v44(v31, v37);
  v44(v32, v37);
  return (v43 & 1) != 0;
}

uint64_t PKStrokeInheritedProperties.Partial.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  outlined init with copy of Date?(v2, &v20 - v10, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v13 + 8))(v11, v12);
  }

  v14 = type metadata accessor for PKStrokeInheritedProperties.Partial(0);
  outlined init with copy of Date?(v2 + *(v14 + 20), v8, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v16 + 8))(v8, v15);
  }

  outlined init with copy of Date?(v2 + *(v14 + 24), v5, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v5, 1, v17) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  CRRegister.visitReferences(_:)();
  return (*(v18 + 8))(v5, v17);
}

uint64_t PKStrokeInheritedProperties.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v10 = *(v9 - 8);
  v43 = *(v10 + 56);
  v44 = v9;
  v42 = v10 + 56;
  v43(a2, 1, 1);
  v11 = type metadata accessor for PKStrokeInheritedProperties.Partial(0);
  v12 = *(v11 + 20);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v48 = v12;
  v15(a2 + v12, 1, 1, v13);
  v17 = *(v11 + 24);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v21 = v19 + 56;
  v49 = a2;
  v20(a2 + v17, 1, 1, v18);
  v22 = v50;
  dispatch thunk of CRDecoder.keyedContainer()();
  v50 = v22;
  if (v22)
  {

    return outlined destroy of PKStrokeProperties(v49, type metadata accessor for PKStrokeInheritedProperties.Partial);
  }

  v36[1] = v16;
  v37 = v15;
  v40 = v17;
  v41 = v21;
  v38 = v18;
  v39 = v20;
  v23 = v47;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
    lazy protocol witness table accessor for type Ref<PKStrokeInheritedProperties>? and conformance <A> A?();
    v24 = v46;
    v25 = v50;
    CRRegister.init(from:)();
    v26 = v48;
    if (v25)
    {
LABEL_9:

      return outlined destroy of PKStrokeProperties(v49, type metadata accessor for PKStrokeInheritedProperties.Partial);
    }

    v27 = v13;
    v50 = 0;
    (v43)(v24, 0, 1, v44);
    outlined assign with take of UUID?(v24, v49, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
  }

  else
  {
    v26 = v48;
    v27 = v13;
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo5PKInkCSgMd, &_sSo5PKInkCSgMR);
    lazy protocol witness table accessor for type PKInk? and conformance <A> A?();
    v28 = v50;
    CRRegister.init(from:)();
    v29 = v28;
    if (v28)
    {
      goto LABEL_9;
    }

    v37(v23, 0, 1, v27);
    outlined assign with take of UUID?(v23, v49 + v26, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
  }

  else
  {
    v29 = v50;
  }

  v31 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v32 = v45;
  v33 = v39;
  v34 = v40;
  v35 = v38;
  if (!v31)
  {
  }

  type metadata accessor for CGAffineTransform(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, type metadata accessor for CGAffineTransform, &protocol conformance descriptor for CGAffineTransform);
  CRRegister.init(from:)();

  if (!v29)
  {
    v33(v32, 0, 1, v35);
    return outlined assign with take of UUID?(v32, v49 + v34, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  return outlined destroy of PKStrokeProperties(v49, type metadata accessor for PKStrokeInheritedProperties.Partial);
}

uint64_t PKStrokeInheritedProperties.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v34 = &v30 - v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = v38;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v17)
  {
    v31 = v3;
    v32 = v6;
    v38 = v9;
    v19 = v37;
    outlined init with copy of Date?(v37, v12, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGSgMR);
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKStrokeInheritedProperties>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR, MEMORY[0x1E6995080]);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v14 + 8))(v16, v13);
    }

    v20 = type metadata accessor for PKStrokeInheritedProperties.Partial(0);
    v21 = v32;
    outlined init with copy of Date?(v19 + *(v20 + 20), v32, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
    v22 = v36;
    v23 = (*(v36 + 48))(v21, 1, v7);
    v24 = v38;
    if (v23 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GSgMR);
    }

    else
    {
      (*(v22 + 32))(v38, v21, v7);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<PKInk?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR, MEMORY[0x1E6995080]);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v22 + 8))(v24, v7);
    }

    v25 = v34;
    outlined init with copy of Date?(v19 + *(v20 + 24), v34, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
    v26 = v35;
    v27 = v33;
    v28 = (*(v35 + 48))(v25, 1, v33);
    v29 = v31;
    if (v28 == 1)
    {

      return outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      (*(v26 + 32))(v31, v25, v27);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGAffineTransform> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v26 + 8))(v29, v27);
    }
  }

  return result;
}

uint64_t PKStrokeInheritedProperties.init(ink:transform:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v33 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v27 = &v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
  v26 = *(*(v16 - 8) + 56);
  v26(v15, 1, 1, v16);
  outlined init with copy of Date?(v15, v12, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  lazy protocol witness table accessor for type Ref<PKStrokeInheritedProperties>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  v17 = type metadata accessor for PKStrokeInheritedProperties(0);
  v25 = *(v17 + 20);
  *&v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo5PKInkCSgMd, &_sSo5PKInkCSgMR);
  lazy protocol witness table accessor for type PKInk? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  v24 = *(v17 + 24);
  v38 = 0x3FF0000000000000uLL;
  *&v39 = 0;
  *(&v39 + 1) = 0x3FF0000000000000;
  type metadata accessor for CGAffineTransform(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, type metadata accessor for CGAffineTransform, &protocol conformance descriptor for CGAffineTransform);
  v40 = 0uLL;
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  v26(v15, 1, 1, v16);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKStrokeInheritedProperties> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR, MEMORY[0x1E69953B0]);
  v18 = v27;
  CRRegister.init<A>(_:)();
  (*(v28 + 40))(a3, v18, v29);
  *&v38 = v33;
  v19 = v33;
  v20 = v30;
  CRRegister.init(_:)();
  (*(v31 + 40))(a3 + v25, v20, v32);
  v21 = v34;
  v22 = v35[1];
  v38 = *v35;
  v39 = v22;
  v40 = v35[2];
  CRRegister.init(_:)();

  return (*(v36 + 40))(a3 + v24, v21, v37);
}

uint64_t PKStrokeInheritedProperties.init(inherited:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = v21 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v30 = v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v27 = v21 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v25);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
  v14 = *(v13 - 8);
  v26 = *(v14 + 56);
  v26(v12, 1, 1, v13);
  outlined init with copy of Date?(v12, v9, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  v24 = lazy protocol witness table accessor for type Ref<PKStrokeInheritedProperties>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  v15 = type metadata accessor for PKStrokeInheritedProperties(0);
  v23 = *(v15 + 20);
  v37 = 0;
  v21[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo5PKInkCSgMd, &_sSo5PKInkCSgMR);
  lazy protocol witness table accessor for type PKInk? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  v22 = *(v15 + 24);
  v37 = 0x3FF0000000000000;
  v38 = 0;
  v39 = 0;
  v40 = 0x3FF0000000000000;
  type metadata accessor for CGAffineTransform(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, type metadata accessor for CGAffineTransform, &protocol conformance descriptor for CGAffineTransform);
  v41 = 0;
  v42 = 0;
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  v16 = v32;
  (*(v14 + 16))(v12, v32, v13);
  v26(v12, 0, 1, v13);
  v17 = v27;
  CRRegister.init(_:)();
  (*(v28 + 40))(a2, v17, v29);
  v37 = 0;
  v18 = v30;
  CRRegister.init(_:)();
  (*(v31 + 40))(a2 + v23, v18, v33);
  v37 = 0x3FF0000000000000;
  v38 = 0;
  v39 = 0;
  v40 = 0x3FF0000000000000;
  v41 = 0;
  v42 = 0;
  v19 = v34;
  CRRegister.init(_:)();
  (*(v14 + 8))(v16, v13);
  return (*(v35 + 40))(a2 + v22, v19, v36);
}

uint64_t PKStrokeInheritedProperties.$ink.getter(void (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  a1(0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return a4(v7);
}

uint64_t PKStrokeInheritedProperties.$transform.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for PKStrokeInheritedProperties(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMR);
  return a1(v2);
}

uint64_t PKStrokeInheritedProperties.minAppFormatVersion.getter()
{
  type metadata accessor for PKStrokeInheritedProperties(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
  CRRegister.wrappedValue.getter();
  if (!v10)
  {
    return 0;
  }

  v0 = [v10 requiredContentVersion];
  if (v0 == 3)
  {
    v1 = 5;
  }

  else
  {
    v1 = 0;
  }

  if (v0 == 4)
  {
    v2 = 7;
  }

  else
  {
    v2 = v1;
  }

  v3 = [v10 inkFormatVersion];

  if (v3 == 250)
  {
    v4 = 250;
  }

  else
  {
    v4 = 0;
  }

  if (v3 == 4)
  {
    v5 = 7;
  }

  else
  {
    v5 = v4;
  }

  if (v3 == 3)
  {
    v6 = 5;
  }

  else
  {
    v6 = v5;
  }

  if (v3 == 2)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  if (v3 == 1)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  if (v3 <= 2)
  {
    v6 = v8;
  }

  if (v6 <= v2)
  {
    return v2;
  }

  else
  {
    return v6;
  }
}

uint64_t PKStrokeStruct.inherited.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);

  return CRRegister.wrappedValue.getter();
}

uint64_t key path setter for PKStrokeStruct.inherited : PKStrokeStruct(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  CRRegister.wrappedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PKStrokeStruct.inherited.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  CRRegister.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PKStrokeStruct.inherited.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}
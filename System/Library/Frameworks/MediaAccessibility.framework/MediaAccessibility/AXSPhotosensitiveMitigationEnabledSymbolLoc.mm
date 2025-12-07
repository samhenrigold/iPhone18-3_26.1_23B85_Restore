@interface AXSPhotosensitiveMitigationEnabledSymbolLoc
@end

@implementation AXSPhotosensitiveMitigationEnabledSymbolLoc

void *__get_AXSPhotosensitiveMitigationEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = libAccessibilityLibraryCore_frameworkLibrary;
  v10 = libAccessibilityLibraryCore_frameworkLibrary;
  if (!libAccessibilityLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __libAccessibilityLibraryCore_block_invoke;
    v4[4] = &unk_1E7A94038;
    v5 = &v7;
    v6 = v4;
    v11 = xmmword_1E7A94018;
    v12 = 0;
    v8[3] = _sl_dlopen();
    libAccessibilityLibraryCore_frameworkLibrary = *(v5[1] + 24);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    __get_AXSPhotosensitiveMitigationEnabledSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "_AXSPhotosensitiveMitigationEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_AXSPhotosensitiveMitigationEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_AXSPhotosensitiveMitigationEnabledSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *libAccessibilityLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MAVideoAccommodations.m" lineNumber:12 description:{@"%s", *a1}];

  __break(1u);
}

@end
@interface AXSPrefersNonBlinkingCursorIndicatorSymbolLoc
@end

@implementation AXSPrefersNonBlinkingCursorIndicatorSymbolLoc

void *__get_AXSPrefersNonBlinkingCursorIndicatorSymbolLoc_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = libAccessibilityLibraryCore_frameworkLibrary;
  v10 = libAccessibilityLibraryCore_frameworkLibrary;
  if (!libAccessibilityLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __libAccessibilityLibraryCore_block_invoke;
    v4[4] = &unk_279B73EF0;
    v5 = &v7;
    v6 = v4;
    v11 = xmmword_279B73ED0;
    v12 = 0;
    v8[3] = _sl_dlopen();
    libAccessibilityLibraryCore_frameworkLibrary = *(v5[1] + 24);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    __get_AXSPrefersNonBlinkingCursorIndicatorSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "_AXSPrefersNonBlinkingCursorIndicator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_AXSPrefersNonBlinkingCursorIndicatorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_AXSPrefersNonBlinkingCursorIndicatorSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *libAccessibilityLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SCROBrailleDisplay.m" lineNumber:34 description:{@"%s", *a1}];

  __break(1u);
}

@end
@interface AXSAttentionAwarenessFeaturesEnabledSymbolLoc
@end

@implementation AXSAttentionAwarenessFeaturesEnabledSymbolLoc

void *__get_AXSAttentionAwarenessFeaturesEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = libAccessibilityLibraryCore_frameworkLibrary;
  v11 = libAccessibilityLibraryCore_frameworkLibrary;
  if (!libAccessibilityLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __libAccessibilityLibraryCore_block_invoke;
    v5[4] = &unk_1E85D3018;
    v6 = &v8;
    v7 = v5;
    v12 = xmmword_1E85D2FF8;
    v13 = 0;
    v9[3] = _sl_dlopen();
    libAccessibilityLibraryCore_frameworkLibrary = *(v6[1] + 24);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  v3 = v5[0];
  if (!v2)
  {
    v3 = abort_report_np("%s", v5[0]);
    __break(1u);
    goto LABEL_7;
  }

  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "_AXSAttentionAwarenessFeaturesEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_AXSAttentionAwarenessFeaturesEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end
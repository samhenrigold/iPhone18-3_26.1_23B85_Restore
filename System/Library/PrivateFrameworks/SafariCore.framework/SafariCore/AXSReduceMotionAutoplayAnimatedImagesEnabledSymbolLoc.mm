@interface AXSReduceMotionAutoplayAnimatedImagesEnabledSymbolLoc
@end

@implementation AXSReduceMotionAutoplayAnimatedImagesEnabledSymbolLoc

void *__get_AXSReduceMotionAutoplayAnimatedImagesEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = libAccessibilityLibraryCore(&v5);
  if (!v2)
  {
    __get_AXSReduceMotionAutoplayAnimatedImagesEnabledSymbolLoc_block_invoke_cold_1(&v5);
  }

  v3 = v2;
  if (v5)
  {
    free(v5);
  }

  result = dlsym(v3, "_AXSReduceMotionAutoplayAnimatedImagesEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_AXSReduceMotionAutoplayAnimatedImagesEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_AXSReduceMotionAutoplayAnimatedImagesEnabledSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *libAccessibilityLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WBSAccessibilityUtilities.m" lineNumber:11 description:{@"%s", *a1}];

  __break(1u);
}

@end
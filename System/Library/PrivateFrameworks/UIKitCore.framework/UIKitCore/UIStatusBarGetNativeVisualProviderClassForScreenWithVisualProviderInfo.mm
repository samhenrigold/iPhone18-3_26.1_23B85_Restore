@interface UIStatusBarGetNativeVisualProviderClassForScreenWithVisualProviderInfo
@end

@implementation UIStatusBarGetNativeVisualProviderClassForScreenWithVisualProviderInfo

id ___UIStatusBarGetNativeVisualProviderClassForScreenWithVisualProviderInfo_block_invoke(void *a1, void *a2, uint64_t a3, BOOL *a4)
{
  result = _UIStatusBarGetVisualProviderSubclassForScreenWithVisualProviderInfo(a2, a1[4], a1[5]);
  *(*(a1[6] + 8) + 24) = result;
  *a4 = *(*(a1[6] + 8) + 24) != 0;
  return result;
}

@end
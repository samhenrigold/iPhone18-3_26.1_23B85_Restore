@interface UIFocusUpdateRequest
@end

@implementation UIFocusUpdateRequest

uint64_t __78___UIFocusUpdateRequest_requestByRedirectingRequestToNextContainerEnvironment__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v6 = [*(a1 + 32) environment];

  v8 = v10;
  if (v6 != v10)
  {
    v7 = _UIFocusEnvironmentPrefersFocusContainment(v10);
    v8 = v10;
    if (v7)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      v8 = v10;
      *a3 = 1;
    }
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

@end
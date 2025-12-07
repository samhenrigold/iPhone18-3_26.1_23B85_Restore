@interface PXAssetEditOperationManager
@end

@implementation PXAssetEditOperationManager

uint64_t __85__PXAssetEditOperationManager_AdditionalPerformersHook__registerAdditionalPerformers__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  IsToggleDepth = PXAssetEditOperationTypeIsToggleDepth();
  objc_opt_class();
  v5 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && IsToggleDepth)
  {
    v5 = [v3 hasEditableDepth];
  }

  return v5;
}

uint64_t __85__PXAssetEditOperationManager_AdditionalPerformersHook__registerAdditionalPerformers__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  IsVariation = PXAssetEditOperationTypeIsVariation();
  objc_opt_class();
  v5 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && IsVariation)
  {
    v6 = v3;
    [v6 videoCpVisibilityState];
    if ([v6 isPhotoIris])
    {
      v5 = PHVideoComplementVisibilityStateSupportsVariationChanges();
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end
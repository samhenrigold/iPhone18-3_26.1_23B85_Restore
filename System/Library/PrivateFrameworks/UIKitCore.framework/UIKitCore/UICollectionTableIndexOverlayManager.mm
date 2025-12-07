@interface UICollectionTableIndexOverlayManager
@end

@implementation UICollectionTableIndexOverlayManager

uint64_t __112___UICollectionTableIndexOverlayManager_transitionIndexOverlayIndicatorViewToVisible_shouldFadeBackToInvisible___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 16) setAlpha:v1];
}

void *__112___UICollectionTableIndexOverlayManager_transitionIndexOverlayIndicatorViewToVisible_shouldFadeBackToInvisible___block_invoke_2(void *result)
{
  if ((result[5] & 1) == 0)
  {
    *(result[4] + 48) &= ~1u;
    return [*(result[4] + 16) setHidden:0];
  }

  return result;
}

uint64_t __86___UICollectionTableIndexOverlayManager_transitionIndexOverlaySelectionViewToVisible___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 24) setAlpha:v1];
}

void *__86___UICollectionTableIndexOverlayManager_transitionIndexOverlaySelectionViewToVisible___block_invoke_2(void *result)
{
  if ((result[5] & 1) == 0)
  {
    *(result[4] + 48) &= ~2u;
    return [*(result[4] + 24) setHidden:1];
  }

  return result;
}

void __66___UICollectionTableIndexOverlayManager__hideIndicatorAfterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [(_UICollectionTableIndexOverlayManager *)WeakRetained transitionIndexOverlayIndicatorViewToVisible:0 shouldFadeBackToInvisible:?];
    v2 = v3[4];
    v3[4] = 0;

    WeakRetained = v3;
  }
}

@end
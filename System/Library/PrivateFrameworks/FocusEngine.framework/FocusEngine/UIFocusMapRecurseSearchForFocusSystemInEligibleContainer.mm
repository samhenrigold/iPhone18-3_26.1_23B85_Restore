@interface UIFocusMapRecurseSearchForFocusSystemInEligibleContainer
@end

@implementation UIFocusMapRecurseSearchForFocusSystemInEligibleContainer

uint64_t ____UIFocusMapRecurseSearchForFocusSystemInEligibleContainer_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  v7 = v9;
  if (*(a1 + 32) != v9)
  {
    if (*(a1 + 40) == v9)
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
      *a3 = 1;
      goto LABEL_14;
    }

    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      v6 = [*(a1 + 48) containsObject:v9];
      v7 = v9;
      if (v6)
      {
        *(*(*(a1 + 80) + 8) + 24) = 0;
        goto LABEL_14;
      }
    }

    v6 = [*(a1 + 56) containsObject:v7];
    if (v6)
    {
      *(*(*(a1 + 88) + 8) + 24) = 0;
    }

    else
    {
      *(*(*(a1 + 88) + 8) + 24) = _UIFocusEnvironmentIsEligibleForFocusOcclusion(v9, 0);
      if (*(*(*(a1 + 88) + 8) + 24) == 1)
      {
        v6 = [*(a1 + 48) addObject:v9];
LABEL_13:
        v7 = v9;
        goto LABEL_14;
      }

      v6 = [*(a1 + 56) addObject:v9];
    }

    *a3 = 1;
    goto LABEL_13;
  }

LABEL_14:

  return MEMORY[0x2821F96F8](v6, v7);
}

@end
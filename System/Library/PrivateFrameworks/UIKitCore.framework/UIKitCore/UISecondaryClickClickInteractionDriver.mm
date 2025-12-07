@interface UISecondaryClickClickInteractionDriver
@end

@implementation UISecondaryClickClickInteractionDriver

void *__65___UISecondaryClickClickInteractionDriver__attemptSecondaryClick__block_invoke(void *result, uint64_t a2)
{
  v2 = result;
  if (a2 == 2)
  {
    v8 = result[4];

    return [v8 cancelInteraction];
  }

  else if (!a2)
  {
    handleEvent(stateMachineSpec_7, *(result[4] + 8), 0, result[4], (result[4] + 8));
    v3 = [v2[4] delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [v2[4] delegate];
      v6 = v2[4];
      [v6 maximumEffectProgress];
      [v5 clickDriver:v6 didUpdateHighlightProgress:?];
    }

    result = handleEvent(stateMachineSpec_7, *(v2[4] + 8), 1, v2[4], (v2[4] + 8));
    v7 = v2[4];
    if (*(v7 + 8) == 3)
    {

      return handleEvent(stateMachineSpec_7, 3, 2, v7, (v7 + 8));
    }
  }

  return result;
}

@end
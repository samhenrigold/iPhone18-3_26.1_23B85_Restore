@interface UIForceClickInteractionDriver
@end

@implementation UIForceClickInteractionDriver

id *__59___UIForceClickInteractionDriver__handleGestureRecognizer___block_invoke(id *result, uint64_t a2)
{
  if (a2 == 2)
  {
    return [result[4] cancelInteraction];
  }

  if (!a2)
  {
    return handleEvent(stateMachineSpec_8, *(result[4] + 1), 0, result[4], result[4] + 1);
  }

  return result;
}

@end
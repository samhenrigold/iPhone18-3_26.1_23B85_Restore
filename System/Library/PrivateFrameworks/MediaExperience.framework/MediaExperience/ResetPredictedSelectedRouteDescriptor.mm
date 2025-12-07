@interface ResetPredictedSelectedRouteDescriptor
@end

@implementation ResetPredictedSelectedRouteDescriptor

uint64_t __routingContextResilientRemote_ResetPredictedSelectedRouteDescriptor_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 184);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a2, v3);
}

@end
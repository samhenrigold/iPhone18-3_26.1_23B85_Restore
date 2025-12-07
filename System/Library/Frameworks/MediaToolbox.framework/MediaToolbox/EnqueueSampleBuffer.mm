@interface EnqueueSampleBuffer
@end

@implementation EnqueueSampleBuffer

uint64_t __audioRendererCentral_EnqueueSampleBuffer_block_invoke(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 88))
  {
    v2 = result;
    FigServer_GetClientPIDFromAuditToken();
    result = FigOSTransactionCreate();
    *(v2 + 88) = result;
  }

  return result;
}

@end
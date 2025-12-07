@interface AddEndpoint
@end

@implementation AddEndpoint

uint64_t __endpointAggregate_AddEndpoint_block_invoke(void *a1, uint64_t a2)
{
  v4 = [[MXAggregateEndpointCallback alloc] initWithAggregate:FigEndpointAggregateGetFigEndpoint() features:0 options:a1[5] callback:a1[6] callbackRefCon:a1[7] operationType:3];
  if (!a2 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    a2 = 0;
  }

  v5 = a1[8];
  v6 = a1[5];
  v7 = *(*(CMBaseObjectGetVTable() + 32) + 8);
  if (v7)
  {
    v8 = v7(a2, v5, v6, MXAggregateSubEndpointCompletionCallback, v4);
  }

  else
  {
    v8 = 4294954514;
  }

  FigSimpleMutexLock();
  FigEndpoint = FigEndpointAggregateGetFigEndpoint();
  MXAggregateEndpointUpdateSubEndpoints(FigEndpoint);
  FigSimpleMutexUnlock();
  return v8;
}

@end
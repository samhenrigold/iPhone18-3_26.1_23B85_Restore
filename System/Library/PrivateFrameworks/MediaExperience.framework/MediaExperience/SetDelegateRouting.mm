@interface SetDelegateRouting
@end

@implementation SetDelegateRouting

uint64_t __endpointAggregate_SetDelegateRouting_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6[3] = 0;
  v6[4] = 0;
  v6[1] = MXAggregateEndpointHandleAuthRequired;
  v6[2] = MXAggregateEndpointHandleEndpointFailed;
  if (v3)
  {
    v3 = CFRetain(v3);
  }

  v6[0] = v3;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v4)
  {
    return v4(a2, v6);
  }

  else
  {
    return 4294954514;
  }
}

@end
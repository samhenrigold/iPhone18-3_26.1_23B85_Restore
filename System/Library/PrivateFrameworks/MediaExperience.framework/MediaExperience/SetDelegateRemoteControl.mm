@interface SetDelegateRemoteControl
@end

@implementation SetDelegateRemoteControl

uint64_t __endpointAggregate_SetDelegateRemoteControl_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6[1] = 0;
  v6[2] = MXAggregateEndpointDidReceiveDataFromCommChannel;
  v6[3] = MXAggregateEndpointDidCloseCommChannel;
  if (v3)
  {
    v3 = CFRetain(v3);
  }

  v6[0] = v3;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v4)
  {
    return v4(a2, v6);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t __central_SetDelegateRemoteControl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*v1)
  {
    v5 = 4294954511;
  }

  else
  {
    v2 = *(v1 + 8);
    v3 = *(a1 + 48);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v4)
    {
      v5 = v4(v2, v3);
    }

    else
    {
      v5 = 4294954514;
    }
  }

  return OUTLINED_FUNCTION_0_3(v5);
}

@end
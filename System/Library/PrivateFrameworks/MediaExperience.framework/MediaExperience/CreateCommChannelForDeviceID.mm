@interface CreateCommChannelForDeviceID
@end

@implementation CreateCommChannelForDeviceID

uint64_t __routingContextResilientRemote_CreateCommChannelForDeviceID_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a2, v3, v4, v5);
}

uint64_t __routingContext_CreateCommChannelForDeviceID_block_invoke(void *a1)
{
  result = MXSystemRemotePool_CreateCommChannel(a1[5], a1[6], a1[7]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

@end
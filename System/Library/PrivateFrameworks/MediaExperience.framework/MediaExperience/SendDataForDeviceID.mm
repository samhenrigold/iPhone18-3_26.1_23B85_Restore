@interface SendDataForDeviceID
@end

@implementation SendDataForDeviceID

uint64_t __routingContext_SendDataForDeviceID_block_invoke(void *a1)
{
  result = MXSystemRemotePool_SendData(a1[5], a1[6], a1[7], a1[8], a1[9]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

@end
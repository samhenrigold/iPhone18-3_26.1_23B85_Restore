@interface WiFiCloudSyncEngineCheckWaitingForPasswordList
@end

@implementation WiFiCloudSyncEngineCheckWaitingForPasswordList

void ____WiFiCloudSyncEngineCheckWaitingForPasswordList_block_invoke_51(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 248);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 40) + 248) = 0;
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    __WiFiCloudSyncEngineCheckWaitingForPasswordList(v3, v4);
  }
}

void ____WiFiCloudSyncEngineCheckWaitingForPasswordList_block_invoke_2_53(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 256);
  if (v2)
  {
    dispatch_release(v2);
    v3 = *(a1 + 40);
    *(v3 + 256) = 0;
    v4 = *(a1 + 32);

    __WiFiCloudSyncEngineCheckWaitingForPasswordList(v3, v4);
  }
}

@end
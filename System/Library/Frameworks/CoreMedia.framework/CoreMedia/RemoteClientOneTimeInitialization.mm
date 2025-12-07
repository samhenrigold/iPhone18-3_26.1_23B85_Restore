@interface RemoteClientOneTimeInitialization
@end

@implementation RemoteClientOneTimeInitialization

dispatch_queue_t __figXPC_RemoteClientOneTimeInitialization_block_invoke(uint64_t a1, uint64_t a2)
{
  FigKTraceInit(a1, a2);
  result = dispatch_queue_create("FigXPCRemoteClientCommonCleanupQueue", 0);
  gCommonRemoteClientCleanupQueue = result;
  return result;
}

@end
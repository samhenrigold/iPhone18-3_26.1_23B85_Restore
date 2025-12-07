@interface GEOProtobufSession
+ (OS_dispatch_queue)sharedDelegateQueue;
+ (id)sharedProtobufSession;
@end

@implementation GEOProtobufSession

+ (OS_dispatch_queue)sharedDelegateQueue
{
  if (sharedDelegateQueue_onceToken != -1)
  {
    dispatch_once(&sharedDelegateQueue_onceToken, &__block_literal_global_107232);
  }

  v3 = sharedDelegateQueue_queue;

  return v3;
}

+ (id)sharedProtobufSession
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__GEOProtobufSession_sharedProtobufSession__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedProtobufSession_predicate != -1)
  {
    dispatch_once(&sharedProtobufSession_predicate, block);
  }

  v2 = sharedProtobufSession_session;

  return v2;
}

@end
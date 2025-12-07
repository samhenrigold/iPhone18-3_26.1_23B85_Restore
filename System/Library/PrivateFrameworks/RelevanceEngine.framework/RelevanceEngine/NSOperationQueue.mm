@interface NSOperationQueue
@end

@implementation NSOperationQueue

void __75__NSOperationQueue_RelevanceEngineUtilities__re_sharedSerialOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = re_sharedSerialOperationQueue_queue;
  re_sharedSerialOperationQueue_queue = v0;

  [re_sharedSerialOperationQueue_queue setName:@"com.apple.relevanceengine.shared.utility.operation-queue"];
  [re_sharedSerialOperationQueue_queue setMaxConcurrentOperationCount:1];
  v2 = [re_sharedSerialOperationQueue_queue setQualityOfService:17];
  v3 = re_sharedSerialOperationQueue_queue;
  v4 = RESharedSerialDispatchQueue(v2);
  [v3 setUnderlyingQueue:v4];
}

@end
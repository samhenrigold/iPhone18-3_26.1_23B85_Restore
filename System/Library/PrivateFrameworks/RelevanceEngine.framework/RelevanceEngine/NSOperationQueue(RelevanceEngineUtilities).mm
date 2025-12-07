@interface NSOperationQueue(RelevanceEngineUtilities)
+ (id)re_sharedSerialOperationQueue;
@end

@implementation NSOperationQueue(RelevanceEngineUtilities)

+ (id)re_sharedSerialOperationQueue
{
  if (re_sharedSerialOperationQueue_onceToken != -1)
  {
    +[NSOperationQueue(RelevanceEngineUtilities) re_sharedSerialOperationQueue];
  }

  v2 = re_sharedSerialOperationQueue_queue;

  return v2;
}

@end
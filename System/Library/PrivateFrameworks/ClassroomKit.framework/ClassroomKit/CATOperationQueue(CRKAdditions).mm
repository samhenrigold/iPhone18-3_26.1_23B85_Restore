@interface CATOperationQueue(CRKAdditions)
+ (id)crk_backgroundQueue;
@end

@implementation CATOperationQueue(CRKAdditions)

+ (id)crk_backgroundQueue
{
  if (crk_backgroundQueue_onceToken != -1)
  {
    +[CATOperationQueue(CRKAdditions) crk_backgroundQueue];
  }

  v2 = crk_backgroundQueue_backgroundQueue;

  return v2;
}

@end
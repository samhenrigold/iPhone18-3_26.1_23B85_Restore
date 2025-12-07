@interface NSOperationQueue(VUIAdditions)
+ (id)vuiDefaultQueue;
@end

@implementation NSOperationQueue(VUIAdditions)

+ (id)vuiDefaultQueue
{
  if (vuiDefaultQueue__once != -1)
  {
    +[NSOperationQueue(VUIAdditions) vuiDefaultQueue];
  }

  v2 = vuiDefaultQueue__vuiDefaultQueue;

  return v2;
}

@end
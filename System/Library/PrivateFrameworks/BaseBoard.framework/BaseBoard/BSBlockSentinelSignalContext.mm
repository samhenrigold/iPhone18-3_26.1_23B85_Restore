@interface BSBlockSentinelSignalContext
+ (_WORD)failureContext;
@end

@implementation BSBlockSentinelSignalContext

+ (_WORD)failureContext
{
  v1 = objc_alloc_init(objc_opt_self());
  if (v1)
  {
    v1[4] = 257;
  }

  return v1;
}

@end
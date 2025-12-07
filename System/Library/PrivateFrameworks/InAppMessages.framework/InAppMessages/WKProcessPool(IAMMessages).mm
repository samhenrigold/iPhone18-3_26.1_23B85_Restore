@interface WKProcessPool(IAMMessages)
+ (id)webContentProcessPool;
@end

@implementation WKProcessPool(IAMMessages)

+ (id)webContentProcessPool
{
  if (webContentProcessPool_onceToken != -1)
  {
    +[WKProcessPool(IAMMessages) webContentProcessPool];
  }

  v2 = webContentProcessPool_contentProcessPool;

  return v2;
}

@end
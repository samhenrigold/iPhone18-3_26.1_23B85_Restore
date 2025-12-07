@interface WKWebViewConfiguration(IAMShared)
+ (id)sharedMessagesConfiguration;
@end

@implementation WKWebViewConfiguration(IAMShared)

+ (id)sharedMessagesConfiguration
{
  if (sharedMessagesConfiguration_onceToken != -1)
  {
    +[WKWebViewConfiguration(IAMShared) sharedMessagesConfiguration];
  }

  v2 = sharedMessagesConfiguration_sharedConfiguration;

  return v2;
}

@end
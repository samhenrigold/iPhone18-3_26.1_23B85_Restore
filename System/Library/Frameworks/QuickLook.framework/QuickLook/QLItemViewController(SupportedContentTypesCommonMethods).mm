@interface QLItemViewController(SupportedContentTypesCommonMethods)
+ (id)supportedAudiovisualContentTypes;
@end

@implementation QLItemViewController(SupportedContentTypesCommonMethods)

+ (id)supportedAudiovisualContentTypes
{
  if (supportedAudiovisualContentTypes_onceToken != -1)
  {
    +[QLItemViewController(SupportedContentTypesCommonMethods) supportedAudiovisualContentTypes];
  }

  v2 = supportedAudiovisualContentTypes_supportedContentTypes;

  return v2;
}

@end
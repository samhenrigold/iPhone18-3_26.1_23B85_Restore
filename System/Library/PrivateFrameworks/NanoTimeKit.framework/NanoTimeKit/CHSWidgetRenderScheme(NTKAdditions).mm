@interface CHSWidgetRenderScheme(NTKAdditions)
+ (id)ntk_watchFacesRenderSchemes;
@end

@implementation CHSWidgetRenderScheme(NTKAdditions)

+ (id)ntk_watchFacesRenderSchemes
{
  if (ntk_watchFacesRenderSchemes_onceToken != -1)
  {
    +[CHSWidgetRenderScheme(NTKAdditions) ntk_watchFacesRenderSchemes];
  }

  v2 = ntk_watchFacesRenderSchemes_schemes;

  return v2;
}

@end
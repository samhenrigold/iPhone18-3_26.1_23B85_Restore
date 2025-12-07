@interface FBSDisplayMonitor(PosterUIFoundation)
+ (id)pui_sharedDisplayMonitor;
@end

@implementation FBSDisplayMonitor(PosterUIFoundation)

+ (id)pui_sharedDisplayMonitor
{
  if (pui_sharedDisplayMonitor_onceToken != -1)
  {
    +[FBSDisplayMonitor(PosterUIFoundation) pui_sharedDisplayMonitor];
  }

  v2 = pui_sharedDisplayMonitor_displayMonitor;

  return v2;
}

@end
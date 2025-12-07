@interface NSBundle(PFAdditions)
+ (id)podcastsFoundationBundle;
@end

@implementation NSBundle(PFAdditions)

+ (id)podcastsFoundationBundle
{
  if (podcastsFoundationBundle_onceToken != -1)
  {
    +[NSBundle(PFAdditions) podcastsFoundationBundle];
  }

  v2 = podcastsFoundationBundle_bundle;

  return v2;
}

@end
@interface FBSMutableSceneSettings(RenderingEnvironmentSnapshotting)
- (void)setActiveAppearanceOverride:()RenderingEnvironmentSnapshotting;
@end

@implementation FBSMutableSceneSettings(RenderingEnvironmentSnapshotting)

- (void)setActiveAppearanceOverride:()RenderingEnvironmentSnapshotting
{
  result = [self conformsToExtension:objc_opt_class()];
  if (result)
  {

    return [self setActiveAppearance:a3];
  }

  return result;
}

@end
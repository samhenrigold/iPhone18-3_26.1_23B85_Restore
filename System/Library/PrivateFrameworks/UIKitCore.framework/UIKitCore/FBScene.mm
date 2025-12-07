@interface FBScene
- (void)setUi_clientInheritsCoreMediaApplicationStateFromHostPID:(void *)result;
@end

@implementation FBScene

- (void)setUi_clientInheritsCoreMediaApplicationStateFromHostPID:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = objc_opt_class();
    if (a2)
    {

      return [v3 addExtension:v4];
    }

    else
    {

      return [v3 removeExtension:v4];
    }
  }

  return result;
}

@end
@interface GAXSBExternalDisplayDefaultsOverride
- (void)setMirroringEnabled:(BOOL)enabled;
@end

@implementation GAXSBExternalDisplayDefaultsOverride

- (void)setMirroringEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = +[GAXSpringboard sharedInstance];
  if ([v5 isActive])
  {
    if (!enabledCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (![v5 isInWorkspace] || enabledCopy)
  {
LABEL_6:
    v6.receiver = self;
    v6.super_class = GAXSBExternalDisplayDefaultsOverride;
    [(GAXSBExternalDisplayDefaultsOverride *)&v6 setMirroringEnabled:enabledCopy];
  }

LABEL_7:
}

@end
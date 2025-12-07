@interface NSURL(LSPreferredLocalizations)
- (id)ls_preferredLocalizations;
- (void)ls_setPreferredLocalizations:()LSPreferredLocalizations;
@end

@implementation NSURL(LSPreferredLocalizations)

- (id)ls_preferredLocalizations
{
  if ([__LSDefaultsGetSharedInstance(self a2)])
  {
    v5 = 0;
    [self getResourceValue:&v5 forKey:@"com.apple.launchservices.preferredLocalizations" error:0];
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)ls_setPreferredLocalizations:()LSPreferredLocalizations
{
  v5 = a3;
  if ([__LSDefaultsGetSharedInstance(v5 v4)])
  {
    [self setTemporaryResourceValue:v5 forKey:@"com.apple.launchservices.preferredLocalizations"];
  }
}

@end
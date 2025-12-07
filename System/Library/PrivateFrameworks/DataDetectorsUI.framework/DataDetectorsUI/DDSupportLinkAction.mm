@interface DDSupportLinkAction
- (id)localizedName;
@end

@implementation DDSupportLinkAction

- (id)localizedName
{
  appLink = [(DDOpenURLAction *)self appLink];
  targetApplicationRecord = [appLink targetApplicationRecord];
  localizedName = [targetApplicationRecord localizedName];

  if (dd_isLSTrusted(v5, v6) && [localizedName length])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = DDLocalizedString(@"Get Help in %@");
    [v7 localizedStringWithFormat:v8, localizedName];
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v8 = DDLocalizedString(@"Get Help");
    [v9 localizedStringWithFormat:v8, v12];
  }
  v10 = ;

  return v10;
}

@end
@interface NSString(CoreMaterialAdditions)
+ (__CFString)mt_identityValueForMaterialSettingsProperty:()CoreMaterialAdditions;
- (void)mt_isIdentityValueForMaterialSettingsProperty:()CoreMaterialAdditions;
@end

@implementation NSString(CoreMaterialAdditions)

+ (__CFString)mt_identityValueForMaterialSettingsProperty:()CoreMaterialAdditions
{
  if ([a3 isEqualToString:?])
  {
    return @"default";
  }

  else
  {
    return 0;
  }
}

- (void)mt_isIdentityValueForMaterialSettingsProperty:()CoreMaterialAdditions
{
  v4 = a3;
  v5 = [objc_opt_class() mt_identityValueForMaterialSettingsProperty:?];

  v6 = [self isEqual:?];
  return v6;
}

@end
@interface FBSDisplayLayoutElement(SMUSystemDisplayLayoutElement)
- (BOOL)smu_isBrightnessControlHUD;
- (BOOL)smu_isVolumeHUD;
- (id)extendedDescription;
@end

@implementation FBSDisplayLayoutElement(SMUSystemDisplayLayoutElement)

- (BOOL)smu_isVolumeHUD
{
  identifier = [self identifier];
  v2 = identifier == *MEMORY[0x277D67040];

  return v2;
}

- (BOOL)smu_isBrightnessControlHUD
{
  identifier = [self identifier];
  v2 = identifier == *MEMORY[0x277D67038];

  return v2;
}

- (id)extendedDescription
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [self identifier];
  bundleIdentifier = [self bundleIdentifier];
  level = [self level];
  [self frame];
  v9 = NSStringFromCGRect(v14);
  v10 = [v3 stringWithFormat:@"<%@: %p> identifier=%@, bundle=%@, level=%lu, frame=%@", v5, self, identifier, bundleIdentifier, level, v9];

  [self layoutRole];
  v11 = SBSDisplayLayoutRoleDescription();
  [v10 appendFormat:@", role=%@", v11];

  if ([self smu_isPictureInPicture])
  {
    [v10 appendFormat:@", %s", "isPictureInPicture"];
  }

  if ([self smu_isPictureInPictureStashed])
  {
    [v10 appendFormat:@", %s", "isPictureInPictureStashed"];
  }

  if ([self smu_isSystemOverlay])
  {
    [v10 appendFormat:@", %s", "isSystemOverlay"];
  }

  if ([self smu_isSystemIndicator])
  {
    [v10 appendFormat:@", %s", "isSystemIndicator"];
  }

  if ([self smu_isControlCenter])
  {
    [v10 appendFormat:@", %s", "isControlCenter"];
  }

  if ([self smu_isVolumeHUD])
  {
    [v10 appendFormat:@", %s", "isVolumeHUD"];
  }

  if ([self smu_isSystemNotification])
  {
    [v10 appendFormat:@", %s", "isSystemNotification"];
  }

  if ([self smu_isBrightnessControlHUD])
  {
    [v10 appendFormat:@", %s", "isBrightnessControlHUD"];
  }

  return v10;
}

@end
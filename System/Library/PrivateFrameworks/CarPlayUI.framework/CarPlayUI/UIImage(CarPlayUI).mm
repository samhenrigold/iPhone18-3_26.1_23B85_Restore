@interface UIImage(CarPlayUI)
- (BOOL)isSquared;
- (id)roundingCornersIfSquared;
@end

@implementation UIImage(CarPlayUI)

- (BOOL)isSquared
{
  [self size];
  v3 = v2;
  [self size];
  v5 = 1.0;
  if (v4 >= 1.0)
  {
    v5 = v4;
  }

  v6 = v3 / v5;
  return v6 <= 1.01999998 && v6 >= 0.980000019;
}

- (id)roundingCornersIfSquared
{
  v13 = *MEMORY[0x277D85DE8];
  isSquared = [self isSquared];
  if (isSquared)
  {
    selfCopy = self;
  }

  else
  {
    v4 = CarPlayUIGeneralLogging(isSquared);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      [self size];
      v6 = v5;
      [self size];
      v9 = 134218240;
      v10 = v6;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&dword_243134000, v4, OS_LOG_TYPE_DEFAULT, "Setting corner radius to artwork image with size: (%f, %f)", &v9, 0x16u);
    }

    selfCopy = [self imageWithRoundedCornersOfRadius:14.0];
  }

  return selfCopy;
}

@end
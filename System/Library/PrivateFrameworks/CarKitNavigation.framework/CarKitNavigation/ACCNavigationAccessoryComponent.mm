@interface ACCNavigationAccessoryComponent
@end

@implementation ACCNavigationAccessoryComponent

void __62__ACCNavigationAccessoryComponent_CarPlay__CP_ignoreMaxLength__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 valueForKey:@"CPACCNavIgnoreMaxLengths"];

  if (v1)
  {
    v2 = [v1 BOOLValue];
    CP_ignoreMaxLength_ignoreMaxLength = v2;
    v3 = CarNavLogging(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (CP_ignoreMaxLength_ignoreMaxLength)
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&dword_224A23000, v3, OS_LOG_TYPE_DEFAULT, "ignoreMaxLength set to %{public}@", &v5, 0xCu);
    }
  }
}

@end
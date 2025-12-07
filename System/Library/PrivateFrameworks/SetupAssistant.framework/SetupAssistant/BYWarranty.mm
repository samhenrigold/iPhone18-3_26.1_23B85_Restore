@interface BYWarranty
+ (BOOL)shouldDisplay;
+ (void)acknowledge;
@end

@implementation BYWarranty

+ (BOOL)shouldDisplay
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [defaultManager fileExistsAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/ShowWarranty"];

  return v3;
}

+ (void)acknowledge
{
  v15 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  domain = [defaultManager removeItemAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/ShowWarranty" error:&v12];
  v4 = v12;

  if ((domain & 1) == 0)
  {
    v6 = _BYLoggingFacility(v5);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (_BYIsInternalInstall(v7, v8))
      {
        v9 = 0;
        v10 = v4;
      }

      else if (v4)
      {
        v11 = MEMORY[0x1E696AEC0];
        domain = [v4 domain];
        v10 = [v11 stringWithFormat:@"<Error domain: %@, code %ld>", domain, objc_msgSend(v4, "code")];
        v9 = 1;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      *buf = 138543362;
      v14 = v10;
      _os_log_error_impl(&dword_1B862F000, v6, OS_LOG_TYPE_ERROR, "Failed to remove warranty sentinel: %{public}@", buf, 0xCu);
      if (v9)
      {
      }
    }
  }
}

@end
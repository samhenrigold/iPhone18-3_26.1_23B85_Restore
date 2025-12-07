@interface MSDProvisioningProfilePrepareOperation
- (BOOL)_determineAppInstallNecessity;
- (id)methodSelectors;
@end

@implementation MSDProvisioningProfilePrepareOperation

- (id)methodSelectors
{
  if (+[MSDOperationContext downloadOnly])
  {
    v2 = objc_opt_new();
  }

  else
  {
    v3 = [NSValue valueWithPointer:"_determineAppInstallNecessity"];
    v4 = [NSValue valueWithPointer:"_prepareStagingArea"];
    v2 = [NSArray arrayWithObjects:v3, v4, 0];
  }

  return v2;
}

- (BOOL)_determineAppInstallNecessity
{
  context = [(MSDOperation *)self context];
  identifier = [context identifier];

  v5 = [MSDProvisioningProfileUtils isProvisioningProfileInstalled:identifier];
  if (v5)
  {
    v6 = sub_100063A54(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = identifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Provisioning profile with UUID already installed: %{public}@", &v8, 0xCu);
    }

    [(MSDOperation *)self setSkipped:1];
  }

  return 1;
}

@end
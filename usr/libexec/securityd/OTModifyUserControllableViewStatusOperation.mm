@interface OTModifyUserControllableViewStatusOperation
- (OTModifyUserControllableViewStatusOperation)initWithDependencies:(id)dependencies intendedViewStatus:(int)status intendedState:(id)state peerMissingState:(id)missingState errorState:(id)errorState;
- (void)groupStart;
- (void)performWithStatus:(int)status;
@end

@implementation OTModifyUserControllableViewStatusOperation

- (void)performWithStatus:(int)status
{
  v3 = *&status;
  objc_initWeak(&location, self);
  v5 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    intendedViewStatus = [(OTModifyUserControllableViewStatusOperation *)self intendedViewStatus];
    if (intendedViewStatus >= 4)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", intendedViewStatus];
    }

    else
    {
      v7 = *(&off_100335FF8 + intendedViewStatus);
    }

    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting user-controllable views to %@", buf, 0xCu);
  }

  deps = [(OTModifyUserControllableViewStatusOperation *)self deps];
  cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
  deps2 = [(OTModifyUserControllableViewStatusOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  v12 = [NSNumber numberWithInt:v3];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100097EDC;
  v13[3] = &unk_100344998;
  objc_copyWeak(&v14, &location);
  [cuttlefishXPCWrapper updateWithSpecificUser:activeAccount forceRefetch:0 deviceName:0 serialNumber:0 osVersion:0 policyVersion:0 policySecrets:0 syncUserControllableViews:v12 secureElementIdentity:0 walrusSetting:0 webAccess:0 reply:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)groupStart
{
  if ([(OTModifyUserControllableViewStatusOperation *)self intendedViewStatus]== 3)
  {
    objc_initWeak(&location, self);
    deps = [(OTModifyUserControllableViewStatusOperation *)self deps];
    sosAdapter = [deps sosAdapter];
    sosEnabled = [sosAdapter sosEnabled];

    if (sosEnabled)
    {
      deps2 = [(OTModifyUserControllableViewStatusOperation *)self deps];
      sosAdapter2 = [deps2 sosAdapter];
      v28 = 0;
      v8 = [sosAdapter2 safariViewSyncingEnabled:&v28];
      v9 = v28;

      if (v9)
      {
        v10 = sub_100006274("SecError");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "octagon-ckks: Unable to fetch SOS Safari view status: %@", buf, 0xCu);
        }

        [(CKKSResultOperation *)self setError:v9];
      }

      else
      {
        v22 = sub_100006274("octagon-ckks");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = @"disabled";
          if (v8)
          {
            v23 = @"enabled";
          }

          *buf = 138412290;
          v31 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Currently SOS believes the safari view is '%@'", buf, 0xCu);
        }

        if (v8)
        {
          v24 = 2;
        }

        else
        {
          v24 = 1;
        }

        [(OTModifyUserControllableViewStatusOperation *)self performWithStatus:v24];
        v9 = 0;
      }
    }

    else
    {
      deps3 = [(OTModifyUserControllableViewStatusOperation *)self deps];
      stateHolder = [deps3 stateHolder];
      v27 = 0;
      v14 = [stateHolder loadOrCreateAccountMetadata:&v27];
      v9 = v27;

      if (!v14 || v9)
      {
        v16 = sub_100006274("octagon-ckks");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v9;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to load account metadata: %@", buf, 0xCu);
        }

        isInheritedAccount = 0;
      }

      else
      {
        isInheritedAccount = [v14 isInheritedAccount];
      }

      v17 = sub_100006274("octagon-ckks");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Determining peers' user-controllable views policy", buf, 2u);
      }

      deps4 = [(OTModifyUserControllableViewStatusOperation *)self deps];
      cuttlefishXPCWrapper = [deps4 cuttlefishXPCWrapper];
      deps5 = [(OTModifyUserControllableViewStatusOperation *)self deps];
      activeAccount = [deps5 activeAccount];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000987F8;
      v25[3] = &unk_100338738;
      objc_copyWeak(&v26, &location);
      [cuttlefishXPCWrapper fetchCurrentPolicyWithSpecificUser:activeAccount modelIDOverride:0 isInheritedAccount:isInheritedAccount reply:v25];

      objc_destroyWeak(&v26);
    }

    objc_destroyWeak(&location);
  }

  else
  {
    intendedViewStatus = [(OTModifyUserControllableViewStatusOperation *)self intendedViewStatus];

    [(OTModifyUserControllableViewStatusOperation *)self performWithStatus:intendedViewStatus];
  }
}

- (OTModifyUserControllableViewStatusOperation)initWithDependencies:(id)dependencies intendedViewStatus:(int)status intendedState:(id)state peerMissingState:(id)missingState errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  missingStateCopy = missingState;
  errorStateCopy = errorState;
  v20.receiver = self;
  v20.super_class = OTModifyUserControllableViewStatusOperation;
  v17 = [(CKKSGroupOperation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong((v17 + 148), dependencies);
    *(v18 + 32) = status;
    objc_storeStrong((v18 + 132), state);
    objc_storeStrong((v18 + 156), missingState);
    objc_storeStrong((v18 + 140), errorState);
  }

  return v18;
}

@end
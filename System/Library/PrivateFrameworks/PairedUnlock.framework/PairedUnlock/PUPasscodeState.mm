@interface PUPasscodeState
+ (BOOL)hasPasscode;
+ (BOOL)isModificationAllowed;
+ (BOOL)isUnlockOnly;
+ (id)toProtobuf;
+ (unint64_t)passcodeMinimumLength;
+ (void)_setOffWristPreference:(BOOL)preference;
+ (void)setOffWristEnabledSSE:(BOOL)e completion:(id)completion;
+ (void)setWristDetectionDisabled:(BOOL)disabled completion:(id)completion;
@end

@implementation PUPasscodeState

+ (BOOL)hasPasscode
{
  v2 = +[MCProfileConnection sharedConnection];
  isPasscodeSet = [v2 isPasscodeSet];

  return isPasscodeSet;
}

+ (BOOL)isUnlockOnly
{
  if (![self hasPasscode])
  {
    return 0;
  }

  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 unlockScreenType] == 2;

  return v3;
}

+ (void)setOffWristEnabledSSE:(BOOL)e completion:(id)completion
{
  completionCopy = completion;
  v6 = [PUError errorWithCode:104 description:@"only supported on watch"];
  (*(completion + 2))(completionCopy, v6);
}

+ (void)_setOffWristPreference:(BOOL)preference
{
  v3 = [NSNumber numberWithBool:preference];
  CFPreferencesSetAppValue(@"DisableWristDetection", v3, @"com.apple.Carousel");

  CFPreferencesAppSynchronize(@"com.apple.Carousel");
  v6 = objc_alloc_init(NPSManager);
  v4 = [NSSet setWithObject:@"DisableWristDetection"];
  [v6 synchronizeUserDefaultsDomain:@"com.apple.Carousel" keys:v4];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CSLDisableWristDetectionChangedNotification", 0, 0, 0);
}

+ (void)setWristDetectionDisabled:(BOOL)disabled completion:(id)completion
{
  disabledCopy = disabled;
  completionCopy = completion;
  v7 = pu_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [NSNumber numberWithBool:disabledCopy];
    *buf = 138412290;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "setting wrist detection disabled to %@", buf, 0xCu);
  }

  if ([self isLocked])
  {
    v9 = @"cannot change wrist detect setting if the device is locked";
    v10 = 102;
  }

  else
  {
    if (!disabledCopy)
    {
      goto LABEL_14;
    }

    if ([self isUnlockOnly])
    {
      v9 = @"cannot disable wrist detection when unlock only";
      v10 = 100;
    }

    else
    {
      v13 = +[MCProfileConnection sharedConnection];
      v14 = [v13 isSettingLockedDownByRestrictions:MCFeatureWatchWristDetectRequired];

      if (!v14)
      {
        goto LABEL_14;
      }

      v9 = @"cannot disable wrist detection, required by configuration";
      v10 = 101;
    }
  }

  v11 = [PUError errorWithCode:v10 description:v9];
  if (v11)
  {
    v12 = pu_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE58(disabledCopy, v11, v12);
    }

    completionCopy[2](completionCopy, v11);
    goto LABEL_19;
  }

LABEL_14:
  if ([self hasSEP])
  {
    v15 = pu_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [NSNumber numberWithBool:disabledCopy];
      *buf = 138412290;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "calling SEP to set wrist detection disabled to %@", buf, 0xCu);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000174C;
    v17[3] = &unk_100018538;
    selfCopy = self;
    v20 = disabledCopy;
    v18 = completionCopy;
    [self setOffWristEnabledSSE:disabledCopy completion:v17];
  }

  else
  {
    [self _setOffWristPreference:disabledCopy];
    completionCopy[2](completionCopy, 0);
  }

LABEL_19:
}

+ (unint64_t)passcodeMinimumLength
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 valueRestrictionForFeature:MCFeatureMinimumPasscodeLength];
  v4 = pu_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "current minimum passcode length is %@", &v7, 0xCu);
  }

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

+ (BOOL)isModificationAllowed
{
  v2 = +[MCProfileConnection sharedConnection];
  isPasscodeModificationAllowed = [v2 isPasscodeModificationAllowed];
  v4 = pu_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = isPasscodeModificationAllowed;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "passcode modification allowed: %{BOOL}u", v6, 8u);
  }

  return isPasscodeModificationAllowed;
}

+ (id)toProtobuf
{
  v3 = objc_alloc_init(PUProtoPasscodePolicy);
  -[PUProtoPasscodePolicy setModificationAllowed:](v3, "setModificationAllowed:", [self isModificationAllowed]);
  -[PUProtoPasscodePolicy setMinimumLength:](v3, "setMinimumLength:", [self passcodeMinimumLength]);
  v4 = objc_alloc_init(PUProtoPasscodeState);
  -[PUProtoPasscodeState setHasPasscode:](v4, "setHasPasscode:", [self hasPasscode]);
  -[PUProtoPasscodeState setIsLocked:](v4, "setIsLocked:", [self isLocked]);
  if ([(PUProtoPasscodeState *)v4 hasPasscode])
  {
    isUnlockOnly = [self isUnlockOnly];
  }

  else
  {
    isUnlockOnly = 0;
  }

  [(PUProtoPasscodeState *)v4 setIsUnlockOnly:isUnlockOnly];
  if ([(PUProtoPasscodeState *)v4 hasPasscode])
  {
    v6 = [self isWristDetectionDisabled] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  [(PUProtoPasscodeState *)v4 setIsWristDetectionEnabled:v6];
  [(PUProtoPasscodeState *)v4 setPolicy:v3];

  return v4;
}

@end
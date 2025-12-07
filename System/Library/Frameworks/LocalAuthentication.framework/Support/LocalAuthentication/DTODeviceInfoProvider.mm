@interface DTODeviceInfoProvider
- (BOOL)hasBiometricEnrollmentsForCurrentUser;
- (BOOL)hasBiometricEnrollmentsForUser:(unsigned int)user;
- (BOOL)hasCompletedSetup;
- (BOOL)hasPasscodeSetForCurrentUser;
- (BOOL)hasPasscodeSetForUser:(unsigned int)user;
- (id)serialNumber;
@end

@implementation DTODeviceInfoProvider

- (BOOL)hasCompletedSetup
{
  v2 = +[LACSetUpStateProvider sharedInstance];
  hasCompletedSetup = [v2 hasCompletedSetup];

  return hasCompletedSetup;
}

- (BOOL)hasPasscodeSetForCurrentUser
{
  v3 = geteuid();

  return [(DTODeviceInfoProvider *)self hasPasscodeSetForUser:v3];
}

- (BOOL)hasBiometricEnrollmentsForCurrentUser
{
  v3 = geteuid();

  return [(DTODeviceInfoProvider *)self hasBiometricEnrollmentsForUser:v3];
}

- (BOOL)hasBiometricEnrollmentsForUser:(unsigned int)user
{
  v3 = *&user;
  v4 = +[BiometryHelper sharedInstance];
  v5 = [NSNumber numberWithUnsignedInt:v3];
  v6 = [v4 isEnrolled:v5 error:0];

  return v6;
}

- (id)serialNumber
{
  v2 = +[LACMobileGestalt serialNumber];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1000571B0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)hasPasscodeSetForUser:(unsigned int)user
{
  v3 = *&user;
  v4 = +[LAPasscodeHelper sharedInstance];
  LOBYTE(v3) = [v4 isPasscodeSetForUser:v3 error:0];

  return v3;
}

@end
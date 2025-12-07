@interface PBBridgeCAReporter
+ (id)_orientationHumanReadable:(int64_t)readable;
+ (id)_pairingStyle:(int64_t)style;
+ (id)_wristChoiceHumanReadable:(int64_t)readable;
+ (id)descriptionForCommTimingType:(unint64_t)type;
+ (id)descriptionForSuccessType:(unint64_t)type;
+ (id)descriptionForTimingType:(unint64_t)type;
+ (id)stringForSigninEventDaily:(unint64_t)daily;
+ (id)stringForSigninEventPostPair:(unint64_t)pair;
+ (id)stringForSigninFollowup:(unint64_t)followup;
+ (id)stringForSigninPair:(unint64_t)pair;
+ (void)activationServerRespondedAtPage:(unint64_t)page;
+ (void)incrementSuccessType:(unint64_t)type;
+ (void)pushCommunicationTimingType:(unint64_t)type withValue:(double)value;
+ (void)pushTimingForTypeNamed:(id)named withValue:(double)value;
+ (void)pushTimingType:(unint64_t)type withValue:(double)value;
+ (void)recordAllWatchesDetailButtonVisit:(BOOL)visit;
+ (void)recordAlreadyPairedAlertFired:(BOOL)fired afterDuration:(double)duration hasFiredBefore:(BOOL)before;
+ (void)recordAlreadyPairedAlertFiredAndWatchRecovered:(double)recovered;
+ (void)recordAlreadyPairedAlertLearnedMore:(BOOL)more;
+ (void)recordDeviceEnrollmentResult:(BOOL)result retryCount:(unint64_t)count;
+ (void)recordEndOfLifePhoneAlertPresented:(BOOL)presented;
+ (void)recordEndOfLifePhoneAlertUserResponse:(BOOL)response;
+ (void)recordMaterial:(unint64_t)material andSize:(unint64_t)size;
+ (void)recordPairingInitiatedDeviceOrientationChoice:(int64_t)choice pairingSelectionType:(int64_t)type;
+ (void)recordPairingInitiatedDeviceWristChoice:(int64_t)choice pairingSelectionType:(int64_t)type;
+ (void)recordPairingTimeBackupsCount:(unint64_t)count;
+ (void)recordPasscodeChallenge:(int64_t)challenge;
+ (void)recordPasscodeCreatedWithType:(int64_t)type wasChallenged:(BOOL)challenged;
+ (void)recordSetupAppInstallChoice:(BOOL)choice;
+ (void)recordSigninEventDaily:(unint64_t)daily;
+ (void)recordSigninEventFollowup:(unint64_t)followup;
+ (void)recordSigninEventPair:(unint64_t)pair;
+ (void)recordSigninEventPostPair:(unint64_t)pair;
+ (void)recordTabSelection:(int64_t)selection classicCount:(unint64_t)count tinkerCount:(unint64_t)tinkerCount;
+ (void)recordTinkerGuardianAcceptedDiagsAndUsage:(BOOL)usage;
+ (void)recordTransitionedDynamicHelpViewFromType:(int64_t)type toType:(int64_t)toType;
+ (void)recordUserInitiatedDeviceOrientationChange:(int64_t)change;
+ (void)recordUserInitiatedDeviceWristChange:(int64_t)change;
+ (void)sendEvent:(id)event with:(id)with;
@end

@implementation PBBridgeCAReporter

+ (void)sendEvent:(id)event with:(id)with
{
  v12 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  withCopy = with;
  v7 = pbb_shared_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = eventCopy;
    v10 = 2114;
    v11 = withCopy;
    _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "[PBBridgeCAReporter] Sending event: <%{public}@; %{public}@>", &v8, 0x16u);
  }

  AnalyticsSendEvent();
}

+ (id)descriptionForSuccessType:(unint64_t)type
{
  if (type > 0x3A)
  {
    return &stru_286FA8098;
  }

  else
  {
    return off_2799F3B88[type];
  }
}

+ (void)activationServerRespondedAtPage:(unint64_t)page
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  v5 = PBBuddyControllerDescription(page);
  v6 = [v4 stringWithFormat:@"ActivationResponded-%@", v5, @"screen"];
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [self sendEvent:@"com.apple.nanobuddy.activationRespond" with:v7];
}

+ (void)incrementSuccessType:(unint64_t)type
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"type";
  v4 = [PBBridgeCAReporter descriptionForSuccessType:type];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [self sendEvent:@"com.apple.nanobuddy.flow" with:v5];
}

+ (id)descriptionForTimingType:(unint64_t)type
{
  if (type > 0xA)
  {
    return &stru_286FA8098;
  }

  else
  {
    return off_2799F3D60[type];
  }
}

+ (void)pushTimingType:(unint64_t)type withValue:(double)value
{
  v6 = [PBBridgeCAReporter descriptionForTimingType:type];
  [self pushTimingForTypeNamed:v6 withValue:value];
}

+ (void)pushTimingForTypeNamed:(id)named withValue:(double)value
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"type";
  v10[1] = @"duration";
  v11[0] = named;
  v6 = MEMORY[0x277CCABB0];
  namedCopy = named;
  v8 = [v6 numberWithDouble:value];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  [self sendEvent:@"com.apple.nanobuddy.timing" with:v9];
}

+ (id)descriptionForCommTimingType:(unint64_t)type
{
  v3 = &stru_286FA8098;
  if (type == 1)
  {
    v3 = @"OWD";
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return @"RTT";
  }
}

+ (void)pushCommunicationTimingType:(unint64_t)type withValue:(double)value
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"type";
  v6 = [PBBridgeCAReporter descriptionForCommTimingType:type];
  v9[1] = @"duration";
  v10[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:value];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [self sendEvent:@"com.apple.nanobuddy.comm.timing" with:v8];
}

+ (id)stringForSigninPair:(unint64_t)pair
{
  if (pair >= 3)
  {
    pair = [MEMORY[0x277CCACA8] stringWithFormat:@"Not handled %lu", pair];
  }

  else
  {
    pair = off_2799F3DB8[pair];
  }

  return pair;
}

+ (void)recordSigninEventPair:(unint64_t)pair
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"type";
  v6[1] = @"value";
  v7[0] = @"pair";
  v4 = [self stringForSigninPair:pair];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [self sendEvent:@"com.apple.nanobuddy.signin" with:v5];
}

+ (id)stringForSigninFollowup:(unint64_t)followup
{
  if (followup)
  {
    followup = [MEMORY[0x277CCACA8] stringWithFormat:@"Not handled %lu", followup];
  }

  else
  {
    followup = @"NoSignin";
  }

  return followup;
}

+ (void)recordSigninEventFollowup:(unint64_t)followup
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"type";
  v6[1] = @"value";
  v7[0] = @"followup";
  v4 = [self stringForSigninFollowup:followup];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [self sendEvent:@"com.apple.nanobuddy.signin" with:v5];
}

+ (id)stringForSigninEventDaily:(unint64_t)daily
{
  if (daily == 1)
  {
    daily = @"SignedIn";
  }

  else if (daily)
  {
    daily = [MEMORY[0x277CCACA8] stringWithFormat:@"Not handled %lu", daily];
  }

  else
  {
    daily = @"NotSignedIn";
  }

  return daily;
}

+ (void)recordSigninEventDaily:(unint64_t)daily
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"type";
  v6[1] = @"value";
  v7[0] = @"daily";
  v4 = [self stringForSigninEventDaily:daily];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [self sendEvent:@"com.apple.nanobuddy.signin" with:v5];
}

+ (id)stringForSigninEventPostPair:(unint64_t)pair
{
  if (pair)
  {
    pair = [MEMORY[0x277CCACA8] stringWithFormat:@"Not handled %lu", pair];
  }

  else
  {
    pair = @"SignedIn";
  }

  return pair;
}

+ (void)recordSigninEventPostPair:(unint64_t)pair
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"type";
  v6[1] = @"value";
  v7[0] = @"postpair";
  v4 = [self stringForSigninEventPostPair:pair];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [self sendEvent:@"com.apple.nanobuddy.signin" with:v5];
}

+ (void)recordAlreadyPairedAlertFired:(BOOL)fired afterDuration:(double)duration hasFiredBefore:(BOOL)before
{
  beforeCopy = before;
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"AlreadyPairedAlertFired";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:fired];
  v13[0] = v8;
  v12[1] = @"DetectionDuration";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  v13[1] = v9;
  v12[2] = @"HasFiredBefore";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:beforeCopy];
  v13[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  [self sendEvent:@"com.apple.Bridge.AlreadyPairedAlert.Fired" with:v11];
}

+ (void)recordAlreadyPairedAlertLearnedMore:(BOOL)more
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"LearnMoreChoice";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:more];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [self sendEvent:@"com.apple.Bridge.AlreadyPairedAlert.Response" with:v5];
}

+ (void)recordAlreadyPairedAlertFiredAndWatchRecovered:(double)recovered
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"RecoveryInterval";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:recovered];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [self sendEvent:@"com.apple.Bridge.AlreadyPairedAlert.Recovered" with:v5];
}

+ (void)recordEndOfLifePhoneAlertPresented:(BOOL)presented
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"EOLType";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:presented];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [self sendEvent:@"com.apple.Bridge.EndOfLifePhoneAlert.Fired" with:v5];
}

+ (void)recordEndOfLifePhoneAlertUserResponse:(BOOL)response
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"LearnMoreChoice";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:response];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [self sendEvent:@"com.apple.Bridge.EndOfLifePhoneAlert.Response" with:v5];
}

+ (void)recordSetupAppInstallChoice:(BOOL)choice
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"installAllApps";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:choice];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [self sendEvent:@"com.apple.Bridge.InstallAppSetup.Response" with:v5];
}

+ (void)recordAllWatchesDetailButtonVisit:(BOOL)visit
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"PairingType";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:visit];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [self sendEvent:@"com.apple.Bridge.AllWatchesDetailButtonVisit.Response" with:v5];
}

+ (void)recordPasscodeCreatedWithType:(int64_t)type wasChallenged:(BOOL)challenged
{
  challengedCopy = challenged;
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"PasscodeType";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v7 = v6;
  v10[1] = @"HasBeenChallenged";
  v8 = MEMORY[0x277CBEC28];
  if (challengedCopy)
  {
    v8 = MEMORY[0x277CBEC38];
  }

  v11[0] = v6;
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [self sendEvent:@"com.apple.Bridge.PasscodeChoice" with:v9];
}

+ (void)recordPasscodeChallenge:(int64_t)challenge
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"ChallengeType";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:challenge];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [self sendEvent:@"com.apple.Bridge.PasscodeChallenge" with:v5];
}

+ (void)recordTransitionedDynamicHelpViewFromType:(int64_t)type toType:(int64_t)toType
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"FromType";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v9[1] = @"ToType";
  v10[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:toType];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [self sendEvent:@"com.apple.Bridge.DynamicHelpTransitioned" with:v8];
}

+ (void)recordTinkerGuardianAcceptedDiagsAndUsage:(BOOL)usage
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (usage)
  {
    v4 = MEMORY[0x277CBEC38];
  }

  else
  {
    v4 = MEMORY[0x277CBEC28];
  }

  v6 = @"Choice";
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [self sendEvent:@"com.apple.Bridge.Tinker.DiagsAndUsage" with:v5];
}

+ (void)recordPairingTimeBackupsCount:(unint64_t)count
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"BackupsCount";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [self sendEvent:@"com.apple.Bridge.BackupsCount" with:v5];
}

+ (void)recordTabSelection:(int64_t)selection classicCount:(unint64_t)count tinkerCount:(unint64_t)tinkerCount
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"type";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:selection];
  v13[0] = v8;
  v12[1] = @"classicCount";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  v13[1] = v9;
  v12[2] = @"tinkerCount";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:tinkerCount];
  v13[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  [self sendEvent:@"com.apple.Bridge.TabViewSelection" with:v11];
}

+ (void)recordDeviceEnrollmentResult:(BOOL)result retryCount:(unint64_t)count
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"EnrollmentResult";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:result];
  v9[1] = @"EnrollmentRetryCount";
  v10[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [self sendEvent:@"com.apple.Bridge.DeviceEnrollment" with:v8];
}

+ (id)_orientationHumanReadable:(int64_t)readable
{
  v3 = @"UnsetCrown";
  if (readable == 2)
  {
    v3 = @"CrownOnLeft";
  }

  if (readable == 1)
  {
    return @"CrownOnRight";
  }

  else
  {
    return v3;
  }
}

+ (id)_wristChoiceHumanReadable:(int64_t)readable
{
  v3 = @"UnsetHand";
  if (readable == 2)
  {
    v3 = @"RightHand";
  }

  if (readable == 1)
  {
    return @"LeftHand";
  }

  else
  {
    return v3;
  }
}

+ (void)recordUserInitiatedDeviceOrientationChange:(int64_t)change
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"DeviceOrientation";
  v4 = [self _orientationHumanReadable:change];
  v7[1] = @"SettingsPlatform";
  v8[0] = v4;
  _reportingPlatform = [self _reportingPlatform];
  v8[1] = _reportingPlatform;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [self sendEvent:@"com.apple.Bridge.UserInitiatedDeviceOrientationChange" with:v6];
}

+ (void)recordUserInitiatedDeviceWristChange:(int64_t)change
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"WristChoice";
  v4 = [self _wristChoiceHumanReadable:change];
  v7[1] = @"SettingsPlatform";
  v8[0] = v4;
  _reportingPlatform = [self _reportingPlatform];
  v8[1] = _reportingPlatform;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [self sendEvent:@"com.apple.Bridge.UserInitiatedDeviceWristChange" with:v6];
}

+ (id)_pairingStyle:(int64_t)style
{
  v3 = @"PairingUnset";
  if (style == 2)
  {
    v3 = @"PairingAutomatic";
  }

  if (style == 1)
  {
    return @"PairingManual";
  }

  else
  {
    return v3;
  }
}

+ (void)recordPairingInitiatedDeviceOrientationChoice:(int64_t)choice pairingSelectionType:(int64_t)type
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"DeviceOrientation";
  v6 = [self _orientationHumanReadable:choice];
  v9[1] = @"SettingsPlatform";
  v10[0] = v6;
  v7 = [self _pairingStyle:type];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [self sendEvent:@"com.apple.Bridge.UserInitiatedDeviceOrientationChange" with:v8];
}

+ (void)recordPairingInitiatedDeviceWristChoice:(int64_t)choice pairingSelectionType:(int64_t)type
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"WristChoice";
  v6 = [self _wristChoiceHumanReadable:choice];
  v9[1] = @"SettingsPlatform";
  v10[0] = v6;
  v7 = [self _pairingStyle:type];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [self sendEvent:@"com.apple.Bridge.UserInitiatedDeviceWristChange" with:v8];
}

+ (void)recordMaterial:(unint64_t)material andSize:(unint64_t)size
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"Material";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:material];
  v9[1] = @"Size";
  v10[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:size];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [self sendEvent:@"com.apple.Bridge.MaterialDetails" with:v8];
}

@end
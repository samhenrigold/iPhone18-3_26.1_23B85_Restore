@interface BKUIUtils
+ (id)nameForMessage:(unsigned int)message;
+ (int64_t)activeInterfaceOrientationForView:(id)view;
+ (void)resetScreenDimming;
+ (void)vibrateForBiometricEvent:(BOOL)event;
+ (void)vibrateWithIntensity:(float)intensity withPattern:(id)pattern;
@end

@implementation BKUIUtils

+ (id)nameForMessage:(unsigned int)message
{
  v3 = @"No fingers enrolled";
  switch(message)
  {
    case 0u:
      goto LABEL_47;
    case 0x33u:
      v3 = @"Matching failed";
      goto LABEL_47;
    case 0x39u:
      v3 = @"Template list not updated";
      goto LABEL_47;
    case 0x3Au:
      v3 = @"Matching stopped";
      goto LABEL_47;
    case 0x3Bu:
      v3 = @"Sensor in finger detect";
      goto LABEL_47;
    case 0x3Cu:
      v3 = @"Task paused";
      goto LABEL_47;
    case 0x3Du:
      v3 = @"Task resumed";
      goto LABEL_47;
    case 0x3Eu:
      v3 = @"Task resume failed";
      goto LABEL_47;
    case 0x3Fu:
      v3 = @"Finger on";
      goto LABEL_47;
    case 0x40u:
      v3 = @"Finger off";
      goto LABEL_47;
    case 0x41u:
      v3 = @"Enrolment complete";
      goto LABEL_47;
    case 0x42u:
      v3 = @"Enrolment canceled";
      goto LABEL_47;
    case 0x43u:
      v3 = @"Enrolment failed";
      goto LABEL_47;
    case 0x44u:
      v3 = @"Enrolment timed out";
      goto LABEL_47;
    case 0x45u:
      v3 = @"Unknown error";
      goto LABEL_47;
    case 0x46u:
      v3 = @"Image rejected";
      goto LABEL_47;
    case 0x47u:
      v3 = @"No calibration";
      goto LABEL_47;
    case 0x48u:
      v3 = @"Image ready for processing";
      goto LABEL_47;
    case 0x49u:
      v3 = @"Template list updated";
      goto LABEL_47;
    case 0x4Au:
      v3 = @"Request finger off";
      goto LABEL_47;
    case 0x4Bu:
      v3 = @"Autonomous matching started";
      goto LABEL_47;
    case 0x4Cu:
      v3 = @"Autonomous matching stopped";
      goto LABEL_47;
    case 0x4Du:
      v3 = @"Capture restart";
      goto LABEL_47;
    case 0x4Eu:
      v3 = @"Scan too short";
      goto LABEL_47;
    case 0x4Fu:
      v3 = @"Autonomous matching started by home button";
      goto LABEL_47;
    case 0x50u:
      v3 = @"Matching cancelled";
      goto LABEL_47;
    case 0x51u:
      v3 = @"Scan before first unlock";
      goto LABEL_47;
    case 0x52u:
      v3 = @"Scan in passcode lockout";
      goto LABEL_47;
    case 0x53u:
      v3 = @"Scan in biometric lockout";
      goto LABEL_47;
    case 0x54u:
      v3 = @"ESD recovery";
      goto LABEL_47;
    case 0x55u:
      v3 = @"Image rejected (unknown)";
      goto LABEL_47;
    case 0x56u:
      v3 = @"Image rejected (bad blocks)";
      goto LABEL_47;
    case 0x57u:
      v3 = @"Image rejected (ChFPN)";
      goto LABEL_47;
    case 0x58u:
      v3 = @"Image rejected (CaFPN)";
      goto LABEL_47;
    case 0x59u:
      v3 = @"Sensor idle";
      goto LABEL_47;
    case 0x5Au:
      v3 = @"Sensor capturing";
      goto LABEL_47;
    case 0x5Bu:
      v3 = @"Sensor paused";
      goto LABEL_47;
    case 0x5Cu:
      v3 = @"Scan when biometric token expired";
      goto LABEL_47;
    case 0x62u:
      v3 = @"Image rejected (Movement)";
      goto LABEL_47;
    case 0x63u:
      v3 = @"Finger detect canceled";
      goto LABEL_47;
    default:
      if (message - 1 <= 0x31)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"Enrolment %d", *&message, v5];
        v3 = LABEL_45:;
        goto LABEL_47;
      }

      if (message >= 0x64)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"Progress: %d/255 = %d %%", message - 100, ((100 * (message - 100)) / 255)];
        goto LABEL_45;
      }

      v3 = @"Unknown status code";
LABEL_47:

      return v3;
  }
}

+ (void)resetScreenDimming
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[BKUIUtils resetScreenDimming];
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] setIdleTimerDisabled:1];

  mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128]2 setIdleTimerDisabled:0];
}

+ (void)vibrateWithIntensity:(float)intensity withPattern:(id)pattern
{
  patternCopy = pattern;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [BKUIUtils vibrateWithIntensity:patternCopy withPattern:intensity];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  *&v7 = intensity;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  [dictionary setObject:v8 forKey:@"Intensity"];

  [dictionary setObject:patternCopy forKey:@"VibePattern"];
  AudioServicesPlaySystemSoundWithVibration();
}

+ (void)vibrateForBiometricEvent:(BOOL)event
{
  eventCopy = event;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [BKUIUtils vibrateForBiometricEvent:eventCopy];
  }

  if (eventCopy)
  {
    v5 = &unk_2853CC868;
  }

  else
  {
    v5 = &unk_2853CC880;
  }

  LODWORD(v4) = 1.0;
  [BKUIUtils vibrateWithIntensity:v5 withPattern:v4];
}

+ (int64_t)activeInterfaceOrientationForView:(id)view
{
  viewCopy = view;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  if ([mEMORY[0x277D75128] isFrontBoard])
  {

LABEL_4:
    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    activeInterfaceOrientation = [mEMORY[0x277D75128]2 activeInterfaceOrientation];
    goto LABEL_5;
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v7 = [bundleIdentifier isEqualToString:@"com.apple.springboard"];

  if (v7)
  {
    goto LABEL_4;
  }

  window = [viewCopy window];

  if (!window)
  {
    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    windows = [mEMORY[0x277D75128]2 windows];
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
    v15 = [windows filteredArrayUsingPredicate:v14];
    firstObject = [v15 firstObject];
    interfaceOrientation = [firstObject interfaceOrientation];

    goto LABEL_6;
  }

  mEMORY[0x277D75128]2 = [viewCopy window];
  activeInterfaceOrientation = [mEMORY[0x277D75128]2 interfaceOrientation];
LABEL_5:
  interfaceOrientation = activeInterfaceOrientation;
LABEL_6:

  return interfaceOrientation;
}

+ (void)vibrateWithIntensity:(uint64_t)a1 withPattern:(float)a2 .cold.1(uint64_t a1, float a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 134218242;
  v3 = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_241B0A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "BiometricKitUI: Vibrate with intensity: %f, and with pattern: %@", &v2, 0x16u);
}

+ (void)vibrateForBiometricEvent:(char)a1 .cold.1(char a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = a1 & 1;
  _os_log_debug_impl(&dword_241B0A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "BiometricKitUI: Vibrate for good biometric event: %i", v1, 8u);
}

@end
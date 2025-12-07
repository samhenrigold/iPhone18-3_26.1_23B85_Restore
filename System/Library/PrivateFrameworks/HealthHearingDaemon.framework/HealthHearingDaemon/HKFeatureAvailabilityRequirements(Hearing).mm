@interface HKFeatureAvailabilityRequirements(Hearing)
+ (id)hearingFeatureHardwareRequirementsForFeatureIdentifier:()Hearing;
@end

@implementation HKFeatureAvailabilityRequirements(Hearing)

+ (id)hearingFeatureHardwareRequirementsForFeatureIdentifier:()Hearing
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277CCC038]])
  {
    hearingAidCapabilityIsSupportedOnAnyPairedAirPods = [MEMORY[0x277CCD428] hearingAidCapabilityIsSupportedOnAnyPairedAirPods];
    v12 = hearingAidCapabilityIsSupportedOnAnyPairedAirPods;
    v5 = &v12;
LABEL_11:
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:{1, v8, v9, v10, v11, v12, v13}];

    goto LABEL_12;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CCC040]])
  {
    hearingAidCapabilityIsSupportedOnAnyPairedAirPods = [MEMORY[0x277CCD428] hearingAidCapabilityIsSupportedOnAnyPairedAirPods];
    v11 = hearingAidCapabilityIsSupportedOnAnyPairedAirPods;
    v5 = &v11;
    goto LABEL_11;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CCC048]])
  {
    hearingAidCapabilityIsSupportedOnAnyPairedAirPods = [MEMORY[0x277CCD428] hearingAidCapabilityIsSupportedOnAnyPairedAirPods];
    v10 = hearingAidCapabilityIsSupportedOnAnyPairedAirPods;
    v5 = &v10;
    goto LABEL_11;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CCC050]])
  {
    hearingAidCapabilityIsSupportedOnAnyPairedAirPods = [MEMORY[0x277CCD428] hearingAidCapabilityIsSupportedOnAnyPairedAirPods];
    v9 = hearingAidCapabilityIsSupportedOnAnyPairedAirPods;
    v5 = &v9;
    goto LABEL_11;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CCC058]])
  {
    hearingAidCapabilityIsSupportedOnAnyPairedAirPods = [MEMORY[0x277CCD428] hearingTestCapabilityIsSupportedOnAnyPairedAirPods];
    v8 = hearingAidCapabilityIsSupportedOnAnyPairedAirPods;
    v5 = &v8;
    goto LABEL_11;
  }

  v6 = MEMORY[0x277CBEBF8];
LABEL_12:

  return v6;
}

@end
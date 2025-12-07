@interface HKFeatureAvailabilityRequirementHearingTestCapabilityIsSupportedOnAnyPairedAirPods
- (id)requiredEntitlements;
@end

@implementation HKFeatureAvailabilityRequirementHearingTestCapabilityIsSupportedOnAnyPairedAirPods

- (id)requiredEntitlements
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = +[HKFeatureAvailabilityRequirementEntitlement bluetoothSystemAccessEntitlement];
  v6[0] = v2;
  v3 = +[HKFeatureAvailabilityRequirementEntitlement machLookupGlobalNameForBluetoothXPCEntitlement];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

@end
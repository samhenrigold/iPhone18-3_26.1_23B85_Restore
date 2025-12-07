@interface HKECGAvailabilityEngine
+ (id)shouldAdvertiseECG2WithSupportedRegion:(BOOL)region meetsAgeRequirement:(BOOL)requirement backgroundDeliveredNotAdvertised:(BOOL)advertised prevOnboarded:(BOOL)onboarded watchCapable:(BOOL)capable phoneCapable:(BOOL)phoneCapable isTinker:(BOOL)tinker;
@end

@implementation HKECGAvailabilityEngine

+ (id)shouldAdvertiseECG2WithSupportedRegion:(BOOL)region meetsAgeRequirement:(BOOL)requirement backgroundDeliveredNotAdvertised:(BOOL)advertised prevOnboarded:(BOOL)onboarded watchCapable:(BOOL)capable phoneCapable:(BOOL)phoneCapable isTinker:(BOOL)tinker
{
  if (!requirement || tinker || !capable || !phoneCapable)
  {
    v9 = +[HKECGAvailabilityResult resultWithNoAdvertisements];
    goto LABEL_4;
  }

  if (!advertised)
  {
    if (onboarded)
    {
      if (region)
      {
        *&region = 0;
        v11 = 0;
        v12 = 1;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      v13 = 1;
      goto LABEL_22;
    }

    if (region)
    {
      *&region = 1;
    }

    v11 = 1;
LABEL_19:
    v12 = 0;
    v13 = 0;
LABEL_22:
    v14 = 0;
    goto LABEL_23;
  }

  if (!region)
  {
    v11 = 0;
    goto LABEL_19;
  }

  *&region = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 1;
LABEL_23:
  v9 = [HKECGAvailabilityResult resultWithAdvertiseDirectOnboarding:region advertiseDirectOnboardingSecondary:v11 advertiseUpgrade:v12 advertiseUpgradeSecondary:v13 advertiseUpgradeBackgroundDelivered:v14];
LABEL_4:

  return v9;
}

@end
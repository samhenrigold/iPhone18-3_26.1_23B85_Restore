@interface MOEventBundleSourceTypes
+ (id)all;
@end

@implementation MOEventBundleSourceTypes

+ (id)all
{
  if (all_onceToken != -1)
  {
    +[MOEventBundleSourceTypes all];
  }

  v3 = all_allowableSourceTypes;

  return v3;
}

void __31__MOEventBundleSourceTypes_all__block_invoke()
{
  v4[9] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v4[0] = MOEventBundleSourceTypeContact;
  v4[1] = MOEventBundleSourceTypeMedia;
  v4[2] = MOEventBundleSourceTypePeopleContext;
  v4[3] = MOEventBundleSourceTypePhoto;
  v4[4] = MOEventBundleSourceTypeStateOfMind;
  v4[5] = MOEventBundleSourceTypeReflectionPrompt;
  v4[6] = MOEventBundleSourceTypeThirdPartyMedia;
  v4[7] = MOEventBundleSourceTypeVisitLocation;
  v4[8] = MOEventBundleSourceTypeActivity;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:9];
  v2 = [v0 initWithArray:v1];
  v3 = all_allowableSourceTypes;
  all_allowableSourceTypes = v2;
}

@end
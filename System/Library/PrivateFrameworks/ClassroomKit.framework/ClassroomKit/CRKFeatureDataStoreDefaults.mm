@interface CRKFeatureDataStoreDefaults
@end

@implementation CRKFeatureDataStoreDefaults

void __59__CRKFeatureDataStoreDefaults_MCX_restrictionDefaultValues__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v2 pathForResource:@"defaultSettings_macOS" ofType:@"plist"];

  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v5];
  v4 = restrictionDefaultValues_classroomRestrictionDefaultValues;
  restrictionDefaultValues_classroomRestrictionDefaultValues = v3;
}

@end
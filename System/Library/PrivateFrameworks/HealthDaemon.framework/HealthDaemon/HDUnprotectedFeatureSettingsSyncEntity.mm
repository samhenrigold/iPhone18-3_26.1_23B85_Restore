@interface HDUnprotectedFeatureSettingsSyncEntity
+ (void)didReceiveValuesForDomainNames:(id)names profile:(id)profile;
@end

@implementation HDUnprotectedFeatureSettingsSyncEntity

+ (void)didReceiveValuesForDomainNames:(id)names profile:(id)profile
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAB98];
  profileCopy = profile;
  namesCopy = names;
  defaultCenter = [v5 defaultCenter];
  v10 = @"HDUnprotectedFeatureSettingsSyncEntityDidSyncNotificationDomainNamesKey";
  v11[0] = namesCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [defaultCenter postNotificationName:@"HDUnprotectedFeatureSettingsSyncEntityDidSync" object:profileCopy userInfo:v9];
}

@end
@interface SASProximityMigrationTransferPreparationAction
+ (id)actionFromDictionary:(id)dictionary;
- (id)requestPayload;
@end

@implementation SASProximityMigrationTransferPreparationAction

+ (id)actionFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(SASProximityMigrationTransferPreparationAction);
  v5 = [dictionaryCopy objectForKeyedSubscript:@"deviceName"];

  [(SASProximityMigrationTransferPreparationAction *)v4 setDeviceName:v5];

  return v4;
}

- (id)requestPayload
{
  v8[1] = *MEMORY[0x277D85DE8];
  deviceName = [(SASProximityMigrationTransferPreparationAction *)self deviceName];

  if (deviceName)
  {
    v7 = @"deviceName";
    deviceName2 = [(SASProximityMigrationTransferPreparationAction *)self deviceName];
    v8[0] = deviceName2;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
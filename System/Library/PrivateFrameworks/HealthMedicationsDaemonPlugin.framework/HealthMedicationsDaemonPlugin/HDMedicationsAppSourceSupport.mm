@interface HDMedicationsAppSourceSupport
+ (id)medicationsAppSourceEntityForProfile:(id)profile error:(id *)error;
@end

@implementation HDMedicationsAppSourceSupport

+ (id)medicationsAppSourceEntityForProfile:(id)profile error:(id *)error
{
  v19[3] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CCC1B8];
  v6 = MEMORY[0x277CBEC38];
  v19[0] = MEMORY[0x277CBEC38];
  v7 = *MEMORY[0x277CCCDE0];
  v18[0] = v5;
  v18[1] = v7;
  v17 = *MEMORY[0x277CCE3D8];
  v8 = v17;
  v9 = MEMORY[0x277CBEA60];
  profileCopy = profile;
  v11 = [v9 arrayWithObjects:&v17 count:1];
  v18[2] = *MEMORY[0x277CCC878];
  v19[1] = v11;
  v19[2] = v6;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:{3, v17}];

  sourceManager = [profileCopy sourceManager];

  v14 = [MEMORY[0x277CCDDA8] entitlementsWithDictionary:v12];
  v15 = [sourceManager sourceForApplicationIdentifier:v8 createOrUpdateIfNecessary:1 entitlements:v14 name:0 error:error];

  return v15;
}

@end
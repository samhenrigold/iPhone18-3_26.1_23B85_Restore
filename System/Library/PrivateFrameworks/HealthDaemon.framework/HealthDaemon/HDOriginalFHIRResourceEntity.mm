@interface HDOriginalFHIRResourceEntity
+ (id)foreignKeys;
+ (id)indices;
+ (id)uniquedColumns;
@end

@implementation HDOriginalFHIRResourceEntity

+ (id)foreignKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"account_id";
  v2 = +[(HDHealthEntity *)HDClinicalAccountEntity];
  v6[1] = @"clinical_link_rowid";
  v7[0] = v2;
  v3 = +[(HDHealthEntity *)_TtC12HealthDaemon26HDClinicalHealthLinkEntity];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)uniquedColumns
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"type";
  v4[1] = @"account_id";
  v4[2] = @"id";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

+ (id)indices
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D10B40]);
  v3 = objc_opt_class();
  v8 = @"source_url";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  v5 = [v2 initWithEntity:v3 name:@"source_url" columns:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  return v6;
}

@end
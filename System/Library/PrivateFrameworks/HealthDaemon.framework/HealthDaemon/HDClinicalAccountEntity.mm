@interface HDClinicalAccountEntity
+ (id)checkConstraints;
+ (id)foreignKeys;
+ (id)joinClausesForProperty:(id)property;
@end

@implementation HDClinicalAccountEntity

+ (id)foreignKeys
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"credential_id";
  v2 = objc_alloc(MEMORY[0x277D10B38]);
  v3 = objc_opt_class();
  v4 = *MEMORY[0x277D10A40];
  v5 = [v2 initWithEntityClass:v3 property:*MEMORY[0x277D10A40] deletionAction:3];
  v11[0] = v5;
  v10[1] = @"gateway_id";
  v6 = [objc_alloc(MEMORY[0x277D10B38]) initWithEntityClass:objc_opt_class() property:v4 deletionAction:3];
  v11[1] = v6;
  v10[2] = @"signed_clinical_data_issuer_rowid";
  v7 = [objc_alloc(MEMORY[0x277D10B38]) initWithEntityClass:objc_opt_class() property:v4 deletionAction:2];
  v11[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

+ (id)checkConstraints
{
  v2 = [MEMORY[0x277D10B88] checkConstraintWithSQL:@"(gateway_id IS NOT NULL AND signed_clinical_data_issuer_rowid IS NULL) OR (gateway_id IS NULL AND signed_clinical_data_issuer_rowid IS NOT NULL)"];
  v3 = [MEMORY[0x277CBEB98] setWithObject:v2];

  return v3;
}

+ (id)joinClausesForProperty:(id)property
{
  v19[3] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v19[0] = @"gateway.external_id";
  v19[1] = @"gateway.last_reported_status";
  v19[2] = @"issuer.identifier";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v7 = [v5 initWithArray:v6];

  if ([v7 containsObject:propertyCopy])
  {
    v8 = MEMORY[0x277D10B50];
    disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
    v10 = objc_opt_class();
    v11 = *MEMORY[0x277D10A40];
    v12 = [v8 leftJoinClauseFromTable:disambiguatedDatabaseTable toTargetEntity:v10 as:@"gateway" localReference:@"gateway_id" targetKey:*MEMORY[0x277D10A40]];

    v13 = MEMORY[0x277D10B50];
    disambiguatedDatabaseTable2 = [self disambiguatedDatabaseTable];
    v15 = [v13 leftJoinClauseFromTable:disambiguatedDatabaseTable2 toTargetEntity:objc_opt_class() as:@"issuer" localReference:@"signed_clinical_data_issuer_rowid" targetKey:v11];

    v16 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v12, v15, 0}];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = &OBJC_METACLASS___HDClinicalAccountEntity;
    v16 = objc_msgSendSuper2(&v18, sel_joinClausesForProperty_, propertyCopy);
  }

  return v16;
}

@end
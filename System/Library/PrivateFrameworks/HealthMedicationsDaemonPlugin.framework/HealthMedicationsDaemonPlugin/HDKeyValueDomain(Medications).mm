@interface HDKeyValueDomain(Medications)
+ (id)hdmd_defaultDomainWithProfile:()Medications;
+ (id)hdmd_timeZoneDomainWithProfile:()Medications;
- (uint64_t)hdmd_numberValueAsBoolForKey:()Medications;
@end

@implementation HDKeyValueDomain(Medications)

+ (id)hdmd_defaultDomainWithProfile:()Medications
{
  v3 = MEMORY[0x277D10718];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithCategory:HDEntityCategoryForKeyValueCategory() domainName:*MEMORY[0x277D11440] profile:v4];

  return v6;
}

+ (id)hdmd_timeZoneDomainWithProfile:()Medications
{
  v3 = MEMORY[0x277D10718];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithCategory:HDEntityCategoryForKeyValueCategory() domainName:*MEMORY[0x277D114A8] profile:v4];

  return v6;
}

- (uint64_t)hdmd_numberValueAsBoolForKey:()Medications
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0;
  v5 = [self numberForKey:v4 error:&v10];
  v6 = v10;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = HKLogMedication();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy = self;
      v13 = 2114;
      v14 = v4;
      v15 = 2114;
      v16 = v6;
    }

    bOOLValue = 0;
  }

  else
  {
    bOOLValue = [v5 BOOLValue];
  }

  return bOOLValue;
}

@end
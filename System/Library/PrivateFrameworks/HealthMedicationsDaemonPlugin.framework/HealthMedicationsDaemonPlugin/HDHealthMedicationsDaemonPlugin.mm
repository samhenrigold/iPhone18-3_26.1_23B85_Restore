@interface HDHealthMedicationsDaemonPlugin
- (id)_databaseSchemaForProtectionClass:(id)class;
- (id)createMedicationsDaemonExtensionForHealthDaemon:(id)daemon;
- (id)createMedicationsProfileExtensionForProfile:(id)profile;
- (id)databaseEntitiesForProtectionClass:(int64_t)class;
- (id)demoDataGeneratorClasses;
- (id)extensionForProfile:(id)profile;
- (id)notificationInstructionCriteriaClasses;
- (id)ontologyFeatureEvaluatorsForDaemon:(id)daemon;
- (id)ontologySchemaImporterClasses;
- (id)orderedSyncEntities;
- (id)stateSyncEntityClasses;
- (id)taskServerClasses;
- (id)userDomainConceptEntityClasses;
- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)class;
- (void)registerMigrationStepsForProtectionClass:(int64_t)class migrator:(id)migrator;
@end

@implementation HDHealthMedicationsDaemonPlugin

- (id)extensionForProfile:(id)profile
{
  profileCopy = profile;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HDHealthMedicationsDaemonPlugin *)self createMedicationsProfileExtensionForProfile:profileCopy];
    [v5 start];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)createMedicationsDaemonExtensionForHealthDaemon:(id)daemon
{
  daemonCopy = daemon;
  v4 = [[HDHealthMedicationsDaemonExtension alloc] initWithHealthDaemon:daemonCopy];

  return v4;
}

- (id)createMedicationsProfileExtensionForProfile:(id)profile
{
  profileCopy = profile;
  v4 = [[HDHealthMedicationsProfileExtension alloc] initWithProfile:profileCopy];

  return v4;
}

- (id)taskServerClasses
{
  v4[7] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:7];

  return v2;
}

- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)class
{
  v3 = [(HDHealthMedicationsDaemonPlugin *)self _databaseSchemaForProtectionClass:class];
  currentSchemaVersion = [v3 currentSchemaVersion];

  return currentSchemaVersion;
}

- (id)notificationInstructionCriteriaClasses
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)userDomainConceptEntityClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  medicationUserDomainConceptTypeIdentifier = [MEMORY[0x277CCDB50] medicationUserDomainConceptTypeIdentifier];
  v5 = medicationUserDomainConceptTypeIdentifier;
  v6[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (id)orderedSyncEntities
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (id)ontologySchemaImporterClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CCC628];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)ontologyFeatureEvaluatorsForDaemon:(id)daemon
{
  healthMedicationsDaemonExtension = [daemon healthMedicationsDaemonExtension];
  ontologyFeatureEvaluators = [healthMedicationsDaemonExtension ontologyFeatureEvaluators];

  return ontologyFeatureEvaluators;
}

- (id)demoDataGeneratorClasses
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)stateSyncEntityClasses
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)_databaseSchemaForProtectionClass:(id)class
{
  if (class)
  {
    if (a2 == 1)
    {
      v3 = off_2796CCA18;
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_7;
      }

      v3 = off_2796CCA10;
    }

    class = objc_alloc_init(*v3);
  }

LABEL_7:

  return class;
}

- (id)databaseEntitiesForProtectionClass:(int64_t)class
{
  v3 = [(HDHealthMedicationsDaemonPlugin *)self _databaseSchemaForProtectionClass:class];
  databaseEntities = [v3 databaseEntities];

  return databaseEntities;
}

- (void)registerMigrationStepsForProtectionClass:(int64_t)class migrator:(id)migrator
{
  migratorCopy = migrator;
  v8 = [(HDHealthMedicationsDaemonPlugin *)self _databaseSchemaForProtectionClass:class];
  schemaName = [(HDHealthMedicationsDaemonPlugin *)self schemaName];
  [v8 registerMigrationStepsWithMigrator:migratorCopy schemaName:schemaName];
}

@end
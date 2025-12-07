@interface HDSimpleGraphDatabaseMigrator
+ (id)_futureMigrationSteps;
+ (id)_migrationSteps;
+ (id)migrationStepsWithBehavior:(id)behavior;
@end

@implementation HDSimpleGraphDatabaseMigrator

+ (id)migrationStepsWithBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v5 = +[(HDSimpleGraphDatabaseMigrator *)self];
  supportsOntologyDatabaseFutureMigrations = [behaviorCopy supportsOntologyDatabaseFutureMigrations];

  if (supportsOntologyDatabaseFutureMigrations)
  {
    v7 = +[(HDSimpleGraphDatabaseMigrator *)self];
    v8 = [v5 arrayByAddingObjectsFromArray:v7];

    v5 = v8;
  }

  return v5;
}

+ (id)_migrationSteps
{
  v7[4] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v1 = [HDSimpleGraphDatabaseMigrationStep migrationToVersion:5 function:_removeUserDataAndAdHocConcepts];
  v7[0] = v1;
  v2 = [HDSimpleGraphDatabaseMigrationStep migrationToVersion:6 function:_improveOntologyDatabaseSchema];
  v7[1] = v2;
  v3 = [HDSimpleGraphDatabaseMigrationStep migrationToVersion:7 function:_shardedOntologySupport];
  v7[2] = v3;
  v4 = [HDSimpleGraphDatabaseMigrationStep migrationToVersion:8 function:_removeOrphanedSydneyContent];
  v7[3] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];

  return v5;
}

+ (id)_futureMigrationSteps
{
  v5[2] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v1 = [HDSimpleGraphDatabaseMigrationStep migrationToVersion:10001 function:_noOpSuccess];
  v5[0] = v1;
  v2 = [HDSimpleGraphDatabaseMigrationStep migrationToVersion:10002 function:_noOpSuccess];
  v5[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];

  return v3;
}

@end
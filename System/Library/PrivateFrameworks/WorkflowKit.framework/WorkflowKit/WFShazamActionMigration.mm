@interface WFShazamActionMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFShazamActionMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  v4 = sub_1CA94C1C8();
  v5 = sub_1CA94C3A8();
  v6 = static ShazamActionMigration.workflowNeedsMigration(_:fromClientVersion:)(v4, v5);

  return v6 & 1;
}

- (void)migrateWorkflow
{
  selfCopy = self;
  ShazamActionMigration.migrateWorkflow()();
}

@end
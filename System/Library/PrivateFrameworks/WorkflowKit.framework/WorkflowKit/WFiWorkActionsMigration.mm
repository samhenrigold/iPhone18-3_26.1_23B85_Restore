@interface WFiWorkActionsMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFiWorkActionsMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  v4 = sub_1CA94C1C8();
  sub_1CA94C3A8();
  v5 = static iWorkActionsMigration.workflowNeedsMigration(_:fromClientVersion:)(v4);

  return v5;
}

- (void)migrateWorkflow
{
  selfCopy = self;
  iWorkActionsMigration.migrateWorkflow()();
}

@end
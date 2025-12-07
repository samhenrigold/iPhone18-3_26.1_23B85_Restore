@interface MBPQLSchemaUpgrade
+ (id)upgradeWithVersion:(unsigned int)version shouldVacuum:(BOOL)vacuum statements:(id)statements;
+ (id)upgradeWithVersion:(unsigned int)version shouldVacuum:(BOOL)vacuum upgradeBlock:(id)block;
@end

@implementation MBPQLSchemaUpgrade

+ (id)upgradeWithVersion:(unsigned int)version shouldVacuum:(BOOL)vacuum statements:(id)statements
{
  vacuumCopy = vacuum;
  v6 = *&version;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100078A18;
  v10[3] = &unk_1000FDFA0;
  statementsCopy = statements;
  v7 = statementsCopy;
  v8 = [MBPQLSchemaUpgrade upgradeWithVersion:v6 shouldVacuum:vacuumCopy upgradeBlock:v10];

  return v8;
}

+ (id)upgradeWithVersion:(unsigned int)version shouldVacuum:(BOOL)vacuum upgradeBlock:(id)block
{
  vacuumCopy = vacuum;
  v6 = *&version;
  blockCopy = block;
  v8 = objc_opt_new();
  [v8 setVersion:v6];
  [v8 setShouldVacuum:vacuumCopy];
  v9 = [blockCopy copy];

  [v8 setUpgradeBlock:v9];

  return v8;
}

@end
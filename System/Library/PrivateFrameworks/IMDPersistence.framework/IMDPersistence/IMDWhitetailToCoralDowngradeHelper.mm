@interface IMDWhitetailToCoralDowngradeHelper
- (IMDWhitetailToCoralDowngradeHelper)initWithPath:(id)path;
@end

@implementation IMDWhitetailToCoralDowngradeHelper

- (IMDWhitetailToCoralDowngradeHelper)initWithPath:(id)path
{
  v6 = objc_msgSend_arrayOfTableNames(IMDWhitetailToCoralDowngradeHelper, a2, path, v3);
  TablesSQL = objc_msgSend_arrayOfCreateTablesSQL(IMDWhitetailToCoralDowngradeHelper, v7, v8, v9);
  IndexesSQL = objc_msgSend_arrayOfCreateIndexesSQL(IMDWhitetailToCoralDowngradeHelper, v11, v12, v13);
  TriggersSQL = objc_msgSend_arrayOfCreateTriggersSQL(IMDWhitetailToCoralDowngradeHelper, v15, v16, v17);
  v20.receiver = self;
  v20.super_class = IMDWhitetailToCoralDowngradeHelper;
  return [(IMDDatabaseDowngradeHelper *)&v20 initWithPath:path tableNames:v6 createTablesSQL:TablesSQL createIndexesSQL:IndexesSQL createTriggersSQL:TriggersSQL downgradesToVersion:9006];
}

@end
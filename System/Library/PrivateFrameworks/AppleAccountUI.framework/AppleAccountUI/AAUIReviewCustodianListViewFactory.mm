@interface AAUIReviewCustodianListViewFactory
+ (id)createWithAccountManager:(id)manager repairHelper:(id)helper;
+ (id)createWithAccountManager:(id)manager repairHelper:(id)helper telemetryFlowID:(id)d;
@end

@implementation AAUIReviewCustodianListViewFactory

+ (id)createWithAccountManager:(id)manager repairHelper:(id)helper
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](manager, v4);
  MEMORY[0x1E69E5928](helper, v5);
  swift_getObjCClassMetadata();
  v9 = static ReviewCustodianListViewFactory.create(accountManager:repairHelper:)(manager, helper);
  MEMORY[0x1E69E5920](helper);
  MEMORY[0x1E69E5920](manager);

  return v9;
}

+ (id)createWithAccountManager:(id)manager repairHelper:(id)helper telemetryFlowID:(id)d
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](manager, v5);
  MEMORY[0x1E69E5928](helper, v6);
  MEMORY[0x1E69E5928](d, v7);
  v10 = sub_1C5596574();
  v11 = v8;
  swift_getObjCClassMetadata();
  v15 = static ReviewCustodianListViewFactory.create(accountManager:repairHelper:telemetryFlowID:)(manager, helper, v10, v11);

  MEMORY[0x1E69E5920](d);
  MEMORY[0x1E69E5920](helper);
  MEMORY[0x1E69E5920](manager);

  return v15;
}

@end
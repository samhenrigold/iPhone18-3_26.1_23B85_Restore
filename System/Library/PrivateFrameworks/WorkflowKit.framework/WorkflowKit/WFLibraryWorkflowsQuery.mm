@interface WFLibraryWorkflowsQuery
+ (id)sortedWorkflowsWithQuery:(id)query;
+ (id)sortedWorkflowsWithQuery:(id)query sortByName:(BOOL)name hasAssociatedBundleIdentifier:(BOOL)identifier;
+ (id)sortedWorkflowsWithQuery:(id)query sortByName:(BOOL)name limit:(int64_t)limit;
+ (id)sortedWorkflowsWithQuery:(id)query sortByName:(BOOL)name nameContaining:(id)containing limit:(int64_t)limit;
@end

@implementation WFLibraryWorkflowsQuery

+ (id)sortedWorkflowsWithQuery:(id)query
{
  swift_getObjCClassMetadata();
  queryCopy = query;
  v5 = sub_1CA62521C(queryCopy);

  return v5;
}

+ (id)sortedWorkflowsWithQuery:(id)query sortByName:(BOOL)name limit:(int64_t)limit
{
  nameCopy = name;
  swift_getObjCClassMetadata();
  queryCopy = query;
  v9 = sub_1CA6252B8(queryCopy, nameCopy, limit);

  return v9;
}

+ (id)sortedWorkflowsWithQuery:(id)query sortByName:(BOOL)name hasAssociatedBundleIdentifier:(BOOL)identifier
{
  swift_getObjCClassMetadata();
  queryCopy = query;
  v7 = sub_1CA62538C(queryCopy);

  return v7;
}

+ (id)sortedWorkflowsWithQuery:(id)query sortByName:(BOOL)name nameContaining:(id)containing limit:(int64_t)limit
{
  nameCopy = name;
  v9 = sub_1CA94C3A8();
  v11 = v10;
  swift_getObjCClassMetadata();
  queryCopy = query;
  v13 = sub_1CA6254CC(queryCopy, nameCopy, v9, v11, limit);

  return v13;
}

@end
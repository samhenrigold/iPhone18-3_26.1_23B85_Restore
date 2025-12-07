@interface SHFetchRequestFactory
+ (id)groupsFetchRequestWithContext:(id)context;
+ (id)tracksFetchRequestWithContext:(id)context fetchOffset:(unint64_t)offset fetchLimit:(unint64_t)limit sortedByAscendingDate:(BOOL)date excludeCloudMetadata:(BOOL)metadata;
@end

@implementation SHFetchRequestFactory

+ (id)tracksFetchRequestWithContext:(id)context fetchOffset:(unint64_t)offset fetchLimit:(unint64_t)limit sortedByAscendingDate:(BOOL)date excludeCloudMetadata:(BOOL)metadata
{
  dateCopy = date;
  contextCopy = context;
  v12 = +[SHTrackMO fetchRequest];
  v13 = NSStringFromSelector("date");
  v14 = [NSSortDescriptor sortDescriptorWithKey:v13 ascending:dateCopy];

  v29 = v14;
  v15 = [NSArray arrayWithObjects:&v29 count:1];
  [v12 setSortDescriptors:v15];

  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [NSEntityDescription entityForName:v17 inManagedObjectContext:contextCopy];

  attributesByName = [v18 attributesByName];
  allKeys = [attributesByName allKeys];
  v21 = [allKeys mutableCopy];

  [v21 removeObject:@"rawSongResponse"];
  v22 = [v21 copy];
  [v12 setPropertiesToFetch:v22];

  [v12 setReturnsObjectsAsFaults:1];
  if (metadata)
  {
    v23 = NSStringFromSelector("group");
    v28 = v23;
    v24 = [NSArray arrayWithObjects:&v28 count:1];
  }

  else
  {
    v23 = NSStringFromSelector("metadata");
    v27[0] = v23;
    v25 = NSStringFromSelector("group");
    v27[1] = v25;
    v24 = [NSArray arrayWithObjects:v27 count:2];
  }

  [v12 setRelationshipKeyPathsForPrefetching:v24];
  [v12 setFetchOffset:offset];
  [v12 setFetchLimit:limit];

  return v12;
}

+ (id)groupsFetchRequestWithContext:(id)context
{
  v3 = +[SHGroupMO fetchRequest];
  [v3 setSortDescriptors:&__NSArray0__struct];
  [v3 setReturnsObjectsAsFaults:0];
  v4 = NSStringFromSelector("metadata");
  v8[0] = v4;
  v5 = NSStringFromSelector("tracks");
  v8[1] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:2];
  [v3 setRelationshipKeyPathsForPrefetching:v6];

  return v3;
}

@end
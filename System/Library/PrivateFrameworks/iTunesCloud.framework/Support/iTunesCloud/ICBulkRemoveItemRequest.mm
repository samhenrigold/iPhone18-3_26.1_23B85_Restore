@interface ICBulkRemoveItemRequest
+ (id)requestWithDatabaseID:(unsigned int)d itemID:(unsigned int)iD;
+ (id)requestWithDatabaseID:(unsigned int)d itemIDs:(id)ds;
@end

@implementation ICBulkRemoveItemRequest

+ (id)requestWithDatabaseID:(unsigned int)d itemIDs:(id)ds
{
  v4 = *&d;
  dsCopy = ds;
  v6 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v4 sagaIDs:dsCopy itemKind:2];

  return v6;
}

+ (id)requestWithDatabaseID:(unsigned int)d itemID:(unsigned int)iD
{
  v4 = *&iD;
  v5 = *&d;
  v6 = objc_alloc(objc_opt_class());
  v7 = [NSNumber numberWithUnsignedInt:v4];
  v11 = v7;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  v9 = [v6 initWithDatabaseID:v5 sagaIDs:v8 itemKind:2];

  return v9;
}

@end
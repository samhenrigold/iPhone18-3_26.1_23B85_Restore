@interface ICBulkItemArtworkInfoRequest
+ (id)requestWithDatabaseID:(unsigned int)d itemIDs:(id)ds useLongIDs:(BOOL)iDs;
@end

@implementation ICBulkItemArtworkInfoRequest

+ (id)requestWithDatabaseID:(unsigned int)d itemIDs:(id)ds useLongIDs:(BOOL)iDs
{
  iDsCopy = iDs;
  v6 = *&d;
  dsCopy = ds;
  v8 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v6 cloudIDs:dsCopy itemKind:2 useLongIDs:iDsCopy];

  return v8;
}

@end
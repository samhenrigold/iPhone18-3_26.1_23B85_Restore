@interface ICBulkPlaylistArtworkInfoRequest
+ (id)requestWithDatabaseID:(unsigned int)d containerIDs:(id)ds;
@end

@implementation ICBulkPlaylistArtworkInfoRequest

+ (id)requestWithDatabaseID:(unsigned int)d containerIDs:(id)ds
{
  v4 = *&d;
  dsCopy = ds;
  v6 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v4 cloudIDs:dsCopy itemKind:1 useLongIDs:0];

  return v6;
}

@end
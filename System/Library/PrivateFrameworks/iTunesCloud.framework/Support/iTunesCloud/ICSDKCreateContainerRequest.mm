@interface ICSDKCreateContainerRequest
+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision playlistProperties:(id)properties trackList:(id)list requestingBundleID:(id)iD;
- (ICSDKCreateContainerRequest)initWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision playlistProperties:(id)properties trackList:(id)list requestingBundleID:(id)iD;
@end

@implementation ICSDKCreateContainerRequest

- (ICSDKCreateContainerRequest)initWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision playlistProperties:(id)properties trackList:(id)list requestingBundleID:(id)iD
{
  v9 = *&revision;
  v10 = *&d;
  iDCopy = iD;
  v16.receiver = self;
  v16.super_class = ICSDKCreateContainerRequest;
  v13 = [(ICCreateContainerRequest *)&v16 initWithDatabaseID:v10 databaseRevision:v9 playlistProperties:properties trackList:list];
  v14 = v13;
  if (v13)
  {
    [(ICDRequest *)v13 setRequestingBundleID:iDCopy];
  }

  return v14;
}

+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision playlistProperties:(id)properties trackList:(id)list requestingBundleID:(id)iD
{
  v9 = *&revision;
  v10 = *&d;
  iDCopy = iD;
  listCopy = list;
  propertiesCopy = properties;
  v14 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v10 databaseRevision:v9 playlistProperties:propertiesCopy trackList:listCopy requestingBundleID:iDCopy];

  return v14;
}

@end
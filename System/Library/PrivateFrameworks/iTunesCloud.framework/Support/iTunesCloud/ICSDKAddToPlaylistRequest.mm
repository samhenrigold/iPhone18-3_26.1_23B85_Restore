@interface ICSDKAddToPlaylistRequest
+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision opaqueID:(id)iD bundleID:(id)bundleID containerID:(unsigned int)containerID;
- (id)_bodyDataForDatabaseRevision:(unsigned int)revision opaqueID:(id)d;
@end

@implementation ICSDKAddToPlaylistRequest

+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision opaqueID:(id)iD bundleID:(id)bundleID containerID:(unsigned int)containerID
{
  v7 = *&containerID;
  v9 = *&revision;
  v10 = *&d;
  bundleIDCopy = bundleID;
  iDCopy = iD;
  v13 = [NSString stringWithFormat:@"databases/%u/containers/%u/cloud-add", v10, v7];
  v14 = [objc_alloc(objc_opt_class()) initWithAction:v13 databaseID:v10 databaseRevision:v9 opaqueID:iDCopy bundleID:bundleIDCopy];

  return v14;
}

- (id)_bodyDataForDatabaseRevision:(unsigned int)revision opaqueID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  v5 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v5;
}

@end
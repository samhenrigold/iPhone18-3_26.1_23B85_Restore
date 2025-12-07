@interface ICCreateGeniusContainerRequest
+ (id)requestWithDatabaseID:(unsigned int)d playlistName:(id)name seedItemIDs:(id)ds itemIDs:(id)iDs;
- (ICCreateGeniusContainerRequest)initWithDatabaseID:(unsigned int)d playlistName:(id)name seedItemIDs:(id)ds itemIDs:(id)iDs;
- (id)_bodyDataForPlaylistName:(id)name seedItemIDs:(id)ds itemIDs:(id)iDs;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICCreateGeniusContainerRequest

- (id)_bodyDataForPlaylistName:(id)name seedItemIDs:(id)ds itemIDs:(id)iDs
{
  nameCopy = name;
  dsCopy = ds;
  v14 = nameCopy;
  iDsCopy = iDs;
  v16 = dsCopy;
  v9 = dsCopy;
  v10 = iDsCopy;
  v11 = nameCopy;
  v12 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v12;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICCreateGeniusContainerResponse responseWithResponse:response];
  responseData = [v3 responseData];
  v5 = [ICDResponseDataParser parseResponseData:responseData];

  lastObject = [v5 lastObject];
  v7 = [lastObject objectForKey:@"dmap.itemid"];
  [v3 setContainerID:{objc_msgSend(v7, "unsignedIntValue")}];

  return v3;
}

- (ICCreateGeniusContainerRequest)initWithDatabaseID:(unsigned int)d playlistName:(id)name seedItemIDs:(id)ds itemIDs:(id)iDs
{
  v8 = *&d;
  nameCopy = name;
  dsCopy = ds;
  iDsCopy = iDs;
  v13 = [NSString stringWithFormat:@"databases/%u/edit", v8];
  v17.receiver = self;
  v17.super_class = ICCreateGeniusContainerRequest;
  v14 = [(ICDRequest *)&v17 initWithAction:v13];

  if (v14)
  {
    [(ICDRequest *)v14 setMethod:1];
    v15 = [(ICCreateGeniusContainerRequest *)v14 _bodyDataForPlaylistName:nameCopy seedItemIDs:dsCopy itemIDs:iDsCopy];
    [(ICDRequest *)v14 setBodyData:v15];
  }

  return v14;
}

+ (id)requestWithDatabaseID:(unsigned int)d playlistName:(id)name seedItemIDs:(id)ds itemIDs:(id)iDs
{
  v8 = *&d;
  iDsCopy = iDs;
  dsCopy = ds;
  nameCopy = name;
  v12 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v8 playlistName:nameCopy seedItemIDs:dsCopy itemIDs:iDsCopy];

  return v12;
}

@end
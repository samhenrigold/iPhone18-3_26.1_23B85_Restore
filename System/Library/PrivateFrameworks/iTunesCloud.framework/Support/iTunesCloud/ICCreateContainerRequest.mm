@interface ICCreateContainerRequest
+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision playlistProperties:(id)properties trackList:(id)list;
- (ICCreateContainerRequest)initWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision playlistProperties:(id)properties trackList:(id)list;
- (id)_bodyDataForDatabaseRevision:(unsigned int)revision playlistProperties:(id)properties trackList:(id)list;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICCreateContainerRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)revision playlistProperties:(id)properties trackList:(id)list
{
  propertiesCopy = properties;
  listCopy = list;
  v6 = listCopy;
  v7 = propertiesCopy;
  v8 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v8;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICCreateContainerResponse responseWithResponse:response];
  responseData = [v3 responseData];
  if ([responseData length])
  {
    v5 = [NSInputStream inputStreamWithData:responseData];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = objc_alloc_init(CreateContainerResponseParserDelegate);
    [v6 setDelegate:v7];
    [v6 parse];
    [v3 setContainerID:{-[CreateContainerResponseParserDelegate containerID](v7, "containerID")}];
    [v3 setUpdateRequired:{-[CreateContainerResponseParserDelegate updateRequired](v7, "updateRequired")}];
  }

  return v3;
}

- (ICCreateContainerRequest)initWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision playlistProperties:(id)properties trackList:(id)list
{
  v7 = *&revision;
  v8 = *&d;
  propertiesCopy = properties;
  listCopy = list;
  v12 = [NSString stringWithFormat:@"databases/%u/edit", v8];
  v16.receiver = self;
  v16.super_class = ICCreateContainerRequest;
  v13 = [(ICDRequest *)&v16 initWithAction:v12];

  if (v13)
  {
    [(ICDRequest *)v13 setMethod:1];
    v14 = [(ICCreateContainerRequest *)v13 _bodyDataForDatabaseRevision:v7 playlistProperties:propertiesCopy trackList:listCopy];
    [(ICDRequest *)v13 setBodyData:v14];
  }

  return v13;
}

+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision playlistProperties:(id)properties trackList:(id)list
{
  v7 = *&revision;
  v8 = *&d;
  listCopy = list;
  propertiesCopy = properties;
  v11 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v8 databaseRevision:v7 playlistProperties:propertiesCopy trackList:listCopy];

  return v11;
}

@end
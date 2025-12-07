@interface ICSetContainerPropertiesRequest
+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision containerID:(unsigned int)iD trackList:(id)list properties:(id)properties;
- (ICSetContainerPropertiesRequest)initWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision containerID:(unsigned int)iD trackList:(id)list properties:(id)properties;
- (id)_bodyDataForDatabaseRevision:(unsigned int)revision containerID:(unsigned int)d trackList:(id)list properties:(id)properties;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICSetContainerPropertiesRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)revision containerID:(unsigned int)d trackList:(id)list properties:(id)properties
{
  listCopy = list;
  propertiesCopy = properties;
  v8 = listCopy;
  v9 = propertiesCopy;
  v10 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v10;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICSetContainerPropertiesResponse responseWithResponse:response];
  responseData = [v3 responseData];
  if ([responseData length])
  {
    v5 = [NSInputStream inputStreamWithData:responseData];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = objc_alloc_init(SetContainerPropertiesResponseParserDelegate);
    [v6 setDelegate:v7];
    [v6 parse];
    failedItems = [(SetContainerPropertiesResponseParserDelegate *)v7 failedItems];
    v9 = [failedItems copy];
    [v3 setFailedItems:v9];

    [v3 setUpdateRequired:{-[SetContainerPropertiesResponseParserDelegate updateRequired](v7, "updateRequired")}];
    globalPlaylistID = [(SetContainerPropertiesResponseParserDelegate *)v7 globalPlaylistID];
    [v3 setGlobalPlaylistID:globalPlaylistID];

    subscribedContainerURL = [(SetContainerPropertiesResponseParserDelegate *)v7 subscribedContainerURL];
    [v3 setSubscribedContainerURL:subscribedContainerURL];
  }

  return v3;
}

- (ICSetContainerPropertiesRequest)initWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision containerID:(unsigned int)iD trackList:(id)list properties:(id)properties
{
  v8 = *&iD;
  v9 = *&revision;
  v10 = *&d;
  listCopy = list;
  propertiesCopy = properties;
  v14 = [NSString stringWithFormat:@"databases/%u/edit", v10];
  v18.receiver = self;
  v18.super_class = ICSetContainerPropertiesRequest;
  v15 = [(ICDRequest *)&v18 initWithAction:v14];

  if (v15)
  {
    [(ICDRequest *)v15 setMethod:1];
    v16 = [(ICSetContainerPropertiesRequest *)v15 _bodyDataForDatabaseRevision:v9 containerID:v8 trackList:listCopy properties:propertiesCopy];
    [(ICDRequest *)v15 setBodyData:v16];
  }

  return v15;
}

+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision containerID:(unsigned int)iD trackList:(id)list properties:(id)properties
{
  v8 = *&iD;
  v9 = *&revision;
  v10 = *&d;
  propertiesCopy = properties;
  listCopy = list;
  v13 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v10 databaseRevision:v9 containerID:v8 trackList:listCopy properties:propertiesCopy];

  return v13;
}

@end
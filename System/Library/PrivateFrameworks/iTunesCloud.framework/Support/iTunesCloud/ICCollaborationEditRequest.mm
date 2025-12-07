@interface ICCollaborationEditRequest
- (ICCollaborationEditRequest)initWithDatabaseID:(unsigned int)d playlistSagaID:(unint64_t)iD cloudLibraryRevision:(unsigned int)revision properties:(id)properties trackEdits:(id)edits;
- (id)_requestBody;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICCollaborationEditRequest

- (id)_requestBody
{
  v2 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v2;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICCollaborationEditResponse responseWithResponse:response];
  responseData = [v3 responseData];
  if ([responseData length])
  {
    v5 = [NSInputStream inputStreamWithData:responseData];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = [[ICCollaborationEditResponseParserDelegate alloc] initWithResponse:v3];
    [v6 setDelegate:v7];
    [v6 parse];
  }

  return v3;
}

- (ICCollaborationEditRequest)initWithDatabaseID:(unsigned int)d playlistSagaID:(unint64_t)iD cloudLibraryRevision:(unsigned int)revision properties:(id)properties trackEdits:(id)edits
{
  v11 = *&d;
  propertiesCopy = properties;
  editsCopy = edits;
  v15 = [NSString stringWithFormat:@"databases/%u/collaboration", v11];
  v19.receiver = self;
  v19.super_class = ICCollaborationEditRequest;
  v16 = [(ICDRequest *)&v19 initWithAction:v15];

  if (v16)
  {
    v16->_playlistCloudLibraryID = iD;
    v16->_cloudLibraryRevision = revision;
    objc_storeStrong(&v16->_properties, properties);
    objc_storeStrong(&v16->_trackEdits, edits);
    [(ICDRequest *)v16 setMethod:1];
    _requestBody = [(ICCollaborationEditRequest *)v16 _requestBody];
    [(ICDRequest *)v16 setBodyData:_requestBody];
  }

  return v16;
}

@end
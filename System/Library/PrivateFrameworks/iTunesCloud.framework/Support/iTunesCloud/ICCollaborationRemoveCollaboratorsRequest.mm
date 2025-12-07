@interface ICCollaborationRemoveCollaboratorsRequest
- (ICCollaborationRemoveCollaboratorsRequest)initWithDatabaseID:(unsigned int)d globalPlaylistID:(id)iD socialProfileIDs:(id)ds;
- (id)_requestBody;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICCollaborationRemoveCollaboratorsRequest

- (id)_requestBody
{
  v2 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v2;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICCollaborationRemoveCollaboratorsResponse responseWithResponse:response];
  responseData = [v3 responseData];
  if ([responseData length])
  {
    v5 = [NSInputStream inputStreamWithData:responseData];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = [[ICCollaborationRemoveCollaboratorsResponseParserDelegate alloc] initWithResponse:v3];
    [v6 setDelegate:v7];
    [v6 parse];
  }

  return v3;
}

- (ICCollaborationRemoveCollaboratorsRequest)initWithDatabaseID:(unsigned int)d globalPlaylistID:(id)iD socialProfileIDs:(id)ds
{
  v7 = *&d;
  iDCopy = iD;
  dsCopy = ds;
  v11 = [NSString stringWithFormat:@"databases/%u/collaboration", v7];
  v15.receiver = self;
  v15.super_class = ICCollaborationRemoveCollaboratorsRequest;
  v12 = [(ICDRequest *)&v15 initWithAction:v11];

  if (v12)
  {
    [(ICDRequest *)v12 setMethod:1];
    objc_storeStrong(&v12->_globalPlaylistID, iD);
    objc_storeStrong(&v12->_socialProfileIDs, ds);
    _requestBody = [(ICCollaborationRemoveCollaboratorsRequest *)v12 _requestBody];
    [(ICDRequest *)v12 setBodyData:_requestBody];
  }

  return v12;
}

@end
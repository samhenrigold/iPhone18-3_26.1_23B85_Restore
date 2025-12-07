@interface ICCollaborationRespondToPendingCollaboratorRequest
- (ICCollaborationRespondToPendingCollaboratorRequest)initWithDatabaseID:(unsigned int)d globalPlaylistID:(id)iD socialProfileID:(id)profileID approval:(BOOL)approval;
- (id)_requestBody;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICCollaborationRespondToPendingCollaboratorRequest

- (id)_requestBody
{
  v2 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v2;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICCollaborationRespondToPendingCollaboratorResponse responseWithResponse:response];
  responseData = [v3 responseData];
  if ([responseData length])
  {
    v5 = [NSInputStream inputStreamWithData:responseData];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = [[ICCollaborationRespondToPendingCollaboratorResponseParserDelegate alloc] initWithResponse:v3];
    [v6 setDelegate:v7];
    [v6 parse];
  }

  return v3;
}

- (ICCollaborationRespondToPendingCollaboratorRequest)initWithDatabaseID:(unsigned int)d globalPlaylistID:(id)iD socialProfileID:(id)profileID approval:(BOOL)approval
{
  v9 = *&d;
  iDCopy = iD;
  profileIDCopy = profileID;
  v13 = [NSString stringWithFormat:@"databases/%u/collaboration", v9];
  v17.receiver = self;
  v17.super_class = ICCollaborationRespondToPendingCollaboratorRequest;
  v14 = [(ICDRequest *)&v17 initWithAction:v13];

  if (v14)
  {
    [(ICDRequest *)v14 setMethod:1];
    objc_storeStrong(&v14->_globalPlaylistID, iD);
    objc_storeStrong(&v14->_socialProfileID, profileID);
    v14->_approval = approval;
    _requestBody = [(ICCollaborationRespondToPendingCollaboratorRequest *)v14 _requestBody];
    [(ICDRequest *)v14 setBodyData:_requestBody];
  }

  return v14;
}

@end
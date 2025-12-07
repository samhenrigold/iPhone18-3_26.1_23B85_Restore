@interface ICCollaborationJoinRequest
- (ICCollaborationJoinRequest)initWithDatabaseID:(unsigned int)d globalPlaylistID:(id)iD invitationURL:(id)l;
- (id)_requestBody;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICCollaborationJoinRequest

- (id)_requestBody
{
  v2 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v2;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICCollaborationJoinResponse responseWithResponse:response];
  responseData = [v3 responseData];
  if ([responseData length])
  {
    v5 = [NSInputStream inputStreamWithData:responseData];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = [[ICCollaborationJoinResponseParserDelegate alloc] initWithResponse:v3];
    [v6 setDelegate:v7];
    [v6 parse];
  }

  return v3;
}

- (ICCollaborationJoinRequest)initWithDatabaseID:(unsigned int)d globalPlaylistID:(id)iD invitationURL:(id)l
{
  v7 = *&d;
  iDCopy = iD;
  lCopy = l;
  v11 = [NSString stringWithFormat:@"databases/%u/collaboration", v7];
  v15.receiver = self;
  v15.super_class = ICCollaborationJoinRequest;
  v12 = [(ICDRequest *)&v15 initWithAction:v11];

  if (v12)
  {
    [(ICDRequest *)v12 setMethod:1];
    objc_storeStrong(&v12->_globalPlaylistID, iD);
    objc_storeStrong(&v12->_invitationURL, l);
    _requestBody = [(ICCollaborationJoinRequest *)v12 _requestBody];
    [(ICDRequest *)v12 setBodyData:_requestBody];
  }

  return v12;
}

@end
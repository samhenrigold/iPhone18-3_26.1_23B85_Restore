@interface ICCollaborationResetInvitationURLRequest
- (ICCollaborationResetInvitationURLRequest)initWithDatabaseID:(unsigned int)d globalPlaylistID:(id)iD;
- (id)_requestBody;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICCollaborationResetInvitationURLRequest

- (id)_requestBody
{
  v2 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v2;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICCollaborationResetInvitationURLResponse responseWithResponse:response];
  responseData = [v3 responseData];
  if ([responseData length])
  {
    v5 = [NSInputStream inputStreamWithData:responseData];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = [[ICCollaborationResetInvitationURLResponseParserDelegate alloc] initWithResponse:v3];
    [v6 setDelegate:v7];
    [v6 parse];
  }

  return v3;
}

- (ICCollaborationResetInvitationURLRequest)initWithDatabaseID:(unsigned int)d globalPlaylistID:(id)iD
{
  v5 = *&d;
  iDCopy = iD;
  v8 = [NSString stringWithFormat:@"databases/%u/collaboration", v5];
  v12.receiver = self;
  v12.super_class = ICCollaborationResetInvitationURLRequest;
  v9 = [(ICDRequest *)&v12 initWithAction:v8];

  if (v9)
  {
    [(ICDRequest *)v9 setMethod:1];
    objc_storeStrong(&v9->_globalPlaylistID, iD);
    _requestBody = [(ICCollaborationResetInvitationURLRequest *)v9 _requestBody];
    [(ICDRequest *)v9 setBodyData:_requestBody];
  }

  return v9;
}

@end
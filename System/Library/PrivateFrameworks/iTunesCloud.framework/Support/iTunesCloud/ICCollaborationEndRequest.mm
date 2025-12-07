@interface ICCollaborationEndRequest
- (ICCollaborationEndRequest)initWithDatabaseID:(unsigned int)d playlistSagaID:(unint64_t)iD;
- (id)_requestBodyWithPlaylistCloudLibraryID:(unint64_t)d;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICCollaborationEndRequest

- (id)_requestBodyWithPlaylistCloudLibraryID:(unint64_t)d
{
  v3 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v3;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICCollaborationEndResponse responseWithResponse:response];
  responseData = [v3 responseData];
  if ([responseData length])
  {
    v5 = [NSInputStream inputStreamWithData:responseData];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = [[ICCollaborationEndResponseParserDelegate alloc] initWithResponse:v3];
    [v6 setDelegate:v7];
    [v6 parse];
  }

  return v3;
}

- (ICCollaborationEndRequest)initWithDatabaseID:(unsigned int)d playlistSagaID:(unint64_t)iD
{
  v6 = [NSString stringWithFormat:@"databases/%u/collaboration", *&d];
  v10.receiver = self;
  v10.super_class = ICCollaborationEndRequest;
  v7 = [(ICDRequest *)&v10 initWithAction:v6];

  if (v7)
  {
    [(ICDRequest *)v7 setMethod:1];
    v8 = [(ICCollaborationEndRequest *)v7 _requestBodyWithPlaylistCloudLibraryID:iD];
    [(ICDRequest *)v7 setBodyData:v8];
  }

  return v7;
}

@end
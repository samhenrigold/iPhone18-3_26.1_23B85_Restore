@interface ICCollaborationBeginRequest
- (ICCollaborationBeginRequest)initWithDatabaseID:(unsigned int)d playlistSagaID:(unint64_t)iD sharingMode:(unint64_t)mode;
- (id)_requestBodyWithPlaylistCloudLibraryID:(unint64_t)d sharingMode:(unint64_t)mode;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICCollaborationBeginRequest

- (id)_requestBodyWithPlaylistCloudLibraryID:(unint64_t)d sharingMode:(unint64_t)mode
{
  v4 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v4;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICCollaborationBeginResponse responseWithResponse:response];
  responseData = [v3 responseData];
  if ([responseData length])
  {
    v5 = [NSInputStream inputStreamWithData:responseData];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = [[ICCollaborationBeginResponseParserDelegate alloc] initWithResponse:v3];
    [v6 setDelegate:v7];
    [v6 parse];
  }

  return v3;
}

- (ICCollaborationBeginRequest)initWithDatabaseID:(unsigned int)d playlistSagaID:(unint64_t)iD sharingMode:(unint64_t)mode
{
  v8 = [NSString stringWithFormat:@"databases/%u/collaboration", *&d];
  v12.receiver = self;
  v12.super_class = ICCollaborationBeginRequest;
  v9 = [(ICDRequest *)&v12 initWithAction:v8];

  if (v9)
  {
    [(ICDRequest *)v9 setMethod:1];
    v10 = [(ICCollaborationBeginRequest *)v9 _requestBodyWithPlaylistCloudLibraryID:iD sharingMode:mode];
    [(ICDRequest *)v9 setBodyData:v10];
  }

  return v9;
}

@end
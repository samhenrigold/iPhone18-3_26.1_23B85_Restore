@interface ICAddToLibraryRequest
+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision adamID:(int64_t)iD containerID:(unsigned int)containerID referralAlbumAdamID:(int64_t)adamID referralPlaylistGlobalID:(id)globalID;
+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision adamID:(int64_t)iD referralAlbumAdamID:(int64_t)adamID referralPlaylistGlobalID:(id)globalID;
+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision adamIDs:(id)ds containerID:(unsigned int)iD referralAlbumAdamID:(int64_t)adamID referralPlaylistGlobalID:(id)globalID;
+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision adamIDs:(id)ds referralAlbumAdamID:(int64_t)iD referralPlaylistGlobalID:(id)globalID;
+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision playlistGlobalID:(id)iD;
+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision sagaID:(int64_t)iD containerID:(unsigned int)containerID;
- (ICAddToLibraryRequest)initWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision adamIDs:(id)ds sagaID:(int64_t)iD playlistGlobalID:(id)globalID containerID:(unsigned int)containerID referralAlbumAdamID:(int64_t)adamID referralPlaylistGlobalID:(id)self0;
- (id)_bodyDataForDatabaseRevision:(unsigned int)revision adamIDs:(id)ds sagaID:(int64_t)d playlistGlobalID:(id)iD referralAlbumAdamID:(int64_t)adamID referralPlaylistGlobalID:(id)globalID;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICAddToLibraryRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)revision adamIDs:(id)ds sagaID:(int64_t)d playlistGlobalID:(id)iD referralAlbumAdamID:(int64_t)adamID referralPlaylistGlobalID:(id)globalID
{
  dsCopy = ds;
  iDCopy = iD;
  globalIDCopy = globalID;
  [dsCopy count];
  v18 = iDCopy;
  v19 = globalIDCopy;
  v13 = globalIDCopy;
  v14 = iDCopy;
  v15 = dsCopy;
  v16 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v16;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICAddToLibraryResponse responseWithResponse:response];
  responseData = [v3 responseData];
  if ([responseData length])
  {
    v5 = [NSInputStream inputStreamWithData:responseData];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = objc_alloc_init(AddToLibraryResponseParserDelegate);
    [v6 setDelegate:v7];
    [v6 parse];
    addedItems = [(AddToLibraryResponseParserDelegate *)v7 addedItems];
    v9 = [addedItems copy];
    [v3 setAddedItems:v9];

    [v3 setUpdateRequired:{-[AddToLibraryResponseParserDelegate updateRequired](v7, "updateRequired")}];
  }

  return v3;
}

- (ICAddToLibraryRequest)initWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision adamIDs:(id)ds sagaID:(int64_t)iD playlistGlobalID:(id)globalID containerID:(unsigned int)containerID referralAlbumAdamID:(int64_t)adamID referralPlaylistGlobalID:(id)self0
{
  v10 = *&containerID;
  v13 = *&revision;
  v14 = *&d;
  dsCopy = ds;
  globalIDCopy = globalID;
  playlistGlobalIDCopy = playlistGlobalID;
  if (dsCopy && globalIDCopy)
  {
    v25 = +[NSAssertionHandler currentHandler];
    objc_msgSend(v25, "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"ICAddToLibraryRequest.m", 43, @"You can only send one field (adam-id or playlist-global-id");
  }

  else if (!globalIDCopy)
  {
    goto LABEL_5;
  }

  if (v10)
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"ICAddToLibraryRequest.m" lineNumber:45 description:@"You can not add a playlist-global-id to a container"];

    goto LABEL_6;
  }

LABEL_5:
  if (v10)
  {
LABEL_6:
    [NSString stringWithFormat:@"databases/%u/containers/%u/cloud-add", v14, v10];
    goto LABEL_8;
  }

  [NSString stringWithFormat:@"databases/%u/cloud-add", v14, v27];
  v20 = LABEL_8:;
  v28.receiver = self;
  v28.super_class = ICAddToLibraryRequest;
  v21 = [(ICDRequest *)&v28 initWithAction:v20];
  v22 = v21;
  if (v21)
  {
    [(ICDRequest *)v21 setMethod:1];
    v23 = [(ICAddToLibraryRequest *)v22 _bodyDataForDatabaseRevision:v13 adamIDs:dsCopy sagaID:iD playlistGlobalID:globalIDCopy referralAlbumAdamID:adamID referralPlaylistGlobalID:playlistGlobalIDCopy];
    [(ICDRequest *)v22 setBodyData:v23];
  }

  return v22;
}

+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision playlistGlobalID:(id)iD
{
  v5 = *&revision;
  v6 = *&d;
  iDCopy = iD;
  if (![iDCopy length])
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"ICAddToLibraryRequest.m" lineNumber:98 description:@"playlist-global-id must be a non-zero length string."];
  }

  v10 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v6 databaseRevision:v5 adamIDs:0 sagaID:0 playlistGlobalID:iDCopy containerID:0 referralAlbumAdamID:0 referralPlaylistGlobalID:0];

  return v10;
}

+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision sagaID:(int64_t)iD containerID:(unsigned int)containerID
{
  v6 = *&containerID;
  v8 = *&revision;
  v9 = *&d;
  if (iD)
  {
    if (containerID)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"ICAddToLibraryRequest.m" lineNumber:92 description:@"saga-id cannot be zero."];

    if (v6)
    {
      goto LABEL_3;
    }
  }

  v15 = +[NSAssertionHandler currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"ICAddToLibraryRequest.m" lineNumber:93 description:@"container-id cannot be zero."];

LABEL_3:
  v12 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v9 databaseRevision:v8 adamIDs:0 sagaID:iD playlistGlobalID:0 containerID:v6 referralAlbumAdamID:0 referralPlaylistGlobalID:0];

  return v12;
}

+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision adamIDs:(id)ds containerID:(unsigned int)iD referralAlbumAdamID:(int64_t)adamID referralPlaylistGlobalID:(id)globalID
{
  v9 = *&iD;
  v11 = *&revision;
  v12 = *&d;
  globalIDCopy = globalID;
  dsCopy = ds;
  if ([dsCopy count])
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_10:
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"ICAddToLibraryRequest.m" lineNumber:85 description:@"container-id cannot be zero."];

    if (!adamID)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v19 = +[NSAssertionHandler currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"ICAddToLibraryRequest.m" lineNumber:84 description:@"Must provide at least 1 adam ID."];

  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (!adamID)
  {
    goto LABEL_6;
  }

LABEL_4:
  if ([globalIDCopy length])
  {
    v21 = +[NSAssertionHandler currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"ICAddToLibraryRequest.m" lineNumber:86 description:@"cannot specify more than one referral"];
  }

LABEL_6:
  v17 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v12 databaseRevision:v11 adamIDs:dsCopy sagaID:0 playlistGlobalID:0 containerID:v9 referralAlbumAdamID:adamID referralPlaylistGlobalID:globalIDCopy];

  return v17;
}

+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision adamID:(int64_t)iD containerID:(unsigned int)containerID referralAlbumAdamID:(int64_t)adamID referralPlaylistGlobalID:(id)globalID
{
  v9 = *&containerID;
  v11 = *&revision;
  v12 = *&d;
  globalIDCopy = globalID;
  if (iD)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_10:
    v22 = +[NSAssertionHandler currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"ICAddToLibraryRequest.m" lineNumber:78 description:@"container-id cannot be zero."];

    if (!adamID)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v21 = +[NSAssertionHandler currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"ICAddToLibraryRequest.m" lineNumber:77 description:@"adam-id cannot be zero."];

  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (!adamID)
  {
    goto LABEL_6;
  }

LABEL_4:
  if ([globalIDCopy length])
  {
    v23 = +[NSAssertionHandler currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"ICAddToLibraryRequest.m" lineNumber:79 description:@"cannot specify more than one referral"];
  }

LABEL_6:
  v16 = objc_alloc(objc_opt_class());
  v17 = [NSNumber numberWithLongLong:iD];
  v24 = v17;
  v18 = [NSArray arrayWithObjects:&v24 count:1];
  v19 = [v16 initWithDatabaseID:v12 databaseRevision:v11 adamIDs:v18 sagaID:0 playlistGlobalID:0 containerID:v9 referralAlbumAdamID:adamID referralPlaylistGlobalID:globalIDCopy];

  return v19;
}

+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision adamIDs:(id)ds referralAlbumAdamID:(int64_t)iD referralPlaylistGlobalID:(id)globalID
{
  v9 = *&revision;
  v10 = *&d;
  globalIDCopy = globalID;
  dsCopy = ds;
  if ([dsCopy count])
  {
    if (!iD)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"ICAddToLibraryRequest.m" lineNumber:70 description:@"Must provide at least 1 adam ID."];

    if (!iD)
    {
      goto LABEL_5;
    }
  }

  if ([globalIDCopy length])
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"ICAddToLibraryRequest.m" lineNumber:71 description:@"cannot specify more than one referral"];
  }

LABEL_5:
  v15 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v10 databaseRevision:v9 adamIDs:dsCopy sagaID:0 playlistGlobalID:0 containerID:0 referralAlbumAdamID:iD referralPlaylistGlobalID:globalIDCopy];

  return v15;
}

+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision adamID:(int64_t)iD referralAlbumAdamID:(int64_t)adamID referralPlaylistGlobalID:(id)globalID
{
  v9 = *&revision;
  v10 = *&d;
  globalIDCopy = globalID;
  if (iD)
  {
    if (!adamID)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"ICAddToLibraryRequest.m" lineNumber:64 description:@"adam-id cannot be zero."];

    if (!adamID)
    {
      goto LABEL_5;
    }
  }

  if ([globalIDCopy length])
  {
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"ICAddToLibraryRequest.m" lineNumber:65 description:@"cannot specify more than one referral"];
  }

LABEL_5:
  v14 = objc_alloc(objc_opt_class());
  v15 = [NSNumber numberWithLongLong:iD];
  v21 = v15;
  v16 = [NSArray arrayWithObjects:&v21 count:1];
  v17 = [v14 initWithDatabaseID:v10 databaseRevision:v9 adamIDs:v16 sagaID:0 playlistGlobalID:0 containerID:0 referralAlbumAdamID:adamID referralPlaylistGlobalID:globalIDCopy];

  return v17;
}

@end
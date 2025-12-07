@interface SagaCreateGeniusPlaylistOperation
- (SagaCreateGeniusPlaylistOperation)initWithCoder:(id)coder;
- (SagaCreateGeniusPlaylistOperation)initWithConfiguration:(id)configuration geniusPlaylistPersistentID:(int64_t)d playlistName:(id)name seedItemIDs:(id)ds itemIDs:(id)iDs clientIdentity:(id)identity;
- (void)encodeWithCoder:(id)coder;
- (void)main;
@end

@implementation SagaCreateGeniusPlaylistOperation

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  v4 = [NSString stringWithFormat:@"SagaCreateGeniusPlaylistOperation - (playlist_persistent_id  = %lld / playlist_name = %@)", self->_playlistPersistentID, self->_playlistName];
  v5 = [[MSVXPCTransaction alloc] initWithName:v4];
  [v5 beginTransaction];
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
  [musicLibrary setClientIdentity:clientIdentity];

  playlistPersistentID = self->_playlistPersistentID;
  musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
  v10 = [ML3Container newWithPersistentID:playlistPersistentID inLibrary:musicLibrary2];

  if ([v10 existsInLibrary])
  {
    connection = [(CloudLibraryOperation *)self connection];
    v12 = [ICCreateGeniusContainerRequest requestWithDatabaseID:[connection databaseID] playlistName:self->_playlistName seedItemIDs:self->_seedItemIDs itemIDs:self->_itemIDs];
    [v12 setVerificationInteractionLevel:2];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100060C08;
    v18[3] = &unk_1001DF838;
    v18[4] = self;
    v13 = dispatch_semaphore_create(0);
    v19 = v13;
    [connection sendRequest:v12 withResponseHandler:v18];
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    if (self->_playlistSagaID)
    {
      v14 = [NSNumber numberWithUnsignedLongLong:?];
      [v10 setValue:v14 forProperty:ML3ContainerPropertyStoreCloudID];
    }
  }

  else
  {
    connection = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(connection, OS_LOG_TYPE_FAULT))
    {
      v15 = self->_playlistPersistentID;
      *buf = 134217984;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, connection, OS_LOG_TYPE_FAULT, "Playlist with pid = %lld is not in the database, skipping add to cloud library.", buf, 0xCu);
    }
  }

  musicLibrary3 = [(CloudLibraryOperation *)self musicLibrary];
  v17 = MSVTCCIdentityForCurrentProcess();
  [musicLibrary3 setClientIdentity:v17];

  [v5 endTransaction];
  objc_autoreleasePoolPop(v3);
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SagaCreateGeniusPlaylistOperation;
  coderCopy = coder;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_playlistPersistentID forKey:{@"SagaAddPlaylistOperationPlaylistPersistentIDKey", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_playlistName forKey:@"SagaAddPlaylistOperationPlaylistNameKey"];
  [coderCopy encodeObject:self->_seedItemIDs forKey:@"SagaAddPlaylistOperationPlaylistSeedItemIDsKey"];
  [coderCopy encodeObject:self->_itemIDs forKey:@"SagaAddPlaylistOperationPlaylistItemIDsKey"];
}

- (SagaCreateGeniusPlaylistOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SagaCreateGeniusPlaylistOperation;
  v5 = [(CloudLibraryOperation *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_playlistPersistentID = [coderCopy decodeInt64ForKey:@"SagaAddPlaylistOperationPlaylistPersistentIDKey"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SagaAddPlaylistOperationPlaylistNameKey"];
    playlistName = v5->_playlistName;
    v5->_playlistName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SagaAddPlaylistOperationPlaylistSeedItemIDsKey"];
    seedItemIDs = v5->_seedItemIDs;
    v5->_seedItemIDs = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SagaAddPlaylistOperationPlaylistItemIDsKey"];
    itemIDs = v5->_itemIDs;
    v5->_itemIDs = v10;
  }

  return v5;
}

- (SagaCreateGeniusPlaylistOperation)initWithConfiguration:(id)configuration geniusPlaylistPersistentID:(int64_t)d playlistName:(id)name seedItemIDs:(id)ds itemIDs:(id)iDs clientIdentity:(id)identity
{
  nameCopy = name;
  dsCopy = ds;
  iDsCopy = iDs;
  v26.receiver = self;
  v26.super_class = SagaCreateGeniusPlaylistOperation;
  v17 = [(CloudLibraryOperation *)&v26 initWithConfiguration:configuration clientIdentity:identity];
  v18 = v17;
  if (v17)
  {
    v17->_playlistPersistentID = d;
    v19 = [nameCopy copy];
    playlistName = v18->_playlistName;
    v18->_playlistName = v19;

    v21 = [dsCopy copy];
    seedItemIDs = v18->_seedItemIDs;
    v18->_seedItemIDs = v21;

    v23 = [iDsCopy copy];
    itemIDs = v18->_itemIDs;
    v18->_itemIDs = v23;
  }

  return v18;
}

@end
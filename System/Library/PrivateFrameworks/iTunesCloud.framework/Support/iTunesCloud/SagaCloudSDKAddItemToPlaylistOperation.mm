@interface SagaCloudSDKAddItemToPlaylistOperation
- (SagaCloudSDKAddItemToPlaylistOperation)initWithClientIdentity:(id)identity opaqueID:(id)d bundleID:(id)iD playlistPersistentID:(int64_t)persistentID;
- (SagaCloudSDKAddItemToPlaylistOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity opaqueID:(id)d bundleID:(id)iD playlistPersistentID:(int64_t)persistentID;
- (id)requestWithDatabaseID:(int)d databaseRevision:(int)revision opaqueID:(id)iD bundleID:(id)bundleID;
@end

@implementation SagaCloudSDKAddItemToPlaylistOperation

- (id)requestWithDatabaseID:(int)d databaseRevision:(int)revision opaqueID:(id)iD bundleID:(id)bundleID
{
  v7 = *&revision;
  v8 = *&d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  playlistPersistentID = self->_playlistPersistentID;
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  v14 = [ML3Container newWithPersistentID:playlistPersistentID inLibrary:musicLibrary];

  v15 = [v14 valueForProperty:ML3ContainerPropertyStoreCloudID];
  unsignedIntValue = [v15 unsignedIntValue];

  v17 = os_log_create("com.apple.amp.itunescloudd", "SDK");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    opaqueID = [(SagaCloudSDKAddOperation *)self opaqueID];
    v19 = self->_playlistPersistentID;
    *buf = 138543874;
    v37 = opaqueID;
    v38 = 2048;
    *v39 = v19;
    *&v39[8] = 1024;
    v40[0] = unsignedIntValue;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Adding opaqueID %{public}@ to playlist with persistent id %lld (cloud-id %u)", buf, 0x1Cu);
  }

  if (unsignedIntValue)
  {
    v20 = [ICSDKAddToPlaylistRequest requestWithDatabaseID:v8 databaseRevision:v7 opaqueID:iDCopy bundleID:bundleIDCopy containerID:unsignedIntValue];
  }

  else
  {
    v35 = iDCopy;
    v21 = ML3ContainerPropertyDateCreated;
    v22 = ML3ContainerPropertyIsSourceRemote;
    v41[0] = ML3ContainerPropertyDateCreated;
    v41[1] = ML3ContainerPropertyIsSourceRemote;
    v23 = ML3ContainerPropertyDistinguishedKind;
    v41[2] = ML3ContainerPropertyDistinguishedKind;
    v24 = [NSArray arrayWithObjects:v41 count:3];
    v25 = [v14 getValuesForProperties:v24];

    v26 = [v25 objectForKey:v21];
    [v26 doubleValue];
    v27 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

    v28 = [v25 objectForKey:v22];
    intValue = [v28 intValue];

    v30 = [v25 objectForKey:v23];
    intValue2 = [v30 intValue];

    v32 = os_log_create("com.apple.amp.itunescloudd", "SDK");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = self->_playlistPersistentID;
      *buf = 134218754;
      v37 = v33;
      v38 = 1024;
      *v39 = intValue;
      *&v39[4] = 1024;
      *&v39[6] = intValue2;
      LOWORD(v40[0]) = 2114;
      *(v40 + 2) = v27;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Playlist pid %lld: is_src_remote %d, distinguished_kind %d, created %{public}@", buf, 0x22u);
    }

    v20 = 0;
    iDCopy = v35;
  }

  return v20;
}

- (SagaCloudSDKAddItemToPlaylistOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity opaqueID:(id)d bundleID:(id)iD playlistPersistentID:(int64_t)persistentID
{
  v9.receiver = self;
  v9.super_class = SagaCloudSDKAddItemToPlaylistOperation;
  result = [(SagaCloudSDKAddOperation *)&v9 initWithConfiguration:configuration clientIdentity:identity opaqueID:d bundleID:iD];
  if (result)
  {
    result->_playlistPersistentID = persistentID;
  }

  return result;
}

- (SagaCloudSDKAddItemToPlaylistOperation)initWithClientIdentity:(id)identity opaqueID:(id)d bundleID:(id)iD playlistPersistentID:(int64_t)persistentID
{
  iDCopy = iD;
  dCopy = d;
  identityCopy = identity;
  v13 = objc_opt_new();
  v14 = [(SagaCloudSDKAddItemToPlaylistOperation *)self initWithConfiguration:v13 clientIdentity:identityCopy opaqueID:dCopy bundleID:iDCopy playlistPersistentID:persistentID];

  return v14;
}

@end
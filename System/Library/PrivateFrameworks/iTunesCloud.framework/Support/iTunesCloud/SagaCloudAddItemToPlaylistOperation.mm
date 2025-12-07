@interface SagaCloudAddItemToPlaylistOperation
- (SagaCloudAddItemToPlaylistOperation)initWithCoder:(id)coder;
- (SagaCloudAddItemToPlaylistOperation)initWithConfiguration:(id)configuration adamIDs:(id)ds playlistPersistentID:(int64_t)d clientIdentity:(id)identity;
- (SagaCloudAddItemToPlaylistOperation)initWithConfiguration:(id)configuration adamIDs:(id)ds playlistPersistentID:(int64_t)d referralAlbumAdamID:(int64_t)iD clientIdentity:(id)identity;
- (SagaCloudAddItemToPlaylistOperation)initWithConfiguration:(id)configuration adamIDs:(id)ds playlistPersistentID:(int64_t)d referralPlaylistGlobalID:(id)iD clientIdentity:(id)identity;
- (id)cloudAddRequestWithDatabaseID:(unsigned int)d;
- (void)encodeWithCoder:(id)coder;
- (void)logCloudAddRequestDescription;
@end

@implementation SagaCloudAddItemToPlaylistOperation

- (void)logCloudAddRequestDescription
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(&self->super.super._updateRequired + 1);
    v5 = *(&self->super._adamIDToSagaIDMap + 1);
    v6 = 138543618;
    v7 = v4;
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cloud-add request for adam ID = %{public}@ / container_pid = %lld", &v6, 0x16u);
  }
}

- (id)cloudAddRequestWithDatabaseID:(unsigned int)d
{
  v3 = *&d;
  v5 = *(&self->super._adamIDToSagaIDMap + 1);
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  v7 = [ML3Container newWithPersistentID:v5 inLibrary:musicLibrary];

  v8 = [v7 valueForProperty:ML3ContainerPropertyStoreCloudID];
  unsignedIntValue = [v8 unsignedIntValue];

  v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(&self->super.super._updateRequired + 1);
    v12 = *(&self->super._adamIDToSagaIDMap + 1);
    v29 = 138543874;
    v30 = v11;
    v31 = 2048;
    *v32 = v12;
    *&v32[8] = 1024;
    v33[0] = unsignedIntValue;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[SagaCloudAddItemToPlaylistOperation] Adding adam-id %{public}@ to playlist with persistent id %lld (cloud-id %u)", &v29, 0x1Cu);
  }

  if (unsignedIntValue)
  {
    v13 = [ICAddToLibraryRequest requestWithDatabaseID:v3 databaseRevision:[(SagaCloudAddOperation *)self currentDatabaseRevision] adamIDs:*(&self->super.super._updateRequired + 1) containerID:unsignedIntValue referralAlbumAdamID:*(&self->super._adamIDs + 1) referralPlaylistGlobalID:*(&self->super._referralAlbumAdamID + 1)];
  }

  else
  {
    v14 = ML3ContainerPropertyDateCreated;
    v15 = ML3ContainerPropertyIsSourceRemote;
    v34[0] = ML3ContainerPropertyDateCreated;
    v34[1] = ML3ContainerPropertyIsSourceRemote;
    v16 = ML3ContainerPropertyDistinguishedKind;
    v34[2] = ML3ContainerPropertyDistinguishedKind;
    v17 = [NSArray arrayWithObjects:v34 count:3];
    v18 = [v7 getValuesForProperties:v17];

    v19 = [v18 objectForKey:v14];
    [v19 doubleValue];
    v20 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

    v21 = [v18 objectForKey:v15];
    intValue = [v21 intValue];

    v23 = [v18 objectForKey:v16];
    intValue2 = [v23 intValue];

    v25 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(&self->super._adamIDToSagaIDMap + 1);
      [v20 timeIntervalSince1970];
      v29 = 134218752;
      v30 = v26;
      v31 = 1024;
      *v32 = intValue;
      *&v32[4] = 1024;
      *&v32[6] = intValue2;
      LOWORD(v33[0]) = 2048;
      *(v33 + 2) = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[SagaCloudAddItemToPlaylistOperation] Playlist pid %lld: is_src_remote %d, distinguished_kind %d, created %{time}zd", &v29, 0x22u);
    }

    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SagaCloudAddItemToPlaylistOperation;
  coderCopy = coder;
  [(SagaCloudAddItemOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:*(&self->super._adamIDToSagaIDMap + 1) forKey:{@"SagaCloudAddItemToPlaylistOperationPlaylistPersistentIDKey", v5.receiver, v5.super_class}];
}

- (SagaCloudAddItemToPlaylistOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SagaCloudAddItemToPlaylistOperation;
  v5 = [(SagaCloudAddItemOperation *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    *(v5 + 121) = [coderCopy decodeInt64ForKey:@"SagaCloudAddItemToPlaylistOperationPlaylistPersistentIDKey"];
  }

  return v5;
}

- (SagaCloudAddItemToPlaylistOperation)initWithConfiguration:(id)configuration adamIDs:(id)ds playlistPersistentID:(int64_t)d referralPlaylistGlobalID:(id)iD clientIdentity:(id)identity
{
  iDCopy = iD;
  v14 = [(SagaCloudAddItemToPlaylistOperation *)self initWithConfiguration:configuration adamIDs:ds playlistPersistentID:d clientIdentity:identity];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong((&v14->super._referralAlbumAdamID + 1), iD);
  }

  return v15;
}

- (SagaCloudAddItemToPlaylistOperation)initWithConfiguration:(id)configuration adamIDs:(id)ds playlistPersistentID:(int64_t)d referralAlbumAdamID:(int64_t)iD clientIdentity:(id)identity
{
  result = [(SagaCloudAddItemToPlaylistOperation *)self initWithConfiguration:configuration adamIDs:ds playlistPersistentID:d clientIdentity:identity];
  if (result)
  {
    *(&result->super._adamIDs + 1) = iD;
  }

  return result;
}

- (SagaCloudAddItemToPlaylistOperation)initWithConfiguration:(id)configuration adamIDs:(id)ds playlistPersistentID:(int64_t)d clientIdentity:(id)identity
{
  v8.receiver = self;
  v8.super_class = SagaCloudAddItemToPlaylistOperation;
  result = [(SagaCloudAddItemOperation *)&v8 initWithConfiguration:configuration adamIDs:ds clientIdentity:identity];
  if (result)
  {
    *(&result->super._adamIDToSagaIDMap + 1) = d;
  }

  return result;
}

@end
@interface CloudSetAddToPlaylistBehaviorOperation
- (CloudSetAddToPlaylistBehaviorOperation)initWithAddToPlaylistBehavior:(int64_t)behavior clientIdentity:(id)identity;
- (CloudSetAddToPlaylistBehaviorOperation)initWithCoder:(id)coder;
- (CloudSetAddToPlaylistBehaviorOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity addToPlaylistBehavior:(int64_t)behavior;
- (void)encodeWithCoder:(id)coder;
- (void)main;
@end

@implementation CloudSetAddToPlaylistBehaviorOperation

- (void)main
{
  v3 = ICCloudClientGetStringForAddToPlaylistBehavior();
  v4 = [NSString stringWithFormat:@"CloudSetAddToPlaylistBehaviorOperation - (add to playlist behavior = %@)", v3];
  v5 = [[MSVXPCTransaction alloc] initWithName:v4];
  [v5 beginTransaction];
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
  [musicLibrary setClientIdentity:clientIdentity];

  addToPlaylistBehavior = self->_addToPlaylistBehavior;
  musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
  [musicLibrary2 icd_setSagaCloudAddToPlaylistBehavior:addToPlaylistBehavior];

  musicLibrary3 = [(CloudLibraryOperation *)self musicLibrary];
  LODWORD(musicLibrary2) = [musicLibrary3 sagaOnDiskDatabaseRevision];

  if (musicLibrary2 <= 1)
  {
    musicLibrary2 = 1;
  }

  else
  {
    musicLibrary2 = musicLibrary2;
  }

  connection = [(CloudLibraryOperation *)self connection];
  v12 = +[ICSetAddToPlaylistBehaviorRequest requestWithDatabaseID:databaseRevision:addToPlaylistBehavior:](ICSetAddToPlaylistBehaviorRequest, "requestWithDatabaseID:databaseRevision:addToPlaylistBehavior:", [connection databaseID], musicLibrary2, LOBYTE(self->_addToPlaylistBehavior));
  [v12 setVerificationInteractionLevel:2];
  v13 = dispatch_semaphore_create(0);
  v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v24 = v12;
    v25 = 2114;
    v26 = v3;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending request %p to set add to playlist behavior to %{public}@", buf, 0x16u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100134700;
  v19[3] = &unk_1001DF440;
  v20 = v12;
  selfCopy = self;
  v22 = v13;
  v15 = v13;
  v16 = v12;
  [connection sendRequest:v16 withResponseHandler:v19];
  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  musicLibrary4 = [(CloudLibraryOperation *)self musicLibrary];
  v18 = MSVTCCIdentityForCurrentProcess();
  [musicLibrary4 setClientIdentity:v18];

  [v5 endTransaction];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CloudSetAddToPlaylistBehaviorOperation;
  coderCopy = coder;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_addToPlaylistBehavior forKey:{@"CloudSetAddToPlaylistBehaviorOperationBehaviorIDKey", v5.receiver, v5.super_class}];
}

- (CloudSetAddToPlaylistBehaviorOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CloudSetAddToPlaylistBehaviorOperation;
  v5 = [(CloudLibraryOperation *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_addToPlaylistBehavior = [coderCopy decodeIntegerForKey:@"CloudSetAddToPlaylistBehaviorOperationBehaviorIDKey"];
  }

  return v5;
}

- (CloudSetAddToPlaylistBehaviorOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity addToPlaylistBehavior:(int64_t)behavior
{
  v7.receiver = self;
  v7.super_class = CloudSetAddToPlaylistBehaviorOperation;
  result = [(CloudLibraryOperation *)&v7 initWithConfiguration:configuration clientIdentity:identity];
  if (result)
  {
    result->_addToPlaylistBehavior = behavior;
  }

  return result;
}

- (CloudSetAddToPlaylistBehaviorOperation)initWithAddToPlaylistBehavior:(int64_t)behavior clientIdentity:(id)identity
{
  identityCopy = identity;
  v7 = objc_opt_new();
  v8 = [(CloudSetAddToPlaylistBehaviorOperation *)self initWithConfiguration:v7 clientIdentity:identityCopy addToPlaylistBehavior:behavior];

  return v8;
}

@end
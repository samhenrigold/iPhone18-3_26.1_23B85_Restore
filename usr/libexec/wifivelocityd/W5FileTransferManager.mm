@interface W5FileTransferManager
- (W5FileTransferManager)init;
- (void)_setupWithTargetID:(id)d;
- (void)_stop;
- (void)initializeReceiverWithTargetID:(id)d;
- (void)initializeSenderWithTargetID:(id)d peerPublicKey:(id)key;
- (void)startW5FileReceiverWithPeerPublicKey:(id)key reply:(id)reply;
- (void)startW5FileSenderForFile:(id)file;
@end

@implementation W5FileTransferManager

- (W5FileTransferManager)init
{
  v8.receiver = self;
  v8.super_class = W5FileTransferManager;
  v2 = [(W5FileTransferManager *)&v8 init];
  v3 = [NSURL fileURLWithPath:@"/var/run/com.apple.wifivelocity" isDirectory:1];
  tempDirPath = v2->_tempDirPath;
  v2->_tempDirPath = v3;

  v5 = dispatch_queue_create("com.apple.wifivelocity.file-transfer", 0);
  queue = v2->_queue;
  v2->_queue = v5;

  if (!v2->_queue)
  {

    return 0;
  }

  return v2;
}

- (void)_setupWithTargetID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(RPFileTransferSession);
  session = self->_session;
  self->_session = v4;

  [(RPFileTransferSession *)self->_session setTemporaryDirectoryURL:self->_tempDirPath];
  [(RPFileTransferSession *)self->_session setDispatchQueue:self->_queue];
  [(RPFileTransferSession *)self->_session setTargetID:dCopy];
}

- (void)initializeReceiverWithTargetID:(id)d
{
  dCopy = d;
  if (self->_session)
  {
    [(W5FileTransferManager *)self _stop];
  }

  [(W5FileTransferManager *)self _setupWithTargetID:dCopy];
  [(RPFileTransferSession *)self->_session setFlags:0];
  [(RPFileTransferSession *)self->_session setFlags:[(RPFileTransferSession *)self->_session flags]| 1];
  [(RPFileTransferSession *)self->_session setFlags:[(RPFileTransferSession *)self->_session flags]| 0x10];
  [(RPFileTransferSession *)self->_session setFlags:[(RPFileTransferSession *)self->_session flags]| 0x100];
  session = self->_session;
  v11 = 0;
  [(RPFileTransferSession *)session prepareTemplateAndReturnError:&v11];
  v6 = v11;
  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136316162;
    v13 = "[W5FileTransferManager initializeReceiverWithTargetID:]";
    v14 = 2080;
    v15 = "W5FileTransferManager.m";
    v16 = 1024;
    v17 = 71;
    v18 = 2114;
    v19 = dCopy;
    v20 = 2114;
    v21 = v6;
    v10 = 48;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v7, 0, "[wifivelocity] %s (%s:%u) File Receiver Init, targetID: %{public}@, prepareTemplateAndReturnError, error = %{public}@", &v12, v10);
  }

  selfPublicKey = [(RPFileTransferSession *)self->_session selfPublicKey];
  publicKeySelf = self->_publicKeySelf;
  self->_publicKeySelf = selfPublicKey;
}

- (void)initializeSenderWithTargetID:(id)d peerPublicKey:(id)key
{
  dCopy = d;
  keyCopy = key;
  if (self->_session)
  {
    [(W5FileTransferManager *)self _stop];
  }

  [(W5FileTransferManager *)self _setupWithTargetID:dCopy];
  [(RPFileTransferSession *)self->_session setFlags:0];
  [(RPFileTransferSession *)self->_session setFlags:[(RPFileTransferSession *)self->_session flags]| 0x10];
  [(RPFileTransferSession *)self->_session setFlags:[(RPFileTransferSession *)self->_session flags]| 0x100];
  [(RPFileTransferSession *)self->_session setPeerPublicKey:keyCopy];
  session = self->_session;
  v14 = 0;
  [(RPFileTransferSession *)session prepareTemplateAndReturnError:&v14];
  v9 = v14;
  v10 = sub_100098A04();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136316162;
    v16 = "[W5FileTransferManager initializeSenderWithTargetID:peerPublicKey:]";
    v17 = 2080;
    v18 = "W5FileTransferManager.m";
    v19 = 1024;
    v20 = 93;
    v21 = 2114;
    v22 = dCopy;
    v23 = 2114;
    v24 = v9;
    v13 = 48;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v10, 0, "[wifivelocity] %s (%s:%u) File Sender Init, targetID: %{public}@, prepareTemplateAndReturnError, error = %{public}@", &v15, v13);
  }

  selfPublicKey = [(RPFileTransferSession *)self->_session selfPublicKey];
  publicKeySelf = self->_publicKeySelf;
  self->_publicKeySelf = selfPublicKey;
}

- (void)startW5FileSenderForFile:(id)file
{
  fileCopy = file;
  v5 = sub_100098A04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    selfPublicKey = [(RPFileTransferSession *)self->_session selfPublicKey];
    peerPublicKey = [(RPFileTransferSession *)self->_session peerPublicKey];
    v15 = 136316418;
    v16 = "[W5FileTransferManager startW5FileSenderForFile:]";
    v17 = 2080;
    v18 = "W5FileTransferManager.m";
    v19 = 1024;
    v20 = 101;
    v21 = 2114;
    v22 = selfPublicKey;
    v23 = 2114;
    v24 = peerPublicKey;
    v25 = 2114;
    v26 = fileCopy;
    v14 = 58;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v5, 0, "[wifivelocity] %s (%s:%u) Session Keys: self: %{public}@, peer: %{public}@, Filepath: %{public}@", &v15, v14);
  }

  [(RPFileTransferSession *)self->_session setCompletionHandler:&stru_1000E1568];
  [(RPFileTransferSession *)self->_session setProgressHandler:&stru_1000E15A8];
  [(RPFileTransferSession *)self->_session setReceivedItemHandler:&stru_1000E15E8];
  [(RPFileTransferSession *)self->_session activate];
  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = "[W5FileTransferManager startW5FileSenderForFile:]";
    v17 = 2080;
    v18 = "W5FileTransferManager.m";
    v19 = 1024;
    v20 = 124;
    LODWORD(v13) = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) File Sender: Session Activated", &v15, v13);
  }

  v9 = objc_alloc_init(RPFileTransferItem);
  [v9 setItemURL:fileCopy];
  path = [fileCopy path];
  lastPathComponent = [path lastPathComponent];
  [v9 setFilename:lastPathComponent];

  [v9 setCompletionHandler:&stru_1000E1608];
  v12 = sub_100098A04();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315906;
    v16 = "[W5FileTransferManager startW5FileSenderForFile:]";
    v17 = 2080;
    v18 = "W5FileTransferManager.m";
    v19 = 1024;
    v20 = 136;
    v21 = 2114;
    v22 = v9;
    LODWORD(v13) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v12, 0, "[wifivelocity] %s (%s:%u) File Sender, Adding item: %{public}@", &v15, v13);
  }

  [(RPFileTransferSession *)self->_session addItem:v9];
  [(RPFileTransferSession *)self->_session finish];
}

- (void)startW5FileReceiverWithPeerPublicKey:(id)key reply:(id)reply
{
  replyCopy = reply;
  [(RPFileTransferSession *)self->_session setPeerPublicKey:key];
  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    selfPublicKey = [(RPFileTransferSession *)self->_session selfPublicKey];
    peerPublicKey = [(RPFileTransferSession *)self->_session peerPublicKey];
    v17 = 136316162;
    v18 = "[W5FileTransferManager startW5FileReceiverWithPeerPublicKey:reply:]";
    v19 = 2080;
    v20 = "W5FileTransferManager.m";
    v21 = 1024;
    v22 = 147;
    v23 = 2114;
    v24 = selfPublicKey;
    v25 = 2114;
    v26 = peerPublicKey;
    v13 = 48;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v7, 0, "[wifivelocity] %s (%s:%u) File Receiver, Session Keys: self: %{public}@, peer: %{public}@", &v17, v13);
  }

  [(RPFileTransferSession *)self->_session setProgressHandler:&stru_1000E1628];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000145E4;
  v15[3] = &unk_1000E1650;
  v10 = replyCopy;
  v16 = v10;
  [(RPFileTransferSession *)self->_session setReceivedItemHandler:v15];
  [(RPFileTransferSession *)self->_session activate];
  v11 = sub_100098A04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315650;
    v18 = "[W5FileTransferManager startW5FileReceiverWithPeerPublicKey:reply:]";
    v19 = 2080;
    v20 = "W5FileTransferManager.m";
    v21 = 1024;
    v22 = 179;
    LODWORD(v12) = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v11, 0, "[wifivelocity] %s (%s:%u) File Receiver: Session Activated", &v17, v12, v14);
  }
}

- (void)_stop
{
  [(RPFileTransferSession *)self->_session invalidate];
  session = self->_session;
  self->_session = 0;
}

@end
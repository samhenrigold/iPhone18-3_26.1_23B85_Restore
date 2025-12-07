@interface W5PeerFileTransferListener
- (BOOL)handleClientRequest:(id)request;
- (W5PeerFileTransferListener)initWithTransferManager:(id)manager;
- (id)_listFiles:(id)files;
@end

@implementation W5PeerFileTransferListener

- (W5PeerFileTransferListener)initWithTransferManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = W5PeerFileTransferListener;
  v5 = [(W5PeerFileTransferListener *)&v11 init];
  v6 = v5;
  if (managerCopy && v5)
  {
    v7 = managerCopy;
    p_super = &v6->_transferManager->super;
    v6->_transferManager = v7;
  }

  else
  {

    p_super = sub_100098A04();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "[W5PeerFileTransferListener initWithTransferManager:]";
      v14 = 2080;
      v15 = "W5PeerFileTransferListener.m";
      v16 = 1024;
      v17 = 37;
      LODWORD(v10) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, p_super, 0, "[wifivelocity] %s (%s:%u) init error!", &v12, v10, LODWORD(v11.receiver));
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)handleClientRequest:(id)request
{
  requestCopy = request;
  payload = [requestCopy payload];
  v6 = payload;
  if (payload)
  {
    version = [payload version];
    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 136316418;
      v33 = "[W5PeerFileTransferListener handleClientRequest:]";
      v34 = 2080;
      v35 = "W5PeerFileTransferListener.m";
      v36 = 1024;
      *v37 = 47;
      *&v37[4] = 2114;
      *&v37[6] = requestCopy;
      v38 = 2114;
      v39 = v6;
      v40 = 2114;
      v41 = version;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) incoming request='%{public}@', payload='%{public}@' version='%{public}@'", &v32, 58);
    }

    v9 = objc_alloc_init(W5PeerFileTransferResponsePayload);
    v10 = [NSNumber numberWithInteger:[(W5PeerFileTransferListener *)self currentVersion]];
    [(W5PeerFileTransferResponsePayload *)v9 setVersion:v10];

    integerValue = [version integerValue];
    if (integerValue == [(W5PeerFileTransferListener *)self currentVersion])
    {
      type = [v6 type];
      if (type == 2)
      {
        remotePath = [v6 remotePath];
        v24 = sub_100098A04();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 138543362;
          v33 = remotePath;
          LODWORD(v29) = 12;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v24, 0, "[wifivelocity] Request received to list files in directory: %{public}@", &v32, v29);
        }

        v18 = remotePath != 0;
        if (remotePath)
        {
          [(W5PeerFileTransferResponsePayload *)v9 setStatus:1];
          v25 = [(W5PeerFileTransferListener *)self _listFiles:remotePath];
          [(W5PeerFileTransferResponsePayload *)v9 setFiles:v25];

          handler = [requestCopy handler];
          (*(handler + 16))(handler, v9, 0);
        }

        else
        {
          handler = sub_100098A04();
          if (os_log_type_enabled(handler, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v32) = 0;
            LODWORD(v29) = 2;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, handler, 0, "[wifivelocity] nil Directory Path", &v32, v29);
          }
        }
      }

      else
      {
        if (type != 1)
        {
          v18 = 0;
LABEL_28:

          goto LABEL_29;
        }

        [(W5PeerFileTransferResponsePayload *)v9 setStatus:1];
        remotePath = [v6 targetID];
        remotePath2 = [v6 remotePath];
        publicKey = [v6 publicKey];
        v16 = sub_100098A04();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          publicKey2 = [v6 publicKey];
          v32 = 138543874;
          v33 = remotePath2;
          v34 = 2114;
          v35 = publicKey2;
          v36 = 2114;
          *v37 = remotePath;
          LODWORD(v29) = 32;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v16, 0, "[wifivelocity] Request received to send file: %{public}@, peer public key: %{public}@, targetID: %{public}@", &v32, v29);
        }

        v18 = remotePath2 != 0;
        if (remotePath2)
        {
          [(W5FileTransferManager *)self->_transferManager initializeSenderWithTargetID:remotePath peerPublicKey:publicKey];
          publicKeySelf = [(W5FileTransferManager *)self->_transferManager publicKeySelf];
          [(W5PeerFileTransferResponsePayload *)v9 setPublicKey:publicKeySelf];

          handler2 = [requestCopy handler];
          (handler2)[2](handler2, v9, 0);

          [(W5FileTransferManager *)self->_transferManager startW5FileSenderForFile:remotePath2];
        }

        else
        {
          v27 = sub_100098A04();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v32) = 0;
            LODWORD(v29) = 2;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v27, 0, "[wifivelocity] nil File Path", &v32, v29);
          }
        }
      }
    }

    else
    {
      v21 = sub_100098A04();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 138543362;
        v33 = version;
        LODWORD(v29) = 12;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v21, 0, "[wifivelocity] Request received with invalid version: %{public}@", &v32, v29);
      }

      [(W5PeerFileTransferResponsePayload *)v9 setStatus:2];
      v30 = NSLocalizedFailureReasonErrorKey;
      v31 = @"W5PeerFileListenerUnsupportedVersion";
      v18 = 1;
      v22 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v23 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:11 userInfo:v22];
      [(W5PeerFileTransferResponsePayload *)v9 setError:v23];

      remotePath = [requestCopy handler];
      (*(remotePath + 2))(remotePath, v9, 0);
    }

    goto LABEL_28;
  }

  v18 = 0;
LABEL_29:

  return v18;
}

- (id)_listFiles:(id)files
{
  filesCopy = files;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = +[NSFileManager defaultManager];
  v19 = 0;
  v6 = [v5 contentsOfDirectoryAtURL:filesCopy includingPropertiesForKeys:&__NSArray0__struct options:4 error:&v19];
  v7 = v19;

  if (v7)
  {
    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315906;
      v22 = "[W5PeerFileTransferListener _listFiles:]";
      v23 = 2080;
      v24 = "W5PeerFileTransferListener.m";
      v25 = 1024;
      v26 = 139;
      v27 = 2114;
      v28 = filesCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) Unable to list contents of: %{public}@", &v21, 38);
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if (([v13 hasDirectoryPath] & 1) == 0)
          {
            [v4 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }
  }

  return v4;
}

@end
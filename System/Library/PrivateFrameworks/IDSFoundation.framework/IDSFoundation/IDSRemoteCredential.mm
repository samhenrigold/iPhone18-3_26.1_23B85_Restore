@interface IDSRemoteCredential
- (BOOL)_connect;
- (BOOL)_disconnect;
- (void)_disconnected;
- (void)_sendMessage:(id)message withCompletionBlock:(id)block;
- (void)dealloc;
- (void)fetchRemoteAccountsOfServiceTypes:(id)types withCompletionBlock:(id)block;
- (void)fetchRemoteiMessageAndFaceTimeAccountInfoWithCompletionBlock:(id)block;
- (void)requestIDStatusForURIs:(id)is service:(id)service lightQuery:(BOOL)query allowQuery:(BOOL)allowQuery completionBlock:(id)block;
- (void)sendAccountSyncMessage:(id)message messageID:(id)d queueOneIdentifier:(id)identifier allowCloudFallback:(BOOL)fallback completionBlock:(id)block;
- (void)sendIDSLocalDeviceInfoRequestWithCompletionBlock:(id)block;
@end

@implementation IDSRemoteCredential

- (void)_disconnected
{
  if (self->_connection)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v19 = 0;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEBUG, "Clearing out _connection, we're disconnected", v19, 2u);
    }

    v4 = os_log_shim_legacy_logging_enabled();
    if (v4)
    {
      sub_1A7CBDFD8(v4, v5, @"Clearing out _connection, we're disconnected", v6, v7, v8, v9, v10, *v19);
      sub_1A7CBE04C(v11, v12, @"Clearing out _connection, we're disconnected", v13, v14, v15, v16, v17, *v19);
      if (_IMWillLog())
      {
        _IMAlwaysLog();
      }
    }

    xpc_connection_cancel(self->_connection);
    connection = self->_connection;
    self->_connection = 0;
  }
}

- (BOOL)_disconnect
{
  if (self->_connection)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEBUG, "Forcing a disconnect, terminating connection", &v20, 2u);
    }

    v4 = os_log_shim_legacy_logging_enabled();
    if (v4)
    {
      sub_1A7CBDFD8(v4, v5, @"Forcing a disconnect, terminating connection", v6, v7, v8, v9, v10, v20);
      sub_1A7CBE04C(v11, v12, @"Forcing a disconnect, terminating connection", v13, v14, v15, v16, v17, v20);
      if (_IMWillLog())
      {
        _IMAlwaysLog();
      }
    }

    xpc_connection_cancel(self->_connection);
    connection = self->_connection;
    self->_connection = 0;
  }

  return 1;
}

- (BOOL)_connect
{
  if (self->_connection)
  {
    return 1;
  }

  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "Connecting to credential agent", buf, 2u);
  }

  v5 = os_log_shim_legacy_logging_enabled();
  if (v5)
  {
    sub_1A7CBDFD8(v5, v6, @"Connecting to credential agent", v7, v8, v9, v10, v11, v22);
    sub_1A7CBE04C(v12, v13, @"Connecting to credential agent", v14, v15, v16, v17, v18, v23);
    if (_IMWillLog())
    {
      _IMAlwaysLog();
    }
  }

  [@"com.apple.idscredentialsagent.embedded.auth" UTF8String];
  v19 = im_primary_queue();
  v20 = IMXPCCreateConnectionForServiceWithQueue();
  connection = self->_connection;
  self->_connection = v20;

  IMXPCConfigureConnection();
  return self->_connection != 0;
}

- (void)dealloc
{
  [(IDSRemoteCredential *)self _disconnect];
  v3.receiver = self;
  v3.super_class = IDSRemoteCredential;
  [(IDSRemoteCredential *)&v3 dealloc];
}

- (void)fetchRemoteiMessageAndFaceTimeAccountInfoWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "** SENDING remote fetch iMessage account info request:", buf, 2u);
  }

  v6 = os_log_shim_legacy_logging_enabled();
  if (v6)
  {
    sub_1A7CBDFD8(v6, v7, @"** SENDING remote fetch iMessage account info request:", v8, v9, v10, v11, v12, v22);
    sub_1A7CBE04C(v13, v14, @"** SENDING remote fetch iMessage account info request:", v15, v16, v17, v18, v19, v23);
    if (_IMWillLog())
    {
      _IMAlwaysLog();
    }
  }

  v20 = xpc_dictionary_create(0, 0, 0);
  IMInsertIntsToXPCDictionary();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1A7CBE5F0;
  v24[3] = &unk_1E77E2AB0;
  v25 = blockCopy;
  v21 = blockCopy;
  [(IDSRemoteCredential *)self _sendMessage:v20 withCompletionBlock:v24, 9, 0];
}

- (void)fetchRemoteAccountsOfServiceTypes:(id)types withCompletionBlock:(id)block
{
  typesCopy = types;
  blockCopy = block;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "** SENDING remote fetch remote accounts of Service Types info request:", buf, 2u);
  }

  v9 = os_log_shim_legacy_logging_enabled();
  if (v9)
  {
    sub_1A7CBDFD8(v9, v10, @"** SENDING remote fetch remote accounts of Service Types info request:", v11, v12, v13, v14, v15, v25);
    sub_1A7CBE04C(v16, v17, @"** SENDING remote fetch remote accounts of Service Types info request:", v18, v19, v20, v21, v22, v26);
    if (_IMWillLog())
    {
      _IMAlwaysLog();
    }
  }

  v23 = xpc_dictionary_create(0, 0, 0);
  IMInsertIntsToXPCDictionary();
  IMInsertArraysToXPCDictionary();
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1A7CBE994;
  v27[3] = &unk_1E77E2AB0;
  v28 = blockCopy;
  v24 = blockCopy;
  [(IDSRemoteCredential *)self _sendMessage:v23 withCompletionBlock:v27, typesCopy, 0];
}

- (void)sendIDSLocalDeviceInfoRequestWithCompletionBlock:(id)block
{
  blockCopy = block;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, registration, OS_LOG_TYPE_DEFAULT, "Sending local device info request through credentials agent", buf, 2u);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    IMInsertIntsToXPCDictionary();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1A7CBECB4;
    v7[3] = &unk_1E77E2AB0;
    v8 = blockCopy;
    [(IDSRemoteCredential *)self _sendMessage:v6 withCompletionBlock:v7, 11, 0];
  }
}

- (void)requestIDStatusForURIs:(id)is service:(id)service lightQuery:(BOOL)query allowQuery:(BOOL)allowQuery completionBlock:(id)block
{
  allowQueryCopy = allowQuery;
  isCopy = is;
  serviceCopy = service;
  blockCopy = block;
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "** SENDING remote ID Query request V2 (New and Improved!!!) :", buf, 2u);
  }

  v15 = os_log_shim_legacy_logging_enabled();
  if (v15)
  {
    sub_1A7CBDFD8(v15, v16, @"** SENDING remote ID Query request V2 (New and Improved!!!) :", v17, v18, v19, v20, v21, v33);
    sub_1A7CBE04C(v22, v23, @"** SENDING remote ID Query request V2 (New and Improved!!!) :", v24, v25, v26, v27, v28, v34);
    if (_IMWillLog())
    {
      _IMAlwaysLog();
    }
  }

  v29 = [isCopy __imArrayByApplyingBlock:&unk_1F1AABB80];
  v30 = xpc_dictionary_create(0, 0, 0);
  IMInsertIntsToXPCDictionary();
  IMInsertArraysToXPCDictionary();
  IMInsertNSStringsToXPCDictionary();
  IMInsertBoolsToXPCDictionary();
  IMInsertBoolsToXPCDictionary();
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_1A7CBEFE4;
  v35[3] = &unk_1E77E2B68;
  v36 = serviceCopy;
  v37 = blockCopy;
  v31 = blockCopy;
  v32 = serviceCopy;
  [(IDSRemoteCredential *)self _sendMessage:v30 withCompletionBlock:v35, allowQueryCopy, 0];
}

- (void)sendAccountSyncMessage:(id)message messageID:(id)d queueOneIdentifier:(id)identifier allowCloudFallback:(BOOL)fallback completionBlock:(id)block
{
  fallbackCopy = fallback;
  messageCopy = message;
  dCopy = d;
  identifierCopy = identifier;
  blockCopy = block;
  accountSync = [MEMORY[0x1E69A6138] accountSync];
  if (os_log_type_enabled(accountSync, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, accountSync, OS_LOG_TYPE_DEFAULT, "Sending account sync message to credentials agent", buf, 2u);
  }

  v17 = xpc_dictionary_create(0, 0, 0);
  if (v17)
  {
    IMInsertIntsToXPCDictionary();
    IMInsertCodableObjectsToXPCDictionary();
    IMInsertNSStringsToXPCDictionary();
    IMInsertBoolsToXPCDictionary();
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1A7CBF86C;
    v18[3] = &unk_1E77E2B90;
    v20 = blockCopy;
    v19 = dCopy;
    [(IDSRemoteCredential *)self _sendMessage:v17 withCompletionBlock:v18, fallbackCopy, 0];
  }
}

- (void)_sendMessage:(id)message withCompletionBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  blockCopy = block;
  if ([(IDSRemoteCredential *)self _connect])
  {
    v8 = MEMORY[0x1AC5657E0](messageCopy);
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = v8;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "Sending remote credential request %s", buf, 0xCu);
    }

    v10 = os_log_shim_legacy_logging_enabled();
    if (v10)
    {
      sub_1A7CBDFD8(v10, v11, @"Sending remote credential request %s", v12, v13, v14, v15, v16, v8);
      sub_1A7CBE04C(v17, v18, @"Sending remote credential request %s", v19, v20, v21, v22, v23, v8);
      if (_IMWillLog())
      {
        _IMAlwaysLog();
      }
    }

    free(v8);
    connection = self->_connection;
    v25 = im_primary_queue();
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1A7CBFB60;
    handler[3] = &unk_1E77E2BE0;
    v28 = blockCopy;
    handler[4] = self;
    v27 = messageCopy;
    xpc_connection_send_message_with_reply(connection, v27, v25, handler);
  }
}

@end
@interface CXNotificationServiceExtensionVoIPXPCHost
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CXNotificationServiceExtensionHostDelegate)delegate;
- (CXNotificationServiceExtensionVoIPXPCHost)initWithDelegate:(id)delegate;
- (void)notificationServiceExtension:(id)extension reply:(id)reply;
- (void)notificationServiceExtensionHost:(id)host didReceiveIncomingMessage:(id)message forBundleIdentifier:(id)identifier reply:(id)reply;
@end

@implementation CXNotificationServiceExtensionVoIPXPCHost

- (CXNotificationServiceExtensionVoIPXPCHost)initWithDelegate:(id)delegate
{
  v15 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = CXNotificationServiceExtensionVoIPXPCHost;
  v5 = [(CXNotificationServiceExtensionVoIPXPCHost *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_delegate, delegateCopy);
    v8 = CXDefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = @"com.apple.callkit.notificationserviceextension.voip";
      _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Initializing XPC Service %@", buf, 0xCu);
    }

    v9 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.callkit.notificationserviceextension.voip"];
    xpcListener = v6->_xpcListener;
    v6->_xpcListener = v9;

    [(NSXPCListener *)v6->_xpcListener setDelegate:v6];
    [(NSXPCListener *)v6->_xpcListener resume];
  }

  return v6;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v11 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v6 = CXDefaultLog(connectionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = connectionCopy;
    _os_log_impl(&dword_1B47F3000, v6, OS_LOG_TYPE_DEFAULT, "Asked to accept new connection from %@", &v9, 0xCu);
  }

  [connectionCopy setExportedObject:self];
  cx_notificationServiceExtensionInterface = [MEMORY[0x1E696B0D0] cx_notificationServiceExtensionInterface];
  [connectionCopy setExportedInterface:cx_notificationServiceExtensionInterface];

  [connectionCopy resume];
  return 1;
}

- (void)notificationServiceExtension:(id)extension reply:(id)reply
{
  extensionCopy = extension;
  replyCopy = reply;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v9 = currentConnection;
  if (currentConnection)
  {
    cx_bundleIdentifier = [currentConnection cx_bundleIdentifier];
    if (cx_bundleIdentifier)
    {
      v11 = cx_bundleIdentifier;
      v25 = 0;
      v12 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:cx_bundleIdentifier error:&v25];
      v13 = v25;
      v14 = v13;
      if (v12)
      {
        extensionPointRecord = [v12 extensionPointRecord];
        name = [extensionPointRecord name];
        v17 = [name isEqualToString:@"com.apple.usernotifications.service"];

        if (v17)
        {
          containingBundleRecord = [v12 containingBundleRecord];
          bundleIdentifier = [containingBundleRecord bundleIdentifier];

          if (bundleIdentifier)
          {
            [(CXNotificationServiceExtensionVoIPXPCHost *)self notificationServiceExtensionHost:self didReceiveIncomingMessage:extensionCopy forBundleIdentifier:bundleIdentifier reply:replyCopy];
LABEL_16:

            goto LABEL_17;
          }

          if (!replyCopy)
          {
            goto LABEL_17;
          }

          v23 = MEMORY[0x1E696ABC0];
          v24 = 0;
LABEL_15:
          bundleIdentifier = [v23 cx_notificationServiceExtensionErrorWithCode:v24];
          replyCopy[2](replyCopy, bundleIdentifier);
          goto LABEL_16;
        }

        v22 = CXDefaultLog(v18);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [CXNotificationServiceExtensionVoIPXPCHost notificationServiceExtension:v11 reply:v22];
        }
      }

      else
      {
        v22 = CXDefaultLog(v13);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [(CXNotificationServiceExtensionVoIPXPCHost *)v11 notificationServiceExtension:v14 reply:v22];
        }
      }

      if (!replyCopy)
      {
LABEL_17:

        goto LABEL_18;
      }

      v23 = MEMORY[0x1E696ABC0];
      v24 = 1;
      goto LABEL_15;
    }
  }

  if (replyCopy)
  {
    v21 = [MEMORY[0x1E696ABC0] cx_notificationServiceExtensionErrorWithCode:1];
    replyCopy[2](replyCopy, v21);
  }

LABEL_18:
}

- (void)notificationServiceExtensionHost:(id)host didReceiveIncomingMessage:(id)message forBundleIdentifier:(id)identifier reply:(id)reply
{
  replyCopy = reply;
  identifierCopy = identifier;
  messageCopy = message;
  delegate = [(CXNotificationServiceExtensionVoIPXPCHost *)self delegate];
  [delegate notificationServiceExtensionHost:self didReceiveIncomingMessage:messageCopy forBundleIdentifier:identifierCopy reply:replyCopy];
}

- (CXNotificationServiceExtensionHostDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)notificationServiceExtension:(uint64_t)a1 reply:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Aborting request %@ did not arrive from Notification Service Extension", &v2, 0xCu);
}

- (void)notificationServiceExtension:(os_log_t)log reply:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1B47F3000, log, OS_LOG_TYPE_ERROR, "Aborting request, could not find application record for bundle id %@, error %@", &v3, 0x16u);
}

@end
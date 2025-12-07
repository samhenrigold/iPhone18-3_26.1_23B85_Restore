@interface LSInstallProgressObserver
- (LSInstallProgressObserver)initWithConnection:(id)connection;
- (NSString)description;
- (NSXPCConnection)connection;
- (int)pid;
- (unint64_t)hash;
- (void)_lsPing:(id)ping reply:(id)reply;
- (void)addObserver;
- (void)createInstallProgressForApplication:(id)application withPhase:(unint64_t)phase andPublishingString:(id)string reply:(id)reply;
- (void)installationEndedForApplication:(id)application withState:(unint64_t)state;
- (void)installationFailedForApplication:(id)application reply:(id)reply;
- (void)removeObserver;
- (void)sendNotification:(int)notification forApplicationWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)sendNotification:(int)notification forApplications:(id)applications withPlugins:(BOOL)plugins;
- (void)setProgressProportionsByPhase:(id)phase forInstallOfApplicationWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation LSInstallProgressObserver

- (void)addObserver
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _LSProgressLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "LSInstallProgress: adding observer %{public}@", &v5, 0xCu);
  }

  v4 = +[_LSInstallProgressService sharedInstance];
  [v4 addObserver:self];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = LSInstallProgressObserver;
  v4 = [(LSInstallProgressObserver *)&v8 description];
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v6 = [v3 stringWithFormat:@"%@ for pid: %d", v4, objc_msgSend(WeakRetained, "processIdentifier")];

  return v6;
}

- (unint64_t)hash
{
  connection = [(LSInstallProgressObserver *)self connection];
  v3 = [connection hash];

  return v3;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (LSInstallProgressObserver)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = LSInstallProgressObserver;
  v5 = [(LSInstallProgressObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(LSInstallProgressObserver *)v5 setConnection:connectionCopy];
  }

  return v6;
}

- (void)removeObserver
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _LSProgressLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "LSInstallProgress: Removing observer %{public}@", &v5, 0xCu);
  }

  v4 = +[_LSInstallProgressService sharedInstance];
  [v4 removeObserver:self];
}

- (void)_lsPing:(id)ping reply:(id)reply
{
  replyCopy = reply;
  pingCopy = ping;
  v8 = _LSProgressLog(pingCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [LSInstallProgressObserver _lsPing:? reply:?];
  }

  replyCopy[2](replyCopy, pingCopy);
}

- (void)createInstallProgressForApplication:(id)application withPhase:(unint64_t)phase andPublishingString:(id)string reply:(id)reply
{
  replyCopy = reply;
  stringCopy = string;
  applicationCopy = application;
  v12 = +[_LSInstallProgressService sharedInstance];
  [v12 createInstallProgressForApplication:applicationCopy withPhase:phase andPublishingString:stringCopy reply:replyCopy];
}

- (void)sendNotification:(int)notification forApplications:(id)applications withPlugins:(BOOL)plugins
{
  pluginsCopy = plugins;
  v6 = *&notification;
  v19 = *MEMORY[0x1E69E9840];
  applicationsCopy = applications;
  v9 = _LSProgressLog(applicationsCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    connection = [(LSInstallProgressObserver *)self connection];
    v12[0] = 67109890;
    v12[1] = [connection processIdentifier];
    v13 = 1024;
    v14 = v6;
    v15 = 1024;
    v16 = pluginsCopy;
    v17 = 2112;
    v18 = applicationsCopy;
    _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "connection from %d sending notification %d for proxies (plugins %d) %@", v12, 0x1Eu);
  }

  v11 = +[_LSInstallProgressService sharedInstance];
  [v11 sendNotification:v6 forAppProxies:applicationsCopy Plugins:pluginsCopy completion:0];
}

- (void)sendNotification:(int)notification forApplicationWithBundleIdentifier:(id)identifier completion:(id)completion
{
  v6 = *&notification;
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  connection = [(LSInstallProgressObserver *)self connection];
  _xpcConnection = [connection _xpcConnection];

  v12 = _LSCheckEntitlementForXPCConnection(_xpcConnection, @"com.apple.private.coreservices.can-send-install-notifications");
  if (v12)
  {
    v13 = _LSProgressLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      connection2 = [(LSInstallProgressObserver *)self connection];
      *buf = 67109634;
      processIdentifier = [connection2 processIdentifier];
      v23 = 1024;
      v24 = v6;
      v25 = 2112;
      v26 = identifierCopy;
      _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "connection from %d sending notification %d for %@", buf, 0x18u);
    }

    v15 = +[_LSInstallProgressService sharedInstance];
    v20 = identifierCopy;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __92__LSInstallProgressObserver_sendNotification_forApplicationWithBundleIdentifier_completion___block_invoke;
    v18[3] = &unk_1E6A1A370;
    v19 = completionCopy;
    [v15 sendNotification:v6 forApps:v16 withPlugins:(v6 & 0xFFFFFFFE) == 4 completion:v18];
  }

  else
  {
    v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[LSInstallProgressObserver sendNotification:forApplicationWithBundleIdentifier:completion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/_LSInstallProgressService.m", 338);
    (*(completionCopy + 2))(completionCopy, v17);
  }
}

- (void)setProgressProportionsByPhase:(id)phase forInstallOfApplicationWithIdentifier:(id)identifier completion:(id)completion
{
  phaseCopy = phase;
  identifierCopy = identifier;
  completionCopy = completion;
  connection = [(LSInstallProgressObserver *)self connection];
  _xpcConnection = [connection _xpcConnection];
  v13 = _LSCheckEntitlementForXPCConnection(_xpcConnection, @"com.apple.private.coreservices.can-send-install-notifications");

  if (!v13)
  {
    v19 = _LSProgressLog(v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [LSInstallProgressObserver setProgressProportionsByPhase:? forInstallOfApplicationWithIdentifier:? completion:?];
    }

    v20 = *MEMORY[0x1E696A768];
    v21 = -54;
    v22 = 353;
    goto LABEL_10;
  }

  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = _LSIsDictionaryWithKeysAndValuesOfClass(phaseCopy, v15, v16);
  if (!v17)
  {
    v23 = _LSProgressLog(v17);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [LSInstallProgressObserver setProgressProportionsByPhase:forInstallOfApplicationWithIdentifier:completion:];
    }

    v20 = *MEMORY[0x1E696A768];
    v21 = -50;
    v22 = 349;
LABEL_10:
    v18 = _LSMakeNSErrorImpl(v20, v21, 0, "[LSInstallProgressObserver setProgressProportionsByPhase:forInstallOfApplicationWithIdentifier:completion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/_LSInstallProgressService.m", v22);
    completionCopy[2](completionCopy, v18);
    goto LABEL_11;
  }

  v18 = +[_LSInstallProgressService sharedInstance];
  [v18 setProgressProportionsByPhase:phaseCopy forInstallOfApplicationWithIdentifier:identifierCopy completion:completionCopy];
LABEL_11:
}

- (void)installationEndedForApplication:(id)application withState:(unint64_t)state
{
  applicationCopy = application;
  v6 = +[_LSInstallProgressService sharedInstance];
  [v6 installationEndedForApplication:applicationCopy withState:state];
}

- (void)installationFailedForApplication:(id)application reply:(id)reply
{
  replyCopy = reply;
  applicationCopy = application;
  v6 = +[_LSInstallProgressService sharedInstance];
  [v6 installationFailedForApplication:applicationCopy];

  replyCopy[2](replyCopy, 1);
}

- (int)pid
{
  connection = [(LSInstallProgressObserver *)self connection];
  processIdentifier = [connection processIdentifier];

  return processIdentifier;
}

- (void)_lsPing:(void *)a1 reply:.cold.1(void *a1)
{
  v1 = [a1 connection];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_5_4(v2, v3, v4, v5, v6);
}

- (void)setProgressProportionsByPhase:(void *)a1 forInstallOfApplicationWithIdentifier:completion:.cold.2(void *a1)
{
  v1 = [a1 connection];
  [v1 processIdentifier];
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 8u);
}

@end
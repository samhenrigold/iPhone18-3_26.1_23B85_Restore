@interface fskitdAgentManager
- (fskitdAgentManager)init;
- (id)getCurrentAgentForToken:(id)token;
- (id)getCurrentAgentForUID:(unsigned int)d;
- (void)currentExtensionForShortName:(id)name auditToken:(id)token replyHandler:(id)handler;
- (void)currentExtensionsForToken:(id)token replyHandler:(id)handler;
- (void)getNSXPCListenerEndpoint:(id)endpoint instanceID:(id)d uid:(unsigned int)uid replyHandler:(id)handler;
- (void)setEnabledStateForToken:(id)token identifier:(id)identifier newState:(BOOL)state replyHandler:(id)handler;
- (void)startExtension:(id)extension instanceID:(id)d uid:(unsigned int)uid replyHandler:(id)handler;
- (void)stopExtension:(id)extension instanceID:(id)d uid:(unsigned int)uid replyHandler:(id)handler;
@end

@implementation fskitdAgentManager

- (fskitdAgentManager)init
{
  v6.receiver = self;
  v6.super_class = fskitdAgentManager;
  v2 = [(fskitdAgentManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    currentAgents = v2->_currentAgents;
    v2->_currentAgents = v3;
  }

  return v2;
}

- (id)getCurrentAgentForUID:(unsigned int)d
{
  v3 = *&d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = fskit_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "About to get current agent for %{darwin.uid}d", &buf, 8u);
  }

  v6 = [NSNumber numberWithUnsignedInt:v3];
  v7 = [(NSMutableDictionary *)selfCopy->_currentAgents objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = [[FSAgentClient alloc] initToUser:v3];
    if (v7)
    {
      [(NSMutableDictionary *)selfCopy->_currentAgents setObject:v7 forKeyedSubscript:v6];
      objc_initWeak(&buf, selfCopy);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10000D968;
      v11[3] = &unk_100060ED0;
      v11[4] = selfCopy;
      objc_copyWeak(&v13, &buf);
      v12 = v6;
      [v7 setInterruptionHandler:v11];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10000D9EC;
      v9[3] = &unk_100060EF0;
      v10 = v3;
      [v7 setInstanceDeathHandler:v9];
      v7 = v7;

      objc_destroyWeak(&v13);
      objc_destroyWeak(&buf);
    }
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)getCurrentAgentForToken:(id)token
{
  ruid = [token ruid];

  return [(fskitdAgentManager *)self getCurrentAgentForUID:ruid];
}

- (void)currentExtensionsForToken:(id)token replyHandler:(id)handler
{
  handlerCopy = handler;
  [token isOurUID];
  v6 = fskit_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Getting own modules", v9, 2u);
  }

  currentExtensions = [gFSModuleHost currentExtensions];
  v8 = [currentExtensions fs_map:&stru_100060F30];
  handlerCopy[2](handlerCopy, v8, 0);
}

- (void)setEnabledStateForToken:(id)token identifier:(id)identifier newState:(BOOL)state replyHandler:(id)handler
{
  stateCopy = state;
  handlerCopy = handler;
  identifierCopy = identifier;
  [token isOurUID];
  v11 = [gFSModuleHost moduleForBundleID:identifierCopy];

  if (stateCopy)
  {
    [gFSModuleHost addBundleToEnableModules:v11];
  }

  else
  {
    [gFSModuleHost removeBundleFromEnabledModules:v11];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)currentExtensionForShortName:(id)name auditToken:(id)token replyHandler:(id)handler
{
  nameCopy = name;
  tokenCopy = token;
  handlerCopy = handler;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_10000DE84;
  v35 = sub_10000DE94;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_10000DE84;
  v29 = sub_10000DE94;
  v30 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000DE9C;
  v24[3] = &unk_100060F80;
  v24[4] = &v25;
  v24[5] = &v31;
  [(fskitdAgentManager *)self currentExtensionsForToken:tokenCopy replyHandler:v24];
  if (v26[5])
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_10000DE84;
    v22 = sub_10000DE94;
    v23 = 0;
    v11 = fs_errorForPOSIXError();
    v12 = v26[5];
    v26[5] = v11;

    v13 = v32[5];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000DF1C;
    v14[3] = &unk_100060FA8;
    v15 = nameCopy;
    v16 = &v18;
    v17 = &v25;
    [v13 enumerateObjectsUsingBlock:v14];
    (handlerCopy[2])(handlerCopy, v19[5], v26[5]);

    _Block_object_dispose(&v18, 8);
  }

  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
}

- (void)startExtension:(id)extension instanceID:(id)d uid:(unsigned int)uid replyHandler:(id)handler
{
  v7 = *&uid;
  extensionCopy = extension;
  dCopy = d;
  handlerCopy = handler;
  v13 = dispatch_group_create();
  v14 = [(fskitdAgentManager *)self getCurrentAgentForUID:v7];
  dispatch_group_enter(v13);
  v15 = fskit_std_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v22 = extensionCopy;
    v23 = 2112;
    v24 = dCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "About to call to fskit_agent, bundle ID %@, instanceUUID %@", buf, 0x16u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000E1B4;
  v18[3] = &unk_100060FD0;
  v19 = v13;
  v20 = handlerCopy;
  v16 = v13;
  v17 = handlerCopy;
  [v14 startExtension:extensionCopy instanceID:dCopy replyHandler:v18];
  dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)getNSXPCListenerEndpoint:(id)endpoint instanceID:(id)d uid:(unsigned int)uid replyHandler:(id)handler
{
  v6 = *&uid;
  handlerCopy = handler;
  dCopy = d;
  endpointCopy = endpoint;
  v13 = dispatch_group_create();
  v14 = [(fskitdAgentManager *)self getCurrentAgentForUID:v6];
  dispatch_group_enter(v13);
  v15 = fskit_std_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "About to call to fskit_agent", buf, 2u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000E3C8;
  v18[3] = &unk_100060FF8;
  v19 = v13;
  v20 = handlerCopy;
  v16 = v13;
  v17 = handlerCopy;
  [v14 getNSXPCListenerEndpoint:endpointCopy instanceID:dCopy replyHandler:v18];

  dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)stopExtension:(id)extension instanceID:(id)d uid:(unsigned int)uid replyHandler:(id)handler
{
  v6 = *&uid;
  handlerCopy = handler;
  dCopy = d;
  extensionCopy = extension;
  v13 = dispatch_group_create();
  v14 = [(fskitdAgentManager *)self getCurrentAgentForUID:v6];
  dispatch_group_enter(v13);
  v15 = fskit_std_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "About to call to fskit_agent", buf, 2u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000E5B8;
  v18[3] = &unk_100060F58;
  v19 = v13;
  v20 = handlerCopy;
  v16 = v13;
  v17 = handlerCopy;
  [v14 stopExtension:extensionCopy instanceID:dCopy replyHandler:v18];

  dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
}

@end
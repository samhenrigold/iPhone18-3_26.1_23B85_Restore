@interface W5CloudStore
+ (id)sharedStore;
- (BOOL)registerDiagnosticModePeer:(id)peer configuration:(id)configuration error:(id *)error;
- (BOOL)unregisterDiagnosticModePeer:(id)peer error:(id *)error;
- (W5CloudStore)init;
- (id)_homeDiagnosticsDomain;
- (id)getMinNotificationInterval:(id)interval notificationType:(int64_t)type;
- (id)registeredPeers;
- (void)_setHomeDiagnosticsDomain:(id)domain;
@end

@implementation W5CloudStore

+ (id)sharedStore
{
  if (qword_100106C68 != -1)
  {
    dispatch_once(&qword_100106C68, &stru_1000E3188);
  }

  v3 = qword_100106C60;

  return v3;
}

- (W5CloudStore)init
{
  v9.receiver = self;
  v9.super_class = W5CloudStore;
  v2 = [(W5CloudStore *)&v9 init];
  if (!v2)
  {
LABEL_8:

    return 0;
  }

  v3 = [[NSUbiquitousKeyValueStore alloc] initWithStoreIdentifier:@"com.apple.wifi.app" type:0];
  appStore = v2->_appStore;
  v2->_appStore = v3;

  v5 = v2->_appStore;
  if (!v5)
  {
    v7 = sub_100098A04();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "[W5CloudStore init]";
      v12 = 2080;
      v13 = "W5CloudStore.m";
      v14 = 1024;
      v15 = 53;
      LODWORD(v8) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v7, 0, "[wifivelocity] %s (%s:%u) failed to create app KVS store", &v10, v8, LODWORD(v9.receiver));
    }

    goto LABEL_8;
  }

  [(NSUbiquitousKeyValueStore *)v5 synchronize];
  return v2;
}

- (id)_homeDiagnosticsDomain
{
  appStore = [(W5CloudStore *)self appStore];
  v3 = [appStore objectForKey:@"home-diagnostics"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = +[NSDictionary dictionary];
  }

  v5 = v4;

  return v5;
}

- (void)_setHomeDiagnosticsDomain:(id)domain
{
  domainCopy = domain;
  appStore = [(W5CloudStore *)self appStore];
  [appStore setObject:domainCopy forKey:@"home-diagnostics"];

  appStore2 = [(W5CloudStore *)self appStore];
  [appStore2 synchronize];
}

- (BOOL)registerDiagnosticModePeer:(id)peer configuration:(id)configuration error:(id *)error
{
  peerCopy = peer;
  configurationCopy = configuration;
  _homeDiagnosticsDomain = [(W5CloudStore *)self _homeDiagnosticsDomain];
  v11 = [_homeDiagnosticsDomain mutableCopy];

  v38 = v11;
  v12 = [v11 objectForKeyedSubscript:@"registered-app-peers"];
  if (!v12)
  {
    v12 = +[NSDictionary dictionary];
  }

  v13 = [v12 mutableCopy];
  peer = [peerCopy peer];
  peerID = [peer peerID];

  if (!peerID)
  {
    v31 = sub_100098A04();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v42 = 136315906;
      v43 = "[W5CloudStore registerDiagnosticModePeer:configuration:error:]";
      v44 = 2080;
      v45 = "W5CloudStore.m";
      v46 = 1024;
      v47 = 96;
      v48 = 2114;
      v49 = peerCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v31, 0, "[wifivelocity] %s (%s:%u) nil peer ID for peer='%{public}@'", &v42, 38);
    }

    if (!error)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v39 = 0;
  v16 = [NSKeyedArchiver archivedDataWithRootObject:peerCopy requiringSecureCoding:1 error:&v39];
  v17 = v39;
  v18 = v17;
  if (!v16)
  {
    v32 = sub_100098A04();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v42 = 136315906;
      v43 = "[W5CloudStore registerDiagnosticModePeer:configuration:error:]";
      v44 = 2080;
      v45 = "W5CloudStore.m";
      v46 = 1024;
      v47 = 101;
      v48 = 2114;
      v49 = peerCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v32, 0, "[wifivelocity] %s (%s:%u) failed to encode peer='%{public}@'", &v42, 38);
    }

    if (!error)
    {
      v29 = 0;
      goto LABEL_16;
    }

    if (v18)
    {
      v33 = v18;
      v29 = 0;
      *error = v18;
      goto LABEL_16;
    }

LABEL_26:
    v40 = NSLocalizedFailureReasonErrorKey;
    v41 = @"W5ParamErr";
    v34 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v35 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v34];
    *error = v35;

LABEL_27:
    v29 = 0;
    v18 = 0;
    goto LABEL_16;
  }

  v37 = v17;
  v19 = +[NSMutableDictionary dictionary];
  v20 = +[NSDate date];
  [v19 setObject:v20 forKeyedSubscript:@"timestamp"];

  peer2 = [peerCopy peer];
  name = [peer2 name];

  if (name)
  {
    peer3 = [peerCopy peer];
    name2 = [peer3 name];
    [v19 setObject:name2 forKeyedSubscript:@"name"];
  }

  [v19 setObject:v16 forKeyedSubscript:@"peer"];
  v25 = [configurationCopy objectForKey:@"MinStartNotificationInterval"];
  if (v25)
  {
    [v19 setObject:v25 forKey:@"min-start-notification-interval"];
  }

  v26 = [configurationCopy objectForKey:@"MinStopNotificationInterval"];

  if (v26)
  {
    [v19 setObject:v26 forKey:@"min-stop-notification-interval"];
  }

  [v13 setObject:v19 forKeyedSubscript:peerID];
  [v38 setObject:v13 forKeyedSubscript:@"registered-app-peers"];
  [(W5CloudStore *)self _setHomeDiagnosticsDomain:v38];
  v27 = sub_100098A04();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v42 = 136315906;
    v43 = "[W5CloudStore registerDiagnosticModePeer:configuration:error:]";
    v44 = 2080;
    v45 = "W5CloudStore.m";
    v46 = 1024;
    v47 = 131;
    v48 = 2114;
    v49 = peerCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v27, 0, "[wifivelocity] %s (%s:%u) registered peer='%{public}@", &v42, 38);
  }

  v28 = sub_100098A04();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v42 = 136315906;
    v43 = "[W5CloudStore registerDiagnosticModePeer:configuration:error:]";
    v44 = 2080;
    v45 = "W5CloudStore.m";
    v46 = 1024;
    v47 = 132;
    v48 = 2112;
    v49 = v38;
    LODWORD(v36) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v28, 0, "[wifivelocity] %s (%s:%u) W5CloudStore: %@", &v42, v36);
  }

  v29 = 1;
  v18 = v37;
LABEL_16:

  return v29;
}

- (BOOL)unregisterDiagnosticModePeer:(id)peer error:(id *)error
{
  peerCopy = peer;
  _homeDiagnosticsDomain = [(W5CloudStore *)self _homeDiagnosticsDomain];
  v8 = [_homeDiagnosticsDomain mutableCopy];

  v9 = [v8 objectForKeyedSubscript:@"registered-app-peers"];
  peer = [peerCopy peer];
  peerID = [peer peerID];

  if (!peerID)
  {
    v17 = sub_100098A04();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315906;
      v21 = "[W5CloudStore unregisterDiagnosticModePeer:error:]";
      v22 = 2080;
      v23 = "W5CloudStore.m";
      v24 = 1024;
      v25 = 152;
      v26 = 2114;
      v27 = peerCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v17, 0, "[wifivelocity] %s (%s:%u) nil peer ID for peer='%{public}@'", &v20, 38);
    }

    goto LABEL_13;
  }

  if (!v9)
  {
    v17 = sub_100098A04();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315650;
      v21 = "[W5CloudStore unregisterDiagnosticModePeer:error:]";
      v22 = 2080;
      v23 = "W5CloudStore.m";
      v24 = 1024;
      v25 = 153;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v17, 0, "[wifivelocity] %s (%s:%u) peers is empty", &v20, 28);
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  v12 = [v9 mutableCopy];
  v13 = [v12 objectForKeyedSubscript:peerID];

  if (v13)
  {
    [v12 removeObjectForKey:peerID];
    [v8 setObject:v12 forKeyedSubscript:@"registered-app-peers"];
    [(W5CloudStore *)self _setHomeDiagnosticsDomain:v8];
    v14 = sub_100098A04();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315906;
      v21 = "[W5CloudStore unregisterDiagnosticModePeer:error:]";
      v22 = 2080;
      v23 = "W5CloudStore.m";
      v24 = 1024;
      v25 = 166;
      v26 = 2114;
      v27 = peerCopy;
      v15 = 1;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v14, 0, "[wifivelocity] %s (%s:%u) unregistered peer='%{public}@", &v20, 38);
    }

    else
    {
      v15 = 1;
    }

    goto LABEL_7;
  }

  v17 = sub_100098A04();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315906;
    v21 = "[W5CloudStore unregisterDiagnosticModePeer:error:]";
    v22 = 2080;
    v23 = "W5CloudStore.m";
    v24 = 1024;
    v25 = 156;
    v26 = 2114;
    v27 = peerID;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v17, 0, "[wifivelocity] %s (%s:%u) peer is not registered with ID='%{public}@'", &v20, 38);
  }

LABEL_14:

  if (!error)
  {
    v15 = 0;
    goto LABEL_8;
  }

  v18 = NSLocalizedFailureReasonErrorKey;
  v19 = @"W5ParamErr";
  v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v14];
  *error = v15 = 0;
LABEL_7:

LABEL_8:
  return v15;
}

- (id)registeredPeers
{
  _homeDiagnosticsDomain = [(W5CloudStore *)self _homeDiagnosticsDomain];
  v3 = [_homeDiagnosticsDomain mutableCopy];

  v4 = [v3 objectForKeyedSubscript:@"registered-app-peers"];
  v19 = +[NSMutableArray array];
  if (v4)
  {
    v18 = v4;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    allValues = [v4 allValues];
    v6 = [allValues countByEnumeratingWithState:&v21 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v11 = [NSSet setWithObjects:objc_opt_class(), 0];
          v12 = [v10 objectForKeyedSubscript:@"peer"];
          v20 = 0;
          v13 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v12 error:&v20];
          v14 = v20;

          if (v13)
          {
            [v19 addObject:v13];
          }

          else
          {
            v15 = sub_100098A04();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v25 = 136315906;
              v26 = "[W5CloudStore registeredPeers]";
              v27 = 2080;
              v28 = "W5CloudStore.m";
              v29 = 1024;
              v30 = 191;
              v31 = 2114;
              v32 = v14;
              LODWORD(v17) = 38;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v15, 0, "[wifivelocity] %s (%s:%u) failed to decode peer error='%{public}@'", &v25, v17);
            }
          }
        }

        v7 = [allValues countByEnumeratingWithState:&v21 objects:v33 count:16];
      }

      while (v7);
    }

    v4 = v18;
  }

  return v19;
}

- (id)getMinNotificationInterval:(id)interval notificationType:(int64_t)type
{
  intervalCopy = interval;
  _homeDiagnosticsDomain = [(W5CloudStore *)self _homeDiagnosticsDomain];
  v8 = [_homeDiagnosticsDomain objectForKeyedSubscript:@"registered-app-peers"];
  v9 = [v8 objectForKey:intervalCopy];

  if (!v9)
  {
    goto LABEL_5;
  }

  if (type == 2)
  {
    v10 = @"min-start-notification-interval";
    goto LABEL_7;
  }

  if (type != 3)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_8;
  }

  v10 = @"min-stop-notification-interval";
LABEL_7:
  v11 = [v9 objectForKey:v10];
LABEL_8:

  return v11;
}

@end
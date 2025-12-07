@interface W5DiagnosticsModeLocalStore
- (BOOL)_updateCachedLocalStore:(id)store error:(id)error;
- (W5DiagnosticsModeLocalStore)init;
- (id)_getCachedLocalStore:(id)store;
- (id)infoMatchingDiagnosticMode:(id)mode;
- (void)addToStore:(id)store newInfo:(id)info;
- (void)updateStoreWithInfo:(id)info info:(id)a4;
@end

@implementation W5DiagnosticsModeLocalStore

- (W5DiagnosticsModeLocalStore)init
{
  v8.receiver = self;
  v8.super_class = W5DiagnosticsModeLocalStore;
  v2 = [(W5DiagnosticsModeLocalStore *)&v8 init];
  v3 = [(W5DiagnosticsModeLocalStore *)v2 _getCachedLocalStore:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mutableCopy];
  }

  else
  {
    v5 = objc_alloc_init(NSMutableDictionary);
  }

  localDiagnosticsStore = v2->_localDiagnosticsStore;
  v2->_localDiagnosticsStore = v5;

  return v2;
}

- (id)_getCachedLocalStore:(id)store
{
  storeCopy = store;
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 persistentDomainForName:@"com.apple.wifi.diagnosticsMode"];

  v5 = [v4 objectForKey:@"CachedDiagnosticsModeLocalStore"];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v20 = objc_opt_class();
  v12 = v5;
  v13 = [NSSet setWithObjects:v6, v7, v8, v9, v10, v11, v20, objc_opt_class(), 0];
  v22 = storeCopy;
  v14 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v13 fromData:v5 error:&v22];
  v15 = v22;

  if (!v14)
  {
    v17 = v4;
    v18 = sub_100098A04();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136316418;
      v24 = "[W5DiagnosticsModeLocalStore _getCachedLocalStore:]";
      v25 = 2080;
      v26 = "W5DiagnosticsModeManager.m";
      v27 = 1024;
      v28 = 1636;
      v29 = 2114;
      v30 = 0;
      v31 = 2114;
      v32 = v12;
      v33 = 2114;
      v34 = v15;
      LODWORD(v19) = 58;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v18, 0, "[wifivelocity] %s (%s:%u) failed to decode configuration data='%{public}@' from dictionary='%{public}@' with error='%{public}@'", &v23, v19);
    }

    v4 = v17;
  }

  return v14;
}

- (id)infoMatchingDiagnosticMode:(id)mode
{
  modeCopy = mode;
  if (modeCopy)
  {
    localDiagnosticsStore = [(W5DiagnosticsModeLocalStore *)self localDiagnosticsStore];
    uuid = [modeCopy uuid];
    v7 = [localDiagnosticsStore objectForKey:uuid];
  }

  else
  {
    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "[W5DiagnosticsModeLocalStore infoMatchingDiagnosticMode:]";
      v12 = 2080;
      v13 = "W5DiagnosticsModeManager.m";
      v14 = 1024;
      v15 = 1644;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) nil mode provided", &v10, 28);
    }

    v7 = 0;
  }

  return v7;
}

- (void)updateStoreWithInfo:(id)info info:(id)a4
{
  infoCopy = info;
  v7 = a4;
  v8 = v7;
  if (!infoCopy)
  {
    v20 = sub_100098A04();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 136315906;
      *&v22[4] = "[W5DiagnosticsModeLocalStore updateStoreWithInfo:info:]";
      *&v22[12] = 2080;
      *&v22[14] = "W5DiagnosticsModeManager.m";
      *&v22[22] = 1024;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v20, 0, "[wifivelocity] %s (%s:%u) %s: nil mode provided", v22, 38, *v22, *&v22[8]);
    }

    goto LABEL_14;
  }

  if (!v7)
  {
    v20 = sub_100098A04();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 136315906;
      *&v22[4] = "[W5DiagnosticsModeLocalStore updateStoreWithInfo:info:]";
      *&v22[12] = 2080;
      *&v22[14] = "W5DiagnosticsModeManager.m";
      *&v22[22] = 1024;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v20, 0, "[wifivelocity] %s (%s:%u) %s: nil info provided", v22, 38, *v22, *&v22[8]);
    }

    goto LABEL_14;
  }

  localDiagnosticsStore = [(W5DiagnosticsModeLocalStore *)self localDiagnosticsStore];
  uuid = [infoCopy uuid];
  v11 = [localDiagnosticsStore objectForKey:uuid];

  if (v11)
  {
    localDiagnosticsStore2 = [(W5DiagnosticsModeLocalStore *)self localDiagnosticsStore];
    uuid2 = [infoCopy uuid];
    [localDiagnosticsStore2 removeObjectForKey:uuid2];
  }

  localDiagnosticsStore3 = [(W5DiagnosticsModeLocalStore *)self localDiagnosticsStore];
  uuid3 = [infoCopy uuid];
  [localDiagnosticsStore3 setObject:v8 forKey:uuid3];

  v16 = sub_100098A04();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    uuid4 = [infoCopy uuid];
    *v22 = 136316162;
    *&v22[4] = "[W5DiagnosticsModeLocalStore updateStoreWithInfo:info:]";
    *&v22[12] = 2080;
    *&v22[14] = "W5DiagnosticsModeManager.m";
    *&v22[22] = 1024;
    LODWORD(v23) = 1670;
    WORD2(v23) = 2112;
    *(&v23 + 6) = uuid4;
    HIWORD(v23) = 2112;
    v24 = v8;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v16, 0, "[wifivelocity] %s (%s:%u) [DM] updating local store for DM: %@ with info: %@", v22, 48);
  }

  localDiagnosticsStore4 = [(W5DiagnosticsModeLocalStore *)self localDiagnosticsStore];
  v19 = [(W5DiagnosticsModeLocalStore *)self _updateCachedLocalStore:localDiagnosticsStore4 error:0];

  if ((v19 & 1) == 0)
  {
    v20 = sub_100098A04();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 136316162;
      *&v22[4] = "[W5DiagnosticsModeLocalStore updateStoreWithInfo:info:]";
      *&v22[12] = 2080;
      *&v22[14] = "W5DiagnosticsModeManager.m";
      *&v22[22] = 1024;
      LODWORD(v23) = 1673;
      WORD2(v23) = 2080;
      *(&v23 + 6) = "[W5DiagnosticsModeLocalStore updateStoreWithInfo:info:]";
      HIWORD(v23) = 2114;
      LODWORD(v21) = 48;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v20, 0, "[wifivelocity] %s (%s:%u) %s: [DM] failed to update local cache with error='%{public}@'", v22, v21, *v22, *&v22[8], v23, 0);
    }

LABEL_14:
  }
}

- (void)addToStore:(id)store newInfo:(id)info
{
  storeCopy = store;
  infoCopy = info;
  localDiagnosticsStore = [(W5DiagnosticsModeLocalStore *)self localDiagnosticsStore];
  uuid = [storeCopy uuid];
  v10 = [localDiagnosticsStore objectForKey:uuid];

  if (!v10)
  {
    v10 = +[NSMutableDictionary dictionary];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000F6C8;
  v12[3] = &unk_1000E1388;
  v13 = v10;
  v11 = v10;
  [infoCopy enumerateKeysAndObjectsUsingBlock:v12];
  [(W5DiagnosticsModeLocalStore *)self updateStoreWithInfo:storeCopy info:v11];
}

- (BOOL)_updateCachedLocalStore:(id)store error:(id)error
{
  storeCopy = store;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 persistentDomainForName:@"com.apple.wifi.diagnosticsMode"];
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];

  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136316162;
    v17 = "[W5DiagnosticsModeLocalStore _updateCachedLocalStore:error:]";
    v18 = 2080;
    v19 = "W5DiagnosticsModeManager.m";
    v20 = 1024;
    v21 = 1691;
    v22 = 2080;
    v23 = "[W5DiagnosticsModeLocalStore _updateCachedLocalStore:error:]";
    v24 = 2114;
    v25 = storeCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) %s: [DM] updating cached local store with '%{public}@'", &v16, 48);
  }

  if (!storeCopy)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  v15 = 0;
  v9 = [NSKeyedArchiver archivedDataWithRootObject:storeCopy requiringSecureCoding:1 error:&v15];
  v10 = v15;
  if (v9)
  {
    [v7 setObject:v9 forKeyedSubscript:@"CachedDiagnosticsModeLocalStore"];
LABEL_7:
    v11 = +[NSUserDefaults standardUserDefaults];
    [v11 setPersistentDomain:v7 forName:@"com.apple.wifi.diagnosticsMode"];

    v12 = sub_100098A04();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136316162;
      v17 = "[W5DiagnosticsModeLocalStore _updateCachedLocalStore:error:]";
      v18 = 2080;
      v19 = "W5DiagnosticsModeManager.m";
      v20 = 1024;
      v21 = 1706;
      v22 = 2080;
      v23 = "[W5DiagnosticsModeLocalStore _updateCachedLocalStore:error:]";
      v24 = 2114;
      v25 = v10;
      LODWORD(v14) = 48;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v12, 0, "[wifivelocity] %s (%s:%u) %s: [DM] successfully encoded error='%{public}@'", &v16, v14);
    }

    goto LABEL_10;
  }

  v9 = sub_100098A04();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315906;
    v17 = "[W5DiagnosticsModeLocalStore _updateCachedLocalStore:error:]";
    v18 = 2080;
    v19 = "W5DiagnosticsModeManager.m";
    v20 = 1024;
    v21 = 1700;
    v22 = 2114;
    v23 = v10;
    LODWORD(v14) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v9, 0, "[wifivelocity] %s (%s:%u) failed to encode configuration with error='%{public}@'", &v16, v14);
  }

LABEL_10:

  return v10 == 0;
}

@end
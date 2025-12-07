@interface W5DiagnosticsModeStore
- (BOOL)_updateCachedDiagnosticsMode:(id)mode error:(id)error;
- (W5DiagnosticsModeStore)init;
- (id)_diagnosticsModeFilteredWithPredicate:(id)predicate;
- (id)_getCachedDiagnosticsMode:(id)mode;
- (id)diagnosticsModeMatchingPeerID:(id)d state:(int64_t)state;
- (id)diagnosticsModeMatchingPeerID:(id)d state:(int64_t)state role:(int64_t)role;
- (id)diagnosticsModeMatchingUUID:(id)d;
- (void)updateStoreWithDiagnosticsMode:(id)mode;
@end

@implementation W5DiagnosticsModeStore

- (W5DiagnosticsModeStore)init
{
  v9.receiver = self;
  v9.super_class = W5DiagnosticsModeStore;
  v2 = [(W5DiagnosticsModeStore *)&v9 init];
  v3 = [(W5DiagnosticsModeStore *)v2 _getCachedDiagnosticsMode:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mutableCopy];
  }

  else
  {
    v5 = +[NSMutableSet set];
  }

  diagnostics = v2->_diagnostics;
  v2->_diagnostics = v5;

  activeTransaction = v2->_activeTransaction;
  v2->_activeTransaction = 0;

  return v2;
}

- (id)diagnosticsModeMatchingPeerID:(id)d state:(int64_t)state role:(int64_t)role
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000DB74;
  v12[3] = &unk_1000E12E8;
  dCopy = d;
  stateCopy = state;
  roleCopy = role;
  v8 = dCopy;
  v9 = [NSPredicate predicateWithBlock:v12];
  v10 = [(W5DiagnosticsModeStore *)self _diagnosticsModeFilteredWithPredicate:v9];

  return v10;
}

- (id)diagnosticsModeMatchingPeerID:(id)d state:(int64_t)state
{
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10000DDDC;
  v13 = &unk_1000E1310;
  dCopy = d;
  stateCopy = state;
  v6 = dCopy;
  v7 = [NSPredicate predicateWithBlock:&v10];
  v8 = [(W5DiagnosticsModeStore *)self _diagnosticsModeFilteredWithPredicate:v7, v10, v11, v12, v13];

  return v8;
}

- (id)diagnosticsModeMatchingUUID:(id)d
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000E04C;
  v9[3] = &unk_1000E1338;
  dCopy = d;
  v4 = dCopy;
  v5 = [NSPredicate predicateWithBlock:v9];
  v6 = [(W5DiagnosticsModeStore *)self _diagnosticsModeFilteredWithPredicate:v5];

  if (v6)
  {
    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)_diagnosticsModeFilteredWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  diagnostics = [(W5DiagnosticsModeStore *)self diagnostics];

  if (diagnostics)
  {
    diagnostics2 = [(W5DiagnosticsModeStore *)self diagnostics];
    allObjects = [diagnostics2 allObjects];
    v8 = [allObjects filteredArrayUsingPredicate:predicateCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateStoreWithDiagnosticsMode:(id)mode
{
  modeCopy = mode;
  if (!modeCopy)
  {
    activeTransaction = sub_100098A04();
    if (os_log_type_enabled(activeTransaction, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315906;
      v28 = "[W5DiagnosticsModeStore updateStoreWithDiagnosticsMode:]";
      v29 = 2080;
      v30 = "W5DiagnosticsModeManager.m";
      v31 = 1024;
      v32 = 1529;
      v33 = 2080;
      v34 = "[W5DiagnosticsModeStore updateStoreWithDiagnosticsMode:]";
      LODWORD(v20) = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, activeTransaction, 0, "[wifivelocity] %s (%s:%u) %s: nil mode provided", &v27, v20, v21, v22);
    }

    goto LABEL_26;
  }

  diagnostics = [(W5DiagnosticsModeStore *)self diagnostics];
  v6 = [diagnostics containsObject:modeCopy];

  if (v6)
  {
    diagnostics2 = [(W5DiagnosticsModeStore *)self diagnostics];
    [diagnostics2 removeObject:modeCopy];
  }

  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315906;
    v28 = "[W5DiagnosticsModeStore updateStoreWithDiagnosticsMode:]";
    v29 = 2080;
    v30 = "W5DiagnosticsModeManager.m";
    v31 = 1024;
    v32 = 1537;
    v33 = 2112;
    v34 = modeCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) [DM] updating store with DM: %@", &v27, 38);
  }

  diagnostics3 = [(W5DiagnosticsModeStore *)self diagnostics];
  [diagnostics3 addObject:modeCopy];

  diagnostics4 = [(W5DiagnosticsModeStore *)self diagnostics];
  v11 = [(W5DiagnosticsModeStore *)self _updateCachedDiagnosticsMode:diagnostics4 error:0];

  if ((v11 & 1) == 0)
  {
    v12 = sub_100098A04();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136316162;
      v28 = "[W5DiagnosticsModeStore updateStoreWithDiagnosticsMode:]";
      v29 = 2080;
      v30 = "W5DiagnosticsModeManager.m";
      v31 = 1024;
      v32 = 1542;
      v33 = 2080;
      v34 = "[W5DiagnosticsModeStore updateStoreWithDiagnosticsMode:]";
      v35 = 2114;
      v36 = 0;
      LODWORD(v20) = 48;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v12, 0, "[wifivelocity] %s (%s:%u) %s: [DM] failed to update cache with error='%{public}@'", &v27, v20);
    }
  }

  if (sub_10000E5EC())
  {
    sharedDeviceAnalyticsClient = [sub_10000E5EC() sharedDeviceAnalyticsClient];

    if (sharedDeviceAnalyticsClient)
    {
      v14 = [modeCopy state] == 3;
      sharedDeviceAnalyticsClient2 = [sub_10000E5EC() sharedDeviceAnalyticsClient];
      v16 = +[NSDate now];
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_10000E6CC;
      v24 = &unk_1000E1360;
      v25 = modeCopy;
      v26 = v14;
      [sharedDeviceAnalyticsClient2 diagnosticEventAt:v16 with:&v21];
    }
  }

  if (!self->_activeTransaction)
  {
    if ([modeCopy state] == 2 || objc_msgSend(modeCopy, "state") == 3 || objc_msgSend(modeCopy, "state") == 4 || objc_msgSend(modeCopy, "state") == 5 || objc_msgSend(modeCopy, "state") == 10)
    {
      v18 = os_transaction_create();
      v17 = +[W5ActivityManager sharedActivityManager];
      [v17 osTransactionCreate:"diagnosticsModeStateActive" transaction:v18];
      goto LABEL_25;
    }

    if (!self->_activeTransaction)
    {
      goto LABEL_27;
    }
  }

  if ([modeCopy state] == 1 || objc_msgSend(modeCopy, "state") == 11)
  {
    v17 = +[W5ActivityManager sharedActivityManager];
    [v17 osTransactionComplete:self->_activeTransaction];
    v18 = 0;
LABEL_25:

    activeTransaction = self->_activeTransaction;
    self->_activeTransaction = v18;
LABEL_26:
  }

LABEL_27:
}

- (id)_getCachedDiagnosticsMode:(id)mode
{
  modeCopy = mode;
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 persistentDomainForName:@"com.apple.wifi.diagnosticsMode"];

  v5 = [v4 objectForKey:@"CachedDiagnosticsMode"];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [NSSet setWithObjects:v6, v7, v8, v9, v10, v11, objc_opt_class(), 0];
  v20 = modeCopy;
  v13 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v12 fromData:v5 error:&v20];
  v14 = v20;

  if (!v13)
  {
    v16 = v4;
    v17 = sub_100098A04();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136316418;
      v22 = "[W5DiagnosticsModeStore _getCachedDiagnosticsMode:]";
      v23 = 2080;
      v24 = "W5DiagnosticsModeManager.m";
      v25 = 1024;
      v26 = 1580;
      v27 = 2114;
      v28 = 0;
      v29 = 2114;
      v30 = v5;
      v31 = 2114;
      v32 = v14;
      LODWORD(v18) = 58;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v17, 0, "[wifivelocity] %s (%s:%u) failed to decode configuration data='%{public}@' from dictionary='%{public}@' with error='%{public}@'", &v21, v18);
    }

    v4 = v16;
  }

  return v13;
}

- (BOOL)_updateCachedDiagnosticsMode:(id)mode error:(id)error
{
  modeCopy = mode;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 persistentDomainForName:@"com.apple.wifi.diagnosticsMode"];
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];

  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136316162;
    v17 = "[W5DiagnosticsModeStore _updateCachedDiagnosticsMode:error:]";
    v18 = 2080;
    v19 = "W5DiagnosticsModeManager.m";
    v20 = 1024;
    v21 = 1588;
    v22 = 2080;
    v23 = "[W5DiagnosticsModeStore _updateCachedDiagnosticsMode:error:]";
    v24 = 2114;
    v25 = modeCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) %s: [DM] updating cached diagnostics mode with '%{public}@'", &v16, 48);
  }

  if (!modeCopy)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  v15 = 0;
  v9 = [NSKeyedArchiver archivedDataWithRootObject:modeCopy requiringSecureCoding:1 error:&v15];
  v10 = v15;
  if (v9)
  {
    [v7 setObject:v9 forKeyedSubscript:@"CachedDiagnosticsMode"];
LABEL_7:
    v11 = +[NSUserDefaults standardUserDefaults];
    [v11 setPersistentDomain:v7 forName:@"com.apple.wifi.diagnosticsMode"];

    v12 = sub_100098A04();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136316162;
      v17 = "[W5DiagnosticsModeStore _updateCachedDiagnosticsMode:error:]";
      v18 = 2080;
      v19 = "W5DiagnosticsModeManager.m";
      v20 = 1024;
      v21 = 1603;
      v22 = 2080;
      v23 = "[W5DiagnosticsModeStore _updateCachedDiagnosticsMode:error:]";
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
    v17 = "[W5DiagnosticsModeStore _updateCachedDiagnosticsMode:error:]";
    v18 = 2080;
    v19 = "W5DiagnosticsModeManager.m";
    v20 = 1024;
    v21 = 1597;
    v22 = 2114;
    v23 = v10;
    LODWORD(v14) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v9, 0, "[wifivelocity] %s (%s:%u) failed to encode configuration with error='%{public}@'", &v16, v14);
  }

LABEL_10:

  return v10 == 0;
}

@end
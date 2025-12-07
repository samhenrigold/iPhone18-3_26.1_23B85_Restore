@interface GEOAPDaemonManagerBridge
- (BOOL)_hasEvalEntitlement;
- (BOOL)_hasTelemetryEntitlement;
- (void)dealloc;
- (void)flushEvalData;
- (void)flushUploadHistoryWithCompletion:(id)completion;
- (void)reportDailySettings:(id)settings completion:(id)completion;
- (void)reportDailyUsageCountType:(int)type usageString:(id)string usageBool:(id)bool appId:(id)id completion:(id)completion;
- (void)reportLogMsg:(id)msg uploadBatchId:(unint64_t)id completion:(id)completion;
- (void)runAggregationTasks;
- (void)setEvalMode:(BOOL)mode;
- (void)showEvalData;
- (void)showHistoryOfAge:(unsigned int)age;
- (void)showInflight;
- (void)showUploadCounts:(id)counts;
- (void)streamEvalData;
@end

@implementation GEOAPDaemonManagerBridge

- (void)showUploadCounts:(id)counts
{
  countsCopy = counts;
  v4 = +[GEOAPServiceManager sharedManager];
  [v4 showUploadCounts:countsCopy];
}

- (void)flushUploadHistoryWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[GEOAPServiceManager sharedManager];
  [v4 flushUploadHistoryWithCompletion:completionCopy];
}

- (void)showHistoryOfAge:(unsigned int)age
{
  v3 = *&age;
  if ([(GEOAPDaemonManagerBridge *)self _hasEvalEntitlement])
  {
    v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___GEOAPXPCMapsDebugPanelExporting];
    [(NSXPCConnection *)self->_conn setRemoteObjectInterface:v5];

    remoteObjectProxy = [(NSXPCConnection *)self->_conn remoteObjectProxy];
    v7 = +[GEOAPServiceManager sharedManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000CBF8;
    v11[3] = &unk_10003CA00;
    v12 = remoteObjectProxy;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000CC40;
    v9[3] = &unk_10003D5B8;
    v10 = v12;
    v8 = v12;
    [v7 showHistoryOfAge:v3 withVisitorBlock:v11 completion:v9];
  }

  else
  {
    v8 = sub_100000F70();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "eval entitlement is required for this operation", buf, 2u);
    }
  }
}

- (void)showInflight
{
  if ([(GEOAPDaemonManagerBridge *)self _hasEvalEntitlement])
  {
    v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___GEOAPXPCMapsDebugPanelExporting];
    [(NSXPCConnection *)self->_conn setRemoteObjectInterface:v3];

    remoteObjectProxy = [(NSXPCConnection *)self->_conn remoteObjectProxy];
    v5 = +[GEOAPServiceManager sharedManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000CE14;
    v9[3] = &unk_10003C9D8;
    v10 = remoteObjectProxy;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000CE58;
    v7[3] = &unk_10003D5B8;
    v8 = v10;
    v6 = v10;
    [v5 showInflightUploadsWithVisitorBlock:v9 completion:v7];
  }

  else
  {
    v6 = sub_100000F70();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "eval entitlement is required for this operation", buf, 2u);
    }
  }
}

- (void)flushEvalData
{
  v3 = sub_100000F70();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[GEOAPDaemonManagerBridge flushEvalData]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", &v5, 0xCu);
  }

  if ([(GEOAPDaemonManagerBridge *)self _hasEvalEntitlement])
  {
    v4 = +[GEOAPServiceManager sharedManager];
    [v4 flushEvalData];
  }

  else
  {
    v4 = sub_100000F70();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "eval entitlement is required for this operation", &v5, 2u);
    }
  }
}

- (void)streamEvalData
{
  if ([(GEOAPDaemonManagerBridge *)self _hasEvalEntitlement])
  {
    v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___GEOAPXPCClientExporting];
    [(NSXPCConnection *)self->_conn setRemoteObjectInterface:v3];

    remoteObjectProxy = [(NSXPCConnection *)self->_conn remoteObjectProxy];
    objc_initWeak(&location, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000D1EC;
    v13[3] = &unk_10003D440;
    v5 = remoteObjectProxy;
    v14 = v5;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)self->_conn setInterruptionHandler:v13];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000D274;
    v10[3] = &unk_10003D440;
    v6 = v5;
    v11 = v6;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)self->_conn setInvalidationHandler:v10];
    v7 = sub_100001018();
    v8 = v6;
    v9 = v8;
    if (v7)
    {
      *buf = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_10001A21C;
      v20 = &unk_10003D5E0;
      v21 = v8;
      v22 = v7;
      geo_isolate_sync();
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v15);

    objc_destroyWeak(&location);
  }

  else
  {
    v9 = sub_100000F70();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "eval entitlement is required for this operation", buf, 2u);
    }
  }
}

- (void)showEvalData
{
  if ([(GEOAPDaemonManagerBridge *)self _hasEvalEntitlement])
  {
    v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___GEOAPXPCClientExporting];
    [(NSXPCConnection *)self->_conn setRemoteObjectInterface:v3];

    remoteObjectProxy = [(NSXPCConnection *)self->_conn remoteObjectProxy];
    v5 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000D41C;
    block[3] = &unk_10003D5B8;
    v8 = remoteObjectProxy;
    v6 = remoteObjectProxy;
    dispatch_async(v5, block);
  }

  else
  {
    v6 = sub_100000F70();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "eval entitlement is required for this operation", buf, 2u);
    }
  }
}

- (void)setEvalMode:(BOOL)mode
{
  modeCopy = mode;
  v5 = sub_100000F70();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[GEOAPDaemonManagerBridge setEvalMode:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s", &v7, 0xCu);
  }

  if ([(GEOAPDaemonManagerBridge *)self _hasEvalEntitlement])
  {
    v6 = +[GEOAPServiceManager sharedManager];
    [v6 setEvalMode:modeCopy];
  }

  else
  {
    v6 = sub_100000F70();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "eval entitlement is required for this operation", &v7, 2u);
    }
  }
}

- (void)runAggregationTasks
{
  v3 = sub_100000F70();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[GEOAPDaemonManagerBridge runAggregationTasks]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", &v5, 0xCu);
  }

  if ([(GEOAPDaemonManagerBridge *)self _hasEvalEntitlement])
  {
    v4 = +[GEOAPServiceManager sharedManager];
    [v4 runAggregationTasks];
  }

  else
  {
    v4 = sub_100000F70();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "eval entitlement is required for this operation", &v5, 2u);
    }
  }
}

- (BOOL)_hasEvalEntitlement
{
  v2 = [(NSXPCConnection *)self->_conn valueForEntitlement:GEOAPEvalEntitlement];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)reportLogMsg:(id)msg uploadBatchId:(unint64_t)id completion:(id)completion
{
  msgCopy = msg;
  completionCopy = completion;
  v10 = sub_100000F70();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = "[GEOAPDaemonManagerBridge reportLogMsg:uploadBatchId:completion:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if (GEOBatchIDIsTelemetryData() && ![(GEOAPDaemonManagerBridge *)self _hasTelemetryEntitlement])
  {
    v12 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000DAC0;
    block[3] = &unk_10003C988;
    v14 = completionCopy;
    dispatch_async(v12, block);

    v11 = v14;
  }

  else
  {
    v11 = +[GEOAPServiceManager sharedManager];
    [v11 reportLogMsg:msgCopy uploadBatchId:id completion:completionCopy];
  }
}

- (BOOL)_hasTelemetryEntitlement
{
  v2 = [(NSXPCConnection *)self->_conn valueForEntitlement:GEOAPTelemetryEntitlement];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)reportDailySettings:(id)settings completion:(id)completion
{
  completionCopy = completion;
  settingsCopy = settings;
  v7 = sub_100000F70();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "[GEOAPDaemonManagerBridge reportDailySettings:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s", &v9, 0xCu);
  }

  v8 = +[GEOAPServiceManager sharedManager];
  [v8 reportDailySettings:settingsCopy completion:completionCopy];
}

- (void)reportDailyUsageCountType:(int)type usageString:(id)string usageBool:(id)bool appId:(id)id completion:(id)completion
{
  v10 = *&type;
  completionCopy = completion;
  idCopy = id;
  boolCopy = bool;
  stringCopy = string;
  v15 = sub_100000F70();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315138;
    v18 = "[GEOAPDaemonManagerBridge reportDailyUsageCountType:usageString:usageBool:appId:completion:]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s", &v17, 0xCu);
  }

  v16 = +[GEOAPServiceManager sharedManager];
  [v16 reportDailyUsageCountType:v10 usageString:stringCopy usageBool:boolCopy appId:idCopy completion:completionCopy];
}

- (void)dealloc
{
  v3 = sub_100000F70();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "goodbye connection %p", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = GEOAPDaemonManagerBridge;
  [(GEOAPDaemonManagerBridge *)&v4 dealloc];
}

@end
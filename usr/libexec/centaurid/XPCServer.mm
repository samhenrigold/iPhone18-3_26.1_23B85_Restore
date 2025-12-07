@interface XPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (XPCServer)initWithChipManager:(id)manager;
- (void)activate;
- (void)castPowerTableVoteForSession:(id)session client:(int64_t)client vote:(BOOL)vote reply:(id)reply;
- (void)checkForNewPowerTables:(id)tables;
- (void)collectLogs:(id)logs fatal:(BOOL)fatal reply:(id)reply;
- (void)getPMUFaultInfo:(id)info;
- (void)getPowerStats:(BOOL)stats reply:(id)reply;
- (void)getSiKPublicKey:(id)key;
- (void)helloCommand:(id)command;
- (void)invalidate;
- (void)preflightQuery:(id)query;
- (void)rawCommand:(id)command gid:(unsigned __int8)gid oid:(unsigned __int8)oid reply:(id)reply;
- (void)rebootIntoLowPowerMode:(id)mode debugMode:(BOOL)debugMode reply:(id)reply;
- (void)setPowerTableEvaluationReadinessForSession:(id)session client:(int64_t)client ready:(BOOL)ready reply:(id)reply;
- (void)shellCommand:(id)command reply:(id)reply;
@end

@implementation XPCServer

- (XPCServer)initWithChipManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = XPCServer;
  v6 = [(XPCServer *)&v10 init];
  if (v6)
  {
    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.centaurid.xpc"];
    listener = v6->_listener;
    v6->_listener = v7;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    objc_storeStrong(&v6->_chipManager, manager);
  }

  return v6;
}

- (void)activate
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v7, 0x16u);
  }

  [(NSXPCListener *)self->_listener activate];
}

- (void)invalidate
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v7, 0x16u);
  }

  [(NSXPCListener *)self->_listener invalidate];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  bzero(buffer, 0x400uLL);
  v8 = proc_name(processIdentifier, buffer, 0x400u);
  if (!v8)
  {
    v9 = sub_100025204(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100031770(self, a2);
    }
  }

  v10 = sub_100025204(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    *buf = 138544130;
    v28 = v11;
    v29 = 2114;
    v30 = v12;
    v31 = 2082;
    v32 = buffer;
    v33 = 2114;
    v34 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: connection from %{public}s: %{public}@", buf, 0x2Au);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100027860;
  v25[3] = &unk_10005CDD8;
  v25[4] = self;
  v25[5] = a2;
  v26 = processIdentifier;
  [connectionCopy setInterruptionHandler:v25];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100027954;
  v23[3] = &unk_10005CDD8;
  v23[4] = self;
  v23[5] = a2;
  v24 = processIdentifier;
  [connectionCopy setInvalidationHandler:v23];
  serviceName = [connectionCopy serviceName];
  v14 = [serviceName isEqualToString:@"com.apple.centaurid.xpc"];

  if ((v14 & 1) == 0)
  {
    v16 = sub_100025204(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = [objc_opt_class() description];
      v21 = NSStringFromSelector(a2);
      serviceName2 = [connectionCopy serviceName];
      *buf = 138543874;
      v28 = v20;
      v29 = 2114;
      v30 = v21;
      v31 = 2114;
      v32 = serviceName2;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: unknown service %{public}@", buf, 0x20u);
    }

    goto LABEL_16;
  }

  v16 = [connectionCopy valueForEntitlement:@"com.apple.centaurid.xpc"];
  if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v16 BOOLValue]& 1) == 0)
  {
    sub_100031818(self, a2);
LABEL_16:
    v18 = 0;
    goto LABEL_12;
  }

  v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CENXPCServerProtocol];
  [connectionCopy setExportedInterface:v17];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];
  v18 = 1;
LABEL_12:

  return v18;
}

- (void)helloCommand:(id)command
{
  commandCopy = command;
  v6 = sub_100025204(commandCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v9, 0x16u);
  }

  [(ChipManager *)self->_chipManager helloCommand:commandCopy];
}

- (void)rawCommand:(id)command gid:(unsigned __int8)gid oid:(unsigned __int8)oid reply:(id)reply
{
  oidCopy = oid;
  gidCopy = gid;
  replyCopy = reply;
  commandCopy = command;
  v13 = sub_100025204(commandCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [objc_opt_class() description];
    v15 = NSStringFromSelector(a2);
    v16 = 138543618;
    v17 = v14;
    v18 = 2114;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v16, 0x16u);
  }

  [(ChipManager *)self->_chipManager rawCommand:commandCopy gid:gidCopy oid:oidCopy completion:replyCopy];
}

- (void)shellCommand:(id)command reply:(id)reply
{
  replyCopy = reply;
  commandCopy = command;
  v9 = sub_100025204(commandCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [objc_opt_class() description];
    v11 = NSStringFromSelector(a2);
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v12, 0x16u);
  }

  [(ChipManager *)self->_chipManager shellCommand:commandCopy completion:replyCopy];
}

- (void)getPowerStats:(BOOL)stats reply:(id)reply
{
  statsCopy = stats;
  replyCopy = reply;
  v8 = sub_100025204(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_opt_class() description];
    v10 = NSStringFromSelector(a2);
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v11, 0x16u);
  }

  [(ChipManager *)self->_chipManager getPowerStats:statsCopy completion:replyCopy];
}

- (void)getPMUFaultInfo:(id)info
{
  infoCopy = info;
  v6 = sub_100025204(infoCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v9, 0x16u);
  }

  [(ChipManager *)self->_chipManager getPMUFaultInfo:infoCopy];
}

- (void)collectLogs:(id)logs fatal:(BOOL)fatal reply:(id)reply
{
  fatalCopy = fatal;
  replyCopy = reply;
  logsCopy = logs;
  v11 = sub_100025204(logsCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [objc_opt_class() description];
    v13 = NSStringFromSelector(a2);
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v14, 0x16u);
  }

  [(ChipManager *)self->_chipManager collectLogs:logsCopy fatal:fatalCopy completion:replyCopy];
}

- (void)preflightQuery:(id)query
{
  queryCopy = query;
  v6 = sub_100025204(queryCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v9, 0x16u);
  }

  [(ChipManager *)self->_chipManager preflightQuery:queryCopy];
}

- (void)rebootIntoLowPowerMode:(id)mode debugMode:(BOOL)debugMode reply:(id)reply
{
  debugModeCopy = debugMode;
  replyCopy = reply;
  modeCopy = mode;
  v11 = sub_100025204(modeCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [objc_opt_class() description];
    v13 = NSStringFromSelector(a2);
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v14, 0x16u);
  }

  [(ChipManager *)self->_chipManager rebootIntoLowPowerMode:modeCopy debugMode:debugModeCopy completion:replyCopy];
}

- (void)getSiKPublicKey:(id)key
{
  keyCopy = key;
  v6 = sub_100025204(keyCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v9, 0x16u);
  }

  [(ChipManager *)self->_chipManager getSiKPublicKey:keyCopy];
}

- (void)checkForNewPowerTables:(id)tables
{
  tablesCopy = tables;
  v6 = sub_100025204(tablesCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v9, 0x16u);
  }

  [(ChipManager *)self->_chipManager checkForNewPowerTables:tablesCopy];
}

- (void)setPowerTableEvaluationReadinessForSession:(id)session client:(int64_t)client ready:(BOOL)ready reply:(id)reply
{
  readyCopy = ready;
  replyCopy = reply;
  sessionCopy = session;
  v13 = sub_100025204(sessionCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [objc_opt_class() description];
    v15 = NSStringFromSelector(a2);
    v16 = 138543618;
    v17 = v14;
    v18 = 2114;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v16, 0x16u);
  }

  [(ChipManager *)self->_chipManager setPowerTableEvaluationReadinessForSession:sessionCopy client:client ready:readyCopy completion:replyCopy];
}

- (void)castPowerTableVoteForSession:(id)session client:(int64_t)client vote:(BOOL)vote reply:(id)reply
{
  voteCopy = vote;
  replyCopy = reply;
  sessionCopy = session;
  v13 = sub_100025204(sessionCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [objc_opt_class() description];
    v15 = NSStringFromSelector(a2);
    v16 = 138543618;
    v17 = v14;
    v18 = 2114;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v16, 0x16u);
  }

  [(ChipManager *)self->_chipManager castPowerTableVoteForSession:sessionCopy client:client vote:voteCopy completion:replyCopy];
}

@end
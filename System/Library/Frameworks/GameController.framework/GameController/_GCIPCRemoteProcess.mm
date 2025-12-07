@interface _GCIPCRemoteProcess
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToProcess:(id)process;
- (_GCIPCRemoteProcess)init;
- (_GCIPCRemoteProcess)initWithConnection:(id)connection;
- (id)debugDescription;
- (void)addConnection:(id)connection;
- (void)populateBundleIdentifierForConnection:(id)connection;
@end

@implementation _GCIPCRemoteProcess

- (_GCIPCRemoteProcess)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = _GCIPCRemoteProcess;
  v5 = [(_GCIPCRemoteProcess *)&v13 init];
  if (v5)
  {
    if (connectionCopy)
    {
      objc_msgSend_auditToken(connectionCopy);
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    *v5->_auditToken.val = v11;
    *&v5->_auditToken.val[4] = v12;
    v5->_auditSessionIdentifier = [connectionCopy auditSessionIdentifier];
    v5->_processIdentifier = [connectionCopy processIdentifier];
    v5->_effectiveUserIdentifier = [connectionCopy effectiveUserIdentifier];
    v5->_effectiveGroupIdentifier = [connectionCopy effectiveGroupIdentifier];
    v6 = objc_opt_new();
    connections = v5->_connections;
    v5->_connections = v6;

    v8 = objc_opt_new();
    connectionInvalidationRegistrations = v5->_connectionInvalidationRegistrations;
    v5->_connectionInvalidationRegistrations = v8;

    [(_GCIPCRemoteProcess *)v5 populateBundleIdentifierForConnection:connectionCopy];
  }

  return v5;
}

- (_GCIPCRemoteProcess)init
{
  [(_GCIPCRemoteProcess *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)populateBundleIdentifierForConnection:(id)connection
{
  v6 = GCBundleWithPID([connection processIdentifier]);
  bundleIdentifier = [v6 bundleIdentifier];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = bundleIdentifier;
}

- (void)addConnection:(id)connection
{
  connectionCopy = connection;
  process = [connectionCopy process];

  if (process == self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v21 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __37___GCIPCRemoteProcess_addConnection___block_invoke;
    v17[3] = &unk_1E8419AF8;
    v17[4] = selfCopy;
    v17[5] = &v18;
    v17[6] = connectionCopy;
    v17[7] = a2;
    v9 = [connectionCopy addInvalidationHandler:v17];
    v11 = v9;
    if (v9)
    {
      v19[3] = v9;
      isInternalBuild = gc_isInternalBuild(v9, v10);
      if (isInternalBuild)
      {
        v16 = getGCLogger(isInternalBuild);
        [(_GCIPCRemoteProcess *)v16 addConnection:selfCopy, connectionCopy];
      }

      connections = [(_GCIPCRemoteProcess *)selfCopy connections];
      v14 = [connections arrayByAddingObject:connectionCopy];
      [(_GCIPCRemoteProcess *)selfCopy setConnections:v14];

      connectionInvalidationRegistrations = [(_GCIPCRemoteProcess *)selfCopy connectionInvalidationRegistrations];
      [connectionInvalidationRegistrations addObject:v11];
    }

    _Block_object_dispose(&v18, 8);
    objc_sync_exit(selfCopy);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCIPCProcess.m" lineNumber:67 description:{@"Connection %@ is not from process %@", connectionCopy, self}];
  }
}

- (BOOL)isEqualToProcess:(id)process
{
  processCopy = process;
  objc_msgSend_auditToken(self);
  if (processCopy)
  {
    objc_msgSend_auditToken(processCopy);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v8 = v12 == v10 && v13 == *(&v10 + 1) && v14 == v11 && v15 == *(&v11 + 1);

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_GCIPCRemoteProcess *)self isEqualToProcess:equalCopy];

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p pid: %i>", v5, self, -[_GCIPCRemoteProcess processIdentifier](self, "processIdentifier")];

  return v6;
}

- (void)addConnection:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    *v12 = 138412546;
    *&v12[4] = a2;
    *&v12[12] = 2112;
    *&v12[14] = a3;
    OUTLINED_FUNCTION_0_12(&dword_1D2CD5000, v6, v7, "%@ adding connection: %@", v8, v9, v10, v11, *v12, *&v12[8], *&v12[16]);
  }
}

@end
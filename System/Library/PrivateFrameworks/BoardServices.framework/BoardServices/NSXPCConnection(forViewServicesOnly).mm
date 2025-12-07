@interface NSXPCConnection(forViewServicesOnly)
- (id)bs_fetchBundleIdentifierFromXPCConnection;
@end

@implementation NSXPCConnection(forViewServicesOnly)

- (id)bs_fetchBundleIdentifierFromXPCConnection
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = objc_getAssociatedObject(self, "BSNSXPCTransport");
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = MEMORY[0x1E696AEC0];
      classForCoder = [v6 classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v19 = NSStringFromClass(classForCoder);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = [v17 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"transport", v19, v21];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = NSStringFromSelector(a2);
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138544642;
        v28 = v23;
        v29 = 2114;
        v30 = v25;
        v31 = 2048;
        selfCopy2 = self;
        v33 = 2114;
        v34 = @"BSNSXPCTransport.m";
        v35 = 1024;
        v36 = 881;
        v37 = 2114;
        v38 = v22;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v26 = v22;
      [v22 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A83EF2CLL);
    }

    _underlyingServerPeerConnection = [(BSXPCServiceConnection *)v6[1] _underlyingServerPeerConnection];
  }

  else
  {
    _underlyingServerPeerConnection = [self _xpcConnection];
  }

  v8 = _underlyingServerPeerConnection;
  if (!_underlyingServerPeerConnection)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"could not find underlying xpcConnection"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v28 = v13;
      v29 = 2114;
      v30 = v15;
      v31 = 2048;
      selfCopy2 = self;
      v33 = 2114;
      v34 = @"BSNSXPCTransport.m";
      v35 = 1024;
      v36 = 886;
      v37 = 2114;
      v38 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83EDE4);
  }

  v9 = xpc_connection_copy_bundle_id();
  if (v9)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    free(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end
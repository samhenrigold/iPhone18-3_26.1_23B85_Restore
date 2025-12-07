@interface MCMXPCMessageReplace
- (MCMXPCMessageReplace)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (unsigned)disposition;
@end

@implementation MCMXPCMessageReplace

- (unsigned)disposition
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = MCMXPCMessageReplace;
  disposition = [(MCMXPCMessageBase *)&v6 disposition];
  if (disposition == 1)
  {
    containerIdentityNew = [(MCMXPCMessageReplace *)self containerIdentityNew];
    disposition = [containerIdentityNew disposition];
  }

  return disposition;
}

- (MCMXPCMessageReplace)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v44 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  v39.receiver = self;
  v39.super_class = MCMXPCMessageReplace;
  v10 = [(MCMXPCMessageBase *)&v39 initWithXPCObject:objectCopy context:contextCopy error:error];
  if (!v10)
  {
    goto LABEL_21;
  }

  v38 = 1;
  v11 = xpc_dictionary_get_dictionary(objectCopy, "OldContainer");
  if (v11)
  {
    v12 = container_xpc_decode_container_object();
    if (!v12)
    {
      v29 = container_log_handle_for_category();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        error_description = container_get_error_description();
        *buf = 134218242;
        v41 = v38;
        v42 = 2080;
        v43 = error_description;
        _os_log_error_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_ERROR, "Failed to decode old container; error = (%llu) %s", buf, 0x16u);
      }

      v20 = 0;
      v22 = 0;
      v13 = 0;
      goto LABEL_16;
    }

    v13 = v12;
    v14 = [MCMConcreteContainerIdentityForLibsystem alloc];
    clientIdentity = [contextCopy clientIdentity];
    userIdentity = [clientIdentity userIdentity];
    userIdentityCache = [contextCopy userIdentityCache];
    v18 = [(MCMConcreteContainerIdentityForLibsystem *)v14 initWithLibsystemContainer:v13 defaultUserIdentity:userIdentity userIdentityCache:userIdentityCache error:&v38];
    containerIdentityOld = v10->_containerIdentityOld;
    v10->_containerIdentityOld = v18;
  }

  else
  {
    v13 = 0;
  }

  v20 = xpc_dictionary_get_dictionary(objectCopy, "NewContainer");
  if (v20)
  {
    v21 = container_xpc_decode_container_object();
    if (v21)
    {
      v22 = v21;
      v23 = [MCMConcreteContainerIdentityForLibsystem alloc];
      clientIdentity2 = [contextCopy clientIdentity];
      [clientIdentity2 userIdentity];
      v25 = v37 = error;
      [contextCopy userIdentityCache];
      v26 = v36 = v11;
      v27 = [(MCMConcreteContainerIdentityForLibsystem *)v23 initWithLibsystemContainer:v22 defaultUserIdentity:v25 userIdentityCache:v26 error:&v38];
      containerIdentityNew = v10->_containerIdentityNew;
      v10->_containerIdentityNew = v27;

      v11 = v36;
      error = v37;
    }

    else
    {
      v30 = container_log_handle_for_category();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v33 = v11;
        v34 = v38;
        v35 = container_get_error_description();
        *buf = 134218242;
        v41 = v34;
        v11 = v33;
        v42 = 2080;
        v43 = v35;
        _os_log_error_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_ERROR, "Failed to decode new container; error = (%llu) %s", buf, 0x16u);
      }

      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
    v38 = 38;
  }

LABEL_16:
  MEMORY[0x1E12D3190](v13);
  MEMORY[0x1E12D3190](v22);
  if (v38 != 1)
  {
    if (error)
    {
      *error = v38;
    }

    v10 = 0;
  }

LABEL_21:
  return v10;
}

@end
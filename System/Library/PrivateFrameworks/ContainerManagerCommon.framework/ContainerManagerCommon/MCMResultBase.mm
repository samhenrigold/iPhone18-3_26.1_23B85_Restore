@interface MCMResultBase
- (BOOL)encodeResultOntoReply:(id)reply;
- (MCMResultBase)init;
- (MCMResultBase)initWithError:(id)error;
- (id)_encodeError:(id)error;
- (void)_attachWarnings:(id)warnings;
@end

@implementation MCMResultBase

- (MCMResultBase)init
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = MCMResultBase;
  v2 = [(MCMResultBase *)&v6 init];
  v3 = v2;
  if (v2)
  {
    error = v2->_error;
    v2->_error = 0;

    v3->_cacheable = 1;
  }

  return v3;
}

- (void)_attachWarnings:(id)warnings
{
  p_warnings = &self->_warnings;

  objc_storeStrong(p_warnings, warnings);
}

- (id)_encodeError:(id)error
{
  errorCopy = error;
  v4 = xpc_dictionary_create(0, 0, 0);
  [errorCopy category];
  [errorCopy type];
  path = [errorCopy path];
  [path fileSystemRepresentation];
  [errorCopy POSIXerrno];
  message = [errorCopy message];

  [message UTF8String];
  container_error_create_with_message();

  container_xpc_encode_error();
  container_error_free();

  return v4;
}

- (BOOL)encodeResultOntoReply:(id)reply
{
  v25 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  error = [(MCMResultBase *)self error];

  if (error)
  {
    error2 = [(MCMResultBase *)self error];
    v7 = [(MCMResultBase *)self _encodeError:error2];

    xpc_dictionary_set_value(replyCopy, "ReplyErrorExtended", v7);
  }

  warnings = [(MCMResultBase *)self warnings];
  if (warnings)
  {
    v9 = warnings;
    warnings2 = [(MCMResultBase *)self warnings];
    v11 = [warnings2 count];

    if (v11)
    {
      v12 = xpc_array_create(0, 0);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      warnings3 = [(MCMResultBase *)self warnings];
      v14 = [warnings3 countByEnumeratingWithState:&v21 objects:v20 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v22;
        do
        {
          v17 = 0;
          do
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(warnings3);
            }

            v18 = [(MCMResultBase *)self _encodeError:*(*(&v21 + 1) + 8 * v17)];
            xpc_array_append_value(v12, v18);

            ++v17;
          }

          while (v15 != v17);
          v15 = [warnings3 countByEnumeratingWithState:&v21 objects:v20 count:16];
        }

        while (v15);
      }

      xpc_dictionary_set_value(replyCopy, "ReplyWarnings", v12);
    }
  }

  xpc_dictionary_set_BOOL(replyCopy, "ReplyCacheable", [(MCMResultBase *)self isCacheable]);

  return 1;
}

- (MCMResultBase)initWithError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v16.receiver = self;
  v16.super_class = MCMResultBase;
  v6 = [(MCMResultBase *)&v16 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  if (errorCopy)
  {
    objc_storeStrong(&v6->_error, error);
    warnings = v7->_warnings;
    v7->_warnings = 0;

    v7->_cacheable = 1;
LABEL_4:

    return v7;
  }

  v15 = 0;
  memset(v19, 0, sizeof(v19));
  v10 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  uTF8String = [v13 UTF8String];
  v17 = 136315138;
  v18 = uTF8String;
  _os_log_send_and_compose_impl(v11, &v15, v19, 80, &dword_1DF2C3000, v10, 16, "Unexpected result with nil error; type = [%s].", &v17);

  result = _os_crash_msg();
  __break(1u);
  return result;
}

@end
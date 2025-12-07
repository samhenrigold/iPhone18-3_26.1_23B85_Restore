@interface PKDaemonClient
+ (id)convertToXPC:(id)c version:(unint64_t)version;
- (PKDaemonClient)initWithConnection:(id)connection queue:(id)queue user:(unsigned int)user;
- (PKDaemonClient)initWithServiceName:(const char *)name user:(unsigned int)user;
- (id)convertFromXPC:(id)c;
- (id)errorInReply:(id)reply;
- (id)request:(const char *)request;
- (id)request:(const char *)request paths:(id)paths;
- (void)accessPlugIns:(id)ins synchronously:(BOOL)synchronously flags:(unint64_t)flags reply:(id)reply;
- (void)addPlugIns:(id)ins reply:(id)reply;
- (void)bulkPlugins:(unint64_t)plugins reply:(id)reply;
- (void)bulkSetPluginAnnotations:(id)annotations reply:(id)reply;
- (void)findPlugInByPathURL:(id)l reply:(id)reply;
- (void)findPlugInByUUID:(id)d synchronously:(BOOL)synchronously reply:(id)reply;
- (void)holdPlugins:(id)plugins extensionPointName:(id)name platforms:(id)platforms flags:(unint64_t)flags reply:(id)reply;
- (void)matchPlugIns:(id)ins flags:(unint64_t)flags uuid:(id)uuid reply:(id)reply;
- (void)readyPlugIns:(id)ins synchronously:(BOOL)synchronously flags:(unint64_t)flags environment:(id)environment languages:(id)languages persona:(id)persona sandbox:(id)sandbox reply:(id)self0;
- (void)releaseHold:(id)hold flags:(unint64_t)flags reply:(id)reply;
- (void)removePlugIns:(id)ins reply:(id)reply;
- (void)sendSynchronously:(BOOL)synchronously request:(id)request retry:(BOOL)retry reply:(id)reply;
- (void)set:(id)set plugins:(id)plugins;
- (void)set:(id)set uuids:(id)uuids;
- (void)setPluginAnnotations:(id)annotations annotations:(id)a4 reply:(id)reply;
@end

@implementation PKDaemonClient

- (PKDaemonClient)initWithServiceName:(const char *)name user:(unsigned int)user
{
  v4 = *&user;
  if (name)
  {
    nameCopy = name;
  }

  else
  {
    nameCopy = "com.apple.pluginkit.pkd";
  }

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("pkd_client", v7);

  mach_service = xpc_connection_create_mach_service(nameCopy, v8, 0);
  v10 = [(PKDaemonClient *)self initWithConnection:mach_service queue:v8 user:v4];

  return v10;
}

- (PKDaemonClient)initWithConnection:(id)connection queue:(id)queue user:(unsigned int)user
{
  connectionCopy = connection;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = PKDaemonClient;
  v11 = [(PKDaemonClient *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_replyQueue, queue);
    objc_storeStrong(&v12->_pkd, connection);
    objc_initWeak(&location, v12);
    pkd = v12->_pkd;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = sub_1C68ACFA8;
    v18 = &unk_1E827F9F0;
    objc_copyWeak(&v19, &location);
    xpc_connection_set_event_handler(pkd, &v15);
    if (user)
    {
      xpc_connection_set_target_uid();
    }

    [(PKDaemonClient *)v12 setProtocolVersion:3, v15, v16, v17, v18];
    xpc_connection_resume(v12->_pkd);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (id)errorInReply:(id)reply
{
  replyCopy = reply;
  if (MEMORY[0x1C6960700]() == MEMORY[0x1E69E9E98])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(replyCopy, *MEMORY[0x1E69E9E28])}];
    v7 = 4;
    goto LABEL_6;
  }

  uint64 = xpc_dictionary_get_uint64(replyCopy, "errorcode");
  string = xpc_dictionary_get_string(replyCopy, "error");
  if (uint64)
  {
    if (string)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      v7 = uint64;
LABEL_6:
      v8 = pkError(v7, v6);

      goto LABEL_11;
    }

    v8 = pkError(uint64, @"unknown error returned by PlugInKit subsystem");
  }

  else
  {
    if (string)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"pkd reported error without a code: %s", string}];
    }

    v8 = 0;
  }

LABEL_11:

  return v8;
}

- (void)addPlugIns:(id)ins reply:(id)reply
{
  replyCopy = reply;
  v7 = [(PKDaemonClient *)self request:"add" paths:ins];
  [(PKDaemonClient *)self send:v7 reply:replyCopy];
}

- (void)removePlugIns:(id)ins reply:(id)reply
{
  replyCopy = reply;
  v7 = [(PKDaemonClient *)self request:"remove" paths:ins];
  [(PKDaemonClient *)self send:v7 reply:replyCopy];
}

- (void)bulkPlugins:(unint64_t)plugins reply:(id)reply
{
  replyCopy = reply;
  v7 = [(PKDaemonClient *)self request:"bulk"];
  xpc_dictionary_set_uint64(v7, "flags", plugins);
  [(PKDaemonClient *)self send:v7 reply:replyCopy];
}

- (void)readyPlugIns:(id)ins synchronously:(BOOL)synchronously flags:(unint64_t)flags environment:(id)environment languages:(id)languages persona:(id)persona sandbox:(id)sandbox reply:(id)self0
{
  synchronouslyCopy = synchronously;
  v30 = *MEMORY[0x1E69E9840];
  insCopy = ins;
  environmentCopy = environment;
  languagesCopy = languages;
  personaCopy = persona;
  sandboxCopy = sandbox;
  replyCopy = reply;
  v22 = [(PKDaemonClient *)self request:"ready"];
  xpc_dictionary_set_uint64(v22, "flags", flags);
  if (environmentCopy)
  {
    v23 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v22, "environment", v23);
  }

  if ([languagesCopy count])
  {
    v24 = pklog_handle_for_category(1);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v28 = 138412290;
      v29 = languagesCopy;
      _os_log_impl(&dword_1C6892000, v24, OS_LOG_TYPE_INFO, "Setting app-specific languages: %@", &v28, 0xCu);
    }

    v25 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v22, "preferredlanguages", v25);
  }

  if (personaCopy)
  {
    personaUniqueString = [personaCopy personaUniqueString];

    if (personaUniqueString)
    {
      personaUniqueString2 = [personaCopy personaUniqueString];
      xpc_dictionary_set_string(v22, "persona", [personaUniqueString2 UTF8String]);
    }

    else
    {
      personaUniqueString2 = pklog_handle_for_category(1);
      if (os_log_type_enabled(personaUniqueString2, OS_LOG_TYPE_ERROR))
      {
        sub_1C68B70B4();
      }
    }
  }

  if (sandboxCopy)
  {
    xpc_dictionary_set_string(v22, "sandbox", [sandboxCopy UTF8String]);
  }

  [(PKDaemonClient *)self set:v22 plugins:insCopy];
  [(PKDaemonClient *)self sendSynchronously:synchronouslyCopy request:v22 reply:replyCopy];
}

- (void)accessPlugIns:(id)ins synchronously:(BOOL)synchronously flags:(unint64_t)flags reply:(id)reply
{
  synchronouslyCopy = synchronously;
  replyCopy = reply;
  insCopy = ins;
  v12 = [(PKDaemonClient *)self request:"access"];
  xpc_dictionary_set_uint64(v12, "flags", flags);
  [(PKDaemonClient *)self set:v12 plugins:insCopy];

  [(PKDaemonClient *)self sendSynchronously:synchronouslyCopy request:v12 reply:replyCopy];
}

- (void)findPlugInByUUID:(id)d synchronously:(BOOL)synchronously reply:(id)reply
{
  synchronouslyCopy = synchronously;
  v13 = *MEMORY[0x1E69E9840];
  *uuid = 0;
  v12 = 0;
  replyCopy = reply;
  dCopy = d;
  v10 = [(PKDaemonClient *)self request:"find"];
  [dCopy getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v10, "uuids", uuid);
  [(PKDaemonClient *)self sendSynchronously:synchronouslyCopy request:v10 reply:replyCopy];
}

- (void)findPlugInByPathURL:(id)l reply:(id)reply
{
  replyCopy = reply;
  lCopy = l;
  xdict = [(PKDaemonClient *)self request:"find"];
  absoluteString = [lCopy absoluteString];

  xpc_dictionary_set_string(xdict, "paths", [absoluteString UTF8String]);
  [(PKDaemonClient *)self send:xdict reply:replyCopy];
}

- (void)matchPlugIns:(id)ins flags:(unint64_t)flags uuid:(id)uuid reply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  *uuid = 0;
  v15 = 0;
  replyCopy = reply;
  insCopy = ins;
  [uuid getUUIDBytes:uuid];
  v12 = [(PKDaemonClient *)self request:"match"];
  v13 = _CFXPCCreateXPCObjectFromCFObject();

  xpc_dictionary_set_value(v12, "rules", v13);
  xpc_dictionary_set_uint64(v12, "flags", flags);
  xpc_dictionary_set_uuid(v12, "uuids", uuid);
  [(PKDaemonClient *)self sendSynchronously:(flags >> 10) & 1 request:v12 retry:1 reply:replyCopy];
}

- (void)setPluginAnnotations:(id)annotations annotations:(id)a4 reply:(id)reply
{
  replyCopy = reply;
  v9 = a4;
  annotationsCopy = annotations;
  xdict = [(PKDaemonClient *)self request:"annotate"];
  [(PKDaemonClient *)self set:xdict uuids:annotationsCopy];

  v11 = _CFXPCCreateXPCObjectFromCFObject();
  xpc_dictionary_set_value(xdict, "annotations", v11);
  [(PKDaemonClient *)self send:xdict reply:replyCopy];
}

- (void)bulkSetPluginAnnotations:(id)annotations reply:(id)reply
{
  replyCopy = reply;
  annotationsCopy = annotations;
  xdict = [(PKDaemonClient *)self request:"bulk-annotate"];
  v8 = _CFXPCCreateXPCObjectFromCFObject();

  xpc_dictionary_set_value(xdict, "annotations", v8);
  [(PKDaemonClient *)self send:xdict reply:replyCopy];
}

- (void)holdPlugins:(id)plugins extensionPointName:(id)name platforms:(id)platforms flags:(unint64_t)flags reply:(id)reply
{
  v30 = *MEMORY[0x1E69E9840];
  pluginsCopy = plugins;
  nameCopy = name;
  platformsCopy = platforms;
  replyCopy = reply;
  if (pluginsCopy)
  {
    [(PKDaemonClient *)self request:"lock" paths:pluginsCopy];
  }

  else
  {
    [(PKDaemonClient *)self request:"lock"];
  }
  v16 = ;

  if (nameCopy)
  {
    xpc_dictionary_set_string(v16, "extensionpoint", [nameCopy UTF8String]);
    if ([platformsCopy count])
    {
      selfCopy = self;
      flagsCopy = flags;
      v17 = xpc_array_create(0, 0);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v18 = platformsCopy;
      v19 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v19)
      {
        v20 = *v26;
        do
        {
          v21 = 0;
          if (v19 <= 1)
          {
            v22 = 1;
          }

          else
          {
            v22 = v19;
          }

          do
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(v18);
            }

            xpc_array_set_uint64(v17, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v25 + 1) + 8 * v21++) unsignedLongLongValue]);
          }

          while (v22 != v21);
          v19 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v19);
      }

      xpc_dictionary_set_value(v16, "platforms", v17);
      self = selfCopy;
      flags = flagsCopy;
    }
  }

  xpc_dictionary_set_uint64(v16, "flags", flags);
  [(PKDaemonClient *)self sendSynchronously:(flags >> 3) & 1 request:v16 reply:replyCopy];
}

- (void)releaseHold:(id)hold flags:(unint64_t)flags reply:(id)reply
{
  v12[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  holdCopy = hold;
  v10 = [(PKDaemonClient *)self request:"lock"];
  v12[0] = holdCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  [(PKDaemonClient *)self set:v10 uuids:v11];
  xpc_dictionary_set_uint64(v10, "flags", flags);
  [(PKDaemonClient *)self sendSynchronously:(flags >> 3) & 1 request:v10 reply:replyCopy];
}

- (id)request:(const char *)request
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "request", request);
  xpc_dictionary_set_uint64(v5, "version", [(PKDaemonClient *)self protocolVersion]);

  return v5;
}

- (id)request:(const char *)request paths:(id)paths
{
  pathsCopy = paths;
  v7 = [(PKDaemonClient *)self request:request];
  v8 = _CFXPCCreateXPCObjectFromCFObject();

  xpc_dictionary_set_value(v7, "paths", v8);

  return v7;
}

- (void)sendSynchronously:(BOOL)synchronously request:(id)request retry:(BOOL)retry reply:(id)reply
{
  retryCopy = retry;
  synchronouslyCopy = synchronously;
  v32 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  replyCopy = reply;
  objc_initWeak(&location, self);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1C68AE17C;
  v26[3] = &unk_1E827FA18;
  objc_copyWeak(&v28, &location);
  v12 = replyCopy;
  v27 = v12;
  v13 = MEMORY[0x1C6960190](v26);
  if (synchronouslyCopy)
  {
    v14 = xpc_connection_send_message_with_reply_sync(self->_pkd, requestCopy);
    v15 = MEMORY[0x1E69E9E18];
    if (v14 == MEMORY[0x1E69E9E18] && retryCopy)
    {
      uint64 = xpc_dictionary_get_uint64(requestCopy, "flags");
      xpc_dictionary_set_uint64(requestCopy, "flags", uint64 & 0xFFFFFFFFFFFF7FFFLL);
      v17 = 1;
      while (1)
      {
        v18 = pklog_handle_for_category(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy = self;
          _os_log_error_impl(&dword_1C6892000, v18, OS_LOG_TYPE_ERROR, "%@: retrying sync request", buf, 0xCu);
        }

        v14 = xpc_connection_send_message_with_reply_sync(self->_pkd, requestCopy);
        if (v14 != v15)
        {
          break;
        }

        if (--v17)
        {
          v14 = v15;
          break;
        }
      }
    }

    (v13)[2](v13, v14);
  }

  else
  {
    pkd = self->_pkd;
    replyQueue = self->_replyQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1C68AE224;
    handler[3] = &unk_1E827FA68;
    objc_copyWeak(&v24, &location);
    v25 = retryCopy;
    v22 = requestCopy;
    v23 = v13;
    xpc_connection_send_message_with_reply(pkd, v22, replyQueue, handler);

    objc_destroyWeak(&v24);
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)set:(id)set plugins:(id)plugins
{
  pluginsCopy = plugins;
  setCopy = set;
  v7 = xpc_array_create(0, 0);
  v8 = xpc_array_create(0, 0);
  v9 = xpc_array_create(0, 0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1C68AE544;
  v13[3] = &unk_1E827FA90;
  v14 = v8;
  v15 = v7;
  v16 = v9;
  v10 = v9;
  v11 = v7;
  v12 = v8;
  [pluginsCopy enumerateObjectsUsingBlock:v13];

  xpc_dictionary_set_value(setCopy, "uuids", v12);
  xpc_dictionary_set_value(setCopy, "paths", v11);
  xpc_dictionary_set_value(setCopy, "oneshotuuids", v10);
}

- (void)set:(id)set uuids:(id)uuids
{
  v21 = *MEMORY[0x1E69E9840];
  setCopy = set;
  uuidsCopy = uuids;
  v7 = xpc_array_create(0, 0);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = uuidsCopy;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      v11 = 0;
      if (v9 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v9;
      }

      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v11);
        *uuid = 0;
        v19 = 0;
        [v13 getUUIDBytes:{uuid, v14}];
        xpc_array_set_uuid(v7, 0xFFFFFFFFFFFFFFFFLL, uuid);
        ++v11;
      }

      while (v12 != v11);
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v9);
  }

  xpc_dictionary_set_value(setCopy, "uuids", v7);
}

+ (id)convertToXPC:(id)c version:(unint64_t)version
{
  if (version == 3)
  {
    v5 = _CFXPCCreateXPCMessageWithCFObject();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)convertFromXPC:(id)c
{
  cCopy = c;
  if ([(PKDaemonClient *)self protocolVersion]== 3)
  {
    v5 = _CFXPCCreateCFObjectFromXPCMessage();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
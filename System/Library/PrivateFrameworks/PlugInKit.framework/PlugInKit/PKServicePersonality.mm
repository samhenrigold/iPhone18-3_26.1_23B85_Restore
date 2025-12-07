@interface PKServicePersonality
- (NSString)description;
- (PKServicePersonality)initWithConnection:(id)connection service:(id)service;
- (double)cleanExitTimeout;
- (id)defaultPrincipalObject;
- (id)findProtocol:(id)protocol;
- (id)setupWithIdentifier:(id)identifier extensionPointPlatform:(unsigned int)platform;
- (void)beginUsingPlugIn:(id)in ready:(id)ready;
- (void)hostHasControl;
- (void)prefsObjectForKey:(id)key inPlugIn:(id)in result:(id)result;
- (void)prefsSetObject:(id)object forKey:(id)key inPlugIn:(id)in result:(id)result;
- (void)prepareUsing:(id)using reply:(id)reply;
- (void)prepareUsingPlugIn:(id)in hostProtocol:(id)protocol reply:(id)reply;
- (void)shutdownPlugIn;
@end

@implementation PKServicePersonality

- (void)shutdownPlugIn
{
  v17 = *MEMORY[0x1E69E9840];
  service = [(PKServicePersonality *)self service];
  v4 = [service unregisterPersonality:self];

  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    service2 = [(PKServicePersonality *)self service];
    subsystems = [service2 subsystems];

    v7 = [subsystems countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        v9 = 0;
        if (v7 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v7;
        }

        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(subsystems);
          }

          v11 = *(*(&v12 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v11 endUsing:self];
          }

          ++v9;
        }

        while (v10 != v9);
        v7 = [subsystems countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [(PKServicePersonality *)self setPlugInPrincipal:0];
    [(PKServicePersonality *)self setEmbeddedPrincipal:0];
    [(PKServicePersonality *)self setHostPrincipal:0];
  }
}

- (id)defaultPrincipalObject
{
  principalSpec = [(PKPlugInCore *)self principalSpec];
  v4 = principalSpec;
  if (!principalSpec)
  {
    v7 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B69CC(self);
    }

    goto LABEL_10;
  }

  Class = objc_getClass([principalSpec UTF8String]);
  if (!Class)
  {
    v7 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B6918();
    }

LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v6 = objc_alloc_init(Class);
  if (v6)
  {
    goto LABEL_12;
  }

  v7 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1C68B6864();
  }

LABEL_11:

LABEL_12:

  return v6;
}

- (void)hostHasControl
{
  service = [(PKServicePersonality *)self service];
  [service beganUsingServicePersonality:self];
}

- (PKServicePersonality)initWithConnection:(id)connection service:(id)service
{
  connectionCopy = connection;
  serviceCopy = service;
  external = [serviceCopy external];
  v28.receiver = self;
  v28.super_class = PKServicePersonality;
  v9 = [(PKPlugInCore *)&v28 initWithExternalProviders:external];

  if (v9)
  {
    objc_storeStrong(&v9->_service, service);
    [(PKServicePersonality *)v9 setConnection:connectionCopy];
    connection = [(PKServicePersonality *)v9 connection];
    [connection setExportedObject:v9];

    v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4647D88];
    connection2 = [(PKServicePersonality *)v9 connection];
    [connection2 setExportedInterface:v11];

    v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F464CEA8];
    connection3 = [(PKServicePersonality *)v9 connection];
    [connection3 setRemoteObjectInterface:v13];

    objc_initWeak(&location, v9);
    objc_initWeak(&from, v9->_connection);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1C68A8F58;
    v23[3] = &unk_1E827F938;
    objc_copyWeak(&v24, &location);
    objc_copyWeak(&v25, &from);
    connection4 = [(PKServicePersonality *)v9 connection];
    [connection4 setInterruptionHandler:v23];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1C68A9090;
    v19[3] = &unk_1E827F960;
    objc_copyWeak(&v21, &location);
    objc_copyWeak(&v22, &from);
    v20 = serviceCopy;
    connection5 = [(PKServicePersonality *)v9 connection];
    [connection5 setInvalidationHandler:v19];

    connection6 = [(PKServicePersonality *)v9 connection];
    [connection6 resume];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (id)setupWithIdentifier:(id)identifier extensionPointPlatform:(unsigned int)platform
{
  v4 = *&platform;
  identifierCopy = identifier;
  external = [(PKPlugInCore *)self external];
  filesystem = [external filesystem];
  mainBundle = [filesystem mainBundle];

  infoDictionary = [mainBundle infoDictionary];
  v12 = v11 = infoDictionary;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  bundleURL = [mainBundle bundleURL];
  LOBYTE(v4) = [(PKPlugInCore *)self setupWithName:identifierCopy extensionPointPlatform:v4 url:bundleURL bundleInfo:v12 uuid:0 discoveryInstanceUUID:0 extensionPointCache:dictionary];

  if (v4)
  {
    service = [(PKServicePersonality *)self service];
    [service registerPersonality:self];

    v16 = [[PKServiceDefaults alloc] initWithPersonality:self];
    [(PKServicePersonality *)self setPreferences:v16];
    v17 = 0;
  }

  else
  {
    bundleIdentifier = [mainBundle bundleIdentifier];
    v17 = pkErrorf(4, @"failed to initialize personality %@ for pluginkit plugin %@", v18, v19, v20, v21, v22, v23, identifierCopy);

    v16 = pklog_handle_for_category(7);
    if (os_log_type_enabled(&v16->super.super, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B64CC();
    }
  }

  return v17;
}

- (void)prepareUsing:(id)using reply:(id)reply
{
  v118 = *MEMORY[0x1E69E9840];
  usingCopy = using;
  replyCopy = reply;
  v7 = pklog_handle_for_category(7);
  v8 = os_signpost_id_make_with_pointer(v7, usingCopy);

  v9 = pklog_handle_for_category(7);
  v10 = v9;
  spid = v8;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ExtensionPrepareUsing", &unk_1C68BDED5, buf, 2u);
  }

  v12 = [usingCopy objectForKeyedSubscript:@"identifier"];
  v13 = [usingCopy objectForKeyedSubscript:@"hostProtocol"];
  v69 = [usingCopy objectForKeyedSubscript:@"epPlatform"];
  unsignedIntValue = [v69 unsignedIntValue];
  v14 = [usingCopy objectForKeyedSubscript:@"isRBManaged"];
  bOOLValue = [v14 BOOLValue];
  v16 = [usingCopy objectForKeyedSubscript:@"version"];
  -[PKPlugInCore setHubProtocolVersion:](self, "setHubProtocolVersion:", [v16 unsignedIntegerValue]);

  if (![(PKPlugInCore *)self hubProtocolVersion])
  {
    [(PKPlugInCore *)self setHubProtocolVersion:1];
  }

  [(PKPlugInCore *)self setIsRBManaged:bOOLValue];
  v17 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = "will not";
    if (bOOLValue)
    {
      v18 = "will";
    }

    *buf = 138412546;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = v18;
    _os_log_impl(&dword_1C6892000, v17, OS_LOG_TYPE_INFO, "%@: %s be managed by runningboard", buf, 0x16u);
  }

  v19 = objc_alloc(MEMORY[0x1E696AFB0]);
  v20 = [usingCopy objectForKeyedSubscript:@"uuid"];
  v21 = [v19 initWithUUIDString:v20];

  if (v21)
  {
    [(PKPlugInCore *)self setUuid:v21];
  }

  v116 = 0u;
  memset(v117, 0, sizeof(v117));
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v99 = 0u;
  memset(buf, 0, sizeof(buf));
  v79 = 0;
  v80 = 0;
  current_persona = voucher_get_current_persona();
  v23 = current_persona;
  memset(buf, 0, sizeof(buf));
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  memset(v117, 0, sizeof(v117));
  *buf = 1;
  pklog_get_persona_type_and_name(current_persona, buf, &v80, &v79);
  v24 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v70 = v21;
    uuid = [(PKPlugInCore *)self uuid];
    [(PKPlugInCore *)self identifier];
    v26 = v65 = replyCopy;
    [(PKPlugInCore *)self version];
    v27 = v62 = v14;
    v28 = geteuid();
    v29 = getuid();
    *v82 = 138545154;
    v83 = uuid;
    v84 = 2112;
    v85 = v26;
    v86 = 2112;
    v87 = v27;
    v88 = 1024;
    v89 = v28;
    v21 = v70;
    v90 = 1024;
    v91 = v29;
    v92 = 1024;
    v93 = v23;
    v94 = 2080;
    v95 = v80;
    v96 = 2080;
    v97 = v79;
    _os_log_impl(&dword_1C6892000, v24, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] Prepare received as euid = %d, uid = %d, personaid = %d, type = %s, name = %s", v82, 0x46u);

    v14 = v62;
    replyCopy = v65;
  }

  selfCopy2 = self;
  v31 = [(PKServicePersonality *)self setupWithIdentifier:v12 extensionPointPlatform:unsignedIntValue];
  if (v31)
  {
    v32 = v31;
    v33 = pklog_handle_for_category(7);
    v34 = v33;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      code = [v32 code];
      *buf = 67240448;
      *&buf[8] = 2050;
      *&buf[10] = code;
      _os_signpost_emit_with_name_impl(&dword_1C6892000, v34, OS_SIGNPOST_INTERVAL_END, spid, "ExtensionPrepareUsing", " success=%{public, signpost.description:attribute}d  error=%{public, signpost.description:attribute}llu ", buf, 0x12u);
    }

    replyCopy[2](replyCopy, v32, 0);
    v36 = v69;
  }

  else
  {
    v61 = usingCopy;
    v64 = v12;
    v66 = replyCopy;
    v63 = v14;
    v71 = v21;
    if (v13)
    {
      v78 = 0;
      v37 = sub_1C68960F0(v13, &v78);
      v38 = v78;
      v68 = v38;
      if (v37)
      {
        localizedDescription = [MEMORY[0x1E696B0D0] interfaceWithProtocol:v37];
        connection = [(PKServicePersonality *)self connection];
        exportedInterface = [connection exportedInterface];
        [exportedInterface setInterface:localizedDescription forSelector:sel_beginUsingPlugIn_ready_ argumentIndex:0 ofReply:0];
      }

      else
      {
        v42 = MEMORY[0x1E695DF30];
        v43 = *MEMORY[0x1E695D930];
        localizedDescription = [v38 localizedDescription];
        [v42 raise:v43 format:{@"%@", localizedDescription}];
      }

      selfCopy2 = self;
    }

    else
    {
      v68 = 0;
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    service = [(PKServicePersonality *)selfCopy2 service];
    subsystems = [service subsystems];

    v46 = [subsystems countByEnumeratingWithState:&v74 objects:v81 count:16];
    if (v46)
    {
      v47 = *v75;
      do
      {
        v48 = 0;
        if (v46 <= 1)
        {
          v49 = 1;
        }

        else
        {
          v49 = v46;
        }

        do
        {
          if (*v75 != v47)
          {
            objc_enumerationMutation(subsystems);
          }

          v50 = *(*(&v74 + 1) + 8 * v48);
          if (objc_opt_respondsToSelector())
          {
            v51 = objc_opt_class();
            v52 = NSStringFromClass(v51);
            v53 = pklog_handle_for_category(7);
            v54 = v53;
            if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
            {
              *buf = 138543618;
              *&buf[4] = v71;
              *&buf[12] = 2114;
              *&buf[14] = v52;
              _os_signpost_emit_with_name_impl(&dword_1C6892000, v54, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ExtensionSubsystemBeginUsing", " uuid=%{public, signpost.description:attribute}@  name=%{public, signpost.description:attribute}@ ", buf, 0x16u);
            }

            mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
            __PLUGINKIT_CALLING_OUT_TO_CLIENT_SUBSYSTEM_FOR_BEGINUSING__(v50);

            v56 = pklog_handle_for_category(7);
            v57 = v56;
            if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C6892000, v57, OS_SIGNPOST_INTERVAL_END, spid, "ExtensionSubsystemBeginUsing", &unk_1C68BDED5, buf, 2u);
            }
          }

          ++v48;
        }

        while (v49 != v48);
        v46 = [subsystems countByEnumeratingWithState:&v74 objects:v81 count:16];
      }

      while (v46);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v59 = pklog_handle_for_category(7);
    v60 = v59;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
    {
      *buf = 0x104020200;
      *&buf[8] = 2050;
      *&buf[10] = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6892000, v60, OS_SIGNPOST_INTERVAL_END, spid, "ExtensionPrepareUsing", " success=%{public, signpost.description:attribute}d  error=%{public, signpost.description:attribute}llu ", buf, 0x12u);
    }

    replyCopy = v66;
    (v66)[2](v66, 0, dictionary);

    usingCopy = v61;
    v14 = v63;
    v12 = v64;
    v36 = v69;
    v21 = v71;
    v32 = v68;
  }
}

- (void)prepareUsingPlugIn:(id)in hostProtocol:(id)protocol reply:(id)reply
{
  protocolCopy = protocol;
  replyCopy = reply;
  v10 = MEMORY[0x1E695DF90];
  inCopy = in;
  dictionary = [v10 dictionary];
  [dictionary setObject:inCopy forKeyedSubscript:@"identifier"];

  if (protocolCopy)
  {
    [dictionary setObject:protocolCopy forKeyedSubscript:@"hostProtocol"];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1C68A9E10;
  v14[3] = &unk_1E827F988;
  v14[4] = self;
  v15 = replyCopy;
  v13 = replyCopy;
  [(PKServicePersonality *)self prepareUsing:dictionary reply:v14];
}

- (void)beginUsingPlugIn:(id)in ready:(id)ready
{
  v50 = *MEMORY[0x1E69E9840];
  inCopy = in;
  readyCopy = ready;
  v31 = 0;
  v32 = 0;
  current_persona = voucher_get_current_persona();
  v12 = current_persona;
  memset(v49, 0, 348);
  LODWORD(v49[0]) = 1;
  pklog_get_persona_type_and_name(current_persona, v49, &v32, &v31);
  v13 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(PKPlugInCore *)self uuid];
    identifier = [(PKPlugInCore *)self identifier];
    version = [(PKPlugInCore *)self version];
    v15 = geteuid();
    v16 = getuid();
    *buf = 138545154;
    v34 = uuid;
    v35 = 2112;
    v36 = identifier;
    v37 = 2112;
    v38 = version;
    v39 = 1024;
    v40 = v15;
    v41 = 1024;
    v42 = v16;
    v43 = 1024;
    v44 = v12;
    v45 = 2080;
    v46 = v32;
    v47 = 2080;
    v48 = v31;
    _os_log_impl(&dword_1C6892000, v13, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] Begin using received as euid = %d, uid = %d, personaid = %d, type = %s, name = %s", buf, 0x46u);
  }

  service = [(PKServicePersonality *)self service];
  delegate = [service delegate];
  if (delegate)
  {
    identifier = [(PKServicePersonality *)self service];
    version = [identifier delegate];
    identifier2 = [(PKPlugInCore *)self identifier];
    [version rootObjectForPlugIn:identifier2];
  }

  else
  {
    [(PKServicePersonality *)self defaultPrincipalObject];
  }
  v19 = ;
  v20 = v19;
  if (delegate)
  {

    v19 = identifier;
  }

  if (v20)
  {
    [(PKServicePersonality *)self setPlugInPrincipal:v20];
    v21 = MEMORY[0x1E696B0D0];
    protocolSpec = [(PKPlugInCore *)self protocolSpec];
    v23 = [(PKServicePersonality *)self findProtocol:protocolSpec];
    service3 = [v21 interfaceWithProtocol:v23];

    connection = [(PKServicePersonality *)self connection];
    exportedInterface = [connection exportedInterface];
    [exportedInterface setInterface:service3 forSelector:sel_beginUsingPlugIn_ready_ argumentIndex:1 ofReply:1];

    v27 = [(PKPlugInCore *)self augmentInterface:service3];
    if (v27)
    {
      v28 = pklog_handle_for_category(7);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1C68B6644();
      }

      (*(readyCopy + 2))(readyCopy, 0, 0);
      service2 = [(PKServicePersonality *)self service];
      [service2 beganUsingServicePersonality:self];
    }

    else
    {
      [(PKServicePersonality *)self setHostPrincipal:inCopy];
      service2 = [(PKServicePersonality *)self plugInPrincipal];
      (*(readyCopy + 2))(readyCopy, 0, service2);
    }
  }

  else
  {
    v30 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B66FC(self);
    }

    (*(readyCopy + 2))(readyCopy, 0, 0);
    service3 = [(PKServicePersonality *)self service];
    [service3 beganUsingServicePersonality:self];
  }
}

- (id)findProtocol:(id)protocol
{
  v29 = *MEMORY[0x1E69E9840];
  protocolCopy = protocol;
  v5 = protocolCopy;
  if (protocolCopy)
  {
    v18 = 0;
    v6 = sub_1C6895D90(protocolCopy, &v18);
    v7 = v18;
    if (!v6)
    {
      v8 = pklog_handle_for_category(7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        uuid = [(PKPlugInCore *)self uuid];
        identifier = [(PKPlugInCore *)self identifier];
        version = [(PKPlugInCore *)self version];
        localizedDescription = [v7 localizedDescription];
        *buf = 138544386;
        v20 = uuid;
        v21 = 2112;
        v22 = identifier;
        v23 = 2112;
        v24 = version;
        v25 = 2112;
        v26 = v5;
        v27 = 2112;
        v28 = localizedDescription;
        _os_log_error_impl(&dword_1C6892000, v8, OS_LOG_TYPE_ERROR, "[u %{public}@] [%@(%@)] failed to find protocol for [%@]: %@", buf, 0x34u);
      }

      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D930];
      localizedDescription2 = [v7 localizedDescription];
      [v9 raise:v10 format:{@"unable to start plug-in: %@", localizedDescription2}];
    }
  }

  else
  {
    v12 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B67B0(self);
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"missing protocol specification in Info.plist"];
    v6 = 0;
  }

  return v6;
}

- (double)cleanExitTimeout
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(PKPlugInCore *)self isRBManaged])
  {
    v3 = -1.0;
  }

  else
  {
    v3 = 15.0;
  }

  v4 = [(PKPlugInCore *)self pluginKey:@"CleanTimeout"];
  v5 = pklog_handle_for_category(7);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      uuid = [(PKPlugInCore *)self uuid];
      identifier = [(PKPlugInCore *)self identifier];
      version = [(PKPlugInCore *)self version];
      v15 = 138544130;
      v16 = uuid;
      v17 = 2112;
      v18 = identifier;
      v19 = 2112;
      v20 = version;
      v21 = 2112;
      v22 = *&v4;
      _os_log_impl(&dword_1C6892000, v5, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] got CleanExit value:%@", &v15, 0x2Au);
    }

    [v4 doubleValue];
    v3 = v10;
  }

  else
  {
    if (v6)
    {
      uuid2 = [(PKPlugInCore *)self uuid];
      identifier2 = [(PKPlugInCore *)self identifier];
      version2 = [(PKPlugInCore *)self version];
      v15 = 138544130;
      v16 = uuid2;
      v17 = 2112;
      v18 = identifier2;
      v19 = 2112;
      v20 = version2;
      v21 = 2048;
      v22 = v3;
      _os_log_impl(&dword_1C6892000, v5, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] setting delta:%g", &v15, 0x2Au);
    }
  }

  return v3;
}

- (void)prefsObjectForKey:(id)key inPlugIn:(id)in result:(id)result
{
  resultCopy = result;
  keyCopy = key;
  preferences = [(PKServicePersonality *)self preferences];
  v10 = [preferences objectForKey:keyCopy];

  resultCopy[2](resultCopy, v10);
}

- (void)prefsSetObject:(id)object forKey:(id)key inPlugIn:(id)in result:(id)result
{
  resultCopy = result;
  keyCopy = key;
  objectCopy = object;
  preferences = [(PKServicePersonality *)self preferences];
  [preferences setObject:objectCopy forKey:keyCopy];

  resultCopy[2]();
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKServicePersonality;
  v4 = [(PKPlugInCore *)&v8 description];
  connection = [(PKServicePersonality *)self connection];
  v6 = [v3 stringWithFormat:@"<PKServicePersonality: %p core = %@, host pid = %d>", self, v4, objc_msgSend(connection, "processIdentifier")];;

  return v6;
}

@end
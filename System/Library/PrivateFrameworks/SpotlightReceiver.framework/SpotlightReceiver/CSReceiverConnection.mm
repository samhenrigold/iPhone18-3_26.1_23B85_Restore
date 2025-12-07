@interface CSReceiverConnection
- (BOOL)addClientConnectionIfAllowedForConnection:(id)connection;
- (BOOL)enableDebuggability;
- (BOOL)handleCommand:(const char *)command info:(id)info connection:(id)connection;
- (CSReceiverConnection)initWithReceiver:(id)receiver forServiceName:(id)name;
- (CSReceiverConnection)initWithScheduledReceiver:(id)receiver forServiceName:(id)name;
- (id)fetchableIdentifiersFromDonation:(id)donation additionalAttributes:(id)attributes config:(id)config;
- (id)indexForBundleID:(id)d protectionClass:(id)class;
- (int)addInteraction:(id)interaction bundleID:(id)d protectionClass:(id)class;
- (int)addUserActions:(id)actions bundleID:(id)d protectionClass:(id)class;
- (int)deleteFromBundle:(id)bundle sinceDate:(id)date domains:(id)domains deletes:(id)deletes;
- (int)handleSetup:(id)setup;
- (int)indexFromBundle:(id)bundle protectionClass:(id)class items:(id)items itemsContent:(id)content;
- (void)addConfiguration:(id)configuration;
- (void)deleteWithFd:(int)fd offset:(unint64_t)offset size:(unint64_t)size donation:(id)donation completionHandler:(id)handler;
- (void)indexWithFd:(int)fd offset:(unint64_t)offset size:(unint64_t)size donation:(id)donation additionalAttributes:(id)attributes config:(id)config completionHandler:(id)handler;
@end

@implementation CSReceiverConnection

- (CSReceiverConnection)initWithReceiver:(id)receiver forServiceName:(id)name
{
  receiverCopy = receiver;
  v15.receiver = self;
  v15.super_class = CSReceiverConnection;
  v8 = [(CSXPCConnection *)&v15 initMachServiceListenerWithName:name];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_41;
  }

  objc_storeStrong(v8 + 10, receiver);
  if (objc_opt_respondsToSelector())
  {
    supportedBundleIDs = [(SpotlightReceiver *)v9->_receiver supportedBundleIDs];
    [(CSReceiverConnection *)v9 setBundleIDs:supportedBundleIDs];
  }

  if (objc_opt_respondsToSelector())
  {
    supportedContentTypes = [(SpotlightReceiver *)v9->_receiver supportedContentTypes];
    [(CSReceiverConnection *)v9 setContentTypes:supportedContentTypes];
  }

  if (objc_opt_respondsToSelector())
  {
    supportedINIntentClassNames = [(SpotlightReceiver *)v9->_receiver supportedINIntentClassNames];
    [(CSReceiverConnection *)v9 setINIntentClassNames:supportedINIntentClassNames];
  }

  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 1u;
  }

  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 2u;
  }

  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 4u;
  }

  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 8u;
  }

  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 0x10u;
  }

  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 0x20u;
  }

  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 0x40u;
  }

  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 0x1000u;
  }

  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 0x2000u;
  }

  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 0x80u;
  }

  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 0x100u;
  }

  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 0x200u;
  }

  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 0x400u;
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = 2048;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_39;
    }

    v13 = 0x4000;
  }

  v9->_supportedJobs |= v13;
LABEL_39:
  if ([(SpotlightReceiver *)v9->_receiver conformsToProtocol:&unk_284827A00])
  {
    v9->_supportedJobs |= 0x100000u;
  }

LABEL_41:

  return v9;
}

- (CSReceiverConnection)initWithScheduledReceiver:(id)receiver forServiceName:(id)name
{
  v39 = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  nameCopy = name;
  v37.receiver = self;
  v37.super_class = CSReceiverConnection;
  v9 = [(CSXPCConnection *)&v37 initMachServiceListenerWithName:nameCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 11, receiver);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    indexes = v10->_indexes;
    v10->_indexes = v11;

    v10->_lock._os_unfair_lock_opaque = 0;
    if (objc_opt_respondsToSelector())
    {
      v10->_supportedJobs |= 0x20000u;
    }

    if (objc_opt_respondsToSelector())
    {
      v10->_supportedJobs |= 0x40000u;
    }

    if (objc_opt_respondsToSelector())
    {
      v10->_supportedJobs |= 0x80000u;
    }

    v13 = getScheduledReceiverConfigPathForService_onceToken;
    v14 = nameCopy;
    if (v13 != -1)
    {
      [CSReceiverConnection initWithScheduledReceiver:forServiceName:];
    }

    v15 = [getScheduledReceiverConfigPathForService_sReceiverConfigs objectForKeyedSubscript:v14];

    if (v15)
    {
      v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15];
      if (v16)
      {
        v36 = 0;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v16 error:&v36];
        v18 = v36;
        if (v17)
        {
          v19 = [v17 objectForKeyedSubscript:@"configs"];
          if (v19)
          {
            v20 = v19;
            v21 = [v17 objectForKeyedSubscript:@"configs"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v30 = v18;
              v31 = v15;
              v23 = [v17 objectForKeyedSubscript:@"configs"];
              v32 = 0u;
              v33 = 0u;
              v34 = 0u;
              v35 = 0u;
              v24 = [v23 countByEnumeratingWithState:&v32 objects:v38 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v33;
                do
                {
                  for (i = 0; i != v25; ++i)
                  {
                    if (*v33 != v26)
                    {
                      objc_enumerationMutation(v23);
                    }

                    v28 = [[SpotlightScheduledReceiverConfig alloc] initWithConfigurationValues:*(*(&v32 + 1) + 8 * i)];
                    [(CSReceiverConnection *)v10 addConfiguration:v28];
                  }

                  v25 = [v23 countByEnumeratingWithState:&v32 objects:v38 count:16];
                }

                while (v25);
              }

              v15 = v31;
              v18 = v30;
            }
          }
        }
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
      v16 = 0;
    }
  }

  return v10;
}

- (void)addConfiguration:(id)configuration
{
  v19 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = configurationCopy;
  configs = self->_configs;
  if (!configs || ([configurationCopy name], v7 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](configs, "objectForKeyedSubscript:", v7), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v9 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v5;
      _os_log_impl(&dword_232D5E000, v9, OS_LOG_TYPE_DEFAULT, "### RECEIVER adding config %@", &v17, 0xCu);
    }

    v10 = self->_configs;
    if (!v10)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v12 = self->_configs;
      self->_configs = v11;

      v10 = self->_configs;
    }

    identifier = [v5 identifier];
    v14 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:identifier];

    if (!v14)
    {
      v15 = self->_configs;
      identifier2 = [v5 identifier];
      [(NSMutableDictionary *)v15 setObject:v5 forKey:identifier2];
    }

    if (objc_opt_respondsToSelector())
    {
      self->_supportedJobs |= 0x8000u;
      if (([v5 needsDeletes] & 1) != 0 || objc_msgSend(v5, "supportsDeletes"))
      {
        self->_supportedJobs |= 0x10000u;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      self->_supportedJobs |= 0x8000u;
    }
  }
}

- (BOOL)addClientConnectionIfAllowedForConnection:(id)connection
{
  v14 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  pid = xpc_connection_get_pid(connectionCopy);
  xpc_connection_get_audit_token();

  v5 = *MEMORY[0x277CBECE8];
  memset(&token, 0, sizeof(token));
  v6 = SecTaskCreateWithAuditToken(v5, &token);
  if (v6)
  {
    v7 = v6;
    v8 = SecTaskCopyValueForEntitlement(v6, SpotlightSenderEntitlement, 0);
    bOOLValue = [v8 BOOLValue];
    v10 = logForCSLogCategoryDefault();
    v11 = v10;
    if (bOOLValue)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        token.val[0] = 67109120;
        token.val[1] = pid;
        _os_log_impl(&dword_232D5E000, v11, OS_LOG_TYPE_INFO, "New sender connection for pid: %d", &token, 8u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CSReceiverConnection addClientConnectionIfAllowedForConnection:];
    }

    CFRelease(v7);
  }

  else
  {
    LOBYTE(bOOLValue) = 0;
  }

  return bOOLValue;
}

- (BOOL)handleCommand:(const char *)command info:(id)info connection:(id)connection
{
  v141 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  connectionCopy = connection;
  reply = xpc_dictionary_create_reply(infoCopy);
  euid = xpc_connection_get_euid(connectionCopy);
  if (euid)
  {
    queue = [(CSXPCConnection *)self queue];
    dispatch_queue_set_specific(queue, SpotlightReceiverConnectionUIDKey, euid, 0);

    v13 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      commandCopy = command;
      v137 = 1024;
      v138 = euid;
      v139 = 2048;
      v140 = infoCopy;
      _os_log_debug_impl(&dword_232D5E000, v13, OS_LOG_TYPE_DEBUG, "receiver command %s cuid: %d info:%p", buf, 0x1Cu);
    }
  }

  v14 = *command;
  if (v14 == 106)
  {
    if (command[1])
    {
      goto LABEL_11;
    }

    uint64 = xpc_dictionary_get_uint64(infoCopy, "jt");
    if ((uint64 & self->_supportedJobs) == 0)
    {
      v28 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [CSReceiverConnection handleCommand:&self->_supportedJobs info:v28 connection:?];
      }

      scheduledReceiver = [(CSReceiverConnection *)self scheduledReceiver];

      queue3 = 0;
      v17 = 0;
      v18 = 0;
      if (scheduledReceiver)
      {
        v15 = 2;
      }

      else
      {
        v15 = -1;
      }

      goto LABEL_60;
    }

    queue3 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:infoCopy];
    if (!queue3)
    {
      scheduledReceiver2 = [(CSReceiverConnection *)self scheduledReceiver];
      v21 = scheduledReceiver2 == 0;

      if (v21)
      {
        v35 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [CSReceiverConnection handleCommand:info:connection:];
        }

        goto LABEL_57;
      }
    }

    v17 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:infoCopy];
    if (uint64 <= 1023)
    {
      if (uint64 <= 127)
      {
        if ((uint64 - 2) > 0x3E)
        {
LABEL_97:
          if (!uint64)
          {
            goto LABEL_58;
          }

          if (uint64 == 1)
          {
            v52 = [MEMORY[0x277CC3510] dataWrapperForKey:"i" sizeKey:"i-size" fromXPCDictionary:infoCopy];
            v53 = [MEMORY[0x277CC3510] dataWrapperForKey:"c" sizeKey:"c-size" fromXPCDictionary:infoCopy];
            v15 = [(CSReceiverConnection *)self indexFromBundle:queue3 protectionClass:v17 items:v52 itemsContent:v53];
            v54 = objc_opt_self();
            v55 = objc_opt_self();

            goto LABEL_9;
          }

          goto LABEL_132;
        }

        if (((1 << (uint64 - 2)) & 0x4045) != 0)
        {
          v121 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:infoCopy];
          if (uint64 == 16)
          {
            date = xpc_dictionary_get_date(infoCopy, "d");
            if (date)
            {
              v87 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:date];
              v27 = 0;
              v26 = 0;
              v88 = v87;
LABEL_146:
              v118 = v88;
              v89 = v27;
              v90 = v26;
              v15 = [CSReceiverConnection deleteFromBundle:"deleteFromBundle:sinceDate:domains:deletes:" sinceDate:queue3 domains:? deletes:?];

              v91 = v118;
LABEL_168:

              goto LABEL_9;
            }

            v92 = logForCSLogCategoryDefault();
            v91 = v92;
            if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
            {
              [CSReceiverConnection handleCommand:info:connection:];
              goto LABEL_166;
            }

            goto LABEL_167;
          }

          if (uint64 != 4)
          {
            if (uint64 == 2)
            {
              if (v121)
              {
                v22 = objc_alloc(MEMORY[0x277CC33C8]);
                data = [v121 data];
                v24 = [v22 initWithData:data];

                if (v24 && (objc_msgSend_obj(v24), _MDPlistGetPlistObjectType() == 240) && (objc_msgSend_obj(v24), _MDPlistArrayGetCount()))
                {
                  objc_msgSend_obj(v24);
                  v25 = _MDPlistContainerCopyObject();

                  if (v25)
                  {
                    v26 = v25;
                    v27 = 0;
LABEL_145:
                    v88 = 0;
                    goto LABEL_146;
                  }
                }

                else
                {
                }
              }

              v92 = logForCSLogCategoryDefault();
              v91 = v92;
              if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
              {
                [CSReceiverConnection handleCommand:info:connection:];
                goto LABEL_166;
              }

              goto LABEL_167;
            }

            v27 = 0;
LABEL_144:
            v26 = 0;
            goto LABEL_145;
          }

          if (v121)
          {
            v82 = objc_alloc(MEMORY[0x277CC33C8]);
            data2 = [v121 data];
            v84 = [v82 initWithData:data2];

            if (v84 && (objc_msgSend_obj(v84), _MDPlistGetPlistObjectType() == 240) && (objc_msgSend_obj(v84), _MDPlistArrayGetCount()))
            {
              objc_msgSend_obj(v84);
              v85 = _MDPlistContainerCopyObject();

              if (v85)
              {
                v27 = v85;
                goto LABEL_144;
              }
            }

            else
            {
            }
          }

          v92 = logForCSLogCategoryDefault();
          v91 = v92;
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            [CSReceiverConnection handleCommand:info:connection:];
LABEL_166:
            v15 = -1;
            v91 = v92;
            goto LABEL_168;
          }

LABEL_167:
          v15 = -1;
          goto LABEL_168;
        }

        if (uint64 != 32)
        {
          if (uint64 == 64)
          {
            v43 = [MEMORY[0x277CC3510] dataWrapperForKey:"a" sizeKey:"a-size" fromXPCDictionary:infoCopy];
            if (v43)
            {
              v15 = [(CSReceiverConnection *)self addUserActions:v43 bundleID:queue3 protectionClass:v17];
              v51 = objc_opt_self();
              goto LABEL_175;
            }

            v93 = logForCSLogCategoryDefault();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
            {
              [CSReceiverConnection handleCommand:info:connection:];
            }

            goto LABEL_174;
          }

          goto LABEL_97;
        }

        v59 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:infoCopy];
        if (v59)
        {
          v73 = objc_alloc(MEMORY[0x277CC33C8]);
          data3 = [v59 data];
          v75 = [v73 initWithData:data3];

          if (v75 && (objc_msgSend_obj(v75), _MDPlistGetPlistObjectType() == 240) && (objc_msgSend_obj(v75), _MDPlistArrayGetCount()))
          {
            objc_msgSend_obj(v75);
            v63 = _MDPlistContainerCopyObject();

            if (v63)
            {
              v15 = [(CSReceiverConnection *)self purgeFromBundle:queue3 identifiers:v63];
              goto LABEL_189;
            }
          }

          else
          {
          }
        }

        v63 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          [CSReceiverConnection handleCommand:info:connection:];
        }

        v15 = -1;
        goto LABEL_189;
      }

      if (uint64 != 128)
      {
        if (uint64 == 256)
        {
          v79 = MEMORY[0x277CC3510];
          v80 = xpc_dictionary_get_value(infoCopy, "ids");
          v43 = [v79 copyNSStringArrayFromXPCArray:v80];

          if (v43)
          {
            v15 = [(CSReceiverConnection *)self deleteInteractionsWithIdentifiers:v43 bundleID:queue3 protectionClass:v17];
            goto LABEL_175;
          }

          v93 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
          {
            [CSReceiverConnection handleCommand:info:connection:];
          }

          goto LABEL_174;
        }

        if (uint64 == 512)
        {
          v41 = MEMORY[0x277CC3510];
          v42 = xpc_dictionary_get_value(infoCopy, "ids");
          v43 = [v41 copyNSStringArrayFromXPCArray:v42];

          if (v43)
          {
            v15 = [(CSReceiverConnection *)self deleteInteractionsWithGroupIdentifiers:v43 bundleID:queue3 protectionClass:v17];
LABEL_175:

            goto LABEL_9;
          }

          v93 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
          {
            [CSReceiverConnection handleCommand:info:connection:];
          }

LABEL_174:

          v15 = -1;
          goto LABEL_175;
        }

LABEL_132:
        v81 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          [CSReceiverConnection handleCommand:info:connection:];
        }

        goto LABEL_58;
      }

      v59 = [MEMORY[0x277CC3510] dataWrapperForKey:"ins" sizeKey:"ins-size" fromXPCDictionary:infoCopy];
      if (v59 && (v76 = objc_alloc(MEMORY[0x277CCAAC8]), [v59 data], v77 = objc_claimAutoreleasedReturnValue(), v126 = objc_msgSend(v76, "initForReadingFromData:error:", v77, 0), v77, objc_msgSend(MEMORY[0x277CBEB98], "setWithObject:", objc_opt_class()), v78 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v126, "decodeObjectOfClasses:forKey:", v78, *MEMORY[0x277CCA308]), v63 = objc_claimAutoreleasedReturnValue(), v78, v126, v63))
      {
        v15 = [(CSReceiverConnection *)self addInteraction:v63 bundleID:queue3 protectionClass:v17];
      }

      else
      {
        v63 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          [CSReceiverConnection handleCommand:info:connection:];
        }

        v15 = -1;
      }

LABEL_189:

      goto LABEL_9;
    }

    if (uint64 >= 0x8000)
    {
      if (uint64 >= 0x20000)
      {
        switch(uint64)
        {
          case 0x20000:
            v57 = logForCSLogCategoryDefault();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              serviceName = [(CSXPCConnection *)self serviceName];
              *buf = 138412290;
              commandCopy = serviceName;
              _os_log_impl(&dword_232D5E000, v57, OS_LOG_TYPE_DEFAULT, "### SCHEDULED RECEIVER suspend %@", buf, 0xCu);
            }

            [(SpotlightScheduledReceiver *)self->_scheduledReceiver suspend];
            goto LABEL_58;
          case 0x40000:
            v64 = logForCSLogCategoryDefault();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              serviceName2 = [(CSXPCConnection *)self serviceName];
              *buf = 138412290;
              commandCopy = serviceName2;
              _os_log_impl(&dword_232D5E000, v64, OS_LOG_TYPE_DEFAULT, "### SCHEDULED RECEIVER resume %@", buf, 0xCu);
            }

            [(SpotlightScheduledReceiver *)self->_scheduledReceiver resume];
            goto LABEL_58;
          case 0x80000:
            v33 = logForCSLogCategoryDefault();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              serviceName3 = [(CSXPCConnection *)self serviceName];
              *buf = 138412290;
              commandCopy = serviceName3;
              _os_log_impl(&dword_232D5E000, v33, OS_LOG_TYPE_DEFAULT, "### SCHEDULED RECEIVER reset %@", buf, 0xCu);
            }

            [(SpotlightScheduledReceiver *)self->_scheduledReceiver reset];
            goto LABEL_58;
        }

        goto LABEL_132;
      }

      if (uint64 == 0x8000)
      {
        v113 = xpc_dictionary_get_value(infoCopy, "fd");
        v105 = xpc_dictionary_get_uint64(infoCopy, "f-off");
        v104 = xpc_dictionary_get_uint64(infoCopy, "f-size");
        v106 = xpc_dictionary_get_uint64(infoCopy, "itype");
        xfda = xpc_fd_dup(v113);
        if ((xfda & 0x80000000) == 0)
        {
          v111 = xpc_dictionary_get_array(infoCopy, "aatrs");
          v109 = [MEMORY[0x277CC3510] copyNSStringOrDictArrayFromXPCArray:v111];
          firstObject = [v109 firstObject];
          v108 = [MEMORY[0x277CC3510] copyNSStringForKey:"cnm" fromXPCDictionary:infoCopy];
          v117 = [(CSReceiverConnection *)self configForIdentifier:v108];
          v124 = [SpotlightReceiverDonation alloc];
          versionName = [v117 versionName];
          versionValue = [v117 versionValue];
          v125 = [(SpotlightReceiverDonation *)v124 initWithVersionName:versionName versionValue:versionValue];

          [(SpotlightReceiverDonation *)v125 setDonationType:1];
          [(SpotlightReceiverDonation *)v125 setIndexType:indexTypeForValue(v106)];
          [(SpotlightReceiverDonation *)v125 setBundleIdentifier:queue3];
          [(SpotlightReceiverDonation *)v125 setProtectionClass:v17];
          [(SpotlightReceiverDonation *)v125 setSerialNumber:xpc_dictionary_get_uint64(infoCopy, "s-num")];
          v68 = [MEMORY[0x277CC3510] copyNSStringForKey:"j-cook" fromXPCDictionary:infoCopy];
          [(SpotlightReceiverDonation *)v125 setJournalCookie:v68];

          name = [v117 name];
          [(SpotlightReceiverDonation *)v125 setConfigName:name];

          v70 = xpc_dictionary_get_remote_connection(infoCopy);
          v71 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_232D5E000, v71, OS_LOG_TYPE_DEFAULT, "### SCHEDULED RECEIVER processing add/updated batch", buf, 2u);
          }

          v131[0] = MEMORY[0x277D85DD0];
          v131[1] = 3221225472;
          v131[2] = __54__CSReceiverConnection_handleCommand_info_connection___block_invoke;
          v131[3] = &unk_2789ADF90;
          v134 = xfda;
          v132 = reply;
          v133 = v70;
          v72 = v70;
          [(CSReceiverConnection *)self indexWithFd:xfda offset:v105 size:v104 donation:v125 additionalAttributes:firstObject config:v117 completionHandler:v131];
        }

        v50 = xfda;
      }

      else
      {
        if (uint64 != 0x10000)
        {
          goto LABEL_132;
        }

        xfd = xpc_dictionary_get_value(infoCopy, "fd");
        v112 = xpc_dictionary_get_uint64(infoCopy, "f-off");
        v110 = xpc_dictionary_get_uint64(infoCopy, "f-size");
        v45 = xpc_dictionary_get_uint64(infoCopy, "itype");
        v116 = xpc_fd_dup(xfd);
        if ((v116 & 0x80000000) == 0)
        {
          v123 = objc_alloc_init(SpotlightReceiverDonation);
          [(SpotlightReceiverDonation *)v123 setDonationType:3];
          [(SpotlightReceiverDonation *)v123 setIndexType:indexTypeForValue(v45)];
          [(SpotlightReceiverDonation *)v123 setBundleIdentifier:queue3];
          [(SpotlightReceiverDonation *)v123 setProtectionClass:v17];
          [(SpotlightReceiverDonation *)v123 setSerialNumber:xpc_dictionary_get_uint64(infoCopy, "s-num")];
          v46 = [MEMORY[0x277CC3510] copyNSStringForKey:"j-cook" fromXPCDictionary:infoCopy];
          [(SpotlightReceiverDonation *)v123 setJournalCookie:v46];

          v47 = xpc_dictionary_get_remote_connection(infoCopy);
          v48 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_232D5E000, v48, OS_LOG_TYPE_DEFAULT, "### SCHEDULED RECEIVER processing delete item batch", buf, 2u);
          }

          v127[0] = MEMORY[0x277D85DD0];
          v127[1] = 3221225472;
          v127[2] = __54__CSReceiverConnection_handleCommand_info_connection___block_invoke_387;
          v127[3] = &unk_2789ADFB8;
          v130 = v116;
          v128 = reply;
          v129 = v47;
          v49 = v47;
          [(CSReceiverConnection *)self deleteWithFd:v116 offset:v112 size:v110 donation:v123 completionHandler:v127];
        }

        v50 = v116;
      }

      v18 = v50 >= 0;
      goto LABEL_59;
    }

    if (uint64 <= 4095)
    {
      if (uint64 != 1024)
      {
        if (uint64 != 2048)
        {
          goto LABEL_132;
        }

        v44 = xpc_dictionary_get_value(infoCopy, "ra");
        v31 = v44;
        if (v44 && MEMORY[0x238394C70](v44) == MEMORY[0x277D86458] && (length = xpc_data_get_length(v31)) != 0 && (bytes_ptr = xpc_data_get_bytes_ptr(v31)) != 0 && ([MEMORY[0x277CBEA90] dataWithBytesNoCopy:bytes_ptr length:length freeWhenDone:0], (v122 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v120 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v122 error:0];
          v101 = MEMORY[0x277CBEB98];
          v102 = objc_opt_class();
          v103 = [v101 setWithObjects:{v102, objc_opt_class(), 0}];
          v32 = [v120 decodeObjectOfClasses:v103 forKey:*MEMORY[0x277CCA308]];

          if (v32)
          {
            v15 = [(CSReceiverConnection *)self donateRelevantShortcuts:v32 bundleID:queue3];
            goto LABEL_46;
          }
        }

        else
        {
          v122 = 0;
        }

        v32 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [CSReceiverConnection handleCommand:info:connection:];
        }

        v15 = -1;
        goto LABEL_46;
      }

      v56 = [(CSReceiverConnection *)self deleteAllInteractionsWithBundleID:queue3 protectionClass:v17];
    }

    else
    {
      if (uint64 != 4096)
      {
        if (uint64 == 0x2000)
        {
          v59 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:infoCopy];
          if (v59)
          {
            v60 = objc_alloc(MEMORY[0x277CC33C8]);
            data4 = [v59 data];
            v62 = [v60 initWithData:data4];

            if (v62 && (objc_msgSend_obj(v62), _MDPlistGetPlistObjectType() == 240) && (objc_msgSend_obj(v62), _MDPlistArrayGetCount()))
            {
              objc_msgSend_obj(v62);
              v63 = _MDPlistContainerCopyObject();

              if (v63)
              {
                v15 = [(CSReceiverConnection *)self deleteUserActivitiesWithPersistentIdentifiers:v63 bundleID:queue3];
                goto LABEL_189;
              }
            }

            else
            {
            }
          }

          v63 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            [CSReceiverConnection handleCommand:info:connection:];
          }

          v15 = -1;
          goto LABEL_189;
        }

        if (uint64 != 0x4000)
        {
          goto LABEL_132;
        }

        v30 = xpc_dictionary_get_value(infoCopy, "ra");
        v31 = v30;
        if (v30 && MEMORY[0x238394C70](v30) == MEMORY[0x277D86458] && (v94 = xpc_data_get_length(v31)) != 0 && (v95 = xpc_data_get_bytes_ptr(v31)) != 0 && ([MEMORY[0x277CBEA90] dataWithBytesNoCopy:v95 length:v94 freeWhenDone:0], (v122 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v119 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v122 error:0];
          v96 = MEMORY[0x277CBEB98];
          v97 = objc_opt_class();
          v98 = [v96 setWithObjects:{v97, objc_opt_class(), 0}];
          v32 = [v119 decodeObjectOfClasses:v98 forKey:*MEMORY[0x277CCA308]];

          if (v32)
          {
            v15 = [(CSReceiverConnection *)self donateRelevantActions:v32 bundleID:queue3];
LABEL_46:

            goto LABEL_9;
          }
        }

        else
        {
          v122 = 0;
        }

        v32 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [CSReceiverConnection handleCommand:info:connection:];
        }

        v15 = -1;
        goto LABEL_46;
      }

      v56 = [(CSReceiverConnection *)self deleteAllUserActivities:queue3];
    }

    v15 = v56;
    goto LABEL_9;
  }

  if (v14 == 115 && !command[1])
  {
    v15 = [(CSReceiverConnection *)self handleSetup:reply];
    queue3 = 0;
    v17 = 0;
LABEL_9:
    v18 = 0;
LABEL_60:
    if (euid)
    {
      queue2 = [(CSXPCConnection *)self queue];
      dispatch_queue_set_specific(queue2, SpotlightReceiverConnectionUIDKey, 0, 0);
    }

    v37 = xpc_dictionary_get_remote_connection(infoCopy);
    if (v37)
    {
      v38 = reply == 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v38 || v18;
    if ((v39 & 1) == 0)
    {
      xpc_dictionary_set_int64(reply, "status", v15);
      xpc_connection_send_message(v37, reply);
    }

    goto LABEL_71;
  }

LABEL_11:
  if (!_SpotlightDaemonClientHandleCommand(command, infoCopy, self->_receiver))
  {
LABEL_57:
    queue3 = 0;
    v17 = 0;
LABEL_58:
    v18 = 0;
LABEL_59:
    v15 = -1;
    goto LABEL_60;
  }

  if (euid)
  {
    queue3 = [(CSXPCConnection *)self queue];
    dispatch_queue_set_specific(queue3, SpotlightReceiverConnectionUIDKey, 0, 0);
LABEL_71:
  }

  return 1;
}

void __54__CSReceiverConnection_handleCommand_info_connection___block_invoke(uint64_t a1, int a2, int64_t a3)
{
  close(*(a1 + 48));
  xpc_dictionary_set_int64(*(a1 + 32), "pstatus", a3);
  xpc_dictionary_set_int64(*(a1 + 32), "status", a2);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);

  xpc_connection_send_message(v6, v7);
}

void __54__CSReceiverConnection_handleCommand_info_connection___block_invoke_387(uint64_t a1, int a2)
{
  close(*(a1 + 48));
  xpc_dictionary_set_int64(*(a1 + 32), "status", a2);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  xpc_connection_send_message(v4, v5);
}

- (int)handleSetup:(id)setup
{
  v82 = *MEMORY[0x277D85DE8];
  setupCopy = setup;
  xpc_dictionary_set_uint64(setupCopy, "jt", self->_supportedJobs);
  if ([(NSMutableDictionary *)self->_configs count])
  {
    v74 = setupCopy;
    v76 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v72 = objc_alloc_init(MEMORY[0x277CBEB58]);
    selfCopy = self;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = [(CSReceiverConnection *)self configs];
    v7 = [obj countByEnumeratingWithState:&v77 objects:v81 count:16];
    if (!v7)
    {
      goto LABEL_46;
    }

    v8 = v7;
    v9 = *v78;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v78 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v77 + 1) + 8 * i);
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        name = [v11 name];
        [v12 setObject:name forKey:SpotlightScheduledReceiverConfigName];

        v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "needsText")}];
        [v12 setObject:v14 forKey:@"requiresText"];

        v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "needsHTML")}];
        [v12 setObject:v15 forKey:@"requiresHTML"];

        v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "requirePriority")}];
        [v12 setObject:v16 forKey:@"requirePriorityItems"];

        v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "requireBacklog")}];
        [v12 setObject:v17 forKey:@"requireBacklogItems"];

        v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "supportsDeletes")}];
        [v12 setObject:v18 forKey:@"includeDeletedItems"];

        v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "needsLanguage")}];
        [v12 setObject:v19 forKey:@"includeLanguage"];

        priority = [v11 priority];

        if (priority)
        {
          priority2 = [v11 priority];
          [v12 setObject:priority2 forKey:SpotlightScheduledReceiverConfigPriority];
        }

        processes = [v11 processes];

        if (processes)
        {
          processes2 = [v11 processes];
          [v12 setObject:processes2 forKey:SpotlightScheduledReceiverConfigProcesses];
        }

        supportedQuery = [v11 supportedQuery];

        if (supportedQuery)
        {
          supportedQuery2 = [v11 supportedQuery];
          [v12 setObject:supportedQuery2 forKey:SpotlightScheduledReceiverConfigSupportedQuery];
        }

        supportedBundles = [v11 supportedBundles];
        v27 = [supportedBundles count];

        if (v27)
        {
          supportedBundles2 = [v11 supportedBundles];
          [v12 setObject:supportedBundles2 forKey:SpotlightScheduledReceiverConfigSupportedBundles];
        }

        unsupportedBundles = [v11 unsupportedBundles];
        v30 = [unsupportedBundles count];

        if (v30)
        {
          unsupportedBundles2 = [v11 unsupportedBundles];
          [v12 setObject:unsupportedBundles2 forKey:SpotlightScheduledReceiverConfigUnsupportedBundles];
        }

        supportedDomainIdentifiers = [v11 supportedDomainIdentifiers];
        v33 = [supportedDomainIdentifiers count];

        if (v33)
        {
          supportedDomainIdentifiers2 = [v11 supportedDomainIdentifiers];
          [v12 setObject:supportedDomainIdentifiers2 forKey:SpotlightScheduledReceiverConfigSupportedDomains];
        }

        unsupportedDomainIdentifiers = [v11 unsupportedDomainIdentifiers];
        v36 = [unsupportedDomainIdentifiers count];

        if (v36)
        {
          unsupportedDomainIdentifiers2 = [v11 unsupportedDomainIdentifiers];
          [v12 setObject:unsupportedDomainIdentifiers2 forKey:SpotlightScheduledReceiverConfigUnsupportedDomains];
        }

        supportedContentTypes = [v11 supportedContentTypes];
        v39 = [supportedContentTypes count];

        if (v39)
        {
          supportedContentTypes2 = [v11 supportedContentTypes];
          [v12 setObject:supportedContentTypes2 forKey:SpotlightScheduledReceiverConfigSupportedContentTypes];
        }

        unsupportedContentTypes = [v11 unsupportedContentTypes];
        v42 = [unsupportedContentTypes count];

        if (v42)
        {
          unsupportedContentTypes2 = [v11 unsupportedContentTypes];
          [v12 setObject:unsupportedContentTypes2 forKey:SpotlightScheduledReceiverConfigUnsupportedContentTypes];
        }

        donationAttributes = [v11 donationAttributes];
        v45 = [donationAttributes count];

        if (v45)
        {
          donationAttributes2 = [v11 donationAttributes];
          [v12 setObject:donationAttributes2 forKey:SpotlightScheduledReceiverConfigDonationAttributes];
        }

        requiredAttributes = [v11 requiredAttributes];
        v48 = [requiredAttributes count];

        if (v48)
        {
          requiredAttributes2 = [v11 requiredAttributes];
          [v12 setObject:requiredAttributes2 forKey:SpotlightScheduledReceiverConfigRequiredAttributes];
        }

        optionalAttributes = [v11 optionalAttributes];
        v51 = [optionalAttributes count];

        if (v51)
        {
          optionalAttributes2 = [v11 optionalAttributes];
          [v12 setObject:optionalAttributes2 forKey:SpotlightScheduledReceiverConfigOptionalAttributes];
        }

        excludeAttributes = [v11 excludeAttributes];
        v54 = [excludeAttributes count];

        if (v54)
        {
          excludeAttributes2 = [v11 excludeAttributes];
          [v12 setObject:excludeAttributes2 forKey:SpotlightScheduledReceiverConfigExcludeAttributes];
        }

        [v76 addObject:v12];
        if (!v5)
        {
          if (!v6)
          {
            goto LABEL_44;
          }

LABEL_40:
          supportedContentTypes3 = [v11 supportedContentTypes];
          v60 = [supportedContentTypes3 count];

          if (v60)
          {
            supportedContentTypes4 = [v11 supportedContentTypes];
            [v6 addObjectsFromArray:supportedContentTypes4];
          }

          else
          {
            supportedContentTypes4 = v6;
            v6 = 0;
          }

          goto LABEL_44;
        }

        supportedBundles3 = [v11 supportedBundles];
        v57 = [supportedBundles3 count];

        if (v57)
        {
          supportedBundles4 = [v11 supportedBundles];
          [v5 addObjectsFromArray:supportedBundles4];
        }

        else
        {
          supportedBundles4 = v5;
          v5 = 0;
        }

        if (v6)
        {
          goto LABEL_40;
        }

LABEL_44:
      }

      v8 = [obj countByEnumeratingWithState:&v77 objects:v81 count:16];
      if (!v8)
      {
LABEL_46:

        allObjects = [v5 allObjects];
        self = selfCopy;
        bundleIDs = selfCopy->_bundleIDs;
        selfCopy->_bundleIDs = allObjects;

        allObjects2 = [v6 allObjects];
        contentTypes = selfCopy->_contentTypes;
        selfCopy->_contentTypes = allObjects2;

        allObjects3 = [v72 allObjects];
        INIntentClassNames = selfCopy->_INIntentClassNames;
        selfCopy->_INIntentClassNames = allObjects3;

        setupCopy = v74;
        [MEMORY[0x277CC3510] dictionary:v74 setStringOrDictionaryArray:v76 forKey:"jps"];

        break;
      }
    }
  }

  v68 = self->_bundleIDs;
  if (v68)
  {
    [MEMORY[0x277CC3510] dictionary:setupCopy setStringArray:v68 forKey:"bids"];
  }

  v69 = self->_contentTypes;
  if (v69)
  {
    [MEMORY[0x277CC3510] dictionary:setupCopy setStringArray:v69 forKey:"cts"];
  }

  v70 = self->_INIntentClassNames;
  if (v70)
  {
    [MEMORY[0x277CC3510] dictionary:setupCopy setStringArray:v70 forKey:"icls"];
  }

  return 0;
}

- (int)indexFromBundle:(id)bundle protectionClass:(id)class items:(id)items itemsContent:(id)content
{
  contentCopy = content;
  if (items)
  {
    v11 = MEMORY[0x277CC33C8];
    itemsCopy = items;
    classCopy = class;
    bundleCopy = bundle;
    v15 = [v11 alloc];
    data = [itemsCopy data];
    v17 = [v15 initWithData:data];

    [v17 setBackingStore:itemsCopy];
    if (contentCopy)
    {
      v18 = objc_alloc(MEMORY[0x277CC33C8]);
      data2 = [contentCopy data];
      v20 = [v18 initWithData:data2];

      [v20 setBackingStore:contentCopy];
    }

    else
    {
      v20 = 0;
    }

    v21 = [objc_alloc(MEMORY[0x277CC34C0]) initWithItems:v17 itemsContent:v20];
    [v21 setBundleID:bundleCopy];
    [v21 setProtectionClass:classCopy];

    [(SpotlightReceiver *)self->_receiver addOrUpdateSearchableItems:v21 bundleID:bundleCopy];
  }

  return 0;
}

- (BOOL)enableDebuggability
{
  if (enableDebuggability_onceToken != -1)
  {
    [CSReceiverConnection enableDebuggability];
  }

  return enableDebuggability_sDebugEnabled;
}

uint64_t __43__CSReceiverConnection_enableDebuggability__block_invoke()
{
  result = _os_feature_enabled_impl();
  enableDebuggability_sDebugEnabled = result;
  return result;
}

- (id)indexForBundleID:(id)d protectionClass:(id)class
{
  dCopy = d;
  classCopy = class;
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableDictionary *)self->_indexes count]>= 0xA)
  {
    [(NSMutableDictionary *)self->_indexes removeAllObjects];
  }

  v8 = [(NSMutableDictionary *)self->_indexes objectForKeyedSubscript:dCopy];

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_indexes setObject:v9 forKeyedSubscript:dCopy];
  }

  v10 = [(NSMutableDictionary *)self->_indexes objectForKeyedSubscript:dCopy];
  v11 = [v10 objectForKeyedSubscript:classCopy];

  if (!v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CC34A8]) _initWithName:@"SpotlightResources" protectionClass:classCopy bundleIdentifier:dCopy options:32];
    v13 = [(NSMutableDictionary *)self->_indexes objectForKeyedSubscript:dCopy];
    [v13 setObject:v12 forKeyedSubscript:classCopy];
  }

  v14 = [(NSMutableDictionary *)self->_indexes objectForKeyedSubscript:dCopy];
  v15 = [v14 objectForKeyedSubscript:classCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v15;
}

- (id)fetchableIdentifiersFromDonation:(id)donation additionalAttributes:(id)attributes config:(id)config
{
  v35[1] = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  attributesCopy = attributes;
  configCopy = config;
  if ([attributesCopy count])
  {
    bundleIdentifier = [donationCopy bundleIdentifier];
    protectionClass = [donationCopy protectionClass];
    allKeys = [attributesCopy allKeys];
    v12 = allKeys;
    if (bundleIdentifier && protectionClass)
    {
      v21 = [objc_alloc(MEMORY[0x277CC34A8]) initWithName:@"SKG" protectionClass:protectionClass bundleIdentifier:bundleIdentifier];
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy_;
      v33 = __Block_byref_object_dispose_;
      v34 = [v12 mutableCopy];
      v13 = dispatch_group_create();
      dispatch_group_enter(v13);
      versionName = [configCopy versionName];
      v35[0] = versionName;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __85__CSReceiverConnection_fetchableIdentifiersFromDonation_additionalAttributes_config___block_invoke;
      v23[3] = &unk_2789AE000;
      v24 = configCopy;
      v25 = v12;
      v28 = &v29;
      v26 = bundleIdentifier;
      v16 = v13;
      v27 = v16;
      [v21 slowFetchAttributes:v15 protectionClass:protectionClass bundleID:v26 identifiers:v25 completionHandler:v23];

      v17 = dispatch_time(0, 1200000000000);
      if (dispatch_group_wait(v16, v17))
      {
        v18 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [CSReceiverConnection fetchableIdentifiersFromDonation:additionalAttributes:config:];
        }
      }

      v19 = v30[5];

      _Block_object_dispose(&v29, 8);
    }

    else
    {
      v19 = allKeys;
    }
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  return v19;
}

void __85__CSReceiverConnection_fetchableIdentifiersFromDonation_additionalAttributes_config___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v5 = 0;
    v6 = *MEMORY[0x277CBEEE8];
    *&v4 = 138412546;
    v16 = v4;
    do
    {
      v7 = [v3 objectAtIndexedSubscript:{v5, v16}];
      v8 = [v7 firstObject];
      v9 = v8;
      if (v8)
      {
        if (v8 != v6)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
            v11 = [*(a1 + 32) versionValue];
            v12 = [v10 isEqualToNumber:v11];

            if (v12)
            {
              v13 = [*(a1 + 40) objectAtIndexedSubscript:v5];
              [*(*(*(a1 + 64) + 8) + 40) removeObject:v13];
              v14 = logForCSLogCategoryDefault();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                v15 = *(a1 + 48);
                *buf = v16;
                v18 = v13;
                v19 = 2112;
                v20 = v15;
                _os_log_impl(&dword_232D5E000, v14, OS_LOG_TYPE_INFO, "### SCHEDULED RECEIVER ignoring already processing item %@ [%@]", buf, 0x16u);
              }
            }
          }
        }
      }

      ++v5;
    }

    while (v5 < [v3 count]);
  }

  dispatch_group_leave(*(a1 + 56));
}

- (void)indexWithFd:(int)fd offset:(unint64_t)offset size:(unint64_t)size donation:(id)donation additionalAttributes:(id)attributes config:(id)config completionHandler:(id)handler
{
  donationCopy = donation;
  attributesCopy = attributes;
  configCopy = config;
  handlerCopy = handler;
  if (size)
  {
    v48 = [(CSReceiverConnection *)self fetchableIdentifiersFromDonation:donationCopy additionalAttributes:attributesCopy config:configCopy];
    if ([v48 count])
    {
      v47 = attributesCopy;
      v19 = MEMORY[0x277CCACA8];
      serviceName = [(CSXPCConnection *)self serviceName];
      name = [configCopy name];
      v22 = [v19 stringWithFormat:@"%@.%@.adds", serviceName, name];

      v46 = v22;
      uTF8String = [v22 UTF8String];
      v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v25 = dispatch_queue_attr_make_with_qos_class(v24, QOS_CLASS_DEFAULT, 0);
      v26 = dispatch_queue_create(uTF8String, v25);

      v27 = dispatch_group_create();
      v28 = -*MEMORY[0x277D85FA0];
      v29 = v28 & offset;
      v43 = ((offset + size + *MEMORY[0x277D85FA0] - 1) & v28) + (v28 & offset);
      v30 = mmap(0, v43, 1, 1, fd, v28 & offset);
      if (v30 == -1)
      {
        handlerCopy[2](handlerCopy, 1, 0);
        v34 = v48;
      }

      else
      {
        v31 = v30;
        fetchAttributes = [configCopy fetchAttributes];
        [donationCopy protectionClass];
        v44 = v27;
        v32 = queue = v26;
        v40 = objc_opt_respondsToSelector() & 1;
        v42 = objc_opt_respondsToSelector() & 1;
        enableDebuggability = [(CSReceiverConnection *)self enableDebuggability];
        v74[0] = 0;
        v74[1] = v74;
        v74[2] = 0x2020000000;
        v75 = -1;
        v73[0] = 0;
        v73[1] = v73;
        v73[2] = 0x2020000000;
        v73[3] = 0;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke;
        block[3] = &unk_2789AE138;
        v66 = v31;
        offsetCopy = offset;
        v68 = v29;
        sizeCopy = size;
        v34 = v48;
        v56 = v48;
        v57 = fetchAttributes;
        v58 = v47;
        v70 = enableDebuggability;
        v59 = configCopy;
        v60 = v32;
        selfCopy = self;
        v71 = v40;
        v62 = donationCopy;
        v35 = v44;
        v63 = v35;
        v64 = v74;
        v65 = v73;
        v72 = v42;
        v36 = v32;
        v37 = fetchAttributes;
        dispatch_group_async(v35, queue, block);
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_5;
        v49[3] = &unk_2789AE160;
        v53 = v31;
        v54 = v43;
        v50 = handlerCopy;
        v51 = v74;
        v52 = v73;
        v38 = v35;
        v26 = queue;
        dispatch_group_notify(v38, queue, v49);

        _Block_object_dispose(v73, 8);
        _Block_object_dispose(v74, 8);
        v27 = v44;
      }

      attributesCopy = v47;
    }

    else
    {
      handlerCopy[2](handlerCopy, 0, 2);
      v34 = v48;
    }
  }

  else
  {
    v39 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [CSReceiverConnection indexWithFd:donationCopy offset:v39 size:? donation:? additionalAttributes:? config:? completionHandler:?];
    }

    handlerCopy[2](handlerCopy, 1, 0);
  }
}

void __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v12 = v7;
  v13 = v6;
  v11 = *(a1 + 64);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v14 = v10;
  if (!MDJournalReaderProcessRecordBatchWithBytes())
  {
    *(*(*(a1 + 96) + 8) + 24) = 1;
  }
}

void __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6)
{
  v8 = a4;
  v121 = *MEMORY[0x277D85DE8];
  buf = *a4;
  v120 = *(a4 + 2);
  if (_MDPlistGetPlistObjectType() == 240 && a3 != 0)
  {
    v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
    if (v73)
    {
      buf = *a5;
      v120 = *(a5 + 2);
      PlistObjectType = _MDPlistGetPlistObjectType();
      buf = *a6;
      v120 = *(a6 + 2);
      v78 = _MDPlistGetPlistObjectType();
      buf = *v8;
      v120 = *(v8 + 2);
      Count = _MDPlistArrayGetCount();
      if (Count)
      {
        v13 = Count;
        v61 = a5;
        v62 = a6;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v60 = v93;
        v63 = v8;
        v64 = Count;
        while (1)
        {
          buf = 0uLL;
          v120 = 0;
          v115 = *v8;
          v116 = *(v8 + 2);
          _MDPlistArrayGetPlistObjectAtIndex();
          v115 = buf;
          v116 = v120;
          if (_MDPlistGetPlistObjectType() == 246)
          {
            *&v113 = 0;
            v115 = buf;
            v116 = v120;
            _MDPlistDataGetBytePtr();
            _MDPlistGetRootPlistObjectFromBytes();
            buf = v115;
            v120 = v116;
          }

          v115 = buf;
          v116 = v120;
          if (_MDPlistGetPlistObjectType() == 240)
          {
            v115 = buf;
            v116 = v120;
            v17 = _MDPlistArrayGetCount();
            if ((v17 - 3) <= 1)
            {
              v18 = v17;
              v113 = buf;
              v114 = v120;
              _MDPlistArrayGetPlistObjectAtIndex();
              IntValue = _MDPlistNumberGetIntValue();
              v115 = 0uLL;
              v116 = 0;
              v113 = buf;
              v114 = v120;
              _MDPlistArrayGetPlistObjectAtIndex();
              v113 = 0uLL;
              v114 = 0;
              v111 = v115;
              v112 = v116;
              if (_MDPlistDictionaryGetPlistObjectForKey())
              {
                v68 = IntValue;
                v110 = 0;
                v109 = 0;
                v111 = v113;
                v112 = v114;
                _MDPlistStringGetValue();
                v111 = v113;
                v112 = v114;
                v76 = MDJournalReaderMDPlistObjectCopy();
                if ([*(a1 + 32) containsObject:v60])
                {
                  v111 = 0uLL;
                  v112 = 0;
                  v107 = v115;
                  v108 = v116;
                  if (_MDPlistDictionaryGetPlistObjectForKey())
                  {
                    v107 = v111;
                    v108 = v112;
                    v69 = _MDPlistContainerCopyObject();
                  }

                  else
                  {
                    v69 = 0;
                  }

                  v66 = v15;
                  v107 = 0uLL;
                  v108 = 0;
                  v105 = 0uLL;
                  v106 = 0;
                  if (v18 == 4)
                  {
                    v101 = buf;
                    v102 = v120;
                    _MDPlistArrayGetPlistObjectAtIndex();
                    v22 = *(&v103 + 1);
                    v71 = v103;
                    v72 = v104;
                  }

                  else
                  {
                    v71 = 0;
                    v72 = 0;
                    v22 = 0;
                  }

                  if (PlistObjectType == 241)
                  {
                    v103 = *v61;
                    v104 = *(v61 + 2);
                    _MDPlistDictionaryGetPlistObjectForKey();
                  }

                  if (v78 == 241)
                  {
                    v103 = *v62;
                    v104 = *(v62 + 2);
                    _MDPlistDictionaryGetPlistObjectForKey();
                  }

                  v65 = v16;
                  v67 = v14;
                  v23 = [*(a1 + 40) count];
                  v24 = [*(a1 + 48) objectForKeyedSubscript:v76];
                  v25 = [v24 count];

                  v26 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v25 + v23];
                  v70 = objc_alloc_init(MEMORY[0x277CC34B8]);
                  v103 = 0uLL;
                  v104 = 0;
                  v97 = 0u;
                  v98 = 0u;
                  v99 = 0u;
                  v100 = 0u;
                  v27 = a1;
                  v28 = *(a1 + 40);
                  v29 = [v28 countByEnumeratingWithState:&v97 objects:v118 count:16];
                  if (v29)
                  {
                    v30 = v29;
                    v74 = 0;
                    v75 = 0;
                    v31 = *v98;
                    while (1)
                    {
                      for (i = 0; i != v30; ++i)
                      {
                        if (*v98 != v31)
                        {
                          objc_enumerationMutation(v28);
                        }

                        v33 = *(*(&v97 + 1) + 8 * i);
                        if (v78 == 241 && [v33 isEqualToString:@"kMDItemHTMLContentData"])
                        {
                          v101 = v105;
                          v102 = v106;
                          v34 = v75;
                          v75 = MDJournalReaderMDPlistObjectCopy();
LABEL_43:

                          continue;
                        }

                        if (PlistObjectType == 241 && [v33 isEqualToString:@"kMDItemTextContent"])
                        {
                          v101 = v107;
                          v102 = v108;
                          v34 = v74;
                          v74 = MDJournalReaderMDPlistObjectCopy();
                          goto LABEL_43;
                        }

                        if (![v33 isEqualToString:@"kMDItemExtraData"] || !objc_msgSend(v73, "isEqualToString:", @"com.apple.Passbook") || !v22 || (objc_msgSend(v33, "UTF8String"), strlen(objc_msgSend(v33, "UTF8String")), *&v101 = v71, *(&v101 + 1) = v22, v102 = v72, !_MDPlistDictionaryGetPlistObjectForKey()))
                        {
                          [v33 UTF8String];
                          strlen([v33 UTF8String]);
                          v101 = v115;
                          v102 = v116;
                          if (!_MDPlistDictionaryGetPlistObjectForKey())
                          {
                            continue;
                          }
                        }

                        v101 = v103;
                        v102 = v104;
                        v34 = _MDPlistContainerCopyObject();
                        if (v34)
                        {
                          [v26 setObject:v34 forKey:v33];
                        }

                        goto LABEL_43;
                      }

                      v30 = [v28 countByEnumeratingWithState:&v97 objects:v118 count:16];
                      if (!v30)
                      {
                        goto LABEL_48;
                      }
                    }
                  }

                  v74 = 0;
                  v75 = 0;
LABEL_48:

                  a1 = v27;
                  v35 = v70;
                  if (v22 && [*(v27 + 40) count])
                  {
                    v91 = MEMORY[0x277D85DD0];
                    v92 = 3221225472;
                    v93[0] = __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_3;
                    v93[1] = &unk_2789AE028;
                    v94 = v26;
                    v95 = *(v27 + 40);
                    v96 = v70;
                    *&v101 = v71;
                    *(&v101 + 1) = v22;
                    v102 = v72;
                    _MDPlistDictionaryIterate();
                  }

                  v36 = [*(v27 + 48) objectForKeyedSubscript:v76];

                  if (v36)
                  {
                    v89 = 0u;
                    v90 = 0u;
                    v87 = 0u;
                    v88 = 0u;
                    v37 = [*(v27 + 48) objectForKeyedSubscript:v76];
                    v38 = [v37 countByEnumeratingWithState:&v87 objects:v117 count:16];
                    if (v38)
                    {
                      v39 = v38;
                      v40 = *v88;
                      do
                      {
                        for (j = 0; j != v39; ++j)
                        {
                          if (*v88 != v40)
                          {
                            objc_enumerationMutation(v37);
                          }

                          v42 = *(*(&v87 + 1) + 8 * j);
                          v43 = [*(a1 + 48) objectForKeyedSubscript:v76];
                          v44 = [v43 objectForKeyedSubscript:v42];
                          [v26 setObject:v44 forKeyedSubscript:v42];

                          a1 = v27;
                        }

                        v39 = [v37 countByEnumeratingWithState:&v87 objects:v117 count:16];
                      }

                      while (v39);
                    }

                    v35 = v70;
                  }

                  v45 = [v26 objectForKey:@"_kMDItemBundleID"];

                  if (!v45)
                  {
                    [v26 setObject:v73 forKey:@"_kMDItemBundleID"];
                  }

                  [v35 addAttributesFromDictionary:v26];
                  v15 = v66;
                  v14 = v67;
                  v8 = v63;
                  v46 = v35;
                  v13 = v64;
                  v16 = v65;
                  if (v75)
                  {
                    [v46 setHTMLContentData:?];
                  }

                  if (v74)
                  {
                    [v46 setTextContent:?];
                  }

                  v47 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v76 domainIdentifier:v69 attributeSet:v46];
                  [v47 setIsUpdate:v68 & 1];
                  if (!v67)
                  {
                    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  }

                  [v14 addObject:v47];
                  if (*(a1 + 112) == 1)
                  {
                    v48 = objc_alloc_init(MEMORY[0x277CC34B8]);
                    [v48 setAttribute:&unk_284823060 forKey:@"_kMDItemProcessedBySpotlightSender"];
                    if ([*(a1 + 56) requireBacklog])
                    {
                      [v48 setAttribute:&unk_284823060 forKey:@"_kMDItemProcessedBacklog"];
                    }

                    if ([*(a1 + 56) requirePriority])
                    {
                      [v48 setAttribute:&unk_284823060 forKey:@"_kMDItemProcessedPriority"];
                    }

                    v49 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v76 domainIdentifier:0 attributeSet:v48];
                    [v49 setBundleID:v73];
                    [v49 setIsUpdate:1];
                    if (!v66)
                    {
                      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
                    }

                    [v15 addObject:v49];

                    v13 = v64;
                  }

                  v21 = v74;
                  v20 = v75;
                }

                else
                {
                  v20 = 0;
                  v21 = 0;
                }
              }
            }
          }

          if (++v16 == v13)
          {
            goto LABEL_81;
          }
        }
      }

      v15 = 0;
      v14 = 0;
LABEL_81:
      if (![v14 count])
      {
        goto LABEL_92;
      }

      v50 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = [v14 count];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v51;
        _os_log_impl(&dword_232D5E000, v50, OS_LOG_TYPE_DEFAULT, "### SCHEDULED RECEIVER sending %ld items", &buf, 0xCu);
      }

      if ([v15 count])
      {
        if (*(a1 + 64))
        {
          v52 = [*(a1 + 72) indexForBundleID:v73 protectionClass:?];
          [v52 indexSearchableItems:v15 completionHandler:&__block_literal_global_458];
        }
      }

      if (*(a1 + 113) == 1)
      {
        [*(a1 + 80) setBundleIdentifier:v73];
        [*(a1 + 80) setItems:v14];
        dispatch_group_enter(*(a1 + 88));
        v53 = *(a1 + 80);
        v54 = *(*(a1 + 72) + 88);
        v82[0] = MEMORY[0x277D85DD0];
        v82[1] = 3221225472;
        v82[2] = __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_459;
        v82[3] = &unk_2789AE0C0;
        v86 = *(a1 + 96);
        v55 = v83;
        v56 = *(a1 + 88);
        v57 = *(a1 + 72);
        v83[0] = v56;
        v83[1] = v57;
        v84 = v73;
        v85 = *(a1 + 64);
        [v54 processDonation:v53 completionHandler:v82];
      }

      else
      {
        if (*(a1 + 114) != 1)
        {
LABEL_92:

          return;
        }

        dispatch_group_enter(*(a1 + 88));
        v58 = *(*(a1 + 72) + 88);
        v59 = [*(a1 + 56) name];
        v79[0] = MEMORY[0x277D85DD0];
        v79[1] = 3221225472;
        v79[2] = __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_4;
        v79[3] = &unk_2789AE0E8;
        v81 = vextq_s8(*(a1 + 96), *(a1 + 96), 8uLL);
        v55 = &v80;
        v80 = *(a1 + 88);
        [v58 addOrUpdateSearchableItems:v14 bundleID:v73 name:v59 completionHandler:v79];
      }

      goto LABEL_92;
    }
  }
}

void __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_3(id *a1, const UInt8 *a2, CFIndex a3, __int128 *a4)
{
  v6 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], a2, a3, 0x8000100u, 0, *MEMORY[0x277CBED00]);
  v7 = [a1[4] objectForKeyedSubscript:v6];
  if (v7)
  {
  }

  else if ([a1[5] containsObject:v6] && _MDPlistGetPlistObjectType() == 240 && _MDPlistArrayGetCount() == 2)
  {
    _MDPlistArrayGetPlistObjectAtIndex();
    IntValue = _MDPlistNumberGetIntValue();
    v11 = *a4;
    v12 = *(a4 + 2);
    _MDPlistArrayGetPlistObjectAtIndex();
    v9 = CSDecodeObject();
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:v6 searchable:IntValue & 1 searchableByDefault:(IntValue >> 1) & 1 unique:(IntValue >> 2) & 1 multiValued:{(IntValue >> 3) & 1, v11, v12}];
      [a1[6] setValue:v9 forCustomKey:v10];
    }
  }
}

void __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_455(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_455_cold_1();
    }
  }
}

void __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_459(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 64) + 8) + 24) = 0;
  *(*(*(a1 + 72) + 8) + 24) = [v3 status];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_2_460;
  v9[3] = &unk_2789AE070;
  v9[4] = &v10;
  [v3 enumerateUpdatesUsingBlock:v9];
  if ([v11[5] count])
  {
    dispatch_group_enter(*(a1 + 32));
    v4 = [*(a1 + 40) indexForBundleID:*(a1 + 48) protectionClass:*(a1 + 56)];
    v5 = v11[5];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_3_462;
    v6[3] = &unk_2789AE098;
    v8 = *(a1 + 72);
    v7 = *(a1 + 32);
    [v4 indexSearchableItems:v5 completionHandler:v6];
  }

  dispatch_group_leave(*(a1 + 32));
  _Block_object_dispose(&v10, 8);
}

void __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_2_460(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v8 = v3;
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v8;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v4 addObject:v3];
}

void __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_3_462(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 40) + 8);
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(v2 + 24);
  }

  *(v2 + 24) = v3;
  dispatch_group_leave(*(a1 + 32));
}

void __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 4;
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_5(uint64_t a1)
{
  munmap(*(a1 + 56), *(a1 + 64));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (void)deleteWithFd:(int)fd offset:(unint64_t)offset size:(unint64_t)size donation:(id)donation completionHandler:(id)handler
{
  donationCopy = donation;
  handlerCopy = handler;
  if (size)
  {
    v29 = donationCopy;
    v14 = -*MEMORY[0x277D85FA0];
    v15 = v14 & offset;
    v16 = ((offset + size + *MEMORY[0x277D85FA0] - 1) & v14) + (v14 & offset);
    v17 = mmap(0, v16, 1, 1, fd, v14 & offset);
    if (v17 == -1)
    {
      handlerCopy[2](handlerCopy, 1);
      donationCopy = v29;
    }

    else
    {
      v18 = v17;
      v19 = MEMORY[0x277CCACA8];
      serviceName = [(CSXPCConnection *)self serviceName];
      v28 = [v19 stringWithFormat:@"%@.deletes", serviceName];

      uTF8String = [v28 UTF8String];
      v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v23 = dispatch_queue_attr_make_with_qos_class(v22, QOS_CLASS_DEFAULT, 0);
      v24 = dispatch_queue_create(uTF8String, v23);

      v25 = dispatch_group_create();
      v44[0] = 0;
      v44[1] = v44;
      v44[2] = 0x2020000000;
      v45 = -1;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __76__CSReceiverConnection_deleteWithFd_offset_size_donation_completionHandler___block_invoke;
      block[3] = &unk_2789AE200;
      v40 = v18;
      offsetCopy = offset;
      v42 = v15;
      sizeCopy = size;
      donationCopy = v29;
      v36 = v29;
      v37 = v25;
      selfCopy = self;
      v39 = v44;
      v26 = v25;
      dispatch_group_async(v26, v24, block);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __76__CSReceiverConnection_deleteWithFd_offset_size_donation_completionHandler___block_invoke_2_472;
      v30[3] = &unk_2789AE228;
      v33 = v18;
      v34 = v16;
      v31 = handlerCopy;
      v32 = v44;
      dispatch_group_notify(v26, v24, v30);

      _Block_object_dispose(v44, 8);
    }
  }

  else
  {
    v27 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [CSReceiverConnection deleteWithFd:offset:size:donation:completionHandler:];
    }

    handlerCopy[2](handlerCopy, 1);
  }
}

void __76__CSReceiverConnection_deleteWithFd_offset_size_donation_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (!MDJournalReaderProcessRecordBatchWithBytes())
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void __76__CSReceiverConnection_deleteWithFd_offset_size_donation_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __76__CSReceiverConnection_deleteWithFd_offset_size_donation_completionHandler___block_invoke_3;
    v26 = &unk_2789AE188;
    v8 = &v27;
    v9 = v7;
    v27 = v9;
    *buf = *a4;
    v22 = *(a4 + 16);
    _MDPlistArrayIterate();
    if ([v9 count])
    {
      v10 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_232D5E000, v10, OS_LOG_TYPE_DEFAULT, "### SCHEDULED RECEIVER sending delete items", buf, 2u);
      }

      [*(a1 + 32) setIdentifiers:v9];
      dispatch_group_enter(*(a1 + 40));
      v11 = *(*(a1 + 48) + 88);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __76__CSReceiverConnection_deleteWithFd_offset_size_donation_completionHandler___block_invoke_469;
      v18[3] = &unk_2789AE1B0;
      v20 = *(a1 + 56);
      v12 = *(a1 + 32);
      v19 = *(a1 + 40);
      [v11 processDonation:v12 completionHandler:v18];
    }

LABEL_12:

    goto LABEL_13;
  }

  *buf = *a4;
  v22 = *(a4 + 16);
  v9 = MDJournalReaderMDPlistObjectCopy();
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v9 count])
      {
        [*(a1 + 32) setIdentifiers:v9];
        v13 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_232D5E000, v13, OS_LOG_TYPE_DEFAULT, "### SCHEDULED RECEIVER sending delete items", buf, 2u);
        }

        dispatch_group_enter(*(a1 + 40));
        v14 = *(*(a1 + 48) + 88);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __76__CSReceiverConnection_deleteWithFd_offset_size_donation_completionHandler___block_invoke_470;
        v16[3] = &unk_2789AE1B0;
        v17[1] = *(a1 + 56);
        v8 = v17;
        v15 = *(a1 + 32);
        v17[0] = *(a1 + 40);
        [v14 processDonation:v15 completionHandler:v16];
        goto LABEL_12;
      }
    }
  }

LABEL_13:
}

void __76__CSReceiverConnection_deleteWithFd_offset_size_donation_completionHandler___block_invoke_3(uint64_t a1, __int128 *a2)
{
  if (_MDPlistDictionaryGetPlistObjectForKey())
  {
    if (_MDPlistStringGetValue())
    {
      v3 = MDJournalReaderMDPlistObjectCopy();
      if (v3)
      {
        v4 = v3;
        v5 = CFGetTypeID(v3);
        if (v5 == CFStringGetTypeID())
        {
          [*(a1 + 32) addObject:v4];
        }

        CFRelease(v4);
      }
    }
  }
}

uint64_t __76__CSReceiverConnection_deleteWithFd_offset_size_donation_completionHandler___block_invoke_2_472(uint64_t a1)
{
  munmap(*(a1 + 48), *(a1 + 56));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (int)deleteFromBundle:(id)bundle sinceDate:(id)date domains:(id)domains deletes:(id)deletes
{
  bundleCopy = bundle;
  dateCopy = date;
  domainsCopy = domains;
  deletesCopy = deletes;
  if (deletesCopy)
  {
    [(SpotlightReceiver *)self->_receiver deleteSearchableItemsWithIdentifiers:deletesCopy bundleID:bundleCopy];
  }

  else if (domainsCopy)
  {
    [(SpotlightReceiver *)self->_receiver deleteSearchableItemsWithDomainIdentifiers:domainsCopy bundleID:bundleCopy];
  }

  else
  {
    receiver = self->_receiver;
    if (dateCopy)
    {
      [(SpotlightReceiver *)receiver deleteSearchableItemsSinceDate:dateCopy bundleID:bundleCopy];
    }

    else
    {
      [(SpotlightReceiver *)receiver deleteAllSearchableItemsWithBundleID:bundleCopy];
    }
  }

  return 0;
}

- (int)addUserActions:(id)actions bundleID:(id)d protectionClass:(id)class
{
  dCopy = d;
  classCopy = class;
  v9 = MEMORY[0x277CC33C8];
  actionsCopy = actions;
  v11 = [v9 alloc];
  data = [actionsCopy data];
  v13 = [v11 initWithData:data];

  [v13 setBackingStore:actionsCopy];
  if (v13)
  {
    objc_msgSend_obj(v13);
    if (_MDPlistGetPlistObjectType() == 240)
    {
      objc_msgSend_obj(v13);
      if (_MDPlistArrayGetCount())
      {
        objc_msgSend_obj(v13);
        v15 = v13;
        v16 = dCopy;
        v17 = classCopy;
        _MDPlistArrayIterate();
      }
    }
  }

  return 0;
}

void __64__CSReceiverConnection_addUserActions_bundleID_protectionClass___block_invoke(void *a1, __int128 *a2)
{
  v14 = *a2;
  v15 = *(a2 + 2);
  if (_MDPlistGetPlistObjectType() == 240)
  {
    v14 = *a2;
    v15 = *(a2 + 2);
    if (_MDPlistArrayGetCount() == 2)
    {
      v4 = a1[4];
      v10 = *a2;
      v12 = *(a2 + 2);
      _MDPlistArrayGetPlistObjectAtIndex();
      v5 = [v4 decodeObject:{&v14, v10, v12}];
      v6 = a1[4];
      v11 = *a2;
      v13 = *(a2 + 2);
      _MDPlistArrayGetPlistObjectAtIndex();
      v7 = [v6 decodeObject:{&v14, v11, v13}];
      v8 = objc_alloc_init(MEMORY[0x277CC34B0]);
      [v8 setAttributeSet:v7];
      [v8 setBundleID:a1[5]];
      [v8 setProtection:a1[6]];
      v9 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __64__CSReceiverConnection_addUserActions_bundleID_protectionClass___block_invoke_cold_1(v5, v9);
      }

      [*(a1[7] + 80) addUserAction:v5 withItem:v8];
    }
  }
}

- (int)addInteraction:(id)interaction bundleID:(id)d protectionClass:(id)class
{
  v15 = *MEMORY[0x277D85DE8];
  receiver = self->_receiver;
  interactionCopy = interaction;
  v8 = MEMORY[0x277CBEA60];
  classCopy = class;
  dCopy = d;
  interactionCopy2 = interaction;
  v12 = [v8 arrayWithObjects:&interactionCopy count:1];
  [(SpotlightReceiver *)receiver addInteractions:v12 bundleID:dCopy protectionClass:classCopy, interactionCopy, v15];

  return 0;
}

- (void)handleCommand:(void *)a1 info:(uint64_t)a2 connection:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_2(&dword_232D5E000, a3, a3, "Error: %@", a2);
}

- (void)handleCommand:info:connection:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)handleCommand:info:connection:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)handleCommand:info:connection:.cold.8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)handleCommand:(int)a1 info:(int *)a2 connection:(os_log_t)log .cold.17(int a1, int *a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 1024;
  v6 = v3;
  _os_log_error_impl(&dword_232D5E000, log, OS_LOG_TYPE_ERROR, "Job not supported type: 0x%x supported: 0x%x ", v4, 0xEu);
}

- (void)indexWithFd:(void *)a1 offset:(NSObject *)a2 size:donation:additionalAttributes:config:completionHandler:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 configName];
  v5 = 138412290;
  v6 = v3;
  OUTLINED_FUNCTION_2(&dword_232D5E000, a2, v4, "### SCHEDULED RECEIVER indexWithFd invalid request %@", &v5);
}

void __64__CSReceiverConnection_addUserActions_bundleID_protectionClass___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_232D5E000, a2, OS_LOG_TYPE_DEBUG, "addUserAction: %@", &v2, 0xCu);
}

@end
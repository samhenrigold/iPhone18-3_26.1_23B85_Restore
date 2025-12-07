@interface TKSlotRegistration
+ (BOOL)handleConnection:(id)connection server:(id)server;
- (TKSlotRegistration)initWithConnection:(id)connection server:(id)server;
- (void)addSlotWithEndpoint:(id)endpoint name:(id)name type:(id)type reply:(id)reply;
@end

@implementation TKSlotRegistration

- (TKSlotRegistration)initWithConnection:(id)connection server:(id)server
{
  connectionCopy = connection;
  serverCopy = server;
  v11.receiver = self;
  v11.super_class = TKSlotRegistration;
  v8 = [(TKSlotRegistration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_connection, connectionCopy);
    objc_storeStrong(&v9->_server, server);
  }

  return v9;
}

+ (BOOL)handleConnection:(id)connection server:(id)server
{
  serverCopy = server;
  connectionCopy = connection;
  v7 = [[TKSlotRegistration alloc] initWithConnection:connectionCopy server:serverCopy];

  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TKProtocolSlotRegistry];
  [connectionCopy setExportedInterface:v8];

  [connectionCopy setExportedObject:v7];
  return 1;
}

- (void)addSlotWithEndpoint:(id)endpoint name:(id)name type:(id)type reply:(id)reply
{
  endpointCopy = endpoint;
  nameCopy = name;
  typeCopy = type;
  replyCopy = reply;
  v15 = replyCopy;
  if (!self->_endpoint)
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    v17 = [WeakRetained valueForEntitlement:@"com.apple.private.ctk.slot-type"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = [v17 isEqualToString:typeCopy];
      if (isKindOfClass)
      {
LABEL_22:
        objc_storeStrong(&self->_slotType, type);
        objc_storeStrong(&self->_endpoint, endpoint);
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_10000EE54;
        v31[3] = &unk_100038710;
        v31[4] = self;
        v27 = objc_loadWeakRetained(&self->_connection);
        [v27 setInvalidationHandler:v31];

        [(TKSlotServer *)self->_server addSlotRegistration:self name:nameCopy];
        slotName = [(TKSlotRegistration *)self slotName];
        (v15)[2](v15, slotName);
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v28 = v15;
        v29 = nameCopy;
        v30 = endpointCopy;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v20 = v17;
        v21 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v33;
          while (2)
          {
            v24 = 0;
            do
            {
              if (*v33 != v23)
              {
                objc_enumerationMutation(v20);
              }

              if ([typeCopy isEqualToString:{*(*(&v32 + 1) + 8 * v24), v28, v29, v30}])
              {

                nameCopy = v29;
                endpointCopy = v30;
                v15 = v28;
                goto LABEL_22;
              }

              v24 = v24 + 1;
            }

            while (v22 != v24);
            v22 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

        nameCopy = v29;
        endpointCopy = v30;
        v15 = v28;
      }
    }

    v25 = sub_10000EE10(isKindOfClass);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10001F524(&self->_connection);
    }

    slotName = objc_loadWeakRetained(&self->_connection);
    [slotName invalidate];
    goto LABEL_23;
  }

  v16 = sub_10000EE10(replyCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10001F4AC();
  }

  v17 = objc_loadWeakRetained(&self->_connection);
  [v17 invalidate];
LABEL_24:
}

@end
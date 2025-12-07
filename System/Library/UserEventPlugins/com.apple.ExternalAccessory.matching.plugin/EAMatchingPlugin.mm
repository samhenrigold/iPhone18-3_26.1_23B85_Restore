@interface EAMatchingPlugin
- (EAMatchingPlugin)initWithModule:(void *)module;
- (void)accessoryChange:(id)change type:(int)type;
- (void)addClient:(unint64_t)client eventMatchDict:(id)dict;
- (void)sendAccessoryNotification:(id)notification client:(unint64_t)client notificationTypeKey:(const char *)key serialNum:(id)num;
@end

@implementation EAMatchingPlugin

- (EAMatchingPlugin)initWithModule:(void *)module
{
  selfCopy = self;
  if (module)
  {
    xpc_event_module_get_aslclient();
  }

  if (self)
  {
    selfCopy2 = self;
    return 0;
  }

  return selfCopy;
}

- (void)addClient:(unint64_t)client eventMatchDict:(id)dict
{
  if (dict)
  {
    if (xpc_copy_description(dict))
    {
      xpc_event_module_get_aslclient();
    }

    string = xpc_dictionary_get_string(dict, "EAMatchingProtocol");
    if (string)
    {
      v8 = [NSString stringWithCString:string encoding:1];
      if (v8)
      {
        v9 = v8;
        xdict = dict;
        if (xpc_dictionary_get_BOOL(dict, "EAMatchConnection"))
        {
          accessoryConnectClients = self->_accessoryConnectClients;
          if (!accessoryConnectClients)
          {
            accessoryConnectClients = [[NSMutableDictionary alloc] initWithCapacity:1];
            self->_accessoryConnectClients = accessoryConnectClients;
            if (!accessoryConnectClients)
            {
              return;
            }
          }

          [(EAMatchingPlugin *)self addClient:client protocol:v9 clientDict:accessoryConnectClients, v19, v20, v21];
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          obj = [+[EAAccessoryManager sharedAccessoryManager](EAAccessoryManager connectedAccessories];
          v25 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
          if (v25)
          {
            v24 = *v31;
            do
            {
              v11 = 0;
              do
              {
                if (*v31 != v24)
                {
                  objc_enumerationMutation(obj);
                }

                v12 = *(*(&v30 + 1) + 8 * v11);
                v26 = 0u;
                v27 = 0u;
                v28 = 0u;
                v29 = 0u;
                protocolStrings = [v12 protocolStrings];
                v14 = [protocolStrings countByEnumeratingWithState:&v26 objects:v34 count:16];
                if (v14)
                {
                  v15 = v14;
                  v16 = *v27;
                  do
                  {
                    v17 = 0;
                    do
                    {
                      if (*v27 != v16)
                      {
                        objc_enumerationMutation(protocolStrings);
                      }

                      if ([(NSString *)v9 isEqualToString:*(*(&v26 + 1) + 8 * v17)])
                      {
                        -[EAMatchingPlugin sendAccessoryNotification:client:notificationTypeKey:serialNum:](self, "sendAccessoryNotification:client:notificationTypeKey:serialNum:", v9, client, "EAMatchConnection", [v12 serialNumber]);
                      }

                      v17 = v17 + 1;
                    }

                    while (v15 != v17);
                    v15 = [protocolStrings countByEnumeratingWithState:&v26 objects:v34 count:16];
                  }

                  while (v15);
                }

                v11 = v11 + 1;
              }

              while (v11 != v25);
              v25 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
            }

            while (v25);
          }
        }

        if (xpc_dictionary_get_BOOL(xdict, "EAMatchDisconnection"))
        {
          accessoryDisconnectClients = self->_accessoryDisconnectClients;
          if (accessoryDisconnectClients || (accessoryDisconnectClients = [[NSMutableDictionary alloc] initWithCapacity:1], (self->_accessoryDisconnectClients = accessoryDisconnectClients) != 0))
          {
            [(EAMatchingPlugin *)self addClient:client protocol:v9 clientDict:accessoryDisconnectClients, v19, v20, v21];
          }
        }
      }
    }
  }
}

- (void)sendAccessoryNotification:(id)notification client:(unint64_t)client notificationTypeKey:(const char *)key serialNum:(id)num
{
  if (notification)
  {
    if (key)
    {
      v6 = 0;
      xpc_event_module_get_aslclient();
    }
  }
}

- (void)accessoryChange:(id)change type:(int)type
{
  if (type == 1)
  {
    v4 = 32;
    if (!change)
    {
      return;
    }
  }

  else
  {
    if (type != 2)
    {
      return;
    }

    v4 = 40;
    if (!change)
    {
      return;
    }
  }

  if (*(&self->super.isa + v4))
  {
    v5 = [objc_msgSend(change "userInfo")];
    if (v5)
    {
      v6 = v5;
      v7 = v5;
      if ([v6 protocolStrings])
      {
        [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(objc_msgSend(v6, "protocolStrings"), "count")}];
        xpc_event_module_get_aslclient();
      }
    }
  }
}

@end
@interface GTLaunchRequest
- (GTLaunchRequest)init;
- (GTLaunchRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTLaunchRequest

- (GTLaunchRequest)init
{
  v16.receiver = self;
  v16.super_class = GTLaunchRequest;
  v2 = [(GTLaunchRequest *)&v16 init];
  v3 = v2;
  if (v2)
  {
    environment = v2->_environment;
    v2->_environment = &__NSDictionary0__struct;

    arguments = v3->_arguments;
    v3->_arguments = &__NSArray0__struct;

    v6 = +[GTDeviceProperties uniqueDeviceID];
    deviceUDID = v3->_deviceUDID;
    v3->_deviceUDID = v6;

    v8 = +[NSUUID UUID];
    sessionUUID = v3->_sessionUUID;
    v3->_sessionUUID = v8;

    v10 = +[NSUserDefaults standardUserDefaults];
    v11 = [v10 objectForKey:@"GPUToolsReplayerPreferXPCService"];

    if (v11)
    {
      v12 = +[NSUserDefaults standardUserDefaults];
      v13 = [v12 BOOLForKey:@"GPUToolsReplayerPreferXPCService"];
    }

    else
    {
      v13 = 1;
    }

    v3->_preferXPCService = v13;
    v3->_disableDisplay = 0;
    v14 = v3;
  }

  return v3;
}

- (GTLaunchRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v45.receiver = self;
  v45.super_class = GTLaunchRequest;
  v5 = [(GTLaunchRequest *)&v45 init];
  if (!v5)
  {
    goto LABEL_39;
  }

  v6 = objc_opt_class();
  v7 = [coderCopy decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"environment"];
  environment = v5->_environment;
  v5->_environment = v7;

  v9 = v5->_environment;
  if (!v9)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = v5->_environment;
LABEL_15:
    v5->_environment = &__NSDictionary0__struct;
    goto LABEL_18;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = v5->_environment;
  v10 = [(NSDictionary *)v9 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v16 = v5->_environment;
        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_17;
        }

        v17 = [(NSDictionary *)v16 objectForKeyedSubscript:v14];
        objc_opt_class();
        v18 = objc_opt_isKindOfClass();

        if ((v18 & 1) == 0)
        {
          v16 = v5->_environment;
LABEL_17:
          v5->_environment = &__NSDictionary0__struct;

          goto LABEL_18;
        }
      }

      v11 = [(NSDictionary *)v9 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v19 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"arguments"];
  arguments = v5->_arguments;
  v5->_arguments = v19;

  v21 = v5->_arguments;
  if (v21)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v21 = v5->_arguments;
      v22 = [(NSArray *)v21 countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v38;
        while (2)
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v38 != v24)
            {
              objc_enumerationMutation(v21);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v26 = v5->_arguments;
              v5->_arguments = &__NSArray0__struct;

              goto LABEL_32;
            }
          }

          v23 = [(NSArray *)v21 countByEnumeratingWithState:&v37 objects:v46 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_32;
    }

    v21 = v5->_arguments;
  }

  v5->_arguments = &__NSArray0__struct;
LABEL_32:

  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceUDID"];
  deviceUDID = v5->_deviceUDID;
  v5->_deviceUDID = v27;

  if (!v5->_deviceUDID || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v29 = +[GTDeviceProperties uniqueDeviceID];
    v30 = v5->_deviceUDID;
    v5->_deviceUDID = v29;
  }

  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionUUID"];
  sessionUUID = v5->_sessionUUID;
  v5->_sessionUUID = v31;

  if (!v5->_sessionUUID || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v33 = +[NSUUID UUID];
    v34 = v5->_sessionUUID;
    v5->_sessionUUID = v33;
  }

  v5->_preferXPCService = [coderCopy decodeInt64ForKey:{@"preferXPCService", v37}] != 0;
  v5->_disableDisplay = [coderCopy decodeInt64ForKey:@"disableDisplay"] != 0;
  v35 = v5;
LABEL_39:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  environment = self->_environment;
  coderCopy = coder;
  [coderCopy encodeObject:environment forKey:@"environment"];
  [coderCopy encodeObject:self->_arguments forKey:@"arguments"];
  [coderCopy encodeObject:self->_deviceUDID forKey:@"deviceUDID"];
  [coderCopy encodeObject:self->_sessionUUID forKey:@"sessionUUID"];
  [coderCopy encodeInt64:self->_preferXPCService forKey:@"preferXPCService"];
  [coderCopy encodeInt64:self->_disableDisplay forKey:@"disableDisplay"];
}

@end
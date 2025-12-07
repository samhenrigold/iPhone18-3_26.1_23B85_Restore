@interface BKAccessory
- (BKAccessory)initWithServerAccessory:(id)accessory device:(id)device;
- (BOOL)isAuthorized:(BOOL *)authorized error:(id *)error;
- (BOOL)isConnected:(BOOL *)connected error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccessory:(id)accessory;
- (BOOL)isEqualToServerAccessory:(id)accessory;
- (NSData)uid;
- (id)serverAccessory;
@end

@implementation BKAccessory

- (BKAccessory)initWithServerAccessory:(id)accessory device:(id)device
{
  accessoryCopy = accessory;
  deviceCopy = device;
  v19.receiver = self;
  v19.super_class = BKAccessory;
  v8 = [(BKAccessory *)&v19 init];
  v9 = v8;
  if (v8)
  {
    if (accessoryCopy)
    {
      v8->_type = [accessoryCopy type];
      uuid = [accessoryCopy uuid];
      uuid = v9->_uuid;
      v9->_uuid = uuid;

      v9->_flags = [accessoryCopy flags];
      name = [accessoryCopy name];
      name = v9->_name;
      v9->_name = name;

      v14 = [BKAccessoryGroup alloc];
      group = [accessoryCopy group];
      v16 = [(BKAccessoryGroup *)v14 initWithServerAccessoryGroup:group device:deviceCopy];
      accessoryGroup = v9->_accessoryGroup;
      v9->_accessoryGroup = v16;

      objc_storeStrong(&v9->_device, device);
    }

    else
    {
      [BKAccessory initWithServerAccessory:v8 device:?];
      v9 = 0;
    }
  }

  return v9;
}

- (id)serverAccessory
{
  v3 = objc_alloc_init(BiometricKitAccessory);
  [(BiometricKitAccessory *)v3 setType:self->_type];
  [(BiometricKitAccessory *)v3 setUuid:self->_uuid];
  [(BiometricKitAccessory *)v3 setName:self->_name];
  [(BiometricKitAccessory *)v3 setFlags:self->_flags];
  serverAccessoryGroup = [(BKAccessoryGroup *)self->_accessoryGroup serverAccessoryGroup];
  [(BiometricKitAccessory *)v3 setGroup:serverAccessoryGroup];

  return v3;
}

- (NSData)uid
{
  v4[2] = *MEMORY[0x1E69E9840];
  if (self->_type == 2)
  {
    v4[0] = 0;
    v4[1] = 0;
    [(NSUUID *)self->_uuid getUUIDBytes:v4];
    v2 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:16];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)isEqualToServerAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = accessoryCopy;
  if (accessoryCopy && (type = self->_type, type == [accessoryCopy type]))
  {
    uuid = self->_uuid;
    uuid = [v5 uuid];
    v9 = [(NSUUID *)uuid isEqual:uuid];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqualToAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = accessoryCopy;
  if (accessoryCopy && self->_type == *(accessoryCopy + 2))
  {
    v6 = [(NSUUID *)self->_uuid isEqual:*(accessoryCopy + 2)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BKAccessory *)self isEqualToAccessory:equalCopy];
  }

  return v5;
}

- (BOOL)isConnected:(BOOL *)connected error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_device->_xpcClient;
    v10 = v8;
    *buf = 134218240;
    *v34 = connected;
    *&v34[8] = 2048;
    v35[0] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKAccessory:isConnected: %p (_cid:%lu)\n", buf, 0x16u);
  }

  if (!connected)
  {
    [BKAccessory isConnected:error error:?];
    v14 = 0;
LABEL_30:
    if (__osLogTrace)
    {
      v25 = __osLogTrace;
    }

    else
    {
      v25 = v7;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      if (connected)
      {
        v26 = *connected;
      }

      else
      {
        v26 = -1;
      }

      if (error)
      {
        v27 = *error;
      }

      else
      {
        v27 = 0;
      }

      *buf = 67109634;
      *v34 = 0;
      *&v34[4] = 1024;
      *&v34[6] = v26;
      LOWORD(v35[0]) = 2112;
      *(v35 + 2) = v27;
      _os_log_impl(&dword_1C82AD000, v25, OS_LOG_TYPE_ERROR, "BKAccessory::isConnected: -> %d, connected:%d, error:%@\n", buf, 0x18u);
    }

    v23 = 0;
    goto LABEL_27;
  }

  v11 = self->_device->_xpcClient;
  v32 = 0;
  v12 = [(BiometricKitXPCClient *)v11 listAccessories:&v32];
  v13 = v32;
  v14 = v13;
  if (v12)
  {
    [(BKAccessory *)v12 isConnected:v12 error:error];
    goto LABEL_30;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        if ([(BKAccessory *)self isEqualToServerAccessory:v19, v28])
        {
          *connected = ([v19 flags] & 2) != 0;
          goto LABEL_18;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v7;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *connected;
    if (error)
    {
      v22 = *error;
    }

    else
    {
      v22 = 0;
    }

    *buf = 67109634;
    v23 = 1;
    *v34 = 1;
    *&v34[4] = 1024;
    *&v34[6] = v21;
    LOWORD(v35[0]) = 2112;
    *(v35 + 2) = v22;
    _os_log_impl(&dword_1C82AD000, v20, OS_LOG_TYPE_DEFAULT, "BKAccessory::isConnected: -> %d, connected:%d, error:%@\n", buf, 0x18u);
  }

  else
  {
    v23 = 1;
  }

LABEL_27:

  return v23;
}

- (BOOL)isAuthorized:(BOOL *)authorized error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_device->_xpcClient;
    v10 = v8;
    *buf = 134218240;
    *v34 = authorized;
    *&v34[8] = 2048;
    v35[0] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKAccessory:isAuthorized: %p (_cid:%lu)\n", buf, 0x16u);
  }

  if (!authorized)
  {
    [BKAccessory isAuthorized:error error:?];
    v14 = 0;
LABEL_30:
    if (__osLogTrace)
    {
      v25 = __osLogTrace;
    }

    else
    {
      v25 = v7;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      if (authorized)
      {
        v26 = *authorized;
      }

      else
      {
        v26 = -1;
      }

      if (error)
      {
        v27 = *error;
      }

      else
      {
        v27 = 0;
      }

      *buf = 67109634;
      *v34 = 0;
      *&v34[4] = 1024;
      *&v34[6] = v26;
      LOWORD(v35[0]) = 2112;
      *(v35 + 2) = v27;
      _os_log_impl(&dword_1C82AD000, v25, OS_LOG_TYPE_ERROR, "BKAccessory::isAuthorized: -> %d, authorized:%d, error:%@\n", buf, 0x18u);
    }

    v23 = 0;
    goto LABEL_27;
  }

  v11 = self->_device->_xpcClient;
  v32 = 0;
  v12 = [(BiometricKitXPCClient *)v11 listAccessories:&v32];
  v13 = v32;
  v14 = v13;
  if (v12)
  {
    [(BKAccessory *)v12 isAuthorized:v12 error:error];
    goto LABEL_30;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        if ([(BKAccessory *)self isEqualToServerAccessory:v19, v28])
        {
          *authorized = ([v19 flags] & 4) != 0;
          goto LABEL_18;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v7;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *authorized;
    if (error)
    {
      v22 = *error;
    }

    else
    {
      v22 = 0;
    }

    *buf = 67109634;
    v23 = 1;
    *v34 = 1;
    *&v34[4] = 1024;
    *&v34[6] = v21;
    LOWORD(v35[0]) = 2112;
    *(v35 + 2) = v22;
    _os_log_impl(&dword_1C82AD000, v20, OS_LOG_TYPE_DEFAULT, "BKAccessory::isAuthorized: -> %d, authorized:%d, error:%@\n", buf, 0x18u);
  }

  else
  {
    v23 = 1;
  }

LABEL_27:

  return v23;
}

- (void)initWithServerAccessory:(void *)a1 device:.cold.1(void *a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }
}

- (id)isConnected:(void *)a3 error:.cold.1(uint64_t a1, void *a2, void *a3)
{
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v5, v6, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v7, v8, v9, v10);
  }

  return setErrorWithOSStatus(a2, a3);
}

- (id)isConnected:(void *)a1 error:.cold.2(void *a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  return setError(1, a1);
}

- (id)isAuthorized:(void *)a3 error:.cold.1(uint64_t a1, void *a2, void *a3)
{
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v5, v6, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v7, v8, v9, v10);
  }

  return setErrorWithOSStatus(a2, a3);
}

- (id)isAuthorized:(void *)a1 error:.cold.2(void *a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  return setError(1, a1);
}

@end
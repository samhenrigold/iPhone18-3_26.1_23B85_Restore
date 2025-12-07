@interface BKAccessoryGroup
- (BKAccessoryGroup)initWithServerAccessoryGroup:(id)group device:(id)device;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccessoryGroup:(id)group;
- (BOOL)isEqualToServerAccessoryGroup:(id)group;
- (id)accessoriesWithError:(id *)error;
- (id)connectedAccessoriesWithError:(id *)error;
- (id)serverAccessoryGroup;
@end

@implementation BKAccessoryGroup

- (BKAccessoryGroup)initWithServerAccessoryGroup:(id)group device:(id)device
{
  groupCopy = group;
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = BKAccessoryGroup;
  v8 = [(BKAccessoryGroup *)&v15 init];
  v9 = v8;
  if (v8)
  {
    if (groupCopy)
    {
      v8->_type = [groupCopy type];
      uuid = [groupCopy uuid];
      uuid = v9->_uuid;
      v9->_uuid = uuid;

      name = [groupCopy name];
      name = v9->_name;
      v9->_name = name;

      objc_storeStrong(&v9->_device, device);
    }

    else
    {
      [BKAccessoryGroup initWithServerAccessoryGroup:v8 device:?];
      v9 = 0;
    }
  }

  return v9;
}

- (id)serverAccessoryGroup
{
  v3 = objc_alloc_init(BiometricKitAccessoryGroup);
  [(BiometricKitAccessoryGroup *)v3 setType:self->_type];
  [(BiometricKitAccessoryGroup *)v3 setUuid:self->_uuid];
  [(BiometricKitAccessoryGroup *)v3 setName:self->_name];

  return v3;
}

- (id)accessoriesWithError:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_device->_xpcClient;
    v7 = v5;
    *buf = 134217984;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_DEFAULT, "BKAccessoryGroup::accessories (_cid:%lu)\n", buf, 0xCu);
  }

  v8 = self->_device->_xpcClient;
  v33 = 0;
  error = [(BiometricKitXPCClient *)v8 listAccessories:&v33, error];
  v10 = v33;
  if (error)
  {
    [(BKAccessoryGroup *)error accessoriesWithError:error, v27];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v28 = v10;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          group = [v17 group];
          v19 = [(BKAccessoryGroup *)self isEqualToServerAccessoryGroup:group];

          if (v19)
          {
            v20 = [[BKAccessory alloc] initWithServerAccessory:v17 device:self->_device];
            [array addObject:v20];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v14);
    }

    v10 = v28;
    v4 = MEMORY[0x1E69E9C10];
    if (array)
    {
      if (__osLogTrace)
      {
        v21 = __osLogTrace;
      }

      else
      {
        v21 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v27;
        if (v27)
        {
          v22 = *v27;
        }

        *buf = 138412546;
        connectionId = array;
        v36 = 2112;
        v37 = v22;
        _os_log_impl(&dword_1C82AD000, v21, OS_LOG_TYPE_DEFAULT, "BKAccessoryGroup::accessories -> %@, error:%@\n", buf, 0x16u);
      }

      goto LABEL_33;
    }
  }

  if (__osLogTrace)
  {
    v23 = __osLogTrace;
  }

  else
  {
    v23 = v4;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = v27;
    if (v27)
    {
      v24 = *v27;
    }

    *buf = 138412546;
    connectionId = 0;
    v36 = 2112;
    v37 = v24;
    _os_log_impl(&dword_1C82AD000, v23, OS_LOG_TYPE_ERROR, "BKAccessoryGroup::accessories -> %@, error:%@\n", buf, 0x16u);
  }

  array = 0;
LABEL_33:

  return array;
}

- (id)connectedAccessoriesWithError:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_device->_xpcClient;
    v7 = v5;
    *buf = 134217984;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_DEFAULT, "BKAccessoryGroup::connectedAccessories (_cid:%lu)\n", buf, 0xCu);
  }

  v8 = self->_device->_xpcClient;
  v32 = 0;
  error = [(BiometricKitXPCClient *)v8 listAccessories:&v32, error];
  v10 = v32;
  if (error)
  {
    [(BKAccessoryGroup *)error connectedAccessoriesWithError:error, v26];
    goto LABEL_27;
  }

  array = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v27 = v10;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = v13;
  v15 = *v29;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v29 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v28 + 1) + 8 * i);
      group = [v17 group];
      if ([(BKAccessoryGroup *)self isEqualToServerAccessoryGroup:group])
      {
        flags = [v17 flags];

        if ((flags & 2) == 0)
        {
          continue;
        }

        group = [[BKAccessory alloc] initWithServerAccessory:v17 device:self->_device];
        [array addObject:group];
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
  }

  while (v14);
LABEL_18:

  v10 = v27;
  v4 = MEMORY[0x1E69E9C10];
  if (array)
  {
    if (__osLogTrace)
    {
      v20 = __osLogTrace;
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v26;
      if (v26)
      {
        v21 = *v26;
      }

      *buf = 138412546;
      connectionId = array;
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_1C82AD000, v20, OS_LOG_TYPE_DEFAULT, "BKAccessoryGroup::connectedAccessories -> %@, error:%@\n", buf, 0x16u);
    }

    goto LABEL_35;
  }

LABEL_27:
  if (__osLogTrace)
  {
    v22 = __osLogTrace;
  }

  else
  {
    v22 = v4;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = v26;
    if (v26)
    {
      v23 = *v26;
    }

    *buf = 138412546;
    connectionId = 0;
    v35 = 2112;
    v36 = v23;
    _os_log_impl(&dword_1C82AD000, v22, OS_LOG_TYPE_ERROR, "BKAccessoryGroup::connectedAccessories -> %@, error:%@\n", buf, 0x16u);
  }

  array = 0;
LABEL_35:

  return array;
}

- (BOOL)isEqualToServerAccessoryGroup:(id)group
{
  groupCopy = group;
  v5 = groupCopy;
  if (groupCopy && (type = self->_type, type == [groupCopy type]))
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

- (BOOL)isEqualToAccessoryGroup:(id)group
{
  groupCopy = group;
  v5 = groupCopy;
  if (groupCopy && self->_type == *(groupCopy + 2))
  {
    v6 = [(NSUUID *)self->_uuid isEqual:*(groupCopy + 2)];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BKAccessoryGroup *)self isEqualToAccessoryGroup:equalCopy];
  }

  return v5;
}

- (void)initWithServerAccessoryGroup:(void *)a1 device:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (__osLog)
  {
    v2 = __osLog;
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    v4 = 0;
    v5 = 2080;
    v6 = &unk_1C82F52EE;
    OUTLINED_FUNCTION_1();
    v7 = 33;
    _os_log_impl(&dword_1C82AD000, v2, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, 0x30u);
  }
}

- (id)accessoriesWithError:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v5, v6, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v7, v8, v9, v10);
  }

  return setErrorWithOSStatus(a2, a3);
}

- (id)connectedAccessoriesWithError:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v5, v6, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v7, v8, v9, v10);
  }

  return setErrorWithOSStatus(a2, a3);
}

@end
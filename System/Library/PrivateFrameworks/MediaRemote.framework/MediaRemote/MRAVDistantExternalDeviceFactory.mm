@interface MRAVDistantExternalDeviceFactory
- (MRAVDistantExternalDeviceFactory)init;
- (NSArray)externalDevices;
- (id)_withLock_createDistantExternalDeviceForEndpoint:(id)endpoint;
- (id)description;
- (id)distantExternalDeviceForEndpoint:(id)endpoint;
- (void)_withLock_purgeCache;
@end

@implementation MRAVDistantExternalDeviceFactory

- (void)_withLock_purgeCache
{
  v3 = [(NSMutableDictionary *)self->_distantExternalDevices copy];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__MRAVDistantExternalDeviceFactory__withLock_purgeCache__block_invoke;
  v4[3] = &unk_1E769F8D8;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __56__MRAVDistantExternalDeviceFactory__withLock_purgeCache__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (([v6 isValid] & 1) == 0)
  {
    v7 = _MRLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRAVDistantExternalDeviceFactory] Purging distantExternalDevice %@ %@", &v8, 0x16u);
    }

    [*(*(a1 + 32) + 8) removeObjectForKey:v5];
  }
}

- (MRAVDistantExternalDeviceFactory)init
{
  v3.receiver = self;
  v3.super_class = MRAVDistantExternalDeviceFactory;
  result = [(MRAVDistantExternalDeviceFactory *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@:%p %@>", objc_opt_class(), self, self->_distantExternalDevices];

  return v2;
}

- (NSArray)externalDevices
{
  os_unfair_lock_lock(&self->_lock);
  allValues = [(NSMutableDictionary *)self->_distantExternalDevices allValues];
  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

- (id)distantExternalDeviceForEndpoint:(id)endpoint
{
  v21 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  os_unfair_lock_lock(&self->_lock);
  [(MRAVDistantExternalDeviceFactory *)self _withLock_purgeCache];
  distantExternalDevices = self->_distantExternalDevices;
  uniqueIdentifier = [endpointCopy uniqueIdentifier];
  v7 = [(NSMutableDictionary *)distantExternalDevices objectForKeyedSubscript:uniqueIdentifier];

  if (v7)
  {
    uniqueIdentifier2 = _MRLogForCategory(0);
    if (os_log_type_enabled(uniqueIdentifier2, OS_LOG_TYPE_DEFAULT))
    {
      debugName = [endpointCopy debugName];
      v17 = 138412546;
      v18 = debugName;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_1A2860000, uniqueIdentifier2, OS_LOG_TYPE_DEFAULT, "[MRAVDistantExternalDeviceFactory] Reusing distantExternalDevice for endpoint %@ %@", &v17, 0x16u);
    }
  }

  else
  {
    v7 = [(MRAVDistantExternalDeviceFactory *)self _withLock_createDistantExternalDeviceForEndpoint:endpointCopy];
    if (v7)
    {
      if (!self->_distantExternalDevices)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v11 = self->_distantExternalDevices;
        self->_distantExternalDevices = v10;
      }

      v12 = _MRLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        debugName2 = [endpointCopy debugName];
        v17 = 138412546;
        v18 = debugName2;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "[MRAVDistantExternalDeviceFactory] Caching distantExternalDevice for endpoint %@ %@", &v17, 0x16u);
      }

      v14 = self->_distantExternalDevices;
      uniqueIdentifier2 = [endpointCopy uniqueIdentifier];
      [(NSMutableDictionary *)v14 setObject:v7 forKeyedSubscript:uniqueIdentifier2];
    }

    else
    {
      uniqueIdentifier2 = _MRLogForCategory(0);
      if (os_log_type_enabled(uniqueIdentifier2, OS_LOG_TYPE_DEFAULT))
      {
        debugName3 = [endpointCopy debugName];
        v17 = 138412546;
        v18 = debugName3;
        v19 = 2112;
        v20 = 0;
        _os_log_impl(&dword_1A2860000, uniqueIdentifier2, OS_LOG_TYPE_DEFAULT, "[MRAVDistantExternalDeviceFactory] Failed to create distantExternalDevice for endpoint %@ %@", &v17, 0x16u);

        v7 = 0;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)_withLock_createDistantExternalDeviceForEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  externalDeviceListenerEndpoint = [endpointCopy externalDeviceListenerEndpoint];
  if (externalDeviceListenerEndpoint)
  {
    v5 = [[MRDistantExternalDevice alloc] initWithExternalDeviceListenerEndpoint:externalDeviceListenerEndpoint endpoint:endpointCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
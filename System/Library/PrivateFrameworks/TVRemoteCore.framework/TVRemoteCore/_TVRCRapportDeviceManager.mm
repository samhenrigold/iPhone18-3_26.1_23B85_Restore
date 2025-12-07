@interface _TVRCRapportDeviceManager
- (BOOL)createOrUpdateDeviceImplForLinkDevice:(id)device;
- (BOOL)removeDeviceImplForLinkDevice:(id)device;
- (_TVRCRapportDeviceManager)init;
- (id)description;
- (id)deviceImplForLinkDevice:(id)device;
- (void)_checkIfDuplicateNameButDifferentIDSIdentifier:(id)identifier linkDevice:(id)device;
@end

@implementation _TVRCRapportDeviceManager

- (_TVRCRapportDeviceManager)init
{
  v6.receiver = self;
  v6.super_class = _TVRCRapportDeviceManager;
  v2 = [(_TVRCRapportDeviceManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceImplMap = v2->_deviceImplMap;
    v2->_deviceImplMap = v3;
  }

  return v2;
}

- (id)deviceImplForLinkDevice:(id)device
{
  v4 = [(_TVRCRapportDeviceManager *)self _identifierForDevice:device];
  if (v4)
  {
    deviceImplMap = [(_TVRCRapportDeviceManager *)self deviceImplMap];
    v6 = [deviceImplMap objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)createOrUpdateDeviceImplForLinkDevice:(id)device
{
  v34 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = _TVRCRapportQueryLog(deviceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    relevantIdentifiers = [deviceCopy relevantIdentifiers];
    v28 = 136315650;
    v29 = "[_TVRCRapportDeviceManager createOrUpdateDeviceImplForLinkDevice:]";
    v30 = 2114;
    v31 = deviceCopy;
    v32 = 2114;
    v33 = relevantIdentifiers;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s linkDevice=%{public}@, allIdentifiers:%{public}@", &v28, 0x20u);
  }

  v7 = [(_TVRCRapportDeviceManager *)self _identifierForDevice:deviceCopy];
  v8 = [(_TVRCRapportDeviceManager *)self deviceImplForLinkDevice:deviceCopy];
  v9 = [TVRCRPCompanionLinkClientWrapper wrapperWithDevice:deviceCopy];
  v10 = v9;
  if (v8)
  {
    v11 = _TVRCRapportQueryLog(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      deviceWrapper = [v8 deviceWrapper];
      device = [deviceWrapper device];
      v28 = 138543618;
      v29 = device;
      v30 = 2114;
      v31 = deviceCopy;
      _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Found existing device = [%{public}@] for device = [%{public}@]", &v28, 0x16u);
    }

    linkType = [v8 linkType];
    linkType2 = [v10 linkType];
    if (linkType != linkType2)
    {
      v16 = _TVRCRapportQueryLog(linkType2);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_26CF7F000, v16, OS_LOG_TYPE_DEFAULT, "Found the same device over a different link. Creating a new device impl", &v28, 2u);
      }
    }

    v17 = [(_TVRCRapportDeviceManager *)self _checkIfDuplicateNameButDifferentIDSIdentifier:v8 linkDevice:deviceCopy];
    v18 = v8;
  }

  else
  {
    v18 = [TVRCRapportDeviceImpl implWithDevice:v9];
    v19 = _TVRCRapportQueryLog(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      deviceImplMap = [(_TVRCRapportDeviceManager *)self deviceImplMap];
      v28 = 138543618;
      v29 = deviceCopy;
      v30 = 2114;
      v31 = deviceImplMap;
      _os_log_impl(&dword_26CF7F000, v19, OS_LOG_TYPE_DEFAULT, "Creating new device impl with device=%{public}@, deviceRecords=%{public}@", &v28, 0x16u);
    }
  }

  v21 = _TVRCRapportQueryLog(v17);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    deviceImplMap2 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
    v28 = 138412290;
    v29 = deviceImplMap2;
    _os_log_impl(&dword_26CF7F000, v21, OS_LOG_TYPE_DEFAULT, "Before adding - DeviceImplMap: %@", &v28, 0xCu);
  }

  deviceImplMap3 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
  [deviceImplMap3 setObject:v18 forKey:v7];

  v25 = _TVRCRapportQueryLog(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    deviceImplMap4 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
    v28 = 138412290;
    v29 = deviceImplMap4;
    _os_log_impl(&dword_26CF7F000, v25, OS_LOG_TYPE_DEFAULT, "After adding - DeviceImplMap: %@", &v28, 0xCu);
  }

  return v8 == 0;
}

- (BOOL)removeDeviceImplForLinkDevice:(id)device
{
  v30 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = _TVRCRapportQueryLog(deviceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136315394;
    v27 = "[_TVRCRapportDeviceManager removeDeviceImplForLinkDevice:]";
    v28 = 2114;
    v29 = deviceCopy;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s device=%{public}@", &v26, 0x16u);
  }

  v6 = [(_TVRCRapportDeviceManager *)self _identifierForDevice:deviceCopy];
  deviceImplMap = [(_TVRCRapportDeviceManager *)self deviceImplMap];
  v8 = [deviceImplMap objectForKey:v6];

  v10 = _TVRCRapportQueryLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [deviceCopy identifier];
    v26 = 138412546;
    v27 = v8;
    v28 = 2112;
    v29 = identifier;
    _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Device impl to be removed = %@ for device id = %@", &v26, 0x16u);
  }

  if (v8 && ([v8 name], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(deviceCopy, "name"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToString:", v14), v14, v13, v15))
  {
    v16 = _TVRCRapportQueryLog(v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      deviceImplMap2 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
      v26 = 138412290;
      v27 = deviceImplMap2;
      _os_log_impl(&dword_26CF7F000, v16, OS_LOG_TYPE_DEFAULT, "Before removing - DeviceImplMap: %@", &v26, 0xCu);
    }

    deviceImplMap3 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
    [deviceImplMap3 removeObjectForKey:v6];

    v20 = _TVRCRapportQueryLog(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      deviceImplMap4 = [(_TVRCRapportDeviceManager *)self deviceImplMap];
      v26 = 138412290;
      v27 = deviceImplMap4;
      _os_log_impl(&dword_26CF7F000, v20, OS_LOG_TYPE_DEFAULT, "After removing - DeviceImplMap: %@", &v26, 0xCu);
    }

    v23 = _TVRCRapportQueryLog(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138543362;
      v27 = v6;
      _os_log_impl(&dword_26CF7F000, v23, OS_LOG_TYPE_DEFAULT, "Removed %{public}@", &v26, 0xCu);
    }

    v24 = 1;
  }

  else
  {
    v23 = _TVRCRapportQueryLog(v12);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(_TVRCRapportDeviceManager *)deviceCopy removeDeviceImplForLinkDevice:v23];
    }

    v24 = 0;
  }

  return v24;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  deviceImplMap = [(_TVRCRapportDeviceManager *)self deviceImplMap];
  v5 = [v3 appendObject:deviceImplMap withName:@"deviceImplMap"];

  build = [v3 build];

  return build;
}

- (void)_checkIfDuplicateNameButDifferentIDSIdentifier:(id)identifier linkDevice:(id)device
{
  deviceCopy = device;
  deviceWrapper = [identifier deviceWrapper];
  identifier = [deviceWrapper identifier];
  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];

  LOBYTE(deviceCopy) = [identifier isEqualToString:idsDeviceIdentifier];
  if ((deviceCopy & 1) == 0)
  {
    v10 = _TVRCRapportQueryLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [_TVRCRapportDeviceManager _checkIfDuplicateNameButDifferentIDSIdentifier:v10 linkDevice:?];
    }
  }
}

- (void)removeDeviceImplForLinkDevice:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = [a2 deviceImplMap];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(&dword_26CF7F000, a3, OS_LOG_TYPE_ERROR, "Asked to remove device we don't already know about, device=%{public}@. devices:%@", v5, 0x16u);
}

@end
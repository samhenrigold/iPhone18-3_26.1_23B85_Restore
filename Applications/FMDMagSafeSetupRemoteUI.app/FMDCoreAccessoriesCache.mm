@interface FMDCoreAccessoriesCache
- (BOOL)isCachedAccessoryWithUUID:(id)d;
- (FMDCoreAccessoriesCache)init;
- (id)accessoriesRawInfo;
- (id)getAccessoryWithUUID:(id)d;
- (void)_cleanupDuplicationsOfAccessoryWithSerialNumber:(id)number currentAccessoryUUID:(id)d;
- (void)accessoryDidUpdateWithUUID:(id)d;
- (void)deleteAccessoryWithUUID:(id)d;
- (void)saveAccessory:(id)accessory withUUID:(id)d;
@end

@implementation FMDCoreAccessoriesCache

- (FMDCoreAccessoriesCache)init
{
  v6.receiver = self;
  v6.super_class = FMDCoreAccessoriesCache;
  v2 = [(FMDCoreAccessoriesCache *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    accessoryRawInfo = v2->_accessoryRawInfo;
    v2->_accessoryRawInfo = v3;
  }

  return v2;
}

- (id)accessoriesRawInfo
{
  accessoryRawInfo = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
  v3 = [accessoryRawInfo copy];

  return v3;
}

- (id)getAccessoryWithUUID:(id)d
{
  dCopy = d;
  accessoryRawInfo = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
  v6 = [accessoryRawInfo objectForKeyedSubscript:dCopy];

  return v6;
}

- (BOOL)isCachedAccessoryWithUUID:(id)d
{
  dCopy = d;
  accessoryRawInfo = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
  v6 = [accessoryRawInfo objectForKeyedSubscript:dCopy];

  return v6 != 0;
}

- (void)saveAccessory:(id)accessory withUUID:(id)d
{
  dCopy = d;
  accessoryCopy = accessory;
  serialNumber = [accessoryCopy serialNumber];
  [(FMDCoreAccessoriesCache *)self _cleanupDuplicationsOfAccessoryWithSerialNumber:serialNumber currentAccessoryUUID:dCopy];

  accessoryRawInfo = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
  [accessoryRawInfo setObject:accessoryCopy forKeyedSubscript:dCopy];
}

- (void)accessoryDidUpdateWithUUID:(id)d
{
  dCopy = d;
  accessoryRawInfo = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
  v5 = [accessoryRawInfo objectForKeyedSubscript:dCopy];
  serialNumber = [v5 serialNumber];
  [(FMDCoreAccessoriesCache *)self _cleanupDuplicationsOfAccessoryWithSerialNumber:serialNumber currentAccessoryUUID:dCopy];
}

- (void)deleteAccessoryWithUUID:(id)d
{
  dCopy = d;
  accessoryRawInfo = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
  [accessoryRawInfo removeObjectForKey:dCopy];
}

- (void)_cleanupDuplicationsOfAccessoryWithSerialNumber:(id)number currentAccessoryUUID:(id)d
{
  numberCopy = number;
  dCopy = d;
  if (numberCopy && [numberCopy length])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_100001D34;
    v22 = sub_100001D44;
    v23 = objc_opt_new();
    accessoryRawInfo = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100001D4C;
    v14[3] = &unk_100038640;
    v9 = numberCopy;
    v15 = v9;
    v16 = dCopy;
    v17 = &v18;
    [accessoryRawInfo enumerateKeysAndObjectsUsingBlock:v14];

    v10 = [v19[5] count];
    if (v10)
    {
      v11 = sub_100002400(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v19[5] count];
        *buf = 134218242;
        v25 = v12;
        v26 = 2112;
        v27 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "FMDCoreAccessoriesCache removing %lu duplications of accessory with %@ serial number", buf, 0x16u);
      }
    }

    accessoryRawInfo2 = [(FMDCoreAccessoriesCache *)self accessoryRawInfo];
    [accessoryRawInfo2 removeObjectsForKeys:v19[5]];

    _Block_object_dispose(&v18, 8);
  }
}

@end
@interface _LSCoreTypesRecordProxy
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isKindOfClass:(Class)class;
- (LSBundleRecord)_realRecord;
- (id)URL;
- (id)_loadRealRecord;
- (id)debugDescription;
- (id)description;
- (id)serviceRecords;
- (unint64_t)hash;
- (void)detach;
- (void)forwardInvocation:(id)invocation;
@end

@implementation _LSCoreTypesRecordProxy

- (id)URL
{
  v2 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/System/Library/CoreServices/MobileCoreTypes.bundle" isDirectory:1];

  return v2;
}

- (void)detach
{
  if (_LSCurrentProcessMayMapDatabase())
  {
    os_unfair_lock_lock(&LaunchServices::Record::coreTypesProxyLock);
    obj = [(LSBundleRecord *)self->_realRecord copy];
    if (obj)
    {
      objc_storeStrong(&self->_realRecord, obj);
    }

    os_unfair_lock_unlock(&LaunchServices::Record::coreTypesProxyLock);
    [obj detach];
  }
}

- (id)_loadRealRecord
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__9;
  v33 = __Block_byref_object_dispose__9;
  v34 = 0;
  WeakRetained = objc_loadWeakRetained(&LaunchServices::Record::weakCoreTypesRecord);
  if (WeakRetained)
  {
    objc_storeStrong(v30 + 5, WeakRetained);
  }

  else
  {
    MayMapDatabase = _LSCurrentProcessMayMapDatabase();
    if (MayMapDatabase)
    {
      CurrentContext = _LSDatabaseContextGetCurrentContext(MayMapDatabase);
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v4 = +[_LSDServiceDomain defaultServiceDomain];
      v5 = LaunchServices::Database::Context::_get(&CurrentContext, v4, 0);

      if (v5)
      {
        v21 = 0;
        v22 = &v21;
        v23 = 0x2020000000;
        v24 = 0;
        v17 = 0;
        v18 = &v17;
        v19 = 0x2020000000;
        v20 = 0;
        [(_LSDatabase *)*v5 store];
        [(_LSDatabase *)*v5 schema];
        v16[5] = MEMORY[0x1E69E9820];
        v16[6] = 3221225472;
        v16[7] = __42___LSCoreTypesRecordProxy__loadRealRecord__block_invoke;
        v16[8] = &unk_1E6A1AFB8;
        v16[9] = &v17;
        v16[10] = &v21;
        _CSStoreEnumerateUnits();
        if (*(v22 + 6))
        {
          v6 = [[FSNode alloc] initWithPath:@"/System/Library/CoreServices/MobileCoreTypes.bundle" flags:8 error:0];
          v7 = [LSBundleRecord alloc];
          schema = [(_LSDatabase *)*v5 schema];
          v9 = [(LSBundleRecord *)v7 _initWithNode:v6 bundleIdentifier:@"com.apple.mobilecoretypes" context:v5 tableID:*(schema + 4) unitID:*(v22 + 6) bundleBaseData:v18[3] error:0];
          v10 = v30[5];
          v30[5] = v9;
        }

        _Block_object_dispose(&v17, 8);
        _Block_object_dispose(&v21, 8);
      }

      if (CurrentContext && v27 == 1)
      {
        _LSContextDestroy(CurrentContext);
      }

      v11 = v26;
      CurrentContext = 0;
      v26 = 0;

      v27 = 0;
      v12 = v28;
      v28 = 0;
    }

    else
    {
      v13 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __42___LSCoreTypesRecordProxy__loadRealRecord__block_invoke_3;
      v16[3] = &unk_1E6A1AFE0;
      v16[4] = &v29;
      [v13 getBundleRecordForCoreTypesWithCompletionHandler:v16];
    }

    LaunchServices::Record::storeWeakSharedRecord(v30[5], &LaunchServices::Record::weakCoreTypesRecord);
  }

  v14 = v30[5];
  _Block_object_dispose(&v29, 8);

  return v14;
}

- (LSBundleRecord)_realRecord
{
  os_unfair_lock_lock(&LaunchServices::Record::coreTypesProxyLock);
  realRecord = self->_realRecord;
  if (!realRecord)
  {
    _loadRealRecord = [(_LSCoreTypesRecordProxy *)self _loadRealRecord];
    v5 = self->_realRecord;
    self->_realRecord = _loadRealRecord;

    realRecord = self->_realRecord;
  }

  v6 = realRecord;
  os_unfair_lock_unlock(&LaunchServices::Record::coreTypesProxyLock);

  return v6;
}

- (id)serviceRecords
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFD8]);

  return v2;
}

- (void)forwardInvocation:(id)invocation
{
  v4 = -[_LSCoreTypesRecordProxy forwardingTargetForSelector:](self, "forwardingTargetForSelector:", [invocation selector]);
  [invocation setTarget:?];
  [invocation invoke];
}

- (unint64_t)hash
{
  v2 = [(_LSCoreTypesRecordProxy *)self URL];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self || ([equal isMemberOfClass:objc_opt_class()] & 1) != 0)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [equal isMemberOfClass:objc_opt_class()];
    if (v5)
    {

      LOBYTE(v5) = [equal isEqual:self];
    }
  }

  return v5;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p>", objc_opt_class(), self];

  return v2;
}

- (id)debugDescription
{
  os_unfair_lock_lock(&LaunchServices::Record::coreTypesProxyLock);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  if (self->_realRecord)
  {
    v5 = @"yes";
  }

  else
  {
    v5 = @"no";
  }

  v6 = [v3 initWithFormat:@"<%@ %p> { resolved: %@ }", v4, self, v5];
  os_unfair_lock_unlock(&LaunchServices::Record::coreTypesProxyLock);

  return v6;
}

- (BOOL)isKindOfClass:(Class)class
{
  Class = object_getClass(self);
  if (Class)
  {
    while (Class != class)
    {
      Class = class_getSuperclass(Class);
      if (!Class)
      {
        goto LABEL_4;
      }
    }

    return 1;
  }

  else
  {
LABEL_4:

    return [LSBundleRecord isSubclassOfClass:class];
  }
}

- (BOOL)conformsToProtocol:(id)protocol
{
  v4 = objc_opt_class();
  if (class_conformsToProtocol(v4, protocol))
  {
    return 1;
  }

  v6 = objc_opt_class();

  return class_conformsToProtocol(v6, protocol);
}

@end
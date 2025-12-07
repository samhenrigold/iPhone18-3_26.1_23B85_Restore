@interface GCDeviceOnDiskDB
@end

@implementation GCDeviceOnDiskDB

_GCDeviceDBBundle *__37___GCDeviceOnDiskDB_initWithBundles___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _gc_log_devicedb(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __37___GCDeviceOnDiskDB_initWithBundles___block_invoke_cold_1(v2, v3);
  }

  v9 = 0;
  v4 = [[_GCDeviceDBBundle alloc] initWithBundle:v2 error:&v9];
  v5 = v9;
  v6 = v5;
  if (!v4)
  {
    v7 = _gc_log_devicedb(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __37___GCDeviceOnDiskDB_initWithBundles___block_invoke_cold_2();
    }
  }

  return v4;
}

void __37___GCDeviceOnDiskDB_initWithBundles___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a1 bundleURL];
  v5 = [v4 path];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&dword_1D2C3B000, a2, OS_LOG_TYPE_DEBUG, "Loading bundle '%{public}@' at '%{public}@'...", &v6, 0x16u);
}

@end
@interface _GCDeviceOnDiskDB
- (_GCDeviceOnDiskDB)initWithBundles:(id)bundles;
- (id)bestModelMatchingDevice:(id)device;
@end

@implementation _GCDeviceOnDiskDB

- (_GCDeviceOnDiskDB)initWithBundles:(id)bundles
{
  bundlesCopy = bundles;
  if (!bundlesCopy)
  {
    [(_GCDeviceOnDiskDB *)a2 initWithBundles:?];
  }

  v12.receiver = self;
  v12.super_class = _GCDeviceOnDiskDB;
  v6 = [(_GCDeviceOnDiskDB *)&v12 init];
  v7 = [bundlesCopy copy];
  configurationBundles = v6->_configurationBundles;
  v6->_configurationBundles = v7;

  v9 = [bundlesCopy gc_arrayByTransformingElementsWithOptions:1 usingBlock:&__block_literal_global_8];
  bundles = v6->_bundles;
  v6->_bundles = v9;

  return v6;
}

- (id)bestModelMatchingDevice:(id)device
{
  v77 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v5 = _gc_log_devicedb(deviceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_GCDeviceOnDiskDB *)deviceCopy bestModelMatchingDevice:v5];
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = self->_bundles;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v67 objects:v76 count:16];
  v48 = v6;
  if (v6)
  {
    v7 = *v68;
    v45 = *v68;
    do
    {
      v8 = 0;
      do
      {
        if (*v68 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v67 + 1) + 8 * v8);
        v9 = _gc_log_devicedb(v6);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v73 = v47;
          _os_log_debug_impl(&dword_1D2C3B000, v9, OS_LOG_TYPE_DEBUG, "  > Searching bundle '%{public}@'...", buf, 0xCu);
        }

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        devices = [v47 devices];
        v10 = [devices countByEnumeratingWithState:&v63 objects:v75 count:16];
        v11 = v10;
        if (v10)
        {
          v12 = *v64;
          v46 = *v64;
          do
          {
            v13 = 0;
            do
            {
              if (*v64 != v12)
              {
                objc_enumerationMutation(devices);
              }

              v14 = *(*(&v63 + 1) + 8 * v13);
              v15 = _gc_log_devicedb(v10);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v73 = v14;
                _os_log_debug_impl(&dword_1D2C3B000, v15, OS_LOG_TYPE_DEBUG, "    > Trying '%{public}@'...", buf, 0xCu);
              }

              ioMatchingPredicates = [v14 ioMatchingPredicates];
              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              v17 = ioMatchingPredicates;
              v18 = [v17 countByEnumeratingWithState:&v59 objects:v74 count:16];
              if (v18)
              {
                v19 = *v60;
                while (2)
                {
                  for (i = 0; i != v18; ++i)
                  {
                    if (*v60 != v19)
                    {
                      objc_enumerationMutation(v17);
                    }

                    if ([*(*(&v59 + 1) + 8 * i) evaluateWithObject:deviceCopy])
                    {

                      v28 = _gc_log_devicedb(v27);
                      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                      {
                        [(_GCDeviceOnDiskDB *)v14 bestModelMatchingDevice:v28];
                      }

                      v57 = 0u;
                      v58 = 0u;
                      v55 = 0u;
                      v56 = 0u;
                      personalities = [v14 personalities];
                      v30 = [personalities countByEnumeratingWithState:&v55 objects:v71 count:16];
                      v31 = v30;
                      if (v30)
                      {
                        v32 = *v56;
                        while (2)
                        {
                          v33 = 0;
                          do
                          {
                            if (*v56 != v32)
                            {
                              objc_enumerationMutation(personalities);
                            }

                            v34 = *(*(&v55 + 1) + 8 * v33);
                            v35 = _gc_log_devicedb(v30);
                            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                            {
                              *buf = 138543362;
                              v73 = v34;
                              _os_log_debug_impl(&dword_1D2C3B000, v35, OS_LOG_TYPE_DEBUG, "      > Trying %{public}@...", buf, 0xCu);
                            }

                            ioMatchingPredicate = [v34 ioMatchingPredicate];
                            v37 = ioMatchingPredicate;
                            if (!ioMatchingPredicate)
                            {
                              goto LABEL_51;
                            }

                            v38 = _gc_log_devicedb(ioMatchingPredicate);
                            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                            {
                              [(_GCDeviceOnDiskDB *)&v53 bestModelMatchingDevice:v54, v38];
                            }

                            ioMatchingPredicate = [v37 evaluateWithObject:deviceCopy];
                            if (ioMatchingPredicate)
                            {
LABEL_51:
                              v41 = _gc_log_devicedb(ioMatchingPredicate);
                              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                              {
                                [(_GCDeviceOnDiskDB *)v41 bestModelMatchingDevice:v42, v43];
                              }

                              model = [v34 model];

                              goto LABEL_54;
                            }

                            v39 = _gc_log_devicedb(ioMatchingPredicate);
                            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                            {
                              [(_GCDeviceOnDiskDB *)&v51 bestModelMatchingDevice:v52, v39];
                            }

                            ++v33;
                          }

                          while (v31 != v33);
                          v30 = [personalities countByEnumeratingWithState:&v55 objects:v71 count:16];
                          v31 = v30;
                          if (v30)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      personalities = _gc_log_devicedb(v40);
                      if (os_log_type_enabled(personalities, OS_LOG_TYPE_FAULT))
                      {
                        [_GCDeviceOnDiskDB bestModelMatchingDevice:];
                      }

                      model = 0;
LABEL_54:

                      v23 = obj;
                      goto LABEL_56;
                    }
                  }

                  v18 = [v17 countByEnumeratingWithState:&v59 objects:v74 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              ++v13;
              v12 = v46;
            }

            while (v13 != v11);
            v10 = [devices countByEnumeratingWithState:&v63 objects:v75 count:16];
            v11 = v10;
            v12 = v46;
          }

          while (v10);
        }

        ++v8;
        v7 = v45;
      }

      while (v8 != v48);
      v6 = [(NSArray *)obj countByEnumeratingWithState:&v67 objects:v76 count:16];
      v48 = v6;
      v7 = v45;
    }

    while (v6);
  }

  v22 = _gc_log_devicedb(v21);
  v23 = v22;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [(_GCDeviceOnDiskDB *)v22 bestModelMatchingDevice:v24, v25];
    model = 0;
    v23 = v22;
  }

  else
  {
    model = 0;
  }

LABEL_56:

  return model;
}

- (void)initWithBundles:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCDeviceOnDiskDB.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %s", "configurationBundles != nil"}];
}

- (void)bestModelMatchingDevice:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 debugDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1D2C3B000, a2, OS_LOG_TYPE_DEBUG, "Find model for device %@", &v4, 0xCu);
}

- (void)bestModelMatchingDevice:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1D2C3B000, a2, OS_LOG_TYPE_DEBUG, "    > Matched %{public}@.  Checking personalities...", &v2, 0xCu);
}

- (void)bestModelMatchingDevice:(NSObject *)a3 .cold.3(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_2_6(&dword_1D2C3B000, a3, a3, "        > Checking IO property requirements...", a1);
}

- (void)bestModelMatchingDevice:(NSObject *)a3 .cold.4(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_2_6(&dword_1D2C3B000, a3, a3, "        > Failed IO property requirements...", a1);
}

@end
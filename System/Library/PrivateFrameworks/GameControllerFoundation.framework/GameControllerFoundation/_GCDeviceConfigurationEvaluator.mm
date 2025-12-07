@interface _GCDeviceConfigurationEvaluator
- (unint64_t)viableConfigurations:(id *)configurations deviceOwners:(id *)owners;
- (void)evaluate;
@end

@implementation _GCDeviceConfigurationEvaluator

- (unint64_t)viableConfigurations:(id *)configurations deviceOwners:(id *)owners
{
  v113 = *MEMORY[0x1E69E9840];
  configurationsIN = [(_GCDeviceConfigurationEvaluator *)self configurationsIN];
  allObjects = [configurationsIN allObjects];

  selfCopy = self;
  physicalDevicesIN = [(_GCDeviceConfigurationEvaluator *)self physicalDevicesIN];
  v7 = _gc_log_device_configuration(physicalDevicesIN);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_GCDeviceConfigurationEvaluator viableConfigurations:deviceOwners:];
  }

  v9 = _gc_log_device_configuration(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [_GCDeviceConfigurationEvaluator viableConfigurations:physicalDevicesIN deviceOwners:?];
  }

  v82 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allObjects, "count")}];
  v10 = _gc_log_device_configuration(v82);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_GCDeviceConfigurationEvaluator viableConfigurations:deviceOwners:];
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = allObjects;
  v11 = [obj countByEnumeratingWithState:&v101 objects:v112 count:16];
  if (v11)
  {
    v12 = v11;
    v84 = *v102;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v102 != v84)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v101 + 1) + 8 * i);
        deviceManagersIN = [(_GCDeviceConfigurationEvaluator *)selfCopy deviceManagersIN];
        deviceBuilderIdentifier = [v14 deviceBuilderIdentifier];
        v17 = [deviceManagersIN objectForKey:deviceBuilderIdentifier];

        if (v17)
        {
          deviceDependencies = [v14 deviceDependencies];
          v20 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(deviceDependencies, "count")}];
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v21 = deviceDependencies;
          v22 = [v21 countByEnumeratingWithState:&v97 objects:v111 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v98;
LABEL_15:
            v25 = 0;
            while (1)
            {
              if (*v98 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = [physicalDevicesIN objectForKey:*(*(&v97 + 1) + 8 * v25)];
              if (!v26)
              {
                break;
              }

              v27 = v26;
              [v20 addObject:v26];

              if (v23 == ++v25)
              {
                v23 = [v21 countByEnumeratingWithState:&v97 objects:v111 count:16];
                if (v23)
                {
                  goto LABEL_15;
                }

                break;
              }
            }
          }

          v28 = [v21 count];
          v29 = [v20 count];
          if (v28 == v29)
          {
            [v82 addObject:v14];
          }

          else
          {
            v30 = _gc_log_device_configuration(v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v106 = v14;
              _os_log_debug_impl(&dword_1D2C3B000, v30, OS_LOG_TYPE_DEBUG, "Eliminating configuration because a dependency is missing: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v21 = _gc_log_device_configuration(v18);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v106 = v14;
            _os_log_debug_impl(&dword_1D2C3B000, v21, OS_LOG_TYPE_DEBUG, "Eliminating configuration because its manager is not registered: %@", buf, 0xCu);
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v101 objects:v112 count:16];
    }

    while (v12);
  }

  v31 = _gc_log_device_configuration([v82 sortUsingComparator:&__block_literal_global_0]);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    [_GCDeviceConfigurationEvaluator viableConfigurations:deviceOwners:];
  }

  v32 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v82, "count")}];
  v33 = _gc_log_device_configuration(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    [_GCDeviceConfigurationEvaluator viableConfigurations:deviceOwners:];
  }

  v34 = [v82 count];
  if (!v34)
  {
    goto LABEL_74;
  }

  *&v35 = 138412290;
  v75 = v35;
  do
  {
    v79 = v34;
    [v32 removeAllObjects];
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    allKeys = [physicalDevicesIN allKeys];
    v37 = [allKeys countByEnumeratingWithState:&v93 objects:v110 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v94;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v94 != v39)
          {
            objc_enumerationMutation(allKeys);
          }

          v41 = *(*(&v93 + 1) + 8 * j);
          null = [MEMORY[0x1E695DFB0] null];
          [v32 setObject:null forKey:v41];
        }

        v38 = [allKeys countByEnumeratingWithState:&v93 objects:v110 count:16];
      }

      while (v38);
    }

    v43 = v82;
    if (![v82 count])
    {
      goto LABEL_73;
    }

    v44 = 0;
    while (1)
    {
      v45 = [v43 objectAtIndexedSubscript:v44];
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v85 = v45;
      deviceDependencies2 = [v45 deviceDependencies];
      v47 = [deviceDependencies2 countByEnumeratingWithState:&v89 objects:v109 count:16];
      if (v47)
      {
        v48 = v47;
        v80 = v44;
        v49 = *v90;
        while (2)
        {
          for (k = 0; k != v48; ++k)
          {
            if (*v90 != v49)
            {
              objc_enumerationMutation(deviceDependencies2);
            }

            v51 = *(*(&v89 + 1) + 8 * k);
            v52 = [v32 objectForKey:v51];
            null2 = [MEMORY[0x1E695DFB0] null];
            v54 = [v52 isEqual:null2];

            if ((v54 & 1) == 0)
            {
              v57 = _gc_log_device_configuration(v55);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v106 = v51;
                v107 = 2112;
                v108 = v85;
                _os_log_debug_impl(&dword_1D2C3B000, v57, OS_LOG_TYPE_DEBUG, "Eliminating configuration because device dependency with identifier '%@' has already been claimed: %@", buf, 0x16u);
              }

              v56 = 0;
              goto LABEL_58;
            }

            [v32 setObject:v85 forKey:v51];
          }

          v48 = [deviceDependencies2 countByEnumeratingWithState:&v89 objects:v109 count:16];
          if (v48)
          {
            continue;
          }

          break;
        }

        v56 = 1;
LABEL_58:
        v44 = v80;
      }

      else
      {
        v56 = 1;
      }

      deviceManagersIN2 = [(_GCDeviceConfigurationEvaluator *)selfCopy deviceManagersIN];
      deviceBuilderIdentifier2 = [v85 deviceBuilderIdentifier];
      v60 = [deviceManagersIN2 objectForKey:deviceBuilderIdentifier2];

      if (v60)
      {
        if (!v56)
        {
          goto LABEL_72;
        }
      }

      else
      {
        [_GCDeviceConfigurationEvaluator viableConfigurations:a2 deviceOwners:selfCopy];
        if (!v56)
        {
          goto LABEL_72;
        }
      }

      v43 = v82;
      if (objc_opt_respondsToSelector())
      {
        break;
      }

LABEL_65:

      if (++v44 >= [v82 count])
      {
        goto LABEL_73;
      }
    }

    deviceDependencies3 = [v85 deviceDependencies];
    null3 = [MEMORY[0x1E695DFB0] null];
    v63 = [physicalDevicesIN objectsForKeys:deviceDependencies3 notFoundMarker:null3];

    v64 = [MEMORY[0x1E695DFD8] setWithArray:v63];
    LODWORD(null3) = [v60 canMakeDeviceWithConfiguration:v85 dependencies:v64];

    if (null3)
    {

      goto LABEL_65;
    }

    v66 = _gc_log_device_configuration(v65);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      *buf = v75;
      v106 = v85;
      _os_log_debug_impl(&dword_1D2C3B000, v66, OS_LOG_TYPE_DEBUG, "Eliminating configuration because its manager can not make the device: %@", buf, 0xCu);
    }

LABEL_72:
    [v82 removeObjectAtIndex:v44];

LABEL_73:
    v34 = v79 - 1;
  }

  while (v79 != 1);
LABEL_74:
  v67 = _gc_log_device_configuration(v34);
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
  {
    [_GCDeviceConfigurationEvaluator viableConfigurations:deviceOwners:];
  }

  v69 = _gc_log_device_configuration(v68);
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
  {
    [_GCDeviceConfigurationEvaluator viableConfigurations:v82 deviceOwners:?];
  }

  v70 = _gc_log_device_configuration([v82 enumerateObjectsUsingBlock:&__block_literal_global_13]);
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
  {
    [_GCDeviceConfigurationEvaluator viableConfigurations:deviceOwners:];
  }

  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __69___GCDeviceConfigurationEvaluator_viableConfigurations_deviceOwners___block_invoke_14;
  v87[3] = &unk_1E8413CC0;
  v88 = physicalDevicesIN;
  v71 = physicalDevicesIN;
  [v32 enumerateKeysAndObjectsUsingBlock:v87];
  if (configurations)
  {
    *configurations = v82;
  }

  if (owners)
  {
    v72 = v32;
    *owners = v32;
  }

  v73 = [v82 count];

  return v73;
}

- (void)evaluate
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)viableConfigurations:deviceOwners:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)viableConfigurations:(void *)a1 deviceOwners:.cold.2(void *a1)
{
  v1 = [a1 allValues];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0(&dword_1D2C3B000, v2, v3, "Devices: %@", v4, v5, v6, v7);
}

- (void)viableConfigurations:deviceOwners:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)viableConfigurations:deviceOwners:.cold.4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)viableConfigurations:deviceOwners:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)viableConfigurations:(uint64_t)a1 deviceOwners:(uint64_t)a2 .cold.6(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCDeviceConfigurationEvaluator.m" lineNumber:128 description:{@"Bug in %s", "-[_GCDeviceConfigurationEvaluator viableConfigurations:deviceOwners:]"}];
}

- (void)viableConfigurations:deviceOwners:.cold.7()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)viableConfigurations:(void *)a1 deviceOwners:.cold.8(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0(&dword_1D2C3B000, v1, v2, "Viable Configurations (%llu):", v3, v4, v5, v6);
}

- (void)viableConfigurations:deviceOwners:.cold.9()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end
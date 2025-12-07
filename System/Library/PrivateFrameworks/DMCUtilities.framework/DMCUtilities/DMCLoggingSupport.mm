@interface DMCLoggingSupport
- (void)dealloc;
- (void)enableDebugLoggingForProcesses:(id)processes;
- (void)enableDebugLoggingForSubsystems:(id)subsystems;
- (void)resetAll;
@end

@implementation DMCLoggingSupport

- (void)enableDebugLoggingForProcesses:(id)processes
{
  v49 = *MEMORY[0x1E69E9840];
  processesCopy = processes;
  if (+[DMCFeatureFlags isAppleInternal])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v31 = processesCopy;
    obj = processesCopy;
    v5 = [obj countByEnumeratingWithState:&v34 objects:v48 count:16];
    if (!v5)
    {
      goto LABEL_24;
    }

    v6 = v5;
    v7 = *v35;
    v8 = 0x1E69AD000uLL;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        processes = [(DMCLoggingSupport *)self processes];

        if (!processes)
        {
          v12 = objc_opt_new();
          [(DMCLoggingSupport *)self setProcesses:v12];
        }

        processes2 = [(DMCLoggingSupport *)self processes];
        v14 = [processes2 objectForKeyedSubscript:v10];

        if (!v14)
        {
          v15 = [objc_alloc(*(v8 + 992)) initWithBundleID:v10];
          enabledLevel = [v15 enabledLevel];
          if (enabledLevel == 1 && (enabledLevel = [v15 persistedLevel], enabledLevel == 1))
          {
            if ([v15 effectivePersistedLevel] == 4)
            {
              v19 = *DMCLogObjects(4, v18);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v39 = v10;
                _os_log_impl(&dword_1B1630000, v19, OS_LOG_TYPE_DEBUG, "Log level for process %@ is debug already", buf, 0xCu);
              }

              goto LABEL_21;
            }

            v28 = [v15 setPersistedLevel:4];
            v30 = *DMCLogObjects(v28, v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v39 = v10;
              _os_log_impl(&dword_1B1630000, v30, OS_LOG_TYPE_DEBUG, "Enabled debug log for process %@", buf, 0xCu);
            }

            processes3 = [(DMCLoggingSupport *)self processes];
            [processes3 setObject:v15 forKeyedSubscript:v10];
LABEL_20:
          }

          else
          {
            v20 = *DMCLogObjects(enabledLevel, v17);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              log = v20;
              v21 = v7;
              effectiveEnabledLevel = [v15 effectiveEnabledLevel];
              v23 = v8;
              enabledLevel2 = [v15 enabledLevel];
              effectivePersistedLevel = [v15 effectivePersistedLevel];
              persistedLevel = [v15 persistedLevel];
              *buf = 138413314;
              v39 = v10;
              v40 = 2048;
              v41 = effectiveEnabledLevel;
              v7 = v21;
              v42 = 2048;
              v43 = enabledLevel2;
              v8 = v23;
              v44 = 2048;
              v45 = effectivePersistedLevel;
              v46 = 2048;
              v47 = persistedLevel;
              processes3 = log;
              _os_log_impl(&dword_1B1630000, log, OS_LOG_TYPE_DEBUG, "Log level for process %@ has been configured (effectiveEnabledLevel: %ld, enabledLevel: %ld, effectivePersistedLevel: %ld, persistedLevel: %ld, ", buf, 0x34u);
              goto LABEL_20;
            }
          }

LABEL_21:

          continue;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v34 objects:v48 count:16];
      if (!v6)
      {
LABEL_24:

        processesCopy = v31;
        break;
      }
    }
  }
}

- (void)enableDebugLoggingForSubsystems:(id)subsystems
{
  v49 = *MEMORY[0x1E69E9840];
  subsystemsCopy = subsystems;
  if (+[DMCFeatureFlags isAppleInternal])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v31 = subsystemsCopy;
    obj = subsystemsCopy;
    v5 = [obj countByEnumeratingWithState:&v34 objects:v48 count:16];
    if (!v5)
    {
      goto LABEL_24;
    }

    v6 = v5;
    v7 = *v35;
    v8 = 0x1E69AD000uLL;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        subsystems = [(DMCLoggingSupport *)self subsystems];

        if (!subsystems)
        {
          v12 = objc_opt_new();
          [(DMCLoggingSupport *)self setSubsystems:v12];
        }

        subsystems2 = [(DMCLoggingSupport *)self subsystems];
        v14 = [subsystems2 objectForKeyedSubscript:v10];

        if (!v14)
        {
          v15 = [objc_alloc(*(v8 + 1000)) initWithName:v10];
          enabledLevel = [v15 enabledLevel];
          if (enabledLevel == 1 && (enabledLevel = [v15 persistedLevel], enabledLevel == 1))
          {
            if ([v15 effectivePersistedLevel] == 4)
            {
              v19 = *DMCLogObjects(4, v18);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v39 = v10;
                _os_log_impl(&dword_1B1630000, v19, OS_LOG_TYPE_DEBUG, "Log level for subsystem %@ is debug already", buf, 0xCu);
              }

              goto LABEL_21;
            }

            v28 = [v15 setPersistedLevel:4];
            v30 = *DMCLogObjects(v28, v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v39 = v10;
              _os_log_impl(&dword_1B1630000, v30, OS_LOG_TYPE_DEBUG, "Enabled debug log for subsystem %@", buf, 0xCu);
            }

            subsystems3 = [(DMCLoggingSupport *)self subsystems];
            [subsystems3 setObject:v15 forKeyedSubscript:v10];
LABEL_20:
          }

          else
          {
            v20 = *DMCLogObjects(enabledLevel, v17);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              log = v20;
              v21 = v7;
              effectiveEnabledLevel = [v15 effectiveEnabledLevel];
              v23 = v8;
              enabledLevel2 = [v15 enabledLevel];
              effectivePersistedLevel = [v15 effectivePersistedLevel];
              persistedLevel = [v15 persistedLevel];
              *buf = 138413314;
              v39 = v10;
              v40 = 2048;
              v41 = effectiveEnabledLevel;
              v7 = v21;
              v42 = 2048;
              v43 = enabledLevel2;
              v8 = v23;
              v44 = 2048;
              v45 = effectivePersistedLevel;
              v46 = 2048;
              v47 = persistedLevel;
              subsystems3 = log;
              _os_log_impl(&dword_1B1630000, log, OS_LOG_TYPE_DEBUG, "Log level for subsystem %@ has been configured (effectiveEnabledLevel: %ld, enabledLevel: %ld, effectivePersistedLevel: %ld, persistedLevel: %ld, ", buf, 0x34u);
              goto LABEL_20;
            }
          }

LABEL_21:

          continue;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v34 objects:v48 count:16];
      if (!v6)
      {
LABEL_24:

        subsystemsCopy = v31;
        break;
      }
    }
  }
}

- (void)dealloc
{
  [(DMCLoggingSupport *)self resetAll];
  v3.receiver = self;
  v3.super_class = DMCLoggingSupport;
  [(DMCLoggingSupport *)&v3 dealloc];
}

- (void)resetAll
{
  v27 = *MEMORY[0x1E69E9840];
  if (+[DMCFeatureFlags isAppleInternal])
  {
    processes = [(DMCLoggingSupport *)self processes];

    if (processes)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      processes2 = [(DMCLoggingSupport *)self processes];
      allValues = [processes2 allValues];

      v6 = [allValues countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v22;
        do
        {
          v9 = 0;
          do
          {
            if (*v22 != v8)
            {
              objc_enumerationMutation(allValues);
            }

            [*(*(&v21 + 1) + 8 * v9++) reset];
          }

          while (v7 != v9);
          v7 = [allValues countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v7);
      }

      [(DMCLoggingSupport *)self setProcesses:0];
    }

    subsystems = [(DMCLoggingSupport *)self subsystems];

    if (subsystems)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      subsystems2 = [(DMCLoggingSupport *)self subsystems];
      allValues2 = [subsystems2 allValues];

      v13 = [allValues2 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v18;
        do
        {
          v16 = 0;
          do
          {
            if (*v18 != v15)
            {
              objc_enumerationMutation(allValues2);
            }

            [*(*(&v17 + 1) + 8 * v16++) reset];
          }

          while (v14 != v16);
          v14 = [allValues2 countByEnumeratingWithState:&v17 objects:v25 count:16];
        }

        while (v14);
      }

      [(DMCLoggingSupport *)self setSubsystems:0];
    }
  }
}

@end
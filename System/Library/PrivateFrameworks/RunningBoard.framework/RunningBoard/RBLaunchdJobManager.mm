@interface RBLaunchdJobManager
+ (id)lastExitStatusForLabel:(id)label error:(id *)error;
- (BOOL)_addAppPropertiesToData:(id)data forIdentity:(id)identity context:(id)context actualIdentity:(id *)actualIdentity error:(id *)error;
- (BOOL)_addContainerPropertiesFromExtensionContext:(id)context toServiceDict:(id)dict;
- (BOOL)_addPersonaFromExtensionContext:(id)context toServiceDict:(id)dict;
- (BOOL)_isRunningBoardLaunched:(id)launched;
- (BOOL)_removeJobWithInstance:(id)instance orJob:(id)job error:(id *)error;
- (RBLaunchdJobManager)initWithLaunchdInterface:(id)interface personaManager:(id)manager containerManager:(id)containerManager bundlePropertiesManager:(id)propertiesManager;
- (id)_containerURLForExtensionContext:(id)context;
- (id)_createAndSubmitExtensionJob:(id)job UUID:(id)d error:(id *)error;
- (id)_createLaunchdJobWithIdentity:(id)identity context:(id)context actualIdentity:(id *)actualIdentity error:(id *)error;
- (id)_generateDataWithIdentity:(id)identity context:(id)context actualIdentity:(id *)actualIdentity error:(id *)error;
- (id)createAndLaunchWithIdentity:(id)identity context:(id)context error:(id *)error;
- (id)synchronizeJobs;
- (unint64_t)test_trackedJobCount;
- (void)_addDextPropertiesToData:(id)data forIdentity:(id)identity context:(id)context;
- (void)_addExtensionContainerURL:(id)l toServiceDict:(id)dict;
- (void)_addExtensionEnvironmentFromContainerURL:(id)l toServiceDict:(id)dict;
- (void)_addReslideIdentityIfNeeded:(id)needed exitStatus:(id)status;
- (void)_addSharedPropertiesToData:(id)data forIdentity:(id)identity context:(id)context;
- (void)_addStandardAppPropertiesToData:(id)data;
- (void)_adjustLaunchdJobProperties:(id)properties context:(id)context;
- (void)invokeOnProcessDeath:(id)death handler:(id)handler onQueue:(id)queue;
- (void)synchronizeJobs;
@end

@implementation RBLaunchdJobManager

+ (id)lastExitStatusForLabel:(id)label error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  v6 = labelCopy;
  if (!labelCopy)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  [labelCopy UTF8String];
  last_exit_reason_4SB = _launch_get_last_exit_reason_4SB();
  if (!last_exit_reason_4SB)
  {
    v18 = rbs_job_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = v6;
      _os_log_impl(&dword_262485000, v18, OS_LOG_TYPE_DEFAULT, "Launchd says label %{public}@ has never exited", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v8 = last_exit_reason_4SB;
  v9 = [MEMORY[0x277D46F38] statusWithDomain:0 code:0];
  v10 = xpc_strerror();
  v11 = rbs_job_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v23 = v6;
    v24 = 2080;
    v25 = v10;
    v26 = 1024;
    v27 = v8;
    _os_log_error_impl(&dword_262485000, v11, OS_LOG_TYPE_ERROR, "failed to get process exit details for %{public}@ : %s (%d)", buf, 0x1Cu);
  }

  if (error)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to get process exit details for label %@", v6];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA5B8];
    v16 = *MEMORY[0x277CCA470];
    v20[0] = *MEMORY[0x277CCA450];
    v20[1] = v16;
    v21[0] = v12;
    v21[1] = v13;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    *error = [v14 errorWithDomain:v15 code:v8 userInfo:v17];
  }

LABEL_11:

  return v9;
}

- (RBLaunchdJobManager)initWithLaunchdInterface:(id)interface personaManager:(id)manager containerManager:(id)containerManager bundlePropertiesManager:(id)propertiesManager
{
  interfaceCopy = interface;
  managerCopy = manager;
  containerManagerCopy = containerManager;
  propertiesManagerCopy = propertiesManager;
  v27.receiver = self;
  v27.super_class = RBLaunchdJobManager;
  v15 = [(RBLaunchdJobManager *)&v27 init];
  if (v15)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    lock_jobsByIdentifier = v15->_lock_jobsByIdentifier;
    v15->_lock_jobsByIdentifier = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    lock_monitoredJobsByIdentifier = v15->_lock_monitoredJobsByIdentifier;
    v15->_lock_monitoredJobsByIdentifier = dictionary2;

    v15->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v15->_launchdInterface, interface);
    objc_storeStrong(&v15->_personaManager, manager);
    objc_storeStrong(&v15->_containerManager, containerManager);
    objc_storeStrong(&v15->_bundlePropertiesManager, propertiesManager);
    v20 = objc_alloc_init(MEMORY[0x277CBEB40]);
    lock_reslideIdentities = v15->_lock_reslideIdentities;
    v15->_lock_reslideIdentities = v20;

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create("com.apple.runningboard.launchdLogging", v22);
    logQueue = v15->_logQueue;
    v15->_logQueue = v23;

    v25 = v15;
  }

  return v15;
}

- (void)_addReslideIdentityIfNeeded:(id)needed exitStatus:(id)status
{
  neededCopy = needed;
  statusCopy = status;
  if ([neededCopy isApplication] && (objc_msgSend(statusCopy, "os_reason_flags") & 0x400) != 0)
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableOrderedSet *)self->_lock_reslideIdentities removeObject:neededCopy];
    [(NSMutableOrderedSet *)self->_lock_reslideIdentities addObject:neededCopy];
    if ([(NSMutableOrderedSet *)self->_lock_reslideIdentities count]>= 0x1A)
    {
      [(NSMutableOrderedSet *)self->_lock_reslideIdentities removeObjectAtIndex:0];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_addSharedPropertiesToData:(id)data forIdentity:(id)identity context:(id)context
{
  v55 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identityCopy = identity;
  contextCopy = context;
  executionOptions = [contextCopy executionOptions];
  xpc_dictionary_set_string(dataCopy, "_ManagedBy", "com.apple.runningboard");
  applicationJobLabel = [identityCopy applicationJobLabel];

  if (applicationJobLabel)
  {
    applicationJobLabel2 = [identityCopy applicationJobLabel];
    goto LABEL_13;
  }

  v12 = identityCopy;
  if ([v12 isEmbeddedApplication])
  {
    v13 = MEMORY[0x277CCACA8];
    embeddedApplicationIdentifier = [v12 embeddedApplicationIdentifier];
    applicationJobLabel2 = [v13 stringWithFormat:@"UIKitApplication:%@[%04x][rb-legacy]", embeddedApplicationIdentifier, arc4random() % 0xFFFF];
  }

  else
  {
    if ([v12 hasConsistentLaunchdJob])
    {
      consistentLaunchdJobLabel = [v12 consistentLaunchdJobLabel];
    }

    else if ([v12 isApplication])
    {
      consistentLaunchdJobLabel = [v12 applicationJobLabel];
    }

    else
    {
      if (![v12 isDext])
      {
        applicationJobLabel2 = &stru_287507640;
        goto LABEL_12;
      }

      consistentLaunchdJobLabel = [v12 dextLabel];
    }

    applicationJobLabel2 = consistentLaunchdJobLabel;
  }

LABEL_12:

LABEL_13:
  xpc_dictionary_set_string(dataCopy, "Label", [(__CFString *)applicationJobLabel2 UTF8String]);

  v16 = xpc_array_create(0, 0);
  _overrideExecutablePath = [contextCopy _overrideExecutablePath];
  fileSystemRepresentation = [_overrideExecutablePath fileSystemRepresentation];

  v39 = executionOptions;
  v40 = identityCopy;
  if (fileSystemRepresentation)
  {
    xpc_array_set_string(v16, 0xFFFFFFFFFFFFFFFFLL, fileSystemRepresentation);
    xpc_dictionary_set_string(dataCopy, "Program", fileSystemRepresentation);
  }

  else
  {
    v19 = rbs_process_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [RBLaunchdJobManager _addSharedPropertiesToData:contextCopy forIdentity:? context:?];
    }
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  arguments = [contextCopy arguments];
  v21 = [arguments countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v48;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v48 != v23)
        {
          objc_enumerationMutation(arguments);
        }

        v25 = [*(*(&v47 + 1) + 8 * i) description];
        xpc_array_set_string(v16, 0xFFFFFFFFFFFFFFFFLL, [v25 UTF8String]);
      }

      v22 = [arguments countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v22);
  }

  v41 = dataCopy;
  xpc_dictionary_set_value(dataCopy, "ProgramArguments", v16);
  v26 = xpc_dictionary_create(0, 0, 0);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  _additionalEnvironment = [contextCopy _additionalEnvironment];
  v28 = [_additionalEnvironment countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v44;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v44 != v30)
        {
          objc_enumerationMutation(_additionalEnvironment);
        }

        v32 = *(*(&v43 + 1) + 8 * j);
        _additionalEnvironment2 = [contextCopy _additionalEnvironment];
        v34 = [_additionalEnvironment2 objectForKey:v32];

        v35 = [v32 description];
        uTF8String = [v35 UTF8String];
        v37 = [v34 description];
        xpc_dictionary_set_string(v26, uTF8String, [v37 UTF8String]);
      }

      v29 = [_additionalEnvironment countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v29);
  }

  if ((v39 & 4) != 0)
  {
    v38 = rbs_job_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v52 = v40;
      _os_log_impl(&dword_262485000, v38, OS_LOG_TYPE_DEFAULT, "Launching %{public}@ to build DYLD closure. The new process will exit as soon as the operation completes.", buf, 0xCu);
    }

    xpc_dictionary_set_string(v26, "DYLD_JUST_BUILD_CLOSURE", "1");
  }

  xpc_dictionary_set_value(v41, "EnvironmentVariables", v26);
  if ((v39 & 0x100000) != 0)
  {
    xpc_dictionary_set_BOOL(v41, "RunAtLoad", 1);
  }
}

- (void)_addDextPropertiesToData:(id)data forIdentity:(id)identity context:(id)context
{
  xdict = data;
  identityCopy = identity;
  contextCopy = context;
  executionOptions = [contextCopy executionOptions];
  xpc_dictionary_set_string(xdict, "ProcessType", "Driver");
  xpc_dictionary_set_BOOL(xdict, "RunAtLoad", 1);
  xpc_dictionary_set_BOOL(xdict, "LaunchOnlyOnce", 1);
  xpc_dictionary_set_string(xdict, "UserName", "_driverkit");
  xpc_dictionary_set_string(xdict, "SandboxProfile", "com.apple.dext");
  xpc_dictionary_set_BOOL(xdict, "_NullBootstrapPort", 1);
  if ((executionOptions & 0x40) != 0)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "Core", 0x7FFFFFFFFFFFFFFFuLL);
    xpc_dictionary_set_value(xdict, "HardResourceLimits", v10);
    xpc_dictionary_set_value(xdict, "SoftResourceLimits", v10);
  }

  dextServerName = [identityCopy dextServerName];

  if (dextServerName)
  {
    dextServerName2 = [identityCopy dextServerName];
    xpc_dictionary_set_string(xdict, "_JetsamPropertiesIdentifier", [dextServerName2 UTF8String]);
  }

  if ((executionOptions & 0x20) != 0)
  {
    xpc_dictionary_set_BOOL(xdict, "ReslideSharedCache", 1);
  }

  [contextCopy dextCheckInPort];
  xpc_dictionary_set_mach_send();
}

- (void)_addStandardAppPropertiesToData:(id)data
{
  xdict = data;
  xpc_dictionary_set_string(xdict, "UserName", "mobile");
  xpc_dictionary_set_BOOL(xdict, "MaterializeDatalessFiles", 1);
  xpc_dictionary_set_BOOL(xdict, "EnablePressuredExit", 0);
  xpc_dictionary_set_BOOL(xdict, "EnableTransactions", 0);
  xpc_dictionary_set_int64(xdict, "ThrottleInterval", 0x7FFFFFFFLL);
  xpc_dictionary_set_int64(xdict, "ExitTimeOut", 1);
}

- (BOOL)_addAppPropertiesToData:(id)data forIdentity:(id)identity context:(id)context actualIdentity:(id *)actualIdentity error:(id *)error
{
  v117 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identityCopy = identity;
  contextCopy = context;
  executionOptions = [contextCopy executionOptions];
  *actualIdentity = 0;
  [(RBLaunchdJobManager *)self _addStandardAppPropertiesToData:dataCopy];
  v92 = contextCopy;
  if (([contextCopy lsSpawnFlags] & 4) == 0)
  {
    spawnType = [contextCopy spawnType];
    if (spawnType)
    {
      v16 = spawnType;
      if (spawnType == 1)
      {
        v17 = "SystemApp";
      }

      else
      {
        v18 = rbs_general_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          [RBLaunchdJobManager _addAppPropertiesToData:v16 forIdentity:v18 context:? actualIdentity:? error:?];
        }

        v17 = 0;
      }
    }

    else
    {
      v17 = "App";
    }

    xpc_dictionary_set_string(dataCopy, "ProcessType", v17);
    xpc_dictionary_set_int64(dataCopy, "_LaunchType", 3);
  }

  v19 = [identityCopy description];
  xpc_dictionary_set_string(dataCopy, "_ResourceCoalition", [v19 UTF8String]);

  bundleIdentifier = [contextCopy bundleIdentifier];

  if (bundleIdentifier)
  {
    bundleIdentifier2 = [contextCopy bundleIdentifier];
    xpc_dictionary_set_string(dataCopy, "CFBundleIdentifier", [bundleIdentifier2 UTF8String]);
  }

  if ((executionOptions & 0x10) != 0)
  {
    xpc_dictionary_set_BOOL(dataCopy, "NSBuiltWithThreadSanitizer", 1);
  }

  _additionalMachServices = [contextCopy _additionalMachServices];
  launchRequestIdentifierToMachNameMap = [contextCopy launchRequestIdentifierToMachNameMap];
  v24 = launchRequestIdentifierToMachNameMap;
  v89 = dataCopy;
  selfCopy = self;
  if ((executionOptions & 4) != 0)
  {

    v91 = 0;
    _additionalMachServices = 0;
  }

  else
  {
    v91 = launchRequestIdentifierToMachNameMap;
  }

  xdict = xpc_dictionary_create(0, 0, 0);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v25 = _additionalMachServices;
  v26 = [v25 countByEnumeratingWithState:&v107 objects:v116 count:16];
  obj = v25;
  if (v26)
  {
    v27 = v26;
    v28 = *v108;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v108 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v107 + 1) + 8 * i);
        v31 = rbs_general_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v113 = v30;
          v114 = 2114;
          v115 = identityCopy;
          _os_log_impl(&dword_262485000, v31, OS_LOG_TYPE_DEFAULT, "Inserting mach service %{public}@ into job for %{public}@", buf, 0x16u);
        }

        v32 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_BOOL(v32, "ResetAtClose", 1);
        xpc_dictionary_set_value(xdict, [v30 UTF8String], v32);
      }

      v25 = obj;
      v27 = [obj countByEnumeratingWithState:&v107 objects:v116 count:16];
    }

    while (v27);
  }

  xpc_dictionary_set_value(v89, "MachServices", xdict);
  v33 = v91;
  if ([v91 count])
  {
    v34 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v91, "count")}];
    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __88__RBLaunchdJobManager__addAppPropertiesToData_forIdentity_context_actualIdentity_error___block_invoke;
    v103[3] = &unk_279B33140;
    v104 = identityCopy;
    v105 = v25;
    v106 = v34;
    v35 = v34;
    [v91 enumerateKeysAndObjectsUsingBlock:v103];
    empty = xpc_array_create_empty();
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __88__RBLaunchdJobManager__addAppPropertiesToData_forIdentity_context_actualIdentity_error___block_invoke_45;
    v101[3] = &unk_279B33168;
    v102 = empty;
    v37 = empty;
    [v35 enumerateObjectsUsingBlock:v101];
    xpc_dictionary_set_value(v89, "_ManagedBy_Services", v37);
  }

  v38 = v92;
  standardOutputPath = [v92 standardOutputPath];

  if (standardOutputPath)
  {
    standardOutputPath2 = [v92 standardOutputPath];
    xpc_dictionary_set_string(v89, "StandardOutPath", [standardOutputPath2 UTF8String]);
  }

  standardErrorPath = [v92 standardErrorPath];

  if (standardErrorPath)
  {
    standardErrorPath2 = [v92 standardErrorPath];
    xpc_dictionary_set_string(v89, "StandardErrorPath", [standardErrorPath2 UTF8String]);
  }

  standardInPath = [v92 standardInPath];

  v44 = selfCopy;
  if (standardInPath)
  {
    standardInPath2 = [v92 standardInPath];
    xpc_dictionary_set_string(v89, "StandardInPath", [standardInPath2 UTF8String]);
  }

  if ((executionOptions & 5) == 1)
  {
    xpc_dictionary_set_BOOL(v89, "WaitForDebugger", 1);
  }

  if ((executionOptions & 6) == 2)
  {
    xpc_dictionary_set_BOOL(v89, "DisableASLR", 1);
  }

  if (executionOptions < 0)
  {
    v46 = rbs_job_log();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v113 = identityCopy;
      _os_log_impl(&dword_262485000, v46, OS_LOG_TYPE_DEFAULT, "Launching %{public}@ with MTE enabled.", buf, 0xCu);
    }

    xpc_dictionary_set_BOOL(v89, "EnableCheckedAllocations", 1);
  }

  if ([v92 lsSpawnFlags])
  {
    xpc_dictionary_set_BOOL(v89, "WaitForDebugger", 1);
  }

  if ([v92 initialRole])
  {
    [v92 initialRole];
    v47 = RBSDarwinRoleFromRBSRole();
    xpc_dictionary_set_int64(v89, "InitialTaskRole", v47);
  }

  lsBinpref = [v92 lsBinpref];
  if (lsBinpref && (v49 = lsBinpref, [v92 lsBinprefSubtype], v50 = objc_claimAutoreleasedReturnValue(), v50, v49, v50))
  {
    v51 = xpc_array_create(0, 0);
    lsBinpref2 = [v92 lsBinpref];
    v53 = [lsBinpref2 count];

    if (v53)
    {
      v54 = identityCopy;
      v55 = 0;
      do
      {
        lsBinpref3 = [v92 lsBinpref];
        v57 = [lsBinpref3 objectAtIndex:v55];

        v58 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_int64(v58, "CPUType", [v57 integerValue]);
        lsBinprefSubtype = [v92 lsBinprefSubtype];
        v60 = [lsBinprefSubtype count];

        if (v60 <= v55)
        {
          integerValue = -1;
        }

        else
        {
          lsBinprefSubtype2 = [v92 lsBinprefSubtype];
          v62 = [lsBinprefSubtype2 objectAtIndex:v55];
          integerValue = [v62 integerValue];
        }

        xpc_dictionary_set_int64(v58, "CPUSubtype", integerValue);
        xpc_array_set_value(v51, 0xFFFFFFFFFFFFFFFFLL, v58);

        ++v55;
        lsBinpref4 = [v92 lsBinpref];
        v65 = [lsBinpref4 count];
      }

      while (v65 > v55);
      identityCopy = v54;
      v44 = selfCopy;
      v33 = v91;
    }
  }

  else
  {
    lsBinpref5 = [v92 lsBinpref];

    if (!lsBinpref5)
    {
      goto LABEL_65;
    }

    v51 = xpc_array_create(0, 0);
    *&value[1] = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    lsBinpref6 = [v92 lsBinpref];
    v68 = [lsBinpref6 countByEnumeratingWithState:&value[1] objects:v111 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v98;
      do
      {
        for (j = 0; j != v69; ++j)
        {
          if (*v98 != v70)
          {
            objc_enumerationMutation(lsBinpref6);
          }

          xpc_array_set_int64(v51, 0xFFFFFFFFFFFFFFFFLL, [*(*&value[3] + 8 * j) unsignedIntegerValue]);
        }

        v69 = [lsBinpref6 countByEnumeratingWithState:&value[1] objects:v111 count:16];
      }

      while (v69);
    }

    v38 = v92;
  }

  xpc_dictionary_set_value(v89, "BinaryOrderPreference", v51);

LABEL_65:
  if ([v38 lsUMask])
  {
    xpc_dictionary_set_int64(v89, "Umask", [v38 lsUMask]);
  }

  if ([identityCopy platform])
  {
    xpc_dictionary_set_int64(v89, "Platform", [identityCopy platform]);
  }

  os_unfair_lock_lock(&v44->_lock);
  if ([(NSMutableOrderedSet *)v44->_lock_reslideIdentities containsObject:identityCopy])
  {
    xpc_dictionary_set_BOOL(v89, "ReslideSharedCache", 1);
  }

  os_unfair_lock_unlock(&v44->_lock);
  value[0] = 0;
  personaManager = v44->_personaManager;
  v96 = 0;
  v73 = [(RBPersonaManager *)personaManager personaForIdentity:identityCopy context:v38 personaUID:value personaUniqueString:&v96];
  v74 = v96;
  if (v73)
  {
    xpc_dictionary_set_int64(v89, "PersonaEnterprise", value[0]);
    v75 = [identityCopy copyWithPersonaString:v74];

    v76 = v75;
    *v88 = v75;
    v77 = [v76 description];
    xpc_dictionary_set_string(v89, "_ResourceCoalition", [v77 UTF8String]);

    _addRBProperties(v89, v75, v38);
    identityCopy = v75;
  }

  preventContainerization = [v38 preventContainerization];
  bOOLValue = [preventContainerization BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    containerManager = v44->_containerManager;
    v95 = 0;
    v82 = [(RBContainerManager *)containerManager containerPathForIdentity:identityCopy context:v38 persona:v74 error:&v95];
    v83 = v95;
    v80 = v83;
    if (v82)
    {
      fileSystemRepresentation = [v82 fileSystemRepresentation];
      xpc_dictionary_set_string(v89, "SandboxContainer", fileSystemRepresentation);
      v85 = xpc_dictionary_get_value(v89, "EnvironmentVariables");
      v86 = v85;
      if (v85)
      {
        xpc_dictionary_set_value(v85, "HOME", 0);
        xpc_dictionary_set_value(v86, "CFFIXED_USER_HOME", 0);
        xpc_dictionary_set_value(v86, "TMPDIR", 0);
        xpc_dictionary_set_value(v86, "_DYLD_CLOSURE_HOME", 0);
        xpc_dictionary_set_string(v86, "HOME", fileSystemRepresentation);
      }

      v33 = v91;
    }

    else
    {
      if (!v83)
      {
LABEL_84:

        goto LABEL_85;
      }

      v86 = rbs_job_log();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
      {
        [RBLaunchdJobManager _addAppPropertiesToData:forIdentity:context:actualIdentity:error:];
      }
    }

    goto LABEL_84;
  }

  v80 = rbs_job_log();
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v113 = identityCopy;
    v114 = 2114;
    v115 = v38;
    _os_log_impl(&dword_262485000, v80, OS_LOG_TYPE_DEFAULT, "'%{public}@' Skipping container path lookup because containerization was prevented (%{public}@)", buf, 0x16u);
  }

LABEL_85:

  return 1;
}

void __88__RBLaunchdJobManager__addAppPropertiesToData_forIdentity_context_actualIdentity_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v6;
  if (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && (v10 = [v6 BOOLValue], v8 = v5, (v10))
  {
    v9 = v8;
    if (v9 && [*(a1 + 40) containsObject:v9])
    {
      [*(a1 + 48) addObject:v9];
    }
  }

  else
  {
    v11 = rbs_job_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = 138543874;
      v14 = v12;
      v15 = 2114;
      v16 = v5;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_262485000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring unsupported MANAGEDBY_SERVICES value for launchIdentifier %{public}@: value=%{public}@", &v13, 0x20u);
    }

    v9 = 0;
  }
}

void __88__RBLaunchdJobManager__addAppPropertiesToData_forIdentity_context_actualIdentity_error___block_invoke_45(uint64_t a1, id a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [a2 UTF8String];

  xpc_array_set_string(v3, 0xFFFFFFFFFFFFFFFFLL, v5);
}

- (id)_generateDataWithIdentity:(id)identity context:(id)context actualIdentity:(id *)actualIdentity error:(id *)error
{
  identityCopy = identity;
  contextCopy = context;
  v12 = xpc_dictionary_create(0, 0, 0);
  v13 = objc_autoreleasePoolPush();
  _addRBProperties(v12, identityCopy, contextCopy);
  [(RBLaunchdJobManager *)self _addSharedPropertiesToData:v12 forIdentity:identityCopy context:contextCopy];
  if ([identityCopy isDext])
  {
    [(RBLaunchdJobManager *)self _addDextPropertiesToData:v12 forIdentity:identityCopy context:contextCopy];
    objc_autoreleasePoolPop(v13);
    v14 = 0;
LABEL_3:
    v15 = 0;
LABEL_6:
    v18 = v12;
    goto LABEL_7;
  }

  v21 = 0;
  v22 = 0;
  v16 = [(RBLaunchdJobManager *)self _addAppPropertiesToData:v12 forIdentity:identityCopy context:contextCopy actualIdentity:&v22 error:&v21];
  v15 = v22;
  v14 = v21;
  objc_autoreleasePoolPop(v13);
  if (v15)
  {
    v17 = v15;
    *actualIdentity = v15;
    if (v16)
    {
      goto LABEL_6;
    }
  }

  else if (v16)
  {
    goto LABEL_3;
  }

  if (error)
  {
    v20 = v14;
    v18 = 0;
    *error = v14;
  }

  else
  {
    v18 = 0;
  }

LABEL_7:

  return v18;
}

- (id)_createLaunchdJobWithIdentity:(id)identity context:(id)context actualIdentity:(id *)actualIdentity error:(id *)error
{
  v145 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  contextCopy = context;
  isApplication = [identityCopy isApplication];
  if (!contextCopy && isApplication)
  {
    contextCopy = [MEMORY[0x277D46EB0] contextWithIdentity:identityCopy];
  }

  if (![identityCopy isApplication])
  {
    v20 = 0;
    goto LABEL_52;
  }

  if (!contextCopy)
  {
    [RBLaunchdJobManager _createLaunchdJobWithIdentity:context:actualIdentity:error:];
  }

  v13 = contextCopy;
  bundleIdentifier = [v13 bundleIdentifier];
  dictionary = rbs_general_log();
  v16 = os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT);
  if (!bundleIdentifier)
  {
    if (v16)
    {
      identity = [v13 identity];
      *buf = 138543362;
      *&buf[4] = identity;
      _os_log_impl(&dword_262485000, dictionary, OS_LOG_TYPE_DEFAULT, "Bailing out of _mutateContextIfNeeded for %{public}@", buf, 0xCu);
    }

    v22 = 0;
    v23 = 1;
    goto LABEL_50;
  }

  if (v16)
  {
    *buf = 138543362;
    *&buf[4] = bundleIdentifier;
    _os_log_impl(&dword_262485000, dictionary, OS_LOG_TYPE_DEFAULT, "_mutateContextIfNeeded called for %{public}@", buf, 0xCu);
  }

  selfCopy = self;

  _additionalEnvironment = [v13 _additionalEnvironment];

  v18 = MEMORY[0x277CBEB38];
  actualIdentityCopy = actualIdentity;
  if (_additionalEnvironment)
  {
    _additionalEnvironment2 = [v13 _additionalEnvironment];
    dictionary = [v18 dictionaryWithDictionary:_additionalEnvironment2];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  _overrideExecutablePath = [v13 _overrideExecutablePath];
  if (os_variant_has_internal_content())
  {
    v25 = [v13 isTesting] ^ 1;
  }

  else
  {
    v25 = 1;
  }

  _additionalMachServices = [v13 _additionalMachServices];

  v27 = MEMORY[0x277CBEB18];
  if (_additionalMachServices)
  {
    _additionalMachServices2 = [v13 _additionalMachServices];
    v29 = [v27 arrayWithArray:_additionalMachServices2];

    array = v29;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v127 = array;
  [v13 _setAdditionalMachServices:array];
  if (_os_feature_enabled_impl())
  {
    if (((_os_feature_enabled_impl() ^ 1) & v25 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v25)
  {
LABEL_26:
    [v13 setPreventContainerization:MEMORY[0x277CBEC38]];
  }

LABEL_27:
  if (_overrideExecutablePath)
  {
    preventContainerization = [v13 preventContainerization];
    errorCopy = error;
    v33 = bundleIdentifier;
    v34 = [preventContainerization BOOLValue] ^ 1;

    v35 = v34 & v25;
    bundleIdentifier = v33;
    error = errorCopy;
    if (v35 == 1)
    {
      v36 = rbs_job_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier2 = [v13 bundleIdentifier];
        *buf = 138543618;
        *&buf[4] = bundleIdentifier2;
        *&buf[12] = 2114;
        *&buf[14] = _overrideExecutablePath;
        _os_log_impl(&dword_262485000, v36, OS_LOG_TYPE_DEFAULT, "Not pre-containerizing %{public}@ because executable file specified (%{public}@)", buf, 0x16u);
      }

      [v13 setPreventContainerization:MEMORY[0x277CBEC38]];
    }
  }

  requiredCacheUUID = [v13 requiredCacheUUID];
  requiredSequenceNumber = [v13 requiredSequenceNumber];
  v39 = rbs_general_log();
  v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
  v128 = requiredSequenceNumber;
  if (_overrideExecutablePath && !requiredCacheUUID && !requiredSequenceNumber)
  {
    v129 = v39;
    if (v40)
    {
      *buf = 0;
      _os_log_impl(&dword_262485000, v39, OS_LOG_TYPE_DEFAULT, "_mutateContextIfNeeded No proxy needed", buf, 2u);
    }

    v22 = 0;
    v23 = 1;
    goto LABEL_49;
  }

  if (v40)
  {
    *buf = 0;
    _os_log_impl(&dword_262485000, v39, OS_LOG_TYPE_DEFAULT, "_mutateContextIfNeeded using proxy", buf, 2u);
  }

  v41 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:bundleIdentifier];
  appState = [v41 appState];
  v129 = v41;
  if (([appState isInstalled] & 1) == 0)
  {
    errorCopy2 = error;
    v51 = bundleIdentifier;
    v52 = MEMORY[0x277CCA9B8];
    v53 = *MEMORY[0x277CCA5B8];
    v137[0] = *MEMORY[0x277CCA450];
    *buf = @"Unable to load a valid LSApplicationProxy.";
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v137 count:1];
    v22 = [v52 errorWithDomain:v53 code:22 userInfo:v54];

    v55 = v22;
    cacheGUID = rbs_general_log();
    if (os_log_type_enabled(cacheGUID, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_262485000, cacheGUID, OS_LOG_TYPE_DEFAULT, "_mutateContextIfNeeded unable to load a valid LSApplicationProxy.", buf, 2u);
    }

    v23 = 0;
    bundleIdentifier = v51;
    error = errorCopy2;
    goto LABEL_48;
  }

  correspondingApplicationRecord = [v41 correspondingApplicationRecord];
  jobLabel = [correspondingApplicationRecord jobLabel];

  if (jobLabel)
  {
    v121 = bundleIdentifier;
    v44 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CCA5B8];
    v137[0] = *MEMORY[0x277CCA450];
    *buf = @"Trying to launch a daemon, agent, or angel as an app.";
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v137 count:1];
    v22 = [v44 errorWithDomain:v45 code:22 userInfo:v46];

    v47 = v22;
    cacheGUID = rbs_general_log();
    if (os_log_type_enabled(cacheGUID, OS_LOG_TYPE_DEFAULT))
    {
      correspondingApplicationRecord2 = [v129 correspondingApplicationRecord];
      jobLabel2 = [correspondingApplicationRecord2 jobLabel];
      *buf = 138543362;
      *&buf[4] = jobLabel2;
      _os_log_impl(&dword_262485000, cacheGUID, OS_LOG_TYPE_DEFAULT, "_mutateContextIfNeeded Trying to launch %{public}@ as an app", buf, 0xCu);
    }

    v23 = 0;
    bundleIdentifier = v121;
    goto LABEL_48;
  }

  environmentVariables = [v41 environmentVariables];
  [dictionary addEntriesFromDictionary:environmentVariables];

  [v13 _setAdditionalEnvironment:dictionary];
  canonicalExecutablePath = [v41 canonicalExecutablePath];

  if (!canonicalExecutablePath)
  {
    v22 = _posixErrorWithCodeAndDescription(22, @"Unable to find executable path");
    v78 = v22;
    cacheGUID = rbs_general_log();
    if (os_log_type_enabled(cacheGUID, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_262485000, cacheGUID, OS_LOG_TYPE_DEFAULT, "_mutateContextIfNeeded unable to find xecutable path.", buf, 2u);
    }

    _overrideExecutablePath = 0;
    v23 = 0;
    goto LABEL_48;
  }

  _overrideExecutablePath = canonicalExecutablePath;
  v76 = v41;
  [v13 _setOverrideExecutablePath:canonicalExecutablePath];
  v77 = v128;
  if (requiredCacheUUID)
  {
    cacheGUID = [v41 cacheGUID];
  }

  else
  {
    cacheGUID = 0;
  }

  if (v128)
  {
    v79 = MEMORY[0x277CCABB0];
    sequenceNumber = [v76 sequenceNumber];
    v81 = v79;
    v77 = v128;
    v120 = [v81 numberWithUnsignedInteger:sequenceNumber];
  }

  else
  {
    v120 = 0;
  }

  if (requiredCacheUUID != cacheGUID && (!requiredCacheUUID || !cacheGUID || !-[NSObject isEqual:](requiredCacheUUID, "isEqual:", cacheGUID)) || v77 != v120 && (!v77 || !v120 || ([v77 isEqual:v120] & 1) == 0))
  {
    v87 = rbs_job_log();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      bundleIdentifier3 = [v13 bundleIdentifier];
      [requiredCacheUUID UUIDString];
      v117 = _overrideExecutablePath;
      v108 = cacheGUID;
      errorCopy3 = error;
      v111 = v110 = bundleIdentifier;
      *buf = 138544386;
      *&buf[4] = bundleIdentifier3;
      *&buf[12] = 2114;
      *&buf[14] = v111;
      v139 = 2114;
      v140 = v128;
      v141 = 2114;
      v142 = v108;
      v143 = 2114;
      v144 = v120;
      _os_log_error_impl(&dword_262485000, v87, OS_LOG_TYPE_ERROR, "LaunchServices database mismatch: Failed to lookup executable path for app %{public}@ with {UUID: %{public}@, Sequence: %{public}@} vs {UUID: %{public}@, Sequence: %{public}@", buf, 0x34u);

      bundleIdentifier = v110;
      error = errorCopy3;
      cacheGUID = v108;
      _overrideExecutablePath = v117;
    }

    v22 = _posixErrorWithCodeAndDescription(22, @"Failed to lookup executable path.");
    v88 = v22;
    v23 = 0;
    goto LABEL_126;
  }

  v123 = bundleIdentifier;
  applicationType = [v76 applicationType];
  v83 = objc_opt_class();
  v119 = [v76 objectForInfoDictionaryKey:@"SBMachServices" ofClass:v83 valuesOfClass:objc_opt_class()];
  v118 = applicationType;
  if (([applicationType isEqualToString:*MEMORY[0x277CC1E30]] & 1) != 0 || (objc_msgSend(applicationType, "isEqualToString:", *MEMORY[0x277CC1E00]) & 1) != 0 || objc_msgSend(applicationType, "isEqualToString:", *MEMORY[0x277CC1E08]))
  {
    [v13 setSpawnType:1];
    if (![v119 count])
    {
      goto LABEL_107;
    }

    v115 = RBSAppViewServiceMachServiceName();
    if ([v119 containsObject:v115] && -[NSObject rb_hasEntitlement:](v76, "rb_hasEntitlement:", *MEMORY[0x277D47040]))
    {
      v84 = _knownViewServices();
      v85 = [v84 containsObject:v123];

      if ((v85 & 1) == 0)
      {
        v112 = rbs_job_log();
        if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
        {
          [RBLaunchdJobManager _createLaunchdJobWithIdentity:v112 context:? actualIdentity:? error:?];
        }

        v22 = _posixErrorWithCodeAndDescription(22, @"Unknown ViewService App: ViewService Apps are deprecated and you should not be adding new ones - if you need an exception please file a radar to RunningBoard|All to be added to the allowlist.");
        v113 = v22;
        v23 = 0;
        bundleIdentifier = v123;
        v106 = v115;
        goto LABEL_125;
      }

      v86 = 1;
    }

    else
    {
      v86 = 0;
    }

    v89 = rbs_general_log();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = applicationType;
      *&buf[12] = 2114;
      *&buf[14] = v119;
      _os_log_impl(&dword_262485000, v89, OS_LOG_TYPE_DEFAULT, "_mutateContextIfNeeded bundleType %{public}@ SBMachServices %{public}@", buf, 0x16u);
    }

    [v127 addObjectsFromArray:v119];
    if (v86)
    {
      v137[0] = v115;
      v137[1] = @"com.apple.frontboard.workspace-service";
      *buf = MEMORY[0x277CBEC38];
      *&buf[8] = v115;
      v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v137 count:2];
      [v13 setLaunchRequestIdentifierToMachNameMap:v90];

      v91 = v115;
      v76 = v129;
    }

    else
    {
      v76 = v129;
      v91 = v115;
    }

    goto LABEL_106;
  }

  if ([v119 count])
  {
    v91 = rbs_general_log();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = applicationType;
      *&buf[12] = 2114;
      *&buf[14] = v119;
      _os_log_impl(&dword_262485000, v91, OS_LOG_TYPE_DEFAULT, "_mutateContextIfNeeded bundleType %{public}@ refusing SBMachServices %{public}@", buf, 0x16u);
    }

LABEL_106:
  }

LABEL_107:
  correspondingApplicationRecord3 = [v76 correspondingApplicationRecord];
  wasBuiltWithThreadSanitizer = [correspondingApplicationRecord3 wasBuiltWithThreadSanitizer];

  if (wasBuiltWithThreadSanitizer)
  {
    [v13 setExecutionOptions:{objc_msgSend(v13, "executionOptions") | 0x10}];
  }

  [v13 _setAdditionalMachServices:v127];
  preventContainerization2 = [v13 preventContainerization];

  if (!preventContainerization2)
  {
    isContainerized = [v129 isContainerized];
    v96 = [MEMORY[0x277CCABB0] numberWithBool:isContainerized ^ 1u];
    [v13 setPreventContainerization:v96];
  }

  preventContainerization3 = [v13 preventContainerization];
  if ([preventContainerization3 BOOLValue])
  {
    goto LABEL_114;
  }

  containerIdentifier = [v13 containerIdentifier];

  if (!containerIdentifier)
  {
    v99 = objc_opt_self();
    preventContainerization3 = [v129 entitlementValueForKey:@"com.apple.private.security.container-required" ofClass:v99];

    [v13 setContainerIdentifier:preventContainerization3];
    [v13 setCalculatedContainerIdentifier:1];
LABEL_114:
  }

  v116 = _overrideExecutablePath;
  managedPersonas = [v129 managedPersonas];
  v101 = [managedPersonas count];
  v114 = managedPersonas;
  if (v101)
  {
    v102 = v101;
    v103 = [managedPersonas objectAtIndexedSubscript:{0, managedPersonas}];
    v104 = rbs_job_log();
    v105 = v104;
    bundleIdentifier = v123;
    if (v102 == 1)
    {
      if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
      {
        *v135 = 138543362;
        v136 = v103;
        _os_log_impl(&dword_262485000, v105, OS_LOG_TYPE_INFO, "Persona chosen for bundle identifier: %{public}@", v135, 0xCu);
      }
    }

    else if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      [RBLaunchdJobManager _createLaunchdJobWithIdentity:context:actualIdentity:error:];
    }
  }

  else
  {
    v105 = rbs_job_log();
    bundleIdentifier = v123;
    if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
    {
      *v135 = 138543362;
      v136 = v123;
      _os_log_impl(&dword_262485000, v105, OS_LOG_TYPE_INFO, "No personas found for bundle identifier: %{public}@", v135, 0xCu);
    }

    v103 = 0;
  }

  [v13 setManagedPersona:v103];
  v22 = 0;
  v106 = v103;
  v23 = 1;
  _overrideExecutablePath = v116;
LABEL_125:

LABEL_126:
LABEL_48:

LABEL_49:
  actualIdentity = actualIdentityCopy;
  self = selfCopy;
LABEL_50:

  v56 = v22;
  v57 = v56;
  if ((v23 & 1) == 0)
  {
    if (error)
    {
      v71 = v56;
      v65 = 0;
      *error = v57;
    }

    else
    {
      v65 = 0;
    }

    goto LABEL_68;
  }

  v20 = v56;
LABEL_52:
  _overrideExecutablePath2 = [contextCopy _overrideExecutablePath];

  if (_overrideExecutablePath2)
  {
    v134 = v20;
    v59 = [(RBLaunchdJobManager *)self _generateDataWithIdentity:identityCopy context:contextCopy actualIdentity:actualIdentity error:&v134];
    v57 = v134;

    if (v59)
    {
      v60 = *actualIdentity;
      if (!*actualIdentity)
      {
        v60 = identityCopy;
      }

      v61 = v60;
      logQueue = self->_logQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__RBLaunchdJobManager__createLaunchdJobWithIdentity_context_actualIdentity_error___block_invoke;
      block[3] = &unk_279B32B80;
      v132 = v61;
      v63 = v59;
      v133 = v63;
      v64 = v61;
      dispatch_async(logQueue, block);
      v65 = [(RBLaunchdInterfacing *)self->_launchdInterface jobWithPlist:v63];
    }

    else if (error)
    {
      v72 = v57;
      v65 = 0;
      *error = v57;
    }

    else
    {
      v65 = 0;
    }
  }

  else
  {
    if (error)
    {
      v66 = MEMORY[0x277CCA9B8];
      v67 = *MEMORY[0x277CCA5B8];
      v137[0] = *MEMORY[0x277CCA450];
      *buf = @"Unable to determine executable path.";
      v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v137 count:1];
      v69 = [v66 errorWithDomain:v67 code:22 userInfo:v68];

      v70 = v69;
      v65 = 0;
      *error = v69;
    }

    else
    {
      v65 = 0;
    }

    v57 = v20;
  }

LABEL_68:

  return v65;
}

void __82__RBLaunchdJobManager__createLaunchdJobWithIdentity_context_actualIdentity_error___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = rbs_job_oversize_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = _describeXPCObject();
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_262485000, v2, OS_LOG_TYPE_DEFAULT, "'%@' Constructed job description:\n%@", &v5, 0x16u);
  }
}

- (BOOL)_addPersonaFromExtensionContext:(id)context toServiceDict:(id)dict
{
  contextCopy = context;
  dictCopy = dict;
  if (![(RBPersonaManager *)self->_personaManager personaRequiredForExtensionContext:contextCopy serviceDict:dictCopy])
  {
    goto LABEL_4;
  }

  LODWORD(value) = -1;
  personaManager = self->_personaManager;
  identity = [contextCopy identity];
  v10 = [(RBPersonaManager *)personaManager personaForIdentity:identity context:contextCopy personaUID:&value personaUniqueString:0];

  if (v10)
  {
    xpc_dictionary_set_int64(dictCopy, "PersonaEnterprise", value);
LABEL_4:
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (void)_addExtensionEnvironmentFromContainerURL:(id)l toServiceDict:(id)dict
{
  lCopy = l;
  dictCopy = dict;
  v6 = lCopy;
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  v8 = xpc_dictionary_get_dictionary(dictCopy, "EnvironmentVariables");
  if (!v8)
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(dictCopy, "EnvironmentVariables", v8);
  }

  if (!xpc_dictionary_get_string(v8, "HOME"))
  {
    xpc_dictionary_set_string(v8, "HOME", fileSystemRepresentation);
    xpc_dictionary_set_string(v8, "CFFIXED_USER_HOME", fileSystemRepresentation);
    v9 = [lCopy URLByAppendingPathComponent:@"tmp"];
    xpc_dictionary_set_string(v8, "TMPDIR", [v9 fileSystemRepresentation]);
  }
}

- (void)_addExtensionContainerURL:(id)l toServiceDict:(id)dict
{
  lCopy = l;
  xdict = dict;
  xpc_dictionary_set_string(xdict, "_SandboxContainer", [l fileSystemRepresentation]);
}

- (id)_containerURLForExtensionContext:(id)context
{
  contextCopy = context;
  bundlePropertiesManager = self->_bundlePropertiesManager;
  identity = [contextCopy identity];
  v7 = [(RBBundlePropertiesManaging *)bundlePropertiesManager propertiesForIdentity:identity identifier:0];

  containerOverrideIdentifier = [v7 containerOverrideIdentifier];
  identity2 = [contextCopy identity];
  personaString = [identity2 personaString];
  v11 = personaString | containerOverrideIdentifier;

  if (v11)
  {
    [(RBContainerManager *)self->_containerManager sandboxContainerURLForExtensionContext:contextCopy containerOverrideIdentifier:containerOverrideIdentifier];
  }

  else
  {
    [v7 dataContainerURL];
  }
  v12 = ;

  return v12;
}

- (BOOL)_addContainerPropertiesFromExtensionContext:(id)context toServiceDict:(id)dict
{
  contextCopy = context;
  dictCopy = dict;
  if ([(RBContainerManager *)self->_containerManager containerRequiredForServiceDict:dictCopy])
  {
    v8 = [(RBContainerManager *)self->_containerManager sandboxContainerURLForExtensionContext:contextCopy containerOverrideIdentifier:0];
    if (!v8)
    {
      v10 = 0;
      goto LABEL_5;
    }

    v9 = v8;
    [(RBLaunchdJobManager *)self _addExtensionContainerURL:v8 toServiceDict:dictCopy];
    [(RBLaunchdJobManager *)self _addExtensionEnvironmentFromContainerURL:v9 toServiceDict:dictCopy];
  }

  v10 = 1;
LABEL_5:

  return v10;
}

- (void)_adjustLaunchdJobProperties:(id)properties context:(id)context
{
  propertiesCopy = properties;
  contextCopy = context;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [RBLaunchdJobManager _adjustLaunchdJobProperties:context:];
  }

  identity = [contextCopy identity];
  additionalProperties = [propertiesCopy additionalProperties];
  v9 = [additionalProperties mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  v57 = v12;
  v13 = [v12 objectForKeyedSubscript:@"RunningBoard"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = objc_opt_new();

    v13 = v14;
  }

  v15 = [v13 mutableCopy];
  v16 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v16 encodeRootObject:identity];
  [v16 finishEncoding];
  encodedData = [v16 encodedData];
  [v15 setObject:encodedData forKeyedSubscript:@"RunningBoardLaunchedIdentity"];

  [v15 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"RunningBoardLaunched"];
  v18 = [v15 objectForKeyedSubscript:@"Managed"];
  if (v18)
  {
  }

  else if ([identity defaultManageFlags] == 255)
  {
    [v15 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"Managed"];
  }

  beforeTranslocationBundlePath = [contextCopy beforeTranslocationBundlePath];

  if (beforeTranslocationBundlePath)
  {
    beforeTranslocationBundlePath2 = [contextCopy beforeTranslocationBundlePath];
    [v15 setObject:beforeTranslocationBundlePath2 forKeyedSubscript:@"BeforeTranslocationBundlePath"];
  }

  homeDirectory = [contextCopy homeDirectory];

  if (homeDirectory)
  {
    homeDirectory2 = [contextCopy homeDirectory];
    [v15 setObject:homeDirectory2 forKeyedSubscript:@"HOME"];
  }

  tmpDirectory = [contextCopy tmpDirectory];

  if (tmpDirectory)
  {
    tmpDirectory2 = [contextCopy tmpDirectory];
    [v15 setObject:tmpDirectory2 forKeyedSubscript:@"TMPDIR"];
  }

  launchRequestIdentifierToMachNameMap = [contextCopy launchRequestIdentifierToMachNameMap];
  if ([launchRequestIdentifierToMachNameMap count])
  {
    v26 = objc_opt_new();
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __59__RBLaunchdJobManager__adjustLaunchdJobProperties_context___block_invoke;
    v61[3] = &unk_279B33190;
    v62 = v26;
    v63 = identity;
    v27 = v26;
    [launchRequestIdentifierToMachNameMap enumerateKeysAndObjectsUsingBlock:v61];
    [v15 setObject:v27 forKeyedSubscript:@"LaunchRequestEndpointIdentifiers"];
  }

  clientRestriction = [contextCopy clientRestriction];
  dictionaryRepresentation = [clientRestriction dictionaryRepresentation];

  if ([dictionaryRepresentation count])
  {
    v30 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dictionaryRepresentation requiringSecureCoding:1 error:0];
    [v15 setObject:v30 forKeyedSubscript:@"ClientRestriction"];
  }

  v31 = [v15 copy];
  [v12 setObject:v31 forKeyedSubscript:@"RunningBoard"];

  v32 = [v12 copy];
  [propertiesCopy setAdditionalProperties:v32];

  spawnConstraint = [contextCopy spawnConstraint];
  [propertiesCopy setSpawnConstraint:spawnConstraint];

  v58 = identity;
  personaString = [identity personaString];
  if (personaString)
  {
    v35 = personaString;
    personaString2 = [propertiesCopy personaString];

    if (!personaString2)
    {
      v60 = -1;
      personaManager = self->_personaManager;
      v59 = 0;
      if ([(RBPersonaManager *)personaManager personaForIdentity:v58 context:contextCopy personaUID:&v60 personaUniqueString:&v59])
      {
        v38 = v60;
        v39 = v59;
        [propertiesCopy setEnterprisePersona:v38];
        [propertiesCopy setPersonaString:v39];
      }
    }
  }

  sandboxContainer = [propertiesCopy sandboxContainer];
  if (!sandboxContainer)
  {
    oneShotUUID = [propertiesCopy oneShotUUID];

    if (oneShotUUID)
    {
      goto LABEL_29;
    }

    containerManager = self->_containerManager;
    bundleIdentifier = [contextCopy bundleIdentifier];
    sandboxContainer = [(RBContainerManager *)containerManager sandboxContainerURLForExtensionContext:contextCopy containerOverrideIdentifier:bundleIdentifier];

    if (sandboxContainer)
    {
      [propertiesCopy setSandboxContainer:sandboxContainer];
      environmentVariables = [propertiesCopy environmentVariables];
      v45 = [environmentVariables objectForKeyedSubscript:@"HOME"];

      if (v45)
      {
        environmentVariables2 = [propertiesCopy environmentVariables];
        v47 = [environmentVariables2 mutableCopy];
        v48 = v47;
        if (v47)
        {
          v49 = v47;
        }

        else
        {
          v49 = objc_opt_new();
        }

        v56 = v49;

        path = [sandboxContainer path];
        [v56 setObject:path forKeyedSubscript:@"HOME"];

        path2 = [sandboxContainer path];
        [v56 setObject:path2 forKeyedSubscript:@"CFFIXED_USER_HOME"];

        v52 = [sandboxContainer URLByAppendingPathComponent:@"tmp"];
        path3 = [v52 path];
        [v56 setObject:path3 forKeyedSubscript:@"TMPDIR"];

        v54 = [v56 copy];
        [propertiesCopy setEnvironmentVariables:v54];
      }
    }

    v12 = v57;
  }

LABEL_29:
  [propertiesCopy setOverlay:&unk_28751B018];
}

void __59__RBLaunchdJobManager__adjustLaunchdJobProperties_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && [v6 BOOLValue])
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  else
  {
    v7 = rbs_job_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = 138543874;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring unsupported LaunchRequestEndpointIdentifiers value for launchIdentifier %{public}@: value=%{public}@", &v9, 0x20u);
    }
  }
}

- (id)_createAndSubmitExtensionJob:(id)job UUID:(id)d error:(id *)error
{
  v79[2] = *MEMORY[0x277D85DE8];
  jobCopy = job;
  dCopy = d;
  v10 = -[RBLaunchdInterfacing domainForPid:](self->_launchdInterface, "domainForPid:", [jobCopy hostPid]);
  launchdJobProperties = [jobCopy launchdJobProperties];
  if (launchdJobProperties && _os_feature_enabled_impl())
  {
    [(RBLaunchdJobManager *)self _adjustLaunchdJobProperties:launchdJobProperties context:jobCopy];
    v12 = MEMORY[0x277CBEBC0];
    _overrideExecutablePath = [jobCopy _overrideExecutablePath];
    v14 = [v12 fileURLWithPath:_overrideExecutablePath];

    logQueue = self->_logQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__RBLaunchdJobManager__createAndSubmitExtensionJob_UUID_error___block_invoke;
    block[3] = &unk_279B331B8;
    v74 = dCopy;
    v75 = jobCopy;
    v76 = v14;
    v16 = launchdJobProperties;
    v77 = v16;
    v17 = v14;
    dispatch_async(logQueue, block);
    launchdInterface = self->_launchdInterface;
    v72 = 0;
    v19 = [(RBLaunchdInterfacing *)launchdInterface submitExtensionWithExecutableURL:v17 properties:v16 domain:v10 error:&v72];
    v20 = v72;

    goto LABEL_4;
  }

  extensionOverlay = [jobCopy extensionOverlay];
  if (!extensionOverlay)
  {
    if (!error)
    {
      v26 = 0;
      goto LABEL_28;
    }

    v33 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA5B8];
    *buf = *MEMORY[0x277CCA450];
    v79[0] = @"Unable to launch extension without overlay";
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:buf count:1];
    v32 = [v33 errorWithDomain:v34 code:22 userInfo:v35];

    v26 = 0;
    goto LABEL_18;
  }

  v25 = _CFXPCCreateXPCObjectFromCFObject();
  v26 = v25;
  if (!v25 || (v27 = MEMORY[0x26672A380](v25), v28 = MEMORY[0x277D86468], v27 != MEMORY[0x277D86468]))
  {
    if (!error)
    {
LABEL_28:

      v19 = 0;
      v20 = 0;
LABEL_29:
      v38 = 0;
      goto LABEL_36;
    }

    v29 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA5B8];
    *buf = *MEMORY[0x277CCA450];
    v79[0] = @"Unable to launch extension using invalid overlay (not a dictionary)";
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:buf count:1];
    v32 = [v29 errorWithDomain:v30 code:22 userInfo:v31];

LABEL_18:
    v36 = v32;
    *error = v32;
    goto LABEL_28;
  }

  v39 = xpc_dictionary_get_dictionary(v26, "XPCService");
  v40 = v39;
  if (!v39 || MEMORY[0x26672A380](v39) != v28)
  {
    if (!error)
    {
LABEL_26:

      goto LABEL_28;
    }

    v63 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277CCA5B8];
    *buf = *MEMORY[0x277CCA450];
    v79[0] = @"Unable to launch extension using invalid overlay (missing XPCService dict)";
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:buf count:1];
    v43 = v42 = v40;
    v44 = [v63 errorWithDomain:v41 code:22 userInfo:v43];

    v40 = v42;
LABEL_25:
    v45 = v44;
    *error = v44;
    goto LABEL_26;
  }

  xpc_dictionary_set_string(v40, "_ManagedBy", "com.apple.runningboard");
  identity = [jobCopy identity];
  _addRBProperties(v40, identity, jobCopy);

  identity2 = [jobCopy identity];
  [identity2 personaString];
  v54 = v62 = v40;

  if (v54)
  {
    v40 = v62;
    if ([(RBLaunchdJobManager *)self _addPersonaFromExtensionContext:jobCopy toServiceDict:v62])
    {
      if ([(RBLaunchdJobManager *)self _addContainerPropertiesFromExtensionContext:jobCopy toServiceDict:v62])
      {
        goto LABEL_44;
      }

      if (!error)
      {
        goto LABEL_26;
      }

      v60 = @"Unable to launch extension (could not add container path to overlay)";
    }

    else
    {
      if (!error)
      {
        goto LABEL_26;
      }

      v60 = @"Unable to launch extension (could not get persona values for overlay)";
    }

    v44 = _posixErrorWithCodeAndDescription(22, v60);
    goto LABEL_25;
  }

LABEL_44:
  _overrideExecutablePath2 = [jobCopy _overrideExecutablePath];
  v64 = _overrideExecutablePath2;
  if (_overrideExecutablePath2)
  {
    v56 = _overrideExecutablePath2;
    queue = self->_logQueue;
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __63__RBLaunchdJobManager__createAndSubmitExtensionJob_UUID_error___block_invoke_151;
    v67[3] = &unk_279B331B8;
    v68 = dCopy;
    v69 = jobCopy;
    v57 = v56;
    v70 = v57;
    v58 = v26;
    v71 = v58;
    dispatch_async(queue, v67);
    v59 = self->_launchdInterface;
    v66 = 0;
    v19 = [(RBLaunchdInterfacing *)v59 submitExtension:v57 overlay:v58 domain:v10 error:&v66];
    v20 = v66;
  }

  else if (error)
  {
    _posixErrorWithCodeAndDescription(22, @"Unable to launch extension without path");
    v19 = 0;
    *error = v20 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  if (!v64)
  {
    goto LABEL_29;
  }

LABEL_4:
  if (!v19)
  {
    if (error)
    {
      v37 = v20;
      v19 = 0;
      v38 = 0;
      *error = v20;
      goto LABEL_36;
    }

    v19 = 0;
    goto LABEL_29;
  }

  if (dCopy || ([jobCopy oneShotUUID], (dCopy = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v79[0] = 0;
    v79[1] = 0;
    [dCopy getUUIDBytes:{v79, queue}];
    v21 = rbs_job_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = dCopy;
      _os_log_impl(&dword_262485000, v21, OS_LOG_TYPE_INFO, "Setting one-shot instance on launch: %{public}@", buf, 0xCu);
    }

    v22 = self->_launchdInterface;
    if (launchdJobProperties)
    {
      v23 = [(RBLaunchdInterfacing *)self->_launchdInterface instancePropertiesFromJobProperties:launchdJobProperties];
    }

    else
    {
      extensionOverlay2 = [jobCopy extensionOverlay];
      v23 = [(RBLaunchdInterfacing *)v22 instancePropertiesFromOverlay:extensionOverlay2];
    }

    v47 = self->_launchdInterface;
    v65 = 0;
    v48 = [(RBLaunchdInterfacing *)v47 forJob:v19 createInstance:v79 properties:v23 error:&v65];
    v49 = v65;

    if (error && !v48)
    {
      v50 = v49;
      *error = v49;
    }

    v20 = v49;
  }

  else
  {
    v48 = v19;
  }

  v19 = v48;
  v38 = v19;
LABEL_36:

  return v38;
}

void __63__RBLaunchdJobManager__createAndSubmitExtensionJob_UUID_error___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = rbs_job_oversize_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) hostPid];
    v5 = *(a1 + 48);
    v6 = [*(a1 + 56) debugDescription];
    v7 = 138544130;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_262485000, v2, OS_LOG_TYPE_DEFAULT, "'%{public}@' Submitting extension job properties (host PID %d, path %{public}@):\n%{public}@", &v7, 0x26u);
  }
}

void __63__RBLaunchdJobManager__createAndSubmitExtensionJob_UUID_error___block_invoke_151(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = rbs_job_oversize_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) hostPid];
    v5 = *(a1 + 48);
    v6 = _describeXPCObject();
    v7 = 138544130;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_262485000, v2, OS_LOG_TYPE_DEFAULT, "'%{public}@' Submitting extension overlay (host PID %d, path %{public}@):\n%{public}@", &v7, 0x26u);
  }
}

- (id)createAndLaunchWithIdentity:(id)identity context:(id)context error:(id *)error
{
  v117[1] = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  contextCopy = context;
  v10 = rbs_job_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = identityCopy;
    _os_log_impl(&dword_262485000, v10, OS_LOG_TYPE_DEFAULT, "Creating and launching job for: %{public}@", buf, 0xCu);
  }

  hasConsistentLaunchdJob = [identityCopy hasConsistentLaunchdJob];
  if (hasConsistentLaunchdJob)
  {
    consistentLaunchdJobLabel = [identityCopy consistentLaunchdJobLabel];
    if (consistentLaunchdJobLabel)
    {
      launchdInterface = self->_launchdInterface;
      currentDomain = [MEMORY[0x277CEBF20] currentDomain];
      v15 = [(RBLaunchdInterfacing *)launchdInterface copyJobWithLabel:consistentLaunchdJobLabel domain:currentDomain];

      if (v15)
      {
        v16 = self->_launchdInterface;
        v95 = 0;
        handle = [(RBLaunchdInterfacing *)v16 propertiesForJob:v15 error:&v95];
        v18 = v95;
        if (!handle)
        {
          v32 = rbs_process_log();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            [RBLaunchdJobManager createAndLaunchWithIdentity:context:error:];
          }

          goto LABEL_30;
        }

        if ([identityCopy osServiceType] == 3 && objc_msgSend(handle, "serviceType") != 3)
        {
          v78 = rbs_process_log();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
          {
            [RBLaunchdJobManager createAndLaunchWithIdentity:context:error:];
          }

          v83 = MEMORY[0x277CCA9B8];
          v81 = *MEMORY[0x277D47098];
          v113 = *MEMORY[0x277CCA450];
          v87 = [MEMORY[0x277CCACA8] stringWithFormat:@"Launchd could not find angel job"];
          v114 = v87;
          v20 = MEMORY[0x277CBEAC0];
          v21 = &v114;
          v22 = &v113;
        }

        else
        {
          if ([identityCopy osServiceType] != 2 || objc_msgSend(handle, "serviceType") != 3)
          {
            goto LABEL_31;
          }

          v19 = rbs_process_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            [RBLaunchdJobManager createAndLaunchWithIdentity:context:error:];
          }

          v83 = MEMORY[0x277CCA9B8];
          v81 = *MEMORY[0x277D47098];
          v111 = *MEMORY[0x277CCA450];
          v87 = [MEMORY[0x277CCACA8] stringWithFormat:@"Launchd found an angel job for requested daemon launch"];
          v112 = v87;
          v20 = MEMORY[0x277CBEAC0];
          v21 = &v112;
          v22 = &v111;
        }

        v79 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:1];
        v85 = [v83 errorWithDomain:v81 code:4 userInfo:v79];

        v32 = v15;
        v18 = v85;
LABEL_29:
        v15 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v36 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277D47098];
      v115 = *MEMORY[0x277CCA450];
      handle = [MEMORY[0x277CCACA8] stringWithFormat:@"Launchd could not find job"];
      v116 = handle;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
      v33 = v36;
      v34 = v37;
      v35 = 4;
    }

    else
    {
      v30 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277D47098];
      v109 = *MEMORY[0x277CCA450];
      handle = [MEMORY[0x277CCACA8] stringWithFormat:@"Identity doesn't have required label"];
      v110 = handle;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
      v33 = v30;
      v34 = v31;
      v35 = 3;
    }

    v18 = [v33 errorWithDomain:v34 code:v35 userInfo:v32];
    goto LABEL_29;
  }

  if ([identityCopy isExtension])
  {
    uuid = [identityCopy uuid];
    v94 = 0;
    v15 = [(RBLaunchdJobManager *)self _createAndSubmitExtensionJob:contextCopy UUID:uuid error:&v94];
    v18 = v94;

    consistentLaunchdJobLabel = rbs_general_log();
    if (!os_log_type_enabled(consistentLaunchdJobLabel, OS_LOG_TYPE_INFO))
    {
      goto LABEL_32;
    }

    handle = [v15 handle];
    *buf = 138543362;
    *&buf[4] = handle;
    _os_log_impl(&dword_262485000, consistentLaunchdJobLabel, OS_LOG_TYPE_INFO, "submitted extension job %{public}@", buf, 0xCu);
LABEL_31:

LABEL_32:
    if (v15)
    {
      v88 = contextCopy;
      v29 = hasConsistentLaunchdJob ^ 1;
      v90 = v18;
      v27 = &v90;
      v28 = [v15 start:&v90];
LABEL_34:
      v38 = *v27;

      if (!v28)
      {
        if (v38)
        {
          goto LABEL_67;
        }

        errorCopy3 = error;
        v39 = v29;
        v50 = rbs_general_log();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          [RBLaunchdJobManager createAndLaunchWithIdentity:v50 context:? error:?];
        }

        v51 = MEMORY[0x277CCA9B8];
        v52 = *MEMORY[0x277D47098];
        v102 = *MEMORY[0x277CCA450];
        v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Launchd job spawn failed for unknown reason"];
        v103 = v38;
        v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
        v54 = [v51 errorWithDomain:v52 code:0 userInfo:v53];

        goto LABEL_65;
      }

      if ([v28 state] == 2)
      {
        if ([v28 pid] > 0)
        {
          goto LABEL_66;
        }

        errorCopy3 = error;
        v39 = v29;
        v40 = rbs_general_log();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          [RBLaunchdJobManager createAndLaunchWithIdentity:context:error:];
        }

        v41 = MEMORY[0x277CCA9B8];
        v42 = *MEMORY[0x277D47098];
        v96 = *MEMORY[0x277CCA450];
        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Launchd job spawn failed for unknown reason"];
        v97 = v43;
        v44 = MEMORY[0x277CBEAC0];
        v45 = &v97;
        v46 = &v96;
        goto LABEL_61;
      }

      state = [v28 state];
      errorCopy3 = error;
      if (state <= 2)
      {
        if (state == 1)
        {
LABEL_60:
          v39 = v29;
          v41 = MEMORY[0x277CCA9B8];
          v42 = *MEMORY[0x277D47098];
          v98 = *MEMORY[0x277CCA450];
          v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Launchd job spawn failed for unknown reason"];
          v99 = v43;
          v44 = MEMORY[0x277CBEAC0];
          v45 = &v99;
          v46 = &v98;
LABEL_61:
          v65 = [v44 dictionaryWithObjects:v45 forKeys:v46 count:1];
          v54 = [v41 errorWithDomain:v42 code:0 userInfo:v65];

          v38 = v43;
          goto LABEL_65;
        }

        if (state == 2)
        {
          abort();
        }
      }

      else
      {
        if (state == 4)
        {
          v39 = v29;
          v82 = MEMORY[0x277CCA9B8];
          v80 = *MEMORY[0x277D47098];
          v100 = *MEMORY[0x277CCA450];
          v66 = MEMORY[0x277CCACA8];
          lastExitStatus = [v28 lastExitStatus];
          os_reason_namespace = [lastExitStatus os_reason_namespace];
          lastExitStatus2 = [v28 lastExitStatus];
          v69 = [v66 stringWithFormat:@"Launchd job spawn immediately exited with namespace %d code %lld", os_reason_namespace, objc_msgSend(lastExitStatus2, "os_reason_code")];
          v101 = v69;
          v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
          v54 = [v82 errorWithDomain:v80 code:0 userInfo:v70];

          v38 = lastExitStatus;
          goto LABEL_65;
        }

        if (state == 3)
        {
          v39 = v29;
          lastSpawnError = [v28 lastSpawnError];
          v57 = MEMORY[0x277CCA9B8];
          v58 = *MEMORY[0x277CCA5B8];
          v117[0] = *MEMORY[0x277CCA450];
          *buf = @"Launchd job spawn failed";
          v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v117 count:1];
          v54 = [v57 errorWithDomain:v58 code:lastSpawnError userInfo:v59];

LABEL_65:
          v38 = v54;
          v29 = v39;
          error = errorCopy3;
LABEL_66:
          if (!v38)
          {
            v76 = [MEMORY[0x277D46F50] identifierWithPid:{objc_msgSend(v28, "pid")}];
            if (v29)
            {
              os_unfair_lock_lock(&self->_lock);
              [(NSMutableDictionary *)self->_lock_jobsByIdentifier setObject:v15 forKey:v76];
              os_unfair_lock_unlock(&self->_lock);
            }

            v49 = [MEMORY[0x277D46F70] instanceWithIdentifier:v76 identity:identityCopy];
            v75 = 0;
            contextCopy = v88;
            goto LABEL_83;
          }

LABEL_67:
          v71 = rbs_general_log();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            [RBLaunchdJobManager createAndLaunchWithIdentity:context:error:];
          }

          contextCopy = v88;
          if (error)
          {
            v72 = v38;
            *error = v38;
          }

          if (!v29)
          {
            v49 = 0;
            goto LABEL_84;
          }

          v73 = rbs_general_log();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_262485000, v73, OS_LOG_TYPE_INFO, "Removing job after failed start", buf, 2u);
          }

          v89 = v38;
          v74 = [v15 remove:&v89];
          v75 = v89;

          if (v74)
          {
            v49 = 0;
            v38 = v75;
            contextCopy = v88;
LABEL_84:

            v18 = v38;
            goto LABEL_85;
          }

          v76 = rbs_general_log();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            [RBLaunchdJobManager createAndLaunchWithIdentity:context:error:];
          }

          v49 = 0;
          contextCopy = v88;
LABEL_83:

          v38 = v75;
          goto LABEL_84;
        }
      }

      v64 = rbs_general_log();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        [RBLaunchdJobManager createAndLaunchWithIdentity:context:error:];
      }

      goto LABEL_60;
    }

    goto LABEL_40;
  }

  v92 = 0;
  v93 = 0;
  v15 = [(RBLaunchdJobManager *)self _createLaunchdJobWithIdentity:identityCopy context:contextCopy actualIdentity:&v93 error:&v92];
  v24 = v93;
  v18 = v92;
  if (_os_feature_enabled_impl() && v24 && v24 != identityCopy && ([v24 isEqual:identityCopy] & 1) == 0)
  {
    v25 = rbs_job_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = identityCopy;
      v107 = 2114;
      v108 = v24;
      _os_log_impl(&dword_262485000, v25, OS_LOG_TYPE_DEFAULT, "Adjusting identity of job from %{public}@ to %{public}@", buf, 0x16u);
    }

    v26 = v24;
    identityCopy = v26;
  }

  if (v15)
  {
    v88 = contextCopy;
    v91 = v18;
    v27 = &v91;
    v28 = [v15 submitAndStart:&v91];
    v29 = 1;
    goto LABEL_34;
  }

LABEL_40:
  v47 = rbs_general_log();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    [RBLaunchdJobManager createAndLaunchWithIdentity:context:error:];
  }

  if (error)
  {
    if (v18)
    {
      v48 = v18;
      v49 = 0;
      *error = v18;
      goto LABEL_85;
    }

    v60 = MEMORY[0x277CCA9B8];
    v61 = *MEMORY[0x277D47098];
    v104 = *MEMORY[0x277CCA450];
    v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Launchd job spawn failed to create job"];
    v105 = v62;
    v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
    *error = [v60 errorWithDomain:v61 code:0 userInfo:v63];

    v18 = 0;
  }

  v49 = 0;
LABEL_85:

  return v49;
}

- (BOOL)_isRunningBoardLaunched:(id)launched
{
  v18 = *MEMORY[0x277D85DE8];
  launchdInterface = self->_launchdInterface;
  v15 = 0;
  v4 = [(RBLaunchdInterfacing *)launchdInterface propertiesForJob:launched error:&v15];
  v5 = v15;
  if (v4)
  {
    additionalProperties = [v4 additionalProperties];
    v7 = additionalProperties;
    if (additionalProperties && (v8 = MEMORY[0x26672A380](additionalProperties), v9 = MEMORY[0x277D86468], v8 == MEMORY[0x277D86468]))
    {
      v12 = xpc_dictionary_get_value(v7, "RunningBoard");
      v10 = v12;
      if (v12 && MEMORY[0x26672A380](v12) == v9)
      {
        v11 = xpc_dictionary_get_BOOL(v10, "RunningBoardLaunched");
        goto LABEL_15;
      }

      v13 = rbs_general_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_262485000, v13, OS_LOG_TYPE_INFO, "_isRunningBoardLaunched has no RBProperties", buf, 2u);
      }
    }

    else
    {
      v10 = rbs_general_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_262485000, v10, OS_LOG_TYPE_INFO, "_isRunningBoardLaunched has no additionalProperties", buf, 2u);
      }
    }

    v11 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v7 = rbs_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v5;
    _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_DEFAULT, "propertiesForJob failed for _isRunningBoardLaunched %{public}@", buf, 0xCu);
  }

  v11 = 1;
LABEL_16:

  return v11;
}

- (BOOL)_removeJobWithInstance:(id)instance orJob:(id)job error:(id *)error
{
  v44[1] = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  jobCopy = job;
  if (!instanceCopy)
  {
    [RBLaunchdJobManager _removeJobWithInstance:orJob:error:];
  }

  v10 = rbs_job_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    *&buf[4] = instanceCopy;
    _os_log_impl(&dword_262485000, v10, OS_LOG_TYPE_INFO, "Cleaning out %{public}@ from job manager", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  if (jobCopy)
  {
LABEL_9:
    os_unfair_lock_unlock(&self->_lock);
    identity = [instanceCopy identity];
    if (([identity isApplication] & 1) == 0 && !objc_msgSend(identity, "isDext"))
    {
      v25 = 1;
LABEL_31:

      goto LABEL_32;
    }

    if (([identity isXPCService] & 1) != 0 || -[RBLaunchdJobManager _isRunningBoardLaunched:](self, "_isRunningBoardLaunched:", jobCopy))
    {
      v20 = rbs_job_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = instanceCopy;
        _os_log_impl(&dword_262485000, v20, OS_LOG_TYPE_DEFAULT, "Removing launch job for: %{public}@", buf, 0xCu);
      }

      v42 = 0;
      v21 = [jobCopy remove:&v42];
      v22 = v42;
      v23 = v22;
      if ((v21 & 1) != 0 || [v22 code] == 36)
      {
        v24 = rbs_job_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = instanceCopy;
          _os_log_impl(&dword_262485000, v24, OS_LOG_TYPE_DEFAULT, "Removed job for %{public}@", buf, 0xCu);
        }

        v25 = 1;
        goto LABEL_29;
      }

      v32 = rbs_general_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        [RBLaunchdJobManager _removeJobWithInstance:orJob:error:];
      }

      if (error)
      {
        instanceCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to delete job with label %@", instanceCopy];
        code = [v23 code];
        v35 = MEMORY[0x277CCA9B8];
        v36 = *MEMORY[0x277CCA5B8];
        v44[0] = *MEMORY[0x277CCA450];
        *buf = instanceCopy;
        v37 = MEMORY[0x277CBEAC0];
        v24 = instanceCopy;
        v38 = [v37 dictionaryWithObjects:buf forKeys:v44 count:1];
        v39 = [v35 errorWithDomain:v36 code:code userInfo:v38];

        v40 = v39;
        v25 = 0;
        *error = v39;
        goto LABEL_29;
      }
    }

    else
    {
      v26 = rbs_general_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        [RBLaunchdJobManager _removeJobWithInstance:orJob:error:];
      }

      if (error)
      {
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to delete job not submitted by RunningBoard"];
        v27 = MEMORY[0x277CCA9B8];
        v28 = *MEMORY[0x277CCA5B8];
        v44[0] = *MEMORY[0x277CCA450];
        *buf = v24;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v44 count:1];
        v30 = [v27 errorWithDomain:v28 code:-1 userInfo:v29];

        v31 = v30;
        v23 = 0;
        v25 = 0;
        *error = v30;
LABEL_29:

LABEL_30:
        goto LABEL_31;
      }

      v23 = 0;
    }

    v25 = 0;
    goto LABEL_30;
  }

  lock_monitoredJobsByIdentifier = self->_lock_monitoredJobsByIdentifier;
  identifier = [instanceCopy identifier];
  jobCopy = [(NSMutableDictionary *)lock_monitoredJobsByIdentifier objectForKey:identifier];

  if (jobCopy || (v13 = self->_lock_jobsByIdentifier, [instanceCopy identifier], v14 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](v13, "objectForKey:", v14), jobCopy = objc_claimAutoreleasedReturnValue(), v14, jobCopy))
  {
    lock_jobsByIdentifier = self->_lock_jobsByIdentifier;
    identifier2 = [instanceCopy identifier];
    [(NSMutableDictionary *)lock_jobsByIdentifier removeObjectForKey:identifier2];

    v17 = self->_lock_monitoredJobsByIdentifier;
    identifier3 = [instanceCopy identifier];
    [(NSMutableDictionary *)v17 removeObjectForKey:identifier3];

    goto LABEL_9;
  }

  os_unfair_lock_unlock(&self->_lock);
  jobCopy = rbs_general_log();
  if (os_log_type_enabled(jobCopy, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = instanceCopy;
    _os_log_impl(&dword_262485000, jobCopy, OS_LOG_TYPE_DEFAULT, "removeJobWithInstance called for identity without existing job %{public}@", buf, 0xCu);
  }

  v25 = 1;
LABEL_32:

  return v25;
}

- (id)synchronizeJobs
{
  v69 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  launchdInterface = self->_launchdInterface;
  v61 = 0;
  v33 = [(RBLaunchdInterfacing *)launchdInterface copyJobsManagedBy:@"com.apple.runningboard" error:&v61];
  v3 = v61;
  if (v33)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v33;
    v4 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
    if (!v4)
    {
      goto LABEL_46;
    }

    v43 = *v58;
    while (1)
    {
      v5 = 0;
      v6 = v3;
      do
      {
        if (*v58 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v57 + 1) + 8 * v5);
        v53 = 0;
        v54 = &v53;
        v55 = 0x2020000000;
        v56 = 0;
        if (_synchronizeJobsQueue_onceToken != -1)
        {
          [RBLaunchdJobManager synchronizeJobs];
        }

        v8 = _synchronizeJobsQueue_queue;
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __38__RBLaunchdJobManager_synchronizeJobs__block_invoke;
        v52[3] = &unk_279B331E0;
        v52[4] = v7;
        v52[5] = &v53;
        [v7 monitorOnQueue:v8 withHandler:v52];

        [v7 cancelMonitor];
        v9 = self->_launchdInterface;
        v51 = 0;
        v10 = [(RBLaunchdInterfacing *)v9 propertiesForJob:v7 error:&v51];
        v3 = v51;

        if (v10)
        {
          additionalProperties = [v10 additionalProperties];
          v12 = additionalProperties;
          if (!additionalProperties || MEMORY[0x26672A380](additionalProperties) != MEMORY[0x277D86468])
          {
            v13 = rbs_general_log();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
            {
              [(RBLaunchdJobManager *)&v49 synchronizeJobs];
            }

            goto LABEL_43;
          }

          v14 = xpc_dictionary_get_value(v12, "RunningBoard");
          v13 = v14;
          if (!v14 || MEMORY[0x26672A380](v14) != MEMORY[0x277D86468])
          {
            v15 = rbs_general_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              [(RBLaunchdJobManager *)&v47 synchronizeJobs];
            }

            goto LABEL_42;
          }

          v15 = xpc_dictionary_get_value(v13, "RunningBoardLaunchedIdentity");
          if (v15)
          {
            v16 = objc_alloc(MEMORY[0x277D46F50]);
            v17 = *(v54 + 6);
            if (!v17)
            {
              v17 = getpid();
            }

            v41 = [v16 initWithPid:{v17, v33}];
            if (MEMORY[0x26672A380](v15) != MEMORY[0x277D86458])
            {
              if (MEMORY[0x26672A380](v15) == MEMORY[0x277D86468])
              {
                v18 = MEMORY[0x277D46F60];
                instance = [v10 instance];
                v20 = v18;
                v21 = instance;
                v22 = [v20 decodeFromJob:v15 uuid:instance];
                v23 = v21;
                v24 = v22;
                goto LABEL_29;
              }

              goto LABEL_30;
            }

            loga = MEMORY[0x277CBEA90];
            bytes_ptr = xpc_data_get_bytes_ptr(v15);
            logb = [loga dataWithBytes:bytes_ptr length:xpc_data_get_length(v15)];
            v24 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:logb error:0];
            v23 = logb;
LABEL_29:

            if (v24)
            {
LABEL_34:
              log = v24;
              v35 = [MEMORY[0x277D46F70] instanceWithIdentifier:v41 identity:v24];
              if (*(v54 + 6))
              {
                [array addObject:v35];
                os_unfair_lock_lock(&self->_lock);
                [(NSMutableDictionary *)self->_lock_jobsByIdentifier setObject:v7 forKey:v41];
                os_unfair_lock_unlock(&self->_lock);
              }

              else
              {
                v28 = rbs_general_log();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  handle = [v7 handle];
                  [(RBLaunchdJobManager *)handle synchronizeJobs:v62];
                }

                [(RBLaunchdJobManager *)self _removeJobWithInstance:v35 orJob:v7 error:0];
              }
            }

            else
            {
LABEL_30:
              if (MEMORY[0x26672A380](v15) == MEMORY[0x277D86458])
              {
                logc = MEMORY[0x277CBEA90];
                v27 = xpc_data_get_bytes_ptr(v15);
                logd = [logc dataWithBytes:v27 length:xpc_data_get_length(v15)];
                v24 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:logd error:0];

                if (v24)
                {
                  goto LABEL_34;
                }
              }

              log = rbs_general_log();
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                handle2 = [v7 handle];
                [(RBLaunchdJobManager *)handle2 synchronizeJobs:v64];
              }
            }
          }

          else
          {
            v41 = rbs_general_log();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              [(RBLaunchdJobManager *)&v45 synchronizeJobs];
            }
          }

LABEL_42:
LABEL_43:

          goto LABEL_44;
        }

        v12 = rbs_general_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v67 = v3;
          _os_log_fault_impl(&dword_262485000, v12, OS_LOG_TYPE_FAULT, "propertiesForPid failed for job %{public}@", buf, 0xCu);
        }

LABEL_44:

        _Block_object_dispose(&v53, 8);
        ++v5;
        v6 = v3;
      }

      while (v4 != v5);
      v4 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
      if (!v4)
      {
LABEL_46:
        v30 = obj;
        goto LABEL_49;
      }
    }
  }

  v31 = rbs_general_log();
  v30 = v31;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
  {
    [RBLaunchdJobManager synchronizeJobs];
    v30 = v31;
  }

LABEL_49:

  return array;
}

void __38__RBLaunchdJobManager_synchronizeJobs__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [a2 pid];
  }

  else
  {
    v4 = rbs_general_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __38__RBLaunchdJobManager_synchronizeJobs__block_invoke_cold_1(a1);
    }
  }
}

- (void)invokeOnProcessDeath:(id)death handler:(id)handler onQueue:(id)queue
{
  deathCopy = death;
  handlerCopy = handler;
  queueCopy = queue;
  os_unfair_lock_lock(&self->_lock);
  identifier = [deathCopy identifier];
  v12 = [(NSMutableDictionary *)self->_lock_monitoredJobsByIdentifier objectForKey:identifier];

  if (v12)
  {
    v13 = rbs_process_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [RBLaunchdJobManager invokeOnProcessDeath:deathCopy handler:? onQueue:?];
    }
  }

  v14 = [(NSMutableDictionary *)self->_lock_jobsByIdentifier objectForKey:identifier];
  if (!v14)
  {
    if ([identifier pid] <= 0)
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v15 = -[RBLaunchdInterfacing copyJobWithPid:](self->_launchdInterface, "copyJobWithPid:", [identifier pid]);
      os_unfair_lock_unlock(&self->_lock);
      if (v15)
      {
        goto LABEL_7;
      }
    }

    [deathCopy invokeHandlerOnProcessDeath:handlerCopy onQueue:queueCopy];
    goto LABEL_13;
  }

  v15 = v14;
  [(NSMutableDictionary *)self->_lock_monitoredJobsByIdentifier setObject:v14 forKey:identifier];
  [(NSMutableDictionary *)self->_lock_jobsByIdentifier removeObjectForKey:identifier];
  os_unfair_lock_unlock(&self->_lock);
LABEL_7:
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke;
  v24[3] = &unk_279B33208;
  v25 = deathCopy;
  v28 = handlerCopy;
  v16 = v15;
  v26 = v16;
  selfCopy = self;
  v17 = MEMORY[0x266729AD0](v24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke_199;
  block[3] = &unk_279B32F78;
  v21 = v16;
  v22 = queueCopy;
  v23 = v17;
  v18 = v17;
  v19 = v16;
  dispatch_async(v22, block);

LABEL_13:
}

void __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke(uint64_t a1, void *a2, int a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    if ([v5 pid])
    {
      v7 = [v6 pid];
      v8 = (a1 + 32);
      if (v7 != [*(a1 + 32) rbs_pid])
      {
        v9 = [*v8 identity];
        v10 = [v9 isApplication];

        v11 = rbs_general_log();
        v12 = v11;
        if (v10)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke_cold_1(a1 + 32, v6);
          }
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *v8;
          v36 = 138543618;
          v37 = v22;
          v38 = 1024;
          v39 = [v6 pid];
          _os_log_impl(&dword_262485000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ reported with incorrect pid %d", &v36, 0x12u);
        }
      }
    }

    v23 = [v6 state];
    if (v23 <= 2)
    {
      if (v23 == 1)
      {
        v14 = rbs_general_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v35 = *(a1 + 32);
          v36 = 138543362;
          v37 = v35;
          v25 = "%{public}@ reported to RB as never ran";
          goto LABEL_33;
        }

LABEL_34:

        goto LABEL_35;
      }

      if (v23 == 2)
      {
        v14 = rbs_general_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 32);
          v36 = 138543362;
          v37 = v24;
          v25 = "%{public}@ reported to RB as running";
LABEL_33:
          _os_log_impl(&dword_262485000, v14, OS_LOG_TYPE_DEFAULT, v25, &v36, 0xCu);
          goto LABEL_34;
        }

        goto LABEL_34;
      }

LABEL_29:
      v14 = rbs_general_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke_cold_3(a1, v6);
      }

      goto LABEL_34;
    }

    if (v23 != 3)
    {
      if (v23 != 4)
      {
        goto LABEL_29;
      }

      v14 = [v6 lastExitStatus];
      if (v14)
      {
LABEL_28:
        v33 = *(a1 + 48);
        v34 = [*(a1 + 32) identity];
        [v33 _addReslideIdentityIfNeeded:v34 exitStatus:v14];

        _handleDeath(*(a1 + 32), *(a1 + 56), v14);
        [*(a1 + 40) cancelMonitor];
        goto LABEL_34;
      }

      v26 = rbs_general_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke_cold_2(a1, v26, v27, v28, v29, v30, v31, v32);
      }
    }

    v14 = 0;
    goto LABEL_28;
  }

  v13 = rbs_general_log();
  v14 = v13;
  if (a3 != 113)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke_cold_4(a1, v14, v16, v17, v18, v19, v20, v21);
    }

    goto LABEL_34;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v36 = 138543362;
    v37 = v15;
    _os_log_impl(&dword_262485000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ job reported to RB as removed", &v36, 0xCu);
  }

  _handleDeath(*(a1 + 32), *(a1 + 56), 0);
  [*(a1 + 40) cancelMonitor];
LABEL_35:
}

- (unint64_t)test_trackedJobCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_lock_monitoredJobsByIdentifier count];
  v4 = [(NSMutableDictionary *)self->_lock_jobsByIdentifier count];
  os_unfair_lock_unlock(&self->_lock);
  return v4 + v3;
}

+ (void)lastExitStatusForLabel:error:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&dword_262485000, v1, OS_LOG_TYPE_ERROR, "Unexpected exit reason from launchd %{public}@: %llu", v2, 0x16u);
}

- (void)_addSharedPropertiesToData:(void *)a1 forIdentity:context:.cold.1(void *a1)
{
  v1 = [a1 identity];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_addAppPropertiesToData:(int)a1 forIdentity:(NSObject *)a2 context:actualIdentity:error:.cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_262485000, a2, OS_LOG_TYPE_FAULT, "Unrecognized RBSLaunchSpawnType %d", v2, 8u);
}

- (void)_addAppPropertiesToData:forIdentity:context:actualIdentity:error:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2114;
  v4 = v0;
  _os_log_fault_impl(&dword_262485000, v1, OS_LOG_TYPE_FAULT, "'%{public}@' container path lookup failed: %{public}@", v2, 0x16u);
}

- (void)_adjustLaunchdJobProperties:context:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
}

- (void)createAndLaunchWithIdentity:context:error:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  [v1 pid];
  [v0 state];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

- (void)createAndLaunchWithIdentity:context:error:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  [v1 pid];
  [v0 state];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

- (void)_removeJobWithInstance:orJob:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"RBLaunchdJobManager.m" lineNumber:1499 description:{@"Invalid parameter not satisfying: %@", @"instance"}];
}

- (void)synchronizeJobs
{
  *buf = 138543362;
  *a3 = self;
  _os_log_error_impl(&dword_262485000, log, OS_LOG_TYPE_ERROR, "Skipping recovery for process with invalid identity %{public}@", buf, 0xCu);
}

void __38__RBLaunchdJobManager_synchronizeJobs__block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) handle];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)invokeOnProcessDeath:(void *)a1 handler:onQueue:.cold.1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke_cold_1(uint64_t a1, void *a2)
{
  [a2 pid];
  OUTLINED_FUNCTION_2_4();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);
}

void __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_1_5(&dword_262485000, a2, a3, "%{public}@ termination reported but no exit status is present", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke_cold_3(uint64_t a1, void *a2)
{
  [a2 state];
  OUTLINED_FUNCTION_2_4();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __60__RBLaunchdJobManager_invokeOnProcessDeath_handler_onQueue___block_invoke_cold_4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_1_5(&dword_262485000, a2, a3, "OSLaunchdJob monitor called with nil info for %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end
@interface DTXPCServiceController
+ (id)sharedInstance;
- (DTXPCServiceController)init;
- (int)_configureInstance:(id)instance identifier:(id)identifier servicePid:(int)pid environment:(id)environment arguments:(id)arguments options:(id)options;
- (void)_matchRemove:(id)remove;
- (void)_registryModify:(BOOL)modify identifier:(id)identifier parent:(int)parent client:(id)client block:(id)block;
- (void)registerClient:(id)client forXPCService:(id)service environment:(id)environment arguments:(id)arguments options:(id)options handler:(id)handler;
- (void)releaseAssertionsMadeByClient:(id)client;
- (void)requestDebugLaunchOfDaemonWithSpecifier:(id)specifier programPath:(id)path environment:(id)environment arguments:(id)arguments options:(id)options handler:(id)handler;
- (void)unregisterClient:(id)client withIdentifier:(id)identifier parent:(int)parent;
@end

@implementation DTXPCServiceController

+ (id)sharedInstance
{
  if (qword_100021BE0 != -1)
  {
    sub_100012F9C();
  }

  v3 = qword_100021BE8;

  return v3;
}

- (DTXPCServiceController)init
{
  v10.receiver = self;
  v10.super_class = DTXPCServiceController;
  v2 = [(DTXPCServiceController *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    registrationDictsByPid = v2->_registrationDictsByPid;
    v2->_registrationDictsByPid = v3;

    v5 = dispatch_queue_create("XPCServiceController guard", 0);
    guard = v2->_guard;
    v2->_guard = v5;

    v7 = dispatch_queue_create("XPCServiceController exec monitor", 0);
    execMonitorQueue = v2->_execMonitorQueue;
    v2->_execMonitorQueue = v7;
  }

  return v2;
}

- (void)releaseAssertionsMadeByClient:(id)client
{
  clientCopy = client;
  if (sub_100007DE4() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    v7 = objc_opt_class();
    v8 = 2112;
    v9 = clientCopy;
    v4 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%@ releasing active assertions taken on behalf of client %@", &v6, 0x16u);
  }

  if (clientCopy)
  {
    v5 = +[DTAssertionManager sharedInstance];
    [v5 removeClaimsHeldByClient:clientCopy];
  }
}

- (void)registerClient:(id)client forXPCService:(id)service environment:(id)environment arguments:(id)arguments options:(id)options handler:(id)handler
{
  clientCopy = client;
  serviceCopy = service;
  environmentCopy = environment;
  argumentsCopy = arguments;
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v108 = handlerCopy;
    v15 = serviceCopy;
    v103 = sub_100007DE4();
    v16 = [optionsCopy objectForKeyedSubscript:@"KillExisting"];
    v99 = [v16 isEqualToNumber:&__kCFBooleanFalse];

    v17 = [optionsCopy objectForKeyedSubscript:@"RequestingPid"];
    intValue = [v17 intValue];

    v18 = [optionsCopy objectForKeyedSubscript:@"OnceOnly"];
    bOOLValue = [v18 BOOLValue];

    v19 = [optionsCopy objectForKeyedSubscript:@"EnableExtension"];
    v104 = [v19 isEqualToNumber:&__kCFBooleanTrue];

    v20 = [optionsCopy objectForKeyedSubscript:@"DisableMemoryLimits"];
    v98 = [v20 isEqualToNumber:&__kCFBooleanTrue];

    v107 = [optionsCopy objectForKeyedSubscript:@"AppExtensionHoldBundleID"];
    v112 = [optionsCopy objectForKeyedSubscript:@"AppExtensionHoldURL"];
    if (!v104)
    {
      v105 = 0;
      goto LABEL_44;
    }

    if (!(v107 | v112))
    {
      v105 = 0;
      v112 = 0;
      goto LABEL_44;
    }

    v100 = +[PKManager defaultManager];
    if (v107)
    {
      v162 = 0;
      v21 = [LSBundleRecord bundleRecordWithBundleIdentifier:v107 allowPlaceholder:0 error:&v162];
      v22 = v162;
      v23 = [v21 URL];

      v112 = v23;
      if (v22)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v22 = 0;
    }

    if (v112)
    {
      v95 = v22;
      if (v103 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = v112;
        *&buf[12] = 2112;
        *&buf[14] = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: ExtensionAssertion Hold Start %@:%@", buf, 0x16u);
      }

      v161 = 0;
      v105 = [v100 holdPlugInsInApplication:v112 withError:&v161];
      v96 = v161;
      if (((v96 != 0) & v103) == 1)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v96;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: ExtensionAssertion Hold Error: %@", buf, 0xCu);
        }
      }

      else
      {
        v94 = [NSBundle bundleWithURL:v112];
        v159 = 0u;
        v160 = 0u;
        v157 = 0u;
        v158 = 0u;
        builtInPlugInsURL = [v94 builtInPlugInsURL];
        relativePath = [builtInPlugInsURL relativePath];
        v26 = [v94 URLsForResourcesWithExtension:@"appex" subdirectory:relativePath];

        v27 = [v26 countByEnumeratingWithState:&v157 objects:v192 count:16];
        if (v27)
        {
          v28 = *v158;
LABEL_24:
          v29 = 0;
          while (1)
          {
            if (*v158 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = *(*(&v157 + 1) + 8 * v29);
            v31 = [NSBundle bundleWithURL:v30];
            bundleIdentifier = [v31 bundleIdentifier];
            v33 = [bundleIdentifier isEqualToString:v15];

            if (v33)
            {
              break;
            }

            if (v27 == ++v29)
            {
              v27 = [v26 countByEnumeratingWithState:&v157 objects:v192 count:16];
              if (v27)
              {
                goto LABEL_24;
              }

              goto LABEL_30;
            }
          }

          v34 = v30;

          if (!v34)
          {
            goto LABEL_40;
          }

          if (v103 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v34;
            *&buf[12] = 2112;
            *&buf[14] = v15;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: ExtensionAssertion Terminate %@:%@", buf, 0x16u);
          }

          v156 = 0;
          [v100 terminatePlugInAtURL:v34 withError:&v156];
          v35 = v156;
          if (v35 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v96;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "DTXPCServiceController: ExtensionAssertion Terminate Error: %@", buf, 0xCu);
          }
        }

        else
        {
LABEL_30:
          v34 = v26;
        }

LABEL_40:
      }

      v22 = v95;
      goto LABEL_43;
    }

LABEL_17:
    v96 = 0;
    if (v22)
    {
      v105 = 0;
      if (v103)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *&buf[4] = v15;
          *&buf[12] = 2112;
          *&buf[14] = v22;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: Error retrieving LSApplicationRecord for %@, %@", buf, 0x16u);
        }

        v96 = 0;
        v105 = 0;
      }
    }

    else
    {
      v105 = 0;
    }

LABEL_43:

LABEL_44:
    v36 = [v15 containsString:@"LaunchDaemons"];
    v37 = [v15 containsString:@"LaunchAgents"];
    pathExtension = [v15 pathExtension];
    v39 = [pathExtension isEqualToString:@"plist"];

    if (!v39)
    {
      firstObject = 0;
      v47 = 0;
      goto LABEL_53;
    }

    if ((DVTIUIsAppleInternalOSEnvironment(v40, v41) & 1) == 0)
    {
      v178 = NSLocalizedDescriptionKey;
      v57 = [NSString stringWithFormat:@"Daemon profiling is not supported on customer installations."];
      *buf = v57;
      v58 = [NSDictionary dictionaryWithObjects:buf forKeys:&v178 count:1];
      v46 = [NSError errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v58];

LABEL_102:
      if (v46)
      {
        v108[2](v108, v15, 0, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v46);
        goto LABEL_104;
      }

      intValue = 0xFFFFFFFFLL;
      v46 = [NSDictionary dictionaryWithContentsOfFile:v15];
      v47 = [v46 objectForKeyedSubscript:@"Label"];

      v88 = [v46 objectForKeyedSubscript:@"Program"];
      v89 = v88;
      if (v88)
      {
        firstObject = v88;
      }

      else
      {
        v90 = [v46 objectForKeyedSubscript:@"ProgramArguments"];
        firstObject = [v90 firstObject];
      }

      if (!v47)
      {
        v190 = NSLocalizedDescriptionKey;
        v91 = [NSString stringWithFormat:@"Failed to load plist for launchd job with path: %@", 0];
        v191 = v91;
        v92 = [NSDictionary dictionaryWithObjects:&v191 forKeys:&v190 count:1];
        v93 = [NSError errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v92];
        v108[2](v108, 0, 0, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v93);

        v15 = firstObject;
        goto LABEL_104;
      }

      v15 = v47;
LABEL_53:
      v48 = [v15 hasPrefix:@"com.apple."];
      if (v48 && (DVTIUIsAppleInternalOSEnvironment(v48, v49) & 1) == 0)
      {
        v188 = NSLocalizedDescriptionKey;
        v74 = [NSString stringWithFormat:@"XPC service is restricted: %@", v15];
        v189 = v74;
        v75 = [NSDictionary dictionaryWithObjects:&v189 forKeys:&v188 count:1];
        v76 = [NSError errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v75];
        v108[2](v108, v15, 0, intValue, 0xFFFFFFFFLL, v76);

        v46 = v47;
LABEL_104:

        handlerCopy = v108;
        goto LABEL_105;
      }

      if (intValue == -1)
      {
        v50 = 3;
      }

      else
      {
        v50 = 1;
      }

      v97 = optionsCopy;
      if (sub_100007DE4() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 67109634;
        *&buf[4] = v50;
        *&buf[8] = 2112;
        *&buf[10] = v15;
        *&buf[18] = 1024;
        *&buf[20] = intValue & ~(intValue >> 31);
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: calling xpc_service_create: serviceType=%d, identifier=%@, pid %d", buf, 0x18u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v185 = sub_100009528;
      v186 = sub_100009538;
      v187 = 0;
      v178 = 0;
      v179 = &v178;
      v180 = 0x3032000000;
      v181 = sub_100009528;
      v182 = sub_100009538;
      v183 = 0;
      v174 = 0;
      v175 = &v174;
      v176 = 0x2020000000;
      v177 = 0;
      guard = self->_guard;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100009540;
      block[3] = &unk_10001D410;
      block[4] = self;
      v15 = v15;
      v143 = v15;
      v150 = intValue;
      v52 = clientCopy;
      v144 = v52;
      v147 = &v174;
      v152 = 1;
      v153 = v36;
      v154 = v37;
      v53 = v108;
      v146 = v53;
      v46 = v47;
      v145 = v46;
      v148 = buf;
      v151 = v50;
      v149 = &v178;
      v155 = bOOLValue;
      dispatch_sync(guard, block);
      if (*(v175 + 24) == 1)
      {
        v172 = NSLocalizedDescriptionKey;
        [NSString stringWithFormat:@"XPC service name %@ already under observation for pid: %d", v15, intValue];
        v54 = optionsCopy = v97;
        v173 = v54;
        v55 = [NSDictionary dictionaryWithObjects:&v173 forKeys:&v172 count:1];
        v56 = [NSError errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v55];
        v53[2](v53, v15, 0, intValue, 0xFFFFFFFFLL, v56);

LABEL_98:
        _Block_object_dispose(&v174, 8);
        _Block_object_dispose(&v178, 8);

        _Block_object_dispose(buf, 8);
        goto LABEL_104;
      }

      optionsCopy = v97;
      if (!*(*&buf[8] + 40) && !v179[5])
      {
        v170 = NSLocalizedDescriptionKey;
        v54 = [NSString stringWithFormat:@"Unable to create xpc registration object."];
        v171 = v54;
        v55 = [NSDictionary dictionaryWithObjects:&v171 forKeys:&v170 count:1];
        v85 = [NSError errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v55];
        v53[2](v53, v15, 0, intValue, 0xFFFFFFFFLL, v85);

        goto LABEL_98;
      }

      v54 = objc_retainBlock(v53);
      if (bOOLValue)
      {
        v137[0] = _NSConcreteStackBlock;
        v137[1] = 3221225472;
        v137[2] = sub_100009AA8;
        v137[3] = &unk_10001D460;
        v140 = v53;
        v137[4] = self;
        v138 = v52;
        v139 = v15;
        v141 = intValue;
        v59 = objc_retainBlock(v137);

        v54 = v59;
      }

      if (!*(*&buf[8] + 40))
      {
        v164 = NSLocalizedDescriptionKey;
        v77 = v15;
        v55 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Unable to register for xpc-based launch: %s (parent: %d)", [v15 UTF8String], intValue);
        v165 = v55;
        v78 = [NSDictionary dictionaryWithObjects:&v165 forKeys:&v164 count:1];
        v79 = [NSError errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v78];
        (*(v54 + 2))(v54, v15, 0, intValue, 0xFFFFFFFFLL, v79);

        goto LABEL_98;
      }

      if (!((intValue > 0) | v99 & 1))
      {
        v132[0] = _NSConcreteStackBlock;
        v132[1] = 3221225472;
        v133 = sub_100009B8C;
        v134 = &unk_10001D488;
        v135 = firstObject;
        v136 = v15;
        v60 = v132;
        v163 = 0;
        *&v193[8] = 0;
        *v193 = 0xE00000001;
        sysctl(v193, 3u, 0, &v163, 0, 0);
        v163 += 50;
        v61 = malloc_type_calloc(1uLL, v163, 0x10B2040B74D5165uLL);
        if (!sysctl(v193, 3u, v61, &v163, 0, 0) && (v163 / 0x288) >= 1)
        {
          v62 = (v163 / 0x288) & 0x7FFFFFFF;
          v63 = v61 + 243;
          do
          {
            v64 = objc_autoreleasePoolPush();
            (v133)(v60, *(v63 - 203), v63, *(v63 + 153), *(v63 + 161));
            objc_autoreleasePoolPop(v64);
            v63 += 648;
            --v62;
          }

          while (v62);
        }

        free(v61);
      }

      v120[1] = _NSConcreteStackBlock;
      v120[2] = 3221225472;
      v120[3] = sub_100009D00;
      v120[4] = &unk_10001D500;
      v129 = v103;
      v65 = v15;
      v121 = v65;
      v122 = v97;
      v130 = v98;
      v66 = v52;
      v123 = v66;
      selfCopy = self;
      v125 = environmentCopy;
      v126 = argumentsCopy;
      v54 = v54;
      v127 = v54;
      v128 = intValue;
      v131 = v99 ^ 1;
      xpc_service_set_attach_handler();
      if (v105)
      {
        if (v103 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *v193 = 138412290;
          *&v193[4] = v65;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: ExtensionAssertion Release Start %@", v193, 0xCu);
        }

        v67 = +[PKManager defaultManager];
        v120[0] = 0;
        [v67 releaseHold:v105 withError:v120];
        v68 = v120[0];

        if (((v68 != 0) & v103) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *v193 = 138412290;
          *&v193[4] = v68;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "DTXPCServiceController: ExtensionAssertion Release Error: %@", v193, 0xCu);
        }
      }

      if (v46)
      {
        if (!xpc_service_kickstart_with_flags())
        {
LABEL_96:

          v55 = v121;
          goto LABEL_98;
        }

        if (v103)
        {
          v69 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v70 = xpc_strerror();
            *v193 = 136315138;
            *&v193[4] = v70;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "xpc_service_kickstart_with_flags error: %s", v193, 0xCu);
          }
        }

        v168 = NSLocalizedDescriptionKey;
        v71 = [NSString stringWithFormat:@"Unable to launch: %@ (parent: %d) Error: %s", v65, intValue, xpc_strerror()];
        v169 = v71;
        v72 = [NSDictionary dictionaryWithObjects:&v169 forKeys:&v168 count:1];
        v73 = [NSError errorWithDomain:@"DTXPCServiceController" code:3 userInfo:v72];
        (*(v54 + 2))(v54, v65, 0, intValue, 0xFFFFFFFFLL, v73);
      }

      else
      {
        if (![v65 length] || !v104)
        {
          goto LABEL_96;
        }

        v80 = +[PKHost defaultHost];
        v166 = PKIdentifierAttribute;
        v167 = v65;
        v81 = [NSDictionary dictionaryWithObjects:&v167 forKeys:&v166 count:1];
        v117[0] = _NSConcreteStackBlock;
        v117[1] = 3221225472;
        v117[2] = sub_10000A6D8;
        v117[3] = &unk_10001D528;
        v82 = v65;
        v118 = v82;
        v119 = v104;
        v83 = [v80 continuouslyDiscoverPlugInsForAttributes:v81 flags:512 found:v117];

        v115[0] = _NSConcreteStackBlock;
        v115[1] = 3221225472;
        v115[2] = sub_10000A8A8;
        v115[3] = &unk_10001D550;
        v84 = v83;
        v116 = v84;
        [(DTXPCServiceController *)self _registryModify:1 identifier:v82 parent:intValue client:v66 block:v115];

        v71 = v118;
      }

      goto LABEL_96;
    }

    *buf = 1024;
    v42 = [[NSMutableData alloc] initWithLength:1024];
    v43 = v42;
    if (sysctlbyname("kern.bootargs", [v42 mutableBytes], buf, 0, 0))
    {
      perror("sysctlbyname(kern.bootargs,...)");
      v45 = 0;
    }

    else
    {
      [v42 setLength:*buf];
      v44 = [[NSString alloc] initWithData:v42 encoding:4];
      v45 = v44;
      if (v44 && ([v44 rangeOfString:@"amfi_unrestrict_task_for_pid=1"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v45, "rangeOfString:", @"amfi=3") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v45, "rangeOfString:", @"amfi_get_out_of_my_way=1") != 0x7FFFFFFFFFFFFFFFLL))
      {
        v46 = 0;
LABEL_101:

        goto LABEL_102;
      }
    }

    v174 = NSLocalizedDescriptionKey;
    v86 = [NSString stringWithFormat:@"amfi_unrestrict_task_for_pid=1 is required in your boot-args to profile daemons or agents."];
    v178 = v86;
    v87 = [NSDictionary dictionaryWithObjects:&v178 forKeys:&v174 count:1];
    v46 = [NSError errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v87];

    goto LABEL_101;
  }

LABEL_105:
}

- (int)_configureInstance:(id)instance identifier:(id)identifier servicePid:(int)pid environment:(id)environment arguments:(id)arguments options:(id)options
{
  instanceCopy = instance;
  environmentCopy = environment;
  optionsCopy = options;
  v13 = sub_100007DE4();
  v14 = [optionsCopy objectForKeyedSubscript:@"StartSuspendedKey"];
  v15 = [v14 isEqualToNumber:&__kCFBooleanFalse];

  ShouldCaptureOutputWithOptions = DTProcessShouldCaptureOutputWithOptions(optionsCopy);
  v17 = [optionsCopy objectForKeyedSubscript:@"DisableMemoryLimits"];
  v18 = [v17 isEqualToNumber:&__kCFBooleanTrue];

  v19 = [optionsCopy objectForKeyedSubscript:@"EnableMTE"];
  bOOLValue = [v19 BOOLValue];

  if (v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "xpc_service_instance_is_configurable(): true", buf, 2u);
  }

  if ([environmentCopy count])
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10000ACB4;
    v29[3] = &unk_10001D578;
    v30 = xpc_dictionary_create(0, 0, 0);
    v21 = v30;
    [environmentCopy enumerateKeysAndObjectsUsingBlock:v29];
    xpc_service_instance_set_environment();
  }

  if (ShouldCaptureOutputWithOptions && !pipe(buf))
  {
    xpc_service_instance_dup2();
    xpc_service_instance_dup2();
    v22 = *buf;
    close(v32);
    fcntl(v22, 2, 1);
    if (v15)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v22 = -1;
    if (v15)
    {
LABEL_9:
      if (v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "xpc launch: started *not* suspended", buf, 2u);
      }

      goto LABEL_17;
    }
  }

  if (v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "xpc launch: starting suspended", buf, 2u);
  }

  xpc_service_instance_set_start_suspended();
LABEL_17:
  if (v18)
  {
    xpc_service_instance_set_jetsam_properties();
  }

  if (bOOLValue)
  {
    xpc_service_instance_set_use_sec_transition_shims();
  }

  v23 = [optionsCopy objectForKeyedSubscript:@"CPUType"];
  v24 = v23;
  if (v23)
  {
    [v23 intValue];
  }

  xpc_service_instance_set_binpref();
  v25 = [optionsCopy objectForKeyedSubscript:@"CPUSubType"];
  v26 = v25;
  if (v25)
  {
    intValue = [v25 intValue];
  }

  else
  {
    intValue = 0xFFFFFFFFLL;
  }

  xpc_service_instance_set_archpref_shim(instanceCopy, intValue);

  return v22;
}

- (void)requestDebugLaunchOfDaemonWithSpecifier:(id)specifier programPath:(id)path environment:(id)environment arguments:(id)arguments options:(id)options handler:(id)handler
{
  specifierCopy = specifier;
  pathCopy = path;
  environmentCopy = environment;
  argumentsCopy = arguments;
  optionsCopy = options;
  handlerCopy = handler;
  sub_100007DE4();
  [specifierCopy UTF8String];
  v19 = xpc_service_create_from_specifier();
  if (v19)
  {
    v23 = optionsCopy;
    v24 = specifierCopy;
    v25 = environmentCopy;
    v26 = argumentsCopy;
    v29 = handlerCopy;
    v27 = pathCopy;
    v28 = v19;
    xpc_service_set_attach_handler();
    xpc_service_kickstart_with_flags();

    specifierCopy = v23;
  }

  else
  {
    v30 = NSLocalizedDescriptionKey;
    specifierCopy = [NSString stringWithFormat:@"Unable to find service with specifier '%@'.", specifierCopy];
    v31 = specifierCopy;
    v21 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v22 = [NSError errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v21];
    (*(handlerCopy + 2))(handlerCopy, specifierCopy, 0, 0, 0xFFFFFFFFLL, v22);
  }
}

- (void)_registryModify:(BOOL)modify identifier:(id)identifier parent:(int)parent client:(id)client block:(id)block
{
  modifyCopy = modify;
  identifierCopy = identifier;
  clientCopy = client;
  blockCopy = block;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000B4F4;
  v20[3] = &unk_10001D5F0;
  v20[4] = self;
  v15 = clientCopy;
  v21 = v15;
  v16 = identifierCopy;
  v22 = v16;
  parentCopy = parent;
  v17 = blockCopy;
  v23 = v17;
  v18 = objc_retainBlock(v20);
  v19 = v18;
  if (modifyCopy)
  {
    dispatch_sync(self->_guard, v18);
  }

  else
  {
    (v18[2])(v18);
  }
}

- (void)_matchRemove:(id)remove
{
  removeCopy = remove;
  registrationDictsByPid = self->_registrationDictsByPid;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000B7D0;
  v7[3] = &unk_10001D640;
  v8 = removeCopy;
  v6 = removeCopy;
  [(NSMutableDictionary *)registrationDictsByPid enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)unregisterClient:(id)client withIdentifier:(id)identifier parent:(int)parent
{
  clientCopy = client;
  identifierCopy = identifier;
  guard = self->_guard;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000BB70;
  v13[3] = &unk_10001D668;
  v13[4] = self;
  v14 = clientCopy;
  v15 = identifierCopy;
  parentCopy = parent;
  v11 = identifierCopy;
  v12 = clientCopy;
  dispatch_sync(guard, v13);
}

@end
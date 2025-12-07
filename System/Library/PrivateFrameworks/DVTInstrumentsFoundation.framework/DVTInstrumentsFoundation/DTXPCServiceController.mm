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
  if (qword_27EE84408 != -1)
  {
    sub_24802F8C8();
  }

  v3 = qword_27EE84410;

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
  v10 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (sub_247FD13F4() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    v7 = objc_opt_class();
    v8 = 2112;
    v9 = clientCopy;
    v4 = v7;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%@ releasing active assertions taken on behalf of client %@", &v6, 0x16u);
  }

  if (clientCopy)
  {
    v5 = +[DTAssertionManager sharedInstance];
    [v5 removeClaimsHeldByClient:clientCopy];
  }
}

- (void)registerClient:(id)client forXPCService:(id)service environment:(id)environment arguments:(id)arguments options:(id)options handler:(id)handler
{
  v216 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  serviceCopy = service;
  environmentCopy = environment;
  argumentsCopy = arguments;
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v122 = handlerCopy;
    v14 = serviceCopy;
    v117 = sub_247FD13F4();
    v15 = [optionsCopy objectForKeyedSubscript:@"KillExisting"];
    v115 = [v15 isEqualToNumber:MEMORY[0x277CBEC28]];

    v16 = [optionsCopy objectForKeyedSubscript:@"RequestingPid"];
    intValue = [v16 intValue];

    v17 = [optionsCopy objectForKeyedSubscript:@"OnceOnly"];
    bOOLValue = [v17 BOOLValue];

    v18 = [optionsCopy objectForKeyedSubscript:@"EnableExtension"];
    v118 = [v18 isEqualToNumber:MEMORY[0x277CBEC38]];

    v19 = [optionsCopy objectForKeyedSubscript:@"DisableMemoryLimits"];
    v114 = [v19 isEqualToNumber:MEMORY[0x277CBEC38]];

    v121 = [optionsCopy objectForKeyedSubscript:@"AppExtensionHoldBundleID"];
    v126 = [optionsCopy objectForKeyedSubscript:@"AppExtensionHoldURL"];
    if (!v118)
    {
      v119 = 0;
      goto LABEL_44;
    }

    if (!(v121 | v126))
    {
      v119 = 0;
      v126 = 0;
      goto LABEL_44;
    }

    defaultManager = [MEMORY[0x277D3D350] defaultManager];
    if (v121)
    {
      v182 = 0;
      v20 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v121 allowPlaceholder:0 error:&v182];
      v21 = v182;
      v22 = [v20 URL];

      v126 = v22;
      if (v21)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = 0;
    }

    if (v126)
    {
      v112 = v21;
      if (v117 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = v126;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: ExtensionAssertion Hold Start %@:%@", buf, 0x16u);
      }

      v181 = 0;
      v119 = [defaultManager holdPlugInsInApplication:v126 withError:&v181];
      v113 = v181;
      if (((v113 != 0) & v117) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v113;
          _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: ExtensionAssertion Hold Error: %@", buf, 0xCu);
        }
      }

      else
      {
        v111 = [MEMORY[0x277CCA8D8] bundleWithURL:v126];
        v179 = 0u;
        v180 = 0u;
        v177 = 0u;
        v178 = 0u;
        builtInPlugInsURL = [v111 builtInPlugInsURL];
        relativePath = [builtInPlugInsURL relativePath];
        v25 = [v111 URLsForResourcesWithExtension:@"appex" subdirectory:relativePath];

        v26 = [v25 countByEnumeratingWithState:&v177 objects:v214 count:16];
        if (v26)
        {
          v27 = *v178;
LABEL_24:
          v28 = 0;
          while (1)
          {
            if (*v178 != v27)
            {
              objc_enumerationMutation(v25);
            }

            v29 = *(*(&v177 + 1) + 8 * v28);
            v30 = [MEMORY[0x277CCA8D8] bundleWithURL:v29];
            bundleIdentifier = [v30 bundleIdentifier];
            v32 = [bundleIdentifier isEqualToString:v14];

            if (v32)
            {
              break;
            }

            if (v26 == ++v28)
            {
              v26 = [v25 countByEnumeratingWithState:&v177 objects:v214 count:16];
              if (v26)
              {
                goto LABEL_24;
              }

              goto LABEL_30;
            }
          }

          v33 = v29;

          if (!v33)
          {
            goto LABEL_40;
          }

          if (v117 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v33;
            *&buf[12] = 2112;
            *&buf[14] = v14;
            _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: ExtensionAssertion Terminate %@:%@", buf, 0x16u);
          }

          v176 = 0;
          [defaultManager terminatePlugInAtURL:v33 withError:&v176];
          v34 = v176;
          if (v34 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v113;
            _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DTXPCServiceController: ExtensionAssertion Terminate Error: %@", buf, 0xCu);
          }
        }

        else
        {
LABEL_30:
          v33 = v25;
        }

LABEL_40:
      }

      v21 = v112;
      goto LABEL_43;
    }

LABEL_17:
    v113 = 0;
    if (v21)
    {
      v119 = 0;
      if (v117)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *&buf[4] = v14;
          *&buf[12] = 2112;
          *&buf[14] = v21;
          _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: Error retrieving LSApplicationRecord for %@, %@", buf, 0x16u);
        }

        v113 = 0;
        v119 = 0;
      }
    }

    else
    {
      v119 = 0;
    }

LABEL_43:

LABEL_44:
    v35 = [v14 containsString:@"LaunchDaemons"];
    v36 = [v14 containsString:@"LaunchAgents"];
    pathExtension = [v14 pathExtension];
    v38 = [pathExtension isEqualToString:@"plist"];

    if (!v38)
    {
      firstObject = 0;
      v44 = 0;
      v45 = v14;
      goto LABEL_53;
    }

    if ((DVTIUIsAppleInternalOSEnvironment() & 1) == 0)
    {
      v56 = MEMORY[0x277CCA9B8];
      v200 = *MEMORY[0x277CCA450];
      v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"Daemon profiling is not supported on customer installations."];
      *buf = v57;
      v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v200 count:1];
      v128 = [v56 errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v58];

LABEL_106:
      if (v128)
      {
        v122[2](v122, v14, 0, 0xFFFFFFFFLL, 0xFFFFFFFFLL);
        goto LABEL_108;
      }

      intValue = 0xFFFFFFFFLL;
      v128 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v14];
      v44 = [v128 objectForKeyedSubscript:@"Label"];

      v104 = [v128 objectForKeyedSubscript:@"Program"];
      v105 = v104;
      if (v104)
      {
        firstObject = v104;
      }

      else
      {
        v106 = [v128 objectForKeyedSubscript:@"ProgramArguments"];
        firstObject = [v106 firstObject];
      }

      if (!v44)
      {
        v107 = MEMORY[0x277CCA9B8];
        v212 = *MEMORY[0x277CCA450];
        v108 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to load plist for launchd job with path: %@", 0];
        v213 = v108;
        v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v213 forKeys:&v212 count:1];
        v110 = [v107 errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v109];
        (v122[2])(v122, 0, 0, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v110);

        v14 = firstObject;
        goto LABEL_108;
      }

      v45 = v44;
LABEL_53:
      if ([v45 hasPrefix:@"com.apple."] && (DVTIUIsAppleInternalOSEnvironment() & 1) == 0)
      {
        v76 = MEMORY[0x277CCA9B8];
        v210 = *MEMORY[0x277CCA450];
        v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"XPC service is restricted: %@", v45];
        v211 = v77;
        v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v211 forKeys:&v210 count:1];
        v79 = [v76 errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v78];
        (v122[2])(v122, v45, 0, intValue, 0xFFFFFFFFLL, v79);

        v14 = v45;
LABEL_109:

        handlerCopy = v122;
        goto LABEL_110;
      }

      if (intValue == -1)
      {
        v46 = 3;
      }

      else
      {
        v46 = 1;
      }

      if (sub_247FD13F4() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109634;
        *&buf[4] = v46;
        *&buf[8] = 2112;
        *&buf[10] = v45;
        *&buf[18] = 1024;
        *&buf[20] = intValue & ~(intValue >> 31);
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: calling xpc_service_create: serviceType=%d, identifier=%@, pid %d", buf, 0x18u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v207 = sub_247FD2CA0;
      v208 = sub_247FD2CB0;
      v209 = 0;
      v200 = 0;
      v201 = &v200;
      v202 = 0x3032000000;
      v203 = sub_247FD2CA0;
      v204 = sub_247FD2CB0;
      v205 = 0;
      v196 = 0;
      v197 = &v196;
      v198 = 0x2020000000;
      v199 = 0;
      guard = self->_guard;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_247FD2CB8;
      block[3] = &unk_278EF3490;
      block[4] = self;
      v48 = v45;
      v163 = v48;
      v170 = intValue;
      v49 = clientCopy;
      v164 = v49;
      v167 = &v196;
      v172 = 1;
      v173 = v35;
      v174 = v36;
      v50 = v122;
      v166 = v50;
      v128 = v44;
      v165 = v128;
      v168 = buf;
      v171 = v46;
      v169 = &v200;
      v175 = bOOLValue;
      dispatch_sync(guard, block);
      if (*(v197 + 24) == 1)
      {
        v51 = MEMORY[0x277CCA9B8];
        v194 = *MEMORY[0x277CCA450];
        [MEMORY[0x277CCACA8] stringWithFormat:@"XPC service name %@ already under observation for pid: %d", v48, intValue];
        v53 = v52 = firstObject;
        v195 = v53;
        v1232 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v195 forKeys:&v194 count:1];
        v55 = [v51 errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v1232];
        (v50[2])(v50, v48, 0, intValue, 0xFFFFFFFFLL, v55);

LABEL_102:
        _Block_object_dispose(&v196, 8);
        _Block_object_dispose(&v200, 8);

        _Block_object_dispose(buf, 8);
        v14 = v48;
LABEL_108:

        goto LABEL_109;
      }

      v52 = firstObject;
      if (!*(*&buf[8] + 40) && !v201[5])
      {
        v94 = MEMORY[0x277CCA9B8];
        v192 = *MEMORY[0x277CCA450];
        v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to create xpc registration object."];
        v193 = v53;
        v1232 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v193 forKeys:&v192 count:1];
        v95 = [v94 errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v1232];
        (v50[2])(v50, v48, 0, intValue, 0xFFFFFFFFLL, v95);

        goto LABEL_102;
      }

      v53 = _Block_copy(v50);
      if (bOOLValue)
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = sub_247FD3220;
        aBlock[3] = &unk_278EF34E0;
        v160 = v50;
        aBlock[4] = self;
        v158 = v49;
        v159 = v48;
        v161 = intValue;
        v59 = _Block_copy(aBlock);

        v53 = v59;
      }

      if (!*(*&buf[8] + 40))
      {
        v80 = v201[5];
        if (v80)
        {
          v81 = v14;
          uTF8String = [v14 UTF8String];
          v132[0] = MEMORY[0x277D85DD0];
          v132[1] = 3221225472;
          v132[2] = sub_247FD408C;
          v132[3] = &unk_278EF35F8;
          v53 = v53;
          v133 = v53;
          v134 = intValue;
          if (authorized_xpc_attach(v80, 0, uTF8String, environmentCopy, argumentsCopy, optionsCopy, v132))
          {
            v83 = MEMORY[0x277CCA9B8];
            v186 = *MEMORY[0x277CCA450];
            v84 = MEMORY[0x277CCACA8];
            v85 = v48;
            v123 = [v84 stringWithFormat:@"Unable to use privileged helper to register for xpc-based launch: %s (parent: %d)", objc_msgSend(v48, "UTF8String"), intValue];
            v187 = v123;
            v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v187 forKeys:&v186 count:1];
            v88 = [v83 errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v87];
            (*(v53 + 2))(v53, v48, 0, intValue, 0xFFFFFFFFLL, v88);
          }

          v1232 = v133;
        }

        else
        {
          v96 = MEMORY[0x277CCA9B8];
          v184 = *MEMORY[0x277CCA450];
          v97 = MEMORY[0x277CCACA8];
          v98 = v48;
          v1232 = [v97 stringWithFormat:@"Unable to register for xpc-based launch: %s (parent: %d)", objc_msgSend(v48, "UTF8String"), intValue];
          v185 = v1232;
          v99 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v185 forKeys:&v184 count:1];
          v100 = [v96 errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v99];
          (*(v53 + 2))(v53, v48, 0, intValue, 0xFFFFFFFFLL, v100);
        }

        goto LABEL_102;
      }

      if (!((intValue > 0) | v115 & 1))
      {
        v152[0] = MEMORY[0x277D85DD0];
        v152[1] = 3221225472;
        v153 = sub_247FD3304;
        v154 = &unk_278EF3508;
        v155 = firstObject;
        v156 = v48;
        v60 = v152;
        v183 = 0;
        *&v215[8] = 0;
        *v215 = 0xE00000001;
        sysctl(v215, 3u, 0, &v183, 0, 0);
        v183 += 50;
        v61 = malloc_type_calloc(1uLL, v183, 0x10B2040B74D5165uLL);
        if (!sysctl(v215, 3u, v61, &v183, 0, 0) && (v183 / 0x288) >= 1)
        {
          v62 = (v183 / 0x288) & 0x7FFFFFFF;
          v63 = v61 + 243;
          do
          {
            v64 = objc_autoreleasePoolPush();
            (v153)(v60, *(v63 - 203), v63, *(v63 + 153), *(v63 + 161));
            objc_autoreleasePoolPop(v64);
            v63 += 648;
            --v62;
          }

          while (v62);
        }

        free(v61);
      }

      v140[1] = MEMORY[0x277D85DD0];
      v140[2] = 3221225472;
      v140[3] = sub_247FD3478;
      v140[4] = &unk_278EF3580;
      v149 = v117;
      v65 = v48;
      v141 = v65;
      v142 = optionsCopy;
      v150 = v114;
      v66 = v49;
      v143 = v66;
      selfCopy = self;
      v145 = environmentCopy;
      v146 = argumentsCopy;
      v53 = v53;
      v147 = v53;
      v148 = intValue;
      v151 = v115 ^ 1;
      xpc_service_set_attach_handler();
      if (v119)
      {
        if (v117 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v215 = 138412290;
          *&v215[4] = v65;
          _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: ExtensionAssertion Release Start %@", v215, 0xCu);
        }

        defaultManager2 = [MEMORY[0x277D3D350] defaultManager];
        v140[0] = 0;
        [defaultManager2 releaseHold:v119 withError:v140];
        v68 = v140[0];

        if (((v68 != 0) & v117) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v215 = 138412290;
          *&v215[4] = v68;
          _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: ExtensionAssertion Release Error: %@", v215, 0xCu);
        }
      }

      if (v128)
      {
        if (!xpc_service_kickstart_with_flags())
        {
LABEL_99:

          v1232 = v141;
          goto LABEL_102;
        }

        if (v117)
        {
          v69 = MEMORY[0x277D86220];
          v70 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            v71 = xpc_strerror();
            *v215 = 136315138;
            *&v215[4] = v71;
            _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "xpc_service_kickstart_with_flags error: %s", v215, 0xCu);
          }
        }

        v72 = MEMORY[0x277CCA9B8];
        v190 = *MEMORY[0x277CCA450];
        v73 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to launch: %@ (parent: %d) Error: %s", v65, intValue, xpc_strerror()];
        v191 = v73;
        v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v191 forKeys:&v190 count:1];
        v75 = [v72 errorWithDomain:@"DTXPCServiceController" code:3 userInfo:v74];
        (*(v53 + 2))(v53, v65, 0, intValue, 0xFFFFFFFFLL, v75);
      }

      else
      {
        if (![v65 length] || !v118)
        {
          goto LABEL_99;
        }

        defaultHost = [MEMORY[0x277D3D348] defaultHost];
        v188 = *MEMORY[0x277D3D360];
        v189 = v65;
        v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v189 forKeys:&v188 count:1];
        v137[0] = MEMORY[0x277D85DD0];
        v137[1] = 3221225472;
        v137[2] = sub_247FD3E50;
        v137[3] = &unk_278EF35A8;
        v91 = v65;
        v138 = v91;
        v139 = v118;
        v92 = [defaultHost continuouslyDiscoverPlugInsForAttributes:v90 flags:512 found:v137];

        v135[0] = MEMORY[0x277D85DD0];
        v135[1] = 3221225472;
        v135[2] = sub_247FD4020;
        v135[3] = &unk_278EF35D0;
        v93 = v92;
        v136 = v93;
        [(DTXPCServiceController *)self _registryModify:1 identifier:v91 parent:intValue client:v66 block:v135];

        v73 = v138;
      }

      goto LABEL_99;
    }

    *buf = 1024;
    v39 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:1024];
    v40 = v39;
    if (sysctlbyname("kern.bootargs", [v39 mutableBytes], buf, 0, 0))
    {
      perror("sysctlbyname(kern.bootargs,...)");
      v42 = 0;
    }

    else
    {
      [v39 setLength:*buf];
      v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v39 encoding:4];
      v42 = v41;
      if (v41 && ([v41 rangeOfString:@"amfi_unrestrict_task_for_pid=1"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v42, "rangeOfString:", @"amfi=3") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v42, "rangeOfString:", @"amfi_get_out_of_my_way=1") != 0x7FFFFFFFFFFFFFFFLL))
      {
        v128 = 0;
LABEL_105:

        goto LABEL_106;
      }
    }

    v101 = MEMORY[0x277CCA9B8];
    v196 = *MEMORY[0x277CCA450];
    v102 = [MEMORY[0x277CCACA8] stringWithFormat:@"amfi_unrestrict_task_for_pid=1 is required in your boot-args to profile daemons or agents."];
    v200 = v102;
    v103 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v200 forKeys:&v196 count:1];
    v128 = [v101 errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v103];

    goto LABEL_105;
  }

LABEL_110:
}

- (int)_configureInstance:(id)instance identifier:(id)identifier servicePid:(int)pid environment:(id)environment arguments:(id)arguments options:(id)options
{
  v34 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  environmentCopy = environment;
  optionsCopy = options;
  v13 = sub_247FD13F4();
  v14 = [optionsCopy objectForKeyedSubscript:@"StartSuspendedKey"];
  v15 = [v14 isEqualToNumber:MEMORY[0x277CBEC28]];

  ShouldCaptureOutputWithOptions = DTProcessShouldCaptureOutputWithOptions(optionsCopy);
  v17 = [optionsCopy objectForKeyedSubscript:@"DisableMemoryLimits"];
  v18 = [v17 isEqualToNumber:MEMORY[0x277CBEC38]];

  v19 = [optionsCopy objectForKeyedSubscript:@"EnableMTE"];
  bOOLValue = [v19 BOOLValue];

  if (v13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "xpc_service_instance_is_configurable(): true", buf, 2u);
  }

  if ([environmentCopy count])
  {
    v21 = xpc_dictionary_create(0, 0, 0);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_247FD44B8;
    v30[3] = &unk_278EF3620;
    v31 = v21;
    v22 = v21;
    [environmentCopy enumerateKeysAndObjectsUsingBlock:v30];
    xpc_service_instance_set_environment();
  }

  if (ShouldCaptureOutputWithOptions && !pipe(buf))
  {
    xpc_service_instance_dup2();
    xpc_service_instance_dup2();
    v23 = *buf;
    close(v33);
    fcntl(v23, 2, 1);
    if (v15)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v23 = -1;
    if (v15)
    {
LABEL_9:
      if (v13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "xpc launch: started *not* suspended", buf, 2u);
      }

      goto LABEL_17;
    }
  }

  if (v13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "xpc launch: starting suspended", buf, 2u);
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

  v24 = [optionsCopy objectForKeyedSubscript:@"CPUType"];
  v25 = v24;
  if (v24)
  {
    [v24 intValue];
  }

  xpc_service_instance_set_binpref();
  v26 = [optionsCopy objectForKeyedSubscript:@"CPUSubType"];
  v27 = v26;
  if (v26)
  {
    intValue = [v26 intValue];
  }

  else
  {
    intValue = 0xFFFFFFFFLL;
  }

  xpc_service_instance_set_archpref_shim(instanceCopy, intValue);

  return v23;
}

- (void)requestDebugLaunchOfDaemonWithSpecifier:(id)specifier programPath:(id)path environment:(id)environment arguments:(id)arguments options:(id)options handler:(id)handler
{
  v32[1] = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  pathCopy = path;
  environmentCopy = environment;
  argumentsCopy = arguments;
  optionsCopy = options;
  handlerCopy = handler;
  sub_247FD13F4();
  [specifierCopy UTF8String];
  v19 = xpc_service_create_from_specifier();
  if (v19)
  {
    v24 = optionsCopy;
    v25 = specifierCopy;
    v26 = environmentCopy;
    v27 = argumentsCopy;
    v30 = handlerCopy;
    v28 = pathCopy;
    v29 = v19;
    xpc_service_set_attach_handler();
    xpc_service_kickstart_with_flags();

    specifierCopy = v24;
  }

  else
  {
    v21 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    specifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to find service with specifier '%@'.", specifierCopy];
    v32[0] = specifierCopy;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v23 = [v21 errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v22];
    (*(handlerCopy + 2))(handlerCopy, specifierCopy, 0, 0, 0xFFFFFFFFLL, v23);
  }
}

- (void)_registryModify:(BOOL)modify identifier:(id)identifier parent:(int)parent client:(id)client block:(id)block
{
  modifyCopy = modify;
  identifierCopy = identifier;
  clientCopy = client;
  blockCopy = block;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_247FD4CF8;
  aBlock[3] = &unk_278EF3698;
  aBlock[4] = self;
  v15 = clientCopy;
  v21 = v15;
  v16 = identifierCopy;
  v22 = v16;
  parentCopy = parent;
  v17 = blockCopy;
  v23 = v17;
  v18 = _Block_copy(aBlock);
  v19 = v18;
  if (modifyCopy)
  {
    dispatch_sync(self->_guard, v18);
  }

  else
  {
    v18[2](v18);
  }
}

- (void)_matchRemove:(id)remove
{
  removeCopy = remove;
  registrationDictsByPid = self->_registrationDictsByPid;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FD4FD4;
  v7[3] = &unk_278EF36E8;
  v8 = removeCopy;
  v6 = removeCopy;
  [(NSMutableDictionary *)registrationDictsByPid enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)unregisterClient:(id)client withIdentifier:(id)identifier parent:(int)parent
{
  clientCopy = client;
  identifierCopy = identifier;
  guard = self->_guard;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247FD5374;
  v13[3] = &unk_278EF28C0;
  v13[4] = self;
  v14 = clientCopy;
  v15 = identifierCopy;
  parentCopy = parent;
  v11 = identifierCopy;
  v12 = clientCopy;
  dispatch_sync(guard, v13);
}

@end
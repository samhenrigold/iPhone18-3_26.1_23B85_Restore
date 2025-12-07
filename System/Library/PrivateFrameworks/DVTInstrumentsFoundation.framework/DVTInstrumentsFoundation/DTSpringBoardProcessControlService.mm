@interface DTSpringBoardProcessControlService
+ (void)registerCapabilities:(id)capabilities;
- (BOOL)_HIDEvent:(unsigned int)event hold:(BOOL)hold;
- (BOOL)_triggerSiri;
- (BOOL)sendProcessControlEvent:(id)event toPid:(id)pid error:(id *)error;
- (BOOL)showNotificiationCenterWidget:(id)widget withError:(id *)error;
- (BOOL)showSBWidget:(id)widget withError:(id *)error;
- (BOOL)simulateNotificationForBundleID:(id)d payload:(id)payload withError:(id *)error;
- (id)_launchSuspendedProcessWithBundleIdentifier:(id)identifier orDevicePath:(id)path environment:(id)environment arguments:(id)arguments options:(id)options error:(id *)error;
- (id)launchSuspendedProcessWithDevicePath:(id)path bundleIdentifier:(id)identifier environment:(id)environment arguments:(id)arguments options:(id)options;
- (id)processIdentifierForBundleIdentifier:(id)identifier;
- (void)sendProcessControlEvent:(id)event toPid:(id)pid;
@end

@implementation DTSpringBoardProcessControlService

+ (void)registerCapabilities:(id)capabilities
{
  v4 = DTDefaultProcessControlServiceIdentifier;
  capabilitiesCopy = capabilities;
  [capabilitiesCopy publishCapability:v4 withVersion:107 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.processcontrol.feature.deviceio" withVersion:103 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.processcontrolbydictionary" withVersion:4 forClass:self];
}

- (id)launchSuspendedProcessWithDevicePath:(id)path bundleIdentifier:(id)identifier environment:(id)environment arguments:(id)arguments options:(id)options
{
  optionsCopy = options;
  argumentsCopy = arguments;
  environmentCopy = environment;
  identifierCopy = identifier;
  pathCopy = path;
  v17 = objc_opt_new();
  v21 = 0;
  v18 = [(DTSpringBoardProcessControlService *)self _launchSuspendedProcessWithBundleIdentifier:identifierCopy orDevicePath:pathCopy environment:environmentCopy arguments:argumentsCopy options:optionsCopy error:&v21];

  v19 = v21;
  [v17 invokeCompletionWithReturnValue:v18 error:v19];

  return v17;
}

- (id)_launchSuspendedProcessWithBundleIdentifier:(id)identifier orDevicePath:(id)path environment:(id)environment arguments:(id)arguments options:(id)options error:(id *)error
{
  v199[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  pathCopy = path;
  environmentCopy = environment;
  argumentsCopy = arguments;
  optionsCopy = options;
  filePath = identifierCopy;
  v16 = [identifierCopy length];
  v17 = MEMORY[0x277D86220];
  v18 = MEMORY[0x277D86220];
  v19 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
  if (v16)
  {
    if (!v19)
    {
      goto LABEL_7;
    }

    *buf = 138544130;
    *&buf[4] = identifierCopy;
    *&buf[12] = 2114;
    *&buf[14] = environmentCopy;
    *&buf[22] = 2114;
    v190 = argumentsCopy;
    LOWORD(v191) = 2114;
    *(&v191 + 2) = optionsCopy;
    v20 = MEMORY[0x277D86220];
    v21 = "Received request to launch process with bundle ID '%{public}@:'\n\tEnvironment variables: %{public}@\n\tArguments: %{public}@\n\tOptions: %{public}@";
  }

  else
  {
    if (!v19)
    {
      goto LABEL_7;
    }

    *buf = 138544130;
    *&buf[4] = pathCopy;
    *&buf[12] = 2114;
    *&buf[14] = environmentCopy;
    *&buf[22] = 2114;
    v190 = argumentsCopy;
    LOWORD(v191) = 2114;
    *(&v191 + 2) = optionsCopy;
    v20 = MEMORY[0x277D86220];
    v21 = "Received request to launch process at path '%{public}@:'\n\tEnvironment variables: %{public}@\n\tArguments: %{public}@\n\tOptions: %{public}@";
  }

  _os_log_impl(&dword_247F67000, v20, OS_LOG_TYPE_INFO, v21, buf, 0x2Au);
LABEL_7:
  filePath = pathCopy;

  v22 = MEMORY[0x277CBEBF8];
  if (argumentsCopy)
  {
    v22 = argumentsCopy;
  }

  v152 = v22;
  if (environmentCopy)
  {
    v23 = environmentCopy;
  }

  else
  {
    v23 = MEMORY[0x277CBEC10];
  }

  v154 = v23;
  v24 = [optionsCopy objectForKeyedSubscript:@"StartSuspendedKey"];
  v150 = [v24 isEqualToNumber:MEMORY[0x277CBEC28]];

  v25 = [optionsCopy objectForKeyedSubscript:@"KillExisting"];
  v163 = [v25 isEqualToNumber:MEMORY[0x277CBEC28]];

  v26 = [optionsCopy objectForKeyedSubscript:@"ActivateSuspended"];
  v27 = MEMORY[0x277CBEC38];
  v28 = [v26 isEqualToNumber:MEMORY[0x277CBEC38]];

  serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  environment = [processInfo environment];
  v158 = [environment mutableCopy];

  [v158 addEntriesFromDictionary:v154];
  v178 = 0;
  if (identifierCopy)
  {
LABEL_13:
    v162 = sub_247FE827C(filePath);
    if ((v162 < 1) | v163 & 1)
    {
      goto LABEL_18;
    }

    v31 = MEMORY[0x277D86220];
    v32 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v33 = filePath;
      uTF8String = [filePath UTF8String];
      *buf = 136446466;
      *&buf[4] = uTF8String;
      *&buf[12] = 1024;
      *&buf[14] = v162;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Killing existing instance of bundle ID %{public}s with PID %i", buf, 0x12u);
    }

    v156 = [objc_alloc(MEMORY[0x277D47010]) initWithExplanation:@"Terminating any existing instance before DTServiceHub app launch"];
    v35 = objc_alloc(MEMORY[0x277D47018]);
    v36 = MEMORY[0x277D46FA0];
    v37 = [MEMORY[0x277D46F50] identifierWithPid:v162];
    v38 = [v36 predicateMatchingIdentifier:v37];
    v39 = [v35 initWithPredicate:v38 context:v156];

    v177 = 0;
    LOBYTE(v35) = [v39 execute:&v177];
    v40 = v177;
    v41 = v40;
    if (v35)
    {
LABEL_17:

LABEL_18:
      v42 = *MEMORY[0x277D0AB58];
      v194[0] = *MEMORY[0x277D0AB48];
      v194[1] = v42;
      v195[0] = v152;
      v195[1] = v158;
      v194[2] = *MEMORY[0x277D0AB80];
      v43 = [MEMORY[0x277CCABB0] numberWithBool:v150 ^ 1u];
      v195[2] = v43;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v195 forKeys:v194 count:3];
      v156 = [v44 mutableCopy];

      if (DTProcessShouldCaptureOutputWithOptions(optionsCopy))
      {
        v45 = NSTemporaryDirectory();
        v46 = [v45 stringByAppendingPathComponent:@"instruments_XXXXXX"];

        v47 = v46;
        v48 = strdup([v46 UTF8String]);
        if (mkdtemp(v48))
        {
          v149 = [MEMORY[0x277CCACA8] stringWithUTF8String:v48];
          v153 = [v149 stringByAppendingPathComponent:@"stdio.pipe"];
          v49 = v153;
          if (mkfifo([v153 UTF8String], 0x1FFu))
          {
            v50 = MEMORY[0x277D86220];
            v51 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v52 = v153;
              uTF8String2 = [v153 UTF8String];
              v54 = __error();
              v55 = strerror(*v54);
              *buf = 136315394;
              *&buf[4] = uTF8String2;
              *&buf[12] = 2080;
              *&buf[14] = v55;
              _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "mkfifo failed for '%s': %s", buf, 0x16u);
            }

            v153 = 0;
          }

          else
          {
            v83 = v153;
            chmod([v153 UTF8String], 0x1B6u);
            v84 = v149;
            chmod([v149 UTF8String], 0x1FFu);
            [v156 setObject:v153 forKeyedSubscript:*MEMORY[0x277D0AB70]];
            [v156 setObject:v153 forKeyedSubscript:*MEMORY[0x277D0AB78]];
          }
        }

        else
        {
          v153 = 0;
          v149 = 0;
        }

        free(v48);
      }

      else
      {
        v153 = 0;
        v149 = 0;
      }

      v85 = *MEMORY[0x277D0AC58];
      v192[0] = *MEMORY[0x277D0AC08];
      v192[1] = v85;
      v193[0] = v156;
      v193[1] = v27;
      v192[2] = *MEMORY[0x277D0AC60];
      v86 = [MEMORY[0x277CCABB0] numberWithDouble:10.0];
      v193[2] = v86;
      v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v193 forKeys:v192 count:3];
      v160 = [v87 mutableCopy];

      if (v28)
      {
        [v160 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D0ABF0]];
      }

      if (optionsCopy)
      {
        v88 = optionsCopy;
        v89 = objc_opt_new();
        v90 = DTProcessControlOptionsGetEvent(v88);

        if (v90)
        {
          v91 = objc_opt_new();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v92 = [v90 objectForKey:@"PCEventType"];
            if ([v92 isEqualToString:@"BackgroundFetchEvent"])
            {
              [v91 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D0AB30]];
            }
          }

          if ([v91 count])
          {
            [v89 setObject:v91 forKeyedSubscript:*MEMORY[0x277D0ABE0]];
          }
        }

        [v160 addEntriesFromDictionary:v89];
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v190 = sub_247FE82E8;
      *&v191 = sub_247FE82F8;
      *(&v191 + 1) = 0;
      v173 = 0;
      v174 = &v173;
      v175 = 0x2020000000;
      v176 = -1;
      v93 = MEMORY[0x277D85DD0];
      for (i = 7; ; --i)
      {
        v95 = MEMORY[0x277CCA8C8];
        v169[0] = v93;
        v169[1] = 3221225472;
        v169[2] = sub_247FE8300;
        v169[3] = &unk_278EF3DB8;
        v171 = buf;
        v172 = &v173;
        v96 = filePath;
        v170 = v96;
        v97 = [v95 blockOperationWithBlock:v169];
        v98 = [MEMORY[0x277D0AD60] optionsWithDictionary:v160];
        v166[0] = MEMORY[0x277D85DD0];
        v166[1] = 3221225472;
        v166[2] = sub_247FE834C;
        v166[3] = &unk_278EF3DE0;
        v168 = buf;
        v99 = v97;
        v167 = v99;
        [serviceWithDefaultShellEndpoint openApplication:v96 withOptions:v98 completion:v166];

        [v99 waitUntilFinished];
        v100 = *(*&buf[8] + 40);
        if (v100 && [v100 code] == 6 || (v163 & 1) == 0 && *(v174 + 6) == v162)
        {
          usleep(0x7A120u);
        }

        if (!i)
        {
          break;
        }

        v101 = *(*&buf[8] + 40);
        if ((!v101 || [v101 code] != 6) && ((v163 & 1) != 0 || *(v174 + 6) != v162))
        {
          break;
        }
      }

      if (v153 && *(v174 + 6) && !*(*&buf[8] + 40))
      {
        [(DTProcessControlService *)self watchOutputFileName:v153 directory:v149 forPid:?];
      }

      if (*(*&buf[8] + 40))
      {
        v162 = [MEMORY[0x277CCACA8] stringWithFormat:@"Request to launch %@ failed.", v96];
        if ([*(*&buf[8] + 40) code] == 6)
        {
          v103 = @"Device busy or Instruments is trying to launch several targets, and one of them is a foreground app.";
        }

        else if ([*(*&buf[8] + 40) code] == 5)
        {
          v103 = @"Background launch requested, but this app cannot run in the background (see UIApplicationExitsOnSuspend or 'Background Modes' in Xcode).";
        }

        else if ([*(*&buf[8] + 40) code] == 7)
        {
          v103 = @"Device is currently locked. Please unlock the device and try again.";
        }

        else
        {
          v109 = MEMORY[0x277CCACA8];
          localizedDescription = [*(*&buf[8] + 40) localizedDescription];
          v103 = [v109 stringWithFormat:@"%@ : Failed to launch process with bundle identifier '%@'.", localizedDescription, v96];
        }

        v111 = MEMORY[0x277D86220];
        v112 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          code = [*(*&buf[8] + 40) code];
          localizedDescription2 = [*(*&buf[8] + 40) localizedDescription];
          *v181 = 134218242;
          *v182 = code;
          *&v182[8] = 2112;
          *&v182[10] = localizedDescription2;
          _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DTSpringBoardProcessControlService -- Error: %ld. %@.", v181, 0x16u);
        }

        if (error)
        {
          v115 = MEMORY[0x277CCA9B8];
          v116 = *MEMORY[0x277CCA470];
          v187[0] = *MEMORY[0x277CCA450];
          v187[1] = v116;
          v188[0] = v162;
          v188[1] = v103;
          v187[2] = *MEMORY[0x277CCA7E8];
          v188[2] = *(*&buf[8] + 40);
          v117 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v188 forKeys:v187 count:3];
          *error = [v115 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:2 userInfo:v117];
        }
      }

      else
      {
        v104 = *(v174 + 6);
        if (v104 > 0)
        {
          if (v162 == v104)
          {
            if ((v163 & 1) == 0)
            {
              v120 = MEMORY[0x277CCACA8];
              lastPathComponent = [(__CFString *)filePath lastPathComponent];
              v162 = [v120 stringWithFormat:@"Executable '%@' is already running as process %d.", lastPathComponent, v162];

              if (error)
              {
                v122 = MEMORY[0x277CCA9B8];
                v123 = *MEMORY[0x277CCA470];
                v183[0] = *MEMORY[0x277CCA450];
                v183[1] = v123;
                v184[0] = v162;
                v184[1] = @"killExisting requested, but found the existing PID.";
                v124 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v184 forKeys:v183 count:2];
                *error = [v122 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:2 userInfo:v124];
              }

              goto LABEL_99;
            }

            if ((v150 & 1) == 0)
            {
              v105 = [MEMORY[0x277CCABB0] numberWithInt:v162];
              [(DTProcessControlService *)self suspendPid:v105];
            }
          }

          else if ((v150 & 1) == 0)
          {
            v108 = [DTInstrumentServer taskForPid:?];
            if (v108 - 1 > 0xFFFFFFFD)
            {
              v129 = MEMORY[0x277D86220];
              v130 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
              {
                v131 = *(v174 + 6);
                *v181 = 67109378;
                *v182 = v131;
                *&v182[4] = 2112;
                *&v182[6] = v96;
                _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to acquire task port after launch of pid %d (%@)", v181, 0x12u);
              }

              v162 = [objc_alloc(MEMORY[0x277D47010]) initWithExplanation:@"Permission to debug process denied"];
              v132 = objc_alloc(MEMORY[0x277D47018]);
              v133 = MEMORY[0x277D46FA0];
              v134 = [MEMORY[0x277D46F50] identifierWithPid:*(v174 + 6)];
              v135 = [v133 predicateMatchingIdentifier:v134];
              v136 = [v132 initWithPredicate:v135 context:v162];

              v165 = 0;
              LOBYTE(v132) = [v136 execute:&v165];
              v137 = v165;
              if ((v132 & 1) == 0)
              {
                v138 = MEMORY[0x277D86220];
                v139 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
                {
                  v140 = *(v174 + 6);
                  *v181 = 67109634;
                  *v182 = v140;
                  *&v182[4] = 2112;
                  *&v182[6] = v96;
                  *&v182[14] = 2112;
                  *&v182[16] = v137;
                  _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to attempt termination of pid %d (%@): %@", v181, 0x1Cu);
                }
              }

              v141 = [MEMORY[0x277CCABB0] numberWithInt:*(v174 + 6)];
              [(DTProcessControlService *)self killPid:v141];

              v142 = [MEMORY[0x277CCACA8] stringWithFormat:@"Permission to debug %@ was denied.", v96];
              v143 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to acquire task port for PID: %d", *(v174 + 6)];
              v144 = v143;
              if (error)
              {
                v145 = MEMORY[0x277CCA9B8];
                v146 = *MEMORY[0x277CCA470];
                v179[0] = *MEMORY[0x277CCA450];
                v179[1] = v146;
                v180[0] = v142;
                v180[1] = v143;
                v179[2] = *MEMORY[0x277CCA498];
                v180[2] = @"The app must be debuggable and signed with 'get-task-allow'.";
                v147 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v180 forKeys:v179 count:3];
                *error = [v145 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:2 userInfo:v147];
              }

              goto LABEL_99;
            }

            mach_port_deallocate(*MEMORY[0x277D85F48], v108);
          }

          v71 = [MEMORY[0x277CCABB0] numberWithInt:*(v174 + 6)];
LABEL_101:
          _Block_object_dispose(&v173, 8);
          _Block_object_dispose(buf, 8);

          filePath = v96;
LABEL_102:

          goto LABEL_103;
        }

        if (!error)
        {
LABEL_100:
          v71 = 0;
          goto LABEL_101;
        }

        v106 = MEMORY[0x277CCA9B8];
        v107 = *MEMORY[0x277CCA470];
        v185[0] = *MEMORY[0x277CCA450];
        v185[1] = v107;
        v186[0] = @"Failed looking up pid of launched process.";
        v186[1] = @"Call to openApplication:withOptions:completion: succeeded, but a PID could not be found for the target Bundle Identifier.";
        v162 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v186 forKeys:v185 count:2];
        *error = [v106 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:4 userInfo:v162];
      }

LABEL_99:

      goto LABEL_100;
    }

    domain = [v40 domain];
    if ([domain isEqualToString:*MEMORY[0x277D47088]])
    {
      v73 = [v41 code] == 3;

      if (v73)
      {
        v74 = MEMORY[0x277D86220];
        v75 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          v76 = filePath;
          uTF8String3 = [filePath UTF8String];
          *buf = 136446210;
          *&buf[4] = uTF8String3;
          _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Request to terminate existing instance of bundle ID %{public}s failed because the existing instance could no longer be found. Continuing with launch.", buf, 0xCu);
        }

        goto LABEL_17;
      }
    }

    else
    {
    }

    filePath = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to terminate existing instance (%i) of bundle ID '%@'", v162, filePath];
    v79 = filePath;
    if (error)
    {
      v80 = MEMORY[0x277CCA9B8];
      v81 = *MEMORY[0x277CCA7E8];
      v196[0] = *MEMORY[0x277CCA450];
      v196[1] = v81;
      v197[0] = filePath;
      v197[1] = v41;
      v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v197 forKeys:v196 count:2];
      *error = [v80 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:16 userInfo:v82];
    }

    v71 = 0;
    goto LABEL_102;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (([defaultManager fileExistsAtPath:pathCopy isDirectory:&v178] & 1) == 0)
  {

    goto LABEL_32;
  }

  v57 = v178;

  if ((v57 & 1) == 0)
  {
    goto LABEL_32;
  }

  v58 = CFURLCreateWithFileSystemPath(0, pathCopy, kCFURLPOSIXPathStyle, 1u);
  v59 = CFBundleCreate(*MEMORY[0x277CBECE8], v58);
  v60 = v59;
  if (!v59)
  {

    v65 = 0;
    v62 = 0;
    filePath = 0;
    InfoDictionary = 0;
    v67 = 1;
    v63 = 1;
    goto LABEL_112;
  }

  v61 = CFBundleCopyExecutableURL(v59);
  v62 = v61;
  v63 = v61 == 0;
  if (!v61)
  {
    v65 = 0;
    goto LABEL_110;
  }

  v64 = CFURLCopyAbsoluteURL(v61);
  v65 = v64;
  if (!v64)
  {
LABEL_110:
    v66 = 0;
    v67 = 1;
    v68 = filePath;
    goto LABEL_111;
  }

  v66 = CFURLCopyFileSystemPath(v64, kCFURLPOSIXPathStyle);

  v67 = 0;
  v68 = v66;
LABEL_111:

  InfoDictionary = CFBundleGetInfoDictionary(v60);
  filePath = v66;
LABEL_112:
  filePath = [(__CFDictionary *)InfoDictionary objectForKeyedSubscript:@"CFBundleIdentifier"];
  if (v58)
  {
    CFRelease(v58);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (!v63)
  {
    CFRelease(v62);
  }

  if ((v67 & 1) == 0)
  {
    CFRelease(v65);
  }

  v125 = MEMORY[0x277D86220];
  v126 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
  {
    v127 = filePath;
    uTF8String4 = [(__CFString *)filePath UTF8String];
    *buf = 136315138;
    *&buf[4] = uTF8String4;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "No bundle ID passed in path: %s", buf, 0xCu);
  }

  if (filePath)
  {
    goto LABEL_13;
  }

LABEL_32:
  filePath = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to locate CFBundleIdentifier for path: %@.", filePath];
  if (error)
  {
    v69 = MEMORY[0x277CCA9B8];
    v70 = *MEMORY[0x277CCA470];
    v198[0] = *MEMORY[0x277CCA450];
    v198[1] = v70;
    v199[0] = filePath;
    v199[1] = @"Either a Bundle Identifier or a path to a bundle must be provided.";
    v157 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v199 forKeys:v198 count:2];
    [v69 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:1 userInfo:v157];
    *error = v71 = 0;
  }

  else
  {
    v71 = 0;
  }

LABEL_103:

  return v71;
}

- (id)processIdentifierForBundleIdentifier:(id)identifier
{
  v3 = sub_247FE827C(identifier);
  v4 = v3 & ~(v3 >> 31);
  v5 = MEMORY[0x277CCABB0];

  return [v5 numberWithInt:v4];
}

- (BOOL)sendProcessControlEvent:(id)event toPid:(id)pid error:(id *)error
{
  v129[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  pidCopy = pid;
  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = sub_247FE82E8;
  v104 = sub_247FE82F8;
  v105 = 0;
  v10 = DTProcessControlEventUnarchive(eventCopy);
  intValue = [pidCopy intValue];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v85.receiver = self;
    v85.super_class = DTSpringBoardProcessControlService;
    [(DTProcessControlService *)&v85 sendProcessControlEvent:eventCopy toPid:pidCopy];
    goto LABEL_7;
  }

  v84 = v10;
  v12 = [v84 objectForKey:@"PCEventType"];
  if ([v12 isEqualToString:@"ShowSBWidgetCenter"])
  {
    v13 = v101;
    v99 = v101[5];
    [(DTSpringBoardProcessControlService *)self showSBWidget:v84 withError:&v99];
    v14 = v99;
    identifier = v13[5];
    v13[5] = v14;
    goto LABEL_4;
  }

  if ([v12 isEqualToString:@"ShowNotificationCenter"])
  {
    identifier = [v84 objectForKey:@"WidgetIdentifier"];
    if (identifier)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = (v101 + 5);
        obj = v101[5];
        [(DTSpringBoardProcessControlService *)self showNotificiationCenterWidget:identifier withError:&obj];
        objc_storeStrong(v19, obj);
      }
    }

    goto LABEL_4;
  }

  if ([v12 isEqualToString:@"BackgroundFetchEvent"])
  {
    v20 = [MEMORY[0x277D46F50] identifierWithPid:intValue];
    v79 = v20;
    if (v20)
    {
      v21 = MEMORY[0x277D46F48];
      v22 = [MEMORY[0x277D46FA0] predicateMatchingIdentifier:v20];
      v23 = [v21 handleForPredicate:v22 error:0];

      bundle = [v23 bundle];
      identifier = [bundle identifier];
    }

    else
    {
      identifier = 0;
    }

    v128 = *MEMORY[0x277D0ABE0];
    v126 = *MEMORY[0x277D0AB30];
    v127 = MEMORY[0x277CBEC10];
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
    v129[0] = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v129 forKeys:&v128 count:1];

    v81 = [MEMORY[0x277D0AD60] optionsWithDictionary:v33];
    if (identifier)
    {
      serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = sub_247FE9134;
      v93[3] = &unk_278EF3E08;
      v94 = identifier;
      v95 = v33;
      v96 = v81;
      v97 = &v100;
      [serviceWithDefaultShellEndpoint openApplication:v94 withOptions:v96 completion:v93];

      v35 = v94;
    }

    else
    {
      dsemaa = v33;
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to trigger Background Fetch for PID %d, no bundle identifier found.", intValue];
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find CFBundleIdentifier for PID: %d.", intValue];
      v76 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA470];
      v124[0] = *MEMORY[0x277CCA450];
      v124[1] = v37;
      v125[0] = v35;
      v125[1] = v36;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:2];
      v39 = [v76 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:8 userInfo:v38];
      v40 = v36;
      v41 = v101[5];
      v101[5] = v39;

      v33 = dsemaa;
    }

    goto LABEL_4;
  }

  if ([v12 isEqualToString:@"TriggerSiri"])
  {
    identifier = [v84 objectForKeyedSubscript:@"SiriRequestPayload"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [identifier length] && NSClassFromString(&cfstr_Afsettingsconn.isa))
    {
      v25 = objc_alloc_init(MEMORY[0x277CEF3A0]);
      [v25 startUIRequest:identifier];
      [v25 barrier];
    }

    else
    {
      if ([(DTSpringBoardProcessControlService *)self _triggerSiri])
      {
        goto LABEL_4;
      }

      v29 = MEMORY[0x277CCA9B8];
      v122 = *MEMORY[0x277CCA450];
      v123 = @"Failed to trigger Siri";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
      v30 = [v29 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:8 userInfo:v25];
      v31 = v101[5];
      v101[5] = v30;
    }

    goto LABEL_4;
  }

  if (![v12 isEqualToString:@"PressHomeButton"])
  {
    if (![v12 isEqualToString:@"SimulateNotification"])
    {
      if ([v12 isEqualToString:@"ShowMessagesExtension"])
      {
        v50 = notify_post("com.apple.MobileSMS.CKAppExtension.launch");
        if (!v50)
        {
          goto LABEL_5;
        }

        identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"Error sending Messages notification for '%s' status: %d.", "com.apple.MobileSMS.CKAppExtension.launch", v50];
        v51 = MEMORY[0x277CCA9B8];
        v114 = *MEMORY[0x277CCA450];
        v115 = identifier;
        v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
        v53 = [v51 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:8 userInfo:v52];
        v54 = v101[5];
        v101[5] = v53;
      }

      else if ([v12 isEqualToString:@"SnapshotUI"])
      {
        v55 = MEMORY[0x277CCA9B8];
        v112 = *MEMORY[0x277CCA450];
        v113 = @"Snapshot UI is not supported for this platform.";
        identifier = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
        v56 = [v55 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:8 userInfo:identifier];
        v57 = v101[5];
        v101[5] = v56;
      }

      else
      {
        if (![v12 isEqualToString:@"TriggerAppClip"])
        {
          v86.receiver = self;
          v86.super_class = DTSpringBoardProcessControlService;
          [(DTProcessControlService *)&v86 sendProcessControlEvent:eventCopy toPid:pidCopy];
          goto LABEL_5;
        }

        identifier = [v84 objectForKeyedSubscript:@"BundleIdentifier"];
        v63 = [v84 objectForKeyedSubscript:@"AppClipPayload"];
        v64 = MEMORY[0x277CBEBC0];
        if ([(__CFString *)v63 length])
        {
          v65 = v63;
        }

        else
        {
          v65 = @"https://example.com";
        }

        v83 = [v64 URLWithString:v65];
        if (dlopen_preflight("/System/Library/PrivateFrameworks/ClipServices.framework/ClipServices"))
        {
          dlopen("/System/Library/PrivateFrameworks/ClipServices.framework/ClipServices", 10);
          v66 = NSClassFromString(&cfstr_Cpscliprequest.isa);
          if (v66)
          {
            v80 = [[v66 alloc] initWithURL:v83];
            v67 = dispatch_semaphore_create(0);
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v109 = identifier;
              v110 = 2112;
              v111 = v83;
              _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Clip Request for bundleID:'%@' url:'%@'", buf, 0x16u);
            }

            v87[0] = MEMORY[0x277D85DD0];
            v87[1] = 3221225472;
            v87[2] = sub_247FE92D8;
            v87[3] = &unk_278EF3E30;
            v88 = identifier;
            v89 = v83;
            v91 = &v100;
            dsema = v67;
            v90 = dsema;
            [v80 installClipWithBundleID:v88 completion:v87];
            v68 = [v84 objectForKeyedSubscript:@"Timeout"];
            intValue2 = [v68 intValue];

            if (intValue2 <= 0)
            {
              v70 = 30000000000;
            }

            else
            {
              v70 = (intValue2 * 1000000000.0);
            }

            v71 = dispatch_time(0, v70);
            if (dispatch_semaphore_wait(dsema, v71))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                sub_24802FF30();
              }

              v72 = MEMORY[0x277CCA9B8];
              v106 = *MEMORY[0x277CCA450];
              v107 = @"Trigger AppClip timed out.";
              v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
              v74 = [v72 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:32 userInfo:v73];
              v75 = v101[5];
              v101[5] = v74;
            }
          }
        }
      }

      goto LABEL_4;
    }

    identifier = [v84 objectForKey:@"BundleIdentifier"];
    v42 = [v84 objectForKey:@"NotificationPayload"];
    v43 = v42;
    if (v42 && identifier)
    {
      v92 = 0;
      [(DTSpringBoardProcessControlService *)self simulateNotificationForBundleID:identifier payload:v42 withError:&v92];
      v44 = v92;
      if (!v44)
      {
LABEL_53:

        goto LABEL_4;
      }

      v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to simulate notification for bundleID: %@.", identifier];
      v82 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277CCA7E8];
      v118[0] = *MEMORY[0x277CCA450];
      v118[1] = v46;
      v119[0] = v45;
      v119[1] = v44;
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:v118 count:2];
      v48 = [v82 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:8 userInfo:v47];
      v49 = v101[5];
      v101[5] = v48;
    }

    else
    {
      v58 = @"Unknown failure.";
      if (!v42)
      {
        v58 = @"Notification payload is nil.";
      }

      if (!identifier)
      {
        v58 = @"BundleIdentifer for notification is nil.";
      }

      v59 = MEMORY[0x277CCA9B8];
      v60 = *MEMORY[0x277CCA470];
      v116[0] = *MEMORY[0x277CCA450];
      v116[1] = v60;
      v117[0] = @"Failed to simulate notification.";
      v117[1] = v58;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:2];
      if (identifier)
      {
        v61 = 8;
      }

      else
      {
        v61 = 1;
      }

      v62 = [v59 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:v61 userInfo:v44];
      v45 = v101[5];
      v101[5] = v62;
    }

    goto LABEL_53;
  }

  if ([(DTSpringBoardProcessControlService *)self _dismissTodayView])
  {
    goto LABEL_5;
  }

  v26 = MEMORY[0x277CCA9B8];
  v120 = *MEMORY[0x277CCA450];
  v121 = @"Failed to press Home button";
  identifier = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
  v27 = [v26 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:8 userInfo:identifier];
  v28 = v101[5];
  v101[5] = v27;

LABEL_4:
LABEL_5:

LABEL_7:
  v16 = v101[5];
  if (error && v16)
  {
    *error = v16;
    v16 = v101[5];
  }

  v17 = v16 == 0;

  _Block_object_dispose(&v100, 8);
  return v17;
}

- (void)sendProcessControlEvent:(id)event toPid:(id)pid
{
  v5 = 0;
  [(DTSpringBoardProcessControlService *)self sendProcessControlEvent:event toPid:pid error:&v5];
  v4 = v5;
  if (v4)
  {
    [MEMORY[0x277CBEAD8] raise:@"DTSHSendProcessControlEvent" format:{@"SendProcessControlEvent:toPid: encountered an error: %@", v4}];
  }
}

- (BOOL)simulateNotificationForBundleID:(id)d payload:(id)payload withError:(id *)error
{
  dCopy = d;
  payloadCopy = payload;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_247FE82E8;
  v19 = sub_247FE82F8;
  v20 = 0;
  v9 = [MEMORY[0x277CE1FC0] requestWithIdentifier:&stru_285A19CB8 pushPayload:payloadCopy bundleIdentifier:dCopy];
  v10 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:dCopy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_247FE9604;
  v14[3] = &unk_278EF2550;
  v14[4] = &v15;
  [v10 addNotificationRequest:v9 withCompletionHandler:v14];
  v11 = v16[5];
  if (error && v11)
  {
    *error = v11;
    v11 = v16[5];
  }

  v12 = v11 == 0;

  _Block_object_dispose(&v15, 8);
  return v12;
}

- (BOOL)showNotificiationCenterWidget:(id)widget withError:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    uTF8String = [@"Notification Center widgets are no longer supported." UTF8String];
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  if (error)
  {
    v6 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA450];
    v10 = @"Notification Center widgets are no longer supported.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    *error = [v6 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:8 userInfo:v7];
  }

  return 0;
}

- (BOOL)showSBWidget:(id)widget withError:(id *)error
{
  v62[2] = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_247FE82E8;
  v51 = sub_247FE82F8;
  v52 = 0;
  v5 = [widgetCopy objectForKey:@"WidgetIdentifier"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v42 = *MEMORY[0x277CFA1B8];
  v7 = *MEMORY[0x277CFA1A8];
  v8 = [widgetCopy objectForKeyedSubscript:@"_XCWidgetKind"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_285A19CB8;
  }

  v11 = v10;

  v12 = [widgetCopy objectForKeyedSubscript:@"_XCWidgetFamily"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_285A19CB8;
  }

  v15 = v14;

  if (v6)
  {
    v16 = *MEMORY[0x277D0AC58];
    v62[0] = MEMORY[0x277CBEC38];
    v17 = *MEMORY[0x277D0AC08];
    v61[0] = v16;
    v61[1] = v17;
    v18 = *MEMORY[0x277D0AB68];
    v59[0] = *MEMORY[0x277D0AB60];
    v59[1] = v18;
    v60[0] = v6;
    v60[1] = @"com.apple.widgetkit-extension";
    v59[2] = v42;
    v59[3] = v7;
    v60[2] = v11;
    v60[3] = v15;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:4];
    v62[1] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];

    v21 = dispatch_semaphore_create(0);
    serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
    v23 = [MEMORY[0x277D0AD60] optionsWithDictionary:v20];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_247FE9D30;
    v43[3] = &unk_278EF3E58;
    v44 = v6;
    v46 = &v47;
    v24 = v21;
    v45 = v24;
    [serviceWithDefaultShellEndpoint openApplication:@"com.apple.springboard" withOptions:v23 completion:v43];

    v25 = [widgetCopy objectForKeyedSubscript:@"Timeout"];
    intValue = [v25 intValue];

    if (intValue <= 0)
    {
      v27 = 10000000000;
    }

    else
    {
      v27 = (intValue * 1000000000.0);
    }

    v28 = dispatch_time(0, v27);
    if (dispatch_semaphore_wait(v24, v28))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Show Notification Center Widget timed out.", buf, 2u);
      }

      v29 = MEMORY[0x277CCA9B8];
      v57 = *MEMORY[0x277CCA450];
      v58 = @"Show Notification Center Widget timed out.";
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v31 = [v29 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:32 userInfo:v30];
      v32 = v48[5];
      v48[5] = v31;
    }
  }

  else
  {
    v33 = MEMORY[0x277D86220];
    v34 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      uTF8String = [@"No Widget specified." UTF8String];
      *buf = 136315138;
      v56 = uTF8String;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    v36 = MEMORY[0x277CCA9B8];
    v53 = *MEMORY[0x277CCA450];
    v54 = @"No Widget specified.";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v37 = [v36 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:8 userInfo:v20];
    v24 = v48[5];
    v48[5] = v37;
  }

  v38 = v48[5];
  if (error && v38)
  {
    *error = v38;
    v38 = v48[5];
  }

  v39 = v38 == 0;

  _Block_object_dispose(&v47, 8);
  return v39;
}

- (BOOL)_triggerSiri
{
  LODWORD(v2) = dlopen_preflight("/System/Library/PrivateFrameworks/SiriActivation.framework/SiriActivation");
  if (v2)
  {
    dlopen("/System/Library/PrivateFrameworks/SiriActivation.framework/SiriActivation", 10);
    v2 = NSClassFromString(&cfstr_Sirisimpleacti.isa);
    if (v2)
    {
      v2 = objc_alloc_init(v2);
      if (v2)
      {
        v3 = v2;
        [(objc_class *)v2 activateFromSource:0];

        LOBYTE(v2) = 1;
      }
    }
  }

  return v2;
}

- (BOOL)_HIDEvent:(unsigned int)event hold:(BOOL)hold
{
  if (hold)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.1;
  }

  if (event != 1 && event != 2)
  {
    return 0;
  }

  info = 0;
  mach_timebase_info(&info);
  __rqtp.tv_sec = v4;
  __rqtp.tv_nsec = ((v4 - v4) * 1000000000.0);
  mach_absolute_time();
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  v6 = IOHIDEventCreateKeyboardEvent();
  v7 = v6;
  if (KeyboardEvent && v6)
  {
    sub_247FEA070(KeyboardEvent);
    nanosleep(&__rqtp, 0);
    sub_247FEA070(v7);
LABEL_10:
    CFRelease(KeyboardEvent);
    goto LABEL_11;
  }

  if (KeyboardEvent)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (v7)
  {
    CFRelease(v7);
  }

  return 1;
}

@end
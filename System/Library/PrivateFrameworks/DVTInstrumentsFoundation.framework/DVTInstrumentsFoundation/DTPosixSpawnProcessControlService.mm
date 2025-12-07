@interface DTPosixSpawnProcessControlService
+ (int)posixSpawnWithPath:(id)path environment:(id)environment arguments:(id)arguments options:(id)options fileDescriptorHandler:(id)handler;
+ (void)registerCapabilities:(id)capabilities;
- (id)launchSuspendedProcessWithDevicePath:(id)path bundleIdentifier:(id)identifier environment:(id)environment arguments:(id)arguments options:(id)options;
- (int)cleanupPid:(int)pid;
@end

@implementation DTPosixSpawnProcessControlService

+ (void)registerCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  if (+[DTInstrumentServer isAppleInternal])
  {
    [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.processcontrol.posixspawn" withVersion:2 forClass:self];
    [capabilitiesCopy publishCapability:@"com.apple.dt.services.capabilities.posix_spawn" withVersion:2 forClass:self];
    [capabilitiesCopy publishCapability:DTDefaultProcessControlServiceIdentifier withVersion:2 forClass:self];
  }
}

+ (int)posixSpawnWithPath:(id)path environment:(id)environment arguments:(id)arguments options:(id)options fileDescriptorHandler:(id)handler
{
  *&v128[4] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  environmentCopy = environment;
  argumentsCopy = arguments;
  optionsCopy = options;
  handlerCopy = handler;
  if ([(__CFString *)pathCopy length])
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    environment = [processInfo environment];
    v16 = [environment mutableCopy];

    [v16 addEntriesFromDictionary:environmentCopy];
    v103 = v16;

    v116 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v18 = [defaultManager fileExistsAtPath:pathCopy isDirectory:&v116];
    v19 = v116;

    if ((v18 & v19) == 0)
    {
      v106 = pathCopy;
      goto LABEL_25;
    }

    v20 = CFURLCreateWithFileSystemPath(0, pathCopy, kCFURLPOSIXPathStyle, 1u);
    v21 = CFBundleCreate(*MEMORY[0x277CBECE8], v20);
    v22 = v21;
    if (v21)
    {
      v23 = CFBundleCopyExecutableURL(v21);
      v24 = v23;
      if (v23)
      {
        v25 = CFURLCopyAbsoluteURL(v23);
        v26 = v25;
        if (v25)
        {
          v106 = CFURLCopyFileSystemPath(v25, kCFURLPOSIXPathStyle);
          v27 = 0;
          v28 = 0;
          if (!v20)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        v106 = 0;
        v27 = 0;
LABEL_15:
        v28 = 1;
        if (!v20)
        {
LABEL_17:
          if (v22)
          {
            CFRelease(v22);
          }

          if ((v27 & 1) == 0)
          {
            CFRelease(v24);
          }

          if ((v28 & 1) == 0)
          {
            CFRelease(v26);
          }

          if (![(__CFString *)v106 length])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v40 = pathCopy;
              uTF8String = [(__CFString *)pathCopy UTF8String];
              LODWORD(buf) = 136315138;
              *(&buf + 4) = uTF8String;
              _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to find actual binary to posix_spawn for path: %s", &buf, 0xCu);
            }

            [MEMORY[0x277CBEAD8] raise:@"DTPosixSpawnFailureException" format:{@"Unable to find actual binary to posix_spawn for path: %@\n", pathCopy}];

            v29 = 0;
            goto LABEL_117;
          }

LABEL_25:
          v115 = 0;
          posix_spawnattr_init(&v115);
          v114 = 0;
          posix_spawnattr_getflags(&v115, &v114);
          posix_spawnattr_setpgroup(&v115, 0);
          v114 |= 0x4002u;
          v30 = [optionsCopy objectForKeyedSubscript:@"StartSuspendedKey"];
          v31 = v30;
          if (v30 && ![v30 BOOLValue])
          {
            v32 = v114 & 0xFF7F;
          }

          else
          {
            v32 = v114 | 0x80;
          }

          v114 = v32;
          v33 = posix_spawnattr_setflags(&v115, v32);
          if (v33)
          {
            posix_spawnattr_destroy(&v115);
            v34 = objc_msgSend(@" ("), "stringByAppendingFormat:", @"Unable to set flags via posix_spawnattr_setflags(): flags=0x%016x, error=%d", v114, v33;
            v35 = [v34 stringByAppendingString:@""]);

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 67109120;
              DWORD1(buf) = v33;
              _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to set up posix_spawnattr_t: %d", &buf, 8u);
            }

            [MEMORY[0x277CBEAD8] raise:@"DTPosixSpawnFailureException" format:{@"posix_spawn failure while launching: %@%@", v106, v35}];

            v29 = 0;
            goto LABEL_116;
          }

          v36 = [optionsCopy objectForKeyedSubscript:@"architectureType"];
          v102 = v36;
          if (v36)
          {
            bOOLValue = [v36 BOOLValue];
            v38 = v128;
            if (bOOLValue)
            {
              v39 = 16777228;
            }

            else
            {
              v39 = 12;
            }

            v127 = v39;
            v42 = 2;
          }

          else
          {
            v38 = &v127;
            v42 = 1;
          }

          *v38 = -1;
          v43 = posix_spawnattr_setbinpref_np(&v115, v42, &v127, 0);
          if (v43)
          {
            posix_spawnattr_destroy(&v115);
            v44 = objc_msgSend(@" ("), "stringByAppendingFormat:", @"Unable to choose architecture %d: %d", v127, v43;
            v45 = [v44 stringByAppendingString:@""]);

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 67109120;
              DWORD1(buf) = v43;
              _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to set up posix_spawnattr_t: %d", &buf, 8u);
            }

            [MEMORY[0x277CBEAD8] raise:@"DTPosixSpawnFailureException" format:{@"posix_spawn failure while launching: %@%@", v106, v45}];

            v29 = 0;
            goto LABEL_115;
          }

          v113 = 0;
          posix_spawn_file_actions_init(&v113);
          *v125 = -1;
          *v126 = -1;
          v46 = !DTProcessShouldCaptureOutputWithOptions(optionsCopy);
          if (!handlerCopy)
          {
            LOBYTE(v46) = 1;
          }

          if (!v46)
          {
            if (pipe(v126) == -1 || pipe(v125) == -1)
            {
              v50 = *__error();
              posix_spawn_file_actions_destroy(&v113);
              posix_spawnattr_destroy(&v115);
              v51 = objc_msgSend(@" ("), "stringByAppendingFormat:", @"Unable to allocate process I/O pipes %d", v50;
              v101 = [v51 stringByAppendingString:@""]);

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *&buf = 67109120;
                _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to set up posix_spawnattr_t: %d", &buf, 8u);
              }

              [MEMORY[0x277CBEAD8] raise:@"DTPosixSpawnFailureException" format:{@"posix_spawn failure while launching: %@%@", v106, v101}];
              v29 = 0;
              goto LABEL_114;
            }

            posix_spawn_file_actions_addclose(&v113, v126[0]);
            posix_spawn_file_actions_adddup2(&v113, v126[1], 1);
            posix_spawn_file_actions_adddup2(&v113, v126[1], 2);
            posix_spawn_file_actions_addclose(&v113, v126[1]);
            posix_spawn_file_actions_addclose(&v113, v125[1]);
            posix_spawn_file_actions_adddup2(&v113, v125[0], 0);
            posix_spawn_file_actions_addclose(&v113, v125[0]);
          }

          v101 = [optionsCopy objectForKeyedSubscript:@"XRDeviceFileChooserWorkingDirectory"];
          if (v101 && [v101 length])
          {
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            if ([defaultManager2 fileExistsAtPath:v101 isDirectory:&v116])
            {
              v48 = v116;

              if (v48)
              {
                v49 = v101;
                MEMORY[0x24C1C4210](&v113, [v101 fileSystemRepresentation]);
              }
            }

            else
            {
            }
          }

          v52 = [argumentsCopy count];
          v98[1] = v98;
          MEMORY[0x28223BE20](v52);
          v55 = (v98 - ((v54 + 47) & 0xFFFFFFFFFFFFFFF0));
          if (v53 >= 0x200)
          {
            v56 = 512;
          }

          else
          {
            v56 = v53;
          }

          bzero(v98 - ((v54 + 47) & 0xFFFFFFFFFFFFFFF0), v56);
          *&buf = 0;
          *(&buf + 1) = &buf;
          v123 = 0x2020000000;
          v124 = 0;
          v57 = v106;
          v58 = strdup([(__CFString *)v106 UTF8String]);
          v59 = *(*(&buf + 1) + 24);
          *(*(&buf + 1) + 24) = v59 + 1;
          v55[v59] = v58;
          v100 = [optionsCopy objectForKeyedSubscript:@"DisableTALAutomaticTermination"];
          if (v100 && (objc_opt_respondsToSelector() & 1) != 0 && [v100 longValue])
          {
            v60 = strdup("-NSDisableAutomaticTermination");
            v61 = *(&buf + 1);
            v62 = *(*(&buf + 1) + 24);
            *(*(&buf + 1) + 24) = v62 + 1;
            v55[v62] = v60;
            v63 = strdup("YES");
            *(v61 + 24) = v62 + 2;
            v55[v62 + 1] = v63;
          }

          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v64 = argumentsCopy;
          v65 = [v64 countByEnumeratingWithState:&v109 objects:v121 count:16];
          if (v65)
          {
            v66 = *v110;
            do
            {
              for (i = 0; i != v65; ++i)
              {
                if (*v110 != v66)
                {
                  objc_enumerationMutation(v64);
                }

                v68 = [*(*(&v109 + 1) + 8 * i) description];
                v69 = v68;
                v70 = strdup([v68 UTF8String]);
                v71 = *(*(&buf + 1) + 24);
                *(*(&buf + 1) + 24) = v71 + 1;
                v55[v71] = v70;
              }

              v65 = [v64 countByEnumeratingWithState:&v109 objects:v121 count:16];
            }

            while (v65);
          }

          v72 = *(*(&buf + 1) + 24);
          *(*(&buf + 1) + 24) = v72 + 1;
          v55[v72] = 0;
          v73 = [v103 count];
          MEMORY[0x28223BE20](v73);
          v76 = (v98 - ((v75 + 23) & 0xFFFFFFFFFFFFFFF0));
          if (v74 >= 0x200)
          {
            v77 = 512;
          }

          else
          {
            v77 = v74;
          }

          bzero(v98 - ((v75 + 23) & 0xFFFFFFFFFFFFFFF0), v77);
          *(*(&buf + 1) + 24) = 0;
          v108[0] = MEMORY[0x277D85DD0];
          v108[1] = 3221225472;
          v108[2] = sub_247FC07E0;
          v108[3] = &unk_278EF3218;
          v108[4] = &buf;
          v108[5] = v76;
          [v103 enumerateKeysAndObjectsUsingBlock:v108];
          v78 = *(*(&buf + 1) + 24);
          *(*(&buf + 1) + 24) = v78 + 1;
          v76[v78] = 0;
          standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
          v80 = [standardUserDefaults BOOLForKey:@"DTPosixSpawnProcessControlServiceLog"];

          if (v80)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v82 = *(*(&buf + 1) + 24) - 1;
              v117 = 67109120;
              v118 = v82;
              _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "passing %d environment variables:", &v117, 8u);
            }

            v83 = *(&buf + 1);
            if (*(*(&buf + 1) + 24) >= 2)
            {
              v84 = 0;
              v85 = MEMORY[0x277D86220];
              *&v81 = 67109378;
              v99 = v81;
              do
              {
                if (v76[v84])
                {
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
                  {
                    v86 = v76[v84];
                    v117 = v99;
                    v118 = v84;
                    v119 = 2080;
                    v120 = v86;
                    _os_log_impl(&dword_247F67000, v85, OS_LOG_TYPE_INFO, "- %d: %s", &v117, 0x12u);
                  }

                  v83 = *(&buf + 1);
                }

                ++v84;
              }

              while (v84 < *(v83 + 24) - 1);
            }
          }

          v107 = 0;
          v87 = v106;
          v88 = posix_spawn(&v107, [(__CFString *)v106 UTF8String], &v113, &v115, v55, v76);
          if (v107 && DTProcessShouldCaptureOutputWithOptions(optionsCopy))
          {
            (*(handlerCopy + 2))(handlerCopy, v107, v125[1], v126[0]);
          }

          v89 = *v55;
          if (*v55)
          {
            v90 = (v55 + 1);
            do
            {
              free(v89);
              v91 = *v90++;
              v89 = v91;
            }

            while (v91);
          }

          v92 = *v76;
          if (*v76)
          {
            v93 = (v76 + 1);
            do
            {
              free(v92);
              v94 = *v93++;
              v92 = v94;
            }

            while (v94);
          }

          if (v125[0] != -1)
          {
            close(v125[0]);
          }

          if (v125[1] != -1)
          {
            close(v125[1]);
          }

          if (v126[0] != -1)
          {
            close(v126[0]);
          }

          if (v126[1] != -1)
          {
            close(v126[1]);
          }

          posix_spawn_file_actions_destroy(&v113);
          posix_spawnattr_destroy(&v115);
          if (v88)
          {
            v95 = objc_msgSend(@" ("), "stringByAppendingFormat:", @"%s", strerror(v88);
            v96 = [v95 stringByAppendingString:@""]);

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v117 = 67109120;
              v118 = v88;
              _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to set up posix_spawnattr_t: %d", &v117, 8u);
            }

            [MEMORY[0x277CBEAD8] raise:@"DTPosixSpawnFailureException" format:{@"posix_spawn failure while launching: %@%@", v106, v96}];
          }

          if (v88)
          {
            v29 = 0;
          }

          else
          {
            v29 = v107;
          }

          _Block_object_dispose(&buf, 8);
LABEL_114:

LABEL_115:
LABEL_116:

          pathCopy = v106;
LABEL_117:

          environmentCopy = v103;
          goto LABEL_118;
        }

LABEL_16:
        CFRelease(v20);
        goto LABEL_17;
      }

      v106 = 0;
    }

    else
    {
      v106 = 0;
      v24 = 0;
    }

    v26 = 0;
    v27 = 1;
    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to call posix_spawn with empty path", &buf, 2u);
  }

  [MEMORY[0x277CBEAD8] raise:@"DTPosixSpawnFailureException" format:@"Unable to call posix_spawn with empty path"];
  v29 = 0;
LABEL_118:

  return v29;
}

- (id)launchSuspendedProcessWithDevicePath:(id)path bundleIdentifier:(id)identifier environment:(id)environment arguments:(id)arguments options:(id)options
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_247FC096C;
  v10[3] = &unk_278EF3240;
  v10[4] = self;
  v7 = [DTPosixSpawnProcessControlService posixSpawnWithPath:path environment:environment arguments:arguments options:options fileDescriptorHandler:v10];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:v7];

  return v8;
}

- (int)cleanupPid:(int)pid
{
  v4 = 0;
  if (waitpid(pid, &v4, 1) == pid)
  {
    return v4;
  }

  else
  {
    return 0x80000000;
  }
}

@end
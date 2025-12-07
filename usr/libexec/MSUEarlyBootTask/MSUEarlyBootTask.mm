void MSUCleanupUUIDTextFolder(uint64_t a1)
{
  v1 = [NSURL fileURLWithPath:a1 isDirectory:1];
  [v1 URLByAppendingPathComponent:@"var/db/uuidtext"];
}

void logfunctionv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [[NSString alloc] initWithFormat:a3 arguments:a4];
  v4 = v5;
  debug("MSUEarlyBootTaskExecLog: %s\n", [v5 UTF8String]);
}

void debug(char *a1, ...)
{
  va_start(va, a1);
  if (serialLogLevel >= 2)
  {
    vfprintf(__stderrp, a1, va);
  }

  debugv(a1, va);
}

void debugv(uint64_t a1, uint64_t a2)
{
  if (log_file)
  {
    v4 = [NSString alloc];
    v5 = [NSString stringWithUTF8String:a1];
    v6 = [v4 initWithFormat:v5 arguments:a2];

    logString(v6);
  }
}

void error(char *a1, ...)
{
  va_start(va, a1);
  if (serialLogLevel)
  {
    vfprintf(__stderrp, a1, va);
  }

  debugv(a1, va);
}

void logString(void *a1)
{
  if (log_file)
  {
    v1 = a1;
    v2 = +[NSDate date];
    v3 = objc_alloc_init(NSDateFormatter);
    [v3 setDateFormat:@"HH:mm:ss"];
    v4 = [v3 stringFromDate:v2];
    bzero(v6, 0x400uLL);
    v5 = [NSString stringWithFormat:@"%@: %@", v4, v1];

    [v5 getCString:v6 maxLength:1023 encoding:4];
    fputs(v6, log_file);
  }
}

FILE *init_log(int a1, int a2)
{
  serialLogLevel = a2;
  mkdir("/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask", 0x1EDu);
  v3 = MSUEarlyBootTaskSetupACLForPath(@"/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask");
  if (v3)
  {
    debug("MSUEarlyBootTask: Set up ACL on log folder\n");
  }

  else
  {
    error("MSUEarlyBootTask: Failed to set up ACL on log folder\n");
    v4 = getpwnam("mobile");
    if (v4)
    {
      pw_uid = v4->pw_uid;
      pw_gid = v4->pw_gid;
    }

    else
    {
      pw_gid = 501;
      pw_uid = 501;
    }

    lchown("/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask", pw_uid, pw_gid);
    lchmod("/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask", 0x1EDu);
  }

  memset(&v11, 0, sizeof(v11));
  if (stat("/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask/MSUEarlyBootTask.log", &v11))
  {
    v7 = 1;
  }

  else
  {
    v7 = v11.st_size < 10485760;
  }

  v8 = v7;
  if ((v8 & a1) != 0)
  {
    v9 = "a+";
  }

  else
  {
    v9 = "w+";
  }

  result = fopen("/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask/MSUEarlyBootTask.log", v9);
  log_file = result;
  if (v3)
  {
    fclose(result);
    if (MSUEarlyBootTaskSetupACLForPath(@"/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask/MSUEarlyBootTask.log"))
    {
      debug("MSUEarlyBootTas: Set up ACL on log file\n");
    }

    else
    {
      error("MSUEarlyBootTask: Failed to set up acl on log file\n");
    }

    result = fopen("/var/MobileSoftwareUpdate/Controller/MSUEarlyBootTask/MSUEarlyBootTask.log", "a+");
    log_file = result;
  }

  return result;
}

uint64_t MSUEarlyBootTaskSetupACLForPath(void *a1)
{
  v1 = a1;
  v17 = 0;
  v2 = +[NSFileManager defaultManager];
  if ([v2 fileExistsAtPath:v1 isDirectory:&v17])
  {
    v3 = [v2 attributesOfItemAtPath:v1 error:0];
    v4 = v3;
    if (!v3)
    {
      [v1 fileSystemRepresentation];
      error("Failed to read attributes of item at path: %s\n");
      goto LABEL_18;
    }

    v5 = [v3 fileType];
    v6 = v5;
    if (v5 == NSFileTypeDirectory)
    {
    }

    else
    {
      v7 = [v4 fileType];

      if (v7 != NSFileTypeRegular)
      {
        memset(v18, 0, sizeof(v18));
        v8 = [v4 fileType];
        [v8 getCString:v18 maxLength:127 encoding:4];

        [v1 fileSystemRepresentation];
        error("File %s is a unsupported type(%s)");
        goto LABEL_18;
      }
    }

    if (v17 == 1)
    {
      v10 = &MSUEarlyBootTaskSetupACLForPath_dirAcl;
    }

    else
    {
      v10 = &MSUEarlyBootTaskSetupACLForPath_fileAcl;
    }

    v9 = *v10;
    if (!*v10)
    {
      v9 = MSUEarlyBootTaskCopySystemContainerACLWithNumACEs(v17);
      *v10 = v9;
      if (!v9)
      {
        error("%s: Failed to alloc acl..bailing\n", "MSUEarlyBootTaskSetupACLForPath");
        goto LABEL_22;
      }
    }

    v11 = getpwnam("nobody");
    if (v11)
    {
      pw_uid = v11->pw_uid;
      pw_gid = v11->pw_gid;
      if (acl_set_link_np([v1 fileSystemRepresentation], ACL_TYPE_EXTENDED, v9))
      {
        v14 = __error();
        v15 = strerror(*v14);
        error("%s: Call to acl_set_file failed(%s)\n", "MSUEarlyBootTaskSetupACLForPath", v15);
      }

      else
      {
        lchown([v1 fileSystemRepresentation], pw_uid, pw_gid);
        lchmod([v1 fileSystemRepresentation], 0);
      }

      v9 = 1;
      goto LABEL_22;
    }

    error("%s: Failed to get uid to set up acl\n");
LABEL_18:
    v9 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v9 = 1;
LABEL_23:

  return v9;
}

uint64_t flush_log()
{
  result = log_file;
  if (log_file)
  {
    fflush(log_file);
    v1 = log_file;

    return fclose(v1);
  }

  return result;
}

char *copy_path_for_booted_os_data()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    printf("%s: Failed to query gestalt for the BootManifestHash\n", "copy_path_for_booted_os_data");
    return 0;
  }

  v1 = v0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *buffer = 0u;
  v12 = 0u;
  Length = CFDataGetLength(v0);
  BytePtr = CFDataGetBytePtr(v1);
  if (!BytePtr)
  {
    printf("%s: Failed to get byte pointer from bootManifestHash data returned by gestalt\n");
LABEL_12:
    CFRelease(v1);
    return 0;
  }

  v4 = BytePtr;
  Mutable = CFStringCreateMutable(0, 0);
  if (!Mutable)
  {
    printf("%s: Failed to create bootManifestHashString\n");
    goto LABEL_12;
  }

  v6 = Mutable;
  if (Length >= 1)
  {
    do
    {
      v7 = *v4++;
      CFStringAppendFormat(v6, 0, @"%02x", v7);
      --Length;
    }

    while (Length);
  }

  CFStringGetCString(v6, buffer, 512, 0x8000100u);
  if (buffer[0])
  {
    v8 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
    v9 = v8;
    if (v8)
    {
      bzero(v8, 0x400uLL);
      snprintf(v9, 0x3FFuLL, "%s/%s-MSUData", "/private/var/MobileSoftwareUpdate/", buffer);
    }

    else
    {
      printf("%s: Failed to allocate memory for storing the path to the bootedOSData folder\n", "copy_path_for_booted_os_data");
    }
  }

  else
  {
    printf("%s: Failed to get C string representation of bootManifestHash\n", "copy_path_for_booted_os_data");
    v9 = 0;
  }

  CFRelease(v1);
  CFRelease(v6);
  return v9;
}

uint64_t move_directory_hierarchy(char *a1, const char *a2)
{
  v19[0] = a1;
  v19[1] = 0;
  if (!a1 || !a2)
  {
    error("Invalid argument passed to %s", "move_directory_hierarchy");
    return 22;
  }

  v4 = fts_open(v19, 20, 0);
  if (!v4)
  {
    v14 = __error();
    v15 = strerror(*v14);
    error("Failed to open source directory hierarchy: %s\n", v15);
    return *__error();
  }

  v5 = v4;
  v6 = fts_read(v4);
  if (!v6)
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  v7 = v6;
  while (1)
  {
    if (v7->fts_info == 7)
    {
      error("Got error while traversing source directory %s", a1);
      goto LABEL_21;
    }

    bzero(__str, 0x400uLL);
    v8 = strlen(a1);
    snprintf(__str, 0x3FFuLL, "%s%s", a2, &v7->fts_path[v8]);
    fts_info = v7->fts_info;
    if ((fts_info - 12) >= 2)
    {
      break;
    }

    if (copyfile(v7->fts_path, __str, 0, 0x12C000Fu))
    {
      v17 = "Failed to recreate symlink %s at %s: %d\n";
      goto LABEL_25;
    }

LABEL_16:
    v7 = fts_read(v5);
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  if (fts_info != 8)
  {
    if (fts_info == 1 && copyfile(v7->fts_path, __str, 0, 7u))
    {
      v17 = "Failed to recreate folder %s at %s: %d\n";
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v11 = v10;
  if (!copyfile(v7->fts_path, __str, 0, 0x13C000Fu))
  {
    +[NSDate timeIntervalSinceReferenceDate];
    totalDataMoved += v7->fts_statp->st_size;
    *&totalTimeSpentInFileMoves = v12 - v11 + *&totalTimeSpentInFileMoves;
    goto LABEL_16;
  }

  v17 = "Failed to move regular file %s to %s: %d\n";
LABEL_25:
  v13 = *__error();
  error(v17, v7->fts_path, __str, v13);
LABEL_22:
  fts_close(v5);
  return v13;
}

uint64_t moveFolderContentsIfItExists(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v13 = 0;
  v5 = +[NSFileManager defaultManager];
  if (v3 && v4)
  {
    bzero(v16, 0x400uLL);
    bzero(v15, 0x400uLL);
    [v3 getCString:v16 maxLength:1023 encoding:4];
    [v4 getCString:v15 maxLength:1023 encoding:4];
    if (!v16[0] || !v15[0])
    {
      error("%s: Unable to convert source/destination paths to C strings", "moveFolderContentsIfItExists");
    }

    debug("%s: Checking for source folder at: %s\n", "moveFolderContentsIfItExists", v16);
    [v5 fileExistsAtPath:v3 isDirectory:&v13];
    if ((v13 & 1) == 0)
    {
      debug("%s: Source folder %s does not exist\n");
      goto LABEL_16;
    }

    debug("%s: Folder exists..Attempting to move to %s\n", "moveFolderContentsIfItExists", v15);
    if ((move_directory_hierarchy(v16, v15) & 0x80000000) == 0)
    {
      v12 = 0;
      [v5 removeItemAtPath:v3 error:&v12];
      v6 = v12;
      if (v6)
      {
        v7 = v6;
        memset(v14, 0, sizeof(v14));
        v8 = [v6 description];
        [v8 getCString:v14 maxLength:511 encoding:4];

        if (LOBYTE(v14[0]))
        {
          v9 = v14;
        }

        else
        {
          v9 = "Unable to parse error reason";
        }

        error("%s: Failed to remove %s folder(%s)\n", "moveFolderContentsIfItExists", v16, v9);

        goto LABEL_14;
      }

      debug("%s: Successfully moved %s to %s\n");
LABEL_16:
      v10 = 1;
      goto LABEL_17;
    }

    error("%s: Failed to move folder contents\n");
  }

  else
  {
    error("%s: Invalid arguments passed to source/destination");
  }

LABEL_14:
  v10 = 0;
LABEL_17:

  return v10;
}

int main(int argc, const char **argv, const char **envp)
{
  __chkstk_darwin(*&argc, argv, envp);
  bzero(&v201, 0x878uLL);
  if (statfs("/", &v201))
  {
    main_cold_1();
  }

  if ((v201.f_flags & 0x40000000) == 0)
  {
    v3 = access("/usr/appleinternal/bin/snapshottool", 0);
    v4 = "/usr/local/bin/snapshottool";
    if (!v3)
    {
      v4 = "/usr/appleinternal/bin/snapshottool";
    }

    *&v227[0] = v4;
    *(&v227[0] + 1) = "golive";
    *&v227[1] = "cryptexes";
    *(&v227[1] + 1) = 0;
    execForMSUEarlyBootTask(v227);
  }

  v5 = +[NSFileManager defaultManager];
  v191 = 0;
  puts("MSUEarlyBootTask: MSUEarlyBootTask running");
  v190 = 0;
  time(&v190);
  v6 = copy_path_for_booted_os_data();
  if (!v6)
  {
    printf("%s: Unable to get path for booted OS data\n", "main");
    goto LABEL_60;
  }

  v7 = v6;
  v8 = [[NSString alloc] initWithFormat:@"%s", v6];
  if (&_os_variant_uses_ephemeral_storage)
  {
    v9 = os_variant_uses_ephemeral_storage();
    if (v9)
    {
      v10 = "MSUEarlyBootTask running in limited env";
    }

    else
    {
      v10 = "MSUEarlyBootTask running in normal env";
    }

    puts(v10);
    if (v9)
    {
      printf("%s: MSUEarlyBootTask running in a limited environment and is not supported..Goodbye!\n", "main");
LABEL_59:

      goto LABEL_60;
    }
  }

  else
  {
    puts("MSUEarlyBootTask is running in normal env(default)");
  }

  printf("%s: Content from the ramdisk will be present at %s if it exists\n", "main", v7);
  v11 = [[NSString alloc] initWithFormat:@"%@/%s", v8, "EarlyBootTaskHasCompleted.txt"];
  [v5 fileExistsAtPath:v8 isDirectory:&v191];
  if (v191 != 1)
  {
    init_log(1, 3);

    goto LABEL_59;
  }

  v12 = [[NSString alloc] initWithFormat:@"%@/%s", v8, "PluginHasCompleted.txt"];
  if ([v5 fileExistsAtPath:v12])
  {
    init_log(1, 3);
    v13 = ctime(&v190);
    debug("MSUEarlyBootTask running. Found cookie written by DataMigrator indicating the first boot operations have already completed: %s\n", v13);
    v189 = 0;
    [v5 removeItemAtPath:v8 error:&v189];
    v14 = v189;
    v15 = v14;
    if (v14)
    {
      memset(v227, 0, 512);
      v16 = [v14 description];
      [v16 getCString:v227 maxLength:511 encoding:4];

      if (LOBYTE(v227[0]))
      {
        v17 = v227;
      }

      else
      {
        v17 = "Unable to parse error reason";
      }

      error("%s: Failed to remove folder stashed by previous ramdisk : %s : Task exiting cleanly\n", "main", v17);
    }

    else
    {
      debug("%s: Successfully removed folder stashed by previous ramdisk\n", "main");
    }

    v19 = ctime(&v190);
    printf("%s: MSUDataMigrator has nothing more to do(%s)..Goodbye!!\n", "main", v19);

    goto LABEL_59;
  }

  init_log(0, 3);
  debug("=========================MSUEarlyBootTask: Running on first boot after update==========================\n");
  v18 = ctime(&v190);
  debug("%s: MSUEarlyBootTask running..Found data created by previous ramdisk. Assuming first boot after update at time %s\n", "main", v18);
  debug("%s: MSUEarlyBootTask: Enabling vnode rapid aging\n", "main");
  *&v227[0] = 0x4400000001;
  __str.st_dev = 1;
  if (sysctl(v227, 2u, 0, 0, &__str, 0))
  {
    error("%s: MSUEarlyBootTask: Failed to enable vnode rapid aging\n", "main");
  }

  else
  {
    debug("%s: MSUEarlyBootTask: Successfully enabled rapid vnode aging\n", "main");
  }

  if (MSUEarlyBootTaskSetupACLForPath(v8))
  {
    debug("MSUEarlyBootTask: Successfully set up ACL for folder stashed by ramdisk\n");
  }

  else
  {
    error("MSUEarlyBootTask: Failed to set up ACL for folder stashed by ramdisk\n");
  }

  v20 = [[NSString alloc] initWithFormat:@"%@/%s", v8, "LOW_SPACE_CLEANUP_RUN.txt"];
  v21 = [[NSString alloc] initWithFormat:@"%@/%s", v8, "SYSTEM_APPS_STAGE_FAILED.txt"];
  if ([v5 fileExistsAtPath:v20])
  {
    debug("MSUEarlyBootTask: Low space cleanup was done on last restore\n");
  }

  if ([v5 fileExistsAtPath:v21])
  {
    debug("MSUEarlyBootTask: Staging of staged_system_apps failed during the last restore\n");
  }

  debug("MSUEarlyBootTasks: Cleaning up stale stashed paths\n");
  v188 = 0;
  v22 = [v5 contentsOfDirectoryAtPath:@"/private/var/MobileSoftwareUpdate/" error:&v188];
  v23 = v188;
  if (v23)
  {
    memset(v227, 0, 512);
    v178 = v23;
    v24 = [v23 description];
    [v24 getCString:v227 maxLength:511 encoding:4];

    v25 = v227;
    if (!LOBYTE(v227[0]))
    {
      v25 = "Unable to parse error reason";
    }

    error("%s: Failed to search for stale stashed folders: %s\n", "main", v25);
  }

  else
  {
    v166 = v21;
    v169 = v20;
    v171 = v7;
    v173 = v11;
    v176 = v8;
    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    v26 = v22;
    v27 = [v26 countByEnumeratingWithState:&v184 objects:v200 count:16];
    if (v27)
    {
      v28 = v27;
      v178 = 0;
      v29 = *v185;
      v30 = &IOObjectRelease_ptr;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v185 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v184 + 1) + 8 * i);
          bzero(v227, 0x400uLL);
          v33 = [objc_alloc(v30[121]) initWithFormat:@"%s/%@", "/private/var/MobileSoftwareUpdate/", v32];
          if ([v33 containsString:@"-MSUData"] && (objc_msgSend(v33, "isEqualToString:", v176) & 1) == 0)
          {
            [v33 getCString:v227 maxLength:1023 encoding:1];
            debug("%s: Removing folder :%s:\n", "main", v227);

            v183 = 0;
            [v5 removeItemAtPath:v33 error:&v183];
            v34 = v183;
            if (v34)
            {
              v226 = 0u;
              v225 = 0u;
              v224 = 0u;
              v223 = 0u;
              v222 = 0u;
              v221 = 0u;
              v220 = 0u;
              v219 = 0u;
              v218 = 0u;
              v217 = 0u;
              v216 = 0u;
              v215 = 0u;
              v214 = 0u;
              v213 = 0u;
              v212 = 0u;
              v211 = 0u;
              v210 = 0u;
              v209 = 0u;
              v208 = 0u;
              v207 = 0u;
              v206 = 0u;
              v205 = 0u;
              v204 = 0u;
              memset(&__str, 0, sizeof(__str));
              v178 = v34;
              v35 = [v34 description];
              [v35 getCString:&__str maxLength:511 encoding:4];

              p_str = &__str;
              if (!LOBYTE(__str.st_dev))
              {
                p_str = "Unable to parse error reason";
              }

              error("%s: Failed to erase folder %s : %s\n", "main", v227, p_str);
            }

            else
            {
              v178 = 0;
            }

            v30 = &IOObjectRelease_ptr;
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v184 objects:v200 count:16];
      }

      while (v28);
    }

    else
    {
      v178 = 0;
    }

    v8 = v176;
    v7 = v171;
    v11 = v173;
    v20 = v169;
    v21 = v166;
  }

  if ([v5 fileExistsAtPath:v11])
  {
    debug("EarlyBootTask has already completed but DataMigrator plugin has not been run for this build\n");

    goto LABEL_59;
  }

  v167 = v21;
  v168 = v22;
  v170 = v20;
  v172 = v7;
  v174 = v11;
  MSUCleanupUUIDTextFolder(@"/");
  debug("%s: Running fixup var operations\n", "main");
  debug("entering %s\n", "update_var_directory_hierarchy");
  if (mkdir("/private/var/MobileSoftwareUpdate/mnt1", 0x1C0u) && *__error() != 17)
  {
    v41 = __error();
    v42 = strerror(*v41);
    error("Failed to create system volume mount point at %s : %s\n", "/private/var/MobileSoftwareUpdate/mnt1", v42);
    v43 = v11;
    goto LABEL_68;
  }

  debug("Created system mount point at %s\n", "/private/var/MobileSoftwareUpdate/mnt1");
  v38 = &IOObjectRelease_ptr;
  if ((v201.f_flags & 0x40000000) != 0)
  {
    v40 = strrchr(v201.f_mntfromname, 64);
    if (v40)
    {
      f_mntfromname = v40 + 1;
    }

    else
    {
      f_mntfromname = v201.f_mntfromname;
    }
  }

  else
  {
    f_mntfromname = v201.f_mntfromname;
  }

  v44 = [NSString stringWithUTF8String:f_mntfromname];
  if (!v44)
  {
    error("Failed to get bsd node for root dev...\n");
LABEL_79:
    v43 = v174;
    goto LABEL_80;
  }

  if ((v201.f_flags & 0x40000000) == 0)
  {
    debug("System is currently rooted from a live filesystem\n");
    v45 = copy_root_snapshot_name_from_dt();
    if (!v45)
    {
      error("Failed to copy default boot snapshot name");

      v43 = v174;
LABEL_95:
      debug("%s: Successfully completed fixup_var operations\n", "main");
      goto LABEL_81;
    }

    v46 = v45;
    debug("Will attempt to mount snapshot %s at %s\n", v45, "/private/var/MobileSoftwareUpdate/mnt1");
    if (msuearlyboottask_mount_filesystem([v44 fileSystemRepresentation], v46, 1))
    {
      free(v46);
      error("Failed to mount snapshot..\n");
LABEL_78:

      goto LABEL_79;
    }

    debug("Successfully mounted system snapshot..\n");
    msuearlyboottask_dump_mounted_filesystem_info();
    free(v46);
    goto LABEL_106;
  }

  debug("System is currently rooted from a snapshot\n");
  if (msuearlyboottask_mount_filesystem([v44 fileSystemRepresentation], 0, 0))
  {
    error("Failed to mount system volume..\n");
    goto LABEL_78;
  }

  v59 = [NSString stringWithUTF8String:v201.f_mntfromname];
  v60 = v59;
  if (v59)
  {
    v61 = v8;
    v62 = v59;
    *&__str.st_dev = 0;
    v63 = [NSRegularExpression regularExpressionWithPattern:@"(.+@)?(\\/dev\\/.+$)" options:1 error:&__str];
    v64 = *&__str.st_dev;
    if (v64)
    {
      bzero(v227, 0x400uLL);
      [v64 description];
      v66 = v65 = v63;
      [v66 getCString:v227 maxLength:1024 encoding:4];

      v63 = v65;
      if (LOBYTE(v227[0]))
      {
        v67 = v227;
      }

      else
      {
        v67 = "Unknown";
      }

      error("Error %s encountered creating regular expression..\n", v67);
      v68 = &stru_10000C688;
    }

    else
    {
      v87 = [v63 firstMatchInString:v62 options:0 range:{0, objc_msgSend(v62, "length")}];
      v88 = v87;
      if (v87)
      {
        v89 = [v87 rangeAtIndex:1];
        if (v90)
        {
          v91 = v89;
        }

        else
        {
          v91 = 0;
        }

        v68 = [v62 substringWithRange:{v91, v90}];
      }

      else
      {
        v68 = &stru_10000C688;
      }
    }

    if ([(__CFString *)v68 hasSuffix:@"@"])
    {
      v100 = [(__CFString *)v68 substringToIndex:[(__CFString *)v68 length]- 1];

      v68 = v100;
    }

    v8 = v61;
    v38 = &IOObjectRelease_ptr;
  }

  else
  {
    error("could not create string from f_mntfromname %s\n", v201.f_mntfromname);
    v68 = &stru_10000C688;
  }

  bzero(v227, 0x400uLL);
  [(__CFString *)v68 getCString:v227 maxLength:1024 encoding:4];
  v101 = open("/private/var/MobileSoftwareUpdate/mnt1", 0);
  if (v101 < 0)
  {
    v104 = __error();
    strerror(*v104);
    error("Failed to open system volume mount point(%s): %s\n");
LABEL_165:

    goto LABEL_78;
  }

  v102 = v101;
  debug("Reverting to snapshot(%s)\n", v227);
  if (fs_snapshot_revert(v102, v227, 0))
  {
    v103 = __error();
    strerror(*v103);
    error("revert snapshot operation failed: %s\n");
LABEL_168:

    close(v102);
    goto LABEL_78;
  }

  debug("Reverting system snapshot succeeded. Remounting.\n");
  if (close(v102))
  {
    v105 = __error();
    strerror(*v105);
    error("Unable to close dir(%s): %s\n");
    goto LABEL_168;
  }

  debug("Unmounting system volume..\n");
  msuearlyboottask_unmount_filesystem();
  debug("Remounting system volume at %s\n", "/private/var/MobileSoftwareUpdate/mnt1");
  if (msuearlyboottask_mount_filesystem([v44 fileSystemRepresentation], 0, 0))
  {
    error("Failed to mount system volume..\n");
    goto LABEL_165;
  }

  debug("Successfully re-mounted system volume...\n");
  msuearlyboottask_dump_mounted_filesystem_info();

LABEL_106:
  *v202 = off_10000C418;
  v69 = fts_open(v202, 84, 0);
  if (!v69)
  {
    v85 = __error();
    v86 = strerror(*v85);
    error("unable to open restored /private/var: %s\n", v86);
    debug("Unmounting system volume from %s.\n", "/private/var/MobileSoftwareUpdate/mnt1");
    msuearlyboottask_unmount_filesystem();
    msuearlyboottask_dump_mounted_filesystem_info();
    goto LABEL_78;
  }

  v70 = v69;
  v71 = fts_read(v69);
  if (!v71)
  {
    goto LABEL_127;
  }

  v72 = v71;
  while (1)
  {
    fts_info = v72->fts_info;
    if (fts_info == 1)
    {
      memset(&__str, 0, sizeof(__str));
      memcpy(v227, "/private/var", sizeof(v227));
      __strlcat_chk();
      if (lstat(v227, &__str))
      {
        if (*__error() == 2)
        {
          if (ramrod_create_directory_with_class(v227, v72->fts_statp->st_mode, v72->fts_statp->st_uid, v72->fts_statp->st_gid, -1, 0))
          {
            error("ramrod_create_directory failed for %s\n");
          }

          else
          {
            debug("Successfully created directory %s\n");
          }
        }

        else
        {
          v81 = __error();
          strerror(*v81);
          debug("stat failed on %s: %s\n");
        }
      }

      else if ((__str.st_mode & 0xF000) == 0x4000)
      {
        st_mode = v72->fts_statp->st_mode;
        if (__str.st_mode != st_mode)
        {
          debug("fixing permissions on %s: %o -> %o\n", v227, __str.st_mode, st_mode);
          if (chmod(v227, v72->fts_statp->st_mode))
          {
            v75 = __error();
            v76 = strerror(*v75);
            error("unable to fix permissions: %s\n", v76);
          }
        }

        fts_statp = v72->fts_statp;
        st_uid = fts_statp->st_uid;
        st_gid = fts_statp->st_gid;
        if (*&__str.st_uid != __PAIR64__(st_gid, st_uid))
        {
          debug("fixing ownership on %s: %d:%d -> %d:%d\n", v227, __str.st_uid, __str.st_gid, st_uid, st_gid);
          if (chown(v227, v72->fts_statp->st_uid, v72->fts_statp->st_gid))
          {
            v80 = __error();
            strerror(*v80);
            error("unable to fix ownership: %s\n");
          }
        }
      }

      else
      {
        debug("%s is a directory in the new image but not on the existing partition\n");
      }

      goto LABEL_126;
    }

    if (fts_info == 7)
    {
      break;
    }

LABEL_126:
    v72 = fts_read(v70);
    if (!v72)
    {
      goto LABEL_127;
    }
  }

  v106 = strerror(v72->fts_errno);
  error("fts_read error %d: %s\n", 7, v106);
  if (!v72->fts_errno)
  {
LABEL_127:
    if (*__error())
    {
      v82 = *__error();
      v83 = __error();
      v84 = strerror(*v83);
      error("fts_read failed: %s\n", v84);
      fts_close(v70);
      debug("Unmounting system volume from %s.\n", "/private/var/MobileSoftwareUpdate/mnt1");
      msuearlyboottask_unmount_filesystem();
      msuearlyboottask_dump_mounted_filesystem_info();

      v43 = v174;
      v38 = &IOObjectRelease_ptr;
      if (v82)
      {
        goto LABEL_80;
      }
    }

    else
    {
      fts_close(v70);
      debug("Unmounting system volume from %s.\n", "/private/var/MobileSoftwareUpdate/mnt1");
      msuearlyboottask_unmount_filesystem();
      msuearlyboottask_dump_mounted_filesystem_info();

      v43 = v174;
      v38 = &IOObjectRelease_ptr;
    }

    goto LABEL_95;
  }

  fts_close(v70);
  debug("Unmounting system volume from %s.\n", "/private/var/MobileSoftwareUpdate/mnt1");
  msuearlyboottask_unmount_filesystem();
  msuearlyboottask_dump_mounted_filesystem_info();

  v43 = v174;
LABEL_68:
  v38 = &IOObjectRelease_ptr;
LABEL_80:
  error("%s: Failed to fixup var(Not fatal)..\n", "main");
LABEL_81:
  debug("%s: Checking for and creating overprovisioning file if needed\n", "main");
  v47 = APFSOverProvModel();
  if (v47 != 1)
  {
    debug("%s: APFS overprovisioning model is %d. Not reserving space for overprovisioning file \n", "msu_reserve_space_for_overprovisioning", v47);
LABEL_92:
    debug("%s: Succesfully handled checks for overprovisioning file/volume\n", "main");
    goto LABEL_177;
  }

  v197 = 0u;
  memset(&v198, 0, sizeof(v198));
  v196 = 0u;
  v194 = 0;
  v195 = 0;
  v232[0] = @"IOParentMatch";
  v230 = @"IOPropertyMatch";
  v228 = @"EmbeddedDeviceTypeRoot";
  v229 = &__kCFBooleanTrue;
  v48 = [NSDictionary dictionaryWithObjects:&v229 forKeys:&v228 count:1];
  v231 = v48;
  v49 = [NSDictionary dictionaryWithObjects:&v231 forKeys:&v230 count:1];
  v232[1] = @"IOPropertyMatch";
  v233[0] = v49;
  v233[1] = &off_10000C7C0;
  v50 = [NSDictionary dictionaryWithObjects:v233 forKeys:v232 count:2];

  if (!stat("/private/var/.overprovisioning_file", &v198))
  {
    debug("%s: Space already reserved for overprovisioning\n", "msu_reserve_space_for_overprovisioning");

    goto LABEL_92;
  }

  v51 = v50;
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v51);
  if (!MatchingService)
  {
    error("%s: Failed to get IOService for %s\n");
LABEL_103:

    goto LABEL_176;
  }

  v53 = MatchingService;
  debug("%s: Successfully obtained ioService for %s\n", "msu_reserve_space_for_overprovisioning", "EmbeddedDeviceTypeRoot");
  CFProperty = IORegistryEntryCreateCFProperty(v53, @"BSD Name", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    v43 = v174;
    error("%s: no BSD device name for service %s");
    goto LABEL_103;
  }

  v55 = CFProperty;
  v56 = CFGetTypeID(CFProperty);
  if (v56 != CFStringGetTypeID())
  {
    error("%s: returned BSD device name for service %s is wrong type");
LABEL_132:
    v57 = 5;
LABEL_174:
    CFRelease(v55);
    v43 = v174;
    goto LABEL_175;
  }

  bzero(v227, 0x400uLL);
  if (!CFStringGetCString(v55, v227, 1023, 0x8000100u))
  {
    error("%s: failed to create C string from BSD name\n");
    goto LABEL_132;
  }

  bzero(&__str, 0x400uLL);
  snprintf(&__str, 0x3FFuLL, "/dev/%s", v227);
  debug("%s: Full path to device node for service %s is :%s:\n", "msu_reserve_space_for_overprovisioning", "EmbeddedDeviceTypeRoot", &__str);
  bzero(v202, 0x400uLL);
  memset(&v199, 0, sizeof(v199));
  if (!stat(&__str, &v199))
  {
    if ((v199.st_mode & 0xF000) == 0x6000)
    {
      memset(buf, 0, sizeof(buf));
      devname_r(v199.st_rdev, 0x2000u, buf, 32);
      snprintf(v202, 0x3FFuLL, "/dev/%s", buf);
      goto LABEL_141;
    }

    error("%s: %s is not a block device\n", "msu_partition_raw_device_for_block_device", &__str);
    v57 = -1;
    goto LABEL_155;
  }

  v57 = *__error();
  v58 = strerror(v57);
  error("%s: unable to stat block device %s: %s\n", "msu_partition_raw_device_for_block_device", &__str, v58);
  if (v57)
  {
LABEL_155:
    error("%s: Failed to get raw device node for block device %s\n");
    goto LABEL_174;
  }

LABEL_141:
  v92 = open(v202, 0);
  if (v92 == -1)
  {
    v57 = *__error();
    v107 = __error();
    strerror(*v107);
    error("%s: Unable to open device: %s\n");
    goto LABEL_174;
  }

  v93 = v92;
  v193 = 0;
  v192 = 0;
  v177 = v8;
  if (ioctl(v92, 0x40046418uLL, &v193) == -1)
  {
    v57 = *__error();
    v149 = __error();
    strerror(*v149);
    error("%s: unable to get DKIOCGETBLOCKSIZE: %s\n");
LABEL_251:
    v98 = -1;
    goto LABEL_261;
  }

  if (ioctl(v93, 0x40086419uLL, &v192) == -1)
  {
    v57 = *__error();
    v150 = __error();
    strerror(*v150);
    error("%s: unable to get DKIOCGETBLOCKCOUNT: %s \n");
    goto LABEL_251;
  }

  v94 = v192 * v193;
  v95 = v94 + 0x3FFFFFFF;
  if (v94 >= 0)
  {
    v95 = v192 * v193;
  }

  debug("%s: device_size = %llu (%lld GB)\n", "msu_reserve_space_for_overprovisioning", v192 * v193, v95 >> 30);
  if (v94 <= 0x1900000063)
  {
    v96 = v94 / 100;
  }

  else
  {
    v96 = 0x40000000;
  }

  debug("%s: file_size = %llu (%lld GB)\n", "msu_reserve_space_for_overprovisioning", v96, v96 / 0x40000000);
  v97 = open_dprotected_np("/private/var/.overprovisioning_file", 2562, 4, 0, 384);
  v98 = v97;
  if (v97 == -1)
  {
    v57 = *__error();
    v151 = __error();
    strerror(*v151);
    error("%s: Could not open %s with error %s\n");
    goto LABEL_260;
  }

  v196 = 0x30000000EuLL;
  *&v197 = v96;
  if (fcntl(v97, 42, &v196) != -1)
  {
    goto LABEL_151;
  }

  if (*__error() != 28)
  {
    if (!*__error())
    {
      goto LABEL_151;
    }

    v154 = __error();
    v155 = strerror(*v154);
    error("%s: fcntl(2) failed trying to allocate contiguous space all at once with error: %s", "msu_reserve_space_for_overprovisioning", v155);
    goto LABEL_269;
  }

  LODWORD(v196) = 10;
  if (fcntl(v98, 42, &v196) != -1)
  {
    goto LABEL_151;
  }

  if (*__error() == 28)
  {
    LODWORD(v196) = 8;
    if (fcntl(v98, 42, &v196) == -1)
    {
      v57 = *__error();
      v152 = __error();
      strerror(*v152);
      error("%s: preallocation of %llu bytes failed with error: (%s). (Allocated %llu bytes)\n");
      goto LABEL_260;
    }

LABEL_151:
    if (ftruncate(v98, v96))
    {
      v57 = *__error();
      v99 = __error();
      strerror(*v99);
      error("%s: failed to write to %s file to establish the size (%s).\n");
      goto LABEL_260;
    }

    if (fcntl(v98, 51, 0))
    {
      v57 = *__error();
      v153 = __error();
      strerror(*v153);
      error("%s: failed to fullsync %s file with %s.\n");
      goto LABEL_260;
    }

    v194 = 0;
    v195 = v96;
    if (fcntl(v98, 100, &v194) == -1)
    {
      v57 = *__error();
      v156 = __error();
      v157 = strerror(*v156);
      error("%s: F_TRIM_ACTIVE_FILE failed with: %s \n", "msu_reserve_space_for_overprovisioning", v157);
      close(v98);
      if (unlink("/private/var/.overprovisioning_file"))
      {
        v158 = __error();
        v159 = strerror(*v158);
        error("%s: failed to unlink %s: %s \n", "msu_reserve_space_for_overprovisioning", "/private/var/.overprovisioning_file", v159);
        v57 = *__error();
      }

      v98 = -1;
    }

    else
    {
LABEL_269:
      v57 = 0;
    }
  }

  else
  {
    if (!*__error())
    {
      goto LABEL_151;
    }

    v57 = *__error();
    v160 = __error();
    strerror(*v160);
    error("%s: fcntl(2) failed trying to allocate contiguous space with error: %s");
  }

LABEL_260:
  v38 = &IOObjectRelease_ptr;
LABEL_261:
  CFRelease(v55);
  if ((v93 & 0x80000000) == 0)
  {
    close(v93);
  }

  v43 = v174;
  if ((v98 & 0x80000000) == 0)
  {
    close(v98);
  }

  v8 = v177;
LABEL_175:

  if (!v57)
  {
    goto LABEL_92;
  }

LABEL_176:
  error("%s: Unable to reserve space for overprovisioning. Continuing anyways\n", "main");
LABEL_177:
  debug("%s: Checking if clearing out of FIPS data file is needed\n", "main");
  v108 = [objc_alloc(v38[121]) initWithFormat:@"%@/ClearFIPSDataFile.txt", v8];
  if ([v5 fileExistsAtPath:v108])
  {
    v109 = [objc_alloc(v38[121]) initWithFormat:@"%s/db/FIPS/fips_data", "/private/var"];
    v165 = v109;
    if (![v5 fileExistsAtPath:v109])
    {
      debug("%s: Nothing to do since no FIPS data file present at %s/db/FIPS/fips_data\n", "main", "/private/var");
      v111 = v178;
      goto LABEL_186;
    }

    debug("%s: Clearing out FIPS data file\n", "main");

    v182 = 0;
    [v5 removeItemAtPath:v109 error:&v182];
    v110 = v182;
    if (v110)
    {
      memset(v227, 0, 512);
      v111 = v110;
      v112 = [v110 description];
      [v112 getCString:v227 maxLength:511 encoding:4];

      if (LOBYTE(v227[0]))
      {
        v113 = v227;
      }

      else
      {
        v113 = "Unable to parse error reason";
      }

      v38 = &IOObjectRelease_ptr;
      error("%s: Failed to clear fips data file: %s\n", "main", v113);
LABEL_186:
    }

    v181 = 0;
    [v5 removeItemAtPath:v108 error:&v181];
    v114 = v181;
    if (v114)
    {
      memset(v227, 0, 512);
      v178 = v114;
      v115 = [v114 description];
      [v115 getCString:v227 maxLength:511 encoding:4];

      if (LOBYTE(v227[0]))
      {
        v116 = v227;
      }

      else
      {
        v116 = "Unable to parse error reason";
      }

      v38 = &IOObjectRelease_ptr;
      error("%s: Failed to clear fips data cookie: %s\n", "main", v116);
    }

    else
    {
      v178 = 0;
    }
  }

  else
  {
    debug("%s: Clearing of FIPS data file not required.\n", "main");
    v165 = 0;
  }

  v117 = [objc_alloc(v38[121]) initWithFormat:@"%@/MobileAsset/PreinstalledAssetsV2", v8];
  v163 = [objc_alloc(v38[121]) initWithFormat:@"%s", "/private/var/MobileAsset/PreinstalledAssetsV2"];
  v164 = v117;
  if (moveFolderContentsIfItExists(v117, v163))
  {
    debug("Done moving of preinstalled MobileAssets to data volume\n");
  }

  else
  {
    error("Failed to move preinstalled MobileAssets to data volume\n");
  }

  v118 = [objc_alloc(v38[121]) initWithFormat:@"%@/wireless/Library/Logs", v8];
  v161 = [objc_alloc(v38[121]) initWithFormat:@"%s", "/private/var/wireless/Library"];
  v162 = v118;
  if (moveFolderContentsIfItExists(v118, v161))
  {
    debug("Done moving of Wireless/Library folder to data volume\n");
  }

  else
  {
    error("Failed to move Wireless/Library folder to data volume\n");
  }

  debug("Creating cookie file for earlyBootTaskHasCompletedOnce\n");
  v175 = v108;
  if ([v5 createFileAtPath:v43 contents:0 attributes:0])
  {
    debug("Successfully created earlyBootTaskHasCompletedOnceCookie\n");
  }

  else
  {
    error("Failed to create earlyBootTaskHasCompletedOnceCookie\n");
  }

  v119 = objc_alloc(v38[121]);
  v120 = v38;
  v121 = v8;
  v122 = [v119 initWithFormat:@"%@/staged_system_apps", v8];
  v123 = [v5 fileExistsAtPath:v122];
  v124 = [v122 UTF8String];
  if (v124)
  {
    v125 = v124;
  }

  else
  {
    v125 = "(update volume MSUData staged_system_apps directory)";
  }

  v126 = [objc_alloc(v120[121]) initWithFormat:@"%s", "/private/var/staged_system_apps"];
  v127 = [v5 fileExistsAtPath:v126];
  v128 = [v126 UTF8String];
  v129 = v128;
  if (v128)
  {
    v130 = v128;
  }

  else
  {
    v130 = "(data volume staged_system_apps directory)";
  }

  v131 = "does not exist";
  if (v127)
  {
    v132 = "exists";
  }

  else
  {
    v132 = "does not exist";
  }

  v133 = "Creating the latter.";
  if (v127)
  {
    v133 = "Clearing the latter.";
  }

  if (v123)
  {
    v131 = "exists";
  }

  v134 = "Skipping.";
  if (v123)
  {
    v134 = v133;
  }

  debug("%s: Datamigrator is supported on target. %s %s, and %s %s. %s\n", "main", v125, v131, v130, v132, v134);
  if (!v123)
  {
    goto LABEL_247;
  }

  if (v127)
  {

    v180 = 0;
    [v5 removeItemAtPath:v126 error:&v180];
    v135 = v180;
    if (v135)
    {
      memset(v227, 0, 512);
      v178 = v135;
      v136 = [v135 description];
      [v136 getCString:v227 maxLength:511 encoding:4];

      if (LOBYTE(v227[0]))
      {
        v137 = v227;
      }

      else
      {
        v137 = "Unable to parse error reason";
      }

      error("%s: Failed to remove %s on the data volume: %s. Skipping.\n", "main", v130, v137);
    }

    else
    {
      v178 = 0;
    }
  }

  v227[0] = [v122 fileSystemRepresentation];
  v138 = fts_open(v227, 84, 0);
  if (!v138)
  {
    goto LABEL_240;
  }

  v139 = v138;
  debug("Setting up ACL's for the staged_system_apps on update volume\n");
  v140 = fts_read(v139);
  if (!v140)
  {
    goto LABEL_239;
  }

  v141 = v140;
  while (2)
  {
    v142 = objc_autoreleasePoolPush();
    v143 = v141->fts_info;
    if (v143 <= 6)
    {
      if (v143 != 1)
      {
        if (v143 != 6)
        {
LABEL_235:
          error("fts_read found unsupported file type: %d\n", v141->fts_info);
        }

LABEL_236:
        objc_autoreleasePoolPop(v142);
        v141 = fts_read(v139);
        if (!v141)
        {
          goto LABEL_239;
        }

        continue;
      }

LABEL_233:
      v144 = [NSString stringWithUTF8String:v141->fts_path];
      MSUEarlyBootTaskSetupACLForPath(v144);

      goto LABEL_236;
    }

    break;
  }

  if (v143 == 8)
  {
    goto LABEL_233;
  }

  if (v143 != 7)
  {
    goto LABEL_235;
  }

  v145 = strerror(v141->fts_errno);
  error("fts_read error %d: %s\n", 7, v145);
  error("Failed to setup ACL for staged system apps\n");
  objc_autoreleasePoolPop(v142);
LABEL_239:
  fts_close(v139);
  v43 = v174;
LABEL_240:
  debug("Done setting up ACL's for staged_system_apps\n");
  if (v129)
  {
    if (ramrod_create_directory_with_class(v129, 509, 0x1F5u, 0x1F5u, 4, 1))
    {
      error("%s: Failed to create %s - ramrod_create_directory_with_class error %lld. Skipping\n");
    }

    else
    {
      debug("MSUEarlyBootTask: Created staged_system_apps folder. Updating permissions\n");
      v146 = [NSString stringWithUTF8String:v129];
      v147 = MSUEarlyBootTaskSetupACLForPath(v146);

      if (v147)
      {
        debug("Successfully setup ACL for staged_system_apps folder\n");
      }

      else
      {
        error("Failed to setup ACL for staged_system_apps folder\n");
      }
    }
  }

  else
  {
    error("%s: Failed to create %s - path was NULL. Skipping.\n");
  }

LABEL_247:
  v179 = 0;
  time(&v179);
  v148 = ctime(&v179);
  debug("Operations completed at %s\n", v148);
  flush_log();
  free(v172);

LABEL_60:
  return 0;
}

uint64_t execForMSUEarlyBootTask(const char **a1)
{
  v24 = 0;
  *v26 = -1;
  if (pipe(v26))
  {
    v2 = *a1;
    v3 = __error();
    v4 = strerror(*v3);
    error("%s: pipe failed while preparing to execute %s: %s\n", "execForMSUEarlyBootTask", v2, v4);
    return 0xFFFFFFFFLL;
  }

  v23 = 0;
  posix_spawn_file_actions_init(&v23);
  posix_spawn_file_actions_adddup2(&v23, v26[1], 1);
  posix_spawn_file_actions_addclose(&v23, v26[0]);
  v6 = posix_spawn(&v24, *a1, &v23, 0, a1, 0);
  if (v6)
  {
    v5 = v6;
    v7 = *a1;
    v8 = strerror(v6);
    error("%s: posix_spawn %s failed: %s\n", "execForMSUEarlyBootTask", v7, v8);
    close(v26[0]);
    goto LABEL_5;
  }

  bzero(v25, 0x400uLL);
  v10 = v26[0];
  close(v26[1]);
  v26[1] = -1;
  v11 = read(v10, v25, 0x400uLL);
  if (v11 >= 1)
  {
    do
    {
      execlogfunction(v11, v12, v13, v14, v15, v16, v17, v18, v11);
      v11 = read(v10, v25, 0x400uLL);
    }

    while (v11 > 0);
  }

  v22 = 0;
  if (waitpid(v24, &v22, 0) == -1)
  {
    v5 = *__error();
    v19 = *a1;
    v20 = __error();
    v21 = strerror(*v20);
    error("%s: waitpid failed for %s: %s\n", "execForMSUEarlyBootTask", v19, v21);
  }

  else
  {
    if ((v22 & 0x7F) == 0x7F)
    {
      printf("%s: %s was stopped by signal %d\n", "execForMSUEarlyBootTask", *a1, v22 >> 8);
    }

    else
    {
      if ((v22 & 0x7F) == 0)
      {
        v5 = BYTE1(v22);
        goto LABEL_5;
      }

      error("%s: %s was terminated by signal %d\n", "execForMSUEarlyBootTask", *a1, v22 & 0x7F);
    }

    v5 = 0xFFFFFFFFLL;
  }

LABEL_5:
  posix_spawn_file_actions_destroy(&v23);
  if (v26[1] != -1)
  {
    close(v26[1]);
  }

  return v5;
}

uint64_t ramrod_create_directory_with_class(_BYTE *a1, int a2, uid_t a3, gid_t a4, int a5, int a6)
{
  if (!a1 || *a1 != 47)
  {
    return 22;
  }

  bzero(v24, 0x400uLL);
  __strlcpy_chk();
  for (i = v24; ; *i = 47)
  {
    v12 = strchr(i + 1, 47);
    i = v12;
    if (v12)
    {
      *v12 = 0;
    }

    memset(&v23, 0, sizeof(v23));
    if (lstat(v24, &v23))
    {
      if (*__error() != 2)
      {
        v13 = *__error();
        v14 = __error();
        strerror(*v14);
        error("lstat %s failed: %s\n");
        return v13;
      }

      if (a6)
      {
        error("creating directory (owner=%d group=%d mode=%o, class=%d) %s\n", a3, a4, a2, a5, v24);
      }

      if (mkdir(v24, a2 & 0x1FF))
      {
        v13 = *__error();
        v15 = __error();
        strerror(*v15);
        error("mkdir failed: %s\n");
        return v13;
      }

      if (chmod(v24, a2))
      {
        v13 = *__error();
        v16 = __error();
        strerror(*v16);
        error("chmod failed: %s\n");
        return v13;
      }

      if (chown(v24, a3, a4))
      {
        v13 = *__error();
        v17 = __error();
        strerror(*v17);
        error("chown failed: %s\n");
        return v13;
      }

      if ((a5 & 0x80000000) == 0)
      {
        v22 = 0;
        v21 = xmmword_100007E84;
        v20 = a5;
        if (setattrlist(v24, &v21, &v20, 4uLL, 0))
        {
          break;
        }
      }
    }

    if (!i)
    {
      return 0;
    }
  }

  v13 = *__error();
  v18 = __error();
  strerror(*v18);
  error("setattrlist failed: %s\n");
  return v13;
}

uint64_t msuearlyboottask_mount_filesystem(const char *a1, const char *a2, int a3)
{
  if (!a1)
  {
    error("%s: Invalid arguments passed\n", "msuearlyboottask_mount_filesystem");
    return 0xFFFFFFFFLL;
  }

  debug("%s: Attempting to mount %s at %s\n", "msuearlyboottask_mount_filesystem", a1, "/private/var/MobileSoftwareUpdate/mnt1");
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v9[0] = "/sbin/mount_apfs";
  v9[1] = "-o";
  v9[2] = "nobrowse";
  if (a3)
  {
    debug("%s: Mounting read-only\n", "msuearlyboottask_mount_filesystem");
    *&v10 = "-o";
    *(&v10 + 1) = "rdonly";
    v6 = 5;
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = 3;
  if (a2)
  {
LABEL_7:
    debug("%s: Mounting snapshot %s\n", "msuearlyboottask_mount_filesystem", a2);
    v8 = v6 + 1;
    v9[v6] = "-s";
    v6 += 2;
    v9[v8] = a2;
  }

LABEL_8:
  v9[v6] = a1;
  v9[v6 + 1] = "/private/var/MobileSoftwareUpdate/mnt1";
  v9[v6 + 2] = 0;
  return execForMSUEarlyBootTask(v9);
}

void msuearlyboottask_unmount_filesystem()
{
  v0 = -3;
  do
  {
    if (!unmount("/private/var/MobileSoftwareUpdate/mnt1", 0x80000))
    {
      break;
    }

    v1 = *__error();
    v2 = v1 == 35 || v1 == 16;
    v3 = v2;
    if (v1 == 22)
    {
      debug("MSUEarlyBootTask: Tried to unmount a volume at '%s' that wasn't mounted. Ignoring the error.\n", "/private/var/MobileSoftwareUpdate/mnt1");
    }

    else
    {
      v4 = __error();
      v5 = strerror(*v4);
      error("MSUEarlyBootTask: error unmounting '%s': %s\n", "/private/var/MobileSoftwareUpdate/mnt1", v5);
      if (v1 == 35 || v1 == 16)
      {
        v6 = strerror(v1);
        error("Unmounting %s failed with %d: %s. Will retry in %d seconds", "/private/var/MobileSoftwareUpdate/mnt1", v1, v6, 3);
        sleep(3u);
      }
    }
  }

  while (v0++ && v3);
}

void msuearlyboottask_dump_mounted_filesystem_info()
{
  debug("%s:**********DUMPING MOUNTED FILESYSTEMS********\n", "msuearlyboottask_dump_mounted_filesystem_info");
  v3 = 0;
  v0 = getmntinfo(&v3, 2);
  debug("%s: %d filesystems are mounted\n", "msuearlyboottask_dump_mounted_filesystem_info", v0);
  if (v3)
  {
    if (v0 >= 1)
    {
      v1 = v0 + 1;
      v2 = 2168 * v0 - 2080;
      do
      {
        debug("%s is mounted at %s\n", &v3->f_mntonname[v2 + 936], v3 + v2);
        --v1;
        v2 -= 2168;
      }

      while (v1 > 1);
    }
  }

  else
  {
    debug("Failed to get info regarding mounted filesystems\n");
  }

  debug("%s: *********DONE DUMPING MOUNTED FILESYSTEMS********\n", "msuearlyboottask_dump_mounted_filesystem_info");
}

acl_t MSUEarlyBootTaskCopySystemContainerACLWithNumACEs(int a1)
{
  acl_p = acl_init(1);
  if (!acl_p)
  {
    v4 = __error();
    v5 = strerror(*v4);
    error("MSUEarlyBootTask: acl_init() failed: %s", v5);
    return 0;
  }

  if (a1)
  {
    v2 = ACL_CHANGE_OWNER|ACL_WRITE_SECURITY|ACL_READ_SECURITY|ACL_WRITE_EXTATTRIBUTES|ACL_READ_EXTATTRIBUTES|ACL_WRITE_ATTRIBUTES|ACL_READ_ATTRIBUTES|ACL_DELETE_CHILD|ACL_ADD_SUBDIRECTORY|ACL_DELETE|ACL_SEARCH|ACL_ADD_FILE|ACL_LIST_DIRECTORY;
  }

  else
  {
    v2 = ACL_CHANGE_OWNER|ACL_WRITE_SECURITY|ACL_READ_SECURITY|ACL_WRITE_EXTATTRIBUTES|ACL_READ_EXTATTRIBUTES|ACL_WRITE_ATTRIBUTES|ACL_READ_ATTRIBUTES|ACL_ADD_SUBDIRECTORY|ACL_DELETE|ACL_SEARCH|ACL_ADD_FILE|ACL_LIST_DIRECTORY;
  }

  entry_p = 0;
  if (a1)
  {
    v3 = ACL_ENTRY_DIRECTORY_INHERIT|ACL_ENTRY_FILE_INHERIT;
  }

  else
  {
    v3 = ACL_ENTRY_INHERITED;
  }

  flagset_p = 0;
  permset_p = 0;
  if (acl_create_entry(&acl_p, &entry_p))
  {
    error("MSUEarlyBootTask: Unable to create acl entry(%d)\n");
  }

  else
  {
    v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
    if (v6)
    {
      v7 = v6;
      v8 = mbr_identifier_to_uuid(5, "systemusers", 0xBuLL, v6);
      if (v8)
      {
        strerror(v8);
        error("MSUEarlyBootTask: Failed to convert mbr identifier to uuid : %d (%s)\n");
      }

      else
      {
        permset = acl_get_permset(entry_p, &permset_p);
        if (permset)
        {
          strerror(permset);
          error("acl_get_permset() failed: %d: %s\n");
        }

        else
        {
          v10 = acl_add_perm(permset_p, v2);
          if (v10)
          {
            strerror(v10);
            error("acl_add_perm() failed to set perms %x: %d: %s\n");
          }

          else if (acl_set_permset(entry_p, permset_p))
          {
            strerror(0);
            error("acl_set_permset() failed: %d: %s");
          }

          else
          {
            flagset_np = acl_get_flagset_np(entry_p, &flagset_p);
            if (flagset_np)
            {
              strerror(flagset_np);
              error("MSUEarlyBootTask: acl_get_flagset_np() failed: %d: %s");
            }

            else
            {
              v12 = acl_add_flag_np(flagset_p, v3);
              if (v12)
              {
                strerror(v12);
                error("MSUEarlyBootTask: acl_add_flag_np() failed to set flags %x: %d %s\n");
              }

              else
              {
                v13 = acl_set_flagset_np(entry_p, flagset_p);
                if (v13)
                {
                  strerror(v13);
                  error("acl_set_flagset_np() failed: %d: %s\n");
                }

                else
                {
                  v14 = acl_set_tag_type(entry_p, ACL_EXTENDED_ALLOW);
                  if (v14)
                  {
                    strerror(v14);
                    error("acl_set_tag_type() failed: %d: %s");
                  }

                  else
                  {
                    v15 = acl_set_qualifier(entry_p, v7);
                    if (!v15)
                    {
                      free(v7);
                      return acl_p;
                    }

                    strerror(v15);
                    error("acl_set_qualifier() failed: %d: %s");
                  }
                }
              }
            }
          }
        }
      }

      free(v7);
    }

    else
    {
      error("MSUEarlyBootTask: Unable to allocate nameUUID\n");
    }
  }

  error("MSUEarlyBootTask: Failed in call to MSUEarlyBootTaskCreateSystemUserACEInACL\n");
  result = acl_p;
  if (acl_p)
  {
    acl_free(acl_p);
    return 0;
  }

  return result;
}

uint64_t _partition_log(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (_loggingPtr)
  {
    return _loggingPtr(result, &a9);
  }

  return result;
}

char *copy_root_snapshot_name_from_dt()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (!v0)
  {
    _partition_log("uanble to find chosen node", v1, v2, v3, v4, v5, v6, v7, v30);
    return 0;
  }

  v8 = v0;
  CFProperty = IORegistryEntryCreateCFProperty(v0, @"root-snapshot-name", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    _partition_log("unable to look up root-snapshot-name on chosen node", v10, v11, v12, v13, v14, v15, v16, v30);
    IOObjectRelease(v8);
    return 0;
  }

  v17 = CFProperty;
  v18 = CFGetTypeID(CFProperty);
  if (v18 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(v17);
    Length = CFDataGetLength(v17);
    v28 = strndup(BytePtr, Length);
  }

  else
  {
    _partition_log("device tree root-snapshot-name type mismatch", v19, v20, v21, v22, v23, v24, v25, v30);
    v28 = 0;
  }

  IOObjectRelease(v8);
  CFRelease(v17);
  return v28;
}
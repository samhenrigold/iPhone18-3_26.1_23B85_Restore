@interface OSALog
+ (BOOL)isDataVaultEnabled;
+ (BOOL)randomlySelectForRetention:(id)retention;
+ (id)additionalRootsInstalled;
+ (id)commonFieldsForBody:(id)body;
+ (id)createForSubmission:(id)submission metadata:(id)metadata options:(id)options error:(id *)error writing:(id)writing;
+ (id)locallyCreateForSubmission:(id)submission metadata:(id)metadata options:(id)options error:(id *)error writing:(id)writing;
+ (id)logObjForBugType:(id)type;
+ (id)scanProxies:(id)proxies;
+ (unsigned)scanLogs:(id)logs from:(id)from options:(id)options;
+ (void)cleanupForUser:(id)user;
+ (void)cleanupLogs:(id)logs withFilters:(id)filters error:(id *)error;
+ (void)cleanupRetired:(id)retired;
+ (void)createRetiredDirectoriesForUser:(id)user;
+ (void)createRetiredDirectory:(id)directory;
+ (void)iterateLogsWithOptions:(id)options usingBlock:(id)block;
+ (void)markDescriptor:(int)descriptor forKey:(id)key withObj:(id)obj;
+ (void)markDescriptor:(int)descriptor withPairs:(id)pairs andOptions:(id)options;
+ (void)markFile:(id)file withKey:(const char *)key value:(const char *)value;
+ (void)markPurgeableLevel:(unint64_t)level path:(id)path;
+ (void)purgeLogs:(id)logs withReason:(const char *)reason includeRetired:(BOOL)retired deleteOnRetire:(BOOL)retire usingPredicate:(id)predicate;
- (BOOL)isReasonableSize:(int64_t)size forRouting:(id)routing;
- (BOOL)retire:(const char *)retire;
- (OSALog)initWithFilepath:(id)filepath type:(id)type;
- (OSALog)initWithPath:(id)path forRouting:(id)routing options:(id)options;
- (OSALog)initWithPath:(id)path forRouting:(id)routing options:(id)options error:(id *)error;
- (OSALog)initWithPath:(id)path forRouting:(id)routing usingConfig:(id)config options:(id)options error:(id *)error;
- (OSALog)initWithPath:(id)path options:(id)options error:(id *)error;
- (OSALog)initWithType:(id)type filepath:(id)filepath metadata:(id)metadata options:(id)options at:(double)at error:(id *)error;
- (void)closeFileStream;
- (void)dealloc;
- (void)markWithKey:(const char *)key value:(const char *)value;
- (void)rename:(id)rename;
@end

@implementation OSALog

+ (BOOL)isDataVaultEnabled
{
  v2 = +[OSAReport bootArgs];
  if ([v2 containsString:@"-restore"] & 1) != 0 || (objc_msgSend(v2, "containsString:", @"-upgrade"))
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = os_variant_is_darwinos() ^ 1;
  }

  return v3;
}

+ (id)additionalRootsInstalled
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = 8;
  v6 = 0;
  v2 = 0;
  if (!sysctlbyname("kern.roots_installed", &v6, &v5, 0, 0))
  {
    v7 = @"roots_installed";
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v6];
    v8[0] = v3;
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  return v2;
}

- (void)closeFileStream
{
  v14 = *MEMORY[0x1E69E9840];
  stream = self->_stream;
  if (stream)
  {
    if (fclose(stream))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [(NSString *)self->_filepath lastPathComponent];
        v5 = *__error();
        v6 = __error();
        v7 = strerror(*v6);
        v8 = 138412802;
        v9 = lastPathComponent;
        v10 = 1024;
        v11 = v5;
        v12 = 2080;
        v13 = v7;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "WARNING: Failed to close %@. Please do NOT call [NSFileHandle closeFile] errno=%d: %s", &v8, 0x1Cu);
      }
    }

    self->_stream = 0;
  }
}

- (void)dealloc
{
  [(OSALog *)self closeFileStream];
  v3.receiver = self;
  v3.super_class = OSALog;
  [(OSALog *)&v3 dealloc];
}

- (OSALog)initWithPath:(id)path forRouting:(id)routing usingConfig:(id)config options:(id)options error:(id *)error
{
  v115 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  routingCopy = routing;
  configCopy = config;
  optionsCopy = options;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [OSALog initWithPath:forRouting:usingConfig:options:error:];
  }

  v105.receiver = self;
  v105.super_class = OSALog;
  v17 = [(OSALog *)&v105 init];
  if (!v17)
  {
    goto LABEL_87;
  }

  v104 = "rejected";
  v18 = [optionsCopy objectForKeyedSubscript:@"<cleanup>"];
  v17->_deleteOnRetire = [v18 BOOLValue];

  v19 = [optionsCopy objectForKeyedSubscript:@"<preserve>"];
  v17->_preserveFiles = [v19 BOOLValue];

  v20 = [optionsCopy objectForKeyedSubscript:@"<exempt>"];
  bOOLValue = [v20 BOOLValue];

  objc_storeStrong(&v17->_filepath, path);
  v17->_stream = fopen([(NSString *)v17->_filepath fileSystemRepresentation], "r");
  v22 = __error();
  if (v17->_stream)
  {
    memset(&v103, 0, sizeof(v103));
    v23 = fileno(v17->_stream);
    errorCopy = error;
    if (fstat(v23, &v103))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        filepath = v17->_filepath;
        v25 = *__error();
        *buf = 138412546;
        v112 = filepath;
        v113 = 1024;
        LODWORD(st_size) = v25;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Logfile '%@' fstat errno %d", buf, 0x12u);
      }

      v104 = "rejected-fstat";
      fclose(v17->_stream);
      v17->_stream = 0;
      goto LABEL_73;
    }

    pathExtension = [(NSString *)v17->_filepath pathExtension];
    v34 = [pathExtension isEqualToString:@"synced"];
    v35 = v17->_filepath;
    if (v34)
    {
      stringByDeletingPathExtension = [(NSString *)v35 stringByDeletingPathExtension];
    }

    else
    {
      stringByDeletingPathExtension = v35;
    }

    v37 = stringByDeletingPathExtension;

    pathExtension2 = [(NSString *)v37 pathExtension];
    bugType = v17->_bugType;
    v17->_bugType = pathExtension2;

    v102.tv_sec = 0;
    *&v102.tv_usec = 0;
    gettimeofday(&v102, 0);
    if ((bOOLValue & 1) == 0 && v102.tv_sec - v103.st_mtimespec.tv_sec > 2591999)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v60 = v17->_filepath;
        *buf = 138412290;
        v112 = v60;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Logfile '%@' is too old for submission", buf, 0xCu);
      }

      fclose(v17->_stream);
      v17->_stream = 0;
      v104 = "rejected-age";
      goto LABEL_72;
    }

    v40 = [optionsCopy objectForKeyedSubscript:@"<metadata>"];
    v41 = v40;
    if (v40 && ![v40 BOOLValue])
    {
      if ((bOOLValue & 1) != 0 || [(OSALog *)v17 isReasonableSize:v103.st_size forRouting:routingCopy])
      {
        if (([routingCopy isEqualToString:@"anon"] & 1) != 0 || (objc_msgSend(v41, "BOOLValue") & 1) == 0)
        {
          v96 = objc_opt_new();
          if ([routingCopy isEqualToString:@"anon"])
          {
            [(NSString *)v37 stringByDeletingPathExtension];
            v65 = v64 = v41;
            [v65 pathExtension];
            v67 = v66 = v37;

            v41 = v64;
            [(NSDictionary *)v96 setObject:v67 forKeyedSubscript:@"subrouting"];
            v68 = [v67 stringByAppendingPathExtension:v17->_bugType];
            v69 = v17->_bugType;
            v17->_bugType = v68;

            v37 = v66;
          }

          v98 = pathCopy;
          v93 = v41;
          v94 = v37;
          if (initWithPath_forRouting_usingConfig_options_error__onceToken != -1)
          {
            [OSALog initWithPath:forRouting:usingConfig:options:error:];
          }

          v70 = fileno(v17->_stream);
          v71 = flistxattr(v70, buf, 0x1FFuLL, 0);
          if (v71 >= 1)
          {
            v72 = v71;
            buf[v71] = 0;
            v73 = buf;
            do
            {
              v74 = fgetxattr(v70, v73, __ptr, 0x20uLL, 0, 0);
              if (v74 >= 1)
              {
                __ptr[v74] = 0;
                v75 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v73];
                if (([initWithPath_forRouting_usingConfig_options_error__option_xattr_whitelist containsObject:v75] & 1) == 0)
                {
                  v76 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__ptr];
                  [(NSDictionary *)v96 setObject:v76 forKeyedSubscript:v75];
                }
              }

              v73 += strlen(v73) + 1;
            }

            while (v73 - buf < v72);
          }

          metaData = v17->_metaData;
          v17->_metaData = v96;

          pathCopy = v98;
          v41 = v93;
          v37 = v94;
        }

        else
        {
          v61 = v17->_metaData;
          v17->_metaData = MEMORY[0x1E695E0F8];
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v91 = v17->_filepath;
          *buf = 138412546;
          v112 = v91;
          v113 = 2048;
          st_size = v103.st_size;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Logfile '%@' is too large (%lld) for submission", buf, 0x16u);
        }

        v104 = "rejected-rawsize";
        fclose(v17->_stream);
        v17->_stream = 0;
      }

      goto LABEL_71;
    }

    v97 = pathCopy;
    v99 = configCopy;
    v42 = [MEMORY[0x1E695DF88] dataWithCapacity:1024];
    __ptr[0] = 0;
    if (fread(__ptr, 1uLL, 1uLL, v17->_stream) && __ptr[0] != 10)
    {
      v43 = 0;
      do
      {
        [v42 appendBytes:__ptr length:1];
        if (fread(__ptr, 1uLL, 1uLL, v17->_stream))
        {
          v44 = __ptr[0] == 10;
        }

        else
        {
          v44 = 1;
        }

        if (v44)
        {
          break;
        }
      }

      while (v43++ < 0x3FF);
    }

    if (![v42 length])
    {
      if (bOOLValue)
      {
LABEL_70:

        pathCopy = v97;
        configCopy = v99;
LABEL_71:

LABEL_72:
LABEL_73:
        if (v17->_stream)
        {
          goto LABEL_74;
        }

        v58 = v104;
        v59 = errorCopy;
        goto LABEL_80;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v62 = v17->_filepath;
        v63 = *__error();
        *buf = 138412546;
        v112 = v62;
        v113 = 1024;
        LODWORD(st_size) = v63;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Logfile '%@' rejected for submission: missing metadata (or fread errno %d)", buf, 0x12u);
      }

      v104 = "rejected-header";
LABEL_68:
      if (!((v17->_metaData != 0) | bOOLValue & 1))
      {
        fclose(v17->_stream);
        v17->_stream = 0;
      }

      goto LABEL_70;
    }

    v46 = v41;
    v101 = 0;
    v47 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v42 options:0 error:&v101];
    v95 = v101;
    v48 = v17->_metaData;
    v17->_metaData = v47;

    if (v17->_metaData)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v50 = v17->_metaData;
      v51 = v37;
      if (isKindOfClass)
      {
        v52 = [(NSDictionary *)v50 objectForKey:@"bug_type"];
        v53 = v17->_bugType;
        v17->_bugType = v52;

        v41 = v46;
        if ((bOOLValue & 1) == 0)
        {
          v54 = v17->_filepath;
          v55 = v17->_bugType;
          v92 = v103.st_size;
          v56 = [optionsCopy objectForKeyedSubscript:@"<whitelist>"];
          LOBYTE(v55) = [v99 isFile:v54 validForSubmission:v55 reasonableSize:v92 to:routingCopy internalTypes:v56 result:&v104];

          v41 = v46;
          if ((v55 & 1) == 0)
          {
            v57 = v17->_metaData;
            v17->_metaData = 0;
          }
        }

LABEL_67:

        v37 = v51;
        goto LABEL_68;
      }
    }

    else
    {
      v51 = v37;
      v50 = 0;
    }

    v41 = v46;
    v17->_metaData = 0;

    if ((bOOLValue & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v78 = v17->_filepath;
        *buf = 138412546;
        v112 = v78;
        v113 = 2112;
        st_size = v95;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Logfile '%@' rejected for submission: bad metadata (or json error %@)", buf, 0x16u);
      }

      v104 = "rejected-metadata";
    }

    goto LABEL_67;
  }

  errorCopy2 = error;
  v27 = *v22;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v28 = configCopy;
    v29 = v17->_filepath;
    v30 = *__error();
    *buf = 138412546;
    v112 = v29;
    configCopy = v28;
    v113 = 1024;
    LODWORD(st_size) = v30;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Logfile '%@' failed to open (errno %d)", buf, 0x12u);
  }

  v104 = "rejected-fopen";
  if (!v17->_stream)
  {
    if (v27 == 2)
    {
      if (errorCopy2)
      {
        v31 = MEMORY[0x1E696ABC0];
        v106 = *MEMORY[0x1E696A578];
        v107 = @"File doesn't exist";
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
        *errorCopy2 = [v31 errorWithDomain:@"OSALog" code:1 userInfo:v32];
      }

      goto LABEL_85;
    }

    v58 = "rejected-fopen";
    v59 = errorCopy2;
LABEL_80:
    if (v59)
    {
      v86 = MEMORY[0x1E696ABC0];
      v108[0] = *MEMORY[0x1E696A578];
      v87 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v58];
      v108[1] = @"bug_type";
      v109[0] = v87;
      v88 = v17->_bugType;
      if (!v88)
      {
        v88 = @"<unknown>";
      }

      v109[1] = v88;
      v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:v108 count:2];
      *v59 = [v86 errorWithDomain:@"OSALog" code:2 userInfo:v89];

      v58 = v104;
    }

    [(OSALog *)v17 retire:v58];
LABEL_85:
    v85 = v17;
    v17 = 0;
LABEL_86:

    goto LABEL_87;
  }

LABEL_74:
  v79 = v17->_metaData;
  if (v79)
  {
    v80 = [(NSDictionary *)v79 objectForKeyedSubscript:@"incident_id"];

    if (!v80)
    {
      v81 = [(NSDictionary *)v17->_metaData mutableCopy];
      v82 = [(NSDictionary *)v17->_metaData objectForKeyedSubscript:@"incident_id"];

      if (!v82)
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];
        [(NSDictionary *)v81 setObject:uUIDString forKeyedSubscript:@"incident_id"];
      }

      v85 = v17->_metaData;
      v17->_metaData = v81;
      goto LABEL_86;
    }
  }

LABEL_87:

  return v17;
}

void __60__OSALog_initWithPath_forRouting_usingConfig_options_error___block_invoke()
{
  v2[9] = *MEMORY[0x1E69E9840];
  v2[0] = @"SubmissionPolicy";
  v2[1] = @"routing";
  v2[2] = @"urgent";
  v2[3] = @"Signature";
  v2[4] = @"LogType";
  v2[5] = @"dialog_displayed";
  v2[6] = @"ReopenPath";
  v2[7] = @"displayName";
  v2[8] = @"priority";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:9];
  v1 = initWithPath_forRouting_usingConfig_options_error__option_xattr_whitelist;
  initWithPath_forRouting_usingConfig_options_error__option_xattr_whitelist = v0;
}

- (OSALog)initWithPath:(id)path forRouting:(id)routing options:(id)options error:(id *)error
{
  optionsCopy = options;
  routingCopy = routing;
  pathCopy = path;
  v13 = +[OSASystemConfiguration sharedInstance];
  v14 = [(OSALog *)self initWithPath:pathCopy forRouting:routingCopy usingConfig:v13 options:optionsCopy error:error];

  return v14;
}

- (OSALog)initWithPath:(id)path forRouting:(id)routing options:(id)options
{
  optionsCopy = options;
  routingCopy = routing;
  pathCopy = path;
  v11 = +[OSASystemConfiguration sharedInstance];
  v12 = [(OSALog *)self initWithPath:pathCopy forRouting:routingCopy usingConfig:v11 options:optionsCopy error:0];

  return v12;
}

- (OSALog)initWithPath:(id)path options:(id)options error:(id *)error
{
  if (options)
  {
    pathCopy = path;
    v10 = [options mutableCopy];
  }

  else
  {
    pathCopy2 = path;
    v10 = objc_opt_new();
  }

  v12 = v10;
  [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"<exempt>"];
  v13 = [(OSALog *)self initWithPath:path forRouting:&stru_1F2411100 options:v12 error:error];

  return v13;
}

- (void)rename:(id)rename
{
  renameCopy = rename;
  if (renameCopy)
  {
    objc_storeStrong(&self->_filepath, rename);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [OSALog rename:];
  }
}

+ (id)logObjForBugType:(id)type
{
  typeCopy = type;
  if (typeCopy && ([&unk_1F241F200 containsObject:typeCopy] & 1) != 0)
  {
    v4 = +[OSASystemConfiguration sharedInstance];
    logDomain = [v4 logDomain];
  }

  else
  {
    logDomain = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  return logDomain;
}

- (OSALog)initWithType:(id)type filepath:(id)filepath metadata:(id)metadata options:(id)options at:(double)at error:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  filepathCopy = filepath;
  metadataCopy = metadata;
  optionsCopy = options;
  v49.receiver = self;
  v49.super_class = OSALog;
  v17 = [(OSALog *)&v49 init];
  if (!v17)
  {
    goto LABEL_22;
  }

  v46 = umask(0);
  objc_storeStrong(&v17->_filepath, filepath);
  v18 = [OSALog logObjForBugType:typeCopy];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v54 = typeCopy;
    v55 = 2114;
    v56 = filepathCopy;
    _os_log_impl(&dword_1AE4F7000, v18, OS_LOG_TYPE_DEFAULT, "creating type %{public}@ as %{public}@", buf, 0x16u);
  }

  v19 = filepathCopy;
  v20 = open_dprotected_np([filepathCopy UTF8String], 536873473, 4, 0, 432);
  if ((v20 & 0x80000000) == 0)
  {
    [OSASystemConfiguration ensureConformanceOfFile:v20 options:optionsCopy];
    v21 = +[OSASystemConfiguration sharedInstance];
    v22 = [v21 createReportMetadata:typeCopy with:metadataCopy at:optionsCopy usingOptions:at];
    metaData = v17->_metaData;
    v17->_metaData = v22;

    v24 = v17->_metaData;
    v52 = @"bug_type";
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
    v26 = [(NSDictionary *)v24 dictionaryWithValuesForKeys:v25];

    v27 = v17->_metaData;
    v48 = 0;
    v28 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v27 options:0 error:&v48];
    v29 = v48;
    v30 = v29;
    if (v28)
    {
      v45 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v20 closeOnDealloc:0];
      v31 = [optionsCopy objectForKeyedSubscript:@"alt-metadata"];
      v32 = v31 == 0;

      if (v32)
      {
        [v45 writeData:v28];
        v33 = [MEMORY[0x1E695DEF0] dataWithBytes:"\n" length:1];
        [v45 writeData:v33];
      }

      if ((v20 & 0x80000000) == 0)
      {
        [OSALog markDescriptor:v20 withPairs:v26 andOptions:optionsCopy];
        v17->_stream = fdopen(v20, "w");
        goto LABEL_20;
      }
    }

    else
    {
      if (error)
      {
        v40 = v29;
        *error = v30;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v54 = 0;
        v55 = 2114;
        v56 = v30;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Error while serializing ips metadata %{public}@. Error: %{public}@", buf, 0x16u);
      }

      close(v20);
    }

    v41 = filepathCopy;
    unlink([filepathCopy UTF8String]);
    goto LABEL_20;
  }

  v34 = *__error();
  v35 = __error();
  v36 = strerror(*v35);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v54 = filepathCopy;
    v55 = 2082;
    v56 = v36;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Error creating file %{public}@, %{public}s", buf, 0x16u);
  }

  if (!error)
  {
    goto LABEL_21;
  }

  v37 = objc_alloc(MEMORY[0x1E696ABC0]);
  v50[0] = *MEMORY[0x1E696A578];
  v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v36];
  v50[1] = @"errno";
  v51[0] = v26;
  v38 = [MEMORY[0x1E696AD98] numberWithInt:v34];
  v51[1] = v38;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];
  *error = [v37 initWithDomain:@"OSALog" code:13 userInfo:v39];

LABEL_20:
LABEL_21:
  umask(v46);
LABEL_22:
  if (v17->_stream)
  {
    v42 = v17;
  }

  else
  {
    v42 = 0;
  }

  v43 = v42;

  return v43;
}

- (OSALog)initWithFilepath:(id)filepath type:(id)type
{
  filepathCopy = filepath;
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = OSALog;
  v9 = [(OSALog *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bugType, type);
    objc_storeStrong(&v10->_filepath, filepath);
  }

  return v10;
}

+ (void)markPurgeableLevel:(unint64_t)level path:(id)path
{
  levelCopy = level;
  pathCopy = path;
  if (fsctl([pathCopy fileSystemRepresentation], 0xC0084A44uLL, &levelCopy, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [OSALog markPurgeableLevel:pathCopy path:?];
  }
}

+ (BOOL)randomlySelectForRetention:(id)retention
{
  retentionCopy = retention;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (randomlySelectForRetention__onceToken != -1)
  {
    +[OSALog randomlySelectForRetention:];
  }

  v4 = randomlySelectForRetention__logRetentionCountQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__OSALog_randomlySelectForRetention___block_invoke_2;
  v7[3] = &unk_1E7A27698;
  v8 = retentionCopy;
  v9 = &v10;
  v5 = retentionCopy;
  dispatch_sync(v4, v7);
  LOBYTE(v4) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v4;
}

uint64_t __37__OSALog_randomlySelectForRetention___block_invoke()
{
  randomlySelectForRetention__logRetentionCountQueue = dispatch_queue_create("com.apple.osanalytics.logRetentionCount", 0);

  return MEMORY[0x1EEE66BB8]();
}

void __37__OSALog_randomlySelectForRetention___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [[OSADateCounter alloc] initWithIdentifier:@"logLimit_309"];
  if ([*(a1 + 32) isEqualToString:@"309"])
  {
    if ([(OSADateCounter *)v2 count]<= 0x31 && OSARandomSelection(0x1F4uLL, @"logLimitRate_309"))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [(OSADateCounter *)v2 increment];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(a1 + 32);
        v4 = 138543362;
        v5 = v3;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Retaining additional log with bug type %{public}@", &v4, 0xCu);
      }
    }
  }
}

+ (id)locallyCreateForSubmission:(id)submission metadata:(id)metadata options:(id)options error:(id *)error writing:(id)writing
{
  v135[1] = *MEMORY[0x1E69E9840];
  submissionCopy = submission;
  metadataCopy = metadata;
  optionsCopy = options;
  writingCopy = writing;
  v118 = 0;
  v119 = &v118;
  v120 = 0x3032000000;
  v121 = __Block_byref_object_copy__4;
  v122 = __Block_byref_object_dispose__4;
  v123 = 0;
  v112 = 0;
  v113 = &v112;
  v114 = 0x3032000000;
  v115 = __Block_byref_object_copy__4;
  v116 = __Block_byref_object_dispose__4;
  v117 = 0;
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__4;
  v110 = __Block_byref_object_dispose__4;
  v111 = @"Undescribed error";
  v12 = [optionsCopy objectForKeyedSubscript:@"LogType"];
  if (![v12 length])
  {
    v13 = submissionCopy;

    v12 = v13;
  }

  v104 = 0;
  v105 = 0;
  v101 = 0;
  v102 = &v101;
  v103 = 0x2020000000;
  v14 = [optionsCopy objectForKeyedSubscript:@"override-filePath"];

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults addSuiteNamed:@"com.apple.osanalytics.factoryproxysync"];
  if (OSAIsConfiguredRSDDevice() && [standardUserDefaults BOOLForKey:@"disableLogLimits"])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      +[OSALog locallyCreateForSubmission:metadata:options:error:writing:];
    }

    goto LABEL_8;
  }

  if (v14)
  {
LABEL_8:
    v16 = 1;
LABEL_13:
    v21 = metadataCopy;
    v22 = [v21 objectForKeyedSubscript:@"roots_installed"];
    v23 = v22 == 0;

    if (v23)
    {
      v25 = +[OSALog additionalRootsInstalled];
      if (v25)
      {
        v24 = [v21 mutableCopy];
        [v24 addEntriesFromDictionary:v25];
      }

      else
      {
        v24 = v21;
      }
    }

    else
    {
      v24 = v21;
    }

    v26 = +[OSASystemConfiguration sharedInstance];
    isInDeviceRecoveryEnvironment = [v26 isInDeviceRecoveryEnvironment];

    if (isInDeviceRecoveryEnvironment)
    {
      v28 = [v24 mutableCopy];
      v29 = +[OSASystemConfiguration sharedInstance];
      recoveryModeReason = [v29 recoveryModeReason];
      [v28 setObject:recoveryModeReason forKeyedSubscript:@"device_in_recovery_mode_with_reason"];
    }

    else
    {
      v28 = v24;
    }

    v31 = [optionsCopy objectForKeyedSubscript:@"capture-time"];
    [v31 doubleValue];
    v33 = v32;

    v34 = +[OSASystemConfiguration sharedInstance];
    v35 = [v34 logPathForType:submissionCopy at:optionsCopy options:v33];

    if (v35)
    {
      v36 = [optionsCopy objectForKeyedSubscript:@"move-file"];
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __68__OSALog_locallyCreateForSubmission_metadata_options_error_writing___block_invoke;
      v85[3] = &unk_1E7A276C0;
      v37 = v36;
      v86 = v37;
      v87 = v35;
      v93 = &v118;
      v88 = submissionCopy;
      v89 = v28;
      v90 = optionsCopy;
      v97 = v33;
      v92 = writingCopy;
      v94 = &v106;
      v99 = v16;
      v95 = &v112;
      v96 = &v101;
      v91 = v12;
      v98 = v105;
      __68__OSALog_locallyCreateForSubmission_metadata_options_error_writing___block_invoke(v85);

      v38 = v86;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v129 = submissionCopy;
        v130 = 2112;
        v131 = v12;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Report of type '%{public}@(%@)' not saved because the destination is unavailable", buf, 0x16u);
      }

      v39 = v107[5];
      v107[5] = @"Destination unavailable";

      v40 = MEMORY[0x1E696ABC0];
      v41 = v107[5];
      v134 = *MEMORY[0x1E696A578];
      v135[0] = v41;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v135 forKeys:&v134 count:1];
      v42 = [v40 errorWithDomain:@"OSALog" code:5 userInfo:v37];
      v38 = v113[5];
      v113[5] = v42;
    }

    goto LABEL_28;
  }

  v17 = +[OSALogTrackerObject sharedTrackers];
  v18 = (v107 + 5);
  obj = v107[5];
  v19 = [v17 osa_logTracker_isLog:submissionCopy byKey:v12 count:v102 + 3 withinLimit:&v105 withOptions:optionsCopy errorDescription:&obj];
  objc_storeStrong(v18, obj);
  if (v19)
  {

LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  v20 = [OSALog randomlySelectForRetention:submissionCopy];

  if (v20)
  {
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v129 = submissionCopy;
    v130 = 2112;
    v131 = v12;
    v132 = 2048;
    v133 = v105;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Report of type '%{public}@(%@)' not saved because the limit of %lu logs has been reached", buf, 0x20u);
  }

  v73 = MEMORY[0x1E696ABC0];
  v74 = v107[5];
  v126 = *MEMORY[0x1E696A578];
  v127 = v74;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
  v75 = [v73 errorWithDomain:@"OSALog" code:4 userInfo:v28];
  v35 = v113[5];
  v113[5] = v75;
LABEL_28:

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:submissionCopy forKeyedSubscript:@"bug_type"];
  v44 = [MEMORY[0x1E696AD98] numberWithInt:v107[5] == 0];
  [dictionary setObject:v44 forKeyedSubscript:@"saved"];

  v45 = v113[5];
  if (v45)
  {
    userInfo = [v45 userInfo];
    v47 = [userInfo objectForKeyedSubscript:@"errno"];
    intValue = [v47 intValue];

    v49 = MEMORY[0x1E696AEC0];
    v50 = v107[5];
    domain = [v113[5] domain];
    v52 = [v49 stringWithFormat:@"%@ (%@:%ld:%d)", v50, domain, objc_msgSend(v113[5], "code"), intValue];
    [dictionary setObject:v52 forKeyedSubscript:@"error"];

    if (intValue)
    {
      userInfo2 = [v113[5] userInfo];
      v54 = [userInfo2 objectForKeyedSubscript:@"errno"];
      [dictionary setObject:v54 forKeyedSubscript:@"errno"];
    }
  }

  else
  {
    [dictionary setObject:v107[5] forKeyedSubscript:@"error"];
  }

  AnalyticsSendEvent();
  if ([(__CFString *)submissionCopy isEqualToString:@"211"])
  {
    [OSAStateMonitor recordEvent:@"ca-log-written"];
    if (v107[5])
    {
      v124[0] = @"crk";
      v55 = +[OSASystemConfiguration sharedInstance];
      crashReporterKey = [v55 crashReporterKey];
      v57 = crashReporterKey;
      if (submissionCopy)
      {
        v58 = submissionCopy;
      }

      else
      {
        v58 = @"<unknown>";
      }

      v125[0] = crashReporterKey;
      v125[1] = v58;
      v124[1] = @"bug_type";
      v124[2] = @"error";
      v59 = [dictionary objectForKeyedSubscript:?];
      v60 = v59;
      if (v59)
      {
        v61 = v59;
      }

      else
      {
        v61 = @"<unknown>";
      }

      v125[2] = v61;
      v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v125 forKeys:v124 count:3];
      rtcsc_send(2003, 2003, v62);
    }
  }

  if (+[OSALog isDataVaultEnabled])
  {
    lastPathComponent = [optionsCopy objectForKeyedSubscript:@"datavault-filePath"];
    if (![lastPathComponent BOOLValue] || v107[5])
    {
LABEL_53:

      goto LABEL_54;
    }

    filepath = [v119[5] filepath];
    v65 = filepath == 0;

    if (!v65)
    {
      filepath2 = [v119[5] filepath];
      lastPathComponent = [filepath2 lastPathComponent];

      v67 = +[OSASystemConfiguration sharedInstance];
      pathSubmission = [v67 pathSubmission];
      v69 = [pathSubmission stringByAppendingPathComponent:lastPathComponent];

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      filepath3 = [v119[5] filepath];
      v84 = 0;
      v72 = [defaultManager copyItemAtPath:filepath3 toPath:v69 error:&v84];
      v80 = v84;

      if (v72)
      {
        [OSALog markFile:v69 withKey:"DoNotSubmit" value:"1"];
        [v119[5] setOldFilePath:v69];
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        +[OSALog locallyCreateForSubmission:metadata:options:error:writing:];
      }

      filepath4 = [v119[5] filepath];
      [OSALog markPurgeableLevel:98308 path:filepath4];

      goto LABEL_53;
    }
  }

LABEL_54:
  if (error)
  {
    v77 = v113[5];
    if (v77)
    {
      *error = v77;
    }
  }

  v78 = v119[5];

  _Block_object_dispose(&v101, 8);
  _Block_object_dispose(&v106, 8);

  _Block_object_dispose(&v112, 8);
  _Block_object_dispose(&v118, 8);

  return v78;
}

void __68__OSALog_locallyCreateForSubmission_metadata_options_error_writing___block_invoke(uint64_t a1)
{
  v97[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v2 = *(a1 + 32);
      *buf = 138543362;
      v85 = v2;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Moving source file '%{public}@' into submission directory", buf, 0xCu);
    }

    v3 = fopen([*(a1 + 32) fileSystemRepresentation], "r");
    if (v3)
    {
      v4 = v3;
      [OSASystemConfiguration ensureConformanceOfFile:fileno(v3) options:*(a1 + 64)];
      [OSALog markDescriptor:fileno(v4) withPairs:*(a1 + 56) andOptions:*(a1 + 64)];
      fclose(v4);
      v5 = [[OSALog alloc] initWithFilepath:*(a1 + 32) type:*(a1 + 48)];
      v6 = *(*(a1 + 88) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      if (*(*(*(a1 + 88) + 8) + 40))
      {
        goto LABEL_18;
      }

      v8 = *(*(a1 + 96) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = @"Unable to access log from existing file";

      v10 = MEMORY[0x1E696ABC0];
      v11 = *(*(*(a1 + 96) + 8) + 40);
      v96 = *MEMORY[0x1E696A578];
      v97[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:&v96 count:1];
      v13 = [v10 errorWithDomain:@"OSALog" code:6 userInfo:v12];
      v14 = *(*(a1 + 104) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }

    else
    {
      v32 = MEMORY[0x1E696AEC0];
      v33 = *(a1 + 32);
      v34 = *__error();
      v35 = __error();
      v12 = [v32 stringWithFormat:@"Unable to open file '%@': [%d] %s", v33, v34, strerror(*v35)];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v85 = v12;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      v36 = *(*(a1 + 96) + 8);
      v37 = *(v36 + 40);
      *(v36 + 40) = @"Unable to open file";

      v38 = MEMORY[0x1E696ABC0];
      v94 = *MEMORY[0x1E696A578];
      v95 = v12;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
      v39 = [v38 errorWithDomain:@"OSALog" code:3 userInfo:v15];
      v40 = *(*(a1 + 104) + 8);
      v41 = *(v40 + 40);
      *(v40 + 40) = v39;
    }
  }

  else
  {
    v16 = [*(a1 + 40) stringByDeletingLastPathComponent];
    v17 = [*(a1 + 40) lastPathComponent];
    v18 = [@"." stringByAppendingString:v17];
    v12 = [v16 stringByAppendingPathComponent:v18];

    v19 = [OSALog alloc];
    v20 = *(a1 + 48);
    v21 = *(a1 + 56);
    v22 = *(a1 + 64);
    v23 = *(a1 + 120);
    v81 = 0;
    v24 = [(OSALog *)v19 initWithType:v20 filepath:v12 metadata:v21 options:v22 at:&v81 error:v23];
    v25 = v81;
    v26 = *(*(a1 + 88) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v24;

    v28 = *(*(*(a1 + 88) + 8) + 40);
    if (v28)
    {
      v29 = *(a1 + 80);
      v30 = fileno([v28 stream]);
      v80 = v25;
      v31 = (*(v29 + 16))(v29, v30, &v80);
      v15 = v80;

      if (v31)
      {
        [*(*(*(a1 + 88) + 8) + 40) closeFileStream];
      }

      else
      {
        unlink([v12 UTF8String]);
        v42 = *(*(a1 + 88) + 8);
        v43 = *(v42 + 40);
        *(v42 + 40) = 0;
      }
    }

    else
    {
      v15 = v25;
    }

    if (!*(*(*(a1 + 88) + 8) + 40))
    {
      v44 = *(*(a1 + 96) + 8);
      v45 = *(v44 + 40);
      *(v44 + 40) = @"Unable to create a new log file";

      objc_storeStrong((*(*(a1 + 104) + 8) + 40), v15);
    }
  }

LABEL_18:
  v46 = a1 + 88;
  if (*(*(*(a1 + 88) + 8) + 40))
  {
    if (*(a1 + 32))
    {
      v47 = [MEMORY[0x1E696AC08] defaultManager];
      v48 = [*(*(*(a1 + 88) + 8) + 40) filepath];
      v49 = *(a1 + 40);
      v78 = 0;
      v50 = [v47 moveItemAtPath:v48 toPath:v49 error:&v78];
      v51 = v78;

      if (v50)
      {
LABEL_21:
        [*(*(*(a1 + 88) + 8) + 40) rename:*(a1 + 40)];
        if ((*(a1 + 136) & 1) == 0)
        {
          ++*(*(*(a1 + 112) + 8) + 24);
          v52 = +[OSALogTrackerObject sharedTrackers];
          v53 = *(a1 + 72);
          v54 = [*(a1 + 64) objectForKeyedSubscript:@"Signature"];
          [v52 osa_logTracker_incrementForSubtype:v53 signature:v54 filepath:{objc_msgSend(*(a1 + 40), "fileSystemRepresentation")}];
        }

        v55 = [*(a1 + 64) objectForKeyedSubscript:@"optinOverride"];
        v56 = [v55 BOOLValue];

        if (v56)
        {
          v57 = [*(*(*v46 + 8) + 40) filepath];
          [OSALog markFile:v57 withKey:"DnUOverride" value:"1"];
        }

        [OSABridgeLinkProxy transfer:*(a1 + 40) key:*(a1 + 72)];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v58 = *(a1 + 72);
          v59 = *(*(*(a1 + 112) + 8) + 24);
          v60 = *(a1 + 128);
          v62 = *(a1 + 40);
          v61 = *(a1 + 48);
          *buf = 138544386;
          v85 = v61;
          v86 = 2112;
          v87 = v58;
          v88 = 2048;
          v89 = v59;
          v90 = 2048;
          v91 = v60;
          v92 = 2114;
          v93 = v62;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Saved type '%{public}@(%@)' report (%lu of max %lu) at %{public}@", buf, 0x34u);
        }

        v63 = 0;
        v46 = a1 + 96;
        goto LABEL_36;
      }
    }

    else
    {
      v68 = objc_alloc(MEMORY[0x1E695DFF8]);
      v69 = [*(*(*(a1 + 88) + 8) + 40) filepath];
      v70 = [v68 initWithString:v69];
      v71 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:*(a1 + 40)];
      v79 = 0;
      v72 = OSASafeMoveItemAtURL(v70, v71, &v79);
      v51 = v79;

      if (v72)
      {
        goto LABEL_21;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v73 = [*(*(*v46 + 8) + 40) filepath];
      *buf = 138543618;
      v85 = v73;
      v86 = 2114;
      v87 = v51;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to move tmp file '%{public}@': %{public}@", buf, 0x16u);
    }

    v74 = *(*(a1 + 96) + 8);
    v75 = *(v74 + 40);
    *(v74 + 40) = @"Unable to move tmp file";

    objc_storeStrong((*(*(a1 + 104) + 8) + 40), v51);
    v63 = 0;
    goto LABEL_36;
  }

  v64 = *(*(a1 + 96) + 8);
  if (!*(v64 + 40))
  {
    *(v64 + 40) = @"Failed to create log";
  }

  v66 = *(a1 + 104);
  v65 = a1 + 104;
  if (!*(*(v66 + 8) + 40))
  {
    v67 = MEMORY[0x1E696ABC0];
    v82 = *MEMORY[0x1E696A578];
    v83 = @"datawriter returned with negative response";
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    v63 = [v67 errorWithDomain:@"OSALog" code:14 userInfo:v51];
    v46 = v65;
LABEL_36:
    v76 = *(*v46 + 8);
    v77 = *(v76 + 40);
    *(v76 + 40) = v63;
  }
}

+ (id)createForSubmission:(id)submission metadata:(id)metadata options:(id)options error:(id *)error writing:(id)writing
{
  v119 = *MEMORY[0x1E69E9840];
  submissionCopy = submission;
  metadataCopy = metadata;
  optionsCopy = options;
  writingCopy = writing;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v66 = MEMORY[0x1B2703360](writingCopy);
    v67 = NSUserName();
    *v116 = 138413314;
    *&v116[4] = submissionCopy;
    *&v116[12] = 2112;
    *&v116[14] = metadataCopy;
    *&v116[22] = 2112;
    v117 = optionsCopy;
    *v118 = 2048;
    *&v118[2] = v66;
    *&v118[10] = 2112;
    *&v118[12] = v67;
    _os_log_debug_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "createForSubmission: %@ metadata: %@ options: %@ block: %p (by %@)", v116, 0x34u);
  }

  if (optionsCopy)
  {
    v13 = [optionsCopy mutableCopy];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v15 = objc_opt_new();
  if (metadataCopy)
  {
    v16 = [optionsCopy objectForKeyedSubscript:@"nestedMetadata"];
    bOOLValue = [v16 BOOLValue];

    if (bOOLValue)
    {
      [v15 setObject:metadataCopy forKeyedSubscript:@"custom_headers"];
    }

    else
    {
      [v15 addEntriesFromDictionary:metadataCopy];
    }
  }

  v18 = [optionsCopy objectForKeyedSubscript:@"capture-time"];
  v19 = v18 == 0;

  if (v19)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:CFAbsoluteTimeGetCurrent()];
    [v14 setObject:v20 forKeyedSubscript:@"capture-time"];
  }

  v21 = [metadataCopy objectForKeyedSubscript:@"incident_id"];
  v22 = v21 == 0;

  if (v22)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [v15 setObject:uUIDString forKeyedSubscript:@"incident_id"];
  }

  v25 = [optionsCopy objectForKeyedSubscript:@"LogType"];
  v26 = [v25 length] == 0;

  if (v26)
  {
    [v14 setObject:submissionCopy forKeyedSubscript:@"LogType"];
  }

  v27 = geteuid();
  if (v27 >= 0x1F4)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v27];
    [v14 setObject:v28 forKeyedSubscript:@"file-owner-uid"];
  }

  v29 = [optionsCopy objectForKeyedSubscript:@"observer_info"];
  v30 = v29 == 0;

  if (v30)
  {
    v31 = [MEMORY[0x1E695DF90] dictionaryWithObject:submissionCopy forKey:@"bug_type"];
    [v14 setObject:v31 forKeyedSubscript:@"observer_info"];
  }

  else
  {
    v31 = [v14 objectForKeyedSubscript:@"observer_info"];
    [v31 setObject:submissionCopy forKeyedSubscript:@"bug_type"];
  }

  v32 = +[OSASystemConfiguration sharedInstance];
  v33 = [v32 usesLegacySubmission:submissionCopy];

  if (v33)
  {
    [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"alt-metadata"];
  }

  if (+[OSALog isDataVaultEnabled](OSALog, "isDataVaultEnabled") && [submissionCopy isEqualToString:@"309"])
  {
    [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"datavault-filePath"];
  }

  *v116 = 0;
  *&v116[8] = v116;
  *&v116[16] = 0x3032000000;
  v117 = __Block_byref_object_copy__4;
  *v118 = __Block_byref_object_dispose__4;
  *&v118[8] = 0;
  v34 = [optionsCopy objectForKeyedSubscript:@"override-filePath"];

  if (!v34)
  {
    context = objc_autoreleasePoolPush();
    mach_service = xpc_connection_create_mach_service("com.apple.osanalytics.osanalyticshelper", 0, 2uLL);
    connection = mach_service;
    if (!mach_service)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        +[OSALog createForSubmission:metadata:options:error:writing:];
      }

      v57 = MEMORY[0x1E696ABC0];
      v103 = *MEMORY[0x1E696A578];
      v104 = @"Couldn't get XPC connection";
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
      v59 = [v57 errorWithDomain:@"OSALog" code:17 userInfo:v58];
      v93 = v58;
      v38 = 0;
      v60 = *(*&v116[8] + 40);
      *(*&v116[8] + 40) = v59;
      goto LABEL_106;
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __61__OSALog_createForSubmission_metadata_options_error_writing___block_invoke_284;
    handler[3] = &unk_1E7A27258;
    handler[4] = v116;
    xpc_connection_set_event_handler(mach_service, handler);
    v42 = xpc_connection_create(0, 0);
    v93 = v42;
    if (!v42)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v115 = 0;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Couldn't config private XPC connection", v115, 2u);
      }

      v62 = MEMORY[0x1E696ABC0];
      v105 = *MEMORY[0x1E696A578];
      v106 = @"Couldn't config private XPC connection";
      v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
      v64 = [v62 errorWithDomain:@"OSALog" code:16 userInfo:v63];
      v65 = *(*&v116[8] + 40);
      *(*&v116[8] + 40) = v64;

      v38 = 0;
      goto LABEL_98;
    }

    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = __61__OSALog_createForSubmission_metadata_options_error_writing___block_invoke_289;
    v97[3] = &unk_1E7A27738;
    v98 = writingCopy;
    xpc_connection_set_event_handler(v42, v97);
    value = xpc_endpoint_create(v42);
    xpc_connection_resume(v42);
    xpc_connection_resume(connection);
    v43 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v43, "datawriter_endpoint", value);
    memset(v115, 0, sizeof(v115));
    v44 = getprogname();
    if (!v44)
    {
      v45 = getpid();
      v44 = v115;
      __sprintf_chk(v115, 0, 0x20uLL, "%d", v45);
    }

    xpc_dictionary_set_string(v43, "caller", v44);
    xpc_dictionary_set_uint64(v43, "operation", 6uLL);
    uTF8String = [@"bug_type" UTF8String];
    v47 = submissionCopy;
    xpc_dictionary_set_string(v43, uTF8String, [submissionCopy UTF8String]);
    if ([v15 count])
    {
      v48 = ns2xpc(v15);
      xpc_dictionary_set_value(v43, "additionalHeaders", v48);
    }

    if ([v14 count])
    {
      v49 = ns2xpc(v14);
      xpc_dictionary_set_value(v43, "options", v49);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v114 = submissionCopy;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "C1. request '%@' report service via XPC/osanalyticshelper", buf, 0xCu);
    }

    v50 = xpc_connection_send_message_with_reply_sync(connection, v43);
    v51 = v50;
    if (v50)
    {
      if (xpc_dictionary_get_BOOL(v50, "result"))
      {
        xdict = v51;
        string = xpc_dictionary_get_string(v51, "filePath");
        if (string)
        {
          v53 = [OSALog alloc];
          v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
          v38 = [(OSALog *)v53 initWithFilepath:v54 type:submissionCopy];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v114 = string;
            _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "C6. report request completed: %s", buf, 0xCu);
          }

          v51 = xdict;
          v55 = xpc_dictionary_get_string(xdict, "oldFilePath");
          if (!v55)
          {
            goto LABEL_97;
          }

          v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v55];
          [(OSALog *)v38 setOldFilePath:v56];
          goto LABEL_96;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          +[OSALog createForSubmission:metadata:options:error:writing:];
        }

        v51 = xdict;
        if (!*(*&v116[8] + 40))
        {
          v75 = MEMORY[0x1E696ABC0];
          v111 = *MEMORY[0x1E696A578];
          v112 = @"Incomplete XPC result -- no filename";
          v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
          v69 = [v75 errorWithDomain:@"OSALog" code:7 userInfo:v56];
          goto LABEL_81;
        }
      }

      else
      {
        if (v51 == MEMORY[0x1E69E9E20] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          +[OSALog createForSubmission:metadata:options:error:writing:];
        }

        v70 = MEMORY[0x1B2703A40](v51);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v114 = v70;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "XPC Response: '%s'", buf, 0xCu);
        }

        if (v70)
        {
          free(v70);
        }

        uTF8String2 = xpc_dictionary_get_string(v51, "error_desc");
        if (!uTF8String2)
        {
          v72 = *(*&v116[8] + 40);
          if (v72)
          {
            localizedDescription = [v72 localizedDescription];
            v74 = localizedDescription;
            uTF8String2 = [localizedDescription UTF8String];
          }

          else
          {
            uTF8String2 = 0;
          }
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v114 = uTF8String2;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "C6. report request failed: %s", buf, 0xCu);
        }

        if (!*(*&v116[8] + 40))
        {
          xdicta = xpc_dictionary_get_string(v51, "error_domain");
          uint64 = xpc_dictionary_get_uint64(v51, "error_code");
          v87 = MEMORY[0x1E696ABC0];
          if (xdicta)
          {
            v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
          }

          else
          {
            v56 = @"OSALog";
          }

          v109 = *MEMORY[0x1E696A578];
          if (uTF8String2)
          {
            v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:uTF8String2];
          }

          else
          {
            v77 = @"<unknown>";
          }

          v86 = v77;
          v110 = v77;
          v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
          v79 = [v87 errorWithDomain:v56 code:uint64 userInfo:v78];
          v80 = *(*&v116[8] + 40);
          *(*&v116[8] + 40) = v79;

          if (uTF8String2)
          {
          }

          v38 = 0;
          if (!xdicta)
          {
            goto LABEL_97;
          }

          goto LABEL_96;
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Invalid XPC response", buf, 2u);
      }

      if (!*(*&v116[8] + 40))
      {
        v68 = MEMORY[0x1E696ABC0];
        v107 = *MEMORY[0x1E696A578];
        v108 = @"Invalid XPC response";
        v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
        v69 = [v68 errorWithDomain:@"OSALog" code:15 userInfo:v56];
        xdict = 0;
LABEL_81:
        v76 = *(*&v116[8] + 40);
        *(*&v116[8] + 40) = v69;

        v38 = 0;
        v51 = xdict;
LABEL_96:

        goto LABEL_97;
      }
    }

    v38 = 0;
LABEL_97:

    v63 = v98;
LABEL_98:

    v60 = [OSALog logObjForBugType:submissionCopy];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      if (v38)
      {
        v81 = @"success";
      }

      else
      {
        v81 = @"FAILED";
      }

      if (*(*&v116[8] + 40))
      {
        [*(*&v116[8] + 40) localizedDescription];
      }

      else
      {
        [(OSALog *)v38 filepath];
      }
      v82 = ;
      *v115 = 138543874;
      *&v115[4] = submissionCopy;
      *&v115[12] = 2112;
      *&v115[14] = v81;
      *&v115[22] = 2114;
      *&v115[24] = v82;
      _os_log_impl(&dword_1AE4F7000, v60, OS_LOG_TYPE_DEFAULT, "client log create type %{public}@ result %@: %{public}@", v115, 0x20u);
    }

LABEL_106:

    objc_autoreleasePoolPop(context);
    goto LABEL_107;
  }

  v35 = [v14 objectForKeyedSubscript:@"optinOverride"];
  bOOLValue2 = [v35 BOOLValue];

  if (bOOLValue2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[OSALog createForSubmission:metadata:options:error:writing:];
    }

    [v14 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"optinOverride"];
  }

  v37 = *&v116[8];
  obj = *(*&v116[8] + 40);
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __61__OSALog_createForSubmission_metadata_options_error_writing___block_invoke;
  v100[3] = &unk_1E7A276E8;
  v101 = writingCopy;
  v38 = [OSALog locallyCreateForSubmission:submissionCopy metadata:v15 options:v14 error:&obj writing:v100];
  objc_storeStrong((v37 + 40), obj);
  v39 = [OSALog logObjForBugType:submissionCopy];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    if (v38)
    {
      v40 = @"success";
    }

    else
    {
      v40 = @"FAILED";
    }

    if (*(*&v116[8] + 40))
    {
      [*(*&v116[8] + 40) localizedDescription];
    }

    else
    {
      [(OSALog *)v38 filepath];
    }
    v61 = ;
    *v115 = 138543874;
    *&v115[4] = submissionCopy;
    *&v115[12] = 2112;
    *&v115[14] = v40;
    *&v115[22] = 2114;
    *&v115[24] = v61;
    _os_log_impl(&dword_1AE4F7000, v39, OS_LOG_TYPE_DEFAULT, "local log create type %{public}@ result %@: %{public}@", v115, 0x20u);
  }

LABEL_107:
  if (error)
  {
    v83 = *(*&v116[8] + 40);
    if (v83)
    {
      *error = v83;
    }
  }

  v84 = v38;
  _Block_object_dispose(v116, 8);

  return v84;
}

uint64_t __61__OSALog_createForSubmission_metadata_options_error_writing___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:a2];
    (*(v2 + 16))(v2, v3);
  }

  return 1;
}

void __61__OSALog_createForSubmission_metadata_options_error_writing___block_invoke_284(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 != MEMORY[0x1E69E9E18] && MEMORY[0x1B2703B90](v3) == MEMORY[0x1E69E9E98])
  {
    string = xpc_dictionary_get_string(v4, *MEMORY[0x1E69E9E28]);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "com.apple.osanalytics.osanalyticshelper";
      v16 = 2080;
      v17 = string;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Got xpc error message from %s: %s\n", buf, 0x16u);
    }

    v6 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"XPC Error: %s", string];
    v13 = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v9 = [v6 errorWithDomain:@"OSALog" code:8 userInfo:v8];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void __61__OSALog_createForSubmission_metadata_options_error_writing___block_invoke_289(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x1B2703B90]() == MEMORY[0x1E69E9E68])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "C3. private back-channel connection established", buf, 2u);
    }

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __61__OSALog_createForSubmission_metadata_options_error_writing___block_invoke_290;
    v5[3] = &unk_1E7A27710;
    v7 = *(a1 + 32);
    v4 = v3;
    v6 = v4;
    xpc_connection_set_event_handler(v4, v5);
    xpc_connection_resume(v4);
  }
}

void __61__OSALog_createForSubmission_metadata_options_error_writing___block_invoke_290(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MEMORY[0x1B2703B90]() == MEMORY[0x1E69E9E80])
  {
    reply = xpc_dictionary_create_reply(v3);
    if (reply)
    {
      v5 = xpc_dictionary_dup_fd(v3, "fileDesc");
      if (v5)
      {
        v6 = v5;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          v10 = 67109120;
          v11 = v6;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "C4. write payload using file descriptor (%d)", &v10, 8u);
        }

        v7 = *(a1 + 40);
        if (v7)
        {
          v8 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v6];
          (*(v7 + 16))(v7, v8);
        }

        v9 = 1;
        close(v6);
      }

      else
      {
        v9 = 0;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v10 = 67109120;
          v11 = 0;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "C4. ERROR no file descriptor (%d)", &v10, 8u);
          v9 = 0;
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v10 = 67109120;
        v11 = v9;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "C5. payload writing complete, return status %d", &v10, 8u);
      }

      xpc_dictionary_set_BOOL(reply, "result", v9);
      xpc_connection_send_message(*(a1 + 32), reply);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "C4. ERROR Unable to reply", &v10, 2u);
    }
  }
}

- (BOOL)isReasonableSize:(int64_t)size forRouting:(id)routing
{
  v6 = [(NSString *)self->_filepath lastPathComponent:size];
  if ([v6 hasSuffix:@".pll.anon"])
  {
  }

  else
  {
    v7 = [(NSString *)self->_filepath hasSuffix:@".mss.anon"];

    if (!v7)
    {
      v8 = 0x100000;
      return v8 >= size;
    }
  }

  v8 = 104857600;
  return v8 >= size;
}

- (void)markWithKey:(const char *)key value:(const char *)value
{
  uTF8String = [(NSString *)self->_filepath UTF8String];
  v7 = strlen(value);
  if (setxattr(uTF8String, key, value, v7 + 1, 0, 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [OSALog markWithKey:value:];
    }
  }
}

+ (void)markFile:(id)file withKey:(const char *)key value:(const char *)value
{
  fileCopy = file;
  uTF8String = [fileCopy UTF8String];
  v9 = strlen(value);
  if (setxattr(uTF8String, key, value, v9 + 1, 0, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[OSALog markFile:withKey:value:];
  }
}

+ (void)markDescriptor:(int)descriptor forKey:(id)key withObj:(id)obj
{
  v22 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  objCopy = obj;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uTF8String = [objCopy UTF8String];
    bytes = uTF8String;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bytes = [objCopy bytes];
      v11 = [objCopy length];
      goto LABEL_6;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }

    stringValue = [objCopy stringValue];
    bytes = [stringValue UTF8String];

    uTF8String = bytes;
  }

  v11 = strlen(uTF8String);
LABEL_6:
  if (bytes && v11)
  {
    if (fsetxattr(descriptor, [keyCopy UTF8String], bytes, v11, 0, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *__error();
      v13 = __error();
      v14 = strerror(*v13);
      v16 = 138412802;
      v17 = keyCopy;
      v18 = 1024;
      v19 = v12;
      v20 = 2080;
      v21 = v14;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to set xattr '%@', errno=%d: %s", &v16, 0x1Cu);
    }

    goto LABEL_15;
  }

LABEL_13:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [OSALog markDescriptor:objCopy forKey:? withObj:?];
  }

LABEL_15:
}

+ (void)markDescriptor:(int)descriptor withPairs:(id)pairs andOptions:(id)options
{
  v7 = markDescriptor_withPairs_andOptions__onceToken;
  optionsCopy = options;
  pairsCopy = pairs;
  if (v7 != -1)
  {
    +[OSALog markDescriptor:withPairs:andOptions:];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__OSALog_markDescriptor_withPairs_andOptions___block_invoke_2;
  v12[3] = &__block_descriptor_36_e15_v32__0_8_16_B24l;
  descriptorCopy = descriptor;
  [pairsCopy enumerateKeysAndObjectsUsingBlock:v12];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__OSALog_markDescriptor_withPairs_andOptions___block_invoke_3;
  v10[3] = &__block_descriptor_36_e15_v32__0_8_16_B24l;
  descriptorCopy2 = descriptor;
  [optionsCopy enumerateKeysAndObjectsUsingBlock:v10];
}

void __46__OSALog_markDescriptor_withPairs_andOptions___block_invoke()
{
  v2[9] = *MEMORY[0x1E69E9840];
  v2[0] = @"SubmissionPolicy";
  v2[1] = @"routing";
  v2[2] = @"urgent";
  v2[3] = @"Signature";
  v2[4] = @"LogType";
  v2[5] = @"dialog_displayed";
  v2[6] = @"ReopenPath";
  v2[7] = @"displayName";
  v2[8] = @"priority";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:9];
  v1 = markDescriptor_withPairs_andOptions__option_xattr_whitelist;
  markDescriptor_withPairs_andOptions__option_xattr_whitelist = v0;
}

void __46__OSALog_markDescriptor_withPairs_andOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [OSALog markDescriptor:*(a1 + 32) forKey:v6 withObj:v5];
  }
}

void __46__OSALog_markDescriptor_withPairs_andOptions___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [markDescriptor_withPairs_andOptions__option_xattr_whitelist containsObject:v6])
  {
    [OSALog markDescriptor:*(a1 + 32) forKey:v6 withObj:v5];
  }
}

- (BOOL)retire:(const char *)retire
{
  v72 = *MEMORY[0x1E69E9840];
  p_filepath = &self->_filepath;
  filepath = self->_filepath;
  if (filepath)
  {
    v7 = [(NSString *)filepath copy];
    [(OSALog *)self closeFileStream];
    if (self->_preserveFiles)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v8 = *p_filepath;
        *buf = 136315394;
        retireCopy2 = retire;
        v66 = 2114;
        retireCopy3 = v8;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Sparing %s '%{public}@'", buf, 0x16u);
      }

      v9 = 0;
      LOBYTE(v10) = 1;
LABEL_48:

      return v10;
    }

    v53 = v7;
    if (self->_deleteOnRetire)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *p_filepath;
        *buf = 136315394;
        retireCopy2 = retire;
        v66 = 2114;
        retireCopy3 = v11;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Cleanup %s '%{public}@'", buf, 0x16u);
      }

      v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:*p_filepath];
      v57 = 0;
      v13 = OSASafeRemoveFileAtURL(v12, &v57);
      v9 = v57;

      if ((v13 & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [OSALog retire:];
        }

LABEL_31:
        v10 = 0;
        goto LABEL_32;
      }

      goto LABEL_28;
    }

    v14 = +[OSASystemConfiguration sharedInstance];
    if ([v14 appleInternal])
    {
      if ([(NSString *)*p_filepath hasSuffix:@"pll.anon"])
      {

        goto LABEL_25;
      }

      v22 = [(NSString *)*p_filepath hasSuffix:@"mss.anon"];

      if (v22)
      {
LABEL_25:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v23 = *p_filepath;
          *buf = 138543362;
          retireCopy2 = v23;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Auto deletion of '%{public}@'", buf, 0xCu);
        }

        v24 = [MEMORY[0x1E695DFF8] fileURLWithPath:*p_filepath];
        v56 = 0;
        v25 = OSASafeRemoveFileAtURL(v24, &v56);
        v9 = v56;

        if ((v25 & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [OSALog retire:];
          }

          goto LABEL_31;
        }

LABEL_28:
        v10 = 1;
LABEL_32:
        v26 = [OSALog logObjForBugType:self->_bugType];
        v27 = @"<unknown>";
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          bugType = self->_bugType;
          if (!bugType)
          {
            bugType = @"<unknown>";
          }

          v29 = "failed";
          v30 = self->_filepath;
          *buf = 138544130;
          if (v10)
          {
            v29 = "success";
          }

          retireCopy2 = bugType;
          v66 = 2082;
          retireCopy3 = retire;
          v68 = 2114;
          v69 = v30;
          v70 = 2080;
          v71 = v29;
          _os_log_impl(&dword_1AE4F7000, v26, OS_LOG_TYPE_DEFAULT, "Retiring (%{public}@) %{public}s '%{public}@': %s", buf, 0x2Au);
        }

        v31 = self->_bugType;
        if (!v31)
        {
          v31 = @"<unknown>";
        }

        v63[0] = v31;
        v62[0] = @"bug_type";
        v62[1] = @"reason";
        if (retire)
        {
          v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:retire];
        }

        else
        {
          v32 = @"<unknown>";
        }

        v63[1] = v32;
        v62[2] = @"proxied";
        v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSString containsString:](*p_filepath, "containsString:", @"ProxiedDevice-"}];
        v63[2] = v33;
        v62[3] = @"success";
        v34 = [MEMORY[0x1E696AD98] numberWithBool:v10];
        v63[3] = v34;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:4];
        AnalyticsSendEvent();

        if (retire)
        {
        }

        if ([(NSString *)self->_bugType isEqualToString:@"211"]&& ![(NSString *)*p_filepath containsString:@"ProxiedDevice-"]&& ([(NSString *)*p_filepath containsString:@"Analytics-Never"]|| [(NSString *)*p_filepath containsString:@"Analytics-2"]))
        {
          v60[0] = @"crk";
          v52 = +[OSASystemConfiguration sharedInstance];
          crashReporterKey = [v52 crashReporterKey];
          v38 = crashReporterKey;
          v39 = self->_bugType;
          if (!v39)
          {
            v39 = @"<unknown>";
          }

          v61[0] = crashReporterKey;
          v61[1] = v39;
          v60[1] = @"bug_type";
          v60[2] = @"incident_id";
          v40 = [(NSDictionary *)self->_metaData objectForKeyedSubscript:?];
          v41 = v40;
          if (v40)
          {
            v42 = v40;
          }

          else
          {
            v42 = @"<unknown>";
          }

          v61[2] = v42;
          v60[3] = @"timestamp";
          v43 = [(NSDictionary *)self->_metaData objectForKeyedSubscript:?];
          v44 = v43;
          if (v43)
          {
            v45 = v43;
          }

          else
          {
            v45 = @"<unknown>";
          }

          v61[3] = v45;
          v60[4] = @"reason";
          if (retire)
          {
            v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:retire];
          }

          v61[4] = v27;
          v60[5] = @"optInStatus";
          v46 = MEMORY[0x1E696AD98];
          v47 = +[OSASystemConfiguration sharedInstance];
          v48 = [v46 numberWithBool:{objc_msgSend(v47, "optInApple")}];
          v61[5] = v48;
          v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:6];
          rtcsc_send(2001, 2001, v49);

          if (retire)
          {
          }

          v59[0] = v53;
          v58[0] = @"logPath";
          v58[1] = @"retiredReason";
          if (retire)
          {
            v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:retire];
          }

          else
          {
            v50 = @"<unknown>";
          }

          v59[1] = v50;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
          [OSAStateMonitor recordEvent:@"ca-log-retired" with:v51];

          if (retire)
          {
          }

          v7 = v53;
        }

        else
        {
          v7 = v53;
        }

        goto LABEL_48;
      }
    }

    else
    {
    }

    stringByDeletingLastPathComponent = [(NSString *)*p_filepath stringByDeletingLastPathComponent];
    v16 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:@"Retired"];
    lastPathComponent = [(NSString *)*p_filepath lastPathComponent];
    v18 = [v16 stringByAppendingPathComponent:lastPathComponent];

    v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:*p_filepath];
    v20 = [MEMORY[0x1E695DFF8] fileURLWithPath:v18];
    v55 = 0;
    v10 = OSASafeMoveItemAtURL(v19, v20, &v55);
    v9 = v55;

    if (v10)
    {
      objc_storeStrong(p_filepath, v18);
      [(OSALog *)self markWithKey:"retired-reason" value:retire];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [OSALog retire:];
    }

    if ([(NSString *)self->_bugType isEqualToString:@"211"])
    {
      fileSystemRepresentation = [(NSString *)self->_filepath fileSystemRepresentation];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __17__OSALog_retire___block_invoke;
      v54[3] = &unk_1E7A27780;
      v54[4] = self;
      OSASafeOpenReadOnly(fileSystemRepresentation, v54);
    }

    goto LABEL_32;
  }

  LOBYTE(v10) = 1;
  return v10;
}

void __17__OSALog_retire___block_invoke(uint64_t a1, int a2)
{
  if (fcntl(a2, 64, 2) == -1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __17__OSALog_retire___block_invoke_cold_1();
  }
}

+ (void)cleanupRetired:(id)retired
{
  v14 = *MEMORY[0x1E69E9840];
  retiredCopy = retired;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = retiredCopy;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Cleaning up retired logs (in %@)", buf, 0xCu);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [retiredCopy stringByAppendingPathComponent:@"Retired"];
  fileSystemRepresentation = [v5 fileSystemRepresentation];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __25__OSALog_cleanupRetired___block_invoke;
  v9[3] = &unk_1E7A277A8;
  v10 = v5;
  v11 = defaultManager;
  v7 = defaultManager;
  v8 = v5;
  osa_scanDir(fileSystemRepresentation, 129, v9, 0);
}

void __25__OSALog_cleanupRetired___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  v4 = [v2 stringByAppendingPathComponent:v3];

  v5 = *(a1 + 40);
  v15 = 0;
  v6 = [v5 attributesOfItemAtPath:v4 error:&v15];
  v7 = v15;
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = v4;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Failed to get attrs for retired log '%@': %@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v8 = [v6 fileModificationDate];
  [v8 timeIntervalSinceNow];
  v10 = fabs(v9);

  if (v10 <= 604800.0)
  {
LABEL_10:
    v13 = v7;
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Removing old retired log '%@'", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
  v14 = v7;
  v12 = OSASafeRemoveFileAtURL(v11, &v14);
  v13 = v14;

  if ((v12 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v4;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to remove retired log '%@': %@", buf, 0x16u);
  }

LABEL_11:
}

+ (void)cleanupForUser:(id)user
{
  v37 = *MEMORY[0x1E69E9840];
  userCopy = user;
  v4 = [MEMORY[0x1E695DF70] arrayWithObject:&stru_1F2411100];
  v5 = v4;
  if (userCopy)
  {
    [v4 addObject:userCopy];
  }

  v23 = userCopy;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x1E695E118];
    v9 = *v32;
    do
    {
      v10 = 0;
      do
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * v10);
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [dictionary setObject:v8 forKeyedSubscript:@"include-hidden"];
        [dictionary setObject:v8 forKeyedSubscript:@"include-proxies"];
        if (+[OSALog isDataVaultEnabled])
        {
          [dictionary setObject:v8 forKeyedSubscript:@"datavault-filePath"];
        }

        if ([v11 length])
        {
          [dictionary setObject:v11 forKeyedSubscript:@"file-owner"];
        }

        [OSALog createRetiredDirectoriesForUser:v11];
        [OSALog iterateLogsWithOptions:dictionary usingBlock:&__block_literal_global_367];

        ++v10;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v7);
  }

  v13 = objc_opt_new();
  v14 = +[OSASystemConfiguration sharedInstance];
  pathSubmission = [v14 pathSubmission];
  fileSystemRepresentation = [pathSubmission fileSystemRepresentation];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __25__OSALog_cleanupForUser___block_invoke_2;
  v29[3] = &unk_1E7A27810;
  v17 = v13;
  v30 = v17;
  osa_scanDir(fileSystemRepresentation, 0, &__block_literal_global_376, v29);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        osa_scanDir([*(*(&v25 + 1) + 8 * v22++) fileSystemRepresentation], 0, &__block_literal_global_379, 0);
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v20);
  }
}

void __25__OSALog_cleanupForUser___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 pathExtension];
  v4 = [v3 isEqualToString:@"proxy"];

  if ((v4 & 1) == 0)
  {
    v26 = 0;
    v5 = *MEMORY[0x1E695DAA8];
    v25 = 0;
    v6 = [v2 getResourceValue:&v26 forKey:v5 error:&v25];
    v7 = v26;
    v8 = v25;
    if (v6)
    {
      v9 = [v2 URLByDeletingLastPathComponent];
      v10 = [v9 lastPathComponent];
      v11 = [v10 isEqualToString:@"Retired"];

      if (v11)
      {
        v12 = 604800.0;
      }

      else
      {
        v13 = [v2 lastPathComponent];
        v14 = [v13 hasPrefix:@"."];

        if (v14)
        {
          v12 = 86400.0;
        }

        else
        {
          v12 = 2592000.0;
        }
      }

      [v7 timeIntervalSinceNow];
      if (fabs(v15) > v12)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v2 path];
          *buf = 138412290;
          v28 = v16;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Removing old log '%@'", buf, 0xCu);
        }

        if (v11)
        {
          v23 = v8;
          v17 = OSASafeRemoveFileAtURL(v2, &v23);
          v18 = v23;

          if ((v17 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v2 path];
            *buf = 138412546;
            v28 = v19;
            v29 = 2112;
            v30 = v18;
            _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to remove old log '%@': %@", buf, 0x16u);
          }
        }

        else
        {
          v20 = [OSALog alloc];
          v21 = [v2 path];
          v24 = v8;
          v22 = [(OSALog *)v20 initWithPath:v21 options:&unk_1F241F0D0 error:&v24];
          v18 = v24;

          [(OSALog *)v22 retire:"expired"];
        }

        goto LABEL_18;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __25__OSALog_cleanupForUser___block_invoke_cold_1(v2);
    }

    v18 = v8;
LABEL_18:
  }
}

uint64_t __25__OSALog_cleanupForUser___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  if ([v6 isEqualToString:@"Retired"])
  {
    goto LABEL_4;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
  v8 = [v7 hasPrefix:@"ProxiedDevice-"];

  if ((v8 & 1) == 0)
  {
    v9 = *(a1 + 32);
    v10 = MEMORY[0x1E696AEC0];
    v11 = MEMORY[0x1E695DEC8];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
    v13 = [v11 arrayWithObjects:{v6, v12, 0}];
    v14 = [v10 pathWithComponents:v13];
    [v9 addObject:v14];

LABEL_4:
  }

  return 0;
}

void __25__OSALog_cleanupForUser___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFF8];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v27[0] = v5;
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
  v27[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v8 = [v4 fileURLWithPathComponents:v7];

  v22 = 0;
  v9 = *MEMORY[0x1E695DAA8];
  v21 = 0;
  LODWORD(v6) = [v8 getResourceValue:&v22 forKey:v9 error:&v21];
  v10 = v22;
  v11 = v21;
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __25__OSALog_cleanupForUser___block_invoke_cold_1(v8);
    }

    goto LABEL_12;
  }

  [v10 timeIntervalSinceNow];
  v13 = fabs(v12);
  v14 = [v8 pathExtension];
  v15 = [v14 isEqualToString:@"synced"];

  v16 = 2592000.0;
  if (v15)
  {
    v16 = 86400.0;
  }

  if (v13 <= v16)
  {
LABEL_12:
    v18 = v11;
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v8;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Removing old log '%@'", buf, 0xCu);
  }

  v20 = v11;
  v17 = OSASafeRemoveFileAtURL(v8, &v20);
  v18 = v20;

  if ((v17 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v8 path];
    *buf = 138412546;
    v24 = v19;
    v25 = 2112;
    v26 = v18;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to remove old log '%@': %@", buf, 0x16u);
  }

LABEL_13:
}

+ (id)scanProxies:(id)proxies
{
  proxiesCopy = proxies;
  array = [MEMORY[0x1E695DF70] array];
  v5 = opendir([proxiesCopy fileSystemRepresentation]);
  if (v5)
  {
    v6 = v5;
    for (i = readdir(v5); i; i = readdir(v6))
    {
      if (i->d_type == 4)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:i->d_name];
        if ([v8 hasPrefix:@"ProxiedDevice-"])
        {
          v9 = [proxiesCopy stringByAppendingPathComponent:v8];
          [array addObject:v9];
        }
      }
    }

    closedir(v6);
  }

  return array;
}

+ (unsigned)scanLogs:(id)logs from:(id)from options:(id)options
{
  v108 = *MEMORY[0x1E69E9840];
  logsCopy = logs;
  fromCopy = from;
  optionsCopy = options;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = 0;
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  v63 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  v54 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = logsCopy;
  v9 = [obj countByEnumeratingWithState:&v92 objects:v107 count:16];
  if (v9)
  {
    v56 = *v93;
    v10 = MEMORY[0x1E69E9C10];
    do
    {
      v60 = 0;
      v52 = v9;
      do
      {
        if (*v93 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v58 = *(*(&v92 + 1) + 8 * v60);
        v11 = [v58 objectForKeyedSubscript:@"<inactive>"];
        v12 = v11 == 0;

        if (v12)
        {
          v13 = [v58 objectForKeyedSubscript:@"logs"];
          if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v14 = v13;
            v15 = [v14 countByEnumeratingWithState:&v88 objects:v106 count:16];
            if (v15)
            {
              v16 = *v89;
              do
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v89 != v16)
                  {
                    objc_enumerationMutation(v14);
                  }

                  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
                  {
                    v18 = *(*(&v88 + 1) + 8 * i);
                    *buf = 138412290;
                    v105 = v18;
                    _os_log_impl(&dword_1AE4F7000, v10, OS_LOG_TYPE_INFO, "scan: including '%@' (explicitly added)", buf, 0xCu);
                  }
                }

                v15 = [v14 countByEnumeratingWithState:&v88 objects:v106 count:16];
              }

              while (v15);
            }

            v19 = [v14 count];
            *(v97 + 6) += v19;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v20 = [v14 mutableCopy];
              [v58 setObject:v20 forKeyedSubscript:@"logs"];
            }
          }

          else
          {
            v14 = objc_opt_new();

            [v58 setObject:v14 forKeyedSubscript:@"logs"];
          }

          v21 = [v58 objectForKeyedSubscript:@"extensions"];
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v22 = v21;
          v23 = [v22 countByEnumeratingWithState:&v84 objects:v103 count:16];
          if (v23)
          {
            v24 = *v85;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v85 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                [v8 setObject:v14 forKeyedSubscript:*(*(&v84 + 1) + 8 * j)];
              }

              v23 = [v22 countByEnumeratingWithState:&v84 objects:v103 count:16];
            }

            while (v23);
          }

          v9 = v52;
          v26 = [v58 objectForKeyedSubscript:@"<descend>"];
          bOOLValue = [v26 BOOLValue];

          if (bOOLValue)
          {
            v82 = 0u;
            v83 = 0u;
            v80 = 0u;
            v81 = 0u;
            v28 = v22;
            v29 = [v28 countByEnumeratingWithState:&v80 objects:v102 count:16];
            if (v29)
            {
              v30 = *v81;
              do
              {
                for (k = 0; k != v29; ++k)
                {
                  if (*v81 != v30)
                  {
                    objc_enumerationMutation(v28);
                  }

                  [v63 setObject:v14 forKeyedSubscript:*(*(&v80 + 1) + 8 * k)];
                }

                v29 = [v28 countByEnumeratingWithState:&v80 objects:v102 count:16];
              }

              while (v29);
            }

            v9 = v52;
          }

          v32 = [v58 objectForKeyedSubscript:@"routing"];
          [v54 setObject:v14 forKeyedSubscript:v32];
        }

        ++v60;
      }

      while (v60 != v9);
      v9 = [obj countByEnumeratingWithState:&v92 objects:v107 count:16];
    }

    while (v9);
  }

  v33 = [optionsCopy objectForKeyedSubscript:@"only-urgent"];
  bOOLValue2 = [v33 BOOLValue];

  v35 = 324;
  v78 = 0u;
  v79 = 0u;
  if (bOOLValue2)
  {
    v35 = 836;
  }

  v57 = v35;
  v76 = 0uLL;
  v77 = 0uLL;
  v53 = fromCopy;
  v61 = [v53 countByEnumeratingWithState:&v76 objects:v101 count:16];
  if (v61)
  {
    v59 = *v77;
    do
    {
      for (m = 0; m != v61; ++m)
      {
        if (*v77 != v59)
        {
          objc_enumerationMutation(v53);
        }

        v36 = *(*(&v76 + 1) + 8 * m);
        v37 = [v36 length];
        v38 = [v63 count] == 0;
        if (([v8 count] || objc_msgSend(v54, "count")) && objc_msgSend(v36, "length"))
        {
          v39 = v36;
          fileSystemRepresentation = [v36 fileSystemRepresentation];
          v70[0] = MEMORY[0x1E69E9820];
          v70[1] = 3221225472;
          v70[2] = __32__OSALog_scanLogs_from_options___block_invoke;
          v70[3] = &unk_1E7A27838;
          v71 = v54;
          v75 = v37;
          v72 = v8;
          v73 = v63;
          v74 = &v96;
          osa_scanDir(fileSystemRepresentation, v57 | v38, v70, &__block_literal_global_400);
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v41 = obj;
          v42 = [v41 countByEnumeratingWithState:&v66 objects:v100 count:16];
          if (v42)
          {
            v43 = *v67;
            do
            {
              for (n = 0; n != v42; ++n)
              {
                if (*v67 != v43)
                {
                  objc_enumerationMutation(v41);
                }

                v45 = *(*(&v66 + 1) + 8 * n);
                v46 = [v45 objectForKeyedSubscript:@"<sort>"];
                if ([v46 length])
                {
                  v47 = [v45 objectForKeyedSubscript:@"logs"];
                  v64[0] = MEMORY[0x1E69E9820];
                  v64[1] = 3221225472;
                  v64[2] = __32__OSALog_scanLogs_from_options___block_invoke_2;
                  v64[3] = &unk_1E7A27880;
                  v65 = v46;
                  [v47 sortUsingComparator:v64];
                }
              }

              v42 = [v41 countByEnumeratingWithState:&v66 objects:v100 count:16];
            }

            while (v42);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "no reason to scan", buf, 2u);
        }
      }

      v61 = [v53 countByEnumeratingWithState:&v76 objects:v101 count:16];
    }

    while (v61);
  }

  v48 = *(v97 + 6);
  _Block_object_dispose(&v96, 8);

  return v48;
}

void __32__OSALog_scanLogs_from_options___block_invoke(void *a1, const char *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v6 = [v5 stringByAppendingPathComponent:v4];

  v20 = 0;
  memset(value, 0, sizeof(value));
  if (getxattr([v6 fileSystemRepresentation], objc_msgSend(@"routing", "UTF8String"), value, 0x40uLL, 0, 0) >= 1)
  {
    v7 = a1[4];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:value];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
LABEL_12:
      if ([v9 count] > 0x3E7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          __32__OSALog_scanLogs_from_options___block_invoke_cold_1();
        }
      }

      else
      {
        [v9 addObject:v6];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          v17 = 138412290;
          v18 = v6;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "scan: including '%@'", &v17, 0xCu);
        }

        ++*(*(a1[7] + 8) + 24);
      }

      goto LABEL_22;
    }
  }

  if ([v4 hasSuffix:@".synced"])
  {
    v10 = [v4 stringByDeletingPathExtension];
  }

  else
  {
    v10 = v4;
  }

  v11 = v10;
  v12 = [v10 pathExtension];
  if (v12)
  {
    v13 = v12;
    v14 = strlen(a2);
    v15 = 6;
    if (v14 == a1[8])
    {
      v15 = 5;
    }

    v16 = a1[v15];
    v9 = [v16 objectForKeyedSubscript:v13];
    if (!v9)
    {
      v9 = [v16 objectForKeyedSubscript:@"<*>"];
    }

    if (v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __32__OSALog_scanLogs_from_options___block_invoke_cold_2();
  }

LABEL_22:
}

uint64_t __32__OSALog_scanLogs_from_options___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 lastPathComponent];
  v7 = [v6 hasPrefix:*(a1 + 32)];

  v8 = [v5 lastPathComponent];

  v9 = [v8 hasPrefix:*(a1 + 32)];
  if (v7)
  {
    return v9 - 1;
  }

  else
  {
    return v9;
  }
}

+ (void)cleanupLogs:(id)logs withFilters:(id)filters error:(id *)error
{
  v54[1] = *MEMORY[0x1E69E9840];
  logsCopy = logs;
  filtersCopy = filters;
  v9 = objc_autoreleasePoolPush();
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v10, "operation", 9uLL);
  xpc_dictionary_set_string(v10, [@"bug_type" UTF8String], objc_msgSend(logsCopy, "UTF8String"));
  v11 = [filtersCopy objectForKeyedSubscript:@"filterByLogAge"];

  if (v11)
  {
    v12 = [filtersCopy objectForKeyedSubscript:@"filterByLogAge"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v12 doubleValue], v13 == 0.0))
    {
      v28 = MEMORY[0x1E696ABC0];
      v53 = *MEMORY[0x1E696A578];
      v54[0] = @"Log age filter incorrectly formatted";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
      v29 = v28;
      v30 = 1;
LABEL_19:
      v33 = [v29 errorWithDomain:@"OSALogCleanup" code:v30 userInfo:v21];
      goto LABEL_28;
    }

    [v12 doubleValue];
    xpc_dictionary_set_double(v10, "filterByLogAge", v14);
  }

  v15 = [filtersCopy objectForKeyedSubscript:@"filterByHeaders"];

  if (!v15)
  {
    goto LABEL_9;
  }

  v12 = [filtersCopy objectForKeyedSubscript:@"filterByHeaders"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = MEMORY[0x1E696ABC0];
    v49 = *MEMORY[0x1E696A578];
    v50 = @"Log header filter incorrectly formatted";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v29 = v31;
    v30 = 3;
    goto LABEL_19;
  }

  v17 = ns2xpc(v12);
  if (!v17)
  {
    v35 = MEMORY[0x1E696ABC0];
    v51 = *MEMORY[0x1E696A578];
    v52 = @"Log header filter incorrectly formatted";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v29 = v35;
    v30 = 2;
    goto LABEL_19;
  }

  v18 = v17;
  xpc_dictionary_set_value(v10, "filterByHeaders", v17);

LABEL_9:
  v19 = OSAnalyticsHelperServiceConnection(v16);
  v12 = v19;
  if (!v19)
  {
    v32 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't get XPC connection to %s", "com.apple.osanalytics.osanalyticshelper"];
    v40 = v21;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v33 = [v32 errorWithDomain:@"OSALogCleanup" code:8 userInfo:v24];
LABEL_27:

    goto LABEL_28;
  }

  v20 = xpc_connection_send_message_with_reply_sync(v19, v10);
  v21 = v20;
  if (!v20)
  {
    v34 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid XPC response from %s", "com.apple.osanalytics.osanalyticshelper"];
    v42 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v26 = v34;
    v27 = 7;
LABEL_26:
    v33 = [v26 errorWithDomain:@"OSALogCleanup" code:v27 userInfo:v25];

    goto LABEL_27;
  }

  v22 = MEMORY[0x1B2703B90](v20);
  if (v22 != MEMORY[0x1E69E9E80])
  {
    v23 = MEMORY[0x1E696ABC0];
    if (v22 == MEMORY[0x1E69E9E98])
    {
      v45 = *MEMORY[0x1E696A578];
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Connection error to %s: %s", "com.apple.osanalytics.osanalyticshelper", xpc_dictionary_get_string(v21, *MEMORY[0x1E69E9E28])];
      v46 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v26 = v23;
      v27 = 5;
    }

    else
    {
      v43 = *MEMORY[0x1E696A578];
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected reply from %s", "com.apple.osanalytics.osanalyticshelper"];
      v44 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v26 = v23;
      v27 = 6;
    }

    goto LABEL_26;
  }

  if (!xpc_dictionary_get_BOOL(v21, "result"))
  {
    v36 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Log cleanup request failed. Error: %s", xpc_dictionary_get_string(v21, "error_desc")];
    v48 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v26 = v36;
    v27 = 4;
    goto LABEL_26;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Log cleanup request successfully completed", buf, 2u);
  }

  v33 = 0;
LABEL_28:

  objc_autoreleasePoolPop(v9);
  if (error && v33)
  {
    v37 = v33;
    *error = v33;
  }
}

+ (void)purgeLogs:(id)logs withReason:(const char *)reason includeRetired:(BOOL)retired deleteOnRetire:(BOOL)retire usingPredicate:(id)predicate
{
  retiredCopy = retired;
  logsCopy = logs;
  predicateCopy = predicate;
  if ([logsCopy length])
  {
    v13 = !retiredCopy;
    if (retiredCopy)
    {
      v14 = 0;
    }

    else
    {
      v14 = 65;
    }

    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = &__block_literal_global_432;
    }

    fileSystemRepresentation = [logsCopy fileSystemRepresentation];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__OSALog_purgeLogs_withReason_includeRetired_deleteOnRetire_usingPredicate___block_invoke_2;
    v17[3] = &unk_1E7A278A8;
    retireCopy = retire;
    v18 = predicateCopy;
    reasonCopy = reason;
    osa_scanDir(fileSystemRepresentation, v14, v17, v15);
  }
}

uint64_t __76__OSALog_purgeLogs_withReason_includeRetired_deleteOnRetire_usingPredicate___block_invoke()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  v1 = [v0 isEqualToString:@"Retired"];

  return v1;
}

void __76__OSALog_purgeLogs_withReason_includeRetired_deleteOnRetire_usingPredicate___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  v7 = [v6 pathExtension];
  v8 = [v7 isEqualToString:@"proxy"];

  if ((v8 & 1) == 0)
  {
    v9 = [OSALog alloc];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    v11 = [v10 stringByAppendingPathComponent:v6];
    v20 = 0;
    v12 = [(OSALog *)v9 initWithPath:v11 options:0 error:&v20];
    v13 = v20;

    if (v12)
    {
      if (!(*(*(a1 + 32) + 16))())
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v22 = a2;
          v23 = 2080;
          v24 = a3;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Not purging %s/%s: log did not meet criteria", buf, 0x16u);
        }

        goto LABEL_17;
      }

      if (*(a1 + 48) == 1)
      {
        [(OSALog *)v12 setDeleteOnRetire:1];
      }

      if ([(OSALog *)v12 retire:*(a1 + 40)])
      {
LABEL_17:

        goto LABEL_18;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __76__OSALog_purgeLogs_withReason_includeRetired_deleteOnRetire_usingPredicate___block_invoke_2_cold_1();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __76__OSALog_purgeLogs_withReason_includeRetired_deleteOnRetire_usingPredicate___block_invoke_2_cold_2();
    }

    v14 = MEMORY[0x1E695DFF8];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    v16 = [v14 fileURLWithPath:v15];
    v19 = v13;
    v17 = OSASafeRemoveFileAtURL(v16, &v19);
    v18 = v19;

    if ((v17 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __76__OSALog_purgeLogs_withReason_includeRetired_deleteOnRetire_usingPredicate___block_invoke_2_cold_3();
    }

    v13 = v18;
    goto LABEL_17;
  }

LABEL_18:
}

+ (void)iterateLogsWithOptions:(id)options usingBlock:(id)block
{
  v50 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  blockCopy = block;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  v8 = [optionsCopy objectForKeyedSubscript:@"override-filePath"];
  v9 = +[OSASystemConfiguration sharedInstance];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 isWhitelisted:v8 forDomain:@"transfer_paths"];

    if (v11)
    {
      [v7 addObject:v8];
    }

    else
    {
      bOOLValue2 = 0;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 138412290;
      v49 = v8;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "path is not whitelisted for listing: %@", buf, 0xCu);
    }

    bOOLValue2 = 0;
  }

  else
  {
    v12 = [optionsCopy objectForKeyedSubscript:@"file-owner"];
    v13 = [v10 pathSubmissionForOwner:v12];

    if (v13)
    {
      [v7 addObject:v13];
    }

    v14 = [optionsCopy objectForKeyedSubscript:@"datavault-filePath"];
    bOOLValue = [v14 BOOLValue];

    if (bOOLValue)
    {
      v16 = +[OSASystemConfiguration sharedInstance];
      pathSubmissionDataVault = [v16 pathSubmissionDataVault];

      if (pathSubmissionDataVault)
      {
        [v7 addObject:pathSubmissionDataVault];
        v13 = pathSubmissionDataVault;
      }

      else
      {
        v13 = 0;
      }
    }

    v18 = [optionsCopy objectForKeyedSubscript:@"include-proxies"];
    bOOLValue2 = [v18 BOOLValue];
  }

LABEL_14:
  if ([v7 count])
  {
    v19 = [optionsCopy objectForKeyedSubscript:@"include-hidden"];
    bOOLValue3 = [v19 BOOLValue];

    if (bOOLValue3)
    {
      v21 = 0;
    }

    else
    {
      v21 = 4;
    }

    v22 = [optionsCopy objectForKeyedSubscript:@"exclude-retired"];
    bOOLValue4 = [v22 BOOLValue];

    if (bOOLValue4)
    {
      v21 |= 0x40uLL;
    }

    else
    {
      v24 = [optionsCopy objectForKeyedSubscript:@"only-retired"];
      bOOLValue5 = [v24 BOOLValue];

      if (bOOLValue5)
      {
        v21 |= 0x80uLL;
      }
    }

    v35 = optionsCopy;
    v26 = [optionsCopy objectForKeyedSubscript:{@"only-urgent", v8}];
    bOOLValue6 = [v26 BOOLValue];

    v46 = 0u;
    v44 = 0u;
    v45 = 0u;
    if (bOOLValue6)
    {
      v28 = v21 | 0x200;
    }

    else
    {
      v28 = v21;
    }

    v43 = 0uLL;
    obj = v7;
    v29 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v44;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v44 != v31)
          {
            objc_enumerationMutation(obj);
          }

          fileSystemRepresentation = [*(*(&v43 + 1) + 8 * i) fileSystemRepresentation];
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __44__OSALog_iterateLogsWithOptions_usingBlock___block_invoke;
          v41[3] = &unk_1E7A278D0;
          v42 = blockCopy;
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __44__OSALog_iterateLogsWithOptions_usingBlock___block_invoke_2;
          v39[3] = &__block_descriptor_41_e13_B24__0r_8r_16l;
          v39[4] = v28;
          v40 = bOOLValue2;
          osa_scanDir(fileSystemRepresentation, v28, v41, v39);
        }

        v30 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v30);
    }

    optionsCopy = v35;
    v8 = v34;
  }

  objc_autoreleasePoolPop(v6);
}

void __44__OSALog_iterateLogsWithOptions_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E695DFF8];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v10[0] = v6;
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
  v10[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v9 = [v5 fileURLWithPathComponents:v8];
  (*(v4 + 16))(v4, v9);
}

uint64_t __44__OSALog_iterateLogsWithOptions_usingBlock___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  v3 = v2;
  if ((*(a1 + 32) & 0x40) != 0 || ([v2 isEqualToString:@"Retired"] & 1) == 0)
  {
    if (*(a1 + 40) == 1)
    {
      v4 = [v3 hasPrefix:@"ProxiedDevice-"];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (id)commonFieldsForBody:(id)body
{
  v13[1] = *MEMORY[0x1E69E9840];
  bodyCopy = body;
  v12 = @"bug_type";
  v13[0] = bodyCopy;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v5 = [v4 mutableCopy];

  v6 = +[OSALog additionalRootsInstalled];
  if (v6)
  {
    [v5 addEntriesFromDictionary:v6];
  }

  v7 = +[OSASystemConfiguration sharedInstance];
  isInDeviceRecoveryEnvironment = [v7 isInDeviceRecoveryEnvironment];

  if (isInDeviceRecoveryEnvironment)
  {
    v9 = +[OSASystemConfiguration sharedInstance];
    recoveryModeReason = [v9 recoveryModeReason];
    [v5 setObject:recoveryModeReason forKeyedSubscript:@"device_in_recovery_mode_with_reason"];
  }

  return v5;
}

+ (void)createRetiredDirectory:(id)directory
{
  v10 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = directoryCopy;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Creating Retired directory in %@", buf, 0xCu);
  }

  fileSystemRepresentation = [directoryCopy fileSystemRepresentation];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__OSALog_createRetiredDirectory___block_invoke;
  v6[3] = &unk_1E7A27780;
  v7 = directoryCopy;
  v5 = directoryCopy;
  OSASafeOpenReadOnly(fileSystemRepresentation, v6);
}

void __33__OSALog_createRetiredDirectory___block_invoke(uint64_t a1, int a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  memset(&v6, 0, sizeof(v6));
  if (fstat(a2, &v6))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __33__OSALog_createRetiredDirectory___block_invoke_cold_1();
    }

    v3 = 0;
  }

  else
  {
    v7 = @"file-owner-uid";
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6.st_uid];
    v8[0] = v4;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  v5 = [OSASystemConfiguration ensureUsablePath:*(a1 + 32) component:@"Retired" options:v3];
  [OSALog markPurgeableLevel:75780 path:v5];
}

+ (void)createRetiredDirectoriesForUser:(id)user
{
  v34 = *MEMORY[0x1E69E9840];
  userCopy = user;
  array = [MEMORY[0x1E695DF70] array];
  v5 = +[OSASystemConfiguration sharedInstance];
  pathSubmission = [v5 pathSubmission];

  if ([pathSubmission length])
  {
    [array addObject:pathSubmission];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[OSALog createRetiredDirectoriesForUser:];
  }

  if (+[OSALog isDataVaultEnabled])
  {
    v7 = +[OSASystemConfiguration sharedInstance];
    pathSubmissionDataVault = [v7 pathSubmissionDataVault];

    if ([pathSubmissionDataVault length])
    {
      [array addObject:pathSubmissionDataVault];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[OSALog createRetiredDirectoriesForUser:];
    }
  }

  if (userCopy)
  {
    v9 = +[OSASystemConfiguration sharedInstance];
    v10 = [v9 pathSubmissionForOwner:userCopy];

    if ([v10 length])
    {
      [array addObject:v10];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[OSALog createRetiredDirectoriesForUser:];
    }
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = array;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        [array2 addObject:v17];
        v18 = [OSALog scanProxies:v17];
        [array2 addObjectsFromArray:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v14);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = array2;
  v20 = [v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v25;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [OSALog createRetiredDirectory:*(*(&v24 + 1) + 8 * j), v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v21);
  }
}

- (void)initWithPath:forRouting:usingConfig:options:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

+ (void)markPurgeableLevel:(void *)a1 path:.cold.1(void *a1)
{
  [a1 UTF8String];
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

+ (void)locallyCreateForSubmission:metadata:options:error:writing:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)createForSubmission:metadata:options:error:writing:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)createForSubmission:metadata:options:error:writing:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = 136315138;
  v1 = "com.apple.osanalytics.osanalyticshelper";
  _os_log_fault_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Invalid connection to %s. Caller may need sandbox exception.", &v0, 0xCu);
}

+ (void)createForSubmission:metadata:options:error:writing:.cold.4()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = 136315138;
  v1 = "com.apple.osanalytics.osanalyticshelper";
  _os_log_fault_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Couldn't get XPC connection to %s", &v0, 0xCu);
}

void __61__OSALog_createForSubmission_metadata_options_error_writing___block_invoke_cold_1(void *a1, uint8_t *buf)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error while writing file: %{public}@", buf, 0xCu);
}

- (void)markWithKey:value:.cold.1()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

+ (void)markFile:withKey:value:.cold.1()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

+ (void)markDescriptor:(uint64_t)a1 forKey:withObj:.cold.1(uint64_t a1)
{
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)retire:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)retire:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __17__OSALog_retire___block_invoke_cold_1()
{
  v0 = __error();
  strerror(*v0);
  __error();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void __25__OSALog_cleanupForUser___block_invoke_cold_1(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __32__OSALog_scanLogs_from_options___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __32__OSALog_scanLogs_from_options___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __76__OSALog_purgeLogs_withReason_includeRetired_deleteOnRetire_usingPredicate___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __76__OSALog_purgeLogs_withReason_includeRetired_deleteOnRetire_usingPredicate___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __76__OSALog_purgeLogs_withReason_includeRetired_deleteOnRetire_usingPredicate___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

+ (void)createRetiredDirectoriesForUser:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end
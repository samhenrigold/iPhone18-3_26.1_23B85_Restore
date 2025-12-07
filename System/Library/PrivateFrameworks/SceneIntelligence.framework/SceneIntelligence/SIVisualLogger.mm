@interface SIVisualLogger
+ (id)_discoverSubloggers;
+ (id)defaultLogPath;
+ (id)sharedLogger;
- (BOOL)_stopLoggingToFile;
- (BOOL)_stopLoggingToHost;
- (BOOL)isLoggerEnabled:(id)enabled;
- (BOOL)logBinaryData:(id)data at:(double)at sublogger:(id)sublogger name:(id)name;
- (BOOL)logDictionary:(id)dictionary at:(double)at sublogger:(id)sublogger name:(id)name;
- (BOOL)logIOSurface:(__IOSurface *)surface at:(double)at sublogger:(id)sublogger name:(id)name;
- (BOOL)logNumber:(id)number at:(double)at sublogger:(id)sublogger name:(id)name;
- (BOOL)logNumbers:(id)numbers at:(double)at sublogger:(id)sublogger name:(id)name;
- (BOOL)logPixelBuffer:(__CVBuffer *)buffer at:(double)at sublogger:(id)sublogger name:(id)name;
- (BOOL)startLoggingToFile:(id)file synchronously:(BOOL)synchronously;
- (BOOL)startLoggingToHost:(id)host;
- (BOOL)stopAndDisableLogging;
- (Ref<const)createDataInfoAt:(double)at name:(id)name;
- (SIVisualLogger)init;
- (id).cxx_construct;
- (id)_arrayOfNumbersToData:(id)data valueType:(unint64_t *)type;
- (void)dealloc;
- (void)enableLogger:(id)logger;
- (void)logAndReleaseError:(__CFError *)error;
- (void)registerSubloggers:(id)subloggers;
@end

@implementation SIVisualLogger

+ (id)sharedLogger
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__SIVisualLogger_sharedLogger__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[SIVisualLogger sharedLogger]::onceToken[0] != -1)
  {
    dispatch_once(+[SIVisualLogger sharedLogger]::onceToken, block);
  }

  v2 = +[SIVisualLogger sharedLogger]::sharedLogger;

  return v2;
}

uint64_t __30__SIVisualLogger_sharedLogger__block_invoke(uint64_t a1)
{
  +[SIVisualLogger sharedLogger]::sharedLogger = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (SIVisualLogger)init
{
  v8.receiver = self;
  v8.super_class = SIVisualLogger;
  v2 = [(SIVisualLogger *)&v8 init];
  if (v2)
  {
    v3 = MEMORY[0x223D4C1E0]();
    v2->_visualLogger = v3;
    if (!v3)
    {
      v6 = 0;
      goto LABEL_6;
    }

    v4 = objc_alloc_init(MEMORY[0x277CBEB98]);
    registeredSubloggers = v2->_registeredSubloggers;
    v2->_registeredSubloggers = v4;

    v2->_register_lock._os_unfair_lock_opaque = 0;
  }

  v6 = v2;
LABEL_6:

  return v6;
}

- (void)registerSubloggers:(id)subloggers
{
  v22 = *MEMORY[0x277D85DE8];
  subloggersCopy = subloggers;
  if (SIInternalOSBuild(subloggersCopy, v6))
  {
    objc_storeStrong(&self->_registeredSubloggers, subloggers);
    os_unfair_lock_lock(&self->_register_lock);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = self->_registeredSubloggers;
    v8 = [(NSSet *)v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v8)
    {
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = v11;
          [v11 UTF8String];
          SubLoggerMutable = VZLoggerGetSubLoggerMutable();
          v14 = v11;
          uTF8String = [v11 UTF8String];
          v20 = &uTF8String;
          std::__hash_table<std::__hash_value_type<char const*,VZSubLogger *>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,VZSubLogger *>,std::hash<char const*>,std::equal_to<char const*>,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,VZSubLogger *>,std::equal_to<char const*>,std::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,VZSubLogger *>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const*&&>,std::tuple<>>(&self->_vlSubloggerMap.__table_.__bucket_list_.__ptr_, &uTF8String, &std::piecewise_construct, &v20)[3] = SubLoggerMutable;
        }

        v8 = [(NSSet *)v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v8);
    }

    os_unfair_lock_unlock(&self->_register_lock);
  }
}

- (void)dealloc
{
  [(SIVisualLogger *)self _stopLoggingToFile];
  [(SIVisualLogger *)self _stopLoggingToHost];
  VZRelease();
  VZRelease();
  VZRelease();
  v3.receiver = self;
  v3.super_class = SIVisualLogger;
  [(SIVisualLogger *)&v3 dealloc];
}

+ (id)_discoverSubloggers
{
  v2 = [MEMORY[0x277CBEB58] set];
  ClassList = objc_getClassList(0, 0);
  v4 = ClassList;
  if (ClassList)
  {
    v5 = malloc_type_malloc(8 * ClassList, 0x80040B8603338uLL);
    objc_getClassList(v5, v4);
    v6 = 0;
    v7 = 8 * v4;
    do
    {
      v8 = v5[v6 / 8];
      if (class_conformsToProtocol(v8, &unk_282F36BE8))
      {
        subLoggers = [(objc_class *)v8 subLoggers];
        [v2 unionSet:subLoggers];
      }

      v6 += 8;
    }

    while (v7 != v6);
    free(v5);
  }

  return v2;
}

+ (id)defaultLogPath
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"VisualLogger_SceneIntelligence"];

  return v3;
}

- (void)logAndReleaseError:(__CFError *)error
{
  v15 = *MEMORY[0x277D85DE8];
  if (error)
  {
    v4 = __SceneIntelligenceLogSharedInstance(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      code = [(__CFError *)error code];
      v6 = [(__CFError *)error description];
      v7 = 136381443;
      v8 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/VisualLogger/SIVisualLogger.mm";
      v9 = 1025;
      v10 = 185;
      v11 = 2048;
      v12 = code;
      v13 = 2113;
      v14 = v6;
      _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Error.\nCode: %zu\nDescription: %{private}@ ***", &v7, 0x26u);
    }
  }
}

- (void)enableLogger:(id)logger
{
  loggerCopy = logger;
  os_unfair_lock_lock(&self->_register_lock);
  uTF8String = [loggerCopy UTF8String];
  v7 = &uTF8String;
  v5 = std::__hash_table<std::__hash_value_type<char const*,VZSubLogger *>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,VZSubLogger *>,std::hash<char const*>,std::equal_to<char const*>,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,VZSubLogger *>,std::equal_to<char const*>,std::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,VZSubLogger *>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const*&&>,std::tuple<>>(&self->_vlSubloggerMap.__table_.__bucket_list_.__ptr_, &uTF8String, &std::piecewise_construct, &v7)[3];
  os_unfair_lock_unlock(&self->_register_lock);
  if (v5)
  {
    VZSubLoggerEnable();
  }

  else
  {
    [loggerCopy UTF8String];
    VZLoggerEnable();
  }
}

- (BOOL)isLoggerEnabled:(id)enabled
{
  enabledCopy = enabled;
  if ((SIInternalOSBuild(enabledCopy, v5) & 1) != 0 && self->_visualLogger)
  {
    uTF8String = [enabledCopy UTF8String];
    os_unfair_lock_lock(&self->_register_lock);
    v11 = &uTF8String;
    v6 = std::__hash_table<std::__hash_value_type<char const*,VZSubLogger *>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,VZSubLogger *>,std::hash<char const*>,std::equal_to<char const*>,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,VZSubLogger *>,std::equal_to<char const*>,std::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,VZSubLogger *>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const*&&>,std::tuple<>>(&self->_vlSubloggerMap.__table_.__bucket_list_.__ptr_, &uTF8String, &std::piecewise_construct, &v11)[3];
    os_unfair_lock_unlock(&self->_register_lock);
    if (v6)
    {
      v7 = VZSubLoggerEnabled();
    }

    else
    {
      [enabledCopy UTF8String];
      v7 = VZLoggerEnabled();
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)startLoggingToFile:(id)file synchronously:(BOOL)synchronously
{
  v26 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v6 = fileCopy;
  if (fileCopy)
  {
    if (self->_fileDestination)
    {
      defaultManager = __SceneIntelligenceLogSharedInstance(fileCopy);
      if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136380931;
        *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/VisualLogger/SIVisualLogger.mm";
        v20 = 1025;
        v21 = 232;
        v8 = " %{private}s:%{private}d *** Request to start file logging, but we already have a file destination. ***";
LABEL_7:
        _os_log_impl(&dword_21DE0D000, defaultManager, OS_LOG_TYPE_ERROR, v8, buf, 0x12u);
        goto LABEL_21;
      }

      goto LABEL_21;
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager fileExistsAtPath:v6])
    {
      v18 = 0;
      v9 = [defaultManager removeItemAtPath:v6 error:&v18];
      v10 = v18;
      v11 = v10;
      if ((v9 & 1) == 0)
      {
        v15 = __SceneIntelligenceLogSharedInstance(v10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          buf[0] = 136381187;
          *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/VisualLogger/SIVisualLogger.mm";
          v20 = 1025;
          v21 = 243;
          v22 = 2113;
          v23 = v11;
          _os_log_impl(&dword_21DE0D000, v15, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to remove item: %{private}@ ***", buf, 0x1Cu);
        }

        goto LABEL_20;
      }
    }

    v17 = 0;
    v12 = [defaultManager createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v17];
    v13 = v17;
    v11 = v13;
    if (v12)
    {
      VZFileExportOptionsCreate();
      operator new();
    }

    v14 = __SceneIntelligenceLogSharedInstance(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136381443;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/VisualLogger/SIVisualLogger.mm";
      v20 = 1025;
      v21 = 252;
      v22 = 2113;
      v23 = v6;
      v24 = 2113;
      v25 = v11;
      _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to create visual logger directory %{private}@. Error: %{private}@ ***", buf, 0x26u);
    }

LABEL_20:
    goto LABEL_21;
  }

  defaultManager = __SceneIntelligenceLogSharedInstance(0);
  if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
  {
    buf[0] = 136380931;
    *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/VisualLogger/SIVisualLogger.mm";
    v20 = 1025;
    v21 = 227;
    v8 = " %{private}s:%{private}d *** Must have a non-nil logPath ***";
    goto LABEL_7;
  }

LABEL_21:

  return 0;
}

- (BOOL)_stopLoggingToFile
{
  if (!self->_visualLogger || !self->_fileDestination)
  {
    return 0;
  }

  VZLoggerRemoveDestination();
  v3 = 1;
  VZRelease();
  self->_fileDestination = 0;
  return v3;
}

- (BOOL)startLoggingToHost:(id)host
{
  v11 = *MEMORY[0x277D85DE8];
  hostCopy = host;
  v5 = hostCopy;
  if (hostCopy)
  {
    if (!self->_networkDestination)
    {
      VZClientOptionsCreate();
      operator new();
    }

    v6 = __SceneIntelligenceLogSharedInstance(hostCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 136380931;
      *&v8[1] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/VisualLogger/SIVisualLogger.mm";
      v9 = 1025;
      v10 = 322;
      _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Request to start network logging, but we already have a network destination. ***", v8, 0x12u);
    }
  }

  else
  {
    v6 = __SceneIntelligenceLogSharedInstance(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 136380931;
      *&v8[1] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/VisualLogger/SIVisualLogger.mm";
      v9 = 1025;
      v10 = 317;
      _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Invalid host address ***", v8, 0x12u);
    }
  }

  return 0;
}

- (BOOL)_stopLoggingToHost
{
  if (!self->_visualLogger || !self->_networkDestination)
  {
    return 0;
  }

  VZLoggerRemoveDestination();
  v3 = 1;
  VZRelease();
  self->_networkDestination = 0;
  return v3;
}

- (BOOL)stopAndDisableLogging
{
  _stopLoggingToHost = [(SIVisualLogger *)self _stopLoggingToHost];
  _stopLoggingToFile = [(SIVisualLogger *)self _stopLoggingToFile];
  [(SIVisualLogger *)self _disableAllLogs];
  return _stopLoggingToFile || _stopLoggingToHost;
}

- (Ref<const)createDataInfoAt:(double)at name:(id)name
{
  name;
  VZDataInfoCreate();
  operator new();
}

- (BOOL)logPixelBuffer:(__CVBuffer *)buffer at:(double)at sublogger:(id)sublogger name:(id)name
{
  subloggerCopy = sublogger;
  nameCopy = name;
  if ([(SIVisualLogger *)self isLoggerEnabled:subloggerCopy])
  {
    objc_msgSend_createDataInfoAt_name_(self, at);
    VZDataCreateImageWithCVPixelBuffer();
    operator new();
  }

  return 0;
}

- (BOOL)logIOSurface:(__IOSurface *)surface at:(double)at sublogger:(id)sublogger name:(id)name
{
  subloggerCopy = sublogger;
  nameCopy = name;
  if ([(SIVisualLogger *)self isLoggerEnabled:subloggerCopy])
  {
    objc_msgSend_createDataInfoAt_name_(self, at);
    VZDataCreateImageWithIOSurface();
    operator new();
  }

  return 0;
}

- (BOOL)logDictionary:(id)dictionary at:(double)at sublogger:(id)sublogger name:(id)name
{
  dictionaryCopy = dictionary;
  subloggerCopy = sublogger;
  nameCopy = name;
  if ([(SIVisualLogger *)self isLoggerEnabled:subloggerCopy])
  {
    objc_msgSend_createDataInfoAt_name_(self, at);
    VZDataCreateDictionaryWithCFDictionary();
    operator new();
  }

  return 0;
}

- (BOOL)logBinaryData:(id)data at:(double)at sublogger:(id)sublogger name:(id)name
{
  dataCopy = data;
  subloggerCopy = sublogger;
  nameCopy = name;
  if ([(SIVisualLogger *)self isLoggerEnabled:subloggerCopy])
  {
    objc_msgSend_createDataInfoAt_name_(self, at);
    VZDataCreateBlobWithCFData();
    operator new();
  }

  return 0;
}

- (id)_arrayOfNumbersToData:(id)data valueType:(unint64_t *)type
{
  v20 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v6 = dataCopy;
  if (dataCopy && [dataCopy count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{8 * objc_msgSend(v6, "count")}];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v15 + 1) + 8 * i) doubleValue];
          v14 = v12;
          [v7 appendBytes:&v14 length:8];
        }

        v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    *type = *MEMORY[0x277D79730];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)logNumbers:(id)numbers at:(double)at sublogger:(id)sublogger name:(id)name
{
  v15 = *MEMORY[0x277D85DE8];
  numbersCopy = numbers;
  subloggerCopy = sublogger;
  nameCopy = name;
  if (-[SIVisualLogger isLoggerEnabled:](self, "isLoggerEnabled:", subloggerCopy) && [numbersCopy count])
  {
    objc_msgSend_createDataInfoAt_name_(self, at);
    v14 = *MEMORY[0x277D79738];
    [(SIVisualLogger *)self _arrayOfNumbersToData:numbersCopy valueType:&v14];
    objc_claimAutoreleasedReturnValue();
    VZDataCreateNumbersWithCFData();
    operator new();
  }

  return 0;
}

- (BOOL)logNumber:(id)number at:(double)at sublogger:(id)sublogger name:(id)name
{
  numberCopy = number;
  subloggerCopy = sublogger;
  nameCopy = name;
  if ([(SIVisualLogger *)self isLoggerEnabled:subloggerCopy])
  {
    objc_msgSend_createDataInfoAt_name_(self, at);
    VZDataCreateNumberWithCFNumber();
    operator new();
  }

  return 0;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 16) = 1065353216;
  return self;
}

@end
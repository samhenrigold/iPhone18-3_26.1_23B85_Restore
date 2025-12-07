@interface MPSGraphPackage
+ (void)readResources:(id)resources fromURL:(id)l error:(id *)error usingAllocator:(function_ref<char *)(llvm:(unsigned long)long :(unsigned long)long StringRef;
- (MPSGraphPackage)initWithPackageURL:(id)l temporaryPackageURL:(id)rL append:(BOOL)append;
- (MPSGraphPackage)initWithSourcePackageURL:(id)l;
- (MPSGraphPackage)initWithSourcePackageURL:(id)l error:(id *)error;
- (id).cxx_construct;
- (id)addBinaryResourceFile:(id)file withFileType:(unint64_t)type toBinaryResourceFileDict:(id)dict;
- (id)createFileHandle;
- (id)findLatestPackage;
- (id)findLatestPackageKey;
- (id)getMLIRLibrary;
- (id)getPackageKeyForPlatform:(unint64_t)platform andMinimumDeploymentTarget:(optional<MPSGraphOperatingSystemVersion> *)target;
- (id)getPlistData;
- (id)writeResources:(ArrayRef<mlir::mps::MPSResourceBlobEntry *>)resources;
- (void)commonInit;
- (void)copyDataFiles:(ArrayRef<std:(id)files :(Location)a5 string>)a3 currentBasePath:location:;
- (void)createBytecodeFromMlirModule:(ModuleOp)module fileHandle:(id)handle resourceStorageMode:(unint64_t)mode;
- (void)createVersionedBytecodeFromMlirModule:(ModuleOp)module packageKey:(id)key fileHandle:(id)handle resourceStorageMode:(unint64_t)mode downgradedModuleCallback:(function_ref<void)(mlir::mps::serialization::ModuleOp;
- (void)setMLIRLibrary:(id)library withPackageKey:(id)key;
@end

@implementation MPSGraphPackage

- (void)commonInit
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"mpsgraph";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:0];
  v8[1] = @"hwx";
  v9[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = [v5 mutableCopy];
  perExtensionFileCounts = self->_perExtensionFileCounts;
  self->_perExtensionFileCounts = v6;
}

- (MPSGraphPackage)initWithSourcePackageURL:(id)l error:(id *)error
{
  v36[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v32.receiver = self;
  v32.super_class = MPSGraphPackage;
  v8 = [(MPSGraphPackage *)&v32 init];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  fileManager = v8->_fileManager;
  v8->_fileManager = defaultManager;

  objc_storeStrong(&v8->_packageURL, l);
  temporaryPackageURL = v8->_temporaryPackageURL;
  v8->_temporaryPackageURL = 0;

  [(MPSGraphPackage *)v8 commonInit];
  ptr = v8->_temporaryPackageFileLock.__ptr_;
  v8->_temporaryPackageFileLock.__ptr_ = 0;
  if (ptr)
  {
    llvm::LockFileManager::~LockFileManager(ptr, v12, v13);
    MEMORY[0x1E12E5B90]();
  }

  v15 = v8->_writingLockGuard.__ptr_;
  v8->_writingLockGuard.__ptr_ = 0;
  if (v15)
  {
    std::default_delete<InProcessPackageWritingGuard::LockGuard>::operator()[abi:ne200100](v15);
  }

  v31 = 0;
  v16 = v8->_fileManager;
  path = [(NSURL *)v8->_packageURL path];
  LODWORD(v16) = [(NSFileManager *)v16 fileExistsAtPath:path isDirectory:&v31];

  if (!v16)
  {
    if (!error)
    {
      goto LABEL_15;
    }

    v23 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A578];
    v24 = MEMORY[0x1E696AEC0];
    absoluteString = [(NSURL *)v8->_packageURL absoluteString];
    v26 = [v24 stringWithFormat:@"Error: did not find file at url: %@", absoluteString];
    v34 = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    *error = [v23 errorWithDomain:@"com.apple.mps" code:-19 userInfo:v27];

LABEL_14:
    error = 0;
    goto LABEL_15;
  }

  if ((v31 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_15;
    }

    v28 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v36[0] = @"Error: file is unexpectedly not a directory";
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    *error = [v28 errorWithDomain:@"com.apple.mps" code:-19 userInfo:v29];

    goto LABEL_14;
  }

  v18 = [(NSURL *)v8->_packageURL URLByAppendingPathComponent:@"manifest.plist"];
  v19 = loadPlistAtURL(v18, error);
  v20 = v19;
  if (!v19)
  {

    goto LABEL_14;
  }

  v21 = [v19 mutableCopy];
  plistRoot = v8->_plistRoot;
  v8->_plistRoot = v21;

  error = v8;
LABEL_15:

  return error;
}

- (MPSGraphPackage)initWithSourcePackageURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = MPSGraphPackage;
  v10 = 0;
  v5 = [[(MPSGraphPackage *)&v11 init] initWithSourcePackageURL:lCopy error:&v10];
  v6 = v10;
  v7 = v6;
  if (!v5)
  {
    if (v6)
    {
      [v6 localizedDescription];

      if (MTLReportFailureTypeEnabled())
      {
        localizedDescription = [v7 localizedDescription];
        MTLReportFailure();
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  return v5;
}

- (MPSGraphPackage)initWithPackageURL:(id)l temporaryPackageURL:(id)rL append:(BOOL)append
{
  v29 = *MEMORY[0x1E69E9840];
  l;
  rLCopy = rL;
  v28.receiver = self;
  v28.super_class = MPSGraphPackage;
  v25 = [(MPSGraphPackage *)&v28 init];
  objc_storeStrong(&v25->_packageURL, l);
  objc_storeStrong(&v25->_temporaryPackageURL, rL);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  fileManager = v25->_fileManager;
  v25->_fileManager = defaultManager;

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  plistRoot = v25->_plistRoot;
  v25->_plistRoot = v10;

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(NSMutableDictionary *)v25->_plistRoot setObject:v12 forKeyedSubscript:@"Package Version"];

  [(MPSGraphPackage *)v25 commonInit];
  path = [rLCopy path];
  v23 = [path stringByAppendingString:@".lock"];

  v14 = v23;
  v15 = [v23 cStringUsingEncoding:4];
  v16 = strlen(v15);
  if (v16 < 0x7FFFFFFFFFFFFFF8)
  {
    v19 = v16;
    if (v16 < 0x17)
    {
      v27 = v16;
      if (v16)
      {
        memmove(&__dst, v15, v16);
      }

      *(&__dst + v19) = 0;
      ptr = v25->_temporaryPackageFileLock.__ptr_;
      v25->_temporaryPackageFileLock.__ptr_ = 0;
      if (ptr)
      {
        llvm::LockFileManager::~LockFileManager(ptr, v17, v18);
        MEMORY[0x1E12E5B90]();
      }

      v21 = v25->_writingLockGuard.__ptr_;
      v25->_writingLockGuard.__ptr_ = 0;
      if (v21)
      {
        std::default_delete<InProcessPackageWritingGuard::LockGuard>::operator()[abi:ne200100](v21);
      }

      operator new();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

- (id)getPackageKeyForPlatform:(unint64_t)platform andMinimumDeploymentTarget:(optional<MPSGraphOperatingSystemVersion> *)target
{
  v38 = *MEMORY[0x1E69E9840];
  if (qword_1ECE75318 != -1)
  {
    dispatch_once(&qword_1ECE75318, &__block_literal_global_1);
  }

  v6 = _MergedGlobals_7;
  v27 = v6;
  if (platform >= 4)
  {
    if (MTLReportFailureTypeEnabled())
    {
      platformCopy = platform;
      MTLReportFailure();
    }
  }

  else
  {
    var1 = qword_1E09A7140[platform];
    var0 = qword_1E09A7160[platform];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [v6 allKeys];
  v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v7)
  {
    var2 = 0;
    goto LABEL_41;
  }

  var2 = 0;
  v8 = *v34;
  do
  {
    v9 = 0;
    do
    {
      if (*v34 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = [*(*(&v33 + 1) + 8 * v9) componentsSeparatedByString:{@"OS", v26}];
      v11 = [v10 objectAtIndexedSubscript:0];
      v12 = [v11 stringByAppendingString:@"OS"];

      v13 = v12;
      if ([v13 isEqualToString:@"macOS"])
      {
        goto LABEL_13;
      }

      if ([v13 isEqualToString:@"iOS"])
      {
        v14 = 1;
      }

      else if ([v13 isEqualToString:@"tvOS"])
      {
        v14 = 2;
      }

      else
      {
        if (([v13 isEqualToString:@"visionOS"] & 1) == 0)
        {
          if (MTLReportFailureTypeEnabled())
          {
            v26 = v13;
            MTLReportFailure();
          }

LABEL_13:
          v14 = 0;
          goto LABEL_20;
        }

        v14 = 3;
      }

LABEL_20:

      if (v14 == platform)
      {
        v15 = [v10 objectAtIndexedSubscript:1];
        MPSGraphOperatingSystemVersion::MPSGraphOperatingSystemVersion(&v32, v15);

        if (v32.var0 > var0 || v32.var0 == var0 && (v32.var1 > var1 || v32.var1 == var1 && v32.var2 > var2))
        {
          if (!target->var1 || v32.var0 < target->var0.var1.var0 || v32.var0 == target->var0.var1.var0 && ((v16 = target->var0.var1.var1, v32.var1 < v16) || v32.var1 == v16 && v32.var2 <= target->var0.var1.var2))
          {
            var2 = v32.var2;
            var1 = v32.var1;
            var0 = v32.var0;
          }
        }
      }

      ++v9;
    }

    while (v7 != v9);
    v17 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    v7 = v17;
  }

  while (v17);
LABEL_41:

  v32.var0 = var0;
  v32.var1 = var1;
  v32.var2 = var2;
  v18 = objc_alloc_init(MEMORY[0x1E696AEC0]);
  v19 = v18;
  if (platform >= 4)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  else
  {
    v20 = [v18 stringByAppendingString:off_1E86D4AF8[platform]];

    v19 = v20;
  }

  v21 = MPSGraphOperatingSystemVersion::asString(&v32);
  v22 = [v19 stringByAppendingString:v21];

  v23 = [v27 objectForKey:v22];
  if (!v23 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return v23;
}

- (void)createVersionedBytecodeFromMlirModule:(ModuleOp)module packageKey:(id)key fileHandle:(id)handle resourceStorageMode:(unint64_t)mode downgradedModuleCallback:(function_ref<void)(mlir::mps::serialization::ModuleOp
{
  v43 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  handleCopy = handle;
  if (qword_1ECE75328 != -1)
  {
    dispatch_once(&qword_1ECE75328, &__block_literal_global_173);
  }

  v11 = [qword_1ECE75320 objectForKey:keyCopy];
  if (!v11 && MTLReportFailureTypeEnabled())
  {
    __src = keyCopy;
    MTLReportFailure();
  }

  v12 = [v11 objectForKey:{@"kMPSDialect", __src}];
  v13 = [v12 componentsSeparatedByString:@"."];
  [v13 count];
  if ([v13 count] != 3 && MTLReportFailureTypeEnabled())
  {
    __srca = v12;
    MTLReportFailure();
  }

  v14 = [v11 objectForKey:{@"kMPSSPIDialect", __srca}];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = @"0.0.0";
  }

  v16 = [(__CFString *)v15 componentsSeparatedByString:@"."];
  [v16 count];
  if ([v16 count] != 3 && MTLReportFailureTypeEnabled())
  {
    __srcb = v15;
    MTLReportFailure();
  }

  __srcb = [(NSURL *)self->_temporaryPackageURL URLByAppendingPathComponent:handleCopy, __srcb];
  path = [__srcb path];
  v19 = [path cStringUsingEncoding:4];
  v20 = strlen(v19);
  if (v20 < 0x7FFFFFFFFFFFFFF8)
  {
    v21 = v20;
    if (v20 < 0x17)
    {
      v42 = v20;
      if (v20)
      {
        memmove(__dst, v19, v20);
      }

      *(__dst + v21) = 0;

      __p = 0;
      v39 = 0;
      v40 = 0;
      if (v42 >= 0)
      {
        v22 = __dst;
      }

      else
      {
        v22 = __dst[0];
      }

      if (v42 >= 0)
      {
        v23 = v42;
      }

      else
      {
        v23 = __dst[1];
      }

      mlir::openOutputFile(v22, v23, &__p, &v37);
      v24 = HIBYTE(v40);
      if (v40 < 0)
      {
        v24 = v39;
      }

      if (v24 && MTLReportFailureTypeEnabled())
      {
        if (v40 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        __srcc = [MEMORY[0x1E696AEC0] stringWithCString:p_p encoding:4];
        MTLReportFailure();
      }

      v25 = [v13 objectAtIndexedSubscript:{0, __srcc}];
      [v25 intValue];

      v26 = [v13 objectAtIndexedSubscript:1];
      [v26 intValue];

      v27 = [v13 objectAtIndexedSubscript:2];
      [v27 intValue];

      v28 = [v16 objectAtIndexedSubscript:0];
      [v28 intValue];

      v29 = [v16 objectAtIndexedSubscript:1];
      [v29 intValue];

      v30 = [v16 objectAtIndexedSubscript:2];
      [v30 intValue];

      mlir::Operation::CloneOptions::all(v31);
      mlir::Operation::clone();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

- (void)createBytecodeFromMlirModule:(ModuleOp)module fileHandle:(id)handle resourceStorageMode:(unint64_t)mode
{
  v7 = [(NSURL *)self->_temporaryPackageURL URLByAppendingPathComponent:handle];
  path = [v7 path];
  v9 = [path cStringUsingEncoding:4];
  v10 = strlen(v9);
  if (v10 < 0x7FFFFFFFFFFFFFF8)
  {
    v11 = v10;
    if (v10 < 0x17)
    {
      v24 = v10;
      if (v10)
      {
        memmove(__dst, v9, v10);
      }

      *(__dst + v11) = 0;

      __p = 0;
      v21 = 0;
      v22 = 0;
      if (v24 >= 0)
      {
        v12 = __dst;
      }

      else
      {
        v12 = __dst[0];
      }

      if (v24 >= 0)
      {
        v13 = v24;
      }

      else
      {
        v13 = __dst[1];
      }

      mlir::openOutputFile(v12, v13, &__p, &v19);
      v14 = HIBYTE(v22);
      if (v22 < 0)
      {
        v14 = v21;
      }

      if (v14 && MTLReportFailureTypeEnabled())
      {
        if (v22 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v17 = [MEMORY[0x1E696AEC0] stringWithCString:p_p encoding:4];
        MTLReportFailure();
      }

      v25.var0 = "MLIR20.0.0git";
      v25.var1 = 13;
      mlir::BytecodeWriterConfig::BytecodeWriterConfig(v18, v25);
      if (mode == 1)
      {
        mlir::BytecodeWriterConfig::setElideResourceDataFlag(v18, 1);
      }

      mlir::writeBytecodeToFile(module.state, *(v19 + 17), v18, v15);
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

- (id)createFileHandle
{
  v3 = [(NSMutableDictionary *)self->_perExtensionFileCounts objectForKeyedSubscript:@"mpsgraph"];
  unsignedLongValue = [v3 unsignedLongValue];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"model_%lu.mpsgraph", unsignedLongValue];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:unsignedLongValue + 1];
  [(NSMutableDictionary *)self->_perExtensionFileCounts setObject:v6 forKeyedSubscript:@"mpsgraph"];

  v7 = [(NSURL *)self->_temporaryPackageURL URLByAppendingPathComponent:v5];
  fileManager = self->_fileManager;
  path = [v7 path];
  [(NSFileManager *)fileManager fileExistsAtPath:path];

  v10 = self->_fileManager;
  path2 = [v7 path];
  LODWORD(v10) = [(NSFileManager *)v10 fileExistsAtPath:path2];

  if (v10 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return v5;
}

- (id)addBinaryResourceFile:(id)file withFileType:(unint64_t)type toBinaryResourceFileDict:(id)dict
{
  v32[2] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  dictCopy = dict;
  if (type)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v9 = 0;
  }

  else
  {
    v9 = @"hwx";
  }

  v10 = [(NSMutableDictionary *)self->_perExtensionFileCounts objectForKeyedSubscript:v9];
  if (!v10 && MTLReportFailureTypeEnabled())
  {
    v25 = v9;
    MTLReportFailure();
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"binary_%lu.%@", objc_msgSend(v10, "unsignedLongValue", v25), v9];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v10, "unsignedLongValue") + 1}];
  [(NSMutableDictionary *)self->_perExtensionFileCounts setObject:v12 forKeyedSubscript:v9];

  v13 = [(NSURL *)self->_temporaryPackageURL URLByAppendingPathComponent:v11];
  fileManager = self->_fileManager;
  path = [v13 path];
  [(NSFileManager *)fileManager fileExistsAtPath:path];

  v16 = self->_fileManager;
  path2 = [v13 path];
  LODWORD(v16) = [(NSFileManager *)v16 fileExistsAtPath:path2];

  if (v16 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v18 = self->_fileManager;
  v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:fileCopy];
  v30 = 0;
  LOBYTE(v18) = [(NSFileManager *)v18 copyItemAtURL:v19 toURL:v13 error:&v30];
  v20 = v30;

  if ((v18 & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    [v20 debugDescription];
    v28 = v27 = v13;
    v26 = fileCopy;
    MTLReportFailure();
  }

  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(dictCopy, "count", v26, v27, v28)];
  v31[0] = @"Type";
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:type];
  v31[1] = @"File Name";
  v32[0] = v22;
  v32[1] = v11;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
  [dictCopy setObject:v23 forKeyedSubscript:v21];

  return v21;
}

- (id)writeResources:(ArrayRef<mlir::mps::MPSResourceBlobEntry *>)resources
{
  var1 = resources.var1;
  var0 = resources.var0;
  v81[60] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:resources.var1];
  v7 = v6;
  if (!var1)
  {
    v16 = v6;
    goto LABEL_100;
  }

  selfCopy = self;
  v66 = v6;
  v79 = v81;
  v80 = 0xA00000000;
  if (var1 >= 0xB)
  {
    __dst[0] = 0;
    v8 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v79, v81, var1, 48, __dst);
    v9 = v79;
    if (v80)
    {
      v10 = v79 + 48 * v80;
      v11 = v8;
      do
      {
        v12 = *v9;
        *(v11 + 2) = *(v9 + 2);
        *v11 = v12;
        *(v9 + 1) = 0;
        *(v9 + 2) = 0;
        *v9 = 0;
        v13 = *(v9 + 24);
        *(v11 + 5) = *(v9 + 5);
        *(v11 + 24) = v13;
        v11 += 48;
        v9 += 48;
      }

      while (v9 != v10);
      v9 = v79;
      if (v80)
      {
        v14 = (v79 + 48 * v80 - 48);
        v15 = -48 * v80;
        do
        {
          if (*(v14 + 23) < 0)
          {
            operator delete(*v14);
          }

          v14 -= 6;
          v15 += 48;
        }

        while (v15);
        v9 = v79;
      }
    }

    v17 = __dst[0];
    if (v9 != v81)
    {
      free(v9);
    }

    v79 = v8;
    HIDWORD(v80) = v17;
  }

  v18 = 8 * var1;
  do
  {
    v19 = *var0;
    v20 = *var0 + 16;
    if (!*(*var0 + 80))
    {
      v20 = 0;
    }

    v21 = *(v19 + 1);
    if (v21 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v22 = *v19;
    v67 = *v20;
    v23 = *(v20 + 16);
    if (v21 >= 0x17)
    {
      operator new();
    }

    v76 = *(v19 + 1);
    if (v21)
    {
      memmove(__dst, v22, v21);
    }

    *(__dst + v21) = 0;
    v77 = v67;
    v78 = v23;
    v24 = v79;
    if (v80 >= HIDWORD(v80))
    {
      if (v79 <= __dst && v79 + 48 * v80 > __dst)
      {
        llvm::SmallVectorTemplateBase<support::ResourceStorage::ResourceWriteInfo,false>::grow(&v79, v80 + 1);
        v29 = (__dst - v24);
        v24 = v79;
        v25 = &v29[v79];
      }

      else
      {
        llvm::SmallVectorTemplateBase<support::ResourceStorage::ResourceWriteInfo,false>::grow(&v79, v80 + 1);
        v25 = __dst;
        v24 = v79;
      }
    }

    else
    {
      v25 = __dst;
    }

    v26 = &v24[48 * v80];
    v27 = *v25;
    *(v26 + 2) = v25[2];
    *v26 = v27;
    v25[1] = 0;
    v25[2] = 0;
    *v25 = 0;
    v28 = *(v25 + 3);
    *(v26 + 5) = v25[5];
    *(v26 + 24) = v28;
    LODWORD(v80) = v80 + 1;
    if (v76 < 0)
    {
      operator delete(__dst[0]);
    }

    ++var0;
    v18 -= 8;
  }

  while (v18);
  temporaryPackageURL = selfCopy->_temporaryPackageURL;
  v31 = +[MPSGraphPackage getResourceFileName];
  v32 = [(NSURL *)temporaryPackageURL URLByAppendingPathComponent:v31];
  path = [v32 path];
  v34 = path;
  v35 = [path cStringUsingEncoding:4];
  v36 = strlen(v35);
  if (v36 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v37 = v36;
  if (v36 >= 0x17)
  {
    operator new();
  }

  v76 = v36;
  if (v36)
  {
    memmove(__dst, v35, v36);
  }

  *(__dst + v37) = 0;

  v73[0] = 0;
  v73[1] = 0;
  v74 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0x1000000000;
  if (v76 >= 0)
  {
    v38 = __dst;
  }

  else
  {
    v38 = __dst[0];
  }

  if (v76 >= 0)
  {
    v39 = v76;
  }

  else
  {
    v39 = __dst[1];
  }

  __p[0] = v79;
  __p[1] = v80;
  if ((support::ResourceStorage::add(v38, v39, __p, &v70, v73) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    if (v74 >= 0)
    {
      v63 = v73;
    }

    else
    {
      v63 = v73[0];
    }

    v64 = [MEMORY[0x1E696AEC0] stringWithCString:v63 encoding:4];
    MTLReportFailure();
  }

  if (v71)
  {
    v40 = v70;
    if (*v70)
    {
      v41 = *v70 == -8;
    }

    else
    {
      v41 = 1;
    }

    if (v41)
    {
      do
      {
        v43 = *(v40 + 1);
        v40 += 8;
        v42 = v43;
        if (v43)
        {
          v44 = v42 == -8;
        }

        else
        {
          v44 = 1;
        }
      }

      while (v44);
    }

    v45 = v70 + 8 * v71;
    if (v40 != v45)
    {
      v46 = *v40;
      do
      {
        v47 = *v46;
        if (*v46 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v48 = MEMORY[0x1E696AEC0];
        if (v47 >= 0x17)
        {
          operator new();
        }

        v69 = *v46;
        if (v47)
        {
          memmove(__p, v46 + 2, v47);
        }

        *(__p + v47) = 0;
        if (v69 >= 0)
        {
          v49 = __p;
        }

        else
        {
          v49 = __p[0];
        }

        v50 = [v48 stringWithCString:v49 encoding:{4, v64}];
        if (v69 < 0)
        {
          operator delete(__p[0]);
        }

        v51 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v46[1]];
        [v66 setObject:v51 forKeyedSubscript:v50];

        do
        {
          v52 = *(v40 + 1);
          v40 += 8;
          v46 = v52;
          if (v52)
          {
            v53 = v46 + 1 == 0;
          }

          else
          {
            v53 = 1;
          }
        }

        while (v53);
      }

      while (v40 != v45);
    }
  }

  v7 = v66;
  v54 = v66;
  if (HIDWORD(v71) && v71)
  {
    v55 = 0;
    do
    {
      v56 = *(v70 + v55);
      if (v56 != -8 && v56 != 0)
      {
        llvm::deallocate_buffer(v56, (*v56 + 17));
      }

      v55 += 8;
    }

    while (8 * v71 != v55);
  }

  free(v70);
  if ((SHIBYTE(v74) & 0x80000000) == 0)
  {
    if ((v76 & 0x80000000) == 0)
    {
      goto LABEL_89;
    }

LABEL_97:
    operator delete(__dst[0]);
    v58 = v79;
    v59 = v80;
    if (v80)
    {
      goto LABEL_90;
    }

LABEL_98:
    if (v58 == v81)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  operator delete(v73[0]);
  if (v76 < 0)
  {
    goto LABEL_97;
  }

LABEL_89:
  v58 = v79;
  v59 = v80;
  if (!v80)
  {
    goto LABEL_98;
  }

LABEL_90:
  v60 = &v58[6 * v59 - 6];
  v61 = -48 * v59;
  do
  {
    if (*(v60 + 23) < 0)
    {
      operator delete(*v60);
    }

    v60 -= 48;
    v61 += 48;
  }

  while (v61);
  v58 = v79;
  if (v79 != v81)
  {
LABEL_99:
    free(v58);
  }

LABEL_100:

  return v7;
}

+ (void)readResources:(id)resources fromURL:(id)l error:(id *)error usingAllocator:(function_ref<char *)(llvm:(unsigned long)long :(unsigned long)long StringRef
{
  v77 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  lCopy = l;
  v57 = resourcesCopy;
  if ([resourcesCopy count])
  {
    v54 = lCopy;
    path = [lCopy path];
    v10 = [path cStringUsingEncoding:4];
    v11 = strlen(v10);
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      operator new();
    }

    v71 = v11;
    if (v11)
    {
      memmove(__dst, v10, v11);
    }

    *(__dst + v12) = 0;

    __p[0] = 0;
    __p[1] = 0;
    v69 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0x1000000000;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v13 = resourcesCopy;
    v14 = [v13 countByEnumeratingWithState:&v61 objects:v76 count:16];
    if (v14)
    {
      v58 = *v62;
      do
      {
        v15 = 0;
        do
        {
          if (*v62 != v58)
          {
            objc_enumerationMutation(v13);
          }

          v16 = *(*(&v61 + 1) + 8 * v15);
          v60 = [v13 objectForKeyedSubscript:v16];
          unsignedLongLongValue = [v60 unsignedLongLongValue];
          v18 = v16;
          uTF8String = [v16 UTF8String];
          v22 = uTF8String;
          if (uTF8String)
          {
            v23 = strlen(uTF8String);
          }

          else
          {
            v23 = 0;
          }

          v24 = llvm::StringMapImpl::hash(v22, v23, v20, v21);
          v25 = llvm::StringMapImpl::LookupBucketFor(&v65, v22, v23, v24);
          v26 = v65;
          v27 = *(v65 + v25);
          if (v27 == -8)
          {
            LODWORD(v67) = v67 - 1;
          }

          else if (v27)
          {
            goto LABEL_18;
          }

          buffer = llvm::allocate_buffer(v23 + 17, 8uLL);
          v29 = buffer;
          v59 = unsignedLongLongValue;
          v30 = v14;
          v31 = v13;
          v32 = (buffer + 2);
          if (v23)
          {
            memcpy(buffer + 2, v22, v23);
          }

          v32[v23] = 0;
          *v29 = v23;
          v29[1] = 0;
          v26[v25] = v29;
          ++HIDWORD(v66);
          v13 = v31;
          v33 = llvm::StringMapImpl::RehashTable(&v65, v25);
          v14 = v30;
          unsignedLongLongValue = v59;
          v34 = (v65 + 8 * v33);
          v27 = *v34;
          if (*v34)
          {
            v35 = v27 == -8;
          }

          else
          {
            v35 = 1;
          }

          if (v35)
          {
            do
            {
              v36 = v34[1];
              ++v34;
              v27 = v36;
              if (v36)
              {
                v37 = v27 == -8;
              }

              else
              {
                v37 = 1;
              }
            }

            while (v37);
          }

LABEL_18:
          *(v27 + 8) = unsignedLongLongValue;

          ++v15;
        }

        while (v15 != v14);
        v38 = [v13 countByEnumeratingWithState:&v61 objects:v76 count:16];
        v14 = v38;
      }

      while (v38);
    }

    if (v71 >= 0)
    {
      v39 = __dst;
    }

    else
    {
      v39 = __dst[0];
    }

    if (v71 >= 0)
    {
      v40 = v71;
    }

    else
    {
      v40 = __dst[1];
    }

    if (support::ResourceStorage::read(v39, v40, &v65, a6.var0, a6.var1, __p))
    {
LABEL_52:
      if (HIDWORD(v66) && v66)
      {
        v49 = 0;
        do
        {
          v50 = *(v65 + v49);
          if (v50 != -8 && v50 != 0)
          {
            llvm::deallocate_buffer(v50, (*v50 + 17));
          }

          v49 += 8;
        }

        while (8 * v66 != v49);
      }

      free(v65);
      if (SHIBYTE(v69) < 0)
      {
        operator delete(__p[0]);
        lCopy = v54;
        if ((v71 & 0x80000000) == 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        lCopy = v54;
        if ((v71 & 0x80000000) == 0)
        {
          goto LABEL_63;
        }
      }

      operator delete(__dst[0]);
      goto LABEL_63;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v52 = __p;
      if (v69 < 0)
      {
        v52 = __p[0];
      }

      *buf = 136315138;
      v75 = v52;
      _os_log_error_impl(&dword_1DF9BF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      v41 = 0x1E696A000;
      if (!error)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v41 = 0x1E696A000uLL;
      if (!error)
      {
        goto LABEL_47;
      }
    }

    if (v69 >= 0)
    {
      v42 = __p;
    }

    else
    {
      v42 = __p[0];
    }

    v43 = [*(v41 + 3776) stringWithCString:v42 encoding:4];
    v44 = MPSGraphReportFailure(&stru_1F5B5DFD0.isa, v43);

    v45 = MEMORY[0x1E696ABC0];
    v72 = *MEMORY[0x1E696A578];
    v46 = [*(v41 + 3776) stringWithFormat:@"%s:%d:: %@ ", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/MPSGraphComputePackage.mm", 814, v44];
    v73 = v46;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    *error = [v45 errorWithDomain:@"MPSGraph" code:-1 userInfo:v47];

LABEL_47:
    if (MTLReportFailureTypeEnabled())
    {
      if (v69 >= 0)
      {
        v48 = __p;
      }

      else
      {
        v48 = __p[0];
      }

      v53 = [*(v41 + 3776) stringWithCString:v48 encoding:4];
      MTLReportFailure();
    }

    goto LABEL_52;
  }

LABEL_63:
}

- (void)setMLIRLibrary:(id)library withPackageKey:(id)key
{
  libraryCopy = library;
  keyCopy = key;
  getMLIRLibrary = [(MPSGraphPackage *)self getMLIRLibrary];
  [getMLIRLibrary updateWithMLIRLibrary:libraryCopy];
  getDict = [getMLIRLibrary getDict];
  v9 = [(NSMutableDictionary *)self->_plistRoot objectForKeyedSubscript:@"Package Version"];
  [v9 setObject:getDict forKeyedSubscript:keyCopy];
}

- (id)findLatestPackageKey
{
  v2 = [(NSMutableDictionary *)self->_plistRoot objectForKeyedSubscript:@"Package Version"];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__MPSGraphPackage_findLatestPackageKey__block_invoke;
  v5[3] = &unk_1E86D4AD8;
  v5[4] = &v6;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__MPSGraphPackage_findLatestPackageKey__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  MPSGraphOperatingSystemVersion::MPSGraphOperatingSystemVersion(&v16, v4);
  if (v16.var0 < 4 || (v16.var0 == 4 ? (v5 = v16.var1 == 0) : (v5 = 0), v5 ? (v6 = v16.var2 <= 20) : (v6 = 0), v6))
  {
    *&v16.var0 = xmmword_1E09A7130;
    v16.var2 = 21;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"6.1.5"];
  MPSGraphOperatingSystemVersion::MPSGraphOperatingSystemVersion(&v15, v7);
  if (v15.var0 < 4 || *&v15.var0 == 4 && v15.var2 <= 20)
  {
    *&v15.var0 = xmmword_1E09A7130;
    v15.var2 = 21;
  }

  if (v16.var0 < v15.var0 || v16.var0 == v15.var0 && (v16.var1 < v15.var1 || v16.var1 == v15.var1 && v16.var2 <= v15.var2))
  {
    v8 = *(*(a1 + 32) + 8);
    v11 = *(v8 + 40);
    v9 = (v8 + 40);
    v10 = v11;
    if (v11)
    {
      MPSGraphOperatingSystemVersion::MPSGraphOperatingSystemVersion(&v15, v10);
      var0 = v15.var0;
      if (v15.var0 < 4 || (var1 = v15.var1, var2 = v15.var2, *&v15.var0 == 4) && v15.var2 <= 20)
      {
        var1 = 0;
        var0 = 4;
        var2 = 21;
      }

      if (v16.var0 <= var0 && (v16.var0 != var0 || v16.var1 <= var1 && (v16.var1 != var1 || v16.var2 <= var2)))
      {
        goto LABEL_33;
      }

      v9 = (*(*(a1 + 32) + 8) + 40);
    }

    objc_storeStrong(v9, a2);
  }

LABEL_33:
}

- (id)findLatestPackage
{
  v3 = [(NSMutableDictionary *)self->_plistRoot objectForKeyedSubscript:@"Package Version"];
  if (v3)
  {
    findLatestPackageKey = [(MPSGraphPackage *)self findLatestPackageKey];
    v5 = [v3 objectForKeyedSubscript:findLatestPackageKey];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getMLIRLibrary
{
  findLatestPackage = [(MPSGraphPackage *)self findLatestPackage];
  if (findLatestPackage)
  {
    v3 = [[MPSGraphPackageMLIRLibrary alloc] initWithMLIRLibraryDict:findLatestPackage];
  }

  else
  {
    v3 = objc_alloc_init(MPSGraphPackageMLIRLibrary);
  }

  v4 = v3;

  return v4;
}

- (id)getPlistData
{
  plistRoot = self->_plistRoot;
  v6 = 0;
  v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:plistRoot format:100 options:0 error:&v6];
  v4 = v6;
  if (!v3 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return v3;
}

- (void)copyDataFiles:(ArrayRef<std:(id)files :(Location)a5 string>)a3 currentBasePath:location:
{
  var1 = a3.var1;
  var0 = a3.var0;
  filesCopy = files;
  uTF8String = [filesCopy UTF8String];
  v10 = uTF8String;
  if (uTF8String)
  {
    v11 = strlen(uTF8String);
  }

  else
  {
    v11 = 0;
  }

  path = [(NSURL *)self->_temporaryPackageURL path];
  uTF8String2 = [path UTF8String];
  v14 = uTF8String2;
  if (uTF8String2)
  {
    v15 = strlen(uTF8String2);
  }

  else
  {
    v15 = 0;
  }

  v16 = mlir::mps::copyFilesToNewBasePath(a5.var0.var0, v10, v11, v14, v15, var0, var1);

  if (!v16 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end
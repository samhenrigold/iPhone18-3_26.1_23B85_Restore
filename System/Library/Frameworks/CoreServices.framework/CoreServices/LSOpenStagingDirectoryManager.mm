@interface LSOpenStagingDirectoryManager
+ (id)sharedServerInstance;
- (LSOpenStagingDirectoryManager)initWithIOPersonality:(id)personality;
- (id).cxx_construct;
- (id)_locked_stagingDirectoryForKey:(unint64_t)key;
- (id)_stagingDirectoryForKeyRefreshingIfNecessary:(unint64_t)necessary;
- (id)mainDataVolumeStagingURLWithError:(id *)error;
- (id)stagingDirectoryForCloningFileHandle:(id)handle error:(id *)error;
- (id)stagingDirectoryForCloningURL:(id)l error:(id *)error;
- (optional<unsigned)bootstrapBaseStagingDirectoryNode:(id)node error:(id *)error;
- (void)_locked_updatePersonaStagingDirectories;
@end

@implementation LSOpenStagingDirectoryManager

- (optional<unsigned)bootstrapBaseStagingDirectoryNode:(id)node error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  LOBYTE(v20) = 0;
  LOBYTE(v21) = 0;
  v20 = [(LSOpenStagingDirectoryManagerIOPersonality *)self->_ioPersonality stagingDirectoryKeyForNode:nodeCopy error:error];
  LOBYTE(v21) = v7;
  if (v7)
  {
    v8 = nodeCopy;
    *buf = 0;
    *&buf[8] = v8;
    *&buf[16] = -1;
    v9 = std::__hash_table<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,LaunchServices::OpenStaging::StagingDirectoryInfo>(&self->_stagingDirectoryInfoMap.__table_.__bucket_list_.__ptr_, &v20, &v20, buf);
    v11 = v10;
    LaunchServices::OpenStaging::StagingDirectoryInfo::~StagingDirectoryInfo(buf);
    if (v11)
    {
      v13 = _LSDefaultLog(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%llu", v20];
        v15 = [v8 URL];
        *buf = 138412546;
        *&buf[4] = v14;
        *&buf[12] = 2112;
        *&buf[14] = v15;
        _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "Configured open staging directory for key %@ at %@", buf, 0x16u);
      }
    }

    else
    {
      v13 = _LSDefaultLog(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%llu", v20];
        v17 = [v9[4] URL];
        *buf = 138412546;
        *&buf[4] = v16;
        *&buf[12] = 2112;
        *&buf[14] = v17;
        _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "Already have a staging directory for key %@ at %@", buf, 0x16u);
      }
    }
  }

  v18.__val_ = v20;
  v19 = v21;
  result.__engaged_ = v19;
  result.var0 = v18;
  return result;
}

- (LSOpenStagingDirectoryManager)initWithIOPersonality:(id)personality
{
  personalityCopy = personality;
  v36.receiver = self;
  v36.super_class = LSOpenStagingDirectoryManager;
  v6 = [(LSOpenStagingDirectoryManager *)&v36 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ioPersonality, personality);
    v7->_personaGeneration = 0;
    if (v7->_mainStagingDirectoryKey.__engaged_)
    {
      v7->_mainStagingDirectoryKey.__engaged_ = 0;
    }

    ioPersonality = v7->_ioPersonality;
    v35 = 0;
    v9 = ioPersonality;
    mainUserContainerURL = [(LSOpenStagingDirectoryManagerIOPersonality *)v9 mainUserContainerURL];
    v11 = [(LSOpenStagingDirectoryManagerIOPersonality *)v9 makeStagingDirectoryNodeInContainer:mainUserContainerURL error:&v35];

    v12 = v35;
    v13 = v12;
    if (v11)
    {
      v34 = v12;
      v14 = [(LSOpenStagingDirectoryManager *)v7 bootstrapBaseStagingDirectoryNode:v11 error:&v34];
      v16 = v15;
      v17 = v34;

      v7->_mainStagingDirectoryKey.var0.__val_ = v14;
      v7->_mainStagingDirectoryKey.__engaged_ = v16;
      if (v16)
      {
        goto LABEL_12;
      }

      v19 = _LSDefaultLog(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [LSOpenStagingDirectoryManager initWithIOPersonality:];
      }
    }

    else
    {
      v19 = _LSDefaultLog(v12);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [LSOpenStagingDirectoryManager initWithIOPersonality:];
      }

      v17 = v13;
    }

LABEL_12:
    v20 = v7->_ioPersonality;
    v33 = v17;
    v21 = v20;
    mainSystemContainerURL = [(LSOpenStagingDirectoryManagerIOPersonality *)v21 mainSystemContainerURL];
    v23 = [(LSOpenStagingDirectoryManagerIOPersonality *)v21 makeStagingDirectoryNodeInContainer:mainSystemContainerURL error:&v33];

    v24 = v33;
    if (v23)
    {
      v32 = v24;
      [(LSOpenStagingDirectoryManager *)v7 bootstrapBaseStagingDirectoryNode:v23 error:&v32];
      v27 = v26;
      v28 = v32;

      if (v27)
      {
LABEL_20:

        [(LSOpenStagingDirectoryManager *)v7 _locked_updatePersonaStagingDirectories];
        goto LABEL_21;
      }

      v30 = _LSDefaultLog(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        [LSOpenStagingDirectoryManager initWithIOPersonality:];
      }
    }

    else
    {
      v30 = _LSDefaultLog(v25);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [LSOpenStagingDirectoryManager initWithIOPersonality:];
      }

      v28 = v24;
    }

    goto LABEL_20;
  }

LABEL_21:

  return v7;
}

+ (id)sharedServerInstance
{
  _LSAssertRunningInServer("+[LSOpenStagingDirectoryManager sharedServerInstance]", a2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__LSOpenStagingDirectoryManager_sharedServerInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[LSOpenStagingDirectoryManager sharedServerInstance]::onceToken != -1)
  {
    dispatch_once(&+[LSOpenStagingDirectoryManager sharedServerInstance]::onceToken, block);
  }

  v3 = +[LSOpenStagingDirectoryManager sharedServerInstance]::sharedInstance;

  return v3;
}

void __53__LSOpenStagingDirectoryManager_sharedServerInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = objc_alloc_init(LSServerOpenStagingIOPersonality);
  v2 = [v1 initWithIOPersonality:?];
  v3 = +[LSOpenStagingDirectoryManager sharedServerInstance]::sharedInstance;
  +[LSOpenStagingDirectoryManager sharedServerInstance]::sharedInstance = v2;
}

- (void)_locked_updatePersonaStagingDirectories
{
  OUTLINED_FUNCTION_17(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(&dword_18162D000, v0, OS_LOG_TYPE_DEBUG, "Persona generation %llu of staging directory manager is current.", v1, 0xCu);
}

- (id)_locked_stagingDirectoryForKey:(unint64_t)key
{
  keyCopy = key;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>>>::find<unsigned long long>(&self->_stagingDirectoryInfoMap.__table_.__bucket_list_.__ptr_, &keyCopy);
  if (v3)
  {
    v3 = [v3[4] URL];
  }

  return v3;
}

- (id)_stagingDirectoryForKeyRefreshingIfNecessary:(unint64_t)necessary
{
  os_unfair_lock_lock(&self->_mutex);
  [(LSOpenStagingDirectoryManager *)self _locked_updatePersonaStagingDirectories];
  v5 = [(LSOpenStagingDirectoryManager *)self _locked_stagingDirectoryForKey:necessary];
  os_unfair_lock_unlock(&self->_mutex);

  return v5;
}

- (id)stagingDirectoryForCloningURL:(id)l error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = [[FSNode alloc] initWithURL:lCopy flags:0 error:error];
  v8 = [(LSOpenStagingDirectoryManagerIOPersonality *)self->_ioPersonality stagingDirectoryKeyForNode:v7 error:error];
  if (v9)
  {
    v10 = [(LSOpenStagingDirectoryManager *)self _stagingDirectoryForKeyRefreshingIfNecessary:v8];
    if (v10)
    {
      goto LABEL_7;
    }

    lCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not find open staging directory for URL %@", lCopy];
    v12 = lCopy;
    if (error)
    {
      v15 = *MEMORY[0x1E696A278];
      v16[0] = lCopy;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 2, v13, "[LSOpenStagingDirectoryManager stagingDirectoryForCloningURL:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenStagingDirectoryManager.mm", 398);
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)stagingDirectoryForCloningFileHandle:(id)handle error:(id *)error
{
  handleCopy = handle;
  v7 = [(LSOpenStagingDirectoryManagerIOPersonality *)self->_ioPersonality stagingDirectoryKeyForFileHandle:handleCopy error:error];
  if (v8)
  {
    v9 = [(LSOpenStagingDirectoryManager *)self _stagingDirectoryForKeyRefreshingIfNecessary:v7];
    v10 = v9;
    if (error && !v9)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 2, 0, "[LSOpenStagingDirectoryManager stagingDirectoryForCloningFileHandle:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenStagingDirectoryManager.mm", 410);
      *error = v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)mainDataVolumeStagingURLWithError:(id *)error
{
  v9[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_mutex);
  if (!self->_mainStagingDirectoryKey.__engaged_)
  {
    os_unfair_lock_unlock(&self->_mutex);
    if (!error)
    {
      goto LABEL_7;
    }

LABEL_6:
    v8 = *MEMORY[0x1E696A278];
    v9[0] = @"Could not find open staging directory for main data volume?";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 2, v6, "[LSOpenStagingDirectoryManager mainDataVolumeStagingURLWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenStagingDirectoryManager.mm", 428);

    goto LABEL_7;
  }

  v5 = [(LSOpenStagingDirectoryManager *)self _locked_stagingDirectoryForKey:self->_mainStagingDirectoryKey.var0.__val_];
  os_unfair_lock_unlock(&self->_mutex);
  if (v5)
  {
    goto LABEL_8;
  }

  if (error)
  {
    goto LABEL_6;
  }

LABEL_7:
  v5 = 0;
LABEL_8:

  return v5;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  *(self + 72) = 0;
  *(self + 80) = 0;
  return self;
}

- (void)initWithIOPersonality:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_4(&dword_18162D000, v0, v1, "Could not find volume identifier for main staging directory node %@: %@");
}

- (void)initWithIOPersonality:.cold.2()
{
  OUTLINED_FUNCTION_17(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithIOPersonality:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_4(&dword_18162D000, v0, v1, "Could not find volume identifier for system staging directory node %@: %@");
}

- (void)initWithIOPersonality:.cold.4()
{
  OUTLINED_FUNCTION_17(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end
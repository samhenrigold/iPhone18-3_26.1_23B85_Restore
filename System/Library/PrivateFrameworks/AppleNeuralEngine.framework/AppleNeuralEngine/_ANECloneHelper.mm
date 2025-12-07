@interface _ANECloneHelper
+ (BOOL)shouldSkipCloneFor:(id)for isEncryptedModel:(BOOL)model;
+ (id)cloneIfWritable:(id)writable isEncryptedModel:(BOOL)model cloneDirectory:(id)directory;
@end

@implementation _ANECloneHelper

+ (BOOL)shouldSkipCloneFor:(id)for isEncryptedModel:(BOOL)model
{
  modelCopy = model;
  v34 = *MEMORY[0x1E69E9840];
  forCopy = for;
  modelURL = [forCopy modelURL];
  v27 = 0;
  v8 = *MEMORY[0x1E695DDC0];
  v26 = 0;
  v9 = [modelURL getResourceValue:&v27 forKey:v8 error:&v26];
  v10 = v27;
  v11 = v26;

  if (v9 && [v10 BOOLValue])
  {
    v12 = +[_ANELog common];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      +[_ANECloneHelper shouldSkipCloneFor:isEncryptedModel:];
    }

    LOBYTE(v13) = 1;
    v14 = 1;
    v15 = v11;
  }

  else
  {
    modelURL2 = [forCopy modelURL];
    v25 = 0;
    v17 = *MEMORY[0x1E695DDB0];
    v24 = 0;
    v13 = [modelURL2 getResourceValue:&v25 forKey:v17 error:&v24];
    v12 = v25;
    v15 = v24;

    if (v13 && [v12 BOOLValue])
    {
      v18 = +[_ANELog common];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        +[_ANECloneHelper shouldSkipCloneFor:isEncryptedModel:];
      }

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  if (modelCopy)
  {
    v19 = +[_ANELog common];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      +[_ANECloneHelper shouldSkipCloneFor:isEncryptedModel:];
    }

    v14 = 1;
  }

  if ((v13 & 1) == 0)
  {
    v20 = +[_ANELog common];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      modelURL3 = [forCopy modelURL];
      *buf = 138412802;
      v29 = v22;
      v30 = 2112;
      v31 = modelURL3;
      v32 = 2112;
      v33 = v15;
      _os_log_error_impl(&dword_1AD246000, v20, OS_LOG_TYPE_ERROR, "%@: modelURL=%@ getResourceValue:forKey:error: FAILED. err=%@", buf, 0x20u);
    }
  }

  return v14;
}

+ (id)cloneIfWritable:(id)writable isEncryptedModel:(BOOL)model cloneDirectory:(id)directory
{
  modelCopy = model;
  v79 = *MEMORY[0x1E69E9840];
  writableCopy = writable;
  directoryCopy = directory;
  v11 = objc_autoreleasePoolPush();
  v12 = +[_ANELog common];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v51 = NSStringFromSelector(a2);
    *buf = 138412802;
    v68 = v51;
    v69 = 2112;
    v70 = writableCopy;
    v71 = 2112;
    v72 = directoryCopy;
    _os_log_debug_impl(&dword_1AD246000, v12, OS_LOG_TYPE_DEBUG, "%@: START: model=%@ : cloneDirectory=%@", buf, 0x20u);
  }

  v13 = [self shouldSkipCloneFor:writableCopy isEncryptedModel:modelCopy];
  v14 = +[_ANELog common];
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = NSStringFromSelector(a2);
      modelURL = [writableCopy modelURL];
      *buf = 138412546;
      v68 = v16;
      v69 = 2112;
      v70 = modelURL;
      _os_log_impl(&dword_1AD246000, v15, OS_LOG_TYPE_INFO, "%@: modelURL=%@. Skipping copyfile()", buf, 0x16u);
    }

    modelURL2 = [writableCopy modelURL];
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      +[_ANECloneHelper cloneIfWritable:isEncryptedModel:cloneDirectory:];
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v66 = 0;
    modelURL3 = [writableCopy modelURL];
    path = [modelURL3 path];
    v22 = [defaultManager fileExistsAtPath:path isDirectory:&v66];

    if (v22)
    {
      modelURL4 = [writableCopy modelURL];
      path2 = [modelURL4 path];

      v61 = v11;
      if ((v66 & 1) == 0)
      {
        modelURL5 = [writableCopy modelURL];
        path3 = [modelURL5 path];
        stringByDeletingLastPathComponent = [path3 stringByDeletingLastPathComponent];

        path2 = stringByDeletingLastPathComponent;
      }

      v28 = [_ANEHashEncoding hexStringForString:path2];
      lastPathComponent = [path2 lastPathComponent];
      v60 = v28;
      v30 = [directoryCopy stringByAppendingPathComponent:v28];
      v59 = lastPathComponent;
      v31 = [v30 stringByAppendingPathComponent:lastPathComponent];
      v65 = 0;
      LOBYTE(v28) = [defaultManager removeItemAtPath:v31 error:&v65];
      v32 = v65;
      v63 = v30;
      if ((v28 & 1) == 0)
      {
        v33 = +[_ANELog common];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = NSStringFromSelector(a2);
          *buf = 138412802;
          v68 = v34;
          v69 = 2112;
          v70 = v31;
          v71 = 2112;
          v72 = v32;
          _os_log_impl(&dword_1AD246000, v33, OS_LOG_TYPE_INFO, "%@: %@ could not be removed err=%@", buf, 0x20u);

          v30 = v63;
        }
      }

      v64 = v32;
      v35 = [defaultManager createDirectoryAtPath:v30 withIntermediateDirectories:1 attributes:0 error:&v64];
      v36 = v64;

      if ((v35 & 1) == 0)
      {
        v37 = +[_ANELog common];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = NSStringFromSelector(a2);
          *buf = 138412802;
          v68 = v38;
          v69 = 2112;
          v70 = v63;
          v71 = 2112;
          v72 = v36;
          _os_log_impl(&dword_1AD246000, v37, OS_LOG_TYPE_INFO, "%@: %@ could not be created err=%@", buf, 0x20u);
        }
      }

      aSelector = a2;
      v62 = directoryCopy;
      uTF8String = [path2 UTF8String];
      uTF8String2 = [v31 UTF8String];
      v41 = copyfile_state_alloc();
      v42 = +[_ANELog common];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v57 = NSStringFromSelector(aSelector);
        *buf = 138413058;
        v68 = v57;
        v69 = 2080;
        v70 = uTF8String;
        v71 = 2080;
        v72 = uTF8String2;
        v73 = 1024;
        v74 = 819214;
        _os_log_debug_impl(&dword_1AD246000, v42, OS_LOG_TYPE_DEBUG, "%@: --> Calling copyfile(src:%s, dst:%s, flags:0x%x)", buf, 0x26u);
      }

      v43 = copyfile(uTF8String, uTF8String2, v41, 0xC800Eu);
      copyfile_state_free(v41);
      if (v43 < 0)
      {
        v44 = +[_ANELog common];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v53 = NSStringFromSelector(aSelector);
          v54 = *__error();
          v55 = __error();
          v56 = strerror(*v55);
          *buf = 138413570;
          v68 = v53;
          v69 = 2080;
          v70 = uTF8String;
          v71 = 2080;
          v72 = uTF8String2;
          v73 = 1024;
          v74 = 819214;
          v75 = 1024;
          v76 = v54;
          v77 = 2080;
          v78 = v56;
          _os_log_error_impl(&dword_1AD246000, v44, OS_LOG_TYPE_ERROR, "%@: copyfile(%s, %s, %o) FAILED with (%d : %s)", buf, 0x36u);
        }

        modelURL2 = 0;
      }

      else
      {
        [MEMORY[0x1E696AC08] ane_addWriteModeForPath:v31];
        v44 = [v31 copy];
        if ((v66 & 1) == 0)
        {
          modelURL6 = [writableCopy modelURL];
          path4 = [modelURL6 path];
          lastPathComponent2 = [path4 lastPathComponent];

          v48 = [v31 stringByAppendingPathComponent:lastPathComponent2];

          v44 = v48;
        }

        modelURL2 = [MEMORY[0x1E695DFF8] fileURLWithPath:v44 isDirectory:{0, v57}];
        v49 = +[_ANELog common];
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          v52 = NSStringFromSelector(aSelector);
          *buf = 138412802;
          v68 = v52;
          v69 = 2112;
          v70 = modelURL2;
          v71 = 2112;
          v72 = v44;
          _os_log_debug_impl(&dword_1AD246000, v49, OS_LOG_TYPE_DEBUG, "%@: END: modelURL=%@ : dstNameAfterClone=%@", buf, 0x20u);
        }
      }

      v11 = v61;
      directoryCopy = v62;
    }

    else
    {
      v36 = +[_ANELog common];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        +[_ANECloneHelper cloneIfWritable:isEncryptedModel:cloneDirectory:];
      }

      modelURL2 = 0;
    }
  }

  objc_autoreleasePoolPop(v11);

  return modelURL2;
}

+ (void)shouldSkipCloneFor:isEncryptedModel:.cold.1()
{
  OUTLINED_FUNCTION_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4_0() modelURL];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_10(&dword_1AD246000, v3, v4, "%@: modelURL=%@ is on read-only filesystem. Skipping clone", v5, v6, v7, v8);
}

+ (void)shouldSkipCloneFor:isEncryptedModel:.cold.2()
{
  OUTLINED_FUNCTION_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4_0() modelURL];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_10(&dword_1AD246000, v3, v4, "%@: modelURL=%@ is on root filesystem. Skipping clone", v5, v6, v7, v8);
}

+ (void)shouldSkipCloneFor:isEncryptedModel:.cold.3()
{
  OUTLINED_FUNCTION_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4_0() modelURL];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_10(&dword_1AD246000, v3, v4, "%@: modelURL=%@ is encrypted. Skipping clone", v5, v6, v7, v8);
}

+ (void)cloneIfWritable:isEncryptedModel:cloneDirectory:.cold.1()
{
  OUTLINED_FUNCTION_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4_0() modelURL];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_10(&dword_1AD246000, v3, v4, "%@: modelURL=%@ is writable. Attempting copyfile()", v5, v6, v7, v8);
}

+ (void)cloneIfWritable:isEncryptedModel:cloneDirectory:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_4_0() modelURL];
  OUTLINED_FUNCTION_0_12();
  _os_log_error_impl(&dword_1AD246000, v0, OS_LOG_TYPE_ERROR, "%@: modelURL=%@ does not exist", v4, 0x16u);
}

@end
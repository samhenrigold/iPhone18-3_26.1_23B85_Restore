@interface NSFileManager(PosterFoundation)
- (uint64_t)pf_replaceURL:()PosterFoundation withURL:error:;
@end

@implementation NSFileManager(PosterFoundation)

- (uint64_t)pf_replaceURL:()PosterFoundation withURL:error:
{
  v109[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if (!v10)
  {
    [NSFileManager(PosterFoundation) pf_replaceURL:a2 withURL:self error:?];
  }

  v12 = v11;
  if (!v11)
  {
    [NSFileManager(PosterFoundation) pf_replaceURL:a2 withURL:self error:?];
  }

  v104 = 0;
  v13 = *MEMORY[0x1E695DAD0];
  [v10 getResourceValue:&v104 forKey:*MEMORY[0x1E695DAD0] error:0];
  v14 = v104;
  v103 = 0;
  v15 = *MEMORY[0x1E695DE78];
  [v10 getResourceValue:&v103 forKey:*MEMORY[0x1E695DE78] error:0];
  v75 = v103;
  v101 = 0;
  v102 = 0;
  [v12 getResourceValue:&v102 forKey:v13 error:&v101];
  v16 = v102;
  v17 = v101;
  v18 = v17;
  if (!v16)
  {
    if (!v17)
    {
      v23 = PFFunctionNameForAddress(v5);
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = @"(Unknown Location)";
      }

      path = [v12 path];
      v18 = PFGeneralErrorFromObjectWithLocalizedFailureReason(self, v25, 0, 0, 1, @"unable to lookup inode for path '%@'", v27, v28, path);
    }

    if (a5)
    {
      v17 = v18;
      *a5 = v18;
    }

    v29 = PFLogCommon(v17);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [NSFileManager(PosterFoundation) pf_replaceURL:a2 withURL:? error:?];
    }

    v76 = 0;
    goto LABEL_20;
  }

  v100 = 0;
  [v12 getResourceValue:&v100 forKey:v15 error:0];
  v76 = v100;

  if (!v14)
  {
    v22 = [self moveItemAtURL:v12 toURL:v10 error:a5];
    goto LABEL_41;
  }

  v19 = [v14 isEqualToNumber:v16];
  if (!v19)
  {
    bOOLValue = [v76 BOOLValue];
    if (bOOLValue)
    {
      bOOLValue = [v75 BOOLValue];
      if (bOOLValue)
      {
        v31 = PFLogCommon(bOOLValue);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = NSStringFromSelector(a2);
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v32;
          _os_log_impl(&dword_1C269D000, v31, OS_LOG_TYPE_INFO, "%{public}@> swapping supported", &buf, 0xCu);
        }

        v33 = v10;
        fileSystemRepresentation = [v10 fileSystemRepresentation];
        v35 = v12;
        if (renamex_np(fileSystemRepresentation, [v12 fileSystemRepresentation], 2u) != -1)
        {
          if ([v12 checkResourceIsReachableAndReturnError:0])
          {
            v99 = 0;
            [self removeItemAtURL:v12 error:&v99];
            v36 = v99;
            v37 = v36;
            if (v36)
            {
              v38 = PFLogCommon(v36);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                [NSFileManager(PosterFoundation) pf_replaceURL:withURL:error:];
              }
            }
          }

          goto LABEL_9;
        }

        if (a5)
        {
          v57 = *__error();
          v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:strerror(v57)];
          v59 = v58;
          v60 = @"(unknown)";
          if (v58)
          {
            v60 = v58;
          }

          v61 = v60;

          v63 = PFLogCommon(v62);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            [NSFileManager(PosterFoundation) pf_replaceURL:a2 withURL:? error:?];
          }

          v64 = MEMORY[0x1E696ABC0];
          v65 = *MEMORY[0x1E696A588];
          v109[0] = v61;
          v66 = *MEMORY[0x1E696A368];
          v108[0] = v65;
          v108[1] = v66;
          path2 = [v10 path];
          v109[1] = path2;
          v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:v108 count:2];
          *a5 = [v64 errorWithDomain:*MEMORY[0x1E696A798] code:v57 userInfo:v68];
        }

LABEL_20:
        v22 = 0;
        goto LABEL_41;
      }
    }

    v39 = PFLogCommon(bOOLValue);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = NSStringFromSelector(a2);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v40;
      _os_log_impl(&dword_1C269D000, v39, OS_LOG_TYPE_INFO, "%{public}@> swapping NOT supported", &buf, 0xCu);
    }

    v41 = [v10 URLByAppendingPathExtension:@"-movedaside"];
    v42 = [v10 URLByAppendingPathExtension:@"-new"];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v106 = 0x2020000000;
    v107 = 0;
    v95 = 0;
    v96 = &v95;
    v97 = 0x2020000000;
    v98 = 0;
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v94 = 0;
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __63__NSFileManager_PosterFoundation__pf_replaceURL_withURL_error___block_invoke;
    v88[3] = &unk_1E8189EA0;
    v88[4] = self;
    v43 = v41;
    v89 = v43;
    v44 = v42;
    v90 = v44;
    v72 = MEMORY[0x1C691C400](v88);
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __63__NSFileManager_PosterFoundation__pf_replaceURL_withURL_error___block_invoke_2;
    v81[3] = &unk_1E8189EC8;
    v85 = &v91;
    v81[4] = self;
    v45 = v10;
    v82 = v45;
    v74 = v44;
    v83 = v74;
    v86 = &v95;
    v73 = v43;
    v84 = v73;
    p_buf = &buf;
    v46 = MEMORY[0x1C691C400](v81);
    v80 = 0;
    LOBYTE(v44) = [self copyItemAtURL:v12 toURL:v74 error:&v80];
    v47 = v80;
    *(*(&buf + 1) + 24) = v44;
    if (v47)
    {
      v48 = v47;
      if (a5)
      {
        v49 = v47;
        *a5 = v48;
      }

      v46[2](v46);
    }

    else
    {
      v79 = 0;
      v51 = [self moveItemAtURL:v45 toURL:v73 error:&v79];
      v52 = v79;
      *(v96 + 24) = v51;
      if (v52)
      {
        v48 = v52;
        if (a5)
        {
          v53 = v52;
          v22 = 0;
          *a5 = v48;
          goto LABEL_40;
        }
      }

      else
      {
        v78 = 0;
        v54 = [self moveItemAtURL:v74 toURL:v45 error:&v78];
        v55 = v78;
        *(v92 + 24) = v54;
        if (!v55)
        {
          v72[2]();
          if ([v12 checkResourceIsReachableAndReturnError:0])
          {
            v77 = 0;
            [self removeItemAtURL:v12 error:&v77];
            v69 = v77;
            v70 = v69;
            if (v69)
            {
              v71 = PFLogCommon(v69);
              if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
              {
                [NSFileManager(PosterFoundation) pf_replaceURL:withURL:error:];
              }
            }
          }

          v48 = 0;
          v22 = 1;
          goto LABEL_40;
        }

        v48 = v55;
        if (a5)
        {
          v56 = v55;
          *a5 = v48;
        }

        v46[2](v46);
      }
    }

    v22 = 0;
LABEL_40:

    _Block_object_dispose(&v91, 8);
    _Block_object_dispose(&v95, 8);
    _Block_object_dispose(&buf, 8);

    goto LABEL_41;
  }

  v20 = PFLogCommon(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = NSStringFromSelector(a2);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v21;
    _os_log_impl(&dword_1C269D000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@> URLToReplace is the same as replacementURL; bailing", &buf, 0xCu);
  }

LABEL_9:
  v22 = 1;
LABEL_41:

  return v22;
}

- (void)pf_replaceURL:()PosterFoundation withURL:error:.cold.3(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_4(&dword_1C269D000, v2, v3, "%{public}@> swapping failed with explanation: %{public}@", v4, v5, v6, v7);
}

- (void)pf_replaceURL:()PosterFoundation withURL:error:.cold.4(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_4(&dword_1C269D000, v2, v3, "%{public}@> replacementURLInode is not validL; bailing with error: %{public}@", v4, v5, v6, v7);
}

- (void)pf_replaceURL:()PosterFoundation withURL:error:.cold.5(const char *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"replacementURL"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0();
    v10 = @"NSFileManager+PosterFoundation.m";
    v11 = 1024;
    v12 = 36;
    v13 = v7;
    v14 = v3;
    _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v8 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pf_replaceURL:()PosterFoundation withURL:error:.cold.6(const char *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"URLToReplace"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0();
    v10 = @"NSFileManager+PosterFoundation.m";
    v11 = 1024;
    v12 = 35;
    v13 = v7;
    v14 = v3;
    _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v8 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end
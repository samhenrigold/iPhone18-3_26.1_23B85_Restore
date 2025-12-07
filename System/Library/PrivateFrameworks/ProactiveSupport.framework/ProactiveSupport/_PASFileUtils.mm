@interface _PASFileUtils
+ (BOOL)iterSortedEntriesInDirectory:(id)directory selectDirent:(id)dirent onSortedDirent:(id)sortedDirent error:(id *)error;
+ (id)mkstempWithPrefix:(id)prefix error:(id *)error;
@end

@implementation _PASFileUtils

+ (id)mkstempWithPrefix:(id)prefix error:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  if (!prefixCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASFileUtils.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"prefix"}];
  }

  v8 = [prefixCopy stringByAppendingString:@"XXXXXX"];
  uTF8String = [v8 UTF8String];
  if (uTF8String)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBytes:uTF8String length:strlen(uTF8String) + 1];
    mutableBytes = [v10 mutableBytes];
    *__error() = 0;
    v12 = mkstemp(mutableBytes);
    if ((v12 & 0x80000000) != 0)
    {
      if (!error)
      {
        v15 = 0;
        goto LABEL_14;
      }

      v19 = objc_alloc(MEMORY[0x1E696ABC0]);
      v20 = *MEMORY[0x1E696A798];
      v21 = *__error();
      v28 = *MEMORY[0x1E696A578];
      v22 = MEMORY[0x1E696AEC0];
      v23 = __error();
      v14 = [v22 stringWithUTF8String:strerror(*v23)];
      v29 = v14;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      *error = [v19 initWithDomain:v20 code:v21 userInfo:v24];

      v15 = 0;
    }

    else
    {
      v13 = v12;
      if (fcntl(v12, 64, 6) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "+[_PASFileUtils mkstempWithPrefix:error:] failed to set PROTECTION_CLASS_F", buf, 2u);
      }

      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:mutableBytes encoding:4];
      v15 = [[_PASTempfileDescr alloc] initWithFd:v13 path:v14];
    }

LABEL_14:
    goto LABEL_15;
  }

  if (error)
  {
    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E696A798];
    v30 = *MEMORY[0x1E696A578];
    v31[0] = @"path is not valid unicode";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v18 = [v16 initWithDomain:v17 code:22 userInfo:v10];
    v15 = 0;
    *error = v18;
    goto LABEL_14;
  }

  v15 = 0;
LABEL_15:

  return v15;
}

+ (BOOL)iterSortedEntriesInDirectory:(id)directory selectDirent:(id)dirent onSortedDirent:(id)sortedDirent error:(id *)error
{
  v51[2] = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  direntCopy = dirent;
  sortedDirentCopy = sortedDirent;
  v14 = opendir([directoryCopy UTF8String]);
  if (v14)
  {
    v15 = v14;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v49 = __Block_byref_object_copy__2694;
    v50 = __Block_byref_object_dispose__2695;
    v51[0] = 0;
    obj = 0;
    v16 = [_PASSqliteDatabase sqliteDatabaseWithFilename:&stru_1F1B24B60 contentProtection:0 errorHandler:0 error:&obj];
    objc_storeStrong(v51, obj);
    if (v16)
    {
      v17 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = 0;

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __80___PASFileUtils_iterSortedEntriesInDirectory_selectDirent_onSortedDirent_error___block_invoke;
      v42[3] = &unk_1E77F2590;
      v42[4] = buf;
      [v16 prepAndRunNonDataQueries:&unk_1F1B30228 onError:v42];
      v18 = *(*&buf[8] + 40);
      if (!v18)
      {
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __80___PASFileUtils_iterSortedEntriesInDirectory_selectDirent_onSortedDirent_error___block_invoke_11;
        v35[3] = &unk_1E77F21F0;
        v39 = v15;
        v37 = direntCopy;
        v38 = buf;
        v19 = v16;
        v36 = v19;
        v40 = a2;
        selfCopy = self;
        [v19 writeTransaction:v35];

        v18 = *(*&buf[8] + 40);
        if (!v18)
        {
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __80___PASFileUtils_iterSortedEntriesInDirectory_selectDirent_onSortedDirent_error___block_invoke_41;
          v31[3] = &unk_1E77F2218;
          v33 = a2;
          selfCopy2 = self;
          v32 = sortedDirentCopy;
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __80___PASFileUtils_iterSortedEntriesInDirectory_selectDirent_onSortedDirent_error___block_invoke_2_46;
          v30[3] = &unk_1E77F2590;
          v30[4] = buf;
          if (([v19 prepAndRunQuery:@"SELECT dirent FROM dirents ORDER BY name ASC" onPrep:0 onRow:v31 onError:v30] & 1) == 0 && !*(*&buf[8] + 40))
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v46 = 0;
              _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASFileUtils failed to read dirent row for unknown reason", v46, 2u);
            }

            v44 = *MEMORY[0x1E696A588];
            v45 = @"_PASFileUtils failed to read dirent row for unknown reason";
            v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
            v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"_PASFileUtilsErrorDomain" code:2 userInfo:v20];
            v22 = *(*&buf[8] + 40);
            *(*&buf[8] + 40) = v21;
          }

          v18 = *(*&buf[8] + 40);
          if (!v18)
          {
            v24 = 1;
            goto LABEL_25;
          }
        }
      }

      if (!error)
      {
        goto LABEL_24;
      }

LABEL_19:
      v24 = 0;
      *error = v18;
LABEL_25:
      [v16 closePermanently];
      closedir(v15);

      _Block_object_dispose(buf, 8);
      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = *(*&buf[8] + 40);
      *v46 = 138412290;
      v47 = v28;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASFileUtils failed to open dirent db: %@", v46, 0xCu);
      if (error)
      {
        goto LABEL_18;
      }
    }

    else if (error)
    {
LABEL_18:
      v18 = *(*&buf[8] + 40);
      goto LABEL_19;
    }

LABEL_24:
    v24 = 0;
    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v25 = __error();
    v26 = strerror(*v25);
    v27 = *__error();
    *buf = 138412802;
    *&buf[4] = directoryCopy;
    *&buf[12] = 2080;
    *&buf[14] = v26;
    *&buf[22] = 1024;
    LODWORD(v49) = v27;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASFileUtils failed to open directory %@: %s (%d)", buf, 0x1Cu);
    if (error)
    {
      goto LABEL_15;
    }

LABEL_21:
    v24 = 0;
    goto LABEL_26;
  }

  if (!error)
  {
    goto LABEL_21;
  }

LABEL_15:
  v23 = __error();
  posixError(*v23);
  *error = v24 = 0;
LABEL_26:

  return v24;
}

@end
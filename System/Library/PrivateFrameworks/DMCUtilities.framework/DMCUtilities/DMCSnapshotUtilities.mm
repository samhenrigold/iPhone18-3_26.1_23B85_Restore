@interface DMCSnapshotUtilities
- (BOOL)_executeSnapshotActionAtPath:(id)path action:(id)action;
- (BOOL)captureSnapshotAtPath:(id)path name:(id)name;
- (BOOL)deleteSnapshotAtPath:(id)path name:(id)name;
@end

@implementation DMCSnapshotUtilities

- (BOOL)captureSnapshotAtPath:(id)path name:(id)name
{
  nameCopy = name;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__DMCSnapshotUtilities_captureSnapshotAtPath_name___block_invoke;
  v9[3] = &unk_1E7ADD270;
  v10 = nameCopy;
  v7 = nameCopy;
  LOBYTE(path) = [(DMCSnapshotUtilities *)self _executeSnapshotActionAtPath:path action:v9];

  return path;
}

BOOL __51__DMCSnapshotUtilities_captureSnapshotAtPath_name___block_invoke(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = fs_snapshot_create(a2, [*(a1 + 32) UTF8String], 0);
  v3 = v2;
  v5 = *DMCLogObjects(v2, v4);
  if (v3 < 0)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = v5;
      v8 = __error();
      v9 = [v6 stringWithUTF8String:strerror(*v8)];
      v10 = *__error();
      v12 = 138543618;
      v13 = v9;
      v14 = 1024;
      v15 = v10;
      _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_ERROR, "fs_snapshot_create() failed with error: %{public}@ (%d)", &v12, 0x12u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_DEFAULT, "fs_snapshot_create() succeeded.", &v12, 2u);
  }

  return v3 >= 0;
}

- (BOOL)deleteSnapshotAtPath:(id)path name:(id)name
{
  nameCopy = name;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__DMCSnapshotUtilities_deleteSnapshotAtPath_name___block_invoke;
  v9[3] = &unk_1E7ADD270;
  v10 = nameCopy;
  v7 = nameCopy;
  LOBYTE(path) = [(DMCSnapshotUtilities *)self _executeSnapshotActionAtPath:path action:v9];

  return path;
}

BOOL __50__DMCSnapshotUtilities_deleteSnapshotAtPath_name___block_invoke(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = fs_snapshot_delete(a2, [*(a1 + 32) UTF8String], 0);
  if ((v2 & 0x80000000) != 0 && (v2 = __error(), *v2 != 2))
  {
    v6 = *DMCLogObjects(v2, v3);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = v6;
      v9 = __error();
      v10 = [v7 stringWithUTF8String:strerror(*v9)];
      v11 = *__error();
      v12 = 138543618;
      v13 = v10;
      v14 = 1024;
      v15 = v11;
      _os_log_impl(&dword_1B1630000, v8, OS_LOG_TYPE_ERROR, "fs_snapshot_delete() failed with error: %{public}@ (%d)", &v12, 0x12u);

      return 0;
    }
  }

  else
  {
    v4 = *DMCLogObjects(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_DEFAULT, "fs_snapshot_delete() succeeded.", &v12, 2u);
    }

    return 1;
  }

  return result;
}

- (BOOL)_executeSnapshotActionAtPath:(id)path action:(id)action
{
  v20 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v5 = open([@"/private/var" fileSystemRepresentation], 0);
  if ((v5 & 0x80000000) != 0)
  {
    v9 = *DMCLogObjects(v5, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = v9;
      v12 = __error();
      v13 = [v10 stringWithUTF8String:strerror(*v12)];
      v14 = *__error();
      v16 = 138543618;
      v17 = v13;
      v18 = 1024;
      v19 = v14;
      _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_ERROR, "open() failed with error: %{public}@ (%d)", &v16, 0x12u);
    }

    v8 = 0;
  }

  else
  {
    v7 = v5;
    v8 = actionCopy[2](actionCopy, v5);
    close(v7);
  }

  return v8;
}

@end
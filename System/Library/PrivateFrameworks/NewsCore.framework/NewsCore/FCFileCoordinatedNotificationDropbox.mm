@interface FCFileCoordinatedNotificationDropbox
- (FCFileCoordinatedNotificationDropbox)init;
- (FCFileCoordinatedNotificationDropbox)initWithFileURL:(id)l;
- (void)depositWithAccessor:(id)accessor completion:(id)completion;
- (void)peekSyncWithAccessor:(id)accessor;
@end

@implementation FCFileCoordinatedNotificationDropbox

- (FCFileCoordinatedNotificationDropbox)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFileCoordinatedNotificationDropbox init]";
    v10 = 2080;
    v11 = "FCFileCoordinatedNotificationDropbox.m";
    v12 = 1024;
    v13 = 41;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFileCoordinatedNotificationDropbox init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFileCoordinatedNotificationDropbox)initWithFileURL:(id)l
{
  v23 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "fileURL"];
    *buf = 136315906;
    v16 = "[FCFileCoordinatedNotificationDropbox initWithFileURL:]";
    v17 = 2080;
    v18 = "FCFileCoordinatedNotificationDropbox.m";
    v19 = 1024;
    v20 = 46;
    v21 = 2114;
    v22 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v14.receiver = self;
  v14.super_class = FCFileCoordinatedNotificationDropbox;
  v5 = [(FCFileCoordinatedNotificationDropbox *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [[FCFileCoordinatedDictionary alloc] initWithFileURL:lCopy allowedClasses:v9];
    fileCoordinatedDictionary = v5->_fileCoordinatedDictionary;
    v5->_fileCoordinatedDictionary = v10;
  }

  return v5;
}

- (void)peekSyncWithAccessor:(id)accessor
{
  v18 = *MEMORY[0x1E69E9840];
  accessorCopy = accessor;
  if (!accessorCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "accessor"];
    *buf = 136315906;
    v11 = "[FCFileCoordinatedNotificationDropbox peekSyncWithAccessor:]";
    v12 = 2080;
    v13 = "FCFileCoordinatedNotificationDropbox.m";
    v14 = 1024;
    v15 = 59;
    v16 = 2114;
    v17 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  fileCoordinatedDictionary = [(FCFileCoordinatedNotificationDropbox *)self fileCoordinatedDictionary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__FCFileCoordinatedNotificationDropbox_peekSyncWithAccessor___block_invoke;
  v8[3] = &unk_1E7C38D88;
  v9 = accessorCopy;
  v6 = accessorCopy;
  [fileCoordinatedDictionary readSyncWithAccessor:v8];
}

void __61__FCFileCoordinatedNotificationDropbox_peekSyncWithAccessor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  if (v3)
  {
    v5 = [[FCNotificationDropboxData alloc] initWithDictionary:v3];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    (*(v4 + 16))(v4, 0);
  }
}

- (void)depositWithAccessor:(id)accessor completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  accessorCopy = accessor;
  completionCopy = completion;
  if (!accessorCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "accessor"];
    *buf = 136315906;
    v14 = "[FCFileCoordinatedNotificationDropbox depositWithAccessor:completion:]";
    v15 = 2080;
    v16 = "FCFileCoordinatedNotificationDropbox.m";
    v17 = 1024;
    v18 = 76;
    v19 = 2114;
    v20 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  fileCoordinatedDictionary = [(FCFileCoordinatedNotificationDropbox *)self fileCoordinatedDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__FCFileCoordinatedNotificationDropbox_depositWithAccessor_completion___block_invoke;
  v11[3] = &unk_1E7C38DB0;
  v12 = accessorCopy;
  v9 = accessorCopy;
  [fileCoordinatedDictionary writeWithAccessor:v11 completion:completionCopy];
}

void __71__FCFileCoordinatedNotificationDropbox_depositWithAccessor_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[FCMutableNotificationData alloc] initWithDictionary:v3];

  (*(v2 + 16))(v2, v4);
}

@end
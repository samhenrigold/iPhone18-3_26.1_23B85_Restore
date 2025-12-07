@interface ERROR
@end

@implementation ERROR

void __ERROR_READ_REJECTED_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v14 = a2;
  v34 = *MEMORY[0x1E69E9840];
  v16 = _CFPrefsDaemonLog(a1, a2);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = *(a1 + 32);
    v18 = 136448002;
    v19 = a4;
    v20 = 2082;
    v21 = a6;
    v22 = 2082;
    v23 = a7;
    v24 = 2082;
    v25 = a8;
    v26 = 1024;
    v27 = a9;
    v28 = 1026;
    v29 = v14;
    v30 = 2082;
    v31 = a3;
    v32 = 2082;
    v33 = v17;
    _os_log_error_impl(&dword_1830E6000, v16, OS_LOG_TYPE_ERROR, "rejecting read of { %{public}s, %{public}s, %{public}s, %{public}s, managed: %d } from process %{public}d (%{public}s) because %{public}s", &v18, 0x4Au);
  }
}

void __ERROR_LOG_PREUNLOCK_ACCESS_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v14 = *MEMORY[0x1E69E9840];
  v6 = _CFPrefsDaemonLog(a1, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 136446722;
    v9 = v7;
    v10 = 2082;
    v11 = a3;
    v12 = 1024;
    v13 = v4;
    _os_log_error_impl(&dword_1830E6000, v6, OS_LOG_TYPE_ERROR, "#prefsbeforeunlock Attempt to access %{public}s by %{public}s(%d)", &v8, 0x1Cu);
  }
}

void __ERROR_WRITE_REJECTED_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v15 = a2;
  v37 = *MEMORY[0x1E69E9840];
  v17 = _CFPrefsDaemonLog(a1, a2);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = *(a1 + 32);
    v19 = 136382723;
    v20 = a5;
    v21 = 2082;
    v22 = a4;
    v23 = 2082;
    v24 = a6;
    v25 = 2082;
    v26 = a7;
    v27 = 2082;
    v28 = a8;
    v29 = 1024;
    v30 = a9;
    v31 = 1026;
    v32 = v15;
    v33 = 2082;
    v34 = a3;
    v35 = 2082;
    v36 = v18;
    _os_log_error_impl(&dword_1830E6000, v17, OS_LOG_TYPE_ERROR, "rejecting write of key(s) %{private}s in { %{public}s, %{public}s, %{public}s, %{public}s, managed: %d } from process %{public}d (%{public}s) because %{public}s", &v19, 0x54u);
  }
}

@end
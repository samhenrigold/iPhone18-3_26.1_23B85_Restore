@interface RBCoalitionKernelAdapter
- (int64_t)coalitionInfoForPID:(int)d outCoalitionInfo:(coalition_info *)info;
@end

@implementation RBCoalitionKernelAdapter

- (int64_t)coalitionInfoForPID:(int)d outCoalitionInfo:(coalition_info *)info
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v18 = 0;
  memset(buffer, 0, sizeof(buffer));
  v6 = rbs_process_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_262485000, v6, OS_LOG_TYPE_DEFAULT, "coalitionInfoForPID: Calling proc_pidinfo", buf, 2u);
  }

  v7 = proc_pidinfo(d, 20, 0, buffer, 40);
  if (v7 < 0)
  {
    v11 = v7;
    v12 = rbs_process_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(RBCoalitionKernelAdapter *)d coalitionInfoForPID:v11 outCoalitionInfo:v12];
    }

    return -1;
  }

  else
  {
    v16 = 8;
    v8 = sysctlbyname("kern.coalition_roles", v30, &v16, &dCopy, 4uLL);
    if (v8 < 0 || v16 != 8)
    {
      v9 = rbs_process_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13 = dCopy;
        v14 = buffer[0];
        v15 = *__error();
        *buf = 67110144;
        v21 = v13;
        v22 = 2048;
        v23 = v14;
        v24 = 2048;
        v25 = *(&v14 + 1);
        v26 = 1024;
        v27 = v8;
        v28 = 1024;
        v29 = v15;
        _os_log_error_impl(&dword_262485000, v9, OS_LOG_TYPE_ERROR, "Kernel call to get coalition roles for PID %d, resource coalition id: %llu, jetsam coalition id: %llu, failed: ret %d, errno %d.", buf, 0x28u);
      }
    }

    result = 0;
    *&info->var0 = buffer[0];
    info->var2 = v31 == 1;
  }

  return result;
}

- (void)coalitionInfoForPID:(NSObject *)a3 outCoalitionInfo:.cold.1(int a1, int a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = *__error();
  v7[0] = 67109632;
  v7[1] = a1;
  v8 = 1024;
  v9 = a2;
  v10 = 1024;
  v11 = v6;
  _os_log_error_impl(&dword_262485000, a3, OS_LOG_TYPE_ERROR, "Kernel call to get coalition info for PID %d failed: ret %d, errno %d.", v7, 0x14u);
}

@end
@interface AWPersistentDataManager
+ (BOOL)AWPersistentDataExists:(int *)exists;
+ (BOOL)truncateAWPersistentData:(int *)data error:(id *)error;
+ (BOOL)validateAWPersistentDataHeader:(id *)header;
+ (id)sharedManager;
+ (void)initAWPersistentDataHeader:(id *)header;
- ($F484E3E6FD0A2BE9213BA906CF92CD29)clientStateWithConnection:(id)connection index:(int)index error:(id *)error;
- (AWPersistentDataManager)init;
- (BOOL)checkPreconditions:(id *)preconditions;
- (BOOL)closeWithConnection:(id)connection index:(int)index error:(id *)error;
- (BOOL)isValidIndexForConnection:(id)connection index:(int)index error:(id *)error;
- (int)nextFreeIndex;
- (int)openWithConnection:(id)connection error:(id *)error;
- (void)loadPersistentData;
@end

@implementation AWPersistentDataManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_221);
  }

  v3 = sharedManager_manager;

  return v3;
}

- (int)nextFreeIndex
{
  v2 = *MEMORY[0x1E69E9AC8] - 32;
  if (v2 < 0x58)
  {
LABEL_5:
    LODWORD(v4) = -1;
  }

  else
  {
    v4 = 0;
    shm_obj = self->_shm_obj;
    v6 = v2 / 0x58;
    v7 = (shm_obj + 104);
    while (1)
    {
      v8 = *v7;
      v7 += 11;
      if (!v8)
      {
        break;
      }

      if (v6 == ++v4)
      {
        goto LABEL_5;
      }
    }
  }

  return v4;
}

- ($F484E3E6FD0A2BE9213BA906CF92CD29)clientStateWithConnection:(id)connection index:(int)index error:(id *)error
{
  v6 = *&index;
  connectionCopy = connection;
  if ([(AWPersistentDataManager *)self checkPreconditions:error]&& [(AWPersistentDataManager *)self isValidIndexForConnection:connectionCopy index:v6 error:error])
  {
    v9 = self->_shm_obj + 88 * v6;
    v10 = (v9 + 32);
    *(v9 + 13) = absTimeNS();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)closeWithConnection:(id)connection index:(int)index error:(id *)error
{
  v6 = *&index;
  v34 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  if ([(AWPersistentDataManager *)self checkPreconditions:error]&& [(AWPersistentDataManager *)self isValidIndexForConnection:connectionCopy index:v6 error:error])
  {
    v9 = self->_shm_obj + 88 * v6;
    if (currentLogLevel == 5)
    {
      v10 = _AALog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = absTimeNS();
        if (v11 == -1)
        {
          v12 = INFINITY;
        }

        else
        {
          v12 = v11 / 1000000000.0;
        }

        v18 = *(v9 + 28);
        v24 = 134218496;
        v25 = v12;
        v26 = 1024;
        v27 = v6;
        v28 = 1024;
        LODWORD(v29) = v18;
        v19 = "%13.5f: AW SHARED MEM: closing index %d for client with pid %d";
        v20 = v10;
        v21 = 24;
LABEL_22:
        _os_log_impl(&dword_1BB2EF000, v20, OS_LOG_TYPE_DEFAULT, v19, &v24, v21);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_24:
        *(v9 + 14) = 0;
        *(v9 + 5) = 0u;
        *(v9 + 6) = 0u;
        *(v9 + 3) = 0u;
        *(v9 + 4) = 0u;
        *(v9 + 2) = 0u;
        v13 = 1;
        goto LABEL_25;
      }

      v10 = _AALog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m"; ; ++i)
        {
          if (*(i - 1) == 47)
          {
            v14 = i;
          }

          else if (!*(i - 1))
          {
            v16 = absTimeNS();
            if (v16 == -1)
            {
              v17 = INFINITY;
            }

            else
            {
              v17 = v16 / 1000000000.0;
            }

            v22 = *(v9 + 28);
            v24 = 136316162;
            v25 = *&v14;
            v26 = 1024;
            v27 = 469;
            v28 = 2048;
            v29 = v17;
            v30 = 1024;
            v31 = v6;
            v32 = 1024;
            v33 = v22;
            v19 = "%30s:%-4d: %13.5f: AW SHARED MEM: closing index %d for client with pid %d";
            v20 = v10;
            v21 = 40;
            goto LABEL_22;
          }
        }
      }
    }

    goto LABEL_24;
  }

  v13 = 0;
LABEL_25:

  return v13;
}

- (int)openWithConnection:(id)connection error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  if (![(AWPersistentDataManager *)self checkPreconditions:error])
  {
LABEL_7:
    v8 = -1;
    goto LABEL_29;
  }

  nextFreeIndex = [(AWPersistentDataManager *)self nextFreeIndex];
  if (nextFreeIndex == -1)
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:28 userInfo:0];
    }

    goto LABEL_7;
  }

  v8 = nextFreeIndex;
  v9 = self->_shm_obj + 88 * nextFreeIndex;
  *(v9 + 2) = 0u;
  v10 = v9 + 32;
  *(v10 + 10) = 0;
  *(v10 + 3) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 9) = absTimeNS();
  *(v10 + 20) = [connectionCopy processIdentifier];
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
  }

  else
  {
    memset(v24, 0, 32);
  }

  *(v10 + 21) = audit_token_to_pidversion(v24);
  if (currentLogLevel == 5)
  {
    v11 = _AALog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = absTimeNS();
      if (v12 == -1)
      {
        v13 = INFINITY;
      }

      else
      {
        v13 = v12 / 1000000000.0;
      }

      v18 = *(v10 + 20);
      *v24 = 134218496;
      *&v24[4] = v13;
      *&v24[12] = 1024;
      *&v24[14] = v8;
      *&v24[18] = 1024;
      *&v24[20] = v18;
      v19 = "%13.5f: AW SHARED MEM: opening index %d for client with pid %d";
      v20 = v11;
      v21 = 24;
LABEL_27:
      _os_log_impl(&dword_1BB2EF000, v20, OS_LOG_TYPE_DEFAULT, v19, v24, v21);
    }

LABEL_28:

    goto LABEL_29;
  }

  if (currentLogLevel >= 6)
  {
    v11 = _AALog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v14 = i;
        }

        else if (!*(i - 1))
        {
          v16 = absTimeNS();
          if (v16 == -1)
          {
            v17 = INFINITY;
          }

          else
          {
            v17 = v16 / 1000000000.0;
          }

          v22 = *(v10 + 20);
          *v24 = 136316162;
          *&v24[4] = v14;
          *&v24[12] = 1024;
          *&v24[14] = 438;
          *&v24[18] = 2048;
          *&v24[20] = v17;
          *&v24[28] = 1024;
          *&v24[30] = v8;
          v25 = 1024;
          v26 = v22;
          v19 = "%30s:%-4d: %13.5f: AW SHARED MEM: opening index %d for client with pid %d";
          v20 = v11;
          v21 = 40;
          goto LABEL_27;
        }
      }
    }

    goto LABEL_28;
  }

LABEL_29:

  return v8;
}

- (BOOL)isValidIndexForConnection:(id)connection index:(int)index error:(id *)error
{
  connectionCopy = connection;
  v9 = connectionCopy;
  if (index < 0 || index >= (*MEMORY[0x1E69E9AC8] - 32) / 0x58uLL)
  {
    if (!error)
    {
      goto LABEL_17;
    }

    v13 = 34;
  }

  else
  {
    v10 = self->_shm_obj + 88 * index;
    if (*(v10 + 13))
    {
      v11 = *(v10 + 28);
      if (v11 == [connectionCopy processIdentifier])
      {
        v12 = *(v10 + 29);
        if (v9)
        {
          objc_msgSend_auditToken(v9);
        }

        else
        {
          memset(&v16, 0, sizeof(v16));
        }

        if (v12 == audit_token_to_pidversion(&v16))
        {
          v14 = 1;
          goto LABEL_18;
        }
      }

      if (error)
      {
        v13 = 1;
        goto LABEL_9;
      }

LABEL_17:
      v14 = 0;
      goto LABEL_18;
    }

    if (!error)
    {
      goto LABEL_17;
    }

    v13 = 22;
  }

LABEL_9:
  [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:v13 userInfo:{0, *v16.val, *&v16.val[4]}];
  *error = v14 = 0;
LABEL_18:

  return v14;
}

- (BOOL)checkPreconditions:(id *)preconditions
{
  dispatch_assert_queue_V2(self->_queue);
  shm_obj = self->_shm_obj;
  if (preconditions && !shm_obj)
  {
    *preconditions = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

  return shm_obj != 0;
}

- (void)loadPersistentData
{
  v70 = *MEMORY[0x1E69E9840];
  v63 = -1;
  v3 = [objc_opt_class() AWPersistentDataExists:&v63];
  if (currentLogLevel == 5)
  {
    v4 = _AALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = absTimeNS();
      if (v5 == -1)
      {
        v6 = INFINITY;
      }

      else
      {
        v6 = v5 / 1000000000.0;
      }

      v11 = "false";
      *buf = 134218498;
      v65 = v6;
      v66 = 2080;
      *v67 = "com.apple.AttentionAwareness";
      if (v3)
      {
        v11 = "true";
      }

      *&v67[8] = 2080;
      *&v67[10] = v11;
      v12 = "%13.5f: AW SHARED MEM: found %s shm object: %s";
      v13 = v4;
      v14 = 32;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (currentLogLevel >= 6)
  {
    v4 = _AALog();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v7 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m";
    for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m"; ; ++i)
    {
      if (*(i - 1) == 47)
      {
        v7 = i;
      }

      else if (!*(i - 1))
      {
        v9 = absTimeNS();
        if (v9 == -1)
        {
          v10 = INFINITY;
        }

        else
        {
          v10 = v9 / 1000000000.0;
        }

        v15 = "false";
        *buf = 136316162;
        v65 = *&v7;
        v66 = 1024;
        if (v3)
        {
          v15 = "true";
        }

        *v67 = 239;
        *&v67[4] = 2048;
        *&v67[6] = v10;
        *&v67[14] = 2080;
        *&v67[16] = "com.apple.AttentionAwareness";
        *&v67[24] = 2080;
        *&v67[26] = v15;
        v12 = "%30s:%-4d: %13.5f: AW SHARED MEM: found %s shm object: %s";
        v13 = v4;
        v14 = 48;
LABEL_23:
        _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
LABEL_24:

        break;
      }
    }
  }

  v16 = v63;
  if (v3)
  {
    if (v63 != -1)
    {
      __assert_rtn("[AWPersistentDataManager loadPersistentData]", "PersistentDataManager.m", 242, "fd == -1");
    }

    v16 = shm_open("com.apple.AttentionAwareness", 514, 384);
    v63 = v16;
  }

  if (v16 == -1)
  {
    if (currentLogLevel < 3)
    {
      v18 = 0;
      goto LABEL_74;
    }

    v26 = _AALog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v48 = absTimeNS();
      if (v48 == -1)
      {
        v49 = INFINITY;
      }

      else
      {
        v49 = v48 / 1000000000.0;
      }

      v54 = __error();
      v55 = strerror(*v54);
      *buf = 134218498;
      v65 = v49;
      v66 = 2080;
      *v67 = "com.apple.AttentionAwareness";
      *&v67[8] = 2080;
      *&v67[10] = v55;
      _os_log_error_impl(&dword_1BB2EF000, v26, OS_LOG_TYPE_ERROR, "%13.5f: AW SHARED MEM: failed to open %s shm object: %s", buf, 0x20u);
    }

    v18 = 0;
    goto LABEL_73;
  }

  v62 = 0;
  v17 = [objc_opt_class() truncateAWPersistentData:&v63 error:&v62];
  v18 = v62;
  if ((v17 & 1) == 0)
  {
    if (currentLogLevel < 3)
    {
      goto LABEL_74;
    }

    v26 = _AALog();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    v27 = absTimeNS();
    if (v27 == -1)
    {
      v28 = INFINITY;
    }

    else
    {
      v28 = v27 / 1000000000.0;
    }

    *buf = 134218498;
    v65 = v28;
    v66 = 2080;
    *v67 = "com.apple.AttentionAwareness";
    *&v67[8] = 2112;
    *&v67[10] = v18;
    v56 = "%13.5f: AW SHARED MEM: failed to truncate %s shm object: %@";
    goto LABEL_83;
  }

  v19 = MEMORY[0x1E69E9AC8];
  v20 = mmap(0, *MEMORY[0x1E69E9AC8], 3, 1, v63, 0);
  self->_shm_obj = v20;
  if (v20 == -1)
  {
    if (currentLogLevel < 3)
    {
      goto LABEL_74;
    }

    v26 = _AALog();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    v29 = absTimeNS();
    if (v29 == -1)
    {
      v30 = INFINITY;
    }

    else
    {
      v30 = v29 / 1000000000.0;
    }

    v57 = __error();
    v58 = strerror(*v57);
    *buf = 134218498;
    v65 = v30;
    v66 = 2080;
    *v67 = "com.apple.AttentionAwareness";
    *&v67[8] = 2080;
    *&v67[10] = v58;
    v56 = "%13.5f: AW SHARED MEM: failed to map %s shm object: %s";
LABEL_83:
    _os_log_error_impl(&dword_1BB2EF000, v26, OS_LOG_TYPE_ERROR, v56, buf, 0x20u);
    goto LABEL_73;
  }

  v21 = v20;
  if (v3)
  {
    if ([objc_opt_class() validateAWPersistentDataHeader:v20])
    {
      v22 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
      timer = self->_timer;
      self->_timer = v22;

      v24 = self->_timer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __45__AWPersistentDataManager_loadPersistentData__block_invoke;
      handler[3] = &unk_1E7F37F50;
      handler[4] = self;
      handler[5] = v21;
      dispatch_source_set_event_handler(v24, handler);
      v25 = dispatch_time(0, 10000000000);
      dispatch_source_set_timer(self->_timer, v25, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
      dispatch_resume(self->_timer);
      goto LABEL_52;
    }

    if (currentLogLevel >= 3)
    {
      v31 = _AALog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v59 = absTimeNS();
        if (v59 == -1)
        {
          v60 = INFINITY;
        }

        else
        {
          v60 = v59 / 1000000000.0;
        }

        *buf = 134218242;
        v65 = v60;
        v66 = 2080;
        *v67 = "com.apple.AttentionAwareness";
        _os_log_error_impl(&dword_1BB2EF000, v31, OS_LOG_TYPE_ERROR, "%13.5f: AW SHARED MEM: failed to validate %s shm object", buf, 0x16u);
      }
    }
  }

  [objc_opt_class() initAWPersistentDataHeader:v21];
  if ((*v19 - 32) >= 0x58)
  {
    v32 = 0;
    v33 = v21 + 4;
    do
    {
      v33[10] = 0;
      *(v33 + 3) = 0uLL;
      *(v33 + 4) = 0uLL;
      *(v33 + 1) = 0uLL;
      *(v33 + 2) = 0uLL;
      *v33 = 0uLL;
      v33 += 11;
      ++v32;
    }

    while (v32 < (*v19 - 32) / 0x58uLL);
  }

LABEL_52:
  self->_loadAbsTime = absTimeNS();
  if (currentLogLevel == 5)
  {
    v26 = _AALog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v34 = absTimeNS();
      if (v34 == -1)
      {
        v35 = INFINITY;
      }

      else
      {
        v35 = v34 / 1000000000.0;
      }

      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = *v21;
      v43 = v21[1];
      v44 = (*v19 - 32) / 0x58uLL;
      *buf = 134219266;
      v65 = v35;
      v66 = 2112;
      *v67 = v41;
      *&v67[8] = 2080;
      *&v67[10] = "com.apple.AttentionAwareness";
      *&v67[18] = 2048;
      *&v67[20] = v42;
      *&v67[28] = 2048;
      *&v67[30] = v43;
      *&v67[38] = 2048;
      *&v67[40] = v44;
      v45 = "%13.5f: AW SHARED MEM: %@ created successfully with %s shm object: shm version %llu, shm size %llu, shm max clients %lu";
      v46 = v26;
      v47 = 62;
LABEL_72:
      _os_log_impl(&dword_1BB2EF000, v46, OS_LOG_TYPE_DEFAULT, v45, buf, v47);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_74;
    }

    v26 = _AALog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v36 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m";
      for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m"; ; ++j)
      {
        if (*(j - 1) == 47)
        {
          v36 = j;
        }

        else if (!*(j - 1))
        {
          v38 = absTimeNS();
          if (v38 == -1)
          {
            v39 = INFINITY;
          }

          else
          {
            v39 = v38 / 1000000000.0;
          }

          v50 = objc_opt_class();
          v41 = NSStringFromClass(v50);
          v51 = *v21;
          v52 = v21[1];
          v53 = (*v19 - 32) / 0x58uLL;
          *buf = 136316930;
          v65 = *&v36;
          v66 = 1024;
          *v67 = 329;
          *&v67[4] = 2048;
          *&v67[6] = v39;
          *&v67[14] = 2112;
          *&v67[16] = v41;
          *&v67[24] = 2080;
          *&v67[26] = "com.apple.AttentionAwareness";
          *&v67[34] = 2048;
          *&v67[36] = v51;
          *&v67[44] = 2048;
          *&v67[46] = v52;
          v68 = 2048;
          v69 = v53;
          v45 = "%30s:%-4d: %13.5f: AW SHARED MEM: %@ created successfully with %s shm object: shm version %llu, shm size %llu, shm max clients %lu";
          v46 = v26;
          v47 = 78;
          goto LABEL_72;
        }
      }
    }
  }

LABEL_73:

LABEL_74:
  if (v63 != -1)
  {
    close(v63);
  }
}

void __45__AWPersistentDataManager_loadPersistentData__block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69E9AC8];
  v2 = *MEMORY[0x1E69E9AC8];
  v3 = 0x1EDC16000uLL;
  if ((*MEMORY[0x1E69E9AC8] - 32) >= 0x58)
  {
    v6 = 0;
    v4 = 0;
    v7 = &dword_1BB2EF000;
    do
    {
      v8 = *(a1 + 40) + 88 * v6;
      v9 = *(v8 + 104);
      if (v9 && *(*(a1 + 32) + 32) > v9)
      {
        v10 = *(v3 + 2416);
        if (v10 == 5)
        {
          v11 = _AALog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = absTimeNS();
            if (v12 == -1)
            {
              v13 = INFINITY;
            }

            else
            {
              v13 = v12 / 1000000000.0;
            }

            v20 = *(v8 + 112);
            *buf = 134218496;
            v34 = v13;
            v35 = 1024;
            v36 = v6;
            v37 = 1024;
            LODWORD(v38) = v20;
            _os_log_impl(v7, v11, OS_LOG_TYPE_DEFAULT, "%13.5f: AW SHARED MEM: reclaiming index %d from client with pid %d", buf, 0x18u);
          }

LABEL_24:
        }

        else if (v10 >= 6)
        {
          v11 = _AALog();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_24;
          }

          v14 = v3;
          v15 = v7;
          v16 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m";
          for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m"; ; ++i)
          {
            if (*(i - 1) == 47)
            {
              v16 = i;
            }

            else if (!*(i - 1))
            {
              v18 = absTimeNS();
              if (v18 == -1)
              {
                v19 = INFINITY;
              }

              else
              {
                v19 = v18 / 1000000000.0;
              }

              v21 = *(v8 + 112);
              *buf = 136316162;
              v34 = *&v16;
              v35 = 1024;
              v36 = 291;
              v37 = 2048;
              v38 = *&v19;
              v39 = 1024;
              v40 = v6;
              v41 = 1024;
              LODWORD(v42) = v21;
              v7 = v15;
              _os_log_impl(v15, v11, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: AW SHARED MEM: reclaiming index %d from client with pid %d", buf, 0x28u);
              v3 = v14;
              v1 = MEMORY[0x1E69E9AC8];
              goto LABEL_24;
            }
          }
        }

        *(v8 + 112) = 0;
        *(v8 + 80) = 0u;
        *(v8 + 96) = 0u;
        *(v8 + 48) = 0u;
        *(v8 + 64) = 0u;
        *(v8 + 32) = 0u;
        ++v4;
        v2 = *v1;
      }

      ++v6;
    }

    while (v6 < (v2 - 32) / 0x58uLL);
  }

  else
  {
    v4 = 0;
  }

  v22 = *(v3 + 2416);
  if (v22 == 5)
  {
    v23 = _AALog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = absTimeNS();
      if (v24 == -1)
      {
        v25 = INFINITY;
      }

      else
      {
        v25 = v24 / 1000000000.0;
      }

      *buf = 134218496;
      v34 = v25;
      v35 = 1024;
      v36 = v4;
      v37 = 2048;
      v38 = 10;
      v30 = "%13.5f: AW SHARED MEM: reclaimed %d client entries %llu sec after AW service relaunch";
      v31 = v23;
      v32 = 28;
LABEL_45:
      _os_log_impl(&dword_1BB2EF000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    }
  }

  else
  {
    if (v22 < 6)
    {
      return;
    }

    v23 = _AALog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v26 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m";
      for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m"; ; ++j)
      {
        if (*(j - 1) == 47)
        {
          v26 = j;
        }

        else if (!*(j - 1))
        {
          v28 = absTimeNS();
          if (v28 == -1)
          {
            v29 = INFINITY;
          }

          else
          {
            v29 = v28 / 1000000000.0;
          }

          *buf = 136316162;
          v34 = *&v26;
          v35 = 1024;
          v36 = 297;
          v37 = 2048;
          v38 = *&v29;
          v39 = 1024;
          v40 = v4;
          v41 = 2048;
          v42 = 10;
          v30 = "%30s:%-4d: %13.5f: AW SHARED MEM: reclaimed %d client entries %llu sec after AW service relaunch";
          v31 = v23;
          v32 = 44;
          goto LABEL_45;
        }
      }
    }
  }
}

- (AWPersistentDataManager)init
{
  v6.receiver = self;
  v6.super_class = AWPersistentDataManager;
  v2 = [(AWPersistentDataManager *)&v6 init];
  if (v2)
  {
    v3 = awQueue(1);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

+ (BOOL)truncateAWPersistentData:(int *)data error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  if (!data)
  {
    __assert_rtn("+[AWPersistentDataManager truncateAWPersistentData:error:]", "PersistentDataManager.m", 134, "fildes");
  }

  v5 = *data;
  if (*data == -1)
  {
    __assert_rtn("+[AWPersistentDataManager truncateAWPersistentData:error:]", "PersistentDataManager.m", 135, "*fildes != -1");
  }

  memset(&v40, 0, sizeof(v40));
  if (fstat(v5, &v40) == -1)
  {
    if (currentLogLevel < 3)
    {
      goto LABEL_32;
    }

    v10 = _AALog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v21 = absTimeNS();
    if (v21 == -1)
    {
      v22 = INFINITY;
    }

    else
    {
      v22 = v21 / 1000000000.0;
    }

    v23 = __error();
    v24 = strerror(*v23);
    *buf = 134218498;
    v42 = v22;
    v43 = 2080;
    v44 = "com.apple.AttentionAwareness";
    v45 = 2080;
    v46 = v24;
    v25 = "%13.5f: AW SHARED MEM: failed to fstat %s shm object: %s";
    goto LABEL_39;
  }

  v7 = MEMORY[0x1E69E9AC8];
  v8 = *MEMORY[0x1E69E9AC8];
  if (v40.st_size && v40.st_size != v8)
  {
    if (shm_unlink("com.apple.AttentionAwareness") == -1)
    {
      if (currentLogLevel < 3)
      {
        goto LABEL_32;
      }

      v12 = _AALog();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v13 = absTimeNS();
      if (v13 == -1)
      {
        v14 = INFINITY;
      }

      else
      {
        v14 = v13 / 1000000000.0;
      }

      v30 = __error();
      v31 = strerror(*v30);
      *buf = 134218498;
      v42 = v14;
      v43 = 2080;
      v44 = "com.apple.AttentionAwareness";
      v45 = 2080;
      v46 = v31;
      v32 = "%13.5f: AW SHARED MEM: failed to unlink %s shm object: %s";
    }

    else
    {
      if (close(*data) != -1)
      {
        v9 = shm_open("com.apple.AttentionAwareness", 514, 384);
        *data = v9;
        if (v9 != -1)
        {
          v8 = *v7;
          goto LABEL_15;
        }

        if (currentLogLevel < 3)
        {
          goto LABEL_32;
        }

        v10 = _AALog();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_12;
        }

        v17 = absTimeNS();
        if (v17 == -1)
        {
          v18 = INFINITY;
        }

        else
        {
          v18 = v17 / 1000000000.0;
        }

        v38 = __error();
        v39 = strerror(*v38);
        *buf = 134218498;
        v42 = v18;
        v43 = 2080;
        v44 = "com.apple.AttentionAwareness";
        v45 = 2080;
        v46 = v39;
        v25 = "%13.5f: AW SHARED MEM: failed to reopen %s shm object: %s";
LABEL_39:
        v26 = v10;
        v27 = 32;
LABEL_40:
        _os_log_error_impl(&dword_1BB2EF000, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
        goto LABEL_12;
      }

      if (currentLogLevel < 3)
      {
        goto LABEL_32;
      }

      v12 = _AALog();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_23:

        goto LABEL_32;
      }

      v28 = absTimeNS();
      if (v28 == -1)
      {
        v29 = INFINITY;
      }

      else
      {
        v29 = v28 / 1000000000.0;
      }

      v33 = __error();
      v34 = strerror(*v33);
      *buf = 134218498;
      v42 = v29;
      v43 = 2080;
      v44 = "com.apple.AttentionAwareness";
      v45 = 2080;
      v46 = v34;
      v32 = "%13.5f: AW SHARED MEM: failed to close open fildes for %s shm object: %s";
    }

    _os_log_error_impl(&dword_1BB2EF000, v12, OS_LOG_TYPE_ERROR, v32, buf, 0x20u);
    goto LABEL_23;
  }

  if (v40.st_size)
  {
    return 1;
  }

  v9 = *data;
LABEL_15:
  if (ftruncate(v9, v8) != -1)
  {
    return 1;
  }

  if (currentLogLevel >= 3)
  {
    v10 = _AALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = absTimeNS();
      if (v15 == -1)
      {
        v16 = INFINITY;
      }

      else
      {
        v16 = v15 / 1000000000.0;
      }

      v35 = *v7;
      v36 = __error();
      v37 = strerror(*v36);
      *buf = 134218754;
      v42 = v16;
      v43 = 2080;
      v44 = "com.apple.AttentionAwareness";
      v45 = 2048;
      v46 = v35;
      v47 = 2080;
      v48 = v37;
      v25 = "%13.5f: AW SHARED MEM: failed to truncate %s shm object to %lu: %s";
      v26 = v10;
      v27 = 42;
      goto LABEL_40;
    }

LABEL_12:
  }

LABEL_32:
  if (!error)
  {
    return 0;
  }

  v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
  v20 = v19;
  result = 0;
  *error = v19;
  return result;
}

+ (BOOL)validateAWPersistentDataHeader:(id *)header
{
  v27 = *MEMORY[0x1E69E9840];
  if (!header)
  {
    __assert_rtn("+[AWPersistentDataManager validateAWPersistentDataHeader:]", "PersistentDataManager.m", 99, "hdr");
  }

  if (header->var0 == 1)
  {
    if (header->var1 == 32)
    {
      v4 = MEMORY[0x1E69E9AC8];
      if (header->var2 == *MEMORY[0x1E69E9AC8])
      {
        if (header->var3 == 88)
        {
          return 1;
        }

        if (currentLogLevel >= 3)
        {
          v6 = _AALog();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            v13 = absTimeNS();
            if (v13 == -1)
            {
              v14 = INFINITY;
            }

            else
            {
              v14 = v13 / 1000000000.0;
            }

            var3 = header->var3;
            v21 = 134218496;
            v22 = v14;
            v23 = 2048;
            v24 = var3;
            v25 = 2048;
            v26 = 88;
            v16 = "%13.5f: AW SHARED MEM: unexpected client size %llu, expected %llu";
LABEL_31:
            _os_log_error_impl(&dword_1BB2EF000, v6, OS_LOG_TYPE_ERROR, v16, &v21, 0x20u);
            goto LABEL_32;
          }

          goto LABEL_32;
        }
      }

      else if (currentLogLevel >= 3)
      {
        v6 = _AALog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v11 = absTimeNS();
          if (v11 == -1)
          {
            v12 = INFINITY;
          }

          else
          {
            v12 = v11 / 1000000000.0;
          }

          var2 = header->var2;
          v19 = *v4;
          v21 = 134218496;
          v22 = v12;
          v23 = 2048;
          v24 = var2;
          v25 = 2048;
          v26 = v19;
          v16 = "%13.5f: AW SHARED MEM: unexpected shared memory size %llu, expected %llu";
          goto LABEL_31;
        }

LABEL_32:
      }
    }

    else if (currentLogLevel >= 3)
    {
      v6 = _AALog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = absTimeNS();
        if (v9 == -1)
        {
          v10 = INFINITY;
        }

        else
        {
          v10 = v9 / 1000000000.0;
        }

        var1 = header->var1;
        v21 = 134218496;
        v22 = v10;
        v23 = 2048;
        v24 = var1;
        v25 = 2048;
        v26 = 32;
        v16 = "%13.5f: AW SHARED MEM: unexpected header size %llu, expected %llu";
        goto LABEL_31;
      }

      goto LABEL_32;
    }
  }

  else if (currentLogLevel >= 3)
  {
    v6 = _AALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = absTimeNS();
      if (v7 == -1)
      {
        v8 = INFINITY;
      }

      else
      {
        v8 = v7 / 1000000000.0;
      }

      var0 = header->var0;
      v21 = 134218496;
      v22 = v8;
      v23 = 2048;
      v24 = var0;
      v25 = 2048;
      v26 = 1;
      v16 = "%13.5f: AW SHARED MEM: unexpected header version %llu, expected %llu";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  return 0;
}

+ (void)initAWPersistentDataHeader:(id *)header
{
  if (!header)
  {
    __assert_rtn("+[AWPersistentDataManager initAWPersistentDataHeader:]", "PersistentDataManager.m", 90, "hdr");
  }

  *&header->var0 = xmmword_1BB32B2B0;
  header->var2 = *MEMORY[0x1E69E9AC8];
  header->var3 = 88;
}

+ (BOOL)AWPersistentDataExists:(int *)exists
{
  if (!exists)
  {
    __assert_rtn("+[AWPersistentDataManager AWPersistentDataExists:]", "PersistentDataManager.m", 77, "fildes");
  }

  v4 = shm_open("com.apple.AttentionAwareness", 2562, 384);
  *exists = v4;
  return v4 == -1 && *__error() == 17;
}

uint64_t __40__AWPersistentDataManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(AWPersistentDataManager);
  v1 = sharedManager_manager;
  sharedManager_manager = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
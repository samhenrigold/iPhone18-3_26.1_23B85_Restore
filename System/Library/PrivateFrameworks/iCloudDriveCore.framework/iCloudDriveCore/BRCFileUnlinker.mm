@interface BRCFileUnlinker
- (BOOL)renameAndUnlinkInBackgroundItemAt:(int)at path:(id)path;
- (BRCFileUnlinker)initWithCacheDirPath:(id)path;
- (void)_purge;
- (void)dealloc;
- (void)forcePurgeWithCompletionBlock:(id)block;
- (void)resume;
- (void)suspend;
@end

@implementation BRCFileUnlinker

- (BRCFileUnlinker)initWithCacheDirPath:(id)path
{
  pathCopy = path;
  v27.receiver = self;
  v27.super_class = BRCFileUnlinker;
  v5 = [(BRCFileUnlinker *)&v27 init];
  v6 = v5;
  if (v5)
  {
    atomic_store(1u, &v5->_suspendCount);
    v7 = [pathCopy stringByAppendingPathComponent:@"unlink"];
    unlinkRootPath = v6->_unlinkRootPath;
    v6->_unlinkRootPath = v7;

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(v9, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.bird.file-unlinker", v10);

    queue = v6->_queue;
    v6->_queue = v11;

    v13 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, v6->_queue);
    cachePurgeSource = v6->_cachePurgeSource;
    v6->_cachePurgeSource = v13;

    objc_initWeak(&location, v6);
    v15 = v6->_cachePurgeSource;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __40__BRCFileUnlinker_initWithCacheDirPath___block_invoke;
    v24[3] = &unk_2784FF400;
    objc_copyWeak(&v25, &location);
    v16 = v15;
    v17 = v24;
    v18 = v16;
    v19 = v17;
    v20 = v19;
    v21 = v19;
    if (*MEMORY[0x277CFB010])
    {
      v21 = (*MEMORY[0x277CFB010])(v19);
    }

    v22 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v21);
    dispatch_source_set_event_handler(v18, v22);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __40__BRCFileUnlinker_initWithCacheDirPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = os_transaction_create();
    [v4 _purge];
    v3 = objc_opt_self();

    WeakRetained = v4;
  }
}

- (void)dealloc
{
  [(BRCFileUnlinker *)self suspend];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachePurgeSource = selfCopy->_cachePurgeSource;
  if (cachePurgeSource)
  {
    dispatch_resume(cachePurgeSource);
    v5 = selfCopy->_cachePurgeSource;
    selfCopy->_cachePurgeSource = 0;
  }

  objc_sync_exit(selfCopy);

  v6.receiver = selfCopy;
  v6.super_class = BRCFileUnlinker;
  [(BRCFileUnlinker *)&v6 dealloc];
}

- (void)resume
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v2 = 138412290;
    v3 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: suspendCount >= 0%@", &v2, 0xCu);
  }
}

- (void)suspend
{
  v8 = *MEMORY[0x277D85DE8];
  v3[0] = 67109634;
  v3[1] = self;
  v4 = 1024;
  v5 = self + 1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] suspending - suspendCount:%d->%d%@", v3, 0x18u);
}

- (void)_purge
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  selfCopy = self;
  v5 = 2112;
  v6 = a2;
- (void)forcePurgeWithCompletionBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__BRCFileUnlinker_forcePurgeWithCompletionBlock___block_invoke;
  v8[3] = &unk_278500048;
  v8[4] = self;
  v9 = blockCopy;
  v6 = blockCopy;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v8);
  dispatch_async(queue, v7);
}

uint64_t __49__BRCFileUnlinker_forcePurgeWithCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _purge];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (BOOL)renameAndUnlinkInBackgroundItemAt:(int)at path:(id)path
{
  v80 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  memset(&v45, 0, sizeof(v45));
  if ((fstatat(at, [pathCopy fileSystemRepresentation], &v45, 32) & 0x80000000) == 0)
  {
    v7 = self->_unlinkRootPath;
    if ((BRCMkdirAt(-1, v7, 511) & 0x80000000) != 0 && *__error() != 17)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v11 = [(NSString *)v7 stringByAppendingPathComponent:uUIDString];

    if ((BRCRenameAt(at, pathCopy, -1, v11, 0) & 0x80000000) == 0)
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v25 = aPcDBLSW[v45.st_mode >> 12];
        if ((v45.st_mode & 0x100) != 0)
        {
          v26 = 114;
        }

        else
        {
          v26 = 45;
        }

        if ((v45.st_mode & 0x80) != 0)
        {
          v27 = 119;
        }

        else
        {
          v27 = 45;
        }

        if ((v45.st_mode & 0x40) != 0)
        {
          v28 = 120;
        }

        else
        {
          v28 = 45;
        }

        if ((v45.st_mode & 0x20) != 0)
        {
          v29 = 114;
        }

        else
        {
          v29 = 45;
        }

        if ((v45.st_mode & 0x10) != 0)
        {
          v30 = 119;
        }

        else
        {
          v30 = 45;
        }

        if ((v45.st_mode & 8) != 0)
        {
          v31 = 120;
        }

        else
        {
          v31 = 45;
        }

        if ((v45.st_mode & 4) != 0)
        {
          v32 = 114;
        }

        else
        {
          v32 = 45;
        }

        if ((v45.st_mode & 2) != 0)
        {
          v33 = 119;
        }

        else
        {
          v33 = 45;
        }

        if (v45.st_mode)
        {
          v34 = 120;
        }

        else
        {
          v34 = 45;
        }

        *buf = 138417922;
        *v47 = pathCopy;
        *&v47[8] = 2112;
        *&v47[10] = v11;
        *&v47[18] = 1024;
        *&v47[20] = v45.st_dev;
        v48 = 2048;
        *v49 = v45.st_ino;
        *&v49[8] = 1024;
        *&v49[10] = v25;
        v50 = 1024;
        v51 = v26;
        v52 = 1024;
        v53 = v27;
        v54 = 1024;
        v55 = v28;
        v56 = 1024;
        v57 = v29;
        v58 = 1024;
        v59 = v30;
        v60 = 1024;
        v61 = v31;
        v62 = 1024;
        v63 = v32;
        v64 = 1024;
        v65 = v33;
        v66 = 1024;
        v67 = v34;
        v68 = 1024;
        st_nlink = v45.st_nlink;
        v70 = 1024;
        st_uid = v45.st_uid;
        v72 = 1024;
        st_gid = v45.st_gid;
        v74 = 2048;
        *v75 = v45.st_atimespec.tv_sec;
        *&v75[8] = 2048;
        *&v75[10] = v45.st_mtimespec.tv_sec;
        *&v75[18] = 2048;
        *&v75[20] = v45.st_ctimespec.tv_sec;
        *&v75[28] = 2048;
        *&v75[30] = v45.st_size;
        *&v75[38] = 1024;
        *&v75[40] = v45.st_flags;
        v76 = 2112;
        *v77 = v12;
        _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] renamed '%@' to '%@' deviceID:%u fileID:%llu mode:%c%c%c%c%c%c%c%c%c%c nlink:%u uid:%u gid:%u atime:%lu mtime:%lu ctime:%lu size:%llu flags:0x%x%@", buf, 0xACu);
      }

      if (chflags([v11 fileSystemRepresentation], 0) < 0)
      {
        v14 = brc_bread_crumbs();
        v15 = brc_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [(BRCFileUnlinker *)v11 renameAndUnlinkInBackgroundItemAt:v14 path:v15];
        }
      }

      cachePurgeSource = self->_cachePurgeSource;
      v17 = 1;
      dispatch_source_merge_data(cachePurgeSource, 1uLL);

      goto LABEL_19;
    }

    v21 = *__error();
    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, 0x90u))
    {
      v35 = aPcDBLSW[v45.st_mode >> 12];
      if ((v45.st_mode & 0x100) != 0)
      {
        v36 = 114;
      }

      else
      {
        v36 = 45;
      }

      if ((v45.st_mode & 0x80) != 0)
      {
        v37 = 119;
      }

      else
      {
        v37 = 45;
      }

      if ((v45.st_mode & 0x40) != 0)
      {
        v38 = 120;
      }

      else
      {
        v38 = 45;
      }

      if ((v45.st_mode & 0x20) != 0)
      {
        v39 = 114;
      }

      else
      {
        v39 = 45;
      }

      if ((v45.st_mode & 0x10) != 0)
      {
        v40 = 119;
      }

      else
      {
        v40 = 45;
      }

      if ((v45.st_mode & 8) != 0)
      {
        v41 = 120;
      }

      else
      {
        v41 = 45;
      }

      if ((v45.st_mode & 4) != 0)
      {
        v42 = 114;
      }

      else
      {
        v42 = 45;
      }

      if ((v45.st_mode & 2) != 0)
      {
        v43 = 119;
      }

      else
      {
        v43 = 45;
      }

      if (v45.st_mode)
      {
        v44 = 120;
      }

      else
      {
        v44 = 45;
      }

      *buf = 67115266;
      *v47 = at;
      *&v47[4] = 2112;
      *&v47[6] = pathCopy;
      *&v47[14] = 2112;
      *&v47[16] = v11;
      v48 = 1024;
      *v49 = v45.st_dev;
      *&v49[4] = 2048;
      *&v49[6] = v45.st_ino;
      v50 = 1024;
      v51 = v35;
      v52 = 1024;
      v53 = v36;
      v54 = 1024;
      v55 = v37;
      v56 = 1024;
      v57 = v38;
      v58 = 1024;
      v59 = v39;
      v60 = 1024;
      v61 = v40;
      v62 = 1024;
      v63 = v41;
      v64 = 1024;
      v65 = v42;
      v66 = 1024;
      v67 = v43;
      v68 = 1024;
      st_nlink = v44;
      v70 = 1024;
      st_uid = v45.st_nlink;
      v72 = 1024;
      st_gid = v45.st_uid;
      v74 = 1024;
      *v75 = v45.st_gid;
      *&v75[4] = 2048;
      *&v75[6] = v45.st_atimespec.tv_sec;
      *&v75[14] = 2048;
      *&v75[16] = v45.st_mtimespec.tv_sec;
      *&v75[24] = 2048;
      *&v75[26] = v45.st_ctimespec.tv_sec;
      *&v75[34] = 2048;
      *&v75[36] = v45.st_size;
      v76 = 1024;
      *v77 = v45.st_flags;
      *&v77[4] = 1024;
      *&v77[6] = v21;
      v78 = 2112;
      v79 = v22;
      _os_log_error_impl(&dword_223E7A000, v23, 0x90u, "[ERROR] renameat(%d, '%@', -1, '%@' deviceID:%u fileID:%llu mode:%c%c%c%c%c%c%c%c%c%c nlink:%u uid:%u gid:%u atime:%lu mtime:%lu ctime:%lu size:%llu flags:0x%x failed %{errno}d%@", buf, 0xB8u);
    }

    *__error() = v21;
LABEL_18:
    v17 = 0;
    goto LABEL_19;
  }

  if (*__error() == 2)
  {
    goto LABEL_18;
  }

  v18 = *__error();
  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, 0x90u))
  {
    *buf = 138412802;
    *v47 = pathCopy;
    *&v47[8] = 1024;
    *&v47[10] = v18;
    *&v47[14] = 2112;
    *&v47[16] = v19;
    _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] lstat('%@') failed %{errno}d%@", buf, 0x1Cu);
  }

  v17 = 0;
  *__error() = v18;
LABEL_19:

  return v17;
}

@end
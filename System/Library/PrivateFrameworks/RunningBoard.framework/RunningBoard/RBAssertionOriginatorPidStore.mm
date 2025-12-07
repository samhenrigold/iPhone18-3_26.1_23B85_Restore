@interface RBAssertionOriginatorPidStore
- (BOOL)_lock_allocSharedMemoryWithName:(off_t)name size:(void *)size address:(int *)address fileDescriptor:(_BYTE *)descriptor created:;
- (BOOL)containsPid:(int)pid;
- (BOOL)isValid;
- (NSString)debugDescription;
- (NSString)stateCaptureTitle;
- (RBAssertionOriginatorPidStore)initWithPath:(id)path;
- (uint64_t)_lock_isHeaderValid;
- (uint64_t)_lock_isPidDataValid;
- (uint64_t)_lock_resizeSharedMemoryIfNecessary;
- (unint64_t)_lock_indexOfPidInSharedMemory:(unint64_t)result;
- (void)_allocSharedMemory;
- (void)_lock_addPidToSharedMemory:(void *)memory;
- (void)_lock_deallocSharedMemory;
- (void)_lock_removePidFromSharedMemory:(unint64_t)memory;
- (void)addPid:(int)pid;
- (void)dealloc;
- (void)removePid:(int)pid;
- (void)setValidProcesses:(id)processes;
@end

@implementation RBAssertionOriginatorPidStore

- (uint64_t)_lock_resizeSharedMemoryIfNecessary
{
  selfCopy = self;
  v23 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (!self[3])
    {
      return 0;
    }

    v2 = self[1];
    if (!v2)
    {
      return 0;
    }

    v3 = *v2;
    if (v2[1] < *v2)
    {
      return 1;
    }

    v5 = 2 * v3;
    v6 = 4 * (2 * v3);
    v7 = self[2];
    if (v2[2])
    {
      v8 = @"pids1";
    }

    else
    {
      v8 = @"pids2";
    }

    v9 = [v7 stringByAppendingPathComponent:v8];
    __dst = 0;
    v19 = 0;
    shm_unlink([v9 UTF8String]);
    if (-[RBAssertionOriginatorPidStore _lock_allocSharedMemoryWithName:size:address:fileDescriptor:created:](selfCopy, [v9 UTF8String], v6, &__dst, &v19, &v18))
    {
      v10 = __dst;
      if (__dst)
      {
        memcpy(__dst, *(selfCopy + 24), 4 * **(selfCopy + 8));
        munmap(*(selfCopy + 24), 4 * **(selfCopy + 8));
        close(*(selfCopy + 36));
        if (*(*(selfCopy + 8) + 8))
        {
          v11 = "pids2";
        }

        else
        {
          v11 = "pids1";
        }

        shm_unlink(v11);
        *(selfCopy + 24) = v10;
        *(selfCopy + 36) = v19;
        v12 = *(selfCopy + 8);
        v12[2] = 1 - v12[2];
        *v12 = v5;
        v13 = rbs_assertion_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          v22 = v5;
          _os_log_debug_impl(&dword_262485000, v13, OS_LOG_TYPE_DEBUG, "Resized RBSAssertionManagerStore shared memory to %d", buf, 8u);
        }

        selfCopy = 1;
        goto LABEL_19;
      }

      v14 = rbs_assertion_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = *__error();
        *buf = 67109120;
        v22 = v17;
        v16 = "Unexpected NULL value for address when setting size of shared memory for RBSAssertionManagerStore: %d";
        goto LABEL_24;
      }
    }

    else
    {
      v14 = rbs_assertion_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *__error();
        *buf = 67109120;
        v22 = v15;
        v16 = "Error setting size of shared memory for RBSAssertionManagerStore: %d";
LABEL_24:
        _os_log_error_impl(&dword_262485000, v14, OS_LOG_TYPE_ERROR, v16, buf, 8u);
      }
    }

    [(RBAssertionOriginatorPidStore *)selfCopy _lock_deallocSharedMemory];
    selfCopy = 0;
LABEL_19:
  }

  return selfCopy;
}

- (RBAssertionOriginatorPidStore)initWithPath:(id)path
{
  pathCopy = path;
  v10.receiver = self;
  v10.super_class = RBAssertionOriginatorPidStore;
  v5 = [(RBAssertionOriginatorPidStore *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v8 = [pathCopy copy];
    path = v6->_path;
    v6->_path = v8;

    [(RBAssertionOriginatorPidStore *)v6 _allocSharedMemory];
  }

  return v6;
}

- (NSString)debugDescription
{
  os_unfair_lock_lock(&self->_lock);
  header = self->_header;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [objc_opt_class() description];
  v6 = v5;
  path = self->_path;
  pidsID = self->_pidsID;
  if (header)
  {
    v9 = [v4 initWithFormat:@"<%@| path:%@ headerID:%d pidsID:%d header:{size:%u count:%u bufferIndex:%u}", v5, path, self->_headerID, pidsID, self->_header->var0, self->_header->var1, self->_header->var2];
  }

  else
  {
    v9 = [v4 initWithFormat:@"<%@| path:%@ headerID:%d pidsID:%d>", v5, path, self->_headerID, pidsID, v12, v13, v14];
  }

  v10 = v9;

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  [(RBAssertionOriginatorPidStore *)self _lock_deallocSharedMemory];
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = RBAssertionOriginatorPidStore;
  [(RBAssertionOriginatorPidStore *)&v3 dealloc];
}

- (void)addPid:(int)pid
{
  os_unfair_lock_lock(&self->_lock);
  [(RBAssertionOriginatorPidStore *)self _lock_addPidToSharedMemory:pid];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removePid:(int)pid
{
  os_unfair_lock_lock(&self->_lock);
  [(RBAssertionOriginatorPidStore *)self _lock_removePidFromSharedMemory:pid];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isValid
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_pids != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setValidProcesses:(id)processes
{
  processesCopy = processes;
  os_unfair_lock_lock(&self->_lock);
  if (self->_pids)
  {
    v5 = malloc_type_malloc(4 * [processesCopy count], 0x100004052888210uLL);
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v10 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__RBAssertionOriginatorPidStore_setValidProcesses___block_invoke;
    v8[3] = &unk_279B339F0;
    v8[4] = v9;
    v8[5] = v5;
    [processesCopy enumerateObjectsUsingBlock:v8];
    qsort(v5, [processesCopy count], 4uLL, _RBAssertionManagerStoreComparePids);
    if (self->_header->var1)
    {
      v6 = 0;
      do
      {
        __key = self->_pids[v6];
        if (!bsearch(&__key, v5, [processesCopy count], 4uLL, _RBAssertionManagerStoreComparePids))
        {
          [(RBAssertionOriginatorPidStore *)self _lock_removePidFromSharedMemory:?];
          --v6;
        }

        ++v6;
      }

      while (v6 < self->_header->var1);
    }

    free(v5);
    _Block_object_dispose(v9, 8);
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __51__RBAssertionOriginatorPidStore_setValidProcesses___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 handle];
  *(*(a1 + 40) + 4 * *(*(*(a1 + 32) + 8) + 24)) = [v3 pid];

  ++*(*(*(a1 + 32) + 8) + 24);
}

- (NSString)stateCaptureTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_allocSharedMemory
{
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    v7 = 0;
    v2 = [*(self + 16) stringByAppendingPathComponent:@"header"];
    if (-[RBAssertionOriginatorPidStore _lock_allocSharedMemoryWithName:size:address:fileDescriptor:created:](self, [v2 UTF8String], 12, (self + 8), (self + 32), &v7))
    {
      if (v7 == 1)
      {
        v3 = *(self + 8);
        if (v3)
        {
          *v3 = 4096;
          *(v3 + 8) = 0;
        }
      }

      if ([(RBAssertionOriginatorPidStore *)self _lock_isHeaderValid])
      {
        if (*(*(self + 8) + 8))
        {
          v4 = @"pids2";
        }

        else
        {
          v4 = @"pids1";
        }

        v5 = [*(self + 16) stringByAppendingPathComponent:v4];
        if (-[RBAssertionOriginatorPidStore _lock_allocSharedMemoryWithName:size:address:fileDescriptor:created:](self, [v5 UTF8String], 4 * **(self + 8), (self + 24), (self + 36), &v7))
        {
          isPidData = [(RBAssertionOriginatorPidStore *)self _lock_isPidDataValid];

          if (isPidData)
          {
LABEL_15:
            os_unfair_lock_unlock((self + 40));

            return;
          }
        }

        else
        {
        }
      }
    }

    [(RBAssertionOriginatorPidStore *)self _lock_deallocSharedMemory];
    goto LABEL_15;
  }
}

- (void)_lock_deallocSharedMemory
{
  if (self)
  {
    v2 = *(self + 24);
    if (v2)
    {
      v3 = *(self + 8);
      if (v3)
      {
        munmap(v2, 4 * *v3);
        close(*(self + 36));
        if (*(*(self + 8) + 8))
        {
          v4 = @"pids2";
        }

        else
        {
          v4 = @"pids1";
        }

        v5 = [*(self + 16) stringByAppendingPathComponent:v4];
        shm_unlink([v5 UTF8String]);
        *(self + 24) = 0;
      }
    }

    v6 = *(self + 8);
    if (v6)
    {
      munmap(v6, 0xCuLL);
      close(*(self + 32));
      v8 = [*(self + 16) stringByAppendingPathComponent:@"header"];
      v7 = v8;
      shm_unlink([v8 UTF8String]);
      *(self + 8) = 0;
    }
  }
}

- (void)_lock_addPidToSharedMemory:(void *)memory
{
  if (memory && memory[3] && memory[1])
  {
    if ([(RBAssertionOriginatorPidStore *)memory _lock_indexOfPidInSharedMemory:a2]== -1)
    {
      if (![(RBAssertionOriginatorPidStore *)memory _lock_resizeSharedMemoryIfNecessary])
      {
        v4 = rbs_assertion_log();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_4_4();
          _os_log_error_impl(v14, v15, OS_LOG_TYPE_ERROR, v16, v17, 2u);
        }

        goto LABEL_9;
      }

      v10 = memory[1];
      *(memory[3] + 4 * (*(v10 + 4))++) = a2;
      OUTLINED_FUNCTION_0_12();
      qsort(v11, v12, 4uLL, v13);
      v4 = rbs_assertion_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_1_15();
        OUTLINED_FUNCTION_4_4();
        v9 = 20;
        goto LABEL_8;
      }
    }

    else
    {
      v4 = rbs_assertion_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_4_4();
        v9 = 8;
LABEL_8:
        _os_log_impl(v5, v6, OS_LOG_TYPE_INFO, v7, v8, v9);
      }
    }

LABEL_9:
  }
}

- (void)_lock_removePidFromSharedMemory:(unint64_t)memory
{
  v13 = *MEMORY[0x277D85DE8];
  if (memory && *(memory + 24) && *(memory + 8))
  {
    v4 = [(RBAssertionOriginatorPidStore *)memory _lock_indexOfPidInSharedMemory:a2];
    if (v4 == -1)
    {
      v10 = rbs_assertion_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 67109120;
        v12 = a2;
        _os_log_error_impl(&dword_262485000, v10, OS_LOG_TYPE_ERROR, "Cannot remove unknown pid %d from RBSAssertionManagerStore", &v11, 8u);
      }
    }

    else
    {
      v5 = *(memory + 8);
      v6 = *(v5 + 4);
      LODWORD(v7) = v6 - 1;
      if (v6 <= 1)
      {
        v8 = *(memory + 24);
      }

      else
      {
        v8 = *(memory + 24);
        if (v4 < v7)
        {
          v9 = v4;
          do
          {
            *(v8 + 4 * v9) = *(v8 + 4 * v9 + 4);
            v7 = (*(v5 + 4) - 1);
            ++v9;
          }

          while (v9 < v7);
        }
      }

      *(v5 + 4) = v7;
      *(v8 + 4 * v7) = 0;
      v10 = rbs_assertion_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 67109632;
        v12 = a2;
        OUTLINED_FUNCTION_1_15();
        _os_log_impl(&dword_262485000, v10, OS_LOG_TYPE_INFO, "Removed pid %d from RBSAssertionManagerStore; count %d; size %d", &v11, 0x14u);
      }
    }
  }
}

- (BOOL)containsPid:(int)pid
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    v5 = [(RBAssertionOriginatorPidStore *)self _lock_indexOfPidInSharedMemory:pid]!= -1;
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (BOOL)_lock_allocSharedMemoryWithName:(off_t)name size:(void *)size address:(int *)address fileDescriptor:(_BYTE *)descriptor created:
{
  v30 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    return result;
  }

  *size = -1;
  v10 = shm_open(a2, 514, 384);
  *address = v10;
  if (v10 < 0)
  {
    v21 = rbs_assertion_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *__error();
      v29.st_dev = 67109120;
      *&v29.st_mode = v22;
      v23 = "Error opening shared memory for RBSAssertionManagerStore: %d";
      v24 = &v29;
LABEL_12:
      _os_log_error_impl(&dword_262485000, v21, OS_LOG_TYPE_ERROR, v23, v24, 8u);
    }

LABEL_13:

    goto LABEL_14;
  }

  v11 = v10;
  bzero(&v29, 0x90uLL);
  v12 = fstat(v11, &v29);
  v16 = *address;
  if (v12 == -1 || v29.st_size)
  {
    *size = OUTLINED_FUNCTION_3_4(v12, v13, v14, v15, v16);
    *descriptor = 0;
    goto LABEL_14;
  }

  v17 = ftruncate(v16, name);
  if ((v17 & 0x80000000) != 0)
  {
    v21 = rbs_assertion_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v25 = *__error();
      *buf = 67109120;
      v28 = v25;
      v23 = "Error setting size of shared memory for RBSAssertionManagerStore: %d";
      v24 = buf;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  *size = OUTLINED_FUNCTION_3_4(v17, v18, v19, v20, *address);
  *descriptor = 1;
LABEL_14:
  v26 = *size;
  if (*size == -1)
  {
    v26 = 0;
    *size = 0;
  }

  return v26 != 0;
}

- (uint64_t)_lock_isHeaderValid
{
  if (result)
  {
    v1 = *(result + 8);
    if (!v1)
    {
      return 0;
    }

    if (*(*(result + 8) + 4) > *v1)
    {
      v2 = rbs_assertion_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_2_9();
        OUTLINED_FUNCTION_4_4();
        _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0xEu);
      }

      return 0;
    }

    return 1;
  }

  return result;
}

- (uint64_t)_lock_isPidDataValid
{
  v10 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = *(result + 24);
    if (v1 && (v2 = *(result + 8)) != 0)
    {
      v3 = *(v2 + 4);
      if (v3 >= 2)
      {
        v4 = 0;
        v5 = 4 * (v3 - 1);
        while (v5 != v4)
        {
          v7 = *(v1 + v4);
          v6 = *(v1 + v4 + 4);
          v4 += 4;
          if (v7 >= v6)
          {
            v8 = rbs_assertion_log();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_2_9();
              _os_log_error_impl(&dword_262485000, v8, OS_LOG_TYPE_ERROR, "Shared memory for RBSAssertionManagerStore contains misordered or duplicate pids: %d; %d", v9, 0xEu);
            }

            return 0;
          }
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (unint64_t)_lock_indexOfPidInSharedMemory:(unint64_t)result
{
  __key = a2;
  if (result)
  {
    v2 = result;
    v3 = *(result + 24);
    if (v3 && (v4 = *(result + 8)) != 0)
    {
      v5 = bsearch(&__key, v3, *(v4 + 4), 4uLL, _RBAssertionManagerStoreComparePids);
      if (v5)
      {
        return (v5 - *(v2 + 24)) >> 2;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end
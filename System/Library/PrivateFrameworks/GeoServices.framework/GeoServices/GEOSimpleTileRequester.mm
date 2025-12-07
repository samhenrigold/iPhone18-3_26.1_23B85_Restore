@interface GEOSimpleTileRequester
- (unsigned)highestRunningOperationPriority;
- (void)_checkIfDone;
- (void)_updateRunningCountAndCheckIfDone;
@end

@implementation GEOSimpleTileRequester

- (void)_updateRunningCountAndCheckIfDone
{
  v21 = *MEMORY[0x1E69E9840];
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &v9);
  if (!self->_cancelled)
  {
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = self->_running;
    priority = 0;
    v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          if (priority <= [v8 priority])
          {
            priority = [v8 priority];
          }
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }

    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __55__GEOSimpleTileRequester__updateHighestRunningPriority__block_invoke;
    v13 = &unk_1E70708F0;
    selfCopy = self;
    v15 = priority;
    geo_isolate_sync_data();
    [(GEOSimpleTileRequester *)self _checkIfDone];
  }

  os_activity_scope_leave(&v9);
}

- (void)_checkIfDone
{
  v20[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = *(self + 72);
    if ([v2 count])
    {
      v3 = 0;
    }

    else
    {
      v3 = *(self + 125) ^ 1;
    }

    v4 = GEOGetTileLoadingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [*(self + 72) count];
      v6 = *(self + 125);
      tileRequest = [self tileRequest];
      keyList = [tileRequest keyList];
      *buf = 134219264;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = v2 != 0;
      *&buf[18] = 1024;
      *&buf[20] = v3 & 1;
      LOWORD(v19) = 2048;
      *(&v19 + 2) = v5;
      WORD5(v19) = 1024;
      HIDWORD(v19) = v6;
      LOWORD(v20[0]) = 2048;
      *(v20 + 2) = [keyList count];
      _os_log_impl(&dword_18660C000, v4, OS_LOG_TYPE_DEBUG, "%p didStart: %{BOOL}d, didFinish: %{BOOL}d, running: %zu, remaining keys: %{BOOL}d, key count = %zu", buf, 0x32u);
    }

    if (((v2 != 0) & v3) == 1)
    {
      v9 = GEOGetTileLoadingLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        tileRequest2 = [self tileRequest];
        keyList2 = [tileRequest2 keyList];
        v12 = [keyList2 count];
        v13 = [*(self + 80) count];
        *buf = 134218496;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = v12;
        *&buf[22] = 2048;
        *&v19 = v13;
        _os_log_impl(&dword_18660C000, v9, OS_LOG_TYPE_INFO, "%p Tile requester is done (key count = %zu, error count = %zu)", buf, 0x20u);
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __38__GEOSimpleTileRequester__checkIfDone__block_invoke;
      v17[3] = &unk_1E7071900;
      v17[4] = self;
      v14 = v17;
      v15 = GEOGetTileLoadingLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = self;
        _os_log_impl(&dword_18660C000, v15, OS_LOG_TYPE_DEBUG, "%p Notifying delegate done.", buf, 0xCu);
      }

      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __46__GEOSimpleTileRequester__notifyDelegateDone___block_invoke;
      *&v19 = &unk_1E706FEA8;
      *(&v19 + 1) = self;
      v16 = v14;
      v20[0] = v16;
      GEOOnce(self + 116, buf);

      [self _cleanup];
    }
  }
}

void __82__GEOSimpleTileRequester_GEOTileRequestBalancer__didStartOperationsForAllTileKeys__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    *(v1 + 125) = 0;
    [(GEOSimpleTileRequester *)v1 _checkIfDone];
  }
}

- (unsigned)highestRunningOperationPriority
{
  selfCopy = self;
  v4 = self->_highestRunningOperationPriorityIsolation;
  _geo_isolate_lock_data();
  LODWORD(selfCopy) = selfCopy->_highestRunningOperationPriority;
  _geo_isolate_unlock();

  return selfCopy;
}

@end
@interface OSLogCopyTraceFile
@end

@implementation OSLogCopyTraceFile

uint64_t ___OSLogCopyTraceFile_impl_block_invoke(uint64_t a1, _DWORD *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*a2 != 24587)
  {
    return 1;
  }

  v4 = _catalog_create_with_chunk(a2, 0);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = (v4 + 64);
  do
  {
    v6 = *v6;
    if (!v6)
    {
      _catalog_destroy(v4);
      return 1;
    }

    v7 = *(*(a1 + 48) + 8);
  }

  while (v6[2] < v7 && v6[3] < v7);
  v8 = *(a1 + 64) - a2 + *(a1 + 56);
  v9 = *(a1 + 80);
  v10 = *(*(a1 + 72) + 8) + 16;
  v21 = *(a1 + 72);
  v22 = v10;
  v23 = a2;
  v24 = v8;
  v11 = _OSLogUUIDMapAddFromFile(a2, v8, v9, *(a1 + 32));
  if (v11)
  {
    v12 = v11;
    if (fcntl(*(a1 + 96), 50, v20) == -1)
    {
      __error();
      _os_assumes_log();
    }

    v13 = *(a1 + 32);
    v14 = *(a1 + 88);
    v15 = strerror(v12);
    _OSLogWarningMessage(v13, "failed to index uuids: '%s' to '%s': %s (%d)", v20, v14, v15, v12);
  }

  if (_os_trace_writev() == -1)
  {
    v16 = *__error();
    if (fcntl(*(a1 + 100), 50, v20) == -1)
    {
      __error();
      _os_assumes_log();
    }

    v17 = *(a1 + 32);
    v18 = strerror(v16);
    _OSLogWarningMessage(v17, "failed to write file data to temp file: '%s': %s (%d)", v20, v18, v16);
  }

  *(*(*(a1 + 40) + 8) + 24) = v8 + *(*(a1 + 72) + 8) + 16;
  _catalog_destroy(v5);
  return 0;
}

uint64_t ___OSLogCopyTraceFile_implWithRepack_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"nil";
  }

  if (([(__CFString *)v4 containsString:@"nonsparse"]& 1) != 0 || ([(__CFString *)v4 containsString:@"timesync"]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = [**(*(a1 + 40) + 192) composedMessage];
    v5 = [*(*(*(a1 + 32) + 8) + 40) evaluateWithObject:**(*(a1 + 40) + 192)];
  }

  return v5;
}

uint64_t ___OSLogCopyTraceFile_implWithRepack_block_invoke_2(uint64_t a1, char *a2)
{
  v5 = *(a1 + 72);
  v4 = *(a1 + 80);
  v6 = (a2 - v5);
  v4[21] = a2 - v5;
  if (a2 == v5)
  {
    *v4 = a2 + 144;
    _repack_compact_add_iov(*(a1 + 80), a2);
    return 1;
  }

  if (*a2 == 24589)
  {
    if (!v4[3])
    {
      return 1;
    }

    v10 = v4[5];
    if (!v10)
    {
      return 1;
    }

    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [*(a1 + 40) stringByAppendingFormat:@"-%llu", v6];
      v13 = *(a1 + 80);
      v14 = *(v13 + 40);
      v15 = *(*(a1 + 88) + 8);
      if (v14[2] < v15 && v14[3] < v15)
      {
        *(v13 + 40) = *v14;

        objc_autoreleasePoolPop(v11);
        return 1;
      }

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = ___OSLogCopyTraceFile_implWithRepack_block_invoke_3;
      v25[3] = &unk_2787AEF70;
      v28 = v13;
      v19 = v12;
      v20 = *(a1 + 56);
      v26 = v19;
      v27 = v20;
      _tracev3_chunk_decompress_and_enumerate_chunks_helper(a2, v14, v25);
      v21 = *(*(*(a1 + 56) + 8) + 40);
      if (v21)
      {
        v22 = *(a1 + 48);
        v23 = [v21 userInfo];
        v24 = [v23 description];
        _OSLogWarningMessage(v22, "failed to compact chunkset: %s", [v24 UTF8String]);

        objc_autoreleasePoolPop(v11);
        return 0;
      }

      objc_autoreleasePoolPop(v11);
      v4 = *(a1 + 80);
      v10 = v4[5];
    }

    v4[5] = *v10;
    return 1;
  }

  if (*a2 == 24587)
  {
    if (!v4[3])
    {
LABEL_7:
      _repack_ttl_compact_open_catalog(v4, a2);
      _OSLogUUIDMapAddFromCatalog(*(*(a1 + 80) + 24), *(*(*(a1 + 80) + 192) + 16));
      *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) isKeptCatalog:*(*(a1 + 80) + 24)];
      return 1;
    }

    v7 = *(*(a1 + 56) + 8);
    v29 = *(v7 + 40);
    v8 = _repack_ttl_compact_close_catalog(v4, &v29);
    objc_storeStrong((v7 + 40), v29);
    if (v8)
    {
      v4 = *(a1 + 80);
      goto LABEL_7;
    }

    v16 = *(a1 + 48);
    v17 = [*(*(*(a1 + 56) + 8) + 40) userInfo];
    v18 = [v17 description];
    _OSLogWarningMessage(v16, "failed to close catalog: %s", [v18 UTF8String]);

    return 0;
  }

  return 1;
}

uint64_t ___OSLogCopyTraceFile_implWithRepack_block_invoke_3(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1[5] + 8);
  obj = *(v3 + 40);
  v4 = _compact_chunkset(a2);
  objc_storeStrong((v3 + 40), obj);
  return v4;
}

@end
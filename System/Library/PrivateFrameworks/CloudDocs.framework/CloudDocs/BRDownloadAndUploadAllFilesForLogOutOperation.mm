@interface BRDownloadAndUploadAllFilesForLogOutOperation
- (BRDownloadAndUploadAllFilesForLogOutOperation)init;
- (void)cancel;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRDownloadAndUploadAllFilesForLogOutOperation

- (BRDownloadAndUploadAllFilesForLogOutOperation)init
{
  v10.receiver = self;
  v10.super_class = BRDownloadAndUploadAllFilesForLogOutOperation;
  v2 = [(BROperation *)&v10 init];
  if (v2)
  {
    v3 = [[BRGlobalProgressProxy alloc] initWithGlobalProgressKind:0];
    progress = v2->_progress;
    v2->_progress = v3;

    v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v5;

    [(NSOperationQueue *)v2->_internalQueue setMaxConcurrentOperationCount:1];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    fileCoordinators = v2->_fileCoordinators;
    v2->_fileCoordinators = v7;
  }

  return v2;
}

- (void)cancel
{
  v22 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = BRDownloadAndUploadAllFilesForLogOutOperation;
  [(BROperation *)&v16 cancel];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  p_isa = &selfCopy->super.super.super.isa;
  v4 = selfCopy->_fileCoordinators;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v21 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = brc_bread_crumbs("[BRDownloadAndUploadAllFilesForLogOutOperation cancel]", 49);
        v10 = brc_default_log(1, 0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v18 = v8;
          v19 = 2112;
          v20 = v9;
          _os_log_debug_impl(&dword_1AE2A9000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Cancelling %@%@", buf, 0x16u);
        }

        [v8 cancel];
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v21 count:16];
    }

    while (v5);
  }

  [p_isa[41] cancel];
  objc_sync_exit(p_isa);
}

- (void)main
{
  v35 = *MEMORY[0x1E69E9840];
  [(BRProgressProxy *)self->_progress start];
  v3 = brc_bread_crumbs("[BRDownloadAndUploadAllFilesForLogOutOperation main]", 65);
  v4 = brc_default_log(1, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AE2A9000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] downloading and uploading all files because we're logging out%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__10;
  v33 = __Block_byref_object_dispose__10;
  v34 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__10;
  v24[4] = __Block_byref_object_dispose__10;
  v25 = 0;
  v5 = dispatch_group_create();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_alloc_init(BRUploadAllFilesForLogOutOperation);
  uploadOp = selfCopy->_uploadOp;
  selfCopy->_uploadOp = v7;

  [(BRUploadAllFilesForLogOutOperation *)selfCopy->_uploadOp setShouldKeepDataLocal:1];
  if ([(BROperation *)selfCopy finishIfCancelled])
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    dispatch_group_enter(v5);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke;
    v21[3] = &unk_1E7A15CA0;
    p_buf = &buf;
    v9 = v5;
    v22 = v9;
    [(BRUploadAllFilesForLogOutOperation *)selfCopy->_uploadOp setUploadAllFilesCompletionBlock:v21];
    [(NSOperationQueue *)selfCopy->_internalQueue addOperation:selfCopy->_uploadOp];

    objc_sync_exit(selfCopy);
    dispatch_group_enter(v9);
    v10 = +[BRContainer documentContainers];
    v11 = brc_bread_crumbs("[BRDownloadAndUploadAllFilesForLogOutOperation main]", 93);
    v12 = brc_default_log(1, 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 138412546;
      v27 = v10;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_1AE2A9000, v12, OS_LOG_TYPE_DEFAULT, "[NOTICE] forcing a sync down on containers: %@%@", v26, 0x16u);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_8;
    v17[3] = &unk_1E7A16840;
    v17[4] = selfCopy;
    v13 = v9;
    v18 = v13;
    v14 = v10;
    v19 = v14;
    v20 = v24;
    [BRContainer forceRefreshContainers:v14 completion:v17];
    callbackQueue = [(BROperation *)selfCopy callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_15;
    block[3] = &unk_1E7A16868;
    block[4] = selfCopy;
    block[5] = &buf;
    block[6] = v24;
    dispatch_group_notify(v13, callbackQueue, block);

    selfCopy = v14;
  }

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&buf, 8);
}

void __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = brc_bread_crumbs("[BRDownloadAndUploadAllFilesForLogOutOperation main]_block_invoke", 82);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"success";
    if (v4)
    {
      v7 = v4;
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] done uploading\n status: %@%@", &v8, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_8(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v22 = a2;
  v3 = brc_bread_crumbs("[BRDownloadAndUploadAllFilesForLogOutOperation main]_block_invoke", 95);
  v4 = brc_default_log(1, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_8_cold_1(v22, v3, v4);
  }

  if (([*(a1 + 32) finishIfCancelled] & 1) == 0)
  {
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v36 = 0u;
    obj = *(a1 + 48);
    v25 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v25)
    {
      v24 = *v37;
      *&v5 = 134218754;
      v21 = v5;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v36 + 1) + 8 * i);
          v8 = [v7 documentsURL];
          if (v8 && [v7 isDocumentScopePublic])
          {
            v9 = objc_alloc_init(MEMORY[0x1E696ABF8]);
            [v7 registerCurrentProcessAsPriorityHintWithError:0];
            v10 = [MEMORY[0x1E696ABF0] readingIntentWithURL:v8 options:131073];
            v11 = *(a1 + 32);
            objc_sync_enter(v11);
            [*(*(a1 + 32) + 304) addObject:v9];
            if ([*(a1 + 32) isCancelled])
            {
              [v9 cancel];
              objc_sync_exit(v11);

              goto LABEL_19;
            }

            objc_sync_exit(v11);

            v12 = [v7 identifier];
            v34 = 0uLL;
            v35 = 0;
            __brc_create_section(0, "[BRDownloadAndUploadAllFilesForLogOutOperation main]_block_invoke", 123, 0, &v34);
            v13 = brc_bread_crumbs("[BRDownloadAndUploadAllFilesForLogOutOperation main]_block_invoke", 123);
            v14 = brc_default_log(1, 0);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = v21;
              *&buf[4] = v34;
              *&buf[12] = 2112;
              *&buf[14] = v12;
              *&buf[22] = 2112;
              v42 = v9;
              v43 = 2112;
              v44 = v13;
              _os_log_debug_impl(&dword_1AE2A9000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx taking a coordinated read recursive on %@ using %@%@", buf, 0x2Au);
            }

            *buf = v34;
            *&buf[16] = v35;
            dispatch_group_enter(*(a1 + 40));
            v40 = v10;
            v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
            v16 = *(a1 + 32);
            v17 = *(v16 + 320);
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_12;
            v26[3] = &unk_1E7A16818;
            v32 = *buf;
            v33 = *&buf[16];
            v18 = *(a1 + 56);
            v27 = v12;
            v28 = v16;
            v31 = v18;
            v29 = v9;
            v30 = *(a1 + 40);
            v19 = v9;
            v20 = v12;
            [v19 coordinateAccessWithIntents:v15 queue:v17 byAccessor:v26];
          }
        }

        v25 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  dispatch_group_leave(*(a1 + 40));
}

void __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_12(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = *(a1 + 72);
  v17 = *(a1 + 88);
  v4 = brc_bread_crumbs("[BRDownloadAndUploadAllFilesForLogOutOperation main]_block_invoke", 128);
  v5 = brc_default_log(1, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = @"success";
    if (v3)
    {
      v15 = v3;
    }

    *buf = 134218754;
    v21 = v16;
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = v15;
    v26 = 2112;
    v27 = v4;
    _os_log_debug_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx obtained a coordinated read on %@: %@%@", buf, 0x2Au);
  }

  if (v3)
  {
    v6 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696AA08];
    v19 = v3;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v8 = [v6 errorWithDomain:@"BRCloudDocsErrorDomain" code:1001 userInfo:v7];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = *(a1 + 40);
  objc_sync_enter(v11);
  [*(*(a1 + 40) + 304) removeObject:*(a1 + 48)];
  v12 = brc_bread_crumbs("[BRDownloadAndUploadAllFilesForLogOutOperation main]_block_invoke", 135);
  v13 = brc_default_log(1, 0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_12_cold_1(v12, buf, [*(*(a1 + 40) + 304) count], v13);
  }

  objc_sync_exit(v11);
  dispatch_group_leave(*(a1 + 56));
  __brc_leave_section(&v16);
}

void __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_15(uint64_t a1)
{
  v2 = brc_bread_crumbs("[BRDownloadAndUploadAllFilesForLogOutOperation main]_block_invoke", 148);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_15_cold_1(v2, v3);
  }

  if (([*(a1 + 32) finishIfCancelled] & 1) == 0)
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);
    if (!v4)
    {
      v4 = *(*(*(a1 + 48) + 8) + 40);
    }

    v5 = v4;
    [*(a1 + 32) completedWithResult:0 error:v5];
  }
}

- (void)finishWithResult:(id)result error:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  resultCopy = result;
  v8 = brc_bread_crumbs("[BRDownloadAndUploadAllFilesForLogOutOperation finishWithResult:error:]", 166);
  v9 = brc_default_log(1, 0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"success";
    if (errorCopy)
    {
      v10 = errorCopy;
    }

    *buf = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEFAULT, "[NOTICE] uploading and downloading all files for logout finished\n status: %@%@", buf, 0x16u);
  }

  downloadAllFilesCompletionBlock = [(BRDownloadAndUploadAllFilesForLogOutOperation *)self downloadAllFilesCompletionBlock];
  v12 = downloadAllFilesCompletionBlock;
  if (downloadAllFilesCompletionBlock)
  {
    (*(downloadAllFilesCompletionBlock + 16))(downloadAllFilesCompletionBlock, errorCopy);
    [(BRDownloadAndUploadAllFilesForLogOutOperation *)self setDownloadAllFilesCompletionBlock:0];
  }

  [(BRProgressProxy *)self->_progress stop];
  +[BRContainer unregisterCurrentProcessAsPriorityHint];
  v13.receiver = self;
  v13.super_class = BRDownloadAndUploadAllFilesForLogOutOperation;
  [(BROperation *)&v13 finishWithResult:resultCopy error:errorCopy];
}

void __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_8_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] done forcing sync down: %@%@", &v3, 0x16u);
}

void __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_12_cold_1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] still waiting for %ld container(s) to download%@", buf, 0x16u);
}

void __53__BRDownloadAndUploadAllFilesForLogOutOperation_main__block_invoke_15_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] completed download and upload%@", &v2, 0xCu);
}

@end
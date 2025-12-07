@interface NSData
@end

@implementation NSData

BOOL __40__NSData_GKAdditions__imageDebugEnabled__block_invoke()
{
  result = os_log_is_debug_enabled(os_log_GKHTTP);
  imageDebugEnabled_enabled = result;
  return result;
}

void __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCAD20] requestWithURL:*(a1 + 32)];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_2;
  v11 = &unk_2785E1310;
  v15 = *(a1 + 56);
  v5 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = v3;
  v6 = v3;
  v7 = [v5 dataTaskWithRequest:v4 completionHandler:&v8];
  [v7 resume];
}

void __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_2_cold_1(a1, v11, v9);
      if (!v7)
      {
        goto LABEL_15;
      }
    }

    else if (!v7)
    {
      goto LABEL_15;
    }

    v12 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
      v12 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_2_cold_2(v12);
    }
  }

  else if (!v7)
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_2_cold_3(a1, v15);
    }
  }

LABEL_15:
  v16 = v8;
  if ([v16 statusCode] == 200)
  {
    [*(a1 + 40) setResult:v7];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_2_cold_4(a1, v18, v16);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_9(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CBEA90] imageDebugEnabled])
  {
    if (!os_log_GKGeneral)
    {
      v2 = GKOSLoggers();
    }

    v3 = os_log_GKHTTP;
    if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
    {
      v4 = v3;
      v7[0] = 67109120;
      v7[1] = GKAtomicDecrement32(imageLoadCount);
      _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "END image load: (%d)", v7, 8u);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [*(a1 + 32) result];
    (*(v5 + 16))(v5, v6);
  }
}

uint64_t __96__NSData_GKAdditions___gkLoadRemoteImageDataForURL_session_subdirectory_filename_queue_handler___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = _gkLoadRemoteImageDataForURL_session_subdirectory_filename_queue_handler__imageQueue;
  _gkLoadRemoteImageDataForURL_session_subdirectory_filename_queue_handler__imageQueue = v0;

  v2 = _gkLoadRemoteImageDataForURL_session_subdirectory_filename_queue_handler__imageQueue;

  return [v2 setMaxConcurrentOperationCount:20];
}

void __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  if (([v1 _gkIsGameCenter] & 1) != 0 || (objc_msgSend(v1, "_gkIsGameCenterExtension") & 1) != 0 || objc_msgSend(v1, "_gkIsGameDaemon"))
  {
    v0 = [objc_alloc(MEMORY[0x277CCACD8]) initWithMemoryCapacity:0 diskCapacity:0 diskPath:&stru_283AFD1E0];
    [MEMORY[0x277CCACD8] setSharedURLCache:v0];
  }
}

void __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_31(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKCache;
  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_31_cold_1(a1, v5, v6, v7, v8, v9, v10, v11);
  }

  if ([MEMORY[0x277CBEA90] imageDebugEnabled])
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKHTTP;
    if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      *buf = 67109120;
      v25 = GKAtomicIncrement32(imageLoadCount);
      _os_log_impl(&dword_227904000, v14, OS_LOG_TYPE_INFO, "BEGIN image load: (%d)", buf, 8u);
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_32;
  v17[3] = &unk_2785E1360;
  v15 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 32);
  v23 = v3;
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v22 = *(a1 + 72);
  v16 = v3;
  [v15 addOperationWithBlock:v17];
}

void __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_32(uint64_t a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_2;
  aBlock[3] = &unk_2785E1338;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 72);
  v2 = _Block_copy(aBlock);
  [MEMORY[0x277CBEA90] _gkLoadRemoteImageDataForUrl:*(a1 + 48) session:*(a1 + 56) queue:*(a1 + 64) reply:v2];
}

void __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([MEMORY[0x277CBEA90] imageDebugEnabled])
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKHTTP;
    if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      *buf = 67109120;
      v28 = GKAtomicDecrement32(imageLoadCount);
      _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "END image load: (%d)", buf, 8u);
    }
  }

  [*(a1 + 32) setResult:v3];
  if (v3)
  {
    v7 = (a1 + 40);
    v8 = [*(a1 + 40) stringByDeletingLastPathComponent];
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v26 = 0;
    v10 = [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v26];
    v11 = v26;

    if ((v10 & 1) == 0)
    {
      if (!os_log_GKGeneral)
      {
        v12 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_2_cold_1();
      }
    }

    v13 = *v7;
    v25 = 0;
    [v3 writeToFile:v13 options:1 error:&v25];
    v14 = v25;
    if (v14)
    {
      if (!os_log_GKGeneral)
      {
        v15 = GKOSLoggers();
      }

      v16 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_2_cold_2((a1 + 40), v14, v16);
      }
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v17 = GKOSLoggers();
      }

      v18 = os_log_GKCache;
      if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
      {
        __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_2_cold_3((a1 + 40), v18, v19, v20, v21, v22, v23, v24);
      }

      _gkMarkFileAsPurgeable(*v7);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_35(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) result];
    (*(v1 + 16))(v1, v2);
  }
}

void __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 56);
  v5 = a2;
  v6 = NSStringFromSelector(v4);
  OUTLINED_FUNCTION_0();
  v9 = 2112;
  v10 = v7;
  v11 = 2112;
  v12 = a3;
  _os_log_error_impl(&dword_227904000, v5, OS_LOG_TYPE_ERROR, "%@:%@: error loading image data:%@", v8, 0x20u);
}

void __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_2_cold_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = a2;
  v4 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0();
  v7 = 2112;
  v8 = v5;
  _os_log_error_impl(&dword_227904000, v3, OS_LOG_TYPE_ERROR, "%@:%@: no image data received, but no error received either", v6, 0x16u);
}

void __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_2_cold_4(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 56);
  v6 = a2;
  v7 = NSStringFromSelector(v5);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a3, "statusCode")}];
  v9 = *(a1 + 32);
  v10 = 138412802;
  v11 = v7;
  v12 = 2112;
  v13 = v8;
  v14 = 2112;
  v15 = v9;
  _os_log_error_impl(&dword_227904000, v6, OS_LOG_TYPE_ERROR, "%@: Did not receive http status OK (received %@) for url: %@", &v10, 0x20u);
}

void __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_31_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_6(&dword_227904000, a2, a3, "Did not find image at cache path %@, will load from server.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_2_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_227904000, v0, OS_LOG_TYPE_ERROR, "_gkLoadRemoteImageDataForUrl:subdirectory:filename:queue:imageQueue:handler: error creating directory:%@", v1, 0xCu);
}

void __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_2_cold_2(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_227904000, log, OS_LOG_TYPE_ERROR, "Error writing image data to image cache %@: %@", &v4, 0x16u);
}

void __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_2_cold_3(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_6(&dword_227904000, a2, a3, "Loaded and cached image data from server: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end
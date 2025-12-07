@interface LiveFSFPSearchEnumeratorHelper
+ (id)criteriaForQuery:(id)query;
+ (id)newForQuery:(id)query withExtension:(id)extension;
- (id)copySearchCompletionBlock;
- (id)copySearchResultBlock;
- (id)initForQuery:(id)query withExtension:(id)extension;
- (void)enumerateItemsForObserver:(id)observer startingAtPage:(id)page;
- (void)finallyEnumerateItemsForObserver:(id)observer inRange:(_NSRange)range;
- (void)scheduleReaders;
- (void)start;
- (void)waitForSearchResultsForObserver:(id)observer startingAtPage:(id)page;
@end

@implementation LiveFSFPSearchEnumeratorHelper

- (id)initForQuery:(id)query withExtension:(id)extension
{
  queryCopy = query;
  extensionCopy = extension;
  v9 = *MEMORY[0x277CC6348];
  v24 = 0;
  v10 = [extensionCopy itemForIdentifier:v9 error:&v24];
  v11 = v24;
  if (v10)
  {
    v23.receiver = self;
    v23.super_class = LiveFSFPSearchEnumeratorHelper;
    v12 = [(LiveFSFPEnumeratorHelper *)&v23 initForExtension:extensionCopy item:v10];
    if (v12)
    {
      v13 = livefs_std_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [LiveFSFPSearchEnumeratorHelper initForQuery:withExtension:];
      }

      objc_storeStrong(v12 + 9, query);
      v14 = dispatch_queue_create("search work queue", 0);
      v15 = v12[11];
      v12[11] = v14;

      v16 = objc_opt_new();
      v17 = v12[10];
      v12[10] = v16;

      v18 = objc_opt_new();
      v19 = v12[12];
      v12[12] = v18;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    v21 = livefs_std_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPSearchEnumeratorHelper initForQuery:withExtension:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)newForQuery:(id)query withExtension:(id)extension
{
  extensionCopy = extension;
  queryCopy = query;
  v8 = [[self alloc] initForQuery:queryCopy withExtension:extensionCopy];

  return v8;
}

+ (id)criteriaForQuery:(id)query
{
  v29 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v4 = objc_opt_new();
  [v4 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D23D70]];
  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    filename = [queryCopy filename];
    allowedContentTypes = [queryCopy allowedContentTypes];
    *buf = 136315650;
    v24 = "+[LiveFSFPSearchEnumeratorHelper criteriaForQuery:]";
    v25 = 2112;
    v26 = filename;
    v27 = 2112;
    v28 = allowedContentTypes;
    _os_log_impl(&dword_255FE9000, v5, OS_LOG_TYPE_INFO, "%s: filename '%@' allowed '%@'", buf, 0x20u);
  }

  filename2 = [queryCopy filename];
  v9 = filename2;
  if (filename2)
  {
    v22 = filename2;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    [v4 setObject:v10 forKey:*MEMORY[0x277D23D60]];
  }

  allowedContentTypes2 = [queryCopy allowedContentTypes];
  if (([allowedContentTypes2 containsObject:@"public.item"] & 1) == 0)
  {
    allowedPathExtensions = [queryCopy allowedPathExtensions];
    if (allowedPathExtensions)
    {
      v13 = objc_opt_new();
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __51__LiveFSFPSearchEnumeratorHelper_criteriaForQuery___block_invoke;
      v20 = &unk_27981A628;
      v14 = v13;
      v21 = v14;
      [allowedPathExtensions enumerateObjectsUsingBlock:&v17];
      v15 = livefs_std_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v24 = allowedContentTypes2;
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&dword_255FE9000, v15, OS_LOG_TYPE_DEFAULT, "Content types %@ gave names %@", buf, 0x16u);
      }

      if ([v14 count])
      {
        [v4 setObject:v14 forKey:*MEMORY[0x277D23D68]];
      }
    }
  }

  return v4;
}

void __51__LiveFSFPSearchEnumeratorHelper_criteriaForQuery___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [@"." stringByAppendingString:a2];
  [v2 addObject:v3];
}

- (void)scheduleReaders
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_pendingReaderBlocks copy];
  [(NSMutableArray *)self->_pendingReaderBlocks removeAllObjects];
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_255FE9000, v4, OS_LOG_TYPE_INFO, "Starting to schedule readers %@", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__LiveFSFPSearchEnumeratorHelper_scheduleReaders__block_invoke;
  v6[3] = &unk_27981A650;
  v6[4] = self;
  [v3 enumerateObjectsUsingBlock:v6];
  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_255FE9000, v5, OS_LOG_TYPE_INFO, "Done scheduling", buf, 2u);
  }
}

- (id)copySearchResultBlock
{
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__LiveFSFPSearchEnumeratorHelper_copySearchResultBlock__block_invoke;
  v6[3] = &unk_27981A6C8;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v3 = MEMORY[0x259C563F0](v6);
  v4 = [v3 copy];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __55__LiveFSFPSearchEnumeratorHelper_copySearchResultBlock__block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = livefs_std_log();
  v11 = v10;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "[LiveFSFPSearchEnumeratorHelper copySearchResultBlock]_block_invoke";
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_255FE9000, v11, OS_LOG_TYPE_INFO, "%s: got paths %@", buf, 0x16u);
    }

    v12 = WeakRetained[11];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__LiveFSFPSearchEnumeratorHelper_copySearchResultBlock__block_invoke_37;
    block[3] = &unk_27981A6A0;
    v16 = v7;
    v13 = v8;
    v20 = a4;
    v14 = *(a1 + 32);
    v17 = v13;
    v18 = v14;
    v19 = WeakRetained;
    dispatch_async(v12, block);

    v11 = v16;
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __55__LiveFSFPSearchEnumeratorHelper_copySearchResultBlock__block_invoke_cold_1();
  }
}

void __55__LiveFSFPSearchEnumeratorHelper_copySearchResultBlock__block_invoke_37(uint64_t a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__LiveFSFPSearchEnumeratorHelper_copySearchResultBlock__block_invoke_2;
  v7[3] = &unk_27981A678;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = *(a1 + 64);
  v4 = *(a1 + 48);
  v8 = v3;
  v9 = v4;
  v10 = &v12;
  [v2 enumerateObjectsUsingBlock:v7];

  if (*(v13 + 24) == 1)
  {
    v5 = livefs_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_255FE9000, v5, OS_LOG_TYPE_INFO, "Added some, waking", v6, 2u);
    }

    [*(a1 + 56) scheduleReaders];
  }

  _Block_object_dispose(&v12, 8);
}

void __55__LiveFSFPSearchEnumeratorHelper_copySearchResultBlock__block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v11 = a2;
  v5 = [v11 fileSystemRepresentation];
  if (v5 && *v5 && *v5 != 46 && !strstr(v5, "/."))
  {
    v6 = objc_opt_new();
    [v6 setPath:v11];
    v7 = [v6 path];
    v8 = [v7 lastPathComponent];
    [v6 setFilename:v8];

    v9 = [*(a1 + 32) bytes] + (*(a1 + 56) * a3);
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(v9 + 96) + *(v9 + 104) * 0.000000001];
    [v6 setModTime:v10];

    [*(*(a1 + 40) + 80) addObject:v6];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (id)copySearchCompletionBlock
{
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__LiveFSFPSearchEnumeratorHelper_copySearchCompletionBlock__block_invoke;
  v6[3] = &unk_27981A718;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v3 = MEMORY[0x259C563F0](v6);
  v4 = [v3 copy];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __59__LiveFSFPSearchEnumeratorHelper_copySearchCompletionBlock__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[11];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__LiveFSFPSearchEnumeratorHelper_copySearchCompletionBlock__block_invoke_44;
    block[3] = &unk_27981A6F0;
    v9 = a2;
    block[4] = *(a1 + 32);
    block[5] = v5;
    dispatch_async(v6, block);
  }

  else
  {
    v7 = livefs_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__LiveFSFPSearchEnumeratorHelper_copySearchResultBlock__block_invoke_cold_1();
    }
  }
}

uint64_t __59__LiveFSFPSearchEnumeratorHelper_copySearchCompletionBlock__block_invoke_44(uint64_t a1)
{
  v2 = a1 + 48;
  v3 = *(a1 + 48);
  v4 = livefs_std_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59__LiveFSFPSearchEnumeratorHelper_copySearchCompletionBlock__block_invoke_44_cold_1(a1, v2, v5);
    }

    v6 = 3;
  }

  else
  {
    v6 = 2;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __59__LiveFSFPSearchEnumeratorHelper_copySearchCompletionBlock__block_invoke_44_cold_2(a1, v5);
    }
  }

  [*(a1 + 40) setState:v6];
  return [*(a1 + 40) scheduleReaders];
}

- (void)start
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __39__LiveFSFPSearchEnumeratorHelper_start__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = livefs_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__LiveFSFPSearchEnumeratorHelper_start__block_invoke_2_cold_1(a1, a2, v4);
    }

    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (void)finallyEnumerateItemsForObserver:(id)observer inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v32 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v8 = objc_opt_new();
  v21 = location;
  if ([(LiveFSFPEnumeratorHelper *)self state]== 2)
  {
    v9 = [(NSMutableArray *)self->searchResults count];
    if (v9 <= location)
    {
      [observerCopy finishEnumeratingUpToPage:0];
      goto LABEL_16;
    }

    v10 = (location + 64);
    v11 = v9 > v10;
    if (v9 <= v10)
    {
      length = v9 - location;
    }
  }

  else
  {
    v11 = 1;
  }

  v12 = livefs_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    state = [(LiveFSFPEnumeratorHelper *)self state];
    searchResults = self->searchResults;
    *buf = 134219008;
    selfCopy = self;
    v24 = 1024;
    v25 = state;
    v26 = 2048;
    v27 = location;
    v28 = 2048;
    v29 = length;
    v30 = 2048;
    v31 = searchResults;
    _os_log_impl(&dword_255FE9000, v12, OS_LOG_TYPE_INFO, "enumerator helper[%p]: state %d range: %lu -> %lu out of %p,", buf, 0x30u);
  }

  v15 = [(NSMutableArray *)self->searchResults subarrayWithRange:location, length];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __75__LiveFSFPSearchEnumeratorHelper_finallyEnumerateItemsForObserver_inRange___block_invoke;
  v19[3] = &unk_27981A790;
  v19[4] = self;
  v16 = v8;
  v20 = v16;
  [v15 enumerateObjectsUsingBlock:v19];
  v17 = livefs_std_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = v16;
    _os_log_impl(&dword_255FE9000, v17, OS_LOG_TYPE_INFO, "Built results %@", buf, 0xCu);
  }

  [observerCopy didEnumerateItems:v16];
  if (v11)
  {
    v21 = location + 64;
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:&v21 length:4];
    [observerCopy finishEnumeratingUpToPage:v18];
  }

  else
  {
    [observerCopy finishEnumeratingUpToPage:0];
  }

LABEL_16:
}

void __75__LiveFSFPSearchEnumeratorHelper_finallyEnumerateItemsForObserver_inRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = [v3 path];
  v6 = [*(a1 + 32) enumeratedItem];
  v7 = [v4 itemAtPath:v5 parent:v6];

  if (v7)
  {
    [*(a1 + 40) addObject:v7];
  }

  else
  {
    v8 = livefs_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __75__LiveFSFPSearchEnumeratorHelper_finallyEnumerateItemsForObserver_inRange___block_invoke_cold_1(v3, v8);
    }
  }
}

- (void)waitForSearchResultsForObserver:(id)observer startingAtPage:(id)page
{
  v35 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  pageCopy = page;
  v8 = livefs_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    state = [(LiveFSFPEnumeratorHelper *)self state];
    v10 = [pageCopy isEqual:*MEMORY[0x277CC6328]];
    v11 = [pageCopy isEqual:*MEMORY[0x277CC6320]];
    *buf = 136315906;
    *&buf[4] = "[LiveFSFPSearchEnumeratorHelper waitForSearchResultsForObserver:startingAtPage:]";
    *&buf[12] = 1024;
    *&buf[14] = state;
    *&buf[18] = 1024;
    *&buf[20] = v10;
    LOWORD(v33) = 1024;
    *(&v33 + 2) = v11;
    _os_log_impl(&dword_255FE9000, v8, OS_LOG_TYPE_INFO, "%s: entered state %d page issbn %d, issbd %d", buf, 0x1Eu);
  }

  if (![(LiveFSFPEnumeratorHelper *)self state])
  {
    [(LiveFSFPSearchEnumeratorHelper *)self start];
  }

  if ([(LiveFSFPEnumeratorHelper *)self state]== 3)
  {
    v12 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:89];
    [observerCopy finishEnumeratingWithError:v12];
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [LiveFSFPSearchEnumeratorHelper waitForSearchResultsForObserver:startingAtPage:];
    }
  }

  else
  {
    if ([pageCopy isEqual:*MEMORY[0x277CC6328]] & 1) != 0 || (objc_msgSend(pageCopy, "isEqual:", *MEMORY[0x277CC6320]))
    {
      LODWORD(v14) = 0;
    }

    else if ([pageCopy length] != 4 || (v20 = pageCopy, v14 = *objc_msgSend(pageCopy, "bytes"), (v14 & 0x3F) != 0) || -[NSMutableArray count](self->searchResults, "count") <= v14)
    {
      v21 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
      [observerCopy finishEnumeratingWithError:v21];

      goto LABEL_18;
    }

    v15 = livefs_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      searchResults = self->searchResults;
      *buf = 134218752;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = v14;
      *&buf[22] = 2048;
      v33 = 64;
      LOWORD(v34) = 2048;
      *(&v34 + 2) = searchResults;
      _os_log_impl(&dword_255FE9000, v15, OS_LOG_TYPE_INFO, "enumerator helper[%p]: range: %lu -> %lu out of %p,", buf, 0x2Au);
    }

    if ([(LiveFSFPEnumeratorHelper *)self state]== 2 || [(NSMutableArray *)self->searchResults count]>= (v14 + 64))
    {
      [(LiveFSFPSearchEnumeratorHelper *)self finallyEnumerateItemsForObserver:observerCopy inRange:v14, 64];
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3042000000;
      v33 = __Block_byref_object_copy__51;
      *&v34 = __Block_byref_object_dispose__52;
      *(&v34 + 1) = 0;
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __81__LiveFSFPSearchEnumeratorHelper_waitForSearchResultsForObserver_startingAtPage___block_invoke;
      v25 = &unk_27981A7B8;
      v28 = buf;
      selfCopy = self;
      v31 = v14;
      v27 = observerCopy;
      v29 = v14;
      v30 = 64;
      v17 = MEMORY[0x259C563F0](&v22);
      objc_storeWeak((*&buf[8] + 40), v17);
      pendingReaderBlocks = self->_pendingReaderBlocks;
      v19 = MEMORY[0x259C563F0](v17);
      [(NSMutableArray *)pendingReaderBlocks addObject:v19, v22, v23, v24, v25, selfCopy];

      _Block_object_dispose(buf, 8);
      objc_destroyWeak(&v34 + 1);
    }
  }

LABEL_18:
}

void __81__LiveFSFPSearchEnumeratorHelper_waitForSearchResultsForObserver_startingAtPage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
  if (!WeakRetained || [*(a1 + 32) state] == 3)
  {
    v2 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:89];
    [*(a1 + 40) finishEnumeratingWithError:v2];
LABEL_4:

    goto LABEL_9;
  }

  if ([*(a1 + 32) state] != 2)
  {
    v3 = (*(a1 + 72) + 64);
    if ([*(*(a1 + 32) + 80) count] < v3)
    {
      v4 = *(*(a1 + 32) + 96);
      v2 = MEMORY[0x259C563F0](WeakRetained);
      [v4 addObject:v2];
      goto LABEL_4;
    }
  }

  [*(a1 + 32) finallyEnumerateItemsForObserver:*(a1 + 40) inRange:{*(a1 + 56), *(a1 + 64)}];
LABEL_9:
}

- (void)enumerateItemsForObserver:(id)observer startingAtPage:(id)page
{
  observerCopy = observer;
  pageCopy = page;
  searchWorkQueue = self->_searchWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__LiveFSFPSearchEnumeratorHelper_enumerateItemsForObserver_startingAtPage___block_invoke;
  block[3] = &unk_27981A7E0;
  block[4] = self;
  v12 = observerCopy;
  v13 = pageCopy;
  v9 = pageCopy;
  v10 = observerCopy;
  dispatch_async(searchWorkQueue, block);
}

- (void)initForQuery:withExtension:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_255FE9000, v0, OS_LOG_TYPE_DEBUG, "enumerator helper[%p]: Creating search enumerator", v1, 0xCu);
}

- (void)initForQuery:withExtension:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __59__LiveFSFPSearchEnumeratorHelper_copySearchCompletionBlock__block_invoke_44_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [*(*(a1 + 32) + 72) searchContainerItemIdentifier];
  OUTLINED_FUNCTION_0();
  v7 = 1024;
  v8 = v5;
  _os_log_error_impl(&dword_255FE9000, a3, OS_LOG_TYPE_ERROR, "Search %@ ended with error %d", v6, 0x12u);
}

void __59__LiveFSFPSearchEnumeratorHelper_copySearchCompletionBlock__block_invoke_44_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [*(*(a1 + 32) + 72) searchContainerItemIdentifier];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_255FE9000, a2, OS_LOG_TYPE_DEBUG, "Search %@ completed", v4, 0xCu);
}

void __39__LiveFSFPSearchEnumeratorHelper_start__block_invoke_2_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2112;
  v6 = v3;
  _os_log_error_impl(&dword_255FE9000, log, OS_LOG_TYPE_ERROR, "Error %d starting search %@", v4, 0x12u);
}

void __75__LiveFSFPSearchEnumeratorHelper_finallyEnumerateItemsForObserver_inRange___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 path];
  v4 = 136315394;
  v5 = "[LiveFSFPSearchEnumeratorHelper finallyEnumerateItemsForObserver:inRange:]_block_invoke";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_255FE9000, a2, OS_LOG_TYPE_ERROR, "%s: unable to find item at path %@", &v4, 0x16u);
}

- (void)waitForSearchResultsForObserver:startingAtPage:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_255FE9000, v0, OS_LOG_TYPE_DEBUG, "enumerator helper[%p]: returning ECANCELED", v1, 0xCu);
}

@end
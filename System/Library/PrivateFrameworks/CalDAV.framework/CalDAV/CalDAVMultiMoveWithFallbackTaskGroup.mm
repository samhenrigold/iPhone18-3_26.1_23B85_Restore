@interface CalDAVMultiMoveWithFallbackTaskGroup
- (CalDAVMultiMoveWithFallbackTaskGroup)initWithSourceURLs:(id)ls destinationURL:(id)l overwrite:(BOOL)overwrite useFallback:(BOOL)fallback sourceEntityDataPayloads:(id)payloads sourceEntityDataContentTypes:(id)types sourceEntityETags:(id)tags sourceEntityScheduleTags:(id)self0 accountInfoProvider:(id)self1 taskManager:(id)self2 isAutoScheduleSupported:(BOOL)self3;
- (void)_completedPropFindTask:(id)task intermediateETag:(id)tag intermediateScheduleTag:(id)scheduleTag destinationFilename:(id)filename;
- (void)_setTagsForDestinationEntityAtURL:(id)l fromTaskResponseHeaders:(id)headers completionBlock:(id)block;
@end

@implementation CalDAVMultiMoveWithFallbackTaskGroup

- (CalDAVMultiMoveWithFallbackTaskGroup)initWithSourceURLs:(id)ls destinationURL:(id)l overwrite:(BOOL)overwrite useFallback:(BOOL)fallback sourceEntityDataPayloads:(id)payloads sourceEntityDataContentTypes:(id)types sourceEntityETags:(id)tags sourceEntityScheduleTags:(id)self0 accountInfoProvider:(id)self1 taskManager:(id)self2 isAutoScheduleSupported:(BOOL)self3
{
  fallbackCopy = fallback;
  overwriteCopy = overwrite;
  scheduleTagsCopy = scheduleTags;
  v28.receiver = self;
  v28.super_class = CalDAVMultiMoveWithFallbackTaskGroup;
  v19 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)&v28 initWithSourceURLs:ls destinationURL:l overwrite:overwriteCopy useFallback:fallbackCopy sourceEntityDataPayloads:payloads sourceEntityDataContentTypes:types sourceEntityETags:tags accountInfoProvider:provider taskManager:manager];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_sourceEntityScheduleTags, scheduleTags);
    v20->_isAutoScheduleSupported = supported;
    v21 = MEMORY[0x277CBEB38];
    sourceURLs = [(CoreDAVMultiMoveWithFallbackTaskGroup *)v20 sourceURLs];
    v23 = [v21 dictionaryWithCapacity:{objc_msgSend(sourceURLs, "count")}];
    destinationEntityScheduleTags = v20->_destinationEntityScheduleTags;
    v20->_destinationEntityScheduleTags = v23;
  }

  return v20;
}

- (void)_setTagsForDestinationEntityAtURL:(id)l fromTaskResponseHeaders:(id)headers completionBlock:(id)block
{
  v42 = *MEMORY[0x277D85DE8];
  lCopy = l;
  headersCopy = headers;
  blockCopy = block;
  v27 = lCopy;
  v29 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self filenameFromURL:lCopy];
  v28 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self _eTagFromTaskResponseHeaders:headersCopy];
  v10 = [headersCopy CDVObjectForKeyCaseInsensitive:@"schedule-tag"];
  mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
  v12 = *MEMORY[0x277CFDD48];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + v12));
  v14 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

  if (v10)
  {
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v41 = v28;
      _os_log_impl(&dword_242742000, v14, OS_LOG_TYPE_INFO, "[multi-move] ~ Response included etag %{public}@, but we're ignoring it and nilling etag because we got a schedule-tag.", buf, 0xCu);
    }

    destinationEntityScheduleTags = [(CalDAVMultiMoveWithFallbackTaskGroup *)self destinationEntityScheduleTags];
    [destinationEntityScheduleTags setObject:v10 forKey:v29];

    mEMORY[0x277CFDC18]2 = [MEMORY[0x277CFDC18] sharedLogging];
    v17 = objc_loadWeakRetained((&self->super.super.super.isa + v12));
    v18 = [mEMORY[0x277CFDC18]2 logHandleForAccountInfoProvider:v17];

    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_242742000, v18, OS_LOG_TYPE_INFO, "[multi-move] ~ Finished setting tags for moved CalDAV entity", buf, 2u);
    }

    if (blockCopy)
    {
      blockCopy[2]();
    }
  }

  else
  {
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_242742000, v14, OS_LOG_TYPE_INFO, "[multi-move] ~ No schedule-tag returned! PROPFINDing for the etag/schedule-tag...", buf, 2u);
    }

    v19 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:2];
    v20 = objc_alloc(MEMORY[0x277CFDBE8]);
    v21 = [v20 initWithNameSpace:*MEMORY[0x277CFDEF8] name:*MEMORY[0x277CFDF20] parseClass:objc_opt_class()];
    [v19 addObject:v21];
    if ([(CalDAVMultiMoveWithFallbackTaskGroup *)self isAutoScheduleSupported])
    {
      v22 = objc_alloc(MEMORY[0x277CFDBE8]);
      v23 = [v22 initWithNameSpace:*MEMORY[0x277CFDDC0] name:@"schedule-tag" parseClass:objc_opt_class()];
      [v19 addObject:v23];
    }

    v24 = [objc_alloc(MEMORY[0x277CFDC68]) initWithPropertiesToFind:v19 atURL:v27 withDepth:2];
    accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
    [v24 setAccountInfoProvider:accountInfoProvider];

    objc_initWeak(buf, self);
    objc_initWeak(&location, v24);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __114__CalDAVMultiMoveWithFallbackTaskGroup__setTagsForDestinationEntityAtURL_fromTaskResponseHeaders_completionBlock___block_invoke;
    v31[3] = &unk_278D66DD8;
    objc_copyWeak(&v37, buf);
    objc_copyWeak(&v38, &location);
    v32 = v28;
    v33 = 0;
    v34 = v29;
    selfCopy = self;
    v36 = blockCopy;
    [v24 setCompletionBlock:v31];
    [*(&self->super.super.super.isa + *MEMORY[0x277CFDD58]) addObject:v24];
    taskManager = [(CoreDAVTaskGroup *)self taskManager];
    [taskManager submitQueuedCoreDAVTask:v24];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }
}

uint64_t __114__CalDAVMultiMoveWithFallbackTaskGroup__setTagsForDestinationEntityAtURL_fromTaskResponseHeaders_completionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained outstandingTasks];
  v4 = objc_loadWeakRetained((a1 + 80));
  [v3 removeObject:v4];

  v5 = objc_loadWeakRetained((a1 + 72));
  v6 = objc_loadWeakRetained((a1 + 80));
  [v5 _completedPropFindTask:v6 intermediateETag:*(a1 + 32) intermediateScheduleTag:*(a1 + 40) destinationFilename:*(a1 + 48)];

  v7 = [MEMORY[0x277CFDC18] sharedLogging];
  v8 = objc_loadWeakRetained((*(a1 + 56) + *MEMORY[0x277CFDD48]));
  v9 = [v7 logHandleForAccountInfoProvider:v8];

  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_242742000, v9, OS_LOG_TYPE_INFO, "[multi-move] ~ Finished setting tags for moved CalDAV entity", v11, 2u);
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_completedPropFindTask:(id)task intermediateETag:(id)tag intermediateScheduleTag:(id)scheduleTag destinationFilename:(id)filename
{
  v71 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  tagCopy = tag;
  filenameCopy = filename;
  mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
  v13 = *MEMORY[0x277CFDD48];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + v13));
  v15 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

  if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v70 = "[CalDAVMultiMoveWithFallbackTaskGroup _completedPropFindTask:intermediateETag:intermediateScheduleTag:destinationFilename:]";
    _os_log_impl(&dword_242742000, v15, OS_LOG_TYPE_INFO, "[multi-move] ~ %{public}s", buf, 0xCu);
  }

  error = [taskCopy error];
  mEMORY[0x277CFDC18]2 = [MEMORY[0x277CFDC18] sharedLogging];
  v18 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
  v19 = [mEMORY[0x277CFDC18]2 logHandleForAccountInfoProvider:v18];

  if (error)
  {
    if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242742000, v19, OS_LOG_TYPE_DEFAULT, "[multi-move] ~ Error during PROPFIND.", buf, 2u);
    }

    mEMORY[0x277CFDC18]3 = [MEMORY[0x277CFDC18] sharedLogging];
    v21 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
    v22 = [mEMORY[0x277CFDC18]3 logHandleForAccountInfoProvider:v21];

    if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v70 = error;
      _os_log_impl(&dword_242742000, v22, OS_LOG_TYPE_DEFAULT, "[multi-move] ~ %@;", buf, 0xCu);
    }

    mEMORY[0x277CFDC18]4 = [MEMORY[0x277CFDC18] sharedLogging];
    v24 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
    v25 = [mEMORY[0x277CFDC18]4 logHandleForAccountInfoProvider:v24];

    if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242742000, v25, OS_LOG_TYPE_DEFAULT, "[multi-move] ~ Returing ETag and ScheduleTag of nil", buf, 2u);
    }

    goto LABEL_57;
  }

  if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_242742000, v19, OS_LOG_TYPE_INFO, "[multi-move] ~ PROPFIND success", buf, 2u);
  }

  v68 = filenameCopy;

  mEMORY[0x277CFDC18]4 = [taskCopy responseHeaders];

  v67 = tagCopy;
  if (!mEMORY[0x277CFDC18]4)
  {
    v25 = 0;
LABEL_49:
    v49 = @"No ETag found by PROPFIND";
    goto LABEL_50;
  }

  responseHeaders = [taskCopy responseHeaders];
  mEMORY[0x277CFDC18]4 = [responseHeaders CDVObjectForKeyCaseInsensitive:*MEMORY[0x277CFDB30]];

  if (mEMORY[0x277CFDC18]4)
  {
    mEMORY[0x277CFDC18]5 = [MEMORY[0x277CFDC18] sharedLogging];
    v28 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
    v29 = [mEMORY[0x277CFDC18]5 logHandleForAccountInfoProvider:v28];

    if (v29 && os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v70 = mEMORY[0x277CFDC18]4;
      _os_log_impl(&dword_242742000, v29, OS_LOG_TYPE_INFO, "[multi-move] ~ found etag node: %{public}@", buf, 0xCu);
    }

    v30 = mEMORY[0x277CFDC18]4;
  }

  responseHeaders2 = [taskCopy responseHeaders];
  v25 = [responseHeaders2 CDVObjectForKeyCaseInsensitive:@"schedule-tag"];

  if (v25)
  {
    mEMORY[0x277CFDC18]6 = [MEMORY[0x277CFDC18] sharedLogging];
    v33 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
    v34 = [mEMORY[0x277CFDC18]6 logHandleForAccountInfoProvider:v33];

    if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v70 = v25;
      _os_log_impl(&dword_242742000, v34, OS_LOG_TYPE_INFO, "[multi-move] ~ found scheduleTag node: %{public}@", buf, 0xCu);
    }

    v35 = v25;
    tagCopy = v67;
  }

  if (!mEMORY[0x277CFDC18]4)
  {
    goto LABEL_49;
  }

  if (!tagCopy || [mEMORY[0x277CFDC18]4 isEqualToString:tagCopy])
  {
    sourceEntityETags = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self sourceEntityETags];
    v37 = [sourceEntityETags objectForKey:v68];

    if (![mEMORY[0x277CFDC18]4 length] && !v25)
    {
      goto LABEL_47;
    }

    v66 = v37;
    mEMORY[0x277CFDC18]7 = [MEMORY[0x277CFDC18] sharedLogging];
    v39 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
    v40 = [mEMORY[0x277CFDC18]7 logHandleForAccountInfoProvider:v39];

    if (v40 && os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_242742000, v40, OS_LOG_TYPE_INFO, "[multi-move] ~ Setting etag return value.", buf, 2u);
    }

    destinationEntityETags = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self destinationEntityETags];
    [destinationEntityETags setObject:mEMORY[0x277CFDC18]4 forKey:v68];

    if (v25)
    {
      mEMORY[0x277CFDC18]8 = [MEMORY[0x277CFDC18] sharedLogging];
      v43 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
      v44 = [mEMORY[0x277CFDC18]8 logHandleForAccountInfoProvider:v43];

      if (v44 && os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_242742000, v44, OS_LOG_TYPE_INFO, "[multi-move] ~ We got a scheduleTag, so ignoring etag", buf, 2u);
      }

      mEMORY[0x277CFDC18]9 = [MEMORY[0x277CFDC18] sharedLogging];
      v46 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
      v47 = [mEMORY[0x277CFDC18]9 logHandleForAccountInfoProvider:v46];

      if (v47 && os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_242742000, v47, OS_LOG_TYPE_INFO, "[multi-move] ~ Setting scheduleTag return value.", buf, 2u);
      }

      destinationEntityScheduleTags = [(CalDAVMultiMoveWithFallbackTaskGroup *)self destinationEntityScheduleTags];
      [destinationEntityScheduleTags setObject:v25 forKey:v68];
      goto LABEL_44;
    }

    if ([v66 isEqualToString:mEMORY[0x277CFDC18]4])
    {
      destinationEntityScheduleTags = [MEMORY[0x277CFDC18] sharedLogging];
      v56 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
      v57 = [destinationEntityScheduleTags logHandleForAccountInfoProvider:v56];

      v37 = v66;
      tagCopy = v67;
      if (v57 && os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v70 = v66;
        _os_log_impl(&dword_242742000, v57, OS_LOG_TYPE_INFO, "[multi-move] ~ Resulting etag is unchanged from original: %{public}@", buf, 0xCu);
      }

      goto LABEL_46;
    }

    tagCopy = v67;
    if (!v67)
    {
      destinationEntityScheduleTags = [MEMORY[0x277CFDC18] sharedLogging];
      v64 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
      v65 = [destinationEntityScheduleTags logHandleForAccountInfoProvider:v64];

      if (v65 && os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_242742000, v65, OS_LOG_TYPE_INFO, "[multi-move] ~ New etag differs from old etag -- MOVE returned no ETag, but PROPFIND gave us a good new value.", buf, 2u);
      }

      goto LABEL_45;
    }

    v58 = [v67 isEqualToString:mEMORY[0x277CFDC18]4];
    destinationEntityScheduleTags = [MEMORY[0x277CFDC18] sharedLogging];
    v59 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
    v60 = [destinationEntityScheduleTags logHandleForAccountInfoProvider:v59];

    if (v58)
    {
      if (!v60 || !os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        goto LABEL_77;
      }

      *buf = 0;
      v61 = "[multi-move] ~ New etag differs from old etag -- MOVE returned an ETag and PROPFIND gave us the same one.";
      v62 = v60;
      v63 = OS_LOG_TYPE_INFO;
    }

    else
    {
      if (!v60 || !os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_77;
      }

      *buf = 0;
      v61 = "[multi-move] After MOVE and PROPFIND: something is wrong, there's no new etag, there's no schedule tag";
      v62 = v60;
      v63 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_242742000, v62, v63, v61, buf, 2u);
LABEL_77:

LABEL_44:
    tagCopy = v67;
LABEL_45:
    v37 = v66;
LABEL_46:

LABEL_47:
    filenameCopy = v68;
    goto LABEL_57;
  }

  v49 = @"New ETag found by PROPFIND didn't match non-nil intermediate ETag returned by MOVE";
LABEL_50:
  mEMORY[0x277CFDC18]10 = [MEMORY[0x277CFDC18] sharedLogging];
  v51 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
  v52 = [mEMORY[0x277CFDC18]10 logHandleForAccountInfoProvider:v51];

  if (v52 && os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v70 = v49;
    _os_log_impl(&dword_242742000, v52, OS_LOG_TYPE_DEFAULT, "[multi-move] ~ %{public}@", buf, 0xCu);
  }

  mEMORY[0x277CFDC18]11 = [MEMORY[0x277CFDC18] sharedLogging];
  v54 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
  v55 = [mEMORY[0x277CFDC18]11 logHandleForAccountInfoProvider:v54];

  tagCopy = v67;
  if (v55 && os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242742000, v55, OS_LOG_TYPE_DEFAULT, "[multi-move] ~ Returing ETag and ScheduleTag of nil", buf, 2u);
  }

  filenameCopy = v68;
  error = 0;
LABEL_57:
}

@end
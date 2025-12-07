@interface MFAttachmentComposeManager
- (BOOL)updateAttachment:(id)attachment withNewData:(id)data;
- (id)_composeAttachmentDataProviderForContext:(id)context;
- (id)_fetchDataForAttachment:(id)attachment withProvider:(id)provider syncLock:(id *)lock;
- (id)_queueForAttachment:(id)attachment;
- (id)attachmentsForContext:(id)context;
- (void)_callProgressBlockForAttachmentURL:(id)l withBytes:(unint64_t)bytes expectedSize:(unint64_t)size;
- (void)dealloc;
- (void)recordPasteboardAttachmentsForURLs:(id)ls forContextID:(id)d;
- (void)recordUndoAttachmentsForURLs:(id)ls forContextID:(id)d;
- (void)removeAttachmentForURL:(id)l;
@end

@implementation MFAttachmentComposeManager

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFAttachmentComposeManager;
  [(MFAttachmentManager *)&v2 dealloc];
}

- (id)_queueForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if (([attachmentCopy isDataAvailableLocally] & 1) == 0)
  {
    v5 = [attachmentCopy url];
    v6 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v5 error:0];

    v7 = [v6 messageForAttachment:attachmentCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mailbox = [v7 mailbox];
      attachmentDownloadQueue = [mailbox attachmentDownloadQueue];

      if (attachmentDownloadQueue)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  defaultDownloadQueue = self->_defaultDownloadQueue;
  if (!defaultDownloadQueue)
  {
    v11 = [[MFInvocationQueue alloc] initWithDomain:"invc.comp"];
    v12 = self->_defaultDownloadQueue;
    self->_defaultDownloadQueue = v11;

    defaultDownloadQueue = self->_defaultDownloadQueue;
  }

  attachmentDownloadQueue = defaultDownloadQueue;
LABEL_9:

  return attachmentDownloadQueue;
}

- (id)_fetchDataForAttachment:(id)attachment withProvider:(id)provider syncLock:(id *)lock
{
  v51 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  providerCopy = provider;
  v10 = [attachmentCopy url];
  v11 = [(NSMutableDictionary *)self->super._attachments objectForKeyedSubscript:v10];
  if (v11)
  {
    customConsumer = [attachmentCopy customConsumer];
    if (customConsumer)
    {
      v13 = [v11 objectForKeyedSubscript:@"MFAttachmentCollectionFilterKey"];
      [v13 addDataConsumer:customConsumer];
    }

    v14 = [v11 objectForKeyedSubscript:@"MFAttachmentAttachmentKey"];
    isInternalDevice();
    [v14 addObject:attachmentCopy];
    v15 = [v11 objectForKeyedSubscript:@"MFAttachmentPrimaryConsumerKey"];
    v16 = [v11 objectForKeyedSubscript:@"MFAttachmentSyncLockKey"];

    if (lock)
    {
LABEL_5:
      v17 = v16;
      *lock = v16;
    }
  }

  else
  {
    v19 = v10;
    v20 = objc_alloc_init(MEMORY[0x277D24EE8]);
    v21 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    v39 = v20;
    v22 = [objc_alloc(MEMORY[0x277D24F78]) initWithMainConsumer:v20];
    customConsumer2 = [attachmentCopy customConsumer];

    if (customConsumer2)
    {
      customConsumer3 = [attachmentCopy customConsumer];
      [v22 addDataConsumer:customConsumer3];
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v26 = [MEMORY[0x277CBEB18] arrayWithObject:attachmentCopy];
    [dictionary setObject:v26 forKeyedSubscript:@"MFAttachmentAttachmentKey"];

    [dictionary setObject:v39 forKeyedSubscript:@"MFAttachmentPrimaryConsumerKey"];
    [dictionary setObject:v22 forKeyedSubscript:@"MFAttachmentCollectionFilterKey"];
    v27 = vm_imap_log([dictionary setObject:v21 forKeyedSubscript:@"MFAttachmentSyncLockKey"]);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v48 = attachmentCopy;
      v49 = 2112;
      v50 = v19;
      _os_log_impl(&dword_2720B1000, v27, OS_LOG_TYPE_DEFAULT, "#Attachments requesting download of attachment %p with URL %@", buf, 0x16u);
    }

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke;
    v40[3] = &unk_279E36278;
    v35 = attachmentCopy;
    v41 = v35;
    selfCopy = self;
    v37 = v19;
    v28 = v19;
    v43 = v28;
    v44 = providerCopy;
    v45 = v22;
    v16 = v21;
    v46 = v16;
    v36 = v22;
    v38 = providerCopy;
    v29 = MEMORY[0x2743C3100](v40);
    v30 = [v29 copy];

    v31 = MEMORY[0x2743C3100](v30);
    v32 = [MFMonitoredInvocation invocationWithSelector:sel__fetchInvocationCallUsingBlock_ target:self object:v31 taskName:@"FetchDataForURL" priority:4 canBeCancelled:1];

    [v32 setPowerAssertionId:@"com.apple.message.MFAttachmentComposeManager"];
    [v32 retainArguments];
    monitor = [v32 monitor];
    [dictionary setObject:monitor forKeyedSubscript:@"MFAttachmentMonitorKey"];

    [(NSMutableDictionary *)self->super._attachments setObject:dictionary forKeyedSubscript:v28];
    v34 = [(MFAttachmentComposeManager *)self _queueForAttachment:v35];
    [v34 addInvocation:v32];

    providerCopy = v38;
    v10 = v37;
    v15 = v39;
    if (lock)
    {
      goto LABEL_5;
    }
  }

  return v15;
}

void __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke(uint64_t a1)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__6;
  v27 = __Block_byref_object_dispose__6;
  v28 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:{objc_msgSend(*(a1 + 32), "encodedFileSize")}];
  v2 = v24[5];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_13;
  v20[3] = &unk_279E36200;
  v3 = *(a1 + 48);
  v20[4] = *(a1 + 40);
  v21 = v3;
  v22 = &v23;
  v4 = [v2 vf_observeKeyPath:@"fractionCompleted" options:1 usingBlock:v20];
  v5 = *(a1 + 32);
  v7 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8 = v24[5];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_2;
  v13[3] = &unk_279E36250;
  v9 = v6;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v14 = v9;
  v15 = v10;
  v16 = v11;
  v17 = *(a1 + 32);
  v18 = *(a1 + 72);
  v12 = v4;
  v19 = v12;
  [v7 fetchDataForAttachment:v5 consumer:v9 progress:v8 completion:v13];

  _Block_object_dispose(&v23, 8);
}

uint64_t __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_13(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = [*(*(a1[6] + 8) + 40) completedUnitCount];
  v5 = [*(*(a1[6] + 8) + 40) totalUnitCount];

  return [v2 _callProgressBlockForAttachmentURL:v3 withBytes:v4 expectedSize:v5];
}

void __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_2(uint64_t a1, int a2, void *a3, int a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [*(a1 + 32) data];
  v9 = v8;
  if (a2 && a4 && (v8 = [v8 length], !v7) && v8)
  {
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *(v11 + 8);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_3;
    v19 = &unk_279E36228;
    v20 = v11;
    v21 = v10;
    v22 = *(a1 + 56);
    v23 = v9;
    dispatch_sync(v12, &v16);
  }

  else
  {
    v13 = vm_imap_log(v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 48);
      v14 = *(a1 + 56);
      *buf = 134219266;
      v25 = v14;
      v26 = 2112;
      v27 = v15;
      v28 = 1024;
      v29 = a4;
      v30 = 1024;
      v31 = a2;
      v32 = 2048;
      v33 = [v9 length];
      v34 = 2112;
      v35 = v7;
      _os_log_impl(&dword_2720B1000, v13, OS_LOG_TYPE_DEFAULT, "#Attachments not writing attachment %p %@ to disk (shouldWriteToDisk=%d, success=%d, data.length=%lu, error=%@)", buf, 0x36u);
    }
  }

  [*(a1 + 64) lock];
  [*(a1 + 64) unlockWithCondition:1];
  [*(a1 + 40) _fetchCompletedForAttachment:*(a1 + 56) error:v7];
  [*(a1 + 72) cancel];
}

void __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 48) writeToDiskWithData:*(a1 + 56)];
  }

  else
  {
    v3 = vm_imap_log(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);
      v6 = 134218242;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_2720B1000, v3, OS_LOG_TYPE_DEFAULT, "#Attachments not writing attachment %p %@ to disk (no-existing-attachment-dictionary)", &v6, 0x16u);
    }
  }
}

- (void)_callProgressBlockForAttachmentURL:(id)l withBytes:(unint64_t)bytes expectedSize:(unint64_t)size
{
  v46 = *MEMORY[0x277D85DE8];
  lCopy = l;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = v8;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__6;
  v37 = __Block_byref_object_dispose__6;
  v38 = 0;
  arrayAccessQueue = self->super._arrayAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__MFAttachmentComposeManager__callProgressBlockForAttachmentURL_withBytes_expectedSize___block_invoke;
  block[3] = &unk_279E362A0;
  v32 = &v33;
  block[4] = self;
  v23 = lCopy;
  v31 = v23;
  dispatch_sync(arrayAccessQueue, block);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v34[5];
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v45 count:16];
  if (v12)
  {
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        lastProgressBytes = [v15 lastProgressBytes];
        lastProgressTime = [v15 lastProgressTime];
        if (v9 - v18 >= 0.0333333333 || size * 0.02 <= (bytes - lastProgressBytes))
        {
          v20 = vm_imap_log(lastProgressTime);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            fileName = [v15 fileName];
            *buf = 138412802;
            v40 = fileName;
            v41 = 2048;
            bytesCopy = bytes;
            v43 = 2048;
            sizeCopy = size;
            _os_log_debug_impl(&dword_2720B1000, v20, OS_LOG_TYPE_DEBUG, "Calling progress block for %@.  %lu/%lu", buf, 0x20u);
          }

          [v15 setLastProgressBytes:bytes];
          [v15 setLastProgressTime:v9];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __88__MFAttachmentComposeManager__callProgressBlockForAttachmentURL_withBytes_expectedSize___block_invoke_27;
          v25[3] = &unk_279E34F70;
          v25[4] = v15;
          v25[5] = bytes;
          v21 = MEMORY[0x2743C3100](v25);
          if ([v15 wantsCompletionBlockOffMainThread])
          {
            v21[2](v21);
          }

          else
          {
            dispatch_async(MEMORY[0x277D85CD0], v21);
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v26 objects:v45 count:16];
    }

    while (v12);
  }

  _Block_object_dispose(&v33, 8);
}

void __88__MFAttachmentComposeManager__callProgressBlockForAttachmentURL_withBytes_expectedSize___block_invoke(void *a1)
{
  v6 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v2 = [v6 objectForKeyedSubscript:@"MFAttachmentAttachmentKey"];
  v3 = [v2 copy];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)attachmentsForContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_composeAttachmentURLs, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_composeAttachmentURLs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 rangeOfString:contextCopy] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];
          v12 = [(MFAttachmentManager *)self attachmentForURL:v11 error:0];

          if (v12)
          {
            [v14 addObject:v12];
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v14;
}

- (id)_composeAttachmentDataProviderForContext:(id)context
{
  v4 = MEMORY[0x277CBEBC0];
  context = [MEMORY[0x277CCACA8] stringWithFormat:@"x-attach-compose://%@", context];
  v6 = [v4 URLWithString:context];

  providers = self->super._providers;
  absoluteString = [v6 absoluteString];
  v9 = [(NSMutableDictionary *)providers valueForKey:absoluteString];

  return v9;
}

- (BOOL)updateAttachment:(id)attachment withNewData:(id)data
{
  attachmentCopy = attachment;
  dataCopy = data;
  v8 = [attachmentCopy url];
  v9 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v8 error:0];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v11 = v9;
    v12 = [attachmentCopy url];
    [v11 removeDataForAttachment:v12];

    contentID = [attachmentCopy contentID];
    [v11 addData:dataCopy forContentID:contentID];
  }

  return isKindOfClass & 1;
}

- (void)removeAttachmentForURL:(id)l
{
  lCopy = l;
  composeAttachmentURLs = self->_composeAttachmentURLs;
  v9 = lCopy;
  absoluteString = [lCopy absoluteString];
  v7 = [(NSMutableArray *)composeAttachmentURLs indexOfObject:absoluteString];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_composeAttachmentURLs removeObjectAtIndex:v7];
    v8 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v9 error:0];
    [v8 removeDataForAttachment:v9];
  }
}

- (void)recordPasteboardAttachmentsForURLs:(id)ls forContextID:(id)d
{
  lsCopy = ls;
  v6 = [(MFAttachmentComposeManager *)self _composeAttachmentDataProviderForContext:d];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 recordPasteboardDataForAttachments:lsCopy];
  }
}

- (void)recordUndoAttachmentsForURLs:(id)ls forContextID:(id)d
{
  lsCopy = ls;
  v6 = [(MFAttachmentComposeManager *)self _composeAttachmentDataProviderForContext:d];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 recordUndoDataForAttachments:lsCopy];
  }
}

@end
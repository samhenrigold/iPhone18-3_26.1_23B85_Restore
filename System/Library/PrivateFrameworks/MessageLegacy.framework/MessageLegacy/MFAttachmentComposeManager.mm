@interface MFAttachmentComposeManager
- (BOOL)updateAttachment:(id)attachment withNewData:(id)data;
- (id)_composeAttachmentDataProviderForContext:(id)context;
- (id)_fetchDataForAttachment:(id)attachment withProvider:(id)provider syncLock:(id *)lock;
- (id)_queueForAttachment:(id)attachment;
- (id)attachmentForData:(id)data mimeType:(id)type fileName:(id)name contentID:(id)d context:(id)context;
- (id)attachmentsForContext:(id)context;
- (void)_callProgressBlockForAttachmentURL:(id)l withBytes:(unint64_t)bytes expectedSize:(unint64_t)size;
- (void)dealloc;
- (void)loadAttachmentURL:(id)l forContextID:(id)d;
- (void)recordPasteboardAttachmentsForURLs:(id)ls forContextID:(id)d;
- (void)recordUndoAttachmentsForURLs:(id)ls forContextID:(id)d;
- (void)removeAttachmentForURL:(id)l;
@end

@implementation MFAttachmentComposeManager

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFAttachmentComposeManager;
  [(MFAttachmentManager *)&v3 dealloc];
}

- (id)_queueForAttachment:(id)attachment
{
  if (([attachment isDataAvailableLocally] & 1) != 0 || (v5 = objc_msgSend(-[MFAttachmentManager _dataProviderForAttachmentURL:error:](self, "_dataProviderForAttachmentURL:error:", objc_msgSend(attachment, "url"), 0), "messageForAttachment:", attachment), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (result = objc_msgSend(objc_msgSend(v5, "mailbox"), "attachmentDownloadQueue")) == 0)
  {
    result = self->_defaultDownloadQueue;
    if (!result)
    {
      result = objc_alloc_init(MFInvocationQueue);
      self->_defaultDownloadQueue = result;
    }
  }

  return result;
}

- (id)_fetchDataForAttachment:(id)attachment withProvider:(id)provider syncLock:(id *)lock
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = [attachment url];
  v11 = [(NSMutableDictionary *)self->super._attachments objectForKeyedSubscript:v10];
  if (v11)
  {
    v12 = v11;
    customConsumer = [attachment customConsumer];
    if (customConsumer)
    {
      [objc_msgSend(v12 objectForKeyedSubscript:{@"MFAttachmentCollectionFilterKey", "addDataConsumer:", customConsumer}];
    }

    v14 = [v12 objectForKeyedSubscript:@"MFAttachmentAttachmentKey"];
    if ([objc_msgSend(MEMORY[0x277D07148] "currentDevice")] && objc_msgSend(v14, "indexOfObjectIdenticalTo:", attachment) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [MFAttachmentComposeManager _fetchDataForAttachment:a2 withProvider:self syncLock:attachment];
    }

    [v14 addObject:attachment];
    v15 = [v12 objectForKeyedSubscript:@"MFAttachmentPrimaryConsumerKey"];
    v16 = [v12 objectForKeyedSubscript:@"MFAttachmentSyncLockKey"];
    if (lock)
    {
LABEL_8:
      *lock = v16;
    }
  }

  else
  {
    lockCopy = lock;
    v15 = objc_alloc_init(MEMORY[0x277D24EE8]);
    v16 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    v18 = [objc_alloc(MEMORY[0x277D24F78]) initWithMainConsumer:v15];
    if ([attachment customConsumer])
    {
      [v18 addDataConsumer:{objc_msgSend(attachment, "customConsumer")}];
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:objc_msgSend(MEMORY[0x277CBEB18] forKeyedSubscript:{"arrayWithObject:", attachment), @"MFAttachmentAttachmentKey"}];
    [dictionary setObject:v15 forKeyedSubscript:@"MFAttachmentPrimaryConsumerKey"];
    [dictionary setObject:v18 forKeyedSubscript:@"MFAttachmentCollectionFilterKey"];
    [dictionary setObject:v16 forKeyedSubscript:@"MFAttachmentSyncLockKey"];
    v20 = MFLogGeneral();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      attachmentCopy = attachment;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_258BDA000, v20, OS_LOG_TYPE_DEFAULT, "#Attachments requesting download of attachment %p with URL %@", buf, 0x16u);
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke;
    v23[3] = &unk_2798B6F78;
    v23[4] = attachment;
    v23[5] = self;
    v23[6] = v10;
    v23[7] = provider;
    v23[8] = v18;
    v23[9] = v16;
    v21 = +[MFMonitoredInvocation invocationWithSelector:target:object:taskName:priority:canBeCancelled:](MFMonitoredInvocation, "invocationWithSelector:target:object:taskName:priority:canBeCancelled:", sel__fetchInvocationCallUsingBlock_, self, [v23 copy], @"FetchDataForURL", 4, 1);
    [(MFMonitoredInvocation *)v21 setPowerAssertionId:@"com.apple.message.MFAttachmentComposeManager"];
    [(MFMonitoredInvocation *)v21 retainArguments];
    [dictionary setObject:-[MFMonitoredInvocation monitor](v21 forKeyedSubscript:{"monitor"), @"MFAttachmentMonitorKey"}];
    [(NSMutableDictionary *)self->super._attachments setObject:dictionary forKeyedSubscript:v10];
    [-[MFAttachmentComposeManager _queueForAttachment:](self _queueForAttachment:{attachment), "addInvocation:", v21}];
    lock = lockCopy;
    if (lockCopy)
    {
      goto LABEL_8;
    }
  }

  return v15;
}

void __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:{objc_msgSend(*(a1 + 32), "encodedFileSize")}];
  v2 = v7[5];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_18;
  v3[3] = &unk_2798B6F00;
  v4 = *(a1 + 40);
  v5 = &v6;
  [v2 ef_observeKeyPath:@"fractionCompleted" options:1 usingBlock:v3];
  [*(a1 + 56) fetchDataForAttachment:? consumer:? progress:? completion:?];
  _Block_object_dispose(&v6, 8);
}

uint64_t __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_18(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = [*(*(a1[6] + 8) + 40) completedUnitCount];
  v5 = [*(*(a1[6] + 8) + 40) totalUnitCount];

  return [v2 _callProgressBlockForAttachmentURL:v3 withBytes:v4 expectedSize:v5];
}

uint64_t __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_2(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = [*(a1 + 32) data];
  v9 = v8;
  if (a2 && a4 && (v10 = [v8 length], !a3) && v10)
  {
    v11 = *(a1 + 40);
    v12 = *(*(a1 + 40) + 8);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_3;
    v17[3] = &unk_2798B6F28;
    v18 = v11;
    v19 = *(a1 + 56);
    v20 = v9;
    dispatch_sync(v12, v17);
  }

  else
  {
    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 48);
      v14 = *(a1 + 56);
      *buf = 134219266;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      v25 = 1024;
      v26 = a4;
      v27 = 1024;
      v28 = a2;
      v29 = 2048;
      v30 = [v9 length];
      v31 = 2112;
      v32 = a3;
      _os_log_impl(&dword_258BDA000, v13, OS_LOG_TYPE_DEFAULT, "#Attachments not writing attachment %p %@ to disk (shouldWriteToDisk=%d, success=%d, data.length=%lu, error=%@)", buf, 0x36u);
    }
  }

  [*(a1 + 64) lock];
  [*(a1 + 64) unlockWithCondition:1];
  [*(a1 + 40) _fetchCompletedForAttachment:*(a1 + 56) error:a3];
  return [*(a1 + 72) cancel];
}

void __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_3(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([*(a1[4] + 24) objectForKeyedSubscript:a1[5]])
  {
    v2 = a1[6];
    v3 = a1[7];

    [v2 writeToDiskWithData:v3];
  }

  else
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[5];
      v5 = a1[6];
      v7 = 134218242;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_258BDA000, v4, OS_LOG_TYPE_DEFAULT, "#Attachments not writing attachment %p %@ to disk (no-existing-attachment-dictionary)", &v7, 0x16u);
    }
  }
}

- (void)_callProgressBlockForAttachmentURL:(id)l withBytes:(unint64_t)bytes expectedSize:(unint64_t)size
{
  v47 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = v8;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3052000000;
  v37 = __Block_byref_object_copy_;
  arrayAccessQueue = self->super._arrayAccessQueue;
  v38 = __Block_byref_object_dispose_;
  v39 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__MFAttachmentComposeManager__callProgressBlockForAttachmentURL_withBytes_expectedSize___block_invoke;
  block[3] = &unk_2798B6FA0;
  block[5] = l;
  block[6] = &v34;
  block[4] = self;
  dispatch_sync(arrayAccessQueue, block);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v35[5];
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v46 count:16];
  if (v12)
  {
    v14 = *v30;
    *&v13 = 138412802;
    v22 = v13;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        lastProgressBytes = [v16 lastProgressBytes];
        [v16 lastProgressTime];
        if (v9 - v18 >= 0.0333333333 || size * 0.02 <= (bytes - lastProgressBytes))
        {
          v20 = MFLogGeneral();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            fileName = [v16 fileName];
            *buf = v22;
            v41 = fileName;
            v42 = 2048;
            bytesCopy = bytes;
            v44 = 2048;
            sizeCopy = size;
            _os_log_debug_impl(&dword_258BDA000, v20, OS_LOG_TYPE_DEBUG, "Calling progress block for %@.  %lu/%lu", buf, 0x20u);
          }

          [v16 setLastProgressBytes:bytes];
          [v16 setLastProgressTime:v9];
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v25 = __88__MFAttachmentComposeManager__callProgressBlockForAttachmentURL_withBytes_expectedSize___block_invoke_32;
          v26 = &unk_2798B6FC8;
          v27 = v16;
          bytesCopy2 = bytes;
          if ([v16 wantsCompletionBlockOffMainThread])
          {
            v25(v24);
          }

          else
          {
            dispatch_async(MEMORY[0x277D85CD0], v24);
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v29 objects:v46 count:16];
    }

    while (v12);
  }

  _Block_object_dispose(&v34, 8);
}

void *__88__MFAttachmentComposeManager__callProgressBlockForAttachmentURL_withBytes_expectedSize___block_invoke(void *a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1[4] + 24) objectForKeyedSubscript:{a1[5]), "objectForKeyedSubscript:", @"MFAttachmentAttachmentKey", "copy"}];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (id)attachmentsForContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_composeAttachmentURLs, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  composeAttachmentURLs = self->_composeAttachmentURLs;
  v7 = [(NSMutableArray *)composeAttachmentURLs countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(composeAttachmentURLs);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 rangeOfString:context] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = -[MFAttachmentManager attachmentForURL:error:](self, "attachmentForURL:error:", [MEMORY[0x277CBEBC0] URLWithString:v11], 0);
          if (v12)
          {
            [v5 addObject:v12];
          }
        }
      }

      v8 = [(NSMutableArray *)composeAttachmentURLs countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_composeAttachmentDataProviderForContext:(id)context
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"x-attach-compose://%@", context)}];
  providers = self->super._providers;
  absoluteString = [v4 absoluteString];

  return [(NSMutableDictionary *)providers valueForKey:absoluteString];
}

- (id)attachmentForData:(id)data mimeType:(id)type fileName:(id)name contentID:(id)d context:(id)context
{
  if ([data length] < 0x834 && +[MFAttachmentPlaceholder isPlaceholderSerializedRepresentation:](MFAttachmentPlaceholder, "isPlaceholderSerializedRepresentation:", data))
  {
    v13 = [MFAttachmentPlaceholder placeholderFromSerializedRepresentation:data];
    d = [v13 contentID];
    if (!context)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v13 = 0;
    if (!context)
    {
LABEL_4:
      v14 = MFLogGeneral();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [MFAttachmentComposeManager attachmentForData:mimeType:fileName:contentID:context:];
      }

      return 0;
    }
  }

  if (![data length])
  {
    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MFAttachmentComposeManager attachmentForData:mimeType:fileName:contentID:context:];
    }

    return 0;
  }

  if (!d)
  {
    d = [MEMORY[0x277CCACA8] mf_messageIDStringWithDomainHint:0];
  }

  if ([d hasPrefix:@"<"])
  {
    d = [d substringWithRange:{1, objc_msgSend(d, "length") - 2}];
  }

  if ([name length])
  {
    dCopy = name;
  }

  else
  {
    dCopy = d;
  }

  v16 = [MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"x-attach-compose://%@", context)}];
  v17 = -[NSMutableDictionary valueForKey:](self->super._providers, "valueForKey:", [v16 absoluteString]);
  if (v17)
  {
    [v17 addData:data forContentID:d];
  }

  else
  {
    [(MFAttachmentManager *)self addProvider:[[MFComposeAttachmentDataProvider alloc] initWithData:data forContentID:d] forBaseURL:v16];
  }

  v19 = -[MFAttachment initWithURL:attachmentManager:]([MFAttachment alloc], "initWithURL:attachmentManager:", [v16 URLByAppendingPathComponent:d], self);
  [(MFAttachment *)v19 setFileName:dCopy];
  [(MFAttachment *)v19 setContentID:d];
  if (type)
  {
    v21 = v19;
    typeCopy = type;
  }

  else
  {
    v23 = [objc_msgSend(dCopy "pathExtension")];
    typeCopy = [objc_msgSend(MEMORY[0x277CCAD00] "sharedMappings")];
    v21 = v19;
  }

  [(MFAttachment *)v21 setMimeType:typeCopy];
  if (v13)
  {
    [(MFAttachment *)v19 setPlaceholder:v13];
    [(MFAttachment *)v19 setIsPlaceholder:1];
  }

  [(MFAttachmentManager *)self setContentID:d forAttachment:v19];
  -[MFAttachment setDecodedFileSize:](v19, "setDecodedFileSize:", [data length]);
  if (v19)
  {
    if (!self->_composeAttachmentURLs)
    {
      self->_composeAttachmentURLs = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    absoluteString = [(NSURL *)[(MFAttachment *)v19 url] absoluteString];
    if (([(NSMutableArray *)self->_composeAttachmentURLs containsObject:absoluteString]& 1) == 0)
    {
      [(NSMutableArray *)self->_composeAttachmentURLs addObject:absoluteString];
    }
  }

  return v19;
}

- (void)loadAttachmentURL:(id)l forContextID:(id)d
{
  v6 = [(MFAttachmentManager *)self attachmentForCID:l];
  fetchLocalData = [v6 fetchLocalData];
  mimeType = [v6 mimeType];
  fileName = [v6 fileName];
  contentID = [v6 contentID];

  [(MFAttachmentComposeManager *)self attachmentForData:fetchLocalData mimeType:mimeType fileName:fileName contentID:contentID context:d];
}

- (BOOL)updateAttachment:(id)attachment withNewData:(id)data
{
  v6 = -[MFAttachmentManager _dataProviderForAttachmentURL:error:](self, "_dataProviderForAttachmentURL:error:", [attachment url], 0);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v6 removeDataForAttachment:{objc_msgSend(attachment, "url")}];
    [v6 addData:data forContentID:{objc_msgSend(attachment, "contentID")}];
  }

  return isKindOfClass & 1;
}

- (void)removeAttachmentForURL:(id)l
{
  v5 = -[NSMutableArray indexOfObject:](self->_composeAttachmentURLs, "indexOfObject:", [l absoluteString]);
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_composeAttachmentURLs removeObjectAtIndex:v5];
    v6 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:l error:0];

    [v6 removeDataForAttachment:l];
  }
}

- (void)recordPasteboardAttachmentsForURLs:(id)ls forContextID:(id)d
{
  v5 = [(MFAttachmentComposeManager *)self _composeAttachmentDataProviderForContext:d];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [v5 recordPasteboardDataForAttachments:ls];
  }
}

- (void)recordUndoAttachmentsForURLs:(id)ls forContextID:(id)d
{
  v5 = [(MFAttachmentComposeManager *)self _composeAttachmentDataProviderForContext:d];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [v5 recordUndoDataForAttachments:ls];
  }
}

@end
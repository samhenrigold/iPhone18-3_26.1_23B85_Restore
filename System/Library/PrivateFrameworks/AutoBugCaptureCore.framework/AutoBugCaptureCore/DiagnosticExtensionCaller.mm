@interface DiagnosticExtensionCaller
+ (BOOL)getAttachmentsFrom:(id)from forBundleID:(id)d withParameters:(id)parameters queue:(id)queue reply:(id)reply;
+ (id)sharedInstance;
- (BOOL)_getAttachmentsFrom:(id)from forBundleID:(id)d withParameters:(id)parameters queue:(id)queue reply:(id)reply;
- (DiagnosticExtensionCaller)init;
- (id)_getDEExtensionWithIdentifier:(id)identifier;
@end

@implementation DiagnosticExtensionCaller

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__DiagnosticExtensionCaller_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_0 != -1)
  {
    dispatch_once(&sharedInstance_pred_0, block);
  }

  v2 = sharedInstance_sharedInstance_1;

  return v2;
}

uint64_t __43__DiagnosticExtensionCaller_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_1;
  sharedInstance_sharedInstance_1 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (DiagnosticExtensionCaller)init
{
  v6.receiver = self;
  v6.super_class = DiagnosticExtensionCaller;
  v2 = [(DiagnosticExtensionCaller *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    liveDEs = v2->_liveDEs;
    v2->_liveDEs = array;
  }

  return v2;
}

- (id)_getDEExtensionWithIdentifier:(id)identifier
{
  v23[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__0;
    v20 = __Block_byref_object_dispose__0;
    v21 = 0;
    v4 = dispatch_semaphore_create(0);
    v5 = *MEMORY[0x277CCA0E0];
    v22[0] = *MEMORY[0x277CCA0F8];
    v22[1] = v5;
    v23[0] = @"com.apple.diagnosticextensions-service";
    v23[1] = identifierCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v7 = MEMORY[0x277CCA9C8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__DiagnosticExtensionCaller__getDEExtensionWithIdentifier___block_invoke;
    v12[3] = &unk_278CF07E8;
    v15 = &v16;
    v13 = identifierCopy;
    v8 = v4;
    v14 = v8;
    [v7 extensionsWithMatchingAttributes:v6 completion:v12];
    v9 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v8, v9);
    v10 = v17[5];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __59__DiagnosticExtensionCaller__getDEExtensionWithIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          v15 = objc_alloc(MEMORY[0x277D051C8]);
          v16 = [v15 initWithNSExtension:{v14, v29}];
          [v8 addObject:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v11);
    }

    v17 = [v8 sortedArrayUsingComparator:&__block_literal_global_4];
    if ([v8 count])
    {
      v18 = [v8 firstObject];
      v19 = *(*(a1 + 48) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      v21 = [v8 count];
      if (v21 < 2)
      {
LABEL_19:
        dispatch_semaphore_signal(*(a1 + 40));
        goto LABEL_20;
      }

      v22 = diagextLogHandle(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v8 count];
        v24 = *(a1 + 32);
        *buf = 134218242;
        v34 = v23;
        v35 = 2112;
        v36 = v24;
        v25 = "Found %ld DEs that matched with the identifier %@.";
        v26 = v22;
        v27 = 22;
LABEL_17:
        _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      }
    }

    else
    {
      v22 = diagextLogHandle(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 32);
        *buf = 138412290;
        v34 = v28;
        v25 = "Did not find DE that matched with the identifier %@.";
        v26 = v22;
        v27 = 12;
        goto LABEL_17;
      }
    }

    goto LABEL_19;
  }

  v8 = diagextLogHandle(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v7;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "Error discovering extensions: %@", buf, 0xCu);
  }

LABEL_20:
}

uint64_t __59__DiagnosticExtensionCaller__getDEExtensionWithIdentifier___block_invoke_74(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 attachmentsName];
  v6 = [v4 attachmentsName];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

- (BOOL)_getAttachmentsFrom:(id)from forBundleID:(id)d withParameters:(id)parameters queue:(id)queue reply:(id)reply
{
  v58 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  dCopy = d;
  parametersCopy = parameters;
  queueCopy = queue;
  replyCopy = reply;
  v15 = replyCopy;
  if (fromCopy && replyCopy)
  {
    v16 = [(DiagnosticExtensionCaller *)self _getDEExtensionWithIdentifier:fromCopy];
    v34 = v16 != 0;
    if (v16)
    {
      [(NSMutableArray *)self->_liveDEs addObject:v16];
      v32 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:parametersCopy];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v57 = 0;
      objc_initWeak(&location, v16);
      v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queueCopy);
      if (v17)
      {
        v18 = dispatch_time(0, 900000000000);
        dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __88__DiagnosticExtensionCaller__getAttachmentsFrom_forBundleID_withParameters_queue_reply___block_invoke;
        handler[3] = &unk_278CF0810;
        objc_copyWeak(&v51, &location);
        v50 = buf;
        v47 = fromCopy;
        selfCopy = self;
        v49 = v15;
        dispatch_source_set_event_handler(v17, handler);
        dispatch_resume(v17);

        objc_destroyWeak(&v51);
      }

      else
      {
        v22 = diagextLogHandle(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *v53 = 0;
          _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_ERROR, "Failed to create a timer.", v53, 2u);
        }
      }

      v23 = qos_class_self();
      v24 = v23;
      if (v23 <= 0x15)
      {
        v25 = QOS_CLASS_DEFAULT;
      }

      else
      {
        v25 = v23;
      }

      if (v23 <= 0x14)
      {
        v26 = diagextLogHandle(v23);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *v53 = 67109376;
          *v54 = v25;
          *&v54[4] = 1024;
          *&v54[6] = v24;
          _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_INFO, "Enforcing QoS %u over requested QoS %u to ensure timely launch of the diagnostic extension", v53, 0xEu);
        }
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __88__DiagnosticExtensionCaller__getAttachmentsFrom_forBundleID_withParameters_queue_reply___block_invoke_79;
      block[3] = &unk_278CF0888;
      v37 = v16;
      v21 = v32;
      v38 = v21;
      v27 = v17;
      v39 = v27;
      v40 = queueCopy;
      objc_copyWeak(&v45, &location);
      v28 = fromCopy;
      v41 = v28;
      v44 = buf;
      selfCopy2 = self;
      v43 = v15;
      v29 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v25, 0, block);
      v30 = diagextLogHandle(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *v53 = 138412546;
        *v54 = v28;
        *&v54[8] = 2112;
        v55 = v21;
        _os_log_impl(&dword_241804000, v30, OS_LOG_TYPE_INFO, "Calling DE %@ with parameters: %@", v53, 0x16u);
      }

      v29[2](v29);
      objc_destroyWeak(&v45);

      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v20 = diagextLogHandle(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = fromCopy;
        _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_DEFAULT, "DECaller failing to find extension with name: %@", buf, 0xCu);
      }

      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
      (v15)[2](v15, 0, v21);
    }
  }

  else
  {
    v16 = diagextLogHandle(replyCopy);
    v34 = 0;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = _Block_copy(v15);
      *buf = 138412546;
      *&buf[4] = fromCopy;
      *&buf[12] = 2048;
      *&buf[14] = v19;
      _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEFAULT, "DECaller given a nil name (%@) or nil reply block (%p)", buf, 0x16u);

      v34 = 0;
    }
  }

  return v34;
}

void __88__DiagnosticExtensionCaller__getAttachmentsFrom_forBundleID_withParameters_queue_reply___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v4 = diagextLogHandle(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEFAULT, "Diagnostic Extension %@ timed out. Moving on.", &v8, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
    (*(v6 + 16))(v6, 0, v7);

    if (v3)
    {
      [*(*(a1 + 40) + 16) removeObject:v3];
    }
  }
}

void __88__DiagnosticExtensionCaller__getAttachmentsFrom_forBundleID_withParameters_queue_reply___block_invoke_79(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__DiagnosticExtensionCaller__getAttachmentsFrom_forBundleID_withParameters_queue_reply___block_invoke_2;
  v6[3] = &unk_278CF0860;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  objc_copyWeak(&v12, (a1 + 96));
  v9 = *(a1 + 64);
  v5 = *(a1 + 80);
  v4 = v5;
  v11 = v5;
  v10 = *(a1 + 72);
  [v2 attachmentsForParameters:v3 andHandler:v6];

  objc_destroyWeak(&v12);
}

void __88__DiagnosticExtensionCaller__getAttachmentsFrom_forBundleID_withParameters_queue_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_source_cancel(v4);
  }

  v5 = *(a1 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__DiagnosticExtensionCaller__getAttachmentsFrom_forBundleID_withParameters_queue_reply___block_invoke_3;
  block[3] = &unk_278CF0838;
  objc_copyWeak(&v14, (a1 + 80));
  v10 = *(a1 + 48);
  v11 = v3;
  v8 = *(a1 + 64);
  v6 = v8;
  v13 = v8;
  v12 = *(a1 + 56);
  v7 = v3;
  dispatch_async(v5, block);

  objc_destroyWeak(&v14);
}

void __88__DiagnosticExtensionCaller__getAttachmentsFrom_forBundleID_withParameters_queue_reply___block_invoke_3(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = diagextLogHandle(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138412546;
    v26 = v4;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEFAULT, "Diagnostic Extension %@ returned with attachments: %@", buf, 0x16u);
  }

  v19 = WeakRetained;

  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v18 = a1;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v20 + 1) + 8 * v12);
        v10 = [v14 attachmentType];

        v15 = [v10 isEqualToString:@"DEAttachmentTypeItem"];
        if (v15)
        {
          [v6 addObject:v14];
        }

        else
        {
          v16 = diagextLogHandle(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = v10;
            _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEFAULT, "Attachment type (%@) is not DEAttachmentTypeItem", buf, 0xCu);
          }
        }

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v17 = *(v18[8] + 8);
  if ((*(v17 + 24) & 1) == 0)
  {
    *(v17 + 24) = 1;
    (*(v18[7] + 16))();
    if (v19)
    {
      [*(v18[6] + 16) removeObject:v19];
    }
  }
}

+ (BOOL)getAttachmentsFrom:(id)from forBundleID:(id)d withParameters:(id)parameters queue:(id)queue reply:(id)reply
{
  fromCopy = from;
  dCopy = d;
  parametersCopy = parameters;
  queueCopy = queue;
  replyCopy = reply;
  v16 = +[DiagnosticExtensionCaller sharedInstance];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 _getAttachmentsFrom:fromCopy forBundleID:dCopy withParameters:parametersCopy queue:queueCopy reply:replyCopy];
  }

  else
  {
    v19 = diagextLogHandle(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_ERROR, "DECaller: Failed to use DiagnosticExtensionCaller", v21, 2u);
    }

    v18 = 0;
  }

  return v18;
}

@end
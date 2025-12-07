@interface UNSAttachmentsService
+ (id)_attachmentURLsRemovedByReplaceUpdate:(id)update;
+ (id)_stagingDirectory;
- (UNSAttachmentsService)initWithAttachmentsRepository:(id)repository notificationRepository:(id)notificationRepository notificationSchedulingService:(id)service pendingNotificationRepository:(id)pendingNotificationRepository;
- (id)_queue_resolveAttachmentsForRequest:(id)request bundleIdentifier:(id)identifier fromLocalClientConnection:(id)connection orFromServiceExtensionOfBundleProxy:(id)proxy continueOnFailure:(BOOL)failure error:(id *)error;
- (id)_queue_resolveGenmojiAttachmentsForRequest:(id)request;
- (id)_queue_resolvedFileURLForNotificationAttachment:(id)attachment request:(id)request bundleIdentifier:(id)identifier fromLocalClientConnection:(id)connection orFromServiceExtensionOfBundleProxy:(id)proxy error:(id *)error;
- (id)_queue_resolvedURLForNotificationAttachment:(id)attachment request:(id)request bundleIdentifier:(id)identifier fromLocalClientConnection:(id)connection orFromServiceExtensionOfBundleProxy:(id)proxy error:(id *)error;
- (id)_queue_validatedRepositoryURLForNotificationAttachment:(id)attachment request:(id)request bundleIdentifier:(id)identifier fromLocalClientConnection:(id)connection orFromServiceExtensionOfBundleProxy:(id)proxy error:(id *)error;
- (id)_temporaryAttachmentFileURL;
- (id)_thumbnailRepresentationsForGlyphData:(id)data;
- (id)resolveAttachmentsForRequest:(id)request bundleIdentifier:(id)identifier fromLocalClientConnection:(id)connection error:(id *)error;
- (id)resolveAttachmentsSkippingErrorsForRequest:(id)request bundleIdentifier:(id)identifier fromBundleProxyForServiceExtension:(id)extension;
- (void)_beginObservingNotificationChanges;
- (void)_notificationIdentifiersForBundleIdentifier:(id)identifier replyOnQueue:(id)queue completionHandler:(id)handler;
- (void)_queue_applicationDidUninstall:(id)uninstall;
- (void)_queue_deleteAttachmentDataForNotificationRecord:(id)record bundleIdentifier:(id)identifier;
- (void)_queue_deleteAttachmentDataForNotificationRecords:(id)records bundleIdentifier:(id)identifier;
- (void)_queue_ensureIntegrityWithCompletionHandler:(id)handler;
- (void)_queue_notificationSourcesDidUninstall:(id)uninstall;
- (void)_repositoryDidPerformUpdates:(id)updates forBundleIdentifier:(id)identifier;
- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)unlock;
- (void)ensureIntegrityWithCompletionHandler:(id)handler;
- (void)notificationSourcesDidUninstall:(id)uninstall;
@end

@implementation UNSAttachmentsService

- (UNSAttachmentsService)initWithAttachmentsRepository:(id)repository notificationRepository:(id)notificationRepository notificationSchedulingService:(id)service pendingNotificationRepository:(id)pendingNotificationRepository
{
  repositoryCopy = repository;
  notificationRepositoryCopy = notificationRepository;
  serviceCopy = service;
  pendingNotificationRepositoryCopy = pendingNotificationRepository;
  v20.receiver = self;
  v20.super_class = UNSAttachmentsService;
  v15 = [(UNSAttachmentsService *)&v20 init];
  if (v15)
  {
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.usernotificationsserver.AttachmentsService", v16);
    queue = v15->_queue;
    v15->_queue = v17;

    objc_storeStrong(&v15->_attachmentsRepository, repository);
    objc_storeStrong(&v15->_notificationRepository, notificationRepository);
    objc_storeStrong(&v15->_notificationSchedulingService, service);
    objc_storeStrong(&v15->_pendingNotificationRepository, pendingNotificationRepository);
    [(UNSAttachmentsService *)v15 _beginObservingNotificationChanges];
  }

  return v15;
}

- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)unlock
{
  if (unlock)
  {
    [(UNSAttachmentsService *)self ensureIntegrityWithCompletionHandler:&__block_literal_global_1];
  }
}

void __69__UNSAttachmentsService_contentProtectionStateChangedForFirstUnlock___block_invoke()
{
  v0 = *MEMORY[0x277CE2068];
  if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_270AA8000, v0, OS_LOG_TYPE_DEFAULT, "Attachment integrity check complete after first unlock", v1, 2u);
  }
}

- (void)ensureIntegrityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__UNSAttachmentsService_ensureIntegrityWithCompletionHandler___block_invoke;
  v7[3] = &unk_279E10378;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __62__UNSAttachmentsService_ensureIntegrityWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CE2068];
  if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v2, OS_LOG_TYPE_DEFAULT, "Suspending attachment service", buf, 2u);
  }

  dispatch_suspend(*(*(a1 + 32) + 8));
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__UNSAttachmentsService_ensureIntegrityWithCompletionHandler___block_invoke_3;
  v4[3] = &unk_279E10378;
  v4[4] = v3;
  v5 = *(a1 + 40);
  [v3 _queue_ensureIntegrityWithCompletionHandler:v4];
}

uint64_t __62__UNSAttachmentsService_ensureIntegrityWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *MEMORY[0x277CE2068];
  if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_270AA8000, v2, OS_LOG_TYPE_DEFAULT, "Resuming attachment service", v4, 2u);
  }

  dispatch_resume(*(*(a1 + 32) + 8));
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_queue_ensureIntegrityWithCompletionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  queue = dispatch_queue_create("com.apple.usernotificationsserver.AttachmentsService.integrity", v4);

  v5 = dispatch_group_create();
  bundleIdentifiersClaimingAttachments = [(UNCAttachmentsRepository *)self->_attachmentsRepository bundleIdentifiersClaimingAttachments];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy_;
  v25[4] = __Block_byref_object_dispose_;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = bundleIdentifiersClaimingAttachments;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        dispatch_group_enter(v5);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __69__UNSAttachmentsService__queue_ensureIntegrityWithCompletionHandler___block_invoke;
        v18[3] = &unk_279E103A0;
        v20 = v25;
        v18[4] = v10;
        v19 = v5;
        [(UNSAttachmentsService *)self _notificationIdentifiersForBundleIdentifier:v10 replyOnQueue:queue completionHandler:v18];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v7);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__UNSAttachmentsService__queue_ensureIntegrityWithCompletionHandler___block_invoke_2;
  block[3] = &unk_279E103C8;
  v17 = v25;
  block[4] = self;
  v16 = handlerCopy;
  v11 = handlerCopy;
  dispatch_group_notify(v5, queue, block);

  _Block_object_dispose(v25, 8);
}

void __69__UNSAttachmentsService__queue_ensureIntegrityWithCompletionHandler___block_invoke(void *a1, uint64_t a2)
{
  [*(*(a1[6] + 8) + 40) setObject:a2 forKey:a1[4]];
  v3 = a1[5];

  dispatch_group_leave(v3);
}

uint64_t __69__UNSAttachmentsService__queue_ensureIntegrityWithCompletionHandler___block_invoke_2(void *a1)
{
  [*(a1[4] + 16) ensureIntegrityUsingNotificationIdentifiersForBundleIdentifiers:*(*(a1[6] + 8) + 40)];
  v2 = *(a1[5] + 16);

  return v2();
}

- (id)resolveAttachmentsForRequest:(id)request bundleIdentifier:(id)identifier fromLocalClientConnection:(id)connection error:(id *)error
{
  requestCopy = request;
  identifierCopy = identifier;
  connectionCopy = connection;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v13 = requestCopy;
  v39 = v13;
  v14 = [(UNSAttachmentsService *)self _queue_resolveGenmojiAttachmentsForRequest:v35[5]];
  v15 = v35[5];
  v35[5] = v14;

  content = [v13 content];
  attachments = [content attachments];
  v18 = [attachments count];

  if (v18)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy_;
    v32 = __Block_byref_object_dispose_;
    v33 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__UNSAttachmentsService_resolveAttachmentsForRequest_bundleIdentifier_fromLocalClientConnection_error___block_invoke;
    block[3] = &unk_279E103F0;
    v26 = &v34;
    block[4] = self;
    v24 = identifierCopy;
    v25 = connectionCopy;
    v27 = &v28;
    dispatch_sync(queue, block);
    if (error)
    {
      v20 = v29[5];
      if (v20)
      {
        *error = v20;
      }
    }

    _Block_object_dispose(&v28, 8);
  }

  v21 = v35[5];
  _Block_object_dispose(&v34, 8);

  return v21;
}

void __103__UNSAttachmentsService_resolveAttachmentsForRequest_bundleIdentifier_fromLocalClientConnection_error___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = *(*(a1[7] + 8) + 40);
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v4 _queue_resolveAttachmentsForRequest:v3 bundleIdentifier:v5 fromLocalClientConnection:v2 orFromServiceExtensionOfBundleProxy:0 continueOnFailure:0 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)resolveAttachmentsSkippingErrorsForRequest:(id)request bundleIdentifier:(id)identifier fromBundleProxyForServiceExtension:(id)extension
{
  requestCopy = request;
  identifierCopy = identifier;
  extensionCopy = extension;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  content = [requestCopy content];
  attachments = [content attachments];
  v14 = [attachments count];

  if (v14)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __120__UNSAttachmentsService_resolveAttachmentsSkippingErrorsForRequest_bundleIdentifier_fromBundleProxyForServiceExtension___block_invoke;
    block[3] = &unk_279E10418;
    v22 = &v23;
    block[4] = self;
    v19 = requestCopy;
    v20 = identifierCopy;
    v21 = extensionCopy;
    dispatch_sync(queue, block);
  }

  else
  {
    objc_storeStrong(v24 + 5, request);
  }

  v16 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v16;
}

void __120__UNSAttachmentsService_resolveAttachmentsSkippingErrorsForRequest_bundleIdentifier_fromBundleProxyForServiceExtension___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_resolveAttachmentsForRequest:*(a1 + 40) bundleIdentifier:*(a1 + 48) fromLocalClientConnection:0 orFromServiceExtensionOfBundleProxy:*(a1 + 56) continueOnFailure:1 error:0];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_queue_resolveGenmojiAttachmentsForRequest:(id)request
{
  v50 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  content = [requestCopy content];
  attributedBody = [content attributedBody];

  v7 = MEMORY[0x277CE2068];
  if (!attributedBody || ![attributedBody length])
  {
    v8 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      identifier = [requestCopy identifier];
      un_logDigest = [identifier un_logDigest];
      *buf = 138412546;
      *&buf[4] = un_logDigest;
      *&buf[12] = 2112;
      *&buf[14] = requestCopy;
      _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "attributedBody is empty for request %@ %@", buf, 0x16u);
    }
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = [attributedBody length];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __68__UNSAttachmentsService__queue_resolveGenmojiAttachmentsForRequest___block_invoke;
  v42[3] = &unk_279E10440;
  v14 = v12;
  v43 = v14;
  [attributedBody enumerateAttributesInRange:0 options:v13 usingBlock:{0, v42}];
  if (![v14 count])
  {
    v15 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      identifier2 = [requestCopy identifier];
      un_logDigest2 = [identifier2 un_logDigest];
      *buf = 138412290;
      *&buf[4] = un_logDigest2;
      _os_log_impl(&dword_270AA8000, v16, OS_LOG_TYPE_DEFAULT, "Did not find image glyph data for request %@", buf, 0xCu);
    }
  }

  v19 = [(UNSAttachmentsService *)self _thumbnailRepresentationsForGlyphData:v14];
  v20 = [attributedBody mutableCopy];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v49 = 0;
  v21 = [attributedBody length];
  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = __68__UNSAttachmentsService__queue_resolveGenmojiAttachmentsForRequest___block_invoke_8;
  v38 = &unk_279E10468;
  v22 = v19;
  v39 = v22;
  v41 = buf;
  v23 = v20;
  v40 = v23;
  [attributedBody enumerateAttributesInRange:0 options:v21 usingBlock:{0, &v35}];
  content2 = [requestCopy content];
  v25 = [content2 mutableCopy];

  v26 = *v7;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    identifier3 = [requestCopy identifier];
    un_logDigest3 = [identifier3 un_logDigest];
    v29 = *(*&buf[8] + 24);
    *v44 = 138412546;
    v45 = un_logDigest3;
    v46 = 2048;
    v47 = v29;
    _os_log_impl(&dword_270AA8000, v26, OS_LOG_TYPE_DEFAULT, "Updated attributedBody of request %@ w/ %ld image glyphs", v44, 0x16u);
  }

  [v25 setAttributedBody:v23];
  v30 = MEMORY[0x277CE1FC0];
  identifier4 = [requestCopy identifier];
  trigger = [requestCopy trigger];
  v33 = [v30 requestWithIdentifier:identifier4 content:v25 trigger:trigger destinations:{objc_msgSend(requestCopy, "destinations")}];

  _Block_object_dispose(buf, 8);

  return v33;
}

void __68__UNSAttachmentsService__queue_resolveGenmojiAttachmentsForRequest___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 keyEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isEqualToString:@"CTAdaptiveImageProvider"])
        {
          v10 = *(a1 + 32);
          v11 = [v3 objectForKeyedSubscript:v9];
          v12 = [v11 imageContent];
          [v10 addObject:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

void __68__UNSAttachmentsService__queue_resolveGenmojiAttachmentsForRequest___block_invoke_8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = [v7 keyEnumerator];
  v49 = [v8 countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v49)
  {
    v48 = *v52;
    v9 = 0x277D74000uLL;
    v10 = 0x277CBE000;
    v40 = a3;
    v41 = a4;
    v42 = v8;
    v43 = v7;
    v39 = a1;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v52 != v48)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v51 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v39}];
        v50 = v12;
        if ([v12 isEqualToString:@"CTAdaptiveImageProvider"])
        {
          if ([*(a1 + 32) count] > *(*(*(a1 + 48) + 8) + 24))
          {
            v14 = [*(a1 + 32) objectAtIndex:?];

            if (v14)
            {
              v15 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
              v16 = [v15 generatedProperties];
              v17 = [v16 additionalProperties];

              v47 = [v17 objectForKey:@"contentIdentifier"];
              v46 = [v17 objectForKey:@"shortDescription"];
              v18 = [v17 objectForKey:@"alignmentInsetWidths"];
              v44 = v17;
              v19 = [v17 objectForKey:@"alignmentInsetHeights"];
              v45 = v15;
              v20 = [v15 images];
              v21 = objc_opt_new();
              if ([v20 count])
              {
                v22 = 0;
                do
                {
                  v23 = [v20 objectAtIndex:v22];
                  v24 = [v18 objectAtIndex:v22];
                  [v24 floatValue];
                  v26 = v25;

                  v27 = [v19 objectAtIndex:v22];
                  [v27 floatValue];
                  v29 = v28;

                  v30 = [objc_alloc(*(v9 + 552)) initWithImage:v23 alignmentInset:{v26, v29}];
                  [v21 addObject:v30];

                  ++v22;
                }

                while (v22 < [v20 count]);
              }

              if (v47)
              {
                v8 = v42;
                v7 = v43;
                v31 = v45;
                if (v46 && [v21 count])
                {
                  v32 = [objc_alloc(MEMORY[0x277D74220]) initWithContentIdentifier:v47 shortDescription:v46 strikeImages:v21];
                  v33 = objc_alloc(MEMORY[0x277D74208]);
                  v34 = [v32 imageData];
                  v35 = [v33 initWithImageContent:v34];

                  v36 = v35;
                  a1 = v39;
                  ++*(*(*(v39 + 48) + 8) + 24);

                  v13 = v36;
                  v8 = v42;
                  v7 = v43;
                }

                else
                {
                  a1 = v39;
                }
              }

              else
              {
                v8 = v42;
                v7 = v43;
                a1 = v39;
                v31 = v45;
              }

              a3 = v40;
              a4 = v41;
              v9 = 0x277D74000;
              v10 = 0x277CBE000uLL;
            }
          }
        }

        if (v13)
        {
          v37 = *(a1 + 40);
          v55 = v50;
          v56 = v13;
          v38 = [*(v10 + 2752) dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          [v37 setAttributes:v38 range:{a3, a4}];

          v9 = 0x277D74000;
        }
      }

      v49 = [v8 countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v49);
  }
}

- (id)_queue_resolveAttachmentsForRequest:(id)request bundleIdentifier:(id)identifier fromLocalClientConnection:(id)connection orFromServiceExtensionOfBundleProxy:(id)proxy continueOnFailure:(BOOL)failure error:(id *)error
{
  failureCopy = failure;
  v106 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  identifierCopy = identifier;
  connectionCopy = connection;
  proxyCopy = proxy;
  dispatch_assert_queue_V2(self->_queue);
  array = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [requestCopy enterSecurityScope];
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  content = [requestCopy content];
  attachments = [content attachments];

  obj = attachments;
  v17 = [attachments countByEnumeratingWithState:&v94 objects:v105 count:16];
  v78 = identifierCopy;
  v75 = dictionary;
  selfCopy = self;
  if (!v17)
  {
    v79 = 0;
    v81 = 1;
    goto LABEL_24;
  }

  v18 = v17;
  v79 = 0;
  v19 = *v95;
  v81 = 1;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v95 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v94 + 1) + 8 * i);
      v22 = [v21 URL];
      v23 = [dictionary objectForKey:v22];

      if (v23)
      {
        type = [v21 type];
        type2 = [v23 type];
        v26 = [type isEqual:type2];

        if (v26)
        {
          v27 = [v23 URL];
          if (v27)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v34 = *MEMORY[0x277CE2068];
          if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v100 = v21;
            v101 = 2114;
            *v102 = v23;
            _os_log_error_impl(&dword_270AA8000, v34, OS_LOG_TYPE_ERROR, "Type conflict between attachment and pre-resolved attachment: attachment=%{public}@, preResolvedAttachment=%{public}@", buf, 0x16u);
          }

          v35 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:100 userInfo:0];

          v79 = v35;
        }
      }

      else
      {
        v93 = v79;
        v27 = [(UNSAttachmentsService *)selfCopy _queue_resolvedURLForNotificationAttachment:v21 request:requestCopy bundleIdentifier:identifierCopy fromLocalClientConnection:connectionCopy orFromServiceExtensionOfBundleProxy:proxyCopy error:&v93];
        v28 = v93;

        v79 = v28;
        if (v27)
        {
LABEL_11:
          v29 = objc_alloc(MEMORY[0x277CE1F90]);
          identifier = [v21 identifier];
          type3 = [v21 type];
          options = [v21 options];
          v33 = [v29 initWithIdentifier:identifier URL:v27 type:type3 options:options];

          dictionary = v75;
          [array addObject:v33];

          identifierCopy = v78;
          self = selfCopy;
          goto LABEL_19;
        }
      }

      identifierCopy = v78;
      self = selfCopy;
      v36 = *MEMORY[0x277CE2068];
      if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v100 = v21;
        v101 = 2114;
        *v102 = v79;
        _os_log_error_impl(&dword_270AA8000, v36, OS_LOG_TYPE_ERROR, "Unable to stage attachment: attachment=%{public}@, error=%{public}@", buf, 0x16u);
      }

      if (!failureCopy)
      {

        v81 = 0;
        goto LABEL_24;
      }

      v81 = 0;
LABEL_19:
    }

    v18 = [obj countByEnumeratingWithState:&v94 objects:v105 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_24:

  [requestCopy leaveSecurityScope];
  if ((v81 & 1) != 0 || failureCopy)
  {
    content2 = [requestCopy content];
    v56 = [content2 mutableCopy];

    [v56 setAttachments:array];
    v64 = MEMORY[0x277CE1FC0];
    identifier2 = [requestCopy identifier];
    trigger = [requestCopy trigger];
    v57 = [v64 requestWithIdentifier:identifier2 content:v56 trigger:trigger destinations:{objc_msgSend(requestCopy, "destinations")}];

    v67 = *MEMORY[0x277CE2068];
    if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v100 = v57;
      v101 = 1024;
      *v102 = v81 & 1;
      *&v102[4] = 1024;
      *&v102[6] = failureCopy;
      _os_log_impl(&dword_270AA8000, v67, OS_LOG_TYPE_DEFAULT, "Successfully resolved request: resolvedRequest=%{public}@, resolutionSuccess=%{BOOL}d, continueOnFailure=%{BOOL}d", buf, 0x18u);
    }
  }

  else
  {
    v71 = requestCopy;
    v37 = *MEMORY[0x277CE2068];
    if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
    {
      [UNSAttachmentsService _queue_resolveAttachmentsForRequest:v79 bundleIdentifier:v37 fromLocalClientConnection:? orFromServiceExtensionOfBundleProxy:? continueOnFailure:? error:?];
    }

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v38 = v75;
    v39 = [v38 countByEnumeratingWithState:&v89 objects:v104 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v90;
      v82 = *v90;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v90 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v89 + 1) + 8 * j);
          if (([(UNCAttachmentsRepository *)self->_attachmentsRepository isRepositoryURL:v43, v71]& 1) != 0)
          {
            v44 = *MEMORY[0x277CE2068];
            if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v100 = v43;
              _os_log_impl(&dword_270AA8000, v44, OS_LOG_TYPE_DEFAULT, "Skipping attachment URL from repository: URL=%{public}@", buf, 0xCu);
            }
          }

          else
          {
            v45 = [v38 objectForKey:v43];
            v46 = [v45 URL];
            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            path = [v43 path];
            v49 = [defaultManager fileExistsAtPath:path];

            if ((v49 & 1) == 0)
            {
              v50 = v38;
              defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
              v88 = 0;
              v52 = [defaultManager2 copyItemAtURL:v46 toURL:v43 error:&v88];
              v53 = v88;

              v54 = *MEMORY[0x277CE2068];
              v55 = *MEMORY[0x277CE2068];
              if (v52)
              {
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v100 = v46;
                  v101 = 2114;
                  *v102 = v43;
                  _os_log_impl(&dword_270AA8000, v54, OS_LOG_TYPE_DEFAULT, "Rolled back attachment: resolvedURL=%{public}@, originalAttachmentURL=%{public}@", buf, 0x16u);
                }
              }

              else if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543874;
                v100 = v46;
                v101 = 2114;
                *v102 = v43;
                *&v102[8] = 2114;
                v103 = v53;
                _os_log_error_impl(&dword_270AA8000, v54, OS_LOG_TYPE_ERROR, "Unable to roll back attachment: resolvedURL=%{public}@, originalAttachmentURL=%{public}@, error=%{public}@", buf, 0x20u);
              }

              v38 = v50;
              v41 = v82;
            }

            self = selfCopy;
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v89 objects:v104 count:16];
      }

      while (v40);
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v56 = array;
    v57 = [v56 countByEnumeratingWithState:&v84 objects:v98 count:16];
    if (v57)
    {
      v58 = *v85;
      requestCopy = v71;
      identifierCopy = v78;
      do
      {
        for (k = 0; k != v57; k = k + 1)
        {
          if (*v85 != v58)
          {
            objc_enumerationMutation(v56);
          }

          attachmentsRepository = self->_attachmentsRepository;
          v61 = [*(*(&v84 + 1) + 8 * k) URL];
          identifier3 = [requestCopy identifier];
          [(UNCAttachmentsRepository *)attachmentsRepository removeReferenceToRepositoryURL:v61 forNotificationIdentifier:identifier3 bundleIdentifier:v78];
        }

        v57 = [v56 countByEnumeratingWithState:&v84 objects:v98 count:16];
      }

      while (v57);
    }

    else
    {
      requestCopy = v71;
      identifierCopy = v78;
    }
  }

  if (error && v79)
  {
    v68 = v79;
    *error = v79;
  }

  v69 = v57;

  return v57;
}

- (id)_thumbnailRepresentationsForGlyphData:(id)data
{
  v31 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = dataCopy;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v13 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        v20 = 0;
        v21 = &v20;
        v22 = 0x3032000000;
        v23 = __Block_byref_object_copy_;
        v24 = __Block_byref_object_dispose_;
        v25 = 0;
        v18[0] = 0;
        v18[1] = v18;
        v18[2] = 0x3032000000;
        v18[3] = __Block_byref_object_copy_;
        v18[4] = __Block_byref_object_dispose_;
        v19 = 0;
        v7 = [objc_alloc(MEMORY[0x277CDAAD8]) initWithData:v6 contentType:@"com.apple.private.usernotifications.genmoji.attachment" size:4 scale:1025.0 representationTypes:{1025.0, 1.0}];
        [v7 setContentTypeUTI:@"com.apple.private.usernotifications.genmoji.attachment"];
        mEMORY[0x277CDAAE0] = [MEMORY[0x277CDAAE0] sharedGenerator];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __63__UNSAttachmentsService__thumbnailRepresentationsForGlyphData___block_invoke;
        v14[3] = &unk_279E10490;
        v16 = &v20;
        v17 = v18;
        v9 = v7;
        v15 = v9;
        [mEMORY[0x277CDAAE0] synchronousGenerateThumbnailForRequest:v9 updateHandler:0 statusHandler:0 completionHandler:v14];

        if (v21[5])
        {
          [v12 addObject:?];
        }

        _Block_object_dispose(v18, 8);
        _Block_object_dispose(&v20, 8);
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v4);
  }

  return v12;
}

void __63__UNSAttachmentsService__thumbnailRepresentationsForGlyphData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = *MEMORY[0x277CE2068];
    if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
    {
      __63__UNSAttachmentsService__thumbnailRepresentationsForGlyphData___block_invoke_cold_1(a1, a1 + 48, v8);
    }
  }
}

- (id)_queue_resolvedURLForNotificationAttachment:(id)attachment request:(id)request bundleIdentifier:(id)identifier fromLocalClientConnection:(id)connection orFromServiceExtensionOfBundleProxy:(id)proxy error:(id *)error
{
  attachmentCopy = attachment;
  queue = self->_queue;
  proxyCopy = proxy;
  connectionCopy = connection;
  identifierCopy = identifier;
  requestCopy = request;
  dispatch_assert_queue_V2(queue);
  v18 = [attachmentCopy URL];
  uRLByStandardizingPath = [v18 URLByStandardizingPath];

  uRLByResolvingSymlinksInPath = [uRLByStandardizingPath URLByResolvingSymlinksInPath];

  v21 = objc_alloc(MEMORY[0x277CE1F90]);
  identifier = [attachmentCopy identifier];
  type = [attachmentCopy type];
  options = [attachmentCopy options];
  v25 = [v21 initWithIdentifier:identifier URL:uRLByResolvingSymlinksInPath type:type options:options];

  if ([(UNCAttachmentsRepository *)self->_attachmentsRepository isRepositoryURL:uRLByResolvingSymlinksInPath])
  {
    v36 = 0;
    v26 = &v36;
    v27 = proxyCopy;
    v28 = [(UNSAttachmentsService *)self _queue_validatedRepositoryURLForNotificationAttachment:v25 request:requestCopy bundleIdentifier:identifierCopy fromLocalClientConnection:connectionCopy orFromServiceExtensionOfBundleProxy:proxyCopy error:&v36];
  }

  else
  {
    v35 = 0;
    v26 = &v35;
    v27 = proxyCopy;
    v28 = [(UNSAttachmentsService *)self _queue_resolvedFileURLForNotificationAttachment:v25 request:requestCopy bundleIdentifier:identifierCopy fromLocalClientConnection:connectionCopy orFromServiceExtensionOfBundleProxy:proxyCopy error:&v35];
  }

  v29 = v28;

  v30 = *v26;
  if (!v29 && os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
  {
    [UNSAttachmentsService _queue_resolvedURLForNotificationAttachment:request:bundleIdentifier:fromLocalClientConnection:orFromServiceExtensionOfBundleProxy:error:];
  }

  if (error && v30)
  {
    v31 = v30;
    *error = v30;
  }

  return v29;
}

- (id)_queue_validatedRepositoryURLForNotificationAttachment:(id)attachment request:(id)request bundleIdentifier:(id)identifier fromLocalClientConnection:(id)connection orFromServiceExtensionOfBundleProxy:(id)proxy error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  v13 = [attachmentCopy URL];
  if ([(UNCAttachmentsRepository *)self->_attachmentsRepository isValidRepositoryURL:v13 forBundleIdentifier:identifierCopy])
  {
    v14 = MEMORY[0x277CE1CB8];
    type = [attachmentCopy type];
    v16 = [v14 typeWithIdentifier:type];

    preferredFilenameExtension = [v16 preferredFilenameExtension];
    pathExtension = [v13 pathExtension];
    v19 = [preferredFilenameExtension isEqualToString:pathExtension];
    v20 = *MEMORY[0x277CE2068];
    if (v19)
    {
      if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138543618;
        v27 = attachmentCopy;
        v28 = 2112;
        v29 = identifierCopy;
        _os_log_impl(&dword_270AA8000, v20, OS_LOG_TYPE_DEFAULT, "Attachment is in repository for bundle: attachment=%{public}@, bundleIdentifier=%@", &v26, 0x16u);
      }

      v21 = v13;
      v22 = 0;
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
      {
        v26 = 138544130;
        v27 = attachmentCopy;
        v28 = 2112;
        v29 = identifierCopy;
        v30 = 2114;
        v31 = preferredFilenameExtension;
        v32 = 2114;
        v33 = pathExtension;
        _os_log_error_impl(&dword_270AA8000, v20, OS_LOG_TYPE_ERROR, "Attachment has a type that doesn't match existing file in the repository: attachment=%{public}@, bundleIdentifier=%@, expectedExtension=%{public}@, actualExtension=%{public}@", &v26, 0x2Au);
      }

      v22 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:101 userInfo:0];
      v21 = 0;
    }

    if (error)
    {
LABEL_14:
      if (v22)
      {
        v24 = v22;
        *error = v22;
      }
    }
  }

  else
  {
    v23 = *MEMORY[0x277CE2068];
    if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
    {
      [UNSAttachmentsService _queue_validatedRepositoryURLForNotificationAttachment:attachmentCopy request:identifierCopy bundleIdentifier:v23 fromLocalClientConnection:? orFromServiceExtensionOfBundleProxy:? error:?];
    }

    v22 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:100 userInfo:0];
    v21 = 0;
    if (error)
    {
      goto LABEL_14;
    }
  }

  return v21;
}

- (id)_queue_resolvedFileURLForNotificationAttachment:(id)attachment request:(id)request bundleIdentifier:(id)identifier fromLocalClientConnection:(id)connection orFromServiceExtensionOfBundleProxy:(id)proxy error:(id *)error
{
  v74 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  requestCopy = request;
  identifierCopy = identifier;
  connectionCopy = connection;
  proxyCopy = proxy;
  dispatch_assert_queue_V2(self->_queue);
  v18 = [attachmentCopy URL];
  v69 = 0;
  v19 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v18 error:&v69];
  v20 = v69;
  v21 = v20;
  if (v19 && !v20)
  {
    v68 = 0;
    v22 = [MEMORY[0x277CE1F90] stagingActionForFileHandle:v19 fromLocalClientConnection:connectionCopy orFromServiceExtensionOfBundleProxy:proxyCopy servicingBundleIdentifier:identifierCopy error:&v68];
    v64 = v68;
    if (!v22)
    {
      v41 = *MEMORY[0x277CE2068];
      if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v71 = v18;
        v72 = 2112;
        *v73 = identifierCopy;
        *&v73[8] = 2114;
        *&v73[10] = v64;
        _os_log_error_impl(&dword_270AA8000, v41, OS_LOG_TYPE_ERROR, "Attachment file is not related to bundle: fileURL=%{public}@, bundleIdentifier=%@, stagingError=%{public}@", buf, 0x20u);
      }

      v39 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:100 userInfo:0];
      v40 = 0;
LABEL_33:
      [v19 closeFile];
      if (!error)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    v61 = identifierCopy;
    v62 = requestCopy;
    errorCopy = error;
    v23 = MEMORY[0x277CE1CB8];
    type = [attachmentCopy type];
    v25 = [v23 typeWithIdentifier:type];

    v59 = v25;
    preferredFilenameExtension = [v25 preferredFilenameExtension];
    _temporaryAttachmentFileURL = [(UNSAttachmentsService *)self _temporaryAttachmentFileURL];
    v58 = preferredFilenameExtension;
    v28 = [_temporaryAttachmentFileURL URLByAppendingPathExtension:preferredFilenameExtension];

    v29 = *MEMORY[0x277CE2068];
    if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v71 = v18;
      v72 = 2114;
      *v73 = v28;
      _os_log_impl(&dword_270AA8000, v29, OS_LOG_TYPE_DEFAULT, "Will stage attachment file via secure copy: fileURL=%{public}@, temporaryFileURL=%{public}@", buf, 0x16u);
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v67 = 0;
    v31 = [defaultManager unc_securelyCopyFile:v19 fromURL:v18 toURL:v28 error:&v67];
    v60 = v67;

    v63 = v28;
    if (!v31)
    {
      v42 = *MEMORY[0x277CE2068];
      if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v71 = v18;
        v72 = 2114;
        *v73 = v28;
        *&v73[8] = 2114;
        *&v73[10] = v60;
        _os_log_error_impl(&dword_270AA8000, v42, OS_LOG_TYPE_ERROR, "Unable to stage attachment file: fileURL=%{public}@, temporaryFileURL=%{public}@ error=%{public}@", buf, 0x20u);
      }

      v39 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:104 userInfo:0];
      v40 = 0;
      requestCopy = v62;
      error = errorCopy;
      goto LABEL_32;
    }

    v55 = proxyCopy;
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    path = [v28 path];
    v34 = [defaultManager2 attributesOfItemAtPath:path error:0];

    v56 = v34;
    v35 = [v34 objectForKey:*MEMORY[0x277CCA1C0]];
    [attachmentCopy family];
    v36 = UNNotificationAttachmentFamilyMaximumSize();
    v54 = v35;
    if ([v35 unsignedLongValue] <= v36)
    {
      attachmentsRepository = self->_attachmentsRepository;
      identifier = [v62 identifier];
      v40 = [(UNCAttachmentsRepository *)attachmentsRepository moveFileIntoRepositoryFromFileURL:v28 forNotificationIdentifier:identifier bundleIdentifier:identifierCopy];

      v45 = *MEMORY[0x277CE2068];
      v46 = *MEMORY[0x277CE2068];
      if (v40)
      {
        error = errorCopy;
        proxyCopy = v55;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v71 = attachmentCopy;
          v72 = 2114;
          *v73 = v40;
          _os_log_impl(&dword_270AA8000, v45, OS_LOG_TYPE_DEFAULT, "Copied attachment file into repository: attachment=%{public}@, repositoryURL=%{public}@", buf, 0x16u);
        }

        v39 = 0;
        requestCopy = v62;
        goto LABEL_31;
      }

      error = errorCopy;
      proxyCopy = v55;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [UNSAttachmentsService _queue_resolvedFileURLForNotificationAttachment:request:bundleIdentifier:fromLocalClientConnection:orFromServiceExtensionOfBundleProxy:error:];
      }

      v37 = 104;
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
      {
        [UNSAttachmentsService _queue_resolvedFileURLForNotificationAttachment:request:bundleIdentifier:fromLocalClientConnection:orFromServiceExtensionOfBundleProxy:error:];
      }

      v37 = 102;
      error = errorCopy;
      proxyCopy = v55;
    }

    v39 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:v37 userInfo:{0, v54}];
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    v66 = 0;
    v48 = [defaultManager3 removeItemAtURL:v63 error:&v66];
    v49 = v66;

    v50 = *MEMORY[0x277CE2068];
    if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v71 = attachmentCopy;
      v72 = 1024;
      *v73 = v48;
      *&v73[4] = 2114;
      *&v73[6] = v49;
      _os_log_impl(&dword_270AA8000, v50, OS_LOG_TYPE_DEFAULT, "Performed delete for invalid attachment: attachment=%{public}@, success=%{BOOL}d, error=%{public}@", buf, 0x1Cu);
    }

    v40 = 0;
    identifierCopy = v61;
    requestCopy = v62;
LABEL_31:

LABEL_32:
    goto LABEL_33;
  }

  v38 = *MEMORY[0x277CE2068];
  if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v71 = v18;
    v72 = 2112;
    *v73 = identifierCopy;
    *&v73[8] = 2114;
    *&v73[10] = v21;
    _os_log_error_impl(&dword_270AA8000, v38, OS_LOG_TYPE_ERROR, "Error opening file for attachment URL: fileURL=%{public}@, bundleIdentifier=%@, fileHandleCreationError=%{public}@", buf, 0x20u);
  }

  v39 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:100 userInfo:0];
  v64 = 0;
  v40 = 0;
  if (error)
  {
LABEL_34:
    if (v39)
    {
      v51 = v39;
      *error = v39;
    }
  }

LABEL_36:
  v52 = v40;

  return v40;
}

- (id)_temporaryAttachmentFileURL
{
  _stagingDirectory = [objc_opt_class() _stagingDirectory];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v5 = [_stagingDirectory URLByAppendingPathComponent:uUIDString];

  return v5;
}

- (void)_queue_deleteAttachmentDataForNotificationRecords:(id)records bundleIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = recordsCopy;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(UNSAttachmentsService *)self _queue_deleteAttachmentDataForNotificationRecord:*(*(&v13 + 1) + 8 * v12++) bundleIdentifier:identifierCopy, v13];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_queue_deleteAttachmentDataForNotificationRecord:(id)record bundleIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  identifier = [recordCopy identifier];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  attachments = [recordCopy attachments];
  v10 = [attachments countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(attachments);
        }

        attachmentsRepository = self->_attachmentsRepository;
        v15 = [*(*(&v16 + 1) + 8 * v13) URL];
        [(UNCAttachmentsRepository *)attachmentsRepository removeReferenceToRepositoryURL:v15 forNotificationIdentifier:identifier bundleIdentifier:identifierCopy];

        ++v13;
      }

      while (v11 != v13);
      v11 = [attachments countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

- (void)notificationSourcesDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__UNSAttachmentsService_notificationSourcesDidUninstall___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = uninstallCopy;
  v6 = uninstallCopy;
  dispatch_sync(queue, v7);
}

- (void)_queue_notificationSourcesDidUninstall:(id)uninstall
{
  v15 = *MEMORY[0x277D85DE8];
  uninstallCopy = uninstall;
  dispatch_assert_queue_V2(self->_queue);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = uninstallCopy;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(UNSAttachmentsService *)self _queue_applicationDidUninstall:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_queue_applicationDidUninstall:(id)uninstall
{
  queue = self->_queue;
  uninstallCopy = uninstall;
  dispatch_assert_queue_V2(queue);
  attachmentsRepository = self->_attachmentsRepository;
  bundleIdentifier = [uninstallCopy bundleIdentifier];

  [(UNCAttachmentsRepository *)attachmentsRepository deleteAllFilesForBundleIdentifier:bundleIdentifier];
}

- (void)_beginObservingNotificationChanges
{
  v3 = *MEMORY[0x277D77D40];
  [(UNCNotificationRepository *)self->_notificationRepository addObserver:self forBundleIdentifier:*MEMORY[0x277D77D40]];
  pendingNotificationRepository = self->_pendingNotificationRepository;

  [(UNCPendingNotificationRepository *)pendingNotificationRepository addObserver:self forBundleIdentifier:v3];
}

- (void)_repositoryDidPerformUpdates:(id)updates forBundleIdentifier:(id)identifier
{
  updatesCopy = updates;
  identifierCopy = identifier;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__UNSAttachmentsService__repositoryDidPerformUpdates_forBundleIdentifier___block_invoke;
  v11[3] = &unk_279E104E0;
  v12 = updatesCopy;
  selfCopy = self;
  v14 = identifierCopy;
  v9 = identifierCopy;
  v10 = updatesCopy;
  [(UNSAttachmentsService *)self _notificationIdentifiersForBundleIdentifier:v9 replyOnQueue:queue completionHandler:v11];
}

void __74__UNSAttachmentsService__repositoryDidPerformUpdates_forBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v21 = a2;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v23 = *v29;
    do
    {
      v5 = 0;
      do
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * v5);
        objc_opt_class();
        v7 = UNSafeCast();
        objc_opt_class();
        v8 = UNSafeCast();
        v9 = v8;
        if (v7)
        {
          v10 = [objc_opt_class() _attachmentURLsRemovedByReplaceUpdate:v7];
          v11 = [v7 notificationRecord];
          v12 = [v11 identifier];

          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v13 = v10;
          v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v25;
            do
            {
              v17 = 0;
              do
              {
                if (*v25 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                [*(*(a1 + 40) + 16) removeReferenceToRepositoryURL:*(*(&v24 + 1) + 8 * v17++) forNotificationIdentifier:v12 bundleIdentifier:*(a1 + 48)];
              }

              while (v15 != v17);
              v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v15);
          }

LABEL_15:
          goto LABEL_16;
        }

        if (v8)
        {
          v13 = [v6 notificationRecord];
          v18 = [v13 identifier];
          v19 = [v21 containsObject:v18];

          if ((v19 & 1) == 0)
          {
            [*(a1 + 40) _queue_deleteAttachmentDataForNotificationRecord:v13 bundleIdentifier:*(a1 + 48)];
          }

          goto LABEL_15;
        }

LABEL_16:

        ++v5;
      }

      while (v5 != v4);
      v20 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      v4 = v20;
    }

    while (v20);
  }
}

- (void)_notificationIdentifiersForBundleIdentifier:(id)identifier replyOnQueue:(id)queue completionHandler:(id)handler
{
  handlerCopy = handler;
  notificationRepository = self->_notificationRepository;
  queueCopy = queue;
  identifierCopy = identifier;
  v12 = [(UNCNotificationRepository *)notificationRepository notificationRecordsForBundleIdentifier:identifierCopy];
  v13 = [objc_opt_class() _notificationIdentifiersForNotificationRecords:v12];
  v14 = [(UNCNotificationSchedulingService *)self->_notificationSchedulingService undeliveredNotificationRecordsForBundleIdentifier:identifierCopy];

  v15 = [objc_opt_class() _notificationIdentifiersForNotificationRecords:v14];
  v16 = [v13 arrayByAddingObjectsFromArray:v15];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __100__UNSAttachmentsService__notificationIdentifiersForBundleIdentifier_replyOnQueue_completionHandler___block_invoke;
  v19[3] = &unk_279E10508;
  v20 = v16;
  v21 = handlerCopy;
  v17 = v16;
  v18 = handlerCopy;
  dispatch_async(queueCopy, v19);
}

uint64_t __100__UNSAttachmentsService__notificationIdentifiersForBundleIdentifier_replyOnQueue_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

+ (id)_stagingDirectory
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = NSTemporaryDirectory();
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];

  return v4;
}

+ (id)_attachmentURLsRemovedByReplaceUpdate:(id)update
{
  updateCopy = update;
  notificationRecord = [updateCopy notificationRecord];
  attachments = [notificationRecord attachments];
  v6 = [attachments bs_mapNoNulls:&__block_literal_global_46];
  replacedNotificationRecord = [updateCopy replacedNotificationRecord];

  attachments2 = [replacedNotificationRecord attachments];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__UNSAttachmentsService__attachmentURLsRemovedByReplaceUpdate___block_invoke_2;
  v14[3] = &unk_279E10570;
  v15 = v6;
  v9 = v6;
  v10 = [attachments2 bs_mapNoNulls:v14];
  v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
  allObjects = [v11 allObjects];

  return allObjects;
}

void *__63__UNSAttachmentsService__attachmentURLsRemovedByReplaceUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 URL];
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

- (void)_queue_resolveAttachmentsForRequest:(uint64_t)a1 bundleIdentifier:(NSObject *)a2 fromLocalClientConnection:orFromServiceExtensionOfBundleProxy:continueOnFailure:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_270AA8000, a2, OS_LOG_TYPE_ERROR, "Hit error staging attachment, will roll back: error=%{public}@", &v2, 0xCu);
}

void __63__UNSAttachmentsService__thumbnailRepresentationsForGlyphData___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = *(*(*a2 + 8) + 40);
  OUTLINED_FUNCTION_1(&dword_270AA8000, a2, a3, "Could not generate thumbnail for request=%{public}@ with error=%{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)_queue_validatedRepositoryURLForNotificationAttachment:(NSObject *)a3 request:bundleIdentifier:fromLocalClientConnection:orFromServiceExtensionOfBundleProxy:error:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1(&dword_270AA8000, a2, a3, "Attachment claims to be in the repository for bundle but is not: attachment=%{public}@, bundleIdentifier=%@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end
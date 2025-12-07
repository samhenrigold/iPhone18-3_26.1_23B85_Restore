@interface DiagnosticExtensionController
- (DiagnosticExtensionController)initWithDestinationDirectory:(id)directory;
- (void)collectDEPayloadsWithIdentifier:(id)identifier diagnosticExtensions:(id)extensions queue:(id)queue reply:(id)reply;
- (void)collectDEPayloadsWithIdentifier:(id)identifier diagnosticExtensionsWithParameters:(id)parameters queue:(id)queue reply:(id)reply;
@end

@implementation DiagnosticExtensionController

- (DiagnosticExtensionController)initWithDestinationDirectory:(id)directory
{
  directoryCopy = directory;
  v14.receiver = self;
  v14.super_class = DiagnosticExtensionController;
  v6 = [(DiagnosticExtensionController *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_destinationRootDirectory, directory);
    v8 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v7->dateFormatter;
    v7->dateFormatter = v8;

    [(NSDateFormatter *)v7->dateFormatter setDateFormat:@"yyyy-MM-dd_HHmmss"];
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v11 = dispatch_queue_create("com.apple.autobugcapture.diagnosticExtension", v10);
    queue = v7->_queue;
    v7->_queue = v11;
  }

  return v7;
}

- (void)collectDEPayloadsWithIdentifier:(id)identifier diagnosticExtensions:(id)extensions queue:(id)queue reply:(id)reply
{
  selfCopy = self;
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  extensionsCopy = extensions;
  queueCopy = queue;
  replyCopy = reply;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = extensionsCopy;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * v17);
        null = [MEMORY[0x277CBEB68] null];
        [dictionary setObject:null forKeyedSubscript:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  [(DiagnosticExtensionController *)selfCopy collectDEPayloadsWithIdentifier:identifierCopy diagnosticExtensionsWithParameters:dictionary queue:queueCopy reply:replyCopy];
}

- (void)collectDEPayloadsWithIdentifier:(id)identifier diagnosticExtensionsWithParameters:(id)parameters queue:(id)queue reply:(id)reply
{
  v44 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  parametersCopy = parameters;
  queueCopy = queue;
  replyCopy = reply;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = [parametersCopy count];
  dateFormatter = self->dateFormatter;
  date = [MEMORY[0x277CBEAA8] date];
  v17 = [(NSDateFormatter *)dateFormatter stringFromDate:date];
  v18 = [identifierCopy stringByAppendingFormat:@"-%@", v17];

  v20 = diagextLogHandle(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [parametersCopy count];
    allKeys = [parametersCopy allKeys];
    *buf = 134218242;
    v41 = v21;
    v42 = 2112;
    v43 = allKeys;
    _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_DEFAULT, "Calling %ld DEs: %@", buf, 0x16u);
  }

  if (v36[3])
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __112__DiagnosticExtensionController_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke;
    v28[3] = &unk_278CF06D8;
    v28[4] = self;
    v29 = dictionary;
    v33 = v39;
    v30 = v18;
    v34 = &v35;
    v32 = replyCopy;
    v31 = queueCopy;
    [parametersCopy enumerateKeysAndObjectsUsingBlock:v28];
  }

  else
  {
    v24 = diagextLogHandle(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_DEFAULT, "List of DiagnosticExtensions to call was empty", buf, 2u);
    }

    if (replyCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __112__DiagnosticExtensionController_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_105;
      block[3] = &unk_278CEFF50;
      v27 = replyCopy;
      v26 = dictionary;
      dispatch_async(queueCopy, block);
    }
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(v39, 8);
}

void __112__DiagnosticExtensionController_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      isKindOfClass = v6;
      v9 = isKindOfClass;
    }

    else
    {
      v9 = 0;
    }

    v10 = diagextLogHandle(isKindOfClass);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v7;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_INFO, "Ready to call DE %@", buf, 0xCu);
    }

    v11 = *(*(a1 + 32) + 16);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __112__DiagnosticExtensionController_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_92;
    v19[3] = &unk_278CF06B0;
    v20 = v7;
    v12 = *(a1 + 40);
    v24 = *(a1 + 72);
    v13 = *(a1 + 48);
    v25 = *(a1 + 80);
    v18 = *(a1 + 32);
    v23 = *(a1 + 64);
    v14 = *(a1 + 56);
    *&v15 = v18;
    *(&v15 + 1) = v14;
    *&v16 = v12;
    *(&v16 + 1) = v13;
    v21 = v16;
    v22 = v15;
    v17 = v7;
    [DiagnosticExtensionCaller getAttachmentsFrom:v17 forBundleID:0 withParameters:v9 queue:v11 reply:v19];
  }
}

void __112__DiagnosticExtensionController_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_92(uint64_t a1, void *a2, void *a3)
{
  v105 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v81 = [MEMORY[0x277CBEB58] set];
  v8 = diagextLogHandle(v81);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      *buf = 138412546;
      v95 = v7;
      v96 = 2048;
      v97 = [v5 count];
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_INFO, "Reply for DE %@, with %ld attachments", buf, 0x16u);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v9)
  {
    *buf = 138412546;
    v95 = v7;
    v96 = 2112;
    v97 = v6;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_INFO, "Reply for DE %@, with error:%@", buf, 0x16u);
  }

  if ([v6 code] == 45)
  {
    v10 = diagextLogHandle(45);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v95 = v7;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "DE %@ is not available on this device. Marking as not required.", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CBEB68] null];
    [*(a1 + 40) setObject:v8 forKeyedSubscript:*(a1 + 32)];
    goto LABEL_10;
  }

LABEL_11:
  ++*(*(*(a1 + 80) + 8) + 24);
  v11 = [MEMORY[0x277CBEB58] set];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __112__DiagnosticExtensionController_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_94;
  aBlock[3] = &unk_278CF0688;
  v76 = v11;
  v92 = v76;
  v80 = _Block_copy(aBlock);
  v12 = [v5 count];
  v77 = v5;
  if (v12)
  {
    v13 = diagextLogHandle(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v5 count];
      *buf = 134218242;
      v95 = v14;
      v96 = 2112;
      v97 = v7;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_INFO, "Processing %ld attachments from %@", buf, 0x16u);
    }

    v73 = a1;
    v74 = v7;
    v75 = v6;

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v15 = v5;
    v16 = [v15 countByEnumeratingWithState:&v87 objects:v104 count:16];
    v83 = v16;
    v17 = 0;
    v18 = 0;
    if (v16)
    {
      v82 = *v88;
      v78 = v15;
      do
      {
        v19 = 0;
        do
        {
          if (*v88 != v82)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v87 + 1) + 8 * v19);
          v21 = diagextLogHandle(v16);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = [v20 deleteOnAttach];
            v23 = [v20 shouldCompress];
            v24 = [v20 modificationDate];
            v25 = [v20 filesize];
            *buf = 138413314;
            v95 = v20;
            v96 = 2112;
            v97 = v22;
            v98 = 2112;
            v99 = v23;
            v100 = 2112;
            v101 = v24;
            v102 = 2112;
            v103 = v25;
            _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_INFO, "Processing %@ (deleteOnAttach:%@, shouldCompress:%@, modificationDate:%@, fileSize:%@)", buf, 0x34u);
          }

          if (v17)
          {
            v26 = [v20 modificationDate];
            if (v26)
            {
              v27 = v26;
              v28 = [v17 modificationDate];

              if (v28)
              {
                v29 = [v17 modificationDate];
                v30 = [v20 modificationDate];
                v31 = [v29 compare:v30];

                if (v31 == -1)
                {
                  v32 = v20;

                  v17 = v32;
                }
              }
            }
          }

          else
          {
            v17 = v20;
          }

          v33 = [v20 path];

          if (v33)
          {
            if (v18)
            {
              v18 = 1;
            }

            else
            {
              v34 = [v20 deleteOnAttach];
              v18 = [v34 BOOLValue];
            }

            v35 = [v20 path];
            v36 = [v35 path];
            v37 = [v36 length];

            if (v37)
            {
              v80[2](v80, v20);
              v39 = [v35 path];
              [v81 addObject:v39];

              v41 = diagextLogHandle(v40);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                [v20 deleteOnAttach];
                v42 = v79 = v17;
                v43 = [v20 shouldCompress];
                v44 = [v20 modificationDate];
                v45 = [v20 filesize];
                *buf = 138413314;
                v95 = v20;
                v96 = 2112;
                v97 = v42;
                v98 = 2112;
                v99 = v43;
                v100 = 2112;
                v101 = v44;
                v102 = 2112;
                v103 = v45;
                _os_log_impl(&dword_241804000, v41, OS_LOG_TYPE_INFO, "Adding to archive: %@ (deleteOnAttach:%@, shouldCompress:%@, modificationDate:%@, fileSize:%@)", buf, 0x34u);

                v15 = v78;
                v17 = v79;
              }
            }

            else
            {
              v41 = diagextLogHandle(v38);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_241804000, v41, OS_LOG_TYPE_INFO, "Attachment did not have a path we could successfully determine.", buf, 2u);
              }
            }
          }

          ++v19;
        }

        while (v83 != v19);
        v16 = [v15 countByEnumeratingWithState:&v87 objects:v104 count:16];
        v83 = v16;
      }

      while (v16);
    }

    v46 = v18;

    v7 = v74;
    v6 = v75;
    a1 = v73;
  }

  else
  {
    v46 = 0;
  }

  v47 = [v81 count];
  if (v47)
  {
    v48 = diagextLogHandle(v47);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v95 = v81;
      _os_log_impl(&dword_241804000, v48, OS_LOG_TYPE_INFO, "Preparing to create archives with: %@", buf, 0xCu);
    }

    v49 = [*(a1 + 48) stringByAppendingFormat:@"-%@", *(a1 + 32)];
    v50 = [*(a1 + 56) destinationRootDirectory];
    v51 = [v50 stringByAppendingPathComponent:v49];

    v53 = diagextLogHandle(v52);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = [v81 count];
      *buf = 134218242;
      v95 = v54;
      v96 = 2112;
      v97 = v51;
      _os_log_impl(&dword_241804000, v53, OS_LOG_TYPE_DEFAULT, "Creating archive with %ld files at: %@", buf, 0x16u);
    }

    v55 = [v81 allObjects];
    v56 = [FileArchiver archiveWithPaths:v55 destinationDir:v51 deleteSource:v46 & 1];

    v57 = [v56 length];
    v58 = diagextLogHandle(v57);
    v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
    if (v57)
    {
      if (v59)
      {
        *buf = 138412290;
        v95 = v49;
        _os_log_impl(&dword_241804000, v58, OS_LOG_TYPE_DEFAULT, "Archive creation for %@ was successful.", buf, 0xCu);
      }

      v93 = v56;
      v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v93 count:1];
      [*(a1 + 40) setObject:v60 forKeyedSubscript:*(a1 + 32)];
    }

    else
    {
      if (v59)
      {
        *buf = 138412290;
        v95 = v49;
        _os_log_impl(&dword_241804000, v58, OS_LOG_TYPE_DEFAULT, "Archive creation for %@ failed.", buf, 0xCu);
      }

      [*(a1 + 40) setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:*(a1 + 32)];
    }
  }

  v61 = diagextLogHandle(v47);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    v62 = *(*(*(a1 + 80) + 8) + 24);
    v63 = *(*(*(a1 + 88) + 8) + 24);
    *buf = 134218240;
    v95 = v62;
    v96 = 2048;
    v97 = v63;
    _os_log_impl(&dword_241804000, v61, OS_LOG_TYPE_DEFAULT, "Received %ld DE results. (expecting %ld total)", buf, 0x16u);
  }

  v65 = *(*(*(a1 + 80) + 8) + 24);
  v66 = *(*(*(a1 + 88) + 8) + 24);
  if (v65 >= v66)
  {
    if (*(a1 + 72))
    {
      v67 = diagextLogHandle(v64);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        v68 = *(a1 + 40);
        *buf = 138412290;
        v95 = v68;
        _os_log_impl(&dword_241804000, v67, OS_LOG_TYPE_INFO, "Calling reply block with resultDict %@.", buf, 0xCu);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __112__DiagnosticExtensionController_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_101;
      block[3] = &unk_278CEFF50;
      v69 = *(a1 + 64);
      v86 = *(a1 + 72);
      v85 = *(a1 + 40);
      dispatch_async(v69, block);

      v65 = *(*(*(a1 + 80) + 8) + 24);
      v66 = *(*(*(a1 + 88) + 8) + 24);
    }

    if (v65 > v66)
    {
      v70 = diagextLogHandle(v64);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        v71 = *(*(*(a1 + 88) + 8) + 24);
        v72 = *(*(*(a1 + 80) + 8) + 24);
        *buf = 134218240;
        v95 = v71;
        v96 = 2048;
        v97 = v72;
        _os_log_impl(&dword_241804000, v70, OS_LOG_TYPE_ERROR, "How did we get more than %ld results??? (counted %ld)", buf, 0x16u);
      }
    }
  }
}

void __112__DiagnosticExtensionController_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_94(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0;
  v4 = [v3 sandboxExtensionHandleWithErrorOut:&v13];
  v5 = v13;
  v6 = v5;
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    v7 = diagextLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 path];
      v9 = [v8 path];
      v10 = [v6 localizedDescription];
      v11 = v10;
      v12 = @"Unknown";
      if (v10)
      {
        v12 = v10;
      }

      *buf = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "Could not consume extension handle for item with path '%@' due to error: %@", buf, 0x16u);
    }
  }
}

@end
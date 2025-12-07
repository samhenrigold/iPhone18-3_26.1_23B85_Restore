@interface DSArchiveService
- (DSArchiveServiceUnarchivingDelegate)unarchivingDelegate;
- (id)archiveItemsAtURLs:(id)ls toURL:(id)l options:(unint64_t)options compressionFormat:(unint64_t)format passphrase:(id)passphrase completionHandler:(id)handler;
- (id)archiveItemsWithURLs:(id)ls compressionFormat:(unint64_t)format destinationFolderURL:(id)l completionHandler:(id)handler;
- (id)archiveItemsWithURLs:(id)ls passphrase:(id)passphrase addToKeychain:(BOOL)keychain compressionFormat:(unint64_t)format destinationFolderURL:(id)l completionHandler:(id)handler;
- (id)unarchiveItemAtURL:(id)l passphrase:(id)passphrase destinationFolderURL:(id)rL completionHandler:(id)handler;
- (id)unarchiveItemAtURL:(id)l passphrases:(id)passphrases addToKeychain:(BOOL)keychain destinationFolderURL:(id)rL acceptedFormats:(unint64_t)formats completionHandler:(id)handler;
- (id)unarchiveItemAtURL:(id)l passphrases:(id)passphrases destinationFolderURL:(id)rL acceptedFormats:(unint64_t)formats completionHandler:(id)handler;
- (id)unarchiveItemAtURL:(id)l passphrases:(id)passphrases destinationFolderURL:(id)rL completionHandler:(id)handler;
- (id)unarchiveItemAtURL:(id)l toURL:(id)rL options:(unint64_t)options acceptedFormats:(unint64_t)formats passphrases:(id)passphrases completionHandler:(id)handler;
- (void)itemDescriptorsForItemAtURL:(id)l passphrase:(id)passphrase completionHandler:(id)handler;
- (void)itemDescriptorsForItemAtURL:(id)l passphrases:(id)passphrases completionHandler:(id)handler;
- (void)receiveArchivedItemsDescriptors:(id)descriptors placeholderName:(id)name placeholderTypeIdentifier:(id)identifier;
@end

@implementation DSArchiveService

- (void)itemDescriptorsForItemAtURL:(id)l passphrase:(id)passphrase completionHandler:(id)handler
{
  v12[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  passphraseCopy = passphrase;
  handlerCopy = handler;
  if (passphraseCopy)
  {
    v12[0] = passphraseCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  }

  else
  {
    v11 = 0;
  }

  [(DSArchiveService *)self itemDescriptorsForItemAtURL:lCopy passphrases:v11 completionHandler:handlerCopy];
  if (passphraseCopy)
  {
  }
}

- (void)itemDescriptorsForItemAtURL:(id)l passphrases:(id)passphrases completionHandler:(id)handler
{
  v24[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  passphrasesCopy = passphrases;
  handlerCopy = handler;
  v10 = archiveServiceConnection(0);
  [v10 resume];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __78__DSArchiveService_itemDescriptorsForItemAtURL_passphrases_completionHandler___block_invoke;
  v20[3] = &unk_1E877EB60;
  v11 = handlerCopy;
  v22 = v11;
  v12 = v10;
  v21 = v12;
  v13 = [v12 remoteObjectProxyWithErrorHandler:v20];
  if (lCopy)
  {
    v14 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:lCopy readonly:1];
    if (v14)
    {
      [v13 itemDescriptorsForItemWithURLWrapper:v14 passphrases:passphrasesCopy completionHandler:v11];
    }

    else
    {
      v16 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A998];
      v24[0] = lCopy;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v18 = [v16 errorWithDomain:*MEMORY[0x1E696A250] code:257 userInfo:v17];

      (*(v11 + 2))(v11, 0, v18);
      [v12 invalidate];
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    v15 = LogObj(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_impl(&dword_1E5674000, v15, OS_LOG_TYPE_ERROR, "itemDescriptorsForItemAtURL: url is nil", v19, 2u);
    }

    (*(v11 + 2))(v11, 0, v14);
    [v12 invalidate];
  }
}

void __78__DSArchiveService_itemDescriptorsForItemAtURL_passphrases_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

- (id)archiveItemsAtURLs:(id)ls toURL:(id)l options:(unint64_t)options compressionFormat:(unint64_t)format passphrase:(id)passphrase completionHandler:(id)handler
{
  v74[1] = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  lCopy = l;
  passphraseCopy = passphrase;
  handlerCopy = handler;
  v53 = lsCopy;
  v14 = [lsCopy count];
  if (lCopy && v14)
  {
    v66 = 0;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [lCopy path];
    v17 = [defaultManager fileExistsAtPath:path isDirectory:&v66];
    v18 = v66;

    if (v17 & v18)
    {
      v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v53, "count")}];
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v20 = v53;
      v21 = [v20 countByEnumeratingWithState:&v62 objects:v70 count:16];
      if (v21)
      {
        v22 = *v63;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v63 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v62 + 1) + 8 * i);
            v25 = objc_opt_class();
            v61 = 0;
            v26 = [v25 wrapperWithURL:v24 readonly:1 error:&v61];
            v27 = v61;
            if (!v26)
            {
              v42 = LogObj(0);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v72 = v27;
                _os_log_impl(&dword_1E5674000, v42, OS_LOG_TYPE_ERROR, "archiveItemsWithURLs: Couldn't get url wrapper: %@", buf, 0xCu);
              }

              handlerCopy[2](handlerCopy, 0, v27);
              goto LABEL_29;
            }

            [v19 addObject:v26];
          }

          v21 = [v20 countByEnumeratingWithState:&v62 objects:v70 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v20 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:lCopy readonly:0];
      if (v20)
      {
        v47 = archiveServiceConnection(0);
        [v47 resume];
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __100__DSArchiveService_archiveItemsAtURLs_toURL_options_compressionFormat_passphrase_completionHandler___block_invoke;
        v58[3] = &unk_1E877EB60;
        v28 = handlerCopy;
        v60 = v28;
        v29 = v47;
        v59 = v29;
        v49 = [v29 remoteObjectProxyWithErrorHandler:v58];
        v48 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.ArchiveService" name:@"BackgroundArchive"];
        v30 = objc_alloc(MEMORY[0x1E69C7548]);
        currentProcess = [MEMORY[0x1E69C7640] currentProcess];
        v67 = v48;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
        v33 = [v30 initWithExplanation:@"ArchiveServices archive operation" target:currentProcess attributes:v32];

        [v33 acquireWithInvalidationHandler:&__block_literal_global];
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __100__DSArchiveService_archiveItemsAtURLs_toURL_options_compressionFormat_passphrase_completionHandler___block_invoke_60;
        v54[3] = &unk_1E877EBA8;
        v57 = v28;
        v34 = v33;
        v55 = v34;
        v27 = v29;
        v56 = v27;
        v35 = [v49 archiveItemsWithURLWrappers:v19 toURLWrapper:v20 options:options compressionFormat:format passphrase:passphraseCopy completionHandler:v54];
      }

      else
      {
        v44 = MEMORY[0x1E696ABC0];
        v68 = *MEMORY[0x1E696A998];
        v69 = lCopy;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v27 = [v44 errorWithDomain:*MEMORY[0x1E696A250] code:257 userInfo:v45];

        v46 = LogObj(0);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v72 = v27;
          _os_log_impl(&dword_1E5674000, v46, OS_LOG_TYPE_ERROR, "archiveItemsAtURLs: Couldn't get url wrapper for destination: %@", buf, 0xCu);
        }

        handlerCopy[2](handlerCopy, 0, v27);
LABEL_29:
        v35 = 0;
      }
    }

    else
    {
      v39 = MEMORY[0x1E696ABC0];
      v73 = *MEMORY[0x1E696A998];
      v74[0] = lCopy;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:&v73 count:1];
      v19 = [v39 errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:v40];

      v41 = LogObj(0);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v72 = v19;
        _os_log_impl(&dword_1E5674000, v41, OS_LOG_TYPE_ERROR, "archiveItemsAtURLs: destination doesn't exist or isn't a directory: %@", buf, 0xCu);
      }

      v35 = 0;
      handlerCopy[2](handlerCopy, 0, v19);
    }
  }

  else
  {
    v36 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    if (![lsCopy count])
    {
      v37 = LogObj(0);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1E5674000, v37, OS_LOG_TYPE_ERROR, "archiveItemsWithURLs: no urls", buf, 2u);
      }
    }

    if (!lCopy)
    {
      v38 = LogObj(0);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1E5674000, v38, OS_LOG_TYPE_ERROR, "archiveItemsWithURLs: destination is nil", buf, 2u);
      }
    }

    handlerCopy[2](handlerCopy, 0, v36);

    v35 = 0;
  }

  return v35;
}

void __100__DSArchiveService_archiveItemsAtURLs_toURL_options_compressionFormat_passphrase_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void __100__DSArchiveService_archiveItemsAtURLs_toURL_options_compressionFormat_passphrase_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = LogObj(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1E5674000, v4, OS_LOG_TYPE_ERROR, "Archive Service archive assertion invalidated with error: %@", &v5, 0xCu);
  }
}

void __100__DSArchiveService_archiveItemsAtURLs_toURL_options_compressionFormat_passphrase_completionHandler___block_invoke_60(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) invalidate];
  [*(a1 + 40) invalidate];
}

- (id)unarchiveItemAtURL:(id)l toURL:(id)rL options:(unint64_t)options acceptedFormats:(unint64_t)formats passphrases:(id)passphrases completionHandler:(id)handler
{
  v73[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  passphrasesCopy = passphrases;
  handlerCopy = handler;
  unarchivingDelegate = [(DSArchiveService *)self unarchivingDelegate];

  if (unarchivingDelegate)
  {
    optionsCopy = options | 0x100000;
  }

  else
  {
    optionsCopy = options;
  }

  if (lCopy && rLCopy)
  {
    v66 = 0;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [rLCopy path];
    v20 = [defaultManager fileExistsAtPath:path isDirectory:&v66];
    v21 = v66;

    if (v20 & v21)
    {
      v65 = 0;
      v22 = [objc_opt_class() wrapperWithURL:lCopy readonly:0 error:&v65];
      v23 = v65;
      v24 = v23;
      v53 = v22;
      if (v22)
      {
        v51 = v23;
LABEL_23:
        v52 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:rLCopy readonly:0];
        if (v52)
        {
          if (unarchivingDelegate)
          {
            selfCopy = self;
          }

          else
          {
            selfCopy = 0;
          }

          v35 = archiveServiceConnection(selfCopy);
          [v35 resume];
          v61[0] = MEMORY[0x1E69E9820];
          v61[1] = 3221225472;
          v61[2] = __99__DSArchiveService_unarchiveItemAtURL_toURL_options_acceptedFormats_passphrases_completionHandler___block_invoke;
          v61[3] = &unk_1E877EB60;
          v36 = handlerCopy;
          v63 = v36;
          v37 = v35;
          v62 = v37;
          v49 = [v37 remoteObjectProxyWithErrorHandler:v61];
          v50 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.ArchiveService" name:@"BackgroundArchive"];
          v38 = objc_alloc(MEMORY[0x1E69C7548]);
          currentProcess = [MEMORY[0x1E69C7640] currentProcess];
          v67 = v50;
          v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
          v41 = [v38 initWithExplanation:@"ArchiveServices unarchive operation" target:currentProcess attributes:v40];

          [v41 acquireWithInvalidationHandler:&__block_literal_global_66];
          v56[0] = MEMORY[0x1E69E9820];
          v56[1] = 3221225472;
          v56[2] = __99__DSArchiveService_unarchiveItemAtURL_toURL_options_acceptedFormats_passphrases_completionHandler___block_invoke_67;
          v56[3] = &unk_1E877EBD0;
          v57 = lCopy;
          v60 = v36;
          v42 = v41;
          v58 = v42;
          v43 = v37;
          v59 = v43;
          v28 = [v49 unarchiveItemWithURLWrapper:v53 toURLWrapper:v52 options:optionsCopy passphrases:passphrasesCopy acceptedFormats:formats completionHandler:v56];
        }

        else
        {
          v44 = MEMORY[0x1E696ABC0];
          v68 = *MEMORY[0x1E696A998];
          v69 = rLCopy;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
          v43 = [v44 errorWithDomain:*MEMORY[0x1E696A250] code:257 userInfo:v45];

          v46 = LogObj(0);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v71 = v43;
            _os_log_impl(&dword_1E5674000, v46, OS_LOG_TYPE_ERROR, "unarchiveItemAtURL: Couldn't get url wrapper for destination: %@", buf, 0xCu);
          }

          v28 = 0;
          (*(handlerCopy + 2))(handlerCopy, 0, v43);
        }

        v33 = v51;
        goto LABEL_32;
      }

      v64 = v23;
      v53 = [objc_opt_class() wrapperWithURL:lCopy readonly:1 error:&v64];
      v51 = v64;

      if (v53)
      {
        goto LABEL_23;
      }

      v48 = LogObj(0);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v71 = v51;
        _os_log_impl(&dword_1E5674000, v48, OS_LOG_TYPE_ERROR, "unarchiveItemAtURL: Couldn't get url wrapper for item: %@", buf, 0xCu);
      }

      v33 = v51;
      (*(handlerCopy + 2))(handlerCopy, 0, v51);
    }

    else
    {
      v29 = MEMORY[0x1E696ABC0];
      v72 = *MEMORY[0x1E696A998];
      v73[0] = rLCopy;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];
      v31 = [v29 errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:v30];

      v32 = LogObj(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v71 = v31;
        _os_log_impl(&dword_1E5674000, v32, OS_LOG_TYPE_ERROR, "unarchiveItemAtURL: destination doesn't exist or isn't a directory: %@", buf, 0xCu);
      }

      v33 = v31;
      (*(handlerCopy + 2))(handlerCopy, 0, v31);
    }

    v28 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  if (!lCopy)
  {
    v26 = LogObj(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1E5674000, v26, OS_LOG_TYPE_ERROR, "unarchiveItemAtURL: url is nil", buf, 2u);
    }
  }

  if (!rLCopy)
  {
    v27 = LogObj(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1E5674000, v27, OS_LOG_TYPE_ERROR, "unarchiveItemAtURL: destination is nil", buf, 2u);
    }
  }

  (*(handlerCopy + 2))(handlerCopy, 0, v25);

  v28 = 0;
LABEL_33:

  return v28;
}

void __99__DSArchiveService_unarchiveItemAtURL_toURL_options_acceptedFormats_passphrases_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void __99__DSArchiveService_unarchiveItemAtURL_toURL_options_acceptedFormats_passphrases_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = LogObj(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1E5674000, v4, OS_LOG_TYPE_ERROR, "Archive Service unarchive assertion invalidated with error: %@", &v5, 0xCu);
  }
}

void __99__DSArchiveService_unarchiveItemAtURL_toURL_options_acceptedFormats_passphrases_completionHandler___block_invoke_67(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  if ([v7 isEqualToString:@"com.apple.desktopservices.ArchiveService"])
  {
    v8 = [v6 code];

    if (v8 == -1000)
    {
      v9 = MEMORY[0x1E695DF90];
      v10 = [v6 userInfo];
      v11 = [v9 dictionaryWithDictionary:v10];

      TCFURLInfo::LocalizedStringWithFileName(&v15, @"ArchiveEnterPassword", *(a1 + 32));
      [v11 setObject:v15.fString.fRef forKeyedSubscript:*MEMORY[0x1E696A598]];
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15.fString.fRef);
      v12 = MEMORY[0x1E696ABC0];
      v13 = [v6 domain];
      v14 = [v12 errorWithDomain:v13 code:objc_msgSend(v6 userInfo:{"code"), v11}];

      v6 = v14;
    }
  }

  else
  {
  }

  (*(*(a1 + 56) + 16))();
  [*(a1 + 40) invalidate];
  [*(a1 + 48) invalidate];
}

- (id)archiveItemsWithURLs:(id)ls compressionFormat:(unint64_t)format destinationFolderURL:(id)l completionHandler:(id)handler
{
  v6 = [(DSArchiveService *)self archiveItemsWithURLs:ls passphrase:0 addToKeychain:0 compressionFormat:format destinationFolderURL:l completionHandler:handler];

  return v6;
}

- (id)archiveItemsWithURLs:(id)ls passphrase:(id)passphrase addToKeychain:(BOOL)keychain compressionFormat:(unint64_t)format destinationFolderURL:(id)l completionHandler:(id)handler
{
  keychainCopy = keychain;
  v52 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  passphraseCopy = passphrase;
  lCopy = l;
  handlerCopy = handler;
  v32 = archiveServiceConnection(0);
  [v32 resume];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __123__DSArchiveService_archiveItemsWithURLs_passphrase_addToKeychain_compressionFormat_destinationFolderURL_completionHandler___block_invoke;
  v46[3] = &unk_1E877EB60;
  v13 = handlerCopy;
  v48 = v13;
  v14 = v32;
  v47 = v14;
  v35 = [v14 remoteObjectProxyWithErrorHandler:v46];
  v15 = [lsCopy count];
  if (lCopy && v15)
  {
    v30 = keychainCopy;
    formatCopy = format;
    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(lsCopy, "count")}];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v17 = lsCopy;
    v18 = [v17 countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v18)
    {
      v19 = *v43;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v42 + 1) + 8 * i);
          v22 = objc_opt_class();
          v41 = 0;
          v23 = [v22 wrapperWithURL:v21 readonly:1 error:&v41];
          v24 = v41;
          if (!v23)
          {
            v28 = LogObj(0);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v50 = v24;
              _os_log_impl(&dword_1E5674000, v28, OS_LOG_TYPE_ERROR, "archiveItemsWithURLs: Couldn't get url wrapper: %@", buf, 0xCu);
            }

            (*(v13 + 2))(v13, 0, 0, v24);
            [v14 invalidate];
            v25 = 0;
            goto LABEL_24;
          }

          [v16 addObject:v23];
        }

        v18 = [v17 countByEnumeratingWithState:&v42 objects:v51 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v17 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:lCopy readonly:0];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __123__DSArchiveService_archiveItemsWithURLs_passphrase_addToKeychain_compressionFormat_destinationFolderURL_completionHandler___block_invoke_72;
    v38[3] = &unk_1E877EBF8;
    v40 = v13;
    v39 = v14;
    v25 = [v35 archiveItemsWithURLWrappers:v16 passphrase:passphraseCopy addToKeychain:v30 compressionFormat:formatCopy destinationFolderURLWrapper:v17 usePlaceholder:0 completionHandler:v38];

    v24 = v40;
LABEL_24:
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    if (![lsCopy count])
    {
      v26 = LogObj(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1E5674000, v26, OS_LOG_TYPE_ERROR, "archiveItemsWithURLs: no urls", buf, 2u);
      }
    }

    if (!lCopy)
    {
      v27 = LogObj(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1E5674000, v27, OS_LOG_TYPE_ERROR, "archiveItemsWithURLs: destination is nil", buf, 2u);
      }
    }

    (*(v13 + 2))(v13, 0, 0, v16);
    [v14 invalidate];
    v25 = 0;
  }

  return v25;
}

void __123__DSArchiveService_archiveItemsWithURLs_passphrase_addToKeychain_compressionFormat_destinationFolderURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void __123__DSArchiveService_archiveItemsWithURLs_passphrase_addToKeychain_compressionFormat_destinationFolderURL_completionHandler___block_invoke_72(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 40);
  v10 = [v11 url];
  (*(v9 + 16))(v9, v10, v7, v8);

  [*(a1 + 32) invalidate];
}

- (id)unarchiveItemAtURL:(id)l passphrase:(id)passphrase destinationFolderURL:(id)rL completionHandler:(id)handler
{
  v17[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  passphraseCopy = passphrase;
  rLCopy = rL;
  handlerCopy = handler;
  if (passphraseCopy)
  {
    v17[0] = passphraseCopy;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(DSArchiveService *)self unarchiveItemAtURL:lCopy passphrases:v14 addToKeychain:0 destinationFolderURL:rLCopy acceptedFormats:1 completionHandler:handlerCopy];
  if (passphraseCopy)
  {
  }

  return v15;
}

- (id)unarchiveItemAtURL:(id)l passphrases:(id)passphrases destinationFolderURL:(id)rL completionHandler:(id)handler
{
  v6 = [(DSArchiveService *)self unarchiveItemAtURL:l passphrases:passphrases addToKeychain:0 destinationFolderURL:rL acceptedFormats:1 completionHandler:handler];

  return v6;
}

- (id)unarchiveItemAtURL:(id)l passphrases:(id)passphrases destinationFolderURL:(id)rL acceptedFormats:(unint64_t)formats completionHandler:(id)handler
{
  v7 = [(DSArchiveService *)self unarchiveItemAtURL:l passphrases:passphrases addToKeychain:0 destinationFolderURL:rL acceptedFormats:formats completionHandler:handler];

  return v7;
}

- (id)unarchiveItemAtURL:(id)l passphrases:(id)passphrases addToKeychain:(BOOL)keychain destinationFolderURL:(id)rL acceptedFormats:(unint64_t)formats completionHandler:(id)handler
{
  keychainCopy = keychain;
  v53 = *MEMORY[0x1E69E9840];
  lCopy = l;
  passphrasesCopy = passphrases;
  rLCopy = rL;
  handlerCopy = handler;
  unarchivingDelegate = [(DSArchiveService *)self unarchivingDelegate];

  if (unarchivingDelegate)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v36 = archiveServiceConnection(selfCopy);
  [v36 resume];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __120__DSArchiveService_unarchiveItemAtURL_passphrases_addToKeychain_destinationFolderURL_acceptedFormats_completionHandler___block_invoke;
  v46[3] = &unk_1E877EB60;
  v19 = handlerCopy;
  v48 = v19;
  v20 = v36;
  v47 = v20;
  v39 = [v20 remoteObjectProxyWithErrorHandler:v46];
  if (!lCopy || !rLCopy)
  {
    v24 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    if (!lCopy)
    {
      v25 = LogObj(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1E5674000, v25, OS_LOG_TYPE_ERROR, "unarchiveItemAtURL: url is nil", buf, 2u);
      }
    }

    if (!rLCopy)
    {
      v26 = LogObj(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1E5674000, v26, OS_LOG_TYPE_ERROR, "unarchiveItemAtURL: destination is nil", buf, 2u);
      }
    }

    (*(v19 + 2))(v19, 0, v24);
    [v20 invalidate];
    goto LABEL_17;
  }

  v45 = 0;
  v21 = [objc_opt_class() wrapperWithURL:lCopy readonly:0 error:&v45];
  v22 = v45;
  v23 = v22;
  if (!v21)
  {
    v44 = v22;
    v21 = [objc_opt_class() wrapperWithURL:lCopy readonly:1 error:&v44];
    v37 = v44;

    if (v21)
    {
      goto LABEL_19;
    }

    v34 = LogObj(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v52 = v37;
      _os_log_impl(&dword_1E5674000, v34, OS_LOG_TYPE_ERROR, "unarchiveItemAtURL: Couldn't get url wrapper for item: %@", buf, 0xCu);
    }

    v24 = v37;
    (*(v19 + 2))(v19, 0, v37);
    [v20 invalidate];
LABEL_17:
    v27 = 0;
    goto LABEL_25;
  }

  v37 = v22;
LABEL_19:
  v28 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:rLCopy readonly:0];
  if (v28)
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __120__DSArchiveService_unarchiveItemAtURL_passphrases_addToKeychain_destinationFolderURL_acceptedFormats_completionHandler___block_invoke_74;
    v40[3] = &unk_1E877EC20;
    v41 = lCopy;
    v43 = v19;
    v42 = v20;
    LOBYTE(v35) = 0;
    v27 = [v39 unarchiveItemWithURLWrapper:v21 passphrases:passphrasesCopy addToKeychain:keychainCopy destinationFolderURLWrapper:v28 acceptedFormats:formats exportsStreamingReceiver:unarchivingDelegate != 0 usePlaceholder:v35 completionHandler:v40];

    v29 = v41;
  }

  else
  {
    v30 = MEMORY[0x1E696ABC0];
    v49 = *MEMORY[0x1E696A998];
    v50 = rLCopy;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v29 = [v30 errorWithDomain:*MEMORY[0x1E696A250] code:257 userInfo:v31];

    v32 = LogObj(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v52 = v29;
      _os_log_impl(&dword_1E5674000, v32, OS_LOG_TYPE_ERROR, "unarchiveItemAtURL: Couldn't get url wrapper for destination: %@", buf, 0xCu);
    }

    (*(v19 + 2))(v19, 0, v29);
    [v20 invalidate];
    v27 = 0;
  }

  v24 = v37;
LABEL_25:

  return v27;
}

void __120__DSArchiveService_unarchiveItemAtURL_passphrases_addToKeychain_destinationFolderURL_acceptedFormats_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void __120__DSArchiveService_unarchiveItemAtURL_passphrases_addToKeychain_destinationFolderURL_acceptedFormats_completionHandler___block_invoke_74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  if ([v7 isEqualToString:@"com.apple.desktopservices.ArchiveService"])
  {
    v8 = [v6 code];

    if (v8 == -1000)
    {
      v9 = MEMORY[0x1E695DF90];
      v10 = [v6 userInfo];
      v11 = [v9 dictionaryWithDictionary:v10];

      TCFURLInfo::LocalizedStringWithFileName(&v16, @"ArchiveEnterPassword", *(a1 + 32));
      [v11 setObject:v16.fString.fRef forKeyedSubscript:*MEMORY[0x1E696A598]];
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v16.fString.fRef);
      v12 = MEMORY[0x1E696ABC0];
      v13 = [v6 domain];
      v14 = [v12 errorWithDomain:v13 code:objc_msgSend(v6 userInfo:{"code"), v11}];

      v6 = v14;
    }
  }

  else
  {
  }

  v15 = [v5 url];
  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) invalidate];
}

- (void)receiveArchivedItemsDescriptors:(id)descriptors placeholderName:(id)name placeholderTypeIdentifier:(id)identifier
{
  descriptorsCopy = descriptors;
  nameCopy = name;
  identifierCopy = identifier;
  unarchivingDelegate = [(DSArchiveService *)self unarchivingDelegate];
  if (objc_opt_respondsToSelector())
  {
    [unarchivingDelegate service:self didReceiveArchivedItemsDescriptors:descriptorsCopy placeholderName:nameCopy placeholderTypeIdentifier:identifierCopy];
  }

  else if (objc_opt_respondsToSelector())
  {
    [unarchivingDelegate service:self didReceiveArchivedItemsDescriptors:descriptorsCopy];
  }
}

- (DSArchiveServiceUnarchivingDelegate)unarchivingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_unarchivingDelegate);

  return WeakRetained;
}

@end
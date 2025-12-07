@interface SFCollaborationItemInspector
+ (id)_collaborationItemForFileURL:(id)l itemProvider:(id)provider activityItem:(id)item service:(id)service managedFileURL:(id)rL;
+ (id)_collaborationItemFromItemProvider:(id)provider forActivityItem:(id)item service:(id)service shouldInspectFiles:(BOOL)files managedFileURL:(id)l isURLProviderSupported:(BOOL)supported;
+ (id)inspectActivityItemValue:(id)value activityItem:(id)item service:(id)service shouldInspectFiles:(BOOL)files managedFileURL:(id)l isURLProviderSupported:(BOOL)supported;
@end

@implementation SFCollaborationItemInspector

+ (id)inspectActivityItemValue:(id)value activityItem:(id)item service:(id)service shouldInspectFiles:(BOOL)files managedFileURL:(id)l isURLProviderSupported:(BOOL)supported
{
  supportedCopy = supported;
  filesCopy = files;
  v38 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  itemCopy = item;
  serviceCopy = service;
  lCopy = l;
  v17 = share_sheet_log(lCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    *buf = 138740739;
    v31 = valueCopy;
    v32 = 2114;
    v33 = v19;
    v34 = 2117;
    v35 = itemCopy;
    v36 = 2112;
    v37 = v21;
    _os_log_impl(&dword_1A9662000, v17, OS_LOG_TYPE_DEFAULT, "Inspect activityItemValue:%{sensitive}@, activityItemValueType:%{public}@ activityItem:%{sensitive}@ activityItemType:%@", buf, 0x2Au);
  }

  if (!valueCopy)
  {
    valueCopy = itemCopy;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = valueCopy;
    if ([v22 hasItemConformingToTypeIdentifier:@"com.apple.group-activities.activity"])
    {
      v23 = 0;
      goto LABEL_17;
    }

    v26 = [SFCollaborationItemInspector _collaborationItemFromItemProvider:v22 forActivityItem:itemCopy service:serviceCopy shouldInspectFiles:filesCopy managedFileURL:lCopy isURLProviderSupported:supportedCopy];
  }

  else
  {
    if (!filesCopy)
    {
      v23 = 0;
      goto LABEL_20;
    }

    v22 = [SFCollaborationUtilities urlFromActivityItem:valueCopy allowsLoading:1];
    if ([v22 isFileURL])
    {
      v24 = [serviceCopy canShareFileURL:v22];
      if ((v24 & 1) == 0)
      {
        v25 = share_sheet_log(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [SFCollaborationItemInspector inspectActivityItemValue:v22 activityItem:v25 service:? shouldInspectFiles:? managedFileURL:? isURLProviderSupported:?];
        }

        v22 = 0;
      }
    }

    v26 = [SFCollaborationItemInspector _collaborationItemForFileURL:v22 itemProvider:0 activityItem:itemCopy service:serviceCopy managedFileURL:lCopy];
  }

  v23 = v26;
LABEL_17:

  if (v23)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __135__SFCollaborationItemInspector_inspectActivityItemValue_activityItem_service_shouldInspectFiles_managedFileURL_isURLProviderSupported___block_invoke;
    v28[3] = &unk_1E788CCB0;
    v23 = v23;
    v29 = v23;
    [SFCollaborationUtilities isShareOwnerOrAdminForCollaborationItem:v23 service:serviceCopy completionHandler:v28];
  }

LABEL_20:

  return v23;
}

void __135__SFCollaborationItemInspector_inspectActivityItemValue_activityItem_service_shouldInspectFiles_managedFileURL_isURLProviderSupported___block_invoke(uint64_t a1, int a2, unsigned int a3)
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a2 | a3];
  [*(a1 + 32) setCanAddPeople:v4];
}

+ (id)_collaborationItemForFileURL:(id)l itemProvider:(id)provider activityItem:(id)item service:(id)service managedFileURL:(id)rL
{
  v41 = *MEMORY[0x1E69E9840];
  lCopy = l;
  providerCopy = provider;
  itemCopy = item;
  serviceCopy = service;
  rLCopy = rL;
  isFileURL = [lCopy isFileURL];
  if (isFileURL)
  {
    v17 = gelato_sharing_log(isFileURL);
    v18 = os_signpost_id_make_with_pointer(v17, lCopy);

    v20 = gelato_sharing_log(v19);
    v21 = v20;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9662000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v18, "CollaborationItemForFileURL", "", &buf, 2u);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v39 = 0x2020000000;
    v40 = 1;
    isiWorkDocument = [lCopy isiWorkDocument];
    if ((isiWorkDocument & 1) == 0)
    {
      v23 = share_sheet_log(isiWorkDocument);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 138412290;
        v35 = lCopy;
        _os_log_impl(&dword_1A9662000, v23, OS_LOG_TYPE_DEFAULT, "request default share mode for URL:%@", v34, 0xCu);
      }

      isiWorkDocument = objc_opt_respondsToSelector();
      if (isiWorkDocument)
      {
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __110__SFCollaborationItemInspector__collaborationItemForFileURL_itemProvider_activityItem_service_managedFileURL___block_invoke;
        v31[3] = &unk_1E788CCD8;
        v32 = lCopy;
        p_buf = &buf;
        [serviceCopy requestDefaultShareModeCollaborationForURL:v32 completionHandler:v31];
      }
    }

    v24 = share_sheet_log(isiWorkDocument);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(&buf + 1) + 24))
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      *v34 = 138412546;
      v35 = lCopy;
      v36 = 2112;
      v37 = v25;
      _os_log_impl(&dword_1A9662000, v24, OS_LOG_TYPE_DEFAULT, "defaultShareModeCollaboration for fileURL:%@ = %@", v34, 0x16u);
    }

    v26 = [SFCollaborationItem collaborationItemForFileURL:lCopy itemProvider:providerCopy activityItem:itemCopy defaultCollaboration:*(*(&buf + 1) + 24) managedFileURL:rLCopy];
    v27 = gelato_sharing_log(v26);
    v28 = v27;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *v34 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9662000, v28, OS_SIGNPOST_INTERVAL_END, v18, "CollaborationItemForFileURL", "", v34, 2u);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v29 = share_sheet_log(isFileURL);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138739971;
      *(&buf + 4) = lCopy;
      _os_log_impl(&dword_1A9662000, v29, OS_LOG_TYPE_DEFAULT, "URL is not a fileURL: %{sensitive}@", &buf, 0xCu);
    }

    v26 = 0;
  }

  return v26;
}

void __110__SFCollaborationItemInspector__collaborationItemForFileURL_itemProvider_activityItem_service_managedFileURL___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = share_sheet_log(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __110__SFCollaborationItemInspector__collaborationItemForFileURL_itemProvider_activityItem_service_managedFileURL___block_invoke_cold_1(a1, v6, v7);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

+ (id)_collaborationItemFromItemProvider:(id)provider forActivityItem:(id)item service:(id)service shouldInspectFiles:(BOOL)files managedFileURL:(id)l isURLProviderSupported:(BOOL)supported
{
  supportedCopy = supported;
  filesCopy = files;
  v57 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  itemCopy = item;
  serviceCopy = service;
  lCopy = l;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v18 = gelato_sharing_log(v17);
  v19 = os_signpost_id_make_with_pointer(v18, providerCopy);

  v21 = gelato_sharing_log(v20);
  v22 = v21;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v19, "CollaborationItemForItemProvider", "", buf, 2u);
  }

  v23 = [SFCollaborationItem collaborationItemForItemProvider:providerCopy activityItem:itemCopy isURLProviderSupported:supportedCopy];
  v24 = v23;
  if (!v23 && filesCopy)
  {
    *buf = 0;
    v48 = buf;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__2;
    v51 = __Block_byref_object_dispose__2;
    v52 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__2;
    v45 = __Block_byref_object_dispose__2;
    v46 = 0;
    v25 = dispatch_semaphore_create(0);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __148__SFCollaborationItemInspector__collaborationItemFromItemProvider_forActivityItem_service_shouldInspectFiles_managedFileURL_isURLProviderSupported___block_invoke;
    v37[3] = &unk_1E788CD00;
    v39 = buf;
    v40 = &v41;
    v26 = v25;
    v38 = v26;
    [providerCopy loadFileURLRequiringOpenInPlace:1 completionHandler:v37];
    v27 = v26;
    v28 = dispatch_time(0, 2000000000);
    v29 = dispatch_semaphore_wait(v27, v28);

    if (v29)
    {
      __148__SFCollaborationItemInspector__collaborationItemFromItemProvider_forActivityItem_service_shouldInspectFiles_managedFileURL_isURLProviderSupported___block_invoke_2(v30);
    }

    v31 = *(v48 + 5);
    if (v31)
    {
      v24 = [SFCollaborationItemInspector _collaborationItemForFileURL:v31 itemProvider:providerCopy activityItem:itemCopy service:serviceCopy managedFileURL:lCopy];
    }

    else
    {
      v32 = share_sheet_log(v30);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v42[5];
        *v53 = 138412546;
        v54 = providerCopy;
        v55 = 2112;
        v56 = v33;
        _os_log_impl(&dword_1A9662000, v32, OS_LOG_TYPE_DEFAULT, "Couldn't load in-place file URL for Collaboration Item Provider:%@ : %@", v53, 0x16u);
      }

      v24 = 0;
    }

    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(buf, 8);
  }

  v34 = gelato_sharing_log(v23);
  v35 = v34;
  if (v19 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v34))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v35, OS_SIGNPOST_INTERVAL_END, v19, "CollaborationItemForItemProvider", "", buf, 2u);
  }

  return v24;
}

void __148__SFCollaborationItemInspector__collaborationItemFromItemProvider_forActivityItem_service_shouldInspectFiles_managedFileURL_isURLProviderSupported___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v11 = a2;
  if ([v11 isFileURL])
  {
    v7 = v11;
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
  v10 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __148__SFCollaborationItemInspector__collaborationItemFromItemProvider_forActivityItem_service_shouldInspectFiles_managedFileURL_isURLProviderSupported___block_invoke_2(uint64_t a1)
{
  v1 = share_sheet_log(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __148__SFCollaborationItemInspector__collaborationItemFromItemProvider_forActivityItem_service_shouldInspectFiles_managedFileURL_isURLProviderSupported___block_invoke_2_cold_1(v1);
  }
}

+ (void)inspectActivityItemValue:(uint64_t)a1 activityItem:(NSObject *)a2 service:shouldInspectFiles:managedFileURL:isURLProviderSupported:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "activityItemURL:%{private}@ is not shareable by client.", &v2, 0xCu);
}

void __110__SFCollaborationItemInspector__collaborationItemForFileURL_itemProvider_activityItem_service_managedFileURL___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1A9662000, log, OS_LOG_TYPE_ERROR, "Failed to request default share mode for fileURL:%@ error:%@", &v4, 0x16u);
}

void __148__SFCollaborationItemInspector__collaborationItemFromItemProvider_forActivityItem_service_shouldInspectFiles_managedFileURL_isURLProviderSupported___block_invoke_2_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 134217984;
  v2 = 0x4000000000000000;
  _os_log_error_impl(&dword_1A9662000, log, OS_LOG_TYPE_ERROR, "Could not load URL from the item provider for collaboration even after waiting for %.1f seconds.", &v1, 0xCu);
}

@end
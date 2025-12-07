@interface SYDocumentWorkflowsServiceHandle
- (SYDocumentWorkflowsServiceHandle)initWithRepository:(id)repository;
- (id)_createOpenLastModifiedDocumentImpl;
- (id)_fallbackUserActivityForDocumentWithAttributes:(id)attributes;
- (void)fetchUserActivityForDocumentIndexKey:(id)key completion:(id)completion;
- (void)hasLastModifiedDocument:(id)document completion:(id)completion;
- (void)hasOriginalDocumentForFileAtURL:(id)l withAttributes:(id)attributes completion:(id)completion;
- (void)openLastModifiedDocument:(id)document completion:(id)completion;
- (void)returnToSenderDocument:(id)document withAttributes:(id)attributes shouldCreateNewMessage:(BOOL)message completion:(id)completion;
- (void)saveUserActivity:(id)activity forDocumentIndexKey:(id)key sourceBundleIdentifier:(id)identifier completion:(id)completion;
- (void)unlinkDocumentsWithRelatedUniqueIdentifiers:(id)identifiers completion:(id)completion;
- (void)updateLinkedDocumentsWithCompletion:(id)completion;
@end

@implementation SYDocumentWorkflowsServiceHandle

- (SYDocumentWorkflowsServiceHandle)initWithRepository:(id)repository
{
  repositoryCopy = repository;
  v9.receiver = self;
  v9.super_class = SYDocumentWorkflowsServiceHandle;
  v6 = [(SYDocumentWorkflowsServiceHandle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_repository, repository);
  }

  return v7;
}

- (void)fetchUserActivityForDocumentIndexKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__SYDocumentWorkflowsServiceHandle_fetchUserActivityForDocumentIndexKey_completion___block_invoke;
  v15[3] = &unk_27856BEF0;
  v8 = completionCopy;
  v16 = v8;
  v9 = MEMORY[0x22AA6A360](v15);
  v14 = 0;
  v10 = [(SYDocumentWorkflowsServiceHandle *)self _fetchUserActivityWithRelatedUniqueIdentifier:keyCopy error:&v14];
  v11 = v14;
  if (v10)
  {
    v12 = [[SYUserActivityWrapper alloc] initWithUserActivity:v10];
    (v9)[2](v9, v12, 0);
  }

  else
  {
    v13 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SYDocumentWorkflowsServiceHandle fetchUserActivityForDocumentIndexKey:completion:];
    }

    (v9)[2](v9, 0, v11);
  }
}

uint64_t __84__SYDocumentWorkflowsServiceHandle_fetchUserActivityForDocumentIndexKey_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)saveUserActivity:(id)activity forDocumentIndexKey:(id)key sourceBundleIdentifier:(id)identifier completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __107__SYDocumentWorkflowsServiceHandle_saveUserActivity_forDocumentIndexKey_sourceBundleIdentifier_completion___block_invoke;
  v22[3] = &unk_27856B738;
  v12 = completionCopy;
  v23 = v12;
  identifierCopy = identifier;
  activityCopy = activity;
  v15 = MEMORY[0x22AA6A360](v22);
  repository = self->_repository;
  userActivity = [activityCopy userActivity];

  v21 = 0;
  v18 = [(SYDocumentWorkflowsRepository *)repository saveUserActivity:userActivity forRelatedUniqueIdentifier:keyCopy sourceBundleIdentifier:identifierCopy error:&v21];

  v19 = v21;
  if ((v18 & 1) == 0)
  {
    v20 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SYDocumentWorkflowsServiceHandle saveUserActivity:forDocumentIndexKey:sourceBundleIdentifier:completion:];
    }
  }

  (v15)[2](v15, v18, v19);
}

uint64_t __107__SYDocumentWorkflowsServiceHandle_saveUserActivity_forDocumentIndexKey_sourceBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)returnToSenderDocument:(id)document withAttributes:(id)attributes shouldCreateNewMessage:(BOOL)message completion:(id)completion
{
  messageCopy = message;
  v55[1] = *MEMORY[0x277D85DE8];
  documentCopy = document;
  attributesCopy = attributes;
  completionCopy = completion;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __108__SYDocumentWorkflowsServiceHandle_returnToSenderDocument_withAttributes_shouldCreateNewMessage_completion___block_invoke;
  v46[3] = &unk_27856B738;
  v13 = completionCopy;
  v47 = v13;
  v14 = MEMORY[0x22AA6A360](v46);
  sourceBundleIdentifier = [attributesCopy sourceBundleIdentifier];
  if ([sourceBundleIdentifier length])
  {
    v45 = 0;
    v16 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:sourceBundleIdentifier allowPlaceholder:1 error:&v45];
    v17 = v45;
    v18 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    v19 = v18;
    if (!v16)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [SYDocumentWorkflowsServiceHandle returnToSenderDocument:withAttributes:shouldCreateNewMessage:completion:];
      }

      (v14)[2](v14, 0, v17);
      goto LABEL_26;
    }

    v37 = messageCopy;
    v39 = documentCopy;
    v20 = v18;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      sender = [attributesCopy sender];
      *buf = 138412802;
      v49 = sourceBundleIdentifier;
      v50 = 2112;
      v51 = v39;
      v52 = 2112;
      v53 = sender;
      _os_log_impl(&dword_225901000, v20, OS_LOG_TYPE_DEFAULT, "Found record for bundle identifier: %@, to return document: %@, to sender: %@", buf, 0x20u);
    }

    indexKey = [attributesCopy indexKey];
    v44 = 0;
    v23 = [(SYDocumentWorkflowsServiceHandle *)self _fetchUserActivityWithRelatedUniqueIdentifier:indexKey error:&v44];
    v24 = v44;

    v38 = v24;
    if (v23 || !v24)
    {
      documentCopy = v39;
      if (v23)
      {
        v28 = v23;
        goto LABEL_17;
      }
    }

    else
    {
      v25 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      documentCopy = v39;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [SYDocumentWorkflowsServiceHandle returnToSenderDocument:attributesCopy withAttributes:v38 shouldCreateNewMessage:v25 completion:?];
      }
    }

    v28 = [(SYDocumentWorkflowsServiceHandle *)self _fallbackUserActivityForDocumentWithAttributes:attributesCopy];
    if (!v28)
    {
      v34 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [SYDocumentWorkflowsServiceHandle returnToSenderDocument:attributesCopy withAttributes:v34 shouldCreateNewMessage:? completion:?];
      }

      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __108__SYDocumentWorkflowsServiceHandle_returnToSenderDocument_withAttributes_shouldCreateNewMessage_completion___block_invoke_10;
      v42[3] = &unk_27856BFE0;
      v42[4] = sourceBundleIdentifier;
      v43 = v14;
      [defaultWorkspace openApplicationWithBundleIdentifier:sourceBundleIdentifier configuration:0 completionHandler:v42];

      goto LABEL_25;
    }

LABEL_17:
    v36 = v23;
    v29 = [MEMORY[0x277CC1EF0] _syReturnToSenderActivityWithOriginalUserActivity:v28];
    v30 = v29;
    if (documentCopy)
    {
      [(NSUserActivity *)v29 set_syDocument:documentCopy];
    }

    [v30 set_syShouldCreateNewMessage:v37];
    v31 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      _syLoggableDescription = [v30 _syLoggableDescription];
      *buf = 138412546;
      v49 = sourceBundleIdentifier;
      v50 = 2112;
      v51 = _syLoggableDescription;
      _os_log_impl(&dword_225901000, v31, OS_LOG_TYPE_DEFAULT, "Launching app: %@, with user activity: %@", buf, 0x16u);

      documentCopy = v39;
    }

    defaultWorkspace2 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __108__SYDocumentWorkflowsServiceHandle_returnToSenderDocument_withAttributes_shouldCreateNewMessage_completion___block_invoke_12;
    v40[3] = &unk_27856BFE0;
    v40[4] = sourceBundleIdentifier;
    v41 = v14;
    [defaultWorkspace2 openUserActivity:v30 usingApplicationRecord:v16 configuration:0 completionHandler:v40];

    v23 = v36;
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v26 = MEMORY[0x277CCA9B8];
  v54 = *MEMORY[0x277CCA450];
  v55[0] = @"document source bundle identifier is empty.";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
  v17 = [v26 errorWithDomain:@"com.apple.synapse" code:-129 userInfo:v27];

  (v14)[2](v14, 0, v17);
LABEL_27:
}

uint64_t __108__SYDocumentWorkflowsServiceHandle_returnToSenderDocument_withAttributes_shouldCreateNewMessage_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __108__SYDocumentWorkflowsServiceHandle_returnToSenderDocument_withAttributes_shouldCreateNewMessage_completion___block_invoke_10(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __108__SYDocumentWorkflowsServiceHandle_returnToSenderDocument_withAttributes_shouldCreateNewMessage_completion___block_invoke_10_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __108__SYDocumentWorkflowsServiceHandle_returnToSenderDocument_withAttributes_shouldCreateNewMessage_completion___block_invoke_12(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __108__SYDocumentWorkflowsServiceHandle_returnToSenderDocument_withAttributes_shouldCreateNewMessage_completion___block_invoke_10_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_fallbackUserActivityForDocumentWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  sourceBundleIdentifier = [attributesCopy sourceBundleIdentifier];
  v6 = SYIsMailBundleId(sourceBundleIdentifier, v5);

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CC1EF0]) initWithActivityType:@"com.apple.mail.message"];
    indexKey = [attributesCopy indexKey];
    [v7 set_syRelatedUniqueIdentifier:indexKey];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)hasOriginalDocumentForFileAtURL:(id)l withAttributes:(id)attributes completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
  attributesCopy = attributes;
  completionCopy = completion;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __94__SYDocumentWorkflowsServiceHandle_hasOriginalDocumentForFileAtURL_withAttributes_completion___block_invoke;
  v26[3] = &unk_27856B8D8;
  v10 = completionCopy;
  v27 = v10;
  v11 = MEMORY[0x22AA6A360](v26);
  v12 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    path = [lCopy path];
    *buf = 138412290;
    v30 = path;
    _os_log_impl(&dword_225901000, v12, OS_LOG_TYPE_DEFAULT, "Asking for original document of file at url: %@", buf, 0xCu);
  }

  path2 = [lCopy path];
  if (SYPathIsInUserLibrarySubdirectory(path2, @"Containers/com.apple.mail/Data/Library/Mail Downloads/"))
  {
    goto LABEL_7;
  }

  path3 = [lCopy path];
  if (([path3 hasPrefix:@"/private/var/mobile/tmp/com.apple.email.maild/"] & 1) != 0 || objc_msgSend(path3, "hasPrefix:", @"/var/mobile/tmp/com.apple.email.maild/"))
  {

LABEL_7:
    goto LABEL_8;
  }

  path4 = [lCopy path];
  v19 = SYPathIsInUserLibrarySubdirectory(path4, @"Mail/AttachmentData/");

  if ((v19 & 1) == 0)
  {
    indexKey = [attributesCopy indexKey];
    v28 = indexKey;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __94__SYDocumentWorkflowsServiceHandle_hasOriginalDocumentForFileAtURL_withAttributes_completion___block_invoke_18;
    v22[3] = &unk_27856BE50;
    v23 = lCopy;
    v24 = attributesCopy;
    v25 = v11;
    [SYDocumentAttributesFetchRequest fetchAttributesForDocumentsWithIndexKeys:v21 completion:v22];

    goto LABEL_11;
  }

LABEL_8:
  v16 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    path5 = [lCopy path];
    *buf = 138412290;
    v30 = path5;
    _os_log_impl(&dword_225901000, v16, OS_LOG_TYPE_DEFAULT, "Requested original of document considered the original itself, url: %@", buf, 0xCu);
  }

  v11[2](v11, 0, 0);
LABEL_11:
}

uint64_t __94__SYDocumentWorkflowsServiceHandle_hasOriginalDocumentForFileAtURL_withAttributes_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __94__SYDocumentWorkflowsServiceHandle_hasOriginalDocumentForFileAtURL_withAttributes_completion___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) path];
  v8 = [v7 hasPrefix:@"/var/tmp/com.apple.email.maild/"];

  v9 = [*(a1 + 40) originalFileURL];
  v10 = [v9 path];
  v11 = [v10 hasPrefix:@"/var/mobile/Library/Mail/AttachmentData/"];

  v12 = v8 & v11;
  v13 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 40) indexKey];
    v15 = [v5 firstObject];
    v16 = [v15 originalFileURL];
    v17 = [v16 path];
    v19 = 138412802;
    v20 = v14;
    v21 = 2112;
    v22 = v17;
    v23 = 1024;
    v24 = v12;
    _os_log_impl(&dword_225901000, v13, OS_LOG_TYPE_DEFAULT, "Original document version of file with id: %@, found at: %@, suppressed: %{BOOL}d", &v19, 0x1Cu);
  }

  if (v12)
  {
    v18 = 0;
  }

  else
  {
    v18 = [v5 firstObject];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)hasLastModifiedDocument:(id)document completion:(id)completion
{
  documentCopy = document;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__SYDocumentWorkflowsServiceHandle_hasLastModifiedDocument_completion___block_invoke;
  v14[3] = &unk_27856C120;
  v15 = completionCopy;
  v7 = completionCopy;
  v8 = MEMORY[0x22AA6A360](v14);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__SYDocumentWorkflowsServiceHandle_hasLastModifiedDocument_completion___block_invoke_2;
  v11[3] = &unk_27856C0D0;
  v12 = documentCopy;
  v13 = v8;
  v9 = documentCopy;
  v10 = v8;
  [SYLastModifiedDocumentFetchRequest fetchLastModifiedDocument:v9 completion:v11];
}

uint64_t __71__SYDocumentWorkflowsServiceHandle_hasLastModifiedDocument_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __71__SYDocumentWorkflowsServiceHandle_hasLastModifiedDocument_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    a3;
    v6 = [v5 fileURL];
    v7 = [v6 path];
    v8 = SYPathIsInUserLibrarySubdirectory(v7, @"Containers/com.apple.mail/Data/Library/Mail Downloads/");

    v9 = [v5 fileURL];
    v10 = [v9 path];
    v11 = SYPathIsInUserLibrarySubdirectory(v10, @"Containers/com.apple.Preview/Data/tmp/");

    v12 = v8 | v11;
    v13 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = [v5 fileURL];
      v16 = [v15 path];
      v17 = 138412802;
      v18 = v14;
      v19 = 2112;
      v20 = v16;
      v21 = 1024;
      v22 = v12 & 1;
      _os_log_impl(&dword_225901000, v13, OS_LOG_TYPE_DEFAULT, "Last document version of file with id: %@, found at: %@, suppressed: %{BOOL}d", &v17, 0x1Cu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, a3);
  }
}

- (void)openLastModifiedDocument:(id)document completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__SYDocumentWorkflowsServiceHandle_openLastModifiedDocument_completion___block_invoke;
  v13[3] = &unk_27856B738;
  v14 = completionCopy;
  v7 = completionCopy;
  documentCopy = document;
  v9 = MEMORY[0x22AA6A360](v13);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__SYDocumentWorkflowsServiceHandle_openLastModifiedDocument_completion___block_invoke_2;
  v11[3] = &unk_27856C0D0;
  v11[4] = self;
  v12 = v9;
  v10 = v9;
  [SYLastModifiedDocumentFetchRequest fetchLastModifiedDocument:documentCopy completion:v11];
}

uint64_t __72__SYDocumentWorkflowsServiceHandle_openLastModifiedDocument_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __72__SYDocumentWorkflowsServiceHandle_openLastModifiedDocument_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) _createOpenLastModifiedDocumentImpl];
    v5 = [v3 fileURL];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __72__SYDocumentWorkflowsServiceHandle_openLastModifiedDocument_completion___block_invoke_3;
    v6[3] = &unk_27856B738;
    v7 = *(a1 + 40);
    [v4 revealDocumentAtURL:v5 completion:v6];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_createOpenLastModifiedDocumentImpl
{
  v2 = objc_alloc_init(SYOpenLastModifiedDocumentImplUIKit);

  return v2;
}

- (void)updateLinkedDocumentsWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke;
  v9[3] = &unk_27856B738;
  v10 = completionCopy;
  v4 = completionCopy;
  v5 = MEMORY[0x22AA6A360](v9);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke_2;
  v7[3] = &unk_27856BF68;
  v8 = v5;
  v6 = v5;
  [SYDocumentFetchRequest fetchAllDocumentsMatchingAnyIndexIdWithCompletion:v7];
}

uint64_t __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = [v5 count];
    _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_DEFAULT, "Found %ld linked document(s) matching any index key", buf, 0xCu);
  }

  if (v5 && [v5 count])
  {
    v8 = [MEMORY[0x277CBEB58] set];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke_31;
    v18[3] = &unk_27856C760;
    v9 = v8;
    v19 = v9;
    [v5 enumerateObjectsUsingBlock:v18];
    v10 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 count];
      *buf = 134218242;
      v21 = v11;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_225901000, v10, OS_LOG_TYPE_DEFAULT, "Found %ld linked document(s) with index keys: %@", buf, 0x16u);
    }

    v12 = [v9 allObjects];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke_33;
    v14[3] = &unk_27856C788;
    v15 = v9;
    v17 = *(a1 + 32);
    v16 = v5;
    v13 = v9;
    [SYDocumentAttributesFetchRequest fetchAttributesForDocumentsWithIndexKeys:v12 completion:v14];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke_31(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 documentId];
  [v2 addObject:v3];
}

void __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v26 = v6;
    v33 = [*(a1 + 32) mutableCopy];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v27 = v5;
    obj = v5;
    v31 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    v8 = 0;
    if (v31)
    {
      v29 = *v42;
      v9 = 1;
      v30 = a1;
      do
      {
        v10 = 0;
        do
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v32 = v10;
          v34 = *(*(&v41 + 1) + 8 * v10);
          v11 = [v34 indexKey];
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v35 = *(a1 + 40);
          v12 = [v35 countByEnumeratingWithState:&v37 objects:v47 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v38;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v38 != v14)
                {
                  objc_enumerationMutation(v35);
                }

                v16 = *(*(&v37 + 1) + 8 * i);
                v17 = [v16 documentId];
                v18 = [v17 isEqualToString:v11];

                if (v18)
                {
                  v19 = os_log_create("com.apple.synapse", "DocumentWorkflows");
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    v20 = [v16 fileURL];
                    v21 = [v20 path];
                    *buf = 138412290;
                    v46 = v21;
                    _os_log_impl(&dword_225901000, v19, OS_LOG_TYPE_DEFAULT, "Linking: %@", buf, 0xCu);
                  }

                  v22 = [v16 fileURL];
                  v36 = 0;
                  v23 = [v34 saveToFileURL:v22 error:&v36];

                  v8 += v23;
                  v9 &= v23;
                  [v33 removeObject:v11];
                }
              }

              v13 = [v35 countByEnumeratingWithState:&v37 objects:v47 count:16];
            }

            while (v13);
          }

          v10 = v32 + 1;
          a1 = v30;
        }

        while (v32 + 1 != v31);
        v31 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v31);
    }

    v25 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v46 = v8;
      _os_log_impl(&dword_225901000, v25, OS_LOG_TYPE_DEFAULT, "Linked %ld documents.", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
    v7 = v26;
    v5 = v27;
  }

  else
  {
    v24 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke_33_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)unlinkDocumentsWithRelatedUniqueIdentifiers:(id)identifiers completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  completionCopy = completion;
  v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = identifiersCopy;
    _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_DEFAULT, "Unlinking documents with ids: %{public}@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__SYDocumentWorkflowsServiceHandle_unlinkDocumentsWithRelatedUniqueIdentifiers_completion___block_invoke;
  v15[3] = &unk_27856B738;
  v16 = completionCopy;
  v8 = completionCopy;
  v9 = MEMORY[0x22AA6A360](v15);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__SYDocumentWorkflowsServiceHandle_unlinkDocumentsWithRelatedUniqueIdentifiers_completion___block_invoke_2;
  v12[3] = &unk_27856C270;
  v13 = identifiersCopy;
  v14 = v9;
  v10 = v9;
  v11 = identifiersCopy;
  [SYDocumentFetchRequest fetchDocumentsWithIndexIds:v11 completion:v12];
}

uint64_t __91__SYDocumentWorkflowsServiceHandle_unlinkDocumentsWithRelatedUniqueIdentifiers_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __91__SYDocumentWorkflowsServiceHandle_unlinkDocumentsWithRelatedUniqueIdentifiers_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  v8 = v7;
  if (v5)
  {
    v33 = v6;
    v9 = v7;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 count];
      v11 = *(a1 + 32);
      *buf = 134218242;
      v43 = v10;
      v44 = 2114;
      v45 = v11;
      _os_log_impl(&dword_225901000, v9, OS_LOG_TYPE_DEFAULT, "Found %ld documents to unlink for ids: %{public}@", buf, 0x16u);
    }

    v32 = a1;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v34 = v5;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v38;
      v17 = "com.apple.synapse";
      v18 = "DocumentWorkflows";
      v19 = 0x27856A000uLL;
      do
      {
        v20 = 0;
        v35 = v14;
        do
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v21 = [*(*(&v37 + 1) + 8 * v20) fileURL];
          v22 = os_log_create(v17, v18);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            [v21 path];
            v23 = v16;
            v24 = v19;
            v25 = v18;
            v26 = v17;
            v28 = v27 = v12;
            *buf = 138477827;
            v43 = v28;
            _os_log_impl(&dword_225901000, v22, OS_LOG_TYPE_DEFAULT, "Unlinking: %{private}@", buf, 0xCu);

            v12 = v27;
            v17 = v26;
            v18 = v25;
            v19 = v24;
            v16 = v23;
            v14 = v35;
          }

          v29 = *(v19 + 4048);
          v36 = 0;
          v15 += [v29 _removeDocumentAttributesForFileAtURL:v21 keepDocumentRelatedUniqueIdentifierKey:1 error:&v36];

          ++v20;
        }

        while (v14 != v20);
        v14 = [v12 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    v30 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v12 count];
      *buf = 134218240;
      v43 = v15;
      v44 = 2048;
      v45 = v31;
      _os_log_impl(&dword_225901000, v30, OS_LOG_TYPE_DEFAULT, "Unlinked %ld/%ld documents.", buf, 0x16u);
    }

    [v12 count];
    (*(*(v32 + 40) + 16))();
    v6 = v33;
    v5 = v34;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke_33_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchUserActivityForDocumentIndexKey:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_3(&dword_225901000, v0, v1, "Unable to fetch user activity for index key: %@, error: %@");
}

- (void)saveUserActivity:forDocumentIndexKey:sourceBundleIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_3(&dword_225901000, v0, v1, "Unable to save user activity for document index key: %@, error: %@");
}

- (void)returnToSenderDocument:(NSObject *)a3 withAttributes:shouldCreateNewMessage:completion:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 indexKey];
  OUTLINED_FUNCTION_1_1();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_225901000, a3, OS_LOG_TYPE_ERROR, "Unable to fetch original user activity for index key: %@, error: %@", v6, 0x16u);
}

- (void)returnToSenderDocument:(void *)a1 withAttributes:(NSObject *)a2 shouldCreateNewMessage:completion:.cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 indexKey];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Unable to find original user activity for document with index key: %@", v4, 0xCu);
}

- (void)returnToSenderDocument:withAttributes:shouldCreateNewMessage:completion:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_3(&dword_225901000, v0, v1, "Unable to find record for bundle identifier: %@, to return document back to sender, error: %@");
}

void __108__SYDocumentWorkflowsServiceHandle_returnToSenderDocument_withAttributes_shouldCreateNewMessage_completion___block_invoke_10_cold_1()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3(&dword_225901000, v0, v1, "Unable to launch app with bundle identifier: %@, error: %@");
}

void __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke_33_cold_1()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3(&dword_225901000, v0, v1, "Unable to fetch documents with index keys: %@, error: %@");
}

@end
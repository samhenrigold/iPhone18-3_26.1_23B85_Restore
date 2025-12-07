@interface HDAttachmentManager
- (BOOL)_attachmentReferencesForObjectIdentifier:(uint64_t)identifier schemaIdentifier:(uint64_t)schemaIdentifier transaction:(uint64_t)transaction error:(void *)error enumerationHandler:;
- (BOOL)attachmentReferencesForAttachment:(id)attachment error:(id *)error enumerationHandler:(id)handler;
- (BOOL)attachmentReferencesForObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier error:(id *)error enumerationHandler:(id)handler;
- (BOOL)insertAttachmentReferences:(id)references attachment:(id)attachment error:(id *)error;
- (BOOL)insertAttachmentReferences:(id)references attachment:(id)attachment fileData:(id)data encrypt:(BOOL)encrypt error:(id *)error;
- (BOOL)insertAttachmentReferences:(id)references attachment:(id)attachment fileHandle:(id)handle encrypt:(BOOL)encrypt error:(id *)error;
- (BOOL)readAuthorizationForObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier client:(id)client error:(id *)error;
- (BOOL)removeAllReferencesWithAttachmentIdentifier:(id)identifier objectIdentifier:(id)objectIdentifier schemaIdentifier:(id)schemaIdentifier error:(id *)error;
- (BOOL)removeAttachmentReferences:(id)references error:(id *)error;
- (BOOL)removeAttachmentReferencesWithObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier error:(id *)error;
- (BOOL)removeAttachmentReferencesWithObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier transaction:(id)transaction error:(id *)error;
- (BOOL)replaceReferencesWithObjectIdentifier:(id)identifier replacementIdentifier:(id)replacementIdentifier schemaIdentifier:(id)schemaIdentifier error:(id *)error;
- (BOOL)writeAuthorizationForObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier client:(id)client error:(id *)error;
- (HDAttachmentManager)init;
- (HDAttachmentManager)initWithProfile:(id)profile;
- (id)_addReferenceWithAttachment:(id)attachment toObjectWithIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier metadata:(id)metadata error:(id *)error;
- (id)addAttachmentWithName:(id)name contentTypeIdentifier:(id)identifier fileHandle:(id)handle toObjectWithIdentifier:(id)withIdentifier schemaIdentifier:(id)schemaIdentifier attachmentMetadata:(id)metadata referenceMetadata:(id)referenceMetadata error:(id *)self0;
- (id)addReferenceWithAttachment:(id)attachment toObjectWithIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier metadata:(id)metadata error:(id *)error;
- (id)fileHandleForAttachment:(id)attachment error:(id *)error;
- (id)readerForAttachment:(id)attachment error:(id *)error;
- (id)schemaProviderClasses;
- (id)schemaProviderForIdentifier:(id)identifier error:(id *)error;
- (int64_t)supportedSchemaVersionForReference:(id)reference;
- (uint64_t)_validateAttachment:(void *)attachment toObjectWithIdentifier:(uint64_t)identifier schemaIdentifier:(void *)schemaIdentifier metadata:(uint64_t)metadata error:;
- (uint64_t)createFileDirectoriesWithError:(void *)error;
- (void)_cleanupAttachmentsFolder;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)ready;
- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion;
- (void)runMaintenanceOperationIfNeeded;
@end

@implementation HDAttachmentManager

- (id)schemaProviderClasses
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (HDAttachmentManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDAttachmentManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v19.receiver = self;
  v19.super_class = HDAttachmentManager;
  v5 = [(HDAttachmentManager *)&v19 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_profile, profileCopy);
    [profileCopy registerProfileReadyObserver:v6 queue:0];

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    schemaProvidersByIdentifier = v6->_schemaProvidersByIdentifier;
    v6->_schemaProvidersByIdentifier = v8;

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    directoryPath = [WeakRetained directoryPath];
    v12 = [directoryPath stringByAppendingPathComponent:@"Files"];
    filesDirectoryPath = v6->_filesDirectoryPath;
    v6->_filesDirectoryPath = v12;

    v14 = objc_loadWeakRetained(&v6->_profile);
    directoryPath2 = [v14 directoryPath];
    v16 = [directoryPath2 stringByAppendingPathComponent:@"UnconfirmedFiles"];
    unconfirmedFilesDirectoryPath = v6->_unconfirmedFilesDirectoryPath;
    v6->_unconfirmedFilesDirectoryPath = v16;
  }

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
  [analyticsSubmissionCoordinator removeObserver:self];

  v6.receiver = self;
  v6.super_class = HDAttachmentManager;
  [(HDAttachmentManager *)&v6 dealloc];
}

- (void)profileDidBecomeReady:(id)ready
{
  daemon = [ready daemon];
  analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
  [analyticsSubmissionCoordinator addObserver:self queue:0];
}

- (uint64_t)createFileDirectoriesWithError:(void *)error
{
  v24 = *MEMORY[0x277D85DE8];
  if (!error)
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  filesDirectoryURL = [error filesDirectoryURL];
  v19 = 0;
  v6 = [v4 createDirectoryAtURL:filesDirectoryURL withIntermediateDirectories:1 attributes:0 error:&v19];
  v7 = v19;

  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    v13 = HKLogInfrastructure();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      filesDirectoryURL2 = [error filesDirectoryURL];
      *buf = 138412546;
      v21 = filesDirectoryURL2;
      v22 = 2114;
      v23 = v7;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "Unable to create directory (%@). Error: %{public}@", buf, 0x16u);
    }

    v11 = v7;
    if (!v11)
    {
      v9 = 1;
      goto LABEL_15;
    }

    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  unconfirmedFilesDirectoryURL = [error unconfirmedFilesDirectoryURL];
  v18 = v7;
  v9 = 1;
  v10 = [v4 createDirectoryAtURL:unconfirmedFilesDirectoryURL withIntermediateDirectories:1 attributes:0 error:&v18];
  v11 = v18;

  if ((v10 & 1) == 0)
  {
    _HKInitializeLogging();
    v12 = HKLogInfrastructure();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      unconfirmedFilesDirectoryURL2 = [error unconfirmedFilesDirectoryURL];
      *buf = 138412546;
      v21 = unconfirmedFilesDirectoryURL2;
      v22 = 2114;
      v23 = v11;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Unable to create directory (%@). Error: %{public}@", buf, 0x16u);
    }

    v11 = v11;
    if (!v11)
    {
      goto LABEL_15;
    }

    if (!a2)
    {
LABEL_8:
      _HKLogDroppedError();
      v9 = 0;
LABEL_15:

      goto LABEL_16;
    }

LABEL_13:
    v14 = v11;
    v9 = 0;
    *a2 = v11;
    goto LABEL_15;
  }

LABEL_16:

  return v9;
}

- (uint64_t)_validateAttachment:(void *)attachment toObjectWithIdentifier:(uint64_t)identifier schemaIdentifier:(void *)schemaIdentifier metadata:(uint64_t)metadata error:
{
  v11 = a2;
  attachmentCopy = attachment;
  schemaIdentifierCopy = schemaIdentifier;
  if (self)
  {
    v14 = [self schemaProviderForIdentifier:identifier error:metadata];
    if (v14)
    {
      WeakRetained = objc_loadWeakRetained(self + 2);
      v16 = [v14 validateAttachment:v11 forObjectWithIdentifier:attachmentCopy metadata:schemaIdentifierCopy profile:WeakRetained error:metadata];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)addReferenceWithAttachment:(id)attachment toObjectWithIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier metadata:(id)metadata error:(id *)error
{
  attachmentCopy = attachment;
  identifierCopy = identifier;
  schemaIdentifierCopy = schemaIdentifier;
  metadataCopy = metadata;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__98;
  v42 = __Block_byref_object_dispose__98;
  v43 = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __105__HDAttachmentManager_addReferenceWithAttachment_toObjectWithIdentifier_schemaIdentifier_metadata_error___block_invoke;
  v35[3] = &unk_278621800;
  v16 = attachmentCopy;
  v36 = v16;
  v37 = &v38;
  if (![(HDAttachmentManager *)self attachmentReferencesForObjectIdentifier:identifierCopy schemaIdentifier:schemaIdentifierCopy error:error enumerationHandler:v35])
  {
    goto LABEL_10;
  }

  if (v39[5])
  {
    v17 = [MEMORY[0x277CCA9B8] hk_error:115 format:{@"The attachment with identifier %@ is already attached to object %@.", v39[5], identifierCopy}];
    v18 = v17;
    if (v17)
    {
      if (error)
      {
        v19 = v17;
        v20 = 0;
        *error = v18;
      }

      else
      {
        _HKLogDroppedError();
        v20 = 0;
      }

      v23 = v18;
    }

    else
    {
      v23 = 0;
      v20 = 0;
    }

    goto LABEL_24;
  }

  if (([(HDAttachmentManager *)&self->super.isa _validateAttachment:v16 toObjectWithIdentifier:identifierCopy schemaIdentifier:schemaIdentifierCopy metadata:metadataCopy error:error]& 1) == 0)
  {
LABEL_10:
    v20 = 0;
    goto LABEL_25;
  }

  identifier = [v16 identifier];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v34 = 0;
  v18 = [HDAttachmentEntity attachmentWithIdentifier:identifier profile:WeakRetained error:&v34];
  v23 = v34;

  if (!v18)
  {
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v28 = MEMORY[0x277CCA9B8];
      identifier2 = [v16 identifier];
      v30 = [v28 hk_error:118 format:{@"The attachment with identifier %@ was not found.", identifier2}];

      v24 = v30;
      if (!v24)
      {
        v23 = 0;
        goto LABEL_22;
      }
    }

    if (error)
    {
      v31 = v24;
      v20 = 0;
      *error = v24;
    }

    else
    {
      _HKLogDroppedError();
      v20 = 0;
    }

    v23 = v24;
    goto LABEL_23;
  }

  v24 = [(HDAttachmentManager *)self _addReferenceWithAttachment:v18 toObjectWithIdentifier:identifierCopy schemaIdentifier:schemaIdentifierCopy metadata:metadataCopy error:error];
  if (!v24)
  {
LABEL_22:
    v20 = 0;
    goto LABEL_23;
  }

  v25 = objc_alloc(MEMORY[0x277CCD010]);
  identifier3 = [v24 identifier];
  creationDate = [v24 creationDate];
  metadata = [v24 metadata];
  v20 = [v25 _initWithIdentifier:identifier3 objectIdentifier:identifierCopy attachment:v16 creationDate:creationDate metadata:metadata];

LABEL_23:
LABEL_24:

LABEL_25:
  _Block_object_dispose(&v38, 8);

  return v20;
}

uint64_t __105__HDAttachmentManager_addReferenceWithAttachment_toObjectWithIdentifier_schemaIdentifier_metadata_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 attachmentIdentifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = [*(a1 + 32) identifier];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  return v5 ^ 1u;
}

- (id)addAttachmentWithName:(id)name contentTypeIdentifier:(id)identifier fileHandle:(id)handle toObjectWithIdentifier:(id)withIdentifier schemaIdentifier:(id)schemaIdentifier attachmentMetadata:(id)metadata referenceMetadata:(id)referenceMetadata error:(id *)self0
{
  v70[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  identifierCopy = identifier;
  handleCopy = handle;
  withIdentifierCopy = withIdentifier;
  schemaIdentifierCopy = schemaIdentifier;
  metadataCopy = metadata;
  referenceMetadataCopy = referenceMetadata;
  memset(&v69, 0, sizeof(v69));
  if (fstat([handleCopy fileDescriptor], &v69) < 0)
  {
    v66 = nameCopy;
    v45 = MEMORY[0x277CCA9B8];
    v46 = *__error();
    v47 = __error();
    v48 = [v45 hk_error:102 format:{@"Cannot determine file size: %d: %s", v46, strerror(*v47)}];
    if (v48)
    {
      if (error)
      {
        v49 = v48;
        v44 = 0;
        *error = v48;
      }

      else
      {
        _HKLogDroppedError();
        v44 = 0;
      }

      v24 = v48;
    }

    else
    {
      v24 = 0;
      v44 = 0;
    }

    goto LABEL_33;
  }

  st_size = v69.st_size;
  v24 = [HDEncryptedArchiveSymmetricKey randomKeyWithError:error];
  if (!v24)
  {
    v44 = 0;
    goto LABEL_34;
  }

  v61 = st_size;
  v66 = nameCopy;
  v68 = 0;
  v25 = [(HDAttachmentManager *)self schemaProviderForIdentifier:schemaIdentifierCopy error:&v68];
  v64 = v68;
  v65 = v25;
  if (v25)
  {
    v60 = referenceMetadataCopy;
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_profile);
    }

    else
    {
      WeakRetained = 0;
    }

    v67 = 0;
    v27 = [v25 schemaVersionForObjectIdentifier:withIdentifierCopy profile:WeakRetained error:&v67];
    v59 = v67;

    v63 = identifierCopy;
    if (v27 > 0)
    {
      v54 = v27;
      v57 = handleCopy;
      v55 = [HDAttachment alloc];
      uUID = [MEMORY[0x277CCAD78] UUID];
      [MEMORY[0x277CCAD78] UUID];
      v29 = v58 = schemaIdentifierCopy;
      uUIDString = [v29 UUIDString];
      [MEMORY[0x277CBEAA8] date];
      v32 = v31 = withIdentifierCopy;
      v56 = metadataCopy;
      v33 = [(HDAttachment *)v55 initWithIdentifier:uUID name:v66 type:identifierCopy hash:uUIDString size:v61 creationDate:v32 metadata:metadataCopy encryptionKey:v24];

      schemaIdentifierCopy = v58;
      hkAttachment = [(HDAttachment *)v33 hkAttachment];
      v62 = v31;
      referenceMetadataCopy = v60;
      v35 = [(HDAttachmentManager *)&self->super.isa _validateAttachment:hkAttachment toObjectWithIdentifier:v31 schemaIdentifier:v58 metadata:v60 error:error];

      if (v35)
      {
        v36 = [HDAttachmentReferenceSchemaIdentifier alloc];
        identifier = [(HDAttachment *)v33 identifier];
        v38 = [(HDAttachmentReferenceSchemaIdentifier *)v36 initWithSchemaIdentifier:v58 schemaVersion:v54 objectIdentifier:v31 attachmentIdentifier:identifier];

        v39 = [HDAttachmentReference alloc];
        uUID2 = [MEMORY[0x277CCAD78] UUID];
        date = [MEMORY[0x277CBEAA8] date];
        v42 = [(HDAttachmentReference *)v39 initWithIdentifier:uUID2 schemaIdentifier:v38 creationDate:date options:0 metadata:v60];

        v70[0] = v42;
        v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:1];
        handleCopy = v57;
        LODWORD(uUID2) = [(HDAttachmentManager *)self insertAttachmentReferences:v43 attachment:v33 fileHandle:v57 encrypt:1 error:error];

        [v57 closeFile];
        v44 = 0;
        if (uUID2)
        {
          v44 = [(HDAttachmentReference *)v42 hkAttachmentReferenceWithAttachment:v33];
        }

        withIdentifierCopy = v62;
        identifierCopy = v63;
        schemaIdentifierCopy = v58;
      }

      else
      {
        v44 = 0;
        withIdentifierCopy = v31;
        handleCopy = v57;
      }

      metadataCopy = v56;
      v51 = v59;
      goto LABEL_32;
    }

    if (v27 == -1)
    {
      v50 = [MEMORY[0x277CCA9B8] hk_error:3 format:@"The object type is not supported"];

      referenceMetadataCopy = v60;
    }

    else
    {
      v50 = v59;
      referenceMetadataCopy = v60;
    }

    v33 = v50;
    if (!v33)
    {
      v51 = 0;
      v44 = 0;
LABEL_31:
      identifierCopy = v63;
      goto LABEL_32;
    }

LABEL_27:
    if (error)
    {
      v52 = v33;
      v44 = 0;
      *error = v33;
    }

    else
    {
      _HKLogDroppedError();
      v44 = 0;
    }

    v51 = v33;
    goto LABEL_31;
  }

  v33 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"No schema provider found for identifier '%@'", schemaIdentifierCopy}];
  if (v33)
  {
    v63 = identifierCopy;
    goto LABEL_27;
  }

  v51 = 0;
  v44 = 0;
LABEL_32:

  v48 = v64;
LABEL_33:

  nameCopy = v66;
LABEL_34:

  return v44;
}

- (id)_addReferenceWithAttachment:(id)attachment toObjectWithIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier metadata:(id)metadata error:(id *)error
{
  attachmentCopy = attachment;
  identifierCopy = identifier;
  schemaIdentifierCopy = schemaIdentifier;
  metadataCopy = metadata;
  v16 = [(HDAttachmentManager *)self schemaProviderForIdentifier:schemaIdentifierCopy error:error];
  if (v16 && (!self ? (v17 = 0) : (v17 = objc_loadWeakRetained(&self->_profile)), v18 = [v16 schemaVersionForObjectIdentifier:identifierCopy profile:v17 error:error], v17, v18 >= 1))
  {
    v19 = [HDAttachmentReferenceSchemaIdentifier alloc];
    identifier = [attachmentCopy identifier];
    v21 = [(HDAttachmentReferenceSchemaIdentifier *)v19 initWithSchemaIdentifier:schemaIdentifierCopy schemaVersion:v18 objectIdentifier:identifierCopy attachmentIdentifier:identifier];

    v22 = [HDAttachmentReference alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    [MEMORY[0x277CBEAA8] date];
    v24 = v31 = attachmentCopy;
    v25 = [(HDAttachmentReference *)v22 initWithIdentifier:uUID schemaIdentifier:v21 creationDate:v24 options:0 metadata:metadataCopy];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    LODWORD(v24) = [HDAttachmentReferenceEntity insertReference:v25 profile:WeakRetained error:error];

    v27 = v24 == 0;
    attachmentCopy = v31;
    if (v27)
    {
      v28 = 0;
    }

    else
    {
      v28 = v25;
    }

    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (BOOL)insertAttachmentReferences:(id)references attachment:(id)attachment error:(id *)error
{
  attachmentCopy = attachment;
  referencesCopy = references;
  v10 = [[HDInsertAttachmentOperation alloc] initWithAttachmentReferences:referencesCopy attachment:attachmentCopy fileOnDisk:0];

  if (self)
  {
    self = objc_loadWeakRetained(&self->_profile);
  }

  v11 = [(HDJournalableOperation *)v10 performOrJournalWithProfile:self error:error];

  return v11;
}

- (BOOL)insertAttachmentReferences:(id)references attachment:(id)attachment fileHandle:(id)handle encrypt:(BOOL)encrypt error:(id *)error
{
  encryptCopy = encrypt;
  v95 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  handleCopy = handle;
  referencesCopy = references;
  v15 = [[HDInsertAttachmentOperation alloc] initWithAttachmentReferences:referencesCopy attachment:attachmentCopy fileOnDisk:1];

  v82 = 0;
  LOBYTE(handle) = [(HDAttachmentManager *)self createFileDirectoriesWithError:?];
  v16 = v82;
  v17 = v16;
  if (handle)
  {
    v79 = v15;
    v80 = handleCopy;
    unconfirmedFilesDirectoryURL = [(HDAttachmentManager *)self unconfirmedFilesDirectoryURL];
    identifier = [attachmentCopy identifier];
    uUIDString = [identifier UUIDString];
    v21 = [unconfirmedFilesDirectoryURL URLByAppendingPathComponent:uUIDString];

    v22 = objc_alloc_init(MEMORY[0x277CCAA00]);
    path = [v21 path];
    v78 = v22;
    LOBYTE(v22) = [v22 createFileAtPath:path contents:0 attributes:0];

    if (v22)
    {
      v81 = 0;
      v24 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v21 error:&v81];
      v77 = v81;
      if (v24)
      {
        encryptionKey = [attachmentCopy encryptionKey];
        v26 = encryptionKey;
        handleCopy = v80;
        if (encryptCopy && encryptionKey)
        {
          v27 = [HDEncryptedArchive encryptContentsOfFileHandle:v80 to:v24 key:encryptionKey error:error];
          [v24 closeFile];
          if (!v27)
          {
            goto LABEL_65;
          }
        }

        else
        {
          path2 = [v21 path];
          v73 = attachmentCopy;
          v40 = v80;
          v76 = v24;
          v74 = path2;
          v75 = v40;
          if (self)
          {
            v41 = *MEMORY[0x277D85FA0];
            v86 = 0;
            for (i = v40; ; i = v75)
            {
              v43 = [i readDataUpToLength:v41 error:&v86];
              v44 = v86;
              if (v44)
              {
                break;
              }

              if (!v43 || ![v43 length])
              {
                [v76 closeFile];

                v51 = *MEMORY[0x277CCA198];
                v52 = *MEMORY[0x277CCA180];
                v87[0] = *MEMORY[0x277CCA1B0];
                v87[1] = v52;
                v88[0] = v51;
                v88[1] = &unk_283CB2508;
                v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:2];
                v47 = objc_alloc_init(MEMORY[0x277CCAA00]);
                v84 = 0;
                v53 = [v47 setAttributes:v48 ofItemAtPath:v74 error:&v84];
                v54 = v84;
                if (v53)
                {
                  v72 = 1;
                }

                else
                {
                  v71 = v54;
                  _HKInitializeLogging();
                  v59 = *MEMORY[0x277CCC280];
                  if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543874;
                    selfCopy6 = self;
                    v91 = 2114;
                    v92 = v74;
                    v93 = 2114;
                    v94 = v71;
                    _os_log_error_impl(&dword_228986000, v59, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to set protection class for %{public}@. Reverting storage. %{public}@", buf, 0x20u);
                  }

                  v83 = 0;
                  v60 = [v47 removeItemAtPath:v74 error:&v83];
                  v70 = v83;
                  if ((v60 & 1) == 0)
                  {
                    _HKInitializeLogging();
                    v61 = *MEMORY[0x277CCC280];
                    if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543874;
                      selfCopy6 = self;
                      v91 = 2114;
                      v92 = v74;
                      v93 = 2114;
                      v94 = v70;
                      _os_log_error_impl(&dword_228986000, v61, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to remove file at %{public}@, %{public}@", buf, 0x20u);
                    }
                  }

                  v62 = v71;
                  v72 = v62 == 0;
                  if (v62)
                  {
                    if (error)
                    {
                      v63 = v62;
                      *error = v62;
                    }

                    else
                    {
                      _HKLogDroppedError();
                    }
                  }

                  v54 = v71;
                }

                goto LABEL_59;
              }

              v85 = 0;
              v45 = [v76 writeData:v43 error:&v85];
              v46 = v85;
              v47 = v46;
              if ((v45 & 1) == 0)
              {
                [v76 closeFile];
                _HKInitializeLogging();
                v64 = *MEMORY[0x277CCC280];
                if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543874;
                  selfCopy6 = self;
                  v91 = 2114;
                  v92 = v74;
                  v93 = 2114;
                  v94 = 0;
                  _os_log_error_impl(&dword_228986000, v64, OS_LOG_TYPE_ERROR, "%{public}@: Failed to write file to URL %{public}@. %{public}@", buf, 0x20u);
                }

                v72 = 1;
                v48 = v43;
                goto LABEL_59;
              }

              v41 = *MEMORY[0x277D85FA0];
              v86 = 0;
            }

            v48 = v44;
            [v76 closeFile];
            _HKInitializeLogging();
            v49 = *MEMORY[0x277CCC280];
            if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              selfCopy6 = self;
              v91 = 2114;
              v92 = v74;
              v93 = 2114;
              v94 = v48;
              _os_log_error_impl(&dword_228986000, v49, OS_LOG_TYPE_ERROR, "%{public}@: Failed to read file from source for URL %{public}@. %{public}@", buf, 0x20u);
            }

            if (error)
            {
              v50 = v48;
              v72 = 0;
              *error = v48;
            }

            else
            {
              _HKLogDroppedError();
              v72 = 0;
            }

            v47 = v43;
LABEL_59:
            v67 = v73;
          }

          else
          {
            v72 = 0;
            v67 = v73;
          }

          handleCopy = v80;
          if (!v72)
          {
            v24 = v76;
LABEL_65:
            v29 = 0;
LABEL_66:
            path5 = v77;
            goto LABEL_67;
          }
        }

        if (self)
        {
          WeakRetained = objc_loadWeakRetained(&self->_profile);
        }

        else
        {
          WeakRetained = 0;
        }

        v29 = [(HDJournalableOperation *)v79 performOrJournalWithProfile:WeakRetained error:error];

        goto LABEL_66;
      }

      _HKInitializeLogging();
      v37 = *MEMORY[0x277CCC280];
      handleCopy = v80;
      if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
      {
        v65 = v37;
        path3 = [v21 path];
        *buf = 138543874;
        selfCopy6 = self;
        v91 = 2114;
        v92 = path3;
        v93 = 2114;
        v94 = v77;
        _os_log_error_impl(&dword_228986000, v65, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to create a file handle for URL %{public}@. %{public}@", buf, 0x20u);
      }

      v26 = v77;
      if (v26)
      {
        if (error)
        {
          v38 = v26;
          v24 = 0;
          v29 = 0;
          *error = v26;
        }

        else
        {
          _HKLogDroppedError();
          v24 = 0;
          v29 = 0;
        }

        path5 = v26;
        goto LABEL_67;
      }

      v24 = 0;
      path5 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v30 = *MEMORY[0x277CCC280];
      if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
      {
        v55 = v30;
        path4 = [v21 path];
        v57 = __error();
        v58 = strerror(*v57);
        *buf = 138543874;
        selfCopy6 = self;
        v91 = 2114;
        v92 = path4;
        v93 = 2080;
        v94 = v58;
        _os_log_error_impl(&dword_228986000, v55, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to create file %{public}@ error: %s.", buf, 0x20u);
      }

      v31 = MEMORY[0x277CCA9B8];
      v32 = *__error();
      v33 = __error();
      v34 = strerror(*v33);
      path5 = [v21 path];
      v26 = [v31 hk_error:102 format:{@"Error %d, %s while creating file at %@ ", v32, v34, path5}];
      handleCopy = v80;
      if (v26)
      {
        if (error)
        {
          v36 = v26;
          v29 = 0;
          *error = v26;
        }

        else
        {
          _HKLogDroppedError();
          v29 = 0;
        }

        v24 = v26;
        goto LABEL_67;
      }

      v24 = 0;
    }

    v29 = 1;
LABEL_67:

    v15 = v79;
    goto LABEL_68;
  }

  v21 = v16;
  if (v21)
  {
    if (error)
    {
      v28 = v21;
      v29 = 0;
      *error = v21;
    }

    else
    {
      _HKLogDroppedError();
      v29 = 0;
    }
  }

  else
  {
    v29 = 1;
  }

LABEL_68:

  return v29;
}

- (BOOL)insertAttachmentReferences:(id)references attachment:(id)attachment fileData:(id)data encrypt:(BOOL)encrypt error:(id *)error
{
  encryptCopy = encrypt;
  v94 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  dataCopy = data;
  referencesCopy = references;
  v15 = [[HDInsertAttachmentOperation alloc] initWithAttachmentReferences:referencesCopy attachment:attachmentCopy fileOnDisk:1];

  v87 = 0;
  v16 = [(HDAttachmentManager *)self createFileDirectoriesWithError:?];
  v17 = v87;
  v18 = v17;
  if (v16)
  {
    v80 = dataCopy;
    v81 = v15;
    v19 = objc_alloc_init(MEMORY[0x277CCAA00]);
    unconfirmedFilesDirectoryURL = [(HDAttachmentManager *)self unconfirmedFilesDirectoryURL];
    identifier = [attachmentCopy identifier];
    uUIDString = [identifier UUIDString];
    v23 = [unconfirmedFilesDirectoryURL URLByAppendingPathComponent:uUIDString];

    path = [v23 path];
    LOBYTE(unconfirmedFilesDirectoryURL) = [v19 createFileAtPath:path contents:0 attributes:0];

    if ((unconfirmedFilesDirectoryURL & 1) == 0)
    {
      _HKInitializeLogging();
      v36 = *MEMORY[0x277CCC280];
      if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
      {
        v56 = v36;
        path2 = [v23 path];
        *buf = 138543618;
        selfCopy7 = self;
        v92 = 2114;
        *v93 = path2;
        _os_log_error_impl(&dword_228986000, v56, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to create file %{public}@.", buf, 0x16u);
      }

      v37 = MEMORY[0x277CCA9B8];
      path3 = [v23 path];
      v29 = [v37 hk_error:102 format:{@"Error creating file at %@", path3}];
      dataCopy = v80;
      if (v29)
      {
        v15 = v81;
        if (error)
        {
          v39 = v29;
          LOBYTE(v33) = 0;
          *error = v29;
        }

        else
        {
          _HKLogDroppedError();
          LOBYTE(v33) = 0;
        }

        v46 = v29;
      }

      else
      {
        v46 = 0;
        LOBYTE(v33) = 0;
        v15 = v81;
      }

      goto LABEL_64;
    }

    v86 = 0;
    v25 = [MEMORY[0x277CCA9F8] fileHandleForUpdatingURL:v23 error:&v86];
    v78 = v86;
    v79 = v25;
    if (!v25)
    {
      _HKInitializeLogging();
      v40 = MEMORY[0x277CCC280];
      v41 = *MEMORY[0x277CCC280];
      if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
      {
        v63 = v41;
        path4 = [v23 path];
        *buf = 138543874;
        selfCopy7 = self;
        v92 = 2114;
        *v93 = path4;
        *&v93[8] = 2114;
        *&v93[10] = v78;
        _os_log_error_impl(&dword_228986000, v63, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to retreive fileHandle for %{public}@. Reverting attachment and reference storage. %{public}@", buf, 0x20u);
      }

      path5 = [v23 path];
      v85 = 0;
      v43 = [v19 removeItemAtPath:path5 error:&v85];
      v29 = v85;

      if ((v43 & 1) == 0)
      {
        _HKInitializeLogging();
        v44 = *v40;
        if (os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
        {
          v68 = v44;
          path6 = [v23 path];
          *buf = 138543874;
          selfCopy7 = self;
          v92 = 2114;
          *v93 = path6;
          *&v93[8] = 2114;
          *&v93[10] = v29;
          _os_log_error_impl(&dword_228986000, v68, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to remove file at %{public}@, %{public}@", buf, 0x20u);
        }
      }

      path3 = v78;
      v45 = v78;
      if (v45)
      {
        dataCopy = v80;
        v15 = v81;
        if (error)
        {
          v45 = v45;
          LOBYTE(v33) = 0;
          *error = v45;
        }

        else
        {
          v33 = v45;
          _HKLogDroppedError();
          v45 = v33;
          LOBYTE(v33) = 0;
        }
      }

      else
      {
        LOBYTE(v33) = 0;
        dataCopy = v80;
        v15 = v81;
      }

      v46 = 0;
      goto LABEL_63;
    }

    if (fcntl([v25 fileDescriptor], 48, 1))
    {
      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v58 = v26;
        path7 = [v23 path];
        v60 = *__error();
        v61 = __error();
        v62 = strerror(*v61);
        *buf = 138543874;
        selfCopy7 = path7;
        v92 = 1024;
        *v93 = v60;
        *&v93[4] = 2082;
        *&v93[6] = v62;
        _os_log_error_impl(&dword_228986000, v58, OS_LOG_TYPE_ERROR, "Error setting F_NOCACHE on file at %{public}@ failed (%d): %{public}s", buf, 0x1Cu);
      }
    }

    v27 = *MEMORY[0x277CCA198];
    v28 = *MEMORY[0x277CCA180];
    v88[0] = *MEMORY[0x277CCA1B0];
    v88[1] = v28;
    v89[0] = v27;
    v89[1] = &unk_283CB2508;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:2];
    path8 = [v23 path];
    v84 = 0;
    v31 = [v19 setAttributes:v29 ofItemAtPath:path8 error:&v84];
    v77 = v84;

    if (v31)
    {
      encryptionKey = [attachmentCopy encryptionKey];
      v76 = encryptionKey;
      if (encryptCopy && encryptionKey)
      {
        v33 = [HDEncryptedArchive archiveForEncryptionWithFileHandle:v79 key:encryptionKey error:error];
        [v79 closeFile];
        dataCopy = v80;
        if (!v33)
        {
LABEL_13:
          v15 = v81;
LABEL_62:
          v46 = v79;

          v45 = v77;
          path3 = v78;
LABEL_63:

LABEL_64:
          goto LABEL_65;
        }

        v34 = [v33 writeData:v80 error:error];
        [v33 close];

        if ((v34 & 1) == 0)
        {
          LOBYTE(v33) = 0;
          goto LABEL_13;
        }

        goto LABEL_45;
      }

      v82 = 0;
      dataCopy = v80;
      v74 = [v79 writeData:v80 error:&v82];
      v53 = v82;
      [v79 closeFile];
      if (v74)
      {

LABEL_45:
        if (self)
        {
          self = objc_loadWeakRetained(&self->_profile);
        }

        v15 = v81;
        LOBYTE(v33) = [(HDJournalableOperation *)v81 performOrJournalWithProfile:self error:error];
        goto LABEL_61;
      }

      v75 = v53;
      _HKInitializeLogging();
      v54 = *MEMORY[0x277CCC280];
      v15 = v81;
      if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
      {
        v72 = v54;
        path9 = [v23 path];
        *buf = 138543874;
        selfCopy7 = self;
        v92 = 2114;
        *v93 = path9;
        *&v93[8] = 2114;
        *&v93[10] = v75;
        _os_log_error_impl(&dword_228986000, v72, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to write data to file at %{public}@, %{public}@", buf, 0x20u);

        v15 = v81;
      }

      self = v75;
      if (self)
      {
        if (error)
        {
          selfCopy5 = self;
          *error = self;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_60;
    }

    _HKInitializeLogging();
    v47 = MEMORY[0x277CCC280];
    v48 = *MEMORY[0x277CCC280];
    if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
    {
      v65 = v48;
      path10 = [v23 path];
      *buf = 138543874;
      selfCopy7 = self;
      v92 = 2114;
      *v93 = path10;
      *&v93[8] = 2114;
      *&v93[10] = v77;
      _os_log_error_impl(&dword_228986000, v65, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to set protection class for %{public}@. Reverting storage. %{public}@", buf, 0x20u);
    }

    path11 = [v23 path];
    v83 = 0;
    v50 = [v19 removeItemAtPath:path11 error:&v83];
    v76 = v83;

    if ((v50 & 1) == 0)
    {
      _HKInitializeLogging();
      v51 = *v47;
      if (os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
      {
        v70 = v51;
        path12 = [v23 path];
        *buf = 138543874;
        selfCopy7 = self;
        v92 = 2114;
        *v93 = path12;
        *&v93[8] = 2114;
        *&v93[10] = v76;
        _os_log_error_impl(&dword_228986000, v70, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to remove file at %{public}@, %{public}@", buf, 0x20u);
      }
    }

    self = v77;
    if (self)
    {
      dataCopy = v80;
      v15 = v81;
      if (!error)
      {
        _HKLogDroppedError();
LABEL_60:
        LOBYTE(v33) = 0;
        goto LABEL_61;
      }

      selfCopy8 = self;
      LOBYTE(v33) = 0;
      *error = self;
    }

    else
    {
      LOBYTE(v33) = 0;
      dataCopy = v80;
      v15 = v81;
    }

LABEL_61:

    goto LABEL_62;
  }

  v19 = v17;
  if (!v19)
  {
    goto LABEL_23;
  }

  if (!error)
  {
    _HKLogDroppedError();
LABEL_23:
    LOBYTE(v33) = 0;
    goto LABEL_65;
  }

  v35 = v19;
  LOBYTE(v33) = 0;
  *error = v19;
LABEL_65:

  return v33;
}

- (BOOL)attachmentReferencesForObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier error:(id *)error enumerationHandler:(id)handler
{
  identifierCopy = identifier;
  schemaIdentifierCopy = schemaIdentifier;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __105__HDAttachmentManager_attachmentReferencesForObjectIdentifier_schemaIdentifier_error_enumerationHandler___block_invoke;
  v19[3] = &unk_2786185E8;
  v19[4] = self;
  v20 = identifierCopy;
  v21 = schemaIdentifierCopy;
  v22 = handlerCopy;
  v15 = handlerCopy;
  v16 = schemaIdentifierCopy;
  v17 = identifierCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDAttachmentReferenceEntity performReadTransactionWithHealthDatabase:database error:error block:v19];

  return error;
}

- (BOOL)_attachmentReferencesForObjectIdentifier:(uint64_t)identifier schemaIdentifier:(uint64_t)schemaIdentifier transaction:(uint64_t)transaction error:(void *)error enumerationHandler:
{
  errorCopy = error;
  v12 = errorCopy;
  if (self)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __118__HDAttachmentManager__attachmentReferencesForObjectIdentifier_schemaIdentifier_transaction_error_enumerationHandler___block_invoke;
    v15[3] = &unk_278621918;
    v15[4] = self;
    v16 = errorCopy;
    v13 = [HDAttachmentReferenceEntity enumerateReferencesForObjectIdentifier:a2 schemaIdentifier:identifier transaction:schemaIdentifier error:transaction enumerationHandler:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)attachmentReferencesForAttachment:(id)attachment error:(id *)error enumerationHandler:(id)handler
{
  attachmentCopy = attachment;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__HDAttachmentManager_attachmentReferencesForAttachment_error_enumerationHandler___block_invoke;
  v15[3] = &unk_278618368;
  v16 = attachmentCopy;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = attachmentCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDAttachmentReferenceEntity performReadTransactionWithHealthDatabase:database error:error block:v15];

  return error;
}

BOOL __82__HDAttachmentManager_attachmentReferencesForAttachment_error_enumerationHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 identifier];
  v8 = HDAttachmentReferencePredicateForAttachmentIdentifier(v7);
  v9 = [HDAttachmentReferenceEntity enumerateReferencesWithPredicate:v8 transaction:v6 error:a3 enumerationHandler:*(a1 + 40)];

  return v9;
}

- (id)fileHandleForAttachment:(id)attachment error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  filesDirectoryURL = [(HDAttachmentManager *)self filesDirectoryURL];
  identifier = [attachmentCopy identifier];
  uUIDString = [identifier UUIDString];
  v10 = [filesDirectoryURL URLByAppendingPathComponent:uUIDString];

  v38 = 0;
  v11 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v10 error:&v38];
  v12 = v38;
  v13 = v12;
  if (v11)
  {
    v14 = v11;
  }

  else if ([v12 hk_isCocoaNoSuchFileError])
  {
    errorCopy = error;
    unconfirmedFilesDirectoryURL = [(HDAttachmentManager *)self unconfirmedFilesDirectoryURL];
    identifier2 = [attachmentCopy identifier];
    uUIDString2 = [identifier2 UUIDString];
    v18 = [unconfirmedFilesDirectoryURL URLByAppendingPathComponent:uUIDString2];

    v37 = 0;
    v14 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v18 error:&v37];
    v19 = v37;
    if (v14)
    {
      v20 = v14;
    }

    else
    {
      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC280];
      if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
      {
        log = v26;
        path = [v18 path];
        *buf = 138543874;
        selfCopy2 = self;
        v41 = 2114;
        v42 = path;
        v43 = 2114;
        v44 = v19;
        _os_log_error_impl(&dword_228986000, log, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: File not found at %{public}@, %{public}@", buf, 0x20u);
      }

      v27 = MEMORY[0x277CCA9B8];
      path2 = [v18 path];
      v29 = [v27 hk_error:102 format:{@"File not found at %@, %@", path2, v19}];
      if (v29)
      {
        if (errorCopy)
        {
          v30 = v29;
          *errorCopy = v29;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC280];
    if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
    {
      v32 = v21;
      path3 = [v10 path];
      *buf = 138543874;
      selfCopy2 = self;
      v41 = 2114;
      v42 = path3;
      v43 = 2114;
      v44 = v13;
      _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: File not found at %{public}@, %{public}@", buf, 0x20u);
    }

    v22 = MEMORY[0x277CCA9B8];
    path4 = [v10 path];
    v24 = [v22 hk_error:102 format:{@"File not found at %@, %@", path4, v13}];
    if (v24)
    {
      if (error)
      {
        v25 = v24;
        *error = v24;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v14 = 0;
  }

  return v14;
}

- (id)readerForAttachment:(id)attachment error:(id *)error
{
  attachmentCopy = attachment;
  v7 = [(HDAttachmentManager *)self fileHandleForAttachment:attachmentCopy error:error];
  if (v7)
  {
    encryptionKey = [attachmentCopy encryptionKey];

    if (encryptionKey)
    {
      encryptionKey2 = [attachmentCopy encryptionKey];
      v10 = [HDEncryptedArchive archiveForDecryptionWithFileHandle:v7 key:encryptionKey2 error:error];

      [v7 closeFile];
      if (v10)
      {
        v11 = [[HDAttachmentEncryptedReader alloc] initAdoptingArchive:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = [[HDAttachmentFileHandleReader alloc] initAdoptingFileHandle:v7];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)replaceReferencesWithObjectIdentifier:(id)identifier replacementIdentifier:(id)replacementIdentifier schemaIdentifier:(id)schemaIdentifier error:(id *)error
{
  schemaIdentifierCopy = schemaIdentifier;
  replacementIdentifierCopy = replacementIdentifier;
  identifierCopy = identifier;
  v13 = [[HDReplaceObjectIdentifierOperation alloc] initWithWithObjectIdentifier:identifierCopy replacementIdentifier:replacementIdentifierCopy schemaIdentifier:schemaIdentifierCopy];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [(HDJournalableOperation *)v13 performOrJournalWithProfile:WeakRetained error:error];

  return error;
}

- (BOOL)removeAllReferencesWithAttachmentIdentifier:(id)identifier objectIdentifier:(id)objectIdentifier schemaIdentifier:(id)schemaIdentifier error:(id *)error
{
  identifierCopy = identifier;
  objectIdentifierCopy = objectIdentifier;
  schemaIdentifierCopy = schemaIdentifier;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __107__HDAttachmentManager_removeAllReferencesWithAttachmentIdentifier_objectIdentifier_schemaIdentifier_error___block_invoke;
  v19[3] = &unk_27861B120;
  v19[4] = self;
  v20 = objectIdentifierCopy;
  v21 = schemaIdentifierCopy;
  v22 = identifierCopy;
  v15 = identifierCopy;
  v16 = schemaIdentifierCopy;
  v17 = objectIdentifierCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDAttachmentReferenceEntity performWriteTransactionWithHealthDatabase:database error:error block:v19 inaccessibilityHandler:0];

  return error;
}

uint64_t __107__HDAttachmentManager_removeAllReferencesWithAttachmentIdentifier_objectIdentifier_schemaIdentifier_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __107__HDAttachmentManager_removeAllReferencesWithAttachmentIdentifier_objectIdentifier_schemaIdentifier_error___block_invoke_2;
  v22 = &unk_278621828;
  v8 = *(a1 + 48);
  v23 = *(a1 + 56);
  v9 = v5;
  v24 = v9;
  if (![v6 attachmentReferencesForObjectIdentifier:v7 schemaIdentifier:v8 error:a3 enumerationHandler:&v19])
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (![v9 count])
  {
    v12 = [MEMORY[0x277CCA9B8] hk_error:11 format:{@"No references found for attachment: %@ and object: %@", *(a1 + 56), *(a1 + 40), v19, v20, v21, v22, v23}];
    if (v12)
    {
      if (a3)
      {
        v13 = v12;
        *a3 = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_12;
  }

  if ([v9 count] != 1)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC280];
    if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_FAULT))
    {
      v15 = *(a1 + 56);
      v16 = *(a1 + 40);
      v17 = v10;
      v18 = [v9 count];
      *buf = 138543874;
      v26 = v15;
      v27 = 2114;
      v28 = v16;
      v29 = 2048;
      v30 = v18;
      _os_log_fault_impl(&dword_228986000, v17, OS_LOG_TYPE_FAULT, "[database] Expected only a single reference for attachment: %{public}@ and object: %{public}@, found %lu", buf, 0x20u);
    }
  }

  v11 = [*(a1 + 32) removeAttachmentReferences:v9 error:a3];
LABEL_13:

  return v11;
}

uint64_t __107__HDAttachmentManager_removeAllReferencesWithAttachmentIdentifier_objectIdentifier_schemaIdentifier_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 attachmentIdentifier];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    [*(a1 + 40) addObject:v3];
  }

  return 1;
}

- (BOOL)removeAttachmentReferences:(id)references error:(id *)error
{
  referencesCopy = references;
  v7 = [[HDDeleteAttachmentReferenceOperation alloc] initWithReferences:referencesCopy];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [(HDJournalableOperation *)v7 performOrJournalWithProfile:WeakRetained error:error];

  return error;
}

- (BOOL)removeAttachmentReferencesWithObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier error:(id *)error
{
  identifierCopy = identifier;
  schemaIdentifierCopy = schemaIdentifier;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __93__HDAttachmentManager_removeAttachmentReferencesWithObjectIdentifier_schemaIdentifier_error___block_invoke;
  v15[3] = &unk_278615D40;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = schemaIdentifierCopy;
  v12 = schemaIdentifierCopy;
  v13 = identifierCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDAttachmentReferenceEntity performWriteTransactionWithHealthDatabase:database error:error block:v15];

  return error;
}

- (BOOL)removeAttachmentReferencesWithObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier transaction:(id)transaction error:(id *)error
{
  identifierCopy = identifier;
  schemaIdentifierCopy = schemaIdentifier;
  transactionCopy = transaction;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__98;
  v23 = __Block_byref_object_dispose__98;
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __105__HDAttachmentManager_removeAttachmentReferencesWithObjectIdentifier_schemaIdentifier_transaction_error___block_invoke;
  v18[3] = &unk_278621850;
  v18[4] = &v19;
  if ([(HDAttachmentManager *)self _attachmentReferencesForObjectIdentifier:identifierCopy schemaIdentifier:schemaIdentifierCopy transaction:transactionCopy error:error enumerationHandler:v18])
  {
    v13 = [HDDeleteAttachmentReferenceOperation alloc];
    v14 = [(HDDeleteAttachmentReferenceOperation *)v13 initWithReferences:v20[5]];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v16 = [(HDDeleteAttachmentReferenceOperation *)v14 performWithProfile:WeakRetained transaction:transactionCopy error:error];
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v16;
}

- (BOOL)readAuthorizationForObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier client:(id)client error:(id *)error
{
  identifierCopy = identifier;
  clientCopy = client;
  v12 = [(HDAttachmentManager *)self schemaProviderForIdentifier:schemaIdentifier error:error];
  if (v12)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v14 = [v12 readAuthorizationForObjectIdentifier:identifierCopy client:clientCopy profile:WeakRetained error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)writeAuthorizationForObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier client:(id)client error:(id *)error
{
  identifierCopy = identifier;
  clientCopy = client;
  v12 = [(HDAttachmentManager *)self schemaProviderForIdentifier:schemaIdentifier error:error];
  if (v12)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v14 = [v12 writeAuthorizationForObjectIdentifier:identifierCopy client:clientCopy profile:WeakRetained error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion
{
  v86 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v26 = WeakRetained;
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    date = [MEMORY[0x277CBEAA8] date];
    v11 = [currentCalendar startOfDayForDate:date];

    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = 0;
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v77 = 0;
    v70 = 0;
    v71 = &v70;
    v72 = 0x2020000000;
    v73 = 0;
    v66 = 0;
    v67 = &v66;
    v68 = 0x2020000000;
    v69 = 0;
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    database = [v26 database];
    v41 = 0;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __70__HDAttachmentManager_reportDailyAnalyticsWithCoordinator_completion___block_invoke;
    v29[3] = &unk_2786218F0;
    v31 = &v78;
    v32 = &v66;
    v13 = v11;
    v30 = v13;
    v33 = &v50;
    v34 = &v62;
    v35 = &v42;
    v36 = &v74;
    v37 = &v54;
    v38 = &v58;
    v39 = &v70;
    v40 = &v46;
    v14 = [(HDHealthEntity *)HDAttachmentEntity performReadTransactionWithHealthDatabase:database error:&v41 block:v29];
    v15 = v41;

    if (v14)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      unconfirmedFilesDirectoryPath = self->_unconfirmedFilesDirectoryPath;
      v28 = 0;
      v18 = [defaultManager contentsOfDirectoryAtPath:unconfirmedFilesDirectoryPath error:&v28];
      v19 = v28;

      if (v19)
      {
        _HKInitializeLogging();
        v20 = HKLogAnalytics();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy2 = self;
          v84 = 2114;
          v85 = v19;
          _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "%{public}@ Failed to read directory contents at %{public}@", buf, 0x16u);
        }

        (*(completionCopy + 2))(completionCopy, 0, 0, 0);
      }

      else
      {
        v22 = [v18 count];
        v23 = objc_alloc_init(HDAttachmentAnalytics);
        [(HDAttachmentAnalytics *)v23 setNumberOfAttachments:v79[3]];
        [(HDAttachmentAnalytics *)v23 setNumberOfReferences:v75[3]];
        [(HDAttachmentAnalytics *)v23 setNumberOfTombstones:v71[3]];
        [(HDAttachmentAnalytics *)v23 setTotalSizeOfFiles:v67[3]];
        [(HDAttachmentAnalytics *)v23 setNumberOfUnconfirmedFiles:v22];
        [(HDAttachmentAnalytics *)v23 setNumberOfOrphanedAttachments:v63[3]];
        [(HDAttachmentAnalytics *)v23 setNumberOfOrphanedReferences:v59[3]];
        [(HDAttachmentAnalytics *)v23 setNumberOfReferencesCreatedLast24Hours:v55[3]];
        [(HDAttachmentAnalytics *)v23 setNumberOfAttachmentsCreatedLast24Hours:v51[3]];
        [(HDAttachmentAnalytics *)v23 setNumberOfTombstonesCreatedLast24Hours:v47[3]];
        [(HDAttachmentAnalytics *)v23 setNumberOfAttachmentsWithMultipleReferences:v43[3]];
        daemon = [v26 daemon];
        analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
        [analyticsSubmissionCoordinator attachments_reportDailyAnalytics:v23];

        (*(completionCopy + 2))(completionCopy, 0, 0, 0);
      }
    }

    else
    {
      _HKInitializeLogging();
      v21 = HKLogAnalytics();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v84 = 2114;
        v85 = v15;
        _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "%{public}@ Failed to read directory contents at %{public}@", buf, 0x16u);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0, 0);
    }

    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v46, 8);
    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(&v54, 8);
    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(&v62, 8);
    _Block_object_dispose(&v66, 8);
    _Block_object_dispose(&v70, 8);
    _Block_object_dispose(&v74, 8);
    _Block_object_dispose(&v78, 8);

    v8 = v26;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

BOOL __70__HDAttachmentManager_reportDailyAnalyticsWithCoordinator_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v36 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __70__HDAttachmentManager_reportDailyAnalyticsWithCoordinator_completion___block_invoke_2;
  v30[3] = &unk_2786218A0;
  v33 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v31 = v6;
  v34 = v7;
  v8 = v5;
  v32 = v8;
  v35 = *(a1 + 64);
  v9 = [HDAttachmentEntity enumerateAttachmentsWithPredicate:0 transaction:v8 error:&v36 enumerationHandler:v30];
  v10 = v36;
  v11 = v10;
  if (v9)
  {
    v29 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __70__HDAttachmentManager_reportDailyAnalyticsWithCoordinator_completion___block_invoke_4;
    v22[3] = &unk_2786218C8;
    v25 = *(a1 + 80);
    v12 = *(a1 + 32);
    v13 = *(a1 + 88);
    v23 = v12;
    v26 = v13;
    v24 = v8;
    v27 = *(a1 + 96);
    v28 = *(a1 + 112);
    v14 = [HDAttachmentReferenceEntity enumerateReferencesWithPredicate:0 transaction:v24 error:&v29 enumerationHandler:v22];
    v15 = v29;
    v16 = v15;
    if (v14)
    {
      v17 = 1;
    }

    else
    {
      v19 = v15;
      v17 = v19 == 0;
      if (v19)
      {
        if (a3)
        {
          v20 = v19;
          *a3 = v19;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    v16 = v10;
    if (v16)
    {
      if (a3)
      {
        v18 = v16;
        v17 = 0;
        *a3 = v16;
      }

      else
      {
        _HKLogDroppedError();
        v17 = 0;
      }
    }

    else
    {
      v17 = 1;
    }
  }

  return v17;
}

BOOL __70__HDAttachmentManager_reportDailyAnalyticsWithCoordinator_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  ++*(*(a1[6] + 8) + 24);
  *(*(a1[7] + 8) + 24) += [v5 size];
  v6 = [v5 creationDate];
  v7 = [v6 hk_isAfterOrEqualToDate:a1[4]];

  if (v7)
  {
    ++*(*(a1[8] + 8) + 24);
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v8 = [v5 identifier];
  v9 = HDAttachmentReferencePredicateForAttachmentIdentifier(v8);
  v10 = a1[5];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__HDAttachmentManager_reportDailyAnalyticsWithCoordinator_completion___block_invoke_3;
  v20[3] = &unk_278621878;
  v20[4] = &v22;
  v21 = 0;
  v11 = [HDAttachmentReferenceEntity enumerateReferencesWithPredicate:v9 transaction:v10 error:&v21 enumerationHandler:v20];
  v12 = v21;

  if (v11)
  {
    v13 = v23;
    v14 = v23[3];
    if (!v14)
    {
      ++*(*(a1[9] + 8) + 24);
      v14 = v13[3];
    }

    if (v14 >= 2)
    {
      ++*(*(a1[10] + 8) + 24);
    }

    v15 = 1;
  }

  else
  {
    v16 = v12;
    v17 = v16;
    v15 = v16 == 0;
    if (v16)
    {
      if (a3)
      {
        v18 = v16;
        *a3 = v17;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  _Block_object_dispose(&v22, 8);

  return v15;
}

BOOL __70__HDAttachmentManager_reportDailyAnalyticsWithCoordinator_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([v5 type])
  {
LABEL_8:
    if ([v5 type] == 1)
    {
      ++*(*(*(a1 + 72) + 8) + 24);
      v15 = [v5 creationDate];
      v16 = [v15 hk_isAfterOrEqualToDate:*(a1 + 32)];

      if (v16)
      {
        ++*(*(*(a1 + 80) + 8) + 24);
      }
    }

    v17 = 1;
    goto LABEL_12;
  }

  ++*(*(*(a1 + 48) + 8) + 24);
  v6 = [v5 creationDate];
  v7 = [v6 hk_isAfterOrEqualToDate:*(a1 + 32)];

  if (v7)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
  }

  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = [v5 objectIdentifier];
  v10 = [v8 initWithUUIDString:v9];

  if (v10)
  {
    v11 = [*(a1 + 40) protectedDatabase];
    v12 = HDDataEntityPredicateForDataUUID();
    v23 = 0;
    v13 = [(HDDataEntity *)HDSampleEntity anyInDatabase:v11 predicate:v12 error:&v23];
    v14 = v23;

    if (!v13)
    {
      ++*(*(*(a1 + 64) + 8) + 24);
    }

    goto LABEL_8;
  }

  v19 = MEMORY[0x277CCA9B8];
  v20 = [v5 objectIdentifier];
  v21 = [v19 hk_error:3 format:{@"reference objectIdentifier '%@' is not a UUID string", v20}];
  v17 = v21 == 0;
  if (v21)
  {
    if (a3)
    {
      v22 = v21;
      *a3 = v21;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_12:
  return v17;
}

- (id)schemaProviderForIdentifier:(id)identifier error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_schemaProvidersByIdentifier objectForKeyedSubscript:identifierCopy];
  if (v7)
  {
    v8 = v7;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    selfCopy = self;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    schemaProviderClasses = [(HDAttachmentManager *)self schemaProviderClasses];
    v10 = [schemaProviderClasses countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v8 = 0;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(schemaProviderClasses);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          if ([v14 conformsToProtocol:&unk_283CC7B40])
          {
            schemaIdentifier = [v14 schemaIdentifier];
            v16 = [schemaIdentifier isEqualToString:identifierCopy];

            if (v16)
            {
              v17 = objc_alloc_init(v14);

              [(NSMutableDictionary *)selfCopy->_schemaProvidersByIdentifier setObject:v17 forKeyedSubscript:identifierCopy];
              v8 = v17;
            }
          }
        }

        v11 = [schemaProviderClasses countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    else
    {
      v8 = 0;
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
    if (!v8)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"No schema provider found for identifier '%@'", identifierCopy}];
    }
  }

  return v8;
}

- (int64_t)supportedSchemaVersionForReference:(id)reference
{
  v31 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  schemaIdentifier = [referenceCopy schemaIdentifier];
  v22 = 0;
  v6 = [(HDAttachmentManager *)self schemaProviderForIdentifier:schemaIdentifier error:&v22];
  v7 = v22;

  if (v6)
  {
    objectIdentifier = [referenceCopy objectIdentifier];
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_profile);
    }

    else
    {
      WeakRetained = 0;
    }

    v21 = 0;
    v10 = [v6 schemaVersionForObjectIdentifier:objectIdentifier profile:WeakRetained error:&v21];
    v11 = v21;

    if (!v10)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v18 = v12;
        schemaIdentifier2 = [referenceCopy schemaIdentifier];
        identifier = [referenceCopy identifier];
        *buf = 138544130;
        selfCopy2 = self;
        v25 = 2114;
        v26 = schemaIdentifier2;
        v27 = 2114;
        v28 = identifier;
        v29 = 2114;
        v30 = v11;
        _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get schema version for schema identifier %{public}@ for reference %{public}@, error: %{public}@", buf, 0x2Au);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v15 = v13;
      schemaIdentifier3 = [referenceCopy schemaIdentifier];
      identifier2 = [referenceCopy identifier];
      *buf = 138544130;
      selfCopy2 = self;
      v25 = 2114;
      v26 = schemaIdentifier3;
      v27 = 2114;
      v28 = identifier2;
      v29 = 2114;
      v30 = v7;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@ Failed to find attachment schema provider %{public}@ for reference %{public}@: %{public}@", buf, 0x2Au);
    }

    v10 = -1;
  }

  return v10;
}

uint64_t __118__HDAttachmentManager__attachmentReferencesForObjectIdentifier_schemaIdentifier_transaction_error_enumerationHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 attachmentIdentifier];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v16 = 0;
  v8 = [HDAttachmentEntity attachmentWithIdentifier:v6 profile:WeakRetained error:&v16];
  v9 = v16;

  if (!v8)
  {
    if (v9)
    {
      v9 = v9;
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = [v5 attachmentIdentifier];
      v13 = [v11 hk_error:118 format:{@"The attachment with identifier %@ was not found.", v12}];

      v9 = v13;
      if (!v9)
      {
LABEL_10:
        v10 = 0;
        goto LABEL_11;
      }
    }

    if (a3)
    {
      v14 = v9;
      *a3 = v9;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_10;
  }

  v10 = (*(*(a1 + 40) + 16))();
LABEL_11:

  return v10;
}

- (void)runMaintenanceOperationIfNeeded
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [HDKeyValueDomain alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [(HDKeyValueDomain *)v3 initWithCategory:0 domainName:@"attachment-manager" profile:WeakRetained];

  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
  v20 = 0;
  v7 = [(HDKeyValueDomain *)v5 dateForKey:@"file-cleanup" error:&v20];
  v8 = v20;
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    if (!v7 || [v6 hk_isAfterDate:v7])
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __54__HDAttachmentManager_runMaintenanceOperationIfNeeded__block_invoke;
      v19[3] = &unk_278613968;
      v19[4] = self;
      v13 = [HDMaintenanceOperation maintenanceOperationWithName:v12 queue:0 synchronousBlock:v19];

      v14 = objc_loadWeakRetained(&self->_profile);
      daemon = [v14 daemon];
      maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
      [maintenanceWorkCoordinator enqueueMaintenanceOperation:v13];
    }
  }

  else
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC280];
    if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v23 = 2114;
      v24 = v9;
      _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Failed to lookup attachment cleanup date with error %{public}@", buf, 0x16u);
    }
  }
}

void __54__HDAttachmentManager_runMaintenanceOperationIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cleanupAttachmentsFolder];
  v2 = [*(a1 + 32) unitTestdidCompleteFileCleanup];
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

- (void)_cleanupAttachmentsFolder
{
  v24 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = MEMORY[0x277CCC280];
  v4 = *MEMORY[0x277CCC280];
  if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy3 = self;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Cleaning up attachments folder", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v18[4] = self;
  v19 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__HDAttachmentManager__cleanupAttachmentsFolder__block_invoke;
  v18[3] = &unk_278616048;
  v7 = [(HDHealthEntity *)HDAttachmentEntity performWriteTransactionWithHealthDatabase:database error:&v19 block:v18];
  v8 = v19;

  if (v7)
  {
    v9 = [HDKeyValueDomain alloc];
    v10 = objc_loadWeakRetained(&self->_profile);
    v11 = [(HDKeyValueDomain *)v9 initWithCategory:0 domainName:@"attachment-manager" profile:v10];

    date = [MEMORY[0x277CBEAA8] date];
    v17 = 0;
    v13 = [(HDKeyValueDomain *)v11 setDate:date forKey:@"file-cleanup" error:&v17];
    v14 = v17;

    if (!v13)
    {
      _HKInitializeLogging();
      v15 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v22 = 2114;
        v23 = v14;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to set cleanup date %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v16 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v22 = 2114;
      v23 = v8;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Cleanup failed with error %{public}@", buf, 0x16u);
    }
  }
}

uint64_t __48__HDAttachmentManager__cleanupAttachmentsFolder__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v6 = MEMORY[0x277CCAA00];
  v7 = a2;
  v8 = objc_alloc_init(v6);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __78__HDAttachmentManager__moveFilesWithAttachmentsToConfirmedDirectory_errorOut___block_invoke;
  v25[3] = &unk_278621940;
  v25[4] = v3;
  v26 = v8;
  v9 = v8;
  LODWORD(v6) = [HDAttachmentEntity enumerateAttachmentsWithPredicate:0 transaction:v7 error:a3 enumerationHandler:v25];

  if (!v6)
  {
    return 0;
  }

  v10 = *(a1 + 32);
  if (!v10)
  {
    return 0;
  }

  v11 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v12 = [v10 unconfirmedFilesDirectoryURL];
  v13 = [v11 contentsOfDirectoryAtURL:v12 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:4 error:a3];

  if (v13)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if (![v11 removeItemAtURL:*(*(&v21 + 1) + 8 * v18) error:{a3, v21}])
          {
            v19 = 0;
            goto LABEL_16;
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v19 = 1;
LABEL_16:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

BOOL __78__HDAttachmentManager__moveFilesWithAttachmentsToConfirmedDirectory_errorOut___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) unconfirmedFilesDirectoryURL];
  v7 = [v5 identifier];
  v8 = [v7 UUIDString];
  v9 = [v6 URLByAppendingPathComponent:v8];

  v10 = *(a1 + 40);
  v11 = [v9 path];
  LODWORD(v10) = [v10 fileExistsAtPath:v11];

  if (v10)
  {
    v12 = [*(a1 + 32) filesDirectoryURL];
    v13 = [v5 identifier];
    v14 = [v13 UUIDString];
    v15 = [v12 URLByAppendingPathComponent:v14];

    v16 = *(a1 + 40);
    v27 = 0;
    LOBYTE(v13) = [v16 moveItemAtURL:v9 toURL:v15 error:&v27];
    v17 = v27;
    if (v13)
    {
      v18 = 1;
    }

    else
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC280];
      if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 32);
        v24 = v19;
        v25 = [v15 path];
        v26 = [v9 path];
        *buf = 138544130;
        v29 = v23;
        v30 = 2114;
        v31 = v25;
        v32 = 2114;
        v33 = v26;
        v34 = 2114;
        v35 = v17;
        _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to move file from %{public}@ -> %{public}@ directory with error %{public}@", buf, 0x2Au);
      }

      v20 = v17;
      v18 = v20 == 0;
      if (v20)
      {
        if (a3)
        {
          v21 = v20;
          *a3 = v20;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

@end
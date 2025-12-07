@interface BUZipFileArchive
+ (BOOL)extractArchiveFromURL:(id)l toURL:(id)rL options:(unint64_t)options error:(id *)error;
+ (BOOL)isZipArchiveAtFD:(int)d;
+ (BOOL)isZipArchiveAtURL:(id)l error:(id *)error;
+ (id)zipArchiveFromURL:(id)l options:(unint64_t)options error:(id *)error;
+ (void)readArchiveFromURL:(id)l options:(unint64_t)options queue:(id)queue completion:(id)completion;
- (BOOL)copyToTemporaryLocationRelativeToURL:(id)l error:(id *)error;
- (BOOL)isValid;
- (BOOL)openWithURL:(id)l error:(id *)error;
- (BOOL)reopenWithTemporaryURL:(id)l error:(id *)error;
- (BUZipFileArchive)initWithWriter:(id)writer forReadingFromURL:(id)l options:(unint64_t)options error:(id *)error;
- (id)debugDescription;
- (id)initForReadingFromURL:(id)l options:(unint64_t)options error:(id *)error;
- (id)newArchiveReadChannel;
- (unint64_t)archiveLength;
- (void)createTemporaryDirectoryRelativeToURL:(id)l;
- (void)dealloc;
- (void)removeTemporaryDirectory;
@end

@implementation BUZipFileArchive

+ (BOOL)isZipArchiveAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v9 = objc_msgSend_path(lCopy, v7, v8);
  if (!objc_msgSend_length(v9, v10, v11))
  {
    v22 = 0;
    goto LABEL_7;
  }

  v14 = objc_msgSend_path(lCopy, v12, v13);
  v15 = v14;
  v18 = objc_msgSend_fileSystemRepresentation(v15, v16, v17);
  v19 = open(v18, 0, 0);

  if ((v19 & 0x80000000) != 0)
  {
    v23 = MEMORY[0x277CCA9B8];
    v24 = __error();
    v22 = objc_msgSend_bu_fileReadPOSIXErrorWithNumber_userInfo_(v23, v25, *v24, 0);
LABEL_7:
    isZipArchiveAtFD = 0;
    if (!error)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  isZipArchiveAtFD = objc_msgSend_isZipArchiveAtFD_(self, v20, v19);
  close(v19);
  v22 = 0;
  if (!error)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((isZipArchiveAtFD & 1) == 0)
  {
    if (v22)
    {
      v26 = v22;
      *error = v22;
    }

    else
    {
      v27 = objc_msgSend_bu_fileReadUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v12, 0);
      *error = v27;
    }
  }

LABEL_12:

  return isZipArchiveAtFD;
}

+ (BOOL)isZipArchiveAtFD:(int)d
{
  v4 = lseek(d, 0, 1);
  v5 = v4;
  if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    if (lseek(d, 0, 0) == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  if (v4 != -1)
  {
LABEL_5:
    if (read(d, &v9, 4uLL) == 4)
    {
      v7 = v9 == 67324752 || v9 == 101010256;
      return lseek(d, v5, 0) != -1 && v7;
    }

LABEL_12:
    v7 = 0;
    return lseek(d, v5, 0) != -1 && v7;
  }

  return 0;
}

+ (void)readArchiveFromURL:(id)l options:(unint64_t)options queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  lCopy = l;
  v13 = [self alloc];
  v21 = 0;
  v15 = objc_msgSend_initForReadingFromURL_options_error_(v13, v14, lCopy, options, &v21);

  v17 = v21;
  if (v15)
  {
    objc_msgSend_readArchiveWithQueue_completion_(v15, v16, queueCopy, completionCopy);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_241DB7FE8;
    block[3] = &unk_278D1CEA0;
    v20 = completionCopy;
    v19 = v17;
    dispatch_async(queueCopy, block);

    queueCopy = v20;
  }
}

+ (id)zipArchiveFromURL:(id)l options:(unint64_t)options error:(id *)error
{
  lCopy = l;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_241DB82D8;
  v35 = sub_241DB82E8;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_241DB82D8;
  v29 = sub_241DB82E8;
  v30 = 0;
  obj = 0;
  isZipArchiveAtURL_error = objc_msgSend_isZipArchiveAtURL_error_(self, v9, lCopy, &obj);
  objc_storeStrong(&v30, obj);
  if (isZipArchiveAtURL_error)
  {
    v12 = dispatch_group_create();
    dispatch_group_enter(v12);
    v13 = dispatch_get_global_queue(0, 0);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_241DB82F0;
    v20[3] = &unk_278D1D3C0;
    v22 = &v31;
    v23 = &v25;
    v14 = v12;
    v21 = v14;
    objc_msgSend_readArchiveFromURL_options_queue_completion_(self, v15, lCopy, options, v13, v20);
    dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (error && !v32[5])
  {
    v16 = v26[5];
    if (v16)
    {
      *error = v16;
    }

    else
    {
      v17 = objc_msgSend_bu_fileReadUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v11, 0);
      *error = v17;
    }
  }

  v18 = v32[5];
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);

  return v18;
}

- (id)initForReadingFromURL:(id)l options:(unint64_t)options error:(id *)error
{
  lCopy = l;
  v16.receiver = self;
  v16.super_class = BUZipFileArchive;
  v9 = [(BUZipArchive *)&v16 initWithOptions:options];
  v10 = v9;
  if (v9)
  {
    v11 = BUZipLog(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_241DCFE28(v10, lCopy, v11);
    }

    v12 = dispatch_queue_create("BUZipFileArchive.Access", 0);
    accessQueue = v10->_accessQueue;
    v10->_accessQueue = v12;

    if ((objc_msgSend_openWithURL_error_(v10, v14, lCopy, error) & 1) == 0)
    {

      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)openWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = BUZipLog(lCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_241DCFEBC(self, lCopy, v7);
  }

  v10 = objc_msgSend_copy(lCopy, v8, v9);
  URL = self->_URL;
  self->_URL = v10;

  v12 = *MEMORY[0x277CBE838];
  objc_msgSend_removeCachedResourceValueForKey_(lCopy, v13, *MEMORY[0x277CBE838]);
  v46 = 0;
  v47 = 0;
  ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(lCopy, v14, &v47, v12, &v46);
  v16 = v47;
  v17 = v46;
  v20 = v17;
  if (!ResourceValue_forKey_error)
  {
    v37 = BUZipLog(v17);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_241DCFF50(lCopy, v20, v37);
    }

LABEL_15:

    v36 = 0;
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  self->_archiveLength = objc_msgSend_unsignedLongLongValue(v16, v18, v19);
  v23 = objc_msgSend_path(lCopy, v21, v22);
  v24 = v23;
  v27 = objc_msgSend_fileSystemRepresentation(v24, v25, v26);
  v28 = open(v27, 0, 0);

  if ((v28 & 0x80000000) != 0)
  {
    v38 = MEMORY[0x277CCA9B8];
    v39 = __error();
    v41 = objc_msgSend_bu_fileReadPOSIXErrorWithNumber_userInfo_(v38, v40, *v39, 0);
LABEL_14:
    v37 = v20;
    v20 = v41;
    goto LABEL_15;
  }

  v29 = [BUZipFileDescriptorWrapper alloc];
  v31 = objc_msgSend_initWithFileDescriptor_queue_(v29, v30, v28, self->_accessQueue);
  fdWrapper = self->_fdWrapper;
  self->_fdWrapper = v31;

  if (!self->_fdWrapper)
  {
    v41 = objc_msgSend_bu_fileReadUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v33, 0);
    goto LABEL_14;
  }

  v34 = objc_opt_class();
  if ((objc_msgSend_isZipArchiveAtFD_(v34, v35, v28) & 1) == 0)
  {
    v42 = self->_fdWrapper;
    self->_fdWrapper = 0;

    v41 = objc_msgSend_bu_fileReadCorruptedFileErrorWithUserInfo_(MEMORY[0x277CCA9B8], v43, 0);
    goto LABEL_14;
  }

  v36 = 1;
  if (!error)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (v20)
  {
    v44 = v20;
    *error = v20;
  }

LABEL_18:

  return v36;
}

- (BUZipFileArchive)initWithWriter:(id)writer forReadingFromURL:(id)l options:(unint64_t)options error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  writerCopy = writer;
  lCopy = l;
  v13 = objc_msgSend_initForReadingFromURL_options_error_(self, v12, lCopy, options, error);
  if (v13)
  {
    v14 = v13;
    v15 = BUZipLog(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v38 = v14;
      v39 = 2112;
      v40 = writerCopy;
      v41 = 2112;
      v42 = lCopy;
      _os_log_debug_impl(&dword_241DA6000, v15, OS_LOG_TYPE_DEBUG, "%@: initWithWriter: %@, atURL: %@", buf, 0x20u);
    }

    v18 = objc_msgSend_archiveLength(v14, v16, v17);
    v21 = objc_msgSend_archiveLength(writerCopy, v19, v20);
    if (v18 == v21)
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_241DB88E0;
      v35[3] = &unk_278D1D3E8;
      v22 = v14;
      v36 = v22;
      objc_msgSend_enumerateEntriesUsingBlock_(writerCopy, v23, v35);
      v14 = v36;
    }

    else
    {
      v24 = BUZipLog(v21);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_msgSend_path(lCopy, v25, v26);
        v31 = objc_msgSend_archiveLength(v14, v29, v30);
        v34 = objc_msgSend_archiveLength(writerCopy, v32, v33);
        *buf = 138412802;
        v38 = v28;
        v39 = 2048;
        v40 = v31;
        v41 = 2048;
        v42 = v34;
        _os_log_error_impl(&dword_241DA6000, v24, OS_LOG_TYPE_ERROR, "Length of archive at %@ doesn't match archive length of writer. %llu != %llu", buf, 0x20u);
      }

      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)dealloc
{
  self->_archiveLength = 0;
  fdWrapper = self->_fdWrapper;
  self->_fdWrapper = 0;

  objc_msgSend_removeTemporaryDirectory(self, v4, v5);
  v6.receiver = self;
  v6.super_class = BUZipFileArchive;
  [(BUZipFileArchive *)&v6 dealloc];
}

- (void)createTemporaryDirectoryRelativeToURL:(id)l
{
  lCopy = l;
  if (!self->_temporaryDirectoryURL)
  {
    v20 = lCopy;
    if (!lCopy || (objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v5, v6), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend_URLForDirectory_inDomain_appropriateForURL_create_error_(v7, v8, 99, 1, v20, 1, 0), v9 = objc_claimAutoreleasedReturnValue(), v10 = self->_temporaryDirectoryURL, self->_temporaryDirectoryURL = v9, v10, v7, lCopy = v20, !self->_temporaryDirectoryURL))
    {
      v11 = [BUTemporaryDirectory alloc];
      v13 = objc_msgSend_initWithSignature_error_(v11, v12, @"ZipFile", 0);
      objc_msgSend_leakTemporaryDirectory(v13, v14, v15);
      v18 = objc_msgSend_URL(v13, v16, v17);
      temporaryDirectoryURL = self->_temporaryDirectoryURL;
      self->_temporaryDirectoryURL = v18;

      lCopy = v20;
    }
  }
}

- (void)removeTemporaryDirectory
{
  if (self->_temporaryDirectoryURL)
  {
    v4 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, v2);
    temporaryDirectoryURL = self->_temporaryDirectoryURL;
    v13 = 0;
    v7 = objc_msgSend_removeItemAtURL_error_(v4, v6, temporaryDirectoryURL, &v13);
    v8 = v13;

    if ((v7 & 1) == 0)
    {
      v10 = BUZipLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_241DD002C(v8, v10, v11);
      }
    }

    v12 = self->_temporaryDirectoryURL;
    self->_temporaryDirectoryURL = 0;
  }
}

- (BOOL)reopenWithTemporaryURL:(id)l error:(id *)error
{
  archiveLength = self->_archiveLength;
  fdWrapper = self->_fdWrapper;
  v9 = fdWrapper;
  self->_archiveLength = 0;
  v10 = self->_fdWrapper;
  self->_fdWrapper = 0;
  lCopy = l;

  v13 = objc_msgSend_openWithURL_error_(self, v12, lCopy, error);
  if ((v13 & 1) == 0)
  {
    self->_archiveLength = archiveLength;
    objc_storeStrong(&self->_fdWrapper, fdWrapper);
  }

  return v13;
}

- (BOOL)copyToTemporaryLocationRelativeToURL:(id)l error:(id *)error
{
  lCopy = l;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_241DB82D8;
  v26 = sub_241DB82E8;
  v27 = 0;
  accessQueue = self->_accessQueue;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = sub_241DB8D60;
  v17 = &unk_278D1D460;
  selfCopy = self;
  v8 = lCopy;
  v19 = v8;
  v20 = &v22;
  v21 = &v28;
  dispatch_sync(accessQueue, &v14);
  if (error && (v29[3] & 1) == 0)
  {
    v10 = v23[5];
    if (v10)
    {
      *error = v10;
    }

    else
    {
      v11 = objc_msgSend_bu_fileReadUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v9, 0, v14, v15, v16, v17, selfCopy);
      *error = v11;
    }
  }

  v12 = *(v29 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v12;
}

- (unint64_t)archiveLength
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = objc_msgSend_accessQueue(self, a2, v2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241DB943C;
  v7[3] = &unk_278D1CE00;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)newArchiveReadChannel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_241DB82D8;
  v10 = sub_241DB82E8;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_241DB9540;
  v5[3] = &unk_278D1D0D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isValid
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_241DB978C;
  v5[3] = &unk_278D1D0D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v5 = objc_msgSend_descriptionWithObject_class_(BUDescription, v4, self, v3);
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"%qu", self->_archiveLength);
  objc_msgSend_addField_value_(v5, v8, @"archiveLength", v7);

  v15.receiver = self;
  v15.super_class = BUZipFileArchive;
  v9 = [(BUZipArchive *)&v15 debugDescription];
  objc_msgSend_addFieldValue_(v5, v10, v9);

  v13 = objc_msgSend_descriptionString(v5, v11, v12);

  return v13;
}

+ (BOOL)extractArchiveFromURL:(id)l toURL:(id)rL options:(unint64_t)options error:(id *)error
{
  rLCopy = rL;
  v20 = 0;
  v11 = objc_msgSend_zipArchiveFromURL_options_error_(BUZipFileArchive, v10, l, options, &v20);
  v12 = v20;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    v15 = v12;
    v16 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v19 = 0;
  v16 = objc_msgSend_extractToURL_error_(v11, v13, rLCopy, &v19);
  v15 = v19;
  if (error)
  {
LABEL_8:
    v17 = v15;
    *error = v15;
  }

LABEL_9:

  return v16;
}

@end
@interface APStorageFile
+ (__sFILE)_constructFileForURL:(id)l forMode:(char *)mode error:(id *)error;
- (BOOL)addData:(id)data error:(id *)error;
- (BOOL)addObject:(id)object error:(id *)error;
- (id)_initForWritingFile:(__sFILE *)file forURL:(id)l loggablePath:(id)path;
- (id)_initWithFile:(__sFILE *)file forURL:(id)l loggablePath:(id)path;
- (id)allObjects;
- (id)initForAppendingAtURL:(id)l;
- (id)initForMode:(int64_t)mode atURL:(id)l;
- (id)initForReadingAtURL:(id)l;
- (id)initForWritingAtURL:(id)l;
- (id)nextObject;
- (id)nextObjectData;
- (void)_removeCorruptedFile:(id)file;
- (void)close;
- (void)dealloc;
@end

@implementation APStorageFile

- (void)dealloc
{
  objc_msgSend_close(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = APStorageFile;
  [(APStorageFile *)&v5 dealloc];
}

- (void)close
{
  fp = self->_fp;
  if (fp)
  {
    fclose(fp);
    self->_fp = 0;
  }
}

- (id)initForWritingAtURL:(id)l
{
  v28 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v8 = objc_msgSend_safePath(lCopy, v5, v6, v7);
  v12 = objc_msgSend_URLByDeletingLastPathComponent(lCopy, v9, v10, v11);
  v13 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v23 = 0;
  objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v13, v14, v12, 1, 0, &v23);
  v15 = v23;

  if (!v15)
  {
    v22 = 0;
    v18 = objc_msgSend__constructFileForURL_forMode_error_(APStorageFile, v16, lCopy, "w", &v22);
    v15 = v22;
    if (v18)
    {
      self = objc_msgSend__initForWritingFile_forURL_loggablePath_(self, v19, v18, lCopy, v8);
      selfCopy = self;
      goto LABEL_5;
    }

    v21 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138740227;
      v25 = v8;
      v26 = 2114;
      v27 = v15;
      _os_log_impl(&dword_1BADC1000, v21, OS_LOG_TYPE_ERROR, "ERROR: Unable to open file(%{sensitive}@): %{public}@", buf, 0x16u);
    }
  }

  selfCopy = 0;
LABEL_5:

  return selfCopy;
}

- (id)_initForWritingFile:(__sFILE *)file forURL:(id)l loggablePath:(id)path
{
  lCopy = l;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = APStorageFile;
  v11 = [(APStorageFile *)&v14 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    v11->_fp = file;
    objc_storeStrong(&v11->_fileURL, l);
    objc_storeStrong(p_isa + 3, path);
  }

  return p_isa;
}

- (id)initForAppendingAtURL:(id)l
{
  v42 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v9 = objc_msgSend_safePath(lCopy, v6, v7, v8);
  v13 = objc_msgSend_URLByDeletingLastPathComponent(lCopy, v10, v11, v12);
  v14 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v35 = 0;
  objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v14, v15, v13, 1, 0, &v35);
  v16 = v35;

  if (v16)
  {
    v18 = APLogForCategory(0x33uLL);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_4:

      v19 = 0;
      goto LABEL_5;
    }

LABEL_3:
    *buf = 138740227;
    v39 = v9;
    v40 = 2114;
    v41 = v16;
    _os_log_impl(&dword_1BADC1000, v18, OS_LOG_TYPE_ERROR, "ERROR: Unable to open file(%{sensitive}@): %{public}@", buf, 0x16u);
    goto LABEL_4;
  }

  v34 = 0;
  v21 = objc_msgSend__constructFileForURL_forMode_error_(APStorageFile, v17, lCopy, "a+", &v34);
  v16 = v34;
  if (!v21)
  {
    v18 = APLogForCategory(0x33uLL);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (fseek(v21, 0, 2))
  {
    v23 = MEMORY[0x1E696ABC0];
    v24 = kSFSFileInconsistencyError;
    v36 = @"reason";
    v37 = @"Could not seek to end of file.";
    v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, &v37, &v36, 1);
    v27 = objc_msgSend_errorWithDomain_code_userInfo_(v23, v26, @"com.apple.ap.StorageFileSystem", v24, v25);

    v28 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138740227;
      v39 = v9;
      v40 = 2114;
      v41 = v27;
      _os_log_impl(&dword_1BADC1000, v28, OS_LOG_TYPE_ERROR, "ERROR: Could not initialize file(%{sensitive}@) for appending: %{public}@", buf, 0x16u);
    }

    fclose(v21);
    v19 = 0;
    v16 = v27;
  }

  else
  {
    if (MEMORY[0x1BFB05610](v21))
    {
      v33.receiver = self;
      v33.super_class = APStorageFile;
      v30 = [(APStorageFile *)&v33 init];
      p_isa = &v30->super.isa;
      if (v30)
      {
        v30->_fp = v21;
        objc_storeStrong(&v30->_fileURL, l);
        objc_storeStrong(p_isa + 3, v9);
      }

      v32 = p_isa;
    }

    else
    {
      v32 = objc_msgSend__initForWritingFile_forURL_loggablePath_(self, v29, v21, lCopy, v9);
    }

    self = v32;
    v19 = v32;
  }

LABEL_5:

  return v19;
}

- (id)initForReadingAtURL:(id)l
{
  lCopy = l;
  v9 = objc_msgSend_safePath(lCopy, v6, v7, v8);
  v18 = 0;
  v11 = objc_msgSend__constructFileForURL_forMode_error_(APStorageFile, v10, lCopy, "r", &v18);
  v12 = v18;
  if (v11)
  {
    v17.receiver = self;
    v17.super_class = APStorageFile;
    v13 = [(APStorageFile *)&v17 init];
    p_isa = &v13->super.isa;
    if (v13)
    {
      v13->_fp = v11;
      objc_storeStrong(&v13->_fileURL, l);
      objc_storeStrong(p_isa + 3, v9);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)initForMode:(int64_t)mode atURL:(id)l
{
  lCopy = l;
  switch(mode)
  {
    case 'a':
      v9 = objc_msgSend_initForAppendingAtURL_(self, v6, lCopy, v7);
      goto LABEL_7;
    case 'w':
      v9 = objc_msgSend_initForWritingAtURL_(self, v6, lCopy, v7);
      goto LABEL_7;
    case 'r':
      v9 = objc_msgSend_initForReadingAtURL_(self, v6, lCopy, v7);
LABEL_7:
      self = v9;
      break;
  }

  return self;
}

- (id)_initWithFile:(__sFILE *)file forURL:(id)l loggablePath:(id)path
{
  lCopy = l;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = APStorageFile;
  v11 = [(APStorageFile *)&v14 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    v11->_fp = file;
    objc_storeStrong(&v11->_fileURL, l);
    objc_storeStrong(p_isa + 3, path);
  }

  return p_isa;
}

- (BOOL)addObject:(id)object error:(id *)error
{
  v7 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], a2, object, 1, error);
  if (v7)
  {
    v8 = objc_msgSend_addData_error_(self, v6, v7, error);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)allObjects
{
  v5 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3);
  v6 = objc_autoreleasePoolPush();
  v10 = objc_msgSend_nextObject(self, v7, v8, v9);
  if (v10)
  {
    v13 = v10;
    do
    {
      objc_msgSend_addObject_(v5, v11, v13, v12);
      objc_autoreleasePoolPop(v6);
      v6 = objc_autoreleasePoolPush();
      v17 = objc_msgSend_nextObject(self, v14, v15, v16);

      v13 = v17;
    }

    while (v17);
  }

  objc_autoreleasePoolPop(v6);
  v20 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DEC8], v18, v5, v19);

  return v20;
}

- (id)nextObject
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_nextObjectData(self, a2, v2, v3);
  if (v8)
  {
    v9 = objc_msgSend_classes(APSupportedSecureEncodedClass, v5, v6, v7);
    v30 = 0;
    v11 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x1E696ACD0], v10, v9, v8, &v30);
    v12 = v30;
    if (v12)
    {
      v13 = APLogForCategory(0x33uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        loggablePath = self->_loggablePath;
        *buf = 138478339;
        v34 = v15;
        v35 = 2117;
        v36 = loggablePath;
        v37 = 2114;
        v38 = v12;
        _os_log_impl(&dword_1BADC1000, v13, OS_LOG_TYPE_ERROR, "[%{private}@] Error occurred getting nextObject for file(%{sensitive}@):%{public}@", buf, 0x20u);
      }

      objc_msgSend__removeCorruptedFile_(self, v17, v12, v18);
      v31[0] = @"storage_error";
      v22 = objc_msgSend_debugDescription(v12, v19, v20, v21);
      v24 = v22;
      v25 = @"nil";
      if (v22)
      {
        v26 = v22;
      }

      else
      {
        v26 = @"nil";
      }

      v31[1] = @"storage_path";
      v32[0] = v26;
      if (self->_loggablePath)
      {
        v25 = self->_loggablePath;
      }

      v32[1] = v25;
      v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v23, v32, v31, 2);

      CreateDiagnosticReport(@"Error occurred getting nextObject for file", v27, @"Storage File");
      v28 = 0;
    }

    else
    {
      v28 = v11;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (BOOL)addData:(id)data error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v10 = objc_msgSend_length(dataCopy, v7, v8, v9);
  v14 = v10;
  if (v10 <= 0x10000)
  {
    if (!v10)
    {
LABEL_11:
      LOBYTE(error) = 1;
      goto LABEL_19;
    }
  }

  else
  {
    v15 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v49 = v14;
      v50 = 1024;
      v51 = 0x10000;
      _os_log_impl(&dword_1BADC1000, v15, OS_LOG_TYPE_ERROR, "EFS size warning: The data of length(%lu) is larger than %d.", buf, 0x12u);
    }
  }

  __ptr = objc_msgSend_length(dataCopy, v11, v12, v13);
  if (fwrite(&__ptr, 4uLL, 1uLL, self->_fp) == 1)
  {
    v16 = dataCopy;
    v20 = objc_msgSend_bytes(v16, v17, v18, v19);
    v24 = objc_msgSend_length(dataCopy, v21, v22, v23);
    v25 = fwrite(v20, 1uLL, v24, self->_fp);
    v26 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v49 = v25;
      _os_log_impl(&dword_1BADC1000, v26, OS_LOG_TYPE_DEBUG, "bytesWritten = %zu", buf, 0xCu);
    }

    if (v25 == objc_msgSend_length(dataCopy, v27, v28, v29))
    {
      fflush(self->_fp);
      goto LABEL_11;
    }

    if (!error)
    {
      goto LABEL_19;
    }

    v37 = MEMORY[0x1E696ABC0];
    v38 = kSFSFileInconsistencyError;
    v44 = @"reason";
    v45 = @"Bytes written did not match expectation for encrypted data.";
    v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v30, &v45, &v44, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v37, v40, @"com.apple.ap.StorageFileSystem", v38, v39);

    objc_msgSend_sendAnalyticError_domain_code_(APStorageManager, v41, @"Failed", @"SFS", 16104);
LABEL_18:
    LOBYTE(error) = 0;
    goto LABEL_19;
  }

  v31 = APLogForCategory(0x33uLL);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1BADC1000, v31, OS_LOG_TYPE_ERROR, "Can't write header for data object", buf, 2u);
  }

  if (error)
  {
    v33 = MEMORY[0x1E696ABC0];
    v34 = kSFSWritingToFileError;
    v46 = @"reason";
    v47 = @"Couldn't write header for data object.";
    v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v32, &v47, &v46, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v33, v36, @"com.apple.ap.StorageFileSystem", v34, v35);

    goto LABEL_18;
  }

LABEL_19:

  return error;
}

- (id)nextObjectData
{
  v89[2] = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_fp(self, a2, v2, v3))
  {
    v13 = 0;
    goto LABEL_19;
  }

  __ptr = 0;
  v5 = fread(&__ptr, 4uLL, 1uLL, self->_fp);
  v6 = *__error();
  if (feof(self->_fp))
  {
    v9 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      loggablePath = self->_loggablePath;
      *buf = 138478083;
      v81 = v11;
      v82 = 2117;
      v83 = loggablePath;
      _os_log_impl(&dword_1BADC1000, v9, OS_LOG_TYPE_INFO, "[%{private}@] Reached End of File for file(%{sensitive}@)", buf, 0x16u);
    }

    goto LABEL_17;
  }

  if (v5 != 1)
  {
    v27 = MEMORY[0x1E696ABC0];
    v28 = kSFSFileInconsistencyError;
    v89[0] = @"Could not read item header.";
    v88[0] = @"reason";
    v88[1] = @"code";
    v29 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v7, v6, v8);
    v89[1] = v29;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v30, v89, v88, 2);
    v9 = objc_msgSend_errorWithDomain_code_userInfo_(v27, v32, @"com.apple.ap.StorageFileSystem", v28, v31);

    v33 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = self->_loggablePath;
      *buf = 138478339;
      v81 = v35;
      v82 = 2117;
      v83 = v36;
      v84 = 2112;
      v85 = v9;
      _os_log_impl(&dword_1BADC1000, v33, OS_LOG_TYPE_ERROR, "[%{private}@] Read error occurred getting nextObjectData for file(%{sensitive}@):\n%@", buf, 0x20u);
    }

    objc_msgSend_sendAnalyticError_domain_code_(APStorageManager, v37, @"Failed", @"SFS", 16105);
    goto LABEL_16;
  }

  v14 = __ptr;
  if (__ptr > 0x40000)
  {
    v15 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v81) = v14;
      _os_log_impl(&dword_1BADC1000, v15, OS_LOG_TYPE_ERROR, "data appears to be corrupt, data.length(%d) is too big.  We are aborting reading file data.", buf, 8u);
    }

    v16 = MEMORY[0x1E696ABC0];
    v17 = kSFSFileInconsistencyError;
    v86 = @"reason";
    v87 = @"Data is larger than intended for read.";
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, &v87, &v86, 1);
    v9 = objc_msgSend_errorWithDomain_code_userInfo_(v16, v20, @"com.apple.ap.StorageFileSystem", v17, v19);

    v21 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = self->_loggablePath;
      *buf = 138478339;
      v81 = v23;
      v82 = 2117;
      v83 = v24;
      v84 = 2114;
      v85 = v9;
      _os_log_impl(&dword_1BADC1000, v21, OS_LOG_TYPE_ERROR, "[%{private}@] Header error occurred getting nextObjectData for file(%{sensitive}@):\n%{public}@", buf, 0x20u);
    }

LABEL_16:
    objc_msgSend__removeCorruptedFile_(self, v25, v9, v26);
    goto LABEL_17;
  }

  v39 = objc_alloc(MEMORY[0x1E695DF88]);
  v9 = objc_msgSend_initWithCapacity_(v39, v40, v14, v41);
  v45 = 0;
  if (v14)
  {
    while (1)
    {
      v46 = objc_autoreleasePoolPush();
      v47 = v14 - v45 >= 0x40 ? 64 : v14 - v45;
      v48 = fread(buf, 1uLL, v47, self->_fp);
      if (v48 != v47)
      {
        break;
      }

      v50 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v49, buf, v47, 0);
      objc_msgSend_appendData_(v9, v51, v50, v52);
      v56 = objc_msgSend_length(v50, v53, v54, v55);

      v45 += v56;
      objc_autoreleasePoolPop(v46);
      if (v45 >= v14)
      {
        goto LABEL_30;
      }
    }

    v45 += v48;
    objc_autoreleasePoolPop(v46);
  }

LABEL_30:
  if (v45 == v14)
  {
    v13 = v9;
    goto LABEL_18;
  }

  v57 = MEMORY[0x1E696AEC0];
  v58 = objc_msgSend_length(v9, v42, v43, v44);
  v61 = objc_msgSend_stringWithFormat_(v57, v59, @"The data is wrong length(%lu) not (%lu).", v60, v58, v14);
  v62 = MEMORY[0x1E696ABC0];
  v63 = kSFSFileInconsistencyError;
  v78 = @"reason";
  v79 = v61;
  v65 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v64, &v79, &v78, 1);
  v67 = objc_msgSend_errorWithDomain_code_userInfo_(v62, v66, @"com.apple.ap.StorageFileSystem", v63, v65);

  v68 = APLogForCategory(0x33uLL);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
  {
    v69 = objc_opt_class();
    v70 = NSStringFromClass(v69);
    *v74 = 138478083;
    v75 = v70;
    v76 = 2114;
    v77 = v67;
    _os_log_impl(&dword_1BADC1000, v68, OS_LOG_TYPE_ERROR, "[%{private}@] %{public}@", v74, 0x16u);
  }

  objc_msgSend__removeCorruptedFile_(self, v71, v67, v72);
LABEL_17:
  v13 = 0;
LABEL_18:

LABEL_19:

  return v13;
}

+ (__sFILE)_constructFileForURL:(id)l forMode:(char *)mode error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v11 = objc_msgSend_fileSystemRepresentation(lCopy, v8, v9, v10);
  v12 = fopen(v11, mode);
  v14 = v12;
  if (error && !v12)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = kSFSInvalidPathError;
    v20 = @"reason";
    v21[0] = @"Invalid path for SFS.";
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v21, &v20, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v15, v18, @"com.apple.ap.StorageFileSystem", v16, v17);
  }

  return v14;
}

- (void)_removeCorruptedFile:(id)file
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = APLogForCategory(0x33uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    loggablePath = self->_loggablePath;
    *buf = 138478083;
    v22 = v6;
    v23 = 2117;
    v24 = loggablePath;
    _os_log_impl(&dword_1BADC1000, v4, OS_LOG_TYPE_ERROR, "[%{private}@] Removing corrupted file at path: %{sensitive}@", buf, 0x16u);
  }

  objc_msgSend_close(self, v8, v9, v10);
  v11 = objc_alloc_init(MEMORY[0x1E696AC08]);
  fileURL = self->_fileURL;
  v20 = 0;
  objc_msgSend_removeItemAtURL_error_(v11, v13, fileURL, &v20);
  v14 = v20;

  if (v14)
  {
    v16 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = self->_loggablePath;
      *buf = 138478339;
      v22 = v18;
      v23 = 2117;
      v24 = v19;
      v25 = 2114;
      v26 = v14;
      _os_log_impl(&dword_1BADC1000, v16, OS_LOG_TYPE_ERROR, "[%{private}@] Failed to remove file(%{sensitive}@):\n%{public}@", buf, 0x20u);
    }
  }

  objc_msgSend_sendAnalyticError_domain_code_(APStorageManager, v15, @"Failed", @"SFS", 16106);
}

@end
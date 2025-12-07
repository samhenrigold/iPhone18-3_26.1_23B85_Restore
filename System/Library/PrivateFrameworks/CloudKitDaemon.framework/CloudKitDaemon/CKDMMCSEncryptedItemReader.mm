@interface CKDMMCSEncryptedItemReader
- (BOOL)closeWithError:(id *)error;
- (BOOL)openWithError:(id *)error;
- (BOOL)readBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesRead:(unint64_t *)read error:(id *)error;
- (BOOL)writeBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesWritten:(unint64_t *)written error:(id *)error;
- (CKDMMCSEncryptedItemReader)initWithMMCSItem:(id)item MMCSRequest:(id)request;
- (id)getFileMetadataWithError:(id *)error;
- (void)dealloc;
@end

@implementation CKDMMCSEncryptedItemReader

- (CKDMMCSEncryptedItemReader)initWithMMCSItem:(id)item MMCSRequest:(id)request
{
  itemCopy = item;
  requestCopy = request;
  v12.receiver = self;
  v12.super_class = CKDMMCSEncryptedItemReader;
  v9 = [(CKDMMCSEncryptedItemReader *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_MMCSItem, item);
    objc_storeStrong(&v10->_MMCSRequest, request);
  }

  return v10;
}

- (void)dealloc
{
  objc_msgSend_closeWithError_(self, a2, 0);
  v3.receiver = self;
  v3.super_class = CKDMMCSEncryptedItemReader;
  [(CKDMMCSEncryptedItemReader *)&v3 dealloc];
}

- (BOOL)openWithError:(id *)error
{
  v133 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_MMCSRequest(self, a2, error);
  v11 = objc_msgSend_MMCSItem(self, v7, v8);
  if (!v11)
  {
    v109 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v109, v110, a2, self, @"CKDMMCSEncryptedItemReader.m", 52, @"Expected non-nil MMCS item for %@", self);
  }

  v14 = objc_msgSend_handle(self, v9, v10);
  v122 = v14;
  if (v14)
  {
    v111 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v111, v112, a2, self, @"CKDMMCSEncryptedItemReader.m", 54, @"Expected an invalid handle for %@", self);
  }

  v15 = objc_msgSend_fileURL(v11, v12, v13);
  v18 = objc_msgSend_path(v15, v16, v17);

  v21 = objc_msgSend_operation(v6, v19, v20);
  v121 = 0;
  v23 = objc_msgSend_openWithOperation_error_(v11, v22, v21, &v121);
  v24 = v121;
  v27 = v24;
  if (v23)
  {
    errorCopy = error;
    v28 = objc_msgSend_fileHandle(v23, v25, v26);
    v31 = objc_msgSend_encryptedFileHandle(v23, v29, v30);
    v34 = v31;
    v120 = v21;
    if (!v28 || !v31 || (objc_msgSend_fileDescriptor(v31, v32, v33) & 0x80000000) != 0)
    {
      *v116 = v6;
      v118 = v11;
      v38 = MEMORY[0x277CBC560];
      v39 = *MEMORY[0x277CBC120];
      v40 = objc_msgSend_fileHandle(v23, v32, v33);
      v114 = v23;
      v43 = objc_msgSend_encryptedFileHandle(v23, v41, v42);
      v44 = v39;
      v45 = v18;
      v47 = objc_msgSend_errorWithDomain_code_path_format_(v38, v46, v44, 3001, v18, @"Invalid file handles, fileHandle:%@, encryptedFileHandle:%@", v40, v43);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v48 = *MEMORY[0x277CBC830];
      v6 = *v116;
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v75 = v48;
        v78 = objc_msgSend_itemID(v118, v76, v77);
        v81 = objc_msgSend_operationID(v120, v79, v80);
        *buf = 134218754;
        v124 = v78;
        v18 = v45;
        v125 = 2048;
        v126 = v14;
        v127 = 2114;
        v128 = v81;
        v129 = 2112;
        *v130 = v47;
        _os_log_error_impl(&dword_22506F000, v75, OS_LOG_TYPE_ERROR, "Failed to open itemID:%llu, handle:%p, operationID:%{public}@: %@", buf, 0x2Au);

        v6 = *v116;
      }

      if (errorCopy)
      {
        v49 = v47;
        v50 = v47;
        v51 = 0;
        *errorCopy = v47;
        v11 = v118;
        v21 = v120;
      }

      else
      {
        v51 = 0;
        v11 = v118;
        v21 = v120;
        v49 = v47;
      }

      v23 = v114;
      goto LABEL_22;
    }

    v113 = v18;
    if ((objc_msgSend_fileDescriptor(v28, v32, v33) & 0x80000000) != 0)
    {
      v115 = -1;
    }

    else
    {
      v37 = objc_msgSend_fileDescriptor(v28, v35, v36);
      v115 = dup(v37);
      if (v115 < 0)
      {
        v117 = -1;
        goto LABEL_28;
      }
    }

    v54 = objc_msgSend_fileDescriptor(v34, v35, v36);
    v117 = dup(v54);
    if ((v117 & 0x80000000) == 0)
    {
      v57 = 0;
      v58 = 1;
      goto LABEL_29;
    }

LABEL_28:
    v58 = 0;
    v57 = *__error();
LABEL_29:
    if ((objc_msgSend_fileDescriptor(v28, v55, v56) & 0x80000000) == 0)
    {
      objc_msgSend_closeFile(v28, v59, v60);
    }

    if ((objc_msgSend_fileDescriptor(v34, v59, v60) & 0x80000000) == 0)
    {
      objc_msgSend_closeFile(v34, v61, v62);
    }

    if (v58)
    {
      v63 = v117;
      v64 = MKBBackupCreateFromFileDescriptors();
      if (v64)
      {
        v18 = v113;
        v49 = objc_msgSend_errorWithDomain_code_path_format_(MEMORY[0x277CBC560], v65, *MEMORY[0x277CBC120], 3001, v113, @"MKBBackupCreateFromFileDescriptors failed with rc:%d", v64);

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v66 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v89 = v66;
          v92 = objc_msgSend_itemID(v11, v90, v91);
          v93 = v11;
          v94 = v6;
          v95 = v122;
          v98 = objc_msgSend_operationID(v120, v96, v97);
          *buf = 134219266;
          v124 = v92;
          v125 = 2048;
          v126 = v95;
          v6 = v94;
          v11 = v93;
          v63 = v117;
          v127 = 2114;
          v128 = v98;
          v129 = 1024;
          *v130 = v115;
          *&v130[4] = 1024;
          *&v130[6] = v117;
          v131 = 2114;
          v132 = v49;
          _os_log_error_impl(&dword_22506F000, v89, OS_LOG_TYPE_ERROR, "MKBBackupCreateFromFileDescriptors failed for itemID:%llu, handle:%p, operationID:%{public}@, fd:%d, efd:%d: %{public}@", buf, 0x36u);

          v18 = v113;
        }

        close(v63);
        if ((v115 & 0x80000000) == 0)
        {
          close(v115);
        }

        v34 = 0;
        v28 = 0;
        v51 = 0;
      }

      else
      {
        objc_msgSend_setHandle_(self, v65, v122);
        v18 = v113;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v74 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v99 = v74;
          v102 = objc_msgSend_itemID(v11, v100, v101);
          v103 = v11;
          v104 = v6;
          v105 = v122;
          v21 = v120;
          v108 = objc_msgSend_operationID(v120, v106, v107);
          *buf = 134219010;
          v124 = v102;
          v125 = 2048;
          v126 = v105;
          v6 = v104;
          v11 = v103;
          v127 = 2114;
          v128 = v108;
          v129 = 1024;
          *v130 = v115;
          *&v130[4] = 1024;
          *&v130[6] = v117;
          _os_log_debug_impl(&dword_22506F000, v99, OS_LOG_TYPE_DEBUG, "open, itemID:%llu, handle:%p, operationID:%{public}@, fd:%d, efd:%d", buf, 0x2Cu);

          v18 = v113;
          v34 = 0;
          v28 = 0;
          v51 = 1;
          v49 = v27;
          goto LABEL_22;
        }

        v34 = 0;
        v28 = 0;
        v51 = 1;
        v49 = v27;
      }

      v21 = v120;
LABEL_22:

      v27 = v49;
      goto LABEL_23;
    }

    v67 = MEMORY[0x277CBC560];
    v68 = *MEMORY[0x277CBC120];
    v69 = strerror(v57);
    v70 = v68;
    v18 = v113;
    v49 = objc_msgSend_errorWithDomain_code_path_format_(v67, v71, v70, 3001, v113, @"dup failed, %d (%s)", v57, v69);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v72 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v82 = v72;
      v85 = objc_msgSend_itemID(v11, v83, v84);
      v88 = objc_msgSend_operationID(v120, v86, v87);
      *buf = 134218754;
      v124 = v85;
      v125 = 2048;
      v126 = v14;
      v127 = 2114;
      v128 = v88;
      v129 = 2112;
      *v130 = v49;
      _os_log_error_impl(&dword_22506F000, v82, OS_LOG_TYPE_ERROR, "Failed to dup file descriptors for itemID:%llu, handle:%p, operationID:%{public}@: %@", buf, 0x2Au);

      v18 = v113;
      if (!errorCopy)
      {
        goto LABEL_47;
      }
    }

    else if (!errorCopy)
    {
LABEL_47:
      v21 = v120;
      if ((v117 & 0x80000000) == 0)
      {
        close(v117);
      }

      if ((v115 & 0x80000000) == 0)
      {
        close(v115);
      }

      v34 = 0;
      v28 = 0;
      v51 = 0;
      goto LABEL_22;
    }

    v73 = v49;
    *errorCopy = v49;
    goto LABEL_47;
  }

  if (error)
  {
    v52 = v24;
    v51 = 0;
    *error = v27;
  }

  else
  {
    v51 = 0;
  }

LABEL_23:

  return v51;
}

- (BOOL)closeWithError:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_MMCSItem(self, a2, error);
  v7 = objc_msgSend_handle(self, v5, v6);
  if (v7)
  {
    v8 = v7;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v12 = v9;
      *buf = 134218240;
      v16 = objc_msgSend_itemID(v4, v13, v14);
      v17 = 2048;
      v18 = v8;
      _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "close, itemID:%llu, handle:%p", buf, 0x16u);
    }

    MKBBackupClose();
    objc_msgSend_setHandle_(self, v10, 0);
  }

  return 1;
}

- (id)getFileMetadataWithError:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_MMCSItem(self, a2, error);
  if (!v7)
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CKDMMCSEncryptedItemReader.m", 135, @"Expected non-nil MMCS item for %@", self);
  }

  v10 = objc_msgSend_handle(self, v5, v6);
  if (!v10)
  {
    v24 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CKDMMCSEncryptedItemReader.m", 137, @"Expected a valid handle for %@", self);
  }

  v11 = MKBBackupSize();
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v12 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v19 = v12;
    *buf = 134218496;
    v27 = objc_msgSend_itemID(v7, v20, v21);
    v28 = 2048;
    v29 = v10;
    v30 = 2048;
    v31 = v11;
    _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "stat, itemID:%llu, handle:%p, fileSize:%lld", buf, 0x20u);
  }

  v13 = objc_alloc(MEMORY[0x277CBC438]);
  v15 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v14, v11);
  v17 = objc_msgSend_initWithFileSize_(v13, v16, v15);

  return v17;
}

- (BOOL)readBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesRead:(unint64_t *)read error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  v13 = objc_msgSend_MMCSRequest(self, a2, offset);
  v18 = objc_msgSend_MMCSItem(self, v14, v15);
  if (!v18)
  {
    v37 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v37, v38, a2, self, @"CKDMMCSEncryptedItemReader.m", 149, @"Expected non-nil MMCS item for %@", self);
  }

  v21 = objc_msgSend_handle(self, v16, v17);
  if (!v21)
  {
    log = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v19, v20);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(log, v39, a2, self, @"CKDMMCSEncryptedItemReader.m", 151, @"Expected a valid handle for %@", self);
  }

  v22 = objc_msgSend_operation(v13, v19, v20);
  objc_msgSend_setIsReaderReadFrom_(v18, v23, 1);
  v24 = MKBBackupPread();
  v26 = v24;
  if ((v24 & 0x8000000000000000) != 0)
  {
    v27 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v25, *MEMORY[0x277CBC120], 1000, @"MKBBackupPread failed");
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v28 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      loga = v28;
      v33 = objc_msgSend_itemID(v18, v31, v32);
      objc_msgSend_operationID(v22, v34, v35);
      *buf = 134219266;
      v43 = v33;
      v44 = 2048;
      v45 = v21;
      v47 = v46 = 2114;
      v36 = v47;
      v48 = 2048;
      offsetCopy = offset;
      v50 = 2048;
      lengthCopy = length;
      v52 = 2114;
      v53 = v27;
      _os_log_error_impl(&dword_22506F000, loga, OS_LOG_TYPE_ERROR, "MKBBackupPread failed for itemID:%llu, handle:%p, operationID:%{public}@, offset:0x%llx, length:%llu: %{public}@", buf, 0x3Eu);

      if (!error)
      {
        goto LABEL_13;
      }
    }

    else if (!error)
    {
      goto LABEL_13;
    }

    v29 = v27;
    *error = v27;
    goto LABEL_13;
  }

  v27 = 0;
  if (read)
  {
    *read = v24;
  }

LABEL_13:

  return v26 >= 0;
}

- (BOOL)writeBytesAtOffset:(unint64_t)offset bytes:(char *)bytes length:(unint64_t)length bytesWritten:(unint64_t *)written error:(id *)error
{
  v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, offset, bytes, length, written);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CKDMMCSEncryptedItemReader.m", 176, @"writing not supported");

  if (error)
  {
    *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 3001, @"write not supported");
  }

  return 0;
}

@end
@interface BUZipEntry
- (BOOL)extractFromArchive:(id)archive destinationURL:(id)l error:(id *)error;
- (_xmlDoc)xmlDocumentFromArchive:(id)archive;
- (id)_dataFromArchive:(id)archive error:(id *)error;
- (id)_extractFromArchiveData:(id)data destinationURL:(id)l allowEntriesOutsideRoot:(BOOL)root error:(id *)error;
- (id)dataFromArchive:(id)archive;
- (id)description;
- (id)extractFromArchive:(id)archive;
- (id)plistFromArchive:(id)archive;
- (id)stringFromArchive:(id)archive;
- (id)usableName;
- (void)_beginStreamingWriteForArchive:(id)archive forDestinationURL:(id)l completion:(id)completion;
@end

@implementation BUZipEntry

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = BUObjectReferenceDescription(self);
  v7 = objc_msgSend_name(self, v5, v6);
  v10 = objc_msgSend_collapsedName(self, v8, v9);
  v13 = objc_msgSend_size(self, v11, v12);
  v16 = objc_msgSend_compressedSize(self, v14, v15);
  v19 = objc_msgSend_CRC(self, v17, v18);
  v22 = objc_msgSend_offset(self, v20, v21);
  v25 = objc_msgSend_extraFieldsLength(self, v23, v24);
  v27 = objc_msgSend_stringWithFormat_(v3, v26, @"<%@> %@ (%@) size=%qu compressedSize=%qu CRC=0x%X offset=%qu extraFieldLength=%hu", v4, v7, v10, v13, v16, v19, v22, v25);

  return v27;
}

- (id)usableName
{
  v4 = objc_msgSend_collapsedName(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = objc_msgSend_name(self, v5, v6);
  }

  v9 = v8;

  return v9;
}

- (id)_dataFromArchive:(id)archive error:(id *)error
{
  archiveCopy = archive;
  v8 = objc_msgSend_readChannelForEntry_(archiveCopy, v7, self);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_241DC8E2C;
  v30 = sub_241DC8E3C;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_241DC8E2C;
  v24 = sub_241DC8E3C;
  v25 = 0;
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_241DC8E44;
  v16[3] = &unk_278D1DCB8;
  v18 = &v26;
  v19 = &v20;
  v10 = v9;
  v17 = v10;
  objc_msgSend_readWithHandler_(v8, v11, v16);
  dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  objc_msgSend_close(v8, v12, v13);
  if (error)
  {
    *error = v21[5];
  }

  v14 = v27[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v14;
}

- (id)stringFromArchive:(id)archive
{
  v14 = 0;
  v3 = objc_msgSend__dataFromArchive_error_(self, a2, archive, &v14);
  v4 = v14;
  v5 = v4;
  if (v3)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v6 = dispatch_data_create_map(v3, &buffer_ptr, &size_ptr);
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = objc_msgSend_initWithBytes_length_encoding_(v7, v8, buffer_ptr, size_ptr, 4);
  }

  else
  {
    v10 = BUZipLog(v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_241DD139C();
    }

    v9 = 0;
  }

  return v9;
}

- (id)dataFromArchive:(id)archive
{
  v14 = 0;
  v3 = objc_msgSend__dataFromArchive_error_(self, a2, archive, &v14);
  v4 = v14;
  v5 = v4;
  if (v3)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v6 = dispatch_data_create_map(v3, &buffer_ptr, &size_ptr);
    v7 = objc_alloc(MEMORY[0x277CBEA90]);
    v9 = objc_msgSend_initWithData_(v7, v8, v6);
  }

  else
  {
    v10 = BUZipLog(v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_241DD139C();
    }

    v9 = 0;
  }

  return v9;
}

- (id)plistFromArchive:(id)archive
{
  v17 = 0;
  v3 = objc_msgSend__dataFromArchive_error_(self, a2, archive, &v17);
  v4 = v17;
  v5 = v4;
  if (v3)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v6 = dispatch_data_create_map(v3, &buffer_ptr, &size_ptr);
    v14 = 0;
    v8 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x277CCAC58], v7, v6, 0, 0, &v14);
    v9 = v14;
    v10 = v9;
    if (v9)
    {
      v11 = BUZipLog(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_241DD1404();
      }

      v8 = 0;
    }
  }

  else
  {
    v12 = BUZipLog(v4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_241DD139C();
    }

    v8 = 0;
  }

  return v8;
}

- (_xmlDoc)xmlDocumentFromArchive:(id)archive
{
  archiveCopy = archive;
  v39 = 0;
  v6 = objc_msgSend__dataFromArchive_error_(self, v5, archiveCopy, &v39);
  v7 = v39;
  v8 = v7;
  if (v6)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v9 = dispatch_data_create_map(v6, &buffer_ptr, &size_ptr);
    v12 = objc_msgSend_length(v9, v10, v11);
    v14 = v12;
    if (v12 >= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v12;
    }

    if (size_ptr >> 31)
    {
      objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v13, @"BUDataRepresentationError", @"Overflow in xmlDocument %ld", size_ptr);
    }

    v16 = v9;
    v19 = objc_msgSend_bytes(v16, v17, v18);
    PushParserCtxt = xmlCreatePushParserCtxt(0, 0, v19, v15, 0);
    if (!PushParserCtxt)
    {
      objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v20, @"BUDataRepresentationError", @"xmlCreatePushParserCtxt() failed");
    }

    if (size_ptr)
    {
      v22 = v9;
      v25 = objc_msgSend_bytes(v22, v23, v24);
      v26 = xmlParseChunk(PushParserCtxt, (v25 + v15), v14 - v15, 0);
      if (v26)
      {
        objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v27, @"BUDataRepresentationError", @"xmlParseChunk() failed: %d", v26);
      }
    }

    v28 = v9;
    v31 = objc_msgSend_bytes(v28, v29, v30);
    v32 = xmlParseChunk(PushParserCtxt, v31, 0, 1);
    if (v32)
    {
      objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v33, @"BUDataRepresentationError", @"xmlParseChunk() failed: %d", v32);
    }

    myDoc = PushParserCtxt->myDoc;
    if (!PushParserCtxt->wellFormed)
    {
      objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v33, @"BUDataRepresentationError", @"XML document is not well formed.");
    }

    xmlFreeParserCtxt(PushParserCtxt);
  }

  else
  {
    v35 = BUZipLog(v7);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_241DD139C();
    }

    myDoc = 0;
  }

  return myDoc;
}

- (id)extractFromArchive:(id)archive
{
  archiveCopy = archive;
  v5 = [BUTemporaryDirectory alloc];
  v50 = 0;
  v7 = objc_msgSend_initWithError_(v5, v6, &v50);
  v8 = v50;
  v11 = v8;
  if (v7)
  {
    v12 = objc_msgSend_URL(v7, v9, v10);
    v15 = objc_msgSend_options(archiveCopy, v13, v14);
    v16 = MEMORY[0x277CBEBC0];
    v19 = objc_msgSend_usableName(self, v17, v18);
    v21 = objc_msgSend_fileURLWithPath_relativeToURL_(v16, v20, v19, v12);

    if ((v15 & 0x10) != 0 || (isContainedWithinFileURL = objc_msgSend_bu_isContainedWithinFileURL_(v21, v22, v12), isContainedWithinFileURL))
    {
      v49 = v11;
      v24 = objc_msgSend__dataFromArchive_error_(self, v22, archiveCopy, &v49);
      v25 = v49;

      if (v24)
      {
        v46 = v25;
        v29 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v27, v28);
        v47 = v21;
        v32 = objc_msgSend_URLByDeletingLastPathComponent(v21, v30, v31);
        v48 = 0;
        v34 = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v29, v33, v32, 1, 0, &v48);
        v35 = v48;

        if (v34)
        {
          v38 = objc_msgSend__extractFromArchiveData_destinationURL_allowEntriesOutsideRoot_error_(self, v37, v24, v12, (v15 >> 4) & 1, 0);

          if (v38)
          {
            objc_msgSend_leakTemporaryDirectory(v7, v39, v40);
          }

          v21 = v47;
        }

        else
        {
          v44 = BUZipLog(v36);
          v21 = v47;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            sub_241DD1560(v47, v35, v44);
          }

          v38 = 0;
        }

        v25 = v46;
      }

      else
      {
        v41 = BUZipLog(v26);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          sub_241DD139C();
        }

        v38 = 0;
      }
    }

    else
    {
      v42 = BUZipLog(isContainedWithinFileURL);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_241DD14D4(self, v42, v43);
      }

      v38 = 0;
      v25 = v11;
    }

    v11 = v25;
  }

  else
  {
    v12 = BUZipLog(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_241DD160C();
    }

    v38 = 0;
  }

  return v38;
}

- (id)_extractFromArchiveData:(id)data destinationURL:(id)l allowEntriesOutsideRoot:(BOOL)root error:(id *)error
{
  v75 = *MEMORY[0x277D85DE8];
  lCopy = l;
  size_ptr = 0;
  buffer_ptr = 0;
  v11 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  v12 = MEMORY[0x277CBEBC0];
  v15 = objc_msgSend_usableName(self, v13, v14);
  v17 = objc_msgSend_fileURLWithPath_relativeToURL_(v12, v16, v15, lCopy);

  if (objc_msgSend_isSymLink(self, v18, v19))
  {
    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    v23 = objc_msgSend_initWithData_encoding_(v21, v22, v11, 4);
    if (objc_msgSend_length(v23, v24, v25))
    {
      v28 = objc_msgSend_URLByDeletingLastPathComponent(v17, v26, v27);
      v30 = objc_msgSend_fileURLWithPath_relativeToURL_(MEMORY[0x277CBEBC0], v29, v23, v28);
      v33 = v30;
      if (root || (isContainedWithinFileURL = objc_msgSend_bu_isContainedWithinFileURL_(v30, v31, lCopy), isContainedWithinFileURL))
      {
        v64 = v33;
        v35 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v31, v32);
        v38 = objc_msgSend_path(v17, v36, v37);
        v66 = 0;
        v40 = objc_msgSend_createSymbolicLinkAtPath_withDestinationPath_error_(v35, v39, v38, v23, &v66);
        v41 = v66;

        if (v40)
        {
          v43 = v17;
          v44 = 0;
        }

        else
        {
          v56 = BUZipLog(v42);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v63 = objc_msgSend_path(v17, v57, v58);
            *buf = 138412802;
            v70 = v63;
            v71 = 2112;
            v72 = v23;
            v73 = 2112;
            v74 = v41;
            _os_log_error_impl(&dword_241DA6000, v56, OS_LOG_TYPE_ERROR, "Error creating symlink at %@ with destination %@: %@", buf, 0x20u);
          }

          v41 = v41;
          v43 = 0;
          v44 = v41;
        }

        v33 = v64;
      }

      else
      {
        v59 = BUZipLog(isContainedWithinFileURL);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          sub_241DD16DC(self, v23, v59);
        }

        v41 = 0;
        v44 = 0;
        v43 = 0;
      }
    }

    else
    {
      v28 = BUZipLog(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_241DD1778(v28, v49, v50, v51, v52, v53, v54, v55);
      }

      v41 = 0;
      v44 = 0;
      v43 = 0;
    }

    v47 = 0;
  }

  else
  {
    v65 = 0;
    v45 = objc_msgSend_writeToURL_options_error_(v11, v20, v17, 268435457, &v65);
    v46 = v65;
    v47 = v46;
    if (v45)
    {
      v43 = v17;
      v44 = 0;
    }

    else
    {
      v48 = BUZipLog(v46);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        sub_241DD1674();
      }

      v44 = v47;
      v43 = 0;
      v47 = v44;
    }
  }

  if (error)
  {
    v60 = v44;
    *error = v44;
  }

  v61 = v43;

  return v61;
}

- (BOOL)extractFromArchive:(id)archive destinationURL:(id)l error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  lCopy = l;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_241DC8E2C;
  v49 = sub_241DC8E3C;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v10 = MEMORY[0x277CBEBC0];
  v13 = objc_msgSend_path(lCopy, v11, v12);
  v15 = objc_msgSend_fileURLWithPath_isDirectory_(v10, v14, v13, 1);

  LOBYTE(v13) = objc_msgSend_options(archiveCopy, v16, v17);
  v18 = objc_alloc(MEMORY[0x277CBEBC0]);
  v21 = objc_msgSend_usableName(self, v19, v20);
  inited = objc_msgSend_initFileURLWithPath_relativeToURL_(v18, v22, v21, v15);
  v24 = v13 & 0x10;

  if (v13 & 0x10) != 0 || (isContainedWithinFileURL = objc_msgSend_bu_isContainedWithinFileURL_(inited, v26, v15), (isContainedWithinFileURL))
  {
    v27 = BUZipLog(isContainedWithinFileURL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = archiveCopy;
      _os_log_impl(&dword_241DA6000, v27, OS_LOG_TYPE_DEFAULT, "Beginning streaming extraction for archive %@", buf, 0xCu);
    }

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_241DC9E94;
    v35[3] = &unk_278D1DCE0;
    v38 = &v45;
    v35[4] = self;
    v36 = inited;
    v40 = v24 >> 4;
    v37 = v15;
    v39 = &v41;
    objc_msgSend__beginStreamingWriteForArchive_forDestinationURL_completion_(self, v28, archiveCopy, v36, v35);
    if (error)
    {
      *error = v46[5];
    }

    v29 = *(v42 + 24);
  }

  else
  {
    v30 = BUZipLog(isContainedWithinFileURL);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_msgSend_name(self, v31, v32);
      *buf = 138412290;
      v52 = v33;
      _os_log_impl(&dword_241DA6000, v30, OS_LOG_TYPE_DEFAULT, "Skipping entry because it is outside the root of the zip: %@", buf, 0xCu);
    }

    v29 = 0;
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  return v29 & 1;
}

- (void)_beginStreamingWriteForArchive:(id)archive forDestinationURL:(id)l completion:(id)completion
{
  v73 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  lCopy = l;
  completionCopy = completion;
  v11 = [BUTemporaryDirectory alloc];
  v66 = 0;
  v13 = objc_msgSend_initForWritingToURL_error_(v11, v12, lCopy, &v66);
  v14 = v66;
  v17 = v14;
  if (v13)
  {
    v18 = objc_msgSend_URL(v13, v15, v16);
    v21 = objc_msgSend_lastPathComponent(lCopy, v19, v20);
    v23 = objc_msgSend_URLByAppendingPathComponent_(v18, v22, v21);

    v25 = objc_msgSend_readChannelForEntry_(archiveCopy, v24, self);
    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = sub_241DC8E2C;
    v64 = sub_241DC8E3C;
    v26 = [BUFileIOChannel alloc];
    v59 = 0;
    v28 = objc_msgSend_initForStreamWritingURL_error_(v26, v27, v23, &v59);
    v29 = v59;
    v30 = v29;
    v65 = v28;
    if (v61[5])
    {
      v53 = 0;
      v54 = &v53;
      v55 = 0x3032000000;
      v56 = sub_241DC8E2C;
      v57 = sub_241DC8E3C;
      v58 = 0;
      v31 = dispatch_group_create();
      dispatch_group_enter(v31);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = sub_241DCA6B8;
      v49[3] = &unk_278D1DD08;
      v51 = &v53;
      v32 = v31;
      v50 = v32;
      v52 = &v60;
      objc_msgSend_readWithHandler_(v25, v33, v49);
      dispatch_group_wait(v32, 0xFFFFFFFFFFFFFFFFLL);
      objc_msgSend_close(v25, v34, v35);
      v38 = objc_msgSend_close(v61[5], v36, v37);
      if (v54[5])
      {
        v39 = BUZipLog(v38);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v48 = v54[5];
          *buf = 138412802;
          v68 = archiveCopy;
          v69 = 2112;
          v70 = v23;
          v71 = 2112;
          v72 = v48;
          _os_log_error_impl(&dword_241DA6000, v39, OS_LOG_TYPE_ERROR, "Failed to write archive %@ to URL %@. Error: %@", buf, 0x20u);
        }

        v40 = MEMORY[0x245D00360](completionCopy);
        v41 = v40;
        if (v40)
        {
          (*(v40 + 16))(v40, 0, v54[5]);
        }
      }

      else
      {
        v47 = MEMORY[0x245D00360](completionCopy);
        v41 = v47;
        if (v47)
        {
          (*(v47 + 16))(v47, v23, 0);
        }
      }

      _Block_object_dispose(&v53, 8);
    }

    else
    {
      v44 = BUZipLog(v29);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_241DD18F4();
      }

      v45 = MEMORY[0x245D00360](completionCopy);
      v46 = v45;
      if (v45)
      {
        (*(v45 + 16))(v45, 0, v30);
      }
    }

    _Block_object_dispose(&v60, 8);
  }

  else
  {
    v42 = BUZipLog(v14);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_241DD1960();
    }

    v43 = MEMORY[0x245D00360](completionCopy);
    v23 = v43;
    if (v43)
    {
      (*(v43 + 16))(v43, 0, v17);
    }
  }
}

@end
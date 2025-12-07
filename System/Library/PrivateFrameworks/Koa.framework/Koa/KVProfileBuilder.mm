@interface KVProfileBuilder
+ (id)builderWithProfileInfo:(id)info format:(unsigned __int8)format error:(id *)error;
+ (id)fileWriterWithProfileInfo:(id)info targetDirectory:(id)directory filename:(id)filename format:(unsigned __int8)format error:(id *)error;
+ (id)fileWriterWithProfileInfo:(id)info targetDirectory:(id)directory format:(unsigned __int8)format error:(id *)error;
+ (void)initalize;
- (BOOL)_finishWithError:(id *)error;
- (KVProfileBuilder)init;
- (KVProfileBuilder)initWithProfileInfo:(id)info outputStream:(id)stream fileURL:(id)l format:(unsigned __int8)format provider:(id)provider error:(id *)error;
- (id)_buildWithError:(id *)error;
- (id)addDataset:(id)dataset error:(id *)error;
- (id)buildWithError:(id *)error;
- (id)finishWritingWithError:(id *)error;
@end

@implementation KVProfileBuilder

- (id)buildWithError:(id *)error
{
  v7 = objc_msgSend__buildWithError_(self, a2, error, v3, v4, v5);
  if (v7)
  {
    v8 = [KVProfile alloc];
    v12 = objc_msgSend_initWithProfileData_error_(v8, v9, v7, error, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_buildWithError:(id *)error
{
  v35[2] = *MEMORY[0x277D85DE8];
  if (objc_msgSend__finishWithError_(self, a2, error, v3, v4, v5))
  {
    fileURL = self->_fileURL;
    if (fileURL)
    {
      v33 = 0;
      v13 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x277CBEA90], v8, fileURL, 8, &v33, v11);
      v18 = v33;
      if (!v13)
      {
        v19 = MEMORY[0x277CCA9B8];
        v34[0] = *MEMORY[0x277CCA450];
        v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"Failed to load built profile from URL: %@", v15, v16, v17, self->_fileURL);
        v34[1] = *MEMORY[0x277CCA7E8];
        v35[0] = v20;
        v35[1] = v18;
        v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v35, v34, 2, v22);
        v26 = objc_msgSend_errorWithDomain_code_userInfo_(v19, v24, @"com.apple.koa.profile", 2, v23, v25);
        if (error && v26)
        {
          v26 = v26;
          *error = v26;
        }
      }
    }

    else
    {
      v13 = objc_msgSend_propertyForKey_(self->_stream, v8, *MEMORY[0x277CBE740], v9, v10, v11);
    }

    objc_msgSend_close(self->_stream, v27, v28, v29, v30, v31);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_finishWithError:(id *)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  if (!self->_writer)
  {
LABEL_11:
    LOBYTE(v9) = 0;
    return v9;
  }

  activeDataset = self->_activeDataset;
  if (activeDataset)
  {
    v9 = objc_msgSend__finishWithError_(activeDataset, a2, error, v3, v4, v5);
    if (!v9)
    {
      return v9;
    }
  }

  datasetCount = self->_datasetCount;
  if (datasetCount != objc_msgSend_datasetCount(self->_profileInfo, a2, error, v3, v4, v5))
  {
    v17 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    v18 = MEMORY[0x277CCACA8];
    v19 = objc_msgSend_datasetCount(self->_profileInfo, v11, v12, v13, v14, v15);
    v24 = objc_msgSend_stringWithFormat_(v18, v20, @"Expected %u datasets but %u were added.", v21, v22, v23, v19, self->_datasetCount);
    v33[0] = v24;
    v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v33, &v32, 1, v26);
    v30 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v28, @"com.apple.koa.profile", 9, v27, v29);
    if (error && v30)
    {
      v30 = v30;
      *error = v30;
    }

    goto LABEL_11;
  }

  v9 = objc_msgSend_finishProfile_(self->_writer, v11, error, v13, v14, v15);
  if (v9)
  {
    writer = self->_writer;
    self->_writer = 0;

    LOBYTE(v9) = 1;
  }

  return v9;
}

- (id)addDataset:(id)dataset error:(id *)error
{
  datasetCopy = dataset;
  if (self->_writer && ((activeDataset = self->_activeDataset) == 0 || (objc_msgSend__finishWithError_(activeDataset, v6, error, v7, v8, v9) & 1) != 0) && (v12 = [KVDatasetBuilder alloc], v15 = objc_msgSend_initWithDatasetInfo_writer_error_(v12, v13, datasetCopy, self->_writer, error, v14), v16 = self->_activeDataset, self->_activeDataset = v15, v16, (v17 = self->_activeDataset) != 0))
  {
    ++self->_datasetCount;
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (KVProfileBuilder)initWithProfileInfo:(id)info outputStream:(id)stream fileURL:(id)l format:(unsigned __int8)format provider:(id)provider error:(id *)error
{
  formatCopy = format;
  v98[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  streamCopy = stream;
  lCopy = l;
  providerCopy = provider;
  v92.receiver = self;
  v92.super_class = KVProfileBuilder;
  v17 = [(KVProfileBuilder *)&v92 init];
  v23 = v17;
  v24 = v17;
  if (!v17)
  {
    goto LABEL_10;
  }

  if ((formatCopy - 1) >= 3)
  {
    v57 = MEMORY[0x277CCA9B8];
    v97 = *MEMORY[0x277CCA450];
    v58 = MEMORY[0x277CCACA8];
    v59 = sub_2559B19E4(formatCopy, v18, v19, v20, v21, v22);
    v64 = objc_msgSend_stringWithFormat_(v58, v60, @"Unrecognized format: %@", v61, v62, v63, v59, infoCopy, streamCopy);
    v98[0] = v64;
    v67 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v65, v98, &v97, 1, v66);
    v70 = objc_msgSend_errorWithDomain_code_userInfo_(v57, v68, @"com.apple.koa.profile", 3, v67, v69);
    if (error && v70)
    {
      v70 = v70;
      *error = v70;
    }

    goto LABEL_14;
  }

  objc_storeStrong(&v17->_profileInfo, info);
  if (!v23->_profileInfo)
  {
    profileInfo = 0;
    goto LABEL_17;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  profileInfo = v23->_profileInfo;
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_17;
  }

  v32 = objc_msgSend_buffer(profileInfo, v25, v29, v26, v27, v28);
  v38 = objc_msgSend_length(v32, v33, v34, v35, v36, v37) == 0;

  if (v38)
  {
    profileInfo = v23->_profileInfo;
LABEL_17:
    v71 = MEMORY[0x277CCA9B8];
    v95 = *MEMORY[0x277CCA450];
    v72 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"Invalid ProfileInfo: %@", v26, v27, v28, profileInfo, infoCopy, streamCopy);
    v96 = v72;
    v75 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v73, &v96, &v95, 1, v74);
    v78 = objc_msgSend_errorWithDomain_code_userInfo_(v71, v76, @"com.apple.koa.profile", 5, v75, v77);
    if (error && v78)
    {
      v78 = v78;
      *error = v78;
    }

    goto LABEL_21;
  }

  objc_storeStrong(&v23->_stream, stream);
  if (objc_msgSend_streamStatus(v23->_stream, v39, v40, v41, v42, v43) != 2)
  {
    v80 = MEMORY[0x277CCA9B8];
    v93[0] = *MEMORY[0x277CCA450];
    v59 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v44, @"Output stream error: %@", v45, v46, v47, v23->_stream, infoCopy, streamCopy);
    v94[0] = v59;
    v93[1] = *MEMORY[0x277CCA7E8];
    v64 = objc_msgSend_streamError(v23->_stream, v81, v82, v83, v84, v85);
    v94[1] = v64;
    v67 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v86, v94, v93, 2, v87);
    v70 = objc_msgSend_errorWithDomain_code_userInfo_(v80, v88, @"com.apple.koa.profile", 4, v67, v89);
    if (error && v70)
    {
      v70 = v70;
      *error = v70;
    }

LABEL_14:

LABEL_21:
    v56 = 0;
    goto LABEL_22;
  }

  objc_storeStrong(&v23->_fileURL, l);
  v50 = objc_msgSend_profileWriterForFormat_outputStream_error_(providerCopy, v48, formatCopy, v24->_stream, error, v49);
  writer = v24->_writer;
  v24->_writer = v50;

  v55 = v24->_writer;
  if (!v55 || !objc_msgSend_startProfile_error_(v55, v52, v23->_profileInfo, error, v53, v54))
  {
    goto LABEL_21;
  }

  v24->_datasetCount = 0;
LABEL_10:
  v56 = v24;
LABEL_22:

  return v56;
}

- (KVProfileBuilder)init
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, *MEMORY[0x277CBE658], @"init unsupported", MEMORY[0x277CBEC10], v2);
  objc_exception_throw(v3);
}

+ (id)builderWithProfileInfo:(id)info format:(unsigned __int8)format error:(id *)error
{
  formatCopy = format;
  infoCopy = info;
  v13 = objc_msgSend_outputStreamToMemory(MEMORY[0x277CBEB78], v8, v9, v10, v11, v12);
  objc_msgSend_open(v13, v14, v15, v16, v17, v18);
  v19 = objc_alloc(objc_opt_class());
  v20 = objc_alloc_init(KVProfileWriterFactory);
  v22 = objc_msgSend_initWithProfileInfo_outputStream_fileURL_format_provider_error_(v19, v21, infoCopy, v13, 0, formatCopy, v20, error);

  return v22;
}

+ (void)initalize
{
  if (qword_28106B3B8 != -1)
  {
    dispatch_once(&qword_28106B3B8, &unk_2867B56F8);
  }
}

- (id)finishWritingWithError:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (self->_fileURL)
  {
    if (objc_msgSend__finishWithError_(self, a2, error, v3, v4, v5))
    {
      v13 = objc_msgSend__fileURL(self, v8, v9, v10, v11, v12);
      goto LABEL_9;
    }
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"Cannot finish writing with in-memory profile builder. use FileWriter class category to initialize builder.";
    v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v21, &v20, 1, v5);
    v18 = objc_msgSend_errorWithDomain_code_userInfo_(v14, v16, @"com.apple.koa.profile", 2, v15, v17);
    if (error && v18)
    {
      v18 = v18;
      *error = v18;
    }
  }

  v13 = 0;
LABEL_9:

  return v13;
}

+ (id)fileWriterWithProfileInfo:(id)info targetDirectory:(id)directory format:(unsigned __int8)format error:(id *)error
{
  formatCopy = format;
  infoCopy = info;
  directoryCopy = directory;
  v11 = objc_opt_class();
  v17 = objc_msgSend_capturedTime(infoCopy, v12, v13, v14, v15, v16);
  v23 = v17;
  if ((formatCopy - 1) > 2)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(&off_279803A40 + (formatCopy - 1));
  }

  objc_msgSend_timeIntervalSince1970(v17, v18, v19, v20, v21, v22);
  v30 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"vocabulary-profile-%llu.%@", v27, v28, v29, (v25 * 1000.0), v24);
  v32 = objc_msgSend_fileWriterWithProfileInfo_targetDirectory_filename_format_error_(v11, v31, infoCopy, directoryCopy, v30, formatCopy, error);

  return v32;
}

+ (id)fileWriterWithProfileInfo:(id)info targetDirectory:(id)directory filename:(id)filename format:(unsigned __int8)format error:(id *)error
{
  formatCopy = format;
  v65[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  directoryCopy = directory;
  filenameCopy = filename;
  v61 = 0;
  v19 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v14, v15, v16, v17, v18);
  v25 = objc_msgSend_path(directoryCopy, v20, v21, v22, v23, v24);
  isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v19, v26, v25, &v61, v27, v28);

  if (isDirectory)
  {
    if (v61)
    {
      v34 = objc_msgSend_URLByAppendingPathComponent_(directoryCopy, v30, filenameCopy, v31, v32, v33);
      v38 = objc_msgSend_outputStreamWithURL_append_(MEMORY[0x277CBEB78], v35, v34, 0, v36, v37);
      objc_msgSend_open(v38, v39, v40, v41, v42, v43);
      v44 = objc_alloc(objc_opt_class());
      v45 = objc_alloc_init(KVProfileWriterFactory);
      v47 = objc_msgSend_initWithProfileInfo_outputStream_fileURL_format_provider_error_(v44, v46, infoCopy, v38, v34, formatCopy, v45, error);
      goto LABEL_9;
    }

    v54 = MEMORY[0x277CCA9B8];
    v62 = *MEMORY[0x277CCA450];
    v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v30, @"Target directory exists but is not a directory: %@", v31, v32, v33, directoryCopy);
    v63 = v34;
    v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v55, &v63, &v62, 1, v56);
    v53 = objc_msgSend_errorWithDomain_code_userInfo_(v54, v57, @"com.apple.koa.profile", 1, v38, v58);
  }

  else
  {
    v48 = MEMORY[0x277CCA9B8];
    v64 = *MEMORY[0x277CCA450];
    v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v30, @"No directory exists at target directory URL: %@", v31, v32, v33, directoryCopy);
    v65[0] = v34;
    v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, v65, &v64, 1, v50);
    v53 = objc_msgSend_errorWithDomain_code_userInfo_(v48, v51, @"com.apple.koa.profile", 1, v38, v52);
  }

  v45 = v53;
  v47 = 0;
  if (error && v53)
  {
    v59 = v53;
    v47 = 0;
    *error = v45;
  }

LABEL_9:

  return v47;
}

@end
@interface ATXBMBookmark
+ (BOOL)_fileExistsAtPath:(id)path;
+ (BOOL)_fileSizeWithinLimitsForPath:(id)path maxFileSize:(unint64_t)size;
+ (BOOL)_saveData:(id)data toFileURL:(id)l outError:(id *)error;
+ (id)_dataFromPath:(id)path;
+ (id)bookmarkFromData:(id)data bookmarkLocation:(id)location versionNumber:(id)number;
+ (id)bookmarkFromURLPath:(id)path maxFileSize:(unint64_t)size versionNumber:(id)number;
- (ATXBMBookmark)initWithCoder:(id)coder;
- (ATXBMBookmark)initWithURLPath:(id)path versionNumber:(id)number bookmark:(id)bookmark metadata:(id)metadata;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXBMBookmark:(id)bookmark;
- (BOOL)saveBookmarkWithError:(id *)error;
- (id)allowedClassesForBookmarkSecureCoding;
- (id)serializeBookmark:(id *)bookmark;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXBMBookmark

- (id)allowedClassesForBookmarkSecureCoding
{
  v2 = objc_alloc(MEMORY[0x277CBEB58]);
  bm_allowedClassesForSecureCodingBMBookmark = [MEMORY[0x277CCA910] bm_allowedClassesForSecureCodingBMBookmark];
  v4 = [v2 initWithSet:bm_allowedClassesForSecureCodingBMBookmark];

  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v5, v4, &cfstr_Atxfakebookmar.isa);
  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v6, v4, &cfstr_Bmstorebookmar.isa);
  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v7, v4, &cfstr_Atxblendingbio.isa);
  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v8, v4, &cfstr_Atxuifeedbackp.isa);
  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v9, v4, &cfstr_Atxsecurecoded.isa);
  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v10, v4, &cfstr_Atxproactivesu_0.isa);
  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v11, v4, &cfstr_Atxproactivesu.isa);
  v12 = MEMORY[0x277CCA910];
  allObjects = [v4 allObjects];
  [v12 bm_allowClassesForSecureCodingBMBookmark:allObjects];

  v14 = [v4 copy];

  return v14;
}

void __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(uint64_t a1, void *a2, NSString *a3)
{
  v5 = a2;
  v4 = NSClassFromString(a3);
  if (v4)
  {
    [v5 addObject:v4];
  }
}

+ (id)bookmarkFromData:(id)data bookmarkLocation:(id)location versionNumber:(id)number
{
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  locationCopy = location;
  numberCopy = number;
  v11 = objc_autoreleasePoolPush();
  v27 = 0;
  v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v27];
  v13 = v27;
  objc_autoreleasePoolPop(v11);
  if (v13 || !v12)
  {
    v19 = __atxlog_handle_default(v14);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!locationCopy)
    {
      if (v20)
      {
        +[ATXBMBookmark bookmarkFromData:bookmarkLocation:versionNumber:];
      }

      goto LABEL_17;
    }

    if (v20)
    {
      v21 = NSStringFromClass(self);
      *buf = 138412802;
      v29 = v21;
      v30 = 2112;
      v31 = locationCopy;
      v32 = 2112;
      v33 = v13;
      _os_log_error_impl(&dword_226368000, v19, OS_LOG_TYPE_ERROR, "%@ - failed to unarchive bookmark at %@ with error: %@", buf, 0x20u);
LABEL_16:
    }
  }

  else
  {
    versionNumber = [v12 versionNumber];
    v16 = [versionNumber isEqualToNumber:numberCopy];

    if (v16)
    {
      v18 = v12;
      goto LABEL_18;
    }

    v19 = __atxlog_handle_default(v17);
    v22 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (locationCopy)
    {
      if (v22)
      {
        v21 = NSStringFromClass(self);
        *buf = 138412546;
        v29 = v21;
        v30 = 2112;
        v31 = locationCopy;
        v23 = "%@ - version number changed for bookmark at %@";
        v24 = v19;
        v25 = 22;
LABEL_15:
        _os_log_impl(&dword_226368000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
        goto LABEL_16;
      }
    }

    else if (v22)
    {
      v21 = NSStringFromClass(self);
      *buf = 138412290;
      v29 = v21;
      v23 = "%@ - version number changed for bookmark";
      v24 = v19;
      v25 = 12;
      goto LABEL_15;
    }
  }

LABEL_17:

  v18 = 0;
LABEL_18:

  return v18;
}

+ (id)bookmarkFromURLPath:(id)path maxFileSize:(unint64_t)size versionNumber:(id)number
{
  pathCopy = path;
  numberCopy = number;
  path = [pathCopy path];
  v11 = [self _fileExistsAtPath:path];
  if (v11)
  {
    v12 = [self _fileSizeWithinLimitsForPath:path maxFileSize:size];
    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = [self _dataFromPath:path];
      objc_autoreleasePoolPop(v13);
      if (v14)
      {
        v16 = [self bookmarkFromData:v14 bookmarkLocation:path versionNumber:numberCopy];
        goto LABEL_13;
      }

      v17 = __atxlog_handle_default(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[ATXBMBookmark bookmarkFromURLPath:maxFileSize:versionNumber:];
      }
    }

    else
    {
      v14 = __atxlog_handle_default(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        +[ATXBMBookmark bookmarkFromURLPath:maxFileSize:versionNumber:];
      }
    }
  }

  else
  {
    v14 = __atxlog_handle_default(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[ATXBMBookmark bookmarkFromURLPath:maxFileSize:versionNumber:];
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (ATXBMBookmark)initWithURLPath:(id)path versionNumber:(id)number bookmark:(id)bookmark metadata:(id)metadata
{
  pathCopy = path;
  numberCopy = number;
  bookmarkCopy = bookmark;
  metadataCopy = metadata;
  v20.receiver = self;
  v20.super_class = ATXBMBookmark;
  v14 = [(ATXBMBookmark *)&v20 init];
  if (v14)
  {
    v15 = [pathCopy copy];
    urlPath = v14->_urlPath;
    v14->_urlPath = v15;

    objc_storeStrong(&v14->_versionNumber, number);
    objc_storeStrong(&v14->_bookmark, bookmark);
    v17 = [metadataCopy copy];
    metadata = v14->_metadata;
    v14->_metadata = v17;
  }

  return v14;
}

- (id)serializeBookmark:(id *)bookmark
{
  v5 = objc_autoreleasePoolPush();
  v14 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v14];
  v7 = v14;
  objc_autoreleasePoolPop(v5);
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v12 = v6;
  }

  else
  {
    v10 = __atxlog_handle_default(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [ATXBMBookmark serializeBookmark:];
    }

    if (bookmark)
    {
      v11 = v7;
      v12 = 0;
      *bookmark = v7;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (BOOL)saveBookmarkWithError:(id *)error
{
  if (self->_urlPath)
  {
    v5 = [(ATXBMBookmark *)self serializeBookmark:?];
    if (v5)
    {
      v6 = [ATXBMBookmark _saveData:v5 toFileURL:self->_urlPath outError:error];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = __atxlog_handle_default(self);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXBMBookmark saveBookmarkWithError:?];
    }

    return 0;
  }

  return v6;
}

+ (BOOL)_fileExistsAtPath:(id)path
{
  v3 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager fileExistsAtPath:pathCopy];

  return v6;
}

+ (BOOL)_fileSizeWithinLimitsForPath:(id)path maxFileSize:(unint64_t)size
{
  v25 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v18 = 0;
  v8 = [defaultManager attributesOfItemAtPath:pathCopy error:&v18];
  v9 = v18;

  if (!v8)
  {
    v11 = __atxlog_handle_default(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[ATXBMBookmark _fileSizeWithinLimitsForPath:maxFileSize:];
    }

    goto LABEL_7;
  }

  if (v9)
  {
    v11 = __atxlog_handle_default(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromClass(self);
      *buf = 138412802;
      v20 = v12;
      v21 = 2112;
      v22 = pathCopy;
      v23 = 2112;
      v24 = v9;
      _os_log_error_impl(&dword_226368000, v11, OS_LOG_TYPE_ERROR, "%@ - file manager error for path %@, err: %@", buf, 0x20u);
    }

LABEL_7:

    v13 = 0;
    goto LABEL_11;
  }

  fileSize = [v8 fileSize];
  v15 = __atxlog_handle_default(fileSize);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromClass(self);
    *buf = 138412802;
    v20 = v16;
    v21 = 2112;
    v22 = pathCopy;
    v23 = 2048;
    v24 = fileSize;
    _os_log_impl(&dword_226368000, v15, OS_LOG_TYPE_DEFAULT, "%@ - file size on disk for path %@ is %llu", buf, 0x20u);
  }

  v13 = fileSize <= size;
LABEL_11:

  return v13;
}

+ (id)_dataFromPath:(id)path
{
  v3 = [MEMORY[0x277CCA9F8] fileHandleForReadingAtPath:path];
  v4 = v3;
  if (v3)
  {
    v12 = 0;
    v5 = [v3 readDataToEndOfFileAndReturnError:&v12];
    v6 = v12;
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v10 = v5;
    }

    else
    {
      v9 = __atxlog_handle_default(v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[ATXBMBookmark _dataFromPath:];
      }

      v10 = 0;
    }
  }

  else
  {
    v7 = __atxlog_handle_default(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_226368000, v7, OS_LOG_TYPE_DEFAULT, "Unable to acquire readonly handle to cache file.", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

+ (BOOL)_saveData:(id)data toFileURL:(id)l outError:(id *)error
{
  v50[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  lCopy = l;
  v10 = lCopy;
  if (lCopy)
  {
    if (dataCopy)
    {
      uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
      v12 = __atxlog_handle_default(uRLByDeletingLastPathComponent);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138412546;
        v42 = v14;
        v43 = 2112;
        v44 = uRLByDeletingLastPathComponent;
        _os_log_impl(&dword_226368000, v12, OS_LOG_TYPE_DEFAULT, "%@ - attempting to save data with directoryURL: %@", buf, 0x16u);
      }

      v16 = __atxlog_handle_default(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138412546;
        v42 = v18;
        v43 = 2112;
        v44 = v10;
        _os_log_impl(&dword_226368000, v16, OS_LOG_TYPE_DEFAULT, "%@ - attempting to save data with fileURL: %@", buf, 0x16u);
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v40 = 0;
      v20 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v40];
      v21 = v40;

      if (!v20 || v21)
      {
        v34 = __atxlog_handle_default(v22);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v37 = objc_opt_class();
          v38 = NSStringFromClass(v37);
          *buf = 138412802;
          v42 = v38;
          v43 = 2112;
          v44 = uRLByDeletingLastPathComponent;
          v45 = 2112;
          v46 = v21;
          _os_log_error_impl(&dword_226368000, v34, OS_LOG_TYPE_ERROR, "%@ - could not create directory at path: %@ with err: %@", buf, 0x20u);
        }

        if (error)
        {
          v35 = v21;
          v23 = 0;
          *error = v21;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v39 = 0;
        v23 = [dataCopy writeToURL:v10 options:1073741825 error:&v39];
        v24 = v39;
        v25 = v24;
        if ((v23 & 1) == 0)
        {
          v26 = __atxlog_handle_default(v24);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            +[ATXBMBookmark _saveData:toFileURL:outError:];
          }

          if (error)
          {
            v27 = v25;
            *error = v25;
          }
        }
      }

      goto LABEL_31;
    }

    v33 = __atxlog_handle_default(lCopy);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      [ATXBMBookmark _saveData:self toFileURL:? outError:?];
    }

    if (error)
    {
      v29 = objc_alloc(MEMORY[0x277CCA9B8]);
      v47 = *MEMORY[0x277CCA450];
      v48 = @"_saveDatatoFileURL called without data";
      v30 = MEMORY[0x277CBEAC0];
      v31 = &v48;
      v32 = &v47;
      goto LABEL_23;
    }
  }

  else
  {
    v28 = __atxlog_handle_default(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      [ATXBMBookmark _saveData:self toFileURL:? outError:?];
    }

    if (error)
    {
      v29 = objc_alloc(MEMORY[0x277CCA9B8]);
      v49 = *MEMORY[0x277CCA450];
      v50[0] = @"Attempting to save data without a path is forbidden.";
      v30 = MEMORY[0x277CBEAC0];
      v31 = v50;
      v32 = &v49;
LABEL_23:
      uRLByDeletingLastPathComponent = [v30 dictionaryWithObjects:v31 forKeys:v32 count:1];
      v23 = 0;
      *error = [v29 initWithDomain:@"ATXBMBookmark" code:-1 userInfo:uRLByDeletingLastPathComponent];
LABEL_31:

      goto LABEL_32;
    }
  }

  v23 = 0;
LABEL_32:

  return v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXBMBookmark *)self isEqualToATXBMBookmark:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXBMBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v5 = self->_urlPath;
  v6 = v5;
  if (v5 == bookmarkCopy[1])
  {
  }

  else
  {
    v7 = [(NSURL *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v8 = self->_versionNumber;
  v9 = v8;
  if (v8 == bookmarkCopy[2])
  {
  }

  else
  {
    v10 = [(NSNumber *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
LABEL_7:
      v11 = 0;
      goto LABEL_13;
    }
  }

  v12 = self->_metadata;
  v13 = v12;
  if (v12 == bookmarkCopy[4])
  {
    v11 = 1;
  }

  else
  {
    v11 = [(NSDictionary *)v12 isEqual:?];
  }

LABEL_13:
  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSURL *)self->_urlPath hash];
  v4 = [(NSNumber *)self->_versionNumber hash]- v3 + 32 * v3;
  return [(NSDictionary *)self->_metadata hash]- v4 + 32 * v4;
}

- (void)encodeWithCoder:(id)coder
{
  urlPath = self->_urlPath;
  coderCopy = coder;
  [coderCopy encodeObject:urlPath forKey:@"urlPath"];
  [coderCopy encodeObject:self->_versionNumber forKey:@"versionNumber"];
  [coderCopy encodeObject:self->_bookmark forKey:@"bookmark"];
  [coderCopy encodeObject:self->_metadata forKey:@"metadata"];
}

- (ATXBMBookmark)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_default(v6);
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"urlPath" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXBMBookmark" errorCode:-1 logHandle:v7];

  error = [coderCopy error];

  if (error)
  {
    selfCopy = 0;
  }

  else
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_default(v12);
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"versionNumber" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXBMBookmark" errorCode:-1 logHandle:v13];

    error2 = [coderCopy error];

    selfCopy = 0;
    if (!error2 && v14)
    {
      v16 = MEMORY[0x277D42620];
      allowedClassesForBookmarkSecureCoding = [(ATXBMBookmark *)self allowedClassesForBookmarkSecureCoding];
      v18 = __atxlog_handle_default(allowedClassesForBookmarkSecureCoding);
      v19 = [v16 robustDecodeObjectOfClasses:allowedClassesForBookmarkSecureCoding forKey:@"bookmark" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXBMBookmark" errorCode:-1 logHandle:v18];

      error3 = [coderCopy error];

      if (error3)
      {
        v22 = __atxlog_handle_default(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [ATXBMBookmark initWithCoder:];
        }

        selfCopy = 0;
      }

      else
      {
        v37 = v19;
        context = objc_autoreleasePoolPush();
        v35 = objc_alloc(MEMORY[0x277CBEB98]);
        v23 = objc_opt_class();
        v24 = objc_opt_class();
        v25 = objc_opt_class();
        v26 = objc_opt_class();
        v27 = objc_opt_class();
        v28 = [v35 initWithObjects:{v23, v24, v25, v26, v27, objc_opt_class(), 0}];
        objc_autoreleasePoolPop(context);
        v29 = MEMORY[0x277D42620];
        v31 = __atxlog_handle_default(v30);
        v32 = [v29 robustDecodeObjectOfClasses:v28 forKey:@"metadata" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXBMBookmark" errorCode:-1 logHandle:v31];

        error4 = [coderCopy error];

        if (error4)
        {
          selfCopy = 0;
          v19 = v37;
        }

        else
        {
          v19 = v37;
          self = [(ATXBMBookmark *)self initWithURLPath:v8 versionNumber:v14 bookmark:v37 metadata:v32];
          selfCopy = self;
        }
      }
    }
  }

  return selfCopy;
}

+ (void)bookmarkFromData:bookmarkLocation:versionNumber:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_3(&dword_226368000, v2, v3, "%@ - failed to unarchive bookmark with error: %@", v4, v5, v6, v7);
}

+ (void)bookmarkFromURLPath:maxFileSize:versionNumber:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_3(&dword_226368000, v2, v3, "%@ - bookmark file doesn't exist at path %@", v4, v5, v6, v7);
}

+ (void)bookmarkFromURLPath:maxFileSize:versionNumber:.cold.2()
{
  OUTLINED_FUNCTION_4_1();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)bookmarkFromURLPath:maxFileSize:versionNumber:.cold.3()
{
  OUTLINED_FUNCTION_4_1();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_3(&dword_226368000, v2, v3, "%@ - could not read serialized data for bookmark at path %@", v4, v5, v6, v7);
}

- (void)serializeBookmark:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)saveBookmarkWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

+ (void)_fileSizeWithinLimitsForPath:maxFileSize:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_3(&dword_226368000, v2, v3, "%@ - failed to retrieve attributes for path %@", v4, v5, v6, v7);
}

+ (void)_dataFromPath:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_226368000, v1, OS_LOG_TYPE_ERROR, "Unable to read data from file handle %@ - %@", v2, 0x16u);
}

+ (void)_saveData:toFileURL:outError:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_3(&dword_226368000, v2, v3, "%@ - could not write data file with error: %@", v4, v5, v6, v7);
}

+ (void)_saveData:(uint64_t)a1 toFileURL:outError:.cold.2(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

+ (void)_saveData:(uint64_t)a1 toFileURL:outError:.cold.3(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [v0 error];
  *v10 = 138412546;
  *&v10[4] = v2;
  *&v10[12] = 2112;
  *&v10[14] = v3;
  OUTLINED_FUNCTION_1_3(&dword_226368000, v4, v5, "%@ - failed to decode id<BMBookmark> with error: %@", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

@end
@interface NativeDiskImageGraphNode
+ (BOOL)validateWithDictionary:(id)dictionary error:(id *)error;
- (BOOL)deleteImage;
- (BOOL)validateAppendedImageWithInfo:(id)info error:(id *)error;
- (NativeDiskImageGraphNode)initWithDictionary:(id)dictionary workDir:(id)dir error:(id *)error;
- (NativeDiskImageGraphNode)initWithURL:(id)l tag:(id)tag UUID:(id)d parentNode:(id)node metadata:(id)metadata isCache:(BOOL)cache;
- (id)toDIShadowNode;
- (id)toDictionary;
- (void)setFilePath:(id)path;
@end

@implementation NativeDiskImageGraphNode

+ (BOOL)validateWithDictionary:(id)dictionary error:(id *)error
{
  v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:dictionary];
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___NativeDiskImageGraphNode;
  if (objc_msgSendSuper2(&v10, sel_validateWithDictionary_error_, v6, error) && [v6 validateAndPopObjectForKey:@"FilePath" className:objc_opt_class() isOptional:0 error:error])
  {
    if ([v6 count])
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Validation failed, input contains unexpected data."];
      v8 = [DIError failWithPOSIXCode:22 verboseInfo:v7 error:error];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NativeDiskImageGraphNode)initWithDictionary:(id)dictionary workDir:(id)dir error:(id *)error
{
  dictionaryCopy = dictionary;
  dirCopy = dir;
  if ([NativeDiskImageGraphNode validateWithDictionary:dictionaryCopy error:error])
  {
    v18.receiver = self;
    v18.super_class = NativeDiskImageGraphNode;
    self = [(DiskImageGraphNode *)&v18 initWithDictionary:dictionaryCopy workDir:dirCopy error:error];
    if (self && (v10 = MEMORY[0x277CBEBC0], [dictionaryCopy objectForKey:@"FilePath"], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "fileURLWithPath:relativeToURL:", v11, dirCopy), v12 = objc_claimAutoreleasedReturnValue(), filePath = self->_filePath, self->_filePath = v12, filePath, v11, -[NativeDiskImageGraphNode filePath](self, "filePath"), v14 = objc_claimAutoreleasedReturnValue(), LOBYTE(v11) = objc_msgSend(v14, "checkResourceIsReachableAndReturnError:", error), v14, (v11 & 1) == 0))
    {
      selfCopy = [DIError nilWithPOSIXCode:2 verboseInfo:@"Image referenced in the pstack is unreachable." error:error];
    }

    else
    {
      selfCopy = self;
      self = selfCopy;
    }

    v16 = selfCopy;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (NativeDiskImageGraphNode)initWithURL:(id)l tag:(id)tag UUID:(id)d parentNode:(id)node metadata:(id)metadata isCache:(BOOL)cache
{
  cacheCopy = cache;
  lCopy = l;
  v19.receiver = self;
  v19.super_class = NativeDiskImageGraphNode;
  v16 = [(DiskImageGraphNode *)&v19 initWithTag:tag UUID:d parentNode:node metadata:metadata isCache:cacheCopy];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_filePath, l);
  }

  return v17;
}

- (void)setFilePath:(id)path
{
  pathCopy = path;
  objc_storeStrong(&self->_filePath, path);
  pstackDict = [(DiskImageGraphNode *)self pstackDict];

  if (pstackDict)
  {
    pstackDict2 = [(DiskImageGraphNode *)self pstackDict];
    relativeString = [pathCopy relativeString];
    [pstackDict2 setObject:relativeString forKey:@"FilePath"];
  }
}

- (BOOL)deleteImage
{
  v29 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  filePath = [(NativeDiskImageGraphNode *)self filePath];
  v20 = 0;
  v5 = [defaultManager removeItemAtURL:filePath error:&v20];
  v6 = v20;

  if ((v5 & 1) == 0)
  {
    v7 = *__error();
    v8 = DIForwardLogs();
    if (v8)
    {
      v19 = 0;
      v10 = getDIOSLog(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      filePath2 = [(NativeDiskImageGraphNode *)self filePath];
      v13 = [v6 description];
      *buf = 68158466;
      v22 = 39;
      v23 = 2080;
      v24 = "[NativeDiskImageGraphNode deleteImage]";
      v25 = 2112;
      v26 = filePath2;
      v27 = 2112;
      v28 = v13;
      v14 = _os_log_send_and_compose_impl(v11, &v19, 0, 0, &dword_248DE0000, v10, 16, "%.*s: Failed to delete %@: %@", buf, 38);

      if (v14)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v14);
        free(v14);
      }
    }

    else
    {
      v15 = getDIOSLog(v8, v9);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        filePath3 = [(NativeDiskImageGraphNode *)self filePath];
        v17 = [v6 description];
        *buf = 68158466;
        v22 = 39;
        v23 = 2080;
        v24 = "[NativeDiskImageGraphNode deleteImage]";
        v25 = 2112;
        v26 = filePath3;
        v27 = 2112;
        v28 = v17;
        _os_log_impl(&dword_248DE0000, v15, OS_LOG_TYPE_ERROR, "%.*s: Failed to delete %@: %@", buf, 0x26u);
      }
    }

    *__error() = v7;
  }

  return v5;
}

- (id)toDictionary
{
  v8.receiver = self;
  v8.super_class = NativeDiskImageGraphNode;
  toDictionary = [(DiskImageGraphNode *)&v8 toDictionary];
  v4 = [toDictionary mutableCopy];

  filePath = [(NativeDiskImageGraphNode *)self filePath];
  relativePath = [filePath relativePath];
  [v4 setObject:relativePath forKeyedSubscript:@"FilePath"];

  return v4;
}

- (id)toDIShadowNode
{
  v3 = [DIShadowNode alloc];
  filePath = [(NativeDiskImageGraphNode *)self filePath];
  v5 = [(DIShadowNode *)v3 initWithURL:filePath isCache:[(DiskImageGraphNode *)self isCache]];

  return v5;
}

- (BOOL)validateAppendedImageWithInfo:(id)info error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  filePath = [(NativeDiskImageGraphNode *)self filePath];
  v8 = [DiskImageGraph getImageInfoDictWithURL:filePath error:error];

  if (v8)
  {
    v9 = [v8 objectForKeyedSubscript:@"Image Format"];
    v10 = [v9 isEqualToString:@"RAW"];

    if (v10)
    {
      v11 = *__error();
      v12 = DIForwardLogs();
      if (v12)
      {
        v26 = 0;
        v14 = getDIOSLog(v12, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        *buf = 68157954;
        v28 = 72;
        v29 = 2080;
        v30 = "[NativeDiskImageGraphNode(Append) validateAppendedImageWithInfo:error:]";
        LODWORD(v25) = 18;
        v16 = _os_log_send_and_compose_impl(v15, &v26, 0, 0, &dword_248DE0000, v14, 0, "%.*s: Parent image is RAW, skipping shadow UUID validation on append.", buf, v25);

        if (v16)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v16);
          free(v16);
        }
      }

      else
      {
        v23 = getDIOSLog(v12, v13);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68157954;
          v28 = 72;
          v29 = 2080;
          v30 = "[NativeDiskImageGraphNode(Append) validateAppendedImageWithInfo:error:]";
          _os_log_impl(&dword_248DE0000, v23, OS_LOG_TYPE_DEFAULT, "%.*s: Parent image is RAW, skipping shadow UUID validation on append.", buf, 0x12u);
        }
      }

      *__error() = v11;
      goto LABEL_16;
    }

    v18 = [infoCopy objectForKeyedSubscript:@"Identity Info"];
    v19 = [v18 objectForKeyedSubscript:@"Parent UUID"];
    v20 = [v8 objectForKeyedSubscript:@"Identity Info"];
    v21 = [v20 objectForKeyedSubscript:@"UUID"];
    v22 = [v19 isEqualToString:v21];

    if (v22)
    {
LABEL_16:
      v17 = 1;
      goto LABEL_17;
    }

    v17 = [DIError failWithPOSIXCode:22 verboseInfo:@"UUID validation failed for appended image." error:error];
  }

  else
  {
    v17 = 0;
  }

LABEL_17:

  return v17;
}

@end
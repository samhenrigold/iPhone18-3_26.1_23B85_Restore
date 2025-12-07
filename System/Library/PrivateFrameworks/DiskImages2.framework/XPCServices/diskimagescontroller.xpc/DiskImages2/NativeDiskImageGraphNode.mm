@interface NativeDiskImageGraphNode
+ (BOOL)validateWithDictionary:(id)dictionary error:(id *)error;
- (BOOL)deleteImage;
- (NativeDiskImageGraphNode)initWithDictionary:(id)dictionary workDir:(id)dir error:(id *)error;
- (NativeDiskImageGraphNode)initWithURL:(id)l tag:(id)tag UUID:(id)d parentNode:(id)node metadata:(id)metadata isCache:(BOOL)cache;
- (id)toDIShadowNode;
- (id)toDictionary;
- (void)setFilePath:(id)path;
@end

@implementation NativeDiskImageGraphNode

- (id)toDIShadowNode
{
  v3 = [DIShadowNode alloc];
  filePath = [(NativeDiskImageGraphNode *)self filePath];
  v5 = [(DIShadowNode *)v3 initWithURL:filePath isCache:[(DiskImageGraphNode *)self isCache]];

  return v5;
}

+ (BOOL)validateWithDictionary:(id)dictionary error:(id *)error
{
  v6 = [NSMutableDictionary dictionaryWithDictionary:dictionary];
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___NativeDiskImageGraphNode;
  if (objc_msgSendSuper2(&v10, "validateWithDictionary:error:", v6, error) && [v6 validateAndPopObjectForKey:@"FilePath" className:objc_opt_class() isOptional:0 error:error])
  {
    if ([v6 count])
    {
      v7 = [NSString stringWithFormat:@"Validation failed, input contains unexpected data."];
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
    v17.receiver = self;
    v17.super_class = NativeDiskImageGraphNode;
    self = [(DiskImageGraphNode *)&v17 initWithDictionary:dictionaryCopy workDir:dirCopy error:error];
    if (self && ([dictionaryCopy objectForKey:@"FilePath"], v10 = objc_claimAutoreleasedReturnValue(), +[NSURL fileURLWithPath:relativeToURL:](NSURL, "fileURLWithPath:relativeToURL:", v10, dirCopy), v11 = objc_claimAutoreleasedReturnValue(), filePath = self->_filePath, self->_filePath = v11, filePath, v10, -[NativeDiskImageGraphNode filePath](self, "filePath"), v13 = objc_claimAutoreleasedReturnValue(), LOBYTE(v10) = objc_msgSend(v13, "checkResourceIsReachableAndReturnError:", error), v13, (v10 & 1) == 0))
    {
      selfCopy = [DIError nilWithPOSIXCode:2 verboseInfo:@"Image referenced in the pstack is unreachable." error:error];
    }

    else
    {
      selfCopy = self;
      self = selfCopy;
    }

    v15 = selfCopy;
  }

  else
  {
    v15 = 0;
  }

  return v15;
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
  v3 = +[NSFileManager defaultManager];
  filePath = [(NativeDiskImageGraphNode *)self filePath];
  v20 = 0;
  v5 = [v3 removeItemAtURL:filePath error:&v20];
  v6 = v20;

  if ((v5 & 1) == 0)
  {
    v7 = *__error();
    v8 = sub_1000E044C();
    if (v8)
    {
      v19 = 0;
      v10 = sub_1000E03D8(v8, v9);
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
      v14 = _os_log_send_and_compose_impl(v11, &v19, 0, 0, &_mh_execute_header, v10, 16, "%.*s: Failed to delete %@: %@", buf, 38);

      if (v14)
      {
        fprintf(__stderrp, "%s\n", v14);
        free(v14);
      }
    }

    else
    {
      v15 = sub_1000E03D8(v8, v9);
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
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%.*s: Failed to delete %@: %@", buf, 0x26u);
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

@end
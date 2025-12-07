@interface FSNode
+ (BOOL)canAccessURL:(id)l fromSandboxWithAuditToken:(id *)token operation:(const char *)operation;
+ (BOOL)canAccessURL:(id)l withAuditToken:(id *)token operation:(const char *)operation;
+ (BOOL)canReadMetadataOfURL:(id)l fromSandboxWithAuditToken:(id *)token;
+ (BOOL)canReadMetadataOfURL:(id)l withAuditToken:(id *)token;
+ (BOOL)getFileSystemRepresentation:(char)representation[1024] forBookmarkData:(id)data;
+ (BOOL)getVolumeIdentifier:(unint64_t *)identifier forBookmarkData:(id)data error:(id *)error;
+ (BOOL)isBookmarkDataFull:(id)full;
+ (id)_resolvedNodeFromAliasFile:(id)file flags:(unsigned int)flags error:(id *)error;
+ (id)_resolvedURLFromAliasFile:(id)file flags:(unsigned int)flags error:(id *)error;
+ (id)nameForBookmarkData:(id)data error:(id *)error;
+ (id)pathForBookmarkData:(id)data error:(id *)error;
+ (id)prebootVolumeNode;
+ (id)relativePathToFullPath:(id)path fromBasePath:(id)basePath;
+ (id)rootVolumeNode;
+ (id)systemDataVolumeNode;
+ (id)userDataVolumeNode;
- (BOOL)canReadFromSandboxWithAuditToken:(id *)token;
- (BOOL)canReadMetadataFromSandboxWithAuditToken:(id *)token;
- (BOOL)canReadMetadataWithAuditToken:(id *)token;
- (BOOL)canReadWithAuditToken:(id *)token;
- (BOOL)canWriteFromSandboxWithAuditToken:(id *)token;
- (BOOL)canWriteWithAuditToken:(id *)token;
- (BOOL)childNodeWithRelativePathExists:(id)exists;
- (BOOL)getDeviceNumber:(int *)number error:(id *)error;
- (BOOL)getFSID:(fsid *)d error:(id *)error;
- (BOOL)getFileIdentifier:(unint64_t *)identifier error:(id *)error;
- (BOOL)getFileSystemRepresentation:(char)representation[1024] error:(id *)error;
- (BOOL)getFinderInfo:(id *)info error:(id *)error;
- (BOOL)getHFSType:(unsigned int *)type creator:(unsigned int *)creator error:(id *)error;
- (BOOL)getInodeNumber:(unint64_t *)number error:(id *)error;
- (BOOL)getIsDirectory_NoIO:(BOOL *)o;
- (BOOL)getLength:(unint64_t *)length error:(id *)error;
- (BOOL)getOwnerUID:(unsigned int *)d error:(id *)error;
- (BOOL)getResourceValue:(id *)value forKey:(id)key options:(unsigned __int8)options error:(id *)error;
- (BOOL)getVolumeIdentifier:(unint64_t *)identifier error:(id *)error;
- (BOOL)getWriterBundleIdentifier:(id *)identifier error:(id *)error;
- (BOOL)hasPackageBit;
- (BOOL)isAVCHDCollection;
- (BOOL)isAliasFile;
- (BOOL)isDirectory;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExecutable;
- (BOOL)isExecutableModeFile;
- (BOOL)isSecuredSystemContent;
- (BOOL)isSideFault;
- (BOOL)isVolume;
- (BOOL)setExtendedAttribute:(id)attribute name:(id)name options:(int)options error:(id *)error;
- (BOOL)setFinderInfo:(id *)info error:(id *)error;
- (BOOL)setResourceValue:(id)value forKey:(id)key options:(unsigned __int8)options error:(id *)error;
- (FSNode)initWithCoder:(id)coder;
- (FSNode)initWithConfigurationString:(int)string flags:(unsigned int)flags error:(id *)error;
- (FSNode)initWithDirectory:(unint64_t)directory inDomain:(unint64_t)domain lastPathComponent:(id)component createIntermediateDirectories:(BOOL)directories flags:(unsigned int)flags error:(id *)error;
- (FSNode)initWithFileSystemRepresentation:(const char *)representation flags:(unsigned int)flags error:(id *)error;
- (FSNode)initWithPath:(id)path flags:(unsigned int)flags error:(id *)error;
- (FSNode)initWithURL:(id)l flags:(unsigned int)flags error:(id *)error;
- (NSString)description;
- (__CFBundle)copyCFBundleWithError:(id *)error;
- (id)URL;
- (id)bookmarkDataWithOptions:(unint64_t)options relativeToNode:(id)node error:(id *)error;
- (id)bundleIdentifierWithContext:(LSContext *)context error:(id *)error;
- (id)bundleInfoDictionaryWithError:(id *)error;
- (id)canonical:(BOOL)canonical pathWithError:(id *)error;
- (id)childNodeWithRelativePath:(id)path flags:(unsigned int)flags error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)diskImageURLWithFlags:(unsigned int)flags error:(id *)error;
- (id)extendedAttributeWithName:(id)name options:(int)options error:(id *)error;
- (id)extensionWithError:(id *)error;
- (id)initByResolvingBookmarkData:(id)data options:(unint64_t)options relativeToNode:(id)node bookmarkDataIsStale:(BOOL *)stale error:(id *)error;
- (id)nameWithError:(id *)error;
- (id)redactedDescription;
- (id)referringAliasNode;
- (id)resolvedNodeWithFlags:(unsigned int)flags error:(id *)error;
- (id)sideFaultResourceValuesWithError:(id *)error;
- (id)temporaryDirectoryNodeWithFlags:(unsigned int)flags error:(id *)error;
- (id)volumeNodeWithFlags:(unsigned int)flags error:(id *)error;
- (unint64_t)hash;
- (void)clearURLPropertyCacheIfStale;
- (void)encodeWithCoder:(id)coder;
- (void)prepareForReuse;
- (void)removeCachedResourceValueForKey:(id)key;
- (void)setReferringAliasNode:(id)node;
- (void)setTemporaryResourceValue:(id)value forKey:(id)key;
@end

@implementation FSNode

- (id)URL
{
  if ((*(self + 24) & 0x10) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FSUtils.mm" lineNumber:484 description:{@"Attempted to use uninitialized FSNode %p.", self}];
  }

  url = self->_url;

  return url;
}

- (void)clearURLPropertyCacheIfStale
{
  if (self->_cacheExpiration != -1)
  {
    v3 = mach_absolute_time();
    if (self->_cacheExpiration < v3)
    {
      v4 = v3;
      v5 = [(FSNode *)self URL];
      [v5 removeAllCachedResourceValues];

      if (_FSNodeInfoLifetimeAbsolute(void)::once != -1)
      {
        [FSNode copyWithZone:];
      }

      self->_cacheExpiration = _FSNodeInfoLifetimeAbsolute(void)::nodeInfoLifetimeAbsolute + v4;
    }
  }
}

- (BOOL)isVolume
{
  isDirectory = [(FSNode *)self isDirectory];
  if (isDirectory)
  {
    if (_FSNodeGetSimpleBoolValue(self, *MEMORY[0x1E695DBE8], 8, 0))
    {
      LOBYTE(isDirectory) = 1;
    }

    else
    {

      LOBYTE(isDirectory) = [(FSNode *)self isMountTrigger];
    }
  }

  return isDirectory;
}

- (BOOL)isDirectory
{
  if ((*(self + 24) & 3) != 0)
  {
    return (*(self + 24) & 3) == 2;
  }

  else
  {
    return _FSNodeGetSimpleBoolValue(self, *MEMORY[0x1E695DB78], 2, 0);
  }
}

- (id)referringAliasNode
{
  if ((*(self + 24) & 4) != 0)
  {
    v3 = objc_getAssociatedObject(self, &_kFSNodeReferringAliasNodeKey);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasPackageBit
{
  v8 = *MEMORY[0x1E69E9840];
  isDirectory = [(FSNode *)self isDirectory];
  if (isDirectory)
  {
    v4 = [(FSNode *)self getFinderInfo:v6 error:0];
    return *&v4 & ((v7 & 0x2000) >> 13);
  }

  return isDirectory;
}

- (BOOL)isAVCHDCollection
{
  if ([(FSNode *)self isDirectory])
  {
    v3 = [(FSNode *)self nameWithError:0];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 length];
      if (v5 == 4)
      {
        v6 = @"BDMV";
        v7 = @"INDEX.BDMV";
        v8 = @"INDEX.BDM";
        v9 = @"index.bdmv";
        v10 = @"index.bdm";
      }

      else
      {
        if (v5 != 5)
        {
          goto LABEL_9;
        }

        v6 = @"AVCHD";
        v7 = @"BDMV/INDEX.BDMV";
        v8 = @"BDMV/INDEX.BDM";
        v9 = @"BDMV/index.bdmv";
        v10 = @"BDMV/index.bdm";
      }

      if (![v4 caseInsensitiveCompare:v6])
      {
        v11 = [(FSNode *)self childNodeWithRelativePathExists:v10]|| [(FSNode *)self childNodeWithRelativePathExists:v8]|| [(FSNode *)self childNodeWithRelativePathExists:v9]|| [(FSNode *)self childNodeWithRelativePathExists:v7];
        goto LABEL_10;
      }
    }

LABEL_9:
    v11 = 0;
LABEL_10:

    return v11;
  }

  return 0;
}

- (void)prepareForReuse
{
  if ((*(self + 24) & 0x10) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FSUtils.mm" lineNumber:280 description:{@"Attempted to prepare FSNode %p for reuse, but it was already prepared.", self}];
  }

  url = self->_url;
  self->_url = 0;

  [(FSNode *)self setReferringAliasNode:0];
  *(self + 24) &= ~0x10u;
}

- (BOOL)isAliasFile
{
  isResolvable = [(FSNode *)self isResolvable];
  if (isResolvable)
  {
    LOBYTE(isResolvable) = ![(FSNode *)self isSymbolicLink];
  }

  return isResolvable;
}

- (BOOL)isExecutable
{
  if (![(FSNode *)self isRegularFile])
  {
    return 0;
  }

  v3 = [(FSNode *)self extensionWithError:0];
  v4 = v3;
  if (v3 && [v3 length] || !-[FSNode isExecutableModeFile](self, "isExecutableModeFile") || (v8 = 1061109567, !-[FSNode getHFSType:creator:error:](self, "getHFSType:creator:error:", &v8, 0, 0)))
  {
    v6 = 0;
  }

  else
  {
    if (v8)
    {
      v5 = v8 == 1061109567;
    }

    else
    {
      v5 = 1;
    }

    v6 = v5;
  }

  return v6;
}

- (BOOL)isSideFault
{
  v3 = [(FSNode *)self nameWithError:0];
  if (v3 && _CFURLIsPromiseName())
  {
    v4 = [(FSNode *)self URL];
    v5 = _CFURLIsItemPromiseAtURL() != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (FSNode)initWithURL:(id)l flags:(unsigned int)flags error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = FSNode;
  v9 = [(FSNode *)&v28 init];
  v10 = v9;
  if (!v9)
  {
    if (error)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, 0, "[FSNode initWithURL:flags:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 248);
      *error = v20 = 0;
      return v20;
    }

    return 0;
  }

  if ((*(v9 + 24) & 0x10) != 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v10 file:@"FSUtils.mm" lineNumber:174 description:{@"Attempted to initialize FSNode %p that was already initialized", v10}];
  }

  p_url = &v10->_url;
  url = v10->_url;
  v10->_url = 0;

  v10->_cacheExpiration = -1;
  *(v10 + 24) = (flags >> 3) & 8 | *(v10 + 24) & 0xE0 | 0x10;
  if (!l || ![l isFileURL])
  {
    if (error)
    {
      v29 = *MEMORY[0x1E696A278];
      v30[0] = @"aURL";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v21, "[FSNode initWithURL:flags:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 243);
    }

    return 0;
  }

  v13 = *p_url;
  if (*p_url)
  {
    *p_url = 0;
  }

  if ((flags & 0x20) != 0)
  {
    v27 = 0;
    v14 = [l getResourceValue:&v27 forKey:*MEMORY[0x1E695DA88] error:0];
    v15 = v27;
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    if (v16 == 1)
    {
      v17 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v15 isDirectory:{objc_msgSend(l, "hasDirectoryPath")}];
      v18 = v17;
      if (v17 && ([v17 isEqual:l] & 1) == 0)
      {
        objc_storeStrong(&v10->_url, v18);
      }
    }
  }

  if (!*p_url)
  {
    objc_storeStrong(&v10->_url, l);
  }

  LODWORD(v19) = (flags >> 2) & 0x10 | flags;
  if ((flags & 8) != 0)
  {
    *(v10 + 24) = *(v10 + 24) & 0xFC | 2;
  }

  if ((flags & 2) == 0)
  {
    v20 = v10;
    goto LABEL_35;
  }

  v19 = v19 | 1;
  v22 = [(FSNode *)v10 resolvedNodeWithFlags:v19 error:error];
  v23 = v22;
  if (!v22)
  {

    return 0;
  }

  if (v10 == v22)
  {
    v20 = v10;
  }

  else
  {
    v20 = v22;
  }

LABEL_35:
  if ((v19 & 1) != 0 && ![(FSNode *)v20 checkResourceIsReachableAndReturnError:error])
  {

    return 0;
  }

  if ((v19 & 0x10) == 0)
  {
    v24 = mach_absolute_time();
    if (_FSNodeInfoLifetimeAbsolute(void)::once != -1)
    {
      [FSNode initWithURL:flags:error:];
    }

    v20->_cacheExpiration = _FSNodeInfoLifetimeAbsolute(void)::nodeInfoLifetimeAbsolute + v24;
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  selfCopy = self;
  equalCopy = equal;
  v7 = [(FSNode *)selfCopy URL];
  v8 = [equalCopy URL];
  v9 = v8;
  if (v7 && v8 && ([v7 isEqual:v8] & 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    v14 = 0;
    v11 = *MEMORY[0x1E695DB00];
    if ([(FSNode *)selfCopy getResourceValue:&v14 forKey:*MEMORY[0x1E695DB00] options:1 error:0])
    {
      v13 = 0;
      if ([equalCopy getResourceValue:&v13 forKey:v11 options:1 error:0])
      {
        v10 = [v14 isEqual:v13];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v4 = 0;
  if ([(FSNode *)self getResourceValue:&v4 forKey:*MEMORY[0x1E695E2B0] options:1 error:0])
  {
    v2 = [v4 hash];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSString)description
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(self + 24);
  bzero(v8, 0x400uLL);
  if (![(FSNode *)self getFileSystemRepresentation:v8 error:0])
  {
    v8[0] = 63;
  }

  if ((v3 & 3) == 2)
  {
    v4 = 121;
  }

  else
  {
    v4 = 63;
  }

  if ((v3 & 3) == 1)
  {
    v5 = 110;
  }

  else
  {
    v5 = v4;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<FSNode %p> { isDir = %c, path = '%s' }", self, v5, v8];

  return v6;
}

- (id)redactedDescription
{
  v2 = *(self + 24) & 3;
  if (v2 == 2)
  {
    LODWORD(v3) = 121;
  }

  else
  {
    LODWORD(v3) = 63;
  }

  if (v2 == 1)
  {
    v3 = 110;
  }

  else
  {
    v3 = v3;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<FSNode %p> { isDir = %c, path = <private> }", self, v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    v5 = [(FSNode *)self URL];
    v7 = v5;
    if (v5)
    {
      if ([__LSDefaultsGetSharedInstance(v5 v6)])
      {
        v8 = v7;
        relativeString = *(v4 + 8);
        *(v4 + 8) = v8;
      }

      else
      {
        v10 = objc_alloc(MEMORY[0x1E695DFF8]);
        relativeString = [v7 relativeString];
        baseURL = [v7 baseURL];
        v12 = [v10 initWithString:relativeString relativeToURL:baseURL];
        v13 = *(v4 + 8);
        *(v4 + 8) = v12;
      }
    }

    *(v4 + 16) = self->_cacheExpiration;
    *(v4 + 24) = *(v4 + 24) & 0xFC | *(self + 24) & 3;
    referringAliasNode = [(FSNode *)self referringAliasNode];
    if (referringAliasNode)
    {
      [v4 setReferringAliasNode:referringAliasNode];
    }

    *(v4 + 24) &= ~8u;
    v15 = mach_absolute_time();
    if (_FSNodeInfoLifetimeAbsolute(void)::once != -1)
    {
      [FSNode copyWithZone:];
    }

    *(v4 + 16) = _FSNodeInfoLifetimeAbsolute(void)::nodeInfoLifetimeAbsolute + v15;
    *(v4 + 24) = *(v4 + 24) & 0xEF | *(self + 24) & 0x10;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = [(FSNode *)self URL];
  [coder encodeObject:? forKey:?];

  [coder encodeInt64:*(self + 24) & 3 forKey:@"isDirectory"];
  referringAliasNode = [(FSNode *)self referringAliasNode];
  [coder encodeObject:? forKey:?];
}

- (FSNode)initWithCoder:(id)coder
{
  v5 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
  v6 = v5;
  if (v5 && ([v5 isFileURL] & 1) != 0)
  {
    v7 = [coder decodeInt64ForKey:@"isDirectory"];
    v8 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"referringAliasNode"];
    v13 = 0;
    v9 = [(FSNode *)self initWithURL:v6 flags:0 error:&v13];
    v10 = v13;
    if (v9)
    {
      *(v9 + 24) = *(v9 + 24) & 0xFC | v7 & 3;
      if (v8)
      {
        [(FSNode *)v9 setReferringAliasNode:v8];
      }
    }

    else
    {
      [coder failWithError:v10];
    }
  }

  else
  {
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4864, 0, "[FSNode initWithCoder:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 450);
    [coder failWithError:v11];

    v9 = 0;
  }

  return v9;
}

- (FSNode)initWithPath:(id)path flags:(unsigned int)flags error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (path)
  {
    v7 = *&flags;
    v8 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:path isDirectory:(flags >> 3) & 1];
    v9 = [(FSNode *)self initWithURL:v8 flags:v7 error:error];
  }

  else
  {
    if (error)
    {
      v12 = *MEMORY[0x1E696A278];
      v13[0] = @"path";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v10, "[FSNode initWithPath:flags:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 525);
    }

    return 0;
  }

  return v9;
}

- (FSNode)initWithFileSystemRepresentation:(const char *)representation flags:(unsigned int)flags error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (representation)
  {
    v7 = *&flags;
    v8 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:representation isDirectory:(flags >> 3) & 1 relativeToURL:0];
    v9 = [(FSNode *)self initWithURL:v8 flags:v7 error:error];
  }

  else
  {
    if (error)
    {
      v12 = *MEMORY[0x1E696A278];
      v13[0] = @"path";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v10, "[FSNode initWithFileSystemRepresentation:flags:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 538);
    }

    return 0;
  }

  return v9;
}

- (FSNode)initWithDirectory:(unint64_t)directory inDomain:(unint64_t)domain lastPathComponent:(id)component createIntermediateDirectories:(BOOL)directories flags:(unsigned int)flags error:(id *)error
{
  v9 = *&flags;
  directoriesCopy = directories;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v16 = [defaultManager URLsForDirectory:directory inDomains:domain];

  if (v16 && [v16 count] && ((objc_msgSend(v16, "objectAtIndexedSubscript:", 0), v17 = objc_claimAutoreleasedReturnValue(), !component) || !objc_msgSend(component, "length") ? (v18 = v17) : (objc_msgSend(v17, "URLByAppendingPathComponent:isDirectory:", component, (v9 >> 3) & 1), v18 = objc_claimAutoreleasedReturnValue()), v19 = v18, v17, v19))
  {

    if (self && directoriesCopy)
    {
      v20 = v19;
      v21 = v20;
      v22 = v20;
      if ((v9 & 8) == 0)
      {
        uRLByDeletingLastPathComponent = [v20 URLByDeletingLastPathComponent];

        v22 = uRLByDeletingLastPathComponent;
      }

      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v25 = [defaultManager2 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:error];

      if ((v25 & 1) == 0)
      {

        self = 0;
      }
    }

    if (self)
    {
      self = [(FSNode *)self initWithURL:v19 flags:v9 error:error];
    }
  }

  else
  {
    if (error)
    {
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -120, 0, "[FSNode initWithDirectory:inDomain:lastPathComponent:createIntermediateDirectories:flags:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 570);
    }

    v19 = 0;
    self = 0;
  }

  return self;
}

- (FSNode)initWithConfigurationString:(int)string flags:(unsigned int)flags error:(id *)error
{
  v6 = *&flags;
  v11 = *MEMORY[0x1E69E9840];
  if (confstr(string, v10, 0x400uLL))
  {
    return [(FSNode *)self initWithFileSystemRepresentation:v10 flags:v6 error:error];
  }

  if (error)
  {
    v9 = __error();
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v9, 0, "[FSNode initWithConfigurationString:flags:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 607);
  }

  return 0;
}

- (BOOL)getResourceValue:(id *)value forKey:(id)key options:(unsigned __int8)options error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  propertyValueTypeRefPtr = 0;
  if (!key)
  {
    if (error)
    {
      v25 = *MEMORY[0x1E696A278];
      v26[0] = @"key";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v14, "[FSNode getResourceValue:forKey:options:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 781);
    }

    goto LABEL_32;
  }

  if ((*(self + 24) & 3) != 0 && [key isEqual:*MEMORY[0x1E695DB78]])
  {
    propertyValueTypeRefPtr = [MEMORY[0x1E696AD98] numberWithBool:(*(self + 24) & 3) == 2];
    goto LABEL_23;
  }

  [(FSNode *)self clearURLPropertyCacheIfStale];
  if (options)
  {
    v23 = 0;
    v15 = [(FSNode *)self URL];
    v16 = v15;
    if (error)
    {
      v17 = &v23;
    }

    else
    {
      v17 = 0;
    }

    v18 = CFURLCopyResourcePropertyForKey(v15, key, &propertyValueTypeRefPtr, v17);

    if (error != 0 && v18 == 0)
    {
      *error = v23;

      goto LABEL_32;
    }

    if (!v18)
    {
LABEL_32:
      v21 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v11 = [(FSNode *)self URL];
    v12 = _CFURLCopyResourcePropertyForKeyFromCache() == 0;

    if (v12)
    {
      if (error)
      {
        v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10655, 0, "[FSNode getResourceValue:forKey:options:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 812);
LABEL_27:
        v21 = 0;
        *error = v13;
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  v19 = propertyValueTypeRefPtr;
  if (propertyValueTypeRefPtr && (*(self + 24) & 3) == 0 && [key isEqual:*MEMORY[0x1E695DB78]])
  {
    if ([v19 BOOLValue])
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    *(self + 24) = *(self + 24) & 0xFC | v20;
  }

LABEL_23:
  if ((options & 2) == 0 && !propertyValueTypeRefPtr)
  {
    if (error)
    {
      v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "[FSNode getResourceValue:forKey:options:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 825);
      goto LABEL_27;
    }

    goto LABEL_32;
  }

  if (value)
  {
    objc_storeStrong(value, propertyValueTypeRefPtr);
  }

  v21 = 1;
LABEL_33:

  return v21;
}

- (BOOL)setResourceValue:(id)value forKey:(id)key options:(unsigned __int8)options error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (key && ((options & 2) == 0 ? (v8 = value == 0) : (v8 = 0), !v8 ? (v9 = 0) : (v9 = 1), (options & 1) != 0 && (v9 & 1) == 0))
  {
    v17 = 0;
    v11 = [(FSNode *)self URL];
    v12 = v11;
    if (error)
    {
      v13 = &v17;
    }

    else
    {
      v13 = 0;
    }

    v14 = CFURLSetResourcePropertyForKey(v11, key, value, v13) != 0;

    if (error != 0 && !v14)
    {
      *error = v17;
    }
  }

  else
  {
    if (error)
    {
      v18 = *MEMORY[0x1E696A278];
      v19[0] = @"invalid input parameters";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v15, "[FSNode setResourceValue:forKey:options:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 851);
    }

    return 0;
  }

  return v14;
}

- (void)removeCachedResourceValueForKey:(id)key
{
  if (key)
  {
    v4 = [(FSNode *)self URL];
    CFURLClearResourcePropertyCacheForKey(v4, key);
  }
}

- (void)setTemporaryResourceValue:(id)value forKey:(id)key
{
  if (key)
  {
    v6 = [(FSNode *)self URL];
    CFURLSetTemporaryResourcePropertyForKey(v6, key, value);
  }
}

- (id)sideFaultResourceValuesWithError:(id *)error
{
  v5 = [(FSNode *)self nameWithError:?];
  if (!v5)
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  if (!_CFURLIsPromiseName())
  {
    if (error)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10817, 0, "[FSNode sideFaultResourceValuesWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 897);
      *error = v7 = 0;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = [(FSNode *)self URL];
  v7 = _CFURLCopyPropertiesOfPromiseAtURL();

  if (error && !v7)
  {
    *error = 0;
  }

LABEL_10:

  return v7;
}

- (BOOL)childNodeWithRelativePathExists:(id)exists
{
  v3 = [(FSNode *)self childNodeWithRelativePath:exists flags:1 error:0];
  v4 = v3 != 0;

  return v4;
}

- (id)childNodeWithRelativePath:(id)path flags:(unsigned int)flags error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (path)
  {
    v6 = *&flags;
    if ([path length])
    {
      if ((v6 & 8) != 0)
      {
        v9 = 1;
      }

      else
      {
        v9 = [path hasSuffix:@"/"];
      }

      v12 = [(FSNode *)self URL];
      path = [v12 path];
      v14 = [path stringByAppendingPathComponent:path];

      if (v14)
      {
        v15 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v14 isDirectory:v9];

        if (v15)
        {
          v16 = [[FSNode alloc] initWithURL:v15 flags:v6 error:error];

          goto LABEL_17;
        }

        goto LABEL_16;
      }

      if (error)
      {
        v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -2110, 0, "[FSNode childNodeWithRelativePath:flags:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 954);
        goto LABEL_15;
      }
    }

    else if (error)
    {
      v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -37, 0, "[FSNode childNodeWithRelativePath:flags:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 962);
LABEL_15:
      v16 = 0;
      *error = v11;
      goto LABEL_17;
    }
  }

  else if (error)
  {
    v18 = *MEMORY[0x1E696A278];
    v19[0] = @"childPath";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v10, "[FSNode childNodeWithRelativePath:flags:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 966);
  }

LABEL_16:
  v16 = 0;
LABEL_17:

  return v16;
}

- (id)volumeNodeWithFlags:(unsigned int)flags error:(id *)error
{
  v9 = 0;
  if ([(FSNode *)self getResourceValue:&v9 forKey:*MEMORY[0x1E695DEB0] options:1 error:error])
  {
    v6 = [FSNode alloc];
    v7 = [(FSNode *)v6 initWithURL:v9 flags:flags | 8 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)diskImageURLWithFlags:(unsigned int)flags error:(id *)error
{
  v6 = 0;
  [(FSNode *)self getResourceValue:&v6 forKey:*MEMORY[0x1E695E278] options:1 error:error];
  v4 = v6;

  return v4;
}

- (void)setReferringAliasNode:(id)node
{
  if (node)
  {
    v4 = 4;
  }

  else
  {
    if ((*(self + 24) & 4) == 0)
    {
      return;
    }

    v4 = 0;
  }

  objc_setAssociatedObject(self, &_kFSNodeReferringAliasNodeKey, node, 1);
  *(self + 24) = *(self + 24) & 0xFB | v4;
}

+ (id)_resolvedURLFromAliasFile:(id)file flags:(unsigned int)flags error:(id *)error
{
  errorCopy = error;
  v12[1] = *MEMORY[0x1E69E9840];
  if (file)
  {
    v7 = [file URL];
    if ((flags & 0x80) != 0)
    {
      v8 = ~(flags << 6) & 0x100;
    }

    else
    {
      v8 = ~(flags << 6) & 0x100 | 0x200;
    }

    errorCopy = [MEMORY[0x1E695DFF8] URLByResolvingAliasFileAtURL:v7 options:v8 error:errorCopy];
  }

  else if (error)
  {
    v11 = *MEMORY[0x1E696A278];
    v12[0] = @"node";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *errorCopy = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v9, "+[FSNode _resolvedURLFromAliasFile:flags:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 1040);

    errorCopy = 0;
  }

  return errorCopy;
}

+ (id)_resolvedNodeFromAliasFile:(id)file flags:(unsigned int)flags error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (file)
  {
    v9 = [self _resolvedURLFromAliasFile:file flags:*&flags error:error];
    v10 = v9;
    if (v9)
    {
      if ([v9 isFileURL])
      {
        fileCopy = [[self alloc] initWithURL:v10 flags:flags & 0xFFFFFFFD error:error];
        if (fileCopy && _CFURLGetResourcePropertyFlags())
        {
          fileCopy[24] = fileCopy[24] & 0xFC | 1;
        }
      }

      else
      {
        fileCopy = file;
      }
    }

    else
    {
      fileCopy = 0;
    }

    goto LABEL_11;
  }

  if (error)
  {
    v13 = *MEMORY[0x1E696A278];
    v14[0] = @"node";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v10, "+[FSNode _resolvedNodeFromAliasFile:flags:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 1078);
    *error = fileCopy = 0;
LABEL_11:

    goto LABEL_12;
  }

  fileCopy = 0;
LABEL_12:

  return fileCopy;
}

- (id)resolvedNodeWithFlags:(unsigned int)flags error:(id *)error
{
  v5 = *&flags;
  if ([(FSNode *)self isDirectory]|| ![(FSNode *)self checkResourceIsReachableAndReturnError:0]|| ![(FSNode *)self isResolvable])
  {
    selfCopy = self;
    goto LABEL_14;
  }

  v7 = [objc_opt_class() _resolvedNodeFromAliasFile:self flags:v5 error:error];
  selfCopy = v7;
  if (v7)
  {
    v9 = v7 == self;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v5 & 8) == 0 || (v10)
  {
    if (v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(v7 + 24) = *(v7 + 24) & 0xFC | 2;
  }

  [(FSNode *)v7 setReferringAliasNode:self];
LABEL_14:

  return selfCopy;
}

- (id)temporaryDirectoryNodeWithFlags:(unsigned int)flags error:(id *)error
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];

  if (temporaryDirectory)
  {
    v8 = [[FSNode alloc] initWithURL:temporaryDirectory flags:flags | 8 error:error];
  }

  else if (error)
  {
    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -120, 0, "[FSNode temporaryDirectoryNodeWithFlags:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 1154);
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)relativePathToFullPath:(id)path fromBasePath:(id)basePath
{
  v6 = [path length];
  v7 = [basePath length];
  if (v6 <= v7 || (v8 = v7, [path compare:basePath options:0 range:{0, v7}]) || objc_msgSend(path, "characterAtIndex:", v8) == 47 && (++v8, v6 <= v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = [path substringWithRange:{v8, v6 - v8}];
  }

  return v9;
}

- (BOOL)getIsDirectory_NoIO:(BOOL *)o
{
  v7 = 0;
  v4 = [(FSNode *)self getResourceValue:&v7 forKey:*MEMORY[0x1E695DB78] options:0 error:0];
  v5 = !v4;
  if (!o)
  {
    v5 = 1;
  }

  if ((v5 & 1) == 0)
  {
    *o = [v7 BOOLValue];
  }

  return v4;
}

- (BOOL)isExecutableModeFile
{
  if (![(FSNode *)self isRegularFile])
  {
    return 0;
  }

  v5 = 0;
  if ([(FSNode *)self getResourceValue:&v5 forKey:*MEMORY[0x1E695E3C0] options:1 error:0])
  {
    v3 = ([v5 unsignedLongLongValue] & 0x49) != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)canonical:(BOOL)canonical pathWithError:(id *)error
{
  canonicalCopy = canonical;
  v19 = 0;
  if (canonical || !self || (*(self + 24) & 8) == 0 || (v7 = __CFURLResourceInfoPtr(), v18 = 0, !v7) || !MEMORY[0x1865D5CC0](v7, *MEMORY[0x1E695EBF8], &v18) || (v8 = v18, (v19 = v8) == 0))
  {
    v9 = MEMORY[0x1E695DA88];
    if (!canonicalCopy)
    {
      v9 = MEMORY[0x1E695DC40];
    }

    v10 = *v9;
    if (![(FSNode *)self getResourceValue:&v19 forKey:v10 options:1 error:error])
    {
      v11 = [(FSNode *)self URL];
      isFileReferenceURL = [v11 isFileReferenceURL];

      if ((isFileReferenceURL & 1) == 0)
      {
        v13 = [(FSNode *)self URL];
        absoluteURL = [v13 absoluteURL];

        if (absoluteURL)
        {
          path = [absoluteURL path];
          v16 = v19;
          v19 = path;
        }
      }
    }

    v8 = v19;
  }

  return v8;
}

- (BOOL)getFileSystemRepresentation:(char)representation[1024] error:(id *)error
{
  v6 = [(FSNode *)self pathWithError:error];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  if (([v6 getFileSystemRepresentation:representation maxLength:1024] & 1) == 0)
  {
    if (error)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -2110, 0, "[FSNode getFileSystemRepresentation:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 1395);
      *error = v8 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = 1;
LABEL_7:

  return v8;
}

- (id)nameWithError:(id *)error
{
  v12 = 0;
  if (!self || (*(self + 24) & 8) == 0 || !__CFURLResourceInfoPtr() || (MEMORY[0x1865D5CB0](), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (![(FSNode *)self getResourceValue:&v12 forKey:*MEMORY[0x1E695DC30] options:1 error:error])
    {
      v5 = [(FSNode *)self URL];
      isFileReferenceURL = [v5 isFileReferenceURL];

      if ((isFileReferenceURL & 1) == 0)
      {
        v7 = [(FSNode *)self URL];
        lastPathComponent = [v7 lastPathComponent];
        v9 = v12;
        v12 = lastPathComponent;
      }
    }
  }

  v10 = v12;

  return v10;
}

- (id)extensionWithError:(id *)error
{
  v13 = 0;
  if (!self || (*(self + 24) & 8) == 0)
  {
    v5 = 0;
LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v8 = __CFURLResourceInfoPtr();
  v5 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  MEMORY[0x1865D5CC0](v8, @"com.apple.LSExtensionKey", &v13);
  v9 = v13;
  if (v13)
  {
    goto LABEL_15;
  }

  v6 = 1;
LABEL_5:
  v7 = [(FSNode *)self nameWithError:error];
  if (v7)
  {
    _CFGetPathExtensionRangesFromPathComponent();
    v13 = &stru_1EEF65710;
  }

  v9 = v13;
  if (v13)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 1)
  {
    MEMORY[0x1865D5CD0](v5, @"com.apple.LSExtensionKey");
    v9 = v13;
  }

LABEL_15:
  v11 = v9;

  return v11;
}

+ (id)rootVolumeNode
{
  if (+[FSNode rootVolumeNode]::once != -1)
  {
    +[FSNode rootVolumeNode];
  }

  v3 = +[FSNode rootVolumeNode]::result;

  return v3;
}

void __24__FSNode_rootVolumeNode__block_invoke()
{
  v0 = [FSNode alloc];
  v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/" isDirectory:1];
  v1 = [FSNode initWithURL:v0 flags:"initWithURL:flags:error:" error:?];
  v2 = +[FSNode rootVolumeNode]::result;
  +[FSNode rootVolumeNode]::result = v1;
}

+ (id)prebootVolumeNode
{
  if (+[FSNode prebootVolumeNode]::onceToken != -1)
  {
    +[FSNode prebootVolumeNode];
  }

  v3 = +[FSNode prebootVolumeNode]::result;

  return v3;
}

void __27__FSNode_prebootVolumeNode__block_invoke()
{
  v0 = [FSNode alloc];
  v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/private/preboot" isDirectory:1];
  v1 = [FSNode initWithURL:v0 flags:"initWithURL:flags:error:" error:?];
  v2 = +[FSNode prebootVolumeNode]::result;
  +[FSNode prebootVolumeNode]::result = v1;
}

+ (id)systemDataVolumeNode
{
  if (+[FSNode systemDataVolumeNode]::once != -1)
  {
    +[FSNode systemDataVolumeNode];
  }

  v3 = +[FSNode systemDataVolumeNode]::result;

  return v3;
}

void __30__FSNode_systemDataVolumeNode__block_invoke()
{
  v0 = [FSNode alloc];
  v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/private/var" isDirectory:1];
  v1 = [FSNode initWithURL:v0 flags:"initWithURL:flags:error:" error:?];
  v2 = +[FSNode systemDataVolumeNode]::result;
  +[FSNode systemDataVolumeNode]::result = v1;
}

+ (id)userDataVolumeNode
{
  if (+[FSNode userDataVolumeNode]::once != -1)
  {
    +[FSNode userDataVolumeNode];
  }

  v3 = +[FSNode userDataVolumeNode]::result;

  return v3;
}

void __28__FSNode_userDataVolumeNode__block_invoke()
{
  v0 = [FSNode alloc];
  v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/private/var/mobile" isDirectory:1];
  v1 = [FSNode initWithURL:v0 flags:"initWithURL:flags:error:" error:?];
  v2 = +[FSNode userDataVolumeNode]::result;
  +[FSNode userDataVolumeNode]::result = v1;
}

- (BOOL)getVolumeIdentifier:(unint64_t *)identifier error:(id *)error
{
  v8 = 0;
  v5 = [(FSNode *)self getResourceValue:&v8 forKey:*MEMORY[0x1E695E3F0] options:1 error:error];
  v6 = !v5;
  if (!identifier)
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    *identifier = [v8 unsignedLongLongValue];
  }

  return v5;
}

- (BOOL)isSecuredSystemContent
{
  v20 = *MEMORY[0x1E69E9840];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __32__FSNode_isSecuredSystemContent__block_invoke;
  v13[3] = &unk_1E6A18D78;
  v13[4] = self;
  v13[5] = a2;
  if ([FSNode isSecuredSystemContent]::once != -1)
  {
    dispatch_once(&[FSNode isSecuredSystemContent]::once, v13);
  }

  NonFictionalDeviceNumber = _FSNodeGetNonFictionalDeviceNumber(self);
  v4 = NonFictionalDeviceNumber;
  if (NonFictionalDeviceNumber)
  {
    v5 = [FSNode isSecuredSystemContent]::securedDeviceNumber;
    do
    {
      v7 = *v5++;
      v6 = v7;
      v8 = v7 != 0;
      if (v7)
      {
        v9 = NonFictionalDeviceNumber == v6;
      }

      else
      {
        v9 = 1;
      }
    }

    while (!v9);
  }

  else
  {
    v8 = 0;
  }

  v10 = _LSDefaultLog(NonFictionalDeviceNumber);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = "NO";
    *buf = 136315650;
    if (v8)
    {
      v12 = "YES";
    }

    v15 = v12;
    v16 = 2048;
    v17 = v4;
    v18 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEBUG, "FSNode.isSecuredSystemContent=%s: device number %llu for %@", buf, 0x20u);
  }

  return v8;
}

void __32__FSNode_isSecuredSystemContent__block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v15[0] = +[FSNode rootVolumeNode];
  +[FSNode prebootVolumeNode];
  v1 = 0;
  v15[1] = v2 = 0;
  do
  {
    v3 = v15[v2];
    NonFictionalDeviceNumber = _FSNodeGetNonFictionalDeviceNumber(v3);
    [FSNode isSecuredSystemContent]::securedDeviceNumber[v1] = NonFictionalDeviceNumber;
    if (NonFictionalDeviceNumber)
    {
      v5 = _LSDefaultLog(NonFictionalDeviceNumber);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [FSNode isSecuredSystemContent]::securedDeviceNumber[v1];
        *buf = 134218242;
        v12 = v6;
        v13 = 2112;
        v14 = v3;
        _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "Found secured device number %llu for %@", buf, 0x16u);
      }

      ++v1;
    }

    else
    {
      v7 = _LSDefaultLog(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v3;
        _os_log_error_impl(&dword_18162D000, v7, OS_LOG_TYPE_ERROR, "Secured device number is zero for %@", buf, 0xCu);
      }
    }

    ++v2;
  }

  while (v2 != 2);
  if (v1 > 2)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"FSUtils.mm" lineNumber:1840 description:@"Too many secure device numbers"];
  }

  for (i = 1; i != -1; --i)
  {
  }
}

- (BOOL)getDeviceNumber:(int *)number error:(id *)error
{
  v8 = 0;
  v5 = [(FSNode *)self getResourceValue:&v8 forKey:*MEMORY[0x1E695E3E8] options:1 error:error];
  v6 = !v5;
  if (!number)
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    *number = [v8 unsignedLongLongValue];
  }

  return v5;
}

- (BOOL)getInodeNumber:(unint64_t *)number error:(id *)error
{
  v8 = 0;
  v5 = [(FSNode *)self getResourceValue:&v8 forKey:*MEMORY[0x1E695E2F0] options:1 error:error];
  v6 = !v5;
  if (!number)
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    *number = [v8 unsignedLongLongValue];
  }

  return v5;
}

- (BOOL)getFileIdentifier:(unint64_t *)identifier error:(id *)error
{
  v8 = 0;
  v5 = [(FSNode *)self getResourceValue:&v8 forKey:*MEMORY[0x1E695E2B0] options:1 error:error];
  v6 = !v5;
  if (!identifier)
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    *identifier = [v8 unsignedLongLongValue];
  }

  return v5;
}

- (BOOL)getOwnerUID:(unsigned int *)d error:(id *)error
{
  v8 = 0;
  v5 = [(FSNode *)self getResourceValue:&v8 forKey:*MEMORY[0x1E695E398] options:1 error:error];
  v6 = !v5;
  if (!d)
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    *d = [v8 unsignedLongLongValue];
  }

  return v5;
}

- (BOOL)getFSID:(fsid *)d error:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  if (![(FSNode *)self getFileSystemRepresentation:v12 error:?])
  {
    return 0;
  }

  v6 = statfs(v12, &v11);
  v7 = v6 == 0;
  if (v6)
  {
    if (error)
    {
      v8 = *MEMORY[0x1E696A798];
      v9 = __error();
      *error = _LSMakeNSErrorImpl(v8, *v9, 0, "[FSNode getFSID:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 2337);
    }
  }

  else
  {
    *d = v11.f_fsid;
  }

  return v7;
}

- (__CFBundle)copyCFBundleWithError:(id *)error
{
  if (![(FSNode *)self canReadFromSandboxWithAuditToken:0])
  {
    if (error)
    {
      v8 = *MEMORY[0x1E696A768];
      v9 = -10659;
      v10 = 2368;
LABEL_10:
      _LSMakeNSErrorImpl(v8, v9, 0, "[FSNode copyCFBundleWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", v10);
      *error = Unique = 0;
      return Unique;
    }

    return 0;
  }

  v5 = [(FSNode *)self URL];
  Unique = _CFBundleCreateUnique();

  if (!Unique)
  {
    if (error)
    {
      v8 = *MEMORY[0x1E696A768];
      v9 = -10813;
      v10 = 2365;
      goto LABEL_10;
    }

    return 0;
  }

  v7 = CFBundleGetIdentifier(Unique);
  if (v7)
  {
    [(FSNode *)self setTemporaryResourceValue:v7 forKey:@"com.apple.LSBundleIdentifierKey"];
  }

  return Unique;
}

- (id)bundleInfoDictionaryWithError:(id *)error
{
  v12 = 0;
  if (![(FSNode *)self getTemporaryResourceValue:&v12 forKey:@"com.apple.LSBundleInfoDictionaryKey"])
  {
    v5 = [(FSNode *)self URL];
    v6 = CFBundleCopyInfoDictionaryForURL(v5);
    v7 = v12;
    v12 = v6;

    if (v12)
    {
      v8 = v12;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F8];
    }

    [(FSNode *)self setTemporaryResourceValue:v8 forKey:@"com.apple.LSBundleInfoDictionaryKey"];
  }

  v9 = v12;
  if (v12 && (v10 = [v12 count], v9 = v12, !v10))
  {
    v12 = 0;

    v9 = v12;
    if (!error)
    {
      goto LABEL_11;
    }
  }

  else if (!error)
  {
    goto LABEL_11;
  }

  if (!v9)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "[FSNode bundleInfoDictionaryWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 2396);
    v9 = v12;
  }

LABEL_11:

  return v9;
}

- (id)bundleIdentifierWithContext:(LSContext *)context error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v7 = [(FSNode *)self getTemporaryResourceValue:&v21 forKey:@"com.apple.LSBundleIdentifierKey"];
  if (v21)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    if (context)
    {
      *buf = 0;
      if (!_LSBundleFindWithNode(context, self, 0, buf) && *buf)
      {
        [(_LSDatabase *)context->db store];
        v9 = _CSStringCopyCFString();
        v10 = v21;
        v21 = v9;
      }
    }

    else
    {
      v11 = [(FSNode *)self copyCFBundleWithError:error];
      v12 = v11;
      if (v11)
      {
        v13 = CFBundleGetIdentifier(v11);
        if (v13)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v15 = v13;
            v16 = v21;
            v21 = v15;
          }

          else
          {
            v16 = _LSDefaultLog(isKindOfClass);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v17 = [(FSNode *)self URL];
              absoluteString = [v17 absoluteString];
              [(FSNode *)absoluteString bundleIdentifierWithContext:buf error:v16, v17];
            }
          }
        }

        CFRelease(v12);
      }
    }

    if (v21)
    {
      [(FSNode *)self setTemporaryResourceValue:v21 forKey:@"com.apple.LSBundleIdentifierKey"];
    }

    else if (error)
    {
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "[FSNode bundleIdentifierWithContext:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 2445);
    }
  }

  v19 = v21;

  return v19;
}

- (BOOL)getLength:(unint64_t *)length error:(id *)error
{
  v8 = 0;
  v5 = [(FSNode *)self getResourceValue:&v8 forKey:*MEMORY[0x1E695DB50] options:1 error:error];
  v6 = !v5;
  if (!length)
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    *length = [v8 unsignedLongLongValue];
  }

  return v5;
}

- (BOOL)getHFSType:(unsigned int *)type creator:(unsigned int *)creator error:(id *)error
{
  v21[4] = *MEMORY[0x1E69E9840];
  if ([(FSNode *)self isDirectory])
  {
    if ([FSNode getHFSType:creator:error:]::once != -1)
    {
      [FSNode getHFSType:creator:error:];
    }

    v21[0] = 0;
    if ([(FSNode *)self getTemporaryResourceValue:v21 forKey:@"com.apple.LSPkgInfoKey"])
    {
LABEL_17:
      if (v21[0] == [FSNode getHFSType:creator:error:]::noHFSCodes)
      {
        if (error)
        {
          _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "[FSNode getHFSType:creator:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 2552);
          *error = LOBYTE(v18) = 0;
          goto LABEL_23;
        }
      }

      else if (v21[0])
      {
        XCFNumberGetHFSTypeAndCreatorCodes(v21[0], type, creator);
        LOBYTE(v18) = 1;
LABEL_23:

        return v18;
      }

      LOBYTE(v18) = 0;
      goto LABEL_23;
    }

    v9 = [(FSNode *)self URL];
    v10 = [v9 URLByAppendingPathComponent:@"Contents/PkgInfo" isDirectory:0];

    if (v10)
    {
      v11 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v10 options:0 maxLength:8 error:0];
      v12 = v11;
      if (v11 && [v11 length] >= 8)
      {
        v13 = v12;
        bytes = [v12 bytes];
        v16 = *bytes;
        v15 = bytes[1];

        v17 = XCFNumberCreateWithHFSTypeAndCreatorCodes(bswap32(v16), bswap32(v15));
LABEL_16:
        v19 = v21[0];
        v21[0] = v17;

        [(FSNode *)self setTemporaryResourceValue:v21[0] forKey:@"com.apple.LSPkgInfoKey"];
        goto LABEL_17;
      }
    }

    v17 = [FSNode getHFSType:creator:error:]::noHFSCodes;
    goto LABEL_16;
  }

  v18 = [(FSNode *)self getFinderInfo:v21 error:error];
  if (v18)
  {
    if (type)
    {
      *type = v21[0];
    }

    if (creator)
    {
      *creator = HIDWORD(v21[0]);
    }
  }

  return v18;
}

void __35__FSNode_getHFSType_creator_error___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69E58C0]);
  v1 = [FSNode getHFSType:creator:error:]::noHFSCodes;
  [FSNode getHFSType:creator:error:]::noHFSCodes = v0;
}

- (BOOL)getWriterBundleIdentifier:(id *)identifier error:(id *)error
{
  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[FSNode getWriterBundleIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 2589);
  }

  return 0;
}

- (BOOL)getFinderInfo:(id *)info error:(id *)error
{
  if (!self || (*(self + 24) & 8) == 0 || !__CFURLResourceInfoPtr() || (v7 = MEMORY[0x1865D5C90]()) == 0)
  {
    v13 = 0;
    if (![(FSNode *)self getResourceValue:&v13 forKey:*MEMORY[0x1E695E2C0] options:1 error:error])
    {
      goto LABEL_16;
    }

    bytes = [v13 bytes];
    if (bytes && [v13 length] >= 0x20)
    {
      if (info)
      {
        v11 = bytes[1];
        *info->var0 = *bytes;
        *info->var2.var1 = v11;
      }

      v9 = 1;
      goto LABEL_17;
    }

    if (error)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10817, 0, "[FSNode(FinderInfo) getFinderInfo:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 2629);
      *error = v9 = 0;
    }

    else
    {
LABEL_16:
      v9 = 0;
    }

LABEL_17:

    return v9;
  }

  if (info)
  {
    v8 = v7[1];
    *info->var0 = *v7;
    *info->var2.var1 = v8;
  }

  return 1;
}

- (BOOL)setFinderInfo:(id *)info error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (info)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:info length:32 freeWhenDone:0];
    if (v6)
    {
      v7 = [(FSNode *)self setResourceValue:v6 forKey:*MEMORY[0x1E695E2C0] options:3 error:error];
    }

    else if (error)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -41, 0, "[FSNode(FinderInfo) setFinderInfo:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 2652);
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (error)
    {
      v10 = *MEMORY[0x1E696A278];
      v11[0] = @"finderInfo";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v8, "[FSNode(FinderInfo) setFinderInfo:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 2656);
    }

    return 0;
  }

  return v7;
}

+ (BOOL)canAccessURL:(id)l withAuditToken:(id *)token operation:(const char *)operation
{
  if (!l || !token && !_LSGetAuditTokenForSelf(self, a2))
  {
    return 0;
  }

  v12 = 0;
  v6 = [l getResourceValue:&v12 forKey:*MEMORY[0x1E695DA88] error:0];
  v7 = v12;
  v8 = v7;
  if (v6 && [v7 length])
  {
    v9 = fileSystemRealPath(v8, 0);

    if (v9)
    {
      v10 = [v9 length] && objc_msgSend(v9, "fileSystemRepresentation") && sandbox_check_by_audit_token() == 0;
      v8 = v9;
    }

    else
    {
      v10 = 0;
      v8 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)canAccessURL:(id)l fromSandboxWithAuditToken:(id *)token operation:(const char *)operation
{
  if (!l)
  {
    return 0;
  }

  tokenCopy = token;
  if (!token)
  {
    tokenCopy = _LSGetAuditTokenForSelf(self, a2);
    if (!tokenCopy)
    {
      return 0;
    }
  }

  v8 = objc_opt_class();

  return [v8 canAccessURL:l withAuditToken:tokenCopy operation:operation];
}

- (BOOL)canReadWithAuditToken:(id *)token
{
  v5 = objc_opt_class();
  v6 = [(FSNode *)self URL];
  LOBYTE(token) = [v5 canReadURL:v6 withAuditToken:token];

  return token;
}

- (BOOL)canWriteWithAuditToken:(id *)token
{
  v5 = objc_opt_class();
  v6 = [(FSNode *)self URL];
  LOBYTE(token) = [v5 canWriteURL:v6 withAuditToken:token];

  return token;
}

- (BOOL)canReadMetadataWithAuditToken:(id *)token
{
  v5 = objc_opt_class();
  v6 = [(FSNode *)self URL];
  LOBYTE(token) = [v5 canReadMetadataOfURL:v6 withAuditToken:token];

  return token;
}

+ (BOOL)canReadMetadataOfURL:(id)l withAuditToken:(id *)token
{
  if ([self canAccessURL:l withAuditToken:token operation:"file-read-metadata"])
  {
    return 1;
  }

  uRLByDeletingLastPathComponent = [l URLByDeletingLastPathComponent];
  if (uRLByDeletingLastPathComponent)
  {
    v7 = [self canReadURL:uRLByDeletingLastPathComponent withAuditToken:token];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)canReadFromSandboxWithAuditToken:(id *)token
{
  v5 = objc_opt_class();
  v6 = [(FSNode *)self URL];
  LOBYTE(token) = [v5 canReadURL:v6 fromSandboxWithAuditToken:token];

  return token;
}

- (BOOL)canWriteFromSandboxWithAuditToken:(id *)token
{
  v5 = objc_opt_class();
  v6 = [(FSNode *)self URL];
  LOBYTE(token) = [v5 canWriteURL:v6 fromSandboxWithAuditToken:token];

  return token;
}

- (BOOL)canReadMetadataFromSandboxWithAuditToken:(id *)token
{
  v5 = objc_opt_class();
  v6 = [(FSNode *)self URL];
  LOBYTE(token) = [v5 canReadMetadataOfURL:v6 fromSandboxWithAuditToken:token];

  return token;
}

+ (BOOL)canReadMetadataOfURL:(id)l fromSandboxWithAuditToken:(id *)token
{
  if ([self canAccessURL:l fromSandboxWithAuditToken:token operation:"file-read-metadata"])
  {
    return 1;
  }

  uRLByDeletingLastPathComponent = [l URLByDeletingLastPathComponent];
  if (uRLByDeletingLastPathComponent)
  {
    v7 = [self canReadURL:uRLByDeletingLastPathComponent fromSandboxWithAuditToken:token];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)extendedAttributeWithName:(id)name options:(int)options error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  if (!name || ![name length])
  {
    if (error)
    {
      v24 = *MEMORY[0x1E696A278];
      v25 = @"name";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v16, "[FSNode(ExtendedAttributes) extendedAttributeWithName:options:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 3534);
    }

    goto LABEL_12;
  }

  if (![(FSNode *)self getFileSystemRepresentation:path error:error])
  {
LABEL_12:
    data = 0;
    goto LABEL_13;
  }

  if (([name getCString:name maxLength:128 encoding:4] & 1) == 0)
  {
    if (error)
    {
      v26 = *MEMORY[0x1E696A278];
      v27 = @"Extended attribute name too long or invalid.";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v18, "[FSNode(ExtendedAttributes) extendedAttributeWithName:options:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 3499);
    }

    goto LABEL_12;
  }

  v9 = getxattr(path, name, 0, 0, 0, options);
  v10 = v9;
  if (v9 < 1)
  {
    if (v9)
    {
      if (error)
      {
        v19 = __error();
        _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v19, 0, "[FSNode(ExtendedAttributes) extendedAttributeWithName:options:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 3529);
        *error = data = 0;
        goto LABEL_13;
      }
    }

    else
    {
      data = [MEMORY[0x1E695DEF0] data];
      if (data)
      {
        goto LABEL_13;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[FSNode(ExtendedAttributes) extendedAttributeWithName:options:error:]"];
      [currentHandler handleFailureInFunction:v23 file:@"FSUtils.mm" lineNumber:3526 description:@"Failed to allocate empty NSData."];
    }

    goto LABEL_12;
  }

  v11 = [MEMORY[0x1E695DF88] dataWithLength:v9];
  v12 = v11;
  if (!v11)
  {
    if (!error)
    {
      goto LABEL_30;
    }

    v20 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -41, 0, "[FSNode(ExtendedAttributes) extendedAttributeWithName:options:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 3521);
LABEL_29:
    data = 0;
    *error = v20;
    goto LABEL_31;
  }

  v13 = v11;
  v14 = getxattr(path, name, [v12 mutableBytes], objc_msgSend(v12, "length"), 0, options);
  if (v14 < 0)
  {
    if (!error)
    {
      goto LABEL_30;
    }

    v21 = __error();
    v20 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v21, 0, "[FSNode(ExtendedAttributes) extendedAttributeWithName:options:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 3510);
    goto LABEL_29;
  }

  if (v14 != v10)
  {
    if (error)
    {
      v20 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -1304, 0, "[FSNode(ExtendedAttributes) extendedAttributeWithName:options:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 3514);
      goto LABEL_29;
    }

LABEL_30:
    data = 0;
    goto LABEL_31;
  }

  data = v12;
LABEL_31:

LABEL_13:

  return data;
}

- (BOOL)setExtendedAttribute:(id)attribute name:(id)name options:(int)options error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  if (!name || ![name length])
  {
    if (error)
    {
      v18 = *MEMORY[0x1E696A278];
      v19 = @"name";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v13, "[FSNode(ExtendedAttributes) setExtendedAttribute:name:options:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 3576);
    }

    goto LABEL_10;
  }

  LODWORD(v11) = [(FSNode *)self getFileSystemRepresentation:path error:error];
  if (!v11)
  {
    return v11;
  }

  if (([name getCString:name maxLength:128 encoding:4] & 1) == 0)
  {
    if (error)
    {
      v20 = *MEMORY[0x1E696A278];
      v21 = @"Extended attribute name too long or invalid.";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v14, "[FSNode(ExtendedAttributes) setExtendedAttribute:name:options:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 3552);
    }

    goto LABEL_10;
  }

  if (!attribute)
  {
    if (!removexattr(path, name, options) || *__error() == 93)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  attributeCopy = attribute;
  if (setxattr(path, name, [attribute bytes], objc_msgSend(attribute, "length"), 0, options))
  {
LABEL_17:
    if (error)
    {
      v15 = __error();
      v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v15, 0, "[FSNode(ExtendedAttributes) setExtendedAttribute:name:options:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 3571);
      v11 = v16;
      LOBYTE(v11) = 0;
      *error = v16;
      return v11;
    }

LABEL_10:
    LOBYTE(v11) = 0;
    return v11;
  }

LABEL_16:
  LOBYTE(v11) = 1;
  return v11;
}

- (id)bookmarkDataWithOptions:(unint64_t)options relativeToNode:(id)node error:(id *)error
{
  node = [(FSNode *)self canonicalPathWithError:error, node];
  if (!node)
  {
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v8 = objc_autoreleasePoolPush();
  if ([(FSNode *)self isDirectory])
  {
    if (([node hasSuffix:@"/"] & 1) == 0)
    {
      v9 = [node stringByAppendingString:@"/"];

      node = v9;
    }
  }

  else
  {
    while ([node hasSuffix:@"/"])
    {
      v15 = [node stringByReplacingCharactersInRange:objc_msgSend(node withString:{"length") - 1, 1, &stru_1EEF65710}];

      node = v15;
    }
  }

  objc_autoreleasePoolPop(v8);
  fileSystemRepresentation = [node fileSystemRepresentation];
  if (!fileSystemRepresentation)
  {
    if (error)
    {
      v13 = 3761;
      v14 = -2110;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v11 = [MEMORY[0x1E695DEF0] dataWithBytes:fileSystemRepresentation length:strlen(fileSystemRepresentation)];
  v12 = v11;
  if (error && !v11)
  {
    v13 = 3757;
    v14 = -41;
LABEL_13:
    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v14, 0, "[FSNode(BookmarkData) bookmarkDataWithOptions:relativeToNode:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", v13);
    *error = v12 = 0;
  }

LABEL_15:

  return v12;
}

- (id)initByResolvingBookmarkData:(id)data options:(unint64_t)options relativeToNode:(id)node bookmarkDataIsStale:(BOOL *)stale error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  if (!data)
  {
    if (error)
    {
      v14 = *MEMORY[0x1E696A278];
      v15 = @"bookmark";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:{1, stale}];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v11, "[FSNode(BookmarkData) initByResolvingBookmarkData:options:relativeToNode:bookmarkDataIsStale:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 3846);
    }

    return 0;
  }

  if (![FSNode getFileSystemRepresentation:__s forBookmarkData:data, node, stale])
  {
    if (error)
    {
      v16 = *MEMORY[0x1E696A278];
      v17 = @"bookmark";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v12, "[FSNode(BookmarkData) initByResolvingBookmarkData:options:relativeToNode:bookmarkDataIsStale:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 3840);
    }

    return 0;
  }

  v9 = strlen(__s);
  if (v9)
  {
    v10 = 8 * (__s[v9 - 1] == 47);
  }

  else
  {
    v10 = 0;
  }

  return [(FSNode *)self initWithFileSystemRepresentation:__s flags:v10 error:error];
}

+ (id)pathForBookmarkData:(id)data error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  if (!data)
  {
    if (!error)
    {
LABEL_11:
      v6 = 0;
      goto LABEL_12;
    }

    v10 = *MEMORY[0x1E696A278];
    v11 = @"bookmark";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v7, "+[FSNode(BookmarkData) pathForBookmarkData:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 3889);
LABEL_10:
    *error = v8;

    goto LABEL_11;
  }

  if (![self getFileSystemRepresentation:__s forBookmarkData:data])
  {
    v6 = 0;
    if (!error)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager stringWithFileSystemRepresentation:__s length:strlen(__s)];

  if (error)
  {
LABEL_8:
    if (v6)
    {
      goto LABEL_12;
    }

    v12 = *MEMORY[0x1E696A278];
    v13 = @"invalid input parameters";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v7, "+[FSNode(BookmarkData) pathForBookmarkData:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 3886);
    goto LABEL_10;
  }

LABEL_12:

  return v6;
}

+ (id)nameForBookmarkData:(id)data error:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (data)
  {
    v5 = [self pathForBookmarkData:data error:error];
    v6 = v5;
    if (v5)
    {
      lastPathComponent = [v5 lastPathComponent];
      v8 = lastPathComponent;
      if (error && !lastPathComponent)
      {
        _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -37, 0, "+[FSNode(BookmarkData) nameForBookmarkData:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 3907);
        *error = v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (error)
    {
      v11 = *MEMORY[0x1E696A278];
      v12[0] = @"bookmark";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v9, "+[FSNode(BookmarkData) nameForBookmarkData:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSUtils.mm", 3911);
    }

    v8 = 0;
  }

  return v8;
}

+ (BOOL)getVolumeIdentifier:(unint64_t *)identifier forBookmarkData:(id)data error:(id *)error
{
  v7 = [[FSNode alloc] initByResolvingBookmarkData:data relativeToNode:0 bookmarkDataIsStale:0 error:error];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 getVolumeIdentifier:identifier error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isBookmarkDataFull:(id)full
{
  v4 = [full length];
  if (v4)
  {
    LOBYTE(v4) = *[full bytes] != 47;
  }

  return v4;
}

+ (BOOL)getFileSystemRepresentation:(char)representation[1024] forBookmarkData:(id)data
{
  dataCopy = data;
  v6 = dataCopy;
  v7 = 0;
  if (representation && dataCopy)
  {
    bzero(representation, 0x400uLL);
    v8 = [v6 length];
    if (v8 > 0x3FF)
    {
      v7 = 0;
    }

    else
    {
      [v6 getBytes:representation length:v8];
      v7 = 1;
    }
  }

  return v7;
}

- (void)bundleIdentifierWithContext:(os_log_t)log error:(void *)a4 .cold.1(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "*** Malformed bundle %{public}@; CFBundleIdentifier is not a string ", buf, 0xCu);
}

@end
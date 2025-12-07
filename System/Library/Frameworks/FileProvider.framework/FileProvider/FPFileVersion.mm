@interface FPFileVersion
+ (id)etagForVersion:(id)version providerDomainID:(id)d;
+ (id)parseEtag:(id)etag;
+ (id)parseInfoFromVersionURL:(id)l domainIdentifier:(id *)identifier fpItemIdentifier:(id *)itemIdentifier etag:(id *)etag;
+ (id)storagePrefixForOriginalURL:(id)l;
+ (id)stripExtensionFromAddition:(id)addition;
+ (id)versionFaultName:(id)name identifier:(id)identifier ext:(id)ext;
- (FPFileVersion)initWithCoder:(id)coder;
- (FPFileVersion)initWithVersion:(id)version displayName:(id)name originalURL:(id)l physicalURL:(id)rL identifier:(id)identifier modificationDate:(id)date lastEditorNameComponents:(id)components size:(id)self0;
- (NSCopying)persistentIdentifier;
- (NSString)etag;
- (NSString)lastEditorFormattedName;
- (id)description;
- (id)fetchGSURLForNamespace:(id)namespace;
- (void)checkThumbnailChanged;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)registerThumbnailNotification;
@end

@implementation FPFileVersion

- (FPFileVersion)initWithVersion:(id)version displayName:(id)name originalURL:(id)l physicalURL:(id)rL identifier:(id)identifier modificationDate:(id)date lastEditorNameComponents:(id)components size:(id)self0
{
  versionCopy = version;
  nameCopy = name;
  lCopy = l;
  rLCopy = rL;
  identifierCopy = identifier;
  dateCopy = date;
  componentsCopy = components;
  sizeCopy = size;
  v40.receiver = self;
  v40.super_class = FPFileVersion;
  v19 = [(FPFileVersion *)&v40 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_version, version);
    objc_storeStrong(&v20->_displayName, name);
    objc_storeStrong(&v20->_originalURL, l);
    objc_storeStrong(&v20->_wrapper, rL);
    objc_storeStrong(&v20->_fpItemIdentifier, identifier);
    objc_storeStrong(&v20->_modificationDate, date);
    objc_storeStrong(&v20->_lastEditorNameComponents, components);
    v20->_size = [sizeCopy unsignedIntValue];
    manager = [MEMORY[0x1E69A07C0] manager];
    originalURL = v20->_originalURL;
    v39 = 0;
    v23 = [manager permanentStorageForItemAtURL:originalURL allocateIfNone:1 error:&v39];
    v24 = v39;
    storage = v20->_storage;
    v20->_storage = v23;

    if (v20->_storage)
    {
      gsNamespace = [objc_opt_class() gsNamespace];
      v27 = [(FPFileVersion *)v20 fetchGSURLForNamespace:gsNamespace];
      url = v20->_url;
      v20->_url = v27;

      if (v20->_url)
      {
        physicalURL = [(FPFileVersion *)v20 physicalURL];

        if (physicalURL)
        {
          [(FPFileVersion *)v20 physicalURL];
          _CFURLPromiseSetPhysicalURL();
        }

        [(FPFileVersion *)v20 registerThumbnailNotification];
        [(FPFileVersion *)v20 checkThumbnailChanged];

        goto LABEL_7;
      }
    }

    else
    {
      v31 = fp_current_or_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [FPFileVersion initWithVersion:v24 displayName:? originalURL:? physicalURL:? identifier:? modificationDate:? lastEditorNameComponents:? size:?];
      }
    }

    v30 = 0;
    goto LABEL_12;
  }

LABEL_7:
  v30 = v20;
LABEL_12:

  return v30;
}

- (void)dealloc
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  notifyToken = selfCopy->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
  }

  objc_sync_exit(selfCopy);

  v4.receiver = selfCopy;
  v4.super_class = FPFileVersion;
  [(FPFileVersion *)&v4 dealloc];
}

- (void)checkThumbnailChanged
{
  v3 = [(FPSandboxingURLWrapper *)self->_wrapper url];
  startAccessingSecurityScopedResource = [v3 startAccessingSecurityScopedResource];

  v5 = [(FPSandboxingURLWrapper *)self->_wrapper url];
  fp_hasThumbnailOnImmutableDocument = [v5 fp_hasThumbnailOnImmutableDocument];

  if (startAccessingSecurityScopedResource)
  {
    v7 = [(FPSandboxingURLWrapper *)self->_wrapper url];
    [v7 stopAccessingSecurityScopedResource];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (fp_hasThumbnailOnImmutableDocument)
  {
    notifyToken = selfCopy->_notifyToken;
    if (notifyToken != -1)
    {
      notify_cancel(notifyToken);
    }
  }

  objc_sync_exit(selfCopy);

  [(FPFileVersion *)selfCopy setHasThumbnail:fp_hasThumbnailOnImmutableDocument];
}

- (void)registerThumbnailNotification
{
  v3 = MEMORY[0x1E696AEC0];
  path = [(NSURL *)self->_url path];
  v5 = [v3 stringWithFormat:@"com.apple.fileprovider.thumbnail-available.%@", path];
  fp_libnotifyPerUserNotificationName = [v5 fp_libnotifyPerUserNotificationName];

  if (registerThumbnailNotification_onceToken != -1)
  {
    [FPFileVersion registerThumbnailNotification];
  }

  objc_initWeak(&location, self);
  uTF8String = [fp_libnotifyPerUserNotificationName UTF8String];
  v8 = registerThumbnailNotification_thumbnailQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __46__FPFileVersion_registerThumbnailNotification__block_invoke_2;
  handler[3] = &unk_1E7938FE8;
  objc_copyWeak(&v10, &location);
  notify_register_dispatch(uTF8String, &self->_notifyToken, v8, handler);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __46__FPFileVersion_registerThumbnailNotification__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.fileprovider.version.thumbnails", v2);
  v1 = registerThumbnailNotification_thumbnailQueue;
  registerThumbnailNotification_thumbnailQueue = v0;
}

void __46__FPFileVersion_registerThumbnailNotification__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained checkThumbnailChanged];
}

- (NSString)lastEditorFormattedName
{
  lastEditorNameComponents = self->_lastEditorNameComponents;
  if (lastEditorNameComponents)
  {
    v4 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:lastEditorNameComponents style:0 options:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (FPFileVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = FPFileVersion;
  v5 = [(FPFileVersion *)&v32 init];
  if (!v5)
  {
LABEL_6:
    v28 = v5;
    goto LABEL_10;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
  version = v5->_version;
  v5->_version = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filename"];
  displayName = v5->_displayName;
  v5->_displayName = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  originalURL = v5->_originalURL;
  v5->_originalURL = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"physicalURL"];
  wrapper = v5->_wrapper;
  v5->_wrapper = v12;

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fpItemIdentifier"];
  fpItemIdentifier = v5->_fpItemIdentifier;
  v5->_fpItemIdentifier = v14;

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modificationDate"];
  modificationDate = v5->_modificationDate;
  v5->_modificationDate = v16;

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastEditorNameComponents"];
  lastEditorNameComponents = v5->_lastEditorNameComponents;
  v5->_lastEditorNameComponents = v18;

  v5->_size = [coderCopy decodeInt64ForKey:@"size"];
  manager = [MEMORY[0x1E69A07C0] manager];
  v21 = v5->_originalURL;
  v31 = 0;
  v22 = [manager permanentStorageForItemAtURL:v21 allocateIfNone:1 error:&v31];
  v23 = v31;
  storage = v5->_storage;
  v5->_storage = v22;

  if (v5->_storage)
  {
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GSURL"];
    url = v5->_url;
    v5->_url = v25;

    physicalURL = [(FPFileVersion *)v5 physicalURL];

    if (physicalURL)
    {
      [(FPFileVersion *)v5 physicalURL];
      _CFURLPromiseSetPhysicalURL();
      [(FPFileVersion *)v5 registerThumbnailNotification];
      [(FPFileVersion *)v5 checkThumbnailChanged];
    }

    goto LABEL_6;
  }

  v29 = fp_current_or_default_log();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [FPFileVersion initWithVersion:v23 displayName:? originalURL:? physicalURL:? identifier:? modificationDate:? lastEditorNameComponents:? size:?];
  }

  v28 = 0;
LABEL_10:

  return v28;
}

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeObject:version forKey:@"version"];
  [coderCopy encodeObject:self->_displayName forKey:@"filename"];
  [coderCopy encodeObject:self->_originalURL forKey:@"url"];
  [coderCopy encodeObject:self->_fpItemIdentifier forKey:@"fpItemIdentifier"];
  [coderCopy encodeObject:self->_modificationDate forKey:@"modificationDate"];
  [coderCopy encodeObject:self->_lastEditorNameComponents forKey:@"lastEditorNameComponents"];
  [coderCopy encodeInt64:self->_size forKey:@"size"];
  [coderCopy encodeObject:self->_wrapper forKey:@"physicalURL"];
  [coderCopy encodeObject:self->_url forKey:@"GSURL"];
}

+ (id)etagForVersion:(id)version providerDomainID:(id)d
{
  versionCopy = version;
  dCopy = d;
  fp_toProviderID = [dCopy fp_toProviderID];
  if (([fp_toProviderID isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"] & 1) != 0 || objc_msgSend(fp_toProviderID, "isEqualToString:", @"com.apple.CloudDocs.iCloudDriveFileProviderManaged"))
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v8 = getBRFieldContentSignatureClass_softClass;
    v19 = getBRFieldContentSignatureClass_softClass;
    if (!getBRFieldContentSignatureClass_softClass)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __getBRFieldContentSignatureClass_block_invoke;
      v15[3] = &unk_1E793A2E8;
      v15[4] = &v16;
      __getBRFieldContentSignatureClass_block_invoke(v15);
      v8 = v17[3];
    }

    v9 = v8;
    _Block_object_dispose(&v16, 8);
    v10 = [v8 alloc];
    contentVersion = [versionCopy contentVersion];
    v12 = [v10 initWithData:contentVersion];

    etag = [v12 etag];
  }

  else
  {
    etag = [versionCopy etagHash];
  }

  return etag;
}

- (NSString)etag
{
  version = self->_version;
  providerDomainID = [(FPItemID *)self->_fpItemIdentifier providerDomainID];
  v4 = [FPFileVersion etagForVersion:version providerDomainID:providerDomainID];

  return v4;
}

+ (id)versionFaultName:(id)name identifier:(id)identifier ext:(id)ext
{
  extCopy = ext;
  identifierCopy = identifier;
  nameCopy = name;
  providerDomainID = [identifierCopy providerDomainID];
  v11 = [FPFileVersion etagForVersion:nameCopy providerDomainID:providerDomainID];

  v12 = MEMORY[0x1E696AEC0];
  domainIdentifier = [identifierCopy domainIdentifier];
  identifier = [identifierCopy identifier];

  extCopy = [v12 stringWithFormat:@"%@_%@_%@.%@", domainIdentifier, identifier, v11, extCopy];

  return extCopy;
}

- (NSCopying)persistentIdentifier
{
  manager = [MEMORY[0x1E69A07C0] manager];
  storage = [(FPFileVersion *)self storage];
  lastPathComponent = [(NSURL *)self->_url lastPathComponent];
  gsNamespace = [objc_opt_class() gsNamespace];
  v7 = [manager persistentIdentifierInStorage:storage forAdditionNamed:lastPathComponent inNameSpace:gsNamespace];

  return v7;
}

+ (id)storagePrefixForOriginalURL:(id)l
{
  lCopy = l;
  v4 = open([lCopy fileSystemRepresentation], 0x200000);
  if ((v4 & 0x80000000) != 0)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [FPFileVersion storagePrefixForOriginalURL:lCopy];
    }

    v6 = 0;
  }

  else
  {
    v5 = v4;
    v11 = 0;
    v6 = [MEMORY[0x1E69A07B8] storagePrefixForFileDescriptor:v4 error:&v11];
    v7 = v11;
    close(v5);
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = fp_current_or_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(FPFileVersion *)lCopy storagePrefixForOriginalURL:v7];
      }
    }
  }

  return v6;
}

- (id)fetchGSURLForNamespace:(id)namespace
{
  v16[3] = *MEMORY[0x1E69E9840];
  namespaceCopy = namespace;
  version = [(FPFileVersion *)self version];
  fpItemIdentifier = [(FPFileVersion *)self fpItemIdentifier];
  originalURL = [(FPFileVersion *)self originalURL];
  pathExtension = [originalURL pathExtension];
  v9 = [FPFileVersion versionFaultName:version identifier:fpItemIdentifier ext:pathExtension];

  originalURL2 = [(FPFileVersion *)self originalURL];
  v11 = [FPFileVersion storagePrefixForOriginalURL:originalURL2];

  if (v11)
  {
    v12 = MEMORY[0x1E695DFF8];
    v16[0] = v11;
    v16[1] = namespaceCopy;
    v16[2] = v9;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
    v14 = [v12 fileURLWithPathComponents:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v18 = MEMORY[0x1E696AD60];
  v17 = objc_opt_class();
  displayName = self->_displayName;
  lastEditorDeviceName = [(NSFileProviderItemVersion *)self->_version lastEditorDeviceName];
  lastEditorFormattedName = [(FPFileVersion *)self lastEditorFormattedName];
  v6 = lastEditorFormattedName;
  if (lastEditorFormattedName)
  {
    v7 = lastEditorFormattedName;
  }

  else
  {
    v7 = @"You";
  }

  size = self->_size;
  modificationDate = self->_modificationDate;
  hasThumbnail = [(FPFileVersion *)self hasThumbnail];
  etag = [(FPFileVersion *)self etag];
  path = [(NSURL *)self->_url path];
  v13 = [v18 stringWithFormat:@"<%@ name:'%@' device:'%@' owner:'%@' size:%llu mtime:%@ thumbnail:%d etag:%@ url:'%@'", v17, displayName, lastEditorDeviceName, v7, size, modificationDate, hasThumbnail, etag, path];

  v14 = [(FPSandboxingURLWrapper *)self->_wrapper url];
  v15 = v14;
  if (v14 && self->_url != v14)
  {
    [v13 appendFormat:@" physical:'%@'", v14];
  }

  [v13 appendString:@">"];

  return v13;
}

+ (id)stripExtensionFromAddition:(id)addition
{
  stringByDeletingPathExtension = [addition stringByDeletingPathExtension];
  if ([stringByDeletingPathExtension hasSuffix:@"."])
  {
    v4 = [stringByDeletingPathExtension substringToIndex:{objc_msgSend(stringByDeletingPathExtension, "length") - 1}];

    stringByDeletingPathExtension = v4;
  }

  return stringByDeletingPathExtension;
}

+ (id)parseInfoFromVersionURL:(id)l domainIdentifier:(id *)identifier fpItemIdentifier:(id *)itemIdentifier etag:(id *)etag
{
  *etag = 0;
  *itemIdentifier = 0;
  *identifier = 0;
  pathComponents = [l pathComponents];
  v10 = [pathComponents indexOfObject:@".DocumentRevisions-V100"];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_5;
  }

  v11 = v10;
  v12 = [pathComponents indexOfObject:@"PerUID"];
  v13 = 3;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 4;
  }

  v14 = v13 + v11;
  v15 = v13 + v11 + 1;
  if ([pathComponents count] < v15)
  {
LABEL_5:
    v16 = 0;
  }

  else
  {
    v16 = [pathComponents objectAtIndexedSubscript:v14];
    if ([pathComponents count] >= (v14 + 2) && (objc_msgSend(objc_opt_class(), "gsNamespace"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqualToString:", v17), v17, (v18 & 1) != 0))
    {
      v19 = [pathComponents objectAtIndexedSubscript:v15];
      v20 = [FPFileVersion stripExtensionFromAddition:v19];

      v21 = [v20 rangeOfString:@"_" options:4];
      if (v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = v21;
        v23 = [v20 rangeOfString:@"_" options:4 range:{0, v21}];
        if (v23 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = v23;
          *identifier = [v20 substringToIndex:v23];
          v25 = [v20 substringToIndex:v22];
          *itemIdentifier = [v25 substringFromIndex:v24 + 1];

          *etag = [v20 substringFromIndex:v22 + 1];
        }
      }

      v26 = v16;
    }

    else
    {
      v27 = v16;
    }
  }

  return v16;
}

+ (id)parseEtag:(id)etag
{
  v3 = [FPFileVersion stripExtensionFromAddition:etag];
  v4 = [v3 componentsSeparatedByString:@"_"];

  if ([v4 count] >= 3)
  {
    v5 = [v4 objectAtIndexedSubscript:{objc_msgSend(v4, "count") - 1}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initWithVersion:(uint64_t)a1 displayName:(void *)a2 originalURL:physicalURL:identifier:modificationDate:lastEditorNameComponents:size:.cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

+ (void)storagePrefixForOriginalURL:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = [a1 fp_shortDescription];
  v4 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

+ (void)storagePrefixForOriginalURL:(void *)a1 .cold.2(void *a1)
{
  v6 = [a1 fp_shortDescription];
  __error();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

@end
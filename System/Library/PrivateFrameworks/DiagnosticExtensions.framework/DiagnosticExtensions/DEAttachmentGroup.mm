@interface DEAttachmentGroup
+ (id)createWithName:(id)name rootURL:(id)l;
+ (id)createWithName:(id)name rootURL:(id)l attachmentItems:(id)items;
- (DEAttachmentGroup)initWithCoder:(id)coder;
- (id)attachToDestinationDir:(id)dir;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DEAttachmentGroup

+ (id)createWithName:(id)name rootURL:(id)l
{
  v27 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  lCopy = l;
  v7 = objc_alloc_init(DEAttachmentGroup);
  [(DEAttachmentItem *)v7 setDisplayName:nameCopy];
  [(DEAttachmentGroup *)v7 setRootURL:lCopy];
  v8 = [DEUtils lsDir:lCopy];
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [DEAttachmentItem alloc];
        v17 = [(DEAttachmentItem *)v16 initWithPathURL:v15, v22];
        [v9 addObject:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  [(DEAttachmentGroup *)v7 setAttachmentItems:v18];

  [(DEAttachmentItem *)v7 setAttachmentType:@"DEAttachmentTypeGroup"];
  displayName = [(DEAttachmentItem *)v7 displayName];
  v20 = [lCopy URLByAppendingPathComponent:displayName];
  [(DEAttachmentItem *)v7 setPath:v20];

  return v7;
}

+ (id)createWithName:(id)name rootURL:(id)l attachmentItems:(id)items
{
  itemsCopy = items;
  lCopy = l;
  nameCopy = name;
  v10 = objc_alloc_init(DEAttachmentGroup);
  [(DEAttachmentItem *)v10 setDisplayName:nameCopy];

  [(DEAttachmentGroup *)v10 setRootURL:lCopy];
  [(DEAttachmentGroup *)v10 setAttachmentItems:itemsCopy];

  [(DEAttachmentItem *)v10 setAttachmentType:@"DEAttachmentTypeGroup"];
  displayName = [(DEAttachmentItem *)v10 displayName];
  v12 = [lCopy URLByAppendingPathComponent:displayName];

  [(DEAttachmentItem *)v10 setPath:v12];

  return v10;
}

- (DEAttachmentGroup)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = DEAttachmentGroup;
  coderCopy = coder;
  v4 = [(DEAttachmentItem *)&v10 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectForKey:{@"RootURL", v10.receiver, v10.super_class}];
  rootURL = v4->_rootURL;
  v4->_rootURL = v5;

  v7 = [coderCopy decodeObjectForKey:@"AttachmentItems"];

  attachmentItems = v4->_attachmentItems;
  v4->_attachmentItems = v7;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = DEAttachmentGroup;
  coderCopy = coder;
  [(DEAttachmentItem *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_rootURL forKey:{@"RootURL", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_attachmentItems forKey:@"AttachmentItems"];
}

- (id)attachToDestinationDir:(id)dir
{
  v37 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  v5 = +[DELogging fwHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v36 = dirCopy;
    _os_log_impl(&dword_248AB3000, v5, OS_LOG_TYPE_INFO, "Log destination directory: %{public}@", buf, 0xCu);
  }

  displayName = [(DEAttachmentItem *)self displayName];
  if (displayName)
  {
    displayName2 = [(DEAttachmentItem *)self displayName];
  }

  else
  {
    rootURL = [(DEAttachmentGroup *)self rootURL];
    displayName2 = [rootURL lastPathComponent];
  }

  v9 = [dirCopy URLByAppendingPathComponent:displayName2];
  v10 = [DEUtils createDirectoryWithClassCDataProtection:v9];
  if (v10)
  {
    attachmentItems = +[DELogging fwHandle];
    if (os_log_type_enabled(attachmentItems, OS_LOG_TYPE_ERROR))
    {
      [(DEAttachmentGroup *)v9 attachToDestinationDir:v10, attachmentItems];
    }
  }

  else
  {
    [(DEAttachmentItem *)self setAttachedPath:v9];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    attachmentItems = [(DEAttachmentGroup *)self attachmentItems];
    v12 = [attachmentItems countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(attachmentItems);
          }

          v16 = [*(*(&v30 + 1) + 8 * i) attachToDestinationDir:v9];
        }

        v13 = [attachmentItems countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }
  }

  attachedPath = [(DEAttachmentItem *)self attachedPath];
  if (attachedPath)
  {
    v18 = attachedPath;
    deleteOnAttach = [(DEAttachmentItem *)self deleteOnAttach];
    bOOLValue = [deleteOnAttach BOOLValue];

    if (bOOLValue)
    {
      v21 = +[DELogging fwHandle];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [DEAttachmentGroup attachToDestinationDir:v21];
      }

      rootURL2 = [(DEAttachmentGroup *)self rootURL];
      [DEUtils removeFile:rootURL2];
    }
  }

  shouldCompress = [(DEAttachmentItem *)self shouldCompress];
  bOOLValue2 = [shouldCompress BOOLValue];

  if (bOOLValue2)
  {
    v25 = +[DELogging fwHandle];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [DEAttachmentGroup attachToDestinationDir:v25];
    }

    attachedPath2 = [(DEAttachmentItem *)self attachedPath];
    v27 = [DEArchiver archiveDirectoryAt:attachedPath2];
    [(DEAttachmentItem *)self setAttachedPath:v27];
  }

  attachedPath3 = [(DEAttachmentItem *)self attachedPath];

  return attachedPath3;
}

- (void)attachToDestinationDir:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 localizedDescription];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_248AB3000, a3, OS_LOG_TYPE_ERROR, "error creating group directory [%{public}@] with error [%{public}@]", &v6, 0x16u);
}

@end
@interface DEAttachmentItem
+ (id)attachmentWithPath:(id)path;
+ (id)attachmentWithPath:(id)path withDisplayName:(id)name modificationDate:(id)date andFilesize:(id)filesize;
+ (id)attachmentWithPathURL:(id)l;
- (DEAttachmentItem)init;
- (DEAttachmentItem)initWithCoder:(id)coder;
- (DEAttachmentItem)initWithPath:(id)path;
- (DEAttachmentItem)initWithPath:(id)path withDisplayName:(id)name modificationDate:(id)date andFilesize:(id)filesize;
- (DEAttachmentItem)initWithPathURL:(id)l shouldCheckURLAttributes:(BOOL)attributes;
- (id)attachToDestinationDir:(id)dir;
- (id)description;
- (id)sandboxExtensionHandleWithErrorOut:(id *)out;
- (void)_generateSandboxExtensionTokenForPID:(int)d;
- (void)detach;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DEAttachmentItem

- (DEAttachmentItem)init
{
  v14.receiver = self;
  v14.super_class = DEAttachmentItem;
  v2 = [(DEAttachmentItem *)&v14 init];
  v3 = v2;
  if (v2)
  {
    displayName = v2->_displayName;
    v2->_displayName = 0;

    path = v3->_path;
    v3->_path = 0;

    shouldCompress = v3->_shouldCompress;
    v7 = MEMORY[0x277CBEC28];
    v3->_shouldCompress = MEMORY[0x277CBEC28];

    modificationDate = v3->_modificationDate;
    v3->_modificationDate = 0;

    filesize = v3->_filesize;
    v3->_filesize = 0;

    attachedPath = v3->_attachedPath;
    v3->_attachedPath = 0;

    attachmentType = v3->_attachmentType;
    v3->_attachmentType = @"DEAttachmentTypeItem";

    deleteOnAttach = v3->_deleteOnAttach;
    v3->_deleteOnAttach = v7;
  }

  return v3;
}

- (DEAttachmentItem)initWithPath:(id)path
{
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];
  v5 = [(DEAttachmentItem *)self initWithPathURL:v4];

  return v5;
}

- (DEAttachmentItem)initWithPathURL:(id)l shouldCheckURLAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  v42 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v35 = 0;
  v7 = [lCopy checkResourceIsReachableAndReturnError:&v35];
  v8 = v35;
  if (!v7)
  {
    if (!attributesCopy)
    {
LABEL_20:
      v15 = 0;
      v19 = 0;
      v10 = 0;
      goto LABEL_21;
    }

    v20 = +[DELogging fwHandle];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [DEAttachmentItem initWithPathURL:shouldCheckURLAttributes:];
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!attributesCopy)
  {
    v20 = +[DELogging fwHandle];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v37 = lCopy;
      _os_log_impl(&dword_248AB3000, v20, OS_LOG_TYPE_DEFAULT, "Not checking attributes on %{public}@", buf, 0xCu);
    }

    goto LABEL_19;
  }

  v34 = 0;
  v9 = *MEMORY[0x277CBE7B0];
  v33 = 0;
  [lCopy getResourceValue:&v34 forKey:v9 error:&v33];
  v10 = v34;
  v11 = v33;
  if (v11)
  {
    v12 = v11;
    v13 = +[DELogging fwHandle];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [DEAttachmentItem initWithPathURL:shouldCheckURLAttributes:];
    }
  }

  v32 = 0;
  v14 = *MEMORY[0x277CBE868];
  v31 = 0;
  [lCopy getResourceValue:&v32 forKey:v14 error:&v31];
  v15 = v32;
  v16 = v31;
  if (v16)
  {
    v17 = v16;
    v18 = +[DELogging fwHandle];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [DEAttachmentItem initWithPathURL:shouldCheckURLAttributes:];
    }
  }

  if (v15 && [v15 BOOLValue])
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{+[DEUtils getDirectorySize:](DEUtils, "getDirectorySize:", lCopy)}];
  }

  else
  {
    v30 = 0;
    v25 = *MEMORY[0x277CBE838];
    v29 = 0;
    [lCopy getResourceValue:&v30 forKey:v25 error:&v29];
    v19 = v30;
    v26 = v29;
    if (v26)
    {
      v27 = v26;
      v28 = +[DELogging fwHandle];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [DEAttachmentItem initWithPathURL:shouldCheckURLAttributes:];
      }
    }
  }

LABEL_21:
  v21 = +[DELogging fwHandle];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v37 = lCopy;
    v38 = 2112;
    v39 = v10;
    v40 = 2112;
    v41 = v19;
    _os_log_impl(&dword_248AB3000, v21, OS_LOG_TYPE_DEFAULT, "New attachment at path: [%{public}@] mod date: %@ size: %@", buf, 0x20u);
  }

  lastPathComponent = [lCopy lastPathComponent];
  v23 = [(DEAttachmentItem *)self initWithPath:lCopy withDisplayName:lastPathComponent modificationDate:v10 andFilesize:v19];

  return v23;
}

- (void)_generateSandboxExtensionTokenForPID:(int)d
{
  v41 = *MEMORY[0x277D85DE8];
  deleteOnAttach = [(DEAttachmentItem *)self deleteOnAttach];
  [deleteOnAttach BOOLValue];

  path = [(DEAttachmentItem *)self path];
  fileSystemRepresentation = [path fileSystemRepresentation];

  if (fileSystemRepresentation)
  {
    path2 = [(DEAttachmentItem *)self path];
    v32 = 0;
    v9 = [path2 checkResourceIsReachableAndReturnError:&v32];
    v10 = v32;

    if (v9)
    {
      v11 = sandbox_extension_issue_file_to_process_by_pid();
      v12 = +[DELogging fwHandle];
      v13 = v12;
      if (v11)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          deleteOnAttach2 = [(DEAttachmentItem *)self deleteOnAttach];
          bOOLValue = [deleteOnAttach2 BOOLValue];
          v27 = "R";
          *buf = 136315650;
          if (bOOLValue)
          {
            v27 = "RW";
          }

          v34 = v27;
          v35 = 2082;
          v36 = fileSystemRepresentation;
          v37 = 1024;
          dCopy2 = d;
          _os_log_debug_impl(&dword_248AB3000, v13, OS_LOG_TYPE_DEBUG, "Granted %s sandbox extension for attachment item '%{public}s' to process with PID: %d.", buf, 0x1Cu);
        }

        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
        sandboxExtensionToken = self->__sandboxExtensionToken;
        self->__sandboxExtensionToken = v14;

        v16 = v11;
LABEL_6:
        free(v16);
        goto LABEL_12;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        deleteOnAttach3 = [(DEAttachmentItem *)self deleteOnAttach];
        if ([deleteOnAttach3 BOOLValue])
        {
          v29 = "RW";
        }

        else
        {
          v29 = "R";
        }

        v30 = __error();
        v31 = strerror(*v30);
        *buf = 136315906;
        v34 = v29;
        v35 = 2082;
        v36 = fileSystemRepresentation;
        v37 = 1024;
        dCopy2 = d;
        v39 = 2080;
        v40 = v31;
        _os_log_error_impl(&dword_248AB3000, v13, OS_LOG_TYPE_ERROR, "Failed to grant %s sandbox extension for attachment item '%{public}s' for PID: %d with error: %s. This DiagnosticExtension may not have appropriate access to the specified item.", buf, 0x26u);
      }

      deleteOnAttach4 = [(DEAttachmentItem *)self deleteOnAttach];
      bOOLValue2 = [deleteOnAttach4 BOOLValue];

      if (bOOLValue2)
      {
        v20 = sandbox_extension_issue_file_to_process_by_pid();
        v21 = +[DELogging fwHandle];
        v22 = v21;
        if (v20)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            [DEAttachmentItem _generateSandboxExtensionTokenForPID:];
          }

          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:v20];
          v24 = self->__sandboxExtensionToken;
          self->__sandboxExtensionToken = v23;

          v16 = v20;
          goto LABEL_6;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [DEAttachmentItem _generateSandboxExtensionTokenForPID:];
        }
      }
    }

    else
    {
      v17 = +[DELogging fwHandle];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(DEAttachmentItem *)fileSystemRepresentation _generateSandboxExtensionTokenForPID:v10];
      }
    }
  }

  else
  {
    v10 = +[DELogging fwHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DEAttachmentItem _generateSandboxExtensionTokenForPID:?];
    }
  }

LABEL_12:
}

- (DEAttachmentItem)initWithPath:(id)path withDisplayName:(id)name modificationDate:(id)date andFilesize:(id)filesize
{
  pathCopy = path;
  dateCopy = date;
  filesizeCopy = filesize;
  v13 = [(DEAttachmentItem *)self init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_path, path);
    lastPathComponent = [pathCopy lastPathComponent];
    displayName = v14->_displayName;
    v14->_displayName = lastPathComponent;

    objc_storeStrong(&v14->_modificationDate, date);
    objc_storeStrong(&v14->_filesize, filesize);
    attachmentType = v14->_attachmentType;
    v14->_attachmentType = @"DEAttachmentTypeItem";
  }

  return v14;
}

- (DEAttachmentItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DEAttachmentItem *)self init];
  v6 = [coderCopy decodeObjectForKey:@"DisplayName"];
  displayName = v5->_displayName;
  v5->_displayName = v6;

  v8 = [coderCopy decodeObjectForKey:@"Path"];
  path = v5->_path;
  v5->_path = v8;

  v10 = [coderCopy decodeObjectForKey:@"ShouldCompress"];
  shouldCompress = v5->_shouldCompress;
  v5->_shouldCompress = v10;

  v12 = [coderCopy decodeObjectForKey:@"ModificationDate"];
  modificationDate = v5->_modificationDate;
  v5->_modificationDate = v12;

  v14 = [coderCopy decodeObjectForKey:@"AttachedPath"];
  attachedPath = v5->_attachedPath;
  v5->_attachedPath = v14;

  v16 = [coderCopy decodeObjectForKey:@"AttachmentType"];
  attachmentType = v5->_attachmentType;
  v5->_attachmentType = v16;

  v18 = [coderCopy decodeObjectForKey:@"DeleteOnAttach"];
  deleteOnAttach = v5->_deleteOnAttach;
  v5->_deleteOnAttach = v18;

  v20 = [coderCopy decodeObjectForKey:@"SandboxExtensionToken"];

  sandboxExtensionToken = v5->__sandboxExtensionToken;
  v5->__sandboxExtensionToken = v20;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  path = self->_path;
  coderCopy = coder;
  [coderCopy encodeObject:path forKey:@"Path"];
  [coderCopy encodeObject:self->_displayName forKey:@"DisplayName"];
  [coderCopy encodeObject:self->_shouldCompress forKey:@"ShouldCompress"];
  [coderCopy encodeObject:self->_modificationDate forKey:@"ModificationDate"];
  [coderCopy encodeObject:self->_attachedPath forKey:@"AttachedPath"];
  [coderCopy encodeObject:self->_attachmentType forKey:@"AttachmentType"];
  [coderCopy encodeObject:self->_deleteOnAttach forKey:@"DeleteOnAttach"];
  [coderCopy encodeObject:self->__sandboxExtensionToken forKey:@"SandboxExtensionToken"];
}

- (id)attachToDestinationDir:(id)dir
{
  v18 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  v5 = +[DELogging fwHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v16 = 138543362;
    v17 = dirCopy;
    _os_log_impl(&dword_248AB3000, v5, OS_LOG_TYPE_INFO, "Log destination directory: %{public}@", &v16, 0xCu);
  }

  path = [(DEAttachmentItem *)self path];
  shouldCompress = [(DEAttachmentItem *)self shouldCompress];
  v8 = +[DEUtils copyItem:toDestinationDir:zipped:](DEUtils, "copyItem:toDestinationDir:zipped:", path, dirCopy, [shouldCompress BOOLValue]);
  [(DEAttachmentItem *)self setAttachedPath:v8];

  attachedPath = [(DEAttachmentItem *)self attachedPath];
  if (attachedPath)
  {
    v10 = attachedPath;
    deleteOnAttach = [(DEAttachmentItem *)self deleteOnAttach];
    bOOLValue = [deleteOnAttach BOOLValue];

    if (bOOLValue)
    {
      path2 = [(DEAttachmentItem *)self path];
      [DEUtils removeFile:path2];
    }
  }

  attachedPath2 = [(DEAttachmentItem *)self attachedPath];

  return attachedPath2;
}

- (void)detach
{
  attachedPath = [(DEAttachmentItem *)self attachedPath];
  [DEUtils removeFile:attachedPath];

  [(DEAttachmentItem *)self setAttachedPath:0];
}

- (id)description
{
  path = [(DEAttachmentItem *)self path];
  v2Path = [path path];

  return v2Path;
}

+ (id)attachmentWithPath:(id)path withDisplayName:(id)name modificationDate:(id)date andFilesize:(id)filesize
{
  filesizeCopy = filesize;
  dateCopy = date;
  nameCopy = name;
  pathCopy = path;
  v13 = [[DEAttachmentItem alloc] initWithPath:pathCopy withDisplayName:nameCopy modificationDate:dateCopy andFilesize:filesizeCopy];

  return v13;
}

+ (id)attachmentWithPath:(id)path
{
  pathCopy = path;
  v4 = [[DEAttachmentItem alloc] initWithPath:pathCopy];

  return v4;
}

+ (id)attachmentWithPathURL:(id)l
{
  lCopy = l;
  v4 = [[DEAttachmentItem alloc] initWithPathURL:lCopy];

  return v4;
}

- (id)sandboxExtensionHandleWithErrorOut:(id *)out
{
  _sandboxExtensionToken = [(DEAttachmentItem *)self _sandboxExtensionToken];

  if (_sandboxExtensionToken)
  {
    v6 = [DEAttachmentItemSandboxExtensionHandle alloc];
    _sandboxExtensionToken2 = [(DEAttachmentItem *)self _sandboxExtensionToken];
    path = [(DEAttachmentItem *)self path];
    v9 = [(DEAttachmentItemSandboxExtensionHandle *)v6 initWithSandboxExtensionToken:_sandboxExtensionToken2 itemURL:path errorOut:out];

    sandboxExtensionToken = self->__sandboxExtensionToken;
    self->__sandboxExtensionToken = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_generateSandboxExtensionTokenForPID:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_generateSandboxExtensionTokenForPID:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&dword_248AB3000, v1, OS_LOG_TYPE_DEBUG, "Succeeded in fallback attempt to grant R sandbox extension for %{public}s for PID %d.", v2, 0x12u);
}

- (void)_generateSandboxExtensionTokenForPID:.cold.3()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

- (void)_generateSandboxExtensionTokenForPID:(void *)a1 .cold.4(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end
@interface LCSSessionPath
+ (id)finalizedSessionPathsWithType:(unint64_t)type;
+ (id)temporarySessionPathWithType:(unint64_t)type;
- (BOOL)_lock_purgeContentsIncludingDirectory:(BOOL)directory;
- (LCSSessionPath)initWithBSXPCCoder:(id)coder;
- (LCSSessionPath)initWithCoder:(id)coder;
- (id)_initWithURL:(id)l type:(unint64_t)type isTemporaryPath:(BOOL)path;
- (id)finalizeTemporarySessionPathForExtension:(id)extension;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
@end

@implementation LCSSessionPath

+ (id)temporarySessionPathWithType:(unint64_t)type
{
  v4 = @"com.apple.GenericSession";
  if (type == 1)
  {
    v4 = @"com.apple.SecureCapture";
  }

  v5 = v4;
  v6 = [[LCSSessionURLBuilder alloc] initWithTypeIdentifier:v5];

  temporarySessionURL = [(LCSSessionURLBuilder *)v6 temporarySessionURL];
  if (temporarySessionURL)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v15 = 0;
    v9 = [defaultManager createDirectoryAtURL:temporarySessionURL withIntermediateDirectories:1 attributes:0 error:&v15];
    v10 = v15;

    if (v9)
    {
      v12 = [[LCSSessionPath alloc] _initWithURL:temporarySessionURL type:type isTemporaryPath:1];
      goto LABEL_12;
    }

    v13 = LCSLogSessionContents(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(LCSSessionPath *)temporarySessionURL temporarySessionPathWithType:v13];
    }
  }

  else
  {
    v10 = LCSLogSessionContents(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [LCSSessionPath temporarySessionPathWithType:v10];
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

+ (id)finalizedSessionPathsWithType:(unint64_t)type
{
  v4 = @"com.apple.GenericSession";
  if (type == 1)
  {
    v4 = @"com.apple.SecureCapture";
  }

  v5 = v4;
  v6 = [[LCSSessionURLBuilder alloc] initWithTypeIdentifier:v5];

  finalizedSessionURLsForCurrentApplication = [(LCSSessionURLBuilder *)v6 finalizedSessionURLsForCurrentApplication];
  if ([finalizedSessionURLsForCurrentApplication count])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__LCSSessionPath_finalizedSessionPathsWithType___block_invoke;
    v10[3] = &__block_descriptor_40_e15__16__0__NSURL_8l;
    v10[4] = type;
    v8 = [finalizedSessionURLsForCurrentApplication bs_map:v10];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

id __48__LCSSessionPath_finalizedSessionPathsWithType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[LCSSessionPath alloc] _initWithURL:v3 type:*(a1 + 32) isTemporaryPath:0];

  return v4;
}

- (id)_initWithURL:(id)l type:(unint64_t)type isTemporaryPath:(BOOL)path
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = LCSSessionPath;
  v9 = [(LCSSessionPath *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v9->_type = type;
    v9->_isTemporaryPath = path;
    v11 = [lCopy copy];
    url = v10->_url;
    v10->_url = v11;
  }

  return v10;
}

- (id)finalizeTemporarySessionPathForExtension:(id)extension
{
  extensionCopy = extension;
  v5 = [(LCSSessionPath *)self url];
  v6 = [LCSSessionFinalizer finalizeTemporarySessionAtURL:v5 forBundleProvider:extensionCopy];

  if (v6)
  {
    v7 = [[LCSSessionPath alloc] _initWithURL:v6 type:self->_type isTemporaryPath:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  p_lock_isInvalidating = &self->_lock_isInvalidating;
  if (!self->_lock_isInvalidating)
  {
    isTemporaryPath = self->_isTemporaryPath;
    p_lock_invalidated = &self->_lock_isInvalidating;
    if (!isTemporaryPath)
    {
      p_lock_invalidated = &self->_lock_invalidated;
      if (self->_lock_invalidated)
      {
        goto LABEL_8;
      }

      *p_lock_isInvalidating = 1;
    }

    *p_lock_invalidated = 1;
    if (![(LCSSessionPath *)self _lock_purgeContentsIncludingDirectory:!isTemporaryPath])
    {
      self->_lock_invalidated = 0;
    }

    *p_lock_isInvalidating = 0;
  }

LABEL_8:

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_lock_purgeContentsIncludingDirectory:(BOOL)directory
{
  directoryCopy = directory;
  v46 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  if (directoryCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    url = self->_url;
    v42 = 0;
    v7 = [defaultManager removeItemAtURL:url error:&v42];
    v8 = v42;

    if (v7)
    {
LABEL_3:
      v10 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__0;
    v40 = __Block_byref_object_dispose__0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = self->_url;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __56__LCSSessionPath__lock_purgeContentsIncludingDirectory___block_invoke;
    v35[3] = &unk_279824FF8;
    v35[4] = &v36;
    v13 = [defaultManager2 enumeratorAtURL:v12 includingPropertiesForKeys:0 options:3 errorHandler:v35];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = v13;
    v8 = 0;
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v45 count:16];
    if (v15)
    {
      v16 = *v32;
      while (2)
      {
        v17 = 0;
        v18 = v8;
        do
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v31 + 1) + 8 * v17);
          defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
          v30 = v18;
          v21 = [defaultManager3 removeItemAtURL:v19 error:&v30];
          v8 = v30;

          if ((v21 & 1) == 0)
          {
            LOBYTE(v15) = 0;
            goto LABEL_14;
          }

          ++v17;
          v18 = v8;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v31 objects:v45 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      LOBYTE(v15) = 1;
    }

LABEL_14:

    if ([v37[5] count])
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to purge one or more contents of %@", self->_url];
      v22 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA578];
      v43[0] = *MEMORY[0x277CCA450];
      v43[1] = v23;
      v44[0] = v15;
      allValues = [v37[5] allValues];
      v25 = [allValues copy];
      v44[1] = v25;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
      v27 = [v22 errorWithDomain:@"com.apple.LCSSessionPath" code:-1 userInfo:v26];

      LOBYTE(v15) = 0;
      v8 = v27;
    }

    _Block_object_dispose(&v36, 8);
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v28 = LCSLogSessionContents(v9);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [(LCSSessionPath *)self _lock_purgeContentsIncludingDirectory:v8, v28];
  }

  v10 = 0;
LABEL_20:

  return v10;
}

- (LCSSessionPath)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    v8 = [coderCopy decodeBoolForKey:@"isTemporaryPath"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v10 = v9;
    if (!v9 || (v11 = [v9 integerValue], v11 > 1))
    {
      v11 = 0;
    }

    v7 = [(LCSSessionPath *)self _initWithURL:v6 type:v11 isTemporaryPath:v8];
  }

  else
  {
    v6 = [(LCSSessionPath *)self _initWithURL:0 type:0 isTemporaryPath:1];
    [v6 invalidate];
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  url = self->_url;
  coderCopy = coder;
  [coderCopy encodeObject:url forKey:@"url"];
  [coderCopy encodeBool:self->_isTemporaryPath forKey:@"isTemporaryPath"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_type];
  [coderCopy encodeObject:v6 forKey:@"type"];
}

- (LCSSessionPath)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    v8 = [coderCopy decodeBoolForKey:@"isTemporaryPath"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v10 = v9;
    if (!v9 || (v11 = [v9 integerValue], v11 > 1))
    {
      v11 = 0;
    }

    v7 = [(LCSSessionPath *)self _initWithURL:v6 type:v11 isTemporaryPath:v8];
  }

  else
  {
    v6 = [(LCSSessionPath *)self _initWithURL:0 type:0 isTemporaryPath:1];
    [v6 invalidate];
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  url = self->_url;
  coderCopy = coder;
  [coderCopy encodeObject:url forKey:@"url"];
  [coderCopy encodeBool:self->_isTemporaryPath forKey:@"isTemporaryPath"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_type];
  [coderCopy encodeObject:v6 forKey:@"type"];
}

+ (void)temporarySessionPathWithType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_256175000, a2, OS_LOG_TYPE_ERROR, "Unable to create directory for session path: %@", &v2, 0xCu);
}

- (void)_lock_purgeContentsIncludingDirectory:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_256175000, log, OS_LOG_TYPE_ERROR, "Unable to purge contents of path %@: %@", &v3, 0x16u);
}

@end
@interface SCSharingReminderArchiver
+ (id)sharedInstance;
- (BOOL)sharingReminderDirectoryExists;
- (SCSharingReminderArchiver)init;
- (id)fileURLForKey:(id)key;
- (id)getObjectOfClass:(Class)class atKey:(id)key;
- (id)sharingReminderDirectoryURL;
- (void)createSharingReminderDirectory;
- (void)getObjectOfClass:(Class)class atKey:(id)key completion:(id)completion;
- (void)setObject:(id)object atKey:(id)key withCompletion:(id)completion;
@end

@implementation SCSharingReminderArchiver

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SCSharingReminderArchiver_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance___utility;

  return v2;
}

uint64_t __43__SCSharingReminderArchiver_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance___utility = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (SCSharingReminderArchiver)init
{
  v5.receiver = self;
  v5.super_class = SCSharingReminderArchiver;
  v2 = [(SCSharingReminderArchiver *)&v5 init];
  if (v2)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [(SCSharingReminderArchiver *)v2 setFileManager:defaultManager];

    v2->_lock._os_unfair_lock_opaque = 0;
    if (![(SCSharingReminderArchiver *)v2 sharingReminderDirectoryExists])
    {
      [(SCSharingReminderArchiver *)v2 createSharingReminderDirectory];
    }
  }

  return v2;
}

- (void)getObjectOfClass:(Class)class atKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v10 = completionCopy;
  if (keyCopy && (completionCopy = [keyCopy isEqualToString:&stru_2875209E0], !completionCopy))
  {
    v12 = [(SCSharingReminderArchiver *)self fileURLForKey:keyCopy];
    os_unfair_lock_lock(&self->_lock);
    v21 = 0;
    v13 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v12 options:0 error:&v21];
    v14 = v21;
    os_unfair_lock_unlock(&self->_lock);
    if (v14)
    {
      v16 = SCLogger(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SCSharingReminderArchiver getObjectOfClass:atKey:completion:];
      }

      (v10)[2](v10, 0, v14);
    }

    else
    {
      v20 = 0;
      v17 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:class fromData:v13 error:&v20];
      v18 = v20;
      v14 = v18;
      if (v18)
      {
        v19 = SCLogger(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [SCSharingReminderArchiver getObjectOfClass:atKey:completion:];
        }

        v17 = 0;
      }

      (v10)[2](v10, v17, v14);
    }
  }

  else
  {
    v11 = SCLogger(completionCopy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SCSharingReminderArchiver getObjectOfClass:atKey:completion:];
    }

    v12 = [SCDaemonError errorWithCode:4];
    (v10)[2](v10, 0, v12);
  }
}

- (id)getObjectOfClass:(Class)class atKey:(id)key
{
  keyCopy = key;
  v7 = keyCopy;
  if (keyCopy)
  {
    keyCopy = [keyCopy isEqualToString:&stru_2875209E0];
    if (!keyCopy)
    {
      v8 = [(SCSharingReminderArchiver *)self fileURLForKey:v7];
      os_unfair_lock_lock(&self->_lock);
      v17 = 0;
      v10 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8 options:0 error:&v17];
      v11 = v17;
      os_unfair_lock_unlock(&self->_lock);
      if (v11)
      {
        v9 = SCLogger(v12);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [SCSharingReminderArchiver getObjectOfClass:atKey:completion:];
        }
      }

      else
      {
        v16 = 0;
        v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:class fromData:v10 error:&v16];
        v13 = v16;
        v11 = v13;
        if (!v13)
        {
LABEL_14:

          goto LABEL_15;
        }

        v14 = SCLogger(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [SCSharingReminderArchiver getObjectOfClass:atKey:completion:];
        }
      }

      v9 = 0;
      goto LABEL_14;
    }
  }

  v8 = SCLogger(keyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [SCSharingReminderArchiver getObjectOfClass:atKey:completion:];
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (void)setObject:(id)object atKey:(id)key withCompletion:(id)completion
{
  objectCopy = object;
  keyCopy = key;
  completionCopy = completion;
  v11 = completionCopy;
  if (objectCopy && keyCopy && (completionCopy = [keyCopy isEqualToString:&stru_2875209E0], !completionCopy))
  {
    v24 = 0;
    v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:objectCopy requiringSecureCoding:1 error:&v24];
    v14 = v24;
    v15 = v14;
    if (v14)
    {
      v16 = SCLogger(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SCSharingReminderArchiver setObject:atKey:withCompletion:];
      }

      (v11)[2](v11, 0, v15);
    }

    else
    {
      v17 = [(SCSharingReminderArchiver *)self fileURLForKey:keyCopy];
      os_unfair_lock_lock(&self->_lock);
      fileManager = [(SCSharingReminderArchiver *)self fileManager];
      path = [v17 path];
      v20 = [fileManager fileExistsAtPath:path];

      if (v20)
      {
        v21 = [v13 writeToURL:v17 atomically:1];
      }

      else
      {
        fileManager2 = [(SCSharingReminderArchiver *)self fileManager];
        path2 = [v17 path];
        v21 = [fileManager2 createFileAtPath:path2 contents:v13 attributes:0];
      }

      os_unfair_lock_unlock(&self->_lock);
      v11[2](v11, v21, 0);
    }
  }

  else
  {
    v12 = SCLogger(completionCopy);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SCSharingReminderArchiver setObject:atKey:withCompletion:];
    }

    v11[2](v11, 0, 0);
  }
}

- (BOOL)sharingReminderDirectoryExists
{
  v10 = 0;
  sharingReminderDirectoryURL = [(SCSharingReminderArchiver *)self sharingReminderDirectoryURL];
  path = [sharingReminderDirectoryURL path];

  fileManager = [(SCSharingReminderArchiver *)self fileManager];
  v6 = [fileManager fileExistsAtPath:path isDirectory:&v10];

  if (v6 && (v10 & 1) == 0)
  {
    v8 = SCLogger(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCSharingReminderArchiver sharingReminderDirectoryExists];
    }
  }

  return v6;
}

- (void)createSharingReminderDirectory
{
  fileManager = [(SCSharingReminderArchiver *)self fileManager];
  sharingReminderDirectoryURL = [(SCSharingReminderArchiver *)self sharingReminderDirectoryURL];
  v8 = 0;
  [fileManager createDirectoryAtURL:sharingReminderDirectoryURL withIntermediateDirectories:0 attributes:MEMORY[0x277CBEC10] error:&v8];
  v5 = v8;

  if (v5)
  {
    v7 = SCLogger(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCSharingReminderArchiver createSharingReminderDirectory];
    }
  }
}

- (id)fileURLForKey:(id)key
{
  keyCopy = key;
  sharingReminderDirectoryURL = [(SCSharingReminderArchiver *)self sharingReminderDirectoryURL];
  v6 = [sharingReminderDirectoryURL URLByAppendingPathComponent:keyCopy isDirectory:0];

  return v6;
}

- (id)sharingReminderDirectoryURL
{
  fileManager = [(SCSharingReminderArchiver *)self fileManager];
  v9 = 0;
  v3 = [fileManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v9];
  v4 = v9;

  if (v4)
  {
    v6 = SCLogger(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCSharingReminderArchiver sharingReminderDirectoryURL];
    }

    v7 = 0;
  }

  else
  {
    v7 = [v3 URLByAppendingPathComponent:@"com.apple.safetycheckd" isDirectory:1];
  }

  return v7;
}

@end
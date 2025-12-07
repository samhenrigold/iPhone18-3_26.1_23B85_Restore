@interface CNFileUtilities
+ (CNFileUtilities)sharedInstance;
+ (CNProcessSharedLock)fileLock;
+ (OS_os_log)log;
+ (id)initializeFileLock;
+ (id)requestSharedLockDirectoryURLWithFileServices:(id)services;
+ (id)sharedLockDirectoryURLWithFileServices:(id)services;
+ (void)initializeFileLock;
- (BOOL)isFileAtUrlOnARemoteFileSystem:(id)system;
- (CNFileUtilities)init;
- (CNFileUtilities)initWithFileServices:(id)services;
- (NSURL)addressBookFolderURL;
- (NSURL)cachesFolderURL;
- (NSURL)libraryFolderURL;
- (NSURL)sharedLockDirectoryUrl;
- (id)proxyLockUrlForFileAtUrl:(id)url;
- (id)sharedLockUrlWithName:(id)name;
@end

@implementation CNFileUtilities

+ (OS_os_log)log
{
  if (log_cn_once_token_1 != -1)
  {
    +[CNFileUtilities log];
  }

  v3 = log_cn_once_object_1;

  return v3;
}

uint64_t __22__CNFileUtilities_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "file-utilites");
  v1 = log_cn_once_object_1;
  log_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (CNFileUtilities)sharedInstance
{
  if (sharedInstance_cn_once_token_2 != -1)
  {
    +[CNFileUtilities sharedInstance];
  }

  v3 = sharedInstance_cn_once_object_2;

  return v3;
}

uint64_t __33__CNFileUtilities_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CNFileUtilities);
  v1 = sharedInstance_cn_once_object_2;
  sharedInstance_cn_once_object_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNFileUtilities)init
{
  v3 = +[CNFileServices sharedInstance];
  v4 = [(CNFileUtilities *)self initWithFileServices:v3];

  return v4;
}

- (CNFileUtilities)initWithFileServices:(id)services
{
  servicesCopy = services;
  v10.receiver = self;
  v10.super_class = CNFileUtilities;
  v6 = [(CNFileUtilities *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_services, services);
    v8 = v7;
  }

  return v7;
}

- (NSURL)addressBookFolderURL
{
  v2 = objc_alloc_init(_CNFolderLocator);
  addressBookFolder = [(_CNFolderLocator *)v2 addressBookFolder];

  return addressBookFolder;
}

- (NSURL)libraryFolderURL
{
  v2 = objc_alloc_init(_CNFolderLocator);
  libraryFolder = [(_CNFolderLocator *)v2 libraryFolder];

  return libraryFolder;
}

- (NSURL)cachesFolderURL
{
  v2 = objc_alloc_init(_CNFolderLocator);
  cachesFolder = [(_CNFolderLocator *)v2 cachesFolder];

  return cachesFolder;
}

+ (CNProcessSharedLock)fileLock
{
  v3 = +[CNUserDefaults standardPreferences];
  v4 = [v3 userHasOptedOutOfPreference:@"com.apple.private.contacts.disable-file-lock"];

  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__CNFileUtilities_fileLock__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (fileLock_cn_once_token_3 != -1)
    {
      dispatch_once(&fileLock_cn_once_token_3, block);
    }

    v5 = &fileLock_cn_once_object_3;
  }

  else
  {
    if (fileLock_cn_once_token_4 != -1)
    {
      +[CNFileUtilities fileLock];
    }

    v5 = &fileLock_cn_once_object_4;
  }

  v6 = *v5;

  return v6;
}

uint64_t __27__CNFileUtilities_fileLock__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) initializeFileLock];
  v2 = fileLock_cn_once_object_3;
  fileLock_cn_once_object_3 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

uint64_t __27__CNFileUtilities_fileLock__block_invoke_2()
{
  v0 = objc_alloc_init(CNDoNothingLock);
  v1 = fileLock_cn_once_object_4;
  fileLock_cn_once_object_4 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)initializeFileLock
{
  v2 = +[CNFileUtilities sharedInstance];
  v3 = [v2 sharedLockUrlWithName:@"database.lock"];

  path = [v3 path];
  v5 = [CNProcessSharedLock recursiveSharedLockWithLockFilePath:path];
  v10 = 0;
  v6 = [v5 open:&v10];
  v7 = v10;
  if ((v6 & 1) == 0)
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      +[(CNFileUtilities *)v5];
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)isFileAtUrlOnARemoteFileSystem:(id)system
{
  v10 = *MEMORY[0x1E69E9840];
  path = [system path];
  fileSystemRepresentation = [path fileSystemRepresentation];

  bzero(v9, 0x878uLL);
  p_services = &self->_services;
  if (([(CNFileServices *)self->_services statfs:fileSystemRepresentation]& 0x80000000) == 0)
  {
    return (v9[65] & 0x10) == 0;
  }

  v8 = [objc_opt_class() log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(CNFileUtilities *)fileSystemRepresentation isFileAtUrlOnARemoteFileSystem:v8];
  }

  return 0;
}

- (NSURL)sharedLockDirectoryUrl
{
  v3 = objc_opt_class();
  services = self->_services;

  return [v3 sharedLockDirectoryURLWithFileServices:services];
}

+ (id)sharedLockDirectoryURLWithFileServices:(id)services
{
  servicesCopy = services;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__CNFileUtilities_sharedLockDirectoryURLWithFileServices___block_invoke;
  v10[3] = &unk_1E6ED5E88;
  v11 = servicesCopy;
  selfCopy = self;
  v5 = sharedLockDirectoryURLWithFileServices__cn_once_token_7;
  v6 = servicesCopy;
  if (v5 != -1)
  {
    dispatch_once(&sharedLockDirectoryURLWithFileServices__cn_once_token_7, v10);
  }

  v7 = sharedLockDirectoryURLWithFileServices__cn_once_object_7;
  v8 = sharedLockDirectoryURLWithFileServices__cn_once_object_7;

  return v7;
}

void __58__CNFileUtilities_sharedLockDirectoryURLWithFileServices___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 40) requestSharedLockDirectoryURLWithFileServices:*(a1 + 32)];
  v1 = [v3 copy];
  v2 = sharedLockDirectoryURLWithFileServices__cn_once_object_7;
  sharedLockDirectoryURLWithFileServices__cn_once_object_7 = v1;
}

+ (id)requestSharedLockDirectoryURLWithFileServices:(id)services
{
  v3 = dlopen("/System/Library/PrivateFrameworks/AppSandbox.framework/AppSandbox", 5);
  v4 = dlsym(v3, "AppSandboxUtilAddressBookLockPathURL");
  v5 = v4();
  v6 = [v5 copy];

  dlclose(v3);

  return v6;
}

- (id)sharedLockUrlWithName:(id)name
{
  nameCopy = name;
  sharedLockDirectoryUrl = [(CNFileUtilities *)self sharedLockDirectoryUrl];
  v6 = [sharedLockDirectoryUrl URLByAppendingPathComponent:nameCopy isDirectory:0];

  return v6;
}

- (id)proxyLockUrlForFileAtUrl:(id)url
{
  path = [url path];
  stringByResolvingSymlinksInPath = [path stringByResolvingSymlinksInPath];
  stringByStandardizingPath = [stringByResolvingSymlinksInPath stringByStandardizingPath];

  v7 = [stringByStandardizingPath stringByAppendingString:@"_lock"];

  v8 = [v7 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  v9 = [(CNFileUtilities *)self sharedLockUrlWithName:v8];

  return v9;
}

+ (void)initializeFileLock
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  selfCopy = self;
  v5 = 2114;
  v6 = a2;
  _os_log_fault_impl(&dword_1859F0000, log, OS_LOG_TYPE_FAULT, "Unable to open file lock: %@ %{public}@", &v3, 0x16u);
}

- (void)isFileAtUrlOnARemoteFileSystem:(NSObject *)a3 .cold.1(uint64_t a1, id *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*a2 errnoValue];
  v6 = 136315394;
  v7 = a1;
  v8 = 1024;
  v9 = v5;
  _os_log_error_impl(&dword_1859F0000, a3, OS_LOG_TYPE_ERROR, "Could not statfs file at path: %s: %d", &v6, 0x12u);
}

@end
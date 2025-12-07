@interface MCInstallerReader
+ (id)sharedReader;
+ (void)_setSystemProfileStorageDirectory:(id)directory userProfileStorageDirectory:(id)storageDirectory;
- (id)pathsToInstalledProfilesWithFilterFlags:(int)flags;
@end

@implementation MCInstallerReader

+ (id)sharedReader
{
  if (sharedReader_once != -1)
  {
    +[MCInstallerReader sharedReader];
  }

  v3 = sharedReader_obj_0;

  return v3;
}

uint64_t __33__MCInstallerReader_sharedReader__block_invoke()
{
  sharedReader_obj_0 = objc_alloc_init(MCInstallerReader);

  return MEMORY[0x1EEE66BB8]();
}

- (id)pathsToInstalledProfilesWithFilterFlags:(int)flags
{
  v3 = *&flags;
  v4 = +[MCManifest sharedManifest];
  v5 = [v4 identifiersOfProfilesWithFilterFlags:v3];

  if ([v5 count])
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = [v5 objectAtIndex:v6];
      if ((v3 & 8) != 0)
      {
        v9 = __userProfileStorageDirectory;
        if (!__userProfileStorageDirectory)
        {
          v13 = MCUserProfileStorageDirectory();
          v12 = __userProfileStorageDirectory;
          __userProfileStorageDirectory = v13;
          v11 = &__userProfileStorageDirectory;
          goto LABEL_8;
        }
      }

      else
      {
        v9 = __systemProfileStorageDirectory;
        if (!__systemProfileStorageDirectory)
        {
          v10 = MCSystemProfileStorageDirectory();
          v11 = &__systemProfileStorageDirectory;
          v12 = __systemProfileStorageDirectory;
          __systemProfileStorageDirectory = v10;
LABEL_8:

          v9 = *v11;
        }
      }

      v14 = v9;
      v15 = [v8 MCHashedFilenameWithExtension:@"stub"];
      v16 = [v14 stringByAppendingPathComponent:v15];
      [v5 replaceObjectAtIndex:v6 withObject:v16];

      v6 = v7;
    }

    while ([v5 count] > v7++);
  }

  return v5;
}

+ (void)_setSystemProfileStorageDirectory:(id)directory userProfileStorageDirectory:(id)storageDirectory
{
  directoryCopy = directory;
  storageDirectoryCopy = storageDirectory;
  v7 = __systemProfileStorageDirectory;
  __systemProfileStorageDirectory = directoryCopy;
  v9 = directoryCopy;

  v8 = __userProfileStorageDirectory;
  __userProfileStorageDirectory = storageDirectoryCopy;
}

@end
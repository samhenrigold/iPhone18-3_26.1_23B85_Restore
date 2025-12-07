@interface NSFileManager
- (BOOL)fileAtPathIsSymlink:(id)symlink;
@end

@implementation NSFileManager

- (BOOL)fileAtPathIsSymlink:(id)symlink
{
  symlinkCopy = symlink;
  v4 = +[NSFileManager defaultManager];
  v12[0] = 0;
  v5 = [v4 attributesOfItemAtPath:symlinkCopy error:v12];
  v6 = v12[0];

  if (!v5)
  {
    [NSFileManager(DeviceRecoveryExtras) fileAtPathIsSymlink:];
    goto LABEL_11;
  }

  if (!v6)
  {
    v8 = [v5 objectForKeyedSubscript:NSFileType];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 isEqualToString:NSFileTypeSymbolicLink];
      goto LABEL_5;
    }

    [NSFileManager(DeviceRecoveryExtras) fileAtPathIsSymlink:];
LABEL_11:
    v9 = v12[1];
    v10 = v13;
    goto LABEL_5;
  }

  v9 = DRGetLogHandle(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [NSFileManager(DeviceRecoveryExtras) fileAtPathIsSymlink:];
  }

  v10 = 0;
LABEL_5:

  return v10;
}

@end
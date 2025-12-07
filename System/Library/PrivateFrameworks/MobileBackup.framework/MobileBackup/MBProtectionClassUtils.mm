@interface MBProtectionClassUtils
+ (BOOL)canOpenWhenLocked:(unsigned __int8)locked;
+ (BOOL)isContentUnavailableDueToCxExpiration:(id)expiration error:(id *)error;
+ (BOOL)isProtected:(unsigned __int8)protected;
+ (BOOL)setWithFD:(int)d value:(unsigned __int8)value error:(id *)error;
+ (BOOL)setWithPath:(id)path value:(unsigned __int8)value error:(id *)error;
+ (BOOL)setWithPathFSR:(const char *)r value:(unsigned __int8)value error:(id *)error;
+ (int)_openRawEncryptedWithPathFSR:(const char *)r error:(id *)error;
+ (int)sqliteOpenFlagForProtectionClass:(unsigned __int8)class;
+ (unsigned)getWithFD:(int)d error:(id *)error;
+ (unsigned)getWithPath:(id)path error:(id *)error;
+ (unsigned)getWithPathFSR:(const char *)r error:(id *)error;
@end

@implementation MBProtectionClassUtils

+ (BOOL)isProtected:(unsigned __int8)protected
{
  protectedCopy = protected;
  if (protected < 8u && ((0x9Fu >> protected) & 1) != 0)
  {
    v4 = 0x8Eu >> protected;
  }

  else
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v8 = protectedCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "=pc= +isProtected: Invalid protection class: %d", buf, 8u);
      _MBLog(@"F ", "=pc= +isProtected: Invalid protection class: %d", protectedCopy);
    }

    LOBYTE(v4) = 1;
  }

  return v4 & 1;
}

+ (BOOL)canOpenWhenLocked:(unsigned __int8)locked
{
  lockedCopy = locked;
  if (locked < 8u && ((0x9Fu >> locked) & 1) != 0)
  {
    v4 = 0xF9u >> locked;
  }

  else
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v8 = lockedCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "=pc= +canOpenWhenLocked: Invalid protection class: %d", buf, 8u);
      _MBLog(@"F ", "=pc= +canOpenWhenLocked: Invalid protection class: %d", lockedCopy);
    }

    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

+ (unsigned)getWithPath:(id)path error:(id *)error
{
  fileSystemRepresentation = [path fileSystemRepresentation];

  return [MBProtectionClassUtils getWithPathFSR:fileSystemRepresentation error:error];
}

+ (BOOL)isContentUnavailableDueToCxExpiration:(id)expiration error:(id *)error
{
  expirationCopy = expiration;
  fileSystemRepresentation = [expirationCopy fileSystemRepresentation];
  if ([self getWithPathFSR:fileSystemRepresentation error:error] != 7)
  {
    goto LABEL_7;
  }

  v8 = open(fileSystemRepresentation, 256);
  v9 = __error();
  if ((v8 & 0x80000000) == 0)
  {
    close(v8);
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (*v9 != 1)
  {
    goto LABEL_7;
  }

  v10 = 1;
  if (error)
  {
    *error = [MBError errorWithErrno:1 code:240 path:expirationCopy format:@"File content unavailable with protection class %d", 7];
  }

LABEL_8:

  return v10;
}

+ (unsigned)getWithPathFSR:(const char *)r error:(id *)error
{
  v5 = [self _openRawEncryptedWithPathFSR:r error:?];
  if ((v5 & 0x80000000) != 0)
  {
    return -1;
  }

  v6 = v5;
  v7 = [MBProtectionClassUtils getWithFD:v5 error:error];
  close(v6);
  return v7;
}

+ (BOOL)setWithPath:(id)path value:(unsigned __int8)value error:(id *)error
{
  valueCopy = value;
  fileSystemRepresentation = [path fileSystemRepresentation];

  return [MBProtectionClassUtils setWithPathFSR:fileSystemRepresentation value:valueCopy error:error];
}

+ (BOOL)setWithPathFSR:(const char *)r value:(unsigned __int8)value error:(id *)error
{
  valueCopy = value;
  v8 = open(r, 256);
  if ((v8 & 0x80000000) != 0)
  {
    if (error)
    {
      if (r)
      {
        v12 = [NSString mb_stringWithFileSystemRepresentation:r];
      }

      else
      {
        v12 = @"(null)";
      }

      if (*__error() == 1 && ![MBProtectionClassUtils canOpenWhenLocked:valueCopy])
      {
        v13 = [MBError errorWithCode:208 path:v12 format:@"open error setting protection class (device locked?)"];
      }

      else
      {
        v13 = [MBError posixErrorWithPath:v12 format:@"open error setting protection class"];
      }

      *error = v13;
    }

    return 0;
  }

  else
  {
    v9 = v8;
    v10 = [MBProtectionClassUtils setWithFD:v8 value:valueCopy error:error];
    close(v9);
    return v10;
  }
}

+ (int)_openRawEncryptedWithPathFSR:(const char *)r error:(id *)error
{
  result = open_dprotected_np(r, 256, 0, 1, 0);
  if (result < 0)
  {
    v7 = *__error();
    if (error)
    {
      v8 = [NSString mb_stringWithFileSystemRepresentation:r];
      *error = [MBError posixErrorWithPath:v8 format:@"open_dprotected_np error"];
    }

    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 136315394;
      *&buf.st_mode = r;
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=pc= open_dprotected_np failed at %s: %{errno}d", &buf, 0x12u);
      _MBLog(@"E ", "=pc= open_dprotected_np failed at %s: %{errno}d", r, v7);
    }

    if (v7 == 22)
    {
      if (!MBIsInternalInstall())
      {
        return -1;
      }
    }

    else
    {
      if (v7 != 1)
      {
        return -1;
      }

      memset(&buf, 0, sizeof(buf));
      v10 = lstat(r, &buf);
      if (v10 | buf.st_flags & 0x20)
      {
        return -1;
      }
    }

    v11 = [NSString mb_stringWithFileSystemRepresentation:r];
    MBDiagnoseFile(v11, v7, "open_dprotected_np");
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      buf.st_dev = 138412546;
      *&buf.st_mode = v11;
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "=pc= open_dprotected_np failed at %@: %{errno}d", &buf, 0x12u);
      _MBLog(@"F ", "=pc= open_dprotected_np failed at %@: %{errno}d", v11, v7);
    }

    return -1;
  }

  return result;
}

+ (unsigned)getWithFD:(int)d error:(id *)error
{
  v5 = fcntl(d, 63);
  if (v5 < 0)
  {
    if (error)
    {
      *error = [MBError posixErrorWithFormat:@"fcntl error getting protection class"];
    }

    LOBYTE(v5) = -1;
  }

  return v5;
}

+ (BOOL)setWithFD:(int)d value:(unsigned __int8)value error:(id *)error
{
  valueCopy = value;
  v7 = fcntl(d, 64, value);
  v8 = v7;
  if (error && v7)
  {
    if (*__error() == 1 && ![MBProtectionClassUtils canOpenWhenLocked:valueCopy])
    {
      v9 = [MBError errorWithCode:208 format:@"fcntl permission error setting protection class (device locked?)"];
    }

    else
    {
      if (valueCopy == 7)
      {
        [MBError posixErrorWithCode:240 format:@"fcntl error setting Cx protection class"];
      }

      else
      {
        [MBError posixErrorWithFormat:@"fcntl error setting protection class"];
      }
      v9 = ;
    }

    *error = v9;
  }

  return v8 == 0;
}

+ (int)sqliteOpenFlagForProtectionClass:(unsigned __int8)class
{
  classCopy = class;
  if (class - 1) < 7 && ((0x4Fu >> (class - 1)))
  {
    return dword_1002BA270[(class - 1)];
  }

  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v7 = classCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=pc= No SQLite open flag known for protection class: %d", buf, 8u);
    _MBLog(@"Df", "=pc= No SQLite open flag known for protection class: %d", classCopy);
  }

  return 0x400000;
}

@end
@interface MBKeyBag
+ (MBKeyBag)keybagWithData:(id)data error:(id *)error;
+ (MBKeyBag)keybagWithPassword:(id)password error:(id *)error;
+ (__MKBAssertion)holdLockAssertion:(id)assertion;
+ (id)OTAKeyBagWithData:(id)data error:(id *)error;
+ (id)errorWithReturnCode:(int)code description:(id)description;
+ (id)errorWithReturnCode:(int)code path:(id)path description:(id)description;
+ (id)randomSecret;
+ (id)sharedOTAKeyBag;
+ (id)unlockedKeyBagWithData:(id)data password:(id)password error:(id *)error;
+ (int)codeWithReturnCode:(int)code;
+ (void)releaseLockAssertion:(__MKBAssertion *)assertion;
+ (void)startOTABackup;
+ (void)startOTABackupForVolumeUUID:(id)d;
+ (void)stopOTABackup;
+ (void)stopOTABackupForVolumeUUID:(id)d;
- (BOOL)changePasswordFrom:(id)from toPassword:(id)password error:(id *)error;
- (BOOL)changeSecretFrom:(id)from toSecret:(id)secret error:(id *)error;
- (BOOL)decryptFileWithPath:(id)path encryptionKey:(id)key size:(unint64_t)size error:(id *)error;
- (BOOL)decryptFileWithPath:(id)path encryptionKey:(id)key size:(unint64_t)size hardwareModel:(id)model error:(id *)error;
- (BOOL)unlockWithPassword:(id)password error:(id *)error;
- (BOOL)unlockWithSecret:(id)secret error:(id *)error;
- (BOOL)validateEncryptionKey:(id)key file:(_mkbfileref *)file path:(id)path error:(id *)error;
- (BOOL)validateWrappedKey:(id)key error:(id *)error;
- (MBKeyBag)initWithHandle:(__MKBKeyBagHandle *)handle OTA:(BOOL)a;
- (MBKeyBag)initWithOTAHandle:(__MKBOTABackupBagHandle *)handle keyBagData:(id)data;
- (_mkbfileref)encryptedFileForRestoreWithPath:(id)path key:(id)key error:(id *)error;
- (id)UUIDWithError:(id *)error;
- (id)dataWithError:(id *)error;
- (id)encryptionKeyForFile:(_mkbfileref *)file path:(id)path error:(id *)error;
- (void)dealloc;
@end

@implementation MBKeyBag

+ (__MKBAssertion)holdLockAssertion:(id)assertion
{
  assertionCopy = assertion;
  valuePtr = 300;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *keys = *&off_1000FE420;
  values[0] = @"Other";
  values[1] = v4;
  v5 = CFDictionaryCreate(0, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v6 = MKBDeviceLockAssertion();
  CFRelease(v5);
  CFRelease(v4);
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v12 = assertionCopy;
      v13 = 2048;
      v14 = v6;
      v15 = 1024;
      v16 = valuePtr;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Holding %{public}@ keybag lock assertion (%p) for %ds", buf, 0x1Cu);
      _MBLog(@"Df", "Holding %{public}@ keybag lock assertion (%p) for %ds", assertionCopy, v6, valuePtr);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v12 = assertionCopy;
    v13 = 2112;
    v14 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to acquire keybag lock assertion %{public}@: %@", buf, 0x16u);
    _MBLog(@"E ", "Failed to acquire keybag lock assertion %{public}@: %@", assertionCopy, 0);
  }

  return v6;
}

+ (void)releaseLockAssertion:(__MKBAssertion *)assertion
{
  if (assertion)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      assertionCopy = assertion;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Releasing keybag lock assertion (%p)", buf, 0xCu);
      _MBLog(@"Df", "Releasing keybag lock assertion (%p)", assertion);
    }

    CFRelease(assertion);
  }
}

+ (int)codeWithReturnCode:(int)code
{
  if (code > -4)
  {
    switch(code)
    {
      case -1:
        return 1;
      case -2:
        return 208;
      case -3:
        return 207;
    }

    goto LABEL_12;
  }

  if (code == -8)
  {
    return 4;
  }

  if (code != -6)
  {
    if (code == -4)
    {
      return 3;
    }

LABEL_12:
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      codeCopy = code;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No code for MobileKeyBag error: %d", buf, 8u);
      _MBLog(@"Df", "No code for MobileKeyBag error: %d", code);
    }

    return 100;
  }

  v6 = *__error();

  return [MBError codeForErrno:v6];
}

+ (id)errorWithReturnCode:(int)code description:(id)description
{
  v4 = *&code;
  descriptionCopy = description;
  v6 = [MBError errorWithCode:[MBKeyBag codeWithReturnCode:v4] format:@"%@ (%d)", descriptionCopy, v4];

  return v6;
}

+ (id)errorWithReturnCode:(int)code path:(id)path description:(id)description
{
  if (code == -6)
  {
    descriptionCopy = description;
    pathCopy = path;
    v9 = [MBError codeForErrno:*__error()];
    [MBError errorWithCode:v9 path:pathCopy format:@"%@ (%d/%d)", descriptionCopy, 4294967290, *__error()];
  }

  else
  {
    [MBError errorWithCode:[MBKeyBag codeWithReturnCode:*&code] path:path format:@"%@ (%d)", description, *&code, v12];
  }
  v10 = ;

  return v10;
}

+ (MBKeyBag)keybagWithData:(id)data error:(id *)error
{
  dataCopy = data;
  if (!dataCopy)
  {
    sub_10009F2D4();
  }

  v6 = MKBKeyBagCreateWithData();
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MKBKeyBagCreateWithData: %d", buf, 8u);
      _MBLog(@"E ", "MKBKeyBagCreateWithData: %d", v6);
    }

    if (error)
    {
      [MBKeyBag errorWithReturnCode:v6 description:@"MKBKeyBagCreateWithData error"];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v12 = 0;
      v13 = 2048;
      v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MKBKeyBagCreateWithData: %d %p", buf, 0x12u);
      _MBLog(@"I ", "MKBKeyBagCreateWithData: %d %p", 0, 0);
    }

    sub_10009F340();
    v9 = [[MBKeyBag alloc] initWithHandle:0 OTA:0];
    CFRelease(0);
  }

  return v9;
}

+ (id)unlockedKeyBagWithData:(id)data password:(id)password error:(id *)error
{
  passwordCopy = password;
  v8 = [MBKeyBag keybagWithData:data error:error];
  v9 = v8;
  if (v8 && [v8 unlockWithPassword:passwordCopy error:error])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (MBKeyBag)keybagWithPassword:(id)password error:(id *)error
{
  [password dataUsingEncoding:4];
  Backup = MKBKeyBagCreateBackup();
  v6 = MBGetDefaultLog();
  v7 = v6;
  if (Backup)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v11 = Backup;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "MKBKeyBagCreateBackup: %d", buf, 8u);
      _MBLog(@"E ", "MKBKeyBagCreateBackup: %d", Backup);
    }

    if (error)
    {
      [MBKeyBag errorWithReturnCode:Backup description:@"MKBKeyBagCreateBackup error"];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v11 = 0;
      v12 = 2048;
      v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MKBKeyBagCreateBackup: %d %p", buf, 0x12u);
      _MBLog(@"Df", "MKBKeyBagCreateBackup: %d %p", 0, 0);
    }

    sub_10009F39C();
    v8 = [[MBKeyBag alloc] initWithHandle:0 OTA:0];
    CFRelease(0);
  }

  return v8;
}

+ (id)OTAKeyBagWithData:(id)data error:(id *)error
{
  v4 = [MBKeyBag keybagWithData:data error:error];
  [v4 setOTA:1];

  return v4;
}

+ (id)sharedOTAKeyBag
{
  if (qword_10011E490 != -1)
  {
    sub_10009F3F8();
  }

  v3 = qword_10011E488;

  return v3;
}

+ (void)startOTABackup
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MKBOTABackupStart", buf, 2u);
    _MBLog(@"Df", "MKBOTABackupStart");
  }

  v3 = MKBOTABackupStart();
  if (v3)
  {
    v4 = v3;
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "MKBOTABackupStart failed: %d", buf, 8u);
      _MBLog(@"E ", "MKBOTABackupStart failed: %d", v4);
    }
  }
}

+ (void)stopOTABackup
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MKBOTABackupStop", buf, 2u);
    _MBLog(@"Df", "MKBOTABackupStop");
  }

  v3 = MKBOTABackupStop();
  if (v3)
  {
    v4 = v3;
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "MKBOTABackupStop failed: %d", buf, 8u);
      _MBLog(@"E ", "MKBOTABackupStop failed: %d", v4);
    }
  }
}

+ (void)startOTABackupForVolumeUUID:(id)d
{
  dCopy = d;
  uUIDString = [dCopy UUIDString];
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = uUIDString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MKBOTABackupStartForVolume %{public}@", buf, 0xCu);
    _MBLog(@"Df", "MKBOTABackupStartForVolume %{public}@", uUIDString);
  }

  v15[0] = 0;
  v15[1] = 0;
  [dCopy getUUIDBytes:v15];
  v6 = [NSData dataWithBytes:v15 length:16];
  if (!v6)
  {
    sub_10009F40C();
  }

  v7 = v6;
  v8 = MKBOTABackupStartForVolume();
  if (v8)
  {
    v9 = v8;
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = uUIDString;
      v13 = 1024;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MKBOTABackupStartForVolume %{public}@ failed: %d", buf, 0x12u);
      _MBLog(@"E ", "MKBOTABackupStartForVolume %{public}@ failed: %d", uUIDString, v9);
    }
  }
}

+ (void)stopOTABackupForVolumeUUID:(id)d
{
  dCopy = d;
  uUIDString = [dCopy UUIDString];
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = uUIDString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MKBOTABackupStopForVolume %{public}@", buf, 0xCu);
    _MBLog(@"Df", "MKBOTABackupStopForVolume %{public}@", uUIDString);
  }

  v15[0] = 0;
  v15[1] = 0;
  [dCopy getUUIDBytes:v15];
  v6 = [NSData dataWithBytes:v15 length:16];
  if (!v6)
  {
    sub_10009F438();
  }

  v7 = v6;
  v8 = MKBOTABackupStopForVolume();
  if (v8)
  {
    v9 = v8;
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = uUIDString;
      v13 = 1024;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MKBOTABackupStopForVolume %{public}@ failed: %d", buf, 0x12u);
      _MBLog(@"E ", "MKBOTABackupStopForVolume %{public}@ failed: %d", uUIDString, v9);
    }
  }
}

+ (id)randomSecret
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Generating random keybag secret", v5, 2u);
    _MBLog(@"I ", "Generating random keybag secret");
  }

  v3 = MBRandomDataWithLength();

  return v3;
}

- (MBKeyBag)initWithHandle:(__MKBKeyBagHandle *)handle OTA:(BOOL)a
{
  if (!handle)
  {
    sub_10009F464();
  }

  v9.receiver = self;
  v9.super_class = MBKeyBag;
  v7 = [(MBKeyBag *)&v9 init];
  if (v7)
  {
    v7->_handle = CFRetain(handle);
    v7->_OTA = a;
  }

  return v7;
}

- (MBKeyBag)initWithOTAHandle:(__MKBOTABackupBagHandle *)handle keyBagData:(id)data
{
  dataCopy = data;
  if (!handle)
  {
    sub_10009F4D0();
  }

  v11.receiver = self;
  v11.super_class = MBKeyBag;
  v8 = [(MBKeyBag *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_OTAHandle = handle;
    *&v8->_OTA = 257;
    objc_storeStrong(&v8->_keyBagData, data);
  }

  return v9;
}

- (void)dealloc
{
  if (self->_OTAHandle)
  {
    MKBOTABackupBagClose();
  }

  handle = self->_handle;
  if (handle)
  {
    CFRelease(handle);
  }

  v4.receiver = self;
  v4.super_class = MBKeyBag;
  [(MBKeyBag *)&v4 dealloc];
}

- (BOOL)unlockWithPassword:(id)password error:(id *)error
{
  v6 = [password dataUsingEncoding:4];
  LOBYTE(error) = [(MBKeyBag *)self unlockWithSecret:v6 error:error];

  return error;
}

- (BOOL)unlockWithSecret:(id)secret error:(id *)error
{
  secretCopy = secret;
  if (self->_OTAHandle)
  {
    if (!self->_isUnlocked)
    {
      sub_10009F53C();
    }

    v7 = 1;
  }

  else
  {
    v9 = MKBKeyBagUnlock();
    v10 = MBGetDefaultLog();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        handle = self->_handle;
        *buf = 134218240;
        v15 = handle;
        v16 = 1024;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "MKBKeyBagUnlock(%p): %d", buf, 0x12u);
        _MBLog(@"E ", "MKBKeyBagUnlock(%p): %d", self->_handle, v9);
      }

      if (error)
      {
        [MBKeyBag errorWithReturnCode:v9 description:@"MKBKeyBagUnlock error"];
        *error = v7 = 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 1;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = self->_handle;
        *buf = 134218240;
        v15 = v13;
        v16 = 1024;
        v17 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "MKBKeyBagUnlock(%p): %d", buf, 0x12u);
        _MBLog(@"I ", "MKBKeyBagUnlock(%p): %d", self->_handle, 0);
      }

      self->_isUnlocked = 1;
    }
  }

  return v7;
}

- (BOOL)changePasswordFrom:(id)from toPassword:(id)password error:(id *)error
{
  passwordCopy = password;
  v9 = [from dataUsingEncoding:4];
  v10 = [passwordCopy dataUsingEncoding:4];

  LOBYTE(error) = [(MBKeyBag *)self changeSecretFrom:v9 toSecret:v10 error:error];
  return error;
}

- (BOOL)changeSecretFrom:(id)from toSecret:(id)secret error:(id *)error
{
  v7 = MKBKeyBagChangeSecret();
  v8 = MBGetDefaultLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      handle = self->_handle;
      *buf = 134218240;
      v14 = handle;
      v15 = 1024;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "MKBKeyBagChangeSecret(%p): %d", buf, 0x12u);
      _MBLog(@"E ", "MKBKeyBagChangeSecret(%p): %d", self->_handle, v7);
    }

    if (error)
    {
      *error = [MBKeyBag errorWithReturnCode:v7 description:@"MKBKeyBagChangeSecret error"];
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = self->_handle;
      *buf = 134218240;
      v14 = v11;
      v15 = 1024;
      v16 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "MKBKeyBagChangeSecret(%p): %d", buf, 0x12u);
      _MBLog(@"I ", "MKBKeyBagChangeSecret(%p): %d", self->_handle, 0);
    }
  }

  return v7 == 0;
}

- (BOOL)validateWrappedKey:(id)key error:(id *)error
{
  keyCopy = key;
  if (!keyCopy)
  {
    if (error)
    {
      [MBError errorWithCode:205 format:@"Invalid encryption key (key is nil)", v11];
      goto LABEL_9;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_14;
  }

  v6 = MKBBackupValidateKeyUUID();
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = keyCopy;
      v14 = 1024;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MKBBackupValidateKeyUUID(%@): %d", buf, 0x12u);
      _MBLog(@"E ", "MKBBackupValidateKeyUUID(%@): %d", keyCopy, v6);
    }

    if (error)
    {
      [MBError errorWithCode:205 format:@"Encryption key is invalid: %d", v6];
LABEL_9:
      *error = v9 = 0;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v13 = keyCopy;
    v14 = 1024;
    v15 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "MKBBackupValidateKeyUUID(%@): %d", buf, 0x12u);
    _MBLog(@"Db", "MKBBackupValidateKeyUUID(%@): %d", keyCopy, 0);
  }

  v9 = 1;
LABEL_14:

  return v9;
}

- (id)dataWithError:(id *)error
{
  keyBagData = self->_keyBagData;
  if (keyBagData)
  {
    v4 = keyBagData;
  }

  else
  {
    v8 = MKBKeyBagCopyData();
    if (v8)
    {
      v9 = v8;
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        handle = self->_handle;
        *buf = 134218240;
        v15 = handle;
        v16 = 1024;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MKBKeyBagCopyData(%p): %d", buf, 0x12u);
        _MBLog(@"E ", "MKBKeyBagCopyData(%p): %d", self->_handle, v9);
      }

      if (error)
      {
        [MBKeyBag errorWithReturnCode:v9 description:@"MKBKeyBagCopyData error"];
        *error = v4 = 0;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = self->_handle;
        *buf = 134218496;
        v15 = v13;
        v16 = 1024;
        v17 = 0;
        v18 = 2048;
        v19 = [0 length];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "MKBKeyBagCopyData(%p): %d, size:%lu", buf, 0x1Cu);
        _MBLog(@"I ", "MKBKeyBagCopyData(%p): %d, size:%lu", self->_handle, 0, [0 length]);
      }

      sub_10009F568();
    }
  }

  return v4;
}

- (id)UUIDWithError:(id *)error
{
  if (self->_OTAHandle)
  {
    v6 = MKBOTABackupBagCopyUUID();
    if (v6)
    {
      v7 = v6;
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        OTAHandle = self->_OTAHandle;
        *buf = 134218240;
        *&buf[4] = OTAHandle;
        v18 = 1024;
        v19 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MKBOTABackupBagCopyUUID(%p): %d", buf, 0x12u);
        _MBLog(@"E ", "MKBOTABackupBagCopyUUID(%p): %d", self->_OTAHandle, v7);
      }

      if (error)
      {
        v10 = @"MKBOTABackupBagCopyUUID error";
LABEL_12:
        v14 = [MBKeyBag errorWithReturnCode:v7 description:v10];
        v15 = v14;
        *error = v14;
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    sub_10009F5C4(a2, self, buf);
LABEL_19:

    goto LABEL_16;
  }

  v11 = MKBKeyBagCopyUUID();
  if (!v11)
  {
    sub_10009F628(a2, self, buf);
    goto LABEL_19;
  }

  v7 = v11;
  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    handle = self->_handle;
    *buf = 134218240;
    *&buf[4] = handle;
    v18 = 1024;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "MKBKeyBagCopyUUID(%p): %d", buf, 0x12u);
    _MBLog(@"E ", "MKBKeyBagCopyUUID(%p): %d", self->_handle, v7);
  }

  if (error)
  {
    v10 = @"MKBKeyBagCopyUUID error";
    goto LABEL_12;
  }

LABEL_16:

  return 0;
}

- (id)encryptionKeyForFile:(_mkbfileref *)file path:(id)path error:(id *)error
{
  pathCopy = path;
  v8 = MKBFileCopyWrappedKey();
  v9 = MBGetDefaultLog();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      handle = self->_handle;
      *buf = 138412802;
      v15 = pathCopy;
      v16 = 2048;
      v17 = handle;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MKBFileCopyWrappedKey(%@, %p, ...): %d", buf, 0x1Cu);
      _MBLog(@"E ", "MKBFileCopyWrappedKey(%@, %p, ...): %d", pathCopy, self->_handle, v8);
    }

    if (error)
    {
      *error = [MBKeyBag errorWithReturnCode:v8 path:pathCopy description:@"MKBFileCopyWrappedKey error"];
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = self->_handle;
      *buf = 138412802;
      v15 = pathCopy;
      v16 = 2048;
      v17 = v12;
      v18 = 1024;
      v19 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "MKBFileCopyWrappedKey(%@, %p, ...): %d", buf, 0x1Cu);
      _MBLog(@"Db", "MKBFileCopyWrappedKey(%@, %p, ...): %d", pathCopy, self->_handle, 0);
    }

    sub_10009F68C();
  }

  return 0;
}

- (BOOL)validateEncryptionKey:(id)key file:(_mkbfileref *)file path:(id)path error:(id *)error
{
  pathCopy = path;
  v9 = MKBFileValidateWrappedKey();
  v10 = MBGetDefaultLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      handle = self->_handle;
      *buf = 138412802;
      v16 = pathCopy;
      v17 = 2048;
      v18 = handle;
      v19 = 1024;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "MKBFileValidateWrappedKey(%@, %p, ...): %d", buf, 0x1Cu);
      _MBLog(@"E ", "MKBFileValidateWrappedKey(%@, %p, ...): %d", pathCopy, self->_handle, v9);
    }

    if (error)
    {
      *error = [MBKeyBag errorWithReturnCode:v9 path:pathCopy description:@"MKBFileValidateWrappedKey error"];
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = self->_handle;
      *buf = 138412802;
      v16 = pathCopy;
      v17 = 2048;
      v18 = v13;
      v19 = 1024;
      v20 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "MKBFileValidateWrappedKey(%@, %p, ...): %d", buf, 0x1Cu);
      _MBLog(@"Db", "MKBFileValidateWrappedKey(%@, %p, ...): %d", pathCopy, self->_handle, 0);
    }
  }

  return v9 == 0;
}

- (_mkbfileref)encryptedFileForRestoreWithPath:(id)path key:(id)key error:(id *)error
{
  pathCopy = path;
  keyCopy = key;
  if (!keyCopy)
  {
    sub_10009F6E8();
  }

  v8 = keyCopy;
  v9 = MKBFileCreateForRestore();
  v10 = MBGetDefaultLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = pathCopy;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "MKBFileCreateForRestore(%@, ...): %d", buf, 0x12u);
      _MBLog(@"E ", "MKBFileCreateForRestore(%@, ...): %d", pathCopy, v9);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v14 = pathCopy;
    v15 = 1024;
    v16 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "MKBFileCreateForRestore(%@, ...): %d", buf, 0x12u);
    _MBLog(@"Db", "MKBFileCreateForRestore(%@, ...): %d", pathCopy, 0);
  }

  return 0;
}

- (BOOL)decryptFileWithPath:(id)path encryptionKey:(id)key size:(unint64_t)size error:(id *)error
{
  pathCopy = path;
  keyCopy = key;
  if (!self->_OTAHandle)
  {
    [pathCopy fileSystemRepresentation];
    v12 = MKBBackupDecryptInPlace();
    v17 = MBGetDefaultLog();
    v14 = v17;
    if (v12)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        handle = self->_handle;
        *buf = 134219010;
        v24 = handle;
        v25 = 2112;
        v26 = pathCopy;
        v27 = 2048;
        sizeCopy4 = size;
        v29 = 2112;
        v30 = keyCopy;
        v31 = 1024;
        v32 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "MKBBackupDecryptInPlace(%p, %@, %llu, %@): %d", buf, 0x30u);
        _MBLog(@"E ", "MKBBackupDecryptInPlace(%p, %@, %llu, %@): %d", self->_handle, pathCopy, size, keyCopy, v12);
      }

      if (error)
      {
        v16 = @"MKBBackupDecryptInPlace error";
        goto LABEL_12;
      }

LABEL_15:
      v19 = 0;
      goto LABEL_19;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v21 = self->_handle;
      *buf = 134219010;
      v24 = v21;
      v25 = 2112;
      v26 = pathCopy;
      v27 = 2048;
      sizeCopy4 = size;
      v29 = 2112;
      v30 = keyCopy;
      v31 = 1024;
      v32 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "MKBBackupDecryptInPlace(%p, %@, %llu, %@): %d", buf, 0x30u);
      _MBLog(@"Db", "MKBBackupDecryptInPlace(%p, %@, %llu, %@): %d", self->_handle, pathCopy, size, keyCopy, 0);
    }

LABEL_18:

    v19 = 1;
    goto LABEL_19;
  }

  [pathCopy fileSystemRepresentation];
  v12 = MKBOTABackupDecryptInPlace();
  v13 = MBGetDefaultLog();
  v14 = v13;
  if (!v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      OTAHandle = self->_OTAHandle;
      *buf = 134219010;
      v24 = OTAHandle;
      v25 = 2112;
      v26 = pathCopy;
      v27 = 2048;
      sizeCopy4 = size;
      v29 = 2112;
      v30 = keyCopy;
      v31 = 1024;
      v32 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "MKBOTABackupDecryptInPlace(%p, %@, %llu, %@): %d", buf, 0x30u);
      _MBLog(@"Db", "MKBOTABackupDecryptInPlace(%p, %@, %llu, %@): %d", self->_OTAHandle, pathCopy, size, keyCopy, 0);
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v15 = self->_OTAHandle;
    *buf = 134219010;
    v24 = v15;
    v25 = 2112;
    v26 = pathCopy;
    v27 = 2048;
    sizeCopy4 = size;
    v29 = 2112;
    v30 = keyCopy;
    v31 = 1024;
    v32 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "MKBOTABackupDecryptInPlace(%p, %@, %llu, %@): %d", buf, 0x30u);
    _MBLog(@"E ", "MKBOTABackupDecryptInPlace(%p, %@, %llu, %@): %d", self->_OTAHandle, pathCopy, size, keyCopy, v12);
  }

  if (!error)
  {
    goto LABEL_15;
  }

  v16 = @"MKBOTABackupDecryptInPlace error";
LABEL_12:
  [MBKeyBag errorWithReturnCode:v12 path:pathCopy description:v16];
  *error = v19 = 0;
LABEL_19:

  return v19;
}

- (BOOL)decryptFileWithPath:(id)path encryptionKey:(id)key size:(unint64_t)size hardwareModel:(id)model error:(id *)error
{
  pathCopy = path;
  keyCopy = key;
  modelCopy = model;
  if (([modelCopy hasPrefix:@"N66"] & 1) != 0 || (objc_msgSend(modelCopy, "hasPrefix:", @"N71") & 1) != 0 || (objc_msgSend(modelCopy, "hasPrefix:", @"J98") & 1) != 0 || objc_msgSend(modelCopy, "hasPrefix:", @"J99"))
  {
    v15 = [keyCopy mutableCopy];
    if (MKBBackupSetKeyEncryptionModeToXTS())
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v20 = pathCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to set encryption mode to XTS for: %{public}@", buf, 0xCu);
        _MBLog(@"E ", "Failed to set encryption mode to XTS for: %{public}@", pathCopy);
      }
    }

    keyCopy = v15;
  }

  v17 = [(MBKeyBag *)self decryptFileWithPath:pathCopy encryptionKey:keyCopy size:size error:error];

  return v17;
}

@end
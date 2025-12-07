@interface MBKeyBag
+ (BOOL)unregisterOTAKeyBagForVolume:(id)volume error:(id *)error;
+ (MBKeyBag)keybagWithData:(id)data error:(id *)error;
+ (MBKeyBag)keybagWithPassword:(id)password error:(id *)error;
+ (__MKBAssertion)holdLockAssertion:(id)assertion;
+ (id)OTAKeyBagWithData:(id)data error:(id *)error;
+ (id)OTAKeyBagWithData:(id)data secret:(id)secret error:(id *)error;
+ (id)OTAKeybagUUIDStringWithVolume:(id)volume error:(id *)error;
+ (id)errorWithReturnCode:(int)code description:(id)description;
+ (id)errorWithReturnCode:(int)code path:(id)path description:(id)description;
+ (id)randomSecret;
+ (id)registerOTAKeyBagWithVolume:(id)volume secret:(id)secret keybagUUIDData:(id *)data error:(id *)error;
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
  *keys = *&off_1003C2328;
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
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MBKeyBag.m" lineNumber:118 description:@"No keybag data"];
  }

  v8 = MKBKeyBagCreateWithData();
  v9 = MBGetDefaultLog();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MKBKeyBagCreateWithData: %d", buf, 8u);
      _MBLog(@"E ", "MKBKeyBagCreateWithData: %d", v8);
    }

    if (error)
    {
      [MBKeyBag errorWithReturnCode:v8 description:@"MKBKeyBagCreateWithData error"];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v16 = 0;
      v17 = 2048;
      v18 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "MKBKeyBagCreateWithData: %d %p", buf, 0x12u);
      _MBLog(@"I ", "MKBKeyBagCreateWithData: %d %p", 0, 0);
    }

    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MBKeyBag.m" lineNumber:123 description:@"MKBKeyBagCreateWithData succeeded but handle is null"];

    v11 = [[MBKeyBag alloc] initWithHandle:0 OTA:0];
    CFRelease(0);
  }

  return v11;
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
  v8 = MBGetDefaultLog();
  v9 = v8;
  if (Backup)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = Backup;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "MKBKeyBagCreateBackup: %d", buf, 8u);
      _MBLog(@"E ", "MKBKeyBagCreateBackup: %d", Backup);
    }

    if (error)
    {
      [MBKeyBag errorWithReturnCode:Backup description:@"MKBKeyBagCreateBackup error"];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v14 = 0;
      v15 = 2048;
      v16 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MKBKeyBagCreateBackup: %d %p", buf, 0x12u);
      _MBLog(@"Df", "MKBKeyBagCreateBackup: %d %p", 0, 0);
    }

    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MBKeyBag.m" lineNumber:154 description:@"MKBKeyBagCreateBackup succeeded but handle is null"];

    v10 = [[MBKeyBag alloc] initWithHandle:0 OTA:0];
    CFRelease(0);
  }

  return v10;
}

+ (id)OTAKeyBagWithData:(id)data error:(id *)error
{
  v4 = [MBKeyBag keybagWithData:data error:error];
  [v4 setOTA:1];

  return v4;
}

+ (id)sharedOTAKeyBag
{
  if (qword_100421B20 != -1)
  {
    dispatch_once(&qword_100421B20, &stru_1003C2338);
  }

  v3 = qword_100421B18;

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
    __assert_rtn("+[MBKeyBag startOTABackupForVolumeUUID:]", "MBKeyBag.m", 204, "volumeUUIDData");
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
    __assert_rtn("+[MBKeyBag stopOTABackupForVolumeUUID:]", "MBKeyBag.m", 219, "volumeUUIDData");
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
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MBKeyBag.m" lineNumber:233 description:@"Null keybag handle"];
  }

  v11.receiver = self;
  v11.super_class = MBKeyBag;
  v7 = [(MBKeyBag *)&v11 init];
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
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MBKeyBag.m" lineNumber:242 description:@"Null keybag handle"];
  }

  v13.receiver = self;
  v13.super_class = MBKeyBag;
  v9 = [(MBKeyBag *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_OTAHandle = handle;
    *&v9->_OTA = 257;
    objc_storeStrong(&v9->_keyBagData, data);
  }

  return v10;
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
      __assert_rtn("[MBKeyBag unlockWithSecret:error:]", "MBKeyBag.m", 264, "_isUnlocked");
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
    goto LABEL_3;
  }

  v9 = MKBKeyBagCopyData();
  if (v9)
  {
    v10 = v9;
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      handle = self->_handle;
      *buf = 134218240;
      v17 = handle;
      v18 = 1024;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "MKBKeyBagCopyData(%p): %d", buf, 0x12u);
      _MBLog(@"E ", "MKBKeyBagCopyData(%p): %d", self->_handle, v10);
    }

    if (error)
    {
      [MBKeyBag errorWithReturnCode:v10 description:@"MKBKeyBagCopyData error"];
      *error = v4 = 0;
      goto LABEL_3;
    }
  }

  else
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = self->_handle;
      *buf = 134218496;
      v17 = v14;
      v18 = 1024;
      v19 = 0;
      v20 = 2048;
      v21 = [0 length];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "MKBKeyBagCopyData(%p): %d, size:%lu", buf, 0x1Cu);
      _MBLog(@"I ", "MKBKeyBagCopyData(%p): %d, size:%lu", self->_handle, 0, [0 length]);
    }

    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MBKeyBag.m" lineNumber:324 description:@"MKBKeyBagCopyData succeeded but data is null"];
  }

  v4 = 0;
LABEL_3:

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
        v24 = OTAHandle;
        v25 = 1024;
        v26 = v7;
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

    v16 = +[NSAssertionHandler currentHandler];
    v17 = v16;
    v18 = @"MKBOTABackupBagCopyUUID succeeded but data is null";
    v19 = a2;
    selfCopy2 = self;
    v21 = 343;
LABEL_19:
    [v16 handleFailureInMethod:v19 object:selfCopy2 file:@"MBKeyBag.m" lineNumber:v21 description:v18];

    goto LABEL_16;
  }

  v11 = MKBKeyBagCopyUUID();
  if (!v11)
  {
    v16 = +[NSAssertionHandler currentHandler];
    v17 = v16;
    v18 = @"MKBKeyBagCopyUUID succeeded but data is null";
    v19 = a2;
    selfCopy2 = self;
    v21 = 351;
    goto LABEL_19;
  }

  v7 = v11;
  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    handle = self->_handle;
    *buf = 134218240;
    v24 = handle;
    v25 = 1024;
    v26 = v7;
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

+ (id)OTAKeybagUUIDStringWithVolume:(id)volume error:(id *)error
{
  volumeCopy = volume;
  if (!volumeCopy)
  {
    __assert_rtn("+[MBKeyBag OTAKeybagUUIDStringWithVolume:error:]", "MBKeyBag.m", 362, "volumeMountPoint");
  }

  if (!error)
  {
    __assert_rtn("+[MBKeyBag OTAKeybagUUIDStringWithVolume:error:]", "MBKeyBag.m", 363, "error");
  }

  v6 = volumeCopy;
  v7 = [MBFileSystemManager volumeUUIDWithVolumeMountPoint:volumeCopy error:error];
  v8 = v7;
  if (v7)
  {
    uUIDString = [v7 UUIDString];
    v17[0] = 0;
    v17[1] = 0;
    [v8 getUUIDBytes:v17];
    v10 = [NSData dataWithBytes:v17 length:16];
    if (!v10)
    {
      __assert_rtn("+[MBKeyBag OTAKeybagUUIDStringWithVolume:error:]", "MBKeyBag.m", 374, "volumeUUIDData");
    }

    v11 = v10;
    v12 = MKBBackupCopyBackupBagUUIDForVolume();
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v19 = uUIDString;
      v20 = 1024;
      LODWORD(v21) = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MKBBackupCopyBackupBagUUIDForVolume(%{public}@): %d", buf, 0x12u);
      _MBLog(@"Df", "MKBBackupCopyBackupBagUUIDForVolume(%{public}@): %d", uUIDString, v12);
    }

    if (!v12)
    {
      __assert_rtn("+[MBKeyBag OTAKeybagUUIDStringWithVolume:error:]", "MBKeyBag.m", 384, "keybagUUIDDataRef");
    }

    *error = [MBKeyBag errorWithReturnCode:v12 path:v6 description:@"MKBBackupCopyBackupBagUUIDForVolume error"];
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = uUIDString;
      v20 = 1024;
      LODWORD(v21) = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "MKBBackupCopyBackupBagUUIDForVolume failed for %{public}@: %d", buf, 0x12u);
      _MBLog(@"E ", "MKBBackupCopyBackupBagUUIDForVolume failed for %{public}@: %d", uUIDString, v12);
    }
  }

  else
  {
    uUIDString = MBGetDefaultLog();
    if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_ERROR))
    {
      v15 = *error;
      *buf = 138543618;
      v19 = v6;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, uUIDString, OS_LOG_TYPE_ERROR, "Failed to fetch the volume UUID for %{public}@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to fetch the volume UUID for %{public}@: %@", v6, *error);
    }
  }

  return 0;
}

+ (id)registerOTAKeyBagWithVolume:(id)volume secret:(id)secret keybagUUIDData:(id *)data error:(id *)error
{
  volumeCopy = volume;
  secretCopy = secret;
  if (!volumeCopy)
  {
    __assert_rtn("+[MBKeyBag registerOTAKeyBagWithVolume:secret:keybagUUIDData:error:]", "MBKeyBag.m", 394, "volumeMountPoint");
  }

  v11 = secretCopy;
  if (!secretCopy)
  {
    __assert_rtn("+[MBKeyBag registerOTAKeyBagWithVolume:secret:keybagUUIDData:error:]", "MBKeyBag.m", 395, "secret");
  }

  if (!data)
  {
    __assert_rtn("+[MBKeyBag registerOTAKeyBagWithVolume:secret:keybagUUIDData:error:]", "MBKeyBag.m", 396, "keybagUUIDDataPtr");
  }

  if (!error)
  {
    __assert_rtn("+[MBKeyBag registerOTAKeyBagWithVolume:secret:keybagUUIDData:error:]", "MBKeyBag.m", 397, "error");
  }

  v12 = [MBFileSystemManager volumeUUIDWithVolumeMountPoint:volumeCopy error:error];
  v13 = v12;
  if (v12)
  {
    uUIDString = [v12 UUIDString];
    v28[0] = 0;
    v28[1] = 0;
    [v13 getUUIDBytes:v28];
    v15 = [NSData dataWithBytes:v28 length:16];
    if (!v15)
    {
      __assert_rtn("+[MBKeyBag registerOTAKeyBagWithVolume:secret:keybagUUIDData:error:]", "MBKeyBag.m", 408, "volumeUUIDData");
    }

    v16 = v15;
    v17 = MKBBackupDisableForVolume();
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v25 = uUIDString;
      v26 = 1024;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "MKBBackupDisableForVolume(%{public}@): %d", buf, 0x12u);
      _MBLog(@"Df", "MKBBackupDisableForVolume(%{public}@): %d", uUIDString, v17);
    }

    if (v17)
    {
      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v25 = uUIDString;
        v26 = 1024;
        v27 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "MKBBackupDisableForVolume failed for %{public}@: %d", buf, 0x12u);
        _MBLog(@"E ", "MKBBackupDisableForVolume failed for %{public}@: %d", uUIDString, v17);
      }
    }

    v20 = MKBBackupEnableForVolume();
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v25 = uUIDString;
      v26 = 1024;
      v27 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "MKBBackupEnableForVolume(%{public}@): %d", buf, 0x12u);
      _MBLog(@"Df", "MKBBackupEnableForVolume(%{public}@): %d", uUIDString, v20);
    }

    if (!v20)
    {
      __assert_rtn("+[MBKeyBag registerOTAKeyBagWithVolume:secret:keybagUUIDData:error:]", "MBKeyBag.m", 427, "keybagDataRef");
    }

    *error = [MBKeyBag errorWithReturnCode:v20 path:volumeCopy description:@"MKBBackupEnableForVolume error"];
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v25 = uUIDString;
      v26 = 1024;
      v27 = v20;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "MKBBackupEnableForVolume failed for %{public}@: %d", buf, 0x12u);
      _MBLog(@"E ", "MKBBackupEnableForVolume failed for %{public}@: %d", uUIDString, v20);
    }
  }

  return 0;
}

+ (BOOL)unregisterOTAKeyBagForVolume:(id)volume error:(id *)error
{
  volumeCopy = volume;
  v6 = [MBFileSystemManager volumeUUIDWithVolumeMountPoint:volumeCopy error:error];
  v7 = v6;
  if (v6)
  {
    uUIDString = [v6 UUIDString];
    v20[0] = 0;
    v20[1] = 0;
    [v7 getUUIDBytes:v20];
    v9 = [NSData dataWithBytes:v20 length:16];
    if (!v9)
    {
      __assert_rtn("+[MBKeyBag unregisterOTAKeyBagForVolume:error:]", "MBKeyBag.m", 446, "volumeUUIDData");
    }

    v10 = v9;
    v11 = MKBBackupDisableForVolume();
    v12 = v11 == 0;
    v13 = MBGetDefaultLog();
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v17 = uUIDString;
        v18 = 1024;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "MKBBackupDisableForVolume failed for %{public}@: %d", buf, 0x12u);
        _MBLog(@"E ", "MKBBackupDisableForVolume failed for %{public}@: %d", uUIDString, v11);
      }

      if (error)
      {
        *error = [MBKeyBag errorWithReturnCode:v11 description:@"MKBBackupDisableForVolume error"];
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = uUIDString;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "MKBBackupDisableForVolume succeeded for %{public}@", buf, 0xCu);
        _MBLog(@"Df", "MKBBackupDisableForVolume succeeded for %{public}@", uUIDString);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)OTAKeyBagWithData:(id)data secret:(id)secret error:(id *)error
{
  dataCopy = data;
  secretCopy = secret;
  if (!dataCopy)
  {
    __assert_rtn("+[MBKeyBag OTAKeyBagWithData:secret:error:]", "MBKeyBag.m", 460, "data");
  }

  v11 = secretCopy;
  if (!secretCopy)
  {
    __assert_rtn("+[MBKeyBag OTAKeyBagWithData:secret:error:]", "MBKeyBag.m", 461, "secret");
  }

  v12 = MKBOTABackupBagOpen();
  v13 = MBGetDefaultLog();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v19 = [dataCopy length];
      v20 = 2048;
      v21 = [v11 length];
      v22 = 1024;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "MKBOTABackupBagOpen(%lu, %lu): %d", buf, 0x1Cu);
      _MBLog(@"E ", "MKBOTABackupBagOpen(%lu, %lu): %d", [dataCopy length], objc_msgSend(v11, "length"), v12);
    }

    if (error)
    {
      [MBKeyBag errorWithReturnCode:v12 description:@"MKBOTABackupBagOpen error"];
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134218752;
      v19 = [dataCopy length];
      v20 = 2048;
      v21 = [v11 length];
      v22 = 1024;
      v23 = 0;
      v24 = 2048;
      v25 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "MKBOTABackupBagOpen(%lu, %lu): %d, %p", buf, 0x26u);
      _MBLog(@"I ", "MKBOTABackupBagOpen(%lu, %lu): %d, %p", [dataCopy length], objc_msgSend(v11, "length"), 0, 0);
    }

    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MBKeyBag.m" lineNumber:473 description:@"MKBOTABackupBagOpen succeeded but handle is null"];

    v15 = [[MBKeyBag alloc] initWithOTAHandle:0 keyBagData:dataCopy];
  }

  return v15;
}

- (id)encryptionKeyForFile:(_mkbfileref *)file path:(id)path error:(id *)error
{
  pathCopy = path;
  v9 = MKBFileCopyWrappedKey();
  v10 = MBGetDefaultLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      handle = self->_handle;
      *buf = 138412802;
      v17 = pathCopy;
      v18 = 2048;
      v19 = handle;
      v20 = 1024;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "MKBFileCopyWrappedKey(%@, %p, ...): %d", buf, 0x1Cu);
      _MBLog(@"E ", "MKBFileCopyWrappedKey(%@, %p, ...): %d", pathCopy, self->_handle, v9);
    }

    if (error)
    {
      *error = [MBKeyBag errorWithReturnCode:v9 path:pathCopy description:@"MKBFileCopyWrappedKey error"];
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = self->_handle;
      *buf = 138412802;
      v17 = pathCopy;
      v18 = 2048;
      v19 = v13;
      v20 = 1024;
      v21 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "MKBFileCopyWrappedKey(%@, %p, ...): %d", buf, 0x1Cu);
      _MBLog(@"Db", "MKBFileCopyWrappedKey(%@, %p, ...): %d", pathCopy, self->_handle, 0);
    }

    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MBKeyBag.m" lineNumber:490 description:@"MKBFileCopyWrappedKey succeeded but returned key is null"];
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
    __assert_rtn("[MBKeyBag encryptedFileForRestoreWithPath:key:error:]", "MBKeyBag.m", 506, "key");
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
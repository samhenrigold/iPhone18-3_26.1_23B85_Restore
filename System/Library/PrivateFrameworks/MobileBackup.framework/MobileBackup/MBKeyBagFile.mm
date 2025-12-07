@interface MBKeyBagFile
+ (BOOL)decryptFileWithPath:(id)path keybag:(id)keybag encryptionKey:(id)key size:(unint64_t)size error:(id *)error;
+ (BOOL)validateWrappedKey:(id)key withKeyBag:(id)bag forPath:(id)path error:(id *)error;
+ (const)keyBagUUIDForEncryptionKey:(id)key;
+ (id)keybagFileWithPath:(id)path error:(id *)error;
- (BOOL)closeWithError:(id *)error;
- (BOOL)validateEncryptionKey:(id)key error:(id *)error;
- (MBKeyBagFile)initWithHandle:(_mkbbackupref *)handle;
- (id)encryptionKeyWithError:(id *)error;
- (id)updatedEncryptionKeyForCurrentKey:(id)key withError:(id *)error;
- (int)readWithBytes:(void *)bytes count:(unsigned int)count offset:(unint64_t)offset error:(id *)error;
- (void)dealloc;
@end

@implementation MBKeyBagFile

+ (BOOL)decryptFileWithPath:(id)path keybag:(id)keybag encryptionKey:(id)key size:(unint64_t)size error:(id *)error
{
  if (!keybag)
  {
    __assert_rtn("+[MBKeyBagFile decryptFileWithPath:keybag:encryptionKey:size:error:]", "MBKeyBagFile.m", 34, "keybag");
  }

  return [keybag decryptFileWithPath:path encryptionKey:key size:size error:error];
}

+ (id)keybagFileWithPath:(id)path error:(id *)error
{
  [path fileSystemRepresentation];
  v6 = MKBBackupOpen();
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v6 == -2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      pathCopy3 = path;
      v13 = 1024;
      v14 = -2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "MKBBackupOpen(%@): %d", buf, 0x12u);
      _MBLog(@"Db", "MKBBackupOpen(%@): %d", path, 4294967294);
    }

    goto LABEL_10;
  }

  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      pathCopy3 = path;
      v13 = 1024;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MKBBackupOpen(%@): %d", buf, 0x12u);
      _MBLog(@"E ", "MKBBackupOpen(%@): %d", path, v6);
    }

LABEL_10:
    if (!error)
    {
      return 0;
    }

    v10 = [MBKeyBag errorWithReturnCode:v6 path:path description:@"MKBBackupOpen error"];
    result = 0;
    *error = v10;
    return result;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    pathCopy3 = path;
    v13 = 1024;
    v14 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "MKBBackupOpen(%@): %d", buf, 0x12u);
    _MBLog(@"Db", "MKBBackupOpen(%@): %d", path, 0);
  }

  return [[MBKeyBagFile alloc] initWithHandle:0];
}

- (MBKeyBagFile)initWithHandle:(_mkbbackupref *)handle
{
  v5.receiver = self;
  v5.super_class = MBKeyBagFile;
  result = [(MBKeyBagFile *)&v5 init];
  if (result)
  {
    result->_handle = handle;
  }

  return result;
}

- (void)dealloc
{
  if (self->_handle)
  {
    [(MBKeyBagFile *)self closeWithError:0];
  }

  v3.receiver = self;
  v3.super_class = MBKeyBagFile;
  [(MBKeyBagFile *)&v3 dealloc];
}

- (id)encryptionKeyWithError:(id *)error
{
  v5 = MKBBackupCopyKeyWithError();
  v6 = MBGetDefaultLog();
  v7 = v6;
  if (v5 == -2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      handle = self->_handle;
      *buf = 134218498;
      v13 = handle;
      v14 = 1024;
      v15 = -2;
      v16 = 2112;
      v17 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "MKBBackupCopyKeyWithError(%p) failed: %d %@", buf, 0x1Cu);
      _MBLog(@"Db", "MKBBackupCopyKeyWithError(%p) failed: %d %@", self->_handle, 4294967294, 0);
    }
  }

  else
  {
    if (!v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v8 = self->_handle;
        *buf = 134218240;
        v13 = v8;
        v14 = 1024;
        v15 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "MKBBackupCopyKeyWithError(%p) success: %d", buf, 0x12u);
        _MBLog(@"Db", "MKBBackupCopyKeyWithError(%p) success: %d", self->_handle, 0);
      }

      return 0;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = self->_handle;
      *buf = 134218498;
      v13 = v11;
      v14 = 1024;
      v15 = v5;
      v16 = 2112;
      v17 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "MKBBackupCopyKeyWithError(%p) failed: %d %@", buf, 0x1Cu);
      _MBLog(@"E ", "MKBBackupCopyKeyWithError(%p) failed: %d %@", self->_handle, v5, 0);
    }
  }

  if (error)
  {
    *error = [MBKeyBag errorWithReturnCode:v5 description:@"MKBBackupCopyKey error"];
  }

  return 0;
}

- (id)updatedEncryptionKeyForCurrentKey:(id)key withError:(id *)error
{
  keyCopy = key;
  if (!key)
  {
    return keyCopy;
  }

  updated = MKBBackupUpdateKeyWithError();
  v8 = MBGetDefaultLog();
  v9 = v8;
  if (updated == -2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      handle = self->_handle;
      *buf = 134218498;
      v15 = handle;
      v16 = 1024;
      v17 = -2;
      v18 = 2112;
      v19 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "MKBBackupUpdateKeyWithError(%p) failed: %d %@", buf, 0x1Cu);
      _MBLog(@"Db", "MKBBackupUpdateKeyWithError(%p) failed: %d %@", self->_handle, 4294967294, 0);
    }
  }

  else
  {
    if (!updated)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = self->_handle;
        *buf = 134218240;
        v15 = v10;
        v16 = 1024;
        v17 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "MKBBackupUpdateKeyWithError(%p) success: %d", buf, 0x12u);
        _MBLog(@"Db", "MKBBackupUpdateKeyWithError(%p) success: %d", self->_handle, 0);
      }

      return keyCopy;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = self->_handle;
      *buf = 134218498;
      v15 = v12;
      v16 = 1024;
      v17 = updated;
      v18 = 2112;
      v19 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "MKBBackupUpdateKeyWithError(%p) failed: %d %@", buf, 0x1Cu);
      _MBLog(@"E ", "MKBBackupUpdateKeyWithError(%p) failed: %d %@", self->_handle, updated, 0);
    }
  }

  if (error)
  {
    *error = [MBKeyBag errorWithReturnCode:updated description:@"MKBBackupUpdateKey error"];
  }

  return 0;
}

- (BOOL)validateEncryptionKey:(id)key error:(id *)error
{
  v6 = MKBBackupValidateKey();
  if (v6)
  {
    v7 = MBGetDefaultLog();
    v8 = v7;
    if (v6 == -2)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        handle = self->_handle;
        *buf = 134218240;
        v15 = handle;
        v16 = 1024;
        v17 = -2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "MKBBackupValidateKey(%p): %d", buf, 0x12u);
        _MBLog(@"Db", "MKBBackupValidateKey(%p): %d", self->_handle, -2);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = self->_handle;
      *buf = 134218240;
      v15 = v12;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MKBBackupValidateKey(%p): %d", buf, 0x12u);
      _MBLog(@"E ", "MKBBackupValidateKey(%p): %d", self->_handle, v6);
    }

    if (error)
    {
      *error = [MBKeyBag errorWithReturnCode:v6 description:@"MKBBackupValidateKey error"];
    }
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = self->_handle;
      *buf = 134218240;
      v15 = v11;
      v16 = 1024;
      v17 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "MKBBackupValidateKey(%p): %d", buf, 0x12u);
      _MBLog(@"Db", "MKBBackupValidateKey(%p): %d", self->_handle, 0);
    }
  }

  return v6 == 0;
}

+ (BOOL)validateWrappedKey:(id)key withKeyBag:(id)bag forPath:(id)path error:(id *)error
{
  if (!bag)
  {
    __assert_rtn("+[MBKeyBagFile validateWrappedKey:withKeyBag:forPath:error:]", "MBKeyBagFile.m", 137, "keybag");
  }

  return [bag validateWrappedKey:key error:{error, path}];
}

- (int)readWithBytes:(void *)bytes count:(unsigned int)count offset:(unint64_t)offset error:(id *)error
{
  v11 = MKBBackupPread();
  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    handle = self->_handle;
    *buf = 134219008;
    v16 = handle;
    v17 = 2048;
    bytesCopy = bytes;
    v19 = 1024;
    countCopy = count;
    v21 = 2048;
    offsetCopy = offset;
    v23 = 2048;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "MKBBackupPread(%p, %p, %u, %llu): %ld", buf, 0x30u);
    _MBLog(@"Db", "MKBBackupPread(%p, %p, %u, %llu): %ld", self->_handle, bytes, count, offset, v11);
  }

  if (v11 < 0)
  {
    LODWORD(v11) = -1;
    if (error)
    {
      *error = [MBKeyBag errorWithReturnCode:0xFFFFFFFFLL description:@"MKBBackupPread error"];
    }
  }

  return v11;
}

- (BOOL)closeWithError:(id *)error
{
  handle = self->_handle;
  v5 = MKBBackupClose();
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v9 = handle;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "MKBBackupClose(%p): %d", buf, 0x12u);
    _MBLog(@"Db", "MKBBackupClose(%p): %d", handle, v5);
  }

  if (error && v5)
  {
    *error = [MBKeyBag errorWithReturnCode:v5 description:@"MKBBackupClose error"];
  }

  return v5 == 0;
}

+ (const)keyBagUUIDForEncryptionKey:(id)key
{
  if ([key length] < 0x10)
  {
    return 0;
  }

  return [key bytes];
}

@end
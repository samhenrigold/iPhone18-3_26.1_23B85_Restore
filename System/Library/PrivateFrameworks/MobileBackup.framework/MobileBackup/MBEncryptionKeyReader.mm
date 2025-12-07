@interface MBEncryptionKeyReader
+ (id)encryptionKeyReaderForFileAtPath:(id)path error:(id *)error;
- (BOOL)closeWithError:(id *)error;
- (BOOL)validateEncryptionKey:(id)key error:(id *)error;
- (MBEncryptionKeyReader)initWithHandle:(_mkbbackupref *)handle;
- (id)encryptionKeyWithError:(id *)error;
- (id)updatedEncryptionKeyForCurrentKey:(id)key withError:(id *)error;
- (void)dealloc;
@end

@implementation MBEncryptionKeyReader

+ (id)encryptionKeyReaderForFileAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  [pathCopy fileSystemRepresentation];
  v6 = MKBBackupOpen();
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v6 == -2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v12 = pathCopy;
      v13 = 1024;
      v14 = -2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "MKBBackupOpen(%@): %d", buf, 0x12u);
      _MBLog(@"Db", "MKBBackupOpen(%@): %d", pathCopy, 4294967294);
    }

    goto LABEL_10;
  }

  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = pathCopy;
      v13 = 1024;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MKBBackupOpen(%@): %d", buf, 0x12u);
      _MBLog(@"E ", "MKBBackupOpen(%@): %d", pathCopy, v6);
    }

LABEL_10:

    if (error)
    {
      [MBKeyBag errorWithReturnCode:v6 path:pathCopy description:@"MKBBackupOpen error"];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v12 = pathCopy;
    v13 = 1024;
    v14 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "MKBBackupOpen(%@): %d", buf, 0x12u);
    _MBLog(@"Db", "MKBBackupOpen(%@): %d", pathCopy, 0);
  }

  v9 = [[MBEncryptionKeyReader alloc] initWithHandle:0];
LABEL_13:

  return v9;
}

- (MBEncryptionKeyReader)initWithHandle:(_mkbbackupref *)handle
{
  v5.receiver = self;
  v5.super_class = MBEncryptionKeyReader;
  result = [(MBEncryptionKeyReader *)&v5 init];
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
    [(MBEncryptionKeyReader *)self closeWithError:0];
  }

  v3.receiver = self;
  v3.super_class = MBEncryptionKeyReader;
  [(MBEncryptionKeyReader *)&v3 dealloc];
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

      goto LABEL_12;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = self->_handle;
      *buf = 134218498;
      v13 = v10;
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

LABEL_12:

  return 0;
}

- (id)updatedEncryptionKeyForCurrentKey:(id)key withError:(id *)error
{
  keyCopy = key;
  if (!keyCopy)
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
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
      v16 = handle;
      v17 = 1024;
      v18 = -2;
      v19 = 2112;
      v20 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "MKBBackupUpdateKeyWithError(%p) failed: %d %@", buf, 0x1Cu);
      _MBLog(@"Db", "MKBBackupUpdateKeyWithError(%p) failed: %d %@", self->_handle, 4294967294, 0);
    }

    goto LABEL_11;
  }

  if (updated)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = self->_handle;
      *buf = 134218498;
      v16 = v13;
      v17 = 1024;
      v18 = updated;
      v19 = 2112;
      v20 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "MKBBackupUpdateKeyWithError(%p) failed: %d %@", buf, 0x1Cu);
      _MBLog(@"E ", "MKBBackupUpdateKeyWithError(%p) failed: %d %@", self->_handle, updated, 0);
    }

LABEL_11:

    if (error)
    {
      *error = [MBKeyBag errorWithReturnCode:updated description:@"MKBBackupUpdateKey error"];
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = self->_handle;
    *buf = 134218240;
    v16 = v10;
    v17 = 1024;
    v18 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "MKBBackupUpdateKeyWithError(%p) success: %d", buf, 0x12u);
    _MBLog(@"Db", "MKBBackupUpdateKeyWithError(%p) success: %d", self->_handle, 0);
  }

  v11 = keyCopy;
LABEL_14:

  return v11;
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

@end
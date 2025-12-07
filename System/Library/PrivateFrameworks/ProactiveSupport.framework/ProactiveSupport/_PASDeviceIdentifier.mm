@interface _PASDeviceIdentifier
- (NSUUID)UUID;
- (_PASDeviceIdentifier)initWithBasePath:(id)path;
- (void)reset;
@end

@implementation _PASDeviceIdentifier

- (void)reset
{
  v13 = *MEMORY[0x1E69E9840];
  if (unlink([(NSString *)self->_path UTF8String]) && *__error() != 2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    path = self->_path;
    v4 = *__error();
    v5 = __error();
    v6 = strerror(*v5);
    v7 = 138412802;
    v8 = path;
    v9 = 1024;
    v10 = v4;
    v11 = 2080;
    v12 = v6;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error unlinking %@: [%i] %s", &v7, 0x1Cu);
  }
}

- (NSUUID)UUID
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = open([(NSString *)self->_path UTF8String], 0);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = v3;
    if (read(v3, __buf, 0x10uLL) == 16)
    {
      uUID2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:__buf];
      close(v4);
      if (uUID2)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        path = self->_path;
        *buf = 138412290;
        v22 = path;
        _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Removing truncated device id file: %@", buf, 0xCu);
      }

      unlink([(NSString *)self->_path UTF8String]);
      close(v4);
    }

    goto LABEL_12;
  }

  if (*__error() == 2)
  {
LABEL_12:
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [uUID getUUIDBytes:__buf];
    v8 = open([(NSString *)self->_path UTF8String], 2561, 384);
    if (v8 < 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = self->_path;
        v14 = *__error();
        v15 = __error();
        v16 = strerror(*v15);
        *buf = 138412802;
        v22 = v13;
        v23 = 1024;
        v24 = v14;
        v25 = 2080;
        v26 = v16;
        _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error writing device identifier file %@: [%i] %s", buf, 0x1Cu);
      }

      uUID2 = 0;
    }

    else
    {
      v9 = v8;
      write(v8, __buf, 0x10uLL);
      close(v9);
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:self->_path];
      if ([v10 length] == 16)
      {
        [v10 getBytes:__buf length:16];
        v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:__buf];
      }

      else
      {
        v11 = 0;
      }

      uUID2 = v11;
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = self->_path;
    v18 = *__error();
    v19 = __error();
    v20 = strerror(*v19);
    *buf = 138412802;
    v22 = v17;
    v23 = 1024;
    v24 = v18;
    v25 = 2080;
    v26 = v20;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error opening device identifier file %@: [%i] %s", buf, 0x1Cu);
  }

  uUID2 = [MEMORY[0x1E696AFB0] UUID];
LABEL_20:

  return uUID2;
}

- (_PASDeviceIdentifier)initWithBasePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = _PASDeviceIdentifier;
  v5 = [(_PASDeviceIdentifier *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%u.uuid", pathCopy, getuid()];
    path = v5->_path;
    v5->_path = v6;
  }

  return v5;
}

@end
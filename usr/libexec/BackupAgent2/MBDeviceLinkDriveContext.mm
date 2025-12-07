@interface MBDeviceLinkDriveContext
- (MBDeviceLinkDriveContext)initWithFileHandleFactory:(id)factory;
- (id)_fileForFD:(int)d;
- (int)_addFile:(id)file;
- (int)closeWithFD:(int)d;
- (int)openWithPath:(id)path flags:(int)flags mode:(unsigned __int16)mode;
- (int)statWithFD:(int)d buf:(stat *)buf;
- (int64_t)readWithFD:(int)d bytes:(void *)bytes length:(unint64_t)length;
- (int64_t)writeWithFD:(int)d bytes:(const void *)bytes length:(unint64_t)length;
- (void)_removeFileWithFD:(int)d;
- (void)dealloc;
@end

@implementation MBDeviceLinkDriveContext

- (MBDeviceLinkDriveContext)initWithFileHandleFactory:(id)factory
{
  v6.receiver = self;
  v6.super_class = MBDeviceLinkDriveContext;
  v4 = [(MBDeviceLinkDriveContext *)&v6 init];
  if (v4)
  {
    v4->_fileHandleFactory = factory;
    v4->_fileHandlesByFD = [[NSMutableArray alloc] initWithCapacity:0];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MBDeviceLinkDriveContext;
  [(MBDeviceLinkDriveContext *)&v3 dealloc];
}

- (id)_fileForFD:(int)d
{
  if ([(NSMutableArray *)self->_fileHandlesByFD count]<= d)
  {
    return 0;
  }

  v5 = [(NSMutableArray *)self->_fileHandlesByFD objectAtIndexedSubscript:d];
  if (v5 == objc_opt_class())
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (int)_addFile:(id)file
{
  v5 = [file fd];
  while ([(NSMutableArray *)self->_fileHandlesByFD count]<= v5)
  {
    [(NSMutableArray *)self->_fileHandlesByFD addObject:+[NSNull null]];
  }

  [(NSMutableArray *)self->_fileHandlesByFD setObject:file atIndexedSubscript:v5];
  return v5;
}

- (void)_removeFileWithFD:(int)d
{
  v5 = +[NSNull null];
  fileHandlesByFD = self->_fileHandlesByFD;

  [(NSMutableArray *)fileHandlesByFD setObject:v5 atIndexedSubscript:d];
}

- (int)openWithPath:(id)path flags:(int)flags mode:(unsigned __int16)mode
{
  v13 = 0;
  v7 = [(MBFileHandleFactory *)self->_fileHandleFactory fileHandleWithPath:path flags:*&flags mode:mode error:&v13];
  if (v7)
  {
    return [(MBDeviceLinkDriveContext *)self _addFile:v7];
  }

  v9 = [MBError isError:v13 withCodes:4, 7, 9, 0];
  v10 = MBGetDefaultLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      pathCopy2 = path;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Failed to open %@: %@", buf, 0x16u);
      _MBLog(@"I ", "Failed to open %@: %@", path, v13);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    pathCopy2 = path;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to open %@: %@", buf, 0x16u);
    _MBLog(@"E ", "Failed to open %@: %@", path, v13);
  }

  v12 = [MBError errnoForError:v13];
  *__error() = v12;
  return -1;
}

- (int)statWithFD:(int)d buf:(stat *)buf
{
  v12 = 0;
  v5 = [(MBDeviceLinkDriveContext *)self _fileForFD:*&d];
  if (v5)
  {
    v6 = v5;
    if ([v5 statWithBuffer:buf error:&v12])
    {
      return 0;
    }

    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      path = [v6 path];
      *buf = 138412546;
      v14 = path;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "stat failed at %@: %@", buf, 0x16u);
      path2 = [v6 path];
      _MBLog(@"E ", "stat failed at %@: %@", path2, v12);
    }

    v11 = [MBError errnoForError:v12];
    *__error() = v11;
  }

  else
  {
    *__error() = 9;
  }

  return -1;
}

- (int64_t)readWithFD:(int)d bytes:(void *)bytes length:(unint64_t)length
{
  v18 = 0;
  v7 = [(MBDeviceLinkDriveContext *)self _fileForFD:*&d];
  if (v7)
  {
    v8 = v7;
    result = [v7 readWithBytes:bytes length:length error:&v18];
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    v10 = [MBError isError:v18 withCode:9];
    v11 = MBGetDefaultLog();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        path = [v8 path];
        *buf = 138412546;
        v20 = path;
        v21 = 2112;
        v22 = v18;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "read failed at %@: %@", buf, 0x16u);
        path2 = [v8 path];
        _MBLog(@"I ", "read failed at %@: %@", path2, v18);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      path3 = [v8 path];
      *buf = 138412546;
      v20 = path3;
      v21 = 2112;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "read failed at %@: %@", buf, 0x16u);
      path4 = [v8 path];
      _MBLog(@"E ", "read failed at %@: %@", path4, v18);
    }

    v15 = [MBError errnoForError:v18];
    *__error() = v15;
  }

  else
  {
    *__error() = 9;
  }

  return -1;
}

- (int64_t)writeWithFD:(int)d bytes:(const void *)bytes length:(unint64_t)length
{
  v14 = 0;
  v7 = [(MBDeviceLinkDriveContext *)self _fileForFD:*&d];
  if (v7)
  {
    v8 = v7;
    result = [v7 writeWithBytes:bytes length:length error:&v14];
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      path = [v8 path];
      *buf = 138412546;
      v16 = path;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "write failed at %@: %@", buf, 0x16u);
      path2 = [v8 path];
      _MBLog(@"E ", "write failed at %@: %@", path2, v14);
    }

    v13 = [MBError errnoForError:v14];
    *__error() = v13;
  }

  else
  {
    *__error() = 9;
  }

  return -1;
}

- (int)closeWithFD:(int)d
{
  v3 = *&d;
  v12 = 0;
  v5 = [(MBDeviceLinkDriveContext *)self _fileForFD:?];
  if (v5)
  {
    v6 = v5;
    if ([v5 closeWithError:&v12])
    {
      [(MBDeviceLinkDriveContext *)self _removeFileWithFD:v3];
      return 0;
    }

    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      path = [v6 path];
      *buf = 138412546;
      v14 = path;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "close failed at %@: %@", buf, 0x16u);
      path2 = [v6 path];
      _MBLog(@"E ", "close failed at %@: %@", path2, v12);
    }

    v11 = [MBError errnoForError:v12];
    *__error() = v11;
  }

  else
  {
    *__error() = 9;
  }

  return -1;
}

@end
@interface _OSLogChunkFileReference
- (BOOL)readXattrForTimespan:(id *)timespan;
- (_OSLogChunkFileReference)initWithCollection:(id)collection subpath:(const char *)subpath;
- (id)copyMappedChunkFile:(id *)file;
- (void)dealloc;
@end

@implementation _OSLogChunkFileReference

- (id)copyMappedChunkFile:(id *)file
{
  diagnosticsDirectoryReference = [(_OSLogCollectionReference *)self->_oslcr diagnosticsDirectoryReference];
  v6 = openat([diagnosticsDirectoryReference fileDescriptor], self->_path, 0);

  if (v6 == -1)
  {
    if (!file)
    {
      return 0;
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    *file = v7 = 0;
    return v7;
  }

  v7 = [[_OSLogChunkFile alloc] initWithFileDescriptor:v6 error:file];
  if (close(v6) != -1)
  {
    return v7;
  }

  v8 = *__error();
  result = *__error();
  if (v8 != 9)
  {
    _os_assumes_log();
    return v7;
  }

  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = result;
  __break(1u);
  return result;
}

- (BOOL)readXattrForTimespan:(id *)timespan
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = _index_log();
  if (os_signpost_enabled(v5))
  {
    path = self->_path;
    *buf = 136315138;
    *&buf[4] = path;
    _os_signpost_emit_with_name_impl(&dword_22E01A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Read Extended Attributes", "for %s", buf, 0xCu);
  }

  *buf = 0u;
  memset(v20, 0, sizeof(v20));
  diagnosticsDirectoryReference = [(_OSLogCollectionReference *)self->_oslcr diagnosticsDirectoryReference];
  [diagnosticsDirectoryReference fileDescriptor];
  v8 = _os_trace_getxattr_at();

  if (v8 == 40)
  {
    *&self->_xot = *&v20[8];
    v9 = _index_log();
    if (os_signpost_enabled(v9))
    {
      v15 = 67109120;
      v16 = 1;
      v10 = "success: %{BOOL}d";
      v11 = v9;
      v12 = 8;
LABEL_10:
      _os_signpost_emit_with_name_impl(&dword_22E01A000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Read Extended Attributes", v10, &v15, v12);
    }
  }

  else
  {
    if (timespan)
    {
      *timespan = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    }

    v9 = _index_log();
    if (os_signpost_enabled(v9))
    {
      v13 = *__error();
      v15 = 67109376;
      v16 = 0;
      v17 = 1024;
      v18 = v13;
      v10 = "success: %{BOOL}d %{darwin.errno}d";
      v11 = v9;
      v12 = 14;
      goto LABEL_10;
    }
  }

  return v8 == 40;
}

- (void)dealloc
{
  free(self->_path);
  v3.receiver = self;
  v3.super_class = _OSLogChunkFileReference;
  [(_OSLogChunkFileReference *)&v3 dealloc];
}

- (_OSLogChunkFileReference)initWithCollection:(id)collection subpath:(const char *)subpath
{
  collectionCopy = collection;
  v11.receiver = self;
  v11.super_class = _OSLogChunkFileReference;
  v8 = [(_OSLogChunkFileReference *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_oslcr, collection);
    v9->_path = strdup(subpath);
  }

  return v9;
}

@end
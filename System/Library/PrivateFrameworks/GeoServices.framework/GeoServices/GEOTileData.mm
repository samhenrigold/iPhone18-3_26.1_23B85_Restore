@interface GEOTileData
- (unint64_t)length;
- (void)dealloc;
@end

@implementation GEOTileData

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_unlinkWhenDone && self->_fileURL)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    fileURL = self->_fileURL;
    v11 = 0;
    v5 = [defaultManager removeItemAtURL:fileURL error:&v11];
    v6 = v11;

    if ((v5 & 1) == 0)
    {
      v7 = GEOGetTileLoadingLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = self->_fileURL;
        *buf = 138412546;
        v13 = v8;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_18660C000, v7, OS_LOG_TYPE_ERROR, "Unable to remove file at: %@ - %@", buf, 0x16u);
      }
    }
  }

  if (self->_sandboxExtension != -1)
  {
    sandbox_extension_release();
  }

  fileDescriptor = self->_fileDescriptor;
  if (fileDescriptor >= 1 && !self->_fileHandle)
  {
    close(fileDescriptor);
  }

  os_unfair_lock_unlock(&self->_lock);
  v10.receiver = self;
  v10.super_class = GEOTileData;
  [(GEOTileData *)&v10 dealloc];
}

- (unint64_t)length
{
  os_unfair_lock_lock(&self->_lock);
  _locked_length = [(GEOTileData *)self _locked_length];
  os_unfair_lock_unlock(&self->_lock);
  return _locked_length;
}

@end
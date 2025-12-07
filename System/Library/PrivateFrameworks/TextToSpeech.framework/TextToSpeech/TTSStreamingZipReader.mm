@interface TTSStreamingZipReader
- (BOOL)enumerateFiles:(id)files;
- (TTSStreamingZipReader)initWithPath:(id)path andPassword:(id)password;
@end

@implementation TTSStreamingZipReader

- (TTSStreamingZipReader)initWithPath:(id)path andPassword:(id)password
{
  pathCopy = path;
  passwordCopy = password;
  v12.receiver = self;
  v12.super_class = TTSStreamingZipReader;
  v9 = [(TTSStreamingZipReader *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zipPath, path);
    objc_storeStrong(&v10->_password, password);
  }

  return v10;
}

- (BOOL)enumerateFiles:(id)files
{
  filesCopy = files;
  v5 = archive_read_new();
  if (archive_read_support_format_zip())
  {
    v6 = AXTTSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A95784D4();
    }

    goto LABEL_12;
  }

  password = [(TTSStreamingZipReader *)self password];
  [password UTF8String];
  add_passphrase = archive_read_add_passphrase();

  if (add_passphrase)
  {
    v9 = AXTTSLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1A957854C(self);
    }

LABEL_11:

    archive_read_free();
    goto LABEL_12;
  }

  zipPath = [(TTSStreamingZipReader *)self zipPath];
  [zipPath fileSystemRepresentation];
  open_filename = archive_read_open_filename();

  if (open_filename)
  {
    v9 = AXTTSLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1A95785D8(self);
    }

    goto LABEL_11;
  }

  v18[5] = 0;
  if (archive_read_next_header())
  {
LABEL_17:
    archive_read_free();
    v12 = 1;
    goto LABEL_13;
  }

  while (1)
  {
    v14 = archive_entry_pathname();
    v15 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1A9346978;
    v18[3] = &unk_1E7880348;
    v18[4] = v5;
    v16 = _Block_copy(v18);
    if (!v14)
    {
      break;
    }

    filesCopy[2](filesCopy, v15, v16);

    if (archive_read_next_header())
    {
      goto LABEL_17;
    }
  }

  v17 = AXTTSLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_1A9578664(self);
  }

LABEL_12:
  v12 = 0;
LABEL_13:

  return v12;
}

@end
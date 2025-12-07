@interface DEArchiveReader
- (DEArchiveReader)initWithURL:(id)l;
- (id)listContainedPaths;
- (void)closeArchive;
@end

@implementation DEArchiveReader

- (DEArchiveReader)initWithURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = DEArchiveReader;
  v5 = [(DEArchiveReader *)&v11 init];
  if (v5 && (v5->_archive = archive_read_new(), archive_read_support_filter_all(), archive_read_support_format_all(), [lCopy path], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "UTF8String"), open_filename = archive_read_open_filename(), v6, open_filename))
  {
    v8 = +[DELogging fwHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(DEArchiveReader *)lCopy initWithURL:v8];
    }

    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (id)listContainedPaths
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  while (!archive_read_next_header())
  {
    v3 = [MEMORY[0x277CCACA8] stringWithCString:archive_entry_pathname() encoding:4];
    if (v3)
    {
      [v2 addObject:v3];
    }
  }

  v4 = [v2 copy];

  return v4;
}

- (void)closeArchive
{
  if (self->_archive)
  {
    archive_read_close();
    archive = self->_archive;

    MEMORY[0x2821F7080](archive);
  }
}

- (void)initWithURL:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_248AB3000, log, OS_LOG_TYPE_ERROR, "Error opening archive at path %@ %d", &v3, 0x12u);
}

@end
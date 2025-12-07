@interface WFArchiveWriter
- (BOOL)finishWithError:(id *)error;
- (BOOL)writeArchiveEntry:(id)entry error:(id *)error;
- (WFArchiveWriter)initWithDestinationURL:(id)l format:(id)format error:(id *)error;
- (void)dealloc;
@end

@implementation WFArchiveWriter

- (void)dealloc
{
  archive_write_finish();
  v3.receiver = self;
  v3.super_class = WFArchiveWriter;
  [(WFArchiveWriter *)&v3 dealloc];
}

- (BOOL)finishWithError:(id *)error
{
  v5 = archive_write_close();
  v6 = v5;
  if (error && v5)
  {
    *error = WFLastArchiveError(self->_archive);
  }

  return v6 == 0;
}

- (BOOL)writeArchiveEntry:(id)entry error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  entry = [entryCopy entry];
  archive_write_header();
  dataProvider = [entryCopy dataProvider];
  if (dataProvider)
  {
    v9 = getWFLibArchiveLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = WFPathFromArchiveEntry(entry);
      v21 = 136315394;
      v22 = "[WFArchiveWriter writeArchiveEntry:error:]";
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_21E1BD000, v9, OS_LOG_TYPE_DEFAULT, "%s Writing archive entry for %@", &v21, 0x16u);
    }

    v11 = dataProvider[2](dataProvider);
    if (v11)
    {
      v12 = archive_entry_size();
      v13 = v12;
      if (v12 >= 0x4000)
      {
        v14 = 0x4000;
      }

      else
      {
        v14 = v12;
      }

      v15 = malloc_type_malloc(v14, 0x3436D47CuLL);
      [v11 open];
      v16 = 0;
      while (v16 < v13)
      {
        v17 = [v11 read:v15 maxLength:v14];
        if (v17 < 1)
        {
          break;
        }

        v16 += v17;
        if (archive_write_data() == -1)
        {
          if (error)
          {
            *error = WFLastArchiveError(self->_archive);
          }

          free(v15);
          goto LABEL_20;
        }
      }

      free(v15);
      streamError = [v11 streamError];

      if (!streamError)
      {
        [v11 close];
        v18 = 1;
        goto LABEL_21;
      }

      if (error)
      {
        *error = [v11 streamError];
      }

      [v11 close];
    }

LABEL_20:
    v18 = 0;
LABEL_21:
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (WFArchiveWriter)initWithDestinationURL:(id)l format:(id)format error:(id *)error
{
  lCopy = l;
  formatCopy = format;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFLibArchive.m" lineNumber:208 description:{@"Invalid parameter not satisfying: %@", @"fileURL"}];
  }

  v22.receiver = self;
  v22.super_class = WFArchiveWriter;
  v11 = [(WFArchiveWriter *)&v22 init];
  if (!v11)
  {
    goto LABEL_23;
  }

  *(v11 + 1) = archive_write_new();
  v12 = formatCopy;
  if (([v12 isEqualToString:@"gz"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"tar.gz"))
  {
    v13 = archive_write_set_compression_gzip();
  }

  else if (([v12 isEqualToString:@"xz"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"tar.xz"))
  {
    v13 = archive_write_set_compression_xz();
  }

  else
  {
    if (([v12 isEqualToString:@"tar.bz2"] & 1) == 0)
    {

      goto LABEL_15;
    }

    v13 = archive_write_set_compression_bzip2();
  }

  v14 = v13;

  if (v14)
  {

    goto LABEL_21;
  }

LABEL_15:
  v15 = v12;
  if (([v15 isEqualToString:@"tar"] & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @"tar.gz") & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @"tar.bz2") & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @"tar.xz") & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @"zip") & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @"cpio") & 1) == 0)
  {
    [v15 isEqualToString:@"iso"];
  }

  v16 = archive_write_set_format();
  if (!v16)
  {
    path = [lCopy path];
    [path fileSystemRepresentation];
    v18 = archive_write_open_filename();

    if (!v18)
    {
      v19 = v11;
      goto LABEL_24;
    }
  }

LABEL_21:
  if (!error)
  {
LABEL_23:
    v19 = 0;
    goto LABEL_24;
  }

  WFLastArchiveError(*(v11 + 1));
  *error = v19 = 0;
LABEL_24:

  return v19;
}

@end
@interface WFArchiveReader
- (WFArchiveReader)initWithArchiveFile:(id)file error:(id *)error;
- (id)enumerateArchiveFilePathsWithError:(id *)error;
- (id)extractArchiveToDestinationURL:(id)l error:(id *)error;
@end

@implementation WFArchiveReader

- (id)enumerateArchiveFilePathsWithError:(id *)error
{
  v5 = objc_opt_new();
  while (1)
  {
    next_header = archive_read_next_header();
    if (next_header)
    {
      break;
    }

    v7 = WFPathFromArchiveEntry(0);
    [v5 addObject:v7];
  }

  if (next_header == 1)
  {
    v8 = v5;
  }

  else if (error)
  {
    WFLastArchiveError(self->_archive);
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)extractArchiveToDestinationURL:(id)l error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v28 = objc_opt_new();
  v26 = *MEMORY[0x277CCA050];
  v25 = *MEMORY[0x277CCA450];
  while (1)
  {
    next_header = archive_read_next_header();
    if (next_header)
    {
      break;
    }

    v7 = WFPathFromArchiveEntry(0);
    lastPathComponent = [v7 lastPathComponent];
    if (([lastPathComponent hasPrefix:@"__MACOSX"] & 1) != 0 || (objc_msgSend(lastPathComponent, "lastPathComponent"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @".DS_Store"), v9, v10))
    {
      archive_read_data_skip();
      goto LABEL_23;
    }

    v11 = getWFLibArchiveLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "[WFArchiveReader extractArchiveToDestinationURL:error:]";
      v33 = 2112;
      v34 = v7;
      _os_log_impl(&dword_21E1BD000, v11, OS_LOG_TYPE_DEFAULT, "%s Reading archive entry for %@", buf, 0x16u);
    }

    if (!v7)
    {
      v13 = 0;
LABEL_31:
      if (error)
      {
        v21 = MEMORY[0x277CCA9B8];
        v29 = v25;
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"The item couldn't be extracted because the file path %@ is invalid.", v7];
        v30 = v22;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        *error = [v21 errorWithDomain:v26 code:514 userInfo:v23];
      }

LABEL_35:
      v19 = v28;

      v20 = 0;
      goto LABEL_36;
    }

    v12 = [lCopy URLByAppendingPathComponent:v7];
    v13 = v12;
    if (!v12 || ([v12 wf_proposedFileIsContainedByDirectoryAtURL:lCopy] & 1) == 0)
    {
      goto LABEL_31;
    }

    path = [v13 path];
    [path fileSystemRepresentation];
    archive_entry_set_pathname();

    if (archive_read_extract())
    {
      if (error)
      {
        *error = WFLastArchiveError(self->_archive);
      }

      goto LABEL_35;
    }

    pathComponents = [v7 pathComponents];
    firstObject = [pathComponents firstObject];
    if ([firstObject isEqualToString:@"/"])
    {
      if ([pathComponents count] < 2)
      {

        firstObject = 0;
        goto LABEL_21;
      }

      v17 = [pathComponents objectAtIndex:1];

      firstObject = v17;
    }

    if (firstObject)
    {
      v18 = [lCopy URLByAppendingPathComponent:firstObject];
      if (v18)
      {
        if (([v28 containsObject:v18] & 1) == 0)
        {
          [v28 addObject:v18];
        }
      }

      goto LABEL_22;
    }

LABEL_21:
    v18 = 0;
LABEL_22:

LABEL_23:
  }

  if (next_header == 1)
  {
    v19 = v28;
    v20 = v28;
  }

  else
  {
    if (error)
    {
      WFLastArchiveError(self->_archive);
      *error = v20 = 0;
    }

    else
    {
      v20 = 0;
    }

    v19 = v28;
  }

LABEL_36:

  return v20;
}

- (WFArchiveReader)initWithArchiveFile:(id)file error:(id *)error
{
  fileCopy = file;
  v23.receiver = self;
  v23.super_class = WFArchiveReader;
  v7 = [(WFArchiveReader *)&v23 init];
  if (v7)
  {
    *(v7 + 1) = archive_read_new();
    archive_read_support_compression_all();
    filename = [fileCopy filename];
    pathExtension = [filename pathExtension];
    if (([pathExtension isEqualToString:@"gz"] & 1) == 0 && !objc_msgSend(pathExtension, "isEqualToString:", @"xz"))
    {
      goto LABEL_6;
    }

    stringByDeletingPathExtension = [filename stringByDeletingPathExtension];
    pathExtension2 = [stringByDeletingPathExtension pathExtension];
    if ([pathExtension2 length])
    {
      v12 = MEMORY[0x277D79F68];
      stringByDeletingPathExtension2 = [filename stringByDeletingPathExtension];
      v14 = [v12 typeFromFilename:stringByDeletingPathExtension2];
      v15 = [v14 conformsToUTType:*MEMORY[0x277CE1CF8]];

      if (v15)
      {
LABEL_6:
        archive_read_support_format_all();
        goto LABEL_10;
      }
    }

    else
    {
    }

    archive_read_support_format_raw();
LABEL_10:
    representationType = [fileCopy representationType];
    if (representationType == 1)
    {
      fileURL = [fileCopy fileURL];
      path = [fileURL path];
      [path fileSystemRepresentation];
      open_filename = archive_read_open_filename();

      if (open_filename)
      {
        if (error)
        {
          WFLastArchiveError(*(v7 + 1));
          *error = v16 = 0;
LABEL_22:

          goto LABEL_23;
        }

LABEL_19:
        v16 = 0;
        goto LABEL_22;
      }
    }

    else if (!representationType)
    {
      data = [fileCopy data];
      [data bytes];
      [data length];
      if (archive_read_open_memory())
      {
        if (error)
        {
          *error = WFLastArchiveError(*(v7 + 1));
        }

        goto LABEL_19;
      }
    }

    v16 = v7;
    goto LABEL_22;
  }

  v16 = 0;
LABEL_23:

  return v16;
}

@end
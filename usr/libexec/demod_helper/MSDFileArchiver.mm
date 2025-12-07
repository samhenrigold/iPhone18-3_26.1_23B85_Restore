@interface MSDFileArchiver
- (BOOL)compressContent:(id)content toPath:(id)path;
@end

@implementation MSDFileArchiver

- (BOOL)compressContent:(id)content toPath:(id)path
{
  contentCopy = content;
  pathCopy = path;
  path = [contentCopy path];
  fileSystemRepresentation = [contentCopy fileSystemRepresentation];
  fileSystemRepresentation2 = [pathCopy fileSystemRepresentation];
  if (!path || !fileSystemRepresentation || !fileSystemRepresentation2)
  {
    sub_10002B934(fileSystemRepresentation2);
  }

  v10 = archive_write_new();
  archive_write_set_format_zip();
  if (archive_write_open_filename())
  {
    sub_10002B72C(v10);
    v15 = 0;
    goto LABEL_37;
  }

  disk_new = archive_read_disk_new();
  archive_read_disk_set_standard_lookup();
  v38[0] = fileSystemRepresentation;
  v38[1] = 0;
  v12 = fts_open(v38, 84, 0);
  if (!v12)
  {
    sub_10002B8D8(0);
    v15 = 0;
    if (v10)
    {
      goto LABEL_31;
    }

    goto LABEL_33;
  }

  v34 = path;
  v35 = pathCopy;
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
  strlen([stringByDeletingLastPathComponent fileSystemRepresentation]);

  v14 = fts_read(v12);
  v15 = 1;
  if (!v14)
  {
    pathCopy = v35;
    if (v10)
    {
      goto LABEL_31;
    }

    goto LABEL_33;
  }

  v16 = v14;
  v33 = contentCopy;
  while (1)
  {
    fts_info = v16->fts_info;
    if (fts_info <= 0xE)
    {
      v18 = 1 << fts_info;
      if ((v18 & 0x4266) != 0)
      {
        goto LABEL_10;
      }

      if ((v18 & 0x490) != 0)
      {
        v21 = sub_100021268(v14);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10002B78C(v21, v29, v30);
        }

        v23 = 0;
LABEL_27:
        contentCopy = v33;
        path = v34;
        pathCopy = v35;
        goto LABEL_28;
      }
    }

    v19 = [NSString stringWithCString:v16->fts_accpath encoding:4, v33];
    v20 = [NSURL fileURLWithPath:v19];
    v21 = [NSFileHandle fileHandleForReadingFromURL:v20 error:0];

    if (!v21)
    {
      break;
    }

    v23 = archive_entry_new();
    archive_entry_set_pathname();
    [v21 fileDescriptor];
    disk_entry_from_file = archive_read_disk_entry_from_file();
    if (disk_entry_from_file)
    {
      v32 = sub_100021268(disk_entry_from_file);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_10002B7C8(&v36, v37);
      }

      goto LABEL_46;
    }

    v25 = archive_write_header();
    if (v25)
    {
      v32 = sub_100021268(v25);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_10002B7F8(&v36, v37);
      }

LABEL_46:
      contentCopy = v33;
      goto LABEL_47;
    }

    st_size = v16->fts_statp->st_size;
    v27 = [v21 readDataOfLength:st_size];
    if ([v27 length])
    {
      while (1)
      {
        [v27 bytes];
        [v27 length];
        if (archive_write_data() == -1)
        {
          break;
        }

        v28 = [v21 readDataOfLength:st_size];

        v27 = v28;
        if (![v28 length])
        {
          goto LABEL_21;
        }
      }

      sub_10002B828(&v36, v37, v27);
      goto LABEL_27;
    }

    v28 = v27;
LABEL_21:
    archive_entry_free();

LABEL_10:
    v14 = fts_read(v12);
    v16 = v14;
    if (!v14)
    {
      v15 = 1;
      contentCopy = v33;
      path = v34;
      pathCopy = v35;
      goto LABEL_30;
    }
  }

  v32 = sub_100021268(v22);
  contentCopy = v33;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    sub_10002B8A8(&v36, v37);
  }

  v23 = 0;
LABEL_47:
  path = v34;
  pathCopy = v35;

LABEL_28:
  v15 = 0;
  if (v23)
  {
    archive_entry_free();
  }

LABEL_30:
  if (v10)
  {
LABEL_31:
    if (archive_write_free())
    {
      v15 = 0;
    }
  }

LABEL_33:
  if (disk_new)
  {
    archive_read_free();
  }

  if (v12)
  {
    fts_close(v12);
  }

LABEL_37:

  return v15;
}

@end
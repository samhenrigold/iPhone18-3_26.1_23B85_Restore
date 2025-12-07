@interface DIDataPartition
+ (id)findPartitionSchemeWithIOMedia:(id)media error:(id *)error;
+ (id)newMountURLWithError:(id *)error;
- (BOOL)findPartitionWithDeviceBSDName:(id)name error:(id *)error;
- (BOOL)findVolumeBSDNameWithError:(id *)error;
- (BOOL)resizeFileSystemToMinimumWithError:(id *)error;
@end

@implementation DIDataPartition

+ (id)findPartitionSchemeWithIOMedia:(id)media error:(id *)error
{
  v5 = [media newIteratorWithOptions:0 error:?];
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = [[DIIOObject alloc] initWithIteratorNext:v5];

      if (!v7)
      {
        break;
      }

      v6 = v7;
      if (IOObjectConformsTo([(DIIOObject *)v7 ioObj], "IOPartitionScheme"))
      {
        goto LABEL_8;
      }
    }

    v7 = [DIError nilWithEnumValue:153 verboseInfo:@"Failed to find partition scheme" error:error];
  }

  else
  {
    v7 = 0;
  }

LABEL_8:

  return v7;
}

- (BOOL)findPartitionWithDeviceBSDName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = [[DIIOMedia alloc] initWithDevName:nameCopy error:error];
  if (v7)
  {
    v8 = [DIDataPartition findPartitionSchemeWithIOMedia:v7 error:error];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 newIteratorWithOptions:0 error:error];
      if (v10)
      {
        v26 = v9;
        v27 = v7;
        v11 = [(DIIOObject *)[DIIOMedia alloc] initWithIteratorNext:v10];
        if (v11)
        {
          v12 = v11;
          while (1)
          {
            v13 = [(DIIOObject *)v12 copyPropertyWithClass:objc_opt_class() key:@"Content"];
            if (v13)
            {
              v14 = v13;
              mediaContentUUID = [(DIDataPartition *)self mediaContentUUID];
              v16 = [v14 isEqualToString:mediaContentUUID];

              if (v16)
              {
                break;
              }
            }

            v17 = [(DIIOObject *)[DIIOMedia alloc] initWithIteratorNext:v10];

            v12 = v17;
            if (!v17)
            {
              goto LABEL_9;
            }
          }

          [(DIDataPartition *)self setIoMedia:v12];
          ioMedia = [(DIDataPartition *)self ioMedia];
          v20 = [ioMedia copyPropertyWithClass:objc_opt_class() key:@"Size"];

          ioMedia2 = [(DIDataPartition *)self ioMedia];
          v22 = [ioMedia2 copyPropertyWithClass:objc_opt_class() key:@"Preferred Block Size"];

          ioMedia3 = [(DIDataPartition *)self ioMedia];
          v24 = [ioMedia3 copyPropertyWithClass:objc_opt_class() key:@"UUID"];

          if (v20 && [v20 unsignedLongLongValue] && v22 && objc_msgSend(v22, "unsignedLongLongValue") && v24)
          {
            -[DIDataPartition setBlockSize:](self, "setBlockSize:", [v22 unsignedLongLongValue]);
            -[DIDataPartition setNumBlocks:](self, "setNumBlocks:", [v20 unsignedLongLongValue] / -[DIDataPartition blockSize](self, "blockSize"));
            [(DIDataPartition *)self setIoMediaUUID:v24];
            v18 = 1;
          }

          else
          {
            v18 = [DIError failWithEnumValue:153 verboseInfo:@"Cannot get partition size" error:error];
          }
        }

        else
        {
LABEL_9:
          v18 = [DIError failWithEnumValue:153 verboseInfo:@"Failed to find the data partition" error:error];
        }

        v9 = v26;
        v7 = v27;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)findVolumeBSDNameWithError:(id *)error
{
  ioMedia = [(DIDataPartition *)self ioMedia];
  bSDName = [ioMedia BSDName];
  [(DIDataPartition *)self setVolumeBSDName:bSDName];

  return 1;
}

+ (id)newMountURLWithError:(id *)error
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v8 = [temporaryDirectory URLByAppendingPathComponent:uUIDString];
  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [defaultManager2 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:error];

  v11 = 0;
  if (v10)
  {
    v11 = v8;
  }

  return v11;
}

- (BOOL)resizeFileSystemToMinimumWithError:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [(DIDataPartition *)self getFileSystemMinimalBlocks:?];
  if (v5)
  {
    v6 = v5;
    v7 = *__error();
    v8 = DIForwardLogs();
    if (v8)
    {
      v24 = 0;
      v10 = getDIOSLog(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      *buf = 68158466;
      v26 = 54;
      v27 = 2080;
      v28 = "[DIDataPartition resizeFileSystemToMinimumWithError:]";
      v29 = 2048;
      v30 = v6;
      v31 = 2048;
      numBlocks = [(DIDataPartition *)self numBlocks];
      LODWORD(v22) = 38;
      v12 = _os_log_send_and_compose_impl(v11, &v24, 0, 0, &dword_248DE0000, v10, 0, "%.*s: Minimum data partition size is %lld blocks (estimation was %lld blocks)", buf, v22, v23);

      if (v12)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v12);
        free(v12);
      }
    }

    else
    {
      v13 = getDIOSLog(v8, v9);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158466;
        v26 = 54;
        v27 = 2080;
        v28 = "[DIDataPartition resizeFileSystemToMinimumWithError:]";
        v29 = 2048;
        v30 = v6;
        v31 = 2048;
        numBlocks = [(DIDataPartition *)self numBlocks];
        _os_log_impl(&dword_248DE0000, v13, OS_LOG_TYPE_DEFAULT, "%.*s: Minimum data partition size is %lld blocks (estimation was %lld blocks)", buf, 0x26u);
      }
    }

    *__error() = v7;
    if (v6 <= [(DIDataPartition *)self numBlocks])
    {
      if (v6 != [(DIDataPartition *)self numBlocks])
      {
        LODWORD(v5) = [(DIDataPartition *)self resizeFileSystemWithNumBlocks:v6 error:error];
        if (!v5)
        {
          return v5;
        }

        v14 = *__error();
        v15 = DIForwardLogs();
        if (v15)
        {
          v24 = 0;
          v17 = getDIOSLog(v15, v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 3;
          }

          else
          {
            v18 = 2;
          }

          *buf = 68157954;
          v26 = 54;
          v27 = 2080;
          v28 = "[DIDataPartition resizeFileSystemToMinimumWithError:]";
          LODWORD(v22) = 18;
          v19 = _os_log_send_and_compose_impl(v18, &v24, 0, 0, &dword_248DE0000, v17, 0, "%.*s: File system resized", buf, v22);

          if (v19)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s\n", v19);
            free(v19);
          }
        }

        else
        {
          v20 = getDIOSLog(v15, v16);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68157954;
            v26 = 54;
            v27 = 2080;
            v28 = "[DIDataPartition resizeFileSystemToMinimumWithError:]";
            _os_log_impl(&dword_248DE0000, v20, OS_LOG_TYPE_DEFAULT, "%.*s: File system resized", buf, 0x12u);
          }
        }

        *__error() = v14;
        [(DIDataPartition *)self setNumBlocks:v6];
      }

      LOBYTE(v5) = 1;
      return v5;
    }

    LOBYTE(v5) = [DIError failWithEnumValue:154 verboseInfo:@"Invalid minimum data partition size" error:error];
  }

  return v5;
}

@end
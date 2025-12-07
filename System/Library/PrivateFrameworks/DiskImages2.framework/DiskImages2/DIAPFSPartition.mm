@interface DIAPFSPartition
- (BOOL)findVolumeBSDNameWithError:(id *)error;
- (BOOL)formatWithVolumeName:(id)name error:(id *)error;
- (BOOL)resizeFileSystemWithNumBlocks:(unint64_t)blocks error:(id *)error;
- (id)newMountVolumeWithDiskArb:(id)arb error:(id *)error;
- (unint64_t)getFileSystemMinimalBlocks:(id *)blocks;
@end

@implementation DIAPFSPartition

- (BOOL)findVolumeBSDNameWithError:(id *)error
{
  ioMedia = [(DIDataPartition *)self ioMedia];
  v6 = [ioMedia newIteratorWithOptions:1 error:error];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = v7;
      v7 = [(DIIOObject *)[DIIOMedia alloc] initWithIteratorNext:v6];

      if (!v7)
      {
        break;
      }

      if (IOObjectConformsTo([(DIIOObject *)v7 ioObj], "AppleAPFSVolume"))
      {
        bSDName = [(DIIOMedia *)v7 BSDName];
        [(DIDataPartition *)self setVolumeBSDName:bSDName];

        v10 = 1;
        goto LABEL_8;
      }
    }

    v10 = [DIError failWithEnumValue:153 verboseInfo:@"Cannot find the APFS volume" error:error];
  }

  else
  {
    v10 = 0;
  }

LABEL_8:

  return v10;
}

- (BOOL)formatWithVolumeName:(id)name error:(id *)error
{
  v33[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/Filesystems/apfs.fs"];
  v8 = [MEMORY[0x277CCA8D8] bundleWithURL:v7];
  v9 = v8;
  if (v8)
  {
    infoDictionary = [v8 infoDictionary];
    v11 = [infoDictionary objectForKeyedSubscript:@"FSPersonalities"];
    v12 = [v11 objectForKeyedSubscript:@"APFS"];
    v13 = [v12 objectForKeyedSubscript:@"FSFormatExecutable"];

    array = [MEMORY[0x277CBEB18] array];
    if (nameCopy)
    {
      v33[0] = @"-v";
      v33[1] = nameCopy;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
      [array addObjectsFromArray:v15];
    }

    ioMedia = [(DIDataPartition *)self ioMedia];
    bSDName = [ioMedia BSDName];
    [array addObject:bSDName];

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"/sbin/%@", v13];
    LODWORD(error) = [DIHelpers executeWithPath:v18 arguments:array error:error];

    if (error)
    {
      usleep(0x7A120u);
      v19 = *__error();
      v20 = DIForwardLogs();
      if (v20)
      {
        v28 = 0;
        v22 = getDIOSLog(v20, v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        *buf = 68157954;
        v30 = 46;
        v31 = 2080;
        v32 = "[DIAPFSPartition formatWithVolumeName:error:]";
        LODWORD(v27) = 18;
        v24 = _os_log_send_and_compose_impl(v23, &v28, 0, 0, &dword_248DE0000, v22, 0, "%.*s: APFS container and volume created", buf, v27);

        if (v24)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v24);
          free(v24);
        }
      }

      else
      {
        v25 = getDIOSLog(v20, v21);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68157954;
          v30 = 46;
          v31 = 2080;
          v32 = "[DIAPFSPartition formatWithVolumeName:error:]";
          _os_log_impl(&dword_248DE0000, v25, OS_LOG_TYPE_DEFAULT, "%.*s: APFS container and volume created", buf, 0x12u);
        }
      }

      *__error() = v19;
    }
  }

  else
  {
    LOBYTE(error) = [DIError failWithEnumValue:150 verboseInfo:@"Cannot open filesystems bundle" error:error];
  }

  return error;
}

- (id)newMountVolumeWithDiskArb:(id)arb error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  arbCopy = arb;
  v7 = [DIDataPartition newMountURLWithError:error];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = *__error();
  v9 = DIForwardLogs();
  if (v9)
  {
    v23 = 0;
    v11 = getDIOSLog(v9, v10);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT) ? 3 : 2;
    volumeBSDName = [(DIDataPartition *)self volumeBSDName];
    path = [v7 path];
    *buf = 68158466;
    v25 = 51;
    v26 = 2080;
    v27 = "[DIAPFSPartition newMountVolumeWithDiskArb:error:]";
    v28 = 2112;
    v29 = volumeBSDName;
    v30 = 2112;
    v31 = path;
    v15 = _os_log_send_and_compose_impl(v12, &v23, 0, 0, &dword_248DE0000, v11, 0, "%.*s: Mounting %@ on %@", buf, 38);

    if (v15)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v15);
      free(v15);
    }
  }

  else
  {
    v16 = getDIOSLog(v9, v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      volumeBSDName2 = [(DIDataPartition *)self volumeBSDName];
      path2 = [v7 path];
      *buf = 68158466;
      v25 = 51;
      v26 = 2080;
      v27 = "[DIAPFSPartition newMountVolumeWithDiskArb:error:]";
      v28 = 2112;
      v29 = volumeBSDName2;
      v30 = 2112;
      v31 = path2;
      _os_log_impl(&dword_248DE0000, v16, OS_LOG_TYPE_DEFAULT, "%.*s: Mounting %@ on %@", buf, 0x26u);
    }
  }

  *__error() = v8;
  volumeBSDName3 = [(DIDataPartition *)self volumeBSDName];
  v20 = [arbCopy mountWithDeviceName:volumeBSDName3 args:&unk_285C0F470 filesystem:@"apfs" mountURL:v7 error:error];

  if (v20)
  {
    path3 = [v7 path];
  }

  else
  {
LABEL_13:
    path3 = 0;
  }

  return path3;
}

- (unint64_t)getFileSystemMinimalBlocks:(id *)blocks
{
  ioMedia = [(DIDataPartition *)self ioMedia];
  bSDName = [ioMedia BSDName];
  [bSDName UTF8String];
  MinimalSize = APFSContainerGetMinimalSize();

  if (MinimalSize)
  {
    LODWORD(result) = [DIError failWithOSStatus:MinimalSize verboseInfo:@"Failed to get minimum APFS container size" error:blocks];
  }

  else
  {
    LODWORD(result) = [DIError failWithEnumValue:154 verboseInfo:@"Minimum container size must be non-zero" error:blocks];
  }

  return result;
}

- (BOOL)resizeFileSystemWithNumBlocks:(unint64_t)blocks error:(id *)error
{
  ioMedia = [(DIDataPartition *)self ioMedia];
  bSDName = [ioMedia BSDName];
  [bSDName UTF8String];
  [(DIDataPartition *)self blockSize];
  v8 = APFSContainerResize();

  if (!v8)
  {
    return 1;
  }

  return [DIError failWithOSStatus:v8 verboseInfo:@"Failed resizing the APFS container" error:error];
}

@end
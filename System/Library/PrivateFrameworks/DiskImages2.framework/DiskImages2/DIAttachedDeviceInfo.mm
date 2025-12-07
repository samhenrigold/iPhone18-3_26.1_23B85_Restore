@interface DIAttachedDeviceInfo
+ (id)DI1URLWithData:(id)data error:(id *)error;
+ (id)copyAllMountPoints;
+ (id)newDI1DevicesArrayWithError:(id *)error;
+ (id)newDI2DevicesArrayWithError:(id *)error;
+ (id)newDevicesArrayWithError:(id *)error;
+ (id)newEntityDictWithIOMedia:(id)media mountPoints:(id)points;
- (BOOL)fillDI1InfoWithDevice:(id)device error:(id *)error;
- (BOOL)fillDI2InfoWithDevice:(id)device error:(id *)error;
- (BOOL)setDI2PIDWithDevice:(id)device error:(id *)error;
- (DIAttachedDeviceInfo)initWithBSDName:(id)name error:(id *)error;
- (DIAttachedDeviceInfo)initWithDevice:(id)device error:(id *)error;
- (id)copyEntitiesList;
- (id)description;
- (id)toDictionary;
@end

@implementation DIAttachedDeviceInfo

- (DIAttachedDeviceInfo)initWithDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  v20.receiver = self;
  v20.super_class = DIAttachedDeviceInfo;
  v7 = [(DIAttachedDeviceInfo *)&v20 init];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [deviceCopy copyIOMediaWithError:error];
  ioMedia = v7->_ioMedia;
  v7->_ioMedia = v8;

  v10 = v7->_ioMedia;
  if (!v10)
  {
LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  v11 = [(DIIOObject *)v10 copyPropertyWithClass:objc_opt_class() key:@"Size"];
  mediaSize = v7->_mediaSize;
  v7->_mediaSize = v11;

  v13 = [(DIIOObject *)v7->_ioMedia copyPropertyWithClass:objc_opt_class() key:@"Preferred Block Size"];
  blockSize = v7->_blockSize;
  v7->_blockSize = v13;

  bSDName = [(DIIOMedia *)v7->_ioMedia BSDName];
  BSDName = v7->_BSDName;
  v7->_BSDName = bSDName;

  if (!v7->_mediaSize || !v7->_blockSize || !v7->_BSDName)
  {
    v17 = [DIError nilWithEnumValue:153 verboseInfo:@"Basic information about the IOMedia device is missing" error:error];
    goto LABEL_10;
  }

  if (![deviceCopy diskImageDevice])
  {
    if (!IOObjectConformsTo([deviceCopy ioObj], "IOHDIXHDDriveNub"))
    {
      v17 = [DIError nilWithEnumValue:157 description:@"Device is not a disk image" error:error];
      goto LABEL_10;
    }

    if ([(DIAttachedDeviceInfo *)v7 fillDI1InfoWithDevice:deviceCopy error:error])
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if (![(DIAttachedDeviceInfo *)v7 fillDI2InfoWithDevice:deviceCopy error:error])
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v7;
LABEL_10:
  v18 = v17;
LABEL_14:

  return v18;
}

- (BOOL)fillDI2InfoWithDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  v7 = [deviceCopy copyPropertyWithClass:objc_opt_class() key:@"DiskImageURL"];
  v8 = v7;
  if (v7)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v7];
  }

  imageURL = self->_imageURL;
  self->_imageURL = v7;

  if (self->_imageURL)
  {
    v10 = [deviceCopy copyPropertyWithClass:objc_opt_class() key:@"ShadowURL"];
    v11 = v10;
    if (v10)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v10];
    }

    shadowURL = self->_shadowURL;
    self->_shadowURL = v10;

    v13 = [deviceCopy copyPropertyWithClass:objc_opt_class() key:@"CacheURL"];
    v14 = v13;
    if (v13)
    {
      v13 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v13];
    }

    cacheURL = self->_cacheURL;
    self->_cacheURL = v13;

    v16 = [deviceCopy copyPropertyWithClass:objc_opt_class() key:@"InstanceID"];
    instanceId = self->_instanceId;
    self->_instanceId = v16;

    self->_frameworkNum = 2;
    v18 = [(DIAttachedDeviceInfo *)self setDI2PIDWithDevice:deviceCopy error:error]|| [DIError failWithEnumValue:153 verboseInfo:@"Failed to get Daemon PID" error:error];
  }

  else
  {
    v18 = [DIError failWithEnumValue:153 verboseInfo:@"Invalid or missing image URL key" error:error];
  }

  return v18;
}

- (BOOL)setDI2PIDWithDevice:(id)device error:(id *)error
{
  v18 = -1;
  v5 = [device newIteratorWithOptions:0 error:error];
  v6 = [[DIIOObject alloc] initWithIteratorNext:v5];
  if (v6)
  {
    v7 = v6;
    while (1)
    {
      if (IOObjectConformsTo([(DIIOObject *)v7 ioObj], "DIDeviceIOUserClient"))
      {
        v8 = [(DIIOObject *)v7 copyPropertyWithClass:objc_opt_class() key:@"IOUserClientCreator"];
        if (v8)
        {
          break;
        }
      }

      v9 = [[DIIOObject alloc] initWithIteratorNext:v5];

      v7 = v9;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v11 = v8;
    v12 = [MEMORY[0x277CCAC80] scannerWithString:v8];
    decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v14 = [v12 scanUpToCharactersFromSet:decimalDigitCharacterSet intoString:0];

    if (v14 && [v12 scanInteger:&v18])
    {
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
      pid = self->_pid;
      self->_pid = v15;

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

  return v10;
}

+ (id)DI1URLWithData:(id)data error:(id *)error
{
  v5 = MEMORY[0x277CCACA8];
  dataCopy = data;
  v7 = [[v5 alloc] initWithData:dataCopy encoding:4];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v7];
    v9 = v8;
    if (v8)
    {
      scheme = [v8 scheme];

      if (scheme)
      {
        goto LABEL_8;
      }
    }

    v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v7];

    v9 = v11;
    if (v11)
    {
      goto LABEL_8;
    }

    v12 = @"Invalid path property (not a path or URL)";
  }

  else
  {
    v12 = @"Invalid path property (not UTF8)";
  }

  v9 = [DIError nilWithEnumValue:153 verboseInfo:v12 error:error];
LABEL_8:

  return v9;
}

- (BOOL)fillDI1InfoWithDevice:(id)device error:(id *)error
{
  v6 = [device copyParentWithError:error];
  if (v6)
  {
    v7 = [v6 copyPropertyWithClass:objc_opt_class() key:@"image-path"];
    if (v7)
    {
      v8 = [DIAttachedDeviceInfo DI1URLWithData:v7 error:error];
      imageURL = self->_imageURL;
      self->_imageURL = v8;

      if (self->_imageURL)
      {
        v10 = [v6 copyPropertyWithClass:objc_opt_class() key:@"shadow-path"];
        if (v10 && ([DIAttachedDeviceInfo DI1URLWithData:v10 error:error], v11 = objc_claimAutoreleasedReturnValue(), shadowURL = self->_shadowURL, self->_shadowURL = v11, shadowURL, !self->_shadowURL))
        {
          v13 = 0;
        }

        else
        {
          v13 = 1;
          self->_frameworkNum = 1;
          v14 = [v6 copyPropertyWithClass:objc_opt_class() key:@"hdid-pid"];
          pid = self->_pid;
          self->_pid = v14;

          if (!self->_pid)
          {
            self->_pid = &unk_285C0F428;

            v13 = 1;
          }
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = [DIError failWithEnumValue:153 verboseInfo:@"Missing image path property" error:error];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (DIAttachedDeviceInfo)initWithBSDName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = [[DIIOMedia alloc] initWithDevName:nameCopy error:error];

  if (v7)
  {
    v8 = [(DIIOMedia *)v7 copyBlockDeviceWithError:error];
    if (v8)
    {
      self = [(DIAttachedDeviceInfo *)self initWithDevice:v8 error:error];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)newDI1DevicesArrayWithError:(id *)error
{
  array = [MEMORY[0x277CBEB18] array];
  v5 = [[DIIOObject alloc] initWithClassName:@"IOHDIXController" error:0];
  v6 = v5;
  if (v5)
  {
    v7 = [(DIIOObject *)v5 newIteratorWithOptions:0 error:error];
    if (v7)
    {
      v8 = [[DIIOObject alloc] initWithIteratorNext:v7];
      if (v8)
      {
        v9 = v8;
        do
        {
          if ([v7 startedOver])
          {
            [array removeAllObjects];
            [v7 setStartedOver:0];
          }

          v10 = [(DIIOObject *)v9 ioObjectWithClassName:@"IOHDIXHDDriveNub" iterateParent:0 error:error];
          if (v10)
          {
            v11 = [(DIIOObject *)[DIBlockDevice alloc] initWithDIIOObject:v10];
            v12 = [[DIAttachedDeviceInfo alloc] initWithDevice:v11 error:0];
            if (v12)
            {
              [array addObject:v12];
            }
          }

          v13 = [[DIIOObject alloc] initWithIteratorNext:v7];
          v9 = v13;
        }

        while (v13);
      }

      v14 = array;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = array;
  }

  return v14;
}

+ (id)newDI2DevicesArrayWithError:(id *)error
{
  array = [MEMORY[0x277CBEB18] array];
  v5 = [DIIOObject copyDiskImagesControllerWithError:error];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 newIteratorWithOptions:0 error:error];
    if (v7)
    {
      v8 = [(DIIOObject *)[DIBlockDevice alloc] initWithIteratorNext:v7];
      if (v8)
      {
        v9 = v8;
        do
        {
          if ([v7 startedOver])
          {
            [array removeAllObjects];
            [v7 setStartedOver:0];
          }

          if ([(DIBlockDevice *)v9 diskImageDevice])
          {
            v10 = [[DIAttachedDeviceInfo alloc] initWithDevice:v9 error:0];
            if (v10)
            {
              [array addObject:v10];
            }
          }

          v11 = [(DIIOObject *)[DIBlockDevice alloc] initWithIteratorNext:v7];

          v9 = v11;
        }

        while (v11);
      }

      v12 = array;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)newDevicesArrayWithError:(id *)error
{
  v5 = [self newDI2DevicesArrayWithError:?];
  if (v5)
  {
    v6 = [self newDI1DevicesArrayWithError:error];
    if (v6)
    {
      v7 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
      [v7 addObjectsFromArray:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  bSDName = [(DIAttachedDeviceInfo *)self BSDName];
  imageURL = [(DIAttachedDeviceInfo *)self imageURL];
  v6 = [v3 stringWithFormat:@"Attached disk image device info: BSD Name [%@], image URL [%@]", bSDName, imageURL];

  return v6;
}

+ (id)copyAllMountPoints
{
  v25 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0;
  v3 = getmntinfo_r_np(&v20, 2);
  if (v3)
  {
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = 2168 * v3;
      do
      {
        v6 = [DIHelpers copyDevicePathWithStatfs:&v20[v4 / 0x878]];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v20[v4 / 0x878].f_mntonname];
        if (v6)
        {
          if ([v6 hasPrefix:@"/dev/disk"])
          {
            v8 = v7 == 0;
          }

          else
          {
            v8 = 1;
          }

          if (!v8)
          {
            lastPathComponent = [v6 lastPathComponent];
            [dictionary setObject:v7 forKeyedSubscript:lastPathComponent];
          }
        }

        v4 += 2168;
      }

      while (v5 != v4);
    }

    free(v20);
  }

  else
  {
    v10 = *__error();
    v11 = DIForwardLogs();
    if (v11)
    {
      v19 = 0;
      v13 = getDIOSLog(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      *buf = 68157954;
      v22 = 42;
      v23 = 2080;
      v24 = "+[DIAttachedDeviceInfo copyAllMountPoints]";
      LODWORD(v18) = 18;
      v15 = _os_log_send_and_compose_impl(v14, &v19, 0, 0, &dword_248DE0000, v13, 16, "%.*s: Failed getting mounts list", buf, v18);

      if (v15)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v15);
        free(v15);
      }
    }

    else
    {
      v16 = getDIOSLog(v11, v12);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v22 = 42;
        v23 = 2080;
        v24 = "+[DIAttachedDeviceInfo copyAllMountPoints]";
        _os_log_impl(&dword_248DE0000, v16, OS_LOG_TYPE_ERROR, "%.*s: Failed getting mounts list", buf, 0x12u);
      }
    }

    *__error() = v10;
  }

  return dictionary;
}

+ (id)newEntityDictWithIOMedia:(id)media mountPoints:(id)points
{
  v16[1] = *MEMORY[0x277D85DE8];
  mediaCopy = media;
  pointsCopy = points;
  bSDName = [mediaCopy BSDName];
  v8 = bSDName;
  if (bSDName)
  {
    v9 = MEMORY[0x277CBEB38];
    v15 = @"BSD Name";
    v16[0] = bSDName;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v11 = [v9 dictionaryWithDictionary:v10];

    v12 = [pointsCopy objectForKeyedSubscript:v8];
    [v11 setObject:v12 forKeyedSubscript:@"Mount Point"];

    v13 = [mediaCopy copyPropertyWithClass:objc_opt_class() key:@"Content"];
    [v11 setObject:v13 forKeyedSubscript:@"Content"];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyEntitiesList
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = +[DIAttachedDeviceInfo copyAllMountPoints];
  ioMedia = [(DIAttachedDeviceInfo *)self ioMedia];
  v6 = [DIAttachedDeviceInfo newEntityDictWithIOMedia:ioMedia mountPoints:v4];

  if (v6)
  {
    [array addObject:v6];
  }

  ioMedia2 = [(DIAttachedDeviceInfo *)self ioMedia];
  v8 = [ioMedia2 newIteratorWithOptions:1 error:0];

  if (v8)
  {
    v9 = [(DIIOObject *)[DIIOMedia alloc] initWithIteratorNext:v8];
    if (v9)
    {
      v10 = v9;
      do
      {
        if ([v8 startedOver])
        {
          [array removeAllObjects];
          [v8 setStartedOver:0];
        }

        if (IOObjectConformsTo([(DIIOObject *)v10 ioObj], "IOMedia"))
        {
          v11 = [DIAttachedDeviceInfo newEntityDictWithIOMedia:v10 mountPoints:v4];
          if (v11)
          {
            [array addObject:v11];
          }
        }

        v12 = [(DIIOObject *)[DIIOMedia alloc] initWithIteratorNext:v8];

        v10 = v12;
      }

      while (v12);
    }
  }

  return array;
}

- (id)toDictionary
{
  v24[7] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v23[0] = @"BSD Name";
  bSDName = [(DIAttachedDeviceInfo *)self BSDName];
  v24[0] = bSDName;
  v23[1] = @"DiskImages Framework";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DIAttachedDeviceInfo frameworkNum](self, "frameworkNum")}];
  v24[1] = v4;
  v23[2] = @"DiskImageURL";
  imageURL = [(DIAttachedDeviceInfo *)self imageURL];
  v6 = [imageURL description];
  v24[2] = v6;
  v23[3] = @"Size";
  mediaSize = [(DIAttachedDeviceInfo *)self mediaSize];
  v24[3] = mediaSize;
  v23[4] = @"Preferred Block Size";
  blockSize = [(DIAttachedDeviceInfo *)self blockSize];
  v24[4] = blockSize;
  v23[5] = @"System Entities";
  copyEntitiesList = [(DIAttachedDeviceInfo *)self copyEntitiesList];
  v24[5] = copyEntitiesList;
  v23[6] = @"Daemon PID";
  v10 = [(DIAttachedDeviceInfo *)self pid];
  v24[6] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:7];
  v12 = [v3 dictionaryWithDictionary:v11];

  shadowURL = [(DIAttachedDeviceInfo *)self shadowURL];

  if (shadowURL)
  {
    shadowURL2 = [(DIAttachedDeviceInfo *)self shadowURL];
    v15 = [shadowURL2 description];
    [v12 setObject:v15 forKeyedSubscript:@"ShadowURL"];
  }

  cacheURL = [(DIAttachedDeviceInfo *)self cacheURL];

  if (cacheURL)
  {
    cacheURL2 = [(DIAttachedDeviceInfo *)self cacheURL];
    v18 = [cacheURL2 description];
    [v12 setObject:v18 forKeyedSubscript:@"CacheURL"];
  }

  instanceId = [(DIAttachedDeviceInfo *)self instanceId];

  if (instanceId)
  {
    instanceId2 = [(DIAttachedDeviceInfo *)self instanceId];
    [v12 setObject:instanceId2 forKeyedSubscript:@"InstanceID"];
  }

  return v12;
}

@end
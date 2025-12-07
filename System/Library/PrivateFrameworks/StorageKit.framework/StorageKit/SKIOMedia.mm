@interface SKIOMedia
- (NSString)BSDName;
- (SKIOMedia)initWithDADisk:(id)disk;
- (SKIOMedia)initWithDevName:(id)name;
- (id)copyBlockDevice;
@end

@implementation SKIOMedia

- (SKIOMedia)initWithDevName:(id)name
{
  v15 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = *MEMORY[0x277CD2898];
  lastPathComponent = [nameCopy lastPathComponent];
  v7 = IOBSDNameMatching(v5, 0, [lastPathComponent UTF8String]);
  MatchingService = IOServiceGetMatchingService(v5, v7);

  if (MatchingService)
  {
    v12.receiver = self;
    v12.super_class = SKIOMedia;
    self = [(SKIOObject *)&v12 initWithIOObject:MatchingService];
    selfCopy = self;
  }

  else
  {
    v10 = SKGetOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = nameCopy;
      _os_log_impl(&dword_26BBB8000, v10, OS_LOG_TYPE_ERROR, "Failed to find IO media entry for %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (SKIOMedia)initWithDADisk:(id)disk
{
  v13 = *MEMORY[0x277D85DE8];
  diskCopy = disk;
  v5 = diskCopy;
  if (!diskCopy)
  {
LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  v6 = DADiskCopyIOMedia(diskCopy);
  if (!v6)
  {
    v8 = SKGetOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_26BBB8000, v8, OS_LOG_TYPE_DEFAULT, "Failed to get IO media object for DA disk %@", buf, 0xCu);
    }

    goto LABEL_7;
  }

  v10.receiver = self;
  v10.super_class = SKIOMedia;
  self = [(SKIOObject *)&v10 initWithIOObject:v6];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (NSString)BSDName
{
  v2 = [(SKIOObject *)self copyPropertyWithClass:objc_opt_class() key:@"BSD Name"];

  return v2;
}

- (id)copyBlockDevice
{
  v2 = [(SKIOObject *)self ioObjectWithClassName:@"IOBlockStorageDevice" iterateParents:1];
  v3 = [(SKIOObject *)[SKBlockDevice alloc] initWithSKIOObject:v2];

  return v3;
}

@end
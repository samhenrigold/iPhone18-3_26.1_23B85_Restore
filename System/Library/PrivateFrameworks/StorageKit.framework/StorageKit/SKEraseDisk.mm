@interface SKEraseDisk
+ (id)eraseDiskWithRootDisk:(id)disk descriptors:(id)descriptors error:(id *)error;
+ (id)eraseDiskWithRootDisk:(id)disk error:(id *)error;
- (NSString)description;
- (SKEraseDisk)initWithCoder:(id)coder;
- (SKEraseDisk)initWithRootDisk:(id)disk descriptors:(id)descriptors error:(id *)error;
- (id)eraseProgressReportingWithCompletionBlock:(id)block;
- (id)formattableFilesystems;
- (id)validateWithError:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)eraseWithCompletionBlock:(id)block;
@end

@implementation SKEraseDisk

- (SKEraseDisk)initWithRootDisk:(id)disk descriptors:(id)descriptors error:(id *)error
{
  v27[1] = *MEMORY[0x277D85DE8];
  diskCopy = disk;
  descriptorsCopy = descriptors;
  v26.receiver = self;
  v26.super_class = SKEraseDisk;
  v11 = [(SKEraseDisk *)&v26 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_disk, disk);
    if (!descriptorsCopy)
    {
      formattableFilesystems = [(SKEraseDisk *)v12 formattableFilesystems];
      firstObject = [formattableFilesystems firstObject];

      majorType = [firstObject majorType];
      v16 = [majorType isEqualToString:@"msdos"];

      if (v16)
      {
        v17 = @"NO NAME";
      }

      else
      {
        v17 = @"Untitled";
      }

      v18 = [SKVolumeDescriptor descriptorWithName:v17 filesystem:firstObject];
      v19 = [SKPartitionDescriptor descriptorWithVolume:v18];
      v27[0] = v19;
      descriptorsCopy = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    }

    objc_storeStrong(&v12->_descriptors, descriptorsCopy);
    minimalDictionaryRepresentation = [diskCopy minimalDictionaryRepresentation];
    diskRepresentation = v12->_diskRepresentation;
    v12->_diskRepresentation = minimalDictionaryRepresentation;

    v22 = [SKProgress progressWithTotalUnitCount:100];
    progress = v12->_progress;
    v12->_progress = v22;
  }

  v24 = [(SKEraseDisk *)v12 validateWithError:error];

  return v24;
}

+ (id)eraseDiskWithRootDisk:(id)disk descriptors:(id)descriptors error:(id *)error
{
  descriptorsCopy = descriptors;
  diskCopy = disk;
  v9 = [objc_alloc(objc_opt_class()) initWithRootDisk:diskCopy descriptors:descriptorsCopy error:error];

  return v9;
}

+ (id)eraseDiskWithRootDisk:(id)disk error:(id *)error
{
  diskCopy = disk;
  v6 = [objc_alloc(objc_opt_class()) initWithRootDisk:diskCopy descriptors:0 error:error];

  return v6;
}

- (void)eraseWithCompletionBlock:(id)block
{
  v3 = [(SKEraseDisk *)self eraseProgressReportingWithCompletionBlock:block];
}

- (id)eraseProgressReportingWithCompletionBlock:(id)block
{
  v18[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = [SKProgress progressWithTotalUnitCount:100];
  [v5 setCancellable:0];
  v17 = @"kSKDiskMountOptionForce";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKEraseDisk forceUnmount](self, "forceUnmount")}];
  v18[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  disk = [(SKEraseDisk *)self disk];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__SKEraseDisk_eraseProgressReportingWithCompletionBlock___block_invoke;
  v14[3] = &unk_279D1F998;
  v16 = blockCopy;
  v14[4] = self;
  v9 = v5;
  v15 = v9;
  v10 = blockCopy;
  [disk unmountWithOptions:v7 completionBlock:v14];

  v11 = v15;
  v12 = v9;

  return v9;
}

void __57__SKEraseDisk_eraseProgressReportingWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = +[SKHelperClient sharedClient];
    v5 = [v4 eraseWithEraser:*(a1 + 32) completionBlock:*(a1 + 48)];

    [*(a1 + 40) setCompletedUnitCount:10];
    [*(a1 + 40) chainChildProgress:v5 withPendingUnitCount:90];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  disk = [(SKEraseDisk *)self disk];
  descriptors = [(SKEraseDisk *)self descriptors];
  v8 = [v3 stringWithFormat:@"<%@: { disk: %@, descriptors: %@}>", v5, disk, descriptors];

  return v8;
}

- (id)formattableFilesystems
{
  disk = [(SKEraseDisk *)self disk];
  formattableFilesystems = [disk formattableFilesystems];

  return formattableFilesystems;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  diskRepresentation = [(SKEraseDisk *)self diskRepresentation];
  [coderCopy encodeObject:diskRepresentation forKey:@"diskRepresentation"];

  descriptors = [(SKEraseDisk *)self descriptors];
  [coderCopy encodeObject:descriptors forKey:@"descriptors"];
}

- (SKEraseDisk)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = SKEraseDisk;
  v5 = [(SKEraseDisk *)&v29 init];
  if (v5)
  {
    v28 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v28 setWithObjects:{v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"diskRepresentation"];
    diskRepresentation = v5->_diskRepresentation;
    v5->_diskRepresentation = v15;

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"descriptors"];
    descriptors = v5->_descriptors;
    v5->_descriptors = v20;

    v22 = +[SKBaseManager sharedManager];
    v23 = [v22 knownDiskForDictionary:v5->_diskRepresentation];
    disk = v5->_disk;
    v5->_disk = v23;

    v25 = [SKProgress progressWithTotalUnitCount:100];
    progress = v5->_progress;
    v5->_progress = v25;
  }

  return v5;
}

- (id)validateWithError:(id *)error
{
  v63 = *MEMORY[0x277D85DE8];
  disk = [(SKEraseDisk *)self disk];

  if (!disk)
  {
    v19 = SKGetOSLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      disk2 = [(SKEraseDisk *)self disk];
      *v61 = 136315394;
      *&v61[4] = "[SKEraseDisk validateWithError:]";
      *&v61[12] = 2112;
      *&v61[14] = disk2;
      _os_log_impl(&dword_26BBB8000, v19, OS_LOG_TYPE_ERROR, "%s: Disk %@ not valid for erase", v61, 0x16u);
    }

    v21 = [SKError nilWithPOSIXCode:22 error:error];
    goto LABEL_18;
  }

  disk3 = [(SKEraseDisk *)self disk];
  canPartitionDisk = [disk3 canPartitionDisk];

  if ((canPartitionDisk & 1) == 0)
  {
    v22 = SKGetOSLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      disk4 = [(SKEraseDisk *)self disk];
      *v61 = 136315394;
      *&v61[4] = "[SKEraseDisk validateWithError:]";
      *&v61[12] = 2112;
      *&v61[14] = disk4;
      _os_log_impl(&dword_26BBB8000, v22, OS_LOG_TYPE_ERROR, "%s: Disk %@ not valid for erase, should be whole disk not APFSContainer", v61, 0x16u);
    }

    v21 = [SKError nilWithPOSIXCode:45 error:error];
    goto LABEL_18;
  }

  descriptors = [(SKEraseDisk *)self descriptors];
  if (!descriptors || (-[SKEraseDisk descriptors](self, "descriptors"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, descriptors, !v10))
  {
    v24 = SKGetOSLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v61 = 136315138;
      *&v61[4] = "[SKEraseDisk validateWithError:]";
      _os_log_impl(&dword_26BBB8000, v24, OS_LOG_TYPE_ERROR, "%s: Missing partition descriptors for erase disk", v61, 0xCu);
    }

    v21 = [SKError nilWithPOSIXCode:22 error:error];
LABEL_18:
    v25 = v21;
    goto LABEL_19;
  }

  *v61 = 0;
  *&v61[8] = v61;
  *&v61[16] = 0x2020000000;
  v62 = 0;
  descriptors2 = [(SKEraseDisk *)self descriptors];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __33__SKEraseDisk_validateWithError___block_invoke;
  v53[3] = &unk_279D1FA60;
  v53[4] = v61;
  [descriptors2 enumerateObjectsUsingBlock:v53];

  v12 = *(*&v61[8] + 24);
  disk5 = [(SKEraseDisk *)self disk];
  LOBYTE(v12) = v12 > [disk5 unformattedSize];

  if (v12)
  {
    v14 = SKGetOSLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(*&v61[8] + 24);
      disk6 = [(SKEraseDisk *)self disk];
      unformattedSize = [disk6 unformattedSize];
      *buf = 136315650;
      v56 = "[SKEraseDisk validateWithError:]";
      v57 = 2048;
      v58 = v15;
      v59 = 2048;
      v60 = unformattedSize;
      _os_log_impl(&dword_26BBB8000, v14, OS_LOG_TYPE_ERROR, "%s: New size %lu exceeds %llu", buf, 0x20u);
    }

    selfCopy = [SKError nilWithPOSIXCode:28 error:error];
    goto LABEL_39;
  }

  for (i = 0; ; ++i)
  {
    descriptors3 = [(SKEraseDisk *)self descriptors];
    v29 = [descriptors3 count] - 1 > i;

    if (!v29)
    {
      break;
    }

    descriptors4 = [(SKEraseDisk *)self descriptors];
    v31 = [descriptors4 objectAtIndexedSubscript:i];
    v32 = [v31 size] == 0;

    if (v32)
    {
      v43 = SKGetOSLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v56 = "[SKEraseDisk validateWithError:]";
        v57 = 1024;
        LODWORD(v58) = i;
        _os_log_impl(&dword_26BBB8000, v43, OS_LOG_TYPE_ERROR, "%s: Non last descriptor %d zero size", buf, 0x12u);
      }

      selfCopy = [SKError nilWithPOSIXCode:22 error:error];
      goto LABEL_39;
    }
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  descriptors5 = [(SKEraseDisk *)self descriptors];
  v34 = [descriptors5 countByEnumeratingWithState:&v49 objects:v54 count:16];
  obj = descriptors5;
  if (!v34)
  {
    goto LABEL_35;
  }

  v35 = *v50;
  while (2)
  {
    for (j = 0; j != v34; ++j)
    {
      if (*v50 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v37 = *(*(&v49 + 1) + 8 * j);
      disk7 = [(SKEraseDisk *)self disk];
      filesystem = [v37 filesystem];
      v40 = [disk7 formattableFilesystemWithFilesystem:filesystem];

      if (!v40)
      {
        v44 = SKGetOSLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          filesystem2 = [v37 filesystem];
          formattableFilesystems = [(SKEraseDisk *)self formattableFilesystems];
          *buf = 136315650;
          v56 = "[SKEraseDisk validateWithError:]";
          v57 = 2112;
          v58 = filesystem2;
          v59 = 2112;
          v60 = formattableFilesystems;
          _os_log_impl(&dword_26BBB8000, v44, OS_LOG_TYPE_ERROR, "%s: FS to format %@ not found in supported filesystems %@", buf, 0x20u);
        }

        v47 = 45;
        goto LABEL_45;
      }

      innerDescriptor = [v37 innerDescriptor];
      [innerDescriptor setFilesystem:v40];

      innerDescriptor2 = [v37 innerDescriptor];
      LODWORD(innerDescriptor) = [innerDescriptor2 validateForErase];

      if (!innerDescriptor)
      {
        v47 = 22;
LABEL_45:
        v25 = [SKError nilWithPOSIXCode:v47 error:error];

        goto LABEL_40;
      }
    }

    v34 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v34)
    {
      continue;
    }

    break;
  }

LABEL_35:

  selfCopy = self;
LABEL_39:
  v25 = selfCopy;
LABEL_40:
  _Block_object_dispose(v61, 8);
LABEL_19:

  return v25;
}

uint64_t __33__SKEraseDisk_validateWithError___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 size];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

@end
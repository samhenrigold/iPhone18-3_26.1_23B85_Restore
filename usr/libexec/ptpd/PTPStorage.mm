@interface PTPStorage
- (PTPStorage)initWithParent:(id)parent andOptionalID:(unsigned int)d forSessionID:(unsigned int)iD;
- (id)addAssets:(id)assets createdObjects:(id)objects;
- (id)cameraFileWithObjectID:(unint64_t)d;
- (id)cameraFolderWithObjectID:(unint64_t)d;
- (id)createDedupedAssetDirectoryWithBaseName:(id)name;
- (id)deleteAssets:(id)assets;
- (id)dequeueGroup;
- (id)directoryForAsset:(id)asset;
- (id)directoryWithBaseName:(id)name andDedupCount:(unsigned int)count;
- (id)parent;
- (id)virtualDirectoryName:(id)name;
- (timespec)virtualDirectoryDate:(id)date;
- (unint64_t)appendObjectData:(id)data forObjectFormatCode:(unsigned __int16)code inAssociation:(unsigned int)association withContentType:(unsigned int)type;
- (unsigned)addGroup:(id)group;
- (void)addCameraFileToIndex:(id)index;
- (void)addCameraFolderToIndex:(id)index;
- (void)addContent;
- (void)customUpdateToStoreInfoDataset;
- (void)dealloc;
- (void)removeCameraFileFromIndex:(unint64_t)index;
- (void)removeCameraFolderFromIndex:(unint64_t)index;
- (void)startGroupNotifications;
@end

@implementation PTPStorage

- (id)createDedupedAssetDirectoryWithBaseName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v5 = *&self->_assetGroupIndex;
    if (!v5)
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = *&self->_assetGroupIndex;
      *&self->_assetGroupIndex = v6;

      v8 = +[NSCalendar currentCalendar];
      v9 = +[NSDate date];
      v10 = [v8 components:28 fromDate:v9];

      if (v10)
      {
        self->_currentMonth = [v10 year];
        *(&self->super._objectHandle + 1) = [v10 month];
      }

      v5 = *&self->_assetGroupIndex;
    }

    v11 = [v5 objectForKeyedSubscript:nameCopy];
    intValue = [v11 intValue];

    v13 = [NSNumber numberWithUnsignedInt:intValue + 1];
    [*&self->_assetGroupIndex setObject:v13 forKeyedSubscript:nameCopy];

    v14 = [(PTPStorage *)self directoryWithBaseName:nameCopy andDedupCount:intValue + 1];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)directoryWithBaseName:(id)name andDedupCount:(unsigned int)count
{
  nameCopy = name;
  if (count)
  {
    if (count > 702)
    {
      countCopy = 1;
    }

    else
    {
      countCopy = count;
    }

    if (countCopy < 1)
    {
      v9 = &stru_100038B48;
    }

    else
    {
      v7 = &stru_100038B48;
      do
      {
        v8 = countCopy - 1;
        countCopy = (countCopy - 1) / 0x1Au;
        v9 = [NSString stringWithFormat:@"%@%c", v7, v8 % 0x1A + 97];

        v7 = v9;
      }

      while ((v8 - v8 % 0x1A) > 25);
    }

    if ([(__CFString *)v9 length]== 1)
    {
      v10 = [NSString stringWithFormat:@"_%@", v9];

      v9 = v10;
    }
  }

  else
  {
    v9 = @"__";
  }

  v11 = [nameCopy stringByReplacingCharactersInRange:6 withString:{2, v9}];

  return v11;
}

- (id)directoryForAsset:(id)asset
{
  assetCopy = asset;
  dcimFolder = [(PTPStorage *)self dcimFolder];
  if (qword_1000403B8 == 1 && [assetCopy conversionGroup] == 1)
  {
    conversionGroup = 0;
  }

  else
  {
    conversionGroup = [assetCopy conversionGroup];
  }

  filename = [assetCopy filename];
  v8 = [NSString stringWithFormat:@"%@.%d", filename, conversionGroup];

  captureDateString = [assetCopy captureDateString];
  v10 = [(PTPStorage *)self virtualDirectoryName:captureDateString];

  v11 = [*&self->_assetGroupIndex objectForKeyedSubscript:v10];
  if ([v11 intValue] < 1)
  {
LABEL_10:
    v15 = 0;
  }

  else
  {
    LODWORD(v12) = 0;
    while (1)
    {
      v12 = (v12 + 1);
      v13 = [(PTPStorage *)self directoryWithBaseName:v10 andDedupCount:v12];
      v14 = [dcimFolder folderMatchingName:v13];
      v15 = v14;
      if (v14)
      {
        if (([v14 fileExists:v8] & 1) == 0)
        {
          break;
        }
      }

      if (v12 >= [v11 intValue])
      {
        goto LABEL_10;
      }
    }
  }

  return v15;
}

- (id)virtualDirectoryName:(id)name
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  nameCopy = name;
  uTF8String = [name UTF8String];
  if (!uTF8String || (v7 = uTF8String, strlen(uTF8String) < 0xF) || (sscanf(v7, "%04d%02d%02dT%02d%02d%02d", &v14 + 4, &v14, &v13 + 4, &v13, &v12 + 4, &v12), currentMonth = HIDWORD(v14), !HIDWORD(v14)) || (v9 = v14, !v14))
  {
    v9 = *(&self->super._objectHandle + 1);
    currentMonth = self->_currentMonth;
    LODWORD(v14) = *(&self->super._objectHandle + 1);
    HIDWORD(v14) = currentMonth;
  }

  v10 = [NSString stringWithFormat:@"%04d%02d__", currentMonth, v9];

  return v10;
}

- (timespec)virtualDirectoryDate:(id)date
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v16 = 0;
  dateCopy = date;
  uTF8String = [date UTF8String];
  if (!uTF8String || (v7 = uTF8String, strlen(uTF8String) < 0xF) || (sscanf(v7, "%04d%02d%02dT%02d%02d%02d", &v19 + 4, &v19, &v18 + 4, &v18, &v17, &v16), !HIDWORD(v19)) || !v19)
  {
    currentMonth = self->_currentMonth;
    LODWORD(v19) = *(&self->super._objectHandle + 1);
    HIDWORD(v19) = currentMonth;
  }

  v9 = +[NSCalendar currentCalendar];
  v10 = objc_alloc_init(NSDateComponents);
  [v10 setYear:SHIDWORD(v19)];
  [v10 setMonth:v19];
  v11 = [v9 dateFromComponents:v10];
  [v11 timeIntervalSince1970];
  v13 = v12;

  v14 = v13;
  v15 = 0;
  result.tv_nsec = v15;
  result.tv_sec = v14;
  return result;
}

- (PTPStorage)initWithParent:(id)parent andOptionalID:(unsigned int)d forSessionID:(unsigned int)iD
{
  v5 = *&iD;
  v6 = *&d;
  parentCopy = parent;
  v9 = v6;
  if (!v6)
  {
    v9 = sub_1000041F4();
  }

  v44.receiver = self;
  v44.super_class = PTPStorage;
  v10 = [(PTPStorage *)&v44 init];
  v11 = v10;
  v12 = &CopyArrayOfUnsignedShortsFromBufferMaxSize_ptr;
  if (v10)
  {
    memset(&v45, 0, 512);
    [(PTPStorage *)v10 setParent:parentCopy];
    hostMediaSupportedFormats = [parentCopy hostMediaSupportedFormats];
    [(PTPStorage *)v11 setSupportedFormats:hostMediaSupportedFormats];

    v42 = parentCopy;
    path = [parentCopy path];
    v15 = [path stringByAppendingPathComponent:@"DCIM"];
    statfs([v15 fileSystemRepresentation], &v45);

    v16 = v5;
    v17 = v45.f_blocks * v45.f_bsize;
    v18 = v45.f_bavail * v45.f_bsize;
    v19 = [[ICOrderedMediaSet alloc] initWithTypes:&off_10003BF48];
    v20 = *(&v11->_dcimFolder + 4);
    *(&v11->_dcimFolder + 4) = v19;

    v11->_sessionID = v9;
    v21 = objc_alloc_init(PTPStorageInfoDataset);
    v22 = *(&v11->_duplicateAssetIdentifiers + 4);
    *(&v11->_duplicateAssetIdentifiers + 4) = v21;

    v23 = sub_10000C470([(PTPItem *)v11 setObjectHandle:v9]);
    [*(&v11->_duplicateAssetIdentifiers + 4) setAccessCapability:{objc_msgSend(v23, "cplStorageState") != 0}];
    [*(&v11->_duplicateAssetIdentifiers + 4) setStorageType:3];
    [*(&v11->_duplicateAssetIdentifiers + 4) setFilesystemType:3];
    v24 = v17;
    v5 = v16;
    [*(&v11->_duplicateAssetIdentifiers + 4) setMaxCapacity:v24];
    [*(&v11->_duplicateAssetIdentifiers + 4) setFreeSpaceInBytes:v18];
    v12 = &CopyArrayOfUnsignedShortsFromBufferMaxSize_ptr;
    [*(&v11->_duplicateAssetIdentifiers + 4) setFreeSpaceInImages:v18 / 0x258];
    [*(&v11->_duplicateAssetIdentifiers + 4) setStorageDescription:@"Internal Storage"];
    [*(&v11->_duplicateAssetIdentifiers + 4) setVolumeLabel:@"Internal Storage"];
    *&v11->_enumerated = v16;
    v25 = objc_alloc_init(NSMutableArray);
    v26 = *(&v11->_parent + 4);
    *(&v11->_parent + 4) = v25;

    v27 = [NSString stringWithFormat:@"%x-GroupNotificationQueue", v11->_sessionID];
    v28 = dispatch_queue_create([v27 UTF8String], 0);
    v29 = *(&v11->_groupNotificationTimer + 4);
    *(&v11->_groupNotificationTimer + 4) = v28;

    if (!v6)
    {
      v30 = +[NSDate date];
      v43[1] = 0;
      [v30 timeIntervalSince1970];
      v43[0] = v31;
      v32 = [[PTPFolder alloc] initWithName:@"DCIM" captureTimeSpec:v43 parent:v11 storage:v11];
      v33 = *(&v11->_storageInfoDataset + 4);
      *(&v11->_storageInfoDataset + 4) = v32;

      [(PTPStorage *)v11 addCameraFolderToIndex:*(&v11->_storageInfoDataset + 4)];
    }

    [(PTPStorage *)v11 setEnumerated:0];
    [(PTPStorage *)v11 customUpdateToStoreInfoDataset];

    parentCopy = v42;
  }

  __ICOSLogCreate();
  v34 = &stru_100038B48;
  if ([&stru_100038B48 length] >= 0x15)
  {
    v35 = [&stru_100038B48 substringWithRange:{0, 18}];
    v34 = [v35 stringByAppendingString:@".."];
  }

  v36 = [v12[204] stringWithFormat:@"Created Storage - PTPStorageID: 0x%x SessionID:0x%x", v9, v5];
  v37 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v38 = v34;
    v39 = v37;
    uTF8String = [(__CFString *)v34 UTF8String];
    v45.f_bsize = 136446466;
    *&v45.f_iosize = uTF8String;
    WORD2(v45.f_blocks) = 2114;
    *(&v45.f_blocks + 6) = v36;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v45, 0x16u);
  }

  return v11;
}

- (void)customUpdateToStoreInfoDataset
{
  v3 = MGCopyAnswer();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:kMGQDiskUsageAmountDataAvailable];
    longLongValue = [v5 longLongValue];

    __ICOSLogCreate();
    v7 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v8 = [&stru_100038B48 substringWithRange:{0, 18}];
      v7 = [v8 stringByAppendingString:@".."];
    }

    v9 = [NSString stringWithFormat:@"Available Storage: %.2f GB", vcvtd_n_f64_u64(longLongValue, 0x1EuLL)];
    v10 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v7;
      v12 = v10;
      *buf = 136446466;
      uTF8String = [(__CFString *)v7 UTF8String];
      v24 = 2114;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [*(&self->_duplicateAssetIdentifiers + 4) setFreeSpaceInBytes:longLongValue];
    [*(&self->_duplicateAssetIdentifiers + 4) setFreeSpaceInImages:longLongValue / 0x16E360];
    v13 = [v4 objectForKey:kMGQDiskUsageTotalDiskCapacity];
    longLongValue2 = [v13 longLongValue];

    __ICOSLogCreate();
    v15 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v16 = [&stru_100038B48 substringWithRange:{0, 18}];
      v15 = [v16 stringByAppendingString:@".."];
    }

    v17 = [NSString stringWithFormat:@"Storage  Capacity: %.2f GB", vcvtd_n_f64_u64(longLongValue2, 0x1EuLL)];
    v18 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v15;
      v20 = v18;
      uTF8String2 = [(__CFString *)v15 UTF8String];
      *buf = 136446466;
      uTF8String = uTF8String2;
      v24 = 2114;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [*(&self->_duplicateAssetIdentifiers + 4) setMaxCapacity:longLongValue2];
  }
}

- (void)addContent
{
  dcimFolder = [(PTPStorage *)self dcimFolder];
  v4 = dcimFolder;
  if (dcimFolder)
  {
    v5 = sub_10000C470(dcimFolder);
    storageID = [(PTPStorage *)self storageID];
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v21 = 0;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v19[3] = 0;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v18[3] = 0;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v17[3] = 0;
    __ICOSLogCreate();
    if ([&stru_100038B48 length] < 0x15)
    {
      v8 = &stru_100038B48;
    }

    else
    {
      v7 = [&stru_100038B48 substringWithRange:{0, 18}];
      v8 = [v7 stringByAppendingString:@".."];
    }

    v9 = [NSString stringWithFormat:@"[PTPFolder addContent] PTPStorageID: 0x%x \n", storageID];
    v10 = _gICOSLog;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v8;
      uTF8String = [(__CFString *)v8 UTF8String];
      *buf = 136446466;
      *&buf[4] = uTF8String;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    dispatch_async(&_dispatch_main_q, &stru_100038930);
    info = 0;
    mach_timebase_info(&info);
    _gPTPBenchmarkStartMachTime = 0;
    _gPTPBenchmarkStartMachTime = mach_absolute_time();
    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v23 = sub_100016D34;
      v24 = sub_100016D44;
      selfCopy = self;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100016D4C;
      v15[3] = &unk_100038980;
      v15[4] = selfCopy;
      v15[5] = buf;
      v15[6] = v20;
      v15[7] = v19;
      v15[8] = v18;
      v15[9] = v17;
      [v5 ptpEnumerateAllAssetsUsingBlock:v15];
      _Block_object_dispose(buf, 8);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100016F50;
    block[3] = &unk_1000389A8;
    block[6] = v19;
    block[7] = v18;
    block[8] = v17;
    block[9] = info;
    v14 = storageID;
    block[4] = self;
    block[5] = v20;
    dispatch_async(&_dispatch_main_q, block);

    _Block_object_dispose(v17, 8);
    _Block_object_dispose(v18, 8);
    _Block_object_dispose(v19, 8);
    _Block_object_dispose(v20, 8);
  }
}

- (id)addAssets:(id)assets createdObjects:(id)objects
{
  assetsCopy = assets;
  objectsCopy = objects;
  dcimFolder = [(PTPStorage *)self dcimFolder];
  v9 = +[NSMutableArray array];
  v10 = +[NSMutableDictionary dictionary];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if (objectsCopy)
  {
    v11 = +[NSMutableArray array];
    if (!dcimFolder)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 0;
    if (!dcimFolder)
    {
      goto LABEL_8;
    }
  }

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_100016D34;
  v27[4] = sub_100016D44;
  v28 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001799C;
  v18[3] = &unk_1000389D0;
  v22 = v27;
  v18[4] = self;
  v19 = dcimFolder;
  v26 = objectsCopy != 0;
  v12 = v11;
  v20 = v12;
  v23 = &v29;
  v24 = &v37;
  v13 = v9;
  v21 = v13;
  v25 = &v33;
  [assetsCopy enumerateObjectsUsingBlock:v18];
  [(PTPStorage *)self addGroup:v13];
  if (objectsCopy)
  {
    [objectsCopy setObject:v13 forKey:@"addedFiles"];
    [objectsCopy setObject:v12 forKey:@"addedFolders"];
  }

  v14 = [NSNumber numberWithUnsignedLongLong:v38[3]];
  [v10 setObject:v14 forKey:@"prunedCount"];

  v15 = [NSNumber numberWithUnsignedLongLong:v34[3]];
  [v10 setObject:v15 forKey:@"assetCount"];

  v16 = [NSNumber numberWithUnsignedLongLong:v30[3]];
  [v10 setObject:v16 forKey:@"folderCount"];

  _Block_object_dispose(v27, 8);
LABEL_8:
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  return v10;
}

- (id)deleteAssets:(id)assets
{
  assetsCopy = assets;
  dcimFolder = [(PTPStorage *)self dcimFolder];
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = objc_alloc_init(NSMutableArray);
  v8 = objc_alloc_init(NSMutableArray);
  if (dcimFolder)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100017DD8;
    v10[3] = &unk_1000389F8;
    v11 = dcimFolder;
    v12 = v7;
    [assetsCopy enumerateObjectsUsingBlock:v10];
  }

  if (v7)
  {
    [v6 setObject:v7 forKey:@"removedFiles"];
  }

  if (v8)
  {
    [v6 setObject:v8 forKey:@"removedFolders"];
  }

  return v6;
}

- (void)dealloc
{
  objc_storeWeak((&self->_indexedMediaSet + 4), 0);
  v3 = *(&self->_duplicateAssetIdentifiers + 4);
  *(&self->_duplicateAssetIdentifiers + 4) = 0;

  v4 = *&self->_assetGroupIndex;
  *&self->_assetGroupIndex = 0;

  v5 = *(&self->_assetGroups + 4);
  *(&self->_assetGroups + 4) = 0;

  v6 = *(&self->_parent + 4);
  *(&self->_parent + 4) = 0;

  self->_storageID = 0;
  v7.receiver = self;
  v7.super_class = PTPStorage;
  [(PTPStorage *)&v7 dealloc];
}

- (void)addCameraFileToIndex:(id)index
{
  indexCopy = index;
  indexedMediaSet = [(PTPStorage *)self indexedMediaSet];
  [indexedMediaSet addMediaItemToIndex:indexCopy];
}

- (void)addCameraFolderToIndex:(id)index
{
  indexCopy = index;
  indexedMediaSet = [(PTPStorage *)self indexedMediaSet];
  [indexedMediaSet addMediaItemToIndex:indexCopy];

  objectHandle = [indexCopy objectHandle];
  v7 = [NSNumber numberWithUnsignedInt:objectHandle];
  v9 = v7;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [(PTPStorage *)self addGroup:v8];
}

- (id)cameraFileWithObjectID:(unint64_t)d
{
  indexedMediaSet = [(PTPStorage *)self indexedMediaSet];
  v5 = [indexedMediaSet mediaItemWithHandle:d inTypes:&off_10003BF60];

  return v5;
}

- (id)cameraFolderWithObjectID:(unint64_t)d
{
  indexedMediaSet = [(PTPStorage *)self indexedMediaSet];
  v5 = [indexedMediaSet mediaItemWithHandle:d inTypes:&off_10003BF78];

  return v5;
}

- (void)removeCameraFileFromIndex:(unint64_t)index
{
  indexedMediaSet = [(PTPStorage *)self indexedMediaSet];
  [indexedMediaSet removeMediaItemWithHandleFromIndex:index];
}

- (void)removeCameraFolderFromIndex:(unint64_t)index
{
  indexedMediaSet = [(PTPStorage *)self indexedMediaSet];
  [indexedMediaSet removeMediaItemWithHandleFromIndex:index];
}

- (unint64_t)appendObjectData:(id)data forObjectFormatCode:(unsigned __int16)code inAssociation:(unsigned int)association withContentType:(unsigned int)type
{
  v6 = *&type;
  v7 = *&association;
  codeCopy = code;
  dataCopy = data;
  v11 = 0;
  v15 = 0;
  if (codeCopy)
  {
LABEL_5:
    if (v7 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ((v7 + 1) < 2 || [*(&self->_storageInfoDataset + 4) objectHandle] == v7)
  {
    objectInfoDataset = [*(&self->_storageInfoDataset + 4) objectInfoDataset];
    v13 = [objectInfoDataset content:v6];

    [dataCopy appendData:v13];
    v11 = 1;
    v15 = 1;

    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:
  v11 += [*(&self->_storageInfoDataset + 4) appendObjectData:dataCopy forObjectFormatCode:codeCopy inAssociation:v7 withContentType:v6];
  v15 = v11;
LABEL_7:
  if (v6 == 3)
  {
    [dataCopy replaceBytesInRange:0 withBytes:{8, &v15}];
    v11 = v15;
  }

  return v11;
}

- (unsigned)addGroup:(id)group
{
  if (group)
  {
    [*(&self->_parent + 4) addObject:?];
  }

  [(PTPStorage *)self startGroupNotifications];
  return [*(&self->_parent + 4) count];
}

- (id)dequeueGroup
{
  v3 = +[NSMutableArray array];
  v4 = [*(&self->_parent + 4) count];
  if (v4 > self->_storageID)
  {
    v5 = v4;
    do
    {
      v6 = [*(&self->_parent + 4) objectAtIndex:?];
      if (v6)
      {
        [v3 addObjectsFromArray:v6];
      }

      v7 = [v3 count];

      if (v7 > 0x2710)
      {
        break;
      }

      v8 = self->_storageID + 1;
      self->_storageID = v8;
    }

    while (v5 > v8);
  }

  return v3;
}

- (void)startGroupNotifications
{
  groupNotificationTimerQueue = [(PTPStorage *)self groupNotificationTimerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018480;
  block[3] = &unk_100038770;
  block[4] = self;
  dispatch_async(groupNotificationTimerQueue, block);
}

- (id)parent
{
  WeakRetained = objc_loadWeakRetained((&self->_indexedMediaSet + 4));

  return WeakRetained;
}

@end
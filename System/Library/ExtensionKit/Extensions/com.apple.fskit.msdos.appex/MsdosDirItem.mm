@interface MsdosDirItem
- (id)createDotEntriesWithAttrs:(id)attrs;
- (id)generateUniqueShortName:(char *)name offsetInDir:(unint64_t)dir;
- (id)getAttributes:(id)attributes;
- (id)initInVolume:(id)volume inDir:(id)dir startingAt:(unsigned int)at withData:(id)data andName:(id)name isRoot:(BOOL)root;
- (id)markDirEntriesAsDeleted:(id)deleted;
- (id)updateDotDirEntryTimes:(id)times;
- (id)updateModificationTimeOnCreateRemove;
- (id)verifyCookieOffset:(unsigned int)offset;
- (id)writeDirEntriesToDisk:(id)disk atOffset:(unint64_t)offset name:(unistr255 *)name numberOfEntries:(unsigned int)entries;
- (id)writeDirEntryDataToDisk:(id)disk;
- (unint64_t)getDirBlockSize;
- (unint64_t)getDirSize;
- (unint64_t)getFileID;
- (unsigned)getGenerationNumberOfName:(unistr255 *)name;
- (void)createEntrySetForName:(unistr255 *)name itemType:(int64_t)type firstCluster:(unsigned int)cluster attrs:(id)attrs offsetInDir:(unint64_t)dir hidden:(BOOL)hidden replyHandler:(id)handler;
- (void)isShortNameUniqueInDir:(char *)dir replyHandler:(id)handler;
- (void)iterateFromOffset:(unint64_t)offset options:(unsigned int)options replyHandler:(id)handler;
@end

@implementation MsdosDirItem

- (id)initInVolume:(id)volume inDir:(id)dir startingAt:(unsigned int)at withData:(id)data andName:(id)name isRoot:(BOOL)root
{
  rootCopy = root;
  v11 = *&at;
  volumeCopy = volume;
  v21.receiver = self;
  v21.super_class = MsdosDirItem;
  v15 = [(DirItem *)&v21 initInVolume:volumeCopy inDir:dir startingAt:v11 withData:data andName:name isRoot:rootCopy];
  if (v15)
  {
    if (!v11)
    {
      systemInfo = [volumeCopy systemInfo];
      if ([systemInfo type])
      {
        systemInfo2 = [volumeCopy systemInfo];
        type = [systemInfo2 type];

        if (type != 1)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }

      [v15 setNumberOfClusters:1];
    }

LABEL_8:
    [v15 setMaxShortNameIndex:0];
    v19 = v15;
  }

  return v15;
}

- (unint64_t)getDirBlockSize
{
  isFat1216RootDir = [(DirItem *)self isFat1216RootDir];
  volume = [(FATItem *)self volume];
  systemInfo = [volume systemInfo];
  v6 = systemInfo;
  if (isFat1216RootDir)
  {
    rootDirSize = [systemInfo rootDirSize];
    volume2 = [(FATItem *)self volume];
    systemInfo2 = [volume2 systemInfo];
    dirBlockSize = [systemInfo2 bytesPerSector] * rootDirSize;
  }

  else
  {
    dirBlockSize = [systemInfo dirBlockSize];
  }

  return dirBlockSize;
}

- (unint64_t)getDirSize
{
  if ([(DirItem *)self isFat1216RootDir])
  {
    volume = [(FATItem *)self volume];
    systemInfo = [volume systemInfo];
    rootDirSize = [systemInfo rootDirSize];
    volume2 = [(FATItem *)self volume];
    systemInfo2 = [volume2 systemInfo];
    v8 = [systemInfo2 bytesPerSector] * rootDirSize;
  }

  else
  {
    numberOfClusters = [(FATItem *)self numberOfClusters];
    volume = [(FATItem *)self volume];
    systemInfo = [volume systemInfo];
    v8 = [systemInfo bytesPerCluster] * numberOfClusters;
  }

  return v8;
}

- (id)createDotEntriesWithAttrs:(id)attrs
{
  attrsCopy = attrs;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100023984;
  v23 = sub_100023994;
  v24 = 0;
  v5 = [[FSFileName alloc] initWithCString:"."];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002399C;
  v18[3] = &unk_100051350;
  v18[4] = &v19;
  [(DirItem *)self createNewDirEntryNamed:v5 type:2 attributes:attrsCopy firstDataCluster:[(FATItem *)self firstCluster] replyHandler:v18];

  if (v20[5])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100032B18();
    }

    v6 = v20[5];
  }

  else
  {
    volume = [(FATItem *)self volume];
    getAttrRequestForNewDirEntry = [volume getAttrRequestForNewDirEntry];

    parentDir = [(FATItem *)self parentDir];
    v10 = [parentDir getAttributes:getAttrRequestForNewDirEntry];

    parentDir2 = [(FATItem *)self parentDir];
    v12 = [(FATItem *)DirItem dynamicCast:parentDir2];
    if ([v12 isRoot])
    {
      firstCluster = 0;
    }

    else
    {
      parentDir3 = [(FATItem *)self parentDir];
      firstCluster = [parentDir3 firstCluster];
    }

    v15 = [[FSFileName alloc] initWithCString:".."];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000239FC;
    v17[3] = &unk_100051350;
    v17[4] = &v19;
    [(DirItem *)self createNewDirEntryNamed:v15 type:2 attributes:v10 firstDataCluster:firstCluster replyHandler:v17];

    if (v20[5])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100032B9C();
      }

      v6 = v20[5];
    }

    else
    {
      v6 = 0;
    }
  }

  _Block_object_dispose(&v19, 8);

  return v6;
}

- (id)updateModificationTimeOnCreateRemove
{
  volume = [(FATItem *)self volume];
  systemInfo = [volume systemInfo];
  bytesPerSector = [systemInfo bytesPerSector];

  v6 = [[DirBlock alloc] initInDir:self];
  v19[0] = 0;
  v19[1] = 0;
  v18.tv_sec = 0;
  v18.tv_nsec = 0;
  CONV_GetCurrentTime(&v18);
  v7 = [v6 readRelativeDirBlockNum:0];
  if (v7)
  {
    v8 = v7;
    [v6 releaseBlock];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100032C20();
    }

    v9 = v8;
  }

  else
  {
    v10 = [MsdosDirEntryData alloc];
    v11 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v6 getBytesAtOffset:0], 32);
    v12 = [(MsdosDirEntryData *)v10 initWithData:v11];

    if (-[DirItem isRoot](self, "isRoot") && ((-[MsdosDirEntryData getAttrFlags](v12, "getAttrFlags") & 0x3F) == 0xF || (-[MsdosDirEntryData getAttrFlags](v12, "getAttrFlags") & 8) == 0) || (-[MsdosDirEntryData getModifyTime:](v12, "getModifyTime:", v19), v19[0] == v18.tv_sec) || (-[MsdosDirEntryData setModifyTime:](v12, "setModifyTime:", &v18), -[DirEntryData data](v12, "data"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v6 setBytes:v13 atOffset:0], v13, objc_msgSend(v6, "writeToDiskFromOffset:length:", 0, bytesPerSector), (v15 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      [v6 releaseBlock];
      v9 = 0;
    }

    else
    {
      v16 = v15;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100032CA4();
      }

      [v6 releaseBlock];
      v9 = v16;
    }
  }

  return v9;
}

- (id)updateDotDirEntryTimes:(id)times
{
  timesCopy = times;
  v5 = [[DirBlock alloc] initInDir:self];
  v6 = [v5 readRelativeDirBlockNum:{0, 0, 0}];
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100032D28();
    }

    [v5 releaseBlock];
    v8 = v7;
  }

  else
  {
    v9 = [MsdosDirEntryData alloc];
    v10 = +[NSMutableData dataWithBytes:length:](NSMutableData, "dataWithBytes:length:", [v5 getBytesAtOffset:0], 32);
    v11 = [(MsdosDirEntryData *)v9 initWithData:v10];

    if ([timesCopy isValid:2048])
    {
      modifyTime = [timesCopy modifyTime];
      v20 = v12;
      [(MsdosDirEntryData *)v11 setModifyTime:&modifyTime];
    }

    if ([timesCopy isValid:4096])
    {
      modifyTime = [timesCopy changeTime];
      v20 = v13;
      [(MsdosDirEntryData *)v11 setChangeTime:&modifyTime];
    }

    if ([timesCopy isValid:0x2000])
    {
      modifyTime = [timesCopy birthTime];
      v20 = v14;
      [(MsdosDirEntryData *)v11 setBirthTime:&modifyTime];
    }

    data = [(DirEntryData *)v11 data];
    v16 = [v5 setBytes:data atOffset:0];

    writeToDisk = [v5 writeToDisk];
    [v5 releaseBlock];
    if (writeToDisk && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100032DAC();
    }

    v8 = writeToDisk;
  }

  return v8;
}

- (void)iterateFromOffset:(unint64_t)offset options:(unsigned int)options replyHandler:(id)handler
{
  handlerCopy = handler;
  if ([(MsdosDirItem *)self getDirSize]<= offset)
  {
    v16 = fs_errorForPOSIXError();
    (*(handlerCopy + 2))(handlerCopy, v16, 4, 0, 0, 0);
  }

  else
  {
    v8 = [[DirBlock alloc] initInDir:self];
    volume = [(FATItem *)self volume];
    systemInfo = [volume systemInfo];
    bytesPerCluster = [systemInfo bytesPerCluster];

    getDirBlockSize = [(MsdosDirItem *)self getDirBlockSize];
    v72[0] = 0;
    v72[1] = v72;
    v72[2] = 0x2020000000;
    v72[3] = 0;
    v71[0] = 0;
    v71[1] = v71;
    v71[2] = 0x2020000000;
    v71[3] = offset;
    v69[0] = 0;
    v69[1] = v69;
    v69[2] = 0x3032000000;
    v69[3] = sub_100023984;
    v69[4] = sub_100023994;
    v70 = objc_alloc_init(MsdosLongNameContext);
    v67[0] = 0;
    v67[1] = v67;
    v67[2] = 0x3032000000;
    v67[3] = sub_100023984;
    v67[4] = sub_100023994;
    v68 = objc_alloc_init(MsdosDirEntryData);
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x22010000000;
    v34[3] = &unk_10004CC8D;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v33 = 0;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    isFat1216RootDir = [(DirItem *)self isFat1216RootDir];
    volume2 = [(FATItem *)self volume];
    fatManager = [volume2 fatManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100024280;
    v17[3] = &unk_100051378;
    v20 = v30;
    v21 = v72;
    v19 = handlerCopy;
    v17[4] = self;
    v28 = bytesPerCluster;
    v29 = getDirBlockSize;
    v27 = offset / bytesPerCluster;
    v22 = v71;
    v15 = v8;
    v18 = v15;
    v23 = v69;
    v24 = v32;
    v25 = v67;
    v26 = v34;
    [fatManager iterateClusterChainOfItem:self replyHandler:v17];

    [v15 releaseBlock];
    _Block_object_dispose(v30, 8);
    _Block_object_dispose(v32, 8);
    _Block_object_dispose(v34, 8);
    _Block_object_dispose(v67, 8);

    _Block_object_dispose(v69, 8);
    _Block_object_dispose(v71, 8);
    _Block_object_dispose(v72, 8);
  }
}

- (id)generateUniqueShortName:(char *)name offsetInDir:(unint64_t)dir
{
  v6 = (dir >> 5) % 0xF4240;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100023984;
  v17 = sub_100023994;
  v18 = 0;
  v7 = v6 + 1000000;
  while (1)
  {
    if (msdosfs_apply_generation_to_short_name(name, v6 % 0xF4240))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100032EB8();
      }

      goto LABEL_11;
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100024C44;
    v12[3] = &unk_1000513A0;
    v12[4] = &v13;
    v12[5] = &v19;
    [(MsdosDirItem *)self isShortNameUniqueInDir:name replyHandler:v12];
    v8 = v14[5];
    if (v8)
    {
      goto LABEL_15;
    }

    if (v20[3])
    {
      break;
    }

    v6 = (v6 + 1);
    if (v6 >= v7)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100032F3C();
      }

LABEL_11:
      v9 = fs_errorForPOSIXError();
      goto LABEL_16;
    }
  }

  if (v6 > [(MsdosDirItem *)self maxShortNameIndex])
  {
    [(MsdosDirItem *)self setMaxShortNameIndex:v6];
  }

  v8 = v14[5];
LABEL_15:
  v9 = v8;
LABEL_16:
  v10 = v9;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v10;
}

- (void)createEntrySetForName:(unistr255 *)name itemType:(int64_t)type firstCluster:(unsigned int)cluster attrs:(id)attrs offsetInDir:(unint64_t)dir hidden:(BOOL)hidden replyHandler:(id)handler
{
  hiddenCopy = hidden;
  v11 = *&cluster;
  attrsCopy = attrs;
  handlerCopy = handler;
  v17 = objc_alloc_init(MsdosDirEntryData);
  v35 = 0;
  memset(v36, 32, 11);
  if (msdosfs_unicode_to_dos_name(name->var1, name->var0, v36, &v35) == 3)
  {
    maxShortNameIndex = [(MsdosDirItem *)self maxShortNameIndex];
    if (maxShortNameIndex - 1 > 0xF423E)
    {
      v19 = [(MsdosDirItem *)self generateUniqueShortName:v36 offsetInDir:dir];

      if (v19)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100033044();
        }

        goto LABEL_10;
      }
    }

    else
    {
      if (msdosfs_apply_generation_to_short_name(v36, maxShortNameIndex))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000330C8();
        }

LABEL_10:
        v20 = fs_errorForPOSIXError();
        handlerCopy[2](handlerCopy, v20, 0);

        goto LABEL_31;
      }

      [(MsdosDirItem *)self setMaxShortNameIndex:[(MsdosDirItem *)self maxShortNameIndex]+ 1];
    }
  }

  [(MsdosDirEntryData *)v17 setLowerCaseFlags:v35];
  [(MsdosDirEntryData *)v17 setName:v36];
  volume = [(FATItem *)self volume];
  systemInfo = [volume systemInfo];
  [(MsdosDirEntryData *)v17 setFirstCluster:v11 fileSystemInfo:systemInfo];

  if (hiddenCopy)
  {
    v23 = 2;
  }

  else
  {
    v23 = 0;
  }

  if (type == 3)
  {
    v25 = v23 | 0x20u;
    v24 = 1067;
  }

  else if (type == 2)
  {
    v24 = 0;
    v25 = v23 | 0x10u;
  }

  else
  {
    v25 = v23 | 0x20u;
    if ([attrsCopy isValid:64])
    {
      v24 = [attrsCopy size];
    }

    else
    {
      v24 = 0;
    }
  }

  [(MsdosDirEntryData *)v17 setSize:v24];
  [(MsdosDirEntryData *)v17 setAttrFlags:v25];
  birthTime = 0;
  v34 = 0;
  v32.tv_sec = 0;
  v32.tv_nsec = 0;
  v26 = &v32;
  CONV_GetCurrentTime(&v32);
  if ([attrsCopy isValid:0x2000])
  {
    birthTime = [attrsCopy birthTime];
    v34 = v27;
    v26 = &birthTime;
  }

  [(MsdosDirEntryData *)v17 setBirthTime:v26];
  if ([attrsCopy isValid:2048])
  {
    birthTime = [attrsCopy modifyTime];
    v34 = v28;
    v29 = &birthTime;
  }

  else
  {
    v29 = &v32;
  }

  [(MsdosDirEntryData *)v17 setModifyTime:v29];
  if ([attrsCopy isValid:1024])
  {
    birthTime = [attrsCopy accessTime];
    v34 = v30;
    v31 = &birthTime;
  }

  else
  {
    v31 = &v32;
  }

  [(MsdosDirEntryData *)v17 setAccessTime:v31];
  (handlerCopy)[2](handlerCopy, 0, v17);
LABEL_31:
}

- (id)writeDirEntriesToDisk:(id)disk atOffset:(unint64_t)offset name:(unistr255 *)name numberOfEntries:(unsigned int)entries
{
  v6 = *&entries;
  diskCopy = disk;
  var0 = name->var0;
  if ((var0 - 1) > 1 || name->var1[0] != 46 || var0 != 1 && name->var1[1] != 46)
  {
    CONV_ConvertToFSM(name);
  }

  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  CONV_GetCurrentTime(&__tp);
  [diskCopy setModifyTime:&__tp];
  v12 = msdosfs_winChksum([diskCopy getName]);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100023984;
  v28 = sub_100023994;
  v29 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100025204;
  v16[3] = &unk_1000513C8;
  v18 = &v24;
  v19 = v22;
  v20 = v6;
  memcpy(v21, name, 0x200uLL);
  v21[512] = v12;
  v13 = diskCopy;
  v17 = v13;
  [(DirItem *)self iterateDirEntriesAtOffset:offset numEntries:v6 shouldWriteToDisk:1 replyHandler:v16];
  v14 = v25[5];

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);

  return v14;
}

- (id)writeDirEntryDataToDisk:(id)disk
{
  v4 = [MsdosDirEntryData dynamicCast:disk];
  v5 = [[DirBlock alloc] initInDir:self];
  if (v5)
  {
    v6 = [v5 readDirBlockNum:{objc_msgSend(v4, "dosDirEntryDirBlockNum")}];
    if (v6)
    {
      writeToDisk = v6;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000331D0(v4);
      }
    }

    else
    {
      v8 = [v5 getBytesAtOffset:{objc_msgSend(v4, "dosDirEntryOffsetInDirBlock")}];
      data = [v4 data];
      bytes = [data bytes];
      v11 = bytes[1];
      *v8 = *bytes;
      v8[1] = v11;

      writeToDisk = [v5 writeToDisk];
    }

    [v5 releaseBlock];
  }

  else
  {
    writeToDisk = fs_errorForPOSIXError();
  }

  return writeToDisk;
}

- (id)markDirEntriesAsDeleted:(id)deleted
{
  deletedCopy = deleted;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100023984;
  v15 = sub_100023994;
  v16 = 0;
  entryData = [deletedCopy entryData];
  firstEntryOffsetInDir = [entryData firstEntryOffsetInDir];
  entryData2 = [deletedCopy entryData];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000255B8;
  v10[3] = &unk_1000513F0;
  v10[4] = &v11;
  -[DirItem iterateDirEntriesAtOffset:numEntries:shouldWriteToDisk:replyHandler:](self, "iterateDirEntriesAtOffset:numEntries:shouldWriteToDisk:replyHandler:", firstEntryOffsetInDir, [entryData2 numberOfDirEntries], 1, v10);

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)verifyCookieOffset:(unsigned int)offset
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100023984;
  v11 = sub_100023994;
  v12 = 0;
  if (offset)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100025758;
    v5[3] = &unk_100051418;
    v5[4] = &v7;
    offsetCopy = offset;
    [(DirItem *)self iterateDirEntriesAtOffset:offset numEntries:1 shouldWriteToDisk:0 replyHandler:v5];
    v3 = v8[5];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v7, 8);

  return v3;
}

- (id)getAttributes:(id)attributes
{
  attributesCopy = attributes;
  v19.receiver = self;
  v19.super_class = MsdosDirItem;
  v5 = [(FATItem *)&v19 getAttributes:attributesCopy];
  if ([attributesCopy isAttributeWanted:1])
  {
    [v5 setType:2];
  }

  if ([(DirItem *)self isRoot])
  {
    [v5 setSupportsLimitedXAttrs:1];
  }

  if ([(DirItem *)self isFat1216RootDir])
  {
    if ([attributesCopy isAttributeWanted:128])
    {
      volume = [(FATItem *)self volume];
      systemInfo = [volume systemInfo];
      [v5 setAllocSize:{objc_msgSend(systemInfo, "rootDirBytes")}];
    }

    if ([attributesCopy isAttributeWanted:512])
    {
      [v5 setParentID:{-[MsdosDirItem getFileID](self, "getFileID")}];
    }

    if ([attributesCopy isAttributeWanted:64])
    {
      volume2 = [(FATItem *)self volume];
      systemInfo2 = [volume2 systemInfo];
      [v5 setSize:{objc_msgSend(systemInfo2, "rootDirBytes")}];
    }

    if (([attributesCopy isAttributeWanted:1024] & 1) != 0 || (objc_msgSend(attributesCopy, "isAttributeWanted:", 2048) & 1) != 0 || (objc_msgSend(attributesCopy, "isAttributeWanted:", 4096) & 1) != 0 || objc_msgSend(attributesCopy, "isAttributeWanted:", 0x2000))
    {
      entryData = [(FATItem *)self entryData];

      if (!entryData)
      {
        v17 = 0;
        v18 = 0;
        msdosfs_dos2unixtime(33, 0, 0, &v17);
        if ([attributesCopy isAttributeWanted:1024])
        {
          [v5 setAccessTime:{v17, v18}];
        }

        if ([attributesCopy isAttributeWanted:2048])
        {
          [v5 setModifyTime:{v17, v18}];
        }

        if ([attributesCopy isAttributeWanted:4096])
        {
          [v5 setChangeTime:{v17, v18}];
        }

        if ([attributesCopy isAttributeWanted:0x2000])
        {
          [v5 setBirthTime:{v17, v18}];
        }
      }
    }
  }

  else if (![(FATItem *)self isDeleted])
  {
    v11 = [[DirBlock alloc] initInDir:self];
    v12 = [v11 readRelativeDirBlockNum:0];
    v13 = [MsdosDirEntryData alloc];
    v14 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v11 getBytesAtOffset:0], 32);
    v15 = [(MsdosDirEntryData *)v13 initWithData:v14];

    v17 = 0;
    v18 = 0;
    if ([attributesCopy isAttributeWanted:1024])
    {
      [(MsdosDirEntryData *)v15 getAccessTime:&v17];
      [v5 setAccessTime:{v17, v18}];
    }

    if ([attributesCopy isAttributeWanted:2048])
    {
      [(MsdosDirEntryData *)v15 getModifyTime:&v17];
      [v5 setModifyTime:{v17, v18}];
    }

    if ([attributesCopy isAttributeWanted:4096])
    {
      [(MsdosDirEntryData *)v15 getChangeTime:&v17];
      [v5 setChangeTime:{v17, v18}];
    }

    if ([attributesCopy isAttributeWanted:0x2000])
    {
      [(MsdosDirEntryData *)v15 getBirthTime:&v17];
      [v5 setBirthTime:{v17, v18}];
    }

    [v11 releaseBlock];
  }

  return v5;
}

- (unint64_t)getFileID
{
  if ([(DirItem *)self isRoot])
  {
    if ([(DirItem *)self isFat1216RootDir])
    {
      return 1;
    }

    else
    {
      return [(FATItem *)self firstCluster];
    }
  }

  else
  {
    v4.receiver = self;
    v4.super_class = MsdosDirItem;
    return [(FATItem *)&v4 getFileID];
  }
}

- (unsigned)getGenerationNumberOfName:(unistr255 *)name
{
  var0 = name->var0;
  if (!name->var0)
  {
    return 0;
  }

  do
  {
    v4 = var0 - 1;
    if (var0 < 2)
    {
      break;
    }

    v5 = *(&name->var0 + var0--);
  }

  while (v5 != 126);
  if (v4)
  {
    return strtol(name->var1 + v4, 0, 10);
  }

  else
  {
    return 0;
  }
}

- (void)isShortNameUniqueInDir:(char *)dir replyHandler:(id)handler
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100023984;
  v28 = sub_100023994;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100025EB0;
  v9 = &unk_100051440;
  v12 = &v24;
  v13 = &v16;
  selfCopy = self;
  v14 = &v20;
  dirCopy = dir;
  handlerCopy = handler;
  v11 = handlerCopy;
  [(MsdosDirItem *)selfCopy iterateFromOffset:0 options:0 replyHandler:&v6];
  if (![(MsdosDirItem *)self maxShortNameIndex:v6])
  {
    [(MsdosDirItem *)self setMaxShortNameIndex:*(v17 + 6)];
  }

  if (v25[5])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100033410();
    }

    (*(handlerCopy + 2))(handlerCopy, v25[5], 0);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, (v21[3] & 1) == 0);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

@end
@interface PTPFolder
- (BOOL)fileExists:(id)exists;
- (PTPFolder)initWithName:(id)name captureTimeSpec:(timespec *)spec parent:(id)parent storage:(id)storage;
- (PTPFolder)initWithObjectHandle:(unsigned int)handle;
- (id)folderMatchingName:(id)name;
- (id)objectHandlesForObjectFormatCode:(unsigned __int16)code inAssociation:(unsigned int)association;
- (id)objectMatchingAssetHandle:(id)handle;
- (id)parent;
- (id)storage;
- (timespec)captureTimeSpec;
- (unint64_t)appendObjectData:(id)data forObjectFormatCode:(unsigned __int16)code inAssociation:(unsigned int)association withContentType:(unsigned int)type;
- (unsigned)storageID;
- (void)addFile:(id)file;
- (void)addFolder:(id)folder;
- (void)deleteFile:(id)file;
- (void)deleteFolder:(id)folder;
@end

@implementation PTPFolder

- (PTPFolder)initWithName:(id)name captureTimeSpec:(timespec *)spec parent:(id)parent storage:(id)storage
{
  nameCopy = name;
  parentCopy = parent;
  storageCopy = storage;
  v13 = [(PTPFolder *)self initWithObjectHandle:sub_100004214()];
  v14 = v13;
  if (v13)
  {
    [(PTPFolder *)v13 setParent:parentCopy];
    [(PTPFolder *)v14 setStorage:storageCopy];
    if (spec)
    {
      v23 = [NSDate dateWithTimeIntervalSince1970:spec->tv_sec];
      v22 = +[NSCalendar currentCalendar];
      v15 = [v22 components:252 fromDate:v23];
      v24 = storageCopy;
      v16 = nameCopy;
      snprintf(__str, 0x14uLL, "%04d%02d%02dT%02d%02d%02d.0", [v15 year], objc_msgSend(v15, "month"), objc_msgSend(v15, "day"), objc_msgSend(v15, "hour"), objc_msgSend(v15, "minute"), objc_msgSend(v15, "second"));
      v17 = *(&v14->_folders + 4);
      __str = [NSString stringWithFormat:@"%s", __str];
      [v17 setCaptureDate:__str];

      nameCopy = v16;
      storageCopy = v24;
      v19 = *(&v14->_folders + 4);
      __str2 = [NSString stringWithFormat:@"%s", __str];
      [v19 setModificationDate:__str2];

      *(&v14->_objectInfoDataset + 4) = *spec;
    }

    [*(&v14->_folders + 4) setStorageID:{-[PTPFolder storageID](v14, "storageID")}];
    [*(&v14->_folders + 4) setObjectFormat:12289];
    [*(&v14->_folders + 4) setProtectionStatus:0];
    [*(&v14->_folders + 4) setParentObject:{objc_msgSend(parentCopy, "objectHandle")}];
    [*(&v14->_folders + 4) setAssociationType:1];
    [*(&v14->_folders + 4) setFilename:nameCopy];
    [*(&v14->_folders + 4) setObjectHandle:{-[PTPItem objectHandle](v14, "objectHandle")}];
    ++dword_1000403AC;
  }

  return v14;
}

- (PTPFolder)initWithObjectHandle:(unsigned int)handle
{
  v3 = *&handle;
  v12.receiver = self;
  v12.super_class = PTPFolder;
  v4 = [(PTPFolder *)&v12 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 44) = 0;
    *(v4 + 52) = 0;
    v6 = objc_alloc_init(PTPObjectInfoDataset);
    v7 = *(v5 + 84);
    *(v5 + 84) = v6;

    [v5 setObjectHandle:v3];
    v8 = +[NSMutableIndexSet indexSet];
    [v5 setFileIndices:v8];

    v9 = +[NSMutableDictionary dictionary];
    [v5 setFileNames:v9];

    v10 = +[NSMutableDictionary dictionary];
    [v5 setFolders:v10];

    *(v5 + 3) = 0;
  }

  return v5;
}

- (unsigned)storageID
{
  WeakRetained = objc_loadWeakRetained((&self->_parent + 4));
  storageID = [WeakRetained storageID];

  return storageID;
}

- (id)objectMatchingAssetHandle:(id)handle
{
  handleCopy = handle;
  lastIndex = [*(&self->_fileNames + 4) lastIndex];
  if (lastIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_7;
  }

  v6 = lastIndex;
  while (1)
  {
    v7 = objc_autoreleasePoolPush();
    storage = [(PTPFolder *)self storage];
    v9 = [storage cameraFileWithObjectID:v6];

    v6 = [*(&self->_fileNames + 4) indexLessThanIndex:v6];
    plAssetHandle = [v9 plAssetHandle];
    v11 = [plAssetHandle isEqual:handleCopy];

    if (v11)
    {
      break;
    }

    objc_autoreleasePoolPop(v7);
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }
  }

  objc_autoreleasePoolPop(v7);
  if (!v9)
  {
LABEL_7:
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    allValues = [*(&self->_fileIndices + 4) allValues];
    v13 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
LABEL_9:
      v16 = 0;
      while (1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(allValues);
        }

        unsignedIntValue = [*(*(&v21 + 1) + 8 * v16) unsignedIntValue];
        storage2 = [(PTPFolder *)self storage];
        v19 = [storage2 cameraFolderWithObjectID:unsignedIntValue];

        v9 = [v19 objectMatchingAssetHandle:handleCopy];

        if (v9)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v14)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      v9 = 0;
    }
  }

  return v9;
}

- (id)objectHandlesForObjectFormatCode:(unsigned __int16)code inAssociation:(unsigned int)association
{
  v4 = *&association;
  codeCopy = code;
  __ICOSLogCreate();
  selfCopy = self;
  v91 = v4;
  v89 = codeCopy;
  v7 = [NSString stringWithFormat:@"[Object Handle: 0x%x] objectHandlesForObjectFormatCode: 0x%x, Association Handle: 0x%x\n", [(PTPItem *)self objectHandle], codeCopy, v4];
  if (__ICLogTypeEnabled())
  {
    v8 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v98 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = selfCopy;
    __ICOSLogCreate();
    v10 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v11 = [&stru_100038B48 substringWithRange:{0, 18}];
      v10 = [v11 stringByAppendingString:@".."];
    }

    objectInfoDataset = [(__CFString *)v9 objectInfoDataset];
    filename = [objectInfoDataset filename];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"* >>[%s] ", [filename UTF8String]);

    v15 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v10;
      v17 = v15;
      uTF8String = [(__CFString *)v10 UTF8String];
      *buf = 136446466;
      v98 = uTF8String;
      v99 = 2114;
      v100 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  else
  {
    __ICOSLogCreate();
    v9 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v19 = [&stru_100038B48 substringWithRange:{0, 18}];
      v9 = [v19 stringByAppendingString:@".."];
    }

    v10 = [NSString stringWithFormat:@"* >>[0x%x] \n", [(PTPItem *)selfCopy objectHandle]];
    v20 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v9;
      v22 = v20;
      uTF8String2 = [(__CFString *)v9 UTF8String];
      *buf = 136446466;
      v98 = uTF8String2;
      v99 = 2114;
      v100 = v10;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  v88 = [NSMutableArray arrayWithCapacity:0];
  v24 = sub_1000041DC();
  v25 = v89;
  if ((v4 + 1) < 2 || [(PTPItem *)selfCopy objectHandle]== v4)
  {
    v26 = 68;
    lastIndex = [*(&selfCopy->_fileNames + 4) lastIndex];
    if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = lastIndex;
      while (1)
      {
        storage = [(PTPFolder *)selfCopy storage];
        v30 = [storage cameraFileWithObjectID:v28];

        v28 = [*(&selfCopy->super.super.isa + v26) indexLessThanIndex:v28];
        objectInfoDataset2 = [v30 objectInfoDataset];
        v32 = ([objectInfoDataset2 objectCompressedSize64] >> 32 == 0) | v24;

        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v25)
        {
          goto LABEL_35;
        }

        v33 = v26;
        v34 = v24;
        v35 = v28;
        __ICOSLogCreate();
        v36 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[0x%x] Object Format Code Is Non-Zero\n", [v30 objectHandle]);
        if (__ICLogTypeEnabled())
        {
          v37 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v98 = v36;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }
        }

        objectInfoDataset3 = [v30 objectInfoDataset];
        objectFormat = [objectInfoDataset3 objectFormat];
        v40 = objectFormat;
        if (v25 == 0xFFFF)
        {
          v44 = ~objectFormat & 0x3800;

          v28 = v35;
          v24 = v34;
          v26 = v33;
          if (v44)
          {
LABEL_35:
            v45 = v28;
            __ICOSLogCreate();
            v46 = &stru_100038B48;
            if ([&stru_100038B48 length] >= 0x15)
            {
              v47 = [&stru_100038B48 substringWithRange:{0, 18}];
              v46 = [v47 stringByAppendingString:@".."];
            }

            objectHandle = [v30 objectHandle];
            objectInfoDataset4 = [v30 objectInfoDataset];
            filename2 = [objectInfoDataset4 filename];
            v51 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"  +[0x%x]%s] ", objectHandle, [filename2 UTF8String]);

            v52 = _gICOSLog;
            if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
            {
              v53 = v46;
              v54 = v52;
              uTF8String3 = [(__CFString *)v46 UTF8String];
              *buf = 136446466;
              v98 = uTF8String3;
              v99 = 2114;
              v100 = v51;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
            }

            v42 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v30 objectHandle]);
            [v88 addObject:v42];
            v25 = v89;
            v28 = v45;
            goto LABEL_40;
          }

          __ICOSLogCreate();
          v42 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[0x%x] Object Has Been Excluded\n", [v30 objectHandle]);
          if (__ICLogTypeEnabled())
          {
            v43 = _gICOSLog;
            if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_30;
            }
          }
        }

        else
        {

          v41 = v40 == v25;
          v28 = v35;
          v24 = v34;
          v26 = v33;
          if (v41)
          {
            goto LABEL_35;
          }

          __ICOSLogCreate();
          v42 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[0x%x] Object Format Code Does Not Match\n", [v30 objectHandle]);
          if (__ICLogTypeEnabled())
          {
            v43 = _gICOSLog;
            if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_30;
            }
          }
        }

LABEL_40:

        if (v28 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_41;
        }
      }

      __ICOSLogCreate();
      v42 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[0x%x] Large File Support Disabled, Large File Cannot Be Added Index\n", [v30 objectHandle]);
      if (!__ICLogTypeEnabled())
      {
        goto LABEL_40;
      }

      v43 = _gICOSLog;
      if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

LABEL_30:
      *buf = 138543362;
      v98 = v42;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      goto LABEL_40;
    }
  }

LABEL_41:
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v56 = selfCopy;
  obj = [*(&selfCopy->_fileIndices + 4) allValues];
  v57 = [obj countByEnumeratingWithState:&v92 objects:v96 count:16];
  if (!v57)
  {
    goto LABEL_62;
  }

  v58 = v57;
  v59 = *v93;
  do
  {
    for (i = 0; i != v58; i = i + 1)
    {
      if (*v93 != v59)
      {
        objc_enumerationMutation(obj);
      }

      v61 = *(*(&v92 + 1) + 8 * i);
      storage2 = [(PTPFolder *)v56 storage];
      v63 = [storage2 cameraFolderWithObjectID:{objc_msgSend(v61, "unsignedIntValue")}];

      if (v25)
      {
        goto LABEL_54;
      }

      if ((v91 + 1) < 2 || [(PTPItem *)v56 objectHandle]== v91)
      {
        __ICOSLogCreate();
        v64 = &stru_100038B48;
        if ([&stru_100038B48 length] >= 0x15)
        {
          v65 = [&stru_100038B48 substringWithRange:{0, 18}];
          v64 = [v65 stringByAppendingString:@".."];
        }

        objectHandle2 = [v63 objectHandle];
        objectInfoDataset5 = [v63 objectInfoDataset];
        filename3 = [objectInfoDataset5 filename];
        v69 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"  +[0x%lx]%s] \n", objectHandle2, [filename3 UTF8String]);

        v70 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v71 = v64;
          v72 = v70;
          uTF8String4 = [(__CFString *)v64 UTF8String];
          *buf = 136446466;
          v98 = uTF8String4;
          v99 = 2114;
          v100 = v69;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }

        v74 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v63 objectHandle]);
        [v88 addObject:v74];

        v25 = v89;
        v56 = selfCopy;
LABEL_54:
        if (v91 == -1)
        {
          goto LABEL_60;
        }
      }

      __ICOSLogCreate();
      v75 = &stru_100038B48;
      if ([&stru_100038B48 length] >= 0x15)
      {
        v76 = [&stru_100038B48 substringWithRange:{0, 18}];
        v75 = [v76 stringByAppendingString:@".."];
      }

      objectHandle3 = [v63 objectHandle];
      objectInfoDataset6 = [v63 objectInfoDataset];
      filename4 = [objectInfoDataset6 filename];
      v80 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" ->[0x%lx]%s] \n", objectHandle3, [filename4 UTF8String]);

      v81 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v82 = v75;
        v83 = v81;
        uTF8String5 = [(__CFString *)v75 UTF8String];
        *buf = 136446466;
        v98 = uTF8String5;
        v99 = 2114;
        v100 = v80;
        _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      v25 = v89;
      v85 = [v63 objectHandlesForObjectFormatCode:v89 inAssociation:v91];
      [v88 addObjectsFromArray:v85];

      v56 = selfCopy;
LABEL_60:
    }

    v58 = [obj countByEnumeratingWithState:&v92 objects:v96 count:16];
  }

  while (v58);
LABEL_62:

  return v88;
}

- (void)addFile:(id)file
{
  fileCopy = file;
  v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [fileCopy objectHandle]);
  objectInfoDataset = [fileCopy objectInfoDataset];
  filename = [objectInfoDataset filename];
  objectInfoDataset2 = [fileCopy objectInfoDataset];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%d", filename, [objectInfoDataset2 sequenceNumber]);

  os_unfair_lock_lock(&self->super._objectHandle + 1);
  [*(&self->_size + 4) setObject:v10 forKeyedSubscript:v8];
  v9 = *(&self->_fileNames + 4);
  LODWORD(filename) = [fileCopy objectHandle];

  [v9 addIndex:filename];
  os_unfair_lock_unlock(&self->super._objectHandle + 1);
}

- (void)addFolder:(id)folder
{
  folderCopy = folder;
  v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [folderCopy objectHandle]);
  os_unfair_lock_lock(&self->super._objectHandle + 1);
  v5 = *(&self->_fileIndices + 4);
  objectInfoDataset = [folderCopy objectInfoDataset];

  filename = [objectInfoDataset filename];
  [v5 setObject:v8 forKeyedSubscript:filename];

  os_unfair_lock_unlock(&self->super._objectHandle + 1);
}

- (void)deleteFile:(id)file
{
  fileCopy = file;
  objectInfoDataset = [fileCopy objectInfoDataset];
  filename = [objectInfoDataset filename];
  objectInfoDataset2 = [fileCopy objectInfoDataset];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%d", filename, [objectInfoDataset2 sequenceNumber]);

  os_unfair_lock_lock(&self->super._objectHandle + 1);
  [*(&self->_size + 4) removeObjectForKey:v9];
  [*(&self->_fileNames + 4) removeIndex:{objc_msgSend(fileCopy, "objectHandle")}];
  storage = [(PTPFolder *)self storage];
  LODWORD(objectInfoDataset) = [fileCopy objectHandle];

  [storage removeCameraFileFromIndex:objectInfoDataset];
  os_unfair_lock_unlock(&self->super._objectHandle + 1);
}

- (void)deleteFolder:(id)folder
{
  folderCopy = folder;
  os_unfair_lock_lock(&self->super._objectHandle + 1);
  v5 = *(&self->_fileIndices + 4);
  objectInfoDataset = [folderCopy objectInfoDataset];
  filename = [objectInfoDataset filename];
  [v5 removeObjectForKey:filename];

  storage = [(PTPFolder *)self storage];
  LODWORD(objectInfoDataset) = [folderCopy objectHandle];

  [storage removeCameraFolderFromIndex:objectInfoDataset];

  os_unfair_lock_unlock(&self->super._objectHandle + 1);
}

- (BOOL)fileExists:(id)exists
{
  existsCopy = exists;
  os_unfair_lock_lock(&self->super._objectHandle + 1);
  v5 = [*(&self->_size + 4) objectForKeyedSubscript:existsCopy];

  LODWORD(existsCopy) = [v5 unsignedIntValue];
  os_unfair_lock_unlock(&self->super._objectHandle + 1);
  return existsCopy != 0;
}

- (id)folderMatchingName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock(&self->super._objectHandle + 1);
  v5 = [*(&self->_fileIndices + 4) objectForKeyedSubscript:nameCopy];

  unsignedIntValue = [v5 unsignedIntValue];
  os_unfair_lock_unlock(&self->super._objectHandle + 1);
  if (unsignedIntValue)
  {
    storage = [(PTPFolder *)self storage];
    v8 = [storage cameraFolderWithObjectID:unsignedIntValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)appendObjectData:(id)data forObjectFormatCode:(unsigned __int16)code inAssociation:(unsigned int)association withContentType:(unsigned int)type
{
  codeCopy = code;
  dataCopy = data;
  objc_opt_class();
  selfCopy = self;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    selfCopy2 = self;
    __ICOSLogCreate();
    v8 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v15 = [&stru_100038B48 substringWithRange:{0, 18}];
      v8 = [v15 stringByAppendingString:@".."];
    }

    objectInfoDataset = [(PTPFolder *)selfCopy2 objectInfoDataset];
    filename = [objectInfoDataset filename];
    uTF8String = [filename UTF8String];
    v19 = [*(&selfCopy2->_fileIndices + 4) count];
    v20 = *(&selfCopy2->_fileNames + 4);

    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"  [Folder: %8s] folders:[%5lu] files:[%5lu] \n", uTF8String, v19, [v20 count]);

    v21 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v8;
      v23 = v21;
      *buf = 136446466;
      uTF8String2 = [(__CFString *)v8 UTF8String];
      v87 = 2114;
      v88 = v10;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    self = selfCopy;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    __ICOSLogCreate();
    v8 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v9 = [&stru_100038B48 substringWithRange:{0, 18}];
      v8 = [v9 stringByAppendingString:@".."];
    }

    v10 = [NSString stringWithFormat:@"[Storage: 0x%x] \n", [(PTPItem *)self objectHandle]];
    v11 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v8;
      v13 = v11;
      *buf = 136446466;
      uTF8String2 = [(__CFString *)v8 UTF8String];
      v87 = 2114;
      v88 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

LABEL_12:
  }

  v83 = 0;
  if (type == 3 && ![dataCopy length])
  {
    __ICOSLogCreate();
    v24 = [NSString stringWithFormat:@"Append Initial PTP11 Array, Object Count [%d]\n", v83];
    if (__ICLogTypeEnabled())
    {
      v25 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        uTF8String2 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }
    }

    [dataCopy appendBytes:&v83 length:8];
  }

  v26 = sub_1000041DC();
  v77 = codeCopy;
  if (association + 1 < 2 || [(PTPItem *)self objectHandle]== association)
  {
    os_unfair_lock_lock(&self->super._objectHandle + 1);
    lastIndex = [*(&self->_fileNames + 4) lastIndex];
    if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = lastIndex;
      while (1)
      {
        v29 = objc_autoreleasePoolPush();
        storage = [(PTPFolder *)self storage];
        v31 = [storage cameraFileWithObjectID:v28];

        v28 = [*(&self->_fileNames + 4) indexLessThanIndex:v28];
        objectInfoDataset2 = [v31 objectInfoDataset];
        v33 = ([objectInfoDataset2 objectCompressedSize64] >> 32 == 0) | v26;

        if ((v33 & 1) == 0)
        {
          break;
        }

        if (!v77)
        {
          goto LABEL_40;
        }

        __ICOSLogCreate();
        v34 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[0x%x] Object Format Code Is Non-Zero\n", [v31 objectHandle]);
        if (__ICLogTypeEnabled())
        {
          v35 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            uTF8String2 = v34;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }
        }

        objectInfoDataset3 = [v31 objectInfoDataset];
        objectFormat = [objectInfoDataset3 objectFormat];
        v38 = objectFormat;
        if (v77 == 0xFFFF)
        {
          v41 = ~objectFormat & 0x3800;

          if (v41)
          {
LABEL_40:
            v42 = v29;
            v43 = v28;
            v44 = v26;
            __ICOSLogCreate();
            objectHandle = [v31 objectHandle];
            objectInfoDataset4 = [v31 objectInfoDataset];
            filename2 = [objectInfoDataset4 filename];
            v48 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" +[0x%x]%s] ", objectHandle, [filename2 UTF8String]);

            if (__ICLogTypeEnabled())
            {
              v49 = _gICOSLog;
              if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                uTF8String2 = v48;
                _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
              }
            }

            objectInfoDataset5 = [v31 objectInfoDataset];
            v39 = [objectInfoDataset5 content:type];

            [dataCopy appendData:v39];
            ++v83;
            v26 = v44;
            v28 = v43;
            v29 = v42;
            goto LABEL_44;
          }

          __ICOSLogCreate();
          v39 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[0x%x] Object Has Been Excluded\n", [v31 objectHandle]);
          if (__ICLogTypeEnabled())
          {
            v40 = _gICOSLog;
            if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_35;
            }
          }
        }

        else
        {

          if (v38 == v77)
          {
            goto LABEL_40;
          }

          __ICOSLogCreate();
          v39 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[0x%x] Object Format Code Does Not Match\n", [v31 objectHandle]);
          if (__ICLogTypeEnabled())
          {
            v40 = _gICOSLog;
            if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_35;
            }
          }
        }

LABEL_44:

        objc_autoreleasePoolPop(v29);
        self = selfCopy;
        if (v28 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_45;
        }
      }

      __ICOSLogCreate();
      v39 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[0x%x] Large File Support Disabled, Large File Cannot Be Added Index\n", [v31 objectHandle]);
      if (!__ICLogTypeEnabled())
      {
        goto LABEL_44;
      }

      v40 = _gICOSLog;
      if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

LABEL_35:
      *buf = 138543362;
      uTF8String2 = v39;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      goto LABEL_44;
    }

LABEL_45:
    os_unfair_lock_unlock(&self->super._objectHandle + 1);
    codeCopy = v77;
  }

  os_unfair_lock_lock(&self->super._objectHandle + 1);
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  allValues = [*(&self->_fileIndices + 4) allValues];
  v52 = [allValues countByEnumeratingWithState:&v79 objects:v84 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v80;
    do
    {
      for (i = 0; i != v53; i = i + 1)
      {
        if (*v80 != v54)
        {
          objc_enumerationMutation(allValues);
        }

        v56 = *(*(&v79 + 1) + 8 * i);
        storage2 = [(PTPFolder *)self storage];
        v58 = [storage2 cameraFolderWithObjectID:{objc_msgSend(v56, "unsignedIntValue")}];

        if (codeCopy)
        {
          goto LABEL_58;
        }

        if (association + 1 < 2 || [(PTPItem *)self objectHandle]== association)
        {
          __ICOSLogCreate();
          objectHandle2 = [v58 objectHandle];
          objectInfoDataset6 = [v58 objectInfoDataset];
          filename3 = [objectInfoDataset6 filename];
          v62 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" +[0x%x]%s] \n", objectHandle2, [filename3 UTF8String]);

          if (__ICLogTypeEnabled())
          {
            v63 = _gICOSLog;
            if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              uTF8String2 = v62;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
            }
          }

          objectInfoDataset7 = [v58 objectInfoDataset];
          v65 = [objectInfoDataset7 content:type];

          [dataCopy appendData:v65];
          ++v83;

          codeCopy = v77;
LABEL_58:
          if (association == -1)
          {
            goto LABEL_63;
          }
        }

        __ICOSLogCreate();
        objectHandle3 = [v58 objectHandle];
        objectInfoDataset8 = [v58 objectInfoDataset];
        filename4 = [objectInfoDataset8 filename];
        v69 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"->[0x%x]%s] \n", objectHandle3, [filename4 UTF8String]);

        if (__ICLogTypeEnabled())
        {
          v70 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            uTF8String2 = v69;
            _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }
        }

        codeCopy = v77;
        v71 = [v58 appendObjectData:dataCopy forObjectFormatCode:v77 inAssociation:association withContentType:type];
        v83 += v71;
        self = selfCopy;
LABEL_63:
      }

      v53 = [allValues countByEnumeratingWithState:&v79 objects:v84 count:16];
    }

    while (v53);
  }

  os_unfair_lock_unlock(&self->super._objectHandle + 1);
  v72 = v83;

  return v72;
}

- (id)parent
{
  WeakRetained = objc_loadWeakRetained((&self->_folderLock + 1));

  return WeakRetained;
}

- (id)storage
{
  WeakRetained = objc_loadWeakRetained((&self->_parent + 4));

  return WeakRetained;
}

- (timespec)captureTimeSpec
{
  v2 = &self->_objectInfoDataset + 4;
  v3 = *(&self->_objectInfoDataset + 4);
  v4 = *(v2 + 1);
  result.tv_nsec = v4;
  result.tv_sec = v3;
  return result;
}

@end
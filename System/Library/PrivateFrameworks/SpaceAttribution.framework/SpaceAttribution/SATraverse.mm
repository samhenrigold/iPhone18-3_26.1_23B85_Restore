@interface SATraverse
+ (id)getFileSize:(id)size;
- (BOOL)isNodeID:(unint64_t)d oldestForDStreamID:(unint64_t)iD path:(id)path;
- (BOOL)popDir:(id *)dir at:(int64_t *)at ofParentPath:(id *)path;
- (SATraverse)init;
- (SATraverse)traverseWithPath:(id)path options:(unint64_t)options completionHandler:(id)handler;
- (id)_getFolderSizeForFD:(int)d path:(id)path options:(unint64_t)options;
- (id)getItemSizeAtPath:(id)path;
- (void)debugLogStatistics;
- (void)pushDir:(id)dir at:(int64_t)at withParentPath:(id)path;
@end

@implementation SATraverse

- (SATraverse)init
{
  v13.receiver = self;
  v13.super_class = SATraverse;
  v2 = [(SATraverse *)&v13 init];
  if (v2)
  {
    v3 = +[NSDate date];
    startTime = v2->_startTime;
    v2->_startTime = v3;

    v5 = objc_opt_new();
    dir_content_cache = v2->_dir_content_cache;
    v2->_dir_content_cache = v5;

    v7 = objc_opt_new();
    knownDstreamIDs = v2->_knownDstreamIDs;
    v2->_knownDstreamIDs = v7;

    v9 = objc_opt_new();
    knownInodeIDs = v2->_knownInodeIDs;
    v2->_knownInodeIDs = v9;

    initialPath = v2->_initialPath;
    v2->_initialPath = 0;

    v2->_fs_num = 0;
  }

  return v2;
}

- (void)debugLogStatistics
{
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F094();
  }

  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F100();
  }

  v5 = SALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F16C();
  }

  v6 = SALog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F1D8();
  }

  v7 = SALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F244();
  }

  v8 = SALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F2B0();
  }

  v9 = SALog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F31C();
  }

  v10 = SALog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F388();
  }

  v11 = SALog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F3F4();
  }

  v12 = SALog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F460(self, v12);
  }
}

- (void)pushDir:(id)dir at:(int64_t)at withParentPath:(id)path
{
  pathCopy = path;
  dirCopy = dir;
  v10 = [[SADirContentCacheEntry alloc] initWithData:dirCopy idx:at andParentPath:pathCopy];

  [(NSMutableArray *)self->_dir_content_cache addObject:v10];
  if ([(NSMutableArray *)self->_dir_content_cache count]> self->_dir_content_max_count)
  {
    self->_dir_content_max_count = [(NSMutableArray *)self->_dir_content_cache count];
  }
}

- (BOOL)popDir:(id *)dir at:(int64_t *)at ofParentPath:(id *)path
{
  v9 = [(NSMutableArray *)self->_dir_content_cache count];
  if (v9)
  {
    lastObject = [(NSMutableArray *)self->_dir_content_cache lastObject];
    *dir = [lastObject dir_content];
    *at = [lastObject index];
    *path = [lastObject parent_path];
    [(NSMutableArray *)self->_dir_content_cache removeLastObject];
  }

  return v9 != 0;
}

- (SATraverse)traverseWithPath:(id)path options:(unint64_t)options completionHandler:(id)handler
{
  pathCopy = path;
  handlerCopy = handler;
  v10 = objc_opt_new();
  objc_storeStrong(&self->_initialPath, path);
  self->_options = options;
  v11 = [(NSString *)self->_initialPath copy];
  v12 = objc_autoreleasePoolPush();
  initialPath = self->_initialPath;
  v64 = 0;
  v14 = [v10 attributesOfItemAtPath:initialPath error:&v64];
  v15 = v64;
  fileSystemNumber = [v14 fileSystemNumber];
  if (self->_fs_num != fileSystemNumber)
  {
    [(NSMutableSet *)self->_knownDstreamIDs removeAllObjects];
    [(NSMutableSet *)self->_knownInodeIDs removeAllObjects];
    self->_fs_num = fileSystemNumber;
  }

  objc_autoreleasePoolPop(v12);
  v16 = 0;
  v63 = 0;
  *&v17 = 138412546;
  v53 = v17;
  v57 = v10;
  while (1)
  {
    v18 = objc_autoreleasePoolPush();
    if (v63)
    {
      break;
    }

    v62 = v15;
    v20 = [v10 contentsOfDirectoryAtPath:v11 error:&v62];
    v19 = v62;

    if (v19)
    {
      ++self->_cantEnumerateDir;

      v20 = 0;
    }

    if ((self->_options & 2) != 0)
    {
      v21 = handlerCopy[2](handlerCopy, v11, 2, v19);
      if (v21)
      {
        ++self->_callback_stop;
        v44 = SALog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          sub_10003F4F4();
        }

        goto LABEL_54;
      }

      if ((v21 & 2) != 0)
      {

        v16 = 0;
        goto LABEL_35;
      }
    }

    v16 = v20;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_35:
    if ((self->_options & 4) != 0)
    {
      v35 = handlerCopy[2](handlerCopy, v11, 4, v19);

      if (v35)
      {
        ++self->_callback_stop;
        v44 = SALog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          sub_10003F56C(v11, v44, v45, v46, v47, v48, v49, v50);
        }

        v19 = 0;
        v20 = v16;
LABEL_54:
        v43 = pathCopy;

        objc_autoreleasePoolPop(v18);
        v15 = v19;
        v16 = v20;
        goto LABEL_55;
      }

      v19 = 0;
    }

    v58 = v11;
    v59 = v16;
    v36 = [(SATraverse *)self popDir:&v59 at:&v63 ofParentPath:&v58, v53];
    v37 = v59;

    v34 = v58;
    ++v63;
    if ((v36 & 1) == 0)
    {
      objc_autoreleasePoolPop(v18);
      v41 = +[NSDate date];
      endTime = self->_endTime;
      self->_endTime = v41;

      v15 = v19;
      v16 = v37;
      v11 = v34;
      v43 = pathCopy;
      goto LABEL_55;
    }

    v15 = v19;
    v16 = v37;
LABEL_40:
    objc_autoreleasePoolPop(v18);
    v11 = v34;
  }

  v19 = v15;
  if (!v16)
  {
    goto LABEL_35;
  }

LABEL_13:
  v22 = v63;
  if (v22 >= [v16 count])
  {
    goto LABEL_32;
  }

  [v16 objectAtIndexedSubscript:v63];
  v24 = v23 = v10;
  v25 = [v11 stringByAppendingPathComponent:v24];
  v61 = 0;
  if (![v23 fileExistsAtPath:v25 isDirectory:&v61])
  {
    ++self->_noPathOutOfReach;
    v15 = v19;
LABEL_30:
    ++v63;

    v19 = v15;
    if (v16)
    {
      v10 = v57;
LABEL_32:
      v33 = v63;
      if (v33 != [v16 count])
      {
        v15 = v19;
        v34 = v11;
        goto LABEL_40;
      }

      goto LABEL_35;
    }

    v10 = v57;
    goto LABEL_35;
  }

  v60 = v19;
  v26 = [v23 attributesOfItemAtPath:v25 error:&v60];
  v15 = v60;

  if (v61 == 1)
  {
    v56 = v26;
    fileSystemNumber2 = [v26 fileSystemNumber];
    if (fileSystemNumber == fileSystemNumber2)
    {
      uTF8String = [v25 UTF8String];
      if ((self->_options & 0x10) != 0 && [SASupport isFilePurgeable:uTF8String])
      {
        ++v63;
        ++self->_purgeableFolder;
      }

      else
      {
        ++self->_folderCnt;
        [(SATraverse *)self pushDir:v16 at:v63 withParentPath:v11];
        v40 = v25;

        v63 = 0;
        v11 = v40;
      }
    }

    else
    {
      v38 = fileSystemNumber2;
      v39 = SALog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = v53;
        v66 = v25;
        v67 = 2048;
        v68 = v38;
        _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "fs_num at path %@ is %ld", buf, 0x16u);
      }

      ++v63;
      ++self->_onDifferentVolume;
    }

    v30 = v56;
    goto LABEL_46;
  }

  ++self->_filesDetected;
  options = self->_options;
  if ((options & 8) != 0)
  {
    v30 = v26;
    fileType = [v26 fileType];

    if (fileType == NSFileTypeSymbolicLink)
    {
      ++v63;
      ++self->_skipSymbolicLink;
LABEL_46:

      v34 = v11;
      v10 = v57;
      goto LABEL_40;
    }

    options = self->_options;
    v26 = v30;
  }

  if ((options & 1) == 0)
  {
LABEL_29:

    goto LABEL_30;
  }

  v32 = handlerCopy[2](handlerCopy, v25, 1, v15);
  if ((v32 & 1) == 0)
  {
    if ((v32 & 2) != 0)
    {

      v16 = 0;
    }

    goto LABEL_29;
  }

  ++self->_callback_stop;
  v52 = SALog();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v66 = v25;
    _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "stop at path %@ (on file)", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  v43 = pathCopy;
  v10 = v57;
LABEL_55:

  return result;
}

- (BOOL)isNodeID:(unint64_t)d oldestForDStreamID:(unint64_t)iD path:(id)path
{
  pathCopy = path;
  v12 = 0;
  v8 = [SACloneGroupsAnalyzer isNodeID:d oldestForDStreamID:iD path:pathCopy error:&v12];
  v9 = v12;
  if (v9)
  {
    v10 = SALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      iDCopy = iD;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to iterate clone with DStream ID (%llu) with %@. Fallback to clone mapping", buf, 0x16u);
    }

    v8 = [SACloneTreeWalker isNodeID:d oldestForDStreamID:iD forVolPath:pathCopy];
  }

  return v8;
}

- (id)getItemSizeAtPath:(id)path
{
  pathCopy = path;
  v18 = 0;
  v5 = objc_opt_new();
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:pathCopy isDirectory:&v18];

  if (v7)
  {
    v8 = +[NSFileManager defaultManager];
    v17 = 0;
    v9 = [v8 attributesOfItemAtPath:pathCopy error:&v17];
    v10 = v17;

    v11 = [0 objectForKeyedSubscript:NSFileTypeSymbolicLink];

    if (v11)
    {
      v12 = v5;
    }

    else if (v18 == 1)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100021958;
      v15[3] = &unk_1000652F8;
      v15[4] = self;
      v14 = v5;
      v16 = v14;
      [(SATraverse *)self traverseWithPath:pathCopy options:25 completionHandler:v15];
      v12 = v14;
    }

    else
    {
      v12 = [SATraverse getFileSize:pathCopy];
      if ([v12 isFileCloned] && -[SATraverse isNodeID:oldestForDStreamID:path:](self, "isNodeID:oldestForDStreamID:path:", +[SASupport getInodeIDForPath:](SASupport, "getInodeIDForPath:", pathCopy), +[SASupport getCloneDstreamIDForPath:](SASupport, "getCloneDstreamIDForPath:", pathCopy), pathCopy))
      {
        [v12 setDataSize:{objc_msgSend(v12, "cloneSize")}];
      }
    }
  }

  else
  {
    v12 = v5;
    v10 = 0;
  }

  return v12;
}

+ (id)getFileSize:(id)size
{
  sizeCopy = size;
  v4 = [NSURL fileURLWithPath:sizeCopy];
  v5 = objc_opt_new();
  v22 = 0;
  v20 = v4;
  v21 = 0;
  [v4 getResourceValue:&v22 forKey:NSURLFileAllocatedSizeKey error:&v21];
  v6 = v22;
  v7 = v21;
  if (v7 || !v6)
  {
    v17 = SALog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      if (v7)
      {
        v19 = [NSString stringWithFormat:@" with error %@", v7];
      }

      else
      {
        v19 = &stru_100066450;
      }

      *buf = 138412546;
      v24 = sizeCopy;
      v25 = 2112;
      v26 = v19;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to get physical size for file (%@)%@", buf, 0x16u);
      if (v7)
      {
      }
    }

    v14 = 0;
    v15 = 0;
    v10 = 0;
    v12 = 0;
    unsignedLongLongValue = 0;
    v16 = 0;
  }

  else
  {
    unsignedLongLongValue = [v6 unsignedLongLongValue];
    fileSystemRepresentation = [sizeCopy fileSystemRepresentation];
    v10 = [SASupport isFileCloned:fileSystemRepresentation];
    v11 = [SASupport isFilePurgeable:fileSystemRepresentation];
    v12 = v11;
    if (v10)
    {
      v13 = unsignedLongLongValue;
    }

    else
    {
      v13 = 0;
    }

    if (v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    if (v11)
    {
      v15 = unsignedLongLongValue;
    }

    else
    {
      v15 = 0;
    }

    if (v11)
    {
      v16 = 0;
    }

    else
    {
      v16 = (unsignedLongLongValue - v13);
    }
  }

  [v5 setPhysicalSize:unsignedLongLongValue];
  [v5 setDataSize:v16];
  [v5 setCloneSize:v14];
  [v5 setPurgeableSize:v15];
  [v5 setIsFileCloned:v10];
  [v5 setIsFilePurgeable:v12];

  return v5;
}

- (id)_getFolderSizeForFD:(int)d path:(id)path options:(unint64_t)options
{
  v6 = *&d;
  pathCopy = path;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v9 = objc_opt_new();
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  bzero(&v52, 0x878uLL);
  if (v6 || pathCopy)
  {
    if (v6 && pathCopy)
    {
      v10 = SALog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10003F70C(v10);
      }

      goto LABEL_10;
    }

    if (pathCopy)
    {
      v12 = pathCopy;
      v13 = statfs([pathCopy fileSystemRepresentation], &v52);
    }

    else
    {
      v13 = fstatfs(v6, &v52);
    }

    if (v13)
    {
      v14 = SALog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = __error();
        v16 = strerror(*v15);
        sub_10003F6C4(v16, buf, v14);
      }
    }

    else
    {
      v14 = [NSString stringWithUTF8String:v52.f_mntonname];
      [v9 setVolumePath:v14];
    }

    v17 = objc_autoreleasePoolPush();
    if ((options & 2) == 0)
    {
      goto LABEL_21;
    }

    v18 = [SASupport getDirStatInfoForPath:pathCopy orFD:v6 withOptions:(options >> 4) & 1 info:&v28];
    if (!v18)
    {
      v20 = 1;
      goto LABEL_33;
    }

    if (v18 != 2)
    {
LABEL_21:
      if ((options & 4) == 0)
      {
        goto LABEL_22;
      }

      v19 = [SASupport enableDirStatInfoForPath:pathCopy orFD:v6 withOptions:(options >> 4) & 1 andGetInfo:&v28];
      if (v19 != 45 && v19 != 2)
      {
        if (v19)
        {
          [v9 setFailedDirStat:1];
LABEL_22:
          if ((options & 8) != 0)
          {
            if (!pathCopy)
            {
              pathCopy = [SASupport getResolvedPathForFD:v6];
            }

            v27[0] = _NSConcreteStackBlock;
            v27[1] = 3221225472;
            v27[2] = sub_1000222E4;
            v27[3] = &unk_100065320;
            v27[4] = &v35;
            v27[5] = &v47;
            v27[6] = &v39;
            v27[7] = &v43;
            v27[8] = &v31;
            [(SATraverse *)self traverseWithPath:pathCopy options:9 completionHandler:v27];
          }

          goto LABEL_32;
        }

        v20 = 1;
        [v9 setEnabledDirStat:1];
LABEL_33:
        objc_autoreleasePoolPop(v17);
        if (v20)
        {
          v21 = v40;
          v22 = v28;
          v40[3] = *(&v28 + 1);
          v23 = v48;
          v48[3] = v29;
          v24 = v44;
          v44[3] = v22;
          v25 = *(&v29 + 1);
          v32[3] = v30;
          v36[3] = v24[3] - (v21[3] + v23[3]);
          [v9 setUsedDirStat:1];
        }

        else
        {
          v25 = 0;
        }

        [v9 setDataSize:v36[3]];
        [v9 setCloneSize:v48[3]];
        [v9 setPhysicalSize:v44[3]];
        [v9 setPurgeableSize:v40[3]];
        [v9 setDirStatsID:v25];
        [v9 setFileCount:v32[3]];
        v11 = v9;
        goto LABEL_37;
      }

      [v9 setSkippedDirStat:1];
    }

LABEL_32:
    v20 = 0;
    goto LABEL_33;
  }

  pathCopy = SALog();
  if (os_log_type_enabled(pathCopy, OS_LOG_TYPE_ERROR))
  {
    sub_10003F640(pathCopy);
  }

LABEL_10:
  v11 = 0;
LABEL_37:

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);

  return v11;
}

@end
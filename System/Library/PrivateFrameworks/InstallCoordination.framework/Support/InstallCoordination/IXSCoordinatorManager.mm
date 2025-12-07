@interface IXSCoordinatorManager
+ (NSURL)saveDir;
+ (id)prioritySaveURL;
+ (id)savePathForCoordinator:(id)coordinator;
+ (id)sharedInstance;
- (BOOL)_coordinator:(id)_coordinator isApplicableToConnection:(id)connection;
- (BOOL)_onMapQueue_removeCoordinatorFromMaps:(id)maps;
- (BOOL)prioritizeCoordinator:(id)coordinator;
- (BOOL)prioritizeCoordinatorWithIdentity:(id)identity;
- (IXSCoordinatorManager)init;
- (id)_lookupCoordinatorForIdentity:(id)identity;
- (id)_lookupCoordinatorForIdentity:(id)identity checkingScopeForConnection:(id)connection error:(id *)error;
- (id)coordinatorForIdentity:(id)identity connection:(id)connection error:(id *)error creatingIfNotExisting:(id)existing;
- (id)coordinatorForUUID:(id)d;
- (id)coordinatorsForBundleIdentifier:(id)identifier;
- (unint64_t)coordinatorCount;
- (void)_enumerateCoordinatorsForConnection:(id)connection usingBlock:(id)block;
- (void)_onMapQueue_saveIdentityPriority;
- (void)clearAllCoordinatorsForCreator:(unint64_t)creator;
- (void)connectionInvalidated:(id)invalidated;
- (void)convertProcessScopedCoordinatorToGlobalScoped:(id)scoped;
- (void)performCreationBlockingOperation:(id)operation;
- (void)unregisterCoordinator:(id)coordinator;
@end

@implementation IXSCoordinatorManager

+ (id)savePathForCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  saveDir = [self saveDir];
  identity = [coordinatorCopy identity];

  uniqueIdentifier = [identity uniqueIdentifier];
  v8 = [NSString stringWithFormat:@"%@.plist", uniqueIdentifier];
  v9 = [saveDir URLByAppendingPathComponent:v8 isDirectory:0];

  return v9;
}

+ (NSURL)saveDir
{
  v2 = +[IXGlobalConfiguration sharedInstance];
  dataDirectoryAbortingOnError = [v2 dataDirectoryAbortingOnError];

  v4 = [dataDirectoryAbortingOnError URLByAppendingPathComponent:@"Coordinators" isDirectory:1];

  return v4;
}

+ (id)prioritySaveURL
{
  v2 = +[IXGlobalConfiguration sharedInstance];
  dataDirectoryAbortingOnError = [v2 dataDirectoryAbortingOnError];

  v4 = [dataDirectoryAbortingOnError URLByAppendingPathComponent:@"CoordinatorPriority.plist" isDirectory:0];

  return v4;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DFCC;
  block[3] = &unk_100100D40;
  block[4] = self;
  if (qword_100121C90 != -1)
  {
    dispatch_once(&qword_100121C90, block);
  }

  v2 = qword_100121C88;

  return v2;
}

- (unint64_t)coordinatorCount
{
  mapQueue = [(IXSCoordinatorManager *)self mapQueue];
  dispatch_assert_queue_not_V2(mapQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000E0C8;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(mapQueue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (IXSCoordinatorManager)init
{
  v157.receiver = self;
  v157.super_class = IXSCoordinatorManager;
  v2 = [(IXSCoordinatorManager *)&v157 init];
  if (!v2)
  {
    return v2;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.installcoordinationd.IXSCoordinatorManager", v3);
  mapQueue = v2->_mapQueue;
  v2->_mapQueue = v4;

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.installcoordinationd.IXSCoordinatorManager.create", v6);
  createQueue = v2->_createQueue;
  v2->_createQueue = v7;

  v9 = objc_opt_new();
  connectionToProcessScopedCoordinatorMap = v2->_connectionToProcessScopedCoordinatorMap;
  v2->_connectionToProcessScopedCoordinatorMap = v9;

  saveDir = [objc_opt_class() saveDir];
  v12 = +[IXFileManager defaultManager];
  v156 = 0;
  v116 = saveDir;
  v13 = [v12 urlsForItemsInDirectoryAtURL:saveDir ignoringSymlinks:1 error:&v156];
  v14 = v156;

  v115 = v13;
  if (v13)
  {
    v15 = objc_opt_new();
    identityToCoordinatorMap = v2->_identityToCoordinatorMap;
    v2->_identityToCoordinatorMap = v15;

    v17 = objc_opt_new();
    uuidToCoordinatorMap = v2->_uuidToCoordinatorMap;
    v2->_uuidToCoordinatorMap = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v117 = dispatch_queue_create("com.apple.installcoordinationd.IXSCoordinatorManager.cancelQueue", v19);

    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    obj = v13;
    v20 = [obj countByEnumeratingWithState:&v152 objects:v169 count:16];
    if (!v20)
    {
      goto LABEL_47;
    }

    v21 = v20;
    v22 = *v153;
    v126 = *v153;
    while (1)
    {
      v23 = 0;
      v128 = v21;
      do
      {
        if (*v153 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v152 + 1) + 8 * v23);
        v25 = objc_autoreleasePoolPush();
        lastPathComponent = [v24 lastPathComponent];
        v27 = [lastPathComponent hasPrefix:@"."];

        if ((v27 & 1) == 0)
        {
          v151 = v14;
          v28 = [NSData dataWithContentsOfURL:v24 options:3 error:&v151];
          v29 = v151;

          if (v28)
          {
            v30 = [NSKeyedUnarchiver alloc];
            v150 = v29;
            v31 = [v30 initForReadingFromData:v28 error:&v150];
            v14 = v150;

            if (v31)
            {
              v32 = [NSSet setWithObjects:objc_opt_class(), 0];
              v33 = [v31 decodeObjectOfClasses:v32 forKey:NSKeyedArchiveRootObjectKey];
              if (v33)
              {
                v34 = v33;
                [v31 finishDecoding];

                identity = [v34 identity];

                if (identity)
                {
                  [v34 setIsTracked:1];
                  v149 = 0;
                  v36 = [v34 awakeFromSerializationWithError:&v149];
                  v37 = v149;
                  v38 = v37;
                  if (!v36)
                  {
                    goto LABEL_44;
                  }

                  v122 = v37;
                  identity2 = [v34 identity];
                  uniqueIdentifier = [v34 uniqueIdentifier];
                  v41 = [(NSMutableDictionary *)v2->_identityToCoordinatorMap objectForKeyedSubscript:identity2];
                  v42 = [(NSMutableDictionary *)v2->_uuidToCoordinatorMap objectForKeyedSubscript:uniqueIdentifier];
                  v120 = uniqueIdentifier;
                  v121 = v42;
                  if (v41)
                  {
                    v118 = identity2;
                    v43 = sub_1000031B0(off_100121958);
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315906;
                      v162 = "[IXSCoordinatorManager init]";
                      v163 = 2112;
                      v164 = v41;
                      v165 = 2112;
                      v166 = v34;
                      v167 = 2112;
                      v168 = 0;
                      _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%s: Discovered already registered coordinator %@; canceling deserialized coordinator with the same identity %@ : %@", buf, 0x2Au);
                    }

                    v44 = 1;
                    v46 = sub_1000405FC("[IXSCoordinatorManager init]", 150, @"IXErrorDomain", 1uLL, 0, 0, @"Discovered already registered coordinator %@ canceling deserialized coordinator with the same identity %@", v45, v41);;

                    v122 = v46;
                    identity2 = v118;
                  }

                  else
                  {
                    if (v42)
                    {
                      v119 = identity2;
                      v52 = sub_1000031B0(off_100121958);
                      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315906;
                        v162 = "[IXSCoordinatorManager init]";
                        v163 = 2112;
                        v164 = v121;
                        v165 = 2112;
                        v166 = v34;
                        v167 = 2112;
                        v168 = 0;
                        _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%s: Discovered already registered coordinator %@; canceling deserialized coordinator with the same UUID %@ : %@", buf, 0x2Au);
                      }

                      v44 = 1;
                      v54 = sub_1000405FC("[IXSCoordinatorManager init]", 153, @"IXErrorDomain", 1uLL, 0, 0, @"Discovered already registered coordinator %@ canceling deserialized coordinator with the same UUID %@", v53, v121);;

                      v122 = v54;
                      identity2 = v119;
                    }

                    else
                    {
                      [(NSMutableDictionary *)v2->_identityToCoordinatorMap setObject:v34 forKeyedSubscript:identity2];
                      [(NSMutableDictionary *)v2->_uuidToCoordinatorMap setObject:v34 forKeyedSubscript:uniqueIdentifier];
                      v44 = 0;
                    }

                    v41 = 0;
                  }

                  v38 = v122;
                  if (v44)
                  {
LABEL_44:
                    [v34 setIsTracked:0];
                    v146[0] = _NSConcreteStackBlock;
                    v146[1] = 3221225472;
                    v146[2] = sub_10000F2B8;
                    v146[3] = &unk_100100ED8;
                    v147 = v34;
                    v38 = v38;
                    v148 = v38;
                    sub_100071134(v117, v146);
                  }

                  v21 = v128;
                  goto LABEL_32;
                }

                path3 = sub_1000031B0(off_100121958);
                if (os_log_type_enabled(path3, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v162 = "[IXSCoordinatorManager init]";
                  v163 = 2112;
                  v164 = v34;
                  v50 = path3;
                  v51 = "%s: Somehow got coordinator without identity : %@";
LABEL_28:
                  _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, v51, buf, 0x16u);
                }

                goto LABEL_30;
              }

              v48 = sub_1000031B0(off_100121958);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                path = [v24 path];
                error = [v31 error];
                *buf = 136315650;
                v162 = "[IXSCoordinatorManager init]";
                v163 = 2112;
                v164 = path;
                v165 = 2112;
                v166 = error;
                v57 = error;
                _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%s: Failed to decode coordinator from data at %@ : %@", buf, 0x20u);
              }

              [v31 finishDecoding];
            }

            else
            {
              v32 = sub_1000031B0(off_100121958);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                path2 = [v24 path];
                *buf = 136315650;
                v162 = "[IXSCoordinatorManager init]";
                v163 = 2112;
                v164 = path2;
                v165 = 2112;
                v166 = v14;
                _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s: Failed to create unarchiver to deserialize coordinator at %@ : %@", buf, 0x20u);
              }
            }

            v34 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              path3 = [v24 path];
              *buf = 136315394;
              v162 = "[IXSCoordinatorManager init]";
              v163 = 2112;
              v164 = path3;
              v50 = v34;
              v51 = "%s: Failed to decode coordinator from %@";
              goto LABEL_28;
            }

LABEL_30:
            v21 = v128;
          }

          else
          {
            v31 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              path4 = [v24 path];
              *buf = 136315650;
              v162 = "[IXSCoordinatorManager init]";
              v163 = 2112;
              v164 = path4;
              v165 = 2112;
              v166 = v29;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s: Failed to deserialize coordinator at %@ : %@", buf, 0x20u);
            }

            v14 = v29;
            v21 = v128;
          }

          v34 = +[IXFileManager defaultManager];
          [v34 removeItemAtURL:v24 error:0];
LABEL_32:

          v22 = v126;
        }

        objc_autoreleasePoolPop(v25);
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v58 = [obj countByEnumeratingWithState:&v152 objects:v169 count:16];
      v21 = v58;
      if (!v58)
      {
LABEL_47:

        v59 = v14;
        v60 = v117;
        goto LABEL_57;
      }
    }
  }

  domain = [v14 domain];
  if (![domain isEqualToString:NSPOSIXErrorDomain])
  {

    goto LABEL_54;
  }

  code = [v14 code];

  if (code != 2)
  {
LABEL_54:
    v60 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v162 = "[IXSCoordinatorManager init]";
      v163 = 2112;
      v164 = v116;
      v165 = 2112;
      v166 = v14;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%s: Failed to enumerate saved coordinators at %@ : %@", buf, 0x20u);
    }

    v59 = v14;
    goto LABEL_57;
  }

  v63 = +[IXFileManager defaultManager];
  v145 = v14;
  v64 = [v63 createDirectoryAtURL:v116 withIntermediateDirectories:1 mode:493 class:4 error:&v145];
  v59 = v145;

  if ((v64 & 1) == 0)
  {
    v60 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      path5 = [v116 path];
      *buf = 136315650;
      v162 = "[IXSCoordinatorManager init]";
      v163 = 2112;
      v164 = path5;
      v165 = 2112;
      v166 = v59;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%s: Failed to create coordinator save directory at %@: %@", buf, 0x20u);
    }

LABEL_57:
  }

  if (!v2->_identityToCoordinatorMap || !v2->_uuidToCoordinatorMap)
  {
    v66 = objc_opt_new();
    v67 = v2->_identityToCoordinatorMap;
    v2->_identityToCoordinatorMap = v66;

    v68 = objc_opt_new();
    v69 = v2->_uuidToCoordinatorMap;
    v2->_uuidToCoordinatorMap = v68;
  }

  [objc_opt_class() prioritySaveURL];
  v129 = v144[1] = v59;
  v70 = [NSData dataWithContentsOfURL:"dataWithContentsOfURL:options:error:" options:? error:?];
  v71 = v59;

  v127 = v70;
  if (v70)
  {
    v144[0] = v71;
    v72 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v70 error:v144];
    v73 = v144[0];

    if (v72)
    {
      v124 = v73;
      v74 = objc_opt_new();
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v143 = 0u;
      v125 = v72;
      v75 = v72;
      v76 = [v75 countByEnumeratingWithState:&v140 objects:v160 count:16];
      if (v76)
      {
        v77 = v76;
        v78 = 0;
        v79 = *v141;
        do
        {
          v80 = 0;
          v81 = v78;
          do
          {
            if (*v141 != v79)
            {
              objc_enumerationMutation(v75);
            }

            v82 = *(*(&v140 + 1) + 8 * v80);
            v139 = v81;
            v83 = [v82 resolvePersonaWithError:&v139];
            v78 = v139;

            if (v83)
            {
              [(NSMutableArray *)v74 addObject:v82];
            }

            else
            {
              v84 = sub_1000031B0(off_100121958);
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
              {
                bundleID = [v82 bundleID];
                *buf = 136315650;
                v162 = "[IXSCoordinatorManager init]";
                v163 = 2112;
                v164 = bundleID;
                v165 = 2112;
                v166 = v78;
                _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "%s: Failed to resolve persona %@ : %@", buf, 0x20u);
              }
            }

            v80 = v80 + 1;
            v81 = v78;
          }

          while (v77 != v80);
          v77 = [v75 countByEnumeratingWithState:&v140 objects:v160 count:16];
        }

        while (v77);
      }

      else
      {
        v78 = 0;
      }

      identityPriority = v2->_identityPriority;
      v2->_identityPriority = v74;

      v73 = v124;
      v72 = v125;
    }

    else
    {
      v78 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v162 = "[IXSCoordinatorManager init]";
        v163 = 2112;
        v164 = v73;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "%s: Failed to deserialize identity priority data: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    domain2 = [v71 domain];
    if ([domain2 isEqualToString:NSCocoaErrorDomain])
    {
      code2 = [v71 code];

      if (code2 == 260)
      {
        goto LABEL_89;
      }
    }

    else
    {
    }

    v72 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      path6 = [v129 path];
      *buf = 136315650;
      v162 = "[IXSCoordinatorManager init]";
      v163 = 2112;
      v164 = path6;
      v165 = 2112;
      v166 = v71;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%s: Failed to read identity priority serialization from %@ : %@", buf, 0x20u);
    }

    v73 = v71;
  }

  v71 = v73;
LABEL_89:
  if (!v2->_identityPriority)
  {
    identityToCoordinatorMap = [(IXSCoordinatorManager *)v2 identityToCoordinatorMap];
    allKeys = [identityToCoordinatorMap allKeys];
    v92 = [allKeys mutableCopy];
    v93 = v2->_identityPriority;
    v2->_identityPriority = v92;

    v94 = +[IXFileManager defaultManager];
    [v94 removeItemAtURL:v129 error:0];
  }

  v95 = objc_opt_new();
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  identityPriority = [(IXSCoordinatorManager *)v2 identityPriority];
  v97 = [identityPriority countByEnumeratingWithState:&v135 objects:v159 count:16];
  if (v97)
  {
    v98 = v97;
    v99 = *v136;
    do
    {
      for (i = 0; i != v98; i = i + 1)
      {
        if (*v136 != v99)
        {
          objc_enumerationMutation(identityPriority);
        }

        v101 = *(*(&v135 + 1) + 8 * i);
        identityToCoordinatorMap2 = [(IXSCoordinatorManager *)v2 identityToCoordinatorMap];
        v103 = [identityToCoordinatorMap2 objectForKeyedSubscript:v101];

        if (!v103)
        {
          [v95 addObject:v101];
        }
      }

      v98 = [identityPriority countByEnumeratingWithState:&v135 objects:v159 count:16];
    }

    while (v98);
  }

  identityPriority2 = [(IXSCoordinatorManager *)v2 identityPriority];
  [identityPriority2 removeObjectsInArray:v95];

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  identityToCoordinatorMap3 = [(IXSCoordinatorManager *)v2 identityToCoordinatorMap];
  v106 = [identityToCoordinatorMap3 countByEnumeratingWithState:&v131 objects:v158 count:16];
  if (v106)
  {
    v107 = v106;
    v108 = *v132;
    do
    {
      for (j = 0; j != v107; j = j + 1)
      {
        if (*v132 != v108)
        {
          objc_enumerationMutation(identityToCoordinatorMap3);
        }

        v110 = *(*(&v131 + 1) + 8 * j);
        identityPriority3 = [(IXSCoordinatorManager *)v2 identityPriority];
        v112 = [identityPriority3 containsObject:v110];

        if ((v112 & 1) == 0)
        {
          identityPriority4 = [(IXSCoordinatorManager *)v2 identityPriority];
          [identityPriority4 addObject:v110];
        }
      }

      v107 = [identityToCoordinatorMap3 countByEnumeratingWithState:&v131 objects:v158 count:16];
    }

    while (v107);
  }

  return v2;
}

- (BOOL)_onMapQueue_removeCoordinatorFromMaps:(id)maps
{
  mapsCopy = maps;
  mapQueue = [(IXSCoordinatorManager *)self mapQueue];
  dispatch_assert_queue_V2(mapQueue);

  if ([mapsCopy isTracked])
  {
    uniqueIdentifier = [mapsCopy uniqueIdentifier];
    if (uniqueIdentifier)
    {
      uuidToCoordinatorMap = [(IXSCoordinatorManager *)self uuidToCoordinatorMap];
      v8 = [uuidToCoordinatorMap objectForKeyedSubscript:uniqueIdentifier];

      if (v8)
      {
        identity = [mapsCopy identity];
        v10 = identity != 0;
        if (identity)
        {
          [mapsCopy setIsTracked:0];
          identityToCoordinatorMap = [(IXSCoordinatorManager *)self identityToCoordinatorMap];
          [identityToCoordinatorMap removeObjectForKey:identity];

          uuidToCoordinatorMap2 = [(IXSCoordinatorManager *)self uuidToCoordinatorMap];
          [uuidToCoordinatorMap2 removeObjectForKey:uniqueIdentifier];

          identityPriority = [(IXSCoordinatorManager *)self identityPriority];
          [identityPriority removeObject:identity];

          scopedToConnection = [mapsCopy scopedToConnection];
          connectionUUID = [scopedToConnection connectionUUID];

          if (connectionUUID)
          {
            connectionToProcessScopedCoordinatorMap = [(IXSCoordinatorManager *)self connectionToProcessScopedCoordinatorMap];
            v17 = [connectionToProcessScopedCoordinatorMap objectForKeyedSubscript:connectionUUID];

            [v17 removeObject:mapsCopy];
            if (![v17 count])
            {
              connectionToProcessScopedCoordinatorMap2 = [(IXSCoordinatorManager *)self connectionToProcessScopedCoordinatorMap];
              [connectionToProcessScopedCoordinatorMap2 removeObjectForKey:connectionUUID];
            }
          }
        }

        goto LABEL_14;
      }

      [mapsCopy setIsTracked:0];
    }

    v10 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v10 = 0;
LABEL_15:

  return v10;
}

- (void)_onMapQueue_saveIdentityPriority
{
  mapQueue = [(IXSCoordinatorManager *)self mapQueue];
  dispatch_assert_queue_V2(mapQueue);

  prioritySaveURL = [objc_opt_class() prioritySaveURL];
  identityPriority = [(IXSCoordinatorManager *)self identityPriority];
  v12 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:identityPriority requiringSecureCoding:1 error:&v12];
  v7 = v12;

  if (!v6)
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "[IXSCoordinatorManager _onMapQueue_saveIdentityPriority]";
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Failed to archive identity priority array: %@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  v11 = v7;
  v8 = [v6 writeToURL:prioritySaveURL options:1 error:&v11];
  v9 = v11;

  if ((v8 & 1) == 0)
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = "[IXSCoordinatorManager _onMapQueue_saveIdentityPriority]";
      v15 = 2112;
      v16 = prioritySaveURL;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Failed to save coordinator priority array to %@ : %@", buf, 0x20u);
    }

    v7 = v9;
LABEL_8:

    v9 = v7;
  }
}

- (BOOL)_coordinator:(id)_coordinator isApplicableToConnection:(id)connection
{
  _coordinatorCopy = _coordinator;
  connectionCopy = connection;
  v11 = 1;
  if (_coordinatorCopy)
  {
    if ([_coordinatorCopy coordinatorScope] == 1)
    {
      scopedToConnection = [_coordinatorCopy scopedToConnection];
      connectionUUID = [scopedToConnection connectionUUID];

      if (connectionUUID)
      {
        connectionUUID2 = [connectionCopy connectionUUID];
        v10 = [connectionUUID2 isEqual:connectionUUID];

        if (!v10)
        {
          v11 = 0;
        }
      }
    }
  }

  return v11;
}

- (id)coordinatorForUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000F898;
  v16 = sub_10000F8A8;
  v17 = 0;
  mapQueue = [(IXSCoordinatorManager *)self mapQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F8B0;
  block[3] = &unk_1001012B0;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(mapQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)coordinatorsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_opt_new();
  mapQueue = [(IXSCoordinatorManager *)self mapQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FA1C;
  block[3] = &unk_100101300;
  block[4] = self;
  v12 = identifierCopy;
  v13 = v5;
  v7 = v5;
  v8 = identifierCopy;
  dispatch_sync(mapQueue, block);

  v9 = [v7 copy];

  return v9;
}

- (id)_lookupCoordinatorForIdentity:(id)identity
{
  identityCopy = identity;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000F898;
  v16 = sub_10000F8A8;
  v17 = 0;
  mapQueue = [(IXSCoordinatorManager *)self mapQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FC9C;
  block[3] = &unk_1001012B0;
  v10 = identityCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identityCopy;
  dispatch_sync(mapQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_lookupCoordinatorForIdentity:(id)identity checkingScopeForConnection:(id)connection error:(id *)error
{
  identityCopy = identity;
  connectionCopy = connection;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_10000F898;
  v39 = sub_10000F8A8;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  mapQueue = [(IXSCoordinatorManager *)self mapQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010070;
  block[3] = &unk_100101328;
  v29 = &v35;
  block[4] = self;
  v11 = identityCopy;
  v28 = v11;
  v30 = &v31;
  dispatch_sync(mapQueue, block);
  if (!v36[5] || *(v32 + 24) == 1 && ([connectionCopy clientName], v12 = ;
  {
    clientName = [connectionCopy clientName];
    v16 = sub_1000405FC("[IXSCoordinatorManager _lookupCoordinatorForIdentity:checkingScopeForConnection:error:]", 411, @"IXErrorDomain", 6uLL, 0, 0, @"Failed to locate an existing coordinated app install with bundle ID %@ for client %@", v18, v11);
LABEL_8:

    goto LABEL_9;
  }

  if (![IXSCoordinatorManager _coordinator:"_coordinator:isApplicableToConnection:" isApplicableToConnection:?])
  {
    identity = [v36[5] identity];
    uniqueIdentifier = [v36[5] uniqueIdentifier];
    clientName2 = [connectionCopy clientName];
    v16 = sub_1000405FC("[IXSCoordinatorManager _lookupCoordinatorForIdentity:checkingScopeForConnection:error:]", 407, @"IXErrorDomain", 0x30uLL, 0, 0, @"Coordinator found for %@ with UUID %@ was process-scoped, but not for client %@.", v21, identity);

    clientName = v36[5];
    v36[5] = 0;
    goto LABEL_8;
  }

  v16 = 0;
LABEL_9:
  v22 = v36[5];
  if (error && !v22)
  {
    v23 = v16;
    *error = v16;
    v22 = v36[5];
  }

  v24 = v22;

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v24;
}

- (id)coordinatorForIdentity:(id)identity connection:(id)connection error:(id *)error creatingIfNotExisting:(id)existing
{
  identityCopy = identity;
  connectionCopy = connection;
  existingCopy = existing;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_10000F898;
  v38 = sub_10000F8A8;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10000F898;
  v32 = sub_10000F8A8;
  obj = 0;
  v13 = [(IXSCoordinatorManager *)self _lookupCoordinatorForIdentity:identityCopy checkingScopeForConnection:connectionCopy error:&obj];
  objc_storeStrong(&v39, obj);
  v33 = v13;
  if (!v29[5])
  {
    domain = [v35[5] domain];
    if ([domain isEqualToString:@"IXErrorDomain"])
    {
      code = [v35[5] code];

      if (existingCopy && code == 6)
      {
        v16 = v35[5];
        v35[5] = 0;

        createQueue = [(IXSCoordinatorManager *)self createQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100010414;
        block[3] = &unk_100101378;
        v25 = &v28;
        block[4] = self;
        v22 = identityCopy;
        v23 = connectionCopy;
        v24 = existingCopy;
        v26 = &v34;
        dispatch_sync(createQueue, block);
      }
    }

    else
    {
    }
  }

  v18 = v29[5];
  if (error && !v18)
  {
    *error = v35[5];
    v18 = v29[5];
  }

  v19 = v18;
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);

  return v19;
}

- (void)performCreationBlockingOperation:(id)operation
{
  operationCopy = operation;
  createQueue = [(IXSCoordinatorManager *)self createQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000109E8;
  v7[3] = &unk_1001013A0;
  v8 = operationCopy;
  v6 = operationCopy;
  sub_100071134(createQueue, v7);
}

- (void)unregisterCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  mapQueue = [(IXSCoordinatorManager *)self mapQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010BA8;
  block[3] = &unk_1001012B0;
  v10 = &v11;
  block[4] = self;
  v6 = coordinatorCopy;
  v9 = v6;
  dispatch_sync(mapQueue, block);

  if (*(v12 + 24) == 1)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[IXSCoordinatorManager unregisterCoordinator:]";
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Unregistered coordinator: %@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (BOOL)prioritizeCoordinatorWithIdentity:(id)identity
{
  identityCopy = identity;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  mapQueue = [(IXSCoordinatorManager *)self mapQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010DD4;
  block[3] = &unk_1001011C8;
  block[4] = self;
  v6 = identityCopy;
  v11 = v6;
  v12 = &v13;
  dispatch_sync(mapQueue, block);

  if (*(v14 + 24) == 1)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "[IXSCoordinatorManager prioritizeCoordinatorWithIdentity:]";
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Prioritized coordinator with ID %@", buf, 0x16u);
    }

    v8 = *(v14 + 24);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v8 & 1;
}

- (BOOL)prioritizeCoordinator:(id)coordinator
{
  identity = [coordinator identity];
  if (identity)
  {
    v5 = [(IXSCoordinatorManager *)self prioritizeCoordinatorWithIdentity:identity];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_enumerateCoordinatorsForConnection:(id)connection usingBlock:(id)block
{
  connectionCopy = connection;
  blockCopy = block;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10000F898;
  v23 = sub_10000F8A8;
  v24 = objc_opt_new();
  mapQueue = [(IXSCoordinatorManager *)self mapQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011118;
  block[3] = &unk_1001013C8;
  block[4] = self;
  block[5] = &v19;
  dispatch_sync(mapQueue, block);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v20[5];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v25 count:16];
  if (v10)
  {
    v11 = *v15;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v14 + 1) + 8 * v12);
      if ((!connectionCopy || [(IXSCoordinatorManager *)self _coordinator:*(*(&v14 + 1) + 8 * v12) isApplicableToConnection:connectionCopy, v14]) && !blockCopy[2](blockCopy, v13))
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v9 countByEnumeratingWithState:&v14 objects:v25 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v19, 8);
}

- (void)clearAllCoordinatorsForCreator:(unint64_t)creator
{
  v5 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = IXStringForClientID(creator);
    *buf = 136315394;
    *&buf[4] = "[IXSCoordinatorManager clearAllCoordinatorsForCreator:]";
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Clearing all coordinators for creator %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v22 = sub_10000F898;
  v23 = sub_10000F8A8;
  v24 = 0;
  mapQueue = [(IXSCoordinatorManager *)self mapQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000115BC;
  block[3] = &unk_100101268;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(mapQueue, block);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = *(*&buf[8] + 40);
  v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (!creator || [*(*(&v15 + 1) + 8 * v12) creator] == creator)
        {
          v14 = sub_1000405FC("[IXSCoordinatorManager clearAllCoordinatorsForCreator:]", 579, @"IXErrorDomain", 1uLL, 0, 0, @"Clearing all coordinators", v9, v15);
          [v13 cancelForReason:v14 client:15 error:0];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(buf, 8);
}

- (void)connectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  connectionUUID = [invalidatedCopy connectionUUID];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10000F898;
  v26 = sub_10000F8A8;
  v27 = 0;
  mapQueue = [(IXSCoordinatorManager *)self mapQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000118B4;
  block[3] = &unk_1001012B0;
  v21 = &v22;
  block[4] = self;
  v7 = connectionUUID;
  v20 = v7;
  dispatch_sync(mapQueue, block);

  if (v23[5])
  {
    clientName = [invalidatedCopy clientName];
    v10 = sub_1000405FC("[IXSCoordinatorManager connectionInvalidated:]", 609, @"IXErrorDomain", 0x2FuLL, 0, 0, @"Creator of this process-scoped coordinator, %@, has gone away canceling coordinator.", v9, clientName);;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v11 = v23[5];
    v12 = [v11 countByEnumeratingWithState:&v15 objects:v28 count:16];
    if (v12)
    {
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v15 + 1) + 8 * v14) cancelForReason:v10 client:15 error:0];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v15 objects:v28 count:16];
      }

      while (v12);
    }
  }

  _Block_object_dispose(&v22, 8);
}

- (void)convertProcessScopedCoordinatorToGlobalScoped:(id)scoped
{
  scopedCopy = scoped;
  scopedToConnection = [scopedCopy scopedToConnection];
  connectionUUID = [scopedToConnection connectionUUID];

  mapQueue = [(IXSCoordinatorManager *)self mapQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011B1C;
  block[3] = &unk_100101300;
  block[4] = self;
  v11 = connectionUUID;
  v12 = scopedCopy;
  v8 = scopedCopy;
  v9 = connectionUUID;
  dispatch_sync(mapQueue, block);
}

@end
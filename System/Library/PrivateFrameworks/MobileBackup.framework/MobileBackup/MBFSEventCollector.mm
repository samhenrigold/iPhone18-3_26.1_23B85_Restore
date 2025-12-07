@interface MBFSEventCollector
+ (void)markModificationsWith:(id)with since:(id)since domainManager:(id)manager persona:(id)persona cancellationHandler:(id)handler;
- (BOOL)_collectEventsFromPreviousState:(id)state persona:(id)persona cancellationHandler:(id)handler;
- (MBFSEventCollector)initWithDomainMarker:(id)marker;
- (id)_buildPathToDomainMapWithDomainManager:(id)manager;
- (id)_pathToModifiedDomainFlagsForVolume:(id)volume;
- (id)_pathToMonitorForVolume:(id)volume;
- (void)_buildEventReadersForPersona:(id)persona domainManager:(id)manager;
@end

@implementation MBFSEventCollector

- (MBFSEventCollector)initWithDomainMarker:(id)marker
{
  markerCopy = marker;
  v14.receiver = self;
  v14.super_class = MBFSEventCollector;
  v6 = [(MBFSEventCollector *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_domainMarker, marker);
    v8 = objc_opt_class();
    Name = class_getName(v8);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(Name, v10);
    eventQueue = v7->_eventQueue;
    v7->_eventQueue = v11;
  }

  return v7;
}

- (id)_pathToMonitorForVolume:(id)volume
{
  if ([volume isEqualToString:@"/private/var"])
  {
    return @"containers";
  }

  else
  {
    return @"Containers";
  }
}

- (id)_pathToModifiedDomainFlagsForVolume:(id)volume
{
  if ([volume isEqualToString:@"/private/var"])
  {
    v3 = &off_1003E1F50;
  }

  else
  {
    v3 = &off_1003E1F78;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001C7B18;
  v6[3] = &unk_1003C1158;
  v4 = objc_opt_new();
  v7 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

- (void)_buildEventReadersForPersona:(id)persona domainManager:(id)manager
{
  personaCopy = persona;
  managerCopy = manager;
  v22 = personaCopy;
  volumesToBackUp = [personaCopy volumesToBackUp];
  v21 = managerCopy;
  v25 = [(MBFSEventCollector *)self _buildPathToDomainMapWithDomainManager:managerCopy];
  v9 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(volumesToBackUp, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = volumesToBackUp;
  v26 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v26)
  {
    obj = v10;
    v24 = *v28;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [(MBFSEventCollector *)self _pathToMonitorForVolume:v12];
        v15 = [(MBFSEventCollector *)self _pathToModifiedDomainFlagsForVolume:v12];
        v16 = [v25 objectForKeyedSubscript:v12];
        v17 = [MBFSEventReader alloc];
        domainMarker = [(MBFSEventCollector *)self domainMarker];
        v19 = [(MBFSEventReader *)v17 initWithDomainMarker:domainMarker pathToMonitor:v14 pathToModifiedDomainFlags:v15 pathToDomainMapping:v16];

        [v9 setObject:v19 forKeyedSubscript:v12];
        objc_autoreleasePoolPop(v13);
        v11 = v11 + 1;
      }

      while (v26 != v11);
      v10 = obj;
      v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v26);
  }

  v20 = [v9 count];
  if (v20 != [v10 count])
  {
    __assert_rtn("[MBFSEventCollector _buildEventReadersForPersona:domainManager:]", "MBFSEventCollector.m", 203, "readerForVolume.count == volumesToBackUp.count");
  }

  [(MBFSEventCollector *)self setReaderForVolume:v9];
}

- (id)_buildPathToDomainMapWithDomainManager:(id)manager
{
  managerCopy = manager;
  v34 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  selfCopy = self;
  domainMarker = [(MBFSEventCollector *)self domainMarker];
  unmodifiedDomainNames = [domainMarker unmodifiedDomainNames];

  obj = unmodifiedDomainNames;
  v7 = [unmodifiedDomainNames countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    v29 = *v41;
    v30 = managerCopy;
    do
    {
      v10 = 0;
      v32 = v8;
      do
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v40 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        if (([managerCopy containsDomainName:v11] & 1) == 0)
        {
          __assert_rtn("[MBFSEventCollector _buildPathToDomainMapWithDomainManager:]", "MBFSEventCollector.m", 211, "[domainManager containsDomainName:domainName]");
        }

        v13 = [managerCopy domainForName:v11];
        if ([v13 supportsFSEventsForDetectingChanges])
        {
          v35 = v12;
          volumeMountPoint = [v13 volumeMountPoint];
          v15 = [v34 objectForKeyedSubscript:volumeMountPoint];
          if (!v15)
          {
            v15 = objc_opt_new();
            [v34 setObject:v15 forKeyedSubscript:volumeMountPoint];
          }

          rootPathRelativeToVolumeMountPoint = [v13 rootPathRelativeToVolumeMountPoint];
          [v15 setObject:v13 forKeyedSubscript:rootPathRelativeToVolumeMountPoint];
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          relativePathsToBackup = [v13 relativePathsToBackup];
          v18 = [relativePathsToBackup countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v37;
            do
            {
              for (i = 0; i != v19; i = i + 1)
              {
                if (*v37 != v20)
                {
                  objc_enumerationMutation(relativePathsToBackup);
                }

                v22 = [rootPathRelativeToVolumeMountPoint stringByAppendingPathComponent:*(*(&v36 + 1) + 8 * i)];
                [v15 setObject:v13 forKeyedSubscript:v22];
              }

              v19 = [relativePathsToBackup countByEnumeratingWithState:&v36 objects:v44 count:16];
            }

            while (v19);
          }

          v9 = v29;
          managerCopy = v30;
          v8 = v32;
          v12 = v35;
        }

        else
        {
          v23 = MBGetDefaultLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            name = [v13 name];
            rootPath = [v13 rootPath];
            *buf = 138412546;
            v46 = name;
            v47 = 2112;
            v48 = rootPath;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Skipping FSEvents for: %@ path:%@", buf, 0x16u);

            name2 = [v13 name];
            rootPath2 = [v13 rootPath];
            _MBLog(@"Df", "Skipping FSEvents for: %@ path:%@", name2, rootPath2);
          }

          volumeMountPoint = [(MBFSEventCollector *)selfCopy domainMarker];
          [volumeMountPoint markModifiedDomain:v11];
        }

        objc_autoreleasePoolPop(v12);
        v10 = v10 + 1;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v8);
  }

  return v34;
}

- (BOOL)_collectEventsFromPreviousState:(id)state persona:(id)persona cancellationHandler:(id)handler
{
  stateCopy = state;
  personaCopy = persona;
  handlerCopy = handler;
  v104 = 0;
  v105 = &v104;
  v106 = 0x2020000000;
  v107 = 0;
  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  v103 = 0;
  group = dispatch_group_create();
  v67 = objc_opt_new();
  [personaCopy volumesToBackUp];
  v68 = handlerCopy;
  v64 = personaCopy;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  obj = v97 = 0u;
  v9 = [obj countByEnumeratingWithState:&v96 objects:v114 count:16];
  if (!v9)
  {
    goto LABEL_19;
  }

  v77 = *v97;
  while (2)
  {
    v75 = v9;
    for (i = 0; i != v75; i = i + 1)
    {
      if (*v97 != v77)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v96 + 1) + 8 * i);
      v95 = 0;
      v12 = [MBFileSystemManager volumeUUIDWithVolumeMountPoint:v11 error:&v95];
      v13 = v95;
      if (!v12)
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v11;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to fetch volumeUUID for %{public}@", buf, 0xCu);
          _MBLog(@"E ", "Failed to fetch volumeUUID for %{public}@", v11);
        }

        atomic_fetch_add(v105 + 3, 1uLL);
        goto LABEL_18;
      }

      eventId = [stateCopy eventId];
      unsignedLongLongValue = [eventId unsignedLongLongValue];

      eventDatabaseUUIDForVolumeUUID = [stateCopy eventDatabaseUUIDForVolumeUUID];
      uUIDString = [v12 UUIDString];
      v18 = [eventDatabaseUUIDForVolumeUUID objectForKeyedSubscript:uUIDString];

      if (!v18)
      {
        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v12;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to fetch databaseUUID for volumeUUID %{public}@", buf, 0xCu);
          _MBLog(@"E ", "Failed to fetch databaseUUID for volumeUUID %{public}@", v12);
        }

        atomic_fetch_add(v105 + 3, 1uLL);
LABEL_18:

        goto LABEL_19;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v112 = sub_1001C8E90;
      *&v113 = sub_1001C8EA0;
      readerForVolume = [(MBFSEventCollector *)self readerForVolume];
      *(&v113 + 1) = [readerForVolume objectForKeyedSubscript:v11];

      if (!*(*&buf[8] + 40))
      {
        __assert_rtn("[MBFSEventCollector _collectEventsFromPreviousState:persona:cancellationHandler:]", "MBFSEventCollector.m", 261, "reader");
      }

      v20 = [MBFSEventStream alloc];
      eventQueue = [(MBFSEventCollector *)self eventQueue];
      pathToMonitor = [*(*&buf[8] + 40) pathToMonitor];
      v94[0] = _NSConcreteStackBlock;
      v94[1] = 3221225472;
      v94[2] = sub_1001C8EA8;
      v94[3] = &unk_1003C1180;
      v94[4] = &v100;
      v94[5] = buf;
      v23 = [(MBFSEventStream *)v20 initWithQueue:eventQueue volumeMountPoint:v11 databaseUUID:v18 eventID:unsignedLongLongValue rootPathToMonitor:pathToMonitor eventHandler:v94];

      dispatch_group_enter(group);
      v91[0] = _NSConcreteStackBlock;
      v91[1] = 3221225472;
      v91[2] = sub_1001C8EDC;
      v91[3] = &unk_1003BC160;
      v93 = &v104;
      v92 = group;
      [(MBFSEventStream *)v23 startWithCompletion:v91];
      [v67 addObject:v23];

      _Block_object_dispose(buf, 8);
    }

    v9 = [obj countByEnumeratingWithState:&v96 objects:v114 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_19:

  v26 = 0;
  v27 = 0;
  do
  {
    ++v27;
    if (0xAAAAAAAAAAAAAAABLL * v27 <= 0x5555555555555555)
    {
      v29 = atomic_load(v101 + 3);
      v28 = v29 == v26;
      v26 = v29;
    }

    else
    {
      v28 = 0;
    }

    v30 = atomic_load(v105 + 3);
    if (v68)
    {
      v31 = v68[2]();
    }

    else
    {
      v31 = 0;
    }

    if (((v28 | v31) & 1) != 0 || v30)
    {
      v32 = MBGetDefaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        v33 = v30 != 0;
        *&buf[4] = v28;
        *&buf[8] = 1024;
        *&buf[10] = v31;
        *&buf[14] = 1024;
        *&buf[16] = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Stopping FSEvent collection timedOut:%d cancelled:%d failed:%d", buf, 0x14u);
        _MBLog(@"E ", "Stopping FSEvent collection timedOut:%d cancelled:%d failed:%d", v28, v31, v33);
      }

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v34 = v67;
      v35 = [v34 countByEnumeratingWithState:&v87 objects:v110 count:16];
      if (v35)
      {
        v36 = *v88;
        do
        {
          for (j = 0; j != v35; j = j + 1)
          {
            if (*v88 != v36)
            {
              objc_enumerationMutation(v34);
            }

            [*(*(&v87 + 1) + 8 * j) cancel];
          }

          v35 = [v34 countByEnumeratingWithState:&v87 objects:v110 count:16];
        }

        while (v35);
      }
    }

    v38 = dispatch_time(0, 10000000000);
  }

  while (dispatch_group_wait(group, v38));
  v39 = atomic_load(v105 + 3);
  v63 = v39;
  if (!v39)
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v71 = obj;
    v40 = [v71 countByEnumeratingWithState:&v83 objects:v109 count:16];
    if (v40)
    {
      v76 = 0;
      v78 = 0;
      v41 = 0;
      v72 = *v84;
      do
      {
        v42 = 0;
        v73 = v40;
        do
        {
          if (*v84 != v72)
          {
            objc_enumerationMutation(v71);
          }

          v43 = *(*(&v83 + 1) + 8 * v42);
          readerForVolume2 = [(MBFSEventCollector *)self readerForVolume];
          v45 = [readerForVolume2 objectForKeyedSubscript:v43];

          eventsCollected = [v45 eventsCollected];
          eventsSkipped = [v45 eventsSkipped];
          modifiedDomainsFlags = [v45 modifiedDomainsFlags];
          v49 = MBGetDefaultLog();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            v50 = v49;
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              v70 = v41;
              modifiedDomainsFlags2 = [v45 modifiedDomainsFlags];
              eventsCollected2 = [v45 eventsCollected];
              eventsSkipped2 = [v45 eventsSkipped];
              *buf = 134218754;
              *&buf[4] = modifiedDomainsFlags2;
              *&buf[12] = 2048;
              *&buf[14] = eventsCollected2;
              *&buf[22] = 2048;
              v112 = eventsSkipped2;
              LOWORD(v113) = 2114;
              *(&v113 + 2) = v43;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "FSEvents Scan flags:0x%lx collected:%llu skipped:%llu for %{public}@", buf, 0x2Au);
              v41 = v70;
            }

            _MBLog(@"I ", "FSEvents Scan flags:0x%lx collected:%llu skipped:%llu for %{public}@", [v45 modifiedDomainsFlags], objc_msgSend(v45, "eventsCollected"), objc_msgSend(v45, "eventsSkipped"), v43);
          }

          v76 += eventsCollected;
          v41 = (v41 + eventsSkipped);
          v78 |= modifiedDomainsFlags;
          v42 = v42 + 1;
        }

        while (v73 != v42);
        v40 = [v71 countByEnumeratingWithState:&v83 objects:v109 count:16];
      }

      while (v40);
    }

    else
    {
      v76 = 0;
      v78 = 0;
      v41 = 0;
    }

    v54 = MBGetDefaultLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v78;
      *&buf[12] = 2048;
      *&buf[14] = v76;
      *&buf[22] = 2048;
      v112 = v41;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "FSEvents Scan flags:0x%lx collected:%llu skipped:%llu", buf, 0x20u);
      _MBLog(@"Df", "FSEvents Scan flags:0x%lx collected:%llu skipped:%llu", v78, v76, v41);
    }

    if (v78)
    {
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      domainMarker = [(MBFSEventCollector *)self domainMarker];
      unmodifiedDomainNames = [domainMarker unmodifiedDomainNames];

      v57 = [unmodifiedDomainNames countByEnumeratingWithState:&v79 objects:v108 count:16];
      if (v57)
      {
        v58 = *v80;
        do
        {
          for (k = 0; k != v57; k = k + 1)
          {
            if (*v80 != v58)
            {
              objc_enumerationMutation(unmodifiedDomainNames);
            }

            v60 = *(*(&v79 + 1) + 8 * k);
            if ((v78 & 1) != 0 && ([MBDomain isSystemSharedContainerName:*(*(&v79 + 1) + 8 * k)]& 1) != 0 || (v78 & 2) != 0 && ([MBDomain isSystemContainerName:v60]& 1) != 0 || (v78 & 4) != 0 && ([MBDomain isAppName:v60]& 1) != 0 || (v78 & 8) != 0 && ([MBDomain isAppPluginName:v60]& 1) != 0 || (v78 & 0x10) != 0 && [MBDomain isAppGroupName:v60])
            {
              domainMarker2 = [(MBFSEventCollector *)self domainMarker];
              [domainMarker2 markModifiedDomain:v60];
            }
          }

          v57 = [unmodifiedDomainNames countByEnumeratingWithState:&v79 objects:v108 count:16];
        }

        while (v57);
      }
    }
  }

  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(&v104, 8);

  return v63 == 0;
}

+ (void)markModificationsWith:(id)with since:(id)since domainManager:(id)manager persona:(id)persona cancellationHandler:(id)handler
{
  withCopy = with;
  sinceCopy = since;
  managerCopy = manager;
  personaCopy = persona;
  handlerCopy = handler;
  v16 = objc_autoreleasePoolPush();
  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Marking modifications using FSEvents", buf, 2u);
    _MBLog(@"Df", "Marking modifications using FSEvents");
  }

  v18 = [[MBFSEventCollector alloc] initWithDomainMarker:withCopy];
  [(MBFSEventCollector *)v18 _buildEventReadersForPersona:personaCopy domainManager:managerCopy];
  if (![(MBFSEventCollector *)v18 _collectEventsFromPreviousState:sinceCopy persona:personaCopy cancellationHandler:handlerCopy]&& (handlerCopy[2](handlerCopy) & 1) == 0)
  {
    v25 = v16;
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to collect FSEvents, marking all domains as modified", buf, 2u);
      _MBLog(@"E ", "Failed to collect FSEvents, marking all domains as modified");
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    unmodifiedDomainNames = [withCopy unmodifiedDomainNames];
    v21 = [unmodifiedDomainNames countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v27;
      do
      {
        v24 = 0;
        do
        {
          if (*v27 != v23)
          {
            objc_enumerationMutation(unmodifiedDomainNames);
          }

          [withCopy markModifiedDomain:*(*(&v26 + 1) + 8 * v24)];
          v24 = v24 + 1;
        }

        while (v22 != v24);
        v22 = [unmodifiedDomainNames countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v22);
    }

    v16 = v25;
  }

  objc_autoreleasePoolPop(v16);
}

@end
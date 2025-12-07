@interface DSSnapshotRequest
- (BOOL)__collectSpaceAttributionSnapshot:(id *)snapshot;
- (BOOL)__createPreSnapshotVolumeManagerUsingProvider:(id)provider error:(id *)error;
- (BOOL)__createSnapshotFileManagerUsingProvider:(id)provider error:(id *)error;
- (BOOL)_setupManagersAndProgress:(id)progress volumeManagerProvider:(id)provider error:(id *)error;
- (DSSnapshotRequest)initWithOptions:(id)options;
- (NSString)debugDescription;
- (NSString)description;
- (id)__createVolumeManagerUsingProvider:(id)provider error:(id *)error;
- (id)__doDataCollection:(id *)collection;
- (id)__fetchMetadata;
- (id)__stockSnapshotFileManagerProvider;
- (id)__stockVolumeManagerProvider;
- (id)executeWithError:(id *)error;
- (void)__createPowerAssertions;
- (void)__incrementProgress:(id)progress byPercent:(float)percent;
- (void)__initializeProgress;
- (void)__releasePowerAssertions;
@end

@implementation DSSnapshotRequest

- (id)__stockSnapshotFileManagerProvider
{
  if (qword_10006E548 != -1)
  {
    sub_100030230();
  }

  v2 = objc_retainBlock(qword_10006E540);

  return v2;
}

- (id)__stockVolumeManagerProvider
{
  if (qword_10006E558 != -1)
  {
    sub_100030244();
  }

  v2 = objc_retainBlock(qword_10006E550);

  return v2;
}

- (id)__fetchMetadata
{
  v2 = shared_filesystem_metadata_snapshot_service_log_handle(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Fetching metadata", buf, 2u);
  }

  snapshotFileManager = [(DSSnapshotRequest *)self snapshotFileManager];
  v4 = fprintf([snapshotFileManager sharedLogFile], "%s\t%s\n", "Version:", "1013") == -1;

  if (v4)
  {
    v5 = __error();
    if ((byte_10006E560 & 1) == 0)
    {
      byte_10006E560 = 1;
      v6 = shared_filesystem_metadata_snapshot_service_log_handle(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  snapshotFileManager2 = [(DSSnapshotRequest *)self snapshotFileManager];
  v8 = fprintf([snapshotFileManager2 sharedLogFile], "%s\t%s\n", "Snapshot Version:", objc_msgSend(@"2.7", "UTF8String")) == -1;

  if (v8)
  {
    v9 = __error();
    if ((byte_10006E561 & 1) == 0)
    {
      byte_10006E561 = 1;
      v10 = shared_filesystem_metadata_snapshot_service_log_handle(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v136 = [NSMutableDictionary dictionaryWithCapacity:10];
  [v136 setObject:@"1013" forKeyedSubscript:@"DiskSpaceDiagnosticsVersion"];
  [v136 setObject:@"2.7" forKeyedSubscript:@"SnapshotVersion"];
  options = [(DSSnapshotRequest *)self options];
  v12 = [options objectForKeyedSubscript:@"FilesystemMetadatSnapshotOptionShouldHashVolumeListings"];
  v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 BOOLValue]);
  [v136 setObject:v13 forKeyedSubscript:@"HasHashedFSListings"];

  beginDate = [(DSSnapshotRequest *)self beginDate];
  v15 = +[NSTimeZone systemTimeZone];
  v16 = [NSISO8601DateFormatter stringFromDate:beginDate timeZone:v15 formatOptions:3955];
  [v136 setObject:v16 forKeyedSubscript:@"TimestampBegin"];

  v18 = shared_filesystem_metadata_snapshot_service_log_handle(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Fetching device info", buf, 2u);
  }

  v135 = MGCopyAnswer();
  v134 = MGCopyAnswer();
  v133 = MGCopyAnswer();
  v132 = MGCopyAnswer();
  v131 = MGCopyAnswer();
  v130 = MGCopyAnswer();
  v129 = MGCopyAnswer();
  [v136 setObject:v135 forKeyedSubscript:@"HardwareModel"];
  [v136 setObject:v134 forKeyedSubscript:@"MarketingName"];
  v130 = [NSString stringWithFormat:@"%@ %@ %@ (%@)", v133, v132, v131, v130];
  [v136 setObject:v130 forKeyedSubscript:@"OSVersion"];

  [v136 setObject:v129 forKeyedSubscript:@"InternalBuild"];
  __miscProgress = [(DSSnapshotRequest *)self __miscProgress];
  LODWORD(v21) = 10.0;
  [(DSSnapshotRequest *)self __incrementProgress:__miscProgress byPercent:v21];

  v23 = shared_filesystem_metadata_snapshot_service_log_handle(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Fetching indirection table stats", buf, 2u);
  }

  v24 = +[NSDate now];
  v25 = indirectionTableStatistics();
  [v136 addEntriesFromDictionary:v25];

  v26 = +[NSDate now];
  [v26 timeIntervalSinceDate:v24];
  v28 = v27;
  snapshotFileManager3 = [(DSSnapshotRequest *)self snapshotFileManager];
  v30 = fprintf([snapshotFileManager3 sharedLogFile], "%s duration: %.0f seconds\n", "[Metadata] Indirection table stats", v28) == -1;

  if (v30)
  {
    v31 = __error();
    if ((byte_10006E562 & 1) == 0)
    {
      byte_10006E562 = 1;
      v32 = shared_filesystem_metadata_snapshot_service_log_handle(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v33 = shared_filesystem_metadata_snapshot_service_log_handle(v31);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[Metadata] Indirection table stats";
    *&buf[12] = 2048;
    *&buf[14] = v28;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
  }

  [(DSSnapshotRequestTelemetryReporter *)self->__telemetryReporter setSnapshotMetadataIndirectionTableStatsDurationSec:v28];
  __miscProgress2 = [(DSSnapshotRequest *)self __miscProgress];
  LODWORD(v35) = 10.0;
  [(DSSnapshotRequest *)self __incrementProgress:__miscProgress2 byPercent:v35];

  v37 = shared_filesystem_metadata_snapshot_service_log_handle(v36);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Fetching apfs volume info", buf, 2u);
  }

  v38 = +[NSDate now];
  snapshotFileManager4 = [(DSSnapshotRequest *)self snapshotFileManager];
  v40 = apfsVolumeInfo([snapshotFileManager4 sharedLogFile]);
  [v136 addEntriesFromDictionary:v40];

  v41 = +[NSDate now];
  [v41 timeIntervalSinceDate:v38];
  v43 = v42;
  snapshotFileManager5 = [(DSSnapshotRequest *)self snapshotFileManager];
  v45 = fprintf([snapshotFileManager5 sharedLogFile], "%s duration: %.0f seconds\n", "[Metadata] APFS volume info", v43) == -1;

  if (v45)
  {
    v46 = __error();
    if ((byte_10006E563 & 1) == 0)
    {
      byte_10006E563 = 1;
      v47 = shared_filesystem_metadata_snapshot_service_log_handle(v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v48 = shared_filesystem_metadata_snapshot_service_log_handle(v46);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[Metadata] APFS volume info";
    *&buf[12] = 2048;
    *&buf[14] = v43;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
  }

  [(DSSnapshotRequestTelemetryReporter *)self->__telemetryReporter setSnapshotMetadataAPFSVolumeInfoDurationSec:v43];
  __miscProgress3 = [(DSSnapshotRequest *)self __miscProgress];
  LODWORD(v50) = 10.0;
  [(DSSnapshotRequest *)self __incrementProgress:__miscProgress3 byPercent:v50];

  v52 = shared_filesystem_metadata_snapshot_service_log_handle(v51);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Fetching snapshot info", buf, 2u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v154 = 0;
  v53 = objc_alloc_init(NSMutableDictionary);
  _volumeManager = [(DSSnapshotRequest *)self _volumeManager];
  volumesForSnapshotting = [_volumeManager volumesForSnapshotting];
  v143[0] = _NSConcreteStackBlock;
  v143[1] = 3221225472;
  v143[2] = sub_100007DB4;
  v143[3] = &unk_1000688A0;
  v56 = v53;
  v144 = v56;
  selfCopy = self;
  v146 = buf;
  [volumesForSnapshotting enumerateObjectsUsingBlock:v143];

  [(DSSnapshotRequestTelemetryReporter *)self->__telemetryReporter setSnapshotMetadataAPFSSnapshotInfoDurationSec:*(*&buf[8] + 24)];
  v151 = @"FSSnapshots";
  v152 = v56;
  v57 = [NSDictionary dictionaryWithObjects:&v152 forKeys:&v151 count:1];
  [v136 addEntriesFromDictionary:v57];

  _Block_object_dispose(buf, 8);
  v59 = shared_filesystem_metadata_snapshot_service_log_handle(v58);
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Fetching volume info", buf, 2u);
  }

  v60 = +[NSDate now];
  _volumeManager2 = [(DSSnapshotRequest *)self _volumeManager];
  allVolumesInfoDict = [_volumeManager2 allVolumesInfoDict];
  [v136 addEntriesFromDictionary:allVolumesInfoDict];

  __stockVolumeManagerProvider = [(DSSnapshotRequest *)self __stockVolumeManagerProvider];
  v64 = [(DSSnapshotRequest *)self __createVolumeManagerUsingProvider:__stockVolumeManagerProvider error:0];

  allVolumesInfoDict2 = [v64 allVolumesInfoDict];
  v149 = @"VolumesPostSnapshot";
  v66 = [allVolumesInfoDict2 objectForKeyedSubscript:@"Volumes"];
  v150 = v66;
  v67 = [NSDictionary dictionaryWithObjects:&v150 forKeys:&v149 count:1];

  [v136 addEntriesFromDictionary:v67];
  v68 = +[NSDate now];
  [v68 timeIntervalSinceDate:v60];
  v70 = v69;
  snapshotFileManager6 = [(DSSnapshotRequest *)self snapshotFileManager];
  v72 = fprintf([snapshotFileManager6 sharedLogFile], "%s duration: %.0f seconds\n", "[Metadata] Volume info", v70) == -1;

  if (v72)
  {
    v73 = __error();
    if ((byte_10006E565 & 1) == 0)
    {
      byte_10006E565 = 1;
      v74 = shared_filesystem_metadata_snapshot_service_log_handle(v73);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v75 = shared_filesystem_metadata_snapshot_service_log_handle(v73);
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[Metadata] Volume info";
    *&buf[12] = 2048;
    *&buf[14] = v70;
    _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
  }

  [(DSSnapshotRequestTelemetryReporter *)self->__telemetryReporter setSnapshotMetadataVolumeInfoDurationSec:v70];
  __miscProgress4 = [(DSSnapshotRequest *)self __miscProgress];
  LODWORD(v77) = 10.0;
  [(DSSnapshotRequest *)self __incrementProgress:__miscProgress4 byPercent:v77];

  v79 = shared_filesystem_metadata_snapshot_service_log_handle(v78);
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Fetching unlinked-open-files", buf, 2u);
  }

  v80 = +[NSDate now];
  snapshotFileManager7 = [(DSSnapshotRequest *)self snapshotFileManager];
  v82 = unlinkedOpenFiles([snapshotFileManager7 sharedLogFile]);
  [v136 addEntriesFromDictionary:v82];

  v83 = +[NSDate now];
  [v83 timeIntervalSinceDate:v80];
  v85 = v84;
  snapshotFileManager8 = [(DSSnapshotRequest *)self snapshotFileManager];
  v87 = fprintf([snapshotFileManager8 sharedLogFile], "%s duration: %.0f seconds\n", "[Metadata] Unlinked open files", v85) == -1;

  if (v87)
  {
    v88 = __error();
    if ((byte_10006E566 & 1) == 0)
    {
      byte_10006E566 = 1;
      v89 = shared_filesystem_metadata_snapshot_service_log_handle(v88);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v90 = shared_filesystem_metadata_snapshot_service_log_handle(v88);
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[Metadata] Unlinked open files";
    *&buf[12] = 2048;
    *&buf[14] = v85;
    _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
  }

  [(DSSnapshotRequestTelemetryReporter *)self->__telemetryReporter setSnapshotMetadataUnlinkedOpenFilesDurationSec:v85];
  __miscProgress5 = [(DSSnapshotRequest *)self __miscProgress];
  LODWORD(v92) = 10.0;
  [(DSSnapshotRequest *)self __incrementProgress:__miscProgress5 byPercent:v92];

  v94 = shared_filesystem_metadata_snapshot_service_log_handle(v93);
  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "Fetching CacheDelete info", buf, 2u);
  }

  v128 = +[NSDate now];
  v95 = +[NSMutableArray array];
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  _volumeManager3 = [(DSSnapshotRequest *)self _volumeManager];
  obj = [_volumeManager3 volumesForSnapshotting];

  v97 = [obj countByEnumeratingWithState:&v139 objects:v148 count:16];
  if (v97)
  {
    v98 = *v140;
    do
    {
      v99 = 0;
      do
      {
        if (*v140 != v98)
        {
          objc_enumerationMutation(obj);
        }

        v100 = *(*(&v139 + 1) + 8 * v99);
        v101 = objc_autoreleasePoolPush();
        v102 = shared_filesystem_metadata_snapshot_service_log_handle(v101);
        if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          *&buf[4] = v100;
          _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_INFO, "Fetching CacheDelete info for %{public}@", buf, 0xCu);
        }

        v103 = +[NSDate now];
        mountPoint = [v100 mountPoint];
        v105 = cacheDeleteInfo(mountPoint);
        [v95 addObject:v105];

        __cacheDeleteProgress = [(DSSnapshotRequest *)self __cacheDeleteProgress];
        progress = [v100 progress];
        [__cacheDeleteProgress setCompletedUnitCount:{(objc_msgSend(__cacheDeleteProgress, "completedUnitCount") + objc_msgSend(progress, "totalUnitCount") * 0.1)}];

        v108 = +[NSDate now];
        [v108 timeIntervalSinceDate:v103];
        v110 = v109;
        snapshotFileManager9 = [(DSSnapshotRequest *)self snapshotFileManager];
        LODWORD(v105) = fprintf([snapshotFileManager9 sharedLogFile], "%s duration: %.0f seconds\n", "[Metadata] CacheDeleteInfo for volume", v110) == -1;

        if (v105)
        {
          v112 = __error();
          if ((byte_10006E567 & 1) == 0)
          {
            v113 = *v112;
            byte_10006E567 = 1;
            v114 = shared_filesystem_metadata_snapshot_service_log_handle(v112);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_FAULT))
            {
              *buf = 67109120;
              *&buf[4] = v113;
              _os_log_fault_impl(&_mh_execute_header, v114, OS_LOG_TYPE_FAULT, "Failed to write to file: %{darwin.errno}d", buf, 8u);
            }
          }
        }

        v115 = shared_filesystem_metadata_snapshot_service_log_handle(v112);
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "[Metadata] CacheDeleteInfo for volume";
          *&buf[12] = 2048;
          *&buf[14] = v110;
          _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
        }

        v117 = shared_filesystem_metadata_snapshot_service_log_handle(v116);
        if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
        {
          sub_100030258(v147, self);
        }

        objc_autoreleasePoolPop(v101);
        v99 = v99 + 1;
      }

      while (v97 != v99);
      v97 = [obj countByEnumeratingWithState:&v139 objects:v148 count:16];
    }

    while (v97);
  }

  v118 = +[NSDate now];
  [v118 timeIntervalSinceDate:v128];
  v120 = v119;
  snapshotFileManager10 = [(DSSnapshotRequest *)self snapshotFileManager];
  v122 = fprintf([snapshotFileManager10 sharedLogFile], "%s duration: %.0f seconds\n", "[Metadata] CacheDeleteInfo", v120) == -1;

  if (v122)
  {
    v123 = __error();
    if ((byte_10006E568 & 1) == 0)
    {
      byte_10006E568 = 1;
      v124 = shared_filesystem_metadata_snapshot_service_log_handle(v123);
      if (os_log_type_enabled(v124, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v125 = shared_filesystem_metadata_snapshot_service_log_handle(v123);
  if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[Metadata] CacheDeleteInfo";
    *&buf[12] = 2048;
    *&buf[14] = v120;
    _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
  }

  [(DSSnapshotRequestTelemetryReporter *)self->__telemetryReporter setSnapshotMetadataCacheDeleteDurationSec:v120];
  [v136 setObject:v95 forKeyedSubscript:@"CacheDeletePerVolumeInfo"];

  v126 = v136;
  return v136;
}

- (BOOL)__collectSpaceAttributionSnapshot:(id *)snapshot
{
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = sub_100008970;
  v85 = sub_100008980;
  v86 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = sub_100008970;
  v79 = sub_100008980;
  v80 = 0;
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_100008988;
  v74[3] = &unk_1000688C8;
  v74[4] = &v81;
  v74[5] = &v75;
  [SAReporter reportSnapshot:v74];
  if (!v82[5] && v76[5])
  {
    snapshotFileManager = [(DSSnapshotRequest *)self snapshotFileManager];
    v21 = (v82 + 5);
    obj = v82[5];
    v22 = [snapshotFileManager fileURLForFileNamed:@"SpaceAttributionSnapshot.plist" error:&obj];
    objc_storeStrong(v21, obj);

    if (v22)
    {
      v23 = v76[5];
      v24 = (v82 + 5);
      v72 = v82[5];
      v25 = [v23 writeToURL:v22 error:&v72];
      objc_storeStrong(v24, v72);
      if (v25)
      {
        v27 = shared_filesystem_metadata_snapshot_service_log_handle(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Successfully collected SpaceAttribution snapshot", buf, 2u);
        }

        v19 = 1;
        goto LABEL_52;
      }

      snapshotFileManager2 = [(DSSnapshotRequest *)self snapshotFileManager];
      sharedLogFile = [snapshotFileManager2 sharedLogFile];
      localizedDescription = [v82[5] localizedDescription];
      v46 = localizedDescription;
      uTF8String = [localizedDescription UTF8String];
      v48 = [v76[5] description];
      v49 = v48;
      LODWORD(sharedLogFile) = fprintf(sharedLogFile, "Error: Failed to write SpaceAttribution snapshot to file: %s\n%s\n", uTF8String, [v48 UTF8String]) == -1;

      if (sharedLogFile)
      {
        v50 = __error();
        if ((byte_10006E56D & 1) == 0)
        {
          byte_10006E56D = 1;
          v51 = shared_filesystem_metadata_snapshot_service_log_handle(v50);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      v52 = shared_filesystem_metadata_snapshot_service_log_handle(v50);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        localizedDescription2 = [v82[5] localizedDescription];
        v67 = localizedDescription2;
        uTF8String2 = [localizedDescription2 UTF8String];
        v69 = [v76[5] description];
        v70 = v69;
        uTF8String3 = [v69 UTF8String];
        *buf = 136315394;
        v88 = uTF8String2;
        v89 = 2080;
        v90 = uTF8String3;
        _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Error: Failed to write SpaceAttribution snapshot to file: %s\n%s", buf, 0x16u);
      }

      if (snapshot)
      {
        v42 = v82[5];
        goto LABEL_50;
      }
    }

    else
    {
      snapshotFileManager3 = [(DSSnapshotRequest *)self snapshotFileManager];
      sharedLogFile2 = [snapshotFileManager3 sharedLogFile];
      localizedDescription3 = [v82[5] localizedDescription];
      v31 = localizedDescription3;
      LODWORD(sharedLogFile2) = fprintf(sharedLogFile2, "Error: Failed to get file URL for writing SpaceAttribution snapshot: %s\n", [localizedDescription3 UTF8String]) == -1;

      if (sharedLogFile2)
      {
        v32 = __error();
        if ((byte_10006E56B & 1) == 0)
        {
          byte_10006E56B = 1;
          v33 = shared_filesystem_metadata_snapshot_service_log_handle(v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      v34 = shared_filesystem_metadata_snapshot_service_log_handle(v32);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        localizedDescription4 = [v82[5] localizedDescription];
        v61 = localizedDescription4;
        uTF8String4 = [localizedDescription4 UTF8String];
        *buf = 136315138;
        v88 = uTF8String4;
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Error: Failed to get file URL for writing SpaceAttribution snapshot: %s", buf, 0xCu);
      }

      snapshotFileManager4 = [(DSSnapshotRequest *)self snapshotFileManager];
      sharedLogFile3 = [snapshotFileManager4 sharedLogFile];
      v37 = [v76[5] description];
      v38 = v37;
      LODWORD(sharedLogFile3) = fprintf(sharedLogFile3, "SpaceAttribution snapshot: %s\n", [v37 UTF8String]) == -1;

      if (sharedLogFile3)
      {
        v39 = __error();
        if ((byte_10006E56C & 1) == 0)
        {
          byte_10006E56C = 1;
          v40 = shared_filesystem_metadata_snapshot_service_log_handle(v39);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      v41 = shared_filesystem_metadata_snapshot_service_log_handle(v39);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v63 = [v76[5] description];
        v64 = v63;
        uTF8String5 = [v63 UTF8String];
        *buf = 136315138;
        v88 = uTF8String5;
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "SpaceAttribution snapshot: %s", buf, 0xCu);
      }

      if (snapshot)
      {
        v42 = v82[5];
LABEL_50:
        v19 = 0;
        *snapshot = v42;
LABEL_52:

        goto LABEL_53;
      }
    }

    v19 = 0;
    goto LABEL_52;
  }

  snapshotFileManager5 = [(DSSnapshotRequest *)self snapshotFileManager];
  sharedLogFile4 = [snapshotFileManager5 sharedLogFile];
  localizedDescription5 = [v82[5] localizedDescription];
  v8 = localizedDescription5;
  LODWORD(sharedLogFile4) = fprintf(sharedLogFile4, "Error: Failed to collect SpaceAttribution snapshot: %s\n", [localizedDescription5 UTF8String]) == -1;

  if (sharedLogFile4)
  {
    v9 = __error();
    if ((byte_10006E569 & 1) == 0)
    {
      byte_10006E569 = 1;
      v10 = shared_filesystem_metadata_snapshot_service_log_handle(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v11 = shared_filesystem_metadata_snapshot_service_log_handle(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    localizedDescription6 = [v82[5] localizedDescription];
    v55 = localizedDescription6;
    uTF8String6 = [localizedDescription6 UTF8String];
    *buf = 136315138;
    v88 = uTF8String6;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error: Failed to collect SpaceAttribution snapshot: %s", buf, 0xCu);
  }

  snapshotFileManager6 = [(DSSnapshotRequest *)self snapshotFileManager];
  sharedLogFile5 = [snapshotFileManager6 sharedLogFile];
  v14 = [v76[5] description];
  v15 = v14;
  LODWORD(sharedLogFile5) = fprintf(sharedLogFile5, "SpaceAttribution snapshot: %s\n", [v14 UTF8String]) == -1;

  if (sharedLogFile5)
  {
    v16 = __error();
    if ((byte_10006E56A & 1) == 0)
    {
      byte_10006E56A = 1;
      v17 = shared_filesystem_metadata_snapshot_service_log_handle(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v18 = shared_filesystem_metadata_snapshot_service_log_handle(v16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v57 = [v76[5] description];
    v58 = v57;
    uTF8String7 = [v57 UTF8String];
    *buf = 136315138;
    v88 = uTF8String7;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "SpaceAttribution snapshot: %s", buf, 0xCu);
  }

  v19 = 0;
  if (snapshot)
  {
    *snapshot = v82[5];
  }

LABEL_53:
  _Block_object_dispose(&v75, 8);

  _Block_object_dispose(&v81, 8);
  return v19;
}

- (void)__incrementProgress:(id)progress byPercent:(float)percent
{
  progressCopy = progress;
  fractionCompleted = [progressCopy fractionCompleted];
  if (v8 < 1.0)
  {
    fractionCompleted = [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + (objc_msgSend(progressCopy, "totalUnitCount") * 0.01 * percent)}];
  }

  v9 = shared_filesystem_metadata_snapshot_service_log_handle(fractionCompleted);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000302B4(self);
  }
}

- (void)__initializeProgress
{
  v2 = objc_autoreleasePoolPush();
  v3 = shared_filesystem_metadata_snapshot_service_log_handle(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up NSProgress", buf, 2u);
  }

  v5 = shared_filesystem_metadata_snapshot_service_log_handle(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Calculating total units for each volume", buf, 2u);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  _volumeManager = [(DSSnapshotRequest *)self _volumeManager];
  volumesForSnapshotting = [_volumeManager volumesForSnapshotting];

  obj = volumesForSnapshotting;
  v8 = [volumesForSnapshotting countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v8)
  {
    v61 = v2;
    v9 = 0;
    v10 = 0;
    v11 = *v65;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v65 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v64 + 1) + 8 * i);
        progress = [v13 progress];
        v10 += [progress totalUnitCount];

        progress2 = [(DSSnapshotRequest *)self progress];
        progress3 = [v13 progress];
        [progress2 setTotalUnitCount:{objc_msgSend(progress3, "totalUnitCount") + objc_msgSend(progress2, "totalUnitCount")}];

        progress4 = [(DSSnapshotRequest *)self progress];
        progress5 = [v13 progress];
        progress6 = [v13 progress];
        [progress4 addChild:progress5 withPendingUnitCount:{objc_msgSend(progress6, "totalUnitCount")}];

        progress7 = [v13 progress];
        v9 = (v9 + [progress7 totalUnitCount] * 0.1);
      }

      v8 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v8);
    v8 = (v10 * 0.1);
    v2 = v61;
  }

  else
  {
    v9 = 0;
  }

  v21 = [NSProgress progressWithTotalUnitCount:v9];
  [(DSSnapshotRequest *)self set__cacheDeleteProgress:v21];

  progress8 = [(DSSnapshotRequest *)self progress];
  __cacheDeleteProgress = [(DSSnapshotRequest *)self __cacheDeleteProgress];
  [progress8 setTotalUnitCount:{objc_msgSend(__cacheDeleteProgress, "totalUnitCount") + objc_msgSend(progress8, "totalUnitCount")}];

  progress9 = [(DSSnapshotRequest *)self progress];
  __cacheDeleteProgress2 = [(DSSnapshotRequest *)self __cacheDeleteProgress];
  __cacheDeleteProgress3 = [(DSSnapshotRequest *)self __cacheDeleteProgress];
  [progress9 addChild:__cacheDeleteProgress2 withPendingUnitCount:{objc_msgSend(__cacheDeleteProgress3, "totalUnitCount")}];

  v28 = shared_filesystem_metadata_snapshot_service_log_handle(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    sub_100030338(self);
  }

  v30 = shared_filesystem_metadata_snapshot_service_log_handle(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    sub_1000302B4(self);
  }

  v31 = [NSProgress progressWithTotalUnitCount:v8];
  [(DSSnapshotRequest *)self set__archivingProgress:v31];

  progress10 = [(DSSnapshotRequest *)self progress];
  __archivingProgress = [(DSSnapshotRequest *)self __archivingProgress];
  [progress10 setTotalUnitCount:{objc_msgSend(__archivingProgress, "totalUnitCount") + objc_msgSend(progress10, "totalUnitCount")}];

  progress11 = [(DSSnapshotRequest *)self progress];
  __archivingProgress2 = [(DSSnapshotRequest *)self __archivingProgress];
  __archivingProgress3 = [(DSSnapshotRequest *)self __archivingProgress];
  [progress11 addChild:__archivingProgress2 withPendingUnitCount:{objc_msgSend(__archivingProgress3, "totalUnitCount")}];

  v38 = shared_filesystem_metadata_snapshot_service_log_handle(v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    sub_1000303BC(self);
  }

  v40 = shared_filesystem_metadata_snapshot_service_log_handle(v39);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    sub_1000302B4(self);
  }

  v41 = [NSProgress progressWithTotalUnitCount:v8];
  [(DSSnapshotRequest *)self set__spaceAttributionProgress:v41];

  progress12 = [(DSSnapshotRequest *)self progress];
  __spaceAttributionProgress = [(DSSnapshotRequest *)self __spaceAttributionProgress];
  [progress12 setTotalUnitCount:{objc_msgSend(__spaceAttributionProgress, "totalUnitCount") + objc_msgSend(progress12, "totalUnitCount")}];

  progress13 = [(DSSnapshotRequest *)self progress];
  __spaceAttributionProgress2 = [(DSSnapshotRequest *)self __spaceAttributionProgress];
  __spaceAttributionProgress3 = [(DSSnapshotRequest *)self __spaceAttributionProgress];
  [progress13 addChild:__spaceAttributionProgress2 withPendingUnitCount:{objc_msgSend(__spaceAttributionProgress3, "totalUnitCount")}];

  v48 = shared_filesystem_metadata_snapshot_service_log_handle(v47);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    sub_100030440(self);
  }

  v50 = shared_filesystem_metadata_snapshot_service_log_handle(v49);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    sub_1000302B4(self);
  }

  v51 = [NSProgress progressWithTotalUnitCount:v8];
  [(DSSnapshotRequest *)self set__miscProgress:v51];

  progress14 = [(DSSnapshotRequest *)self progress];
  __miscProgress = [(DSSnapshotRequest *)self __miscProgress];
  [progress14 setTotalUnitCount:{objc_msgSend(__miscProgress, "totalUnitCount") + objc_msgSend(progress14, "totalUnitCount")}];

  progress15 = [(DSSnapshotRequest *)self progress];
  __miscProgress2 = [(DSSnapshotRequest *)self __miscProgress];
  __miscProgress3 = [(DSSnapshotRequest *)self __miscProgress];
  [progress15 addChild:__miscProgress2 withPendingUnitCount:{objc_msgSend(__miscProgress3, "totalUnitCount")}];

  v58 = shared_filesystem_metadata_snapshot_service_log_handle(v57);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    sub_1000304C4(self);
  }

  v60 = shared_filesystem_metadata_snapshot_service_log_handle(v59);
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
  {
    sub_1000302B4(self);
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)__createSnapshotFileManagerUsingProvider:(id)provider error:(id *)error
{
  providerCopy = provider;
  v7 = shared_filesystem_metadata_snapshot_service_log_handle(providerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating snapshot file manager for %@", buf, 0xCu);
  }

  if (error)
  {
    *error = 0;
  }

  if (self->_snapshotFileManager)
  {
    sub_100030548();
  }

  if (!providerCopy)
  {
    v19 = shared_filesystem_metadata_snapshot_service_log_handle(v8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100030574();
    }

    v26 = NSLocalizedDescriptionKey;
    v27 = @"Snapshot file manager provider cannot be nil";
    v20 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65540 userInfo:v20];

    if (!error)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v9 = providerCopy[2](providerCopy, self);
  snapshotFileManager = self->_snapshotFileManager;
  self->_snapshotFileManager = v9;

  snapshotFileManager = [(DSSnapshotRequest *)self snapshotFileManager];
  v25 = 0;
  v12 = [snapshotFileManager createWorkingDirectoryAndSharedFilesWithError:&v25];
  v13 = v25;

  if (!v12 || v13)
  {
    if (!error)
    {
LABEL_16:
      v18 = 0;
      goto LABEL_17;
    }

LABEL_14:
    v21 = v13;
    v18 = 0;
    *error = v13;
    goto LABEL_17;
  }

  snapshotFileManager2 = [(DSSnapshotRequest *)self snapshotFileManager];
  sharedLogFile = [snapshotFileManager2 sharedLogFile];
  beginDate = [(DSSnapshotRequest *)self beginDate];
  v17 = [beginDate description];
  LODWORD(sharedLogFile) = fprintf(sharedLogFile, "Started snapshotting at %s\n", [v17 UTF8String]);

  if (sharedLogFile == -1)
  {
    v23 = __error();
    v18 = 1;
    if ((byte_10006E56E & 1) == 0)
    {
      byte_10006E56E = 1;
      v24 = shared_filesystem_metadata_snapshot_service_log_handle(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  else
  {
    v18 = 1;
  }

LABEL_17:

  return v18;
}

- (id)__createVolumeManagerUsingProvider:(id)provider error:(id *)error
{
  providerCopy = provider;
  v7 = shared_filesystem_metadata_snapshot_service_log_handle(providerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating volume manager", buf, 2u);
  }

  if (error)
  {
    *error = 0;
  }

  if (providerCopy)
  {
    v9 = providerCopy[2](providerCopy, self);
    v21 = 0;
    v10 = [v9 discoverVolumesWithError:&v21];
    v11 = v21;
    v12 = v11;
    if (!v10 || v11)
    {
      if (!error)
      {
        goto LABEL_18;
      }
    }

    else
    {
      volumesForSnapshotting = [v9 volumesForSnapshotting];
      v14 = [volumesForSnapshotting count];

      if (v14)
      {
        v15 = v9;
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v12 = [NSError errorWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65542 userInfo:0];
      if (!error)
      {
LABEL_18:
        v15 = 0;
        goto LABEL_19;
      }
    }

    v19 = v12;
    v15 = 0;
    *error = v12;
    goto LABEL_19;
  }

  v16 = shared_filesystem_metadata_snapshot_service_log_handle(v8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1000305F4();
  }

  v23 = NSLocalizedDescriptionKey;
  v24 = @"Volume manager provider cannot be nil";
  v17 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v12 = [NSError errorWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65540 userInfo:v17];

  if (error)
  {
    v18 = v12;
    v15 = 0;
    *error = v12;
  }

  else
  {
    v15 = 0;
  }

LABEL_20:

  return v15;
}

- (BOOL)__createPreSnapshotVolumeManagerUsingProvider:(id)provider error:(id *)error
{
  providerCopy = provider;
  v7 = shared_filesystem_metadata_snapshot_service_log_handle(providerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating pre-snapshot volume manager for %@", &v12, 0xCu);
  }

  [(DSSnapshotRequest *)self _volumeManager];
  if (objc_claimAutoreleasedReturnValue())
  {
    sub_100030674();
  }

  v8 = [(DSSnapshotRequest *)self __createVolumeManagerUsingProvider:providerCopy error:error];
  volumeManager = self->__volumeManager;
  self->__volumeManager = v8;

  v10 = self->__volumeManager != 0;
  return v10;
}

- (id)__doDataCollection:(id *)collection
{
  v5 = shared_filesystem_metadata_snapshot_service_log_handle(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Collecting data and metadata %@", buf, 0xCu);
  }

  if (collection)
  {
    *collection = 0;
  }

  collectionCopy = collection;
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  selfCopy2 = self;
  _volumeManager = [(DSSnapshotRequest *)self _volumeManager];
  volumesForSnapshotting = [_volumeManager volumesForSnapshotting];

  obj = volumesForSnapshotting;
  v120 = [volumesForSnapshotting countByEnumeratingWithState:&v135 objects:v149 count:16];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (v120)
  {
    v119 = *v136;
    do
    {
      v11 = 0;
      v12 = v10;
      do
      {
        if (*v136 != v119)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v135 + 1) + 8 * v11);
        context = objc_autoreleasePoolPush();
        v14 = +[NSDate now];
        v139[0] = 0;
        v134 = v12;
        v15 = [v13 listContentsWithEntryCount:v139 andError:&v134];
        v16 = v134;

        v17 = v139[0];
        v18 = +[NSDate now];
        [v18 timeIntervalSinceDate:v14];
        v20 = v19;
        snapshotFileManager = [(DSSnapshotRequest *)selfCopy2 snapshotFileManager];
        v22 = fprintf([snapshotFileManager sharedLogFile], "%s duration: %.0f seconds\n", "Volume listing", v20);

        if (v22 == -1)
        {
          v23 = __error();
          if ((byte_10006E56F & 1) == 0)
          {
            v24 = *v23;
            byte_10006E56F = 1;
            v25 = shared_filesystem_metadata_snapshot_service_log_handle(v23);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
            {
              *buf = 67109120;
              LODWORD(selfCopy) = v24;
              _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "Failed to write to file: %{darwin.errno}d", buf, 8u);
            }
          }
        }

        v26 = shared_filesystem_metadata_snapshot_service_log_handle(v23);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          selfCopy = "Volume listing";
          v147 = 2048;
          v148 = v20;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
        }

        v28 = shared_filesystem_metadata_snapshot_service_log_handle(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          sub_100030258(v144, selfCopy2);
        }

        v8 |= v15;
        v9 += v17;

        objc_autoreleasePoolPop(context);
        v11 = v11 + 1;
        v12 = v16;
      }

      while (v120 != v11);
      v10 = v16;
      v120 = [obj countByEnumeratingWithState:&v135 objects:v149 count:16];
    }

    while (v120);
  }

  [(DSSnapshotRequestTelemetryReporter *)selfCopy2->__telemetryReporter setSnapshotFSListingsEntryCount:v9];
  _volumeManager2 = [(DSSnapshotRequest *)selfCopy2 _volumeManager];
  volumesForSnapshotting2 = [_volumeManager2 volumesForSnapshotting];
  -[DSSnapshotRequestTelemetryReporter setSnapshotVolumeCount:](selfCopy2->__telemetryReporter, "setSnapshotVolumeCount:", [volumesForSnapshotting2 count]);

  if (v8)
  {
    goto LABEL_25;
  }

  v31 = collectionCopy;
  if (!v10)
  {
    v10 = [NSError errorWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65537 userInfo:0];
  }

  if (v8)
  {
LABEL_25:
    v32 = +[NSDate now];
    v133 = v10;
    [(DSSnapshotRequest *)selfCopy2 __collectSpaceAttributionSnapshot:&v133];
    v33 = v133;

    v34 = +[NSDate now];
    [v34 timeIntervalSinceDate:v32];
    v36 = v35;
    snapshotFileManager2 = [(DSSnapshotRequest *)selfCopy2 snapshotFileManager];
    v38 = fprintf([snapshotFileManager2 sharedLogFile], "%s duration: %.0f seconds\n", "SpaceAttribution snapshot", v36);

    if (v38 == -1)
    {
      v39 = __error();
      if ((byte_10006E570 & 1) == 0)
      {
        byte_10006E570 = 1;
        v40 = shared_filesystem_metadata_snapshot_service_log_handle(v39);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v41 = shared_filesystem_metadata_snapshot_service_log_handle(v39);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      selfCopy = "SpaceAttribution snapshot";
      v147 = 2048;
      v148 = v36;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
    }

    __spaceAttributionProgress = [(DSSnapshotRequest *)selfCopy2 __spaceAttributionProgress];
    totalUnitCount = [__spaceAttributionProgress totalUnitCount];
    __spaceAttributionProgress2 = [(DSSnapshotRequest *)selfCopy2 __spaceAttributionProgress];
    [__spaceAttributionProgress2 setCompletedUnitCount:totalUnitCount];

    v46 = shared_filesystem_metadata_snapshot_service_log_handle(v45);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      sub_1000302B4(selfCopy2);
    }

    v47 = +[NSDate now];
    __fetchMetadata = [(DSSnapshotRequest *)selfCopy2 __fetchMetadata];
    v49 = +[NSDate now];
    [v49 timeIntervalSinceDate:v47];
    v51 = v50;
    snapshotFileManager3 = [(DSSnapshotRequest *)selfCopy2 snapshotFileManager];
    v53 = fprintf([snapshotFileManager3 sharedLogFile], "%s duration: %.0f seconds\n", "Metadata", v51);

    if (v53 == -1)
    {
      v54 = __error();
      if ((byte_10006E571 & 1) == 0)
      {
        byte_10006E571 = 1;
        v55 = shared_filesystem_metadata_snapshot_service_log_handle(v54);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v56 = shared_filesystem_metadata_snapshot_service_log_handle(v54);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      selfCopy = "Metadata";
      v147 = 2048;
      v148 = v51;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
    }

    v57 = objc_alloc_init(NSDate);
    endDate = selfCopy2->___endDate;
    selfCopy2->___endDate = v57;

    __endDate = [(DSSnapshotRequest *)selfCopy2 __endDate];
    v60 = +[NSTimeZone systemTimeZone];
    v61 = [NSISO8601DateFormatter stringFromDate:__endDate timeZone:v60 formatOptions:3955];
    [__fetchMetadata setObject:v61 forKeyedSubscript:@"TimestampEnd"];

    snapshotFileManager4 = [(DSSnapshotRequest *)selfCopy2 snapshotFileManager];
    sharedLogFile = [snapshotFileManager4 sharedLogFile];
    __endDate2 = [(DSSnapshotRequest *)selfCopy2 __endDate];
    v65 = [__endDate2 description];
    LODWORD(sharedLogFile) = fprintf(sharedLogFile, "Finished snapshotting at %s\n", [v65 UTF8String]);

    if (sharedLogFile == -1)
    {
      v66 = __error();
      if ((byte_10006E572 & 1) == 0)
      {
        byte_10006E572 = 1;
        v67 = shared_filesystem_metadata_snapshot_service_log_handle(v66);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v68 = shared_filesystem_metadata_snapshot_service_log_handle(v66);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      __endDate3 = [(DSSnapshotRequest *)selfCopy2 __endDate];
      v70 = [__endDate3 description];
      uTF8String = [v70 UTF8String];
      *buf = 136315138;
      selfCopy = uTF8String;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Finished snapshotting at %s", buf, 0xCu);
    }

    snapshotFileManager5 = [(DSSnapshotRequest *)selfCopy2 snapshotFileManager];
    v132 = v33;
    [snapshotFileManager5 writeFileForMetadata:__fetchMetadata error:&v132];
    v73 = v132;

    __miscProgress = [(DSSnapshotRequest *)selfCopy2 __miscProgress];
    LODWORD(v75) = 10.0;
    [(DSSnapshotRequest *)selfCopy2 __incrementProgress:__miscProgress byPercent:v75];

    v76 = +[NSDate now];
    snapshotFileManager6 = [(DSSnapshotRequest *)selfCopy2 snapshotFileManager];
    v131 = v73;
    v78 = [snapshotFileManager6 archiveWithError:&v131];
    v10 = v131;

    v79 = +[NSDate now];
    [v79 timeIntervalSinceDate:v76];
    v81 = v80;
    snapshotFileManager7 = [(DSSnapshotRequest *)selfCopy2 snapshotFileManager];
    v83 = fprintf([snapshotFileManager7 sharedLogFile], "%s duration: %.0f seconds\n", "Archiving", v81);

    if (v83 == -1)
    {
      v84 = __error();
      if ((byte_10006E573 & 1) == 0)
      {
        byte_10006E573 = 1;
        v85 = shared_filesystem_metadata_snapshot_service_log_handle(v84);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v86 = shared_filesystem_metadata_snapshot_service_log_handle(v84);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      selfCopy = "Archiving";
      v147 = 2048;
      v148 = v81;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
    }

    __archivingProgress = [(DSSnapshotRequest *)selfCopy2 __archivingProgress];
    totalUnitCount2 = [__archivingProgress totalUnitCount];
    __archivingProgress2 = [(DSSnapshotRequest *)selfCopy2 __archivingProgress];
    [__archivingProgress2 setCompletedUnitCount:totalUnitCount2];

    v91 = shared_filesystem_metadata_snapshot_service_log_handle(v90);
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
    {
      sub_1000302B4(selfCopy2);
    }

    v31 = collectionCopy;
    if (v10)
    {
LABEL_58:
      if (!v31)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }
  }

  else
  {
    v78 = 0;
    if (v10)
    {
      goto LABEL_58;
    }
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  _volumeManager3 = [(DSSnapshotRequest *)selfCopy2 _volumeManager];
  volumesForSnapshotting3 = [_volumeManager3 volumesForSnapshotting];

  v96 = [volumesForSnapshotting3 countByEnumeratingWithState:&v127 objects:v143 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = *v128;
    do
    {
      for (i = 0; i != v97; i = i + 1)
      {
        if (*v128 != v98)
        {
          objc_enumerationMutation(volumesForSnapshotting3);
        }

        v100 = *(*(&v127 + 1) + 8 * i);
        progress = [v100 progress];
        totalUnitCount3 = [progress totalUnitCount];
        progress2 = [v100 progress];
        [progress2 setCompletedUnitCount:totalUnitCount3];

        v105 = shared_filesystem_metadata_snapshot_service_log_handle(v104);
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
        {
          sub_100030258(buf, selfCopy2);
        }
      }

      v97 = [volumesForSnapshotting3 countByEnumeratingWithState:&v127 objects:v143 count:16];
    }

    while (v97);
  }

  v141 = *&selfCopy2->___cacheDeleteProgress;
  miscProgress = selfCopy2->___miscProgress;
  [NSArray arrayWithObjects:&v141 count:3];
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v106 = v126 = 0u;
  v107 = [v106 countByEnumeratingWithState:&v123 objects:v140 count:16];
  if (v107)
  {
    v108 = v107;
    v109 = *v124;
    do
    {
      for (j = 0; j != v108; j = j + 1)
      {
        if (*v124 != v109)
        {
          objc_enumerationMutation(v106);
        }

        v111 = shared_filesystem_metadata_snapshot_service_log_handle([*(*(&v123 + 1) + 8 * j) setCompletedUnitCount:{objc_msgSend(*(*(&v123 + 1) + 8 * j), "totalUnitCount")}]);
        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
        {
          sub_100030258(v139, selfCopy2);
        }
      }

      v108 = [v106 countByEnumeratingWithState:&v123 objects:v140 count:16];
    }

    while (v108);
  }

  progress3 = [(DSSnapshotRequest *)selfCopy2 progress];
  totalUnitCount4 = [progress3 totalUnitCount];
  progress4 = [(DSSnapshotRequest *)selfCopy2 progress];
  [progress4 setCompletedUnitCount:totalUnitCount4];

  v116 = shared_filesystem_metadata_snapshot_service_log_handle(v115);
  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
  {
    sub_1000302B4(selfCopy2);
  }

  v31 = collectionCopy;
  if (collectionCopy)
  {
LABEL_59:
    v92 = v10;
    *v31 = v10;
  }

LABEL_60:

  return v78;
}

- (void)__releasePowerAssertions
{
  v3 = shared_filesystem_metadata_snapshot_service_log_handle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing power assertions", buf, 2u);
  }

  if (!self->___powerAssertionIDs)
  {
    sub_10003075C();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  __powerAssertionIDs = [(DSSnapshotRequest *)self __powerAssertionIDs];
  v5 = [__powerAssertionIDs countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (!v5)
  {
LABEL_26:

    return;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v23;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v23 != v8)
      {
        objc_enumerationMutation(__powerAssertionIDs);
      }

      unsignedIntValue = [*(*(&v22 + 1) + 8 * i) unsignedIntValue];
      v11 = unsignedIntValue;
      v12 = shared_filesystem_metadata_snapshot_service_log_handle(unsignedIntValue);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v27 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Checking status of power assertion 0x%x", buf, 8u);
      }

      v13 = IOPMAssertionCopyProperties(v11);
      v14 = shared_filesystem_metadata_snapshot_service_log_handle(v13);
      v15 = v14;
      if (!v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v27 = v11;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Querying properties for power assertion 0x%x returned NULL - assertion must have timed out", buf, 8u);
        }

        v7 = 1;
        goto LABEL_20;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v27 = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Releasing power assertion 0x%x", buf, 8u);
      }

      v16 = IOPMAssertionRelease(v11);
      if (v16)
      {
        v17 = v16;
        v15 = shared_filesystem_metadata_snapshot_service_log_handle(v16);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          v27 = v11;
          v28 = 1024;
          v29 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to release power assertion 0x%x: %d", buf, 0xEu);
        }

LABEL_20:
      }
    }

    v6 = [__powerAssertionIDs countByEnumeratingWithState:&v22 objects:v30 count:16];
  }

  while (v6);

  if (v7)
  {
    [(DSSnapshotRequestTelemetryReporter *)self->__telemetryReporter setSnapshotPowerAssertionsDidTimeOut:1];
    v18 = +[NSDate now];
    [v18 timeIntervalSinceDate:self->_beginDate];
    v20 = v19;

    __powerAssertionIDs = shared_filesystem_metadata_snapshot_service_log_handle(v21);
    if (os_log_type_enabled(__powerAssertionIDs, OS_LOG_TYPE_FAULT))
    {
      sub_1000306A0(self, __powerAssertionIDs, v20);
    }

    goto LABEL_26;
  }
}

- (void)__createPowerAssertions
{
  v3 = shared_filesystem_metadata_snapshot_service_log_handle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Creating power assertions", buf, 2u);
  }

  if (self->___powerAssertionIDs)
  {
    sub_100030788();
  }

  v4 = +[NSMutableArray array];
  powerAssertionIDs = self->___powerAssertionIDs;
  self->___powerAssertionIDs = v4;

  v6 = [NSString stringWithFormat:@"%@ collects diagnostics for filesystem utilization triage and may take time in the order of hours. To allow continued data collection while the user is away requires preventing the system from sleeping.", @"com.apple.FilesystemMetadataSnapshotService"];
  AssertionID = 0;
  v7 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", [NSString stringWithFormat:@"%@.preventUserIdleSystemSleep", @"com.apple.FilesystemMetadataSnapshotService"], v6, v6, 0, 1800.0, @"TimeoutActionRelease", &AssertionID);
  v8 = v7;
  v9 = shared_filesystem_metadata_snapshot_service_log_handle(v7);
  __powerAssertionIDs = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000307B4();
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v21 = 0x409C200000000000;
      v22 = 1024;
      v23 = AssertionID;
      _os_log_impl(&_mh_execute_header, __powerAssertionIDs, OS_LOG_TYPE_DEFAULT, "Created power assertion to prevent system sleep (with a %0.2f sec timeout): 0x%x.", buf, 0x12u);
    }

    __powerAssertionIDs = [(DSSnapshotRequest *)self __powerAssertionIDs];
    v11 = [NSNumber numberWithUnsignedInt:AssertionID];
    [__powerAssertionIDs addObject:v11];
  }

  v12 = [NSString stringWithFormat:@"%@ collects diagnostics for filesystem utilization triage and may take time in the order of hours. To allow continued data collection while the user is away requires preventing disks from idling.", @"com.apple.FilesystemMetadataSnapshotService"];
  v13 = [NSString stringWithFormat:@"%@.preventDiskIdle", @"com.apple.FilesystemMetadataSnapshotService"];
  AssertionID = 0;
  v14 = IOPMAssertionCreateWithDescription(@"PreventDiskIdle", v13, v12, v12, 0, 1800.0, @"TimeoutActionRelease", &AssertionID);
  v15 = v14;
  v16 = shared_filesystem_metadata_snapshot_service_log_handle(v14);
  __powerAssertionIDs2 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100030824();
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v21 = 0x409C200000000000;
      v22 = 1024;
      v23 = AssertionID;
      _os_log_impl(&_mh_execute_header, __powerAssertionIDs2, OS_LOG_TYPE_DEFAULT, "Created power assertion to prevent disk idling (with a %0.2f sec timeout): 0x%x.", buf, 0x12u);
    }

    __powerAssertionIDs2 = [(DSSnapshotRequest *)self __powerAssertionIDs];
    v18 = [NSNumber numberWithUnsignedInt:AssertionID];
    [__powerAssertionIDs2 addObject:v18];
  }
}

- (BOOL)_setupManagersAndProgress:(id)progress volumeManagerProvider:(id)provider error:(id *)error
{
  providerCopy = provider;
  progressCopy = progress;
  v10 = objc_alloc_init(NSDate);
  beginDate = self->_beginDate;
  self->_beginDate = v10;

  v13 = shared_filesystem_metadata_snapshot_service_log_handle(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    beginDate = [(DSSnapshotRequest *)self beginDate];
    v20 = 138412290;
    v21 = beginDate;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Begin date: %@", &v20, 0xCu);
  }

  v15 = [(DSSnapshotRequest *)self __createSnapshotFileManagerUsingProvider:progressCopy error:error];
  if (v15 && [(DSSnapshotRequest *)self __createPreSnapshotVolumeManagerUsingProvider:providerCopy error:error])
  {
    [(DSSnapshotRequest *)self __initializeProgress];
    __miscProgress = [(DSSnapshotRequest *)self __miscProgress];
    LODWORD(v17) = 10.0;
    [(DSSnapshotRequest *)self __incrementProgress:__miscProgress byPercent:v17];

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)executeWithError:(id *)error
{
  v5 = +[NSDate now];
  v6 = [DSSnapshotRequestTelemetryReporter telemetryReporterForSnapshotRequest:self];
  telemetryReporter = self->__telemetryReporter;
  self->__telemetryReporter = v6;

  __stockSnapshotFileManagerProvider = [(DSSnapshotRequest *)self __stockSnapshotFileManagerProvider];
  __stockVolumeManagerProvider = [(DSSnapshotRequest *)self __stockVolumeManagerProvider];
  v10 = [(DSSnapshotRequest *)self _setupManagersAndProgress:__stockSnapshotFileManagerProvider volumeManagerProvider:__stockVolumeManagerProvider error:error];

  if (v10)
  {
    [(DSSnapshotRequest *)self __createPowerAssertions];
    v11 = [(DSSnapshotRequest *)self __doDataCollection:error];
    snapshotFileManager = [(DSSnapshotRequest *)self snapshotFileManager];
    v30 = 0;
    v13 = [snapshotFileManager cleanupWithError:&v30];
    v14 = v30;

    if (error && (v13 & 1) == 0 && !*error)
    {
      v15 = v14;
      *error = v14;
    }

    [(DSSnapshotRequest *)self __releasePowerAssertions];
    v16 = +[NSDate now];
    [v16 timeIntervalSinceDate:v5];
    v18 = v17;
    snapshotFileManager2 = [(DSSnapshotRequest *)self snapshotFileManager];
    v20 = fprintf([snapshotFileManager2 sharedLogFile], "%s duration: %.0f seconds\n", "Snapshot request", v18);

    if (v20 == -1)
    {
      v21 = __error();
      if ((byte_10006E574 & 1) == 0)
      {
        byte_10006E574 = 1;
        v22 = shared_filesystem_metadata_snapshot_service_log_handle(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v23 = shared_filesystem_metadata_snapshot_service_log_handle(v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "Snapshot request";
      v33 = 2048;
      v34 = v18;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s duration: %.0f seconds", buf, 0x16u);
    }

    [(DSSnapshotRequestTelemetryReporter *)self->__telemetryReporter setSnapshotDateEnd:v16];
    if (*error)
    {
      -[DSSnapshotRequestTelemetryReporter setSnapshotExitCode:](self->__telemetryReporter, "setSnapshotExitCode:", [*error code]);
    }

    if (v11)
    {
      v24 = +[NSFileManager defaultManager];
      v29 = 0;
      v25 = [v24 attributesOfItemAtPath:v11 error:&v29];
      v26 = v29;

      v27 = [v25 objectForKeyedSubscript:NSFileSize];
      -[DSSnapshotRequestTelemetryReporter setSnapshotArchiveSizeBytes:](self->__telemetryReporter, "setSnapshotArchiveSizeBytes:", [v27 unsignedLongLongValue]);
    }

    [(DSSnapshotRequestTelemetryReporter *)self->__telemetryReporter submit];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: %p> %@ (Options: %@)", v4, self, self->___requestDate, self->_options];

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@> %@ (Options: %@)", v4, self->___requestDate, self->_options];

  return v5;
}

- (DSSnapshotRequest)initWithOptions:(id)options
{
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = DSSnapshotRequest;
  v6 = [(DSSnapshotRequest *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v8 = shared_filesystem_metadata_snapshot_service_log_handle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = optionsCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Snapshot request with options: %@", buf, 0xCu);
    }

    v9 = +[NSDate date];
    requestDate = v7->___requestDate;
    v7->___requestDate = v9;

    objc_storeStrong(&v7->_options, options);
    v11 = [NSProgress progressWithTotalUnitCount:0];
    progress = v7->_progress;
    v7->_progress = v11;

    [(NSProgress *)v7->_progress setCancellable:0];
    [(NSProgress *)v7->_progress setPausable:0];
  }

  return v7;
}

@end
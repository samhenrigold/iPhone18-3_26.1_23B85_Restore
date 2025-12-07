@interface LeakAgent
- (LeakAgent)initWithTask:(unsigned int)task pid:(int)pid;
- (id)getSerializedGraphWithFullDiskStackLogs:(id)logs serializedGraph:(id)graph error:(id *)error;
- (id)logAndGenerateReceiptForErrorWithFormat:(id)format;
- (id)mallocStackLogForAddress:(id)address size:(id)size isLiteZone:(id)zone;
- (id)serializedGraphWithOptions:(id)options;
- (id)vmRegionStackLogForAddress:(id)address size:(id)size;
- (void)dealloc;
@end

@implementation LeakAgent

- (LeakAgent)initWithTask:(unsigned int)task pid:(int)pid
{
  v7.receiver = self;
  v7.super_class = LeakAgent;
  result = [(LeakAgent *)&v7 init];
  if (result)
  {
    result->_targetTask = task;
    result->_targetPid = pid;
  }

  return result;
}

- (void)dealloc
{
  targetTask = self->_targetTask;
  if (targetTask + 1 >= 2)
  {
    mach_port_deallocate(mach_task_self_, targetTask);
    self->_targetTask = 0;
  }

  v4.receiver = self;
  v4.super_class = LeakAgent;
  [(LeakAgent *)&v4 dealloc];
}

- (id)getSerializedGraphWithFullDiskStackLogs:(id)logs serializedGraph:(id)graph error:(id *)error
{
  logsCopy = logs;
  graphCopy = graph;
  v46 = 0;
  if (error)
  {
    errorCopy = error;
  }

  else
  {
    errorCopy = &v46;
  }

  stackLogReader = [logsCopy stackLogReader];

  if (stackLogReader)
  {
    v11 = +[NSFileManager defaultManager];
    temporaryDirectory = [v11 temporaryDirectory];
    v13 = +[NSUUID UUID];
    uUIDString = [v13 UUIDString];
    v15 = [NSString stringWithFormat:@"%@.memgraph", uUIDString];
    v16 = [temporaryDirectory URLByAppendingPathComponent:v15];

    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000016B8;
    v44[3] = &unk_100008360;
    v17 = v16;
    v45 = v17;
    v18 = objc_retainBlock(v44);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000017CC;
    v41[3] = &unk_100008388;
    v19 = v17;
    v42 = v19;
    v20 = v18;
    v43 = v20;
    v21 = objc_retainBlock(v41);
    v22 = +[NSFileManager defaultManager];
    path = [v19 path];
    [v22 createFileAtPath:path contents:0 attributes:0];

    v24 = [NSFileHandle fileHandleForWritingToURL:v19 error:errorCopy];
    v25 = v24;
    if (!v24)
    {
      (v20[2])(v20, "create", *errorCopy);
      v29 = 0;
LABEL_21:

      goto LABEL_22;
    }

    [v24 truncateFileAtOffset:0];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100001878;
    v39[3] = &unk_1000083B0;
    v40 = logsCopy;
    v26 = [VMUDirectedGraph encapsulateData:graphCopy to:v25 withSupplementalDataTag:"DISKLOGS" error:errorCopy dataGeneratorBlock:v39];
    [v25 closeFile];
    if ((v26 & 1) == 0)
    {
      if (!*errorCopy)
      {
        v47 = NSLocalizedDescriptionKey;
        v34 = [NSString stringWithFormat:@"failed to write memgraph with full disk stack logs with unknown error"];
        v48 = v34;
        v35 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        *errorCopy = [NSError errorWithDomain:@"LeakAgent" code:-1 userInfo:v35];
      }

      (v20[2])(v20, "write to");
      v36 = (v21[2])(v21);
      v29 = 0;
      goto LABEL_20;
    }

    v27 = [NSData dataWithContentsOfURL:v19 options:1 error:errorCopy];
    if (v27)
    {
      v28 = (v21[2])(v21);
      *errorCopy = v28;
      if (!v28)
      {
        v29 = v27;
LABEL_19:

LABEL_20:
        goto LABEL_21;
      }
    }

    else
    {
      (v20[2])(v20, "read from", *errorCopy);
      v37 = (v21[2])(v21);
    }

    v29 = 0;
    goto LABEL_19;
  }

  v51 = NSLocalizedDescriptionKey;
  v30 = [NSString stringWithFormat:@"%@", @"stack log reader not present in memgraph, so can't save memgraph with full disk stack logs"];
  v52 = v30;
  v31 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  *errorCopy = [NSError errorWithDomain:@"LeakAgent" code:-1 userInfo:v31];

  v19 = sub_100001674(v32);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v33 = [@"stack log reader not present in memgraph so can't save memgraph with full disk stack logs"];
    *buf = 136315138;
    v50 = v33;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  v29 = 0;
LABEL_22:

  return v29;
}

- (id)logAndGenerateReceiptForErrorWithFormat:(id)format
{
  formatCopy = format;
  v5 = [[NSString alloc] initWithFormat:formatCopy arguments:&v22];

  v7 = sub_100001674(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    targetPid = self->_targetPid;
    *buf = 67109378;
    v18 = targetPid;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to generate memory graph for pid %u: %@", buf, 0x12u);
  }

  v9 = [[NSString alloc] initWithFormat:@"Failed to generate memory graph for pid %u: %@", self->_targetPid, v5];
  v10 = objc_opt_new();
  v11 = [NSError alloc];
  v15 = NSLocalizedDescriptionKey;
  v16 = v9;
  v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v13 = [v11 initWithDomain:@"LeakAgent" code:-1 userInfo:v12];

  [v10 invokeCompletionWithReturnValue:0 error:v13];

  return v10;
}

- (id)serializedGraphWithOptions:(id)options
{
  optionsCopy = options;
  v5 = sub_100001674(optionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    targetPid = self->_targetPid;
    targetTask = self->_targetTask;
    LODWORD(buf) = 67109634;
    DWORD1(buf) = targetPid;
    WORD4(buf) = 1024;
    *(&buf + 10) = targetTask;
    HIWORD(buf) = 2112;
    *&v128 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "requested memgraph for %u (%#x) with options: %@", &buf, 0x18u);
  }

  v9 = sub_100001674(v8);
  if (os_signpost_enabled(v9))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Request memgraph", &unk_1000066FB, &buf, 2u);
  }

  if (self->_targetTask + 1 <= 1)
  {
    unsignedLongValue = [(LeakAgent *)self logAndGenerateReceiptForErrorWithFormat:@"no valid task available"];
    goto LABEL_119;
  }

  v11 = [optionsCopy objectForKeyedSubscript:@"LeakedCount"];
  bOOLValue = [v11 BOOLValue];

  v12 = [optionsCopy objectForKeyedSubscript:@"LeakedAddresses"];
  bOOLValue2 = [v12 BOOLValue];

  v13 = [optionsCopy objectForKeyedSubscript:@"MarkedCount"];
  bOOLValue3 = [v13 BOOLValue];

  v14 = [optionsCopy objectForKeyedSubscript:@"MarkedAddresses"];
  bOOLValue4 = [v14 BOOLValue];

  v15 = [optionsCopy objectForKeyedSubscript:@"AnalyzeCorpse"];
  v108 = v15;
  if (v15)
  {
    v16 = [v15 BOOLValue] ^ 1;
  }

  else
  {
    v16 = 1;
  }

  v17 = [optionsCopy objectForKeyedSubscript:@"LeakedGraphOnly"];
  bOOLValue5 = [v17 BOOLValue];

  v107 = [optionsCopy objectForKeyedSubscript:@"CompressionOption"];
  v106 = 0;
  v122 = 0;
  v123 = &v122;
  v124 = 0x2020000000;
  v125 = 0;
  if (bOOLValue2)
  {
    v106 = +[NSMutableArray array];
  }

  v18 = [optionsCopy objectForKeyedSubscript:@"RegionDescriptionOptions"];

  if (v18)
  {
    v19 = [optionsCopy objectForKeyedSubscript:@"RegionDescriptionOptions"];
    unsignedLongValue = [v19 unsignedLongValue];
  }

  else if (bOOLValue5)
  {
    unsignedLongValue = 0;
  }

  else
  {
    unsignedLongValue = (VMUGetFlagsForAllVMRegionStatistics() | 0xC000);
  }

  intValue = v107;
  if (v107)
  {
    intValue = [v107 intValue];
    v21 = intValue > 0;
  }

  else
  {
    v21 = 1;
  }

  v99 = v21;
  corpse_task_port = 0;
  v22 = self->_targetTask;
  v23 = sub_100001674(intValue);
  if (os_signpost_enabled(v23))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Init memory scanner", &unk_1000066FB, &buf, 2u);
  }

  if (v16)
  {
LABEL_28:
    v28 = [[VMUTaskMemoryScanner alloc] initWithTask:v22 options:unsignedLongValue];
    if (!v28)
    {
      unsignedLongValue = [(LeakAgent *)self logAndGenerateReceiptForErrorWithFormat:@"failed to create a VMUTaskMemoryScanner, probably because the target's libmalloc hasn't been initialized"];
      v104 = 0;
LABEL_117:

      goto LABEL_118;
    }

    v29 = [optionsCopy objectForKeyedSubscript:@"ScannerSettings"];

    if (v29)
    {
      unsignedLongValue = [optionsCopy objectForKeyedSubscript:@"ScannerSettings"];
      v31 = [unsignedLongValue objectForKeyedSubscript:@"ScannerSettingExactScanningEnabled"];
      [v28 setExactScanningEnabled:{objc_msgSend(v31, "BOOLValue")}];

      v32 = [unsignedLongValue objectForKeyedSubscript:@"ScannerSettingAbandonedMarkingEnabled"];
      [v28 setAbandonedMarkingEnabled:{objc_msgSend(v32, "BOOLValue")}];

      v33 = [unsignedLongValue objectForKeyedSubscript:@"ScannerSettingShowRawClassNames"];
      [v28 setShowRawClassNames:{objc_msgSend(v33, "BOOLValue")}];

      v34 = [unsignedLongValue objectForKeyedSubscript:@"ScannerSettingObjectContentLevel"];
      [v28 setObjectContentLevel:{objc_msgSend(v34, "unsignedIntValue")}];

      v35 = [unsignedLongValue objectForKeyedSubscript:@"ScannerSettingScanningMask"];
      [v28 setScanningMask:{objc_msgSend(v35, "unsignedIntValue")}];

      v36 = [unsignedLongValue objectForKeyedSubscript:@"ScannerSettingMaxInteriorOffset"];
      v37 = v36;
      if (v36)
      {
        [v28 setMaxInteriorOffset:{objc_msgSend(v36, "unsignedLongValue")}];
      }
    }

    v38 = sub_100001674(v30);
    if (os_signpost_enabled(v38))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Init memory scanner", &unk_1000066FB, &buf, 2u);
    }

    v40 = sub_100001674(v39);
    if (os_signpost_enabled(v40))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Add root and malloc nodes", &unk_1000066FB, &buf, 2u);
    }

    v120 = 0;
    v41 = [v28 addAllNodesFromTaskWithError:&v120];
    v42 = v120;
    v43 = v42;
    if ((v41 & 1) == 0)
    {
      localizedDescription = [v42 localizedDescription];
      unsignedLongValue = [(LeakAgent *)self logAndGenerateReceiptForErrorWithFormat:@"failed to add nodes to VMUTaskMemoryScanner with the error %@", localizedDescription];
    }

    v46 = sub_100001674(v45);
    if (os_signpost_enabled(v46))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Add root and malloc nodes", &unk_1000066FB, &buf, 2u);
    }

    if (!v41)
    {
      v104 = 0;
      v52 = 0;
      goto LABEL_66;
    }

    v48 = sub_100001674(v47);
    if (os_signpost_enabled(v48))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Process graph", &unk_1000066FB, &buf, 2u);
    }

    v49 = [optionsCopy objectForKeyedSubscript:@"ProcessSnapshotGraphOptions"];

    if (v49)
    {
      v50 = [optionsCopy objectForKeyedSubscript:@"ProcessSnapshotGraphOptions"];
      unsignedLongValue2 = [v50 unsignedLongValue];

      [v28 processSnapshotGraphWithOptions:unsignedLongValue2];
    }

    else
    {
      [v28 processSnapshotGraph];
    }
    v98 = ;
    v53 = sub_100001674(v98);
    if (os_signpost_enabled(v53))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Process graph", &unk_1000066FB, &buf, 2u);
    }

    v55 = sub_100001674(v54);
    if (os_signpost_enabled(v55))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v55, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Find leaks", &unk_1000066FB, &buf, 2u);
    }

    if (!bOOLValue5)
    {
      v104 = v98;
LABEL_63:
      v64 = sub_100001674(v56);
      if (os_signpost_enabled(v64))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v64, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Find leaks", &unk_1000066FB, &buf, 2u);
      }

      v52 = 1;
LABEL_66:
      v65 = sub_100001674([v28 detachFromTask]);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        v66 = self->_targetPid;
        LODWORD(buf) = 67109376;
        DWORD1(buf) = v66;
        WORD4(buf) = 1024;
        *(&buf + 10) = v22;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "detached from process: %u (%#x)", &buf, 0xEu);
      }

      if (corpse_task_port - 1 <= 0xFFFFFFFD)
      {
        mach_port_deallocate(mach_task_self_, corpse_task_port);
      }

      if (!v52)
      {
        goto LABEL_117;
      }

      v67 = v22;
      v68 = +[NSMutableDictionary dictionary];
      v69 = v68;
      if (v67 == self->_targetTask)
      {
        v129 = 0;
        buf = 0u;
        v128 = 0u;
        task_info_outCnt = 10;
        v68 = task_info(v67, 0x12u, &buf, &task_info_outCnt);
        if (v68)
        {
          unsignedLongValue = [(LeakAgent *)self logAndGenerateReceiptForErrorWithFormat:@"target process no longer exists"];
LABEL_116:

          goto LABEL_117;
        }
      }

      if (!(bOOLValue5 & 1 | ((bOOLValue & 1) == 0)))
      {
        v70 = sub_100001674(v68);
        if (os_signpost_enabled(v70))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v70, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Count leaks", &unk_1000066FB, &buf, 2u);
        }

        v112 = _NSConcreteStackBlock;
        v113 = 3221225472;
        v114 = sub_100002CEC;
        v115 = &unk_100008400;
        v116 = v104;
        v118 = &v122;
        v117 = v106;
        v71 = VMUWithRootNodeMarkingMap();
        v72 = sub_100001674(v71);
        if (os_signpost_enabled(v72))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v72, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Count leaks", &unk_1000066FB, &buf, 2u);
        }
      }

      if ((bOOLValue3 | bOOLValue4))
      {
        v73 = sub_100001674(v68);
        if (os_signpost_enabled(v73))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v73, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Count marked", &unk_1000066FB, &buf, 2u);
        }

        copyUserMarked = [v104 copyUserMarked];
        v75 = copyUserMarked;
        if (bOOLValue4)
        {
          v76 = +[NSMutableArray array];
        }

        else
        {
          v76 = 0;
        }

        if (v75)
        {
          v110[0] = _NSConcreteStackBlock;
          v110[1] = 3221225472;
          v110[2] = sub_100002E54;
          v110[3] = &unk_1000083D8;
          v111 = v76;
          v77 = [v104 enumerateMarkedObjects:v75 withBlock:v110];
          free(v75);
        }

        else
        {
          v77 = 0;
        }

        if (bOOLValue3)
        {
          v78 = [NSNumber numberWithUnsignedInt:v77];
          [v69 setObject:v78 forKeyedSubscript:@"MarkedCount"];
        }

        if (bOOLValue4)
        {
          copyUserMarked = [v69 setObject:v76 forKeyedSubscript:@"MarkedAddresses"];
        }

        v79 = sub_100001674(copyUserMarked);
        if (os_signpost_enabled(v79))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v79, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Count marked", &unk_1000066FB, &buf, 2u);
        }
      }

      v80 = sub_100001674(v68);
      if (os_signpost_enabled(v80))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v80, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Serialize graph", &unk_1000066FB, &buf, 2u);
      }

      v81 = [v104 plistRepresentationWithOptions:v99];
      v82 = sub_100001674(v81);
      if (os_signpost_enabled(v82))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v82, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Serialize graph", &unk_1000066FB, &buf, 2u);
      }

      v83 = [optionsCopy objectForKeyedSubscript:@"CollectFullDiskStackLogs"];
      bOOLValue6 = [v83 BOOLValue];

      if (bOOLValue6)
      {
        v109 = 0;
        v86 = [(LeakAgent *)self getSerializedGraphWithFullDiskStackLogs:v104 serializedGraph:v81 error:&v109];
        v87 = v109;

        if (!v86)
        {
          localizedDescription2 = [v87 localizedDescription];
          unsignedLongValue = [(LeakAgent *)self logAndGenerateReceiptForErrorWithFormat:@"failed to collect full disk stack logs with the error %@", localizedDescription2];

LABEL_115:
          goto LABEL_116;
        }

        v81 = v86;
      }

      else if (!v81)
      {
        v87 = 0;
        goto LABEL_106;
      }

      v85 = [v69 setObject:v81 forKeyedSubscript:@"SerializedGraph"];
      v87 = v81;
LABEL_106:
      if (bOOLValue)
      {
        v88 = [NSNumber numberWithUnsignedInt:*(v123 + 6)];
        [v69 setObject:v88 forKeyedSubscript:@"LeakedCount"];
      }

      if (bOOLValue2)
      {
        v85 = [v69 setObject:v106 forKeyedSubscript:@"LeakedAddresses"];
      }

      v89 = sub_100001674(v85);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
      {
        v90 = self->_targetPid;
        nodeCount = [v104 nodeCount];
        edgeCount = [v104 edgeCount];
        v93 = *(v123 + 6);
        *&buf = __PAIR64__(v90, 67109888);
        WORD4(buf) = 1024;
        *(&buf + 10) = nodeCount;
        HIWORD(buf) = 1024;
        LODWORD(v128) = edgeCount;
        WORD2(v128) = 1024;
        *(&v128 + 6) = v93;
        _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_INFO, "returning result for pid %u with %u nodes, %u edges (%u leaked)", &buf, 0x1Au);
      }

      v95 = sub_100001674(v94);
      if (os_signpost_enabled(v95))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v95, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Request memgraph", &unk_1000066FB, &buf, 2u);
      }

      unsignedLongValue = v69;
      goto LABEL_115;
    }

    v57 = [[VMULeakDetector alloc] initWithTask:self->_targetTask graph:v98 scanner:v28 stackLogReader:0];
    [v57 setSuppressOutput:1];
    v119 = 0;
    v58 = [v57 doNormalLeakDetectionWithError:&v119];
    v59 = v119;
    v60 = v59;
    *(v123 + 6) = v58;
    if (v59)
    {
      v61 = sub_100001674(v59);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        localizedDescription3 = [v60 localizedDescription];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = localizedDescription3;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "LeakDetector error: %@", &buf, 0xCu);
      }

      v104 = 0;
    }

    else
    {
      if (!v58)
      {
        v104 = 0;
        goto LABEL_62;
      }

      graph = [v57 graph];
      v104 = -[NSObject subgraphWithMarkedNodes:](graph, "subgraphWithMarkedNodes:", [v57 leakedNodes]);
      v61 = v98;
      v98 = graph;
    }

LABEL_62:
    goto LABEL_63;
  }

  v24 = task_generate_corpse(self->_targetTask, &corpse_task_port);
  if (!v24)
  {
    v25 = sub_100001674(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = self->_targetPid;
      v27 = self->_targetTask;
      LODWORD(buf) = 67109632;
      DWORD1(buf) = v26;
      WORD4(buf) = 1024;
      *(&buf + 10) = v27;
      HIWORD(buf) = 1024;
      LODWORD(v128) = corpse_task_port;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "generated a corpse for pid: %u (task: %#x): %#x", &buf, 0x14u);
    }

    v22 = corpse_task_port;
    goto LABEL_28;
  }

  unsignedLongValue = [(LeakAgent *)self logAndGenerateReceiptForErrorWithFormat:@"failed to generate corpse: %#x - %s", v24, mach_error_string(v24)];
LABEL_118:

  _Block_object_dispose(&v122, 8);
LABEL_119:

  return unsignedLongValue;
}

- (id)mallocStackLogForAddress:(id)address size:(id)size isLiteZone:(id)zone
{
  addressCopy = address;
  sizeCopy = size;
  zoneCopy = zone;
  if (self->_targetTask + 1 <= 1)
  {
    v28 = sub_100001674(zoneCopy);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      targetPid = self->_targetPid;
      targetTask = self->_targetTask;
      *buf = 67109376;
      v40 = targetPid;
      v41 = 1024;
      v42 = targetTask;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "no valid task available for target: %u (%#x)", buf, 0xEu);
    }

    exit(4);
  }

  v11 = zoneCopy;
  if (self->_stackLogReader || (v12 = [[VMUTaskStackLogReader alloc] initWithTask:self->_targetTask], stackLogReader = self->_stackLogReader, self->_stackLogReader = v12, stackLogReader, self->_stackLogReader))
  {
    unsignedLongLongValue = [addressCopy unsignedLongLongValue];
    unsignedLongLongValue2 = [sizeCopy unsignedLongLongValue];
    bOOLValue = [v11 BOOLValue];
    task_start_peeking();
    v17 = [(VMUTaskStackLogReader *)self->_stackLogReader getFramesForAddress:unsignedLongLongValue size:unsignedLongLongValue2 inLiteZone:bOOLValue stackFramesBuffer:buf];
    v18 = task_stop_peeking();
    if (v17 == -1)
    {
      v25 = sub_100001674(v18);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = "NO";
        v31 = 134218754;
        v32 = unsignedLongLongValue;
        v33 = 2048;
        if (bOOLValue)
        {
          v26 = "YES";
        }

        v34 = &unsignedLongLongValue[unsignedLongLongValue2];
        v35 = 2048;
        v36 = unsignedLongLongValue2;
        v37 = 2080;
        v38 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "unable to get malloc stack log for %#llx-%#llx [%llu] (liteZone: %s)", &v31, 0x2Au);
      }

      v20 = +[NSArray array];
    }

    else
    {
      v19 = v17 - ((v17 > 0) & ~[(VMUTaskStackLogReader *)self->_stackLogReader usesLiteMode]);
      v20 = [NSMutableArray arrayWithCapacity:v19];
      if (v19 >= 1)
      {
        v21 = 0;
        v22 = 1;
        do
        {
          v23 = [NSNumber numberWithUnsignedLongLong:*&buf[8 * v21]];
          [v20 setObject:v23 atIndexedSubscript:v21];

          v21 = v22;
        }

        while (v19 > v22++);
      }
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)vmRegionStackLogForAddress:(id)address size:(id)size
{
  v4 = __chkstk_darwin(self, a2, address, size);
  v6 = v5;
  v7 = v4;
  v9 = v8;
  v10 = v6;
  if ((*(v7 + 8) + 1) <= 1)
  {
    v33 = sub_100001674(v10);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = *(v7 + 12);
      v35 = *(v7 + 8);
      *buf = 67109376;
      v43 = v34;
      v44 = 1024;
      v45 = v35;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "no valid task available for target: %u (%#x)", buf, 0xEu);
    }

    exit(4);
  }

  v11 = v10;
  if (*(v7 + 16) || (v12 = [[VMUTaskStackLogReader alloc] initWithTask:*(v7 + 8)], v13 = *(v7 + 16), *(v7 + 16) = v12, v13, *(v7 + 16)))
  {
    unsignedLongLongValue = [v9 unsignedLongLongValue];
    unsignedLongLongValue2 = [v11 unsignedLongLongValue];
    usesLiteMode = [*(v7 + 16) usesLiteMode];
    v17 = *(v7 + 16);
    if (usesLiteMode)
    {
      [v17 liteMSLPayloadforVMregionAddress:unsignedLongLongValue];
      uniquing_table_index = msl_payload_get_uniquing_table_index();
      stackIdentifier = uniquing_table_index;
    }

    else
    {
      regionTracker = [v17 regionTracker];
      v21 = regionTracker;
      if (regionTracker)
      {
        v22 = [regionTracker vmRegionRangeInfoForRange:{unsignedLongLongValue, unsignedLongLongValue2}];
        stackIdentifier = [v22 stackIdentifier];
      }

      else
      {
        stackIdentifier = -1;
      }
    }

    if (stackIdentifier == -1 || (uniquing_table_index = [*(v7 + 16) getFramesForStackID:stackIdentifier stackFramesBuffer:buf], uniquing_table_index == -1))
    {
      v31 = sub_100001674(uniquing_table_index);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v36 = 134218496;
        v37 = unsignedLongLongValue;
        v38 = 2048;
        v39 = &unsignedLongLongValue[unsignedLongLongValue2];
        v40 = 2048;
        v41 = unsignedLongLongValue2;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "unable to get VM region stack log for %#llx-%#llx [%llu]", &v36, 0x20u);
      }

      v26 = +[NSArray array];
    }

    else
    {
      v23 = uniquing_table_index;
      LODWORD(v24) = [*(v7 + 16) usesLiteMode] ^ 1;
      if (v23 > 0)
      {
        v24 = v24;
      }

      else
      {
        v24 = 0;
      }

      v25 = v23 - v24;
      v26 = [NSMutableArray arrayWithCapacity:v23 - v24];
      if (v25 >= 1)
      {
        v27 = 0;
        v28 = 1;
        do
        {
          v29 = [NSNumber numberWithUnsignedLongLong:*&buf[8 * v27]];
          [v26 setObject:v29 atIndexedSubscript:v27];

          v27 = v28;
        }

        while (v25 > v28++);
      }
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end
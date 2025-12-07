@interface PanicReport
- (PanicReport)initWithPanicString:(id)string otherString:(id)otherString buildVersion:(id)version panicFlags:(unint64_t)flags panicType:(id)type incidentID:(id)d rootsInstalled:(id)installed;
- (id)additionalIPSMetadata;
- (id)createUUIDString:(unsigned int)string;
- (id)getBuildVersionString;
- (id)incidentID;
- (id)parseExtPaniclog;
- (id)patternTypeString;
- (id)problemType;
- (id)reportNamePrefix;
- (void)donateToBiome;
- (void)generateLogAtLevel:(BOOL)level withBlock:(id)block;
- (void)processExtPaniclogFlags:(unsigned int)flags data_id:(id)data_id data:(id)data additionalBuffers:(id)buffers addToExtPaniclog:(BOOL *)paniclog;
- (void)setBiomeProperties:(id)properties;
- (void)setPatternUUID:(id)d;
- (void)setSOCIdAndRev;
- (void)setUtilizationInfo:(id)info;
@end

@implementation PanicReport

- (void)donateToBiome
{
  if (objc_opt_class())
  {
    v3 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      patternUUID = self->_patternUUID;
      patternType = self->_patternType;
      v14 = 138412546;
      v15 = patternUUID;
      v16 = 2112;
      v17 = patternType;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "donate panic with pattern uuid %@ type %@", &v14, 0x16u);
    }

    v6 = [BMDiagnosticsPanic alloc];
    v7 = [NSNumber numberWithDouble:*&self->OSAStackShotReport_opaque[OBJC_IVAR___OSAReport__capture_time]];
    incidentID = [(PanicReport *)self incidentID];
    v9 = [v6 initWithCaptureTime:v7 incidentID:incidentID patternUUID:self->_patternUUID patternType:self->_patternType];

    v10 = BiomeLibrary();
    diagnostics = [v10 Diagnostics];
    panic = [diagnostics Panic];
    source = [panic source];
    [source sendEvent:v9];
  }
}

- (void)setBiomeProperties:(id)properties
{
  self->_biomeProperties = [properties copy];

  _objc_release_x1();
}

- (void)setPatternUUID:(id)d
{
  self->_patternUUID = [d copy];

  _objc_release_x1();
}

- (id)patternTypeString
{
  patternType = self->_patternType;
  if (patternType)
  {
    patternType = [patternType stringValue];
    v2 = vars8;
  }

  return patternType;
}

- (id)incidentID
{
  v2 = *&self->OSAStackShotReport_opaque[OBJC_IVAR___OSAReport__incidentID];
  if (v2)
  {
    incidentID = v2;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PanicReport;
    incidentID = [(PanicReport *)&v5 incidentID];
  }

  return incidentID;
}

- (void)generateLogAtLevel:(BOOL)level withBlock:(id)block
{
  blockCopy = block;
  v149[0] = @"incident";
  incidentID = [(PanicReport *)self incidentID];
  v150[0] = incidentID;
  v149[1] = @"crashReporterKey";
  v100 = +[OSASystemConfiguration sharedInstance];
  crashReporterKey = [v100 crashReporterKey];
  v150[1] = crashReporterKey;
  v149[2] = @"product";
  v97 = +[OSASystemConfiguration sharedInstance];
  modelCode = [v97 modelCode];
  v150[2] = modelCode;
  v149[3] = @"socId";
  v95 = [NSString stringWithFormat:@"%x", self->_socId];
  v150[3] = v95;
  v149[4] = @"socRevision";
  v94 = [NSString stringWithFormat:@"%x", self->_socRev];
  v150[4] = v94;
  v149[5] = @"build";
  getBuildVersionString = [(PanicReport *)self getBuildVersionString];
  v150[5] = getBuildVersionString;
  v149[6] = @"kernel";
  kernelVersionDescription = [objc_opt_class() kernelVersionDescription];
  v150[6] = kernelVersionDescription;
  v149[7] = @"date";
  v7 = OSADateFormat();
  v8 = v7;
  if (self->_isBtnReset)
  {
    v9 = @"string";
  }

  else
  {
    v9 = @"panicString";
  }

  panicString = self->_panicString;
  if (!panicString)
  {
    panicString = @"<mysterious>";
  }

  v150[7] = v7;
  v150[8] = panicString;
  v149[8] = v9;
  v149[9] = @"panicFlags";
  v11 = [NSString stringWithFormat:@"0x%llx", self->_panicFlags];
  v150[9] = v11;
  v149[10] = @"codeSigningMonitor";
  v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [objc_opt_class() codeSigningMonitor]);
  v150[10] = v12;
  v149[11] = @"panicProcessingFlags";
  v13 = [NSString stringWithFormat:@"0x%llx", self->_panicProcessingFlags];
  v150[11] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v150 forKeys:v149 count:12];
  blockCopy[2](blockCopy, v14);

  selfCopy = self;
  problemType = [(PanicReport *)self problemType];
  v17 = [OSALog commonFieldsForBody:problemType];
  blockCopy[2](blockCopy, v17);

  panicInitiator = self->_panicInitiator;
  if (panicInitiator)
  {
    v147 = @"panicInitiator";
    v148 = panicInitiator;
    v19 = [NSDictionary dictionaryWithObjects:&v148 forKeys:&v147 count:1];
    blockCopy[2](blockCopy, v19);
  }

  if (self->_isInterruptedCoredump)
  {
    blockCopy[2](blockCopy, &off_10003C590);
  }

  if ([(NSString *)self->_otherString length])
  {
    v145 = @"otherString";
    otherString = self->_otherString;
    v20 = [NSDictionary dictionaryWithObjects:&otherString forKeys:&v145 count:1];
    blockCopy[2](blockCopy, v20);
  }

  if (self->_foregroundAppHashSet)
  {
    foregroundAppHash = self->_foregroundAppHash;
    if (foregroundAppHash)
    {
      v143 = @"foregroundAppHash";
      foregroundAppHash = [NSString stringWithFormat:@"%@", foregroundAppHash];
      v144 = foregroundAppHash;
      v23 = [NSDictionary dictionaryWithObjects:&v144 forKeys:&v143 count:1];
      blockCopy[2](blockCopy, v23);
    }
  }

  if ((self->_panicFlags & 0x40) != 0)
  {
    [*&self->OSAStackShotReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"nested panic occurred"];
  }

  utilizationInfo = self->_utilizationInfo;
  if (utilizationInfo)
  {
    v141 = @"PanicLogUtilizationMetrics";
    v142 = utilizationInfo;
    v25 = [NSDictionary dictionaryWithObjects:&v142 forKeys:&v141 count:1];
    blockCopy[2](blockCopy, v25);
  }

  if (qword_100042A88 != -1)
  {
    dispatch_once(&qword_100042A88, &stru_100038EF8);
  }

  if (dword_100042A80)
  {
    if (qword_100042AA8 != -1)
    {
      dispatch_once(&qword_100042AA8, &stru_100038F38);
    }

    v26 = qword_100042AA0;
    v27 = v26;
    if (v26)
    {
      v139 = @"ECID";
      v140 = v26;
      v28 = [NSDictionary dictionaryWithObjects:&v140 forKeys:&v139 count:1];
      blockCopy[2](blockCopy, v28);
    }
  }

  patternUUID = self->_patternUUID;
  if (patternUUID)
  {
    v137 = @"patternUUIDs";
    v138 = patternUUID;
    v30 = [NSDictionary dictionaryWithObjects:&v138 forKeys:&v137 count:1];
    blockCopy[2](blockCopy, v30);
  }

  if ([objc_opt_class() isInLDM])
  {
    blockCopy[2](blockCopy, &off_10003C5B8);
  }

  if ([objc_opt_class() isDeveloperMode])
  {
    blockCopy[2](blockCopy, &off_10003C5E0);
  }

  if (qword_100042A88 != -1)
  {
    dispatch_once(&qword_100042A88, &stru_100038EF8);
  }

  if (dword_100042A80)
  {
    goto LABEL_39;
  }

  if (qword_100042A98 != -1)
  {
    dispatch_once(&qword_100042A98, &stru_100038F18);
  }

  if (dword_100042A90)
  {
LABEL_39:
    blockCopy[2](blockCopy, &off_10003C608);
  }

  bootProgressRegister = [objc_opt_class() bootProgressRegister];
  v32 = bootProgressRegister;
  if (bootProgressRegister)
  {
    v135 = @"bootProgressRegister";
    v33 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%llx", [bootProgressRegister unsignedLongLongValue]);
    v136 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v136 forKeys:&v135 count:1];
    blockCopy[2](blockCopy, v34);
  }

  if (objc_opt_class())
  {
    v133 = @"repairStatus";
    v35 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", +[CRAuthRepairInspector getStatus]);
    v134 = v35;
    v36 = [NSDictionary dictionaryWithObjects:&v134 forKeys:&v133 count:1];
    blockCopy[2](blockCopy, v36);
  }

  if ([(NSString *)selfCopy->_socdNandContainer length])
  {
    v131 = @"SOCDNandContainer";
    socdNandContainer = selfCopy->_socdNandContainer;
    v37 = [NSDictionary dictionaryWithObjects:&socdNandContainer forKeys:&v131 count:1];
    blockCopy[2](blockCopy, v37);
  }

  v102 = selfCopy;
  v99 = v32;
  if (os_variant_has_internal_diagnostics())
  {
    parseExtPaniclog = [(PanicReport *)selfCopy parseExtPaniclog];
    v39 = parseExtPaniclog;
    if (parseExtPaniclog)
    {
      v40 = [parseExtPaniclog objectForKeyedSubscript:@"extPaniclogData"];
      if (v40)
      {
        v129 = @"ExtensiblePaniclog";
        v41 = [v39 objectForKeyedSubscript:@"extPaniclogData"];
        v130 = v41;
        v42 = [NSDictionary dictionaryWithObjects:&v130 forKeys:&v129 count:1];
        blockCopy[2](blockCopy, v42);
      }

      v43 = [v39 objectForKeyedSubscript:@"additionalData"];
      v44 = v43;
      if (v43)
      {
        v104 = v40;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v45 = v43;
        v46 = [v45 countByEnumeratingWithState:&v110 objects:v128 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v111;
          do
          {
            for (i = 0; i != v47; i = i + 1)
            {
              if (*v111 != v48)
              {
                objc_enumerationMutation(v45);
              }

              v50 = *(*(&v110 + 1) + 8 * i);
              v51 = [v45 objectForKeyedSubscript:v50];
              v126 = v50;
              v127 = v51;
              v52 = [NSDictionary dictionaryWithObjects:&v127 forKeys:&v126 count:1];
              blockCopy[2](blockCopy, v52);
            }

            v47 = [v45 countByEnumeratingWithState:&v110 objects:v128 count:16];
          }

          while (v47);
        }

        selfCopy = v102;
        v40 = v104;
      }
    }
  }

  if ([(NSString *)selfCopy->_storagePanicData length])
  {
    storagePanicData = selfCopy->_storagePanicData;
    v124 = @"storagePanicData";
    v125 = storagePanicData;
    v54 = [NSDictionary dictionaryWithObjects:&v125 forKeys:&v124 count:1];
    blockCopy[2](blockCopy, v54);
  }

  v101 = blockCopy;
  v105 = objc_alloc_init(NSMutableArray);
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v55 = selfCopy->_socdContainerArray;
  v56 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v106 objects:v123 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v107;
    do
    {
      for (j = 0; j != v57; j = j + 1)
      {
        if (*v107 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = *(*(&v106 + 1) + 8 * j);
        if ([v60 count])
        {
          v61 = objc_alloc_init(NSMutableDictionary);
          v62 = [v60 objectAtIndex:0];
          v63 = +[NSNull null];
          v64 = [v62 isEqual:v63];

          if ((v64 & 1) == 0)
          {
            v65 = [v60 objectAtIndex:0];
            if ([v65 length])
            {
              [v61 setObject:v65 forKey:@"SOCDContainer"];
            }
          }

          v66 = [v60 objectAtIndex:1];
          v67 = +[NSNull null];
          v68 = [v66 isEqual:v67];

          if ((v68 & 1) == 0)
          {
            v69 = [v60 objectAtIndex:1];
            if ([v69 length])
            {
              [v61 setObject:v69 forKey:@"SOCDPanicString"];
            }
          }

          if ([v61 count])
          {
            [v105 addObject:v61];
          }
        }
      }

      v57 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v106 objects:v123 count:16];
    }

    while (v57);
  }

  if ([v105 count])
  {
    v121 = @"SOCDContainers";
    v122 = v105;
    v70 = [NSDictionary dictionaryWithObjects:&v122 forKeys:&v121 count:1];
    v101[2](v101, v70);
  }

  if (qword_100042A28 != -1)
  {
    dispatch_once(&qword_100042A28, &stru_100038E38);
  }

  if (byte_100042A20 == 1)
  {
    if (qword_100042A48 != -1)
    {
      dispatch_once(&qword_100042A48, &stru_100038E78);
    }

    v71 = qword_100042A40;
    if ([v71 count])
    {
      v119 = @"PanicMedicReports";
      v120 = v71;
      v72 = [NSDictionary dictionaryWithObjects:&v120 forKeys:&v119 count:1];
      v101[2](v101, v72);
    }
  }

  v73 = objc_alloc_init(OSABinaryImageCatalog);
  [(PanicReport *)v102 decodeKCDataWithBlock:v101 withTuning:&off_10003C630 usingCatalog:v73];
  v117 = @"binaryImages";
  reportUsedImages = [v73 reportUsedImages];
  v118 = reportUsedImages;
  v75 = [NSDictionary dictionaryWithObjects:&v118 forKeys:&v117 count:1];
  v101[2](v101, v75);

  v76 = OBJC_IVAR___OSAReport__notes;
  [v73 appendNotesTo:*&v102->OSAStackShotReport_opaque[OBJC_IVAR___OSAReport__notes]];
  if (os_variant_has_internal_diagnostics())
  {
    v77 = sub_10000EEA8();
    v79 = v78;
    if ((v77 & 0x100) != 0)
    {
      [*&v102->OSAStackShotReport_opaque[v76] addObject:@"test automation device"];
      if ((v77 & 0x10000) == 0)
      {
LABEL_95:
        if (!v79)
        {
          goto LABEL_97;
        }

        goto LABEL_96;
      }
    }

    else if ((v77 & 0x10000) == 0)
    {
      goto LABEL_95;
    }

    [*&v102->OSAStackShotReport_opaque[v76] addObject:@"intentional panic"];
    if (v79)
    {
LABEL_96:
      v80 = *&v102->OSAStackShotReport_opaque[v76];
      v81 = [NSString stringWithFormat:@"test plan id: %llu", v79];
      [v80 addObject:v81];
    }
  }

LABEL_97:
  if ([*&v102->OSAStackShotReport_opaque[v76] count])
  {
    v82 = *&v102->OSAStackShotReport_opaque[v76];
    v115 = @"notes";
    v116 = v82;
    v83 = [NSDictionary dictionaryWithObjects:&v116 forKeys:&v115 count:1];
    v101[2](v101, v83);
  }

  if (qword_100042A68 != -1)
  {
    dispatch_once(&qword_100042A68, &stru_100038EB8);
  }

  if (byte_100042A60 == 1)
  {
    v101[2](v101, &off_10003C658);
    v84 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Deleting dumppanic boot-arg...", buf, 2u);
    }

    v85 = sub_10000D4EC();
    v86 = @"dumppanic";
    if (([v85 containsString:@"dumppanic"]& 1) == 0)
    {

LABEL_117:
      goto LABEL_118;
    }

    v87 = [v85 rangeOfString:@"dumppanic"];
    if (v87 == 0x7FFFFFFFFFFFFFFFLL)
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    v88 = v87;
    v89 = [v85 substringToIndex:v87];
    while (v88 < [v85 length]&& [v85 characterAtIndex:v88]!= 32)
    {
      ++v88;
    }

    v90 = [v85 substringFromIndex:v88];
    v91 = [v89 stringByAppendingString:v90];
    v92 = sub_10000CDB8(@"boot-args", v91);

    if (v92)
    {
      v85 = qword_100042B28;
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "failed to delete dumppanic in boot-args", buf, 2u);
      }

      goto LABEL_117;
    }
  }

LABEL_118:
}

- (id)parseExtPaniclog
{
  v36 = objc_alloc_init(NSMutableDictionary);
  v37 = objc_alloc_init(NSMutableDictionary);
  v38 = objc_alloc_init(NSMutableDictionary);
  extPaniclog = self->_extPaniclog;
  if (!extPaniclog || [(NSData *)extPaniclog length]- 32769 < 0xFFFF8000)
  {
    goto LABEL_8;
  }

  v4 = [(NSData *)self->_extPaniclog subdataWithRange:0, 4];
  v5 = *[v4 bytes];

  if (v5 != 2)
  {
    v8 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v41 = v5;
      v9 = "Invalid version. Version in paniclog: %d\n";
      goto LABEL_27;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = [(NSData *)self->_extPaniclog subdataWithRange:4, 4];
  v7 = *[v6 bytes];

  if (v7 > 0x64)
  {
    v8 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v41 = v7;
      v9 = "Invalid no_of_logs %d";
LABEL_27:
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v9, buf, 8u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (!v7)
  {
    goto LABEL_43;
  }

  v12 = 8;
  while (1)
  {
    v13 = [(PanicReport *)self createUUIDString:v12];
    if (!v13)
    {
      goto LABEL_43;
    }

    v35 = v13;
    v14 = [(NSData *)self->_extPaniclog subdataWithRange:(v12 + 16), 4];
    v15 = v14;
    v16 = *[v14 bytes];

    v17 = strnlen([(NSData *)self->_extPaniclog bytes]+ (v12 + 20), 0x1FuLL);
    v18 = [NSString alloc];
    v19 = [(NSData *)self->_extPaniclog subdataWithRange:(v12 + 20), v17];
    v20 = [v18 initWithData:v19 encoding:4];

    if (!v20)
    {
      v30 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Unable to create Data ID String", buf, 2u);
      }

      v20 = 0;
      goto LABEL_36;
    }

    v21 = v12 + v17 + 21;
    v22 = [(NSData *)self->_extPaniclog subdataWithRange:v21, 4];
    v23 = v22;
    v24 = *[v22 bytes];

    if (v24 > 0x8000)
    {
      v31 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v41 = v24;
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Data len is invalid: %d", buf, 8u);
      }

      goto LABEL_36;
    }

    v25 = v21 + 4;
    v26 = [(NSData *)self->_extPaniclog subdataWithRange:v21 + 4, v24];
    v27 = [v26 base64EncodedStringWithOptions:0];

    if (!v27)
    {
      v32 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Unable to create Buffer data string", buf, 2u);
      }

LABEL_36:

      goto LABEL_43;
    }

    v39 = 1;
    [(PanicReport *)self processExtPaniclogFlags:v16 data_id:v20 data:v27 additionalBuffers:v38 addToExtPaniclog:&v39];
    if (v39 != 1)
    {
      goto LABEL_24;
    }

    v28 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v20, @"Data ID", v27, @"Data", 0];
    if (!v28)
    {
      break;
    }

    v29 = [v37 objectForKey:v35];
    if (!v29)
    {
      v29 = objc_alloc_init(NSMutableArray);
      if (!v29)
      {
        v34 = qword_100042B28;
        if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Unable to create array", buf, 2u);
        }

        goto LABEL_42;
      }

      [v37 setObject:v29 forKey:v35];
    }

    [v29 addObject:v28];

LABEL_24:
    v12 = v24 + v25;
    if (!--v7)
    {
      goto LABEL_43;
    }
  }

  v33 = qword_100042B28;
  if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Unable to create Data ID and Data dict", buf, 2u);
  }

LABEL_42:

LABEL_43:
  if ([v37 count])
  {
    [v36 setObject:v37 forKey:@"extPaniclogData"];
  }

  if ([v38 count])
  {
    [v36 setObject:v38 forKey:@"additionalData"];
  }

  if (![v36 count])
  {
    goto LABEL_8;
  }

  v10 = v36;
LABEL_9:

  return v10;
}

- (void)processExtPaniclogFlags:(unsigned int)flags data_id:(id)data_id data:(id)data additionalBuffers:(id)buffers addToExtPaniclog:(BOOL *)paniclog
{
  if (flags)
  {
    [buffers setObject:data forKey:data_id];
    *paniclog = 0;
  }
}

- (id)createUUIDString:(unsigned int)string
{
  v5 = [NSUUID alloc];
  v6 = [(NSData *)self->_extPaniclog subdataWithRange:string, 16];
  v7 = [v5 initWithUUIDBytes:{objc_msgSend(v6, "bytes")}];

  if (v7)
  {
    uUIDString = [v7 UUIDString];
    v9 = uUIDString;
    if (uUIDString)
    {
      v10 = uUIDString;
    }

    else
    {
      v12 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to create UUID String", v14, 2u);
      }
    }
  }

  else
  {
    v11 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unable to create UUID object", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)reportNamePrefix
{
  if ([(PanicReport *)self ss_sequence]== -1)
  {
    if (self->_storagePanicData)
    {
      v3 = @"-base+storage_crash";
    }

    else if (self->_socdContainerArray)
    {
      v3 = @"-base+socd";
    }

    else
    {
      v3 = @"-base";
    }
  }

  else
  {
    v3 = @"-full";
  }

  if (self->_isBtnReset)
  {
    v4 = @"forceReset";
  }

  else
  {
    v4 = @"panic";
  }

  return [NSString stringWithFormat:@"%@%@", v4, v3];
}

- (id)problemType
{
  if (qword_100042A68 != -1)
  {
    dispatch_once(&qword_100042A68, &stru_100038EB8);
  }

  if (byte_100042A60)
  {
    v3 = @"410";
  }

  else
  {
    if (self->_isBtnReset)
    {
      v4 = @"151";
    }

    else
    {
      v4 = @"210";
    }

    v3 = v4;
  }

  return v3;
}

- (id)additionalIPSMetadata
{
  incidentID = [(PanicReport *)self incidentID];
  v4 = [NSMutableDictionary dictionaryWithObject:incidentID forKey:kOSALogMetadataIncidentID];

  getBuildVersionString = [(PanicReport *)self getBuildVersionString];
  [v4 setObject:getBuildVersionString forKeyedSubscript:@"os_version"];

  v6 = self->_rootsInstalled;
  if (v6 || (v10 = 8, v11 = 0, !sysctlbyname("kern.roots_installed", &v11, &v10, 0, 0)) && ([NSNumber numberWithUnsignedLongLong:v11], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    [v4 setObject:v6 forKeyedSubscript:@"roots_installed"];
  }

  if ((+[OSAReport isSecurityResearchDeviceERM]& 1) != 0)
  {
    v8 = &off_10003C4A8;
  }

  else
  {
    if (!self->_isMTEPanic)
    {
      goto LABEL_9;
    }

    v8 = &off_10003C4C0;
  }

  [v4 setObject:v8 forKeyedSubscript:@"sroute_id"];
LABEL_9:

  return v4;
}

- (id)getBuildVersionString
{
  v3 = +[OSASystemConfiguration sharedInstance];
  productNameVersionBuildString = [v3 productNameVersionBuildString];

  if ([(NSString *)self->_buildVersion length])
  {
    v5 = +[OSASystemConfiguration sharedInstance];
    productName = [v5 productName];
    v7 = [NSString stringWithFormat:@"%@ %@", productName, self->_buildVersion];

    productNameVersionBuildString = v7;
  }

  return productNameVersionBuildString;
}

- (void)setUtilizationInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v6 = infoCopy;
    objc_storeStrong(&self->_utilizationInfo, info);
    infoCopy = v6;
  }
}

- (void)setSOCIdAndRev
{
  sub_10000C250("chosen", "chip-id", &self->_socId);

  sub_10000C250("arm-io", "chip-revision", &self->_socRev);
}

- (PanicReport)initWithPanicString:(id)string otherString:(id)otherString buildVersion:(id)version panicFlags:(unint64_t)flags panicType:(id)type incidentID:(id)d rootsInstalled:(id)installed
{
  stringCopy = string;
  otherStringCopy = otherString;
  versionCopy = version;
  typeCopy = type;
  dCopy = d;
  installedCopy = installed;
  v47 = 0;
  v20 = [(PanicReport *)self initForPid:0 process:0 withReason:0 exceptionCode:&v47 exceptionCodeCount:1 stackshotFlags:0];
  v21 = v20;
  if (v20)
  {
    if (dCopy)
    {
      [(PanicReport *)v20 setIncidentID:dCopy];
    }

    objc_storeStrong(&v21->_panicString, string);
    objc_storeStrong(&v21->_otherString, otherString);
    objc_storeStrong(&v21->_buildVersion, version);
    v21->_panicFlags = flags;
    v21->_isBtnReset = (flags & 0x80) != 0;
    v43 = typeCopy;
    v21->_isInterruptedCoredump = [typeCopy isEqual:@"interrupted coredump panic"];
    objc_storeStrong(&v21->_rootsInstalled, installed);
    v21->_panicProcessingFlags = 0;
    v22 = stringCopy;
    v23 = stringCopy;
    if (![v23 containsString:@"esr: "] || (v24 = objc_msgSend(v23, "rangeOfString:", @"esr: "), v24 == 0x7FFFFFFFFFFFFFFFLL) || (v25 = v24, v26 = objc_msgSend(@"esr: ", "length"), objc_msgSend(v23, "substringFromIndex:", &v25[v26]), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "rangeOfString:", @" "), v27, v28 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v29 = 0;
    }

    else
    {
      v41 = [v23 substringWithRange:{&v25[v26], v28}];
      v48 = 0;
      sscanf([v41 UTF8String], "%x", &v48);
      v42 = v48;

      v29 = (v42 & 0xFC00003F) == -1811939311;
    }

    v21->_isMTEPanic = v29;
    stringCopy = v22;
    typeCopy = v43;
    if (&_AnalyticsSendEventLazy)
    {
      if (v21->_isBtnReset)
      {
        AnalyticsSendEventLazy();
      }

      else
      {
        v46 = v43;
        AnalyticsSendEventLazy();
      }
    }

    socdContainerArray = v21->_socdContainerArray;
    v21->_socdContainerArray = 0;

    socdNandContainer = v21->_socdNandContainer;
    v21->_socdNandContainer = 0;

    extPaniclog = v21->_extPaniclog;
    v21->_extPaniclog = 0;

    panicInitiator = v21->_panicInitiator;
    v21->_panicInitiator = 0;

    foregroundAppHash = v21->_foregroundAppHash;
    v21->_foregroundAppHash = 0;

    v21->_foregroundAppHashSet = 0;
    utilizationInfo = v21->_utilizationInfo;
    v21->_utilizationInfo = 0;

    appleCareDetails = v21->_appleCareDetails;
    v21->_appleCareDetails = 0;

    biomeProperties = v21->_biomeProperties;
    v21->_biomeProperties = 0;

    patternType = v21->_patternType;
    v21->_patternType = 0;

    patternUUID = v21->_patternUUID;
    v21->_patternUUID = 0;
  }

  return v21;
}

@end
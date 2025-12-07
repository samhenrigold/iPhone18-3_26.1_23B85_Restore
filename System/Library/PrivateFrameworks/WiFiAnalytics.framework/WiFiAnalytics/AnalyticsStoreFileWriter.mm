@interface AnalyticsStoreFileWriter
+ (BOOL)writeData:(id)data toFile:(id)file;
+ (id)analyticsStoreFileWriterDirectory;
+ (id)writeObj:(id)obj toJSONFile:(id)file;
- (AnalyticsStoreFileWriter)initWithPersistentContainer:(id)container;
- (id)analyticsStoreFileWriterFilePath;
- (id)batchedWriteAnalyticsStoreToCSVFilesWithBatchSize:(unint64_t)size maxAge:(unint64_t)age;
- (id)batchedWriteAnalyticsStoreToFile:(unint64_t)file maxAge:(unint64_t)age;
- (id)batchedWriteAnalyticsStoreToFileWithBatchSize:(unint64_t)size maxAge:(unint64_t)age;
- (id)exportEntityToCSV:(id)v batchSize:(unint64_t)size maxAge:(unint64_t)age toURL:(id)l fileDate:(id)date;
- (id)moc;
- (id)relationshipKeyPathsForPrefetching:(id)prefetching;
- (id)stringifyObjectWithPadding:(id)padding padding:(id)a4 padToLength:(unint64_t)length;
- (id)stringifyRelationship:(id)relationship name:(id *)name onMoc:(id)moc;
- (id)stringifyValueArray:(id)array;
- (id)writeAnalyticsStoreToFile;
- (id)writeArrayToJSONFile:(id)file;
- (id)writeDeploymentGraphToFile;
- (id)writeDictionaryToJSONFile:(id)file network:(id)network;
- (void)initDateFormatter;
- (void)stringifyManagedObjectsArray:(id)array titleString:(id *)string dataStringsArray:(id *)stringsArray onMoc:(id)moc;
- (void)writeAttributes:(id)attributes fromObject:(id)object ofEntity:(id)entity withWriter:(id)writer;
- (void)writeRelationships:(id)relationships fromObject:(id)object ofEntity:(id)entity with:(id)with;
- (void)writeRelationshipsHeaders:(id)headers ofEntity:(id)entity with:(id)with;
@end

@implementation AnalyticsStoreFileWriter

- (AnalyticsStoreFileWriter)initWithPersistentContainer:(id)container
{
  v15 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v10.receiver = self;
  v10.super_class = AnalyticsStoreFileWriter;
  v6 = [(AnalyticsStoreFileWriter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (containerCopy)
    {
      objc_storeStrong(&v6->_persistentContainer, container);
      [(AnalyticsStoreFileWriter *)v7 initDateFormatter];
    }

    else
    {
      v9 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v12 = "[AnalyticsStoreFileWriter initWithPersistentContainer:]";
        v13 = 1024;
        v14 = 55;
        _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:nil PersistentContainer", buf, 0x12u);
      }

      v7 = 0;
    }
  }

  return v7;
}

- (void)initDateFormatter
{
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  dateFormatter = self->_dateFormatter;
  self->_dateFormatter = v3;

  v5 = self->_dateFormatter;

  [(NSDateFormatter *)v5 setDateFormat:@"yyyy'-'MM'-'dd_HH':'mm':'ss'.'SSS"];
}

- (id)moc
{
  persistentContainer = [(AnalyticsStoreFileWriter *)self persistentContainer];
  viewContext = [persistentContainer viewContext];

  return viewContext;
}

+ (id)analyticsStoreFileWriterDirectory
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = +[WAUtil wifianalyticsTmpDirectory];
  v3 = v2;
  if (!v2)
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v17 = "+[AnalyticsStoreFileWriter analyticsStoreFileWriterDirectory]";
      v18 = 1024;
      v19 = 98;
      v13 = "%{public}s::%d:tmpDirectory nil";
LABEL_14:
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
    }

LABEL_18:
    v5 = 0;
    goto LABEL_7;
  }

  v4 = [v2 URLByAppendingPathComponent:@"AnalyticsStoreDump"];
  if (!v4)
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v17 = "+[AnalyticsStoreFileWriter analyticsStoreFileWriterDirectory]";
      v18 = 1024;
      v19 = 101;
      v13 = "%{public}s::%d:analyticsStoreDumpDirectory nil";
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v5 = v4;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v5 path];
  v8 = [defaultManager fileExistsAtPath:path isDirectory:0];

  if ((v8 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v15 = 0;
    [defaultManager2 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v15];
    v10 = v15;

    if (v10)
    {
      v14 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v17 = "+[AnalyticsStoreFileWriter analyticsStoreFileWriterDirectory]";
        v18 = 1024;
        v19 = 109;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:failed to create wifianalytics tmp directory with error %@", buf, 0x1Cu);
      }

      v11 = v5;
      goto LABEL_18;
    }
  }

  v11 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v17 = "+[AnalyticsStoreFileWriter analyticsStoreFileWriterDirectory]";
    v18 = 1024;
    v19 = 111;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:analyticsStoreDumpDirectory: %@", buf, 0x1Cu);
  }

LABEL_7:

  return v5;
}

- (id)analyticsStoreFileWriterFilePath
{
  v36 = *MEMORY[0x1E69E9840];
  dateFormatter = self->_dateFormatter;
  date = [MEMORY[0x1E695DF00] date];
  v4 = [(NSDateFormatter *)dateFormatter stringFromDate:date];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AnalyticsStoreDump_%@.txt", v4];
  analyticsStoreFileWriterDirectory = [objc_opt_class() analyticsStoreFileWriterDirectory];
  v7 = [analyticsStoreFileWriterDirectory URLByAppendingPathComponent:v5 isDirectory:0];

  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v27 = "[AnalyticsStoreFileWriter analyticsStoreFileWriterFilePath]";
    v28 = 1024;
    v29 = 131;
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:fileURL: %@", buf, 0x1Cu);
  }

  path = [v7 path];
  if (!path)
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v27 = "[AnalyticsStoreFileWriter analyticsStoreFileWriterFilePath]";
      v28 = 1024;
      v29 = 134;
      v19 = "%{public}s::%d:fileName nil";
      v20 = v13;
      v21 = 18;
LABEL_17:
      _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    }

LABEL_21:

    v17 = 0;
    goto LABEL_10;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [defaultManager fileExistsAtPath:path];

  if (v11)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v25 = 0;
    [defaultManager2 removeItemAtPath:path error:&v25];
    v13 = v25;

    if (v13)
    {
      v22 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v13 localizedDescription];
        userInfo = [v13 userInfo];
        *buf = 136447234;
        v27 = "[AnalyticsStoreFileWriter analyticsStoreFileWriterFilePath]";
        v28 = 1024;
        v29 = 139;
        v30 = 2112;
        v31 = path;
        v32 = 2112;
        v33 = localizedDescription;
        v34 = 2112;
        v35 = userInfo;
        _os_log_impl(&dword_1C8460000, v22, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error deleting %@ %@ %@", buf, 0x30u);
      }

      goto LABEL_21;
    }
  }

  defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
  v15 = [defaultManager3 createFileAtPath:path contents:0 attributes:0];

  v13 = WALogCategoryDeviceStoreHandle();
  v16 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  if ((v15 & 1) == 0)
  {
    if (v16)
    {
      *buf = 136446722;
      v27 = "[AnalyticsStoreFileWriter analyticsStoreFileWriterFilePath]";
      v28 = 1024;
      v29 = 145;
      v30 = 2112;
      v31 = path;
      v19 = "%{public}s::%d:Error creating %@";
      v20 = v13;
      v21 = 28;
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  if (v16)
  {
    *buf = 136446722;
    v27 = "[AnalyticsStoreFileWriter analyticsStoreFileWriterFilePath]";
    v28 = 1024;
    v29 = 148;
    v30 = 2112;
    v31 = path;
    _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:Will write to file: %@", buf, 0x1Cu);
  }

  v17 = v7;
LABEL_10:

  return v17;
}

+ (BOOL)writeData:(id)data toFile:(id)file
{
  v22 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v6 = MEMORY[0x1E696AEC0];
  dataCopy = data;
  v8 = [[v6 alloc] initWithData:dataCopy encoding:4];

  v13 = 0;
  [v8 writeToURL:fileCopy atomically:1 encoding:4 error:&v13];
  v9 = v13;
  if (v9)
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      path = [fileCopy path];
      *buf = 136446978;
      v15 = "+[AnalyticsStoreFileWriter writeData:toFile:]";
      v16 = 1024;
      v17 = 160;
      v18 = 2112;
      v19 = path;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:failed to write to file %@ error %@", buf, 0x26u);
    }
  }

  else
  {
    [WAUtil setFutureApfsPurgeableDeadline:604800 forURL:fileCopy];
  }

  return 0;
}

+ (id)writeObj:(id)obj toJSONFile:(id)file
{
  v23 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  objCopy = obj;
  analyticsStoreFileWriterDirectory = [self analyticsStoreFileWriterDirectory];
  v9 = [analyticsStoreFileWriterDirectory URLByAppendingPathComponent:fileCopy isDirectory:0];

  v16 = 0;
  v10 = [MEMORY[0x1E696ACB0] dataWithJSONObject:objCopy options:3 error:&v16];

  v11 = v16;
  if (v11)
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v18 = "+[AnalyticsStoreFileWriter writeObj:toJSONFile:]";
      v19 = 1024;
      v20 = 178;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:failed to serialize JSON: %@", buf, 0x1Cu);
    }

    v12 = 0;
  }

  else if ([self writeData:v10 toFile:v9])
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (id)writeDictionaryToJSONFile:(id)file network:(id)network
{
  v22 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  networkCopy = network;
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:fileCopy])
  {
    dateFormatter = self->_dateFormatter;
    date = [MEMORY[0x1E695DF00] date];
    v10 = [(NSDateFormatter *)dateFormatter stringFromDate:date];

    v11 = objc_opt_class();
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DeploymentGraph_%@_%@.json", networkCopy, v10];
    v13 = [v11 writeObj:fileCopy toJSONFile:v12];
  }

  else
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "[AnalyticsStoreFileWriter writeDictionaryToJSONFile:network:]";
      v18 = 1024;
      v19 = 194;
      v20 = 2080;
      v21 = "[AnalyticsStoreFileWriter writeDictionaryToJSONFile:network:]";
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Invalid data passed to JSON serialization", buf, 0x1Cu);
    }

    v13 = 0;
    v10 = 0;
  }

  return v13;
}

- (id)writeArrayToJSONFile:(id)file
{
  v19 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:fileCopy])
  {
    dateFormatter = self->_dateFormatter;
    date = [MEMORY[0x1E695DF00] date];
    v7 = [(NSDateFormatter *)dateFormatter stringFromDate:date];

    v8 = objc_opt_class();
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DeploymentGraph_%@.json", v7];
    v10 = [v8 writeObj:fileCopy toJSONFile:v9];
  }

  else
  {
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "[AnalyticsStoreFileWriter writeArrayToJSONFile:]";
      v15 = 1024;
      v16 = 208;
      v17 = 2080;
      v18 = "[AnalyticsStoreFileWriter writeArrayToJSONFile:]";
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Invalid data passed to JSON serialization", buf, 0x1Cu);
    }

    v10 = 0;
    v7 = 0;
  }

  return v10;
}

- (id)writeDeploymentGraphToFile
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = 0;
  v3 = [(AnalyticsStoreFileWriter *)self moc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__AnalyticsStoreFileWriter_writeDeploymentGraphToFile__block_invoke;
  v6[3] = &unk_1E830F558;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __54__AnalyticsStoreFileWriter_writeDeploymentGraphToFile__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "writeDeploymentGraphToFile", "", buf, 2u);
  }

  v4 = [*(a1 + 32) moc];
  v5 = [NetworkMO copyAllSsids:v4];

  v6 = [MEMORY[0x1E695DF70] array];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __54__AnalyticsStoreFileWriter_writeDeploymentGraphToFile__block_invoke_71;
  v16 = &unk_1E830F530;
  v17 = *(a1 + 32);
  v7 = v6;
  v18 = v7;
  [v5 enumerateObjectsUsingBlock:&v13];
  v8 = [*(a1 + 32) writeArrayToJSONFile:{v7, v13, v14, v15, v16, v17}];
  v9 = [v8 path];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "writeDeploymentGraphToFile", "", buf, 2u);
  }

  objc_autoreleasePoolPop(v2);
}

void __54__AnalyticsStoreFileWriter_writeDeploymentGraphToFile__block_invoke_71(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) moc];
    v5 = [BSSMO copyDeploymentUuidsForSsid:v3 moc:v4];

    if (v5)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __54__AnalyticsStoreFileWriter_writeDeploymentGraphToFile__block_invoke_2;
      v9[3] = &unk_1E830F508;
      v6 = v3;
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = v6;
      v11 = v7;
      v12 = v8;
      [v5 enumerateObjectsUsingBlock:v9];
    }
  }
}

void __54__AnalyticsStoreFileWriter_writeDeploymentGraphToFile__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = v3;
    v5 = v4;
    if (v4)
    {
      v6 = [v4 UUIDString];

      if (v6)
      {
        v7 = [v5 UUIDString];
        v8 = *(a1 + 32);
        v9 = [*(a1 + 40) moc];
        v10 = [BSSMO copyBssidsForDeployment:v8 deploymentUuid:v7 moc:v9];

        if (v10)
        {
          context = objc_autoreleasePoolPush();
          v11 = [NeighborGraph alloc];
          v12 = *(a1 + 32);
          v13 = [*(a1 + 40) persistentContainer];
          v14 = [(NeighborGraph *)v11 initWithBssidArray:v10 ssid:v12 persistentContainer:v13];

          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __54__AnalyticsStoreFileWriter_writeDeploymentGraphToFile__block_invoke_3;
          v33[3] = &unk_1E830F508;
          v31 = *(a1 + 32);
          v15 = v31.i64[0];
          v34 = vextq_s8(v31, v31, 8uLL);
          v16 = v14;
          v35 = v16;
          [v10 enumerateObjectsUsingBlock:v33];
          v17 = [*(a1 + 40) moc];
          v18 = [(NeighborGraph *)v16 copyNeighborGraphAsDictionaryOnMoc:v17];

          v19 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v18];
          v20 = MEMORY[0x1E696AEC0];
          v32 = v7;
          v21 = *(a1 + 32);
          v22 = [v5 UUIDString];
          v23 = [v20 stringWithFormat:@"%@(%@)", v21, v22];
          [v19 setObject:v23 forKey:@"deployment"];

          v24 = *(*(a1 + 40) + 16);
          v25 = +[WADeviceAnalyticsJoinRecord entity];
          v26 = [v24 mostRecentDatedEvent:v25 before:0 withPrefetchedProperties:&unk_1F483E788 withError:0];

          v27 = [v26 bss];
          v28 = [v27 apid];

          if ([v5 isEqual:v28])
          {
            v29 = MEMORY[0x1E695E118];
          }

          else
          {
            v29 = MEMORY[0x1E695E110];
          }

          [v19 setObject:v29 forKey:@"isMostRecentlyUsedDeployment"];
          [*(a1 + 48) addObject:v19];

          v7 = v32;
          objc_autoreleasePoolPop(context);
        }
      }
    }
  }
}

void __54__AnalyticsStoreFileWriter_writeDeploymentGraphToFile__block_invoke_3(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 16) bssForBssid:v3 prefetchProperties:&unk_1F483E770 withError:0];
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = [v4 mostRecentBand] == 0;
    v8 = [v5 bssid];
    v9 = [*(a1 + 32) moc];
    v10 = [RoamMO dwellTimeInBand:v6 bandIs24:v7 bssid:v8 maxAgeInDays:0 moc:v9];

    v11 = [BSSMO bssManagedObjectPropertyValue:v5 forKey:@"NeighborInfo"];
    [*(a1 + 48) setNeighborsForBssid:v3 dwellTime:v10 neighborInfoArray:v11];
    if (v11)
    {
      v23 = v11;
      v24 = v3;
      v12 = v11;
      if ([v12 count])
      {
        v13 = 0;
        v25 = v12;
        v26 = v5;
        do
        {
          v14 = [v12 objectAtIndex:{v13, v23, v24}];
          v15 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = [v5 bssid];
            v28 = [v14 valueForKey:@"NeighborBssid"];
            v27 = [v14 valueForKey:@"NeighborBssNumRoamOriginRssiHigh"];
            v17 = [v14 valueForKey:@"NeighborBssNumRoamOriginRssiUpperHigh"];
            v18 = [v14 valueForKey:@"NeighborBssNumRoamOriginRssiOptimum"];
            v19 = [v14 valueForKey:@"NeighborBssNumRoamOriginRssiMid"];
            v20 = [v14 valueForKey:@"NeighborBssNumRoamOriginRssiUpperMid"];
            v21 = [v14 valueForKey:@"NeighborBssNumRoamOriginRssiLow"];
            *buf = 136448514;
            v30 = "[AnalyticsStoreFileWriter writeDeploymentGraphToFile]_block_invoke_3";
            v31 = 1024;
            v32 = 272;
            v33 = 2112;
            v34 = v16;
            v35 = 2112;
            v36 = v28;
            v37 = 2112;
            v38 = v27;
            v39 = 2112;
            v40 = v17;
            v22 = v17;
            v41 = 2112;
            v42 = v18;
            v43 = 2112;
            v44 = v19;
            v45 = 2112;
            v46 = v20;
            v47 = 2112;
            v48 = v21;
            _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Source:%@ Neighbor:%@ LowRssiRoam (High:%@ UpperHigh:%@ Opt:%@ Mid:%@ UpperMid:%@ Low:%@)", buf, 0x62u);

            v12 = v25;
            v5 = v26;
          }

          ++v13;
        }

        while (v13 < [v12 count]);
      }

      v11 = v23;
      v3 = v24;
    }
  }
}

- (id)batchedWriteAnalyticsStoreToFileWithBatchSize:(unint64_t)size maxAge:(unint64_t)age
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  v7 = [(AnalyticsStoreFileWriter *)self moc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__AnalyticsStoreFileWriter_batchedWriteAnalyticsStoreToFileWithBatchSize_maxAge___block_invoke;
  v10[3] = &unk_1E830F580;
  v10[6] = size;
  v10[7] = age;
  v10[4] = self;
  v10[5] = &v11;
  [v7 performBlockAndWait:v10];

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __81__AnalyticsStoreFileWriter_batchedWriteAnalyticsStoreToFileWithBatchSize_maxAge___block_invoke(uint64_t a1)
{
  v112 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v79 = a1;
  v3 = [*(a1 + 32) analyticsStoreFileWriterFilePath];
  v4 = v3;
  if (!v3)
  {
    v73 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v104 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFileWithBatchSize:maxAge:]_block_invoke";
      v105 = 1024;
      v106 = 330;
LABEL_60:
      _os_log_impl(&dword_1C8460000, v73, OS_LOG_TYPE_ERROR, "%{public}s::%d:fileHandle nil", buf, 0x12u);
    }

LABEL_61:

    v70 = 0;
    v27 = 0;
    v7 = 0;
    goto LABEL_55;
  }

  v5 = MEMORY[0x1E696AC00];
  v6 = [v3 path];
  v7 = [v5 fileHandleForWritingAtPath:v6];

  if (!v7)
  {
    v73 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v104 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFileWithBatchSize:maxAge:]_block_invoke";
      v105 = 1024;
      v106 = 333;
      goto LABEL_60;
    }

    goto LABEL_61;
  }

  v8 = *(v79 + 48);
  v9 = WALogCategoryDeviceStoreHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (v8)
  {
    if (v10)
    {
      v11 = *(v79 + 48);
      *buf = 136446722;
      v104 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFileWithBatchSize:maxAge:]_block_invoke";
      v105 = 1024;
      v106 = 337;
      v107 = 2048;
      v108 = v11;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:batchSize is %lu", buf, 0x1Cu);
    }

    v75 = v2;

    v74 = objc_autoreleasePoolPush();
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v12 = [*(*(v79 + 32) + 16) managedObjectModel];
    v13 = [v12 entities];

    v86 = [v13 countByEnumeratingWithState:&v98 objects:v111 count:16];
    v14 = 0;
    if (v86)
    {
      v85 = *v99;
      v76 = v13;
      do
      {
        v15 = 0;
        do
        {
          if (*v99 != v85)
          {
            objc_enumerationMutation(v13);
          }

          v16 = *(*(&v98 + 1) + 8 * v15);
          v17 = objc_autoreleasePoolPush();
          v88 = [MEMORY[0x1E696AD60] string];
          v18 = [MEMORY[0x1E696AD60] string];
          v19 = +[GeoTagMO entity];
          if ([v16 isKindOfEntity:v19])
          {

LABEL_14:
            objc_autoreleasePoolPop(v17);
            goto LABEL_41;
          }

          +[WiFiStatMO entity];
          v20 = v87 = v17;
          v21 = [v16 isKindOfEntity:v20];

          v17 = v87;
          if (v21)
          {
            goto LABEL_14;
          }

          v22 = [v16 name];
          v23 = [*(v79 + 32) stringifyObjectWithPadding:v88 padding:@"-" padToLength:{objc_msgSend(v22, "length") + 1}];
          [v18 appendFormat:@"%@", v23];

          v84 = v22;
          [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@\n%@|\n", v18, v22];
          v25 = v24 = v14;
          [v7 seekToEndOfFile];
          v26 = [v25 dataUsingEncoding:4];
          v97 = 0;
          [v7 writeData:v26 error:&v97];
          v27 = v97;

          if (v27)
          {
            v62 = WALogCategoryDeviceStoreHandle();
            v82 = v62;
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              v63 = [v27 localizedDescription];
              [v27 userInfo];
              v64 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 136446978;
              v104 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFileWithBatchSize:maxAge:]_block_invoke";
              v105 = 1024;
              v106 = 368;
              v107 = 2112;
              v108 = v63;
              v109 = 2112;
              v110 = v64;
              _os_log_impl(&dword_1C8460000, v62, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error writing %@ %@", buf, 0x26u);
            }

            v58 = 0;
            v44 = 0;
            v83 = v18;
            v46 = v25;
            v56 = v84;
            goto LABEL_39;
          }

          v83 = [MEMORY[0x1E696AD60] string];

          if (*(v79 + 56))
          {
            v28 = +[WADeviceAnalyticsDatedRecord entity];
            v29 = [v16 isKindOfEntity:v28];

            v30 = v84;
            if (v29)
            {
              v31 = [WAPersistentContainer predicateForRecordsNewerThan:(86400 * *(v79 + 56))];
            }

            else
            {
              v31 = 0;
            }
          }

          else
          {
            v31 = 0;
            v30 = v84;
          }

          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v33 = v32;
          v34 = [*(v79 + 32) moc];
          v35 = [AnalyticsStoreProxy entityCount:v30 withPredicate:v31 moc:v34];

          v81 = [*(v79 + 32) relationshipKeyPathsForPrefetching:v30];
          v36 = [AnalyticsStoreProxy fetchRequestForEntityWithBatchSize:v30 batchSize:*(v79 + 48) prefetch:?];
          v37 = [*(v79 + 32) moc];
          v38 = [AnalyticsStoreProxy fetch:v36 withPredicate:v31 moc:v37];

          v39 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            v40 = COERCE_DOUBLE([v38 count]);
            *buf = 136446978;
            v104 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFileWithBatchSize:maxAge:]_block_invoke";
            v105 = 1024;
            v106 = 384;
            v107 = 2048;
            v108 = v35;
            v109 = 2048;
            v110 = v40;
            _os_log_impl(&dword_1C8460000, v39, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Total objects:%lu ResultCount:%lu", buf, 0x26u);
          }

          v82 = v31;

          v80 = v38;
          if (v38)
          {
            context = objc_autoreleasePoolPush();
            v41 = *(v79 + 32);
            v95 = 0;
            v96 = 0;
            v42 = [v41 moc];
            [v41 stringifyManagedObjectsArray:v38 titleString:&v96 dataStringsArray:&v95 onMoc:v42];
            v43 = v96;
            v44 = v95;

            v45 = [*(v79 + 32) stringifyObjectWithPadding:v88 padding:@"-" padToLength:{objc_msgSend(v43, "length")}];
            [v83 appendFormat:@"%@", v45];

            v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@\n%@\n", v83, v43, v83];

            [v7 seekToEndOfFile];
            v47 = [v46 dataUsingEncoding:4];
            v94 = 0;
            [v7 writeData:v47 error:&v94];
            v27 = v94;

            if (v27)
            {
              v65 = WALogCategoryDeviceStoreHandle();
              v56 = v84;
              if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
              {
                v66 = [v27 localizedDescription];
                [v27 userInfo];
                v67 = v46;
                v68 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                *buf = 136446978;
                v104 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFileWithBatchSize:maxAge:]_block_invoke";
                v105 = 1024;
                v106 = 399;
                v107 = 2112;
                v108 = v66;
                v109 = 2112;
                v110 = v68;
                _os_log_impl(&dword_1C8460000, v65, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error writing %@ %@", buf, 0x26u);

                v46 = v67;
              }

              objc_autoreleasePoolPop(context);
              v58 = 0;
              v54 = v81;
              goto LABEL_38;
            }

            v77 = v46;
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v44 = v44;
            v48 = [v44 countByEnumeratingWithState:&v90 objects:v102 count:16];
            if (v48)
            {
              v49 = v48;
              v50 = *v91;
              while (2)
              {
                for (i = 0; i != v49; ++i)
                {
                  if (*v91 != v50)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v52 = [*(*(&v90 + 1) + 8 * i) stringByAppendingString:@"\n"];
                  [v7 seekToEndOfFile];
                  v53 = [v52 dataUsingEncoding:4];
                  v89 = 0;
                  [v7 writeData:v53 error:&v89];
                  v27 = v89;

                  if (v27)
                  {
                    v59 = WALogCategoryDeviceStoreHandle();
                    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                    {
                      v60 = [v27 localizedDescription];
                      [v27 userInfo];
                      v61 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                      *buf = 136446978;
                      v104 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFileWithBatchSize:maxAge:]_block_invoke";
                      v105 = 1024;
                      v106 = 410;
                      v107 = 2112;
                      v108 = v60;
                      v109 = 2112;
                      v110 = v61;
                      _os_log_impl(&dword_1C8460000, v59, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error writing %@ %@", buf, 0x26u);
                    }

                    objc_autoreleasePoolPop(context);
                    v58 = 0;
                    v56 = v84;
                    v54 = v81;
                    v46 = v77;
                    goto LABEL_38;
                  }
                }

                v49 = [v44 countByEnumeratingWithState:&v90 objects:v102 count:16];
                if (v49)
                {
                  continue;
                }

                break;
              }
            }

            objc_autoreleasePoolPop(context);
            v54 = v81;
            v46 = v77;
          }

          else
          {
            v44 = 0;
            v46 = 0;
            v54 = v81;
          }

          v55 = WALogCategoryDeviceStoreHandle();
          v56 = v84;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            *buf = 136446978;
            v104 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFileWithBatchSize:maxAge:]_block_invoke";
            v105 = 1024;
            v106 = 415;
            v107 = 2112;
            v108 = v84;
            v109 = 2048;
            v110 = v57 - v33;
            _os_log_impl(&dword_1C8460000, v55, OS_LOG_TYPE_ERROR, "%{public}s::%d: %@ Took %fs", buf, 0x26u);
          }

          v27 = 0;
          v58 = 1;
LABEL_38:

LABEL_39:
          objc_autoreleasePoolPop(v87);
          if ((v58 & 1) == 0)
          {

            objc_autoreleasePoolPop(v74);
            v70 = 0;
            v2 = v75;
            goto LABEL_55;
          }

          v14 = v27;
          v13 = v76;
LABEL_41:
          ++v15;
        }

        while (v15 != v86);
        v69 = [v13 countByEnumeratingWithState:&v98 objects:v111 count:16];
        v86 = v69;
      }

      while (v69);
    }

    objc_autoreleasePoolPop(v74);
    [v7 closeFile];
    [WAUtil setFutureApfsPurgeableDeadline:604800 forURL:v4];
    v70 = [v4 path];
    v27 = v14;
    v2 = v75;
  }

  else
  {
    if (v10)
    {
      *buf = 136446466;
      v104 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFileWithBatchSize:maxAge:]_block_invoke";
      v105 = 1024;
      v106 = 335;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:batchSize is 0", buf, 0x12u);
    }

    v70 = 0;
    v27 = 0;
  }

LABEL_55:
  v71 = *(*(v79 + 40) + 8);
  v72 = *(v71 + 40);
  *(v71 + 40) = v70;

  objc_autoreleasePoolPop(v2);
}

- (id)batchedWriteAnalyticsStoreToCSVFilesWithBatchSize:(unint64_t)size maxAge:(unint64_t)age
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  array = [MEMORY[0x1E695DF70] array];
  v7 = [(AnalyticsStoreFileWriter *)self moc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__AnalyticsStoreFileWriter_batchedWriteAnalyticsStoreToCSVFilesWithBatchSize_maxAge___block_invoke;
  v10[3] = &unk_1E830F580;
  v10[6] = size;
  v10[7] = age;
  v10[4] = self;
  v10[5] = &v11;
  [v7 performBlockAndWait:v10];

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __85__AnalyticsStoreFileWriter_batchedWriteAnalyticsStoreToCSVFilesWithBatchSize_maxAge___block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v2 = [*(a1 + 32) mom];
  v3 = [v2 entities];

  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    *buf = 136446978;
    v58 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToCSVFilesWithBatchSize:maxAge:]_block_invoke";
    v59 = 1024;
    v60 = 445;
    v61 = 2048;
    v62 = v5;
    v63 = 2048;
    v64 = v6;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:batchSize is %lu, maxAge is %lu days ago", buf, 0x26u);
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = [MEMORY[0x1E695DF00] date];
  v9 = [v7 stringFromDate:v8];

  v10 = [objc_opt_class() analyticsStoreFileWriterDirectory];
  v11 = [v10 path];
  v47 = v9;
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AllEntityStats_%@.csv", v9];
  v13 = [v11 stringByAppendingPathComponent:v12];

  v45 = v13;
  v14 = [MEMORY[0x1E695DFC0] outputStreamToFileAtPath:v13 append:0];
  [v14 open];
  v44 = v14;
  v15 = [[AnalyticsCSVWriter alloc] initWithOutputStream:v14];
  v16 = [MEMORY[0x1E695DFB8] orderedSetWithArray:&unk_1F483E7A0];
  [(AnalyticsCSVWriter *)v15 writeFields:v16];

  [(AnalyticsCSVWriter *)v15 finishLine];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v3;
  v50 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v50)
  {
    v49 = *v52;
    do
    {
      v17 = 0;
      do
      {
        if (*v52 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v51 + 1) + 8 * v17);
        v19 = [v18 name];
        v20 = [*(*(a1 + 32) + 16) countObjects:v18 withPredicate:0 withError:0];
        v21 = MEMORY[0x1E695DFB8];
        v55[0] = v19;
        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
        v23 = [v22 description];
        v55[1] = v23;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
        v25 = [v21 orderedSetWithArray:v24];
        [(AnalyticsCSVWriter *)v15 writeFields:v25];

        [(AnalyticsCSVWriter *)v15 finishLine];
        v26 = [*(*(a1 + 32) + 16) defaultFetchLimitForEntity:v18];
        v27 = [*(*(a1 + 32) + 16) defaultFetchMaxAgeForEntity:v18];
        v28 = +[GeoTagMO entity];
        v29 = [v28 name];
        v30 = [v19 isEqualToString:v29];

        if ((v30 & 1) == 0)
        {
          v31 = WALogCategoryDeviceStoreHandle();
          if (os_signpost_enabled(v31))
          {
            v32 = [v19 UTF8String];
            *buf = 136315138;
            v58 = v32;
            _os_signpost_emit_with_name_impl(&dword_1C8460000, v31, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CSV Export", "%s", buf, 0xCu);
          }

          v33 = *(a1 + 32);
          if (v26 < 0)
          {
            v26 = *(a1 + 48);
            if ((v27 & 0x8000000000000000) == 0)
            {
              goto LABEL_13;
            }
          }

          else if ((v27 & 0x8000000000000000) == 0)
          {
LABEL_13:
            v34 = [objc_opt_class() analyticsStoreFileWriterDirectory];
            v35 = [v33 exportEntityToCSV:v18 batchSize:v26 maxAge:v27 toURL:v34 fileDate:v47];

            if (v35)
            {
              v36 = WALogCategoryDeviceStoreHandle();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446722;
                v58 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToCSVFilesWithBatchSize:maxAge:]_block_invoke";
                v59 = 1024;
                v60 = 482;
                v61 = 2112;
                v62 = v35;
                _os_log_impl(&dword_1C8460000, v36, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Wrote CSV file %@", buf, 0x1Cu);
              }

              [*(*(*(a1 + 40) + 8) + 40) addObject:v35];
            }

            v37 = WALogCategoryDeviceStoreHandle();
            if (os_signpost_enabled(v37))
            {
              v38 = [v19 UTF8String];
              *buf = 136315138;
              v58 = v38;
              _os_signpost_emit_with_name_impl(&dword_1C8460000, v37, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CSV Export", "%s", buf, 0xCu);
            }

            goto LABEL_20;
          }

          v27 = *(a1 + 56);
          goto LABEL_13;
        }

LABEL_20:

        ++v17;
      }

      while (v50 != v17);
      v39 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      v50 = v39;
    }

    while (v39);
  }

  v40 = *(*(a1 + 40) + 8);
  v41 = *(v40 + 40);
  if (!v41)
  {
    v42 = 0;
LABEL_31:
    *(v40 + 40) = 0;
    goto LABEL_32;
  }

  if (![v41 count])
  {
    v40 = *(*(a1 + 40) + 8);
    v42 = *(v40 + 40);
    goto LABEL_31;
  }

  v42 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [*(*(*(a1 + 40) + 8) + 40) count];
    *buf = 136446722;
    v58 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToCSVFilesWithBatchSize:maxAge:]_block_invoke";
    v59 = 1024;
    v60 = 490;
    v61 = 2048;
    v62 = v43;
    _os_log_impl(&dword_1C8460000, v42, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Total CSVs written %lu", buf, 0x1Cu);
  }

LABEL_32:

  objc_autoreleasePoolPop(context);
}

- (id)batchedWriteAnalyticsStoreToFile:(unint64_t)file maxAge:(unint64_t)age
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  v7 = [(AnalyticsStoreFileWriter *)self moc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__AnalyticsStoreFileWriter_batchedWriteAnalyticsStoreToFile_maxAge___block_invoke;
  v10[3] = &unk_1E830F580;
  v10[6] = file;
  v10[7] = age;
  v10[4] = self;
  v10[5] = &v11;
  [v7 performBlockAndWait:v10];

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __68__AnalyticsStoreFileWriter_batchedWriteAnalyticsStoreToFile_maxAge___block_invoke(uint64_t a1)
{
  v168 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsStoreFileWriterFilePath];
  v4 = v3;
  if (!v3)
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v160 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
      v161 = 1024;
      v162 = 515;
LABEL_94:
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:fileHandle nil", buf, 0x12u);
    }

LABEL_95:
    v7 = 0;
LABEL_96:
    v35 = 0;
    goto LABEL_77;
  }

  v5 = MEMORY[0x1E696AC00];
  v6 = [v3 path];
  v7 = [v5 fileHandleForWritingAtPath:v6];

  if (!v7)
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v160 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
      v161 = 1024;
      v162 = 518;
      goto LABEL_94;
    }

    goto LABEL_95;
  }

  v8 = *(a1 + 48);
  v9 = WALogCategoryDeviceStoreHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (!v8)
  {
    if (v10)
    {
      *buf = 136446466;
      v160 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
      v161 = 1024;
      v162 = 520;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:fetchLimit is 0", buf, 0x12u);
    }

    goto LABEL_96;
  }

  v114 = v4;
  if (v10)
  {
    v11 = *(a1 + 48);
    *buf = 136446722;
    v160 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
    v161 = 1024;
    v162 = 522;
    v163 = 2048;
    v164 = v11;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:fetchLimit is %lu", buf, 0x1Cu);
  }

  v115 = v2;

  v12 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreToFile", "", buf, 2u);
  }

  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v13 = [*(a1 + 32) mom];
  v14 = [v13 entities];

  v126 = [v14 countByEnumeratingWithState:&v153 objects:v167 count:16];
  if (!v126)
  {
LABEL_72:

    [v7 closeFile];
    v4 = v114;
    [WAUtil setFutureApfsPurgeableDeadline:604800 forURL:v114];
    v99 = [v114 path];
    v35 = 0;
    v2 = v115;
    goto LABEL_78;
  }

  v15 = 0x1E830D000uLL;
  v127 = *v154;
  v130 = a1;
  obj = v14;
LABEL_10:
  v16 = 0;
  while (1)
  {
    if (*v154 != v127)
    {
      objc_enumerationMutation(obj);
    }

    v17 = *(*(&v153 + 1) + 8 * v16);
    v136 = [MEMORY[0x1E696AD60] string];
    v131 = [MEMORY[0x1E696AD60] string];
    v18 = [v17 name];
    v19 = [*(v15 + 240) entity];
    v20 = [v19 name];
    if (([v18 isEqualToString:v20] & 1) == 0)
    {
      break;
    }

    v135 = v18;
    v21 = 0;
    v22 = 0;
    v23 = v131;
LABEL_15:

LABEL_18:
    if (++v16 == v126)
    {
      v14 = obj;
      v98 = [obj countByEnumeratingWithState:&v153 objects:v167 count:16];
      v126 = v98;
      if (!v98)
      {
        goto LABEL_72;
      }

      goto LABEL_10;
    }
  }

  v125 = v16;
  v24 = [v17 name];
  v25 = +[WiFiStatMO entity];
  v26 = [v25 name];
  v27 = [v24 isEqualToString:v26];

  if (v27)
  {
    v21 = 0;
    v22 = 0;
    a1 = v130;
    v23 = v131;
    v15 = 0x1E830D000;
    v16 = v125;
    goto LABEL_18;
  }

  a1 = v130;
  v28 = *(v130 + 32);
  v29 = [v17 name];
  v30 = [v28 stringifyObjectWithPadding:v136 padding:@"-" padToLength:{objc_msgSend(v29, "length") + 1}];
  [v131 appendFormat:@"%@", v30];

  v31 = MEMORY[0x1E696AEC0];
  v32 = [v17 name];
  v33 = [v31 stringWithFormat:@"\n%@\n%@|\n", v131, v32];

  [v7 seekToEndOfFile];
  v34 = [v33 dataUsingEncoding:4];
  v152 = 0;
  [v7 writeData:v34 error:&v152];
  v35 = v152;

  if (v35)
  {
    v109 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      v110 = [v35 localizedDescription];
      [v35 userInfo];
      v111 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 136446978;
      v160 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
      v161 = 1024;
      v162 = 549;
      v163 = 2112;
      v164 = v110;
      v165 = 2112;
      v166 = v111;
      _os_log_impl(&dword_1C8460000, v109, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error writing %@ %@", buf, 0x26u);

      a1 = v130;
    }

    v4 = v114;
    v2 = v115;
    v9 = obj;
    goto LABEL_77;
  }

  v36 = v17;

  v119 = [MEMORY[0x1E696AD60] string];

  v37 = *(v130 + 56);
  if (v37)
  {
    v38 = [*(*(v130 + 32) + 16) predicateForEntity:v17 newerThan:0 withError:(86400 * v37)];
    v16 = v125;
    if (!v38)
    {
      v21 = 0;
      v22 = 0;
      v23 = v119;
      v15 = 0x1E830D000;
      goto LABEL_18;
    }
  }

  else
  {
    v38 = 0;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v40 = v39;
  v41 = [v17 name];
  v42 = [*(v130 + 32) moc];
  v43 = [AnalyticsStoreProxy entityCount:v41 withPredicate:v38 moc:v42];

  v44 = *(v130 + 48);
  v124 = v44;
  if (v43 <= v44)
  {
    v45 = 0.0;
  }

  else
  {
    *&v45 = v43 % v44;
  }

  v46 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446978;
    v160 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
    v161 = 1024;
    v162 = 569;
    v163 = 2048;
    v164 = v43;
    v165 = 2048;
    v166 = v45;
    _os_log_impl(&dword_1C8460000, v46, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Total objects:%lu Remainder:%lu", buf, 0x26u);
  }

  v135 = v38;

  v47 = *(v130 + 32);
  v48 = [v36 name];
  v49 = [v47 relationshipKeyPathsForPrefetching:v48];

  v116 = v45;
  v121 = v43 - *&v45;
  v118 = v36;
  if (v43 == *&v45)
  {
    v50 = 0;
    v21 = 0;
    v128 = 0;
    v51 = v124;
LABEL_32:
    v52 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      [v36 name];
      v54 = v53 = v50;
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      *buf = 136446978;
      v160 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
      v161 = 1024;
      v162 = 610;
      v163 = 2112;
      v164 = v54;
      v165 = 2048;
      v166 = v55 - v40;
      _os_log_impl(&dword_1C8460000, v52, OS_LOG_TYPE_ERROR, "%{public}s::%d: %@ Took %fs", buf, 0x26u);

      v50 = v53;
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v57 = v56;
    v15 = 0x1E830D000;
    if (v116 != 0.0)
    {
      context = objc_autoreleasePoolPush();
      v58 = [v36 name];
      v59 = v50;
      v60 = v58;
      v132 = v59;
      v61 = [AnalyticsStoreProxy fetchRequestForEntityWithOffset:"fetchRequestForEntityWithOffset:limit:offset:prefetch:" limit:v58 offset:v51 prefetch:?];
      v62 = [*(v130 + 32) moc];
      v63 = [AnalyticsStoreProxy fetch:v61 withPredicate:v135 moc:v62];

      v64 = v63;
      if (v63)
      {
        v117 = v49;
        v65 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          v160 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
          v161 = 1024;
          v162 = 617;
          v163 = 2048;
          v164 = v132;
          v165 = 2048;
          *&v166 = &v132[*&v116];
          _os_log_impl(&dword_1C8460000, v65, OS_LOG_TYPE_ERROR, "%{public}s::%d:Processing managed objects %lu through %lu", buf, 0x26u);
        }

        v66 = *(v130 + 32);
        v142 = v21;
        v143 = v128;
        v67 = [v66 moc];
        v123 = v64;
        [v66 stringifyManagedObjectsArray:v64 titleString:&v143 dataStringsArray:&v142 onMoc:v67];
        v133 = v143;

        v68 = v142;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v21 = v68;
        v69 = [v21 countByEnumeratingWithState:&v138 objects:v157 count:16];
        if (v69)
        {
          v70 = v69;
          v71 = *v139;
          while (2)
          {
            for (i = 0; i != v70; ++i)
            {
              if (*v139 != v71)
              {
                objc_enumerationMutation(v21);
              }

              v73 = [*(*(&v138 + 1) + 8 * i) stringByAppendingString:@"\n"];
              [v7 seekToEndOfFile];
              v74 = [v73 dataUsingEncoding:4];
              v137 = 0;
              [v7 writeData:v74 error:&v137];
              v35 = v137;

              if (v35)
              {
                v106 = WALogCategoryDeviceStoreHandle();
                if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                {
                  v107 = [v35 localizedDescription];
                  [v35 userInfo];
                  v108 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                  *buf = 136446978;
                  v160 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
                  v161 = 1024;
                  v162 = 628;
                  v163 = 2112;
                  v164 = v107;
                  v165 = 2112;
                  v166 = v108;
                  _os_log_impl(&dword_1C8460000, v106, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error writing %@ %@", buf, 0x26u);
                }

                v87 = v21;
                v128 = v133;
                goto LABEL_76;
              }
            }

            v70 = [v21 countByEnumeratingWithState:&v138 objects:v157 count:16];
            if (v70)
            {
              continue;
            }

            break;
          }
        }

        v128 = v133;
        v15 = 0x1E830D000;
        v49 = v117;
        v64 = v123;
      }

      objc_autoreleasePoolPop(context);
    }

    a1 = v130;
    v16 = v125;
    v19 = v49;
    v20 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v75 = [v118 name];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      *buf = 136446978;
      v160 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
      v161 = 1024;
      v162 = 634;
      v163 = 2112;
      v164 = v75;
      v165 = 2048;
      v166 = v76 - v57;
      _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d: %@ reminder took %fs", buf, 0x26u);
    }

    v23 = v119;
    v22 = v128;
    goto LABEL_15;
  }

  v77 = 0;
  v21 = 0;
  v50 = 0;
  v122 = 0;
  v51 = v124;
  v117 = v49;
  while (1)
  {
    context = objc_autoreleasePoolPush();
    v78 = [v36 name];
    v134 = v50;
    v79 = [AnalyticsStoreProxy fetchRequestForEntityWithOffset:v78 limit:v51 offset:v50 prefetch:v49];
    v80 = [*(v130 + 32) moc];
    v81 = [AnalyticsStoreProxy fetch:v79 withPredicate:v135 moc:v80];

    v82 = v81;
    if (v81)
    {
      break;
    }

    v128 = v77;
    v51 = v124;
    v88 = v134;
LABEL_69:

    objc_autoreleasePoolPop(context);
    v50 = v88;
    if (v88 >= v121)
    {
      goto LABEL_32;
    }
  }

  v83 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v160 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
    v161 = 1024;
    v162 = 577;
    v163 = 2048;
    v164 = v134;
    v165 = 2048;
    *&v166 = &v134[v124 - 1];
    _os_log_impl(&dword_1C8460000, v83, OS_LOG_TYPE_ERROR, "%{public}s::%d:Processing managed objects %lu through %lu", buf, 0x26u);
  }

  v84 = *(v130 + 32);
  v150 = v21;
  v151 = v77;
  v85 = [v84 moc];
  v123 = v82;
  [v84 stringifyManagedObjectsArray:v82 titleString:&v151 dataStringsArray:&v150 onMoc:v85];
  v86 = v151;

  v87 = v150;
  if (v122)
  {
    v128 = v86;
LABEL_60:
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v21 = v87;
    v92 = [v21 countByEnumeratingWithState:&v145 objects:v158 count:16];
    v36 = v118;
    if (v92)
    {
      v93 = v92;
      v94 = *v146;
      while (2)
      {
        for (j = 0; j != v93; ++j)
        {
          if (*v146 != v94)
          {
            objc_enumerationMutation(v21);
          }

          v96 = [*(*(&v145 + 1) + 8 * j) stringByAppendingString:@"\n"];
          [v7 seekToEndOfFile];
          v97 = [v96 dataUsingEncoding:4];
          v144 = 0;
          [v7 writeData:v97 error:&v144];
          v35 = v144;

          if (v35)
          {
            v100 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              v101 = [v35 localizedDescription];
              [v35 userInfo];
              v102 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 136446978;
              v160 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
              v161 = 1024;
              v162 = 604;
              v163 = 2112;
              v164 = v101;
              v165 = 2112;
              v166 = v102;
              _os_log_impl(&dword_1C8460000, v100, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error writing %@ %@", buf, 0x26u);
            }

            v87 = v21;
            goto LABEL_76;
          }
        }

        v93 = [v21 countByEnumeratingWithState:&v145 objects:v158 count:16];
        if (v93)
        {
          continue;
        }

        break;
      }
    }

    v51 = v124;
    v88 = &v134[v124];

    v122 = 1;
    v77 = v128;
    v49 = v117;
    v82 = v123;
    goto LABEL_69;
  }

  v89 = [*(v130 + 32) stringifyObjectWithPadding:v136 padding:@"-" padToLength:{objc_msgSend(v86, "length")}];
  [v119 appendFormat:@"%@", v89];

  v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@\n%@\n", v119, v86, v119];

  [v7 seekToEndOfFile];
  v91 = [v90 dataUsingEncoding:4];
  v149 = 0;
  [v7 writeData:v91 error:&v149];
  v35 = v149;

  if (!v35)
  {
    v128 = v90;
    goto LABEL_60;
  }

  v21 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v112 = [v35 localizedDescription];
    [v35 userInfo];
    v113 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 136446978;
    v160 = "[AnalyticsStoreFileWriter batchedWriteAnalyticsStoreToFile:maxAge:]_block_invoke";
    v161 = 1024;
    v162 = 591;
    v163 = 2112;
    v164 = v112;
    v165 = 2112;
    v166 = v113;
    _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error writing %@ %@", buf, 0x26u);
  }

  v128 = v90;
LABEL_76:
  v4 = v114;
  v2 = v115;
  v9 = obj;

  objc_autoreleasePoolPop(context);
  a1 = v130;
LABEL_77:

  v99 = 0;
LABEL_78:
  v103 = *(*(a1 + 40) + 8);
  v104 = *(v103 + 40);
  *(v103 + 40) = v99;

  v105 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v105))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v105, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreToFile", "", buf, 2u);
  }

  objc_autoreleasePoolPop(v2);
}

- (id)writeAnalyticsStoreToFile
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = 0;
  v3 = [(AnalyticsStoreFileWriter *)self moc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__AnalyticsStoreFileWriter_writeAnalyticsStoreToFile__block_invoke;
  v6[3] = &unk_1E830F558;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __53__AnalyticsStoreFileWriter_writeAnalyticsStoreToFile__block_invoke(uint64_t a1)
{
  v99 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsStoreFileWriterFilePath];
  v4 = v3;
  if (!v3)
  {
    v56 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 136446466;
    v91 = "[AnalyticsStoreFileWriter writeAnalyticsStoreToFile]_block_invoke";
    v92 = 1024;
    v93 = 666;
    goto LABEL_51;
  }

  v5 = MEMORY[0x1E696AC00];
  v6 = [v3 path];
  v7 = [v5 fileHandleForWritingAtPath:v6];

  if (!v7)
  {
    v56 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 136446466;
    v91 = "[AnalyticsStoreFileWriter writeAnalyticsStoreToFile]_block_invoke";
    v92 = 1024;
    v93 = 669;
LABEL_51:
    _os_log_impl(&dword_1C8460000, v56, OS_LOG_TYPE_ERROR, "%{public}s::%d:fileHandle nil", buf, 0x12u);
LABEL_52:
    v7 = 0;
    v25 = 0;
LABEL_42:

    v55 = 0;
    goto LABEL_43;
  }

  v67 = v4;
  v62 = v2;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v8 = [*(a1 + 32) mom];
  v9 = [v8 entitiesByName];
  v10 = [v9 allKeys];

  obj = v10;
  v70 = [v10 countByEnumeratingWithState:&v85 objects:v98 count:16];
  v11 = 0;
  if (!v70)
  {
    goto LABEL_40;
  }

  v69 = *v86;
  v63 = a1;
  while (2)
  {
    v12 = 0;
    do
    {
      if (*v86 != v69)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v85 + 1) + 8 * v12);
      v14 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v91 = "[AnalyticsStoreFileWriter writeAnalyticsStoreToFile]_block_invoke";
        v92 = 1024;
        v93 = 672;
        v94 = 2112;
        v95 = v13;
        v96 = 2112;
        v97 = *&v67;
        _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Dumping %@ entities to %@", buf, 0x26u);
      }

      v75 = v13;
      v15 = [MEMORY[0x1E696AD60] string];
      v73 = [MEMORY[0x1E696AD60] string];
      v16 = +[GeoTagMO entity];
      v17 = [v16 name];
      if ([v13 isEqualToString:v17])
      {

LABEL_13:
        goto LABEL_34;
      }

      +[WiFiStatMO entity];
      v71 = v12;
      v18 = v72 = v15;
      v19 = [v18 name];
      v20 = [v13 isEqualToString:v19];

      v12 = v71;
      v15 = v72;

      if (v20)
      {
        goto LABEL_13;
      }

      v21 = [*(a1 + 32) stringifyObjectWithPadding:v72 padding:@"-" padToLength:{objc_msgSend(v13, "length") + 1}];
      v22 = v73;
      [v73 appendFormat:@"%@", v21];

      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@\n%@|\n", v73, v13];
      [v7 seekToEndOfFile];
      v24 = [v23 dataUsingEncoding:4];
      v84 = 0;
      [v7 writeData:v24 error:&v84];
      v25 = v84;

      if (v25)
      {
        v59 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          v60 = [v25 localizedDescription];
          [v25 userInfo];
          v61 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 136446978;
          v91 = "[AnalyticsStoreFileWriter writeAnalyticsStoreToFile]_block_invoke";
          v92 = 1024;
          v93 = 694;
          v94 = 2112;
          v95 = v60;
          v96 = 2112;
          v97 = v61;
          _os_log_impl(&dword_1C8460000, v59, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error writing %@ %@", buf, 0x26u);

          v22 = v73;
        }

        v2 = v62;
        v4 = v67;
        v56 = obj;
        goto LABEL_42;
      }

      v26 = [MEMORY[0x1E696AD60] string];

      v65 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = [v27 moc];
      v29 = [AnalyticsStoreProxy fetchAll:v13 moc:v28];
      v82 = 0;
      v83 = 0;
      v30 = [*(a1 + 32) moc];
      [v27 stringifyManagedObjectsArray:v29 titleString:&v83 dataStringsArray:&v82 onMoc:v30];
      v31 = v83;
      v74 = v82;

      v32 = [*(a1 + 32) stringifyObjectWithPadding:v72 padding:@"-" padToLength:{objc_msgSend(v31, "length")}];
      [v26 appendFormat:@"%@", v32];

      v66 = v26;
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@\n%@\n", v26, v31, v26];

      [v7 seekToEndOfFile];
      v64 = v33;
      v34 = [v33 dataUsingEncoding:4];
      v81 = 0;
      [v7 writeData:v34 error:&v81];
      v11 = v81;

      if (v11)
      {
        v37 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v52 = [v11 localizedDescription];
          [v11 userInfo];
          v53 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 136446978;
          v91 = "[AnalyticsStoreFileWriter writeAnalyticsStoreToFile]_block_invoke";
          v92 = 1024;
          v93 = 711;
          v94 = 2112;
          v95 = v52;
          v96 = 2112;
          v97 = v53;
          _os_log_impl(&dword_1C8460000, v37, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error writing %@ %@", buf, 0x26u);
        }

        v48 = 0;
      }

      else
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v36 = v35;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v37 = v74;
        v38 = [v37 countByEnumeratingWithState:&v77 objects:v89 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = 0;
          v41 = *v78;
          while (2)
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v78 != v41)
              {
                objc_enumerationMutation(v37);
              }

              v43 = [*(*(&v77 + 1) + 8 * i) stringByAppendingString:@"\n"];
              v44 = WALogCategoryDeviceStoreHandle();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                v45 = COERCE_DOUBLE([v37 count]);
                *buf = 136446978;
                v91 = "[AnalyticsStoreFileWriter writeAnalyticsStoreToFile]_block_invoke";
                v92 = 1024;
                v93 = 718;
                v94 = 2048;
                v95 = v40;
                v96 = 2048;
                v97 = v45;
                _os_log_impl(&dword_1C8460000, v44, OS_LOG_TYPE_ERROR, "%{public}s::%d:Processing managed objects %lu through %lu", buf, 0x26u);
              }

              [v7 seekToEndOfFile];
              v46 = [v43 dataUsingEncoding:4];
              v76 = 0;
              [v7 writeData:v46 error:&v76];
              v11 = v76;

              if (v11)
              {
                v49 = WALogCategoryDeviceStoreHandle();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  v50 = [v11 localizedDescription];
                  [v11 userInfo];
                  v51 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                  *buf = 136446978;
                  v91 = "[AnalyticsStoreFileWriter writeAnalyticsStoreToFile]_block_invoke";
                  v92 = 1024;
                  v93 = 725;
                  v94 = 2112;
                  v95 = v50;
                  v96 = 2112;
                  v97 = v51;
                  _os_log_impl(&dword_1C8460000, v49, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error writing %@ %@", buf, 0x26u);
                }

                v48 = 0;
                goto LABEL_32;
              }

              ++v40;
            }

            v39 = [v37 countByEnumeratingWithState:&v77 objects:v89 count:16];
            if (v39)
            {
              continue;
            }

            break;
          }
        }

        v37 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          *buf = 136446978;
          v91 = "[AnalyticsStoreFileWriter writeAnalyticsStoreToFile]_block_invoke";
          v92 = 1024;
          v93 = 728;
          v94 = 2112;
          v95 = v75;
          v96 = 2048;
          v97 = v47 - v36;
          _os_log_impl(&dword_1C8460000, v37, OS_LOG_TYPE_ERROR, "%{public}s::%d: %@ reminder took %fs", buf, 0x26u);
        }

        v11 = 0;
        v48 = 1;
LABEL_32:
        a1 = v63;
      }

      v12 = v71;

      objc_autoreleasePoolPop(v65);
      if (!v48)
      {
        v25 = v11;
        v2 = v62;
        v4 = v67;
        v56 = obj;
        goto LABEL_42;
      }

LABEL_34:
      ++v12;
    }

    while (v12 != v70);
    v54 = [obj countByEnumeratingWithState:&v85 objects:v98 count:16];
    v70 = v54;
    if (v54)
    {
      continue;
    }

    break;
  }

LABEL_40:

  [v7 closeFile];
  v4 = v67;
  [WAUtil setFutureApfsPurgeableDeadline:604800 forURL:v67];
  v55 = [v67 path];
  v25 = v11;
  v2 = v62;
LABEL_43:
  v57 = *(*(a1 + 40) + 8);
  v58 = *(v57 + 40);
  *(v57 + 40) = v55;

  objc_autoreleasePoolPop(v2);
}

- (id)relationshipKeyPathsForPrefetching:(id)prefetching
{
  prefetchingCopy = prefetching;
  array = [MEMORY[0x1E695DF70] array];
  v5 = +[NetworkMO entity];
  name = [v5 name];
  v7 = [prefetchingCopy isEqualToString:name];

  if (v7)
  {
    v8 = @"bss";
LABEL_9:
    [array addObject:v8];
    v19 = array;
    goto LABEL_10;
  }

  v9 = +[BSSMO entity];
  name2 = [v9 name];
  v11 = [prefetchingCopy isEqualToString:name2];

  if (v11)
  {
    v8 = @"network";
    goto LABEL_9;
  }

  v12 = +[WADeviceAnalyticsLeaveRecord entity];
  name3 = [v12 name];
  v14 = [prefetchingCopy isEqualToString:name3];

  if (v14 & 1) != 0 || (+[WADeviceAnalyticsJoinRecord entity](WADeviceAnalyticsJoinRecord, "entity"), v15 = objc_claimAutoreleasedReturnValue(), [v15 name], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(prefetchingCopy, "isEqualToString:", v16), v16, v15, (v17))
  {
    v8 = @"bss.network";
    v18 = @"bss";
LABEL_8:
    [array addObject:v18];
    goto LABEL_9;
  }

  v21 = +[RoamMO entity];
  name4 = [v21 name];
  v23 = [prefetchingCopy isEqualToString:name4];

  if (v23)
  {
    [array addObject:@"source"];
    v8 = @"target";
    v18 = @"source.network";
    goto LABEL_8;
  }

  v19 = 0;
LABEL_10:

  return v19;
}

- (id)stringifyRelationship:(id)relationship name:(id *)name onMoc:(id)moc
{
  v60[2] = *MEMORY[0x1E69E9840];
  relationshipCopy = relationship;
  mocCopy = moc;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ssid = [relationshipCopy ssid];
    v10 = [BSSMO allBssidsForSsid:ssid moc:mocCopy];

    if (v10)
    {
      v11 = @"bssids";
LABEL_7:
      *name = v11;
      name = [v10 componentsJoinedByString:{@", "}];
LABEL_8:

      goto LABEL_25;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bssid = [relationshipCopy bssid];
    v10 = [BSSMO allSsidsForBssid:bssid moc:mocCopy];

    if (v10)
    {
      v11 = @"ssids";
      goto LABEL_7;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = relationshipCopy;
      v14 = [v13 bss];
      v15 = [v13 bss];

      network = [v15 network];
    }

    else
    {
      network = 0;
      v14 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = relationshipCopy;
      v18 = [v17 bss];

      v19 = [v17 bss];

      network2 = [v19 network];

      network = network2;
      v14 = v18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = relationshipCopy;
      v22 = [v21 bss];

      v23 = [v21 bss];

      network3 = [v23 network];

      network = network3;
      v14 = v22;
    }

    ssid2 = [network ssid];
    bssid2 = [v14 bssid];
    *name = @"ssid-bssid";
    if (!ssid2)
    {
      ssid2 = @"(nil)";
    }

    if (bssid2)
    {
      v27 = bssid2;
    }

    else
    {
      v27 = @"(nil)";
    }

    name = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", ssid2, v27];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = relationshipCopy;
      source = [v10 source];
      target = [v10 target];
      source2 = [v10 source];
      network4 = [source2 network];

      ssid3 = [network4 ssid];
      bssid3 = [source bssid];
      bssid4 = [target bssid];
      if (!ssid3)
      {
        ssid3 = @"(nil)";
      }

      if (!bssid3)
      {
        bssid3 = @"(nil)";
      }

      if (bssid4)
      {
        v36 = bssid4;
      }

      else
      {
        v36 = @"(nil)";
      }

      *name = @"ssid:bssidSource->bssidTarget";
      name = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@->%@", ssid3, bssid3, v36];

      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v59 = relationshipCopy;
      origin = [v59 origin];
      result = [v59 result];
      v58 = origin;
      bssid5 = [origin bssid];
      bssid6 = [result bssid];
      if (bssid5)
      {
        v41 = bssid5;
      }

      else
      {
        v41 = @"(nil)";
      }

      if (bssid6)
      {
        v42 = bssid6;
      }

      else
      {
        v42 = @"(nil)";
      }

      *name = @"(origin)ssid:bssid (result)ssid:bssid";
      v43 = MEMORY[0x1E696AEC0];
      network5 = [origin network];
      ssid4 = [network5 ssid];
      network6 = [result network];
      ssid5 = [network6 ssid];
      name = [v43 stringWithFormat:@"%@:%@ %@:%@", ssid4, v41, ssid5, v42];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_54;
      }

      v48 = relationshipCopy;
      v49 = [v48 bss];
      bssid7 = [v49 bssid];

      v51 = [v48 bss];
      network7 = [v51 network];
      ssid6 = [network7 ssid];

      v54 = @"(nil)";
      if (ssid6)
      {
        v55 = ssid6;
      }

      else
      {
        v55 = @"(nil)";
      }

      if (bssid7)
      {
        v54 = bssid7;
      }

      v60[0] = v55;
      v60[1] = v54;
      v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
      v57 = v56;
      if (v56)
      {
        *name = @"ssid,bssid";
        name = [v56 componentsJoinedByString:@": "];
      }

      if (!v57)
      {
LABEL_54:
        name = 0;
      }
    }
  }

LABEL_25:

  return name;
}

- (void)stringifyManagedObjectsArray:(id)array titleString:(id *)string dataStringsArray:(id *)stringsArray onMoc:(id)moc
{
  v147 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  mocCopy = moc;
  array = [MEMORY[0x1E695DF70] array];
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v12 = arrayCopy;
  v98 = [v12 countByEnumeratingWithState:&v116 objects:v146 count:16];
  if (!v98)
  {

    v13 = 0;
    goto LABEL_81;
  }

  stringCopy = string;
  stringsArrayCopy = stringsArray;
  v13 = 0;
  obj = v12;
  v96 = *v117;
  v14 = 0x1E696A000uLL;
  v97 = array;
  do
  {
    v15 = 0;
    do
    {
      v99 = v13;
      if (*v117 != v96)
      {
        objc_enumerationMutation(obj);
      }

      v100 = v15;
      v16 = *(*(&v116 + 1) + 8 * v15);
      array2 = [MEMORY[0x1E695DF70] array];
      outCount = 0;
      v17 = objc_opt_class();
      v18 = class_copyPropertyList(v17, &outCount);
      v19 = v18;
      v20 = 0x1E830D000uLL;
      if (outCount)
      {
        v21 = 0;
        v101 = v18;
        while (1)
        {
          v22 = objc_autoreleasePoolPush();
          Name = property_getName(v19[v21]);
          if (Name)
          {
            break;
          }

LABEL_27:
          objc_autoreleasePoolPop(v22);
          if (++v21 >= outCount)
          {
            goto LABEL_58;
          }
        }

        v24 = [*(v14 + 3776) stringWithUTF8String:Name];
        analyticsStoreEntityRelationshipNames = [*(v20 + 184) analyticsStoreEntityRelationshipNames];
        v26 = [analyticsStoreEntityRelationshipNames containsObject:v24];

        if (v26)
        {
          v104 = v24;
          v27 = v22;
          v28 = v20;
          v114 = 0;
          v29 = [(AnalyticsStoreFileWriter *)self stringifyRelationship:v16 name:&v114 onMoc:mocCopy];
          v30 = v114;
          v31 = v30;
          if (v29)
          {
            v122[0] = @"name";
            v122[1] = @"value";
            v123[0] = v30;
            v123[1] = v29;
            v122[2] = @"length";
            v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v29, "length")}];
            v123[2] = v32;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:v122 count:3];

            if (([array2 containsObject:v33] & 1) == 0)
            {
              [array2 addObject:v33];
            }

            v19 = v101;
            v14 = 0x1E696A000;
          }

          else
          {
            v33 = 0;
          }

          v20 = v28;
          v22 = v27;
          v24 = v104;
LABEL_25:

LABEL_26:
          goto LABEL_27;
        }

        v34 = [v16 valueForKey:v24];

        if (!v34)
        {
          v124[0] = @"name";
          v124[1] = @"value";
          v125[0] = v24;
          v125[1] = @"(nil)";
          v124[2] = @"length";
          v43 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v24, "length")}];
          v125[2] = v43;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v125 forKeys:v124 count:3];
          goto LABEL_24;
        }

        if ([v24 containsString:@"hist"] & 1) != 0 || (objc_msgSend(v24, "containsString:", @"channels") & 1) != 0 || (objc_msgSend(v24, "containsString:", @"parsedBeacon") & 1) != 0 || (objc_msgSend(v24, "containsString:", @"unparsedBeacon"))
        {
          goto LABEL_26;
        }

        v105 = v24;
        if ([v24 containsString:@"ssid"])
        {
          v145[0] = v24;
          v144[0] = @"name";
          v144[1] = @"value";
          v35 = *(v14 + 3776);
          v91 = [v16 valueForKey:v24];
          defaultTimeZone = [v35 stringWithFormat:@"%@", v91];
          [defaultTimeZone redactedForWiFi];
          v36 = v22;
          v38 = v37 = v20;
          v145[1] = v38;
          v144[2] = @"length";
          v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:20];
          v145[2] = v39;
          v40 = MEMORY[0x1E695DF20];
          v41 = v145;
          v42 = v144;
          goto LABEL_33;
        }

        if (([v24 containsString:@"date"] & 1) != 0 || (objc_msgSend(v24, "containsString:", @"lastSeen") & 1) != 0 || objc_msgSend(v24, "containsString:", @"end"))
        {
          v44 = [v16 valueForKey:v24];
          defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
          v91 = v44;
          v45 = [defaultTimeZone secondsFromGMTForDate:v44];
          v143[0] = v24;
          v142[0] = @"name";
          v142[1] = @"value";
          [MEMORY[0x1E695DF00] dateWithTimeInterval:v44 sinceDate:v45];
          v36 = v22;
          v38 = v37 = v20;
          v143[1] = v38;
          v142[2] = @"length";
          v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:20];
          v143[2] = v39;
          v40 = MEMORY[0x1E695DF20];
          v41 = v143;
          v42 = v142;
LABEL_33:
          v33 = [v40 dictionaryWithObjects:v41 forKeys:v42 count:3];

          v43 = v91;
          v20 = v37;
          v22 = v36;
          v24 = v105;
          v46 = defaultTimeZone;
LABEL_34:

          goto LABEL_24;
        }

        v90 = v22;
        if (([v24 containsString:@"neighborBSSIDs"] & 1) != 0 || objc_msgSend(v24, "containsString:", @"neighborCache"))
        {
          v141[0] = v24;
          v140[0] = @"name";
          v140[1] = @"value";
          v47 = [v16 valueForKey:v24];
          v48 = [(AnalyticsStoreFileWriter *)self stringifyValueArray:v47];
          v141[1] = v48;
          v140[2] = @"length";
          v49 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:20];
          v141[2] = v49;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v141 forKeys:v140 count:3];

          v20 = 0x1E830D000;
          v43 = v47;
        }

        else
        {
          if (![v24 containsString:@"neighborChannels"])
          {
            if (([v24 containsString:@"apid"] & 1) != 0 || (objc_msgSend(v24, "containsString:", @"apPhysicalScopeId") & 1) != 0 || (objc_msgSend(v24, "containsString:", @"idUsedInMetric") & 1) != 0 || objc_msgSend(v24, "containsString:", @"colocatedScopeId"))
            {
              v137[0] = v24;
              v136[0] = @"name";
              v136[1] = @"value";
              v93 = [v16 valueForKey:v24];
              v137[1] = v93;
              v136[2] = @"length";
              v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:37];
              v137[2] = v53;
              v54 = MEMORY[0x1E695DF20];
              v55 = v137;
              v56 = v136;
            }

            else if (([v24 containsString:@"fwReason"] & 1) != 0 || objc_msgSend(v24, "containsString:", @"status"))
            {
              v135[0] = v24;
              v134[0] = @"name";
              v134[1] = @"value";
              v93 = [v16 valueForKey:v24];
              v135[1] = v93;
              v134[2] = @"length";
              v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:12];
              v135[2] = v53;
              v54 = MEMORY[0x1E695DF20];
              v55 = v135;
              v56 = v134;
            }

            else if (([v24 containsString:@"ipv4Addr"] & 1) != 0 || objc_msgSend(v24, "containsString:", @"ipv4routerAddr"))
            {
              v57 = [v16 valueForKey:v24];
              intValue = [v57 intValue];

              v133[0] = v24;
              v132[0] = @"name";
              v132[1] = @"value";
              v59.s_addr = intValue;
              v93 = [*(v14 + 3776) stringWithFormat:@"%s", inet_ntoa(v59)];
              v133[1] = v93;
              v132[2] = @"length";
              v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:16];
              v133[2] = v53;
              v54 = MEMORY[0x1E695DF20];
              v55 = v133;
              v56 = v132;
            }

            else
            {
              if ([v24 containsString:@"routerMAC"])
              {
                v131[0] = v24;
                v130[0] = @"name";
                v130[1] = @"value";
                v60 = *(v14 + 3776);
                v61 = [v16 valueForKey:v24];
                v94 = [v60 stringWithFormat:@"%@", v61];
                redactedForWiFi = [v94 redactedForWiFi];
                v131[1] = redactedForWiFi;
                v130[2] = @"length";
                v63 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:20];
                v131[2] = v63;
                v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v131 forKeys:v130 count:3];

                v43 = v61;
                v20 = 0x1E830D000;
                v22 = v90;
                v46 = v94;
                goto LABEL_34;
              }

              if ([v24 containsString:@"type"])
              {
                v129[0] = v24;
                v128[0] = @"name";
                v128[1] = @"value";
                v93 = [v16 valueForKey:v24];
                v129[1] = v93;
                v128[2] = @"length";
                v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:48];
                v129[2] = v53;
                v54 = MEMORY[0x1E695DF20];
                v55 = v129;
                v56 = v128;
              }

              else
              {
                v127[0] = v24;
                v126[0] = @"name";
                v126[1] = @"value";
                v93 = [v16 valueForKey:v24];
                v127[1] = v93;
                v126[2] = @"length";
                v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v24, "length")}];
                v127[2] = v53;
                v54 = MEMORY[0x1E695DF20];
                v55 = v127;
                v56 = v126;
              }
            }

            v33 = [v54 dictionaryWithObjects:v55 forKeys:v56 count:3];

            v43 = v93;
LABEL_24:

            [array2 addObject:v33];
            goto LABEL_25;
          }

          v139[0] = v24;
          v138[0] = @"name";
          v138[1] = @"value";
          v92 = [v16 valueForKey:v24];
          v88 = [RoamPolicyStore neighborChannelsOf:v92];
          allObjects = [v88 allObjects];
          v50 = [(AnalyticsStoreFileWriter *)self stringifyValueArray:allObjects];
          v139[1] = v50;
          v138[2] = @"length";
          [MEMORY[0x1E696AD98] numberWithUnsignedLong:20];
          v52 = v51 = v20;
          v139[2] = v52;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v139 forKeys:v138 count:3];

          v20 = v51;
          v43 = v92;
        }

        v22 = v90;
        goto LABEL_24;
      }

LABEL_58:
      free(v19);
      string = v99;
      v65 = array2;
      if (!v99)
      {
        string = [MEMORY[0x1E696AD60] string];
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v66 = array2;
        v67 = [v66 countByEnumeratingWithState:&v110 objects:v121 count:16];
        if (v67)
        {
          v68 = v67;
          v69 = *v111;
          do
          {
            for (i = 0; i != v68; ++i)
            {
              if (*v111 != v69)
              {
                objc_enumerationMutation(v66);
              }

              v71 = *(*(&v110 + 1) + 8 * i);
              v72 = [v71 valueForKey:@"name"];
              v73 = [v71 valueForKey:@"length"];
              v74 = -[AnalyticsStoreFileWriter stringifyObjectWithPadding:padding:padToLength:](self, "stringifyObjectWithPadding:padding:padToLength:", v72, @" ", [v73 unsignedLongValue]);
              [string appendFormat:@"%@|", v74];
            }

            v68 = [v66 countByEnumeratingWithState:&v110 objects:v121 count:16];
          }

          while (v68);
        }

        v65 = array2;
      }

      string2 = [MEMORY[0x1E696AD60] string];
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v76 = v65;
      v77 = [v76 countByEnumeratingWithState:&v106 objects:v120 count:16];
      if (v77)
      {
        v78 = v77;
        v79 = *v107;
        do
        {
          for (j = 0; j != v78; ++j)
          {
            if (*v107 != v79)
            {
              objc_enumerationMutation(v76);
            }

            v81 = *(*(&v106 + 1) + 8 * j);
            v82 = [v81 valueForKey:@"value"];
            v83 = [v81 valueForKey:@"length"];
            v84 = -[AnalyticsStoreFileWriter stringifyObjectWithPadding:padding:padToLength:](self, "stringifyObjectWithPadding:padding:padToLength:", v82, @" ", [v83 unsignedLongValue]);
            [string2 appendFormat:@"%@|", v84];
          }

          v78 = [v76 countByEnumeratingWithState:&v106 objects:v120 count:16];
        }

        while (v78);
      }

      array = v97;
      [v97 addObject:string2];

      v15 = v100 + 1;
      v13 = string;
      v14 = 0x1E696A000uLL;
    }

    while (v100 + 1 != v98);
    v98 = [obj countByEnumeratingWithState:&v116 objects:v146 count:16];
  }

  while (v98);
  v12 = obj;

  if (!stringCopy)
  {
    stringsArray = stringsArrayCopy;
    if (!stringsArrayCopy)
    {
      goto LABEL_84;
    }

    goto LABEL_82;
  }

  stringsArray = stringsArrayCopy;
  if (!v13)
  {
LABEL_81:
    if (stringsArray)
    {
      goto LABEL_82;
    }

    goto LABEL_84;
  }

  *stringCopy = [MEMORY[0x1E696AEC0] stringWithString:v13];
  if (!stringsArrayCopy)
  {
    goto LABEL_84;
  }

LABEL_82:
  if (array)
  {
    *stringsArray = [MEMORY[0x1E695DEC8] arrayWithArray:array];
  }

LABEL_84:
}

- (id)stringifyObjectWithPadding:(id)padding padding:(id)a4 padToLength:(unint64_t)length
{
  v7 = MEMORY[0x1E696AD60];
  v8 = a4;
  paddingCopy = padding;
  string = [v7 string];
  [string appendFormat:@"%@", paddingCopy];

  v11 = [string stringByPaddingToLength:length withString:v8 startingAtIndex:0];

  v12 = [MEMORY[0x1E696AEC0] stringWithString:v11];

  return v12;
}

- (id)stringifyValueArray:(id)array
{
  if (array)
  {
    v3 = [array valueForKey:@"description"];
    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = @"(nil)";
  }

  return v4;
}

- (void)writeAttributes:(id)attributes fromObject:(id)object ofEntity:(id)entity withWriter:(id)writer
{
  v43 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  objectCopy = object;
  selfCopy = self;
  v13 = objectCopy;
  entityCopy = entity;
  writerCopy = writer;
  v16 = entityCopy;
  v36 = writerCopy;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v37 = [attributesCopy countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v37)
  {
    v34 = entityCopy;
    v35 = *v39;
    do
    {
      v17 = 0;
      do
      {
        if (*v39 != v35)
        {
          objc_enumerationMutation(attributesCopy);
        }

        v18 = *(*(&v38 + 1) + 8 * v17);
        v19 = [v13 valueForKey:v18];
        attributesByName = [v16 attributesByName];
        v21 = [attributesByName objectForKeyedSubscript:v18];
        attributeValueClassName = [v21 attributeValueClassName];

        if ([attributeValueClassName isEqualToString:@"NSDate"])
        {
          v23 = [(NSDateFormatter *)selfCopy->_dateFormatter stringFromDate:v19];
LABEL_21:
          v26 = v23;
          goto LABEL_22;
        }

        if ([v18 containsString:@"subband"] && objc_msgSend(attributeValueClassName, "isEqualToString:", @"NSNumber"))
        {
          v23 = +[WADeviceAnalyticsClient subBandAsString:](WADeviceAnalyticsClient, "subBandAsString:", [v19 shortValue]);
          goto LABEL_21;
        }

        if ((([v18 containsString:@"Band"] & 1) != 0 || objc_msgSend(v18, "containsString:", @"band")) && objc_msgSend(attributeValueClassName, "isEqualToString:", @"NSNumber"))
        {
          v23 = +[WADeviceAnalyticsClient bandAsString:](WADeviceAnalyticsClient, "bandAsString:", [v19 shortValue]);
          goto LABEL_21;
        }

        if ((([v18 hasPrefix:@"is"] & 1) != 0 || objc_msgSend(v18, "hasPrefix:", @"has")) && objc_msgSend(attributeValueClassName, "isEqualToString:", @"NSNumber"))
        {
          bOOLValue = [v19 BOOLValue];
          v25 = @"NO";
          if (bOOLValue)
          {
            v25 = @"YES";
          }

          v23 = v25;
          goto LABEL_21;
        }

        if (([v18 containsString:@"bssid"] & 1) == 0 && (objc_msgSend(v18, "containsString:", @"neighborBSSIDs") & 1) == 0 && (objc_msgSend(v18, "containsString:", @"ssid") & 1) == 0 && (objc_msgSend(v18, "containsString:", @"routerMAC") & 1) == 0 && (objc_msgSend(v18, "containsString:", @"parsedBeacon") & 1) == 0 && (objc_msgSend(v18, "containsString:", @"opaque") & 1) == 0 && !objc_msgSend(v18, "containsString:", @"unparsedBeacon"))
        {
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v19];
          goto LABEL_21;
        }

        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v19];
        v28 = MEMORY[0x1E696AEC0];
        [v27 redactedForWiFi];
        v29 = v13;
        v30 = selfCopy;
        v32 = v31 = attributesCopy;
        v26 = [v28 stringWithFormat:@"%@", v32];

        attributesCopy = v31;
        selfCopy = v30;
        v13 = v29;
        v16 = v34;

LABEL_22:
        [v36 writeField:v26];
        [v36 writeComma];

        ++v17;
      }

      while (v37 != v17);
      v33 = [attributesCopy countByEnumeratingWithState:&v38 objects:v42 count:16];
      v37 = v33;
    }

    while (v33);
  }
}

- (void)writeRelationships:(id)relationships fromObject:(id)object ofEntity:(id)entity with:(id)with
{
  v33 = *MEMORY[0x1E69E9840];
  relationshipsCopy = relationships;
  objectCopy = object;
  entityCopy = entity;
  withCopy = with;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = relationshipsCopy;
  v13 = [relationshipsCopy countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      v16 = 0;
      do
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v28 + 1) + 8 * v16);
        relationshipsByName = [entityCopy relationshipsByName];
        v19 = [relationshipsByName objectForKeyedSubscript:v17];
        isToMany = [v19 isToMany];

        v21 = MEMORY[0x1E696AEC0];
        v22 = [objectCopy valueForKey:v17];
        v23 = v22;
        if (isToMany)
        {
          v24 = [v21 stringWithFormat:@"%lu", objc_msgSend(v22, "count")];
        }

        else
        {
          v25 = [v22 description];
          redactedForWiFi = [v25 redactedForWiFi];
          v24 = [v21 stringWithFormat:@"%@", redactedForWiFi];
        }

        [withCopy writeField:v24];
        [withCopy writeComma];

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }
}

- (void)writeRelationshipsHeaders:(id)headers ofEntity:(id)entity with:(id)with
{
  v26 = *MEMORY[0x1E69E9840];
  headersCopy = headers;
  entityCopy = entity;
  withCopy = with;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [headersCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(headersCopy);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        relationshipsByName = [entityCopy relationshipsByName];
        v16 = [relationshipsByName objectForKeyedSubscript:v14];
        isToMany = [v16 isToMany];

        if (isToMany)
        {
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ count", v14];
        }

        else
        {
          v18 = v14;
        }

        v19 = v18;
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v18];
        [withCopy writeField:v20];

        [withCopy writeComma];
      }

      v11 = [headersCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }
}

- (id)exportEntityToCSV:(id)v batchSize:(unint64_t)size maxAge:(unint64_t)age toURL:(id)l fileDate:(id)date
{
  v73[1] = *MEMORY[0x1E69E9840];
  vCopy = v;
  lCopy = l;
  dateCopy = date;
  persistentContainer = [(AnalyticsStoreFileWriter *)self persistentContainer];
  v15 = [persistentContainer datePropertyForEntity:vCopy];

  persistentContainer2 = [(AnalyticsStoreFileWriter *)self persistentContainer];
  if (age)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (!v17)
  {
    persistentContainer3 = [(AnalyticsStoreFileWriter *)self persistentContainer];
    v19 = [persistentContainer3 predicateForEntity:vCopy newerThan:0 withError:(86400 * age)];
LABEL_10:
    age = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:v15 ascending:0];
    v73[0] = age;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:1];
    v20 = v19;
    goto LABEL_11;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (v15)
  {
    goto LABEL_10;
  }

LABEL_11:
  v63 = 0;
  v56 = [persistentContainer2 fetchObjects:vCopy withPredicate:v20 withSorting:v21 withPrefetchedProperties:0 withLimit:size withError:&v63];
  v22 = v63;
  if (v15)
  {

    if (v18)
    {
    }
  }

  if (v22)
  {
    v23 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [vCopy name];
      v25 = v24 = v22;
      *buf = 136446978;
      v66 = "[AnalyticsStoreFileWriter exportEntityToCSV:batchSize:maxAge:toURL:fileDate:]";
      v67 = 1024;
      v68 = 1141;
      v69 = 2112;
      v70 = v25;
      v71 = 2112;
      v72 = v24;
      _os_log_impl(&dword_1C8460000, v23, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error fetching data for entity %@: %@", buf, 0x26u);

      v22 = v24;
    }

    v26 = 0;
    v27 = lCopy;
  }

  else
  {
    [vCopy attributesByName];
    v28 = v55 = v15;
    allKeys = [v28 allKeys];

    if (v15)
    {
      v30 = [MEMORY[0x1E695DFA0] orderedSetWithObject:?];
    }

    else
    {
      v30 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    }

    v31 = v30;
    v54 = allKeys;
    v53 = [allKeys sortedArrayUsingSelector:sel_compare_];
    [v31 addObjectsFromArray:?];
    relationshipsByName = [vCopy relationshipsByName];
    allKeys2 = [relationshipsByName allKeys];
    v34 = [allKeys2 sortedArrayUsingSelector:sel_compare_];

    v35 = MEMORY[0x1E696AEC0];
    name = [vCopy name];
    v37 = [v35 stringWithFormat:@"Entity_%@_%@.csv", dateCopy, name];

    path = [lCopy path];
    v51 = v37;
    v39 = [path stringByAppendingPathComponent:v37];

    v52 = v39;
    v40 = [MEMORY[0x1E695DFC0] outputStreamToFileAtPath:v39 append:0];
    [v40 open];
    v50 = v40;
    v41 = [[AnalyticsCSVWriter alloc] initWithOutputStream:v40];
    [(AnalyticsCSVWriter *)v41 writeFields:v31];
    [(AnalyticsStoreFileWriter *)self writeRelationshipsHeaders:v34 ofEntity:vCopy with:v41];
    [(AnalyticsCSVWriter *)v41 finishLine];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v42 = v56;
    v43 = [v42 countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v60;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v60 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v59 + 1) + 8 * i);
          [(AnalyticsStoreFileWriter *)self writeAttributes:v31 fromObject:v47 ofEntity:vCopy withWriter:v41];
          [(AnalyticsStoreFileWriter *)self writeRelationships:v34 fromObject:v47 ofEntity:vCopy with:v41];
          [(AnalyticsCSVWriter *)v41 finishLine];
        }

        v44 = [v42 countByEnumeratingWithState:&v59 objects:v64 count:16];
      }

      while (v44);
    }

    [v50 close];
    v26 = v52;
    v48 = [MEMORY[0x1E695DFF8] URLWithString:v52];
    [WAUtil setFutureApfsPurgeableDeadline:604800 forURL:v48];

    v27 = lCopy;
    v22 = 0;
    v15 = v55;
    v23 = v54;
  }

  return v26;
}

@end
@interface PLUrsaUtilities
+ (id)createMetadataFile:(id)file buildVersion:(id)version;
+ (id)generateTTRURLWithRadarParams:(id)params procName:(id)name violationTime:(id)time metadataPath:(id)path;
@end

@implementation PLUrsaUtilities

+ (id)createMetadataFile:(id)file buildVersion:(id)version
{
  v42[1] = *MEMORY[0x277D85DE8];
  fileCopy = file;
  versionCopy = version;
  if (![fileCopy length])
  {
    v7 = PLLogUrsaUtilities(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[PLUrsaUtilities createMetadataFile:buildVersion:];
    }

    goto LABEL_20;
  }

  if (![versionCopy length])
  {
    v7 = PLLogUrsaUtilities(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[PLUrsaUtilities createMetadataFile:buildVersion:];
    }

LABEL_20:
    path3 = 0;
    goto LABEL_37;
  }

  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/Ursa" isDirectory:1];
  v41 = *MEMORY[0x277CCA180];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:511];
  v42[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [defaultManager fileExistsAtPath:@"/var/mobile/Library/Ursa"];

  if ((v11 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v36 = 0;
    v13 = [defaultManager2 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:v9 error:&v36];
    v14 = v36;

    v16 = PLLogUrsaUtilities(v15);
    v17 = v16;
    if (!v13 || v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PLUrsaUtilities createMetadataFile:v14 buildVersion:v17];
      }

      path3 = 0;
      goto LABEL_36;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [PLUrsaUtilities createMetadataFile:v17 buildVersion:?];
    }
  }

  v17 = [v7 URLByAppendingPathComponent:@"power_exceptions.json" isDirectory:0];
  if (v17)
  {
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager3 removeItemAtURL:v17 error:0];

    v39[0] = @"process";
    v39[1] = @"build";
    v40[0] = fileCopy;
    v40[1] = versionCopy;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v35 = 0;
    v20 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v19 options:0 error:&v35];
    v21 = v35;
    v14 = v21;
    if (v21 || !v20)
    {
      v32 = PLLogUrsaUtilities(v21);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [PLUrsaUtilities createMetadataFile:v14 buildVersion:v32];
      }

      path3 = 0;
    }

    else
    {
      defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
      path = [v17 path];
      v24 = v9;
      v25 = path;
      v34 = v24;
      v26 = [defaultManager4 createFileAtPath:path contents:v20 attributes:?];

      v28 = PLLogUrsaUtilities(v27);
      v29 = v28;
      if (v26)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          path2 = [v17 path];
          *buf = 138543362;
          v38 = path2;
          _os_log_impl(&dword_25EE51000, v29, OS_LOG_TYPE_DEFAULT, "PLUrsaUtilities: wrote metadata to: %{public}@", buf, 0xCu);
        }

        path3 = [v17 path];
      }

      else
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          +[PLUrsaUtilities createMetadataFile:buildVersion:];
        }

        path3 = 0;
      }

      v9 = v34;
    }
  }

  else
  {
    v19 = PLLogUrsaUtilities(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[PLUrsaUtilities createMetadataFile:buildVersion:];
    }

    v14 = 0;
    path3 = 0;
  }

LABEL_36:
LABEL_37:

  return path3;
}

+ (id)generateTTRURLWithRadarParams:(id)params procName:(id)name violationTime:(id)time metadataPath:(id)path
{
  v50 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  nameCopy = name;
  timeCopy = time;
  pathCopy = path;
  v12 = pathCopy;
  if (!paramsCopy || (pathCopy = [paramsCopy count]) == 0)
  {
    v15 = PLLogUrsaUtilities(pathCopy);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[PLUrsaUtilities generateTTRURLWithRadarParams:procName:violationTime:metadataPath:];
    }

    goto LABEL_31;
  }

  if (!nameCopy || (pathCopy = [nameCopy length]) == 0)
  {
    v15 = PLLogUrsaUtilities(pathCopy);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[PLUrsaUtilities generateTTRURLWithRadarParams:procName:violationTime:metadataPath:];
    }

LABEL_31:
    v31 = 0;
    goto LABEL_32;
  }

  if (!timeCopy)
  {
    v13 = PLLogUrsaUtilities(pathCopy);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[PLUrsaUtilities generateTTRURLWithRadarParams:procName:violationTime:metadataPath:];
    }

    timeCopy = [MEMORY[0x277CBEAA8] date];
  }

  v14 = [MEMORY[0x277CCACE0] componentsWithString:@"tap-to-radar://new?"];
  v15 = v14;
  if (v14)
  {
    v38 = v14;
    v43 = nameCopy;
    v40 = paramsCopy;
    v16 = [paramsCopy mutableCopy];
    v17 = v16;
    if (v12)
    {
      [v16 setObject:v12 forKeyedSubscript:@"Attachments"];
      [v17 setObject:@"1" forKeyedSubscript:@"DeleteOnAttach"];
    }

    v39 = v12;
    v18 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v18 setDateFormat:@"yyyy.MM.dd_HH-mm-ss"];
    v37 = v18;
    v36 = [v18 stringFromDate:timeCopy];
    [v17 setObject:? forKeyedSubscript:?];
    array = [MEMORY[0x277CBEB18] array];
    v41 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v41 setDateFormat:@"MM/dd HH:mm"];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v20 = v17;
    v21 = [v20 countByEnumeratingWithState:&v45 objects:v49 count:16];
    v42 = array;
    if (v21)
    {
      v22 = v21;
      v23 = *v46;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v46 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v45 + 1) + 8 * i);
          v26 = [v20 objectForKeyedSubscript:v25];
          if ([v26 containsString:@"$proc"])
          {
            v27 = [v26 stringByReplacingOccurrencesOfString:@"$proc" withString:v43];

            v26 = v27;
          }

          if ([v26 containsString:@"$time"])
          {
            v28 = [v41 stringFromDate:timeCopy];
            v29 = [v26 stringByReplacingOccurrencesOfString:@"$time" withString:v28];

            v26 = v29;
            array = v42;
          }

          v30 = [MEMORY[0x277CCAD18] queryItemWithName:v25 value:v26];
          [array addObject:v30];
        }

        v22 = [v20 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v22);
    }

    v15 = v38;
    [v38 setQueryItems:array];
    v31 = [v38 URL];
    v32 = PLLogUrsaUtilities(v31);
    v33 = v32;
    if (v31)
    {
      v12 = v39;
      paramsCopy = v40;
      nameCopy = v43;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [PLUrsaUtilities generateTTRURLWithRadarParams:v31 procName:v33 violationTime:? metadataPath:?];
      }

      v34 = v31;
    }

    else
    {
      v12 = v39;
      paramsCopy = v40;
      nameCopy = v43;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        +[PLUrsaUtilities generateTTRURLWithRadarParams:procName:violationTime:metadataPath:];
      }
    }
  }

  else
  {
    v20 = PLLogUrsaUtilities(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[PLUrsaUtilities generateTTRURLWithRadarParams:procName:violationTime:metadataPath:];
    }

    v31 = 0;
  }

LABEL_32:

  return v31;
}

+ (void)createMetadataFile:(uint64_t)a1 buildVersion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_25EE51000, a2, OS_LOG_TYPE_ERROR, "PLUrsaUtilities: failed to create Ursa directory: %{public}@", &v2, 0xCu);
}

+ (void)createMetadataFile:(os_log_t)log buildVersion:.cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138543362;
  v2 = @"/var/mobile/Library/Ursa";
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "PLUrsaUtilities: created Ursa directory at: %{public}@", &v1, 0xCu);
}

+ (void)createMetadataFile:(uint64_t)a1 buildVersion:(NSObject *)a2 .cold.4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_25EE51000, a2, OS_LOG_TYPE_ERROR, "PLUrsaUtilities: failed to create metadata: %{public}@", &v2, 0xCu);
}

+ (void)generateTTRURLWithRadarParams:(void *)a1 procName:(NSObject *)a2 violationTime:metadataPath:.cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 absoluteString];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_25EE51000, a2, OS_LOG_TYPE_DEBUG, "PLUrsaUtilities: generated TTR URL: %{public}@", &v4, 0xCu);
}

@end
@interface RMECacheEnumerator
+ (id)getEPLProfilePath;
+ (id)getGcoreSpoolWithCreateIfNecessary:(BOOL)necessary;
+ (id)getLogContainer:(BOOL)container;
+ (id)getLogPathsForSystemDiagnostic;
+ (id)getLogPathsSortedByProcessFrequency;
+ (id)getLogPathsSortedByTime;
- (id)initCacheEnumerator;
- (id)initCacheEnumeratorWithVolume:(id)volume;
@end

@implementation RMECacheEnumerator

- (id)initCacheEnumeratorWithVolume:(id)volume
{
  volumeCopy = volume;
  v24.receiver = self;
  v24.super_class = RMECacheEnumerator;
  v5 = [(RMECacheEnumerator *)&v24 init];
  v6 = v5;
  if (v5)
  {
    if (!volumeCopy)
    {
      volumeCopy = @"/";
    }

    objc_storeStrong(&v5->_volume, volumeCopy);
    v7 = [MEMORY[0x29EDB8E70] fileURLWithPath:volumeCopy isDirectory:1];
    v8 = [RMECacheEnumerator getLogContainer:0];
    if (v8 && (v9 = v8, [v8 substringFromIndex:1], v10 = objc_claimAutoreleasedReturnValue(), v9, v10))
    {
      lastPathComponent = [v7 lastPathComponent];
      v12 = [v10 hasPrefix:lastPathComponent];

      if (v12)
      {
        uRLByDeletingLastPathComponent = [v7 URLByDeletingLastPathComponent];

        v7 = uRLByDeletingLastPathComponent;
      }

      v14 = [v7 URLByAppendingPathComponent:v10];
      if (v14)
      {
        defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
        v16 = [MEMORY[0x29EDB8D80] arrayWithObjects:{*MEMORY[0x29EDB8D40], *MEMORY[0x29EDB8D60], *MEMORY[0x29EDB8D68], *MEMORY[0x29EDB8D30], 0}];
        v21[0] = MEMORY[0x29EDCA5F8];
        v21[1] = 3221225472;
        v21[2] = sub_297E2675C;
        v21[3] = &unk_29EE848D0;
        v22 = v14;
        v23 = volumeCopy;
        v17 = [defaultManager enumeratorAtURL:v22 includingPropertiesForKeys:v16 options:5 errorHandler:v21];
        internalEnumerator = v6->_internalEnumerator;
        v6->_internalEnumerator = v17;
      }

      v19 = v6;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)initCacheEnumerator
{
  v3 = [[RMECacheEnumerator alloc] initCacheEnumeratorWithVolume:0];

  return v3;
}

+ (id)getLogPathsSortedByTime
{
  v2 = [[RMECacheEnumerator alloc] initCacheEnumeratorWithVolume:0];
  v3 = sub_297E3D10C(1, 0, v2);

  return v3;
}

+ (id)getLogPathsSortedByProcessFrequency
{
  v2 = [[RMECacheEnumerator alloc] initCacheEnumeratorWithVolume:0];
  v3 = sub_297E3D10C(1, 0, v2);
  v4 = sub_297E26068(v3);

  return v4;
}

+ (id)getLogPathsForSystemDiagnostic
{
  v78 = *MEMORY[0x29EDCA608];
  getLogPathsSortedByTime = [self getLogPathsSortedByTime];
  v52 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v3 = getLogPathsSortedByTime;
  array = [MEMORY[0x29EDB8DE8] array];
  v56 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSinceNow:-3600.0];
  v53 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v64 objects:buf count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v65;
    v7 = *MEMORY[0x29EDB8D30];
    v8 = *MEMORY[0x29EDB8D60];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v65 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v64 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [MEMORY[0x29EDB8E70] fileURLWithPath:v10];
        v63 = 0;
        [v12 getResourceValue:&v63 forKey:v7 error:0];
        v13 = v63;
        if (v13)
        {
          v62 = 0;
          [v12 getResourceValue:&v62 forKey:v8 error:0];
          v14 = v62;
          if (v14 && ([v56 compare:v13] == -1 || !objc_msgSend(v56, "compare:", v13)))
          {
            v15 = sub_297E3CFE0(v14);
            if (v15)
            {
              v16 = v15;
              if (sub_297E3C6F4(v15))
              {
                [v53 addObject:v12];
              }
            }
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      v5 = [obj countByEnumeratingWithState:&v64 objects:buf count:16];
    }

    while (v5);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v17 = v53;
  v18 = [v17 countByEnumeratingWithState:&v58 objects:&v68 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v59;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v59 != v20)
        {
          objc_enumerationMutation(v17);
        }

        path = [*(*(&v58 + 1) + 8 * j) path];
        [array addObject:path];
      }

      v19 = [v17 countByEnumeratingWithState:&v58 objects:&v68 count:16];
    }

    while (v19);
  }

  *&v64 = 0;
  v23 = sub_297E273F4(array, 0xF00000uLL, &v64);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v73 = 15.0;
    v74 = 2048;
    v75 = v64 * 0.000000953674316;
    v76 = 2112;
    v77 = v23;
    _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Critical Logs Capped (cap=%f MB, included total=%f MB): %@", buf, 0x20u);
  }

  v57 = v23;
  [v52 addObjectsFromArray:v23];
  v24 = sub_297E26068(obj);
  v25 = sub_297E27598(v24);

  v54 = v25;
  v26 = sub_297E2775C(v25, v52);
  *&v58 = 0;
  v50 = v26;
  v27 = sub_297E273F4(v26, 0xF00000uLL, &v58);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v73 = 15.0;
    v74 = 2048;
    v75 = v58 * 0.000000953674316;
    v76 = 2112;
    v77 = v27;
    _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Top Offender Logs Capped (cap=%f MB, included total=%f MB): %@", buf, 0x20u);
  }

  v49 = v27;
  [v52 addObjectsFromArray:v27];
  v28 = 15728640 - v58;
  if (v58 > 0xF00000)
  {
    v28 = 0;
  }

  v47 = v28;
  v29 = sub_297E27598(obj);
  v30 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v31 = v29;
  v32 = [v31 countByEnumeratingWithState:&v68 objects:buf count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v69;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v69 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v68 + 1) + 8 * k);
        v37 = [MEMORY[0x29EDB8E70] fileURLWithPath:{v36, v47}];
        pathExtension = [v37 pathExtension];
        v39 = [pathExtension isEqualToString:@"lite_diag"];

        if (v39)
        {
          [v30 addObject:v36];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v68 objects:buf count:16];
    }

    while (v33);
  }

  v40 = sub_297E2775C(v30, v52);
  *&v68 = 0;
  v41 = sub_297E273F4(v40, 0x100000uLL, &v68);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v73 = 1.0;
    v74 = 2048;
    v75 = v68 * 0.000000953674316;
    v76 = 2112;
    v77 = v41;
    _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Recent Lite Diags Capped (cap=%f MB, included total=%f MB): %@", buf, 0x20u);
  }

  [v52 addObjectsFromArray:{v41, v47}];
  v42 = 0x100000 - v68;
  if (v68 > 0x100000)
  {
    v42 = 0;
  }

  v43 = v48 + v42 + 14680064;
  v44 = sub_297E2775C(v31, v52);
  v63 = 0;
  v45 = sub_297E273F4(v44, v43, &v63);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v73 = vcvtd_n_f64_u64(v43, 0x14uLL);
    v74 = 2048;
    v75 = v58 * 0.000000953674316;
    v76 = 2112;
    v77 = v45;
    _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Recent Logs Capped (cap=%f MB, included total=%f MB): %@", buf, 0x20u);
  }

  [v52 addObjectsFromArray:v45];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v73 = *&v52;
    _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Completed List of Files for sysdiagnose: %@", buf, 0xCu);
  }

  return v52;
}

+ (id)getGcoreSpoolWithCreateIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v22 = *MEMORY[0x29EDCA608];
  v4 = [RMECacheEnumerator getLogContainer:1];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 stringByAppendingString:@"/gcore_spool"];
    v7 = v6;
    if (necessaryCopy)
    {
      v8 = v6;
      defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
      v17 = 0;
      if ([defaultManager fileExistsAtPath:v8 isDirectory:&v17])
      {
        v10 = v17 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v19 = v8;
          _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "Directory doesn't exist -> trying to create directory at path: %@", buf, 0xCu);
        }

        v16 = 0;
        [defaultManager createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v16];
        v11 = v16;
        defaultManager2 = [MEMORY[0x29EDB9FB8] defaultManager];
        v13 = [defaultManager2 fileExistsAtPath:v8 isDirectory:&v17];

        if (!v13 || v17 != 1)
        {
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v19 = v8;
            v20 = 2112;
            v21 = v11;
            _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Error: error creating directory at path %@ %@", buf, 0x16u);
          }

          v14 = 0;
          goto LABEL_17;
        }

        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v19 = v8;
          _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Successfully created directory at path %@", buf, 0xCu);
        }
      }
    }

    v14 = v7;
LABEL_17:

    goto LABEL_19;
  }

  v14 = 0;
LABEL_19:

  return v14;
}

+ (id)getLogContainer:(BOOL)container
{
  if (qword_2A18A60E8 != -1)
  {
    dispatch_once(&qword_2A18A60E8, &unk_2A1E8FB10);
  }

  v4 = qword_2A18A60E0;

  return v4;
}

+ (id)getEPLProfilePath
{
  if (qword_2A18A60F8 != -1)
  {
    dispatch_once(&qword_2A18A60F8, &unk_2A1E8FB30);
  }

  v3 = qword_2A18A60F0;

  return v3;
}

@end
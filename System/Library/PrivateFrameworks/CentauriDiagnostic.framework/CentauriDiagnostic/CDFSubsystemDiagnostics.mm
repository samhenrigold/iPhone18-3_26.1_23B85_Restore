@interface CDFSubsystemDiagnostics
+ (BOOL)collectFileWithRegex:(id)regex from:(id)from to:(id)to mostRecent:(unint64_t)recent;
+ (BOOL)collectFilesWithRegex:(id)regex from:(id)from to:(id)to;
+ (BOOL)collectFilesWithRegexes:(id)regexes from:(id)from to:(id)to mostRecent:(unint64_t)recent;
+ (BOOL)createSubsystemDirectoryStructure:(id)structure outputDir:(id)dir subDirectoryList:(id)list;
+ (BOOL)isCentauriPlatform;
- (BOOL)collectStateSnapshotsFrom:(id)from to:(id)to runtimeFlags:(unint64_t)flags;
- (CDFSubsystemDiagnostics)init;
@end

@implementation CDFSubsystemDiagnostics

- (CDFSubsystemDiagnostics)init
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = CDFSubsystemDiagnostics;
  v2 = [(CDFSubsystemDiagnostics *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_buildEnv = 0;
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [bundleIdentifier cStringUsingEncoding:4];

    if ((os_variant_has_internal_diagnostics() & 1) != 0 || os_variant_has_internal_content())
    {
      v3->_buildEnv = 2;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      buildEnv = v3->_buildEnv;
      *buf = 136315394;
      v10 = "[CDFSubsystemDiagnostics init]";
      v11 = 2050;
      v12 = buildEnv;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: buildEnv %{public}lu", buf, 0x16u);
    }

    if (v3->_buildEnv == 2 && os_variant_allows_internal_security_policies())
    {
      v3->_collectCoredumps = 1;
    }
  }

  return v3;
}

- (BOOL)collectStateSnapshotsFrom:(id)from to:(id)to runtimeFlags:(unint64_t)flags
{
  v25 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  if (!(self->_buildEnv | flags))
  {
    goto LABEL_5;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [fromCopy path];
  v12 = [defaultManager fileExistsAtPath:path];

  if ((v12 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      path2 = [fromCopy path];
      v21 = 136315394;
      v22 = "[CDFSubsystemDiagnostics collectStateSnapshotsFrom:to:runtimeFlags:]";
      v23 = 2114;
      v24 = path2;
      v18 = MEMORY[0x277D86220];
      v19 = "CDF: %s: invalid directory path sourcepath: %{public}@";
LABEL_10:
      _os_log_impl(&dword_2433AC000, v18, OS_LOG_TYPE_DEFAULT, v19, &v21, 0x16u);
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  path3 = [toCopy path];
  v15 = [defaultManager2 fileExistsAtPath:path3];

  if ((v15 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      path2 = [toCopy path];
      v21 = 136315394;
      v22 = "[CDFSubsystemDiagnostics collectStateSnapshotsFrom:to:runtimeFlags:]";
      v23 = 2114;
      v24 = path2;
      v18 = MEMORY[0x277D86220];
      v19 = "CDF: %s: invalid directory path destpath: %{public}@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(CentauriConfigAccessLog|CentauriEventLog|CentauriMSILog|CentauriPowerStateLog|CentauriStateDump)\\.txt(\\.synced)?$" from:fromCopy to:toCopy];
  [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(AddFileList|FaultReportState|History)\\.txt(\\.synced)?$" from:fromCopy to:toCopy];
  [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(AirshipStateDump)\\.bin(\\.synced)?$" from:fromCopy to:toCopy];
LABEL_5:
  v16 = 1;
LABEL_12:

  return v16;
}

+ (BOOL)createSubsystemDirectoryStructure:(id)structure outputDir:(id)dir subDirectoryList:(id)list
{
  v50 = *MEMORY[0x277D85DE8];
  structureCopy = structure;
  dirCopy = dir;
  v9 = structureCopy;
  v36 = dirCopy;
  listCopy = list;
  v11 = 0x277CCA000uLL;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v9 path];
  v14 = [defaultManager fileExistsAtPath:path];

  if (v14)
  {
    v34 = defaultManager;
    v35 = listCopy;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = listCopy;
    v15 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v15)
    {
      v16 = v15;
      v39 = 0;
      v17 = *v42;
      do
      {
        v18 = 0;
        v37 = v16;
        do
        {
          if (*v42 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v41 + 1) + 8 * v18);
          v20 = [v9 URLByAppendingPathComponent:v19 isDirectory:{1, v34, v35}];
          defaultManager2 = [*(v11 + 2560) defaultManager];
          path2 = [v20 path];
          v23 = [defaultManager2 fileExistsAtPath:path2];

          if (v23)
          {
            v24 = v17;
            v25 = v9;
            v26 = v11;
            defaultManager3 = [*(v11 + 2560) defaultManager];
            v28 = [v36 URLByAppendingPathComponent:v19 isDirectory:1];
            v40 = 0;
            v29 = [defaultManager3 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:&v40];
            v30 = v40;

            if (v29)
            {
              v39 = 1;
            }

            else
            {
              v39 |= v29;
              v31 = MEMORY[0x277D86220];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v47 = "+[CDFSubsystemDiagnostics createSubsystemDirectoryStructure:outputDir:subDirectoryList:]";
                v48 = 2114;
                v49 = v30;
                _os_log_impl(&dword_2433AC000, v31, OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to create subdirectory %{public}@", buf, 0x16u);
              }
            }

            v11 = v26;
            v9 = v25;
            v17 = v24;
            v16 = v37;
          }

          else
          {
            v30 = 0;
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v16);
    }

    else
    {
      v39 = 0;
    }

    defaultManager = v34;
    listCopy = v35;
    v32 = v39;
  }

  else
  {
    v32 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v47 = "+[CDFSubsystemDiagnostics createSubsystemDirectoryStructure:outputDir:subDirectoryList:]";
      v48 = 2114;
      v49 = v9;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: invalid directory path sourceURL: %{public}@", buf, 0x16u);
      v32 = 0;
    }
  }

  return v32 & 1;
}

+ (BOOL)collectFilesWithRegex:(id)regex from:(id)from to:(id)to
{
  v68 = *MEMORY[0x277D85DE8];
  regexCopy = regex;
  fromCopy = from;
  toCopy = to;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [fromCopy path];
  LOBYTE(from) = [defaultManager fileExistsAtPath:path];

  if ((from & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      path2 = [fromCopy path];
      *buf = 136315394;
      v63 = "+[CDFSubsystemDiagnostics collectFilesWithRegex:from:to:]";
      v64 = 2114;
      v65 = path2;
      v34 = MEMORY[0x277D86220];
      v35 = "CDF: %s: invalid directory path sourcepath: %{public}@";
LABEL_25:
      _os_log_impl(&dword_2433AC000, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 0x16u);
    }

LABEL_26:
    v36 = 0;
    goto LABEL_35;
  }

  path3 = [toCopy path];
  v13 = [defaultManager fileExistsAtPath:path3];

  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      path2 = [toCopy path];
      *buf = 136315394;
      v63 = "+[CDFSubsystemDiagnostics collectFilesWithRegex:from:to:]";
      v64 = 2114;
      v65 = path2;
      v34 = MEMORY[0x277D86220];
      v35 = "CDF: %s: invalid directory path destpath: %{public}@";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v59 = 0;
  v14 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:regexCopy options:0 error:&v59];
  v15 = v59;
  if (v14)
  {
    v16 = *MEMORY[0x277CBE8A8];
    v61 = *MEMORY[0x277CBE8A8];
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
    v58 = 0;
    v18 = [defaultManager contentsOfDirectoryAtURL:fromCopy includingPropertiesForKeys:v17 options:1 error:&v58];
    v46 = v58;

    if (v18)
    {
      v43 = v15;
      v44 = fromCopy;
      v49 = defaultManager;
      v50 = toCopy;
      v45 = regexCopy;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v42 = v18;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v54 objects:v60 count:16];
      if (v20)
      {
        v21 = v20;
        v51 = 0;
        v22 = *v55;
        v48 = v19;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v55 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v54 + 1) + 8 * i);
            v53 = 0;
            v25 = [v24 getResourceValue:&v53 forKey:v16 error:0];
            v26 = v53;
            v27 = v26;
            if (v25 && [v26 BOOLValue])
            {
              lastPathComponent = [v24 lastPathComponent];
              if ([v14 rangeOfFirstMatchInString:lastPathComponent options:0 range:{0, objc_msgSend(lastPathComponent, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v29 = v14;
                v30 = [v50 URLByAppendingPathComponent:lastPathComponent isDirectory:0];
                v52 = 0;
                v31 = [v49 copyItemAtURL:v24 toURL:v30 error:&v52];
                v32 = v52;
                if ((v31 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  localizedDescription = [v32 localizedDescription];
                  *buf = 136315650;
                  v63 = "+[CDFSubsystemDiagnostics collectFilesWithRegex:from:to:]";
                  v64 = 2114;
                  v65 = lastPathComponent;
                  v66 = 2114;
                  v67 = localizedDescription;
                  _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to copy %{public}@: %{public}@", buf, 0x20u);
                }

                v51 |= v31;

                v14 = v29;
                v19 = v48;
              }
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v54 objects:v60 count:16];
        }

        while (v21);
      }

      else
      {
        v51 = 0;
      }

      fromCopy = v44;
      regexCopy = v45;
      defaultManager = v49;
      toCopy = v50;
      v18 = v42;
      v15 = v43;
      v36 = v51;
    }

    else
    {
      v36 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        path4 = [fromCopy path];
        [v46 localizedDescription];
        v40 = v39 = v14;
        *buf = 136315650;
        v63 = "+[CDFSubsystemDiagnostics collectFilesWithRegex:from:to:]";
        v64 = 2114;
        v65 = path4;
        v66 = 2114;
        v67 = v40;
        _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to get directory contents from %{public}@: %{public}@", buf, 0x20u);

        v14 = v39;
        v18 = 0;

        v36 = 0;
      }
    }
  }

  else
  {
    v36 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription2 = [v15 localizedDescription];
      *buf = 136315650;
      v63 = "+[CDFSubsystemDiagnostics collectFilesWithRegex:from:to:]";
      v64 = 2114;
      v65 = regexCopy;
      v66 = 2114;
      v67 = localizedDescription2;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to create regex from pattern %{public}@: %{public}@", buf, 0x20u);

      v36 = 0;
    }
  }

LABEL_35:
  return v36 & 1;
}

+ (BOOL)collectFileWithRegex:(id)regex from:(id)from to:(id)to mostRecent:(unint64_t)recent
{
  v95[1] = *MEMORY[0x277D85DE8];
  regexCopy = regex;
  fromCopy = from;
  toCopy = to;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [fromCopy path];
  v14 = [defaultManager fileExistsAtPath:path];

  if ((v14 & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    path2 = [fromCopy path];
    *buf = 136315394;
    v86 = "+[CDFSubsystemDiagnostics collectFileWithRegex:from:to:mostRecent:]";
    v87 = 2114;
    v88 = path2;
    v54 = MEMORY[0x277D86220];
    v55 = "CDF: %s: invalid directory path sourcepath: %{public}@";
LABEL_38:
    _os_log_impl(&dword_2433AC000, v54, OS_LOG_TYPE_DEFAULT, v55, buf, 0x16u);

    goto LABEL_39;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  path3 = [toCopy path];
  v17 = [defaultManager2 fileExistsAtPath:path3];

  if ((v17 & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    path2 = [toCopy path];
    *buf = 136315394;
    v86 = "+[CDFSubsystemDiagnostics collectFileWithRegex:from:to:mostRecent:]";
    v87 = 2114;
    v88 = path2;
    v54 = MEMORY[0x277D86220];
    v55 = "CDF: %s: invalid directory path destpath: %{public}@";
    goto LABEL_38;
  }

  if (regexCopy && recent)
  {
    v84 = 0;
    v18 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:regexCopy options:0 error:&v84];
    v19 = v84;
    v72 = v18;
    if (!v18)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        localizedDescription = [v19 localizedDescription];
        *buf = 136315650;
        v86 = "+[CDFSubsystemDiagnostics collectFileWithRegex:from:to:mostRecent:]";
        v87 = 2114;
        v88 = regexCopy;
        v89 = 2114;
        recentCopy2 = localizedDescription;
        _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to create regex from pattern %{public}@: %{public}@", buf, 0x20u);
      }

      v25 = 0;
      goto LABEL_52;
    }

    v71 = objc_alloc_init(MEMORY[0x277CBEB18]);
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    v21 = *MEMORY[0x277CBE8A8];
    v95[0] = *MEMORY[0x277CBE8A8];
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:1];
    v83 = v19;
    v23 = [defaultManager3 contentsOfDirectoryAtURL:fromCopy includingPropertiesForKeys:v22 options:1 error:&v83];
    v70 = v83;

    v24 = v23;
    v25 = v23 != 0;
    if (v24)
    {
      v67 = defaultManager3;
      v68 = toCopy;
      v61 = v25;
      recentCopy = recent;
      v64 = fromCopy;
      v62 = regexCopy;
      v82 = 0u;
      v80 = 0u;
      v81 = 0u;
      v79 = 0u;
      v60 = v24;
      v26 = v24;
      v27 = [v26 countByEnumeratingWithState:&v79 objects:v94 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v80;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v80 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v79 + 1) + 8 * i);
            v78 = 0;
            v32 = [v31 getResourceValue:&v78 forKey:v21 error:0];
            v33 = v78;
            v34 = v33;
            if (v32 && [v33 BOOLValue])
            {
              lastPathComponent = [v31 lastPathComponent];
              lastPathComponent2 = [v31 lastPathComponent];
              v37 = [v72 rangeOfFirstMatchInString:lastPathComponent2 options:0 range:{0, objc_msgSend(lastPathComponent, "length")}];

              if (v37 != 0x7FFFFFFFFFFFFFFFLL)
              {
                [v71 addObject:v31];
              }
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v79 objects:v94 count:16];
        }

        while (v28);
      }

      [v71 sortedArrayUsingComparator:&__block_literal_global_0];
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      obj = v77 = 0u;
      v69 = [obj countByEnumeratingWithState:&v74 objects:v93 count:16];
      if (v69)
      {
        v38 = 0;
        v66 = *v75;
        v39 = MEMORY[0x277D86220];
        fromCopy = v64;
        do
        {
          for (j = 0; j != v69; ++j)
          {
            if (*v75 != v66)
            {
              objc_enumerationMutation(obj);
            }

            v41 = *(*(&v74 + 1) + 8 * j);
            lastPathComponent3 = [v41 lastPathComponent];
            v43 = [fromCopy URLByAppendingPathComponent:lastPathComponent3 isDirectory:0];

            lastPathComponent4 = [v41 lastPathComponent];
            v45 = [v68 URLByAppendingPathComponent:lastPathComponent4 isDirectory:0];

            path4 = [v43 path];
            v47 = [v67 fileExistsAtPath:path4];

            if (v47)
            {
              v73 = v70;
              v48 = [v67 copyItemAtURL:v43 toURL:v45 error:&v73];
              v49 = v73;

              if (v48)
              {
                if (++v38 == recentCopy)
                {

                  v70 = v49;
                  goto LABEL_48;
                }
              }

              else if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                lastPathComponent5 = [v41 lastPathComponent];
                domain = [v49 domain];
                code = [v49 code];
                *buf = 136315906;
                v86 = "+[CDFSubsystemDiagnostics collectFileWithRegex:from:to:mostRecent:]";
                v87 = 2114;
                v88 = lastPathComponent5;
                v89 = 2114;
                recentCopy2 = domain;
                v91 = 2050;
                v92 = code;
                _os_log_impl(&dword_2433AC000, v39, OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to transfer %{public}@ error domain: %{public}@: code:%{public}ld", buf, 0x2Au);
              }

              v70 = v49;
              fromCopy = v64;
            }
          }

          v69 = [obj countByEnumeratingWithState:&v74 objects:v93 count:16];
        }

        while (v69);
      }

      else
      {
LABEL_48:
        fromCopy = v64;
      }

      regexCopy = v62;
      defaultManager3 = v67;
      toCopy = v68;
      v25 = v61;
      v24 = v60;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v58 = v70;
      localizedDescription2 = [v70 localizedDescription];
      *buf = 136315650;
      v86 = "+[CDFSubsystemDiagnostics collectFileWithRegex:from:to:mostRecent:]";
      v87 = 2114;
      v88 = fromCopy;
      v89 = 2114;
      recentCopy2 = localizedDescription2;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to get %{public}@ contents:error %{public}@", buf, 0x20u);

LABEL_51:
      v19 = v58;
LABEL_52:

      goto LABEL_40;
    }

    v58 = v70;
    goto LABEL_51;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v86 = "+[CDFSubsystemDiagnostics collectFileWithRegex:from:to:mostRecent:]";
    v87 = 2114;
    v88 = regexCopy;
    v89 = 2050;
    recentCopy2 = recent;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: invalid name %{public}@ with count %{public}lu", buf, 0x20u);
  }

LABEL_39:
  v25 = 0;
LABEL_40:

  return v25;
}

uint64_t __67__CDFSubsystemDiagnostics_collectFileWithRegex_from_to_mostRecent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 lastPathComponent];
  v6 = [v4 lastPathComponent];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

+ (BOOL)collectFilesWithRegexes:(id)regexes from:(id)from to:(id)to mostRecent:(unint64_t)recent
{
  v45 = *MEMORY[0x277D85DE8];
  regexesCopy = regexes;
  fromCopy = from;
  toCopy = to;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v33 = fromCopy;
  path = [fromCopy path];
  v14 = [defaultManager fileExistsAtPath:path];

  if ((v14 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      path2 = [fromCopy path];
      *buf = 136315394;
      v39 = "+[CDFSubsystemDiagnostics collectFilesWithRegexes:from:to:mostRecent:]";
      v40 = 2114;
      v41 = path2;
      v28 = MEMORY[0x277D86220];
      v29 = "CDF: %s: invalid directory path sourcepath: %{public}@";
LABEL_19:
      _os_log_impl(&dword_2433AC000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);
    }

LABEL_20:
    v26 = 0;
    goto LABEL_21;
  }

  path3 = [toCopy path];
  v16 = [defaultManager fileExistsAtPath:path3];

  if ((v16 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      path2 = [toCopy path];
      *buf = 136315394;
      v39 = "+[CDFSubsystemDiagnostics collectFilesWithRegexes:from:to:mostRecent:]";
      v40 = 2114;
      v41 = path2;
      v28 = MEMORY[0x277D86220];
      v29 = "CDF: %s: invalid directory path destpath: %{public}@";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v31 = defaultManager;
  v32 = regexesCopy;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = regexesCopy;
  v18 = [v17 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    v21 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v34 + 1) + 8 * i);
        v24 = [CDFSubsystemDiagnostics collectFileWithRegex:v23 from:v33 to:toCopy mostRecent:recent, v31, v32];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v25 = "in";
          if (v24)
          {
            v25 = &unk_2433B42E6;
          }

          v39 = "+[CDFSubsystemDiagnostics collectFilesWithRegexes:from:to:mostRecent:]";
          v40 = 2082;
          v41 = v25;
          v42 = 2112;
          v43 = v23;
          _os_log_impl(&dword_2433AC000, v21, OS_LOG_TYPE_DEFAULT, "CDF: %s: transfer %{public}scomplete for %@", buf, 0x20u);
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v19);
  }

  v26 = 1;
  defaultManager = v31;
  regexesCopy = v32;
LABEL_21:

  return v26;
}

+ (BOOL)isCentauriPlatform
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = IOServiceMatching("AppleCentauriManager");
  if (!v2)
  {
    +[CDFSubsystemDiagnostics isCentauriPlatform];
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v2);
  v4 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = "not detected";
    if (v4)
    {
      v5 = "detected";
    }

    v7 = 136315394;
    v8 = "+[CDFSubsystemDiagnostics isCentauriPlatform]";
    v9 = 2082;
    v10 = v5;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: manager service %{public}s", &v7, 0x16u);
  }

  return v4 != 0;
}

@end
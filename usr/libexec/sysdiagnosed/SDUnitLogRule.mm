@interface SDUnitLogRule
- (BOOL)canAddToCandidateList;
- (BOOL)considerURL:(id)l forRejection:(unint64_t *)rejection;
- (SDUnitLogRule)initWithDate:(id)date withFilter:(id)filter newestFileCount:(unint64_t)count atInternalDirectory:(id)directory withRuntimeChecks:(unint64_t)checks;
- (id)_localUserHomeDirectories;
- (id)advanceMatchEnumerator;
- (id)applyFilters;
- (id)resolveCrashReporterPath:(id)path;
- (id)resolvePathToMobileContainer:(id)container;
- (void)_getNextVariedSet:(id)set withLogs:(id)logs;
- (void)addPathsToArray:(id)array withHighPriority:(id)priority withMaxVariety:(BOOL)variety;
- (void)generateMaxVariety:(id)variety withLogs:(id)logs withHighPriority:(id)priority;
@end

@implementation SDUnitLogRule

- (SDUnitLogRule)initWithDate:(id)date withFilter:(id)filter newestFileCount:(unint64_t)count atInternalDirectory:(id)directory withRuntimeChecks:(unint64_t)checks
{
  dateCopy = date;
  filterCopy = filter;
  directoryCopy = directory;
  v21.receiver = self;
  v21.super_class = SDUnitLogRule;
  v15 = [(SDUnitLogRule *)&v21 init];
  v16 = v15;
  if (v15)
  {
    [(SDUnitLogRule *)v15 setCreatedSince:dateCopy];
    [(SDUnitLogRule *)v16 setFilter:filterCopy];
    [(SDUnitLogRule *)v16 setNewestFileLimit:count];
    v17 = [NSMutableArray arrayWithCapacity:count];
    [(SDUnitLogRule *)v16 setLogArray:v17];

    v18 = [NSMutableArray arrayWithCapacity:count];
    [(SDUnitLogRule *)v16 setLogDates:v18];

    if (directoryCopy)
    {
      v19 = directoryCopy;
    }

    else
    {
      v19 = @".";
    }

    [(SDUnitLogRule *)v16 setRelative:v19];
    [(SDUnitLogRule *)v16 setMaxDepth:1024];
    [(SDUnit *)v16 setRuntimeChecks:checks];
    [(SDUnitLogRule *)v16 setMobileContainerClass:0];
    [(SDUnitLogRule *)v16 setMobileContainer:0];
    [(SDUnitLogRule *)v16 setMatchEnumerator:0];
    [(SDUnitLogRule *)v16 setHeadDir:@"."];
    [(SDUnitLogRule *)v16 setResolveHomeDirs:1];
    [(SDUnitLogRule *)v16 setPipelineFlush:0];
    [(SDUnitLogRule *)v16 setOffsets:0];
    [(SDUnitLogRule *)v16 setSizes:0];
  }

  return v16;
}

- (id)advanceMatchEnumerator
{
  matchEnumerator = [(SDUnitLogRule *)self matchEnumerator];
  v4 = [matchEnumerator count];

  if (v4)
  {
    firstObject = 0;
    while (1)
    {
      v6 = firstObject;
      v7 = objc_autoreleasePoolPush();
      matchEnumerator2 = [(SDUnitLogRule *)self matchEnumerator];
      firstObject = [matchEnumerator2 firstObject];

      getNextMatch = [firstObject getNextMatch];
      if (getNextMatch)
      {
        break;
      }

      matchEnumerator3 = [(SDUnitLogRule *)self matchEnumerator];
      [matchEnumerator3 removeObjectAtIndex:0];

      objc_autoreleasePoolPop(v7);
      matchEnumerator4 = [(SDUnitLogRule *)self matchEnumerator];
      v12 = [matchEnumerator4 count];

      if (!v12)
      {
        v13 = 0;
        goto LABEL_8;
      }
    }

    v13 = getNextMatch;
    objc_autoreleasePoolPop(v7);

    firstObject = v13;
LABEL_8:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)considerURL:(id)l forRejection:(unint64_t *)rejection
{
  lCopy = l;
  v7 = lCopy;
  if (!lCopy || ([lCopy path], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v12 = 0;
    v13 = 1;
    goto LABEL_6;
  }

  logArray = [(SDUnitLogRule *)self logArray];
  path = [v7 path];
  v11 = [logArray containsObject:path];

  if (!v11)
  {
    v15 = +[NSFileManager defaultManager];
    path2 = [v7 path];
    v17 = [v15 fileExistsAtPath:path2];

    if ((v17 & 1) == 0)
    {
      v47 = sub_1000278E8(v18);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [v7 lastPathComponent];
        *buf = 138412290;
        v72 = lastPathComponent;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%@ failed due to file not found", buf, 0xCu);
      }

      v49 = +[SDResourceManager sharedResourceManager];
      lastPathComponent2 = [v7 lastPathComponent];
      [v49 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"%@ failed due to file not found", lastPathComponent2}];

      v12 = 0;
      v13 = 10;
      goto LABEL_6;
    }

    v70 = 0;
    v69 = 0;
    v19 = [v7 getResourceValue:&v70 forKey:NSURLCreationDateKey error:&v69];
    v20 = v70;
    v21 = v69;
    v22 = v21;
    if (!v19 || !v20)
    {
      v51 = sub_1000278E8(v21);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent3 = [v7 lastPathComponent];
        localizedDescription = [v22 localizedDescription];
        *buf = 138412546;
        v72 = lastPathComponent3;
        v73 = 2112;
        *v74 = localizedDescription;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%@ failed to get date with error %@", buf, 0x16u);
      }

      v54 = +[SDResourceManager sharedResourceManager];
      lastPathComponent4 = [v7 lastPathComponent];
      localizedDescription2 = [v22 localizedDescription];
      [v54 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"%@ failed to get date with error %@", lastPathComponent4, localizedDescription2}];

      v12 = 0;
      *rejection = 5;
      goto LABEL_36;
    }

    createdSince = [(SDUnitLogRule *)self createdSince];

    if (createdSince && (-[SDUnitLogRule createdSince](self, "createdSince"), v24 = objc_claimAutoreleasedReturnValue(), [v20 earlierDate:v24], v25 = objc_claimAutoreleasedReturnValue(), v25, v24, v25 == v20))
    {
      *rejection = 6;
      v57 = sub_1000278E8(v26);
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      lastPathComponent5 = [v7 lastPathComponent];
      [v20 timeIntervalSince1970];
      v60 = v59;
      createdSince2 = [(SDUnitLogRule *)self createdSince];
      [createdSince2 timeIntervalSince1970];
      *buf = 138412802;
      v72 = lastPathComponent5;
      v73 = 1024;
      *v74 = v60;
      *&v74[4] = 1024;
      *&v74[6] = v62;
      v63 = "%@ failed to pass date test %{time_t}d < %{time_t}d ";
    }

    else
    {
      createdUntil = [(SDUnitLogRule *)self createdUntil];

      if (!createdUntil || (-[SDUnitLogRule createdUntil](self, "createdUntil"), v28 = objc_claimAutoreleasedReturnValue(), [v20 laterDate:v28], v29 = objc_claimAutoreleasedReturnValue(), v29, v28, v29 != v20))
      {
        filter = [(SDUnitLogRule *)self filter];

        if (!filter || (-[SDUnitLogRule filter](self, "filter"), v32 = objc_claimAutoreleasedReturnValue(), [v7 path], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v32, "evaluateWithObject:", v33), v33, v32, (v34 & 1) != 0))
        {
          logArray2 = [(SDUnitLogRule *)self logArray];
          v37 = [logArray2 count];

          v38 = 0;
          if (v37)
          {
            do
            {
              logDates = [(SDUnitLogRule *)self logDates];
              v40 = [logDates objectAtIndexedSubscript:v38];
              v41 = [v40 laterDate:v20];

              if (v41 == v20)
              {
                break;
              }

              ++v38;
              logArray3 = [(SDUnitLogRule *)self logArray];
              v43 = [logArray3 count];
            }

            while (v43 > v38);
          }

          logArray4 = [(SDUnitLogRule *)self logArray];
          path3 = [v7 path];
          [logArray4 insertObject:path3 atIndex:v38];

          logDates2 = [(SDUnitLogRule *)self logDates];
          [logDates2 insertObject:v20 atIndex:v38];

          v12 = 1;
          goto LABEL_36;
        }

        *rejection = 8;
        v57 = sub_1000278E8(v35);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          lastPathComponent5 = [v7 lastPathComponent];
          createdSince2 = [(SDUnitLogRule *)self filter];
          *buf = 138412546;
          v72 = lastPathComponent5;
          v73 = 2112;
          *v74 = createdSince2;
          v63 = "%@ failed to pass predicate %@ ";
          v64 = v57;
          v65 = 22;
LABEL_34:
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, v63, buf, v65);
        }

LABEL_35:

        v12 = 0;
LABEL_36:

        goto LABEL_7;
      }

      *rejection = 6;
      v57 = sub_1000278E8(v30);
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      lastPathComponent5 = [v7 lastPathComponent];
      [v20 timeIntervalSince1970];
      v67 = v66;
      createdSince2 = [(SDUnitLogRule *)self createdUntil];
      [createdSince2 timeIntervalSince1970];
      *buf = 138412802;
      v72 = lastPathComponent5;
      v73 = 1024;
      *v74 = v67;
      *&v74[4] = 1024;
      *&v74[6] = v68;
      v63 = "%@ failed to pass date test %{time_t}d < %{time_t}d ";
    }

    v64 = v57;
    v65 = 24;
    goto LABEL_34;
  }

  v12 = 0;
  v13 = 9;
LABEL_6:
  *rejection = v13;
LABEL_7:

  return v12;
}

- (id)applyFilters
{
  v3 = +[NSMutableArray array];
  if ([(SDUnitLogRule *)self newestFileLimit])
  {
    logArray = [(SDUnitLogRule *)self logArray];
    v5 = [logArray count];
    newestFileLimit = [(SDUnitLogRule *)self newestFileLimit];

    if (v5 > newestFileLimit)
    {
      logArray2 = [(SDUnitLogRule *)self logArray];
      v7 = [logArray2 count];

      LODWORD(logArray2) = v7 - 1;
      if ([(SDUnitLogRule *)self newestFileLimit]<= (v7 - 1))
      {
        logArray2 = logArray2;
        do
        {
          logArray3 = [(SDUnitLogRule *)self logArray];
          v10 = [logArray3 objectAtIndexedSubscript:logArray2];

          logArray4 = [(SDUnitLogRule *)self logArray];
          [logArray4 removeLastObject];

          logDates = [(SDUnitLogRule *)self logDates];
          [logDates removeLastObject];

          [v3 addObject:v10];
          --logArray2;
        }

        while ([(SDUnitLogRule *)self newestFileLimit]<= logArray2);
      }
    }
  }

  return v3;
}

- (void)_getNextVariedSet:(id)set withLogs:(id)logs
{
  setCopy = set;
  logsCopy = logs;
  v7 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [setCopy allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [setCopy objectForKey:v13];
        lastObject = [v14 lastObject];
        [v7 addObject:lastObject];

        [v14 removeLastObject];
        if (![v14 count])
        {
          [setCopy removeObjectForKey:v13];
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16 = [v7 sortedArrayUsingSelector:"compareLogDateDescending:"];
  [logsCopy addObjectsFromArray:v16];
}

- (void)generateMaxVariety:(id)variety withLogs:(id)logs withHighPriority:(id)priority
{
  varietyCopy = variety;
  logsCopy = logs;
  priorityCopy = priority;
  v56 = 0;
  v11 = [NSRegularExpression regularExpressionWithPattern:@"[.]synced$" options:1 error:&v56];
  v12 = v56;
  v13 = v12;
  v49 = v11;
  if (v11)
  {
    v55 = v12;
    v14 = [NSRegularExpression regularExpressionWithPattern:@"[.][0-9]{3}[.]ips" options:1 error:&v55];
    v15 = v55;

    if (v14)
    {
      v54 = v15;
      localizedDescription5 = [NSRegularExpression regularExpressionWithPattern:@"([0-9]{4}(-|_)[0-9]{2}(-|_)[0-9]{2}(-|_)([0-9]{6}|[0-9]{2}(-|_)[0-9]{2}(-|_)[0-9]{2}))" options:1 error:&v54];
      v18 = v54;

      if (localizedDescription5)
      {
        v42 = v18;
        selfCopy = self;
        v44 = priorityCopy;
        v45 = logsCopy;
        v48 = +[NSMutableDictionary dictionary];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v46 = varietyCopy;
        obj = [varietyCopy reverseObjectEnumerator];
        v20 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v51;
          do
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v51 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v50 + 1) + 8 * i);
              v25 = objc_autoreleasePoolPush();
              path = [v24 path];
              path2 = [v24 path];
              v28 = [v49 stringByReplacingMatchesInString:path options:0 range:0 withTemplate:{objc_msgSend(path2, "length"), &stru_1000A67D8}];

              v29 = [v14 stringByReplacingMatchesInString:v28 options:0 range:0 withTemplate:{objc_msgSend(v28, "length"), @".ips"}];

              v30 = [localizedDescription5 stringByReplacingMatchesInString:v29 options:0 range:0 withTemplate:{objc_msgSend(v29, "length"), &stru_1000A67D8}];

              if (v30)
              {
                v31 = [v48 objectForKey:v30];
                if (v31)
                {
                  v32 = v31;
                }

                else
                {
                  v32 = +[NSMutableArray array];
                  [v48 setObject:v32 forKey:v30];
                  if (!v32)
                  {
                    goto LABEL_14;
                  }
                }

                [v32 addObject:v24];
              }

LABEL_14:

              objc_autoreleasePoolPop(v25);
            }

            v21 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
          }

          while (v21);
        }

        priorityCopy = v44;
        localizedDescription3 = v48;
        [(SDUnitLogRule *)selfCopy _getNextVariedSet:v48 withLogs:v44];
        if ([v48 count])
        {
          logsCopy = v45;
          varietyCopy = v46;
          v15 = v42;
          do
          {
            [(SDUnitLogRule *)selfCopy _getNextVariedSet:v48 withLogs:v45];
          }

          while ([v48 count]);
        }

        else
        {
          v15 = v42;
          logsCopy = v45;
          varietyCopy = v46;
        }
      }

      else
      {
        v38 = sub_1000278E8(v19);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          [v18 localizedDescription];
          v40 = v39 = v18;
          *buf = 138412290;
          v59 = v40;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Failed to compile generateMaxVariety::regex with error: %@", buf, 0xCu);

          v18 = v39;
        }

        localizedDescription3 = +[SDResourceManager sharedResourceManager];
        localizedDescription = [v18 localizedDescription];
        [localizedDescription3 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"Failed to compile generateMaxVariety::regex with error: %@", localizedDescription}];

        v15 = v18;
      }
    }

    else
    {
      v36 = sub_1000278E8(v16);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        localizedDescription2 = [v15 localizedDescription];
        *buf = 138412290;
        v59 = localizedDescription2;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Failed to compile generateMaxVariety::stackTripleRegex with error: %@", buf, 0xCu);
      }

      localizedDescription5 = +[SDResourceManager sharedResourceManager];
      localizedDescription3 = [v15 localizedDescription];
      [localizedDescription5 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"Failed to compile generateMaxVariety::stackTripleRegex with error: %@", localizedDescription3}];
    }

    v13 = v15;
  }

  else
  {
    v34 = sub_1000278E8(v12);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription4 = [v13 localizedDescription];
      *buf = 138412290;
      v59 = localizedDescription4;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Failed to compile generateMaxVariety::syncedRegex with error: %@", buf, 0xCu);
    }

    v14 = +[SDResourceManager sharedResourceManager];
    localizedDescription5 = [v13 localizedDescription];
    [v14 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"Failed to compile generateMaxVariety::syncedRegex with error: %@", localizedDescription5}];
  }
}

- (void)addPathsToArray:(id)array withHighPriority:(id)priority withMaxVariety:(BOOL)variety
{
  varietyCopy = variety;
  arrayCopy = array;
  priorityCopy = priority;
  v9 = +[NSMutableArray array];
  headDir = [(SDUnitLogRule *)self headDir];
  v11 = [NSURL fileURLWithPath:headDir];
  standardizedURL = [v11 standardizedURL];
  path = [standardizedURL path];

  logArray = [(SDUnitLogRule *)self logArray];
  v14 = [logArray count];

  if (v14)
  {
    v39 = varietyCopy;
    v43 = v9;
    v40 = priorityCopy;
    v15 = 0;
    stringByDeletingLastPathComponent = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = stringByDeletingLastPathComponent;
      v21 = objc_autoreleasePoolPush();
      logArray2 = [(SDUnitLogRule *)self logArray];
      v23 = [logArray2 objectAtIndexedSubscript:v15];
      stringByDeletingLastPathComponent = [v23 stringByDeletingLastPathComponent];

      headDir2 = [(SDUnitLogRule *)self headDir];
      LODWORD(v23) = [headDir2 isEqualToString:@"."];

      if (v23)
      {
        [(SDUnitLogRule *)self headDir];
        v19 = v25 = v19;
      }

      else
      {
        v25 = [stringByDeletingLastPathComponent componentsSeparatedByString:path];
        lastObject = [v25 lastObject];

        v19 = lastObject;
      }

      relative = [(SDUnitLogRule *)self relative];
      v28 = [relative stringByAppendingPathComponent:v19];

      v29 = [SDLog alloc];
      logArray3 = [(SDUnitLogRule *)self logArray];
      v31 = [logArray3 objectAtIndexedSubscript:v15];
      v32 = [(SDLog *)v29 initWithPath:v31 subdirectory:v28 error:0];

      if (v32)
      {
        offsets = [(SDUnitLogRule *)self offsets];
        [(SDLog *)v32 setOffsets:offsets];

        sizes = [(SDUnitLogRule *)self sizes];
        [(SDLog *)v32 setSizes:sizes];

        [v43 addObject:v32];
      }

      objc_autoreleasePoolPop(v21);
      ++v15;
      logArray4 = [(SDUnitLogRule *)self logArray];
      v36 = [logArray4 count];

      v17 = v32;
      v18 = v28;
    }

    while (v36 > v15);

    priorityCopy = v40;
    v9 = v43;
    varietyCopy = v39;
  }

  logArray5 = [(SDUnitLogRule *)self logArray];
  [logArray5 removeAllObjects];

  logDates = [(SDUnitLogRule *)self logDates];
  [logDates removeAllObjects];

  if (varietyCopy)
  {
    [(SDUnitLogRule *)self generateMaxVariety:v9 withLogs:arrayCopy withHighPriority:priorityCopy];
  }

  else
  {
    [arrayCopy addObjectsFromArray:v9];
  }
}

- (id)_localUserHomeDirectories
{
  v2 = +[NSMutableArray array];
  if (sub_100027804(v2, v3))
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [NSURL fileURLWithPath:@"/private/var/Users" isDirectory:1];
    v6 = [v4 enumeratorAtURL:v5 includingPropertiesForKeys:0 options:7 errorHandler:&stru_1000A10E0];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          [v2 addObject:{v12, v15}];
          objc_autoreleasePoolPop(v13);
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = [NSURL fileURLWithPath:@"/private/var/mobile/" isDirectory:1];
    [v2 addObject:v7];
  }

  return v2;
}

- (id)resolvePathToMobileContainer:(id)container
{
  containerCopy = container;
  if ([containerCopy hasPrefix:@"~"] && (objc_msgSend(containerCopy, "hasPrefix:", @"~~") & 1) == 0)
  {
    path = sub_100024620();
    if (path)
    {
      v10 = [containerCopy stringByReplacingOccurrencesOfString:@"~" withString:path];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SDUnitLogRule *)self setHeadDir:v10];
      }
    }

    else
    {
      v10 = [containerCopy stringByReplacingOccurrencesOfString:@"~" withString:@"/private/var/root"];
      v17 = sub_1000278E8(v10);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        mobileContainerClass3 = containerCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@ cannot be resolved to user home directory. Setting to root home directory.", buf, 0xCu);
      }

      v18 = +[SDResourceManager sharedResourceManager];
      [v18 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"%@ cannot be resolved to user home directory. Setting to root home directory.", containerCopy}];
    }
  }

  else
  {
    if ([(SDUnitLogRule *)self mobileContainerClass]&& ([(SDUnitLogRule *)self mobileContainer], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      mobileContainerClass = [(SDUnitLogRule *)self mobileContainerClass];
      mobileContainer = [(SDUnitLogRule *)self mobileContainer];
      [mobileContainer UTF8String];
      if (mobileContainerClass == 2)
      {
        v8 = container_create_or_lookup_path_for_current_user();
      }

      else if (mobileContainerClass == 1)
      {
        v8 = container_system_group_path_for_identifier();
      }

      else
      {
        v8 = container_system_path_for_identifier();
      }

      v11 = v8;

      if (v11)
      {
        v12 = [NSURL fileURLWithFileSystemRepresentation:v11 isDirectory:1 relativeToURL:0];
        path = [v12 path];

        free(v11);
      }

      else
      {
        mobileContainerClass2 = [(SDUnitLogRule *)self mobileContainerClass];
        if (mobileContainerClass2 == 2)
        {
          path = @"/private/var/mobile/";
        }

        else
        {
          path = @"/DUMMY/";
        }

        v14 = sub_1000278E8(mobileContainerClass2);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          mobileContainerClass3 = [(SDUnitLogRule *)self mobileContainerClass];
          v21 = 2048;
          v22 = 1;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Error finding container of type %lu with error %llu, setting to bogus path.", buf, 0x16u);
        }

        v15 = +[SDResourceManager sharedResourceManager];
        [v15 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"Error finding container of type %lu with error %llu, setting to bogus path.", -[SDUnitLogRule mobileContainerClass](self, "mobileContainerClass"), 1}];
      }
    }

    else
    {
      path = @"/";
    }

    v10 = [(__CFString *)path stringByAppendingPathComponent:containerCopy];
  }

  return v10;
}

- (BOOL)canAddToCandidateList
{
  logArray = [(SDUnitLogRule *)self logArray];
  v4 = [logArray count];

  if (v4 >= 0x3E8)
  {
    v6 = sub_1000278E8(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Hit candidate limit -- flushing the log collection pipeline", v9, 2u);
    }

    v7 = +[SDResourceManager sharedResourceManager];
    [v7 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:@"Hit candidate limit -- flushing the log collection pipeline"];

    [(SDUnitLogRule *)self setPipelineFlush:1];
  }

  return v4 < 0x3E8;
}

- (id)resolveCrashReporterPath:(id)path
{
  pathCopy = path;
  if (sub_100027804(pathCopy, v4))
  {
    v5 = [pathCopy length];
    v6 = sub_100016A64(0);
    v7 = [pathCopy stringByReplacingOccurrencesOfString:@"/private/var/mobile/Library/Logs/CrashReporter" withString:v6 options:9 range:{0, v5}];

    pathCopy = v7;
  }

  return pathCopy;
}

@end
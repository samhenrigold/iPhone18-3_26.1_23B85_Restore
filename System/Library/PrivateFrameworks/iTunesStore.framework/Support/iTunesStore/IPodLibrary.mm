@interface IPodLibrary
+ (id)deviceIPodLibrary;
+ (void)deleteIPodPurchaseWithMessage:(id)message connection:(id)connection;
- (BOOL)_addLibraryItems:(id)items toMusicLibrary:(id)library itemPids:(int64_t *)pids error:(id *)error;
- (BOOL)_removeDownloadWithIdentifier:(int64_t)identifier canceled:(BOOL)canceled inLibrary:(id)library;
- (BOOL)addLibraryItems:(id)items error:(id *)error;
- (IPodLibrary)init;
- (int64_t)addLibraryItem:(id)item error:(id *)error;
- (void)_commitScheduledLibraryItems;
- (void)_dispatchAsync:(id)async;
- (void)_setDownloadPropertiesForTrack:(id)track usingLibraryItem:(id)item;
- (void)commitScheduledLibraryItems;
- (void)dealloc;
- (void)deleteAllOTATracks;
- (void)removeDownloadWithIdentifier:(int64_t)identifier canceled:(BOOL)canceled;
- (void)removeDownloadsWithIdentifiers:(id)identifiers canceled:(BOOL)canceled;
- (void)scheduleLibraryItem:(id)item;
- (void)scheduleLibraryItems:(id)items;
- (void)setAppleIdentifier:(id)identifier forAccountIdentifier:(unint64_t)accountIdentifier;
@end

@implementation IPodLibrary

- (IPodLibrary)init
{
  if (+[SSDevice deviceIsAppleTV])
  {

    return 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = IPodLibrary;
    v3 = [(IPodLibrary *)&v6 init];
    if (v3)
    {
      v3->_dispatchQueue = dispatch_queue_create("com.apple.itunesstored.IPodLibrary", 0);
      v4 = objc_alloc_init(ISOperationQueue);
      v3->_operationQueue = v4;
      [(ISOperationQueue *)v4 setAdjustsMaxConcurrentOperationCount:0];
      [(ISOperationQueue *)v3->_operationQueue setMaxConcurrentOperationCount:3];
      [+[Daemon daemon](Daemon "daemon")];
    }
  }

  return v3;
}

- (void)dealloc
{
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  scheduledItemTimer = self->_scheduledItemTimer;
  if (scheduledItemTimer)
  {
    dispatch_source_cancel(scheduledItemTimer);
    dispatch_release(self->_scheduledItemTimer);
  }

  if (self->_operationQueue)
  {
    [+[Daemon daemon](Daemon "daemon")];
    [(ISOperationQueue *)self->_operationQueue cancelAllOperations];
  }

  v5.receiver = self;
  v5.super_class = IPodLibrary;
  [(IPodLibrary *)&v5 dealloc];
}

+ (id)deviceIPodLibrary
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014BA40;
  block[3] = &unk_100327378;
  block[4] = self;
  if (qword_100383F38 != -1)
  {
    dispatch_once(&qword_100383F38, block);
  }

  return qword_100383F30;
}

- (int64_t)addLibraryItem:(id)item error:(id *)error
{
  v5 = 0;
  itemCopy = item;
  [(IPodLibrary *)self _addLibraryItems:+[NSArray arrayWithObjects:count:](NSArray toMusicLibrary:"arrayWithObjects:count:" itemPids:&itemCopy error:1), +[ML3MusicLibrary sharedLibrary], &v5, error];
  return v5;
}

- (BOOL)addLibraryItems:(id)items error:(id *)error
{
  v7 = +[ML3MusicLibrary sharedLibrary];

  return [(IPodLibrary *)self _addLibraryItems:items toMusicLibrary:v7 itemPids:0 error:error];
}

- (void)commitScheduledLibraryItems
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10014BBD8;
  v2[3] = &unk_100327378;
  v2[4] = self;
  [(IPodLibrary *)self _dispatchAsync:v2];
}

- (void)deleteAllOTATracks
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v11 = 138412290;
    v12 = objc_opt_class();
    v7 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Deleting all OTA tracks", &v11, 12);
    if (v7)
    {
      v8 = v7;
      v9 = [NSString stringWithCString:v7 encoding:4];
      free(v8);
      v10 = v9;
      SSFileLog();
    }
  }

  [(IPodLibrary *)self _dispatchAsync:&stru_100329DA8, v10];
}

- (void)removeDownloadsWithIdentifiers:(id)identifiers canceled:(BOOL)canceled
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10014BE88;
  v4[3] = &unk_100328000;
  v4[4] = identifiers;
  v4[5] = self;
  canceledCopy = canceled;
  [(IPodLibrary *)self _dispatchAsync:v4];
}

- (void)removeDownloadWithIdentifier:(int64_t)identifier canceled:(BOOL)canceled
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10014C0B4;
  v4[3] = &unk_100329E48;
  v4[4] = self;
  v4[5] = identifier;
  canceledCopy = canceled;
  [(IPodLibrary *)self _dispatchAsync:v4];
}

- (void)scheduleLibraryItem:(id)item
{
  v4 = [[NSArray alloc] initWithObjects:{item, 0}];
  [(IPodLibrary *)self scheduleLibraryItems:v4];
}

- (void)scheduleLibraryItems:(id)items
{
  if ([items count])
  {
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      LODWORD(v7) = shouldLog | 2;
    }

    else
    {
      LODWORD(v7) = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v14 = 138412546;
      v15 = objc_opt_class();
      v16 = 2048;
      v17 = [items count];
      v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Scheduling %lu iPod library items", &v14, 22);
      if (v9)
      {
        v10 = v9;
        v11 = [NSString stringWithCString:v9 encoding:4];
        free(v10);
        v12 = v11;
        SSFileLog();
      }
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10014C398;
    v13[3] = &unk_100327350;
    v13[4] = self;
    v13[5] = items;
    [(IPodLibrary *)self _dispatchAsync:v13, v12];
  }
}

- (void)setAppleIdentifier:(id)identifier forAccountIdentifier:(unint64_t)accountIdentifier
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10014C548;
  v4[3] = &unk_100327808;
  v4[4] = identifier;
  v4[5] = accountIdentifier;
  [(IPodLibrary *)self _dispatchAsync:v4];
}

+ (void)deleteIPodPurchaseWithMessage:(id)message connection:(id)connection
{
  if (SSXPCConnectionHasEntitlement())
  {
    v4 = +[IPodLibrary deviceIPodLibrary];

    [v4 deleteAllOTATracks];
  }
}

- (BOOL)_addLibraryItems:(id)items toMusicLibrary:(id)library itemPids:(int64_t *)pids error:(id *)error
{
  itemsCopy = items;
  v140 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [items count]);
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v7 = [itemsCopy countByEnumeratingWithState:&v145 objects:v153 count:16];
  obj = itemsCopy;
  if (v7)
  {
    v8 = v7;
    v9 = *v146;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v146 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v145 + 1) + 8 * i);
        v12 = +[IPodLibraryItem mediaTypeForStoreDownload:](IPodLibraryItem, "mediaTypeForStoreDownload:", [v11 itemMetadata]);
        libraryPersistentIdentifier = [v11 libraryPersistentIdentifier];
        v14 = +[SSLogConfig sharedDaemonConfig];
        if (!v14)
        {
          v14 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v15) = [v14 shouldLog];
        if ([v14 shouldLogToDisk])
        {
          LODWORD(v15) = v15 | 2;
        }

        oSLogObject = [v14 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
        {
          v15 = v15;
        }

        else
        {
          v15 &= 2u;
        }

        if (v15)
        {
          v17 = objc_opt_class();
          v149 = 138412546;
          v150 = v17;
          v151 = 2048;
          *v152 = libraryPersistentIdentifier;
          LODWORD(v130) = 22;
          v18 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: importing item with existing library pid %lld", &v149, v130);
          if (v18)
          {
            v19 = v18;
            v20 = [NSString stringWithCString:v18 encoding:4];
            free(v19);
            v122 = v20;
            SSFileLog();
          }
        }

        if (libraryPersistentIdentifier)
        {
          v21 = v12 == 8;
        }

        else
        {
          v21 = 0;
        }

        if (v21)
        {
          v22 = +[SSLogConfig sharedDaemonConfig];
          if (!v22)
          {
            v22 = +[SSLogConfig sharedConfig];
          }

          LODWORD(v23) = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            LODWORD(v23) = v23 | 2;
          }

          oSLogObject2 = [v22 OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
          {
            v23 = v23;
          }

          else
          {
            v23 &= 2u;
          }

          if (v23)
          {
            v25 = objc_opt_class();
            v149 = 138412546;
            v150 = v25;
            v151 = 2048;
            *v152 = libraryPersistentIdentifier;
            LODWORD(v130) = 22;
            v26 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: skipping import of item with existing library pid %lld", &v149, v130);
            if (v26)
            {
              v27 = v26;
              v28 = [NSString stringWithCString:v26 encoding:4];
              free(v27);
              v122 = v28;
              SSFileLog();
            }
          }
        }

        else
        {
          [(NSMutableArray *)v140 addObject:v11];
        }
      }

      itemsCopy = obj;
      v8 = [obj countByEnumeratingWithState:&v145 objects:v153 count:16];
    }

    while (v8);
  }

  if ([(NSMutableArray *)v140 count])
  {
    v29 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [itemsCopy count]);
    v138 = objc_alloc_init(IPodLibraryML3TrackImporter);
    v30 = [(IPodLibraryML3TrackImporter *)v138 importLibraryItems:v140 toMusicLibrary:library importedItemPids:v29];
    v31 = +[SSLogConfig sharedDaemonConfig];
    if (!v31)
    {
      v31 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v31 shouldLog];
    if ([v31 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject3 = [v31 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      v34 = shouldLog;
    }

    else
    {
      v34 = shouldLog & 2;
    }

    if (v34)
    {
      v35 = objc_opt_class();
      v36 = "failed";
      if (v30)
      {
        v36 = "succeeded";
      }

      v149 = 138412546;
      v150 = v35;
      v151 = 2080;
      *v152 = v36;
      LODWORD(v130) = 22;
      v37 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%@: import %s", &v149, v130);
      if (v37)
      {
        v38 = v37;
        v39 = [NSString stringWithCString:v37 encoding:4];
        free(v38);
        v123 = v39;
        SSFileLog();
      }
    }

    if (!v30)
    {
      v120 = 0;
      goto LABEL_159;
    }

    if ([(NSMutableArray *)v140 count])
    {
      v40 = 0;
      do
      {
        [-[NSMutableArray objectAtIndex:](v140 objectAtIndex:{v40, v123), "setLibraryPersistentIdentifier:", objc_msgSend(-[NSMutableArray objectAtIndex:](v29, "objectAtIndex:", v40), "longLongValue")}];
        ++v40;
      }

      while ([(NSMutableArray *)v140 count]> v40);
    }

    itemsCopy = obj;
  }

  v137 = objc_opt_new();
  v138 = objc_opt_new();
  if ([itemsCopy count])
  {
    v41 = 0;
    v133 = ML3TrackPropertyBaseLocationID;
    v134 = ML3TrackPropertyLocationFileName;
    v132 = ML3TrackPropertyStoreFamilyAccountID;
    do
    {
      v42 = [itemsCopy objectAtIndex:{v41, v123}];
      itemMediaPath = [v42 itemMediaPath];
      v141 = v42;
      libraryPersistentIdentifier2 = [v42 libraryPersistentIdentifier];
      v45 = libraryPersistentIdentifier2;
      if (pids)
      {
        pids[v41] = libraryPersistentIdentifier2;
      }

      v46 = +[SSLogConfig sharedDaemonConfig];
      if (!v46)
      {
        v46 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v47) = [v46 shouldLog];
      if ([v46 shouldLogToDisk])
      {
        LODWORD(v47) = v47 | 2;
      }

      oSLogObject4 = [v46 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
      {
        v47 = v47;
      }

      else
      {
        v47 &= 2u;
      }

      if (v47)
      {
        v49 = objc_opt_class();
        v149 = 138412802;
        v150 = v49;
        v151 = 1024;
        *v152 = v41;
        *&v152[4] = 2048;
        *&v152[6] = v45;
        LODWORD(v130) = 28;
        v50 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &_mh_execute_header, oSLogObject4, 1, "%@: post process item %d. pid=%lld", &v149, v130);
        if (v50)
        {
          v51 = v50;
          v52 = [NSString stringWithCString:v50 encoding:4];
          free(v51);
          v124 = v52;
          SSFileLog();
        }
      }

      v53 = v45;
      v54 = [[ML3Track alloc] initWithPersistentID:v45 inLibrary:library];
      v139 = [v54 valueForProperty:v134];
      v55 = [objc_msgSend(v54 valueForProperty:{v133), "longLongValue"}];
      v143 = itemMediaPath;
      [objc_msgSend(itemMediaPath "stringByDeletingLastPathComponent")];
      v56 = ML3BaseLocationIDFromMediaRelativePathInLibrary();
      v57 = [v54 valueForProperty:v132];
      longLongValue = [v57 longLongValue];
      v59 = +[SSLogConfig sharedDaemonConfig];
      if (!v59)
      {
        v59 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v60) = [v59 shouldLog];
      if ([v59 shouldLogToDisk])
      {
        LODWORD(v60) = v60 | 2;
      }

      oSLogObject5 = [v59 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_INFO))
      {
        v60 = v60;
      }

      else
      {
        v60 &= 2u;
      }

      if (v60)
      {
        v62 = objc_opt_class();
        v149 = 138412802;
        v150 = v62;
        v151 = 2112;
        *v152 = v139;
        *&v152[8] = 2112;
        *&v152[10] = v57;
        LODWORD(v130) = 32;
        v63 = _os_log_send_and_compose_impl(v60, 0, 0, 0, &_mh_execute_header, oSLogObject5, 1, "%@: existingPath=%@, existingFamilyAccoundID=%@", &v149, v130);
        if (v63)
        {
          v64 = v63;
          v65 = [NSString stringWithCString:v63 encoding:4];
          free(v64);
          v125 = v65;
          SSFileLog();
        }
      }

      if (v143)
      {
        v66 = +[SSLogConfig sharedDaemonConfig];
        v67 = v66;
        if (v55 <= v56 || longLongValue)
        {
          if (!v66)
          {
            v67 = +[SSLogConfig sharedConfig];
          }

          shouldLog2 = [v67 shouldLog];
          if ([v67 shouldLogToDisk])
          {
            LODWORD(v84) = shouldLog2 | 2;
          }

          else
          {
            LODWORD(v84) = shouldLog2;
          }

          oSLogObject6 = [v67 OSLogObject];
          if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_INFO))
          {
            v84 = v84;
          }

          else
          {
            v84 &= 2u;
          }

          itemsCopy = obj;
          if (v84)
          {
            v86 = objc_opt_class();
            persistentID = [v54 persistentID];
            v149 = 138412546;
            v150 = v86;
            v151 = 2048;
            *v152 = persistentID;
            LODWORD(v130) = 22;
            v88 = _os_log_send_and_compose_impl(v84, 0, 0, 0, &_mh_execute_header, oSLogObject6, 1, "%@: Defering populating artwork for %lld", &v149, v130);
            if (v88)
            {
              v89 = v88;
              v90 = [NSString stringWithCString:v88 encoding:4];
              free(v89);
              v128 = v90;
              SSFileLog();
            }
          }

          [v137 addObject:{v141, v128}];
          [(IPodLibraryML3TrackImporter *)v138 addObject:v54];
        }

        else
        {
          if (!v66)
          {
            v67 = +[SSLogConfig sharedConfig];
          }

          shouldLog3 = [v67 shouldLog];
          if ([v67 shouldLogToDisk])
          {
            LODWORD(v69) = shouldLog3 | 2;
          }

          else
          {
            LODWORD(v69) = shouldLog3;
          }

          oSLogObject7 = [v67 OSLogObject];
          if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_INFO))
          {
            v69 = v69;
          }

          else
          {
            v69 &= 2u;
          }

          if (v69)
          {
            v71 = objc_opt_class();
            v149 = 138412802;
            v150 = v71;
            v151 = 2048;
            *v152 = v53;
            *&v152[8] = 2112;
            *&v152[10] = v139;
            LODWORD(v130) = 32;
            v72 = _os_log_send_and_compose_impl(v69, 0, 0, 0, &_mh_execute_header, oSLogObject7, 1, "%@: Skipping existing track with location data: %lld: %@", &v149, v130);
            if (v72)
            {
              v73 = v72;
              v74 = [NSString stringWithCString:v72 encoding:4];
              free(v73);
              v126 = v74;
              SSFileLog();
            }
          }

          if ([v141 isDownloading])
          {
            [(IPodLibrary *)self _setDownloadPropertiesForTrack:v54 usingLibraryItem:v141];
          }

          [NSSet setWithObject:v143];
          ML3DeleteAssetsAtPaths();
          itemsCopy = obj;
        }
      }

      else
      {
        v75 = +[SSLogConfig sharedDaemonConfig];
        itemsCopy = obj;
        if (!v75)
        {
          v75 = +[SSLogConfig sharedConfig];
        }

        shouldLog4 = [v75 shouldLog];
        if ([v75 shouldLogToDisk])
        {
          LODWORD(v77) = shouldLog4 | 2;
        }

        else
        {
          LODWORD(v77) = shouldLog4;
        }

        oSLogObject8 = [v75 OSLogObject];
        if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_INFO))
        {
          v77 = v77;
        }

        else
        {
          v77 &= 2u;
        }

        if (v77)
        {
          v79 = objc_opt_class();
          v149 = 138412546;
          v150 = v79;
          v151 = 2048;
          *v152 = v53;
          LODWORD(v130) = 22;
          v80 = _os_log_send_and_compose_impl(v77, 0, 0, 0, &_mh_execute_header, oSLogObject8, 1, "%@: Skipping existing track, no location data: %lld", &v149, v130);
          if (v80)
          {
            v81 = v80;
            v82 = [NSString stringWithCString:v80 encoding:4];
            free(v81);
            v127 = v82;
            SSFileLog();
          }
        }

        if ([v141 isDownloading])
        {
          [(IPodLibrary *)self _setDownloadPropertiesForTrack:v54 usingLibraryItem:v141];
        }

        else if ([v141 updateType] == 2)
        {
          itemArtworkData = [v141 itemArtworkData];
          if ([itemArtworkData length])
          {
            [v54 populateArtworkCacheWithArtworkData:itemArtworkData];
          }
        }
      }

      v92 = +[SSLogConfig sharedDaemonConfig];
      if (!v92)
      {
        v92 = +[SSLogConfig sharedConfig];
      }

      shouldLog5 = [v92 shouldLog];
      if ([v92 shouldLogToDisk])
      {
        v94 = shouldLog5 | 2;
      }

      else
      {
        v94 = shouldLog5;
      }

      oSLogObject9 = [v92 OSLogObject];
      if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_INFO))
      {
        v96 = v94;
      }

      else
      {
        v96 = v94 & 2;
      }

      if (v96)
      {
        v149 = 134217984;
        v150 = v53;
        v97 = _os_log_send_and_compose_impl(v96, 0, 0, 0, &_mh_execute_header, oSLogObject9, 1, "inserted track id %lld", &v149);
        if (v97)
        {
          v98 = v97;
          v99 = [NSString stringWithCString:v97 encoding:4];
          free(v98);
          v123 = v99;
          SSFileLog();
        }
      }

      ++v41;
    }

    while ([itemsCopy count] > v41);
  }

  v100 = v137;
  if ([v137 count])
  {
    v101 = 0;
    v102 = ML3TrackPropertyStoreFamilyAccountID;
    do
    {
      v103 = [v100 objectAtIndex:v101];
      v104 = [(IPodLibraryML3TrackImporter *)v138 objectAtIndex:v101];
      v105 = +[SSLogConfig sharedDaemonConfig];
      if (!v105)
      {
        v105 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v106) = [v105 shouldLog];
      if ([v105 shouldLogToDisk])
      {
        LODWORD(v106) = v106 | 2;
      }

      oSLogObject10 = [v105 OSLogObject];
      if (os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_INFO))
      {
        v106 = v106;
      }

      else
      {
        v106 &= 2u;
      }

      if (v106)
      {
        v108 = objc_opt_class();
        persistentID2 = [v104 persistentID];
        v149 = 138412546;
        v150 = v108;
        v151 = 2048;
        *v152 = persistentID2;
        LODWORD(v130) = 22;
        v110 = _os_log_send_and_compose_impl(v106, 0, 0, 0, &_mh_execute_header, oSLogObject10, 1, "%@: Setting location data for track: %lld", &v149, v130);
        if (v110)
        {
          v111 = v110;
          v112 = [NSString stringWithCString:v110 encoding:4];
          free(v111);
          v129 = v112;
          SSFileLog();
        }
      }

      itemArtworkData2 = [v103 itemArtworkData];
      if ([itemArtworkData2 length])
      {
        [v104 populateArtworkCacheWithArtworkData:itemArtworkData2];
      }

      protectionType = [v103 protectionType];
      v115 = protectionType;
      if (protectionType != 2 && protectionType != 1)
      {
        if (!protectionType && (v116 = [objc_msgSend(v103 "itemMetadata")], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(v116, "count"))
        {
          v117 = [[DownloadDRM alloc] initWithSinfArray:v116];
          v115 = ([(DownloadDRM *)v117 isDRMFree]^ 1);
        }

        else
        {
          v115 = 0;
        }
      }

      [v104 populateLocationPropertiesWithPath:objc_msgSend(v103 protectionType:{"itemMediaPath"), v115}];
      v118 = [objc_msgSend(v103 "itemMetadata")];
      if (v118)
      {
        v119 = v118;
      }

      else
      {
        v119 = &off_10034BEB0;
      }

      [v104 setValue:v119 forProperty:v102];
      [(IPodLibrary *)self _setDownloadPropertiesForTrack:v104 usingLibraryItem:0];
      ++v101;
      v100 = v137;
    }

    while (v101 < [v137 count]);
  }

  v120 = 1;
LABEL_159:

  if (error)
  {
    *error = 0;
  }

  return v120;
}

- (void)_commitScheduledLibraryItems
{
  if ([(NSMutableArray *)self->_scheduledItems count])
  {
    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      LODWORD(v5) = shouldLog | 2;
    }

    else
    {
      LODWORD(v5) = shouldLog;
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v5 = v5;
    }

    else
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v7 = objc_opt_class();
      v8 = [(NSMutableArray *)self->_scheduledItems count];
      v14 = 138412546;
      v15 = v7;
      v16 = 2048;
      v17 = v8;
      v9 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Adding %lu scheduled iPod library items", &v14, 22);
      if (v9)
      {
        v10 = v9;
        v11 = [NSString stringWithCString:v9 encoding:4];
        free(v10);
        v13 = v11;
        SSFileLog();
      }
    }

    [(IPodLibrary *)self addLibraryItems:self->_scheduledItems error:0, v13];
    [(NSMutableArray *)self->_scheduledItems removeAllObjects];
    [+[Daemon daemon](Daemon "daemon")];
  }

  scheduledItemTimer = self->_scheduledItemTimer;
  if (scheduledItemTimer)
  {
    dispatch_source_cancel(scheduledItemTimer);
    dispatch_release(self->_scheduledItemTimer);
    self->_scheduledItemTimer = 0;
  }
}

- (void)_dispatchAsync:(id)async
{
  [+[Daemon daemon](Daemon "daemon")];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014D88C;
  block[3] = &unk_100327FD8;
  block[4] = async;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)_removeDownloadWithIdentifier:(int64_t)identifier canceled:(BOOL)canceled inLibrary:(id)library
{
  canceledCopy = canceled;
  identifier = [[NSString alloc] initWithFormat:@"%lld", identifier];
  v8 = ML3TrackPropertyDownloadIdentifier;
  v9 = [ML3Track anyInLibrary:library predicate:[ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyDownloadIdentifier equalToValue:identifier]];
  if (!v9)
  {
LABEL_26:
    deleteFromLibrary = 1;
    goto LABEL_27;
  }

  v10 = v9;
  v36[0] = ML3TrackPropertyLocationFileName;
  v36[1] = ML3TrackPropertyStoreSagaID;
  v36[2] = ML3TrackPropertyPurchaseHistoryID;
  v36[3] = ML3TrackPropertyStoreIsSubscription;
  v36[4] = ML3TrackPropertyIsRental;
  [v9 getValues:&v31 forProperties:v36 count:5];
  v11 = v35;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v11 BOOLValue])
  {
    [v10 setValue:&__kCFBooleanFalse forProperty:ML3TrackPropertyIsOTAPurchased];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && [v31 length] || v32 && objc_msgSend(v32, "longLongValue") || v33 && objc_msgSend(v33, "longLongValue") || v34 && (objc_msgSend(v34, "BOOLValue"))
  {
    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      LODWORD(v14) = shouldLog | 2;
    }

    else
    {
      LODWORD(v14) = shouldLog;
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v14 = v14;
    }

    else
    {
      v14 &= 2u;
    }

    if (v14)
    {
      *v30 = 138412546;
      *&v30[4] = objc_opt_class();
      *&v30[12] = 2048;
      *&v30[14] = [v10 persistentID];
      v16 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Removing download properties from iPod library: %lld", v30, 22);
      if (v16)
      {
        v17 = v16;
        v18 = [NSString stringWithCString:v16 encoding:4];
        free(v17);
        v28 = v18;
        SSFileLog();
      }
    }

    *v30 = v8;
    *&v30[8] = ML3TrackPropertyNeedsRestore;
    v29 = unk_100329E68;
    [v10 setValues:&v29 forProperties:v30 count:{2, v28}];
    if (canceledCopy)
    {
      [v10 setValue:&off_10034BEC8 forProperty:ML3EntityPropertyKeepLocal];
    }

    goto LABEL_26;
  }

  v21 = +[SSLogConfig sharedDaemonConfig];
  if (!v21)
  {
    v21 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v21 shouldLog];
  if ([v21 shouldLogToDisk])
  {
    LODWORD(v23) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v23) = shouldLog2;
  }

  oSLogObject2 = [v21 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v23 = v23;
  }

  else
  {
    v23 &= 2u;
  }

  if (v23)
  {
    *v30 = 138412546;
    *&v30[4] = objc_opt_class();
    *&v30[12] = 2048;
    *&v30[14] = [v10 persistentID];
    v25 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Deleting download from iPod library: %lld", v30, 22);
    if (v25)
    {
      v26 = v25;
      v27 = [NSString stringWithCString:v25 encoding:4];
      free(v26);
      v28 = v27;
      SSFileLog();
    }
  }

  deleteFromLibrary = [v10 deleteFromLibrary];
LABEL_27:

  return deleteFromLibrary;
}

- (void)_setDownloadPropertiesForTrack:(id)track usingLibraryItem:(id)item
{
  v7[0] = [item itemDownloadIdentifier];
  v7[1] = &__kCFBooleanFalse;
  v6[0] = ML3TrackPropertyDownloadIdentifier;
  v6[1] = ML3TrackPropertyNeedsRestore;
  if (v7[0])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  [track setValues:v7 forProperties:v6 count:v5];
}

@end
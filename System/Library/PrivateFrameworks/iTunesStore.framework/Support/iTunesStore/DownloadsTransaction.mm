@interface DownloadsTransaction
- (BOOL)_moveDownloadWithID:(int64_t)d relativeToDownloadWithID:(int64_t)iD comparisonType:(int64_t)type;
- (BOOL)_resetDownload:(id)download withValues:(const void *)values isUserIntiated:(BOOL)intiated;
- (BOOL)deletePersistentDownloadManagerWithClientID:(id)d persistenceID:(id)iD;
- (BOOL)deletePersistentDownloadManagerWithID:(int64_t)d;
- (BOOL)finishDownloadWithID:(int64_t)d finalPhase:(id)phase updatePipeline:(BOOL)pipeline;
- (BOOL)finishDownloadsWithIdentifiers:(id)identifiers finalPhase:(id)phase;
- (BOOL)pauseDownloadsWithIdentifiers:(id)identifiers;
- (BOOL)prioritizeDownloadWithID:(int64_t)d aboveDownloadWithID:(int64_t)iD error:(id *)error;
- (BOOL)prioritizeDownloadsWithKind:(id)kind clientID:(id)d;
- (BOOL)resetDownloadsMatchingPredicate:(id)predicate isUserInitiated:(BOOL)initiated;
- (BOOL)resetDownloadsWithIdentifiers:(id)identifiers isUserInitiated:(BOOL)initiated;
- (BOOL)restartDownloadsWithIdentifiers:(id)identifiers;
- (BOOL)retryDownloadWithIdentifier:(int64_t)identifier;
- (BOOL)retryDownloadsWithIdentifiers:(id)identifiers;
- (BOOL)updateDownloadEntityWithIdentifier:(int64_t)identifier withDownload:(id)download;
- (double)_orderKeyAdjacentToOrderKey:(double)key comparisonType:(int64_t)type;
- (id)_addEffectiveClientWithBundleID:(id)d database:(id)database;
- (id)_copyEffectiveBundleIDForDownload:(id)download;
- (id)_newTransactionForDownload:(id)download inDatabase:(id)database;
- (id)addDownloads:(id)downloads;
- (id)changeset;
- (id)importDownloads:(id)downloads initialOrderKey:(double)key orderKeyIncrement:(double)increment;
- (id)insertDownloads:(id)downloads afterDownloadWithID:(int64_t)d;
- (id)insertDownloads:(id)downloads beforeDownloadWithID:(int64_t)d;
- (void)_setPolicy:(id)policy forDownloadWithID:(int64_t)d;
- (void)reconcileSoftwareDownloads:(id)downloads fromITunesStore:(BOOL)store;
- (void)setValue:(id)value forExternalProperty:(id)property ofDownloadID:(int64_t)d;
@end

@implementation DownloadsTransaction

- (id)changeset
{
  v2 = [(DownloadsChangeset *)self->super._changeset copy];

  return v2;
}

- (id)addDownloads:(id)downloads
{
  [+[DownloadEntity maxValueForProperty:predicate:database:](DownloadEntity maxValueForProperty:@"order_key" predicate:0 database:{-[DownloadsSession database](self, "database")), "doubleValue"}];
  v6 = v5;
  [objc_opt_class() orderKeyIncrement];
  v8 = [(DownloadsTransaction *)self importDownloads:downloads initialOrderKey:v6 orderKeyIncrement:v7];
  v9 = [v8 count];
  if (v9 == [downloads count])
  {
    [(DownloadsChangeset *)self->super._changeset addDownloadsToPipelineWithIDs:v8];
  }

  return v8;
}

- (BOOL)deletePersistentDownloadManagerWithClientID:(id)d persistenceID:(id)iD
{
  v5 = [PersistentDownloadManagerEntity anyInDatabase:[(DownloadsSession *)self database] predicate:[SSSQLiteCompoundPredicate predicateMatchingAllPredicates:[NSArray arrayWithObjects:[SSSQLiteComparisonPredicate predicateWithProperty:@"persistence_id" equalToValue:iD], [SSSQLiteComparisonPredicate predicateWithProperty:@"client_id" equalToValue:d], 0]]];
  if (v5)
  {
    persistentID = [v5 persistentID];

    LOBYTE(v5) = [(DownloadsTransaction *)self deletePersistentDownloadManagerWithID:persistentID];
  }

  return v5;
}

- (BOOL)deletePersistentDownloadManagerWithID:(int64_t)d
{
  database = [(DownloadsSession *)self database];
  v6 = objc_alloc_init(NSMutableArray);
  v25 = @"download_id";
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100091C80;
  v23[3] = &unk_100327288;
  v23[4] = v6;
  [+[PersistentDownloadEntity queryWithDatabase:predicate:](PersistentDownloadEntity queryWithDatabase:database predicate:{+[SSSQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SSSQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"manager_id", d)), "enumeratePersistentIDsAndProperties:count:usingBlock:", &v25, 1, v23}];
  v7 = [[PersistentDownloadManagerEntity alloc] initWithPersistentID:d inDatabase:database];
  deleteFromDatabase = [(PersistentDownloadManagerEntity *)v7 deleteFromDatabase];

  if (!deleteFromDatabase)
  {
LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  selfCopy = self;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
LABEL_4:
    v12 = 0;
    while (1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v19 + 1) + 8 * v12);
      if (![PersistentDownloadEntity anyInDatabase:database predicate:[SSSQLiteComparisonPredicate predicateWithProperty:@"download_id" equalToValue:v13]])
      {
        v14 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v13 longLongValue], database);
        deleteFromDatabase2 = [(DownloadEntity *)v14 deleteFromDatabase];

        if (!deleteFromDatabase2)
        {
          goto LABEL_12;
        }
      }

      if (v10 == ++v12)
      {
        v10 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v10)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  v16 = 1;
  [(DownloadsChangeset *)selfCopy->super._changeset addDownloadChangeTypes:1];
LABEL_13:

  return v16;
}

- (BOOL)finishDownloadWithID:(int64_t)d finalPhase:(id)phase updatePipeline:(BOOL)pipeline
{
  pipelineCopy = pipeline;
  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    LODWORD(v11) = shouldLog | 2;
  }

  else
  {
    LODWORD(v11) = shouldLog;
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v11 = v11;
  }

  else
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v18 = 138412802;
    v19 = objc_opt_class();
    v20 = 2048;
    dCopy = d;
    v22 = 2112;
    phaseCopy = phase;
    v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Finishing download: %lld with phase: %@", &v18, 32);
    if (v13)
    {
      v14 = v13;
      [NSString stringWithCString:v13 encoding:4];
      free(v14);
      SSFileLog();
    }
  }

  if (pipelineCopy)
  {
    v15 = [[NSOrderedSet alloc] initWithObjects:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", d), 0}];
    [(DownloadPipeline *)self->super.super._pipeline stopDownloadsWithIdentifiers:v15 reason:0];
  }

  v16 = [[DownloadEntity alloc] initWithPersistentID:d inDatabase:[(DownloadsSession *)self database]];
  [(DownloadsExternalTransaction *)self unionChangeset:[(DownloadEntity *)v16 finishWithFinalPhase:phase]];
  [(DownloadEntity *)v16 deleteScratchDirectory];
  if ([+[ApplicationWorkspace defaultWorkspace](ApplicationWorkspace "defaultWorkspace")] && objc_msgSend(+[ApplicationWorkspace defaultWorkspace](ApplicationWorkspace, "defaultWorkspace"), "shouldModifyQuota:", -[DownloadEntity valueForProperty:](v16, "valueForProperty:", @"kind")))
  {
    [+[ApplicationWorkspace defaultWorkspace](ApplicationWorkspace "defaultWorkspace")];
  }

  return 1;
}

- (BOOL)finishDownloadsWithIdentifiers:(id)identifiers finalPhase:(id)phase
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [identifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(identifiers);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        LODWORD(v11) = -[DownloadsTransaction finishDownloadWithID:finalPhase:updatePipeline:](self, "finishDownloadWithID:finalPhase:updatePipeline:", [v11 longLongValue], phase, 0);
        objc_autoreleasePoolPop(v12);
        if (!v11)
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v8 = [identifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:
  [(DownloadPipeline *)self->super.super._pipeline stopDownloadsWithIdentifiers:identifiers reason:0];
  return v13;
}

- (id)importDownloads:(id)downloads initialOrderKey:(double)key orderKeyIncrement:(double)increment
{
  v9 = +[NSMutableOrderedSet orderedSet];
  v83 = objc_alloc_init(NSMutableDictionary);
  database = [(DownloadsSession *)self database];
  orderingBucketSize = [objc_opt_class() orderingBucketSize];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = downloads;
  v81 = [downloads countByEnumeratingWithState:&v85 objects:v95 count:16];
  if (v81)
  {
    __upper_bound = orderingBucketSize >> 1;
    v79 = *v86;
    v78 = SSDownloadExternalPropertyPolicy;
    v82 = v9;
    v77 = database;
    do
    {
      v12 = 0;
      do
      {
        if (*v86 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v85 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        key = key + increment;
        [v13 setValue:+[NSNumber numberWithDouble:](NSNumber forProperty:{"numberWithDouble:", key), @"order_key"}];
        [v13 setValue:+[NSNumber numberWithInt:](NSNumber forProperty:{"numberWithInt:", arc4random_uniform(__upper_bound)), @"order_seed"}];
        externalPropertyValues = [v13 externalPropertyValues];
        if (![externalPropertyValues objectForKey:v78])
        {
          downloadPolicy = [v13 downloadPolicy];
          if (downloadPolicy)
          {
            [v13 setValue:+[NSNumber numberWithLongLong:](NSNumber forProperty:{"numberWithLongLong:", -[DownloadPolicyManager addDownloadPolicy:](-[DownloadsSession policyManager](self, "policyManager"), "addDownloadPolicy:", downloadPolicy)), @"policy_id"}];
          }
        }

        v17 = [(DownloadsTransaction *)self _copyEffectiveBundleIDForDownload:v13];
        if (v17)
        {
          v18 = v17;
          v19 = [v83 objectForKey:v17];
          if (v19 || (v19 = [(DownloadsTransaction *)self _addEffectiveClientWithBundleID:v18 database:database]) != 0)
          {
            v20 = v19;
            [v13 setValue:v19 forProperty:@"effective_client_id"];
            [v83 setObject:v20 forKey:v18];
          }
        }

        [v13 setValue:0 forProperty:@"application_id.bundle_id"];
        propertyValues = [v13 propertyValues];
        v22 = [[DownloadEntity alloc] initWithPropertyValues:propertyValues inDatabase:database];
        if (!v22)
        {
          v42 = +[SSLogConfig sharedDaemonConfig];
          if (!v42)
          {
            v42 = +[SSLogConfig sharedConfig];
          }

          shouldLog = [v42 shouldLog];
          if ([v42 shouldLogToDisk])
          {
            v44 = shouldLog | 2;
          }

          else
          {
            v44 = shouldLog;
          }

          oSLogObject = [v42 OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
          {
            v46 = v44;
          }

          else
          {
            v46 = v44 & 2;
          }

          if (v46)
          {
            v47 = objc_opt_class();
            databaseID = [v13 databaseID];
            v89 = 138543618;
            v90 = v47;
            v91 = 2048;
            v92 = databaseID;
            LODWORD(v75) = 22;
            v49 = _os_log_send_and_compose_impl(v46, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%{public}@: Entity creation failed for download %lld", &v89, v75);
            if (v49)
            {
              v50 = v49;
              v51 = [NSString stringWithCString:v49 encoding:4];
              free(v50);
              v74 = v51;
              SSFileLog();
            }
          }

          goto LABEL_68;
        }

        v23 = v22;
        v24 = [(DownloadsTransaction *)self _newTransactionForDownload:v22 inDatabase:database];
        -[DownloadEntity setValue:forProperty:](v23, "setValue:forProperty:", +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v24 persistentID]), @"transaction_id");
        if (externalPropertyValues)
        {
          [(DownloadsExternalTransaction *)self setExternalPropertyValues:externalPropertyValues forDownloadWithID:[(DownloadEntity *)v23 persistentID]];
        }

        v25 = [(DownloadEntity *)v23 setAssetsUsingDownload:v13];
        if (!v25)
        {
          v52 = +[SSLogConfig sharedDaemonConfig];
          if (!v52)
          {
            v52 = +[SSLogConfig sharedConfig];
          }

          shouldLog2 = [v52 shouldLog];
          if ([v52 shouldLogToDisk])
          {
            v54 = shouldLog2 | 2;
          }

          else
          {
            v54 = shouldLog2;
          }

          oSLogObject2 = [v52 OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
          {
            v56 = v54;
          }

          else
          {
            v56 = v54 & 2;
          }

          if (v56)
          {
            v57 = objc_opt_class();
            persistentID = [(DownloadEntity *)v23 persistentID];
            v89 = 138543618;
            v90 = v57;
            v91 = 2048;
            v92 = persistentID;
            LODWORD(v75) = 22;
            v59 = _os_log_send_and_compose_impl(v56, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "%{public}@: Setting assets failed for download %lld", &v89, v75);
            if (v59)
            {
              v60 = v59;
              v61 = [NSString stringWithCString:v59 encoding:4];
              free(v60);
              v74 = v61;
              SSFileLog();
            }
          }

LABEL_68:
          objc_autoreleasePoolPop(v14);
          v9 = v82;
          goto LABEL_69;
        }

        v26 = v25;
        context = v14;
        persistentID2 = [(DownloadEntity *)v23 persistentID];
        [v82 addObject:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", persistentID2)}];
        v28 = [propertyValues objectForKey:@"kind"];
        if (v28)
        {
          v29 = v28;
          if (SSDownloadKindIsMediaKind())
          {
            copyDownloadingIPodLibraryItem = [(DownloadEntity *)v23 copyDownloadingIPodLibraryItem];
            if (copyDownloadingIPodLibraryItem)
            {
              v31 = copyDownloadingIPodLibraryItem;
              [(DownloadsChangeset *)self->super._changeset addIPodLibraryItem:copyDownloadingIPodLibraryItem];
              goto LABEL_22;
            }
          }

          else if (SSDownloadKindIsSoftwareKind())
          {
            if (SSDebugShouldUseAppstored())
            {
              v32 = +[SSLogConfig sharedDaemonConfig];
              if (!v32)
              {
                v32 = +[SSLogConfig sharedConfig];
              }

              v33 = v32;
              LODWORD(v34) = [v32 shouldLog];
              if ([v33 shouldLogToDisk])
              {
                LODWORD(v34) = v34 | 2;
              }

              oSLogObject3 = [v33 OSLogObject];
              if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
              {
                v34 = v34;
              }

              else
              {
                v34 &= 2u;
              }

              if (v34)
              {
                v36 = objc_opt_class();
                v89 = 138412290;
                v90 = v36;
                LODWORD(v75) = 12;
                v37 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &_mh_execute_header, oSLogObject3, 2, "[%@]: Not installing placeholder because appstored will handle it", &v89, v75);
                if (v37)
                {
                  v38 = v37;
                  v39 = [NSString stringWithCString:v37 encoding:4];
                  free(v38);
                  SSFileLog();
                  [(DownloadsChangeset *)self->super._changeset addDownloadKind:v29, v39];
                  goto LABEL_37;
                }
              }
            }

            else if ([objc_msgSend(propertyValues objectForKey:{@"is_automatic", "integerValue"}] != 2)
            {
              v40 = [propertyValues objectForKey:@"bundle_id"];
              v31 = -[ApplicationHandle initWithTransactionIdentifier:downloadIdentifier:bundleIdentifier:]([ApplicationHandle alloc], "initWithTransactionIdentifier:downloadIdentifier:bundleIdentifier:", [v24 persistentID], persistentID2, v40);
              [(DownloadsChangeset *)self->super._changeset addAppPlaceholderWithHandle:v31];
              if ([v40 length])
              {
                [ApplicationWorkspaceState incompleteNotificationForInstallingDownload:persistentID2 bundleIdentifier:v40];
              }

LABEL_22:
            }
          }

          [(DownloadsChangeset *)self->super._changeset addDownloadKind:v29, v74];
        }

LABEL_37:
        if ([objc_msgSend(propertyValues objectForKey:{@"is_restore", "BOOLValue"}])
        {
          [(DownloadsChangeset *)self->super._changeset addDownloadChangeTypes:32];
          [(DownloadsChangeset *)self->super._changeset addRestorableDownloadID:persistentID2];
        }

        [(DownloadsChangeset *)self->super._changeset unionChangeset:v26];

        objc_autoreleasePoolPop(context);
        v12 = v12 + 1;
        database = v77;
      }

      while (v81 != v12);
      v41 = [obj countByEnumeratingWithState:&v85 objects:v95 count:16];
      v9 = v82;
      v81 = v41;
    }

    while (v41);
  }

LABEL_69:

  v62 = [v9 count];
  v63 = [obj count];
  [(DownloadsChangeset *)self->super._changeset addDownloadChangeTypes:1];
  if (v62 != v63)
  {
    v64 = +[SSLogConfig sharedDaemonConfig];
    if (!v64)
    {
      v64 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v64 shouldLog];
    if ([v64 shouldLogToDisk])
    {
      LODWORD(v66) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v66) = shouldLog3;
    }

    oSLogObject4 = [v64 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      v66 = v66;
    }

    else
    {
      v66 &= 2u;
    }

    if (v66)
    {
      v68 = objc_opt_class();
      v69 = [obj count];
      v70 = [v9 count];
      v89 = 138543874;
      v90 = v68;
      v91 = 2048;
      v92 = v69;
      v93 = 2048;
      v94 = v70;
      LODWORD(v75) = 32;
      v71 = _os_log_send_and_compose_impl(v66, 0, 0, 0, &_mh_execute_header, oSLogObject4, 16, "%{public}@: Download import failed (expected %lu, imported %lu)", &v89, v75);
      if (v71)
      {
        v72 = v71;
        [NSString stringWithCString:v71 encoding:4];
        free(v72);
        SSFileLog();
      }
    }

    return 0;
  }

  return v9;
}

- (id)insertDownloads:(id)downloads afterDownloadWithID:(int64_t)d
{
  v6 = [[DownloadEntity alloc] initWithPersistentID:d inDatabase:[(DownloadsSession *)self database]];
  v7 = [(DownloadEntity *)v6 valueForProperty:@"order_key"];
  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
    [(DownloadsTransaction *)self _orderKeyAdjacentToOrderKey:5 comparisonType:?];
    v11 = -[DownloadsTransaction importDownloads:initialOrderKey:orderKeyIncrement:](self, "importDownloads:initialOrderKey:orderKeyIncrement:", downloads, v9, vabdd_f64(v10, v9) / ([downloads count] + 1));
  }

  else
  {
    v11 = [(DownloadsTransaction *)self addDownloads:downloads];
  }

  v12 = v11;
  v13 = [v11 count];
  if (v13 == [downloads count])
  {
    [(DownloadsChangeset *)self->super._changeset addDownloadsToPipelineWithIDs:v12];
  }

  return v12;
}

- (id)insertDownloads:(id)downloads beforeDownloadWithID:(int64_t)d
{
  v6 = [[DownloadEntity alloc] initWithPersistentID:d inDatabase:[(DownloadsSession *)self database]];
  v7 = [(DownloadEntity *)v6 valueForProperty:@"order_key"];
  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
    [(DownloadsTransaction *)self _orderKeyAdjacentToOrderKey:3 comparisonType:?];
    v11 = -[DownloadsTransaction importDownloads:initialOrderKey:orderKeyIncrement:](self, "importDownloads:initialOrderKey:orderKeyIncrement:", downloads, v10, vabdd_f64(v10, v9) / ([downloads count] + 1));
  }

  else
  {
    v11 = [(DownloadsTransaction *)self addDownloads:downloads];
  }

  v12 = v11;
  v13 = [v11 count];
  if (v13 == [downloads count])
  {
    [(DownloadsChangeset *)self->super._changeset addDownloadsToPipelineWithIDs:v12];
  }

  return v12;
}

- (BOOL)pauseDownloadsWithIdentifiers:(id)identifiers
{
  database = [(DownloadsSession *)self database];
  obj = identifiers;
  v18 = [identifiers count];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [identifiers countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v8 = SSDownloadPhasePaused;
    v16 = SSDownloadPropertyDownloadPhase;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v10 longLongValue], database);
        downloadKind = [(DownloadEntity *)v12 downloadKind];
        [(DownloadEntity *)v12 setValue:v8 forProperty:@"download_state.phase"];
        [(DownloadsChangeset *)self->super._changeset addDownloadChangeTypes:2];
        [(DownloadsChangeset *)self->super._changeset addDownloadKind:downloadKind];
        [(DownloadsChangeset *)self->super._changeset addStatusChangedDownloadID:[(DownloadEntity *)v12 persistentID]];
        if (v18 == 1)
        {
          v14 = [[NSDictionary alloc] initWithObjectsAndKeys:{v8, v16, 0}];
          [(DownloadsChangeset *)self->super._changeset setChangedDownloadProperties:v14];
        }

        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  [(DownloadPipeline *)self->super.super._pipeline stopDownloadsWithIdentifiers:obj reason:1];
  return 1;
}

- (BOOL)prioritizeDownloadWithID:(int64_t)d aboveDownloadWithID:(int64_t)iD error:(id *)error
{
  v9 = [[DownloadEntity alloc] initWithPersistentID:d inDatabase:[(DownloadsSession *)self database]];
  if (([(DownloadEntity *)v9 existsInDatabase]& 1) != 0 && ([(DownloadEntity *)v9 valueForProperty:@"IFNULL(download_state.phase, SSDownloadPhaseWaiting)"], !SSDownloadPhaseIsFinishedPhase()))
  {
    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      LODWORD(v15) = shouldLog | 2;
    }

    else
    {
      LODWORD(v15) = shouldLog;
    }

    oSLogObject = [v13 OSLogObject];
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
      v21 = 138412546;
      v22 = objc_opt_class();
      v23 = 2048;
      dCopy = d;
      v17 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Prioritizing download: %lld", &v21, 22);
      if (v17)
      {
        v18 = v17;
        v19 = [NSString stringWithCString:v17 encoding:4];
        free(v18);
        v20 = v19;
        SSFileLog();
      }
    }

    [(DownloadEntity *)v9 setValue:&off_10034BC40 forProperty:@"priority", v20];
    if (!iD)
    {
      v11 = 1;
      [(DownloadsChangeset *)self->super._changeset addDownloadChangeTypes:1];
      [(DownloadsChangeset *)self->super._changeset addDownloadKind:[(DownloadEntity *)v9 downloadKind]];
      [(DownloadPipeline *)self->super.super._pipeline prioritizeDownloadWithIdentifier:[NSNumber numberWithLongLong:d]];
      goto LABEL_6;
    }

    v11 = [(DownloadsTransaction *)self moveDownloadWithID:d beforeDownloadWithID:iD];
    v10 = 0;
    if (!error)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = SSError();
    v11 = 0;
    if (!error)
    {
      goto LABEL_6;
    }
  }

  if (!v11)
  {
    v11 = 0;
    *error = v10;
  }

LABEL_6:

  return v11;
}

- (BOOL)prioritizeDownloadsWithKind:(id)kind clientID:(id)d
{
  database = [(DownloadsSession *)self database];
  v8 = [SSSQLiteComparisonPredicate predicateWithProperty:@"kind" equalToValue:kind];
  v9 = [DownloadEntity minValueForProperty:@"order_key" predicate:[SSSQLiteCompoundPredicate predicateMatchingAllPredicates:[NSArray arrayWithObjects:v8 database:[SSSQLiteComparisonPredicate predicateWithProperty:@"client_id" value:d comparisonType:2], 0]], database];
  if (v9)
  {
    kindCopy = kind;
    v10 = v9;
    v11 = objc_alloc_init(NSMutableArray);
    v39 = v10;
    [v10 doubleValue];
    selfCopy = self;
    [(DownloadsTransaction *)self _orderKeyAdjacentToOrderKey:3 comparisonType:?];
    v13 = v12;
    v14 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:[NSArray arrayWithObjects:v8, [SSSQLiteComparisonPredicate predicateWithProperty:@"client_id" equalToValue:d], 0]];
    v15 = objc_alloc_init(SSSQLiteQueryDescriptor);
    [v15 setEntityClass:objc_opt_class()];
    [v15 setOrderingDirections:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", SSSQLiteOrderDescending, SSSQLiteOrderAscending, 0)}];
    [v15 setOrderingProperties:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", @"priority", @"order_key", 0)}];
    [v15 setPredicate:v14];
    v16 = [[SSSQLiteQuery alloc] initWithDatabase:database descriptor:v15];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10009364C;
    v46[3] = &unk_1003272B0;
    v46[4] = v11;
    [v16 enumeratePersistentIDsUsingBlock:v46];

    if ([v11 count])
    {
      dCopy = d;
      v18 = +[SSLogConfig sharedDaemonConfig];
      if (!v18)
      {
        v18 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        v20 = shouldLog | 2;
      }

      else
      {
        v20 = shouldLog;
      }

      oSLogObject = [v18 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        v22 = v20;
      }

      else
      {
        v22 = v20 & 2;
      }

      if (v22)
      {
        v23 = objc_opt_class();
        v48 = 138412802;
        v49 = v23;
        v50 = 2112;
        v51 = kindCopy;
        v52 = 2112;
        v53 = dCopy;
        LODWORD(v38) = 32;
        v24 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Prioritizing downloads of kind: %@ for client: %@", &v48, v38);
        if (v24)
        {
          v25 = v24;
          v26 = [NSString stringWithCString:v24 encoding:4];
          free(v25);
          v37 = v26;
          SSFileLog();
        }
      }

      [v39 doubleValue];
      v28 = v27;
      v29 = [v11 count];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v30 = [v11 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = (v28 - v13) / (v29 + 1);
        v33 = *v43;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v43 != v33)
            {
              objc_enumerationMutation(v11);
            }

            v13 = v32 + v13;
            v35 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [*(*(&v42 + 1) + 8 * i) longLongValue], database);
            [(DownloadEntity *)v35 setValue:[NSNumber forProperty:"numberWithDouble:" numberWithDouble:v13], @"order_key"];
          }

          v31 = [v11 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v31);
      }

      [(DownloadsChangeset *)selfCopy->super._changeset addDownloadChangeTypes:1];
      [(DownloadsChangeset *)selfCopy->super._changeset addDownloadKind:kindCopy];
    }
  }

  return 1;
}

- (void)reconcileSoftwareDownloads:(id)downloads fromITunesStore:(BOOL)store
{
  if (store)
  {
    v6 = [SSSQLiteCompoundPredicate predicateMatchingAnyPredicates:[NSArray arrayWithObjects:[SSSQLiteComparisonPredicate predicateWithProperty:@"is_from_store" equalToLongLong:0], [SSSQLiteComparisonPredicate predicateWithProperty:@"is_restore" equalToLongLong:1], 0]];
  }

  else
  {
    v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_from_store" equalToLongLong:1];
  }

  v7 = v6;
  v8 = [SSSQLiteComparisonPredicate predicateWithProperty:@"kind" equalToValue:SSDownloadKindSoftwareApplication];
  v9 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_purchase" equalToLongLong:0];
  v10 = SSDownloadPhaseCanceled;
  v45[0] = SSDownloadPhaseCanceled;
  v45[1] = SSDownloadPhaseFinished;
  v11 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:[NSArray arrayWithObjects:v8, v7, v9, [SSSQLiteContainsPredicate doesNotContainPredicateWithProperty:@"IFNULL(download_state.phase values:SSDownloadPhaseWaiting)", [NSArray arrayWithObjects:v45 count:2]], 0]];
  v12 = objc_alloc_init(NSMutableOrderedSet);
  v13 = +[SSLogConfig sharedDaemonConfig];
  if (!v13)
  {
    v13 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    LODWORD(v15) = shouldLog | 2;
  }

  else
  {
    LODWORD(v15) = shouldLog;
  }

  oSLogObject = [v13 OSLogObject];
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
    v41 = 138412546;
    v42 = objc_opt_class();
    v43 = 2048;
    v44 = [downloads count];
    LODWORD(v38) = 22;
    v17 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Reconciling %lu software downloads", &v41, v38);
    if (v17)
    {
      v18 = v17;
      v19 = [NSString stringWithCString:v17 encoding:4];
      free(v18);
      v36 = v19;
      SSFileLog();
    }
  }

  v39[5] = v12;
  v40 = @"bundle_id";
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100093C24;
  v39[3] = &unk_1003272D8;
  v39[4] = downloads;
  [+[DownloadEntity queryWithDatabase:predicate:](DownloadEntity queryWithDatabase:-[DownloadsSession database](self predicate:{"database", v36), v11), "enumeratePersistentIDsAndProperties:count:usingBlock:", &v40, 1, v39}];
  if ([v12 count])
  {
    v20 = +[SSLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      LODWORD(v22) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v22) = shouldLog2;
    }

    oSLogObject2 = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v22;
    }

    else
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v24 = objc_opt_class();
      v25 = [v12 count];
      v41 = 138412546;
      v42 = v24;
      v43 = 2048;
      v44 = v25;
      LODWORD(v38) = 22;
      v26 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Cancel %lu downloads during software reconciliation", &v41, v38);
      if (v26)
      {
        v27 = v26;
        v28 = [NSString stringWithCString:v26 encoding:4];
        free(v27);
        v37 = v28;
        SSFileLog();
      }
    }

    [(DownloadsTransaction *)self finishDownloadsWithIdentifiers:v12 finalPhase:v10, v37];
    v29 = +[SSLogConfig sharedDaemonConfig];
    if (!v29)
    {
      v29 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v29 shouldLog];
    if ([v29 shouldLogToDisk])
    {
      LODWORD(v31) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v31) = shouldLog3;
    }

    oSLogObject3 = [v29 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      v31 = v31;
    }

    else
    {
      v31 &= 2u;
    }

    if (v31)
    {
      v33 = objc_opt_class();
      v41 = 138412546;
      v42 = v33;
      v43 = 2112;
      v44 = v12;
      LODWORD(v38) = 22;
      v34 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, oSLogObject3, 2, "%@: Finished reconciling downloads with IDs: %@", &v41, v38);
      if (v34)
      {
        v35 = v34;
        [NSString stringWithCString:v34 encoding:4];
        free(v35);
        SSFileLog();
      }
    }
  }
}

- (BOOL)resetDownloadsMatchingPredicate:(id)predicate isUserInitiated:(BOOL)initiated
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v7 = objc_alloc_init(NSMutableOrderedSet);
  v20[0] = @"is_automatic";
  v20[1] = @"download_state.blocked_reason";
  v20[2] = @"is_private";
  v20[3] = @"kind";
  v20[4] = @"download_state.phase";
  v20[5] = @"download_state.restore_state";
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100093E9C;
  v10[3] = &unk_100327300;
  database = [(DownloadsSession *)self database];
  selfCopy = self;
  initiatedCopy = initiated;
  v13 = v7;
  v14 = &v16;
  [+[DownloadEntity queryWithDatabase:predicate:](DownloadEntity queryWithDatabase:database predicate:{predicate), "enumeratePersistentIDsAndProperties:count:usingBlock:", v20, 6, v10}];
  if (*(v17 + 24) == 1 && [v7 count])
  {
    [(DownloadsChangeset *)self->super._changeset addDownloadsToPipelineWithIDs:v7];
  }

  v8 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return v8;
}

- (BOOL)resetDownloadsWithIdentifiers:(id)identifiers isUserInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  v15 = objc_alloc_init(NSMutableOrderedSet);
  v22[0] = @"is_automatic";
  v22[1] = @"download_state.blocked_reason";
  v22[2] = @"is_private";
  v22[3] = @"kind";
  v22[4] = @"download_state.phase";
  v22[5] = @"download_state.restore_state";
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [identifiers countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(identifiers);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v11 longLongValue], -[DownloadsSession database](self, "database"));
        [(DownloadEntity *)v12 getValues:v20 forProperties:v22 count:6];
        if ([(DownloadsTransaction *)self _resetDownload:v12 withValues:v20 isUserIntiated:initiatedCopy])
        {
          [v15 addObject:v11];
        }
      }

      v8 = [identifiers countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  v13 = [v15 count];
  if (v13)
  {
    [(DownloadsChangeset *)self->super._changeset addDownloadsToPipelineWithIDs:v15];
  }

  return v13 != 0;
}

- (BOOL)restartDownloadsWithIdentifiers:(id)identifiers
{
  database = [(DownloadsSession *)self database];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = identifiers;
  v6 = [identifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v10 longLongValue], database);
        [(DownloadsChangeset *)self->super._changeset addDownloadKind:[(DownloadEntity *)v12 downloadKind]];
        [(DownloadsChangeset *)self->super._changeset addStatusChangedDownloadID:[(DownloadEntity *)v12 persistentID]];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(DownloadsChangeset *)self->super._changeset restartDownloadsInPipelineWithIDs:obj];
  [(DownloadsChangeset *)self->super._changeset addDownloadChangeTypes:2];
  return 1;
}

- (BOOL)retryDownloadWithIdentifier:(int64_t)identifier
{
  v4 = [[NSOrderedSet alloc] initWithObjects:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", identifier), 0}];
  LOBYTE(self) = [(DownloadsTransaction *)self retryDownloadsWithIdentifiers:v4];

  return self;
}

- (BOOL)retryDownloadsWithIdentifiers:(id)identifiers
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [identifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(identifiers);
        }

        v9 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [*(*(&v11 + 1) + 8 * v8) longLongValue], -[DownloadsSession database](self, "database"));
        [(DownloadsExternalTransaction *)self unionChangeset:[(DownloadEntity *)v9 retryDownload]];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [identifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return 1;
}

- (BOOL)updateDownloadEntityWithIdentifier:(int64_t)identifier withDownload:(id)download
{
  v7 = [[DownloadEntity alloc] initWithPersistentID:identifier inDatabase:[(DownloadsSession *)self database]];
  externalPropertyValues = [download externalPropertyValues];
  if (![externalPropertyValues objectForKey:SSDownloadExternalPropertyPolicy])
  {
    downloadPolicy = [download downloadPolicy];
    if (downloadPolicy)
    {
      [download setValue:+[NSNumber numberWithLongLong:](NSNumber forProperty:{"numberWithLongLong:", -[DownloadPolicyManager addDownloadPolicy:](-[DownloadsSession policyManager](self, "policyManager"), "addDownloadPolicy:", downloadPolicy)), @"policy_id"}];
    }
  }

  if (externalPropertyValues)
  {
    [(DownloadsExternalTransaction *)self setExternalPropertyValues:externalPropertyValues forDownloadWithID:identifier];
  }

  -[DownloadEntity setValuesWithDictionary:](v7, "setValuesWithDictionary:", [download propertyValues]);
  v10 = [(DownloadEntity *)v7 setAssetsUsingDownload:download];
  if (v10)
  {
    v11 = [download valueForProperty:@"kind"];
    if (SSDownloadKindIsMediaKind())
    {
      copyDownloadingIPodLibraryItem = [(DownloadEntity *)v7 copyDownloadingIPodLibraryItem];
      if (copyDownloadingIPodLibraryItem)
      {
        v13 = copyDownloadingIPodLibraryItem;
        [(DownloadsChangeset *)self->super._changeset addIPodLibraryItem:copyDownloadingIPodLibraryItem];
      }
    }

    [(DownloadsChangeset *)self->super._changeset addDownloadChangeTypes:16];
    [(DownloadsChangeset *)self->super._changeset addDownloadKind:v11];
    [(DownloadsChangeset *)self->super._changeset addDownloadToPipelineWithID:identifier];
    [(DownloadsChangeset *)self->super._changeset addUpdatedDownloadID:identifier];
    [(DownloadsChangeset *)self->super._changeset unionChangeset:v10];
  }

  return v10 != 0;
}

- (void)setValue:(id)value forExternalProperty:(id)property ofDownloadID:(int64_t)d
{
  if ([property isEqualToString:SSDownloadExternalPropertyPolicy])
  {

    [(DownloadsTransaction *)self _setPolicy:value forDownloadWithID:d];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = DownloadsTransaction;
    [(DownloadsExternalTransaction *)&v9 setValue:value forExternalProperty:property ofDownloadID:d];
  }
}

- (id)_addEffectiveClientWithBundleID:(id)d database:(id)database
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = sub_100094970;
  v21 = sub_100094980;
  v22 = 0;
  v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:d];
  v23 = @"effective_client_id";
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009498C;
  v16[3] = &unk_100327328;
  v16[4] = &v17;
  [+[DownloadApplicationIdentifierEntity queryWithDatabase:predicate:](DownloadApplicationIdentifierEntity queryWithDatabase:database predicate:{v6), "enumeratePersistentIDsAndProperties:count:usingBlock:", &v23, 1, v16}];
  v7 = v18[5];
  if (!v7)
  {
    v8 = [DownloadApplicationIdentifierEntity maxValueForProperty:@"effective_client_id" predicate:0 database:database];
    v9 = [NSNumber alloc];
    if ([v8 longLongValue] >= 999)
    {
      v10 = [v8 longLongValue] + 1;
    }

    else
    {
      v10 = 1000;
    }

    v11 = [v9 initWithLongLong:v10];
    v18[5] = v11;
    v12 = [NSDictionary alloc];
    v13 = [v12 initWithObjectsAndKeys:{v18[5], @"effective_client_id", d, @"bundle_id", 0}];

    v7 = v18[5];
  }

  v14 = v7;
  _Block_object_dispose(&v17, 8);
  return v14;
}

- (id)_copyEffectiveBundleIDForDownload:(id)download
{
  v4 = [download valueForProperty:@"override_audit_token_data"];
  if (v4)
  {
    v5 = v4;
    if ([v4 length] == 32)
    {
      [v5 getBytes:&v8 length:32];
      return CPCopyBundleIdentifierFromAuditToken();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = [download valueForProperty:@"application_id.bundle_id"];
    if (!result)
    {
      v7 = [download valueForProperty:@"client_id"];

      return v7;
    }
  }

  return result;
}

- (BOOL)_moveDownloadWithID:(int64_t)d relativeToDownloadWithID:(int64_t)iD comparisonType:(int64_t)type
{
  v8 = [[DownloadEntity alloc] initWithPersistentID:d inDatabase:[(DownloadsSession *)self database]];
  downloadKind = [(DownloadEntity *)v8 downloadKind];
  if (downloadKind)
  {
    v10 = downloadKind;
    v11 = [[DownloadEntity alloc] initWithPersistentID:iD inDatabase:[(DownloadsSession *)self database]];
    v12 = [(DownloadEntity *)v11 valueForProperty:@"order_key"];
    v13 = v12 != 0;
    if (v12)
    {
      [v12 doubleValue];
      v15 = v14;
      [(DownloadsTransaction *)self _orderKeyAdjacentToOrderKey:type comparisonType:?];
      if (type == 3)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }

      [(DownloadEntity *)v8 setValue:[NSNumber forProperty:"numberWithDouble:" numberWithDouble:v16) * 0.5], @"order_key"];
      [(DownloadsChangeset *)self->super._changeset addDownloadChangeTypes:1];
      [(DownloadsChangeset *)self->super._changeset addDownloadKind:v10];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_newTransactionForDownload:(id)download inDatabase:(id)database
{
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [download valueForProperty:@"kind"];
  if ([v7 isEqualToString:SSDownloadKindSoftwareApplication])
  {
    if ([objc_msgSend(download valueForProperty:{@"is_automatic", "integerValue"}] == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  [v6 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", v8), @"type"}];
  v9 = [download valueForProperty:@"bundle_id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setObject:v9 forKey:@"bundle_id"];
  }

  v10 = [[TransactionEntity alloc] initWithPropertyValues:v6 inDatabase:database];

  return v10;
}

- (double)_orderKeyAdjacentToOrderKey:(double)key comparisonType:(int64_t)type
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = sub_100094970;
  v19 = sub_100094980;
  v20 = 0;
  v7 = objc_alloc_init(SSSQLiteQueryDescriptor);
  [v7 setEntityClass:objc_opt_class()];
  [v7 setLimitCount:1];
  if (type == 3)
  {
    [v7 setOrderingDirections:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", SSSQLiteOrderDescending)}];
  }

  [v7 setOrderingProperties:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", @"order_key"}];
  [v7 setPredicate:{+[SSSQLiteComparisonPredicate predicateWithProperty:value:comparisonType:](SSSQLiteComparisonPredicate, "predicateWithProperty:value:comparisonType:", @"order_key", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", key), type)}];
  v8 = [[SSSQLiteQuery alloc] initWithDatabase:-[DownloadsSession database](self descriptor:{"database"), v7}];
  v21 = @"order_key";
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100094F88;
  v14[3] = &unk_100327328;
  v14[4] = &v15;
  [v8 enumeratePersistentIDsAndProperties:&v21 count:1 usingBlock:v14];

  v9 = v16[5];
  if (v9)
  {
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    [objc_opt_class() orderKeyIncrement];
    if (type == 5)
    {
      v11 = v12 + key;
    }

    else
    {
      v11 = key - v12;
    }
  }

  _Block_object_dispose(&v15, 8);
  return v11;
}

- (BOOL)_resetDownload:(id)download withValues:(const void *)values isUserIntiated:(BOOL)intiated
{
  intiatedCopy = intiated;
  integerValue = [*values integerValue];
  v10 = ([values[4] isEqualToString:SSDownloadPhaseFailed] & 1) != 0 || (objc_msgSend(values[4], "isEqualToString:", SSDownloadPhasePaused) & 1) != 0 || objc_msgSend(values[1], "integerValue") != 0;
  bOOLValue = [values[2] BOOLValue];
  if (integerValue)
  {
    v12 = bOOLValue;
  }

  else
  {
    v12 = 0;
  }

  if (!v10 && !v12)
  {
    return 0;
  }

  v14 = objc_alloc_init(NSMutableDictionary);
  [v14 setObject:SSDownloadPhaseWaiting forKey:@"download_state.phase"];
  [v14 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", 0), @"download_state.restore_state"}];
  [v14 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", 0), @"download_state.blocked_reason"}];
  [v14 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", 0), @"store_preorder_id"}];
  [v14 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", 0), @"download_state.store_queue_refresh_count"}];
  persistentID = [download persistentID];
  v16 = integerValue == 0 || v10;
  v17 = +[SSLogConfig sharedDaemonConfig];
  v18 = v17;
  if (v16 || !intiatedCopy)
  {
    if (!v17)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      LODWORD(v29) = shouldLog | 2;
    }

    else
    {
      LODWORD(v29) = shouldLog;
    }

    oSLogObject = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v29 = v29;
    }

    else
    {
      v29 &= 2u;
    }

    if (v29)
    {
      v36 = 138412546;
      v37 = objc_opt_class();
      v38 = 2048;
      v39 = persistentID;
      v31 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Reset download: %lld", &v36, 22);
      if (v31)
      {
        v32 = v31;
        v33 = [NSString stringWithCString:v31 encoding:4];
        free(v32);
        v35 = v33;
        SSFileLog();
      }
    }

    v27 = 18;
  }

  else
  {
    if (!v17)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      LODWORD(v20) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v20) = shouldLog2;
    }

    oSLogObject2 = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v20 = v20;
    }

    else
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v36 = 138412546;
      v37 = objc_opt_class();
      v38 = 2048;
      v39 = persistentID;
      v22 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Reset automatic download: %lld", &v36, 22);
      if (v22)
      {
        v23 = v22;
        v24 = [NSString stringWithCString:v22 encoding:4];
        free(v23);
        v35 = v24;
        SSFileLog();
      }
    }

    [v14 setObject:&off_10034BC58 forKey:{@"is_automatic", v35}];
    [v14 setObject:&__kCFBooleanFalse forKey:@"is_private"];
    [v14 setObject:&off_10034BC70 forKey:@"priority"];
    v25 = [SSDownloadPolicy alloc];
    v26 = [v25 initWithDownloadKind:SSDownloadKindSoftwareApplication URLBagType:0];
    [v14 setObject:+[NSNumber numberWithLongLong:](NSNumber forKey:{"numberWithLongLong:", -[DownloadPolicyManager addDownloadPolicy:](-[DownloadsSession policyManager](self, "policyManager"), "addDownloadPolicy:", v26)), @"policy_id"}];

    [(DownloadsChangeset *)self->super._changeset addPolicyChangedDownloadID:persistentID];
    v27 = 19;
  }

  if ([values[5] integerValue])
  {
    v27 |= 0x20uLL;
    [(DownloadsChangeset *)self->super._changeset addRestorableDownloadID:persistentID];
  }

  [(DownloadsChangeset *)self->super._changeset addDownloadChangeTypes:v27];
  [(DownloadsChangeset *)self->super._changeset addDownloadKind:values[3]];
  [(DownloadsChangeset *)self->super._changeset addStatusChangedDownloadID:persistentID];
  [(DownloadsChangeset *)self->super._changeset addUpdatedDownloadID:persistentID];
  v13 = [download setValuesWithDictionary:v14];

  return v13;
}

- (void)_setPolicy:(id)policy forDownloadWithID:(int64_t)d
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    objc_opt_class();
    ObjectWithArchivedData = SSCodingCreateObjectWithArchivedData();
    if (!ObjectWithArchivedData)
    {
      return;
    }

    v8 = ObjectWithArchivedData;
    v6 = [(DownloadPolicyManager *)[(DownloadsSession *)self policyManager] addDownloadPolicy:ObjectWithArchivedData];

    if (v6 == -1)
    {
      return;
    }
  }

  v9 = [[DownloadEntity alloc] initWithPersistentID:d inDatabase:[(DownloadsSession *)self database]];
  [(DownloadEntity *)v9 setValue:[NSNumber forProperty:"numberWithLongLong:" numberWithLongLong:v6], @"policy_id"];
  [(DownloadsChangeset *)self->super._changeset addDownloadChangeTypes:17];
  [(DownloadsChangeset *)self->super._changeset addPolicyChangedDownloadID:d];
  [(DownloadsChangeset *)self->super._changeset addUpdatedDownloadID:d];
}

@end
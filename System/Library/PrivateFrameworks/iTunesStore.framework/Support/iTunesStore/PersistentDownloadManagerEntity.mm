@interface PersistentDownloadManagerEntity
+ (void)initialize;
- (id)finishPersistentDownloadsWithDownloadIDs:(id)ds;
- (void)performNewsstandMigration1InDatabase:(id)database;
@end

@implementation PersistentDownloadManagerEntity

- (id)finishPersistentDownloadsWithDownloadIDs:(id)ds
{
  v40 = objc_alloc_init(DownloadsChangeset);
  database = [(PersistentDownloadManagerEntity *)self database];
  obj = ds;
  v43 = [SSSQLiteComparisonPredicate predicateWithProperty:@"manager_id" equalToLongLong:[(PersistentDownloadManagerEntity *)self persistentID]];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v6 = [ds countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v6)
  {
    v7 = v6;
    v44 = *v46;
    v39 = SSDownloadMetadataKeyFileExtensionMoviePackage;
    v41 = SSDownloadPhaseFailed;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v46 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v45 + 1) + 8 * i);
        v10 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v9 longLongValue], database);
        v54[0] = @"kind";
        v54[1] = @"download_state.phase";
        v54[2] = @"is_hls";
        [(DownloadEntity *)v10 getValues:v53 forProperties:v54 count:3];
        v11 = v53[2];
        if (objc_opt_respondsToSelector())
        {
          bOOLValue = [v11 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        v13 = v53[0];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = 0;
        }

        if (SSDownloadPhaseIsUnsuccessful())
        {
          if (bOOLValue)
          {
            if (SSDownloadKindIsMediaKind())
            {
              v14 = [DownloadAssetEntity anyInDatabase:database predicate:[SSSQLiteCompoundPredicate predicateMatchingAllPredicates:[NSArray arrayWithObjects:[SSSQLiteComparisonPredicate predicateWithProperty:@"download_id" equalToValue:v9], [SSSQLiteComparisonPredicate predicateWithProperty:@"is_hls" equalToValue:&__kCFBooleanTrue], 0]]];
              if (v14)
              {
                v15 = [sub_10020F36C(v13) stringByAppendingPathComponent:{-[NSString stringByAppendingPathExtension:](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", objc_msgSend(v14, "persistentID")), "stringByAppendingPathExtension:", v39)}];
                if (v15)
                {
                  v16 = v15;
                  LOBYTE(v49) = 0;
                  v17 = [+[NSFileManager defaultManager](NSFileManager fileExistsAtPath:"fileExistsAtPath:isDirectory:" isDirectory:v15, &v49];
                  if (v49 == 1)
                  {
                    if (v17)
                    {
                      v38 = [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v16, 0];
                      v18 = +[SSLogConfig sharedDaemonConfig];
                      if (!v18)
                      {
                        v18 = +[SSLogConfig sharedConfig];
                      }

                      LODWORD(v19) = [v18 shouldLog];
                      if ([v18 shouldLogToDisk])
                      {
                        LODWORD(v19) = v19 | 2;
                      }

                      oSLogObject = [v18 OSLogObject];
                      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
                      {
                        v19 = v19;
                      }

                      else
                      {
                        v19 &= 2u;
                      }

                      if (v19)
                      {
                        v21 = objc_opt_class();
                        v49 = 138412802;
                        v50 = v21;
                        v51 = 1024;
                        LODWORD(v52[0]) = v38;
                        WORD2(v52[0]) = 2112;
                        *(v52 + 6) = v9;
                        LODWORD(v37) = 28;
                        v22 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, oSLogObject, 2, "%@: Remove successful '%d' of media file for persistent download: %@", &v49, v37);
                        if (v22)
                        {
                          v23 = v22;
                          v24 = [NSString stringWithCString:v22 encoding:4];
                          free(v23);
                          v35 = v24;
                          SSFileLog();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        if ((SSDownloadPhaseIsFinishedPhase() & 1) != 0 || [v53[1] isEqualToString:v41])
        {
          v25 = +[SSLogConfig sharedDaemonConfig];
          if (!v25)
          {
            v25 = +[SSLogConfig sharedConfig];
          }

          shouldLog = [v25 shouldLog];
          if ([v25 shouldLogToDisk])
          {
            LODWORD(v27) = shouldLog | 2;
          }

          else
          {
            LODWORD(v27) = shouldLog;
          }

          oSLogObject2 = [v25 OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
          {
            v27 = v27;
          }

          else
          {
            v27 &= 2u;
          }

          if (v27)
          {
            v29 = objc_opt_class();
            v49 = 138412546;
            v50 = v29;
            v51 = 2112;
            v52[0] = v9;
            LODWORD(v37) = 22;
            v30 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Finishing persistent download: %@", &v49, v37);
            if (v30)
            {
              v31 = v30;
              v32 = [NSString stringWithCString:v30 encoding:4];
              free(v31);
              v36 = v32;
              SSFileLog();
            }
          }

          v33 = [SSSQLiteComparisonPredicate predicateWithProperty:@"download_id" equalToValue:v9, v36];
          [+[PersistentDownloadEntity queryWithDatabase:predicate:](PersistentDownloadEntity queryWithDatabase:database predicate:{+[SSSQLiteCompoundPredicate predicateMatchingAllPredicates:](SSSQLiteCompoundPredicate, "predicateMatchingAllPredicates:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v33, v43, 0))), "deleteAllEntities"}];
          if (![PersistentDownloadEntity anyInDatabase:database predicate:v33])
          {
            [(DownloadEntity *)v10 deleteFromDatabase];
            [(DownloadsChangeset *)v40 addDownloadChangeTypes:8];
            [(DownloadsChangeset *)v40 addDownloadKind:v53[0]];
            [(DownloadsChangeset *)v40 addRemovedDownloadID:[(DownloadEntity *)v10 persistentID]];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v7);
  }

  return v40;
}

- (void)performNewsstandMigration1InDatabase:(id)database
{
  v9 = @"download_id";
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100140868;
  v5[3] = &unk_100329AE8;
  databaseCopy = database;
  v7 = [(PersistentDownloadManagerEntity *)self valueForProperty:@"client_id"];
  selfCopy = self;
  [+[PersistentDownloadEntity queryWithDatabase:predicate:](PersistentDownloadEntity queryWithDatabase:databaseCopy predicate:{+[SSSQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SSSQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"manager_id", -[PersistentDownloadManagerEntity persistentID](self, "persistentID"))), "enumeratePersistentIDsAndProperties:count:usingBlock:", &v9, 1, v5}];
  v4 = [[NSDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 1), @"migration_version", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1), @"filters_external_downloads", 0}];
  [(PersistentDownloadManagerEntity *)self setValuesWithDictionary:v4];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100383F18 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"persistent_download", @"manager_id", @"persistent_manager_kind", 0}];
    qword_100383F10 = [[NSSet alloc] initWithObjects:{@"persistent_download", @"persistent_manager_kind", 0}];
  }
}

@end
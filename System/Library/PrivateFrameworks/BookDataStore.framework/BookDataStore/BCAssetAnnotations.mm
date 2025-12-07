@interface BCAssetAnnotations
- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt;
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromAssetAnnotations:(id)annotations withMergers:(id)mergers;
- (void)_mergeInAssetID:(id)d assetVersion:(id)version serializedData:(id)data;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BCAssetAnnotations

- (id)mutableCopy
{
  v2 = [BCMutableAssetAnnotations alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCAssetAnnotations *)self _configureFromAssetAnnotations:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = BDSCloudKitLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E47059F8();
    }
  }
}

- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt
{
  saltCopy = salt;
  dateCopy = date;
  v7 = BUProtocolCast();
  v17.receiver = self;
  v17.super_class = BCAssetAnnotations;
  LOBYTE(saltCopy) = [(BCCloudData *)&v17 isEqualExceptForDate:dateCopy ignoringEmptySalt:saltCopy];

  assetID = [(BCAssetAnnotations *)self assetID];
  assetID2 = [v7 assetID];
  v10 = [assetID isEqualToString:assetID2];

  assetVersion = [(BCAssetAnnotations *)self assetVersion];
  assetVersion2 = [v7 assetVersion];
  v13 = [assetVersion isEqualToString:assetVersion2];

  bookAnnotations = [(BCAssetAnnotations *)self bookAnnotations];
  bookAnnotations2 = [v7 bookAnnotations];
  LOBYTE(assetVersion2) = [bookAnnotations isEqual:bookAnnotations2];

  return saltCopy & v10 & v13 & assetVersion2;
}

- (void)_configureFromAssetAnnotations:(id)annotations withMergers:(id)mergers
{
  v24 = *MEMORY[0x1E69E9840];
  annotationsCopy = annotations;
  v17.receiver = self;
  v17.super_class = BCAssetAnnotations;
  [(BCCloudData *)&v17 configureFromCloudData:annotationsCopy withMergers:mergers];
  assetID = [annotationsCopy assetID];
  [(NSManagedObject *)self setDifferentString:assetID forKey:@"assetID"];

  assetID2 = [annotationsCopy assetID];
  assetVersion = [annotationsCopy assetVersion];
  bookAnnotations = [annotationsCopy bookAnnotations];
  [(BCAssetAnnotations *)self _mergeInAssetID:assetID2 assetVersion:assetVersion serializedData:bookAnnotations];

  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  LODWORD(assetVersion) = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (assetVersion)
  {
    v13 = BDSCloudKitDevelopmentLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      assetID3 = [(BCAssetAnnotations *)self assetID];
      v15 = [(BCAssetAnnotations *)self debugDescription];
      assetID4 = [annotationsCopy assetID];
      *buf = 138543874;
      v19 = assetID3;
      v20 = 2112;
      v21 = v15;
      v22 = 2114;
      v23 = assetID4;
      _os_log_impl(&dword_1E45E0000, v13, OS_LOG_TYPE_DEFAULT, "\\BCAssetAnnotations configured: %{public}@ %@ from assetDetail:%{public}@\", buf, 0x20u);
    }
  }
}

- (void)_mergeInAssetID:(id)d assetVersion:(id)version serializedData:(id)data
{
  v95 = *MEMORY[0x1E69E9840];
  dCopy = d;
  versionCopy = version;
  dataCopy = data;
  v11 = objc_alloc_init(BCAnnotationsProtoBook);
  v12 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
  v13 = BCAnnotationsProtoBookReadFrom(v11, v12);
  if (v13)
  {
    v73 = v12;
    v75 = dataCopy;
    assetID = [(BCAssetAnnotations *)self assetID];
    v15 = [assetID isEqualToString:dCopy];

    if ((v15 & 1) == 0)
    {
      v17 = BDSCloudKitLog(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1E4705AC0(self);
      }

      [(BCAssetAnnotations *)self setAssetID:dCopy];
    }

    v18 = objc_alloc_init(BCAnnotationsProtoBook);
    [(BCAnnotationsProtoBook *)v18 setAssetID:dCopy];
    v19 = +[BDSAppVersion appVersion];
    [(BCAnnotationsProtoBook *)v18 setAppVersion:v19];

    bookAnnotations = [(BCAssetAnnotations *)self bookAnnotations];
    v21 = [bookAnnotations length];

    if (v21)
    {
      v22 = objc_alloc(MEMORY[0x1E69C65B8]);
      bookAnnotations2 = [(BCAssetAnnotations *)self bookAnnotations];
      v24 = [v22 initWithData:bookAnnotations2];

      v25 = BCAnnotationsProtoBookReadFrom(v18, v24);
      v26 = v25;
      if ((v25 & 1) == 0)
      {
        v27 = BDSCloudKitLog(v25);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_1E4705B64(self);
        }
      }

      v72 = v26 ^ 1;
    }

    else
    {
      v72 = 1;
    }

    v76 = versionCopy;
    v77 = dCopy;
    v29 = v18;
    v74 = v11;
    v78 = v11;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [MEMORY[0x1E695DF70] array];
    v81 = p_super = &v29->super.super;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    annotations = [(BCAnnotationsProtoBook *)v29 annotations];
    v32 = [annotations countByEnumeratingWithState:&v86 objects:v94 count:16];
    selfCopy = self;
    if (v32)
    {
      v33 = v32;
      v34 = 0;
      v35 = *v87;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v87 != v35)
          {
            objc_enumerationMutation(annotations);
          }

          v37 = *(*(&v86 + 1) + 8 * i);
          v38 = sub_1E46157D8(v37);
          if (v38)
          {
            uuid = [v37 uuid];
            [dictionary setObject:v37 forKeyedSubscript:uuid];
          }

          else
          {
            v40 = BDSCloudKitLog(v38);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v93 = v37;
              _os_log_error_impl(&dword_1E45E0000, v40, OS_LOG_TYPE_ERROR, "skipping annotation not valid for sync %@", buf, 0xCu);
            }

            [v81 addObject:v37];
            v34 = 1;
          }
        }

        v33 = [annotations countByEnumeratingWithState:&v86 objects:v94 count:16];
      }

      while (v33);
    }

    else
    {
      v34 = 0;
    }

    annotations2 = [p_super annotations];
    [annotations2 removeObjectsInArray:v81];

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    annotations3 = [(BCAnnotationsProtoBook *)v78 annotations];
    v43 = [annotations3 countByEnumeratingWithState:&v82 objects:buf count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v83;
      v79 = dictionary;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v83 != v45)
          {
            objc_enumerationMutation(annotations3);
          }

          v47 = *(*(&v82 + 1) + 8 * j);
          uuid2 = [v47 uuid];
          v49 = [dictionary objectForKeyedSubscript:uuid2];
          v50 = sub_1E46157D8(v47);
          if (v50)
          {
            if (v49)
            {
              [v47 modificationDate];
              v52 = v51;
              [(BCProtoAnnotation *)v49 modificationDate];
              if (v52 > v53)
              {
                v54 = annotations3;
                deleted = [v47 deleted];
                mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
                verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

                if (deleted)
                {
                  annotations3 = v54;
                  if (verboseLoggingEnabled)
                  {
                    v59 = BDSCloudKitDevelopmentLog(v58);
                    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                    {
                      uuid3 = [v47 uuid];
                      *v90 = 138412290;
                      v91 = uuid3;
                      _os_log_impl(&dword_1E45E0000, v59, OS_LOG_TYPE_DEFAULT, "\\Annotation updated: annotation %@ is deleted, making a tombstone\", v90, 0xCu);

                      annotations3 = v54;
                    }
                  }

                  [v47 modificationDate];
                  [(BCProtoAnnotation *)v49 setModificationDate:?];
                  bc_turnProtoAnnotationIntoTombstone(v49);
                }

                else
                {
                  annotations3 = v54;
                  if (verboseLoggingEnabled)
                  {
                    v67 = BDSCloudKitDevelopmentLog(v58);
                    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                    {
                      locationCFIString = [v47 locationCFIString];
                      *v90 = 138412290;
                      v91 = locationCFIString;
                      _os_log_impl(&dword_1E45E0000, v67, OS_LOG_TYPE_DEFAULT, "\\Annotation updated: annotation at location %@\", v90, 0xCu);

                      annotations3 = v54;
                    }
                  }

                  [v47 copyTo:v49];
                }

                v34 = 1;
                dictionary = v79;
              }
            }

            else
            {
              v49 = objc_alloc_init(BCProtoAnnotation);
              [v47 copyTo:v49];
              [p_super addAnnotation:v49];
              mEMORY[0x1E698F550]2 = [MEMORY[0x1E698F550] shared];
              verboseLoggingEnabled2 = [mEMORY[0x1E698F550]2 verboseLoggingEnabled];

              if (verboseLoggingEnabled2)
              {
                v65 = BDSCloudKitDevelopmentLog(v64);
                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                {
                  locationCFIString2 = [(BCProtoAnnotation *)v49 locationCFIString];
                  *v90 = 138412290;
                  v91 = locationCFIString2;
                  _os_log_impl(&dword_1E45E0000, v65, OS_LOG_TYPE_DEFAULT, "\\Annotations updated: new annotation synced down at %@\", v90, 0xCu);
                }
              }

              v34 = 1;
            }
          }

          else
          {
            v61 = BDSCloudKitLog(v50);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              *v90 = 138412290;
              v91 = v47;
              _os_log_error_impl(&dword_1E45E0000, v61, OS_LOG_TYPE_ERROR, "skipping annotation not valid for sync %@.", v90, 0xCu);
            }
          }
        }

        v44 = [annotations3 countByEnumeratingWithState:&v82 objects:buf count:16];
      }

      while (v44);
    }

    v28 = p_super;
    versionCopy = v76;
    if ((v72 | v34))
    {
      [(BCAssetAnnotations *)selfCopy setAssetVersion:v76];
      v69 = objc_alloc_init(MEMORY[0x1E69C65C0]);
      [p_super writeTo:v69];
      immutableData = [v69 immutableData];
      [(BCAssetAnnotations *)selfCopy setBookAnnotations:immutableData];
    }

    dCopy = v77;
    v11 = v74;
    dataCopy = v75;
    v12 = v73;
  }

  else
  {
    v28 = BDSCloudKitLog(v13);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1E4705A34(self);
    }
  }
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  v40 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v33.receiver = self;
  v33.super_class = BCAssetAnnotations;
  v7 = [(BCCloudData *)&v33 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v8 = [BCCloudData localIdentifierFromRecord:recordCopy];
    modificationDate = [(BCAssetAnnotations *)self modificationDate];
    if (modificationDate)
    {
      v10 = modificationDate;
      modificationDate2 = [(BCAssetAnnotations *)self modificationDate];
      [modificationDate2 timeIntervalSinceReferenceDate];
      v13 = v12;
      modificationDate3 = [recordCopy modificationDate];
      [modificationDate3 timeIntervalSinceReferenceDate];
      v16 = v15;

      if (v13 > v16)
      {
        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_20;
      }
    }

    objc_opt_class();
    v17 = [recordCopy objectForKey:@"assetAnnotations"];
    v18 = BUDynamicCast();
    fileURL = [v18 fileURL];

    if (fileURL)
    {
      v20 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:fileURL];
    }

    else
    {
      v20 = 0;
    }

    v21 = [v8 length];
    if (!v21 || (v21 = [v20 length]) == 0)
    {
      v27 = BDSCloudKitLog(v21);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1E4705BF0(self);
      }

      goto LABEL_18;
    }

    v22 = [recordCopy objectForKeyedSubscript:@"assetVersion"];
    [(BCAssetAnnotations *)self _mergeInAssetID:v8 assetVersion:v22 serializedData:v20];

    hasChanges = [(BCAssetAnnotations *)self hasChanges];
    mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
    verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

    if (hasChanges)
    {
      if (!verboseLoggingEnabled)
      {
LABEL_19:

        goto LABEL_20;
      }

      v27 = BDSCloudKitDevelopmentLog(v26);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
LABEL_18:

        goto LABEL_19;
      }

      assetID = [(BCAssetAnnotations *)self assetID];
      recordID = [recordCopy recordID];
      recordName = [recordID recordName];
      v31 = [(BCAssetAnnotations *)self debugDescription];
      *buf = 138412802;
      v35 = assetID;
      v36 = 2112;
      v37 = recordName;
      v38 = 2112;
      v39 = v31;
      v32 = "\\BCAssetAnnotations %@ Resolving: Adopted properties from record: %@ %@\";
    }

    else
    {
      if (!verboseLoggingEnabled)
      {
        goto LABEL_19;
      }

      v27 = BDSCloudKitDevelopmentLog(v26);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      assetID = [(BCAssetAnnotations *)self assetID];
      recordID = [recordCopy recordID];
      recordName = [recordID recordName];
      v31 = [(BCAssetAnnotations *)self debugDescription];
      *buf = 138412802;
      v35 = assetID;
      v36 = 2112;
      v37 = recordName;
      v38 = 2112;
      v39 = v31;
      v32 = "\\BCAssetAnnotations %@ Resolving: Identical properties from record: %@ %@\";
    }

    _os_log_impl(&dword_1E45E0000, v27, OS_LOG_TYPE_DEFAULT, v32, buf, 0x20u);

    goto LABEL_18;
  }

  v8 = BDSCloudKitLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1E4705C7C(self);
  }

LABEL_20:
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  assetID = [(BCAssetAnnotations *)self assetID];
  assetVersion = [(BCAssetAnnotations *)self assetVersion];
  bookAnnotations = [(BCAssetAnnotations *)self bookAnnotations];
  v7 = [v3 stringWithFormat:@"assetID: %@, assetVersion: %@, statistics: %@", assetID, assetVersion, bookAnnotations];

  return v7;
}

@end
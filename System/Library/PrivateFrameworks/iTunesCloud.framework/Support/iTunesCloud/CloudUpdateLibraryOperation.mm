@interface CloudUpdateLibraryOperation
- (BOOL)_ensureDeviceIsRegistered;
- (BOOL)_updateLibrary;
- (BOOL)_uploadLibrary;
- (CloudUpdateLibraryOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity reason:(int64_t)reason updateTaskHelper:(id)helper;
- (id)_determineResultsURLWhenReadyWithUpdateID:(id)d retryTimeout:(double)timeout responseStatusCode:(int64_t *)code;
- (void)_clearAllCloudIDs;
- (void)_prepareLibraryForInitialUpdate;
- (void)cancel;
- (void)dealloc;
- (void)main;
@end

@implementation CloudUpdateLibraryOperation

- (void)_clearAllCloudIDs
{
  if ([(CloudUpdateLibraryOperation *)self uploadingLibraryIsSupported])
  {
    musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10011E2CC;
    v4[3] = &unk_1001DEE98;
    v4[4] = self;
    [musicLibrary performDatabaseTransactionWithBlock:v4];
  }

  else
  {
    musicLibrary = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(musicLibrary, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, musicLibrary, OS_LOG_TYPE_DEFAULT, "%{public}@ - Uploading is not supported, no temporary cloud ids to clear.", buf, 0xCu);
    }
  }
}

- (id)_determineResultsURLWhenReadyWithUpdateID:(id)d retryTimeout:(double)timeout responseStatusCode:(int64_t *)code
{
  dCopy = d;
  cuid = [(CloudUpdateLibraryOperation *)self cuid];
  troveID = [(CloudUpdateLibraryOperation *)self troveID];
  v11 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"auto-update", &__kCFBooleanFalse, @"incremental", &off_1001EDD80, @"min-itunes-match-compatible-version", &off_1001EDD98, @"itunes-match-protocol-version", cuid, @"cuid", troveID, @"troveid", dCopy, @"update-id", 0];

  v12 = sub_1000A760C(0, @"cloud-library-update-check", 3, v11, 60.0);
  if (v12)
  {
    *&v52 = 0;
    *(&v52 + 1) = &v52;
    v53 = 0x3032000000;
    v54 = sub_10011EA78;
    v55 = sub_10011EA88;
    v56 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = sub_10011EA78;
    v44 = sub_10011EA88;
    v45 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = sub_10011EA78;
    v38 = sub_10011EA88;
    v39 = 0;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10011EA90;
    v29[3] = &unk_1001DED08;
    v31 = &v52;
    v32 = &v40;
    v33 = &v34;
    v13 = dispatch_semaphore_create(0);
    v30 = v13;
    [v12 startGeniusRequestWithRetryTimeout:@"determineResultsURL" debugName:v29 connectionResponseBlock:timeout];
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    v14 = v35[5];
    if (v14)
    {
      domain = [v14 domain];
      v16 = [domain isEqualToString:@"SSURLConnectionRequestGeniusAdditionsErrorDomain"];

      if (v16)
      {
        userInfo = [v35[5] userInfo];
        v18 = [userInfo objectForKeyedSubscript:@"server-status-code"];
        integerValue = [v18 integerValue];

        v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = v41[5];
          *buf = 138543874;
          selfCopy3 = self;
          v48 = 2048;
          v49 = integerValue;
          v50 = 2114;
          v51 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to determine result URLs with server status code: %ld response: %{public}@", buf, 0x20u);
        }

        v22 = 0;
LABEL_18:

        if (!code)
        {
LABEL_20:
          v23 = v22;

          _Block_object_dispose(&v34, 8);
          _Block_object_dispose(&v40, 8);

          _Block_object_dispose(&v52, 8);
          v24 = v23;
          goto LABEL_21;
        }

LABEL_19:
        *code = integerValue;
        goto LABEL_20;
      }

      v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v27 = v35[5];
        *buf = 138543618;
        selfCopy3 = self;
        v48 = 2114;
        v49 = v27;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to determine result URLs with unknown error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = 0;
        integerValue = -1;
        if (!code)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v25 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v41[5];
        *buf = 138543618;
        selfCopy3 = self;
        v48 = 2114;
        v49 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ - Determine result URLs response: %{public}@", buf, 0x16u);
      }

      v20 = [v41[5] objectForKey:@"additional-fields-url"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [NSURL URLWithString:v20];
        integerValue = 0;
        goto LABEL_18;
      }
    }

    v22 = 0;
    integerValue = -1;
    goto LABEL_18;
  }

  v23 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v52) = 138543362;
    *(&v52 + 4) = self;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@ - Could not create determineResultsURLRequest", &v52, 0xCu);
  }

  v24 = 0;
LABEL_21:

  return v24;
}

- (BOOL)_updateLibrary
{
  connection = [(CloudLibraryOperation *)self connection];
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  v2 = +[ICDeviceInfo currentDeviceInfo];
  buildVersion = [v2 buildVersion];

  v176 = 0;
  v177 = &v176;
  v178 = 0x2020000000;
  v179 = 0;
  v172 = 0;
  v173 = &v172;
  v174 = 0x2020000000;
  v175 = 0;
  v168 = 0;
  v169 = &v168;
  v170 = 0x2020000000;
  v171 = 0;
  v164 = 0;
  v165 = &v164;
  v166 = 0x2020000000;
  v167 = 0;
  v160 = 0;
  v161 = &v160;
  v162 = 0x2020000000;
  v163 = 0;
  v156 = 0;
  v157 = &v156;
  v158 = 0x2020000000;
  v159 = 0;
  v154[0] = 0;
  v154[1] = v154;
  v154[2] = 0x2020000000;
  v155 = 0;
  v152[0] = 0;
  v152[1] = v152;
  v152[2] = 0x2020000000;
  v153 = 0;
  v148 = 0;
  v149 = &v148;
  v150 = 0x2020000000;
  v151 = 0;
  v142 = 0;
  v143 = &v142;
  v144 = 0x3032000000;
  v145 = sub_10011EA78;
  v146 = sub_10011EA88;
  v147 = 0;
  musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
  sagaOnDiskDatabaseRevision = [musicLibrary2 sagaOnDiskDatabaseRevision];

  sagaInitiateClientResetSync = [musicLibrary sagaInitiateClientResetSync];
  v7 = [musicLibrary valueForDatabaseProperty:@"MLCloudNeedsContainerRefetch"];
  bOOLValue = [v7 BOOLValue];

  v9 = [musicLibrary valueForDatabaseProperty:@"MLCloudLibraryForcePerformDeltaSync"];
  bOOLValue2 = [v9 BOOLValue];

  musicLibrary3 = [(CloudLibraryOperation *)self musicLibrary];
  sagaClientFeaturesVersion = [musicLibrary3 sagaClientFeaturesVersion];

  v117 = [ICUpdateRequest requestWithDatabaseRevision:1];
  selfCopy3 = self;
  [v117 setSagaClientFeaturesVersion:sagaClientFeaturesVersion];
  reason = self->_reason;
  if (reason <= 7 && ((1 << reason) & 0x8A) != 0)
  {
    v14 = 2;
  }

  else if ([(CloudUpdateLibraryOperation *)self allowNoisyAuthPrompt])
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  [v117 setVerificationInteractionLevel:v14];
  if (MSVDeviceOSIsInternalInstall())
  {
    v15 = +[ICDefaults standardDefaults];
    shouldForceServerToUseDAAPDebugFeature = [v15 shouldForceServerToUseDAAPDebugFeature];

    selfCopy3 = self;
    if (shouldForceServerToUseDAAPDebugFeature)
    {
      v17 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = self;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - Defaults to use DAAP debug feature is set.", buf, 0xCu);
      }

      [v117 setIncludeCloudLibraryDAAPDebugFeature:1];
      selfCopy3 = self;
    }
  }

  v18 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    *&buf[4] = selfCopy3;
    *&buf[12] = 1024;
    *&buf[14] = sagaOnDiskDatabaseRevision;
    *&buf[18] = 2114;
    *&buf[20] = sagaClientFeaturesVersion;
    *&buf[28] = 1024;
    *&buf[30] = sagaInitiateClientResetSync;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - Starting update with onDiskDatabaseRevision=%u, onDiskClientFeaturesVersionString=%{public}@, sagaClientInitiateResetSync=%{BOOL}u", buf, 0x22u);
  }

  v19 = dispatch_semaphore_create(0);
  v129[0] = _NSConcreteStackBlock;
  v129[1] = 3221225472;
  v129[2] = sub_100120288;
  v129[3] = &unk_1001DEDF8;
  v133 = &v172;
  v134 = &v164;
  v135 = v154;
  v136 = &v156;
  v137 = v152;
  v138 = &v142;
  v139 = &v168;
  v140 = &v160;
  v141 = &v148;
  v132 = &v176;
  v129[4] = self;
  v111 = buildVersion;
  v130 = v111;
  dsema = v19;
  v131 = dsema;
  [connection sendRequest:v117 withResponseHandler:v129];
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    error = [(CloudLibraryOperation *)self error];
    v22 = *(v177 + 6);
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = error;
    *&buf[22] = 1024;
    *&buf[24] = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ - Update finished with error=%{public}@, Server database revision: %u", buf, 0x1Cu);
  }

  if (*(v173 + 24) == 1)
  {
    v23 = *(v165 + 24);
    if (v23 == 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2 * (v23 == 2);
    }

    v25 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = ICCloudClientGetStringForAddToPlaylistBehavior();
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ - Update response contained add to playlist behavior: %{public}@", buf, 0x16u);
    }

    musicLibrary4 = [(CloudLibraryOperation *)self musicLibrary];
    [musicLibrary4 icd_setSagaCloudAddToPlaylistBehavior:v24];
  }

  if (*(v169 + 24) == 1)
  {
    v28 = *(v161 + 24);
    if (v28 == 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2 * (v28 == 2);
    }

    v30 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = ICCloudClientGetStringForAddToLibraryBehavior();
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ - Update response contained add to library behavior: %{public}@", buf, 0x16u);
    }

    musicLibrary5 = [(CloudLibraryOperation *)self musicLibrary];
    [musicLibrary5 icd_setSagaCloudFavoriteSongAddToLibraryBehavior:v29];
  }

  error2 = [(CloudLibraryOperation *)self error];

  if (!error2)
  {
    selfCopy13 = self;
    if ([(CloudUpdateLibraryOperation *)self isCancelled])
    {
      [(CloudLibraryOperation *)self setStatus:4];
      v43 = [NSError ic_cloudClientErrorWithCode:2001 userInfo:0];
      [(CloudLibraryOperation *)self setError:v43];
    }

    else
    {
      if (*(v177 + 6))
      {
        v44 = 1;
LABEL_47:
        v47 = sub_100004B8C() | v44 ^ 1;
        if (v47)
        {
          v48 = sagaOnDiskDatabaseRevision;
        }

        else
        {
          v48 = 0;
        }

        if (((v47 | sagaInitiateClientResetSync) & 1) == 0)
        {
          if (v149[3])
          {
            v48 = 0;
          }

          else if ([musicLibrary sagaNeedsFullUpdate])
          {
            v48 = 1;
          }

          else
          {
            v48 = sagaOnDiskDatabaseRevision;
          }
        }

        v49 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          sagaNeedsFullUpdate = [musicLibrary sagaNeedsFullUpdate];
          v51 = *(v157 + 24);
          *buf = 138544898;
          *&buf[4] = selfCopy13;
          *&buf[12] = 1024;
          *&buf[14] = v48;
          *&buf[18] = 1024;
          *&buf[20] = sagaInitiateClientResetSync;
          *&buf[24] = 1024;
          *&buf[26] = bOOLValue;
          *&buf[30] = 1024;
          *&buf[32] = bOOLValue2;
          v186 = 1024;
          v187 = sagaNeedsFullUpdate;
          v188 = 1024;
          v189 = v51;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ - onDiskDatabaseRevision=%d, sagaClientInitiateResetSync=%{BOOL}u, forceUpdate=%{BOOL}u, forcePerformDeltaSync=%{BOOL}u, needs full update (client=%{BOOL}u, server=%{BOOL}u)", buf, 0x30u);
        }

        if (!v44)
        {
          goto LABEL_120;
        }

        selfCopy6 = self;
        if (*(v177 + 6) == v48)
        {
          if (((bOOLValue | bOOLValue2) & 1) == 0)
          {
            [(CloudLibraryOperation *)self setStatus:1];
            v97 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = self;
              _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "%{public}@ - On-disk database revision is the same as the server database revision, skipping update.", buf, 0xCu);
            }

            v98 = [musicLibrary valueForDatabaseProperty:@"MLCloudLastLibraryUpdate"];
            intValue = [v98 intValue];

            if (!intValue)
            {
              v100 = +[NSDate date];
              v101 = sub_10010275C();
              if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543874;
                *&buf[4] = self;
                *&buf[12] = 1024;
                *&buf[14] = 0;
                *&buf[18] = 2114;
                *&buf[20] = v100;
                _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "%{public}@ - lastSagaUpdateTimeOnDisk=%d. Setting it to %{public}@", buf, 0x1Cu);
              }

              musicLibrary6 = [(CloudLibraryOperation *)self musicLibrary];
              [musicLibrary6 setSagaLastLibraryUpdateTime:v100];
            }

            musicLibrary7 = [(CloudLibraryOperation *)self musicLibrary];
            sagaLastCloudUpdateClientBuildVersion = [musicLibrary7 sagaLastCloudUpdateClientBuildVersion];

            if (![sagaLastCloudUpdateClientBuildVersion length] || objc_msgSend(v111, "length") && (objc_msgSend(sagaLastCloudUpdateClientBuildVersion, "isEqualToString:", v111) & 1) == 0)
            {
              v105 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
              if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543874;
                *&buf[4] = self;
                *&buf[12] = 2114;
                *&buf[14] = sagaLastCloudUpdateClientBuildVersion;
                *&buf[22] = 2114;
                *&buf[24] = v111;
                _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "%{public}@ - clientBuildVersionOnDisk=%{public}@. Setting it to %{public}@", buf, 0x20u);
              }

              musicLibrary8 = [(CloudLibraryOperation *)self musicLibrary];
              [musicLibrary8 setSagaLastCloudUpdateClientBuildVersion:v111];
            }

            goto LABEL_120;
          }

          v53 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = self;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%{public}@ - On-disk database revision is the same as the server database revision, but force update is TRUE.", buf, 0xCu);
          }

          selfCopy6 = self;
        }

        else if (bOOLValue2)
        {
          [musicLibrary setSagaForcePerformDeltaSync:0];
          bOOLValue2 = 0;
        }

        v54 = [SagaImporter alloc];
        v55 = *(v149 + 24);
        v56 = sagaClientFeaturesVersion;
        if ([v143[5] length])
        {
          v56 = v143[5];
        }

        clientIdentity = [(CloudLibraryOperation *)selfCopy6 clientIdentity];
        LODWORD(v108) = v48;
        HIDWORD(v108) = *(v177 + 6);
        v58 = [(SagaImporter *)v54 initWithConnection:connection serverInitiatedReset:v55 clientInitiatedReset:sagaInitiateClientResetSync clientInitiatedReloadForPins:bOOLValue2 clientFeaturesVersion:v56 clientIdentity:clientIdentity fromRevision:v108 toRevision:?];
        [(CloudUpdateLibraryOperation *)selfCopy6 setImporter:v58];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        buf[24] = 0;
        v59 = dispatch_semaphore_create(0);
        importer = [(CloudUpdateLibraryOperation *)self importer];
        v126[0] = _NSConcreteStackBlock;
        v126[1] = 3221225472;
        v126[2] = sub_100120550;
        v126[3] = &unk_1001DEE20;
        v128 = buf;
        v126[4] = self;
        v110 = v59;
        v127 = v110;
        [importer performUpdateWithCompletionHandler:v126];

        dispatch_semaphore_wait(v110, 0xFFFFFFFFFFFFFFFFLL);
        selfCopy7 = self;
        [(CloudUpdateLibraryOperation *)self setImporter:0];
        if (MSVDeviceOSIsInternalInstall() && ((+[ICDefaults standardDefaults](ICDefaults, "standardDefaults"), v62 = objc_claimAutoreleasedReturnValue(), v63 = [v62 shouldTreatInitialSagaImportAsFailed], !v48) ? (v64 = v63) : (v64 = 0), v62, selfCopy7 = self, v64))
        {
          *(*&buf[8] + 24) = 0;
          v65 = *(v177 + 6);
          musicLibrary9 = [(CloudLibraryOperation *)self musicLibrary];
          [musicLibrary9 setSagaOnDiskDatabaseRevision:v65];

          self->_didEncounterFatalErrorImportingPayload = 1;
          v67 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            *v181 = 138543362;
            selfCopy12 = self;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%{public}@ - shouldTreatInitialSagaImportAsFailed is set. Will force initial import to fail.", v181, 0xCu);
          }

          [(CloudLibraryOperation *)self setStatus:3];
          v68 = [NSError errorWithDomain:ICErrorDomain code:0 userInfo:0];
          [(CloudLibraryOperation *)self setError:v68];
        }

        else if (*(*&buf[8] + 24) == 1)
        {
          [(CloudLibraryOperation *)selfCopy7 setStatus:1];
          v69 = *(v177 + 6);
          musicLibrary10 = [(CloudLibraryOperation *)selfCopy7 musicLibrary];
          [musicLibrary10 setSagaOnDiskDatabaseRevision:v69];

          v71 = v143[5];
          musicLibrary11 = [(CloudLibraryOperation *)self musicLibrary];
          [musicLibrary11 setSagaClientFeaturesVersion:v71];

          musicLibrary12 = [(CloudLibraryOperation *)self musicLibrary];
          [musicLibrary12 setSagaLastCloudUpdateClientBuildVersion:v111];

          v74 = +[NSDate date];
          musicLibrary13 = [(CloudLibraryOperation *)self musicLibrary];
          [musicLibrary13 setSagaLastLibraryUpdateTime:v74];

          musicLibrary14 = [(CloudLibraryOperation *)self musicLibrary];
          LODWORD(musicLibrary13) = [musicLibrary14 sagaNeedsFullUpdate];

          if (musicLibrary13)
          {
            musicLibrary15 = [(CloudLibraryOperation *)self musicLibrary];
            [musicLibrary15 setSagaNeedsFullUpdate:0];

            v78 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              *v181 = 138543362;
              selfCopy12 = self;
              _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "%{public}@ - Clearing flag to perform a reset sync.", v181, 0xCu);
            }
          }

          musicLibrary16 = [(CloudLibraryOperation *)self musicLibrary];
          [musicLibrary16 setSagaInitiateClientResetSync:0];

          musicLibrary17 = [(CloudLibraryOperation *)self musicLibrary];
          [musicLibrary17 setSagaForcePerformDeltaSync:0];

          if (!v48)
          {
            v81 = sub_10010275C();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              *v181 = 138543618;
              selfCopy12 = self;
              v183 = 2048;
              v184 = 710000;
              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting initial user version: %lli", v181, 0x16u);
            }

            musicLibrary18 = [(CloudLibraryOperation *)self musicLibrary];
            [musicLibrary18 icd_setSagaDatabaseUserVersion:710000];

            keyExistsAndHasValidFormat = 0;
            if (!CFPreferencesGetAppBooleanValue(@"MusicShowCloudMediaEnabledSetting", @"com.apple.mobileipod", &keyExistsAndHasValidFormat) && keyExistsAndHasValidFormat)
            {
              CFPreferencesSetAppValue(@"MusicShowCloudMediaEnabledSetting", 0, @"com.apple.mobileipod");
              CFPreferencesAppSynchronize(@"com.apple.mobileipod");
              notify_post("com.apple.mobileipod-prefsChanged");
            }

            v83 = sub_10010275C();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              *v181 = 138543362;
              selfCopy12 = self;
              _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "%{public}@ - Posting cloud library availability did change notification (library became available)", v181, 0xCu);
            }

            [musicLibrary notifyCloudLibraryAvailabilityDidChange];
            v84 = +[NSMutableArray array];
            musicLibrary19 = [(CloudLibraryOperation *)self musicLibrary];
            v123[0] = _NSConcreteStackBlock;
            v123[1] = 3221225472;
            v123[2] = sub_1001205C0;
            v123[3] = &unk_1001DEE70;
            v123[4] = self;
            v109 = v84;
            v124 = v109;
            [musicLibrary19 databaseConnectionAllowingWrites:0 withBlock:v123];

            if ([v109 count])
            {
              v121 = 0u;
              v122 = 0u;
              v119 = 0u;
              v120 = 0u;
              obj = v109;
              v86 = [obj countByEnumeratingWithState:&v119 objects:v180 count:16];
              if (v86)
              {
                v87 = *v120;
                do
                {
                  for (i = 0; i != v86; i = i + 1)
                  {
                    if (*v120 != v87)
                    {
                      objc_enumerationMutation(obj);
                    }

                    longLongValue = [*(*(&v119 + 1) + 8 * i) longLongValue];
                    v90 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
                    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
                    {
                      *v181 = 138543618;
                      selfCopy12 = self;
                      v183 = 2048;
                      v184 = longLongValue;
                      _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "%{public}@ - Triggering post-unification playlist artwork upload for playlist persistentID: %lld", v181, 0x16u);
                    }

                    configuration = [(CloudLibraryOperation *)self configuration];
                    v92 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:configuration];
                    clientIdentity2 = [(CloudLibraryOperation *)self clientIdentity];
                    [v92 uploadArtworkForPlaylistWithPersistentID:longLongValue clientIdentity:clientIdentity2 completionHandler:0];
                  }

                  v86 = [obj countByEnumeratingWithState:&v119 objects:v180 count:16];
                }

                while (v86);
              }
            }
          }
        }

        else
        {
          selfCopy7->_didEncounterFatalErrorImportingPayload = 1;
          v96 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
          {
            *v181 = 138543362;
            selfCopy12 = selfCopy7;
            _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "%{public}@ - Error importing cloud library payload. Will treat as permanent failure", v181, 0xCu);
          }

          [(CloudLibraryOperation *)self setStatus:3];
        }

        _Block_object_dispose(buf, 8);
LABEL_120:
        v46 = [(CloudLibraryOperation *)self status]== 1;
        goto LABEL_121;
      }

      [(CloudLibraryOperation *)self setStatus:5];
      v190 = NSLocalizedDescriptionKey;
      v191 = @"Failed to get a database revision during library update operation";
      v94 = [NSDictionary dictionaryWithObjects:&v191 forKeys:&v190 count:1];
      v95 = [NSError ic_cloudClientErrorWithCode:2002 userInfo:v94];
      [(CloudLibraryOperation *)self setError:v95];

      v43 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = self;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to get a non-zero server database revision.", buf, 0xCu);
      }
    }

    v44 = 0;
    selfCopy13 = self;
    goto LABEL_47;
  }

  error3 = [(CloudLibraryOperation *)self error];
  domain = [error3 domain];
  if (([domain isEqualToString:ICCloudClientErrorDomain] & 1) == 0)
  {

LABEL_42:
    [(CloudLibraryOperation *)self setStatus:5];
    v40 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      error4 = [(CloudLibraryOperation *)self error];
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = error4;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}@ - Received error when doing a library update request: %{public}@", buf, 0x16u);
    }

    goto LABEL_44;
  }

  error5 = [(CloudLibraryOperation *)self error];
  v37 = [error5 code] == 2019;

  if (!v37)
  {
    goto LABEL_42;
  }

  error6 = [(CloudLibraryOperation *)self error];
  userInfo = [error6 userInfo];
  v40 = [userInfo objectForKey:@"CloudLibraryConnectionRequestForbiddenAdditonalErrorCodeKey"];

  if ([v40 integerValue]== 950)
  {
    v41 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}@ - Server response indicates the subscription has lapsed", buf, 0xCu);
    }

    self->_didSubscriptionStatusLapse = 1;
    [(CloudLibraryOperation *)self setStatus:3];
  }

LABEL_44:

  v46 = 0;
LABEL_121:

  _Block_object_dispose(&v142, 8);
  _Block_object_dispose(&v148, 8);
  _Block_object_dispose(v152, 8);
  _Block_object_dispose(v154, 8);
  _Block_object_dispose(&v156, 8);
  _Block_object_dispose(&v160, 8);
  _Block_object_dispose(&v164, 8);
  _Block_object_dispose(&v168, 8);
  _Block_object_dispose(&v172, 8);
  _Block_object_dispose(&v176, 8);

  return v46;
}

- (void)_prepareLibraryForInitialUpdate
{
  [(CloudLibraryOperation *)self musicLibrary];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100120814;
  v9 = &unk_1001DEDD0;
  v11 = v10 = self;
  v3 = v11;
  [v3 performDatabaseTransactionWithBlock:&v6];
  v4 = [(CloudLibraryOperation *)self configuration:v6];
  v5 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:v4];
  [v5 cancelPendingChangesForLibraryType:1];
}

- (BOOL)_uploadLibrary
{
  if (!CFPreferencesGetAppBooleanValue(@"DisableLibraryUpload", @"com.apple.itunescloudd", 0))
  {
    musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
    sagaPrefersToMergeWithCloudLibrary = [musicLibrary sagaPrefersToMergeWithCloudLibrary];

    if (sagaPrefersToMergeWithCloudLibrary)
    {
      v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = self;
        v8 = "%{public}@ - Setting should-upload to true because MLCloudLibraryPrefersToMerge is set to YES";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
      }
    }

    else
    {
      if (!CFPreferencesGetAppBooleanValue(@"ForceLibraryUnification", @"com.apple.itunescloudd", 0))
      {
        v178 = 0;
LABEL_13:
        v9 = ML3TrackPropertyMediaType;
        v10 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyMediaType value:&off_1001EDD68 comparison:10];
        v264[0] = v10;
        v11 = [ML3PropertyPredicate predicateWithProperty:ML3TrackPropertyIsInMyLibrary];
        v264[1] = v11;
        v12 = [ML3PropertyPredicate predicateWithProperty:ML3TrackPropertyIsPlayable];
        v264[2] = v12;
        v13 = [NSArray arrayWithObjects:v264 count:3];
        v3 = [ML3AllCompoundPredicate predicateMatchingPredicates:v13];

        musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
        v185 = [ML3Track queryWithLibrary:musicLibrary2 predicate:v3];

        countOfEntities = [v185 countOfEntities];
        v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = countOfEntities;
          *&buf[22] = 2114;
          v261 = v185;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - Found %lu songs to upload from query: %{public}@", buf, 0x20u);
        }

        cuid = [(CloudUpdateLibraryOperation *)self cuid];
        troveID = [(CloudUpdateLibraryOperation *)self troveID];
        v18 = [NSNumber numberWithUnsignedInteger:countOfEntities];
        v186 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"auto-update", &__kCFBooleanFalse, @"incremental", &off_1001EDD80, @"min-itunes-match-compatible-version", &off_1001EDD98, @"itunes-match-protocol-version", cuid, @"cuid", troveID, @"troveid", v18, @"num-tracks", 0];

        v232 = 0;
        v233 = &v232;
        v234 = 0x2050000000;
        v19 = qword_100213E48;
        v235 = qword_100213E48;
        if (!qword_100213E48)
        {
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_100122FD8;
          v261 = &unk_1001DF318;
          v262 = &v232;
          sub_100122FD8(buf);
          v19 = v233[3];
        }

        v20 = v19;
        _Block_object_dispose(&v232, 8);
        if (v19)
        {
          v21 = objc_alloc_init(v19);
          v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v21 state] == 2);
          [v186 setObject:v22 forKey:@"restore-in-progress"];
        }

        v23 = sub_1000A760C(0, @"cloud-library-update-request", 0, v186, 60.0);
        [(CloudUpdateLibraryOperation *)self setUpdateRequest:v23];

        updateRequest = [(CloudUpdateLibraryOperation *)self updateRequest];
        LODWORD(v23) = updateRequest == 0;

        v25 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (v23)
        {
          if (v26)
          {
            *buf = 138543362;
            *&buf[4] = self;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ - Error creating updateRequest.", buf, 0xCu);
          }

          v4 = 0;
          goto LABEL_101;
        }

        if (v26)
        {
          updateRequest2 = [(CloudUpdateLibraryOperation *)self updateRequest];
          v28 = objc_opt_class();
          v29 = v28;
          updateRequest3 = [(CloudUpdateLibraryOperation *)self updateRequest];
          *buf = 138543874;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v28;
          *&buf[22] = 2048;
          v261 = updateRequest3;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ - Sending upload library request: <%{public}@ %p>", buf, 0x20u);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v261 = sub_10011EA78;
        v262 = sub_10011EA88;
        v263 = 0;
        v232 = 0;
        v233 = &v232;
        v234 = 0x3032000000;
        v235 = sub_10011EA78;
        v236 = sub_10011EA88;
        v237 = 0;
        v230[0] = 0;
        v230[1] = v230;
        v230[2] = 0x3032000000;
        v230[3] = sub_10011EA78;
        v230[4] = sub_10011EA88;
        v231 = 0;
        v31 = dispatch_semaphore_create(0);
        updateRequest4 = [(CloudUpdateLibraryOperation *)self updateRequest];
        v225[0] = _NSConcreteStackBlock;
        v225[1] = 3221225472;
        v225[2] = sub_1001231C4;
        v225[3] = &unk_1001DED08;
        v227 = buf;
        v228 = &v232;
        v229 = v230;
        dsema = v31;
        v226 = dsema;
        [updateRequest4 startGeniusRequestWithRetryTimeout:@"libraryUpdateRequest" debugName:v225 connectionResponseBlock:300.0];

        dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
        v33 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = objc_opt_class();
          v35 = *(*&buf[8] + 40);
          *v247 = 138543874;
          *&v247[4] = self;
          *&v247[12] = 2114;
          *&v247[14] = v34;
          *&v247[22] = 2048;
          v248 = v35;
          v36 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ - Got upload library response: <%{public}@ %p>", v247, 0x20u);
        }

        [(CloudUpdateLibraryOperation *)self setUpdateRequest:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v37 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = v233[5];
            *v247 = 138543618;
            *&v247[4] = self;
            *&v247[12] = 2114;
            *&v247[14] = v38;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ - Upload library response body: %{public}@", v247, 0x16u);
          }

          v39 = [v233[5] objectForKey:@"url"];
          if (v39)
          {
            v177 = [NSURL URLWithString:v39];
          }

          else
          {
            v177 = 0;
          }

          v181 = [v233[5] objectForKey:@"update-id"];

          if (v177)
          {
            v40 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *v247 = 138543618;
              *&v247[4] = self;
              *&v247[12] = 2114;
              *&v247[14] = v177;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ - Determined upload URL: %{public}@", v247, 0x16u);
            }

            v41 = NSTemporaryDirectory();
            v259[0] = v41;
            v259[1] = @"CloudLibraryUpload.plist";
            v42 = [NSArray arrayWithObjects:v259 count:2];
            v176 = [NSURL fileURLWithPathComponents:v42];

            v43 = +[NSFileManager defaultManager];
            path = [v176 path];
            [v43 createFileAtPath:path contents:0 attributes:0];

            v224 = 0;
            v174 = [NSFileHandle fileHandleForWritingToURL:v176 error:&v224];
            v45 = v224;
            v46 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            v47 = v46;
            v173 = v45;
            if (v45)
            {
              v175 = v46;
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                *v247 = 138543618;
                *&v247[4] = self;
                *&v247[12] = 2114;
                *&v247[14] = v45;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to open file for writing library upload metadata plist with error: %{public}@", v247, 0x16u);
              }

              v4 = 0;
            }

            else
            {
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                path2 = [v176 path];
                *v247 = 138543618;
                *&v247[4] = self;
                *&v247[12] = 2114;
                *&v247[14] = path2;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%{public}@ - Writing library upload metadata to plist at: %{public}@", v247, 0x16u);
              }

              v50 = [[MSVPropertyListEncoder alloc] initWithOutputFileHandle:v174];
              [v50 startDictionary];
              cuid2 = [(CloudUpdateLibraryOperation *)self cuid];
              [v50 setObject:cuid2 forKey:@"cuid"];

              troveID2 = [(CloudUpdateLibraryOperation *)self troveID];
              [v50 setObject:troveID2 forKey:@"troveid"];

              [v50 setObject:&off_1001EDD80 forKey:@"min-itunes-match-compatible-version"];
              [v50 setObject:&off_1001EDD98 forKey:@"itunes-match-protocol-version"];
              [v50 setObject:&off_1001EDD80 forKey:@"min-compatible-version"];
              [v50 setObject:&off_1001EDD80 forKey:@"protocol-version"];
              v53 = arc4random();
              v54 = [NSString stringWithFormat:@"%08X%08X", v53, arc4random()];
              [v50 setObject:v54 forKey:@"persistent-library-id"];

              v55 = [NSNumber numberWithBool:v178];
              [v50 setObject:v55 forKey:@"should-upload"];

              [v50 startArrayForKey:@"tracks"];
              v167 = objc_autoreleasePoolPush();
              v56 = objc_alloc_init(CloudGeniusUtilities);
              v258[0] = v9;
              v258[1] = ML3TrackPropertyBaseLocationID;
              v258[2] = ML3TrackPropertyStoreProtectionType;
              v258[3] = ML3TrackPropertyUserRatingIsDerived;
              v258[4] = ML3TrackPropertyUserAlbumRatingIsDerived;
              v57 = [NSArray arrayWithObjects:v258 count:5];
              allML3TrackPropertiesWithGeniusTrackProperties = [(CloudGeniusUtilities *)v56 allML3TrackPropertiesWithGeniusTrackProperties];
              v59 = [allML3TrackPropertiesWithGeniusTrackProperties arrayByAddingObjectsFromArray:v57];
              v172 = v57;

              v60 = [v59 count];
              v61 = [v57 count];
              allGeniusTrackPropertiesWithML3TrackProperties = [(CloudGeniusUtilities *)v56 allGeniusTrackPropertiesWithML3TrackProperties];
              v257[0] = @"persistent-id";
              v257[1] = @"kind";
              v63 = [NSArray arrayWithObjects:v257 count:2];
              v171 = [allGeniusTrackPropertiesWithML3TrackProperties arrayByAddingObjectsFromArray:v63];

              [NSDictionary sharedKeySetForKeys:v171];
              v218[0] = _NSConcreteStackBlock;
              v218[1] = 3221225472;
              v218[2] = sub_100123294;
              v218[3] = &unk_1001DED30;
              v166 = v218[4] = self;
              v219 = v166;
              v223 = v60 - v61;
              v220 = v59;
              v170 = v56;
              v221 = v170;
              v175 = v50;
              v222 = v175;
              v165 = v220;
              [v185 enumeratePersistentIDsAndProperties:v220 usingBlock:v218];
              [v175 endArray];
              context = objc_autoreleasePoolPush();
              if (v178)
              {
                [v175 setObject:&__kCFBooleanTrue forKey:@"process-playlists"];
                [v175 startArrayForKey:@"playlists"];
                v64 = ML3ContainerPropertyDistinguishedKind;
                v179 = [ML3ComparisonPredicate predicateWithProperty:"predicateWithProperty:equalToInteger:" equalToInteger:?];
                v255[0] = v179;
                v163 = [ML3ComparisonPredicate predicateWithProperty:v64 value:&off_1001EDDB0 comparison:4];
                v254[0] = v163;
                v161 = [ML3ComparisonPredicate predicateWithProperty:v64 value:&off_1001EDDC8 comparison:6];
                v254[1] = v161;
                v159 = [NSArray arrayWithObjects:v254 count:2];
                v158 = [ML3AllCompoundPredicate predicateMatchingPredicates:v159];
                v255[1] = v158;
                v157 = [NSArray arrayWithObjects:v255 count:2];
                v65 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v157];
                v256[0] = v65;
                v66 = ML3ContainerPropertyContainedMediaType;
                v67 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyContainedMediaType equalToInteger:0];
                v253[0] = v67;
                v68 = [ML3ComparisonPredicate predicateWithProperty:v66 value:&off_1001EDD68 comparison:10];
                v253[1] = v68;
                v69 = [NSArray arrayWithObjects:v253 count:2];
                v70 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v69];
                v256[1] = v70;
                v71 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyIsHidden equalToInteger:0];
                v256[2] = v71;
                v72 = [NSArray arrayWithObjects:v256 count:3];
                v156 = [ML3AllCompoundPredicate predicateMatchingPredicates:v72];

                musicLibrary3 = [(CloudLibraryOperation *)self musicLibrary];
                v74 = [ML3Container queryWithLibrary:musicLibrary3 predicate:v156];

                countOfEntities2 = [v74 countOfEntities];
                v76 = sub_10010275C();
                v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);
                if (countOfEntities2)
                {
                  if (v77)
                  {
                    *v247 = 138543874;
                    *&v247[4] = self;
                    *&v247[12] = 2048;
                    *&v247[14] = countOfEntities2;
                    *&v247[22] = 2114;
                    v248 = v74;
                    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%{public}@ - Found %lu playlists to upload from query: %{public}@", v247, 0x20u);
                  }

                  v252[0] = ML3ContainerPropertyCloudGlobalID;
                  v252[1] = ML3ContainerPropertyCloudIsSubscribed;
                  v252[2] = ML3ContainerPropertyCloudIsCuratorPlaylist;
                  v252[3] = ML3ContainerPropertyIsExternalVendorPlaylist;
                  v252[4] = ML3ContainerPropertySmartIsFolder;
                  v252[5] = ML3ContainerPropertySmartCriteria;
                  v252[6] = ML3ContainerPropertySmartIsGenius;
                  v252[7] = ML3ContainerPropertySeedItemPersistentID;
                  v252[8] = ML3ContainerPropertySmartIsDynamic;
                  v252[9] = ML3ContainerPropertySmartIsFiltered;
                  v252[10] = ML3ContainerPropertySmartIsLimited;
                  v252[11] = ML3ContainerPropertySmartLimitKind;
                  v252[12] = ML3ContainerPropertySmartEvaluationOrder;
                  v252[13] = ML3ContainerPropertySmartLimitOrder;
                  v252[14] = ML3ContainerPropertySmartLimitValue;
                  v252[15] = ML3ContainerPropertySmartEnabledOnly;
                  v252[16] = ML3ContainerPropertySmartReverseLimitOrder;
                  v252[17] = v64;
                  v76 = [NSArray arrayWithObjects:v252 count:18];
                  allML3ContainerPropertiesWithGeniusPlaylistProperties = [(CloudGeniusUtilities *)v170 allML3ContainerPropertiesWithGeniusPlaylistProperties];
                  v79 = [allML3ContainerPropertiesWithGeniusPlaylistProperties arrayByAddingObjectsFromArray:v76];

                  v80 = [v79 count];
                  v81 = [v76 count];
                  allGeniusPlaylistPropertiesWithML3ContainerProperties = [(CloudGeniusUtilities *)v170 allGeniusPlaylistPropertiesWithML3ContainerProperties];
                  v251[0] = @"persistent-id";
                  v251[1] = @"kind";
                  v251[2] = @"items";
                  v251[3] = @"data";
                  v83 = [NSArray arrayWithObjects:v251 count:4];
                  v84 = [allGeniusPlaylistPropertiesWithML3ContainerProperties arrayByAddingObjectsFromArray:v83];

                  [NSDictionary sharedKeySetForKeys:v84];
                  v85 = v80 - v81;
                  v212[0] = _NSConcreteStackBlock;
                  v212[1] = 3221225472;
                  v212[2] = sub_100123548;
                  v212[3] = &unk_1001DED30;
                  v86 = v212[4] = self;
                  v213 = v86;
                  v217 = v85;
                  v87 = v79;
                  v214 = v87;
                  v215 = v170;
                  v216 = v175;
                  [v74 enumeratePersistentIDsAndProperties:v87 usingBlock:v212];
                }

                else if (v77)
                {
                  *v247 = 138543362;
                  *&v247[4] = self;
                  _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%{public}@ - Found zero playlists to upload.", v247, 0xCu);
                }
              }

              [v175 close];
              v88 = v176;
              v89 = [NSMutableURLRequest requestWithURL:v177];
              [v89 setHTTPMethod:@"POST"];
              [v89 setTimeoutInterval:120.0];
              v90 = v88;
              v91 = [v90 URLByAppendingPathExtension:@"gz"];
              v92 = os_log_create("com.apple.amp.itunescloudd", "Genius");
              if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
              {
                *v247 = 138543362;
                *&v247[4] = v91;
                _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Compressing plist to path: %{public}@", v247, 0xCu);
              }

              v93 = v90;
              if (MSVGzipCompressFile())
              {
                v93 = v91;
              }

              if (MSVDeviceOSIsInternalInstall())
              {
                v94 = MSVMediaLoggingDirectory();
                v95 = [NSURL fileURLWithPath:v94 isDirectory:1];

                lastPathComponent = [v93 lastPathComponent];
                v97 = [v95 URLByAppendingPathComponent:lastPathComponent isDirectory:0];

                v98 = +[NSFileManager defaultManager];
                path3 = [v97 path];
                v100 = [v98 fileExistsAtPath:path3];

                if (v100)
                {
                  [v98 removeItemAtURL:v97 error:0];
                }

                [v98 linkItemAtURL:v93 toURL:v97 error:0];
              }

              v101 = [NSData mappedDataWithContentsOfTemporaryFileURL:v93 error:0];

              [v89 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
              [v89 setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];
              [v89 setHTTPBody:v101];
              v102 = [ICStoreRequestContext alloc];
              v103 = +[ICUserIdentity activeAccount];
              v104 = [v102 initWithIdentity:v103];

              v105 = [[ICStoreURLRequest alloc] initWithURLRequest:v89 requestContext:v104];
              [v105 setShouldUseMescalSigning:1];

              [(CloudUpdateLibraryOperation *)self setUploadLibraryRequest:v105];
              objc_autoreleasePoolPop(context);
              *v247 = 0;
              *&v247[8] = v247;
              *&v247[16] = 0x3032000000;
              v248 = sub_10011EA78;
              v249 = sub_10011EA88;
              v250 = 0;
              v206 = 0;
              v207 = &v206;
              v208 = 0x3032000000;
              v209 = sub_10011EA78;
              v210 = sub_10011EA88;
              v211 = 0;
              v106 = dispatch_semaphore_create(0);
              v107 = +[ICURLSessionManager defaultSession];
              uploadLibraryRequest = [(CloudUpdateLibraryOperation *)self uploadLibraryRequest];
              v202[0] = _NSConcreteStackBlock;
              v202[1] = 3221225472;
              v202[2] = sub_100123D14;
              v202[3] = &unk_1001DED80;
              v204 = &v206;
              v205 = v247;
              v109 = v106;
              v203 = v109;
              [v107 enqueueDataRequest:uploadLibraryRequest withCompletionHandler:v202];

              dispatch_semaphore_wait(v109, 0xFFFFFFFFFFFFFFFFLL);
              urlResponse = [v207[5] urlResponse];
              LODWORD(v107) = [urlResponse statusCode] == 200;

              if (v107)
              {
                v111 = dbl_10016AE50[countOfEntities > 0x2710];
                v201 = -1;
                v112 = [(CloudUpdateLibraryOperation *)self _determineResultsURLWhenReadyWithUpdateID:v181 retryTimeout:&v201 responseStatusCode:v111];
                [(CloudUpdateLibraryOperation *)self setUploadResponseStatus:v201];
                v113 = sub_10010275C();
                if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
                {
                  *v243 = 138543618;
                  *&v243[4] = self;
                  *&v243[12] = 2114;
                  *&v243[14] = v112;
                  _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "%{public}@ - Determined results URL: %{public}@", v243, 0x16u);
                }

                if (v112)
                {
                  v114 = [NSMutableDictionary dictionaryWithObjectsAndKeys:&off_1001EDD80, @"min-itunes-match-compatible-version", &off_1001EDD98, @"itunes-match-protocol-version", 0];
                  v115 = sub_1000A760C(v112, 0, 0, v114, 120.0);
                  [(CloudUpdateLibraryOperation *)self setGetResultsRequest:v115];
                  v180 = v114;

                  *v243 = 0;
                  *&v243[8] = v243;
                  *&v243[16] = 0x3032000000;
                  v244 = sub_10011EA78;
                  v245 = sub_10011EA88;
                  v246 = 0;
                  v195 = 0;
                  v196 = &v195;
                  v197 = 0x3032000000;
                  v198 = sub_10011EA78;
                  v199 = sub_10011EA88;
                  v200 = 0;
                  v116 = +[ICURLSessionManager defaultSession];
                  getResultsRequest = [(CloudUpdateLibraryOperation *)self getResultsRequest];
                  v191[0] = _NSConcreteStackBlock;
                  v191[1] = 3221225472;
                  v191[2] = sub_100123DB0;
                  v191[3] = &unk_1001DED80;
                  v193 = &v195;
                  v194 = v243;
                  v118 = v109;
                  v192 = v118;
                  [v116 enqueueDataRequest:getResultsRequest withCompletionHandler:v191];

                  dispatch_semaphore_wait(v118, 0xFFFFFFFFFFFFFFFFLL);
                  [(CloudUpdateLibraryOperation *)self setGetResultsRequest:0];
                  urlResponse2 = [v196[5] urlResponse];
                  v120 = [urlResponse2 statusCode] == 200;

                  if (v120)
                  {
                    bodyData = [v196[5] bodyData];
                    if (bodyData)
                    {
                      v121 = NSTemporaryDirectory();
                      v242[0] = v121;
                      v242[1] = @"com.apple.MediaServices";
                      v122 = +[NSUUID UUID];
                      uUIDString = [v122 UUIDString];
                      v242[2] = uUIDString;
                      v242[3] = @"CloudLibraryUploadResults.plist";
                      v124 = [NSArray arrayWithObjects:v242 count:4];
                      v184 = [NSURL fileURLWithPathComponents:v124];

                      contexta = +[NSFileManager defaultManager];
                      uRLByDeletingLastPathComponent = [v184 URLByDeletingLastPathComponent];
                      [contexta createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

                      path4 = [v184 path];
                      [contexta createFileAtPath:path4 contents:0 attributes:0];

                      v127 = *(*&v247[8] + 40);
                      *(*&v247[8] + 40) = 0;

                      v128 = (*&v247[8] + 40);
                      obj = *(*&v247[8] + 40);
                      v162 = [NSFileHandle fileHandleForWritingToURL:v184 error:&obj];
                      objc_storeStrong(v128, obj);
                      if (v162)
                      {
                        [v162 writeData:bodyData];
                        [v162 closeFile];
                        v129 = sub_10010275C();
                        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
                        {
                          path5 = [v184 path];
                          *v240 = 138543618;
                          *&v240[4] = self;
                          *&v240[12] = 2114;
                          *&v240[14] = path5;
                          _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "%{public}@ - Saved results plist to: %{public}@", v240, 0x16u);
                        }

                        if (MSVDeviceOSIsInternalInstall())
                        {
                          v131 = MSVMediaLoggingDirectory();
                          v132 = [NSURL fileURLWithPath:v131 isDirectory:1];

                          lastPathComponent2 = [v184 lastPathComponent];
                          v134 = [v132 URLByAppendingPathComponent:lastPathComponent2 isDirectory:0];

                          path6 = [v134 path];
                          v136 = [contexta fileExistsAtPath:path6];

                          if (v136)
                          {
                            [contexta removeItemAtURL:v134 error:0];
                          }

                          [contexta linkItemAtURL:v184 toURL:v134 error:0];
                        }

                        path7 = [v184 path];
                        v160 = [path7 dataUsingEncoding:4];

                        v138 = [ML3DatabaseImport alloc];
                        musicLibrary4 = [(CloudLibraryOperation *)self musicLibrary];
                        databasePath = [musicLibrary4 databasePath];
                        clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
                        v142 = [v138 initWithLibraryPath:databasePath trackData:v160 playlistData:v160 clientIdentity:clientIdentity];

                        *v240 = 0;
                        *&v240[8] = v240;
                        *&v240[16] = 0x2020000000;
                        LOBYTE(v241) = 0;
                        v143 = dispatch_semaphore_create(0);
                        v144 = +[MLMediaLibraryService sharedMediaLibraryService];
                        v187[0] = _NSConcreteStackBlock;
                        v187[1] = 3221225472;
                        v187[2] = sub_100123E4C;
                        v187[3] = &unk_1001DEDA8;
                        v187[4] = self;
                        v189 = v240;
                        v145 = v143;
                        v188 = v145;
                        [v144 performImport:v142 fromSource:9 withProgressBlock:0 completionHandler:v187];

                        dispatch_semaphore_wait(v145, 0xFFFFFFFFFFFFFFFFLL);
                        v4 = *(*&v240[8] + 24);
                        if ((v4 & 1) == 0)
                        {
                          v146 = sub_10010275C();
                          if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
                          {
                            *v238 = 138543362;
                            selfCopy = self;
                            _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "%{public}@ - Failed to import cloud-id mapping.", v238, 0xCu);
                          }
                        }

                        _Block_object_dispose(v240, 8);
                        v147 = v160;
                      }

                      else
                      {
                        v147 = sub_10010275C();
                        if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
                        {
                          *v240 = 138543362;
                          *&v240[4] = self;
                          _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_ERROR, "%{public}@ - Received empty response when getting match results.", v240, 0xCu);
                        }

                        v4 = 0;
                      }

                      v152 = v184;
                    }

                    else
                    {
                      v152 = sub_10010275C();
                      if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
                      {
                        v153 = v196[5];
                        v154 = *(*&v243[8] + 40);
                        *v240 = 138543874;
                        *&v240[4] = self;
                        *&v240[12] = 2114;
                        *&v240[14] = v153;
                        *&v240[22] = 2114;
                        v241 = v154;
                        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_ERROR, "%{public}@ - Received non-200 response when getting match results: %{public}@ error: %{public}@", v240, 0x20u);
                      }

                      v4 = 0;
                    }

                    v151 = bodyData;
                  }

                  else
                  {
                    v151 = sub_10010275C();
                    if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
                    {
                      *v240 = 138543362;
                      *&v240[4] = self;
                      _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to determined results URL", v240, 0xCu);
                    }

                    v4 = 0;
                  }

                  _Block_object_dispose(&v195, 8);
                  _Block_object_dispose(v243, 8);

                  v148 = v180;
                }

                else
                {
                  v148 = sub_10010275C();
                  if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
                  {
                    v149 = v207[5];
                    v150 = *(*&v247[8] + 40);
                    *v243 = 138543874;
                    *&v243[4] = self;
                    *&v243[12] = 2114;
                    *&v243[14] = v149;
                    *&v243[22] = 2114;
                    v244 = v150;
                    _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_ERROR, "%{public}@ - Received non-200 response when uploading library: %{public}@ error: %{public}@", v243, 0x20u);
                  }

                  v4 = 0;
                }
              }

              else
              {
                v4 = 1;
              }

              [(CloudUpdateLibraryOperation *)self setUploadLibraryRequest:0];

              _Block_object_dispose(&v206, 8);
              _Block_object_dispose(v247, 8);

              objc_autoreleasePoolPop(v167);
            }

            v48 = v177;
LABEL_100:

            _Block_object_dispose(v230, 8);
            _Block_object_dispose(&v232, 8);

            _Block_object_dispose(buf, 8);
LABEL_101:

            goto LABEL_102;
          }
        }

        else
        {
          v181 = 0;
        }

        v48 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *v247 = 138543362;
          *&v247[4] = self;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to determined upload URL, skipping upload", v247, 0xCu);
        }

        v4 = 0;
        goto LABEL_100;
      }

      v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = self;
        v8 = "%{public}@ - Setting should-upload to true because com.apple.itunescloudd:ForceLibraryUnification is set to YES";
        goto LABEL_11;
      }
    }

    v178 = 1;
    goto LABEL_13;
  }

  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - Skipping _uploadLibrary because com.apple.itunescloudd:DisableLibraryUpload is set to YES", buf, 0xCu);
  }

  v4 = 1;
LABEL_102:

  return v4;
}

- (BOOL)_ensureDeviceIsRegistered
{
  configuration = [(CloudLibraryOperation *)self configuration];
  v4 = sub_1000E54B0(configuration, [(CloudUpdateLibraryOperation *)self allowNoisyAuthPrompt], 0);

  if (v4)
  {
    musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
    sagaCloudLibraryCUID = [musicLibrary sagaCloudLibraryCUID];
    [(CloudUpdateLibraryOperation *)self setCuid:sagaCloudLibraryCUID];

    musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
    sagaCloudLibraryTroveID = [musicLibrary2 sagaCloudLibraryTroveID];
    [(CloudUpdateLibraryOperation *)self setTroveID:sagaCloudLibraryTroveID];
  }

  return v4;
}

- (void)main
{
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  sagaOnDiskDatabaseRevision = [musicLibrary sagaOnDiskDatabaseRevision];

  musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
  sagaInitiateClientResetSync = [musicLibrary2 sagaInitiateClientResetSync];

  [(ICDCloudMusicLibrarySagaUpdateTaskHelper *)self->_updateTaskHelper startingUpdateOperationForLibraryType:1 isInitialImport:sagaOnDiskDatabaseRevision == 0];
  musicLibrary3 = [(CloudLibraryOperation *)self musicLibrary];
  clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
  [musicLibrary3 setClientIdentity:clientIdentity];

  v9 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = ICCloudClientGetStringForRequestReason();
    *buf = 138544642;
    selfCopy11 = self;
    v87 = 2114;
    *v88 = v10;
    *&v88[8] = 1024;
    *&v88[10] = sagaOnDiskDatabaseRevision == 0;
    v89 = 1024;
    isExplicitUserAction = [(CloudUpdateLibraryOperation *)self isExplicitUserAction];
    v91 = 1024;
    allowNoisyAuthPrompt = [(CloudUpdateLibraryOperation *)self allowNoisyAuthPrompt];
    v93 = 1024;
    v94 = sagaInitiateClientResetSync;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating cloud library operation (reason = %{public}@), isInitialImport=%{BOOL}u, isExplicitUserAction=%{BOOL}u, allowNoisyAuthPrompt=%{BOOL}u, sagaClientInitiatedResetSync=%{BOOL}u", buf, 0x2Eu);
  }

  if (!sagaOnDiskDatabaseRevision)
  {
    v20 = sub_100004B8C();
    v21 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v22)
      {
        *buf = 138543362;
        selfCopy11 = self;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ - Skipping initial import on non standalone wOS platform", buf, 0xCu);
      }

      v84[0] = &off_1001EDC90;
      v83[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
      v83[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
      v23 = [NSNumber numberWithInteger:self->_reason];
      v84[1] = v23;
      v83[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
      v24 = [NSNumber numberWithBool:1];
      v84[2] = v24;
      v83[3] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
      v25 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
      v84[3] = v25;
      v26 = v84;
      v27 = v83;
LABEL_13:
      v28 = 4;
LABEL_42:
      v39 = [NSDictionary dictionaryWithObjects:v26 forKeys:v27 count:v28];

      goto LABEL_61;
    }

    if (v22)
    {
      *buf = 138543362;
      selfCopy11 = self;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ - Preparing for initial library update...", buf, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, ICCloudClientStartingInitialCloudLibraryImportNotification, 0, 0, 1u);
    if (sagaInitiateClientResetSync & 1 | ![(CloudUpdateLibraryOperation *)self uploadingLibraryIsSupported])
    {
      goto LABEL_23;
    }

    if ([(CloudUpdateLibraryOperation *)self _ensureDeviceIsRegistered])
    {
      if ([(CloudUpdateLibraryOperation *)self isCancelled])
      {
        v40 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy11 = self;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ - Cancelled after registering device", buf, 0xCu);
        }

        [(CloudLibraryOperation *)self setStatus:4];
        v80[0] = &off_1001EDCD8;
        v79[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
        v79[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
        v23 = [NSNumber numberWithInteger:self->_reason];
        v80[1] = v23;
        v79[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
        v24 = [NSNumber numberWithBool:1];
        v80[2] = v24;
        v79[3] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
        v25 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
        v80[3] = v25;
        v26 = v80;
        v27 = v79;
        goto LABEL_13;
      }

      if ([(CloudUpdateLibraryOperation *)self _uploadLibrary])
      {
        if ([(CloudUpdateLibraryOperation *)self isCancelled])
        {
          v44 = sub_10010275C();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            selfCopy11 = self;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%{public}@ - Cancelled after uploading library metadata", buf, 0xCu);
          }

          [(CloudLibraryOperation *)self setStatus:4];
          v74[0] = &off_1001EDCD8;
          v73[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
          v73[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
          v34 = [NSNumber numberWithInteger:self->_reason];
          v74[1] = v34;
          v73[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
          v35 = [NSNumber numberWithBool:1];
          v74[2] = v35;
          v73[3] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
          v36 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
          v74[3] = v36;
          v37 = v74;
          v38 = v73;
          goto LABEL_27;
        }

LABEL_23:
        [(CloudUpdateLibraryOperation *)self _prepareLibraryForInitialUpdate];
        if (![(CloudUpdateLibraryOperation *)self isCancelled])
        {
          goto LABEL_4;
        }

        v33 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy11 = self;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ - Cancelled after preparing library for cloud import", buf, 0xCu);
        }

        [(CloudLibraryOperation *)self setStatus:4];
        v72[0] = &off_1001EDCD8;
        v71[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
        v71[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
        v34 = [NSNumber numberWithInteger:self->_reason];
        v72[1] = v34;
        v71[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
        v35 = [NSNumber numberWithBool:1];
        v72[2] = v35;
        v71[3] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
        v36 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
        v72[3] = v36;
        v37 = v72;
        v38 = v71;
LABEL_27:
        v39 = [NSDictionary dictionaryWithObjects:v37 forKeys:v38 count:4];

        [(CloudUpdateLibraryOperation *)self _clearAllCloudIDs];
        goto LABEL_61;
      }

      if ([(CloudUpdateLibraryOperation *)self uploadResponseStatus]== 4011)
      {
        [(CloudLibraryOperation *)self setStatus:3];
        v53 = sub_10010275C();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          uploadResponseStatus = [(CloudUpdateLibraryOperation *)self uploadResponseStatus];
          *buf = 138543618;
          selfCopy11 = self;
          v87 = 1024;
          *v88 = uploadResponseStatus;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%{public}@ - self.uploadResponseStatus=%d, treating as a hard failure", buf, 0x12u);
        }

        v78[0] = &off_1001EDCA8;
        v77[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
        v77[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
        v23 = [NSNumber numberWithInteger:self->_reason];
        v78[1] = v23;
        v77[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
        v24 = [NSNumber numberWithBool:1];
        v78[2] = v24;
        v78[3] = &off_1001EDCF0;
        v77[3] = @"ICDCloudMusicLibraryProgressPermanentFailureTypeKey";
        v77[4] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
        v25 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
        v78[4] = v25;
        v26 = v78;
        v27 = v77;
      }

      else
      {
        [(CloudLibraryOperation *)self setStatus:5];
        v55 = sub_10010275C();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          uploadResponseStatus2 = [(CloudUpdateLibraryOperation *)self uploadResponseStatus];
          *buf = 138543618;
          selfCopy11 = self;
          v87 = 1024;
          *v88 = uploadResponseStatus2;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}@ - self.uploadResponseStatus=%d, treating as a temporary failure", buf, 0x12u);
        }

        v76[0] = &off_1001EDD08;
        v75[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
        v75[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
        v23 = [NSNumber numberWithInteger:self->_reason];
        v76[1] = v23;
        v75[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
        v24 = [NSNumber numberWithBool:1];
        v76[2] = v24;
        v76[3] = &off_1001EDD20;
        v75[3] = @"ICDCloudMusicLibraryProgressTemporaryFialureTypeKey";
        v75[4] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
        v25 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
        v76[4] = v25;
        v26 = v76;
        v27 = v75;
      }
    }

    else
    {
      v43 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy11 = self;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to register device, bailing on initial library update", buf, 0xCu);
      }

      [(CloudLibraryOperation *)self setStatus:3];
      v82[0] = &off_1001EDCA8;
      v81[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
      v81[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
      v23 = [NSNumber numberWithInteger:self->_reason];
      v82[1] = v23;
      v81[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
      v24 = [NSNumber numberWithBool:1];
      v82[2] = v24;
      v82[3] = &off_1001EDCC0;
      v81[3] = @"ICDCloudMusicLibraryProgressPermanentFailureTypeKey";
      v81[4] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
      v25 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
      v82[4] = v25;
      v26 = v82;
      v27 = v81;
    }

    v28 = 5;
    goto LABEL_42;
  }

LABEL_4:
  self->_didSubscriptionStatusLapse = 0;
  self->_didEncounterFatalErrorImportingPayload = 0;
  _updateLibrary = [(CloudUpdateLibraryOperation *)self _updateLibrary];
  v12 = +[ICDefaults standardDefaults];
  if ([v12 shouldTreatSubscriptionStatusAsExpired])
  {
    v13 = MSVDeviceOSIsInternalInstall();

    if (v13)
    {
      v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy11 = self;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - shouldTreatSubscriptionStatusAsExpired is set. Will force subscription status to be expired", buf, 0xCu);
      }

      [(CloudLibraryOperation *)self setStatus:3];
      v70[0] = &off_1001EDCA8;
      v69[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
      v69[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
      v15 = [NSNumber numberWithInteger:self->_reason];
      v70[1] = v15;
      v69[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
      v16 = [NSNumber numberWithBool:sagaOnDiskDatabaseRevision == 0];
      v70[2] = v16;
      v70[3] = &off_1001EDD20;
      v69[3] = @"ICDCloudMusicLibraryProgressPermanentFailureTypeKey";
      v69[4] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
      v17 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
      v70[4] = v17;
      v18 = v70;
      v19 = v69;
      goto LABEL_19;
    }
  }

  else
  {
  }

  if ((_updateLibrary & 1) == 0)
  {
    if (!self->_didSubscriptionStatusLapse)
    {
      if (sagaOnDiskDatabaseRevision)
      {
        [(CloudLibraryOperation *)self setStatus:5];
        v60[0] = &off_1001EDD08;
        v59[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
        v59[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
        v15 = [NSNumber numberWithInteger:self->_reason];
        v60[1] = v15;
        v59[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
        v16 = [NSNumber numberWithBool:0];
        v60[2] = v16;
        v59[3] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
        v17 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
        v60[3] = v17;
        v29 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:4];
        v30 = @"load initial cloud library";
      }

      else
      {
        if (self->_didEncounterFatalErrorImportingPayload)
        {
          if (MSVDeviceSupportsMultipleLibraries())
          {
            [(CloudLibraryOperation *)self setStatus:5];
            v66[0] = &off_1001EDD08;
            v65[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
            v65[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
            v15 = [NSNumber numberWithInteger:self->_reason];
            v66[1] = v15;
            v65[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
            v16 = [NSNumber numberWithBool:1];
            v66[2] = v16;
            v66[3] = &off_1001EDD38;
            v65[3] = @"ICDCloudMusicLibraryProgressTemporaryFialureTypeKey";
            v65[4] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
            v17 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
            v66[4] = v17;
            v41 = v66;
            v42 = v65;
          }

          else
          {
            [(CloudLibraryOperation *)self setStatus:3];
            v64[0] = &off_1001EDCA8;
            v63[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
            v63[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
            v15 = [NSNumber numberWithInteger:self->_reason];
            v64[1] = v15;
            v63[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
            v16 = [NSNumber numberWithBool:1];
            v64[2] = v16;
            v64[3] = &off_1001EDD50;
            v63[3] = @"ICDCloudMusicLibraryProgressPermanentFailureTypeKey";
            v63[4] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
            v17 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
            v64[4] = v17;
            v41 = v64;
            v42 = v63;
          }
        }

        else
        {
          [(CloudLibraryOperation *)self setStatus:5];
          v62[0] = &off_1001EDD08;
          v61[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
          v61[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
          v15 = [NSNumber numberWithInteger:self->_reason];
          v62[1] = v15;
          v61[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
          v16 = [NSNumber numberWithBool:1];
          v62[2] = v16;
          v62[3] = &off_1001EDD38;
          v61[3] = @"ICDCloudMusicLibraryProgressTemporaryFialureTypeKey";
          v61[4] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
          v17 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
          v62[4] = v17;
          v41 = v62;
          v42 = v61;
        }

        v29 = [NSDictionary dictionaryWithObjects:v41 forKeys:v42 count:5];
        v30 = @"load initial cloud library - isInitialImport";
      }

      goto LABEL_51;
    }

    [(CloudLibraryOperation *)self setStatus:3];
    v68[0] = &off_1001EDCA8;
    v67[0] = @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey";
    v67[1] = @"ICDCloudMusicLibraryProgressRequestReasonKey";
    v15 = [NSNumber numberWithInteger:self->_reason];
    v68[1] = v15;
    v67[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
    v16 = [NSNumber numberWithBool:sagaOnDiskDatabaseRevision == 0];
    v68[2] = v16;
    v68[3] = &off_1001EDD20;
    v67[3] = @"ICDCloudMusicLibraryProgressPermanentFailureTypeKey";
    v67[4] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
    v17 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
    v68[4] = v17;
    v18 = v68;
    v19 = v67;
LABEL_19:
    v29 = [NSDictionary dictionaryWithObjects:v18 forKeys:v19 count:5];
    v30 = @"subscription lapsed";
LABEL_51:

    v31 = 0;
    goto LABEL_52;
  }

  v29 = 0;
  v30 = 0;
  v31 = 1;
LABEL_52:
  v45 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    status = [(CloudLibraryOperation *)self status];
    *buf = 138543874;
    selfCopy11 = self;
    v87 = 1024;
    *v88 = status;
    *&v88[4] = 2114;
    *&v88[6] = v30;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%{public}@ - finished with status=%d, failureReason=%{public}@", buf, 0x1Cu);
  }

  if (v31)
  {
    v58[0] = &off_1001EDC90;
    v47 = [NSNumber numberWithInteger:self->_reason, @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey", @"ICDCloudMusicLibraryProgressRequestReasonKey"];
    v58[1] = v47;
    v57[2] = @"ICDCloudMusicLibraryProgressWasInitialImportKey";
    v48 = [NSNumber numberWithBool:sagaOnDiskDatabaseRevision == 0];
    v58[2] = v48;
    v57[3] = @"ICDCloudMusicLibraryProgressWasExplicitUserActionKey";
    v49 = [NSNumber numberWithBool:[(CloudUpdateLibraryOperation *)self isExplicitUserAction]];
    v58[3] = v49;
    v39 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:4];

    if (!sagaOnDiskDatabaseRevision)
    {
      v50 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(v50, ICCloudClientInitialCloudLibraryImportCompletedNotification, 0, 0, 1u);
    }
  }

  else
  {
    if (!sagaOnDiskDatabaseRevision && [(CloudLibraryOperation *)self status]== 3)
    {
      [(CloudUpdateLibraryOperation *)self _clearAllCloudIDs];
    }

    v39 = v29;
  }

LABEL_61:
  musicLibrary4 = [(CloudLibraryOperation *)self musicLibrary];
  v52 = MSVTCCIdentityForCurrentProcess();
  [musicLibrary4 setClientIdentity:v52];

  [(ICDCloudMusicLibrarySagaUpdateTaskHelper *)self->_updateTaskHelper finishedUpdateOperationForLibraryType:1 withResponse:v39];
}

- (void)cancel
{
  v3 = +[ICURLSessionManager defaultSession];
  uploadLibraryRequest = [(CloudUpdateLibraryOperation *)self uploadLibraryRequest];

  if (uploadLibraryRequest)
  {
    uploadLibraryRequest2 = [(CloudUpdateLibraryOperation *)self uploadLibraryRequest];
    [v3 cancelRequest:uploadLibraryRequest2];
  }

  getResultsRequest = [(CloudUpdateLibraryOperation *)self getResultsRequest];

  if (getResultsRequest)
  {
    getResultsRequest2 = [(CloudUpdateLibraryOperation *)self getResultsRequest];
    [v3 cancelRequest:getResultsRequest2];
  }

  importer = [(CloudUpdateLibraryOperation *)self importer];
  [importer cancel];

  v9.receiver = self;
  v9.super_class = CloudUpdateLibraryOperation;
  [(CloudUpdateLibraryOperation *)&v9 cancel];
}

- (void)dealloc
{
  [(CloudUpdateLibraryOperation *)self cancel];
  v3.receiver = self;
  v3.super_class = CloudUpdateLibraryOperation;
  [(CloudUpdateLibraryOperation *)&v3 dealloc];
}

- (CloudUpdateLibraryOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity reason:(int64_t)reason updateTaskHelper:(id)helper
{
  helperCopy = helper;
  v15.receiver = self;
  v15.super_class = CloudUpdateLibraryOperation;
  v12 = [(CloudLibraryOperation *)&v15 initWithConfiguration:configuration clientIdentity:identity];
  v13 = v12;
  if (v12)
  {
    v12->_reason = reason;
    objc_storeStrong(&v12->_updateTaskHelper, helper);
  }

  return v13;
}

@end
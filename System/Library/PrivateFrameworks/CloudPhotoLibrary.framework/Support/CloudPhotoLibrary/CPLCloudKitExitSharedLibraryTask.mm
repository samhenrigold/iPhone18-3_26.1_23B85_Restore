@interface CPLCloudKitExitSharedLibraryTask
+ (NSDictionary)exitStageMapping;
- (CPLCloudKitExitSharedLibraryTask)initWithController:(id)controller cloudKitScope:(id)scope scope:(id)a5 share:(id)share retentionPolicy:(int64_t)policy exitType:(int64_t)type exitSource:(int64_t)source userIdentifiersToRemove:(id)self0 participantIDsToRemove:(id)self1 completionHandler:(id)self2;
- (id)initRemoveParticipantsWithController:(id)controller cloudKitScope:(id)scope scope:(id)a5 share:(id)share userIdentifiersToRemove:(id)remove participantIDsToRemove:(id)toRemove retentionPolicy:(int64_t)policy exitSource:(int64_t)self0 completionHandler:(id)self1;
- (id)initSelfExitWithController:(id)controller cloudKitScope:(id)scope scope:(id)a5 share:(id)share retentionPolicy:(int64_t)policy exitSource:(int64_t)source completionHandler:(id)handler;
- (void)_reallyExit;
- (void)runOperations;
@end

@implementation CPLCloudKitExitSharedLibraryTask

+ (NSDictionary)exitStageMapping
{
  if (qword_1002C5670 != -1)
  {
    sub_1001AEE98();
  }

  v3 = qword_1002C5668;

  return v3;
}

- (CPLCloudKitExitSharedLibraryTask)initWithController:(id)controller cloudKitScope:(id)scope scope:(id)a5 share:(id)share retentionPolicy:(int64_t)policy exitType:(int64_t)type exitSource:(int64_t)source userIdentifiersToRemove:(id)self0 participantIDsToRemove:(id)self1 completionHandler:(id)self2
{
  scopeCopy = scope;
  v32 = a5;
  shareCopy = share;
  removeCopy = remove;
  toRemoveCopy = toRemove;
  handlerCopy = handler;
  v34.receiver = self;
  v34.super_class = CPLCloudKitExitSharedLibraryTask;
  v22 = [(CPLCloudKitTransportTask *)&v34 initWithController:controller];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_cloudKitScope, scope);
    objc_storeStrong(&v23->_scope, a5);
    objc_storeStrong(&v23->_share, share);
    v23->_retentionPolicy = policy;
    v23->_exitType = type;
    v23->_exitSource = source;
    v24 = [removeCopy copy];
    userIdentifiersToRemove = v23->_userIdentifiersToRemove;
    v23->_userIdentifiersToRemove = v24;

    v26 = [toRemoveCopy copy];
    participantIDsToRemove = v23->_participantIDsToRemove;
    v23->_participantIDsToRemove = v26;

    v28 = [handlerCopy copy];
    completionHandler = v23->_completionHandler;
    v23->_completionHandler = v28;
  }

  return v23;
}

- (id)initSelfExitWithController:(id)controller cloudKitScope:(id)scope scope:(id)a5 share:(id)share retentionPolicy:(int64_t)policy exitSource:(int64_t)source completionHandler:(id)handler
{
  v13 = a5;
  handlerCopy = handler;
  shareCopy = share;
  scopeCopy = scope;
  controllerCopy = controller;
  currentUserParticipant = [shareCopy currentUserParticipant];
  owner = [shareCopy owner];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000AD974;
  v27[3] = &unk_100276D68;
  v30 = handlerCopy;
  v31 = a2;
  v32 = 2 * (currentUserParticipant == owner);
  selfCopy = self;
  v29 = v13;
  v19 = v13;
  v20 = handlerCopy;
  v21 = [(CPLCloudKitExitSharedLibraryTask *)selfCopy initWithController:controllerCopy cloudKitScope:scopeCopy scope:v19 share:shareCopy retentionPolicy:policy exitType:v32 exitSource:source userIdentifiersToRemove:&__NSArray0__struct participantIDsToRemove:&__NSArray0__struct completionHandler:v27];

  return v21;
}

- (id)initRemoveParticipantsWithController:(id)controller cloudKitScope:(id)scope scope:(id)a5 share:(id)share userIdentifiersToRemove:(id)remove participantIDsToRemove:(id)toRemove retentionPolicy:(int64_t)policy exitSource:(int64_t)self0 completionHandler:(id)self1
{
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000ADFC0;
  v21[3] = &unk_100273078;
  handlerCopy = handler;
  v17 = handlerCopy;
  v18 = [(CPLCloudKitExitSharedLibraryTask *)self initWithController:controller cloudKitScope:scope scope:a5 share:share retentionPolicy:policy exitType:1 exitSource:source userIdentifiersToRemove:remove participantIDsToRemove:toRemove completionHandler:v21];

  return v18;
}

- (void)_reallyExit
{
  v59 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v59];
  v4 = v59;
  v5 = v4;
  if ((v3 & 1) == 0)
  {
    (*(self->_completionHandler + 2))();
    goto LABEL_52;
  }

  exitSource = self->_exitSource;
  if (exitSource == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (exitSource == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v56 = v4;
    completionHandler = self->_completionHandler;
    v10 = +[CPLLibraryManager mappingExitSources];
    v11 = [NSNumber numberWithInteger:self->_exitSource];
    v12 = [v10 objectForKeyedSubscript:v11];
    v13 = v12;
    if (!v12)
    {
      v13 = [NSNumber numberWithInteger:self->_exitSource];
    }

    v14 = [CPLErrors cplErrorWithCode:50 description:@"%@ is not a valid exit source to request", v13];
    completionHandler[2](completionHandler, 0, v14);

    v5 = v56;
    if (!v12)
    {
    }

    goto LABEL_52;
  }

  if (!self->_cloudKitScope)
  {
    scopeIdentifier = [(CPLEngineScope *)self->_scope scopeIdentifier];
    v16 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:scopeIdentifier];
    cloudKitScope = self->_cloudKitScope;
    self->_cloudKitScope = v16;

    if (!self->_cloudKitScope)
    {
      sub_1001AF3A8(&self->_scope, self);
      goto LABEL_52;
    }
  }

  exitType = self->_exitType;
  if (exitType == 2)
  {
    currentUserParticipant = [(CPLShare *)self->_share currentUserParticipant];
    owner = [(CPLShare *)self->_share owner];
    v21 = owner;
    if (currentUserParticipant)
    {
      if (currentUserParticipant == owner)
      {
        userIdentifier = [currentUserParticipant userIdentifier];
        v73 = userIdentifier;
        v23 = &v73;
        goto LABEL_29;
      }

      sub_1001AF138(self);
LABEL_62:
      v24 = 0;
      v5 = *buf;
LABEL_30:

      if (v24)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

LABEL_58:
    sub_1001AF208(self);
    goto LABEL_62;
  }

  if (exitType != 1)
  {
    if (exitType)
    {
      if (self->_participantIDsToRemove)
      {
        v55 = v8;
        v5 = 0;
        goto LABEL_34;
      }

      v52 = self->_completionHandler;
LABEL_56:
      v53 = +[CPLErrors unknownError];
      v52[2](v52, 0, v53);

      v5 = 0;
      goto LABEL_52;
    }

    currentUserParticipant = [(CPLShare *)self->_share currentUserParticipant];
    owner2 = [(CPLShare *)self->_share owner];
    v21 = owner2;
    if (currentUserParticipant)
    {
      if (currentUserParticipant != owner2)
      {
        userIdentifier = [currentUserParticipant userIdentifier];
        v74 = userIdentifier;
        v23 = &v74;
LABEL_29:
        v24 = [NSArray arrayWithObjects:v23 count:1];

        v5 = 0;
        goto LABEL_30;
      }

      sub_1001AF2D8(self);
      goto LABEL_62;
    }

    goto LABEL_58;
  }

  v24 = self->_userIdentifiersToRemove;
  v5 = 0;
  if (v24)
  {
LABEL_31:
    v54 = v24;
    v55 = v8;
    v57 = v24;
    goto LABEL_35;
  }

LABEL_24:
  if (!self->_participantIDsToRemove)
  {
    v52 = self->_completionHandler;
    if (v5)
    {
      v52[2](v52, 0, v5);
      goto LABEL_52;
    }

    goto LABEL_56;
  }

  v55 = v8;
LABEL_34:
  v57 = 0;
  v54 = &__NSArray0__struct;
LABEL_35:
  v26 = +[NSUserDefaults standardUserDefaults];
  v27 = [v26 integerForKey:@"CPLSharedLibraryExitStopAtStage"];

  v28 = +[CPLCloudKitExitSharedLibraryTask exitStageMapping];
  v29 = [NSNumber numberWithInteger:v27];
  v30 = [v28 objectForKeyedSubscript:v29];

  if (v30)
  {
    if (v27)
    {
      if (_CPLSilentLogging)
      {
        v33 = v55;
        goto LABEL_46;
      }

      v32 = sub_100003BC8(v31);
      v33 = v55;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        zoneID = [(CPLCloudKitScope *)self->_cloudKitScope zoneID];
        retentionPolicy = self->_retentionPolicy;
        v36 = self->_exitType;
        participantIDsToRemove = self->_participantIDsToRemove;
        *buf = 138413826;
        *&buf[4] = zoneID;
        v61 = 2048;
        v62 = retentionPolicy;
        v63 = 2048;
        v64 = v36;
        v65 = 2048;
        v66 = v55;
        v67 = 2112;
        v68 = v57;
        v69 = 2112;
        v70 = participantIDsToRemove;
        v71 = 2112;
        v72 = v30;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Exit shared library with zoneID %@ retention policy %ld exitType %ld exitSource %ld userIDs %@ participantIDs %@ [stop at %@]", buf, 0x48u);
      }

      goto LABEL_45;
    }
  }

  else
  {
    v38 = +[CPLCloudKitExitSharedLibraryTask exitStageMapping];
    v39 = [NSNumber numberWithInteger:0];
    v30 = [v38 objectForKeyedSubscript:v39];
  }

  v33 = v55;
  if (_CPLSilentLogging)
  {
    v27 = 0;
    goto LABEL_46;
  }

  v32 = sub_100003BC8(v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    zoneID2 = [(CPLCloudKitScope *)self->_cloudKitScope zoneID];
    v41 = self->_retentionPolicy;
    v42 = self->_exitType;
    v43 = self->_participantIDsToRemove;
    *buf = 138413570;
    *&buf[4] = zoneID2;
    v61 = 2048;
    v62 = v41;
    v63 = 2048;
    v64 = v42;
    v65 = 2048;
    v66 = v55;
    v67 = 2112;
    v68 = v57;
    v69 = 2112;
    v70 = v43;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Exit shared library with zoneID %@ retention policy %ld exitType %ld exitSource %ld userIDs %@ participantIDs %@", buf, 0x3Eu);
  }

  v27 = 0;
LABEL_45:

LABEL_46:
  zoneID3 = [(CPLCloudKitScope *)self->_cloudKitScope zoneID];
  v45 = self->_retentionPolicy;
  v46 = 2 * (v45 == 2);
  v47 = v45 == 1;
  v48 = self->_exitType;
  v49 = self->_participantIDsToRemove;
  if (v47)
  {
    v50 = 1;
  }

  else
  {
    v50 = v46;
  }

  if (!v49)
  {
    v49 = &__NSArray0__struct;
  }

  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_1000AEA00;
  v58[3] = &unk_100276D90;
  v58[4] = self;
  v51 = [CPLCKPhotosSharedLibraryOperation exitSharedLibraryOperationWithZoneID:zoneID3 retentionPolicy:v50 exitType:v48 exitSource:v33 stopAt:v27 participantUserIDsToRemove:v54 participantIDsToRemove:v49 completionHandler:v58];

  [(CPLCloudKitTransportTask *)self launchOperation:v51 type:CPLCloudKitOperationTypeForScope(self->_cloudKitScope) withContext:0];
LABEL_52:
}

- (void)runOperations
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000AEE7C;
  v2[3] = &unk_100274018;
  v2[4] = self;
  [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v2];
}

@end
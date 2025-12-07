@interface _RWPlanDB
+ (BOOL)_isFatalRestoreErrorToRecordInPlan:(id)plan;
- (BOOL)_recordFailure:(id)failure domainID:(unint64_t)d restoreType:(int)type inode:(id)inode restorableID:(id)iD error:(id *)error;
- (BOOL)_recordFatalFailure:(id)failure into:(id)into parentErrorID:(id)d domainID:(unint64_t)iD restoreType:(int)type inode:(id)inode restorableID:(id)restorableID error:(id *)self0;
- (BOOL)_recordRetryableFailure:(id)failure domainID:(unint64_t)d restoreType:(int)type inode:(id)inode restorableID:(id)iD error:(id *)error;
@end

@implementation _RWPlanDB

- (BOOL)_recordRetryableFailure:(id)failure domainID:(unint64_t)d restoreType:(int)type inode:(id)inode restorableID:(id)iD error:(id *)error
{
  failureCopy = failure;
  inodeCopy = inode;
  iDCopy = iD;
  if (!failureCopy)
  {
    __assert_rtn("[_RWPlanDB _recordRetryableFailure:domainID:restoreType:inode:restorableID:error:]", "MBRestorePlanDB.m", 2682, "failure");
  }

  if (!d)
  {
    __assert_rtn("[_RWPlanDB _recordRetryableFailure:domainID:restoreType:inode:restorableID:error:]", "MBRestorePlanDB.m", 2683, "domainID");
  }

  if (!error)
  {
    __assert_rtn("[_RWPlanDB _recordRetryableFailure:domainID:restoreType:inode:restorableID:error:]", "MBRestorePlanDB.m", 2684, "error");
  }

  v17 = iDCopy;
  domain = [failureCopy domain];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100274478;
  v25[3] = &unk_1003C2D68;
  code = [failureCopy code];
  dCopy = d;
  typeCopy = type;
  v26 = domain;
  v27 = inodeCopy;
  v28 = v17;
  v29 = failureCopy;
  v19 = failureCopy;
  v20 = v17;
  v21 = inodeCopy;
  v22 = domain;
  v23 = [(MBSQLiteDB *)self groupInTransaction:error transaction:v25];

  return v23;
}

- (BOOL)_recordFatalFailure:(id)failure into:(id)into parentErrorID:(id)d domainID:(unint64_t)iD restoreType:(int)type inode:(id)inode restorableID:(id)restorableID error:(id *)self0
{
  v11 = *&type;
  failureCopy = failure;
  intoCopy = into;
  dCopy = d;
  v19 = failureCopy;
  v37 = dCopy;
  inodeCopy = inode;
  restorableIDCopy = restorableID;
  if (!failureCopy)
  {
    __assert_rtn("[_RWPlanDB _recordFatalFailure:into:parentErrorID:domainID:restoreType:inode:restorableID:error:]", "MBRestorePlanDB.m", 2723, "failure");
  }

  if (!intoCopy)
  {
    __assert_rtn("[_RWPlanDB _recordFatalFailure:into:parentErrorID:domainID:restoreType:inode:restorableID:error:]", "MBRestorePlanDB.m", 2724, "pdb");
  }

  if (!iD)
  {
    __assert_rtn("[_RWPlanDB _recordFatalFailure:into:parentErrorID:domainID:restoreType:inode:restorableID:error:]", "MBRestorePlanDB.m", 2725, "domainID");
  }

  if (!error)
  {
    __assert_rtn("[_RWPlanDB _recordFatalFailure:into:parentErrorID:domainID:restoreType:inode:restorableID:error:]", "MBRestorePlanDB.m", 2726, "error");
  }

  v20 = [intoCopy _insertFailure:failureCopy domainID:iD restoreType:v11 inode:inodeCopy restorableID:restorableIDCopy error:error];
  v21 = v20;
  if (v20)
  {
    v22 = v37;
    if ([intoCopy executeWithError:error sql:{@"\nINSERT INTO FatalErrorRelationships (\nerrorID, parentErrorID\n) VALUES (%@, %@);", v20, v37}])
    {
      v36 = failureCopy;
      userInfo = [failureCopy userInfo];
      v24 = [userInfo objectForKeyedSubscript:@"kMBUnderlyingErrorsKey"];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v41;
        while (2)
        {
          v29 = v25;
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v41 != v28)
            {
              objc_enumerationMutation(v29);
            }

            if (![(_RWPlanDB *)self _recordFatalFailure:*(*(&v40 + 1) + 8 * i) into:intoCopy parentErrorID:v21 domainID:iD restoreType:v11 inode:inodeCopy restorableID:restorableIDCopy error:error])
            {
              v33 = 0;
              v25 = v29;
              v32 = v29;
              v19 = v36;
              goto LABEL_23;
            }
          }

          v25 = v29;
          v27 = [v29 countByEnumeratingWithState:&v40 objects:v44 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      v19 = v36;
      userInfo2 = [v36 userInfo];
      v32 = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

      v33 = !v32 || [(_RWPlanDB *)self _recordFatalFailure:v32 into:intoCopy parentErrorID:v21 domainID:iD restoreType:v11 inode:inodeCopy restorableID:restorableIDCopy error:error];
LABEL_23:

      v22 = v37;
    }

    else
    {
      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v34 = *error;
        *buf = 138412290;
        v46 = v34;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "=plan= Failed inserting into fatal relations table: %@", buf, 0xCu);
        _MBLog(@"E ", "=plan= Failed inserting into fatal relations table: %@", *error);
      }

      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
    v22 = v37;
  }

  return v33;
}

- (BOOL)_recordFailure:(id)failure domainID:(unint64_t)d restoreType:(int)type inode:(id)inode restorableID:(id)iD error:(id *)error
{
  v11 = *&type;
  failureCopy = failure;
  inodeCopy = inode;
  iDCopy = iD;
  if (!failureCopy)
  {
    __assert_rtn("[_RWPlanDB _recordFailure:domainID:restoreType:inode:restorableID:error:]", "MBRestorePlanDB.m", 2771, "failure");
  }

  if (!d)
  {
    __assert_rtn("[_RWPlanDB _recordFailure:domainID:restoreType:inode:restorableID:error:]", "MBRestorePlanDB.m", 2772, "domainID");
  }

  if (!error)
  {
    __assert_rtn("[_RWPlanDB _recordFailure:domainID:restoreType:inode:restorableID:error:]", "MBRestorePlanDB.m", 2773, "error");
  }

  v17 = iDCopy;
  if ([objc_opt_class() _isFatalRestoreErrorToRecordInPlan:failureCopy])
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100274A7C;
    v20[3] = &unk_1003C2D90;
    v20[4] = self;
    v21 = failureCopy;
    dCopy = d;
    v25 = v11;
    v22 = inodeCopy;
    v23 = v17;
    v18 = [(MBSQLiteDB *)self groupInTransaction:error transaction:v20];
  }

  else
  {
    v18 = [(_RWPlanDB *)self _recordRetryableFailure:failureCopy domainID:d restoreType:v11 inode:inodeCopy restorableID:v17 error:error];
  }

  return v18;
}

+ (BOOL)_isFatalRestoreErrorToRecordInPlan:(id)plan
{
  planCopy = plan;
  if ([MBError isRetryableRestoreError:planCopy]|| ([MBError isError:planCopy withCode:245]& 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [MBError isError:planCopy withCode:202]^ 1;
  }

  return v4;
}

@end
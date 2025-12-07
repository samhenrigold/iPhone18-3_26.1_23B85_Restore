@interface MBRestoreSnapshotIntegrityVerifier
+ (BOOL)shouldRunVerifierForRestoreWithSnapshotFormat:(int64_t)format account:(id)account;
- (BOOL)_verifyContainerizedDataAfterBackgroundRestore:(id)restore domainPlan:(id)plan error:(id *)error;
- (BOOL)_verifyDomain:(id)domain snapshotUUID:(id)d errors:(id)errors cancellationError:(id *)error pathForFile:(id)file;
- (BOOL)verifyContainerizedDataAfterBackgroundRestore:(id)restore domainPlan:(id)plan error:(id *)error;
- (BOOL)verifyIntermediateDirectoryAfterForegroundRestoreWithDomainManager:(id)manager plan:(id)plan overridePath:(id)path error:(id *)error;
- (MBRestoreSnapshotIntegrityVerifier)initWithPolicy:(id)policy snapshotFormat:(int64_t)format snapshotDir:(id)dir snapshotUUID:(id)d delegate:(id)delegate;
- (id)_domainNamesFromFileListWithCommitID:(id)d snapshotDir:(id)dir error:(id *)error;
- (id)_verifyRestoreMetadataForFile:(id)file localPath:(id)path fileList:(id)list;
@end

@implementation MBRestoreSnapshotIntegrityVerifier

- (MBRestoreSnapshotIntegrityVerifier)initWithPolicy:(id)policy snapshotFormat:(int64_t)format snapshotDir:(id)dir snapshotUUID:(id)d delegate:(id)delegate
{
  policyCopy = policy;
  dirCopy = dir;
  dCopy = d;
  delegateCopy = delegate;
  if (!policyCopy)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier initWithPolicy:snapshotFormat:snapshotDir:snapshotUUID:delegate:]", "MBSnapshotIntegrityVerifier.m", 86, "policy");
  }

  if (!dirCopy)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier initWithPolicy:snapshotFormat:snapshotDir:snapshotUUID:delegate:]", "MBSnapshotIntegrityVerifier.m", 87, "snapshotDir");
  }

  if (format == -1)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier initWithPolicy:snapshotFormat:snapshotDir:snapshotUUID:delegate:]", "MBSnapshotIntegrityVerifier.m", 88, "snapshotFormat != MBSnapshotFormatUnspecified");
  }

  if (!dCopy)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier initWithPolicy:snapshotFormat:snapshotDir:snapshotUUID:delegate:]", "MBSnapshotIntegrityVerifier.m", 89, "snapshotUUID");
  }

  v17 = delegateCopy;
  if (!delegateCopy)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier initWithPolicy:snapshotFormat:snapshotDir:snapshotUUID:delegate:]", "MBSnapshotIntegrityVerifier.m", 90, "delegate");
  }

  v24.receiver = self;
  v24.super_class = MBRestoreSnapshotIntegrityVerifier;
  v18 = [(MBSnapshotIntegrityVerifier *)&v24 _initWithDelegate:delegateCopy];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(v18 + 4, policy);
    objc_storeStrong(&v19->_snapshotDir, dir);
    objc_storeStrong(&v19->_snapshotUUID, d);
    v19->_snapshotFormat = format;
    v20 = +[MBBehaviorOptions sharedOptions];
    restorePathsToFailVerifyingRegex = [v20 restorePathsToFailVerifyingRegex];
    v22 = [MBErrorInjector errorInjectorForRegex:restorePathsToFailVerifyingRegex maxFailureCount:0];
    [(MBSnapshotIntegrityVerifier *)v19 setErrorInjector:v22];
  }

  return v19;
}

+ (BOOL)shouldRunVerifierForRestoreWithSnapshotFormat:(int64_t)format account:(id)account
{
  accountCopy = account;
  if (MBSnapshotFormatContainsFileLists())
  {
    v5 = +[MBBehaviorOptions sharedOptions];
    shouldVerifyRestore = [v5 shouldVerifyRestore];

    if (shouldVerifyRestore)
    {
      bOOLValue = [shouldVerifyRestore BOOLValue];
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        if (bOOLValue)
        {
          v9 = "enabled";
        }

        else
        {
          v9 = "disabled";
        }

        *buf = 136315138;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "=verifier= Restore verification %s from local behavior option", buf, 0xCu);
        _MBLog(@"I ", "=verifier= Restore verification %s from local behavior option");
      }
    }

    else if (MBIsInternalInstall())
    {
      v8 = MBGetDefaultLog();
      LOBYTE(bOOLValue) = 1;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        LOBYTE(bOOLValue) = 1;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "=verifier= Restore verification enabled, because AppleInternal", buf, 2u);
        _MBLog(@"I ", "=verifier= Restore verification enabled, because AppleInternal");
      }
    }

    else
    {
      v10 = +[MBRemoteConfiguration sharedInstance];
      bOOLValue = [v10 restoreVerificationEnabledForAccount:accountCopy];

      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v13) = bOOLValue;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "=verifier= Restore verification enabled from server: %d", buf, 8u);
        _MBLog(@"I ", "=verifier= Restore verification enabled from server: %d");
      }
    }
  }

  else
  {
    LOBYTE(bOOLValue) = 0;
  }

  return bOOLValue;
}

- (BOOL)verifyIntermediateDirectoryAfterForegroundRestoreWithDomainManager:(id)manager plan:(id)plan overridePath:(id)path error:(id *)error
{
  managerCopy = manager;
  planCopy = plan;
  pathCopy = path;
  if (!managerCopy)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier verifyIntermediateDirectoryAfterForegroundRestoreWithDomainManager:plan:overridePath:error:]", "MBSnapshotIntegrityVerifier.m", 132, "domainManager");
  }

  if (!error)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier verifyIntermediateDirectoryAfterForegroundRestoreWithDomainManager:plan:overridePath:error:]", "MBSnapshotIntegrityVerifier.m", 133, "error");
  }

  if ([(MBSnapshotIntegrityVerifier *)self _checkForCancellation:error])
  {
    errorCopy = error;
    v43 = [(MBRestoreSnapshotIntegrityVerifier *)self _domainNamesFromFileListWithCommitID:self->_snapshotUUID snapshotDir:self->_snapshotDir error:error];
    if (v43)
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = [v43 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v67 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "=verifier= Verifying domains: %@", buf, 0xCu);

        v14 = [v43 componentsJoinedByString:{@", "}];
        _MBLog(@"Db", "=verifier= Verifying domains: %@", v14);
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      obj = v43;
      v47 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
      if (v47)
      {
        v40 = 0;
        v41 = 0;
        v46 = *v63;
        v15 = &selRef_consolidatedDomainsInFileListSynchronization;
        v38 = planCopy;
        v39 = managerCopy;
LABEL_9:
        v16 = 0;
        while (1)
        {
          if (*v63 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v62 + 1) + 8 * v16);
          if ([*(&self->super.super.isa + *(v15 + 827)) shouldForegroundRestoreDomain:v17])
          {
            if (![(MBSnapshotIntegrityVerifier *)self _checkForCancellation:errorCopy])
            {
              goto LABEL_44;
            }

            v18 = [managerCopy domainForName:v17];
            if ([v18 hasRootPath])
            {
              v19 = [planCopy planForDomain:v18 restoreType:1 error:errorCopy];
              v20 = v19;
              if (!v19)
              {
                v35 = MBGetDefaultLog();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  v36 = *errorCopy;
                  *buf = 138412802;
                  v67 = v17;
                  v68 = 2112;
                  v69 = planCopy;
                  v70 = 2112;
                  v71 = v36;
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "=verifier= Failed to find domain %@ in plan %@: %@", buf, 0x20u);
                  _MBLog(@"E ", "=verifier= Failed to find domain %@ in plan %@: %@", v17, planCopy, *errorCopy);
                }

LABEL_44:
                v32 = 0;
                v34 = obj;
                goto LABEL_45;
              }

              if (![v19 wasSkipped])
              {
                v58 = 0;
                v59 = &v58;
                v60 = 0x2020000000;
                v61 = 0;
                v54 = 0;
                v55 = &v54;
                v56 = 0x2020000000;
                v57 = 0;
                v22 = objc_opt_new();
                snapshotUUID = self->_snapshotUUID;
                v49[0] = _NSConcreteStackBlock;
                v49[1] = 3221225472;
                v49[2] = sub_10011E514;
                v49[3] = &unk_1003BF1B8;
                v49[4] = self;
                v52 = &v54;
                v53 = &v58;
                v50 = pathCopy;
                v23 = v18;
                v51 = v23;
                LODWORD(v24) = [(MBRestoreSnapshotIntegrityVerifier *)self _verifyDomain:v23 snapshotUUID:snapshotUUID errors:v22 cancellationError:errorCopy pathForFile:v49];

                managerCopy = v39;
                v15 = &selRef_consolidatedDomainsInFileListSynchronization;

                if (v24)
                {
                  v25 = v59[3];
                  v26 = v55[3];
                  v27 = [v22 count];
                  v40 += v25;
                  v41 += v26;
                  if (v27)
                  {
                    v28 = MBGetDefaultLog();
                    managerCopy = v39;
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                    {
                      v29 = v59[3];
                      v30 = v55[3];
                      *buf = 138413058;
                      v67 = v17;
                      v68 = 2048;
                      v69 = v29;
                      v70 = 2048;
                      v71 = v30;
                      v72 = 2048;
                      v73 = v27;
                      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "=verifier= Failed to verify %@ during FG restore - checked: %llu ignored: %llu failed: %llu", buf, 0x2Au);
                      _MBLog(@"E ", "=verifier= Failed to verify %@ during FG restore - checked: %llu ignored: %llu failed: %llu", v17, v59[3], v55[3], v27);
                    }

                    planCopy = v38;
                    v15 = &selRef_consolidatedDomainsInFileListSynchronization;
                    v24 = [MBError errorWithErrors:v22];
                    if (([v20 recordVerificationFailure:v24 error:errorCopy]& 1) != 0)
                    {
                      v31 = v24;
                      *errorCopy = v24;
                    }

                    LOBYTE(v24) = 0;
                  }

                  else
                  {
                    LOBYTE(v24) = [v20 recordVerificationSuccess:errorCopy];
                    managerCopy = v39;
                    planCopy = v38;
                    v15 = &selRef_consolidatedDomainsInFileListSynchronization;
                  }
                }

                _Block_object_dispose(&v54, 8);
                _Block_object_dispose(&v58, 8);

                if ((v24 & 1) == 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_32;
              }

              v21 = MBGetDefaultLog();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v67 = v17;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "=verifier= Skipping verifying %@ because it was skipped", buf, 0xCu);
                _MBLog(@"I ", "=verifier= Skipping verifying %@ because it was skipped", v17);
              }
            }

            else
            {
              v20 = MBGetDefaultLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=verifier= Skipping verification of domain with nil root path", buf, 2u);
                _MBLog(@"I ", "=verifier= Skipping verification of domain with nil root path");
              }
            }
          }

LABEL_32:
          if (v47 == ++v16)
          {
            v47 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
            if (v47)
            {
              goto LABEL_9;
            }

            goto LABEL_38;
          }
        }
      }

      v40 = 0;
      v41 = 0;
LABEL_38:

      v33 = MBGetDefaultLog();
      v34 = v33;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v67 = &v41[v40];
        v68 = 2048;
        v69 = v40;
        v70 = 2048;
        v71 = v41;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=verifier= Finished foreground verification total: %llu, checked: %llu, ignored: %llu", buf, 0x20u);
        _MBLog(@"Df", "=verifier= Finished foreground verification total: %llu, checked: %llu, ignored: %llu", &v41[v40], v40, v41);
        v32 = 1;
        v34 = v33;
      }

      else
      {
        v32 = 1;
      }

LABEL_45:
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (BOOL)verifyContainerizedDataAfterBackgroundRestore:(id)restore domainPlan:(id)plan error:(id *)error
{
  restoreCopy = restore;
  planCopy = plan;
  if (!planCopy)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier verifyContainerizedDataAfterBackgroundRestore:domainPlan:error:]", "MBSnapshotIntegrityVerifier.m", 216, "domainPlan");
  }

  if (!error)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier verifyContainerizedDataAfterBackgroundRestore:domainPlan:error:]", "MBSnapshotIntegrityVerifier.m", 217, "error");
  }

  v10 = planCopy;
  v36 = 0;
  v11 = [(MBRestoreSnapshotIntegrityVerifier *)self _verifyContainerizedDataAfterBackgroundRestore:restoreCopy domainPlan:planCopy error:&v36];
  v12 = v36;
  if (v11)
  {
    v13 = [v10 recordVerificationSuccess:error];
    goto LABEL_19;
  }

  serviceRestoreMode = [(MBRestorePolicy *)self->_policy serviceRestoreMode];
  isBackgroundApp = [serviceRestoreMode isBackgroundApp];

  if (isBackgroundApp)
  {
    serviceRestoreMode2 = [(MBRestorePolicy *)self->_policy serviceRestoreMode];
    bundleID = [serviceRestoreMode2 bundleID];

    appManager = [(MBRestorePolicy *)self->_policy appManager];
    persona = [(MBRestorePolicy *)self->_policy persona];
    v35 = 0;
    v20 = [appManager fetchAppWithIdentifier:bundleID persona:persona error:&v35];
    v21 = v35;

    if (v20)
    {
      v22 = +[NSFileManager defaultManager];
      v23 = [v22 fileExistsAtPath:restoreCopy];

      if ((v23 & 1) == 0)
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          domain = [v10 domain];
          name = [domain name];
          *buf = 138412546;
          v39 = name;
          v40 = 2112;
          v41 = restoreCopy;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=verifier= Marking verification success for %@ because container %@ was removed during verification", buf, 0x16u);

          domain2 = [v10 domain];
          name2 = [domain2 name];
          _MBLog(@"Df", "=verifier= Marking verification success for %@ because container %@ was removed during verification", name2, restoreCopy);
LABEL_13:

          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else if ([MBError isError:v21 withCode:245])
    {
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        domain3 = [v10 domain];
        name3 = [domain3 name];
        *buf = 138412546;
        v39 = name3;
        v40 = 2112;
        v41 = bundleID;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=verifier= Marking verification success for %@ because parent app %@ was uninstalled during verification", buf, 0x16u);

        domain2 = [v10 domain];
        name2 = [domain2 name];
        _MBLog(@"Df", "=verifier= Marking verification success for %@ because parent app %@ was uninstalled during verification", name2, bundleID);
        goto LABEL_13;
      }

LABEL_14:

      v13 = [v10 recordVerificationSuccess:error];
      goto LABEL_19;
    }
  }

  if ([v10 recordVerificationFailure:v12 error:error])
  {
    v31 = v12;
    v13 = 0;
    *error = v12;
  }

  else
  {
    v32 = *error;
    v37[0] = v12;
    v37[1] = v32;
    v33 = [NSArray arrayWithObjects:v37 count:2];
    *error = [MBError errorWithErrors:v33];

    v13 = 0;
  }

LABEL_19:

  return v13;
}

- (BOOL)_verifyContainerizedDataAfterBackgroundRestore:(id)restore domainPlan:(id)plan error:(id *)error
{
  restoreCopy = restore;
  planCopy = plan;
  if (!planCopy)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier _verifyContainerizedDataAfterBackgroundRestore:domainPlan:error:]", "MBSnapshotIntegrityVerifier.m", 249, "domainPlan");
  }

  if (!error)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier _verifyContainerizedDataAfterBackgroundRestore:domainPlan:error:]", "MBSnapshotIntegrityVerifier.m", 250, "error");
  }

  v10 = planCopy;
  domain = [planCopy domain];
  if (!domain)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier _verifyContainerizedDataAfterBackgroundRestore:domainPlan:error:]", "MBSnapshotIntegrityVerifier.m", 252, "domain");
  }

  if ([(MBSnapshotIntegrityVerifier *)self _checkForCancellation:error])
  {
    if (!restoreCopy)
    {
      restoreCopy = [domain rootPath];
    }

    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v12 = objc_opt_new();
    snapshotUUID = self->_snapshotUUID;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10011EDCC;
    v23[3] = &unk_1003BF1E0;
    v23[4] = self;
    v25 = &v27;
    v26 = &v31;
    restoreCopy = restoreCopy;
    v24 = restoreCopy;
    v14 = [(MBRestoreSnapshotIntegrityVerifier *)self _verifyDomain:domain snapshotUUID:snapshotUUID errors:v12 cancellationError:error pathForFile:v23];

    if (v14)
    {
      v15 = [v12 count];
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          name = [domain name];
          v19 = v32[3];
          v20 = v28[3];
          *buf = 138413314;
          v36 = name;
          v37 = 2048;
          v38 = v20 + v19;
          v39 = 2048;
          v40 = v19;
          v41 = 2048;
          v42 = v20;
          v43 = 2048;
          v44 = v15;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "=verifier= Finished background verification for %@ total: %llu, checked: %llu, ignored: %llu, failed: %llu", buf, 0x34u);
        }

        name2 = [domain name];
        _MBLog(@"Df", "=verifier= Finished background verification for %@ total: %llu, checked: %llu, ignored: %llu, failed: %llu", name2, v28[3] + v32[3], v32[3], v28[3], v15);
      }

      if (v15)
      {
        [MBError errorWithErrors:v12];
        *error = LOBYTE(v14) = 0;
      }

      else
      {
        LOBYTE(v14) = 1;
      }
    }

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v31, 8);
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (BOOL)_verifyDomain:(id)domain snapshotUUID:(id)d errors:(id)errors cancellationError:(id *)error pathForFile:(id)file
{
  domainCopy = domain;
  dCopy = d;
  errorsCopy = errors;
  fileCopy = file;
  if (!domainCopy)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier _verifyDomain:snapshotUUID:errors:cancellationError:pathForFile:]", "MBSnapshotIntegrityVerifier.m", 292, "domain");
  }

  if (!dCopy)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier _verifyDomain:snapshotUUID:errors:cancellationError:pathForFile:]", "MBSnapshotIntegrityVerifier.m", 293, "snapshotUUID");
  }

  if (!errorsCopy)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier _verifyDomain:snapshotUUID:errors:cancellationError:pathForFile:]", "MBSnapshotIntegrityVerifier.m", 294, "errors");
  }

  if (!error)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier _verifyDomain:snapshotUUID:errors:cancellationError:pathForFile:]", "MBSnapshotIntegrityVerifier.m", 295, "cancellationError");
  }

  if (!fileCopy)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier _verifyDomain:snapshotUUID:errors:cancellationError:pathForFile:]", "MBSnapshotIntegrityVerifier.m", 296, "pathForFile");
  }

  errorCopy = error;
  v32 = fileCopy;
  name = [domainCopy name];
  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = name;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "=verifier= Verifying domain: %@", &buf, 0xCu);
    _MBLog(@"Db", "=verifier= Verifying domain: %@", name);
  }

  snapshotDir = self->_snapshotDir;
  v40 = 0;
  v19 = [MBFileListDB openDatabaseIn:snapshotDir commitID:dCopy domainName:name error:&v40];
  v20 = v40;
  v21 = v20;
  if (v19)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v42 = 0x3032000000;
    v43 = sub_10011F268;
    v44 = sub_10011F278;
    v45 = 0;
    p_buf = &buf;
    v39 = v20;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10011F280;
    v34[3] = &unk_1003BF208;
    v34[4] = self;
    v37 = v32;
    v22 = v19;
    v35 = v22;
    v23 = errorsCopy;
    v36 = v23;
    v24 = [v22 enumerateFilesWithDomain:domainCopy error:&v39 block:v34];
    v25 = v39;

    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      [v23 addObject:v25];
    }

    v33 = v25;
    v27 = [v22 close:&v33];
    v21 = v33;

    if ((v27 & 1) == 0)
    {
      [v23 addObject:v21];
    }

    v28 = *(*(&buf + 1) + 40);
    v29 = v28 == 0;
    if (v28)
    {
      *errorCopy = v28;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    [errorsCopy addObject:v20];
    v29 = 1;
  }

  return v29;
}

- (id)_verifyRestoreMetadataForFile:(id)file localPath:(id)path fileList:(id)list
{
  fileCopy = file;
  pathCopy = path;
  listCopy = list;
  relativePath = [fileCopy relativePath];
  v26 = 0;
  v12 = [(MBSnapshotIntegrityVerifier *)self _fetchMetadataFromFetchedFileList:listCopy relativePath:relativePath metadata:&v26];

  v13 = v26;
  if (v12)
  {
    v14 = v12;
    v15 = v14;
  }

  else
  {
    v25 = 0;
    v14 = [(MBSnapshotIntegrityVerifier *)self _fetchMetadataFromDiskForPath:pathCopy modifiedDate:0 metadata:&v25];
    v16 = v25;
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      domain = [fileCopy domain];
      v18 = [MBSnapshotIntegrityVerifier _differencesBetweenCloudMetadata:v13 localMetadata:v16 domain:domain path:pathCopy isBackup:0];

      if (v18 && ([fileCopy domain], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isBackupDomain"), v19, (v20 & 1) == 0))
      {
        typeString = [fileCopy typeString];
        v22 = [v18 componentsJoinedByString:{@", "}];
        v23 = [NSString stringWithFormat:@"Metadata mismatch [%@] for %@ %@:\n\tcloud: %@\n\tlocal: %@", typeString, v22, pathCopy, v13, v16];

        [(MBSnapshotIntegrityVerifier *)self _logFailureAndAppendToAttemptSummary:v23];
        v15 = [MBError errorWithCode:501 path:pathCopy format:@"Verification failed: %@", v23];
      }

      else
      {
        v15 = 0;
      }
    }
  }

  return v15;
}

- (id)_domainNamesFromFileListWithCommitID:(id)d snapshotDir:(id)dir error:(id *)error
{
  dCopy = d;
  dirCopy = dir;
  if (!error)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier _domainNamesFromFileListWithCommitID:snapshotDir:error:]", "MBSnapshotIntegrityVerifier.m", 369, "error");
  }

  v10 = dirCopy;
  if ([(MBSnapshotIntegrityVerifier *)self _checkForCancellation:error])
  {
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_10011F8A8;
    v20 = &unk_1003BC450;
    v11 = objc_opt_new();
    v21 = v11;
    if (MBEnumerateDomainNamesForSnapshot(v10, dCopy, error, &v17))
    {

      v11 = v11;
      v12 = v11;
      goto LABEL_11;
    }

    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *error;
      *buf = 138412290;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=verifier= Foreground restore verification: failed to acquire all file lists %@", buf, 0xCu);
      _MBLog(@"E ", "=verifier= Foreground restore verification: failed to acquire all file lists %@", *error, v17, v18, v19, v20);
    }
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *error;
      *buf = 138412290;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=verifier= Foreground restore verification cancelled %@", buf, 0xCu);
      _MBLog(@"Df", "=verifier= Foreground restore verification cancelled %@", *error);
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

@end
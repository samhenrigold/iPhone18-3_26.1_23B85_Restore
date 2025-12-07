@interface UpdateMigratorPromotionOperation
- (UpdateMigratorPromotionOperation)initWithBundleIdentifiers:(id)identifiers options:(id)options;
- (void)performMigration;
@end

@implementation UpdateMigratorPromotionOperation

- (UpdateMigratorPromotionOperation)initWithBundleIdentifiers:(id)identifiers options:(id)options
{
  identifiersCopy = identifiers;
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = UpdateMigratorPromotionOperation;
  v8 = [(UpdateMigratorPromotionOperation *)&v14 init];
  if (v8)
  {
    v9 = [identifiersCopy copy];
    bundleIDs = v8->_bundleIDs;
    v8->_bundleIDs = v9;

    v11 = [optionsCopy copy];
    options = v8->_options;
    v8->_options = v11;
  }

  return v8;
}

- (void)performMigration
{
  bundleIDs = self->_bundleIDs;
  if (bundleIDs && [(NSArray *)bundleIDs count])
  {
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      LODWORD(v6) = shouldLog | 2;
    }

    else
    {
      LODWORD(v6) = shouldLog;
    }

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (!v6)
    {
      goto LABEL_25;
    }

    v8 = objc_opt_class();
    v9 = self->_bundleIDs;
    v10 = v8;
    v11 = [(NSArray *)v9 componentsJoinedByString:@", "];
    v21 = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v11;
    v12 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "[%@]: Restoring demoted applications with bundle identifiers: %@", &v21, 22);
  }

  else
  {
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      LODWORD(v14) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v14) = shouldLog2;
    }

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = v14;
    }

    else
    {
      v14 &= 2u;
    }

    if (!v14)
    {
      goto LABEL_25;
    }

    v21 = 138412290;
    v22 = objc_opt_class();
    v15 = v22;
    v12 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "[%@]: Restoring all demoted applications", &v21, 12);
  }

  if (v12)
  {
    oSLogObject = [NSString stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog();
LABEL_25:
  }

  v16 = +[NetworkRequestQueue sharedNetworkRequestQueue];
  v17 = [[RestoreDemotedApplicationsOperation alloc] initWithBundleIdentifiers:self->_bundleIDs options:self->_options];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10013027C;
  v19[3] = &unk_100327110;
  v20 = dispatch_semaphore_create(0);
  v18 = v20;
  [(RestoreDemotedApplicationsOperation *)v17 setCompletionBlock:v19];
  [v16 addOperation:v17];
  dispatch_semaphore_wait(v18, 0x6FC23AC00uLL);
}

@end
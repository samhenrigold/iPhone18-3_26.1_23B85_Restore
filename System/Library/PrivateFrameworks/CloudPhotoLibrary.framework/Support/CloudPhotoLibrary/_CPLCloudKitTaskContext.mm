@interface _CPLCloudKitTaskContext
- (BOOL)_operationAllowsCellular:(id)cellular;
- (BOOL)hasBlockedOperationsIncludingBackground:(BOOL)background;
- (NSDictionary)statusPerOperationType;
- (_CPLCloudKitTaskContext)initWithTask:(id)task;
- (id)_priorityDescriptionForOperation:(id)operation forTask:(id)task;
- (void)cancelAllOperations;
- (void)operationDidFinish:(id)finish;
- (void)operationWillStart:(id)start context:(id)context;
@end

@implementation _CPLCloudKitTaskContext

- (_CPLCloudKitTaskContext)initWithTask:(id)task
{
  taskCopy = task;
  v15.receiver = self;
  v15.super_class = _CPLCloudKitTaskContext;
  v6 = [(_CPLCloudKitTaskContext *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_task, task);
    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    contexts = v7->_contexts;
    v7->_contexts = v8;

    v10 = objc_alloc_init(NSCountedSet);
    classCounts = v7->_classCounts;
    v7->_classCounts = v10;

    v12 = objc_alloc_init(NSCountedSet);
    cellularClassCounts = v7->_cellularClassCounts;
    v7->_cellularClassCounts = v12;
  }

  return v7;
}

- (void)operationWillStart:(id)start context:(id)context
{
  startCopy = start;
  [(NSMapTable *)self->_contexts setObject:context forKey:startCopy];
  [(NSCountedSet *)self->_classCounts addObject:objc_opt_class()];
  if ([(_CPLCloudKitTaskContext *)self _operationAllowsCellular:startCopy])
  {
    [(NSCountedSet *)self->_cellularClassCounts addObject:objc_opt_class()];
  }
}

- (void)operationDidFinish:(id)finish
{
  finishCopy = finish;
  [(NSMapTable *)self->_contexts removeObjectForKey:?];
  if (![(NSMapTable *)self->_contexts count])
  {
    v4 = +[NSDate date];
    lastOperationDate = self->_lastOperationDate;
    self->_lastOperationDate = v4;

    self->_lastOperationClass = objc_opt_class();
  }
}

- (BOOL)hasBlockedOperationsIncludingBackground:(BOOL)background
{
  if (![(NSMapTable *)self->_contexts count])
  {
    return 0;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_contexts;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        resolvedConfiguration = [v9 resolvedConfiguration];
        cplDiscretionary = [resolvedConfiguration cplDiscretionary];

        if (cplDiscretionary)
        {
          v12 = [(NSMapTable *)self->_contexts objectForKey:v9];
          mightBeBlocked = [v12 mightBeBlocked];

          if (mightBeBlocked)
          {
            continue;
          }
        }

        v14 = 0;
        goto LABEL_15;
      }

      v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v14 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 1;
  }

LABEL_15:

  return v14;
}

- (void)cancelAllOperations
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_contexts;
  v3 = [(NSMapTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) cancel];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMapTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_priorityDescriptionForOperation:(id)operation forTask:(id)task
{
  taskCopy = task;
  resolvedConfiguration = [operation resolvedConfiguration];
  if ([resolvedConfiguration cplDiscretionary])
  {
    v7 = @"disc";
  }

  else if (taskCopy && ([taskCopy hasBackgroundActivity] & 1) != 0)
  {
    v7 = @"bg activity";
  }

  else
  {
    v7 = @"non-disc";
  }

  v8 = __ROR8__([resolvedConfiguration qualityOfService] - 9, 3);
  if (v8 <= 3)
  {
    v7 = [[NSString alloc] initWithFormat:@"%@/%@", v7, off_100274B70[v8]];
  }

  return v7;
}

- (BOOL)_operationAllowsCellular:(id)cellular
{
  resolvedConfiguration = [cellular resolvedConfiguration];
  allowsCellularAccess = [resolvedConfiguration allowsCellularAccess];

  return allowsCellularAccess;
}

- (NSDictionary)statusPerOperationType
{
  selfCopy = self;
  session = [(CPLCloudKitTrackableTask *)self->_task session];
  v4 = [session description];

  v5 = &CPLFeatureNameEPP_ptr;
  if (v4)
  {
    v6 = [[NSString alloc] initWithFormat:@" in %@", v4];
  }

  else
  {
    v6 = &stru_10027C2F0;
  }

  if (![(NSMapTable *)selfCopy->_contexts count])
  {
    lastOperationDate = selfCopy->_lastOperationDate;
    v56 = [NSString alloc];
    if (lastOperationDate)
    {
      lastOperationClass = selfCopy->_lastOperationClass;
      v58 = objc_opt_class();
      v59 = CPLSimplifiedStringFromClass(v58);
      v53 = [v56 initWithFormat:@"%@ (for %@%@)", lastOperationClass, v59, v6];

      v60 = [NSString alloc];
      v61 = selfCopy->_lastOperationClass;
      idleDescription = [CPLDateFormatter stringFromDateAgo:selfCopy->_lastOperationDate now:0];
      v63 = [v60 initWithFormat:@"%@ finished %@", v61, idleDescription];
    }

    else
    {
      v64 = objc_opt_class();
      v65 = CPLSimplifiedStringFromClass(v64);
      v66 = [CPLDateFormatter stringFromDateAgo:selfCopy->_startDate now:0];
      v53 = [v56 initWithFormat:@"Started %@%@ %@", v65, v6, v66];

      idleDescription = [(CPLCloudKitTrackableTask *)selfCopy->_task idleDescription];
      if (!idleDescription)
      {
        v52 = @"no operation launched yet";
        goto LABEL_56;
      }

      v63 = [[NSString alloc] initWithFormat:@"%@", idleDescription, v68];
    }

    v52 = v63;
LABEL_56:

    v88 = v53;
    v89 = v52;
    v54 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
    goto LABEL_57;
  }

  v74 = +[NSDate date];
  v72 = objc_alloc_init(NSMutableDictionary);
  v7 = objc_opt_class();
  v73 = CPLSimplifiedStringFromClass(v7);
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = selfCopy->_contexts;
  v75 = [(NSMapTable *)obj countByEnumeratingWithState:&v83 objects:v87 count:16];
  if (v75)
  {
    v71 = *v84;
    v76 = selfCopy;
    do
    {
      for (i = 0; i != v75; i = i + 1)
      {
        if (*v84 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v83 + 1) + 8 * i);
        v10 = [(NSMapTable *)selfCopy->_contexts objectForKey:v9];
        group = [v9 group];
        v12 = objc_alloc(v5[200]);
        cplOperationClassDescription = [v9 cplOperationClassDescription];
        v14 = cplOperationClassDescription;
        v79 = group;
        if (group)
        {
          name = [group name];
          v16 = [v12 initWithFormat:@"%@ (for %@/%@%@)", v14, v73, name, v6];
        }

        else
        {
          v16 = [v12 initWithFormat:@"%@ (for %@%@)", cplOperationClassDescription, v73, v6];
        }

        v80 = v16;

        v82 = [v10 startDateDescriptionWithNow:v74];
        mightBeBlocked = [v10 mightBeBlocked];
        isCancelled = [v9 isCancelled];
        isCancelled2 = [v10 isCancelled];
        v19 = "";
        if (isCancelled2)
        {
          v19 = "- cancelled by engine";
        }

        if (isCancelled)
        {
          v19 = "- cancelled";
        }

        v78 = v19;
        [v10 progress];
        v21 = v20;
        operationDescription = [v10 operationDescription];
        if (operationDescription)
        {
          v23 = objc_alloc(v5[200]);
          operationID = [v9 operationID];
          operationID2 = [v23 initWithFormat:@"%@ %@", operationID, operationDescription];
        }

        else
        {
          operationID2 = [v9 operationID];
        }

        configuration = [v9 configuration];
        applicationBundleIdentifierOverrideForNetworkAttribution = [configuration applicationBundleIdentifierOverrideForNetworkAttribution];
        v27 = applicationBundleIdentifierOverrideForNetworkAttribution;
        if (applicationBundleIdentifierOverrideForNetworkAttribution)
        {
          applicationBundleIdentifierOverrideForNetworkAttribution2 = applicationBundleIdentifierOverrideForNetworkAttribution;
        }

        else
        {
          [v9 group];
          v30 = v29 = v6;
          defaultConfiguration = [v30 defaultConfiguration];
          applicationBundleIdentifierOverrideForNetworkAttribution2 = [defaultConfiguration applicationBundleIdentifierOverrideForNetworkAttribution];

          v5 = &CPLFeatureNameEPP_ptr;
          v6 = v29;
          selfCopy = v76;
        }

        v32 = objc_alloc(v5[200]);
        v33 = [(_CPLCloudKitTaskContext *)selfCopy _priorityDescriptionForOperation:v9 forTask:selfCopy->_task];
        if ([(_CPLCloudKitTaskContext *)selfCopy _operationAllowsCellular:v9])
        {
          v34 = "";
        }

        else
        {
          v34 = " (no cell)";
        }

        isExecuting = [v9 isExecuting];
        v37 = "exc";
        if (v21 <= 0.0)
        {
          v38 = v72;
          if ((isExecuting & 1) == 0)
          {
            isFinished = [v9 isFinished];
            v37 = "pen";
            if (isFinished)
            {
              v37 = "fin";
            }
          }

          v44 = @"no bundle";
          if (applicationBundleIdentifierOverrideForNetworkAttribution2)
          {
            v44 = applicationBundleIdentifierOverrideForNetworkAttribution2;
          }

          v45 = "";
          if (mightBeBlocked)
          {
            v45 = " (blocked?)";
          }

          v42 = [v32 initWithFormat:@"  [%@](%@)%s [%s]%s - %@ - %@%s", v36, operationID2, v33, v34, v37, v78, v44, v82, v45, v69];
        }

        else
        {
          v38 = v72;
          if ((isExecuting & 1) == 0)
          {
            isFinished2 = [v9 isFinished];
            v37 = "pen";
            if (isFinished2)
            {
              v37 = "fin";
            }
          }

          v40 = @"no bundle";
          if (applicationBundleIdentifierOverrideForNetworkAttribution2)
          {
            v40 = applicationBundleIdentifierOverrideForNetworkAttribution2;
          }

          v41 = "";
          if (mightBeBlocked)
          {
            v41 = " (blocked?)";
          }

          v42 = [v32 initWithFormat:@"  [%@](%@)%s [%s]%s - %@ - %@ - %.0f%%%s", v21 * 100.0, operationID2, v33, v34, v37, v78, v40, v82, v21 * 100.0, v41];
        }

        v46 = v42;

        v47 = v80;
        v48 = [v38 objectForKeyedSubscript:v80];
        v5 = &CPLFeatureNameEPP_ptr;
        if (v48)
        {
          v49 = v48;
          [v48 appendFormat:@"\n%@", v46];
        }

        else
        {
          v49 = [v46 mutableCopy];
          [v38 setObject:v49 forKeyedSubscript:v80];
        }

        extendedStatusDescriptionStrings = [v10 extendedStatusDescriptionStrings];
        if ([extendedStatusDescriptionStrings count])
        {
          v51 = [extendedStatusDescriptionStrings componentsJoinedByString:@"\n      "];
          [v49 appendFormat:@"\n      %@", v51];

          v47 = v80;
        }

        selfCopy = v76;
      }

      v75 = [(NSMapTable *)obj countByEnumeratingWithState:&v83 objects:v87 count:16];
    }

    while (v75);
  }

  v52 = v73;
  v53 = v74;
  v54 = v72;
LABEL_57:

  return v54;
}

@end
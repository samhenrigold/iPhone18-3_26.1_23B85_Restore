@interface MSDComponentManager
- (BOOL)waitForProcessingCompletionTillDate:(id)date outError:(id *)error;
- (MSDComponentManager)initWithComponents:(id)components andProcessor:(id)processor;
- (unint64_t)_calculateFreeSpaceToReserve:(unint64_t)reserve;
- (void)_cancelAllOperations;
- (void)_dispatchComponent:(id)component;
- (void)_dispatchNextComponent;
- (void)_enforceFreeDiskSpaceRequirement;
- (void)_handleCompleteComponent:(id)component;
- (void)_handleNewOperationStagedForComponent:(id)component;
- (void)_handleRetryComponent:(id)component forComponent:(id)forComponent;
- (void)_postCompletionNotificationWithResult:(BOOL)result andError:(id)error;
- (void)_setupInterComponentDependencyOnRetry:(BOOL)retry;
- (void)_startProcessingComponentsOnRetry:(BOOL)retry;
- (void)abortProcessing;
- (void)pauseProcessing;
- (void)resumeProcessing;
- (void)startProcessingAllComponents;
@end

@implementation MSDComponentManager

- (MSDComponentManager)initWithComponents:(id)components andProcessor:(id)processor
{
  componentsCopy = components;
  processorCopy = processor;
  v31.receiver = self;
  v31.super_class = MSDComponentManager;
  v8 = [(MSDComponentManager *)&v31 init];
  if (v8)
  {
    v9 = [[NSMutableArray alloc] initWithCapacity:0];
    [(MSDComponentManager *)v8 setActiveComponents:v9];

    v10 = [[NSMutableArray alloc] initWithCapacity:0];
    [(MSDComponentManager *)v8 setRetryableComponents:v10];

    v11 = [[NSMutableArray alloc] initWithCapacity:0];
    [(MSDComponentManager *)v8 setRemovableComponents:v11];

    v12 = [componentsCopy mutableCopy];
    [(MSDComponentManager *)v8 setPendingComponents:v12];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    reverseObjectEnumerator = [componentsCopy reverseObjectEnumerator];
    v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        v17 = 0;
        do
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          createRemovableCounterpartComponent = [*(*(&v27 + 1) + 8 * v17) createRemovableCounterpartComponent];
          if (createRemovableCounterpartComponent)
          {
            removableComponents = [(MSDComponentManager *)v8 removableComponents];
            [removableComponents addObject:createRemovableCounterpartComponent];
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v15);
    }

    [(MSDComponentManager *)v8 setComponentProcessor:processorCopy];
    [(MSDComponentManager *)v8 setComponentListLock:0];
    if (os_variant_has_internal_content() && (+[MSDTestPreferences sharedInstance](MSDTestPreferences, "sharedInstance"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 disableParallelProcessing], v20, v21))
    {
      v23 = sub_100063A54(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Disabling parallel processing as requested.", v26, 2u);
      }

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    [(MSDComponentManager *)v8 setParallelProcessing:v24];
  }

  return v8;
}

- (void)startProcessingAllComponents
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[MSDComponentManager startProcessingAllComponents]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v5, 0xCu);
  }

  os_unfair_lock_lock(&self->_componentListLock);
  [(MSDComponentManager *)self _enforceFreeDiskSpaceRequirement];
  [(MSDComponentManager *)self _startProcessingComponentsOnRetry:0];
  componentProcessor = [(MSDComponentManager *)self componentProcessor];
  [componentProcessor resume];

  os_unfair_lock_unlock(&self->_componentListLock);
}

- (BOOL)waitForProcessingCompletionTillDate:(id)date outError:(id *)error
{
  dateCopy = date;
  v7 = dispatch_semaphore_create(0);
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_100009A80;
  v38 = sub_100009A90;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v8 = sub_100063A54(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v41 = "[MSDComponentManager waitForProcessingCompletionTillDate:outError:]";
    v42 = 2114;
    v43 = dateCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: entered with deadline %{public}@", buf, 0x16u);
  }

  activeComponents = [(MSDComponentManager *)self activeComponents];
  v10 = [activeComponents count] == 0;

  if (!v10)
  {
    v12 = +[NSNotificationCenter defaultCenter];
    v13 = +[NSOperationQueue mainQueue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100009A98;
    v26[3] = &unk_100169D80;
    v28 = &v30;
    v29 = &v34;
    v14 = v7;
    v27 = v14;
    v15 = [v12 addObserverForName:@"MSDComponentManagerComplete" object:0 queue:v13 usingBlock:v26];

    if (dateCopy)
    {
      [dateCopy timeIntervalSinceNow];
      v17 = dispatch_time(0, (v16 * 1000000000.0));
      _cancelAllOperations = dispatch_semaphore_wait(v14, v17);
      if (_cancelAllOperations)
      {
        v19 = sub_100063A54(_cancelAllOperations);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Timed out waiting for processing of all components to complete.", buf, 2u);
        }

        v20 = [NSError errorDomainMSDWithCode:3727741184 message:@"Cannot finish update within given time."];
        v21 = v35[5];
        v35[5] = v20;

        _cancelAllOperations = [(MSDComponentManager *)self _cancelAllOperations];
      }

      if (!error)
      {
LABEL_10:
        if (!v15)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else
    {
      _cancelAllOperations = dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
      if (!error)
      {
        goto LABEL_10;
      }
    }

    _cancelAllOperations = v35[5];
    *error = _cancelAllOperations;
    if (!v15)
    {
LABEL_18:
      v24 = sub_100063A54(_cancelAllOperations);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v41 = "[MSDComponentManager waitForProcessingCompletionTillDate:outError:]";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s: will return.", buf, 0xCu);
      }

      v22 = *(v31 + 24);
      goto LABEL_21;
    }

LABEL_17:
    v23 = +[NSNotificationCenter defaultCenter];
    [v23 removeObserver:v15];

    goto LABEL_18;
  }

  v15 = sub_100063A54(v11);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No more active component to process.", buf, 2u);
  }

  v22 = 1;
LABEL_21:

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  return v22 & 1;
}

- (void)pauseProcessing
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[MSDComponentManager pauseProcessing]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s called.", &v5, 0xCu);
  }

  componentProcessor = [(MSDComponentManager *)self componentProcessor];
  [componentProcessor suspend];
}

- (void)resumeProcessing
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[MSDComponentManager resumeProcessing]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s called.", &v5, 0xCu);
  }

  componentProcessor = [(MSDComponentManager *)self componentProcessor];
  [componentProcessor resume];
}

- (void)abortProcessing
{
  v3 = [NSError errorDomainMSDWithCode:3727741185 message:@"Operation canceled."];
  v4 = sub_100063A54(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[MSDComponentManager abortProcessing]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v5, 0xCu);
  }

  [(MSDComponentManager *)self _cancelAllOperations];
  [(MSDComponentManager *)self _postCompletionNotificationWithResult:0 andError:v3];
}

- (void)_startProcessingComponentsOnRetry:(BOOL)retry
{
  [(MSDComponentManager *)self _setupInterComponentDependencyOnRetry:retry];
  if ([(MSDComponentManager *)self parallelProcessing])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    activeComponents = [(MSDComponentManager *)self activeComponents];
    v5 = [activeComponents countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(activeComponents);
          }

          [(MSDComponentManager *)self _dispatchComponent:*(*(&v9 + 1) + 8 * i)];
        }

        v6 = [activeComponents countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }

  else
  {

    [(MSDComponentManager *)self _dispatchNextComponent];
  }
}

- (void)_cancelAllOperations
{
  os_unfair_lock_lock(&self->_componentListLock);
  activeComponents = [(MSDComponentManager *)self activeComponents];
  [activeComponents removeAllObjects];

  retryableComponents = [(MSDComponentManager *)self retryableComponents];
  [retryableComponents removeAllObjects];

  removableComponents = [(MSDComponentManager *)self removableComponents];
  [removableComponents removeAllObjects];

  pendingComponents = [(MSDComponentManager *)self pendingComponents];
  [pendingComponents removeAllObjects];

  os_unfair_lock_unlock(&self->_componentListLock);
  componentProcessor = [(MSDComponentManager *)self componentProcessor];
  [componentProcessor cancel];
}

- (void)_dispatchNextComponent
{
  activeComponents = [(MSDComponentManager *)self activeComponents];
  firstObject = [activeComponents firstObject];

  if (firstObject)
  {
    v6 = sub_100063A54(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      name = [firstObject name];
      v8 = 138543362;
      v9 = name;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dispatching component %{public}@ ...", &v8, 0xCu);
    }

    [(MSDComponentManager *)self _dispatchComponent:firstObject];
  }
}

- (void)_postCompletionNotificationWithResult:(BOOL)result andError:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v5 = [NSMutableDictionary dictionaryWithCapacity:2];
  v6 = [NSNumber numberWithBool:resultCopy];
  [v5 setObject:v6 forKey:@"Result"];

  if (errorCopy)
  {
    [v5 setObject:errorCopy forKey:@"Error"];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"MSDComponentManagerComplete" object:0 userInfo:v5];
}

- (void)_dispatchComponent:(id)component
{
  componentCopy = component;
  [componentCopy addObserver:self];
  componentProcessor = [(MSDComponentManager *)self componentProcessor];
  [componentProcessor process:componentCopy];
}

- (void)_handleNewOperationStagedForComponent:(id)component
{
  componentCopy = component;
  v5 = sub_100063A54(componentCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = componentCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "New operation staged for component: %{public}@", &v7, 0xCu);
  }

  componentProcessor = [(MSDComponentManager *)self componentProcessor];
  [componentProcessor process:componentCopy];
}

- (void)_handleCompleteComponent:(id)component
{
  componentCopy = component;
  v5 = sub_100063A54(componentCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138543362;
    v24 = componentCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "All operations complete for component: %{public}@", &v23, 0xCu);
  }

  os_unfair_lock_lock(&self->_componentListLock);
  activeComponents = [(MSDComponentManager *)self activeComponents];
  [activeComponents removeObject:componentCopy];

  activeComponents2 = [(MSDComponentManager *)self activeComponents];
  v8 = [activeComponents2 count];

  if (v8)
  {
    if (![(MSDComponentManager *)self parallelProcessing])
    {
      [(MSDComponentManager *)self _dispatchNextComponent];
    }

    goto LABEL_15;
  }

  retryableComponents = [(MSDComponentManager *)self retryableComponents];
  v10 = [retryableComponents count];

  if (v10)
  {
    v12 = sub_100063A54(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Processing retryable components...", &v23, 2u);
    }

    activeComponents3 = [(MSDComponentManager *)self activeComponents];
    retryableComponents2 = [(MSDComponentManager *)self retryableComponents];
    [activeComponents3 addObjectsFromArray:retryableComponents2];

    retryableComponents3 = [(MSDComponentManager *)self retryableComponents];
    [retryableComponents3 removeAllObjects];

    selfCopy2 = self;
    v17 = 1;
LABEL_14:
    [(MSDComponentManager *)selfCopy2 _startProcessingComponentsOnRetry:v17];
    goto LABEL_15;
  }

  pendingComponents = [(MSDComponentManager *)self pendingComponents];
  v19 = [pendingComponents count];

  v21 = sub_100063A54(v20);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v22)
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Processing pending components...", &v23, 2u);
    }

    [(MSDComponentManager *)self _enforceFreeDiskSpaceRequirement];
    selfCopy2 = self;
    v17 = 0;
    goto LABEL_14;
  }

  if (v22)
  {
    LOWORD(v23) = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "All components complete!", &v23, 2u);
  }

  [(MSDComponentManager *)self _postCompletionNotificationWithResult:1 andError:0];
LABEL_15:
  os_unfair_lock_unlock(&self->_componentListLock);
}

- (void)_handleRetryComponent:(id)component forComponent:(id)forComponent
{
  componentCopy = component;
  forComponentCopy = forComponent;
  v8 = sub_100063A54(forComponentCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000C5C34(componentCopy, v8);
  }

  os_unfair_lock_lock(&self->_componentListLock);
  retryableComponents = [(MSDComponentManager *)self retryableComponents];
  [retryableComponents addObject:componentCopy];

  os_unfair_lock_unlock(&self->_componentListLock);
  [(MSDComponentManager *)self _handleCompleteComponent:forComponentCopy];
}

- (void)_enforceFreeDiskSpaceRequirement
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[MSDTargetDevice sharedInstance];
  getFreeSpace = [v4 getFreeSpace];

  v6 = [(MSDComponentManager *)self _calculateFreeSpaceToReserve:getFreeSpace];
  v7 = sub_100063A54(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v41 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Trying to enforce free disk space requirement:  %{iec-bytes}llu", buf, 0xCu);
  }

  *&v8 = 138543362;
  v34 = v8;
  selfCopy = self;
  while (1)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    pendingComponents = [(MSDComponentManager *)self pendingComponents];
    v10 = [pendingComponents countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v37;
      while (2)
      {
        v13 = 0;
        v14 = getFreeSpace;
        do
        {
          if (*v37 != v12)
          {
            objc_enumerationMutation(pendingComponents);
          }

          v15 = *(*(&v36 + 1) + 8 * v13);
          diskSpaceRequired = [v15 diskSpaceRequired];
          v17 = sub_100063A54(diskSpaceRequired);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v41 = v15;
            v42 = 2048;
            v43 = diskSpaceRequired;
            v44 = 2048;
            v45 = v14;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Free space needed=%{iec-bytes}llu, Free space left=%{iec-bytes}llu", buf, 0x20u);
          }

          v19 = v14 >= diskSpaceRequired;
          getFreeSpace = (v14 - diskSpaceRequired);
          if (getFreeSpace == 0 || !v19 || getFreeSpace <= v6)
          {
            v20 = sub_100063A54(v18);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v34;
              v41 = v15;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: Not enough free space left for this component.", buf, 0xCu);
            }

            getFreeSpace = v14;
            self = selfCopy;
            goto LABEL_20;
          }

          [v3 addObject:v15];
          v13 = v13 + 1;
          v14 = getFreeSpace;
        }

        while (v11 != v13);
        v11 = [pendingComponents countByEnumeratingWithState:&v36 objects:v46 count:16];
        self = selfCopy;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:

    if ([v3 count])
    {
      activeComponents = [(MSDComponentManager *)self activeComponents];
      [activeComponents addObjectsFromArray:v3];

      pendingComponents2 = [(MSDComponentManager *)self pendingComponents];
      [pendingComponents2 removeObjectsInArray:v3];
      goto LABEL_33;
    }

    removableComponents = [(MSDComponentManager *)self removableComponents];
    pendingComponents2 = [removableComponents firstObject];

    if (pendingComponents2)
    {
      break;
    }

    pendingComponents3 = [(MSDComponentManager *)self pendingComponents];
    firstObject = [pendingComponents3 firstObject];

    removableComponents2 = sub_100063A54(v26);
    v28 = os_log_type_enabled(removableComponents2, OS_LOG_TYPE_DEFAULT);
    if (!firstObject)
    {
      if (v28)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, removableComponents2, OS_LOG_TYPE_DEFAULT, "No more pending component to discard.", buf, 2u);
      }

      goto LABEL_32;
    }

    if (v28)
    {
      *buf = v34;
      v41 = firstObject;
      _os_log_impl(&_mh_execute_header, removableComponents2, OS_LOG_TYPE_DEFAULT, "Discarding one pending component due to insufficient disk space: %{public}@", buf, 0xCu);
    }

    activeComponents2 = [(MSDComponentManager *)self activeComponents];
    [activeComponents2 addObject:firstObject];

    pendingComponents4 = [(MSDComponentManager *)self pendingComponents];
    [pendingComponents4 removeObject:firstObject];

    [firstObject discardStagedOperationsAndTriggerCompletion];
  }

  v32 = sub_100063A54(v23);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = v34;
    v41 = pendingComponents2;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Removing existing component to free up disk space: %{public}@", buf, 0xCu);
  }

  activeComponents3 = [(MSDComponentManager *)self activeComponents];
  [activeComponents3 addObject:pendingComponents2];

  removableComponents2 = [(MSDComponentManager *)self removableComponents];
  [removableComponents2 removeObject:pendingComponents2];
LABEL_32:

LABEL_33:
}

- (unint64_t)_calculateFreeSpaceToReserve:(unint64_t)reserve
{
  v4 = MGCopyAnswer();
  v5 = [v4 objectForKey:kMGQDiskUsageAmountDataReserved];
  v6 = v5;
  if (v5)
  {
    unsignedLongLongValue = [v5 unsignedLongLongValue];
  }

  else
  {
    v8 = sub_100063A54(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000C5CAC(v8);
    }

    unsignedLongLongValue = 5 * reserve / 0x64;
  }

  return unsignedLongLongValue;
}

- (void)_setupInterComponentDependencyOnRetry:(BOOL)retry
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_100009A80;
  v10[4] = sub_100009A90;
  v11 = objc_alloc_init(NSMutableDictionary);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_100009A80;
  v8[4] = sub_100009A90;
  v9 = 0;
  activeComponents = [(MSDComponentManager *)self activeComponents];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000AD18;
  v6[3] = &unk_100169DA8;
  retryCopy = retry;
  v6[4] = v8;
  v6[5] = v10;
  [activeComponents enumerateObjectsUsingBlock:v6];

  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);
}

@end
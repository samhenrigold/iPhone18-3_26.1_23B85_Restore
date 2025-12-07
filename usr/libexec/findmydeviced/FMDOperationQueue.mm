@interface FMDOperationQueue
- (BOOL)addRequest:(id)request;
- (BOOL)cancelRequest:(id)request;
- (BOOL)replacedExsitingAction:(id)action;
- (BOOL)shouldAddAction:(id)action;
- (FMDOperationQueue)initWithIdentifier:(id)identifier;
- (id)description;
- (id)wrapAction:(id)action;
- (void)processRequests;
@end

@implementation FMDOperationQueue

- (FMDOperationQueue)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = FMDOperationQueue;
  v5 = [(FMDOperationQueue *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSOperationQueue);
    [(FMDOperationQueue *)v5 setRequestsOperationQueue:v6];

    requestsOperationQueue = [(FMDOperationQueue *)v5 requestsOperationQueue];
    [requestsOperationQueue setMaxConcurrentOperationCount:1];

    v8 = +[NSMutableArray array];
    [(FMDOperationQueue *)v5 setRequests:v8];

    [(FMDOperationQueue *)v5 setIdentifier:identifierCopy];
    [(FMDOperationQueue *)v5 setQueueCount:0];
    [(FMDOperationQueue *)v5 setIsPaused:0];
  }

  return v5;
}

- (BOOL)addRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    objc_initWeak(&location, self);
    requestsOperationQueue = [(FMDOperationQueue *)self requestsOperationQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001C34B0;
    v7[3] = &unk_1002CD288;
    objc_copyWeak(&v9, &location);
    v8 = requestCopy;
    [requestsOperationQueue addOperationWithBlock:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return requestCopy != 0;
}

- (BOOL)cancelRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    inited = objc_initWeak(&location, self);
    v6 = sub_10017DA30(inited);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v15 = 2112;
      v16 = requestCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ action to be removed - %@", buf, 0x16u);
    }

    requestsOperationQueue = [(FMDOperationQueue *)self requestsOperationQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001C3818;
    v9[3] = &unk_1002CD288;
    objc_copyWeak(&v11, &location);
    v10 = requestCopy;
    [requestsOperationQueue addOperationWithBlock:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return requestCopy != 0;
}

- (void)processRequests
{
  isPaused = [(FMDOperationQueue *)self isPaused];
  if (isPaused)
  {
    v4 = sub_10017DA30(isPaused);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy4 = self;
      v5 = "%@ queue paused";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 0xCu);
    }
  }

  else
  {
    requests = [(FMDOperationQueue *)self requests];
    v7 = [requests count];

    if (v7)
    {
      if ([(FMDOperationQueue *)self queueCount]== 1)
      {
        v4 = sub_10017DA30(1);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          headAction = [(FMDOperationQueue *)self headAction];
          *buf = 138412546;
          selfCopy4 = self;
          v24 = 2112;
          v25 = headAction;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ Queue BUSY with %@", buf, 0x16u);
        }
      }

      else
      {
        requests2 = [(FMDOperationQueue *)self requests];
        v10 = [requests2 objectAtIndex:0];
        [(FMDOperationQueue *)self setHeadAction:v10];

        headAction2 = [(FMDOperationQueue *)self headAction];
        v12 = objc_opt_class();
        headAction3 = [(FMDOperationQueue *)self headAction];
        v4 = [NSString stringWithFormat:@"%@-%p", v12, headAction3];

        v15 = sub_10017DA30(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          selfCopy4 = self;
          v24 = 2112;
          v25 = v4;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ HEAD ACTION - %@", buf, 0x16u);
        }

        headAction4 = [(FMDOperationQueue *)self headAction];

        if (headAction4)
        {
          requests3 = [(FMDOperationQueue *)self requests];
          [requests3 removeObjectAtIndex:0];
        }

        headAction5 = [(FMDOperationQueue *)self headAction];
        v19 = [(FMDOperationQueue *)self wrapAction:headAction5];

        v20 = +[ActionManager sharedManager];
        v21 = [v20 enqueueAction:v19];

        [(FMDOperationQueue *)self setQueueCount:[(FMDOperationQueue *)self queueCount]+ 1];
      }
    }

    else
    {
      v4 = sub_10017DA30([(FMDOperationQueue *)self setHeadAction:0]);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy4 = self;
        v5 = "%@ no actions found";
        goto LABEL_10;
      }
    }
  }
}

- (id)wrapAction:(id)action
{
  actionCopy = action;
  objc_initWeak(&location, self);
  v5 = [FMDActionDecorator alloc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C3DE4;
  v8[3] = &unk_1002CD518;
  objc_copyWeak(&v9, &location);
  v6 = [(FMDActionDecorator *)v5 initWithAction:actionCopy usingCompletion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

- (BOOL)shouldAddAction:(id)action
{
  actionCopy = action;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  requests = [(FMDOperationQueue *)self requests];
  v6 = [requests countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(requests);
        }

        if ([*(*(&v12 + 1) + 8 * i) shouldCancelAction:actionCopy])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [requests countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (BOOL)replacedExsitingAction:(id)action
{
  actionCopy = action;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  requests = [(FMDOperationQueue *)self requests];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001C420C;
  v10[3] = &unk_1002D0E48;
  v6 = actionCopy;
  v11 = v6;
  v12 = &v18;
  v13 = &v14;
  [requests enumerateObjectsUsingBlock:v10];

  if (*(v15 + 24) == 1)
  {
    requests2 = [(FMDOperationQueue *)self requests];
    [requests2 replaceObjectAtIndex:v19[3] withObject:v6];

    v8 = *(v15 + 24);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v8 & 1;
}

- (id)description
{
  v3 = objc_opt_class();
  identifier = [(FMDOperationQueue *)self identifier];
  headAction = [(FMDOperationQueue *)self headAction];
  v6 = [NSString stringWithFormat:@"%@-%p-%@-%@", v3, self, identifier, headAction];

  return v6;
}

@end
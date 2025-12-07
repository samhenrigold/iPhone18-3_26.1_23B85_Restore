@interface FMDNetworkAction
- (FMDNetworkAction)initWithRequest:(id)request andServerInteractionController:(id)controller;
- (NSString)description;
- (id)actionType;
- (void)runWithCompletion:(id)completion;
- (void)willCancelAction;
@end

@implementation FMDNetworkAction

- (FMDNetworkAction)initWithRequest:(id)request andServerInteractionController:(id)controller
{
  requestCopy = request;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = FMDNetworkAction;
  v9 = [(FMDNetworkAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_serverInteractionController, controller);
  }

  return v10;
}

- (id)actionType
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  inited = objc_initWeak(&location, self);
  v6 = sub_10017DA30(inited);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    request = [(FMDNetworkAction *)self request];
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = request;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ run for request - %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = sub_10000A938;
  v31 = sub_100002A74;
  request2 = [(FMDNetworkAction *)self request];
  completionHandler = [request2 completionHandler];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100127468;
  v20[3] = &unk_1002CD198;
  objc_copyWeak(&v23, &location);
  v20[4] = self;
  v22 = buf;
  v9 = completionCopy;
  v21 = v9;
  v10 = objc_retainBlock(v20);
  v11 = sub_10017DA30(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100225538(self, v10);
  }

  request3 = [(FMDNetworkAction *)self request];
  [request3 setCompletionHandler:v10];

  request4 = [(FMDNetworkAction *)self request];
  if ([request4 cancelled])
  {
  }

  else
  {
    serverInteractionController = [(FMDNetworkAction *)self serverInteractionController];
    request5 = [(FMDNetworkAction *)self request];
    v17 = [serverInteractionController enqueueRequest:request5];

    if (v17)
    {
      goto LABEL_12;
    }
  }

  v18 = sub_10017DA30(v14);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    request6 = [(FMDNetworkAction *)self request];
    *v25 = 138412546;
    selfCopy = self;
    v27 = 2112;
    v28 = request6;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@ request cancelled or did not enqueue: %@", v25, 0x16u);
  }

  if (v9)
  {
    v9[2](v9);
  }

LABEL_12:

  objc_destroyWeak(&v23);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);
}

- (void)willCancelAction
{
  v3 = sub_10017DA30(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    request = [(FMDNetworkAction *)self request];
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = request;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ will cancel request: %@", &v7, 0x16u);
  }

  serverInteractionController = [(FMDNetworkAction *)self serverInteractionController];
  request2 = [(FMDNetworkAction *)self request];
  [serverInteractionController cancelRequest:request2];
}

- (NSString)description
{
  v3 = objc_opt_class();
  request = [(FMDNetworkAction *)self request];
  v5 = [NSString stringWithFormat:@"%@-%p:%@", v3, self, request];

  return v5;
}

@end
@interface ServiceRemoteEngagementViewController
- (id)_engagementTaskForRequest:(id)request error:(id *)error;
- (void)_dismissPresentedViewController;
- (void)presentEngagementRequestData:(id)data completion:(id)completion;
- (void)setPreferredContentSize:(CGSize)size;
@end

@implementation ServiceRemoteEngagementViewController

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = ServiceRemoteEngagementViewController;
  [(ServiceRemoteEngagementViewController *)&v8 setPreferredContentSize:?];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100022924;
  v7[3] = &unk_100050FC8;
  v7[4] = self;
  v6 = [(ServiceRemoteEngagementViewController *)self _clientViewControllerProxyWithErrorHandler:v7];
  [v6 preferredContentSizeDidChange:{width, height}];
}

- (void)presentEngagementRequestData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  [(ServiceRemoteEngagementViewController *)self _dismissPresentedViewController];
  v19 = 0;
  v8 = [(ServiceRemoteEngagementViewController *)self _engagementTaskForRequest:dataCopy error:&v19];

  v9 = v19;
  if (!v9)
  {
    presentEngagement = [v8 presentEngagement];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100022D04;
    v18[3] = &unk_100051E08;
    v18[4] = self;
    [presentEngagement addFinishBlock:v18];

    completionCopy[2](completionCopy, 0);
    goto LABEL_14;
  }

  v10 = +[SSLogConfig sharedConfig];
  shouldLog = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    LODWORD(v12) = shouldLog | 2;
  }

  else
  {
    LODWORD(v12) = shouldLog;
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v12 = v12;
  }

  else
  {
    v12 &= 2u;
  }

  if (!v12)
  {
    goto LABEL_11;
  }

  v14 = objc_opt_class();
  v20 = 138543618;
  v21 = v14;
  v22 = 2114;
  v23 = v9;
  v15 = v14;
  v16 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "[%{public}@]: Failed to create engagement request: %{public}@", &v20, 22);

  if (v16)
  {
    oSLogObject = [NSString stringWithCString:v16 encoding:4];
    free(v16);
    SSFileLog();
LABEL_11:
  }

  (completionCopy)[2](completionCopy, v9);
LABEL_14:
}

- (void)_dismissPresentedViewController
{
  childViewControllers = [(ServiceRemoteEngagementViewController *)self childViewControllers];
  firstObject = [childViewControllers firstObject];

  view = [firstObject view];
  [view removeFromSuperview];

  [firstObject removeFromParentViewController];
}

- (id)_engagementTaskForRequest:(id)request error:(id *)error
{
  if (request)
  {
    selfCopy = self;
    requestCopy = request;
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  v12 = sub_1000293BC(v8, v10);

  sub_100029D2C(v8, v10);

  return v12;
}

@end
@interface BGTaskRequest
+ (id)_requestFromActivity:(id)activity;
+ (void)initialize;
- (id)_initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation BGTaskRequest

+ (void)initialize
{
  _log = os_log_create("com.apple.BackgroundTasks", "Framework");

  MEMORY[0x1EEE66BB8]();
}

- (id)_initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = BGTaskRequest;
  v6 = [(BGTaskRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

+ (id)_requestFromActivity:(id)activity
{
  activityCopy = activity;
  v4 = objc_msgSend_launchReason(activityCopy);
  v5 = [v4 isEqualToString:*MEMORY[0x1E699A548]];

  if (v5)
  {
    v6 = BGProcessingTaskRequest;
LABEL_11:
    v15 = [(__objc2_class *)v6 _requestFromActivity:activityCopy];
    goto LABEL_12;
  }

  v7 = objc_msgSend_launchReason(activityCopy);
  v8 = [v7 isEqualToString:*MEMORY[0x1E699A568]];

  if (v8)
  {
    v6 = BGHealthResearchTaskRequest;
    goto LABEL_11;
  }

  v9 = objc_msgSend_launchReason(activityCopy);
  v10 = [v9 isEqualToString:*MEMORY[0x1E699A558]];

  if (v10)
  {
    v6 = BGContinuedProcessingTaskRequest;
    goto LABEL_11;
  }

  v11 = objc_msgSend_launchReason(activityCopy);
  v12 = [v11 isEqualToString:*MEMORY[0x1E699A560]];

  if (v12)
  {
    v6 = _BGContinuedProcessingTaskRequest;
    goto LABEL_11;
  }

  v13 = objc_msgSend_launchReason(activityCopy);
  v14 = [v13 isEqualToString:*MEMORY[0x1E699A550]];

  if (v14)
  {
    v6 = BGAppRefreshTaskRequest;
    goto LABEL_11;
  }

  v17 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    [(BGTaskRequest *)v17 _requestFromActivity:activityCopy];
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = [(BGTaskRequest *)self identifier];
  v6 = [v4 _initWithIdentifier:identifier];

  return v6;
}

+ (void)_requestFromActivity:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v9 = objc_msgSend_launchReason(a2);
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

@end
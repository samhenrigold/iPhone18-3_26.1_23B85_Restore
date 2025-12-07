@interface LACAnalyticsSession
- (LACAnalyticsSession)initWithDialogID:(id)d bundleID:(id)iD;
- (NSString)description;
- (void)authenticationAction:(int64_t)action failing:(BOOL)failing;
- (void)authenticationAttemptFailedForEvent:(int64_t)event;
- (void)authenticationStartedForEvent:(int64_t)event;
- (void)authenticationSuccessfulForEvent:(int64_t)event;
- (void)dealloc;
- (void)finish;
- (void)mergeEvaluationAnalytics:(id)analytics;
- (void)trackEvaluationAnalytics:(id)analytics;
- (void)untrackEvaluationAnalytics:(id)analytics;
@end

@implementation LACAnalyticsSession

- (LACAnalyticsSession)initWithDialogID:(id)d bundleID:(id)iD
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  v17.receiver = self;
  v17.super_class = LACAnalyticsSession;
  v9 = [(LACAnalyticsSession *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dialogID, d);
    objc_storeStrong(&v10->_bundleID, iD);
    v11 = objc_opt_new();
    analyticsData = v10->_analyticsData;
    v10->_analyticsData = v11;

    v13 = objc_opt_new();
    evaluationAnalytics = v10->_evaluationAnalytics;
    v10->_evaluationAnalytics = v13;
  }

  v15 = LACLogAnalytics(v9);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v10;
    _os_log_impl(&dword_1B0233000, v15, OS_LOG_TYPE_DEFAULT, "Created %{public}@", buf, 0xCu);
  }

  return v10;
}

- (void)dealloc
{
  [(LACAnalyticsSession *)self finish];
  v3.receiver = self;
  v3.super_class = LACAnalyticsSession;
  [(LACAnalyticsSession *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  dialogID = [(LACAnalyticsSession *)self dialogID];
  v5 = [v3 stringWithFormat:@"<LACAnalyticsSession %p dialogID: %@, evaluationAnalytics: %u>", self, dialogID, -[NSMutableArray count](self->_evaluationAnalytics, "count")];;

  return v5;
}

- (void)finish
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self->_finished)
  {
    v3 = LACLogAnalytics(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "Finishing %{public}@", buf, 0xCu);
    }

    self->_finished = 1;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = self->_evaluationAnalytics;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(LACAnalyticsSession *)self mergeEvaluationAnalytics:*(*(&v14 + 1) + 8 * v8++), v14];
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    analyticsData = [(LACAnalyticsSession *)self analyticsData];
    biomeDialogEvent = [analyticsData biomeDialogEvent];

    dialogID = [(LACAnalyticsSession *)self dialogID];
    [biomeDialogEvent setDialogID:dialogID];

    bundleID = [(LACAnalyticsSession *)self bundleID];
    [biomeDialogEvent setBundleID:bundleID];

    v13 = +[LACBiomeDialogDonationHelper sharedInstance];
    [v13 donateEvent:biomeDialogEvent];
  }
}

- (void)trackEvaluationAnalytics:(id)analytics
{
  v10 = *MEMORY[0x1E69E9840];
  analyticsCopy = analytics;
  v5 = LACLogAnalytics([(NSMutableArray *)self->_evaluationAnalytics addObject:analyticsCopy]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = analyticsCopy;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ is now tracking %{public}@", &v6, 0x16u);
  }
}

- (void)untrackEvaluationAnalytics:(id)analytics
{
  v10 = *MEMORY[0x1E69E9840];
  analyticsCopy = analytics;
  v5 = LACLogAnalytics([(NSMutableArray *)self->_evaluationAnalytics removeObject:analyticsCopy]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = analyticsCopy;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ is no longer tracking %{public}@", &v6, 0x16u);
  }
}

- (void)mergeEvaluationAnalytics:(id)analytics
{
  v13 = *MEMORY[0x1E69E9840];
  analyticsCopy = analytics;
  v5 = [(NSMutableArray *)self->_evaluationAnalytics containsObject:analyticsCopy];
  if (v5)
  {
    analyticsData = [(LACAnalyticsSession *)self analyticsData];
    [analyticsData mergeAnalyticsData:analyticsCopy];

    v8 = LACLogAnalytics(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      selfCopy = self;
      v11 = 2114;
      v12 = analyticsCopy;
      _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ has merged %{public}@", &v9, 0x16u);
    }
  }

  else
  {
    v8 = LACLogAnalytics(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(LACAnalyticsSession *)analyticsCopy mergeEvaluationAnalytics:v8];
    }
  }
}

- (void)authenticationAction:(int64_t)action failing:(BOOL)failing
{
  failingCopy = failing;
  analyticsData = [(LACAnalyticsSession *)self analyticsData];
  [analyticsData authenticationAction:action failing:failingCopy];
}

- (void)authenticationAttemptFailedForEvent:(int64_t)event
{
  analyticsData = [(LACAnalyticsSession *)self analyticsData];
  [analyticsData authenticationAttemptFailedForEvent:event];
}

- (void)authenticationSuccessfulForEvent:(int64_t)event
{
  analyticsData = [(LACAnalyticsSession *)self analyticsData];
  [analyticsData authenticationSuccessfulForEvent:event];
}

- (void)authenticationStartedForEvent:(int64_t)event
{
  analyticsData = [(LACAnalyticsSession *)self analyticsData];
  [analyticsData authenticationStartedForEvent:event];
}

- (void)mergeEvaluationAnalytics:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1B0233000, log, OS_LOG_TYPE_ERROR, "Can't merge %{public}@ into %{public}@, data is not tracked by this session.", &v3, 0x16u);
}

@end
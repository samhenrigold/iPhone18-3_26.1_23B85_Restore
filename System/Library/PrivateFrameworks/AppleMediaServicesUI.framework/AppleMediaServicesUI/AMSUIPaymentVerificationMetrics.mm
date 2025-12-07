@interface AMSUIPaymentVerificationMetrics
+ (id)_event;
+ (id)_metricsInstanceWithBag:(id)bag;
- (AMSUIPaymentVerificationMetrics)initWithBag:(id)bag appID:(id)d;
- (id)_propertiesWithPageId:(id)id displayReason:(id)reason;
- (id)_propertiesWithTargetId:(id)id pageId:(id)pageId displayReason:(id)reason;
- (void)enqueueEventWithPageId:(id)id displayReason:(id)reason;
- (void)enqueueEventWithTargetId:(id)id pageId:(id)pageId displayReason:(id)reason;
- (void)flushEvents;
@end

@implementation AMSUIPaymentVerificationMetrics

- (AMSUIPaymentVerificationMetrics)initWithBag:(id)bag appID:(id)d
{
  bagCopy = bag;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = AMSUIPaymentVerificationMetrics;
  v9 = [(AMSUIPaymentVerificationMetrics *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appID, d);
    objc_storeStrong(&v10->_bag, bag);
  }

  return v10;
}

- (void)enqueueEventWithPageId:(id)id displayReason:(id)reason
{
  reasonCopy = reason;
  idCopy = id;
  v8 = objc_opt_class();
  v9 = [(AMSUIPaymentVerificationMetrics *)self bag];
  v12 = [v8 _metricsInstanceWithBag:v9];

  _event = [objc_opt_class() _event];
  v11 = [(AMSUIPaymentVerificationMetrics *)self _propertiesWithPageId:idCopy displayReason:reasonCopy];

  [_event addPropertiesWithDictionary:v11];
  [v12 enqueueEvent:_event];
}

- (void)enqueueEventWithTargetId:(id)id pageId:(id)pageId displayReason:(id)reason
{
  reasonCopy = reason;
  pageIdCopy = pageId;
  idCopy = id;
  v11 = objc_opt_class();
  v12 = [(AMSUIPaymentVerificationMetrics *)self bag];
  v15 = [v11 _metricsInstanceWithBag:v12];

  _event = [objc_opt_class() _event];
  v14 = [(AMSUIPaymentVerificationMetrics *)self _propertiesWithTargetId:idCopy pageId:pageIdCopy displayReason:reasonCopy];

  [_event addPropertiesWithDictionary:v14];
  [v15 enqueueEvent:_event];
}

- (void)flushEvents
{
  v3 = objc_opt_class();
  v4 = [(AMSUIPaymentVerificationMetrics *)self bag];
  v6 = [v3 _metricsInstanceWithBag:v4];

  flush = [v6 flush];
}

+ (id)_metricsInstanceWithBag:(id)bag
{
  v3 = MEMORY[0x1E698CA00];
  bagCopy = bag;
  v5 = [[v3 alloc] initWithContainerID:@"com.apple.AppleMediaServices" bag:bagCopy];

  return v5;
}

+ (id)_event
{
  v2 = [objc_alloc(MEMORY[0x1E698CA08]) initWithTopic:@"xp_its_main"];

  return v2;
}

- (id)_propertiesWithPageId:(id)id displayReason:(id)reason
{
  v19[1] = *MEMORY[0x1E69E9840];
  idCopy = id;
  reasonCopy = reason;
  if (reasonCopy)
  {
    displayReason = reasonCopy;
LABEL_4:
    v18 = @"displayReason";
    v19[0] = displayReason;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    goto LABEL_5;
  }

  displayReason = [(AMSUIPaymentVerificationMetrics *)self displayReason];
  if (displayReason)
  {
    goto LABEL_4;
  }

  v9 = MEMORY[0x1E695E0F8];
LABEL_5:
  v16[0] = @"app";
  v16[1] = @"eventType";
  v10 = *MEMORY[0x1E698C6E0];
  v17[0] = @"commerce-app";
  v17[1] = v10;
  v16[2] = @"hostApp";
  appID = [(AMSUIPaymentVerificationMetrics *)self appID];
  v17[2] = appID;
  v17[3] = v9;
  v16[3] = @"pageDetails";
  v16[4] = @"pageId";
  if (idCopy)
  {
    v12 = idCopy;
  }

  else
  {
    v12 = &stru_1F3921360;
  }

  v16[5] = @"pageType";
  v13 = *MEMORY[0x1E698C6D0];
  v17[4] = v12;
  v17[5] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:6];

  return v14;
}

- (id)_propertiesWithTargetId:(id)id pageId:(id)pageId displayReason:(id)reason
{
  v23[1] = *MEMORY[0x1E69E9840];
  idCopy = id;
  pageIdCopy = pageId;
  reasonCopy = reason;
  if (reasonCopy)
  {
    displayReason = reasonCopy;
LABEL_4:
    v22 = @"displayReason";
    v23[0] = displayReason;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    goto LABEL_5;
  }

  displayReason = [(AMSUIPaymentVerificationMetrics *)self displayReason];
  if (displayReason)
  {
    goto LABEL_4;
  }

  v12 = MEMORY[0x1E695E0F8];
LABEL_5:
  v20[0] = @"actionDetails";
  v20[1] = @"actionType";
  v21[0] = v12;
  v21[1] = @"navigate";
  v20[2] = @"app";
  v20[3] = @"eventType";
  v13 = *MEMORY[0x1E698C6D8];
  v21[2] = @"commerce-app";
  v21[3] = v13;
  v20[4] = @"hostApp";
  appID = [(AMSUIPaymentVerificationMetrics *)self appID];
  v21[4] = appID;
  v21[5] = v12;
  v20[5] = @"pageDetails";
  v20[6] = @"pageId";
  if (pageIdCopy)
  {
    v15 = pageIdCopy;
  }

  else
  {
    v15 = &stru_1F3921360;
  }

  v16 = *MEMORY[0x1E698C6D0];
  v21[6] = v15;
  v21[7] = v16;
  v20[7] = @"pageType";
  v20[8] = @"targetId";
  if (idCopy)
  {
    v17 = idCopy;
  }

  else
  {
    v17 = &stru_1F3921360;
  }

  v20[9] = @"targetType";
  v21[8] = v17;
  v21[9] = @"button";
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:10];

  return v18;
}

@end
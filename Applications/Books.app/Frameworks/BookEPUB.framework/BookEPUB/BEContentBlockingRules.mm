@interface BEContentBlockingRules
+ (BEContentBlockingRules)sharedInstance;
- (BEContentBlockingRules)init;
- (void)applyContentBlockingRule:(unint64_t)rule toWebView:(id)view completion:(id)completion;
@end

@implementation BEContentBlockingRules

+ (BEContentBlockingRules)sharedInstance
{
  if (qword_36AA48 != -1)
  {
    sub_2638E0();
  }

  v3 = qword_36AA40;

  return v3;
}

- (BEContentBlockingRules)init
{
  v6.receiver = self;
  v6.super_class = BEContentBlockingRules;
  v2 = [(BEContentBlockingRules *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    cachedRules = v2->_cachedRules;
    v2->_cachedRules = v3;
  }

  return v2;
}

- (void)applyContentBlockingRule:(unint64_t)rule toWebView:(id)view completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  if ([viewCopy be_appliedContentBlockingRule] == rule)
  {
    v10 = objc_retainBlock(completionCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }

  else
  {
    v12 = +[NSFileManager defaultManager];
    v13 = [v12 URLsForDirectory:13 inDomains:1];

    v14 = objc_alloc_init(NSMutableArray);
    [v14 addObject:@"BEContentRuleLists"];
    v15 = +[UIDevice currentDevice];
    systemVersion = [v15 systemVersion];
    [v14 addObject:systemVersion];

    if (BEIsInternalInstall(v17, v18))
    {
      v19 = +[UIDevice currentDevice];
      buildVersion = [v19 buildVersion];
      [v14 addObject:buildVersion];
    }

    v21 = [v14 componentsJoinedByString:@"_"];

    lastObject = [v13 lastObject];
    v23 = [lastObject URLByAppendingPathComponent:v21];

    v24 = [WKContentRuleListStore storeWithURL:v23];

    if (rule >= 3)
    {
      v27 = _BookEPUBLog(v25);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = [NSNumber numberWithUnsignedInteger:rule];
        *buf = 138412290;
        v46 = v28;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "Unsupported content blocking rule '%@'", buf, 0xCu);
      }

      v26 = @"RemoteContentBlocked";
    }

    else
    {
      v26 = off_327F40[rule];
    }

    configuration = [viewCopy configuration];
    userContentController = [configuration userContentController];

    objc_initWeak(buf, self);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_2E40;
    v39[3] = &unk_327EF8;
    v31 = userContentController;
    v40 = v31;
    v41 = viewCopy;
    v44[1] = rule;
    objc_copyWeak(v44, buf);
    v42 = v26;
    v43 = completionCopy;
    v32 = objc_retainBlock(v39);
    v33 = [(NSMutableDictionary *)self->_cachedRules objectForKeyedSubscript:v26];
    if (v33)
    {
      (v32[2])(v32, v33, 0);
    }

    else
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_2F90;
      v34[3] = &unk_327F20;
      v37 = v32;
      ruleCopy = rule;
      v35 = v24;
      v36 = v26;
      [v35 lookUpContentRuleListForIdentifier:v26 completionHandler:v34];
    }

    objc_destroyWeak(v44);
    objc_destroyWeak(buf);
  }
}

@end
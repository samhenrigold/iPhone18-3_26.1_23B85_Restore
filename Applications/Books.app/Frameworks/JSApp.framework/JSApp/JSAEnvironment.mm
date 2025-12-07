@interface JSAEnvironment
+ (void)_exposeObjectsAndClassesToContext:(id)context;
- (JSAEnvironment)init;
- (id)appForOwnership;
- (void)dealloc;
- (void)loadScript:(id)script name:(id)name version:(id)version isBundled:(BOOL)bundled completion:(id)completion;
- (void)loadScriptFromPackage:(id)package completion:(id)completion;
- (void)registerObjects:(id)objects;
@end

@implementation JSAEnvironment

- (JSAEnvironment)init
{
  v19.receiver = self;
  v19.super_class = JSAEnvironment;
  v2 = [(JSAEnvironment *)&v19 init];
  v3 = v2;
  if (v2)
  {
    appVersion = v2->_appVersion;
    v2->_appVersion = @"undefined";

    atomic_store(0, &v3->_exceptionHandlerReentrantCount);
    v5 = [[JSAThread alloc] initWithName:@"com.apple.iBooks.JSAThread"];
    thread = v3->_thread;
    v3->_thread = v5;

    objc_initWeak(&location, v3);
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_56A4;
    v16 = &unk_B2320;
    objc_copyWeak(&v17, &location);
    v7 = objc_retainBlock(&v13);
    v8 = [NSNotificationCenter defaultCenter:v13];
    v9 = [v8 addObserverForName:UIApplicationDidReceiveMemoryWarningNotification object:0 queue:0 usingBlock:v7];
    sub_578C(v3);
    if (MGGetBoolAnswer())
    {
      v10 = [[BUOSStateHandler alloc] initWithTitle:@"ScriptingLocalStorage" block:&stru_B2360];
      stateDumpHandle = v3->_stateDumpHandle;
      v3->_stateDumpHandle = v10;
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  value = [(JSManagedValue *)self->_nativeJSObject value];
  context = [value context];
  virtualMachine = [context virtualMachine];
  [virtualMachine removeManagedReference:self->_nativeJSObject withOwner:self];

  v7.receiver = self;
  v7.super_class = JSAEnvironment;
  [(JSAEnvironment *)&v7 dealloc];
}

- (id)appForOwnership
{
  context = [(JSAEnvironment *)self context];
  v4 = [context objectForKeyedSubscript:@"App"];

  v5 = [v4 toObjectOfClass:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    globalObject = v5;
  }

  else
  {
    v8 = JSALog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_7F048(self, v8);
    }

    if (+[JSADevice isInternalBuild])
    {
      context2 = [(JSAEnvironment *)self context];
      BUReportAssertionFailureWithMessage();

      BUCrashBreakpoint();
      result = BUIsRunningTests();
      if ((result & 1) == 0)
      {
        __break(1u);
        return result;
      }

      context3 = [(JSAEnvironment *)self context];
      BUCrashFinalThrow();
    }

    context4 = [(JSAEnvironment *)self context];
    globalObject = [context4 globalObject];
  }

  return globalObject;
}

- (void)loadScriptFromPackage:(id)package completion:(id)completion
{
  completionCopy = completion;
  packageCopy = package;
  v11 = [packageCopy dataAtPath:@"app.js"];
  nameForJSContext = [packageCopy nameForJSContext];
  version = [packageCopy version];
  isBundled = [packageCopy isBundled];

  [(JSAEnvironment *)self loadScript:v11 name:nameForJSContext version:version isBundled:isBundled completion:completionCopy];
}

- (void)loadScript:(id)script name:(id)name version:(id)version isBundled:(BOOL)bundled completion:(id)completion
{
  scriptCopy = script;
  nameCopy = name;
  versionCopy = version;
  completionCopy = completion;
  v16 = JSALog(completionCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v30 = "[JSAEnvironment loadScript:name:version:isBundled:completion:]";
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "JSAEnvironment %{public}s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  thread = [(JSAEnvironment *)self thread];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_654C;
  v22[3] = &unk_B23D8;
  objc_copyWeak(&v27, buf);
  v18 = scriptCopy;
  v23 = v18;
  v19 = nameCopy;
  v24 = v19;
  v20 = versionCopy;
  v25 = v20;
  bundledCopy = bundled;
  v21 = completionCopy;
  v26 = v21;
  [thread enqueueBlock:v22];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
}

- (void)registerObjects:(id)objects
{
  objectsCopy = objects;
  if ([objectsCopy count])
  {
    thread = [(JSAEnvironment *)self thread];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_6990;
    v6[3] = &unk_B2128;
    v6[4] = self;
    v7 = objectsCopy;
    [thread enqueueBlock:v6];
  }
}

+ (void)_exposeObjectsAndClassesToContext:(id)context
{
  contextCopy = context;
  v4 = JSASignpostExecution(contextCopy);
  v5 = os_signpost_id_generate(v4);

  v7 = JSASignpostExecution(v6);
  v8 = v7;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Expose Objects", "", buf, 2u);
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_743C;
  v32[3] = &unk_B2400;
  v9 = objc_alloc_init(JSAFoundation);
  v33 = v9;
  v10 = objc_retainBlock(v32);
  [contextCopy setObject:v10 forKeyedSubscript:@"setInterval"];

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_7448;
  v30[3] = &unk_B2428;
  v11 = v9;
  v31 = v11;
  v12 = objc_retainBlock(v30);
  [contextCopy setObject:v12 forKeyedSubscript:@"clearInterval"];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_7454;
  v28[3] = &unk_B2400;
  v13 = v11;
  v29 = v13;
  v14 = objc_retainBlock(v28);
  [contextCopy setObject:v14 forKeyedSubscript:@"setTimeout"];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_7460;
  v26[3] = &unk_B2428;
  v15 = v13;
  v27 = v15;
  v16 = objc_retainBlock(v26);
  [contextCopy setObject:v16 forKeyedSubscript:@"clearTimeout"];

  v17 = [JSValue valueWithNewObjectInContext:contextCopy];
  [contextCopy setObject:v17 forKeyedSubscript:@"native"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"AccountController"];
  [v17 setObject:&stru_B2468 forKeyedSubscript:@"currentPackage"];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_74C0;
  v24[3] = &unk_B24E0;
  v18 = contextCopy;
  v25 = v18;
  v19 = objc_retainBlock(v24);
  [v17 setObject:v19 forKeyedSubscript:@"templateRegistrationPromise"];

  [v17 setObject:objc_opt_class() forKeyedSubscript:@"MetricsController"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"Store"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"Account"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"Application"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"AssetRequest"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"Base64"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"Calendar"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"ColorUtils"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"Cookie"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"DateComponentsFormatter"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"DateFormatter"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"Device"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"FamilySharing"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"Locale"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"OSLog"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"Network"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"ParentalApproval"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"Persistence"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"PostReviewRequest"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"ProfileBagKeyEntry"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"ProfileBagManager"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"Share"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"StoreContentLookupRequest"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"StoreHTTPRequest"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"StoreHTTPResponse"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"Timer"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"URLParser"];
  [v17 setObject:objc_opt_class() forKeyedSubscript:@"UserDefaults"];
  [v17 setObject:&off_BA7D0 forKeyedSubscript:@"nativeAPIVersion"];
  v20 = [NSNumber numberWithBool:_UISolariumEnabled()];
  [v17 setObject:v20 forKeyedSubscript:@"preferRoundedUI"];

  v22 = JSASignpostExecution(v21);
  v23 = v22;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v23, OS_SIGNPOST_INTERVAL_END, v5, "Expose Objects", "", buf, 2u);
  }
}

@end
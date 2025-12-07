@interface MSDAppLauncherTerminator
+ (BOOL)launchApp:(id)app withOptions:(id)options outError:(id *)error;
+ (BOOL)terminateApp:(id)app outError:(id *)error;
@end

@implementation MSDAppLauncherTerminator

+ (BOOL)launchApp:(id)app withOptions:(id)options outError:(id *)error
{
  appCopy = app;
  optionsCopy = options;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100017148;
  v33 = sub_100017158;
  v34 = 0;
  v9 = dispatch_semaphore_create(0);
  v10 = dispatch_time(0, 5000000000);
  v11 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v41 = FBSOpenApplicationOptionKeyUnlockDevice;
  v42 = &__kCFBooleanTrue;
  v12 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v13 = [NSMutableDictionary dictionaryWithDictionary:v12];

  if (optionsCopy)
  {
    [v13 addEntriesFromDictionary:optionsCopy];
  }

  v14 = [FBSOpenApplicationOptions optionsWithDictionary:v13];
  v15 = sub_100063A54(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v40 = appCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Launching app: %{public}@", buf, 0xCu);
  }

  v17 = sub_100063A54(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_1000C8BC4(v13, v17);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100017160;
  v24[3] = &unk_10016A108;
  v27 = &v29;
  v18 = appCopy;
  v25 = v18;
  v28 = &v35;
  v19 = v9;
  v26 = v19;
  [v11 openApplication:v18 withOptions:v14 completion:v24];
  v20 = dispatch_semaphore_wait(v19, v10);
  if (v20)
  {
    v21 = sub_100063A54(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000C8C3C(v21);
    }
  }

  if (error)
  {
    *error = v30[5];
  }

  v22 = *(v36 + 24);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  return v22 & 1;
}

+ (BOOL)terminateApp:(id)app outError:(id *)error
{
  appCopy = app;
  v6 = [RBSProcessPredicate predicateMatchingBundleIdentifier:appCopy];
  v7 = [[RBSTerminateContext alloc] initWithExplanation:@"Terminated by demod"];
  v8 = [[RBSTerminateRequest alloc] initWithPredicate:v6 context:v7];
  v9 = sub_100063A54(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = appCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Terminating app: %{public}@", buf, 0xCu);
  }

  v14 = 0;
  v10 = [v8 execute:&v14];
  v11 = v14;
  if ((v10 & 1) == 0)
  {
    sub_1000C8D24(appCopy, v11);
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (error)
  {
LABEL_5:
    v12 = v11;
    *error = v11;
  }

LABEL_6:

  return v10;
}

@end
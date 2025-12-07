@interface FMDAudioPlayerFactory
+ (id)initWithContentsOfURL:(id)l error:(id *)error;
@end

@implementation FMDAudioPlayerFactory

+ (id)initWithContentsOfURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = +[FMDAVRouteControllerFactory isAutomationActive];
  v7 = v6;
  v8 = sub_1000070C0(v6);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMDAutomationAVAudioPlayer: switching to automation", buf, 2u);
    }

    v10 = +[FMDAutomationHelperFactory sharedFactory];
    v11 = [v10 automationHelperClassWithName:@"FMDAutomationAVAudioPlayer"];

    v12 = [v11 alloc];
    v19 = 0;
    v13 = &v19;
    v14 = [v12 initWithError:&v19];
  }

  else
  {
    if (v9)
    {
      *buf = 138412290;
      v21 = lCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AVAudioPlayer: initWithContentsOfURL: %@", buf, 0xCu);
    }

    v18 = 0;
    v13 = &v18;
    v14 = [[AVAudioPlayer alloc] initWithContentsOfURL:lCopy error:&v18];
  }

  v15 = v14;
  v16 = *v13;
  if (error)
  {
    v16 = v16;
    *error = v16;
  }

  return v15;
}

@end
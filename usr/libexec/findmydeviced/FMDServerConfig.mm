@interface FMDServerConfig
+ (id)sharedInstance;
- (FMDServerConfig)init;
- (id)urlTemplateForRequestType:(id)type;
@end

@implementation FMDServerConfig

+ (id)sharedInstance
{
  if (qword_1003149C8 != -1)
  {
    sub_10022D9DC();
  }

  v3 = qword_1003149C0;

  return v3;
}

- (FMDServerConfig)init
{
  v28.receiver = self;
  v28.super_class = FMDServerConfig;
  v2 = [(FMDServerConfig *)&v28 init];
  if (v2)
  {
    v3 = +[FMDSystemConfig sharedInstance];
    productType = [v3 productType];

    v5 = +[FMDSystemConfig sharedInstance];
    productName = [v5 productName];

    v7 = +[FMDSystemConfig sharedInstance];
    productVersion = [v7 productVersion];

    v9 = +[FMDSystemConfig sharedInstance];
    buildVersion = [v9 buildVersion];

    v11 = +[NSBundle mainBundle];
    bundleIdentifier = [v11 bundleIdentifier];

    v13 = [NSString stringWithFormat:@"%@/1", bundleIdentifier];
    v27 = productName;
    v14 = [NSString stringWithFormat:@"<%@> <%@%@;%@> <%@/1 (%@)>", productType, productName, productVersion, buildVersion, bundleIdentifier, v13];;
    [(FMDServerConfig *)v2 setMmeClientInfo:v14];

    v15 = [NSString stringWithFormat:@"FMDClient/%@ %@/%@", @"6.0", productType, buildVersion];
    [(FMDServerConfig *)v2 setUserAgent:v15];

    v17 = sub_100002880(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      mmeClientInfo = [(FMDServerConfig *)v2 mmeClientInfo];
      *buf = 138412290;
      v30 = mmeClientInfo;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "mmeClientInfo = %@", buf, 0xCu);
    }

    v19 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
    v20 = [v19 pathForResource:@"URLTemplates" ofType:@"plist"];
    v21 = [NSDictionary dictionaryWithContentsOfFile:v20];
    [(FMDServerConfig *)v2 setUrlTemplates:v21];

    urlTemplates = [(FMDServerConfig *)v2 urlTemplates];
    v23 = [urlTemplates count];

    if (!v23)
    {
      v25 = sub_100002880(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v20;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "No URL templates found at path: %@", buf, 0xCu);
      }
    }
  }

  return v2;
}

- (id)urlTemplateForRequestType:(id)type
{
  typeCopy = type;
  urlTemplates = [(FMDServerConfig *)self urlTemplates];
  v6 = [urlTemplates objectForKeyedSubscript:typeCopy];

  if (!v6)
  {
    v8 = sub_100002880(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = typeCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Could not find url template for request type: %@", &v10, 0xCu);
    }
  }

  return v6;
}

@end
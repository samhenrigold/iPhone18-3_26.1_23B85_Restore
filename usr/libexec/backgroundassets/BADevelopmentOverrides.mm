@interface BADevelopmentOverrides
+ (id)URLForApplicationRecord:(id)record;
@end

@implementation BADevelopmentOverrides

+ (id)URLForApplicationRecord:(id)record
{
  recordCopy = record;
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.backgroundassets.managed"];
  v5 = v4;
  if (!v4)
  {
    v7 = sub_1000104FC(0);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v13 = "The Managed Background Assets defaults suite is unavailable.";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
    goto LABEL_15;
  }

  v6 = [v4 URLForKey:@"MBAURLOverride"];
  v7 = sub_1000104FC(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    *buf = 0;
    v13 = "No development override is set.";
    goto LABEL_14;
  }

  if (v8)
  {
    *buf = 138543362;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "A development-override URL, “%{public}@”, is set.", buf, 0xCu);
  }

  if ((os_variant_has_internal_content() & 1) != 0 || (v15 = [recordCopy isProfileValidated], v15) && (v15 = objc_msgSend(recordCopy, "isBeta"), !v15))
  {
    host = [v6 host];

    if (host)
    {
      v7 = v6;
LABEL_8:
      v11 = [recordCopy platform] - 1;
      if (v11 > 0xB)
      {
        v12 = 0;
      }

      else
      {
        v12 = off_10007A1C0[v11];
      }

      v23 = [NSURLComponents componentsWithURL:v7 resolvingAgainstBaseURL:1];
      [v23 setPath:@"/manifest"];
      v24 = [NSURLQueryItem queryItemWithName:@"platform" value:v12];
      v29 = v24;
      v25 = [NSArray arrayWithObjects:&v29 count:1];
      [v23 setQueryItems:v25];

      v14 = [v23 URL];

      goto LABEL_29;
    }

    v18 = sub_1000104FC(v10);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "The development-override URL “%{public}@” lacks a host component; reinterpreting it as a string and constructing a URL explicitly…", buf, 0xCu);
    }

    v7 = [v5 stringForKey:@"MBAURLOverride"];
    if (v7)
    {
      v19 = [NSURL URLWithString:v7];

      if (v19)
      {
        host2 = [v19 host];

        if (host2)
        {

          v7 = v19;
          goto LABEL_8;
        }

        v28 = sub_1000104FC(v22);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v31 = v19;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "The development-override URL “%{public}@” lacks a host component.", buf, 0xCu);
        }

        v6 = v19;
      }

      else
      {
        v6 = sub_1000104FC(v20);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v31 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "The string “%{public}@” couldn’t be converted into a URL.", buf, 0xCu);
        }
      }
    }

    else
    {
      v27 = sub_1000104FC(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "The the development-override URL’s value couldn’t be interpreted as a string.", buf, 2u);
      }
    }

LABEL_15:
    v14 = 0;
    goto LABEL_29;
  }

  v16 = sub_1000104FC(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    applicationIdentifier = [recordCopy applicationIdentifier];
    *buf = 138543362;
    v31 = applicationIdentifier;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Development overrides aren’t permitted for the application with the identifier “%{public}@”.", buf, 0xCu);
  }

  v14 = 0;
  v7 = v6;
LABEL_29:

  return v14;
}

@end
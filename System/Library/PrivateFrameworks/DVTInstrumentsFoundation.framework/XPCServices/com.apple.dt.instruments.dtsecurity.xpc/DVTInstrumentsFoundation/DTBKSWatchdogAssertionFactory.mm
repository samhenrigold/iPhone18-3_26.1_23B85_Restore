@interface DTBKSWatchdogAssertionFactory
- (id)assertionForPid:(int)pid;
@end

@implementation DTBKSWatchdogAssertionFactory

- (id)assertionForPid:(int)pid
{
  v3 = *&pid;
  v4 = sub_10000BEC0(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "acquiring assertion for pid %d", buf, 8u);
  }

  v5 = [RBSDomainAttribute attributeWithDomain:@"com.apple.DTServiceHub" name:@"DeveloperToolsDebugging"];
  v21 = v5;
  v6 = [NSArray arrayWithObjects:&v21 count:1];

  v7 = [RBSAssertion alloc];
  v8 = [RBSTarget targetWithPid:v3];
  v9 = [v7 initWithExplanation:@"Target is being analyzed by developer tools" target:v8 attributes:v6];

  v20 = 0;
  v10 = [v9 acquireWithError:&v20];
  v11 = v20;
  v12 = v11;
  if (v10)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000BF04;
    v17[3] = &unk_10001D690;
    v19 = v3;
    v18 = v9;
    v13 = objc_retainBlock(v17);
    v14 = objc_retainBlock(v13);

    v15 = v18;
  }

  else
  {
    v15 = sub_10000BEC0(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100012FB0(v12, v3, v15);
    }

    v14 = 0;
  }

  return v14;
}

@end
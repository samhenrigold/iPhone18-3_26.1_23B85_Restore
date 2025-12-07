@interface FMDMteStatusUtil
+ (void)fetchMteStatusWithCompletion:(id)completion;
@end

@implementation FMDMteStatusUtil

+ (void)fetchMteStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v18 = 0;
  v4 = [CKKSControl CKKSControlObject:0 error:&v18];
  v5 = v18;
  v6 = v5;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4 == 0;
  }

  if (v7)
  {
    v8 = sub_100002880(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10022EBFC(v6, v8, v9, v10, v11, v12, v13, v14);
    }

    v15 = [v6 description];
    completionCopy[2](completionCopy, @"controlObjCreationError", v15);
  }

  else
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001D7364;
    v16[3] = &unk_1002D11B0;
    v17 = completionCopy;
    [v4 rpcStatus:@"Manatee" reply:v16];
    v15 = v17;
  }
}

@end
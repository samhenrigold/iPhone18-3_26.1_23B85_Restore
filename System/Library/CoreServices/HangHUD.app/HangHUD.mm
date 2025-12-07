id sub_100001120(double a1)
{
  if (sub_100017864())
  {
    +[HUDConfiguration sharedInstance];
  }

  else
  {
    +[HTPrefs sharedPrefs];
  }
  v2 = ;
  v3 = [v2 runloopHangTimeoutDurationMSec];

  v4 = v3;
  if (v3 <= a1)
  {
    [NSString stringWithFormat:@"%.f+ ms", v4, v3];
  }

  else
  {
    [NSString stringWithFormat:@"%.f ms", v4, *&a1];
  }
  v5 = ;

  return v5;
}

void sub_100001504(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001584;
  v4[3] = &unk_100030618;
  v4[4] = v2;
  *&v4[5] = a2;
  dispatch_sync(v3, v4);
}

void sub_100001584(uint64_t a1)
{
  [CATransaction setDisableActions:1];
  v2 = sub_100001120(*(a1 + 40));
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  [v4 setString:v2];

  v6 = sub_100002F0C(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100018384(v3, v6);
  }
}

void sub_100001600(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000167C;
  block[3] = &unk_100030668;
  block[4] = v1;
  dispatch_sync(v2, block);
}

void sub_10000167C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

void sub_10000174C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

id sub_100001768(uint64_t a1)
{
  if (qword_10003E6A8 != -1)
  {
    sub_100018420();
  }

  v2 = qword_10003E6B0;

  return v2;
}

void sub_1000017AC(id a1)
{
  v6 = +[NSMutableArray array];
  v1 = 2;
  do
  {
    v2 = [NSNumber numberWithUnsignedLongLong:v1];
    [v6 addObject:v2];

    v3 = v1 >> 42;
    v1 *= 2;
  }

  while (!v3);
  v4 = [v6 copy];
  v5 = qword_10003E6B0;
  qword_10003E6B0 = v4;
}

void sub_10000193C(id a1)
{
  qword_10003E6B8 = objc_alloc_init(HUDAnimator);

  _objc_release_x1();
}

void sub_100001AA4(uint64_t a1)
{
  v3 = objc_alloc_init(HUDAnimation);
  [(HUDAnimation *)v3 setFromValue:*(a1 + 64)];
  [(HUDAnimation *)v3 setToValue:*(a1 + 72)];
  [(HUDAnimation *)v3 setStartTime:CACurrentMediaTime()];
  [(HUDAnimation *)v3 startTime];
  [(HUDAnimation *)v3 setEndTime:v2 + *(a1 + 80)];
  [(HUDAnimation *)v3 setUpdateBlock:*(a1 + 48)];
  [(HUDAnimation *)v3 setCompletionBlock:*(a1 + 56)];
  [(HUDAnimation *)v3 setIdentifier:*(a1 + 32)];
  [*(*(a1 + 40) + 8) addObject:v3];
}

void sub_100001C18(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001DB0;
  v10[3] = &unk_100030720;
  v11 = *(a1 + 40);
  v3 = [v2 indexOfObjectPassingTest:v10];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    v5 = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:v3];
    v6 = objc_alloc_init(HUDAnimation);
    v7 = CACurrentMediaTime();
    [v5 valueAtTime:?];
    [(HUDAnimation *)v6 setFromValue:?];
    [(HUDAnimation *)v6 setToValue:*(a1 + 48)];
    [(HUDAnimation *)v6 setStartTime:v7];
    [(HUDAnimation *)v6 setEndTime:v7 + *(a1 + 56)];
    v8 = [v5 updateBlock];
    [(HUDAnimation *)v6 setUpdateBlock:v8];

    v9 = [v5 completionBlock];
    [(HUDAnimation *)v6 setCompletionBlock:v9];

    [(HUDAnimation *)v6 setRetargeted:1];
    [(HUDAnimation *)v6 setIdentifier:*(a1 + 40)];
    [*(*(a1 + 32) + 8) replaceObjectAtIndex:v4 withObject:v6];
  }
}

id sub_100001DB0(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_100001E8C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000201C;
  v9[3] = &unk_100030720;
  v10 = *(a1 + 40);
  v3 = [v2 indexOfObjectPassingTest:v9];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    v5 = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:v3];
    v6 = objc_alloc_init(HUDAnimation);
    [v5 fromValue];
    [(HUDAnimation *)v6 setFromValue:?];
    [v5 toValue];
    [(HUDAnimation *)v6 setToValue:?];
    [v5 startTime];
    [(HUDAnimation *)v6 setStartTime:?];
    [v5 endTime];
    [(HUDAnimation *)v6 setEndTime:?];
    v7 = [v5 updateBlock];
    [(HUDAnimation *)v6 setUpdateBlock:v7];

    v8 = [v5 completionBlock];
    [(HUDAnimation *)v6 setCompletionBlock:v8];

    [(HUDAnimation *)v6 setCanceled:1];
    [(HUDAnimation *)v6 setIdentifier:*(a1 + 40)];
    [*(*(a1 + 32) + 8) replaceObjectAtIndex:v4 withObject:v6];
  }
}

id sub_10000201C(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_1000020D4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) count])
  {
    if (!*(*(a1 + 32) + 24))
    {
      v2 = [CADisplayLink displayLinkWithTarget:"displayLinkWithTarget:selector:" selector:?];
      v3 = *(a1 + 32);
      v4 = *(v3 + 24);
      *(v3 + 24) = v2;

      v5 = [NSThread alloc];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000021E8;
      v7[3] = &unk_100030668;
      v7[4] = *(a1 + 32);
      v6 = [v5 initWithBlock:v7];
      v8 = CAFrameRateRangeMake(30.0, 30.0, 30.0);
      [*(*(a1 + 32) + 24) setPreferredFrameRateRange:{*&v8.minimum, *&v8.maximum, *&v8.preferred}];
      [v6 setQualityOfService:33];
      [v6 setName:@"com.apple.hangtracerd.HUDAnimator"];
      [v6 start];
    }
  }
}

void sub_1000021E8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = +[NSRunLoop currentRunLoop];
  [v1 addToRunLoop:v2 forMode:NSDefaultRunLoopMode];

  v3 = +[NSRunLoop currentRunLoop];
  [v3 run];
}

void sub_10000248C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 160), 8);
  _Block_object_dispose((v30 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000024BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000024D4(void *a1)
{
  v2 = [*(a1[4] + 8) indexesOfObjectsPassingTest:&stru_1000307B0];
  v3 = [*(a1[4] + 8) objectsAtIndexes:v2];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1[4] + 8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002634;
  v11[3] = &unk_1000307D0;
  v11[4] = a1[8];
  v7 = [v6 indexesOfObjectsPassingTest:v11];
  if ([v7 count])
  {
    v8 = [*(a1[4] + 8) objectsAtIndexes:v7];
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(a1[4] + 8) removeObjectsAtIndexes:v7];
    if (![*(a1[4] + 8) count])
    {
      *(*(a1[7] + 8) + 24) = 1;
    }
  }
}

uint64_t sub_100002634(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 endTime];
  if (v4 <= *(a1 + 32))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 canceled];
  }

  return v5;
}

void sub_100002688(uint64_t a1)
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = [v7 updateBlock];
        [v7 valueAtTime:*(a1 + 48)];
        v8[2](v8);
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = *(*(*(a1 + 40) + 8) + 40);
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * j);
        v15 = [v14 completionBlock];

        if (v15)
        {
          v16 = [v14 completionBlock];
          (v16)[2](v16, [v14 canceled] ^ 1, objc_msgSend(v14, "retargeted"));
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v11);
  }
}

void sub_10000289C(uint64_t a1)
{
  if (![*(*(a1 + 32) + 8) count])
  {
    [*(*(a1 + 32) + 24) invalidate];
    v2 = *(a1 + 32);
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;
  }
}

id sub_100002A70(uint64_t a1, void *a2, unint64_t a3)
{
  [a2 timeIntervalSinceReferenceDate];
  v7 = sub_100017B08((v5 * 1000.0), v6);
  v9 = sub_100017AB4((v7 - a3) + a1, v8);

  return [NSDate dateWithTimeIntervalSinceReferenceDate:v9];
}

uint64_t sub_100002BFC(uint64_t a1)
{
  qword_10003E6C8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

id sub_100002F0C(uint64_t a1)
{
  if (qword_10003E6E0 != -1)
  {
    sub_100018538();
  }

  v2 = qword_10003E6D8;

  return v2;
}

void sub_100002F50(id a1)
{
  qword_10003E6D8 = os_log_create("com.apple.hangtracer", "");

  _objc_release_x1();
}

void sub_100003078(uint64_t a1)
{
  v1 = sub_100002F0C(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "marking hangreporter as clean to exit", v3, 2u);
  }

  v2 = [qword_10003E6F0 transaction];

  if (v2)
  {
    [qword_10003E6F0 setTransaction:0];
  }
}

void sub_100003A1C(id a1)
{
  v1 = [[HTFixedSizeQueue alloc] initWithSize:128];
  v2 = qword_10003E6F0;
  qword_10003E6F0 = v1;

  if (!qword_10003E6F0)
  {
    v4 = sub_100002F0C(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000185B8(v4);
    }

    exit(12);
  }
}

void sub_100004354(id a1)
{
  qword_10003E6F8 = [[HUDRenderServer alloc] _init];

  _objc_release_x1();
}

void sub_10000460C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000A9AC(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100018610(v3);
  }

  if ([v3 count])
  {
    v5 = [*(*(a1 + 32) + 24) acquireKeepAliveAssertion];

    if (v5)
    {
      v6 = [v3 mutableCopy];
      v7 = [v3 objectForKeyedSubscript:off_10003E3D8];

      if ([v3 count] == 1 && v7)
      {
        [v6 removeAllObjects];
      }

      v8 = sub_100004800([v6 enumerateKeysAndObjectsUsingBlock:&stru_1000308E0]);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100004844;
      v10[3] = &unk_100030770;
      v11 = v6;
      v12 = *(a1 + 32);
      v9 = v6;
      dispatch_sync(v8, v10);
    }
  }
}

void sub_10000477C(id a1, NSString *a2, HUDContentProtocol *a3, BOOL *a4)
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v5;
    if (![(HUDContentProtocol *)v4 requestedToRenderTimestamp])
    {
      [(HUDContentProtocol *)v4 setRequestedToRenderTimestamp:mach_absolute_time()];
    }
  }

  _objc_release_x1();
}

id sub_100004800(uint64_t a1)
{
  if (qword_10003E728 != -1)
  {
    sub_100018690();
  }

  v2 = qword_10003E720;

  return v2;
}

void sub_100004844(uint64_t a1)
{
  if ([*(a1 + 32) count] || (v2 = *(a1 + 40), (v2[32] & 1) != 0))
  {
    v3 = &stru_100030900;
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100004910;
    v5[3] = &unk_100030668;
    v6 = v2;
    v3 = objc_retainBlock(v5);
  }

  v4 = *(*(a1 + 40) + 16);
  if (v4)
  {
    [v4 updateHUD:*(a1 + 32) withCompletion:v3];
  }
}

void sub_10000491C(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(NSMutableDictionary);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = v2;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v26;
    *&v6 = 138412546;
    v24 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = sub_10000A9AC(v5);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v21 = [v10 processName];
          v22 = [v10 exitTimestamp];
          *buf = v24;
          v30 = v21;
          v31 = 2048;
          v32 = v22;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Adding proc exit record to the HUD update list: processName: %@, exitTimestamp:%llu", buf, 0x16u);
        }

        v12 = [v10 processName];
        v13 = [v3 objectForKeyedSubscript:v12];

        if (v13)
        {
          v14 = [v10 processName];
          v15 = [v3 objectForKeyedSubscript:v14];

          v17 = sub_10000A9AC(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v15 processName];
            v19 = [v15 exitTimestamp];
            *buf = v24;
            v30 = v18;
            v31 = 2048;
            v32 = v19;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " Overwriting the exiting proc exit item sharing the same process name %@ with exitTimestamp: %llu", buf, 0x16u);
          }
        }

        v20 = [v10 processName];
        [v3 setObject:v10 forKeyedSubscript:v20];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
      v7 = v5;
    }

    while (v5);
  }

  if ([v3 count])
  {
    v23 = +[HUDContextUpdater sharedInstance];
    [v23 addHUDContents:v3];
  }
}

void sub_100004BD8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[HangHUDServiceSpecification domainName];
  [v5 setDomain:v3];

  v4 = +[HangHUDServiceSpecification identifier];
  [v5 setService:v4];

  [v5 setDelegate:*(a1 + 32)];
}

id sub_100004D28(uint64_t a1)
{
  v2 = sub_10000A9AC(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000186A4();
  }

  v3 = [HUDContext alloc];
  v4 = sub_100004800(v3);
  v5 = [(HUDContext *)v3 initWithQueue:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  return [*(*(a1 + 32) + 16) setHangHUDUpdaterLatencyInMS:50.0];
}

void sub_100004FB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 setUserInfo:?];
  }

  v5 = +[HangHUDServiceSpecification interface];
  [v4 setInterface:v5];

  [v4 setInterfaceTarget:*(a1 + 40)];
  v6 = +[HangHUDServiceSpecification serviceQuality];
  [v4 setServiceQuality:v6];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000050A8;
  v7[3] = &unk_1000309B8;
  v7[4] = *(a1 + 40);
  [v4 setInvalidationHandler:v7];
}

void sub_1000050A8(uint64_t a1)
{
  v2 = sub_100004800(a1);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005134;
  block[3] = &unk_100030668;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);
}

void sub_100005EDC(id a1)
{
  qword_10003E708 = objc_alloc_init(HUDContextUpdater);

  _objc_release_x1();
}

id sub_100005FF8(uint64_t a1)
{
  v2 = sub_10000A9AC(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100018C3C(a1);
  }

  return [*(a1 + 32) HandleUpdateAndClear];
}

void sub_10000667C(id a1)
{
  qword_10003E720 = dispatch_queue_create("com.apple.HangHUD.HUDUpdateQueue", 0);

  _objc_release_x1();
}

id sub_1000066F8(uint64_t a1)
{
  if (a1 == 2)
  {
    +[HUDTheme darkModeTheme];
  }

  else
  {
    +[HUDTheme lightModeTheme];
  }
  v1 = ;

  return v1;
}

void sub_100006AAC(id a1)
{
  v1 = objc_alloc_init(NSCache);
  v2 = qword_10003E738;
  qword_10003E738 = v1;

  v3 = qword_10003E738;

  [v3 setCountLimit:20];
}

void sub_1000070A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000070D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadThemeColors];
}

void sub_100007114(uint64_t a1)
{
  [*(a1 + 32) updateHUDLineWithId:@"some-id" content:*(a1 + 40) options:0];
  v2 = [*(a1 + 48) valueLayer];
  [v2 preferredFrameSize];
  [*(a1 + 32) setMinimumValueLayerWidth:?];

  v3 = *(a1 + 32);
  v5 = [v3 hudLines];
  v4 = [v5 objectForKeyedSubscript:@"some-id"];
  [v3 updateCornerRadiusAndSidePaddingIfNecessary:v4];
}

id sub_100007508(uint64_t a1)
{
  v2 = sub_100002F0C(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:NSKeyValueChangeOldKey];
    v4 = [*(a1 + 32) objectForKeyedSubscript:NSKeyValueChangeNewKey];
    *buf = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "HangTracer HUD new orientation %@ → %@", buf, 0x16u);
  }

  sub_100017414();
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007658;
  v7[3] = &unk_100030668;
  v7[4] = v5;
  return [v5 performHUDUpdate:v7];
}

void sub_100007658(uint64_t a1)
{
  v2 = [*(a1 + 32) hudLines];
  v5 = [v2 allKeys];

  [*(a1 + 32) layoutHUDLines:objc_msgSend(v5 ids:{"count"), v5}];
  [*(a1 + 32) determineNewFrameForRootLayer:objc_msgSend(v5 numberOfLines:{"count"), v3, v4}];
}

id sub_100007700(uint64_t a1)
{
  v2 = sub_100002F0C(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:NSKeyValueChangeOldKey];
    v4 = [*(a1 + 32) objectForKeyedSubscript:NSKeyValueChangeNewKey];
    *buf = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "HangTracer HUD new bounds %@ → %@", buf, 0x16u);
  }

  sub_100017430();
  [*(a1 + 40) setDisplayScaleDependentPropertiesOnLayers];
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007858;
  v7[3] = &unk_100030668;
  v7[4] = v5;
  return [v5 performHUDUpdate:v7];
}

void sub_100007858(uint64_t a1)
{
  [*(a1 + 32) setSidePadding:0.0];
  [*(a1 + 32) setLastKnownMaxKeyLayerWidth:0.0];
  v2 = [*(a1 + 32) hudLines];
  v3 = [v2 allKeys];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [*(a1 + 32) hudLines];
        v11 = [v10 objectForKeyedSubscript:v9];
        sub_100016E74(v11, v12);
        [(HUDLine *)v11 setFontSize:?];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) layoutHUDLines:objc_msgSend(v4 ids:{"count"), v4}];
  [*(a1 + 32) determineNewFrameForRootLayer:objc_msgSend(v4 numberOfLines:{"count"), v13, v14}];
}

void sub_100007C48(uint64_t a1)
{
  v2 = [HUDLine contentScaleForTexts]_0();
  CATransform3DMakeScale(&v7, v2, v2, v2);
  v3 = [*(a1 + 32) rootLayer];
  v6 = v7;
  [v3 setTransform:&v6];

  v4 = [*(a1 + 32) containerLayer];
  [v4 setShadowOffset:{0.0, 10.0 / v2}];

  v5 = [*(a1 + 32) containerLayer];
  [v5 setShadowRadius:25.0 / v2];
}

void sub_100008090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 + 40));
  _Unwind_Resume(a1);
}

void sub_1000080BC(id a1, NSString *a2, HUDLine *a3, BOOL *a4)
{
  v4 = a3;
  [(HUDLine *)v4 removeFromSuperlayer];
  [(HUDLine *)v4 nilifyCALayers];
}

void sub_100008114(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000081B0;
    v6[3] = &unk_100030770;
    v5 = *(a1 + 32);
    v6[4] = v3;
    v6[5] = v5;
    dispatch_async(v4, v6);
  }
}

void sub_1000081B0(uint64_t a1)
{
  v2 = [*(a1 + 32) containerLayer];

  if (v2)
  {
    os_unfair_lock_lock((*(a1 + 40) + 16));
    v4 = [*(a1 + 32) hudLines];
    [v4 enumerateKeysAndObjectsUsingBlock:&stru_100030B18];

    v5 = [*(a1 + 32) hudLines];
    [v5 removeAllObjects];

    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v9 = [*(a1 + 32) containerLayer];
    [v9 setFrame:{CGRectZero.origin.x, y, width, height}];

    v10 = [*(a1 + 32) rootLayer];
    [v10 setHidden:1];

    [*(a1 + 32) invalidate];
    v11 = (*(a1 + 32) + 16);

    os_unfair_lock_unlock(v11);
  }

  else
  {
    v12 = sub_100002F0C(v3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100018FB4();
    }
  }
}

void sub_1000082EC(id a1, NSString *a2, HUDLine *a3, BOOL *a4)
{
  v4 = a3;
  [(HUDLine *)v4 removeFromSuperlayer];
  [(HUDLine *)v4 nilifyCALayers];
}

void sub_100008520(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = [*(a1 + 32) hudLines];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000088B8;
  v36[3] = &unk_100030B68;
  v37 = *(a1 + 40);
  v38 = *(a1 + 48);
  v4 = v2;
  v39 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v36];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = [*(a1 + 32) hudLines];
        v12 = [v11 objectForKeyedSubscript:v10];
        [v12 removeFromSuperlayer];

        v13 = [*(a1 + 32) hudLines];
        [v13 removeObjectForKey:v10];

        v14 = [*(a1 + 32) hudContentWithPendingAnimations];
        [v14 removeObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v7);
  }

  v16 = sub_100002F0C(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_10001906C();
  }

  v17 = [*(a1 + 32) containerLayer];
  [v17 removeAllAnimations];

  if (*(a1 + 56))
  {
    v18 = 0;
    do
    {
      v19 = [*(a1 + 48) objectAtIndexedSubscript:{v18, v32}];
      v20 = [*(a1 + 40) objectForKeyedSubscript:v19];
      [*(a1 + 32) HangHUD_updater_latency_in_ms];
      v22 = sub_100017474(v20, *(a1 + 64), v21 + 50.0);
      if ([v20 timedOut])
      {
        v23 = v22 | 2;
      }

      else
      {
        v23 = v22;
      }

      [*(a1 + 32) updateHUDLineWithId:v19 content:v20 options:v23];

      ++v18;
      v24 = *(a1 + 56);
    }

    while (v18 < v24);
  }

  else
  {
    v24 = 0;
  }

  [*(a1 + 32) layoutHUDLines:v24 ids:{*(a1 + 48), v32}];
  [*(a1 + 32) determineNewFrameForRootLayer:*(a1 + 56) numberOfLines:?];
  v25 = [*(a1 + 32) containerLayer];
  v26 = [v25 sublayers];
  v27 = [v26 count];

  if (v27)
  {
    v28 = [*(a1 + 32) rootLayer];
    [v28 setHidden:0];

    v29 = [*(a1 + 32) containerLayer];
    [v29 setHidden:0];

    v30 = [*(a1 + 32) containerLayer];
    LODWORD(v31) = 1.0;
    [v30 setOpacity:v31];
  }
}

void sub_1000088B8(id *a1, void *a2)
{
  v6 = a2;
  v3 = [a1[4] objectForKeyedSubscript:?];
  if (!v3 || (v4 = v3, v5 = [a1[5] indexOfObject:v6], v4, v5 == 0x7FFFFFFFFFFFFFFFLL))
  {
    [a1[6] addObject:v6];
  }
}

void sub_100008B30(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = [*(a1 + 32) hudLines];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100008F60;
  v44[3] = &unk_100030B68;
  v45 = *(a1 + 40);
  v46 = *(a1 + 48);
  v4 = v2;
  v47 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v44];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v41;
    *&v7 = 138412290;
    v39 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        v12 = [*(a1 + 32) hudLines];
        v13 = [v12 objectForKeyedSubscript:v11];
        [v13 removeFromSuperlayer];

        v14 = [*(a1 + 32) hudLines];
        v15 = [v14 objectForKeyedSubscript:v11];
        [v15 nilifyCALayers];

        v16 = [*(a1 + 32) hudLines];
        [v16 removeObjectForKey:v11];

        v18 = sub_100002F0C(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v39;
          v49 = v11;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Removed hudLines item %@", buf, 0xCu);
        }

        v19 = [*(a1 + 32) hudContentWithPendingAnimations];
        [v19 removeObject:v11];
      }

      v8 = [v5 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v8);
  }

  v21 = sub_100002F0C(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_1000190E4();
  }

  v22 = [*(a1 + 32) containerLayer];
  [v22 removeAllAnimations];

  if (*(a1 + 56))
  {
    v23 = 0;
    do
    {
      v24 = [*(a1 + 48) objectAtIndexedSubscript:v23];
      v25 = [*(a1 + 40) objectForKeyedSubscript:v24];
      [*(a1 + 32) HangHUD_updater_latency_in_ms];
      v27 = [v25 isCurrent:*(a1 + 64) withHUDUpdateInterval:v26 + 50.0];
      if ([v25 isTimedOut])
      {
        v28 = v27 | 2;
      }

      else
      {
        v28 = v27;
      }

      [*(a1 + 32) updateHUDLineWithId:v24 content:v25 options:v28];

      ++v23;
      v29 = *(a1 + 56);
    }

    while (v23 < v29);
  }

  else
  {
    v29 = 0;
  }

  [*(a1 + 32) layoutHUDLines:v29 ids:*(a1 + 48)];
  [*(a1 + 32) determineNewFrameForRootLayer:*(a1 + 56) numberOfLines:?];
  v30 = [*(a1 + 32) containerLayer];
  v31 = [v30 sublayers];
  v32 = [v31 count];

  if (v32)
  {
    v33 = [*(a1 + 32) rootLayer];
    [v33 setHidden:0];

    v34 = [*(a1 + 32) containerLayer];
    [v34 setHidden:0];

    [*(a1 + 32) HUD_background_opacity];
    v36 = v35;
    v37 = [*(a1 + 32) containerLayer];
    *&v38 = v36;
    [v37 setOpacity:v38];
  }
}

void sub_100008F60(id *a1, void *a2)
{
  v6 = a2;
  v3 = [a1[4] objectForKeyedSubscript:?];
  if (!v3 || (v4 = v3, v5 = [a1[5] indexOfObject:v6], v4, v5 == 0x7FFFFFFFFFFFFFFFLL))
  {
    [a1[6] addObject:v6];
  }
}

void sub_100009838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100009870(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = a3;
  v4 = [v20 keyLayer];
  if (v4)
  {
    v5 = v4;
    v6 = [v20 keyLayer];
    [v6 preferredFrameSize];
    v8 = v7;
    v9 = *(*(*(a1 + 32) + 8) + 24);

    if (v8 > v9)
    {
      v10 = [v20 keyLayer];
      [v10 preferredFrameSize];
      *(*(*(a1 + 32) + 8) + 24) = v11;
    }
  }

  v12 = [v20 valueLayer];
  if (v12)
  {
    v13 = v12;
    v14 = [v20 valueLayer];
    [v14 preferredFrameSize];
    v16 = v15;
    v17 = *(*(*(a1 + 40) + 8) + 24);

    if (v16 > v17)
    {
      v18 = [v20 valueLayer];
      [v18 preferredFrameSize];
      *(*(*(a1 + 40) + 8) + 24) = v19;
    }
  }
}

void sub_100009BBC(uint64_t a1)
{
  v2 = [*(a1 + 32) currentTheme];
  v3 = [v2 backgroundColor];
  v4 = [*(a1 + 32) containerLayer];
  [v4 setBackgroundColor:v3];

  v5 = [*(a1 + 32) hudLines];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100009CD0;
  v9[3] = &unk_100030C08;
  v9[4] = *(a1 + 32);
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  v6 = [*(a1 + 32) lastKnownHangs];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v7 lastKnownHangs];
    [v7 updateHangs:v8 withCompletion:&stru_100030C28];
  }
}

void sub_100009CD0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) currentTheme];
    [v5 setCurrentTheme:v4];
  }
}

void sub_100009F8C(uint64_t a1)
{
  v2 = [*(a1 + 32) getKeyForLine:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = sub_100002F0C(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10001915C();
    }

    v5 = [*(a1 + 32) hudContentWithPendingAnimations];
    [v5 removeObject:v3];
  }
}

void sub_10000A0B0(uint64_t a1)
{
  v2 = [*(a1 + 32) getKeyForLine:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = sub_100002F0C(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1000191CC();
    }

    v5 = [*(a1 + 32) hudContentWithPendingAnimations];
    [v5 addObject:v3];
  }
}

void sub_10000A344(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_10000A3A8(id a1)
{
  qword_10003E740 = objc_alloc_init(ProcessExitScreener);

  _objc_release_x1();
}

id sub_10000A9AC(uint64_t a1)
{
  if (qword_10003E758 != -1)
  {
    sub_100019800();
  }

  v2 = qword_10003E750;

  return v2;
}

void sub_10000A9F0(id a1)
{
  qword_10003E750 = os_log_create("com.apple.HangHUD", "");

  _objc_release_x1();
}

void sub_10000B070(id a1)
{
  sub_100016E74(a1, v1);
  UIFontForLanguage = CTFontCreateUIFontForLanguage(0x6Au, v2, 0);
  v4 = CTFontCopyFontDescriptor(UIFontForLanguage);
  v9 = kCTFontOpticalSizeAttribute;
  v6 = [NSNumber numberWithDouble:sub_100016C10(v4, v5)];
  v10 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v4, v7);

  qword_10003E768 = CTFontCreateWithFontDescriptor(CopyWithAttributes, 0.0, 0);
  CFRelease(UIFontForLanguage);
  CFRelease(v4);
  CFRelease(CopyWithAttributes);
}

void sub_10000B184(id a1)
{
  sub_100016E74(a1, v1);
  UIFontForLanguage = CTFontCreateUIFontForLanguage(0x6Au, v2, 0);
  v4 = CTFontCopyFontDescriptor(UIFontForLanguage);
  CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v4, &off_100035CC0, &off_100035CD8);
  v10 = kCTFontOpticalSizeAttribute;
  v7 = [NSNumber numberWithDouble:sub_100016C10(CopyWithFeature, v6)];
  v11 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(CopyWithFeature, v8);

  qword_10003E778 = CTFontCreateWithFontDescriptor(CopyWithAttributes, 0.0, 0);
  CFRelease(UIFontForLanguage);
  CFRelease(v4);
  CFRelease(CopyWithFeature);
  CFRelease(CopyWithAttributes);
}

void sub_10000BFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000BFC4(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  [v9 preferredFrameSize];
  *(*(*(a1 + 40) + 8) + 32) = v5 + *(*(*(a1 + 40) + 8) + 32);
  v6 = *(*(*(a1 + 40) + 8) + 40);
  [v9 preferredFrameSize];
  if (v6 < v7)
  {
    [v9 preferredFrameSize];
    *(*(*(a1 + 40) + 8) + 40) = v8;
  }

  if (a3)
  {
    *(*(*(a1 + 40) + 8) + 32) = *(*(a1 + 32) + 8) + *(*(*(a1 + 40) + 8) + 32);
  }
}

void sub_10000CA54(uint64_t a1)
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 processName];
  v6 = [NSString stringWithFormat:@"%@ (%i) : %p", v3, getpid(), *(a1 + 32)];

  v4 = [objc_alloc(*(a1 + 32)) initWithIdentifier:v6];
  v5 = qword_10003E790;
  qword_10003E790 = v4;
}

void sub_10000CCE4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = +[HangHUDServiceSpecification clientContextIdentifierKey];
  [v3 encodeObject:v2 forKey:v4];
}

void sub_10000CD5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HangHUDServiceSpecification interface];
  [v3 setInterface:v4];

  v5 = +[HangHUDServiceSpecification serviceQuality];
  [v3 setServiceQuality:v5];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000CEF4;
  v10[3] = &unk_1000309B8;
  v11 = *(a1 + 32);
  [v3 setActivationHandler:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000CF48;
  v8[3] = &unk_1000309B8;
  v9 = *(a1 + 32);
  [v3 setInterruptionHandler:v8];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000CFB0;
  v6[3] = &unk_1000309B8;
  v7 = *(a1 + 32);
  [v3 setInvalidationHandler:v6];
}

void sub_10000CEF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained serverRunningDidChange:*(a1 + 32)];
}

void sub_10000CF48(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 24));
  [WeakRetained serverRunningDidChange:*(a1 + 32)];

  [v5 activate];
}

void sub_10000CFB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained serverRunningDidChange:*(a1 + 32)];
}

void sub_10000D864(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id sub_10000D880(uint64_t a1)
{
  if (a1 >= 0x2B)
  {
    v2 = [NSString stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = *(&off_100030D60 + a1);
  }

  return v2;
}

id sub_10000D8F0(uint64_t a1)
{
  if (a1 - 4) < 0x27 && ((0x7789044BDDuLL >> (a1 - 4)))
  {
    v1 = *(&off_100030EB8 + (a1 - 4));
  }

  else
  {
    v2 = sub_10000D880(a1);
    v1 = [v2 capitalizedString];
  }

  return v1;
}

id sub_10000D970(uint64_t a1)
{
  if ((a1 - 1) >= 0x1F)
  {
    v2 = [NSString stringWithFormat:@"SIG%d", a1];
  }

  else
  {
    v2 = *(&off_100030FF0 + (a1 - 1));
  }

  return v2;
}

__CFString *sub_10000D9E4(uint64_t a1)
{
  v3 = a1;
  v4 = @"invalid reason";
  switch(v3)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v4 = @"generic";

      break;
    case 2:
      v4 = @"memory highwater";

      break;
    case 3:
      v4 = @"vnode shortage";

      break;
    case 4:
      v4 = @"vm page shortage";

      break;
    case 5:
      v4 = @"process thrashing";

      break;
    case 6:
      v4 = @"filecache thrashing";

      break;
    case 7:
      v4 = @"per-process limit reached";

      break;
    case 8:
      v4 = @"disk space shortage";

      break;
    case 9:
      v4 = @"idle exit";

      break;
    case 10:
      v4 = @"zone map exhaustion";

      break;
    case 11:
      v4 = @"vm compressor thrashing";

      break;
    case 12:
      v4 = @"vm compressor space shortage";

      break;
    case 13:
      v4 = @"swap space shortage";

      break;
    case 14:
      v4 = @"sustained memory pressure";

      break;
    case 15:
      v4 = @"vm pageout starvation";

      break;
    case 16:
      v4 = @"conclave limit";

      break;
    case 17:
      v4 = @"long idle exit";

      break;
    default:
      if (a1 == 100)
      {
        v4 = @"cpu limit";
      }

      else
      {
        v4 = [NSString stringWithFormat:@"%d", a1];
LABEL_19:
      }

      break;
  }

  return v4;
}

__CFString *sub_10000DC64(uint64_t a1)
{
  if (a1 > 10)
  {
    if (a1 > 14)
    {
      if (a1 == 15)
      {
        v1 = @"VM Pageout Starvation";
        goto LABEL_21;
      }

      if (a1 == 100)
      {
        v1 = @"CPU Limit";
        goto LABEL_21;
      }
    }

    else
    {
      if (a1 == 11)
      {
        v1 = @"VM Compressor Thrashing";
        goto LABEL_21;
      }

      if (a1 == 12)
      {
        v1 = @"VM Compressor Space Shortage";
        goto LABEL_21;
      }
    }
  }

  else if (a1 > 5)
  {
    if (a1 == 6)
    {
      v1 = @"FileCache Thrashing";
      goto LABEL_21;
    }

    if (a1 == 8)
    {
      v1 = @"Low Disk Space";
      goto LABEL_21;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v1 = @"High-Water";
      goto LABEL_21;
    }

    if (a1 == 4)
    {
      v1 = @"VM Page Shortage";
      goto LABEL_21;
    }
  }

  v2 = sub_10000D9E4(a1);
  v1 = [v2 capitalizedString];

LABEL_21:

  return v1;
}

__CFString *sub_10000DD68(uint64_t a1)
{
  if (a1 > 3221229822)
  {
    if (a1 <= 3306925314)
    {
      switch(a1)
      {
        case 3221229823:
          v2 = @"thermal pressure";

          return v2;
        case 3306925313:
          v2 = @"cpu violation";

          return v2;
        case 3306925314:
          v2 = @"walltime violation";

          return v2;
      }
    }

    else if (a1 > 3735943696)
    {
      if (a1 == 3735943697)
      {
        v2 = @"user quit";

        return v2;
      }

      if (a1 == 4227595259)
      {
        v2 = @"force quit";

        return v2;
      }
    }

    else
    {
      if (a1 == 3306925315)
      {
        v2 = @"system busy";

        return v2;
      }

      if (a1 == 3735883980)
      {
        v2 = @"resource exclusion";

        return v2;
      }
    }

LABEL_62:
    v2 = [NSString stringWithFormat:@"%#llx", a1];

    return v2;
  }

  if (a1 <= 1539435072)
  {
    switch(a1)
    {
      case 95805101:
        v2 = @"application assertion";

        return v2;
      case 439025681:
        v2 = @"input ui scene";

        return v2;
      case 732775916:
        v2 = @"secure draw violation";

        return v2;
    }

    goto LABEL_62;
  }

  if (a1 > 1539435076)
  {
    if (a1 == 1539435077)
    {
      v2 = @"legacy clear the board";

      return v2;
    }

    if (a1 == 2343432205)
    {
      v2 = @"watchdog";

      return v2;
    }

    goto LABEL_62;
  }

  if (a1 != 1539435073)
  {
    if (a1 == 1539435076)
    {
      v2 = @"clear the board";

      return v2;
    }

    goto LABEL_62;
  }

  v2 = @"languages changed";

  return v2;
}

__CFString *sub_10000E030(uint64_t a1)
{
  if (a1 > 1539435076)
  {
    if (a1 != 1539435077)
    {
      if (a1 == 3306925313)
      {
        v1 = @"CPU Violation";
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v1 = @"Legacy Clear the Board";
  }

  else
  {
    if (a1 != 439025681)
    {
      if (a1 == 1539435076)
      {
        v1 = @"Clear the Board";
        goto LABEL_11;
      }

LABEL_8:
      v2 = sub_10000DD68(a1);
      v1 = [v2 capitalizedString];

      goto LABEL_11;
    }

    v1 = @"InputUI Scene";
  }

LABEL_11:

  return v1;
}

id sub_10000E0FC(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v2 = [NSString stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = *(&off_1000310E8 + (a1 - 1));
  }

  return v2;
}

id sub_10000E170(uint64_t a1)
{
  v1 = sub_10000E0FC(a1);
  v2 = [v1 capitalizedString];

  return v2;
}

id sub_10000E1BC(uint64_t a1)
{
  if ((a1 - 1) >= 0x13)
  {
    v2 = [NSString stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = *(&off_100031108 + (a1 - 1));
  }

  return v2;
}

id sub_10000E230(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 0x13 && ((0x55F7Fu >> v1))
  {
    v2 = *(&off_1000311A0 + v1);
  }

  else
  {
    v3 = sub_10000E1BC(a1);
    v2 = [v3 capitalizedString];
  }

  return v2;
}

id sub_10000E2A8(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    v2 = [NSString stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = *(&off_100031238 + (a1 - 1));
  }

  return v2;
}

__CFString *sub_10000E31C(uint64_t a1)
{
  if (a1 == 5)
  {
    v1 = @"JIT";
  }

  else
  {
    v2 = sub_10000E2A8(a1);
    v1 = [v2 capitalizedString];
  }

  return v1;
}

id sub_10000E37C(uint64_t a1)
{
  if ((a1 - 1) >= 9)
  {
    v2 = [NSString stringWithFormat:@"%u", a1];
  }

  else
  {
    v2 = *(&off_100031260 + (a1 - 1));
  }

  return v2;
}

__CFString *sub_10000E3F0(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v1 = @"Unknown IPC";
      break;
    case 6:
      v1 = @"Sandbox Filtered IPC";
      break;
    case 4:
      v1 = @"SIGTERM Timeout";
      break;
    default:
      v2 = sub_10000E37C(a1);
      v1 = [v2 capitalizedString];

      break;
  }

  return v1;
}

id sub_10000E478(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 9 && ((0x17Fu >> v2))
  {
    v3 = *(&off_1000312A8 + v2);
  }

  else
  {
    v3 = [NSString stringWithFormat:@"%llu", a1];
  }

  return v3;
}

id sub_10000E4F8(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 7 && ((0x47u >> v1))
  {
    v2 = *(&off_1000312F0 + v1);
  }

  else
  {
    v3 = sub_10000E478(a1);
    v2 = [v3 capitalizedString];
  }

  return v2;
}

__CFString *sub_10000E56C(uint64_t a1)
{
  if (a1 <= 2343432204)
  {
    if (a1 <= 562215633)
    {
      switch(a1)
      {
        case 0:
          v2 = @"none";

          return v2;
        case 97132013:
          v2 = @"conditions changed";

          return v2;
        case 562215597:
          v2 = @"assertion timeout";

          return v2;
      }
    }

    else
    {
      if (a1 <= 562215635)
      {
        if (a1 == 562215634)
        {
          v2 = @"background task assertion timeout";
        }

        else
        {
          v2 = @"background url session completion timeout";
        }

        return v2;
      }

      if (a1 == 562215636)
      {
        v2 = @"background fetch completion timeout";

        return v2;
      }

      if (a1 == 732775916)
      {
        v2 = @"security violation";

        return v2;
      }
    }

LABEL_63:
    v2 = [NSString stringWithFormat:@"%#llx", a1];

    return v2;
  }

  if (a1 > 3490524076)
  {
    if (a1 > 3735905537)
    {
      if (a1 == 3735905538)
      {
        v2 = @"termination assertion";

        return v2;
      }

      if (a1 == 3735943697)
      {
        v2 = @"user initiated quit";

        return v2;
      }
    }

    else
    {
      if (a1 == 3490524077)
      {
        v2 = @"max assertions violation";

        return v2;
      }

      if (a1 == 3735883980)
      {
        v2 = @"resource exclusion";

        return v2;
      }
    }

    goto LABEL_63;
  }

  if (a1 > 2970726672)
  {
    if (a1 == 2970726673)
    {
      v2 = @"process exited";

      return v2;
    }

    if (a1 == 3221229823)
    {
      v2 = @"thermal pressure";

      return v2;
    }

    goto LABEL_63;
  }

  if (a1 != 2343432205)
  {
    if (a1 == 2970405393)
    {
      v2 = @"max states violation";

      return v2;
    }

    goto LABEL_63;
  }

  v2 = @"watchdog violation";

  return v2;
}

__CFString *sub_10000E864(uint64_t a1)
{
  if (a1 <= 2970405392)
  {
    if (!a1)
    {
      v1 = @"None Provided";
      goto LABEL_13;
    }

    if (a1 == 562215635)
    {
      v1 = @"Background URL Session Completion Timeout";
      goto LABEL_13;
    }
  }

  else
  {
    switch(a1)
    {
      case 2970405393:
        v1 = @"Maximum States Violation";
        goto LABEL_13;
      case 3490524077:
        v1 = @"Maximum Assertions Violation";
        goto LABEL_13;
      case 3735943697:
        v1 = @"User-Initiated Quit";
        goto LABEL_13;
    }
  }

  v2 = sub_10000E56C(a1);
  v1 = [v2 capitalizedString];

LABEL_13:

  return v1;
}

id sub_10000E940(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    v2 = [NSString stringWithFormat:@"%llu", a1];
  }

  else
  {
    v2 = *(&off_100031328 + a1 - 1);
  }

  return v2;
}

id sub_10000E9B4(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 5 && ((0x1Du >> v1))
  {
    v2 = *(&off_100031350 + v1);
  }

  else
  {
    v3 = sub_10000E940(a1);
    v2 = [v3 capitalizedString];
  }

  return v2;
}

id sub_10000EA28(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [NSString stringWithFormat:@"%llu", a1];
  }

  else
  {
    v2 = *(&off_100031378 + a1 - 1);
  }

  return v2;
}

id sub_10000EA9C(uint64_t a1)
{
  v1 = sub_10000EA28(a1);
  v2 = [v1 capitalizedString];

  return v2;
}

__CFString *sub_10000EAE8(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v2 = @"service timeout";
    }

    else
    {
      if (a1 != 2)
      {
LABEL_22:
        v2 = [NSString stringWithFormat:@"%llu", a1];

        return v2;
      }

      v2 = @"timeout no diags";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v2 = @"unblock deadlock";

        break;
      case 4:
        v2 = @"unblock thread limit";

        break;
      case 1001:
        v2 = @"chronokit";

        return v2;
      default:
        goto LABEL_22;
    }
  }

  return v2;
}

__CFString *sub_10000EBDC(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = @"Service Timeout Diagnostics Unavailable";
  }

  else if (a1 == 1001)
  {
    v1 = @"ChronoKit";
  }

  else
  {
    v2 = sub_10000EAE8(a1);
    v1 = [v2 capitalizedString];
  }

  return v1;
}

__CFString *sub_10000EC50(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"api violation";
  }

  else if (a1 == 2)
  {
    v2 = @"internal error";
  }

  else
  {
    v2 = [NSString stringWithFormat:@"%llu", a1];
  }

  return v2;
}

__CFString *sub_10000ECDC(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = @"API Violation";
  }

  else
  {
    v2 = sub_10000EC50(a1);
    v1 = [v2 capitalizedString];
  }

  return v1;
}

id sub_10000ED3C(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 0x15 && ((0x183FFFu >> v2))
  {
    v3 = *(&off_100031390 + v2);
  }

  else
  {
    v3 = [NSString stringWithFormat:@"%llu", a1];
  }

  return v3;
}

id sub_10000EDC0(uint64_t a1)
{
  v1 = a1 - 11;
  if (a1 - 11) < 0xB && ((0x60Fu >> v1))
  {
    v2 = *(&off_100031438 + v1);
  }

  else
  {
    v3 = sub_10000ED3C(a1);
    v2 = [v3 capitalizedString];
  }

  return v2;
}

id sub_10000EE34(int a1, uint64_t a2)
{
  switch(a1)
  {
    case 1:
      v2 = sub_10000D9E4(a2);
      break;
    case 2:
      v2 = sub_10000D970(a2);
      break;
    case 3:
      v2 = sub_10000E0FC(a2);
      break;
    case 6:
      v2 = sub_10000E478(a2);
      break;
    case 7:
      v2 = sub_10000E37C(a2);
      break;
    case 9:
      v2 = sub_10000E1BC(a2);
      break;
    case 10:
      v2 = sub_10000DD68(a2);
      break;
    case 15:
      v2 = sub_10000E56C(a2);
      break;
    case 18:
      v2 = sub_10000E9B4(a2);
      break;
    case 20:
      v2 = sub_10000EAE8(a2);
      break;
    case 22:
      v2 = sub_10000EC50(a2);
      break;
    case 23:
      v2 = sub_10000E2A8(a2);
      break;
    case 27:
      v2 = sub_10000EA28(a2);
      break;
    case 32:
      v2 = sub_10000ED3C(a2);
      break;
    default:
      v2 = [NSString stringWithFormat:@"%llu", a2];
      break;
  }

  return v2;
}

id sub_10000F008(int a1, uint64_t a2)
{
  switch(a1)
  {
    case 1:
      v2 = sub_10000DC64(a2);
      break;
    case 2:
      v2 = sub_10000D970(a2);
      break;
    case 3:
      v2 = sub_10000E170(a2);
      break;
    case 6:
      v2 = sub_10000E4F8(a2);
      break;
    case 7:
      v2 = sub_10000E3F0(a2);
      break;
    case 9:
      v2 = sub_10000E230(a2);
      break;
    case 10:
      v2 = sub_10000E030(a2);
      break;
    case 15:
      v2 = sub_10000E864(a2);
      break;
    case 18:
      v2 = sub_10000E9B4(a2);
      break;
    case 20:
      v2 = sub_10000EBDC(a2);
      break;
    case 22:
      v2 = sub_10000ECDC(a2);
      break;
    case 23:
      v2 = sub_10000E31C(a2);
      break;
    case 27:
      v2 = sub_10000EA9C(a2);
      break;
    case 32:
      v2 = sub_10000EDC0(a2);
      break;
    default:
      v2 = [NSString stringWithFormat:@"%#llx", a2];
      break;
  }

  return v2;
}

uint64_t sub_10000F27C(uint64_t a1)
{
  qword_10003E7A0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t sub_10000F428(uint64_t a1)
{
  qword_10003E7B0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10000F884(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  v5 = [BSMutableServiceInterface interfaceWithIdentifier:v1];

  v2 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___HangHUDServerProtocol];
  [v5 setServer:v2];

  v3 = [v5 copy];
  v4 = qword_10003E7C0;
  qword_10003E7C0 = v3;
}

uint64_t sub_10000FE7C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0x8000)
  {
    if (a1 != 2)
    {
      if (a1 != 1024)
      {
        return 1 << a2;
      }

      if (a2 <= 3221229822)
      {
        if (a2 > 1539435072)
        {
          if (a2 <= 1539435076)
          {
            if (a2 != 1539435073)
            {
              if (a2 != 1539435076)
              {
                return 1 << a2;
              }

              return 1024;
            }

            return 512;
          }

          if (a2 != 1539435077)
          {
            if (a2 == 2343432205)
            {
              return 4;
            }

            return 1 << a2;
          }

          return 2048;
        }

        if (a2 != 95805101)
        {
          if (a2 != 439025681)
          {
            v8 = 732775916;
            goto LABEL_58;
          }

          return 256;
        }

        return 128;
      }

      if (a2 > 3306925314)
      {
        if (a2 <= 3735943696)
        {
          if (a2 != 3306925315)
          {
            v6 = 3735883980;
            goto LABEL_54;
          }

          return 0x4000;
        }

        if (a2 != 3735943697)
        {
          v7 = 4227595259;
          goto LABEL_50;
        }

        return 2;
      }

      if (a2 != 3221229823)
      {
        if (a2 != 3306925313)
        {
          if (a2 != 3306925314)
          {
            return 1 << a2;
          }

          return 0x2000;
        }

        return 4096;
      }

      return 8;
    }

    v2 = 2 << a2;
    v3 = a2 == 100;
    v4 = 0x20000000000;
    goto LABEL_14;
  }

  if (a1 != 0x8000)
  {
    if (a1 != 0x100000)
    {
      return 1 << a2;
    }

    v2 = 1 << a2;
    v3 = a2 == 1001;
    v4 = 0x100000;
LABEL_14:
    if (v3)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }

  if (a2 <= 2343432204)
  {
    if (a2 <= 562215633)
    {
      if (a2)
      {
        if (a2 != 97132013)
        {
          if (a2 != 562215597)
          {
            return 1 << a2;
          }

          return 128;
        }

        return 0x4000;
      }

      return 2;
    }

    if (a2 > 562215635)
    {
      if (a2 != 562215636)
      {
        v6 = 732775916;
LABEL_54:
        if (a2 == v6)
        {
          return 64;
        }

        return 1 << a2;
      }

      return 0x2000;
    }

    if (a2 == 562215634)
    {
      return 2048;
    }

    return 4096;
  }

  if (a2 > 3490524076)
  {
    if (a2 <= 3735905537)
    {
      if (a2 == 3490524077)
      {
        return 256;
      }

      v7 = 3735883980;
LABEL_50:
      if (a2 == v7)
      {
        return 32;
      }

      return 1 << a2;
    }

    if (a2 == 3735905538)
    {
      return 1024;
    }

    if (a2 != 3735943697)
    {
      return 1 << a2;
    }

    return 8;
  }

  if (a2 <= 2970726672)
  {
    if (a2 == 2343432205)
    {
      return 4;
    }

    if (a2 == 2970405393)
    {
      return 512;
    }

    return 1 << a2;
  }

  if (a2 != 2970726673)
  {
    v8 = 3221229823;
LABEL_58:
    if (a2 == v8)
    {
      return 16;
    }

    return 1 << a2;
  }

  return 0x8000;
}

id sub_1000101C0(const mach_header_64 *a1)
{
  v1 = &__NSArray0__struct;
  if (a1 >= 0x8000)
  {
    if (a1 < 0x400000)
    {
      if (a1 == 0x8000)
      {
        v2 = +[NSMutableArray array];
        v29 = 2;
        do
        {
          v30 = [NSNumber numberWithUnsignedLongLong:v29];
          [v2 addObject:v30];

          v15 = v29 > 0x4000;
          v29 *= 2;
        }

        while (!v15);
        goto LABEL_65;
      }

      if (a1 == 0x40000)
      {
        v2 = +[NSMutableArray array];
        v33 = 2;
        do
        {
          v34 = [NSNumber numberWithUnsignedLongLong:v33];
          [v2 addObject:v34];

          v5 = v33 >= 0x11;
          v33 *= 2;
        }

        while (!v5);
        goto LABEL_65;
      }

      if (a1 != 0x100000)
      {
        goto LABEL_66;
      }

      v2 = +[NSMutableArray array];
      v10 = 2;
      do
      {
        v11 = [NSNumber numberWithUnsignedLongLong:v10];
        [v2 addObject:v11];

        v5 = v10 >= 9;
        v10 *= 2;
      }

      while (!v5);
      v12 = &off_100035D38;
    }

    else
    {
      if (a1 <= 0x7FFFFFF)
      {
        if (a1 == 0x400000)
        {
          v2 = +[NSMutableArray array];
          v20 = 2;
          do
          {
            v21 = [NSNumber numberWithUnsignedLongLong:v20];
            [v2 addObject:v21];

            v5 = v20 >= 3;
            v20 *= 2;
          }

          while (!v5);
        }

        else
        {
          if (a1 != 0x800000)
          {
            goto LABEL_66;
          }

          v2 = +[NSMutableArray array];
          v6 = 2;
          do
          {
            v7 = [NSNumber numberWithUnsignedLongLong:v6];
            [v2 addObject:v7];

            v5 = v6 >= 0x11;
            v6 *= 2;
          }

          while (!v5);
        }

        goto LABEL_65;
      }

      if (a1 == 0x8000000)
      {
        v2 = +[NSMutableArray array];
        v24 = 2;
        do
        {
          v25 = [NSNumber numberWithUnsignedLongLong:v24];
          [v2 addObject:v25];

          v5 = v24 >= 5;
          v24 *= 2;
        }

        while (!v5);
        goto LABEL_65;
      }

      if (a1 != &_mh_execute_header)
      {
        goto LABEL_66;
      }

      v2 = +[NSMutableArray array];
      v16 = 2;
      do
      {
        v17 = [NSNumber numberWithUnsignedLongLong:v16];
        [v2 addObject:v17];

        v15 = v16 > 0x2000;
        v16 *= 2;
      }

      while (!v15);
      [v2 addObject:&off_100035D38];
      v12 = &off_100035D50;
    }
  }

  else if (a1 <= 63)
  {
    if (a1 != 2)
    {
      if (a1 == 4)
      {
        v2 = +[NSMutableArray array];
        v31 = 2;
        do
        {
          v32 = [NSNumber numberWithUnsignedLongLong:v31];
          [v2 addObject:v32];

          v5 = v31 >= 0x40000001;
          v31 *= 2;
        }

        while (!v5);
      }

      else
      {
        if (a1 != 8)
        {
          goto LABEL_66;
        }

        v2 = +[NSMutableArray array];
        v8 = 2;
        do
        {
          v9 = [NSNumber numberWithUnsignedLongLong:v8];
          [v2 addObject:v9];

          v5 = v8 >= 9;
          v8 *= 2;
        }

        while (!v5);
      }

      goto LABEL_65;
    }

    v2 = +[NSMutableArray array];
    v26 = 2;
    do
    {
      v27 = [NSNumber numberWithUnsignedLongLong:v26];
      [v2 addObject:v27];

      v15 = v26 > 0x20000;
      v26 *= 2;
    }

    while (!v15);
    v12 = &off_100035D08;
  }

  else
  {
    if (a1 > 511)
    {
      if (a1 == 512)
      {
        v2 = +[NSMutableArray array];
        v22 = 2;
        do
        {
          v23 = [NSNumber numberWithUnsignedLongLong:v22];
          [v2 addObject:v23];

          v15 = v22 > 0x40000;
          v22 *= 2;
        }

        while (!v15);
      }

      else
      {
        if (a1 != 1024)
        {
          goto LABEL_66;
        }

        v2 = +[NSMutableArray array];
        v13 = 2;
        do
        {
          v14 = [NSNumber numberWithUnsignedLongLong:v13];
          [v2 addObject:v14];

          v15 = v13 > 0x2000;
          v13 *= 2;
        }

        while (!v15);
      }

      goto LABEL_65;
    }

    if (a1 != 64)
    {
      if (a1 != 128)
      {
        goto LABEL_66;
      }

      v2 = +[NSMutableArray array];
      v3 = 2;
      do
      {
        v4 = [NSNumber numberWithUnsignedLongLong:v3];
        [v2 addObject:v4];

        v5 = v3 >= 0x101;
        v3 *= 2;
      }

      while (!v5);
      goto LABEL_65;
    }

    v2 = +[NSMutableArray array];
    v18 = 2;
    do
    {
      v19 = [NSNumber numberWithUnsignedLongLong:v18];
      [v2 addObject:v19];

      v5 = v18 >= 0x41;
      v18 *= 2;
    }

    while (!v5);
    v12 = &off_100035D20;
  }

  [v2 addObject:v12];
LABEL_65:
  v1 = [v2 copy];

LABEL_66:

  return v1;
}

uint64_t start(uint64_t a1)
{
  v1 = sub_10000A9AC(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100019E18(v1);
  }

  v2 = objc_autoreleasePoolPush();
  v3 = +[HUDRenderServer sharedInstance];
  [v3 start];

  v4 = +[HangHUDServiceSpecification domainName];
  v5 = [BSServicesConfiguration activateManualDomain:v4];

  objc_autoreleasePoolPop(v2);
  v6 = +[NSRunLoop mainRunLoop];
  [v6 run];

  return 0;
}

void sub_1000108A0(id a1)
{
  qword_10003E7D0 = [[ProcessExitFetcher alloc] initWithMonitorID:@"com.apple.HangHUD" fetchIntervalMs:250.0];

  _objc_release_x1();
}

void sub_100010A40(id a1)
{
  qword_10003E7E0 = dispatch_queue_create("com.apple.HangHUD.ProcExitFetchQueue", 0);

  _objc_release_x1();
}

void sub_100011248(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 32) copy];
  [*(a1 + 32) fetchProcessExitInfo];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    (*(v2 + 16))(v2, v3);
  }
}

void sub_100011454(id a1)
{
  v3[0] = @"HTProfile";
  v3[1] = @"HTEPL";
  v3[2] = @"HTThirdPartyDevSupport";
  v3[3] = @"PLTasking";
  v3[4] = &stru_100031B80;
  v3[5] = @"PDSEHangTracer";
  v3[6] = @"PDSEHTBadDay";
  v3[7] = @"PDSEHTThirdParty";
  v3[8] = @"PDSEWorkflowResponsiveness";
  v3[9] = @"PDSEHTRateOnly";
  v3[10] = @"PDSESentry";
  v3[11] = @"PDSEAppLaunch";
  v1 = [NSArray arrayWithObjects:v3 count:12];
  v2 = qword_10003E7F8;
  qword_10003E7F8 = v1;
}

void sub_100013460(id a1)
{
  qword_10003E800 = objc_alloc_init(HTPrefs);

  _objc_release_x1();
}

void sub_100015A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  objc_destroyWeak((v32 + 80));
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 208), 8);
  _Block_object_dispose((v33 - 176), 8);
  _Block_object_dispose((v33 - 144), 8);
  objc_destroyWeak((v33 - 104));
  _Unwind_Resume(a1);
}

void sub_100015AE4(uint64_t a1, int a2)
{
  if (*(*(*(a1 + 40) + 8) + 24) == a2)
  {
    v3 = sub_100002F0C(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Tasking Changed";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, buf, 2u);
    }
  }

  else if (*(*(*(a1 + 48) + 8) + 24) == a2)
  {
    v3 = sub_100002F0C(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Telemetry Changed";
      goto LABEL_16;
    }
  }

  else if (*(*(*(a1 + 56) + 8) + 24) == a2)
  {
    v3 = sub_100002F0C(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Profile List Changed";
      goto LABEL_16;
    }
  }

  else if (*(*(*(a1 + 64) + 8) + 24) == a2)
  {
    v3 = sub_100002F0C(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: EPL State Changed";
      goto LABEL_16;
    }
  }

  else
  {
    if (*(*(*(a1 + 72) + 8) + 24) != a2)
    {
      goto LABEL_18;
    }

    v3 = sub_100002F0C(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: HT Self-Enablement State Changed Triggered Refresh";
      goto LABEL_16;
    }
  }

LABEL_18:
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v6 = [WeakRetained hangtracerDaemonEnabled];

  [*(a1 + 32) refreshHTPrefs];
  v7 = objc_loadWeakRetained((a1 + 80));
  v8 = [v7 hangtracerDaemonEnabled];

  if (v6 != v8)
  {
    v10 = sub_100002F0C(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (v6)
      {
        v11 = @"ON";
      }

      else
      {
        v11 = @"OFF";
      }

      v12 = objc_loadWeakRetained((a1 + 80));
      if ([v12 hangtracerDaemonEnabled])
      {
        v13 = @"ON";
      }

      else
      {
        v13 = @"OFF";
      }

      *buf = 138412546;
      v22 = v11;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "HTPrefs: HangTracer Enabled State Changed: %@ -> %@", buf, 0x16u);
    }

    v14 = objc_loadWeakRetained((a1 + 80));
    v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v14 hangtracerDaemonEnabled]);
    v20 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

    v17 = +[NSNotificationCenter defaultCenter];
    v18 = objc_loadWeakRetained((a1 + 80));
    [v17 postNotificationName:@"com.apple.hangtracer.daemonstate" object:v18 userInfo:v16];
  }
}

void sub_100015E34(uint64_t a1, int a2)
{
  if (*(*(*(a1 + 32) + 8) + 24) == a2)
  {
    v6 = v2;
    v7 = v3;
    v4 = sub_100002F0C(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "HTPrefs: Test Reset Log Limits", v5, 2u);
    }
  }
}

double sub_100016C10(HUDLine *a1, const char *a2)
{
  if (qword_10003E840 != -1)
  {
    sub_10001A4F8();
  }

  if (byte_10003E848 == 1)
  {
    v2 = +[CADisplay mainDisplay];
    [v2 bounds];
    if (v3 <= 1920.0)
    {
      v4 = 28.0;
    }

    else
    {
      v4 = 42.0;
    }
  }

  else
  {
    if (qword_10003E830 != -1)
    {
      sub_10001A50C();
    }

    if (byte_10003E838 == 1)
    {
      v5 = sub_100016D30();
      if (v5 > 170.0 || v5 < 1.0)
      {
        return 24.0;
      }

      else
      {
        return 22.0;
      }
    }

    else
    {
      if (qword_10003E850 != -1)
      {
        sub_10001A520();
      }

      v4 = 22.0;
      if ((byte_10003E858 & 1) == 0)
      {
        if ([HUDLine contentScaleForTexts]_0() == 3.0)
        {
          return 40.0;
        }

        else
        {
          return 28.0;
        }
      }
    }
  }

  return v4;
}

double sub_100016D30()
{
  result = *&qword_10003E880;
  if (*&qword_10003E880 <= 0.0)
  {
    if (qword_10003E840 != -1)
    {
      sub_10001A4F8();
    }

    v1 = byte_10003E848;
    v2 = +[CADisplay mainDisplay];
    [v2 bounds];
    v4 = fmax(v3, 1920.0);
    if (!v1)
    {
      v4 = v3;
    }

    qword_10003E880 = *&v4;

    result = *&qword_10003E880 / [HUDLine contentScaleForTexts]_0();
    qword_10003E880 = *&result;
  }

  return result;
}

void sub_100016E74(HUDLine *a1, const char *a2)
{
  if (*&qword_10003E860 <= 0.0)
  {
    v2 = sub_100016C10(a1, a2);
    qword_10003E860 = round(v2 / [HUDLine contentScaleForTexts]_0());
  }
}

double sub_100016EC0()
{
  v0 = *&qword_10003E868;
  if (*&qword_10003E868 > 0.0)
  {
    return v0;
  }

  v1 = +[CADisplay mainDisplay];
  v2 = [v1 currentOrientation];

  if (qword_10003E830 != -1)
  {
    sub_10001A50C();
  }

  v3 = 20.0;
  if ((byte_10003E838 & 1) == 0)
  {
    if (qword_10003E820 != -1)
    {
      sub_10001A534();
    }

    v3 = 50.0;
    if ((byte_10003E828 & 1) == 0 && v2 != kCADisplayOrientationRotation270 && v2 != kCADisplayOrientationRotation90)
    {
      if (qword_10003E8D0 != -1)
      {
        sub_10001A548();
      }

      if (byte_10003E8D8)
      {
        *&v4 = 168.0;
LABEL_19:
        v3 = *&v4;
        goto LABEL_20;
      }

      if (qword_10003E810 != -1)
      {
        sub_10001A55C();
      }

      if (byte_10003E818 == 1)
      {
        if ([HUDLine contentScaleForTexts]_0() == 2.0)
        {
          *&v4 = 100.0;
          goto LABEL_19;
        }

        if (qword_10003E810 != -1)
        {
          sub_10001A55C();
        }
      }

      if (byte_10003E818 == 1 && [HUDLine contentScaleForTexts]_0() == 3.0)
      {
        v3 = 150.0;
      }

      else
      {
        if (qword_10003E840 != -1)
        {
          sub_10001A4F8();
        }

        v8 = byte_10003E848;
        v9 = [HUDLine contentScaleForTexts]_0();
        if (v8 == 1)
        {
          v3 = dbl_1000202C0[v9 > 1.0];
        }

        else
        {
          v3 = v9 * 25.0;
        }
      }
    }
  }

LABEL_20:
  qword_10003E868 = *&v3;
  *&qword_10003E868 = v3 / [HUDLine contentScaleForTexts]_0();
  v6 = sub_100002F0C(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10001A570(v2, v6);
  }

  v0 = *&qword_10003E868;
  return v0;
}

void sub_1000170E4(uint64_t a1)
{
  if (*&qword_10003E870 <= 0.0)
  {
    if (qword_10003E810 != -1)
    {
      sub_10001A55C();
    }

    v1 = 25.0;
    if ((byte_10003E818 & 1) == 0)
    {
      v1 = sub_100016EC0();
    }

    qword_10003E870 = *&v1;
  }
}

double sub_100017140(uint64_t a1)
{
  result = *&qword_10003E878;
  if (*&qword_10003E878 <= 0.0)
  {
    if (qword_10003E830 != -1)
    {
      sub_10001A50C();
    }

    v2 = 5.0;
    if ((byte_10003E838 & 1) == 0)
    {
      v3 = [HUDLine contentScaleForTexts]_0();
      if (qword_10003E820 != -1)
      {
        v5 = v3;
        sub_10001A534();
        v3 = v5;
      }

      v4 = 8.0;
      if (byte_10003E828)
      {
        v4 = 10.0;
      }

      v2 = v3 * v4;
    }

    qword_10003E878 = *&v2;
    result = v2 / [HUDLine contentScaleForTexts]_0();
    qword_10003E878 = *&result;
  }

  return result;
}

double sub_1000171F0()
{
  result = *&qword_10003E888;
  if (*&qword_10003E888 <= 0.0)
  {
    if (qword_10003E840 != -1)
    {
      sub_10001A4F8();
    }

    v1 = byte_10003E848;
    v2 = +[CADisplay mainDisplay];
    [v2 bounds];
    v4 = fmax(v3, 1080.0);
    if (!v1)
    {
      v4 = v3;
    }

    qword_10003E888 = *&v4;

    result = *&qword_10003E888 / [HUDLine contentScaleForTexts]_0();
    qword_10003E888 = *&result;
  }

  return result;
}

void sub_100017288()
{
  if (*&qword_10003E898 <= 0.0)
  {
    v0 = sub_100016D30();
    v1 = fmin(v0, sub_1000171F0());
    sub_1000170E4(v2);
    *&qword_10003E898 = v1 + v3 * -2.0;
  }
}

double sub_1000172DC(uint64_t a1, uint64_t a2)
{
  if (qword_10003E8A0 != -1)
  {
    sub_10001A628();
  }

  return *&qword_10003E8A8;
}

void sub_100017314(id a1)
{
  if (qword_10003E830 != -1)
  {
    sub_10001A50C();
  }

  v1 = 20.0;
  if (byte_10003E838)
  {
    v1 = 2.0;
  }

  qword_10003E8A8 = *&v1;
  *&qword_10003E8A8 = v1 / [HUDLine contentScaleForTexts]_0();
}

double sub_100017378(uint64_t a1, uint64_t a2)
{
  if (qword_10003E8B0 != -1)
  {
    sub_10001A63C();
  }

  return *&qword_10003E8B8;
}

void sub_1000173B0(id a1)
{
  if (qword_10003E830 != -1)
  {
    sub_10001A50C();
  }

  v1 = 20.0;
  if (byte_10003E838)
  {
    v1 = 2.0;
  }

  qword_10003E8B8 = *&v1;
  *&qword_10003E8B8 = v1 / [HUDLine contentScaleForTexts]_0();
}

void sub_100017414()
{
  qword_10003E868 = 0;
  qword_10003E870 = 0;
  qword_10003E898 = 0;
}

void sub_100017430()
{
  qword_10003E860 = 0;
  qword_10003E868 = 0;
  qword_10003E870 = 0;
  qword_10003E878 = 0;
  qword_10003E880 = 0;
  qword_10003E888 = 0;
  qword_10003E890 = 0;
  qword_10003E898 = 0;
}

uint64_t sub_100017474(void *a1, uint64_t a2, double a3)
{
  v5 = a1;
  v6 = [v5 receivedTimestamp];
  v8 = sub_100017A6C(a2 - v6, v7);
  v10 = sub_100002F0C(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10001A650(v10, v8);
  }

  if ([v5 hangEndTime] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8 <= a3)
    {
      v11 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v12 = [v5 hangEndTime];
  v14 = sub_100017A6C(a2 - v12, v13);
  v11 = 1;
  if (v14 >= 200.0 && v8 > a3)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v11;
}

id sub_100017548(void *a1, unsigned int a2)
{
  v3 = [a1 keysSortedByValueWithOptions:0 usingComparator:&stru_100031A50];
  v4 = 0;
  if ([v3 count] >= a2)
  {
    v4 = [v3 count] - a2;
  }

  v5 = [v3 count];
  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v3 subarrayWithRange:{v4, v6}];

  return v7;
}

int64_t sub_1000175E4(id a1, HTHangHUDInfo *a2, HTHangHUDInfo *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(HTHangHUDInfo *)v4 hangStartTime];
  if (v6 == [(HTHangHUDInfo *)v5 hangStartTime])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(HTHangHUDInfo *)v4 hangStartTime];
    if (v8 > [(HTHangHUDInfo *)v5 hangStartTime])
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

id sub_10001766C(void *a1, unsigned int a2)
{
  v3 = a1;
  if ([v3 count])
  {
    v4 = [v3 keysSortedByValueUsingComparator:&stru_100031A90];
    v5 = a2;
    if ([v4 count] >= a2)
    {
      v6 = [v4 count] - a2;
    }

    else
    {
      v6 = 0;
    }

    v8 = [v4 count];
    if (v8 >= v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = v8;
    }

    v7 = [v4 subarrayWithRange:{v6, v9}];
  }

  else
  {
    v7 = objc_alloc_init(NSArray);
  }

  return v7;
}

int64_t sub_100017734(id a1, HUDContentProtocol *a2, HUDContentProtocol *a3)
{
  v4 = a3;
  v5 = [(HUDContentProtocol *)a2 compareValue];
  v6 = [(HUDContentProtocol *)v4 compareValue];

  v7 = 1;
  if (v5 <= v6)
  {
    v7 = -1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_100017790(void *a1, _BYTE *a2)
{
  v3 = a1;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 persistentDomainForName:@"com.apple.HangHUD"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:v3];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      *a2 = [v7 isEqualToString:@"YES"];
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100017864()
{
  v2 = 0;
  v0 = &v2;
  if ((sub_100017790(@"UseHangHUD", &v2) & 1) == 0)
  {
    if (qword_10003E8C0 != -1)
    {
      sub_10001A6CC();
    }

    v0 = &byte_10003E8C8;
  }

  return *v0;
}

uint64_t sub_1000178F8()
{
  v1 = 0;
  LODWORD(result) = sub_100017790(@"IgnoreHangInfoFromHangHUDClients", &v1);
  if (v1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

void sub_100017934(id a1)
{
  v1 = SBSIsSystemApertureAvailable();
  byte_10003E8D8 = v1;
  v2 = sub_100002F0C(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3[0] = 67109120;
    v3[1] = byte_10003E8D8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "New API was available, retrieved aperture available %{BOOL}i", v3, 8u);
  }
}

double sub_1000179E4(uint64_t a1, uint64_t a2)
{
  if (qword_10003E8E8 != -1)
  {
    sub_10001A6E0();
  }

  return *&qword_10003E8E0;
}

void sub_100017A1C(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  *&qword_10003E8E0 = ((info.numer * 0.000001) / info.denom);
}

double sub_100017A6C(unint64_t a1, uint64_t a2)
{
  if (qword_10003E8E8 != -1)
  {
    sub_10001A6E0();
  }

  return *&qword_10003E8E0 * a1;
}

double sub_100017AB4(unint64_t a1, uint64_t a2)
{
  if (qword_10003E8E8 != -1)
  {
    sub_10001A6E0();
  }

  return *&qword_10003E8E0 * a1 / 1000.0;
}

double sub_100017B08(unint64_t a1, uint64_t a2)
{
  if (qword_10003E8E8 != -1)
  {
    sub_10001A6E0();
  }

  return a1 / *&qword_10003E8E0;
}

void sub_100017D18(id a1)
{
  SRGB = CGColorCreateSRGB(1.0, 1.0, 1.0, 1.0);
  v2 = CGColorCreateSRGB(0.0, 0.0, 0.0, 1.0);
  v3 = CGColorCreateSRGB(0.556862745, 0.556862745, 0.576470588, 1.0);
  v4 = CGColorCreateSRGB(0.921568627, 0.537254902, 0.0, 1.0);
  CopyWithAlpha = CGColorCreateCopyWithAlpha(v4, 0.67);
  v6 = CGColorCreateSRGB(0.949019608, 0.219607843, 0.180392157, 1.0);
  v7 = CGColorCreateCopyWithAlpha(v6, 0.67);
  v8 = CGColorCreateSRGB(0.0, 0.0, 0.0, 1.0);
  v9 = CGColorCreateSRGB(0.396078431, 0.396078431, 0.396078431, 1.0);
  v10 = [[HUDTheme alloc] initWithPreviousHangTextColor:v3 currentHangTextColor:v2 currentHangSevereTextColor:v4 previousHangSevereTextColor:CopyWithAlpha currentHangCriticalTextColor:v6 previousHangCriticalTextColor:v7 backgroundColor:SRGB currentProcessExitTextColor:v8 processExitReasonNamespaceTextColor:v9];
  v11 = qword_10003E8F8;
  qword_10003E8F8 = v10;

  CFRelease(SRGB);
  CFRelease(v2);
  CFRelease(v4);
  CFRelease(CopyWithAlpha);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v7);
  CFRelease(v8);

  CFRelease(v9);
}

void sub_100017F24(id a1)
{
  SRGB = CGColorCreateSRGB(0.141176471, 0.141176471, 0.156862745, 1.0);
  v2 = CGColorCreateSRGB(1.0, 1.0, 1.0, 1.0);
  v3 = CGColorCreateSRGB(0.556862745, 0.556862745, 0.576470588, 1.0);
  v4 = CGColorCreateSRGB(1.0, 0.584313725, 0.0392156863, 1.0);
  CopyWithAlpha = CGColorCreateCopyWithAlpha(v4, 0.67);
  v6 = CGColorCreateSRGB(1.0, 0.270588235, 0.22745098, 1.0);
  v7 = CGColorCreateCopyWithAlpha(v6, 0.67);
  v8 = CGColorCreateSRGB(1.0, 1.0, 1.0, 1.0);
  v9 = CGColorCreateSRGB(0.556862745, 0.556862745, 0.576470588, 1.0);
  v10 = [[HUDTheme alloc] initWithPreviousHangTextColor:v3 currentHangTextColor:v2 currentHangSevereTextColor:v4 previousHangSevereTextColor:CopyWithAlpha currentHangCriticalTextColor:v6 previousHangCriticalTextColor:v7 backgroundColor:SRGB currentProcessExitTextColor:v8 processExitReasonNamespaceTextColor:v9];
  v11 = qword_10003E908;
  qword_10003E908 = v10;

  CFRelease(SRGB);
  CFRelease(v2);
  CFRelease(v4);
  CFRelease(CopyWithAlpha);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v7);
  CFRelease(v8);

  CFRelease(v9);
}

void sub_100018184(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  LODWORD(v9) = 134217984;
  *(&v9 + 4) = a9;
  sub_10000174C(&_mh_execute_header, a1, a3, "TextAnimation: animation ended with duration %f", a5, a6, a7, a8, v9, DWORD2(v9));
}

void sub_1000181F4(void *a1, NSObject *a2, double a3)
{
  v5 = [a1 string];
  v6 = 138412546;
  v7 = v5;
  v8 = 2048;
  v9 = a3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "TextAnimation: duration layer's animation object initialized: text set as %@ for a given duration %f", &v6, 0x16u);
}

void sub_1000182A4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  LODWORD(v9) = 134217984;
  *(&v9 + 4) = a9;
  sub_10000174C(&_mh_execute_header, a1, a3, "TextAnimation: duration layer's animation object updated with toValue = %f", a5, a6, a7, a8, v9, DWORD2(v9));
}

void sub_100018314(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  LODWORD(v9) = 134217984;
  *(&v9 + 4) = a9;
  sub_10000174C(&_mh_execute_header, a1, a3, "TextAnimation: no need to update duraton since _hangDuration is equal to the input %f.", a5, a6, a7, a8, v9, DWORD2(v9));
}

void sub_100018384(id *a1, NSObject *a2)
{
  v3 = [*a1 string];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "TextAnimation:  duration layer's text set as %@", &v4, 0xCu);
}

void sub_100018448(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "    A hang with ID %@ has not ended yet!", &v2, 0xCu);
}

void sub_1000184C0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, " 🔚 A hang with ID %@ has ended!", &v2, 0xCu);
}

void sub_100018560(uint64_t a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 67109378;
  *(buf + 1) = a3;
  *(buf + 4) = 2080;
  *(buf + 10) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to fetch launch_service_stats(%d):%s", buf, 0x12u);
}

void sub_100018610(void *a1)
{
  [a1 count];
  sub_1000066D8();
  sub_1000066BC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100018758(void *a1)
{
  [a1 count];
  sub_1000066E4();
  sub_1000066BC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100018940(void *a1)
{
  [a1 count];
  sub_1000066E4();
  sub_1000066BC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100018A8C(void *a1)
{
  [a1 areProcessTerminationsMonitored];
  sub_1000066BC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100018C3C(uint64_t a1)
{
  [*(*(a1 + 32) + 24) count];
  sub_1000066D8();
  sub_1000066BC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100018D44(id *a1, uint64_t a2, NSObject *a3)
{
  v5 = [*a1 target];
  sub_1000066D8();
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to acquire render HUD assertion for target %@: %{public}@", v6, 0x16u);
}

void sub_100018E4C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 bundleId];
  sub_1000066D8();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Unable to create an LS application record from bundle id %@: %@", v6, 0x16u);
}

void sub_100018EF8(void *a1)
{
  [a1 HUD_background_opacity];
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = v1;
  sub_10000A344(&_mh_execute_header, v2, v3, "HUD_background_opacity set to %f", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_100018FF4(void *a1)
{
  [a1 count];
  sub_1000066D8();
  sub_10000A344(&_mh_execute_header, v1, v2, "Updating HUD with %lu hangs", v3, v4, v5, v6);
}

void sub_10001915C()
{
  sub_1000066D8();
  sub_1000066CC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000191CC()
{
  sub_1000066D8();
  sub_1000066CC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019528(uint64_t a1, void *a2)
{
  [a2 exitReasonNamespace];
  sub_10000A970();
  sub_1000066BC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000195B0(uint64_t a1, void *a2)
{
  [a2 exitReasonNamespace];
  [a2 exitReasonCode];
  sub_10000A988();
  sub_1000066BC();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100019650(uint64_t a1, void *a2)
{
  [a2 exitReasonNamespace];
  [a2 exitReasonCode];
  sub_10000A988();
  sub_1000066BC();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000196F0(uint64_t a1, void *a2)
{
  [a2 exitReasonNamespace];
  sub_10000A970();
  sub_1000066BC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100019778(uint64_t a1, void *a2)
{
  [a2 exitReasonNamespace];
  sub_10000A970();
  sub_1000066BC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10001988C(void *a1)
{
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = [a1 exitTimestamp];
  sub_10000A344(&_mh_execute_header, v1, v2, " * ProcExitHUDLine finishedUpdates! - exitTimestamp:%llu", v3, v4, v5, v6, v7, DWORD2(v7));
}

void sub_100019908(void *a1)
{
  [a1 hangDurationMS];
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = v1;
  sub_10000A344(&_mh_execute_header, v2, v3, " * HangHUDLine finishedUpdates! hangDurationMS: %f", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_100019984(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "No more update happens as it's completed for %@ @ HangHUDLine::update:", &v2, 0xCu);
}

void sub_1000199FC(NSObject *a1)
{
  v2 = +[HangHUDServiceSpecification machName];
  v3 = +[HangHUDServiceSpecification identifier];
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "failed to lookup endpoint with machName=%@ service=%@", &v4, 0x16u);
}

void sub_100019AC4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[HangHUDClient sendHangHUDInfo:completion:]";
  sub_10000174C(&_mh_execute_header, a1, a3, "%s called at Angel client", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100019B3C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"launchingTarget is nil. connection is not active or remote interface is empty.";
  sub_10000D864(&_mh_execute_header, a1, a3, "%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100019BB4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[HangHUDClient sendProcExitRecord:completion:]";
  sub_10000174C(&_mh_execute_header, a1, a3, "%s called at Angel client", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100019C2C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[HangHUDClient sendHudConfiguration:completion:]";
  sub_10000174C(&_mh_execute_header, a1, a3, "%s called at Angel client", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100019CA4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[HangHUDClient sendMonitoredStates:completion:]";
  sub_10000174C(&_mh_execute_header, a1, a3, "%s called at Angel client", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100019D1C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[HangHUDClient clearHUDWithCompletion:]";
  sub_10000174C(&_mh_execute_header, a1, a3, "%s called at Angel client", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100019D94(uint64_t a1, NSObject *a2, double a3)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Checking if hang is current with hangID %@: durationSinceLastUpdateMs:%f", &v3, 0x16u);
}

void sub_10001A1E4()
{
  sub_100016AFC();
  sub_100016B0C();
  sub_100016AEC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10001A288()
{
  sub_100016AFC();
  sub_100016B0C();
  sub_100016AEC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10001A32C()
{
  sub_100016AFC();
  sub_100016B0C();
  sub_100016AEC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10001A3D0()
{
  sub_100016AFC();
  sub_100016B0C();
  sub_100016AEC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10001A570(uint64_t a1, NSObject *a2)
{
  v4 = 134218498;
  v5 = qword_10003E868;
  v6 = 2048;
  v7 = [HUDLine contentScaleForTexts]_0();
  v8 = 2112;
  v9 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "cachedTopMargin is set to %f where DisplayScale is %f. The orientation is %@", &v4, 0x20u);
}

void sub_10001A650(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "durationSinceLastUpdateMs: %f", &v2, 0xCu);
}
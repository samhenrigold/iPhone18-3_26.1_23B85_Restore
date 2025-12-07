@interface NRRTCPairingReporter
+ (id)sharedInstance;
+ (void)submitRTCPairingMetricWithMetricID:(id)d withCompletion:(id)completion;
- (NRRTCPairingReporter)init;
- (id)lastControllerPushed:(id)pushed;
- (void)addToOrCapOffRTCPairingMetric:(unsigned int)metric;
- (void)assembleAndSubmitPairingMetricWithMetricID:(id)d withCompletion:(id)completion;
@end

@implementation NRRTCPairingReporter

- (NRRTCPairingReporter)init
{
  v7.receiver = self;
  v7.super_class = NRRTCPairingReporter;
  v2 = [(NRRTCPairingReporter *)&v7 init];
  v3 = v2;
  if (v2 && !v2->_queue)
  {
    v4 = dispatch_queue_create("com.apple.nanoregistry.rtcpairingreport", 0);
    queue = v3->_queue;
    v3->_queue = v4;
  }

  return v3;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C1008;
  block[3] = &unk_1001756A8;
  block[4] = self;
  if (qword_1001B3A48 != -1)
  {
    dispatch_once(&qword_1001B3A48, block);
  }

  v2 = qword_1001B3A40;

  return v2;
}

+ (void)submitRTCPairingMetricWithMetricID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v7 = +[NRRTCPairingReporter sharedInstance];
  [v7 assembleAndSubmitPairingMetricWithMetricID:dCopy withCompletion:completionCopy];
}

- (void)addToOrCapOffRTCPairingMetric:(unsigned int)metric
{
  v3 = *&metric;
  if (BRStaleOrNoPairingMetric())
  {
    v5 = nr_pairing_reporter_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (!v6)
    {
      return;
    }

    v7 = nr_pairing_reporter_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Stale or no pairing metric in metric dir, will not attempt to submit anything to RTC", buf, 2u);
    }

    goto LABEL_7;
  }

  if (v3)
  {
    v8 = +[NRRTCPairingReporter sharedInstance];
    [v8 setReportSubreason:v3];

    v7 = +[NRRTCPairingReporter sharedInstance];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000C13D0;
    v28[3] = &unk_100179298;
    v29 = v3;
    [v7 assembleAndSubmitPairingMetricWithMetricID:0 withCompletion:v28];
LABEL_7:

    return;
  }

  v9 = nr_pairing_reporter_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = nr_pairing_reporter_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not finished with pairing report, but will add success subreason", buf, 2u);
    }
  }

  v30[0] = kPairingMetricsDir;
  v12 = BRGetCurrentMetricIDFromMetricDir();
  v30[1] = v12;
  v30[2] = kPairingMetricNRPlistName;
  v13 = [NSArray arrayWithObjects:v30 count:3];
  v14 = [NSString pathWithComponents:v13];
  v15 = [NSURL fileURLWithPath:v14];

  objc_initWeak(&location, self);
  *buf = 0;
  v24 = buf;
  v25 = 0x2020000000;
  v26 = 0;
  queue = self->_queue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000C14EC;
  v18[3] = &unk_1001792C0;
  objc_copyWeak(&v21, &location);
  v22 = 0;
  v19 = v15;
  v20 = buf;
  v17 = v15;
  dispatch_async(queue, v18);

  objc_destroyWeak(&v21);
  _Block_object_dispose(buf, 8);
  objc_destroyWeak(&location);
}

- (void)assembleAndSubmitPairingMetricWithMetricID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = nr_pairing_reporter_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

  if (v9)
  {
    v10 = nr_pairing_reporter_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001031C0(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = BRGetCurrentMetricIDFromMetricDir();
  v19 = v18 == 0;

  if (v19)
  {
    v33 = nr_pairing_reporter_log();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

    if (v34)
    {
      v35 = nr_pairing_reporter_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "No pairing metric in metric dir, will not attempt to submit anything to RTC", buf, 2u);
      }
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  else
  {
    *buf = 0;
    v44 = buf;
    v45 = 0x3032000000;
    v46 = sub_1000C1B78;
    v47 = sub_1000C1B88;
    v48 = 0;
    objc_initWeak(&location, self);
    v51[0] = kPairingMetricsDir;
    v20 = BRGetCurrentMetricIDFromMetricDir();
    v51[1] = v20;
    v21 = [NSArray arrayWithObjects:v51 count:2];
    v22 = [NSString pathWithComponents:v21];

    v50[0] = v22;
    v50[1] = kPairingMetricBridgePlistName;
    v23 = [NSArray arrayWithObjects:v50 count:2];
    v24 = [NSString pathWithComponents:v23];
    v25 = [NSURL fileURLWithPath:v24];

    v49[0] = v22;
    v49[1] = kPairingMetricNRPlistName;
    v26 = [NSArray arrayWithObjects:v49 count:2];
    v27 = [NSString pathWithComponents:v26];
    v28 = [NSURL fileURLWithPath:v27];

    v29 = [NSMutableDictionary dictionaryWithContentsOfURL:v25];
    queue = self->_queue;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000C1B90;
    v36[3] = &unk_100179310;
    objc_copyWeak(&v41, &location);
    v40 = buf;
    v37 = v28;
    v38 = v29;
    v39 = completionCopy;
    v31 = v29;
    v32 = v28;
    dispatch_async(queue, v36);

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);
  }
}

- (id)lastControllerPushed:(id)pushed
{
  pushedCopy = pushed;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_1000C1B78;
  v17[4] = sub_1000C1B88;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000C1B78;
  v15 = sub_1000C1B88;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C223C;
  v6[3] = &unk_100179338;
  v9 = v17;
  v10 = &v11;
  v7 = @"PushedControllerNumber";
  v8 = @"HoldControllerNumber";
  [pushedCopy enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v12[5];

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(v17, 8);

  return v4;
}

@end
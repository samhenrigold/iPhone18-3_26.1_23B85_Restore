@interface HangDataStreamStatusTracker
+ (id)sharedInstance;
- (BOOL)isHangEndedWithDuration:(double)duration updateInterval:(double)interval hangID:(id)d;
- (HangDataStreamStatusTracker)init;
@end

@implementation HangDataStreamStatusTracker

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E448;
  block[3] = &unk_100055408;
  block[4] = self;
  if (qword_100067B58 != -1)
  {
    dispatch_once(&qword_100067B58, block);
  }

  v2 = qword_100067B50;

  return v2;
}

- (HangDataStreamStatusTracker)init
{
  v6.receiver = self;
  v6.super_class = HangDataStreamStatusTracker;
  v2 = [(HangDataStreamStatusTracker *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    hangHUDStatusDict = v2->_hangHUDStatusDict;
    v2->_hangHUDStatusDict = v3;
  }

  return v2;
}

- (BOOL)isHangEndedWithDuration:(double)duration updateInterval:(double)interval hangID:(id)d
{
  dCopy = d;
  v9 = [(NSMutableDictionary *)self->_hangHUDStatusDict objectForKey:dCopy];

  if (!v9)
  {
    hangHUDStatusDict = self->_hangHUDStatusDict;
    v11 = objc_alloc_init(HangDataStreamStatus);
    [(NSMutableDictionary *)hangHUDStatusDict setObject:v11 forKey:dCopy];
  }

  v12 = [(NSMutableDictionary *)self->_hangHUDStatusDict objectForKeyedSubscript:dCopy];
  previousDurationSinceLastUpdateMs = [v12 previousDurationSinceLastUpdateMs];
  v15 = v14;
  v16 = sub_100027A10(previousDurationSinceLastUpdateMs);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [v12 previousDurationSinceLastUpdateMs];
    v23 = 134219522;
    durationCopy = duration;
    v25 = 2048;
    v26 = v22;
    v27 = 1024;
    countsOfMeetingEndingConditions = [v12 countsOfMeetingEndingConditions];
    v29 = 1024;
    v30 = duration > interval;
    v31 = 1024;
    v32 = v15 < duration;
    v33 = 2048;
    intervalCopy = interval;
    v35 = 2112;
    v36 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "isHangEndedWithDuration %f, previous_durationSinceLastUpdateMs:%f, counter:%i, is_latency_high:%i, is_latency_increasing:%i, hudUpdateInterval:%f, hangID:%@", &v23, 0x3Cu);
  }

  if (duration <= interval || v15 >= duration)
  {
    [v12 initStatus];
  }

  else
  {
    [v12 setCountsOfMeetingEndingConditions:{objc_msgSend(v12, "countsOfMeetingEndingConditions") + 1}];
    [v12 setPreviousDurationSinceLastUpdateMs:duration];
  }

  countsOfMeetingEndingConditions2 = [v12 countsOfMeetingEndingConditions];
  v18 = countsOfMeetingEndingConditions2;
  v19 = sub_100027A10(countsOfMeetingEndingConditions2);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
  if (v18 < 3)
  {
    if (v20)
    {
      sub_100033940(dCopy, v19);
    }
  }

  else
  {
    if (v20)
    {
      sub_1000339B8(dCopy, v19);
    }

    [v12 initStatus];
  }

  return v18 > 2;
}

@end
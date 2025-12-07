@interface OSAGPUEventReport
- (OSAGPUEventReport)initWithDictionary:(id)dictionary;
- (id)reportNamePrefix;
- (void)generateLogAtLevel:(BOOL)level withBlock:(id)block;
@end

@implementation OSAGPUEventReport

- (OSAGPUEventReport)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = OSAGPUEventReport;
  v6 = [(OSAGPUEventReport *)&v20 init];
  if (v6)
  {
    *&v6->OSAReport_opaque[OBJC_IVAR___OSAReport__capture_time] = CFAbsoluteTimeGetCurrent();
    objc_storeStrong(&v6->_event, dictionary);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v7 = [(NSDictionary *)v6->_event count];
      *buf = 134217984;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "GPURestartReport: event with %lu keys", buf, 0xCu);
    }

    v8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.osanalytics"];
    v9 = +[OSASystemConfiguration sharedInstance];
    if ([v9 appleInternal])
    {
      v10 = [v8 BOOLForKey:@"includeTailspinWithGPUEvents"];

      if (v10)
      {
        if (qword_100054078 != -1)
        {
          sub_10002FF84();
        }

        reportNamePrefix = [(OSAGPUEventReport *)v6 reportNamePrefix];
        v12 = OSADateFormat();
        v13 = [NSString stringWithFormat:@"%@-%@.tailspin", reportNamePrefix, v12];

        v14 = [@"/var/root/Library/Logs/tailspin" stringByAppendingPathComponent:v13];
        tailspinPath = v6->_tailspinPath;
        v6->_tailspinPath = v14;

        v16 = qword_100054070;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000FBA4;
        block[3] = &unk_100045258;
        v19 = v6;
        dispatch_async(v16, block);

LABEL_12:
        goto LABEL_13;
      }
    }

    else
    {
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10002FF3C();
    }

    goto LABEL_12;
  }

LABEL_13:

  return v6;
}

- (id)reportNamePrefix
{
  v2 = [(NSDictionary *)self->_event objectForKeyedSubscript:@"process_name"];
  v3 = @"unknown";
  if (v2)
  {
    v3 = v2;
  }

  v4 = [NSString stringWithFormat:@"gpuEvent-%@", v3];

  return v4;
}

- (void)generateLogAtLevel:(BOOL)level withBlock:(id)block
{
  blockCopy = block;
  if (self->_tailspinPath)
  {
    v5 = [(NSDictionary *)self->_event mutableCopy];
    objc_msgSend_setObject_forKeyedSubscript_(v5);
    event = self->_event;
    self->_event = v5;
  }

  problemType = [(OSAGPUEventReport *)self problemType];
  v8 = [OSALog commonFieldsForBody:problemType];
  blockCopy[2](blockCopy, v8);

  blockCopy[2](blockCopy, self->_event);
}

@end
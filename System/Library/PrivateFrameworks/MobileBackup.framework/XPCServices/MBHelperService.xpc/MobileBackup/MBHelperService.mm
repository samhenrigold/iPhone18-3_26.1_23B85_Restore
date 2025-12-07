@interface MBHelperService
- (void)localizedStringForCountdownFrom:(id)from toDate:(id)date reply:(id)reply;
- (void)localizedStringForEstimatedTimeRemaining:(double)remaining reply:(id)reply;
- (void)localizedStringFromByteCount:(int64_t)count countStyle:(int64_t)style reply:(id)reply;
- (void)runEncodingTask:(id)task reply:(id)reply;
@end

@implementation MBHelperService

- (void)runEncodingTask:(id)task reply:(id)reply
{
  taskCopy = task;
  replyCopy = reply;
  if (!taskCopy)
  {
    sub_100015454();
  }

  v7 = replyCopy;
  if (![taskCopy compressionMethod])
  {
    sub_100015428();
  }

  v8 = +[MBHelperServiceDelegate sharedInstance];
  [v8 activate];
  if (qword_10002A2C8 != -1)
  {
    sub_1000153E8();
  }

  v9 = [qword_10002A2C0 getFileSystemRepresentation:v41 maxLength:1025];
  if ((v9 & 1) == 0)
  {
    v20 = MBGetDefaultLog(v9);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "getFileSystemRepresentation failed", buf, 2u);
      _MBLog(@"E ", "getFileSystemRepresentation failed");
    }

    goto LABEL_15;
  }

  v10 = mkstemp(v41);
  if (v10 == -1)
  {
    v20 = MBGetDefaultLog(v10);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *__error();
      *buf = 67109120;
      LODWORD(v30) = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "mkstemp failed: %{errno}d", buf, 8u);
      v22 = *__error();
      _MBLog(@"E ", "mkstemp failed: %{errno}d", v22);
    }

LABEL_15:

    v19 = [MBError errorWithCode:1 format:@"Failed to create tmp file"];
    (v7)[2](v7, v19);
    [v8 idle];
    goto LABEL_16;
  }

  v11 = v10;
  v12 = [NSString stringWithUTF8String:v41];
  if (!v12)
  {
    sub_1000153FC();
  }

  v13 = v12;
  [taskCopy setDestinationPath:v12];
  v14 = MBGetDefaultLog([taskCopy setValidate:1]);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    sourcePath = [taskCopy sourcePath];
    *buf = 138413570;
    v30 = taskCopy;
    v31 = 2112;
    v32 = sourcePath;
    v33 = 2112;
    v34 = v13;
    v35 = 2048;
    encodingMethod = [taskCopy encodingMethod];
    v37 = 2048;
    compressionMethod = [taskCopy compressionMethod];
    v39 = 1024;
    protectionClass = [taskCopy protectionClass];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Starting task:%@, sourcePath:%@, destinationPath:%@, encodingMethod:%ld, compressionMethod:%ld, pc:%d", buf, 0x3Au);

    sourcePath2 = [taskCopy sourcePath];
    _MBLog(@"I ", "Starting task:%@, sourcePath:%@, destinationPath:%@, encodingMethod:%ld, compressionMethod:%ld, pc:%d", taskCopy, sourcePath2, v13, [taskCopy encodingMethod], objc_msgSend(taskCopy, "compressionMethod"), objc_msgSend(taskCopy, "protectionClass"));
  }

  v17 = dispatch_group_create();
  [taskCopy setGroup:v17];
  [taskCopy start];
  v18 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013C08;
  block[3] = &unk_100024CA0;
  v24 = v13;
  v28 = v11;
  v27 = v7;
  v25 = taskCopy;
  v26 = v8;
  v19 = v13;
  dispatch_group_notify(v17, v18, block);

LABEL_16:
}

- (void)localizedStringForEstimatedTimeRemaining:(double)remaining reply:(id)reply
{
  replyCopy = reply;
  v7 = +[MBHelperServiceDelegate sharedInstance];
  [v7 activate];
  durationFormatter = self->_durationFormatter;
  if (!durationFormatter)
  {
    v9 = objc_alloc_init(NSDateComponentsFormatter);
    v10 = self->_durationFormatter;
    self->_durationFormatter = v9;

    [(NSDateComponentsFormatter *)self->_durationFormatter setUnitsStyle:3];
    [(NSDateComponentsFormatter *)self->_durationFormatter setAllowedUnits:112];
    [(NSDateComponentsFormatter *)self->_durationFormatter setMaximumUnitCount:1];
    [(NSDateComponentsFormatter *)self->_durationFormatter setIncludesApproximationPhrase:1];
    [(NSDateComponentsFormatter *)self->_durationFormatter setIncludesTimeRemainingPhrase:1];
    [(NSDateComponentsFormatter *)self->_durationFormatter setFormattingContext:2];
    durationFormatter = self->_durationFormatter;
  }

  remainingCopy = 60.0;
  if (remaining >= 60.0)
  {
    remainingCopy = remaining;
  }

  v12 = [(NSDateComponentsFormatter *)durationFormatter stringFromTimeInterval:remainingCopy];
  v13 = MBGetDefaultLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [NSNumber numberWithDouble:remaining];
    *buf = 138543618;
    v17 = v12;
    v18 = 2114;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "MBHelperService generated ETA string %{public}@ from %{public}@", buf, 0x16u);

    v15 = [NSNumber numberWithDouble:remaining];
    _MBLog(@"Db", "MBHelperService generated ETA string %{public}@ from %{public}@", v12, v15);
  }

  replyCopy[2](replyCopy, v12, 0);
  [v7 idle];
}

- (void)localizedStringForCountdownFrom:(id)from toDate:(id)date reply:(id)reply
{
  fromCopy = from;
  dateCopy = date;
  replyCopy = reply;
  v11 = +[MBHelperServiceDelegate sharedInstance];
  [v11 activate];
  countdownFormatter = self->_countdownFormatter;
  if (!countdownFormatter)
  {
    v13 = objc_alloc_init(NSDateComponentsFormatter);
    v14 = self->_countdownFormatter;
    self->_countdownFormatter = v13;

    [(NSDateComponentsFormatter *)self->_countdownFormatter setUnitsStyle:3];
    [(NSDateComponentsFormatter *)self->_countdownFormatter setAllowedUnits:16];
    [(NSDateComponentsFormatter *)self->_countdownFormatter setMaximumUnitCount:1];
    [(NSDateComponentsFormatter *)self->_countdownFormatter setFormattingContext:5];
    countdownFormatter = self->_countdownFormatter;
  }

  v15 = [(NSDateComponentsFormatter *)countdownFormatter stringFromDate:fromCopy toDate:dateCopy];
  v16 = MBGetDefaultLog(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v18 = v15;
    v19 = 2114;
    v20 = fromCopy;
    v21 = 2114;
    v22 = dateCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "MBHelperService generated countdown string %{public}@ from %{public}@ to %{public}@", buf, 0x20u);
    _MBLog(@"Db", "MBHelperService generated countdown string %{public}@ from %{public}@ to %{public}@", v15, fromCopy, dateCopy);
  }

  replyCopy[2](replyCopy, v15, 0);
  [v11 idle];
}

- (void)localizedStringFromByteCount:(int64_t)count countStyle:(int64_t)style reply:(id)reply
{
  replyCopy = reply;
  v8 = +[MBHelperServiceDelegate sharedInstance];
  [v8 activate];
  v9 = [NSByteCountFormatter stringFromByteCount:count countStyle:style];
  v10 = MBGetDefaultLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [NSNumber numberWithLongLong:count];
    v12 = [NSNumber numberWithInteger:style];
    *buf = 138543874;
    v16 = v9;
    v17 = 2114;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "MBHelperService generated byte count string %{public}@ from %{public}@ %{public}@", buf, 0x20u);

    v13 = [NSNumber numberWithLongLong:count];
    v14 = [NSNumber numberWithInteger:style];
    _MBLog(@"Db", "MBHelperService generated byte count string %{public}@ from %{public}@ %{public}@", v9, v13, v14);
  }

  replyCopy[2](replyCopy, v9, 0);
  [v8 idle];
}

@end
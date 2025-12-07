@interface CMSensorRecorder
+ (BOOL)isAccelerometerRecordingAvailable;
+ (BOOL)isGyroRecordingAvailable;
+ (BOOL)isPressureRecordingAvailable;
+ (BOOL)isRecordingAvailableForType:(int)type;
- (BOOL)sendSensorDataToUrl:(id)url fromDate:(id)date toDate:(id)toDate forType:(int)type;
- (BOOL)setSensorSampleRate:(unsigned int)rate forType:(int)type;
- (BOOL)validateTimesFromDate:(id *)date toDate:(id)toDate;
- (id)accelerometerDataSinceId:(unint64_t)id;
- (id)gyroDataSinceId:(unint64_t)id;
- (id)pressureDataSinceId:(unint64_t)id;
- (id)sensorDataFromDate:(id)date toDate:(id)toDate forType:(int)type;
- (void)recordDataType:(int)type forDuration:(double)duration;
@end

@implementation CMSensorRecorder

+ (BOOL)isRecordingAvailableForType:(int)type
{
  v3 = *&type;
  v7 = *MEMORY[0x1E69E9840];
  if ((sub_19B4215D8() & 1) == 0)
  {
    v4 = objc_alloc_init(CLSensorRecorderSensorAvailable);
    objc_msgSend_setDataType_(v4, v5, v3);
    operator new();
  }

  return 0;
}

+ (BOOL)isAccelerometerRecordingAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel_isRecordingAvailableForType_, 0);
}

+ (BOOL)isGyroRecordingAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel_isRecordingAvailableForType_, 1);
}

+ (BOOL)isPressureRecordingAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel_isRecordingAvailableForType_, 2);
}

- (id)accelerometerDataSinceId:(unint64_t)id
{
  v4 = NSStringFromSelector(a2);
  objc_msgSend_tccServiceMotionAccessWithLabel_(CMMotionUtils, v5, v4);
  v6 = [CMSensorDataList alloc];
  v8 = objc_msgSend_initWithIdentifier_andType_(v6, v7, id, 0);

  return v8;
}

- (id)gyroDataSinceId:(unint64_t)id
{
  v4 = NSStringFromSelector(a2);
  objc_msgSend_tccServiceMotionAccessWithLabel_(CMMotionUtils, v5, v4);
  v6 = [CMSensorDataList alloc];
  v8 = objc_msgSend_initWithIdentifier_andType_(v6, v7, id, 1);

  return v8;
}

- (id)pressureDataSinceId:(unint64_t)id
{
  v4 = NSStringFromSelector(a2);
  objc_msgSend_tccServiceMotionAccessWithLabel_(CMMotionUtils, v5, v4);
  v6 = [CMSensorDataList alloc];
  v8 = objc_msgSend_initWithIdentifier_andType_(v6, v7, id, 2);

  return v8;
}

- (BOOL)validateTimesFromDate:(id *)date toDate:(id)toDate
{
  if (!date)
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CMSensorRecorder.mm", 640, @"Invalid parameter not satisfying: %@", @"startTime");
  }

  if (*date)
  {
    if (toDate)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v24 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, date);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CMSensorRecorder.mm", 641, @"Invalid parameter not satisfying: %@", @"*startTime");
    if (toDate)
    {
      goto LABEL_5;
    }
  }

  v26 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, date);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CMSensorRecorder.mm", 642, @"Invalid parameter not satisfying: %@", @"endTime");
LABEL_5:
  objc_msgSend_timeIntervalSinceDate_(toDate, a2, *date);
  if (v10 < 0.0)
  {
    v28 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v28, v29, a2, self, @"CMSensorRecorder.mm", 644, @"startTime must be <= to endTime");
  }

  Current = CFAbsoluteTimeGetCurrent();
  objc_msgSend_timeIntervalSinceReferenceDate(*date, v12, v13);
  if (Current - v16 >= 259200.0)
  {
    v30 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v31, a2, self, @"CMSensorRecorder.mm", 645, @"startTime must be within 3 days of today.");
  }

  objc_msgSend_timeIntervalSinceDate_(toDate, v14, *date);
  v20 = v19;
  if (v19 > 43200.0)
  {
    *date = objc_msgSend_dateByAddingTimeInterval_(toDate, v17, v18, -43200.0);
  }

  return v20 > 43200.0;
}

- (id)sensorDataFromDate:(id)date toDate:(id)toDate forType:(int)type
{
  v5 = *&type;
  v52 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if (objc_msgSend_validateTimesFromDate_toDate_(self, a2, &dateCopy))
  {
    if (qword_1EAFE29C8 != -1)
    {
      dispatch_once(&qword_1EAFE29C8, &unk_1F0E284E0);
    }

    v8 = qword_1EAFE29D0;
    if (os_log_type_enabled(qword_1EAFE29D0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v13 = objc_msgSend_UTF8String(v10, v11, v12);
      v14 = NSStringFromSelector(a2);
      v17 = objc_msgSend_UTF8String(v14, v15, v16);
      *buf = 136446466;
      v49 = v13;
      v50 = 2082;
      v51 = v17;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "#Notice [%{public}s %{public}s] fromDate has been adjusted so that the duration requested is <= 12 hours.", buf, 0x16u);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE29C8 != -1)
      {
        dispatch_once(&qword_1EAFE29C8, &unk_1F0E284E0);
      }

      v19 = qword_1EAFE29D0;
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v24 = objc_msgSend_UTF8String(v21, v22, v23);
      v25 = NSStringFromSelector(a2);
      v28 = objc_msgSend_UTF8String(v25, v26, v27);
      v44 = 136446466;
      v45 = v24;
      v46 = 2082;
      v47 = v28;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v19, 0, "#Notice [%{public}s %{public}s] fromDate has been adjusted so that the duration requested is <= 12 hours.", &v44, 22);
      v30 = v29;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSensorRecorder sensorDataFromDate:toDate:forType:]", "CoreLocation: %s\n", v29);
      if (v30 != buf)
      {
        free(v30);
      }
    }
  }

  v31 = NSStringFromSelector(a2);
  objc_msgSend_tccServiceMotionAccessWithLabel_(CMMotionUtils, v32, v31);
  v33 = [CMSensorDataList alloc];
  objc_msgSend_timeIntervalSinceReferenceDate(dateCopy, v34, v35);
  v37 = v36;
  objc_msgSend_timeIntervalSinceReferenceDate(toDate, v38, v39);
  return objc_msgSend_initFrom_to_withType_(v33, v40, v5, v37, v41);
}

- (BOOL)sendSensorDataToUrl:(id)url fromDate:(id)date toDate:(id)toDate forType:(int)type
{
  v6 = *&type;
  v78 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if (objc_msgSend_validateTimesFromDate_toDate_(self, a2, &dateCopy, toDate))
  {
    if (qword_1EAFE29C8 != -1)
    {
      dispatch_once(&qword_1EAFE29C8, &unk_1F0E284E0);
    }

    v10 = qword_1EAFE29D0;
    if (os_log_type_enabled(qword_1EAFE29D0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v15 = objc_msgSend_UTF8String(v12, v13, v14);
      v16 = NSStringFromSelector(a2);
      v19 = objc_msgSend_UTF8String(v16, v17, v18);
      *buf = 136446466;
      v75 = v15;
      v76 = 2082;
      v77 = v19;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "#Notice [%{public}s %{public}s] fromDate has been adjusted so that the duration requested is <= 12 hours.", buf, 0x16u);
    }

    v20 = sub_19B420058();
    if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE29C8 != -1)
      {
        dispatch_once(&qword_1EAFE29C8, &unk_1F0E284E0);
      }

      v21 = qword_1EAFE29D0;
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v26 = objc_msgSend_UTF8String(v23, v24, v25);
      v27 = NSStringFromSelector(a2);
      v30 = objc_msgSend_UTF8String(v27, v28, v29);
      v70 = 136446466;
      v71 = v26;
      v72 = 2082;
      v73 = v30;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v21, 0, "#Notice [%{public}s %{public}s] fromDate has been adjusted so that the duration requested is <= 12 hours.", &v70, 22);
      v32 = v31;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSensorRecorder sendSensorDataToUrl:fromDate:toDate:forType:]", "CoreLocation: %s\n", v31);
      if (v32 != buf)
      {
        free(v32);
      }
    }
  }

  v33 = NSStringFromSelector(a2);
  objc_msgSend_tccServiceMotionAccessWithLabel_(CMMotionUtils, v34, v33);
  v36 = objc_msgSend_fileHandleForWritingToURL_(CMMotionUtils, v35, url);
  if (v36)
  {
    v37 = v36;
    v38 = objc_alloc_init(CMSensorRecorderInternal);
    objc_msgSend_timeIntervalSinceReferenceDate(dateCopy, v39, v40);
    v42 = v41;
    objc_msgSend_timeIntervalSinceReferenceDate(toDate, v43, v44);
    v49 = objc_msgSend_writeSensorDataToFile_from_to_forType_(v38, v45, v37, v6, v42, v46);
    if ((v49 & 1) == 0)
    {
      v50 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v47, v48);
      objc_msgSend_removeItemAtURL_error_(v50, v51, url, 0);
    }
  }

  else
  {
    if (qword_1EAFE29C8 != -1)
    {
      dispatch_once(&qword_1EAFE29C8, &unk_1F0E284E0);
    }

    v52 = qword_1EAFE29D0;
    if (os_log_type_enabled(qword_1EAFE29D0, OS_LOG_TYPE_DEFAULT))
    {
      v55 = objc_msgSend_absoluteString(url, v53, v54);
      *buf = 138543362;
      v75 = v55;
      _os_log_impl(&dword_19B41C000, v52, OS_LOG_TYPE_DEFAULT, "#Notice Unable to get file handle for URL %{public}@", buf, 0xCu);
    }

    v56 = sub_19B420058();
    if (*(v56 + 160) > 1 || *(v56 + 164) > 1 || *(v56 + 168) > 1 || *(v56 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE29C8 != -1)
      {
        dispatch_once(&qword_1EAFE29C8, &unk_1F0E284E0);
      }

      v61 = qword_1EAFE29D0;
      v62 = objc_msgSend_absoluteString(url, v59, v60);
      v70 = 138543362;
      v71 = v62;
      LODWORD(v68) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v61, 0, "#Notice Unable to get file handle for URL %{public}@", &v70, v68);
      v64 = v63;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSensorRecorder sendSensorDataToUrl:fromDate:toDate:forType:]", "CoreLocation: %s\n", v63);
      if (v64 != buf)
      {
        free(v64);
      }
    }

    v65 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v57, v58);
    objc_msgSend_removeItemAtURL_error_(v65, v66, url, 0);
    return 0;
  }

  return v49;
}

- (void)recordDataType:(int)type forDuration:(double)duration
{
  v5 = *&type;
  if (duration <= 0.0)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, *&type);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CMSensorRecorder.mm", 726, @"Invalid parameter not satisfying: %@", @"duration > 0.0");
  }

  v7 = NSStringFromSelector(a2);
  objc_msgSend_tccServiceMotionAccessWithLabel_(CMMotionUtils, v8, v7);
  v9 = objc_alloc_init(CLSensorRecorderRecordSensorTypeFor);
  objc_msgSend_setDuration_(v9, v10, v11, duration);
  objc_msgSend_setDataType_(v9, v12, v5);
  operator new();
}

- (BOOL)setSensorSampleRate:(unsigned int)rate forType:(int)type
{
  v4 = *&type;
  v5 = *&rate;
  if (rate >= 0x65)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, *&rate);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CMSensorRecorder.mm", 762, @"Invalid parameter not satisfying: %@", @"rate <= 100");
  }

  v7 = NSStringFromSelector(a2);
  objc_msgSend_tccServiceMotionAccessWithLabel_(CMMotionUtils, v8, v7);
  v9 = objc_alloc_init(CMSensorRecorderInternal);
  v11 = objc_msgSend_setSensorSampleRate_forType_(v9, v10, v5, v4);

  return v11;
}

@end
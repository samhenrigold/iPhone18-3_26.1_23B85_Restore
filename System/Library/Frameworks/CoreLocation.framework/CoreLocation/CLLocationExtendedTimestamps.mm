@interface CLLocationExtendedTimestamps
- (CLLocationExtendedTimestamps)initWithCLLocation:(id)location systemTime:(id)time machContinuousTimeSec:(double)sec;
- (CLLocationExtendedTimestamps)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLLocationExtendedTimestamps

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLLocationExtendedTimestamps;
  [(CLLocationExtendedTimestamps *)&v3 dealloc];
}

- (CLLocationExtendedTimestamps)initWithCLLocation:(id)location systemTime:(id)time machContinuousTimeSec:(double)sec
{
  v10.receiver = self;
  v10.super_class = CLLocationExtendedTimestamps;
  v8 = [(CLLocationExtendedTimestamps *)&v10 init];
  if (v8)
  {
    v8->_location = location;
    v8->_systemTimeNotUserTime = time;
    v8->_machContinuousTimeSec = sec;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_location(self, v9, v10, v11);
  v15 = objc_msgSend_copyWithZone_(v12, v13, zone, v14);
  v19 = objc_msgSend_systemTimeNotUserTime(self, v16, v17, v18);
  v23 = objc_msgSend_copyWithZone_(v19, v20, zone, v21);
  machContinuousTimeSec = self->_machContinuousTimeSec;

  return objc_msgSend_initWithCLLocation_systemTime_machContinuousTimeSec_(v8, v22, v15, v23, machContinuousTimeSec);
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CLLocationExtendedTimestamps.mm", 53, @"Invalid parameter not satisfying: %@", @"[coder allowsKeyedCoding]");
  }

  v10 = objc_msgSend_location(self, v7, v8, v9);
  objc_msgSend_encodeObject_forKey_(coder, v11, v10, @"CLLocationExtendedTimestampsLocation");
  v15 = objc_msgSend_systemTimeNotUserTime(self, v12, v13, v14);
  objc_msgSend_encodeObject_forKey_(coder, v16, v15, @"CLLocationExtendedTimestampsSystemTime");
  objc_msgSend_machContinuousTimeSec(self, v17, v18, v19);

  objc_msgSend_encodeDouble_forKey_(coder, v20, @"CLLocationExtendedTimestampsMachContinuousTime", v21);
}

- (CLLocationExtendedTimestamps)initWithCoder:(id)coder
{
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v20 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, self, @"CLLocationExtendedTimestamps.mm", 62, @"Invalid parameter not satisfying: %@", @"[coder allowsKeyedCoding]");
  }

  v10 = objc_opt_class();
  v12 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"CLLocationExtendedTimestampsLocation");
  v13 = objc_opt_class();
  v15 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v14, v13, @"CLLocationExtendedTimestampsSystemTime");
  objc_msgSend_decodeDoubleForKey_(coder, v16, @"CLLocationExtendedTimestampsMachContinuousTime", v17);

  return objc_msgSend_initWithCLLocation_systemTime_machContinuousTimeSec_(self, v18, v12, v15);
}

@end
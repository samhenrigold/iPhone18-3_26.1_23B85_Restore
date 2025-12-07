@interface CLEEDUploadServiceConfig
- (CLEEDUploadServiceConfig)initWithCoder:(id)coder;
- (CLEEDUploadServiceConfig)initWithNumInflightUploads:(int64_t)uploads maxUploadFileSizeMB:(int64_t)b maxUploadQuotaMB:(int64_t)mB;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLEEDUploadServiceConfig

- (CLEEDUploadServiceConfig)initWithNumInflightUploads:(int64_t)uploads maxUploadFileSizeMB:(int64_t)b maxUploadQuotaMB:(int64_t)mB
{
  v30 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v9 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v23 = "[CLEEDUploadServiceConfig initWithNumInflightUploads:maxUploadFileSizeMB:maxUploadQuotaMB:]";
    v24 = 2050;
    mBCopy = mB;
    v26 = 2050;
    bCopy = b;
    v28 = 2050;
    uploadsCopy = uploads;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "#EED2EMSFW,%{public}s[uploadQuotaMB:%{public}ld,maxFileSizeMB:%{public}ld,numInFlightUploads:%{public}ld]", buf, 0x2Au);
  }

  v10 = sub_19B87DD40();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v14 = 136446978;
    v15 = "[CLEEDUploadServiceConfig initWithNumInflightUploads:maxUploadFileSizeMB:maxUploadQuotaMB:]";
    v16 = 2050;
    mBCopy2 = mB;
    v18 = 2050;
    bCopy2 = b;
    v20 = 2050;
    uploadsCopy2 = uploads;
    v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2EMSFW,%{public}s[uploadQuotaMB:%{public}ld,maxFileSizeMB:%{public}ld,numInFlightUploads:%{public}ld]", &v14, 42);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadServiceConfig initWithNumInflightUploads:maxUploadFileSizeMB:maxUploadQuotaMB:]", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v13.receiver = self;
  v13.super_class = CLEEDUploadServiceConfig;
  result = [(CLEEDUploadServiceConfig *)&v13 init];
  if (result)
  {
    result->_maxUploadFileSizeMB = b;
    result->_maxUploadQuotaMB = mB;
    result->_numInFlightUploads = uploads;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CLEEDUploadServiceConfig;
  [(CLEEDUploadServiceConfig *)&v2 dealloc];
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_maxUploadQuotaMB(self, a2, v2, v3);
  v10 = objc_msgSend_maxUploadFileSizeMB(self, v7, v8, v9);
  v14 = objc_msgSend_numInFlightUploads(self, v11, v12, v13);
  return objc_msgSend_stringWithFormat_(v5, v15, @"[uploadQuotaMB:%ld,maxFileSizeMB:%ld,numInFlightUploads:%ld]", v16, v6, v10, v14);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInteger_forKey_(coder, a2, self->_maxUploadQuotaMB, @"maxUploadQuotaMB");
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->_maxUploadFileSizeMB, @"maxUploadFileSizeMB");
  numInFlightUploads = self->_numInFlightUploads;

  objc_msgSend_encodeInteger_forKey_(coder, v6, numInFlightUploads, @"numInFlightUploads");
}

- (CLEEDUploadServiceConfig)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = CLEEDUploadServiceConfig;
  v6 = [(CLEEDUploadServiceConfig *)&v12 init];
  if (v6)
  {
    v6->_maxUploadQuotaMB = objc_msgSend_decodeIntegerForKey_(coder, v4, @"maxUploadQuotaMB", v5);
    v6->_maxUploadFileSizeMB = objc_msgSend_decodeIntegerForKey_(coder, v7, @"maxUploadFileSizeMB", v8);
    v6->_numInFlightUploads = objc_msgSend_decodeIntegerForKey_(coder, v9, @"numInFlightUploads", v10);
  }

  return v6;
}

@end
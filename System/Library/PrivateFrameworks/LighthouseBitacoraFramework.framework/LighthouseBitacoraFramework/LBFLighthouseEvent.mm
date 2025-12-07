@interface LBFLighthouseEvent
- (BOOL)isEqual:(id)equal;
- (LBFLighthouseEvent)initWithPerformTaskStatus:(BOOL)status error:(id)error;
- (LBFLighthouseEvent)initWithPerformTrialTaskStatus:(BOOL)status error:(id)error;
- (LBFLighthouseEvent)initWithPerformTrialTaskStatus:(BOOL)status error:(id)error usePrivateUpload:(BOOL)upload;
- (LBFLighthouseEvent)initWithStop:(BOOL)stop error:(id)error;
@end

@implementation LBFLighthouseEvent

- (LBFLighthouseEvent)initWithPerformTaskStatus:(BOOL)status error:(id)error
{
  statusCopy = status;
  errorCopy = error;
  v32.receiver = self;
  v32.super_class = LBFLighthouseEvent;
  v8 = [(LBFLighthouseEvent *)&v32 init];
  if (v8)
  {
    v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v7, v9, statusCopy);
    succeeded = v8->_succeeded;
    v8->_succeeded = v10;

    if (errorCopy)
    {
      v15 = objc_msgSend_domain(errorCopy, v12, v14, v13);
      errorDomain = v8->_errorDomain;
      v8->_errorDomain = v15;

      v17 = MEMORY[0x277CCABB0];
      v21 = objc_msgSend_code(errorCopy, v18, v20, v19);
      v24 = objc_msgSend_numberWithInteger_(v17, v22, v23, v21);
    }

    else
    {
      v25 = v8->_errorDomain;
      v8->_errorDomain = 0;

      v24 = 0;
    }

    errorCode = v8->_errorCode;
    v8->_errorCode = v24;

    v29 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v27, v28, 0);
    usePrivateUpload = v8->_usePrivateUpload;
    v8->_usePrivateUpload = v29;

    v8->_eventType = 1;
  }

  return v8;
}

- (LBFLighthouseEvent)initWithPerformTrialTaskStatus:(BOOL)status error:(id)error
{
  statusCopy = status;
  errorCopy = error;
  v32.receiver = self;
  v32.super_class = LBFLighthouseEvent;
  v8 = [(LBFLighthouseEvent *)&v32 init];
  if (v8)
  {
    v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v7, v9, statusCopy);
    succeeded = v8->_succeeded;
    v8->_succeeded = v10;

    if (errorCopy)
    {
      v15 = objc_msgSend_domain(errorCopy, v12, v14, v13);
      errorDomain = v8->_errorDomain;
      v8->_errorDomain = v15;

      v17 = MEMORY[0x277CCABB0];
      v21 = objc_msgSend_code(errorCopy, v18, v20, v19);
      v24 = objc_msgSend_numberWithInteger_(v17, v22, v23, v21);
    }

    else
    {
      v25 = v8->_errorDomain;
      v8->_errorDomain = 0;

      v24 = 0;
    }

    errorCode = v8->_errorCode;
    v8->_errorCode = v24;

    v29 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v27, v28, 0);
    usePrivateUpload = v8->_usePrivateUpload;
    v8->_usePrivateUpload = v29;

    v8->_eventType = 2;
  }

  return v8;
}

- (LBFLighthouseEvent)initWithStop:(BOOL)stop error:(id)error
{
  stopCopy = stop;
  errorCopy = error;
  v32.receiver = self;
  v32.super_class = LBFLighthouseEvent;
  v8 = [(LBFLighthouseEvent *)&v32 init];
  if (v8)
  {
    v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v7, v9, stopCopy);
    succeeded = v8->_succeeded;
    v8->_succeeded = v10;

    if (errorCopy)
    {
      v15 = objc_msgSend_domain(errorCopy, v12, v14, v13);
      errorDomain = v8->_errorDomain;
      v8->_errorDomain = v15;

      v17 = MEMORY[0x277CCABB0];
      v21 = objc_msgSend_code(errorCopy, v18, v20, v19);
      v24 = objc_msgSend_numberWithInteger_(v17, v22, v23, v21);
    }

    else
    {
      v25 = v8->_errorDomain;
      v8->_errorDomain = 0;

      v24 = 0;
    }

    errorCode = v8->_errorCode;
    v8->_errorCode = v24;

    v29 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v27, v28, 0);
    usePrivateUpload = v8->_usePrivateUpload;
    v8->_usePrivateUpload = v29;

    v8->_eventType = 3;
  }

  return v8;
}

- (LBFLighthouseEvent)initWithPerformTrialTaskStatus:(BOOL)status error:(id)error usePrivateUpload:(BOOL)upload
{
  uploadCopy = upload;
  statusCopy = status;
  errorCopy = error;
  v34.receiver = self;
  v34.super_class = LBFLighthouseEvent;
  v10 = [(LBFLighthouseEvent *)&v34 init];
  if (v10)
  {
    v12 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v9, v11, statusCopy);
    succeeded = v10->_succeeded;
    v10->_succeeded = v12;

    if (errorCopy)
    {
      v17 = objc_msgSend_domain(errorCopy, v14, v16, v15);
      errorDomain = v10->_errorDomain;
      v10->_errorDomain = v17;

      v19 = MEMORY[0x277CCABB0];
      v23 = objc_msgSend_code(errorCopy, v20, v22, v21);
      v26 = objc_msgSend_numberWithInteger_(v19, v24, v25, v23);
    }

    else
    {
      v27 = v10->_errorDomain;
      v10->_errorDomain = 0;

      v26 = 0;
    }

    errorCode = v10->_errorCode;
    v10->_errorCode = v26;

    v31 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v29, v30, uploadCopy);
    usePrivateUpload = v10->_usePrivateUpload;
    v10->_usePrivateUpload = v31;

    v10->_eventType = 2;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    goto LABEL_8;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v47 = LBFLogContextEventManager;
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C558(v47);
    }

    goto LABEL_11;
  }

  v9 = objc_msgSend_succeeded(v5, v6, v8, v7);
  v13 = objc_msgSend_succeeded(self, v10, v12, v11);
  IsEqualNumberOrNil_n2 = objc_msgSend_IsEqualNumberOrNil_n2_(LBFUtils, v14, v15, v9, v13);

  if ((IsEqualNumberOrNil_n2 & 1) == 0)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C2BC();
    }

    goto LABEL_11;
  }

  v20 = objc_msgSend_errorCode(v5, v17, v19, v18);
  v24 = objc_msgSend_errorCode(self, v21, v23, v22);
  v27 = objc_msgSend_IsEqualNumberOrNil_n2_(LBFUtils, v25, v26, v20, v24);

  if ((v27 & 1) == 0)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C364();
    }

    goto LABEL_11;
  }

  v31 = objc_msgSend_errorDomain(v5, v28, v30, v29);
  v35 = objc_msgSend_errorDomain(self, v32, v34, v33);
  IsEqualStringOrNil_s2 = objc_msgSend_IsEqualStringOrNil_s2_(LBFUtils, v36, v37, v31, v35);

  if ((IsEqualStringOrNil_s2 & 1) == 0)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C40C();
    }

    goto LABEL_11;
  }

  v42 = objc_msgSend_eventType(v5, v39, v41, v40);
  if (v42 != objc_msgSend_eventType(self, v43, v45, v44))
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C4B4();
    }

LABEL_11:
    v46 = 0;
    goto LABEL_12;
  }

LABEL_8:
  v46 = 1;
LABEL_12:

  return v46;
}

@end
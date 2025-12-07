@interface LBFMLRuntimedEvent
- (BOOL)isEqual:(id)equal;
- (LBFMLRuntimedEvent)initWithScheduleStatus:(BOOL)status;
- (LBFMLRuntimedEvent)initWithTaskCompleted:(BOOL)completed error:(id)error;
- (LBFMLRuntimedEvent)initWithTaskFetched:(BOOL)fetched error:(id)error;
- (LBFMLRuntimedEvent)initWithTaskScheduled:(BOOL)scheduled error:(id)error;
@end

@implementation LBFMLRuntimedEvent

- (LBFMLRuntimedEvent)initWithTaskFetched:(BOOL)fetched error:(id)error
{
  fetchedCopy = fetched;
  errorCopy = error;
  v28.receiver = self;
  v28.super_class = LBFMLRuntimedEvent;
  v8 = [(LBFMLRuntimedEvent *)&v28 init];
  if (v8)
  {
    v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v7, v9, fetchedCopy);
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

    v8->_eventType = 2;
  }

  return v8;
}

- (LBFMLRuntimedEvent)initWithTaskScheduled:(BOOL)scheduled error:(id)error
{
  scheduledCopy = scheduled;
  errorCopy = error;
  v28.receiver = self;
  v28.super_class = LBFMLRuntimedEvent;
  v8 = [(LBFMLRuntimedEvent *)&v28 init];
  if (v8)
  {
    v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v7, v9, scheduledCopy);
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

    v8->_eventType = 3;
  }

  return v8;
}

- (LBFMLRuntimedEvent)initWithTaskCompleted:(BOOL)completed error:(id)error
{
  completedCopy = completed;
  errorCopy = error;
  v28.receiver = self;
  v28.super_class = LBFMLRuntimedEvent;
  v8 = [(LBFMLRuntimedEvent *)&v28 init];
  if (v8)
  {
    v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v7, v9, completedCopy);
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

    v8->_eventType = 4;
  }

  return v8;
}

- (LBFMLRuntimedEvent)initWithScheduleStatus:(BOOL)status
{
  statusCopy = status;
  v10.receiver = self;
  v10.super_class = LBFMLRuntimedEvent;
  v5 = [(LBFMLRuntimedEvent *)&v10 init];
  if (v5)
  {
    v7 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, v6, statusCopy);
    scheduled = v5->_scheduled;
    v5->_scheduled = v7;

    v5->_eventType = 1;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    goto LABEL_9;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v58 = LBFLogContextEventManager;
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C558(v58);
    }

    goto LABEL_12;
  }

  v9 = objc_msgSend_eventType(v5, v6, v8, v7);
  if (v9 != objc_msgSend_eventType(self, v10, v12, v11))
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C614();
    }

    goto LABEL_12;
  }

  v16 = objc_msgSend_succeeded(v5, v13, v15, v14);
  v20 = objc_msgSend_succeeded(self, v17, v19, v18);
  IsEqualNumberOrNil_n2 = objc_msgSend_IsEqualNumberOrNil_n2_(LBFUtils, v21, v22, v16, v20);

  if ((IsEqualNumberOrNil_n2 & 1) == 0)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C6B8();
    }

    goto LABEL_12;
  }

  v27 = objc_msgSend_errorCode(v5, v24, v26, v25);
  v31 = objc_msgSend_errorCode(self, v28, v30, v29);
  v34 = objc_msgSend_IsEqualNumberOrNil_n2_(LBFUtils, v32, v33, v27, v31);

  if ((v34 & 1) == 0)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C760();
    }

    goto LABEL_12;
  }

  v38 = objc_msgSend_errorDomain(v5, v35, v37, v36);
  v42 = objc_msgSend_errorDomain(self, v39, v41, v40);
  IsEqualStringOrNil_s2 = objc_msgSend_IsEqualStringOrNil_s2_(LBFUtils, v43, v44, v38, v42);

  if ((IsEqualStringOrNil_s2 & 1) == 0)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C808();
    }

    goto LABEL_12;
  }

  v49 = objc_msgSend_scheduled(v5, v46, v48, v47);
  v53 = objc_msgSend_scheduled(self, v50, v52, v51);
  v56 = objc_msgSend_IsEqualNumberOrNil_n2_(LBFUtils, v54, v55, v49, v53);

  if ((v56 & 1) == 0)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0C8B0();
    }

LABEL_12:
    v57 = 0;
    goto LABEL_13;
  }

LABEL_9:
  v57 = 1;
LABEL_13:

  return v57;
}

@end
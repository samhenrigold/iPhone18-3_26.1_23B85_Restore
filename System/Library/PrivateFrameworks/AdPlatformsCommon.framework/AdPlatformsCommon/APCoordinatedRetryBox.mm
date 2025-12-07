@interface APCoordinatedRetryBox
- (APCoordinatedRetryBox)initWithType:(int64_t)type delegate:(id)delegate;
- (APRequestCoordinatorDelegate)requestDelegate;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)diagnosticReportPayload;
@end

@implementation APCoordinatedRetryBox

- (APCoordinatedRetryBox)initWithType:(int64_t)type delegate:(id)delegate
{
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = APCoordinatedRetryBox;
  v7 = [(APCoordinatedRetryBox *)&v18 init];
  v8 = v7;
  if (v7)
  {
    v7->_requestType = type;
    objc_storeWeak(&v7->_requestDelegate, delegateCopy);
    v8->_canRetry = 1;
    v11 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v9, v10);
    requestID = v8->_requestID;
    v8->_requestID = v11;

    v15 = objc_msgSend_requesterID(delegateCopy, v13, v14);
    requesterID = v8->_requesterID;
    v8->_requesterID = v15;
  }

  return v8;
}

- (NSDictionary)diagnosticReportPayload
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = MEMORY[0x1E696AD98];
  v7 = objc_msgSend_requestType(self, v5, v6);
  v9 = objc_msgSend_numberWithInteger_(v4, v8, v7);
  objc_msgSend_setObject_forKey_(v3, v10, v9, @"kAPCoordinatedRetryBoxRequestType");

  v11 = MEMORY[0x1E696AD98];
  canRetry = objc_msgSend_canRetry(self, v12, v13);
  v16 = objc_msgSend_numberWithBool_(v11, v15, canRetry);
  objc_msgSend_setObject_forKey_(v3, v17, v16, @"kAPCoordinatedRetryBoxCanRetry");

  v20 = objc_msgSend_requestID(self, v18, v19);

  if (v20)
  {
    v23 = objc_msgSend_requestID(self, v21, v22);
    objc_msgSend_setObject_forKey_(v3, v24, v23, @"kAPCoordinatedRetryBoxRequestID");
  }

  v25 = objc_msgSend_requesterID(self, v21, v22);

  if (v25)
  {
    v28 = objc_msgSend_requesterID(self, v26, v27);
    objc_msgSend_setObject_forKey_(v3, v29, v28, @"kAPCoordinatedRetryBoxRequesterID");
  }

  v30 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF20], v26, v3);

  return v30;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (objc_opt_respondsToSelector())
  {
    v7 = objc_msgSend_requestID(self, v5, v6);
    v10 = objc_msgSend_requestID(equalCopy, v8, v9);
    isEqual = objc_msgSend_isEqual_(v7, v11, v10);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (APRequestCoordinatorDelegate)requestDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_requestDelegate);

  return WeakRetained;
}

@end
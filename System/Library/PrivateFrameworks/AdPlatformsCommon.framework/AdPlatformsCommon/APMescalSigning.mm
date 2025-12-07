@interface APMescalSigning
- (APMescalSigning)init;
- (id)signatureForData:(id)data;
- (void)dealloc;
- (void)signatureForData:(id)data completion:(id)completion;
- (void)signatureForData:(id)data waitTime:(double)time completion:(id)completion;
@end

@implementation APMescalSigning

- (APMescalSigning)init
{
  v6.receiver = self;
  v6.super_class = APMescalSigning;
  v2 = [(APMescalSigning *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(APMescalSigningRequestor);
    requesterObject = v2->_requesterObject;
    v2->_requesterObject = v3;
  }

  return v2;
}

- (void)signatureForData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  v11 = objc_msgSend_requesterObject(self, v8, v9);
  objc_msgSend_signatureForData_completion_(v11, v10, dataCopy, completionCopy);
}

- (id)signatureForData:(id)data
{
  dataCopy = data;
  v7 = objc_msgSend_requesterObject(self, v5, v6);
  v9 = objc_msgSend_signatureForData_(v7, v8, dataCopy);

  return v9;
}

- (void)signatureForData:(id)data waitTime:(double)time completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  v13 = objc_msgSend_requesterObject(self, v10, v11);
  objc_msgSend_signatureForData_waitTime_completion_(v13, v12, dataCopy, completionCopy, time);
}

- (void)dealloc
{
  v4 = objc_msgSend_requesterObject(self, a2, v2);
  objc_msgSend_finished(v4, v5, v6);

  v7.receiver = self;
  v7.super_class = APMescalSigning;
  [(APMescalSigning *)&v7 dealloc];
}

@end
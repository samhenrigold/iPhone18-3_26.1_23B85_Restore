@interface XRPassFailIssueResponder
- (BOOL)failureOccurred;
- (XRPassFailIssueResponder)initWithNextResponder:(id)responder;
- (id)failures;
- (void)handleIssue:(id)issue type:(signed __int16)type from:(id)from;
@end

@implementation XRPassFailIssueResponder

- (XRPassFailIssueResponder)initWithNextResponder:(id)responder
{
  responderCopy = responder;
  v11.receiver = self;
  v11.super_class = XRPassFailIssueResponder;
  v5 = [(XRPassFailIssueResponder *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_new();
    uniqueErrors = v5->_uniqueErrors;
    v5->_uniqueErrors = v6;

    v8 = dispatch_queue_create("com.apple.dt.pass-fail.unique-error", 0);
    uniqueErrorsQueue = v5->_uniqueErrorsQueue;
    v5->_uniqueErrorsQueue = v8;

    objc_storeWeak(&v5->_nextResponder, responderCopy);
  }

  return v5;
}

- (void)handleIssue:(id)issue type:(signed __int16)type from:(id)from
{
  typeCopy = type;
  issueCopy = issue;
  fromCopy = from;
  if (!typeCopy)
  {
    uniqueErrorsQueue = self->_uniqueErrorsQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2480950D4;
    v13[3] = &unk_278EFA4A8;
    v13[4] = self;
    v14 = issueCopy;
    dispatch_async(uniqueErrorsQueue, v13);
  }

  WeakRetained = objc_loadWeakRetained(&self->_nextResponder);
  objc_msgSend_handleIssue_type_from_(WeakRetained, v12, issueCopy, typeCopy, fromCopy);
}

- (BOOL)failureOccurred
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  uniqueErrorsQueue = self->_uniqueErrorsQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_24809518C;
  v5[3] = &unk_278EFBF60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(uniqueErrorsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)failures
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_2480952BC;
  v10 = sub_2480952CC;
  v11 = 0;
  uniqueErrorsQueue = self->_uniqueErrorsQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2480952D4;
  v5[3] = &unk_278EFBF60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(uniqueErrorsQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end
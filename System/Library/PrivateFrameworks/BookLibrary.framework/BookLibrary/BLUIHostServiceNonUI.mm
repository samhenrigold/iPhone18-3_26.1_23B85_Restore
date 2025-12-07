@interface BLUIHostServiceNonUI
- (void)handleAuthenticateRequest:(id)request withReply:(id)reply;
- (void)handleDialogRequest:(id)request withReply:(id)reply;
- (void)handleEngagementRequest:(id)request withReply:(id)reply;
@end

@implementation BLUIHostServiceNonUI

- (void)handleAuthenticateRequest:(id)request withReply:(id)reply
{
  replyCopy = reply;
  requestCopy = request;
  v7 = BLDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D0D000, v7, OS_LOG_TYPE_DEFAULT, "[UIHostServiceProxy]: use out-of-process authenticate", buf, 2u);
  }

  v8 = objc_alloc(MEMORY[0x277CEE3E8]);
  v10 = objc_msgSend_initWithRequest_(v8, v9, requestCopy);

  v13 = objc_msgSend_performAuthentication(v10, v11, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_241D17C08;
  v16[3] = &unk_278D156F0;
  v17 = replyCopy;
  v14 = replyCopy;
  objc_msgSend_addFinishBlock_(v13, v15, v16);
}

- (void)handleDialogRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v7 = BLDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D0D000, v7, OS_LOG_TYPE_DEFAULT, "[UIHostServiceProxy]: use out-of-process dialog", buf, 2u);
  }

  v8 = objc_alloc(MEMORY[0x277CEE6B0]);
  v10 = objc_msgSend_initWithRequest_(v8, v9, requestCopy);
  v13 = objc_msgSend_present(v10, v11, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_241D17DB4;
  v17[3] = &unk_278D15768;
  v18 = requestCopy;
  v19 = replyCopy;
  v14 = replyCopy;
  v15 = requestCopy;
  objc_msgSend_addFinishBlock_(v13, v16, v17);
}

- (void)handleEngagementRequest:(id)request withReply:(id)reply
{
  replyCopy = reply;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D0D000, v5, OS_LOG_TYPE_DEFAULT, "[UIHostServiceProxy]: Engagement request not supported for non-UI", buf, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CEE630]);
  v7 = BLError();
  objc_msgSend_finishWithError_(v6, v8, v7);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D1801C;
  v11[3] = &unk_278D15790;
  v12 = replyCopy;
  v9 = replyCopy;
  objc_msgSend_addFinishBlock_(v6, v10, v11);
}

@end
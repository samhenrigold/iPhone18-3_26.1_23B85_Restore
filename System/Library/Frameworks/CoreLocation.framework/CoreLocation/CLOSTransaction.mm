@interface CLOSTransaction
- (CLOSTransaction)initWithDescription:(const char *)description;
- (void)dealloc;
@end

@implementation CLOSTransaction

- (CLOSTransaction)initWithDescription:(const char *)description
{
  v22 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CLOSTransaction;
  v6 = [(CLOSTransaction *)&v13 init];
  if (v6)
  {
    v6->_description = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, description, v5);
    v6->_transaction = os_transaction_create();
    if (qword_1EAFE47B8 != -1)
    {
      dispatch_once(&qword_1EAFE47B8, &unk_1F0E6D710);
    }

    v7 = qword_1EAFE47C0;
    if (os_log_type_enabled(qword_1EAFE47C0, OS_LOG_TYPE_DEFAULT))
    {
      description = v6->_description;
      *buf = 134218242;
      p_transaction = &v6->_transaction;
      v20 = 2112;
      descriptionCopy = description;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "os_transaction created: (%p) %@", buf, 0x16u);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE47B8 != -1)
      {
        dispatch_once(&qword_1EAFE47B8, &unk_1F0E6D710);
      }

      v10 = v6->_description;
      v14 = 134218242;
      v15 = &v6->_transaction;
      v16 = 2112;
      v17 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE47C0, 0, "os_transaction created: (%p) %@", &v14, 22);
      sub_19B885924("Generic", 1, 0, 2, "[CLOSTransaction initWithDescription:]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  return v6;
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE47B8 != -1)
  {
    dispatch_once(&qword_1EAFE47B8, &unk_1F0E6D710);
  }

  v3 = qword_1EAFE47C0;
  if (os_log_type_enabled(qword_1EAFE47C0, OS_LOG_TYPE_DEFAULT))
  {
    description = self->_description;
    *buf = 134218242;
    p_transaction = &self->_transaction;
    v15 = 2112;
    v16 = description;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "os_transaction released: (%p) %@", buf, 0x16u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE47B8 != -1)
    {
      dispatch_once(&qword_1EAFE47B8, &unk_1F0E6D710);
    }

    v6 = self->_description;
    v9 = 134218242;
    v10 = &self->_transaction;
    v11 = 2112;
    v12 = v6;
    v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE47C0, 0, "os_transaction released: (%p) %@", &v9, 22);
    sub_19B885924("Generic", 1, 0, 2, "[CLOSTransaction dealloc]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  self->_transaction = 0;
  self->_description = 0;
  v8.receiver = self;
  v8.super_class = CLOSTransaction;
  [(CLOSTransaction *)&v8 dealloc];
}

@end
@interface CLEEDRequestHelper
- (CLEEDRequestHelper)initWithDelegate:(id)delegate andQueue:(id)queue;
@end

@implementation CLEEDRequestHelper

- (CLEEDRequestHelper)initWithDelegate:(id)delegate andQueue:(id)queue
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v7 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v23 = "[CLEEDRequestHelper initWithDelegate:andQueue:]";
    v24 = 2114;
    delegateCopy = delegate;
    v26 = 2114;
    queueCopy = queue;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[Delegate:%{public}@,Queue:%{public}@]", buf, 0x20u);
  }

  v8 = sub_19B87DD40();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v16 = 136446722;
    v17 = "[CLEEDRequestHelper initWithDelegate:andQueue:]";
    v18 = 2114;
    delegateCopy2 = delegate;
    v20 = 2114;
    queueCopy2 = queue;
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s[Delegate:%{public}@,Queue:%{public}@]", &v16, 32);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDRequestHelper initWithDelegate:andQueue:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v15.receiver = self;
  v15.super_class = CLEEDRequestHelper;
  v10 = [(CLEEDHelper *)&v15 initWithDelegate:delegate queue:queue];
  if (v10)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v11 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v23 = "[CLEEDRequestHelper initWithDelegate:andQueue:]";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s Object created successfully", buf, 0xCu);
    }

    v12 = sub_19B87DD40();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v16 = 136446210;
      v17 = "[CLEEDRequestHelper initWithDelegate:andQueue:]";
      v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s Object created successfully", &v16, 12);
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDRequestHelper initWithDelegate:andQueue:]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  return v10;
}

@end
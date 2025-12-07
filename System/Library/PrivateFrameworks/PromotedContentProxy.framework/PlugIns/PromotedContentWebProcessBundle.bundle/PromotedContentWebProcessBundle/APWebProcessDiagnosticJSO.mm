@interface APWebProcessDiagnosticJSO
- (APWebProcessDiagnosticJSO)init;
- (APWebProcessDiagnosticJSODelegate)delegate;
- (id)reportStatusOfTemplate:(id)template status:(id)status;
@end

@implementation APWebProcessDiagnosticJSO

- (APWebProcessDiagnosticJSO)init
{
  v3.receiver = self;
  v3.super_class = APWebProcessDiagnosticJSO;
  result = [(APWebProcessDiagnosticJSO *)&v3 init];
  if (result)
  {
    result->_requestCount = 0;
  }

  return result;
}

- (id)reportStatusOfTemplate:(id)template status:(id)status
{
  templateCopy = template;
  statusCopy = status;
  v8 = [NSMutableString stringWithFormat:@"Max report limit is reached. Aborted."];
  requestCount = [(APWebProcessDiagnosticJSO *)self requestCount];
  if (requestCount == 10)
  {
    v10 = sub_2E2C(requestCount);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_6D94(self);
    }

    [(APWebProcessDiagnosticJSO *)self setRequestCount:([(APWebProcessDiagnosticJSO *)self requestCount]+ 1)];
  }

  else
  {
    if (requestCount < 0xB)
    {
      if ([templateCopy length] >= 0x33)
      {
        v12 = [NSMutableString stringWithFormat:@"reportStatusOfTemplate must be called with a name under %d characters limit. Aborted.", 50];

        v14 = sub_2E2C(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_6D94(self);
        }

        v15 = v12;
        goto LABEL_23;
      }

      if ([statusCopy length] < 0x1F5)
      {
        v17 = v8;
      }

      else
      {
        v16 = [statusCopy substringToIndex:500];

        v17 = [NSMutableString stringWithFormat:@"Status is truncated to 500 characters."];

        v19 = sub_2E2C(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138478083;
          v27 = objc_opt_class();
          v28 = 2114;
          v29 = v17;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "[%{private}@] %{public}@", buf, 0x16u);
        }

        statusCopy = v16;
      }

      delegate = [(APWebProcessDiagnosticJSO *)self delegate];
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        delegate2 = [(APWebProcessDiagnosticJSO *)self delegate];
        [delegate2 webProcessDiagnosticJSOStatusReported:templateCopy status:statusCopy];

        [(APWebProcessDiagnosticJSO *)self setRequestCount:([(APWebProcessDiagnosticJSO *)self requestCount]+ 1)];
        v23 = 0;
        goto LABEL_24;
      }

      v8 = [NSMutableString stringWithFormat:@"Delegate is not responding. Aborted."];

      v11 = sub_2E2C(v24);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_6D94(self);
      }
    }

    else
    {
      v11 = sub_2E2C(requestCount);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138478083;
        v27 = objc_opt_class();
        v28 = 2114;
        v29 = v8;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "[%{private}@] %{public}@", buf, 0x16u);
      }
    }
  }

  v15 = v8;
LABEL_23:
  v17 = v15;
  v23 = v15;
LABEL_24:

  return v23;
}

- (APWebProcessDiagnosticJSODelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
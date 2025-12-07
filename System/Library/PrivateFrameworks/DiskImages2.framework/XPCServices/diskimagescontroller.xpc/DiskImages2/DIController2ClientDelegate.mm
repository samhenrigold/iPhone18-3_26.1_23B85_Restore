@interface DIController2ClientDelegate
- (void)attachCompletedWithHandle:(id)handle reply:(id)reply;
@end

@implementation DIController2ClientDelegate

- (void)attachCompletedWithHandle:(id)handle reply:(id)reply
{
  handleCopy = handle;
  replyCopy = reply;
  v8 = *__error();
  v9 = sub_1000E044C();
  if (v9)
  {
    v20 = 0;
    v11 = sub_1000E03D8(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    *buf = 68158210;
    v22 = 63;
    v23 = 2080;
    v24 = "[DIController2ClientDelegate attachCompletedWithHandle:reply:]";
    v25 = 2114;
    v26 = handleCopy;
    v13 = _os_log_send_and_compose_impl(v12, &v20, 0, 0, &_mh_execute_header, v11, 0, "%.*s: Received: %{public}@", buf, 28);

    if (v13)
    {
      fprintf(__stderrp, "%s\n", v13);
      free(v13);
    }
  }

  else
  {
    v14 = sub_1000E03D8(v9, v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v22 = 63;
      v23 = 2080;
      v24 = "[DIController2ClientDelegate attachCompletedWithHandle:reply:]";
      v25 = 2114;
      v26 = handleCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%.*s: Received: %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v8;
  xpcEndpoint = [handleCopy xpcEndpoint];

  if (xpcEndpoint)
  {
    v19 = 0;
    v16 = [handleCopy addToRefCountWithError:&v19];
    v17 = v19;
    v18 = v17;
    if ((v16 & 1) == 0)
    {
      replyCopy[2](replyCopy, v17);

      goto LABEL_15;
    }
  }

  [(DIController2ClientDelegate *)self setDeviceHandle:handleCopy];
  replyCopy[2](replyCopy, 0);
LABEL_15:
}

@end
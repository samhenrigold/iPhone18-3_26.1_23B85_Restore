@interface DIVerifyManager
- (BOOL)runWithError:(id *)error;
- (DIVerifyManager)initWithParams:(id)params;
@end

@implementation DIVerifyManager

- (DIVerifyManager)initWithParams:(id)params
{
  paramsCopy = params;
  v9.receiver = self;
  v9.super_class = DIVerifyManager;
  v6 = [(DIVerifyManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_verifyParams, params);
  }

  return v7;
}

- (BOOL)runWithError:(id *)error
{
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    *__p = 0;
    v8 = sub_1000E03D8(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    *buf = 68157954;
    *&buf[4] = 32;
    v31 = 2080;
    v32 = "[DIVerifyManager runWithError:]";
    LODWORD(v25) = 18;
    v10 = _os_log_send_and_compose_impl(v9, __p, 0, 0, &_mh_execute_header, v8, 0, "%.*s: entry", buf, v25);

    if (v10)
    {
      fprintf(__stderrp, "%s\n", v10);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8(v6, v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = 32;
      v31 = 2080;
      v32 = "[DIVerifyManager runWithError:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%.*s: entry", buf, 0x12u);
    }
  }

  *__error() = v5;
  verifyParams = [(DIVerifyManager *)self verifyParams];
  diskImageParamsXPC = [verifyParams diskImageParamsXPC];
  verifyParams2 = [(DIVerifyManager *)self verifyParams];
  shadowChain = [verifyParams2 shadowChain];
  [shadowChain shouldValidate];
  if (diskImageParamsXPC)
  {
    objc_msgSend_createDiskImageWithCache_shadowValidation_(diskImageParamsXPC);
  }

  else
  {
    v27 = 0;
  }

  v29 = 15;
  strcpy(__p, "DI Verify Queue");
  sub_100046794(buf, __p, 0);
  if (v29 < 0)
  {
    operator delete(*__p);
  }

  v16 = (*(*v27 + 64))(v27, buf, 1);
  if (v16)
  {
    v17 = *__error();
    v18 = sub_1000E044C();
    if (v18)
    {
      v26 = 0;
      v20 = sub_1000E03D8(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      *__p = 0x2004100202;
      *&__p[8] = 2080;
      *&__p[10] = "[DIVerifyManager runWithError:]";
      LODWORD(v25) = 18;
      v22 = _os_log_send_and_compose_impl(v21, &v26, 0, 0, &_mh_execute_header, v20, 0, "%.*s: Verify passed", __p, v25);

      if (v22)
      {
        fprintf(__stderrp, "%s\n", v22);
        free(v22);
      }
    }

    else
    {
      v20 = sub_1000E03D8(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0x2004100202;
        *&__p[8] = 2080;
        *&__p[10] = "[DIVerifyManager runWithError:]";
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%.*s: Verify passed", __p, 0x12u);
      }
    }

    *__error() = v17;
  }

  else
  {
    LOBYTE(v20) = [DIError failWithEnumValue:152 description:@"Disk image verification failed" error:error];
  }

  *__p = &v34;
  sub_10000E990(__p);
  if (v33 < 0)
  {
    operator delete(*buf);
  }

  v23 = v27;
  v27 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  return (v16 | v20) & 1;
}

@end
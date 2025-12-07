@interface UMSecurityProvider
- (BOOL)deleteKeychainItemsForPersonaWithUUID:(id)d error:(id *)error;
@end

@implementation UMSecurityProvider

- (BOOL)deleteKeychainItemsForPersonaWithUUID:(id)d error:(id *)error
{
  dCopy = d;
  if (qword_1000EB4E8 != -1)
  {
    sub_100098924();
  }

  v6 = qword_1000EB4E0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v20 = 0;
    v7 = sub_1000011A8(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      v19 = 0;
      v9 = _os_log_send_and_compose_impl(v8, &v20, 0, 0, &_mh_execute_header, v6, 2, "Calling _SecKeychainDeleteMultiUser, not waiting for completion..", &v19, 2);
      v10 = v9;
      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  v11 = dCopy;
  _SecKeychainDeleteMultiUser();
  if (qword_1000EB4E8 != -1)
  {
    sub_100098938();
  }

  v12 = qword_1000EB4E0;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v20 = 0;
    v13 = sub_1000011A8(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      v19 = 0;
      LODWORD(v18) = 2;
      v15 = _os_log_send_and_compose_impl(v14, &v20, 0, 0, &_mh_execute_header, v12, 2, "Waiting for _SecKeychainDeleteMultiUser complete", &v19, v18);
      v16 = v15;
      if (v15)
      {
        sub_100002A8C(v15);
      }
    }

    else
    {
      v16 = 0;
    }

    free(v16);
  }

  if (error)
  {
    *error = 0;
  }

  return 1;
}

@end
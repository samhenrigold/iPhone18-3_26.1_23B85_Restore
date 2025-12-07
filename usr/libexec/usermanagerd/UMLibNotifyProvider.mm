@interface UMLibNotifyProvider
- (BOOL)notificationHasPostedForToken:(int)token error:(id *)error;
- (BOOL)post:(id)post;
- (BOOL)setState:(unint64_t)state forToken:(int)token;
- (int)registerCheck:(id)check;
- (int)registerPlain:(id)plain;
- (unint64_t)stateForToken:(int)token error:(id *)error;
@end

@implementation UMLibNotifyProvider

- (BOOL)post:(id)post
{
  postCopy = post;
  v4 = notify_post([postCopy UTF8String]);
  if (v4)
  {
    if (qword_1000EB2B0 != -1)
    {
      sub_100088DF8();
    }

    v5 = qword_1000EB2A8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v6 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v14 = 138543618;
        v15 = postCopy;
        v16 = 1024;
        v17 = v4;
        v8 = _os_log_send_and_compose_impl(v7, &v13, 0, 0, &_mh_execute_header, v5, 16, "notify_post(%{public}@) failed: %d", &v14, 18);
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (qword_1000EB2B0 != -1)
    {
      sub_100088DF8();
    }

    v5 = qword_1000EB2A8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v13 = 0;
      v9 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v14 = 138543362;
        v15 = postCopy;
        v8 = _os_log_send_and_compose_impl(v10, &v13, 0, 0, &_mh_execute_header, v5, 2, "notify_post(%{public}@)", &v14, 12);
LABEL_18:
        v11 = v8;
        if (v8)
        {
          sub_100002A8C(v8);
        }

        goto LABEL_21;
      }

LABEL_20:
      v11 = 0;
LABEL_21:
      free(v11);
    }
  }

  return v4 == 0;
}

- (int)registerPlain:(id)plain
{
  plainCopy = plain;
  v19 = -1;
  [plainCopy UTF8String];
  v4 = notify_register_plain();
  if (v4)
  {
    v5 = v4;
    if (qword_1000EB2B0 != -1)
    {
      sub_100088E0C();
    }

    v6 = qword_1000EB2A8;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v18 = 0;
      v7 = sub_1000011A8(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        v20 = 138543618;
        v21 = plainCopy;
        v22 = 1024;
        v23 = v5;
        v9 = _os_log_send_and_compose_impl(v8, &v18, 0, 0, &_mh_execute_header, v6, 16, "notify_register_plain(%{public}@) failed: %d", &v20, 18);
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

    v16 = -1;
  }

  else
  {
    if (qword_1000EB2B0 != -1)
    {
      sub_100088E0C();
    }

    v11 = qword_1000EB2A8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v18 = 0;
      v12 = sub_1000011A8(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v20 = 138543618;
        v21 = plainCopy;
        v22 = 1024;
        v23 = v19;
        v14 = _os_log_send_and_compose_impl(v13, &v18, 0, 0, &_mh_execute_header, v11, 2, "notify_register_plain(%{public}@) -> %d", &v20, 18);
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    v16 = v19;
  }

  return v16;
}

- (int)registerCheck:(id)check
{
  checkCopy = check;
  out_token = -1;
  v4 = notify_register_check([checkCopy UTF8String], &out_token);
  if (v4)
  {
    v5 = v4;
    if (qword_1000EB2B0 != -1)
    {
      sub_100088E0C();
    }

    v6 = qword_1000EB2A8;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v18 = 0;
      v7 = sub_1000011A8(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        v20 = 138543618;
        v21 = checkCopy;
        v22 = 1024;
        v23 = v5;
        v9 = _os_log_send_and_compose_impl(v8, &v18, 0, 0, &_mh_execute_header, v6, 16, "notify_register_check(%{public}@) failed: %d", &v20, 18);
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

    v16 = -1;
  }

  else
  {
    if (qword_1000EB2B0 != -1)
    {
      sub_100088E0C();
    }

    v11 = qword_1000EB2A8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v18 = 0;
      v12 = sub_1000011A8(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v20 = 138543618;
        v21 = checkCopy;
        v22 = 1024;
        v23 = out_token;
        v14 = _os_log_send_and_compose_impl(v13, &v18, 0, 0, &_mh_execute_header, v11, 2, "notify_register_check(%{public}@) -> %d", &v20, 18);
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    v16 = out_token;
  }

  return v16;
}

- (BOOL)notificationHasPostedForToken:(int)token error:(id *)error
{
  *error = 0;
  check = 0;
  v6 = notify_check(token, &check);
  if (v6)
  {
    v7 = v6;
    if (qword_1000EB2B0 != -1)
    {
      sub_100088E0C();
    }

    v8 = qword_1000EB2A8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v21 = 0;
      v9 = sub_1000011A8(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v23 = 67109376;
        tokenCopy2 = token;
        v25 = 1024;
        v26 = v7;
        v11 = _os_log_send_and_compose_impl(v10, &v21, 0, 0, &_mh_execute_header, v8, 16, "notify_check(%d) failed: %d", &v23, 14);
        v12 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }

    v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
    v19 = v18;
    result = 0;
    *error = v18;
  }

  else
  {
    if (qword_1000EB2B0 != -1)
    {
      sub_100088E0C();
    }

    v13 = qword_1000EB2A8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v21 = 0;
      v14 = sub_1000011A8(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v23 = 67109376;
        tokenCopy2 = token;
        v25 = 1024;
        v26 = check;
        v16 = _os_log_send_and_compose_impl(v15, &v21, 0, 0, &_mh_execute_header, v13, 2, "notify_check(%d) -> %d", &v23, 14);
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    return check == 1;
  }

  return result;
}

- (BOOL)setState:(unint64_t)state forToken:(int)token
{
  v6 = notify_set_state(token, state);
  if (v6)
  {
    if (qword_1000EB2B0 != -1)
    {
      sub_100088DF8();
    }

    v7 = qword_1000EB2A8;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = 0;
      v8 = sub_1000011A8(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v16 = 67109632;
        tokenCopy2 = token;
        v18 = 2048;
        stateCopy2 = state;
        v20 = 1024;
        v21 = v6;
        v10 = _os_log_send_and_compose_impl(v9, &v15, 0, 0, &_mh_execute_header, v7, 16, "notify_set_state(%d, %llu) failed: %d", &v16, 24);
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (qword_1000EB2B0 != -1)
    {
      sub_100088DF8();
    }

    v7 = qword_1000EB2A8;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v15 = 0;
      v11 = sub_1000011A8(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v16 = 67109376;
        tokenCopy2 = token;
        v18 = 2048;
        stateCopy2 = state;
        v10 = _os_log_send_and_compose_impl(v12, &v15, 0, 0, &_mh_execute_header, v7, 2, "notify_set_state(%d, %llu)", &v16, 18);
LABEL_18:
        v13 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }

        goto LABEL_21;
      }

LABEL_20:
      v13 = 0;
LABEL_21:
      free(v13);
    }
  }

  return v6 == 0;
}

- (unint64_t)stateForToken:(int)token error:(id *)error
{
  *error = 0;
  state64 = 0;
  state = notify_get_state(token, &state64);
  if (state)
  {
    v6 = state;
    if (qword_1000EB2B0 != -1)
    {
      sub_100088E0C();
    }

    v7 = qword_1000EB2A8;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v19 = 0;
      v8 = sub_1000011A8(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v21 = 67109376;
        tokenCopy2 = token;
        v23 = 1024;
        LODWORD(v24) = v6;
        v10 = _os_log_send_and_compose_impl(v9, &v19, 0, 0, &_mh_execute_header, v7, 16, "notify_get_state(%d) failed: %d", &v21, 14);
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    return 0;
  }

  else
  {
    if (qword_1000EB2B0 != -1)
    {
      sub_100088E0C();
    }

    v12 = qword_1000EB2A8;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v19 = 0;
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
        v21 = 67109376;
        tokenCopy2 = token;
        v23 = 2048;
        v24 = state64;
        LODWORD(v18) = 18;
        v15 = _os_log_send_and_compose_impl(v14, &v19, 0, 0, &_mh_execute_header, v12, 2, "notify_get_state(%d) -> %llu", &v21, v18);
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

    return state64;
  }
}

@end
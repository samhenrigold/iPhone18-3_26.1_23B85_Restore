@interface UMProcessProvider
- (BOOL)terminatePID:(int)d withReasonNamespace:(unsigned int)namespace reasonCode:(unint64_t)code reasonString:(id)string error:(id *)error;
- (id)pathForPID:(int)d error:(id *)error;
- (id)pidsUsingVolumeAtPath:(id)path error:(id *)error;
- (int)pidForLaunchdJobWithLabel:(id)label forUser:(unsigned int)user error:(id *)error;
- (unint64_t)uniquePIDForPID:(int)d error:(id *)error;
@end

@implementation UMProcessProvider

- (id)pathForPID:(int)d error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  bzero(buffer, 0x401uLL);
  if (proc_pidpath(d, buffer, 0x400u))
  {
    v6 = [NSString stringWithUTF8String:buffer];
  }

  else
  {
    v7 = *__error();
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
    }

    if (qword_1000EB478 != -1)
    {
      sub_1000985D4();
    }

    v8 = qword_1000EB470;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 0;
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
        v15[0] = 67109376;
        v15[1] = d;
        v16 = 1024;
        v17 = v7;
        v11 = _os_log_send_and_compose_impl(v10, &v14, 0, 0, &_mh_execute_header, v8, 16, "proc_pidpath(%d) failed: %{darwin.errno}d", v15, 14);
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

    v6 = 0;
  }

  return v6;
}

- (unint64_t)uniquePIDForPID:(int)d error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  buffer = 0u;
  v6 = proc_pidinfo(d, 17, 0, &buffer, 56);
  if (v6 < 0)
  {
    v9 = *__error();
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];
    }

    if (qword_1000EB478 != -1)
    {
      sub_1000985D4();
    }

    v10 = qword_1000EB470;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20 = 0;
      v11 = sub_1000011A8(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v21 = 67109376;
        dCopy2 = d;
        v23 = 1024;
        v24 = v9;
        v13 = _os_log_send_and_compose_impl(v12, &v20, 0, 0, &_mh_execute_header, v10, 16, "proc_pidinfo(%d, PROC_PIDUNIQIDENTIFIERINFO) failed: %{darwin.errno}d", &v21, 14);
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }
  }

  else
  {
    v7 = v6;
    if (v6 == 56)
    {
      return v26;
    }

    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
    }

    if (qword_1000EB478 != -1)
    {
      sub_1000985D4();
    }

    v15 = qword_1000EB470;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = 0;
      v16 = sub_1000011A8(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v21 = 67109376;
        dCopy2 = d;
        v23 = 1024;
        v24 = v7;
        v18 = _os_log_send_and_compose_impl(v17, &v20, 0, 0, &_mh_execute_header, v15, 16, "proc_pidinfo(%d, PROC_PIDUNIQIDENTIFIERINFO) returned unexpected size: %d", &v21, 14);
        v19 = v18;
        if (v18)
        {
          sub_100002A8C(v18);
        }
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }
  }

  return 0;
}

- (id)pidsUsingVolumeAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  v6 = pathCopy;
  if (error)
  {
    *error = 0;
  }

  v7 = proc_listpidspath(1u, 0, [pathCopy UTF8String], 3u, 0, 0);
  if (v7 < 0)
  {
    v17 = *__error();
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v17 userInfo:0];
    }

    if (qword_1000EB478 != -1)
    {
      sub_1000985FC();
    }

    v18 = qword_1000EB470;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v30 = 0;
      v19 = sub_1000011A8(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v31 = 138543618;
        v32 = v6;
        v33 = 1024;
        v34 = v17;
        v21 = _os_log_send_and_compose_impl(v20, &v30, 0, 0, &_mh_execute_header, v18, 16, "proc_listpidspath(%{public}@, NULL) failed: %{darwin.errno}d", &v31, 18);
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    v13 = 0;
  }

  else
  {
    v8 = v7 + 200;
    v9 = malloc_type_malloc(v7 + 200, 0x1797894BuLL);
    v10 = proc_listpidspath(1u, 0, [v6 UTF8String], 3u, v9, v8);
    v11 = v10;
    if ((v10 & 0x80000000) != 0)
    {
      v23 = *__error();
      if (error)
      {
        *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v23 userInfo:0];
      }

      if (qword_1000EB478 != -1)
      {
        sub_1000985FC();
      }

      v24 = qword_1000EB470;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v30 = 0;
        v25 = sub_1000011A8(0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v26 = v25;
        }

        else
        {
          v26 = v25 & 0xFFFFFFFE;
        }

        if (v26)
        {
          v31 = 138543618;
          v32 = v6;
          v33 = 1024;
          v34 = v23;
          v27 = _os_log_send_and_compose_impl(v26, &v30, 0, 0, &_mh_execute_header, v24, 16, "proc_listpidspath(%{public}@) failed: %{darwin.errno}d", &v31, 18);
          v28 = v27;
          if (v27)
          {
            sub_100002A8C(v27);
          }
        }

        else
        {
          v28 = 0;
        }

        free(v28);
      }

      v13 = 0;
    }

    else
    {
      v12 = v10 >> 2;
      v13 = [NSMutableArray arrayWithCapacity:v12];
      if (v11 >= 4)
      {
        v14 = v9;
        do
        {
          v15 = *v14++;
          v16 = [NSNumber numberWithInt:v15];
          [v13 addObject:v16];

          --v12;
        }

        while (v12);
      }
    }

    free(v9);
  }

  return v13;
}

- (int)pidForLaunchdJobWithLabel:(id)label forUser:(unsigned int)user error:(id *)error
{
  v6 = *&user;
  labelCopy = label;
  if (objc_opt_class())
  {
    if (error)
    {
      *error = 0;
    }

    v8 = [OSLaunchdDomain domainForUser:v6];
    v9 = [OSLaunchdJob copyJobWithLabel:labelCopy domain:v8];
    if (!v9)
    {
      if (qword_1000EB478 != -1)
      {
        sub_1000985FC();
      }

      v18 = qword_1000EB470;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v32 = 0;
        v19 = sub_1000011A8(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          *v42 = 138543618;
          *&v42[4] = labelCopy;
          *&v42[12] = 1024;
          *&v42[14] = v6;
          v21 = _os_log_send_and_compose_impl(v20, &v32, 0, 0, &_mh_execute_header, v18, 16, "Unable to find launchd job with label %{public}@ in domain for user %u.", v42, 18);
          v22 = v21;
          if (v21)
          {
            sub_100002A8C(v21);
          }
        }

        else
        {
          v22 = 0;
        }

        free(v22);
      }

      if (error)
      {
        [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
        *error = v12 = 0;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_51;
    }

    *v42 = 0;
    *&v42[8] = v42;
    *&v42[16] = 0x3032000000;
    v43 = sub_100075C4C;
    v44 = sub_100075C5C;
    v45 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 8;
    v10 = dispatch_queue_create("com.apple.usermanagerd.launchjobmonitor", 0);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100075C64;
    v31[3] = &unk_1000DDD98;
    v31[4] = v42;
    v31[5] = &v32;
    [v9 monitorOnQueue:v10 withHandler:v31];
    [v9 cancelMonitor];
    v11 = *(*&v42[8] + 40);
    if (v11)
    {
      if ([v11 state] == 2)
      {
        v12 = [*(*&v42[8] + 40) pid];
LABEL_50:

        _Block_object_dispose(&v32, 8);
        _Block_object_dispose(v42, 8);

LABEL_51:
        goto LABEL_52;
      }
    }

    else
    {
      if (qword_1000EB478 != -1)
      {
        sub_1000985D4();
      }

      v23 = qword_1000EB470;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v30 = 0;
        v24 = sub_1000011A8(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 0xFFFFFFFE;
        }

        if (v25)
        {
          v26 = *(v33 + 6);
          v36 = 138543874;
          v37 = labelCopy;
          v38 = 1024;
          v39 = v6;
          v40 = 1024;
          v41 = v26;
          v27 = _os_log_send_and_compose_impl(v25, &v30, 0, 0, &_mh_execute_header, v23, 16, "Failed to get launchd job info for %{public}@ in domain for user %u:%{darwin.errno}d", &v36, 24);
          v28 = v27;
          if (v27)
          {
            sub_100002A8C(v27);
          }
        }

        else
        {
          v28 = 0;
        }

        free(v28);
      }

      if (error)
      {
        [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
        *error = v12 = 0;
        goto LABEL_50;
      }
    }

    v12 = 0;
    goto LABEL_50;
  }

  if (qword_1000EB478 != -1)
  {
    sub_1000985FC();
  }

  v13 = qword_1000EB470;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v32 = 0;
    v14 = sub_1000011A8(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      *v42 = 138543362;
      *&v42[4] = labelCopy;
      v16 = _os_log_send_and_compose_impl(v15, &v32, 0, 0, &_mh_execute_header, v13, 16, "Unable to find pid for launchd job %{public}@; OSLaunchJob is not available.", v42, 12);
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

  if (error)
  {
    [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_52:

  return v12;
}

- (BOOL)terminatePID:(int)d withReasonNamespace:(unsigned int)namespace reasonCode:(unint64_t)code reasonString:(id)string error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  [string UTF8String];
  v11 = terminate_with_reason();
  if (v11)
  {
    v12 = *__error();
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v12 userInfo:0];
    }

    if (qword_1000EB478 != -1)
    {
      sub_1000985FC();
    }

    v13 = qword_1000EB470;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v20 = 0;
      v14 = sub_1000011A8(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        *buf = 67109888;
        dCopy2 = d;
        v23 = 1024;
        namespaceCopy = namespace;
        v25 = 2048;
        codeCopy = code;
        v27 = 1024;
        v28 = v12;
        v16 = _os_log_send_and_compose_impl(v15, &v20, 0, 0, &_mh_execute_header, v13, 16, "terminate_with_reason(%d, %u, %llu) failed: %{darwin.errno}d", buf, 30);
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
  }

  else
  {
    if (qword_1000EB478 != -1)
    {
      sub_1000985FC();
    }

    v18 = qword_1000EB470;
    if (os_log_type_enabled(qword_1000EB470, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      dCopy2 = d;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Terminated process %d", buf, 8u);
    }
  }

  return v11 == 0;
}

@end
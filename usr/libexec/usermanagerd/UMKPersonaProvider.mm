@interface UMKPersonaProvider
- (BOOL)allocatePersonaWithInfo:(id)info andPath:(id)path error:(id *)error;
- (BOOL)deallocatePersonaWithID:(unsigned int)d error:(id *)error;
- (id)infoForPersonaWithID:(unsigned int)d error:(id *)error;
- (id)infoForProcessWithPID:(int)d error:(id *)error;
@end

@implementation UMKPersonaProvider

- (BOOL)allocatePersonaWithInfo:(id)info andPath:(id)path error:(id *)error
{
  infoCopy = info;
  pathCopy = path;
  if (error)
  {
    *error = 0;
  }

  v49 = 0;
  memset(v62, 0, 348);
  v9 = sub_100076214(infoCopy, v62);
  if (!LODWORD(v62[0]))
  {
    if (qword_1000EB488 != -1)
    {
      sub_100098624();
    }

    v15 = qword_1000EB480;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v51 = 0;
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
        *v50 = 0;
        v18 = _os_log_send_and_compose_impl(v17, &v51, 0, 0, &_mh_execute_header, v15, 16, "Failed to allocate kernel persona: Failed to create kpersona_info struct from UMKPersonaInfo object", v50, 2);
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

    if (error)
    {
      v33 = NSPOSIXErrorDomain;
      v34 = 22;
LABEL_62:
      [NSError errorWithDomain:v33 code:v34 userInfo:0];
      *error = v35 = 0;
      goto LABEL_83;
    }

LABEL_67:
    v35 = 0;
    goto LABEL_83;
  }

  if (pathCopy)
  {
    if (([pathCopy getCString:&v51 maxLength:1024 encoding:{4, v9}] & 1) == 0)
    {
      if (qword_1000EB488 != -1)
      {
        sub_100098624();
      }

      v23 = qword_1000EB480;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v48 = 0;
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
          *v50 = 138543362;
          *&v50[4] = pathCopy;
          v26 = _os_log_send_and_compose_impl(v25, &v48, 0, 0, &_mh_execute_header, v23, 16, "Failed to allocate kernel persona: Failed to convert path to C string: %{public}@", v50, 12);
          v27 = v26;
          if (v26)
          {
            sub_100002A8C(v26);
          }
        }

        else
        {
          v27 = 0;
        }

        free(v27);
      }

      if (error)
      {
        *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      }

      goto LABEL_67;
    }

    if (kpersona_palloc())
    {
      v10 = *__error();
      if (qword_1000EB488 != -1)
      {
        sub_100098624();
      }

      v11 = qword_1000EB480;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v50 = 0;
        v12 = sub_1000011A8(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v13 = v12;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFE;
        }

        if (v13)
        {
          LODWORD(v51) = 67110402;
          HIDWORD(v51) = DWORD1(v62[0]);
          v52 = 1024;
          v53 = DWORD2(v62[0]);
          v54 = 2082;
          v55 = &v62[5] + 8;
          v56 = 1024;
          v57 = DWORD2(v62[21]);
          v58 = 2114;
          v59 = pathCopy;
          v60 = 1024;
          v61 = v10;
          v14 = _os_log_send_and_compose_impl(v13, v50, 0, 0, &_mh_execute_header, v11, 16, "Failed to allocate kernel persona: kpersona_palloc(ID: %U, Type: %u, Name: %{public}s, UID %u, Path: %{public}@) failed: %{darwin.errno}d", &v51, 46);
          goto LABEL_33;
        }

        goto LABEL_58;
      }

      goto LABEL_60;
    }
  }

  else if (kpersona_alloc())
  {
    v10 = *__error();
    if (qword_1000EB488 != -1)
    {
      sub_100098624();
    }

    v11 = qword_1000EB480;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v50 = 0;
      v20 = sub_1000011A8(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (v21)
      {
        LODWORD(v51) = 67110146;
        HIDWORD(v51) = DWORD1(v62[0]);
        v52 = 1024;
        v53 = DWORD2(v62[0]);
        v54 = 2082;
        v55 = &v62[5] + 8;
        v56 = 1024;
        v57 = DWORD2(v62[21]);
        v58 = 1024;
        LODWORD(v59) = v10;
        v14 = _os_log_send_and_compose_impl(v21, v50, 0, 0, &_mh_execute_header, v11, 16, "Failed to allocate kernel persona: kpersona_alloc(ID: %U, Type: %u, Name: %{public}s, UID %u) failed: %{darwin.errno}d", &v51, 36);
LABEL_33:
        v22 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }

        goto LABEL_59;
      }

LABEL_58:
      v22 = 0;
LABEL_59:
      free(v22);
    }

LABEL_60:

    if (error)
    {
      v33 = NSPOSIXErrorDomain;
      v34 = v10;
      goto LABEL_62;
    }

    goto LABEL_67;
  }

  if (v49 != sub_100001440(infoCopy))
  {
    if (qword_1000EB488 != -1)
    {
      sub_100098624();
    }

    v28 = qword_1000EB480;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *v50 = 0;
      LODWORD(v29) = sub_1000011A8(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v29;
      }

      else
      {
        v29 = v29 & 0xFFFFFFFE;
      }

      if (v29)
      {
        v30 = v28;
        v31 = sub_100001440(infoCopy);
        LODWORD(v51) = 67109376;
        HIDWORD(v51) = v31;
        v52 = 1024;
        v53 = v49;
        v32 = _os_log_send_and_compose_impl(v29, v50, 0, 0, &_mh_execute_header, v30, 0, "While allocating kernel persona: Persona ID changed during allocation: %u -> %u", &v51, 14);

        if (v32)
        {
          sub_100002A8C(v32);
        }
      }

      else
      {
        v32 = 0;
      }

      free(v32);
    }

    sub_10008BDA4(infoCopy, v49);
  }

  if (qword_1000EB488 != -1)
  {
    sub_100098624();
  }

  v36 = qword_1000EB480;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *v50 = 0;
    v37 = sub_1000011A8(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v37;
    }

    else
    {
      v38 = v37 & 0xFFFFFFFE;
    }

    if (v38)
    {
      v39 = v36;
      v40 = sub_100001440(infoCopy);
      v41 = sub_100001434(infoCopy);
      v43 = sub_100096040(infoCopy, v42);
      v44 = sub_100001660(infoCopy);
      LODWORD(v51) = 67109890;
      HIDWORD(v51) = v40;
      v52 = 1024;
      v53 = v41;
      v54 = 2114;
      v55 = v43;
      v56 = 1024;
      v57 = v44;
      LODWORD(v47) = 30;
      v45 = _os_log_send_and_compose_impl(v38, v50, 0, 0, &_mh_execute_header, v39, 0, "Allocated kernel persona with ID: %u, Type: %d, Name: %{public}@, UID: %u", &v51, v47);

      if (v45)
      {
        sub_100002A8C(v45);
      }
    }

    else
    {
      v45 = 0;
    }

    free(v45);
  }

  v35 = 1;
LABEL_83:

  return v35;
}

- (BOOL)deallocatePersonaWithID:(unsigned int)d error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  v6 = kpersona_dealloc();
  if (v6)
  {
    v7 = *__error();
    if (qword_1000EB488 != -1)
    {
      sub_100098610();
    }

    v8 = qword_1000EB480;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v24 = 0;
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
        LODWORD(v19) = 67109632;
        HIDWORD(v19) = d;
        v20 = 1024;
        dCopy = d;
        v22 = 1024;
        v23 = v7;
        v11 = _os_log_send_and_compose_impl(v10, &v24, 0, 0, &_mh_execute_header, v8, 16, "Failed to deallocate kernel persona %u: kpersona_delloc(%u) failed: %{darwin.errno}d", &v19, 20);
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

    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
    }
  }

  else
  {
    if (qword_1000EB488 != -1)
    {
      sub_100098610();
    }

    v13 = qword_1000EB480;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 0;
      v14 = sub_1000011A8(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        LODWORD(v24) = 67109120;
        HIDWORD(v24) = d;
        v16 = _os_log_send_and_compose_impl(v15, &v19, 0, 0, &_mh_execute_header, v13, 0, "Deallocated kernel persona with ID: %u", &v24);
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

  return v6 == 0;
}

- (id)infoForPersonaWithID:(unsigned int)d error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  memset(&__src[1], 0, 344);
  __src[0] = 2;
  if (kpersona_info())
  {
    v6 = *__error();
    if (v6 == 3)
    {
      if (qword_1000EB488 != -1)
      {
        sub_100098624();
      }

      v7 = qword_1000EB480;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_44;
      }

      v33 = 0;
      v8 = sub_1000011A8(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        LODWORD(__dst[0]) = 67109632;
        HIDWORD(__dst[0]) = d;
        LOWORD(__dst[1]) = 1024;
        *(&__dst[1] + 2) = d;
        HIWORD(__dst[1]) = 1024;
        LODWORD(__dst[2]) = 3;
        v10 = _os_log_send_and_compose_impl(v9, &v33, 0, 0, &_mh_execute_header, v7, 1, "Failed to retrieve info for kernel persona ID %u: kpersona_info(%u) failed: %{darwin.errno}d", __dst, 20, __dst[0], __dst[1], __dst[2]);
        goto LABEL_31;
      }
    }

    else
    {
      if (qword_1000EB488 != -1)
      {
        sub_100098624();
      }

      v7 = qword_1000EB480;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_44;
      }

      v33 = 0;
      v22 = sub_1000011A8(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        LODWORD(__dst[0]) = 67109632;
        HIDWORD(__dst[0]) = d;
        LOWORD(__dst[1]) = 1024;
        *(&__dst[1] + 2) = d;
        HIWORD(__dst[1]) = 1024;
        LODWORD(__dst[2]) = v6;
        v10 = _os_log_send_and_compose_impl(v23, &v33, 0, 0, &_mh_execute_header, v7, 16, "Failed to retrieve info for kernel persona ID %u: kpersona_info(%u) failed: %{darwin.errno}d", __dst, 20, __dst[0], __dst[1], __dst[2]);
LABEL_31:
        v24 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }

        goto LABEL_43;
      }
    }

    v24 = 0;
LABEL_43:
    free(v24);
LABEL_44:

    if (error)
    {
      [NSError errorWithDomain:NSPOSIXErrorDomain code:v6 userInfo:0];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_55;
  }

  memcpy(__dst, __src, 0x15CuLL);
  v11 = sub_100075FA4(UMKPersonaInfo, __dst);
  if (v11)
  {
    if (qword_1000EB488 != -1)
    {
      sub_100098624();
    }

    v12 = qword_1000EB480;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v33 = 0;
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
        v15 = v12;
        v16 = sub_100001440(v11);
        v17 = sub_100001434(v11);
        v19 = sub_100096040(v11, v18);
        v20 = sub_100001660(v11);
        LODWORD(__dst[0]) = 67109890;
        HIDWORD(__dst[0]) = v16;
        LOWORD(__dst[1]) = 1024;
        *(&__dst[1] + 2) = v17;
        HIWORD(__dst[1]) = 2114;
        __dst[2] = v19;
        LOWORD(__dst[3]) = 1024;
        *(&__dst[3] + 2) = v20;
        v21 = _os_log_send_and_compose_impl(v14, &v33, 0, 0, &_mh_execute_header, v15, 2, "Found kernel persona with ID: %u, Type: %u, Name: %{public}@, UID: %u", __dst, 30);

        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }

    v30 = v11;
  }

  else
  {
    if (qword_1000EB488 != -1)
    {
      sub_100098624();
    }

    v25 = qword_1000EB480;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __dst[0] = 0;
      v26 = sub_1000011A8(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (v27)
      {
        LODWORD(v33) = 67109120;
        HIDWORD(v33) = d;
        v28 = _os_log_send_and_compose_impl(v27, __dst, 0, 0, &_mh_execute_header, v25, 16, "Failed to retrieve info for kernel persona ID %u: Failed to parse kpersona_info struct", &v33);
        v29 = v28;
        if (v28)
        {
          sub_100002A8C(v28);
        }
      }

      else
      {
        v29 = 0;
      }

      free(v29);
    }

    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:34 userInfo:0];
    }
  }

LABEL_55:

  return v11;
}

- (id)infoForProcessWithPID:(int)d error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  memset(&__src[1], 0, 344);
  __src[0] = 2;
  if (kpersona_pidinfo())
  {
    v6 = *__error();
    if (qword_1000EB488 != -1)
    {
      sub_100098624();
    }

    v7 = qword_1000EB480;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v31 = 0;
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
        LODWORD(__dst[0]) = 67109376;
        HIDWORD(__dst[0]) = d;
        LOWORD(__dst[1]) = 1024;
        *(&__dst[1] + 2) = v6;
        v10 = _os_log_send_and_compose_impl(v9, &v31, 0, 0, &_mh_execute_header, v7, 16, "Failed to retrieve persona info for pid %u: %{darwin.errno}d", __dst, 14);
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

    if (error)
    {
      [NSError errorWithDomain:NSPOSIXErrorDomain code:v6 userInfo:0];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    memcpy(__dst, __src, 0x15CuLL);
    v12 = sub_100075FA4(UMKPersonaInfo, __dst);
    if (v12)
    {
      if (qword_1000EB488 != -1)
      {
        sub_100098624();
      }

      v13 = qword_1000EB480;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v31 = 0;
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
          v16 = v13;
          v17 = sub_100001440(v12);
          v18 = sub_100001434(v12);
          v20 = sub_100096040(v12, v19);
          v21 = sub_100001660(v12);
          LODWORD(__dst[0]) = 67110146;
          HIDWORD(__dst[0]) = d;
          LOWORD(__dst[1]) = 1024;
          *(&__dst[1] + 2) = v17;
          HIWORD(__dst[1]) = 1024;
          LODWORD(__dst[2]) = v18;
          WORD2(__dst[2]) = 2114;
          *(&__dst[2] + 6) = v20;
          HIWORD(__dst[3]) = 1024;
          LODWORD(__dst[4]) = v21;
          v22 = _os_log_send_and_compose_impl(v15, &v31, 0, 0, &_mh_execute_header, v16, 2, "Found kernel persona that is the at-spawn persona for PID: %u, ID: %u, Type: %u, Name: %{public}@, UID: %u", __dst, 36);

          if (v22)
          {
            sub_100002A8C(v22);
          }
        }

        else
        {
          v22 = 0;
        }

        free(v22);
      }

      v28 = v12;
    }

    else
    {
      if (qword_1000EB488 != -1)
      {
        sub_100098624();
      }

      v23 = qword_1000EB480;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __dst[0] = 0;
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
          LODWORD(v31) = 67109120;
          HIDWORD(v31) = d;
          v26 = _os_log_send_and_compose_impl(v25, __dst, 0, 0, &_mh_execute_header, v23, 16, "Failed to retrieve persona info for pid %u: Failed to parse kpersona_info struct", &v31);
          v27 = v26;
          if (v26)
          {
            sub_100002A8C(v26);
          }
        }

        else
        {
          v27 = 0;
        }

        free(v27);
      }

      if (error)
      {
        *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:34 userInfo:0];
      }
    }
  }

  return v12;
}

@end
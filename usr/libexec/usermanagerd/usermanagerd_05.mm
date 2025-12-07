CFStringRef sub_10004A908(void *a1, _OWORD *a2, int a3, void *a4)
{
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = a1;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = sub_100056BC8(qword_1000EB2E8, v7);
    if (v10)
    {
      v11 = v10;
      v12 = sub_100056854(qword_1000EB2E8, v9, v10);
      v13 = v12;
      if (!v12)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v43 = qword_1000EB308;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v66 = 0;
          v44 = sub_1000011A8(1);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v45 = v44;
          }

          else
          {
            v45 = v44 & 0xFFFFFFFE;
          }

          if (v45)
          {
            *v65 = 138412546;
            *&v65[4] = v9;
            *&v65[12] = 1024;
            *&v65[14] = a3;
            v46 = _os_log_send_and_compose_impl(v45, &v66, 0, 0, &_mh_execute_header, v43, 0, "Error granting sandbox extension for %@ to pid %d: No persona session found", v65, 18);
            v47 = v46;
            if (v46)
            {
              sub_100002A8C(v46);
            }
          }

          else
          {
            v47 = 0;
          }

          free(v47);
        }

        v19 = 0;
        *__error() = 2;
        goto LABEL_80;
      }

      v14 = [v12 objectForKeyedSubscript:kUMUserSessionHomeDirKey];
      if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if (&_sandbox_extension_issue_file_to_process)
        {
          [v14 UTF8String];
          v15 = a2[1];
          *v65 = *a2;
          *&v65[16] = v15;
          v16 = sandbox_extension_issue_file_to_process();
          if (v16)
          {
            v17 = v16;
            v18 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, v16, 0x8000100u, kCFAllocatorDefault);
            if (v18)
            {
              v19 = v18;
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v20 = qword_1000EB308;
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v66 = 0;
                v21 = sub_1000011A8(1);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  v22 = v21;
                }

                else
                {
                  v22 = v21 & 0xFFFFFFFE;
                }

                if (v22)
                {
                  *v65 = 138412546;
                  *&v65[4] = v9;
                  *&v65[12] = 1024;
                  *&v65[14] = a3;
                  v23 = _os_log_send_and_compose_impl(v22, &v66, 0, 0, &_mh_execute_header, v20, 0, "Granted sandbox extension for %@ to pid %d", v65, 18);
                  v24 = v23;
                  if (v23)
                  {
                    sub_100002A8C(v23);
                  }
                }

                else
                {
                  v24 = 0;
                }

                free(v24);
              }

              goto LABEL_67;
            }

            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v60 = qword_1000EB308;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v66 = 0;
              v61 = sub_1000011A8(1);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
              {
                v62 = v61;
              }

              else
              {
                v62 = v61 & 0xFFFFFFFE;
              }

              if (v62)
              {
                *v65 = 138412546;
                *&v65[4] = v9;
                *&v65[12] = 1024;
                *&v65[14] = a3;
                v63 = _os_log_send_and_compose_impl(v62, &v66, 0, 0, &_mh_execute_header, v60, 0, "Error granting sandbox extension for %@ to pid %d: Failed to create CFString wrapper around token", v65, 18);
                v64 = v63;
                if (v63)
                {
                  sub_100002A8C(v63);
                }
              }

              else
              {
                v64 = 0;
              }

              free(v64);
            }

            free(v17);
            v48 = __error();
            v19 = 0;
            v49 = 12;
          }

          else
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v55 = qword_1000EB308;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              v66 = 0;
              v56 = sub_1000011A8(1);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                v57 = v56;
              }

              else
              {
                v57 = v56 & 0xFFFFFFFE;
              }

              if (v57)
              {
                *v65 = 138412546;
                *&v65[4] = v9;
                *&v65[12] = 1024;
                *&v65[14] = a3;
                v58 = _os_log_send_and_compose_impl(v57, &v66, 0, 0, &_mh_execute_header, v55, 0, "Error granting sandbox extension for %@ to pid %d: Failed to grant sandbox extension to process", v65, 18);
                v59 = v58;
                if (v58)
                {
                  sub_100002A8C(v58);
                }
              }

              else
              {
                v59 = 0;
              }

              free(v59);
            }

            v48 = __error();
            v19 = 0;
            v49 = 9;
          }
        }

        else
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089D14();
          }

          v50 = qword_1000EB308;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v66 = 0;
            v51 = sub_1000011A8(1);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v52 = v51;
            }

            else
            {
              v52 = v51 & 0xFFFFFFFE;
            }

            if (v52)
            {
              *v65 = 138412546;
              *&v65[4] = v9;
              *&v65[12] = 1024;
              *&v65[14] = a3;
              v53 = _os_log_send_and_compose_impl(v52, &v66, 0, 0, &_mh_execute_header, v50, 0, "Error granting sandbox extension for %@ to pid %d: Failed to dlsym sandbox extension function", v65, 18);
              v54 = v53;
              if (v53)
              {
                sub_100002A8C(v53);
              }
            }

            else
            {
              v54 = 0;
            }

            free(v54);
          }

          v48 = __error();
          v19 = 0;
          v49 = 5;
        }
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v38 = qword_1000EB308;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v66 = 0;
          v39 = sub_1000011A8(1);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v40 = v39;
          }

          else
          {
            v40 = v39 & 0xFFFFFFFE;
          }

          if (v40)
          {
            *v65 = 138412546;
            *&v65[4] = v9;
            *&v65[12] = 1024;
            *&v65[14] = a3;
            v41 = _os_log_send_and_compose_impl(v40, &v66, 0, 0, &_mh_execute_header, v38, 0, "Error granting sandbox extension for %@ to pid %d: No volume path found for persona", v65, 18);
            v42 = v41;
            if (v41)
            {
              sub_100002A8C(v41);
            }
          }

          else
          {
            v42 = 0;
          }

          free(v42);
        }

        v48 = __error();
        v19 = 0;
        v49 = 2;
      }

      *v48 = v49;
LABEL_67:

LABEL_80:
      goto LABEL_32;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v33 = qword_1000EB308;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v66 = 0;
      v34 = sub_1000011A8(1);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
      }

      else
      {
        v35 = v34 & 0xFFFFFFFE;
      }

      if (v35)
      {
        *v65 = 138412546;
        *&v65[4] = v9;
        *&v65[12] = 1024;
        *&v65[14] = a3;
        v36 = _os_log_send_and_compose_impl(v35, &v66, 0, 0, &_mh_execute_header, v33, 0, "Error granting sandbox extension for %@ to pid %d: Unable to look up get array for user session", v65, 18);
        v37 = v36;
        if (v36)
        {
          sub_100002A8C(v36);
        }
      }

      else
      {
        v37 = 0;
      }

      free(v37);
    }

    v30 = __error();
    v19 = 0;
    v31 = 2;
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v25 = qword_1000EB308;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v65 = 0;
      v26 = sub_1000011A8(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (v27)
      {
        LODWORD(v66) = 67109120;
        HIDWORD(v66) = a3;
        v28 = _os_log_send_and_compose_impl(v27, v65, 0, 0, &_mh_execute_header, v25, 0, "Error granting sandbox extension to pid %d: Persona Unique String not provided", &v66);
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

    v30 = __error();
    v19 = 0;
    v31 = 22;
  }

  *v30 = v31;
LABEL_32:

  objc_autoreleasePoolPop(v8);
  return v19;
}

void sub_10004B1E4(id a1)
{
  qword_1000EB308 = os_log_create(off_1000EA598, "legacy");

  _objc_release_x1();
}

void sub_10004B22C(id a1)
{
  qword_1000EB318 = os_log_create(off_1000EA598, "user");

  _objc_release_x1();
}

uint64_t sub_10004B274(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (&_sandbox_user_state_item_buffer_destroy && &_sandbox_user_state_item_buffer_send && &_sandbox_user_state_item_buffer_create && &_sandbox_set_user_state_item)
  {
    v6 = a1;
    sandbox_user_state_item_buffer_create();
    if (a5)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v7 = qword_1000EB308;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 0;
        v8 = sub_1000011A8(1);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
        }

        else
        {
          v9 = v8 & 0xFFFFFFFE;
        }

        if (v9)
        {
          LODWORD(v39) = 67109120;
          HIDWORD(v39) = v6;
          v10 = _os_log_send_and_compose_impl(v9, &v36, 0, 0, &_mh_execute_header, v7, 0, "removing User:%d home, tmpdir SandBox state update", &v39);
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

      sandbox_set_user_state_item();
      v23 = sandbox_user_state_item_buffer_send();
      if (v23)
      {
        v24 = v23;
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v25 = qword_1000EB308;
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_63;
        }

        v39 = 0;
        LODWORD(v26) = sub_1000011A8(1);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v26;
        }

        else
        {
          v26 = v26 & 0xFFFFFFFE;
        }

        if (v26)
        {
          v27 = v25;
          v28 = *__error();
          LODWORD(v36) = 67109376;
          HIDWORD(v36) = v24;
          v37 = 1024;
          v38 = v28;
          v29 = _os_log_send_and_compose_impl(v26, &v39, 0, 0, &_mh_execute_header, v27, 0, "sandbox_user_state_item_buffer_send() fails: %d (errno: %d)", &v36);
          goto LABEL_58;
        }

        goto LABEL_61;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v17 = qword_1000EB308;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 0;
        v18 = sub_1000011A8(1);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
        }

        else
        {
          v19 = v18 & 0xFFFFFFFE;
        }

        if (v19)
        {
          LODWORD(v39) = 67109120;
          HIDWORD(v39) = v6;
          v20 = _os_log_send_and_compose_impl(v19, &v36, 0, 0, &_mh_execute_header, v17, 0, "Adding User:%d home, tmpdir SandBox state update", &v39);
          v21 = v20;
          if (v20)
          {
            sub_100002A8C(v20);
          }
        }

        else
        {
          v21 = 0;
        }

        free(v21);
      }

      sandbox_set_user_state_item();
      sandbox_set_user_state_item();
      sandbox_set_user_state_item();
      sandbox_set_user_state_item();
      v30 = sandbox_user_state_item_buffer_send();
      if (v30)
      {
        v31 = v30;
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v25 = qword_1000EB308;
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_63;
        }

        v39 = 0;
        LODWORD(v32) = sub_1000011A8(1);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v32;
        }

        else
        {
          v32 = v32 & 0xFFFFFFFE;
        }

        if (v32)
        {
          v27 = v25;
          v33 = *__error();
          LODWORD(v36) = 67109376;
          HIDWORD(v36) = v31;
          v37 = 1024;
          v38 = v33;
          v29 = _os_log_send_and_compose_impl(v32, &v39, 0, 0, &_mh_execute_header, v27, 0, "sandbox_user_state_item_buffer_send() fails: %d (errno: %d)\n", &v36);
LABEL_58:
          v34 = v29;

          if (v34)
          {
            sub_100002A8C(v34);
          }

          goto LABEL_62;
        }

LABEL_61:
        v34 = 0;
LABEL_62:
        free(v34);
LABEL_63:

        v22 = 0;
        goto LABEL_64;
      }
    }

    v22 = 1;
LABEL_64:
    sandbox_user_state_item_buffer_destroy();
    return v22;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v12 = qword_1000EB308;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 0;
    v13 = sub_1000011A8(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      LOWORD(v39) = 0;
      v15 = _os_log_send_and_compose_impl(v14, &v36, 0, 0, &_mh_execute_header, v12, 0, "UNABLE to resolve Sandbox symbols", &v39, 2);
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

  return 0;
}

void sub_10004B7C8(int32x2_t *a1)
{
  if (qword_1000EB320 != -1)
  {
    sub_100089D90();
  }

  v2 = qword_1000EB318;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 0;
    v3 = sub_1000011A8(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = a1[4].i32[0];
      v6 = a1[4].i32[1];
      LODWORD(v32) = 67109376;
      HIDWORD(v32) = v5;
      v33 = 1024;
      v34 = v6;
      v7 = _os_log_send_and_compose_impl(v4, &v35, 0, 0, &_mh_execute_header, v2, 0, "Performing foreground user switch %d -> %d...", &v32, 14);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  v9 = os_transaction_create();
  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v10 = qword_1000EB318;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 0;
    v11 = sub_1000011A8(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      v13 = a1[4].i32[0];
      LODWORD(v35) = 67109120;
      HIDWORD(v35) = v13;
      v14 = _os_log_send_and_compose_impl(v12, &v32, 0, 0, &_mh_execute_header, v10, 0, "Stopping user session for %d...", &v35);
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

  active = launch_active_user_logout();
  if (active)
  {
    v23 = active;
    if (qword_1000EB320 != -1)
    {
      goto LABEL_47;
    }

    while (1)
    {
      v24 = qword_1000EB318;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v35 = 0;
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
          v28 = a1[4].i32[0];
          LODWORD(v32) = 67109376;
          HIDWORD(v32) = v28;
          v33 = 1024;
          v34 = v23;
          LODWORD(v30) = 14;
          v29 = _os_log_send_and_compose_impl(v26, &v35, 0, 0, &_mh_execute_header, v24, 16, "launch_active_user_logout(%d) failed: %{darwin.errno}d", &v32, v30);
          v27 = v29;
          if (v29)
          {
            sub_100002A8C(v29);
          }
        }

        else
        {
          v27 = 0;
        }

        free(v27);
      }

      sub_100018028("UserManagement user switch failed: launch_active_user_logout(%d) failed: %d", a1[4].i32[0], v23);
LABEL_47:
      sub_100089D68();
    }
  }

  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v17 = qword_1000EB318;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 0;
    v18 = sub_1000011A8(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 & 0xFFFFFFFE;
    }

    if (v19)
    {
      v20 = a1[4].i32[0];
      LODWORD(v35) = 67109120;
      HIDWORD(v35) = v20;
      v21 = _os_log_send_and_compose_impl(v19, &v32, 0, 0, &_mh_execute_header, v17, 0, "Stopped user session for %d.", &v35);
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

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004BC04;
  block[3] = &unk_1000DCE88;
  block[4] = vrev64_s32(a1[4]);
  dispatch_sync(qword_1000EB610, block);
}

void sub_10004BC04(NSObject *a1)
{
  v2 = +[RDServer sharedServer];
  [v2 resetStateForUserSwitch];

  v3 = &off_1000EB000;
  if (qword_1000EB5F8)
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D90();
    }

    v2 = qword_1000EB318;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v41 = 0;
      v4 = sub_1000011A8(0);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
      }

      else
      {
        v5 = v4 & 0xFFFFFFFE;
      }

      if (v5)
      {
        *v40 = 134217984;
        *&v40[4] = qword_1000EB5F8;
        v6 = _os_log_send_and_compose_impl(v5, &v41, 0, 0, &_mh_execute_header, v2, 0, "Canceling sync bubble timer (%p)", v40);
        v7 = v6;
        if (v6)
        {
          sub_100002A8C(v6);
        }
      }

      else
      {
        v7 = 0;
      }

      free(v7);
    }

    dispatch_source_cancel(qword_1000EB5F8);
    v8 = qword_1000EB5F8;
    qword_1000EB5F8 = 0;
  }

  if (!sub_100043504(LODWORD(a1[4].isa), HIDWORD(a1[4].isa)))
  {
    if (qword_1000EB320 == -1)
    {
      goto LABEL_53;
    }

    goto LABEL_75;
  }

  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v9 = qword_1000EB318;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v40 = 0;
    v10 = sub_1000011A8(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
      isa = a1[4].isa;
      LODWORD(v41) = 67109120;
      HIDWORD(v41) = isa;
      v13 = _os_log_send_and_compose_impl(v11, v40, 0, 0, &_mh_execute_header, v9, 0, "Starting user session for %d...", &v41);
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

  active = launch_active_user_login();
  if (active)
  {
    LODWORD(v3) = active;
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v2 = qword_1000EB318;
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_74;
    }

    v41 = 0;
    v33 = sub_1000011A8(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v34 = v33;
    }

    else
    {
      v34 = v33 & 0xFFFFFFFE;
    }

    if (v34)
    {
      goto LABEL_71;
    }

    v35 = 0;
    while (1)
    {
      free(v35);
LABEL_74:

      sub_100018028("UserManagement user switch failed: launch_active_user_login(%d) failed: %d", LODWORD(a1[4].isa), v3);
LABEL_75:
      sub_100089D68();
LABEL_53:
      a1 = qword_1000EB318;
      if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
      {
        *v40 = 0;
        v31 = sub_1000011A8(0);
        if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
        {
          v32 = v31;
        }

        else
        {
          v32 = v31 & 0xFFFFFFFE;
        }

        if (v32)
        {
          LOWORD(v41) = 0;
          LODWORD(v39) = 2;
          v36 = _os_log_send_and_compose_impl(v32, v40, 0, 0, &_mh_execute_header, a1, 16, "Failed to switch foreground user!", &v41, v39);
          v2 = v36;
          if (v36)
          {
            sub_100002A8C(v36);
          }
        }

        else
        {
          v2 = 0;
        }

        free(v2);
      }

      v34 = sub_100018028("UserManagement user switch failed: failed to switch foreground user");
LABEL_71:
      v37 = a1[4].isa;
      *v40 = 67109376;
      *&v40[4] = v37;
      *&v40[8] = 1024;
      *&v40[10] = v3;
      LODWORD(v39) = 14;
      v38 = _os_log_send_and_compose_impl(v34, &v41, 0, 0, &_mh_execute_header, v2, 16, "launch_active_user_login(%d) failed: %{darwin.errno}d", v40, v39);
      v35 = v38;
      if (v38)
      {
        sub_100002A8C(v38);
      }
    }
  }

  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v16 = qword_1000EB318;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v40 = 0;
    v17 = sub_1000011A8(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v19 = a1[4].isa;
      LODWORD(v41) = 67109120;
      HIDWORD(v41) = v19;
      v20 = _os_log_send_and_compose_impl(v18, v40, 0, 0, &_mh_execute_header, v16, 0, "Started user session for %d.", &v41);
      v21 = v20;
      if (v20)
      {
        sub_100002A8C(v20);
      }
    }

    else
    {
      v21 = 0;
    }

    free(v21);
  }

  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v22 = qword_1000EB318;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v41 = 0;
    v23 = sub_1000011A8(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
    }

    else
    {
      v24 = v23 & 0xFFFFFFFE;
    }

    if (v24)
    {
      v26 = a1[4].isa;
      isa_high = HIDWORD(a1[4].isa);
      *v40 = 67109376;
      *&v40[4] = isa_high;
      *&v40[8] = 1024;
      *&v40[10] = v26;
      v27 = _os_log_send_and_compose_impl(v24, &v41, 0, 0, &_mh_execute_header, v22, 0, "Completed foreground user switch %d -> %d", v40, 14);
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

  sub_10008B010(qword_1000EB2E0);
  byte_1000EB2F0 = 0;
  v29 = sub_10008900C(qword_1000EB608);
  v30 = [NSString stringWithUTF8String:"com.apple.mobile.usermanagerd.foregrounduser_changed"];
  [v29 post:v30];

  if (dword_1000EB5B0 == 1)
  {
    sub_10001A30C();
  }
}

void sub_10004C208(int a1)
{
  v1 = sub_10007980C("/private/var//keybags/usersession.kb");
  if (v1)
  {
    v2 = v1;
    valuePtr = 0;
    v3 = sub_1000023E8(v1, @"NUMENT");
    v4 = sub_100079440(v2, @"BLOB");
    v5 = &off_1000EB000;
    v6 = &off_1000EB000;
    if (CFDictionaryContainsKey(v2, @"DEVICECONFIG"))
    {
      v7 = sub_1000023E8(v2, @"DEVICECONFIG");
      v8 = v7;
      if (v7 >= 3)
      {
        v185 = sub_100018028("usermanagerd: device configuration %d is from the future! Downgrading is not supported.", v7);
        sub_10004E02C(v185, v186);
        return;
      }

      dword_1000EB5B0 = v7;
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v9 = qword_1000EB308;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v191 = 0;
        v10 = sub_1000011A8(1);
        v11 = v9;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v10;
        }

        else
        {
          v12 = v10 & 0xFFFFFFFE;
        }

        if (v12)
        {
          LODWORD(v192) = 67109120;
          HIDWORD(v192) = dword_1000EB5B0;
          v13 = _os_log_send_and_compose_impl(v12, v191, 0, 0, &_mh_execute_header, v11, 0, "Device Configuration Type:%d", &v192);

          if (v13)
          {
            sub_100002A8C(v13);
          }
        }

        else
        {

          v13 = 0;
        }

        v5 = &off_1000EB000;
        free(v13);
      }

      v19 = dword_1000EB5B0 == 0;
    }

    else
    {
      dword_1000EB5B0 = 0;
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v14 = qword_1000EB308;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v191 = 0;
        v15 = sub_1000011A8(1);
        v16 = v14;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v15;
        }

        else
        {
          v17 = v15 & 0xFFFFFFFE;
        }

        if (v17)
        {
          LODWORD(v192) = 67109120;
          HIDWORD(v192) = dword_1000EB5B0;
          v18 = _os_log_send_and_compose_impl(v17, v191, 0, 0, &_mh_execute_header, v16, 0, "Device Configuration Set to Type:%d", &v192);

          if (v18)
          {
            sub_100002A8C(v18);
          }
        }

        else
        {

          v18 = 0;
        }

        free(v18);
        v5 = &off_1000EB000;
      }

      v8 = 0;
      v19 = 1;
    }

    if (CFDictionaryContainsKey(v2, @"BOOTEDUSER"))
    {
      dword_1000EA3D0 = sub_1000023E8(v2, @"BOOTEDUSER");
      if (v5[98] != -1)
      {
        sub_100089CEC();
      }

      v20 = qword_1000EB308;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v191 = 0;
        v21 = sub_1000011A8(1);
        v20 = v20;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
        }

        else
        {
          v22 = v21 & 0xFFFFFFFE;
        }

        if (v22)
        {
          LODWORD(v192) = 67109120;
          HIDWORD(v192) = dword_1000EA3D0;
          v23 = _os_log_send_and_compose_impl(v22, v191, 0, 0, &_mh_execute_header, v20, 0, "BOOTEDUSER is:%d", &v192);
          goto LABEL_46;
        }

        goto LABEL_48;
      }
    }

    else
    {
      dword_1000EA3D0 = 501;
      if (v5[98] != -1)
      {
        sub_100089CEC();
      }

      v20 = qword_1000EB308;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v191 = 0;
        v24 = sub_1000011A8(1);
        v20 = v20;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 0xFFFFFFFE;
        }

        if (v25)
        {
          LODWORD(v192) = 67109120;
          HIDWORD(v192) = dword_1000EA3D0;
          v23 = _os_log_send_and_compose_impl(v25, v191, 0, 0, &_mh_execute_header, v20, 0, "BOOTEDUSER Set to:%d", &v192);
LABEL_46:
          v26 = v23;

          if (v26)
          {
            sub_100002A8C(v26);
          }

          goto LABEL_49;
        }

LABEL_48:

        v26 = 0;
LABEL_49:
        free(v26);
        v5 = &off_1000EB000;
      }
    }

    qword_1000EA3E0 = sub_1000794B8(v2, @"APNSID");
    if (v5[98] != -1)
    {
      sub_100089CEC();
    }

    v27 = qword_1000EB308;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v192 = 0;
      v28 = sub_1000011A8(1);
      v29 = v27;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v28;
      }

      else
      {
        v30 = v28 & 0xFFFFFFFE;
      }

      if (v30)
      {
        *v191 = 134217984;
        *&v191[4] = qword_1000EA3E0;
        v31 = _os_log_send_and_compose_impl(v30, &v192, 0, 0, &_mh_execute_header, v29, 0, "diskLoadUserSessions, APNSID:, set to %llu", v191);

        if (v31)
        {
          sub_100002A8C(v31);
        }
      }

      else
      {

        v31 = 0;
      }

      v5 = &off_1000EB000;
      free(v31);
    }

    if (v3)
    {
      if (qword_1000EB5A0 && CFArrayGetCount(qword_1000EB5A0) >= 1)
      {
        CFArrayRemoveAllValues(qword_1000EB5A0);
      }

      BytePtr = CFDataGetBytePtr(v4);
      Length = CFDataGetLength(v4);
      v34 = sub_10007972C(BytePtr, Length);
      if (v3 < 1)
      {
        v37 = 0;
        v55 = 1;
      }

      else
      {
        v188 = v2;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = v3;
        v39 = &off_1000EB000;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v34, v35);
          if (ValueAtIndex)
          {
            v41 = ValueAtIndex;
            v42 = CFGetTypeID(ValueAtIndex);
            if (v42 == CFDictionaryGetTypeID())
            {
              v43 = sub_1000023E8(v41, kUMUserSessionIDKey);
              valuePtr = v43;
              v44 = *(v39 + 364);
              if (v19 && v43 > 501)
              {
                if (v44 != 1)
                {
                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v45 = qword_1000EB308;
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                  {
                    *v191 = 0;
                    v46 = sub_1000011A8(1);
                    v47 = v45;
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                    {
                      v48 = v46;
                    }

                    else
                    {
                      v48 = v46 & 0xFFFFFFFE;
                    }

                    if (v48)
                    {
                      LODWORD(v192) = 67109120;
                      HIDWORD(v192) = valuePtr;
                      v49 = _os_log_send_and_compose_impl(v48, v191, 0, 0, &_mh_execute_header, v47, 0, "LOG Found Non Primary with uid:%d, device may be sharediPad or provisioned, set remove primary", &v192);

                      if (v49)
                      {
                        sub_100002A8C(v49);
                      }
                    }

                    else
                    {

                      v49 = 0;
                    }

                    v39 = &off_1000EB000;
                    free(v49);
                  }

                  if (![qword_1000EB2D8 splitUserVolumeEnabled])
                  {
                    v36 = 1;
                  }

                  v8 = 1;
                  v43 = valuePtr;
                }

                v19 = 0;
                *(v39 + 364) = v8;
                v37 = 1;
                v44 = v8;
              }

              if (v44 == 1 && v43 == 502 && !CFDictionaryContainsKey(v41, kUMUserSessionisPrimaryKey))
              {
                if (qword_1000EB310 != -1)
                {
                  sub_100089CEC();
                }

                v50 = qword_1000EB308;
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                {
                  *v191 = 0;
                  v51 = sub_1000011A8(1);
                  v52 = v50;
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                  {
                    v53 = v51;
                  }

                  else
                  {
                    v53 = v51 & 0xFFFFFFFE;
                  }

                  if (v53)
                  {
                    LOWORD(v192) = 0;
                    LODWORD(v187) = 2;
                    v54 = _os_log_send_and_compose_impl(v53, v191, 0, 0, &_mh_execute_header, v52, 0, "Missing isPrimaryKey on loginUI, updating...", &v192, v187);

                    if (v54)
                    {
                      sub_100002A8C(v54);
                    }
                  }

                  else
                  {

                    v54 = 0;
                  }

                  free(v54);
                }

                CFDictionarySetValue(v41, kUMUserSessionisPrimaryKey, kCFBooleanTrue);
                CFDictionarySetValue(v41, kUMUserSessionisAdminKey, kCFBooleanTrue);
                v37 = 1;
                v39 = &off_1000EB000;
              }

              if (v8 == 1 && valuePtr < 502)
              {
                v8 = 1;
              }

              else
              {
                sub_10001FC24(v41, a1);
              }
            }
          }

          ++v35;
        }

        while (v38 != v35);
        v55 = v36 == 0;
        v2 = v188;
        v6 = &off_1000EB000;
      }

      v5 = &off_1000EB000;
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v56 = v6[97];
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v192 = 0;
        v57 = sub_1000011A8(1);
        v58 = v56;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = v57;
        }

        else
        {
          v59 = v57 & 0xFFFFFFFE;
        }

        if (v59)
        {
          *v191 = 138412290;
          *&v191[4] = qword_1000EB5A0;
          LODWORD(v187) = 12;
          v60 = _os_log_send_and_compose_impl(v59, &v192, 0, 0, &_mh_execute_header, v58, 0, "Reloaded _gUserSessionTable %@", v191, v187);

          if (v60)
          {
            sub_100002A8C(v60);
          }
        }

        else
        {

          v60 = 0;
        }

        free(v60);
      }

      if (v34)
      {
        CFRelease(v34);
      }

      if (!v55)
      {
        if (sub_10002E024(501, a1))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v61 = v6[97];
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *v191 = 0;
            v62 = sub_1000011A8(1);
            v61 = v61;
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              v63 = v62;
            }

            else
            {
              v63 = v62 & 0xFFFFFFFE;
            }

            if (v63)
            {
              LOWORD(v192) = 0;
              LODWORD(v187) = 2;
              v64 = _os_log_send_and_compose_impl(v63, v191, 0, 0, &_mh_execute_header, v61, 0, "Removing existing Primary session, device entering shared iPad", &v192, v187);

              if (v64)
              {
                sub_100002A8C(v64);
              }
            }

            else
            {

              v64 = 0;
            }

            free(v64);
          }

          v37 = 1;
        }

        else
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v61 = v6[97];
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *v191 = 0;
            v65 = sub_1000011A8(1);
            v61 = v61;
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              v66 = v65;
            }

            else
            {
              v66 = v65 & 0xFFFFFFFE;
            }

            if (v66)
            {
              LOWORD(v192) = 0;
              LODWORD(v187) = 2;
              v67 = _os_log_send_and_compose_impl(v66, v191, 0, 0, &_mh_execute_header, v61, 0, "Primary session not present, device entering shared iPad", &v192, v187);

              if (v67)
              {
                sub_100002A8C(v67);
              }
            }

            else
            {

              v67 = 0;
            }

            free(v67);
          }
        }
      }
    }

    else
    {
      v37 = 0;
    }

    if (CFDictionaryContainsKey(v2, @"MAXUSER"))
    {
      dword_1000EA3D4 = sub_1000023E8(v2, @"MAXUSER");
    }

    else
    {
      v68 = CFDictionaryContainsKey(v2, @"MAXUSERSIZE");
      dword_1000EA3D4 = -1;
      if (!v68)
      {
        v69 = 0;
LABEL_152:
        qword_1000EB5D8 = v69;
        v70 = CFDictionaryContainsKey(v2, @"USESSTYPE");
        if (v70)
        {
          v70 = sub_1000023E8(v2, @"USESSTYPE");
        }

        dword_1000EB5B8 = v70;
        v71 = CFDictionaryContainsKey(v2, @"LOGINCHECKIN");
        if (v71)
        {
          v71 = sub_1000023E8(v2, @"LOGINCHECKIN");
        }

        dword_1000EB5BC = v71;
        if (CFDictionaryContainsKey(v2, @"DEVICENETWORKBG"))
        {
          v72 = sub_1000023E8(v2, @"DEVICENETWORKBG");
          v73 = v72 & ~(v72 >> 31);
        }

        else
        {
          v73 = 0;
        }

        dword_1000EB5E0 = v73;
        if (CFDictionaryContainsKey(v2, @"SYNCENT"))
        {
          v74 = sub_1000023E8(v2, @"SYNCENT");
          if (v74 >= 1)
          {
            v75 = sub_100079440(v2, @"SYNCBLOB");
            if (v5[98] != -1)
            {
              sub_100089CEC();
            }

            v76 = v6[97];
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              *v191 = 0;
              v77 = sub_1000011A8(1);
              v78 = v76;
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
              {
                v79 = v77;
              }

              else
              {
                v79 = v77 & 0xFFFFFFFE;
              }

              if (v79)
              {
                LODWORD(v192) = 67109120;
                HIDWORD(v192) = v74;
                v80 = _os_log_send_and_compose_impl(v79, v191, 0, 0, &_mh_execute_header, v78, 0, "LOAD found %d BUBBLE entries", &v192);

                if (v80)
                {
                  sub_100002A8C(v80);
                }
              }

              else
              {

                v80 = 0;
              }

              v5 = &off_1000EB000;
              free(v80);
            }

            if (qword_1000EB5C0 && CFArrayGetCount(qword_1000EB5C0) >= 1)
            {
              CFArrayRemoveAllValues(qword_1000EB5C0);
            }

            v90 = CFDataGetBytePtr(v75);
            v91 = CFDataGetLength(v75);
            v92 = sub_10007972C(v90, v91);
            if (v5[98] != -1)
            {
              sub_100089CEC();
            }

            v93 = v6[97];
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              v192 = 0;
              v94 = sub_1000011A8(1);
              v95 = v93;
              if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
              {
                v96 = v94;
              }

              else
              {
                v96 = v94 & 0xFFFFFFFE;
              }

              if (v96)
              {
                *v191 = 138412290;
                *&v191[4] = v92;
                LODWORD(v187) = 12;
                v97 = _os_log_send_and_compose_impl(v96, &v192, 0, 0, &_mh_execute_header, v95, 0, "FOUND SYNC BUBBLE ARRAY:%@", v191, v187);

                if (v97)
                {
                  sub_100002A8C(v97);
                }
              }

              else
              {

                v97 = 0;
              }

              free(v97);
            }

            if (CFArrayGetCount(v92) >= 1)
            {
              v98 = 0;
              do
              {
                v99 = CFArrayGetValueAtIndex(v92, v98);
                if (v99)
                {
                  v100 = v99;
                  v101 = CFGetTypeID(v99);
                  if (v101 == CFNumberGetTypeID())
                  {
                    CFNumberGetValue(v100, kCFNumberIntType, &valuePtr);
                    if (valuePtr >= 502)
                    {
                      sub_10001BD58(valuePtr);
                    }
                  }
                }

                ++v98;
              }

              while (CFArrayGetCount(v92) > v98);
            }

            v102 = v5[98];
            if (qword_1000EB5C0)
            {
              if (v102 != -1)
              {
                sub_100089CEC();
              }

              v103 = v6[97];
              if (!os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_233;
              }

              v192 = 0;
              v104 = sub_1000011A8(1);
              v103 = v103;
              if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
              {
                v105 = v104;
              }

              else
              {
                v105 = v104 & 0xFFFFFFFE;
              }

              if (v105)
              {
                *v191 = 138412290;
                *&v191[4] = qword_1000EB5C0;
                LODWORD(v187) = 12;
                v106 = _os_log_send_and_compose_impl(v105, &v192, 0, 0, &_mh_execute_header, v103, 0, "CURRENT ENTRIES for SYNC BUBBLE TABLE: %@", v191, v187);
                goto LABEL_229;
              }
            }

            else
            {
              if (v102 != -1)
              {
                sub_100089CEC();
              }

              v103 = v6[97];
              if (!os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_233;
              }

              *v191 = 0;
              v107 = sub_1000011A8(1);
              v103 = v103;
              if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
              {
                v108 = v107;
              }

              else
              {
                v108 = v107 & 0xFFFFFFFE;
              }

              if (v108)
              {
                LOWORD(v192) = 0;
                LODWORD(v187) = 2;
                v106 = _os_log_send_and_compose_impl(v108, v191, 0, 0, &_mh_execute_header, v103, 0, "NO ENTRIES for SYNC BUBBLE TABLE", &v192, v187);
LABEL_229:
                v109 = v106;

                if (v109)
                {
                  sub_100002A8C(v109);
                }

                goto LABEL_232;
              }
            }

            v109 = 0;
LABEL_232:
            free(v109);
LABEL_233:

            if (v92)
            {
              CFRelease(v92);
            }

LABEL_241:
            if (CFDictionaryContainsKey(v2, @"LRUENT"))
            {
              v111 = sub_1000023E8(v2, @"LRUENT");
              if (v111 >= 1)
              {
                v112 = sub_100079440(v2, @"LRUBLOB");
                if (v5[98] != -1)
                {
                  sub_100089CEC();
                }

                v113 = v6[97];
                if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
                {
                  *v191 = 0;
                  v114 = sub_1000011A8(1);
                  v115 = v113;
                  if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
                  {
                    v116 = v114;
                  }

                  else
                  {
                    v116 = v114 & 0xFFFFFFFE;
                  }

                  if (v116)
                  {
                    LODWORD(v192) = 67109120;
                    HIDWORD(v192) = v111;
                    v117 = _os_log_send_and_compose_impl(v116, v191, 0, 0, &_mh_execute_header, v115, 0, "LOAD found %d LRU entries", &v192);

                    if (v117)
                    {
                      sub_100002A8C(v117);
                    }
                  }

                  else
                  {

                    v117 = 0;
                  }

                  v5 = &off_1000EB000;
                  free(v117);
                }

                if (qword_1000EB5C8 && CFArrayGetCount(qword_1000EB5C8) >= 1)
                {
                  CFArrayRemoveAllValues(qword_1000EB5C8);
                }

                v127 = CFDataGetBytePtr(v112);
                v128 = CFDataGetLength(v112);
                v129 = sub_10007972C(v127, v128);
                if (v5[98] != -1)
                {
                  sub_100089CEC();
                }

                v130 = v6[97];
                if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
                {
                  v192 = 0;
                  v131 = sub_1000011A8(1);
                  v132 = v130;
                  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
                  {
                    v133 = v131;
                  }

                  else
                  {
                    v133 = v131 & 0xFFFFFFFE;
                  }

                  if (v133)
                  {
                    *v191 = 138412290;
                    *&v191[4] = v129;
                    LODWORD(v187) = 12;
                    v134 = _os_log_send_and_compose_impl(v133, &v192, 0, 0, &_mh_execute_header, v132, 0, "FOUND LRU ARRAY:%@", v191, v187);

                    if (v134)
                    {
                      sub_100002A8C(v134);
                    }
                  }

                  else
                  {

                    v134 = 0;
                  }

                  free(v134);
                }

                if (CFArrayGetCount(v129) >= 1)
                {
                  v135 = 0;
                  do
                  {
                    v136 = CFArrayGetValueAtIndex(v129, v135);
                    if (v136)
                    {
                      v137 = v136;
                      v138 = CFGetTypeID(v136);
                      if (v138 == CFNumberGetTypeID())
                      {
                        CFNumberGetValue(v137, kCFNumberIntType, &valuePtr);
                        if (valuePtr >= 502)
                        {
                          sub_10001C1B8(valuePtr);
                        }
                      }
                    }

                    ++v135;
                  }

                  while (CFArrayGetCount(v129) > v135);
                }

                v139 = v5[98];
                if (qword_1000EB5C8)
                {
                  if (v139 != -1)
                  {
                    sub_100089CEC();
                  }

                  v140 = v6[97];
                  if (!os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_314;
                  }

                  v192 = 0;
                  v141 = sub_1000011A8(1);
                  v140 = v140;
                  if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
                  {
                    v142 = v141;
                  }

                  else
                  {
                    v142 = v141 & 0xFFFFFFFE;
                  }

                  if (v142)
                  {
                    *v191 = 138412290;
                    *&v191[4] = qword_1000EB5C8;
                    LODWORD(v187) = 12;
                    v143 = _os_log_send_and_compose_impl(v142, &v192, 0, 0, &_mh_execute_header, v140, 0, "CURRENT ENTRIES for LRU TABLE: %@", v191, v187);
                    goto LABEL_310;
                  }
                }

                else
                {
                  if (v139 != -1)
                  {
                    sub_100089CEC();
                  }

                  v140 = v6[97];
                  if (!os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_314;
                  }

                  *v191 = 0;
                  v144 = sub_1000011A8(1);
                  v140 = v140;
                  if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
                  {
                    v145 = v144;
                  }

                  else
                  {
                    v145 = v144 & 0xFFFFFFFE;
                  }

                  if (v145)
                  {
                    LOWORD(v192) = 0;
                    LODWORD(v187) = 2;
                    v143 = _os_log_send_and_compose_impl(v145, v191, 0, 0, &_mh_execute_header, v140, 0, "NO ENTRIES for LRU TABLE", &v192, v187);
LABEL_310:
                    v146 = v143;

                    if (v146)
                    {
                      sub_100002A8C(v146);
                    }

                    goto LABEL_313;
                  }
                }

                v146 = 0;
LABEL_313:
                free(v146);
LABEL_314:

                if (v129)
                {
                  CFRelease(v129);
                }

LABEL_322:
                if (CFDictionaryContainsKey(v2, @"VOLUMETYPE"))
                {
                  v148 = sub_100079590(v2, @"VOLUMETYPE");
                  v149 = v5[98];
                  if (v148)
                  {
                    if (v149 != -1)
                    {
                      sub_100089CEC();
                    }

                    v150 = v6[97];
                    if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
                    {
                      *v191 = 0;
                      v151 = sub_1000011A8(1);
                      v150 = v150;
                      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
                      {
                        v152 = v151;
                      }

                      else
                      {
                        v152 = v151 & 0xFFFFFFFE;
                      }

                      if (v152)
                      {
                        LOWORD(v192) = 0;
                        LODWORD(v187) = 2;
                        v153 = _os_log_send_and_compose_impl(v152, v191, 0, 0, &_mh_execute_header, v150, 0, "Found VolumeType in saved dictionary", &v192, v187);
                        goto LABEL_349;
                      }

                      goto LABEL_351;
                    }
                  }

                  else
                  {
                    if (v149 != -1)
                    {
                      sub_100089CEC();
                    }

                    v150 = v6[97];
                    if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
                    {
                      *v191 = 0;
                      v159 = sub_1000011A8(1);
                      v150 = v150;
                      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
                      {
                        v160 = v159;
                      }

                      else
                      {
                        v160 = v159 & 0xFFFFFFFE;
                      }

                      if (v160)
                      {
                        LOWORD(v192) = 0;
                        LODWORD(v187) = 2;
                        v153 = _os_log_send_and_compose_impl(v160, v191, 0, 0, &_mh_execute_header, v150, 0, "NOT FOUND VolumeType in saved dictionary", &v192, v187);
LABEL_349:
                        v161 = v153;

                        if (v161)
                        {
                          sub_100002A8C(v161);
                        }

                        goto LABEL_352;
                      }

LABEL_351:

                      v161 = 0;
LABEL_352:
                      free(v161);
                    }
                  }

                  if (CFStringCompare(v148, kUMUserSessionAPFSNativeVolume, 0))
                  {
                    v162 = CFStringCompare(v148, kUMUserSessionAPFSConvertedVolume, 0);
                    byte_1000EA3D8 = 0;
                    if (v162)
                    {
                      qword_1000EB2F8 = kUMUserSessionHFSPlusVolume;
                      if (v5[98] != -1)
                      {
                        sub_100089CEC();
                      }

                      v163 = v6[97];
                      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
                      {
                        *v191 = 0;
                        v164 = sub_1000011A8(1);
                        v163 = v163;
                        if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
                        {
                          v165 = v164;
                        }

                        else
                        {
                          v165 = v164 & 0xFFFFFFFE;
                        }

                        if (v165)
                        {
                          LOWORD(v192) = 0;
                          LODWORD(v187) = 2;
                          v166 = _os_log_send_and_compose_impl(v165, v191, 0, 0, &_mh_execute_header, v163, 0, "VOL:HFS", &v192, v187);
                          goto LABEL_379;
                        }

LABEL_381:

                        v171 = 0;
LABEL_382:
                        free(v171);
                      }

LABEL_383:

                      CFRelease(v2);
                      if (!v37)
                      {
                        return;
                      }

LABEL_414:
                      sub_100018C80();
                      return;
                    }

                    qword_1000EB2F8 = kUMUserSessionAPFSConvertedVolume;
                    if (v5[98] != -1)
                    {
                      sub_100089CEC();
                    }

                    v163 = v6[97];
                    if (!os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_383;
                    }

                    *v191 = 0;
                    v169 = sub_1000011A8(1);
                    v163 = v163;
                    if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
                    {
                      v170 = v169;
                    }

                    else
                    {
                      v170 = v169 & 0xFFFFFFFE;
                    }

                    if (!v170)
                    {
                      goto LABEL_381;
                    }

                    LOWORD(v192) = 0;
                    LODWORD(v187) = 2;
                    v166 = _os_log_send_and_compose_impl(v170, v191, 0, 0, &_mh_execute_header, v163, 0, "VOL:CONV", &v192, v187);
                  }

                  else
                  {
                    byte_1000EA3D8 = 1;
                    qword_1000EB2F8 = kUMUserSessionAPFSNativeVolume;
                    if (v5[98] != -1)
                    {
                      sub_100089CEC();
                    }

                    v163 = v6[97];
                    if (!os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_383;
                    }

                    *v191 = 0;
                    v167 = sub_1000011A8(1);
                    v163 = v163;
                    if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
                    {
                      v168 = v167;
                    }

                    else
                    {
                      v168 = v167 & 0xFFFFFFFE;
                    }

                    if (!v168)
                    {
                      goto LABEL_381;
                    }

                    LOWORD(v192) = 0;
                    LODWORD(v187) = 2;
                    v166 = _os_log_send_and_compose_impl(v168, v191, 0, 0, &_mh_execute_header, v163, 0, "VOL:Native", &v192, v187);
                  }

LABEL_379:
                  v171 = v166;

                  if (v171)
                  {
                    sub_100002A8C(v171);
                  }

                  goto LABEL_382;
                }

                if (v5[98] != -1)
                {
                  sub_100089CEC();
                }

                v154 = v6[97];
                if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
                {
                  *v191 = 0;
                  v155 = sub_1000011A8(1);
                  v156 = v154;
                  if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
                  {
                    v157 = v155;
                  }

                  else
                  {
                    v157 = v155 & 0xFFFFFFFE;
                  }

                  if (v157)
                  {
                    LOWORD(v192) = 0;
                    LODWORD(v187) = 2;
                    v158 = _os_log_send_and_compose_impl(v157, v191, 0, 0, &_mh_execute_header, v156, 0, "FOUND NO VOLUMETYPE, setting up volume type", &v192, v187);

                    if (v158)
                    {
                      sub_100002A8C(v158);
                    }
                  }

                  else
                  {

                    v158 = 0;
                  }

                  free(v158);
                }

                if (byte_1000EA3D8 == 1)
                {
                  qword_1000EB2F8 = kUMUserSessionAPFSNativeVolume;
                  if (v5[98] != -1)
                  {
                    sub_100089CEC();
                  }

                  v172 = v6[97];
                  if (!os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_408;
                  }

                  *v191 = 0;
                  v173 = sub_1000011A8(1);
                  v172 = v172;
                  if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
                  {
                    v174 = v173;
                  }

                  else
                  {
                    v174 = v173 & 0xFFFFFFFE;
                  }

                  if (v174)
                  {
                    LOWORD(v192) = 0;
                    LODWORD(v187) = 2;
                    v175 = _os_log_send_and_compose_impl(v174, v191, 0, 0, &_mh_execute_header, v172, 0, "Set the new volume type to APFSNativeDevice", &v192, v187);
                    goto LABEL_404;
                  }
                }

                else
                {
                  qword_1000EB2F8 = kUMUserSessionAPFSConvertedVolume;
                  if (v5[98] != -1)
                  {
                    sub_100089CEC();
                  }

                  v172 = v6[97];
                  if (!os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_408;
                  }

                  *v191 = 0;
                  v176 = sub_1000011A8(1);
                  v172 = v172;
                  if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
                  {
                    v177 = v176;
                  }

                  else
                  {
                    v177 = v176 & 0xFFFFFFFE;
                  }

                  if (v177)
                  {
                    LOWORD(v192) = 0;
                    LODWORD(v187) = 2;
                    v175 = _os_log_send_and_compose_impl(v177, v191, 0, 0, &_mh_execute_header, v172, 0, "Set the new volume type to APFSConvertedDevice", &v192, v187);
LABEL_404:
                    v178 = v175;

                    if (v178)
                    {
                      sub_100002A8C(v178);
                    }

                    goto LABEL_407;
                  }
                }

                v178 = 0;
LABEL_407:
                free(v178);
LABEL_408:

                if (qword_1000EB5A0)
                {
                  Count = CFArrayGetCount(qword_1000EB5A0);
                  if (Count >= 1)
                  {
                    v180 = Count;
                    for (i = 0; i != v180; ++i)
                    {
                      v182 = CFArrayGetValueAtIndex(qword_1000EB5A0, i);
                      v183 = CFGetTypeID(v182);
                      TypeID = CFDictionaryGetTypeID();
                      if (v183 != TypeID)
                      {
                        break;
                      }

                      sub_10004E02C(TypeID, v182);
                    }
                  }
                }

                CFRelease(v2);
                goto LABEL_414;
              }

              if (v5[98] != -1)
              {
                sub_100089CEC();
              }

              v118 = v6[97];
              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
LABEL_321:

                goto LABEL_322;
              }

              *v191 = 0;
              v123 = sub_1000011A8(1);
              v124 = v118;
              if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
              {
                v125 = v123;
              }

              else
              {
                v125 = v123 & 0xFFFFFFFE;
              }

              if (v125)
              {
                LODWORD(v192) = 67109120;
                HIDWORD(v192) = v111;
                v126 = _os_log_send_and_compose_impl(v125, v191, 0, 0, &_mh_execute_header, v124, 0, "INVSALID numLRU:%d", &v192);

                if (v126)
                {
                  sub_100002A8C(v126);
                }
              }

              else
              {

                v126 = 0;
              }

              v147 = v126;
            }

            else
            {
              if (v5[98] != -1)
              {
                sub_100089CEC();
              }

              v118 = v6[97];
              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_321;
              }

              *v191 = 0;
              v119 = sub_1000011A8(1);
              v120 = v118;
              if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
              {
                v121 = v119;
              }

              else
              {
                v121 = v119 & 0xFFFFFFFE;
              }

              if (v121)
              {
                v192 = 67109120;
                v122 = _os_log_send_and_compose_impl(v121, v191, 0, 0, &_mh_execute_header, v120, 0, "FOUND NO LRU TABLE UIDS:%d", &v192);

                if (v122)
                {
                  sub_100002A8C(v122);
                }
              }

              else
              {

                v122 = 0;
              }

              v147 = v122;
            }

            free(v147);
            goto LABEL_321;
          }

          if (v5[98] != -1)
          {
            sub_100089CEC();
          }

          v81 = v6[97];
          if (!os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
LABEL_240:

            goto LABEL_241;
          }

          *v191 = 0;
          v86 = sub_1000011A8(1);
          v87 = v81;
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            v88 = v86;
          }

          else
          {
            v88 = v86 & 0xFFFFFFFE;
          }

          if (v88)
          {
            LODWORD(v192) = 67109120;
            HIDWORD(v192) = v74;
            v89 = _os_log_send_and_compose_impl(v88, v191, 0, 0, &_mh_execute_header, v87, 0, "INVSALID NUMSYNC:%d", &v192);

            if (v89)
            {
              sub_100002A8C(v89);
            }
          }

          else
          {

            v89 = 0;
          }

          v110 = v89;
        }

        else
        {
          if (v5[98] != -1)
          {
            sub_100089CEC();
          }

          v81 = v6[97];
          if (!os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_240;
          }

          *v191 = 0;
          v82 = sub_1000011A8(1);
          v83 = v81;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v84 = v82;
          }

          else
          {
            v84 = v82 & 0xFFFFFFFE;
          }

          if (v84)
          {
            v192 = 67109120;
            v85 = _os_log_send_and_compose_impl(v84, v191, 0, 0, &_mh_execute_header, v83, 0, "FOUND NO SYNC BUBBLE UIDS:%d", &v192);

            if (v85)
            {
              sub_100002A8C(v85);
            }
          }

          else
          {

            v85 = 0;
          }

          v110 = v85;
        }

        free(v110);
        goto LABEL_240;
      }
    }

    v69 = sub_1000794B8(v2, @"MAXUSERSIZE");
    goto LABEL_152;
  }
}

void sub_10004E02C(uint64_t a1, const __CFDictionary *a2)
{
  v3 = sub_1000023E8(a2, kUMUserSessionIDKey);
  if (!CFDictionaryContainsKey(a2, kUMUserSessionUserVolumeTypeKey))
  {
    CFDictionarySetValue(a2, kUMUserSessionUserVolumeTypeKey, qword_1000EB2F8);
  }

  if (byte_1000EA3D8)
  {
    if (!CFDictionaryContainsKey(a2, kUMUserSessionNeedsMountKey))
    {
      v4 = kUMUserSessionNeedsMountKey;
      if (v3 == 502)
      {
        v5 = &kCFBooleanFalse;
      }

      else
      {
        v5 = &kCFBooleanTrue;
      }

      v11 = *v5;

      CFDictionarySetValue(a2, v4, v11);
    }

    return;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v6 = qword_1000EB308;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    v7 = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      LOWORD(v21) = 0;
      v9 = _os_log_send_and_compose_impl(v8, v23, 0, 0, &_mh_execute_header, v6, 0, "Setting APFSIOC_MAINTAIN_DIR_STATS", &v21, 2);
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

  if (sub_1000795D4(a2, kUMUserSessionHomeDirKey, v23, 1024))
  {
    v20 = 1;
    if (fsctl(v23, 0x80084A02uLL, &v20, 0))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v12 = qword_1000EB308;
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      v19 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v21 = 136315138;
        v22 = v23;
        v15 = _os_log_send_and_compose_impl(v14, &v19, 0, 0, &_mh_execute_header, v12, 0, "Failed to set APFSIOC_MAINTAIN_DIR_STATS on %s", &v21);
        goto LABEL_40;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v12 = qword_1000EB308;
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      v19 = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v21 = 136315138;
        v22 = v23;
        v15 = _os_log_send_and_compose_impl(v17, &v19, 0, 0, &_mh_execute_header, v12, 0, "APFSIOC_MAINTAIN_DIR_STATS set on %s", &v21);
LABEL_40:
        v18 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }

        goto LABEL_43;
      }
    }

    v18 = 0;
LABEL_43:
    free(v18);
LABEL_44:
  }

  if (!CFDictionaryContainsKey(a2, kUMUserSessionNeedsMountKey))
  {
    CFDictionarySetValue(a2, kUMUserSessionNeedsMountKey, kCFBooleanFalse);
  }
}

__CFDictionary *sub_10004E3FC(uint64_t a1)
{
  v1 = a1;
  uuid = 0;
  valuePtr = 501;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v104 = 0;
  v2 = qword_1000EB308;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *cStr = 0;
    v3 = sub_1000011A8(1);
    v4 = v2;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v3;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFE;
    }

    if (v5)
    {
      *v106 = 67109120;
      *&v106[4] = 501;
      v6 = _os_log_send_and_compose_impl(v5, cStr, 0, 0, &_mh_execute_header, v4, 0, "Creating New Primary Session with uid %d", v106);

      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {

      v6 = 0;
    }

    free(v6);
  }

  v7 = sub_10007990C();
  v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(v7, kUMUserSessionIDKey, v8);
  CFRelease(v8);
  v104 = valuePtr;
  v9 = CFNumberCreate(0, kCFNumberIntType, &v104);
  CFDictionarySetValue(v7, kUMUserSessionGroupIDKey, v9);
  CFRelease(v9);
  CFDictionarySetValue(v7, kUMUserSessionTypeKey, kUMUserSessionOther);
  bzero(&cStr[7], 0x3F9uLL);
  strcpy(cStr, "mobile");
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v10 = qword_1000EB308;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    cf = 0;
    v11 = sub_1000011A8(1);
    v12 = v10;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 0xFFFFFFFE;
    }

    if (v13)
    {
      *v106 = 136315138;
      *&v106[4] = cStr;
      v14 = _os_log_send_and_compose_impl(v13, &cf, 0, 0, &_mh_execute_header, v12, 0, "creating with shortname %s", v106);

      if (v14)
      {
        sub_100002A8C(v14);
      }
    }

    else
    {

      v14 = 0;
    }

    free(v14);
  }

  v15 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (v15)
  {
    v16 = v15;
    CFDictionarySetValue(v7, kUMUserSessionShortNameKey, v15);
    CFDictionarySetValue(v7, kUMUserSessionFirstNameKey, v16);
    CFDictionarySetValue(v7, kUMUserSessionLastNameKey, v16);
    CFDictionarySetValue(v7, kUMUserSessionNameKey, v16);
    CFDictionarySetValue(v7, kUMUserSessionDisplayNameKey, v16);
    CFRelease(v16);
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v17 = qword_1000EB308;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v106 = 0;
      v18 = sub_1000011A8(1);
      v19 = v17;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v18;
      }

      else
      {
        v20 = v18 & 0xFFFFFFFE;
      }

      if (v20)
      {
        LOWORD(cf) = 0;
        v21 = _os_log_send_and_compose_impl(v20, v106, 0, 0, &_mh_execute_header, v19, 0, "failed to create userSessionShortName", &cf, 2);

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
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v22 = qword_1000EB308;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 0;
    v23 = sub_1000011A8(1);
    v24 = v22;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v23;
    }

    else
    {
      v25 = v23 & 0xFFFFFFFE;
    }

    if (v25)
    {
      LOWORD(cf) = 0;
      LODWORD(v100) = 2;
      v26 = _os_log_send_and_compose_impl(v25, v106, 0, 0, &_mh_execute_header, v24, 0, "Setting Default Language", &cf, v100);

      if (v26)
      {
        sub_100002A8C(v26);
      }
    }

    else
    {

      v26 = 0;
    }

    free(v26);
  }

  CFDictionarySetValue(v7, kUMUserSessionLanguageKey, @"en_US");
  if (v1)
  {
    cf = 0;
    err = 0;
    if (AKSIdentityGetPrimary())
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v27 = qword_1000EB308;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *v106 = 0;
        v28 = sub_1000011A8(1);
        v29 = v27;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v28;
        }

        else
        {
          v30 = v28 & 0xFFFFFFFE;
        }

        if (v30)
        {
          LOWORD(v101) = 0;
          LODWORD(v100) = 2;
          v31 = _os_log_send_and_compose_impl(v30, v106, 0, 0, &_mh_execute_header, v29, 0, "***************** FOUND Primary User on AKS, BUT NO UM USER PROFILE *****************", &v101, v100);

          if (v31)
          {
            sub_100002A8C(v31);
          }
        }

        else
        {

          v31 = 0;
        }

        free(v31);
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v37 = qword_1000EB308;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *v106 = 0;
        v38 = sub_1000011A8(1);
        v39 = v37;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = v38;
        }

        else
        {
          v40 = v38 & 0xFFFFFFFE;
        }

        if (v40)
        {
          LOWORD(v101) = 0;
          LODWORD(v100) = 2;
          v41 = _os_log_send_and_compose_impl(v40, v106, 0, 0, &_mh_execute_header, v39, 0, "***************** USING Primary User UUID for 501 user*****************", &v101, v100);

          if (v41)
          {
            sub_100002A8C(v41);
          }
        }

        else
        {

          v41 = 0;
        }

        free(v41);
      }

      if (uuid)
      {
        v42 = CFUUIDCreateString(kCFAllocatorDefault, uuid);
        CFDictionarySetValue(v7, kUMUserSessionUUIDKey, v42);
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v43 = qword_1000EB308;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v101 = 0;
          v44 = sub_1000011A8(1);
          v45 = v43;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = v44;
          }

          else
          {
            v46 = v44 & 0xFFFFFFFE;
          }

          if (v46)
          {
            *v106 = 138412290;
            *&v106[4] = v42;
            LODWORD(v100) = 12;
            v47 = _os_log_send_and_compose_impl(v46, &v101, 0, 0, &_mh_execute_header, v45, 0, "Setting UserUUID from AKS Primary UserUUID:%@", v106, v100);

            if (v47)
            {
              sub_100002A8C(v47);
            }
          }

          else
          {

            v47 = 0;
          }

          free(v47);
        }

        if (uuid)
        {
          CFRelease(uuid);
        }

        uuid = 0;
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v42)
        {
          CFRelease(v42);
        }

        goto LABEL_131;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v48 = qword_1000EB308;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *v106 = 0;
        v49 = sub_1000011A8(1);
        v50 = v48;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = v49;
        }

        else
        {
          v51 = v49 & 0xFFFFFFFE;
        }

        if (v51)
        {
          LOWORD(v101) = 0;
          LODWORD(v100) = 2;
          v52 = _os_log_send_and_compose_impl(v51, v106, 0, 0, &_mh_execute_header, v50, 0, "*****************  Primary User UUID NULL, ignoring *****************", &v101, v100);

          if (v52)
          {
            sub_100002A8C(v52);
          }
        }

        else
        {

          v52 = 0;
        }

        free(v52);
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v32 = qword_1000EB308;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v101 = 0;
        LODWORD(v33) = sub_1000011A8(1);
        v34 = v32;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v33 = v33;
        }

        else
        {
          v33 = v33 & 0xFFFFFFFE;
        }

        if (v33)
        {
          Code = CFErrorGetCode(err);
          *v106 = 134217984;
          *&v106[4] = Code;
          v36 = _os_log_send_and_compose_impl(v33, &v101, 0, 0, &_mh_execute_header, v34, 0, "No Primary User Set in AKS: error:: %ld", v106);

          if (v36)
          {
            sub_100002A8C(v36);
          }
        }

        else
        {

          v36 = 0;
        }

        free(v36);
      }

      if (err)
      {
        CFRelease(err);
      }
    }
  }

  uuid = CFUUIDCreate(0);
  v53 = CFUUIDCreateString(0, uuid);
  CFDictionarySetValue(v7, kUMUserSessionUUIDKey, v53);
  if (uuid)
  {
    CFRelease(uuid);
    uuid = 0;
  }

  if (v53)
  {
    CFRelease(v53);
  }

  uuid = 0;
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v54 = qword_1000EB308;
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 0;
    v55 = sub_1000011A8(1);
    v56 = v54;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = v55;
    }

    else
    {
      v57 = v55 & 0xFFFFFFFE;
    }

    if (v57)
    {
      LOWORD(cf) = 0;
      LODWORD(v100) = 2;
      v58 = _os_log_send_and_compose_impl(v57, v106, 0, 0, &_mh_execute_header, v56, 0, "Session default uuid created", &cf, v100);

      if (v58)
      {
        sub_100002A8C(v58);
      }
    }

    else
    {

      v58 = 0;
    }

    free(v58);
  }

LABEL_131:
  uuid = CFUUIDCreate(0);
  v59 = CFUUIDCreateString(0, uuid);
  CFDictionarySetValue(v7, kUMUserSessionAlternateDSIDKey, v59);
  if (uuid)
  {
    CFRelease(uuid);
    uuid = 0;
  }

  if (v59)
  {
    CFRelease(v59);
  }

  uuid = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v61 = CFDateCreate(kCFAllocatorDefault, Current);
  CFDictionarySetValue(v7, kUMUserSessionCreateTimeStampKey, v61);
  CFDictionarySetValue(v7, kUMUserSessionLoginTimeStampKey, v61);
  if (v61)
  {
    CFRelease(v61);
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v62 = qword_1000EB308;
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 0;
    v63 = sub_1000011A8(1);
    v64 = v62;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = v63;
    }

    else
    {
      v65 = v63 & 0xFFFFFFFE;
    }

    if (v65)
    {
      LOWORD(cf) = 0;
      LODWORD(v100) = 2;
      v66 = _os_log_send_and_compose_impl(v65, v106, 0, 0, &_mh_execute_header, v64, 0, "Session  creation date set", &cf, v100);

      if (v66)
      {
        sub_100002A8C(v66);
      }
    }

    else
    {

      v66 = 0;
    }

    free(v66);
  }

  CFDictionarySetValue(v7, kUMUserSessionLoginUserKey, kCFBooleanFalse);
  CFDictionarySetValue(v7, kUMUserSessionDirtyKey, kCFBooleanFalse);
  CFDictionarySetValue(v7, kUMUserSessionForegroundKey, kCFBooleanTrue);
  CFDictionarySetValue(v7, kUMUserSessionisPrimaryKey, kCFBooleanTrue);
  CFDictionarySetValue(v7, kUMUserSessionisAdminKey, kCFBooleanTrue);
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v67 = qword_1000EB308;
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 0;
    v68 = sub_1000011A8(1);
    v69 = v67;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v70 = v68;
    }

    else
    {
      v70 = v68 & 0xFFFFFFFE;
    }

    if (v70)
    {
      LOWORD(cf) = 0;
      LODWORD(v100) = 2;
      v71 = _os_log_send_and_compose_impl(v70, v106, 0, 0, &_mh_execute_header, v69, 0, "Set Primary true", &cf, v100);

      if (v71)
      {
        sub_100002A8C(v71);
      }
    }

    else
    {

      v71 = 0;
    }

    free(v71);
  }

  bzero(&v109, 0x3F4uLL);
  strcpy(cStr, "/var/mobile");
  v72 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (v72)
  {
    v73 = v72;
    CFDictionarySetValue(v7, kUMUserSessionLibinfoHomeDirKey, v72);
    CFRelease(v73);
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v74 = qword_1000EB308;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      *v106 = 0;
      v75 = sub_1000011A8(1);
      v76 = v74;
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v77 = v75;
      }

      else
      {
        v77 = v75 & 0xFFFFFFFE;
      }

      if (v77)
      {
        LOWORD(cf) = 0;
        LODWORD(v100) = 2;
        v78 = _os_log_send_and_compose_impl(v77, v106, 0, 0, &_mh_execute_header, v76, 0, "FAILEd to create LibinfoPath", &cf, v100);

        if (v78)
        {
          sub_100002A8C(v78);
        }
      }

      else
      {

        v78 = 0;
      }

      free(v78);
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v79 = qword_1000EB308;
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    cf = 0;
    v80 = sub_1000011A8(1);
    v81 = v79;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v82 = v80;
    }

    else
    {
      v82 = v80 & 0xFFFFFFFE;
    }

    if (v82)
    {
      *v106 = 136315138;
      *&v106[4] = cStr;
      v83 = _os_log_send_and_compose_impl(v82, &cf, 0, 0, &_mh_execute_header, v81, 0, "Libinfo Path set to %s", v106);

      if (v83)
      {
        sub_100002A8C(v83);
      }
    }

    else
    {

      v83 = 0;
    }

    free(v83);
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v84 = qword_1000EB308;
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 0;
    v85 = sub_1000011A8(1);
    v86 = v84;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      v87 = v85;
    }

    else
    {
      v87 = v85 & 0xFFFFFFFE;
    }

    if (v87)
    {
      LOWORD(cf) = 0;
      LODWORD(v100) = 2;
      v88 = _os_log_send_and_compose_impl(v87, v106, 0, 0, &_mh_execute_header, v86, 0, "Adding to session dictionary", &cf, v100);

      if (v88)
      {
        sub_100002A8C(v88);
      }
    }

    else
    {

      v88 = 0;
    }

    free(v88);
  }

  sub_10001FC24(v7, 0);
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v89 = qword_1000EB308;
  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 0;
    v90 = sub_1000011A8(1);
    v91 = v89;
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      v92 = v90;
    }

    else
    {
      v92 = v90 & 0xFFFFFFFE;
    }

    if (v92)
    {
      LOWORD(cf) = 0;
      LODWORD(v100) = 2;
      v93 = _os_log_send_and_compose_impl(v92, v106, 0, 0, &_mh_execute_header, v91, 0, "Saving sessions", &cf, v100);

      if (v93)
      {
        sub_100002A8C(v93);
      }
    }

    else
    {

      v93 = 0;
    }

    free(v93);
  }

  sub_100018C80();
  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v94 = qword_1000EB318;
  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 0;
    v95 = sub_1000011A8(1);
    v96 = v94;
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      v97 = v95;
    }

    else
    {
      v97 = v95 & 0xFFFFFFFE;
    }

    if (v97)
    {
      LODWORD(cf) = 67109120;
      HIDWORD(cf) = valuePtr;
      v98 = _os_log_send_and_compose_impl(v97, v106, 0, 0, &_mh_execute_header, v96, 0, "Created default user %u", &cf);

      if (v98)
      {
        sub_100002A8C(v98);
      }
    }

    else
    {

      v98 = 0;
    }

    free(v98);
  }

  return v7;
}

void sub_10004F5FC(id a1)
{
  qword_1000EB328 = os_log_create(off_1000EA598, "persona");

  _objc_release_x1();
}

void sub_10004F644(uint64_t a1)
{
  if (qword_1000EB320 != -1)
  {
    sub_100089D90();
  }

  v6 = qword_1000EB318;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *&v141.st_dev = 0;
    v7 = sub_1000011A8(0);
    v1 = v6;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      *v140 = 67109120;
      *&v140[4] = a1;
      LODWORD(v133) = 8;
      v9 = _os_log_send_and_compose_impl(v8, &v141, 0, 0, &_mh_execute_header, v1, 0, "Unloading previous user %d...", v140);

      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {

      v9 = 0;
    }

    free(v9);
  }

  if (a1 == -1)
  {
    sub_100089EA8();
    goto LABEL_263;
  }

  v10 = sub_10008A2F4(qword_1000EB2E0, a1);
  if (!v10)
  {
LABEL_263:
    sub_100089E90();
LABEL_264:
    sub_100089CEC();
    goto LABEL_48;
  }

  v6 = v10;
  v4 = &off_1000EB000;
  v11 = dword_1000EB5B0;
  v3 = &off_1000EB000;
  v2 = &off_1000EB000;
  if (dword_1000EB5B0 == 1)
  {
    sub_10003E710(v10);
    memset(&v141, 0, sizeof(v141));
    if (!lstat("/private/var/mobile", &v141) && (v141.st_mode & 0xF000) == 0x4000)
    {
      if (sub_100054EFC("/private/var/mobile", 0x80000))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v12 = qword_1000EB308;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v139 = 0;
          LODWORD(v13) = sub_1000011A8(1);
          v14 = v12;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v13;
          }

          else
          {
            v13 = v13 & 0xFFFFFFFE;
          }

          if (v13)
          {
            v15 = __error();
            v16 = strerror(*v15);
            *v140 = 136315138;
            *&v140[4] = v16;
            LODWORD(v133) = 12;
            v17 = _os_log_send_and_compose_impl(v13, &v139, 0, 0, &_mh_execute_header, v14, 0, "Forced unmount of VARMOBILE failed with %s", v140);

            if (v17)
            {
              sub_100002A8C(v17);
            }
          }

          else
          {

            v17 = 0;
          }

          free(v17);
        }
      }

      if (rmdir("/private/var/mobile"))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v18 = qword_1000EB308;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v139 = 0;
          LODWORD(v19) = sub_1000011A8(1);
          v20 = v18;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v19;
          }

          else
          {
            v19 = v19 & 0xFFFFFFFE;
          }

          if (v19)
          {
            v21 = __error();
            v22 = strerror(*v21);
            *v140 = 136315138;
            *&v140[4] = v22;
            LODWORD(v133) = 12;
            v23 = _os_log_send_and_compose_impl(v19, &v139, 0, 0, &_mh_execute_header, v20, 0, "Failed to rmdir VARMOBILE with error %s", v140);

            if (v23)
            {
              sub_100002A8C(v23);
            }
          }

          else
          {

            v23 = 0;
          }

          free(v23);
        }
      }
    }

    v11 = dword_1000EB5B0;
  }

  if (v11 == 2)
  {
    v1 = @"/private/var/mobile";
  }

  else
  {
    v1 = 0;
  }

  if (qword_1000EB310 != -1)
  {
    goto LABEL_264;
  }

LABEL_48:
  v24 = v2[97];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *&v141.st_dev = 0;
    v25 = sub_1000011A8(1);
    v26 = v24;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v25;
    }

    else
    {
      v27 = v25 & 0xFFFFFFFE;
    }

    if (v27)
    {
      *v140 = 0;
      LODWORD(v133) = 2;
      v132 = v140;
      v28 = _os_log_send_and_compose_impl(v27, &v141, 0, 0, &_mh_execute_header, v26, 0, "Unmounting previous Volume");

      if (v28)
      {
        sub_100002A8C(v28);
      }
    }

    else
    {

      v28 = 0;
    }

    free(v28);
  }

  v29 = [qword_1000EB2D8 unmountVolumeWithSession:v6 mountPath:v1 error:0];
  v30 = v3[98];
  if (v29)
  {
    if (v30 != -1)
    {
      sub_100089CEC();
    }

    v31 = v2[97];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *&v141.st_dev = 0;
      v32 = sub_1000011A8(1);
      v31 = v31;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (v33)
      {
        *v140 = 0;
        LODWORD(v133) = 2;
        v34 = _os_log_send_and_compose_impl(v33, &v141, 0, 0, &_mh_execute_header, v31, 0, "Previous session APFSUser Volume unmounted!!", v140);
        goto LABEL_74;
      }

      goto LABEL_76;
    }
  }

  else
  {
    if (v30 != -1)
    {
      sub_100089CEC();
    }

    v31 = v2[97];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *&v141.st_dev = 0;
      v35 = sub_1000011A8(1);
      v31 = v31;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v36 = v35;
      }

      else
      {
        v36 = v35 & 0xFFFFFFFE;
      }

      if (v36)
      {
        *v140 = 0;
        LODWORD(v133) = 2;
        v34 = _os_log_send_and_compose_impl(v36, &v141, 0, 0, &_mh_execute_header, v31, 0, "Previous session APFSUser Volume failed to unmount", v140);
LABEL_74:
        v37 = v34;

        if (v37)
        {
          sub_100002A8C(v37);
        }

        goto LABEL_77;
      }

LABEL_76:

      v37 = 0;
LABEL_77:
      free(v37);
    }
  }

  v38 = sub_100033128(a1);
  v39 = v3[98];
  if (v38)
  {
    if (v39 != -1)
    {
      sub_100089CEC();
    }

    v40 = v2[97];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *&v141.st_dev = 0;
      v41 = sub_1000011A8(1);
      v40 = v40;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v42 = v41;
      }

      else
      {
        v42 = v41 & 0xFFFFFFFE;
      }

      if (v42)
      {
        *v140 = 67109120;
        *&v140[4] = a1;
        LODWORD(v133) = 8;
        v43 = _os_log_send_and_compose_impl(v42, &v141, 0, 0, &_mh_execute_header, v40, 0, "removed Sandbox for uid:%d", v140);
        goto LABEL_95;
      }

      goto LABEL_97;
    }
  }

  else
  {
    if (v39 != -1)
    {
      sub_100089CEC();
    }

    v40 = v2[97];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *&v141.st_dev = 0;
      v44 = sub_1000011A8(1);
      v40 = v40;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v45 = v44;
      }

      else
      {
        v45 = v44 & 0xFFFFFFFE;
      }

      if (v45)
      {
        *v140 = 67109120;
        *&v140[4] = a1;
        LODWORD(v133) = 8;
        v43 = _os_log_send_and_compose_impl(v45, &v141, 0, 0, &_mh_execute_header, v40, 0, "Failed to remove homepath to Sandbox for uid:%d", v140);
LABEL_95:
        v46 = v43;

        if (v46)
        {
          sub_100002A8C(v46);
        }

        goto LABEL_98;
      }

LABEL_97:

      v46 = 0;
LABEL_98:
      free(v46);
    }
  }

  v47 = [qword_1000EB2D8 splitUserVolumeEnabled];
  v48 = *(v4 + 364);
  if (a1 != 502 && v47 && v48 == 1)
  {
    v49 = sub_100079590(v6, kUMUserSessionVolumeDeviceNodeKey);
    v50 = v3[98];
    if (v49)
    {
      v51 = v49;
      if (v50 != -1)
      {
        sub_100089CEC();
      }

      v52 = v2[97];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *v140 = 0;
        v53 = sub_1000011A8(1);
        v54 = v52;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = v53;
        }

        else
        {
          v55 = v53 & 0xFFFFFFFE;
        }

        if (v55)
        {
          v141.st_dev = 138412546;
          *&v141.st_mode = v51;
          WORD2(v141.st_ino) = 1024;
          *(&v141.st_ino + 6) = a1;
          LODWORD(v133) = 18;
          v132 = &v141;
          v56 = _os_log_send_and_compose_impl(v55, v140, 0, 0, &_mh_execute_header, v54, 0, "Calling AKSVolumeUnmap with disk:%@, uid:%d");

          if (v56)
          {
            sub_100002A8C(v56);
          }
        }

        else
        {

          v56 = 0;
        }

        free(v56);
      }

      v61 = sub_100089A80(qword_1000EB608);
      v138 = 0;
      v62 = [v61 unmapVolume:v51 error:&v138];
      v63 = v138;

      v64 = v3[98];
      if (v62)
      {
        if (v64 != -1)
        {
          sub_100089CEC();
        }

        v57 = v2[97];
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *&v141.st_dev = 0;
          v65 = sub_1000011A8(1);
          v57 = v57;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v66 = v65;
          }

          else
          {
            v66 = v65 & 0xFFFFFFFE;
          }

          if (v66)
          {
            *v140 = 0;
            LODWORD(v133) = 2;
            v67 = _os_log_send_and_compose_impl(v66, &v141, 0, 0, &_mh_execute_header, v57, 0, "Volume Unmap of old session succeeded");
            goto LABEL_140;
          }

          goto LABEL_142;
        }
      }

      else
      {
        if (v64 != -1)
        {
          sub_100089CEC();
        }

        v57 = v2[97];
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *v140 = 0;
          LODWORD(v68) = sub_1000011A8(1);
          v57 = v57;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v68 = v68;
          }

          else
          {
            v68 = v68 & 0xFFFFFFFE;
          }

          if (v68)
          {
            v69 = [v63 code];
            v141.st_dev = 134217984;
            *&v141.st_mode = v69;
            LODWORD(v133) = 12;
            v67 = _os_log_send_and_compose_impl(v68, v140, 0, 0, &_mh_execute_header, v57, 0, "AKS volumeUnmap failed with error:%ld", &v141);
LABEL_140:
            v70 = v67;

            if (v70)
            {
              sub_100002A8C(v70);
            }

            goto LABEL_143;
          }

LABEL_142:

          v70 = 0;
LABEL_143:
          free(v70);
        }
      }
    }

    else
    {
      if (v50 != -1)
      {
        sub_100089CEC();
      }

      v57 = v2[97];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *&v141.st_dev = 0;
        v58 = sub_1000011A8(1);
        v57 = v57;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v59 = v58;
        }

        else
        {
          v59 = v58 & 0xFFFFFFFE;
        }

        if (v59)
        {
          *v140 = 0;
          LODWORD(v133) = 2;
          v132 = v140;
          v60 = _os_log_send_and_compose_impl(v59, &v141, 0, 0, &_mh_execute_header, v57, 0, "not able to find the diskNode, skipped volume map");

          if (v60)
          {
            sub_100002A8C(v60);
          }
        }

        else
        {

          v60 = 0;
        }

        free(v60);
      }

      v63 = 0;
    }

    if (v3[98] != -1)
    {
      sub_100089CEC();
    }

    v71 = v2[97];
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      *&v141.st_dev = 0;
      v72 = sub_1000011A8(1);
      v73 = v71;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v74 = v72;
      }

      else
      {
        v74 = v72 & 0xFFFFFFFE;
      }

      if (v74)
      {
        *v140 = 67109120;
        *&v140[4] = a1;
        LODWORD(v133) = 8;
        v75 = _os_log_send_and_compose_impl(v74, &v141, 0, 0, &_mh_execute_header, v73, 0, "AKS Unloading the Identity of uid %d ", v140);

        if (v75)
        {
          sub_100002A8C(v75);
        }
      }

      else
      {

        v75 = 0;
      }

      free(v75);
    }

    v76 = sub_100089A80(qword_1000EB608);
    v137 = v63;
    v77 = [v76 unloadIdentityFromSession:a1 error:&v137];
    v78 = v137;

    v79 = v3[98];
    if (v77)
    {
      if (v79 != -1)
      {
        sub_100089CEC();
      }

      v80 = v2[97];
      if (!os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_179;
      }

      *&v141.st_dev = 0;
      v81 = sub_1000011A8(1);
      v80 = v80;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v82 = v81;
      }

      else
      {
        v82 = v81 & 0xFFFFFFFE;
      }

      if (v82)
      {
        *v140 = 67109120;
        *&v140[4] = a1;
        LODWORD(v133) = 8;
        v83 = _os_log_send_and_compose_impl(v82, &v141, 0, 0, &_mh_execute_header, v80, 0, "AKS Unloading the Identity of uid %d SUCCESS ", v140);
        goto LABEL_175;
      }
    }

    else
    {
      if (v79 != -1)
      {
        sub_100089CEC();
      }

      v80 = v2[97];
      if (!os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_179;
      }

      *v140 = 0;
      LODWORD(v84) = sub_1000011A8(1);
      v80 = v80;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v84 = v84;
      }

      else
      {
        v84 = v84 & 0xFFFFFFFE;
      }

      if (v84)
      {
        v85 = [v78 code];
        v141.st_dev = 67109376;
        *&v141.st_mode = a1;
        LOWORD(v141.st_ino) = 2048;
        *(&v141.st_ino + 2) = v85;
        LODWORD(v133) = 18;
        v83 = _os_log_send_and_compose_impl(v84, v140, 0, 0, &_mh_execute_header, v80, 0, "AKS Unloading the Identity of uid %d  FAILED with error:%ld", &v141);
LABEL_175:
        v86 = v83;

        if (v86)
        {
          sub_100002A8C(v86);
        }

        goto LABEL_178;
      }
    }

    v86 = 0;
LABEL_178:
    free(v86);
LABEL_179:

    v48 = *(v4 + 364);
  }

  if (v48 != 1)
  {
    if (![qword_1000EB2D8 splitUserVolumeEnabled])
    {
LABEL_260:
      v125 = sub_10008A4DC(qword_1000EB2E0, a1);
      sub_1000948C8(qword_1000EB2E8, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);

      goto LABEL_261;
    }

    v87 = sub_100079590(v6, kUMUserSessionVolumeDeviceNodeKey);
    v88 = v3[98];
    if (v87)
    {
      v89 = v87;
      if (v88 != -1)
      {
        sub_100089CEC();
      }

      v90 = v2[97];
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        *v140 = 0;
        v91 = sub_1000011A8(1);
        v92 = v90;
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
        {
          v93 = v91;
        }

        else
        {
          v93 = v91 & 0xFFFFFFFE;
        }

        if (v93)
        {
          v141.st_dev = 138412546;
          *&v141.st_mode = v89;
          WORD2(v141.st_ino) = 1024;
          *(&v141.st_ino + 6) = a1;
          LODWORD(v133) = 18;
          v132 = &v141;
          v94 = _os_log_send_and_compose_impl(v93, v140, 0, 0, &_mh_execute_header, v92, 0, "Calling AKSVolumeUnmap with disk:%@, uid:%d");

          if (v94)
          {
            sub_100002A8C(v94);
          }
        }

        else
        {

          v94 = 0;
        }

        free(v94);
      }

      v99 = sub_100089A80(qword_1000EB608);
      v136 = 0;
      v100 = [v99 unmapVolume:v89 error:&v136];
      v101 = v136;

      v102 = v3[98];
      if (v100)
      {
        if (v102 != -1)
        {
          sub_100089CEC();
        }

        v95 = v2[97];
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          *&v141.st_dev = 0;
          v103 = sub_1000011A8(1);
          v95 = v95;
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            v104 = v103;
          }

          else
          {
            v104 = v103 & 0xFFFFFFFE;
          }

          if (v104)
          {
            *v140 = 0;
            LODWORD(v133) = 2;
            v105 = _os_log_send_and_compose_impl(v104, &v141, 0, 0, &_mh_execute_header, v95, 0, "Volume Unmap of old session succeeded");
            goto LABEL_220;
          }

          goto LABEL_222;
        }
      }

      else
      {
        if (v102 != -1)
        {
          sub_100089CEC();
        }

        v95 = v2[97];
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          *v140 = 0;
          LODWORD(v106) = sub_1000011A8(1);
          v95 = v95;
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            v106 = v106;
          }

          else
          {
            v106 = v106 & 0xFFFFFFFE;
          }

          if (v106)
          {
            v107 = [v101 code];
            v141.st_dev = 134217984;
            *&v141.st_mode = v107;
            LODWORD(v133) = 12;
            v105 = _os_log_send_and_compose_impl(v106, v140, 0, 0, &_mh_execute_header, v95, 0, "AKS volumeUnmap failed with error:%ld", &v141);
LABEL_220:
            v108 = v105;

            if (v108)
            {
              sub_100002A8C(v108);
            }

            goto LABEL_223;
          }

LABEL_222:

          v108 = 0;
LABEL_223:
          free(v108);
        }
      }
    }

    else
    {
      if (v88 != -1)
      {
        sub_100089CEC();
      }

      v95 = v2[97];
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        *&v141.st_dev = 0;
        v96 = sub_1000011A8(1);
        v95 = v95;
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          v97 = v96;
        }

        else
        {
          v97 = v96 & 0xFFFFFFFE;
        }

        if (v97)
        {
          *v140 = 0;
          LODWORD(v133) = 2;
          v132 = v140;
          v98 = _os_log_send_and_compose_impl(v97, &v141, 0, 0, &_mh_execute_header, v95, 0, "not able to find the diskNode, skipped volume map");

          if (v98)
          {
            sub_100002A8C(v98);
          }
        }

        else
        {

          v98 = 0;
        }

        free(v98);
      }

      v101 = 0;
    }

    if (v3[98] != -1)
    {
      sub_100089CEC();
    }

    v109 = v2[97];
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      *&v141.st_dev = 0;
      v110 = sub_1000011A8(1);
      v111 = v109;
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        v112 = v110;
      }

      else
      {
        v112 = v110 & 0xFFFFFFFE;
      }

      if (v112)
      {
        *v140 = 67109120;
        *&v140[4] = a1;
        LODWORD(v133) = 8;
        v113 = _os_log_send_and_compose_impl(v112, &v141, 0, 0, &_mh_execute_header, v111, 0, "AKS Unloading the Identity of uid %d ", v140);

        if (v113)
        {
          sub_100002A8C(v113);
        }
      }

      else
      {

        v113 = 0;
      }

      free(v113);
    }

    v114 = sub_100089A80(qword_1000EB608);
    v135 = v101;
    v115 = [v114 unloadIdentityFromSession:a1 error:&v135];
    v116 = v135;

    v117 = v3[98];
    if (v115)
    {
      if (v117 != -1)
      {
        sub_100089CEC();
      }

      v118 = v2[97];
      if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_259;
      }

      *&v141.st_dev = 0;
      v119 = sub_1000011A8(1);
      v118 = v118;
      if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
      {
        v120 = v119;
      }

      else
      {
        v120 = v119 & 0xFFFFFFFE;
      }

      if (v120)
      {
        *v140 = 67109120;
        *&v140[4] = a1;
        LODWORD(v133) = 8;
        v121 = _os_log_send_and_compose_impl(v120, &v141, 0, 0, &_mh_execute_header, v118, 0, "AKS Unloading the Identity of uid %d SUCCESS ", v140);
        goto LABEL_255;
      }
    }

    else
    {
      if (v117 != -1)
      {
        sub_100089CEC();
      }

      v118 = v2[97];
      if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_259;
      }

      *v140 = 0;
      LODWORD(v122) = sub_1000011A8(1);
      v118 = v118;
      if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
      {
        v122 = v122;
      }

      else
      {
        v122 = v122 & 0xFFFFFFFE;
      }

      if (v122)
      {
        v123 = [v116 code];
        v141.st_dev = 67109376;
        *&v141.st_mode = a1;
        LOWORD(v141.st_ino) = 2048;
        *(&v141.st_ino + 2) = v123;
        LODWORD(v133) = 18;
        v121 = _os_log_send_and_compose_impl(v122, v140, 0, 0, &_mh_execute_header, v118, 0, "AKS Unloading the Identity of uid %d  FAILED with error:%ld", &v141);
LABEL_255:
        v124 = v121;

        if (v124)
        {
          sub_100002A8C(v124);
        }

        goto LABEL_258;
      }
    }

    v124 = 0;
LABEL_258:
    free(v124);
LABEL_259:

    goto LABEL_260;
  }

LABEL_261:
  CFRelease(v6);
}

uint64_t sub_1000509C0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return abort_with_reason();
}

void sub_100050A7C(id a1)
{
  qword_1000EB338 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RDClient];

  _objc_release_x1();
}

void sub_100050B08(id a1)
{
  qword_1000EB348 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BDBubbled];

  _objc_release_x1();
}

void sub_100050DB0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [*(a1 + 32) xpcConnection];
    NSLog(@"Could not get proxy object for client connection: %@", v2);
  }
}

void sub_100050EA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [*(a1 + 32) xpcConnection];
    NSLog(@"Could not get proxy object for client connection: %@", v2);
  }
}

uint64_t sub_10005141C(uint64_t a1)
{
  [*(a1 + 32) setWasToldWillSwitchUser:1];
  if (qword_1000EB360 != -1)
  {
    sub_100089EE8();
  }

  v2 = qword_1000EB358;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 0;
    LODWORD(v3) = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v3;
    }

    else
    {
      v3 = v3 & 0xFFFFFFFE;
    }

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = v2;
      v9[0] = 67109120;
      v9[1] = [v4 pid];
      v6 = _os_log_send_and_compose_impl(v3, &v8, 0, 0, &_mh_execute_header, v5, 0, "willSwitchToUser:client: Set wasToldWillSwitchUser: Pid:%d", v9);

      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_100051650(uint64_t a1)
{
  if (qword_1000EB360 != -1)
  {
    sub_100089EE8();
  }

  v2 = qword_1000EB358;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 0;
    LODWORD(v3) = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v3;
    }

    else
    {
      v3 = v3 & 0xFFFFFFFE;
    }

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = v2;
      v9[0] = 67109120;
      v9[1] = [v4 pid];
      v6 = _os_log_send_and_compose_impl(v3, &v8, 0, 0, &_mh_execute_header, v5, 0, "personaListDidUpdateCompletionHandler was told to Pid:%d", v9);

      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_100051994(uint64_t a1)
{
  if (qword_1000EB360 != -1)
  {
    sub_100089EE8();
  }

  v2 = qword_1000EB358;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 0;
    LODWORD(v3) = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v3;
    }

    else
    {
      v3 = v3 & 0xFFFFFFFE;
    }

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = v2;
      v9[0] = 67109120;
      v9[1] = [v4 pid];
      v6 = _os_log_send_and_compose_impl(v3, &v8, 0, 0, &_mh_execute_header, v5, 0, "personaUpdateCallbackForMachServiceCompletionHandler was told to Pid:%d", v9);

      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1000521E4(id a1)
{
  qword_1000EB358 = os_log_create(off_1000EA598, "legacy");

  _objc_release_x1();
}

uint64_t sub_10005222C(uint64_t a1, uint64_t a2)
{
  if (qword_1000EB378 != -1)
  {
    sub_100089FD0();
  }

  return byte_1000EB370;
}

void sub_100052264(id a1)
{
  __len = 1023;
  bzero(__big, 0x400uLL);
  if (!sysctlbyname("kern.bootargs", __big, &__len, 0, 0))
  {
    if (strnstr(__big, "keybag_initlog", __len))
    {
      byte_1000EB370 = 1;
    }
  }
}

uint64_t start(int a1, uint64_t a2)
{
  v4 = +[UMDProviderSideEffects sideEffects];
  v5 = qword_1000EB608;
  qword_1000EB608 = v4;

  UMLSetInternalLogHandlers();
  if (a1 == 2)
  {
    v6 = *(a2 + 8);
    if (!strcmp(v6, "--init"))
    {
      sub_1000526C0();
    }

    else
    {
      if (strcmp(v6, "--switch"))
      {
        goto LABEL_4;
      }

      sub_100052ADC();
    }

    exit(0);
  }

LABEL_4:
  os_log_set_client_type();
  _os_log_get_nscf_formatter();
  _os_log_set_nscf_formatter();
  v7 = sub_1000577F0(UMDRotatingLog, qword_1000EB608, "/var/logs/usermanagerd.log", 0x100000, 3);
  v8 = qword_1000EB368;
  qword_1000EB368 = v7;

  if (qword_1000EB398 != -1)
  {
    sub_100089FE4();
  }

  v9 = qword_1000EB390;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 0;
    if (byte_1000EB601)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    if (byte_1000EB600)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 2;
    }

    if (v12)
    {
      v31 = 0;
      v14 = _os_log_send_and_compose_impl(v12, &v32, 0, 0, &_mh_execute_header, v9, 0, "Starting usermanagerd...", &v31, 2);
      v13 = v14;
      if (v14)
      {
        sub_100002A8C(v14);
      }
    }

    else
    {
      v13 = 0;
    }

    free(v13);
  }

  v15 = dispatch_queue_create("com.apple.mobile.keybagd.usermanagerd", 0);
  v16 = qword_1000EB610;
  qword_1000EB610 = v15;

  v17 = dispatch_queue_create("com.apple.system.libinfo.muser", 0);
  v18 = qword_1000EB618;
  qword_1000EB618 = v17;

  v19 = dispatch_queue_create("com.apple.usermanagerd.userswitch", 0);
  v20 = qword_1000EB620;
  qword_1000EB620 = v19;

  v21 = dispatch_queue_create("com.apple.usermanagerd.volumemigrator", 0);
  v22 = qword_1000EB628;
  qword_1000EB628 = v21;

  if (sub_100052DEC())
  {
    if (qword_1000EB388 != -1)
    {
      sub_100089FF8();
    }

    v23 = qword_1000EB380;
    if (os_log_type_enabled(qword_1000EB380, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 0;
      if (byte_1000EB601)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      if (byte_1000EB600)
      {
        v25 = 2;
      }

      else
      {
        v25 = v24;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = 2;
      }

      v31 = 0;
      LODWORD(v30) = 2;
      v27 = _os_log_send_and_compose_impl(v26, &v32, 0, 0, &_mh_execute_header, v23, 0, "Enhanced APFS Mode Set", &v31, v30);
      v28 = v27;
      if (v27)
      {
        sub_100002A8C(v27);
      }

      free(v28);
    }

    byte_1000EB602 = 1;
  }

  if (!sub_100089EFC() && (os_variant_uses_ephemeral_storage() & 1) == 0)
  {
    sub_100019A54();
  }

  fwrite("****** USERMANAGERD SESSION SETUP DONE  ****\n", 0x2DuLL, 1uLL, __stdoutp);
  sub_100078B40();
  sub_10006C714();
  sub_100078C2C();
  sub_10003661C();
  byte_1000EB601 = 1;
  _os_log_set_nscf_formatter();
  openlog("usermanagerd", 1, 24);
  CFRunLoopRun();
  return 0;
}

size_t sub_1000526C0()
{
  byte_1000EB600 = 1;
  if (sub_100089EFC())
  {
    v0 = __stdoutp;
    v1 = "****** DIAGNOSTICS MODE ENABLED, SKIP INIT ****\n";
    v2 = 48;
LABEL_5:

    return fwrite(v1, v2, 1uLL, v0);
  }

  if (os_variant_uses_ephemeral_storage())
  {
    v0 = __stdoutp;
    v1 = "****** DEVICE HAS EPHEMERAL DATA VOLUME, SKIP INIT ****\n";
    v2 = 56;
    goto LABEL_5;
  }

  if (qword_1000EB378 != -1)
  {
    sub_100089FD0();
  }

  if (byte_1000EB370)
  {
    v4 = "/var/logs/usermanagerd_init.log";
  }

  else
  {
    v4 = "/var/logs/usermanagerd.log";
  }

  v5 = sub_1000577F0(UMDRotatingLog, qword_1000EB608, v4, 0x100000, 3);
  v6 = qword_1000EB368;
  qword_1000EB368 = v5;

  fwrite("****** IN UMD_INIT ****\n", 0x18uLL, 1uLL, __stdoutp);
  v7 = dispatch_queue_create("com.apple.system.libinfo.muser", 0);
  v8 = qword_1000EB618;
  qword_1000EB618 = v7;

  fwrite("****** STARTING EARLYBOOT SETUP ****\n", 0x25uLL, 1uLL, __stdoutp);
  if (qword_1000EB388 != -1)
  {
    sub_10008A020();
  }

  v9 = qword_1000EB380;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 0;
    if (byte_1000EB601)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    if (byte_1000EB600)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = 2;
    }

    v30 = 0;
    v13 = _os_log_send_and_compose_impl(v12, &v31, 0, 0, &_mh_execute_header, v9, 0, "STARTING EARLYBOOT SETUP", &v30, 2);
    v14 = v13;
    if (v13)
    {
      sub_100002A8C(v13);
    }

    free(v14);
  }

  v15 = dispatch_queue_create("com.apple.system.libinfo.muser", 0);
  v16 = qword_1000EB618;
  qword_1000EB618 = v15;

  if (sub_100052DEC())
  {
    if (qword_1000EB388 != -1)
    {
      sub_100089FF8();
    }

    v17 = qword_1000EB380;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 0;
      if (byte_1000EB601)
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      if (byte_1000EB600)
      {
        v19 = 2;
      }

      else
      {
        v19 = v18;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = 2;
      }

      v30 = 0;
      LODWORD(v29) = 2;
      v21 = _os_log_send_and_compose_impl(v20, &v31, 0, 0, &_mh_execute_header, v17, 0, "Enhanced APFS Mode Set", &v30, v29);
      v22 = v21;
      if (v21)
      {
        sub_100002A8C(v21);
      }

      free(v22);
    }

    byte_1000EB602 = 1;
  }

  sub_100037918();
  if (qword_1000EB388 != -1)
  {
    sub_100089FF8();
  }

  v23 = qword_1000EB380;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 0;
    if (byte_1000EB601)
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    if (byte_1000EB600)
    {
      v25 = 2;
    }

    else
    {
      v25 = v24;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
    }

    else
    {
      v26 = 2;
    }

    v30 = 0;
    LODWORD(v29) = 2;
    v27 = _os_log_send_and_compose_impl(v26, &v31, 0, 0, &_mh_execute_header, v23, 0, "DONE EARLYBOOT SETUP", &v30, v29);
    v28 = v27;
    if (v27)
    {
      sub_100002A8C(v27);
    }

    free(v28);
  }

  fwrite("****** DONE EARLYBOOT SETUP ****\n", 0x21uLL, 1uLL, __stdoutp);
  return fwrite("****** DONE UMD_INIT ****\n", 0x1AuLL, 1uLL, __stdoutp);
}

void sub_100052ADC()
{
  byte_1000EB601 = 1;
  v0 = sub_1000577F0(UMDRotatingLog, qword_1000EB608, "/var/logs/usermanagerd.log", 0x100000, 3);
  v1 = qword_1000EB368;
  qword_1000EB368 = v0;

  v2 = dispatch_queue_create("com.apple.system.libinfo.muser", 0);
  v3 = qword_1000EB618;
  qword_1000EB618 = v2;

  if (qword_1000EB398 != -1)
  {
    sub_100089FE4();
  }

  v4 = qword_1000EB390;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 0;
    if (byte_1000EB601)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    if (byte_1000EB600)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 2;
    }

    if (v7)
    {
      v23 = 0;
      v8 = _os_log_send_and_compose_impl(v7, &v24, 0, 0, &_mh_execute_header, v4, 0, "Starting User Switch Task...", &v23, 2);
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  if (sub_100052DEC())
  {
    if (qword_1000EB388 != -1)
    {
      sub_100089FF8();
    }

    v10 = qword_1000EB380;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 0;
      if (byte_1000EB601)
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      if (byte_1000EB600)
      {
        v12 = 2;
      }

      else
      {
        v12 = v11;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = 2;
      }

      v23 = 0;
      LODWORD(v22) = 2;
      v14 = _os_log_send_and_compose_impl(v13, &v24, 0, 0, &_mh_execute_header, v10, 0, "Enhanced APFS Mode Set", &v23, v22);
      v15 = v14;
      if (v14)
      {
        sub_100002A8C(v14);
      }

      free(v15);
    }

    byte_1000EB602 = 1;
  }

  sub_100042F8C();
  if (qword_1000EB398 != -1)
  {
    sub_10008A034();
  }

  v16 = qword_1000EB390;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 0;
    if (byte_1000EB601)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (byte_1000EB600)
    {
      v18 = 2;
    }

    else
    {
      v18 = v17;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 & 2;
    }

    if (v19)
    {
      v23 = 0;
      LODWORD(v22) = 2;
      v20 = _os_log_send_and_compose_impl(v19, &v24, 0, 0, &_mh_execute_header, v16, 0, "User Switch Task complete", &v23, v22);
      v21 = v20;
      if (v20)
      {
        sub_100002A8C(v20);
      }
    }

    else
    {
      v21 = 0;
    }

    free(v21);
  }
}

BOOL sub_100052DEC()
{
  v0 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/filesystems");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"e-apfs", kCFAllocatorDefault, 0);
    v3 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
      if (qword_1000EB388 != -1)
      {
        sub_10008A020();
      }

      v4 = qword_1000EB380;
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v15 = 0;
      if (byte_1000EB601)
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      if (byte_1000EB600)
      {
        v6 = 2;
      }

      else
      {
        v6 = v5;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = 2;
      }

      LOWORD(v14) = 0;
      v8 = _os_log_send_and_compose_impl(v7, &v15, 0, 0, &_mh_execute_header, v4, 0, "Found EAPFS property in IODT", &v14, 2, v14);
    }

    else
    {
      if (qword_1000EB388 != -1)
      {
        sub_10008A020();
      }

      v4 = qword_1000EB380;
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v15 = 0;
      if (byte_1000EB601)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      if (byte_1000EB600)
      {
        v10 = 2;
      }

      else
      {
        v10 = v9;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = 2;
      }

      LOWORD(v14) = 0;
      v8 = _os_log_send_and_compose_impl(v11, &v15, 0, 0, &_mh_execute_header, v4, 0, "Could not Find EAPFS property in IODT", &v14, 2, v14);
    }

    v12 = v8;
    if (v8)
    {
      sub_100002A8C(v8);
    }

    free(v12);
LABEL_33:

    IOObjectRelease(v1);
    return v3;
  }

  return 0;
}

void sub_100052FD8(id a1)
{
  qword_1000EB380 = os_log_create(off_1000EA598, "legacy");

  _objc_release_x1();
}

void sub_10005301C(id a1)
{
  qword_1000EB390 = os_log_create(off_1000EA598, "default");

  _objc_release_x1();
}

id sub_100053060(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_1000530C0([UMDUserManager alloc], v2);

  return v3;
}

void *sub_1000530C0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = UMDUserManager;
    v4 = objc_msgSendSuper2(&v6, "init");
    if (!v4)
    {
      sub_100088DDC();
    }

    a1 = v4;
    sub_10008B7DC(v3, v4);
  }

  return a1;
}

uint64_t sub_100053130(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10[0] = @"BLOB";
    v10[1] = @"BLOBLEN";
    v11[0] = v3;
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 length]);
    v11[1] = v5;
    v6 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    v7 = sub_100099294(v6);

    if (!v7)
    {
      sub_100088DDC();
    }

    sub_10008B82C(a1, v7, &v9);
    a1 = v9;
  }

  return a1;
}

id sub_100053238(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = sub_100098CCC(v3, kUMUserSessionIDKey, 0xFFFFFFFFLL);
    if (*__error() == 2)
    {
      sub_100088DDC();
    }

    v6 = sub_100098ECC(v4, kUMUserSessionShortNameKey);
    if (!v6)
    {
      sub_100088DDC();
    }

    v7 = v6;
    v8 = sub_100098CCC(v4, kUMUserSessionGroupIDKey, 0xFFFFFFFFLL);
    if (*__error() == 2)
    {
      sub_100088DDC();
    }

    v9 = sub_100098ECC(v4, kUMUserSessionLibinfoHomeDirKey);
    if (!v9)
    {
      sub_100088DDC();
    }

    v10 = v9;
    v11 = sub_100098ECC(v4, kUMUserSessionUUIDKey);
    v12 = sub_100016954(NSUUID, v11);

    if (!v12)
    {
      sub_100088DDC();
    }

    if (v5 != v8)
    {
      sub_100088DDC();
    }

    v17 = v12;
    v13 = [NSArray arrayWithObjects:&v17 count:1];
    v14 = [NSSet setWithArray:v13];

    v15 = sub_1000746C0(UMDarwinDirectoryUser, v7, v5, v12, v12, v7, v10, @"/bin/bash", v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_100053450(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = sub_100098CCC(v3, kUMUserSessionGroupIDKey, 0xFFFFFFFFLL);
    if (*__error() == 2)
    {
      sub_100088DDC();
    }

    v6 = sub_100098ECC(v4, kUMUserSessionShortNameKey);
    if (!v6)
    {
      sub_100088DDC();
    }

    v7 = v6;
    v8 = sub_100098ECC(v4, kUMUserSessionLibinfoHomeDirKey);
    if (!v8)
    {
      sub_100088DDC();
    }

    v9 = v8;
    v10 = sub_100098ECC(v4, kUMUserSessionUUIDKey);
    v11 = sub_100016954(NSUUID, v10);

    if (!v11)
    {
      sub_100088DDC();
    }

    a1 = sub_100074B58(UMDarwinDirectoryGroup, v7, v5, v11, v7);
  }

  return a1;
}

void sub_100053590(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = sub_100053238(v5, v6);
  v9 = sub_100053450(*(a1 + 32), *(a1 + 40));
  [v8 addObject:v10];

  [v7 addObject:v9];
}

void sub_10005363C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [v5 copy];
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = sub_100088F2C(v12);
        v14 = [v13 isEqualToString:*(a1 + 32)];

        if (v14)
        {
          [v5 removeObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [v6 copy];
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * j);
        v21 = sub_100088F2C(v20);
        v22 = [v21 isEqualToString:*(a1 + 32)];

        if (v22)
        {
          [v6 removeObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }
}

void sub_10005388C(id a1)
{
  qword_1000EB3A0 = os_log_create(off_1000EA598, "user");

  _objc_release_x1();
}

uint64_t sub_100053930(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t sub_100053940()
{

  return sub_1000011A8(0);
}

uint64_t sub_100053958(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

BOOL sub_100053980()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL sub_10005399C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL sub_1000539B4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL sub_1000539D0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL sub_100053A00(const char *a1, char *a2, CFIndex a3, uint64_t a4, char *a5)
{
  v7 = sub_100053A84(a1, a4, 1, a5);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  Value = CFDictionaryGetValue(v7, @"MKBUserSessionVolumeDeviceNode");
  v10 = Value != 0;
  if (Value)
  {
    CFStringGetCString(Value, a2, a3, 0x8000100u);
  }

  CFRelease(v8);
  return v10;
}

__CFDictionary *sub_100053A84(const char *a1, int a2, int a3, char *a4)
{
  *existing = 0;
  prefix = 0;
  v93 = 0;
  properties = 0;
  theDict = 0;
  parent = 0;
  valuePtr = 0;
  memset(name, 0, 128);
  v6 = &off_1000EB000;
  if (a3)
  {
    BootDevice = APFSContainerGetBootDevice();
    if (BootDevice)
    {
      v8 = BootDevice;
      if (qword_1000EB3B8 != -1)
      {
        sub_10008B888();
      }

      v9 = qword_1000EB3B0;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_143;
      }

      *v97 = 0;
      v10 = sub_1000011A8(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        LODWORD(v100[0]) = 67109120;
        HIDWORD(v100[0]) = v8;
        v12 = _os_log_send_and_compose_impl(v11, v97, 0, 0, &_mh_execute_header, v9, 0, "APFSContainerGetBootDevice failed with %d, bailing..", v100);
        goto LABEL_32;
      }

      goto LABEL_141;
    }

    if (qword_1000EB3B8 != -1)
    {
      sub_10008B888();
    }

    v13 = qword_1000EB3B0;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v100[0] = 0;
      v14 = sub_1000011A8(0);
      v15 = v13;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v14;
      }

      else
      {
        v16 = v14 & 0xFFFFFFFE;
      }

      if (v16)
      {
        *v97 = 138412290;
        *&v97[4] = prefix;
        v17 = _os_log_send_and_compose_impl(v16, v100, 0, 0, &_mh_execute_header, v15, 0, "BootDevice is %@", v97, 12);

        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {

        v17 = 0;
      }

      free(v17);
    }
  }

  v18 = IOServiceMatching("AppleAPFSContainer");
  if (IOServiceGetMatchingServices(kIOMainPortDefault, v18, &existing[1]))
  {
    if (qword_1000EB3B8 != -1)
    {
      sub_10008B888();
    }

    v9 = qword_1000EB3B0;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_143;
    }

    *v97 = 0;
    v19 = sub_1000011A8(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 0xFFFFFFFE;
    }

    if (v20)
    {
      LOWORD(v100[0]) = 0;
      v12 = _os_log_send_and_compose_impl(v20, v97, 0, 0, &_mh_execute_header, v9, 0, "unable to scan IORegistry");
LABEL_32:
      v21 = v12;
      if (v12)
      {
        sub_100002A8C(v12);
      }

      goto LABEL_142;
    }

LABEL_141:
    v21 = 0;
LABEL_142:
    free(v21);
LABEL_143:
    v28 = 0;
    v25 = 0;
    v22 = 0;
    goto LABEL_144;
  }

  v85 = a3;
  v22 = 0;
  v23 = 0;
  v86 = a2;
  do
  {
    v24 = IOIteratorNext(existing[1]);
    if (!v24)
    {
      goto LABEL_137;
    }

    v25 = v24;
    parent = 0;
    existing[0] = 0;
    if (IORegistryEntryGetParentEntry(v24, "IOService", &parent) || IORegistryEntryGetChildIterator(v25, "IOService", existing))
    {
      if (v6[119] != -1)
      {
        sub_10008B888();
      }

      v9 = qword_1000EB3B0;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_193;
      }

      *v97 = 0;
      v70 = sub_1000011A8(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v71 = v70;
      }

      else
      {
        v71 = v70 & 0xFFFFFFFE;
      }

      if (v71)
      {
        LOWORD(v100[0]) = 0;
        LODWORD(v84) = 2;
        v72 = _os_log_send_and_compose_impl(v71, v97, 0, 0, &_mh_execute_header, v9, 0, "unable to scan IORegistry", v100, v84);
        goto LABEL_187;
      }

LABEL_191:
      v75 = 0;
LABEL_192:
      free(v75);
LABEL_193:
      v28 = 0;
      goto LABEL_144;
    }

    v93 = 0;
    properties = 0;
    if (IORegistryEntryCreateCFProperties(parent, &properties, kCFAllocatorDefault, 0) || IORegistryEntryCreateCFProperties(v25, &v93, kCFAllocatorDefault, 0))
    {
      if (v6[119] != -1)
      {
        sub_10008B888();
      }

      v9 = qword_1000EB3B0;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_193;
      }

      *v97 = 0;
      v73 = sub_1000011A8(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v74 = v73;
      }

      else
      {
        v74 = v73 & 0xFFFFFFFE;
      }

      if (v74)
      {
        LOWORD(v100[0]) = 0;
        LODWORD(v84) = 2;
        v72 = _os_log_send_and_compose_impl(v74, v97, 0, 0, &_mh_execute_header, v9, 0, "unable to fetch IORegistry properties", v100, v84);
LABEL_187:
        v75 = v72;
        if (v72)
        {
          sub_100002A8C(v72);
        }

        goto LABEL_192;
      }

      goto LABEL_191;
    }

    if (v93)
    {
      CFRelease(v93);
      v93 = 0;
    }

    if (properties)
    {
      CFRelease(properties);
      properties = 0;
    }

    v87 = v23;
    if (parent)
    {
      IOObjectRelease(parent);
      parent = 0;
    }

    v26 = IOIteratorNext(existing[0]);
    v27 = v26 == 0;
    if (v26)
    {
      v28 = v26;
      while (!IOObjectConformsTo(v28, "AppleAPFSVolume"))
      {
        v30 = 0;
LABEL_127:
        IOObjectRelease(v28);
        if ((v30 & 1) == 0)
        {
          v28 = IOIteratorNext(existing[0]);
          v27 = v28 == 0;
          if (v28)
          {
            continue;
          }
        }

        goto LABEL_133;
      }

      if (IORegistryEntryCreateCFProperties(v28, &theDict, kCFAllocatorDefault, 0))
      {
        if (v6[119] != -1)
        {
          sub_10008B888();
        }

        v9 = qword_1000EB3B0;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v97 = 0;
          v66 = sub_1000011A8(0);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v67 = v66;
          }

          else
          {
            v67 = v66 & 0xFFFFFFFE;
          }

          if (v67)
          {
            LOWORD(v100[0]) = 0;
            LODWORD(v84) = 2;
            v68 = _os_log_send_and_compose_impl(v67, v97, 0, 0, &_mh_execute_header, v9, 0, "unable to fetch IORegistry properties", v100, v84);
            v69 = v68;
            if (v68)
            {
              sub_100002A8C(v68);
            }
          }

          else
          {
            v69 = 0;
          }

          free(v69);
        }

LABEL_144:

        goto LABEL_145;
      }

      if (a2 && (Value = CFDictionaryGetValue(theDict, @"RoleValue")) != 0 && (CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr), valuePtr != a2) || (memset(name, 0, 128), IORegistryEntryGetName(v28, name), strncmp(a1, name, 0x80uLL)))
      {
        v30 = 0;
        goto LABEL_125;
      }

      v31 = CFDictionaryGetValue(theDict, @"BSD Name");
      if (v31 && v85 && prefix)
      {
        if (v6[119] != -1)
        {
          sub_10008B888();
        }

        v32 = qword_1000EB3B0;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v100[0] = 0;
          v33 = sub_1000011A8(0);
          v34 = v32;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = v33;
          }

          else
          {
            v35 = v33 & 0xFFFFFFFE;
          }

          if (v35)
          {
            *v97 = 138412546;
            *&v97[4] = prefix;
            v98 = 2112;
            v99 = v31;
            LODWORD(v84) = 22;
            v36 = _os_log_send_and_compose_impl(v35, v100, 0, 0, &_mh_execute_header, v34, 0, "Container: %@, volumeDiskNode:%@", v97, v84);

            if (v36)
            {
              sub_100002A8C(v36);
            }
          }

          else
          {

            v36 = 0;
          }

          v6 = &off_1000EB000;
          free(v36);
        }

        HasPrefix = CFStringHasPrefix(v31, prefix);
        v38 = v6[119];
        if (HasPrefix)
        {
          if (v38 != -1)
          {
            sub_10008B888();
          }

          v39 = qword_1000EB3B0;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v100[0] = 0;
            v40 = sub_1000011A8(0);
            v41 = v39;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v42 = v40;
            }

            else
            {
              v42 = v40 & 0xFFFFFFFE;
            }

            if (v42)
            {
              *v97 = 138412290;
              *&v97[4] = v31;
              LODWORD(v84) = 12;
              v43 = _os_log_send_and_compose_impl(v42, v100, 0, 0, &_mh_execute_header, v41, 0, "Found DiskNode: %@ within the Boot Container", v97, v84);

              if (v43)
              {
                sub_100002A8C(v43);
              }
            }

            else
            {

              v43 = 0;
            }

            free(v43);
            v6 = &off_1000EB000;
          }

          goto LABEL_92;
        }

        if (v38 != -1)
        {
          sub_10008B888();
        }

        v44 = qword_1000EB3B0;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v100[0] = 0;
          v45 = sub_1000011A8(0);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v46 = v45;
          }

          else
          {
            v46 = v45 & 0xFFFFFFFE;
          }

          if (v46)
          {
            *v97 = 138412290;
            *&v97[4] = v31;
            LODWORD(v84) = 12;
            v47 = _os_log_send_and_compose_impl(v46, v100, 0, 0, &_mh_execute_header, v44, 0, " Skipping the diskNode:%@ as its not in the Boot Container", v97, v84);
            v48 = v47;
            if (v47)
            {
              sub_100002A8C(v47);
            }
          }

          else
          {
            v48 = 0;
          }

          free(v48);
          v6 = &off_1000EB000;
        }

        v30 = 0;
      }

      else
      {
LABEL_92:
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (!Mutable)
        {
          if (v6[119] != -1)
          {
            sub_10008B888();
          }

          v79 = qword_1000EB3B0;
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            *v97 = 0;
            v80 = sub_1000011A8(0);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              v81 = v80;
            }

            else
            {
              v81 = v80 & 0xFFFFFFFE;
            }

            if (v81)
            {
              LOWORD(v100[0]) = 0;
              LODWORD(v84) = 2;
              v83 = _os_log_send_and_compose_impl(v81, v97, 0, 0, &_mh_execute_header, v79, 0, "Out of Memory!!! could not allocate dict, exiting....", v100, v84);
              v82 = v83;
              if (v83)
              {
                sub_100002A8C(v83);
              }
            }

            else
            {
              v82 = 0;
            }

            free(v82);
          }

          exit(-1);
        }

        v22 = Mutable;
        CFDictionarySetValue(Mutable, @"MKBUserSessionVolumeDeviceNode", v31);
        v50 = CFDictionaryGetValue(theDict, @"UUID");
        CFDictionarySetValue(v22, @"MKBUserSessionVolumeUUID", v50);
        if (a4)
        {
          v51 = CFDictionaryGetValue(theDict, @"Encrypted");
          if (!v51 || (v52 = v51, v53 = CFGetTypeID(v51), v54 = v53 == CFBooleanGetTypeID(), v6 = &off_1000EB000, v54) && v52 == kCFBooleanFalse)
          {
            if (v6[119] != -1)
            {
              sub_10008B888();
            }

            v55 = qword_1000EB3B0;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *v97 = 0;
              v56 = sub_1000011A8(0);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                v57 = v56;
              }

              else
              {
                v57 = v56 & 0xFFFFFFFE;
              }

              if (v57)
              {
                LOWORD(v100[0]) = 0;
                LODWORD(v84) = 2;
                v58 = _os_log_send_and_compose_impl(v57, v97, 0, 0, &_mh_execute_header, v55, 0, "Volume is UnEncrypted", v100, v84);
                v59 = v58;
                if (v58)
                {
                  sub_100002A8C(v58);
                }
              }

              else
              {
                v59 = 0;
              }

              free(v59);
            }

            v64 = 0;
          }

          else
          {
            if (qword_1000EB3B8 != -1)
            {
              sub_10008B888();
            }

            v55 = qword_1000EB3B0;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *v97 = 0;
              v60 = sub_1000011A8(0);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                v61 = v60;
              }

              else
              {
                v61 = v60 & 0xFFFFFFFE;
              }

              if (v61)
              {
                LOWORD(v100[0]) = 0;
                LODWORD(v84) = 2;
                v62 = _os_log_send_and_compose_impl(v61, v97, 0, 0, &_mh_execute_header, v55, 0, "Volume is Encrypted", v100, v84);
                v63 = v62;
                if (v62)
                {
                  sub_100002A8C(v62);
                }
              }

              else
              {
                v63 = 0;
              }

              free(v63);
            }

            v64 = 1;
          }

          *a4 = v64;
        }

        v30 = 1;
      }

      a2 = v86;
LABEL_125:
      if (theDict)
      {
        CFRelease(theDict);
        theDict = 0;
      }

      goto LABEL_127;
    }

LABEL_133:
    if (existing[0])
    {
      IOObjectRelease(existing[0]);
      existing[0] = 0;
    }

    IOObjectRelease(v25);
    v23 = v87 + 1;
  }

  while (v27);
  v23 = 1;
LABEL_137:
  if (existing[1])
  {
    IOObjectRelease(existing[1]);
    existing[1] = 0;
  }

  if (!v23)
  {
    if (v6[119] != -1)
    {
      sub_10008B888();
    }

    v9 = qword_1000EB3B0;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v97 = 0;
      v76 = sub_1000011A8(0);
      v9 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v77 = v76;
      }

      else
      {
        v77 = v76 & 0xFFFFFFFE;
      }

      if (v77)
      {
        LOWORD(v100[0]) = 0;
        LODWORD(v84) = 2;
        v78 = _os_log_send_and_compose_impl(v77, v97, 0, 0, &_mh_execute_header, v9, 0, "no APFS containers found", v100, v84);

        if (v78)
        {
          sub_100002A8C(v78);
        }
      }

      else
      {

        v78 = 0;
      }

      free(v78);
    }

    v28 = 0;
    v25 = 0;
    goto LABEL_144;
  }

  v28 = 0;
  v25 = 0;
LABEL_145:
  if (prefix)
  {
    CFRelease(prefix);
    prefix = 0;
  }

  if (v93)
  {
    CFRelease(v93);
    v93 = 0;
  }

  if (properties)
  {
    CFRelease(properties);
    properties = 0;
  }

  if (parent)
  {
    IOObjectRelease(parent);
    parent = 0;
  }

  if (existing[0])
  {
    IOObjectRelease(existing[0]);
    existing[0] = 0;
  }

  if (v25)
  {
    IOObjectRelease(v25);
  }

  if (existing[1])
  {
    IOObjectRelease(existing[1]);
    existing[1] = 0;
  }

  if (v28)
  {
    IOObjectRelease(v28);
  }

  return v22;
}

BOOL sub_10005489C(char *a1, CFIndex a2)
{
  v14 = 1;
  v3 = sub_100053A00("Data", a1, a2, 64, &v14);
  if (v3)
  {
    if (qword_1000EB3B8 != -1)
    {
      sub_10008B888();
    }

    v4 = qword_1000EB3B0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v5 = sub_1000011A8(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        v7 = "TRUE";
        if (!v14)
        {
          v7 = "FALSE";
        }

        *v15 = 136315394;
        *&v15[4] = a1;
        v16 = 2080;
        v17 = v7;
        v8 = _os_log_send_and_compose_impl(v6, &v13, 0, 0, &_mh_execute_header, v4, 0, "Found SystemData Volume:%s isEncrypted:%s", v15, 22);
        goto LABEL_20;
      }

      goto LABEL_22;
    }
  }

  else
  {
    if (qword_1000EB3B8 != -1)
    {
      sub_10008B888();
    }

    v4 = qword_1000EB3B0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      v9 = sub_1000011A8(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v8 = _os_log_send_and_compose_impl(v10, v15, 0, 0, &_mh_execute_header, v4, 0, "Failed to find SDV");
LABEL_20:
        v11 = v8;
        if (v8)
        {
          sub_100002A8C(v8);
        }

        goto LABEL_23;
      }

LABEL_22:
      v11 = 0;
LABEL_23:
      free(v11);
    }
  }

  return v3;
}

BOOL sub_100054A9C(char *a1, CFIndex a2)
{
  v14 = 1;
  v3 = sub_100053A00("User", a1, a2, 2, &v14);
  if (v3)
  {
    if (qword_1000EB3B8 != -1)
    {
      sub_10008B888();
    }

    v4 = qword_1000EB3B0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v5 = sub_1000011A8(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        v7 = "TRUE";
        if (!v14)
        {
          v7 = "FALSE";
        }

        *v15 = 136315394;
        *&v15[4] = a1;
        v16 = 2080;
        v17 = v7;
        v8 = _os_log_send_and_compose_impl(v6, &v13, 0, 0, &_mh_execute_header, v4, 0, "Found Primary User Volume:%s  isEncrypted:%s", v15, 22);
        goto LABEL_20;
      }

      goto LABEL_22;
    }
  }

  else
  {
    if (qword_1000EB3B8 != -1)
    {
      sub_10008B888();
    }

    v4 = qword_1000EB3B0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      v9 = sub_1000011A8(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v8 = _os_log_send_and_compose_impl(v10, v15, 0, 0, &_mh_execute_header, v4, 0, "Failed to find Primary USER volume");
LABEL_20:
        v11 = v8;
        if (v8)
        {
          sub_100002A8C(v8);
        }

        goto LABEL_23;
      }

LABEL_22:
      v11 = 0;
LABEL_23:
      free(v11);
    }
  }

  return v3;
}

uint64_t sub_100054C9C(const char **__argv)
{
  *v16 = 0;
  if (posix_spawn(&v16[1], *__argv, 0, 0, __argv, 0))
  {
    if (qword_1000EB3B8 != -1)
    {
      sub_10008B888();
    }

    v2 = qword_1000EB3B0;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v3 = sub_1000011A8(0);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        v5 = *__argv;
        v17 = 136315138;
        v18 = v5;
        v6 = _os_log_send_and_compose_impl(v4, &v15, 0, 0, &_mh_execute_header, v2, 0, "Unable to spawn %s", &v17);
        v7 = v6;
        if (v6)
        {
          sub_100002A8C(v6);
        }
      }

      else
      {
        v7 = 0;
      }

      free(v7);
    }
  }

  if (waitpid(v16[1], v16, 0) == -1)
  {
    if (qword_1000EB3B8 != -1)
    {
      sub_10008B888();
    }

    v8 = qword_1000EB3B0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      LODWORD(v9) = sub_1000011A8(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v9;
      }

      else
      {
        v9 = v9 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v10 = v8;
        v11 = __error();
        v12 = strerror(*v11);
        v17 = 136315138;
        v18 = v12;
        v13 = _os_log_send_and_compose_impl(v9, &v15, 0, 0, &_mh_execute_header, v10, 0, "Cannot wait for pid: %s", &v17);

        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }
  }

  if ((v16[0] & 0x7F) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return BYTE1(v16[0]);
  }
}

uint64_t sub_100054EFC(const char *a1, int a2)
{
  v21 = a2;
  *v22 = 0;
  v3 = getmntinfo(v22, 2);
  if (v3)
  {
    v4 = v3;
    v5 = (*v22 + 2168 * v3 - 2080);
    v6 = v4 + 1;
    while (--v6 >= 1)
    {
      v7 = v5 - 2168;
      v8 = strcmp(v5, a1);
      v5 = v7;
      if (!v8)
      {
        v9 = *(v7 + 266);
        v29 = 14;
        if (sysctlnametomib("vfs.generic.ctlbyfsid", &v30, &v29) != -1)
        {
          v10 = v29;
          *(&v30 + v29) = 65538;
          v23 = 0;
          v26 = 0u;
          v27 = 0u;
          v28 = 0;
          *v22 = 1;
          *&v22[4] = v9;
          v24 = &v21;
          v25 = 4uLL;
          if ((sysctl(&v30, v10 + 1, 0, 0, v22, 0x50uLL) & 0x80000000) == 0)
          {
            return 0;
          }
        }

        v17 = *__error();
        if (qword_1000EB3C8 != -1)
        {
          sub_10008B8B0();
        }

        v13 = qword_1000EB3C0;
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        *v22 = 0;
        v18 = sub_1000011A8(1);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
        }

        else
        {
          v19 = v18 & 0xFFFFFFFE;
        }

        if (v19)
        {
          v30 = 67109120;
          v31 = v17;
          v16 = _os_log_send_and_compose_impl(v19, v22, 0, 0, &_mh_execute_header, v13, 0, "sysctl_fsid failed with error:%d", &v30);
          goto LABEL_24;
        }

        goto LABEL_26;
      }
    }
  }

  v12 = *__error();
  if (qword_1000EB3C8 != -1)
  {
    sub_10008B8B0();
  }

  v13 = qword_1000EB3C0;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    v14 = sub_1000011A8(1);
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
      v30 = 67109120;
      v31 = v12;
      v16 = _os_log_send_and_compose_impl(v15, v22, 0, 0, &_mh_execute_header, v13, 0, "getmntfsid failed with error:%d", &v30);
LABEL_24:
      v20 = v16;
      if (v16)
      {
        sub_100002A8C(v16);
      }
    }

    else
    {
LABEL_26:
      v20 = 0;
    }

    free(v20);
  }

LABEL_28:

  return 0xFFFFFFFFLL;
}

void sub_1000551B0(id a1)
{
  qword_1000EB3B0 = os_log_create(off_1000EA598, "userlayout");

  _objc_release_x1();
}

void sub_1000551F8(id a1)
{
  qword_1000EB3C0 = os_log_create(off_1000EA598, "legacy");

  _objc_release_x1();
}

id *sub_100055240(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  v9 = sub_1000552D0([UMDGeneration alloc], v8, v7, v6);

  return v9;
}

id *sub_1000552D0(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = UMDGeneration;
    v10 = objc_msgSendSuper2(&v12, "init");
    if (!v10)
    {
      sub_100088DDC();
    }

    a1 = v10;
    objc_storeStrong(v10 + 3, a4);
    a1[4] = v7;
    a1[5] = v8;
    *(a1 + 2) = -1;
    a1[2] = 0;
  }

  return a1;
}

uint64_t sub_100055380(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = *(result + 16);
    if (!result)
    {
      sub_100088DDC();
    }
  }

  return result;
}

uint64_t sub_1000553A0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(result + 16))
    {
      sub_100088DDC();
    }

    *(result + 16) = a2;
  }

  return result;
}

uint64_t sub_1000553E0(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

BOOL sub_10005540C()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

UMDPersonaManifestEmbedded *sub_1000557E4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  if (qword_1000EB3D8 != -1)
  {
    sub_10008BDB0();
  }

  v4 = qword_1000EB3D0;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v29 = 0;
    v5 = sub_1000011A8(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFE;
    }

    if (v6)
    {
      v28[0] = 0;
      v7 = _os_log_send_and_compose_impl(v6, &v29, 0, 0, &_mh_execute_header, v4, 1, "Parsing persona manifest version: 0", v28, 2);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  v9 = [v3 personaSetFromData:v2];
  if (v9)
  {
    v10 = objc_alloc_init(UMDPersonaManifestUser);
    sub_100089CC4(v10, v9);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v12)
    {
      v13 = *v25;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          if (sub_100001434(v15) == 3)
          {
            v12 = sub_1000894C4(v15);
            goto LABEL_23;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:

    v16 = objc_alloc_init(UMDPersonaManifestEmbedded);
    [(UMDPersonaManifest *)v16 setVersion:0];
    [(UMDPersonaManifest *)v16 setGeneration:v12];
    v17 = [NSSet setWithObject:v10];
    [(UMDPersonaManifest *)v16 setUsers:v17];
  }

  else
  {
    if (qword_1000EB3D8 != -1)
    {
      sub_10008BDC4();
    }

    v10 = qword_1000EB3D0;
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      v29 = 0;
      v18 = sub_1000011A8(0);
      if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v28[0] = 0;
        LODWORD(v23) = 2;
        v20 = _os_log_send_and_compose_impl(v19, &v29, 0, 0, &_mh_execute_header, v10, 16, "Failed to parse persona manifest user: failed to parse personas", v28, v23);
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }

    v16 = 0;
  }

  return v16;
}

id sub_100055B28(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = objc_alloc_init(v3);
  if (qword_1000EB3D8 != -1)
  {
    sub_10008BDB0();
  }

  v5 = qword_1000EB3D0;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v30 = 0;
    v6 = sub_1000011A8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v29 = 0;
      v8 = _os_log_send_and_compose_impl(v7, &v30, 0, 0, &_mh_execute_header, v5, 1, "Parsing persona manifest version: 1", &v29, 2);
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  [v4 setVersion:1];
  v10 = [v2 objectForKeyedSubscript:@"UsePersonaGenerationID"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v4 setGeneration:{objc_msgSend(v10, "unsignedLongValue")}];
    v11 = [v2 objectForKeyedSubscript:@"UserPersonaDictionary"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [(objc_class *)v3 userSetFromDict:v11];
      if (v12)
      {
        [v4 setUsers:v12];
        v13 = v4;
LABEL_54:

        goto LABEL_55;
      }

      if (qword_1000EB3D8 != -1)
      {
        sub_10008BDC4();
      }

      v22 = qword_1000EB3D0;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v30 = 0;
        v23 = sub_1000011A8(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFE;
        }

        if (v24)
        {
          v29 = 0;
          LODWORD(v28) = 2;
          v25 = _os_log_send_and_compose_impl(v24, &v30, 0, 0, &_mh_execute_header, v22, 16, "Failed to parse persona manifest: failed to parse user dictionary", &v29, v28);
          v26 = v25;
          if (v25)
          {
            sub_100002A8C(v25);
          }
        }

        else
        {
          v26 = 0;
        }

        free(v26);
      }
    }

    else
    {
      if (qword_1000EB3D8 != -1)
      {
        sub_10008BDC4();
      }

      v12 = qword_1000EB3D0;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v30 = 0;
        v14 = sub_1000011A8(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v15 = v14;
        }

        else
        {
          v15 = v14 & 0xFFFFFFFE;
        }

        if (v15)
        {
          v29 = 0;
          LODWORD(v28) = 2;
          v16 = _os_log_send_and_compose_impl(v15, &v30, 0, 0, &_mh_execute_header, v12, 16, "Failed to parse persona manifest: user dictionary is invalid", &v29, v28);
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

    v13 = 0;
    goto LABEL_54;
  }

  if (qword_1000EB3D8 != -1)
  {
    sub_10008BDC4();
  }

  v11 = qword_1000EB3D0;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v30 = 0;
    v18 = sub_1000011A8(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 & 0xFFFFFFFE;
    }

    if (v19)
    {
      v29 = 0;
      LODWORD(v28) = 2;
      v20 = _os_log_send_and_compose_impl(v19, &v30, 0, 0, &_mh_execute_header, v11, 16, "Failed to parse persona manifest: generation id is invalid", &v29, v28);
      v21 = v20;
      if (v20)
      {
        sub_100002A8C(v20);
      }
    }

    else
    {
      v21 = 0;
    }

    free(v21);
  }

  v13 = 0;
LABEL_55:

  return v13;
}

void sub_10005612C(id a1)
{
  qword_1000EB3D0 = os_log_create(off_1000EA598, "persona");

  _objc_release_x1();
}

id sub_100056174(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = sub_1000561D0(v3, v2, 0);

  return v4;
}

id *sub_1000561D0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_self();
  v5 = sub_100056240([UMDAPFSSupportVolumeHelper alloc], v4, a3);

  return v5;
}

id *sub_100056240(id *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a2;
  if (a1)
  {
    v6 = sub_100077A54(a1, v5);
    if (!v6)
    {
      sub_100088DDC();
    }

    a1 = v6;

    sub_1000967B8(a1, v3);
  }

  return a1;
}

id sub_1000563A0(uint64_t a1)
{
  objc_opt_self();
  v1 = [&off_1000E15E8 mutableCopy];

  return v1;
}

id sub_1000563D4(uint64_t a1)
{
  objc_opt_self();
  v1 = [&off_1000E1600 mutableCopy];

  return v1;
}

void *sub_100056424(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_100056484([UMDPersonaManager alloc], v2);

  return v3;
}

void *sub_100056484(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = UMDPersonaManager;
    v4 = objc_msgSendSuper2(&v16, "init");
    if (!v4)
    {
      sub_100088DDC();
    }

    a1 = v4;
    objc_storeWeak(v4 + 6, v3);
    v5 = sub_100089A80(v3);
    v6 = a1[2];
    a1[2] = v5;

    v7 = sub_100088F2C(v3);
    v8 = a1[3];
    a1[3] = v7;

    v9 = objc_alloc_init(UMDPersonaState);
    v10 = a1[4];
    a1[4] = v9;

    if (qword_1000EB3E8 != -1)
    {
      sub_100095CCC();
    }

    v11 = a1[2];
    v12 = qword_1000EB3E0;
    v13 = sub_100055240(UMDGeneration, @"com.apple.mobile.usermanagerd.personageneration_changed", v12, v11);
    v14 = a1[5];
    a1[5] = v13;
  }

  return a1;
}

uint64_t sub_1000565AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (a1 && v6)
  {
    v9 = [v6 objectForKey:@"UserPersonaBundleIDS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v9)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = v5;
        v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = 0;
          v14 = *v25;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v25 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v24 + 1) + 8 * i);
              if (([v9 containsObject:v16] & 1) == 0)
              {
                [v9 addObject:v16];
                v13 = 1;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
          }

          while (v12);

          if (v13)
          {
            if (qword_1000EB3F8 != -1)
            {
              sub_100095CF4();
            }

            v17 = qword_1000EB3F0;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v23 = 0;
              LODWORD(v18) = sub_1000011A8(1);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = v18;
              }

              else
              {
                v18 = v18 & 0xFFFFFFFE;
              }

              if (v18)
              {
                v19 = v17;
                v20 = sub_100098D4C(v7, @"UserPersonaType", 0xFFFFFFFFLL);
                v28[0] = 67109120;
                v28[1] = v20;
                v21 = _os_log_send_and_compose_impl(v18, &v23, 0, 0, &_mh_execute_header, v19, 0, "Updating Persona:%u BundleIDs", v28);

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

            goto LABEL_26;
          }
        }

        else
        {
        }

        v8 = 0;
        goto LABEL_29;
      }
    }

    else
    {
    }

    [v7 setObject:v5 forKeyedSubscript:@"UserPersonaBundleIDS"];
    v9 = 0;
LABEL_26:
    v8 = 1;
LABEL_29:
  }

  return v8;
}

id sub_100056854(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (a1 && v5)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v28 = v5;
      v12 = *v33;
      do
      {
        v13 = 0;
        do
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v32 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v14 objectForKeyedSubscript:@"UserPersonaUniqueString"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = sub_100098ECC(v14, @"UserPersonaUniqueString");
              v29 = [v16 isEqualToString:v28];

              if (v29)
              {
                v8 = v14;

                goto LABEL_38;
              }
            }

            else
            {
              if (qword_1000EB3F8 != -1)
              {
                sub_100095CF4();
              }

              v21 = qword_1000EB3F0;
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                v31 = 0;
                v22 = sub_1000011A8(1);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                {
                  v23 = v22;
                }

                else
                {
                  v23 = v22 & 0xFFFFFFFE;
                }

                if (v23)
                {
                  v30 = 0;
                  LODWORD(v27) = 2;
                  v24 = _os_log_send_and_compose_impl(v23, &v31, 0, 0, &_mh_execute_header, v21, 2, "Persona does not have a valid unique string", &v30, v27);
                  v25 = v24;
                  if (v24)
                  {
                    sub_100002A8C(v24);
                  }
                }

                else
                {
                  v25 = 0;
                }

                free(v25);
              }
            }
          }

          else
          {
            if (qword_1000EB3F8 != -1)
            {
              sub_100095CF4();
            }

            v15 = qword_1000EB3F0;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v31 = 0;
              v17 = sub_1000011A8(1);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                v18 = v17;
              }

              else
              {
                v18 = v17 & 0xFFFFFFFE;
              }

              if (v18)
              {
                v30 = 0;
                LODWORD(v27) = 2;
                v19 = _os_log_send_and_compose_impl(v18, &v31, 0, 0, &_mh_execute_header, v15, 2, "got NULL dictionary", &v30, v27);
                v20 = v19;
                if (v19)
                {
                  sub_100002A8C(v19);
                }
              }

              else
              {
                v20 = 0;
              }

              free(v20);
            }
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v11);
      v8 = 0;
LABEL_38:
      v5 = v28;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

id sub_100056BB0(id result, uint64_t a2, void *a3)
{
  if (result)
  {
    if (a2)
    {
      return [a3 addObject:a2];
    }
  }

  return result;
}

id sub_100056BC8(uint64_t a1, void *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 userPersonas];
    v2 = [v5 objectForKeyedSubscript:v4];
  }

  return v2;
}

BOOL sub_100056C40(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2 != -1)
  {
    v4 = *(a1 + 16);
    v5 = sub_1000013AC(v4);
    v9 = 0;
    v6 = [v5 infoForPersonaWithID:a2 error:&v9];
    v7 = v9;

    v2 = v6 != 0;
  }

  return v2;
}

uint64_t sub_100056CD8(uint64_t a1, int a2)
{
  objc_opt_self();
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 != 4)
      {
        return 6;
      }

      goto LABEL_15;
    }

    if (a2 != 6)
    {
      if (a2 == 1000)
      {
        return 0;
      }

      goto LABEL_24;
    }

    return 2;
  }

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      return 4;
    }

    return 2;
  }

  if (!a2)
  {
    return 5;
  }

  if (a2 != 1)
  {
LABEL_24:
    if (qword_1000EB3F8 != -1)
    {
      sub_100095D1C();
    }

    v4 = qword_1000EB3F0;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v11 = 0;
    v8 = sub_1000011A8(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      v12 = 67109120;
      v13 = a2;
      v7 = _os_log_send_and_compose_impl(v9, &v11, 0, 0, &_mh_execute_header, v4, 0, "Unexpected persona type: %d", &v12);
LABEL_32:
      v10 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }

      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_15:
  if (qword_1000EB3F8 != -1)
  {
    sub_100095D1C();
  }

  v4 = qword_1000EB3F0;
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_36;
  }

  v11 = 0;
  v5 = sub_1000011A8(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
  }

  else
  {
    v6 = v5 & 0xFFFFFFFE;
  }

  if (v6)
  {
    v12 = 67109120;
    v13 = a2;
    v7 = _os_log_send_and_compose_impl(v6, &v11, 0, 0, &_mh_execute_header, v4, 0, "No matching kernel persona type for persona type: %d", &v12);
    goto LABEL_32;
  }

LABEL_34:
  v10 = 0;
LABEL_35:
  free(v10);
LABEL_36:

  return 0xFFFFFFFFLL;
}

void sub_100056F90(id a1)
{
  qword_1000EB3E0 = os_log_create(off_1000EA598, "persona");

  _objc_release_x1();
}

void sub_100056FD8(id a1)
{
  qword_1000EB3F0 = os_log_create(off_1000EA598, "legacy");

  _objc_release_x1();
}

uint64_t sub_100057078(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t sub_100057088(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t sub_1000570A8(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t sub_10005712C(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

BOOL sub_100057154()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_1000571BC()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_1000571F0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_10005720C()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_100057280(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_1000572D0()
{

  return sub_1000011A8(1);
}

uint64_t sub_1000572E8()
{
  *(v0 - 160) = 0;

  return sub_1000011A8(1);
}

BOOL sub_100057300()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_10005731C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_100057334(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_10005734C()
{

  return sub_1000011A8(1);
}

BOOL sub_100057364(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_10005737C()
{

  return sub_1000011A8(1);
}

BOOL sub_100057394()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_1000573AC()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_1000573C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, 0, a8);
}

uint64_t sub_1000573DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, 0, a8);
}

BOOL sub_1000573F4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_10005740C()
{

  return sub_1000011A8(1);
}

uint64_t sub_100057424()
{
  *(v0 - 112) = 0;

  return sub_1000011A8(1);
}

BOOL sub_100057454()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_100057470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, 0, a8);
}

uint64_t sub_1000574E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, 0, a8);
}

BOOL sub_1000574F8(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_100057510(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_100057564()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

BOOL sub_10005757C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

BOOL sub_100057594(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{

  return os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_1000575B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, 0, a8);
}

BOOL sub_1000575D0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_1000575E8(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_100057600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, 2, a8);
}

BOOL sub_100057618(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

BOOL sub_100057630(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

BOOL sub_100057648()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

id sub_100057660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

void sub_100057704(float a1)
{
  *(v2 - 160) = a1;
  *(v2 - 156) = v1;
  *(v2 - 152) = 1024;
}

uint64_t sub_100057718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, 0, a8);
}

BOOL sub_100057730(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

id sub_100057748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

id sub_100057760()
{
  v1 = qword_1000EB3F0;

  return v1;
}

BOOL sub_100057778()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

BOOL sub_100057790()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_1000577A8()
{
  *(v0 - 144) = 0;

  return sub_1000011A8(1);
}

id sub_1000577C0(uint64_t a1, uint64_t a2)
{

  return sub_100098D4C(v2, a2, 0xFFFFFFFFLL);
}

BOOL sub_1000577D8(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

id *sub_1000577F0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v8 = a2;
  objc_opt_self();
  v9 = sub_100057878([UMDRotatingLog alloc], v8, a3, a4, v5);

  return v9;
}

id *sub_100057878(id *a1, void *a2, void *a3, void *a4, int a5)
{
  v10 = a2;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = UMDRotatingLog;
    v11 = objc_msgSendSuper2(&v17, "init");
    if (!v11)
    {
      sub_100088DDC();
    }

    a1 = v11;

    objc_storeStrong(a1 + 3, a2);
    v12 = sub_1000024A8(v10);
    *(a1 + 2) = [v12 currentPID];

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.usermanagerd.RotatingLog", v13);
    v15 = a1[4];
    a1[4] = v14;

    a1[5] = a3;
    a1[6] = a4;
    *(a1 + 3) = -1;
    *(a1 + 4) = a5;
  }

  return a1;
}

void sub_100057A04(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 12) != -1)
    {
      goto LABEL_3;
    }

    if (!sub_100095ED4(v2, v3, v13))
    {
      v2 = *v13;
LABEL_3:
      if (*(v2 + 12) == -1)
      {
        return;
      }
    }
  }

  ts.tv_sec = 0;
  ts.tv_nsec = 0;
  timespec_get(&ts, 1);
  memset(&v11, 0, sizeof(v11));
  gmtime_r(&ts.tv_sec, &v11);
  strftime(v13, 0x64uLL, "%F %T", &v11);
  if (*v3)
  {
    v4 = *(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = [NSString stringWithFormat:@"%s.%06ldZ [%d] (%p) %s\n", v13, ts.tv_nsec / 1000, v4, pthread_self(), *(a1 + 40)];
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[3];
  }

  v7 = v6;
  v8 = sub_1000013A0(v7);
  v9 = v8;
  if (*v3)
  {
    v10 = *(*v3 + 12);
  }

  else
  {
    v10 = 0;
  }

  [v8 writeToFileWithDescriptor:v10 string:v5 error:0];

  if (sub_100002AFC(*v3))
  {
    sub_100095DB8(*v3);
  }
}

uint64_t sub_100057D48(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  qword_1000EB400 = objc_opt_new();

  return _objc_release_x1();
}

void sub_10005880C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v23 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100058864(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005887C(uint64_t a1)
{
  v22 = 0;
  v2 = sub_100024578(*(a1 + 32), *(a1 + 64), *(a1 + 72), &v22);
  if (v2)
  {
    v3 = [*(a1 + 40) externalizeUserDictionary:v2];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(*(*(a1 + 48) + 8) + 40);
  if (v6)
  {
    v7 = [v6 objectForKey:kUMUserSessionIDKey];
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v8 = qword_1000EB420;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      LODWORD(v9) = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v9;
      }

      else
      {
        v9 = v9 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v10 = v8;
        v11 = [v7 intValue];
        v23 = 67109120;
        v24 = v11;
        v12 = _os_log_send_and_compose_impl(v9, &v21, 0, 0, &_mh_execute_header, v10, 0, "Loaded User Session with ID %d", &v23);

        if (v12)
        {
          sub_100002A8C(v12);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }
  }

  if (v22)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v13 = qword_1000EB420;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v14 = sub_1000011A8(1);
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
        v23 = 67109120;
        v24 = v22;
        v16 = _os_log_send_and_compose_impl(v15, &v21, 0, 0, &_mh_execute_header, v13, 0, "Failed to load with error:%d", &v23);
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

    v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v22 userInfo:0];
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }
}

void sub_100058F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100058F30(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v10 = 0;
      v5 = _os_log_send_and_compose_impl(v4, &v11, 0, 0, &_mh_execute_header, v2, 0, "unloadUserSession UnSupported", &v10, 2);
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_1000599F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v21 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100059A58(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    v3 = [v2 objectForKey:kUMUserSessionIDKey];
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v4 = qword_1000EB420;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      LODWORD(v5) = sub_1000011A8(1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v5;
      }

      else
      {
        v5 = v5 & 0xFFFFFFFE;
      }

      if (v5)
      {
        v6 = v4;
        v17 = 67109120;
        v18 = [v3 intValue];
        v7 = _os_log_send_and_compose_impl(v5, &v16, 0, 0, &_mh_execute_header, v6, 0, "Loaded User Session with ID %d", &v17);

        if (v7)
        {
          sub_100002A8C(v7);
        }
      }

      else
      {
        v7 = 0;
      }

      free(v7);
    }
  }

  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v8 = qword_1000EB420;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 0;
    v9 = sub_1000011A8(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFE;
    }

    if (v10)
    {
      v17 = 67109120;
      v18 = 45;
      v11 = _os_log_send_and_compose_impl(v10, &v16, 0, 0, &_mh_execute_header, v8, 0, "createUserSession failed with error:%d", &v17);
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

  v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

void sub_10005A5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005A60C(void *a1)
{
  v9 = 0;
  if ((sub_100020054(a1[4], a1[6], a1[7], &v9) & 1) == 0)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];
    v3 = *(a1[5] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = a1[8];
  if (v5)
  {
    v6 = mach_task_self_;
    v7 = vm_page_size;
    if (vm_page_size >= a1[7])
    {
      v8 = a1[7];
    }

    else
    {
      v8 = vm_page_size;
    }

    memset_s(a1[8], v8, 0, v8);
    vm_deallocate(v6, v5, v7);
  }
}

void sub_10005AC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 160), 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10005AC6C(void *a1)
{
  v2 = sub_1000184B8();
  if (v2)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v3 = qword_1000EB420;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 0;
      v4 = sub_1000011A8(1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
      }

      else
      {
        v5 = v4 & 0xFFFFFFFE;
      }

      if (v5)
      {
        v32 = 0;
        v6 = _os_log_send_and_compose_impl(v5, &v33, 0, 0, &_mh_execute_header, v3, 0, "Found Primary", &v32, 2);
        v7 = v6;
        if (v6)
        {
          sub_100002A8C(v6);
        }
      }

      else
      {
        v7 = 0;
      }

      free(v7);
    }

    *(*(a1[4] + 8) + 24) = sub_100079590(v2, kUMUserSessionUUIDKey);
    if (*(*(a1[4] + 8) + 24))
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v13 = qword_1000EB420;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 0;
        v14 = sub_1000011A8(1);
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
          v32 = 0;
          LODWORD(v31) = 2;
          v16 = _os_log_send_and_compose_impl(v15, &v33, 0, 0, &_mh_execute_header, v13, 0, "primaryUUIDStr is not NULL", &v32, v31);
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

      CFRetain(*(*(a1[4] + 8) + 24));
      *(*(a1[5] + 8) + 24) = 1;
    }

    else
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v18 = qword_1000EB420;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 0;
        v19 = sub_1000011A8(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          v32 = 0;
          LODWORD(v31) = 2;
          v21 = _os_log_send_and_compose_impl(v20, &v33, 0, 0, &_mh_execute_header, v18, 0, "primaryUUIDStr is NULL", &v32, v31);
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
    }

    if (*(*(a1[4] + 8) + 24))
    {
      goto LABEL_63;
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v8 = qword_1000EB420;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 0;
      v9 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v32 = 0;
        v11 = _os_log_send_and_compose_impl(v10, &v33, 0, 0, &_mh_execute_header, v8, 0, "Primary Dict is NULL", &v32, 2);
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
  }

  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v23 = qword_1000EB420;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 0;
    v24 = sub_1000011A8(1);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & 0xFFFFFFFE;
    }

    if (v25)
    {
      v32 = 0;
      LODWORD(v31) = 2;
      v26 = _os_log_send_and_compose_impl(v25, &v33, 0, 0, &_mh_execute_header, v23, 0, "unable to locate primary session or user uuid...", &v32, v31);
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

  v28 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
  v29 = *(a1[6] + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v28;

  if (v2)
  {
LABEL_63:
    CFRelease(v2);
  }
}

void sub_10005B0F0(uint64_t a1)
{
  v21 = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      LOWORD(v22[0]) = 0;
      v5 = _os_log_send_and_compose_impl(v4, &v20, 0, 0, &_mh_execute_header, v2, 0, "Calling Volume Migration", v22, 2);
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  if (sub_100020068(*(*(*(a1 + 32) + 8) + 24), &v21))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v7 = qword_1000EB420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 0;
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        LOWORD(v22[0]) = 0;
        LODWORD(v19) = 2;
        v10 = _os_log_send_and_compose_impl(v9, &v20, 0, 0, &_mh_execute_header, v7, 0, "Volume Migration Successful", v22, v19);
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
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v22[0] = 67109120;
        v22[1] = v21;
        v15 = _os_log_send_and_compose_impl(v14, &v20, 0, 0, &_mh_execute_header, v12, 0, "Volume Migration failed with %d", v22);
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

    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v21 userInfo:0];
    v18 = *(*(a1 + 40) + 8);
    v7 = *(v18 + 40);
    *(v18 + 40) = v17;
  }
}

void sub_10005B9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 192), 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_10005BA18(uint64_t a1)
{
  v6 = 0;
  v2 = sub_100001458(*(a1 + 64), *(a1 + 68), *(a1 + 72));
  *(*(*(a1 + 40) + 8) + 24) = sub_10004897C(*(a1 + 32), v2, &v6);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v6 userInfo:0];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

void sub_10005BAD4(void *a1)
{
  HIDWORD(v35) = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  *buffer = 0u;
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v39[0] = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = a1[4];
      v6 = *(*(a1[5] + 8) + 24);
      *v36 = 138412546;
      *&v36[4] = v5;
      v37 = 2112;
      v38 = v6;
      v7 = _os_log_send_and_compose_impl(v4, v39, 0, 0, &_mh_execute_header, v2, 0, "Persona String:%@ found diskString:%@", v36, 22);
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (!CFStringGetCString(*(*(a1[5] + 8) + 24), buffer, 256, 0x8000100u))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v15 = qword_1000EB420;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v39[0] = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v18 = *(*(a1[5] + 8) + 24);
        *v36 = 138412290;
        *&v36[4] = v18;
        LODWORD(v35) = 12;
        v19 = _os_log_send_and_compose_impl(v17, v39, 0, 0, &_mh_execute_header, v15, 0, "Could not convert diskString:%@ to ascii, erroring out", v36, v35);
        v20 = v19;
        if (v19)
        {
          sub_100002A8C(v19);
        }
      }

      else
      {
        v20 = 0;
      }

      free(v20);
    }

    v31 = NSPOSIXErrorDomain;
    v32 = 22;
    goto LABEL_60;
  }

  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v9 = qword_1000EB420;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v39[0] = 0;
    v10 = sub_1000011A8(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
      v12 = a1[4];
      *v36 = 138412546;
      *&v36[4] = v12;
      v37 = 2080;
      v38 = buffer;
      LODWORD(v35) = 22;
      v13 = _os_log_send_and_compose_impl(v11, v39, 0, 0, &_mh_execute_header, v9, 0, "Calling Volume Migration for Persona:%@ with diskNode %s", v36, v35);
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

  if (!sub_100021A58(buffer))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v26 = qword_1000EB420;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v36 = 0;
      v27 = sub_1000011A8(1);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 & 0xFFFFFFFE;
      }

      if (v28)
      {
        LODWORD(v39[0]) = 67109120;
        HIDWORD(v39[0]) = HIDWORD(v35);
        v29 = _os_log_send_and_compose_impl(v28, v36, 0, 0, &_mh_execute_header, v26, 0, "Volume Migration failed with %d", v39);
        v30 = v29;
        if (v29)
        {
          sub_100002A8C(v29);
        }
      }

      else
      {
        v30 = 0;
      }

      free(v30);
    }

    v31 = NSPOSIXErrorDomain;
    v32 = SHIDWORD(v35);
LABEL_60:
    v33 = [NSError errorWithDomain:v31 code:v32 userInfo:0];
    v34 = *(a1[6] + 8);
    v21 = *(v34 + 40);
    *(v34 + 40) = v33;
    goto LABEL_61;
  }

  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v21 = qword_1000EB420;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v36 = 0;
    v22 = sub_1000011A8(1);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 & 0xFFFFFFFE;
    }

    if (v23)
    {
      LOWORD(v39[0]) = 0;
      LODWORD(v35) = 2;
      v24 = _os_log_send_and_compose_impl(v23, v36, 0, 0, &_mh_execute_header, v21, 0, "Volume Migration Successful", v39, v35);
      v25 = v24;
      if (v24)
      {
        sub_100002A8C(v24);
      }
    }

    else
    {
      v25 = 0;
    }

    free(v25);
  }

LABEL_61:
}
const void *sub_100030DC0(const char *a1)
{
  v1 = sub_10007980C(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v3 = qword_1000EB308;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 0;
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
      LOWORD(v23[0]) = 0;
      v6 = _os_log_send_and_compose_impl(v5, &v22, 0, 0, &_mh_execute_header, v3, 0, "RETRIEVING BLOB", v23, 2);
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

  v8 = sub_100079440(v2, @"BLOB");
  v9 = sub_1000023E8(v2, @"BLOBLEN");
  if (v8)
  {
    v10 = v9;
    CFRetain(v8);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v11 = qword_1000EB308;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v23[0] = 67109120;
        v23[1] = v10;
        v14 = _os_log_send_and_compose_impl(v13, &v22, 0, 0, &_mh_execute_header, v11, 0, "OPAQUE BLOB LEN = %d", v23);
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
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v11 = qword_1000EB308;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        LOWORD(v23[0]) = 0;
        LODWORD(v21) = 2;
        v18 = _os_log_send_and_compose_impl(v17, &v22, 0, 0, &_mh_execute_header, v11, 0, "failed to RETRIEVE BLOB out of read nextsession_opaque.kb", v23, v21);
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

    v8 = 0;
  }

  CFRelease(v2);
  return v8;
}

uint64_t sub_1000310B4(int a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100031170;
  v3[3] = &unk_1000DD550;
  v4 = a1;
  v3[4] = &v5;
  dispatch_sync(qword_1000EB610, v3);
  v1 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v1;
}

void sub_100031170(uint64_t a1)
{
  if (dword_1000EA3D4 == -1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v8 = qword_1000EB308;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_54;
    }

    v29 = 0;
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
      LOWORD(v32) = 0;
      v11 = _os_log_send_and_compose_impl(v10, &v29, 0, 0, &_mh_execute_header, v8, 0, "In UserQuota size mode, returning error to limit users", &v32, 2);
      goto LABEL_50;
    }

LABEL_52:
    v27 = 0;
LABEL_53:
    free(v27);
    goto LABEL_54;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v2 = qword_1000EB308;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 0;
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
      v5 = *(a1 + 40);
      LODWORD(v29) = 67109376;
      HIDWORD(v29) = v5;
      v30 = 1024;
      v31 = dword_1000EA3D4;
      v6 = _os_log_send_and_compose_impl(v4, &v32, 0, 0, &_mh_execute_header, v2, 0, "Request config is %d, at the moment it is %d", &v29, 14);
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

  v12 = *(a1 + 40);
  if (v12 != -1)
  {
    if (v12 >= 1 && v12 <= dword_1000EA3D4)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v13 = qword_1000EB308;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 0;
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
          v16 = *(a1 + 40);
          LODWORD(v32) = 67109120;
          HIDWORD(v32) = v16;
          v17 = _os_log_send_and_compose_impl(v15, &v29, 0, 0, &_mh_execute_header, v13, 0, "NumUser config set to is %d", &v32);
          v18 = v17;
          if (v17)
          {
            sub_100002A8C(v17);
          }
        }

        else
        {
          v18 = 0;
        }

        free(v18);
      }

      dword_1000EA3D4 = *(a1 + 40);
      *(*(*(a1 + 32) + 8) + 24) = dword_1000EA3D4;
      sub_100018C80();
      return;
    }

    *(*(*(a1 + 32) + 8) + 24) = -1;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v8 = qword_1000EB308;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_54:

      return;
    }

    v29 = 0;
    v25 = sub_1000011A8(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 & 0xFFFFFFFE;
    }

    if (v26)
    {
      LOWORD(v32) = 0;
      LODWORD(v28) = 2;
      v11 = _os_log_send_and_compose_impl(v26, &v29, 0, 0, &_mh_execute_header, v8, 0, "FAILED TO SET NumUser config", &v32, v28);
LABEL_50:
      v27 = v11;
      if (v11)
      {
        sub_100002A8C(v11);
      }

      goto LABEL_53;
    }

    goto LABEL_52;
  }

  *(*(*(a1 + 32) + 8) + 24) = dword_1000EA3D4;
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v19 = qword_1000EB308;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 0;
    v20 = sub_1000011A8(1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 0xFFFFFFFE;
    }

    if (v21)
    {
      v22 = *(*(*(a1 + 32) + 8) + 24);
      LODWORD(v32) = 67109120;
      HIDWORD(v32) = v22;
      v23 = _os_log_send_and_compose_impl(v21, &v29, 0, 0, &_mh_execute_header, v19, 0, "NumUser Query  returning %d", &v32);
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
}

uint64_t sub_1000315F8(uint64_t a1)
{
  v2 = sub_10008A2F4(qword_1000EB2E0, a1);
  if (v2)
  {
    v3 = v2;
    bzero(&v132, 0x400uLL);
    sub_1000795D4(v3, kUMUserSessionHomeDirKey, &v132, 1024);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v4 = qword_1000EB308;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v131[0] = 0;
      v5 = sub_1000011A8(1);
      v6 = v4;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v5;
      }

      else
      {
        v7 = v5 & 0xFFFFFFFE;
      }

      if (v7)
      {
        *v130 = 67109378;
        *&v130[4] = a1;
        *&v130[8] = 2080;
        *&v130[10] = &v132;
        LODWORD(v127) = 18;
        v8 = _os_log_send_and_compose_impl(v7, v131, 0, 0, &_mh_execute_header, v6, 0, "Adding Sandbox-kext path upload for bubble with uid %d, path:%s", v130, v127);

        if (v8)
        {
          sub_100002A8C(v8);
        }
      }

      else
      {

        v8 = 0;
      }

      free(v8);
    }

    if (sub_100032B3C(a1, &v132, 0))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v14 = qword_1000EB308;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v130 = 0;
        v15 = sub_1000011A8(1);
        v14 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
        }

        else
        {
          v16 = v15 & 0xFFFFFFFE;
        }

        if (v16)
        {
          LODWORD(v131[0]) = 67109120;
          HIDWORD(v131[0]) = a1;
          v17 = _os_log_send_and_compose_impl(v16, v130, 0, 0, &_mh_execute_header, v14, 0, "Set homepath to Sandbox for uid:%d", v131);
          goto LABEL_39;
        }

        goto LABEL_41;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v14 = qword_1000EB308;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v130 = 0;
        v18 = sub_1000011A8(1);
        v14 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
        }

        else
        {
          v19 = v18 & 0xFFFFFFFE;
        }

        if (v19)
        {
          LODWORD(v131[0]) = 67109120;
          HIDWORD(v131[0]) = a1;
          v17 = _os_log_send_and_compose_impl(v19, v130, 0, 0, &_mh_execute_header, v14, 0, "Failed to add homepath to Sandbox for uid:%d", v131);
LABEL_39:
          v20 = v17;

          if (v20)
          {
            sub_100002A8C(v20);
          }

          goto LABEL_42;
        }

LABEL_41:

        v20 = 0;
LABEL_42:
        free(v20);
      }
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v21 = qword_1000EB308;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v130 = 0;
      v22 = sub_1000011A8(1);
      v23 = v21;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v22;
      }

      else
      {
        v24 = v22 & 0xFFFFFFFE;
      }

      if (v24)
      {
        LODWORD(v131[0]) = 67109120;
        HIDWORD(v131[0]) = a1;
        v25 = _os_log_send_and_compose_impl(v24, v130, 0, 0, &_mh_execute_header, v23, 0, "Sandbox home directory is set for uid:%d", v131);

        if (v25)
        {
          sub_100002A8C(v25);
        }
      }

      else
      {

        v25 = 0;
      }

      free(v25);
    }

    v26 = CFDictionaryContainsKey(v3, kUMUserSessionVolumeDeviceNodeKey);
    v27 = &off_1000EB000;
    if (!v26)
    {
      v9 = 0;
      v33 = 0;
      goto LABEL_66;
    }

    if (![qword_1000EB2D8 mountVolumeWithSession:v3 mountPath:0 error:0 forPersona:0])
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v42 = qword_1000EB308;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v130 = 0;
        v43 = sub_1000011A8(1);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v44 = v43;
        }

        else
        {
          v44 = v43 & 0xFFFFFFFE;
        }

        if (v44)
        {
          LOWORD(v131[0]) = 0;
          LODWORD(v127) = 2;
          v45 = _os_log_send_and_compose_impl(v44, v130, 0, 0, &_mh_execute_header, v42, 0, "APFSUser Volume failed to mount for sync bubble, bailing on starting the bubble", v131, v127);
          v46 = v45;
          if (v45)
          {
            sub_100002A8C(v45);
          }
        }

        else
        {
          v46 = 0;
        }

        free(v46);
      }

      v9 = 0;
      v36 = 0xFFFFFFFFLL;
      goto LABEL_237;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v28 = qword_1000EB308;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *v130 = 0;
      v29 = sub_1000011A8(1);
      v30 = v28;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v29;
      }

      else
      {
        v31 = v29 & 0xFFFFFFFE;
      }

      if (v31)
      {
        LOWORD(v131[0]) = 0;
        LODWORD(v127) = 2;
        v32 = _os_log_send_and_compose_impl(v31, v130, 0, 0, &_mh_execute_header, v30, 0, "APFSUser Volume mounted at home directory for Sync bubble", v131, v127);

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

    if (sub_100002454(v3, kUMUserSessionHasSyncBagKey) != 1)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v57 = qword_1000EB308;
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_214;
      }

      *v130 = 0;
      v58 = sub_1000011A8(1);
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
        LODWORD(v131[0]) = 67109120;
        HIDWORD(v131[0]) = a1;
        v60 = _os_log_send_and_compose_impl(v59, v130, 0, 0, &_mh_execute_header, v57, 0, "SyncBag does not exist for the User:%d, bailing on starting the bubble", v131);
        goto LABEL_210;
      }

LABEL_212:
      v90 = 0;
LABEL_213:
      free(v90);
LABEL_214:

      v9 = 0;
      v36 = 0xFFFFFFFFLL;
LABEL_215:
      if ([v27[91] unmountVolumeWithSession:v3 mountPath:0 error:0])
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v91 = qword_1000EB308;
        if (!os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_236;
        }

        v132 = 0;
        v92 = sub_1000011A8(1);
        v93 = v91;
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          v94 = v92;
        }

        else
        {
          v94 = v92 & 0xFFFFFFFE;
        }

        if (v94)
        {
          *v130 = 0;
          LODWORD(v127) = 2;
          v95 = _os_log_send_and_compose_impl(v94, &v132, 0, 0, &_mh_execute_header, v93, 0, "APFSUser Volume unmounted after bubble load failure", v130, v127);
          goto LABEL_232;
        }
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v91 = qword_1000EB308;
        if (!os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_236;
        }

        v132 = 0;
        v96 = sub_1000011A8(1);
        v93 = v91;
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          v97 = v96;
        }

        else
        {
          v97 = v96 & 0xFFFFFFFE;
        }

        if (v97)
        {
          *v130 = 0;
          LODWORD(v127) = 2;
          v95 = _os_log_send_and_compose_impl(v97, &v132, 0, 0, &_mh_execute_header, v93, 0, "APFSUser Volume failed to unmount after bubble load failure", v130, v127);
LABEL_232:
          v98 = v95;

          if (v98)
          {
            sub_100002A8C(v98);
          }

          goto LABEL_235;
        }
      }

      v98 = 0;
LABEL_235:
      free(v98);
LABEL_236:

      goto LABEL_237;
    }

    if (sub_100002454(v3, kUMUserSessionHasSyncBagKey))
    {
      if (![qword_1000EB2D8 splitUserVolumeEnabled])
      {
LABEL_201:
        SyncBagForUser = MKBUserSessionLoadSyncBagForUser();
        if (SyncBagForUser)
        {
LABEL_202:
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v57 = qword_1000EB308;
          if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_214;
          }

          v131[0] = 0;
          v88 = sub_1000011A8(1);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v89 = v88;
          }

          else
          {
            v89 = v88 & 0xFFFFFFFE;
          }

          if (v89)
          {
            *v130 = 67109376;
            *&v130[4] = a1;
            *&v130[8] = 1024;
            *&v130[10] = SyncBagForUser;
            v60 = _os_log_send_and_compose_impl(v89, v131, 0, 0, &_mh_execute_header, v57, 0, " Failed to load the SyncBag for User:%d with Error:%d, bailing on starting the bubble", v130);
LABEL_210:
            v90 = v60;
            if (v60)
            {
              sub_100002A8C(v60);
            }

            goto LABEL_213;
          }

          goto LABEL_212;
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v105 = qword_1000EB308;
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          *v130 = 0;
          v106 = sub_1000011A8(1);
          v107 = v105;
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            v108 = v106;
          }

          else
          {
            v108 = v106 & 0xFFFFFFFE;
          }

          if (v108)
          {
            LODWORD(v131[0]) = 67109120;
            HIDWORD(v131[0]) = a1;
            v109 = _os_log_send_and_compose_impl(v108, v130, 0, 0, &_mh_execute_header, v107, 0, "Loaded the SyncBag for User:%d", v131);

            if (v109)
            {
              sub_100002A8C(v109);
            }
          }

          else
          {

            v109 = 0;
          }

          free(v109);
        }

        v33 = sub_100079590(v3, kUMUserSessionVolumeDeviceNodeKey);
        if (v33)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v110 = qword_1000EB308;
          if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
          {
            v131[0] = 0;
            v111 = sub_1000011A8(1);
            v112 = v110;
            if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
            {
              v113 = v111;
            }

            else
            {
              v113 = v111 & 0xFFFFFFFE;
            }

            if (v113)
            {
              *v130 = 138412546;
              *&v130[4] = v33;
              *&v130[12] = 1024;
              *&v130[14] = a1;
              LODWORD(v127) = 18;
              v114 = _os_log_send_and_compose_impl(v113, v131, 0, 0, &_mh_execute_header, v112, 0, "Calling VolumeMap with disk:%@ for uid:%d", v130, v127);

              if (v114)
              {
                sub_100002A8C(v114);
              }
            }

            else
            {

              v114 = 0;
            }

            free(v114);
          }

          v115 = sub_100089A80(qword_1000EB608);
          v129 = 0;
          v116 = [v115 mapVolume:v33 toSession:a1 withPersona:0 error:&v129];
          v9 = v129;

          if (!v116)
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v122 = qword_1000EB308;
            if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
            {
              v131[0] = 0;
              LODWORD(v123) = sub_1000011A8(1);
              v124 = v122;
              if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
              {
                v123 = v123;
              }

              else
              {
                v123 = v123 & 0xFFFFFFFE;
              }

              if (v123)
              {
                v125 = [v9 code];
                *v130 = 134217984;
                *&v130[4] = v125;
                v126 = _os_log_send_and_compose_impl(v123, v131, 0, 0, &_mh_execute_header, v124, 0, "VolumeMap failed with error:%ld, bailing on starting the bubble", v130);

                if (v126)
                {
                  sub_100002A8C(v126);
                }
              }

              else
              {

                v126 = 0;
              }

              free(v126);
            }

            v36 = 0xFFFFFFFFLL;
            goto LABEL_173;
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v117 = qword_1000EB308;
          if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
          {
            *v130 = 0;
            v118 = sub_1000011A8(1);
            v119 = v117;
            if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
            {
              v120 = v118;
            }

            else
            {
              v120 = v118 & 0xFFFFFFFE;
            }

            if (v120)
            {
              LOWORD(v131[0]) = 0;
              LODWORD(v127) = 2;
              v121 = _os_log_send_and_compose_impl(v120, v130, 0, 0, &_mh_execute_header, v119, 0, "VolumeMap of bubble succeeded", v131, v127);

              if (v121)
              {
                sub_100002A8C(v121);
              }
            }

            else
            {

              v121 = 0;
            }

            free(v121);
          }

          v34 = 1;
LABEL_67:
          persona = launch_create_persona();
          if (!persona)
          {
            dword_1000EA3DC = a1;
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v47 = qword_1000EB308;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              v132 = 0;
              v48 = sub_1000011A8(1);
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                v49 = v48;
              }

              else
              {
                v49 = v48 & 0xFFFFFFFE;
              }

              if (v49)
              {
                *v130 = 67109120;
                *&v130[4] = a1;
                v50 = _os_log_send_and_compose_impl(v49, &v132, 0, 0, &_mh_execute_header, v47, 0, "Created persona domain for uid:%d ", v130);
                v51 = v50;
                if (v50)
                {
                  sub_100002A8C(v50);
                }
              }

              else
              {
                v51 = 0;
              }

              free(v51);
            }

            v36 = 0;
            goto LABEL_249;
          }

          v36 = persona;
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v37 = qword_1000EB308;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            HIDWORD(v127) = v26;
            *v130 = 0;
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
              LODWORD(v132) = 67109376;
              HIDWORD(v132) = a1;
              v133 = 1024;
              LODWORD(v134) = v36;
              v41 = _os_log_send_and_compose_impl(v40, v130, 0, 0, &_mh_execute_header, v39, 0, "Failed to create persona domain for uid:%d with error:%d, bailing on starting the bubble", &v132, 14);

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
            v26 = HIDWORD(v127);
          }

          v65 = v34 ^ 1;
          if (!v33)
          {
            v65 = 1;
          }

          if (v65)
          {
LABEL_172:
            v27 = &off_1000EB000;
            if (!v26)
            {
LABEL_237:
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v99 = qword_1000EB308;
              if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
              {
                v132 = 0;
                v100 = sub_1000011A8(1);
                v101 = v99;
                if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                {
                  v102 = v100;
                }

                else
                {
                  v102 = v100 & 0xFFFFFFFE;
                }

                if (v102)
                {
                  *v130 = 67109120;
                  *&v130[4] = a1;
                  v103 = _os_log_send_and_compose_impl(v102, &v132, 0, 0, &_mh_execute_header, v101, 0, "Removing Sandbox kext path upload for bubble with uid %ds", v130);

                  if (v103)
                  {
                    sub_100002A8C(v103);
                  }
                }

                else
                {

                  v103 = 0;
                }

                free(v103);
              }

              sub_100033128(a1);
LABEL_249:
              CFRelease(v3);
              goto LABEL_250;
            }

LABEL_173:
            if (sub_100032DF8(v3, a1))
            {
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v79 = qword_1000EB308;
              if (!os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_194;
              }

              v132 = 0;
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
                *v130 = 67109120;
                *&v130[4] = a1;
                v83 = _os_log_send_and_compose_impl(v82, &v132, 0, 0, &_mh_execute_header, v81, 0, "Failed to unload SyncBag for user:%d", v130);
                goto LABEL_190;
              }
            }

            else
            {
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v79 = qword_1000EB308;
              if (!os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_194;
              }

              v132 = 0;
              v84 = sub_1000011A8(1);
              v81 = v79;
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
              {
                v85 = v84;
              }

              else
              {
                v85 = v84 & 0xFFFFFFFE;
              }

              if (v85)
              {
                *v130 = 67109120;
                *&v130[4] = a1;
                v83 = _os_log_send_and_compose_impl(v85, &v132, 0, 0, &_mh_execute_header, v81, 0, "Successfully unloaded the SyncBag for user:%d", v130);
LABEL_190:
                v86 = v83;

                if (v86)
                {
                  sub_100002A8C(v86);
                }

                goto LABEL_193;
              }
            }

            v86 = 0;
LABEL_193:
            free(v86);
LABEL_194:

            goto LABEL_215;
          }

          v66 = sub_100089A80(qword_1000EB608);
          v128 = 0;
          v67 = [v66 unmapVolume:v33 error:&v128];
          v9 = v128;

          if (v67)
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v68 = qword_1000EB308;
            if (!os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_171;
            }

            v132 = 0;
            v69 = sub_1000011A8(1);
            v70 = v68;
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              v71 = v69;
            }

            else
            {
              v71 = v69 & 0xFFFFFFFE;
            }

            if (v71)
            {
              *v130 = 67109120;
              *&v130[4] = a1;
              v72 = _os_log_send_and_compose_impl(v71, &v132, 0, 0, &_mh_execute_header, v70, 0, "VolumeUnMap for uid%d succeeded", v130);
              goto LABEL_154;
            }
          }

          else
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v68 = qword_1000EB308;
            if (!os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_171;
            }

            *v130 = 0;
            LODWORD(v73) = sub_1000011A8(1);
            v70 = v68;
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              v73 = v73;
            }

            else
            {
              v73 = v73 & 0xFFFFFFFE;
            }

            if (v73)
            {
              v74 = [v9 code];
              LODWORD(v132) = 67109376;
              HIDWORD(v132) = a1;
              v133 = 2048;
              v134 = v74;
              LODWORD(v127) = 18;
              v72 = _os_log_send_and_compose_impl(v73, v130, 0, 0, &_mh_execute_header, v70, 0, "VolumeUnMap for uid:%d failed with error:%ld", &v132, v127);
LABEL_154:
              v75 = v72;

              if (v75)
              {
                sub_100002A8C(v75);
              }

              goto LABEL_170;
            }
          }

          v75 = 0;
LABEL_170:
          free(v75);
LABEL_171:

          goto LABEL_172;
        }

        v9 = 0;
LABEL_66:
        v34 = 0;
        goto LABEL_67;
      }

      if (sub_100043BDC(v3))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v52 = qword_1000EB308;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *v130 = 0;
          v53 = sub_1000011A8(1);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v54 = v53;
          }

          else
          {
            v54 = v53 & 0xFFFFFFFE;
          }

          if (v54)
          {
            LOWORD(v131[0]) = 0;
            LODWORD(v127) = 2;
            v55 = _os_log_send_and_compose_impl(v54, v130, 0, 0, &_mh_execute_header, v52, 0, "Loaded AKS Identity", v131, v127);
            v56 = v55;
            if (v55)
            {
              sub_100002A8C(v55);
            }
          }

          else
          {
            v56 = 0;
          }

          free(v56);
        }

        goto LABEL_201;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v61 = qword_1000EB308;
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
LABEL_197:

        SyncBagForUser = -1;
        goto LABEL_202;
      }

      *v130 = 0;
      v76 = sub_1000011A8(1);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v77 = v76;
      }

      else
      {
        v77 = v76 & 0xFFFFFFFE;
      }

      if (v77)
      {
        LOWORD(v131[0]) = 0;
        LODWORD(v127) = 2;
        v64 = _os_log_send_and_compose_impl(v77, v130, 0, 0, &_mh_execute_header, v61, 0, "failed to Load AKS Identity, bailing", v131, v127);
LABEL_167:
        v78 = v64;
        if (v64)
        {
          sub_100002A8C(v64);
        }

        goto LABEL_196;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v61 = qword_1000EB308;
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_197;
      }

      *v130 = 0;
      v62 = sub_1000011A8(1);
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
        LOWORD(v131[0]) = 0;
        LODWORD(v127) = 2;
        v64 = _os_log_send_and_compose_impl(v63, v130, 0, 0, &_mh_execute_header, v61, 0, "Session has no SyncBag (kUMUserSessionHasSyncBagKey=false), nothing to load", v131, v127);
        goto LABEL_167;
      }
    }

    v78 = 0;
LABEL_196:
    free(v78);
    goto LABEL_197;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v9 = qword_1000EB308;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v132 = 0;
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
      *v130 = 67109120;
      *&v130[4] = a1;
      v12 = _os_log_send_and_compose_impl(v11, &v132, 0, 0, &_mh_execute_header, v9, 0, "No UserSession present for uid %d,bailing on starting the bubble", v130);
      v13 = v12;
      if (v12)
      {
        sub_100002A8C(v12);
      }
    }

    else
    {
      v13 = 0;
    }

    free(v13);
  }

  v36 = 0xFFFFFFFFLL;
LABEL_250:

  return v36;
}

uint64_t sub_100032B3C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  snprintf(__str, 0x400uLL, "%s/tmp", a2);
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v6 = qword_1000EB308;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v21[0] = 0;
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
      *v22 = 136315394;
      *&v22[4] = a2;
      v23 = 2080;
      v24 = __str;
      v9 = _os_log_send_and_compose_impl(v8, v21, 0, 0, &_mh_execute_header, v6, 0, "HomeDir:%s, TMPDir:%s", v22, 22);
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

  v11 = sub_10004B274(a1, v3, a2, __str, 0);
  if (v11)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v12 = qword_1000EB308;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
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
        LOWORD(v21[0]) = 0;
        LODWORD(v20) = 2;
        v15 = _os_log_send_and_compose_impl(v14, v22, 0, 0, &_mh_execute_header, v12, 0, "Sandbox_set_homedir success", v21, v20, v21[0]);
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v12 = qword_1000EB308;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
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
        LOWORD(v21[0]) = 0;
        LODWORD(v20) = 2;
        v15 = _os_log_send_and_compose_impl(v17, v22, 0, 0, &_mh_execute_header, v12, 0, "Sandbox_set_homedir failed", v21, v20, v21[0]);
LABEL_29:
        v18 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }

        goto LABEL_32;
      }

LABEL_31:
      v18 = 0;
LABEL_32:
      free(v18);
    }
  }

  return v11;
}

uint64_t sub_100032DF8(const __CFDictionary *a1, uint64_t a2)
{
  if (!sub_100002454(a1, kUMUserSessionHasSyncBagKey))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v9 = qword_1000EB308;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 0;
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
        LOWORD(v21) = 0;
        v12 = _os_log_send_and_compose_impl(v11, &v20, 0, 0, &_mh_execute_header, v9, 0, "Session has no SyncBag (kUMUserSessionHasSyncBagKey=false), nothing to unload", &v21, 2);
        v13 = v12;
        if (v12)
        {
          sub_100002A8C(v12);
        }
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }

    return 0;
  }

  if ([qword_1000EB2D8 splitUserVolumeEnabled])
  {
    if (sub_1000446D4(a1))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v4 = qword_1000EB308;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 0;
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
          v21 = 67109120;
          v22 = a2;
          v7 = _os_log_send_and_compose_impl(v6, &v20, 0, 0, &_mh_execute_header, v4, 0, "Unloaded the AKS Identity for user:%d", &v21);
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

      return 0;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v14 = qword_1000EB308;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 0;
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v21 = 67109120;
        v22 = a2;
        v17 = _os_log_send_and_compose_impl(v16, &v20, 0, 0, &_mh_execute_header, v14, 0, "Failed to Unload the AKS Identity for user:%d", &v21);
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }

    return 0xFFFFFFFFLL;
  }

  else
  {

    return _MKBUserSessionUnLoadSyncBagForUser(a1, a2);
  }
}

uint64_t sub_100033128(uint64_t a1)
{
  v1 = sub_10004B274(a1, 0, 0, 0, 1);
  if (v1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v2 = qword_1000EB308;
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
        LOWORD(v10) = 0;
        v5 = _os_log_send_and_compose_impl(v4, &v11, 0, 0, &_mh_execute_header, v2, 0, "Sandbox_remove_homedir success", &v10, 2, v10);
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v2 = qword_1000EB308;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v6 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        LOWORD(v10) = 0;
        v5 = _os_log_send_and_compose_impl(v7, &v11, 0, 0, &_mh_execute_header, v2, 0, "Sandbox_remove_homedir failed", &v10, 2, v10);
LABEL_18:
        v8 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }

        goto LABEL_21;
      }

LABEL_20:
      v8 = 0;
LABEL_21:
      free(v8);
    }
  }

  return v1;
}

uint64_t sub_1000332B0(int a1)
{
  v2 = MGGetBoolAnswer();
  if (v2)
  {
    if (a1)
    {
      byte_1000EA3D8 = 1;
      qword_1000EB2F8 = kUMUserSessionAPFSNativeVolume;
      valuePtr[0] = 502;
      v3 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
      v4 = sub_10007990C();
      CFDictionarySetValue(v4, kUMUserSessionIDKey, v3);
      sub_10001FC24(v4, 0);
      if (v3)
      {
        CFRelease(v3);
      }

      if (mkpath_np("/var/Users", 0x1FFu))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v5 = qword_1000EB308;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_102;
        }

        v50[0] = 0;
        LODWORD(v6) = sub_1000011A8(1);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = v6;
        }

        else
        {
          v6 = v6 & 0xFFFFFFFE;
        }

        if (v6)
        {
          v7 = v5;
          v8 = __error();
          v9 = strerror(*v8);
          *__str = 136315138;
          *&__str[4] = v9;
          v10 = _os_log_send_and_compose_impl(v6, v50, 0, 0, &_mh_execute_header, v7, 0, "failed to create:/var/Users (%s)\n", __str);

          if (!v10)
          {
            goto LABEL_101;
          }

          goto LABEL_99;
        }

LABEL_100:
        v10 = 0;
        goto LABEL_101;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v5 = qword_1000EB308;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_102;
      }

      *__str = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (!v19)
      {
        goto LABEL_100;
      }

      LOWORD(v50[0]) = 0;
      v20 = _os_log_send_and_compose_impl(v19, __str, 0, 0, &_mh_execute_header, v5, 0, "Created path /var/Users", v50, 2);
    }

    else
    {
      byte_1000EA3D8 = 0;
      qword_1000EB2F8 = 0;
      if (qword_1000EB5A0)
      {
        CFArrayRemoveAllValues(qword_1000EB5A0);
      }

      if (qword_1000EB5C0)
      {
        CFArrayRemoveAllValues(qword_1000EB5C0);
      }

      if (qword_1000EB5C8)
      {
        CFArrayRemoveAllValues(qword_1000EB5C8);
      }

      v11 = sub_1000013A0(qword_1000EB608);
      v12 = [v11 removeFileAtPath:@"/private/var//keybags/usersession.kb" error:0];

      if (v12)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v13 = qword_1000EB308;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *__str = 0;
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
            LOWORD(v50[0]) = 0;
            v16 = _os_log_send_and_compose_impl(v15, __str, 0, 0, &_mh_execute_header, v13, 0, "removed USER_SESSION_BAG_PATH", v50, 2);
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
        perror("unlink of USER_SESSION_BAG_PATH failed with error");
      }

      v21 = sub_1000013A0(qword_1000EB608);
      v22 = [v21 removeFileAtPath:@"/private/var//keybags/usersyncbag.kb" error:0];

      if (v22)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v23 = qword_1000EB308;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *__str = 0;
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
            LOWORD(v50[0]) = 0;
            LODWORD(v48) = 2;
            v26 = _os_log_send_and_compose_impl(v25, __str, 0, 0, &_mh_execute_header, v23, 0, "removed USER_SYNC_BAG_PATH", v50, v48);
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
      }

      else
      {
        perror("unlink of USER_SYNC_BAG_PATH failed with error");
      }

      v28 = sub_1000013A0(qword_1000EB608);
      v29 = [v28 removeFileAtPath:@"/private/var/keybags/LockoutState.plist" error:0];

      if (v29)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v30 = qword_1000EB308;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *__str = 0;
          v31 = sub_1000011A8(1);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v31;
          }

          else
          {
            v32 = v31 & 0xFFFFFFFE;
          }

          if (v32)
          {
            LOWORD(v50[0]) = 0;
            LODWORD(v48) = 2;
            v33 = _os_log_send_and_compose_impl(v32, __str, 0, 0, &_mh_execute_header, v30, 0, "removed /private/var/keybags/LockoutState.plist", v50, v48);
            v34 = v33;
            if (v33)
            {
              sub_100002A8C(v33);
            }
          }

          else
          {
            v34 = 0;
          }

          free(v34);
        }
      }

      else
      {
        perror("unlink of /private/var/keybags/LockoutState.plist failed with error");
      }

      snprintf(__str, 0x400uLL, "%s%s/%s.kb", "/private/var/", "keybags", "userbag");
      v35 = sub_1000013A0(qword_1000EB608);
      v36 = [NSString stringWithUTF8String:__str];
      v37 = [v35 removeFileAtPath:v36 error:0];

      if (v37)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v38 = qword_1000EB308;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v50[0] = 0;
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
            LOWORD(valuePtr[0]) = 0;
            LODWORD(v49) = 2;
            v41 = _os_log_send_and_compose_impl(v40, v50, 0, 0, &_mh_execute_header, v38, 0, "removed userBagPath", valuePtr, v49);
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
      }

      else
      {
        perror("unlink of userBagPath failed with error");
      }

      if (sub_10002D62C("/var/Users"))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v5 = qword_1000EB308;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_102;
        }

        v50[0] = 0;
        v43 = sub_1000011A8(1);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v44 = v43;
        }

        else
        {
          v44 = v43 & 0xFFFFFFFE;
        }

        if (!v44)
        {
          goto LABEL_100;
        }

        LOWORD(valuePtr[0]) = 0;
        LODWORD(v49) = 2;
        v20 = _os_log_send_and_compose_impl(v44, v50, 0, 0, &_mh_execute_header, v5, 0, "removed /var/Users path", valuePtr, v49);
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v5 = qword_1000EB308;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_102;
        }

        v50[0] = 0;
        v45 = sub_1000011A8(1);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v46 = v45;
        }

        else
        {
          v46 = v45 & 0xFFFFFFFE;
        }

        if (!v46)
        {
          goto LABEL_100;
        }

        LOWORD(valuePtr[0]) = 0;
        LODWORD(v49) = 2;
        v20 = _os_log_send_and_compose_impl(v46, v50, 0, 0, &_mh_execute_header, v5, 0, "Failed to remove /var/Users hierarchy, please remove it", valuePtr, v49);
      }
    }

    v10 = v20;
    if (!v20)
    {
LABEL_101:
      free(v10);
LABEL_102:

      return v2;
    }

LABEL_99:
    sub_100002A8C(v10);
    goto LABEL_101;
  }

  return v2;
}

void sub_100033AB0(const __CFString *a1)
{
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v2 = qword_1000EB308;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 0;
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
      v10 = 138412290;
      v11 = a1;
      v5 = _os_log_send_and_compose_impl(v4, &v9, 0, 0, &_mh_execute_header, v2, 0, "RegisterSyncService: machservice %@", &v10, 12);
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

  v7 = sub_100018360();
  if (v7)
  {
    v8 = v7;
    sub_100033BF4(v7, a1);
    CFRelease(v8);
  }
}

void sub_100033BF4(const __CFDictionary *a1, const __CFString *a2)
{
  v4 = sub_1000023E8(a1, kUMUserSessionIDKey);
  if (CFDictionaryContainsKey(a1, kUMUserSessionSyncMachServicesKey) && (v5 = CFDictionaryGetValue(a1, kUMUserSessionSyncMachServicesKey), v6 = CFGetTypeID(v5), v6 == CFArrayGetTypeID()))
  {
    Value = CFDictionaryGetValue(a1, kUMUserSessionSyncMachServicesKey);
    MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, Value);
    v9 = 1;
  }

  else
  {
    MutableCopy = sub_1000799A8();
    v9 = 0;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v10 = qword_1000EB308;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v40[0] = 0;
    v11 = sub_1000011A8(1);
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
      *v41 = 138412290;
      *&v41[4] = a2;
      v13 = _os_log_send_and_compose_impl(v12, v40, 0, 0, &_mh_execute_header, v10, 0, "RegisterSyncService: machservice %@", v41, 12);
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

  if (CFArrayGetCount(MutableCopy) < 1)
  {
LABEL_22:
    CFArrayAppendValue(MutableCopy, a2);
    if (v9)
    {
      CFDictionaryReplaceValue(a1, kUMUserSessionSyncMachServicesKey, MutableCopy);
    }

    else
    {
      CFDictionarySetValue(a1, kUMUserSessionSyncMachServicesKey, MutableCopy);
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v19 = qword_1000EB308;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v40[0] = 0;
      v20 = sub_1000011A8(1);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (v21)
      {
        *v41 = 138412290;
        *&v41[4] = MutableCopy;
        LODWORD(v39) = 12;
        v22 = _os_log_send_and_compose_impl(v21, v40, 0, 0, &_mh_execute_header, v19, 0, "RegisterSyncService: machservices list array: %@", v41, v39);
        v23 = v22;
        if (v22)
        {
          sub_100002A8C(v22);
        }
      }

      else
      {
        v23 = 0;
      }

      free(v23);
    }

    if (CFArrayGetCount(MutableCopy) >= 1)
    {
      CFDictionarySetValue(a1, kUMUserSessionDirtyKey, kCFBooleanTrue);
      v24 = sub_1000023E8(a1, kUMUserSessionIDKey);
      sub_10001BD58(v24);
    }

    sub_100018C80();
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v25 = qword_1000EB308;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v40[0] = 0;
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
        *v41 = 67109378;
        *&v41[4] = v4;
        *&v41[8] = 2112;
        *&v41[10] = MutableCopy;
        LODWORD(v39) = 18;
        v28 = _os_log_send_and_compose_impl(v27, v40, 0, 0, &_mh_execute_header, v25, 0, "Calling _SecSyncBubbleTransfer(Register) for uid %d with array %@", v41, v39);
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

    if (_SecSyncBubbleTransfer())
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v30 = qword_1000EB308;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *v41 = 0;
        v31 = sub_1000011A8(1);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v31;
        }

        else
        {
          v32 = v31 & 0xFFFFFFFE;
        }

        if (v32)
        {
          LOWORD(v40[0]) = 0;
          LODWORD(v39) = 2;
          v33 = _os_log_send_and_compose_impl(v32, v41, 0, 0, &_mh_execute_header, v30, 0, "_SecSyncBubbleTransfer success", v40, v39, v40[0]);
          goto LABEL_66;
        }

        goto LABEL_76;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v30 = qword_1000EB308;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *v41 = 0;
        v34 = sub_1000011A8(1);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v34;
        }

        else
        {
          v35 = v34 & 0xFFFFFFFE;
        }

        if (v35)
        {
          LOWORD(v40[0]) = 0;
          LODWORD(v39) = 2;
          v33 = _os_log_send_and_compose_impl(v35, v41, 0, 0, &_mh_execute_header, v30, 0, "_SecSyncBubbleTransfer failed", v40, v39, v40[0]);
          goto LABEL_66;
        }

LABEL_76:
        v36 = 0;
LABEL_77:
        free(v36);
      }
    }
  }

  else
  {
    v15 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v15);
      if (ValueAtIndex)
      {
        v17 = ValueAtIndex;
        v18 = CFGetTypeID(ValueAtIndex);
        if (v18 == CFStringGetTypeID() && CFStringCompare(v17, a2, 0) == kCFCompareEqualTo)
        {
          break;
        }
      }

      if (CFArrayGetCount(MutableCopy) <= ++v15)
      {
        goto LABEL_22;
      }
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v30 = qword_1000EB308;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v40[0] = 0;
      v37 = sub_1000011A8(1);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v37;
      }

      else
      {
        v38 = v37 & 0xFFFFFFFE;
      }

      if (v38)
      {
        *v41 = 138412290;
        *&v41[4] = a2;
        LODWORD(v39) = 12;
        v33 = _os_log_send_and_compose_impl(v38, v40, 0, 0, &_mh_execute_header, v30, 0, "RegisterSyncService: machservice already present: %@", v41, v39, v40[0]);
LABEL_66:
        v36 = v33;
        if (v33)
        {
          sub_100002A8C(v33);
        }

        goto LABEL_77;
      }

      goto LABEL_76;
    }
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void sub_100034214()
{
  v0 = sub_100018360();
  if (v0)
  {
    v1 = v0;
    if (!CFDictionaryContainsKey(v0, kUMUserSessionSyncMachServicesKey))
    {
      goto LABEL_37;
    }

    sub_1000023E8(v1, kUMUserSessionIDKey);
    if (!CFDictionaryGetValue(v1, kUMUserSessionSyncMachServicesKey))
    {
      goto LABEL_37;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v2 = qword_1000EB308;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
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
        LOWORD(v15) = 0;
        v5 = _os_log_send_and_compose_impl(v4, &v16, 0, 0, &_mh_execute_header, v2, 0, "Notifying Bubble machservice list for keychain update", &v15, 2);
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

    if (_SecSyncBubbleTransfer())
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v7 = qword_1000EB308;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      v16 = 0;
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
        LOWORD(v15) = 0;
        LODWORD(v14) = 2;
        v10 = _os_log_send_and_compose_impl(v9, &v16, 0, 0, &_mh_execute_header, v7, 0, "_SecSyncBubbleTransfer success", &v15, v14, v15);
        goto LABEL_32;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v7 = qword_1000EB308;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      v16 = 0;
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        LOWORD(v15) = 0;
        LODWORD(v14) = 2;
        v10 = _os_log_send_and_compose_impl(v12, &v16, 0, 0, &_mh_execute_header, v7, 0, "_SecSyncBubbleTransfer failed", &v15, v14, v15);
LABEL_32:
        v13 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }

        goto LABEL_35;
      }
    }

    v13 = 0;
LABEL_35:
    free(v13);
LABEL_36:

LABEL_37:
    CFRelease(v1);
  }
}

void sub_1000344A8(const __CFString *a1)
{
  v2 = sub_100018360();
  if (v2)
  {
    v3 = v2;
    sub_1000344FC(v2, a1);

    CFRelease(v3);
  }
}

void sub_1000344FC(const __CFDictionary *a1, const __CFString *a2)
{
  v4 = sub_1000023E8(a1, kUMUserSessionIDKey);
  if (CFDictionaryContainsKey(a1, kUMUserSessionSyncMachServicesKey))
  {
    Value = CFDictionaryGetValue(a1, kUMUserSessionSyncMachServicesKey);
    v6 = CFGetTypeID(Value);
    if (v6 == CFArrayGetTypeID() && CFArrayGetCount(Value))
    {
      if (CFArrayGetCount(Value) < 1)
      {
LABEL_10:
        if (CFArrayGetCount(Value))
        {
          return;
        }

        v11 = 0;
      }

      else
      {
        v7 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Value, v7);
          if (ValueAtIndex)
          {
            v9 = ValueAtIndex;
            v10 = CFGetTypeID(ValueAtIndex);
            if (v10 == CFStringGetTypeID() && CFStringCompare(v9, a2, 0) == kCFCompareEqualTo)
            {
              break;
            }
          }

          if (CFArrayGetCount(Value) <= ++v7)
          {
            goto LABEL_10;
          }
        }

        CFArrayRemoveValueAtIndex(Value, v7);
        CFRetain(Value);
        if (CFArrayGetCount(Value))
        {
LABEL_41:
          sub_100018C80();
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v22 = qword_1000EB308;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v35[0] = 0;
            v23 = sub_1000011A8(1);
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
              LODWORD(v36) = 67109378;
              HIDWORD(v36) = v4;
              v37 = 2112;
              v38 = Value;
              LODWORD(v34) = 18;
              v25 = _os_log_send_and_compose_impl(v24, v35, 0, 0, &_mh_execute_header, v22, 0, "Calling _SecSyncBubbleTransfer(Unregister) for uid %d with array %@", &v36, v34);
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

          if (_SecSyncBubbleTransfer())
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v27 = qword_1000EB308;
            if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_73;
            }

            v36 = 0;
            v28 = sub_1000011A8(1);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v29 = v28;
            }

            else
            {
              v29 = v28 & 0xFFFFFFFE;
            }

            if (v29)
            {
              LOWORD(v35[0]) = 0;
              LODWORD(v34) = 2;
              v30 = _os_log_send_and_compose_impl(v29, &v36, 0, 0, &_mh_execute_header, v27, 0, "_SecSyncBubbleTransfer success", v35, v34, v35[0]);
              goto LABEL_69;
            }
          }

          else
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v27 = qword_1000EB308;
            if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_73;
            }

            v36 = 0;
            v31 = sub_1000011A8(1);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v32 = v31;
            }

            else
            {
              v32 = v31 & 0xFFFFFFFE;
            }

            if (v32)
            {
              LOWORD(v35[0]) = 0;
              LODWORD(v34) = 2;
              v30 = _os_log_send_and_compose_impl(v32, &v36, 0, 0, &_mh_execute_header, v27, 0, "_SecSyncBubbleTransfer failed", v35, v34, v35[0]);
LABEL_69:
              v33 = v30;
              if (v30)
              {
                sub_100002A8C(v30);
              }

              goto LABEL_72;
            }
          }

          v33 = 0;
LABEL_72:
          free(v33);
LABEL_73:

          if (Value)
          {
            CFRelease(Value);
          }

          return;
        }

        v11 = 1;
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
          LOWORD(v35[0]) = 0;
          v15 = _os_log_send_and_compose_impl(v14, &v36, 0, 0, &_mh_execute_header, v12, 0, "NO More MachServices, remove key", v35, 2);
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

      if ((v11 & 1) == 0)
      {
        CFRetain(Value);
      }

      sub_10001C0D0(a1, v4);
      goto LABEL_41;
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
        LOWORD(v35[0]) = 0;
        v20 = _os_log_send_and_compose_impl(v19, &v36, 0, 0, &_mh_execute_header, v17, 0, "NO MachServices Key in Current session", v35, 2);
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
}

void sub_100034A2C(uint64_t a1, const __CFString *a2)
{
  v3 = sub_10008A2F4(qword_1000EB2E0, a1);
  if (v3)
  {
    v4 = v3;
    sub_1000344FC(v3, a2);

    CFRelease(v4);
  }
}

void sub_100034A90(const void *a1)
{
  v2 = sub_100018360();
  if (CFDictionaryContainsKey(v2, kUMUserSessionSyncTasksKey))
  {
    CFDictionaryReplaceValue(v2, kUMUserSessionSyncTasksKey, a1);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    CFDictionarySetValue(v2, kUMUserSessionSyncTasksKey, a1);
    if (!v2)
    {
      return;
    }
  }

  CFRelease(v2);
}

const void *sub_100034B1C()
{
  v0 = sub_100018360();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (CFDictionaryContainsKey(v0, @"UserSwitchTaskOpqueData"))
  {
    Value = CFDictionaryGetValue(v1, @"UserSwitchTaskOpqueData");
  }

  else
  {
    Value = 0;
  }

  CFRelease(v1);
  return Value;
}

void sub_100034B84(id a1)
{
  if (qword_1000EB320 != -1)
  {
    sub_100089D90();
  }

  v1 = qword_1000EB318;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 0;
    v2 = sub_1000011A8(0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFE;
    }

    if (v3)
    {
      v9 = 134217984;
      v10 = qword_1000EB5F8;
      v4 = _os_log_send_and_compose_impl(v3, &v8, 0, 0, &_mh_execute_header, v1, 0, "Sync bubble timer (%p) fired", &v9);
      v5 = v4;
      if (v4)
      {
        sub_100002A8C(v4);
      }
    }

    else
    {
      v5 = 0;
    }

    free(v5);
  }

  dispatch_source_cancel(qword_1000EB5F8);
  v6 = qword_1000EB5F8;
  qword_1000EB5F8 = 0;

  sub_100034CC8(v7);
}

void sub_100034CC8(uint64_t a1)
{
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v1 = qword_1000EB308;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v52 = 0;
    v2 = sub_1000011A8(1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFE;
    }

    if (v3)
    {
      LOWORD(valuePtr) = 0;
      v4 = _os_log_send_and_compose_impl(v3, &v52, 0, 0, &_mh_execute_header, v1, 0, "XXXXXXXXXXXXXX Kickstarting the bubble session  XXXXXXXXXXXXXX", &valuePtr, 2);
      v5 = v4;
      if (v4)
      {
        sub_100002A8C(v4);
      }
    }

    else
    {
      v5 = 0;
    }

    free(v5);
  }

  valuePtr = -1;
  if (sub_10001B624())
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v6 = qword_1000EB308;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    v52 = 0;
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
      LOWORD(v50[0]) = 0;
      LODWORD(v49) = 2;
      v9 = _os_log_send_and_compose_impl(v8, &v52, 0, 0, &_mh_execute_header, v6, 0, " XXXXXXXXXXXXXX BOOTARGS SET TO STOP AUTO BUBBLE LOAD XXXXXXXXXXXXXX", v50, v49, v50[0]);
      goto LABEL_21;
    }

LABEL_71:
    v10 = 0;
LABEL_72:
    free(v10);
LABEL_73:

    return;
  }

  if (!qword_1000EB5C0)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v6 = qword_1000EB308;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    v52 = 0;
    v15 = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (!v16)
    {
      goto LABEL_71;
    }

    LOWORD(v50[0]) = 0;
    LODWORD(v49) = 2;
    v9 = _os_log_send_and_compose_impl(v16, &v52, 0, 0, &_mh_execute_header, v6, 0, "Returning, no Users list for bubble empty", v50, v49, v50[0]);
LABEL_21:
    v10 = v9;
    if (v9)
    {
      sub_100002A8C(v9);
    }

    goto LABEL_72;
  }

  if (!CFArrayGetCount(qword_1000EB5C0))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v6 = qword_1000EB308;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    v52 = 0;
    v17 = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (!v18)
    {
      goto LABEL_71;
    }

    LOWORD(v50[0]) = 0;
    LODWORD(v49) = 2;
    v9 = _os_log_send_and_compose_impl(v18, &v52, 0, 0, &_mh_execute_header, v6, 0, "Returning, no Users listed for sync bubble", v50, v49, v50[0]);
    goto LABEL_21;
  }

  v11 = +[RDServer sharedServer];
  v12 = [v11 anyBubblePopClients];

  if (v12)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v6 = qword_1000EB308;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    v52 = 0;
    v13 = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (!v14)
    {
      goto LABEL_71;
    }

    LOWORD(v50[0]) = 0;
    LODWORD(v49) = 2;
    v9 = _os_log_send_and_compose_impl(v14, &v52, 0, 0, &_mh_execute_header, v6, 0, "Returning, sync bubble blocked by bubblepop holders", v50, v49, v50[0]);
    goto LABEL_21;
  }

  v19 = +[RDServer sharedServer];
  v20 = [v19 inLogoutProcess];

  if (v20)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v6 = qword_1000EB308;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    v52 = 0;
    v21 = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (!v22)
    {
      goto LABEL_71;
    }

    LOWORD(v50[0]) = 0;
    LODWORD(v49) = 2;
    v9 = _os_log_send_and_compose_impl(v22, &v52, 0, 0, &_mh_execute_header, v6, 0, "Returning, sync bubble blocked by logout process", v50, v49, v50[0]);
    goto LABEL_21;
  }

  v23 = sub_100088F2C(qword_1000EB608);
  if (!sub_100089A48(v23))
  {
    v25 = dword_1000EB5B8;

    if (v25 != 1)
    {
      goto LABEL_76;
    }

    goto LABEL_63;
  }

  v24 = sub_100088F2C(qword_1000EB608);
  if (sub_100089AC4(v24) == 502)
  {

    goto LABEL_76;
  }

  v28 = dword_1000EB5B8;

  if (v28 == 1)
  {
LABEL_63:
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v6 = qword_1000EB308;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    v52 = 0;
    v26 = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 & 0xFFFFFFFE;
    }

    if (!v27)
    {
      goto LABEL_71;
    }

    LOWORD(v50[0]) = 0;
    LODWORD(v49) = 2;
    v9 = _os_log_send_and_compose_impl(v27, &v52, 0, 0, &_mh_execute_header, v6, 0, "Returning, sync bubble blocked by isLoginSession in User Context", v50, v49, v50[0]);
    goto LABEL_21;
  }

LABEL_76:
  v29 = sub_10008A58C(qword_1000EB2E0);
  if (CFArrayGetCount(qword_1000EB5C0) >= 1)
  {
    for (i = 0; CFArrayGetCount(qword_1000EB5C0) > i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5C0, i);
      if (ValueAtIndex)
      {
        v32 = ValueAtIndex;
        v33 = CFGetTypeID(ValueAtIndex);
        if (v33 == CFNumberGetTypeID())
        {
          if (CFNumberGetValue(v32, kCFNumberIntType, &valuePtr))
          {
            if (valuePtr == v29)
            {
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v34 = qword_1000EB308;
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v52 = 0;
                v35 = sub_1000011A8(1);
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  v36 = v35;
                }

                else
                {
                  v36 = v35 & 0xFFFFFFFE;
                }

                if (v36)
                {
                  LOWORD(v50[0]) = 0;
                  LODWORD(v49) = 2;
                  v37 = _os_log_send_and_compose_impl(v36, &v52, 0, 0, &_mh_execute_header, v34, 0, "Current FGID is the bubble UID, postpone load..", v50, v49);
                  v38 = v37;
                  if (v37)
                  {
                    sub_100002A8C(v37);
                  }
                }

                else
                {
                  v38 = 0;
                }

                free(v38);
              }
            }

            else
            {
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v39 = qword_1000EB308;
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                v52 = 0;
                v40 = sub_1000011A8(1);
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                {
                  v41 = v40;
                }

                else
                {
                  v41 = v40 & 0xFFFFFFFE;
                }

                if (v41)
                {
                  LOWORD(v50[0]) = 0;
                  LODWORD(v49) = 2;
                  v42 = _os_log_send_and_compose_impl(v41, &v52, 0, 0, &_mh_execute_header, v39, 0, "Current FGID is not the bubble UID, load", v50, v49);
                  v43 = v42;
                  if (v42)
                  {
                    sub_100002A8C(v42);
                  }
                }

                else
                {
                  v43 = 0;
                }

                free(v43);
              }

              if (!sub_1000315F8(valuePtr))
              {
                return;
              }

              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v44 = qword_1000EB308;
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                v52 = 0;
                v45 = sub_1000011A8(1);
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
                  LOWORD(v50[0]) = 0;
                  LODWORD(v49) = 2;
                  v47 = _os_log_send_and_compose_impl(v46, &v52, 0, 0, &_mh_execute_header, v44, 0, "Load Syncbubble failed, Append this bubble session to the end, Try Later", v50, v49);
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
              }

              sub_10001BEFC(valuePtr);
              sub_10001BD58(valuePtr);
              if (qword_1000EB5C0)
              {
                if (CFArrayGetCount(qword_1000EB5C0) == 1)
                {
                  return;
                }
              }
            }
          }
        }
      }
    }
  }
}

__CFDictionary *sub_1000354BC(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_10007990C();
  Value = CFDictionaryGetValue(a1, kUMUserSessionIDKey);
  CFDictionarySetValue(v2, kUMUserSessionIDKey, Value);
  v4 = CFDictionaryGetValue(a1, kUMUserSessionGroupIDKey);
  CFDictionarySetValue(v2, kUMUserSessionGroupIDKey, v4);
  if (!CFDictionaryContainsKey(a1, kUMUserSessionLibinfoHomeDirKey))
  {
    sub_1000023E8(a1, kUMUserSessionIDKey);
    bzero(__str, 0x400uLL);
    if (dword_1000EB5B0 == 1)
    {
      snprintf(__str, 0x400uLL, "/var/euser%d");
    }

    else
    {
      snprintf(__str, 0x400uLL, "/var/user%d");
    }

    v5 = CFStringCreateWithCString(0, __str, 0x8000100u);
    CFDictionarySetValue(a1, kUMUserSessionLibinfoHomeDirKey, v5);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  v6 = CFDictionaryGetValue(a1, kUMUserSessionLibinfoHomeDirKey);
  CFDictionarySetValue(v2, kUMUserSessionLibinfoHomeDirKey, v6);
  v7 = CFDictionaryGetValue(a1, kUMUserSessionShortNameKey);
  CFDictionarySetValue(v2, kUMUserSessionShortNameKey, v7);
  return v2;
}

uint64_t sub_100035668(const __CFDictionary *a1, void *a2, int a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = sub_1000023E8(a1, kUMUserSessionIDKey);
    v7 = sub_1000023E8(a1, kUMUserSessionGroupIDKey);
    xpc_dictionary_set_int64(v5, "pw_uid", v6);
    xpc_dictionary_set_int64(v5, "pw_gid", v7);
    bzero(string, 0x400uLL);
    sub_1000795D4(a1, kUMUserSessionLibinfoHomeDirKey, string, 1024);
    xpc_dictionary_set_string(v5, "pw_dir", string);
    bzero(string, 0x400uLL);
    sub_1000795D4(a1, kUMUserSessionShortNameKey, string, 255);
    xpc_dictionary_set_string(v5, "pw_name", string);
    xpc_dictionary_set_string(v5, "pw_shell", "/bin/bash");
    if (a3)
    {
      v8 = "/smx7MYTQIi2M";
    }

    else
    {
      v8 = "*";
    }

    xpc_dictionary_set_string(v5, "pw_passwd", v8);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_100035800(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = result;
    v3 = kUMUserSessionGroupIDKey;
    v4 = a2;
    v5 = sub_1000023E8(v2, v3);
    xpc_dictionary_set_int64(v4, "gr_gid", v5);
    bzero(string, 0x400uLL);
    sub_1000795D4(v2, kUMUserSessionShortNameKey, string, 255);
    xpc_dictionary_set_string(v4, "gr_name", string);
    v6 = xpc_array_create(0, 0);
    xpc_array_set_string(v6, 0xFFFFFFFFFFFFFFFFLL, string);
    xpc_dictionary_set_value(v4, "gr_members", v6);

    return 1;
  }

  return result;
}

uint64_t sub_10003590C(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000359C0;
  v3[3] = &unk_1000DD598;
  v3[4] = &v4;
  v3[5] = a1;
  dispatch_sync(qword_1000EB618, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1000359C0(uint64_t a1)
{
  v2 = qword_1000EB5D0;
  if (!qword_1000EB5D0)
  {
    v2 = sub_1000799A8();
    qword_1000EB5D0 = v2;
  }

  CFArrayAppendValue(v2, *(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = 1;
}

uint64_t sub_100035A0C(int a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100035AC4;
  v3[3] = &unk_1000DD550;
  v4 = a1;
  v3[4] = &v5;
  dispatch_sync(qword_1000EB618, v3);
  v1 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v1;
}

void sub_100035AC4(uint64_t a1)
{
  valuePtr = 0;
  if (qword_1000EB5D0 && CFArrayGetCount(qword_1000EB5D0) >= 1)
  {
    v2 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5D0, v2);
      if (!ValueAtIndex)
      {
        break;
      }

      v4 = ValueAtIndex;
      v5 = CFGetTypeID(ValueAtIndex);
      if (v5 != CFDictionaryGetTypeID())
      {
        break;
      }

      Value = CFDictionaryGetValue(v4, kUMUserSessionIDKey);
      if (!Value || (v7 = Value, v8 = CFGetTypeID(Value), v8 != CFNumberGetTypeID()) || !CFNumberGetValue(v7, kCFNumberIntType, &valuePtr))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v9 = qword_1000EB308;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 0;
          v13 = sub_1000011A8(1);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v13;
          }

          else
          {
            v14 = v13 & 0xFFFFFFFE;
          }

          if (v14)
          {
            v18[0] = 67109120;
            v18[1] = v2;
            v12 = _os_log_send_and_compose_impl(v14, &v16, 0, 0, &_mh_execute_header, v9, 0, "Found problem with conversion with index %d", v18);
            goto LABEL_27;
          }

LABEL_29:
          v15 = 0;
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      if (valuePtr == *(a1 + 40))
      {
        CFArrayRemoveValueAtIndex(qword_1000EB5D0, v2);
        *(*(*(a1 + 32) + 8) + 24) = 1;
        return;
      }

LABEL_32:
      if (CFArrayGetCount(qword_1000EB5D0) <= ++v2)
      {
        return;
      }
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v9 = qword_1000EB308;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v10 = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (!v11)
      {
        goto LABEL_29;
      }

      LOWORD(v18[0]) = 0;
      v12 = _os_log_send_and_compose_impl(v11, &v16, 0, 0, &_mh_execute_header, v9, 0, "got NULL dictionary");
LABEL_27:
      v15 = v12;
      if (v12)
      {
        sub_100002A8C(v12);
      }

LABEL_30:
      free(v15);
    }

LABEL_31:

    goto LABEL_32;
  }
}

CFTypeRef sub_100035D70(int a1)
{
  result = qword_1000EB5D0;
  if (qword_1000EB5D0)
  {
    valuePtr = 0;
    if (CFArrayGetCount(qword_1000EB5D0) >= 1)
    {
      v2 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5D0, v2);
        if (!ValueAtIndex)
        {
          break;
        }

        v4 = ValueAtIndex;
        v5 = CFGetTypeID(ValueAtIndex);
        if (v5 != CFDictionaryGetTypeID())
        {
          break;
        }

        Value = CFDictionaryGetValue(v4, kUMUserSessionIDKey);
        if (!Value || (v7 = Value, v8 = CFGetTypeID(Value), v8 != CFNumberGetTypeID()) || !CFNumberGetValue(v7, kCFNumberIntType, &valuePtr))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v9 = qword_1000EB308;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v17 = 0;
            v13 = sub_1000011A8(1);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v14 = v13;
            }

            else
            {
              v14 = v13 & 0xFFFFFFFE;
            }

            if (v14)
            {
              v19[0] = 67109120;
              v19[1] = v2;
              v12 = _os_log_send_and_compose_impl(v14, &v17, 0, 0, &_mh_execute_header, v9, 0, "Found problem with conversion with index %d", v19);
              goto LABEL_27;
            }

LABEL_29:
            v15 = 0;
            goto LABEL_30;
          }

          goto LABEL_31;
        }

        if (valuePtr == a1)
        {
          return CFRetain(v4);
        }

LABEL_32:
        if (CFArrayGetCount(qword_1000EB5D0) <= ++v2)
        {
          return 0;
        }
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v9 = qword_1000EB308;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 0;
        v10 = sub_1000011A8(1);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v10;
        }

        else
        {
          v11 = v10 & 0xFFFFFFFE;
        }

        if (!v11)
        {
          goto LABEL_29;
        }

        LOWORD(v19[0]) = 0;
        v12 = _os_log_send_and_compose_impl(v11, &v17, 0, 0, &_mh_execute_header, v9, 0, "got NULL dictionary");
LABEL_27:
        v15 = v12;
        if (v12)
        {
          sub_100002A8C(v12);
        }

LABEL_30:
        free(v15);
      }

LABEL_31:

      goto LABEL_32;
    }

    return 0;
  }

  return result;
}

CFTypeRef sub_100036010(const __CFString *a1)
{
  if (!qword_1000EB5D0 || CFArrayGetCount(qword_1000EB5D0) < 1)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5D0, v2);
    if (ValueAtIndex)
    {
      v4 = ValueAtIndex;
      v5 = CFGetTypeID(ValueAtIndex);
      if (v5 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v4, kUMUserSessionShortNameKey);
        if (Value)
        {
          v7 = Value;
          v8 = CFGetTypeID(Value);
          if (v8 == CFStringGetTypeID() && CFStringCompare(v7, a1, 0) == kCFCompareEqualTo)
          {
            break;
          }
        }
      }
    }

    if (CFArrayGetCount(qword_1000EB5D0) <= ++v2)
    {
      return 0;
    }
  }

  return CFRetain(v4);
}

void sub_100036114(void *a1)
{
  xarray = a1;
  if (qword_1000EB5D0 && CFArrayGetCount(qword_1000EB5D0) >= 1)
  {
    v1 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5D0, v1);
      if (ValueAtIndex)
      {
        v3 = ValueAtIndex;
        v4 = CFGetTypeID(ValueAtIndex);
        if (v4 == CFDictionaryGetTypeID())
        {
          v5 = sub_1000023E8(v3, kUMUserSessionGroupIDKey);
          if (v5 != -1)
          {
            xpc_array_set_int64(xarray, 0xFFFFFFFFFFFFFFFFLL, v5);
          }
        }
      }

      ++v1;
    }

    while (CFArrayGetCount(qword_1000EB5D0) > v1);
  }
}

uint64_t sub_1000361E8(void *a1)
{
  v1 = a1;
  strcpy(string, "systemusers");
  xpc_dictionary_set_int64(v1, "gr_gid", 299);
  xpc_dictionary_set_string(v1, "gr_name", string);
  v2 = xpc_array_create(0, 0);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aMobile_1);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aIfccd);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aNetworkd_1);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aWireless_1);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aInstalld_0);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aSecurityd_0);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aReportmemoryex);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aAnalyticsd);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aTimed);
  if (qword_1000EB5D0 && CFArrayGetCount(qword_1000EB5D0) >= 1)
  {
    v3 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5D0, v3);
      if (ValueAtIndex)
      {
        v5 = ValueAtIndex;
        v6 = CFGetTypeID(ValueAtIndex);
        if (v6 == CFDictionaryGetTypeID())
        {
          bzero(v8, 0x400uLL);
          sub_1000795D4(v5, kUMUserSessionShortNameKey, v8, 1024);
          xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, v8);
        }
      }

      ++v3;
    }

    while (CFArrayGetCount(qword_1000EB5D0) > v3);
  }

  xpc_dictionary_set_value(v1, "gr_members", v2);

  return 1;
}

uint64_t sub_100036408(void *a1)
{
  v1 = a1;
  strcpy(string, "_analyticsusers");
  xpc_dictionary_set_int64(v1, "gr_gid", 250);
  xpc_dictionary_set_string(v1, "gr_name", string);
  v2 = xpc_array_create(0, 0);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aMobile_1);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aAnalyticsd);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aWireless_1);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aNetworkd_1);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aTimed);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aGpsd);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aReportmemoryex);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aSecurityd_0);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aNearbyd);
  if (qword_1000EB5D0 && CFArrayGetCount(qword_1000EB5D0) >= 1)
  {
    v3 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5D0, v3);
      if (ValueAtIndex)
      {
        v5 = ValueAtIndex;
        v6 = CFGetTypeID(ValueAtIndex);
        if (v6 == CFDictionaryGetTypeID())
        {
          bzero(v8, 0x400uLL);
          sub_1000795D4(v5, kUMUserSessionShortNameKey, v8, 1024);
          xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, v8);
        }
      }

      ++v3;
    }

    while (CFArrayGetCount(qword_1000EB5D0) > v3);
  }

  xpc_dictionary_set_value(v1, "gr_members", v2);

  return 1;
}

void sub_10003661C()
{
  mach_service = xpc_connection_create_mach_service("com.apple.system.libinfo.muser", qword_1000EB618, 1uLL);
  v1 = qword_1000EB300;
  qword_1000EB300 = mach_service;

  __xpc_connection_set_logging();
  xpc_connection_set_event_handler(qword_1000EB300, &stru_1000DD5D8);
  v2 = qword_1000EB300;

  xpc_connection_resume(v2);
}

void sub_100036694(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  __xpc_connection_set_logging();
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100036734;
  handler[3] = &unk_1000DD600;
  v5 = v2;
  v3 = v2;
  xpc_connection_set_event_handler(v3, handler);
  xpc_connection_resume(v3);
}

void sub_100036734(uint64_t a1, void *a2)
{
  object = a2;
  v3 = xpc_copy_description(object);
  free(v3);
  if (xpc_get_type(object) != &_xpc_type_error)
  {
    reply = xpc_dictionary_create_reply(object);
    string = xpc_dictionary_get_string(object, "reqtype");
    if (!strcmp(string, "username"))
    {
      v7 = xpc_dictionary_get_string(object, "query");
      if (!strcmp(v7, "mobile"))
      {
        v19 = dword_1000EB5B0;
        v20 = sub_100088F2C(qword_1000EB608);
        v21 = v20;
        if (v19 == 2)
        {
          v22 = sub_100089AC4(v20);
        }

        else if (sub_100089A48(v20))
        {
          v25 = sub_100088F2C(qword_1000EB608);
          v22 = sub_100089AC4(v25);
        }

        else
        {
          v22 = -1;
        }

        if (v22 == -1)
        {
          goto LABEL_52;
        }

        v9 = sub_100035D70(v22);
        if (!v9)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v8 = CFStringCreateWithCString(kCFAllocatorDefault, v7, 0x8000100u);
        v9 = sub_100036010(v8);
        if (v8)
        {
          CFRelease(v8);
        }

        if (!v9)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      if (strcmp(string, "uid"))
      {
        if (!strcmp(string, "gid"))
        {
          int64 = xpc_dictionary_get_int64(object, "query");
          v15 = int64;
          if (int64 == 250)
          {
            sub_100036408(reply);
            goto LABEL_52;
          }

          if (int64 != 299)
          {
            if (int64 == 501)
            {
              v16 = dword_1000EB5B0;
              v17 = sub_100088F2C(qword_1000EB608);
              v18 = v17;
              if (v16 == 2)
              {
                v15 = sub_100089AC4(v17);
              }

              else if (sub_100089A48(v17))
              {
                v38 = sub_100088F2C(qword_1000EB608);
                v15 = sub_100089AC4(v38);
              }

              else
              {
                v15 = -1;
              }
            }

            if (v15 == -1)
            {
              goto LABEL_52;
            }

            v40 = sub_100035D70(v15);
            if (!v40)
            {
              goto LABEL_52;
            }

            v9 = v40;
LABEL_69:
            sub_100035800(v9, reply);
            goto LABEL_51;
          }
        }

        else
        {
          if (strcmp(string, "groupname"))
          {
            if (!strcmp(string, "grouplist"))
            {
              v27 = xpc_dictionary_get_string(object, "query");
              if (v27)
              {
                v28 = CFStringCreateWithCString(kCFAllocatorDefault, v27, 0x8000100u);
                v29 = sub_100036010(v28);
                if (v28)
                {
                  CFRelease(v28);
                }

                if (v29)
                {
                  v30 = sub_1000023E8(v29, kUMUserSessionGroupIDKey);
                  v31 = xpc_array_create(0, 0);
                  xpc_array_set_int64(v31, 0xFFFFFFFFFFFFFFFFLL, v30);
                  xpc_array_set_int64(v31, 0xFFFFFFFFFFFFFFFFLL, 250);
                  xpc_array_set_int64(v31, 0xFFFFFFFFFFFFFFFFLL, 299);
                  xpc_dictionary_set_value(reply, "grouplist", v31);
                  CFRelease(v29);
                }
              }
            }

            else if (!strcmp(string, "available"))
            {
              v6 = sub_100088F2C(qword_1000EB608);
              sub_100089A48(v6);

              xpc_dictionary_set_BOOL(reply, "available", 1);
            }

            goto LABEL_52;
          }

          v23 = xpc_dictionary_get_string(object, "query");
          if (!strcmp(v23, "mobile"))
          {
            v32 = dword_1000EB5B0;
            v33 = sub_100088F2C(qword_1000EB608);
            v34 = v33;
            if (v32 == 2)
            {
              v35 = sub_100089AC4(v33);
            }

            else if (sub_100089A48(v33))
            {
              v39 = sub_100088F2C(qword_1000EB608);
              v35 = sub_100089AC4(v39);
            }

            else
            {
              v35 = -1;
            }

            if (v35 == -1)
            {
              goto LABEL_52;
            }

            v9 = sub_100035D70(v35);
LABEL_68:
            if (!v9)
            {
              goto LABEL_52;
            }

            goto LABEL_69;
          }

          if (strcmp(v23, "systemusers"))
          {
            v24 = CFStringCreateWithCString(kCFAllocatorDefault, v23, 0x8000100u);
            v9 = sub_100036010(v24);
            if (v24)
            {
              CFRelease(v24);
            }

            goto LABEL_68;
          }
        }

        sub_1000361E8(reply);
LABEL_52:
        v37 = xpc_copy_description(reply);
        free(v37);
        xpc_connection_send_message(*(a1 + 32), reply);

        goto LABEL_53;
      }

      v10 = xpc_dictionary_get_int64(object, "query");
      if (v10 == 501)
      {
        v11 = dword_1000EB5B0;
        v12 = sub_100088F2C(qword_1000EB608);
        v13 = v12;
        if (v11 == 2)
        {
          v10 = sub_100089AC4(v12);
        }

        else if (sub_100089A48(v12))
        {
          v26 = sub_100088F2C(qword_1000EB608);
          v10 = sub_100089AC4(v26);
        }

        else
        {
          v10 = -1;
        }
      }

      if (v10 == -1)
      {
        goto LABEL_52;
      }

      v36 = sub_100035D70(v10);
      if (!v36)
      {
        goto LABEL_52;
      }

      v9 = v36;
    }

    sub_100035668(v9, reply, 1);
LABEL_51:
    CFRelease(v9);
    goto LABEL_52;
  }

LABEL_53:
}

void sub_100036CA4(char *__format, ...)
{
  va_start(va, __format);
  va_copy(&v11[1], va);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__str = 0u;
  v14 = 0u;
  vsnprintf(__str, 0x80uLL, __format, va);
  if (qword_1000EB310 != -1)
  {
    dispatch_once(&qword_1000EB310, &stru_1000DD620);
  }

  v1 = qword_1000EB308;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 0;
    v2 = sub_1000011A8(1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFE;
    }

    if (v3)
    {
      *v12 = 136315138;
      *&v12[4] = __str;
      v5 = _os_log_send_and_compose_impl(v3, v11, 0, 0, &_mh_execute_header, v1, 0, "FATAL:Entering RECOVERYMODE due to: %s", v12);
      v4 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }

  sub_100036F10("usermanagerd", __str);
  sub_100036F10("auto-boot", "false");
  if (qword_1000EB310 != -1)
  {
    dispatch_once(&qword_1000EB310, &stru_1000DD620);
  }

  v6 = qword_1000EB308;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
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
      LOWORD(v11[0]) = 0;
      v10 = _os_log_send_and_compose_impl(v8, v12, 0, 0, &_mh_execute_header, v6, 0, "Rebooting...", v11, 2);
      v9 = v10;
      if (v10)
      {
        sub_100002A8C(v10);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  fprintf(__stdoutp, "UMD:FATAL OTI LOAD ERROR: %s\n", __str);
  fwrite("UMD:REBOOTING INTO RECOVERY MODE.\n", 0x22uLL, 1uLL, __stdoutp);
  reboot(0);
  exit(71);
}

uint64_t sub_100036F10(char *cStr, const char *a2)
{
  v3 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v4 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (v4)
  {
    v5 = v4;
    v6 = CFStringCreateWithCString(0, a2, 0x8000100u);
    if (v6)
    {
      v7 = v6;
      v8 = IORegistryEntrySetCFProperty(v5, v3, v6);
      if (v8)
      {
        v9 = v8;
        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v10 = qword_1000EB308;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 0;
          v11 = sub_1000011A8(1);
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
            v28[0] = 67109120;
            v28[1] = v9;
            v13 = _os_log_send_and_compose_impl(v12, &v27, 0, 0, &_mh_execute_header, v10, 0, "Could not save value:%08x", v28);
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

        v25 = 0xFFFFFFFFLL;
      }

      else
      {
        v25 = 0;
      }

      CFRelease(v7);
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v20 = qword_1000EB308;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 0;
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
          LOWORD(v28[0]) = 0;
          v23 = _os_log_send_and_compose_impl(v22, &v27, 0, 0, &_mh_execute_header, v20, 0, "Could not create string for value", v28, 2);
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

      v25 = 0xFFFFFFFFLL;
    }

    IOObjectRelease(v5);
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v15 = qword_1000EB308;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 0;
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
        LOWORD(v28[0]) = 0;
        v18 = _os_log_send_and_compose_impl(v17, &v27, 0, 0, &_mh_execute_header, v15, 0, "Could not get options entry from the device tree", v28, 2);
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

    v25 = 0xFFFFFFFFLL;
  }

  CFRelease(v3);
  return v25;
}

const void *sub_100037278(NSObject *a1, int a2)
{
  v4 = a1;
  v5 = sub_10008A2F4(qword_1000EB2E0, a1);
  if (!v5)
  {
    if (qword_1000EB310 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_66;
  }

  v2 = v5;
  if (a2)
  {
    if (!sub_10006E308(v5))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v4 = qword_1000EB308;
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_65;
      }

      v26 = 0;
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        goto LABEL_62;
      }

      v2 = 0;
      goto LABEL_64;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v6 = qword_1000EB308;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 0;
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
        LOWORD(v27) = 0;
        v9 = _os_log_send_and_compose_impl(v8, &v26, 0, 0, &_mh_execute_header, v6, 0, "Updated the manifest with User Disk/Volume Information, saving the manifest", &v27, 2);
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

    sub_100018C80();
  }

  v11 = sub_100079590(v2, kUMUserSessionVolumeDeviceNodeKey);
  result = sub_100079590(v2, kUMUserSessionVolumeUUIDKey);
  if (!v11)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v2 = qword_1000EB308;
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    v26 = 0;
    v15 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (v16)
    {
      goto LABEL_54;
    }

    v4 = 0;
    goto LABEL_56;
  }

  if (!result)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v2 = qword_1000EB308;
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_61;
    }

    v26 = 0;
    v17 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      goto LABEL_58;
    }

    v4 = 0;
    while (1)
    {
      free(v4);
LABEL_61:

      sleep(2u);
      v20 = sub_100018028("UserManagement early boot task missing volumeUUID for the booted user..");
LABEL_62:
      LOWORD(v27) = 0;
      LODWORD(v25) = 2;
      v24 = _os_log_send_and_compose_impl(v20, &v26, 0, 0, &_mh_execute_header, v4, 0, "Unable to find User Volume properties...", &v27, v25);
      v2 = v24;
      if (v24)
      {
        sub_100002A8C(v24);
      }

LABEL_64:
      free(v2);
LABEL_65:

      sleep(2u);
      sub_100018028("UserManagement early boot task failed to find device Node or volume uuid of UserVolume during update install");
LABEL_66:
      sub_100089D14();
LABEL_20:
      v4 = qword_1000EB308;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 0;
        v13 = sub_1000011A8(1);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
        }

        else
        {
          v14 = v13 & 0xFFFFFFFE;
        }

        if (v14)
        {
          LOWORD(v27) = 0;
          LODWORD(v25) = 2;
          v21 = _os_log_send_and_compose_impl(v14, &v26, 0, 0, &_mh_execute_header, v4, 0, "Could not Locate primary user session of Update install user", &v27, v25);
          v2 = v21;
          if (v21)
          {
            sub_100002A8C(v21);
          }
        }

        else
        {
          v2 = 0;
        }

        free(v2);
      }

      sleep(2u);
      v16 = sub_100018028("UserManagement early boot task could not Locate primary user session of Update install user");
LABEL_54:
      v27 = 67109120;
      v28 = v4;
      v22 = _os_log_send_and_compose_impl(v16, &v26, 0, 0, &_mh_execute_header, v2, 0, "Missing disknode for the booted user:%d", &v27);
      v4 = v22;
      if (v22)
      {
        sub_100002A8C(v22);
      }

LABEL_56:
      free(v4);
LABEL_57:

      sleep(2u);
      v18 = sub_100018028("UserManagement early boot task missing disknode for the booted user..");
LABEL_58:
      v27 = 67109120;
      v28 = v4;
      v23 = _os_log_send_and_compose_impl(v18, &v26, 0, 0, &_mh_execute_header, v2, 0, "Missing volumeUUID for the booted user:%d", &v27);
      v4 = v23;
      if (v23)
      {
        sub_100002A8C(v23);
      }
    }
  }

  return result;
}

id sub_100037758()
{
  v0 = [@"VolumeMigrationInProgress" dataUsingEncoding:4];
  v1 = sub_1000013A0(qword_1000EB608);
  v2 = [v1 atomicallyWriteData:v0 toPath:@"/private/var//keybags/umVolumeMigration-inprogress.kb" error:0];

  if (v2)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v3 = qword_1000EB308;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
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
        LOWORD(v11) = 0;
        v6 = _os_log_send_and_compose_impl(v5, &v12, 0, 0, &_mh_execute_header, v3, 0, "volumeMigratinMarkerCreate Successful", &v11, 2, v11);
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v3 = qword_1000EB308;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v7 = sub_1000011A8(1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        LOWORD(v11) = 0;
        v6 = _os_log_send_and_compose_impl(v8, &v12, 0, 0, &_mh_execute_header, v3, 0, "failed to write diskSaveUserSessions dict", &v11, 2, v11);
LABEL_18:
        v9 = v6;
        if (v6)
        {
          sub_100002A8C(v6);
        }

        goto LABEL_21;
      }

LABEL_20:
      v9 = 0;
LABEL_21:
      free(v9);
    }
  }

  return v2;
}

void sub_100037918()
{
  v2 = 1;
  v623 = 1;
  v3 = sub_1000561D0(UMDAPFSSupportVolumeHelper, qword_1000EB608, byte_1000EB602);
  v4 = qword_1000EB2D8;
  qword_1000EB2D8 = v3;

  v5 = sub_100053060(UMDUserManager, qword_1000EB2D8);
  v6 = qword_1000EB2E0;
  qword_1000EB2E0 = v5;

  v7 = &off_1000EB000;
  v8 = &off_1000EB000;
  if (![qword_1000EB2D8 splitUserVolumeEnabled])
  {
    v610 = 0;
    v12 = 0;
    goto LABEL_95;
  }

  *err = 0;
  if (sub_100079BA8() == 100)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v9 = qword_1000EB308;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v10 = sub_1000011A8(1);
      v0 = v9;
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        LOWORD(uuid[0]) = 0;
        v1 = _os_log_send_and_compose_impl(v11, value, 0, 0, &_mh_execute_header, v0, 0, "UM debug panic boot arg umd-migration-debug=100, Trying to redo Volume Migration, setting marker file here..", uuid, 2);

        if (v1)
        {
          sub_100002A8C(v1);
        }
      }

      else
      {

        v1 = 0;
      }

      free(v1);
    }

    sub_100037758();
  }

  if (sub_100079BA8() == 101)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v13 = qword_1000EB308;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v14 = sub_1000011A8(1);
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
        LOWORD(uuid[0]) = 0;
        LODWORD(v604) = 2;
        v1 = _os_log_send_and_compose_impl(v16, value, 0, 0, &_mh_execute_header, v15, 0, "UM debug panic boot arg umd-migration-debug=101, removing usersessionbag  continuing to avoid Primary Migrate Panic", uuid, v604);

        if (v1)
        {
          sub_100002A8C(v1);
        }
      }

      else
      {

        v1 = 0;
      }

      free(v1);
    }

    v17 = sub_1000013A0(qword_1000EB608);
    v0 = [v17 removeFileAtPath:@"/private/var//keybags/usersession.kb" error:0];

    if (v0)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v18 = qword_1000EB308;
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      value[0] = 0;
      v19 = sub_1000011A8(1);
      v18 = v18;
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
        LOWORD(uuid[0]) = 0;
        LODWORD(v604) = 2;
        v21 = _os_log_send_and_compose_impl(v20, value, 0, 0, &_mh_execute_header, v18, 0, "Removed USER_SESSION_BAG_PATH, continuing to boot.. ", uuid, v604);
        goto LABEL_45;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v18 = qword_1000EB308;
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      value[0] = 0;
      v22 = sub_1000011A8(1);
      v18 = v18;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        LOWORD(uuid[0]) = 0;
        LODWORD(v604) = 2;
        v21 = _os_log_send_and_compose_impl(v23, value, 0, 0, &_mh_execute_header, v18, 0, "Unlink of USER_SESSION_BAG_PATH failed, unfortunately can't recover..", uuid, v604);
LABEL_45:
        v0 = v21;

        if (v0)
        {
          sub_100002A8C(v0);
        }

        goto LABEL_48;
      }
    }

    v0 = 0;
LABEL_48:
    free(v0);
LABEL_49:
  }

  if (sub_1000725AC(err, &v623))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v24 = qword_1000EB308;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v25 = sub_1000011A8(1);
      v0 = v24;
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        LOWORD(uuid[0]) = 0;
        LODWORD(v604) = 2;
        v1 = _os_log_send_and_compose_impl(v26, value, 0, 0, &_mh_execute_header, v0, 0, "Boot after Update Install, needs User & System volume migration", uuid, v604);

        if (v1)
        {
          sub_100002A8C(v1);
        }
      }

      else
      {

        v1 = 0;
      }

      free(v1);
    }

    if (!sub_100037758())
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v84 = qword_1000EB308;
      if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_1337;
      }

      value[0] = 0;
      v526 = sub_1000011A8(1);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v527 = v526;
      }

      else
      {
        v527 = v526 & 0xFFFFFFFE;
      }

      if (!v527)
      {
        v528 = 0;
LABEL_1336:
        free(v528);
LABEL_1337:

        v86 = sub_100018028("Creating classD marker file in /var/keybags in early boot task failed");
        goto LABEL_1338;
      }

LABEL_1334:
      LOWORD(uuid[0]) = 0;
      LODWORD(v604) = 2;
      v547 = _os_log_send_and_compose_impl(v527, value, 0, 0, &_mh_execute_header, v84, 0, "FAILED TO CREATE MARKER FILE TO INDICATE VOLUME MIGRATION IS NEEDED", uuid, v604);
      v528 = v547;
      if (v547)
      {
        sub_100002A8C(v547);
      }

      goto LABEL_1336;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v27 = qword_1000EB308;
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_94;
    }

    value[0] = 0;
    v35 = sub_1000011A8(1);
    v0 = v27;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v35;
    }

    else
    {
      v36 = v35 & 0xFFFFFFFE;
    }

    if (v36)
    {
      LOWORD(uuid[0]) = 0;
      LODWORD(v604) = 2;
      v30 = _os_log_send_and_compose_impl(v36, value, 0, 0, &_mh_execute_header, v0, 0, "Successfully marker file to indicate volume migration needed, in progress", uuid, v604);
LABEL_90:
      v37 = v30;

      if (v37)
      {
        sub_100002A8C(v37);
      }

      goto LABEL_93;
    }

    goto LABEL_92;
  }

  if (sub_100021718())
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v27 = qword_1000EB308;
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_94;
    }

    value[0] = 0;
    v28 = sub_1000011A8(1);
    v0 = v27;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
    }

    else
    {
      v29 = v28 & 0xFFFFFFFE;
    }

    if (v29)
    {
      LOWORD(uuid[0]) = 0;
      LODWORD(v604) = 2;
      v30 = _os_log_send_and_compose_impl(v29, value, 0, 0, &_mh_execute_header, v0, 0, "UM-MARKER-FILE - Boot without completing Migration, needs User & System volume migration", uuid, v604);
      goto LABEL_90;
    }

LABEL_92:

    v37 = 0;
LABEL_93:
    free(v37);
LABEL_94:

    v610 = 0;
    v12 = 1;
    goto LABEL_95;
  }

  if (!v623)
  {
    byte_1000EB603 = 1;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v31 = qword_1000EB308;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v32 = sub_1000011A8(1);
      v0 = v31;
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (v33)
      {
        LOWORD(uuid[0]) = 0;
        LODWORD(v604) = 2;
        v34 = _os_log_send_and_compose_impl(v33, value, 0, 0, &_mh_execute_header, v0, 0, "IS Encrypted FALSE", uuid, v604);

        if (v34)
        {
          sub_100002A8C(v34);
        }
      }

      else
      {

        v34 = 0;
      }

      free(v34);
    }

    v183 = sub_100089A80(qword_1000EB608);
    [v183 setIgnoreIdentityMethods:byte_1000EB603];
  }

  v623 = 1;
  if (sub_1000725EC(err, &v623))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v184 = qword_1000EB308;
    if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v185 = sub_1000011A8(1);
      v0 = v184;
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v186 = v185;
      }

      else
      {
        v186 = v185 & 0xFFFFFFFE;
      }

      if (v186)
      {
        LOWORD(uuid[0]) = 0;
        LODWORD(v604) = 2;
        v187 = _os_log_send_and_compose_impl(v186, value, 0, 0, &_mh_execute_header, v0, 0, "Boot after Erase Install, needs User volume migration", uuid, v604);

        if (v187)
        {
          sub_100002A8C(v187);
        }
      }

      else
      {

        v187 = 0;
      }

      free(v187);
    }

    v12 = 0;
    v610 = 1;
  }

  else
  {
    v610 = 0;
    v12 = 0;
    v2 = *err != 2;
  }

LABEL_95:
  v38 = byte_1000EB603;
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v39 = v38 ^ 1;
  v40 = qword_1000EB308;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    value[0] = 0;
    v41 = sub_1000011A8(1);
    v0 = v40;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v41;
    }

    else
    {
      v42 = v41 & 0xFFFFFFFE;
    }

    if (v42)
    {
      *err = 0;
      LODWORD(v604) = 2;
      v43 = _os_log_send_and_compose_impl(v42, value, 0, 0, &_mh_execute_header, v0, 0, "LOADING USER SESSIONS", err, v604);

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
  }

  v612 = v12 & v39;

  v1 = 0x1000EB000;
  if (sub_10003E524(0))
  {
    v44 = &off_1000EB000;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v45 = qword_1000EB308;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v46 = sub_1000011A8(1);
      v0 = v45;
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v47 = v46;
      }

      else
      {
        v47 = v46 & 0xFFFFFFFE;
      }

      if (v47)
      {
        *err = 0;
        LODWORD(v604) = 2;
        v48 = _os_log_send_and_compose_impl(v47, value, 0, 0, &_mh_execute_header, v0, 0, "LOADED USER SESSIONS", err, v604);

        if (v48)
        {
          sub_100002A8C(v48);
        }
      }

      else
      {

        v48 = 0;
      }

      free(v48);
      v1 = 0x1000EB000;
    }

    goto LABEL_133;
  }

  v44 = &off_1000EB000;
  if ([qword_1000EB2D8 splitUserVolumeEnabled] && v610 | v612 ^ 1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v84 = qword_1000EB308;
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v523 = sub_1000011A8(1);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v524 = v523;
      }

      else
      {
        v524 = v523 & 0xFFFFFFFE;
      }

      if (v524)
      {
        *err = 0;
        LODWORD(v604) = 2;
        v546 = _os_log_send_and_compose_impl(v524, value, 0, 0, &_mh_execute_header, v84, 0, "Erase Install or normal boot, no UserSessions to Load...", err, v604);
        v525 = v546;
        if (v546)
        {
          sub_100002A8C(v546);
        }
      }

      else
      {
        v525 = 0;
      }

      free(v525);
    }

    sleep(2u);
    v527 = sub_100018028("UserManagement early boot task Erase Install or normal boot, no UserSessions to Load...");
    goto LABEL_1334;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v49 = qword_1000EB308;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    value[0] = 0;
    v50 = sub_1000011A8(1);
    v0 = v49;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v51 = v50;
    }

    else
    {
      v51 = v50 & 0xFFFFFFFE;
    }

    if (v51)
    {
      *err = 0;
      LODWORD(v604) = 2;
      v52 = _os_log_send_and_compose_impl(v51, value, 0, 0, &_mh_execute_header, v0, 0, "NO USER SESSIONS", err, v604);

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
    v1 = &off_1000EB000;
  }

  *(v1 + 1456) = 0;
  dword_1000EA3D0 = 501;
  qword_1000EB5A0 = sub_1000799A8();
  sub_100018C80();
LABEL_133:
  v53 = [v44[91] splitUserVolumeEnabled] ^ 1;
  if (*(v1 + 1456) == 1)
  {
    v53 = 1;
  }

  if (((v2 | v53) & 1) == 0)
  {
    if (qword_1000EB310 == -1)
    {
LABEL_1227:
      v511 = v8[97];
      if (os_log_type_enabled(v511, OS_LOG_TYPE_DEFAULT))
      {
        value[0] = 0;
        v512 = sub_1000011A8(1);
        if (os_log_type_enabled(v511, OS_LOG_TYPE_DEFAULT))
        {
          v513 = v512;
        }

        else
        {
          v513 = v512 & 0xFFFFFFFE;
        }

        if (v513)
        {
          *err = 0;
          LODWORD(v604) = 2;
          v529 = _os_log_send_and_compose_impl(v513, value, 0, 0, &_mh_execute_header, v511, 0, "Not shared iPad, missing User Volume cannot be located...", err, v604);
          v0 = v529;
          if (v529)
          {
            sub_100002A8C(v529);
          }
        }

        else
        {
          v0 = 0;
        }

        free(v0);
      }

      sleep(2u);
      v514 = sub_100018028("Not shared iPad, missing User Volume cannot be located...");
      goto LABEL_1278;
    }

LABEL_1487:
    sub_100089CEC();
    goto LABEL_1227;
  }

  sub_1000897B8(qword_1000EB2E0, qword_1000EB5A0);
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v54 = qword_1000EB308;
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    *err = 0;
    LODWORD(v55) = sub_1000011A8(1);
    v0 = v54;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v55 = v55;
    }

    else
    {
      v55 = v55 & 0xFFFFFFFE;
    }

    if (v55)
    {
      v2 = sub_100089624(qword_1000EB2E0);
      LODWORD(value[0]) = 138412290;
      *(value + 4) = v2;
      LODWORD(v604) = 12;
      v56 = _os_log_send_and_compose_impl(v55, err, 0, 0, &_mh_execute_header, v0, 0, "ALL Users List is %@", value, v604);

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
    v1 = 0x1000EB000;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v57 = qword_1000EB308;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    value[0] = 0;
    v58 = sub_1000011A8(1);
    v0 = v57;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v59 = v58;
    }

    else
    {
      v59 = v58 & 0xFFFFFFFE;
    }

    if (v59)
    {
      *err = 0;
      LODWORD(v604) = 2;
      v60 = _os_log_send_and_compose_impl(v59, value, 0, 0, &_mh_execute_header, v0, 0, "Determining the user to boot", err, v604);

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
    v1 = &off_1000EB000;
  }

  if (*(v1 + 1456) == 1)
  {
    v61 = sub_10008A2F4(qword_1000EB2E0, 502);
    if (v61)
    {
      goto LABEL_240;
    }

    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v2 = &off_1000EB000;
    v61 = qword_1000EB318;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      value[0] = 0;
      v62 = sub_1000011A8(0);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v63 = v62;
      }

      else
      {
        v63 = v62 & 0xFFFFFFFE;
      }

      if (v63)
      {
        *err = 0;
        LODWORD(v604) = 2;
        v64 = _os_log_send_and_compose_impl(v63, value, 0, 0, &_mh_execute_header, v61, 1, "Loginwindow user not found", err, v604);
        v65 = v64;
        if (v64)
        {
          sub_100002A8C(v64);
        }
      }

      else
      {
        v65 = 0;
      }

      free(v65);
    }

    v76 = sub_10001D4F4(0xFFFFFFFFLL, 0);
    if (v76)
    {
      v61 = v76;
      if (qword_1000EB320 == -1)
      {
        goto LABEL_196;
      }
    }

    else
    {
      sub_100089DEC();
    }

    sub_100089D68();
LABEL_196:
    v1 = 0x1000EB000;
    v0 = qword_1000EB318;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v77 = sub_1000011A8(0);
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v78 = v77;
      }

      else
      {
        v78 = v77 & 0xFFFFFFFE;
      }

      if (v78)
      {
        *err = 0;
        LODWORD(v604) = 2;
        v79 = _os_log_send_and_compose_impl(v78, value, 0, 0, &_mh_execute_header, v0, 0, "Created loginwindow user", err, v604);
        goto LABEL_235;
      }

      goto LABEL_237;
    }

    goto LABEL_239;
  }

  v61 = sub_10008A2F4(qword_1000EB2E0, 501);
  if (![v44[91] splitUserVolumeEnabled])
  {
    if (v61)
    {
      goto LABEL_240;
    }

    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v2 = &off_1000EB000;
    v61 = qword_1000EB318;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      value[0] = 0;
      v72 = sub_1000011A8(0);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v73 = v72;
      }

      else
      {
        v73 = v72 & 0xFFFFFFFE;
      }

      if (v73)
      {
        *err = 0;
        LODWORD(v604) = 2;
        v74 = _os_log_send_and_compose_impl(v73, value, 0, 0, &_mh_execute_header, v61, 1, "Mobile user not found", err, v604);
        v75 = v74;
        if (v74)
        {
          sub_100002A8C(v74);
        }
      }

      else
      {
        v75 = 0;
      }

      free(v75);
    }

    v87 = sub_10004E3FC(0);
    if (v87)
    {
      v61 = v87;
      if (qword_1000EB320 == -1)
      {
        goto LABEL_229;
      }
    }

    else
    {
      sub_100089DBC();
    }

    sub_100089D68();
LABEL_229:
    v1 = 0x1000EB000;
    v0 = qword_1000EB318;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v88 = sub_1000011A8(0);
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v89 = v88;
      }

      else
      {
        v89 = v88 & 0xFFFFFFFE;
      }

      if (v89)
      {
        *err = 0;
        LODWORD(v604) = 2;
        v79 = _os_log_send_and_compose_impl(v89, value, 0, 0, &_mh_execute_header, v0, 0, "Created mobile user", err, v604);
LABEL_235:
        v90 = v79;
        if (v79)
        {
          sub_100002A8C(v79);
        }

        goto LABEL_238;
      }

LABEL_237:
      v90 = 0;
LABEL_238:
      free(v90);
      v1 = &off_1000EB000;
    }

LABEL_239:

    goto LABEL_240;
  }

  v66 = v612 ^ 1;
  if (v61)
  {
    v66 = 1;
  }

  if ((v66 & 1) == 0)
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v2 = &off_1000EB000;
    v67 = qword_1000EB318;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v68 = sub_1000011A8(0);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v69 = v68;
      }

      else
      {
        v69 = v68 & 0xFFFFFFFE;
      }

      if (v69)
      {
        *err = 0;
        LODWORD(v604) = 2;
        v70 = _os_log_send_and_compose_impl(v69, value, 0, 0, &_mh_execute_header, v67, 0, "Boot after update install, Mobile user not found, creating", err, v604);
        v71 = v70;
        if (v70)
        {
          sub_100002A8C(v70);
        }
      }

      else
      {
        v71 = 0;
      }

      free(v71);
    }

    v61 = sub_10004E3FC(1);
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v1 = 0x1000EB000;
    v0 = qword_1000EB318;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v80 = sub_1000011A8(0);
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v81 = v80;
      }

      else
      {
        v81 = v80 & 0xFFFFFFFE;
      }

      if (v81)
      {
        *err = 0;
        LODWORD(v604) = 2;
        v82 = _os_log_send_and_compose_impl(v81, value, 0, 0, &_mh_execute_header, v0, 0, "Created mobile user", err, v604);
        v83 = v82;
        if (v82)
        {
          sub_100002A8C(v82);
        }
      }

      else
      {
        v83 = 0;
      }

      free(v83);
      v1 = 0x1000EB000;
    }
  }

  if (!v61)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v84 = qword_1000EB308;
    if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_1341;
    }

    value[0] = 0;
    v85 = sub_1000011A8(1);
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      v86 = v85;
    }

    else
    {
      v86 = v85 & 0xFFFFFFFE;
    }

    if (!v86)
    {
      v0 = 0;
LABEL_1340:
      free(v0);
LABEL_1341:

      sleep(2u);
      sub_100018028("UserManagement early boot task unable to locate Primary user..");
      goto LABEL_1342;
    }

LABEL_1338:
    *err = 0;
    LODWORD(v604) = 2;
    v548 = _os_log_send_and_compose_impl(v86, value, 0, 0, &_mh_execute_header, v84, 0, "Boot after update install, Mobile MISSING, PANIC. ", err, v604);
    v0 = v548;
    if (v548)
    {
      sub_100002A8C(v548);
    }

    goto LABEL_1340;
  }

LABEL_240:
  CFRelease(v61);
  Count = sub_10008B010(qword_1000EB2E0);
  if ((Count & 1) == 0)
  {
    sub_100018028("UserManagement early boot task failed to remove nextSession file");
    goto LABEL_1234;
  }

  if (*(v1 + 1456) != 1)
  {
    goto LABEL_263;
  }

  if (byte_1000EA3D8 && qword_1000EB5A0)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v92 = qword_1000EB308;
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v93 = sub_1000011A8(1);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        v94 = v93;
      }

      else
      {
        v94 = v93 & 0xFFFFFFFE;
      }

      if (v94)
      {
        *err = 0;
        LODWORD(v604) = 2;
        v95 = _os_log_send_and_compose_impl(v94, value, 0, 0, &_mh_execute_header, v92, 0, "RESET ALL USER VOLUME MOUNTED", err, v604);
        v96 = v95;
        if (v95)
        {
          sub_100002A8C(v95);
        }
      }

      else
      {
        v96 = 0;
      }

      free(v96);
    }

    Count = CFArrayGetCount(qword_1000EB5A0);
    if (Count >= 1)
    {
      for (i = 0; i < Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5A0, i);
        if (ValueAtIndex)
        {
          v99 = ValueAtIndex;
          v2 = CFGetTypeID(ValueAtIndex);
          if (v2 == CFDictionaryGetTypeID())
          {
            if (CFDictionaryContainsKey(v99, kUMUserSessionVolumeMountedKey))
            {
              CFDictionarySetValue(v99, kUMUserSessionVolumeMountedKey, kCFBooleanFalse);
            }
          }
        }

        Count = CFArrayGetCount(qword_1000EB5A0);
      }
    }
  }

  sub_10003E710(Count);
  v1 = &off_1000EB000;
  v7 = &off_1000EB000;
  if (dword_1000EB5B0 != 1)
  {
LABEL_263:
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v100 = qword_1000EB308;
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v101 = sub_1000011A8(1);
      v102 = v100;
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        v103 = v101;
      }

      else
      {
        v103 = v101 & 0xFFFFFFFE;
      }

      if (v103)
      {
        *err = 0;
        LODWORD(v604) = 2;
        v104 = _os_log_send_and_compose_impl(v103, value, 0, 0, &_mh_execute_header, v102, 0, "LOADING PERSONA..", err, v604);

        if (v104)
        {
          sub_100002A8C(v104);
        }
      }

      else
      {

        v104 = 0;
      }

      free(v104);
      v1 = 0x1000EB000;
    }

    if (qword_1000EB2E8)
    {
      sub_100089DD4();
    }

    else
    {
      v44 = &off_1000EB000;
      v7 = &selRef_StopBubbleWithPID_WithUID_WithStatus_;
      v105 = sub_100056424(UMDPersonaManager, qword_1000EB2E0);
      v106 = qword_1000EB2E8;
      qword_1000EB2E8 = v105;

      LODWORD(uuid[0]) = 0;
      v2 = &off_1000EB000;
      if (!sub_10003E884(uuid))
      {
        if (qword_1000EB330 != -1)
        {
          sub_100089D40();
        }

        v107 = qword_1000EB328;
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
        {
          value[0] = 0;
          v108 = sub_1000011A8(0);
          v109 = v107;
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
          {
            v110 = v108;
          }

          else
          {
            v110 = v108 & 0xFFFFFFFE;
          }

          if (v110)
          {
            *err = 67109120;
            *&err[4] = uuid[0];
            LODWORD(v604) = 8;
            v111 = _os_log_send_and_compose_impl(v110, value, 0, 0, &_mh_execute_header, v109, 0, "Failed to load persona manifest: %{darwin.errno}d", err, v604);

            if (v111)
            {
              sub_100002A8C(v111);
            }
          }

          else
          {

            v111 = 0;
          }

          free(v111);
          v1 = 0x1000EB000;
        }

        v112 = sub_100089790(qword_1000EB2E8);
        sub_1000553A0(v112, 1);
      }

      if (qword_1000EB330 == -1)
      {
        goto LABEL_289;
      }
    }

    sub_100089D40();
LABEL_289:
    v113 = *(v2 + 808);
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v114 = sub_1000011A8(0);
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
        *err = 0;
        LODWORD(v604) = 2;
        v117 = _os_log_send_and_compose_impl(v116, value, 0, 0, &_mh_execute_header, v115, 0, "Loaded persona manifest", err, v604);

        if (v117)
        {
          sub_100002A8C(v117);
        }
      }

      else
      {

        v117 = 0;
      }

      free(v117);
      v1 = 0x1000EB000;
    }

    if (qword_1000EB330 != -1)
    {
      sub_100089D40();
    }

    v8 = v44;
    v118 = *(v2 + 808);
    v44 = &off_1000EB000;
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
    {
      *err = 0;
      LODWORD(v119) = sub_1000011A8(0);
      v120 = v118;
      if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
      {
        v119 = v119;
      }

      else
      {
        v119 = v119 & 0xFFFFFFFE;
      }

      if (v119)
      {
        v121 = sub_1000013A0(qword_1000EB2E8);
        LODWORD(value[0]) = 138412290;
        *(value + 4) = v121;
        LODWORD(v604) = 12;
        v122 = _os_log_send_and_compose_impl(v119, err, 0, 0, &_mh_execute_header, v120, 2, "Persona state: %@", value, v604);

        if (v122)
        {
          sub_100002A8C(v122);
        }
      }

      else
      {

        v122 = 0;
      }

      free(v122);
      v1 = &off_1000EB000;
    }

    v123 = sub_100056408(&v7[285]);
    v7 = &off_1000EB000;
    if (v123)
    {
      if (sub_10009501C(qword_1000EB2E8))
      {
        sub_1000953B8(qword_1000EB2E8);
      }

      sub_100095708(qword_1000EB2E8);
    }
  }

  v124 = v610 & v39;
  v611 = v612 | v124;
  v125 = byte_1000EB603;
  v126 = [v44[91] splitUserVolumeEnabled];
  v127 = *(v1 + 1456);
  if (!v126)
  {
    if (v127 != 1)
    {
      if ((dword_1000EA3D0 - 501) <= 0x36 && (sub_10008A2F4(qword_1000EB2E0, dword_1000EA3D0), v135 = objc_claimAutoreleasedReturnValue(), v135, v135))
      {
        v133 = 0;
        v134 = dword_1000EA3D0;
      }

      else
      {
        if (qword_1000EB320 != -1)
        {
          sub_100089D68();
        }

        v136 = qword_1000EB318;
        if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
        {
          value[0] = 0;
          v137 = sub_1000011A8(0);
          if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
          {
            v138 = v137;
          }

          else
          {
            v138 = v137 & 0xFFFFFFFE;
          }

          if (v138)
          {
            *err = 67109120;
            *&err[4] = dword_1000EA3D0;
            v139 = _os_log_send_and_compose_impl(v138, value, 0, 0, &_mh_execute_header, v136, 16, "BootedUser %d is invalid, reverting to mobile", err);
            v140 = v139;
            if (v139)
            {
              sub_100002A8C(v139);
            }
          }

          else
          {
            v140 = 0;
          }

          free(v140);
        }

        v133 = 0;
        v134 = 501;
        dword_1000EA3D0 = 501;
      }

      goto LABEL_494;
    }

LABEL_326:
    v133 = 0;
    v134 = 502;
    goto LABEL_495;
  }

  if (v127 == 1)
  {
    goto LABEL_326;
  }

  if (((v611 | v125) & 1) == 0)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v141 = v8[97];
    if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v142 = sub_1000011A8(1);
      if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
      {
        v143 = v142;
      }

      else
      {
        v143 = v142 & 0xFFFFFFFE;
      }

      if (v143)
      {
        *err = 0;
        LODWORD(v604) = 2;
        v144 = _os_log_send_and_compose_impl(v143, value, 0, 0, &_mh_execute_header, v141, 0, "Reading Last Booted User from AKS, normal boot flow", err, v604);
        v145 = v144;
        if (v144)
        {
          sub_100002A8C(v144);
        }
      }

      else
      {
        v145 = 0;
      }

      free(v145);
    }

    *err = 0;
    uuid[0] = 0;
    if (!AKSGetLastUser())
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v151 = v8[97];
      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
      {
        v643 = 0;
        LODWORD(v152) = sub_1000011A8(1);
        if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
        {
          v152 = v152;
        }

        else
        {
          v152 = v152 & 0xFFFFFFFE;
        }

        if (v152)
        {
          v153 = *err;
          v154 = v151;
          Code = CFErrorGetCode(v153);
          LODWORD(value[0]) = 67109378;
          HIDWORD(value[0]) = Code;
          LOWORD(value[1]) = 2112;
          *(&value[1] + 2) = *err;
          LODWORD(v604) = 18;
          v156 = _os_log_send_and_compose_impl(v152, &v643, 0, 0, &_mh_execute_header, v154, 0, "AKSGetLastUser failed with errorcode: %d, CFError:%@", value, v604);

          if (v156)
          {
            sub_100002A8C(v156);
          }
        }

        else
        {
          v156 = 0;
        }

        free(v156);
      }

      v167 = CFErrorGetCode(*err);
      v134 = 0xFFFFFFFFLL;
      goto LABEL_467;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v146 = v8[97];
    if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
    {
      v643 = 0;
      v147 = sub_1000011A8(1);
      if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
      {
        v148 = v147;
      }

      else
      {
        v148 = v147 & 0xFFFFFFFE;
      }

      if (v148)
      {
        LODWORD(value[0]) = 138412290;
        *(value + 4) = uuid[0];
        LODWORD(v604) = 12;
        v149 = _os_log_send_and_compose_impl(v148, &v643, 0, 0, &_mh_execute_header, v146, 0, "AKSGetLastUser: Success, lastuser vol uuid is %@", value, v604);
        v150 = v149;
        if (v149)
        {
          sub_100002A8C(v149);
        }
      }

      else
      {
        v150 = 0;
      }

      free(v150);
    }

    v157 = CFUUIDCreateString(kCFAllocatorDefault, uuid[0]);
    if (v157)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v158 = v8[97];
      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
      {
        v643 = 0;
        v159 = sub_1000011A8(1);
        if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
        {
          v160 = v159;
        }

        else
        {
          v160 = v159 & 0xFFFFFFFE;
        }

        if (v160)
        {
          LODWORD(value[0]) = 138412290;
          *(value + 4) = v157;
          LODWORD(v604) = 12;
          v161 = _os_log_send_and_compose_impl(v160, &v643, 0, 0, &_mh_execute_header, v158, 0, "Volume UUID String is %@", value, v604);
          v162 = v161;
          if (v161)
          {
            sub_100002A8C(v161);
          }
        }

        else
        {
          v162 = 0;
        }

        free(v162);
      }

      v168 = sub_1000180D4(v157);
      if (v168)
      {
        v169 = v168;
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v170 = v8[97];
        if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
        {
          v643 = 0;
          v171 = sub_1000011A8(1);
          if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
          {
            v172 = v171;
          }

          else
          {
            v172 = v171 & 0xFFFFFFFE;
          }

          if (v172)
          {
            LODWORD(value[0]) = 138412290;
            *(value + 4) = v169;
            LODWORD(v604) = 12;
            v173 = _os_log_send_and_compose_impl(v172, &v643, 0, 0, &_mh_execute_header, v170, 0, "Found user session %@", value, v604);
            v174 = v173;
            if (v173)
            {
              sub_100002A8C(v173);
            }
          }

          else
          {
            v174 = 0;
          }

          free(v174);
        }

        v134 = sub_1000023E8(v169, kUMUserSessionIDKey);
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v188 = v8[97];
        if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
        {
          value[0] = 0;
          v189 = sub_1000011A8(1);
          if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
          {
            v190 = v189;
          }

          else
          {
            v190 = v189 & 0xFFFFFFFE;
          }

          if (v190)
          {
            LODWORD(v643) = 67109120;
            HIDWORD(v643) = v134;
            v191 = _os_log_send_and_compose_impl(v190, value, 0, 0, &_mh_execute_header, v188, 0, "returning last booted user as %d", &v643);
            v192 = v191;
            if (v191)
            {
              sub_100002A8C(v191);
            }
          }

          else
          {
            v192 = 0;
          }

          free(v192);
          v7 = &off_1000EB000;
        }

        CFRelease(v169);
        v167 = 0;
LABEL_466:
        CFRelease(v157);
LABEL_467:
        if (uuid[0])
        {
          CFRelease(uuid[0]);
        }

        v133 = v134 == -1;
        if (v134 == -1)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v193 = v8[97];
          if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
          {
            value[0] = 0;
            v194 = sub_1000011A8(1);
            if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
            {
              v195 = v194;
            }

            else
            {
              v195 = v194 & 0xFFFFFFFE;
            }

            if (v195)
            {
              *err = 67109120;
              *&err[4] = v167;
              v196 = _os_log_send_and_compose_impl(v195, value, 0, 0, &_mh_execute_header, v193, 0, "failed to find last booted user with error:%d, setup again", err);
              v197 = v196;
              if (v196)
              {
                sub_100002A8C(v196);
              }
            }

            else
            {
              v197 = 0;
            }

            free(v197);
          }

          v134 = 501;
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v198 = v8[97];
        if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
        {
          value[0] = 0;
          v199 = sub_1000011A8(1);
          if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
          {
            v200 = v199;
          }

          else
          {
            v200 = v199 & 0xFFFFFFFE;
          }

          if (v200)
          {
            *err = 67109120;
            *&err[4] = v134;
            v201 = _os_log_send_and_compose_impl(v200, value, 0, 0, &_mh_execute_header, v198, 0, "LastBooted User is %d", err);
            v202 = v201;
            if (v201)
            {
              sub_100002A8C(v201);
            }
          }

          else
          {
            v202 = 0;
          }

          free(v202);
        }

LABEL_494:
        v1 = 0x1000EB000;
        goto LABEL_495;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v163 = v8[97];
      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
      {
        value[0] = 0;
        v175 = sub_1000011A8(1);
        if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
        {
          v176 = v175;
        }

        else
        {
          v176 = v175 & 0xFFFFFFFE;
        }

        if (v176)
        {
          LOWORD(v643) = 0;
          LODWORD(v604) = 2;
          v166 = _os_log_send_and_compose_impl(v176, value, 0, 0, &_mh_execute_header, v163, 0, "UNABLE to find user session for volume uuid..", &v643, v604);
LABEL_418:
          v177 = v166;
          if (v166)
          {
            sub_100002A8C(v166);
          }

          goto LABEL_421;
        }

        goto LABEL_420;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v163 = v8[97];
      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
      {
        value[0] = 0;
        v164 = sub_1000011A8(1);
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
          LOWORD(v643) = 0;
          LODWORD(v604) = 2;
          v166 = _os_log_send_and_compose_impl(v165, value, 0, 0, &_mh_execute_header, v163, 0, "Not able to get volume uuid string..", &v643, v604);
          goto LABEL_418;
        }

LABEL_420:
        v177 = 0;
LABEL_421:
        free(v177);
      }
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v178 = v8[97];
    if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v179 = sub_1000011A8(1);
      if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
      {
        v180 = v179;
      }

      else
      {
        v180 = v179 & 0xFFFFFFFE;
      }

      if (v180)
      {
        LOWORD(v643) = 0;
        LODWORD(v604) = 2;
        v181 = _os_log_send_and_compose_impl(v180, value, 0, 0, &_mh_execute_header, v178, 0, "Unable to find Usersession of the last booted user, returning error ENOENT", &v643, v604);
        v182 = v181;
        if (v181)
        {
          sub_100002A8C(v181);
        }
      }

      else
      {
        v182 = 0;
      }

      free(v182);
    }

    v134 = 0xFFFFFFFFLL;
    v167 = 2;
    if (!v157)
    {
      goto LABEL_467;
    }

    goto LABEL_466;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v128 = v8[97];
  if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
  {
    value[0] = 0;
    v129 = sub_1000011A8(1);
    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
    {
      v130 = v129;
    }

    else
    {
      v130 = v129 & 0xFFFFFFFE;
    }

    if (v130)
    {
      *err = 0;
      LODWORD(v604) = 2;
      v131 = _os_log_send_and_compose_impl(v130, value, 0, 0, &_mh_execute_header, v128, 0, "Boot after Update/Erase install/Unencrypted FS, using last user as Mobile User", err, v604);
      v132 = v131;
      if (v131)
      {
        sub_100002A8C(v131);
      }
    }

    else
    {
      v132 = 0;
    }

    free(v132);
  }

  v133 = 0;
  v134 = 501;
LABEL_495:
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v0 = v8[97];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v203 = v133;
    value[0] = 0;
    v204 = sub_1000011A8(1);
    v205 = v0;
    if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
    {
      v206 = v204;
    }

    else
    {
      v206 = v204 & 0xFFFFFFFE;
    }

    if (v206)
    {
      *err = 67109120;
      *&err[4] = v134;
      v207 = _os_log_send_and_compose_impl(v206, value, 0, 0, &_mh_execute_header, v205, 0, "userToBoot is %d", err);

      if (v207)
      {
        sub_100002A8C(v207);
      }
    }

    else
    {

      v207 = 0;
    }

    v1 = 0x1000EB000;
    free(v207);
    v133 = v203;
  }

  if (v133)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v0 = v8[97];
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v208 = v134;
      v209 = v133;
      value[0] = 0;
      v210 = sub_1000011A8(1);
      v211 = v0;
      if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
      {
        v212 = v210;
      }

      else
      {
        v212 = v210 & 0xFFFFFFFE;
      }

      if (v212)
      {
        *err = 0;
        LODWORD(v604) = 2;
        v213 = _os_log_send_and_compose_impl(v212, value, 0, 0, &_mh_execute_header, v211, 0, "Setup Last User volume again", err, v604);

        if (v213)
        {
          sub_100002A8C(v213);
        }
      }

      else
      {

        v213 = 0;
      }

      v1 = 0x1000EB000;
      free(v213);
      v133 = v209;
      v134 = v208;
      v7 = &off_1000EB000;
    }
  }

  if ([v44[91] splitUserVolumeEnabled])
  {
    uuid[0] = 0;
    if (v611)
    {
      if (v612)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v0 = v8[97];
        if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
        {
          v214 = v134;
          v215 = v133;
          value[0] = 0;
          v216 = sub_1000011A8(1);
          v217 = v0;
          if (os_log_type_enabled(v217, OS_LOG_TYPE_DEFAULT))
          {
            v218 = v216;
          }

          else
          {
            v218 = v216 & 0xFFFFFFFE;
          }

          if (v218)
          {
            *err = 0;
            LODWORD(v604) = 2;
            v219 = _os_log_send_and_compose_impl(v218, value, 0, 0, &_mh_execute_header, v217, 0, "Update Install, getting user UUID to setup AKS", err, v604);

            if (v219)
            {
              sub_100002A8C(v219);
            }
          }

          else
          {

            v219 = 0;
          }

          v1 = 0x1000EB000;
          free(v219);
          v133 = v215;
          v134 = v214;
        }
      }

      if (!v124)
      {
LABEL_567:
        v607 = v124;
        v229 = sub_10008A2F4(qword_1000EB2E0, v134);
        if (!v229)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v516 = v8[97];
          if (os_log_type_enabled(v516, OS_LOG_TYPE_DEFAULT))
          {
            value[0] = 0;
            v517 = sub_1000011A8(1);
            v0 = v516;
            if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
            {
              v518 = v517;
            }

            else
            {
              v518 = v517 & 0xFFFFFFFE;
            }

            if (v518)
            {
              *err = 0;
              LODWORD(v604) = 2;
              v532 = _os_log_send_and_compose_impl(v518, value, 0, 0, &_mh_execute_header, v0, 0, "Could not Locate primary user session of Update install user", err, v604);

              v519 = 0;
              if (v532)
              {
                sub_100002A8C(v532);
                v519 = v532;
              }
            }

            else
            {

              v519 = 0;
            }

            free(v519);
          }

          sleep(2u);
          v521 = sub_100018028("UserManagement early boot task could not Locate primary user session of Update install user");
          goto LABEL_1302;
        }

        cf = v229;
        v230 = sub_100079590(v229, kUMUserSessionUUIDKey);
        if (v230)
        {
          v231 = v230;
          v232 = CFUUIDCreateFromString(kCFAllocatorDefault, v230);
          v233 = sub_1000169B4(NSUUID, v232);
          v609 = v232;
          if (v232)
          {
            v0 = v233;
            if (v612)
            {
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v7 = v8[97];
              if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
              {
                *err = 0;
                v234 = sub_1000011A8(1);
                v235 = v7;
                if (os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
                {
                  v236 = v234;
                }

                else
                {
                  v236 = v234 & 0xFFFFFFFE;
                }

                if (v236)
                {
                  LODWORD(value[0]) = 138412290;
                  *(value + 4) = v609;
                  LODWORD(v604) = 12;
                  v237 = _os_log_send_and_compose_impl(v236, err, 0, 0, &_mh_execute_header, v235, 0, "Update Install: Migrating Primary User Identity to uuid:%@", value, v604);

                  if (v237)
                  {
                    sub_100002A8C(v237);
                  }
                }

                else
                {

                  v237 = 0;
                }

                free(v237);
              }

              v248 = AKSIdentityMigrateFirst();
              v249 = qword_1000EB310 == -1;
              if (v248)
              {
                if (qword_1000EB310 != -1)
                {
                  sub_100089CEC();
                }

                v250 = v8[97];
                if (os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT))
                {
                  *err = 0;
                  v251 = sub_1000011A8(1);
                  v252 = v250;
                  if (os_log_type_enabled(v252, OS_LOG_TYPE_DEFAULT))
                  {
                    v253 = v251;
                  }

                  else
                  {
                    v253 = v251 & 0xFFFFFFFE;
                  }

                  if (v253)
                  {
                    LODWORD(value[0]) = 67109378;
                    HIDWORD(value[0]) = v134;
                    LOWORD(value[1]) = 2112;
                    *(&value[1] + 2) = v609;
                    LODWORD(v604) = 18;
                    v254 = _os_log_send_and_compose_impl(v253, err, 0, 0, &_mh_execute_header, v252, 0, "Update Install: Loading post migrateFirst, AKS Identity for User:%d, uuid:%@", value, v604);

                    if (v254)
                    {
                      sub_100002A8C(v254);
                    }
                  }

                  else
                  {

                    v254 = 0;
                  }

                  free(v254);
                }

                v622 = 0;
                v255 = sub_100022428(v0, v134, &v622);
                v7 = v622;
                if (v255)
                {
                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v256 = v8[97];
                  if (os_log_type_enabled(v256, OS_LOG_TYPE_DEFAULT))
                  {
                    value[0] = 0;
                    v257 = sub_1000011A8(1);
                    v258 = v256;
                    if (os_log_type_enabled(v258, OS_LOG_TYPE_DEFAULT))
                    {
                      v259 = v257;
                    }

                    else
                    {
                      v259 = v257 & 0xFFFFFFFE;
                    }

                    if (v259)
                    {
                      *err = 0;
                      LODWORD(v604) = 2;
                      v260 = _os_log_send_and_compose_impl(v259, value, 0, 0, &_mh_execute_header, v258, 0, "AKSLoadIdentity Succeeded", err, v604);

                      if (v260)
                      {
                        sub_100002A8C(v260);
                      }
                    }

                    else
                    {

                      v260 = 0;
                    }

                    free(v260);
                  }

                  sub_100036F10("IONVRAM-DELETE-PROPERTY", "usermanagerd");
                  v7 = &off_1000EB000;
                  v44 = &off_1000EB000;
                  if (*(v1 + 1456) != 1)
                  {
                    goto LABEL_858;
                  }

                  v641 = 0u;
                  v642 = 0u;
                  v639 = 0u;
                  v640 = 0u;
                  v637 = 0u;
                  v638 = 0u;
                  v635 = 0u;
                  v636 = 0u;
                  v633 = 0u;
                  v634 = 0u;
                  v631 = 0u;
                  v632 = 0u;
                  v629 = 0u;
                  v630 = 0u;
                  memset(value, 0, sizeof(value));
                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v261 = v8[97];
                  if (os_log_type_enabled(v261, OS_LOG_TYPE_DEFAULT))
                  {
                    *err = 0;
                    v262 = sub_1000011A8(1);
                    v263 = v261;
                    if (os_log_type_enabled(v263, OS_LOG_TYPE_DEFAULT))
                    {
                      v264 = v262;
                    }

                    else
                    {
                      v264 = v262 & 0xFFFFFFFE;
                    }

                    if (v264)
                    {
                      LOWORD(v643) = 0;
                      LODWORD(v604) = 2;
                      v265 = _os_log_send_and_compose_impl(v264, err, 0, 0, &_mh_execute_header, v263, 0, "Trying to find User volume on shared iPad", &v643, v604);

                      if (v265)
                      {
                        sub_100002A8C(v265);
                      }
                    }

                    else
                    {

                      v265 = 0;
                    }

                    v44 = &off_1000EB000;
                    free(v265);
                  }

                  if (!sub_100054A9C(value, 256))
                  {
                    if (qword_1000EB310 != -1)
                    {
                      sub_100089CEC();
                    }

                    v308 = v8[97];
                    if (!os_log_type_enabled(v308, OS_LOG_TYPE_DEFAULT))
                    {
LABEL_857:

                      v7 = &off_1000EB000;
                      if (*(v1 + 1456) == 1)
                      {
LABEL_903:
                        CFRelease(v609);
                        CFRelease(cf);
                        if (uuid[0])
                        {
                          CFRelease(uuid[0]);
                          v301 = 0;
                          uuid[0] = 0;
                        }

                        else
                        {
                          v301 = 0;
                        }

                        goto LABEL_1157;
                      }

LABEL_858:
                      if (!CFDictionaryContainsValue(cf, kUMUserSessionKeybagOpaqueDataKey))
                      {
                        value[0] = 0;
                        if (qword_1000EB310 != -1)
                        {
                          sub_100089CEC();
                        }

                        v367 = v8[97];
                        if (os_log_type_enabled(v367, OS_LOG_TYPE_DEFAULT))
                        {
                          *err = 0;
                          v368 = sub_1000011A8(1);
                          v369 = v367;
                          if (os_log_type_enabled(v369, OS_LOG_TYPE_DEFAULT))
                          {
                            v370 = v368;
                          }

                          else
                          {
                            v370 = v368 & 0xFFFFFFFE;
                          }

                          if (v370)
                          {
                            LOWORD(v643) = 0;
                            LODWORD(v604) = 2;
                            v371 = _os_log_send_and_compose_impl(v370, err, 0, 0, &_mh_execute_header, v369, 0, "No keybag data on the user session, trying to migrate from Keybag if it exists", &v643, v604);

                            if (v371)
                            {
                              sub_100002A8C(v371);
                            }
                          }

                          else
                          {

                            v371 = 0;
                          }

                          free(v371);
                        }

                        v372 = MKBKeyBagCopySystemOpaqueBlob();
                        if (v372)
                        {
                          v373 = v372;
                          if (qword_1000EB310 != -1)
                          {
                            sub_100089CEC();
                          }

                          v374 = v8[97];
                          if (os_log_type_enabled(v374, OS_LOG_TYPE_DEFAULT))
                          {
                            *err = 0;
                            v375 = sub_1000011A8(1);
                            v376 = v374;
                            if (os_log_type_enabled(v376, OS_LOG_TYPE_DEFAULT))
                            {
                              v377 = v375;
                            }

                            else
                            {
                              v377 = v375 & 0xFFFFFFFE;
                            }

                            if (v377)
                            {
                              LODWORD(v643) = 67109120;
                              HIDWORD(v643) = v373;
                              v378 = _os_log_send_and_compose_impl(v377, err, 0, 0, &_mh_execute_header, v376, 0, "Failed to retrieve KeybagData from MKB with error:%d", &v643);

                              if (v378)
                              {
                                sub_100002A8C(v378);
                              }
                            }

                            else
                            {

                              v378 = 0;
                            }

                            free(v378);
                          }

                          v44 = &off_1000EB000;
                        }

                        else if (value[0])
                        {
                          CFDictionarySetValue(cf, kUMUserSessionKeybagOpaqueDataKey, value[0]);
                          v44 = &off_1000EB000;
                          if (qword_1000EB310 != -1)
                          {
                            sub_100089CEC();
                          }

                          v1 = 0x1000EB000;
                          v379 = v8[97];
                          if (os_log_type_enabled(v379, OS_LOG_TYPE_DEFAULT))
                          {
                            *err = 0;
                            v380 = sub_1000011A8(1);
                            v381 = v379;
                            if (os_log_type_enabled(v381, OS_LOG_TYPE_DEFAULT))
                            {
                              v382 = v380;
                            }

                            else
                            {
                              v382 = v380 & 0xFFFFFFFE;
                            }

                            if (v382)
                            {
                              LODWORD(v643) = 67109120;
                              HIDWORD(v643) = v134;
                              v383 = _os_log_send_and_compose_impl(v382, err, 0, 0, &_mh_execute_header, v381, 0, "Saved keybag Data for the user:%d", &v643);

                              if (v383)
                              {
                                sub_100002A8C(v383);
                              }
                            }

                            else
                            {

                              v383 = 0;
                            }

                            v44 = &off_1000EB000;
                            free(v383);
                          }

                          sub_100018C80();
                          if (value[0])
                          {
                            CFRelease(value[0]);
                          }
                        }

                        else
                        {
                          v44 = &off_1000EB000;
                          if (qword_1000EB310 != -1)
                          {
                            sub_100089CEC();
                          }

                          v1 = 0x1000EB000;
                          v384 = v8[97];
                          if (os_log_type_enabled(v384, OS_LOG_TYPE_DEFAULT))
                          {
                            *err = 0;
                            v385 = sub_1000011A8(1);
                            v386 = v384;
                            if (os_log_type_enabled(v386, OS_LOG_TYPE_DEFAULT))
                            {
                              v387 = v385;
                            }

                            else
                            {
                              v387 = v385 & 0xFFFFFFFE;
                            }

                            if (v387)
                            {
                              LOWORD(v643) = 0;
                              LODWORD(v604) = 2;
                              v388 = _os_log_send_and_compose_impl(v387, err, 0, 0, &_mh_execute_header, v386, 0, "NO keybag Data on the system", &v643, v604);

                              if (v388)
                              {
                                sub_100002A8C(v388);
                              }
                            }

                            else
                            {

                              v388 = 0;
                            }

                            v44 = &off_1000EB000;
                            free(v388);
                          }
                        }

                        v7 = &off_1000EB000;
                      }

                      goto LABEL_903;
                    }

                    *err = 0;
                    v309 = sub_1000011A8(1);
                    v308 = v308;
                    if (os_log_type_enabled(v308, OS_LOG_TYPE_DEFAULT))
                    {
                      v310 = v309;
                    }

                    else
                    {
                      v310 = v309 & 0xFFFFFFFE;
                    }

                    if (v310)
                    {
                      LOWORD(v643) = 0;
                      LODWORD(v604) = 2;
                      v311 = _os_log_send_and_compose_impl(v310, err, 0, 0, &_mh_execute_header, v308, 0, "Could not find Primary User Volume..", &v643, v604);

                      if (v311)
                      {
                        sub_100002A8C(v311);
                      }
                    }

                    else
                    {

                      v311 = 0;
                    }

                    free(v311);
LABEL_856:
                    v44 = &off_1000EB000;
                    goto LABEL_857;
                  }

                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v303 = v8[97];
                  if (os_log_type_enabled(v303, OS_LOG_TYPE_DEFAULT))
                  {
                    v643 = 0;
                    v304 = sub_1000011A8(1);
                    v305 = v303;
                    if (os_log_type_enabled(v305, OS_LOG_TYPE_DEFAULT))
                    {
                      v306 = v304;
                    }

                    else
                    {
                      v306 = v304 & 0xFFFFFFFE;
                    }

                    if (v306)
                    {
                      *err = 136315138;
                      *&err[4] = value;
                      v307 = _os_log_send_and_compose_impl(v306, &v643, 0, 0, &_mh_execute_header, v305, 0, "Found Primary UserVolume disknode:%s", err);

                      if (v307)
                      {
                        sub_100002A8C(v307);
                      }
                    }

                    else
                    {

                      v307 = 0;
                    }

                    free(v307);
                  }

                  v308 = [NSString stringWithUTF8String:value];
                  if (!v308)
                  {
                    if (qword_1000EB310 != -1)
                    {
                      sub_100089CEC();
                    }

                    v317 = v8[97];
                    if (os_log_type_enabled(v317, OS_LOG_TYPE_DEFAULT))
                    {
                      *err = 0;
                      v318 = sub_1000011A8(1);
                      v317 = v317;
                      if (os_log_type_enabled(v317, OS_LOG_TYPE_DEFAULT))
                      {
                        v319 = v318;
                      }

                      else
                      {
                        v319 = v318 & 0xFFFFFFFE;
                      }

                      if (v319)
                      {
                        LOWORD(v643) = 0;
                        LODWORD(v604) = 2;
                        v320 = _os_log_send_and_compose_impl(v319, err, 0, 0, &_mh_execute_header, v317, 0, "Failed to created diskstring", &v643, v604);

                        if (v320)
                        {
                          sub_100002A8C(v320);
                        }
                      }

                      else
                      {

                        v320 = 0;
                      }

                      free(v320);
                    }

                    goto LABEL_855;
                  }

                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v312 = v8[97];
                  if (os_log_type_enabled(v312, OS_LOG_TYPE_DEFAULT))
                  {
                    v643 = 0;
                    v313 = sub_1000011A8(1);
                    v314 = v312;
                    if (os_log_type_enabled(v314, OS_LOG_TYPE_DEFAULT))
                    {
                      v315 = v313;
                    }

                    else
                    {
                      v315 = v313 & 0xFFFFFFFE;
                    }

                    if (v315)
                    {
                      *err = 138412546;
                      *&err[4] = v308;
                      v626 = 1024;
                      v627 = v134;
                      LODWORD(v604) = 18;
                      v316 = _os_log_send_and_compose_impl(v315, &v643, 0, 0, &_mh_execute_header, v314, 0, "Calling AKSVolumeMap with disk:%@ for useruid:%d", err, v604);

                      if (v316)
                      {
                        sub_100002A8C(v316);
                      }
                    }

                    else
                    {

                      v316 = 0;
                    }

                    free(v316);
                  }

                  v321 = sub_100089A80(qword_1000EB608);
                  v621 = 0;
                  v322 = [v321 mapVolume:v308 toSession:v134 withPersona:0 error:&v621];
                  v317 = v621;

                  if (v322)
                  {
                    if (qword_1000EB310 != -1)
                    {
                      sub_100089CEC();
                    }

                    v323 = v8[97];
                    if (!os_log_type_enabled(v323, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_761;
                    }

                    *err = 0;
                    v324 = sub_1000011A8(1);
                    v325 = v323;
                    if (os_log_type_enabled(v325, OS_LOG_TYPE_DEFAULT))
                    {
                      v326 = v324;
                    }

                    else
                    {
                      v326 = v324 & 0xFFFFFFFE;
                    }

                    if (v326)
                    {
                      LOWORD(v643) = 0;
                      v327 = _os_log_send_and_compose_impl(v326, err, 0, 0, &_mh_execute_header, v325, 0, "AKS VolumeMapPath Success");
                      goto LABEL_757;
                    }
                  }

                  else
                  {
                    if (qword_1000EB310 != -1)
                    {
                      sub_100089CEC();
                    }

                    v323 = v8[97];
                    if (!os_log_type_enabled(v323, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_761;
                    }

                    v643 = 0;
                    LODWORD(v328) = sub_1000011A8(1);
                    v325 = v323;
                    if (os_log_type_enabled(v325, OS_LOG_TYPE_DEFAULT))
                    {
                      v328 = v328;
                    }

                    else
                    {
                      v328 = v328 & 0xFFFFFFFE;
                    }

                    if (v328)
                    {
                      v329 = [v317 code];
                      *err = 134217984;
                      *&err[4] = v329;
                      v327 = _os_log_send_and_compose_impl(v328, &v643, 0, 0, &_mh_execute_header, v325, 0, "AKS VolumeMap failed with %ld", err);
LABEL_757:
                      v330 = v327;

                      if (v330)
                      {
                        sub_100002A8C(v330);
                      }

                      goto LABEL_760;
                    }
                  }

                  v330 = 0;
LABEL_760:
                  free(v330);
                  v1 = 0x1000EB000;
LABEL_761:

LABEL_855:
                  goto LABEL_856;
                }

                if (qword_1000EB310 != -1)
                {
                  sub_100089CEC();
                }

                v84 = v8[97];
                if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                {
LABEL_1349:

                  v552 = MGGetBoolAnswer();
                  v553 = [v7 code];
                  if (v552)
                  {
                    v553 = sub_100018028("UpdateInstall-FATAL OTI LOAD ERROR:%ld", v553);
                  }

                  sub_100036CA4("UpdateInstall-FATAL OTI LOAD ERROR:%ld", v553);
                }

                *err = 0;
                LODWORD(v1) = sub_1000011A8(1);
                v0 = v84;
                if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                {
                  v1 = v1;
                }

                else
                {
                  v1 = v1 & 0xFFFFFFFE;
                }

                if (!v1)
                {

                  v531 = 0;
LABEL_1348:
                  free(v531);
                  goto LABEL_1349;
                }

LABEL_1346:
                v550 = [v7 code];
                LODWORD(value[0]) = 134217984;
                *(value + 4) = v550;
                v551 = _os_log_send_and_compose_impl(v1, err, 0, 0, &_mh_execute_header, v0, 0, "AKSLoadIdentity failed with Error:%ld", value);

                v531 = 0;
                if (v551)
                {
                  sub_100002A8C(v551);
                  v531 = v551;
                }

                goto LABEL_1348;
              }

LABEL_1282:
              if (!v249)
              {
                sub_100089CEC();
              }

              v84 = v8[97];
              if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1345;
              }

              value[0] = 0;
              LODWORD(v1) = sub_1000011A8(1);
              v0 = v84;
              if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
              {
                v1 = v1;
              }

              else
              {
                v1 = v1 & 0xFFFFFFFE;
              }

              if (!v1)
              {

                v530 = 0;
LABEL_1344:
                free(v530);
LABEL_1345:

                sleep(2u);
                sub_100018028("UserManagement early boot task failed to migrate Primary User AKSIdentity during update install");
                goto LABEL_1346;
              }

LABEL_1342:
              v549 = CFErrorGetCode(uuid[0]);
              *err = 67109120;
              *&err[4] = v549;
              v1 = _os_log_send_and_compose_impl(v1, value, 0, 0, &_mh_execute_header, v0, 0, "AKSIdentityMigrateFirst failed with error:%d", err);

              v530 = 0;
              if (v1)
              {
                sub_100002A8C(v1);
                v530 = v1;
              }

              goto LABEL_1344;
            }

            if (v607)
            {
              LODWORD(v643) = 0;
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v238 = v8[97];
              if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
              {
                *err = 0;
                v239 = sub_1000011A8(1);
                v240 = v238;
                if (os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
                {
                  v241 = v239;
                }

                else
                {
                  v241 = v239 & 0xFFFFFFFE;
                }

                if (v241)
                {
                  LODWORD(value[0]) = 67109378;
                  HIDWORD(value[0]) = v134;
                  LOWORD(value[1]) = 2112;
                  *(&value[1] + 2) = v609;
                  LODWORD(v604) = 18;
                  v242 = _os_log_send_and_compose_impl(v241, err, 0, 0, &_mh_execute_header, v240, 0, "Erase Install: Setting up AKS Identity for User:%d, uuid:%@", value, v604);

                  if (v242)
                  {
                    sub_100002A8C(v242);
                  }
                }

                else
                {

                  v242 = 0;
                }

                free(v242);
              }

              v620 = 0;
              v266 = sub_100022428(v0, v134, &v620);
              v7 = v620;
              v267 = qword_1000EB310 == -1;
              if (!v266)
              {
LABEL_1306:
                if (!v267)
                {
                  sub_100089CEC();
                }

                v534 = v8[97];
                if (os_log_type_enabled(v534, OS_LOG_TYPE_DEFAULT))
                {
                  *err = 0;
                  LODWORD(v535) = sub_1000011A8(1);
                  v536 = v534;
                  if (os_log_type_enabled(v536, OS_LOG_TYPE_DEFAULT))
                  {
                    v535 = v535;
                  }

                  else
                  {
                    v535 = v535 & 0xFFFFFFFE;
                  }

                  if (v535)
                  {
                    v576 = [v7 code];
                    LODWORD(value[0]) = 134217984;
                    *(value + 4) = v576;
                    v577 = _os_log_send_and_compose_impl(v535, err, 0, 0, &_mh_execute_header, v536, 0, "AKSLoadIdentity failed with Error:%ld", value);

                    v537 = 0;
                    if (v577)
                    {
                      sub_100002A8C(v577);
                      v537 = v577;
                    }
                  }

                  else
                  {

                    v537 = 0;
                  }

                  free(v537);
                }

                v578 = MGGetBoolAnswer();
                v579 = [v7 code];
                if (v578)
                {
                  v579 = sub_100018028("EraseInstall-FATAL OTI LOAD ERROR:%ld", v579);
                }

                sub_100036CA4("EraseInstall-FATAL OTI LOAD ERROR:%ld", v579);
              }

              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v268 = v8[97];
              if (os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
              {
                value[0] = 0;
                v269 = sub_1000011A8(1);
                v270 = v268;
                if (os_log_type_enabled(v270, OS_LOG_TYPE_DEFAULT))
                {
                  v271 = v269;
                }

                else
                {
                  v271 = v269 & 0xFFFFFFFE;
                }

                if (v271)
                {
                  *err = 0;
                  LODWORD(v604) = 2;
                  v272 = _os_log_send_and_compose_impl(v271, value, 0, 0, &_mh_execute_header, v270, 0, "AKSLoadIdentity Succeeded", err, v604);

                  if (v272)
                  {
                    sub_100002A8C(v272);
                  }
                }

                else
                {

                  v272 = 0;
                }

                free(v272);
              }

              sub_100036F10("IONVRAM-DELETE-PROPERTY", "usermanagerd");
              CFRelease(cf);
              CFRelease(v609);

              v7 = &off_1000EB000;
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v44 = &off_1000EB000;
              v281 = v8[97];
              if (os_log_type_enabled(v281, OS_LOG_TYPE_DEFAULT))
              {
                v282 = v0;
                v283 = v134;
                v284 = v133;
                value[0] = 0;
                v285 = sub_1000011A8(1);
                v286 = v281;
                if (os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
                {
                  v287 = v285;
                }

                else
                {
                  v287 = v285 & 0xFFFFFFFE;
                }

                if (v287)
                {
                  *err = 0;
                  LODWORD(v604) = 2;
                  v288 = _os_log_send_and_compose_impl(v287, value, 0, 0, &_mh_execute_header, v286, 0, "Migrating UserVolume Media Key to Class C after Volume Map", err, v604);

                  if (v288)
                  {
                    sub_100002A8C(v288);
                  }
                }

                else
                {

                  v288 = 0;
                }

                v133 = v284;
                free(v288);
                v7 = &off_1000EB000;
                v134 = v283;
                v0 = v282;
                v44 = &off_1000EB000;
              }

              if (sub_1000729D4(1, &v643))
              {
                v301 = 0;
                v1 = 0x1000EB000;
LABEL_1157:
                if (*(v1 + 1456) != 1)
                {
                  if (v611)
                  {
                    v488 = 1;
                  }

                  else
                  {
                    v488 = byte_1000EB603;
                  }

                  sub_100037278(v134, v488 & 1);
                }

                v124 = v607;
                goto LABEL_1163;
              }

              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v542 = v8[97];
              if (os_log_type_enabled(v542, OS_LOG_TYPE_DEFAULT))
              {
                value[0] = 0;
                v543 = sub_1000011A8(1);
                v0 = v542;
                if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                {
                  v544 = v543;
                }

                else
                {
                  v544 = v543 & 0xFFFFFFFE;
                }

                if (v544)
                {
                  *err = 67109120;
                  *&err[4] = v643;
                  v584 = _os_log_send_and_compose_impl(v544, value, 0, 0, &_mh_execute_header, v0, 0, "APFSVolumeMigrateMediaKey Failed with Error:%d, PANIC!!", err);

                  v545 = 0;
                  if (v584)
                  {
                    sub_100002A8C(v584);
                    v545 = v584;
                  }
                }

                else
                {

                  v545 = 0;
                }

                free(v545);
              }

              sleep(2u);
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v585 = v8[97];
              if (os_log_type_enabled(v585, OS_LOG_TYPE_DEFAULT))
              {
                value[0] = 0;
                v586 = sub_1000011A8(1);
                v0 = v585;
                if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                {
                  v587 = v586;
                }

                else
                {
                  v587 = v586 & 0xFFFFFFFE;
                }

                if (v587)
                {
                  *err = 0;
                  LODWORD(v604) = 2;
                  v589 = _os_log_send_and_compose_impl(v587, value, 0, 0, &_mh_execute_header, v0, 0, "CALLING PANIC!!", err, v604);

                  v588 = 0;
                  if (v589)
                  {
                    sub_100002A8C(v589);
                    v588 = v589;
                  }
                }

                else
                {

                  v588 = 0;
                }

                free(v588);
              }

              sub_100018028("UserManagement early boot task APFSVolumeMigrateMediaKey Failed with Error:%d", v643);
LABEL_1443:
              if (!v398)
              {
                sub_100089CEC();
              }

              v554 = qword_1000EB308;
              if (!os_log_type_enabled(v554, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1486;
              }

              value[0] = 0;
              v590 = sub_1000011A8(1);
              v0 = v554;
              if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
              {
                v591 = v590;
              }

              else
              {
                v591 = v590 & 0xFFFFFFFE;
              }

              if (!v591)
              {

                v592 = 0;
LABEL_1485:
                free(v592);
LABEL_1486:

                sleep(2u);
                sub_100018028("Failed to unmount 501 User Volume error:%d", v643);
                goto LABEL_1487;
              }

LABEL_1483:
              *err = 67109120;
              *&err[4] = v643;
              v603 = _os_log_send_and_compose_impl(v591, value, 0, 0, &_mh_execute_header, v0, 0, "Failed unmount of 501 User Volume,error:%d", err);

              v592 = 0;
              if (v603)
              {
                sub_100002A8C(v603);
                v592 = v603;
              }

              goto LABEL_1485;
            }

            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v243 = v8[97];
            if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
            {
              *err = 0;
              v244 = sub_1000011A8(1);
              v245 = v243;
              if (os_log_type_enabled(v245, OS_LOG_TYPE_DEFAULT))
              {
                v246 = v244;
              }

              else
              {
                v246 = v244 & 0xFFFFFFFE;
              }

              if (v246)
              {
                LODWORD(value[0]) = 67109378;
                HIDWORD(value[0]) = v134;
                LOWORD(value[1]) = 2112;
                *(&value[1] + 2) = v609;
                LODWORD(v604) = 18;
                v247 = _os_log_send_and_compose_impl(v246, err, 0, 0, &_mh_execute_header, v245, 0, "Normal Boot: Setting up AKS Identity for User:%d, uuid:%@", value, v604);

                if (v247)
                {
                  sub_100002A8C(v247);
                }
              }

              else
              {

                v247 = 0;
              }

              free(v247);
              v1 = 0x1000EB000;
            }

            v619 = 0;
            v273 = sub_100022428(v0, v134, &v619);
            v274 = v619;
            if (!v273)
            {
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v538 = v8[97];
              if (os_log_type_enabled(v538, OS_LOG_TYPE_DEFAULT))
              {
                *err = 0;
                LODWORD(v539) = sub_1000011A8(1);
                v540 = v538;
                if (os_log_type_enabled(v540, OS_LOG_TYPE_DEFAULT))
                {
                  v539 = v539;
                }

                else
                {
                  v539 = v539 & 0xFFFFFFFE;
                }

                if (v539)
                {
                  v580 = [v274 code];
                  LODWORD(value[0]) = 134217984;
                  *(value + 4) = v580;
                  v581 = _os_log_send_and_compose_impl(v539, err, 0, 0, &_mh_execute_header, v540, 0, "AKSLoadIdentity failed with Error:%ld", value);

                  v541 = 0;
                  if (v581)
                  {
                    sub_100002A8C(v581);
                    v541 = v581;
                  }
                }

                else
                {

                  v541 = 0;
                }

                free(v541);
              }

              v582 = MGGetBoolAnswer();
              v583 = [v274 code];
              if (v582)
              {
                v583 = sub_100018028("RegularBoot-FATAL OTI LOAD ERROR:%ld", v583);
              }

              sub_100036CA4("RegularBoot-FATAL OTI LOAD ERROR:%ld", v583);
            }

            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v275 = v8[97];
            if (os_log_type_enabled(v275, OS_LOG_TYPE_DEFAULT))
            {
              v276 = v8;
              value[0] = 0;
              v277 = sub_1000011A8(1);
              v278 = v275;
              if (os_log_type_enabled(v278, OS_LOG_TYPE_DEFAULT))
              {
                v279 = v277;
              }

              else
              {
                v279 = v277 & 0xFFFFFFFE;
              }

              if (v279)
              {
                *err = 0;
                LODWORD(v604) = 2;
                v280 = _os_log_send_and_compose_impl(v279, value, 0, 0, &_mh_execute_header, v278, 0, "AKSLoadIdentity Succeeded", err, v604);

                if (v280)
                {
                  sub_100002A8C(v280);
                }
              }

              else
              {

                v280 = 0;
              }

              free(v280);
              v8 = v276;
              v1 = &off_1000EB000;
            }

            sub_100036F10("IONVRAM-DELETE-PROPERTY", "usermanagerd");
            if (*(v1 + 1456) == 1)
            {
              v7 = &off_1000EB000;
              v44 = &off_1000EB000;
              if (sub_100002454(cf, kUMUserSessionNeedsCryptoSetupKey))
              {
                v606 = v231;
                v289 = sub_10008A2F4(qword_1000EB2E0, 501);
                if (v289)
                {
                  v290 = v289;
                  bytes = 0;
                  LODWORD(v643) = 0;
                  v291 = CFDataCreate(kCFAllocatorDefault, &bytes, 1);
                  v292 = sub_100079590(v290, kUMUserSessionUUIDKey);
                  if (v292)
                  {
                    v293 = CFUUIDCreateFromString(kCFAllocatorDefault, v292);
                    if (v293)
                    {
                      v7 = v293;
                      v294 = sub_1000169B4(NSUUID, v293);
                      CFRelease(v7);
                      if (v294)
                      {
                        v613 = v290;
                        if (qword_1000EB310 != -1)
                        {
                          sub_100089CEC();
                        }

                        v295 = v8[97];
                        if (os_log_type_enabled(v295, OS_LOG_TYPE_DEFAULT))
                        {
                          v296 = v8;
                          value[0] = 0;
                          v297 = sub_1000011A8(1);
                          v298 = v295;
                          if (os_log_type_enabled(v298, OS_LOG_TYPE_DEFAULT))
                          {
                            v299 = v297;
                          }

                          else
                          {
                            v299 = v297 & 0xFFFFFFFE;
                          }

                          if (v299)
                          {
                            *err = 0;
                            LODWORD(v604) = 2;
                            v300 = _os_log_send_and_compose_impl(v299, value, 0, 0, &_mh_execute_header, v298, 0, "Verifying 501 OTI is loaded", err, v604);

                            if (v300)
                            {
                              sub_100002A8C(v300);
                            }
                          }

                          else
                          {

                            v300 = 0;
                          }

                          v8 = v296;
                          free(v300);
                        }

                        v617 = 0;
                        v7 = sub_100022428(v294, 501, &v617);
                        v331 = v617;
                        if (v7)
                        {
                          v332 = v331;
                          if (qword_1000EB310 != -1)
                          {
                            sub_100089CEC();
                          }

                          v333 = v8[97];
                          if (os_log_type_enabled(v333, OS_LOG_TYPE_DEFAULT))
                          {
                            value[0] = 0;
                            v334 = sub_1000011A8(1);
                            v7 = v333;
                            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
                            {
                              v335 = v334;
                            }

                            else
                            {
                              v335 = v334 & 0xFFFFFFFE;
                            }

                            if (v335)
                            {
                              *err = 0;
                              LODWORD(v604) = 2;
                              v336 = _os_log_send_and_compose_impl(v335, value, 0, 0, &_mh_execute_header, v7, 0, "501 user Identity is loaded", err, v604);

                              if (v336)
                              {
                                sub_100002A8C(v336);
                              }
                            }

                            else
                            {

                              v336 = 0;
                            }

                            free(v336);
                            v44 = &off_1000EB000;
                          }

                          if (qword_1000EB310 != -1)
                          {
                            sub_100089CEC();
                          }

                          v8 = &off_1000EB000;
                          v337 = v613;
                          v338 = qword_1000EB308;
                          if (os_log_type_enabled(v338, OS_LOG_TYPE_DEFAULT))
                          {
                            value[0] = 0;
                            v339 = sub_1000011A8(1);
                            v340 = v338;
                            if (os_log_type_enabled(v340, OS_LOG_TYPE_DEFAULT))
                            {
                              v341 = v339;
                            }

                            else
                            {
                              v341 = v339 & 0xFFFFFFFE;
                            }

                            if (v341)
                            {
                              *err = 67109120;
                              *&err[4] = v134;
                              v7 = _os_log_send_and_compose_impl(v341, value, 0, 0, &_mh_execute_header, v340, 0, "Transfer OTI from 501 to uid:%d", err);

                              if (v7)
                              {
                                sub_100002A8C(v7);
                              }
                            }

                            else
                            {

                              v7 = 0;
                            }

                            v337 = v613;
                            free(v7);
                          }

                          if (AKSIdentityTransferPrimary())
                          {
                            if (qword_1000EB310 != -1)
                            {
                              sub_100089CEC();
                            }

                            v342 = qword_1000EB308;
                            if (os_log_type_enabled(v342, OS_LOG_TYPE_DEFAULT))
                            {
                              value[0] = 0;
                              v343 = sub_1000011A8(1);
                              v7 = v342;
                              if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
                              {
                                v344 = v343;
                              }

                              else
                              {
                                v344 = v343 & 0xFFFFFFFE;
                              }

                              if (v344)
                              {
                                *err = 0;
                                LODWORD(v604) = 2;
                                v345 = _os_log_send_and_compose_impl(v344, value, 0, 0, &_mh_execute_header, v7, 0, "SUCCESSFUL migration of Primary from 501 to 502", err, v604);

                                if (v345)
                                {
                                  sub_100002A8C(v345);
                                }
                              }

                              else
                              {

                                v345 = 0;
                              }

                              free(v345);
                              v44 = &off_1000EB000;
                            }

                            if (qword_1000EB310 != -1)
                            {
                              sub_100089CEC();
                            }

                            v346 = qword_1000EB308;
                            if (os_log_type_enabled(v346, OS_LOG_TYPE_DEFAULT))
                            {
                              value[0] = 0;
                              v347 = sub_1000011A8(1);
                              v7 = v346;
                              if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
                              {
                                v348 = v347;
                              }

                              else
                              {
                                v348 = v347 & 0xFFFFFFFE;
                              }

                              if (v348)
                              {
                                *err = 0;
                                LODWORD(v604) = 2;
                                v349 = _os_log_send_and_compose_impl(v348, value, 0, 0, &_mh_execute_header, v7, 0, "Deleting 501 homedir - User volume, checking if its mounted", err, v604);

                                if (v349)
                                {
                                  sub_100002A8C(v349);
                                }
                              }

                              else
                              {

                                v349 = 0;
                              }

                              free(v349);
                              v44 = &off_1000EB000;
                            }

                            v350 = sub_100079590(v337, kUMUserSessionVolumeDeviceNodeKey);
                            if (!v350)
                            {
                              if (qword_1000EB310 != -1)
                              {
                                sub_100089CEC();
                              }

                              v357 = qword_1000EB308;
                              if (os_log_type_enabled(v357, OS_LOG_TYPE_DEFAULT))
                              {
                                value[0] = 0;
                                v358 = sub_1000011A8(1);
                                v357 = v357;
                                if (os_log_type_enabled(v357, OS_LOG_TYPE_DEFAULT))
                                {
                                  v359 = v358;
                                }

                                else
                                {
                                  v359 = v358 & 0xFFFFFFFE;
                                }

                                if (v359)
                                {
                                  *err = 0;
                                  LODWORD(v604) = 2;
                                  v7 = _os_log_send_and_compose_impl(v359, value, 0, 0, &_mh_execute_header, v357, 0, "could not find disknode for 501 user to identity unmap", err, v604);

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

LABEL_912:

                              if ([v44[91] isVolumeMountedWithSession:v337 fsid:0])
                              {
                                if (qword_1000EB310 != -1)
                                {
                                  sub_100089CEC();
                                }

                                v389 = qword_1000EB308;
                                if (os_log_type_enabled(v389, OS_LOG_TYPE_DEFAULT))
                                {
                                  value[0] = 0;
                                  v390 = sub_1000011A8(1);
                                  v7 = v389;
                                  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v391 = v390;
                                  }

                                  else
                                  {
                                    v391 = v390 & 0xFFFFFFFE;
                                  }

                                  if (v391)
                                  {
                                    *err = 0;
                                    LODWORD(v604) = 2;
                                    v392 = _os_log_send_and_compose_impl(v391, value, 0, 0, &_mh_execute_header, v7, 0, "501 user session mounted, unmount prior to deletion", err, v604);

                                    if (v392)
                                    {
                                      sub_100002A8C(v392);
                                    }
                                  }

                                  else
                                  {

                                    v392 = 0;
                                  }

                                  free(v392);
                                  v44 = &off_1000EB000;
                                }

                                v397 = [v44[91] unmountVolumeWithSession:v337 mountPath:@"/private/var/mobile" error:&v643];
                                v398 = qword_1000EB310 == -1;
                                if (!v397)
                                {
                                  goto LABEL_1443;
                                }

                                if (qword_1000EB310 != -1)
                                {
                                  sub_100089CEC();
                                }

                                v393 = qword_1000EB308;
                                if (os_log_type_enabled(v393, OS_LOG_TYPE_DEFAULT))
                                {
                                  value[0] = 0;
                                  v399 = sub_1000011A8(1);
                                  v393 = v393;
                                  if (os_log_type_enabled(v393, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v400 = v399;
                                  }

                                  else
                                  {
                                    v400 = v399 & 0xFFFFFFFE;
                                  }

                                  if (v400)
                                  {
                                    *err = 0;
                                    LODWORD(v604) = 2;
                                    v396 = _os_log_send_and_compose_impl(v400, value, 0, 0, &_mh_execute_header, v393, 0, "501 unmounted, set for volume 501 volume deletion", err, v604);
LABEL_941:
                                    v7 = v396;

                                    if (v7)
                                    {
                                      sub_100002A8C(v7);
                                    }

                                    goto LABEL_944;
                                  }

                                  goto LABEL_943;
                                }
                              }

                              else
                              {
                                if (qword_1000EB310 != -1)
                                {
                                  sub_100089CEC();
                                }

                                v393 = qword_1000EB308;
                                if (os_log_type_enabled(v393, OS_LOG_TYPE_DEFAULT))
                                {
                                  value[0] = 0;
                                  v394 = sub_1000011A8(1);
                                  v393 = v393;
                                  if (os_log_type_enabled(v393, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v395 = v394;
                                  }

                                  else
                                  {
                                    v395 = v394 & 0xFFFFFFFE;
                                  }

                                  if (v395)
                                  {
                                    *err = 0;
                                    LODWORD(v604) = 2;
                                    v396 = _os_log_send_and_compose_impl(v395, value, 0, 0, &_mh_execute_header, v393, 0, "501 session not mounted, deleting volume", err, v604);
                                    goto LABEL_941;
                                  }

LABEL_943:

                                  v7 = 0;
LABEL_944:
                                  free(v7);
                                }
                              }

                              if (qword_1000EB310 != -1)
                              {
                                sub_100089CEC();
                              }

                              v401 = qword_1000EB308;
                              if (os_log_type_enabled(v401, OS_LOG_TYPE_DEFAULT))
                              {
                                value[0] = 0;
                                v402 = sub_1000011A8(1);
                                v7 = v401;
                                if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
                                {
                                  v403 = v402;
                                }

                                else
                                {
                                  v403 = v402 & 0xFFFFFFFE;
                                }

                                if (v403)
                                {
                                  *err = 0;
                                  LODWORD(v604) = 2;
                                  v404 = _os_log_send_and_compose_impl(v403, value, 0, 0, &_mh_execute_header, v7, 0, "Deleting 501 session volume", err, v604);

                                  if (v404)
                                  {
                                    sub_100002A8C(v404);
                                  }
                                }

                                else
                                {

                                  v404 = 0;
                                }

                                free(v404);
                                v44 = &off_1000EB000;
                              }

                              if ([v44[91] deleteVolumeWithSession:v337 error:&v643])
                              {
                                if (qword_1000EB310 != -1)
                                {
                                  sub_100089CEC();
                                }

                                v405 = qword_1000EB308;
                                if (os_log_type_enabled(v405, OS_LOG_TYPE_DEFAULT))
                                {
                                  value[0] = 0;
                                  v406 = sub_1000011A8(1);
                                  v407 = v405;
                                  if (os_log_type_enabled(v407, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v408 = v406;
                                  }

                                  else
                                  {
                                    v408 = v406 & 0xFFFFFFFE;
                                  }

                                  if (v408)
                                  {
                                    *err = 0;
                                    LODWORD(v604) = 2;
                                    v409 = _os_log_send_and_compose_impl(v408, value, 0, 0, &_mh_execute_header, v407, 0, "Successful deletion of 501 User Volume", err, v604);

                                    if (v409)
                                    {
                                      sub_100002A8C(v409);
                                    }
                                  }

                                  else
                                  {

                                    v409 = 0;
                                  }

                                  free(v409);
                                }

                                if (qword_1000EB310 != -1)
                                {
                                  sub_100089CEC();
                                }

                                v410 = qword_1000EB308;
                                if (os_log_type_enabled(v410, OS_LOG_TYPE_DEFAULT))
                                {
                                  value[0] = 0;
                                  v411 = sub_1000011A8(1);
                                  v412 = v410;
                                  if (os_log_type_enabled(v412, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v413 = v411;
                                  }

                                  else
                                  {
                                    v413 = v411 & 0xFFFFFFFE;
                                  }

                                  if (v413)
                                  {
                                    *err = 0;
                                    LODWORD(v604) = 2;
                                    v414 = _os_log_send_and_compose_impl(v413, value, 0, 0, &_mh_execute_header, v412, 0, "unbind/Deleting 501 Identity", err, v604);

                                    if (v414)
                                    {
                                      sub_100002A8C(v414);
                                    }
                                  }

                                  else
                                  {

                                    v414 = 0;
                                  }

                                  free(v414);
                                }

                                if (qword_1000EB310 != -1)
                                {
                                  sub_100089CEC();
                                }

                                v415 = qword_1000EB308;
                                if (os_log_type_enabled(v415, OS_LOG_TYPE_DEFAULT))
                                {
                                  *err = 0;
                                  v416 = sub_1000011A8(1);
                                  v417 = v415;
                                  if (os_log_type_enabled(v417, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v418 = v416;
                                  }

                                  else
                                  {
                                    v418 = v416 & 0xFFFFFFFE;
                                  }

                                  if (v418)
                                  {
                                    LODWORD(value[0]) = 138412290;
                                    *(value + 4) = v606;
                                    LODWORD(v604) = 12;
                                    v419 = _os_log_send_and_compose_impl(v418, err, 0, 0, &_mh_execute_header, v417, 0, "binding the data volume  to 502 user uuid %@", value, v604);

                                    if (v419)
                                    {
                                      sub_100002A8C(v419);
                                    }
                                  }

                                  else
                                  {

                                    v419 = 0;
                                  }

                                  v337 = v613;
                                  free(v419);
                                }

                                v605 = v291;
                                if (sub_1000714B8(v606, v291, 0, &v643))
                                {
                                  if (qword_1000EB310 != -1)
                                  {
                                    sub_100089CEC();
                                  }

                                  v420 = qword_1000EB308;
                                  if (os_log_type_enabled(v420, OS_LOG_TYPE_DEFAULT))
                                  {
                                    value[0] = 0;
                                    v421 = sub_1000011A8(1);
                                    v420 = v420;
                                    if (os_log_type_enabled(v420, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v422 = v421;
                                    }

                                    else
                                    {
                                      v422 = v421 & 0xFFFFFFFE;
                                    }

                                    if (v422)
                                    {
                                      *err = 0;
                                      v423 = _os_log_send_and_compose_impl(v422, value, 0, 0, &_mh_execute_header, v420, 0, "Successful binding the system data partition to the loginUI");
                                      goto LABEL_1007;
                                    }

                                    goto LABEL_1009;
                                  }
                                }

                                else
                                {
                                  if (qword_1000EB310 != -1)
                                  {
                                    sub_100089CEC();
                                  }

                                  v420 = qword_1000EB308;
                                  if (os_log_type_enabled(v420, OS_LOG_TYPE_DEFAULT))
                                  {
                                    value[0] = 0;
                                    v424 = sub_1000011A8(1);
                                    v420 = v420;
                                    if (os_log_type_enabled(v420, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v425 = v424;
                                    }

                                    else
                                    {
                                      v425 = v424 & 0xFFFFFFFE;
                                    }

                                    if (v425)
                                    {
                                      *err = 67109120;
                                      *&err[4] = v643;
                                      v423 = _os_log_send_and_compose_impl(v425, value, 0, 0, &_mh_execute_header, v420, 0, "Failed to bind the system data partition to loginUI with error %d", err);
LABEL_1007:
                                      v426 = v423;

                                      if (v426)
                                      {
                                        sub_100002A8C(v426);
                                      }

                                      goto LABEL_1010;
                                    }

LABEL_1009:

                                    v426 = 0;
LABEL_1010:
                                    free(v426);
                                  }
                                }

                                if (qword_1000EB310 != -1)
                                {
                                  sub_100089CEC();
                                }

                                v427 = qword_1000EB308;
                                if (os_log_type_enabled(v427, OS_LOG_TYPE_DEFAULT))
                                {
                                  value[0] = 0;
                                  v428 = sub_1000011A8(1);
                                  v429 = v427;
                                  if (os_log_type_enabled(v429, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v430 = v428;
                                  }

                                  else
                                  {
                                    v430 = v428 & 0xFFFFFFFE;
                                  }

                                  if (v430)
                                  {
                                    *err = 0;
                                    LODWORD(v604) = 2;
                                    v431 = _os_log_send_and_compose_impl(v430, value, 0, 0, &_mh_execute_header, v429, 0, "AKS Unloading the Identity of uid 501", err, v604);

                                    if (v431)
                                    {
                                      sub_100002A8C(v431);
                                    }
                                  }

                                  else
                                  {

                                    v431 = 0;
                                  }

                                  free(v431);
                                }

                                v7 = sub_100089A80(qword_1000EB608);
                                v615 = 0;
                                v432 = [v7 unloadIdentityFromSession:501 error:&v615];
                                v433 = v615;

                                if (v432)
                                {
                                  if (qword_1000EB310 != -1)
                                  {
                                    sub_100089CEC();
                                  }

                                  v434 = qword_1000EB308;
                                  if (os_log_type_enabled(v434, OS_LOG_TYPE_DEFAULT))
                                  {
                                    value[0] = 0;
                                    v435 = sub_1000011A8(1);
                                    v434 = v434;
                                    if (os_log_type_enabled(v434, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v436 = v435;
                                    }

                                    else
                                    {
                                      v436 = v435 & 0xFFFFFFFE;
                                    }

                                    if (v436)
                                    {
                                      *err = 0;
                                      v437 = _os_log_send_and_compose_impl(v436, value, 0, 0, &_mh_execute_header, v434, 0, "AKS Unloading the Identity of uid:501 SUCCESS ");
                                      goto LABEL_1039;
                                    }

                                    goto LABEL_1041;
                                  }
                                }

                                else
                                {
                                  if (qword_1000EB310 != -1)
                                  {
                                    sub_100089CEC();
                                  }

                                  v434 = qword_1000EB308;
                                  if (os_log_type_enabled(v434, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *err = 0;
                                    LODWORD(v438) = sub_1000011A8(1);
                                    v434 = v434;
                                    if (os_log_type_enabled(v434, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v438 = v438;
                                    }

                                    else
                                    {
                                      v438 = v438 & 0xFFFFFFFE;
                                    }

                                    if (v438)
                                    {
                                      v439 = [v433 code];
                                      LODWORD(value[0]) = 134217984;
                                      *(value + 4) = v439;
                                      v437 = _os_log_send_and_compose_impl(v438, err, 0, 0, &_mh_execute_header, v434, 0, "AKS Unloading the Identity of uid:501 FAILED with error:%ld", value);
LABEL_1039:
                                      v7 = v437;

                                      if (v7)
                                      {
                                        sub_100002A8C(v7);
                                      }

                                      goto LABEL_1042;
                                    }

LABEL_1041:

                                    v7 = 0;
LABEL_1042:
                                    free(v7);
                                  }
                                }

                                if (qword_1000EB310 != -1)
                                {
                                  sub_100089CEC();
                                }

                                v440 = qword_1000EB308;
                                if (os_log_type_enabled(v440, OS_LOG_TYPE_DEFAULT))
                                {
                                  value[0] = 0;
                                  v441 = sub_1000011A8(1);
                                  v7 = v440;
                                  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v442 = v441;
                                  }

                                  else
                                  {
                                    v442 = v441 & 0xFFFFFFFE;
                                  }

                                  if (v442)
                                  {
                                    *err = 0;
                                    LODWORD(v604) = 2;
                                    v443 = _os_log_send_and_compose_impl(v442, value, 0, 0, &_mh_execute_header, v7, 0, "Deleting 501 identity", err, v604);

                                    if (v443)
                                    {
                                      sub_100002A8C(v443);
                                    }
                                  }

                                  else
                                  {

                                    v443 = 0;
                                  }

                                  free(v443);
                                }

                                v444 = sub_100079590(v337, kUMUserSessionUUIDKey);
                                if (v444)
                                {
                                  v445 = v444;
                                  if (qword_1000EB310 != -1)
                                  {
                                    sub_100089CEC();
                                  }

                                  v446 = qword_1000EB308;
                                  if (os_log_type_enabled(v446, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *err = 0;
                                    v447 = sub_1000011A8(1);
                                    v448 = v446;
                                    if (os_log_type_enabled(v448, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v449 = v447;
                                    }

                                    else
                                    {
                                      v449 = v447 & 0xFFFFFFFE;
                                    }

                                    if (v449)
                                    {
                                      LODWORD(value[0]) = 138412290;
                                      *(value + 4) = v445;
                                      LODWORD(v604) = 12;
                                      v450 = _os_log_send_and_compose_impl(v449, err, 0, 0, &_mh_execute_header, v448, 0, "Deleting 501 identity with uuid:%@", value, v604);

                                      if (v450)
                                      {
                                        sub_100002A8C(v450);
                                      }
                                    }

                                    else
                                    {

                                      v450 = 0;
                                    }

                                    free(v450);
                                  }

                                  v451 = sub_100016954(NSUUID, v445);
                                  v452 = sub_100089A80(qword_1000EB608);
                                  v614 = 0;
                                  v453 = [v452 deleteIdentity:v451 error:&v614];
                                  v301 = v614;

                                  v7 = &off_1000EB000;
                                  if (v453)
                                  {
                                    if (qword_1000EB310 != -1)
                                    {
                                      sub_100089CEC();
                                    }

                                    v454 = qword_1000EB308;
                                    if (os_log_type_enabled(v454, OS_LOG_TYPE_DEFAULT))
                                    {
                                      value[0] = 0;
                                      v455 = sub_1000011A8(1);
                                      v454 = v454;
                                      if (os_log_type_enabled(v454, OS_LOG_TYPE_DEFAULT))
                                      {
                                        v456 = v455;
                                      }

                                      else
                                      {
                                        v456 = v455 & 0xFFFFFFFE;
                                      }

                                      if (v456)
                                      {
                                        *err = 0;
                                        LODWORD(v604) = 2;
                                        v457 = _os_log_send_and_compose_impl(v456, value, 0, 0, &_mh_execute_header, v454, 0, "501 identity removed", err, v604);
                                        goto LABEL_1094;
                                      }

                                      goto LABEL_1096;
                                    }
                                  }

                                  else
                                  {
                                    if (qword_1000EB310 != -1)
                                    {
                                      sub_100089CEC();
                                    }

                                    v458 = qword_1000EB308;
                                    if (os_log_type_enabled(v458, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *err = 0;
                                      LODWORD(v459) = sub_1000011A8(1);
                                      v460 = v458;
                                      if (os_log_type_enabled(v460, OS_LOG_TYPE_DEFAULT))
                                      {
                                        v459 = v459;
                                      }

                                      else
                                      {
                                        v459 = v459 & 0xFFFFFFFE;
                                      }

                                      if (v459)
                                      {
                                        v461 = [v301 code];
                                        LODWORD(value[0]) = 134217984;
                                        *(value + 4) = v461;
                                        v462 = _os_log_send_and_compose_impl(v459, err, 0, 0, &_mh_execute_header, v460, 0, "Failed to delete 501 Identity with error %ld", value);

                                        if (v462)
                                        {
                                          sub_100002A8C(v462);
                                        }
                                      }

                                      else
                                      {

                                        v462 = 0;
                                      }

                                      v8 = &off_1000EB000;
                                      free(v462);
                                      v7 = &off_1000EB000;
                                    }

                                    sleep(2u);
                                    if (qword_1000EB310 != -1)
                                    {
                                      sub_100089CEC();
                                    }

                                    v454 = qword_1000EB308;
                                    if (os_log_type_enabled(v454, OS_LOG_TYPE_DEFAULT))
                                    {
                                      value[0] = 0;
                                      v463 = sub_1000011A8(1);
                                      v454 = v454;
                                      if (os_log_type_enabled(v454, OS_LOG_TYPE_DEFAULT))
                                      {
                                        v464 = v463;
                                      }

                                      else
                                      {
                                        v464 = v463 & 0xFFFFFFFE;
                                      }

                                      if (v464)
                                      {
                                        *err = 0;
                                        LODWORD(v604) = 2;
                                        v457 = _os_log_send_and_compose_impl(v464, value, 0, 0, &_mh_execute_header, v454, 0, "Skipping panic to make further progress, pending check with AKS", err, v604);
LABEL_1094:
                                        v465 = v457;

                                        if (v465)
                                        {
                                          sub_100002A8C(v465);
                                        }

                                        goto LABEL_1097;
                                      }

LABEL_1096:

                                      v465 = 0;
LABEL_1097:
                                      free(v465);
                                      v7 = &off_1000EB000;
                                    }
                                  }

                                  if (qword_1000EB310 != -1)
                                  {
                                    sub_100089CEC();
                                  }

                                  v466 = qword_1000EB308;
                                  if (os_log_type_enabled(v466, OS_LOG_TYPE_DEFAULT))
                                  {
                                    value[0] = 0;
                                    v467 = sub_1000011A8(1);
                                    v468 = v466;
                                    if (os_log_type_enabled(v468, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v469 = v467;
                                    }

                                    else
                                    {
                                      v469 = v467 & 0xFFFFFFFE;
                                    }

                                    if (v469)
                                    {
                                      *err = 0;
                                      LODWORD(v604) = 2;
                                      v470 = _os_log_send_and_compose_impl(v469, value, 0, 0, &_mh_execute_header, v468, 0, "removing 501 session from the list", err, v604);

                                      if (v470)
                                      {
                                        sub_100002A8C(v470);
                                      }
                                    }

                                    else
                                    {

                                      v470 = 0;
                                    }

                                    v7 = &off_1000EB000;
                                    free(v470);
                                  }

                                  CFRelease(v613);
                                  sub_10002E024(501, 0);
                                  sub_100018C80();
                                  if (qword_1000EB310 != -1)
                                  {
                                    sub_100089CEC();
                                  }

                                  v471 = qword_1000EB308;
                                  if (os_log_type_enabled(v471, OS_LOG_TYPE_DEFAULT))
                                  {
                                    value[0] = 0;
                                    v472 = sub_1000011A8(1);
                                    v473 = v471;
                                    if (os_log_type_enabled(v473, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v474 = v472;
                                    }

                                    else
                                    {
                                      v474 = v472 & 0xFFFFFFFE;
                                    }

                                    if (v474)
                                    {
                                      *err = 0;
                                      LODWORD(v604) = 2;
                                      v475 = _os_log_send_and_compose_impl(v474, value, 0, 0, &_mh_execute_header, v473, 0, "Setting lastUsers to 502 User", err, v604);

                                      if (v475)
                                      {
                                        sub_100002A8C(v475);
                                      }
                                    }

                                    else
                                    {

                                      v475 = 0;
                                    }

                                    v7 = &off_1000EB000;
                                    free(v475);
                                  }

                                  v1 = &off_1000EB000;
                                  if (sub_10007324C("/var/Users", &v643))
                                  {
                                    if (qword_1000EB310 != -1)
                                    {
                                      sub_100089CEC();
                                    }

                                    v476 = qword_1000EB308;
                                    if (!os_log_type_enabled(v476, OS_LOG_TYPE_DEFAULT))
                                    {
                                      goto LABEL_1152;
                                    }

                                    value[0] = 0;
                                    v477 = sub_1000011A8(1);
                                    v476 = v476;
                                    if (os_log_type_enabled(v476, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v478 = v477;
                                    }

                                    else
                                    {
                                      v478 = v477 & 0xFFFFFFFE;
                                    }

                                    if (v478)
                                    {
                                      *err = 0;
                                      LODWORD(v604) = 2;
                                      v479 = _os_log_send_and_compose_impl(v478, value, 0, 0, &_mh_execute_header, v476, 0, "Successful setting of Last Booted User", err, v604);
                                      goto LABEL_1148;
                                    }
                                  }

                                  else
                                  {
                                    if (qword_1000EB310 != -1)
                                    {
                                      sub_100089CEC();
                                    }

                                    v480 = qword_1000EB308;
                                    if (os_log_type_enabled(v480, OS_LOG_TYPE_DEFAULT))
                                    {
                                      value[0] = 0;
                                      v481 = sub_1000011A8(1);
                                      v482 = v480;
                                      if (os_log_type_enabled(v482, OS_LOG_TYPE_DEFAULT))
                                      {
                                        v483 = v481;
                                      }

                                      else
                                      {
                                        v483 = v481 & 0xFFFFFFFE;
                                      }

                                      if (v483)
                                      {
                                        *err = 0;
                                        LODWORD(v604) = 2;
                                        v484 = _os_log_send_and_compose_impl(v483, value, 0, 0, &_mh_execute_header, v482, 0, "Failed to set Last Booted User", err, v604);

                                        if (v484)
                                        {
                                          sub_100002A8C(v484);
                                        }
                                      }

                                      else
                                      {

                                        v484 = 0;
                                      }

                                      v7 = &off_1000EB000;
                                      free(v484);
                                      v1 = 0x1000EB000;
                                    }

                                    if (qword_1000EB310 != -1)
                                    {
                                      sub_100089CEC();
                                    }

                                    v476 = qword_1000EB308;
                                    if (!os_log_type_enabled(v476, OS_LOG_TYPE_DEFAULT))
                                    {
                                      goto LABEL_1152;
                                    }

                                    value[0] = 0;
                                    v485 = sub_1000011A8(1);
                                    v476 = v476;
                                    if (os_log_type_enabled(v476, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v486 = v485;
                                    }

                                    else
                                    {
                                      v486 = v485 & 0xFFFFFFFE;
                                    }

                                    if (v486)
                                    {
                                      *err = 0;
                                      LODWORD(v604) = 2;
                                      v479 = _os_log_send_and_compose_impl(v486, value, 0, 0, &_mh_execute_header, v476, 0, "Ignoring the failure as this is mere cleanup", err, v604);
LABEL_1148:
                                      v487 = v479;

                                      if (v487)
                                      {
                                        sub_100002A8C(v487);
                                      }

                                      goto LABEL_1151;
                                    }
                                  }

                                  v487 = 0;
LABEL_1151:
                                  free(v487);
                                  v7 = &off_1000EB000;
LABEL_1152:

                                  if (v605)
                                  {
                                    CFRelease(v605);
                                  }

                                  CFDictionarySetValue(cf, kUMUserSessionNeedsCryptoSetupKey, kCFBooleanFalse);
                                  v302 = cf;
                                  v44 = &off_1000EB000;
                                  goto LABEL_1155;
                                }

                                if (qword_1000EB310 != -1)
                                {
                                  sub_100089CEC();
                                }

                                v554 = qword_1000EB308;
                                if (!os_log_type_enabled(v554, OS_LOG_TYPE_DEFAULT))
                                {
LABEL_1482:

                                  sleep(2u);
                                  v591 = sub_100018028("UserManagement early boot task Unable to find 501 uuid");
                                  goto LABEL_1483;
                                }

                                value[0] = 0;
                                v573 = sub_1000011A8(1);
                                v0 = v554;
                                if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                                {
                                  v574 = v573;
                                }

                                else
                                {
                                  v574 = v573 & 0xFFFFFFFE;
                                }

                                if (!v574)
                                {

                                  v575 = 0;
LABEL_1481:
                                  free(v575);
                                  goto LABEL_1482;
                                }

LABEL_1479:
                                *err = 0;
                                LODWORD(v604) = 2;
                                v602 = _os_log_send_and_compose_impl(v574, value, 0, 0, &_mh_execute_header, v0, 0, "Unable to find 501 uuid string ", err, v604);

                                v575 = 0;
                                if (v602)
                                {
                                  sub_100002A8C(v602);
                                  v575 = v602;
                                }

                                goto LABEL_1481;
                              }

                              if (qword_1000EB310 != -1)
                              {
                                sub_100089CEC();
                              }

                              v554 = qword_1000EB308;
                              if (!os_log_type_enabled(v554, OS_LOG_TYPE_DEFAULT))
                              {
LABEL_1478:

                                sleep(2u);
                                v574 = sub_100018028("Failed deletion of 501 User Volume error:%d", v643);
                                goto LABEL_1479;
                              }

                              value[0] = 0;
                              v570 = sub_1000011A8(1);
                              v0 = v554;
                              if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                              {
                                v571 = v570;
                              }

                              else
                              {
                                v571 = v570 & 0xFFFFFFFE;
                              }

                              if (!v571)
                              {

                                v572 = 0;
LABEL_1477:
                                free(v572);
                                goto LABEL_1478;
                              }

LABEL_1475:
                              *err = 67109120;
                              *&err[4] = v643;
                              v601 = _os_log_send_and_compose_impl(v571, value, 0, 0, &_mh_execute_header, v0, 0, "Failed deletion of 501 User Volume,error:%d", err);

                              v572 = 0;
                              if (v601)
                              {
                                sub_100002A8C(v601);
                                v572 = v601;
                              }

                              goto LABEL_1477;
                            }

                            v351 = v350;
                            if (qword_1000EB310 != -1)
                            {
                              sub_100089CEC();
                            }

                            v352 = qword_1000EB308;
                            if (os_log_type_enabled(v352, OS_LOG_TYPE_DEFAULT))
                            {
                              *err = 0;
                              v353 = sub_1000011A8(1);
                              v354 = v352;
                              if (os_log_type_enabled(v354, OS_LOG_TYPE_DEFAULT))
                              {
                                v355 = v353;
                              }

                              else
                              {
                                v355 = v353 & 0xFFFFFFFE;
                              }

                              if (v355)
                              {
                                LODWORD(value[0]) = 138412290;
                                *(value + 4) = v351;
                                LODWORD(v604) = 12;
                                v356 = _os_log_send_and_compose_impl(v355, err, 0, 0, &_mh_execute_header, v354, 0, "Calling AKSVolumeUnmap with disk:%@ if 501 User", value, v604);

                                if (v356)
                                {
                                  sub_100002A8C(v356);
                                }
                              }

                              else
                              {

                                v356 = 0;
                              }

                              v8 = &off_1000EB000;
                              free(v356);
                            }

                            v7 = sub_100089A80(qword_1000EB608);
                            v616 = 0;
                            v360 = [v7 unmapVolume:v351 error:&v616];
                            v357 = v616;

                            if (v360)
                            {
                              if (qword_1000EB310 != -1)
                              {
                                sub_100089CEC();
                              }

                              v44 = &off_1000EB000;
                              v361 = qword_1000EB308;
                              if (!os_log_type_enabled(v361, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_852;
                              }

                              value[0] = 0;
                              v362 = sub_1000011A8(1);
                              v361 = v361;
                              if (os_log_type_enabled(v361, OS_LOG_TYPE_DEFAULT))
                              {
                                v363 = v362;
                              }

                              else
                              {
                                v363 = v362 & 0xFFFFFFFE;
                              }

                              if (v363)
                              {
                                *err = 0;
                                v364 = _os_log_send_and_compose_impl(v363, value, 0, 0, &_mh_execute_header, v361, 0, "Volume Unmap of 501 session succeeded");
                                goto LABEL_848;
                              }
                            }

                            else
                            {
                              if (qword_1000EB310 != -1)
                              {
                                sub_100089CEC();
                              }

                              v44 = &off_1000EB000;
                              v361 = qword_1000EB308;
                              if (!os_log_type_enabled(v361, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_852;
                              }

                              *err = 0;
                              LODWORD(v365) = sub_1000011A8(1);
                              v361 = v361;
                              if (os_log_type_enabled(v361, OS_LOG_TYPE_DEFAULT))
                              {
                                v365 = v365;
                              }

                              else
                              {
                                v365 = v365 & 0xFFFFFFFE;
                              }

                              if (v365)
                              {
                                v366 = [v357 code];
                                LODWORD(value[0]) = 134217984;
                                *(value + 4) = v366;
                                v364 = _os_log_send_and_compose_impl(v365, err, 0, 0, &_mh_execute_header, v361, 0, "AKS volumeUnmap failed for 501 with error:%ld", value);
LABEL_848:
                                v7 = v364;

                                if (v7)
                                {
                                  sub_100002A8C(v7);
                                }

                                goto LABEL_851;
                              }
                            }

                            v7 = 0;
LABEL_851:
                            free(v7);
LABEL_852:

                            v337 = v613;
                            goto LABEL_912;
                          }

                          if (qword_1000EB310 != -1)
                          {
                            sub_100089CEC();
                          }

                          v554 = qword_1000EB308;
                          if (!os_log_type_enabled(v554, OS_LOG_TYPE_DEFAULT))
                          {
LABEL_1474:

                            sleep(2u);
                            v600 = CFErrorGetCode(uuid[0]);
                            v571 = sub_100018028("FAILED to transfer Primary from 501 -> 502:with error:%ld", v600);
                            goto LABEL_1475;
                          }

                          value[0] = 0;
                          v567 = sub_1000011A8(1);
                          v0 = v554;
                          if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                          {
                            v568 = v567;
                          }

                          else
                          {
                            v568 = v567 & 0xFFFFFFFE;
                          }

                          if (!v568)
                          {

                            v569 = 0;
LABEL_1473:
                            free(v569);
                            goto LABEL_1474;
                          }

LABEL_1471:
                          *err = 0;
                          LODWORD(v604) = 2;
                          v599 = _os_log_send_and_compose_impl(v568, value, 0, 0, &_mh_execute_header, v0, 0, "FAILED to transfer Primary from 501 -> 502", err, v604);

                          v569 = 0;
                          if (v599)
                          {
                            sub_100002A8C(v599);
                            v569 = v599;
                          }

                          goto LABEL_1473;
                        }

                        if (qword_1000EB310 != -1)
                        {
                          sub_100089CEC();
                        }

                        v554 = v8[97];
                        if (!os_log_type_enabled(v554, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_1470:

                          sleep(2u);
                          v598 = CFErrorGetCode(uuid[0]);
                          v568 = sub_100018028("FAILED to ensure 501 user Identity is loaded with error:%ld", v598);
                          goto LABEL_1471;
                        }

                        *err = 0;
                        LODWORD(v290) = sub_1000011A8(1);
                        v0 = v554;
                        if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                        {
                          v290 = v290;
                        }

                        else
                        {
                          v290 = v290 & 0xFFFFFFFE;
                        }

                        if (!v290)
                        {

                          v566 = 0;
LABEL_1469:
                          free(v566);
                          goto LABEL_1470;
                        }

LABEL_1467:
                        v596 = CFErrorGetCode(uuid[0]);
                        LODWORD(value[0]) = 134217984;
                        *(value + 4) = v596;
                        v597 = _os_log_send_and_compose_impl(v290, err, 0, 0, &_mh_execute_header, v0, 0, "FAILED to ensure 501 user Identity is loaded with error:%ld", value);

                        v566 = 0;
                        if (v597)
                        {
                          sub_100002A8C(v597);
                          v566 = v597;
                        }

                        goto LABEL_1469;
                      }

                      if (qword_1000EB310 != -1)
                      {
                        sub_100089CEC();
                      }

                      v554 = v8[97];
                      if (!os_log_type_enabled(v554, OS_LOG_TYPE_DEFAULT))
                      {
LABEL_1466:

                        sleep(2u);
                        sub_100018028("FAILED to build 501 NSUUID to migrate to 502");
                        goto LABEL_1467;
                      }

                      value[0] = 0;
                      v290 = sub_1000011A8(1);
                      v0 = v554;
                      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                      {
                        v564 = v290;
                      }

                      else
                      {
                        v564 = v290 & 0xFFFFFFFE;
                      }

                      if (!v564)
                      {

                        v565 = 0;
LABEL_1465:
                        free(v565);
                        goto LABEL_1466;
                      }

LABEL_1463:
                      *err = 0;
                      LODWORD(v604) = 2;
                      v290 = _os_log_send_and_compose_impl(v564, value, 0, 0, &_mh_execute_header, v0, 0, "FAILED to build 501 NSUUID to migrate to 502", err, v604);

                      v565 = 0;
                      if (v290)
                      {
                        sub_100002A8C(v290);
                        v565 = v290;
                      }

                      goto LABEL_1465;
                    }

                    if (qword_1000EB310 != -1)
                    {
                      sub_100089CEC();
                    }

                    v554 = v8[97];
                    if (!os_log_type_enabled(v554, OS_LOG_TYPE_DEFAULT))
                    {
LABEL_1462:

                      sleep(2u);
                      v564 = sub_100018028("FAILED to construct CF501 uuid to migrate to 502");
                      goto LABEL_1463;
                    }

                    value[0] = 0;
                    v561 = sub_1000011A8(1);
                    v0 = v554;
                    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                    {
                      v562 = v561;
                    }

                    else
                    {
                      v562 = v561 & 0xFFFFFFFE;
                    }

                    if (!v562)
                    {

                      v563 = 0;
LABEL_1461:
                      free(v563);
                      goto LABEL_1462;
                    }

LABEL_1459:
                    *err = 0;
                    LODWORD(v604) = 2;
                    v595 = _os_log_send_and_compose_impl(v562, value, 0, 0, &_mh_execute_header, v0, 0, "FAILED to construct CF501 uuid to migrate to 502", err, v604);

                    v563 = 0;
                    if (v595)
                    {
                      sub_100002A8C(v595);
                      v563 = v595;
                    }

                    goto LABEL_1461;
                  }

                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v554 = v8[97];
                  if (!os_log_type_enabled(v554, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_1458:

                    sleep(2u);
                    v562 = sub_100018028("FAILED to locate 501 uuid string to migrate OTI to 502");
                    goto LABEL_1459;
                  }

                  value[0] = 0;
                  v558 = sub_1000011A8(1);
                  v0 = v554;
                  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                  {
                    v559 = v558;
                  }

                  else
                  {
                    v559 = v558 & 0xFFFFFFFE;
                  }

                  if (!v559)
                  {

                    v560 = 0;
LABEL_1457:
                    free(v560);
                    goto LABEL_1458;
                  }
                }

                else
                {
                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v554 = v8[97];
                  if (os_log_type_enabled(v554, OS_LOG_TYPE_DEFAULT))
                  {
                    value[0] = 0;
                    v555 = sub_1000011A8(1);
                    v0 = v554;
                    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                    {
                      v556 = v555;
                    }

                    else
                    {
                      v556 = v555 & 0xFFFFFFFE;
                    }

                    if (v556)
                    {
                      *err = 0;
                      LODWORD(v604) = 2;
                      v593 = _os_log_send_and_compose_impl(v556, value, 0, 0, &_mh_execute_header, v0, 0, "Unable to find 501 session", err, v604);

                      v557 = 0;
                      if (v593)
                      {
                        sub_100002A8C(v593);
                        v557 = v593;
                      }
                    }

                    else
                    {

                      v557 = 0;
                    }

                    free(v557);
                  }

                  sleep(2u);
                  v559 = sub_100018028("UserManagement early boot task Unable to find 501 session");
                }

                *err = 0;
                LODWORD(v604) = 2;
                v594 = _os_log_send_and_compose_impl(v559, value, 0, 0, &_mh_execute_header, v0, 0, "FAILED to locate 501 uuid string to migrate OTI to 502", err, v604);

                v560 = 0;
                if (v594)
                {
                  sub_100002A8C(v594);
                  v560 = v594;
                }

                goto LABEL_1457;
              }

              v301 = 0;
            }

            else
            {
              v301 = 0;
              v7 = &off_1000EB000;
              v44 = &off_1000EB000;
            }

            v302 = cf;
LABEL_1155:
            CFRelease(v302);
            CFRelease(v609);
            if (uuid[0])
            {
              CFRelease(uuid[0]);
              uuid[0] = 0;
            }

            goto LABEL_1157;
          }
        }

LABEL_1234:
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v511 = v8[97];
        if (!os_log_type_enabled(v511, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_1281;
        }

        value[0] = 0;
        v1 = sub_1000011A8(1);
        v0 = v511;
        if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
        {
          v514 = v1;
        }

        else
        {
          v514 = v1 & 0xFFFFFFFE;
        }

        if (!v514)
        {

          v515 = 0;
LABEL_1280:
          free(v515);
LABEL_1281:

          sleep(2u);
          sub_100018028("UserManagement early boot task unable to find uuid or create CFUUID of Update install user");
          goto LABEL_1282;
        }

LABEL_1278:
        *err = 0;
        LODWORD(v604) = 2;
        v1 = _os_log_send_and_compose_impl(v514, value, 0, 0, &_mh_execute_header, v0, 0, "Unable to find uuid or create CFUUID of Update install user", err, v604);

        v515 = 0;
        if (v1)
        {
          sub_100002A8C(v1);
          v515 = v1;
        }

        goto LABEL_1280;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v0 = v8[97];
      if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
LABEL_566:

        goto LABEL_567;
      }

      value[0] = 0;
      v226 = sub_1000011A8(1);
      v0 = v0;
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v227 = v226;
      }

      else
      {
        v227 = v226 & 0xFFFFFFFE;
      }

      if (v227)
      {
        *err = 0;
        LODWORD(v604) = 2;
        v225 = _os_log_send_and_compose_impl(v227, value, 0, 0, &_mh_execute_header, v0, 0, "Erase Install, getting user UUID to setup AKS", err, v604);
LABEL_562:
        v228 = v225;

        if (v228)
        {
          sub_100002A8C(v228);
        }

        goto LABEL_565;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v0 = v8[97];
      if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_566;
      }

      value[0] = 0;
      v223 = sub_1000011A8(1);
      v0 = v0;
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v224 = v223;
      }

      else
      {
        v224 = v223 & 0xFFFFFFFE;
      }

      if (v224)
      {
        *err = 0;
        LODWORD(v604) = 2;
        v225 = _os_log_send_and_compose_impl(v224, value, 0, 0, &_mh_execute_header, v0, 0, "Regular Boot", err, v604);
        goto LABEL_562;
      }
    }

    v228 = 0;
LABEL_565:
    free(v228);
    v1 = &off_1000EB000;
    goto LABEL_566;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v0 = v8[97];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    value[0] = 0;
    v220 = sub_1000011A8(1);
    v0 = v0;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v221 = v220;
    }

    else
    {
      v221 = v220 & 0xFFFFFFFE;
    }

    if (v221)
    {
      *err = 0;
      LODWORD(v604) = 2;
      v222 = _os_log_send_and_compose_impl(v221, value, 0, 0, &_mh_execute_header, v0, 0, "Not in Enhanced APFS Mode..", err, v604);

      if (v222)
      {
        sub_100002A8C(v222);
      }
    }

    else
    {

      v222 = 0;
    }

    free(v222);
    v1 = 0x1000EB000;
  }

LABEL_1163:

  sub_10003FC14(v134, -1, (v124 | byte_1000EB603) & 1, 0);
  if ([v44[91] splitUserVolumeEnabled] && sub_100079BA8() == 100)
  {
    if (v7[98].isa != -1)
    {
      sub_100089CEC();
    }

    v489 = v8[97];
    if (os_log_type_enabled(v489, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v490 = sub_1000011A8(1);
      v491 = v489;
      if (os_log_type_enabled(v491, OS_LOG_TYPE_DEFAULT))
      {
        v492 = v490;
      }

      else
      {
        v492 = v490 & 0xFFFFFFFE;
      }

      if (v492)
      {
        *err = 0;
        LODWORD(v604) = 2;
        v493 = _os_log_send_and_compose_impl(v492, value, 0, 0, &_mh_execute_header, v491, 0, "UM debug panic boot arg umd-migration-debug=100, Trying to redo Volume Migration, clearing DM plsit file ..", err, v604);

        if (v493)
        {
          sub_100002A8C(v493);
        }
      }

      else
      {

        v493 = 0;
      }

      free(v493);
      v1 = 0x1000EB000;
    }

    v494 = sub_1000013A0(qword_1000EB608);
    v495 = [v494 removeFileAtPath:@"/private/var/mobile/Library/Preferences/com.apple.migration.plist" error:0];

    isa = v7[98].isa;
    if (v495)
    {
      if (isa != -1)
      {
        sub_100089CEC();
      }

      v497 = v8[97];
      if (!os_log_type_enabled(v497, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_1197;
      }

      value[0] = 0;
      v498 = sub_1000011A8(1);
      v497 = v497;
      if (os_log_type_enabled(v497, OS_LOG_TYPE_DEFAULT))
      {
        v499 = v498;
      }

      else
      {
        v499 = v498 & 0xFFFFFFFE;
      }

      if (v499)
      {
        *err = 0;
        LODWORD(v604) = 2;
        v500 = _os_log_send_and_compose_impl(v499, value, 0, 0, &_mh_execute_header, v497, 0, "Removed DM PLIST, continuing to boot.. ", err, v604);
        goto LABEL_1193;
      }
    }

    else
    {
      if (isa != -1)
      {
        sub_100089CEC();
      }

      v497 = v8[97];
      if (!os_log_type_enabled(v497, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_1197;
      }

      value[0] = 0;
      v501 = sub_1000011A8(1);
      v497 = v497;
      if (os_log_type_enabled(v497, OS_LOG_TYPE_DEFAULT))
      {
        v502 = v501;
      }

      else
      {
        v502 = v501 & 0xFFFFFFFE;
      }

      if (v502)
      {
        *err = 0;
        LODWORD(v604) = 2;
        v500 = _os_log_send_and_compose_impl(v502, value, 0, 0, &_mh_execute_header, v497, 0, "Unlink of DM Plist failed, unfortunately can't recover..", err, v604);
LABEL_1193:
        v503 = v500;

        if (v503)
        {
          sub_100002A8C(v503);
        }

        goto LABEL_1196;
      }
    }

    v503 = 0;
LABEL_1196:
    free(v503);
LABEL_1197:
  }

  if (![v44[91] splitUserVolumeEnabled] || !(v124 | v133))
  {
    goto LABEL_1213;
  }

  LODWORD(uuid[0]) = 0;
  v504 = sub_10007324C("/var/mobile/", uuid);
  v505 = v7[98].isa;
  if (!v504)
  {
    if (v505 != -1)
    {
      sub_100089CEC();
    }

    v516 = v8[97];
    if (!os_log_type_enabled(v516, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_1305;
    }

    value[0] = 0;
    v520 = sub_1000011A8(1);
    v0 = v516;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v521 = v520;
    }

    else
    {
      v521 = v520 & 0xFFFFFFFE;
    }

    if (!v521)
    {

      v522 = 0;
LABEL_1304:
      free(v522);
LABEL_1305:

      sleep(2u);
      sub_100018028("UserManagement early boot task failed to Set LAST BOOTED USER after Erase Install with error:%d", LODWORD(uuid[0]));
      goto LABEL_1306;
    }

LABEL_1302:
    *err = 67109120;
    *&err[4] = uuid[0];
    v533 = _os_log_send_and_compose_impl(v521, value, 0, 0, &_mh_execute_header, v0, 0, "FAILED to Set LAST BOOTED USER after Erase Install with error:%d", err);

    v522 = 0;
    if (v533)
    {
      sub_100002A8C(v533);
      v522 = v533;
    }

    goto LABEL_1304;
  }

  if (v505 != -1)
  {
    sub_100089CEC();
  }

  v506 = v8[97];
  if (os_log_type_enabled(v506, OS_LOG_TYPE_DEFAULT))
  {
    value[0] = 0;
    v507 = sub_1000011A8(1);
    v508 = v506;
    if (os_log_type_enabled(v508, OS_LOG_TYPE_DEFAULT))
    {
      v509 = v507;
    }

    else
    {
      v509 = v507 & 0xFFFFFFFE;
    }

    if (v509)
    {
      *err = 0;
      LODWORD(v604) = 2;
      v510 = _os_log_send_and_compose_impl(v509, value, 0, 0, &_mh_execute_header, v508, 0, "Set Last Booted User for Primary User on erase install", err, v604);

      if (v510)
      {
        sub_100002A8C(v510);
      }
    }

    else
    {

      v510 = 0;
    }

    free(v510);
    v1 = &off_1000EB000;
  }

LABEL_1213:
  if (*(v1 + 1456) == 1 || (sub_10001BB44(), *(v1 + 1456) == 1))
  {
    sub_10008B1C0(qword_1000EB2E0);
  }
}
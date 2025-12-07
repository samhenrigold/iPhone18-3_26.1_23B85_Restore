void connect_callback(int a1)
{
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v26 = 0;
  v17 = 106;
  v1 = accept(a1, &v26, &v17);
  v16 = 1;
  if ((v1 & 0x80000000) == 0)
  {
    v2 = v1;
    if ((setsockopt(v1, 0xFFFF, 4130, &v16, 8u) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    v3 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v3 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }
    }

    v6 = *__error();
    v7 = __error();
    v8 = strerror(*v7);
    *buf = 67109634;
    *&buf[4] = v2;
    *&buf[8] = 1024;
    *&buf[10] = v6;
    *&buf[14] = 2082;
    *&v23 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%3d: WARNING: setsockopt - SO_NOSIGPIPE %d (%{public}s)", buf, 0x18u);
LABEL_12:
    v9 = fcntl(v2, 3, 0);
    if (fcntl(v2, 4, v9 | 4u))
    {
      my_perror("ERROR: fcntl(sd, F_SETFL, O_NONBLOCK) - aborting client");
      close(v2);
      return;
    }

    v10 = NewRequest();
    *(v10 + 291) = 1;
    *(v10 + 46) = v2;
    *(v10 + 48) = v2;
    add = atomic_fetch_add(&dnssd_server_get_new_request_id_s_next_id, 1u);
    *(v10 + 51) = 0;
    *(v10 + 52) = 0;
    *(v10 + 50) = add;
    set_peer_pid(v10);
    v24 = 0u;
    memset(v25, 0, sizeof(v25));
    *buf = 0u;
    v23 = 0u;
    v15 = 76;
    if (getsockopt(v2, 0, 1, buf, &v15) < 0 || *buf)
    {
      my_perror("ERROR: getsockopt, LOCAL_PEERCRED");
    }

    else
    {
      *(v10 + 49) = *&buf[4];
    }

    v12 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
LABEL_23:
        v13 = *(v10 + 46);
        v14 = *(v10 + 49);
        *v18 = 67109376;
        v19 = v13;
        v20 = 1024;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%3d: connect_callback: Adding FD for uid %u", v18, 0xEu);
      }
    }

    else
    {
      v12 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_23;
      }
    }

    udsSupportAddFDToEventLoop(v2, request_callback, v10);
    return;
  }

  if (*__error() != 35)
  {
    v4 = my_throttled_perror_uds_throttle_count++;
    HIDWORD(v5) = 652835029 * v4 + 17179868;
    LODWORD(v5) = HIDWORD(v5);
    if ((v5 >> 1) <= 0x10624DC)
    {
      my_perror("ERROR: accept");
    }
  }
}

void *NewRequest()
{
  result = malloc_type_calloc(1uLL, 0x128uLL, 0x7E67FF67uLL);
  if (result)
  {
    result[13] = result + 12;
    v1 = &all_requests;
    do
    {
      v2 = v1;
      v3 = *v1;
      v1 = (*v1 + 16);
    }

    while (v3);
    *v2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void request_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = v8;
  v10 = 0;
  v11 = *(v8 + 291);
  while (2)
  {
    if (v11 == 1)
    {
      v15 = *(v9 + 53);
      if (v15 > 0x1B)
      {
        goto LABEL_19;
      }

      v16 = recv(*(v9 + 46), v9 + v15 + 216, 28 - v15, 0);
      if (!v16)
      {
        v979 = 4;
LABEL_1946:
        *(v9 + 291) = v979;
        goto LABEL_1947;
      }

      if (v16 < 0)
      {
LABEL_28:
        v31 = __error();
        v10 = 0;
        if (*v31 != 35)
        {
          v32 = __error();
          v10 = 0;
          if (*v32 != 4)
          {
            v981 = mDNSLogCategory_Default;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
            {
              if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
              {
LABEL_1938:
                v985 = *(v9 + 50);
                v986 = *__error();
                v987 = __error();
                v988 = strerror(*v987);
                v1109[0].st_dev = 67109634;
                *&v1109[0].st_mode = v985;
                LOWORD(v1109[0].st_ino) = 1024;
                *(&v1109[0].st_ino + 2) = v986;
                HIWORD(v1109[0].st_ino) = 2082;
                *&v1109[0].st_uid = v988;
                v970 = "[R%u] ERROR: read_msg errno %d (%{public}s)";
                v975 = v981;
                v976 = 24;
                goto LABEL_1944;
              }
            }

            else
            {
              v981 = mDNSLogCategory_Default_redacted;
              if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1938;
              }
            }

LABEL_1945:
            v979 = 3;
            goto LABEL_1946;
          }
        }

LABEL_120:
        v12 = *(v9 + 291);
        goto LABEL_121;
      }

      v17 = *(v9 + 53) + v16;
      *(v9 + 53) = v17;
      if (v17 >= 0x1D)
      {
        v967 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1945;
          }

          v982 = *(v9 + 50);
          v1109[0].st_dev = 67109120;
          *&v1109[0].st_mode = v982;
          v970 = "[R%u] ERROR: read_msg - read too many header bytes";
        }

        else
        {
          v967 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1945;
          }

          v980 = *(v9 + 50);
          v1109[0].st_dev = 67109120;
          *&v1109[0].st_mode = v980;
          v970 = "[R%u] ERROR: read_msg - read too many header bytes";
        }

        goto LABEL_1915;
      }

      v10 = 0;
      if (v17 != 28)
      {
        goto LABEL_120;
      }

      v18 = vrev32q_s8(*(v9 + 27));
      *(v9 + 27) = v18;
      *(v9 + 60) = bswap32(*(v9 + 60));
      v19 = v18.i32[0];
      if (v18.i32[0] == 1)
      {
        v20 = v18.u32[1];
        if (v18.i32[1] < 0x11171u)
        {
          v21 = malloc_type_calloc(1uLL, (v18.i32[1] + 5), 0xF83C4640uLL);
          if (!v21)
          {
            goto LABEL_1949;
          }

          v9[9] = v21;
          v9[10] = v21;
          v9[11] = &v21[*(v9 + 55)];
          LODWORD(v15) = *(v9 + 53);
          v10 = 0;
LABEL_19:
          if (v15 != 28)
          {
            goto LABEL_120;
          }

          v22 = v9[8];
          v23 = *(v9 + 55);
          if (v23 > v22)
          {
            *buf = v9[9] + v22;
            *&buf[8] = v23 - v22;
            *(&v1109[0].st_rdev + 1) = 0;
            memset(__src, 0, 28);
            *&v1109[0].st_dev = 0;
            v1109[0].st_ino = 0;
            *&v1109[0].st_uid = buf;
            v1109[0].st_rdev = 1;
            v1109[0].st_atimespec.tv_sec = __src;
            v1109[0].st_atimespec.tv_nsec = 28;
            v24 = recvmsg(*(v9 + 46), v1109, 0);
            if (!v24)
            {
              v12 = 4;
              goto LABEL_36;
            }

            if (v24 < 0)
            {
              goto LABEL_28;
            }

            v22 = v9[8] + v24;
            v9[8] = v22;
            v23 = *(v9 + 55);
            if (v22 > v23)
            {
              v25 = mDNSLogCategory_Default;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
              {
                if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_35;
                }
              }

              else
              {
                v25 = mDNSLogCategory_Default_redacted;
                if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_35;
                }
              }

              v26 = *(v9 + 50);
              *&v1111[0].sa_len = 67109120;
              *&v1111[0].sa_data[2] = v26;
              v27 = v1111;
              v28 = v25;
              v29 = OS_LOG_TYPE_ERROR;
              v30 = "[R%u] ERROR: read_msg - read too many data bytes";
LABEL_33:
              v34 = 8;
LABEL_34:
              _os_log_impl(&_mh_execute_header, v28, v29, v30, &v27->sa_len, v34);
              goto LABEL_35;
            }

            if ((v9[28] & 4) == 0 && LODWORD(v1109[0].st_atimespec.tv_nsec) >= 0xC)
            {
              if (v1109[0].st_atimespec.tv_sec)
              {
                if (*(v1109[0].st_atimespec.tv_sec + 4) == 0xFFFF && *(v1109[0].st_atimespec.tv_sec + 8) == 1)
                {
                  v35 = *(v1109[0].st_atimespec.tv_sec + 12);
                  *(v9 + 48) = v35;
                  if (v22 < v23)
                  {
                    v36 = mDNSLogCategory_Default;
                    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                    {
                      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                      {
                        goto LABEL_35;
                      }
                    }

                    else
                    {
                      v36 = mDNSLogCategory_Default_redacted;
                      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                      {
                        goto LABEL_35;
                      }
                    }

                    v71 = *(v9 + 50);
                    v72 = *(v9 + 47);
                    *&v1111[0].sa_len = 67110402;
                    *&v1111[0].sa_data[2] = v71;
                    *&v1111[0].sa_data[6] = 1024;
                    *&v1111[0].sa_data[8] = v72;
                    *&v1111[0].sa_data[12] = 2082;
                    *&v1111[1].sa_len = v9 + 32;
                    *&v1111[1].sa_data[6] = 1024;
                    *&v1111[1].sa_data[8] = v35;
                    *&v1111[1].sa_data[12] = 2048;
                    *&v1111[2].sa_len = v22;
                    *&v1111[2].sa_data[6] = 1024;
                    *&v1111[2].sa_data[8] = v23;
                    v27 = v1111;
                    v28 = v36;
                    v29 = OS_LOG_TYPE_DEBUG;
                    v30 = "[R%u] Client(PID [%d](%{public}s)) sent result code socket %d via SCM_RIGHTS with req->data_bytes %lu < req->hdr.datalen %u";
                    v34 = 46;
                    goto LABEL_34;
                  }
                }
              }
            }

            v10 = 0;
            if (*(v9 + 53) != 28)
            {
              goto LABEL_120;
            }
          }

          if (v22 != v23)
          {
            goto LABEL_120;
          }

          if ((v9[28] & 4) != 0 || !v9[14] || *(v9 + 57) == 63)
          {
LABEL_53:
            *(v9 + 291) = 2;
            goto LABEL_122;
          }

          *(v1113 + 10) = v10;
          v1113[0] = v10;
          v1112[1] = v10;
          v1112[0] = v10;
          v1111[2] = v10;
          v1111[1] = v10;
          v1111[0] = v10;
          v1056.tv_sec = 0;
          v1055 = v10;
          v1054[1] = v10;
          v1054[0] = v10;
          *&__src[8] = v10;
          *&__src[4] = v10;
          *__src = v10;
          if (v9[10])
          {
            v37 = v9[11];
            v38 = __src;
            while (1)
            {
              v39 = v9[10];
              if (v39 >= v37 || v38 >= &v1056.tv_nsec)
              {
                break;
              }

              v9[10] = v39 + 1;
              v41 = *v39;
              *v38 = v41;
              v38 = (v38 + 1);
              if (!v41)
              {
                goto LABEL_65;
              }
            }

            *(v38 - (v38 == &v1056.tv_nsec)) = 0;
            v9[10] = 0;
          }

LABEL_65:
          v42 = 0;
          *(v1113 + 10) = v10;
          v1113[0] = v10;
          v1112[1] = v10;
          v1112[0] = v10;
          v1111[2] = v10;
          v1111[0] = v10;
          v1111[1] = v10;
          v1111[0].sa_family = 1;
          while (1)
          {
            v43 = *(__src + v42);
            v1111[0].sa_data[v42] = v43;
            if (!v43)
            {
              break;
            }

            if (++v42 == 103)
            {
              BYTE9(v1113[1]) = 0;
              break;
            }
          }

          if (!LOBYTE(__src[0]))
          {
            v45 = *(v9 + 48);
            if (v45 == *(v9 + 46))
            {
              v46 = mDNSLogCategory_Default;
              if (mDNS_SensitiveLoggingEnableCount)
              {
                v47 = mDNSLogCategory_Default == mDNSLogCategory_State;
              }

              else
              {
                v47 = 1;
              }

              if (v47)
              {
                if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_119;
                }
              }

              else
              {
                v46 = mDNSLogCategory_Default_redacted;
                if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_119;
                }
              }

              v62 = *(v9 + 50);
              v1109[0].st_dev = 67109120;
              *&v1109[0].st_mode = v62;
              v57 = v1109;
              v58 = v46;
              v59 = "[R%u] read_msg: ERROR failed to get errsd via SCM_RIGHTS";
              v60 = 8;
              goto LABEL_118;
            }

LABEL_81:
            v48 = fcntl(v45, 3, 0);
            if (!fcntl(v45, 4, v48 | 4u))
            {
              v10 = 0;
              goto LABEL_53;
            }

            v49 = mDNSLogCategory_Default;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
            {
              if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
              {
LABEL_94:
                v53 = *(v9 + 50);
                v54 = *__error();
                v55 = __error();
                v56 = strerror(*v55);
                v1109[0].st_dev = 67109634;
                *&v1109[0].st_mode = v53;
                LOWORD(v1109[0].st_ino) = 1024;
                *(&v1109[0].st_ino + 2) = v54;
                HIWORD(v1109[0].st_ino) = 2082;
                *&v1109[0].st_uid = v56;
                v57 = v1109;
                v58 = v49;
                v59 = "[R%u] ERROR: could not set control socket to non-blocking mode errno %d (%{public}s)";
                v60 = 24;
LABEL_118:
                _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, v59, v57, v60);
              }
            }

            else
            {
              v49 = mDNSLogCategory_Default_redacted;
              if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_94;
              }
            }

LABEL_119:
            *(v9 + 291) = 3;
            v10 = 0;
            goto LABEL_120;
          }

          v44 = socket(1, 1, 0);
          *(v9 + 48) = v44;
          if (v44 < 0)
          {
            v50 = my_throttled_perror_uds_throttle_count++;
            HIDWORD(v51) = 652835029 * v50 + 17179868;
            LODWORD(v51) = HIDWORD(v51);
            if ((v51 >> 1) <= 0x10624DC)
            {
              my_perror("ERROR: socket");
            }

            goto LABEL_119;
          }

          if ((connect(v44, v1111, 0x6Au) & 0x80000000) == 0)
          {
            v45 = *(v9 + 48);
            goto LABEL_81;
          }

          memset(v1109, 0, 144);
          v52 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_99;
            }
          }

          else
          {
            v52 = mDNSLogCategory_Default_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_99;
            }
          }

          v63 = *(v9 + 50);
          v64 = *__error();
          v65 = __error();
          v66 = strerror(*v65);
          *buf = 67109890;
          *&buf[4] = v63;
          *&buf[8] = 2082;
          *&buf[10] = v1111[0].sa_data;
          *&buf[18] = 1024;
          *&buf[20] = v64;
          *&buf[24] = 2082;
          *&buf[26] = v66;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "[R%u] read_msg: Couldn't connect to error return path socket %{public}s errno %d (%{public}s)", buf, 0x22u);
LABEL_99:
          v67 = stat(v1111[0].sa_data, v1109);
          v68 = mDNSLogCategory_Default;
          if (mDNS_SensitiveLoggingEnableCount)
          {
            v69 = mDNSLogCategory_Default == mDNSLogCategory_State;
          }

          else
          {
            v69 = 1;
          }

          v70 = v69;
          if (v67 < 0)
          {
            if (v70)
            {
              if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_119;
              }
            }

            else
            {
              v68 = mDNSLogCategory_Default_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_119;
              }
            }

            v74 = *(v9 + 50);
            v75 = *__error();
            v76 = __error();
            v77 = strerror(*v76);
            *buf = 67109890;
            *&buf[4] = v74;
            *&buf[8] = 2082;
            *&buf[10] = v1111[0].sa_data;
            *&buf[18] = 1024;
            *&buf[20] = v75;
            *&buf[24] = 2082;
            *&buf[26] = v77;
            v57 = buf;
            v58 = v68;
            v59 = "[R%u] read_msg: stat failed %{public}s errno %d (%{public}s)";
            v60 = 34;
            goto LABEL_118;
          }

          if (v70)
          {
            if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_119;
            }
          }

          else
          {
            v68 = mDNSLogCategory_Default_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_119;
            }
          }

          v73 = *(v9 + 50);
          *buf = 67110146;
          *&buf[4] = v73;
          *&buf[8] = 2082;
          *&buf[10] = v1111[0].sa_data;
          *&buf[18] = 1024;
          *&buf[20] = v1109[0].st_mode;
          *&buf[24] = 1024;
          *&buf[26] = v1109[0].st_uid;
          *&buf[30] = 1024;
          *&buf[32] = v1109[0].st_gid;
          v57 = buf;
          v58 = v68;
          v59 = "[R%u] read_msg: file %{public}s mode %o (octal) uid %u gid %u";
          v60 = 36;
          goto LABEL_118;
        }

        v983 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1945;
          }
        }

        else
        {
          v983 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1945;
          }
        }

        v989 = *(v9 + 50);
        v1109[0].st_dev = 67109632;
        *&v1109[0].st_mode = v989;
        LOWORD(v1109[0].st_ino) = 1024;
        *(&v1109[0].st_ino + 2) = v20;
        HIWORD(v1109[0].st_ino) = 1024;
        v1109[0].st_uid = v20;
        v970 = "[R%u] ERROR: read_msg: hdr.datalen %u (0x%X) > 70000";
      }

      else
      {
        v983 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1945;
          }
        }

        else
        {
          v983 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1945;
          }
        }

        v984 = *(v9 + 50);
        v1109[0].st_dev = 67109632;
        *&v1109[0].st_mode = v984;
        LOWORD(v1109[0].st_ino) = 1024;
        *(&v1109[0].st_ino + 2) = v19;
        HIWORD(v1109[0].st_ino) = 1024;
        v1109[0].st_uid = 1;
        v970 = "[R%u] ERROR: client version 0x%08X daemon version 0x%08X";
      }

      v975 = v983;
      v976 = 20;
      goto LABEL_1944;
    }

    if (v11 != 2)
    {
      if (v11 - 3 > 1)
      {
        v971 = mDNSLogCategory_Default;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v972 = mDNSLogCategory_Default == mDNSLogCategory_State;
        }

        else
        {
          v972 = 1;
        }

        if (v972)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1945;
          }
        }

        else
        {
          v971 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1945;
          }
        }

        v978 = *(v9 + 50);
        v1109[0].st_dev = 67109376;
        *&v1109[0].st_mode = v978;
        LOWORD(v1109[0].st_ino) = 1024;
        *(&v1109[0].st_ino + 2) = v11;
        v970 = "[R%u] ERROR: read_msg called with invalid transfer state (%d)";
        v975 = v971;
        v976 = 14;
LABEL_1944:
        _os_log_impl(&_mh_execute_header, v975, OS_LOG_TYPE_ERROR, v970, v1109, v976);
        goto LABEL_1945;
      }

      v967 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v968 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v968 = 1;
      }

      if (v968)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1945;
        }

        v969 = *(v9 + 50);
        v1109[0].st_dev = 67109120;
        *&v1109[0].st_mode = v969;
        v970 = "[R%u] ERROR: read_msg called with transfer state terminated or error";
      }

      else
      {
        v967 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1945;
        }

        v974 = *(v9 + 50);
        v1109[0].st_dev = 67109120;
        *&v1109[0].st_mode = v974;
        v970 = "[R%u] ERROR: read_msg called with transfer state terminated or error";
      }

LABEL_1915:
      v975 = v967;
      v976 = 8;
      goto LABEL_1944;
    }

    *&v1111[0].sa_len = 0;
    v12 = 4;
    v13 = recv(*(v9 + 46), v1111, 4uLL, 0);
    if (v13)
    {
      if ((v13 & 0x8000000000000000) == 0)
      {
        v14 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
LABEL_32:
            v33 = *(v9 + 50);
            v1109[0].st_dev = 67109120;
            *&v1109[0].st_mode = v33;
            v27 = v1109;
            v28 = v14;
            v29 = OS_LOG_TYPE_ERROR;
            v30 = "[R%u] ERROR: read data from a completed request";
            goto LABEL_33;
          }
        }

        else
        {
          v14 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_32;
          }
        }

LABEL_35:
        v12 = 3;
        goto LABEL_36;
      }

      goto LABEL_28;
    }

LABEL_36:
    v10 = 0;
    *(v9 + 291) = v12;
LABEL_121:
    if (v12 == 2)
    {
LABEL_122:
      v78 = *(v9 + 57);
      v79 = 4;
      switch(v78)
      {
        case 1:
          goto LABEL_127;
        case 2:
          v79 = 19;
          goto LABEL_137;
        case 3:
        case 19:
          goto LABEL_137;
        case 4:
          v79 = 8;
          goto LABEL_137;
        case 5:
          v79 = 16;
          goto LABEL_137;
        case 6:
        case 11:
          v79 = 10;
          goto LABEL_137;
        case 7:
        case 18:
          v79 = 11;
          goto LABEL_137;
        case 8:
        case 15:
          v79 = 13;
          goto LABEL_137;
        case 9:
          v79 = 15;
          goto LABEL_137;
        case 10:
          v79 = 12;
          goto LABEL_137;
        case 12:
          v79 = 5;
          goto LABEL_137;
        case 13:
          v79 = 2;
          goto LABEL_137;
        case 14:
          v79 = 20;
          goto LABEL_137;
        case 16:
        case 17:
          goto LABEL_128;
        default:
          if (v78 == 63)
          {
LABEL_127:
            v79 = 0;
          }

          else
          {
LABEL_128:
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "request_callback: ERROR: validate_message - unsupported req type: %d PID[%d][%s]", v78, *(v9 + 47), v9 + 256);
            v10 = 0;
            v79 = -1;
          }

LABEL_137:
          if (v79 > v9[8])
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "request_callback: Invalid message %d bytes; min for %d is %d PID[%d][%s]", 0.0);
          }

          else
          {
            v80 = *(v9 + 57);
            if (v80 > 0x3F || ((1 << v80) & 0x8000000000000C0CLL) == 0)
            {
              if (!v9[14])
              {
LABEL_143:
                v81 = v9;
                goto LABEL_144;
              }

LABEL_141:
              if (v80 <= 0x3F && ((1 << v80) & 0x8000000000000C0CLL) != 0)
              {
                goto LABEL_143;
              }

              v81 = NewRequest();
              v81[3] = v9;
              *(v81 + 46) = *(v9 + 46);
              v81[24] = v9[24];
              v91 = *(v9 + 27);
              *(v81 + 228) = *(v9 + 228);
              *(v81 + 27) = v91;
              *(v81 + 9) = *(v9 + 9);
              v81[11] = v9[11];
              add = atomic_fetch_add(&dnssd_server_get_new_request_id_s_next_id, 1u);
              *(v81 + 51) = 0;
              *(v81 + 52) = 0;
              *(v81 + 50) = add;
              v93 = v9[4];
              if (v93)
              {
                os_retain(v93);
              }

              v94 = v81[4];
              if (v94)
              {
                os_release(v94);
              }

              v81[4] = v9[4];
              if (*(v9 + 288))
              {
                *(v81 + 288) = 1;
                *(v81 + 17) = *(v9 + 17);
              }

              else
              {
                v100 = *(v9 + 47);
                if (v100)
                {
                  *(v81 + 47) = v100;
                  v101 = v81 + 32;
                  v102 = (v9 + 32);
                  v103 = 16;
                  v10 = 0;
                  while (1)
                  {
                    v104 = *v102;
                    *v101 = v104;
                    if (!v104)
                    {
                      break;
                    }

                    ++v101;
                    ++v102;
                    if (--v103 <= 1)
                    {
                      *v101 = 0;
                      break;
                    }
                  }

LABEL_144:
                  if (v81[28])
                  {
                    *(v81 + 292) = 1;
                  }

                  if (dword_10016D264)
                  {
                    v82 = *(v81 + 57);
                    if (v82 != 63 && v82 != 13)
                    {
                      updated = -65563;
                      goto LABEL_1184;
                    }
                  }

                  if (v81[4])
                  {
                    goto LABEL_153;
                  }

                  v86 = *(v81 + 46);
                  *&v1109[0].st_uid = v10;
                  *&v1109[0].st_dev = v10;
                  __src[0] = 32;
                  if (!getsockopt(v86, 0, 6, v1109, __src))
                  {
LABEL_161:
                    v1111[0] = *&v1109[0].st_dev;
                    v1111[1] = *&v1109[0].st_uid;
                    v88 = mdns_audit_token_create(v1111);
                    v81[4] = v88;
                    v10 = 0;
                    if (!v88)
                    {
                      v89 = mDNSLogCategory_Default;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                      {
                        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
                        {
                          goto LABEL_427;
                        }
                      }

                      else
                      {
                        v89 = mDNSLogCategory_Default_redacted;
                        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
                        {
                          goto LABEL_427;
                        }
                      }

                      v261 = *(v81 + 50);
                      v262 = *(v81 + 47);
                      v1109[0].st_dev = 67109634;
                      *&v1109[0].st_mode = v261;
                      LOWORD(v1109[0].st_ino) = 2048;
                      *(&v1109[0].st_ino + 2) = v262;
                      HIWORD(v1109[0].st_uid) = 2082;
                      *&v1109[0].st_gid = v81 + 32;
                      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_FAULT, "[R%u] Failed to create peer audit token -- client pid: %lld (%{public}s)", v1109, 0x1Cu);
                      goto LABEL_427;
                    }

                    goto LABEL_153;
                  }

                  if (*__error())
                  {
                    v87 = *__error();
                    if (!v87)
                    {
                      goto LABEL_161;
                    }
                  }

                  else
                  {
                    v87 = -6700;
                  }

                  v95 = mDNSLogCategory_Default;
                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                  {
                    v97 = os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR);
                    v10 = 0;
                    if (v97)
                    {
LABEL_181:
                      v98 = *(v81 + 50);
                      v99 = *(v81 + 47);
                      v1109[0].st_dev = 67109890;
                      *&v1109[0].st_mode = v98;
                      LOWORD(v1109[0].st_ino) = 2048;
                      *(&v1109[0].st_ino + 2) = v87;
                      HIWORD(v1109[0].st_uid) = 2048;
                      *&v1109[0].st_gid = v99;
                      *(&v1109[0].st_rdev + 2) = 2082;
                      *(&v1109[0].st_rdev + 6) = v81 + 32;
                      _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "[R%u] Failed to get peer audit token -- error: %ld, client pid: %lld (%{public}s)", v1109, 0x26u);
                      v10 = 0;
                    }
                  }

                  else
                  {
                    v95 = mDNSLogCategory_Default_redacted;
                    v96 = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR);
                    v10 = 0;
                    if (v96)
                    {
                      goto LABEL_181;
                    }
                  }

LABEL_153:
                  v84 = *(v81 + 57);
                  switch(v84)
                  {
                    case 1:
                      v85 = mDNSLogCategory_Default;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                      {
                        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_454;
                        }
                      }

                      else
                      {
                        v85 = mDNSLogCategory_Default_redacted;
                        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_454;
                        }
                      }

                      v277 = *(v81 + 50);
                      v278 = *(v81 + 47);
                      v1109[0].st_dev = 67109634;
                      *&v1109[0].st_mode = v277;
                      LOWORD(v1109[0].st_ino) = 1024;
                      *(&v1109[0].st_ino + 2) = v278;
                      HIWORD(v1109[0].st_ino) = 2082;
                      *&v1109[0].st_uid = v81 + 32;
                      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceCreateConnection START PID[%d](%{public}s)", v1109, 0x18u);
LABEL_454:
                      updated = 0;
                      v279 = connection_termination;
                      goto LABEL_455;
                    case 2:
                      if (v81[14] != connection_termination)
                      {
                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceRegisterRecord(not a shared connection ref)", 0.0);
                        goto LABEL_1183;
                      }

                      rr_from_ipc_msg = read_rr_from_ipc_msg(v81, 1, 1);
                      LODWORD(v1052[0]) = 0;
                      *v1035 = 0;
                      service_attr_tsr_params = get_service_attr_tsr_params(v81, v1052, v1035);
                      updated = -65540;
                      if (!rr_from_ipc_msg)
                      {
                        goto LABEL_1184;
                      }

                      v285 = service_attr_tsr_params;
                      if (service_attr_tsr_params)
                      {
                        v286 = v1052[0];
                        v1109[0].st_ino = 0;
                        *&v1109[0].st_dev = 0;
                        clock_gettime(_CLOCK_MONOTONIC_RAW, v1109);
                        if (v286 > 0x93A80)
                        {
                          v287 = mDNSLogCategory_mDNS;
                          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                          {
                            updated = -65540;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_1184;
                            }

                            v288 = *(rr_from_ipc_msg + 5);
                            if (v288)
                            {
                              v539 = *(rr_from_ipc_msg + 5);
                              while (1)
                              {
                                if (!v539 || (v540 = *v539, v540 > 0x3F))
                                {
LABEL_954:
                                  v291 = 257;
                                  goto LABEL_1349;
                                }

                                if (!*v539)
                                {
                                  break;
                                }

                                v539 += v540 + 1;
                                if (&v539[-v288] >= 256)
                                {
                                  goto LABEL_954;
                                }
                              }

                              v291 = (v539 - v288 + 1);
                            }

                            else
                            {
                              v291 = 0;
                            }
                          }

                          else
                          {
                            v287 = mDNSLogCategory_mDNS_redacted;
                            updated = -65540;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_1184;
                            }

                            v288 = *(rr_from_ipc_msg + 5);
                            if (v288)
                            {
                              v289 = *(rr_from_ipc_msg + 5);
                              while (1)
                              {
                                if (!v289 || (v290 = *v289, v290 > 0x3F))
                                {
LABEL_483:
                                  v291 = 257;
                                  goto LABEL_1349;
                                }

                                if (!*v289)
                                {
                                  break;
                                }

                                v289 += v290 + 1;
                                if (&v289[-v288] >= 256)
                                {
                                  goto LABEL_483;
                                }
                              }

                              v291 = (v289 - v288 + 1);
                            }

                            else
                            {
                              v291 = 0;
                            }
                          }

LABEL_1349:
                          v1109[0].st_dev = 67110147;
                          *&v1109[0].st_mode = v1052[0];
                          v1109[0].st_ino = 0x87000093A800400;
                          *&v1109[0].st_uid = 1752392040;
                          LOWORD(v1109[0].st_rdev) = 1040;
                          *(&v1109[0].st_rdev + 2) = v291;
                          *(&v1109[0].st_rdev + 3) = 2101;
                          v1109[0].st_atimespec.tv_sec = v288;
                          v179 = v1109;
                          v180 = v287;
                          v181 = OS_LOG_TYPE_ERROR;
                          v182 = "tsrTimestamp[%u] out of range (%d) on TSR for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P";
                          v584 = 40;
                          goto LABEL_1056;
                        }

                        v454 = v1109[0].st_dev - v286;
                      }

                      else
                      {
                        v454 = 0;
                      }

                      v461 = mDNSGetTSRForAuthRecordNamed(xmmword_100170360, *(rr_from_ipc_msg + 5), *(rr_from_ipc_msg + 6));
                      v462 = v461;
                      *(rr_from_ipc_msg + 12) = *(v81 + 46);
                      v463 = v1052[0];
                      if (!v285 && !v461)
                      {
                        goto LABEL_827;
                      }

                      *&v1111[0].sa_len = v1052[0];
                      *&v1111[0].sa_data[2] = *v1035;
                      if (v285)
                      {
                        v465 = v1111;
                      }

                      else
                      {
                        v465 = 0;
                      }

                      v466 = conflictWithAuthRecordsOrFlush(rr_from_ipc_msg, v465, v461);
                      if (v466 > 1)
                      {
                        if (v466 != 3)
                        {
                          v565 = mDNSLogCategory_mDNS;
                          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                          {
                            updated = -65548;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1174;
                            }
                          }

                          else
                          {
                            v565 = mDNSLogCategory_mDNS_redacted;
                            updated = -65548;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1174;
                            }
                          }

                          GetRRDisplayString_rdb(rr_from_ipc_msg + 8, (*(rr_from_ipc_msg + 6) + 4), word_1001789D0);
                          v587 = *(rr_from_ipc_msg + 4);
                          v1109[0].st_dev = 141558531;
                          *&v1109[0].st_mode = 1752392040;
                          WORD2(v1109[0].st_ino) = 2085;
                          *(&v1109[0].st_ino + 6) = word_1001789D0;
                          HIWORD(v1109[0].st_gid) = 2048;
                          *&v1109[0].st_rdev = v587;
                          v378 = v565;
                          v379 = "handle_regrecord_request: Name conflict %{sensitive, mask.hash}s InterfaceID %p";
                          goto LABEL_1071;
                        }

                        v462 = mDNSGetTSRForAuthRecordNamed(xmmword_100170360, *(rr_from_ipc_msg + 5), *(rr_from_ipc_msg + 6));
                      }

                      else if (v466)
                      {
                        v467 = mDNSLogCategory_mDNS;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                        {
                          updated = -65572;
                          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_840;
                          }
                        }

                        else
                        {
                          v467 = mDNSLogCategory_mDNS_redacted;
                          updated = -65572;
                          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                          {
LABEL_840:
                            GetRRDisplayString_rdb(rr_from_ipc_msg + 8, (*(rr_from_ipc_msg + 6) + 4), word_1001789D0);
                            v468 = *(rr_from_ipc_msg + 4);
                            v1109[0].st_dev = 141558531;
                            *&v1109[0].st_mode = 1752392040;
                            WORD2(v1109[0].st_ino) = 2085;
                            *(&v1109[0].st_ino + 6) = word_1001789D0;
                            HIWORD(v1109[0].st_gid) = 2048;
                            *&v1109[0].st_rdev = v468;
                            v378 = v467;
                            v379 = "handle_regrecord_request: TSR Stale data, auth cache is newer %{sensitive, mask.hash}s InterfaceID %p";
LABEL_1071:
                            v498 = 32;
                            goto LABEL_1173;
                          }
                        }

LABEL_1174:
                        v641 = rr_from_ipc_msg;
                        goto LABEL_1175;
                      }

                      if (v285 && conflictWithCacheRecordsOrFlush(*(rr_from_ipc_msg + 6), *(rr_from_ipc_msg + 5), v463, *v1035))
                      {
                        v516 = mDNSLogCategory_mDNS;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                        {
                          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                          {
                            v517 = *(rr_from_ipc_msg + 5);
                            if (v517)
                            {
                              v598 = *(rr_from_ipc_msg + 5);
                              while (1)
                              {
                                if (!v598 || (v599 = *v598, v599 > 0x3F))
                                {
LABEL_1091:
                                  v520 = 257;
                                  goto LABEL_1564;
                                }

                                if (!*v598)
                                {
                                  break;
                                }

                                v598 += v599 + 1;
                                if (&v598[-v517] >= 256)
                                {
                                  goto LABEL_1091;
                                }
                              }

                              v520 = (v598 - v517 + 1);
                            }

                            else
                            {
                              v520 = 0;
                            }

                            goto LABEL_1564;
                          }
                        }

                        else
                        {
                          v516 = mDNSLogCategory_mDNS_redacted;
                          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                          {
                            v517 = *(rr_from_ipc_msg + 5);
                            if (v517)
                            {
                              v518 = *(rr_from_ipc_msg + 5);
                              while (1)
                              {
                                if (!v518 || (v519 = *v518, v519 > 0x3F))
                                {
LABEL_906:
                                  v520 = 257;
                                  goto LABEL_1564;
                                }

                                if (!*v518)
                                {
                                  break;
                                }

                                v518 += v519 + 1;
                                if (&v518[-v517] >= 256)
                                {
                                  goto LABEL_906;
                                }
                              }

                              v520 = (v518 - v517 + 1);
                            }

                            else
                            {
                              v520 = 0;
                            }

LABEL_1564:
                            v808 = *(rr_from_ipc_msg + 4);
                            v1109[0].st_dev = 141558787;
                            *&v1109[0].st_mode = 1752392040;
                            WORD2(v1109[0].st_ino) = 1040;
                            *(&v1109[0].st_ino + 6) = v520;
                            HIWORD(v1109[0].st_uid) = 2101;
                            *&v1109[0].st_gid = v517;
                            *(&v1109[0].st_rdev + 2) = 2048;
                            *(&v1109[0].st_rdev + 6) = v808;
                            _os_log_impl(&_mh_execute_header, v516, OS_LOG_TYPE_DEFAULT, "handle_regrecord_request: TSR Stale Data, record cache is newer %{sensitive, mask.hash, mdnsresponder:domain_name}.*P InterfaceID %p", v1109, 0x26u);
                          }
                        }

                        free(rr_from_ipc_msg);
                        updated = -65572;
                        goto LABEL_1184;
                      }

LABEL_827:
                      if (!_os_feature_enabled_impl() || !IsLocalDomain(*(rr_from_ipc_msg + 5)))
                      {
                        goto LABEL_1133;
                      }

                      if (v81[4])
                      {
                        bzero(v1109, 0x3F1uLL);
                        v1096 = 0u;
                        memset(buf, 0, sizeof(buf));
                        v1122 = 0u;
                        v1121 = 0u;
                        v1120 = 0u;
                        v1119 = 0u;
                        v1118 = 0u;
                        v1117 = 0u;
                        v1116 = 0u;
                        v1115 = 0u;
                        v1114 = 0u;
                        memset(v1113, 0, sizeof(v1113));
                        memset(v1112, 0, sizeof(v1112));
                        memset(v1111, 0, sizeof(v1111));
                        v1065 = 0;
                        v1064 = 0;
                        v1063 = 0;
                        v1062 = 0;
                        v1061 = 0;
                        v1060 = 0;
                        v1059 = 0;
                        v1058 = 0;
                        v1057 = 0;
                        v1056 = 0;
                        v1055 = 0;
                        memset(v1054, 0, sizeof(v1054));
                        memset(__src, 0, sizeof(__src));
                        if (DeconstructServiceName(*(rr_from_ipc_msg + 5), buf, v1111, __src))
                        {
                          v464 = v1109;
                          ConvertDomainNameToCString_withescape(&v1111[0].sa_len, v1109);
                        }

                        else
                        {
                          v464 = 0;
                        }

                        v600 = v81[4];
                        v601 = *(v600 + 40);
                        v1068 = *(v600 + 24);
                        v1069 = v601;
                        v602 = mdns_trust_checks_check(&v1068, 0, 0, v464, 0, 1);
                        if (!v602)
                        {
                          updated = -65539;
                          goto LABEL_1134;
                        }

                        v603 = v602;
                        v604 = v602[9];
                        if (v604 > 1)
                        {
                          if (v604 == 3)
                          {
                            updated = -65555;
                            goto LABEL_1323;
                          }

                          if (v604 != 2)
                          {
                            goto LABEL_1311;
                          }
                        }

                        else if (v604)
                        {
                          if (v604 == 1)
                          {
                            updated = _handle_regrecord_request_start(v81, rr_from_ipc_msg);
LABEL_1323:
                            os_release(v603);
                            goto LABEL_1134;
                          }

LABEL_1311:
                          updated = -65537;
                          goto LABEL_1323;
                        }

                        if ((v81[6] || (Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks), (v81[6] = Mutable) != 0)) && (v606 = *(v600 + 40), v1068 = *(v600 + 24), v1069 = v606, (v607 = mdns_trust_create(&v1068, v464, v603)) != 0))
                        {
                          v608 = v607;
                          *(v607 + 7) = rr_from_ipc_msg;
                          mdns_interface_monitor_set_update_handler(v607, &__block_literal_global_313);
                          if (_get_trust_results_dispatch_queue_once != -1)
                          {
                            dispatch_once(&_get_trust_results_dispatch_queue_once, &__block_literal_global_240);
                          }

                          mdns_trust_set_queue(v608, _get_trust_results_dispatch_queue_queue);
                          *aBlock = _NSConcreteStackBlock;
                          *&aBlock[8] = 0x40000000;
                          *&aBlock[16] = ___handle_regrecord_request_with_trust_block_invoke_2;
                          *&aBlock[24] = &__block_descriptor_tmp_315;
                          *&aBlock[32] = v608;
                          *&aBlock[40] = v81;
                          mdns_trust_set_event_handler(v608, aBlock);
                          CFArrayAppendValue(v81[6], v608);
                          os_release(v608);
                          if ((*(v608 + 26) & 1) == 0)
                          {
                            *(v608 + 26) = 1;
                            _mdns_trust_activate_if_ready(v608);
                          }

                          updated = 0;
                        }

                        else
                        {
                          free(rr_from_ipc_msg);
                          updated = -65539;
                        }

                        goto LABEL_1323;
                      }

                      v586 = mDNSLogCategory_mDNS;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_1132:
                          v616 = *(v81 + 50);
                          v617 = *(v81 + 47);
                          v1109[0].st_dev = 67109634;
                          *&v1109[0].st_mode = v616;
                          LOWORD(v1109[0].st_ino) = 2080;
                          *(&v1109[0].st_ino + 2) = (v81 + 32);
                          HIWORD(v1109[0].st_uid) = 1024;
                          v1109[0].st_gid = v617;
                          _os_log_impl(&_mh_execute_header, v586, OS_LOG_TYPE_DEFAULT, "[R%u] _handle_regrecord_request_with_trust: no audit token for pid(%s %d)", v1109, 0x18u);
                        }
                      }

                      else
                      {
                        v586 = mDNSLogCategory_mDNS_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_1132;
                        }
                      }

LABEL_1133:
                      updated = _handle_regrecord_request_start(v81, rr_from_ipc_msg);
LABEL_1134:
                      if (!v285 || updated)
                      {
                        goto LABEL_1184;
                      }

                      v618 = *v1035;
                      if (v462)
                      {
                        updated = updateTSRRecord(v81, v462, v454, *v1035);
                        if (!updated)
                        {
                          goto LABEL_1255;
                        }

LABEL_1264:
                        v681 = mDNSLogCategory_mDNS;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                        {
                          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                          {
LABEL_1269:
                            v1109[0].st_dev = 67109120;
                            *&v1109[0].st_mode = updated;
                            _os_log_impl(&_mh_execute_header, v681, OS_LOG_TYPE_ERROR, "handle_regrecord_request: Failed to add TSR record with error %d", v1109, 8u);
                          }
                        }

                        else
                        {
                          v681 = mDNSLogCategory_mDNS_redacted;
                          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_1269;
                          }
                        }

                        v682 = *(rr_from_ipc_msg + 14);
                        v683 = v81 + 22;
                        do
                        {
                          v684 = v683;
                          v685 = *v683;
                          v683 = (*v683 + 8);
                          if (v685)
                          {
                            v686 = v685 == v682;
                          }

                          else
                          {
                            v686 = 1;
                          }
                        }

                        while (!v686);
                        if (!v685)
                        {
                          v689 = mDNSLogCategory_mDNS;
                          if (mDNS_SensitiveLoggingEnableCount)
                          {
                            v690 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                          }

                          else
                          {
                            v690 = 1;
                          }

                          if (v690)
                          {
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_1184;
                            }
                          }

                          else
                          {
                            v689 = mDNSLogCategory_mDNS_redacted;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_1184;
                            }
                          }

                          v695 = *(v81 + 50);
                          v1109[0].st_dev = 67109120;
                          *&v1109[0].st_mode = v695;
                          v696 = v1109;
                          v697 = v689;
                          v698 = OS_LOG_TYPE_ERROR;
                          v699 = "[R%u] handle_regrecord_request - record not in list!";
                          goto LABEL_1297;
                        }

                        *v684 = *v683;
                        v687 = mDNSLogCategory_mDNS;
                        if (mDNS_SensitiveLoggingEnableCount)
                        {
                          v688 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                        }

                        else
                        {
                          v688 = 1;
                        }

                        if (v688)
                        {
                          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                          {
LABEL_1293:
                            *(rr_from_ipc_msg + 14) = 0;
                            mDNS_Deregister(mDNSStorage, rr_from_ipc_msg);
                            if (!v682)
                            {
                              goto LABEL_1184;
                            }

                            v641 = v682;
LABEL_1175:
                            free(v641);
                            goto LABEL_1184;
                          }
                        }

                        else
                        {
                          v687 = mDNSLogCategory_mDNS_redacted;
                          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_1293;
                          }
                        }

                        v692 = *(v81 + 50);
                        GetRRDisplayString_rdb(rr_from_ipc_msg + 8, (*(rr_from_ipc_msg + 6) + 4), word_1001789D0);
                        v693 = *(rr_from_ipc_msg + 4);
                        v1109[0].st_dev = 67110147;
                        *&v1109[0].st_mode = v692;
                        LOWORD(v1109[0].st_ino) = 2160;
                        *(&v1109[0].st_ino + 2) = 1752392040;
                        HIWORD(v1109[0].st_uid) = 2085;
                        *&v1109[0].st_gid = word_1001789D0;
                        *(&v1109[0].st_rdev + 2) = 2048;
                        *(&v1109[0].st_rdev + 6) = rr_from_ipc_msg;
                        HIWORD(v1109[0].st_atimespec.tv_sec) = 2048;
                        v1109[0].st_atimespec.tv_nsec = v693;
                        _os_log_impl(&_mh_execute_header, v687, OS_LOG_TYPE_ERROR, "[R%u] handle_regrecord_request: TSR fail, removing %{sensitive, mask.hash}s (%p), InterfaceID %p", v1109, 0x30u);
                        goto LABEL_1293;
                      }

                      v619 = malloc_type_calloc(1uLL, 0x5A4uLL, 0x958092BDuLL);
                      if (!v619)
                      {
                        goto LABEL_1949;
                      }

                      v620 = v619;
                      mDNS_SetupResourceRecord(v619, 0, *(rr_from_ipc_msg + 4), 41, 0x1194u, 2, 0, 0, 0);
                      v621 = *(rr_from_ipc_msg + 5);
                      v622 = v621;
                      do
                      {
                        if (!v622)
                        {
                          break;
                        }

                        v623 = *v622;
                        if (v623 > 0x3F)
                        {
                          break;
                        }

                        if (!*v622)
                        {
                          v667 = v622 - v621 + 1;
                          if (v667 <= 0x100u)
                          {
                            memcpy((v620 + 652), v621, v667);
                            goto LABEL_1241;
                          }

                          break;
                        }

                        v622 += v623 + 1;
                      }

                      while (v622 - v621 <= 255);
                      *(v620 + 652) = 0;
LABEL_1241:
                      *(v620 + 14) = 1440;
                      v668 = *(rr_from_ipc_msg + 6);
                      *(v620 + 20) = 917518;
                      *(v620 + 24) = v668;
                      v669 = *(v620 + 48);
                      *(v669 + 4) = 720362;
                      *(v669 + 8) = v454;
                      *(v669 + 12) = v618;
                      *(v669 + 16) = 0;
                      *(v620 + 104) = regrecord_callback;
                      SetNewRData(v620 + 8, 0, 0);
                      v670 = *(v81 + 62);
                      *(v620 + 122) = (v670 & 0x400) != 0;
                      v671 = mDNSLogCategory_mDNS;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                      {
                        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_1247;
                        }
                      }

                      else
                      {
                        v671 = mDNSLogCategory_mDNS_redacted;
                        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_1247;
                        }
                      }

                      v672 = *(v81 + 50);
                      v673 = *(v81 + 63);
                      GetRRDisplayString_rdb((v620 + 8), (*(v620 + 48) + 4), word_1001789D0);
                      v674 = *(v81 + 47);
                      v1109[0].st_dev = 67110659;
                      *&v1109[0].st_mode = v672;
                      LOWORD(v1109[0].st_ino) = 1024;
                      *(&v1109[0].st_ino + 2) = v670;
                      HIWORD(v1109[0].st_ino) = 1024;
                      v1109[0].st_uid = v673;
                      LOWORD(v1109[0].st_gid) = 2160;
                      *(&v1109[0].st_gid + 2) = 1752392040;
                      *(&v1109[0].st_rdev + 3) = 2085;
                      v1109[0].st_atimespec.tv_sec = word_1001789D0;
                      LOWORD(v1109[0].st_atimespec.tv_nsec) = 1024;
                      *(&v1109[0].st_atimespec.tv_nsec + 2) = v674;
                      HIWORD(v1109[0].st_atimespec.tv_nsec) = 2082;
                      v1109[0].st_mtimespec.tv_sec = (v81 + 32);
                      _os_log_impl(&_mh_execute_header, v671, OS_LOG_TYPE_DEFAULT, "[R%u] regRecordAddTSRRecord(0x%X, %d, %{sensitive, mask.hash}s) START PID[%d](%{public}s)", v1109, 0x38u);
LABEL_1247:
                      v675 = mDNS_Register(mDNSStorage, v620);
                      if (!v675)
                      {
                        if (mDNS_McastLoggingEnabled)
                        {
                          LogMcastService(v620, v81, 1);
                        }

                        *(v620 + 96) = *(v81 + 46);
LABEL_1255:
                        v677 = mDNSLogCategory_mDNS;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                        {
                          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_671;
                          }
                        }

                        else
                        {
                          v677 = mDNSLogCategory_mDNS_redacted;
                          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_671;
                          }
                        }

                        v1109[0].st_dev = 67109632;
                        *&v1109[0].st_mode = v454;
                        LOWORD(v1109[0].st_ino) = 1024;
                        *(&v1109[0].st_ino + 2) = v1052[0];
                        HIWORD(v1109[0].st_ino) = 1024;
                        v1109[0].st_uid = *v1035;
                        _os_log_impl(&_mh_execute_header, v677, OS_LOG_TYPE_DEFAULT, "handle_regrecord_request: TSR record added with timestampContinuous %d tsrTimestamp %u tsrHostkeyHash %x", v1109, 0x14u);
                        goto LABEL_671;
                      }

                      updated = v675;
                      v676 = mDNSLogCategory_mDNS;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_1262:
                          v678 = *(v81 + 50);
                          v679 = *(v81 + 62);
                          v680 = *(v81 + 63);
                          GetRRDisplayString_rdb((v620 + 8), (*(v620 + 48) + 4), word_1001789D0);
                          v1109[0].st_dev = 67110403;
                          *&v1109[0].st_mode = v678;
                          LOWORD(v1109[0].st_ino) = 1024;
                          *(&v1109[0].st_ino + 2) = v679;
                          HIWORD(v1109[0].st_ino) = 1024;
                          v1109[0].st_uid = v680;
                          LOWORD(v1109[0].st_gid) = 2160;
                          *(&v1109[0].st_gid + 2) = 1752392040;
                          *(&v1109[0].st_rdev + 3) = 2085;
                          v1109[0].st_atimespec.tv_sec = word_1001789D0;
                          LOWORD(v1109[0].st_atimespec.tv_nsec) = 1024;
                          *(&v1109[0].st_atimespec.tv_nsec + 2) = updated;
                          _os_log_impl(&_mh_execute_header, v676, OS_LOG_TYPE_DEFAULT, "[R%u] regRecordAddTSRRecord(0x%X, %d,%{sensitive, mask.hash}s) ERROR (%d)", v1109, 0x2Eu);
                        }
                      }

                      else
                      {
                        v676 = mDNSLogCategory_mDNS_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_1262;
                        }
                      }

                      free(v620);
                      goto LABEL_1264;
                    case 3:
                      v172 = v81[10];
                      if (v172 && (v173 = v172 + 4, v173 <= v81[11]))
                      {
                        v81[10] = v173;
                        if (v173)
                        {
                          v174 = v81[14];
                          v175 = v81;
                          if (v174 != connection_termination || (SubordinateRequest = LocateSubordinateRequest(v81), v175 = SubordinateRequest, v174 = *(SubordinateRequest + 112), v174 != connection_termination))
                          {
                            if (v174 != regservice_termination_callback)
                            {
                              v177 = mDNSLogCategory_mDNS;
                              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                              {
                                updated = -65540;
                                if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1184;
                                }
                              }

                              else
                              {
                                v177 = mDNSLogCategory_mDNS_redacted;
                                updated = -65540;
                                if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1184;
                                }
                              }

                              v178 = *(v175 + 200);
                              v1109[0].st_dev = 67109120;
                              *&v1109[0].st_mode = v178;
                              v179 = v1109;
                              v180 = v177;
                              v181 = OS_LOG_TYPE_DEFAULT;
                              v182 = "[R%u] DNSServiceRemoveRecord(not a registered service ref)";
                              goto LABEL_1055;
                            }

                            v382 = *(v175 + 128);
                            v383 = *(v382 + 1624);
                            v384 = 0;
                            if (v383)
                            {
                              do
                              {
                                v385 = v383 + 39;
                                v386 = v383 + 39;
                                do
                                {
                                  v386 = *v386;
                                  if (!v386)
                                  {
                                    goto LABEL_697;
                                  }
                                }

                                while (*(v386 + 2) != *(v175 + 240));
                                v384 = *(v386 + 14);
                                if (*(v383 + 27))
                                {
                                  internal_stop_advertising_service((v386 + 3), *(v175 + 248), *(v175 + 188));
                                }

                                mDNS_Lock_(mDNSStorage, "mDNS_RemoveRecordFromService", 17818);
                                do
                                {
                                  v387 = v385;
                                  v385 = *v385;
                                  if (v385)
                                  {
                                    v388 = v385 == v386;
                                  }

                                  else
                                  {
                                    v388 = 1;
                                  }
                                }

                                while (!v388);
                                if (!v385)
                                {
                                  mDNS_Unlock_(mDNSStorage, "mDNS_RemoveRecordFromService", 17834);
LABEL_697:
                                  updated = -65541;
                                  goto LABEL_698;
                                }

                                v386[15] = FreeExtraRR;
                                v386[16] = v386;
                                *v387 = **v387;
                                updated = mDNS_Deregister_internal(mDNSStorage, v386 + 2, 0);
                                mDNS_Unlock_(mDNSStorage, "mDNS_RemoveRecordFromService", 17834);
                                if (!updated)
                                {
                                  goto LABEL_699;
                                }

LABEL_698:
                                if (*(v383 + 26))
                                {
                                  goto LABEL_920;
                                }

LABEL_699:
                                v383 = *v383;
                              }

                              while (v383);
                              updated = 0;
                            }

                            else
                            {
                              updated = -65541;
                            }

LABEL_920:
                            v526 = mDNSLogCategory_mDNS;
                            if (mDNS_SensitiveLoggingEnableCount)
                            {
                              v527 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                            }

                            else
                            {
                              v527 = 1;
                            }

                            if (v527)
                            {
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1184;
                              }

                              v528 = *(v382 + 1624);
                              if (v528)
                              {
                                v529 = *(v528 + 2736);
                                if (v529)
                                {
                                  v530 = *(v528 + 2736);
                                  while (1)
                                  {
                                    if (!v530 || (v531 = *v530, v531 > 0x3F))
                                    {
LABEL_933:
                                      v532 = 257;
                                      goto LABEL_1360;
                                    }

                                    if (!*v530)
                                    {
                                      break;
                                    }

                                    v530 += v531 + 1;
                                    if (&v530[-v529] >= 256)
                                    {
                                      goto LABEL_933;
                                    }
                                  }

                                  v532 = (v530 - v529 + 1);
                                }

                                else
                                {
                                  v532 = 0;
                                }
                              }

                              else
                              {
                                v532 = 0;
                                v529 = 0;
                              }

LABEL_1360:
                              v730 = *(v175 + 200);
                              if (!v384)
                              {
                                v731 = "<NONE>";
LABEL_1366:
                                v732 = *(v175 + 188);
                                v1109[0].st_dev = 67110915;
                                *&v1109[0].st_mode = v730;
                                LOWORD(v1109[0].st_ino) = 2160;
                                *(&v1109[0].st_ino + 2) = 1752392040;
                                HIWORD(v1109[0].st_uid) = 1040;
                                v1109[0].st_gid = v532;
                                LOWORD(v1109[0].st_rdev) = 2101;
                                *(&v1109[0].st_rdev + 2) = v529;
                                WORD1(v1109[0].st_atimespec.tv_sec) = 2082;
                                *(&v1109[0].st_atimespec.tv_sec + 4) = v731;
                                WORD2(v1109[0].st_atimespec.tv_nsec) = 1024;
                                *(&v1109[0].st_atimespec.tv_nsec + 6) = v732;
                                WORD1(v1109[0].st_mtimespec.tv_sec) = 2082;
                                *(&v1109[0].st_mtimespec.tv_sec + 4) = v175 + 256;
                                WORD2(v1109[0].st_mtimespec.tv_nsec) = 1024;
                                *(&v1109[0].st_mtimespec.tv_nsec + 6) = updated;
                                v696 = v1109;
                                v697 = v526;
                                v698 = OS_LOG_TYPE_DEFAULT;
                                v699 = "[R%u] DNSServiceRemoveRecord(%{sensitive, mask.hash, mdnsresponder:domain_name}.*P, %{public}s) PID[%d](%{public}s): %d";
                                v700 = 66;
                                goto LABEL_1607;
                              }
                            }

                            else
                            {
                              v526 = mDNSLogCategory_mDNS_redacted;
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1184;
                              }

                              v534 = *(v382 + 1624);
                              if (v534)
                              {
                                v529 = *(v534 + 2736);
                                if (v529)
                                {
                                  v535 = *(v534 + 2736);
                                  while (1)
                                  {
                                    if (!v535 || (v536 = *v535, v536 > 0x3F))
                                    {
LABEL_942:
                                      v532 = 257;
                                      goto LABEL_1363;
                                    }

                                    if (!*v535)
                                    {
                                      break;
                                    }

                                    v535 += v536 + 1;
                                    if (&v535[-v529] >= 256)
                                    {
                                      goto LABEL_942;
                                    }
                                  }

                                  v532 = (v535 - v529 + 1);
                                }

                                else
                                {
                                  v532 = 0;
                                }
                              }

                              else
                              {
                                v532 = 0;
                                v529 = 0;
                              }

LABEL_1363:
                              v730 = *(v175 + 200);
                              if (!v384)
                              {
                                v731 = "<NONE>";
                                goto LABEL_1366;
                              }
                            }

                            v731 = DNSTypeName(v384);
                            goto LABEL_1366;
                          }

                          v499 = (SubordinateRequest + 176);
                          v500 = *(SubordinateRequest + 176);
                          v501 = *(SubordinateRequest + 240);
                          if (!v500)
                          {
LABEL_987:
                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceRemoveRecord(%u) not found", *(SubordinateRequest + 184), v501);
                            updated = -65541;
                            goto LABEL_1184;
                          }

                          if (*(v500 + 56) != v501)
                          {
                            do
                            {
                              v502 = v500;
                              v500 = *(v500 + 8);
                              if (!v500)
                              {
                                goto LABEL_987;
                              }
                            }

                            while (*(v500 + 56) != v501);
                            v499 = (v502 + 8);
                          }

                          *v499 = *(v500 + 8);
                          v503 = *(v500 + 24);
                          v504 = mDNSPlatformInterfaceIndexfromInterfaceID(mDNSStorage, *(v503 + 32), 1);
                          v505 = mDNS_DomainNameFNV1aHash(*(v503 + 40));
                          shouldLogFullRequestInfo = _shouldLogFullRequestInfo((v500 + 48), (v500 + 52));
                          v1109[0].st_ino = 0;
                          *&v1109[0].st_dev = 0;
                          clock_gettime(_CLOCK_MONOTONIC_RAW, v1109);
                          v507 = v1109[0].st_dev - *(v500 + 48);
                          if (shouldLogFullRequestInfo)
                          {
                            v508 = *(v503 + 20);
                            if (v508 >= 0x201)
                            {
                              v508 = malloc_type_malloc(v508, 0x1C443E3AuLL);
                              if (!v508)
                              {
                                goto LABEL_1949;
                              }

                              v509 = v508;
                              LODWORD(v508) = *(v503 + 20);
                              v510 = v508;
                              v511 = v509;
                            }

                            else
                            {
                              v509 = 0;
                              v510 = 512;
                              v511 = &word_1001787D0;
                            }

                            if (v508)
                            {
                              *&v1111[0].sa_len = 0;
                              LOWORD(__src[0]) = 0;
                              RDataBytesPointer = ResourceRecordGetRDataBytesPointer(v503 + 8, v511, v510, __src, v1111);
                              if (!*&v1111[0].sa_len)
                              {
                                v1007 = RDataBytesPointer;
                                v1018 = v504;
                                if (LOWORD(__src[0]) >= 0x1FFuLL)
                                {
                                  v615 = LOWORD(__src[0]) + 2;
                                  v614 = malloc_type_malloc(LOWORD(__src[0]) + 2, 0x1C443E3AuLL);
                                  if (!v614)
                                  {
                                    goto LABEL_1949;
                                  }

                                  v1006 = v614;
                                }

                                else
                                {
                                  v614 = 0;
                                  v615 = 512;
                                  v1006 = word_1001789D0;
                                }

                                logg = v614;
                                v746 = mDNSLogCategory_mDNS;
                                if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                                {
                                  if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_1723;
                                  }

                                  v1005 = v505;
                                  v999 = *(v500 + 56);
                                  v1000 = *(v175 + 200);
                                  v1003 = *(v175 + 188);
                                  v752 = *(v503 + 40);
                                  v753 = v752;
                                  while (1)
                                  {
                                    if (!v753 || (v754 = *v753, v754 > 0x3F))
                                    {
LABEL_1450:
                                      v755 = 257;
                                      goto LABEL_1713;
                                    }

                                    if (!*v753)
                                    {
                                      break;
                                    }

                                    v753 += v754 + 1;
                                    if (&v753[-v752] >= 256)
                                    {
                                      goto LABEL_1450;
                                    }
                                  }

                                  v755 = (v753 - v752 + 1);
LABEL_1713:
                                  v997 = v755;
                                  v880 = *(v503 + 12);
                                  v881 = LOWORD(__src[0]);
                                  v882 = LOWORD(__src[0]) + 2;
                                  v994 = v880;
                                  if (v882 <= v615)
                                  {
                                    v883 = v1006;
                                    *v1006 = __rev16(v880);
                                    memcpy(v1006 + 1, v1007, v881);
                                  }

                                  else
                                  {
                                    v883 = 0;
                                  }

                                  v1109[0].st_dev = 67112451;
                                  *&v1109[0].st_mode = v1000;
                                  LOWORD(v1109[0].st_ino) = 1024;
                                  *(&v1109[0].st_ino + 2) = v999;
                                  HIWORD(v1109[0].st_ino) = 1024;
                                  v1109[0].st_uid = v1018;
                                  LOWORD(v1109[0].st_gid) = 1024;
                                  *(&v1109[0].st_gid + 2) = v1003;
                                  HIWORD(v1109[0].st_rdev) = 2082;
                                  *(&v1109[0].st_rdev + 1) = v175 + 256;
                                  WORD2(v1109[0].st_atimespec.tv_sec) = 1024;
                                  *(&v1109[0].st_atimespec.tv_sec + 6) = v507;
                                  WORD1(v1109[0].st_atimespec.tv_nsec) = 2160;
                                  *(&v1109[0].st_atimespec.tv_nsec + 4) = 1752392040;
                                  WORD2(v1109[0].st_mtimespec.tv_sec) = 1040;
                                  *(&v1109[0].st_mtimespec.tv_sec + 6) = v997;
                                  WORD1(v1109[0].st_mtimespec.tv_nsec) = 2101;
                                  *(&v1109[0].st_mtimespec.tv_nsec + 4) = v752;
                                  WORD2(v1109[0].st_ctimespec.tv_sec) = 1024;
                                  *(&v1109[0].st_ctimespec.tv_sec + 6) = v1005;
                                  WORD1(v1109[0].st_ctimespec.tv_nsec) = 1024;
                                  HIDWORD(v1109[0].st_ctimespec.tv_nsec) = v994;
                                  LOWORD(v1109[0].st_birthtimespec.tv_sec) = 2160;
                                  *(&v1109[0].st_birthtimespec.tv_sec + 2) = 1752392040;
                                  WORD1(v1109[0].st_birthtimespec.tv_nsec) = 1040;
                                  HIDWORD(v1109[0].st_birthtimespec.tv_nsec) = v882;
                                  LOWORD(v1109[0].st_size) = 2101;
                                  *(&v1109[0].st_size + 2) = v883;
                                  v884 = v746;
                                }

                                else
                                {
                                  v747 = mDNSLogCategory_mDNS_redacted;
                                  if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_1723;
                                  }

                                  v1002 = v747;
                                  v1004 = v505;
                                  v996 = *(v500 + 56);
                                  v998 = *(v175 + 200);
                                  v1001 = *(v175 + 188);
                                  v748 = *(v503 + 40);
                                  v749 = v748;
                                  while (1)
                                  {
                                    if (!v749 || (v750 = *v749, v750 > 0x3F))
                                    {
LABEL_1443:
                                      v751 = 257;
                                      goto LABEL_1718;
                                    }

                                    if (!*v749)
                                    {
                                      break;
                                    }

                                    v749 += v750 + 1;
                                    if (&v749[-v748] >= 256)
                                    {
                                      goto LABEL_1443;
                                    }
                                  }

                                  v751 = (v749 - v748 + 1);
LABEL_1718:
                                  v995 = v751;
                                  v885 = *(v503 + 12);
                                  v886 = LOWORD(__src[0]);
                                  v887 = LOWORD(__src[0]) + 2;
                                  if (v887 <= v615)
                                  {
                                    v888 = v1006;
                                    *v1006 = __rev16(v885);
                                    memcpy(v1006 + 1, v1007, v886);
                                  }

                                  else
                                  {
                                    v888 = 0;
                                  }

                                  v1109[0].st_dev = 67112451;
                                  *&v1109[0].st_mode = v998;
                                  LOWORD(v1109[0].st_ino) = 1024;
                                  *(&v1109[0].st_ino + 2) = v996;
                                  HIWORD(v1109[0].st_ino) = 1024;
                                  v1109[0].st_uid = v1018;
                                  LOWORD(v1109[0].st_gid) = 1024;
                                  *(&v1109[0].st_gid + 2) = v1001;
                                  HIWORD(v1109[0].st_rdev) = 2082;
                                  *(&v1109[0].st_rdev + 1) = v175 + 256;
                                  WORD2(v1109[0].st_atimespec.tv_sec) = 1024;
                                  *(&v1109[0].st_atimespec.tv_sec + 6) = v507;
                                  WORD1(v1109[0].st_atimespec.tv_nsec) = 2160;
                                  *(&v1109[0].st_atimespec.tv_nsec + 4) = 1752392040;
                                  WORD2(v1109[0].st_mtimespec.tv_sec) = 1040;
                                  *(&v1109[0].st_mtimespec.tv_sec + 6) = v995;
                                  WORD1(v1109[0].st_mtimespec.tv_nsec) = 2101;
                                  *(&v1109[0].st_mtimespec.tv_nsec + 4) = v748;
                                  WORD2(v1109[0].st_ctimespec.tv_sec) = 1024;
                                  *(&v1109[0].st_ctimespec.tv_sec + 6) = v1004;
                                  WORD1(v1109[0].st_ctimespec.tv_nsec) = 1024;
                                  HIDWORD(v1109[0].st_ctimespec.tv_nsec) = v885;
                                  LOWORD(v1109[0].st_birthtimespec.tv_sec) = 2160;
                                  *(&v1109[0].st_birthtimespec.tv_sec + 2) = 1752392040;
                                  WORD1(v1109[0].st_birthtimespec.tv_nsec) = 1040;
                                  HIDWORD(v1109[0].st_birthtimespec.tv_nsec) = v887;
                                  LOWORD(v1109[0].st_size) = 2101;
                                  *(&v1109[0].st_size + 2) = v888;
                                  v884 = v1002;
                                }

                                _os_log_impl(&_mh_execute_header, v884, OS_LOG_TYPE_DEFAULT, "[R%u->Rec%u] DNSServiceRemoveRecord -- ifindex: %d, client pid: %d (%{public}s), duration: %{mdns:time_duration}u, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", v1109, 0x6Au);
LABEL_1723:
                                if (logg)
                                {
                                  free(logg);
                                }
                              }
                            }

                            else
                            {
                              v701 = mDNSLogCategory_mDNS;
                              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                              {
                                if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1725;
                                }

                                v702 = *(v175 + 200);
                                v703 = *(v500 + 56);
                                v704 = *(v175 + 188);
                                v705 = *(v503 + 40);
                                v733 = v705;
                                while (1)
                                {
                                  if (!v733 || (v734 = *v733, v734 > 0x3F))
                                  {
LABEL_1373:
                                    v708 = 257;
                                    goto LABEL_1617;
                                  }

                                  if (!*v733)
                                  {
                                    break;
                                  }

                                  v733 += v734 + 1;
                                  if (&v733[-v705] >= 256)
                                  {
                                    goto LABEL_1373;
                                  }
                                }

                                v708 = (v733 - v705 + 1);
                              }

                              else
                              {
                                v701 = mDNSLogCategory_mDNS_redacted;
                                if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1725;
                                }

                                v702 = *(v175 + 200);
                                v703 = *(v500 + 56);
                                v704 = *(v175 + 188);
                                v705 = *(v503 + 40);
                                v706 = v705;
                                while (1)
                                {
                                  if (!v706 || (v707 = *v706, v707 > 0x3F))
                                  {
LABEL_1306:
                                    v708 = 257;
                                    goto LABEL_1617;
                                  }

                                  if (!*v706)
                                  {
                                    break;
                                  }

                                  v706 += v707 + 1;
                                  if (&v706[-v705] >= 256)
                                  {
                                    goto LABEL_1306;
                                  }
                                }

                                v708 = (v706 - v705 + 1);
                              }

LABEL_1617:
                              v836 = *(v503 + 12);
                              v1109[0].st_dev = 67111683;
                              *&v1109[0].st_mode = v702;
                              LOWORD(v1109[0].st_ino) = 1024;
                              *(&v1109[0].st_ino + 2) = v703;
                              HIWORD(v1109[0].st_ino) = 1024;
                              v1109[0].st_uid = v504;
                              LOWORD(v1109[0].st_gid) = 1024;
                              *(&v1109[0].st_gid + 2) = v704;
                              HIWORD(v1109[0].st_rdev) = 2082;
                              *(&v1109[0].st_rdev + 1) = v175 + 256;
                              WORD2(v1109[0].st_atimespec.tv_sec) = 1024;
                              *(&v1109[0].st_atimespec.tv_sec + 6) = v507;
                              WORD1(v1109[0].st_atimespec.tv_nsec) = 2160;
                              *(&v1109[0].st_atimespec.tv_nsec + 4) = 1752392040;
                              WORD2(v1109[0].st_mtimespec.tv_sec) = 1040;
                              *(&v1109[0].st_mtimespec.tv_sec + 6) = v708;
                              WORD1(v1109[0].st_mtimespec.tv_nsec) = 2101;
                              *(&v1109[0].st_mtimespec.tv_nsec + 4) = v705;
                              WORD2(v1109[0].st_ctimespec.tv_sec) = 1024;
                              *(&v1109[0].st_ctimespec.tv_sec + 6) = v505;
                              WORD1(v1109[0].st_ctimespec.tv_nsec) = 1024;
                              HIDWORD(v1109[0].st_ctimespec.tv_nsec) = v836;
                              _os_log_impl(&_mh_execute_header, v701, OS_LOG_TYPE_DEFAULT, "[R%u->Rec%u] DNSServiceRemoveRecord -- ifindex: %d, client pid: %d (%{public}s), duration: %{mdns:time_duration}u, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), type: %{mdns:rrtype}d, rdata: <none>", v1109, 0x50u);
                            }

LABEL_1725:
                            if (v509)
                            {
                              free(v509);
                            }

                            goto LABEL_1727;
                          }

                          v609 = mDNSLogCategory_mDNS;
                          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                          {
                            if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
LABEL_1321:
                              v715 = *(v175 + 200);
                              v716 = *(v500 + 56);
                              v1109[0].st_dev = 67109888;
                              *&v1109[0].st_mode = v715;
                              LOWORD(v1109[0].st_ino) = 1024;
                              *(&v1109[0].st_ino + 2) = v716;
                              HIWORD(v1109[0].st_ino) = 1024;
                              v1109[0].st_uid = v505;
                              LOWORD(v1109[0].st_gid) = 1024;
                              *(&v1109[0].st_gid + 2) = v507;
                              _os_log_impl(&_mh_execute_header, v609, OS_LOG_TYPE_DEFAULT, "[R%u->Rec%u] DNSServiceRemoveRecord -- name hash: %x, duration: %{mdns:time_duration}u", v1109, 0x1Au);
                            }
                          }

                          else
                          {
                            v609 = mDNSLogCategory_mDNS_redacted;
                            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1321;
                            }
                          }

LABEL_1727:
                          v889 = *(v500 + 24);
                          *(v889 + 112) = 0;
                          if (*(v500 + 60))
                          {
                            internal_stop_advertising_service(v889 + 8, *(v175 + 248), *(v175 + 188));
                            *(v500 + 60) = 0;
                            v889 = *(v500 + 24);
                          }

                          if (mDNS_McastLoggingEnabled)
                          {
                            LogMcastService(v889, v175, 0);
                            v889 = *(v500 + 24);
                          }

                          if (*v500)
                          {
                            v890 = *(v175 + 252);
                            if (v890)
                            {
                              v891 = AWDLInterfaceID == v890 || WiFiAwareInterfaceID == v890;
                            }

                            else
                            {
                              v891 = (*(v175 + 250) >> 4) & 1;
                            }

                            mdns_powerlog_register_record_stop((v175 + 256), *(v889 + 40), *v500, v891);
                            v889 = *(v500 + 24);
                          }

                          updated = mDNS_Deregister(mDNSStorage, v889);
                          if (updated)
                          {
                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: remove_record, mDNS_Deregister: %d", updated);
                            v892 = *(v500 + 24);
                            if (v892)
                            {
                              free(v892);
                            }
                          }

                          v641 = v500;
                          goto LABEL_1175;
                        }
                      }

                      else
                      {
                        v81[10] = 0;
                      }

                      v280 = mDNSLogCategory_mDNS;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                      {
                        updated = -65540;
                        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_1184;
                        }
                      }

                      else
                      {
                        v280 = mDNSLogCategory_mDNS_redacted;
                        updated = -65540;
                        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_1184;
                        }
                      }

                      v281 = *(v81 + 50);
                      v1109[0].st_dev = 67109120;
                      *&v1109[0].st_mode = v281;
                      v179 = v1109;
                      v180 = v280;
                      v181 = OS_LOG_TYPE_DEFAULT;
                      v182 = "[R%u] DNSServiceRemoveRecord(unreadable parameters)";
                      goto LABEL_1055;
                    case 4:
                      v158 = 0;
                      v159 = 0;
                      v161 = v81[10];
                      v160 = v81[11];
                      if (v161 && (v161 + 1) <= v160)
                      {
                        v158 = bswap32(*v161);
                        v159 = v161 + 1;
                      }

                      v162 = 0;
                      v163 = 0;
                      v81[10] = v159;
                      if ((v158 & 0x80) != 0)
                      {
                        v164 = 4;
                      }

                      else
                      {
                        v164 = 1;
                      }

                      if (v159 && (v159 + 1) <= v160)
                      {
                        v162 = bswap32(*v159);
                        v163 = v159 + 1;
                      }

                      v81[10] = v163;
                      v165 = mDNSPlatformInterfaceIDfromInterfaceIndex(v162);
                      v166 = v165;
                      if (v162)
                      {
                        updated = -65540;
                        if (!v165)
                        {
                          goto LABEL_1184;
                        }
                      }

                      if (!v81[10])
                      {
                        v367 = mDNSLogCategory_Default;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                        {
                          updated = -65540;
                          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_1184;
                          }
                        }

                        else
                        {
                          v367 = mDNSLogCategory_Default_redacted;
                          updated = -65540;
                          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_1184;
                          }
                        }

                        v368 = *(v81 + 50);
                        v1109[0].st_dev = 67109120;
                        *&v1109[0].st_mode = v368;
                        v179 = v1109;
                        v180 = v367;
                        v181 = OS_LOG_TYPE_ERROR;
                        v182 = "[R%u] DNSServiceEnumerateDomains(unreadable parameters)";
                        goto LABEL_1055;
                      }

                      v167 = v81[15];
                      if (!v167)
                      {
                        v168 = malloc_type_calloc(1uLL, 0x830uLL, 0x7BE2022BuLL);
                        if (!v168)
                        {
                          goto LABEL_1949;
                        }

                        v167 = v168;
                        v81[15] = v168;
                      }

                      *(v81 + 62) = v158;
                      *(v81 + 63) = v162;
                      *v167 = v158 & 0x80;
                      v167[23] = v81;
                      v167[110] = v81;
                      if ((v158 & 0x80) == 0)
                      {
                        v167[197] = v81;
                      }

                      if (v166)
                      {
                        v169 = v166;
                      }

                      else
                      {
                        v169 = -2;
                      }

                      if (mDNS_LoggingEnabled == 1)
                      {
                        v170 = "kDNSServiceFlagsRegistrationDomains";
                        if ((v158 & 0x80) == 0)
                        {
                          v170 = "<<Unknown>>";
                        }

                        if ((v158 & 0x40) != 0)
                        {
                          v170 = "kDNSServiceFlagsBrowseDomains";
                        }

                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceEnumerateDomains(%X=%s)", *(v81 + 46), v158, v170);
                      }

                      Domains = mDNS_GetDomains((v167 + 1), (v158 >> 7) & 3, 0, v169, enum_result_callback, v81);
                      if (Domains)
                      {
                        goto LABEL_294;
                      }

                      v380 = mDNS_GetDomains((v167 + 88), v164, 0, v169, enum_result_callback, v81);
                      if (v380)
                      {
                        updated = v380;
                        v381 = (v167 + 1);
LABEL_679:
                        mDNS_StopQuery(mDNSStorage, v381);
                        goto LABEL_1184;
                      }

                      if ((v158 & 0x80) != 0)
                      {
                        v81[14] = enum_termination_callback;
                        if (mDNS_LoggingEnabled == 1)
                        {
                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceEnumerateDomains Start WAB Registration PID[%d](%s)", *(v81 + 46), *(v81 + 47), v81 + 256);
                        }

                        v559 = 4;
                      }

                      else
                      {
                        v515 = mDNS_GetDomains((v167 + 175), 2, 0, v169, enum_result_callback, v81);
                        if (v515)
                        {
                          updated = v515;
                          mDNS_StopQuery(mDNSStorage, (v167 + 1));
                          v381 = (v167 + 88);
                          goto LABEL_679;
                        }

                        v81[14] = enum_termination_callback;
                        if (mDNS_LoggingEnabled == 1)
                        {
                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceEnumerateDomains Start WAB Browse PID[%d](%s)", *(v81 + 46), *(v81 + 47), v81 + 256);
                        }

                        v559 = 3;
                      }

                      uDNS_StartWABQueries(v559);
                      goto LABEL_671;
                    case 5:
                      v121 = 0;
                      v122 = 0;
                      v123 = v81[10];
                      if (v123)
                      {
                        v124 = v81[11];
                        v125 = 0;
                        if ((v123 + 1) <= v124)
                        {
                          v125 = 0;
                          v121 = 0;
                          v122 = bswap32(*v123);
                          v81[10] = v123 + 1;
                          if (v123 != -4 && (v123 + 2) <= v124)
                          {
                            v125 = bswap32(v123[1]);
                            v121 = v123 + 2;
                          }
                        }
                      }

                      else
                      {
                        v125 = 0;
                      }

                      v81[10] = v121;
                      if (v81[16])
                      {
                        goto LABEL_520;
                      }

                      v306 = malloc_type_calloc(1uLL, 0x660uLL, 0x90D8FF18uLL);
                      if (!v306)
                      {
                        goto LABEL_1949;
                      }

                      v81[16] = v306;
LABEL_520:
                      if (v125 == -3)
                      {
                        if (mDNS_LoggingEnabled == 1)
                        {
                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handle_regservice_request: mapping kDNSServiceInterfaceIndexP2P to kDNSServiceInterfaceIndexAny + kDNSServiceFlagsIncludeP2P", *&v10.tv_sec);
                        }

                        v125 = 0;
                        v122 |= 0x20000u;
                      }

                      v307 = mDNSPlatformInterfaceIDfromInterfaceIndex(v125);
                      v308 = v307;
                      if (!v125)
                      {
                        goto LABEL_703;
                      }

                      v309 = 0uLL;
                      if (v307)
                      {
                        goto LABEL_704;
                      }

                      if (v125 == 0 || v125 >= 0xFFFFFFFC)
                      {
                        updated = -65540;
                        if (mDNS_LoggingEnabled != 1)
                        {
                          goto LABEL_1184;
                        }

                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handle_regservice_request: bad interfaceIndex %d", 0.0);
                        goto LABEL_1183;
                      }

                      v308 = v125;
                      if (mDNS_LoggingEnabled == 1)
                      {
                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handle_regservice_request: registration pending for interface index %d", v125);
LABEL_703:
                        v309 = 0uLL;
                      }

LABEL_704:
                      v1108 = v309;
                      v1107 = v309;
                      v1106 = v309;
                      v1105 = v309;
                      v1104 = v309;
                      v1103 = v309;
                      v1102 = v309;
                      v1101 = v309;
                      v1100 = v309;
                      v1099 = v309;
                      v1098 = v309;
                      v1097 = v309;
                      v1096 = v309;
                      *&buf[32] = v309;
                      *&buf[16] = v309;
                      *buf = v309;
                      bzero(v1109, 0x3F1uLL);
                      bzero(v1111, 0x3F1uLL);
                      bzero(__src, 0x3F1uLL);
                      v1094 = 0u;
                      v1093 = 0u;
                      v1092 = 0u;
                      v1091 = 0u;
                      v1090 = 0u;
                      v1089 = 0u;
                      v1088 = 0u;
                      v1087 = 0u;
                      v1086 = 0u;
                      v1085 = 0u;
                      memset(aBlock, 0, sizeof(aBlock));
                      v1083 = 0u;
                      v1082 = 0u;
                      v1081 = 0u;
                      v1080 = 0u;
                      v1079 = 0u;
                      v1078 = 0u;
                      v1077 = 0u;
                      v1076 = 0u;
                      v1075 = 0u;
                      v1074 = 0u;
                      v1068 = 0u;
                      v1069 = 0u;
                      v1070 = 0u;
                      v1071 = 0u;
                      v1073 = 0u;
                      v1072 = 0u;
                      if (!v81[10])
                      {
                        goto LABEL_1182;
                      }

                      v389 = v81[11];
                      v390 = buf;
                      while (1)
                      {
                        v391 = v81[10];
                        if (v391 >= v389 || v390 >= v1109)
                        {
                          break;
                        }

                        v81[10] = v391 + 1;
                        v393 = *v391;
                        LOBYTE(v390->st_dev) = v393;
                        v390 = (v390 + 1);
                        if (!v393)
                        {
                          if (v81[10])
                          {
                            v394 = v81[11];
                            v390 = __src;
                            do
                            {
                              v395 = v81[10];
                              if (v395 >= v394 || v390 >= v1067)
                              {
                                v476 = v1067;
                                goto LABEL_1177;
                              }

                              v81[10] = v395 + 1;
                              v397 = *v395;
                              LOBYTE(v390->st_dev) = v397;
                              v390 = (v390 + 1);
                            }

                            while (v397);
                            if (v81[10])
                            {
                              v398 = v81[11];
                              v390 = v1109;
                              do
                              {
                                v399 = v81[10];
                                if (v399 >= v398 || v390 >= (&v1109[7].st_dev + 1))
                                {
                                  v476 = (&v1109[7].st_dev + 1);
                                  goto LABEL_1177;
                                }

                                v81[10] = v399 + 1;
                                v401 = *v399;
                                LOBYTE(v390->st_dev) = v401;
                                v390 = (v390 + 1);
                              }

                              while (v401);
                              if (v81[10])
                              {
                                v402 = v81[11];
                                v390 = v1111;
                                while (1)
                                {
                                  v403 = v81[10];
                                  if (v403 >= v402 || v390 >= v1123)
                                  {
                                    break;
                                  }

                                  v81[10] = v403 + 1;
                                  v405 = *v403;
                                  LOBYTE(v390->st_dev) = v405;
                                  v390 = (v390 + 1);
                                  if (!v405)
                                  {
                                    v406 = 0;
                                    *(v81 + 62) = v122;
                                    *(v81 + 63) = v125;
                                    v407 = v81[16];
                                    *v407 = v308;
                                    *(v407 + 1624) = 0;
                                    *(v407 + 8) = 0;
                                    *(v407 + 16) = 0;
                                    v408 = (v407 + 90);
                                    while (1)
                                    {
                                      v409 = *(__src + v406);
                                      *v408 = v409;
                                      if (!v409)
                                      {
                                        break;
                                      }

                                      ++v408;
                                      if (++v406 == 1008)
                                      {
                                        *v408 = 0;
                                        break;
                                      }
                                    }

                                    v411 = v81[10];
                                    v410 = v81[11];
                                    if ((v411 + 2) <= v410)
                                    {
                                      v412 = 0;
                                      v81[10] = v411 + 1;
                                      *(v407 + 24) = *v411;
                                      v728 = v81[10];
                                      v81[10] = v728 + 1;
                                      *(v407 + 25) = *v728;
                                      v729 = v81[10];
                                      v410 = v81[11];
                                      if (v729 && (v729 + 1) <= v410)
                                      {
                                        v413 = __rev16(*v729);
                                        v412 = v729 + 1;
                                      }

                                      else
                                      {
                                        v413 = 0;
                                      }
                                    }

                                    else
                                    {
                                      v412 = 0;
                                      v413 = 0;
                                      v81[10] = 0;
                                    }

                                    if (v412 + v413 <= v410)
                                    {
                                      v756 = v412;
                                    }

                                    else
                                    {
                                      v756 = 0;
                                    }

                                    *(v407 + 8) = v413;
                                    if (v412 + v413 > v410 || v412 == 0)
                                    {
                                      v758 = 0;
                                    }

                                    else
                                    {
                                      v758 = v412 + v413;
                                    }

                                    v81[10] = v758;
                                    if (!v758)
                                    {
                                      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceRegister(unreadable parameters)", 0.0);
                                      goto LABEL_1183;
                                    }

                                    if (!v413)
                                    {
                                      goto LABEL_1467;
                                    }

                                    v759 = malloc_type_malloc(v413, 0x283C8CD1uLL);
                                    if (v759)
                                    {
                                      *(v407 + 16) = v759;
                                      memcpy(v759, v756, *(v407 + 8));
LABEL_1467:
                                      v760 = ChopSubTypes((v407 + 90));
                                      if (v760 < 0)
                                      {
                                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: handle_regservice_request - ChopSubTypes failed %s");
                                        goto LABEL_1831;
                                      }

                                      *(v407 + 1616) = v760;
                                      if (!*(v407 + 90) || (v761 = v407 + 1099, *(v407 + 1099) = 0, !AppendDNSNameString((v407 + 1099), (v407 + 90))))
                                      {
                                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: handle_regservice_request - type_as_string bad %s");
                                        goto LABEL_1831;
                                      }

                                      v762 = buf[0];
                                      if (buf[0])
                                      {
                                        if ((v122 & 8) != 0)
                                        {
                                          v765 = (v407 + 26);
                                          v766 = (v407 + 27);
                                        }

                                        else
                                        {
                                          v763 = buf;
                                          v764 = strlen(buf);
                                          buf[TruncateUTF8ToLength(buf, v764, 0x3Fu)] = 0;
                                          v762 = buf[0];
                                          v765 = (v407 + 26);
                                          v766 = (v407 + 27);
                                          if (!buf[0])
                                          {
                                            goto LABEL_1667;
                                          }
                                        }

                                        v763 = buf;
                                        do
                                        {
                                          *v766++ = v762;
                                          v864 = *++v763;
                                          v762 = v864;
                                          if (v864)
                                          {
                                            v865 = v766 >= v407 + 90;
                                          }

                                          else
                                          {
                                            v865 = 1;
                                          }
                                        }

                                        while (!v865);
LABEL_1667:
                                        *v765 = v766 + ~v765;
                                        v835 = *v763;
                                        if (*v763)
                                        {
                                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: handle_regservice_request - name bad %s");
                                          goto LABEL_1831;
                                        }
                                      }

                                      else
                                      {
                                        v832 = xmmword_10016FA40;
                                        v833 = *algn_10016FA50;
                                        v834 = xmmword_10016FA60;
                                        *(v407 + 74) = unk_10016FA70;
                                        *(v407 + 58) = v834;
                                        *(v407 + 42) = v833;
                                        *(v407 + 26) = v832;
                                        v835 = 1;
                                      }

                                      *(v407 + 1612) = v835;
                                      if (LOBYTE(v1109[0].st_dev))
                                      {
                                        *(v407 + 1355) = 0;
                                        aBlock[0] = 0;
                                        if (!AppendDNSNameString(aBlock, v1109))
                                        {
                                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: handle_regservice_request - domain bad %s");
                                          goto LABEL_1831;
                                        }
                                      }

                                      else
                                      {
                                        *(v407 + 1355) = 1;
                                        aBlock[0] = 0;
                                        AppendDNSNameString(aBlock, "local.");
                                      }

                                      if (ConstructServiceName(&v1068, (v407 + 26), (v407 + 1099), aBlock))
                                      {
                                        *(v407 + 1356) = 0;
                                        if (AppendDNSNameString((v407 + 1356), v1111))
                                        {
                                          *(v407 + 1613) = (v122 & 8) == 0;
                                          *(v407 + 1614) = (v122 & 0x200) != 0;
                                          if (*(v407 + 24))
                                          {
                                            v866 = CountExistingRegistrations(&v1068, *(v407 + 24));
                                            if (v866)
                                            {
                                              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Client application[%d](%s) registered %d identical instances of service %##s port %u.", *(v81 + 47), v81 + 32, (v866 + 1), &v1068, bswap32(*(v407 + 24)) >> 16);
                                            }
                                          }

                                          memset(v1052, 0, sizeof(v1052));
                                          ConstructServiceName(v1052, (v407 + 26), (v407 + 1099), aBlock);
                                          v867 = _shouldLogFullRequestInfo(v81 + 51, v81 + 52);
                                          v868 = mDNSLogCategory_mDNS;
                                          if (mDNS_SensitiveLoggingEnableCount)
                                          {
                                            v869 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                                          }

                                          else
                                          {
                                            v869 = 1;
                                          }

                                          v870 = v869;
                                          if (v867)
                                          {
                                            if (v870)
                                            {
                                              if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                              {
                                                logi = *(v81 + 50);
                                                v871 = (v407 + 1099);
                                                while (1)
                                                {
                                                  if (!v871 || (v872 = *v871, v872 > 0x3F))
                                                  {
LABEL_1692:
                                                    v873 = 257;
                                                    goto LABEL_1866;
                                                  }

                                                  if (!*v871)
                                                  {
                                                    break;
                                                  }

                                                  v871 += v872 + 1;
                                                  if (&v871[-v761] >= 256)
                                                  {
                                                    goto LABEL_1692;
                                                  }
                                                }

                                                v873 = (v871 - v761 + 1);
LABEL_1866:
                                                v1021 = v873;
                                                v950 = aBlock;
                                                while (1)
                                                {
                                                  if (!v950 || (v951 = *v950, v951 > 0x3F))
                                                  {
LABEL_1871:
                                                    v952 = 257;
                                                    goto LABEL_1880;
                                                  }

                                                  if (!*v950)
                                                  {
                                                    break;
                                                  }

                                                  v950 += v951 + 1;
                                                  if (v950 - aBlock >= 256)
                                                  {
                                                    goto LABEL_1871;
                                                  }
                                                }

                                                v952 = (v950 - aBlock + 1);
LABEL_1880:
                                                v1011 = v952;
                                                v956 = bswap32(*(v407 + 24)) >> 16;
                                                v958 = *(v81 + 62);
                                                v957 = *(v81 + 63);
                                                v959 = *(v81 + 47);
                                                v960 = mDNS_DomainNameFNV1aHash(v1052);
                                                *v1035 = 67112195;
                                                *&v1035[4] = logi;
                                                LOWORD(v1036) = 2160;
                                                *(&v1036 + 2) = 1752392040;
                                                WORD5(v1036) = 1040;
                                                HIDWORD(v1036) = v1021;
                                                *v1037 = 2101;
                                                *&v1037[2] = v407 + 1099;
                                                *&v1037[10] = 2160;
                                                *&v1037[12] = 1752392040;
                                                *&v1037[20] = 1040;
                                                *&v1037[22] = v1011;
                                                v1038 = 2101;
                                                v1039 = aBlock;
                                                v1040 = 1024;
                                                v1041 = v956;
                                                v1042 = 1024;
                                                v1043 = v958;
                                                v1044 = 1024;
                                                v1045 = v957;
                                                v1046 = 1024;
                                                v1047 = v959;
                                                v1048 = 2082;
                                                v1049 = v81 + 32;
                                                v1050 = 1024;
                                                v1051 = v960;
                                                v947 = v868;
                                                v948 = "[R%u] DNSServiceRegister START -- service type: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, port: %u, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
                                                goto LABEL_1883;
                                              }

LABEL_1885:
                                              v81[14] = 0;
                                              if (_os_feature_enabled_impl() && (*(v407 + 1355) || IsLocalDomain(aBlock)))
                                              {
                                                updated = _handle_regservice_request_with_trust(v81, aBlock);
                                                if (updated == -65555)
                                                {
                                                  v966 = *(v407 + 16);
                                                  if (v966)
                                                  {
                                                    free(v966);
                                                    *(v407 + 16) = 0;
                                                  }

                                                  updated = -65555;
                                                }

                                                goto LABEL_1184;
                                              }

                                              Domains = _handle_regservice_request_start(v81, aBlock);
LABEL_294:
                                              updated = Domains;
                                              goto LABEL_1184;
                                            }

                                            logj = mDNSLogCategory_mDNS_redacted;
                                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                            {
                                              goto LABEL_1885;
                                            }

                                            v1020 = *(v81 + 50);
                                            v942 = (v407 + 1099);
                                            while (1)
                                            {
                                              if (!v942 || (v943 = *v942, v943 > 0x3F))
                                              {
LABEL_1861:
                                                v944 = 257;
                                                goto LABEL_1873;
                                              }

                                              if (!*v942)
                                              {
                                                break;
                                              }

                                              v942 += v943 + 1;
                                              if (&v942[-v761] >= 256)
                                              {
                                                goto LABEL_1861;
                                              }
                                            }

                                            v944 = (v942 - v761 + 1);
LABEL_1873:
                                            v1010 = v944;
                                            v953 = aBlock;
                                            while (1)
                                            {
                                              if (!v953 || (v954 = *v953, v954 > 0x3F))
                                              {
LABEL_1878:
                                                v955 = 257;
                                                goto LABEL_1882;
                                              }

                                              if (!*v953)
                                              {
                                                break;
                                              }

                                              v953 += v954 + 1;
                                              if (v953 - aBlock >= 256)
                                              {
                                                goto LABEL_1878;
                                              }
                                            }

                                            v955 = (v953 - aBlock + 1);
LABEL_1882:
                                            v961 = bswap32(*(v407 + 24)) >> 16;
                                            v963 = *(v81 + 62);
                                            v962 = *(v81 + 63);
                                            v964 = *(v81 + 47);
                                            v965 = mDNS_DomainNameFNV1aHash(v1052);
                                            *v1035 = 67112195;
                                            *&v1035[4] = v1020;
                                            LOWORD(v1036) = 2160;
                                            *(&v1036 + 2) = 1752392040;
                                            WORD5(v1036) = 1040;
                                            HIDWORD(v1036) = v1010;
                                            *v1037 = 2101;
                                            *&v1037[2] = v407 + 1099;
                                            *&v1037[10] = 2160;
                                            *&v1037[12] = 1752392040;
                                            *&v1037[20] = 1040;
                                            *&v1037[22] = v955;
                                            v1038 = 2101;
                                            v1039 = aBlock;
                                            v1040 = 1024;
                                            v1041 = v961;
                                            v1042 = 1024;
                                            v1043 = v963;
                                            v1044 = 1024;
                                            v1045 = v962;
                                            v1046 = 1024;
                                            v1047 = v964;
                                            v1048 = 2082;
                                            v1049 = v81 + 32;
                                            v1050 = 1024;
                                            v1051 = v965;
                                            v947 = logj;
                                            v948 = "[R%u] DNSServiceRegister START -- service type: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, port: %u, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
LABEL_1883:
                                            v949 = 100;
                                          }

                                          else
                                          {
                                            if (v870)
                                            {
                                              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                              {
                                                goto LABEL_1885;
                                              }
                                            }

                                            else
                                            {
                                              v868 = mDNSLogCategory_mDNS_redacted;
                                              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                              {
                                                goto LABEL_1885;
                                              }
                                            }

                                            v945 = *(v81 + 50);
                                            v946 = mDNS_DomainNameFNV1aHash(v1052);
                                            *v1035 = 67109376;
                                            *&v1035[4] = v945;
                                            LOWORD(v1036) = 1024;
                                            *(&v1036 + 2) = v946;
                                            v947 = v868;
                                            v948 = "[R%u] DNSServiceRegister START -- name hash: %x";
                                            v949 = 14;
                                          }

                                          _os_log_impl(&_mh_execute_header, v947, OS_LOG_TYPE_DEFAULT, v948, v1035, v949);
                                          goto LABEL_1885;
                                        }

                                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: handle_regservice_request - host bad %s");
                                      }

                                      else
                                      {
                                        v991 = (v407 + 1099);
                                        v992 = aBlock;
                                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: handle_regservice_request - Couldn't ConstructServiceName from, “%#s” “%##s” “%##s”", v407 + 26);
                                      }

LABEL_1831:
                                      v938 = *(v407 + 16);
                                      if (v938)
                                      {
                                        free(v938);
                                      }

                                      *(v407 + 16) = 0;
LABEL_1183:
                                      updated = -65540;
                                      goto LABEL_1184;
                                    }

LABEL_1949:
                                    __break(1u);
                                    JUMPOUT(0x10002A5F8);
                                  }
                                }

                                v476 = v1123;
LABEL_1177:
                                v414 = v390 == v476;
LABEL_1178:
                                v642 = v414;
                                *(&v390->st_dev - v642) = 0;
                                v81[10] = 0;
                              }

                              else
                              {
                                v1111[0].sa_len = 0;
                              }
                            }

                            else
                            {
                              LOBYTE(v1109[0].st_dev) = 0;
                            }
                          }

                          else
                          {
                            LOBYTE(__src[0]) = 0;
                          }

LABEL_1182:
                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: handle_regservice_request - Couldn't read name/regtype/domain");
                          goto LABEL_1183;
                        }
                      }

                      v414 = v390 == v1109;
                      goto LABEL_1178;
                    case 6:
                      if (v81[19])
                      {
                        goto LABEL_208;
                      }

                      v115 = malloc_type_calloc(1uLL, 0x118uLL, 0xB2284C25uLL);
                      if (!v115)
                      {
                        goto LABEL_1949;
                      }

                      v81[19] = v115;
LABEL_208:
                      v116 = 0;
                      v117 = 0;
                      v118 = v81[10];
                      if (v118)
                      {
                        v119 = v81[11];
                        v120 = 0;
                        if ((v118 + 1) <= v119)
                        {
                          v120 = 0;
                          v116 = 0;
                          v117 = bswap32(*v118);
                          v81[10] = v118 + 1;
                          if (v118 != -4 && (v118 + 2) <= v119)
                          {
                            v120 = bswap32(v118[1]);
                            v116 = v118 + 2;
                          }
                        }
                      }

                      else
                      {
                        v120 = 0;
                      }

                      v81[10] = v116;
                      v331 = mDNSPlatformInterfaceIDfromInterfaceIndex(v120);
                      v333 = v331;
                      if (!v120 || v331)
                      {
                        goto LABEL_579;
                      }

                      if (v120 >= 0xFFFFFFFC)
                      {
                        updated = -65540;
                        if (mDNS_LoggingEnabled != 1)
                        {
                          goto LABEL_1184;
                        }

                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handle_browse_request: bad interfaceIndex %d", v332);
                        goto LABEL_1183;
                      }

                      v333 = v120;
                      if (mDNS_LoggingEnabled == 1)
                      {
                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handle_browse_request: browse pending for interface index %d", v120);
                      }

LABEL_579:
                      bzero(v1109, 0x3F1uLL);
                      bzero(v1111, 0x3F1uLL);
                      v1065 = 0;
                      v1064 = 0;
                      v1063 = 0;
                      v1062 = 0;
                      v1061 = 0;
                      v1060 = 0;
                      v1059 = 0;
                      v1058 = 0;
                      v1057 = 0;
                      v1056 = 0;
                      v1055 = 0;
                      memset(v1054, 0, sizeof(v1054));
                      memset(__src, 0, sizeof(__src));
                      v1108 = 0u;
                      v1107 = 0u;
                      v1106 = 0u;
                      v1105 = 0u;
                      v1104 = 0u;
                      v1103 = 0u;
                      v1102 = 0u;
                      v1101 = 0u;
                      v1100 = 0u;
                      v1099 = 0u;
                      memset(buf, 0, sizeof(buf));
                      v1096 = 0u;
                      v1098 = 0u;
                      v1097 = 0u;
                      updated = -65540;
                      if (!v81[10])
                      {
                        goto LABEL_1184;
                      }

                      v334 = v81[11];
                      v335 = v1109;
                      while (1)
                      {
                        v336 = v81[10];
                        if (v336 >= v334 || v335 >= (&v1109[7].st_dev + 1))
                        {
                          break;
                        }

                        v81[10] = v336 + 1;
                        v338 = *v336;
                        LOBYTE(v335->st_dev) = v338;
                        v335 = (v335 + 1);
                        if (!v338)
                        {
                          updated = -65540;
                          if (!v81[10])
                          {
                            goto LABEL_1184;
                          }

                          v339 = v81[11];
                          v335 = v1111;
                          while (1)
                          {
                            v340 = v81[10];
                            if (v340 >= v339 || v335 >= v1123)
                            {
                              break;
                            }

                            v81[10] = v340 + 1;
                            v342 = *v340;
                            LOBYTE(v335->st_dev) = v342;
                            v335 = (v335 + 1);
                            if (!v342)
                            {
                              if (!v81[10])
                              {
                                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceBrowse(unreadable parameters)", 0.0);
                                goto LABEL_1183;
                              }

                              _get_signed_data_tlvs(v81, 0);
                              *(v81 + 62) = v117;
                              *(v81 + 63) = v120;
                              LOBYTE(__src[0]) = 0;
                              v343 = ChopSubTypes(v1109);
                              updated = -65540;
                              if (v343 > 1)
                              {
                                goto LABEL_1184;
                              }

                              if (v343 == 1)
                              {
                                v344 = strlen(v1109);
                                updated = -65540;
                                if (!AppendDNSNameString(__src, &v1109[0].st_dev + v344 + 1))
                                {
                                  goto LABEL_1184;
                                }
                              }

                              updated = -65540;
                              if (!LOBYTE(v1109[0].st_dev))
                              {
                                goto LABEL_1184;
                              }

                              updated = -65540;
                              if (!AppendDNSNameString(__src, v1109))
                              {
                                goto LABEL_1184;
                              }

                              buf[0] = 0;
                              updated = -65540;
                              if (!AppendDNSNameString(buf, v1109))
                              {
                                goto LABEL_1184;
                              }

                              if (buf[0] >= 0x10u && !v1111[0].sa_len)
                              {
                                for (i = 0; ; ++i)
                                {
                                  *(&v1111[0].sa_len + i) = aLocal[i];
                                  if (i == 6)
                                  {
                                    break;
                                  }
                                }
                              }

                              v664 = v81[19];
                              *(v664 + 9) = (v117 & 0x400) != 0;
                              *v664 = v333;
                              v665 = __src;
                              while (1)
                              {
                                if (!v665)
                                {
                                  goto LABEL_1495;
                                }

                                v666 = *v665;
                                if (v666 > 0x3F)
                                {
                                  goto LABEL_1495;
                                }

                                if (!*v665)
                                {
                                  break;
                                }

                                v665 = (v665 + v666 + 1);
                                if (v665 - __src > 255)
                                {
                                  goto LABEL_1495;
                                }
                              }

                              v777 = v665 - __src + 1;
                              if (v777 > 0x100u)
                              {
LABEL_1495:
                                *(v664 + 10) = 0;
                              }

                              else
                              {
                                memcpy((v664 + 10), __src, v777);
                              }

                              *(v664 + 8) = v1111[0].sa_len == 0;
                              *(v664 + 272) = 0;
                              v778 = _shouldLogFullRequestInfo(v81 + 51, v81 + 52);
                              v779 = mDNSLogCategory_mDNS;
                              if (mDNS_SensitiveLoggingEnableCount)
                              {
                                v780 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                              }

                              else
                              {
                                v780 = 1;
                              }

                              v781 = v780;
                              if (v778)
                              {
                                if (v781)
                                {
                                  if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v782 = *(v81 + 50);
                                    v783 = v664 + 10;
                                    v784 = (v664 + 10);
                                    while (1)
                                    {
                                      if (!v784 || (v785 = *v784, v785 > 0x3F))
                                      {
LABEL_1510:
                                        v786 = 257;
                                        goto LABEL_1695;
                                      }

                                      if (!*v784)
                                      {
                                        break;
                                      }

                                      v784 += v785 + 1;
                                      if (&v784[-v783] >= 256)
                                      {
                                        goto LABEL_1510;
                                      }
                                    }

                                    v786 = (v784 - v783 + 1);
                                    goto LABEL_1695;
                                  }

LABEL_1697:
                                  if (*(v664 + 8))
                                  {
                                    v877 = mDNSLogCategory_mDNS;
                                    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                                    {
                                      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                      {
                                        goto LABEL_1703;
                                      }
                                    }

                                    else
                                    {
                                      v877 = mDNSLogCategory_mDNS_redacted;
                                      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                      {
LABEL_1703:
                                        v878 = *(v81 + 50);
                                        v879 = *(v81 + 47);
                                        *aBlock = 67109634;
                                        *&aBlock[4] = v878;
                                        *&aBlock[8] = 1024;
                                        *&aBlock[10] = v879;
                                        *&aBlock[14] = 2082;
                                        *&aBlock[16] = v81 + 32;
                                        _os_log_impl(&_mh_execute_header, v877, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceBrowse Start domain enumeration for WAB and mDNS PID[%d](%{public}s)", aBlock, 0x18u);
                                      }
                                    }

                                    uDNS_StartWABQueries(2);
                                    mDNS_StartDomainEnumeration();
                                  }

                                  v81[14] = 0;
                                  memset(aBlock, 0, sizeof(aBlock));
                                  v1094 = 0u;
                                  v1093 = 0u;
                                  v1092 = 0u;
                                  v1091 = 0u;
                                  v1090 = 0u;
                                  v1089 = 0u;
                                  v1088 = 0u;
                                  v1087 = 0u;
                                  v1085 = 0u;
                                  v1086 = 0u;
                                  updated = -65540;
                                  if (!AppendDNSNameString(aBlock, v1111))
                                  {
                                    goto LABEL_1184;
                                  }

                                  if (_os_feature_enabled_impl() && (*(v664 + 8) || IsLocalDomain(aBlock) || *(v664 + 9)))
                                  {
                                    Domains = _handle_browse_request_with_trust(v81, v1111);
                                  }

                                  else
                                  {
                                    Domains = _handle_browse_request_start(v81, v1111);
                                  }

                                  goto LABEL_294;
                                }

                                v779 = mDNSLogCategory_mDNS_redacted;
                                if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1697;
                                }

                                v782 = *(v81 + 50);
                                v787 = v664 + 10;
                                v788 = (v664 + 10);
                                while (1)
                                {
                                  if (!v788 || (v789 = *v788, v789 > 0x3F))
                                  {
LABEL_1520:
                                    v786 = 257;
                                    goto LABEL_1695;
                                  }

                                  if (!*v788)
                                  {
                                    break;
                                  }

                                  v788 += v789 + 1;
                                  if (&v788[-v787] >= 256)
                                  {
                                    goto LABEL_1520;
                                  }
                                }

                                v786 = (v788 - v787 + 1);
LABEL_1695:
                                v874 = *(v81 + 62);
                                v875 = *(v81 + 63);
                                v876 = *(v81 + 47);
                                *aBlock = 67111427;
                                *&aBlock[4] = v782;
                                *&aBlock[8] = 2160;
                                *&aBlock[10] = 1752392040;
                                *&aBlock[18] = 1040;
                                *&aBlock[20] = v786;
                                *&aBlock[24] = 2101;
                                *&aBlock[26] = v664 + 10;
                                *&aBlock[34] = 2160;
                                *&aBlock[36] = 1752392040;
                                *&aBlock[44] = 2085;
                                *&aBlock[46] = v1111;
                                *&aBlock[54] = 1024;
                                *&aBlock[56] = v874;
                                *&aBlock[60] = 1024;
                                *&aBlock[62] = v875;
                                *&aBlock[66] = 1024;
                                *&aBlock[68] = v876;
                                *&aBlock[72] = 2082;
                                *&aBlock[74] = v81 + 32;
                                v791 = v779;
                                v792 = "[R%u] DNSServiceBrowse START -- service type: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, domain: %{sensitive, mask.hash}s, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), ";
                                v793 = 82;
                              }

                              else
                              {
                                if (v781)
                                {
                                  if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_1697;
                                  }
                                }

                                else
                                {
                                  v779 = mDNSLogCategory_mDNS_redacted;
                                  if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_1697;
                                  }
                                }

                                v790 = *(v81 + 50);
                                *aBlock = 67109120;
                                *&aBlock[4] = v790;
                                v791 = v779;
                                v792 = "[R%u] DNSServiceBrowse START -- ";
                                v793 = 8;
                              }

                              _os_log_impl(&_mh_execute_header, v791, OS_LOG_TYPE_DEFAULT, v792, aBlock, v793);
                              goto LABEL_1697;
                            }
                          }

                          v346 = v1123;
LABEL_851:
                          v475 = v335 - (v335 == v346);
                          goto LABEL_912;
                        }
                      }

                      v346 = (&v1109[7].st_dev + 1);
                      goto LABEL_851;
                    case 7:
                      if (v81[17])
                      {
                        goto LABEL_351;
                      }

                      v208 = malloc_type_calloc(1uLL, 0x590uLL, 0x567B2EAuLL);
                      if (!v208)
                      {
                        goto LABEL_1949;
                      }

                      v81[17] = v208;
LABEL_351:
                      v209 = 0;
                      v210 = v81[10];
                      if (!v210 || (v211 = v81[11], (v210 + 1) > v211) || (v212 = v210 + 2, v209 = bswap32(*v210), v81[10] = v210 + 1, v210 == -4) || v212 > v211)
                      {
                        v213 = 0;
                        v81[10] = 0;
                      }

                      else
                      {
                        v213 = bswap32(v210[1]);
                        v81[10] = v212;
                        if (v213 == -3)
                        {
                          if (mDNS_LoggingEnabled == 1)
                          {
                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handle_resolve_request: mapping kDNSServiceInterfaceIndexP2P to kDNSServiceInterfaceIndexAny + kDNSServiceFlagsIncludeP2P", *&v10.tv_sec);
                          }

                          v213 = 0;
                          v209 |= 0x20000u;
                        }
                      }

                      v263 = mDNSPlatformInterfaceIDfromInterfaceIndex(v213);
                      v1110 = v263;
                      v264 = 0;
                      if (!v213 || v263)
                      {
                        goto LABEL_741;
                      }

                      if (v213 == 0 || v213 >= 0xFFFFFFFC)
                      {
                        updated = -65540;
                        if (mDNS_LoggingEnabled != 1)
                        {
                          goto LABEL_1184;
                        }

                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handle_resolve_request: bad interfaceIndex %d", 0.0);
                        goto LABEL_1183;
                      }

                      v1110 = v213;
                      if (mDNS_LoggingEnabled == 1)
                      {
                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handle_resolve_request: resolve pending for interface index %d", v213);
                        v264 = 0;
                      }

LABEL_741:
                      v1065 = v264;
                      v1064 = v264;
                      v1063 = v264;
                      v1062 = v264;
                      v1061 = v264;
                      v1060 = v264;
                      v1059 = v264;
                      v1058 = v264;
                      v1057 = v264;
                      v1056 = v264;
                      v1055 = v264;
                      v1054[1] = v264;
                      v1054[0] = v264;
                      *&__src[8] = v264;
                      *&__src[4] = v264;
                      *__src = v264;
                      bzero(v1111, 0x3F1uLL);
                      bzero(v1109, 0x4F8uLL);
                      if (!v81[10])
                      {
                        goto LABEL_1036;
                      }

                      v416 = v81[11];
                      v417 = __src;
                      while (1)
                      {
                        v418 = v81[10];
                        if (v418 >= v416 || v417 >= v1066)
                        {
                          break;
                        }

                        v81[10] = v418 + 1;
                        v420 = *v418;
                        LOBYTE(v417->st_dev) = v420;
                        v417 = (v417 + 1);
                        if (!v420)
                        {
                          if (v81[10])
                          {
                            v421 = v81[11];
                            v417 = v1109;
                            do
                            {
                              v422 = v81[10];
                              if (v422 >= v421 || v417 >= (&v1109[7].st_dev + 1))
                              {
                                v477 = (&v1109[7].st_dev + 1);
                                goto LABEL_1031;
                              }

                              v81[10] = v422 + 1;
                              v424 = *v422;
                              LOBYTE(v417->st_dev) = v424;
                              v417 = (v417 + 1);
                            }

                            while (v424);
                            if (v81[10])
                            {
                              v425 = v81[11];
                              v417 = v1111;
                              while (1)
                              {
                                v426 = v81[10];
                                if (v426 >= v425 || v417 >= v1123)
                                {
                                  break;
                                }

                                v81[10] = v426 + 1;
                                v428 = *v426;
                                LOBYTE(v417->st_dev) = v428;
                                v417 = (v417 + 1);
                                if (!v428)
                                {
                                  if (!v81[10])
                                  {
                                    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceResolve(unreadable parameters)", v415);
                                    goto LABEL_1183;
                                  }

                                  signed_browse_tlvs = get_signed_browse_tlvs(v81);
                                  if (signed_browse_tlvs)
                                  {
                                    updated = signed_browse_tlvs;
                                    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: handle_resolve_request err reading Validation TLVS");
                                    goto LABEL_1184;
                                  }

                                  v711 = &v1109[7].st_dev + 1;
                                  if ((build_domainname_from_strings(&v1109[7].st_dev + 1, __src, v1109, v1111) & 0x80000000) != 0)
                                  {
                                    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: handle_resolve_request bad “%s” “%s” “%s”", v712);
                                    goto LABEL_1183;
                                  }

                                  *(v81 + 62) = v209;
                                  *(v81 + 63) = v213;
                                  v713 = v81[17];
                                  *(v713 + 832) = v1110;
                                  *(v713 + 1020) = v209;
                                  while (1)
                                  {
                                    if (!v711)
                                    {
                                      goto LABEL_1525;
                                    }

                                    v714 = *v711;
                                    if (v714 > 0x3F)
                                    {
                                      goto LABEL_1525;
                                    }

                                    if (!*v711)
                                    {
                                      break;
                                    }

                                    v711 += v714 + 1;
                                    if (v711 - (&v1109[7].st_dev + 1) > 255)
                                    {
                                      goto LABEL_1525;
                                    }
                                  }

                                  if ((v711 - (&v1109[7].st_dev + 1) + 1) > 0x100u)
                                  {
LABEL_1525:
                                    *(v713 + 1072) = 0;
                                  }

                                  else
                                  {
                                    memcpy((v713 + 1072), &v1109[7].st_dev + 1, (v711 - (&v1109[7].st_dev + 1) + 1));
                                  }

                                  *(v713 + 1038) = 65569;
                                  *(v713 + 1328) = BYTE1(v209) & 1;
                                  *(v713 + 1329) = 1;
                                  *(v713 + 1330) = (v209 & 0x400) != 0;
                                  *(v713 + 1331) = (v209 & 0x1000) != 0;
                                  *(v713 + 1332) = 0;
                                  *(v713 + 1337) = 0;
                                  *(v713 + 1335) = (v209 & 0x40000) != 0;
                                  *(v713 + 1336) = (v209 & 0x80000) != 0;
                                  *(v713 + 1349) = 0;
                                  *(v713 + 940) = *(v81 + 47);
                                  *(v713 + 944) = *(v81 + 49);
                                  *(v713 + 848) = resolve_result_callback;
                                  *(v713 + 872) = v81;
                                  *(v713 + 136) = v1110;
                                  *(v713 + 324) = v209;
                                  v794 = &v1109[7].st_dev + 1;
                                  while (1)
                                  {
                                    if (!v794)
                                    {
                                      goto LABEL_1534;
                                    }

                                    v795 = *v794;
                                    if (v795 > 0x3F)
                                    {
                                      goto LABEL_1534;
                                    }

                                    if (!*v794)
                                    {
                                      break;
                                    }

                                    v794 += v795 + 1;
                                    if (v794 - (&v1109[7].st_dev + 1) > 255)
                                    {
                                      goto LABEL_1534;
                                    }
                                  }

                                  v796 = v794 - (&v1109[7].st_dev + 1) + 1;
                                  if (v796 > 0x100u)
                                  {
LABEL_1534:
                                    *(v713 + 376) = 0;
                                  }

                                  else
                                  {
                                    memcpy((v713 + 376), &v1109[7].st_dev + 1, v796);
                                  }

                                  *(v713 + 342) = 65552;
                                  *(v713 + 632) = BYTE1(v209) & 1;
                                  *(v713 + 633) = 1;
                                  *(v713 + 634) = (v209 & 0x400) != 0;
                                  *(v713 + 635) = (v209 & 0x1000) != 0;
                                  *(v713 + 636) = 0;
                                  *(v713 + 641) = 0;
                                  *(v713 + 639) = 0;
                                  *(v713 + 640) = (v209 & 0x80000) != 0;
                                  *(v713 + 653) = 0;
                                  *(v713 + 244) = *(v81 + 47);
                                  *(v713 + 248) = *(v81 + 49);
                                  *(v713 + 152) = resolve_result_callback;
                                  *(v713 + 176) = v81;
                                  *(v713 + 1412) = 0;
                                  v797 = mDNS_TimeNow(mDNSStorage) + 130000;
                                  if (v797 <= 1)
                                  {
                                    v797 = 1;
                                  }

                                  *(v713 + 1408) = v797;
                                  *(v713 + 1420) = 0;
                                  v798 = _shouldLogFullRequestInfo(v81 + 51, v81 + 52);
                                  v799 = v713 + 1072;
                                  v800 = mDNSLogCategory_mDNS;
                                  if (mDNS_SensitiveLoggingEnableCount)
                                  {
                                    v801 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                                  }

                                  else
                                  {
                                    v801 = 1;
                                  }

                                  v802 = v801;
                                  if (v798)
                                  {
                                    if (v802)
                                    {
                                      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                      {
                                        logh = *(v81 + 50);
                                        v803 = (v713 + 1072);
                                        while (1)
                                        {
                                          if (!v803 || (v804 = *v803, v804 > 0x3F))
                                          {
LABEL_1551:
                                            v805 = 257;
                                            goto LABEL_1796;
                                          }

                                          if (!*v803)
                                          {
                                            break;
                                          }

                                          v803 += v804 + 1;
                                          if (&v803[-v799] >= 256)
                                          {
                                            goto LABEL_1551;
                                          }
                                        }

                                        v805 = (v803 - v799 + 1);
                                        goto LABEL_1796;
                                      }

LABEL_1798:
                                      v81[14] = 0;
                                      v924 = v81[7];
                                      if (v924)
                                      {
                                        if (*(v924 + 16) == &_mdns_signed_browse_result_kind && mdns_signed_browse_result_contains(v81[7], &v1109[7].st_dev + 1, v213))
                                        {
                                          uuid = _mdns_signed_browse_result_get_uuid(v924);
                                          is_signed_result_uuid_valid = mdns_system_is_signed_result_uuid_valid(uuid);
                                          v927 = mDNSLogCategory_mDNS;
                                          if (mDNS_SensitiveLoggingEnableCount)
                                          {
                                            v928 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                                          }

                                          else
                                          {
                                            v928 = 1;
                                          }

                                          v929 = v928;
                                          if (is_signed_result_uuid_valid)
                                          {
                                            if (v929)
                                            {
                                              if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
                                              {
LABEL_1848:
                                                v941 = *(v81 + 50);
                                                *buf = 67109120;
                                                *&buf[4] = v941;
                                                _os_log_impl(&_mh_execute_header, v927, OS_LOG_TYPE_DEBUG, "[R%u] DNSServiceResolve: Allowing signed result", buf, 8u);
                                              }
                                            }

                                            else
                                            {
                                              v927 = mDNSLogCategory_mDNS_redacted;
                                              if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
                                              {
                                                goto LABEL_1848;
                                              }
                                            }

                                            v940 = 0;
LABEL_1840:
                                            v1108 = 0u;
                                            v1107 = 0u;
                                            v1106 = 0u;
                                            v1105 = 0u;
                                            v1104 = 0u;
                                            v1103 = 0u;
                                            v1102 = 0u;
                                            v1101 = 0u;
                                            v1100 = 0u;
                                            v1099 = 0u;
                                            v1098 = 0u;
                                            v1097 = 0u;
                                            v1096 = 0u;
                                            memset(buf, 0, sizeof(buf));
                                            updated = -65540;
                                            if (!AppendDNSNameString(buf, v1111))
                                            {
                                              goto LABEL_1184;
                                            }

                                            if (v940 && _os_feature_enabled_impl() && (IsLocalDomain(buf) || *(v713 + 1330)))
                                            {
                                              Domains = _handle_resolve_request_with_trust(v81, v1109);
                                            }

                                            else
                                            {
                                              Domains = _handle_resolve_request_start(v81, v1109);
                                            }

                                            goto LABEL_294;
                                          }

                                          if (v929)
                                          {
                                            updated = -65570;
                                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                                            {
                                              goto LABEL_1184;
                                            }
                                          }

                                          else
                                          {
                                            v927 = mDNSLogCategory_mDNS_redacted;
                                            updated = -65570;
                                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                                            {
                                              goto LABEL_1184;
                                            }
                                          }

                                          v937 = *(v81 + 50);
                                          *buf = 67109120;
                                          *&buf[4] = v937;
                                          v696 = buf;
                                          v697 = v927;
                                          v698 = OS_LOG_TYPE_ERROR;
                                          v699 = "[R%u] DNSServiceResolve: Signed result UUID revoked.";
LABEL_1297:
                                          v700 = 8;
LABEL_1607:
                                          _os_log_impl(&_mh_execute_header, v697, v698, v699, v696, v700);
                                          goto LABEL_1184;
                                        }

                                        v930 = mDNSLogCategory_mDNS;
                                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                                        {
                                          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                                          {
                                            v931 = *(v81 + 50);
                                            v935 = (v713 + 1072);
                                            while (1)
                                            {
                                              if (!v935 || (v936 = *v935, v936 > 0x3F))
                                              {
LABEL_1826:
                                                v934 = 257;
                                                goto LABEL_1836;
                                              }

                                              if (!*v935)
                                              {
                                                break;
                                              }

                                              v935 += v936 + 1;
                                              if (&v935[-v799] >= 256)
                                              {
                                                goto LABEL_1826;
                                              }
                                            }

                                            v934 = (v935 - v799 + 1);
LABEL_1836:
                                            *buf = 67110147;
                                            *&buf[4] = v931;
                                            *&buf[8] = 2160;
                                            *&buf[10] = 1752392040;
                                            *&buf[18] = 1040;
                                            *&buf[20] = v934;
                                            *&buf[24] = 2101;
                                            *&buf[26] = v713 + 1072;
                                            *&buf[34] = 1024;
                                            *&buf[36] = v213;
                                            _os_log_impl(&_mh_execute_header, v930, OS_LOG_TYPE_ERROR, "[R%u] DNSServiceResolve: Signed result does not cover service: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, ifindex: %u.", buf, 0x28u);
                                          }
                                        }

                                        else
                                        {
                                          v930 = mDNSLogCategory_mDNS_redacted;
                                          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                                          {
                                            v931 = *(v81 + 50);
                                            v932 = (v713 + 1072);
                                            while (1)
                                            {
                                              if (!v932 || (v933 = *v932, v933 > 0x3F))
                                              {
LABEL_1819:
                                                v934 = 257;
                                                goto LABEL_1836;
                                              }

                                              if (!*v932)
                                              {
                                                break;
                                              }

                                              v932 += v933 + 1;
                                              if (&v932[-v799] >= 256)
                                              {
                                                goto LABEL_1819;
                                              }
                                            }

                                            v934 = (v932 - v799 + 1);
                                            goto LABEL_1836;
                                          }
                                        }

                                        *(v81 + 290) = 0;
                                        v939 = v81[7];
                                        if (v939)
                                        {
                                          os_release(v939);
                                          v81[7] = 0;
                                        }
                                      }

                                      v940 = 1;
                                      goto LABEL_1840;
                                    }

                                    v800 = mDNSLogCategory_mDNS_redacted;
                                    if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                    {
                                      goto LABEL_1798;
                                    }

                                    logh = *(v81 + 50);
                                    v806 = (v713 + 1072);
                                    while (1)
                                    {
                                      if (!v806 || (v807 = *v806, v807 > 0x3F))
                                      {
LABEL_1561:
                                        v805 = 257;
                                        goto LABEL_1796;
                                      }

                                      if (!*v806)
                                      {
                                        break;
                                      }

                                      v806 += v807 + 1;
                                      if (&v806[-v799] >= 256)
                                      {
                                        goto LABEL_1561;
                                      }
                                    }

                                    v805 = (v806 - v799 + 1);
LABEL_1796:
                                    v1019 = v805;
                                    v920 = *(v81 + 62);
                                    v921 = *(v81 + 63);
                                    v922 = *(v81 + 47);
                                    v923 = mDNS_DomainNameFNV1aHash((v713 + 1072));
                                    *buf = 67111171;
                                    *&buf[4] = logh;
                                    *&buf[8] = 2160;
                                    *&buf[10] = 1752392040;
                                    *&buf[18] = 1040;
                                    *&buf[20] = v1019;
                                    *&buf[24] = 2101;
                                    *&buf[26] = v713 + 1072;
                                    *&buf[34] = 1024;
                                    *&buf[36] = v920;
                                    *&buf[40] = 1024;
                                    *&buf[42] = v921;
                                    *&buf[46] = 1024;
                                    LODWORD(v1096) = v922;
                                    WORD2(v1096) = 2082;
                                    *(&v1096 + 6) = v81 + 32;
                                    HIWORD(v1096) = 1024;
                                    LODWORD(v1097) = v923;
                                    v828 = v800;
                                    v829 = "[R%u] DNSServiceResolve START -- SRV name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
                                    v830 = 68;
                                  }

                                  else
                                  {
                                    if (v802)
                                    {
                                      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                      {
                                        goto LABEL_1798;
                                      }
                                    }

                                    else
                                    {
                                      v800 = mDNSLogCategory_mDNS_redacted;
                                      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                      {
                                        goto LABEL_1798;
                                      }
                                    }

                                    v826 = *(v81 + 50);
                                    v827 = mDNS_DomainNameFNV1aHash((v713 + 1072));
                                    *buf = 67109376;
                                    *&buf[4] = v826;
                                    *&buf[8] = 1024;
                                    *&buf[10] = v827;
                                    v828 = v800;
                                    v829 = "[R%u] DNSServiceResolve START -- name hash: %x";
                                    v830 = 14;
                                  }

                                  _os_log_impl(&_mh_execute_header, v828, OS_LOG_TYPE_DEFAULT, v829, buf, v830);
                                  goto LABEL_1798;
                                }
                              }

                              v477 = v1123;
LABEL_1031:
                              v430 = v417 == v477;
LABEL_1032:
                              v577 = v430;
                              *(&v417->st_dev - v577) = 0;
                              v81[10] = 0;
                            }

                            else
                            {
                              v1111[0].sa_len = 0;
                            }
                          }

                          else
                          {
                            LOBYTE(v1109[0].st_dev) = 0;
                          }

LABEL_1036:
                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: handle_resolve_request - Couldn't read name/regtype/domain", v415, v990, v991, v992, v993);
                          goto LABEL_1183;
                        }
                      }

                      v430 = v417 == v1066;
                      goto LABEL_1032;
                    case 8:
                      if (v81[18])
                      {
                        goto LABEL_362;
                      }

                      v214 = malloc_type_calloc(1uLL, 0x320uLL, 0xA21EE0DuLL);
                      if (!v214)
                      {
                        goto LABEL_1949;
                      }

                      v81[18] = v214;
LABEL_362:
                      bzero(v1109, 0x468uLL);
                      v1109[0].st_ino = &v1109[0].st_size;
                      v215 = v81[10];
                      if (!v215 || (v216 = v81[11], (v215 + 1) > v216) || (v217 = v215 + 2, v218 = bswap32(*v215), v81[10] = v215 + 1, v1109[0].st_gid = v218, v215 == -4) || v217 > v216)
                      {
                        v81[10] = 0;
                        v1109[0].st_uid = 0;
                        goto LABEL_1183;
                      }

                      v219 = bswap32(v215[1]);
                      v81[10] = v217;
                      v1109[0].st_uid = v219;
                      updated = -65540;
                      if (!v217)
                      {
                        goto LABEL_1184;
                      }

                      p_st_size = &v1109[0].st_size;
                      do
                      {
                        v220 = v81[10];
                        if (v220 >= v216 || p_st_size >= &v1109[7].st_size + 1)
                        {
                          v456 = p_st_size == &v1109[7].st_size + 1;
LABEL_908:
                          v521 = v456;
                          v475 = &p_st_size[-v521];
LABEL_912:
                          *v475 = 0;
LABEL_913:
                          v81[10] = 0;
                          goto LABEL_1183;
                        }

                        v81[10] = v220 + 1;
                        v222 = *v220;
                        *p_st_size++ = v222;
                      }

                      while (v222);
                      v223 = v81[10];
                      v224 = v81[11];
                      v225 = v223 + 1;
                      if (v223)
                      {
                        v226 = v225 > v224;
                      }

                      else
                      {
                        v226 = 1;
                      }

                      if (v226)
                      {
                        v227 = 0;
                        LOWORD(v228) = 0;
                        LOWORD(v1109[0].st_rdev) = 0;
                      }

                      else
                      {
                        LOWORD(v228) = 0;
                        v227 = 0;
                        v522 = bswap32(*v223);
                        v81[10] = v225;
                        LOWORD(v1109[0].st_rdev) = HIWORD(v522);
                        if (v223 != -2 && (v223 + 2) <= v224)
                        {
                          v228 = bswap32(v223[1]) >> 16;
                          v227 = (v223 + 2);
                        }
                      }

                      v81[10] = v227;
                      HIWORD(v1109[0].st_rdev) = v228;
                      v523 = *(v81 + 50);
                      v1109[0].st_dev = v523;
                      v524 = *(v81 + 288);
                      if (*(v81 + 288))
                      {
                        v525 = 0;
                      }

                      else
                      {
                        v525 = *(v81 + 47);
                      }

                      *(&v1109[0].st_rdev + 1) = v525;
                      if (v524)
                      {
                        v542 = (v81 + 34);
                      }

                      else
                      {
                        v542 = 0;
                      }

                      v1109[0].st_atimespec.tv_sec = v542;
                      LODWORD(v1109[0].st_atimespec.tv_nsec) = *(v81 + 49);
                      v1109[0].st_ctimespec.tv_nsec = v81[4];
                      if (!v227)
                      {
                        v547 = mDNSLogCategory_Default;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                        {
                          updated = -65540;
                          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_1184;
                          }
                        }

                        else
                        {
                          v547 = mDNSLogCategory_Default_redacted;
                          updated = -65540;
                          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_1184;
                          }
                        }

                        *&v1111[0].sa_len = 67109120;
                        *&v1111[0].sa_data[2] = v523;
                        v179 = v1111;
                        v180 = v547;
                        v181 = OS_LOG_TYPE_ERROR;
                        v182 = "[R%u] DNSServiceQueryRecord(unreadable parameters)";
LABEL_1055:
                        v584 = 8;
LABEL_1056:
                        _os_log_impl(&_mh_execute_header, v180, v181, v182, &v179->sa_len, v584);
                        goto LABEL_1183;
                      }

                      v81[31] = vrev64_s32(*&v1109[0].st_uid);
                      if ((v81[28] & 2) != 0)
                      {
                        BYTE1(v1109[0].st_birthtimespec.tv_nsec) = get_tlv_uint32(v227, v224, 3, 0) == 1;
                        v543 = v227;
                        while ((v224 - v543) >= 4)
                        {
                          v544 = v543 + 4;
                          if (v543 == -4)
                          {
                            break;
                          }

                          v545 = __rev16(*(v543 + 1));
                          if ((v224 - v544) < v545)
                          {
                            break;
                          }

                          v546 = __rev16(*v543);
                          v543 = v544 + v545;
                          if (v546 == 10)
                          {
                            if (v545 == 16)
                            {
                              *(&v1109[7].st_size + 1) = *v544;
                              v1109[0].st_mtimespec.tv_sec = &v1109[7].st_size + 1;
                              BYTE4(v1109[0].st_ctimespec.tv_sec) = 1;
                              goto LABEL_1001;
                            }

                            break;
                          }
                        }

                        BYTE1(v1109[0].st_ctimespec.tv_sec) = get_tlv_uint32(v227, v224, 4, 0) == 1;
                        v560 = v227;
                        while ((v224 - v560) >= 4)
                        {
                          v561 = v560 + 4;
                          if (v560 == -4)
                          {
                            break;
                          }

                          v562 = __rev16(*(v560 + 1));
                          if ((v224 - v561) < v562)
                          {
                            break;
                          }

                          v563 = __rev16(*v560);
                          v560 = &v561[v562];
                          if (v563 == 1)
                          {
                            v1109[0].st_mtimespec.tv_nsec = Querier_RegisterCustomDNSServiceWithPListData(v561, v562);
                            *v81 = v1109[0].st_mtimespec.tv_nsec;
                            break;
                          }
                        }

                        LOBYTE(v1109[0].st_ctimespec.tv_sec) = get_tlv_uint32(v227, v224, 2, 0) != 0;
                      }

LABEL_1001:
                      v564 = get_signed_browse_tlvs(v81);
                      if (v564)
                      {
                        updated = v564;
                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: handle_queryrecord_request err reading Validation TLVS");
                        goto LABEL_1184;
                      }

                      get_tracker_info_tlvs(v81);
                      v566 = *(v81 + 62);
                      v567 = _os_feature_enabled_impl();
                      v1068 = 0u;
                      v1069 = 0u;
                      v1070 = 0u;
                      v1071 = 0u;
                      v1072 = 0u;
                      v1073 = 0u;
                      v1074 = 0u;
                      v1075 = 0u;
                      v1076 = 0u;
                      v1077 = 0u;
                      v1078 = 0u;
                      v1079 = 0u;
                      v1080 = 0u;
                      v1081 = 0u;
                      v1082 = 0u;
                      v1083 = 0u;
                      updated = -65540;
                      if (AppendDNSNameString(&v1068, &v1109[0].st_size))
                      {
                        v568 = IsLocalDomain(&v1068);
                        v569 = _shouldLogFullRequestInfo(v81 + 51, v81 + 52);
                        v570 = v567 ^ 1;
                        if ((v566 & 0x200000) == 0)
                        {
                          v570 = 1;
                        }

                        if (v570)
                        {
                          if (v569)
                          {
                            if (!mDNS_SensitiveLoggingEnableCount || (v568 ? (v625 = mDNSLogCategory_mDNS) : (v625 = mDNSLogCategory_Default), v625 == mDNSLogCategory_State))
                            {
                              if (v568)
                              {
                                v626 = mDNSLogCategory_mDNS;
                              }

                              else
                              {
                                v626 = mDNSLogCategory_Default;
                              }

                              if (!os_log_type_enabled(v626, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1747;
                              }

                              v627 = *(v81 + 50);
                              v737 = &v1068;
                              while (1)
                              {
                                if (!v737 || (v738 = *v737, v738 > 0x3F))
                                {
LABEL_1397:
                                  v630 = 257;
                                  goto LABEL_1744;
                                }

                                if (!*v737)
                                {
                                  break;
                                }

                                v737 = (v737 + v738 + 1);
                                if (v737 - &v1068 >= 256)
                                {
                                  goto LABEL_1397;
                                }
                              }

                              v630 = (v737 - &v1068 + 1);
                            }

                            else
                            {
                              if (v568)
                              {
                                v626 = mDNSLogCategory_mDNS;
                              }

                              else
                              {
                                v626 = mDNSLogCategory_Default_redacted;
                              }

                              if (!os_log_type_enabled(v626, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1747;
                              }

                              v627 = *(v81 + 50);
                              v628 = &v1068;
                              while (1)
                              {
                                if (!v628 || (v629 = *v628, v629 > 0x3F))
                                {
LABEL_1167:
                                  v630 = 257;
                                  goto LABEL_1744;
                                }

                                if (!*v628)
                                {
                                  break;
                                }

                                v628 = (v628 + v629 + 1);
                                if (v628 - &v1068 >= 256)
                                {
                                  goto LABEL_1167;
                                }
                              }

                              v630 = (v628 - &v1068 + 1);
                            }

LABEL_1744:
                            st_rdev_low = LOWORD(v1109[0].st_rdev);
                            v894 = *(v81 + 62);
                            v895 = *(v81 + 63);
                            v896 = *(v81 + 47);
                            v897 = mDNS_DomainNameFNV1aHash(&v1068);
                            *&v1111[0].sa_len = 67111427;
                            *&v1111[0].sa_data[2] = v627;
                            *&v1111[0].sa_data[6] = 2160;
                            *&v1111[0].sa_data[8] = 1752392040;
                            *v1111[1].sa_data = 1040;
                            *&v1111[1].sa_data[2] = v630;
                            *&v1111[1].sa_data[6] = 2101;
                            *&v1111[1].sa_data[8] = &v1068;
                            *v1111[2].sa_data = 1024;
                            *&v1111[2].sa_data[2] = st_rdev_low;
                            *&v1111[2].sa_data[6] = 1024;
                            *&v1111[2].sa_data[8] = v894;
                            *&v1111[2].sa_data[12] = 1024;
                            LODWORD(v1112[0]) = v895;
                            WORD2(v1112[0]) = 1024;
                            *(v1112 + 6) = v896;
                            WORD5(v1112[0]) = 2082;
                            *(v1112 + 12) = v81 + 32;
                            WORD2(v1112[1]) = 1024;
                            *(&v1112[1] + 6) = v897;
                            v769 = v626;
                            v770 = "[R%u] DNSServiceQueryRecord START -- qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
                            goto LABEL_1745;
                          }

                          if (!mDNS_SensitiveLoggingEnableCount || (v568 ? (v745 = mDNSLogCategory_mDNS) : (v745 = mDNSLogCategory_Default), v745 == mDNSLogCategory_State))
                          {
                            if (v568)
                            {
                              v744 = mDNSLogCategory_mDNS;
                            }

                            else
                            {
                              v744 = mDNSLogCategory_Default;
                            }

                            if (!os_log_type_enabled(v744, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1747;
                            }
                          }

                          else
                          {
                            if (v568)
                            {
                              v744 = mDNSLogCategory_mDNS;
                            }

                            else
                            {
                              v744 = mDNSLogCategory_Default_redacted;
                            }

                            if (!os_log_type_enabled(v744, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1747;
                            }
                          }
                        }

                        else
                        {
                          if (v569)
                          {
                            if (mDNS_SensitiveLoggingEnableCount)
                            {
                              v571 = v568 ? mDNSLogCategory_mDNS : mDNSLogCategory_Default;
                              if (v571 != mDNSLogCategory_State)
                              {
                                if (v568)
                                {
                                  v572 = mDNSLogCategory_mDNS;
                                }

                                else
                                {
                                  v572 = mDNSLogCategory_Default_redacted;
                                }

                                if (os_log_type_enabled(v572, OS_LOG_TYPE_DEFAULT))
                                {
                                  v573 = *(v81 + 50);
                                  v574 = &v1068;
                                  while (1)
                                  {
                                    if (!v574 || (v575 = *v574, v575 > 0x3F))
                                    {
LABEL_1028:
                                      v576 = 257;
                                      goto LABEL_1619;
                                    }

                                    if (!*v574)
                                    {
                                      break;
                                    }

                                    v574 = (v574 + v575 + 1);
                                    if (v574 - &v1068 >= 256)
                                    {
                                      goto LABEL_1028;
                                    }
                                  }

                                  v576 = (v574 - &v1068 + 1);
                                  goto LABEL_1619;
                                }

LABEL_1747:
                                v81[14] = 0;
                                v898 = v81[7];
                                if (v898)
                                {
                                  if (v898[2] == &_mdns_signed_browse_result_kind && mdns_signed_browse_result_contains(v81[7], &v1068, *(v81 + 63)))
                                  {
                                    v899 = mDNSLogCategory_Default;
                                    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                                    {
                                      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                                      {
                                        goto LABEL_1786;
                                      }
                                    }

                                    else
                                    {
                                      v899 = mDNSLogCategory_Default_redacted;
                                      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                                      {
LABEL_1786:
                                        v919 = *(v81 + 50);
                                        *&v1111[0].sa_len = 67109120;
                                        *&v1111[0].sa_data[2] = v919;
                                        v915 = v899;
                                        v916 = OS_LOG_TYPE_DEBUG;
                                        v917 = "[R%u] DNSServiceQueryRecord: Allowing signed result";
                                        v918 = 8;
LABEL_1787:
                                        _os_log_impl(&_mh_execute_header, v915, v916, v917, &v1111[0].sa_len, v918);
                                      }
                                    }

LABEL_1788:
                                    Domains = _handle_queryrecord_request_start(v81, &v1109[0].st_dev);
                                    goto LABEL_294;
                                  }

                                  *(v81 + 290) = 0;
                                  os_release(v898);
                                  v81[7] = 0;
                                }

                                if (!_os_feature_enabled_impl())
                                {
                                  goto LABEL_1788;
                                }

                                if (!v81[4])
                                {
                                  v906 = mDNSLogCategory_Default;
                                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                                  {
                                    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                                    {
                                      goto LABEL_1788;
                                    }
                                  }

                                  else
                                  {
                                    v906 = mDNSLogCategory_Default_redacted;
                                    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                                    {
                                      goto LABEL_1788;
                                    }
                                  }

                                  v913 = *(v81 + 50);
                                  v914 = *(v81 + 47);
                                  *&v1111[0].sa_len = 67109634;
                                  *&v1111[0].sa_data[2] = v913;
                                  *&v1111[0].sa_data[6] = 2080;
                                  *&v1111[0].sa_data[8] = v81 + 32;
                                  *v1111[1].sa_data = 1024;
                                  *&v1111[1].sa_data[2] = v914;
                                  v915 = v906;
                                  v916 = OS_LOG_TYPE_DEFAULT;
                                  v917 = "[R%u] _handle_queryrecord_request_with_trust: no audit token for pid(%s %d)";
                                  v918 = 24;
                                  goto LABEL_1787;
                                }

                                bzero(v1111, 0x3F1uLL);
                                v1065 = 0;
                                v1064 = 0;
                                v1063 = 0;
                                v1062 = 0;
                                v1061 = 0;
                                v1060 = 0;
                                v1059 = 0;
                                v1058 = 0;
                                v1057 = 0;
                                v1056 = 0;
                                v1055 = 0;
                                memset(v1054, 0, sizeof(v1054));
                                memset(__src, 0, sizeof(__src));
                                if (AppendDNSNameString(__src, &v1109[0].st_size) && (v1108 = 0u, v1107 = 0u, v1106 = 0u, v1105 = 0u, v1104 = 0u, v1103 = 0u, v1102 = 0u, v1101 = 0u, v1100 = 0u, v1099 = 0u, v1098 = 0u, v1097 = 0u, v1096 = 0u, memset(buf, 0, sizeof(buf)), DeconstructServiceName(__src, v1052, buf, aBlock)))
                                {
                                  v900 = v1111;
                                  ConvertDomainNameToCString_withescape(buf, &v1111[0].sa_len);
                                }

                                else
                                {
                                  v900 = 0;
                                }

                                v901 = v81[4];
                                v902 = *(v901 + 40);
                                *buf = *(v901 + 24);
                                *&buf[16] = v902;
                                v903 = mdns_trust_checks_check(buf, 2u, &v1109[0].st_size, v900, v1109[0].st_rdev, (v1109[0].st_gid & 0x400) != 0);
                                if (v903)
                                {
                                  v904 = v903;
                                  v905 = v903[9];
                                  if (v905 > 1)
                                  {
                                    if (v905 == 3)
                                    {
                                      updated = -65555;
                                      goto LABEL_1792;
                                    }

                                    if (v905 != 2)
                                    {
                                      goto LABEL_1789;
                                    }
                                  }

                                  else if (v905)
                                  {
                                    if (v905 == 1)
                                    {
                                      updated = _handle_queryrecord_request_start(v81, &v1109[0].st_dev);
                                      goto LABEL_1792;
                                    }

LABEL_1789:
                                    updated = -65537;
                                    goto LABEL_1792;
                                  }

                                  if ((v81[6] || (v907 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks), (v81[6] = v907) != 0)) && (v908 = *(v901 + 40), *buf = *(v901 + 24), *&buf[16] = v908, (v909 = mdns_trust_create(buf, v900, v904)) != 0))
                                  {
                                    v910 = v909;
                                    v911 = malloc_type_malloc(0x468uLL, 0x97CCF5DDuLL);
                                    if (!v911)
                                    {
                                      goto LABEL_1949;
                                    }

                                    v912 = v911;
                                    memcpy(v911, v1109, 0x468uLL);
                                    v912[1] = v912 + 12;
                                    if (v1109[0].st_mtimespec.tv_sec)
                                    {
                                      v912[6] = v912 + 1105;
                                    }

                                    *(v910 + 56) = v912;
                                    mdns_interface_monitor_set_update_handler(v910, &__block_literal_global_248);
                                    if (_get_trust_results_dispatch_queue_once != -1)
                                    {
                                      dispatch_once(&_get_trust_results_dispatch_queue_once, &__block_literal_global_240);
                                    }

                                    mdns_trust_set_queue(v910, _get_trust_results_dispatch_queue_queue);
                                    *v1035 = _NSConcreteStackBlock;
                                    *&v1036 = 0x40000000;
                                    *(&v1036 + 1) = ___handle_queryrecord_request_with_trust_block_invoke_2;
                                    *v1037 = &__block_descriptor_tmp_250;
                                    *&v1037[8] = v910;
                                    *&v1037[16] = v81;
                                    mdns_trust_set_event_handler(v910, v1035);
                                    CFArrayAppendValue(v81[6], v910);
                                    os_release(v910);
                                    if ((*(v910 + 26) & 1) == 0)
                                    {
                                      *(v910 + 26) = 1;
                                      _mdns_trust_activate_if_ready(v910);
                                    }

                                    updated = 0;
                                  }

                                  else
                                  {
                                    updated = -65539;
                                  }

LABEL_1792:
                                  os_release(v904);
                                  goto LABEL_1184;
                                }

LABEL_427:
                                updated = -65539;
                                goto LABEL_1184;
                              }
                            }

                            if (v568)
                            {
                              v572 = mDNSLogCategory_mDNS;
                            }

                            else
                            {
                              v572 = mDNSLogCategory_Default;
                            }

                            if (!os_log_type_enabled(v572, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1747;
                            }

                            v573 = *(v81 + 50);
                            v735 = &v1068;
                            while (1)
                            {
                              if (!v735 || (v736 = *v735, v736 > 0x3F))
                              {
LABEL_1387:
                                v576 = 257;
                                goto LABEL_1619;
                              }

                              if (!*v735)
                              {
                                break;
                              }

                              v735 = (v735 + v736 + 1);
                              if (v735 - &v1068 >= 256)
                              {
                                goto LABEL_1387;
                              }
                            }

                            v576 = (v735 - &v1068 + 1);
LABEL_1619:
                            v837 = LOWORD(v1109[0].st_rdev);
                            v838 = *(v81 + 62);
                            v839 = *(v81 + 63);
                            v840 = *(v81 + 47);
                            v841 = mDNS_DomainNameFNV1aHash(&v1068);
                            *&v1111[0].sa_len = 67111427;
                            *&v1111[0].sa_data[2] = v573;
                            *&v1111[0].sa_data[6] = 2160;
                            *&v1111[0].sa_data[8] = 1752392040;
                            *v1111[1].sa_data = 1040;
                            *&v1111[1].sa_data[2] = v576;
                            *&v1111[1].sa_data[6] = 2101;
                            *&v1111[1].sa_data[8] = &v1068;
                            *v1111[2].sa_data = 1024;
                            *&v1111[2].sa_data[2] = v837;
                            *&v1111[2].sa_data[6] = 1024;
                            *&v1111[2].sa_data[8] = v838;
                            *&v1111[2].sa_data[12] = 1024;
                            LODWORD(v1112[0]) = v839;
                            WORD2(v1112[0]) = 1024;
                            *(v1112 + 6) = v840;
                            WORD5(v1112[0]) = 2082;
                            *(v1112 + 12) = v81 + 32;
                            WORD2(v1112[1]) = 1024;
                            *(&v1112[1] + 6) = v841;
                            v769 = v572;
                            v770 = "[R%u] DNSServiceQueryRecord START -- qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{mdns:rrtype}d, DNSSEC enabled, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
LABEL_1745:
                            v771 = 74;
LABEL_1746:
                            _os_log_impl(&_mh_execute_header, v769, OS_LOG_TYPE_DEFAULT, v770, &v1111[0].sa_len, v771);
                            goto LABEL_1747;
                          }

                          if (!mDNS_SensitiveLoggingEnableCount || (v568 ? (v743 = mDNSLogCategory_mDNS) : (v743 = mDNSLogCategory_Default), v743 == mDNSLogCategory_State))
                          {
                            if (v568)
                            {
                              v744 = mDNSLogCategory_mDNS;
                            }

                            else
                            {
                              v744 = mDNSLogCategory_Default;
                            }

                            if (!os_log_type_enabled(v744, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1747;
                            }
                          }

                          else
                          {
                            if (v568)
                            {
                              v744 = mDNSLogCategory_mDNS;
                            }

                            else
                            {
                              v744 = mDNSLogCategory_Default_redacted;
                            }

                            if (!os_log_type_enabled(v744, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1747;
                            }
                          }
                        }

                        v767 = *(v81 + 50);
                        v768 = mDNS_DomainNameFNV1aHash(&v1068);
                        *&v1111[0].sa_len = 67109376;
                        *&v1111[0].sa_data[2] = v767;
                        *&v1111[0].sa_data[6] = 1024;
                        *&v1111[0].sa_data[8] = v768;
                        v769 = v744;
                        v770 = "[R%u] DNSServiceQueryRecord START -- name hash: %x";
                        v771 = 14;
                        goto LABEL_1746;
                      }

LABEL_1184:
                      v643 = v81[9];
                      if (v643)
                      {
                        free(v643);
                        v81[9] = 0;
                      }

                      v644 = *(v81 + 57);
                      v226 = v644 > 0x3F;
                      v645 = (1 << v644) & 0x8000000000022000;
                      v646 = v226 || v645 == 0;
                      v10 = 0;
                      if (v646)
                      {
                        v647 = bswap32(updated);
                        *&v1111[0].sa_len = v647;
                        if ((v81[28] & 4) == 0)
                        {
                          send_all(*(v81 + 48), v1111, 4uLL);
LABEL_1201:
                          v651 = *(v81 + 48);
                          if (v651 != *(v81 + 46))
                          {
                            close(v651);
                            *(v81 + 48) = *(v81 + 46);
                            v652 = v81[3];
                            if (v652)
                            {
                              *(v652 + 192) = *(v652 + 184);
                            }
                          }

                          v10 = 0;
                          goto LABEL_1205;
                        }

                        v648 = mDNSLogCategory_Default;
                        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                        {
                          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_1198;
                          }
                        }

                        else
                        {
                          v648 = mDNSLogCategory_Default_redacted;
                          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                          {
LABEL_1198:
                            v649 = *(v81 + 50);
                            v1109[0].st_dev = 67109376;
                            *&v1109[0].st_mode = v649;
                            LOWORD(v1109[0].st_ino) = 1024;
                            *(&v1109[0].st_ino + 2) = updated;
                            _os_log_impl(&_mh_execute_header, v648, OS_LOG_TYPE_DEFAULT, "[R%u] returnAsyncErrorCode: error code(%d)", v1109, 0xEu);
                          }
                        }

                        if (updated)
                        {
                          reply = create_reply(0x49, 18, v81);
                          *(reply + 11) = 0;
                          *(reply + 12) = 0;
                          *(reply + 13) = v647;
                          *(reply + 14) = 0;
                          *(reply + 30) = 0;
                          append_reply(v81, reply);
                        }

                        goto LABEL_1201;
                      }

LABEL_1205:
                      if (v81[3])
                      {
                        v9 = v81[3];
                      }

                      else
                      {
                        v9 = v81;
                      }

                      v11 = 1;
                      *(v9 + 291) = 1;
                      *(v9 + 53) = 0;
                      *(v9 + 4) = v10;
                      *(v9 + 5) = v10;
                      continue;
                    case 9:
                      v112 = read_rr_from_ipc_msg(v81, 0, 0);
                      updated = -65540;
                      if (!v112)
                      {
                        goto LABEL_1184;
                      }

                      rr_from_ipc_msg = v112;
                      mDNS_Lock_(mDNSStorage, "mDNS_ReconfirmByValue", 16098);
                      IdenticalRecordInCache = FindIdenticalRecordInCache(mDNSStorage, (rr_from_ipc_msg + 4));
                      if (IdenticalRecordInCache)
                      {
                        mDNS_Reconfirm_internal(mDNSStorage, IdenticalRecordInCache, 0x1388u);
                        ReconfirmAntecedents(mDNSStorage, *(IdenticalRecordInCache + 40), *(IdenticalRecordInCache + 24), *(IdenticalRecordInCache + 32), 0);
                        updated = 0;
                      }

                      else
                      {
                        updated = -65541;
                      }

                      mDNS_Unlock_(mDNSStorage, "mDNS_ReconfirmByValue", 16103);
                      v347 = _shouldLogFullRequestInfo(v81 + 51, v81 + 52);
                      v348 = *(rr_from_ipc_msg + 5);
                      v349 = mDNSLogCategory_mDNS;
                      if (mDNS_SensitiveLoggingEnableCount)
                      {
                        v350 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                      }

                      else
                      {
                        v350 = 1;
                      }

                      v351 = v350;
                      if (IdenticalRecordInCache)
                      {
                        if (v347)
                        {
                          if (!v348)
                          {
                            if (v351)
                            {
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1174;
                              }

                              v447 = *(v81 + 50);
                              v448 = rr_from_ipc_msg[6];
                              v449 = *(v81 + 62);
                              v450 = *(v81 + 63);
                              v451 = *(v81 + 47);
                              v1109[0].st_dev = 67111171;
                              *&v1109[0].st_mode = v447;
                              LOWORD(v1109[0].st_ino) = 2160;
                              *(&v1109[0].st_ino + 2) = 1752392040;
                              HIWORD(v1109[0].st_uid) = 1040;
                              v1109[0].st_gid = 0;
                              LOWORD(v1109[0].st_rdev) = 2101;
                              *(&v1109[0].st_rdev + 2) = 0;
                              WORD1(v1109[0].st_atimespec.tv_sec) = 1024;
                              HIDWORD(v1109[0].st_atimespec.tv_sec) = v448;
                              LOWORD(v1109[0].st_atimespec.tv_nsec) = 1024;
                              *(&v1109[0].st_atimespec.tv_nsec + 2) = v449;
                              HIWORD(v1109[0].st_atimespec.tv_nsec) = 1024;
                              LODWORD(v1109[0].st_mtimespec.tv_sec) = v450;
                              WORD2(v1109[0].st_mtimespec.tv_sec) = 1024;
                              *(&v1109[0].st_mtimespec.tv_sec + 6) = v451;
                              WORD1(v1109[0].st_mtimespec.tv_nsec) = 2082;
                              *(&v1109[0].st_mtimespec.tv_nsec + 4) = (v81 + 32);
                              v378 = v349;
                              v379 = "[R%u] DNSServiceReconfirmRecord START -- rr name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), ";
                            }

                            else
                            {
                              v492 = mDNSLogCategory_mDNS_redacted;
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1174;
                              }

                              v493 = *(v81 + 50);
                              v494 = rr_from_ipc_msg[6];
                              v495 = *(v81 + 62);
                              v496 = *(v81 + 63);
                              v497 = *(v81 + 47);
                              v1109[0].st_dev = 67111171;
                              *&v1109[0].st_mode = v493;
                              LOWORD(v1109[0].st_ino) = 2160;
                              *(&v1109[0].st_ino + 2) = 1752392040;
                              HIWORD(v1109[0].st_uid) = 1040;
                              v1109[0].st_gid = 0;
                              LOWORD(v1109[0].st_rdev) = 2101;
                              *(&v1109[0].st_rdev + 2) = 0;
                              WORD1(v1109[0].st_atimespec.tv_sec) = 1024;
                              HIDWORD(v1109[0].st_atimespec.tv_sec) = v494;
                              LOWORD(v1109[0].st_atimespec.tv_nsec) = 1024;
                              *(&v1109[0].st_atimespec.tv_nsec + 2) = v495;
                              HIWORD(v1109[0].st_atimespec.tv_nsec) = 1024;
                              LODWORD(v1109[0].st_mtimespec.tv_sec) = v496;
                              WORD2(v1109[0].st_mtimespec.tv_sec) = 1024;
                              *(&v1109[0].st_mtimespec.tv_sec + 6) = v497;
                              WORD1(v1109[0].st_mtimespec.tv_nsec) = 2082;
                              *(&v1109[0].st_mtimespec.tv_nsec + 4) = (v81 + 32);
                              v378 = v492;
                              v379 = "[R%u] DNSServiceReconfirmRecord START -- rr name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), ";
                            }

                            v498 = 68;
                            goto LABEL_1173;
                          }

                          if (v351)
                          {
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1174;
                            }

                            v352 = v348;
                            loga = *(v81 + 50);
                            while (1)
                            {
                              if (!v352 || (v353 = *v352, v353 > 0x3F))
                              {
LABEL_623:
                                v354 = 257;
                                goto LABEL_1075;
                              }

                              if (!*v352)
                              {
                                break;
                              }

                              v352 += v353 + 1;
                              if (v352 - v348 >= 256)
                              {
                                goto LABEL_623;
                              }
                            }

                            v354 = (v352 - v348 + 1);
LABEL_1075:
                            v1016 = v354;
                            v588 = rr_from_ipc_msg[6];
                            v590 = *(v81 + 62);
                            v589 = *(v81 + 63);
                            v591 = *(v81 + 47);
                            v592 = mDNS_DomainNameFNV1aHash(v348);
                            v1109[0].st_dev = 67111427;
                            *&v1109[0].st_mode = loga;
                            LOWORD(v1109[0].st_ino) = 2160;
                            *(&v1109[0].st_ino + 2) = 1752392040;
                            HIWORD(v1109[0].st_uid) = 1040;
                            v1109[0].st_gid = v1016;
                            LOWORD(v1109[0].st_rdev) = 2101;
                            *(&v1109[0].st_rdev + 2) = v348;
                            WORD1(v1109[0].st_atimespec.tv_sec) = 1024;
                            HIDWORD(v1109[0].st_atimespec.tv_sec) = v588;
                            LOWORD(v1109[0].st_atimespec.tv_nsec) = 1024;
                            *(&v1109[0].st_atimespec.tv_nsec + 2) = v590;
                            HIWORD(v1109[0].st_atimespec.tv_nsec) = 1024;
                            LODWORD(v1109[0].st_mtimespec.tv_sec) = v589;
                            WORD2(v1109[0].st_mtimespec.tv_sec) = 1024;
                            *(&v1109[0].st_mtimespec.tv_sec + 6) = v591;
                            WORD1(v1109[0].st_mtimespec.tv_nsec) = 2082;
                            *(&v1109[0].st_mtimespec.tv_nsec + 4) = (v81 + 32);
                            WORD2(v1109[0].st_ctimespec.tv_sec) = 1024;
                            *(&v1109[0].st_ctimespec.tv_sec + 6) = v592;
                            v378 = v349;
                            v379 = "[R%u] DNSServiceReconfirmRecord START -- rr name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
                          }

                          else
                          {
                            v457 = mDNSLogCategory_mDNS_redacted;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1174;
                            }

                            v458 = v348;
                            logc = *(v81 + 50);
                            while (1)
                            {
                              if (!v458 || (v459 = *v458, v459 > 0x3F))
                              {
LABEL_823:
                                v460 = 257;
                                goto LABEL_1077;
                              }

                              if (!*v458)
                              {
                                break;
                              }

                              v458 += v459 + 1;
                              if (v458 - v348 >= 256)
                              {
                                goto LABEL_823;
                              }
                            }

                            v460 = (v458 - v348 + 1);
LABEL_1077:
                            v1017 = v460;
                            v593 = rr_from_ipc_msg[6];
                            v595 = *(v81 + 62);
                            v594 = *(v81 + 63);
                            v596 = *(v81 + 47);
                            v597 = mDNS_DomainNameFNV1aHash(v348);
                            v1109[0].st_dev = 67111427;
                            *&v1109[0].st_mode = logc;
                            LOWORD(v1109[0].st_ino) = 2160;
                            *(&v1109[0].st_ino + 2) = 1752392040;
                            HIWORD(v1109[0].st_uid) = 1040;
                            v1109[0].st_gid = v1017;
                            LOWORD(v1109[0].st_rdev) = 2101;
                            *(&v1109[0].st_rdev + 2) = v348;
                            WORD1(v1109[0].st_atimespec.tv_sec) = 1024;
                            HIDWORD(v1109[0].st_atimespec.tv_sec) = v593;
                            LOWORD(v1109[0].st_atimespec.tv_nsec) = 1024;
                            *(&v1109[0].st_atimespec.tv_nsec + 2) = v595;
                            HIWORD(v1109[0].st_atimespec.tv_nsec) = 1024;
                            LODWORD(v1109[0].st_mtimespec.tv_sec) = v594;
                            WORD2(v1109[0].st_mtimespec.tv_sec) = 1024;
                            *(&v1109[0].st_mtimespec.tv_sec + 6) = v596;
                            WORD1(v1109[0].st_mtimespec.tv_nsec) = 2082;
                            *(&v1109[0].st_mtimespec.tv_nsec + 4) = (v81 + 32);
                            WORD2(v1109[0].st_ctimespec.tv_sec) = 1024;
                            *(&v1109[0].st_ctimespec.tv_sec + 6) = v597;
                            v378 = v457;
                            v379 = "[R%u] DNSServiceReconfirmRecord START -- rr name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
                          }

                          goto LABEL_1078;
                        }

                        if (v348)
                        {
                          if (v351)
                          {
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1174;
                            }

                            v376 = *(v81 + 50);
                            v377 = mDNS_DomainNameFNV1aHash(v348);
                            v1109[0].st_dev = 67109376;
                            *&v1109[0].st_mode = v376;
                            LOWORD(v1109[0].st_ino) = 1024;
                            *(&v1109[0].st_ino + 2) = v377;
                            v378 = v349;
                            v379 = "[R%u] DNSServiceReconfirmRecord START -- name hash: %x";
                          }

                          else
                          {
                            v489 = mDNSLogCategory_mDNS_redacted;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1174;
                            }

                            v490 = *(v81 + 50);
                            v491 = mDNS_DomainNameFNV1aHash(v348);
                            v1109[0].st_dev = 67109376;
                            *&v1109[0].st_mode = v490;
                            LOWORD(v1109[0].st_ino) = 1024;
                            *(&v1109[0].st_ino + 2) = v491;
                            v378 = v489;
                            v379 = "[R%u] DNSServiceReconfirmRecord START -- name hash: %x";
                          }

LABEL_981:
                          v498 = 14;
                          goto LABEL_1173;
                        }

                        if (v351)
                        {
                          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_1174;
                          }

                          v483 = *(v81 + 50);
                          v1109[0].st_dev = 67109120;
                          *&v1109[0].st_mode = v483;
                          v378 = v349;
                          v379 = "[R%u] DNSServiceReconfirmRecord START -- ";
                        }

                        else
                        {
                          v557 = mDNSLogCategory_mDNS_redacted;
                          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_1174;
                          }

                          v558 = *(v81 + 50);
                          v1109[0].st_dev = 67109120;
                          *&v1109[0].st_mode = v558;
                          v378 = v557;
                          v379 = "[R%u] DNSServiceReconfirmRecord START -- ";
                        }
                      }

                      else
                      {
                        if (v347)
                        {
                          if (v348)
                          {
                            if (v351)
                            {
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1174;
                              }

                              v355 = v348;
                              v1012 = *(v81 + 50);
                              while (1)
                              {
                                if (!v355 || (v356 = *v355, v356 > 0x3F))
                                {
LABEL_633:
                                  v357 = 257;
                                  goto LABEL_1169;
                                }

                                if (!*v355)
                                {
                                  break;
                                }

                                v355 += v356 + 1;
                                if (v355 - v348 >= 256)
                                {
                                  goto LABEL_633;
                                }
                              }

                              v357 = (v355 - v348 + 1);
LABEL_1169:
                              logk = v357;
                              v631 = rr_from_ipc_msg[6];
                              v633 = *(v81 + 62);
                              v632 = *(v81 + 63);
                              v634 = *(v81 + 47);
                              v635 = mDNS_DomainNameFNV1aHash(v348);
                              v1109[0].st_dev = 67111683;
                              *&v1109[0].st_mode = v1012;
                              LOWORD(v1109[0].st_ino) = 2160;
                              *(&v1109[0].st_ino + 2) = 1752392040;
                              HIWORD(v1109[0].st_uid) = 1040;
                              v1109[0].st_gid = logk;
                              LOWORD(v1109[0].st_rdev) = 2101;
                              *(&v1109[0].st_rdev + 2) = v348;
                              WORD1(v1109[0].st_atimespec.tv_sec) = 1024;
                              HIDWORD(v1109[0].st_atimespec.tv_sec) = v631;
                              LOWORD(v1109[0].st_atimespec.tv_nsec) = 1024;
                              *(&v1109[0].st_atimespec.tv_nsec + 2) = updated;
                              HIWORD(v1109[0].st_atimespec.tv_nsec) = 1024;
                              LODWORD(v1109[0].st_mtimespec.tv_sec) = v633;
                              WORD2(v1109[0].st_mtimespec.tv_sec) = 1024;
                              *(&v1109[0].st_mtimespec.tv_sec + 6) = v632;
                              WORD1(v1109[0].st_mtimespec.tv_nsec) = 1024;
                              HIDWORD(v1109[0].st_mtimespec.tv_nsec) = v634;
                              LOWORD(v1109[0].st_ctimespec.tv_sec) = 2082;
                              *(&v1109[0].st_ctimespec.tv_sec + 2) = (v81 + 32);
                              WORD1(v1109[0].st_ctimespec.tv_nsec) = 1024;
                              HIDWORD(v1109[0].st_ctimespec.tv_nsec) = v635;
                              v378 = v349;
                              v379 = "[R%u] DNSServiceReconfirmRecord FAILED -- rr name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr type: %{mdns:rrtype}d, error: %d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
                            }

                            else
                            {
                              v485 = mDNSLogCategory_mDNS_redacted;
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1174;
                              }

                              v486 = v348;
                              v1014 = *(v81 + 50);
                              while (1)
                              {
                                if (!v486 || (v487 = *v486, v487 > 0x3F))
                                {
LABEL_870:
                                  v488 = 257;
                                  goto LABEL_1171;
                                }

                                if (!*v486)
                                {
                                  break;
                                }

                                v486 += v487 + 1;
                                if (v486 - v348 >= 256)
                                {
                                  goto LABEL_870;
                                }
                              }

                              v488 = (v486 - v348 + 1);
LABEL_1171:
                              logl = v488;
                              v636 = rr_from_ipc_msg[6];
                              v638 = *(v81 + 62);
                              v637 = *(v81 + 63);
                              v639 = *(v81 + 47);
                              v640 = mDNS_DomainNameFNV1aHash(v348);
                              v1109[0].st_dev = 67111683;
                              *&v1109[0].st_mode = v1014;
                              LOWORD(v1109[0].st_ino) = 2160;
                              *(&v1109[0].st_ino + 2) = 1752392040;
                              HIWORD(v1109[0].st_uid) = 1040;
                              v1109[0].st_gid = logl;
                              LOWORD(v1109[0].st_rdev) = 2101;
                              *(&v1109[0].st_rdev + 2) = v348;
                              WORD1(v1109[0].st_atimespec.tv_sec) = 1024;
                              HIDWORD(v1109[0].st_atimespec.tv_sec) = v636;
                              LOWORD(v1109[0].st_atimespec.tv_nsec) = 1024;
                              *(&v1109[0].st_atimespec.tv_nsec + 2) = updated;
                              HIWORD(v1109[0].st_atimespec.tv_nsec) = 1024;
                              LODWORD(v1109[0].st_mtimespec.tv_sec) = v638;
                              WORD2(v1109[0].st_mtimespec.tv_sec) = 1024;
                              *(&v1109[0].st_mtimespec.tv_sec + 6) = v637;
                              WORD1(v1109[0].st_mtimespec.tv_nsec) = 1024;
                              HIDWORD(v1109[0].st_mtimespec.tv_nsec) = v639;
                              LOWORD(v1109[0].st_ctimespec.tv_sec) = 2082;
                              *(&v1109[0].st_ctimespec.tv_sec + 2) = (v81 + 32);
                              WORD1(v1109[0].st_ctimespec.tv_nsec) = 1024;
                              HIDWORD(v1109[0].st_ctimespec.tv_nsec) = v640;
                              v378 = v485;
                              v379 = "[R%u] DNSServiceReconfirmRecord FAILED -- rr name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr type: %{mdns:rrtype}d, error: %d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
                            }

                            v498 = 80;
                            goto LABEL_1173;
                          }

                          if (v351)
                          {
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1174;
                            }

                            v478 = *(v81 + 50);
                            v479 = rr_from_ipc_msg[6];
                            v480 = *(v81 + 62);
                            v481 = *(v81 + 63);
                            v482 = *(v81 + 47);
                            v1109[0].st_dev = 67111427;
                            *&v1109[0].st_mode = v478;
                            LOWORD(v1109[0].st_ino) = 2160;
                            *(&v1109[0].st_ino + 2) = 1752392040;
                            HIWORD(v1109[0].st_uid) = 1040;
                            v1109[0].st_gid = 0;
                            LOWORD(v1109[0].st_rdev) = 2101;
                            *(&v1109[0].st_rdev + 2) = 0;
                            WORD1(v1109[0].st_atimespec.tv_sec) = 1024;
                            HIDWORD(v1109[0].st_atimespec.tv_sec) = v479;
                            LOWORD(v1109[0].st_atimespec.tv_nsec) = 1024;
                            *(&v1109[0].st_atimespec.tv_nsec + 2) = updated;
                            HIWORD(v1109[0].st_atimespec.tv_nsec) = 1024;
                            LODWORD(v1109[0].st_mtimespec.tv_sec) = v480;
                            WORD2(v1109[0].st_mtimespec.tv_sec) = 1024;
                            *(&v1109[0].st_mtimespec.tv_sec + 6) = v481;
                            WORD1(v1109[0].st_mtimespec.tv_nsec) = 1024;
                            HIDWORD(v1109[0].st_mtimespec.tv_nsec) = v482;
                            LOWORD(v1109[0].st_ctimespec.tv_sec) = 2082;
                            *(&v1109[0].st_ctimespec.tv_sec + 2) = (v81 + 32);
                            v378 = v349;
                            v379 = "[R%u] DNSServiceReconfirmRecord FAILED -- rr name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr type: %{mdns:rrtype}d, error: %d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), ";
                          }

                          else
                          {
                            v551 = mDNSLogCategory_mDNS_redacted;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1174;
                            }

                            v552 = *(v81 + 50);
                            v553 = rr_from_ipc_msg[6];
                            v554 = *(v81 + 62);
                            v555 = *(v81 + 63);
                            v556 = *(v81 + 47);
                            v1109[0].st_dev = 67111427;
                            *&v1109[0].st_mode = v552;
                            LOWORD(v1109[0].st_ino) = 2160;
                            *(&v1109[0].st_ino + 2) = 1752392040;
                            HIWORD(v1109[0].st_uid) = 1040;
                            v1109[0].st_gid = 0;
                            LOWORD(v1109[0].st_rdev) = 2101;
                            *(&v1109[0].st_rdev + 2) = 0;
                            WORD1(v1109[0].st_atimespec.tv_sec) = 1024;
                            HIDWORD(v1109[0].st_atimespec.tv_sec) = v553;
                            LOWORD(v1109[0].st_atimespec.tv_nsec) = 1024;
                            *(&v1109[0].st_atimespec.tv_nsec + 2) = updated;
                            HIWORD(v1109[0].st_atimespec.tv_nsec) = 1024;
                            LODWORD(v1109[0].st_mtimespec.tv_sec) = v554;
                            WORD2(v1109[0].st_mtimespec.tv_sec) = 1024;
                            *(&v1109[0].st_mtimespec.tv_sec + 6) = v555;
                            WORD1(v1109[0].st_mtimespec.tv_nsec) = 1024;
                            HIDWORD(v1109[0].st_mtimespec.tv_nsec) = v556;
                            LOWORD(v1109[0].st_ctimespec.tv_sec) = 2082;
                            *(&v1109[0].st_ctimespec.tv_sec + 2) = (v81 + 32);
                            v378 = v551;
                            v379 = "[R%u] DNSServiceReconfirmRecord FAILED -- rr name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr type: %{mdns:rrtype}d, error: %d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), ";
                          }

LABEL_1078:
                          v498 = 74;
                          goto LABEL_1173;
                        }

                        if (v348)
                        {
                          if (v351)
                          {
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1174;
                            }

                            v452 = *(v81 + 50);
                            v453 = mDNS_DomainNameFNV1aHash(v348);
                            v1109[0].st_dev = 67109376;
                            *&v1109[0].st_mode = v452;
                            LOWORD(v1109[0].st_ino) = 1024;
                            *(&v1109[0].st_ino + 2) = v453;
                            v378 = v349;
                            v379 = "[R%u] DNSServiceReconfirmRecord FAILED -- name hash: %x";
                          }

                          else
                          {
                            v548 = mDNSLogCategory_mDNS_redacted;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1174;
                            }

                            v549 = *(v81 + 50);
                            v550 = mDNS_DomainNameFNV1aHash(v348);
                            v1109[0].st_dev = 67109376;
                            *&v1109[0].st_mode = v549;
                            LOWORD(v1109[0].st_ino) = 1024;
                            *(&v1109[0].st_ino + 2) = v550;
                            v378 = v548;
                            v379 = "[R%u] DNSServiceReconfirmRecord FAILED -- name hash: %x";
                          }

                          goto LABEL_981;
                        }

                        if (v351)
                        {
                          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_1174;
                          }

                          v541 = *(v81 + 50);
                          v1109[0].st_dev = 67109120;
                          *&v1109[0].st_mode = v541;
                          v378 = v349;
                          v379 = "[R%u] DNSServiceReconfirmRecord FAILED -- ";
                        }

                        else
                        {
                          v578 = mDNSLogCategory_mDNS_redacted;
                          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_1174;
                          }

                          v579 = *(v81 + 50);
                          v1109[0].st_dev = 67109120;
                          *&v1109[0].st_mode = v579;
                          v378 = v578;
                          v379 = "[R%u] DNSServiceReconfirmRecord FAILED -- ";
                        }
                      }

                      v498 = 8;
LABEL_1173:
                      _os_log_impl(&_mh_execute_header, v378, OS_LOG_TYPE_DEFAULT, v379, v1109, v498);
                      goto LABEL_1174;
                    case 10:
                      v201 = 0;
                      v202 = 0;
                      v204 = v81[10];
                      v203 = v81[11];
                      if (v204)
                      {
                        v205 = 0;
                        v206 = 0;
                        if (v204 + 4 > v203)
                        {
                          goto LABEL_531;
                        }

                        v201 = 0;
                        v202 = 0;
                        v207 = v204 + 6;
                        v205 = bswap32(*v204);
                        v81[10] = v204 + 4;
                        if (v204 != -4 && v207 <= v203)
                        {
                          v206 = 0;
                          v201 = 0;
                          v202 = bswap32(*(v204 + 4)) >> 16;
                          v81[10] = v207;
                          if (v204 != -6 && v204 + 8 <= v203)
                          {
                            v206 = bswap32(*(v204 + 6)) >> 16;
                            v201 = (v204 + 8);
                          }

LABEL_531:
                          v310 = &v201[v206];
                          if (v310 <= v203)
                          {
                            v311 = v201;
                          }

                          else
                          {
                            v311 = 0;
                          }

                          if (v310 > v203 || v201 == 0)
                          {
                            v310 = 0;
                          }

                          v81[10] = v310;
                          if (v310 && (v313 = v310 + 1, (v310 + 1) <= v203))
                          {
                            v314 = bswap32(*v310);
                            v81[10] = v313;
                            if (v314)
                            {
                              if (v310 != -4)
                              {
                                goto LABEL_543;
                              }

                              goto LABEL_552;
                            }
                          }

                          else
                          {
                            v313 = 0;
                            v81[10] = 0;
                          }

                          v314 = 4500;
                          if (v313)
                          {
LABEL_543:
                            v315 = v81[14];
                            v316 = v81;
                            if (v315 == connection_termination)
                            {
                              v316 = LocateSubordinateRequest(v81);
                              v315 = *(v316 + 112);
                            }

                            if (v315 != regservice_termination_callback)
                            {
                              v317 = mDNSLogCategory_mDNS;
                              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                              {
                                updated = -65540;
                                if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1184;
                                }
                              }

                              else
                              {
                                v317 = mDNSLogCategory_mDNS_redacted;
                                updated = -65540;
                                if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1184;
                                }
                              }

                              v318 = *(v316 + 200);
                              v1109[0].st_dev = 67109120;
                              *&v1109[0].st_mode = v318;
                              v179 = v1109;
                              v180 = v317;
                              v181 = OS_LOG_TYPE_DEFAULT;
                              v182 = "[R%u] DNSServiceAddRecord(not a registered service ref)";
                              goto LABEL_1055;
                            }

                            v358 = *(v316 + 128);
                            v359 = mDNSLogCategory_mDNS;
                            if (mDNS_SensitiveLoggingEnableCount)
                            {
                              v360 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                            }

                            else
                            {
                              v360 = 1;
                            }

                            v361 = v360;
                            if (!*(v358 + 24))
                            {
                              if (v361)
                              {
                                updated = -65540;
                                if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1184;
                                }

                                v455 = *(v316 + 200);
                                v1109[0].st_dev = 67109120;
                                *&v1109[0].st_mode = v455;
                                v179 = v1109;
                                v180 = v359;
                                v181 = OS_LOG_TYPE_DEFAULT;
                                v182 = "[R%u] DNSServiceAddRecord: adding record to a service registered with zero port";
                              }

                              else
                              {
                                v513 = mDNSLogCategory_mDNS_redacted;
                                updated = -65540;
                                if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1184;
                                }

                                v514 = *(v316 + 200);
                                v1109[0].st_dev = 67109120;
                                *&v1109[0].st_mode = v514;
                                v179 = v1109;
                                v180 = v513;
                                v181 = OS_LOG_TYPE_DEFAULT;
                                v182 = "[R%u] DNSServiceAddRecord: adding record to a service registered with zero port";
                              }

                              goto LABEL_1055;
                            }

                            if (v361)
                            {
                              if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                              {
                                v362 = *(v358 + 1624);
                                if (v362 && (v363 = *(v362 + 2736)) != 0)
                                {
                                  v364 = *(v362 + 2736);
                                  v1013 = v363;
                                  while (1)
                                  {
                                    if (!v364 || (v365 = *v364, v365 > 0x3F))
                                    {
LABEL_650:
                                      v366 = 257;
                                      goto LABEL_1325;
                                    }

                                    if (!*v364)
                                    {
                                      break;
                                    }

                                    v364 += v365 + 1;
                                    if (&v364[-v363] >= 256)
                                    {
                                      goto LABEL_650;
                                    }
                                  }

                                  v366 = (v364 - v363 + 1);
LABEL_1325:
                                  loge = v366;
                                }

                                else
                                {
                                  loge = 0;
                                  v1013 = 0;
                                }

                                v1008 = *(v316 + 200);
                                v717 = DNSTypeName(v202);
                                v718 = *(v316 + 188);
                                v1109[0].st_dev = 67111171;
                                *&v1109[0].st_mode = v1008;
                                LOWORD(v1109[0].st_ino) = 1024;
                                *(&v1109[0].st_ino + 2) = v205;
                                HIWORD(v1109[0].st_ino) = 2160;
                                *&v1109[0].st_uid = 1752392040;
                                LOWORD(v1109[0].st_rdev) = 1040;
                                *(&v1109[0].st_rdev + 2) = loge;
                                *(&v1109[0].st_rdev + 3) = 2101;
                                v1109[0].st_atimespec.tv_sec = v1013;
                                LOWORD(v1109[0].st_atimespec.tv_nsec) = 2082;
                                *(&v1109[0].st_atimespec.tv_nsec + 2) = v717;
                                WORD1(v1109[0].st_mtimespec.tv_sec) = 1024;
                                HIDWORD(v1109[0].st_mtimespec.tv_sec) = v206;
                                LOWORD(v1109[0].st_mtimespec.tv_nsec) = 1024;
                                *(&v1109[0].st_mtimespec.tv_nsec + 2) = v718;
                                HIWORD(v1109[0].st_mtimespec.tv_nsec) = 2082;
                                v1109[0].st_ctimespec.tv_sec = v316 + 256;
                                v719 = v359;
LABEL_1330:
                                _os_log_impl(&_mh_execute_header, v719, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceAddRecord(%X, %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, %{public}s, %d) PID[%d](%{public}s)", v1109, 0x48u);
                              }
                            }

                            else
                            {
                              v469 = mDNSLogCategory_mDNS_redacted;
                              if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                logd = v469;
                                v470 = *(v358 + 1624);
                                if (v470)
                                {
                                  v471 = *(v470 + 2736);
                                  if (v471)
                                  {
                                    v472 = *(v470 + 2736);
                                    while (1)
                                    {
                                      if (!v472 || (v473 = *v472, v473 > 0x3F))
                                      {
LABEL_849:
                                        v474 = 257;
                                        goto LABEL_1328;
                                      }

                                      if (!*v472)
                                      {
                                        break;
                                      }

                                      v472 += v473 + 1;
                                      if (&v472[-v471] >= 256)
                                      {
                                        goto LABEL_849;
                                      }
                                    }

                                    v474 = (v472 - v471 + 1);
LABEL_1328:
                                    v1015 = v474;
                                  }

                                  else
                                  {
                                    v1015 = 0;
                                  }
                                }

                                else
                                {
                                  v1015 = 0;
                                  v471 = 0;
                                }

                                v1009 = *(v316 + 200);
                                v720 = DNSTypeName(v202);
                                v721 = *(v316 + 188);
                                v1109[0].st_dev = 67111171;
                                *&v1109[0].st_mode = v1009;
                                LOWORD(v1109[0].st_ino) = 1024;
                                *(&v1109[0].st_ino + 2) = v205;
                                HIWORD(v1109[0].st_ino) = 2160;
                                *&v1109[0].st_uid = 1752392040;
                                LOWORD(v1109[0].st_rdev) = 1040;
                                *(&v1109[0].st_rdev + 2) = v1015;
                                *(&v1109[0].st_rdev + 3) = 2101;
                                v1109[0].st_atimespec.tv_sec = v471;
                                LOWORD(v1109[0].st_atimespec.tv_nsec) = 2082;
                                *(&v1109[0].st_atimespec.tv_nsec + 2) = v720;
                                WORD1(v1109[0].st_mtimespec.tv_sec) = 1024;
                                HIDWORD(v1109[0].st_mtimespec.tv_sec) = v206;
                                LOWORD(v1109[0].st_mtimespec.tv_nsec) = 1024;
                                *(&v1109[0].st_mtimespec.tv_nsec + 2) = v721;
                                HIWORD(v1109[0].st_mtimespec.tv_nsec) = 2082;
                                v1109[0].st_ctimespec.tv_sec = v316 + 256;
                                v719 = logd;
                                goto LABEL_1330;
                              }
                            }

                            v722 = *(v358 + 1624);
                            if (!v722)
                            {
                              updated = -65537;
                              goto LABEL_1184;
                            }

                            while (1)
                            {
                              Domains = add_record_to_service(v316, v722, v202, v206, v311, v314);
                              if (Domains)
                              {
                                if (*(v722 + 26))
                                {
                                  goto LABEL_294;
                                }
                              }

                              updated = 0;
                              v722 = *v722;
                              if (!v722)
                              {
                                goto LABEL_1184;
                              }
                            }
                          }

LABEL_552:
                          v319 = mDNSLogCategory_mDNS;
                          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                          {
                            updated = -65540;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1184;
                            }
                          }

                          else
                          {
                            v319 = mDNSLogCategory_mDNS_redacted;
                            updated = -65540;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1184;
                            }
                          }

                          v320 = *(v81 + 50);
                          v1109[0].st_dev = 67109120;
                          *&v1109[0].st_mode = v320;
                          v179 = v1109;
                          v180 = v319;
                          v181 = OS_LOG_TYPE_DEFAULT;
                          v182 = "[R%u] DNSServiceAddRecord(unreadable parameters)";
                          goto LABEL_1055;
                        }
                      }

                      else
                      {
                        v205 = 0;
                      }

                      v206 = 0;
                      goto LABEL_531;
                    case 11:
                      v183 = 0;
                      v184 = 0;
                      v186 = v81[10];
                      v185 = v81[11];
                      if (v186)
                      {
                        if (v186 + 4 <= v185)
                        {
                          v183 = 0;
                          v184 = 0;
                          v81[10] = v186 + 4;
                          if (v186 != -4 && v186 + 6 <= v185)
                          {
                            v183 = bswap32(*(v186 + 4)) >> 16;
                            v184 = (v186 + 6);
                          }
                        }
                      }

                      v187 = &v184[v183];
                      if (v187 <= v185)
                      {
                        v188 = v184;
                      }

                      else
                      {
                        v188 = 0;
                      }

                      if (v187 > v185 || v184 == 0)
                      {
                        v190 = 0;
                      }

                      else
                      {
                        v190 = &v184[v183];
                      }

                      v81[10] = v190;
                      if (v190 && (v190 + 1) <= v185)
                      {
                        v191 = *v190;
                        v81[10] = v190 + 1;
                        if (v190 != -4)
                        {
                          *&v1111[0].sa_len = 0;
                          __src[0] = 0;
                          v192 = get_service_attr_tsr_params(v81, v1111, __src);
                          if (!v192)
                          {
                            goto LABEL_768;
                          }

                          v193 = mDNSLogCategory_mDNS;
                          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                          {
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_768;
                            }
                          }

                          else
                          {
                            v193 = mDNSLogCategory_mDNS_redacted;
                            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_768;
                            }
                          }

                          v431 = *(v81 + 50);
                          v1109[0].st_dev = 67109632;
                          *&v1109[0].st_mode = v431;
                          LOWORD(v1109[0].st_ino) = 1024;
                          *(&v1109[0].st_ino + 2) = *&v1111[0].sa_len;
                          HIWORD(v1109[0].st_ino) = 1024;
                          v1109[0].st_uid = __src[0];
                          _os_log_impl(&_mh_execute_header, v193, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceUpdateRecord foundTSRParams tsrTimestamp[%u] hostkeyHash[%x]", v1109, 0x14u);
LABEL_768:
                          v432 = bswap32(v191);
                          v434 = (v81 + 14);
                          v433 = v81[14];
                          if (v433 == connection_termination)
                          {
                            v436 = LocateSubordinateRequest(v81);
                            v435 = v436;
                            v434 = (v436 + 112);
                            v433 = *(v436 + 112);
                            if (v433 == connection_termination)
                            {
                              v512 = *(v436 + 176);
                              updated = -65541;
                              logb = v436;
                              if (v512)
                              {
                                while (*(v512 + 56) != *(v81 + 60))
                                {
                                  v512 = *(v512 + 8);
                                  if (!v512)
                                  {
                                    goto LABEL_1574;
                                  }
                                }

                                if (v192)
                                {
                                  v585 = handle_tsr_update_request(v436, *(v512 + 24), *&v1111[0].sa_len, __src[0]);
                                }

                                else
                                {
                                  v585 = update_record(*(v512 + 24), v183, v188, v432, v512 + 60, *(v436 + 200));
                                }

                                updated = v585;
                                v653 = mDNSLogCategory_mDNS;
                                if (mDNS_SensitiveLoggingEnableCount)
                                {
                                  v654 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
                                }

                                else
                                {
                                  v654 = 1;
                                }

                                if (v654)
                                {
                                  if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_1574;
                                  }

                                  v655 = *(v512 + 24);
                                  v656 = *(v655 + 40);
                                  if (v656)
                                  {
                                    v657 = *(v655 + 40);
                                    do
                                    {
                                      if (!v657)
                                      {
                                        break;
                                      }

                                      v658 = *v657;
                                      if (v658 > 0x3F)
                                      {
                                        break;
                                      }

                                      if (!*v657)
                                      {
                                        v659 = (v657 - v656 + 1);
                                        goto LABEL_1567;
                                      }

                                      v657 += v658 + 1;
                                    }

                                    while (&v657[-v656] < 256);
                                    v659 = 257;
                                  }

                                  else
                                  {
                                    v659 = 0;
                                  }

LABEL_1567:
                                  v809 = *(v435 + 50);
                                  v810 = DNSTypeName(*(v655 + 12));
                                  v811 = *(v435 + 47);
                                  v812 = " & TSR";
                                  if (!v192)
                                  {
                                    v812 = "";
                                  }
                                }

                                else
                                {
                                  v653 = mDNSLogCategory_mDNS_redacted;
                                  if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_1574;
                                  }

                                  v661 = *(v512 + 24);
                                  v656 = *(v661 + 40);
                                  if (v656)
                                  {
                                    v662 = *(v661 + 40);
                                    do
                                    {
                                      if (!v662)
                                      {
                                        break;
                                      }

                                      v663 = *v662;
                                      if (v663 > 0x3F)
                                      {
                                        break;
                                      }

                                      if (!*v662)
                                      {
                                        v659 = (v662 - v656 + 1);
                                        goto LABEL_1571;
                                      }

                                      v662 += v663 + 1;
                                    }

                                    while (&v662[-v656] < 256);
                                    v659 = 257;
                                  }

                                  else
                                  {
                                    v659 = 0;
                                  }

LABEL_1571:
                                  v809 = *(v435 + 50);
                                  v810 = DNSTypeName(*(v661 + 12));
                                  v811 = *(v435 + 47);
                                  v812 = " & TSR";
                                  if (!v192)
                                  {
                                    v812 = "";
                                  }
                                }

                                v1109[0].st_dev = 67110915;
                                *&v1109[0].st_mode = v809;
                                LOWORD(v1109[0].st_ino) = 2160;
                                *(&v1109[0].st_ino + 2) = 1752392040;
                                HIWORD(v1109[0].st_uid) = 1040;
                                v1109[0].st_gid = v659;
                                LOWORD(v1109[0].st_rdev) = 2101;
                                *(&v1109[0].st_rdev + 2) = v656;
                                WORD1(v1109[0].st_atimespec.tv_sec) = 2082;
                                *(&v1109[0].st_atimespec.tv_sec + 4) = v810;
                                WORD2(v1109[0].st_atimespec.tv_nsec) = 2082;
                                *(&v1109[0].st_atimespec.tv_nsec + 6) = v812;
                                HIWORD(v1109[0].st_mtimespec.tv_sec) = 1024;
                                LODWORD(v1109[0].st_mtimespec.tv_nsec) = v811;
                                WORD2(v1109[0].st_mtimespec.tv_nsec) = 2082;
                                *(&v1109[0].st_mtimespec.tv_nsec + 6) = (v435 + 32);
                                _os_log_impl(&_mh_execute_header, v653, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceUpdateRecord(%{sensitive, mask.hash, mdnsresponder:domain_name}.*P, %{public}s%{public}s) PID[%d](%{public}s)", v1109, 0x46u);
                              }

LABEL_1574:
                              v443 = 0;
                              goto LABEL_1575;
                            }
                          }

                          else
                          {
                            v435 = v81;
                          }

                          if (v433 != regservice_termination_callback)
                          {
                            v437 = mDNSLogCategory_mDNS;
                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                            {
                              updated = -65540;
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1184;
                              }
                            }

                            else
                            {
                              v437 = mDNSLogCategory_mDNS_redacted;
                              updated = -65540;
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1184;
                              }
                            }

                            v438 = *(v435 + 50);
                            v1109[0].st_dev = 67109120;
                            *&v1109[0].st_mode = v438;
                            v179 = v1109;
                            v180 = v437;
                            v181 = OS_LOG_TYPE_DEFAULT;
                            v182 = "[R%u] DNSServiceUpdateRecord(not a registered service ref)";
                            goto LABEL_1055;
                          }

                          v439 = v435[16];
                          if (!*(v439 + 24))
                          {
                            v537 = mDNSLogCategory_mDNS;
                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                            {
                              updated = -65540;
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1184;
                              }
                            }

                            else
                            {
                              v537 = mDNSLogCategory_mDNS_redacted;
                              updated = -65540;
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1184;
                              }
                            }

                            v538 = *(v435 + 50);
                            v1109[0].st_dev = 67109120;
                            *&v1109[0].st_mode = v538;
                            v179 = v1109;
                            v180 = v537;
                            v181 = OS_LOG_TYPE_DEFAULT;
                            v182 = "[R%u] DNSServiceUpdateRecord: updating the record of a service registered with zero port";
                            goto LABEL_1055;
                          }

                          if (!v192 && *(v81 + 60) == -1)
                          {
                            v440 = *(v439 + 16);
                            if (v440)
                            {
                              free(v440);
                              *(v439 + 16) = 0;
                            }

                            if (v183)
                            {
                              v441 = malloc_type_malloc(v183, 0x549478ECuLL);
                              if (!v441)
                              {
                                goto LABEL_1949;
                              }

                              *(v439 + 16) = v441;
                              memcpy(v441, v188, v183);
                            }

                            *(v439 + 8) = v183;
                          }

                          logb = v435;
                          v442 = *(v439 + 1624);
                          updated = -65541;
                          if (v442)
                          {
                            v443 = 0;
                            while (1)
                            {
                              v444 = *(v81 + 60);
                              if (v444 == -1)
                              {
                                v443 = (v442 + 484);
                              }

                              else
                              {
                                v445 = v442 + 39;
                                while (1)
                                {
                                  v445 = *v445;
                                  if (!v445)
                                  {
                                    break;
                                  }

                                  if (*(v445 + 2) == v444)
                                  {
                                    v443 = (v445 + 2);
                                    goto LABEL_794;
                                  }
                                }

                                if (!v443)
                                {
                                  goto LABEL_1575;
                                }
                              }

LABEL_794:
                              if (v192)
                              {
                                break;
                              }

                              v446 = update_record(v443, v183, v188, v432, v442 + 27, logb[25].isa);
                              if (v446 && *(v442 + 26))
                              {
                                goto LABEL_1061;
                              }

                              v442 = *v442;
                              if (!v442)
                              {
                                updated = 0;
                                goto LABEL_1575;
                              }
                            }

                            v446 = handle_tsr_update_request(logb, v443, *&v1111[0].sa_len, __src[0]);
LABEL_1061:
                            updated = v446;
LABEL_1575:
                            if (*v434 != regservice_termination_callback)
                            {
                              goto LABEL_1184;
                            }

                            v813 = *(logb[16].isa + 203);
                            if (v813)
                            {
                              v814 = *(v813 + 2736);
                              if (v814)
                              {
                                v815 = mDNS_DomainNameFNV1aHash(*(v813 + 2736));
                                v816 = 0;
                                goto LABEL_1581;
                              }
                            }

                            else
                            {
                              v814 = 0;
                            }

                            v815 = 0;
                            v816 = 1;
LABEL_1581:
                            if (v443)
                            {
                              v817 = *(v443 + 12);
                            }

                            else
                            {
                              v817 = 0;
                            }

                            v818 = mDNSLogCategory_mDNS;
                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                            {
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1184;
                              }

                              if (v816)
                              {
                                v819 = 0;
                              }

                              else
                              {
                                v820 = v814;
                                do
                                {
                                  if (!v820)
                                  {
                                    break;
                                  }

                                  v821 = *v820;
                                  if (v821 > 0x3F)
                                  {
                                    break;
                                  }

                                  if (!*v820)
                                  {
                                    v819 = (v820 - v814 + 1);
                                    goto LABEL_1606;
                                  }

                                  v820 += v821 + 1;
                                }

                                while (v820 - v814 < 256);
                                v819 = 257;
                              }
                            }

                            else
                            {
                              v818 = mDNSLogCategory_mDNS_redacted;
                              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1184;
                              }

                              if (v816)
                              {
                                v819 = 0;
                              }

                              else
                              {
                                v822 = v814;
                                do
                                {
                                  if (!v822)
                                  {
                                    break;
                                  }

                                  v823 = *v822;
                                  if (v823 > 0x3F)
                                  {
                                    break;
                                  }

                                  if (!*v822)
                                  {
                                    v819 = (v822 - v814 + 1);
                                    goto LABEL_1606;
                                  }

                                  v822 += v823 + 1;
                                }

                                while (v822 - v814 < 256);
                                v819 = 257;
                              }
                            }

LABEL_1606:
                            isa = logb[25].isa;
                            isa_high = HIDWORD(logb[23].isa);
                            v1109[0].st_dev = 67110915;
                            *&v1109[0].st_mode = isa;
                            LOWORD(v1109[0].st_ino) = 2160;
                            *(&v1109[0].st_ino + 2) = 1752392040;
                            HIWORD(v1109[0].st_uid) = 1040;
                            v1109[0].st_gid = v819;
                            LOWORD(v1109[0].st_rdev) = 2101;
                            *(&v1109[0].st_rdev + 2) = v814;
                            WORD1(v1109[0].st_atimespec.tv_sec) = 1024;
                            HIDWORD(v1109[0].st_atimespec.tv_sec) = v815;
                            LOWORD(v1109[0].st_atimespec.tv_nsec) = 1024;
                            *(&v1109[0].st_atimespec.tv_nsec + 2) = v817;
                            HIWORD(v1109[0].st_atimespec.tv_nsec) = 1024;
                            LODWORD(v1109[0].st_mtimespec.tv_sec) = isa_high;
                            WORD2(v1109[0].st_mtimespec.tv_sec) = 2080;
                            *(&v1109[0].st_mtimespec.tv_sec + 6) = &logb[32];
                            v696 = v1109;
                            v697 = v818;
                            v698 = OS_LOG_TYPE_DEFAULT;
                            v699 = "[R%u] DNSServiceUpdateRecord(%{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), %{mdns:rrtype}d) UPDATE PID[%d](%s)";
                            v700 = 62;
                            goto LABEL_1607;
                          }

                          goto LABEL_1574;
                        }
                      }

                      else
                      {
                        v81[10] = 0;
                      }

                      v282 = mDNSLogCategory_mDNS;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                      {
                        updated = -65540;
                        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_1184;
                        }
                      }

                      else
                      {
                        v282 = mDNSLogCategory_mDNS_redacted;
                        updated = -65540;
                        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_1184;
                        }
                      }

                      v283 = *(v81 + 50);
                      v1109[0].st_dev = 67109120;
                      *&v1109[0].st_mode = v283;
                      v179 = v1109;
                      v180 = v282;
                      v181 = OS_LOG_TYPE_DEFAULT;
                      v182 = "[R%u] DNSServiceUpdateRecord(unreadable parameters)";
                      goto LABEL_1055;
                    case 12:
                      bzero(v1109, 0x3F1uLL);
                      v229 = 0.0;
                      v1122 = 0u;
                      v1121 = 0u;
                      v1120 = 0u;
                      v1119 = 0u;
                      v1118 = 0u;
                      v1117 = 0u;
                      v1116 = 0u;
                      v1115 = 0u;
                      v1114 = 0u;
                      memset(v1113, 0, sizeof(v1113));
                      memset(v1112, 0, sizeof(v1112));
                      memset(v1111, 0, sizeof(v1111));
                      v230 = v81[10];
                      if (v230 && (v231 = v81[11], v232 = v230 + 4, v232 <= v231))
                      {
                        v81[10] = v232;
                        if (v232)
                        {
                          v233 = v1109;
                          do
                          {
                            v234 = v81[10];
                            if (v234 >= v231 || v233 >= (&v1109[7].st_dev + 1))
                            {
                              *(&v233->st_dev - (v233 == (&v1109[7].st_dev + 1))) = 0;
                              v81[10] = 0;
                              goto LABEL_468;
                            }

                            v81[10] = v234 + 1;
                            v236 = *v234;
                            LOBYTE(v233->st_dev) = v236;
                            v233 = (v233 + 1);
                          }

                          while (v236);
                          v1111[0].sa_len = 0;
                          if (AppendDNSNameString(v1111, v1109))
                          {
                            if (mDNS_LoggingEnabled == 1)
                            {
                              v991 = v1111;
                              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceSetDefaultDomainForUser(%##s)", *(v81 + 46));
                            }

                            goto LABEL_671;
                          }

LABEL_468:
                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceSetDefaultDomainForUser(unreadable parameters)", v229);
                          goto LABEL_1183;
                        }
                      }

                      else
                      {
                        v81[10] = 0;
                      }

                      LOBYTE(v1109[0].st_dev) = 0;
                      goto LABEL_468;
                    case 13:
                      __src[0] = -50331905;
                      *&v1109[1].st_size = v10;
                      v1109[1].st_birthtimespec = v10;
                      v1109[1].st_ctimespec = v10;
                      v1109[1].st_mtimespec = v10;
                      v1109[1].st_atimespec = v10;
                      *&v1109[1].st_uid = v10;
                      *&v1109[1].st_dev = v10;
                      *v1109[0].st_qspare = v10;
                      *&v1109[0].st_blksize = v10;
                      *&v1109[0].st_size = v10;
                      v1109[0].st_birthtimespec = v10;
                      v1109[0].st_ctimespec = v10;
                      v1109[0].st_mtimespec = v10;
                      v1109[0].st_atimespec = v10;
                      *&v1109[0].st_uid = v10;
                      *&v1109[0].st_dev = v10;
                      if (!v81[10])
                      {
                        goto LABEL_669;
                      }

                      v194 = v81[11];
                      v195 = v1109;
                      do
                      {
                        v196 = v81[10];
                        if (v196 >= v194 || v195 >= &v1109[1].st_blksize)
                        {
                          *(&v195->st_dev - (v195 == &v1109[1].st_blksize)) = 0;
                          v81[10] = 0;
                          goto LABEL_669;
                        }

                        v81[10] = v196 + 1;
                        v198 = *v196;
                        LOBYTE(v195->st_dev) = v198;
                        v195 = (v195 + 1);
                      }

                      while (v198);
                      v199 = mDNSLogCategory_Default;
                      if (mDNS_SensitiveLoggingEnableCount)
                      {
                        v200 = mDNSLogCategory_Default == mDNSLogCategory_State;
                      }

                      else
                      {
                        v200 = 1;
                      }

                      if (v200)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_664;
                        }
                      }

                      else
                      {
                        v199 = mDNSLogCategory_Default_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_664:
                          v371 = *(v81 + 50);
                          *&v1111[0].sa_len = 67109378;
                          *&v1111[0].sa_data[2] = v371;
                          *&v1111[0].sa_data[6] = 2082;
                          *&v1111[0].sa_data[8] = v1109;
                          _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceGetProperty(%{public}s)", &v1111[0].sa_len, 0x12u);
                        }
                      }

                      if (*&v1109[0].st_dev == 0x65566E6F6D656144 && *&v1109[0].st_nlink == 0x6E6F6973726556)
                      {
                        *&v1111[0].sa_len = 0x400000000000000;
                        *&v1111[0].sa_data[6] = -1842431573;
                        v373 = *(v81 + 46);
                        v374 = v1111;
                        v375 = 12;
                      }

                      else
                      {
LABEL_669:
                        v373 = *(v81 + 46);
                        v374 = __src;
                        v375 = 4;
                      }

                      send_all(v373, v374, v375);
                      goto LABEL_671;
                    case 14:
                      v107 = 0;
                      v108 = 0;
                      v109 = v81[10];
                      if (v109)
                      {
                        v110 = v81[11];
                        v111 = 0;
                        if ((v109 + 1) <= v110)
                        {
                          v111 = 0;
                          v107 = 0;
                          v108 = bswap32(*v109);
                          v81[10] = v109 + 1;
                          if (v109 != -4 && (v109 + 2) <= v110)
                          {
                            v111 = bswap32(v109[1]);
                            v107 = v109 + 2;
                          }
                        }
                      }

                      else
                      {
                        v111 = 0;
                      }

                      v81[10] = v107;
                      v297 = mDNSPlatformInterfaceIDfromInterfaceIndex(v111);
                      v298 = 0;
                      v299 = 0;
                      v301 = v81[10];
                      v300 = v81[11];
                      if (v301 && v301 + 4 <= v300)
                      {
                        v298 = *(v301 + 3);
                        v299 = (v301 + 4);
                      }

                      v81[10] = v299;
                      if (v111)
                      {
                        updated = -65540;
                        if (!v297)
                        {
                          goto LABEL_1184;
                        }
                      }

                      v302 = v81[20];
                      if (v302)
                      {
                        goto LABEL_510;
                      }

                      v303 = malloc_type_calloc(1uLL, 0xD0uLL, 0xFAAE572AuLL);
                      if (!v303)
                      {
                        goto LABEL_1949;
                      }

                      v302 = v303;
                      v81[20] = v303;
                      v299 = v81[10];
                      v300 = v81[11];
LABEL_510:
                      if ((v299 + 8) <= v300 && (v81[10] = v299 + 1, *(v302 + 182) = *v299, v321 = v81[10], v81[10] = v321 + 1, *(v302 + 183) = *v321, v322 = v81[10], v81[10] = v322 + 1, *v302 = *v322, v323 = v81[10], v81[10] = v323 + 1, *(v302 + 1) = *v323, (v324 = v81[10]) != 0) && (v325 = v324 + 1, (v324 + 1) <= v81[11]))
                      {
                        v326 = *v324;
                        v81[10] = v325;
                        if (v325)
                        {
                          v327 = bswap32(v326);
                          updated = -65540;
                          if (v298)
                          {
                            if (!v302[91])
                            {
                              goto LABEL_1184;
                            }

                            updated = -65540;
                            if ((v298 & 0x30) == 0)
                            {
                              goto LABEL_1184;
                            }
                          }

                          else
                          {
                            if (v302[91])
                            {
                              goto LABEL_1184;
                            }

                            updated = -65540;
                            if (*v302)
                            {
                              goto LABEL_1184;
                            }

                            updated = -65540;
                            if (v327)
                            {
                              goto LABEL_1184;
                            }
                          }

                          *(v81 + 62) = v108;
                          *(v81 + 63) = v111;
                          if (v298 == 16)
                          {
                            v328 = 1;
                          }

                          else
                          {
                            v328 = 2;
                          }

                          if (!v298)
                          {
                            v328 = 0;
                          }

                          *(v302 + 180) = v328;
                          v329 = *v302;
                          v302[92] = v329;
                          *(v302 + 47) = v327;
                          *(v302 + 24) = port_mapping_create_request_callback;
                          *(v302 + 25) = v81;
                          v330 = mDNSLogCategory_Default;
                          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                          {
                            if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1050;
                            }
                          }

                          else
                          {
                            v330 = mDNSLogCategory_Default_redacted;
                            if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_1050;
                            }
                          }

                          v581 = *(v81 + 50);
                          v582 = bswap32(v302[91]);
                          v583 = *(v81 + 47);
                          v1109[0].st_dev = 67110658;
                          *&v1109[0].st_mode = v581;
                          LOWORD(v1109[0].st_ino) = 1024;
                          *(&v1109[0].st_ino + 2) = v298;
                          HIWORD(v1109[0].st_ino) = 1024;
                          v1109[0].st_uid = HIWORD(v582);
                          LOWORD(v1109[0].st_gid) = 1024;
                          *(&v1109[0].st_gid + 2) = __rev16(v329);
                          HIWORD(v1109[0].st_rdev) = 1024;
                          *(&v1109[0].st_rdev + 1) = v327;
                          LOWORD(v1109[0].st_atimespec.tv_sec) = 1024;
                          *(&v1109[0].st_atimespec.tv_sec + 2) = v583;
                          HIWORD(v1109[0].st_atimespec.tv_sec) = 2082;
                          v1109[0].st_atimespec.tv_nsec = (v81 + 32);
                          _os_log_impl(&_mh_execute_header, v330, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceNATPortMappingCreate(%X, %u, %u, %u) START PID[%d](%{public}s)", v1109, 0x30u);
LABEL_1050:
                          updated = mDNS_StartNATOperation(v302 + 1);
                          if (updated)
                          {
                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: mDNS_StartNATOperation: %d", updated);
                          }

                          else
                          {
                            v279 = port_mapping_termination_callback;
LABEL_455:
                            v81[14] = v279;
                          }

                          goto LABEL_1184;
                        }
                      }

                      else
                      {
                        v81[10] = 0;
                      }

                      v304 = mDNSLogCategory_Default;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                      {
                        updated = -65540;
                        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_1184;
                        }
                      }

                      else
                      {
                        v304 = mDNSLogCategory_Default_redacted;
                        updated = -65540;
                        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_1184;
                        }
                      }

                      v305 = *(v81 + 50);
                      v1109[0].st_dev = 67109120;
                      *&v1109[0].st_mode = v305;
                      v179 = v1109;
                      v180 = v304;
                      v181 = OS_LOG_TYPE_DEFAULT;
                      v182 = "[R%u] DNSServiceNATPortMappingCreate(unreadable parameters)";
                      goto LABEL_1055;
                    case 15:
                      if (v81[21])
                      {
                        goto LABEL_221;
                      }

                      v126 = malloc_type_calloc(1uLL, 0x20uLL, 0x24424941uLL);
                      if (!v126)
                      {
                        goto LABEL_1949;
                      }

                      v81[21] = v126;
LABEL_221:
                      bzero(&v1109[0].st_mode, 0x3F4uLL);
                      v128 = v81[10];
                      if (!v128)
                      {
                        goto LABEL_913;
                      }

                      v129 = v81[11];
                      if ((v128 + 4) > v129)
                      {
                        goto LABEL_913;
                      }

                      v130 = v128[1];
                      v131 = *v128;
                      v132 = *(v128 + 1);
                      v81[10] = v128 + 4;
                      if (v128 == -4)
                      {
                        goto LABEL_913;
                      }

                      if ((v128 + 8) > v129)
                      {
                        goto LABEL_913;
                      }

                      v133 = *(v128 + 1);
                      v81[10] = v128 + 8;
                      if (v128 == -8)
                      {
                        goto LABEL_913;
                      }

                      v134 = v128 + 12;
                      if ((v128 + 12) > v129)
                      {
                        goto LABEL_913;
                      }

                      v135 = bswap32(*(v128 + 2));
                      v81[10] = v134;
                      v1109[0].st_dev = v135;
                      updated = -65540;
                      if (!v134)
                      {
                        goto LABEL_1184;
                      }

                      v136 = (v131 << 24) | (v130 << 16) | (bswap32(v132) >> 16);
                      v137 = bswap32(v133);
                      p_st_size = &v1109[0].st_mode;
                      while (1)
                      {
                        v139 = v81[10];
                        if (v139 >= v129 || p_st_size >= &v1109[7].st_mode + 1)
                        {
                          break;
                        }

                        v81[10] = v139 + 1;
                        v141 = *v139;
                        *p_st_size++ = v141;
                        if (!v141)
                        {
                          v142 = v81[10];
                          if (!v142)
                          {
                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceGetAddrInfo(unreadable parameters)", v127);
                            goto LABEL_1183;
                          }

                          HIBYTE(v1109[7].st_mode) = 0;
                          if ((v81[28] & 2) != 0)
                          {
                            v143 = v81[11];
                            v144 = v142;
                            do
                            {
                              if (v143 - v144 < 4)
                              {
                                goto LABEL_242;
                              }

                              v145 = v144 + 4;
                              if (v144 == -4)
                              {
                                goto LABEL_242;
                              }

                              v146 = __rev16(*(v144 + 1));
                              if (v143 - v145 < v146)
                              {
                                goto LABEL_242;
                              }

                              v147 = __rev16(*v144);
                              v144 = &v145[v146];
                            }

                            while (v147 != 1);
                            *v81 = Querier_RegisterCustomDNSServiceWithPListData(v145, v146);
LABEL_242:
                            HIBYTE(v1109[7].st_mode) = get_tlv_uint32(v142, v143, 2, 0) != 0;
                          }

                          *__src = 0;
                          signed_data_tlvs = _get_signed_data_tlvs(v81, __src);
                          if (*(v81 + 290))
                          {
                            if (signed_data_tlvs)
                            {
                              *buf = 0;
                              v149 = mdns_signed_resolve_result_create_from_data(signed_data_tlvs, *__src, buf);
                              if (v149 && !*buf)
                              {
                                v81[7] = v149;
                                goto LABEL_248;
                              }

                              v709 = *buf;
                              v710 = mDNSLogCategory_Default;
                              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                              {
                                if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                                {
                                  goto LABEL_1375;
                                }
                              }

                              else
                              {
                                v710 = mDNSLogCategory_Default_redacted;
                                if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                                {
LABEL_1375:
                                  *&v1111[0].sa_len = 134218240;
                                  *&v1111[0].sa_data[2] = *__src;
                                  *&v1111[0].sa_data[10] = 2048;
                                  *&v1111[0].sa_data[12] = v709;
                                  v725 = v710;
                                  v726 = "get_signed_resolve_tlvs len %zu data invalid %ld";
                                  v727 = 22;
LABEL_1376:
                                  _os_log_impl(&_mh_execute_header, v725, OS_LOG_TYPE_DEBUG, v726, &v1111[0].sa_len, v727);
                                }
                              }

LABEL_1377:
                              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: handle_addrinfo_request err reading Validation TLVS", *(v81 + 46));
                              updated = -65549;
                              goto LABEL_1184;
                            }

                            v624 = mDNSLogCategory_Default;
                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                            {
                              if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                              {
                                goto LABEL_1377;
                              }
                            }

                            else
                            {
                              v624 = mDNSLogCategory_Default_redacted;
                              if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                              {
                                goto LABEL_1377;
                              }
                            }

                            *&v1111[0].sa_len = 0;
                            v725 = v624;
                            v726 = "get_signed_resolve_tlvs data invalid";
                            v727 = 2;
                            goto LABEL_1376;
                          }

LABEL_248:
                          *(v81 + 62) = v136;
                          *(v81 + 63) = v137;
                          v150 = _os_feature_enabled_impl();
                          memset(v1111, 0, sizeof(v1111));
                          memset(v1112, 0, sizeof(v1112));
                          memset(v1113, 0, sizeof(v1113));
                          v1114 = 0u;
                          v1115 = 0u;
                          v1116 = 0u;
                          v1117 = 0u;
                          v1118 = 0u;
                          v1119 = 0u;
                          v1120 = 0u;
                          v1121 = 0u;
                          v1122 = 0u;
                          AppendDNSNameString(v1111, &v1109[0].st_mode);
                          v151 = _shouldLogFullRequestInfo(v81 + 51, v81 + 52);
                          v152 = mDNSLogCategory_Default;
                          if (mDNS_SensitiveLoggingEnableCount)
                          {
                            v153 = mDNSLogCategory_Default == mDNSLogCategory_State;
                          }

                          else
                          {
                            v153 = 1;
                          }

                          v154 = v153;
                          if ((v130 & 0x20) != 0 && v150)
                          {
                            if (v151)
                            {
                              if (v154)
                              {
                                if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                                {
                                  v155 = v1111;
                                  log = *(v81 + 50);
                                  while (1)
                                  {
                                    if (!v155 || (sa_len = v155->sa_len, sa_len > 0x3F))
                                    {
LABEL_264:
                                      v157 = 257;
                                      goto LABEL_1626;
                                    }

                                    if (!v155->sa_len)
                                    {
                                      break;
                                    }

                                    v155 = (v155 + sa_len + 1);
                                    if (v155 - v1111 >= 256)
                                    {
                                      goto LABEL_264;
                                    }
                                  }

                                  v157 = (v155 - v1111 + 1);
                                  goto LABEL_1626;
                                }

LABEL_1629:
                                v81[14] = 0;
                                v852 = v81[7];
                                if (v852)
                                {
                                  if (*(v852 + 16) == &_mdns_signed_resolve_result_kind && mdns_signed_resolve_result_contains(v81[7], &v1109[0].st_mode, v137))
                                  {
                                    v853 = (*(*(v852 + 16) + 56))(v852);
                                    v854 = mdns_system_is_signed_result_uuid_valid(v853);
                                    v855 = mDNSLogCategory_Default;
                                    if (mDNS_SensitiveLoggingEnableCount)
                                    {
                                      v856 = mDNSLogCategory_Default == mDNSLogCategory_State;
                                    }

                                    else
                                    {
                                      v856 = 1;
                                    }

                                    v857 = v856;
                                    if (!v854)
                                    {
                                      if (v857)
                                      {
                                        updated = -65570;
                                        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
                                        {
                                          goto LABEL_1184;
                                        }
                                      }

                                      else
                                      {
                                        v855 = mDNSLogCategory_Default_redacted;
                                        updated = -65570;
                                        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                                        {
                                          goto LABEL_1184;
                                        }
                                      }

                                      v862 = *(v81 + 50);
                                      __src[0] = 67109120;
                                      __src[1] = v862;
                                      v696 = __src;
                                      v697 = v855;
                                      v698 = OS_LOG_TYPE_ERROR;
                                      v699 = "[R%u] DNSServiceGetAddrInfo: Signed result UUID revoked.";
                                      goto LABEL_1297;
                                    }

                                    if (v857)
                                    {
                                      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                                      {
LABEL_1656:
                                        v863 = *(v81 + 50);
                                        __src[0] = 67109120;
                                        __src[1] = v863;
                                        _os_log_impl(&_mh_execute_header, v855, OS_LOG_TYPE_DEBUG, "[R%u] DNSServiceGetAddrInfo: Allowing signed result", __src, 8u);
                                      }
                                    }

                                    else
                                    {
                                      v855 = mDNSLogCategory_Default_redacted;
                                      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                                      {
                                        goto LABEL_1656;
                                      }
                                    }

LABEL_1657:
                                    Domains = _handle_addrinfo_request_start(v81, &v1109[0].st_dev);
                                    goto LABEL_294;
                                  }

                                  v858 = mDNSLogCategory_Default;
                                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                                  {
                                    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
                                    {
                                      goto LABEL_1647;
                                    }
                                  }

                                  else
                                  {
                                    v858 = mDNSLogCategory_Default_redacted;
                                    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                                    {
LABEL_1647:
                                      v859 = *(v81 + 50);
                                      v860 = *(v81 + 63);
                                      __src[0] = 67109891;
                                      __src[1] = v859;
                                      LOWORD(__src[2]) = 2160;
                                      *(&__src[2] + 2) = 1752392040;
                                      HIWORD(__src[4]) = 2085;
                                      *&__src[5] = &v1109[0].st_mode;
                                      LOWORD(__src[7]) = 1024;
                                      *(&__src[7] + 2) = v860;
                                      _os_log_impl(&_mh_execute_header, v858, OS_LOG_TYPE_ERROR, "[R%u] DNSServiceGetAddrInfo: Signed result does not cover hostname: %{sensitive, mask.hash}s, ifindex: %u.", __src, 0x22u);
                                    }
                                  }

                                  *(v81 + 290) = 0;
                                  v861 = v81[7];
                                  if (v861)
                                  {
                                    os_release(v861);
                                    v81[7] = 0;
                                  }
                                }

                                if (_os_feature_enabled_impl())
                                {
                                  Domains = _handle_addrinfo_request_with_trust(v81, v1109);
                                  goto LABEL_294;
                                }

                                goto LABEL_1657;
                              }

                              v152 = mDNSLogCategory_Default_redacted;
                              if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1629;
                              }

                              v741 = v1111;
                              log = *(v81 + 50);
                              while (1)
                              {
                                if (!v741 || (v742 = v741->sa_len, v742 > 0x3F))
                                {
LABEL_1411:
                                  v157 = 257;
                                  goto LABEL_1626;
                                }

                                if (!v741->sa_len)
                                {
                                  break;
                                }

                                v741 = (v741 + v742 + 1);
                                if (v741 - v1111 >= 256)
                                {
                                  goto LABEL_1411;
                                }
                              }

                              v157 = (v741 - v1111 + 1);
LABEL_1626:
                              st_dev = v1109[0].st_dev;
                              v848 = *(v81 + 62);
                              v849 = *(v81 + 63);
                              v850 = *(v81 + 47);
                              v851 = mDNS_DomainNameFNV1aHash(&v1111[0].sa_len);
                              __src[0] = 67111427;
                              __src[1] = log;
                              LOWORD(__src[2]) = 2160;
                              *(&__src[2] + 2) = 1752392040;
                              HIWORD(__src[4]) = 1040;
                              __src[5] = v157;
                              LOWORD(__src[6]) = 2101;
                              *(&__src[6] + 2) = v1111;
                              HIWORD(__src[8]) = 1024;
                              __src[9] = st_dev;
                              LOWORD(__src[10]) = 1024;
                              *(&__src[10] + 2) = v848;
                              HIWORD(__src[11]) = 1024;
                              LODWORD(v1054[0]) = v849;
                              WORD2(v1054[0]) = 1024;
                              *(v1054 + 6) = v850;
                              WORD5(v1054[0]) = 2082;
                              *(v1054 + 12) = v81 + 32;
                              WORD2(v1054[1]) = 1024;
                              *(&v1054[1] + 6) = v851;
                              v774 = v152;
                              v775 = "[R%u] DNSServiceGetAddrInfo START -- hostname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, protocols: %u, DNSSEC enabled, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
LABEL_1627:
                              v776 = 74;
LABEL_1628:
                              _os_log_impl(&_mh_execute_header, v774, OS_LOG_TYPE_DEFAULT, v775, __src, v776);
                              goto LABEL_1629;
                            }

                            if (v154)
                            {
                              if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1629;
                              }
                            }

                            else
                            {
                              v152 = mDNSLogCategory_Default_redacted;
                              if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1629;
                              }
                            }
                          }

                          else
                          {
                            if (v151)
                            {
                              if (v154)
                              {
                                if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1629;
                                }

                                v610 = v1111;
                                logf = *(v81 + 50);
                                while (1)
                                {
                                  if (!v610 || (v611 = v610->sa_len, v611 > 0x3F))
                                  {
LABEL_1122:
                                    v612 = 257;
                                    goto LABEL_1622;
                                  }

                                  if (!v610->sa_len)
                                  {
                                    break;
                                  }

                                  v610 = (v610 + v611 + 1);
                                  if (v610 - v1111 >= 256)
                                  {
                                    goto LABEL_1122;
                                  }
                                }

                                v612 = (v610 - v1111 + 1);
                              }

                              else
                              {
                                v152 = mDNSLogCategory_Default_redacted;
                                if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_1629;
                                }

                                v739 = v1111;
                                logf = *(v81 + 50);
                                while (1)
                                {
                                  if (!v739 || (v740 = v739->sa_len, v740 > 0x3F))
                                  {
LABEL_1404:
                                    v612 = 257;
                                    goto LABEL_1622;
                                  }

                                  if (!v739->sa_len)
                                  {
                                    break;
                                  }

                                  v739 = (v739 + v740 + 1);
                                  if (v739 - v1111 >= 256)
                                  {
                                    goto LABEL_1404;
                                  }
                                }

                                v612 = (v739 - v1111 + 1);
                              }

LABEL_1622:
                              v842 = v1109[0].st_dev;
                              v843 = *(v81 + 62);
                              v844 = *(v81 + 63);
                              v845 = *(v81 + 47);
                              v846 = mDNS_DomainNameFNV1aHash(&v1111[0].sa_len);
                              __src[0] = 67111427;
                              __src[1] = logf;
                              LOWORD(__src[2]) = 2160;
                              *(&__src[2] + 2) = 1752392040;
                              HIWORD(__src[4]) = 1040;
                              __src[5] = v612;
                              LOWORD(__src[6]) = 2101;
                              *(&__src[6] + 2) = v1111;
                              HIWORD(__src[8]) = 1024;
                              __src[9] = v842;
                              LOWORD(__src[10]) = 1024;
                              *(&__src[10] + 2) = v843;
                              HIWORD(__src[11]) = 1024;
                              LODWORD(v1054[0]) = v844;
                              WORD2(v1054[0]) = 1024;
                              *(v1054 + 6) = v845;
                              WORD5(v1054[0]) = 2082;
                              *(v1054 + 12) = v81 + 32;
                              WORD2(v1054[1]) = 1024;
                              *(&v1054[1] + 6) = v846;
                              v774 = v152;
                              v775 = "[R%u] DNSServiceGetAddrInfo START -- hostname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, protocols: %u, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
                              goto LABEL_1627;
                            }

                            if (v154)
                            {
                              if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1629;
                              }
                            }

                            else
                            {
                              v152 = mDNSLogCategory_Default_redacted;
                              if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_1629;
                              }
                            }
                          }

                          v772 = *(v81 + 50);
                          v773 = mDNS_DomainNameFNV1aHash(&v1111[0].sa_len);
                          __src[0] = 67109376;
                          __src[1] = v772;
                          LOWORD(__src[2]) = 1024;
                          *(&__src[2] + 2) = v773;
                          v774 = v152;
                          v775 = "[R%u] DNSServiceGetAddrInfo START -- name hash: %x";
                          v776 = 14;
                          goto LABEL_1628;
                        }
                      }

                      v456 = p_st_size == &v1109[7].st_mode + 1;
                      goto LABEL_908;
                    case 16:
                    case 17:
                      goto LABEL_192;
                    case 18:
                      v1065 = v10;
                      v1064 = v10;
                      v1063 = v10;
                      v1062 = v10;
                      v1061 = v10;
                      v1060 = v10;
                      v1059 = v10;
                      v1058 = v10;
                      v1057 = v10;
                      v1056 = v10;
                      v1055 = v10;
                      v1054[1] = v10;
                      v1054[0] = v10;
                      *&__src[8] = v10;
                      *&__src[4] = v10;
                      *__src = v10;
                      bzero(v1109, 0x3F1uLL);
                      bzero(v1111, 0x3F1uLL);
                      v1108 = 0u;
                      v1107 = 0u;
                      v1106 = 0u;
                      v1105 = 0u;
                      v1104 = 0u;
                      v1103 = 0u;
                      v1102 = 0u;
                      v1101 = 0u;
                      v1100 = 0u;
                      v1099 = 0u;
                      v1098 = 0u;
                      v1097 = 0u;
                      v1096 = 0u;
                      memset(buf, 0, sizeof(buf));
                      v237 = v81[10];
                      if (v237 && (v238 = v81[11], v239 = v237 + 1, (v237 + 1) <= v238))
                      {
                        v240 = *v237;
                        v81[10] = v239;
                        if (v239)
                        {
                          v241 = bswap32(v240);
                          v242 = __src;
                          do
                          {
                            v243 = v81[10];
                            if (v243 >= v238 || v242 >= v1066)
                            {
                              v369 = v242 - (v242 == v1066);
                              goto LABEL_1046;
                            }

                            v81[10] = v243 + 1;
                            v245 = *v243;
                            *v242 = v245;
                            v242 = (v242 + 1);
                          }

                          while (v245);
                          if (v81[10])
                          {
                            v246 = v81[11];
                            v247 = v1109;
                            do
                            {
                              v248 = v81[10];
                              if (v248 >= v246 || v247 >= (&v1109[7].st_dev + 1))
                              {
                                v484 = v247 == (&v1109[7].st_dev + 1);
                                goto LABEL_1042;
                              }

                              v81[10] = v248 + 1;
                              v250 = *v248;
                              LOBYTE(v247->st_dev) = v250;
                              v247 = (v247 + 1);
                            }

                            while (v250);
                            if (v81[10])
                            {
                              v251 = v81[11];
                              v247 = v1111;
                              while (1)
                              {
                                v252 = v81[10];
                                if (v252 >= v251 || v247 >= v1123)
                                {
                                  break;
                                }

                                v81[10] = v252 + 1;
                                v254 = *v252;
                                LOBYTE(v247->st_dev) = v254;
                                v247 = (v247 + 1);
                                if (!v254)
                                {
                                  if (!v81[10])
                                  {
                                    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: PeerConnectionRelease(unreadable parameters)", 0.0);
                                    goto LABEL_1183;
                                  }

                                  if ((build_domainname_from_strings(buf, __src, v1109, v1111) & 0x80000000) != 0)
                                  {
                                    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: handle_release_request bad “%s” “%s” “%s”", v255);
                                    goto LABEL_1183;
                                  }

                                  v256 = mDNSLogCategory_Default;
                                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                                  {
                                    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v257 = *(v81 + 50);
                                      v723 = buf;
                                      while (1)
                                      {
                                        if (!v723 || (v724 = *v723, v724 > 0x3F))
                                        {
LABEL_1344:
                                          v260 = 257;
                                          goto LABEL_1612;
                                        }

                                        if (!*v723)
                                        {
                                          break;
                                        }

                                        v723 += v724 + 1;
                                        if (v723 - buf >= 256)
                                        {
                                          goto LABEL_1344;
                                        }
                                      }

                                      v260 = (v723 - buf + 1);
LABEL_1612:
                                      v831 = *(v81 + 47);
                                      *aBlock = 67110659;
                                      *&aBlock[4] = v257;
                                      *&aBlock[8] = 1024;
                                      *&aBlock[10] = v241;
                                      *&aBlock[14] = 2160;
                                      *&aBlock[16] = 1752392040;
                                      *&aBlock[24] = 1040;
                                      *&aBlock[26] = v260;
                                      *&aBlock[30] = 2101;
                                      *&aBlock[32] = buf;
                                      *&aBlock[40] = 1024;
                                      *&aBlock[42] = v831;
                                      *&aBlock[46] = 2082;
                                      *&aBlock[48] = v81 + 32;
                                      _os_log_impl(&_mh_execute_header, v256, OS_LOG_TYPE_DEFAULT, "[R%u] PeerConnectionRelease(%X %{sensitive, mask.hash, mdnsresponder:domain_name}.*P) START PID[%d](%{public}s)", aBlock, 0x38u);
                                    }
                                  }

                                  else
                                  {
                                    v256 = mDNSLogCategory_Default_redacted;
                                    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v257 = *(v81 + 50);
                                      v258 = buf;
                                      while (1)
                                      {
                                        if (!v258 || (v259 = *v258, v259 > 0x3F))
                                        {
LABEL_424:
                                          v260 = 257;
                                          goto LABEL_1612;
                                        }

                                        if (!*v258)
                                        {
                                          break;
                                        }

                                        v258 += v259 + 1;
                                        if (v258 - buf >= 256)
                                        {
                                          goto LABEL_424;
                                        }
                                      }

                                      v260 = (v258 - buf + 1);
                                      goto LABEL_1612;
                                    }
                                  }

                                  external_connection_release(buf);
LABEL_671:
                                  updated = 0;
                                  goto LABEL_1184;
                                }
                              }

                              v484 = v247 == v1123;
LABEL_1042:
                              v580 = v484;
                              v369 = v247 - v580;
LABEL_1046:
                              *v369 = 0;
                              v81[10] = 0;
                            }

                            else
                            {
                              v1111[0].sa_len = 0;
                            }
                          }

                          else
                          {
                            LOBYTE(v1109[0].st_dev) = 0;
                          }

LABEL_1047:
                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: handle_release_request - Couldn't read name/regtype/domain", 0.0, v990, v991, v992, v993);
                          goto LABEL_1183;
                        }
                      }

                      else
                      {
                        v81[10] = 0;
                      }

                      LOBYTE(__src[0]) = 0;
                      goto LABEL_1047;
                    case 19:
                      v106 = mDNSLogCategory_Default;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                      {
                        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_438;
                        }
                      }

                      else
                      {
                        v106 = mDNSLogCategory_Default_redacted;
                        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_438;
                        }
                      }

                      v265 = *(v81 + 50);
                      v266 = *(v81 + 47);
                      v1109[0].st_dev = 67109634;
                      *&v1109[0].st_mode = v265;
                      LOWORD(v1109[0].st_ino) = 1024;
                      *(&v1109[0].st_ino + 2) = v266;
                      HIWORD(v1109[0].st_ino) = 2082;
                      *&v1109[0].st_uid = v81 + 32;
                      _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceCreateDelegateConnection START PID[%d](%{public}s)", v1109, 0x18u);
LABEL_438:
                      v81[14] = connection_termination;
                      v267 = mDNSLogCategory_Default;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                      {
                        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_444;
                        }
                      }

                      else
                      {
                        v267 = mDNSLogCategory_Default_redacted;
                        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_444;
                        }
                      }

                      v268 = *(v81 + 50);
                      v269 = *(v81 + 47);
                      v1109[0].st_dev = 67109634;
                      *&v1109[0].st_mode = v268;
                      LOWORD(v1109[0].st_ino) = 1024;
                      *(&v1109[0].st_ino + 2) = v269;
                      HIWORD(v1109[0].st_ino) = 2082;
                      *&v1109[0].st_uid = v81 + 32;
                      _os_log_impl(&_mh_execute_header, v267, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceCreateDelegateConnection START PID[%d](%{public}s)", v1109, 0x18u);
LABEL_444:
                      v81[14] = connection_termination;
                      v270 = v81[10];
                      if (v270 && (v271 = v270 + 1, (v270 + 1) <= v81[11]))
                      {
                        v272 = bswap32(*v270);
                        v81[10] = v271;
                        if (v272)
                        {
                          v1109[0].st_dev = 4;
                          if (getsockopt(*(v81 + 46), 0, 3, v81 + 188, v1109))
                          {
                            v273 = mDNSLogCategory_Default;
                            __error();
                            v274 = __error();
                            v991 = strerror(*v274);
                            LogMsgWithLevel(v273, OS_LOG_TYPE_DEFAULT, "handle_connection_delegate_request: getsockopt for LOCAL_PEEREPID failed errno:%d / %s");
                          }

                          else
                          {
                            mdns_system_pid_to_name(*(v81 + 47), (v81 + 32));
                          }

                          goto LABEL_671;
                        }
                      }

                      else
                      {
                        v81[10] = 0;
                      }

                      v1109[0].st_dev = 16;
                      if (getsockopt(*(v81 + 46), 0, 5, v81 + 34, v1109))
                      {
                        v275 = mDNSLogCategory_Default;
                        __error();
                        v276 = __error();
                        v991 = strerror(*v276);
                        LogMsgWithLevel(v275, OS_LOG_TYPE_DEFAULT, "handle_connection_delegate_request: getsockopt for LOCAL_PEEREUUID failed errno:%d / %s");
                      }

                      else
                      {
                        *(v81 + 288) = 1;
                      }

                      goto LABEL_671;
                    default:
                      if (v84 != 63)
                      {
LABEL_192:
                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "request_callback: %3d:ERROR: Unsupported UDS req:%d PID[%d][%s]", 0.0);
                        goto LABEL_1183;
                      }

                      v105 = mDNSLogCategory_Default;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                      {
                        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                        {
                          goto LABEL_486;
                        }
                      }

                      else
                      {
                        v105 = mDNSLogCategory_Default_redacted;
                        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                        {
                          goto LABEL_486;
                        }
                      }

                      v292 = *(v81 + 50);
                      v294 = *(v81 + 58);
                      v293 = *(v81 + 59);
                      v1109[0].st_dev = 67109632;
                      *&v1109[0].st_mode = v292;
                      LOWORD(v1109[0].st_ino) = 1024;
                      *(&v1109[0].st_ino + 2) = v293;
                      HIWORD(v1109[0].st_ino) = 1024;
                      v1109[0].st_uid = v294;
                      _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEBUG, "[R%u] Cancel %08X %08X", v1109, 0x14u);
LABEL_486:
                      v295 = all_requests;
                      if (!all_requests)
                      {
                        goto LABEL_671;
                      }

                      v296 = &all_requests;
                      do
                      {
                        if (*(v295 + 24) == v81 && *(v295 + 232) == *(v81 + 58) && *(v295 + 236) == *(v81 + 59))
                        {
                          *&v1109[0].st_dev = v295;
                          abort_request(v295);
                          *v296 = *(v295 + 16);
                          request_state_forget(v1109);
                        }

                        else
                        {
                          v296 = (v295 + 16);
                        }

                        updated = 0;
                        v295 = *v296;
                      }

                      while (*v296);
                      goto LABEL_1184;
                  }
                }

                set_peer_pid(v81);
              }

              v10 = 0;
              goto LABEL_144;
            }

            if (v9[14])
            {
              goto LABEL_141;
            }

            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "request_callback: Reg/Add/Update/Remove %d require existing connection PID[%d][%s]", 0.0);
          }

          break;
      }

      goto LABEL_1947;
    }

    break;
  }

  if ((v12 - 3) >= 2)
  {
    if (v12 == 1)
    {
      return;
    }

    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "request_callback: req->ts %d != t_complete PID[%d][%s]", 0.0);
  }

LABEL_1947:
  AbortUnlinkAndFree(v9);
}

uint64_t mDNSPlatformInterfaceIDfromInterfaceIndex(int a1)
{
  if (a1 > -2)
  {
    if (a1 == -1)
    {
      v2 = &mDNSInterface_LocalOnly;
      return *v2;
    }

    if (!a1)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (a1 == -4)
  {
    v2 = &mDNSInterface_BLE;
    return *v2;
  }

  if (a1 != -3)
  {
LABEL_7:
    v3 = *mDNSStorage[0];
    if (*mDNSStorage[0])
    {
      while (!*(v3 + 3768) || *(v3 + 3720) != a1)
      {
        v3 = *(v3 + 3680);
        if (!v3)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_20;
    }

LABEL_11:
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformInterfaceIDfromInterfaceIndex: InterfaceID for interface index %d not found; Updating interface list", a1);
    }

    mDNSMacOSXNetworkChanged();
    v3 = *mDNSStorage[0];
    if (*mDNSStorage[0])
    {
      while (!*(v3 + 3768) || *(v3 + 3720) != a1)
      {
        v3 = *(v3 + 3680);
        if (!v3)
        {
          return 0;
        }
      }

LABEL_20:
      v2 = (v3 + 3552);
      return *v2;
    }

    return 0;
  }

  v2 = &mDNSInterface_P2P;
  return *v2;
}

uint64_t ChopSubTypes(unsigned __int8 *a1)
{
  while (1)
  {
    v1 = *a1;
    if (v1 == 44)
    {
      break;
    }

    if (v1 == 92)
    {
      if (a1[1])
      {
        v2 = 2;
        goto LABEL_9;
      }
    }

    else if (!*a1)
    {
      v3 = 0;
      goto LABEL_10;
    }

LABEL_8:
    v2 = 1;
LABEL_9:
    a1 += v2;
  }

  v1 = a1[1];
  if (!a1[1])
  {
    goto LABEL_8;
  }

  v3 = 0;
LABEL_27:
  *a1++ = 0;
LABEL_10:
  if (v1)
  {
    if (v1 != 44)
    {
      v3 = (v3 + 1);
      while (1)
      {
        if (v1 <= 91)
        {
          switch(v1)
          {
            case 0:
              goto LABEL_10;
            case 44:
              if (a1[1])
              {
                v1 = a1[1];
                goto LABEL_27;
              }

              goto LABEL_10;
            case 46:
              return 0xFFFFFFFFLL;
          }
        }

        else if (v1 == 92 && a1[1])
        {
          v4 = 2;
          goto LABEL_21;
        }

        v4 = 1;
LABEL_21:
        a1 += v4;
        v1 = *a1;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return v3;
}

uint64_t register_service_instance(uint64_t a1, _BYTE *a2)
{
  v3 = a1;
  v4 = *(a1 + 128);
  v5 = *(v4 + 8);
  if (v5 <= 0x108)
  {
    v6 = 5048;
  }

  else
  {
    v6 = v5 + 4784;
  }

  v7 = SameDomainNameBytes(a2, "\x05local");
  v8 = *v4;
  v82 = 0;
  service_attr_tsr_params = get_service_attr_tsr_params(v3, &v82 + 1, &v82);
  if (service_attr_tsr_params)
  {
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    memset(buf, 0, sizeof(buf));
    v10 = HIDWORD(v82);
    *__tp = 0;
    *&__tp[8] = 0;
    clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
    if (v10 > 0x93A80)
    {
      v11 = mDNSLogCategory_mDNS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
      {
        v12 = 4294901756;
        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
        {
LABEL_50:
          *__tp = 67109376;
          *&__tp[4] = HIDWORD(v82);
          *&__tp[8] = 1024;
          *&__tp[10] = 604800;
          v33 = "tsrTimestamp[%u] out of range (%d) on TSR";
          v34 = v11;
          v35 = OS_LOG_TYPE_ERROR;
          v36 = 14;
LABEL_133:
          _os_log_impl(&_mh_execute_header, v34, v35, v33, __tp, v36);
        }
      }

      else
      {
        v11 = mDNSLogCategory_mDNS_redacted;
        v12 = 4294901756;
        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }
      }

      return v12;
    }

    v79 = v7;
    v78 = *__tp;
    v24 = HIDWORD(v82);
    ConstructServiceName(buf, (v4 + 26), (v4 + 1099), a2);
    v25 = DomainNameHashValue(buf);
    v26 = mDNSGetTSRForAuthRecordNamed(xmmword_100170360, buf, v25);
    if (v26)
    {
      v27 = v26;
      v81[0] = v24;
      v81[1] = v82;
      v81[2] = 0;
      if (conflictWithAuthRecordsOrFlush(0, v81, v26) == 1)
      {
        v28 = mDNSLogCategory_mDNS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
          {
LABEL_84:
            GetRRDisplayString_rdb(v27 + 8, (v27[6] + 4), word_1001789D0);
            v50 = v27[4];
            *__tp = 141558531;
            *&__tp[4] = 1752392040;
            *&__tp[12] = 2085;
            *&__tp[14] = word_1001789D0;
            *&__tp[22] = 2048;
            *&__tp[24] = v50;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "register_service_instance: TSR Stale data, auth cache is newer %{sensitive, mask.hash}s InterfaceID %p", __tp, 0x20u);
          }
        }

        else
        {
          v28 = mDNSLogCategory_mDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_84;
          }
        }

        return 4294901724;
      }
    }

    if (conflictWithCacheRecordsOrFlush(v25, buf, v24, v82))
    {
      v12 = 4294901724;
      v29 = mDNSLogCategory_mDNS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          return v12;
        }

        v48 = buf;
        while (1)
        {
          if (!v48 || (v49 = *v48, v49 > 0x3F))
          {
LABEL_82:
            v32 = 257;
            goto LABEL_132;
          }

          if (!*v48)
          {
            break;
          }

          v48 += v49 + 1;
          if (v48 - buf >= 256)
          {
            goto LABEL_82;
          }
        }

        v32 = (v48 - buf + 1);
      }

      else
      {
        v29 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return v12;
        }

        v30 = buf;
        while (1)
        {
          if (!v30 || (v31 = *v30, v31 > 0x3F))
          {
LABEL_48:
            v32 = 257;
            goto LABEL_132;
          }

          if (!*v30)
          {
            break;
          }

          v30 += v31 + 1;
          if (v30 - buf >= 256)
          {
            goto LABEL_48;
          }
        }

        v32 = (v30 - buf + 1);
      }

LABEL_132:
      *__tp = 141558787;
      *&__tp[4] = 1752392040;
      *&__tp[12] = 1040;
      *&__tp[14] = v32;
      *&__tp[18] = 2101;
      *&__tp[20] = buf;
      *&__tp[28] = 2048;
      *&__tp[30] = v8;
      v33 = "register_service_instance: TSR Stale Data, record cache is newer %{sensitive, mask.hash, mdnsresponder:domain_name}.*P InterfaceID %p";
      v34 = v29;
      v35 = OS_LOG_TYPE_DEFAULT;
      v36 = 38;
      goto LABEL_133;
    }

    v13 = v78 - v10;
    v7 = v79;
  }

  else
  {
    v13 = 0;
  }

  if (v7)
  {
    v14 = 1;
  }

  else
  {
    v14 = *(v4 + 1355) == 0;
  }

  if (v14)
  {
    v15 = v8;
  }

  else
  {
    v15 = 0;
  }

  v16 = (v4 + 1624);
  v17 = *(v4 + 1624);
  if (v17)
  {
    while (!SameDomainNameBytes(v17 + 28, a2))
    {
      v16 = *v16;
      v17 = *v16;
      if (!*v16)
      {
        goto LABEL_20;
      }
    }

    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "register_service_instance: domain %##s already registered for %#s.%##s", a2, v4 + 26, v4 + 1099);
    return 4294901749;
  }

LABEL_20:
  result = malloc_type_calloc(1uLL, v6, 0xC1DA0F9CuLL);
  if (result)
  {
    v19 = result;
    *result = 0;
    *(result + 8) = v3;
    *(result + 24) = 0;
    if (v7)
    {
      v20 = *(v4 + 1355) == 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = !v20;
    *(result + 26) = v21;
    *(result + 27) = 0;
    v22 = a2;
    v77 = v15;
    do
    {
      if (!v22)
      {
        break;
      }

      v23 = *v22;
      if (v23 > 0x3F)
      {
        break;
      }

      if (!*v22)
      {
        v37 = v22 - a2 + 1;
        if (v37 <= 0x100u)
        {
          memcpy((result + 28), a2, v37);
          goto LABEL_56;
        }

        break;
      }

      v22 += v23 + 1;
    }

    while (v22 - a2 <= 255);
    *(result + 28) = 0;
LABEL_56:
    v38 = *(v4 + 1616);
    v75 = v13;
    v80 = v7;
    if (v38)
    {
      v76 = v19;
      result = malloc_type_calloc(1uLL, 1176 * v38, 0xC23BDF25uLL);
      if (result)
      {
        v39 = result;
        v40 = 0;
        v41 = (v4 + 90);
        while (1)
        {
          v42 = v39 + 1176 * v40;
          mDNS_SetupResourceRecord(v42, 0, 0, 255, 0x1194u, 0, 0, 0, 0);
            ;
          }

          *(v42 + 652) = 0;
          if (!AppendDNSNameString((v42 + 652), v41))
          {
            break;
          }

          if (++v40 == v38)
          {
            v44 = *(v4 + 1616);
            v19 = v76;
            goto LABEL_65;
          }
        }

        free(v39);
        unlink_and_free_service_instance(v76);
        return 4294901756;
      }

      goto LABEL_143;
    }

    v44 = 0;
    v39 = 0;
LABEL_65:
    *(v19 + 16) = v39;
    if (*(v4 + 1356))
    {
      v45 = (v4 + 1356);
    }

    else
    {
      v45 = 0;
    }

    v12 = mDNS_RegisterService(mDNSStorage, v19 + 288, (v4 + 26), (v4 + 1099), a2, v45, *(v4 + 24), 0, *(v4 + 16), *(v4 + 8), v39, v44, v77, regservice_callback, v19, *(v3 + 248));
    if (v12)
    {
LABEL_69:
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "register_service_instance %#s.%##s%##s error %d", v4 + 26, v4 + 1099, a2, v12);
      unlink_and_free_service_instance(v19);
      return v12;
    }

    v46 = *(v3 + 252);
    if (v46 != -1 && v80)
    {
      if (v46)
      {
        v47 = AWDLInterfaceID == v46 || WiFiAwareInterfaceID == v46;
      }

      else
      {
        v47 = (*(v3 + 250) >> 4) & 1;
      }

      v51 = v3;
      monotonic_time_ns = _mdns_powerlog_get_monotonic_time_ns();
      bzero(buf, 0x3F1uLL);
      service_type_from_domain_name = _mdns_get_service_type_from_domain_name((v4 + 1099), buf);
      _mdns_powerlog_bonjour_event(0x10u, v47, (v51 + 256), service_type_from_domain_name, monotonic_time_ns);
      *(v51 + 8) = monotonic_time_ns;
      v3 = v51;
    }

    if (service_attr_tsr_params)
    {
      v54 = mDNSGetTSRForAuthRecordNamed(xmmword_100170360, *(v19 + 2736), *(v19 + 2720));
      if (v54)
      {
        updated = updateTSRRecord(v3, v54, v75, v82);
      }

      else
      {
        *buf = 167832317;
        buf[4] = HIBYTE(v75);
        buf[5] = BYTE2(v75);
        buf[6] = BYTE1(v75);
        buf[7] = v75;
        buf[8] = BYTE3(v82);
        buf[9] = BYTE2(v82);
        buf[10] = BYTE1(v82);
        buf[11] = v82;
        *&buf[12] = 0;
        updated = add_record_to_service(v3, v19, 41, 0xEuLL, buf, 0x1194u);
      }

      v12 = updated;
      v56 = mDNSLogCategory_mDNS;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v57 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
      }

      else
      {
        v57 = 1;
      }

      v58 = v57;
      if (updated)
      {
        if (v58)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_69;
          }

          *buf = 67109376;
          *&buf[4] = HIDWORD(v82);
          *&buf[8] = 1024;
          *&buf[10] = v12;
          v59 = v56;
        }

        else
        {
          v61 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_69;
          }

          *buf = 67109376;
          *&buf[4] = HIDWORD(v82);
          *&buf[8] = 1024;
          *&buf[10] = v12;
          v59 = v61;
        }

        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Failed to add TSR record with tsrTimestamp %u error %d", buf, 0xEu);
        goto LABEL_69;
      }

      if (v58)
      {
        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v75;
          v60 = v56;
LABEL_111:
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "TSR record added with tsrTimestamp %d", buf, 8u);
        }
      }

      else
      {
        v62 = mDNSLogCategory_mDNS_redacted;
        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v75;
          v60 = v62;
          goto LABEL_111;
        }
      }
    }

    *v16 = v19;
    v63 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        v64 = *(v3 + 200);
        v65 = *(v19 + 2736);
        if (v65)
        {
          v70 = *(v19 + 2736);
          while (1)
          {
            if (!v70 || (v71 = *v70, v71 > 0x3F))
            {
LABEL_129:
              v68 = v19;
              v69 = 257;
              goto LABEL_139;
            }

            if (!*v70)
            {
              break;
            }

            v70 += v71 + 1;
            if (&v70[-v65] >= 256)
            {
              goto LABEL_129;
            }
          }

          v68 = v19;
          v69 = (v70 - v65 + 1);
        }

        else
        {
          v68 = v19;
          v69 = 0;
        }

        goto LABEL_139;
      }
    }

    else
    {
      v63 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v64 = *(v3 + 200);
        v65 = *(v19 + 2736);
        if (v65)
        {
          v66 = *(v19 + 2736);
          while (1)
          {
            if (!v66 || (v67 = *v66, v67 > 0x3F))
            {
LABEL_121:
              v68 = v19;
              v69 = 257;
              goto LABEL_139;
            }

            if (!*v66)
            {
              break;
            }

            v66 += v67 + 1;
            if (&v66[-v65] >= 256)
            {
              goto LABEL_121;
            }
          }

          v68 = v19;
          v69 = (v66 - v65 + 1);
        }

        else
        {
          v68 = v19;
          v69 = 0;
        }

LABEL_139:
        v72 = mDNS_DomainNameFNV1aHash(*(v19 + 2736));
        v73 = bswap32(*(v4 + 24)) >> 16;
        v74 = mDNS_DomainNameFNV1aHash(*(v68 + 1560));
        *buf = 67110659;
        *&buf[4] = v64;
        *&buf[8] = 2160;
        *&buf[10] = 1752392040;
        *&buf[18] = 1040;
        *&buf[20] = v69;
        *&buf[24] = 2101;
        *&buf[26] = v65;
        *&buf[34] = 1024;
        *&buf[36] = v72;
        *&buf[40] = 1024;
        *&buf[42] = v73;
        v19 = v68;
        *&buf[46] = 1024;
        LODWORD(v85) = v74;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceRegister result -- event: ADDED, SRV name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), port: %u, PTR name hash: %x", buf, 0x34u);
      }
    }

    if (mDNS_McastLoggingEnabled)
    {
      LogMcastService(v19 + 2696, v3, 1);
    }

    return 0;
  }

LABEL_143:
  __break(1u);
  return result;
}

size_t mDNS_RegisterService(unsigned int *a1, uint64_t a2, const char *a3, unsigned __int8 *a4, _BYTE *a5, _BYTE *a6, __int16 a7, uint64_t a8, unsigned __int16 *a9, unsigned __int16 a10, uint64_t a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16)
{
  if ((a16 & 0x800) != 0)
  {
    v19 = 32;
  }

  else
  {
    v19 = 2;
  }

  *a2 = a14;
  *(a2 + 8) = a15;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = a12;
  *(a2 + 40) = a11;
  *(a2 + 48) = a16;
  if (a13 == -2)
  {
    v26 = 4;
  }

  else
  {
    v20 = (a16 & 0x100000) == 0;
    v21 = (a16 & 0x20000) != 0 && a13 == 0;
    v22 = !v21;
    if (!v21)
    {
      v20 = 1;
    }

    if (v20)
    {
      v23 = 1;
    }

    else
    {
      v23 = 3;
    }

    if (a13)
    {
      v24 = 1;
    }

    else
    {
      v24 = (a16 & 0x100000) == 0;
    }

    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = 2;
    }

    if (v22 != 1)
    {
      v25 = v23;
    }

    if (a13 == -3)
    {
      v25 = 5;
    }

    if (a13 == -5)
    {
      v26 = 5;
    }

    else
    {
      v26 = v25;
    }
  }

  mDNS_SetupResourceRecord(a2 + 56, 0, a13, 12, 0x1194u, 4, v26, ServiceCallback, a2);
  mDNS_SetupResourceRecord(a2 + 1232, 0, a13, 12, 0x1194u, 8, v26, ServiceCallback, a2);
  if ((a16 & 0x1000000) != 0)
  {
    *(a2 + 1355) = 1;
  }

  v27 = a2 + 2408;
  mDNS_SetupResourceRecord(a2 + 2408, 0, a13, 33, 0x1194u, v19, v26, ServiceCallback, a2);
  v28 = a2 + 3584;
  mDNS_SetupResourceRecord(a2 + 3584, a8, a13, 16, 0x1194u, v19, v26, ServiceCallback, a2);
  if (a7)
  {
    v29 = *(a2 + 3632);
    v30 = a4;
    if (*v29 < a10)
    {
      *v29 = a10;
    }

    v31 = 4294901756;
    if (!ConstructServiceName((a2 + 708), "\t_services", "\a_dns-sd\x04_udp", a5))
    {
      return v31;
    }

    if (!ConstructServiceName((a2 + 1884), 0, a4, a5))
    {
      return v31;
    }

    v32 = a2 + 3060;
    if (!ConstructServiceName((a2 + 3060), a3, a4, a5))
    {
      return v31;
    }

    v33 = *(a2 + 2448);
    v34 = v33;
    do
    {
      if (!v34)
      {
        break;
      }

      v35 = *v34;
      if (v35 > 0x3F)
      {
        break;
      }

      if (!*v34)
      {
        v44 = v34 - v33 + 1;
        if (v44 <= 0x100u)
        {
          memcpy((a2 + 4236), v33, v44);
          goto LABEL_75;
        }

        break;
      }

      v34 += v35 + 1;
    }

    while (v34 - v33 <= 255);
    *(a2 + 4236) = 0;
LABEL_75:
    v45 = *(a2 + 1272);
    v46 = v45;
    do
    {
      if (!v46)
      {
        break;
      }

      v47 = *v46;
      if (v47 > 0x3F)
      {
        break;
      }

      if (!*v46)
      {
        v48 = v46 - v45 + 1;
        if (v48 <= 0x100u)
        {
          memcpy((*(a2 + 104) + 4), v45, v48);
          goto LABEL_84;
        }

        break;
      }

      v46 += v47 + 1;
    }

    while (v46 - v45 <= 255);
    *(*(a2 + 104) + 4) = 0;
LABEL_84:
    v49 = *(a2 + 2448);
    v50 = v49;
    do
    {
      if (!v50)
      {
        break;
      }

      v51 = *v50;
      if (v51 > 0x3F)
      {
        break;
      }

      if (!*v50)
      {
        v52 = v50 - v49 + 1;
        if (v52 <= 0x100u)
        {
          memcpy((*(a2 + 1280) + 4), v49, v52);
          goto LABEL_93;
        }

        break;
      }

      v50 += v51 + 1;
    }

    while (v50 - v49 <= 255);
    *(*(a2 + 1280) + 4) = 0;
LABEL_93:
    *(a2 + 1304) = v27;
    *(a2 + 1312) = v28;
    if (!a12)
    {
LABEL_115:
      *(*(a2 + 2456) + 4) = 0;
      *(*(a2 + 2456) + 6) = 0;
      *(*(a2 + 2456) + 8) = a7;
      if (a6 && *a6)
      {
        v64 = a6;
        v65 = a1;
        v31 = 4294901756;
        do
        {
          if (!v64)
          {
            break;
          }

          v66 = *v64;
          if (v66 > 0x3F)
          {
            break;
          }

          if (!*v64)
          {
            v67 = v64 - a6 + 1;
            if (v67 <= 0x100u)
            {
              memcpy((*(a2 + 2456) + 10), a6, v67);
              goto LABEL_128;
            }

            break;
          }

          v64 += v66 + 1;
        }

        while (v64 - a6 <= 255);
        *(*(a2 + 2456) + 10) = 0;
      }

      else
      {
        *(a2 + 2528) = 1;
        *(*(a2 + 2456) + 10) = 0;
        v65 = a1;
        v31 = 4294901756;
      }

LABEL_128:
      if (a9)
      {
        v68 = *(a2 + 3632);
        if (v68 + 2 != a9)
        {
          *(a2 + 3604) = a10;
          if (*v68 < a10)
          {
            return v31;
          }

          memcpy(v68 + 2, a9, a10);
        }
      }

      else
      {
        *(a2 + 3604) = 0;
      }

      *(a2 + 3672) = v27;
      mDNS_Lock_(v65, "mDNS_RegisterService", 17720);
      v69 = mDNS_Register_internal(v65, a2 + 2408);
      if (!v69)
      {
        v31 = mDNS_Register_internal(v65, a2 + 3584);
        if (!v31)
        {
          v31 = mDNS_Register_internal(v65, a2 + 56);
        }

        if (a12)
        {
          v70 = 0;
          do
          {
            if (!v31)
            {
              v31 = mDNS_Register_internal(v65, *(a2 + 40) + v70);
            }

            v70 += 1176;
          }

          while (1176 * a12 != v70);
        }

        if (v31)
        {
          mDNS_Unlock_(v65, "mDNS_RegisterService", 17743);
        }

        else
        {
          v31 = mDNS_Register_internal(v65, a2 + 1232);
          mDNS_Unlock_(v65, "mDNS_RegisterService", 17743);
          if (!v31)
          {
            return v31;
          }
        }

        mDNS_DeregisterService_drt(v65, a2, 0);
        return v31;
      }

      v31 = v69;
      mDNS_Unlock_(v65, "mDNS_RegisterService", 17730);
      return v31;
    }

    v53 = 0;
    v54 = *(a2 + 40);
    while (1)
    {
      memset(__dst, 0, sizeof(__dst));
      v55 = *(v54 + 1176 * v53 + 40);
      v56 = v55;
      do
      {
        if (!v56)
        {
          break;
        }

        v57 = *v56;
        if (v57 > 0x3F)
        {
          break;
        }

        if (!*v56)
        {
          v58 = v56 - v55 + 1;
          if (v58 <= 0x100u)
          {
            memcpy(__dst, v55, v58);
            v59 = LOBYTE(__dst[0]) + 1;
            goto LABEL_104;
          }

          break;
        }

        v56 += v57 + 1;
      }

      while (v56 - v55 <= 255);
      v59 = 1;
LABEL_104:
      *(__dst + v59) = 0;
      AppendDomainName(__dst, v30);
      mDNS_SetupResourceRecord(*(a2 + 40) + 1176 * v53, 0, a13, 12, 0x1194u, 8, v26, ServiceCallback, a2);
      if (!ConstructServiceName((*(a2 + 40) + 1176 * v53 + 652), 0, __dst, a5))
      {
        return 4294901756;
      }

      v60 = (a2 + 3060);
      v30 = a4;
      do
      {
        if (!v60)
        {
          break;
        }

        v61 = *v60;
        if (v61 > 0x3F)
        {
          break;
        }

        if (!*v60)
        {
          v62 = v60 - v32 + 1;
          if (v62 <= 0x100u)
          {
            memcpy((*(*(a2 + 40) + 1176 * v53 + 48) + 4), (a2 + 3060), v62);
            goto LABEL_114;
          }

          break;
        }

        v60 += v61 + 1;
      }

      while (&v60[-v32] <= 255);
      *(*(*(a2 + 40) + 1176 * v53 + 48) + 4) = 0;
LABEL_114:
      v54 = *(a2 + 40);
      v63 = v54 + 1176 * v53;
      *(v63 + 72) = v27;
      *(v63 + 80) = v28;
      if (++v53 == a12)
      {
        goto LABEL_115;
      }
    }
  }

  if (a13 == -2)
  {
    v36 = 4;
  }

  else
  {
    v36 = 5;
    if (a13 != -5 && a13 != -3)
    {
      v37 = (a16 & 0x100000) == 0;
      v38 = (a16 & 0x20000) != 0 && a13 == 0;
      v39 = !v38;
      if (!v38)
      {
        v37 = 1;
      }

      if (v37)
      {
        v40 = 1;
      }

      else
      {
        v40 = 3;
      }

      if (a13)
      {
        v41 = 1;
      }

      else
      {
        v41 = (a16 & 0x100000) == 0;
      }

      if (v41)
      {
        v42 = 0;
      }

      else
      {
        v42 = 2;
      }

      if (v39 == 1)
      {
        v36 = v42;
      }

      else
      {
        v36 = v40;
      }
    }
  }

  mDNS_SetupResourceRecord(a2 + 2408, 0, a13, 33, 0x1194u, 2, v36, NSSCallback, a2);
  if (!ConstructServiceName((a2 + 3060), a3, a4, a5))
  {
    return 4294901756;
  }

  *(*(a2 + 2456) + 4) = 0;
  *(*(a2 + 2456) + 6) = 0;
  *(*(a2 + 2456) + 8) = 0;
  *(a2 + 2528) = 1;

  return mDNS_Register(a1, a2 + 2408);
}
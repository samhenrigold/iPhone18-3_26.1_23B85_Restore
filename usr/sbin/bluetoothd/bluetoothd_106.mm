void sub_10079FDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079FDF0(uint64_t a1)
{
  v1 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "AOPBTBUFF Sending empty event", buf, 2u);
  }

  *buf = 0;
  v3 = 0;
  v4 = 0;
  operator new();
}

void sub_1007A0174(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_1007A0194(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_100007EE8(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007A0218;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = v2;
  sub_10000CA94(v4, v5);
}

void sub_1007A0218(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 32);
  if (sub_1000C76A8(v2, *(a1 + 40)))
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100874ACC();
    }
  }

  else if (sub_1000C6490(v2, *v1) && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
  {
    sub_100874B48();
  }
}

void sub_1007A02D4(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ADVBUFF advBufferEvent length=%d", buf, 8u);
  }

  *buf = 0;
  v15 = buf;
  v16 = 0x2020000000;
  v17 = 5;
  if (v3 == 244)
  {
    v7 = 2;
    goto LABEL_7;
  }

  if (v3 == 219)
  {
    v7 = *(a1 + 1796);
LABEL_7:
    v17 = v7;
    v8 = malloc_type_malloc(v3, 0x2567FEAAuLL);
    v9 = memcpy(v8, a2, v3);
    v11 = sub_100007EE8(v9, v10);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1007A04A0;
    v12[3] = &unk_100B0CEC0;
    v12[4] = buf;
    v12[5] = a1;
    v13 = v3;
    v12[6] = v8;
    sub_10000CA94(v11, v12);
    goto LABEL_10;
  }

  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
  {
    sub_100874E04();
  }

LABEL_10:
  _Block_object_dispose(buf, 8);
}

void sub_1007A04A0(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v2 = *(v1 + 40);
  v3 = &qword_100BCE918;
  v4 = qword_100BCE918;
  v5 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
  if (v5)
  {
    v7 = *(*(*(v1 + 32) + 8) + 24);
    if (v7 > 2)
    {
      v8 = @"UNKNOWN";
    }

    else
    {
      v8 = off_100B0D748[v7];
    }

    v9 = *(v2 + 1260);
    v10 = *(v2 + 172);
    v11 = *(v2 + 716);
    v12 = *(v2 + 544 * *(*(*(v1 + 32) + 8) + 24) + 169);
    v13 = *(v2 + 167);
    v14 = *(v2 + 711);
    v15 = *(v2 + 171);
    v16 = *(v2 + 715);
    *buf = 138414338;
    *v150 = v8;
    *&v150[8] = 1024;
    *&v150[10] = v9;
    *&v150[14] = 1024;
    *&v150[16] = v10;
    *&v150[20] = 1024;
    *&v150[22] = v11;
    *&v150[26] = 1024;
    *&v150[28] = v12;
    *v151 = 1024;
    *&v151[2] = v13;
    LOWORD(v152) = 1024;
    *(&v152 + 2) = v14;
    HIWORD(v152) = 1024;
    *v153 = v15;
    *&v153[4] = 1024;
    *v154 = v16;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "ADVBUFF(%@): advBufferEvent expectedEntries EN:%d ObjDiscoveryWild:%d ObjectDiscoveryNO:%d pendingDraining:%d createdWild:%d createdNO:%d readInProgressWild:%d readInProgressNO:%d", buf, 0x3Cu);
  }

  v17 = v2 + 160;
  v18 = *(*(*(v1 + 32) + 8) + 24);
  v19 = v2 + 160 + 544 * *(*(*(v1 + 32) + 8) + 24);
  if (*(v19 + 7) == 1)
  {
    if (*(v19 + 12) == 255)
    {
      v20 = qword_100BCE918;
      v5 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_FAULT);
      if (v5)
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "We were not expecting to get anything right now", buf, 2u);
        v18 = *(*(*(v1 + 32) + 8) + 24);
      }
    }

    if (v18 <= 1)
    {
      v21 = v17 + 544 * v18;
      if (*(v21 + 12) && *(v21 + 12) != 255 && *(v1 + 56) == 219)
      {
        *(v21 + 9) = 0;
        v22 = *(v1 + 48);
        v181 = v22 + 1;
        v182 = v22 + 47;
        v183 = v22 + 90;
        v184 = v22 + 133;
        v131 = v22;
        v185 = v22 + 44;
        if (*(*(*(v1 + 32) + 8) + 24))
        {
          if (*(*(*(v1 + 32) + 8) + 24) == 1)
          {
            if (*(v2 + 716) >= 5u)
            {
              v23 = 5;
            }

            else
            {
              v23 = *(v2 + 716);
            }

            v24 = sub_10000F034(v5, v6);
            *buf = 0;
            *v150 = v23;
            memset(&v150[4], 0, 24);
            (*(*v24 + 616))(v24, buf);
          }
        }

        else
        {
          if (*(v2 + 172) >= 5u)
          {
            v71 = 5;
          }

          else
          {
            v71 = *(v2 + 172);
          }

          v72 = sub_10000F034(v5, v6);
          memset(v150, 0, 28);
          *buf = v71;
          (*(*v72 + 616))();
        }

        v73 = *(*(*(v1 + 32) + 8) + 24);
        v74 = v17 + 544 * *(*(*(v1 + 32) + 8) + 24);
        v77 = *(v74 + 12);
        v75 = (v74 + 12);
        v76 = v77;
        if (v77)
        {
          v78 = 0;
          v79 = 0;
          do
          {
            v80 = *v3;
            v81 = v3;
            if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
            {
              v82 = @"UNKNOWN";
              if (v73 <= 2)
              {
                v82 = off_100B0D748[v73];
              }

              v83 = (&v181)[v79];
              v84 = *(v83 + 6);
              v85 = *(v83 + 38);
              v86 = *(v83 + 42);
              *buf = 138414850;
              *v150 = v82;
              *&v150[8] = 1024;
              *&v150[10] = v79;
              *&v150[14] = 1040;
              *&v150[16] = 43;
              *&v150[20] = 2096;
              *&v150[22] = v83;
              *&v150[30] = 1040;
              *v151 = 6;
              *&v151[4] = 2096;
              v152 = v83;
              *v153 = 1024;
              *&v153[2] = v84;
              *v154 = 1040;
              *&v154[2] = 31;
              v155 = 2096;
              v156 = v83 + 7;
              v157 = 1024;
              v158 = v85;
              v159 = 1024;
              v160 = v86;
              _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, "ADVBUFF(%@): Parsing entry %d entry_buff:%.43P address:%.6P len:%d payload:%.31P timestamp:%d rssi:%d", buf, 0x54u);
            }

            else
            {
              v83 = (&v181)[v79];
            }

            v87 = *(v83 + 6);
            if (v87 < 0x20)
            {
              bzero(buf, 0x1788uLL);
              *v135 = 0u;
              memset(v134, 0, sizeof(v134));
              sub_1000075EC(&v134[2], v83, 6uLL);
              v89 = (v134[2] << 40) | (v134[3] << 32) | (v134[4] << 24) | (v134[5] << 16) | (v134[6] << 8) | v134[7];
              if (!v89 || HIWORD(v89) && (HIWORD(v89) != 1 || (v134[2] & 0xC0) == 0x80))
              {
                v90 = *v81;
                if (os_log_type_enabled(*v81, OS_LOG_TYPE_ERROR))
                {
                  v105 = *(*(*(v1 + 32) + 8) + 24);
                  v106 = @"UNKNOWN";
                  if (v105 <= 2)
                  {
                    v106 = off_100B0D748[v105];
                  }

                  v107 = sub_100063D0C(v89);
                  *v146 = 138412546;
                  *&v146[4] = v106;
                  *&v146[12] = 2112;
                  *&v146[14] = v107;
                  _os_log_error_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "ADVBUFF(%@): Remote Bluetooth address %@ is invalid!", v146, 0x16u);
                }
              }

              v91 = sub_10000AB54(v2, *(v83 + 42));
              *(v83 + 42) = v91;
              *v134 = 259;
              *&v134[8] = *(v83 + 6);
              v134[24] = v91;
              *&v134[16] = v83 + 7;
              v134[43] = 0;
              v133 = 0;
              sub_1000216B4(&v133);
              sub_100008D54(v134, buf, v92);
              sub_100022214(&v133);
              v150[12] = 0;
              v93 = *(v1 + 32);
              v171 = v78 + *(v17 + 544 * *(*(v93 + 8) + 24) + 12) > 1;
              LOBYTE(v172) = 1;
              v94 = *v131;
              v95 = *(v83 + 38);
              if (*v131 < v95)
              {
                v94 = *v131 + 0xFFFFFFF;
              }

              v170 = v94 - v95;
              v96 = *v81;
              if (os_log_type_enabled(*v81, OS_LOG_TYPE_INFO))
              {
                v97 = *(*(v93 + 8) + 24);
                v98 = @"UNKNOWN";
                if (v97 <= 2)
                {
                  v98 = off_100B0D748[v97];
                }

                v99 = *v131;
                v100 = *(v83 + 38);
                *v146 = 138413826;
                *&v146[4] = v98;
                *&v146[12] = 1040;
                *&v146[14] = 6;
                *&v146[18] = 2096;
                *&v146[20] = &v134[2];
                *&v146[28] = 1024;
                *&v146[30] = v99;
                *&v146[34] = 1024;
                *&v146[36] = v100;
                *&v146[40] = 1024;
                *&v146[42] = v170;
                *&v146[46] = 1024;
                LODWORD(v147) = *&v134[8];
                _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_INFO, "ADVBUFF(%@): found %.6P now:%u event:%u delta:%u dataLen:%d", v146, 0x34u);
              }

              sub_100009B00(buf);
            }

            v3 = v81;
            v88 = *v81;
            if (os_log_type_enabled(*v81, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *v150 = v87;
              _os_log_error_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "Ignoring invalid data length %d", buf, 8u);
            }

            ++v79;
            v73 = *(*(*(v1 + 32) + 8) + 24);
            v101 = v17 + 544 * *(*(*(v1 + 32) + 8) + 24);
            v103 = *(v101 + 12);
            v75 = (v101 + 12);
            v102 = v103;
            if (v103 >= 5)
            {
              v104 = 5;
            }

            else
            {
              v104 = v102;
            }

            --v78;
          }

          while (v79 < v104);
          v76 = v102 - v79;
        }

        *v75 = v76;
        v108 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
        {
          v109 = *(*(*(v1 + 32) + 8) + 24);
          if (v109 > 2)
          {
            v110 = @"UNKNOWN";
          }

          else
          {
            v110 = off_100B0D748[v109];
          }

          v112 = *(v17 + 544 * *(*(*(v1 + 32) + 8) + 24) + 12);
          *buf = 138412546;
          *v150 = v110;
          *&v150[8] = 1024;
          *&v150[10] = v112;
          _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_INFO, "ADVBUFF(%@): after parsing, expectedEntries=%d ", buf, 0x12u);
        }

        v113 = *(*(*(v1 + 32) + 8) + 24);
        if (!*(v17 + 544 * v113 + 12))
        {
          v114 = *v3;
          v115 = os_log_type_enabled(*v3, OS_LOG_TYPE_INFO);
          if (v115)
          {
            if (v113 > 2)
            {
              v117 = @"UNKNOWN";
            }

            else
            {
              v117 = off_100B0D748[v113];
            }

            v126 = *(v2 + 144);
            v127 = *(v17 + 544 * *(*(*(v1 + 32) + 8) + 24) + 12);
            *buf = 138412802;
            *v150 = v117;
            *&v150[8] = 1024;
            *&v150[10] = v126;
            *&v150[14] = 1024;
            *&v150[16] = v127;
            _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_INFO, "ADVBUFF(%@): We're done screenstate=%d fADVBufferExpectedEntries=%d", buf, 0x18u);
            LODWORD(v113) = *(*(*(v1 + 32) + 8) + 24);
          }

          *(v17 + 544 * v113 + 12) = -1;
          *(v17 + 544 * *(*(*(v1 + 32) + 8) + 24) + 11) = 0;
          v128 = sub_100007EE8(v115, v116);
          v132[0] = _NSConcreteStackBlock;
          v132[1] = 3221225472;
          v132[2] = sub_1007A17D4;
          v132[3] = &unk_100ADF8F8;
          v132[4] = v2;
          sub_10000CA94(v128, v132);
        }

        goto LABEL_31;
      }

      goto LABEL_26;
    }

    if (v18 != 2 || !*(v2 + 1260) || *(v2 + 1260) == 255)
    {
LABEL_26:
      v27 = qword_100BCEA18;
      if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
      {
        if (v18 > 2)
        {
          v28 = @"UNKNOWN";
        }

        else
        {
          v28 = off_100B0D748[v18];
        }

        v111 = *(v17 + 544 * *(*(*(v1 + 32) + 8) + 24) + 12);
        *buf = 138412546;
        *v150 = v28;
        *&v150[8] = 1024;
        *&v150[10] = v111;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "ADVBUFF(%@): invalid state expectedEntries=%d", buf, 0x12u);
      }

      goto LABEL_31;
    }

    v29 = 0;
    v30 = *(v1 + 48);
    v181 = (v30 + 4);
    v182 = (v30 + 52);
    v183 = (v30 + 100);
    v184 = (v30 + 148);
    v185 = (v30 + 196);
    do
    {
      v31 = sub_10000E92C();
      if ((*(*v31 + 176))(v31))
      {
        v32 = qword_100BCEA38;
        if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEBUG))
        {
          v55 = *(*(*(v1 + 32) + 8) + 24);
          v56 = @"UNKNOWN";
          if (v55 <= 2)
          {
            v56 = off_100B0D748[v55];
          }

          v57 = (&v181)[v29];
          v58 = *(v57 + 6);
          v59 = *(v57 + 38);
          v60 = *(v57 + 40);
          v61 = *(v57 + 46);
          v62 = *(v57 + 47);
          *buf = 138415874;
          *v150 = v56;
          *&v150[8] = 1024;
          *&v150[10] = v29;
          *&v150[14] = 1040;
          *&v150[16] = 48;
          *&v150[20] = 2096;
          *&v150[22] = v57;
          *&v150[30] = 1040;
          *v151 = 6;
          *&v151[4] = 2096;
          v152 = v57;
          *v153 = 1024;
          *&v153[2] = v58;
          *v154 = 1040;
          *&v154[2] = 31;
          v155 = 2096;
          v156 = v57 + 7;
          v157 = 1024;
          v158 = v59;
          v159 = 1024;
          v160 = v60;
          v161 = 1040;
          v162 = 4;
          v163 = 2096;
          v164 = v57 + 42;
          v165 = 1024;
          v166 = v61;
          v167 = 1024;
          v168 = v62;
          _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "ADVBUFF(%@): Parsing entry %d entry_buff:%.48P address:%.6P len:%d payload:%.31P first:%d last:%d rssi:%.4P maxRSSI:%d avgRSSI:%d", buf, 0x70u);
        }
      }

      v33 = (&v181)[v29];
      v34 = *(v33 + 6);
      if (v34 < 0x20)
      {
        bzero(buf, 0x1788uLL);
        v147 = 0u;
        v148 = 0u;
        memset(v146, 0, sizeof(v146));
        sub_1000075EC(&v146[2], v33, 6uLL);
        v36 = (v146[2] << 40) | (v146[3] << 32) | (v146[4] << 24) | (v146[5] << 16) | (v146[6] << 8) | v146[7] | (v146[1] << 48);
        if (!v36 || HIWORD(v36) && (HIWORD(v36) != 1 || (v146[2] & 0xC0) == 0x80))
        {
          v37 = qword_100BCEA18;
          if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
          {
            v63 = *(*(*(v1 + 32) + 8) + 24);
            v64 = @"UNKNOWN";
            if (v63 <= 2)
            {
              v64 = off_100B0D748[v63];
            }

            v65 = sub_100063D0C(v36);
            *v134 = 138412546;
            *&v134[4] = v64;
            *&v134[12] = 2112;
            *&v134[14] = v65;
            _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "ADVBUFF(%@): Remote Bluetooth address %@ is invalid!", v134, 0x16u);
          }
        }

        *(v33 + 46) = sub_10000AB54(v2, *(v33 + 46));
        v38 = sub_10000AB54(v2, *(v33 + 47));
        v39 = v38;
        *(v33 + 47) = v38;
        v40 = *(v33 + 46);
        if (v40 <= 0 && v38 < 1)
        {
          *v146 = 259;
          *&v146[8] = *(v33 + 6);
          *&v146[16] = v33 + 7;
          v146[43] = 0;
          v133 = 0;
          sub_1000216B4(&v133);
          sub_100008D54(v146, buf, v41);
          sub_100022214(&v133);
          v42 = 0;
          v150[12] = 0;
          v171 = *(v17 + 544 * *(*(*(v1 + 32) + 8) + 24) + 12) - v29 > 1;
          v172 = 257;
          v177 = *(v33 + 46);
          v178 = *(v33 + 47);
          v169 = v177;
          do
          {
            *(&v173 + v42) = *(v33 + 42 + v42);
            ++v42;
          }

          while (v42 != 4);
          v179 = *(v33 + 38);
          v180 = *(v33 + 40);
          v43 = sub_10000E92C();
          if ((*(*v43 + 176))(v43))
          {
            v44 = qword_100BCEA38;
            if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_INFO))
            {
              v47 = *(*(*(v1 + 32) + 8) + 24);
              v48 = @"UNKNOWN";
              if (v47 <= 2)
              {
                v48 = off_100B0D748[v47];
              }

              LODWORD(v45) = v179;
              LODWORD(v46) = v180;
              *v134 = 138415874;
              *&v134[4] = v48;
              *&v134[12] = 1040;
              *&v134[14] = 6;
              *&v134[18] = 2096;
              *&v134[20] = &v146[2];
              *&v134[28] = 1040;
              *&v134[30] = 31;
              *&v134[34] = 2096;
              *&v134[36] = *&v146[16];
              *&v134[44] = 2048;
              *&v134[46] = v45 * 0.02;
              *&v134[54] = 2048;
              *&v134[56] = v46 * 0.02;
              *v135 = 1024;
              *&v135[2] = *&v146[8];
              *&v135[6] = 1024;
              *&v135[8] = v177;
              *&v135[12] = 1024;
              *&v135[14] = v178;
              v136 = 1024;
              v137 = v173;
              v138 = 1024;
              v139 = v174;
              v140 = 1024;
              v141 = v175;
              v142 = 1024;
              v143 = v176;
              v144 = 1024;
              v145 = v174 + v173 + 2 * v175;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "ADVBUFF(%@): found %.6P payload:%.31P first:%fs last:%fs dataLen:%d maxRSSI:%d avgRSSI:%d bin0:%d bin1:%d bin2:%d bin3:%d total:%d", v134, 0x70u);
            }
          }

          ++*(v2 + 2344);
          sub_100009B00(buf);
        }

        v49 = qword_100BCEA18;
        if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
        {
          v66 = sub_100063D0C(v36);
          *v134 = 67109634;
          *&v134[4] = v39;
          *&v134[8] = 1024;
          *&v134[10] = v40;
          *&v134[14] = 2112;
          *&v134[16] = v66;
          _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Ignoring invalid RSSI level (avg:%d/max:%d) received from device %@", v134, 0x18u);
        }
      }

      else
      {
        v35 = qword_100BCEA18;
        if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *v150 = v34;
          _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Ignoring invalid data length %d", buf, 8u);
        }
      }

      ++v29;
      v50 = v17 + 544 * *(*(*(v1 + 32) + 8) + 24);
      v53 = *(v50 + 12);
      v51 = (v50 + 12);
      v52 = v53;
      if (v53 >= 5)
      {
        v54 = 5;
      }

      else
      {
        v54 = v52;
      }
    }

    while (v29 < v54);
    *v51 = v52 - v29;
    v67 = qword_100BCEA38;
    if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_INFO))
    {
      v69 = *(*(*(v1 + 32) + 8) + 24);
      if (v69 > 2)
      {
        v70 = @"UNKNOWN";
      }

      else
      {
        v70 = off_100B0D748[v69];
      }

      v118 = *(v17 + 544 * *(*(*(v1 + 32) + 8) + 24) + 12);
      *buf = 138412546;
      *v150 = v70;
      *&v150[8] = 1024;
      *&v150[10] = v118;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "ADVBUFF(%@): after parsing,expectedEntries=%d ", buf, 0x12u);
    }

    v119 = v17 + 544 * *(*(*(v1 + 32) + 8) + 24);
    v121 = *(v119 + 12);
    v120 = (v119 + 12);
    if (!v121)
    {
      *v120 = -1;
      v122 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v124 = *(*(*(v1 + 32) + 8) + 24);
        if (v124 > 2)
        {
          v125 = @"UNKNOWN";
        }

        else
        {
          v125 = off_100B0D748[v124];
        }

        v129 = *(v17 + 544 * *(*(*(v1 + 32) + 8) + 24) + 12);
        *buf = 138412546;
        *v150 = v125;
        *&v150[8] = 1024;
        *&v150[10] = v129;
        _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_INFO, "ADVBUFF(%@): We're done expectedEntries=%d", buf, 0x12u);
      }

      sub_1007A17DC(v2, v123);
      sub_1007A1858(v2, *(*(*(v1 + 32) + 8) + 24), 1);
      sub_1007A1D58(v2, v130);
      *(v17 + 544 * *(*(*(v1 + 32) + 8) + 24) + 11) = 0;
    }
  }

  else
  {
    v25 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      if (v18 > 2)
      {
        v26 = @"UNKNOWN";
      }

      else
      {
        v26 = off_100B0D748[v18];
      }

      *buf = 138412290;
      *v150 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "ADVBUFF(%@): Received AdvBufferEvent for a buffer that is not created, ignoring", buf, 0xCu);
    }
  }

LABEL_31:
  free(*(v1 + 48));
}

void sub_1007A17DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007A94F8;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

uint64_t sub_1007A1858(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 >= 3)
  {
    v4 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 67109120;
      LODWORD(v38) = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HW ADV Buffer handle out of range (%d), ignoring agent request", &v37, 8u);
    }

    return 7;
  }

  if (a3)
  {
    v8 = a1 + 544 * a2;
    if (*(v8 + 170) == 1 && *(v8 + 167) == 1)
    {
      v9 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v10 = off_100B0D748[a2];
        v37 = 138543362;
        v38 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): created and pending destroy", &v37, 0xCu);
      }

      sub_10079DECC(a1, a2);
    }
  }

  v11 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    v12 = off_100B0D748[a2];
    v13 = a1 + 544 * a2;
    v14 = *(v13 + 167);
    LODWORD(v13) = *(v13 + 168);
    v15 = a2;
    v37 = 138544130;
    v38 = v12;
    v39 = 1024;
    *v40 = a3;
    *&v40[4] = 1024;
    *&v40[6] = v14;
    v41 = 1024;
    v42 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): enableADVBuffering enable=%d created=%d enabled=%d", &v37, 0x1Eu);
  }

  else
  {
    v15 = a2;
  }

  v16 = a1 + 544 * v15;
  if ((*(v16 + 167) & 1) == 0)
  {
    v23 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      v24 = off_100B0D748[a2];
      v37 = 138543362;
      v38 = v24;
      v5 = 12;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): not created", &v37, 0xCu);
      return v5;
    }

    return 12;
  }

  v17 = *(v16 + 168);
  v18 = qword_100BCE918;
  v19 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
  if (v17 == a3)
  {
    if (v19)
    {
      v21 = off_100B0D748[a2];
      v22 = "paused";
      if (a3)
      {
        v22 = "active";
      }

      v37 = 138543618;
      v38 = v21;
      v39 = 2082;
      *v40 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): already %{public}s", &v37, 0x16u);
    }

    return 12;
  }

  if (v19)
  {
    v25 = off_100B0D748[a2];
    v26 = "pausing";
    if (a3)
    {
      v26 = "activating";
    }

    v37 = 138543618;
    v38 = v25;
    v39 = 2082;
    *v40 = v26;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): mode change -> %{public}s ", &v37, 0x16u);
  }

  v27 = sub_10000C7D0(v19, v20);
  v5 = (*(*v27 + 3408))(v27, a2, 1, a3 ^ 1u);
  v28 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    v29 = off_100B0D748[a2];
    v37 = 138543618;
    v38 = v29;
    v39 = 1024;
    *v40 = v5;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): advBufMatchControl returned %d", &v37, 0x12u);
  }

  if (v5)
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100874EBC();
    }
  }

  else
  {
    *(v16 + 168) = a3;
    *(v16 + 169) |= a3;
    v30 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      v31 = off_100B0D748[a2];
      v32 = *(v16 + 169);
      v37 = 138543618;
      v38 = v31;
      v39 = 1024;
      *v40 = v32;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): pendingDraining:%d", &v37, 0x12u);
    }

    if (a3)
    {
      *(v16 + 176) = CFAbsoluteTimeGetCurrent();
      v33 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v34 = off_100B0D748[a2];
        v35 = *(v16 + 176);
        v37 = 138543618;
        v38 = v34;
        v39 = 2048;
        *v40 = v35;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): setting start time to %f", &v37, 0x16u);
      }
    }

    return 0;
  }

  return v5;
}

void sub_1007A1D58(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 2304))
  {
    v3 = sub_100007EE8(a1, a2);
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v3 + 8));
    *(a1 + 2304) = v4;
    v5 = qword_100BCEA38;
    if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "fContactTracingScanDeltaTimer Timer Armed!", buf, 2u);
      v4 = *(a1 + 2304);
    }

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1007A9CFC;
    handler[3] = &unk_100ADF8F8;
    handler[4] = a1;
    dispatch_source_set_event_handler(v4, handler);
    v6 = *(a1 + 2304);
    if (qword_100B54770 != -1)
    {
      sub_1008743D0();
    }

    v7 = sub_1005127E8(off_100B54768);
    v8 = dispatch_time(0x8000000000000000, 1000000 * v7);
    dispatch_source_set_timer(v6, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(*(a1 + 2304));
    if (*(a1 + 1255) == 1)
    {
      if (qword_100B54770 != -1)
      {
        sub_1008743D0();
      }

      v9 = sub_1005126E8(off_100B54768);
    }

    else
    {
      if (qword_100B54770 != -1)
      {
        sub_1008743D0();
      }

      v9 = sub_100512C40(off_100B54768);
    }

    v10 = +[NSDate date];
    [v10 timeIntervalSince1970];
    v12 = v11;

    v13 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_date(v13, "Date", ((v12 + v9) * 1000000000.0));
    v14 = qword_100BCEA38;
    if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "XPC event com.apple.alarm for %llu seconds armed!", buf, 0xCu);
    }

    xpc_set_event();
    xpc_release(v13);
  }
}

void sub_1007A2008(uint64_t a1, _OWORD *a2)
{
  v4 = malloc_type_malloc(0xEEuLL, 0x1000040AEA256DBuLL);
  v6 = a2[1];
  v5 = a2[2];
  *v4 = *a2;
  v4[1] = v6;
  v4[2] = v5;
  v7 = a2[6];
  v9 = a2[3];
  v8 = a2[4];
  v4[5] = a2[5];
  v4[6] = v7;
  v4[3] = v9;
  v4[4] = v8;
  v10 = a2[10];
  v12 = a2[7];
  v11 = a2[8];
  v4[9] = a2[9];
  v4[10] = v10;
  v4[7] = v12;
  v4[8] = v11;
  v14 = a2[12];
  v13 = a2[13];
  v15 = a2[11];
  *(v4 + 222) = *(a2 + 222);
  v4[12] = v14;
  v4[13] = v13;
  v4[11] = v15;
  v17 = sub_100007EE8(v4, v16);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1007A20F4;
  v18[3] = &unk_100AE0860;
  v18[4] = a1;
  v18[5] = v4;
  sub_10000CA94(v17, v18);
}

void sub_1007A20F4(uint64_t a1)
{
  v38 = __chkstk_darwin(a1);
  v1 = *(v38 + 32);
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    v3 = *(v1 + 1867);
    v4 = *(v1 + 1868);
    buf = 67109376;
    v58 = v3;
    v59 = 1024;
    v60 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Match Buffer matchBufferEvent fMatchBufferExpectedEntries:%d fMatchBufferEntriesReceived:%d", &buf, 0xEu);
  }

  if (*(v1 + 1867) == 255 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_FAULT))
  {
    sub_100874F44();
  }

  v5 = *(v1 + 1868);
  if (v5 <= 0x13 && *(v1 + 1867) != 255)
  {
    v6 = 0;
    v7 = *(v38 + 40);
    v68[0] = v7 + 4;
    v68[1] = v7 + 22;
    v68[2] = v7 + 40;
    v68[3] = v7 + 58;
    v8 = v7 + 112;
    v9 = v7 + 130;
    v10 = v7 + 148;
    v11 = v7 + 166;
    v68[4] = v7 + 76;
    v68[5] = v7 + 94;
    v12 = v7 + 184;
    v13 = v7 + 202;
    v14 = v7 + 220;
    v68[6] = v8;
    v68[7] = v9;
    if (v5 >= 7)
    {
      v15 = 20 - v5;
    }

    else
    {
      v15 = 13;
    }

    v68[8] = v10;
    v68[9] = v11;
    v68[10] = v12;
    v68[11] = v13;
    v68[12] = v14;
    do
    {
      v16 = *(v1 + 1868) + v6;
      v17 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        buf = 67109376;
        v58 = v6;
        v59 = 1024;
        v60 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Match Buffer Parsing i:%d tableIndex:%d", &buf, 0xEu);
      }

      v18 = v68[v6];
      v19 = v18[17];
      if (v18[17] && *(v18 + 13))
      {
        --*(v1 + 1867);
        bzero(&buf, 0x1788uLL);
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        [*(v1 + 2136) objectAtIndex:v16];
        v20 = [objc_claimAutoreleasedReturnValue() objectForKeyedSubscript:@"MatchActionRulePeerAddress"];
        [v20 getBytes:&v40 + 2 range:{0, 6}];

        LOWORD(v40) = 259;
        WORD4(v40) = *v18 + 1;
        BYTE8(v41) = sub_10000AB54(v1, v18[17]);
        *&v41 = v18;
        BYTE11(v42) = 0;
        v39 = 0;
        sub_1000216B4(&v39);
        sub_100008D54(&v40, &buf, v21);
        sub_100022214(&v39);
        v66 = *(v1 + 1867) != 0;
        v67 = 1;
        v22 = **(v38 + 40);
        v23 = *(v18 + 13);
        v24 = v22 + 0xFFFFFFF;
        if (v22 >= v23)
        {
          v24 = **(v38 + 40);
        }

        v25 = v24 - v23;
        v65 = v24 - v23;
        v26 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
        {
          *v45 = 68158978;
          v46 = 6;
          v47 = 2096;
          v48 = &v40 + 2;
          v49 = 1024;
          v50 = v22;
          v51 = 1024;
          v52 = v23;
          v53 = 1024;
          v54 = v25;
          v55 = 1024;
          v56 = WORD4(v40);
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "ADV Buffer found %.6P now:%u event:%u delta:%u dataLen:%d", v45, 0x2Au);
        }

        sub_100009B00(&buf);
      }

      v27 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
      {
        v28 = *(v18 + 13);
        buf = 67109888;
        v58 = v6;
        v59 = 1024;
        v60 = v16;
        v61 = 1024;
        v62 = v19;
        v63 = 1024;
        LODWORD(v64) = v28;
        _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Skipping entry i:%d tableIndex:%d rssi:%d timeStamp:%d", &buf, 0x1Au);
      }

      ++v6;
    }

    while (v6 < v15);
    v29 = *(v1 + 1868) + 13;
    *(v1 + 1868) = v29;
    v30 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      v37 = *(v1 + 1867);
      buf = 67109376;
      v58 = v37;
      v59 = 1024;
      v60 = v29;
      _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Match Buffer after parsing,fMatchBufferExpectedEntries:%d fMatchBufferEntriesReceived:%d", &buf, 0xEu);
      v29 = *(v1 + 1868);
    }

    if (v29 >= 0x14u)
    {
      *(v1 + 1867) = 255;
      v31 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v32 = *(v1 + 144);
        if (*(v1 + 2144))
        {
          v33 = "YES";
        }

        else
        {
          v33 = "NO";
        }

        buf = 67109890;
        v58 = v32;
        v59 = 1024;
        v60 = 255;
        v61 = 1024;
        v62 = 0;
        v63 = 2082;
        v64 = v33;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Match Buffer We're done screenstate=%d fMatchBufferExpectedEntries:%d fMatchBufferEntriesReceived:%d pendingRules:%{public}s", &buf, 0x1Eu);
      }

      *(v1 + 1869) = 0;
      v34 = *(v1 + 2144);
      v35 = qword_100BCE918;
      v36 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
      if (v34)
      {
        if (v36)
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Match Buffer Reconfiguring the table", &buf, 2u);
        }

        sub_1007A2784(v1);
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
        {
          sub_100874F84();
        }
      }

      else
      {
        if (v36)
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Match Buffer enabling the buffer again after reading", &buf, 2u);
        }

        sub_1007A2D08(v1, 1);
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
        {
          sub_100874FF4();
        }
      }
    }
  }

  free(*(v38 + 40));
}

uint64_t sub_1007A2784(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "configureMatchActionRulesTableInternal", buf, 2u);
  }

  v3 = (a1 + 2136);
  objc_storeStrong((a1 + 2136), *(a1 + 2144));
  v4 = *(a1 + 2144);
  *(a1 + 2144) = 0;

  if (*(a1 + 2136) && [*(a1 + 2136) count])
  {
    v35 = 256;
    v5 = sub_1007A8820(a1, &v35);
    v6 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "createMatchActionRulesTable returned %d", buf, 8u);
    }

    if (v5 != 15 && v5)
    {
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_1008751A4();
      }
    }

    else
    {
      if ([*v3 count] > 0x13)
      {
        v7 = 20;
      }

      else
      {
        v7 = [*v3 count];
      }

      v31 = v7;
      v10 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        sub_100875064();
      }

      v30 = v35;
      v13 = v31;
      if (v31)
      {
        v14 = 0;
        v15 = 0;
        v16 = qword_100BCE918;
        *&v12 = 67109120;
        v29 = v12;
        while (1)
        {
          v32 = v15;
          v34 = v14;
          *(v51 + 14) = 0u;
          if ((v13 - v14) >= 14)
          {
            v17 = 14;
          }

          else
          {
            v17 = v13 - v14;
          }

          v50 = 0uLL;
          v51[0] = 0uLL;
          v48 = 0uLL;
          v49 = 0uLL;
          v46 = 0uLL;
          v47 = 0uLL;
          v45 = 0uLL;
          v43 = 0uLL;
          v44 = 0uLL;
          v41 = 0uLL;
          v42 = 0uLL;
          v39 = 0uLL;
          v40 = 0uLL;
          *buf = 0uLL;
          v18 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
          if (v18)
          {
            *v36 = v29;
            LODWORD(v37) = v17;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "count=%d", v36, 8u);
          }

          v33 = v17;
          if (v17)
          {
            v20 = 0;
            v21 = v14;
            do
            {
              v22 = [*v3 objectAtIndex:{v21, v29}];
              v23 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
              {
                *v36 = 138412290;
                v37 = v22;
                _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "rule=%@", v36, 0xCu);
              }

              v24 = [v22 objectForKeyedSubscript:@"MatchActionRuleLocalToken"];
              v25 = &buf[17 * v20];
              [v24 getBytes:v25 + 7 range:{0, 6}];

              v26 = [v22 objectForKeyedSubscript:@"MatchActionRulePeerAddress"];
              [v26 getBytes:v25 range:{0, 6}];

              v25[6] = 1;
              v25[13] = 18;

              ++v20;
              ++v21;
            }

            while (v20 < v33);
          }

          v27 = sub_10000C7D0(v18, v19);
          v15 = v33 + v34;
          v5 = (*(*v27 + 3432))(v27, v30, v32, (v33 + v34 - 1), buf);
          v16 = qword_100BCE918;
          if (v5)
          {
            break;
          }

          v10 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG);
          v14 = (v33 + v34);
          if (v10)
          {
            *v36 = v29;
            LODWORD(v37) = (v33 + v34);
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "entriesSent=%d", v36, 8u);
            v16 = qword_100BCE918;
          }

          v13 = v31;
          if (v31 <= v14)
          {
            v30 = v35;
            goto LABEL_39;
          }
        }

        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_1008750D4();
        }
      }

      else
      {
LABEL_39:
        v28 = sub_10000C7D0(v10, v11);
        v5 = (*(*v28 + 3408))(v28, v30, 1, 0);
        if (v5 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_10087513C();
        }
      }
    }
  }

  else
  {
    v8 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "new Match table rules are nil", buf, 2u);
    }

    return 0;
  }

  return v5;
}

uint64_t sub_1007A2D08(uint64_t a1, int a2)
{
  v4 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    v19 = 67109120;
    LODWORD(v20) = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Match Buffer enableMatchBuffering enable=%d", &v19, 8u);
  }

  if (*(a1 + 1867) == 255)
  {
    v7 = *(a1 + 1832);
    if (v7 == (a1 + 1840))
    {
LABEL_15:
      v11 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No table is configured", &v19, 2u);
      }

      return 0;
    }

    else
    {
      while (*(v7 + 28) != 18)
      {
        v8 = v7[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v7[2];
            v10 = *v9 == v7;
            v7 = v9;
          }

          while (!v10);
        }

        v7 = v9;
        if (v9 == (a1 + 1840))
        {
          goto LABEL_15;
        }
      }

      v12 = *(v7 + 15);
      v13 = qword_100BCE918;
      v14 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
      if (v14)
      {
        v16 = "pausing";
        if (a2)
        {
          v16 = "activating";
        }

        v19 = 136446210;
        v20 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Match Buffer mode change -> %{public}s ", &v19, 0xCu);
      }

      v17 = sub_10000C7D0(v14, v15);
      v6 = (*(*v17 + 3408))(v17, v12, 1, a2 ^ 1u);
      if (v6 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_10087520C();
      }
    }
  }

  else
  {
    v5 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "We're in the middle of reading it, we cant pause now", &v19, 2u);
    }

    return 12;
  }

  return v6;
}

void sub_1007A2F70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [[NSData alloc] initWithBytes:a2 length:*(a2 + 1) + 4];
    [gCBDaemonServer aopMessageReceived:?];
  }
}

uint64_t sub_1007A300C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE918;
  v5 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
  if (v5)
  {
    v19 = 138412290;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Setting up match rules with %@", &v19, 0xCu);
  }

  v7 = sub_10000C798(v5, v6);
  if ((*(*v7 + 744))(v7))
  {
    if (v3)
    {
      v8 = v3;
    }

    else
    {
      v8 = +[NSArray array];
    }

    v11 = *(a1 + 2144);
    *(a1 + 2144) = v8;

    v10 = sub_1007A2D08(a1, 0);
    if (!v10)
    {
      v12 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "succesfully paused", &v19, 2u);
      }

      v13 = sub_1007A42B8(a1);
      v14 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v19 = 67109120;
        LODWORD(v20) = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "readMatchBuffers returned %d", &v19, 8u);
      }

      v15 = qword_100BCE918;
      v16 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
      if (v13 == 12)
      {
        if (v16)
        {
          LOWORD(v19) = 0;
          v17 = "Match buffer read already in progress";
          goto LABEL_21;
        }

LABEL_22:
        v10 = 0;
        goto LABEL_26;
      }

      if (!v13)
      {
        if (v16)
        {
          LOWORD(v19) = 0;
          v17 = "Match buffer read started";
LABEL_21:
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v17, &v19, 2u);
          goto LABEL_22;
        }

        goto LABEL_22;
      }

      if (v16)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "we need to reconfigure now", &v19, 2u);
      }

      v10 = sub_1007A2784(a1);
    }
  }

  else
  {
    v9 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "This hardware does not support MatchActioRules", &v19, 2u);
    }

    v10 = 11;
  }

LABEL_26:

  return v10;
}

uint64_t *sub_1007A32D0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  a1[5] = &off_100AE0AB8;
  a1[6] = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  return sub_10000CB74(a1 + 7, (a2 + 56));
}

void sub_1007A3338(_Unwind_Exception *exception_object)
{
  *(v1 + 40) = v2;
  v4 = *(v1 + 48);
  if (v4)
  {
    sub_10000C808(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A3354(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  a1[5] = &off_100AE0AB8;
  v3 = a1[6];
  if (v3)
  {

    sub_10000C808(v3);
  }
}

void sub_1007A33C8(uint64_t a1, void (***a2)(void, uint64_t, void, uint64_t, uint64_t, void, void ***, const __CFString *))
{
  v3 = *(a1 + 32);
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  (**a2)(a2, v3, 0, a1 + 40, a1 + 56, 0, &v4, @"default");
  sub_10000CEDC(&v4, v5[0]);
}

void sub_1007A346C(uint64_t a1, void (***a2)(void, uint64_t, void, uint64_t, uint64_t, void, void ***, const __CFString *))
{
  v3 = *(a1 + 32);
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  (**a2)(a2, v3, 0, a1 + 40, a1 + 56, 0, &v4, @"default");
  sub_10000CEDC(&v4, v5[0]);
}

void sub_1007A3510(uint64_t a1, void (***a2)(void, uint64_t, void, uint64_t, uint64_t, void, void ***, const __CFString *))
{
  v3 = *(a1 + 32);
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  (**a2)(a2, v3, 0, a1 + 40, a1 + 56, 0, &v4, @"default");
  sub_10000CEDC(&v4, v5[0]);
}

uint64_t sub_1007A35C0(uint64_t a1)
{
  v1 = *(a1 + 1808);
  if (v1)
  {
    v3 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fADVBufferWatchdogTimer destroyed!", v5, 2u);
      v1 = *(a1 + 1808);
    }

    dispatch_source_cancel(v1);
    dispatch_release(*(a1 + 1808));
    *(a1 + 1808) = 0;
  }

  return 0;
}

uint64_t sub_1007A3658(uint64_t a1)
{
  if (!*(a1 + 1800))
  {
    v2 = *(a1 + 2152);
    v3 = qword_100BCE918;
    v4 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      *buf = 134217984;
      v13 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fADVBufferPeriodicDrainTimer %llu ms Armed!", buf, 0xCu);
    }

    v6 = sub_100007EE8(v4, v5);
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v6 + 8));
    *(a1 + 1800) = v7;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1007A8E4C;
    handler[3] = &unk_100ADF8F8;
    handler[4] = a1;
    dispatch_source_set_event_handler(v7, handler);
    v8 = *(a1 + 1800);
    v9 = dispatch_time(0x8000000000000000, 1000000 * v2);
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(*(a1 + 1800));
  }

  return 0;
}

uint64_t sub_1007A37B8(uint64_t a1, char a2)
{
  if (!*(a1 + 1808))
  {
    v4 = qword_100BCE918;
    v5 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      *buf = 134217984;
      v15 = 5000;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "fADVBufferWatchdogTimer %llu ms Armed!", buf, 0xCu);
    }

    v7 = sub_100007EE8(v5, v6);
    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v7 + 8));
    *(a1 + 1808) = v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1007A8F1C;
    v12[3] = &unk_100AE15D8;
    v12[4] = a1;
    v13 = a2;
    dispatch_source_set_event_handler(v8, v12);
    v9 = *(a1 + 1808);
    v10 = dispatch_time(0x8000000000000000, 5000000000);
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(*(a1 + 1808));
  }

  return 0;
}

uint64_t sub_1007A3920(uint64_t a1, unsigned int a2)
{
  if (a2 >= 3)
  {
    v3 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v26) = a2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HW ADV Buffer handle out of range (%d), ignoring agent request", buf, 8u);
    }

    return 7;
  }

  v6 = a1 + 544 * a2;
  if (*(v6 + 172) != 255)
  {
    v7 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      v8 = off_100B0D748[a2];
      *buf = 138543362;
      v26 = v8;
      v9 = "ADVBUFF(%{public}@): Cannot read ADV buffer since we're already in the process of reading it";
      v4 = 12;
      v10 = v7;
LABEL_24:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v9, buf, 0xCu);
      return v4;
    }

    return 12;
  }

  v11 = *(v6 + 167);
  v12 = qword_100BCE918;
  v13 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
  if ((v11 & 1) == 0)
  {
    if (v13)
    {
      v23 = off_100B0D748[a2];
      *buf = 138543362;
      v26 = v23;
      v9 = "ADVBUFF(%{public}@): Cannot read ADV buffer since its not created yet";
      v4 = 12;
      v10 = v12;
      goto LABEL_24;
    }

    return 12;
  }

  if (v13)
  {
    v15 = off_100B0D748[a2];
    *buf = 138543362;
    v26 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): Reading ADV Buffer", buf, 0xCu);
  }

  v16 = *sub_10000C7D0(v13, v14);
  v4 = (*(v16 + 3376))();
  v17 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v18 = off_100B0D748[a2];
    *buf = 138543874;
    v26 = v18;
    v27 = 1024;
    v28 = v4;
    v29 = 1024;
    v30 = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "ADVBUFF(%{public}@): Read ADV buffer complete with status %d expectedEntries %d", buf, 0x18u);
    v17 = qword_100BCE918;
  }

  *(v6 + 172) = 0;
  *(v6 + 173) = 0;
  *(v6 + 174) = 0;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = off_100B0D748[a2];
    v20 = *(v6 + 172);
    *buf = 138543874;
    v26 = v19;
    v27 = 1024;
    v28 = v4;
    v29 = 1024;
    v30 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): Read ADV buffer complete with status %d number of available entries %d", buf, 0x18u);
  }

  if (a2 == 2)
  {
    ++*(a1 + 2328);
  }

  if (!v4 && !*(v6 + 172))
  {
    v21 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      v22 = off_100B0D748[a2];
      *buf = 138543362;
      v26 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): Nothing in the ADV buffer, we're not expecing any events", buf, 0xCu);
    }

    *(v6 + 172) = -1;
    *(v6 + 169) = 0;
  }

  return v4;
}

uint64_t sub_1007A3CE4(_BYTE *a1)
{
  if (!sub_10002529C(a1))
  {
    v2 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR);
    if (!v2)
    {
LABEL_10:
      v4 = sub_100007EE8(v2, v3);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1007A3E34;
      v6[3] = &unk_100ADF8F8;
      v6[4] = a1;
      sub_10000CA94(v4, v6);
      return 12;
    }

LABEL_9:
    sub_100875274();
    goto LABEL_10;
  }

  if ((a1[167] & 1) == 0 && (a1[711] & 1) == 0)
  {
    v2 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR);
    if (!v2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((a1[1869] & 1) != 0 || (a1[171] & a1[167] & 1) != 0 || a1[715] == 1 && a1[711] == 1)
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_1008752B0();
    }

    return 12;
  }

  sub_1000677F8(a1, 4);
  return 0;
}

void sub_1007A3E3C(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1007A4098(a1);
    v4 = sub_10007D00C(a1);
    v5 = *(a1 + 1870);
    v9[0] = 67109632;
    v9[1] = v3;
    v10 = 1024;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "tryReadAOPBTADPDBuffers haveAnyHwAOPNearbyInfoBufferRequests:%d haveAnyHwAOPBTNearbyInfoV2BufferRequests:%d fAOPBTBufferReadInProgress:%d", v9, 0x14u);
  }

  if (*(a1 + 1870) == 1)
  {
    v6 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AOPBTADPDBuff Already being read, skipping", v9, 2u);
    }
  }

  else if ((!_os_feature_enabled_impl() || sub_1007A4098(a1)) && sub_10007D00C(a1))
  {
    v7 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AOPBTADPDBuff read in progress", v9, 2u);
    }

    if (sub_1000C5CF0(a1, 22, 0))
    {
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_100875440();
      }
    }

    else if (_os_feature_enabled_impl() && sub_1000C5CF0(a1, 16, 0))
    {
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_1008754A8();
      }
    }

    else
    {
      *(a1 + 1870) = 1;
      sub_1007A4100(a1);
      sub_1007A4198(a1);
      if (qword_100B51098 != -1)
      {
        sub_1008746E4();
      }

      sub_100488328(qword_100B51090, v8);
    }
  }
}

uint64_t sub_1007A4098(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 == (a1 + 2072))
  {
    return 0;
  }

  do
  {
    v3 = *(*(v1[5] + 8) + 148);
    result = (v3 >> 4) & 1;
    if ((v3 & 0x10) != 0)
    {
      break;
    }

    v5 = v1[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = v1[2];
        v7 = *v6 == v1;
        v1 = v6;
      }

      while (!v7);
    }

    v1 = v6;
  }

  while (v6 != v2);
  return result;
}

uint64_t sub_1007A4100(uint64_t a1)
{
  v1 = *(a1 + 1824);
  if (v1)
  {
    v3 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fAOPBTBufferPeriodicDrainTimer destroyed!", v5, 2u);
      v1 = *(a1 + 1824);
    }

    dispatch_source_cancel(v1);
    dispatch_release(*(a1 + 1824));
    *(a1 + 1824) = 0;
  }

  return 0;
}

uint64_t sub_1007A4198(uint64_t a1)
{
  if (!*(a1 + 1824))
  {
    v2 = qword_100BCE918;
    v3 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Arming fAOPBTBufferPeriodicDrainTimer", buf, 2u);
    }

    v5 = sub_100007EE8(v3, v4);
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v5 + 8));
    *(a1 + 1824) = v6;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1007A8D88;
    handler[3] = &unk_100ADF8F8;
    handler[4] = a1;
    dispatch_source_set_event_handler(v6, handler);
    v7 = *(a1 + 1824);
    v8 = dispatch_time(0x8000000000000000, 300000000000);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(*(a1 + 1824));
  }

  return 0;
}

uint64_t sub_1007A42B8(uint64_t a1)
{
  if (*(a1 + 1867) != 255)
  {
    v1 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Match Buffer Cannot read Match buffer since we're already in the process of reading it", &v21, 2u);
    }

    return 12;
  }

  v4 = [*(a1 + 2136) count];
  v5 = qword_100BCE918;
  v6 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
  if (!v4)
  {
    if (v6)
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Match Buffer Cannot read Match buffer since we do not have any rules set up", &v21, 2u);
    }

    return 18;
  }

  if (v6)
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Match Buffer Reading Match Buffer", &v21, 2u);
  }

  v7 = *(a1 + 1832);
  if (v7 == (a1 + 1840))
  {
LABEL_16:
    v11 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No table is configured", &v21, 2u);
    }

    return 17;
  }

  else
  {
    while (*(v7 + 28) != 18)
    {
      v8 = v7[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v7[2];
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      v7 = v9;
      if (v9 == (a1 + 1840))
      {
        goto LABEL_16;
      }
    }

    v12 = *(v7 + 15);
    v13 = qword_100BCE918;
    v14 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
    if (v14)
    {
      v21 = 67109120;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Match Buffer reading handle %d", &v21, 8u);
    }

    *(a1 + 1868) = 0;
    v16 = sub_10000C7D0(v14, v15);
    v2 = (*(*v16 + 3448))(v16, v12, a1 + 1867);
    v17 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 1867);
      v21 = 67109376;
      v22 = v2;
      v23 = 1024;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Match Buffer Read Match buffer complete with status %d number of available entries %d", &v21, 0xEu);
    }

    if (!v2)
    {
      if (*(a1 + 1867))
      {
        return 0;
      }

      v20 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Match Buffer Nothing in the ADV buffer, we're not expecing any events", &v21, 2u);
      }

      *(a1 + 1867) = -1;
      return 18;
    }
  }

  return v2;
}

void sub_1007A45CC(uint64_t a1, const void *a2)
{
  v3 = memcpy(v7, a2, sizeof(v7));
  v5 = sub_100007EE8(v3, v4);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007A465C;
  v6[3] = &unk_100B0CF30;
  v6[4] = a1;
  sub_10000CA94(v5, v6);
}

uint64_t sub_1007A465C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 68);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  v105 = vaddq_s64(*(v2 + 2160), vextq_s8(v4, v4, 8uLL));
  *(v2 + 2160) = v105;
  v5 = *(a1 + 60);
  v4.i64[0] = v5;
  v4.i64[1] = HIDWORD(v5);
  v104 = vaddq_s64(*(v2 + 2176), vextq_s8(v4, v4, 8uLL));
  *(v2 + 2176) = v104;
  v6 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 80);
    v8 = *(a1 + 84);
    v9 = *(a1 + 88);
    v10 = *(a1 + 92);
    v11 = *(a1 + 96);
    v12 = *(a1 + 100);
    v13 = *(a1 + 104);
    v14 = *(a1 + 108);
    v15 = *(a1 + 112);
    v16 = *(a1 + 116);
    v17 = *(a1 + 120);
    v18 = *(a1 + 124);
    v19 = *(a1 + 128);
    v20 = *(a1 + 132);
    v21 = *(a1 + 136);
    v22 = *(a1 + 140);
    v24 = *(a1 + 144);
    v23 = *(a1 + 148);
    v26 = *(a1 + 152);
    v25 = *(a1 + 156);
    v28 = *(a1 + 160);
    v27 = *(a1 + 164);
    v30 = *(a1 + 168);
    v29 = *(a1 + 172);
    *buf = 134224896;
    *&buf[4] = v105.i64[1];
    *&buf[12] = 2048;
    *&buf[14] = v105.i64[0];
    *&buf[22] = 2048;
    *&buf[24] = v104.i64[1];
    *v107 = 2048;
    *&v107[2] = v104.i64[0];
    *&v107[10] = 1024;
    *v108 = v7;
    *&v108[4] = 1024;
    *v109 = v8;
    *&v109[4] = 1024;
    *v110 = v9;
    *&v110[4] = 1024;
    *v111 = v10;
    *&v111[4] = 1024;
    *v112 = v11;
    *&v112[4] = 1024;
    *v113 = v12;
    *&v113[4] = 1024;
    *v114 = v13;
    *&v114[4] = 1024;
    *v115 = v14;
    *&v115[4] = 1024;
    *v116 = v15;
    *&v116[4] = 1024;
    *v117 = v16;
    *&v117[4] = 1024;
    *v118 = v17;
    *&v118[4] = 1024;
    *v119 = v18;
    *&v119[4] = 1024;
    *v120 = v19;
    *&v120[4] = 1024;
    *v121 = v20;
    *&v121[4] = 1024;
    *v122 = v21;
    *&v122[4] = 1024;
    *v123 = v22;
    *&v123[4] = 1024;
    v124 = v24;
    v125 = 1024;
    v126 = v23;
    v127 = 1024;
    v128 = v26;
    v129 = 1024;
    v130 = v25;
    v131 = 1024;
    v132 = v28;
    v133 = 1024;
    v134 = v27;
    v135 = 1024;
    v136 = v30;
    v137 = 1024;
    v138 = v29;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LEStats: BMC:%lld LP:%lld, MC: %lld  %lld  ]  RxL:%05d:%05d:%05d  EAdv:%04d:%04d:%04d LeLR:%04d:%04d:%04d Aux:%04d:%04d:%04d Arsp:%04d:%04d:%04d cd:%04d:%04d:%04d aCrc:%05d:%05d:%05d def:%04d:%04d:%04d", buf, 0xBAu);
    v6 = qword_100BCE918;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(a1 + 176);
    v32 = *(a1 + 180);
    v33 = *(a1 + 184);
    v34 = *(a1 + 188);
    v35 = *(a1 + 192);
    v36 = *(a1 + 196);
    v37 = *(a1 + 200);
    v38 = *(a1 + 204);
    v39 = *(a1 + 208);
    v40 = *(a1 + 212);
    v41 = *(a1 + 216);
    v42 = *(a1 + 220);
    v43 = *(a1 + 224);
    v44 = *(a1 + 228);
    v45 = *(a1 + 232);
    v46 = *(a1 + 236);
    v47 = *(a1 + 240);
    v48 = *(a1 + 244);
    v49 = *(a1 + 248);
    v50 = *(a1 + 252);
    v51 = *(a1 + 256);
    v52 = *(a1 + 260);
    v53 = *(a1 + 264);
    *buf = 67114752;
    *&buf[4] = v31;
    *&buf[8] = 1024;
    *&buf[10] = v32;
    *&buf[14] = 1024;
    *&buf[16] = v33;
    *&buf[20] = 1024;
    *&buf[22] = v34;
    *&buf[26] = 1024;
    *&buf[28] = v35;
    *v107 = 1024;
    *&v107[2] = v36;
    *&v107[6] = 1024;
    *&v107[8] = v37;
    *v108 = 1024;
    *&v108[2] = v38;
    *v109 = 1024;
    *&v109[2] = v39;
    *v110 = 1024;
    *&v110[2] = v40;
    *v111 = 1024;
    *&v111[2] = v41;
    *v112 = 1024;
    *&v112[2] = v42;
    *v113 = 1024;
    *&v113[2] = v43;
    *v114 = 1024;
    *&v114[2] = v44;
    *v115 = 1024;
    *&v115[2] = v45;
    *v116 = 1024;
    *&v116[2] = v46;
    *v117 = 1024;
    *&v117[2] = v47;
    *v118 = 1024;
    *&v118[2] = v48;
    *v119 = 1024;
    *&v119[2] = v49;
    *v120 = 1024;
    *&v120[2] = v50;
    *v121 = 1024;
    *&v121[2] = v51;
    *v122 = 1024;
    *&v122[2] = v52;
    *v123 = 1024;
    *&v123[2] = v53;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LEStats2: Rxa=%04d tSr=%04d tASr=%04d rSr=%04d tCi=%04d tCr=%04d rsRsp=%04d rsi=%04d rcr=%04d nba=%04d:%04d:%04d:%04d tot:%04d:%04d cden=%04d:%04d:%04d:%04d totAdv=%04d:%04d:%04d:%04d", buf, 0x8Cu);
    v6 = qword_100BCE918;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v68 = *(v2 + 2780);
    v69 = *(v2 + 2784);
    v70 = *(v2 + 2788);
    v71 = *(a1 + 60) + v68;
    v72 = *(a1 + 68) + v69;
    v73 = *(a1 + 44) + v70;
    *buf = 67110400;
    *&buf[4] = v68;
    *&buf[8] = 1024;
    *&buf[10] = v69;
    *&buf[14] = 1024;
    *&buf[16] = v70;
    *&buf[20] = 1024;
    *&buf[22] = v71;
    *&buf[26] = 1024;
    *&buf[28] = v72;
    *v107 = 1024;
    *&v107[2] = v73;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "BLEScanStat: MainCoreELNAOn [numAdvs, numAdvsBeforeFiltering, totalTime] [%d, %d, %d] -> [%d, %d, %d]", buf, 0x26u);
    v6 = qword_100BCE918;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v74 = *(v2 + 2792);
    v75 = *(v2 + 2796);
    v76 = *(v2 + 2800);
    v77 = *(a1 + 64) + v74;
    v78 = *(a1 + 72) + v75;
    v79 = *(a1 + 48) + v76;
    *buf = 67110400;
    *&buf[4] = v74;
    *&buf[8] = 1024;
    *&buf[10] = v75;
    *&buf[14] = 1024;
    *&buf[16] = v76;
    *&buf[20] = 1024;
    *&buf[22] = v77;
    *&buf[26] = 1024;
    *&buf[28] = v78;
    *v107 = 1024;
    *&v107[2] = v79;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "BLEScanStat: MainCoreELNABypass [numAdvs, numAdvsBeforeFiltering, totalTime] [%d, %d, %d] -> [%d, %d, %d]", buf, 0x26u);
    v6 = qword_100BCE918;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v80 = *(v2 + 2804);
    v81 = *(v2 + 2808);
    v82 = *(v2 + 2812);
    v83 = *(a1 + 252) + v80;
    v84 = *(a1 + 260) + v81;
    v85 = *(a1 + 228) + v82;
    *buf = 67110400;
    *&buf[4] = v80;
    *&buf[8] = 1024;
    *&buf[10] = v81;
    *&buf[14] = 1024;
    *&buf[16] = v82;
    *&buf[20] = 1024;
    *&buf[22] = v83;
    *&buf[26] = 1024;
    *&buf[28] = v84;
    *v107 = 1024;
    *&v107[2] = v85;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "BLEScanStat: ScanCoreELNAOn [numAdvs, numAdvsBeforeFiltering, totalTime] [%d, %d, %d] -> [%d, %d, %d]", buf, 0x26u);
    v6 = qword_100BCE918;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v86 = *(v2 + 2816);
    v87 = *(v2 + 2820);
    v88 = *(v2 + 2824);
    v89 = *(a1 + 256) + v86;
    v90 = *(a1 + 264) + v87;
    v91 = *(a1 + 232) + v88;
    *buf = 67110400;
    *&buf[4] = v86;
    *&buf[8] = 1024;
    *&buf[10] = v87;
    *&buf[14] = 1024;
    *&buf[16] = v88;
    *&buf[20] = 1024;
    *&buf[22] = v89;
    *&buf[26] = 1024;
    *&buf[28] = v90;
    *v107 = 1024;
    *&v107[2] = v91;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "BLEScanStat: ScanCoreELNABypass [numAdvs, numAdvsBeforeFiltering, totalTime] [%d, %d, %d] -> [%d, %d, %d]", buf, 0x26u);
    v6 = qword_100BCE918;
  }

  v54.i32[0] = *(a1 + 60);
  v54.i32[1] = *(a1 + 68);
  v54.i32[2] = *(a1 + 44);
  v54.i32[3] = *(a1 + 64);
  v55 = *(v2 + 2796);
  *(v2 + 2780) = vaddq_s32(*(v2 + 2780), v54);
  v54.i32[0] = *(a1 + 72);
  v54.i32[1] = *(a1 + 48);
  v54.i32[2] = *(a1 + 252);
  v54.i32[3] = *(a1 + 260);
  *(v2 + 2796) = vaddq_s32(v55, v54);
  v56.i32[0] = *(a1 + 228);
  v56.i32[1] = *(a1 + 256);
  v56.i32[2] = *(a1 + 264);
  v56.i32[3] = *(a1 + 232);
  *(v2 + 2812) = vaddq_s32(*(v2 + 2812), v56);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v92 = *(v2 + 3216);
    v93 = *(v2 + 3220);
    v94 = *(v2 + 3224);
    v95 = *(v2 + 3228);
    v96 = *(v2 + 3232);
    v97 = *(v2 + 3236);
    v98 = *(a1 + 284) + v92;
    v99 = *(a1 + 288) + v93;
    v100 = *(a1 + 292) + v94;
    v101 = *(a1 + 296) + v95;
    v102 = *(a1 + 276) + v96;
    v103 = *(a1 + 280) + v97;
    *buf = 67111936;
    *&buf[4] = v92;
    *&buf[8] = 1024;
    *&buf[10] = v93;
    *&buf[14] = 1024;
    *&buf[16] = v94;
    *&buf[20] = 1024;
    *&buf[22] = v95;
    *&buf[26] = 1024;
    *&buf[28] = v96;
    *v107 = 1024;
    *&v107[2] = v97;
    *&v107[6] = 1024;
    *&v107[8] = v98;
    *v108 = 1024;
    *&v108[2] = v99;
    *v109 = 1024;
    *&v109[2] = v100;
    *v110 = 1024;
    *&v110[2] = v101;
    *v111 = 1024;
    *&v111[2] = v102;
    *v112 = 1024;
    *&v112[2] = v103;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "BLEScanStat: ScanCoreCompensation [numAdvsELNAOn, numAdvsELNABypass, totalTimeELNAOn, totalTimeELNABypass, txBlankingBTMC, txBlankingWLAN] [%d, %d, %d, %d, %d, %d] -> [%d, %d, %d, %d, %d, %d]", buf, 0x4Au);
    v6 = qword_100BCE918;
  }

  *(v2 + 3216) = vaddq_s32(*(v2 + 3216), *(a1 + 284));
  *(v2 + 3232) = vadd_s32(*(v2 + 3232), *(a1 + 276));
  v57 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v57)
  {
    sub_100875638();
  }

  v59 = *(a1 + 84) + *(a1 + 80) + *(a1 + 88);
  v60 = *(a1 + 96) + *(a1 + 92) + *(a1 + 100);
  v61 = *(a1 + 108) + *(a1 + 104) + *(a1 + 112);
  v62 = *(a1 + 184);
  v63 = *(a1 + 192);
  v64 = *(a1 + 196);
  v65 = *(a1 + 176);
  v66 = sub_10000F034(v57, v58);
  *buf = 0;
  *&buf[8] = v59;
  *&buf[12] = v60;
  *&buf[16] = v61;
  *&buf[20] = v65;
  *&buf[28] = v63;
  *v107 = v62;
  *&v107[4] = v64;
  return (*(*v66 + 720))();
}

void sub_1007A4E78(uint64_t a1)
{
  v1 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: BLE Scan Stat:", buf, 2u);
    v1 = qword_100BCE918;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 2760);
    *buf = 134217984;
    v53 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: \tLast Stat Start Time: %f sec", buf, 0xCu);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v4 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 2760);
    v6 = Current - v5;
    if (Current < v5)
    {
      v6 = 0.0;
    }

    *buf = 134217984;
    v53 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: \tStat Measurement Duration: %f sec", buf, 0xCu);
    v4 = qword_100BCE918;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 2768);
    *buf = 67109120;
    LODWORD(v53) = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: \tNum Range Scan Requests: %u", buf, 8u);
    v4 = qword_100BCE918;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 2772);
    *buf = 67109120;
    LODWORD(v53) = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: \tNum Priority Critical Scan Requests: %u", buf, 8u);
    v4 = qword_100BCE918;
  }

  v9 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v11 = *(a1 + 2776);
    *buf = 67109120;
    LODWORD(v53) = v11;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: \tNum Scan Requests: %u", buf, 8u);
  }

  v12 = sub_10000C798(v9, v10);
  v13 = (*(*v12 + 664))(v12);
  if ((v13 & 1) != 0 || (v15 = sub_10000C798(v13, v14), v16 = (*(*v15 + 688))(v15), v16))
  {
    v18 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "statedump: \tMainCoreELNAOnStat:", buf, 2u);
      v18 = qword_100BCE918;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 2780);
      *buf = 67109120;
      LODWORD(v53) = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "statedump: \t\tnumAdvsAfterFiltering: %u", buf, 8u);
      v18 = qword_100BCE918;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 2784);
      *buf = 67109120;
      LODWORD(v53) = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "statedump: \t\tnumAdvsBeforeFiltering: %u", buf, 8u);
      v18 = qword_100BCE918;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 2788);
      *buf = 67109120;
      LODWORD(v53) = v21;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "statedump: \t\ttotalTime: %u msec", buf, 8u);
      v18 = qword_100BCE918;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "statedump: \tMainCoreELNABypassStat:", buf, 2u);
      v18 = qword_100BCE918;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 2792);
      *buf = 67109120;
      LODWORD(v53) = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "statedump: \t\tnumAdvsAfterFiltering: %u", buf, 8u);
      v18 = qword_100BCE918;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 2796);
      *buf = 67109120;
      LODWORD(v53) = v23;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "statedump: \t\tnumAdvsBeforeFiltering: %u", buf, 8u);
      v18 = qword_100BCE918;
    }

    v16 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      v24 = *(a1 + 2800);
      *buf = 67109120;
      LODWORD(v53) = v24;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "statedump: \t\ttotalTime: %u msec", buf, 8u);
    }
  }

  v25 = sub_10000C798(v16, v17);
  v26 = (*(*v25 + 688))(v25);
  v27 = qword_100BCE918;
  if (v26)
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "statedump: \tScanCoreELNAOnStat:", buf, 2u);
      v27 = qword_100BCE918;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 2804);
      *buf = 67109120;
      LODWORD(v53) = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "statedump: \t\tnumAdvsAfterFiltering: %u", buf, 8u);
      v27 = qword_100BCE918;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 2808);
      *buf = 67109120;
      LODWORD(v53) = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "statedump: \t\tnumAdvsBeforeFiltering: %u", buf, 8u);
      v27 = qword_100BCE918;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 2812);
      *buf = 67109120;
      LODWORD(v53) = v30;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "statedump: \t\ttotalTime: %u msec", buf, 8u);
      v27 = qword_100BCE918;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "statedump: \tScanCoreELNABypassStat:", buf, 2u);
      v27 = qword_100BCE918;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 2816);
      *buf = 67109120;
      LODWORD(v53) = v31;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "statedump: \t\tnumAdvsAfterFiltering: %u", buf, 8u);
      v27 = qword_100BCE918;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 2820);
      *buf = 67109120;
      LODWORD(v53) = v32;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "statedump: \t\tnumAdvsBeforeFiltering: %u", buf, 8u);
      v27 = qword_100BCE918;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(a1 + 2824);
      *buf = 67109120;
      LODWORD(v53) = v33;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "statedump: \t\ttotalTime: %u msec", buf, 8u);
      v27 = qword_100BCE918;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "statedump: \tScanCoreCompsensationStat:", buf, 2u);
      v27 = qword_100BCE918;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 3216);
      *buf = 67109120;
      LODWORD(v53) = v34;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "statedump: \t\tnumAdvsELNAOn: %u", buf, 8u);
      v27 = qword_100BCE918;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a1 + 3220);
      *buf = 67109120;
      LODWORD(v53) = v35;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "statedump: \t\numAdvsELNABypass: %u", buf, 8u);
      v27 = qword_100BCE918;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(a1 + 3224);
      *buf = 67109120;
      LODWORD(v53) = v36;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "statedump: \t\totalTimeELNAOn: %u", buf, 8u);
      v27 = qword_100BCE918;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *(a1 + 3228);
      *buf = 67109120;
      LODWORD(v53) = v37;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "statedump: \t\totalTimeELNABypass: %u", buf, 8u);
      v27 = qword_100BCE918;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(a1 + 3232);
      *buf = 67109120;
      LODWORD(v53) = v38;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "statedump: \t\txBlankingTimeByBTMC: %u", buf, 8u);
      v27 = qword_100BCE918;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *(a1 + 3236);
      *buf = 67109120;
      LODWORD(v53) = v39;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "statedump: \t\txBlankingTimeByWLAN: %u", buf, 8u);
      v27 = qword_100BCE918;
    }
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "statedump: \tTotal Scan Time per Type:", buf, 2u);
    v27 = qword_100BCE918;
  }

  v40 = 0;
  v49 = a1 + 2832;
  do
  {
    v41 = 0;
    v42 = 1;
    do
    {
      v43 = 0;
      v50 = v42;
      if (v42)
      {
        v44 = "Passive";
      }

      else
      {
        v44 = "Active ";
      }

      v45 = v49 + 24 * v41;
      do
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *&v46 = COERCE_DOUBLE("Unknown Scan Agent Type");
          if (v43 <= 2)
          {
            v46 = off_100B0D6B0[v43];
          }

          v47 = sub_1007AD6BC(a1, v40);
          v48 = *(v45 + 8 * v43);
          *buf = 136446978;
          v53 = *&v46;
          v54 = 2082;
          v55 = v44;
          v56 = 2080;
          v57 = v47;
          v58 = 2048;
          v59 = v48;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "statedump: \t\t%{public}s %{public}s %-37s: %f sec", buf, 0x2Au);
          v27 = qword_100BCE918;
        }

        ++v43;
      }

      while (v43 != 3);
      v42 = 0;
      v41 = 1;
    }

    while ((v50 & 1) != 0);
    ++v40;
    v49 += 48;
  }

  while (v40 != 7);
}

void sub_1007A5954(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  if ((*(*v3 + 688))(v3))
  {
    v4 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: BLE Connection Scan Stat (ScanCore):", &v13, 2u);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v6 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 3264);
      v8 = Current - v7;
      if (Current < v7)
      {
        v8 = 0.0;
      }

      v13 = 134217984;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump: \tLast Stat Start Time: %f sec", &v13, 0xCu);
      v6 = qword_100BCE918;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CFAbsoluteTimeGetCurrent() - *(a1 + 3264);
      v13 = 134217984;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump: \tStat Measurement Duration: %f sec", &v13, 0xCu);
      v6 = qword_100BCE918;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 3272);
      v13 = 67109120;
      LODWORD(v14) = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump: \tNum Connections made with MainCore while ScanCore Enabled:%u", &v13, 8u);
      v6 = qword_100BCE918;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 3276);
      v13 = 67109120;
      LODWORD(v14) = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump: \tNum Connections made with ScanCore while ScanCore Enabled:%u", &v13, 8u);
      v6 = qword_100BCE918;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 3280);
      v13 = 67109120;
      LODWORD(v14) = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump: \tNum ScanCore Enabled for Connection Scan:%u", &v13, 8u);
    }
  }
}

__n128 sub_1007A5BC0(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = *(a1 + 2176);
  result = *(a1 + 2160);
  *a2 = result;
  return result;
}

void sub_1007A5BD4(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10087436C();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1 + 16);
  if (qword_100B512F8 != -1)
  {
    sub_100874358();
  }

  v2 = off_100B512F0 + 192;

  sub_10007A3F0(v2, a1);
}

uint64_t sub_1007A5C6C(uint64_t a1, uint64_t a2)
{
  if (a2 >= 3)
  {
    v3 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v46) = a2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HW ADV Buffer handle out of range (%d), ignoring agent request", buf, 8u);
    }

    return 7;
  }

  v6 = sub_10000C798(a1, a2);
  v7 = (*(*v6 + 744))(v6);
  if (!v7)
  {
    v13 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v14 = off_100B0D748[a2];
      *buf = 138543362;
      v46 = v14;
      v15 = "HW ADV for %{public}@ not supported on this hardware, ignoring agent request";
      v16 = v13;
LABEL_22:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
    }

    return 11;
  }

  if (a2 == 2)
  {
    v9 = sub_10000C7D0(v7, v8);
    if (((*(*v9 + 2704))(v9) & 1) == 0)
    {
      v26 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v46 = @"EN";
        v15 = "HW ADV Buffers for %{public}@ not supported on this hardware, ignoring agent request";
        v16 = v26;
        goto LABEL_22;
      }

      return 11;
    }
  }

  v10 = a1 + 544 * a2;
  if (*(v10 + 167) == 1)
  {
    v11 = qword_100BCE918;
    if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      return 12;
    }

    v12 = off_100B0D748[a2];
    *buf = 138543362;
    v46 = v12;
    v4 = 12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): already created", buf, 0xCu);
    return v4;
  }

  v44 = 0;
  v43 = 0;
  v17 = qword_100BCE918;
  v18 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
  if (v18)
  {
    v20 = off_100B0D748[a2];
    *buf = 138543362;
    v46 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): sending advBufConfig", buf, 0xCu);
  }

  v21 = sub_10000C7D0(v18, v19);
  v4 = (*(*v21 + 3344))(v21, a2, *(v10 + 160), &v43, *(v10 + 161), *(v10 + 162), *(v10 + 164), *(v10 + 165), *(v10 + 166));
  v22 = qword_100BCE918;
  v23 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
  if (v23)
  {
    v25 = off_100B0D748[a2];
    *buf = 138543618;
    v46 = v25;
    v47 = 1024;
    v48 = v4;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): ADVBufConfig returned %d", buf, 0x12u);
  }

  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_1008759EC();
    }

    return v4;
  }

  v28 = *sub_10000C7D0(v23, v24);
  if (a2 != 2)
  {
    v32 = (*(v28 + 2696))();
    if (v32)
    {
      v34 = v32;
      v35 = 0;
      v4 = 0;
      v36 = a1 + 544 * a2 + 228;
      do
      {
        if (*(v36 - 34))
        {
          v37 = sub_10000C7D0(v32, v33);
          BYTE2(v42) = *(v36 - 28);
          LOWORD(v42) = *(v36 - 30);
          v32 = (*(*v37 + 3352))(v37, a2, *(v36 - 36), &v43, *(v36 - 35), *(v36 - 34), *(v36 - 32), *(v36 - 31), v42, v36 - 27, v36);
          v4 = v32;
          if (v32)
          {
            v38 = qword_100BCE918;
            v32 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR);
            if (v32)
            {
              v39 = off_100B0D748[a2];
              *buf = 138543618;
              v46 = v39;
              v47 = 1024;
              v48 = v4;
              _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "ADVBUFF(%{public}@): Failed to configure ext buffer adv rule: %d", buf, 0x12u);
            }
          }

          else
          {
            --v34;
          }
        }

        if (v35 > 6)
        {
          break;
        }

        ++v35;
        v36 += 64;
      }

      while (v34);
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_48;
  }

  v4 = (*(v28 + 3416))();
  v29 = qword_100BCE918;
  v30 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
  if (v30)
  {
    *buf = 138543618;
    v46 = @"EN";
    v47 = 1024;
    v48 = v4;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): advBufRSSIBinsThreshold returned %d", buf, 0x12u);
  }

  if (!v4)
  {
    v40 = sub_10000C7D0(v30, v31);
    v4 = (*(*v40 + 3424))(v40, a2, 0);
    v41 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v46 = @"EN";
      v47 = 1024;
      v48 = v4;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): advBufConfigTimeSlice returned %d", buf, 0x12u);
    }

    if (v4)
    {
      goto LABEL_45;
    }

LABEL_48:
    *(v10 + 167) = 1;
    *(v10 + 170) = 0;
    return v4;
  }

  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
  {
    sub_100875A74();
  }

LABEL_45:
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
  {
    sub_100875A74();
  }

  return v4;
}

void sub_1007A6318(uint64_t a1)
{
  if (!*(a1 + 2288))
  {
    *(a1 + 2320) = 0;
    if (qword_100B54770 != -1)
    {
      sub_100875AF4();
    }

    v2 = sub_1005128BC(off_100B54768);
    v3 = qword_100BCEA38;
    if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fContactTracingScanDurationTimer Timer %llu ms Armed!", buf, 0xCu);
    }

    sub_1007A92F4(a1);
    sub_1007A9610(a1);
    if (qword_100B54770 != -1)
    {
      sub_1008743D0();
    }

    sub_100511F18();
    v6 = sub_100007EE8(v4, v5);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1007A9B80;
    v14[3] = &unk_100AE0860;
    v14[4] = a1;
    v14[5] = v2;
    sub_10000CA94(v6, v14);
    v9 = sub_100007EE8(v7, v8);
    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v9 + 8));
    *(a1 + 2288) = v10;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1007A9C1C;
    handler[3] = &unk_100ADF8F8;
    handler[4] = a1;
    dispatch_source_set_event_handler(v10, handler);
    v11 = *(a1 + 2288);
    v12 = dispatch_time(0x8000000000000000, 1000000 * v2);
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(*(a1 + 2288));
  }
}

uint64_t *sub_1007A658C(uint64_t *result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      sub_1000C7698();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    v16[4] = result;
    if (v12)
    {
      sub_1007B2808(result, v12);
    }

    v13 = 40 * v9;
    v16[0] = 0;
    v16[1] = v13;
    v16[3] = 0;
    v14 = *a2;
    *(v13 + 12) = *(a2 + 12);
    *v13 = v14;
    v15 = *(a2 + 4);
    *(a2 + 4) = 0;
    *(v13 + 32) = v15;
    v16[2] = 40 * v9 + 40;
    sub_1007B273C(result, v16);
    v8 = v3[1];
    result = sub_1007B2860(v16);
  }

  else
  {
    v6 = *a2;
    *(v4 + 12) = *(a2 + 12);
    *v4 = v6;
    v7 = *(a2 + 4);
    *(a2 + 4) = 0;
    *(v4 + 32) = v7;
    v8 = v4 + 40;
  }

  v3[1] = v8;
  return result;
}

void sub_1007A66B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007B2860(va);
  _Unwind_Resume(a1);
}

void sub_1007A66D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = sub_100007EE8(a1, a2);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1007AD498;
  v13[3] = &unk_100B0BA60;
  v14 = a6;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  sub_10000CA94(v12, v13);
}

uint64_t sub_1007A6788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = sub_10000C7D0(a1, a2);
  if ((*(*v7 + 728))(v7, v6, a3, a4) && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
  {
    sub_100875C7C();
  }

  return 0;
}

uint64_t sub_1007A682C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000C7D0(a1, a2);
  if ((*(*v9 + 736))(v9, a2, a3, a4, a5) && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
  {
    sub_100875CE4();
  }

  return 0;
}

uint64_t sub_1007A68D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned __int8 a9, uint64_t a10, __int16 a11, char a12, char a13, char a14)
{
  v20 = sub_10000C798(a1, a2);
  v21 = (*(*v20 + 632))(v20);
  if (!v21 || (v23 = sub_10000C7D0(v21, v22), BYTE4(v25) = a14, BYTE3(v25) = a13, BYTE2(v25) = a12, LOWORD(v25) = a11, (*(*v23 + 672))(v23, a3, a4, a5, a6, a7, a8, a9, a10, v25)))
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100875D4C();
    }
  }

  return 0;
}

uint64_t sub_1007A6A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, __int16 a11, char a12)
{
  v18 = sub_10000C798(a1, a2);
  v19 = (*(*v18 + 632))(v18);
  if (!v19 || (v21 = sub_10000C7D0(v19, v20), BYTE2(v23) = a12, LOWORD(v23) = a11, (*(*v21 + 688))(v21, a3, a4, a5, a6, a7, a8, a9, a10, v23)))
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100875DB4();
    }
  }

  return 0;
}

uint64_t sub_1007A6B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C798(a1, a2);
  v5 = (*(*v4 + 632))(v4);
  if (v5)
  {
    v7 = sub_10000C7D0(v5, v6);
    v8 = (*(*v7 + 720))(v7, a3);
    if (!v8)
    {
      return v8;
    }
  }

  else
  {
    v8 = 11;
  }

  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
  {
    sub_100875E1C();
  }

  return v8;
}

uint64_t sub_1007A6C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000C798(a1, a2);
  v6 = (*(*v5 + 632))(v5);
  if (!v6 || (v8 = sub_10000C7D0(v6, v7), (*(*v8 + 696))(v8, a2, a3)))
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100875E84();
    }
  }

  return 0;
}

uint64_t sub_1007A6D0C(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = sub_100007EE8(a1, a2);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007A6DD0;
  v6[3] = &unk_100AE25F0;
  v6[4] = &v7;
  v6[5] = a1;
  sub_10000D334(v3, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1007A6DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1007A6DEC(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 2072);
  if (v2)
  {
    v3 = a1 + 2072;
    do
    {
      v4 = *(v2 + 32);
      v5 = v4 >= a2;
      v6 = v4 < a2;
      if (v5)
      {
        v3 = v2;
      }

      v2 = *(v2 + 8 * v6);
    }

    while (v2);
    if (v3 != a1 + 2072 && *(v3 + 32) <= a2 && *(*(v3 + 40) + 8))
    {
      operator new();
    }
  }

  return 0;
}

void sub_1007A6EB0(uint64_t a1, uint64_t a2, int a3)
{
  if (sub_10000C5E0(*(a2 + 8) + 48) >= 0x19)
  {
    v6 = sub_10000C5F8(*(a2 + 8) + 48);
    v8 = *v6 == 76 && *(v6 + 2) == 2;
    if (v8)
    {
      v9 = v6;
      if (*(v6 + 3) >= 0x15u)
      {
        v10 = sub_10000C7D0(v6, v7);
        if ((*(*v10 + 4112))(v10) <= a3)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v11 = *(a1 + 2024);
          if (v11 != (a1 + 2032))
          {
            v12 = (v9 + 4);
            do
            {
              v13 = sub_10000C5F8((v11 + 4));
              v14 = sub_10000C5E0((v11 + 4));
              v15 = sub_10000C5F8((v11 + 6));
              v16 = sub_10000C5E0((v11 + 6));
              if (v14 >= v16)
              {
                v17 = v16;
              }

              else
              {
                v17 = v14;
              }

              if (v17)
              {
                v18 = v12;
                while (1)
                {
                  v20 = *v18++;
                  v19 = v20;
                  v21 = *v15++;
                  v22 = v21 & v19;
                  v23 = *v13++;
                  if (v22 != v23)
                  {
                    break;
                  }

                  if (!--v17)
                  {
                    goto LABEL_18;
                  }
                }
              }

              else
              {
LABEL_18:
                sub_1007A7C70(&v29, (v11 + 4));
              }

              v24 = v11[1];
              if (v24)
              {
                do
                {
                  v25 = v24;
                  v24 = *v24;
                }

                while (v24);
              }

              else
              {
                do
                {
                  v25 = v11[2];
                  v8 = *v25 == v11;
                  v11 = v25;
                }

                while (!v8);
              }

              v11 = v25;
            }

            while (v25 != (a1 + 2032));
            v26 = v29;
            v27 = v30;
            if (v30 != v29)
            {
              do
              {
                sub_1007B3278((a1 + 2024), v26);
                v26 += 32;
              }

              while (v26 != v27);
              sub_1007A7980(a1, v28);
            }
          }

          v32 = &v29;
          sub_1007B2EF4(&v32);
        }
      }
    }
  }
}

void sub_1007A706C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  a12 = &a9;
  sub_1007B2EF4(&a12);
  _Unwind_Resume(a1);
}

void *sub_1007A7118(void *a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  a1[7] = &off_100AE0AB8;
  a1[8] = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  sub_10000CB74(a1 + 9, (a2 + 72));
  return sub_10004EE18(a1 + 12, a2 + 96);
}

void sub_1007A718C(_Unwind_Exception *exception_object)
{
  v4 = v1[9];
  if (v4)
  {
    v1[10] = v4;
    operator delete(v4);
  }

  v1[7] = v2;
  v5 = v1[8];
  if (v5)
  {
    sub_10000C808(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A71C0(uint64_t a1)
{
  sub_10000CEDC(a1 + 96, *(a1 + 104));
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  *(a1 + 56) = &off_100AE0AB8;
  v3 = *(a1 + 64);
  if (v3)
  {

    sub_10000C808(v3);
  }
}

id sub_1007A7284(uint64_t a1)
{
  if (*(a1 + 88) == *(a1 + 96) || !*(a1 + 184))
  {
    v1 = *(a1 + 176);
  }

  else
  {
    v1 = [NSSet setWithObject:?];
  }

  return v1;
}

id sub_1007A730C(uint64_t a1, uint64_t a2)
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = sub_10000C5E0(a2);
  v5 = sub_10000C5F8(a2);
  v6 = v5;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      LODWORD(v7) = 2;
      v8 = 3;
      do
      {
        v9 = *(v6 + v8);
        v10 = [NSString stringWithUTF8String:sub_10079D8BC(*(v6 + v7))];
        [v3 appendFormat:@"%@, ", v10];

        v7 = v7 + 2 + v9;
        v8 = v7 + 1;
      }

      while (v4 > v7 + 1);
    }
  }

  else if (*v5 != 76)
  {
    [v3 appendFormat:@"Others, "];
  }

  return v3;
}

uint64_t sub_1007A7444(os_unfair_lock_s *a1, uint32_t a2)
{
  v4 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    os_unfair_lock_opaque = a1[496]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque > 4)
    {
      v6 = "UNKNOWN";
    }

    else
    {
      v6 = off_100B0D700[os_unfair_lock_opaque];
    }

    v7 = a1[497]._os_unfair_lock_opaque;
    if (v7 > 3)
    {
      v8 = "UNKNOWN";
    }

    else
    {
      v8 = off_100B0D728[v7];
    }

    if (a2 > 3)
    {
      v9 = "UNKNOWN";
    }

    else
    {
      v9 = off_100B0D728[a2];
    }

    v12 = 136447234;
    v13 = v6;
    v14 = 2082;
    v15 = v8;
    v16 = 1024;
    v17 = v7;
    v18 = 2082;
    v19 = v9;
    v20 = 1024;
    v21 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "scan state:%{public}s, changing ObserverState %{public}s(%d) --> %{public}s(%d)", &v12, 0x2Cu);
  }

  a1[497]._os_unfair_lock_opaque = a2;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return sub_100017DE0(a1, 0);
      }

      goto LABEL_19;
    }

    sub_1005B0DAC(&a1[14]);
    v10 = &stru_100B0D2E8;
LABEL_21:
    sub_10000D058(a1 + 474, v10);
    return sub_100017DE0(a1, 0);
  }

  if (a2 == 3)
  {
LABEL_19:
    sub_1005B0E88(&a1[14]);
    return sub_100017DE0(a1, 0);
  }

  if (a2 == 2)
  {
    v10 = &stru_100B0D2C8;
    goto LABEL_21;
  }

  return sub_100017DE0(a1, 0);
}

void sub_1007A75E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_10000C5E0(a2) <= 0x15 && (v6 = sub_10000C5E0(a2), v6 <= sub_10000C5E0(a3)))
  {
    v8 = dispatch_time(0x8000000000000000, 0);
    v9 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      sub_10000C250(a2, buf);
      v10 = (buf[23] & 0x80u) == 0 ? buf : *buf;
      *v20 = 136446466;
      *&v20[4] = v10;
      v21 = 2048;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Received zone lost event for zone %{public}s at %lld", v20, 0x16u);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    v11 = *(a1 + 2048);
    if (v8 <= v11)
    {
      memset(buf, 0, sizeof(buf));
      sub_1007B1E34(buf, a2, a3);
      if ((a1 + 2032) == sub_1007B2B14(a1 + 2024, buf))
      {
        v15 = dispatch_time(0x8000000000000000, 30000000000);
        *v20 = buf;
        sub_1007B2BF0((a1 + 2024), buf, &unk_1008A9BD0, v20, &v18)[8] = v15;
        sub_1007A7980(a1, v16);
      }

      *&buf[16] = &off_100AE0A78;
      if (*&buf[24])
      {
        sub_10000C808(*&buf[24]);
      }

      *buf = &off_100AE0A78;
      if (*&buf[8])
      {
        sub_10000C808(*&buf[8]);
      }
    }

    else
    {
      v12 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v11;
        *&buf[12] = 2048;
        *&buf[14] = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "We are beyond the zone lost timeout (%lld).  Sending directly to clients.  Now %lld", buf, 0x16u);
      }

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1007A7950;
      v17[3] = &unk_100B0D078;
      v17[4] = a2;
      v17[5] = a3;
      sub_10000D058((a1 + 1896), v17);
      if (*(sub_10000C7D0(v13, v14) + 800) == 1)
      {
        sub_100017DE0(a1, 1);
      }
    }
  }

  else
  {
    v7 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      *&buf[4] = sub_10000C5E0(a2);
      *&buf[12] = 2048;
      *&buf[14] = sub_10000C5E0(a3);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Zone Lost event has invalid sizes.  zoneLength:%zu maskLength:%zu", buf, 0x16u);
    }
  }
}

void sub_1007A7930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1007B1ED8(va);
  _Unwind_Resume(a1);
}

void sub_1007A7980(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 2040);
  v4 = *(a1 + 2056);
  if (v3)
  {
    if (v4)
    {
      dispatch_suspend(v4);
    }

    else
    {
      v5 = sub_100007EE8(0, a2);
      v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v5 + 8));
      *(a1 + 2056) = v6;
      dispatch_source_set_event_handler(v6, &stru_100B0D098);
    }

    v7 = *(a1 + 2024);
    v8 = -1;
    if (v7 != (a1 + 2032))
    {
      do
      {
        if (v8 >= v7[8])
        {
          v8 = v7[8];
        }

        v9 = v7[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != (a1 + 2032));
    }

    dispatch_source_set_timer(*(a1 + 2056), v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v12 = *(a1 + 2056);

    dispatch_resume(v12);
  }

  else if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(a1 + 2056));
    *(a1 + 2056) = 0;
  }
}

void sub_1007A7A84(id a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100876628();
  }

  v2 = off_100B51070;

  sub_1007A7AC8(v2);
}

void sub_1007A7AC8(uint64_t a1)
{
  v2 = dispatch_time(0x8000000000000000, 0);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v4 = *(a1 + 2024);
  if (v4 != (a1 + 2032))
  {
    v5 = v2;
    do
    {
      if (v4[8] <= v5)
      {
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1007A7C3C;
        v11[3] = &unk_100B0D0B8;
        v11[4] = v4 + 4;
        sub_10000D058((a1 + 1896), v11);
        sub_1007A7C70(&v12, (v4 + 4));
      }

      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != (a1 + 2032));
    v9 = v12;
    v10 = v13;
    while (v9 != v10)
    {
      sub_1007B3278((a1 + 2024), v9);
      v9 += 32;
    }
  }

  sub_1007A7980(a1, v3);
  v15 = &v12;
  sub_1007B2EF4(&v15);
}

void sub_1007A7C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char *a18)
{
  a18 = &a15;
  sub_1007B2EF4(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_1007A7C70(void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1007B2F7C(a1, a2);
  }

  else
  {
    sub_1007B2DF4(a1[1], a2);
    result = v3 + 32;
    a1[1] = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1007A7CC4(int a1, const void *a2, size_t __n, uint64_t a4)
{
  result = 161;
  if (a2)
  {
    v6 = __n;
    if (__n)
    {
      result = 161;
      if (a1 == 18)
      {
        if (a4)
        {
          if (__n < 0x1E)
          {
            v8 = a4 + 5072 + 56 * *(a4 + 5632);
            *(v8 + 16) = 0;
            *v8 = xmmword_1008A4F0C;
            v9 = (a4 + 5072 + 56 * *(a4 + 5632));
            v9[20] = 1;
            v9[21] = __n < 4;
            memcpy(v9 + 22, a2, __n);
            result = 0;
            v10 = *(a4 + 5632);
            *(a4 + 5072 + 56 * v10 + 52) = v6 + 2;
            *(a4 + 5632) = v10 + 1;
          }

          else
          {
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
            {
              sub_10087663C();
            }

            return 162;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1007A7DCC(int a1, uint64_t a2, unint64_t a3, BOOL *a4)
{
  result = 161;
  if (a2 && a3 && a1 == 18)
  {
    if (a4)
    {
      result = 0;
      *a4 = a3 < 3;
    }
  }

  return result;
}

uint64_t sub_1007A7E08(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100876628();
  }

  v2 = off_100B51070;
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = *(a1 + 57);
  v6 = *(a1 + 58);
  v7 = *(a1 + 59);
  v8 = *(a1 + 60);

  return sub_100046E40(v2, v3, v4, a1 + 40, v5, v6, v7, v8);
}

void sub_1007A7E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  v14 = &off_100AE0A78;
  v15 = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  v5 = *(a3 + 8);
  v12 = &off_100AE0A78;
  v13 = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }

  v6 = sub_100007EE8(v5, a2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_1007A8068;
  v7[3] = &unk_100B0D128;
  v8 = &off_100AE0A78;
  v9 = v15;
  if (v15)
  {
    sub_10000C69C(v15);
  }

  v10 = &off_100AE0A78;
  v11 = v13;
  if (v13)
  {
    sub_10000C69C(v13);
  }

  sub_10000CA94(v6, v7);
  v10 = &off_100AE0A78;
  if (v11)
  {
    sub_10000C808(v11);
  }

  v8 = &off_100AE0A78;
  if (v9)
  {
    sub_10000C808(v9);
  }

  v12 = &off_100AE0A78;
  if (v13)
  {
    sub_10000C808(v13);
  }

  v14 = &off_100AE0A78;
  if (v15)
  {
    sub_10000C808(v15);
  }
}

void sub_1007A8004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, atomic_uint *a14, uint64_t a15, uint64_t a16, uint64_t a17, atomic_uint *a18)
{
  if (a14)
  {
    sub_10000C808(a14);
  }

  if (a18)
  {
    sub_10000C808(a18);
  }

  *(v19 - 64) = v18;
  v21 = *(v19 - 56);
  if (v21)
  {
    sub_10000C808(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A8068(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100876628();
  }

  v2 = off_100B51070;

  sub_1007A75E4(v2, a1 + 32, a1 + 48);
}

void sub_1007A80C0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[4] = &off_100AE0A78;
  a1[5] = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  v5 = *(a2 + 56);
  a1[6] = &off_100AE0A78;
  a1[7] = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }
}

void sub_1007A8148(_Unwind_Exception *exception_object)
{
  *(v1 + 32) = v2;
  v4 = *(v1 + 40);
  if (v4)
  {
    sub_10000C808(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A8164(void *a1)
{
  a1[6] = &off_100AE0A78;
  v2 = a1[7];
  if (v2)
  {
    sub_10000C808(v2);
  }

  a1[4] = &off_100AE0A78;
  v3 = a1[5];
  if (v3)
  {

    sub_10000C808(v3);
  }
}

void sub_1007A81F8()
{
  v0 = qword_100BCE918;
  v1 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
  if (v1)
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Stream state changed, re-evaluating scan params", v4, 2u);
  }

  v3 = sub_100007EE8(v1, v2);
  sub_10000CA94(v3, &stru_100B0D158);
}

void sub_1007A8270(id a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100876628();
  }

  v2 = off_100B51070;

  sub_100017DE0(v2, 0);
}

void sub_1007A82C4(uint64_t a1)
{
  v2 = qword_100BCE918;
  v3 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "scanRxConfigured", buf, 2u);
  }

  v5 = sub_100007EE8(v3, v4);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007A8384;
  v6[3] = &unk_100ADF8F8;
  v6[4] = a1;
  sub_10000CA94(v5, v6);
}

void sub_1007A8398()
{
  v0 = qword_100BCE918;
  v1 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
  if (v1)
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "BT ACL protect mode changed, re-evaluating scan params", v4, 2u);
  }

  v3 = sub_100007EE8(v1, v2);
  sub_10000CA94(v3, &stru_100B0D178);
}

void sub_1007A8410(id a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100876628();
  }

  v2 = off_100B51070;

  sub_100017DE0(v2, 0);
}

void sub_1007A8460(uint64_t a1, int a2)
{
  v4 = qword_100BCE918;
  v5 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *buf = 67109120;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SDP Progress Changed inProgress=%d", buf, 8u);
  }

  v7 = sub_100007EE8(v5, v6);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007A8568;
  v8[3] = &unk_100AE15D8;
  v8[4] = a1;
  v9 = a2;
  sub_10000CA94(v7, v8);
}

uint64_t sub_1007A8568(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 4424) = *(a1 + 40);
  return sub_100017DE0(v1, 0);
}

void sub_1007A858C(uint64_t a1, unint64_t a2, uint64_t a3, char a4, char a5)
{
  if (qword_100B508D0 != -1)
  {
    sub_1008743BC();
  }

  *(&v10 + 1) = a3;
  *&v10 = bswap64(a2);
  *uu = 0;
  v21 = 0;
  sub_1000498D4(off_100B508C8, v10 >> 16, 0, 1u, 0, 0, uu);
  if (uuid_is_null(uu))
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_1008766CC();
    }
  }

  else
  {
    v11 = sub_10004DF60(uu);
    v13 = sub_100007EE8(v11, v12);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1007A8734;
    v15[3] = &unk_100AF9820;
    v17 = a1;
    v14 = v11;
    v16 = v14;
    v18 = a4;
    v19 = a5;
    sub_10000CA94(v13, v15);
  }
}

void sub_1007A8734(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007A87DC;
  v3[3] = &unk_100B0D1A0;
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  sub_10000D058(v2 + 474, v3);
}

uint64_t sub_1007A8820(uint64_t a1, unsigned __int16 *a2)
{
  v25 = 0;
  v4 = sub_1000C7D9C(a1, 18, 0x14u, &v25);
  v5 = v25;
  *a2 = v25;
  if (v4)
  {
    v6 = v4;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100875B08();
    }
  }

  else
  {
    v24 = v5;
    *buf = &v24;
    v7 = sub_1000BED44(a1 + 1832, &v24, &unk_1008A9BD0, buf);
    v8 = *(v7 + 29);
    v9 = *(v7 + 15);
    v10 = *(v7 + 17);
    v11 = *(v7 + 19);
    v12 = qword_100BCE918;
    v13 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      *buf = 67109376;
      *&buf[4] = v5;
      v27 = 1024;
      v28 = 18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Creating a match table with handle %d for type %d", buf, 0xEu);
    }

    v15 = sub_10000C7D0(v13, v14);
    v23 = 0;
    v22 = 0;
    v21 = 0;
    v20 = 0;
    v6 = (*(*v15 + 3384))(v15, v5, 23, 255, 76, 18, 0, 20, v20, 0, v22, 0, 0, v23);
    if (!v6)
    {
      v24 = v9;
      *buf = &v24;
      v16 = sub_1000BED44(a1 + 1832, &v24, &unk_1008A9BD0, buf);
      *(v16 + 28) = 18;
      *(v16 + 29) = v8;
      *(v16 + 15) = v9;
      *(v16 + 16) = 1;
      *(v16 + 17) = v10;
      *(v16 + 18) = 20;
      *(v16 + 19) = v11;
      *a2 = v5;
      v18 = *sub_10000C7D0(v16, v17);
      v6 = (*(v18 + 3440))();
      if (v6)
      {
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_1008767B4();
        }
      }
    }
  }

  return v6;
}

void sub_1007A8AC8(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v5, "MatchTable");
  sub_100007E30(__p, "ADPDBufferDupNumEntries");
  (*(*v1 + 128))(v1, v5, __p, &dword_100B54F8C);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  v2 = sub_10000E92C();
  sub_100007E30(v5, "MatchTable");
  sub_100007E30(__p, "ADPDBufferDupClearTimeoutSeconds");
  (*(*v2 + 128))(v2, v5, __p, &dword_100B54F90);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_1007A8BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A8C28(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v5, "MatchTable");
  sub_100007E30(__p, "NearbyInfoBufferDupNumEntries");
  (*(*v1 + 128))(v1, v5, __p, &dword_100B54F94);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  v2 = sub_10000E92C();
  sub_100007E30(v5, "MatchTable");
  sub_100007E30(__p, "NearbyInfoBufferDupClearTimeoutSeconds");
  (*(*v2 + 128))(v2, v5, __p, &dword_100B54F98);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_1007A8D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A8D88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 144);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "fAOPBTBufferPeriodicDrainTimer Timer expired! screenState:%d", v4, 8u);
  }

  dispatch_source_cancel(*(v1 + 1824));
  dispatch_release(*(v1 + 1824));
  *(v1 + 1824) = 0;
  sub_1007A3E3C(v1);
}

void sub_1007A8E4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 144);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "fADVBufferPeriodicDrainTimer Timer expired! screenState:%d", v4, 8u);
  }

  dispatch_source_cancel(*(v1 + 1800));
  dispatch_release(*(v1 + 1800));
  *(v1 + 1800) = 0;
  if ((*(v1 + 144) & 1) == 0)
  {
    sub_1000677F8(v1, 3);
  }
}

void sub_1007A8F1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v2 + 144);
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fADVBufferWatchdogTimer Timer expired! screenState:%d", v5, 8u);
  }

  dispatch_source_cancel(*(v2 + 1808));
  dispatch_release(*(v2 + 1808));
  *(v2 + 1808) = 0;
  *(v2 + 160 + 544 * *(a1 + 40) + 12) = -1;
  *(v2 + 160 + 544 * *(a1 + 40) + 11) = 0;
  sub_100067D48(v2);
  if ((*(v2 + 144) & 1) == 0)
  {
    sub_10007AB18(v2);
  }
}

void sub_1007A9020(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v4, "ADVBUFF");
  sub_100007E30(__p, "TestRemoevAndClearOnBufferDestroy");
  (*(*v1 + 72))(v1, v4, __p, &byte_100BC7D40);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_1007A90C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007A90F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1007A9110(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [*(a1 + 32) objectForKeyedSubscript:@"uuid"];
  v9 = [v7 objectForKeyedSubscript:@"uuid"];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
    v11 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = *(*(*(a1 + 40) + 8) + 40);
      v14 = 138412546;
      v15 = v13;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "addUniqueUUIDRulesToDictionary found existing rule [%@] with same uuid as new rule [%@]", &v14, 0x16u);
    }
  }
}

uint64_t sub_1007A9290(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 == (a1 + 2072))
  {
    return 0;
  }

  do
  {
    result = *(*(v1[5] + 8) + 3);
    if (result)
    {
      break;
    }

    v4 = v1[1];
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = v1[2];
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    v1 = v5;
  }

  while (v5 != v2);
  return result;
}

void sub_1007A92F4(uint64_t a1)
{
  if (!*(a1 + 2376))
  {
    sub_100088DD4(2, 6, 0);
  }
}

void sub_1007A93E8(uint64_t a1)
{
  v1 = *(a1 + 2376);
  if (v1)
  {
    v3 = qword_100BCE9C8;
    if (!os_log_type_enabled(qword_100BCE9C8, OS_LOG_TYPE_DEFAULT) || (v4 = (*(*v1 + 16))(v1), v5 = 136446210, v6 = v4, _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Destroying %{public}s", &v5, 0xCu), (v1 = *(a1 + 2376)) != 0))
    {
      (*(*v1 + 8))(v1);
    }

    *(a1 + 2376) = 0;
  }
}

void sub_1007A94F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_100432718(a1, a2);
  (*(*v3 + 64))(v3, *(v2 + 2328), *(v2 + 2336), *(v2 + 2344), *(v2 + 2352), *(v2 + 2360));
  v4 = qword_100BCEA38;
  if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v2 + 2328);
    v6 = *(v2 + 2336);
    v7 = *(v2 + 2344);
    v8 = *(v2 + 2352);
    v9 = *(v2 + 2360);
    v10 = 134219008;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    v14 = 2048;
    v15 = v7;
    v16 = 2048;
    v17 = v8;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "reportExposureNotificationStats numOfScans:%llu duration:%llu numOfENReports:%llu numOfOtherReports:%llu lastENScanTS:%f", &v10, 0x34u);
  }
}

void sub_1007A9610(uint64_t a1)
{
  if (*(a1 + 2376))
  {
    if (qword_100B54770 != -1)
    {
      sub_100875AF4();
    }

    v2 = sub_100512AD8(off_100B54768);
    v3 = qword_100BCEA38;
    v4 = os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      *buf = 134217984;
      v14[0] = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "armContactTracingScanWithDuplicatesDurationTimer Timer %llu ms Armed!", buf, 0xCu);
    }

    v6 = sub_100007EE8(v4, v5);
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v6 + 8));
    *(a1 + 2296) = v7;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1007A9800;
    handler[3] = &unk_100ADF8F8;
    handler[4] = a1;
    dispatch_source_set_event_handler(v7, handler);
    v8 = *(a1 + 2296);
    v9 = dispatch_time(0x8000000000000000, 1000000 * v2);
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(*(a1 + 2296));
    ++*(a1 + 2320);
  }

  else
  {
    v10 = qword_100BCEA38;
    if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 2320);
      *buf = 67109376;
      LODWORD(v14[0]) = v11;
      WORD2(v14[0]) = 1024;
      *(v14 + 6) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "fContactTracingScanDupClearDeltaTimer fContactTracingScanDupfilterClearCounter=%d isPowerAssertForContactTracingScanCreated=%d", buf, 0xEu);
    }
  }
}

uint64_t sub_1007A9800(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCEA38;
  if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "fContactTracingScanWithDuplicatesDurationTimer Timer expired!", v4, 2u);
  }

  dispatch_source_cancel(*(v1 + 2296));
  dispatch_release(*(v1 + 2296));
  *(v1 + 2296) = 0;
  *(v1 + 2384) = 0;
  sub_1007A98A4(v1);
  sub_1007A9A0C(v1, 0);
  return sub_100017DE0(v1, 1);
}

void sub_1007A98A4(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 != (a1 + 2072))
  {
    do
    {
      v3 = v1[5];
      if (*(*(v3 + 8) + 172) == 1)
      {
        v4 = qword_100BCEA38;
        if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v1[4], __p);
          v5 = v12 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v14 = v5;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Clearing scan agent sw dup filter map for session %{public}s", buf, 0xCu);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v7 = *(v3 + 112);
        v6 = (v3 + 112);
        sub_10002708C((v6 - 1), v7);
        *v6 = 0;
        v6[1] = 0;
        *(v6 - 1) = v6;
      }

      v8 = v1[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v1[2];
          v10 = *v9 == v1;
          v1 = v9;
        }

        while (!v10);
      }

      v1 = v9;
    }

    while (v9 != v2);
  }
}

void sub_1007A9A0C(uint64_t a1, int a2)
{
  v2 = *(a1 + 2064);
  v3 = (a1 + 2072);
  if (v2 != (a1 + 2072))
  {
    do
    {
      v5 = v2[5];
      v6 = *(v5 + 8);
      if (v6[172] == 1)
      {
        v7 = qword_100BCEA38;
        if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v2[4], __p);
          v8 = __p;
          if (v13 < 0)
          {
            v8 = __p[0];
          }

          *buf = 136446466;
          v15 = v8;
          v16 = 1024;
          v17 = a2;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting scan agent for session:%{public}s allowdups:%d", buf, 0x12u);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }

          v6 = *(v5 + 8);
        }

        *v6 = a2;
      }

      v9 = v2[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v2[2];
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != v3);
  }
}

double sub_1007A9B80(uint64_t a1)
{
  v2 = *(a1 + 32);
  ++*(v2 + 2328);
  if (qword_100B54770 != -1)
  {
    sub_100875AF4();
  }

  result = *(v2 + 2336) + (*(a1 + 40) / 0x3E8uLL) * (48.0 / sub_100512BEC(off_100B54768));
  *(v2 + 2336) = result;
  return result;
}

void sub_1007A9C1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCEA38;
  if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "fContactTracingScanDurationTimer Timer expired!", v6, 2u);
  }

  dispatch_source_cancel(*(v1 + 2288));
  dispatch_release(*(v1 + 2288));
  *(v1 + 2288) = 0;
  *(v1 + 1856) = 1;
  *(v1 + 2384) = 1;
  sub_100017DE0(v1, 1);
  if (qword_100B54770 != -1)
  {
    sub_1008743D0();
  }

  sub_100511FD0(off_100B54768);
  sub_1007A17DC(v1, v3);
  sub_1007A1D58(v1, v4);
  Current = CFAbsoluteTimeGetCurrent();
  *(v1 + 2360) = Current;
  *(v1 + 2312) = Current;
  sub_1007A93E8(v1);
}

void sub_1007A9CFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCEA38;
  if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "fContactTracingScanDeltaTimer Timer expired!", &v17, 2u);
  }

  v3 = *(v1 + 2304);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(v1 + 2304));
    *(v1 + 2304) = 0;
  }

  *(v1 + 1856) = 1;
  if ((*(v1 + 1255) & 1) == 0)
  {
    sub_1007A6318(v1);
    sub_1007A9A0C(v1, 1);
    sub_1007A98A4(v1);
    sub_100017DE0(v1, 1);
    return;
  }

  if (*(v1 + 2368) != 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    *(v1 + 2336) = (Current - *(v1 + 2368) + *(v1 + 2336));
    *(v1 + 2368) = Current;
  }

  if (sub_1000365D8(v1) && *(v1 + 1255) == 1)
  {
    v6 = qword_100BCEA38;
    if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = @"EN";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ADVBUFF(%{public}@): Pausing ADV Buffers", &v17, 0xCu);
    }

    if (*(v1 + 1260) != 255)
    {
      v7 = qword_100BCEA38;
      if (!os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v17 = 138543362;
      v18 = @"EN";
      v8 = "Already reading ADVBUFF(%{public}@):";
      goto LABEL_19;
    }

    v9 = sub_1007A1858(v1, 2, 0);
    v7 = qword_100BCEA38;
    v10 = os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT);
    if (!v9)
    {
      if (v10)
      {
        v11 = *(v1 + 1260);
        v17 = 138543618;
        v18 = @"EN";
        v19 = 1024;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ADVBUFF(%{public}@): Trying to read, current expectedEntries=%d", &v17, 0x12u);
      }

      v12 = sub_1007A3920(v1, 2u);
      v13 = qword_100BCEA38;
      if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(v1 + 1260);
        v17 = 138543874;
        v18 = @"EN";
        v19 = 1024;
        v20 = v12;
        v21 = 1024;
        v22 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ADVBUFF(%{public}@): ReadADVBuffer returned %d, expectedEntries:%d", &v17, 0x18u);
      }

      if (v12)
      {
        v15 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_FAULT))
        {
          sub_1008770AC(v15);
        }
      }

      if (*(v1 + 1260) == 255)
      {
        sub_1007A1858(v1, 2, 1);
        if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEBUG))
        {
          sub_100877130();
        }

        sub_1007A1D58(v1, v16);
      }

      goto LABEL_20;
    }

    if (v10)
    {
      v17 = 138543362;
      v18 = @"EN";
      v8 = "ADVBUFF(%{public}@): could not disable ADV buffering";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, &v17, 0xCu);
    }
  }

LABEL_20:
  if (*(v1 + 1260) == 255)
  {
    sub_1007A17DC(v1, v5);
  }
}

uint64_t sub_1007AA094(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned __int8 *a5)
{
  v9 = sub_10000C798(a1, a2);
  result = (*(*v9 + 936))(v9);
  switch(a3)
  {
    case 5:
      if (result == 3)
      {
        v16 = *(a5 + 1);
        if (a5[1] == 1)
        {
          if (*(a2 + 2) < v16)
          {
            *(a2 + 2) = v16;
            goto LABEL_16;
          }
        }

        else if (*(a2 + 4) < v16)
        {
          *(a2 + 4) = v16;
          *(a2 + 2) = 0;
        }
      }

      break;
    case 3:
      if (!(*(a2 + 4) | *(a2 + 2)))
      {
        v15 = 1374389535 * (*(a4 + 4) - *(a4 + 6)) * *a5;
        *(a2 + 4) = (v15 >> 37) + (v15 >> 63);
      }

      if (result != 3)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      v11 = *(a2 + 4);
      if (!*(a2 + 4) && !*(a2 + 2))
      {
        v12 = 1374389535 * (*(a4 + 4) - *(a4 + 6)) * *a5;
        v13 = (v12 >> 37) + (v12 >> 63);
        v11 = v13;
        *(a2 + 4) = v13;
      }

      if (result != 2 || v11 < 0x11)
      {
        if (result > 1)
        {
          return result;
        }

LABEL_16:
        *(a2 + 4) = 0;
        return result;
      }

      *(a2 + 4) = ((20976 * *a5) >> 16) >> 1;
      break;
  }

  return result;
}

uint64_t sub_1007AA218(uint64_t a1, uint64_t a2)
{
  if (!a2 || !*(a2 + 8))
  {
    return 0;
  }

  if (sub_100028FA8(a2) == 22)
  {
    v3 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_100028FA8(a2);
      *buf = 136315138;
      v21 = sub_10002F16C(v4);
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ScanCore offloading is allowed while throttling due to SDP for %s", buf, 0xCu);
    }

    return 1;
  }

  else
  {
    v6 = sub_100032B14(a2);
    v7 = v6;
    if (v6 && [v6 count])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = v7;
      v5 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        v9 = *v16;
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(v8);
            }

            v11 = *(*(&v15 + 1) + 8 * i);
            if ([v11 longLongValue] == 22)
            {
              v12 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
              {
                v13 = sub_10002F16C([v11 longLongValue]);
                *buf = 136315138;
                v21 = v13;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ScanCore offloading is allowed while throttling due to SDP for %s", buf, 0xCu);
              }

              v5 = 1;
              goto LABEL_23;
            }
          }

          v5 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

LABEL_23:
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

uint64_t sub_1007AA468(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_10000C798(a1, a2);
  v4 = (*(*v3 + 656))(v3);
  v240 = v4;
  v6 = *sub_10000C798(v4, v5);
  v7 = (*(v6 + 688))();
  v239 = v7;
  v9 = *sub_10000C798(v7, v8);
  v10 = (*(v9 + 872))();
  v241 = v10;
  v12 = *sub_10000C7D0(v10, v11);
  v235 = (*(v12 + 3184))();
  *a2 = 1;
  a2[2] = 0;
  *(a2 + 4) = 0;
  a2[16] = 1;
  v255 = a2;
  *(a2 + 12) = 0;
  v254 = +[NSMutableArray array];
  v252 = +[NSMutableDictionary dictionary];
  v13 = *(a1 + 2064);
  v14 = &xpc_dictionary_set_uint64_ptr;
  if (v13 != (a1 + 2072))
  {
    v247 = 0;
    v249 = 0;
    v15 = 0;
    v236 = 0;
    v237 = 0;
    v242 = 0;
    v238 = 0;
    v251 = 0;
    v245 = 1;
    v246 = 0;
    v16 = 3;
    v17 = 30;
    v243 = 300;
    while (1)
    {
      v18 = *(*(v13[5] + 8) + 192);
      memset(v274, 0, 104);
      memset(v273, 0, sizeof(v273));
      sub_10000CBF0(v273, (*(v13[5] + 8) + 320));
      v256 = v16;
      v258 = v17;
      v260 = +[NSMutableDictionary dictionary];
      v19 = [NSNumber numberWithBool:*(*(v13[5] + 8) + 3)];
      [v260 setObject:v19 forKeyedSubscript:@"isAllowedInPaused"];

      v20 = [NSNumber numberWithBool:sub_10003C8E8(v13[5])];
      [v260 setObject:v20 forKeyedSubscript:@"allowDupes"];

      v21 = [NSNumber numberWithUnsignedInt:0];
      [v260 setObject:v21 forKeyedSubscript:@"window"];

      v22 = [NSNumber numberWithUnsignedInt:0];
      [v260 setObject:v22 forKeyedSubscript:@"interval"];

      v23 = [NSNumber numberWithBool:0];
      [v260 setObject:v23 forKeyedSubscript:@"active"];

      v24 = [NSNumber numberWithBool:sub_10003A26C(v13[5])];
      [v260 setObject:v24 forKeyedSubscript:@"requiresActiveScan"];

      v25 = [NSNumber numberWithBool:*(v13[5] + 81) == 32];
      [v260 setObject:v25 forKeyedSubscript:@"daemon"];

      v26 = [NSNumber numberWithBool:*(v13[5] + 81) == 16];
      [v260 setObject:v26 forKeyedSubscript:@"ForegroundApp"];

      v27 = [NSNumber numberWithBool:sub_100028FB4(v13[5])];
      [v260 setObject:v27 forKeyedSubscript:@"isAnyHWObjectDiscoveryEnabled"];

      [v260 setObject:&off_100B33D08 forKeyedSubscript:@"HWADVBufferWindowMs"];
      [v260 setObject:&off_100B33D08 forKeyedSubscript:@"HWADVBufferIntervalMs"];
      v28 = [NSNumber numberWithBool:sub_10003BC78(v13[5])];
      [v260 setObject:v28 forKeyedSubscript:@"isRangeScan"];

      v29 = [NSNumber numberWithBool:sub_10003BC84(v13[5])];
      [v260 setObject:v29 forKeyedSubscript:@"isPriorityCritical"];

      v30 = [NSNumber numberWithBool:*(*(v13[5] + 8) + 171)];
      [v260 setObject:v30 forKeyedSubscript:@"holdPowerAssert"];

      v31 = [NSNumber numberWithBool:*(*(v13[5] + 8) + 172)];
      [v260 setObject:v31 forKeyedSubscript:@"isContactTracing"];

      v32 = [NSNumber numberWithUnsignedInt:*(v13[5] + 208)];
      [v260 setObject:v32 forKeyedSubscript:@"scanAgentType"];

      v33 = [NSNumber numberWithInt:*(v13[5] + 96)];
      [v260 setObject:v33 forKeyedSubscript:@"agentScanLevel"];

      v34 = [NSString stringWithUTF8String:sub_10002F16C(v18)];
      [v260 setObject:v34 forKeyedSubscript:@"usecase"];

      if (v273[8] == 1)
      {
        sub_10003BC90(v273);
        v35 = __p[23] >= 0 ? __p : *__p;
        v36 = [NSString stringWithUTF8String:v35];
        [v260 setObject:v36 forKeyedSubscript:@"usecaseParams"];

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      sub_100018384(v13[4], __p);
      if (__p[23] >= 0)
      {
        v37 = __p;
      }

      else
      {
        v37 = *__p;
      }

      v38 = [NSString stringWithUTF8String:v37];
      [v252 setObject:v260 forKeyedSubscript:v38];

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if ((sub_1000178BC(v13[5]) & 1) == 0)
      {
        goto LABEL_149;
      }

      ++v251;
      v39 = v13[5];
      if ((*(*(v39 + 8) + 3) & 1) == 0 && *(a1 + 1988) == 2)
      {
        goto LABEL_149;
      }

      v40 = sub_100028FB4(v39);
      v41 = qword_100BCE918;
      if (v40)
      {
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_1008772D0(&v267, v268);
        }

        v42 = 0;
        v43 = 0;
        v253 = 0;
        v44 = &xpc_dictionary_set_uint64_ptr;
        goto LABEL_143;
      }

      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        v45 = *(v13[5] + 81);
        *__p = 67109120;
        *&__p[4] = v45;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "state %d", __p, 8u);
      }

      if (sub_100024BA4(v13[5]) || sub_100024BCC(v13[5]))
      {
        v253 = 0;
      }

      else
      {
        v46 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          v47 = v13[5];
          if (*(v47 + 255) < 0)
          {
            sub_100008904(buf, *(v47 + 232), *(v47 + 240));
            v47 = v13[5];
          }

          else
          {
            *buf = *(v47 + 232);
            *&buf[16] = *(v47 + 248);
          }

          v48 = buf[23] >= 0 ? buf : *buf;
          v49 = sub_100024BA4(v47);
          v50 = sub_100024BCC(v13[5]);
          *__p = 136315650;
          *&__p[4] = v48;
          *&__p[12] = 1024;
          *&__p[14] = v49;
          *&__p[18] = 1024;
          *&__p[20] = v50;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Upgrading %s to active scan hasZoneScan:%d hasMatchingRulesScan:%d", __p, 0x18u);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        v15 |= sub_10003C8E8(v13[5]);
        v253 = 1;
      }

      if (sub_1007B363C(v13[5]))
      {
        v51 = sub_10008043C(v13[5], 0, (a1 + 4416));
        v271 = 0u;
        v272 = 0u;
        v269 = 0u;
        v270 = 0u;
        obj = v51;
        v52 = [obj countByEnumeratingWithState:&v269 objects:v280 count:16];
        if (v52)
        {
          v53 = *v270;
          v54 = v18 & 0xFFFF0000;
          do
          {
            for (i = 0; i != v52; i = i + 1)
            {
              if (*v270 != v53)
              {
                objc_enumerationMutation(obj);
              }

              v56 = [*(*(&v269 + 1) + 8 * i) objectForKeyedSubscript:@"puckType"];
              if (v56)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [v56 integerValue] == 8)
                {
                  v57 = qword_100BCE918;
                  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
                  {
                    v58 = sub_10003C8E8(v13[5]);
                    *__p = 67109120;
                    *&__p[4] = v58;
                    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "HS is asking for duplicates? %d", __p, 8u);
                  }

                  v15 |= sub_10003C8E8(v13[5]);
                }
              }

              if (v54 == 0x10000)
              {
                v59 = qword_100BCE918;
                if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
                {
                  v60 = v13[5];
                  v61 = *(*(v60 + 8) + 192);
                  v62 = sub_10003C8E8(v60);
                  v63 = sub_10002F16C(v61);
                  *__p = 136315394;
                  v64 = "No";
                  if (v62)
                  {
                    v64 = "Yes";
                  }

                  *&__p[4] = v63;
                  *&__p[12] = 2080;
                  *&__p[14] = v64;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Findmy usecase %s is asking for duplicates? %s", __p, 0x16u);
                }

                v15 |= sub_10003C8E8(v13[5]);
              }

              v65 = *(v13[5] + 8);
              v66 = *(v65 + 88);
              v67 = *(v65 + 96);
              while (v66 != v67)
              {
                if (*(v66 + 8) == 16 && *(v66 + 50) == 1)
                {
                  v68 = qword_100BCE918;
                  v15 = 1;
                  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
                  {
                    *__p = 0x104000100;
                    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "NearbyInfo asking for duplicates? %d", __p, 8u);
                  }
                }

                v66 += 96;
              }
            }

            v52 = [obj countByEnumeratingWithState:&v269 objects:v280 count:16];
          }

          while (v52);
        }
      }

      v69 = qword_100BCE918;
      v44 = &xpc_dictionary_set_uint64_ptr;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        v70 = v13[5];
        if (*(v70 + 255) < 0)
        {
          sub_100008904(buf, *(v70 + 232), *(v70 + 240));
          v70 = v13[5];
        }

        else
        {
          *buf = *(v70 + 232);
          *&buf[16] = *(v70 + 248);
        }

        v71 = buf[23];
        v72 = *buf;
        v73 = sub_10003C8E8(v70);
        *__p = 136315906;
        v74 = buf;
        if (v71 < 0)
        {
          v74 = v72;
        }

        *&__p[4] = v74;
        *&__p[12] = 1024;
        *&__p[14] = v15 & 1;
        *&__p[18] = 1024;
        *&__p[20] = v73;
        v278 = 1024;
        v279 = v253;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%s allowDupes:%d, agentAllowDupes:%d, active:%d", __p, 0x1Eu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      v75 = v13[5];
      v76 = *(v75 + 8);
      v77 = *(v76 + 144);
      if (v77 == 1)
      {
        v42 = *(v76 + 152);
        v43 = *(v76 + 156);
        v253 = *(v76 + 160);
      }

      else
      {
        v42 = 0;
        v43 = 0;
      }

      v78 = qword_100BCE918;
      if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_82;
      }

      if (*(v75 + 255) < 0)
      {
        sub_100008904(__p, *(v75 + 232), *(v75 + 240));
      }

      else
      {
        *__p = *(v75 + 232);
        *&__p[16] = *(v75 + 248);
      }

      v79 = __p;
      if (__p[23] < 0)
      {
        v79 = *__p;
      }

      *buf = 136315394;
      *&buf[4] = v79;
      *&buf[12] = 1024;
      *&buf[14] = v253;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "%s active %d", buf, 0x12u);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
        if (!v77)
        {
LABEL_109:
          v87 = *(v13[5] + 96);
          v80 = v258;
          if (v256 >= v87)
          {
            v88 = v87;
          }

          else
          {
            v88 = v256;
          }

          v256 = v88;
          goto LABEL_113;
        }
      }

      else
      {
LABEL_82:
        if (!v77)
        {
          goto LABEL_109;
        }
      }

      v80 = v258;
      if (v253)
      {
        v81 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 67109634;
          *&__p[4] = v43;
          *&__p[8] = 1024;
          *&__p[10] = v42;
          *&__p[14] = 2082;
          *&__p[16] = "active";
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Daemon is requesting scan parameters %d/%d (%{public}s)", __p, 0x18u);
        }
      }

      if (sub_10003D460(v13[5]))
      {
        if (v43 >= v258)
        {
          v82 = v258;
        }

        else
        {
          v82 = v43;
        }

        if (v43)
        {
          v80 = v82;
        }

        else
        {
          v80 = v258;
        }

        if (v42 >= v243)
        {
          v83 = v243;
        }

        else
        {
          v83 = v42;
        }

        if (v42)
        {
          v84 = v83;
        }

        else
        {
          v84 = v243;
        }

        v243 = v84;
      }

      if (*(*(v13[5] + 8) + 313) == 1)
      {
        if (qword_100B50910 != -1)
        {
          sub_100874420();
        }

        if (sub_10003C888(off_100B50908))
        {
          v85 = v237;
          if (v237)
          {
            v86 = HIDWORD(v236);
            if ((v237 / HIDWORD(v236)) < (v243 / v80))
            {
              v86 = v80;
              v85 = v243;
            }

            HIDWORD(v236) = v86;
            LODWORD(v237) = v85;
            BYTE4(v237) = 1;
          }

          else
          {
            HIDWORD(v236) = v80;
            LODWORD(v237) = v243;
            BYTE4(v237) = 1;
          }
        }
      }

LABEL_113:
      v89 = v13[5];
      if (*(*(v89 + 8) + 3) == 1)
      {
        v242 |= *(a1 + 1988) == 2;
      }

      v90 = sub_10003BC84(v89);
      if (!v241 || (byte_100BC7CC6 & 1) != 0)
      {
        goto LABEL_140;
      }

      if ((sub_10002904C(a1, v13[5]) & 1) == 0)
      {
        if (*(*(v13[5] + 8) + 240) != 1)
        {
          goto LABEL_122;
        }

        v91 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 0;
          _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Scanning Prioritization for double boost with allowed use cases.", __p, 2u);
        }
      }

      v249 = 1;
LABEL_122:
      if ((byte_100BC7CC7 & 1) != 0 || sub_1000292A4(a1, v13[5]))
      {
        v238 = v235 | v249;
      }

      if (qword_100B50910 != -1)
      {
        sub_100874420();
      }

      v92 = sub_100028FC8();
      if ((v249 & 1) == 0)
      {
        goto LABEL_135;
      }

      v94 = v92 & 0xFFFFFFFD;
      if (v92 == 2)
      {
        v95 = sub_10000C7D0(v92, v93);
        v92 = (*(*v95 + 3176))(v95);
        if (v94 == 1)
        {
          v96 = 0;
        }

        else
        {
          v96 = v92;
        }

        if ((v96 & 1) == 0)
        {
LABEL_133:
          v238 &= v235;
          v97 = qword_100BCE918;
          v92 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
          if (v92)
          {
            *__p = 0;
            _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "Scanning Prioritization is not enabled with HIDs connected.", __p, 2u);
          }

LABEL_135:
          v249 = 0;
          goto LABEL_138;
        }
      }

      else if (v94 == 1)
      {
        goto LABEL_133;
      }

      v249 = 1;
LABEL_138:
      if (*(a1 + 4424) == 1)
      {
        LODWORD(v236) = sub_1007AA218(v92, v13[5]) | v236;
      }

LABEL_140:
      v247 = v253 | v247 & 1;
      v246 |= v90;
      v258 = v80;
      if (v245)
      {
        v245 = sub_10003BC78(v13[5]);
      }

      else
      {
        v245 = 0;
      }

LABEL_143:
      v98 = v44[477];
      sub_100018384(v13[4], __p);
      v99 = __p[23];
      v100 = *__p;
      v101 = [v44[477] defaultCStringEncoding];
      if (v99 >= 0)
      {
        v102 = __p;
      }

      else
      {
        v102 = v100;
      }

      v103 = [v98 stringWithCString:v102 encoding:v101];
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v104 = v44[477];
      v105 = v13[5];
      v106 = *(*(v105 + 8) + 3);
      v107 = sub_10003C8E8(v105);
      v108 = sub_10003A26C(v13[5]);
      v109 = [v104 stringWithFormat:@"[%@] AP:%d AD:%d(%d/%d) AS:%d RAS:%d DMN:%d FG:%d ADVBF:%d pBT:%d", v103, v106, v107, v43, v42, v253, v108, *(v13[5] + 81) == 32, *(v13[5] + 81) == 16, sub_100028FB4(v13[5]), v249 & 1];
      [v254 addObject:v109];

LABEL_149:
      *__p = &v274[80];
      sub_10000CF30(__p);
      sub_10000CEDC(&v274[48], *&v274[56]);
      if (*&v274[24])
      {
        *&v274[32] = *&v274[24];
        operator delete(*&v274[24]);
      }

      *__p = v274;
      sub_10000CFB0(__p);

      v110 = v13[1];
      if (v110)
      {
        do
        {
          v111 = v110;
          v110 = *v110;
        }

        while (v110);
      }

      else
      {
        do
        {
          v111 = v13[2];
          v112 = *v111 == v13;
          v13 = v111;
        }

        while (!v112);
      }

      v13 = v111;
      v16 = v256;
      v17 = v258;
      if (v111 == (a1 + 2072))
      {
        obja = (v251 != 0) & v245;
        v113 = v243;
        v114 = v247;
        v14 = &xpc_dictionary_set_uint64_ptr;
        goto LABEL_160;
      }
    }
  }

  obja = 0;
  v236 = 0;
  v237 = 0;
  v238 = 0;
  v249 = 0;
  v246 = 0;
  v242 = 0;
  LOBYTE(v15) = 0;
  v114 = 0;
  v113 = 300;
  v17 = 30;
  v16 = 3;
LABEL_160:
  v244 = v113;
  v248 = v114;
  v261 = [v14[477] stringWithFormat:@"AD:%d AS:%d MSL:%d (%d/%d) PSV:%d", v15 & 1, v114 & 1, v16, v17, v113, *v255];
  v115 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v116 = *(a1 + 2080);
    *v273 = 134218242;
    *&v273[4] = v116;
    *&v273[12] = 2114;
    *&v273[14] = v261;
    _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "ScanParams: numScanAgents %lu, combined params %{public}@", v273, 0x16u);
  }

  v257 = v16;
  v259 = v17;
  v117 = [v254 count];
  if (v117 >= -1)
  {
    v118 = 0;
    v119 = v117 - 1;
    v120 = ((v117 - 1) / 3 + 1);
    v121 = 2;
    v122 = 1;
    do
    {
      if (v121 >= v119)
      {
        v123 = v119;
      }

      else
      {
        v123 = v121;
      }

      v124 = [v254 subarrayWithRange:{v118, v123 + v122}];
      v125 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        v126 = [v124 componentsJoinedByString:@"|"];
        *v273 = 138543362;
        *&v273[4] = v126;
        _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "ScanParams: %{public}@", v273, 0xCu);
      }

      v121 += 3;
      v122 -= 3;
      v118 += 3;
      --v120;
    }

    while (v120);
  }

  if ((v257 - 1) < 3)
  {
    *(v255 + 2) = 0x1E000600040uLL >> (16 * (v257 - 1));
    *(v255 + 3) = 48;
  }

  if (v248)
  {
    *v255 = 0;
  }

  v127 = *(v255 + 2);
  v128 = *(v255 + 3);
  if ((v244 / v259) <= (v127 / v128))
  {
    v127 = (v244 / 0.625);
    *(v255 + 2) = v127;
    v128 = (v259 / 0.625);
    *(v255 + 3) = v128;
  }

  *__p = 100;
  v129 = (v237 & 0x100000000) != 0 && v237 / HIDWORD(v236) == v127 / v128;
  if (qword_100B50910 != -1)
  {
    sub_100874420();
  }

  if ((sub_10003CE34(off_100B50908) & 1) == 0)
  {
    v130 = 100 * v128 / v127;
    if (v130 < 0x32)
    {
      if (v130 < 0x21)
      {
        goto LABEL_192;
      }

      v136 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v134 = v255;
        LOWORD(v137) = *(v255 + 3);
        LOWORD(v138) = *(v255 + 2);
        *v273 = 134219264;
        *&v273[4] = v137 * 0.625;
        *&v273[12] = 2048;
        *&v273[14] = v138 * 0.625;
        *&v273[22] = 1024;
        *&v273[24] = v130;
        *&v273[28] = 2048;
        *&v273[30] = 0x403E000000000000;
        *&v273[38] = 2048;
        *&v273[40] = 0x4056800000000000;
        *&v273[48] = 1024;
        *&v273[50] = v257;
        _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_INFO, "Limiting scan duty cycle based on other activities from %.2fms/%.2fms (scanPercentage %d)to %.2fms/%.2fms minScanLevel %d", v273, 0x36u);
        v135 = 144;
        goto LABEL_191;
      }

      v135 = 144;
    }

    else
    {
      v131 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v134 = v255;
        LOWORD(v132) = *(v255 + 3);
        LOWORD(v133) = *(v255 + 2);
        *v273 = 134219264;
        *&v273[4] = v132 * 0.625;
        *&v273[12] = 2048;
        *&v273[14] = v133 * 0.625;
        *&v273[22] = 1024;
        *&v273[24] = v130;
        *&v273[28] = 2048;
        *&v273[30] = 0x403E000000000000;
        *&v273[38] = 2048;
        *&v273[40] = 0x404E000000000000;
        *&v273[48] = 1024;
        *&v273[50] = v257;
        _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_INFO, "Limiting scan duty cycle based on other activities from %.2fms/%.2fms (scanPercentage %d)to %.2fms/%.2fms minScanLevel %d", v273, 0x36u);
        v135 = 96;
LABEL_191:
        *(v134 + 2) = v135;
        *(v134 + 3) = 48;
        goto LABEL_192;
      }

      v135 = 96;
    }

    v134 = v255;
    goto LABEL_191;
  }

LABEL_192:
  if (v248 & 1 | ((v15 & 1) == 0))
  {
    v139 = (v248 & 1) == 0;
    v140 = v255;
    *v255 = v139;
    v141 = a1;
  }

  else
  {
    v139 = 0;
    v141 = a1;
    v140 = v255;
  }

  v140[3] = v139;
  if (((v240 | v239) & 1) != 0 && (*(v140 + 3) == 0xFFFF || !*(v140 + 3)))
  {
    v142 = sub_10003663C(v141);
    v141 = a1;
    v140 = v255;
    if (v142)
    {
      *(v255 + 2) = 4800;
    }
  }

  v143 = *(v140 + 3);
  v144 = *(v140 + 2);
  if (*(v141 + 4424) == 1)
  {
    v145 = v143 * 100.0 / v144;
    v146 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *v273 = 67110144;
      *&v273[4] = v143;
      *&v273[8] = 1024;
      *&v273[10] = v144;
      *&v273[14] = 2048;
      *&v273[16] = v143 * 100.0 / v144;
      *&v273[24] = 2048;
      *&v273[26] = 0x4008DAB7EC1DD343;
      *&v273[34] = 1024;
      *&v273[36] = v145 > 3.10679612;
      _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "Checking if throttling down our scan during SDP is needed window:%d interval:%d dutyCycle:%f throttledDutyCycle:%f needToThrottle:%d", v273, 0x28u);
    }

    if (v145 <= 3.10679612)
    {
      v143 = *(v255 + 3);
      v144 = *(v255 + 2);
    }

    else
    {
      v147 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *v273 = 0;
        _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "Throttling down our scan during SDP", v273, 2u);
      }

      *(v255 + 1) = 3147273;
      if (v236)
      {
        *__p = 72745216;
        v129 = 1;
      }

      v143 = 48;
      v144 = 1545;
    }
  }

  if (100 * v143 / v144 < 0x1E)
  {
    if ((v249 | v238))
    {
      v148 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        v149 = "No";
        if (v249)
        {
          v150 = "Yes";
        }

        else
        {
          v150 = "No";
        }

        *v273 = 136315650;
        *&v273[4] = v150;
        if (v238)
        {
          v149 = "Yes";
        }

        *&v273[12] = 2080;
        *&v273[14] = v149;
        *&v273[22] = 1024;
        *&v273[24] = 100 * v143 / v144;
        _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "Do not prioritize scanning over BT %s WiFi %s for scan duty cycle %u.", v273, 0x1Cu);
        v143 = *(v255 + 3);
        v144 = *(v255 + 2);
      }
    }
  }

  else
  {
    v255[24] = v249 & 1;
    v255[25] = v238 & 1;
  }

  v151 = a1;
  if (v144 != 48 && v144 && v143 && v143 == v144)
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      sub_100877258(v144);
      v151 = a1;
    }

    *(v255 + 1) = 3145776;
  }

  if (!v129 || !*v255)
  {
    __p[0] = 0;
    *&__p[2] = 0;
  }

  sub_10003D8DC(v151, v255, v240, v239, v246 & 1, obja, __p, 0, 0);
  v154 = sub_10000C7D0(v152, v153);
  v155 = v255;
  if ((*(*v154 + 3192))(v154, *(v255 + 2), *(v255 + 3)))
  {
    v255[25] = 1;
  }

  v156 = a1;
  if (*(a1 + 2278) == 1)
  {
    *v255 = *(a1 + 2279);
  }

  v157 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v158 = *(v255 + 3);
    v159 = *(v255 + 2);
    v160 = *(v255 + 4);
    v161 = *(v255 + 6);
    v162 = *(v255 + 5);
    v163 = v255[14];
    if (qword_100B50910 != -1)
    {
      sub_100874420();
    }

    v164 = *(off_100B50908 + 212);
    v165 = sub_10003CE34(off_100B50908);
    v166 = v159;
    v167 = v158;
    if (v239)
    {
      v168 = "supported";
    }

    else
    {
      v168 = "unspported";
    }

    v156 = a1;
    v169 = *(a1 + 144);
    v155 = v255;
    v170 = *v255;
    v171 = "concurrent";
    *v273 = 134223106;
    if (!v163)
    {
      v171 = "non-concurrent";
    }

    v172 = v255[3];
    v173 = *(a1 + 2376);
    v174 = "unsupported";
    v175 = v255[24];
    if (v240)
    {
      v174 = "supported";
    }

    v176 = v255[25];
    *&v273[4] = v167 * 0.625;
    v177 = v166 * 0.625;
    *&v273[12] = 2048;
    v112 = !v170;
    *&v273[14] = v177;
    v178 = "passive";
    *&v273[22] = 2048;
    if (v112)
    {
      v178 = "active";
    }

    *&v273[24] = v160 * 0.625;
    v112 = !v172;
    *&v273[32] = 2048;
    v179 = "Enabled";
    *&v273[34] = v177;
    if (v112)
    {
      v179 = "Disabled";
    }

    *&v273[44] = v174;
    *&v273[42] = 2080;
    v112 = v173 == 0;
    *&v273[52] = 2048;
    v180 = "N";
    if (!v112)
    {
      v180 = "Y";
    }

    *&v273[54] = v161 * 0.625;
    *&v273[62] = 2048;
    *v274 = v162 * 0.625;
    *&v274[8] = 2080;
    *&v274[10] = v171;
    *&v274[18] = 2080;
    *&v274[20] = v168;
    *&v274[28] = 1024;
    *&v274[30] = v259;
    *&v274[34] = 1024;
    *&v274[36] = v244;
    *&v274[40] = 1024;
    *&v274[42] = v164;
    *&v274[46] = 1024;
    *&v274[48] = v165;
    *&v274[52] = 1024;
    *&v274[54] = v242 & 1;
    *&v274[58] = 1024;
    *&v274[60] = v169;
    *&v274[64] = 2082;
    *&v274[66] = v178;
    *&v274[74] = 2080;
    *&v274[76] = v179;
    *&v274[84] = 1024;
    *&v274[86] = v257;
    *&v274[90] = 2080;
    *&v274[92] = v180;
    *&v274[100] = 1024;
    *&v274[102] = v175;
    v275 = 1024;
    v276 = v176;
    _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "Returning scan parameters: Main:%.2fms/%.2fms LP:%.2fms/%.2fms(%s) SC:%.2fms/%.2fms/%s(%s) Dm:(m:%d/%d) Cond:%d:%d:%d Sc:%d (%{public}s) Dupfilter:%s minScanLevel:%d ENAssertion:%s Pri:%d/%d", v273, 0xB0u);
  }

  if (*(v156 + 2246) == 1)
  {
    v181 = *(a1 + 2248);
    *(v155 + 2) = v181;
    v182 = *(a1 + 2250);
    *(v155 + 3) = v182;
    v183 = *(a1 + 2252);
    *(v155 + 4) = v183;
    if (*(a1 + 2258))
    {
      v184 = *(a1 + 2260);
    }

    else
    {
      v184 = 0;
    }

    if (*(a1 + 2258))
    {
      v185 = 0;
    }

    else
    {
      v185 = *(a1 + 2260);
    }

    *(v155 + 6) = v184;
    *(v155 + 5) = v185;
    v186 = *(a1 + 2262);
    v155[14] = v186;
    if (*(a1 + 2263) == 1)
    {
      v255[15] = *(a1 + 2264);
    }

    if (*(a1 + 2266) == 1)
    {
      v255[16] = *(a1 + 2265);
    }

    if (*(a1 + 2267) == 1)
    {
      v187 = *(a1 + 2270);
    }

    else
    {
      v187 = 0;
    }

    v255[19] = v187 & 1;
    if (*(a1 + 2268) == 1)
    {
      v188 = *(a1 + 2272);
    }

    else
    {
      v188 = 0;
    }

    *(v255 + 10) = v188;
    v264 = v186;
    if (*(a1 + 2269) == 1)
    {
      v189 = *(a1 + 2274);
    }

    else
    {
      v189 = 0;
    }

    v155 = v255;
    *(v255 + 11) = v189;
    v190 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *v273 = 67112962;
      v191 = "No";
      v192 = v255[15];
      *&v273[4] = v181;
      if (v264)
      {
        v193 = "Yes";
      }

      else
      {
        v193 = "No";
      }

      v194 = v255[16];
      *&v273[8] = 2048;
      if (v187)
      {
        v191 = "Yes";
      }

      *&v273[10] = v181 * 0.625;
      *&v273[18] = 1024;
      *&v273[20] = v182;
      *&v273[24] = 1024;
      *&v273[26] = v183;
      *&v273[30] = 1024;
      *&v273[32] = v184;
      *&v273[36] = 1024;
      *&v273[38] = v185;
      *&v273[42] = 2048;
      *&v273[44] = v182 * 0.625;
      *&v273[52] = 2048;
      *&v273[54] = v183 * 0.625;
      *&v273[62] = 2048;
      *v274 = v184 * 0.625;
      *&v274[8] = 2048;
      *&v274[10] = v185 * 0.625;
      *&v274[18] = 2080;
      *&v274[20] = v193;
      *&v274[28] = 2080;
      *&v274[30] = v191;
      *&v274[38] = 1024;
      *&v274[40] = v188;
      *&v274[44] = 1024;
      *&v274[46] = v189;
      *&v274[50] = 1024;
      *&v274[52] = v192;
      *&v274[56] = 1024;
      *&v274[58] = v194;
      _os_log_impl(&_mh_execute_header, v190, OS_LOG_TYPE_DEFAULT, "Returning scan parameters (overridden with ScanCore) Interval %d(%.2fms) Window %d/%d/%d/%d(%.2fms/%.2fms/%.2fms/%.2fms) Concurrent %s Compensation %s percent %d query %d MRC:%d scanPhys:%d", v273, 0x7Eu);
    }
  }

  v195 = *(v155 + 3);
  v196 = *(v155 + 2);
  v197 = +[NSMutableDictionary dictionary];
  v198 = [NSNumber numberWithBool:*v155];
  [v197 setObject:v198 forKeyedSubscript:@"scanParams.passive"];

  v199 = [NSNumber numberWithBool:v255[1]];
  [v197 setObject:v199 forKeyedSubscript:@"scanParams.limited"];

  v200 = [NSNumber numberWithBool:v255[3]];
  [v197 setObject:v200 forKeyedSubscript:@"scanParams.filterDups"];

  LOWORD(v201) = *(v255 + 2);
  v202 = [NSNumber numberWithDouble:v201 * 0.625];
  [v197 setObject:v202 forKeyedSubscript:@"scanParams.interval"];

  LOWORD(v203) = *(v255 + 3);
  v204 = [NSNumber numberWithDouble:v203 * 0.625];
  [v197 setObject:v204 forKeyedSubscript:@"scanParams.window"];

  LOWORD(v205) = *(v255 + 4);
  v206 = [NSNumber numberWithDouble:v205 * 0.625];
  [v197 setObject:v206 forKeyedSubscript:@"scanParams.windowLPCore"];

  LOWORD(v207) = *(v255 + 5);
  v208 = [NSNumber numberWithDouble:v207 * 0.625];
  [v197 setObject:v208 forKeyedSubscript:@"scanParams.windowScanCoreELNABypass"];

  LOWORD(v209) = *(v255 + 6);
  v210 = [NSNumber numberWithDouble:v209 * 0.625];
  [v197 setObject:v210 forKeyedSubscript:@"scanParams.windowScanCoreELNAOn"];

  v211 = [NSNumber numberWithBool:v255[14]];
  [v197 setObject:v211 forKeyedSubscript:@"scanParams.concurrencyMode"];

  v212 = [NSNumber numberWithUnsignedChar:v255[16]];
  [v197 setObject:v212 forKeyedSubscript:@"scanParams.scanningPhys"];

  v213 = [NSNumber numberWithBool:v255[17]];
  [v197 setObject:v213 forKeyedSubscript:@"scanParams.retainDuplicates"];

  v214 = [NSNumber numberWithUnsignedChar:v255[18]];
  [v197 setObject:v214 forKeyedSubscript:@"scanParams.priorityConfig"];

  v215 = [NSNumber numberWithBool:v255[19]];
  [v197 setObject:v215 forKeyedSubscript:@"scanParams.isScanCoreCompensated"];

  v216 = [NSNumber numberWithUnsignedShort:*(v255 + 10)];
  [v197 setObject:v216 forKeyedSubscript:@"scanParams.scanCoreCompensationPercent"];

  v217 = [NSNumber numberWithUnsignedShort:*(v255 + 11)];
  [v197 setObject:v217 forKeyedSubscript:@"scanParams.scanCoreCoexQueryPeriod"];

  v218 = [NSNumber numberWithBool:v255[24]];
  [v197 setObject:v218 forKeyedSubscript:@"scanParams.isPrioritizedOverBT"];

  v219 = [NSNumber numberWithBool:v255[25]];
  [v197 setObject:v219 forKeyedSubscript:@"scanParams.isPrioritizedOverWiFi"];

  v220 = [NSNumber numberWithBool:*(a1 + 144)];
  [v197 setObject:v220 forKeyedSubscript:@"fScreenState"];

  v221 = [NSNumber numberWithInt:v244];
  [v197 setObject:v221 forKeyedSubscript:@"daemonInterval"];

  v222 = [NSNumber numberWithInt:v259];
  [v197 setObject:v222 forKeyedSubscript:@"daemonWindow"];

  v223 = [NSNumber numberWithInt:v257];
  [v197 setObject:v223 forKeyedSubscript:@"minScanLevel"];

  v224 = [NSNumber numberWithUnsignedInt:100 * v195 / v196];
  [v197 setObject:v224 forKeyedSubscript:@"scanPercentage"];

  v225 = [NSNumber numberWithBool:v242 & 1];
  [v197 setObject:v225 forKeyedSubscript:@"allowInPause"];

  v226 = [NSNumber numberWithBool:v240];
  [v197 setObject:v226 forKeyedSubscript:@"scanLPCoreEnable"];

  v227 = [NSNumber numberWithBool:v239];
  [v197 setObject:v227 forKeyedSubscript:@"isScanCoreEnabled"];

  v228 = [NSNumber numberWithBool:obja];
  [v197 setObject:v228 forKeyedSubscript:@"isRangeScan"];

  v229 = [NSNumber numberWithBool:v246 & 1];
  [v197 setObject:v229 forKeyedSubscript:@"isPriorityCritical"];

  v230 = [NSNumber numberWithBool:v249 & 1];
  [v197 setObject:v230 forKeyedSubscript:@"isPrioritizedOverBT"];

  v231 = [NSNumber numberWithBool:v238 & 1];
  [v197 setObject:v231 forKeyedSubscript:@"isPrioritizedOverWiFi"];

  v232 = [NSNumber numberWithUnsignedInt:*(a1 + 1988)];
  [v197 setObject:v232 forKeyedSubscript:@"fObserverState"];

  [v252 setObject:v197 forKeyedSubscript:@"Controller"];
  v265[0] = _NSConcreteStackBlock;
  v265[1] = 3221225472;
  v265[2] = sub_1007ACDA8;
  v265[3] = &unk_100B0D250;
  v233 = v252;
  v266 = v233;
  sub_10000D058((a1 + 1896), v265);

  return 1;
}

void sub_1007ACA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100138880(&a65);

  _Unwind_Resume(a1);
}

void sub_1007ACDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = *(a2 + 8);
    if (*(v6 + 328) == 1)
    {
      v10 = +[NSMutableDictionary dictionary];
      [v10 setObject:@"Discovery" forKeyedSubscript:@"ScanType"];
      v11 = *(*(a2 + 8) + 192);
      v12 = [NSString stringWithUTF8String:sub_10002F16C(v11)];
      [v10 setObject:v12 forKeyedSubscript:@"CBUseCase"];

      v51 = *(*(a2 + 8) + 176);
      v13 = [v51 allObjects];
      v14 = [NSArray arrayWithArray:v13];

      v15 = [v14 sortedArrayUsingSelector:"compare:"];

      v16 = [v15 componentsJoinedByString:{@", "}];
      [v10 setObject:v16 forKeyedSubscript:@"BundleID"];

      v19 = sub_10000C798(v17, v18);
      v20 = [NSNumber numberWithBool:(*(*v19 + 888))(v19)];
      [v10 setObject:v20 forKeyedSubscript:@"IsFWBased"];

      [v10 setObject:@"NotApplicable" forKeyedSubscript:@"InitialConnScanParamsType"];
      v21 = [NSNumber numberWithBool:*(v6 + 330)];
      [v10 setObject:v21 forKeyedSubscript:@"IsWiFiCoexCriticalProtected"];

      v22 = [NSNumber numberWithBool:*(v6 + 331)];
      [v10 setObject:v22 forKeyedSubscript:@"IsBTAudioProtected"];

      v23 = [NSNumber numberWithBool:*(v6 + 332)];
      [v10 setObject:v23 forKeyedSubscript:@"IsWiFi2_4GHzProtected"];

      if ((v11 - 65548) < 2)
      {
        v24 = 63;
      }

      else if (v11 == 268)
      {
        v24 = -1;
      }

      else if (v11 == 265)
      {
        v24 = 111;
      }

      else
      {
        v24 = 0;
      }

      v25 = [NSNumber numberWithUnsignedLongLong:v24];
      [v10 setObject:v25 forKeyedSubscript:@"WiFiCriticalDefinition"];

      v26 = [NSNumber numberWithUnsignedLongLong:*(v6 + 352)];
      [v10 setObject:v26 forKeyedSubscript:@"ScanDurationReqMsec"];

      v27 = [NSNumber numberWithUnsignedLongLong:*(v6 + 344)];
      [v10 setObject:v27 forKeyedSubscript:@"ActualScanTimeReqMsec"];

      v28 = [NSNumber numberWithUnsignedLongLong:*(v6 + 344)];
      [v10 setObject:v28 forKeyedSubscript:@"ActualScanTimeMCReqMsec"];

      v29 = [NSNumber numberWithUnsignedLongLong:a5];
      [v10 setObject:v29 forKeyedSubscript:@"ScanDurationMsec"];

      v30 = [NSNumber numberWithUnsignedLongLong:a3];
      [v10 setObject:v30 forKeyedSubscript:@"ActualScanTimeMsec"];

      v31 = [NSNumber numberWithUnsignedLongLong:a4];
      [v10 setObject:v31 forKeyedSubscript:@"ActualScanTimeMCMsec"];

      v32 = *(v6 + 352);
      if (v32)
      {
        v33 = (100 * a5) / v32;
      }

      else
      {
        LODWORD(v33) = 0;
      }

      if (v33 <= 0x63)
      {
        v34 = v33;
      }

      else
      {
        v34 = 100;
      }

      v35 = *(v6 + 344);
      if (v35)
      {
        v36 = (100 * a3) / v35;
        v37 = v36 > 0x63;
        if (v36 <= 0x63)
        {
          v38 = v36;
        }

        else
        {
          v38 = 100;
        }

        v39 = (100 * a4) / v35;
      }

      else
      {
        v38 = 0;
        v37 = 0;
        LODWORD(v39) = 0;
      }

      if (v39 <= 0x63)
      {
        v40 = v39;
      }

      else
      {
        v40 = 100;
      }

      v41 = [NSNumber numberWithUnsignedInt:v34];
      [v10 setObject:v41 forKeyedSubscript:@"ScanDurationMsecPercentage"];

      v42 = [NSNumber numberWithUnsignedInt:v38];
      [v10 setObject:v42 forKeyedSubscript:@"ActualScanTimeMsecPercentage"];

      v43 = [NSNumber numberWithUnsignedInt:v40];
      [v10 setObject:v43 forKeyedSubscript:@"ActualScanTimeMCMsecPercentage"];

      v44 = [NSNumber numberWithBool:v33 > 0x63];
      [v10 setObject:v44 forKeyedSubscript:@"HasScanDurationReqMet"];

      v45 = [NSNumber numberWithBool:v37];
      [v10 setObject:v45 forKeyedSubscript:@"HasActualScanTimeReqMet"];

      v46 = [NSNumber numberWithBool:v39 > 0x63];
      [v10 setObject:v46 forKeyedSubscript:@"HasActualScanTimeMCReqMet"];

      v47 = qword_100BCE918;
      v48 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
      if (v48)
      {
        *buf = 138543362;
        v53 = v10;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Sending CloseLoopScanningStats :%{public}@", buf, 0xCu);
      }

      v50 = sub_10000F034(v48, v49);
      (*(*v50 + 408))(v50, v10);
    }
  }
}

void sub_1007AD498(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 == 2)
  {
    v3 = 20;
  }

  else
  {
    v3 = 1;
  }

  if (v2 == 1)
  {
    v4 = 342;
  }

  else
  {
    v4 = v3;
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1007AD684;
  v19[3] = &unk_100B0D270;
  v5 = *(a1 + 32);
  v19[4] = *(a1 + 40);
  v21 = v4;
  v20 = *(a1 + 48);
  sub_10000D058((v5 + 1896), v19);
  v7 = *(v5 + 2072);
  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = v5 + 2072;
    do
    {
      v10 = *(v7 + 32);
      v11 = v10 >= v8;
      v12 = v10 < v8;
      if (v11)
      {
        v9 = v7;
      }

      v7 = *(v7 + 8 * v12);
    }

    while (v7);
    if (v9 != v5 + 2072 && v8 >= *(v9 + 32))
    {
      v13 = *(v9 + 40);
      if (*(a1 + 72) == 1)
      {
        sub_1007ACDD8(v6, v13, *(a1 + 48), *(a1 + 56), *(a1 + 64));
        v8 = *(a1 + 40);
      }

      v14 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(v8, __p);
        if (v18 >= 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        *buf = 136446210;
        v23 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "stopping scan for %{public}s", buf, 0xCu);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }

        v8 = *(a1 + 40);
      }

      v16 = *(v13 + 8);
      *(v16 + 228) = 0;
      *(v16 + 232) = 0;
      sub_100023EC0(v5, v8, 1, 1, 0);
    }
  }
}

const char *sub_1007AD6BC(uint64_t a1, unsigned int a2)
{
  if (a2 > 6)
  {
    return "Unknown Duty Cycle Type";
  }

  else
  {
    return off_100B0D6C8[a2];
  }
}

void sub_1007AD6E8(uint64_t a1)
{
  if ((*(a1 + 3288) & 1) == 0)
  {
    v2 = *(a1 + 3280) + 1;
    *(a1 + 3280) = v2;
    v3 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 67109120;
      v4[1] = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ScanCoreBLEConnectionScanStat: ScanCore is enabled for Connection Scan %d times", v4, 8u);
    }
  }

  *(a1 + 3288) = 1;
}

void sub_1007AD7B8(uint64_t a1)
{
  if (*(a1 + 3288) == 1)
  {
    v2 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ScanCore is disabled for Connection Scan", v3, 2u);
    }
  }

  *(a1 + 3288) = 0;
}

void sub_1007AD83C(uint64_t a1, uint64_t a2)
{
  *(a1 + 4360) = a2;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
  {
    sub_100877700();
  }
}

uint64_t sub_1007AD898(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 1984);
    if (v5 > 4)
    {
      v6 = "UNKNOWN";
    }

    else
    {
      v6 = off_100B0D700[v5];
    }

    v7 = *(a1 + 1988);
    if (v7 > 3)
    {
      v8 = "UNKNOWN";
    }

    else
    {
      v8 = off_100B0D728[v7];
    }

    v22 = 136446466;
    v23 = v6;
    v24 = 2082;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "pauseScans State: %{public}s, ObserverState: %{public}s", &v22, 0x16u);
  }

  v9 = *(a1 + 1988);
  if ((v9 - 1) < 2)
  {
    v12 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 1984);
      if (v13 > 4)
      {
        v14 = "UNKNOWN";
      }

      else
      {
        v14 = off_100B0D700[v13];
      }

      v15 = "Pausing";
      if (v9 == 2)
      {
        v15 = "Paused";
      }

      v22 = 136446466;
      v23 = v14;
      v24 = 2082;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Already Paused Scans State: %{public}s, ObserverState: %{public}s", &v22, 0x16u);
    }

    v11 = 401;
  }

  else
  {
    if (v9 == 3)
    {
      v11 = 1;
      goto LABEL_28;
    }

    if (!v9)
    {
      sub_1007A7444(a1, 1u);
      v10 = *(a1 + 1984);
      if (v10 == 1 || v10 == 3 && sub_1007A9290(a1))
      {
        sub_1007A7444(a1, 2u);
      }
    }

    v11 = 0;
  }

  [*(a1 + 3296) addObject:v3];
  v16 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v3;
    v18 = [v3 UTF8String];
    v19 = [*(a1 + 3296) count];
    v20 = *(a1 + 3296);
    v22 = 136315650;
    v23 = v18;
    v24 = 2048;
    v25 = v19;
    v26 = 2112;
    v27 = v20;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Added Paused Client: %s, Clients(Count: %lu): %@", &v22, 0x20u);
  }

LABEL_28:

  return v11;
}

uint64_t sub_1007ADB50(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 3296) removeObject:v3];
  if ([*(a1 + 3296) count])
  {
    v4 = qword_100BCE918;
    v5 = 0;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 3296) count];
      v7 = *(a1 + 1984);
      if (v7 > 4)
      {
        v8 = "UNKNOWN";
      }

      else
      {
        v8 = off_100B0D700[v7];
      }

      v12 = *(a1 + 1988);
      if (v12 > 3)
      {
        v13 = "UNKNOWN";
      }

      else
      {
        v13 = off_100B0D728[v12];
      }

      v14 = *(a1 + 3296);
      v19 = 134218754;
      v20 = v6;
      v21 = 2082;
      v22 = v8;
      v23 = 2082;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cannot Resume Scans we have %lu clients required to be paused, State: %{public}s, ObserverState: %{public}s, clients: %@", &v19, 0x2Au);
LABEL_13:
      v5 = 0;
    }
  }

  else
  {
    [*(a1 + 3296) removeAllObjects];
    v9 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 1984);
      if (v10 > 4)
      {
        v11 = "UNKNOWN";
      }

      else
      {
        v11 = off_100B0D700[v10];
      }

      v15 = *(a1 + 1988);
      if (v15 > 3)
      {
        v16 = "UNKNOWN";
      }

      else
      {
        v16 = off_100B0D728[v15];
      }

      v19 = 136446466;
      v20 = v11;
      v21 = 2082;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "resumeScans State: %{public}s, ObserverState: %{public}s", &v19, 0x16u);
    }

    v17 = *(a1 + 1988);
    v5 = 1;
    if (v17 >= 2 && v17 != 3)
    {
      if (v17 == 2)
      {
        sub_1007A7444(a1, 3u);
        *(a1 + 1856) = 1;
        if ((*(a1 + 1984) | 2) == 3)
        {
          sub_1007A7444(a1, 0);
        }
      }

      goto LABEL_13;
    }
  }

  return v5;
}

uint64_t sub_1007ADE10(uint64_t a1)
{
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *__p = 0u;
  v17 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  sub_100008760(&v14);
  v2 = sub_100007774(&v14, " client: ", 9);
  sub_100007774(v2, "LeObserver", 10);
  v3 = sub_100007774(&v14, " state: (", 9);
  v4 = *(a1 + 1984);
  if (v4 > 4)
  {
    v5 = "UNKNOWN";
  }

  else
  {
    v5 = off_100B0D700[v4];
  }

  v6 = strlen(v5);
  v7 = sub_100007774(v3, v5, v6);
  sub_100007774(v7, ")", 1);
  v8 = sub_100007774(&v14, " , ObserverState: (", 19);
  v9 = *(a1 + 1988);
  if (v9 > 3)
  {
    v10 = "UNKNOWN";
  }

  else
  {
    v10 = off_100B0D728[v9];
  }

  v11 = strlen(v10);
  v12 = sub_100007774(v8, v10, v11);
  sub_100007774(v12, ")", 1);
  std::stringbuf::str();
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v15);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1007AE08C(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: -------------------- LE Observer ---------------------", buf, 2u);
    v2 = qword_100BCE918;
  }

  v3 = (a1 + 4096);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 1984);
    if (v4 > 4)
    {
      v5 = "UNKNOWN";
    }

    else
    {
      v5 = off_100B0D700[v4];
    }

    v6 = *(a1 + 1988);
    if (v6 > 3)
    {
      v7 = "UNKNOWN";
    }

    else
    {
      v7 = off_100B0D728[v6];
    }

    v8 = *(a1 + 4426);
    LODWORD(buf[0].__locale_) = 136446722;
    *(&buf[0].__locale_ + 4) = v5;
    WORD2(buf[1].__locale_) = 2082;
    *(&buf[1].__locale_ + 6) = v7;
    HIWORD(buf[2].__locale_) = 1024;
    LODWORD(buf[3].__locale_) = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: State: %{public}s, ObserverState: %{public}s fSystemWillSleep: %d", buf, 0x1Cu);
    v2 = qword_100BCE918;
  }

  v145 = a1;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_100017CD0(a1);
    v10 = "NO";
    if (v9)
    {
      v10 = "YES";
    }

    LODWORD(buf[0].__locale_) = 136446210;
    *(&buf[0].__locale_ + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: haveAnyValidScanRequests:%{public}s", buf, 0xCu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_1000A5154(a1);
    v12 = "NO";
    if (v11)
    {
      v12 = "YES";
    }

    LODWORD(buf[0].__locale_) = 136446210;
    *(&buf[0].__locale_ + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: haveAnyActiveScanRequests:%{public}s", buf, 0xCu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_1007A9290(a1);
    v14 = "NO";
    if (v13)
    {
      v14 = "YES";
    }

    LODWORD(buf[0].__locale_) = 136446210;
    *(&buf[0].__locale_ + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: haveAnyValidScanRequestsInPaused:%{public}s", buf, 0xCu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = sub_10002529C(a1);
    v16 = "NO";
    if (v15)
    {
      v16 = "YES";
    }

    LODWORD(buf[0].__locale_) = 136446210;
    *(&buf[0].__locale_ + 4) = v16;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: haveAnyValidHWObjectDiscovery:%{public}s", buf, 0xCu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v17 = sub_10003663C(a1);
    v18 = "NO";
    if (v17)
    {
      v18 = "YES";
    }

    LODWORD(buf[0].__locale_) = 136446210;
    *(&buf[0].__locale_ + 4) = v18;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: objectDiscoveryHwAdvBufferOnly:%{public}s", buf, 0xCu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v19 = sub_10007CF9C(a1);
    v20 = "NO";
    if (v19)
    {
      v20 = "YES";
    }

    LODWORD(buf[0].__locale_) = 136446210;
    *(&buf[0].__locale_ + 4) = v20;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: haveAnyHwAOPBTBufferRequests:%{public}s", buf, 0xCu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v21 = sub_100018014(a1);
    v22 = "NO";
    v23 = *(a1 + 2224);
    if (v21)
    {
      v22 = "YES";
    }

    LODWORD(buf[0].__locale_) = 136446466;
    *(&buf[0].__locale_ + 4) = v22;
    WORD2(buf[1].__locale_) = 2048;
    *(&buf[1].__locale_ + 6) = v23;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: haveClientPowerAssertion:%{public}s, fScanningPowerAssertion:%llx", buf, 0x16u);
    v2 = qword_100BCE918;
  }

  v24 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    if (*(a1 + 2232))
    {
      v26 = "YES";
    }

    else
    {
      v26 = "NO";
    }

    v27 = sub_10000C7D0(v24, v25);
    if ((*(*v27 + 4072))(v27))
    {
      v28 = "YES";
    }

    else
    {
      v28 = "NO";
    }

    LODWORD(buf[0].__locale_) = 136446466;
    *(&buf[0].__locale_ + 4) = v26;
    WORD2(buf[1].__locale_) = 2082;
    *(&buf[1].__locale_ + 6) = v28;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: configPowerAssert:%{public}s needsScanconfigPowerAssertions:%{public}s", buf, 0x16u);
    v2 = qword_100BCE918;
    a1 = v145;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v29 = "NO";
    if (*(a1 + 1856))
    {
      v30 = "YES";
    }

    else
    {
      v30 = "NO";
    }

    if (*(a1 + 1859))
    {
      v29 = "YES";
    }

    LODWORD(buf[0].__locale_) = 136446466;
    *(&buf[0].__locale_ + 4) = v30;
    WORD2(buf[1].__locale_) = 2082;
    *(&buf[1].__locale_ + 6) = v29;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fScanFiltersNeedUpdating:%{public}s fZoneScansHaveChanged:%{public}s ", buf, 0x16u);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v31 = "NO";
    if (*(a1 + 1864))
    {
      v32 = "YES";
    }

    else
    {
      v32 = "NO";
    }

    v33 = *(a1 + 1866);
    if (*(a1 + 1865))
    {
      v34 = "YES";
    }

    else
    {
      v34 = "NO";
    }

    LODWORD(buf[0].__locale_) = 136446722;
    if (v33)
    {
      v31 = "YES";
    }

    *(&buf[0].__locale_ + 4) = v32;
    WORD2(buf[1].__locale_) = 2082;
    *(&buf[1].__locale_ + 6) = v34;
    HIWORD(buf[2].__locale_) = 2082;
    buf[3].__locale_ = v31;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fHaveUUIDFilters:%{public}s fHaveZoneFilters:%{public}s fHaveRuleFilters:%{public}s", buf, 0x20u);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v35 = *(a1 + 2152);
    LODWORD(buf[0].__locale_) = 134217984;
    *(&buf[0].__locale_ + 4) = v35;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fApWakeReadADVBuffersDebounceDelta:%llu", buf, 0xCu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v36 = *(a1 + 2324);
    LODWORD(buf[0].__locale_) = 67109120;
    HIDWORD(buf[0].__locale_) = v36;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fRSSIOffset:%d", buf, 8u);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v37 = v3[328];
    LODWORD(buf[0].__locale_) = 67109120;
    HIDWORD(buf[0].__locale_) = v37;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fScanThrottlingRequired:%d", buf, 8u);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 2384))
    {
      v38 = "YES";
    }

    else
    {
      v38 = "NO";
    }

    LODWORD(buf[0].__locale_) = 136446210;
    *(&buf[0].__locale_ + 4) = v38;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fShouldRetainDupsNextUpdate:%{public}s", buf, 0xCu);
    v2 = qword_100BCE918;
  }

  v39 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v39)
  {
    v41 = sub_10000C798(v39, v40);
    v42 = (*(*v41 + 744))(v41);
    LODWORD(buf[0].__locale_) = 67109120;
    HIDWORD(buf[0].__locale_) = v42;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Num of supported ObjectDiscovery HW ADV Buffers:%d", buf, 8u);
    v2 = qword_100BCE918;
    a1 = v145;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100BC7CC4)
    {
      v43 = "YES";
    }

    else
    {
      v43 = "NO";
    }

    LODWORD(buf[0].__locale_) = 136446210;
    *(&buf[0].__locale_ + 4) = v43;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: gSniffScanDebug:%{public}s", buf, 0xCu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100BC7CC5)
    {
      v44 = "YES";
    }

    else
    {
      v44 = "NO";
    }

    LODWORD(buf[0].__locale_) = 136446210;
    *(&buf[0].__locale_ + 4) = v44;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: gSniffScanHeysiriDebug:%{public}s", buf, 0xCu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v45 = "NO";
    if (v3[232])
    {
      v46 = "YES";
    }

    else
    {
      v46 = "NO";
    }

    v47 = *(a1 + 4416);
    if (v3[324])
    {
      v48 = "YES";
    }

    else
    {
      v48 = "NO";
    }

    if (v3[326])
    {
      v49 = "YES";
    }

    else
    {
      v49 = "NO";
    }

    if (v3[325])
    {
      v45 = "YES";
    }

    LODWORD(buf[0].__locale_) = 136447490;
    *(&buf[0].__locale_ + 4) = v46;
    WORD2(buf[1].__locale_) = 1024;
    *(&buf[1].__locale_ + 6) = v47;
    WORD1(buf[2].__locale_) = 2082;
    *(&buf[2].__locale_ + 4) = v48;
    WORD2(buf[3].__locale_) = 2082;
    *(&buf[3].__locale_ + 6) = v49;
    HIWORD(buf[4].__locale_) = 2082;
    buf[5].__locale_ = v45;
    LOWORD(v176) = 2082;
    *(&v176 + 2) = v49;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fControllerConfigInProgress:%{public}s fBypassFilterMask:%04x fGlobalDuplicateFilter:%{public}s shouldDispatchConfig():%{public}s fDebugControllerConfigDispatchSequence:%{public}s fForceDispatchInsteadOfSerialConfig:%{public}s", buf, 0x3Au);
  }

  v50 = sub_10000E92C();
  if ((*(*v50 + 8))(v50))
  {
    v51 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0].__locale_) = 0;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "statedump: fFilterPeripherals:", buf, 2u);
    }

    v52 = *(v145 + 4336);
    if (v52 != (v145 + 4344))
    {
      do
      {
        v53 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          sub_100777574(v52[4]);
          v54 = SHIBYTE(buf[2].__locale_) >= 0 ? buf : buf[0].__locale_;
          *v160 = 136446210;
          *&v160[4] = v54;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "    %{public}s", v160, 0xCu);
          if (SHIBYTE(buf[2].__locale_) < 0)
          {
            operator delete(buf[0].__locale_);
          }
        }

        v55 = v52[1];
        if (v55)
        {
          do
          {
            v56 = v55;
            v55 = *v55;
          }

          while (v55);
        }

        else
        {
          do
          {
            v56 = v52[2];
            v57 = *v56 == v52;
            v52 = v56;
          }

          while (!v57);
        }

        v52 = v56;
      }

      while (v56 != (v145 + 4344));
    }

    v58 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0].__locale_) = 0;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "statedump: fAllUuids:", buf, 2u);
    }

    v59 = *(v145 + 4368);
    if (v59 != (v145 + 4376))
    {
      do
      {
        v60 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          sub_10003B85C(v59 + 28, buf);
          v61 = SHIBYTE(buf[2].__locale_) >= 0 ? buf : buf[0].__locale_;
          v62 = *(v59 + 48) ? "Yes" : "No";
          *v160 = 136446466;
          *&v160[4] = v61;
          *&v160[12] = 2080;
          *&v160[14] = v62;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "    %{public}s allowdups:%s", v160, 0x16u);
          if (SHIBYTE(buf[2].__locale_) < 0)
          {
            operator delete(buf[0].__locale_);
          }
        }

        v63 = v59[1];
        if (v63)
        {
          do
          {
            v64 = v63;
            v63 = *v63;
          }

          while (v63);
        }

        else
        {
          do
          {
            v64 = v59[2];
            v57 = *v64 == v59;
            v59 = v64;
          }

          while (!v57);
        }

        v59 = v64;
      }

      while (v64 != (v145 + 4376));
    }
  }

  v65 = qword_100BCE918;
  if (*(v145 + 1984) == 3)
  {
    buf[1].__locale_ = 0;
    buf[0].__locale_ = 0;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *v160 = 0;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "statedump: Scan configuration:", v160, 2u);
    }

    LOWORD(v66) = *(v145 + 1996);
    snprintf(buf, 0x10uLL, "%.02fms", v66 * 0.625);
    v67 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *v160 = 136446210;
      *&v160[4] = buf;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "statedump:    Interval: %{public}s", v160, 0xCu);
    }

    LOWORD(v68) = *(v145 + 1998);
    snprintf(buf, 0x10uLL, "%.02fms", v68 * 0.625);
    v65 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *v160 = 136446210;
      *&v160[4] = buf;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "statedump:    Window: %{public}s", v160, 0xCu);
      v65 = qword_100BCE918;
    }

    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v145 + 1992))
      {
        v69 = "Passive";
      }

      else
      {
        v69 = "Active";
      }

      *v160 = 136446210;
      *&v160[4] = v69;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "statedump:    Type: %{public}s", v160, 0xCu);
      v65 = qword_100BCE918;
    }

    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v145 + 1995))
      {
        v70 = "No";
      }

      else
      {
        v70 = "Yes";
      }

      *v160 = 136446210;
      *&v160[4] = v70;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "statedump:    Duplicates: %{public}s", v160, 0xCu);
      v65 = qword_100BCE918;
    }

    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v145 + 1994))
      {
        v71 = "Yes";
      }

      else
      {
        v71 = "No";
      }

      *v160 = 136446210;
      *&v160[4] = v71;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "statedump:    Filter Accept List: %{public}s", v160, 0xCu);
      v65 = qword_100BCE918;
    }

    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v145 + 1864))
      {
        v72 = "Disabled";
      }

      else
      {
        v72 = "Enabled";
      }

      *v160 = 136446210;
      *&v160[4] = v72;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "statedump:    HW Filtering: %{public}s", v160, 0xCu);
      v65 = qword_100BCE918;
    }
  }

  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "statedump: Scan agents:", buf, 2u);
  }

  if (v3[329] == 1)
  {
    v73 = *(v145 + 2064);
    if (v73 != (v145 + 2072))
    {
      do
      {
        v150 = *(v73[5] + 8);
        v74 = qword_100BCE918;
        v75 = v73;
        v146 = v73;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v75[4], buf);
          if (SHIBYTE(buf[2].__locale_) >= 0)
          {
            locale = buf;
          }

          else
          {
            locale = buf[0].__locale_;
          }

          *v160 = 136446210;
          *&v160[4] = locale;
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", v160, 0xCu);
          if (SHIBYTE(buf[2].__locale_) < 0)
          {
            operator delete(buf[0].__locale_);
          }

          v74 = qword_100BCE918;
        }

        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          v77 = "No";
          if (*v150)
          {
            v77 = "Yes";
          }

          LODWORD(buf[0].__locale_) = 136446210;
          *(&buf[0].__locale_ + 4) = v77;
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "statedump:       Duplicates: %{public}s", buf, 0xCu);
        }

        v190 = 0;
        v188 = 0u;
        v189 = 0u;
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v182 = 0u;
        v183 = 0u;
        v180 = 0u;
        v181 = 0u;
        *v178 = 0u;
        v179 = 0u;
        v176 = 0u;
        v177 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_100007AD0(buf);
        v78 = *(v150 + 8);
        if (*(v150 + 16) != v78)
        {
          do
          {
            sub_10003B85C(v78, v160);
            if (v160[23] >= 0)
            {
              v79 = v160;
            }

            else
            {
              LODWORD(v79) = *v160;
            }

            if (v160[23] >= 0)
            {
              v80 = v160[23];
            }

            else
            {
              v80 = *&v160[8];
            }

            v81 = sub_100007774(&buf[2].__locale_, v79, v80);
            sub_100007774(v81, " ", 1);
            if ((v160[23] & 0x80000000) != 0)
            {
              operator delete(*v160);
            }

            v78 += 20;
          }

          while (v78 != *(v150 + 16));
          v82 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            std::stringbuf::str();
            v83 = v160[23] >= 0 ? v160 : *v160;
            *v155 = 136446210;
            *&v155[4] = v83;
            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "statedump:       Services: %{public}s", v155, 0xCu);
            if ((v160[23] & 0x80000000) != 0)
            {
              operator delete(*v160);
            }
          }
        }

        memset(v160, 0, 24);
        std::string::operator=(&v178[1], v160);
        sub_10000766C(&buf[3]);
        if ((v160[23] & 0x80000000) != 0)
        {
          operator delete(*v160);
        }

        v84 = *(v150 + 56);
        v85 = *(v150 + 64);
        while (v84 != v85)
        {
          sub_10003B85C(v84, v160);
          if (v160[23] >= 0)
          {
            v86 = v160;
          }

          else
          {
            LODWORD(v86) = *v160;
          }

          if (v160[23] >= 0)
          {
            v87 = v160[23];
          }

          else
          {
            v87 = *&v160[8];
          }

          v88 = sub_100007774(&buf[2].__locale_, v86, v87);
          sub_100007774(v88, " ", 1);
          if ((v160[23] & 0x80000000) != 0)
          {
            operator delete(*v160);
          }

          v84 += 20;
        }

        v89 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          std::stringbuf::str();
          if (v160[23] >= 0)
          {
            v90 = v160;
          }

          else
          {
            v90 = *v160;
          }

          *v155 = 136446210;
          *&v155[4] = v90;
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "statedump:       Solicited Services: %{public}s", v155, 0xCu);
          if ((v160[23] & 0x80000000) != 0)
          {
            operator delete(*v160);
          }

          v89 = qword_100BCE918;
        }

        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          v91 = "NO";
          if (*(v150 + 2))
          {
            v91 = "YES";
          }

          *v160 = 136446210;
          *&v160[4] = v91;
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "statedump:       Requires active scan:%{public}s", v160, 0xCu);
          v89 = qword_100BCE918;
        }

        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          v92 = *(v146[5] + 96);
          *v160 = 67109120;
          *&v160[4] = v92;
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "statedump:       scan level:%d", v160, 8u);
          v89 = qword_100BCE918;
        }

        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          v93 = "NO";
          if (*(*(v146[5] + 8) + 3))
          {
            v93 = "YES";
          }

          *v160 = 136446210;
          *&v160[4] = v93;
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "statedump:       Allowed in paused:%{public}s", v160, 0xCu);
          v89 = qword_100BCE918;
        }

        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          v94 = "NO";
          if (*(*(v146[5] + 8) + 171))
          {
            v94 = "YES";
          }

          *v160 = 136446210;
          *&v160[4] = v94;
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "statedump:       Power assertion:%{public}s", v160, 0xCu);
        }

        v95 = qword_100BCEA38;
        if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
        {
          v96 = "NO";
          if (*(*(v146[5] + 8) + 172))
          {
            v96 = "YES";
          }

          *v160 = 136446210;
          *&v160[4] = v96;
          _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "statedump:       Exposure Notification:%{public}s", v160, 0xCu);
        }

        if (*(v150 + 144) == 1)
        {
          v97 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            v98 = *(v150 + 160);
            v100 = *(v150 + 152);
            v99 = *(v150 + 156);
            *v160 = 67109632;
            *&v160[4] = v100;
            *&v160[8] = 1024;
            *&v160[10] = v99;
            *&v160[14] = 1024;
            *&v160[16] = v98;
            _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "statedump:       requested interval:%d window:%d active:%d", v160, 0x14u);
          }
        }

        v101 = *(v150 + 146);
        if (v101)
        {
          v102 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            *v160 = 0;
            _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "statedump:       HW ObjectDiscovery Wild", v160, 2u);
            v101 = *(v150 + 146);
          }
        }

        if ((v101 & 2) != 0)
        {
          v103 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            *v160 = 0;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "statedump:       HW ObjectDiscovery Near Owner", v160, 2u);
          }
        }

        v104 = *(v150 + 148);
        if ((v104 & 0x10) != 0)
        {
          v105 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            *v160 = 0;
            _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "statedump:       HW AOP BT Buffer NearbyInfo", v160, 2u);
            v104 = *(v150 + 148);
          }
        }

        if (v104)
        {
          v106 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            *v160 = 0;
            _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "statedump:       HW AOP BT Buffer NearbyInfoV2", v160, 2u);
            v104 = *(v150 + 148);
          }
        }

        if ((v104 & 2) != 0)
        {
          v107 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            *v160 = 0;
            _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "statedump:       HW AOP BT Buffer All", v160, 2u);
          }
        }

        v109 = *(v150 + 88);
        v108 = *(v150 + 96);
        while (v109 != v108)
        {
          v110 = qword_100BCE918;
          if (*(v109 + 64) == 1 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            v111 = *(v109 + 8);
            *v160 = 67109120;
            *&v160[4] = v111;
            _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "statedump:       ObjectLocator type %x", v160, 8u);
            v110 = qword_100BCE918;
          }

          if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
          {
            v112 = *(v109 + 8);
            v113 = *(v109 + 80);
            v114 = *(v109 + 84);
            v115 = *(v109 + 88);
            *v160 = 67109888;
            *&v160[4] = v112;
            *&v160[8] = 1024;
            *&v160[10] = v113;
            *&v160[14] = 1024;
            *&v160[16] = v114;
            *&v160[20] = 1024;
            *&v160[22] = v115;
            _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "statedump:       Puck: %d  %d/%d/%d", v160, 0x1Au);
          }

          v116 = *(v109 + 72);
          if (v116)
          {
            v117 = v116;
            v118 = *(v109 + 72);
            v119 = [v118 count] == 0;

            if (!v119)
            {
              v174 = 0;
              v172 = 0u;
              v173 = 0u;
              v170 = 0u;
              v171 = 0u;
              v168 = 0u;
              v169 = 0u;
              v166 = 0u;
              v167 = 0u;
              v164 = 0u;
              v165 = 0u;
              *__p = 0u;
              v163 = 0u;
              memset(v161, 0, sizeof(v161));
              memset(v160, 0, sizeof(v160));
              sub_100007AD0(v160);
              v153 = 0u;
              v154 = 0u;
              v151 = 0u;
              v152 = 0u;
              v120 = *(v109 + 72);
              v121 = [v120 countByEnumeratingWithState:&v151 objects:v159 count:16];
              if (v121)
              {
                v122 = *v152;
                do
                {
                  for (i = 0; i != v121; i = i + 1)
                  {
                    if (*v152 != v122)
                    {
                      objc_enumerationMutation(v120);
                    }

                    v124 = sub_10002F16C([*(*(&v151 + 1) + 8 * i) longLongValue]);
                    v125 = v124;
                    v126 = strlen(v124);
                    v127 = sub_100007774(&v160[16], v125, v126);
                    sub_100007774(v127, " ", 1);
                  }

                  v121 = [v120 countByEnumeratingWithState:&v151 objects:v159 count:16];
                }

                while (v121);
              }

              v128 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
              {
                std::stringbuf::str();
                v129 = v155;
                if (v156 < 0)
                {
                  v129 = *v155;
                }

                *v157 = 136315138;
                v158 = v129;
                _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "statedump:             UseCaseList: %s", v157, 0xCu);
                if (v156 < 0)
                {
                  operator delete(*v155);
                }
              }

              *v160 = v147;
              *&v160[*(v147 - 3)] = v148;
              *&v160[16] = v149;
              if (SHIBYTE(v163) < 0)
              {
                operator delete(__p[1]);
              }

              std::locale::~locale(v161);
              std::iostream::~basic_iostream();
              std::ios::~ios();
            }
          }

          v109 += 96;
        }

        v130 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          v131 = "NO";
          if (*(v150 + 240))
          {
            v131 = "YES";
          }

          *v160 = 136446210;
          *&v160[4] = v131;
          _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "statedump:       Requires double boost scan: %{public}s", v160, 0xCu);
        }

        sub_1007B4984(v146[5]);
        buf[0].__locale_ = v147;
        *(&buf[0].__locale_ + *(v147 - 3)) = v148;
        buf[2].__locale_ = v149;
        if (SHIBYTE(v179) < 0)
        {
          operator delete(v178[1]);
        }

        std::locale::~locale(&buf[4]);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        v132 = v146;
        v133 = v146[1];
        if (v133)
        {
          do
          {
            v134 = v133;
            v133 = *v133;
          }

          while (v133);
        }

        else
        {
          do
          {
            v134 = v132[2];
            v57 = *v134 == v132;
            v132 = v134;
          }

          while (!v57);
        }

        v73 = v134;
      }

      while (v134 != (v145 + 2072));
    }
  }

  v135 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "statedump: Configured ObjectLocator MatchTables:", buf, 2u);
    v135 = qword_100BCE918;
  }

  v136 = *(v145 + 1832);
  if (v136 != (v145 + 1840))
  {
    do
    {
      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
      {
        v137 = *(v136 + 18);
        v138 = *(v136 + 15);
        v139 = *(v136 + 28);
        v140 = *(v136 + 16) != 0;
        v141 = *(v136 + 17) != 0;
        LODWORD(buf[0].__locale_) = 67110144;
        HIDWORD(buf[0].__locale_) = v139;
        LOWORD(buf[1].__locale_) = 1024;
        *(&buf[1].__locale_ + 2) = v138;
        HIWORD(buf[1].__locale_) = 1024;
        LODWORD(buf[2].__locale_) = v137;
        WORD2(buf[2].__locale_) = 1024;
        *(&buf[2].__locale_ + 6) = v140;
        WORD1(buf[3].__locale_) = 1024;
        HIDWORD(buf[3].__locale_) = v141;
        _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "statedump: \tType:%x handle:%d Length:%d created:%d enabled:%d", buf, 0x20u);
        v135 = qword_100BCE918;
      }

      v142 = v136[1];
      if (v142)
      {
        do
        {
          v143 = v142;
          v142 = *v142;
        }

        while (v142);
      }

      else
      {
        do
        {
          v143 = v136[2];
          v57 = *v143 == v136;
          v136 = v143;
        }

        while (!v57);
      }

      v136 = v143;
    }

    while (v143 != (v145 + 1840));
  }

  if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "statedump: Configured Payload encryption keys:", buf, 2u);
  }

  [*(v145 + 2112) enumerateKeysAndObjectsWithOptions:1 usingBlock:&stru_100B0D308];
  sub_1007B0310(v145);
  sub_1007A4E78(v145);
  sub_1007A5954(v145, v144);
  sub_1007B0A7C(v145);
}

void sub_1007AFF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  STACK[0x2D0] = a27;
  *(&STACK[0x2D0] + *(a27 - 24)) = a28;
  STACK[0x2E0] = a29;
  if (SLOBYTE(STACK[0x33F]) < 0)
  {
    operator delete(STACK[0x328]);
  }

  std::locale::~locale(&STACK[0x2F0]);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1007B0238(id a1, id a2, id a3, BOOL *a4)
{
  v6 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 141558787;
    v8 = 1752392040;
    v9 = 2113;
    v10 = a2;
    v11 = 2160;
    v12 = 1752392040;
    v13 = 2113;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump:       %{private, mask.hash}@ --> %{private, mask.hash}@", &v7, 0x2Au);
  }
}

void sub_1007B0310(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: BLE Scan Configuration Stat:", buf, 2u);
  }

  sub_1007B0FB8(a1);
  Current = CFAbsoluteTimeGetCurrent();
  v4 = 0;
  v5 = qword_100BCE918;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = a1 + 2392 + 176 * v4;
    if (Current >= *v8)
    {
      v9 = Current - *v8;
    }

    else
    {
      v9 = 0.0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "screen off";
      if (v7)
      {
        v10 = "screen on";
      }

      *buf = 136315138;
      v33 = *&v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \t=================== LE Scan Configuration Stats when %s ===================", buf, 0xCu);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v33 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Stats started %f sec ago", buf, 0xCu);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v8 + 88);
      *buf = 67109120;
      LODWORD(v33) = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count: %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(v8 + 92);
      *buf = 67109120;
      LODWORD(v33) = v12;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count hasParamUpdate : %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v8 + 96);
      *buf = 67109120;
      LODWORD(v33) = v13;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count needFWScanRestart : %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v8 + 104);
      *buf = 67109120;
      LODWORD(v33) = v14;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count needNoFWScanRestart : %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(v8 + 124);
      *buf = 67109120;
      LODWORD(v33) = v15;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count hasMatchingRuleUpdate : %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(v8 + 120);
      *buf = 67109120;
      LODWORD(v33) = v16;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count hasMatchingAddressUpdate : %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(v8 + 116);
      *buf = 67109120;
      LODWORD(v33) = v17;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count hasPCFUpdate : %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(v8 + 112);
      *buf = 67109120;
      LODWORD(v33) = v18;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count hasZoneUpdate : %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(v8 + 128);
      *buf = 67109120;
      LODWORD(v33) = v19;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count hasAdvMatchBufUpdate : %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(v8 + 132);
      *buf = 67109120;
      LODWORD(v33) = v20;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Min: %u ms", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(v8 + 134);
      *buf = 67109120;
      LODWORD(v33) = v21;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Max: %u ms", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(v8 + 136);
      *buf = 67109120;
      LODWORD(v33) = v22;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Average: %u ms", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(v8 + 138);
      *buf = 67109120;
      LODWORD(v33) = v23;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration 5 Percentile: %u ms", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(v8 + 140);
      *buf = 67109120;
      LODWORD(v33) = v24;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration 25 Percentile: %u ms", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(v8 + 142);
      *buf = 67109120;
      LODWORD(v33) = v25;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration 50 Percentile: %u ms", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(v8 + 144);
      *buf = 67109120;
      LODWORD(v33) = v26;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration 75 Percentile: %u ms", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(v8 + 146);
      *buf = 67109120;
      LODWORD(v33) = v27;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration 95 Percentile: %u ms", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(v8 + 156);
      *buf = 67109120;
      LODWORD(v33) = v28;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Average HeySiri UseCase: %u ms", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(v8 + 148);
      *buf = 67109120;
      LODWORD(v33) = v29;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count HeySiri UseCase: %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(v8 + 168);
      *buf = 67109120;
      LODWORD(v33) = v30;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Average Sharing UseCases: %u ms", buf, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(v8 + 160);
      *buf = 67109120;
      LODWORD(v33) = v31;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count Sharing UseCase: %u", buf, 8u);
      v5 = qword_100BCE918;
    }

    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
}

void sub_1007B0A7C(uint64_t a1)
{
  v2 = qword_100BCE918;
  v3 = off_100B0D748;
  v4 = -1632;
  do
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *v3;
      v6 = a1 + v4;
      v7 = *(a1 + v4 + 1792);
      v8 = *(a1 + v4 + 1793);
      v9 = *(a1 + v4 + 1794);
      v10 = *(a1 + v4 + 1796);
      v11 = *(a1 + v4 + 1797);
      v12 = *(a1 + v4 + 1798);
      if (*(a1 + v4 + 1799))
      {
        v13 = "YES";
      }

      else
      {
        v13 = "NO";
      }

      if (*(v6 + 1800))
      {
        v14 = "YES";
      }

      else
      {
        v14 = "NO";
      }

      v15 = *(v6 + 1804);
      v16 = *(v6 + 1805);
      v17 = *(v6 + 1806);
      v18 = *(v6 + 1808);
      *buf = 138546434;
      v20 = v5;
      v21 = 1024;
      v22 = v7;
      v23 = 1024;
      v24 = v8;
      v25 = 1024;
      v26 = v9;
      v27 = 1024;
      v28 = v10;
      v29 = 1024;
      v30 = v11;
      v31 = 1024;
      v32 = v12;
      v33 = 2082;
      v34 = v13;
      v35 = 2082;
      v36 = v14;
      v37 = 1024;
      v38 = v15;
      v39 = 1024;
      v40 = v16;
      v41 = 1024;
      v42 = v17;
      v43 = 2048;
      v44 = v18;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ADVBUFF(%{public}@): mask:0x%x advADType:0x%x advCompanyID:0x%x advType:0x%x minPayloadSize:%d buffEntries:%d created:%{public}s enabled:%{public}s expectedEntries:%d statusMask:0x%x overflows:%d enabledTS:%f", buf, 0x60u);
      v2 = qword_100BCE918;
    }

    ++v3;
    v4 += 544;
  }

  while (v4);
}

void sub_1007B0C38(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    if (a3)
    {
      v6 = [NSData dataWithBytes:a3 length:16];
      [*(a1 + 2112) setObject:v6 forKeyedSubscript:v5];
    }

    else if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100874598();
    }
  }

  else if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
  {
    sub_1008722CC();
  }
}

void sub_1007B0D18(uint64_t a1, unsigned __int8 *a2)
{
  v3 = a2 + 1;
  v4 = *(a1 + 2112);
  v5 = sub_100063D0C((a2[1] << 40) | (a2[2] << 32) | (a2[3] << 24) | (a2[4] << 16) | (a2[5] << 8) | a2[6] | (*a2 << 48));
  [v4 removeObjectForKey:v5];

  if (qword_100B508F0 != -1)
  {
    sub_100874548();
  }

  LODWORD(v15) = *v3;
  WORD2(v15) = *(v3 + 2);
  v6 = sub_1000E6554(off_100B508E8, &v15, 1);
  if (v6)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    if (!sub_1000DFC04(v6, &v15))
    {
      goto LABEL_32;
    }

    v7 = v15;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3);
    if (v8 < 4)
    {
      goto LABEL_32;
    }

    v9 = (v15 + 72);
    if (*(v15 + 95) < 0)
    {
      if (*(v15 + 80) <= 1uLL)
      {
        goto LABEL_14;
      }

      v9 = *v9;
    }

    else if (*(v15 + 95) <= 1u)
    {
      goto LABEL_14;
    }

    v10 = [NSString stringWithUTF8String:v9];
    if ([v10 length])
    {
      [*(a1 + 2112) removeObjectForKey:v10];
    }

    v7 = v15;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3);
LABEL_14:
    if (v8 < 9)
    {
      goto LABEL_32;
    }

    v11 = (v7 + 192);
    if (*(v7 + 215) < 0)
    {
      if (*(v7 + 200) <= 1uLL)
      {
        goto LABEL_23;
      }

      v11 = *v11;
    }

    else if (*(v7 + 215) <= 1u)
    {
      goto LABEL_23;
    }

    v12 = [NSString stringWithUTF8String:v11];
    if ([v12 length])
    {
      [*(a1 + 2112) removeObjectForKey:v12];
    }

    v7 = v15;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3);
LABEL_23:
    if (v8 >= 0xA)
    {
      v13 = (v7 + 216);
      if ((*(v7 + 239) & 0x80000000) == 0)
      {
        if (*(v7 + 239) <= 1u)
        {
          goto LABEL_32;
        }

LABEL_29:
        v14 = [NSString stringWithUTF8String:v13];
        if ([v14 length])
        {
          [*(a1 + 2112) removeObjectForKey:v14];
        }

        goto LABEL_32;
      }

      if (*(v7 + 224) > 1uLL)
      {
        v13 = *v13;
        goto LABEL_29;
      }
    }

LABEL_32:
    v18 = &v15;
    sub_1000161FC(&v18);
  }
}

void sub_1007B0F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1000161FC(&a12);
  _Unwind_Resume(a1);
}

void sub_1007B0FB8(uint64_t a1)
{
  v1 = 0;
  v27 = a1 + 2392;
  v2 = 1;
  do
  {
    v3 = v2;
    v4 = v27 + 176 * v1;
    v5 = *(v4 + 88);
    if (v5)
    {
      v29 = v2;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v34 = v5 / 0x14;
      v33 = v5 >> 2;
      v32 = v5 >> 1;
      v31 = (3 * v5) >> 2;
      v30 = 19 * v5 / 0x14;
      v28 = v4;
      v14 = v4 + 8;
      v15 = qword_100BCE918;
      v16 = 10;
      do
      {
        v35 = v12;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(v14 + 4 * v6);
          *buf = 67109376;
          v37 = v6;
          v38 = 1024;
          v39 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "statedump: \tBLE Scan Configuration Count Bucket %d Count: %u", buf, 0xEu);
          v15 = qword_100BCE918;
        }

        v18 = *(v14 + 4 * v6);
        v12 = v35 + ((v16 * v18) >> 1);
        v13 += v18;
        if (v11)
        {
          v19 = 0;
        }

        else
        {
          v19 = v13 >= v34;
        }

        if (v19)
        {
          v11 = v6;
        }

        if (v10)
        {
          v20 = 0;
        }

        else
        {
          v20 = v13 >= v33;
        }

        if (v20)
        {
          v10 = v6;
        }

        if (v9)
        {
          v21 = 0;
        }

        else
        {
          v21 = v13 >= v32;
        }

        if (v21)
        {
          v9 = v6;
        }

        if (v8)
        {
          v22 = 0;
        }

        else
        {
          v22 = v13 >= v31;
        }

        if (v22)
        {
          v8 = v6;
        }

        if (v7)
        {
          v23 = 0;
        }

        else
        {
          v23 = v13 >= v30;
        }

        if (v23)
        {
          v7 = v6;
        }

        ++v6;
        v16 += 20;
      }

      while (v6 != 20);
      *(v28 + 138) = 10 * v11 + 5;
      *(v28 + 140) = 10 * v10 + 5;
      *(v28 + 142) = 10 * v9 + 5;
      *(v28 + 144) = 10 * v8 + 5;
      *(v28 + 146) = 10 * v7 + 5;
      v24 = *(v28 + 88);
      *(v28 + 136) = v12 / v24;
      v25 = *(v28 + 148);
      if (v25)
      {
        *(v28 + 156) = *(v28 + 152) / v25;
      }

      v26 = *(v28 + 160);
      v3 = v29;
      if (v26)
      {
        *(v28 + 168) = *(v28 + 164) / v26;
      }

      *(v28 + 100) = 100 * *(v28 + 96) / v24;
      *(v28 + 108) = 100 * *(v28 + 104) / v24;
    }

    v2 = 0;
    v1 = 1;
  }

  while ((v3 & 1) != 0);
}

void sub_1007B1248(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Send BLE Scan Configuration Daily Stat for Metric", buf, 2u);
  }

  sub_1007B0FB8(a1);
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = objc_opt_new();
    v7 = v6;
    if (v5)
    {
      v8 = @"ScreenOff";
    }

    else
    {
      v8 = @"ScreenOn";
    }

    [v6 setObject:v8 forKeyedSubscript:@"ScreenState"];
    v9 = a1 + 2392 + 176 * v3;
    v10 = [NSNumber numberWithUnsignedInt:*(v9 + 88)];
    [v7 setObject:v10 forKeyedSubscript:@"ScanConfigCount"];

    v11 = [NSNumber numberWithUnsignedInt:*(v9 + 92)];
    [v7 setObject:v11 forKeyedSubscript:@"ScanConfigCountHasParamsUpdate"];

    v12 = [NSNumber numberWithUnsignedChar:*(v9 + 100)];
    [v7 setObject:v12 forKeyedSubscript:@"ScanConfigPercentageNeedFWScanRestart"];

    v13 = [NSNumber numberWithUnsignedChar:*(v9 + 108)];
    [v7 setObject:v13 forKeyedSubscript:@"ScanConfigPercentageNeedNoFWScanRestart"];

    v14 = [NSNumber numberWithUnsignedInt:*(v9 + 124)];
    [v7 setObject:v14 forKeyedSubscript:@"ScanConfigCountHasMatchingRuleRequested"];

    v15 = [NSNumber numberWithUnsignedInt:*(v9 + 120)];
    [v7 setObject:v15 forKeyedSubscript:@"ScanConfigCountHasMatchingAddressRequested"];

    v16 = [NSNumber numberWithUnsignedInt:*(v9 + 116)];
    [v7 setObject:v16 forKeyedSubscript:@"ScanConfigCountHasPCFRequested"];

    v17 = [NSNumber numberWithUnsignedInt:*(v9 + 112)];
    [v7 setObject:v17 forKeyedSubscript:@"ScanConfigCountHasZoneRequested"];

    v18 = [NSNumber numberWithUnsignedInt:*(v9 + 128)];
    [v7 setObject:v18 forKeyedSubscript:@"ScanConfigCountHasAdvMatchBufRequested"];

    v19 = [NSNumber numberWithUnsignedShort:*(v9 + 132)];
    [v7 setObject:v19 forKeyedSubscript:@"ScanConfigTimeMin"];

    v20 = [NSNumber numberWithUnsignedShort:*(v9 + 134)];
    [v7 setObject:v20 forKeyedSubscript:@"ScanConfigTimeMax"];

    v21 = [NSNumber numberWithUnsignedShort:*(v9 + 136)];
    [v7 setObject:v21 forKeyedSubscript:@"ScanConfigTimeAvg"];

    v22 = [NSNumber numberWithUnsignedShort:*(v9 + 138)];
    [v7 setObject:v22 forKeyedSubscript:@"ScanConfigTimePercentile5"];

    v23 = [NSNumber numberWithUnsignedShort:*(v9 + 140)];
    [v7 setObject:v23 forKeyedSubscript:@"ScanConfigTimePercentile25"];

    v24 = [NSNumber numberWithUnsignedShort:*(v9 + 142)];
    [v7 setObject:v24 forKeyedSubscript:@"ScanConfigTimePercentile50"];

    v25 = [NSNumber numberWithUnsignedShort:*(v9 + 144)];
    [v7 setObject:v25 forKeyedSubscript:@"ScanConfigTimePercentile75"];

    v26 = [NSNumber numberWithUnsignedShort:*(v9 + 146)];
    [v7 setObject:v26 forKeyedSubscript:@"ScanConfigTimePercentile95"];

    v27 = [NSNumber numberWithUnsignedShort:*(v9 + 156)];
    [v7 setObject:v27 forKeyedSubscript:@"ScanConfigTimeAvgHeySiriUseCase"];

    v28 = [NSNumber numberWithUnsignedInt:*(v9 + 148)];
    [v7 setObject:v28 forKeyedSubscript:@"ScanConfigCountHeySiriUseCase"];

    v29 = [NSNumber numberWithUnsignedShort:*(v9 + 168)];
    [v7 setObject:v29 forKeyedSubscript:@"ScanConfigTimeAvgSharingUseCase"];

    v30 = [NSNumber numberWithUnsignedInt:*(v9 + 160)];
    [v7 setObject:v30 forKeyedSubscript:@"ScanConfigCountSharingUseCase"];

    v33 = sub_10000F034(v31, v32);
    (*(*v33 + 328))(v33, v7);

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
  sub_10079CA64(a1);
}

__n128 sub_1007B1794(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 2780;
  v5 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Get BLE Scan Stat for Metric", v24, 2u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v7 = *(a1 + 2760);
  v8 = ((Current - v7) * 1000.0);
  if (Current < v7)
  {
    v8 = 0;
  }

  *a2 = v8;
  *(a2 + 4) = *v4;
  *(a2 + 20) = *(v4 + 16);
  *(a2 + 36) = *(v4 + 32);
  *(a2 + 52) = *(a1 + 2768);
  *(a2 + 60) = *(a1 + 2776);
  v9 = vdupq_n_s64(0x408F400000000000uLL);
  v10 = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(*(v4 + 84), v9)), vcvtq_u64_f64(vmulq_f64(*(v4 + 100), v9)));
  *(a2 + 64) = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(*(v4 + 52), v9)), vcvtq_u64_f64(vmulq_f64(*(v4 + 68), v9)));
  *(a2 + 80) = v10;
  v11 = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(*(v4 + 148), v9)), vcvtq_u64_f64(vmulq_f64(*(v4 + 164), v9)));
  *(a2 + 96) = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(*(v4 + 116), v9)), vcvtq_u64_f64(vmulq_f64(*(v4 + 132), v9)));
  *(a2 + 112) = v11;
  v12 = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(*(v4 + 212), v9)), vcvtq_u64_f64(vmulq_f64(*(v4 + 228), v9)));
  *(a2 + 128) = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(*(v4 + 180), v9)), vcvtq_u64_f64(vmulq_f64(*(v4 + 196), v9)));
  *(a2 + 144) = v12;
  v14 = *(v4 + 244);
  v13 = (v4 + 244);
  v15 = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(v14, v9)), vcvtq_u64_f64(vmulq_f64(v13[1], v9)));
  v16 = v13[2];
  v17 = v13[3];
  v13 += 2;
  *(a2 + 160) = v15;
  *(a2 + 176) = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(v16, v9)), vcvtq_u64_f64(vmulq_f64(v17, v9)));
  v18 = v13[2];
  v19 = v13[3];
  v13 += 2;
  v20 = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(v18, v9)), vcvtq_u64_f64(vmulq_f64(v19, v9)));
  v21 = v13[2];
  v22 = v13[3];
  *(a2 + 192) = v20;
  *(a2 + 208) = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(v21, v9)), vcvtq_u64_f64(vmulq_f64(v22, v9)));
  *(a2 + 224) = vmovn_s64(vcvtq_u64_f64(vmulq_f64(*(a1 + 3152), v9)));
  sub_10079CB54(a1);
  return result;
}

void sub_1007B19B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007B1F54;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

void sub_1007B1B10(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 12);
        v3 -= 96;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_1007B1B74(uint64_t a1, __int128 **a2, __int128 **a3, char a4, char a5)
{
  *a1 = a4 & 1;
  *(a1 + 1) = (a4 & 2) != 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = a5;
  sub_10000CB74((a1 + 8), a2);
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 48) = 0;
  sub_10000CB74((a1 + 56), a3);
  *(a1 + 145) = 0;
  *(a1 + 148) = 0;
  *(a1 + 166) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 170) = 0;
  *(a1 + 174) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 200) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 236) = 0;
  *(a1 + 228) = 0;
  *(a1 + 237) = 257;
  *(a1 + 239) = 0;
  *(a1 + 243) = 8;
  *(a1 + 320) = 256;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 322) = 0;
  *(a1 + 326) = 1;
  *(a1 + 336) = 0;
  *(a1 + 327) = 0;
  *(a1 + 359) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 367) = 1;
  *(a1 + 368) = 0;
  *(a1 + 448) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = a1 + 440;
  *(a1 + 456) = 1;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 464) = 0;
  *(a1 + 560) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 496) = 0u;
  v7 = +[NSMutableArray array];
  v8 = *(a1 + 112);
  *(a1 + 112) = v7;

  *(a1 + 4) = 0;
  v9 = +[NSSet set];
  v10 = *(a1 + 176);
  *(a1 + 176) = v9;

  sub_10000CEDC(a1 + 32, *(a1 + 40));
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = a1 + 40;
  return a1;
}

void sub_1007B1D2C(_Unwind_Exception *a1)
{
  sub_10000CEDC(v2, *v3);
  v5 = *(v1 + 8);
  if (v5)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007B1DF4(uint64_t a1)
{
  sub_10004B61C(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1007B1E34(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = &off_100AE0A78;
  a1[1] = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }

  v6 = *(a3 + 8);
  a1[2] = &off_100AE0A78;
  a1[3] = v6;
  if (v6)
  {
    sub_10000C69C(v6);
  }

  return a1;
}

void sub_1007B1EBC(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[1];
  if (v4)
  {
    sub_10000C808(v4);
  }

  _Unwind_Resume(exception_object);
}
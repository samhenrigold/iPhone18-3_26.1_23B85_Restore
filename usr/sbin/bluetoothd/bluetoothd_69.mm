_BYTE *sub_1004E73FC(uint64_t a1)
{
  v34 = 0;
  sub_1000216B4(&v34);
  if (sub_1002D359C())
  {
    if (sub_1002D9264())
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_100839CE8();
      }
    }

    else
    {
      *__p = *&off_100AFA528;
      v31 = *&off_100AFA538;
      v32 = *&off_100AFA548;
      v33 = sub_1004E7F50;
      sub_1002B926C(__p);
      sub_100022214(&v34);
      v29[0] = 0;
      v29[1] = 0;
      sub_100007F88(v29, a1 + 40);
      __p[0] = 0;
      __p[1] = 0;
      *&v31 = 0;
      sub_100007F20(__p, (a1 + 360));
      *(a1 + 368) = *(a1 + 360);
      *(a1 + 32) = 1;
      v2 = __p[0];
      if (__p[0] != __p[1])
      {
        v3 = 0;
        v4 = 0;
        while (1)
        {
          v5 = *v2;
          if (sub_1004E7FE0(a1, *v2, 0))
          {
            if (v5 == *(a1 + 112) || v5 == *(a1 + 128))
            {
              if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
              {
                sub_100839D1C();
              }

              *(a1 + 32) = 0;
              goto LABEL_68;
            }

            v6 = qword_100BCE910;
            if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
            {
              sub_1006E3698(v5, &src);
              v7 = (src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &src : src.__r_.__value_.__r.__words[0];
              LODWORD(buf) = 136446210;
              *(&buf + 4) = v7;
              _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to publish service %{public}s!", &buf, 0xCu);
              if (SHIBYTE(src.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(src.__r_.__value_.__l.__data_);
              }
            }
          }

          else if (v2 == __p[0])
          {
            v3 = **(v5 + 8);
          }

          else
          {
            v4 = *(v5 + 48);
          }

          if (++v2 == __p[1])
          {
            goto LABEL_22;
          }
        }
      }

      v4 = 0;
      v3 = 0;
LABEL_22:
      v28 = 0;
      v8 = sub_10000E92C();
      if ((*(*v8 + 8))(v8))
      {
        v9 = sub_10000E92C();
        sub_100007E30(&src, "CATT");
        sub_100007E30(&buf, "DisableSdp");
        (*(*v9 + 72))(v9, &src, &buf, &v28);
        if (v42 < 0)
        {
          operator delete(buf);
        }

        if (SHIBYTE(src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(src.__r_.__value_.__l.__data_);
        }
      }

      if ((v28 & 1) == 0)
      {
        sub_1000618AC(&v34);
        sub_1001BCEBC(v3, v4);
        sub_100022214(&v34);
      }

      if (*(*(a1 + 128) + 48) <= *(*(a1 + 112) + 48) && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
      {
        sub_100839DA8();
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      if (qword_100B508C0 != -1)
      {
        sub_100839DE4();
      }

      v10 = sub_10009DA04(off_100B508B8);
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v39 count:16];
      if (v11)
      {
        v12 = *v25;
        do
        {
          v13 = 0;
          do
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v24 + 1) + 8 * v13);
            if (qword_100B508D0 != -1)
            {
              sub_100839E0C();
            }

            if (sub_100787304(off_100B508C8, v14))
            {
              memset(&src, 0, 20);
              sub_10004DFB4(&src, v14);
              LOWORD(src.__r_.__value_.__r.__words[2]) = *(*(a1 + 128) + 48) + 1;
              WORD1(src.__r_.__value_.__r.__words[2]) = -1;
              sub_1004E8F80((a1 + 336), &src);
              v15 = qword_100BCE910;
              if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v14;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Queueing services changed notification for LE device %{public}@", &buf, 0xCu);
              }
            }

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v10 countByEnumeratingWithState:&v24 objects:v39 count:16];
        }

        while (v11);
      }

      memset(&src, 0, sizeof(src));
      if (qword_100B50F88 != -1)
      {
        sub_100839E34();
      }

      sub_10009DB3C(off_100B50F80, &src.__r_.__value_.__l.__data_);
      size = src.__r_.__value_.__l.__size_;
      for (i = src.__r_.__value_.__r.__words[0]; i != size; ++i)
      {
        v18 = *i;
        if (sub_1005399A0(*i))
        {
          *uu = 0;
          v38 = 0;
          if (qword_100B508D0 != -1)
          {
            sub_100839E0C();
          }

          sub_1000498D4(off_100B508C8, (v18[128] << 40) | (v18[129] << 32) | (v18[130] << 24) | (v18[131] << 16) | (v18[132] << 8) | v18[133], 1u, 0, 0, 0, uu);
          if (uuid_is_null(uu))
          {
            v19 = qword_100BCE910;
            if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
            {
              sub_1000E5A58(v18, &buf);
              v22 = v42 >= 0 ? &buf : buf;
              *v35 = 136446210;
              v36 = v22;
              _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "Failed to start tracking tracking a UUID for device %{public}s", v35, 0xCu);
              if (v42 < 0)
              {
                operator delete(buf);
              }
            }
          }

          buf = 0uLL;
          v41 = 0;
          uuid_copy(&buf, uu);
          LOWORD(v41) = *(*(a1 + 128) + 48) + 1;
          HIWORD(v41) = -1;
          sub_1004E8F80((a1 + 336), &buf);
          v20 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            v21 = sub_10004DF60(uu);
            *v35 = 138543362;
            v36 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Queueing services changed notification for Classic device %{public}@", v35, 0xCu);
          }
        }
      }

      sub_1004E8FF0(a1);
      if (src.__r_.__value_.__r.__words[0])
      {
        src.__r_.__value_.__l.__size_ = src.__r_.__value_.__r.__words[0];
        operator delete(src.__r_.__value_.__l.__data_);
      }

LABEL_68:
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      sub_1000088CC(v29);
    }
  }

  return sub_10002249C(&v34);
}

void sub_1004E7B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 137) < 0)
  {
    operator delete(*(v35 - 160));
  }

  if (*(v35 - 105) < 0)
  {
    operator delete(*(v35 - 128));
  }

  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  sub_1000088CC(&a23);
  sub_10002249C(&a35);
  _Unwind_Resume(a1);
}

BOOL sub_1004E7BD4(__n128 *a1)
{
  v4 = 0uLL;
  v5 = 0;
  v2 = *a1;
  v3 = a1[1].n128_u32[0];
  sub_10000D03C(&v4, &v2);
  v2 = xmmword_1008A4A80;
  v3 = 0;
  if (sub_10004E15C(&v4, &v2))
  {
    return 1;
  }

  v2 = xmmword_1008A4A94;
  v3 = 0;
  return sub_10004E15C(&v4, &v2);
}

uint64_t sub_1004E7FE0(uint64_t a1, uint64_t a2, int a3)
{
  v82 = 0;
  v83 = a2;
  v80 = 0;
  v81 = 0;
  sub_100007F20(&v80, (a2 + 104));
  __p = 0;
  v78 = 0;
  v79 = 0;
  sub_100007F20(&__p, (a2 + 136));
  v6 = (v81 - v80) >> 3;
  for (i = __p; i != v78; i += 8)
  {
    sub_100007F20(&buf, (*i + 104));
    v8 = buf;
    if (buf)
    {
      *(&buf + 1) = buf;
      operator delete(v8.n128_u64[0]);
    }

    v6 += ((v8.n128_u64[1] - v8.n128_u64[0]) >> 3) + 2;
  }

  v76[0] = 0;
  v76[1] = 0;
  sub_100007F88(v76, a1 + 40);
  v75 = 0;
  v9 = sub_10000E92C();
  sub_100007E30(&buf, "GATT");
  sub_100007E30(&v92, "DUMMY_DIS");
  if ((*(*v9 + 72))(v9, &buf, &v92, &v75) && (v75 & 1) == 0)
  {
    v98 = *(v83 + 72);
    v99 = *(v83 + 88);
    sub_10000D03C(&v91, &v98);
    v98 = xmmword_1008A4BC0;
    v99 = 0;
    v11 = sub_10004E15C(v10, &v98);
    if (v94 < 0)
    {
      operator delete(v92);
    }

    if (v97 < 0)
    {
      operator delete(buf);
      if (!v11)
      {
        goto LABEL_20;
      }
    }

    else if (!v11)
    {
      goto LABEL_20;
    }

    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100839E5C();
    }

    v12 = 905;
    goto LABEL_36;
  }

  if (v94 < 0)
  {
    operator delete(v92);
  }

  if (v97 < 0)
  {
    operator delete(buf);
  }

LABEL_20:
  if ((*(a1 + 32) & 1) == 0)
  {
    v16 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v17 = "publish";
      if (a3)
      {
        v17 = "republish";
      }

      LODWORD(buf) = 136446210;
      *(&buf + 4) = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Stack not started during attempt to %{public}s LE service", &buf, 0xCu);
    }

    if (a3)
    {
      v12 = 111;
    }

    else
    {
      sub_1000C2484(a1 + 360, &v83);
      v12 = 0;
    }

LABEL_36:
    sub_1000088CC(v76);
    goto LABEL_37;
  }

  v74 = 0;
  sub_1000216B4(&v74);
  v13 = *(v83 + 8);
  v14 = *(v83 + 96);
  buf = *(v83 + 72);
  v96 = *(v83 + 88);
  sub_10000D03C(&v92, &buf);
  buf = v92;
  v96 = v93;
  if (sub_1002D92E0(v13, v14, &buf, v6))
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100839E90();
    }

    v15 = 0;
    goto LABEL_25;
  }

  for (j = v80; j != v81; j += 8)
  {
    v20 = sub_1004E98F0(a1, *(*j + 104));
    if (!v20)
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_100839F70();
      }

      v12 = 904;
      goto LABEL_122;
    }

    if (sub_1002D9470(*(*j + 8), **(v83 + 8), *(v20 + 8)))
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_100839F00();
      }

      v12 = 1;
LABEL_122:
      sub_1002D945C(*(v83 + 8));
      v15 = 0;
      goto LABEL_26;
    }

    if (*(*j + 72) == **(v20 + 8))
    {
      *(*j + 96) = v20;
    }
  }

  v21 = __p;
  if (__p == v78)
  {
    v15 = 0;
LABEL_113:
    sub_100022214(&v74);
    if ((a3 & 1) == 0)
    {
      sub_1000C2484(a1 + 360, &v83);
    }

    sub_1004E9DB8(a1, 0, **(v83 + 8), *(*(v83 + 8) + 24));
    sub_10002249C(&v74);
    v12 = 0;
    goto LABEL_27;
  }

  v15 = 0;
  v71 = a3;
  while (1)
  {
    v22 = *v21;
    v23 = *(*v21 + 96);
    sub_100007F20(&buf, (*v21 + 104));
    v72 = v21;
    if (v15)
    {
      operator delete(v15);
    }

    v24 = *(&buf + 1);
    v15 = buf;
    buf = *(v22 + 76);
    v96 = *(v22 + 92);
    sub_10000D03C(&v92, &buf);
    buf = xmmword_1008A4A80;
    v96 = 0;
    if (sub_10004E15C(v25, &buf) || (buf = *(v22 + 76), v96 = *(v22 + 92), sub_10000D03C(&v98, &buf), buf = xmmword_1008A4A94, v96 = 0, sub_10004E15C(v26, &buf)) || (buf = *(v22 + 76), v96 = *(v22 + 92), sub_10000D03C(&v91, &buf), buf = xmmword_1008A4AA8, v96 = 0, sub_10004E15C(v27, &buf)) || (buf = *(v22 + 76), v96 = *(v22 + 92), sub_10000D03C(&v90, &buf), buf = xmmword_1008A4ABC, v96 = 0, sub_10004E15C(&v90, &buf)) || (buf = *(v22 + 76), v96 = *(v22 + 92), sub_10000D03C(&v89, &buf), buf = xmmword_1008A4AD0, v96 = 0, sub_10004E15C(&v89, &buf)) || (buf = *(v22 + 76), v96 = *(v22 + 92), sub_10000D03C(&v88, &buf), buf = xmmword_1008A4AE4, v96 = 0, sub_10004E15C(&v88, &buf)) || (buf = *(v22 + 76), v96 = *(v22 + 92), sub_10000D03C(&v87, &buf), buf = xmmword_1008A4AF8, v96 = 0, sub_10004E15C(&v87, &buf)) || (buf = *(v22 + 76), v96 = *(v22 + 92), sub_10000D03C(&v86, &buf), buf = xmmword_1008A4B0C, v96 = 0, sub_10004E15C(&v86, &buf)) || (buf = *(v22 + 76), v96 = *(v22 + 92), sub_10000D03C(&v85, &buf), buf = xmmword_1008A4B20, v96 = 0, sub_10004E15C(&v85, &buf)) || (buf = *(v22 + 76), v96 = *(v22 + 92), sub_10000D03C(&v84, &buf), buf = xmmword_1008A4B34, v96 = 0, sub_10004E15C(&v84, &buf)))
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        buf = *(v22 + 76);
        v96 = *(v22 + 92);
        sub_10000D03C(&v92, &buf);
        sub_10003B85C(v70, &buf);
        sub_10083A248();
      }

      sub_1002D945C(*(v83 + 8));
      v12 = 905;
      goto LABEL_26;
    }

    if (!sub_10000D26C(v23 + 72))
    {
      if (*(v22 + 72) != 2)
      {
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_100839FA4();
        }

        sub_1002D945C(*(v83 + 8));
        v12 = 910;
        goto LABEL_26;
      }

      if ((*(*(v23 + 8) + 26) & 0x2A) != 0)
      {
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_100839FD8();
        }

        sub_1002D945C(*(v83 + 8));
        v12 = 911;
        goto LABEL_26;
      }
    }

    if (v15 == v24)
    {
      v37 = *(v22 + 72);
      if (v37 < 0)
      {
LABEL_85:
        v38 = v15;
        goto LABEL_86;
      }

      if ((*(v22 + 72) & 1) == 0)
      {
        if ((*(v22 + 72) & 0x30) == 0)
        {
          goto LABEL_103;
        }

LABEL_101:
        v46 = v15;
        goto LABEL_102;
      }

LABEL_93:
      v42 = v15;
      goto LABEL_94;
    }

    v28 = 0;
    v29 = 0;
    v30 = v15;
    do
    {
      v31 = *(*v30 + 8);
      v32 = *(v31 + 20);
      buf = *(v31 + 4);
      v96 = v32;
      sub_10000D03C(&v92, &buf);
      buf = xmmword_1008A4AE4;
      v96 = 0;
      if (sub_10004E15C(v33, &buf))
      {
        if (!v28)
        {
          v28 = *v30;
          goto LABEL_74;
        }

        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_10083A040();
        }

LABEL_133:
        sub_1002D945C(*(v83 + 8));
        v12 = 906;
        goto LABEL_26;
      }

      v34 = *(*v30 + 8);
      v35 = *(v34 + 20);
      buf = *(v34 + 4);
      v96 = v35;
      sub_10000D03C(&v92, &buf);
      buf = xmmword_1008A4B20;
      v96 = 0;
      if (sub_10004E15C(v36, &buf))
      {
        if (v29)
        {
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
          {
            sub_10083A00C();
          }

          goto LABEL_133;
        }

        v29 = *v30;
      }

LABEL_74:
      v30 += 8;
    }

    while (v30 != v24);
    v37 = *(v22 + 72);
    if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_87;
    }

    if (v15 == v24)
    {
      goto LABEL_85;
    }

    v38 = v15;
    while (1)
    {
      v39 = *(*v38 + 8);
      v40 = *(v39 + 20);
      buf = *(v39 + 4);
      v96 = v40;
      sub_10000D03C(&v92, &buf);
      buf = xmmword_1008A4AD0;
      v96 = 0;
      if (sub_10004E15C(v41, &buf))
      {
        break;
      }

      v38 += 8;
      if (v38 == v24)
      {
        v38 = v24;
        break;
      }
    }

LABEL_86:
    if (v38 == v24)
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_10083A074();
      }

      sub_1002D945C(*(v83 + 8));
      v12 = 907;
      goto LABEL_26;
    }

LABEL_87:
    if ((v37 & 1) == 0)
    {
      goto LABEL_95;
    }

    if (v15 == v24)
    {
      goto LABEL_93;
    }

    v42 = v15;
    while (1)
    {
      v43 = *(*v42 + 8);
      v44 = *(v43 + 20);
      buf = *(v43 + 4);
      v96 = v44;
      sub_10000D03C(&v92, &buf);
      buf = xmmword_1008A4B0C;
      v96 = 0;
      if (sub_10004E15C(v45, &buf))
      {
        break;
      }

      v42 += 8;
      if (v42 == v24)
      {
        v42 = v24;
        break;
      }
    }

LABEL_94:
    if (v42 == v24)
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_10083A0A8();
      }

      sub_1002D945C(*(v83 + 8));
      v12 = 908;
      goto LABEL_26;
    }

LABEL_95:
    if ((v37 & 0x30) == 0)
    {
      goto LABEL_103;
    }

    if (v15 == v24)
    {
      goto LABEL_101;
    }

    v46 = v15;
    while (1)
    {
      v47 = *(*v46 + 8);
      v48 = *(v47 + 20);
      buf = *(v47 + 4);
      v96 = v48;
      sub_10000D03C(&v92, &buf);
      buf = xmmword_1008A4AF8;
      v96 = 0;
      if (sub_10004E15C(v49, &buf))
      {
        break;
      }

      v46 += 8;
      if (v46 == v24)
      {
        v46 = v24;
        break;
      }
    }

LABEL_102:
    if (v46 == v24)
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_10083A0DC();
      }

      sub_1002D945C(*(v83 + 8));
      v12 = 909;
      goto LABEL_26;
    }

LABEL_103:
    v73 = v15;
    v50 = **(v83 + 8);
    v51 = *(v22 + 8);
    v52 = *(v22 + 72);
    v53 = *(*(v22 + 96) + 8);
    buf = *(v22 + 76);
    v96 = *(v22 + 92);
    sub_10000D03C(&v92, &buf);
    buf = v92;
    v96 = v93;
    if (sub_1002D95A0(v50, v51, v52, (((v24 - v73) >> 3) + 1), v53, &buf, sub_1004E9960, sub_1004E9A18))
    {
      v15 = v73;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_10083A168();
      }

      goto LABEL_128;
    }

    v54 = v73;
    if (v73 != v24)
    {
      break;
    }

LABEL_110:
    v15 = v73;
    v21 = v72 + 8;
    LOBYTE(a3) = v71;
    if (v72 + 8 == v78)
    {
      goto LABEL_113;
    }
  }

  while (1)
  {
    v55 = *v54;
    v56 = *(*v54 + 8);
    v57 = *(v56 + 20);
    buf = *(v56 + 4);
    v96 = v57;
    sub_10000D03C(&v92, &buf);
    buf = xmmword_1008A4AF8;
    v96 = 0;
    if (sub_10004E15C(v58, &buf) || (v59 = *(v55 + 8), v60 = *(v59 + 20), buf = *(v59 + 4), v96 = v60, sub_10000D03C(&v98, &buf), buf = xmmword_1008A4B0C, v96 = 0, v62 = sub_10004E15C(v61, &buf), v63 = sub_1004E9A18, v64 = sub_1004E9960, v62))
    {
      v63 = sub_1004E9C44;
      v64 = sub_1004E9B8C;
    }

    v65 = v64;
    v66 = *(v55 + 8);
    v67 = **(v22 + 8);
    v68 = *(v66 + 26);
    v69 = *(v66 + 4);
    v96 = *(v66 + 20);
    buf = v69;
    sub_10000D03C(&v92, &buf);
    buf = v92;
    v96 = v93;
    if (sub_1002D9808(v66, v67, v68, &buf, v65, v63))
    {
      break;
    }

    v54 += 8;
    if (v54 == v24)
    {
      goto LABEL_110;
    }
  }

  v15 = v73;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_10083A1D8();
  }

LABEL_128:
  sub_1002D945C(*(v83 + 8));
LABEL_25:
  v12 = 1;
LABEL_26:
  sub_10002249C(&v74);
LABEL_27:
  sub_1000088CC(v76);
  if (v15)
  {
    operator delete(v15);
  }

LABEL_37:
  if (__p)
  {
    v78 = __p;
    operator delete(__p);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  return v12;
}

void sub_1004E8E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  sub_10002249C(&a14);
  sub_1000088CC(&a16);
  if (v22)
  {
    operator delete(v22);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004E8F80(uint64_t *a1, unsigned __int8 *src)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_1004F2A38(a1, src);
  }

  else
  {
    uuid_copy(a1[1], src);
    *(v4 + 16) = *(src + 4);
    result = v4 + 20;
    a1[1] = v4 + 20;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1004E8FF0(uint64_t a1)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 40);
  v1 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: Local database:", &buf, 2u);
  }

  for (i = *(a1 + 360); i != *(a1 + 368); ++i)
  {
    v3 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      sub_1006E3698(*i, &buf);
      p_buf = &buf;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      LODWORD(v25.__r_.__value_.__l.__data_) = 136446210;
      *(v25.__r_.__value_.__r.__words + 4) = p_buf;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", &v25, 0xCu);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    memset(&buf, 0, sizeof(buf));
    sub_100007F20(&buf, *i + 13);
    size = buf.__r_.__value_.__l.__size_;
    for (j = buf.__r_.__value_.__r.__words[0]; j != size; ++j)
    {
      v7 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        sub_1006E3698(*j, &v25);
        v8 = &v25;
        if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v8 = v25.__r_.__value_.__r.__words[0];
        }

        LODWORD(v24.__r_.__value_.__l.__data_) = 136446210;
        *(v24.__r_.__value_.__r.__words + 4) = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", &v24, 0xCu);
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        size = buf.__r_.__value_.__l.__size_;
      }
    }

    memset(&v25, 0, sizeof(v25));
    sub_100007F20(&v25, *i + 17);
    v9 = v25.__r_.__value_.__r.__words[0];
    if (v25.__r_.__value_.__r.__words[0] != v25.__r_.__value_.__l.__size_)
    {
      do
      {
        v10 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          sub_1006E3698(*v9, &v24);
          if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v11 = &v24;
          }

          else
          {
            v11 = v24.__r_.__value_.__r.__words[0];
          }

          LODWORD(v21.__r_.__value_.__l.__data_) = 136446210;
          *(v21.__r_.__value_.__r.__words + 4) = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", &v21, 0xCu);
          if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v24.__r_.__value_.__l.__data_);
          }

          v10 = qword_100BCE910;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          sub_1006E3698((*v9)[12], &v24);
          v12 = (v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v24 : v24.__r_.__value_.__r.__words[0];
          LODWORD(v21.__r_.__value_.__l.__data_) = 136446210;
          *(v21.__r_.__value_.__r.__words + 4) = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", &v21, 0xCu);
          if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v24.__r_.__value_.__l.__data_);
          }
        }

        memset(&v24, 0, sizeof(v24));
        sub_100007F20(&v24, *v9 + 13);
        v13 = v24.__r_.__value_.__l.__size_;
        v14 = v24.__r_.__value_.__r.__words[0];
        if (v24.__r_.__value_.__r.__words[0] != v24.__r_.__value_.__l.__size_)
        {
          do
          {
            v15 = qword_100BCE910;
            if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
            {
              sub_1006E3698(*v14, &v21);
              if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v16 = &v21;
              }

              else
              {
                v16 = v21.__r_.__value_.__r.__words[0];
              }

              *v22 = 136446210;
              v23 = v16;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", v22, 0xCu);
              if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v21.__r_.__value_.__l.__data_);
              }

              v13 = v24.__r_.__value_.__l.__size_;
            }

            ++v14;
          }

          while (v14 != v13);
          v14 = v24.__r_.__value_.__r.__words[0];
        }

        if (v14)
        {
          v24.__r_.__value_.__l.__size_ = v14;
          operator delete(v14);
        }

        ++v9;
      }

      while (v9 != v25.__r_.__value_.__l.__size_);
      v9 = v25.__r_.__value_.__r.__words[0];
    }

    if (v9)
    {
      v25.__r_.__value_.__l.__size_ = v9;
      operator delete(v9);
    }

    if (buf.__r_.__value_.__r.__words[0])
    {
      buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  return sub_1000088CC(v20);
}

_BYTE *sub_1004E947C(uint64_t a1)
{
  v2 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "GattServer::stackWillStop enter", buf, 2u);
  }

  v22 = 0;
  sub_1000216B4(&v22);
  if (sub_1002D359C())
  {
    sub_1002D92DC();
    sub_100022214(&v22);
    *buf = 0;
    v21 = 0;
    sub_100007F88(buf, a1 + 40);
    *(a1 + 32) = 0;
    *(a1 + 344) = *(a1 + 336);
    sub_10000CEDC(a1 + 384, *(a1 + 392));
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = a1 + 392;
    sub_10008E0A0(a1 + 408, *(a1 + 416));
    *(a1 + 416) = 0;
    *(a1 + 424) = 0;
    *(a1 + 408) = a1 + 416;
    v3 = *(a1 + 464);
    v4 = *(a1 + 440);
    v5 = *(a1 + 448);
    v6 = &v4[v3 >> 8];
    if (v5 == v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = *v6 + 16 * v3;
    }

    while (1)
    {
      v8 = v5 - v4;
      if (v8)
      {
        v9 = *(a1 + 472) + *(a1 + 464);
        v10 = *(v4 + ((v9 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v9;
      }

      else
      {
        v10 = 0;
      }

      if (v7 == v10)
      {
        break;
      }

      v11 = *(v7 + 8);
      if (v11)
      {
        *(v11 + 24) = &off_100AE0A78;
        v12 = *(v11 + 32);
        if (v12)
        {
          sub_10000C808(v12);
        }

        operator delete();
      }

      v7 += 16;
      if (v7 - *v6 == 4096)
      {
        v13 = v6[1];
        ++v6;
        v7 = v13;
      }

      v4 = *(a1 + 440);
      v5 = *(a1 + 448);
    }

    *(a1 + 472) = 0;
    v14 = v8 >> 3;
    if (v14 >= 3)
    {
      do
      {
        operator delete(*v4);
        v15 = *(a1 + 448);
        v4 = (*(a1 + 440) + 8);
        *(a1 + 440) = v4;
        v14 = (v15 - v4) >> 3;
      }

      while (v14 > 2);
    }

    if (v14 == 1)
    {
      v16 = 128;
    }

    else
    {
      if (v14 != 2)
      {
LABEL_25:
        *(a1 + 480) = 0;
        [*(a1 + 488) removeAllObjects];
        [*(a1 + 496) removeAllObjects];
        [*(a1 + 504) removeAllObjects];
        sub_1004F2784(a1 + 512, *(a1 + 520));
        *(a1 + 512) = a1 + 520;
        *(a1 + 520) = 0u;
        sub_10000CEDC(a1 + 536, *(a1 + 544));
        *(a1 + 536) = a1 + 544;
        *(a1 + 544) = 0u;
        v17 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "GattServer::stackWillStop exit", v19, 2u);
        }

        sub_1000088CC(buf);
        return sub_10002249C(&v22);
      }

      v16 = 256;
    }

    *(a1 + 464) = v16;
    goto LABEL_25;
  }

  return sub_10002249C(&v22);
}

uint64_t sub_1004E9758(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 40);
  *(a1 + 104) = a2;
  return sub_1000088CC(v5);
}

void sub_1004E97A0(void *a1, __int128 *a2)
{
  v2 = a1;
  __dst = 0uLL;
  v8 = 0;
  if (*(a2 + 23) < 0)
  {
    a1 = sub_100008904(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v8 = *(a2 + 2);
  }

  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_1004E98D4;
  v4[3] = &unk_100AF6BE0;
  v4[4] = v2;
  if (SHIBYTE(v8) < 0)
  {
    sub_100008904(__p, __dst, *(&__dst + 1));
  }

  else
  {
    *__p = __dst;
    v6 = v8;
  }

  sub_10000CA94(v3, v4);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__dst);
  }
}

void sub_1004E98A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v19 - 25) < 0)
  {
    operator delete(*(v19 - 48));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004E98F0(uint64_t a1, int a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 40);
  v4 = *(a1 + 360);
  v5 = *(a1 + 368);
  while (v4 != v5)
  {
    v6 = *v4;
    if (*(*v4 + 16) == a2)
    {
      goto LABEL_6;
    }

    ++v4;
  }

  v6 = 0;
LABEL_6:
  sub_1000088CC(v8);
  return v6;
}

void sub_1004E9DB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a2;
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 40);
  v8 = *(a1 + 336);
  v9 = *(a1 + 344);
  while (v8 != v9)
  {
    memset(dst, 0, sizeof(dst));
    v25 = 0;
    uuid_copy(dst, v8);
    v10 = *(v8 + 16);
    v25 = v10;
    if (v7)
    {
      v11 = sub_10004DF60(dst);
      v12 = [v7 isEqual:v11];

      if (!v12)
      {
        goto LABEL_20;
      }

      LOWORD(v10) = v25;
      v13 = HIWORD(v25);
    }

    else
    {
      v13 = HIWORD(v10);
    }

    v14 = v10;
    if (v10 >= v5)
    {
      v14 = v5;
    }

    if (v10)
    {
      v15 = v14;
    }

    else
    {
      v15 = v5;
    }

    LOWORD(v25) = v15;
    if (v13 <= v4)
    {
      v16 = v4;
    }

    else
    {
      v16 = v13;
    }

    HIWORD(v25) = v16;
    if (*(a1 + 32) == 1)
    {
      if (qword_100B50F78 != -1)
      {
        sub_10083A29C();
      }

      v17 = qword_100B50F70;
      v18 = sub_10004DF60(dst);
      LODWORD(v17) = sub_100052A90(v17, v18);

      if (v17)
      {
        *__p = 0u;
        v21 = 0u;
        sub_10057C6A8(__p, 0);
        sub_10057C70C(__p, v5);
        sub_10057C70C(__p, v4);
        v19 = sub_10004DF60(dst);
        v23 = v19;
        [NSArray arrayWithObjects:&v23 count:1];
        objc_claimAutoreleasedReturnValue();

        operator new();
      }
    }

LABEL_20:
    v8 += 20;
  }

  sub_1000088CC(v22);
}

uint64_t sub_1004EA110(uint64_t a1, int *a2)
{
  v56[0] = 0;
  v56[1] = 0;
  sub_100007F88(v56, a1 + 40);
  v3 = sub_1004E98F0(a1, *a2);
  if (v3)
  {
    for (i = *(a1 + 360); i != *(a1 + 368); i += 8)
    {
      __p[0] = 0;
      __p[1] = 0;
      *&v54 = 0;
      sub_100007F20(__p, (*i + 104));
      v5 = __p[0];
      v6 = __p[0];
      if (__p[0] != __p[1])
      {
        while (*(*v6 + 96) != v3)
        {
          v6 += 8;
          if (v6 == __p[1])
          {
            goto LABEL_7;
          }
        }

        v8 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_1006E3698(v3, &v55);
          if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v51 = &v55;
          }

          else
          {
            v51 = v55.__r_.__value_.__r.__words[0];
          }

          *buf = 136446210;
          *&buf[4] = v51;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to unpublish service (%{public}s) as it is included by another service!", buf, 0xCu);
          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          v5 = __p[0];
          if (__p[0])
          {
LABEL_15:
            __p[1] = v5;
            operator delete(v5);
          }
        }

        else if (v5)
        {
          goto LABEL_15;
        }

        v7 = 904;
        goto LABEL_106;
      }

LABEL_7:
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    v9 = *(a1 + 384);
    if (v9 != (a1 + 392))
    {
      do
      {
        __p[0] = 0;
        if (sub_1004EA89C(a1, *(v9 + 10), __p))
        {
          v10 = __p[0] == v3;
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          if (*(a1 + 32) == 1)
          {
            v55.__r_.__value_.__s.__data_[0] = 0;
            sub_1000216B4(&v55);
            v13 = v9[6];
            v14 = *(v9 + 8);
            if (*(v9 + 44) == 1)
            {
              v13(v14, 242, 0);
            }

            else
            {
              (v13)(v14, 242, 0, 0);
            }

            sub_10002249C(&v55);
          }

          v15 = v9[1];
          v16 = v9;
          if (v15)
          {
            do
            {
              v12 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v12 = v16[2];
              v10 = *v12 == v16;
              v16 = v12;
            }

            while (!v10);
          }

          sub_10002717C((a1 + 384), v9);
          operator delete(v9);
        }

        else
        {
          v11 = v9[1];
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              v12 = v9[2];
              v10 = *v12 == v9;
              v9 = v12;
            }

            while (!v10);
          }
        }

        v9 = v12;
      }

      while (v12 != (a1 + 392));
    }

    v17 = *(a1 + 512);
    if (v17 != (a1 + 520))
    {
      do
      {
        v18 = v17[5];
        if (v18 != v17[6])
        {
          *__p = 0u;
          v54 = 0u;
          v19 = *v18;
          WORD2(__p[0]) = *(v18 + 2);
          LODWORD(__p[0]) = v19;
          v20 = *(v18 + 2);
          __p[1] = &off_100AE0A78;
          *&v54 = v20;
          if (v20)
          {
            sub_10000C69C(v20);
          }

          BYTE8(v54) = *(v18 + 24);
          v55.__r_.__value_.__r.__words[0] = 0;
          if (sub_1004EA89C(a1, __p[0], &v55) && v55.__r_.__value_.__r.__words[0] == v3)
          {
            sub_1004F2D24((a1 + 512), v17);
            __p[1] = &off_100AE0A78;
            if (v54)
            {
              sub_10000C808(v54);
            }

            break;
          }

          __p[1] = &off_100AE0A78;
          if (v54)
          {
            sub_10000C808(v54);
          }
        }

        v21 = v17[1];
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = v17[2];
            v10 = *v22 == v17;
            v17 = v22;
          }

          while (!v10);
        }

        v17 = v22;
      }

      while (v22 != (a1 + 520));
    }

    sub_1004E9DB8(a1, 0, **(v3 + 8), *(*(v3 + 8) + 24));
    if (*(a1 + 32) == 1)
    {
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      sub_1002D945C(*(v3 + 8));
      sub_10002249C(__p);
    }

    __p[0] = 0;
    __p[1] = 0;
    *&v54 = 0;
    sub_100007F20(__p, (v3 + 136));
    v23 = __p[0];
    if (__p[0] != __p[1])
    {
      v24 = (a1 + 416);
      do
      {
        v25 = *v23;
        memset(&v55, 0, sizeof(v55));
        sub_100007F20(&v55, (v25 + 104));
        v26 = v55.__r_.__value_.__r.__words[0];
        if (v55.__r_.__value_.__r.__words[0] != v55.__r_.__value_.__l.__size_)
        {
          do
          {
            v27 = *(*v26 + 8);
            v28 = *(v27 + 20);
            *buf = *(v27 + 4);
            v59 = v28;
            sub_10000D03C(&v57, buf);
            *buf = xmmword_1008A4AF8;
            v59 = 0;
            if (sub_10004E15C(&v57, buf))
            {
              v29 = *v24;
              if (*v24)
              {
                v30 = *v26;
                v31 = (a1 + 416);
                do
                {
                  v32 = v29[4];
                  v33 = v32 >= v30;
                  v34 = v32 < v30;
                  if (v33)
                  {
                    v31 = v29;
                  }

                  v29 = v29[v34];
                }

                while (v29);
                if (v31 != v24 && v30 >= v31[4])
                {
                  sub_1004F2D70((a1 + 408), v31);
                  v35 = *(a1 + 464);
                  v36 = *(a1 + 440);
                  v37 = *(a1 + 448);
                  v38 = (v36 + 8 * (v35 >> 8));
                  if (v37 == v36)
                  {
                    v39 = 0;
                  }

                  else
                  {
                    v39 = *v38 + 16 * v35;
                  }

                  v40 = (v36 + 8 * (v35 >> 8));
LABEL_75:
                  v41 = v39;
                  while (1)
                  {
                    v42 = v37 == v36 ? 0 : *(v36 + (((*(a1 + 472) + v35) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 472) + v35);
                    if (v41 == v42)
                    {
                      break;
                    }

                    v43 = *(v41 + 8);
                    if (v30 == *(v43 + 16))
                    {
                      if (v37 == v36)
                      {
                        v45 = 0;
                      }

                      else
                      {
                        v45 = *v38 + 16 * v35;
                      }

                      if (v41 != v45)
                      {
                        *(v43 + 24) = &off_100AE0A78;
                        v46 = *(v43 + 32);
                        if (v46)
                        {
                          sub_10000C808(v46);
                        }

                        operator delete();
                      }

                      break;
                    }

                    v41 += 16;
                    v39 += 16;
                    if (*v40 + 4096 == v39)
                    {
                      v44 = v40[1];
                      ++v40;
                      v39 = v44;
                      goto LABEL_75;
                    }
                  }
                }
              }
            }

            v26 += 8;
          }

          while (v26 != v55.__r_.__value_.__l.__size_);
          v26 = v55.__r_.__value_.__r.__words[0];
        }

        if (v26)
        {
          v55.__r_.__value_.__l.__size_ = v26;
          operator delete(v26);
        }

        ++v23;
      }

      while (v23 != __p[1]);
    }

    v48 = *(a1 + 360);
    v47 = *(a1 + 368);
    if (v48 != v47)
    {
      v49 = v47 - v48 - 8;
      while (*(*v48 + 16) != *a2)
      {
        v48 += 8;
        v49 -= 8;
        if (v48 == v47)
        {
          goto LABEL_103;
        }
      }

      if (v48 + 8 != v47)
      {
        memmove(v48, (v48 + 8), v49);
      }

      *(a1 + 368) = v48 + v49;
    }

LABEL_103:
    (*(*v3 + 8))(v3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v7 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_10083A2C4();
    }

    v7 = 1010;
  }

LABEL_106:
  sub_1000088CC(v56);
  return v7;
}

void sub_1004EA7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, atomic_uint *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  if (a13)
  {
    sub_10000C808(a13);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EA89C(uint64_t a1, int a2, void *a3)
{
  v28[0] = 0;
  v28[1] = 0;
  sub_100007F88(v28, a1 + 40);
  v7 = *(a1 + 360);
  if (v7 != *(a1 + 368))
  {
    while (1)
    {
      v8 = *v7;
      if (a3)
      {
        *a3 = v8;
      }

      if (*(v8 + 16) == a2)
      {
        goto LABEL_39;
      }

      __p = 0;
      v26 = 0;
      v27 = 0;
      sub_100007F20(&__p, (*v7 + 104));
      v9 = __p;
      v10 = __p;
      if (__p == v26)
      {
        break;
      }

      while (*(*v10 + 16) != a2)
      {
        v10 += 8;
        if (v10 == v26)
        {
          goto LABEL_8;
        }
      }

      v17 = 0;
      v3 = *v10;
      if (__p)
      {
        goto LABEL_31;
      }

LABEL_32:
      if (!v17)
      {
        v8 = v3;
        goto LABEL_39;
      }

      if (++v7 == *(a1 + 368))
      {
        goto LABEL_34;
      }
    }

LABEL_8:
    v22 = 0;
    v23 = 0;
    v24 = 0;
    sub_100007F20(&v22, (*v7 + 136));
    v11 = v22;
    if (v22 == v23)
    {
      v17 = 1;
      if (v22)
      {
LABEL_29:
        v23 = v11;
        operator delete(v11);
      }
    }

    else
    {
      while (1)
      {
        v12 = *v11;
        if (*(*v11 + 16) == a2)
        {
          break;
        }

        v12 = *(v12 + 96);
        if (*(v12 + 16) == a2)
        {
          break;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        sub_100007F20(&v19, (*v11 + 104));
        v13 = v19;
        if (v19 == v20)
        {
          v16 = 0;
          v15 = 1;
          if (v19)
          {
LABEL_17:
            v20 = v19;
            operator delete(v19);
          }
        }

        else
        {
          while (1)
          {
            v14 = *(*v13 + 16);
            v15 = v14 != a2;
            if (v14 == a2)
            {
              break;
            }

            v13 += 8;
            if (v13 == v20)
            {
              v16 = 0;
              if (v19)
              {
                goto LABEL_17;
              }

              goto LABEL_18;
            }
          }

          v16 = 1;
          v3 = *v13;
          if (v19)
          {
            goto LABEL_17;
          }
        }

LABEL_18:
        if (!v15)
        {
          goto LABEL_28;
        }

        v11 += 8;
        if (v11 == v23)
        {
          v16 = 8;
          goto LABEL_28;
        }
      }

      v16 = 1;
      v3 = v12;
LABEL_28:
      v11 = v22;
      v17 = (v16 & 7) == 0;
      if (v22)
      {
        goto LABEL_29;
      }
    }

    v9 = __p;
    if (!__p)
    {
      goto LABEL_32;
    }

LABEL_31:
    v26 = v9;
    operator delete(v9);
    goto LABEL_32;
  }

LABEL_34:
  if (a3 && *a3)
  {
    v8 = 0;
    *a3 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_39:
  sub_1000088CC(v28);
  return v8;
}

void sub_1004EAACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void *sub_1004EAB10(int64x2_t *a1, char *a2, uint64_t a3)
{
  v4 = a1[2].u64[0];
  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 >> 8));
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 16 * v4;
  }

  v33 = v6;
  v34 = v7;
  if (a3 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((a3 - *a2) >> 4) + 32 * (a2 - v6) - ((v7 - *v6) >> 4);
  }

  v9 = sub_1004F2DB4(&v33, v8);
  v11 = v9;
  v12 = v10;
  v13 = a1[2].i64[1];
  if (v8 <= (v13 - 1) >> 1)
  {
    v18 = (v10 - *v9) >> 4;
    if (v18 < 0)
    {
      v27 = 254 - v18;
      v20 = &v9[-(v27 >> 8)];
      v21 = *v20 + 16 * ~v27;
    }

    else
    {
      v19 = v18 + 1;
      v20 = &v9[v19 >> 8];
      v21 = *v20 + 16 * v19;
    }

    memset(v35, 0, sizeof(v35));
    sub_1004F2EE0(v33, v34, v9, v10, v20, v21, v35);
    a1[2] = vaddq_s64(a1[2], xmmword_1008A6430);
    sub_1004F2E10(a1, 1);
  }

  else
  {
    v14 = (v10 - *v9) >> 4;
    if (v14 < 0)
    {
      v22 = 254 - v14;
      v16 = &v9[-(v22 >> 8)];
      v17 = (*v16 + 16 * ~v22);
    }

    else
    {
      v15 = v14 + 1;
      v16 = &v9[v15 >> 8];
      v17 = (*v16 + 16 * v15);
    }

    v23 = a1[2].i64[0] + v13;
    v24 = a1->i64[1];
    v25 = (v24 + 8 * (v23 >> 8));
    if (a1[1].i64[0] == v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = (*v25 + 16 * v23);
    }

    v35[0].n128_u64[0] = v11;
    v35[0].n128_u64[1] = v12;
    sub_1004F305C(v16, v17, v25, v26, v35);
    --a1[2].i64[1];
    sub_1004F2E70(a1, 1);
  }

  v28 = a1[2].u64[0];
  v29 = a1->i64[1];
  v30 = (v29 + 8 * (v28 >> 8));
  if (a1[1].i64[0] == v29)
  {
    v31 = 0;
  }

  else
  {
    v31 = *v30 + 16 * v28;
  }

  v35[0].n128_u64[0] = v30;
  v35[0].n128_u64[1] = v31;
  return sub_1004F2DB4(v35, v8);
}

uint64_t sub_1004EAD08(uint64_t *a1, unsigned __int8 *src)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_1004F31A8(a1, src);
  }

  else
  {
    uuid_copy(a1[1], src);
    *(v4 + 16) = *(src + 4);
    result = v4 + 20;
    a1[1] = v4 + 20;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1004EAD78(uint64_t a1, int *a2, uint64_t *a3)
{
  v28[0] = 0;
  v28[1] = 0;
  sub_100007F88(v28, a1 + 40);
  v6 = sub_1004E98F0(a1, *a2);
  if (v6)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    sub_100007F20(&v25, (v6 + 136));
    v7 = v25;
    if (v25 != v26)
    {
      v8 = (a1 + 416);
      do
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        sub_100007F20(&v22, (*v7 + 104));
        v9 = v22;
        if (v22 != v23)
        {
          do
          {
            v10 = *(*v9 + 8);
            v11 = *(v10 + 20);
            *dst = *(v10 + 4);
            v31 = v11;
            sub_10000D03C(&v29, dst);
            *dst = xmmword_1008A9C4C;
            v31 = 0;
            if (sub_10004E15C(&v29, dst))
            {
              v12 = *v8;
              if (*v8)
              {
                v13 = *v9;
                v14 = v8;
                do
                {
                  v15 = v12[4];
                  v16 = v15 >= v13;
                  v17 = v15 < v13;
                  if (v16)
                  {
                    v14 = v12;
                  }

                  v12 = v12[v17];
                }

                while (v12);
                if (v14 != v8 && v13 >= v14[4])
                {
                  v19 = v14[5];
                  v18 = v14[6];
                  while (v19 != v18)
                  {
                    if (*(v19 + 16))
                    {
                      v20 = *(*v7 + 16);
                      uuid_copy(dst, v19);
                      v31 = v20;
                      sub_1004EAD08(a3, dst);
                      v18 = v14[6];
                    }

                    v19 += 18;
                  }
                }
              }
            }

            v9 += 8;
          }

          while (v9 != v23);
          v9 = v22;
        }

        if (v9)
        {
          v23 = v9;
          operator delete(v9);
        }

        v7 += 8;
      }

      while (v7 != v26);
      v7 = v25;
    }

    if (v7)
    {
      v26 = v7;
      operator delete(v7);
    }
  }

  sub_1000088CC(v28);
  return v6;
}

void sub_1004EAF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EAFD4(uint64_t a1)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 40);
  if (*(a1 + 32) == 1)
  {
    if (qword_100B50F78 != -1)
    {
      sub_10083A29C();
    }

    if (!sub_100580A38(qword_100B50F70))
    {
      v13 = 0;
      sub_1000216B4(&v13);
      if (sub_1002B9EB0())
      {
        v2 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
        {
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Compacting database!", v12, 2u);
        }

        v4 = *(a1 + 360);
        v3 = *(a1 + 368);
        while (v4 != v3)
        {
          v5 = *v4;
          if (*v4 != *(a1 + 112) && v5 != *(a1 + 128))
          {
            sub_1002D945C(*(v5 + 8));
            v3 = *(a1 + 368);
          }

          ++v4;
        }

        sub_1002B9704();
        sub_100022214(&v13);
        sub_1004E9DB8(a1, 0, (*(*(a1 + 128) + 48) + 1), 0xFFFFLL);
        sub_10008E0A0(a1 + 408, *(a1 + 416));
        *(a1 + 416) = 0;
        *(a1 + 424) = 0;
        *(a1 + 408) = a1 + 416;
        v7 = *(a1 + 360);
        v6 = *(a1 + 368);
        while (v7 != v6)
        {
          v8 = *v7;
          if (*v7 != *(a1 + 112) && v8 != *(a1 + 128))
          {
            v9 = sub_1004E7FE0(a1, *v7, 1);
            if (v9)
            {
              v10 = qword_100BCE910;
              if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
              {
                sub_1006E3698(v8, v12);
                sub_10083A33C(v12, buf, v9, v10);
              }

              break;
            }

            v6 = *(a1 + 368);
          }

          ++v7;
        }
      }

      sub_10002249C(&v13);
    }
  }

  return sub_1000088CC(v14);
}

void sub_1004EB1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_10002249C(&a15);
  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EB220(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v6 = sub_10007C324(a1 + 232, a2);
  v7 = sub_10007C324(a1 + 256, a2);
  v8 = a1 + 240 == v6;
  if (a1 + 240 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  if (a1 + 264 != v7)
  {
    v8 = 0;
  }

  return v8 | v9;
}

uint64_t sub_1004EB290(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 40);
  if (*(a1 + 32) != 1)
  {
    return sub_1000088CC(v24);
  }

  v10 = *(a1 + 392);
  if (v10)
  {
    v11 = *a2;
    v12 = a1 + 392;
    do
    {
      v13 = *(v10 + 32);
      v14 = v13 >= v11;
      v15 = v13 < v11;
      if (v14)
      {
        v12 = v10;
      }

      v10 = *(v10 + 8 * v15);
    }

    while (v10);
    if (v12 != a1 + 392 && v11 >= *(v12 + 32))
    {
      if (*(v12 + 44) != 1)
      {
        v23 = 0;
        sub_1000216B4(&v23);
        v18 = *(v12 + 48);
        v19 = *a2;
        v20 = sub_10000C5F8(a4);
        v21 = sub_10000C5E0(a4);
        v18(v19, a3, v20, v21);
LABEL_23:
        sub_10002249C(&v23);
        sub_10002717C((a1 + 384), v12);
        operator delete(v12);
        return sub_1000088CC(v24);
      }

      if (a3)
      {
        v16 = sub_1004EA89C(a1, *a5, 0);
        if (v16)
        {
LABEL_18:
          v23 = 0;
          sub_1000216B4(&v23);
          if (v16)
          {
            v17 = *(v16 + 8);
          }

          else
          {
            v17 = 0;
          }

          (*(v12 + 48))(*a2, a3, v17);
          goto LABEL_23;
        }

        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_10083A3C0();
        }
      }

      v16 = 0;
      goto LABEL_18;
    }
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_10083A438();
  }

  return sub_1000088CC(v24);
}

void sub_1004EB450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004EB480(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  v8 = a3;
  v41[0] = 0;
  v41[1] = 0;
  sub_100007F88(v41, a1 + 40);
  if (*(a1 + 32))
  {
    v9 = *(a1 + 464);
    v10 = *(a1 + 440);
    v11 = *(a1 + 448);
    v12 = (v10 + 8 * (v9 >> 8));
    if (v11 == v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = (*v12 + 16 * v9);
    }

LABEL_5:
    v14 = v13 - 512;
    while (1)
    {
      v15 = v11 == v10 ? 0 : *(v10 + (((*(a1 + 472) + v9) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 472) + v9);
      if (v13 == v15)
      {
        break;
      }

      if (*v13 == a2)
      {
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_100018384(a2, &v43);
          sub_10083A4B0();
        }

        goto LABEL_22;
      }

      v13 += 2;
      v14 += 2;
      if (*v12 == v14)
      {
        v16 = v12[1];
        ++v12;
        v13 = v16;
        goto LABEL_5;
      }
    }

    v17 = sub_1004EA89C(a1, v5, 0);
    v18 = v17;
    if (v17 && (v19 = *(v17 + 8), v20 = *(v19 + 20), *&v43.__r_.__value_.__l.__data_ = *(v19 + 4), LODWORD(v43.__r_.__value_.__r.__words[2]) = v20, sub_10000D03C(v42, &v43), *&v43.__r_.__value_.__l.__data_ = xmmword_1008A9C60, LODWORD(v43.__r_.__value_.__r.__words[2]) = 0, sub_10004E15C(v42, &v43)))
    {
      sub_100007F20(&v43, v18 + 13);
      size = v43.__r_.__value_.__l.__size_;
      v21 = v43.__r_.__value_.__r.__words[0];
      if (v43.__r_.__value_.__r.__words[0] == v43.__r_.__value_.__l.__size_)
      {
        goto LABEL_34;
      }

      v23 = v43.__r_.__value_.__r.__words[0];
      while (1)
      {
        v24 = *(*v23 + 8);
        v25 = *(v24 + 20);
        *&v43.__r_.__value_.__l.__data_ = *(v24 + 4);
        LODWORD(v43.__r_.__value_.__r.__words[2]) = v25;
        sub_10000D03C(v42, &v43);
        *&v43.__r_.__value_.__l.__data_ = xmmword_1008A9C4C;
        LODWORD(v43.__r_.__value_.__r.__words[2]) = 0;
        if (sub_10004E15C(v42, &v43))
        {
          break;
        }

        v23 += 8;
        if (v23 == size)
        {
          goto LABEL_34;
        }
      }

      v29 = *v23;
      if (!*v23)
      {
LABEL_34:
        v26 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR);
        if (v26)
        {
          sub_1006E3698(v18, &v43);
          sub_10083A558();
        }
      }

      else
      {
        if ([v8 count])
        {
          operator new();
        }

        v30 = (a1 + 416);
        v31 = *(a1 + 416);
        if (!v31)
        {
          goto LABEL_44;
        }

        v32 = (a1 + 416);
        do
        {
          v33 = v31[4];
          v34 = v33 >= v29;
          v35 = v33 < v29;
          if (v34)
          {
            v32 = v31;
          }

          v31 = v31[v35];
        }

        while (v31);
        if (v32 == v30 || v29 < v32[4])
        {
LABEL_44:
          v32 = (a1 + 416);
        }

        v39 = +[NSMutableArray array];
        if (v32 != v30)
        {
          v37 = v32[5];
          v36 = v32[6];
          while (v37 != v36)
          {
            if (*(v37 + 16))
            {
              v38 = sub_10004DF60(v37);
              [v39 addObject:v38];

              v36 = v32[6];
            }

            v37 += 18;
          }
        }

        if ([v39 count])
        {
          operator new();
        }

        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_1006E3698(v29, &v43);
          sub_10083A504();
        }
      }
    }

    else
    {
      v26 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR);
      if (v26)
      {
        sub_10083A5AC();
      }

      v21 = 0;
    }

    if (*(a1 + 104))
    {
      v28 = sub_100007EE8(v26, v27);
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1004EC6CC;
      v40[3] = &unk_100AE0860;
      v40[4] = a1;
      v40[5] = a2;
      sub_10000CA94(v28, v40);
    }

    sub_1000088CC(v41);
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
LABEL_22:
    sub_1000088CC(v41);
  }
}

void sub_1004EB920(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  sub_1000088CC(va);
  if (v17)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1004EB9E0(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1004F332C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

void sub_1004EBA6C(uint64_t a1)
{
  if (*(a1 + 480) == 1)
  {
    v1 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Not sending updates as TX queue is full", buf, 2u);
    }

    return;
  }

  v3 = *(a1 + 464);
  v4 = *(a1 + 440);
  v5 = *(a1 + 448);
  v6 = (v4 + 8 * (v3 >> 8));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*v6 + 16 * v3);
  }

  v77 = (a1 + 416);
  v73 = a1 + 544;
  while (1)
  {
    if (v5 == v4)
    {
      v9 = 0;
    }

    else
    {
      v8 = *(a1 + 472) + *(a1 + 464);
      v9 = *(v4 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8;
    }

    if (v7 == v9)
    {
      return;
    }

    v10 = v7[1];
    v71 = *v7;
    v75 = *(a1 + 328);
    v76 = *(v10 + 16);
    v74 = v10;
    if (v76 != v75)
    {
      v11 = *v77;
      if (!*v77)
      {
        goto LABEL_21;
      }

      v12 = v77;
      do
      {
        v13 = v11[4];
        v14 = v13 >= v76;
        v15 = v13 < v76;
        if (v14)
        {
          v12 = v11;
        }

        v11 = v11[v15];
      }

      while (v11);
      if (v12 == v77 || v76 < v12[4])
      {
LABEL_21:
        v16 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_10083A61C(&v85, v86, v16);
        }

        v17 = sub_1004EAB10((a1 + 432), v6, v7);
        v72 = v17;
        v7 = v18;
        if (v74)
        {
          *(v74 + 24) = &off_100AE0A78;
          v19 = *(v74 + 32);
          if (v19)
          {
            sub_10000C808(v19);
          }

          operator delete();
        }

        if (*(a1 + 104))
        {
          v20 = sub_100007EE8(v17, v18);
          v84[0] = _NSConcreteStackBlock;
          v84[1] = 3221225472;
          v84[2] = sub_1004EF7E0;
          v84[3] = &unk_100AE0860;
          v84[4] = a1;
          v84[5] = v71;
          sub_10000CA94(v20, v84);
        }

        goto LABEL_120;
      }
    }

    v69 = v7;
    v72 = v6;
    v70 = [*v10 mutableCopy];
    v21 = +[NSMutableArray array];
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = v70;
    v22 = [obj countByEnumeratingWithState:&v80 objects:v91 count:16];
    if (v22)
    {
      break;
    }

LABEL_112:

    [obj removeObjectsInArray:v21];
    if (![obj count])
    {
      sub_1004EAB10((a1 + 432), v72, v69);
      *(v74 + 24) = &off_100AE0A78;
      v65 = *(v74 + 32);
      if (v65)
      {
        sub_10000C808(v65);
      }

      operator delete();
    }

    v63 = [obj copy];
    v64 = *v74;
    *v74 = v63;

    if (v69 + 16 - *v72 == 4096)
    {
      v7 = *(v72 + 1);
      v72 += 8;
    }

    else
    {
      v7 = (v69 + 16);
    }

LABEL_120:
    v4 = *(a1 + 440);
    v5 = *(a1 + 448);
    v6 = v72;
  }

  v23 = *v81;
LABEL_31:
  v24 = 0;
  while (1)
  {
    if (*v81 != v23)
    {
      objc_enumerationMutation(obj);
    }

    v25 = *(*(&v80 + 1) + 8 * v24);
    if (qword_100B50F78 != -1)
    {
      sub_10083A29C();
    }

    if (!sub_100052A90(qword_100B50F70, v25))
    {
      v29 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v88 = v25;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Dropping update of device %{public}@ as it is no longer connected", buf, 0xCu);
      }

      goto LABEL_66;
    }

    if (![*(a1 + 488) containsObject:v25])
    {
      break;
    }

    v26 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v88 = v25;
      v27 = v26;
      v28 = "Skipping update of device %{public}@ as it is being stalled";
LABEL_40:
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
    }

LABEL_67:
    if (++v24 == v22)
    {
      v62 = [obj countByEnumeratingWithState:&v80 objects:v91 count:16];
      v22 = v62;
      if (v62)
      {
        goto LABEL_31;
      }

      goto LABEL_112;
    }
  }

  if (v76 != v75)
  {
    v30 = v77;
    v31 = *v77;
    if (!*v77)
    {
      goto LABEL_53;
    }

    v32 = *(v74 + 16);
    v33 = v77;
    do
    {
      v34 = v31[4];
      v14 = v34 >= v32;
      v35 = v34 < v32;
      if (v14)
      {
        v33 = v31;
      }

      v31 = v31[v35];
    }

    while (v31);
    v30 = v77;
    if (v33 == v77 || v32 < v33[4])
    {
LABEL_53:
      v33 = v30;
    }

    for (i = v33[5]; i != v33[6]; i += 18)
    {
      v37 = sub_10004DF60(i);
      v38 = [v37 isEqual:v25];

      if (v38)
      {
        if (*(i + 16) == 2)
        {
          goto LABEL_69;
        }

        if (*(i + 16))
        {
          v45 = 1;
          goto LABEL_76;
        }

        break;
      }
    }

LABEL_64:
    v42 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v88 = v25;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Dropping update of device %{public}@ as it is no longer subscribed", buf, 0xCu);
    }

    goto LABEL_66;
  }

  for (j = *(a1 + 336); ; j += 20)
  {
    if (j == *(a1 + 344))
    {
      goto LABEL_64;
    }

    v40 = sub_10004DF60(j);
    v41 = [v40 isEqual:v25];

    if (v41)
    {
      break;
    }
  }

LABEL_69:
  v43 = [*(a1 + 504) objectForKey:v25];
  if (v43)
  {

LABEL_72:
    v44 = qword_100BCE910;
    if (!os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_67;
    }

    *buf = 138543362;
    v88 = v25;
    v27 = v44;
    v28 = "Skipping update of device %{public}@ as we're still waiting on an indication response";
    goto LABEL_40;
  }

  if ([*(a1 + 496) containsObject:v25])
  {
    goto LABEL_72;
  }

  v45 = 0;
LABEL_76:
  sub_10004DFB4(buf, v25);
  v46 = sub_10004E34C(a1 + 536, buf);
  v47 = qword_100BCE910;
  if (v73 == v46)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v88 = v25;
      _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Dropping update of device %{public}@ as we have no ATT session", buf, 0xCu);
    }

LABEL_66:
    [v21 addObject:v25];
    goto LABEL_67;
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v48 = "indication";
    if (v45)
    {
      v48 = "notification";
    }

    v88 = v48;
    v89 = 2114;
    v90 = v25;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Sending %{public}s to device %{public}@", buf, 0x16u);
  }

  v79 = 0;
  sub_1000216B4(&v79);
  v49 = *(v74 + 8);
  if (v49)
  {
    v50 = *(v46 + 48);
    v51 = *(v49 + 8);
    v52 = sub_10000C5F8(v74 + 24);
    v53 = sub_10000C5E0(v74 + 24);
    v54 = sub_1002D9A70(v50, v51, v45, v52, v53);
  }

  else
  {
    v54 = 114;
  }

  sub_100022214(&v79);
  if (!v54)
  {
    if ((v45 & 1) == 0)
    {
      if (v71)
      {
        v58 = [*(a1 + 504) objectForKey:v25];
        v59 = v58 == 0;

        if (!v59)
        {
          v60 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v88 = v25;
            _os_log_fault_impl(&_mh_execute_header, v60, OS_LOG_TYPE_FAULT, "Already tracking indication for device %{public}@", buf, 0xCu);
          }
        }

        [*(a1 + 504) setObject:v71 forKey:v25];
      }

      else
      {
        if ([*(a1 + 496) containsObject:v25])
        {
          v61 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v88 = v25;
            _os_log_fault_impl(&_mh_execute_header, v61, OS_LOG_TYPE_FAULT, "Already tracking services changed for device %{public}@", buf, 0xCu);
          }
        }

        [*(a1 + 496) addObject:v25];
      }
    }

LABEL_109:
    [v21 addObject:v25];
LABEL_110:
    sub_10002249C(&v79);
    goto LABEL_67;
  }

  if (v54 == 146)
  {
    v56 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v88 = v25;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Stalling updates to device %{public}@ as it is performing an MTU exchange", buf, 0xCu);
    }

    if ([*(a1 + 488) containsObject:v25])
    {
      v57 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v88 = v25;
        _os_log_fault_impl(&_mh_execute_header, v57, OS_LOG_TYPE_FAULT, "Already stalling device %{public}@", buf, 0xCu);
      }
    }

    [*(a1 + 488) addObject:v25];
    goto LABEL_110;
  }

  if (v54 != 410)
  {
    v55 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v88 = v25;
      v89 = 1024;
      LODWORD(v90) = v54;
      _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Failed to send update to device %{public}@ with result %{bluetooth:OI_STATUS}u", buf, 0x12u);
    }

    goto LABEL_109;
  }

  v66 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "TX queue is full - stalling all updates", buf, 2u);
  }

  *(a1 + 480) = 1;
  [obj removeObjectsInArray:v21];
  v67 = [obj copy];
  v68 = *v74;
  *v74 = v67;

  sub_10002249C(&v79);
}

void sub_1004EC63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_10002249C(&a37);

  _Unwind_Resume(a1);
}

uint64_t sub_1004EC6F8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 40);
  v4 = *(a1 + 392);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = a1 + 392;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= v2;
    v8 = v6 < v2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 392 && *(v5 + 32) <= v2)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10083A65C();
    }

    sub_10002717C((a1 + 384), v5);
    operator delete(v5);
  }

  else
  {
LABEL_17:
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10083A6CC();
    }
  }

  return sub_1000088CC(v10);
}

uint64_t sub_1004EC7EC(uint64_t a1, uint64_t a2, int a3)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 40);
  v6 = sub_1004EC990(a1, a2);
  if (v6)
  {
    v7 = qword_100BCE910;
    v8 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      *buf = 67109378;
      v18 = a3;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MTU is now %u for device %{public}@", buf, 0x12u);
    }

    if (*(a1 + 104))
    {
      v10 = sub_100007EE8(v8, v9);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1004ECA4C;
      v12[3] = &unk_100AF9820;
      v14 = a1;
      v13 = v6;
      v15 = a3;
      sub_10000CA94(v10, v12);
    }
  }

  return sub_1000088CC(v16);
}

void sub_1004EC958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

id sub_1004EC990(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 536);
  if (v2 == (a1 + 544))
  {
LABEL_9:
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10083A73C();
    }

    v6 = 0;
  }

  else
  {
    while (*(v2 + 6) != a2)
    {
      v3 = *(v2 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v2 + 2);
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
      if (v4 == (a1 + 544))
      {
        goto LABEL_9;
      }
    }

    v6 = sub_10004DF60(v2 + 32);
  }

  return v6;
}

uint64_t sub_1004ECA80(uint64_t a1, uint64_t a2)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 40);
  v4 = sub_1004EC990(a1, a2);
  if (v4)
  {
    if ([*(a1 + 496) containsObject:v4])
    {
      v5 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "indicationConfirmed";
        *&buf[12] = 2114;
        *&buf[14] = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - Server Indication - Device:%{public}@", buf, 0x16u);
      }

      [*(a1 + 496) removeObject:v4];
      v6 = *(a1 + 336);
      v7 = *(a1 + 344);
      while (v6 != v7)
      {
        memset(buf, 0, 20);
        uuid_copy(buf, v6);
        *&buf[16] = *(v6 + 16);
        v8 = sub_10004DF60(buf);
        [v4 isEqual:v8];

        v6 += 20;
      }
    }

    else
    {
      v9 = [*(a1 + 504) objectForKey:v4];
      v10 = qword_100BCE910;
      if (v9)
      {
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "indicationConfirmed";
          *&buf[12] = 2114;
          *&buf[14] = v4;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s - App Indication - Device:%{public}@", buf, 0x16u);
        }

        v11 = [*(a1 + 504) objectForKey:v4];
        v12 = [*(a1 + 504) removeObjectForKey:v4];
        if (*(a1 + 104))
        {
          v14 = sub_100007EE8(v12, v13);
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_1004ECD3C;
          v16[3] = &unk_100AE0860;
          v16[4] = a1;
          v16[5] = v11;
          sub_10000CA94(v14, v16);
        }
      }

      else if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_10083A770();
      }
    }

    sub_1004EBA6C(a1);
  }

  return sub_1000088CC(v17);
}

void sub_1004ECD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004ECD68(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 40);
  if (a2)
  {
    v4 = sub_1004EC990(a1, a2);
    if (v4)
    {
      v5 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v10 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received device %{public}@ ready event from stack", buf, 0xCu);
      }

      if ([*(a1 + 488) containsObject:v4])
      {
        [*(a1 + 488) removeObject:v4];
        sub_1004EBA6C(a1);
      }
    }
  }

  else
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received update queue ready event from stack", buf, 2u);
    }

    *(a1 + 480) = 0;
    sub_1004EBA6C(a1);
  }

  return sub_1000088CC(v8);
}

uint64_t sub_1004ECEF4(uint64_t a1, uint64_t a2, unint64_t a3, int a4, void (*a5)(uint64_t, uint64_t, void), uint64_t a6)
{
  v25 = a2;
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 40);
  v11 = a1 + 520;
  v12 = *(a1 + 520);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = a1 + 520;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a3;
    v16 = v14 < a3;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == v11 || *(v13 + 32) > a3)
  {
LABEL_9:
    v13 = a1 + 520;
  }

  if (v13 != v11 || a4 == 0)
  {
    if (a4)
    {
      v18 = sub_1004EC990(a1, a3);
      if (v18)
      {
        if (*(a1 + 104))
        {
          v26 = &v25;
          v19 = sub_1004F3820(a1 + 384, &v25, &unk_1008A9BD0, &v26);
          *(v19 + 10) = 0;
          *(v19 + 44) = 1;
          *(v19 + 45) = 0;
          *(v19 + 47) = 0;
          v19[6] = a5;
          sub_100007EE8(v19, v20);
          operator new();
        }

        v22 = 242;
      }

      else
      {
        v22 = 14;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10083A7F8();
    }

    v22 = 14;
  }

  if (v13 != v11)
  {
    sub_1004F2D24((a1 + 512), v13);
  }

  if (a5)
  {
    LOBYTE(v26) = 0;
    sub_1000216B4(&v26);
    a5(a2, v22, 0);
    sub_10002249C(&v26);
  }

  return sub_1000088CC(v24);
}

uint64_t sub_1004ED148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v18 = 0;
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 40);
  if (*(a1 + 104) && sub_1004ED28C(a1, a2, &v17, &v18) && v17)
  {
    v6 = sub_1004EC990(a1, a3);
    v8 = v6;
    if (v6)
    {
      v9 = *(v18 + 16);
      v10 = sub_100007EE8(v6, v7);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1004ED564;
      v12[3] = &unk_100AE1228;
      v14 = a1;
      v13 = v8;
      v15 = v9;
      sub_10000CA94(v10, v12);
    }
  }

  return sub_1000088CC(v16);
}

void sub_1004ED258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004ED28C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v30[0] = 0;
  v30[1] = 0;
  sub_100007F88(v30, a1 + 40);
  v9 = *(a1 + 360);
  if (v9 == *(a1 + 368))
  {
LABEL_46:
    if (a3)
    {
      *a3 = 0;
    }

    v4 = 0;
    if (a4)
    {
      *a4 = 0;
    }

    goto LABEL_53;
  }

LABEL_2:
  v10 = *v9;
  if (a4)
  {
    *a4 = v10;
  }

  if (*(v10 + 8) != a2)
  {
    __p = 0;
    v28 = 0;
    v29 = 0;
    sub_100007F20(&__p, (*v9 + 104));
    v11 = __p;
    v12 = __p;
    if (__p != v28)
    {
      do
      {
        if (*(*v12 + 8) == a2)
        {
          v19 = 0;
          if (a3)
          {
            *a3 = *v9;
          }

          v4 = *v12;
          goto LABEL_39;
        }

        v12 += 8;
      }

      while (v12 != v28);
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    sub_100007F20(&v24, (*v9 + 136));
    v13 = v24;
    if (v24 == v25)
    {
      v19 = 1;
      if (v24)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    while (1)
    {
      v14 = *v13;
      if (*(*v13 + 8) == a2)
      {
        v19 = 0;
        if (a3)
        {
          *a3 = *v9;
        }

        v4 = *v13;
LABEL_36:
        v13 = v24;
        if (v24)
        {
LABEL_37:
          v25 = v13;
          operator delete(v13);
        }

LABEL_38:
        v11 = __p;
LABEL_39:
        if (v11)
        {
          v28 = v11;
          operator delete(v11);
        }

        if (!v19)
        {
          goto LABEL_53;
        }

        if (++v9 == *(a1 + 368))
        {
          goto LABEL_46;
        }

        goto LABEL_2;
      }

      if (*(*(v14 + 96) + 8) == a2)
      {
        v19 = 0;
        if (a3)
        {
          *a3 = v14;
          v4 = *(*v13 + 96);
        }

        else
        {
          v4 = *(v14 + 96);
        }

        goto LABEL_36;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      sub_100007F20(&v21, (*v13 + 104));
      v15 = v21;
      v16 = v21;
      if (v21 == v22)
      {
        break;
      }

      while (*(*v16 + 8) != a2)
      {
        v16 += 8;
        if (v16 == v22)
        {
          goto LABEL_14;
        }
      }

      v18 = 0;
      if (!a3)
      {
        v17 = 1;
        v4 = *v16;
        if (!v21)
        {
          goto LABEL_19;
        }

LABEL_18:
        v22 = v15;
        operator delete(v15);
        goto LABEL_19;
      }

      *a3 = *v13;
      v4 = *v16;
      v17 = 1;
      if (v15)
      {
        goto LABEL_18;
      }

LABEL_19:
      if (!v18)
      {
        goto LABEL_35;
      }

      if (++v13 == v25)
      {
        v17 = 8;
LABEL_35:
        v19 = (v17 & 7) == 0;
        goto LABEL_36;
      }
    }

LABEL_14:
    v17 = 0;
    v18 = 1;
    if (!v21)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v4 = *v9;
LABEL_53:
  sub_1000088CC(v30);
  return v4;
}

void sub_1004ED520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004ED598(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void *, void), uint64_t a7)
{
  v52 = a3;
  v51 = a4;
  v49 = 0;
  v50 = 0;
  v48[0] = 0;
  v48[1] = 0;
  v13 = sub_100007F88(v48, (a1 + 5));
  v47 = 0;
  v15 = sub_10000C7D0(v13, v14);
  if (*(v15 + 800) >> 3 >= 0x271u && *(sub_10000C7D0(v15, v16) + 800) >> 4 <= 0x176u && qword_100B6EF98 != -1)
  {
    sub_10083A82C();
  }

  v17 = sub_1004ED28C(a1, a2, &v50, &v49);
  if (v17 && v50)
  {
    if ((*(v50 + 72) & 2) == 0)
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_10083A8EC();
      }

      v18 = 0;
      v19 = 2;
      goto LABEL_14;
    }

    v18 = sub_1004EC990(a1, a5);
    if (!v18)
    {
      v19 = 14;
      goto LABEL_14;
    }

    if (v49 != a1[14] && v49 != a1[16] && v49 != a1[18])
    {
      if (a1[13])
      {
        v20 = *(v17 + 16);
        v46.__r_.__value_.__r.__words[0] = &v51;
        v21 = sub_1004F3820((a1 + 48), &v51, &unk_1008A9BD0, &v46);
        *(v21 + 10) = v20;
        *(v21 + 11) = 0;
        v21[6] = a6;
        sub_100007EE8(v21, v22);
        operator new();
      }

      v19 = 242;
      goto LABEL_14;
    }

    v23 = sub_10000E92C();
    sub_100007E30(&v46, "GATT");
    sub_100007E30(&__p, "DUMMY_DIS");
    (*(*v23 + 72))(v23, &v46, &__p, &v47);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    memset(&v46, 0, sizeof(v46));
    sub_100007E30(&v46, "Dummy Apple DIS");
    memset(&__p, 0, sizeof(__p));
    v24 = sub_10000E92C();
    sub_100007E30(&v44, "GATT");
    sub_100007E30(&buf, "DUMMY_DIS_NAME");
    v25 = (*(*v24 + 56))(v24, &v44, &buf, &__p);
    if (v54 < 0)
    {
      operator delete(buf);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
      if (!v25)
      {
        goto LABEL_33;
      }
    }

    else if (!v25)
    {
LABEL_33:
      if (v17 != a1[15])
      {
        if (v17 == a1[19])
        {
          if (v47 == 1)
          {
            memset(&v44, 0, sizeof(v44));
            sub_1004EE4EC(&v44, " MFGR Name", &v46.__r_.__value_.__l.__data_);
            v26 = a1[19];
            if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v27 = &v44;
            }

            else
            {
              v27 = v44.__r_.__value_.__r.__words[0];
            }

            if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v44.__r_.__value_.__l.__size_;
            }

            goto LABEL_89;
          }
        }

        else if (v17 == a1[20])
        {
          if (v47 == 1)
          {
            memset(&v44, 0, sizeof(v44));
            sub_1004EE4EC(&v44, " Model Number", &v46.__r_.__value_.__l.__data_);
            v26 = a1[20];
            if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v27 = &v44;
            }

            else
            {
              v27 = v44.__r_.__value_.__r.__words[0];
            }

            if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v44.__r_.__value_.__l.__size_;
            }

            goto LABEL_89;
          }
        }

        else
        {
          if (v17 == a1[21] && v47 == 1)
          {
            memset(&v44, 0, sizeof(v44));
            sub_1004EE4EC(&v44, " Serial Number", &v46.__r_.__value_.__l.__data_);
            v26 = a1[21];
            if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v27 = &v44;
            }

            else
            {
              v27 = v44.__r_.__value_.__r.__words[0];
            }

            if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v44.__r_.__value_.__l.__size_;
            }

LABEL_89:
            sub_10000C704(&buf, v27, size);
            sub_10000AE20(v26 + 72, &buf);
            *&buf = &off_100AE0A78;
            if (*(&buf + 1))
            {
              sub_10000C808(*(&buf + 1));
            }

            if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v44.__r_.__value_.__l.__data_);
            }

            goto LABEL_131;
          }

          if (v17 == a1[22] && v47 == 1)
          {
            memset(&v44, 0, sizeof(v44));
            sub_1004EE4EC(&v44, " HW Revision", &v46.__r_.__value_.__l.__data_);
            v26 = a1[22];
            if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v27 = &v44;
            }

            else
            {
              v27 = v44.__r_.__value_.__r.__words[0];
            }

            if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v44.__r_.__value_.__l.__size_;
            }

            goto LABEL_89;
          }

          if (v17 == a1[23] && v47 == 1)
          {
            memset(&v44, 0, sizeof(v44));
            sub_1004EE4EC(&v44, " FW Revision", &v46.__r_.__value_.__l.__data_);
            v26 = a1[23];
            if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v27 = &v44;
            }

            else
            {
              v27 = v44.__r_.__value_.__r.__words[0];
            }

            if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v44.__r_.__value_.__l.__size_;
            }

            goto LABEL_89;
          }

          if (v17 == a1[24] && v47 == 1)
          {
            memset(&v44, 0, sizeof(v44));
            sub_1004EE4EC(&v44, " SW Revision", &v46.__r_.__value_.__l.__data_);
            v26 = a1[24];
            if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v27 = &v44;
            }

            else
            {
              v27 = v44.__r_.__value_.__r.__words[0];
            }

            if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v44.__r_.__value_.__l.__size_;
            }

            goto LABEL_89;
          }

          v40 = a1[25];
          if (v17 == v40 && v47 == 1)
          {
            BYTE2(buf) = 26;
            LOWORD(buf) = 6682;
            sub_10000C704(&v44, &buf, 3uLL);
            sub_10000AE20(v40 + 72, &v44);
            goto LABEL_126;
          }

          v41 = a1[26];
          if (v17 == v41 && v47 == 1)
          {
            memset(&buf, 27, 3);
            sub_10000C704(&v44, &buf, 3uLL);
            sub_10000AE20(v41 + 72, &v44);
            goto LABEL_126;
          }

          v42 = a1[27];
          if (v17 == v42 && v47 == 1)
          {
            BYTE2(buf) = 28;
            LOWORD(buf) = 7196;
            sub_10000C704(&v44, &buf, 3uLL);
            sub_10000AE20(v42 + 72, &v44);
            goto LABEL_126;
          }

          v43 = a1[28];
          if (v17 == v43 && v47 == 1)
          {
            *&buf = 0x3837363534333231;
            sub_10000C704(&v44, &buf, 8uLL);
            sub_10000AE20(v43 + 72, &v44);
LABEL_126:
            v44.__r_.__value_.__r.__words[0] = &off_100AE0A78;
            if (v44.__r_.__value_.__l.__size_)
            {
              sub_10000C808(v44.__r_.__value_.__l.__size_);
            }
          }
        }

LABEL_131:
        if (!sub_10000C5F8(v17 + 72) && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
        {
          sub_10083A8B0();
        }

        if (sub_10000C5E0(v17 + 72) >= a3)
        {
          if (sub_10000C5E0(v17 + 72) != a3)
          {
            operator new[]();
          }

          v19 = 0;
        }

        else
        {
          v19 = 7;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }

        goto LABEL_14;
      }

      memset(&v44, 0, sizeof(v44));
      if (v47 & v25)
      {
        v29 = &v46;
      }

      else
      {
        if (qword_100B50F78 != -1)
        {
          sub_10083A29C();
        }

        v30 = sub_100580920(qword_100B50F70, v18);
        if (!v30)
        {
          goto LABEL_66;
        }

        v29 = (a1 + 38);
      }

      v30 = std::string::operator=(&v44, v29);
LABEL_66:
      v32 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v32 = v44.__r_.__value_.__l.__size_;
      }

      if (!v32)
      {
        v33 = sub_10000C798(v30, v31);
        v30 = (*(*v33 + 16))(v33, &v44);
        if (v30)
        {
          v30 = std::string::assign(&v44, "iDevice");
        }
      }

      v34 = sub_10000C7D0(v30, v31);
      if (*(v34 + 800) >= 0x7D0u)
      {
        v36 = sub_10000C7D0(v34, v35);
        if (*(v36 + 800) <= 0xF9Fu && *(sub_10000C7D0(v36, v37) + 800) >= 0xBB8u)
        {
          if (qword_100B6EFA8 != -1)
          {
            sub_10083A888();
          }

          if (byte_100B6EFA0 == 1)
          {
            std::string::assign(&v44, "Apple Watch");
            v38 = qword_100BCE910;
            if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
            {
              v39 = &v44;
              if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v39 = v44.__r_.__value_.__r.__words[0];
              }

              LODWORD(buf) = 136315138;
              *(&buf + 4) = v39;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Override Name to %s", &buf, 0xCu);
            }
          }
        }
      }

      if (byte_100B6EF90 == 1)
      {
        std::string::assign(&v44, "Apple Watch");
      }

      v26 = a1[15];
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v44;
      }

      else
      {
        v27 = v44.__r_.__value_.__r.__words[0];
      }

      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v44.__r_.__value_.__l.__size_;
      }

      goto LABEL_89;
    }

    std::string::operator=(&v46, &__p);
    goto LABEL_33;
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_10083A854();
  }

  v18 = 0;
  v19 = 10;
LABEL_14:
  v46.__r_.__value_.__s.__data_[0] = 0;
  sub_1000216B4(&v46);
  a6(a4, v19, 0, 0);
  sub_10002249C(&v46);
  sub_1000088CC(v48);
}

void sub_1004EE07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, atomic_uint *a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a11)
  {
    sub_10000C808(a11);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_1000088CC(&a29);
  _Unwind_Resume(a1);
}

void sub_1004EE27C(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "MaskLocalNameAsAppleWatch");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6EF90);
  v3 = byte_100B6EF90;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v2 & v3;
  if (v9 < 0)
  {
    operator delete(*buf);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v5 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Mask as Apple Watch in gattDatabaseAccessedCb", buf, 2u);
  }
}

void sub_1004EE380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004EE3B4(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "MaskCODandNameAsAppleWatch");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6EFA0);
  v3 = byte_100B6EFA0;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v2 & v3;
  if (v9 < 0)
  {
    operator delete(*buf);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v5 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Mask as Apple Watch", buf, 2u);
  }
}

void sub_1004EE4B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1004EE4EC@<X0>(uint64_t ***__return_ptr a1@<X8>, char *__s@<X1>, const void **a3@<X0>)
{
  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  v7 = strlen(__s);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  result = sub_1003A5170(a1, v6 + v7);
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    result = memmove(a1, v9, v6);
  }

  v10 = a1 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

uint64_t sub_1004EE5B0(uint64_t a1, uint64_t a2, int a3, unsigned __int16 a4, uint64_t a5, unsigned int a6, unint64_t a7, void (*a8)(void, uint64_t, void, void), unsigned __int8 a9)
{
  v48 = a6;
  v46 = 0;
  v47 = a7;
  v44[1] = 0;
  v45 = 0;
  v44[0] = 0;
  sub_100007F88(v44, a1 + 40);
  v16 = sub_1004ED28C(a1, a2, &v46, &v45);
  if (v16)
  {
    if (!v46)
    {
LABEL_5:
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_10083A9EC();
      }

      v17 = 3;
      goto LABEL_11;
    }

    if (a8)
    {
      if ((*(v46 + 72) & 8) == 0)
      {
        goto LABEL_5;
      }
    }

    else if ((*(v46 + 72) & 4) == 0)
    {
      goto LABEL_5;
    }

    if (a3)
    {
      __p = 0;
      v42 = 0;
      v43 = 0;
      sub_100007F20(&__p, (v46 + 104));
      v19 = __p;
      if (__p == v42)
      {
        goto LABEL_29;
      }

      while (1)
      {
        v20 = *(*v19 + 8);
        v21 = *(v20 + 20);
        v50 = *(v20 + 4);
        LODWORD(v51) = v21;
        sub_10000D03C(&buf, &v50);
        v50 = xmmword_1008A4AD0;
        LODWORD(v51) = 0;
        if (sub_10004E15C(v22, &v50))
        {
          break;
        }

        v19 += 8;
        if (v19 == v42)
        {
          goto LABEL_29;
        }
      }

      if ((*(*v19 + 72) & 1) == 0)
      {
LABEL_29:
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_10083A9B8();
        }

        v17 = 3;
LABEL_32:
        if (__p)
        {
          v42 = __p;
          operator delete(__p);
        }

        goto LABEL_11;
      }

      v50 = 0u;
      v51 = 0u;
      LODWORD(v50) = *(v16 + 16);
      WORD2(v50) = a4;
      v30 = *(a5 + 8);
      *(&v50 + 1) = &off_100AE0A78;
      *&v51 = v30;
      if (v30)
      {
        sub_10000C69C(v30);
      }

      BYTE8(v51) = 0;
      v31 = *(a1 + 520);
      if (v31)
      {
        v32 = a1 + 520;
        do
        {
          v33 = *(v31 + 32);
          v34 = v33 >= a7;
          v35 = v33 < a7;
          if (v34)
          {
            v32 = v31;
          }

          v31 = *(v31 + 8 * v35);
        }

        while (v31);
        if (v32 != a1 + 520 && *(v32 + 32) <= a7)
        {
          v49 = 0;
          v37 = *(v32 + 40);
          if (v37 == *(v32 + 48))
          {
            v38 = 0;
          }

          else
          {
            LODWORD(v38) = 0;
            do
            {
              v38 = v38 + sub_10000C5E0(v37 + 8);
              v37 += 32;
            }

            while (v37 != *(v32 + 48));
          }

          if ((sub_10000C5E0(a5) + v38) >= 0x201)
          {
            v39 = qword_100BCE910;
            if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
            {
              v40 = sub_10000C5E0(a5);
              sub_10083A954(v38, v40, &buf, v39);
            }

            v17 = 9;
            goto LABEL_50;
          }

          sub_1004EA89C(a1, **(v32 + 40), &v49);
          if (v49 != v45)
          {
            if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
            {
              sub_10083A920();
            }

            v17 = 244;
            goto LABEL_50;
          }
        }
      }

      buf.n128_u64[0] = &v47;
      v36 = sub_1004F38F4(a1 + 512, &v47, &unk_1008A9BD0, &buf);
      sub_1004F39C8(v36 + 5, &v50);
      v17 = 0;
LABEL_50:
      *(&v50 + 1) = &off_100AE0A78;
      if (v51)
      {
        sub_10000C808(v51);
      }

      goto LABEL_32;
    }

    v23 = sub_1004EC990(a1, a7);
    if (v23)
    {
      v50 = 0u;
      v51 = 0u;
      LODWORD(v50) = *(v16 + 16);
      WORD2(v50) = a4;
      v24 = *(a5 + 8);
      *(&v50 + 1) = &off_100AE0A78;
      *&v51 = v24;
      if (v24)
      {
        sub_10000C69C(v24);
      }

      BYTE8(v51) = a8 == 0;
      __p = 0;
      v42 = 0;
      v43 = 0;
      if (*(a1 + 104))
      {
        if (a8 && (v25 = *(v16 + 16), v49 = &v48, v26 = sub_1004F3820(a1 + 384, &v48, &unk_1008A9BD0, &v49), *(v26 + 10) = v25, *(v26 + 11) = 0, v26[6] = a8, v27 = v42, v42 < v43))
        {
          sub_1004F3A0C(&__p, &v50);
          v29 = (v27 + 32);
        }

        else
        {
          v29 = sub_1004F3A90(&__p, &v50);
        }

        v42 = v29;
        sub_100007EE8(v29, v28);
        operator new();
      }

      v17 = 242;
      buf.n128_u64[0] = &__p;
      sub_1004F25AC(&buf);
      *(&v50 + 1) = &off_100AE0A78;
      if (v51)
      {
        sub_10000C808(v51);
      }
    }

    else
    {
      v17 = 14;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10083A854();
    }

    v17 = 10;
  }

LABEL_11:
  if (a8)
  {
    LOBYTE(v50) = 0;
    sub_1000216B4(&v50);
    a8(v48, v17, 0, 0);
    sub_10002249C(&v50);
  }

  return sub_1000088CC(v44);
}

void sub_1004EEAF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, atomic_uint *a21)
{
  if (a21)
  {
    sub_10000C808(a21);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EEBC4(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, __int16 *, void))
{
  v27 = 0;
  v26[0] = 0;
  v26[1] = 0;
  sub_100007F88(v26, (a1 + 5));
  v12 = sub_1004EC990(a1, a5);
  if (!v12)
  {
    v20 = 0;
    v21 = 14;
    goto LABEL_31;
  }

  if (*(a1[41] + 8) == a2)
  {
    for (i = a1[42]; i != a1[43]; i += 20)
    {
      sub_10004DFB4(uu2, v12);
      if (!uuid_compare(i, uu2))
      {
        LOBYTE(v14) = 0;
        LOBYTE(v19) = 2;
        goto LABEL_23;
      }
    }
  }

  else
  {
    v13 = sub_1004ED28C(a1, a2, 0, 0);
    if (!v13)
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_10083A854();
      }

      v20 = 0;
      v21 = 10;
      goto LABEL_31;
    }

    v14 = a1[52];
    if (!v14)
    {
      LOBYTE(v19) = 0;
      goto LABEL_23;
    }

    v15 = a1 + 52;
    do
    {
      v16 = v14[4];
      v17 = v16 >= v13;
      v18 = v16 < v13;
      if (v17)
      {
        v15 = v14;
      }

      v14 = v14[v18];
    }

    while (v14);
    if (v15 != a1 + 52 && v13 >= v15[4])
    {
      for (j = v15[5]; j != v15[6]; j += 18)
      {
        sub_10004DFB4(uu2, v12);
        if (!uuid_compare(j, uu2))
        {
          v19 = *(j + 16);
          LODWORD(v14) = v19 >> 8;
          goto LABEL_23;
        }
      }
    }
  }

  LOBYTE(v19) = 0;
  LOBYTE(v14) = 0;
LABEL_23:
  if (a3 != 2)
  {
    if (a3 == 1)
    {
      v23 = &v27;
    }

    else
    {
      if (a3)
      {
        v20 = 0;
        v21 = 7;
        goto LABEL_31;
      }

      v23 = (&v27 + 1);
      LOBYTE(v27) = v19;
    }

    *v23 = v14;
  }

  v21 = 0;
  v20 = 2 - a3;
LABEL_31:
  uu2[0] = 0;
  sub_1000216B4(uu2);
  a6(a4, v21, &v27, v20);
  sub_10002249C(uu2);

  return sub_1000088CC(v26);
}

void sub_1004EEE54(void *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void, void))
{
  v40 = 0;
  v41 = 0;
  v39[0] = 0;
  v39[1] = 0;
  sub_100007F88(v39, (a1 + 5));
  if (a3)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10083AAC8();
    }

    v16 = 0;
    v17 = 244;
    goto LABEL_15;
  }

  if (!a4 && sub_10000C5E0(a5) == 2)
  {
    v18 = sub_10072502C(a5, 0);
    v19 = sub_10072502C(a5, 1uLL);
    v20 = a1[41];
    if (*(v20 + 8) == a2)
    {
      v21 = a1[17];
      v40 = v21;
      v41 = v20;
      if (!v20)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v41 = sub_1004ED28C(a1, a2, &v40, 0);
      v21 = v40;
      if (!v41)
      {
        goto LABEL_25;
      }
    }

    if (v21)
    {
      v22 = v18 | (v19 << 8);
      if (v22)
      {
        if (v22 == 2)
        {
          if ((*(v21 + 72) & 0x20) == 0)
          {
LABEL_36:
            if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
            {
              sub_10083AA54();
            }

            v16 = 0;
            v17 = 245;
            goto LABEL_15;
          }
        }

        else if (v22 != 1 || (*(v21 + 72) & 0x10) == 0)
        {
          goto LABEL_36;
        }
      }

      v16 = sub_1004EC990(a1, a7);
      if (!v16)
      {
        v17 = 14;
        goto LABEL_15;
      }

      if (v41 == a1[41])
      {
        for (i = a1[42]; ; i += 20)
        {
          v30 = a1[43];
          if (i == v30)
          {
            break;
          }

          sub_10004DFB4(src, v16);
          if (!uuid_compare(i, src))
          {
            v30 = a1[43];
            break;
          }
        }

        if (i == v30)
        {
          if (v22)
          {
            *src = 0;
            v44 = 0;
            v45 = 0;
            sub_10004DFB4(src, v16);
            v45 = 0;
            sub_1004E8F80(a1 + 42, src);
            if (qword_100B50F78 != -1)
            {
              sub_10083A29C();
            }

            if (sub_100580920(qword_100B50F70, v16))
            {
              if (qword_100B508D0 != -1)
              {
                sub_100839E0C();
              }

              sub_10078CD44(off_100B508C8, v16, 1);
            }
          }
        }

        else if (!v22)
        {
          sub_1004EF400((a1 + 42), i);
          if (qword_100B50F78 != -1)
          {
            sub_10083A29C();
          }

          if (sub_100580920(qword_100B50F70, v16))
          {
            if (qword_100B508D0 != -1)
            {
              sub_100839E0C();
            }

            sub_10078CD44(off_100B508C8, v16, 0);
          }
        }

        goto LABEL_68;
      }

      *src = &v41;
      v23 = sub_1004F38F4((a1 + 51), &v41, &unk_1008A9BD0, src);
      v25 = v23 + 5;
      v24 = v23[5];
      *src = 0;
      v44 = 0;
      LOWORD(v45) = 0;
      v26 = sub_10004DFB4(src, v16);
      LOWORD(v45) = v22;
      while (1)
      {
        v28 = v23[6];
        if (v24 == v28)
        {
          break;
        }

        sub_10004DFB4(uu2, v16);
        v26 = uuid_compare(v24, uu2);
        if (!v26)
        {
          v28 = v23[6];
          break;
        }

        v24 += 18;
      }

      if (v24 == v28)
      {
        if (v22)
        {
          v26 = sub_1004F3D78(v25, src);
        }
      }

      else
      {
        if (v22)
        {
          uuid_copy(v24, src);
          *(v24 + 16) = v45;
LABEL_68:
          v17 = 0;
          goto LABEL_15;
        }

        v26 = sub_1004EF480(v25, v24);
      }

      if (a1[13])
      {
        v31 = *(v41 + 16);
        v32 = sub_100007EE8(v26, v27);
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_1004EF500;
        v33[3] = &unk_100AF7CE0;
        v35 = a1;
        v37 = v22;
        v36 = v31;
        v34 = v16;
        v38 = v22 == 1;
        sub_10000CA94(v32, v33);
      }

      goto LABEL_68;
    }

LABEL_25:
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10083A854();
    }

    v16 = 0;
    v17 = 10;
    goto LABEL_15;
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_10083AA20();
  }

  v16 = 0;
  if (a4)
  {
    v17 = 7;
  }

  else
  {
    v17 = 13;
  }

LABEL_15:
  if (a8)
  {
    src[0] = 0;
    sub_1000216B4(src);
    a8(a6, v17, 0, 0);
    sub_10002249C(src);
  }

  sub_1000088CC(v39);
}

void sub_1004EF370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uuid_t sub_1004EF400(uint64_t a1, uuid_t dst)
{
  v4 = *(a1 + 8);
  if (dst + 20 == v4)
  {
    v6 = dst;
  }

  else
  {
    v5 = dst;
    do
    {
      v6 = v5 + 20;
      uuid_copy(v5, v5 + 20);
      *(v5 + 4) = *(v5 + 9);
      v7 = v5 + 40;
      v5 += 20;
    }

    while (v7 != v4);
  }

  *(a1 + 8) = v6;
  return dst;
}

uuid_t sub_1004EF480(uint64_t a1, uuid_t dst)
{
  v4 = *(a1 + 8);
  if (dst + 18 == v4)
  {
    v6 = dst;
  }

  else
  {
    v5 = dst;
    do
    {
      v6 = v5 + 18;
      uuid_copy(v5, v5 + 18);
      *(v5 + 8) = *(v5 + 17);
      v7 = v5 + 36;
      v5 += 18;
    }

    while (v7 != v4);
  }

  *(a1 + 8) = v6;
  return dst;
}

uint64_t sub_1004EF500(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 104);
  if (*(a1 + 52))
  {
    return (*(*v2 + 40))(*(*(a1 + 40) + 104), a1 + 48, v1, *(a1 + 54));
  }

  else
  {
    return (*(*v2 + 48))(*(*(a1 + 40) + 104), a1 + 48, v1);
  }
}

void sub_1004EF56C(uint64_t a1, void *a2)
{
  v3 = a2;
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 40);
  [*(a1 + 496) removeObject:v3];
  [*(a1 + 504) removeObjectForKey:v3];
  [*(a1 + 488) removeObject:v3];
  if (qword_100B50F78 != -1)
  {
    sub_10083A29C();
  }

  if ((sub_100580920(qword_100B50F70, v3) & 1) == 0)
  {
    v4 = *(a1 + 336);
    if (v4 != *(a1 + 344))
    {
      v5 = -v4;
      while (1)
      {
        v6 = sub_10004DF60(v4);
        v7 = [v3 isEqual:v6];

        if (v7)
        {
          break;
        }

        v4 += 20;
        v5 -= 20;
        if (v4 == *(a1 + 344))
        {
          goto LABEL_12;
        }
      }

      v8 = -v5;
      v9 = *(a1 + 344);
      if (20 - v5 != v9)
      {
        do
        {
          uuid_copy(v8, (v8 + 20));
          *(v8 + 16) = *(v8 + 36);
          v8 += 20;
        }

        while (v8 + 20 != v9);
      }

      *(a1 + 344) = v8;
    }
  }

LABEL_12:
  v10 = *(a1 + 408);
  v11 = (a1 + 416);
  if (v10 != (a1 + 416))
  {
    do
    {
      v12 = v10[5];
      if (v12 != v10[6])
      {
        v13 = -v12;
        while (1)
        {
          v14 = sub_10004DF60(v12);
          v15 = [v3 isEqual:v14];

          if (v15)
          {
            break;
          }

          v12 += 18;
          v13 -= 18;
          if (v12 == v10[6])
          {
            goto LABEL_21;
          }
        }

        v16 = -v13;
        v17 = v10[6];
        if (18 - v13 != v17)
        {
          do
          {
            uuid_copy(v16, (v16 + 18));
            *(v16 + 16) = *(v16 + 34);
            v16 += 18;
          }

          while (v16 + 18 != v17);
        }

        v10[6] = v16;
      }

LABEL_21:
      v18 = v10[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v10[2];
          v20 = *v19 == v10;
          v10 = v19;
        }

        while (!v20);
      }

      v10 = v19;
    }

    while (v19 != v11);
  }

  sub_1000088CC(v21);
}

void sub_1004EF838(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "GattServer device %{public}@ connected for session %p", buf, 0x16u);
  }

  sub_10004DFB4(buf, v6);
  if (a1 + 544 != sub_10004E34C(a1 + 536, buf) && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
  {
    sub_10083AAFC();
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100007F88(buf, a1 + 40);
  if (a4)
  {
    sub_10004DFB4(uu1, v6);
    v9 = uu1;
    sub_1004F3F98((a1 + 536), uu1, &unk_1008A9BD0, &v9, &v8)[6] = a4;
  }

  else if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_10083AB7C();
  }

  sub_10000801C(buf);
  if (qword_100B50F78 != -1)
  {
    sub_10083A29C();
  }

  if (sub_100580920(qword_100B50F70, v6))
  {
    sub_100007FB8(buf);
    sub_1004E9DB8(a1, v6, (*(*(a1 + 128) + 48) + 1), 0xFFFFLL);
  }

  sub_1000088CC(buf);
}

void sub_1004EFA44(uint64_t a1, void *a2)
{
  v3 = a2;
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 40);
  sub_10004DFB4(uu2, v3);
  v4 = sub_10004E34C(a1 + 536, uu2);
  if ((a1 + 544) == v4)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10083ABB0();
    }
  }

  else
  {
    sub_10002717C((a1 + 536), v4);
    operator delete(v4);
  }

  v5 = *(a1 + 408);
  if (v5 != (a1 + 416))
  {
    do
    {
      for (i = v5[5]; i != v5[6]; i += 18)
      {
        v7 = sub_10004DF60(i);
        v8 = [v3 isEqual:v7];

        if (v8)
        {
          if (*(i + 16))
          {
            v11 = *(v5[4] + 16);
            v12 = sub_100007EE8(v9, v10);
            v16[0] = _NSConcreteStackBlock;
            v16[1] = 3221225472;
            v16[2] = sub_1004EFCB8;
            v16[3] = &unk_100AE1228;
            v18 = a1;
            v19 = v11;
            v17 = v3;
            sub_10000CA94(v12, v16);
          }

          break;
        }
      }

      v13 = v5[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v5[2];
          v15 = *v14 == v5;
          v5 = v14;
        }

        while (!v15);
      }

      v5 = v14;
    }

    while (v14 != (a1 + 416));
  }

  sub_1004EF56C(a1, v3);
  sub_1004EAFD4(a1);
  sub_1000088CC(v20);
}

void sub_1004EFCEC(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 40);
  if (!a3)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); i += 20)
    {
      sub_10004DFB4(uu2, v5);
      if (!uuid_compare(i, uu2))
      {
        if (qword_100B508D0 != -1)
        {
          sub_100839E0C();
        }

        sub_10078CD44(off_100B508C8, v5, 1);
        break;
      }
    }
  }

  sub_1000088CC(v7);
}

void sub_1004EFDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_1004EFE0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 40);
  if (qword_100B508B0 != -1)
  {
    sub_10083AC24();
  }

  v4 = off_100B508A8;
  sub_10004DFB4(v6, v3);
  if (!sub_100050290(v4, v6))
  {
    sub_1004EF56C(a1, v3);
  }

  sub_1000088CC(v5);
}

void sub_1004EFED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

uint64_t sub_1004EFF08(uint64_t a1)
{
  v96[0] = 0;
  v96[1] = 0;
  sub_100007F88(v96, a1 + 40);
  v1 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: -------------------- GATT Server ---------------------", buf, 2u);
  }

  sub_1004E8FF0(a1);
  v2 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Client Config Descriptors:", buf, 2u);
    v2 = qword_100BCE910;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    GATT 'Service Changed':", buf, 2u);
  }

  v3 = *(a1 + 336);
  for (i = *(a1 + 344); v3 != i; v3 += 20)
  {
    v5 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0u;
      memset(v103, 0, 21);
      uuid_unparse_upper(v3, buf);
      sub_100007E30(v100, buf);
      if (v100[23] >= 0)
      {
        v6 = v100;
      }

      else
      {
        v6 = *v100;
      }

      v7 = *(v3 + 16);
      v8 = *(v3 + 18);
      *v101 = 136446722;
      *&v101[4] = v6;
      *&v101[12] = 1024;
      *&v101[14] = v7;
      *&v101[18] = 1024;
      *&v101[20] = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:       %{public}s - [0x%04x, 0x%04x]", v101, 0x18u);
      if ((v100[23] & 0x80000000) != 0)
      {
        operator delete(*v100);
      }

      i = *(a1 + 344);
    }
  }

  v9 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump:    User-specified:", buf, 2u);
  }

  v10 = *(a1 + 408);
  if (v10 != (a1 + 416))
  {
    v82 = 67109120;
    do
    {
      v11 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v12 = **(v10[4] + 8);
        *buf = 67109120;
        *&buf[4] = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "statedump:       0x%04x", buf, 8u);
      }

      v13 = v10[5];
      v14 = v10[6];
      while (v13 != v14)
      {
        v15 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0u;
          memset(v103, 0, 21);
          uuid_unparse_upper(v13, buf);
          sub_100007E30(v101, buf);
          if ((v101[23] & 0x80u) == 0)
          {
            v16 = v101;
          }

          else
          {
            v16 = *v101;
          }

          v17 = "Indicate";
          if (*(v13 + 16) == 1)
          {
            v17 = "Notify";
          }

          *v100 = 136446466;
          *&v100[4] = v16;
          *&v100[12] = 2082;
          *&v100[14] = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "statedump:          %{public}s (%{public}s)", v100, 0x16u);
          if (v101[23] < 0)
          {
            operator delete(*v101);
          }

          v14 = v10[6];
        }

        v13 += 18;
      }

      v18 = v10[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v10[2];
          v20 = *v19 == v10;
          v10 = v19;
        }

        while (!v20);
      }

      v10 = v19;
    }

    while (v19 != (a1 + 416));
  }

  v21 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: Pending transactions:", buf, 2u);
    v21 = qword_100BCE910;
  }

  v22 = *(a1 + 384);
  if (v22 != (a1 + 392))
  {
    do
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(v22 + 8);
        *buf = 67109120;
        *&buf[4] = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump:    Transaction #%d", buf, 8u);
        v21 = qword_100BCE910;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(v22 + 10);
        *buf = 67109120;
        *&buf[4] = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump:       Attribute ID: 0x%0x", buf, 8u);
        v21 = qword_100BCE910;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v22 + 44))
        {
          v25 = "Execute Write";
        }

        else
        {
          v25 = "Read/Write";
        }

        *buf = 136446210;
        *&buf[4] = v25;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump:       Type: %{public}s", buf, 0xCu);
        v21 = qword_100BCE910;
      }

      v26 = v22[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v22[2];
          v20 = *v27 == v22;
          v22 = v27;
        }

        while (!v20);
      }

      v22 = v27;
    }

    while (v27 != (a1 + 392));
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: Update Queue:", buf, 2u);
    v21 = qword_100BCE910;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 480))
    {
      v28 = "yes";
    }

    else
    {
      v28 = "no";
    }

    *buf = 136446210;
    *&buf[4] = v28;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump:    TX full: %{public}s", buf, 0xCu);
    v21 = qword_100BCE910;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump:    Updates:", buf, 2u);
  }

  v29 = *(a1 + 464);
  v30 = *(a1 + 440);
  v31 = *(a1 + 448);
  v32 = (v30 + 8 * (v29 >> 8));
  if (v31 == v30)
  {
    v33 = 0;
  }

  else
  {
    v33 = (*v32 + 16 * v29);
  }

  while (1)
  {
    if (v31 == v30)
    {
      v35 = 0;
    }

    else
    {
      v34 = *(a1 + 472) + *(a1 + 464);
      v35 = *(v30 + ((v34 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v34;
    }

    if (v33 == v35)
    {
      break;
    }

    v36 = v33[1];
    v37 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      if (*v33)
      {
        sub_100018384(*v33, buf);
        if (v103[0] >= 0)
        {
          v38 = buf;
        }

        else
        {
          v38 = *buf;
        }

        *v101 = 136446210;
        *&v101[4] = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "statedump:       %{public}s", v101, 0xCu);
        if (SHIBYTE(v103[0]) < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        *v101 = 136446210;
        *&v101[4] = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "statedump:       %{public}s", v101, 0xCu);
      }

      v37 = qword_100BCE910;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v39 = **(*(v36 + 8) + 8);
      *buf = 67109120;
      *&buf[4] = v39;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "statedump:          Characteristic handle: 0x%04x", buf, 8u);
      v37 = qword_100BCE910;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      sub_10000C250(v36 + 24, buf);
      v40 = v103[0] >= 0 ? buf : *buf;
      *v101 = 136446210;
      *&v101[4] = v40;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "statedump:          Value: %{public}s", v101, 0xCu);
      if (SHIBYTE(v103[0]) < 0)
      {
        operator delete(*buf);
      }
    }

    v33 += 2;
    if ((v33 - *v32) == 4096)
    {
      v41 = v32[1];
      ++v32;
      v33 = v41;
    }

    v30 = *(a1 + 440);
    v31 = *(a1 + 448);
  }

  v42 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "statedump:    Stalled devices:", buf, 2u);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v43 = *(a1 + 488);
  v44 = [v43 countByEnumeratingWithState:&v92 objects:v99 count:16];
  if (v44)
  {
    v45 = *v93;
    do
    {
      for (j = 0; j != v44; j = j + 1)
      {
        if (*v93 != v45)
        {
          objc_enumerationMutation(v43);
        }

        v47 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          v48 = *(*(&v92 + 1) + 8 * j);
          *buf = 138543362;
          *&buf[4] = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "statedump:       %{public}@", buf, 0xCu);
        }
      }

      v44 = [v43 countByEnumeratingWithState:&v92 objects:v99 count:16];
    }

    while (v44);
  }

  v49 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "statedump:    Outstanding App Indications:", buf, 2u);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v50 = *(a1 + 504);
  v51 = [v50 countByEnumeratingWithState:&v88 objects:v98 count:16];
  if (v51)
  {
    v52 = *v89;
    do
    {
      for (k = 0; k != v51; k = k + 1)
      {
        if (*v89 != v52)
        {
          objc_enumerationMutation(v50);
        }

        v54 = *(*(&v88 + 1) + 8 * k);
        v55 = [*(a1 + 504) objectForKey:{v54, v82}];
        v56 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          if (v55)
          {
            sub_100018384(v55, buf);
            v57 = buf;
            if (v103[0] < 0)
            {
              v57 = *buf;
            }

            *v101 = 136446466;
            *&v101[4] = v57;
            *&v101[12] = 2114;
            *&v101[14] = v54;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "statedump:       %{public}s - %{public}@", v101, 0x16u);
            if (SHIBYTE(v103[0]) < 0)
            {
              operator delete(*buf);
            }
          }

          else
          {
            *v101 = 136446466;
            *&v101[4] = 0;
            *&v101[12] = 2114;
            *&v101[14] = v54;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "statedump:       %{public}s - %{public}@", v101, 0x16u);
          }
        }
      }

      v51 = [v50 countByEnumeratingWithState:&v88 objects:v98 count:16];
    }

    while (v51);
  }

  v58 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "statedump:    Outstanding Server Indications:", buf, 2u);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v59 = *(a1 + 496);
  v60 = [v59 countByEnumeratingWithState:&v84 objects:v97 count:16];
  if (v60)
  {
    v61 = *v85;
    do
    {
      for (m = 0; m != v60; m = m + 1)
      {
        if (*v85 != v61)
        {
          objc_enumerationMutation(v59);
        }

        v63 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          v64 = *(*(&v84 + 1) + 8 * m);
          *buf = 138543362;
          *&buf[4] = v64;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "statedump:       %{public}@", buf, 0xCu);
        }
      }

      v60 = [v59 countByEnumeratingWithState:&v84 objects:v97 count:16];
    }

    while (v60);
  }

  v65 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "statedump: Prepared writes:", buf, 2u);
  }

  v66 = *(a1 + 512);
  if (v66 != (a1 + 520))
  {
    v67 = (a1 + 544);
    do
    {
      memset(v101, 0, 24);
      sub_100007E30(v101, "Unknown");
      v68 = *(a1 + 536);
      if (v68 != v67)
      {
        while (*(v68 + 6) != v66[4])
        {
          v69 = *(v68 + 1);
          if (v69)
          {
            do
            {
              v70 = v69;
              v69 = *v69;
            }

            while (v69);
          }

          else
          {
            do
            {
              v70 = *(v68 + 2);
              v20 = *v70 == v68;
              v68 = v70;
            }

            while (!v20);
          }

          v68 = v70;
          if (v70 == v67)
          {
            goto LABEL_148;
          }
        }

        *buf = 0u;
        memset(v103, 0, 21);
        uuid_unparse_upper(v68 + 32, buf);
        sub_100007E30(v100, buf);
        if (v101[23] < 0)
        {
          operator delete(*v101);
        }

        *v101 = *v100;
        *&v101[16] = *&v100[16];
      }

LABEL_148:
      v71 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v72 = v101;
        if ((v101[23] & 0x80u) != 0)
        {
          v72 = *v101;
        }

        *buf = 136446210;
        *&buf[4] = v72;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", buf, 0xCu);
      }

      v73 = v66[5];
      v74 = v66[6];
      while (v73 != v74)
      {
        v75 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          v76 = *v73;
          v77 = *(v73 + 2);
          sub_10000C250((v73 + 2), v100);
          v78 = v100;
          if (v100[23] < 0)
          {
            v78 = *v100;
          }

          *buf = 67109634;
          *&buf[4] = v76;
          *&buf[8] = 1024;
          *&buf[10] = v77;
          *&buf[14] = 2082;
          v103[0] = v78;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "statedump:       0x%0x @ %d [ %{public}s ]", buf, 0x18u);
          if ((v100[23] & 0x80000000) != 0)
          {
            operator delete(*v100);
          }

          v74 = v66[6];
        }

        v73 += 8;
      }

      if (v101[23] < 0)
      {
        operator delete(*v101);
      }

      v79 = v66[1];
      if (v79)
      {
        do
        {
          v80 = v79;
          v79 = *v79;
        }

        while (v79);
      }

      else
      {
        do
        {
          v80 = v66[2];
          v20 = *v80 == v66;
          v66 = v80;
        }

        while (!v20);
      }

      v66 = v80;
    }

    while (v80 != (a1 + 520));
  }

  return sub_1000088CC(v96);
}

void sub_1004F0E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004F0F04(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_1004F0FD0((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1004F0FD0(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1004F116C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004F11A4(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(a1 + 16) = 0;
  *a1 = off_100B08D40;
  *(a1 + 8) = a1 + 24;
  v5 = *(a3 + 8);
  *(a1 + 72) = &off_100AE0A78;
  *(a1 + 80) = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }

  *(a1 + 24) = a2;
  *(a1 + 26) = 0;
  *(a1 + 44) = 0;
  *(a1 + 28) = xmmword_1008A9C10;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  return a1;
}

__n128 sub_1004F1240(uint64_t a1, int a2, __int16 a3, __int16 a4, __int128 *a5)
{
  *(a1 + 16) = 0;
  *a1 = off_100B08DD0;
  *(a1 + 8) = a1 + 24;
  *(a1 + 96) = a2;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  v5 = &unk_1008A9C38;
  if (a2)
  {
    v5 = &xmmword_1008A9C24;
  }

  v6 = v5[1].n128_u32[0];
  result = *v5;
  v8 = *(a5 + 4);
  v9 = *a5;
  *(a1 + 24) = a3;
  *(a1 + 26) = 0;
  *(a1 + 28) = result;
  *(a1 + 44) = v6;
  *(a1 + 48) = a4;
  *(a1 + 58) = 0;
  *(a1 + 50) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v9;
  *(a1 + 88) = v8;
  *(a1 + 92) = 0;
  return result;
}

uint64_t sub_1004F1320(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  *a1 = off_100B08DD0;
  *(a1 + 8) = a1 + 24;
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  *(a1 + 40) = v3;
  v6 = *(a2 + 96);
  *(a1 + 168) = 0;
  *(a1 + 96) = v6;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  if (*(a2 + 104) != *(a2 + 112))
  {
    operator new();
  }

  *(a1 + 128) = *(a2 + 128);
  if (*(a2 + 136) != *(a2 + 144))
  {
    operator new();
  }

  *(a1 + 160) = *(a2 + 160);
  if (a1 != a2)
  {
    sub_10003A598((a1 + 168), *(a2 + 168), *(a2 + 176), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 176) - *(a2 + 168)) >> 2));
  }

  return a1;
}

void sub_1004F1664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  v14 = *a10;
  if (*a10)
  {
    v10[22] = v14;
    operator delete(v14);
  }

  v15 = *v12;
  if (*v12)
  {
    v10[18] = v15;
    operator delete(v15);
  }

  v16 = *v11;
  if (*v11)
  {
    v10[14] = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004F16CC(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  *a1 = off_100B08D70;
  *(a1 + 8) = a1 + 24;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  v7 = *(a2 + 88);
  *(a1 + 96) = 0u;
  v8 = a1 + 96;
  *(a1 + 88) = v7;
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  *(a1 + 112) = 0u;
  if (*(a2 + 96))
  {
    operator new();
  }

  for (i = *(a2 + 104); i != *(a2 + 112); i += 8)
  {
    v10 = (*(**i + 16))();
    v12 = *(a1 + 112);
    v11 = *(a1 + 120);
    if (v12 >= v11)
    {
      v14 = *(v8 + 8);
      v15 = (v12 - v14) >> 3;
      if ((v15 + 1) >> 61)
      {
        sub_1000C7698();
      }

      v16 = v11 - v14;
      v17 = v16 >> 2;
      if (v16 >> 2 <= (v15 + 1))
      {
        v17 = v15 + 1;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        sub_100008108(v8 + 8, v18);
      }

      v19 = (8 * v15);
      *v19 = v10;
      v13 = 8 * v15 + 8;
      v20 = *(a1 + 104);
      v21 = *(a1 + 112) - v20;
      v22 = v19 - v21;
      memcpy(v19 - v21, v20, v21);
      v23 = *(a1 + 104);
      *(a1 + 104) = v22;
      *(a1 + 112) = v13;
      *(a1 + 120) = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v12 = v10;
      v13 = (v12 + 1);
    }

    *(a1 + 112) = v13;
  }

  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t sub_1004F18D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  *a1 = off_100B08D40;
  *(a1 + 8) = a1 + 24;
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  v5 = *(a2 + 80);
  *(a1 + 72) = &off_100AE0A78;
  *(a1 + 80) = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }

  return a1;
}

void *sub_1004F1964(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a4;
  *a1 = v9;
  a1[1] = a2;
  a1[2] = a3;
  v10 = *(a5 + 8);
  a1[3] = &off_100AE0A78;
  a1[4] = v10;
  if (v10)
  {
    sub_10000C69C(v10);
  }

  return a1;
}

uint64_t sub_1004F1A18(uint64_t a1)
{
  if (qword_100B541E8 != -1)
  {
    sub_10083AC4C();
  }

  v2 = qword_100B541E0;
  v3 = *(a1 + 12);

  return sub_1004EC6F8(v2, v3);
}

uint64_t sub_1004F1AEC(uint64_t a1)
{
  if (qword_100B541E8 != -1)
  {
    sub_10083AC4C();
  }

  v2 = qword_100B541E0;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);

  return sub_1004EC7EC(v2, v3, v4);
}

uint64_t sub_1004F1B5C(uint64_t a1)
{
  if (qword_100B541E8 != -1)
  {
    sub_10083AC4C();
  }

  v2 = qword_100B541E0;
  v3 = *(a1 + 16);

  return sub_1004ECA80(v2, v3);
}

uint64_t sub_1004F1BC8(uint64_t a1)
{
  if (qword_100B541E8 != -1)
  {
    sub_10083AC4C();
  }

  v2 = qword_100B541E0;
  v3 = *(a1 + 16);

  return sub_1004ECD68(v2, v3);
}

uint64_t sub_1004F1C1C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, _DWORD *a5, char a6)
{
  v11 = a3;
  *(a1 + 8) = 1;
  *a1 = off_100AFA6B0;
  *(a1 + 16) = a2;
  v12 = v11;
  *(a1 + 32) = 0;
  *(a1 + 24) = v12;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_1004F1DE8((a1 + 32), *a4, a4[1], (a4[1] - *a4) >> 5);
  *(a1 + 56) = *a5;
  *(a1 + 60) = a6;

  return a1;
}

uint64_t sub_1004F1CDC(uint64_t a1)
{
  *a1 = off_100AFA6B0;
  v3 = (a1 + 32);
  sub_1004F25AC(&v3);

  return a1;
}

void sub_1004F1D3C(uint64_t a1)
{
  *a1 = off_100AFA6B0;
  v2 = (a1 + 32);
  sub_1004F25AC(&v2);

  operator delete();
}

uint64_t *sub_1004F1DE8(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004F1E48(result, a4);
  }

  return result;
}

void sub_1004F1E48(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1004F1E84(a1, a2);
  }

  sub_1000C7698();
}

void sub_1004F1E84(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_1004F1ECC(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v4 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a4 + 8;
    do
    {
      v8 = *v6;
      *(v4 + 4) = *(v6 + 2);
      *v4 = v8;
      v9 = *(v6 + 2);
      *(v4 + 8) = &off_100AE0A78;
      *(v4 + 16) = v9;
      if (v9)
      {
        sub_10000C69C(v9);
      }

      *(v4 + 24) = *(v6 + 24);
      v6 += 8;
      v4 += 32;
      v7 += 32;
    }

    while (v6 != a3);
  }

  return v4;
}

uint64_t sub_1004F1F78(uint64_t a1)
{
  if (qword_100B541E8 != -1)
  {
    sub_10083AC4C();
  }

  v2 = qword_100B541E0;
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return sub_1004ECEF4(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1004F1FF4(uint64_t a1)
{
  if (qword_100B541E8 != -1)
  {
    sub_10083AC4C();
  }

  v2 = qword_100B541E0;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);

  return sub_1004ED148(v2, v3, v4);
}

uint64_t sub_1004F2048(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, _WORD *a5, uint64_t a6, _DWORD *a7, char a8)
{
  v15 = a3;
  *(a1 + 8) = 1;
  *a1 = off_100AFA758;
  *(a1 + 16) = a2;
  v16 = v15;
  *(a1 + 24) = v16;
  *(a1 + 32) = *a4;
  *(a1 + 36) = *a5;
  v17 = *(a6 + 8);
  *(a1 + 40) = &off_100AE0A78;
  *(a1 + 48) = v17;
  if (v17)
  {
    sub_10000C69C(v17);
  }

  *(a1 + 56) = *a7;
  *(a1 + 60) = a8;

  return a1;
}

uint64_t sub_1004F2138(uint64_t a1)
{
  *a1 = off_100AFA758;
  *(a1 + 40) = &off_100AE0A78;
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_10000C808(v2);
  }

  return a1;
}

void sub_1004F21AC(uint64_t a1)
{
  *a1 = off_100AFA758;
  *(a1 + 40) = &off_100AE0A78;
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_10000C808(v2);
  }

  operator delete();
}

void sub_1004F2298(uint64_t a1)
{
  if (*(a1 + 10) == 1)
  {
    if (qword_100B541E8 != -1)
    {
      sub_10083AC4C();
    }

    v2 = qword_100B541E0;
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    v5 = *(a1 + 28);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    sub_1004EEBC4(v2, v3, v4, v5, v6, v7);
  }

  else
  {
    if (qword_100B541E8 != -1)
    {
      sub_10083AC4C();
    }

    v8 = qword_100B541E0;
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    v11 = *(a1 + 28);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);

    sub_1004ED598(v8, v9, v10, v11, v12, v13, v14);
  }
}

uint64_t sub_1004F2350(uint64_t a1, char a2, uint64_t a3, char a4, __int16 a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, char a10)
{
  *(a1 + 8) = 1;
  *a1 = &off_100AFA7C8;
  *(a1 + 10) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 26) = a5;
  v13 = *(a6 + 8);
  *(a1 + 32) = &off_100AE0A78;
  *(a1 + 40) = v13;
  if (v13)
  {
    sub_10000C69C(v13);
  }

  *(a1 + 48) = a7;
  *(a1 + 56) = a8;
  *(a1 + 64) = a9;
  *(a1 + 72) = a10;
  return a1;
}

void *sub_1004F2400(void *a1)
{
  *a1 = &off_100AFA7C8;
  a1[4] = &off_100AE0A78;
  v2 = a1[5];
  if (v2)
  {
    sub_10000C808(v2);
  }

  return a1;
}

void sub_1004F246C(void *a1)
{
  *a1 = &off_100AFA7C8;
  a1[4] = &off_100AE0A78;
  v1 = a1[5];
  if (v1)
  {
    sub_10000C808(v1);
  }

  operator delete();
}

void sub_1004F24F8(uint64_t a1)
{
  if (*(a1 + 10) == 1)
  {
    if (qword_100B541E8 != -1)
    {
      sub_10083AC4C();
    }

    sub_1004EEE54(qword_100B541E0, *(a1 + 16), *(a1 + 24), *(a1 + 26), a1 + 32, *(a1 + 48), *(a1 + 56), *(a1 + 64));
  }

  else
  {
    if (qword_100B541E8 != -1)
    {
      sub_10083AC4C();
    }

    sub_1004EE5B0(qword_100B541E0, *(a1 + 16), *(a1 + 24), *(a1 + 26), a1 + 32, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  }
}

void sub_1004F25AC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1004F2600(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1004F2600(uint64_t result, uint64_t a2)
{
  v4 = *(result + 8);
  if (v4 != a2)
  {
    v5 = v4 - 24;
    do
    {
      *(v4 - 24) = &off_100AE0A78;
      v6 = *(v4 - 16);
      if (v6)
      {
        sub_10000C808(v6);
      }

      v4 -= 32;
      v5 -= 32;
    }

    while (v4 != a2);
  }

  *(result + 8) = a2;
}

void sub_1004F2678(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1004F2678(a1, *a2);
    sub_1004F2678(a1, a2[1]);
    sub_10000CEDC((a2 + 7), a2[8]);

    operator delete(a2);
  }
}

uint64_t sub_1004F26D8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10035F858(a1);
}

void sub_1004F2784(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1004F2784(a1, *a2);
    sub_1004F2784(a1, *(a2 + 1));
    v4 = (a2 + 40);
    sub_1004F25AC(&v4);
    operator delete(a2);
  }
}

uint64_t sub_1004F27E4(uint64_t **a1, unsigned __int8 *a2, uint64_t a3, _OWORD **a4)
{
  v6 = 0;
  v4 = *sub_1000994CC(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_1004F2A38(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0xCCCCCCCCCCCCCCCLL)
  {
    sub_1000C7698();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 2) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 2);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 2) >= 0x666666666666666)
  {
    v6 = 0xCCCCCCCCCCCCCCCLL;
  }

  else
  {
    v6 = v3;
  }

  v13 = a1;
  if (v6)
  {
    sub_1004F2C68(a1, v6);
  }

  __p = 0;
  v10 = 20 * v2;
  v11 = 20 * v2;
  v12 = 0;
  uuid_copy((20 * v2), a2);
  *(v10 + 16) = *(a2 + 16);
  v11 += 20;
  sub_1004F2BBC(a1, &__p);
  v7 = a1[1];
  if (v11 != v10)
  {
    v11 = (v11 - v10 - 20) % 0x14uLL + v10;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_1004F2B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004F2BBC(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v4 + *a1 - v6;
  if (v6 != *a1)
  {
    v8 = v4 + *a1 - v6;
    do
    {
      uuid_copy(v8, v5);
      *(v8 + 16) = *(v5 + 16);
      v5 += 20;
      v8 += 20;
    }

    while (v5 != v6);
    v5 = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  a1[1] = v5;
  a2[1] = v5;
  v9 = a1[1];
  a1[1] = a2[2];
  a2[2] = v9;
  v10 = a1[2];
  a1[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void sub_1004F2C68(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t *sub_1004F2D24(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10002717C(a1, a2);
  v5 = (a2 + 40);
  sub_1004F25AC(&v5);
  operator delete(a2);
  return v3;
}

uint64_t *sub_1004F2D70(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10002717C(a1, a2);
  v4 = a2[5];
  if (v4)
  {
    a2[6] = v4;
    operator delete(v4);
  }

  operator delete(a2);
  return v3;
}

void *sub_1004F2DB4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 4);
    if (v4 < 1)
    {
      result -= (255 - v4) >> 8;
    }

    else
    {
      result += v4 >> 8;
    }
  }

  return result;
}

uint64_t sub_1004F2E10(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

uint64_t sub_1004F2E70(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x100)
  {
    a2 = 1;
  }

  if (v5 < 0x200)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

__n128 sub_1004F2EE0@<Q0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X5>, uint64_t a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v22 = 0;
    v23 = 0uLL;
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v22 = 0;
    v23 = 0uLL;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      sub_1004F2FD0(v16, v18, v13, v14, &v22);
      v14 = v23.n128_i64[1];
      v13 = v23.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v22 = 0;
      v23 = 0uLL;
      v18 = v19 + 4096;
    }

    v20 = *v17;
    v22 = 0;
    v23 = 0uLL;
    v12 = v20 + 4096;
    v11 = a2;
  }

  sub_1004F2FD0(v11, v12, v13, v14, &v22);
  result = v23;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void sub_1004F2FD0(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  if (a1 == a2)
  {
    a2 = a1;
  }

  else
  {
    v5 = *a3;
    v6 = a2;
    while (1)
    {
      v7 = a4 - v5;
      if ((v6 - a1) >> 4 >= v7 >> 4)
      {
        v8 = v7 >> 4;
      }

      else
      {
        v8 = (v6 - a1) >> 4;
      }

      if (v8)
      {
        v9 = (v6 - 8);
        v10 = -16 * v8;
        do
        {
          *(a4 - 16) = *(v9 - 1);
          a4 -= 16;
          v11 = *v9;
          v9 -= 2;
          *(a4 + 8) = v11;
          v10 += 16;
        }

        while (v10);
      }

      v6 -= 16 * v8;
      if (v6 == a1)
      {
        break;
      }

      v12 = *--a3;
      v5 = v12;
      a4 = v12 + 4096;
    }

    if (*a3 + 4096 == a4)
    {
      v13 = a3[1];
      ++a3;
      a4 = v13;
    }
  }

  *a5 = a2;
  a5[1] = a3;
  a5[2] = a4;
}

double sub_1004F305C(uint64_t *a1, char *a2, uint64_t *a3, char *a4, char ***a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
  }

  else
  {
    v11 = a1 + 1;
    v10 = *a1;
    v7 = *a5;
    v8 = a5[1];
    v15 = 0;
    v16 = 0uLL;
    for (i = (v10 + 4096); ; i = v13 + 4096)
    {
      sub_1004F3118(a2, i, v7, v8, &v15);
      v8 = *(&v16 + 1);
      v7 = v16;
      *a5 = v16;
      a5[1] = v8;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      a2 = v13;
      v15 = 0;
      v16 = 0uLL;
    }

    a2 = *v11;
  }

  v15 = 0;
  v16 = 0uLL;
  sub_1004F3118(a2, a4, v7, v8, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

void sub_1004F3118(char *a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, char **a5@<X8>)
{
  if (a1 == a2)
  {
    v8 = a1;
    goto LABEL_15;
  }

  v5 = *a3;
  while (1)
  {
    v6 = v5 - a4 + 4096;
    v7 = (a2 - a1) >> 4 >= v6 >> 4 ? v6 >> 4 : (a2 - a1) >> 4;
    if (v7)
    {
      break;
    }

LABEL_11:
    v9 = a3[1];
    ++a3;
    v5 = v9;
    a4 = v9;
  }

  v8 = &a1[16 * v7];
  do
  {
    *a4 = *a1;
    *(a4 + 1) = *(a1 + 1);
    a1 += 16;
    a4 += 16;
  }

  while (a1 != v8);
  if (v8 != a2)
  {
    a1 = v8;
    goto LABEL_11;
  }

  if (a4 == *a3 + 4096)
  {
    v10 = a3[1];
    ++a3;
    a4 = v10;
  }

LABEL_15:
  *a5 = v8;
  a5[1] = a3;
  a5[2] = a4;
}

uint64_t sub_1004F31A8(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0xCCCCCCCCCCCCCCCLL)
  {
    sub_1000C7698();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 2) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 2);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 2) >= 0x666666666666666)
  {
    v6 = 0xCCCCCCCCCCCCCCCLL;
  }

  else
  {
    v6 = v3;
  }

  v13 = a1;
  if (v6)
  {
    sub_1004F2C68(a1, v6);
  }

  __p = 0;
  v10 = 20 * v2;
  v11 = 20 * v2;
  v12 = 0;
  uuid_copy((20 * v2), a2);
  *(v10 + 16) = *(a2 + 16);
  v11 += 20;
  sub_1004F2BBC(a1, &__p);
  v7 = a1[1];
  if (v11 != v10)
  {
    v11 = (v11 - v10 - 20) % 0x14uLL + v10;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_1004F32DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004F332C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_100008108(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_1004F3500(a1, &v9);
}

void sub_1004F34B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1004F3500(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_100008108(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_1004F3608(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_100008108(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_1004F3714(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_100008108(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

uint64_t *sub_1004F3820(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void *sub_1004F38F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1004F39C8(uint64_t *a1, int *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = sub_1004F3A90(a1, a2);
  }

  else
  {
    sub_1004F3A0C(a1, a2);
    v4 = v3 + 32;
  }

  a1[1] = v4;
  return v4 - 32;
}

void sub_1004F3A0C(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  *(v4 + 4) = *(a2 + 2);
  *v4 = v5;
  v6 = *(a2 + 2);
  *(v4 + 8) = &off_100AE0A78;
  *(v4 + 16) = v6;
  if (v6)
  {
    sub_10000C69C(v6);
  }

  *(v4 + 24) = *(a2 + 24);
  *(a1 + 8) = v4 + 32;
}

uint64_t sub_1004F3A90(uint64_t *a1, int *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000C7698();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v22 = a1;
  if (v7)
  {
    sub_1004F1E84(a1, v7);
  }

  v8 = 32 * v2;
  v19 = 0;
  v20 = v8;
  v21 = v8;
  v9 = *a2;
  *(v8 + 4) = *(a2 + 2);
  *v8 = v9;
  v10 = *(a2 + 2);
  *(v8 + 8) = &off_100AE0A78;
  *(v8 + 16) = v10;
  v11 = v8;
  v12 = v8;
  if (v10)
  {
    sub_10000C69C(v10);
    v11 = v20;
    v12 = v21;
  }

  *(v8 + 24) = *(a2 + 24);
  *&v21 = v12 + 32;
  v13 = a1[1];
  v14 = v11 + *a1 - v13;
  sub_1004F3BE0(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_1004F3CC4(&v19);
  return v18;
}

void sub_1004F3BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1004F3CC4(va);
  _Unwind_Resume(a1);
}

void sub_1004F3BE0(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = a4 + 8;
    v8 = a2;
    do
    {
      v9 = *v8;
      *(v4 + 4) = *(v8 + 2);
      *v4 = v9;
      v10 = *(v8 + 2);
      *(v4 + 8) = &off_100AE0A78;
      *(v4 + 16) = v10;
      if (v10)
      {
        sub_10000C69C(v10);
      }

      *(v4 + 24) = *(v8 + 24);
      v8 += 8;
      v4 += 32;
      v7 += 32;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v11 = v6 + 2;
      do
      {
        *(v6 + 1) = &off_100AE0A78;
        v12 = *(v6 + 2);
        if (v12)
        {
          sub_10000C808(v12);
        }

        v6 += 8;
        v11 += 8;
      }

      while (v6 != a3);
    }
  }
}

uint64_t sub_1004F3CC4(uint64_t a1)
{
  sub_1004F3CFC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1004F3CFC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  while (v2 != a2)
  {
    *(result + 16) = v2 - 32;
    *(v2 - 24) = &off_100AE0A78;
    v5 = *(v2 - 16);
    if (v5)
    {
      sub_10000C808(v5);
      v2 = *(result + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

uint64_t sub_1004F3D78(uint64_t *a1, unsigned __int8 *src)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v5 = sub_1004F3DEC(a1, src);
  }

  else
  {
    uuid_copy(a1[1], src);
    *(v4 + 16) = *(src + 8);
    v5 = v4 + 18;
    a1[1] = v4 + 18;
  }

  a1[1] = v5;
  return v5 - 18;
}

uint64_t sub_1004F3DEC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 1);
  v3 = v2 + 1;
  if (v2 + 1 > 0xE38E38E38E38E38)
  {
    sub_1000C7698();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 1) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 1);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 1) >= 0x71C71C71C71C71CLL)
  {
    v6 = 0xE38E38E38E38E38;
  }

  else
  {
    v6 = v3;
  }

  v13 = a1;
  if (v6)
  {
    sub_1003C45E4(a1, v6);
  }

  __p = 0;
  v10 = 18 * v2;
  v11 = 18 * v2;
  v12 = 0;
  uuid_copy((18 * v2), a2);
  *(v10 + 16) = *(a2 + 16);
  v11 += 18;
  sub_1003C5314(a1, &__p);
  v7 = a1[1];
  if (v11 != v10)
  {
    v11 = (v11 - v10 - 18) % 0x12uLL + v10;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_1004F3F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004F3F98(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_10004A7D0(a1, &v6, uu1);
  if (!result)
  {
    sub_1004F403C();
  }

  return result;
}

void sub_1004F40A8(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_1004F4C94(uint64_t a1, void *a2)
{
  obj = *(a1 + 112);
  v4 = a2;
  objc_sync_enter(obj);
  [*(a1 + 112) addObject:v4];

  objc_sync_exit(obj);
}

void sub_1004F4D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1004F4D28(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9[0] = @"kCBMsgArgDeviceUUID";
  v9[1] = @"kCBMsgArgAncsAuthorization";
  v10[0] = v5;
  v6 = [NSNumber numberWithBool:a3];
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  if (!(*(*a1 + 16))(a1))
  {
    v8 = 117;
    goto LABEL_5;
  }

  if ((*(*a1 + 16))(a1) == 1)
  {
    v8 = 67;
LABEL_5:
    sub_100052C08(a1, v8, v7);
  }
}

void sub_1004F4E94(void *a1, uint64_t a2)
{
  v5 = @"kCBMsgArgRequiresTCC";
  v3 = [NSNumber numberWithBool:a2];
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  sub_100052C08(a1, 3, v4);
}

id sub_1004F4F74(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableString);
  if ((*(*a1 + 16))(a1))
  {
    if ((*(*a1 + 16))(a1) == 1)
    {
      v3 = "Peripheral";
    }

    else
    {
      v4 = (*(*a1 + 16))(a1);
      v3 = "Unknown";
      if (v4 == 3)
      {
        v3 = "Classic";
      }
    }
  }

  else
  {
    v3 = "Central";
  }

  [v2 appendFormat:@"Type: %s\n", v3];
  sub_1004F5248((a1 + 8), __p);
  if (v14 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  [v2 appendFormat:@"Last foreground time: %s\n", v5];
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 24))
  {
    v6 = "Yes";
  }

  else
  {
    v6 = "No";
  }

  [v2 appendFormat:@"Supports backgrounding: %s\n", v6];
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = "Unknown";
    if (v7 == 1)
    {
      v8 = "Listener";
    }

    if (v7 == 2)
    {
      v9 = "Programmatic";
    }

    else
    {
      v9 = v8;
    }

    [v2 appendFormat:@"Pairing agent: %s\n", v9];
  }

  v10 = *(a1 + 129);
  if (v10 <= 7)
  {
    if (v10 == 2)
    {
      v11 = "terminated";
      goto LABEL_34;
    }

    if (v10 == 4)
    {
      v11 = "suspended";
      goto LABEL_34;
    }

LABEL_33:
    v11 = "unknown";
    goto LABEL_34;
  }

  if (v10 == 8)
  {
    v11 = "background-running";
    goto LABEL_34;
  }

  if (v10 == 16)
  {
    v11 = "foreground-running";
    goto LABEL_34;
  }

  if (v10 != 32)
  {
    goto LABEL_33;
  }

  v11 = "daemon";
LABEL_34:
  [v2 appendFormat:@"Execution state: %s\n", v11];
  if (!(*(*a1 + 16))(a1) && *(a1 + 73) == 1)
  {
    [v2 appendFormat:@"Session is a Extension\n"];
  }

  return v2;
}

void sub_1004F521C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1004F5248@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = 0u;
  v7 = 0u;
  *__str = 0u;
  v5 = 0u;
  snprintf(__str, 0x3FuLL, "%0llu.%0llu", *a1, a1[1]);
  return sub_100007E30(a2, __str);
}

void sub_1004F52F4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v23 = 0;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v9 = off_100B508A8;
  sub_10004DFB4(v26, v7);
  v10 = sub_1000C4FCC(v9, v26, &v23);
  if (v23)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    if (qword_100B508B0 != -1)
    {
      sub_10083AEE8();
    }

    v12 = off_100B508A8;
    sub_10004DFB4(v26, v7);
    v13 = sub_10074E9A4(v12, v26);
    if (!v13)
    {
      v13 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        sub_10083AF10();
      }
    }

    v15 = sub_1000B4EFC(v13, v14);
    v16 = v23;
    v17 = v8;
    v18 = sub_100373BD8(v15, v16, [v8 bytes], objc_msgSend(v8, "length"));
    if (v18 && os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10083AF80();
    }
  }

  else
  {
    v19 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(a2, v26);
      sub_10083AE64(v26, v7, buf, v19);
    }

    v18 = 312;
  }

  v20 = *(a1 + 120);
  v21 = xpc_dictionary_create(0, 0, 0);
  *uuid = 0;
  v25 = 0;
  [v7 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v21, "kCBMsgArgDeviceUUID", uuid);
  xpc_dictionary_set_int64(v21, "kCBMsgArgResult", v18);
  if (v18)
  {
    v22 = 0;
  }

  else
  {
    v22 = [v8 length];
  }

  xpc_dictionary_set_int64(v21, "kCBMsgArgBytesSent", v22);
  if (v20)
  {
    sub_10004DFB8(v20 - 144, 145, v21, 1);
  }

  else
  {
    xpc_release(v21);
  }

  if (*(a1 + 352))
  {
    if (qword_100B512F8 != -1)
    {
      sub_10083AC60();
    }

    sub_1003B2518(off_100B512F0, *(a1 + 88), 1);
  }
}

uint64_t sub_1004F55E0(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 28);
  }

  return v1 & 1;
}

void sub_1004F55F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 120);
  if (v7 && *(v7 + 28) == 1)
  {
    v8 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sending data to upper layer", v11, 2u);
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    v11[0] = 0;
    v11[1] = 0;
    [v5 getUUIDBytes:v11];
    xpc_dictionary_set_uuid(v9, "kCBMsgArgDeviceUUID", v11);
    v10 = v6;
    xpc_dictionary_set_data(v9, "kCBMsgArgObjectDiscoveryData", [v6 bytes], objc_msgSend(v6, "length"));
    sub_10004DFB8(v7 - 144, 146, v9, 1);
  }
}

void sub_1004F576C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 408))
  {
    v3 = *(a1 + 416);
    if (v3)
    {
      dispatch_suspend(v3);
    }

    else
    {
      v6 = sub_100007EE8(0, a2);
      v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v6 + 8));
      *(a1 + 416) = v7;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1004F58F0;
      handler[3] = &unk_100ADF8F8;
      handler[4] = a1;
      dispatch_source_set_event_handler(v7, handler);
    }

    v8 = *(a1 + 392);
    v9 = -1;
    if (v8 != (a1 + 400))
    {
      do
      {
        if (v9 >= v8[5])
        {
          v9 = v8[5];
        }

        v10 = v8[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v8[2];
            v12 = *v11 == v8;
            v8 = v11;
          }

          while (!v12);
        }

        v8 = v11;
      }

      while (v11 != (a1 + 400));
    }

    dispatch_source_set_timer(*(a1 + 416), v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(*(a1 + 416));
  }

  else
  {
    v4 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No delayed connection", buf, 2u);
    }

    v5 = *(a1 + 416);
    if (v5)
    {
      dispatch_source_cancel(v5);
      dispatch_release(*(a1 + 416));
      *(a1 + 416) = 0;
    }
  }
}

void sub_1004F58F8(uint64_t a1)
{
  v2 = dispatch_time(0, 0);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v5 = *(a1 + 392);
  if (v5 != (a1 + 400))
  {
    v6 = v2;
    *&v4 = 134218498;
    v18 = v4;
    do
    {
      if (v5[5] <= v6)
      {
        v21 = v5[4];
        v7 = [*(a1 + 384) objectForKeyedSubscript:v21];
        v8 = v5[6];
        v9 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v7 delay];
          v11 = v21;
          sub_100018384(v8, __p);
          v12 = __p;
          if (v20 < 0)
          {
            v12 = __p[0];
          }

          *buf = v18;
          *&buf[4] = v10;
          v26 = 2114;
          v27 = v11;
          v28 = 2082;
          v29 = v12;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "delayed connection (%ld seconds) passed, connecting to device %{public}@ session %{public}s now", buf, 0x20u);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }
        }

        [v7 setDelay:{0, v18}];
        sub_1004F5B74(a1, v8, v21, v7);
        sub_1004F8224(&v22, &v21);
      }

      v13 = v5[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v5[2];
          v15 = *v14 == v5;
          v5 = v14;
        }

        while (!v15);
      }

      v5 = v14;
    }

    while (v14 != (a1 + 400));
    v16 = v22;
    v17 = v23;
    while (v16 != v17)
    {
      sub_100506598(a1 + 392, v16);
      [*(a1 + 384) removeObjectForKey:*v16++];
    }
  }

  sub_1004F576C(a1, v3);
  *buf = &v22;
  sub_100506518(buf);
}

void sub_1004F5B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char *a19)
{
  a19 = &a16;
  sub_100506518(&a19);
  _Unwind_Resume(a1);
}

void sub_1004F5B74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = a3;
  v196 = v5;
  v180 = a4;
  v195 = 0xFFFF;
  if (qword_100B50F78 != -1)
  {
    sub_10083AFF4();
  }

  v6 = qword_100B50F70;
  sub_10004DFB4(buf, v5);
  sub_1005807A8(v6, buf, &v195);
  if (v195 == 0xFFFF || v195 == 2)
  {
    if ((*(a1 + 128) & 1) == 0)
    {
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_10083B008();
      }

      if (qword_100B512F8 != -1)
      {
        sub_10083AC60();
      }

      sub_1003B1434(off_100B512F0, a2, a1, v196, 341, 0);
      goto LABEL_391;
    }

    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
    {
      sub_10083B078();
    }

    v7 = *(a1 + 120);
    if (v7 && *(v7 - 64) >= 1)
    {
      if (qword_100B54208 != -1)
      {
        sub_10083AD7C();
      }

      if (sub_100067048(qword_100B54200, 1uLL, *(a1 + 88)))
      {
        v8 = [v180 connectionUseCase];
        v9 = [v180 useCaseList];
        v10 = v9;
        v11 = v8;
        if (v9 && [v9 count])
        {
          if ([v10 count] == 1)
          {
            v12 = [v10 objectAtIndexedSubscript:0];
            v13 = [v12 longLongValue] != 0;

            if (!v13 && v11 == 0)
            {
              goto LABEL_17;
            }
          }
        }

        else if (!v8)
        {
LABEL_17:
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
          {
            sub_10083B0E8();
          }

          if (qword_100B512F8 != -1)
          {
            sub_10083AC60();
          }

          sub_1003B1434(off_100B512F0, a2, a1, v196, 348, 0);

          goto LABEL_391;
        }
      }
    }
  }

  [*(a1 + 312) addObject:v196];
  if (qword_100B508D0 != -1)
  {
    sub_10083B158();
  }

  v14 = off_100B508C8;
  v15 = v196;
  sub_100007E30(__p, "_FORCE_GATT_SERVICES_DISCOVERY_");
  v16 = sub_10004EB40(v14, v15, __p);
  v17 = v16;
  if (v194 < 0)
  {
    operator delete(__p[0]);
    if (!v17)
    {
      goto LABEL_42;
    }
  }

  else if (!v16)
  {
    goto LABEL_42;
  }

  v18 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Forcing GATT rediscovery later on, deleting cache database", buf, 2u);
  }

  if (qword_100B50900 != -1)
  {
    sub_10083B180();
  }

  sub_100707D50(qword_100B508F8, v196);
  if (qword_100B508D0 != -1)
  {
    sub_10083B158();
  }

  sub_10078380C(off_100B508C8, v196, @"_FORCE_GATT_SERVICES_DISCOVERY_");
LABEL_42:
  if (*(a1 + 44) == 1)
  {
    if (qword_100B54208 != -1)
    {
      sub_10083AD7C();
    }

    sub_1007F0AC8(qword_100B54200, a2, v196, v180);
  }

  if ([v180 resetDisconnectionHistory])
  {
    v19 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v196;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Trigger resetDisconnectionHistory %{public}@ ", buf, 0xCu);
    }

    if (qword_100B508B0 != -1)
    {
      sub_10083AEE8();
    }

    v20 = off_100B508A8;
    v21 = [v196 UUIDString];
    v22 = v21;
    sub_100007E30(v191, [v21 UTF8String]);
    sub_100769EEC(v20, v191);
    if (v192 < 0)
    {
      operator delete(v191[0]);
    }
  }

  v23 = [*(a1 + 224) objectForKey:v196];
  v24 = v23 == 0;

  if (v24)
  {
    v27 = *(a1 + 296);
    if (v27)
    {
      v28 = v196;
      v29 = a1 + 296;
      do
      {
        v30 = *(v27 + 32);
        v31 = v30 >= v196;
        v32 = v30 < v196;
        if (v31)
        {
          v29 = v27;
        }

        v27 = *(v27 + 8 * v32);
      }

      while (v27);
      if (v29 != a1 + 296 && v196 >= *(v29 + 32))
      {
        v59 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v28;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "FindMy Device %{public}@ already parked until new keys become available", buf, 0xCu);
        }

        goto LABEL_391;
      }
    }

    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    v33 = sub_1000500A0(off_100B508C8, v196);
    if (v33)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10083B158();
      }

      sub_1000AFD60(off_100B508C8, v196, 2u, buf);
      v34 = *&buf[16] == 0;
      sub_10000CEDC(buf, *&buf[8]);

      if (v34)
      {
        v60 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v196;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is FindMy but has no valid addresses/keys", buf, 0xCu);
        }

        v61 = v180;
        *buf = &v196;
        v62 = sub_100506788(a1 + 288, &v196, &unk_1008A9BD0, buf);
        objc_storeStrong(v62 + 5, a4);
        v62[6] = a2;
        [*(a1 + 224) setObject:v61 forKey:v196];

        goto LABEL_391;
      }
    }

    if ([v180 isLatencyCritical])
    {
      v35 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v196;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Latency Critical Action: LE Connection for device %{public}@", buf, 0xCu);
      }

      sub_1004F8318(a1);
    }

    if (qword_100B508B0 != -1)
    {
      sub_10083AEE8();
    }

    v176 = sub_100029630(off_100B508A8);
    v36 = v180;
    if (qword_100B54208 != -1)
    {
      sub_10083AD7C();
      v36 = v180;
    }

    v37 = sub_1007F0440(qword_100B54200, [v36 connectionUseCase]);
    if (qword_100B54208 != -1)
    {
      sub_10083AD7C();
      v36 = v180;
    }

    v38 = sub_1007F024C(qword_100B54200, [v36 connectionUseCase]);
    if (v37 >= v38)
    {
      v49 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        v50 = [v180 connectionUseCase];
        *buf = 67109376;
        *&buf[4] = v50;
        *&buf[8] = 1024;
        *&buf[10] = v37;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Exceeded max connection limit for use case:%d for counter: %d", buf, 0xEu);
      }

      v189 = 0u;
      v190 = 0u;
      v187 = 0u;
      v188 = 0u;
      v51 = v177;
      v52 = [v51 countByEnumeratingWithState:&v187 objects:v202 count:16];
      if (v52)
      {
        v53 = *v188;
        do
        {
          v54 = 0;
          do
          {
            if (*v188 != v53)
            {
              objc_enumerationMutation(v51);
            }

            v55 = *(*(&v187 + 1) + 8 * v54);
            if (qword_100B508D0 != -1)
            {
              sub_10083B158();
            }

            v56 = sub_100788D8C(off_100B508C8, v55);
            if (v56 == [v180 connectionUseCase])
            {
              if (qword_100B54208 != -1)
              {
                sub_10083AD7C();
              }

              if (sub_1007F0440(qword_100B54200, [v180 connectionUseCase]) >= v38)
              {
                v57 = qword_100BCE988;
                if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
                {
                  v58 = [v180 connectionUseCase];
                  *buf = 138543618;
                  *&buf[4] = v55;
                  *&buf[12] = 1024;
                  *&buf[14] = v58;
                  _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Exceeded max connection :device %{public}@ for use case:%d", buf, 0x12u);
                }
              }
            }

            v54 = v54 + 1;
          }

          while (v52 != v54);
          v52 = [v51 countByEnumeratingWithState:&v187 objects:v202 count:16];
        }

        while (v52);
      }

      if (qword_100B512F8 != -1)
      {
        sub_10083AC60();
      }

      sub_1003B1434(off_100B512F0, a2, a1, v196, 336, 0);
      goto LABEL_390;
    }

    v39 = v180;
    if ([v180 delay] >= 1)
    {
      v40 = qword_100BCE988;
      if (*(a1 + 24) == 1)
      {
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v196;
          v42 = [v180 delay];
          *buf = 138543618;
          *&buf[4] = v41;
          *&buf[12] = 2048;
          *&buf[14] = v42;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Add delayed connection to device %{public}@ with %ld seconds delay.", buf, 0x16u);
          v39 = v180;
        }

        v43 = dispatch_time(0, 1000000000 * [v39 delay]);
        *buf = &v196;
        v44 = sub_100506860(a1 + 392, &v196, &unk_1008A9BD0, buf);
        v44[5] = v43;
        v44[6] = a2;
        [*(a1 + 384) setObject:v180 forKey:v196];
        sub_1004F576C(a1, v45);
        goto LABEL_390;
      }

      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_10083B1D0();
        v39 = v180;
      }
    }

    sub_1004F8610(a1, v196, v39);
    sub_1004F8AC8(a1, v196, v180);
    sub_1004F8C80(a1, a2, v196, v180);
    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    v63 = off_100B508C8;
    v64 = v196;
    sub_100018384(a2, buf);
    v65 = buf[23];
    v66 = *buf;
    v67 = +[NSString defaultCStringEncoding];
    if (v65 >= 0)
    {
      v68 = buf;
    }

    else
    {
      v68 = v66;
    }

    v69 = [NSString stringWithCString:v68 encoding:v67];
    v70 = [v180 clientBundleID];
    sub_10078C27C(v63, v64, v69, v70);

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    sub_1004F915C(v71, v196, v180);
    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    sub_10078A1C8(off_100B508C8, v196, [v180 minRSSILevelForConnection]);
    v72 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v73 = [v180 minRSSILevelForConnection];
      *buf = 67109378;
      *&buf[4] = v73;
      *&buf[8] = 2114;
      *&buf[10] = v196;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Setting minimum RSSI level for connection to %d for device %{public}@", buf, 0x12u);
    }

    v74 = qword_100BCE9B8;
    if (os_log_type_enabled(qword_100BCE9B8, OS_LOG_TYPE_DEFAULT))
    {
      v75 = *(a1 + 88);
      *buf = 138543618;
      *&buf[4] = v196;
      *&buf[12] = 2114;
      *&buf[14] = v75;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "App connecting - {cbuuid: %{public}@, bundle: %{public}@}", buf, 0x16u);
    }

    v76 = [v180 connectionUseCase];
    v77 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v78 = sub_10002B1DC(v76);
      v79 = *(a1 + 88);
      *buf = 136446722;
      *&buf[4] = v78;
      *&buf[12] = 2114;
      *&buf[14] = v196;
      *&buf[22] = 2114;
      *&buf[24] = v79;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "BLE Connecting %{public}s %{public}@ for %{public}@", buf, 0x20u);
      v77 = qword_100BCE988;
    }

    if (os_signpost_enabled(v77))
    {
      v80 = sub_10002B1DC(v76);
      v81 = *(a1 + 88);
      *buf = 136446722;
      *&buf[4] = v80;
      *&buf[12] = 2114;
      *&buf[14] = v196;
      *&buf[22] = 2114;
      *&buf[24] = v81;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v77, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BTSignPost", "BLE Connecting %{public}s %{public}@ for %{public}@", buf, 0x20u);
    }

    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    v82 = v180;
    v83 = off_100B508C8;
    v84 = v196;
    Current = CFAbsoluteTimeGetCurrent();
    sub_100786CD8(v83, v84, Current);
    v86 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v87 = v196;
      sub_100018384(a2, uu1);
      v88 = v201 >= 0 ? uu1 : *uu1;
      *buf = 138543874;
      *&buf[4] = v87;
      *&buf[12] = 2082;
      *&buf[14] = v88;
      *&buf[22] = 2114;
      v82 = v180;
      *&buf[24] = v180;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Connecting device %{public}@ for session %{public}s with options %{public}@", buf, 0x20u);
      if (v201 < 0)
      {
        operator delete(*uu1);
      }
    }

    if (*(a1 + 28) == 1)
    {
      v89 = [*(a1 + 88) hasPrefix:@"com.apple."];
      v90 = v76 ? 1 : v89;
      if ((v90 & 1) == 0)
      {
        if (qword_100B508D0 != -1)
        {
          sub_10083B158();
          v82 = v180;
        }

        sub_1007893AC(off_100B508C8, v196, @"LAST_CONNECTED_APP_BUNDLE_ID", *(a1 + 88));
      }
    }

    v91 = [v82 ctkdChosenTransport];
    v92 = v91;
    if (v195 == 1 && v91 != 1)
    {
      v93 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = v196;
        *&buf[12] = 1024;
        *&buf[14] = 1;
        _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is connected to CATT transport=%d", buf, 0x12u);
      }

      [*(a1 + 224) setObject:v180 forKey:v196];
      if (qword_100B512F8 != -1)
      {
        sub_10083AC60();
      }

      sub_1003B1434(off_100B512F0, a2, a1, v196, 0, 0);
      goto LABEL_390;
    }

    if (qword_100B508B0 != -1)
    {
      sub_10083AEE8();
    }

    v94 = off_100B508A8;
    sub_10004DFB4(buf, v196);
    if (sub_100050290(v94, buf))
    {
      goto LABEL_178;
    }

    if (qword_100B508B0 != -1)
    {
      sub_10083AEE8();
    }

    v95 = off_100B508A8;
    sub_10004DFB4(uu1, v196);
    if (sub_10074738C(v95, uu1))
    {
LABEL_178:
      if (([v180 disableLeGATT] & 1) == 0)
      {
        if (qword_100B508D0 != -1)
        {
          sub_10083B158();
        }

        if (sub_10078D924(off_100B508C8, v196))
        {
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
          {
            sub_10083B20C();
          }

          if (qword_100B512F8 != -1)
          {
            sub_10083AC60();
          }

          sub_1003B1434(off_100B512F0, a2, a1, v196, 117, 0);
        }
      }
    }

    v96 = [v180 connectionUseCase] & 0xFFFF0000;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
    {
      sub_10083B27C();
    }

    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    sub_10078D9B0(off_100B508C8, v196, v96 == 589824);
    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    v97 = sub_100046458(off_100B508C8, v196, 0);
    v98 = 0;
    if ((v97 & 0xFF000000000000) == 0 && (v97 & 0xFFFFFFFFFFFFLL) != 0)
    {
      if (qword_100B508F0 != -1)
      {
        sub_10083B2F4();
      }

      v99 = sub_1000504C8(off_100B508E8, v97, 0);
      v100 = v99;
      if (v99 && sub_1000C0348(v99))
      {
        v101 = sub_1005399A0(v100);
        if (v92 == 1)
        {
          v98 = 0;
        }

        else
        {
          v98 = v101;
        }
      }

      else
      {
        v98 = 0;
      }
    }

    if (v76 == 65541)
    {
      v102 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        v103 = *(a1 + 88);
        *buf = 138543618;
        *&buf[4] = v103;
        *&buf[12] = 2114;
        *&buf[14] = v196;
        _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "AudioQualityOptimizer - found client for CI optimization{bundleID: %{public}@, device:%{public}@}", buf, 0x16u);
      }

      if (qword_100B508D0 != -1)
      {
        sub_10083B158();
      }

      sub_100787764(off_100B508C8, v196, 1);
    }

    if (qword_100B512F8 != -1)
    {
      sub_10083AC60();
    }

    if ((sub_1003C0350(off_100B512F0, v196) | v98))
    {
      sub_1004F9298(a1, v196);
      goto LABEL_232;
    }

    sub_100018384(a2, buf);
    if (sub_1003D2140(buf, "com.apple.bluetoothd", 0) == -1)
    {
      v105 = 0;
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_10083B158();
      }

      sub_1000B006C(off_100B508C8, v196, uu1);
      v104 = *&uu1[8];
      if (v201 >= 0)
      {
        v104 = v201;
      }

      v105 = v104 != 0;
      if ((v201 & 0x8000000000000000) != 0)
      {
        operator delete(*uu1);
      }
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    if (v105)
    {
      if (qword_100B508B0 != -1)
      {
        sub_10083AEE8();
      }

      v106 = off_100B508A8;
      sub_10004DFB4(buf, v196);
      sub_10074EA18(v106, buf);
    }

    v107 = v180;
    if ([v180 requiresLowLatency])
    {
      if (qword_100B508B0 != -1)
      {
        sub_10083AEE8();
        v107 = v180;
      }

      v108 = off_100B508A8;
      sub_10004DFB4(buf, v196);
      sub_10074EA18(v108, buf);
    }

    if ([v107 opportunistic])
    {
      goto LABEL_232;
    }

    if (qword_100B508B0 != -1)
    {
      sub_10083AEE8();
    }

    v116 = sub_10074A128(off_100B508A8, v196);
    v117 = v116;
    if (v116 <= 201)
    {
      if (!v116)
      {
LABEL_232:
        v109 = [v180 temporaryLTK];
        if (!v109)
        {
          goto LABEL_281;
        }

        v110 = [v180 temporaryLTK];
        v111 = [v110 length] == 0;

        if (v111)
        {
          goto LABEL_281;
        }

        v112 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v196;
          _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "setting up temporary LTK for device %{public}@", buf, 0xCu);
        }

        if (qword_100B508D0 != -1)
        {
          sub_10083B158();
        }

        v113 = v180;
        if (sub_1007868F4(off_100B508C8, v196))
        {
          if (qword_100B508D0 != -1)
          {
            sub_10083B158();
            v113 = v180;
          }

          v114 = off_100B508C8;
          sub_10004DFB4(buf, v196);
          v115 = sub_10078AF34(v114, buf);
        }

        else
        {
          if (qword_100B508D0 != -1)
          {
            sub_10083B158();
            v113 = v180;
          }

          v115 = sub_100046458(off_100B508C8, v196, 0);
        }

        v122 = v115;
        if (qword_100B508D0 != -1)
        {
          sub_10083B158();
          v113 = v180;
        }

        sub_1000AFD60(off_100B508C8, v196, 2u, buf);
        if (!*&buf[8])
        {
LABEL_272:
          sub_10000CEDC(buf, *&buf[8]);
          v125 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v196;
            _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "setting up temporary LTK for device %@", buf, 0xCu);
          }

          v126 = [v113 temporaryLTK];
          v127 = [v126 length];

          buf[0] = v127;
          uu1[0] = 2;
          if (qword_100B508C0 != -1)
          {
            sub_10083B37C();
          }

          v128 = off_100B508B8;
          v129 = [v180 temporaryLTK];
          v130 = v129;
          v131 = [v129 bytes];
          v132 = [v180 temporaryLTK];
          sub_1007C6A30(v128, v122, 5, v131, [v132 length]);

          if (qword_100B508C0 != -1)
          {
            sub_10083B37C();
          }

          sub_1007C6A30(off_100B508B8, v122, 6, buf, 1);
          if (qword_100B508C0 != -1)
          {
            sub_10083B37C();
          }

          sub_1007C6A30(off_100B508B8, v122, 7, uu1, 1);
          goto LABEL_281;
        }

        v123 = *&buf[8];
        while (1)
        {
          v124 = v123[4];
          if (v122 >= v124)
          {
            if (v124 >= v122)
            {
              sub_10000CEDC(buf, *&buf[8]);
              v154 = qword_100BCE988;
              if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
              {
                v155 = v196;
                sub_10004D9B0(v122);
                v156 = (buf[23] & 0x80u) == 0 ? buf : *buf;
                *uu1 = 138412546;
                *&uu1[4] = v155;
                *&uu1[12] = 2080;
                *&uu1[14] = v156;
                _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "Ignoring temporary LTK for device %@ with address %s as we already have extra addresses and LTK's set up", uu1, 0x16u);
                if (buf[23] < 0)
                {
                  operator delete(*buf);
                }
              }

LABEL_281:
              v133 = [v180 temporaryIRK];
              if (v133)
              {
                v134 = [v180 temporaryIdentityAddress];
                v135 = v134 == 0;

                if (!v135)
                {
                  v136 = qword_100BCE988;
                  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    *&buf[4] = v196;
                    _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "setting up temporary IRK for device %{public}@", buf, 0xCu);
                  }

                  v137 = [v180 temporaryIdentityAddress];
                  v138 = sub_100777FF4(v137);

                  v185[0] = 0;
                  v139 = sub_1002D3618(v138);
                  *&v185[1] = v139;
                  v186 = WORD2(v139);
                  v140 = [v180 temporaryIRK];
                  v141 = [v140 length];

                  if (v141 == 16)
                  {
                    v199 = 0uLL;
                    v142 = [v180 temporaryIRK];
                    v143 = v142;
                    v199 = *[v142 bytes];

                    if (qword_100B508C0 != -1)
                    {
                      sub_10083B37C();
                    }

                    sub_1007CA114(off_100B508B8, v185, &v199, v196);
                    if (qword_100B508D0 != -1)
                    {
                      sub_10083B158();
                    }

                    v144 = off_100B508C8;
                    sub_10004DFB4(buf, v196);
                    sub_10078AFD0(v144, buf, v138, 0);
                    if (qword_100B508B0 != -1)
                    {
                      sub_10083AEE8();
                    }

                    v145 = off_100B508A8;
                    sub_10004DFB4(buf, v196);
                    if (sub_10074738C(v145, buf))
                    {
                      if (qword_100B508B0 != -1)
                      {
                        sub_10083AEE8();
                      }

                      v146 = sub_1004F935C(off_100B508A8, v196);
                      v147 = qword_100BCE988;
                      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
                      {
                        sub_10004D9B0(v146);
                        v148 = buf[23];
                        v149 = *buf;
                        sub_10004D9B0(v138);
                        v150 = buf;
                        if (v148 < 0)
                        {
                          v150 = v149;
                        }

                        if (v201 >= 0)
                        {
                          v151 = uu1;
                        }

                        else
                        {
                          v151 = *uu1;
                        }

                        LODWORD(v197.__r_.__value_.__l.__data_) = 136446466;
                        *(v197.__r_.__value_.__r.__words + 4) = v150;
                        WORD2(v197.__r_.__value_.__r.__words[1]) = 2082;
                        *(&v197.__r_.__value_.__r.__words[1] + 6) = v151;
                        _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "Connecting address %{public}s, temp address %{public}s", &v197, 0x16u);
                        if (v201 < 0)
                        {
                          operator delete(*uu1);
                        }

                        if (buf[23] < 0)
                        {
                          operator delete(*buf);
                        }
                      }

                      v152 = qword_100BCE988;
                      if (v146 && v138 && v138 != v146)
                      {
                        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "Update connecting address to temp resolved address", buf, 2u);
                        }

                        *&buf[8] = 0;
                        *&buf[16] = 0;
                        *buf = &buf[8];
                        sub_10004DFB4(uu1, v196);
                        sub_100506A24(buf, uu1, uu1);
                        if (qword_100B508B0 != -1)
                        {
                          sub_10083AEE8();
                        }

                        v153 = off_100B508A8;
                        sub_100506B30(v183, buf);
                        sub_10074713C(v153, v183);
                        sub_10000CEDC(v183, v184);
                        sub_10000CEDC(buf, *&buf[8]);
                      }

                      else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
                      {
                        sub_10004D9B0(v97);
                        sub_10083B3E0();
                      }
                    }

                    goto LABEL_342;
                  }

                  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
                  {
                    sub_10083B3A4();
                  }

LABEL_390:

                  goto LABEL_391;
                }
              }

LABEL_342:
              if ([v180 connectionUseCase] == 21 || objc_msgSend(v180, "connectionUseCase") == 20 || objc_msgSend(v180, "connectionUseCase") == 655360)
              {
                if (qword_100B508C0 != -1)
                {
                  sub_10083B37C();
                }

                if (!sub_1007C9D64(off_100B508B8, v196))
                {
                  v161 = qword_100BCE988;
                  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    *&buf[4] = v196;
                    _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEFAULT, "fast IRK Resolution for device successful %{public}@", buf, 0xCu);
                  }
                }
              }

              v162 = v180;
              if (qword_100B508D0 != -1)
              {
                sub_10083B158();
                v162 = v180;
              }

              sub_10078D898(off_100B508C8, v196, [v162 disableLeGATT]);
LABEL_353:
              v163 = qword_100BCE9C0;
              if (os_log_type_enabled(qword_100BCE9C0, OS_LOG_TYPE_DEFAULT))
              {
                v164 = v196;
                if (qword_100B508D0 != -1)
                {
                  sub_10083B158();
                }

                v165 = &v197;
                sub_10004FFDC(off_100B508C8, v196, &v197);
                if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v165 = v197.__r_.__value_.__r.__words[0];
                }

                if (qword_100B508D0 != -1)
                {
                  sub_10083B158();
                }

                v166 = sub_100046458(off_100B508C8, v196, 1);
                v167 = sub_100777A3C(v166);
                if (qword_100B508D0 != -1)
                {
                  sub_10083B158();
                }

                v168 = sub_1007868F4(off_100B508C8, v196);
                if (v168)
                {
                  if (qword_100B508D0 != -1)
                  {
                    sub_10083B158();
                  }

                  v169 = sub_100046458(off_100B508C8, v196, 0);
                  v170 = sub_100777A3C(v169);
                }

                else
                {
                  v170 = &stru_100B0F9E0;
                }

                *buf = 138544386;
                *&buf[4] = v164;
                *&buf[12] = 2080;
                *&buf[14] = v165;
                *&buf[22] = 1024;
                *&buf[24] = 0;
                *&buf[28] = 2114;
                *&buf[30] = v167;
                *&buf[38] = 2114;
                *&buf[40] = v170;
                _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "Device connecting - {cbuuid: %{public}@, devicename: %s, result: %d, adv-addr: %{public}@, resolved-addr: %{public}@}", buf, 0x30u);
                if (v168)
                {
                }

                if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v197.__r_.__value_.__l.__data_);
                }
              }

              [*(a1 + 224) setObject:v180 forKey:v196];
              if ([v180 opportunistic])
              {
                if (qword_100B508B0 != -1)
                {
                  sub_10083AEE8();
                }

                v171 = off_100B508A8;
                sub_10004DFB4(buf, v196);
                if (sub_10074E724(v171, buf))
                {
                  if (qword_100B512F8 != -1)
                  {
                    sub_10083AC60();
                  }

                  v117 = 0;
                  goto LABEL_379;
                }
              }

              goto LABEL_380;
            }

            ++v123;
          }

          v123 = *v123;
          if (!v123)
          {
            goto LABEL_272;
          }
        }
      }

      if (v116 == 8)
      {
        if (qword_100B50F78 != -1)
        {
          sub_10083B1A8();
        }

        if (sub_100052A90(qword_100B50F70, v196))
        {
          goto LABEL_353;
        }
      }
    }

    else
    {
      switch(v116)
      {
        case 0xCA:
          [*(a1 + 312) removeObject:v196];
          break;
        case 0x136:
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
          {
            sub_100018384(a2, buf);
            sub_10083B31C();
          }

          v159 = [*(a1 + 232) objectForKey:v196];
          v160 = v159 == 0;

          if (v160)
          {
            [*(a1 + 232) setObject:v180 forKey:v196];
          }

          goto LABEL_390;
        case 0x137:
          if (qword_100B508B0 != -1)
          {
            sub_10083AEE8();
          }

          v118 = off_100B508A8;
          sub_10004DFB4(buf, v196);
          if (sub_10074E724(v118, buf))
          {
            if (qword_100B512F8 != -1)
            {
              sub_10083AC60();
            }

            sub_1003B1434(off_100B512F0, a2, a1, v196, 0, 0);
            if (qword_100B508D0 != -1)
            {
              sub_10083B158();
            }

            v119 = off_100B508C8;
            v120 = v196;
            sub_100007E30(v181, "_CTKD_");
            v121 = sub_10004EB40(v119, v120, v181);
            if (v182 < 0)
            {
              operator delete(v181[0]);
            }

            if (v121)
            {
              if (qword_100B512F8 != -1)
              {
                sub_10083AC60();
              }

              sub_1003B5CA4(off_100B512F0, v196, 1, 0);
            }
          }

          goto LABEL_353;
      }
    }

    if ([v180 isLatencyCritical])
    {
      v157 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v196;
        _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "Latency Critical Action: Disable LE Connection for connect failure to device %{public}@", buf, 0xCu);
      }

      sub_1004F8514(a1);
    }

    if (qword_100B508B0 != -1)
    {
      sub_10083AEE8();
    }

    v158 = off_100B508A8;
    sub_10004DFB4(buf, v196);
    sub_10074EB78(v158, buf);
    if (qword_100B512F8 != -1)
    {
      sub_10083AC60();
    }

LABEL_379:
    sub_1003B1434(off_100B512F0, a2, a1, v196, v117, 0);
LABEL_380:
    memset(buf, 0, sizeof(buf));
    sub_100007E30(&v197, [*(a1 + 88) UTF8String]);
    sub_1005796A0(buf, &v197, *(a1 + 129), v196);
    if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v197.__r_.__value_.__l.__data_);
    }

    if (qword_100B541F8 != -1)
    {
      sub_10083B440();
    }

    v172 = sub_10000EFDC(qword_100B541F0, buf);
    v174 = sub_100432718(v172, v173);
    sub_100614BB8(a2, &v197);
    if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v175 = &v197;
    }

    else
    {
      v175 = v197.__r_.__value_.__r.__words[0];
    }

    (**v174)(v174, v175, 1, v196);
    if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v197.__r_.__value_.__l.__data_);
    }

    sub_1003B169C(buf);
    goto LABEL_390;
  }

  if (v195 == 1)
  {
    if (qword_100B50F78 != -1)
    {
      sub_10083B1A8();
    }

    v26 = sub_100052A90(qword_100B50F70, v196);
  }

  else if (v195 == 2)
  {
    if (qword_100B508B0 != -1)
    {
      sub_10083AEE8();
    }

    v25 = off_100B508A8;
    sub_10004DFB4(buf, v196);
    v26 = sub_10074E724(v25, buf);
  }

  else
  {
    v26 = 0;
  }

  v46 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO) && ((v47 = v196, sub_100018384(a2, buf), (buf[23] & 0x80u) == 0) ? (v48 = buf) : (v48 = *buf), *uu1 = 138543618, *&uu1[4] = v47, *&uu1[12] = 2082, *&uu1[14] = v48, _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Attempting to add device %{public}@ more than once for session %{public}s", uu1, 0x16u), buf[23] < 0))
  {
    operator delete(*buf);
    if (!v26)
    {
      goto LABEL_391;
    }
  }

  else if (!v26)
  {
    goto LABEL_391;
  }

  if (qword_100B512F8 != -1)
  {
    sub_10083AC60();
  }

  sub_1003B1434(off_100B512F0, a2, a1, v196, 0, 0);
LABEL_391:
}
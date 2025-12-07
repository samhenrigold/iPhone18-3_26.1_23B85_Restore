void sub_100756414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007564FC(uint64_t a1, unint64_t a2)
{
  v3 = sub_10009A66C(a2);
  v9 = v3;
  v11 = BYTE6(v3);
  v10 = WORD2(v3);
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_100063D0C(a2);
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2113;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing address %{private, mask.hash}@ from connection FilterAcceptList, waiting for controller to complete.", buf, 0x16u);
  }

  v8 = 0;
  sub_1000216B4(&v8);
  byte_100BCECA9 = 1;
  v6 = sub_1002E94CC(&v9);
  sub_100022214(&v8);
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100870354();
    }

    byte_100BCECA9 = 0;
  }

  else
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100007F88(buf, &stru_100BCEC68);
    if (byte_100BCECA9 == 1)
    {
      sub_1003645F8(&stru_100BCEBF8, buf);
    }

    sub_10000801C(buf);
    sub_1000088CC(buf);
  }

  sub_10002249C(&v8);
  return v6;
}

uint64_t sub_1007566C0(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 184) != 1)
  {
    return 103;
  }

  v3 = sub_10009A66C(a2);
  v9 = v3;
  v11 = BYTE6(v3);
  v10 = WORD2(v3);
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_100063D0C(a2);
    *buf = 138477827;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding address %{private}@ to connection FilterAcceptList, waiting for controller to complete.", buf, 0xCu);
  }

  v8 = 0;
  sub_1000216B4(&v8);
  byte_100BCECA8 = 1;
  v6 = sub_1002E9140(&v9);
  sub_100022214(&v8);
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1008703C4();
    }

    byte_100BCECA8 = 0;
  }

  else
  {
    *buf = 0uLL;
    sub_100007F88(buf, &stru_100BCEC28);
    if (byte_100BCECA8 == 1)
    {
      sub_1003645F8(&stru_100BCEBC8, buf);
    }

    sub_10000801C(buf);
    sub_1000088CC(buf);
  }

  sub_10002249C(&v8);
  return v6;
}

void sub_100756884(uint64_t a1, const unsigned __int8 *a2, int a3, int a4, char a5)
{
  v10 = *(a1 + 400);
  v11 = sub_10004DF60(a2);
  v13 = sub_100017F4C(v11, v12);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10076046C;
  v22[3] = &unk_100B0B620;
  v24 = v10;
  v14 = v11;
  v23 = v14;
  v25 = a3;
  sub_10000CA94(v13, v22);
  if (qword_100B54208 != -1)
  {
    sub_10086E578();
  }

  v15 = qword_100B54200;
  v16 = sub_10004DF60(a2);
  if (a3)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  sub_1007F1548(v15, v16, v17);

  if (a4 != 305 && (a3 & 1) == 0)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100760694;
    v18[3] = &unk_100B0B648;
    v21 = a5;
    v19 = v14;
    v20 = a4;
    sub_10074063C(a1, v18);
  }
}

uint64_t sub_100756A60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 1472);
  v5 = (a1 + 1480);
  if (v4 == v5)
  {
LABEL_11:
    v9 = 0;
  }

  else
  {
    while (1)
    {
      sub_10004DFB4(uu2, v3);
      if (!uuid_compare(v4 + 32, uu2) && (*(v4 + 9) || *(v4 + 10)))
      {
        break;
      }

      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
      if (v7 == v5)
      {
        goto LABEL_11;
      }
    }

    v9 = 1;
  }

  return v9;
}

uint64_t sub_100756B64(uint64_t a1, int a2)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 120);
  v4 = *(a1 + 384);
  if (v4 == (a1 + 392))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v6 = off_100B508C8;
      v7 = sub_10004DF60(v4 + 32);
      if (sub_100788D8C(v6, v7) == a2)
      {
        v8 = sub_10004DF60(v4 + 32);
        sub_10004DFB4(v15, v8);
        v9 = sub_10074AB80(a1, v15);

        v5 += (v9 ^ 1) & 1;
      }

      else
      {
      }

      v10 = *(v4 + 1);
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
          v11 = *(v4 + 2);
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v4 = v11;
    }

    while (v11 != (a1 + 392));
  }

  sub_1000088CC(v14);
  return v5;
}

void sub_100756CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100756D10(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v20[0] = 0;
  v20[1] = 0;
  v19 = a1;
  sub_100007F88(v20, a1 + 120);
  v6 = 0;
  if (v5 && a3)
  {
    if (![v5 length] || (v7 = *(a1 + 384), v7 == (v19 + 392)))
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v8 = off_100B508C8;
        v9 = sub_10004DF60(v7 + 32);
        v10 = sub_10078C3D4(v8, v9, v5);

        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v11 = off_100B508C8;
        v12 = sub_10004DF60(v7 + 32);
        LODWORD(v11) = sub_10078C680(v11, v12, a3);

        if (v10 & v11)
        {
          v13 = sub_10004DF60(v7 + 32);
          sub_10004DFB4(v21, v13);
          v14 = sub_10074AB80(v19, v21);

          v6 += (v14 ^ 1) & 1;
        }

        v15 = *(v7 + 1);
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = *(v7 + 2);
            v17 = *v16 == v7;
            v7 = v16;
          }

          while (!v17);
        }

        v7 = v16;
      }

      while (v16 != (v19 + 392));
    }
  }

  sub_1000088CC(v20);

  return v6;
}

void sub_100756EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

uint64_t sub_100756F48(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, __int16 a5, unsigned int a6, uint64_t a7)
{
  v14 = sub_10000C7D0(a1, a2);
  if (!(*(*v14 + 2456))(v14))
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100870434();
    }

    return 11;
  }

  v57 = 0;
  v15 = sub_1000C4FCC(a1, a2, &v57);
  if (v15)
  {
    v60 = 0;
    v61 = 0;
    v62 = 0;
    if (!a4)
    {
      v22 = sub_1007746F4(a1 + 800, a2);
      if ((a1 + 808) != v22)
      {
        v28 = v22;
        sub_10002717C((a1 + 800), v22);
        operator delete(v28);
      }

      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v25 = 0;
      v21 = 0;
      v19 = 0;
      goto LABEL_62;
    }

    v17 = sub_10000C7D0(v15, v16);
    if ((*(*v17 + 2464))(v17))
    {
      v59 = a2;
      *(sub_100775934((a1 + 800), a2, &unk_1008A9BD0, &v59, &v58) + 21) = a5;
      v18 = sub_10004DF60(a2);
      v19 = sub_1007424C8(v18, v18);

      v20 = sub_10004DF60(a2);
      v21 = sub_100742080(a1, v20);

      if (a6 && a7)
      {
        v24 = 0;
        if (a6 >= 5)
        {
          v25 = 5;
        }

        else
        {
          v25 = a6;
        }

        do
        {
          if (v24 >= a6)
          {
            v26 = 0;
          }

          else
          {
            v26 = *(a7 + 4 * v24);
          }

          *(&v60 + v24++) = v26;
        }

        while (v24 != 5);
      }

      else
      {
        v60 = 0x2FA000002C4;
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v33 = off_100B508C8;
        v34 = sub_10004DF60(a2);
        sub_100007E30(v55, "A1603");
        if (sub_10004EB40(v33, v34, v55))
        {
          v35 = 1;
        }

        else
        {
          if (qword_100B508D0 != -1)
          {
            sub_10086DE2C();
          }

          v36 = off_100B508C8;
          v37 = sub_10004DF60(a2);
          sub_100007E30(v53, "A2051");
          if (sub_10004EB40(v36, v37, v53))
          {
            v35 = 1;
          }

          else
          {
            if (qword_100B508D0 != -1)
            {
              sub_10086DE2C();
            }

            v38 = off_100B508C8;
            v39 = sub_10004DF60(a2);
            sub_100007E30(v51, "A3085");
            if (sub_10004EB40(v38, v39, v51))
            {
              v35 = 1;
            }

            else
            {
              if (qword_100B508D0 != -1)
              {
                sub_10086DE2C();
              }

              v40 = off_100B508C8;
              v46 = sub_10004DF60(a2);
              sub_100007E30(v49, "A2538");
              if (sub_10004EB40(v40, v46, v49))
              {
                v35 = 1;
              }

              else
              {
                if (qword_100B508D0 != -1)
                {
                  sub_10086DE2C();
                }

                v41 = off_100B508C8;
                v42 = sub_10004DF60(a2);
                sub_100007E30(__p, "_HID_DEVICE_");
                v35 = sub_10004EB40(v41, v42, __p);
                if (v48 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (v50 < 0)
              {
                operator delete(v49[0]);
              }
            }

            if (v52 < 0)
            {
              operator delete(v51[0]);
            }
          }

          if (v54 < 0)
          {
            operator delete(v53[0]);
          }
        }

        if (v56 < 0)
        {
          operator delete(v55[0]);
        }

        if (v35)
        {
          v25 = 3;
          LODWORD(v61) = 719;
        }

        else
        {
          v25 = 2;
        }
      }

      v32 = 48;
      v31 = 6;
      v30 = 20;
      v29 = 480;
LABEL_62:
      v43 = v57;
      if (v57)
      {
        v44 = sub_10000C7D0(v22, v23);
        HIWORD(v45) = v29;
        BYTE4(v45) = v31;
        WORD1(v45) = v32;
        LOWORD(v45) = v32;
        (*(*v44 + 2080))(v44, *v43, a3, a4, v25, &v60, v21, v19, v45, v30);
      }

      return 0;
    }

    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1008704AC();
    }

    return 11;
  }

  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_100870470();
  }

  return 7;
}

void sub_10075749C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100757568(uint64_t a1, unsigned __int16 *a2)
{
  v66 = 0;
  v64 = -31;
  v65 = 1;
  v63 = -30;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionEnable");
  v3 = (*(*v2 + 72))(v2, buf, __p, &v66);
  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  if (v68 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    goto LABEL_9;
  }

  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v66;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionEnable enable=(%d)", buf, 8u);
  }

LABEL_9:
  v5 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionWindow");
  v6 = (*(*v5 + 88))(v5, buf, __p, &v65);
  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  if (v68 < 0)
  {
    operator delete(*buf);
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else if (!v6)
  {
    goto LABEL_20;
  }

  v7 = v65;
  v8 = qword_100BCE980;
  if (v65 >= 3)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100870558();
    }

    return 3;
  }

  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionWindow (%d)", buf, 8u);
  }

LABEL_20:
  v9 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionFurther");
  v10 = (*(*v9 + 88))(v9, buf, __p, &v64);
  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  if (v68 < 0)
  {
    operator delete(*buf);
    if (!v10)
    {
      goto LABEL_28;
    }
  }

  else if (!v10)
  {
    goto LABEL_28;
  }

  v11 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v64;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionFurther (%d)", buf, 8u);
  }

LABEL_28:
  v12 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionCloser");
  v13 = (*(*v12 + 88))(v12, buf, __p, &v63);
  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  if (v68 < 0)
  {
    operator delete(*buf);
    if (!v13)
    {
      goto LABEL_36;
    }
  }

  else if (!v13)
  {
    goto LABEL_36;
  }

  v14 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v63;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionCloser (%d)", buf, 8u);
  }

LABEL_36:
  v15 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionVar1");
  v16 = (*(*v15 + 88))(v15, buf, __p, &v62 + 4);
  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  if (v68 < 0)
  {
    operator delete(*buf);
    if (!v16)
    {
      goto LABEL_44;
    }
  }

  else if (!v16)
  {
    goto LABEL_44;
  }

  v17 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = HIDWORD(v62);
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionVar1 (%d)", buf, 8u);
  }

LABEL_44:
  v18 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionVar2");
  v19 = (*(*v18 + 88))(v18, buf, __p, &v62);
  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  if (v68 < 0)
  {
    operator delete(*buf);
    if (!v19)
    {
      goto LABEL_52;
    }
  }

  else if (!v19)
  {
    goto LABEL_52;
  }

  v20 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v62;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionVar2 (%d)", buf, 8u);
  }

LABEL_52:
  v21 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionDebug");
  v22 = (*(*v21 + 88))(v21, buf, __p, &v61 + 4);
  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  if (v68 < 0)
  {
    operator delete(*buf);
    if (!v22)
    {
      goto LABEL_64;
    }
  }

  else if (!v22)
  {
    goto LABEL_64;
  }

  v23 = HIDWORD(v61);
  v24 = qword_100BCE980;
  if (HIDWORD(v61) >= 2)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1008704E8();
    }

    return 3;
  }

  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionDebug (%d)", buf, 8u);
  }

LABEL_64:
  v26 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionMaskDecisionLogic");
  v27 = (*(*v26 + 88))(v26, buf, __p, &v61);
  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  if (v68 < 0)
  {
    operator delete(*buf);
    if (!v27)
    {
      goto LABEL_72;
    }
  }

  else if (!v27)
  {
    goto LABEL_72;
  }

  v28 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v61;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionMaskDecisionLogic (%d)", buf, 8u);
  }

LABEL_72:
  v29 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionCMCheckLogic");
  v30 = (*(*v29 + 88))(v29, buf, __p, &v60 + 4);
  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  if (v68 < 0)
  {
    operator delete(*buf);
    if (!v30)
    {
      goto LABEL_80;
    }
  }

  else if (!v30)
  {
    goto LABEL_80;
  }

  v31 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = HIDWORD(v60);
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionMCMCheckLogic (%d)", buf, 8u);
  }

LABEL_80:
  v32 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionCM_AND_Mask");
  v33 = (*(*v32 + 88))(v32, buf, __p, &v60);
  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  if (v68 < 0)
  {
    operator delete(*buf);
    if (!v33)
    {
      goto LABEL_88;
    }
  }

  else if (!v33)
  {
    goto LABEL_88;
  }

  v34 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v60;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionCM_AND_Mask (%d)", buf, 8u);
  }

LABEL_88:
  v35 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionCM_XOR_Mask");
  v36 = (*(*v35 + 88))(v35, buf, __p, &v59 + 4);
  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  if (v68 < 0)
  {
    operator delete(*buf);
    if (!v36)
    {
      goto LABEL_96;
    }
  }

  else if (!v36)
  {
    goto LABEL_96;
  }

  v37 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = HIDWORD(v59);
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionCM_XOR_Mask (%d)", buf, 8u);
  }

LABEL_96:
  v38 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionCM_AND_Mask2");
  v39 = (*(*v38 + 88))(v38, buf, __p, &v59);
  v41 = v39;
  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  if (v68 < 0)
  {
    operator delete(*buf);
    if (!v41)
    {
      goto LABEL_104;
    }

LABEL_102:
    v42 = qword_100BCE980;
    v39 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
    if (v39)
    {
      *buf = 67109120;
      *&buf[4] = v59;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionCM_AND_Mask2 (%d)", buf, 8u);
    }

    goto LABEL_104;
  }

  if (v41)
  {
    goto LABEL_102;
  }

LABEL_104:
  if (v66 != 1)
  {
    return 1501;
  }

  v55 = v65;
  v43 = v64;
  v44 = v63;
  v46 = v62;
  v45 = WORD2(v62);
  v48 = BYTE4(v60);
  v47 = v61;
  v49 = HIDWORD(v59);
  v50 = v59;
  v51 = BYTE4(v61);
  v52 = sub_10000C7D0(v39, v40);
  LOBYTE(v54) = v51;
  HIWORD(v53) = v47;
  WORD2(v53) = v46;
  WORD1(v53) = v45;
  BYTE1(v53) = v44;
  LOBYTE(v53) = v44;
  return (*(*v52 + 2112))(v52, 1, *a2, v55, v43, v43, v43, v44, v53, v48, __PAIR64__(v50, v49), v54);
}

void sub_10075817C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void sub_100758210(uint64_t a1, void *a2, uint64_t a3, int a4, int a5)
{
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  memset(v46, 0, sizeof(v46));
  v45 = 0u;
  v43 = 0u;
  v44 = 0u;
  v34 = a2;
  sub_100007AD0(&v43);
  if (v34)
  {
    if (a4)
    {
      if (qword_100B512F8 != -1)
      {
        sub_1008705C8();
      }

      v7 = sub_1003ADE54(off_100B512F0, v34);
      v8 = [NSMutableSet setWithArray:v7];
    }

    else
    {
      if (qword_100B54208 != -1)
      {
        sub_10086E578();
      }

      v7 = sub_1007F1E20(qword_100B54200, v34);
      v8 = [NSMutableSet setWithSet:v7];
    }

    v11 = v8;

    if (qword_100B540F0 != -1)
    {
      sub_1008705F0();
    }

    v12 = sub_100369260(qword_100B540E8, v34);
    [v11 addObjectsFromArray:v12];

    if ([v11 count])
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v39 objects:v62 count:16];
      if (v14)
      {
        v15 = *v40;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v40 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v39 + 1) + 8 * i);
            v18 = v17;
            v19 = [v17 UTF8String];
            v20 = v19;
            v21 = strlen(v19);
            v22 = sub_100007774(&v44, v20, v21);
            sub_100007774(v22, ",", 1);
          }

          v14 = [v13 countByEnumeratingWithState:&v39 objects:v62 count:16];
        }

        while (v14);
      }

      v60 = 0;
      v61 = 0;
      std::ostream::sentry::sentry();
      v23 = &v44 + *(v44 - 24);
      if ((v23[32] & 5) == 0)
      {
        (*(**(v23 + 5) + 32))(v63);
        if (v65 == -1)
        {
          std::ios_base::clear((&v44 + *(v44 - 24)), *&v46[*(v44 - 24)] | 4);
        }
      }

      std::ostream::sentry::~sentry();
      LOBYTE(v63[0]) = 0;
      sub_100007774(&v44, v63, 1);
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v24 = off_100B508C8;
      sub_100007E30(__p, "HasTS");
      v25 = sub_10004EB40(v24, v34, __p);
      if (v38 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25)
      {
        v26 = "com.apple.magnet";
      }

      else
      {
        v26 = "Unknown";
      }

      if (v25)
      {
        v27 = 16;
      }

      else
      {
        v27 = 7;
      }

      sub_100007774(&v44, v26, v27);
    }
  }

  else
  {
    v9 = sub_100007774(&v44, "Unknown", 7);
  }

  if (a5)
  {
    v60 = &off_100AE0A78;
    v61 = 0;
    v28 = sub_100432718(v9, v10);
    std::stringbuf::str();
    if (v64 >= 0)
    {
      v29 = v63;
    }

    else
    {
      v29 = v63[0];
    }

    v35 = &off_100AE0A78;
    v36 = v61;
    if (v61)
    {
      sub_10000C69C(v61);
    }

    (*(*v28 + 40))(v28, a3, v29, v34, &v35);
    v35 = &off_100AE0A78;
    if (v36)
    {
      sub_10000C808(v36);
    }

    if (v64 < 0)
    {
      operator delete(v63[0]);
    }

    v60 = &off_100AE0A78;
    v9 = v61;
    if (v61)
    {
      sub_10000C808(v61);
    }
  }

  if (a3 == 5 || a3 == 3)
  {
    v30 = sub_100432718(v9, v10);
    std::stringbuf::str();
    v31 = v64 >= 0 ? v63 : v63[0];
    (*(*v30 + 8))(v30, v31, a3 == 3, v34);
    if (v64 < 0)
    {
      operator delete(v63[0]);
    }
  }

  *&v44 = v32;
  if (SHIBYTE(v48) < 0)
  {
    operator delete(*(&v47 + 1));
  }

  std::locale::~locale(&v45);
  std::iostream::~basic_iostream();
  std::ios::~ios();
}

void sub_1007588AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  std::ostream::sentry::~sentry();

  sub_1007FC91C(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_1007589C8(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v7 = a2 > 2 || (a4 | a3) > 1 || a5 > 0x64 || a2 == 0;
  v8 = v7;
  if (v7)
  {
    v13 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      v15 = "ok";
      v19[0] = 67110914;
      v16 = "VSC call not required";
      v19[1] = a2;
      if (a2)
      {
        v16 = "ok";
      }

      v20 = 2080;
      if (a2 > 2)
      {
        v16 = "Can't be >2";
      }

      v21 = v16;
      v22 = 1024;
      v23 = a3;
      v17 = "Can't be >1";
      v24 = 2080;
      if (a3 <= 1)
      {
        v18 = "ok";
      }

      else
      {
        v18 = "Can't be >1";
      }

      v25 = v18;
      if (a4 <= 1)
      {
        v17 = "ok";
      }

      v26 = 1024;
      v27 = a4;
      if (a5 > 0x64)
      {
        v15 = "Can't be >100";
      }

      v28 = 2080;
      v29 = v17;
      v30 = 1024;
      v31 = a5;
      v32 = 2080;
      v33 = v15;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "SetConnectionPrioritization argument out of range: {priority:%d (%s), protectWLAN:%d (%s), protectLEA:%d (%s), percentageWithCriticalPriority:%d (%s)}", v19, 0x42u);
    }
  }

  return v8 ^ 1u;
}

uint64_t sub_100758B40(uint64_t a1, unint64_t a2, int a3, unsigned __int16 *a4, uint64_t a5, int a6, uint64_t a7)
{
  v8 = a5;
  v295[1] = 0;
  v295[0] = 0;
  sub_100007F88(v295, a1 + 120);
  v294 = 0;
  if (qword_100BC7B08 != -1)
  {
    sub_100870618();
  }

  v293 = 0;
  sub_1000216B4(&v293);
  v10 = sub_10009A66C(a2);
  v290 = v10;
  v292 = BYTE6(v10);
  v291 = WORD2(v10);
  v11 = sub_1000ABD24(a4);
  if (v11)
  {
    v12 = sub_100255698(a4);
    v13 = sub_1002D007C(a4, &v294);
    v14 = sub_1002D02B4(a4);
    v256 = v13 != 0;
  }

  else
  {
    v12 = 0;
    v256 = 0;
    v14 = 0;
  }

  sub_100022214(&v293);
  v258 = v11;
  v255 = v12;
  v15 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v16 = sub_100063D0C(a2);
    v17 = sub_100063D0C(a7);
    *buf = 138544642;
    *&buf[4] = v16;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    *&buf[22] = 1024;
    *&buf[24] = v8;
    *&buf[28] = 1024;
    *&buf[30] = v11;
    *&buf[34] = 1024;
    *&buf[36] = a6;
    *&buf[40] = 2112;
    *&buf[42] = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "handleConnectionCompleteCallback address=%{public}@ handle=%p status=%d connectionIsActive=%d, wakeupEvent=%d bdAddr=%@", buf, 0x32u);
  }

  if (!v8 || *(a1 + 864) != 3)
  {
    if (*(a1 + 1067) == 1)
    {
      v19 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v20 = "Stack is shutting down, this is most likely an orphan event dispatched late, ignoring";
        goto LABEL_21;
      }

      goto LABEL_422;
    }

    memset(uu, 0, sizeof(uu));
    uuid_clear(uu);
    if (v8)
    {
      if (v8 > 710)
      {
        if (v8 != 713)
        {
          if (v8 != 711)
          {
LABEL_84:
            v60 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              v61 = sub_100063D0C(a2);
              *buf = 138543618;
              *&buf[4] = v61;
              *&buf[12] = 1024;
              *&buf[14] = v8;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Failed to connect to device %{public}@ with result %{bluetooth:OI_STATUS}u", buf, 0x12u);
            }

            if (a3 && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
            {
              sub_1008707E4();
            }

LABEL_92:
            sub_100745874(a1, 0);
LABEL_93:
            v49 = 1;
            goto LABEL_410;
          }

          if (qword_100B508D0 != -1)
          {
            sub_10086DE2C();
          }

          sub_1000498D4(off_100B508C8, a2, 1u, 0, 0, 0, buf);
          uuid_copy(uu, buf);
          is_null = uuid_is_null(uu);
          v48 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR);
          if (is_null)
          {
            if (v48)
            {
              sub_100063D0C(a2);
              objc_claimAutoreleasedReturnValue();
              sub_10087072C();
            }

            goto LABEL_422;
          }

          if (v48)
          {
            sub_1000D67B4(uu, buf);
            sub_100870778();
          }

          if (sub_10074738C(a1, uu))
          {
            v62 = sub_10004DF60(uu);
            sub_100754B04(a1, v62);

            if ([*(a1 + 752) count])
            {
              v63 = [*(a1 + 752) anyObject];
              [*(a1 + 752) removeObject:v63];
              v64 = qword_100BCE980;
              if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
              {
                *v296 = 138543362;
                v297 = v63;
                _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Moving device %{public}@ off of the overflow list now that there's room", v296, 0xCu);
              }

              sub_10074B0D4(a1, v63);
            }
          }

          if (*(a1 + 864) == 1)
          {
            v65 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              *v296 = 0;
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Connection already exists", v296, 2u);
            }

            goto LABEL_92;
          }

LABEL_70:
          v49 = 0;
LABEL_410:
          v248 = sub_10004DF60(uu);
          sub_100758210(v248, v248, 3, a3, a6);

          v249 = *(a1 + 928);
          if (v249)
          {
            v45 = qword_100BCE980;
            if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_422;
            }

            if (v249 > 3)
            {
              v250 = "UNKNOWN";
            }

            else
            {
              v250 = off_100B0BE78[v249 - 1];
            }

            *v296 = 136446210;
            v297 = v250;
            v20 = "Skipping processConnectingDevices, current LE Connection Manager State is %{public}s";
            v21 = v296;
LABEL_420:
            v22 = v45;
            v23 = 12;
            goto LABEL_421;
          }

          if (!v49)
          {
            v251 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              *v296 = 67109120;
              LODWORD(v297) = 0;
              v20 = "Skipping processConnectingDevices, reissueConnections=%d";
              v21 = v296;
              v22 = v251;
              v23 = 8;
              goto LABEL_421;
            }

            goto LABEL_422;
          }

LABEL_415:
          sub_1007556FC(a1);
          sub_100753CFC(a1);
          goto LABEL_422;
        }
      }

      else
      {
        if (v8 == 157)
        {
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
          {
            sub_100870640();
          }

          if (a3)
          {
            goto LABEL_93;
          }

          goto LABEL_92;
        }

        if (v8 != 709)
        {
          goto LABEL_84;
        }
      }

      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_1008706BC();
      }

      *(a1 + 1065) = 1;
      sub_100745874(a1, 0);
      goto LABEL_70;
    }

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    sub_1000498D4(off_100B508C8, a2, 1u, 0, 0, 0, buf);
    uuid_copy(uu, buf);
    if (uuid_is_null(uu))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_100063D0C(a2);
        objc_claimAutoreleasedReturnValue();
        sub_100870864();
      }

      sub_1000618AC(&v293);
      sub_1002D1EAC(&v290);
      sub_100022214(&v293);
      if (a3)
      {
        goto LABEL_422;
      }

      if (!*(a1 + 352))
      {
        sub_100745874(a1, 0);
        goto LABEL_422;
      }

      sub_100745874(a1, 1);
      goto LABEL_415;
    }

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v50 = off_100B508C8;
    v51 = sub_10004DF60(uu);
    sub_10078C720(v50, v51, 1, 2, 0);

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v52 = off_100B508C8;
    v53 = sub_10004DF60(uu);
    sub_10078B574(v52, v53, 1, a2);

    v54 = sub_10074738C(a1, uu);
    if (!v54)
    {
      if ((a3 & 1) == 0)
      {
        v70 = *(a1 + 368);
        v71 = a2;
        if (!v70)
        {
          goto LABEL_137;
        }

        v72 = a1 + 368;
        do
        {
          v73 = *(v70 + 32);
          v74 = v73 >= a2;
          v75 = v73 < a2;
          if (v74)
          {
            v72 = v70;
          }

          v70 = *(v70 + 8 * v75);
        }

        while (v70);
        if (v72 == a1 + 368 || *(v72 + 32) > a2)
        {
LABEL_137:
          v81 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
          {
            sub_1000D67B4(uu, buf);
            v82 = buf[23];
            v83 = *buf;
            v84 = sub_100063D0C(a2);
            v85 = v84;
            v86 = buf;
            if (v82 < 0)
            {
              v86 = v83;
            }

            *v300 = 136446466;
            *&v300[4] = v86;
            v301 = 2114;
            v302 = v84;
            _os_log_fault_impl(&_mh_execute_header, v81, OS_LOG_TYPE_FAULT, "We have a successful outgoing connection to device %{public}s(%{public}@) but we never asked to connect to it", v300, 0x16u);
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }

          v87 = sub_10000E92C();
          sub_100007E30(v271, "");
          sub_100693260(v87, 132, v271, 1);
        }

        v76 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR);
        if (v76)
        {
          sub_100063D0C(a2);
          objc_claimAutoreleasedReturnValue();
          sub_1008708B0();
          v71 = a2;
        }

        sub_1007564FC(v76, v71);
        v77 = sub_1005FF344(a1 + 336, (v72 + 40));
        if ((a1 + 344) != v77)
        {
          sub_10002717C((a1 + 336), v77);
          operator delete(v77);
        }

        sub_10002717C((a1 + 360), v72);
        operator delete(v72);
        sub_100745874(a1, 0);
        sub_1000618AC(&v293);
        sub_1002D1EAC(&v290);
        sub_100022214(&v293);
        if (!*(a1 + 928))
        {
          sub_1007556FC(a1);
          sub_100753CFC(a1);
        }

        goto LABEL_422;
      }

      v49 = 0;
LABEL_244:
      sub_100757568(v54, a4);
      *buf = uu;
      sub_100773D48((a1 + 384), uu, &unk_1008A9BD0, buf, v300)[6] = a4;
      if (!v11)
      {
        v185 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          if (a3)
          {
            v186 = "Incoming";
          }

          else
          {
            v186 = "Outgoing";
          }

          if (a3)
          {
            v187 = "from";
          }

          else
          {
            v187 = "to";
          }

          sub_1000D67B4(uu, v300);
          v188 = v303;
          v189 = *v300;
          v190 = sub_100063D0C(a2);
          if (v188 >= 0)
          {
            v191 = v300;
          }

          else
          {
            v191 = v189;
          }

          v192 = v190;
          *buf = 136447234;
          *&buf[4] = v186;
          *&buf[12] = 2082;
          *&buf[14] = v187;
          *&buf[22] = 2082;
          *&buf[24] = v191;
          *&buf[32] = 2114;
          *&buf[34] = v192;
          *&buf[42] = 2048;
          *&buf[44] = a4;
          _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_DEFAULT, "%{public}s connection %{public}s device %{public}s (%{public}@) with handle:%p was successful but already disconnected", buf, 0x34u);

          if (v303 < 0)
          {
            operator delete(*v300);
          }
        }

        goto LABEL_405;
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v141 = off_100B508C8;
      v142 = sub_10004DF60(uu);
      sub_10078BCE4(v141, v142, a3 ^ 1);

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v143 = off_100B508C8;
      v144 = sub_10004DF60(uu);
      sub_10078BD70(v143, v144, 0);

      v145 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v146 = "Incoming";
        }

        else
        {
          v146 = "Outgoing";
        }

        if (a3)
        {
          v147 = "from";
        }

        else
        {
          v147 = "to";
        }

        sub_1000D67B4(uu, v300);
        v148 = v303;
        v149 = *v300;
        v150 = sub_100063D0C(a2);
        if (v148 >= 0)
        {
          v151 = v300;
        }

        else
        {
          v151 = v149;
        }

        v152 = v150;
        *buf = 136447746;
        *&buf[4] = v146;
        *&buf[12] = 2082;
        *&buf[14] = v147;
        *&buf[22] = 2082;
        *&buf[24] = v151;
        *&buf[32] = 2114;
        *&buf[34] = v152;
        *&buf[42] = 2048;
        *&buf[44] = a4;
        *&buf[52] = 1024;
        *&buf[54] = v294;
        *&buf[58] = 1024;
        *&buf[60] = 1;
        _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "%{public}s connection %{public}s device %{public}s (%{public}@) with handle:%p was successful with connection interval %d active=%d", buf, 0x40u);

        if (v303 < 0)
        {
          operator delete(*v300);
        }
      }

      v153 = 0.35;
      if (v294 < 0x308u)
      {
        v153 = 0.75;
      }

      v154 = (v153 * (10 * v14) / (v294 * 1.25));
      v155 = qword_100BCE980;
      v156 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
      if (v156)
      {
        sub_1000D67B4(uu, v300);
        v158 = v303 >= 0 ? v300 : *v300;
        *buf = 136446978;
        *&buf[4] = v158;
        *&buf[12] = 1024;
        *&buf[14] = v154;
        *&buf[18] = 1024;
        *&buf[20] = v294;
        *&buf[24] = 1024;
        *&buf[26] = v14;
        _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "Connection Complete: setting LE device %{public}s connection threshold to %d events with interval %d, LSTO %d", buf, 0x1Eu);
        if (v303 < 0)
        {
          operator delete(*v300);
        }
      }

      v159 = sub_10000C798(v156, v157);
      v160 = (*(*v159 + 360))(v159);
      if (!v160)
      {
        goto LABEL_274;
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v162 = off_100B508C8;
      v163 = sub_10004DF60(uu);
      LOBYTE(v162) = sub_1000D5D08(v162, v163);

      if (v162)
      {
LABEL_274:
        v164 = sub_10000C7D0(v160, v161);
        if (v154 >= 0xFF)
        {
          v165 = 255;
        }

        else
        {
          v165 = v154;
        }

        if ((*(*v164 + 1064))(v164, a4, v165) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
        {
          sub_1008708FC();
        }
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v166 = off_100B508C8;
      v167 = sub_10004DF60(uu);
      v168 = sub_100788D8C(v166, v167);

      if (qword_100B50910 != -1)
      {
        sub_10086E454();
      }

      v171 = *(off_100B50908 + 206);
      v172 = *(off_100B50908 + 205);
      v296[0] = *(off_100B50908 + 207);
      v270 = (v171 | v172) & 1;
      v173 = sub_10000C7D0(v169, v170);
      if (*(a1 + 1387) == 1)
      {
        v174 = *(v173 + 800);
        if (a3 && *(a1 + 1152))
        {
          v175 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
          v177 = v175;
          v178 = *(a1 + 1144);
          if (v178)
          {
            v179 = (a1 + 1144);
            do
            {
              v180 = *(v178 + 32);
              v74 = v180 >= a2;
              v181 = v180 < a2;
              if (v74)
              {
                v179 = v178;
              }

              v178 = *(v178 + 8 * v181);
            }

            while (v178);
            if (v179 != (a1 + 1144))
            {
              v182 = v179[4];
              if (v182 <= a2)
              {
                if (v175 - v179[5] < 0x6FC23AC01)
                {
                  v193 = sub_10000C7D0(v175, v176);
                  if ((v174 - 3000) >= 0x3E8)
                  {
                    v194 = 0;
                  }

                  else
                  {
                    v194 = 75;
                  }

                  (*(*v193 + 2312))(v193, &v290 + 1, 1, 1, v194, (4 * v270) | (2 * v296[0]));
                  v195 = qword_100BCE980;
                  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                  {
                    v196 = sub_1007774DC(a2);
                    v197 = *(a1 + 1152);
                    *buf = 138543618;
                    *&buf[4] = v196;
                    *&buf[12] = 2048;
                    *&buf[14] = v197;
                    _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_DEFAULT, "setConnectionPrioritization for matching incoming address:%{public}@ fAddressForIncomingConnectionPrioritizationMap:%lu", buf, 0x16u);
                  }

                  sub_10002717C((a1 + 1136), v179);
                  operator delete(v179);
                }

                else
                {
                  v183 = qword_100BCE980;
                  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                  {
                    v184 = sub_1007774DC(v182);
                    *buf = 138543362;
                    *&buf[4] = v184;
                    _os_log_impl(&_mh_execute_header, v183, OS_LOG_TYPE_DEFAULT, "Ignoring expired incoming prioritized connection address:%{public}@", buf, 0xCu);
                  }
                }
              }
            }
          }

          sub_10075315C(a1, v177);
        }

        if (v168 == 196608)
        {
          v269 = *(a1 + 1387);
          v268 = 0;
          if ((((v174 - 3000) < 0x3E8) & v269) != 0)
          {
            v206 = 75;
          }

          else
          {
            v206 = 0;
          }

          v267 = v206;
          v207 = sub_10000E92C();
          v208 = (*(*v207 + 856))(v207, &v269, &v268, v296, &v270, &v267);
          v209 = qword_100BCE980;
          v210 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
          if (v210)
          {
            sub_1000D67B4(uu, v300);
            v211 = "";
            if (v208)
            {
              v211 = "(overridden)";
            }

            if (v303 >= 0)
            {
              v212 = v300;
            }

            else
            {
              v212 = *v300;
            }

            if (v269 > 2uLL)
            {
              v213 = "UNKNOWN";
            }

            else
            {
              v213 = off_100B0BE90[v269];
            }

            *buf = 136316418;
            *&buf[4] = v211;
            *&buf[12] = 2080;
            *&buf[14] = v212;
            *&buf[22] = 2080;
            *&buf[24] = v213;
            *&buf[32] = 1024;
            *&buf[34] = v268;
            *&buf[38] = 1024;
            *&buf[40] = v296[0];
            *&buf[44] = 1024;
            *&buf[46] = v267;
            _os_log_impl(&_mh_execute_header, v209, OS_LOG_TYPE_DEFAULT, "CBUseCaseDigitalIDTSA %sfor device %s setConnectionPrioritization{priority:%s, protectWLAN:%d, protectLEA:%d, percentageWithCriticalPriority:%d}", buf, 0x32u);
            if (v303 < 0)
            {
              operator delete(*v300);
            }
          }

          v214 = sub_1007589C8(v210, v269, v268, v296[0], v267);
          if (!v214)
          {
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
            {
              sub_100870938();
            }

            goto LABEL_355;
          }

LABEL_346:
          v216 = sub_10000C7D0(v214, v215);
          (*(*v216 + 2312))(v216, &v290 + 1, 1, 1, v267, v268 | (2 * v296[0]) | (4 * v270));
          goto LABEL_355;
        }

        if (v168 == 19)
        {
          v269 = *(a1 + 1387);
          v268 = 0;
          if ((((v174 - 3000) < 0x3E8) & v269) != 0)
          {
            v198 = 75;
          }

          else
          {
            v198 = 0;
          }

          v267 = v198;
          v199 = sub_10000E92C();
          v200 = (*(*v199 + 848))(v199, &v269, &v268, v296, &v270, &v267);
          v201 = qword_100BCE980;
          v202 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
          if (v202)
          {
            sub_1000D67B4(uu, v300);
            v203 = "";
            if (v200)
            {
              v203 = "(overridden)";
            }

            if (v303 >= 0)
            {
              v204 = v300;
            }

            else
            {
              v204 = *v300;
            }

            if (v269 > 2uLL)
            {
              v205 = "UNKNOWN";
            }

            else
            {
              v205 = off_100B0BE90[v269];
            }

            *buf = 136316418;
            *&buf[4] = v203;
            *&buf[12] = 2080;
            *&buf[14] = v204;
            *&buf[22] = 2080;
            *&buf[24] = v205;
            *&buf[32] = 1024;
            *&buf[34] = v268;
            *&buf[38] = 1024;
            *&buf[40] = v296[0];
            *&buf[44] = 1024;
            *&buf[46] = v267;
            _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, "CBUseCaseDigitalID for %sdevice %s setConnectionPrioritization{priority:%s, protectWLAN:%d, protectLEA:%d, percentageWithCriticalPriority:%d}", buf, 0x32u);
            if (v303 < 0)
            {
              operator delete(*v300);
            }
          }

          v214 = sub_1007589C8(v202, v269, v268, v296[0], v267);
          if (!v214)
          {
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
            {
              sub_100870974();
            }

            goto LABEL_355;
          }

          goto LABEL_346;
        }
      }

LABEL_355:
      if (*(a1 + 1385) == 1)
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v217 = off_100B508C8;
        v218 = sub_10004DF60(uu);
        v219 = sub_10078C0D0(v217, v218);

        v220 = sub_10075B9A8(a1, v168, v219);
        v222 = v220;
        if (v220)
        {
          v223 = sub_10000C7D0(v220, v221);
          (*(*v223 + 2072))(v223, v255, v222);
        }
      }

      if (((v256 | a3) & 1) == 0)
      {
        v224 = sub_10074ECD8(a1, uu);
        if (v294 > 0xCu)
        {
          v225 = v224;
        }

        else
        {
          v225 = 0;
        }

        if (v225 == 1)
        {
          v226 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000D67B4(uu, buf);
            v227 = (buf[23] & 0x80u) == 0 ? buf : *buf;
            *v300 = 136446210;
            *&v300[4] = v227;
            _os_log_impl(&_mh_execute_header, v226, OS_LOG_TYPE_DEFAULT, "Boosting connection interval to iCloud paired device %{public}s", v300, 0xCu);
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }

          v228 = sub_10004DF60(uu);
          sub_1007489DC(a1, v228, 4294967292, 0);
        }

        if ((*(a1 + 1112) & 1) == 0 && (v168 & 0xFFFF0000) == 0x10000 && ((byte_100BC7B01 & 1) != 0 || v294 && v294 != 24))
        {
          v229 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000D67B4(uu, v300);
            v231 = v303 >= 0 ? v300 : *v300;
            LOWORD(v230) = v294;
            *buf = 136446722;
            *&buf[4] = v231;
            *&buf[12] = 2048;
            *&buf[14] = v230 * 1.25;
            *&buf[22] = 1024;
            *&buf[24] = byte_100BC7B01;
            _os_log_impl(&_mh_execute_header, v229, OS_LOG_TYPE_DEFAULT, "Adjusting connection interval to FindMy device %{public}s, current CI is :%fms sendFindMyConnectionUpdateAnyTime:%d", buf, 0x1Cu);
            if (v303 < 0)
            {
              operator delete(*v300);
            }
          }

          v232 = sub_10004DF60(uu);
          sub_1007489DC(a1, v232, 4294967288, 0);
        }
      }

      if ((*(a1 + 632) & 1) == 0)
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v233 = off_100B508C8;
        v234 = sub_10004DF60(uu);
        LODWORD(v233) = sub_100788ED8(v233, v234);

        if (v233)
        {
          v237 = sub_10000C798(v235, v236);
          if ((*(*v237 + 368))(v237))
          {
            sub_100748508(a1, a4);
          }

          else if ((a3 & 1) == 0)
          {
            if (qword_100B508B0 != -1)
            {
              sub_10086DE54();
            }

            v238 = off_100B508A8;
            v239 = sub_10004DF60(uu);
            sub_1007489DC(v238, v239, 4294967294, 0);
          }
        }
      }

      if (sub_10074AB80(a1, uu))
      {
        v240 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000D67B4(uu, buf);
          v241 = (buf[23] & 0x80u) == 0 ? buf : *buf;
          *v300 = 136446210;
          *&v300[4] = v241;
          _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_DEFAULT, "Device was already disconnecting, disconnect connected device %{public}s", v300, 0xCu);
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        sub_1000618AC(&v293);
        *buf = 0;
        if (sub_1000C4FCC(a1, uu, buf))
        {
          sub_1002CDF48(*buf);
        }

        sub_100022214(&v293);
      }

LABEL_405:
      v299 = 0;
      memset(buf, 0, sizeof(buf));
      v242 = sub_10004DF60(uu);
      sub_100740410(a1, v242, buf);

      v243 = sub_10004DF60(uu);
      v244 = *buf;
      *buf = v243;

      *&buf[24] = CFAbsoluteTimeGetCurrent();
      buf[49] = 1;
      buf[51] = a6;
      if (qword_100B508C0 != -1)
      {
        sub_10086F454();
      }

      buf[48] = sub_10004EE74(off_100B508B8, *buf);
      buf[50] = a3 ^ 1;
      v245 = objc_opt_new();
      v246 = *&buf[8];
      *&buf[8] = v245;

      v247 = sub_10004DF60(uu);
      v262[0] = *buf;
      v262[1] = *&buf[8];
      v263 = *&buf[16];
      v264 = *&buf[32];
      v265 = *&buf[48];
      v266 = v299;
      sub_100740538(a1, v247, v262);

      if ((sub_10074AB80(a1, uu) & 1) == 0)
      {
        sub_100756884(a1, uu, 1, 0, 1);
      }

      goto LABEL_410;
    }

    if (a3)
    {
      v55 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Cancelling outgoing connection to same device", buf, 2u);
      }

      v56 = sub_10074518C(a1, 1);
      v57 = qword_100BCE980;
      v58 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
      if (v56 == 1302)
      {
        if (v58)
        {
          *buf = 0;
          v59 = "Failed to cancel the connection because its already connected, waiting for event";
          goto LABEL_132;
        }

LABEL_133:
        sub_100749FCC(a1, uu);
        LODWORD(v79) = 0;
LABEL_221:
        v127 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v128 = sub_10004DF60(uu);
          v129 = sub_10002DC3C(v79);
          v130 = v128;
          *buf = 136446466;
          *&buf[4] = v129;
          *&buf[12] = 2114;
          *&buf[14] = v130;
          _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "BLE Connection Completed %{public}s %{public}@", buf, 0x16u);

          v127 = qword_100BCE980;
          v11 = v258;
        }

        if (os_signpost_enabled(v127))
        {
          v131 = sub_10004DF60(uu);
          v132 = sub_10002DC3C(v79);
          v133 = v131;
          *buf = 136446466;
          *&buf[4] = v132;
          *&buf[12] = 2114;
          *&buf[14] = v133;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v127, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BTSignPost", "BLE Connection Completed %{public}s %{public}@", buf, 0x16u);

          v11 = v258;
        }

        v134 = _os_feature_enabled_impl();
        if ((v79 - 65562) < 4)
        {
          v135 = v134;
        }

        else
        {
          v135 = 0;
        }

        if (v135 == 1)
        {
          sub_1002D2088(a4, 1);
        }

        v54 = [*(a1 + 752) count];
        v49 = a3 ^ 1;
        if (v54)
        {
          v136 = [*(a1 + 752) anyObject];
          [*(a1 + 752) removeObject:v136];
          v137 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v136;
            _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "Moving device %{public}@ off of the overflow list now that there's room", buf, 0xCu);
          }

          v138 = *(a1 + 864);
          if (v138 == 4 || v138 == 2)
          {
            v139 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000D67B4(uu, buf);
              v140 = (buf[23] & 0x80u) == 0 ? buf : *buf;
              *v300 = 136446210;
              *&v300[4] = v140;
              _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "Adding %{public}s to AddToFilterAcceptList list", v300, 0xCu);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }
            }

            sub_100749E70(a1, uu);
          }

          else
          {
            sub_10074B0D4(a1, v136);
          }

          v11 = v258;
        }

        goto LABEL_244;
      }

      if (!v56)
      {
        if (v58)
        {
          *buf = 0;
          v59 = "Canceled pending connection successfuly, waiting for event";
LABEL_132:
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, v59, buf, 2u);
          goto LABEL_133;
        }

        goto LABEL_133;
      }

      if (v58)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "No pending event.", buf, 2u);
      }

      v80 = sub_10004DF60(uu);
      sub_100754B04(a1, v80);
      LODWORD(v79) = 0;
    }

    else
    {
      v66 = sub_10004DF60(uu);
      sub_100754B04(a1, v66);

      v67 = *(a1 + 864);
      v68 = qword_100BCE980;
      v69 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
      if (v67 == 1)
      {
        if (v69)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Successful outgoing connection", buf, 2u);
        }

        sub_100745874(a1, 0);
      }

      else if (v69)
      {
        if (v67 > 4)
        {
          v78 = "UNKNOWN";
        }

        else
        {
          v78 = off_100B0BE50[v67];
        }

        *buf = 136446466;
        *&buf[4] = v78;
        *&buf[12] = 1024;
        *&buf[14] = v67;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Current state when connection completed is %{public}s(%d), lets wait for the controller.", buf, 0x12u);
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v88 = off_100B508C8;
      v89 = sub_10004DF60(uu);
      v79 = sub_100788D8C(v88, v89);

      if (qword_100B54208 != -1)
      {
        sub_10086E578();
      }

      v90 = v11;
      v91 = sub_1007F024C(qword_100B54200, v79);
      v92 = *(a1 + 384);
      if (v92 != (a1 + 392))
      {
        do
        {
          if (qword_100B508D0 != -1)
          {
            sub_10086DE2C();
          }

          v93 = off_100B508C8;
          v94 = sub_10004DF60(v92 + 32);
          v95 = sub_100788D8C(v93, v94) == v79;

          v96 = *(v92 + 1);
          if (v96)
          {
            do
            {
              v97 = v96;
              v96 = *v96;
            }

            while (v96);
          }

          else
          {
            do
            {
              v97 = *(v92 + 2);
              v30 = *v97 == v92;
              v92 = v97;
            }

            while (!v30);
          }

          v90 += v95;
          v92 = v97;
        }

        while (v97 != (a1 + 392));
      }

      v98 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *&buf[4] = v79;
        *&buf[8] = 1024;
        *&buf[10] = v91;
        *&buf[14] = 1024;
        *&buf[16] = v90;
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "deviceUseCase:%d maxUseCaseConnections:%d currentlyConnectedForUseCase:%d", buf, 0x14u);
      }

      if (v91 > v90)
      {
        goto LABEL_220;
      }

      v254 = objc_alloc_init(NSMutableArray);
      v99 = *(a1 + 336);
      if (v99 != (a1 + 344))
      {
        do
        {
          if (qword_100B508D0 != -1)
          {
            sub_10086DE2C();
          }

          v100 = off_100B508C8;
          v101 = sub_10004DF60(v99 + 25);
          LODWORD(v100) = sub_100788D8C(v100, v101) == v79;

          if (v100)
          {
            v102 = sub_10004DF60(v99 + 25);
            [v254 addObject:v102];
          }

          v103 = *(v99 + 1);
          if (v103)
          {
            do
            {
              v104 = v103;
              v103 = *v103;
            }

            while (v103);
          }

          else
          {
            do
            {
              v104 = *(v99 + 2);
              v30 = *v104 == v99;
              v99 = v104;
            }

            while (!v30);
          }

          v99 = v104;
        }

        while (v104 != (a1 + 344));
      }

      v105 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v254;
        _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "devicesToDisconnect from fConnectingDevices: %{public}@", buf, 0xCu);
      }

      v253 = v14;
      v288 = 0u;
      v289 = 0u;
      v286 = 0u;
      v287 = 0u;
      v106 = v254;
      v107 = [v106 countByEnumeratingWithState:&v286 objects:v307 count:16];
      if (v107)
      {
        v108 = *v287;
        do
        {
          for (i = 0; i != v107; i = i + 1)
          {
            if (*v287 != v108)
            {
              objc_enumerationMutation(v106);
            }

            v110 = *(*(&v286 + 1) + 8 * i);
            if (*(a1 + 864))
            {
              sub_100749FCC(a1, uu);
            }

            else
            {
              sub_100754B04(a1, *(*(&v286 + 1) + 8 * i));
            }

            v285[0] = _NSConcreteStackBlock;
            v285[1] = 3221225472;
            v285[2] = sub_10075B940;
            v285[3] = &unk_100B0B5D8;
            v285[4] = v110;
            sub_10074063C(a1, v285);
          }

          v107 = [v106 countByEnumeratingWithState:&v286 objects:v307 count:16];
        }

        while (v107);
      }

      [v106 removeAllObjects];
      v283 = 0u;
      v284 = 0u;
      v281 = 0u;
      v282 = 0u;
      v111 = *(a1 + 752);
      v112 = [v111 countByEnumeratingWithState:&v281 objects:v306 count:16];
      if (v112)
      {
        v113 = *v282;
        do
        {
          v114 = 0;
          do
          {
            if (*v282 != v113)
            {
              objc_enumerationMutation(v111);
            }

            v115 = *(*(&v281 + 1) + 8 * v114);
            if (qword_100B508D0 != -1)
            {
              sub_10086DE2C();
            }

            if (sub_100788D8C(off_100B508C8, v115) == v79)
            {
              [v106 addObject:v115];
            }

            v114 = v114 + 1;
          }

          while (v112 != v114);
          v112 = [v111 countByEnumeratingWithState:&v281 objects:v306 count:16];
        }

        while (v112);
      }

      v116 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v106;
        _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "devicesToDisconnect from fConnectingOverflowDevices: %{public}@", buf, 0xCu);
      }

      v279 = 0u;
      v280 = 0u;
      v277 = 0u;
      v278 = 0u;
      v117 = *(a1 + 760);
      v118 = [v117 countByEnumeratingWithState:&v277 objects:v305 count:16];
      if (v118)
      {
        v119 = *v278;
        do
        {
          v120 = 0;
          do
          {
            if (*v278 != v119)
            {
              objc_enumerationMutation(v117);
            }

            v121 = *(*(&v277 + 1) + 8 * v120);
            if (qword_100B508D0 != -1)
            {
              sub_10086DE2C();
            }

            if (sub_100788D8C(off_100B508C8, v121) == v79)
            {
              [v106 addObject:v121];
            }

            v120 = v120 + 1;
          }

          while (v118 != v120);
          v118 = [v117 countByEnumeratingWithState:&v277 objects:v305 count:16];
        }

        while (v118);
      }

      v122 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v106;
        _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: devicesToDisconnect from fDevicesBlockedFromOutgoingConnections: %{public}@", buf, 0xCu);
      }

      v275 = 0u;
      v276 = 0u;
      v273 = 0u;
      v274 = 0u;
      v80 = v106;
      v123 = [v80 countByEnumeratingWithState:&v273 objects:v304 count:16];
      if (v123)
      {
        v124 = *v274;
        do
        {
          for (j = 0; j != v123; j = j + 1)
          {
            if (*v274 != v124)
            {
              objc_enumerationMutation(v80);
            }

            v126 = *(*(&v273 + 1) + 8 * j);
            [*(a1 + 752) removeObject:v126];
            [*(a1 + 760) removeObject:v126];
            v272[0] = _NSConcreteStackBlock;
            v272[1] = 3221225472;
            v272[2] = sub_10075B974;
            v272[3] = &unk_100B0B5D8;
            v272[4] = v126;
            sub_10074063C(a1, v272);
          }

          v123 = [v80 countByEnumeratingWithState:&v273 objects:v304 count:16];
        }

        while (v123);
      }

      v14 = v253;
    }

LABEL_220:
    v11 = v258;
    goto LABEL_221;
  }

  v18 = qword_100BCE980;
  if (v8 != 702 && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "Unexpected connection complete result (%{bluetooth:OI_STATUS}u) after cancellation!", buf, 8u);
    v18 = qword_100BCE980;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received connection complete event after successful cancellation. Parsing pending operations and processing pending connections", buf, 2u);
  }

  if (byte_100BC7B00 == 1)
  {
    v19 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v20 = "Warning: Ignoring connection complete after succesful cancellation for debug only";
LABEL_21:
      v21 = buf;
      v22 = v19;
      v23 = 2;
LABEL_421:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v20, v21, v23);
      goto LABEL_422;
    }

    goto LABEL_422;
  }

  if (*(a1 + 928) == 1)
  {
    v24 = *(a1 + 336);
    v25 = (a1 + 344);
    if (v24 != (a1 + 344))
    {
      do
      {
        v26 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v27 = sub_10004DF60(v24 + 25);
          *buf = 138543362;
          *&buf[4] = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Moving %{public}@ out of the filter accept list and into the pending list", buf, 0xCu);
        }

        sub_100749E70(a1, v24 + 25);
        v28 = *(v24 + 1);
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = *(v24 + 2);
            v30 = *v29 == v24;
            v24 = v29;
          }

          while (!v30);
        }

        v24 = v29;
      }

      while (v29 != v25);
    }

    sub_10000CEDC(a1 + 336, *(a1 + 344));
    *(a1 + 344) = 0;
    *(a1 + 352) = 0;
    *(a1 + 336) = v25;
    v31 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "calling LE_ClearFilterAcceptList", buf, 2u);
    }

    sub_10000CEDC(a1 + 608, *(a1 + 616));
    *(a1 + 608) = a1 + 616;
    *(a1 + 616) = 0u;
    v300[0] = 0;
    v32 = sub_1000216B4(v300);
    v40 = sub_1002E9800(v32, v33, v34, v35, v36, v37, v38, v39);
    v41 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v40;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "LE_ClearFilterAcceptList returned %d", buf, 8u);
    }

    sub_10000CEDC(a1 + 360, *(a1 + 368));
    *(a1 + 368) = 0;
    *(a1 + 376) = 0;
    *(a1 + 360) = a1 + 368;
    sub_10002249C(v300);
  }

  v42 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Connection complete after successful connection cancelation", buf, 2u);
  }

  sub_100745874(a1, 0);
  if (*(a1 + 1067) == 1)
  {
    v43 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Stack is shutting down, we're done here.", buf, 2u);
    }

    *(a1 + 1064) = 0;
    sub_100364600((a1 + 1016));
    goto LABEL_422;
  }

  v44 = *(a1 + 928);
  if (!v44)
  {
    sub_1007556FC(a1);
    sub_100753CFC(a1);
    goto LABEL_422;
  }

  v45 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    if (v44 > 3)
    {
      v46 = "UNKNOWN";
    }

    else
    {
      v46 = off_100B0BE78[v44 - 1];
    }

    *buf = 136446210;
    *&buf[4] = v46;
    v20 = "Not updating connection list, current LE Connection Manager State is %{public}s";
    v21 = buf;
    goto LABEL_420;
  }

LABEL_422:
  sub_10002249C(&v293);
  return sub_1000088CC(v295);
}

void sub_10075B4F0(_Unwind_Exception *a1)
{
  sub_10002249C(&STACK[0x20D]);
  sub_1000088CC(&STACK[0x210]);
  _Unwind_Resume(a1);
}

void sub_10075B7E0(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v5, "LE");
  sub_100007E30(__p, "IgnoreControllerConnectionCompleteOnCancel");
  (*(*v1 + 72))(v1, v5, __p, &byte_100BC7B00);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  v2 = sub_10000E92C();
  sub_100007E30(v5, "LE");
  sub_100007E30(__p, "sendFindMyConnectionUpdateAnyTime");
  (*(*v2 + 72))(v2, v5, __p, &byte_100BC7B01);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_10075B904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_10075B9A8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 131075)
  {
    v7 = *(a1 + 1392);
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v7 = 0;
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  if ([v5 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v14 + 1) + 8 * i) longLongValue] == 131075)
          {
            v12 = *(a1 + 1392);
          }

          else
          {
            v12 = 0;
          }

          if (v12 <= v7)
          {
            v7 = v7;
          }

          else
          {
            v7 = v12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

LABEL_20:

  return v7;
}

uint64_t sub_10075BB38(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 120);
  v4 = *(a1 + 864);
  if (v4 == 2)
  {
LABEL_2:
    v5 = qword_100BCE980;
    if (v2)
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_100870A48();
      }

      if (v2 == 758)
      {
        sub_100745874(a1, 4);
      }

      else if (v2 == 621)
      {
        v6 = sub_10000E92C();
        sub_100693F74(v6, 1);
      }

      v20 = *(a1 + 928);
      if (v20 == 1)
      {
        sub_100745874(a1, 0);
      }

      else if (v20)
      {
        v21 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v22 = "UNKNOWN";
          if (v20 == 2)
          {
            v22 = "Paused";
          }

          if (v20 == 3)
          {
            v22 = "Resuming";
          }

          *buf = 136446210;
          *&buf[4] = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "handleConnectionCancelledCallback skipping processConnectingDevices, current Le Connection Manager state is %{public}s", buf, 0xCu);
        }
      }

      else
      {
        sub_100745874(a1, 0);
        sub_1007556FC(a1);
        sub_100753CFC(a1);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pending connection(s) canceled successfully", buf, 2u);
      }

      sub_100745874(a1, 3);
      if (*(a1 + 1126) == 1)
      {
        v8 = *(a1 + 336);
        if (v8 != (a1 + 344))
        {
          do
          {
            v9 = sub_10004DF60(v8 + 25);
            v10 = sub_100742080(a1, v9) == 0;

            if (!v10)
            {
              if (qword_100B508D0 != -1)
              {
                sub_10086DE2C();
              }

              v11 = off_100B508C8;
              v12 = sub_10004DF60(v8 + 25);
              v13 = sub_100046458(v11, v12, 0);

              *&buf[3] = 0;
              *buf = 0;
              v14 = sub_10009A66C(v13);
              *buf = v14;
              buf[6] = BYTE6(v14);
              *&buf[4] = WORD2(v14);
              v16 = sub_10000C7D0(v14, v15);
              (*(*v16 + 2144))(v16, buf);
            }

            v17 = *(v8 + 1);
            if (v17)
            {
              do
              {
                v18 = v17;
                v17 = *v17;
              }

              while (v17);
            }

            else
            {
              do
              {
                v18 = *(v8 + 2);
                v19 = *v18 == v8;
                v8 = v18;
              }

              while (!v19);
            }

            v8 = v18;
          }

          while (v18 != (a1 + 344));
        }
      }
    }

    return sub_1000088CC(v24);
  }

  v7 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Received cancel callback outside of cancel state (%d)", buf, 8u);
    if (*(a1 + 864) == 2)
    {
      goto LABEL_2;
    }

    v7 = qword_100BCE980;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1008709B0();
  }

  return sub_1000088CC(v24);
}

void sub_10075BEF8(uint64_t a1, void *a2, unsigned int a3, int a4, double a5)
{
  v9 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v10 = sub_100786C44(off_100B508C8, v9);
  if (v10 != 0.0)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10086E034();
    }

    v11 = sub_100786DF8(off_100B508C8, v9);
    if (qword_100B508D0 != -1)
    {
      sub_10086E034();
    }

    v12 = sub_100786F18(off_100B508C8, v9);
    if (qword_100B508D0 != -1)
    {
      sub_10086E034();
    }

    v13 = sub_100787038(off_100B508C8, v9);
    if (v10 < a5 && v10 > 0.0)
    {
      v14 = a5 - v10;
    }

    else
    {
      v14 = 0.0;
    }

    if (v10 > 0.0 && v11 > v10)
    {
      v15 = v11 - v10;
    }

    else
    {
      v15 = 0.0;
    }

    v16 = v13 > v12;
    v17 = v12 > 0.0;
    v18 = v13 - v12;
    if (v17 && v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0.0;
    }

    if (v12 < a5 && v17)
    {
      v20 = a5 - v12;
    }

    else
    {
      v20 = 0.0;
    }

    if (qword_100B508D0 != -1)
    {
      sub_10086E034();
    }

    v21 = sub_100787158(off_100B508C8, v9);
    v88 = objc_alloc_init(NSDateFormatter);
    [v88 setDateFormat:@"yyyy-MM-dd H:mm:ss"];
    v80 = [NSDate dateWithTimeIntervalSinceReferenceDate:v10];
    v22 = [v88 stringFromDate:?];
    v23 = &unk_1008A2000;
    LODWORD(v23) = llround((v10 - floor(v10)) * 1000.0);
    v82 = v22;
    v90 = [NSString stringWithFormat:@"%@.%000d", v22, v23];
    v24 = 0.0;
    v25 = 0.0;
    if (v19 > 0.0)
    {
      v25 = v21 / v19;
    }

    if (v20 > 0.0)
    {
      v24 = v21 / v20;
    }

    v85 = a1;
    v26 = *(a1 + 1387);
    if (a4 == 196608 || a4 == 19)
    {
      v28 = 75;
    }

    else
    {
      v28 = 0;
    }

    if (!*(a1 + 1387))
    {
      v28 = 0;
    }

    v83 = a4;
    v84 = v28;
    v29 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ DigitalID Transaction -------------------", buf, 2u);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v90;
      v31 = [v90 UTF8String];
      *buf = 136446210;
      v92 = *&v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Start: %{public}s", buf, 0xCu);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v92 = v14;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Connection Duration: %.3f (secs)", buf, 0xCu);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v92 = v15;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Connection Set-up Duration: %.3f (secs)", buf, 0xCu);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v92 = v19;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Data Transfer Duration: %.3f (secs)", buf, 0xCu);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v92 = v20;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Presentment Data Transfer Duration: %.3f (secs)", buf, 0xCu);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v92) = v21;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Data Bytes: %d", buf, 8u);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v92 = v25;
      v93 = 2048;
      *v94 = v25 * 8.0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Data Transfer Throughput: %.3f (bytes/sec) %.3f (bits/sec)", buf, 0x16u);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v92 = v24;
      v93 = 2048;
      *v94 = v24 * 8.0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Presentment Data Transfer Throughput: %.3f (bytes/sec) %.3f (bits/sec)", buf, 0x16u);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v92) = a3;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Disconnection Reason: %d", buf, 8u);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v32 = "No";
      if (v26)
      {
        v32 = "Yes";
      }

      *buf = 136315138;
      v92 = *&v32;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Is Connection Prioritization Supported: %s", buf, 0xCu);
      v29 = qword_100BCE980;
    }

    v33 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (v33)
    {
      *buf = 67109120;
      LODWORD(v92) = v84;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Prioritized Connection Intervals Percent: %d", buf, 8u);
    }

    v86 = a3;
    v87 = v21;
    if (qword_100B50910 != -1)
    {
      sub_10086E454();
    }

    v35 = *(off_100B50908 + 41);
    v36 = *(off_100B50908 + 42);
    v37 = *(off_100B50908 + 204);
    v38 = *(off_100B50908 + 205);
    v39 = *(off_100B50908 + 206);
    v40 = *(off_100B50908 + 207);
    v89 = *(off_100B50908 + 212);
    v41 = sub_1000154A8(v33, v34);
    v42 = (*(*v41 + 120))(v41);
    if (v40)
    {
      v81 = *(v85 + 1387);
    }

    else
    {
      v81 = 0;
    }

    v43 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "statedump: ---------- DigitalID Concurrent Usages Statistics ----------", buf, 2u);
      v43 = qword_100BCE980;
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v92) = v35;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Num Classic Connections: %d", buf, 8u);
      v43 = qword_100BCE980;
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v92) = v36;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Num LE Connections: %d", buf, 8u);
      v43 = qword_100BCE980;
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = "No";
      if (v37)
      {
        v44 = "Yes";
      }

      *buf = 136446210;
      v92 = *&v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Watch Connected: %{public}s", buf, 0xCu);
      v43 = qword_100BCE980;
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v45 = "No";
      if (v38)
      {
        v45 = "Yes";
      }

      *buf = 136446210;
      v92 = *&v45;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - A2DP Streaming: %{public}s", buf, 0xCu);
      v43 = qword_100BCE980;
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v46 = "No";
      if (v39)
      {
        v46 = "Yes";
      }

      *buf = 136446210;
      v92 = *&v46;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - HFP Streaming: %{public}s", buf, 0xCu);
      v43 = qword_100BCE980;
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v47 = "No";
      if (v40)
      {
        v47 = "Yes";
      }

      *buf = 136446210;
      v92 = *&v47;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - LEA Streaming: %{public}s", buf, 0xCu);
      v43 = qword_100BCE980;
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v48 = "No";
      if (v89)
      {
        v48 = "Yes";
      }

      *buf = 136446210;
      v92 = *&v48;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - ISO Pipe Streaming: %{public}s", buf, 0xCu);
      v43 = qword_100BCE980;
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v49 = "No";
      if (v42)
      {
        v49 = "Yes";
      }

      *buf = 136446210;
      v92 = *&v49;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - WiFi on 2.4GHz: %{public}s", buf, 0xCu);
      v43 = qword_100BCE980;
    }

    if (os_signpost_enabled(v43))
    {
      v50 = v90;
      v51 = [v90 UTF8String];
      *buf = 138545154;
      v92 = *&v9;
      v93 = 2082;
      *v94 = v51;
      *&v94[8] = 2048;
      *v95 = v14;
      *&v95[8] = 2048;
      *v96 = v15;
      *&v96[8] = 2048;
      *v97 = v19;
      *&v97[8] = 1024;
      *v98 = v87;
      *&v98[4] = 2048;
      *&v98[6] = v25;
      *&v98[14] = 1024;
      *&v98[16] = v86;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BTSignPost", "BLE DigitalID Stat for %{public}@ start %{public}s duration total %.3f set-up %.3f data_transfer %.3f bytes %d throughput %.3f (bytes/sec) disconnect_reason %d", buf, 0x4Au);
      v43 = qword_100BCE980;
    }

    if (os_signpost_enabled(v43))
    {
      v52 = "No";
      *buf = 138545410;
      v92 = *&v9;
      v93 = 1024;
      if (v37)
      {
        v53 = "Yes";
      }

      else
      {
        v53 = "No";
      }

      *v94 = v35;
      if (v38)
      {
        v54 = "Yes";
      }

      else
      {
        v54 = "No";
      }

      *&v94[4] = 1024;
      if (v39)
      {
        v55 = "Yes";
      }

      else
      {
        v55 = "No";
      }

      *&v94[6] = v36;
      if (v40)
      {
        v56 = "Yes";
      }

      else
      {
        v56 = "No";
      }

      *v95 = 2082;
      if (v89)
      {
        v57 = "Yes";
      }

      else
      {
        v57 = "No";
      }

      *&v95[2] = v53;
      if (v42)
      {
        v52 = "Yes";
      }

      *v96 = 2082;
      *&v96[2] = v54;
      *v97 = 2082;
      *&v97[2] = v55;
      *v98 = 2082;
      *&v98[2] = v56;
      *&v98[10] = 2082;
      *&v98[12] = v57;
      v99 = 2082;
      v100 = v52;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BTSignPost", "BLE DigitalID Condition for %{public}@ Classic %d LE %d Watch %{public}s A2DP %{public}s HFP %{public}s LEA %{public}s ISO %{public}s WiFi 2.4GHz %{public}s", buf, 0x54u);
    }

    v58 = +[NSMutableDictionary dictionary];
    v59 = [NSNumber numberWithDouble:v14];
    [v58 setObject:v59 forKeyedSubscript:@"ConnectionDurationInSec"];

    v60 = [NSNumber numberWithDouble:v15];
    [v58 setObject:v60 forKeyedSubscript:@"ConnectionSetupDurationInSec"];

    v61 = [NSNumber numberWithDouble:v19];
    [v58 setObject:v61 forKeyedSubscript:@"DataTransferDurationInSec"];

    v62 = [NSNumber numberWithUnsignedInt:v87];
    [v58 setObject:v62 forKeyedSubscript:@"DataBytes"];

    v63 = [NSNumber numberWithDouble:v25];
    [v58 setObject:v63 forKeyedSubscript:@"ThroughputBytesPerSec"];

    v64 = [NSNumber numberWithUnsignedInt:v86];
    [v58 setObject:v64 forKeyedSubscript:@"DisconnectionReason"];

    v65 = [NSNumber numberWithBool:v37];
    [v58 setObject:v65 forKeyedSubscript:@"IsWatchConnected"];

    v66 = [NSNumber numberWithBool:v38];
    [v58 setObject:v66 forKeyedSubscript:@"IsA2DPSessionActive"];

    v67 = [NSNumber numberWithBool:v39];
    [v58 setObject:v67 forKeyedSubscript:@"IsHFPSessionActive"];

    v68 = [NSNumber numberWithBool:v40];
    [v58 setObject:v68 forKeyedSubscript:@"IsLEASessionActive"];

    v69 = [NSNumber numberWithBool:v89];
    [v58 setObject:v69 forKeyedSubscript:@"IsISOPipeStreamingActive"];

    v70 = [NSString stringWithUTF8String:sub_10002DC3C(v83)];
    [v58 setObject:v70 forKeyedSubscript:@"UseCase"];

    v71 = [NSNumber numberWithBool:*(v85 + 1387)];
    [v58 setObject:v71 forKeyedSubscript:@"IsConnPrioritizationSupported"];

    v72 = [NSNumber numberWithUnsignedInt:v84];
    [v58 setObject:v72 forKeyedSubscript:@"PrioritizedConnIntervalsPercentage"];

    v73 = [NSNumber numberWithBool:v81 & 1];
    [v58 setObject:v73 forKeyedSubscript:@"ProtectLEA"];

    v74 = [NSNumber numberWithDouble:v20];
    [v58 setObject:v74 forKeyedSubscript:@"PresentmentDuration"];

    v75 = [NSNumber numberWithDouble:v24];
    [v58 setObject:v75 forKeyedSubscript:@"PresentmentThroughputBytesPerSec"];

    v76 = qword_100BCE980;
    v77 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
    if (v77)
    {
      *buf = 138543362;
      v92 = *&v58;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Sending DigitalIDMetric :%{public}@", buf, 0xCu);
    }

    v79 = sub_10000F034(v77, v78);
    (*(*v79 + 296))(v79, v58);
  }
}

void sub_10075CF88(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  sub_100786FAC(off_100B508C8, v2, 0.0);
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  sub_1007870CC(off_100B508C8, v2, 0.0);
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  sub_1007871E4(off_100B508C8, v2, 0);
}

void sub_10075D050(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v7 = a2;
  if (qword_100B508C0 != -1)
  {
    sub_100870AC0();
  }

  v8 = sub_10004EE74(off_100B508B8, v7);
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v9 = sub_100786C44(off_100B508C8, v7);
  v10 = 0.0;
  if (CFAbsoluteTimeGetCurrent() > v9)
  {
    v10 = CFAbsoluteTimeGetCurrent() - v9;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v11 = sub_10078B3C8(off_100B508C8, v7);
  v12 = +[NSMutableDictionary dictionary];
  v13 = [NSNumber numberWithBool:v8];
  [v12 setObject:v13 forKeyedSubscript:@"Paired"];

  v14 = [NSNumber numberWithDouble:v10];
  [v12 setObject:v14 forKeyedSubscript:@"DurationInSeconds"];

  v15 = [NSNumber numberWithUnsignedInt:a4];
  [v12 setObject:v15 forKeyedSubscript:@"DisconnectReasonCode"];

  v16 = [NSNumber numberWithBool:a3 == 0];
  [v12 setObject:v16 forKeyedSubscript:@"Initiator"];

  v17 = [NSNumber numberWithShort:v11];
  [v12 setObject:v17 forKeyedSubscript:@"ConnectionEstablishedRSSI"];

  sub_10004DFB4(buf, v7);
  v25 = buf;
  v18 = [NSNumber numberWithUnsignedShort:*(sub_100775BB4((a1 + 480), buf, &unk_1008A9BD0, &v25, &v24) + 21)];
  [v12 setObject:v18 forKeyedSubscript:@"PreviousConnectRetries"];

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v19 = sub_10078C174(off_100B508C8, v7);
  [v12 setObject:v19 forKeyedSubscript:@"UseCase"];

  v20 = qword_100BCE980;
  v21 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    *buf = 138543362;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Sending LeConnectRetry metric :%{public}@", buf, 0xCu);
  }

  v23 = sub_10000F034(v21, v22);
  (*(*v23 + 288))(v23, v12);
}

void sub_10075D410(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8, unsigned int a9)
{
  v11 = a6;
  v16 = sub_10000F034(a1, a2);
  v17 = (*(*v16 + 592))(v16, a3, a4);
  v19 = *sub_10000F034(v17, v18);
  (*(v19 + 568))();
  v28[0] = 0;
  v28[1] = 0;
  sub_100007F88(v28, a1 + 120);
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v20 = qword_100BCE980;
  v21 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    v23 = sub_100063D0C(a2);
    v24 = v23;
    *buf = 67110402;
    v25 = "Peripheral";
    *&buf[4] = v11;
    *&buf[8] = 2114;
    if (!a5)
    {
      v25 = "Central";
    }

    *&buf[10] = v23;
    v30 = 2082;
    v31 = v25;
    v26 = "Yes";
    v32[0] = 2082;
    if (!a7)
    {
      v26 = "No";
    }

    *&v32[1] = v26;
    v32[5] = 1024;
    v33 = a8;
    v34 = 1024;
    v35 = a9;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "LE ConnManager disconnection complete reason %d address=%{public}@ localRole=%{public}s wakeUp=%{public}s encrypted:%d timeOffsetInMs:%d", buf, 0x32u);
  }

  sub_100007EE8(v21, v22);
  operator new();
}

void sub_10075F5C8(uint64_t a1, void *a2, int a3, char a4)
{
  v7 = a2;
  v9 = sub_10000C7D0(v7, v8);
  v10 = (*(*v9 + 3280))(v9);
  if (v10)
  {
    v12 = sub_100007EE8(v10, v11);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10076F554;
    v13[3] = &unk_100AE2880;
    v15 = a1;
    v14 = v7;
    v17 = a4;
    v16 = a3;
    sub_10000CA94(v12, v13);
  }
}

void sub_10075F6DC(uint64_t a1, void *a2, int a3, char a4)
{
  v7 = a2;
  if (a3 == 4833)
  {
    v8 = _os_feature_enabled_impl();
    if (v8)
    {
      v10 = sub_100007EE8(v8, v9);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1007704F4;
      v11[3] = &unk_100AE2880;
      v13 = a1;
      v12 = v7;
      v15 = a4;
      v14 = 4833;
      sub_10000CA94(v10, v11);
    }
  }
}

void sub_10075F7DC(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 1184) = Current;
  if (Current + -172800.0 <= 0.0)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100870F70();
    }
  }

  else
  {
    v3 = *(a1 + 1176);
    sub_10076A908(a1, Current + -172800.0);
    if (v3 > 0x20)
    {
      sub_10076AD20(a1);
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
      {
        sub_100870FF4();
      }
    }

    else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
    {
      sub_10087106C();
    }
  }
}

void sub_10075F8D8(uint64_t a1, char *a2, int a3, double a4)
{
  v8 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a2;
    if (a2[23] < 0)
    {
      v9 = *a2;
    }

    *buf = 136446722;
    *&buf[4] = v9;
    *&buf[12] = 1024;
    *&buf[14] = a4;
    *&buf[18] = 1024;
    *&buf[20] = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "upsertDisconnectionHistoryElement %{public}s time %d reason %d", buf, 0x18u);
  }

  v10 = sub_1000463C8(a1 + 1160, a2);
  if (a1 + 1168 != v10)
  {
    memset(buf, 0, sizeof(buf));
    sub_10077608C(buf, v10 + 56);
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
    {
      sub_1008710E8();
    }

    if (*&buf[16] >= 0x60uLL)
    {
      if (*&buf[16] != 95)
      {
        v11 = *&buf[8];
        v12 = (*&buf[16] - 95) + 1;
        v13 = *&buf[8];
        do
        {
          v13 = v13[1];
          --v12;
        }

        while (v12 > 1);
        if (*&buf[8] != v13)
        {
          v14 = *(*v13 + 8);
          v15 = **&buf[8];
          *(v15 + 8) = v14;
          *v14 = v15;
          do
          {
            v16 = v11[1];
            --*&buf[16];
            operator delete(v11);
            v11 = v16;
          }

          while (v16 != v13);
        }
      }

      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
      {
        sub_100871160();
      }
    }

    operator new();
  }

  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
  {
    sub_1008711D4();
  }

  if (*(a1 + 1176) >= 0x21uLL)
  {
    sub_10075F7DC(a1);
  }

  *buf = buf;
  *&buf[8] = buf;
  operator new();
}

void sub_10075FBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100028EB4(va);
  _Unwind_Resume(a1);
}

void sub_10075FC10(uint64_t a1, void *a2, int a3)
{
  v44 = a2;
  sub_10004DFB4(buf, v44);
  if (a1 + 1568 != sub_10004E34C(a1 + 1560, buf))
  {
    sub_10004DFB4(buf, v44);
    v52 = buf;
    v5 = sub_100776CC8((a1 + 1560), buf, &unk_1008A9BD0, &v52, &v51 + 1);
    v45 = *(v5 + 6);
    v6 = *(v5 + 7);
    v7 = v5[9];
    v8 = *(v5 + 80);
    v41 = *(v5 + 11);
    v9 = *(v5 + 97);
    v10 = *(v5 + 98);
    v46 = *(v5 + 99);
    v42 = *(v5 + 100);
    v38 = *(v5 + 26);
    v39 = *(v5 + 27);
    v40 = *(v5 + 28);
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v11 = sub_100788D8C(off_100B508C8, v44);
    if (qword_100B508C0 != -1)
    {
      sub_10086F454();
    }

    v12 = sub_10004EE74(off_100B508B8, v45);
    if (v9)
    {
      v13 = v12;
      Current = CFAbsoluteTimeGetCurrent();
      v15 = +[NSMutableDictionary dictionary];
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v16 = sub_10078B3C8(off_100B508C8, v45);
      v17 = [NSNumber numberWithBool:v13];
      [v15 setObject:v17 forKeyedSubscript:@"Paired"];

      v18 = [NSNumber numberWithDouble:Current - v7];
      [v15 setObject:v18 forKeyedSubscript:@"Duration"];

      v19 = [NSNumber numberWithInteger:a3];
      [v15 setObject:v19 forKeyedSubscript:@"DisconnectReason"];

      v20 = [NSNumber numberWithBool:v10 & 1];
      [v15 setObject:v20 forKeyedSubscript:@"Initiator"];

      v21 = [NSNumber numberWithBool:v8 & 1];
      [v15 setObject:v21 forKeyedSubscript:@"RemoteDisconnected"];

      if (v10)
      {
        v22 = [NSNumber numberWithShort:v16];
        [v15 setObject:v22 forKeyedSubscript:@"ConnectionEstablishedRSSI"];
      }

      if (v11 == 655360)
      {
        [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:@"DigitalKey"];
        v23 = [NSNumber numberWithUnsignedInt:v39];
        [v15 setObject:v23 forKeyedSubscript:@"KeyRSSIEventCount"];

        v24 = [NSNumber numberWithUnsignedInt:v38];
        [v15 setObject:v24 forKeyedSubscript:@"KeyRSSIEventWakeCount"];
      }

      if (v46)
      {
        [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:@"KeyWakeOnConnect"];
      }

      if (v42)
      {
        [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:@"KeyWakeOnDisconnect"];
      }

      if (v41 > 5)
      {
        v25 = @"PeerTypeOther";
      }

      else
      {
        v25 = *(&off_100B0BEE8 + v41);
      }

      [v15 setObject:v25 forKeyedSubscript:@"PeerType"];
      v26 = [NSNumber numberWithUnsignedInt:v40];
      [v15 setObject:v26 forKeyedSubscript:@"DASessionType"];

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v27 = [NSNumber numberWithUnsignedInt:sub_10078BB40(off_100B508C8, v45)];
      [v15 setObject:v27 forKeyedSubscript:@"LinkReadyDuration"];

      LOBYTE(v52) = 0;
      v51 = 0;
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      sub_10078B86C(off_100B508C8, v45, &v51, &v52, &v51 + 1);
      v28 = [NSNumber numberWithBool:v52];
      [v15 setObject:v28 forKeyedSubscript:@"FastLeConnectionConfigured"];

      v29 = [NSNumber numberWithBool:v51];
      [v15 setObject:v29 forKeyedSubscript:@"FastLeConnectionUsed"];

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v30 = [NSNumber numberWithUnsignedShort:sub_10078BC58(off_100B508C8, v45)];
      [v15 setObject:v30 forKeyedSubscript:@"LinkReadyConnectionInterval"];

      if (HIBYTE(v51) == 1)
      {
        [v15 setObject:0 forKeyedSubscript:@"DASessionType"];
      }

      if (![v6 count])
      {

        v6 = &off_100B34678;
      }

      v43 = a1;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v6 = v6;
      v31 = [v6 countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v31)
      {
        v32 = *v48;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v48 != v32)
            {
              objc_enumerationMutation(v6);
            }

            [v15 setObject:*(*(&v47 + 1) + 8 * i) forKeyedSubscript:@"BundleIdentifier"];
            v34 = qword_100BCE980;
            v35 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
            if (v35)
            {
              *buf = 138412290;
              v55 = v15;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Sending LESessionEndedMetric %@", buf, 0xCu);
            }

            v37 = sub_10000F034(v35, v36);
            (*(*v37 + 280))(v37, v15);
          }

          v31 = [v6 countByEnumeratingWithState:&v47 objects:v53 count:16];
        }

        while (v31);
      }

      sub_1007603DC(v43, v45);
    }
  }
}

void sub_1007603DC(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10004DFB4(v4, v3);
  sub_100776E74((a1 + 1560), v4);
}

void sub_10076046C(uint64_t a1)
{
  if (qword_100B50910 != -1)
  {
    sub_10086E05C();
  }

  sub_1005BBC80(off_100B50908, *(a1 + 40));
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v2 = sub_10078C5DC(off_100B508C8, *(a1 + 32));
  v3 = [v2 cuFilteredArrayUsingBlock:&stru_100B0B5F8];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (qword_100B50910 != -1)
        {
          sub_10086E454();
        }

        sub_1005BFECC(off_100B50908, *(a1 + 32), [v8 integerValue], *(a1 + 44));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

id sub_100760644(id a1, NSNumber *a2)
{
  v2 = a2;
  if ([(NSNumber *)v2 integerValue]<= 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

uint64_t sub_100760694(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *a2;
  if (*(a1 + 44) == 1)
  {
    return (*(v5 + 16))(a2, v3, v4);
  }

  else
  {
    return (*(v5 + 136))(a2, v3, v4);
  }
}

void sub_1007606FC(uint64_t a1)
{
  if (!*(a1 + 896))
  {
    sub_100088DD4(1, 3, 0);
  }
}

void sub_1007607F0(uint64_t a1, double a2)
{
  if (*(a1 + 552))
  {
    v4 = qword_100BCE980;
    if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT) || !sub_10087124C(v4, (a1 + 552)))
    {
      sub_100745EFC(a1);
    }
  }

  v5 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Arming Fast connection scan Timer with interval %f seconds", buf, 0xCu);
  }

  *(a1 + 560) = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100760998;
  v9[3] = &unk_100AEC260;
  v9[4] = a1;
  v6 = [NSTimer timerWithTimeInterval:0 repeats:v9 block:a2];
  v7 = *(a1 + 552);
  *(a1 + 552) = v6;

  v8 = +[NSRunLoop mainRunLoop];
  [v8 addTimer:*(a1 + 552) forMode:NSDefaultRunLoopMode];
}

void sub_100760998(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = qword_100BCE980;
  v6 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fast connection scan Timer expired !", buf, 2u);
  }

  v8 = sub_100007EE8(v6, v7);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100760A80;
  v9[3] = &unk_100ADF8F8;
  v9[4] = v4;
  sub_10000CA94(v8, v9);
}

uint64_t sub_100760A88(uint64_t a1)
{
  *&v74 = 0;
  sub_100016250(&v74);
  v62 = SWORD2(v74);
  v63 = v74;
  v90[0] = 0;
  v90[1] = 0;
  sub_100007F88(v90, a1 + 120);
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  memset(v76, 0, sizeof(v76));
  v74 = 0u;
  sub_100007AD0(&v74);
  sub_100745EFC(a1);
  v73 = 0;
  v4 = sub_1000154A8(v2, v3);
  (*(*v4 + 48))(v4, &v73 + 1, &v73);
  if (qword_100B50910 != -1)
  {
    sub_10086E454();
  }

  v5 = *(off_100B50908 + 205);
  v6 = *(off_100B50908 + 206);
  v7 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *&buf[4] = HIBYTE(v73);
    *&buf[8] = 1024;
    *&buf[10] = v73;
    *&buf[14] = 1024;
    LODWORD(v92) = v5;
    WORD2(v92) = 1024;
    *(&v92 + 6) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "checkIfFastConnectionScanIsRequired reason:%d state%d isA2DPStreaming:%d isHFPStreaming:%d", buf, 0x1Au);
  }

  v106 = 0;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  memset(v93, 0, sizeof(v93));
  *buf = 0u;
  sub_100007AD0(buf);
  v8 = *(a1 + 336);
  if (v8 != (a1 + 344))
  {
    v9 = 0;
    if ((v5 | v6))
    {
      v10 = 8;
    }

    else
    {
      v10 = 7;
    }

    v61 = v10;
    v11 = 0.0;
    while (1)
    {
      v72 = 0uLL;
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v12 = off_100B508C8;
      v13 = sub_10004DF60(v8 + 25);
      sub_10078CCAC(v12, v13, &v72);

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v14 = off_100B508C8;
      v15 = sub_10004DF60(v8 + 25);
      v16 = sub_10078FD20(v14, v15);

      if (v72 == 0 || v16 == 6)
      {
        goto LABEL_48;
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v17 = off_100B508C8;
      v18 = sub_10004DF60(v8 + 25);
      LOWORD(v17) = sub_10078FD20(v17, v18);

      v71 = v17;
      if (HIBYTE(v73) == 2)
      {
        if (v73 == 1)
        {
          v20 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v107[0]) = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Extending host scan request to DefaultExtended while in AirPlay critical buffering state", v107, 2u);
          }

          v19 = 1;
          goto LABEL_26;
        }
      }

      else if (HIBYTE(v73) == 1 && v73 == 1)
      {
        v19 = v61;
LABEL_26:
        v71 = v19;
      }

      v70 = 0;
      v21 = sub_10004DF60(v8 + 25);
      sub_100761750(a1, v21, &v71, &v70, &v72);

      v22 = sub_100007774(&v92, " | ", 3);
      memset(v107, 0, 37);
      uuid_unparse_upper(v8 + 25, v107);
      sub_100007E30(&v67, v107);
      if ((v69 & 0x80u) == 0)
      {
        v23 = &v67;
      }

      else
      {
        LODWORD(v23) = v67;
      }

      if ((v69 & 0x80u) == 0)
      {
        v24 = v69;
      }

      else
      {
        v24 = v68;
      }

      v25 = sub_100007774(v22, v23, v24);
      v26 = sub_100007774(v25, ",exp:", 5);
      v108 = 0u;
      memset(v107, 0, sizeof(v107));
      snprintf(v107, 0x3FuLL, "%0llu.%0llu", v72, *(&v72 + 1));
      sub_100007E30(__p, v107);
      if (v66 >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = __p[0];
      }

      v28 = strlen(v27);
      v29 = sub_100007774(v26, v27, v28);
      sub_100007774(v29, ",reached:", 9);
      v107[0] = v72;
      v107[1] = WORD4(v72);
      sub_100306E3C(v107);
      std::ostream::operator<<();
      if (v66 < 0)
      {
        operator delete(__p[0]);
      }

      if (v69 < 0)
      {
        operator delete(v67);
      }

      v107[0] = v72;
      v107[1] = WORD4(v72);
      if (!sub_100306E3C(v107))
      {
        v30 = *(&v72 + 1) - v62 + 1000 * (v72 - v63);
        v31 = v30 / 0x3E8;
        v32 = (v30 % 0x3E8) / 1000.0;
        if (v11 >= v32 + (v30 / 0x3E8))
        {
          v33 = v32 + v31;
        }

        else
        {
          v33 = v11;
        }

        if (v11 == 0.0)
        {
          v11 = v32 + v31;
        }

        else
        {
          v11 = v33;
        }

        v34 = sub_100007774(&v92, ",interval:", 10);
        LOBYTE(v107[0]) = 48;
        v35 = sub_10004DE98(v34, v107);
        *(v35 + *(*v35 - 24) + 16) = 3;
        v36 = std::ostream::operator<<();
        sub_100007774(v36, "sec", 3);
        v9 = 1;
      }

LABEL_48:
      v37 = *(v8 + 1);
      if (v37)
      {
        do
        {
          v38 = v37;
          v37 = *v37;
        }

        while (v37);
      }

      else
      {
        do
        {
          v38 = *(v8 + 2);
          v39 = *v38 == v8;
          v8 = v38;
        }

        while (!v39);
      }

      v8 = v38;
      if (v38 == (a1 + 344))
      {
        goto LABEL_56;
      }
    }
  }

  v9 = 0;
  v11 = 0.0;
LABEL_56:
  v40 = sub_100007774(&v75, "now:", 4);
  v108 = 0u;
  memset(v107, 0, sizeof(v107));
  snprintf(v107, 0x3FuLL, "%0llu.%0llu", v63, v62);
  v41 = &v67;
  sub_100007E30(&v67, v107);
  if ((v69 & 0x80u) != 0)
  {
    v41 = v67;
  }

  v42 = strlen(v41);
  v43 = sub_100007774(v40, v41, v42);
  sub_100007774(v43, " duration:", 10);
  v44 = std::ostream::operator<<();
  sub_100007774(v44, "sec", 3);
  if (v69 < 0)
  {
    operator delete(v67);
  }

  v45 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    std::stringbuf::str();
    v46 = v69;
    v47 = v67;
    std::stringbuf::str();
    v48 = &v67;
    if (v46 < 0)
    {
      v48 = v47;
    }

    if (v66 >= 0)
    {
      v49 = __p;
    }

    else
    {
      v49 = __p[0];
    }

    v107[0] = 67109634;
    v107[1] = v9 & 1;
    LOWORD(v107[2]) = 2082;
    *(&v107[2] + 2) = v48;
    HIWORD(v107[4]) = 2082;
    *&v107[5] = v49;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "shouldEnableFastConnectionScan:%d %{public}s%{public}s", v107, 0x1Cu);
    if (v66 < 0)
    {
      operator delete(__p[0]);
    }

    if (v69 < 0)
    {
      operator delete(v67);
    }
  }

  if (*(a1 + 864) != 1 || !*(a1 + 352))
  {
    goto LABEL_74;
  }

  LOWORD(v67) = 0;
  LOWORD(__p[0]) = 0;
  LOWORD(v72) = 0;
  LOBYTE(v71) = 0;
  v70 = 0;
  sub_100761EE8(a1, &v67, __p, &v72, &v71, &v70);
  v64 = 0;
  sub_1000216B4(&v64);
  v50 = v67;
  v51 = LOWORD(__p[0]);
  v52 = sub_1002BF904(v67, __p[0]);
  sub_100022214(&v64);
  if (v52)
  {
    sub_10002249C(&v64);
LABEL_74:
    if (v9)
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
      {
        sub_100871348();
      }

      if (*(a1 + 352) && *(a1 + 184) == 1 && v11 > 0.0)
      {
        sub_1007606FC(a1);
        v53 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v107[0] = 134217984;
          *&v107[1] = v11;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Setting scan level expiration %f ms from now", v107, 0xCu);
        }

        sub_1007607F0(a1, v11);
      }
    }

    else if (*(a1 + 896))
    {
      sub_100745DEC(a1);
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
      {
        sub_1008712A0();
      }

      if (*(a1 + 864) == 1 && *(a1 + 352))
      {
        v54 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v107[0]) = 0;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Reducing connection timing for current connections", v107, 2u);
        }

        sub_10074518C(a1, 0);
      }
    }

    goto LABEL_94;
  }

  v55 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v107[0] = 67109376;
    v107[1] = v51;
    LOWORD(v107[2]) = 1024;
    *(&v107[2] + 2) = v50;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Cancelling connections due to connection scan params: window - 0x%x, interval - 0x%x", v107, 0xEu);
  }

  sub_10074518C(a1, 0);
  sub_10002249C(&v64);
LABEL_94:
  v59 = v57;
  *&v92 = v57;
  if (SHIBYTE(v95) < 0)
  {
    operator delete(*(&v94 + 1));
  }

  std::locale::~locale(v93);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  *&v74 = v56;
  *(&v74 + *(v56 - 24)) = v58;
  *&v75 = v59;
  if (SHIBYTE(v78) < 0)
  {
    operator delete(*(&v77 + 1));
  }

  std::locale::~locale(v76);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return sub_1000088CC(v90);
}

void sub_100761660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  sub_1007FC91C(va);
  sub_1007FC91C(&a25);
  sub_1000088CC(&a61);
  _Unwind_Resume(a1);
}

void sub_100761750(uint64_t a1, void *a2, unsigned __int16 *a3, char *a4, void *a5)
{
  v9 = a2;
  v11 = sub_1000154A8(v9, v10);
  v12 = (*(*v11 + 56))(v11);
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  *__p = 0u;
  v57 = 0u;
  v54 = 0u;
  memset(v55, 0, sizeof(v55));
  v53 = 0u;
  sub_100007AD0(&v53);
  v13 = sub_100007774(&v54, "connectionScanParametersForDevice device:", 41);
  v14 = sub_10004DFB4(v69, v9);
  memset(out, 0, 37);
  uuid_unparse_upper(v14, out);
  sub_100007E30(buf, out);
  if ((v71 & 0x80u) == 0)
  {
    v15 = buf;
  }

  else
  {
    LODWORD(v15) = *buf;
  }

  if ((v71 & 0x80u) == 0)
  {
    v16 = v71;
  }

  else
  {
    v16 = *&buf[8];
  }

  v17 = sub_100007774(v13, v15, v16);
  sub_100007774(v17, " coexRecommendedConnectionScanDutycycle:", 40);
  std::ostream::operator<<();
  if (v71 < 0)
  {
    operator delete(*buf);
  }

  v18 = *a3;
  if (!v12 || v18 > 2)
  {
    LODWORD(v27) = *(a1 + 4 * v18 + 568);
    sub_100007774(&v54, " No CoexRequested", 17);
    v32 = 0;
LABEL_27:
    *a4 = v32;
    goto LABEL_28;
  }

  sub_100007774(&v54, " CoexRequested", 14);
  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v19 = a3;
  v20 = sub_10078FF50(off_100B508C8, v9);
  v21 = sub_100007774(&v54, " devicePriority:", 16);
  v22 = "Low";
  if (v20 == 1)
  {
    v22 = "Medium";
  }

  if (v20 == 2)
  {
    v23 = "High";
  }

  else
  {
    v23 = v22;
  }

  v24 = strlen(v23);
  sub_100007774(v21, v23, v24);
  if (!v20)
  {
    LODWORD(v27) = *(a1 + 600);
    *v19 = 8;
    v32 = 1;
    goto LABEL_27;
  }

  if (v20 == 2)
  {
    LODWORD(v27) = *(a1 + 4 * *v19 + 568);
    v32 = 2;
    goto LABEL_27;
  }

  if (v20 == 1 && *(a1 + 112))
  {
    v52 = v19;
    v25 = 0;
    v26 = 0;
    LODWORD(v27) = 0;
    while (1)
    {
      v27 = (*(*(a1 + 104) + v25) + v27);
      v28 = a5[1] + v27;
      v29 = *a5 + v28 / 0x3E8;
      v30 = v28 % 0x3E8;
      LODWORD(out[0]) = *a5 + v28 / 0x3E8;
      DWORD1(out[0]) = v28 % 0x3E8;
      if (!sub_100306E3C(out))
      {
        break;
      }

      *v52 = 8;
      v31 = *(a1 + 600);
      *a4 = 1;
      ++v26;
      v25 += 8;
      if (v26 >= *(a1 + 112))
      {
        LODWORD(v27) = v31;
        goto LABEL_28;
      }
    }

    sub_100007774(&v54, " within segment:", 16);
    v45 = std::ostream::operator<<();
    v46 = sub_100007774(v45, " segmentTime:", 13);
    memset(out, 0, sizeof(out));
    snprintf(out, 0x3FuLL, "%0llu.%0llu", v29, v30);
    sub_100007E30(buf, out);
    if ((v71 & 0x80u) == 0)
    {
      v47 = buf;
    }

    else
    {
      LODWORD(v47) = *buf;
    }

    if ((v71 & 0x80u) == 0)
    {
      v48 = v71;
    }

    else
    {
      v48 = *&buf[8];
    }

    v49 = sub_100007774(v46, v47, v48);
    sub_100007774(v49, " totalElapsedTime:", 18);
    v50 = std::ostream::operator<<();
    sub_100007774(v50, " fConnectionScanScheduleSegments.durationMS:", 44);
    std::ostream::operator<<();
    if (v71 < 0)
    {
      operator delete(*buf);
    }

    v51 = *(*(a1 + 104) + v25 + 4);
    if (v51 == 9)
    {
      LOWORD(v51) = 8;
    }

    *v52 = v51;
    if (v51 == 8)
    {
      v32 = 1;
    }

    else
    {
      v32 = 2;
    }

    goto LABEL_27;
  }

  LODWORD(v27) = 0;
LABEL_28:
  v33 = a5[1] + v27;
  *a5 += v33 / 0x3E8;
  a5[1] = v33 % 0x3E8;
  v34 = sub_100007774(&v54, " expirationTime:", 16);
  sub_1004F5248(a5, out);
  if ((SBYTE7(out[1]) & 0x80u) == 0)
  {
    v35 = out;
  }

  else
  {
    LODWORD(v35) = out[0];
  }

  if ((SBYTE7(out[1]) & 0x80u) == 0)
  {
    v36 = BYTE7(out[1]);
  }

  else
  {
    v36 = DWORD2(out[0]);
  }

  v37 = sub_100007774(v34, v35, v36);
  sub_100007774(v37, "sec (delta:", 11);
  v38 = std::ostream::operator<<();
  v39 = sub_100007774(v38, "ms) ", 4);
  sub_100007774(v39, "scanDutyCycle:", 14);
  v40 = std::ostream::operator<<();
  sub_100007774(v40, " interval:", 10);
  v41 = std::ostream::operator<<();
  sub_100007774(v41, "ms coexOverrideReason:", 22);
  std::ostream::operator<<();
  if (SBYTE7(out[1]) < 0)
  {
    operator delete(*&out[0]);
  }

  v42 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
  {
    std::stringbuf::str();
    v43 = (SBYTE7(out[1]) & 0x80u) == 0 ? out : *&out[0];
    *buf = 136446210;
    *&buf[4] = v43;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
    if (SBYTE7(out[1]) < 0)
    {
      operator delete(*&out[0]);
    }
  }

  *&v54 = v44;
  if (SHIBYTE(v57) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v55);
  std::iostream::~basic_iostream();
  std::ios::~ios();
}

void sub_100761E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1007FC91C(va);

  _Unwind_Resume(a1);
}

uint64_t sub_100761EE8(uint64_t a1, _WORD *a2, unsigned __int16 *a3, _WORD *a4, _BYTE *a5, char *a6)
{
  v6 = a4;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  if (*(a1 + 896))
  {
    v108 = 0;
    if (qword_100B50910 != -1)
    {
      sub_10086E05C();
    }

    v7 = sub_1005BC904(off_100B50908, 2);
    v9 = sub_1000154A8(v7, v8);
    v10 = (*(*v9 + 48))(v9, &v108, &v108 + 1);
    *a3 = 48;
    *a2 = 480;
    if (v108 == 1)
    {
      v12 = a1;
      if (HIBYTE(v108) == 1)
      {
        if (qword_100B50910 != -1)
        {
          sub_10086E454();
          v12 = a1;
        }

        LODWORD(v96) = *(off_100B50908 + 205);
        HIDWORD(v96) = *(off_100B50908 + 206);
      }

      else
      {
        v96 = 0;
      }
    }

    else
    {
      v96 = 0;
      v12 = a1;
    }

    v43 = *(v12 + 336);
    v44 = (v12 + 344);
    if (v43 == (v12 + 344))
    {
      v45 = 0;
    }

    else
    {
      v45 = 0;
      if ((v96 | BYTE4(v96)))
      {
        v46 = 8;
      }

      else
      {
        v46 = 7;
      }

      v97 = v46;
      v98 = v12 + 256;
      do
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v47 = off_100B508C8;
        v48 = sub_10004DF60(v43 + 25);
        LODWORD(v47) = sub_10078FD20(v47, v48);

        v107 = v47;
        v49 = v47 == 1;
        if (v108 == 1 && HIBYTE(v108) == 1)
        {
          v107 = v97;
        }

        v105 = 0;
        v106 = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v50 = off_100B508C8;
        v51 = sub_10004DF60(v43 + 25);
        sub_10078CCAC(v50, v51, &v105);

        v52 = sub_10004DF60(v43 + 25);
        sub_100761750(a1, v52, &v107, a6, &v105);

        v53 = v107;
        if (v107 < 9uLL)
        {
          *&buf_4[2] = 0;
          buf = v105;
          *buf_4 = v106;
          v56 = sub_100306E3C(&buf);
          v58 = *a2;
          if (!v56 && v58 >= *(v98 + 2 * v53))
          {
            LOWORD(v58) = *(v98 + 2 * v53);
          }

          *a2 = v58;
          v59 = sub_10000C798(v56, v57);
          if ((*(*v59 + 688))(v59))
          {
            v60 = *v6;
            if (qword_100B508D0 != -1)
            {
              sub_10086DE2C();
            }

            v61 = off_100B508C8;
            v62 = sub_10004DF60(v43 + 25);
            if (v60 <= sub_10078A2E0(v61, v62))
            {
              if (qword_100B508D0 != -1)
              {
                sub_10086DE2C();
              }

              v63 = off_100B508C8;
              v64 = sub_10004DF60(v43 + 25);
              *v6 = sub_10078A2E0(v63, v64);
            }

            if (qword_100B508D0 != -1)
            {
              sub_10086DE2C();
            }

            v65 = off_100B508C8;
            v66 = sub_10004DF60(v43 + 25);
            LODWORD(v65) = sub_10078A3F8(v65, v66);

            if (v65)
            {
              *a5 = 1;
            }
          }

          v67 = qword_100BCE980;
          v10 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO);
          if (v10)
          {
            v68 = sub_10004DF60(v43 + 25);
            v69 = v107;
            v70 = *(v98 + 2 * v107);
            v71 = *a3;
            v109[0] = v105;
            v109[1] = v106;
            v72 = sub_100306E3C(v109);
            v73 = *a3;
            v74 = "NO";
            if (v72)
            {
              v74 = "YES";
            }

            v75 = *a2;
            v76 = *a4;
            v77 = "N";
            if (*a5)
            {
              v77 = "Y";
            }

            buf = 138545410;
            *buf_4 = v68;
            *&buf_4[8] = 1024;
            *v112 = v71;
            *&v112[4] = 1024;
            *v113 = v70;
            v6 = a4;
            *&v113[4] = 1024;
            *v114 = v69;
            *&v114[4] = 2082;
            v115 = v74;
            v116 = 1024;
            v117 = v73;
            v118 = 1024;
            v119 = v75;
            v120 = 1024;
            v121 = v76;
            v122 = 2080;
            v123 = v77;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "device %{public}@ Connection scans [0x%x/0x%x(level:%d)] ignored:%{public}s [aggregated 0x%x/0x%x/0x%x/eLNA%s]", &buf, 0x44u);
          }
        }

        else
        {
          v54 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
          {
            v80 = sub_10004DF60(v43 + 25);
            buf = 138543618;
            *buf_4 = v80;
            *&buf_4[8] = 1024;
            *v112 = v107;
            _os_log_fault_impl(&_mh_execute_header, v54, OS_LOG_TYPE_FAULT, "device %{public}@ connection scan duty cycle %d is invalid", &buf, 0x12u);

            v54 = qword_100BCE980;
          }

          v10 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
          if (v10)
          {
            v55 = sub_10004DF60(v43 + 25);
            buf = 138543618;
            *buf_4 = v55;
            *&buf_4[8] = 1024;
            *v112 = v107;
            _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "device %{public}@ connection scan duty cycle %d is invalid", &buf, 0x12u);
          }
        }

        v78 = *(v43 + 1);
        if (v78)
        {
          do
          {
            v79 = v78;
            v78 = *v78;
          }

          while (v78);
        }

        else
        {
          do
          {
            v79 = *(v43 + 2);
            v29 = *v79 == v43;
            v43 = v79;
          }

          while (!v29);
        }

        v45 |= v49;
        v43 = v79;
      }

      while (v79 != v44);
    }

    v42 = a2;
    if (v108 == 1 && HIBYTE(v108) == 1)
    {
      v81 = sub_10000C798(v10, v11);
      v82 = (*(*v81 + 1032))(v81);
      v83 = v82;
      v42 = a2;
      v84 = *a2;
      if ((v96 | HIDWORD(v96)))
      {
        if (v84 <= *(a1 + 272))
        {
          LOWORD(v84) = *(a1 + 272);
        }

        *a2 = v84;
        if (v82)
        {
          v42 = a2;
          if (_os_feature_enabled_impl())
          {
            v85 = *a2;
            if (v85 == *(a1 + 272))
            {
              v86 = v85 - *a3;
              if (v86 < *v6)
              {
                LOWORD(v86) = *v6;
              }

              *v6 = v86;
            }
          }
        }
      }

      else
      {
        if (v45)
        {
          v87 = *(a1 + 272);
        }

        else
        {
          v87 = *(a1 + 270);
        }

        if (v84 <= v87)
        {
          LOWORD(v84) = v87;
        }

        *a2 = v84;
      }

      v88 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
      {
        v89 = *a3;
        v90 = *v42;
        v91 = *v6;
        buf = 67110400;
        *buf_4 = v96 & 1;
        *&buf_4[4] = 1024;
        *&buf_4[6] = BYTE4(v96) & 1;
        *v112 = 1024;
        *&v112[2] = v83;
        *v113 = 1024;
        *&v113[2] = v89;
        *v114 = 1024;
        *&v114[2] = v90;
        LOWORD(v115) = 1024;
        *(&v115 + 2) = v91;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "CarPlay is on, isA2DPStreaming:%d isHFPStreaming:%d highDutySC:%d Connection scans updated [0x%x/0x%x/0x%x]", &buf, 0x26u);
      }
    }

    v31 = a1;
  }

  else
  {
    if (qword_100B50910 != -1)
    {
      sub_10086E05C();
    }

    sub_1005BC904(off_100B50908, 1);
    LOBYTE(v105) = 0;
    LOBYTE(v109[0]) = 0;
    LOBYTE(v107) = 0;
    v13 = sub_100017E6C();
    v14 = (*(*v13 + 160))(v13, &v105);
    if ((v14 || (v105 & 1) == 0) && ((v16 = sub_100017E6C(), v14 = (*(*v16 + 104))(v16, v109, &v107), v14) || LOBYTE(v109[0]) != 1))
    {
      *a2 = 480;
      *a3 = *(a1 + 274);
      v17 = *(a1 + 336);
      if (v17 != (a1 + 344))
      {
        do
        {
          if (qword_100B508D0 != -1)
          {
            sub_10086DE2C();
          }

          v18 = off_100B508C8;
          v19 = sub_10004DF60(v17 + 25);
          v20 = sub_10078FE38(v18, v19);

          if (v20 >= 7)
          {
            v23 = qword_100BCE980;
            v14 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT);
            v21 = a3;
            if (v14)
            {
              buf = 67109120;
              *buf_4 = v20;
              _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "scanDutyCycle cannot be %d", &buf, 8u);
            }
          }

          else
          {
            v21 = a3;
            v22 = *a3;
            if (v22 <= *(a1 + 274 + 2 * v20))
            {
              LOWORD(v22) = *(a1 + 274 + 2 * v20);
            }

            *a3 = v22;
          }

          v24 = *v21;
          v25 = *a2;
          if (v24 > v25)
          {
            v26 = qword_100BCE980;
            v14 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT);
            if (v14)
            {
              buf = 67109376;
              *buf_4 = v24;
              *&buf_4[4] = 1024;
              *&buf_4[6] = v25;
              _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "scanWindow (0x%x), scanInterval (0x%x)", &buf, 0xEu);
            }
          }

          v27 = *(v17 + 1);
          v6 = a4;
          if (v27)
          {
            do
            {
              v28 = v27;
              v27 = *v27;
            }

            while (v27);
          }

          else
          {
            do
            {
              v28 = *(v17 + 2);
              v29 = *v28 == v17;
              v17 = v28;
            }

            while (!v29);
          }

          v17 = v28;
        }

        while (v28 != (a1 + 344));
      }
    }

    else
    {
      *a2 = 480;
      *a3 = 48;
    }

    v30 = sub_10000C798(v14, v15);
    v31 = a1;
    if ((*(*v30 + 688))(v30))
    {
      v32 = *(a1 + 336);
      if (v32 != (a1 + 344))
      {
        do
        {
          v33 = *v6;
          if (qword_100B508D0 != -1)
          {
            sub_10086DE2C();
          }

          v34 = off_100B508C8;
          v35 = sub_10004DF60(v32 + 25);
          if (v33 <= sub_10078A2E0(v34, v35))
          {
            if (qword_100B508D0 != -1)
            {
              sub_10086DE2C();
            }

            v36 = off_100B508C8;
            v37 = sub_10004DF60(v32 + 25);
            *v6 = sub_10078A2E0(v36, v37);
          }

          if (qword_100B508D0 != -1)
          {
            sub_10086DE2C();
          }

          v38 = off_100B508C8;
          v39 = sub_10004DF60(v32 + 25);
          LODWORD(v38) = sub_10078A3F8(v38, v39);

          if (v38)
          {
            *a5 = 1;
          }

          v40 = *(v32 + 1);
          if (v40)
          {
            do
            {
              v41 = v40;
              v40 = *v40;
            }

            while (v40);
          }

          else
          {
            do
            {
              v41 = *(v32 + 2);
              v29 = *v41 == v32;
              v32 = v41;
            }

            while (!v29);
          }

          v32 = v41;
          v31 = a1;
        }

        while (v41 != (a1 + 344));
      }
    }

    *a6 = 0;
    v42 = a2;
  }

  if (*(v31 + 1076) == 1)
  {
    *a3 = *(v31 + 1078);
    v92 = *(v31 + 1080);
    *v42 = v92;
    v93 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v94 = *a3;
      buf = 67109376;
      *buf_4 = v94;
      *&buf_4[4] = 1024;
      *&buf_4[6] = v92;
      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Overriding Connection Scan Parameters on MainCore. window=%d: interval=%d ", &buf, 0xEu);
    }
  }

  result = sub_10076C024(v31, *v42, *a3, *v6);
  if ((result & 1) == 0)
  {
    *v6 = 0;
    *a5 = 0;
  }

  return result;
}

uint64_t sub_100762BD8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && *(a1 + 184) == 1)
  {
    if (*(a1 + 352))
    {
      return sub_100760A88(a1);
    }
  }

  return a1;
}

void sub_100762BF8(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, &a1[2]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

uint64_t sub_100762CC4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 120);
  v6 = sub_1000ACEE4(a1, a3);
  if (v6)
  {
    sub_10004DFB4(uu2, v6);
    v7 = sub_10004E34C(a1 + 936, uu2);
    if (a1 + 944 != v7)
    {
      *uu2 = 0;
      v13 = 0;
      v14 = 0;
      sub_100775D84(uu2, v7 + 48);
      sub_10000CEDC(v7 + 48, *(v7 + 56));
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = v7 + 56;
      sub_100007EE8(v8, v9);
      operator new();
    }

    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1008713BC();
    }
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10087142C();
  }

  return sub_1000088CC(v11);
}

void sub_100762FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  sub_10000CEDC(&a21, a22);

  sub_1000088CC(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_100763050(uint64_t a1, unsigned __int8 *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 120);
  v4 = sub_10004E34C(a1 + 936, a2);
  if (a1 + 944 != v4)
  {
    if (*(v4 + 64))
    {
      sub_10074E868(a1, a2);
    }

    else
    {
      sub_10067D88C((a1 + 936), v4);
    }
  }

  return sub_1000088CC(v6);
}

uint64_t sub_1007630E4(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, &a1[30]);
  v6 = sub_1000ACEE4(a1, a2);
  if (v6)
  {
    v7 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "asleep";
      if (a3)
      {
        v8 = "awake";
      }

      *buf = 138543618;
      v15 = v6;
      v16 = 2082;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is now %{public}s", buf, 0x16u);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100763288;
    v10[3] = &unk_100B0B698;
    v11 = v6;
    v12 = a3;
    sub_10074063C(a1, v10);
  }

  return sub_1000088CC(v13);
}

void sub_100763258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007632BC(os_unfair_lock_s *a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v30[0] = 0;
  v30[1] = 0;
  sub_100007F88(v30, &a1[30]);
  v16 = sub_1000ACEE4(a1, a2);
  v17 = qword_100BCE980;
  v18 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v18)
    {
      v19 = a3 == 1 || a3 == 10;
      *buf = 138545154;
      v20 = "LE_SET_PHY";
      v32 = v16;
      v33 = 2082;
      if (v19)
      {
        v20 = "ConnectionComplete";
      }

      v34 = v20;
      v35 = 1024;
      v36 = a3;
      v37 = 2048;
      v38 = a4;
      v39 = 1024;
      v40 = a5;
      v41 = 1024;
      v42 = a6;
      v43 = 1024;
      v44 = a7;
      v45 = 1024;
      v46 = a8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is receiving a timestamp %{public}s EventType=%d with value %llu %d eventCnt=%d, sec:%d ms:%d", buf, 0x3Eu);
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100763510;
    v22[3] = &unk_100B0B6C0;
    v29 = a3;
    v23 = v16;
    v24 = a4;
    v28 = a6;
    v25 = a5;
    v26 = a7;
    v27 = a8;
    sub_10074063C(a1, v22);
  }

  else if (v18)
  {
    *buf = 134217984;
    v32 = a2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Device is not connected for %p", buf, 0xCu);
  }

  return sub_1000088CC(v30);
}

void sub_1007634E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100763550(os_unfair_lock_s *a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, int a8, int a9, uint64_t a10)
{
  v32[0] = 0;
  v32[1] = 0;
  sub_100007F88(v32, &a1[30]);
  v18 = sub_1000ACEE4(a1, a2);
  v19 = qword_100BCE980;
  v20 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      *buf = 138545410;
      v34 = v18;
      v35 = 1024;
      v36 = a3;
      v37 = 1024;
      v38 = a4;
      v39 = 1024;
      v40 = a5;
      v41 = 1024;
      v42 = a6;
      v43 = 2048;
      v44 = a7;
      v45 = 1024;
      v46 = a8;
      v47 = 1024;
      v48 = a9;
      v49 = 2048;
      v50 = a10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "LE synchronization Event for Device %{public}@ exceptionStatus %d connInterval=%d with eventCnt=%d CEOffset=%d hostTime:%llu BTCLK:%d:%d:%llu", buf, 0x44u);
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1007637AC;
    v22[3] = &unk_100B0B6E8;
    v31 = a3;
    v28 = a4;
    v29 = a5;
    v30 = a6;
    v23 = v18;
    v24 = a7;
    v26 = a8;
    v27 = a9;
    v25 = a10;
    sub_10074063C(a1, v22);
  }

  else if (v20)
  {
    *buf = 134217984;
    v34 = a2;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device is not connected for %p", buf, 0xCu);
  }

  return sub_1000088CC(v32);
}

void sub_10076377C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100763818(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, v1 + 120);
  v7 = sub_1000ACEE4(v6, v5);
  v8 = qword_100BCE980;
  v9 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = v3[26094];
      buf = 138543618;
      v17 = v7;
      v18 = 1024;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device %{public}@ has completed a procedure of %d stetps", &buf, 0x12u);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100763A24;
    v13[3] = &unk_100B0B710;
    v14 = v7;
    memcpy(v15, v3, sizeof(v15));
    sub_10074063C(v6, v13);
  }

  else if (v9)
  {
    buf = 134217984;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device is not connected for %p", &buf, 0xCu);
  }

  return sub_1000088CC(v12);
}

uint64_t sub_100763A24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  memcpy(__dst, (a1 + 40), sizeof(__dst));
  return (*(*a2 + 72))(a2, v3, __dst);
}

uint64_t sub_100763AD0(os_unfair_lock_s *a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, char a8, char a9, char a10, char a11, char a12, unsigned __int16 a13, int a14, char a15, char a16)
{
  v59[0] = 0;
  v59[1] = 0;
  sub_100007F88(v59, &a1[30]);
  v24 = sub_1000ACEE4(a1, a2);
  if (v24)
  {
    sub_10004DFB4(buf, v24);
    if (sub_10074ED30(a1, buf))
    {
      v25 = qword_100BCE980;
      if (a9 > 20 || a10 >= 21)
      {
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
        {
          v31 = "";
          *buf = 138545666;
          *&buf[4] = v24;
          *&buf[12] = 1024;
          if (a15)
          {
            v31 = " wakeUp";
          }

          *&buf[14] = a9;
          *&buf[18] = 1024;
          *&buf[20] = a10;
          *&buf[24] = 1024;
          *&buf[26] = a11;
          *&buf[30] = 1024;
          LODWORD(v63) = a12;
          WORD2(v63) = 1024;
          *(&v63 + 6) = a13;
          WORD5(v63) = 1024;
          HIDWORD(v63) = a3;
          *v64 = 1024;
          *&v64[2] = a4;
          *&v64[6] = 1024;
          *&v64[8] = a5;
          *&v64[12] = 2082;
          *&v64[14] = v31;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Device %{public}@ is receiving a Rssi Detection Rssi [Avg|Max|median|min] var = %d:%d:%d:%d %d unreliable due to COEX(27) or saturation CoreMotion=%x:%x:%x %{public}s", buf, 0x46u);
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v26 = "";
          *buf = 138545666;
          *&buf[4] = v24;
          if (a15)
          {
            v26 = " wakeUp";
          }

          *&buf[12] = 1024;
          *&buf[14] = a9;
          *&buf[18] = 1024;
          *&buf[20] = a10;
          *&buf[24] = 1024;
          *&buf[26] = a11;
          *&buf[30] = 1024;
          LODWORD(v63) = a12;
          WORD2(v63) = 1024;
          *(&v63 + 6) = a13;
          WORD5(v63) = 1024;
          HIDWORD(v63) = a3;
          *v64 = 1024;
          *&v64[2] = a4;
          *&v64[6] = 1024;
          *&v64[8] = a5;
          *&v64[12] = 2082;
          *&v64[14] = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is receiving a Rssi Detection Rssi [Avg|Max|median|min] var = %d:%d:%d:%d %d  CoreMotion=%x:%x:%x %{public}s", buf, 0x46u);
        }

        v63 = 0u;
        memset(v64, 0, sizeof(v64));
        memset(buf, 0, sizeof(buf));
        sub_100740410(a1, v24, buf);
        if (*buf)
        {
          ++*&v64[12];
          if (a15)
          {
            ++*&v64[8];
          }

          v54[0] = *buf;
          v54[1] = *&buf[8];
          v55 = *&buf[16];
          v56 = v63;
          v57 = *v64;
          v58 = *&v64[16];
          sub_100740538(a1, v24, v54);
        }

        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_1007640E8;
        v39[3] = &unk_100B0B738;
        v42 = a3;
        v43 = a4;
        v44 = a5;
        v45 = a6;
        v27 = v24;
        v40 = v27;
        v41 = a7;
        v48 = a8;
        v49 = a9;
        v50 = a10;
        v51 = a11;
        v52 = a12;
        v47 = a13;
        v46 = a14;
        v53 = a16;
        sub_10074063C(a1, v39);
        if (a15)
        {
          v37 = &off_100AE0A78;
          v38 = 0;
          sub_10004DFB4(&uu2, v27);
          v28 = sub_10004E34C(&a1[160], &uu2);
          if (&a1[162] != v28)
          {
            uu2 = 0uLL;
            v61 = 0;
            if (*(v28 + 79) < 0)
            {
              v28 = sub_100008904(&uu2, *(v28 + 56), *(v28 + 64));
            }

            else
            {
              uu2 = *(v28 + 56);
              v61 = *(v28 + 72);
            }

            v32 = sub_100432718(v28, v29);
            if (v61 >= 0)
            {
              p_uu2 = &uu2;
            }

            else
            {
              p_uu2 = uu2;
            }

            v35 = &off_100AE0A78;
            v36 = v38;
            (*(*v32 + 40))(v32, 6, p_uu2, v27, &v35);
            v35 = &off_100AE0A78;
            if (v36)
            {
              sub_10000C808(v36);
            }

            if (SHIBYTE(v61) < 0)
            {
              operator delete(uu2);
            }
          }

          v37 = &off_100AE0A78;
          if (v38)
          {
            sub_10000C808(v38);
          }
        }
      }
    }
  }

  else
  {
    v30 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Device is not connected for %p", buf, 0xCu);
    }
  }

  return sub_1000088CC(v59);
}

void sub_100764040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, atomic_uint *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  if (a15)
  {
    sub_10000C808(a15);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007640E8(uint64_t a1, uint64_t a2)
{
  BYTE4(v4) = *(a1 + 75);
  LODWORD(v4) = *(a1 + 64);
  WORD2(v3) = *(a1 + 68);
  LODWORD(v3) = *(a1 + 71);
  return (*(*a2 + 80))(a2, *(a1 + 32), *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60), *(a1 + 40), *(a1 + 70), v3, v4);
}

uint64_t sub_1007641A0(os_unfair_lock_s *a1, uint64_t a2, char *a3, int a4)
{
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, &a1[30]);
  v8 = sub_1000ACEE4(a1, a2);
  if (v8)
  {
    sub_10004DFB4(buf, v8);
    if (sub_10074EE24(a1, buf))
    {
      v9 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *a3;
        v11 = *(a3 + 1);
        v12 = *(a3 + 2);
        v13 = *(a3 + 5);
        v14 = *(a3 + 6);
        *buf = 138544642;
        v25 = v8;
        v26 = 1024;
        v27 = v10;
        v28 = 1024;
        v29 = v11;
        v30 = 1024;
        v31 = v12;
        v32 = 1024;
        v33 = v13;
        v34 = 1024;
        v35 = v14;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is receiving a Phy statistc Bluetooth Usage Event Rssi:%d TxPER:%d:%d RxPER:%d:%d ", buf, 0x2Au);
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1007643EC;
      v18[3] = &unk_100B0B738;
      v19 = v8;
      v15 = *(a3 + 1);
      v20 = *a3;
      v21 = v15;
      v22 = a4;
      sub_10074063C(a1, v18);
    }
  }

  else
  {
    v16 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v25 = a2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device is not connected for %p", buf, 0xCu);
    }
  }

  return sub_1000088CC(v23);
}

void sub_1007643B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007643EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v4;
  return (*(*a2 + 96))(a2, v3, v6, *(a1 + 72));
}

void sub_10076444C(os_unfair_lock_s *a1, uint64_t a2, int a3, int a4)
{
  v7 = sub_1000ACEE4(a1, a2);
  v8 = qword_100BCE980;
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "high";
      *buf = 136446722;
      if (a3)
      {
        v9 = "low";
      }

      v15 = v9;
      v16 = 2114;
      v17 = v7;
      v18 = 1024;
      v19 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Crossed the %{public}s LE RSSI threshold for device %{public}@: %d", buf, 0x1Cu);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1007645F0;
    v10[3] = &unk_100B0B788;
    v11 = v7;
    v12 = a3;
    v13 = a4;
    sub_10074063C(a1, v10);
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10087149C();
  }
}

uint64_t sub_100764628(uint64_t a1, unint64_t a2, uint64_t a3, __int16 a4, int a5, __int16 a6, __int16 a7, unsigned __int8 a8)
{
  v11 = a3;
  v98[1] = 0;
  v99 = a2;
  v98[0] = 0;
  sub_100007F88(v98, a1 + 120);
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v14 = *(a1 + 384);
  if (v14 != (a1 + 392))
  {
    while (*(v14 + 6) != a2)
    {
      v15 = *(v14 + 1);
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = *(v14 + 2);
          v78 = *v16 == v14;
          v14 = v16;
        }

        while (!v78);
      }

      v14 = v16;
      if (v16 == (a1 + 392))
      {
        goto LABEL_11;
      }
    }

    uuid_copy(uu, v14 + 32);
  }

LABEL_11:
  is_null = uuid_is_null(uu);
  if (is_null)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1008714D8();
    }

    return sub_1000088CC(v98);
  }

  v19 = sub_10000C798(is_null, v18);
  v20 = (*(*v19 + 1008))(v19);
  if (!v20)
  {
    v91 = 0;
    goto LABEL_40;
  }

  v22 = *(a1 + 536);
  if (!v22)
  {
    goto LABEL_23;
  }

  v23 = a1 + 536;
  do
  {
    v24 = *(v22 + 32);
    v25 = v24 >= v99;
    v26 = v24 < v99;
    if (v25)
    {
      v23 = v22;
    }

    v22 = *(v22 + 8 * v26);
  }

  while (v22);
  if (v23 != a1 + 536 && v99 >= *(v23 + 32))
  {
    v73 = *(v23 + 46);
    v74 = *(v23 + 48);
    v75 = *(v23 + 50);
    v76 = *(v23 + 52);
    *__p = *(v23 + 61);
    __p[2] = *(v23 + 63);
    *buf = &v99;
    v77 = sub_10077444C(a1 + 528, &v99, &unk_1008A9BD0, buf);
    if (v74)
    {
      v78 = 0;
    }

    else
    {
      v78 = v73 == 1;
    }

    if (v78)
    {
      v79 = 0;
    }

    else
    {
      v79 = v76;
    }

    *(v77 + 20) = v11;
    *(v77 + 21) = a4;
    *(v77 + 22) = a5;
    LOWORD(v91) = v73;
    WORD2(v91) = v74;
    *(v77 + 23) = v73;
    *(v77 + 24) = v74;
    *(v77 + 25) = v75;
    *(v77 + 13) = v79;
    *(v77 + 28) = a6;
    *(v77 + 29) = a7;
    *(v77 + 60) = a8;
    *(v77 + 61) = *__p;
    *(v77 + 63) = __p[2];
    v80 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v99;
      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Updated previously stored connection parameters for handle %p.", buf, 0xCu);
    }
  }

  else
  {
LABEL_23:
    v27 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "No previously stored connection parameters. Saving new parameters now. Subrate factor & Continuation number initialized to 0.", buf, 2u);
    }

    *buf = &v99;
    v28 = sub_10077444C(a1 + 528, &v99, &unk_1008A9BD0, buf);
    v91 = 0;
    *(v28 + 20) = v11;
    *(v28 + 21) = a4;
    *(v28 + 22) = a5;
    *(v28 + 46) = 0;
    *(v28 + 27) = 0;
    *(v28 + 28) = a6;
    *(v28 + 29) = a7;
    *(v28 + 60) = a8;
    *(v28 + 61) = 0;
    *(v28 + 63) = 0;
  }

  v29 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v88 = a7;
    v89 = a8;
    v87 = v99;
    *__p = &v99;
    v86 = *(sub_10077444C(a1 + 528, &v99, &unk_1008A9BD0, __p) + 20);
    *__p = &v99;
    v85 = *(sub_10077444C(a1 + 528, &v99, &unk_1008A9BD0, __p) + 21);
    *__p = &v99;
    v30 = *(sub_10077444C(a1 + 528, &v99, &unk_1008A9BD0, __p) + 22);
    *__p = &v99;
    v31 = *(sub_10077444C(a1 + 528, &v99, &unk_1008A9BD0, __p) + 23);
    *__p = &v99;
    v32 = *(sub_10077444C(a1 + 528, &v99, &unk_1008A9BD0, __p) + 24);
    *__p = &v99;
    v33 = *(sub_10077444C(a1 + 528, &v99, &unk_1008A9BD0, __p) + 13);
    *__p = &v99;
    v34 = *(sub_10077444C(a1 + 528, &v99, &unk_1008A9BD0, __p) + 28);
    *__p = &v99;
    v35 = *(sub_10077444C(a1 + 528, &v99, &unk_1008A9BD0, __p) + 29);
    *__p = &v99;
    v36 = *(sub_10077444C(a1 + 528, &v99, &unk_1008A9BD0, __p) + 60);
    *buf = 134220288;
    *&buf[4] = v87;
    *&buf[12] = 1024;
    *&buf[14] = v86;
    *&buf[18] = 1024;
    *&buf[20] = v85;
    *&buf[24] = 1024;
    *&buf[26] = v30;
    *&buf[30] = 1024;
    *&buf[32] = v31;
    *&buf[36] = 1024;
    v121 = v32;
    v122 = 1024;
    v123 = v33;
    v124 = 1024;
    v125 = v34;
    v126 = 1024;
    v127 = v35;
    v128 = 1024;
    v129 = v36;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "handleConnectionParametersUpdatedCallback: Connection parameters for handle %p. Connection Interval:%d Peripheral latency:%d Supervision Timeout=%d Subrate Factor: %d Continuation Number: %d. Subrating Status: %d, minCELength:%d, maxCELength:%d, localRole:%d", buf, 0x42u);
    a7 = v88;
    a8 = v89;
  }

  v37 = *(a1 + 512);
  if (v37)
  {
    v38 = v99;
    v39 = a1 + 512;
    do
    {
      v40 = *(v37 + 32);
      v25 = v40 >= v99;
      v41 = v40 < v99;
      if (v25)
      {
        v39 = v37;
      }

      v37 = *(v37 + 8 * v41);
    }

    while (v37);
    if (v39 != a1 + 512 && v99 >= *(v39 + 32))
    {
      v81 = *(v39 + 40);
      v90 = *(v39 + 48);
      v82 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110144;
        *&buf[4] = WORD1(v81);
        *&buf[8] = 1024;
        *&buf[10] = WORD2(v81);
        *&buf[14] = 1024;
        *&buf[16] = v81;
        *&buf[20] = 1024;
        *&buf[22] = HIWORD(v81);
        *&buf[26] = 1024;
        *&buf[28] = v90;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Locally initiated connection parameter update is now complete. Proceeding with sending connection subrating parameters: subrateMin:%d subrateMax:%d maxLatency:%d continuationNumber=%d supervisionTimeout=%d", buf, 0x20u);
        v38 = v99;
      }

      v83 = sub_10074E270(a1, v38, v81, v90);
      v84 = qword_100BCE980;
      v20 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
      if (!v20)
      {
        goto LABEL_40;
      }

      *buf = 67109120;
      *&buf[4] = v83;
      v43 = "Sent LE Connection Subrating Request with status: %d";
      v44 = v84;
      v45 = OS_LOG_TYPE_DEFAULT;
      v46 = 8;
      goto LABEL_38;
    }
  }

  v42 = qword_100BCE980;
  v20 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO);
  if (v20)
  {
    *buf = 0;
    v43 = "No connection subrating requests pending for this handle";
    v44 = v42;
    v45 = OS_LOG_TYPE_INFO;
    v46 = 2;
LABEL_38:
    _os_log_impl(&_mh_execute_header, v44, v45, v43, buf, v46);
  }

LABEL_40:
  if (v11 >= 0x308)
  {
    v47 = 0.35;
  }

  else
  {
    v47 = 0.75;
  }

  v48 = sub_10000C798(v20, v21);
  if ((*(*v48 + 456))(v48))
  {
    v49 = sub_10004DF60(uu);
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    if (sub_10078DEFC(off_100B508C8, v49))
    {
      if (v11 > 0xB)
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v53 = off_100B508C8;
        sub_100007E30(v94, "HIDDevicePoorBehavior");
        v54 = sub_10004EB40(v53, v49, v94);
        if (v95 < 0)
        {
          operator delete(v94[0]);
        }

        if (v54)
        {
          v55 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
          {
            sub_1000D67B4(uu, buf);
            v56 = buf[23] >= 0 ? buf : *buf;
            *__p = 136446210;
            *&__p[4] = v56;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Connection Update: Unsetting tag for LE_HID %{public}s.", __p, 0xCu);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          if (qword_100B508D0 != -1)
          {
            sub_10086DE2C();
          }

          sub_10078380C(off_100B508C8, v49, @"HIDDevicePoorBehavior");
        }
      }

      else
      {
        v50 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          memset(buf, 0, 37);
          uuid_unparse_upper(uu, buf);
          sub_100007E30(__p, buf);
          v51 = v117 >= 0 ? __p : *__p;
          *v109 = 136446466;
          *&v109[4] = v51;
          v110 = 1024;
          v111 = v11;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Connection Update: LE HID %{public}s has interval less than 15ms: %d. Setting tag.", v109, 0x12u);
          if (SHIBYTE(v117) < 0)
          {
            operator delete(*__p);
          }
        }

        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v52 = off_100B508C8;
        sub_100007E30(v96, "HIDDevicePoorBehavior");
        sub_10078787C(v52, v49, v96);
        if (v97 < 0)
        {
          operator delete(v96[0]);
        }
      }
    }
  }

  v57 = (v47 * (10 * a5) / (v11 * 1.25));
  v58 = qword_100BCE980;
  v59 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v59)
  {
    memset(buf, 0, 37);
    uuid_unparse_upper(uu, buf);
    sub_100007E30(v109, buf);
    v61 = v112 >= 0 ? v109 : *v109;
    *__p = 136446978;
    *&__p[4] = v61;
    v114 = 1024;
    v115 = (v47 * (10 * a5) / (v11 * 1.25));
    v116 = 1024;
    v117 = v11;
    v118 = 1024;
    v119 = a5;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Connection Update: setting LE device %{public}s connection threshold to %d events with interval %d, LSTO %d", __p, 0x1Eu);
    if (v112 < 0)
    {
      operator delete(*v109);
    }
  }

  v62 = sub_10000C798(v59, v60);
  v63 = (*(*v62 + 360))(v62);
  if (!v63)
  {
    goto LABEL_83;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v65 = off_100B508C8;
  v66 = sub_10004DF60(uu);
  LOBYTE(v65) = sub_1000D5D08(v65, v66);

  if (v65)
  {
LABEL_83:
    v67 = sub_10000C7D0(v63, v64);
    if (v57 >= 0xFF)
    {
      v68 = 255;
    }

    else
    {
      v68 = v57;
    }

    if ((*(*v67 + 1064))(v67, v99, v68) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1008708FC();
    }
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v69 = off_100B508C8;
  v70 = sub_10004DF60(uu);
  sub_10078D60C(v69, v70, v11);

  v100[0] = _NSConcreteStackBlock;
  v100[1] = 3321888768;
  v100[2] = sub_10076530C;
  v100[3] = &unk_100B0B7A8;
  uuid_copy(v108, uu);
  v101 = v11;
  v102 = a4;
  v103 = a5;
  v104 = v91;
  v105 = WORD2(v91);
  v106 = a6;
  v107 = a7;
  v108[16] = a8;
  sub_10074063C(a1, v100);
  if (*(a1 + 1603) == 1)
  {
    v71 = sub_10004DF60(uu);
    sub_1007536B0(v71, v71, v11);

    sub_1007533DC(a1);
  }

  return sub_1000088CC(v98);
}

void sub_10076530C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004DF60((a1 + 46));
  (*(*a2 + 32))(a2);
}

uint64_t sub_1007653D4(uint64_t a1, unint64_t a2, int a3, int a4, __int16 a5, __int16 a6, __int16 a7)
{
  v65[1] = 0;
  v66 = a2;
  v65[0] = 0;
  sub_100007F88(v65, a1 + 120);
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v14 = *(a1 + 384);
  if (v14 != (a1 + 392))
  {
    while (*(v14 + 6) != a2)
    {
      v15 = *(v14 + 1);
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = *(v14 + 2);
          v17 = *v16 == v14;
          v14 = v16;
        }

        while (!v17);
      }

      v14 = v16;
      if (v16 == (a1 + 392))
      {
        goto LABEL_11;
      }
    }

    uuid_copy(uu, v14 + 32);
  }

LABEL_11:
  if (uuid_is_null(uu))
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1008714D8();
    }
  }

  else if (a3 == 742)
  {
    v18 = *(a1 + 512);
    if (v18)
    {
      v19 = v66;
      v20 = a1 + 512;
      do
      {
        v21 = *(v18 + 32);
        v22 = v21 >= v66;
        v23 = v21 < v66;
        if (v22)
        {
          v20 = v18;
        }

        v18 = *(v18 + 8 * v23);
      }

      while (v18);
      if (v20 != a1 + 512 && v66 >= *(v20 + 32))
      {
        v24 = *(v20 + 40);
        v25 = *(v20 + 48);
        v26 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
        {
          *buf = 134219264;
          *&buf[4] = v19;
          *&buf[12] = 1024;
          *&buf[14] = WORD1(v24);
          v71 = 1024;
          v72 = WORD2(v24);
          v73 = 1024;
          v74 = v24;
          v75 = 1024;
          v76 = HIWORD(v24);
          v77 = 1024;
          v78 = v25;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Due to OI_HCIERR_DIFFERENT_TRANS_COLLISION re-requesting subrating change to handle %p. Connection subrating parameters requested: subrateMin:%d subrateMax:%d maxLatency:%d continuationNumber=%d supervisionTimeout=%d", buf, 0x2Au);
          v19 = v66;
        }

        sub_10074E270(a1, v19, v24, v25);
      }
    }
  }

  else
  {
    v27 = *(a1 + 536);
    if (!v27)
    {
      goto LABEL_34;
    }

    v28 = v66;
    v29 = a1 + 536;
    do
    {
      v30 = *(v27 + 32);
      v22 = v30 >= v66;
      v31 = v30 < v66;
      if (v22)
      {
        v29 = v27;
      }

      v27 = *(v27 + 8 * v31);
    }

    while (v27);
    if (v29 != a1 + 536 && v66 >= *(v29 + 32))
    {
      v33 = *(v29 + 40);
      v87[0] = *(v29 + 50);
      *(v87 + 6) = *(v29 + 56);
      v61 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v28;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Updated previously stored connection parameters for handle %p.", buf, 0xCu);
      }
    }

    else
    {
LABEL_34:
      v32 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No previously stored connection parameters. Saving new parameters now. Connection Interval initialized to 0.", buf, 2u);
      }

      v33 = 0;
      *(v87 + 6) = 0;
      v87[0] = 0;
    }

    *buf = &v66;
    v34 = sub_10077444C(a1 + 528, &v66, &unk_1008A9BD0, buf);
    *(v34 + 20) = v33;
    *(v34 + 21) = a5;
    *(v34 + 22) = a7;
    *(v34 + 23) = a4;
    *(v34 + 24) = a6;
    *(v34 + 50) = v87[0];
    v34[7] = *(v87 + 6);
    if (a4 == 1 && (*buf = &v66, *(sub_10077444C(a1 + 528, &v66, &unk_1008A9BD0, buf) + 13) <= 1))
    {
      v35 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
      {
        v67 = &v66;
        v63 = *(sub_10077444C(a1 + 528, &v66, &unk_1008A9BD0, &v67) + 13);
        *buf = 67109376;
        *&buf[4] = v63;
        *&buf[8] = 2048;
        *&buf[10] = v66;
        _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Connection subrating status was %d to handle %p. Setting status to OFF.", buf, 0x12u);
      }

      *buf = &v66;
      v36 = sub_10077444C(a1 + 528, &v66, &unk_1008A9BD0, buf);
      v37 = 0;
    }

    else
    {
      v38 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
      {
        v67 = &v66;
        v62 = *(sub_10077444C(a1 + 528, &v66, &unk_1008A9BD0, &v67) + 13);
        *buf = 67109376;
        *&buf[4] = v62;
        *&buf[8] = 2048;
        *&buf[10] = v66;
        _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Connection subrating status was %d to handle %p. Setting status to ON.", buf, 0x12u);
      }

      *buf = &v66;
      v36 = sub_10077444C(a1 + 528, &v66, &unk_1008A9BD0, buf);
      v37 = 2;
    }

    *(v36 + 13) = v37;
    v39 = *(a1 + 512);
    if (v39)
    {
      v40 = v66;
      v41 = a1 + 512;
      do
      {
        v42 = *(v39 + 32);
        v22 = v42 >= v66;
        v43 = v42 < v66;
        if (v22)
        {
          v41 = v39;
        }

        v39 = *(v39 + 8 * v43);
      }

      while (v39);
      if (v41 != a1 + 512 && v66 >= *(v41 + 32))
      {
        v44 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v45 = *(v41 + 48);
          v46 = *(v41 + 46);
          v47 = *(v41 + 44);
          v48 = *(v41 + 42);
          v49 = *(v41 + 40);
          *buf = 134219264;
          *&buf[4] = v40;
          *&buf[12] = 1024;
          *&buf[14] = v48;
          v71 = 1024;
          v72 = v47;
          v73 = 1024;
          v74 = v49;
          v75 = 1024;
          v76 = v46;
          v77 = 1024;
          v78 = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Locally initiated connection subrating update to handle %p is now complete. Connection subrating parameters requested: subrateMin:%d subrateMax:%d maxLatency:%d continuationNumber=%d supervisionTimeout=%d", buf, 0x2Au);
        }

        sub_100075DC4((a1 + 504), &v66);
      }
    }

    v50 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v64 = v66;
      v67 = &v66;
      v51 = *(sub_10077444C(a1 + 528, &v66, &unk_1008A9BD0, &v67) + 20);
      v67 = &v66;
      v52 = *(sub_10077444C(a1 + 528, &v66, &unk_1008A9BD0, &v67) + 21);
      v67 = &v66;
      v53 = *(sub_10077444C(a1 + 528, &v66, &unk_1008A9BD0, &v67) + 22);
      v67 = &v66;
      v54 = *(sub_10077444C(a1 + 528, &v66, &unk_1008A9BD0, &v67) + 23);
      v67 = &v66;
      v55 = *(sub_10077444C(a1 + 528, &v66, &unk_1008A9BD0, &v67) + 24);
      v67 = &v66;
      v56 = *(sub_10077444C(a1 + 528, &v66, &unk_1008A9BD0, &v67) + 13);
      v67 = &v66;
      v57 = *(sub_10077444C(a1 + 528, &v66, &unk_1008A9BD0, &v67) + 28);
      v67 = &v66;
      v58 = *(sub_10077444C(a1 + 528, &v66, &unk_1008A9BD0, &v67) + 29);
      v67 = &v66;
      v59 = *(sub_10077444C(a1 + 528, &v66, &unk_1008A9BD0, &v67) + 60);
      *buf = 134220288;
      *&buf[4] = v64;
      *&buf[12] = 1024;
      *&buf[14] = v51;
      v71 = 1024;
      v72 = v52;
      v73 = 1024;
      v74 = v53;
      v75 = 1024;
      v76 = v54;
      v77 = 1024;
      v78 = v55;
      v79 = 1024;
      v80 = v56;
      v81 = 1024;
      v82 = v57;
      v83 = 1024;
      v84 = v58;
      v85 = 1024;
      v86 = v59;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "handleConnectionSubratingCompleted: Updated previously stored connection parameters for handle %p. Connection Interval:%d Peripheral latency:%d Supervision Timeout=%d Subrate Factor: %d Continuation Number: %d. Subrating Status set to %d, minCELength:%d, maxCELength:%d, localRole:%d", buf, 0x42u);
    }

    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3321888768;
    v68[2] = sub_100765C90;
    v68[3] = &unk_100B0B7D8;
    v68[4] = a1;
    uuid_copy(v69, uu);
    v68[5] = v66;
    sub_10074063C(a1, v68);
  }

  return sub_1000088CC(v65);
}

void sub_100765C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100765C90(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = sub_10004DF60((a1 + 48));
  v6 = (v3 + 40);
  v14 = (v3 + 40);
  v13 = *(sub_10077444C(v4 + 528, (v3 + 40), &unk_1008A9BD0, &v14) + 20);
  v14 = (v3 + 40);
  v7 = *(sub_10077444C(v4 + 528, (v3 + 40), &unk_1008A9BD0, &v14) + 21);
  v14 = (v3 + 40);
  v8 = *(sub_10077444C(v4 + 528, (v3 + 40), &unk_1008A9BD0, &v14) + 22);
  v14 = (v3 + 40);
  v9 = *(sub_10077444C(v4 + 528, (v3 + 40), &unk_1008A9BD0, &v14) + 23);
  v14 = (v3 + 40);
  v10 = *(sub_10077444C(v4 + 528, (v3 + 40), &unk_1008A9BD0, &v14) + 24);
  v14 = (v3 + 40);
  v11 = *(sub_10077444C(v4 + 528, (v3 + 40), &unk_1008A9BD0, &v14) + 28);
  v14 = (v3 + 40);
  LOWORD(v3) = *(sub_10077444C(v4 + 528, (v3 + 40), &unk_1008A9BD0, &v14) + 29);
  v14 = v6;
  BYTE2(v12) = *(sub_10077444C(v4 + 528, v6, &unk_1008A9BD0, &v14) + 60);
  LOWORD(v12) = v3;
  (*(*a2 + 32))(a2, v5, v13, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100765E78(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8, __int16 a9, unsigned __int16 a10, __int16 a11, __int16 a12, __int16 a13)
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v18 = a3;
  v78[1] = 0;
  v79 = a2;
  v78[0] = 0;
  sub_100007F88(v78, a1 + 120);
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v21 = *(a1 + 384);
  if (v21 != (a1 + 392))
  {
    while (*(v21 + 6) != a2)
    {
      v22 = *(v21 + 1);
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = *(v21 + 2);
          v24 = *v23 == v21;
          v21 = v23;
        }

        while (!v24);
      }

      v21 = v23;
      if (v23 == (a1 + 392))
      {
        goto LABEL_11;
      }
    }

    uuid_copy(uu, v21 + 32);
  }

LABEL_11:
  is_null = uuid_is_null(uu);
  v26 = qword_100BCE980;
  if (is_null)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1008714D8();
    }
  }

  else if (v18)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1000D67B4(uu, out);
      sub_100871548();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      memset(out, 0, 37);
      uuid_unparse_upper(uu, out);
      sub_100007E30(__p, out);
      v27 = v92 >= 0 ? __p : __p[0];
      *buf = 136446466;
      v94 = v27;
      v95 = 1024;
      v96 = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Le link %{public}s is ready with status %{bluetooth:OI_STATUS}u", buf, 0x12u);
      if (v92 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v28 = sub_10004DF60(uu);
    sub_100746D6C(a1, v28);

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v29 = off_100B508C8;
    v30 = sub_10004DF60(uu);
    sub_10078B7E0(v29, v30, v16);

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v31 = off_100B508C8;
    v32 = sub_10004DF60(uu);
    sub_10078BAB0(v31, v32, v15);

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v33 = off_100B508C8;
    v34 = sub_10004DF60(uu);
    sub_10078BBCC(v33, v34, (a10 * 1.25));

    v37 = sub_10000C798(v35, v36);
    v38 = (*(*v37 + 776))(v37);
    if (v38)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v40 = off_100B508C8;
      v41 = sub_10004DF60(uu);
      LODWORD(v40) = sub_100789CFC(v40, v41);

      if (v40)
      {
        v42 = sub_10004DF60(uu);
        sub_10004DFB4(out, v42);
        sub_1007667D8(a1, out);
      }
    }

    v43 = sub_10000C798(v38, v39);
    if ((*(*v43 + 784))(v43))
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v44 = off_100B508C8;
      v45 = sub_10004DF60(uu);
      LODWORD(v44) = sub_100789E40(v44, v45);

      if (v44)
      {
        v46 = sub_10004DF60(uu);
        sub_10004DFB4(out, v46);
        sub_10076684C(a1, out);
      }
    }

    if (a10)
    {
      v47 = v79;
      *out = uu;
      sub_100773D48((a1 + 408), uu, &unk_1008A9BD0, out, __p)[6] = v47;
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v48 = off_100B508C8;
      v49 = sub_10004DF60(uu);
      sub_10078C908(v48, v49, v14);

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v50 = off_100B508C8;
      v51 = sub_10004DF60(uu);
      sub_10078CB20(v50, v51);

      v54 = sub_10000C798(v52, v53);
      v55 = a13;
      if ((*(*v54 + 1008))(v54))
      {
        v56 = *(a1 + 536);
        if (!v56)
        {
          goto LABEL_53;
        }

        v57 = v79;
        v58 = a1 + 536;
        do
        {
          v59 = *(v56 + 32);
          v60 = v59 >= v79;
          v61 = v59 < v79;
          if (v60)
          {
            v58 = v56;
          }

          v56 = *(v56 + 8 * v61);
        }

        while (v56);
        if (v58 != a1 + 536 && v79 >= *(v58 + 32))
        {
          v65 = *(v58 + 46);
          v64 = *(v58 + 48);
          v75 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *out = 134217984;
            *&out[4] = v57;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Updated previously stored connection parameters for handle %p.", out, 0xCu);
          }

          v55 = a13;
        }

        else
        {
LABEL_53:
          v62 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *out = 0;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "No previously stored connection parameters. Saving new parameters now. Subrate factor & Continuation number initialized to 0.", out, 2u);
          }

          *out = &v79;
          v63 = sub_10077444C(a1 + 528, &v79, &unk_1008A9BD0, out);
          v55 = a13;
          v64 = 0;
          v65 = 0;
          *(v63 + 20) = a10;
          *(v63 + 21) = a11;
          *(v63 + 22) = a12;
          *(v63 + 46) = 0;
          *(v63 + 27) = 0;
          *(v63 + 28) = a8;
          *(v63 + 29) = a13;
          *(v63 + 60) = a9;
          *(v63 + 61) = 0;
          *(v63 + 63) = 0;
        }
      }

      else
      {
        v64 = 0;
        v65 = 0;
      }

      v80[0] = _NSConcreteStackBlock;
      v80[1] = 3321888768;
      v80[2] = sub_1007668D0;
      v80[3] = &unk_100B0B808;
      uuid_copy(v90, uu);
      v81 = 0;
      v82 = a10;
      v83 = a11;
      v84 = a12;
      v85 = v65;
      v86 = v64;
      v87 = a8;
      v88 = v55;
      v89 = a9;
      sub_10074063C(a1, v80);
      if (*(a1 + 1603) == 1)
      {
        v66 = sub_10004DF60(uu);
        sub_1007536B0(v66, v66, a10);

        sub_1007533DC(a1);
      }
    }

    else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1008715AC();
    }

    if (a4)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v67 = off_100B508C8;
      v68 = sub_10004DF60(uu);
      sub_100007E30(v76, "requiresCTOFix");
      sub_10078787C(v67, v68, v76);
      if (v77 < 0)
      {
        operator delete(v76[0]);
      }
    }

    v69 = v79;
    v70 = sub_10004DF60(uu);
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v71 = off_100B508C8;
    v72 = sub_10004DF60(uu);
    v73 = sub_100788D8C(v71, v72);
    sub_1007669E4(a1, v69, v70, v73);
  }

  return sub_1000088CC(v78);
}

uint64_t sub_1007667D8(uint64_t a1, unsigned __int8 *a2)
{
  v6 = 0;
  result = sub_1000C4FCC(a1, a2, &v6);
  if (result)
  {
    v5 = 0;
    v4 = sub_10000C7D0(result, v3);
    return (*(*v4 + 2096))(v4, v6, 1, 0, &v5, 33);
  }

  return result;
}

uint64_t sub_10076684C(uint64_t a1, unsigned __int8 *a2)
{
  v5 = 0;
  result = sub_1000C4FCC(a1, a2, &v5);
  if (result)
  {
    v4 = *(*sub_10000C7D0(result, v3) + 2104);

    return v4();
  }

  return result;
}

void sub_1007668D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DF60((a1 + 52));
  (**a2)(a2);

  v5 = sub_10004DF60((a1 + 52));
  (*(*a2 + 32))(a2);
}

void sub_1007669E4(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = a3;
  v9 = sub_100007EE8(v7, v8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10076B2AC;
  v11[3] = &unk_100B047E0;
  v15 = a4;
  v13 = a1;
  v14 = a2;
  v10 = v7;
  v12 = v10;
  sub_10000CA94(v9, v11);
}

uint64_t sub_100766AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 120);
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v16 = *(a1 + 384);
  if (v16 != (a1 + 392))
  {
    while (*(v16 + 6) != a2)
    {
      v17 = *(v16 + 1);
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = *(v16 + 2);
          v19 = *v18 == v16;
          v16 = v18;
        }

        while (!v19);
      }

      v16 = v18;
      if (v18 == (a1 + 392))
      {
        goto LABEL_11;
      }
    }

    uuid_copy(uu, v16 + 32);
  }

LABEL_11:
  if (uuid_is_null(uu) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    sub_1008715E8();
  }

  if (!uuid_is_null(uu))
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3321888768;
    v22[2] = sub_100766CAC;
    v22[3] = &unk_100B0B838;
    v22[4] = a8;
    uuid_copy(v24, uu);
    v22[5] = a3;
    v22[6] = a4;
    v22[7] = a5;
    v22[8] = a6;
    v23 = a7;
    sub_10074063C(a1, v22);
  }

  return sub_1000088CC(v21);
}

void sub_100766C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100766CAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = sub_10004DF60((a1 + 76));
  (*(*a2 + 40))(a2, v3);
}

uint64_t sub_100766D68(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 120);
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "All devices have been disconnected", v4, 2u);
  }

  *(a1 + 1008) = 0;
  sub_100364600((a1 + 960));
  return sub_1000088CC(v5);
}

void sub_100766DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100766E0C(uint64_t a1)
{
  v30[0] = 0;
  v30[1] = 0;
  sub_100007F88(v30, a1 + 120);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = sub_100029630(a1);
  v2 = [obj countByEnumeratingWithState:&v26 objects:v39 count:16];
  if (v2)
  {
    v19 = *v27;
LABEL_3:
    v3 = 0;
    while (1)
    {
      if (*v27 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v4 = *(*(&v26 + 1) + 8 * v3);
      sub_10004DFB4(buf, v4);
      v5 = sub_10004E34C(a1 + 384, buf);
      if (a1 + 392 == v5)
      {
        break;
      }

      v6 = *(v5 + 48);
      v25 = 0;
      sub_1000216B4(&v25);
      v7 = sub_1000ABD24(v6);
      v24 = 0;
      sub_1002D007C(v6, &v24);
      v8 = sub_1002D02B4(v6);
      sub_100022214(&v25);
      if (v7)
      {
        v9 = v24;
        if (v24 >= 0x308u)
        {
          v10 = 0.35;
        }

        else
        {
          v10 = 0.75;
        }

        v11 = (v10 * (10 * v8) / (v24 * 1.25));
        v12 = qword_100BCE980;
        v13 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          *buf = 138544130;
          v32 = v4;
          v33 = 1024;
          v34 = v11;
          v35 = 1024;
          v36 = v9;
          v37 = 1024;
          v38 = v8;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "setVoicePrioritizationThreshold: setting LE device %{public}@ connection threshold to %d events with interval %d, LSTO %d", buf, 0x1Eu);
        }

        v15 = sub_10000C7D0(v13, v14);
        if (v11 >= 0xFF)
        {
          v16 = 255;
        }

        else
        {
          v16 = v11;
        }

        if ((*(*v15 + 1064))(v15, v6, v16) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
        {
          sub_100871694(&v22, v23);
        }
      }

      else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_100871658(&v20, v21);
      }

      sub_10002249C(&v25);
      if (v2 == ++v3)
      {
        v2 = [obj countByEnumeratingWithState:&v26 objects:v39 count:16];
        if (v2)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return sub_1000088CC(v30);
}

void sub_100767108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100767160(uint64_t result, unsigned __int8 *a2, int a3, int a4, uint64_t a5, __int16 a6, unsigned int a7, float a8, float a9, float a10)
{
  if (a8 != 0.0 && a10 != 0.0 && a7 != 0)
  {
    v20 = result;
    v74[0] = 0;
    v74[1] = 0;
    sub_100007F88(v74, result + 120);
    *buf = a2;
    v21 = *(sub_100775DDC((v20 + 840), a2, &unk_1008A9BD0, buf, &v75) + 29);
    v22 = sub_10004E34C(v20 + 384, a2);
    if (v20 + 392 != v22)
    {
      v61 = *(v22 + 48);
      if (v20 + 848 == sub_100774BCC(v20 + 840, a2))
      {
        v23 = 0;
      }

      else
      {
        v23 = v21;
      }

      v60 = v23;
      *buf = a2;
      v24 = sub_100775DDC((v20 + 840), a2, &unk_1008A9BD0, buf, &v75);
      *(v24 + 44) = 0x5010100000002;
      *(v24 + 26) = a9;
      *(v24 + 27) = a3;
      *(v24 + 28) = a4;
      *(v24 + 29) = a5;
      *(v24 + 30) = a6;
      *(v24 + 31) = a7;
      *(v24 + 16) = a8;
      *(v24 + 17) = a9;
      *(v24 + 18) = a10;
      *(v24 + 19) = 0;
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v25 = off_100B508C8;
      v26 = sub_10004DF60(a2);
      sub_100007E30(v72, "A2051");
      if (sub_10004EB40(v25, v26, v72))
      {
        v27 = 1;
      }

      else
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v28 = off_100B508C8;
        v29 = sub_10004DF60(a2);
        sub_100007E30(v70, "A1603");
        if (sub_10004EB40(v28, v29, v70))
        {
          v27 = 1;
        }

        else
        {
          if (qword_100B508D0 != -1)
          {
            sub_10086DE2C();
          }

          v30 = off_100B508C8;
          v59 = sub_10004DF60(a2);
          sub_100007E30(v68, "A3085");
          if (sub_10004EB40(v30, v59, v68))
          {
            v27 = 1;
          }

          else
          {
            if (qword_100B508D0 != -1)
            {
              sub_10086DE2C();
            }

            v31 = off_100B508C8;
            v58 = sub_10004DF60(a2);
            sub_100007E30(__p, "A2538");
            v27 = sub_10004EB40(v31, v58, __p);
            if (v67 < 0)
            {
              operator delete(__p[0]);
            }
          }

          if (v69 < 0)
          {
            operator delete(v68[0]);
          }
        }

        if (v71 < 0)
        {
          operator delete(v70[0]);
        }
      }

      if (v73 < 0)
      {
        operator delete(v72[0]);
      }

      if (v27)
      {
        v34 = sub_10000C7D0(v32, v33);
        if ((*(v34 + 800) - 5000) >= 0x3E8 && v60 != a5)
        {
          v36 = sub_10000C7D0(v34, v35);
          v37 = sub_10004DF60(a2);
          v38 = v60 + 2;
          if (v60 < 6)
          {
            v38 = 6;
          }

          (*(*v36 + 992))(v36, v37, v38);
        }
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v39 = off_100B508C8;
      v40 = sub_10004DF60(a2);
      sub_100007E30(v64, "BluetoothTVRemote");
      v41 = sub_10004EB40(v39, v40, v64);
      if (v65 < 0)
      {
        operator delete(v64[0]);
      }

      if (v41)
      {
        a4 = 6;
        a3 = 6;
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v42 = off_100B508C8;
      v43 = sub_10004DF60(a2);
      sub_100007E30(v62, "requiresCTOFix");
      if (sub_10004EB40(v42, v43, v62))
      {
        v44 = 3000;
      }

      else
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v45 = off_100B508C8;
        v46 = sub_10004DF60(a2);
        LODWORD(v45) = sub_100788D8C(v45, v46) == 131103;

        if (v45)
        {
          v44 = 3000;
        }

        else
        {
          v44 = a7;
        }
      }

      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      v47 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110400;
        *&buf[4] = a8;
        v77 = 1024;
        v78 = a10;
        v79 = 1024;
        v80 = a3;
        v81 = 1024;
        v82 = a4;
        v83 = 1024;
        v84 = a5;
        v85 = 1024;
        v86 = v44;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Got a profile request to update parameters to %dms->%dms, %d min CE length, %d max CE length, %d latency, and %d timeout", buf, 0x26u);
      }

      buf[0] = 0;
      sub_1000216B4(buf);
      v48 = v44 / 10.0;
      LODWORD(v49) = vcvtps_s32_f32(v48);
      v50 = sub_1002D1C8C(v61, (a8 / 1.25), (a9 / 1.25), a5, v49, a3, a4);
      v51 = sub_100022214(buf);
      if (v50)
      {
        v51 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR);
        if (v51)
        {
          sub_1008716D0();
        }
      }

      v53 = sub_10000C7D0(v51, v52);
      (*(*v53 + 1048))(v53, v61, 1, 0);
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v54 = off_100B508C8;
      v55 = sub_10004DF60(a2);
      sub_10078BD70(v54, v55, 1);

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v56 = off_100B508C8;
      v57 = sub_10004DF60(a2);
      sub_10078BE88(v56, v57, a9);

      sub_10002249C(buf);
    }

    return sub_1000088CC(v74);
  }

  return result;
}

void sub_100767818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  sub_1000088CC(&a50);
  _Unwind_Resume(a1);
}

uint64_t sub_100767968(uint64_t a1, unsigned __int8 *a2, _WORD *a3, _WORD *a4, _WORD *a5, _WORD *a6, _WORD *a7)
{
  if (sub_10074E724(a1, a2))
  {
    *out = 0;
    if (sub_1000C4FCC(a1, a2, out))
    {
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      sub_1002C39C0(*out, a3, a4, a5, a6, a7, 0, 0);
      sub_100022214(__p);
      sub_10002249C(__p);
      return 0;
    }

    else
    {
      return 7;
    }
  }

  else
  {
    v15 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      memset(out, 0, 37);
      uuid_unparse_upper(a2, out);
      sub_100007E30(__p, out);
      if (v18 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *out = 136446210;
      *&out[4] = v16;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Device %{public}s is not ready, cannot get connection parameters", out, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 12;
  }
}

void sub_100767AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100767B18(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  return sub_100767B88(off_100B508A8, *(a1 + 32), *(a1 + 52), *(a1 + 44), *(a1 + 46), *(a1 + 48), *(a1 + 50), *(a1 + 40), *(a1 + 53), HIBYTE(*(a1 + 53)));
}

uint64_t sub_100767B88(uint64_t a1, __int128 *a2, unsigned int a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v71 = a4;
  v70 = a5;
  v69 = 0;
  v68 = 12;
  v16 = sub_10000C7D0(a1, a2);
  v17 = sub_1004106D0(v16, 0xBB8u);
  v18 = a4 == a5 && v17;
  v52 = v18;
  v67[0] = 0;
  v67[1] = 0;
  sub_100007F88(v67, a1 + 120);
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  if (byte_100BC7AE0)
  {
    v19 = 1;
  }

  else
  {
    v20 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "DisableConnectionParameterUpdates");
    (*(*v20 + 72))(v20, buf, __p, &v69);
    if (v66 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v76) < 0)
    {
      operator delete(*buf);
    }

    if (v69 == 1)
    {
      v21 = qword_100BCE980;
      v19 = 0;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Warning: Rejecting parameter updates due to override", buf, 2u);
        v19 = 0;
      }
    }

    else
    {
      if (sub_100748908(a1, a2, uu))
      {
        v22 = sub_100774BCC(a1 + 840, uu);
        if (a1 + 848 == v22)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22 + 44;
        }
      }

      else
      {
        v23 = 0;
      }

      v24 = sub_10004DF60(uu);
      v19 = sub_1007683C8(v24, &v71, &v70, a6, a7, v23, &v68, a9, v24);
    }
  }

  if (sub_10074ECD8(a1, uu))
  {
    v25 = 0;
LABEL_21:
    v26 = 6;
LABEL_22:
    v68 = v26;
    goto LABEL_23;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v31 = off_100B508C8;
  v32 = sub_10004DF60(uu);
  sub_100007E30(v63, "FastConnection");
  v33 = sub_10004EB40(v31, v32, v63);
  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (v33)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v34 = off_100B508C8;
    v35 = sub_10004DF60(uu);
    sub_100007E30(v61, "A2051");
    if (sub_10004EB40(v34, v35, v61))
    {
      v36 = 1;
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v39 = off_100B508C8;
      v40 = sub_10004DF60(uu);
      sub_100007E30(v59, "A2538");
      v36 = sub_10004EB40(v39, v40, v59);
      if (v60 < 0)
      {
        operator delete(v59[0]);
      }
    }

    if (v62 < 0)
    {
      operator delete(v61[0]);
    }

    if (v36)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v41 = off_100B508C8;
      v42 = sub_10004DF60(uu);
      v25 = sub_10078BF14(v41, v42);

      if (v25)
      {
        v71 = v25;
        v70 = v25;
      }
    }

    else
    {
      v25 = 0;
    }

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v49 = off_100B508C8;
    v50 = sub_10004DF60(uu);
    sub_100007E30(v57, "BluetoothTVRemote");
    v51 = sub_10004EB40(v49, v50, v57);
    if (v58 < 0)
    {
      operator delete(v57[0]);
    }

    if (!v51)
    {
      v26 = 4;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v37 = off_100B508C8;
  v38 = sub_10004DF60(uu);
  LODWORD(v37) = sub_100788ED8(v37, v38);

  if (v37)
  {
    v25 = 0;
    v26 = 12;
    goto LABEL_22;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v43 = off_100B508C8;
  v44 = sub_10004DF60(uu);
  sub_100007E30(v55, "_HID_DEVICE_");
  v45 = sub_10004EB40(v43, v44, v55);
  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (v45)
  {
    goto LABEL_73;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v46 = off_100B508C8;
  v47 = sub_10004DF60(uu);
  LODWORD(v46) = sub_10078D580(v46, v47);

  if (!v46)
  {
    goto LABEL_73;
  }

  if (qword_100B50910 != -1)
  {
    sub_10086E454();
  }

  if (*(off_100B50908 + 226) == 1)
  {
    v48 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = 2;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "MIDI: Rejecting connection parameter request due low latency HID devices connected", buf, 2u);
      v25 = 0;
      v19 = 0;
      goto LABEL_23;
    }

    v25 = 0;
    v19 = 0;
  }

  else
  {
LABEL_73:
    v25 = 0;
  }

  v26 = 2;
LABEL_23:
  v27 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v28 = "Rejecting";
    if (v19)
    {
      v28 = "Accepting";
    }

    *buf = 136447746;
    *&buf[4] = v28;
    v73 = 1024;
    v74 = v71;
    v75 = 1024;
    v76 = v70;
    v77 = 1024;
    v78 = a6;
    v79 = 1024;
    v80 = a7;
    v81 = 1024;
    v82 = v68;
    v83 = 1024;
    v84 = v25;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s following parameters: min=%u, max=%u, lat=%u, mul=%u, cel=%u, preferredLowLatencyInterval=%d", buf, 0x30u);
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  sub_1002D0330(a2, a3, v19, v71, v70, a6, a7, v26, v68, a8, v52);
  v29 = sub_10004DF60(uu);
  sub_100758210(v29, v29, 4, a9 == 1, a10);

  sub_10002249C(buf);
  return sub_1000088CC(v67);
}

uint64_t sub_1007683C8(uint64_t a1, _WORD *a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, _WORD *a7, int a8, void *a9)
{
  v12 = a5;
  v13 = a4;
  v16 = a9;
  v17 = *a2;
  if ((v17 - 3201) > 0xF384u)
  {
    v18 = *a3;
    if ((v18 - 3201) > 0xF384u)
    {
      if (v17 <= v18)
      {
        if (v13 < 0x1F5)
        {
          if ((v12 - 3201) > 0xF388u)
          {
            v19 = v17 * 1.25;
            v20 = v18 * 1.25;
            if (!a6)
            {
              if (v19 < 15.0)
              {
                v21 = qword_100BCE980;
                v22 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
                if (a8)
                {
                  if (v22)
                  {
                    v35 = 134218240;
                    *v36 = v19;
                    *&v36[8] = 1024;
                    *v37 = 15;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Remote side (central) wants a min interval (%.0f ms) smaller than %d ms.", &v35, 0x12u);
                  }
                }

                else
                {
                  if (v22)
                  {
                    v35 = 134218240;
                    *v36 = v19;
                    *&v36[8] = 1024;
                    *v37 = 15;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Remote side (peripheral) wants a min interval (%.0f ms) smaller than %d ms. Scaling up", &v35, 0x12u);
                  }

                  *a2 = 12;
                  v19 = 15.0;
                }
              }

              v23 = 7.5;
              if (!a8)
              {
                v23 = 15.0;
              }

              if ((v23 != v20 || v19 != v23) && (v20 - v19) < 15.0)
              {
                v26 = qword_100BCE980;
                if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v35) = 0;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Intervals should be 15 ms apart - increasing the gap", &v35, 2u);
                }

                v20 = v19 + 15.0;
                *a3 = ((v19 + 15.0) / 1.25);
              }
            }

            if (v20 <= 2000.0)
            {
              if ((v20 * (v13 + 1)) <= 6000.0)
              {
                if (v13 < 0x1F || a6)
                {
                  v27 = (10 * v12);
                  if (v27 >= 0x4651)
                  {
                    v28 = qword_100BCE980;
                    if (a8 != 1)
                    {
                      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
                      {
                        sub_100871740();
                      }

                      goto LABEL_60;
                    }

                    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                    {
                      v35 = 67109376;
                      *v36 = v27;
                      *&v36[4] = 1024;
                      *&v36[6] = 18000;
                      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Remote side (central) asks for a timeout (%u ms) of more than %d seconds.", &v35, 0xEu);
                    }
                  }

                  if ((v20 * (3 * (v13 + 1))) <= v27)
                  {
                    if (a6)
                    {
                      if (v19 < *(a6 + 20))
                      {
                        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
                        {
                          sub_1008717BC();
                        }

                        goto LABEL_60;
                      }

                      v32 = *(a6 + 24);
                      if (v19 <= v32)
                      {
                        v33 = (v32 / 1.25);
                        *a3 = v33;
                        v34 = qword_100BCE980;
                        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
                        {
                          v35 = 67109120;
                          *v36 = v33;
                          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Using %u as the max interval", &v35, 8u);
                        }
                      }

                      *a7 = *(a6 + 12);
                    }

                    v30 = 1;
                    goto LABEL_61;
                  }

                  v29 = qword_100BCE980;
                  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
                  {
                    v35 = 67109632;
                    *v36 = v27;
                    *&v36[4] = 1024;
                    *&v36[6] = v13;
                    *v37 = 2048;
                    *&v37[2] = v20;
                    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Remote sides asks for a timeout (%u ms) / latency (%u) / maxInterval (%f ms) that would cause link timeouts under bad conditions - refusing", &v35, 0x18u);
                  }
                }

                else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
                {
                  sub_100871844();
                }
              }

              else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
              {
                sub_1008718C0();
              }
            }

            else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
            {
              sub_1008718FC();
            }
          }

          else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
          {
            sub_100871938();
          }
        }

        else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
        {
          sub_1008719A8();
        }
      }

      else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_100871A18();
      }
    }

    else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100871A88();
    }
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_100871AFC();
  }

LABEL_60:
  v30 = 0;
LABEL_61:

  return v30;
}

void sub_1007689A4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, void *a5)
{
  if (a2 == 2)
  {
    v9 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *&buf[4] = 2;
      *v27 = 2048;
      *&v27[2] = (a3 * 1.25);
      v28 = 2048;
      v29 = (a4 * 1.25);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "autoReconnect caused resuming, state=%d, scan=%g/%g (ms)", buf, 0x1Cu);
    }

    v12 = *a5;
    v10 = a5 + 1;
    v11 = v12;
    if (v12 != v10)
    {
      do
      {
        v13 = v11[4];
        *buf = 0;
        *v27 = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        sub_1000498D4(off_100B508C8, v13, 0, 1u, 0, 0, buf);
        if (uuid_is_null(buf))
        {
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
          {
            sub_100871B70(&v24, v13, &v25);
          }
        }

        else if (a1 + 392 == sub_10004E34C(a1 + 384, buf))
        {
          sub_100749CFC(a1, buf, v13);
        }

        else
        {
          v17 = sub_10009A66C(v13);
          v18 = v17 << 48;
          if (BYTE6(v13) == 3)
          {
            v18 = 0x1000000000000;
          }

          if (BYTE6(v13) == 2)
          {
            v19 = 0;
          }

          else
          {
            v19 = v18;
          }

          v20 = sub_1007564FC(v17, v17 & 0xFF000000 | BYTE6(v17) | (BYTE2(v17) << 32) & 0xFFFF00FFFFFFFFFFLL | (BYTE1(v17) << 40) | (v17 >> 16) & 0xFF0000 | HIDWORD(v17) & 0xFF00 | v19);
          v21 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
          {
            *v22 = 67109120;
            v23 = v20;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "autoReconnect to a device already connected, removeAddressFromBTController returned %d", v22, 8u);
          }
        }

        v14 = v11[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v11[2];
            v16 = *v15 == v11;
            v11 = v15;
          }

          while (!v16);
        }

        v11 = v15;
      }

      while (v15 != v10);
    }

    if (*(a1 + 864) == 4)
    {
      sub_100768CC0(a1);
    }
  }

  else if (a2 == 1)
  {

    sub_100745874(a1, 4);
  }
}

uint64_t sub_100768CC0(uint64_t a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 864);
    if (v3 > 4)
    {
      v4 = "UNKNOWN";
    }

    else
    {
      v4 = (&off_100B0BF80)[v3];
    }

    v5 = *(a1 + 928);
    if (v5 > 3)
    {
      v6 = "UNKNOWN";
    }

    else
    {
      v6 = (&off_100B0BF60)[v5];
    }

    v14 = 136446466;
    v15 = v4;
    v16 = 2082;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "resumeConnectionManager called, LeConnectionState=%{public}s LeConnectionManagerState=%{public}s", &v14, 0x16u);
  }

  v7 = *(a1 + 928);
  if (v7 < 2)
  {
    goto LABEL_12;
  }

  if (v7 != 2)
  {
    if (v7 == 3)
    {
LABEL_12:
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_100871BD8();
      }

      return 12;
    }

    return 0;
  }

  v9 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Resuming LE Connection Manager", &v14, 2u);
  }

  sub_100745C6C(a1, 3u);
  v10 = *(a1 + 864);
  if ((v10 - 1) < 3)
  {
    v11 = qword_100BCE980;
    result = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "We're doing something else right now, will resume when idle", &v14, 2u);
    return 0;
  }

  if (v10 != 4)
  {
    if (!v10)
    {
      v12 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "We're idle, lets move on", &v14, 2u);
      }

      sub_100745C6C(a1, 0);
      sub_1007556FC(a1);
      sub_100753CFC(a1);
    }

    return 0;
  }

  v13 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "We're auto-reconnecting, lets move on", &v14, 2u);
  }

  sub_100745C6C(a1, 0);
  sub_100745874(a1, *(a1 + 352) != 0);
  if ([*(a1 + 768) count] || (result = objc_msgSend(*(a1 + 776), "count")) != 0)
  {
    sub_10074518C(a1, 0);
    return 0;
  }

  return result;
}

void sub_100768F84(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 60);
  v4 = *(a1 + 56);
  v5 = *(a1 + 58);
  sub_100775F10(v6, a1 + 32);
  sub_1007689A4(v2, v3, v4, v5, v6);
  sub_10000CEDC(v6, v6[1]);
}

double sub_100769048(uint64_t a1, int a2, unsigned __int16 *a3, uint64_t a4)
{
  v8 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v11[0]) = 67109120;
    HIDWORD(v11[0]) = a2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "handleCsReadRemoteFAETableCallback status=%{bluetooth:OI_STATUS}u", v11, 8u);
  }

  v11[0] = 0;
  v11[1] = 0;
  uuid_clear(v11);
  if (sub_100748908(a1, a3, v11))
  {
    v10 = sub_10004E34C(a1 + 1424, v11);
    if (a1 + 1432 != v10)
    {
      *&result = sub_1003183A4(*(v10 + 48), *a3, a4).n128_u64[0];
    }
  }

  return result;
}

uint64_t sub_100769150(uint64_t a1, int a2, uint64_t a3)
{
  v6 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v8[0]) = 67109120;
    HIDWORD(v8[0]) = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "handleCsReadRemoteFAETableCallback status=%{bluetooth:OI_STATUS}u", v8, 8u);
  }

  v8[0] = 0;
  v8[1] = 0;
  uuid_clear(v8);
  result = sub_100748908(a1, a3, v8);
  if (result)
  {
    result = sub_10004E34C(a1 + 1424, v8);
    if (a1 + 1432 != result)
    {
      return sub_1003183CC(*(result + 48));
    }
  }

  return result;
}

void sub_100769248(uint64_t a1, int a2, uint64_t a3)
{
  v6 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "handleCsProcedureEnableCallback status=%{bluetooth:OI_STATUS}u", buf, 8u);
  }

  *buf = 0;
  v9 = 0;
  uuid_clear(buf);
  if (sub_100748908(a1, a3, buf))
  {
    v7 = sub_10004E34C(a1 + 1424, buf);
    if (a1 + 1432 != v7)
    {
      sub_1003183D8(*(v7 + 48));
    }
  }
}

void sub_100769404(uint64_t a1, int a2, uint64_t a3)
{
  v6 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "handleCsProcedureEnableCallback status=%{bluetooth:OI_STATUS}u", buf, 8u);
  }

  *buf = 0;
  v9 = 0;
  uuid_clear(buf);
  if (sub_100748908(a1, a3, buf))
  {
    v7 = sub_10004E34C(a1 + 1424, buf);
    if (a1 + 1432 != v7)
    {
      sub_1003184D8(*(v7 + 48), a2);
    }
  }
}

void sub_100769568(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, char a10, char a11, unsigned __int8 a12, size_t __n, const void *a14, unsigned __int8 *a15, const void *a16)
{
  v24 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a8;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "handleCsSubeventResultCallback status=%{bluetooth:OI_STATUS}u", buf, 8u);
  }

  *buf = 0;
  v27 = 0;
  uuid_clear(buf);
  if (sub_100748908(a1, a2, buf))
  {
    v25 = sub_10004E34C(a1 + 1424, buf);
    if (a1 + 1432 != v25)
    {
      sub_1003185AC(*(v25 + 48), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, __n, a14, a15, a16);
    }
  }
}

void sub_1007696D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, unsigned __int8 *a11, const void *a12)
{
  v20 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a4;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "handleCsSubeventResultCallback status=%{bluetooth:OI_STATUS}u", buf, 8u);
  }

  *buf = 0;
  v23 = 0;
  uuid_clear(buf);
  if (sub_100748908(a1, a2, buf))
  {
    v21 = sub_10004E34C(a1 + 1424, buf);
    if (a1 + 1432 != v21)
    {
      sub_1003189FC(*(v21 + 48), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
    }
  }
}

double sub_100769820(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return sub_100769048(v2, v3, v4, v5);
}

uint64_t sub_100769878(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);

  return sub_100769150(v2, v3, v4);
}

void sub_1007698D0(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  sub_100769248(off_100B508A8, *(a1 + 48), *(a1 + 32));
}

void sub_100769958(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  sub_100769404(off_100B508A8, *(a1 + 40), *(a1 + 32));
}

uint64_t sub_1007699D0(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  sub_100769568(off_100B508A8, *(a1 + 32), *(a1 + 78), *(a1 + 72), *(a1 + 74), *(a1 + 76), *(a1 + 79), *(a1 + 80), *(a1 + 81), BYTE1(*(a1 + 81)), BYTE2(*(a1 + 81)), HIBYTE(*(a1 + 81)), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  if (*(a1 + 40))
  {
    operator delete[]();
  }

  if (*(a1 + 48))
  {
    operator delete[]();
  }

  if (*(a1 + 56))
  {
    operator delete[]();
  }

  result = *(a1 + 64);
  if (result)
  {

    operator delete[]();
  }

  return result;
}

uint64_t sub_100769ABC(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  sub_1007696D4(off_100B508A8, *(a1 + 32), *(a1 + 72), *(a1 + 73), *(a1 + 74), *(a1 + 75), *(a1 + 76), *(a1 + 77), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  if (*(a1 + 40))
  {
    operator delete[]();
  }

  if (*(a1 + 48))
  {
    operator delete[]();
  }

  if (*(a1 + 56))
  {
    operator delete[]();
  }

  result = *(a1 + 64);
  if (result)
  {

    operator delete[]();
  }

  return result;
}

void sub_100769BA0(void *a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[147];
    *buf = 67109120;
    *v26 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Disconnection History: %d entries", buf, 8u);
  }

  if (a1[147])
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = objc_alloc_init(NSDateFormatter);
    [v5 setDateFormat:@"yyyy-MM-dd H:mm:ss"];
    v6 = a1[145];
    if (v6 != a1 + 146)
    {
      do
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        sub_10077608C(&v22, (v6 + 7));
        v7 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v6 + 4;
          if (*(v6 + 55) < 0)
          {
            v8 = *v8;
          }

          *buf = 136446210;
          *v26 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s:", buf, 0xCu);
        }

        for (i = v23; i != &v22; i = *(i + 8))
        {
          v10 = *(i + 16);
          v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:v10];
          v12 = [v5 stringFromDate:v11];
          LODWORD(v13) = llround((v10 - floor(v10)) * 1000.0);
          v14 = [NSString stringWithFormat:@"%@.%000d", v12, v13];
          v15 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(i + 24);
            v17 = v14;
            v18 = [v14 UTF8String];
            *buf = 67109890;
            *v26 = v16;
            *&v26[4] = 2082;
            *&v26[6] = v18;
            v27 = 2048;
            v28 = v10;
            v29 = 2048;
            v30 = Current - v10;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "statedump:       reason %d time:%{public}s %.3f secs(%-12.2f secs ago)", buf, 0x26u);
          }
        }

        sub_100028EB4(&v22);
        v19 = v6[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v6[2];
            v21 = *v20 == v6;
            v6 = v20;
          }

          while (!v21);
        }

        v6 = v20;
      }

      while (v20 != a1 + 146);
    }
  }
}

void sub_100769EEC(uint64_t a1, const void **a2)
{
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
  {
    sub_100871C14();
  }

  v4 = sub_1000463C8(a1 + 1160, a2);
  if ((a1 + 1168) != v4)
  {
    v5 = v4;
    sub_10002717C((a1 + 1160), v4);
    sub_1003C473C((v5 + 4));
    operator delete(v5);
  }
}

double sub_100769F7C(uint64_t a1, const void **a2)
{
  v3 = sub_1000463C8(a1 + 1160, a2);
  v4 = 0.0;
  if (a1 + 1168 != v3)
  {
    v6[0] = 0;
    v6[1] = 0;
    v7 = 0;
    sub_10077608C(v6, v3 + 56);
    if (v7)
    {
      v4 = *(v6[0] + 16);
    }

    sub_100028EB4(v6);
  }

  return v4;
}

void sub_100769FF8(void *a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[151];
    *buf = 67109120;
    LODWORD(v13) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: LeConnectionRSSIThresholdState History: %d entries", buf, 8u);
  }

  if (a1[151])
  {
    v4 = a1[149];
    v5 = a1 + 150;
    if (v4 != a1 + 150)
    {
      v6 = qword_100BCE980;
      do
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v4 + 4;
          if (*(v4 + 55) < 0)
          {
            v7 = *v7;
          }

          v8 = *(v4 + 14);
          *buf = 136446466;
          v13 = v7;
          v14 = 1024;
          v15 = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s:%d", buf, 0x12u);
          v6 = qword_100BCE980;
        }

        v9 = v4[1];
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
            v10 = v4[2];
            v11 = *v10 == v4;
            v4 = v10;
          }

          while (!v11);
        }

        v4 = v10;
      }

      while (v10 != v5);
    }
  }
}

void *sub_10076A184(uint64_t a1, const void **a2, int a3)
{
  if (*(a1 + 1208) >= 0x21uLL)
  {
    sub_10075F7DC(a1);
  }

  v8 = a2;
  result = sub_100776440((a1 + 1192), a2, &unk_1008A9BD0, &v8, &v7);
  *(result + 14) = a3;
  return result;
}

uint64_t sub_10076A1F4(uint64_t a1, const void **a2, double a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current <= a3)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = Current - a3;
  }

  v8 = sub_1000463C8(a1 + 1160, a2);
  if (a1 + 1168 == v8)
  {
    v10 = 0;
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    sub_10077608C(v14, v8 + 56);
    v9 = v14[1];
    if (v14[1] == v14)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      do
      {
        v11 = (*(v9 + 24) - 708) > 0x36 || ((1 << (*(v9 + 24) + 60)) & 0x40000004000001) == 0;
        if (!v11 && *(v9 + 16) > v7)
        {
          ++v10;
        }

        v9 = *(v9 + 8);
      }

      while (v9 != v14);
    }

    sub_100028EB4(v14);
  }

  v12 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    LODWORD(v14[0]) = 136446722;
    *(v14 + 4) = a2;
    WORD2(v14[1]) = 2048;
    *(&v14[1] + 6) = a3;
    HIWORD(v14[2]) = 1024;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "getNumDisconnectionsBySignalQuality for %{public}s over time window %f count %d", v14, 0x1Cu);
  }

  return v10;
}
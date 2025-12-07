void sub_10033C674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

const char *sub_10033C694(uint64_t a1, int a2)
{
  v2 = "unknown";
  if (a2 == 2)
  {
    v2 = "right";
  }

  if (a2 == 1)
  {
    return "left";
  }

  else
  {
    return v2;
  }
}

void sub_10033C6C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10081AF28();
  }

  v4 = sub_100046458(off_100B508C8, v3, 0);
  *(a1 + 424) = BYTE5(v4);
  *(a1 + 425) = BYTE4(v4);
  *(a1 + 426) = BYTE3(v4);
  *(a1 + 427) = BYTE2(v4);
  *(a1 + 428) = BYTE1(v4);
  *(a1 + 429) = v4;
  v23 = 0;
  sub_1000216B4(&v23);
  v5 = sub_100197C20((*(a1 + 424) << 40) | (*(a1 + 425) << 32) | (*(a1 + 426) << 24) | (*(a1 + 427) << 16) | (*(a1 + 428) << 8) | *(a1 + 429), (a1 + 432));
  sub_100022214(&v23);
  v6 = qword_100BCE8C0;
  if (v5 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    *__p = 67109120;
    *&__p[4] = v5;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "CL get version failed with status %d", __p, 8u);
    v6 = qword_100BCE8C0;
  }

  v7 = a1 + 424;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8((a1 + 424), __p);
    v8 = v32 >= 0 ? __p : *__p;
    v9 = *(a1 + 432);
    *buf = 136315394;
    *&buf[4] = v8;
    v25 = 1024;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Magnet link connected with device %s with version %d", buf, 0x12u);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(*__p);
    }
  }

  v22 = 0;
  if (qword_100B508B0 != -1)
  {
    sub_10081AF3C();
  }

  v10 = off_100B508A8;
  sub_10004DFB4(__p, v3);
  v11 = sub_1000C4FCC(v10, __p, &v22);
  if (v22)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    goto LABEL_25;
  }

  sub_1000618AC(&v23);
  v13 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8((a1 + 424), buf);
    v14 = v27 >= 0 ? buf : *buf;
    v15 = *(a1 + 432);
    v16 = sub_100199590(v22);
    v17 = sub_1001994B8(v22);
    *__p = 136315906;
    *&__p[4] = v14;
    v29 = 1024;
    v30 = v15;
    v31 = 1024;
    v32 = v16;
    v33 = 1024;
    v34 = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "device %s with version %d  (peerIsPhone=%d peerIsWatch=%d)", __p, 0x1Eu);
    if (v27 < 0)
    {
      operator delete(*buf);
    }
  }

  v18 = sub_100199668(v22);
  sub_100022214(&v23);
  if ((v18 & 1) == 0)
  {
    v21 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Magnet link up between two devices that do not support EasyPairing", __p, 2u);
    }

    *(v7 + 4) = 0;
    *v7 = 0;
  }

  else
  {
LABEL_25:
    *(a1 + 430) = 1;
    sub_10033CAD0(a1);
    v19 = *(a1 + 516);
    if (v19 == -1)
    {
      v20 = (a1 + 516);
      notify_register_check("com.apple.bluetooth.magnet", v20);
      v19 = *v20;
    }

    notify_set_state(v19, 1uLL);
    notify_post("com.apple.bluetooth.magnet");
  }

  sub_10002249C(&v23);
}

void sub_10033CA7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_10002249C(&a13);

  _Unwind_Resume(a1);
}

uint64_t sub_10033CAD0(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 360);
  v3 = *(a1 + 336);
  v2 = *(a1 + 344);
  while (v3 != v2)
  {
    if (*v3)
    {
      sub_100337EC0(a1, *v3);
      v2 = *(a1 + 344);
    }

    ++v3;
  }

  return sub_1000088CC(v5);
}

void sub_10033CB4C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10081AF28();
  }

  v4 = sub_100046458(off_100B508C8, v3, 0);
  LOBYTE(v14) = BYTE5(v4);
  BYTE1(v14) = BYTE4(v4);
  BYTE2(v14) = BYTE3(v4);
  HIBYTE(v14) = BYTE2(v4);
  LOBYTE(v15) = BYTE1(v4);
  HIBYTE(v15) = v4;
  v5 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_100063D0C(v4);
    *buf = 138412290;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "magnet link disconnected with device %@", buf, 0xCu);
  }

  if (v14 == *(a1 + 424) && v15 == *(a1 + 428))
  {
    *(a1 + 432) = 0;
    *(a1 + 424) = 0;
    *(a1 + 427) = 0;
    *buf = 0uLL;
    sub_100007F88(buf, a1 + 360);
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      v10 = *i;
      v11 = **i;
      sub_10033CE08(*i);
      if (v11 && !sub_100338390(v10))
      {
        v17[0] = 0;
        sub_1000216B4(v17);
        sub_100188FA4((v11 + 128), &v14, 2);
        sub_100022214(v17);
        *(v10 + 728) = 0;
        sub_10002249C(v17);
      }
    }

    sub_1000088CC(buf);
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    v8 = sub_100063D0C(v4);
    sub_1000BE6F8((a1 + 424), buf);
    sub_10081AF64(v8, buf, v17);
  }

  v12 = *(a1 + 516);
  if (v12 == -1)
  {
    v13 = (a1 + 516);
    notify_register_check("com.apple.bluetooth.magnet", v13);
    v12 = *v13;
  }

  notify_set_state(v12, 0);
  notify_post("com.apple.bluetooth.magnet");
}

uint64_t sub_10033CE08(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    sub_100322DD8(result);
    operator delete();
  }

  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_10033CE4C(uint64_t a1, uint64_t a2, int a3)
{
  result = sub_100337E54(a1, a2);
  if (result)
  {
    v11[0] = 0;
    v11[1] = 0;
    sub_100007F88(v11, a1 + 360);
    if (a2)
    {
      for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
      {
        if (**i == a2)
        {
          v8 = *(*i + 48);
          if (v8)
          {
            v9 = *(a2 + 128);
            v10 = *(a2 + 132);
            sub_1003231E0(v8, a1 + 424, &v9, a3);
          }

          return sub_1000088CC(v11);
        }
      }
    }

    return sub_1000088CC(v11);
  }

  return result;
}

void sub_10033CEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10033CF08(uint64_t a1, uint64_t a2, int a3)
{
  result = sub_100337E54(a1, a2);
  if (result)
  {
    v11[0] = 0;
    v11[1] = 0;
    sub_100007F88(v11, a1 + 360);
    if (a2)
    {
      for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
      {
        if (**i == a2)
        {
          v8 = *(*i + 48);
          if (v8)
          {
            v9 = *(a2 + 128);
            v10 = *(a2 + 132);
            sub_1003236C4(v8, a1 + 424, &v9, a3);
          }

          return sub_1000088CC(v11);
        }
      }
    }

    return sub_1000088CC(v11);
  }

  return result;
}

void sub_10033CFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10033CFC4(uint64_t a1, uint64_t a2)
{
  v69[0] = 0;
  v69[1] = 0;
  sub_100007F88(v69, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      v5 = *i;
      if (**i == a2)
      {
        goto LABEL_7;
      }
    }
  }

  v5 = 0;
LABEL_7:
  v6 = qword_100BCE8C0;
  v7 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    sub_1000E5A58(a2, __p);
    v9 = v63 >= 0 ? __p : __p[0];
    v10 = *(a1 + 431);
    v11 = v10 > 3 ? "Unknown" : off_100AED2E8[v10];
    *buf = 136446466;
    *&buf[4] = v9;
    v73 = 2080;
    v74 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Easy unpair request for device %{public}s; Unpair Initiator: %s", buf, 0x16u);
    if (SHIBYTE(v63) < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = 0;
  __p[1] = __p;
  v63 = 0x3812000000;
  v64 = sub_1000422A4;
  v13 = (a2 + 128);
  v12 = *(a2 + 128);
  v65 = nullsub_23;
  v66 = "";
  v67[0] = 0;
  v68 = 0;
  *&v67[1] = v12;
  v68 = *(a2 + 132);
  v14 = sub_100007EE8(v7, v8);
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_10033D96C;
  v61[3] = &unk_100AE1120;
  v61[4] = __p;
  sub_10000CA94(v14, v61);
  v15 = *(a1 + 431);
  if ((v15 | 2) == 3)
  {
    v16 = qword_100BCE8C0;
    if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    sub_1000E5A58(a2, buf);
    v17 = "user-switch";
    if (v15 == 1)
    {
      v17 = "cloud";
    }

    v18 = v75 >= 0 ? buf : *buf;
    *v70 = 136315394;
    *&v70[4] = v17;
    *&v70[12] = 2082;
    *&v70[14] = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skip easy unpair request from %s: %{public}s", v70, 0x16u);
    if ((SHIBYTE(v75) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    v19 = *buf;
    goto LABEL_25;
  }

  if (!v5)
  {
    if (sub_1000DFB74(a2, 0x80000u) != 4 || !sub_100337E54(a1, a2) || *(a1 + 431))
    {
      goto LABEL_57;
    }

    v35 = qword_100BCE8C0;
    v36 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
    if (v36)
    {
      sub_1000BE6F8((a1 + 424), v70);
      v38 = v71;
      v39 = *v70;
      sub_1000E5A58(a2, v59);
      v40 = v70;
      if (v38 < 0)
      {
        v40 = v39;
      }

      if (v60 >= 0)
      {
        v41 = v59;
      }

      else
      {
        v41 = v59[0];
      }

      v42 = *(a1 + 432);
      *buf = 141558787;
      *&buf[4] = 1752392040;
      v73 = 2081;
      v74 = v40;
      v75 = 2082;
      v76 = v41;
      v77 = 1024;
      v78 = v42;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Sending Easy Unpair request to device %{private, mask.hash}s for device %{public}s with version %d", buf, 0x26u);
      if (v60 < 0)
      {
        operator delete(v59[0]);
      }

      if (v71 < 0)
      {
        operator delete(*v70);
      }
    }

    LODWORD(v59[0]) = *v13;
    WORD2(v59[0]) = *(a2 + 132);
    *v70 = 0;
    *&v70[8] = 0;
    if (*(a1 + 432) < 5u)
    {
      v46 = sub_100432610(v36, v37);
      sub_1000BE6F8(v59, v55);
      sub_1000C23E0(a2, buf);
      if (v75 >= 0)
      {
        v47 = buf;
      }

      else
      {
        v47 = *buf;
      }

      (*(*v46 + 120))(v46, v55, v47, v70, 16);
      if (SHIBYTE(v75) < 0)
      {
        operator delete(*buf);
      }

      if ((v56 & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      v45 = v55;
    }

    else
    {
      v43 = sub_100432610(v36, v37);
      sub_1000BE6F8(v59, v57);
      sub_1000C23E0(a2, buf);
      if (v75 >= 0)
      {
        v44 = buf;
      }

      else
      {
        v44 = *buf;
      }

      (*(*v43 + 128))(v43, v57, v44, v70, 16, 0, 0);
      if (SHIBYTE(v75) < 0)
      {
        operator delete(*buf);
      }

      if ((v58 & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      v45 = v57;
    }

    v19 = *v45;
LABEL_25:
    operator delete(v19);
LABEL_57:
    v31 = 0;
    *(a1 + 431) = 0;
    goto LABEL_58;
  }

  if (*(a1 + 328))
  {
    v54 = 0;
    sub_1000216B4(&v54);
    v53 = 0;
    v52 = 0;
    if (qword_100B50AA0 != -1)
    {
      sub_100819F0C();
    }

    sub_10009BE34(off_100B50A98, &v52);
    sub_100022214(&v54);
    sub_100330A00(a1, a2, &v52, 0, 0);
    if (sub_100337E54(a1, a2))
    {
      sub_100330A00(a1, a2, a1 + 424, 0, 0);
    }

    *(v5 + 12) = 1;
    sub_100330B54(a1, a2, &v52);
    if (!sub_100337E54(a1, a2) || *(a1 + 431) && (*(a1 + 431) != 1 || *(a1 + 432) > 9u))
    {
      goto LABEL_70;
    }

    v20 = qword_100BCE8C0;
    v21 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      sub_1000BE6F8((a1 + 424), v70);
      v23 = v71;
      v24 = *v70;
      sub_1000E5A58(a2, v59);
      v25 = v70;
      if (v23 < 0)
      {
        v25 = v24;
      }

      if (v60 >= 0)
      {
        v26 = v59;
      }

      else
      {
        v26 = v59[0];
      }

      v27 = *(a1 + 432);
      *buf = 141558787;
      *&buf[4] = 1752392040;
      v73 = 2081;
      v74 = v25;
      v75 = 2082;
      v76 = v26;
      v77 = 1024;
      v78 = v27;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Sending Easy Unpair request to device %{private, mask.hash}s for device %{public}s with version %d", buf, 0x26u);
      if (v60 < 0)
      {
        operator delete(v59[0]);
      }

      if (v71 < 0)
      {
        operator delete(*v70);
      }
    }

    LODWORD(v59[0]) = *v13;
    WORD2(v59[0]) = *(a2 + 132);
    *v70 = 0;
    *&v70[8] = 0;
    if (*(a1 + 432) < 5u)
    {
      v33 = sub_100432610(v21, v22);
      sub_1000BE6F8(v59, v48);
      sub_1000C23E0(a2, buf);
      if (v75 >= 0)
      {
        v34 = buf;
      }

      else
      {
        v34 = *buf;
      }

      (*(*v33 + 120))(v33, v48, v34, v70, 16);
      if (SHIBYTE(v75) < 0)
      {
        operator delete(*buf);
      }

      if ((v49 & 0x80000000) == 0)
      {
        goto LABEL_70;
      }

      v30 = v48;
    }

    else
    {
      v28 = sub_100432610(v21, v22);
      sub_1000BE6F8(v59, v50);
      sub_1000C23E0(a2, buf);
      if (v75 >= 0)
      {
        v29 = buf;
      }

      else
      {
        v29 = *buf;
      }

      (*(*v28 + 128))(v28, v50, v29, v70, 16, 0, 0);
      if (SHIBYTE(v75) < 0)
      {
        operator delete(*buf);
      }

      if ((v51 & 0x80000000) == 0)
      {
        goto LABEL_70;
      }

      v30 = v50;
    }

    operator delete(*v30);
LABEL_70:
    *(a1 + 431) = 0;
    sub_10002249C(&v54);
    v31 = 1;
    goto LABEL_58;
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081AFF0();
  }

  v31 = 0;
LABEL_58:
  _Block_object_dispose(__p, 8);
  sub_1000088CC(v69);
  return v31;
}

void sub_10033D810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (*(v45 - 105) < 0)
  {
    operator delete(*(v45 - 128));
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a45, 8);
  sub_1000088CC(v45 - 176);
  _Unwind_Resume(a1);
}

const char *sub_10033D948(uint64_t a1, unsigned int a2)
{
  if (a2 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_100AED2E8[a2];
  }
}

uint64_t sub_10033D96C(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_10081B02C();
  }

  sub_1007B0D18(off_100B51070, (*(*(a1 + 32) + 8) + 48));
  if (qword_100B508C0 != -1)
  {
    sub_10081B040();
  }

  v2 = off_100B508B8;
  v3 = *(*(a1 + 32) + 8) + 48;

  return sub_1007C77C0(v2, v3);
}

uint64_t sub_10033D9F8(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      if ((*i)->__sig == a2)
      {
        sub_100337EC0(a1, *i);
        return sub_1000088CC(v6);
      }
    }
  }

  return sub_1000088CC(v6);
}

uint64_t sub_10033DA80(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      if (**i == a2)
      {
        v9 = sub_100331844(a1, a2, 1, a3, a4);
        goto LABEL_7;
      }
    }
  }

  v9 = 312;
LABEL_7:
  v10 = sub_1005461A4(a2, a3);
  sub_10033BBAC(v10, a2);
  sub_1000088CC(v12);
  return v9;
}

uint64_t sub_10033DB4C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  sub_10053D6E4(a2, a3);
  v25[0] = 0;
  v25[1] = 0;
  v6 = sub_100007F88(v25, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      if (**i == a2)
      {
        if (a3)
        {
          sub_100331844(a1, a2, 7, 0, 2);
          v21 = 4;
          v22 = a3;
        }

        else
        {
          v22 = 0xFFFFFFFFLL;
          v21 = 7;
        }

        v6 = sub_100331844(a1, a2, v21, v22, 2);
        v9 = v6;
        goto LABEL_7;
      }
    }
  }

  v9 = 1;
LABEL_7:
  v10 = sub_10000C798(v6, v7);
  v11 = (*(*v10 + 352))(v10);
  if (v11 & 1) != 0 || (v13 = sub_10000C798(v11, v12), v14 = (*(*v13 + 416))(v13), (v14) || (v16 = sub_10000C798(v14, v15), (*(*v16 + 456))(v16)))
  {
    sub_10033142C(a1, a2);
    if (qword_100B50AB0 != -1)
    {
      sub_10081A1B0();
    }

    sub_100560FB0(off_100B50AA8, a2, 4097);
    v23[0] = 0;
    v23[1] = 0;
    v24 = 0;
    v17 = sub_100579608(v23, 4, a2);
    LODWORD(v24) = a3;
    HIDWORD(v24) = a3;
    v19 = sub_10000F034(v17, v18);
    (*(*v19 + 56))(v19, v23);
  }

  sub_1000088CC(v25);
  return v9;
}

void sub_10033DD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10033DD54(uint64_t a1, unsigned __int8 *a2, unsigned int a3, unsigned int a4, int a5)
{
  if (!sub_1000E2140(a2, 0xEu))
  {
    return 11;
  }

  v10 = sub_1000E3188(a2);
  sub_10053D6E4(a2, a4 | (a3 << 8));
  v28[0] = 0;
  v28[1] = 0;
  v11 = sub_100007F88(v28, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      if (**i == a2)
      {
        v11 = sub_100331844(a1, a2, 12, a4 | (a3 << 8), 2);
        v14 = v11;
        goto LABEL_9;
      }
    }
  }

  v14 = 1;
LABEL_9:
  v15 = sub_10000C798(v11, v12);
  v16 = (*(*v15 + 352))(v15);
  if (v16 & 1) != 0 || (v18 = sub_10000C798(v16, v17), v19 = (*(*v18 + 416))(v18), (v19) || (v21 = sub_10000C798(v19, v20), (*(*v21 + 456))(v21)))
  {
    sub_10033142C(a1, a2);
    if (v10 != 0xFFFF && a5 == 2 && v10 != (a4 | (a3 << 8)))
    {
      if (qword_100B50AB0 != -1)
      {
        sub_10081A1B0();
      }

      sub_100560FB0(off_100B50AA8, a2, 4097);
    }

    v26[0] = 0;
    v26[1] = 0;
    v27 = 0;
    v22 = sub_100579608(v26, 4, a2);
    v27 = __PAIR64__(a3, a4);
    v24 = sub_10000F034(v22, v23);
    (*(*v24 + 56))(v24, v26);
  }

  sub_1000088CC(v28);
  return v14;
}

void sub_10033DF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10033DF90(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  if (*(a1 + 328) == 1)
  {
    v5 = a3;
    if (a3)
    {
      v8 = -1;
    }

    else
    {
      v8 = -3;
    }

    v9 = sub_1000E356C(a2);
    v10 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v11 = __p[0];
      v12 = "Disabled";
      if (v33 >= 0)
      {
        v11 = __p;
      }

      if (v5)
      {
        v12 = "Enabled";
      }

      *buf = 136315394;
      v35 = v11;
      v36 = 2080;
      v37 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set InEarDetection for device %s, InEarDetection = %s", buf, 0x16u);
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v13 = sub_1005468F0(a2, v5, 1);
    sub_10033E2FC(v13, a2);
    __p[0] = 0;
    __p[1] = 0;
    sub_100007F88(__p, a1 + 360);
    if (a2)
    {
      for (i = *(a1 + 336); i != *(a1 + 344); ++i)
      {
        v15 = *i;
        if (**i == a2)
        {
          sub_1003393C0(a1, a2, 0xFFFFLL, v8);
          if (v5)
          {
            v31 = 2;
          }

          else
          {
            v31 = 1;
          }

          v16 = sub_100331844(a1, a2, 10, v31, a4);
          if (v5)
          {
            v17 = 0;
          }

          else
          {
            *(v15 + 8) = 0;
            if (*(v15 + 9) != 3)
            {
              *(v15 + 9) = 0;
            }

            v17 = 1;
          }

          goto LABEL_19;
        }
      }
    }

    v17 = 0;
    v16 = 312;
LABEL_19:
    sub_10000801C(__p);
    v20 = sub_10000C798(v18, v19);
    v21 = (*(*v20 + 352))(v20);
    if (v21)
    {
      v21 = sub_10033142C(a1, a2);
    }

    v23 = sub_10000C798(v21, v22);
    v24 = (*(*v23 + 352))(v23);
    if (v24 & 1) != 0 || (v26 = sub_10000C798(v24, v25), v24 = (*(*v26 + 416))(v26), (v24) || (v28 = sub_10000C798(v24, v27), v24 = (*(*v28 + 456))(v28), v24))
    {
      if (v17)
      {
        if (a4 != 2)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v29 = v9;
        if (a4 != 2)
        {
          v29 = 1;
        }

        if ((v29 & 1) != 0 || (v5 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      if (qword_100B50AB0 != -1)
      {
        sub_10081A1B0();
      }

      v24 = sub_100560FB0(off_100B50AA8, a2, 4097);
    }

    if (!v17)
    {
LABEL_36:
      sub_1000088CC(__p);
      return v16;
    }

LABEL_35:
    sub_10033BBAC(v24, a2);
    goto LABEL_36;
  }

  return 111;
}

uint64_t sub_10033E2FC(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE8C0;
  v4 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    sub_1000C23E0(a2, __p);
    v6 = v11 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notify in ear enabled change for device %s", buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = sub_1000D999C(v4, v5);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100354EC0;
  v9[3] = &unk_100ADF8F8;
  v9[4] = a2;
  sub_10000CA94(v7, v9);
  if (qword_100B50AE0 != -1)
  {
    sub_10081A23C();
  }

  sub_1004DACA4(qword_100B50AD8, a2);
  if (qword_100B508E0 != -1)
  {
    sub_10081A1D8();
  }

  return sub_100518DC8(off_100B508D8, a2);
}

uint64_t sub_10033E47C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v7 = v30 >= 0 ? __p : *__p;
    *buf = 136446466;
    *&buf[4] = v7;
    v25 = 1024;
    v26 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received primary bud side notification for device %{public}s, with bud side = %d from other end of magnet", buf, 0x12u);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(*__p);
    }
  }

  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      v9 = *i;
      if (**i == a2)
      {
        v9[11] = a3;
        v10 = qword_100BCE8C0;
        v11 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
        if (v11)
        {
          v13 = v9[10];
          v14 = v9[9];
          *__p = 67109632;
          *&__p[4] = a3;
          *&__p[8] = 1024;
          *&__p[10] = v13;
          *v29 = 1024;
          *&v29[2] = v14;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Primary bud info over magnet link -> %d, current connection primary bud info -> %d, current connection secondary bud in ear status -> %d", __p, 0x14u);
        }

        v15 = sub_10000C798(v11, v12);
        if (!(*(*v15 + 368))(v15))
        {
          break;
        }

        v16 = 0;
        if (a3 != 3 && v9[10] != a3)
        {
          if (v9[9] != 3)
          {
            break;
          }

          v17 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, buf);
            v18 = v27 >= 0 ? buf : *buf;
            v19 = v9[10];
            *__p = 136446722;
            *&__p[4] = v18;
            *&__p[12] = 1024;
            *v29 = v19;
            *&v29[4] = 1024;
            v30 = a3;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Info update from Magnet, Primary bud side  for device %{public}s seen locally is different from that of companion, we see  %d, and companion sees %d. Requesting connected bud to go secondary", __p, 0x18u);
            if (v27 < 0)
            {
              operator delete(*buf);
            }
          }

          v16 = sub_100331844(a1, a2, 8, 2, 1);
          v20 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, __p);
            v21 = v30 >= 0 ? __p : *__p;
            *buf = 136315138;
            *&buf[4] = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Schedule reconnection to W1 device after LSTO (5 seconds) on Gizmo, device addr : %s", buf, 0xCu);
            if (SHIBYTE(v30) < 0)
            {
              operator delete(*__p);
            }
          }

          *__p = *(a2 + 128);
          *&__p[4] = *(a2 + 132);
          if (qword_100B50AC0 != -1)
          {
            sub_10081A96C();
          }

          sub_100595470(off_100B50AB8, __p);
        }

        goto LABEL_34;
      }
    }
  }

  v16 = 0;
LABEL_34:
  sub_1000088CC(v23);
  return v16;
}

uint64_t sub_10033E80C(uint64_t a1, uint64_t a2)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      v5 = *i;
      if (**i == a2)
      {
        if (sub_100338390(*i))
        {
          v9 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            v10 = 605;
            if (v5[9].__opaque[33])
            {
              v10 = 611;
            }

            v11 = v5 + v10;
            v12 = *(v11 + 2);
            v14 = *v11;
            v15 = v12;
            v13 = sub_100304810(&v14);
            *buf = 136446210;
            v18 = v13;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Peer source %{public}s is currently connected in TiPi, skip connection stealing", buf, 0xCu);
          }

          v6 = 17;
        }

        else
        {
          if (sub_100337E54(a1, a2))
          {
            sub_100337EC0(a1, v5);
            v6 = 0;
            goto LABEL_9;
          }

          v6 = 1;
        }

        goto LABEL_7;
      }
    }
  }

  v6 = 7;
LABEL_7:
  v7 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v18) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "reformTriangle: Conditions not met for easy pairing, result %d", buf, 8u);
  }

LABEL_9:
  sub_1000088CC(v16);
  return v6;
}

void sub_10033E9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10033E9E4(uint64_t a1)
{
  v2 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ----------------- AACP connections ------------------", buf, 2u);
  }

  *buf = 0;
  v41 = 0;
  v42 = 0;
  sub_100007F20(buf, (a1 + 336));
  v3 = *buf;
  if (*buf != v41)
  {
    while (1)
    {
      v4 = **v3;
      v5 = *(*v3 + 20);
      v6 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v4, &__p);
        p_p = &__p;
        if (v52 < 0)
        {
          p_p = __p;
        }

        *v43 = 136446466;
        *&v43[4] = p_p;
        v44 = 1024;
        LODWORD(v45) = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump: Device %{public}s (pId 0x%04X)", v43, 0x12u);
        if (SHIBYTE(v52) < 0)
        {
          operator delete(__p);
        }
      }

      if ((v5 - 8194) > 0xE || ((1 << (v5 - 2)) & 0x409B) == 0)
      {
        v37 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          v38 = sub_1000E2C2C(v4);
          v39 = "no";
          if (v38)
          {
            v39 = "yes";
          }

          LODWORD(__p) = 136446210;
          *(&__p + 4) = v39;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "statedump:   Dev-fused: %{public}s", &__p, 0xCu);
        }
      }

      __p = 0uLL;
      v52 = 0;
      sub_1000E2D2C(v4, 0xAu, &__p);
      v9 = HIBYTE(v52);
      v10 = SHIBYTE(v52);
      if (v52 < 0)
      {
        v9 = *(&__p + 1);
      }

      v11 = qword_100BCE8C0;
      if (v9 >= 2 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        v12 = __p;
        if (v10 >= 0)
        {
          v12 = &__p;
        }

        *v43 = 136446210;
        *&v43[4] = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "statedump:   Firmware version: %{public}s", v43, 0xCu);
        v11 = qword_100BCE8C0;
      }

      v13 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        v14 = sub_1000E3314(v4);
        v15 = "unknown";
        if (v14 <= 2u)
        {
          v15 = off_100AED308[v14 & 3];
        }

        *v43 = 136446466;
        *&v43[4] = "Mic mode";
        v44 = 2082;
        v45 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "statedump:   %{public}s: %{public}s", v43, 0x16u);
      }

      if (sub_1003391A4(v13, v4))
      {
        v16 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          v17 = sub_1000E356C(v4);
          *v43 = 136446466;
          v18 = "Disabled";
          if (v17)
          {
            v18 = "Enabled";
          }

          *&v43[4] = "In Ear detection";
          v44 = 2082;
          v45 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "statedump:   %{public}s: %{public}s", v43, 0x16u);
        }
      }

      if (sub_1000E2140(v4, 0x1Eu))
      {
        break;
      }

      if (sub_1000E2140(v4, 0xEu))
      {
        v20 = 12;
        goto LABEL_33;
      }

      if (v5 - 8194) < 0xF && ((0x409Bu >> (v5 - 2)))
      {
        v20 = 4;
LABEL_33:
        v19 = sub_1000E3188(v4);
LABEL_34:
        v21 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          v22 = sub_100333C10(a1, v20, v19, v43);
          v23 = sub_100333BE4(v22, v20);
          v24 = v43;
          if (v46 < 0)
          {
            v24 = *v43;
          }

          *v47 = 136446466;
          v48 = v23;
          v49 = 2082;
          v50 = v24;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump:   %{public}s: %{public}s", v47, 0x16u);
          if (v46 < 0)
          {
            operator delete(*v43);
          }
        }
      }

      if (sub_1000E2140(v4, 0x10u) || sub_1000E2140(v4, 0x11u))
      {
        v25 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          v26 = sub_1000E3284(v4);
          sub_100333C10(a1, 13, v26, v43);
          v27 = v43;
          if (v46 < 0)
          {
            v27 = *v43;
          }

          *v47 = 136446466;
          v48 = "Listen mode";
          v49 = 2082;
          v50 = v27;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "statedump:   %{public}s: %{public}s", v47, 0x16u);
          if (v46 < 0)
          {
            operator delete(*v43);
          }
        }
      }

      if (sub_1000E2140(v4, 0x1Cu))
      {
        v28 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          v29 = sub_1000E32CC(v4);
          v30 = sub_1003551F4(v29, v29);
          sub_100007E30(v43, v30);
          v31 = v43;
          if (v46 < 0)
          {
            v31 = *v43;
          }

          *v47 = 136446466;
          v48 = "Listening Mode Configs";
          v49 = 2082;
          v50 = v31;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "statedump:   %{public}s: %{public}s", v47, 0x16u);
          if (v46 < 0)
          {
            operator delete(*v43);
          }
        }
      }

      if (sub_1000E2140(v4, 0x10u) && sub_1000E2140(v4, 1u))
      {
        v32 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          v33 = sub_1005493C4(v4);
          v34 = "unknown";
          if (v33 == 1)
          {
            v34 = "Enabled";
          }

          if (v33 == 2)
          {
            v35 = "Disabled";
          }

          else
          {
            v35 = v34;
          }

          sub_100007E30(v43, v35);
          v36 = v43;
          if (v46 < 0)
          {
            v36 = *v43;
          }

          *v47 = 136446466;
          v48 = "One Bud ANC Mode";
          v49 = 2082;
          v50 = v36;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "statedump:   %{public}s: %{public}s", v47, 0x16u);
          if (v46 < 0)
          {
            operator delete(*v43);
          }
        }
      }

      if (SHIBYTE(v52) < 0)
      {
        operator delete(__p);
      }

      if (++v3 == v41)
      {
        v3 = *buf;
        goto LABEL_75;
      }
    }

    v19 = sub_1000E06EC(v4);
    v20 = 22;
    goto LABEL_34;
  }

LABEL_75:
  if (v3)
  {
    v41 = v3;
    operator delete(v3);
  }
}

id sub_10033F114(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_100B6D2D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6D2D0))
  {
    v14 = +[NSCharacterSet alphanumericCharacterSet];
    qword_100B6D2C8 = [v14 invertedSet];

    __cxa_guard_release(&qword_100B6D2D0);
  }

  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v3 = sub_1000E6554(off_100B508E8, __p, 1);
  v4 = [NSString stringWithFormat:@"%s", sub_100304810(a2)];
  v5 = [v4 stringByReplacingOccurrencesOfString:@":" withString:&stru_100B0F9E0];

  v6 = sub_10000E92C();
  if ((*(*v6 + 8))(v6))
  {
    if (v3)
    {
      sub_1000C23E0(v3, __p);
      if (v16 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      v8 = [NSString stringWithUTF8String:v7];
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      v9 = [v8 componentsSeparatedByCharactersInSet:qword_100B6D2C8];
      v10 = [v9 componentsJoinedByString:&stru_100B0F9E0];

      if ([v10 length] < 0x41)
      {
        v3 = v10;
      }

      else
      {
        v11 = [v10 substringToIndex:64];

        v3 = v11;
      }
    }

    v12 = [NSString stringWithFormat:@"%@_%@", v5, v3];
  }

  else
  {
    v12 = v5;
  }

  return v12;
}

id sub_10033F3C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_10033F114(a1, a2);
  v3 = [NSString stringWithFormat:@"/private/var/mobile/Library/Logs/Bluetooth/AccessoryVersionInfo_%@.txt", v2];

  return v3;
}

uint64_t sub_10033F444(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  v4 = qword_100BCE8C0;
  if (*(a1 + 328))
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v8 = v13 >= 0 ? __p : __p[0];
      *buf = 67109635;
      v15 = a4;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2081;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendSmartRoutingInformation: Sending SR 2.0 info of length %u to %{private, mask.hash}s", buf, 0x1Cu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v9 = sub_10018A788((a2 + 128), a3, a4);
    sub_100022214(buf);
    if (v9 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B090();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100819F0C();
    }

    v10 = sub_1000DD584(off_100B50A98, v9, 10000);
    sub_10002249C(buf);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B054();
    }

    return 111;
  }

  return v10;
}

uint64_t sub_10033F61C(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  v4 = qword_100BCE8C0;
  if (*(a1 + 328))
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v8 = v13 >= 0 ? __p : __p[0];
      *buf = 67109635;
      v15 = a4;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2081;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendConversationDetectMessage: Sending CD Message of length %u to %{private, mask.hash}s", buf, 0x1Cu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v9 = sub_10018A8D8((a2 + 128), a3, a4);
    sub_100022214(buf);
    if (v9 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B13C();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100819F0C();
    }

    v10 = sub_1000DD584(off_100B50A98, v9, 10000);
    sub_10002249C(buf);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B100();
    }

    return 111;
  }

  return v10;
}

uint64_t sub_10033F7F4(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  v4 = qword_100BCE8C0;
  if (*(a1 + 328))
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v8 = v13 >= 0 ? __p : __p[0];
      *buf = 67109635;
      v15 = a4;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2081;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendSleepDetectionUpdateMessage: Sending SDU Message of length %u to %{private, mask.hash}s", buf, 0x1Cu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v9 = sub_10018B46C((a2 + 128), a3, a4);
    sub_100022214(buf);
    if (v9 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B1E8();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100819F0C();
    }

    v10 = sub_1000DD584(off_100B50A98, v9, 10000);
    sub_10002249C(buf);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B1AC();
    }

    return 111;
  }

  return v10;
}

uint64_t sub_10033F9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = qword_100BCE8C0;
  if (*(a1 + 328))
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v6 = v12 >= 0 ? __p : __p[0];
      *buf = 134218499;
      v14 = a3;
      v15 = 2160;
      v16 = 1752392040;
      v17 = 2081;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "sendFeatureProxCardStatusUpdate: Sending prox card status bitmask 0x%02llX to %{private, mask.hash}s", buf, 0x20u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = sub_100539460(a2);
    sub_1005393CC(a2, v7 | a3);
    buf[0] = 0;
    sub_1000216B4(buf);
    v8 = sub_10018AFFC((a2 + 128), a3);
    sub_100022214(buf);
    if (v8 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B294();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100819F0C();
    }

    v9 = sub_1000DD584(off_100B50A98, v8, 10000);
    sub_10002249C(buf);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B258();
    }

    return 111;
  }

  return v9;
}

void sub_10033FB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10033FBB0(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4)
{
  v4 = qword_100BCE8C0;
  if (*(a1 + 328))
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v8 = v13 >= 0 ? __p : __p[0];
      *buf = 67109635;
      v15 = a3;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2081;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendSourceContextMessage: Sending source context message of length %u to %{private, mask.hash}s", buf, 0x1Cu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v9 = sub_10018B0C0((a2 + 128), a3, a4);
    sub_100022214(buf);
    if (v9 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B340();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100819F0C();
    }

    v10 = sub_1000DD584(off_100B50A98, v9, 10000);
    sub_10002249C(buf);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B304();
    }

    return 111;
  }

  return v10;
}

uint64_t sub_10033FD88(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4)
{
  if (*(a1 + 328))
  {
    v14[0] = 0;
    v14[1] = 0;
    sub_100007F88(v14, a1 + 360);
    if (a2)
    {
      for (i = *(a1 + 336); i != *(a1 + 344); ++i)
      {
        if (**i == a2)
        {
          v16[0] = 0;
          sub_1000216B4(v16);
          v11 = sub_10018AC6C((a2 + 128), a3, a4);
          sub_100022214(v16);
          v12 = qword_100BCE8C0;
          if (v11)
          {
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
            {
              sub_10081B3EC();
            }
          }

          else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *a4;
            *buf = 67109120;
            *&buf[4] = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "sendAdaptiveVolumeMessage: message sent of subtype %u", buf, 8u);
          }

          if (qword_100B50AA0 != -1)
          {
            sub_100819F0C();
          }

          v9 = sub_1000DD584(off_100B50A98, v11, 10000);
          sub_10002249C(v16);
          goto LABEL_13;
        }
      }
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, buf);
      sub_10081A678();
    }

    v9 = 312;
LABEL_13:
    sub_1000088CC(v14);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B3B0();
    }

    return 111;
  }

  return v9;
}

uint64_t sub_10033FFAC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4)
{
  if (*(a1 + 328))
  {
    v14[0] = 0;
    v14[1] = 0;
    sub_100007F88(v14, a1 + 360);
    if (a2)
    {
      for (i = *(a1 + 336); i != *(a1 + 344); ++i)
      {
        if (**i == a2)
        {
          v16[0] = 0;
          sub_1000216B4(v16);
          v11 = sub_10018B23C((a2 + 128), a3, a4);
          sub_100022214(v16);
          v12 = qword_100BCE8C0;
          if (v11)
          {
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
            {
              sub_10081B498();
            }
          }

          else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *a4;
            *buf = 67109120;
            *&buf[4] = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "sendPMEConfigMessage: message sent of subtype %u", buf, 8u);
          }

          if (qword_100B50AA0 != -1)
          {
            sub_100819F0C();
          }

          v9 = sub_1000DD584(off_100B50A98, v11, 10000);
          sub_10002249C(v16);
          goto LABEL_13;
        }
      }
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, buf);
      sub_10081A678();
    }

    v9 = 312;
LABEL_13:
    sub_1000088CC(v14);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B45C();
    }

    return 111;
  }

  return v9;
}

uint64_t sub_1003401D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 328))
  {
    v9[0] = 0;
    v9[1] = 0;
    sub_100007F88(v9, a1 + 360);
    if (a2)
    {
      for (i = *(a1 + 336); i != *(a1 + 344); ++i)
      {
        if (**i == a2)
        {
          LOBYTE(v8[0]) = 0;
          sub_1000216B4(v8);
          v7 = sub_10018B3B8((a2 + 128));
          sub_100022214(v8);
          if (v7 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
          {
            sub_10081B544();
          }

          if (qword_100B50AA0 != -1)
          {
            sub_100819F0C();
          }

          v5 = sub_1000DD584(off_100B50A98, v7, 10000);
          sub_10002249C(v8);
          goto LABEL_13;
        }
      }
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, v8);
      sub_10081A678();
    }

    v5 = 312;
LABEL_13:
    sub_1000088CC(v9);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B508();
    }

    return 111;
  }

  return v5;
}

void sub_100340364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100340394(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4)
{
  if (*(a1 + 328))
  {
    v13[0] = 0;
    v13[1] = 0;
    sub_100007F88(v13, a1 + 360);
    if (a2)
    {
      for (i = *(a1 + 336); i != *(a1 + 344); ++i)
      {
        if (**i == a2)
        {
          LOBYTE(v12[0]) = 0;
          sub_1000216B4(v12);
          v11 = sub_10018ADBC((a2 + 128), a3, a4);
          sub_100022214(v12);
          if (v11 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
          {
            sub_10081B5F0();
          }

          if (qword_100B50AA0 != -1)
          {
            sub_100819F0C();
          }

          v9 = sub_1000DD584(off_100B50A98, v11, 10000);
          sub_10002249C(v12);
          goto LABEL_13;
        }
      }
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, v12);
      sub_10081A678();
    }

    v9 = 312;
LABEL_13:
    sub_1000088CC(v13);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B5B4();
    }

    return 111;
  }

  return v9;
}

void sub_100340540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100340570(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  if (*(a1 + 328) != 1)
  {
    return 111;
  }

  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      if (**i == a2)
      {
        v12 = 0;
        sub_1000216B4(&v12);
        v11 = sub_10018B5BC((a2 + 128), 0, a3, a4);
        sub_100022214(&v12);
        if (qword_100B50AA0 != -1)
        {
          sub_100819F0C();
        }

        v9 = sub_1000DD584(off_100B50A98, v11, 10000);
        sub_10002249C(&v12);
        goto LABEL_9;
      }
    }
  }

  v9 = 312;
LABEL_9:
  sub_1000088CC(v13);
  return v9;
}

void sub_100340670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100340694(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  v4 = qword_100BCE8C0;
  if (*(a1 + 328))
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v8 = v13 >= 0 ? __p : __p[0];
      *buf = 67109635;
      v15 = a4;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2081;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendDynamicEndOfChargeMessage: Sending dynamic end of charge Message of length %u to %{private, mask.hash}s", buf, 0x1Cu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v9 = sub_10018B734((a2 + 128), a3, a4);
    sub_100022214(buf);
    if (v9 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B69C();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100819F0C();
    }

    v10 = sub_1000DD584(off_100B50A98, v9, 10000);
    sub_10002249C(buf);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B660();
    }

    return 111;
  }

  return v10;
}

uint64_t sub_10034086C(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  v4 = qword_100BCE8C0;
  if (*(a1 + 328))
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v8 = v13 >= 0 ? __p : __p[0];
      *buf = 67109635;
      v15 = a4;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2081;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendPersonalTranslationMessage: Sending PT Message of length %u to %{private, mask.hash}s", buf, 0x1Cu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v9 = sub_10018E964((a2 + 128), a3, a4);
    sub_100022214(buf);
    if (v9 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B748();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100819F0C();
    }

    v10 = sub_1000DD584(off_100B50A98, v9, 10000);
    sub_10002249C(buf);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B70C();
    }

    return 111;
  }

  return v10;
}

id sub_100340A44(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v3 = [NSString stringWithFormat:@"%d%c%d", (a2 >> 20) & 0xF, (HIWORD(a2) & 0xF) + 65, a2 >> 4];
  if ((v2 & 0xF) != 0)
  {
    v4 = [NSString stringWithFormat:@"%@%c", v3, v2 & 0xF | 0x60u];

    v3 = v4;
  }

  return v3;
}

void sub_100340AFC(uint64_t a1, uint64_t a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v4 = sub_1000E6554(off_100B508E8, __p, 1);
  v5 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(v4, __p);
    v6 = v11;
    v7 = __p[0];
    v8 = sub_100304810(a2);
    v9 = __p;
    if (v6 < 0)
    {
      v9 = v7;
    }

    *buf = 136315394;
    v13 = v9;
    v14 = 2080;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AACP Connection attempt by device %s, addr %s,", buf, 0x16u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10057D9B0(a1, v4, 1);
}

void sub_100340C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100340C6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *__p = *a2;
  *&__p[4] = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, __p, 1);
  v9 = qword_100BCE8C0;
  v10 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
  if (a4)
  {
    if (v10)
    {
      sub_1000C23E0(v8, __p);
      v11 = v24 >= 0 ? __p : *__p;
      *v17 = 136315394;
      *&v17[4] = v11;
      v18 = 1024;
      v19 = a4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "connection to device %s failed... reason %d", v17, 0x12u);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(*__p);
      }
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100819F0C();
    }

    v12 = sub_1000DD584(off_100B50A98, a4, 20000);
    sub_10057DA84(a1, v8, v12);
  }

  if (v10)
  {
    sub_1000C23E0(v8, v17);
    v13 = v20;
    v14 = *v17;
    v15 = sub_100304810(a2);
    v16 = v17;
    *__p = 136315906;
    if (v13 < 0)
    {
      v16 = v14;
    }

    *&__p[4] = v16;
    v22 = 2080;
    v23 = v15;
    v24 = 1024;
    v25 = a3;
    v26 = 1024;
    v27 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Connection succeeded to device %s, addr %s, mtu %d, result %d", __p, 0x22u);
    if (v20 < 0)
    {
      operator delete(*v17);
    }
  }

  sub_10057DA84(a1, v8, 0);
}

void sub_100340EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100340ECC(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  v11 = (v5 << 40) | (v6 << 32) | (v7 << 24) | (v8 << 16) | (v9 << 8) | v10;
  v12 = sub_1000504C8(off_100B508E8, v11, 1);
  if (v12)
  {
    v13 = v12;
    sub_100548A1C(v12, 0);
    v25[0] = 0;
    v25[1] = 0;
    sub_100007F88(v25, (a1 + 45));
    for (i = a1[42]; i != a1[43]; ++i)
    {
      v15 = *i;
      if (**i == v13)
      {
        goto LABEL_9;
      }
    }

    v15 = 0;
LABEL_9:
    v16 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT) && ((sub_1000C23E0(v13, __p), v24 >= 0) ? (v17 = __p) : (v17 = __p[0]), *buf = 136315394, v27 = v17, v28 = 1024, v29 = v3, _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "disconnecting %s, reason = %d", buf, 0x12u), v24 < 0))
    {
      operator delete(__p[0]);
      if (v15)
      {
LABEL_15:
        v18 = (*(*v15[96] + 176))(v15[96]);
        if (v18 == 1)
        {
          sub_10057E710(a1, v13, 0, v3);
          v18 = sub_1003411BC(a1, v15);
        }

LABEL_22:
        if (v3 == 734 || v3 == 708)
        {
          v21 = sub_100017F4C(v18, v19);
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_100341334;
          v22[3] = &unk_100AEC130;
          v22[4] = a1;
          v22[5] = v13;
          v22[6] = v11;
          sub_10008E008(v21, 5000, v22);
        }

        sub_1000088CC(v25);
        return;
      }
    }

    else if (v15)
    {
      goto LABEL_15;
    }

    v18 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      sub_1000C23E0(v13, __p);
      sub_10081B7B8();
    }

    goto LABEL_22;
  }

  v20 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081B80C(v11, v20);
  }
}

void sub_100341198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void *sub_1003411BC(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[42];
  v5 = result[43];
  v6 = v4;
  if (v4 != v5)
  {
    v7 = result[42];
    while (*v7 != a2)
    {
      ++v7;
      ++v6;
      if (v7 == v5)
      {
        v6 = result[43];
        break;
      }
    }
  }

  if (v5 != v6)
  {
    v8 = *a2;
    v9 = (v5 - (v6 + 1));
    if (v5 != v6 + 1)
    {
      memmove(v6, v6 + 1, v5 - (v6 + 1));
    }

    v3[43] = &v9[v6];
    sub_100354BD0(a2);
    sub_10034F194(v10, a2);
    sub_100350B24(v11, a2);
    if (qword_100B51308 != -1)
    {
      sub_10081B8A4();
    }

    sub_1004B4DE0(qword_100B51300, v8 + 128);
    sub_1003557D8(a2);
    operator delete();
  }

  if (v4 == v5)
  {
    if (qword_100B508F0 != -1)
    {
      sub_100819FC0();
    }

    sub_10007A3F0(off_100B508E8 + 240, (v3 + 34));
    result = v3[61];
    v3[61] = 0;
    if (result)
    {
      v12 = *(*result + 64);

      return v12();
    }
  }

  return result;
}

void sub_100341334(uint64_t *a1)
{
  if (sub_100337E54(a1[4], a1[5]))
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    v2 = sub_1007774DC(a1[6]);
    sub_100007E30(v10, [v2 UTF8String]);

    v3 = qword_100BCE8C0;
    v4 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      v6 = v10;
      if (v11 < 0)
      {
        v6 = v10[0];
      }

      *buf = 136315138;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notifying Phone/Watch of unexpected disconnection from device addr %s", buf, 0xCu);
    }

    v7 = sub_100432610(v4, v5);
    if (SHIBYTE(v11) < 0)
    {
      sub_100008904(__p, v10[0], v10[1]);
    }

    else
    {
      *__p = *v10;
      v9 = v11;
    }

    (*(*v7 + 152))(v7, __p);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_1003414A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_1003414F4(uint64_t result, uint64_t a2, int a3, __int16 a4)
{
  if (a3 == 30 && (a4 & 0x8000) == 0)
  {
    v5 = result;
    v7[0] = 0;
    v7[1] = 0;
    sub_100007F88(v7, result + 360);
    v6 = sub_100341598(v5, a2);
    if (v6)
    {
      sub_1003415E0(v6);
    }

    else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B8B8();
    }

    return sub_1000088CC(v7);
  }

  return result;
}

uint64_t *sub_100341598(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a1 + 336);
  v3 = *(a1 + 344);
  if (v2 == v3)
  {
    return 0;
  }

  while (1)
  {
    result = *v2;
    v5 = **v2;
    v6 = *(v5 + 128);
    v7 = *(v5 + 132);
    if (v6 == *a2 && v7 == *(a2 + 4))
    {
      break;
    }

    if (++v2 == v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003415E0(void *a1)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, (a1 + 55));
  v2 = a1[54];
  if (v2)
  {
    v3 = a1[53];
    v4 = v3[1];
    v5 = v3[2];
    v6 = *v3;
    *(v6 + 8) = v4;
    *v4 = v6;
    a1[54] = v2 - 1;
    operator delete(v3);
    v7 = *v5;
    if (v7 <= 0x1F)
    {
      v8 = a1[v7 + 20];
      if (v8)
      {
        if (*(v8 + 97))
        {
          v18 = 0;
          sub_1000216B4(&v18);
          v9 = sub_100189618((*a1 + 128), *v5, *(v5 + 1), v5[1]);
          sub_100022214(&v18);
          if (v9)
          {
            v10 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v23 = v9;
              _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "sendEASessionPacket: error %d", buf, 8u);
            }

            if (v5[1])
            {
              operator delete[]();
            }

            operator delete();
          }

          if (*(v5 + 1) >= 3u)
          {
            v13 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              v14 = v5[1];
              v15 = *v14;
              v16 = v14[1];
              LODWORD(v14) = v14[2];
              v17 = a1[54];
              *buf = 67109888;
              v23 = v15;
              v24 = 1024;
              v25 = v16;
              v26 = 1024;
              v27 = v14;
              v28 = 2048;
              v29 = v17;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sendEASessionPacket: Packet start %02X %02X %02X; %lu remaining", buf, 0x1Eu);
            }
          }

          if (v5[1])
          {
            operator delete[]();
          }

          operator delete();
        }
      }
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B8F4(&v19, v20);
    }

    if (v5[1])
    {
      operator delete[]();
    }

    operator delete();
  }

  v11 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "sendEASessionPacket: No more packets to send", buf, 2u);
  }

  return sub_1000088CC(v21);
}

void sub_1003418C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1003418F4(uint64_t a1, _DWORD *a2, _BYTE *a3)
{
  v4 = sub_1003360F8(a1, a2);
  v5 = qword_100BCE8C0;
  v6 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *a3;
      v8[0] = 67109120;
      v8[1] = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GAPA device remove all %d AACP capabilities", v8, 8u);
    }

    *a3 = 0;
  }

  else if (v6)
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GAPA device remove limited AACP capabilities", v8, 2u);
  }
}

uint64_t sub_1003419E4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v52 = a3;
  v51[0] = 0;
  v51[1] = 0;
  sub_100007F88(v51, a1 + 360);
  if (qword_100B508F0 != -1)
  {
    sub_10081A4E4();
  }

  *v53 = *a2;
  *&v53[4] = *(a2 + 4);
  v7 = sub_1000E6554(off_100B508E8, v53, 1);
  v8 = sub_100341598(a1, a2);
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = v8;
    v11 = sub_1000E31D0(v7);
    if ((v11 & 2) != 0)
    {
      sub_1003418F4(v11, v7, &v52);
    }

    v12 = qword_100BCE8C0;
    v13 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      sub_1000E5A58(v7, v53);
      if (v58 >= 0)
      {
        v15 = v53;
      }

      else
      {
        v15 = *v53;
      }

      v16 = v52;
      *buf = 136446466;
      v60 = v15;
      v61 = 1024;
      v62 = v52;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "capabilitiesResponseEvent: device %{public}s response: numCaps = %d", buf, 0x12u);
      if (v58 < 0)
      {
        operator delete(*v53);
      }
    }

    else
    {
      v16 = v52;
    }

    v48 = v10;
    if (v16)
    {
      v17 = 0;
      v18 = 0;
      v19 = v16;
      v20 = (a4 + 1);
      while (1)
      {
        v21 = *(v20 - 1);
        if (v21 <= 0x7F)
        {
          switch(*(v20 - 1))
          {
            case 1:
            case 2:
              v22 = *v20;
              goto LABEL_37;
            case 4:
              v22 = *v20;
              goto LABEL_37;
            case 5:
            case 6:
            case 7:
            case 0x30:
              v22 = *v20;
              goto LABEL_36;
            case 8:
              v22 = *v20;
              if (*v20)
              {
                *(v48 + 152) = 1;
              }

              goto LABEL_30;
            case 9:
            case 0xC:
            case 0xF:
            case 0x11:
            case 0x12:
            case 0x14:
            case 0x40:
              v22 = *v20;
              goto LABEL_30;
            case 0xA:
              v22 = *v20;
              if (v22)
              {
                if (qword_100B50AE0 != -1)
                {
                  sub_10081A23C();
                }

                sub_1004DB8A8(qword_100B50AD8, v7, 1);
              }

              goto LABEL_30;
            case 0xB:
              v22 = *v20;
              if (v22)
              {
                v33 = sub_1000D999C(v13, v14);
                v50[0] = _NSConcreteStackBlock;
                v50[1] = 3221225472;
                v50[2] = sub_1003424AC;
                v50[3] = &unk_100ADF8F8;
                v50[4] = v7;
                sub_10000CA94(v33, v50);
              }

              goto LABEL_30;
            case 0xD:
              v22 = *v20;
              if (v22)
              {
                v37 = sub_1000D999C(v13, v14);
                v49[0] = _NSConcreteStackBlock;
                v49[1] = 3221225472;
                v49[2] = sub_100342504;
                v49[3] = &unk_100ADF8F8;
                v49[4] = v7;
                sub_10000CA94(v37, v49);
              }

              goto LABEL_30;
            case 0x10:
              v22 = *v20;
              if (*v20)
              {
                v30 = qword_100BCE8C0;
                if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
                {
                  sub_1000E5A58(v7, v53);
                  v31 = v58 >= 0 ? v53 : *v53;
                  *buf = 136446210;
                  v60 = v31;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "capabilitiesResponseEvent: Requested case information from device %{public}s", buf, 0xCu);
                  if (v58 < 0)
                  {
                    operator delete(*v53);
                  }
                }

                sub_100339640(a1, v7);
              }

              v18 = 1;
              goto LABEL_30;
            case 0x13:
              v22 = *v20;
              v35 = _os_feature_enabled_impl();
              if (v22 == 1)
              {
                v36 = v35;
              }

              else
              {
                v36 = 0;
              }

              if (v36 == 1)
              {
                if (sub_1000E3218(v7, 0x13u))
                {
                  v22 = 1;
                }

                else
                {
                  v42 = sub_10054964C(v7);
                  v22 = 1;
                  sub_100331844(a1, v7, 52, v42, 1);
                }
              }

              goto LABEL_36;
            case 0x15:
            case 0x16:
            case 0x17:
            case 0x18:
            case 0x23:
            case 0x24:
            case 0x26:
            case 0x28:
            case 0x29:
            case 0x31:
            case 0x32:
            case 0x33:
            case 0x34:
            case 0x60:
              goto LABEL_20;
            case 0x20:
              v22 = *v20;
              if (v22)
              {
                if (qword_100B50AE0 != -1)
                {
                  sub_10081A23C();
                }

                sub_1004DB94C(qword_100B50AD8, v7, 1);
              }

              goto LABEL_30;
            case 0x21:
              if (!_os_feature_enabled_impl())
              {
                goto LABEL_82;
              }

              v22 = *v20;
              if (*v20 && !sub_1000E3218(v7, 0x21u))
              {
                v34 = sub_10054991C(v7);
                sub_100331844(a1, v7, 53, v34, 1);
              }

              goto LABEL_36;
            case 0x22:
              v22 = *v20;
              if (_os_feature_enabled_impl())
              {
                if (qword_100B540B0 != -1)
                {
                  sub_10081B958();
                }

                sub_1006C0CE0(qword_100B540A8, v7, v22 == 1);
              }

              goto LABEL_36;
            case 0x25:
              v22 = *v20;
              v32 = sub_10000C798(v13, v14);
              if ((*(*v32 + 464))(v32))
              {
                if (qword_100B50AD0 != -1)
                {
                  sub_10081B930();
                }

                sub_1005D3414(off_100B50AC8, v7, v22 != 0);
              }

              goto LABEL_36;
            case 0x50:
              v22 = *v20;
              if (v22 == 2)
              {
                if (qword_100B50AE0 != -1)
                {
                  sub_10081A23C();
                }

                sub_1004DBBB4(qword_100B50AD8, v7, 1);
                v22 = 2;
              }

              goto LABEL_30;
            default:
              goto LABEL_51;
          }
        }

        if (*(v20 - 1) > 0xBFu)
        {
          break;
        }

        if (*(v20 - 1) > 0x9Fu)
        {
          if (v21 != 160)
          {
            if (v21 != 176)
            {
              goto LABEL_51;
            }

            v22 = *v20;
            if (v22 == 1)
            {
              *buf = 4;
              if (qword_100B50AE0 != -1)
              {
                sub_10081A23C();
              }

              sub_1004DBA04(qword_100B50AD8, v7, buf);
              v25 = qword_100BCE8C0;
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
              {
                *v53 = 67109120;
                *&v53[4] = *buf;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "capabilitiesResponseEvent: supportedListening modes: %u", v53, 8u);
              }

              v26 = *(v20 - 1);
            }

            else
            {
              v26 = 176;
            }

            sub_100548E00(v7, v26, v22 != 0);
LABEL_36:
            sub_100549080(v7, *(v20 - 1), v22);
            goto LABEL_37;
          }

          v22 = *v20;
          if (*v20 && v22 != 3)
          {
            if (qword_100B50AE0 != -1)
            {
              sub_10081A23C();
            }

            sub_1004DB998(qword_100B50AD8, v7, 1);
          }
        }

        else if (v21 == 128)
        {
          v22 = *v20;
          if (v22)
          {
            v38 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v7, v53);
              v39 = v53;
              if (v58 < 0)
              {
                v39 = *v53;
              }

              *buf = 136446210;
              v60 = v39;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "capabilitiesResponseEvent: Setting double click & click and hold intervals for device %{public}s", buf, 0xCu);
              if (v58 < 0)
              {
                operator delete(*v53);
              }
            }

            if (!sub_1000E2140(v7, 0x1Du) && !sub_1000E2140(v7, 0x2Bu))
            {
              v40 = sub_100549334(v7);
              sub_100331844(a1, v7, 23, v40, 1);
            }

            if (!sub_1000E2140(v7, 0x1Eu) && !sub_1000E2140(v7, 0x2Bu))
            {
              v41 = sub_10054937C(v7);
              sub_100331844(a1, v7, 24, v41, 1);
            }
          }
        }

        else
        {
          if (v21 != 144)
          {
            goto LABEL_51;
          }

          v22 = *v20;
          if (v22)
          {
            if (qword_100B50AE0 != -1)
            {
              sub_10081A23C();
            }

            sub_1004DBAD8(qword_100B50AD8, v7, 1);
          }
        }

LABEL_30:
        sub_100548E00(v7, *(v20 - 1), v22 != 0);
LABEL_37:
        v23 = qword_100BCE8C0;
        v13 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          v24 = *(v20 - 1);
          *v53 = 67109632;
          *&v53[4] = v17;
          v54 = 1024;
          v55 = v24;
          v56 = 1024;
          v57 = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "capabilitiesResponseEvent: index %d, capId %d, capInfo %d", v53, 0x14u);
        }

        ++v17;
        v20 = (v20 + 5);
        if (v17 >= v19)
        {
          goto LABEL_126;
        }
      }

      if (*(v20 - 1) > 0xDFu)
      {
        if (v21 != 224 && v21 != 240)
        {
LABEL_51:
          v27 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v7, v53);
            v28 = v53;
            if (v58 < 0)
            {
              v28 = *v53;
            }

            v29 = *(v20 - 1);
            *buf = 136446466;
            v60 = v28;
            v61 = 1024;
            v62 = v29;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Warning: capabilitiesResponseEvent: device %{public}s unexpected response capId = %d", buf, 0x12u);
            if (v58 < 0)
            {
              operator delete(*v53);
            }
          }

LABEL_82:
          v22 = 0;
          goto LABEL_37;
        }

LABEL_20:
        v22 = *v20;
      }

      else if (v21 == 192)
      {
        v22 = *v20;
        sub_100548E00(v7, 192, *v20 != 0);
      }

      else
      {
        if (v21 != 208)
        {
          goto LABEL_51;
        }

        v22 = *v20;
        sub_100548E00(v7, 208, *v20 != 0);
      }

      goto LABEL_36;
    }

    v18 = 0;
LABEL_126:
    sub_10034255C(v13, v7);
    if ((v18 & 1) == 0)
    {
      if (sub_1000E356C(v7))
      {
        v43 = 0xFFFFLL;
      }

      else
      {
        v43 = 65533;
      }

      sub_1003393C0(a1, v7, 0xFFFFLL, v43);
    }

    v44 = *(v48 + 604);
    v45 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      if (v44)
      {
        v46 = (v44 >> 1) & 1;
      }

      else
      {
        v46 = 0;
      }

      *v53 = 67109376;
      *&v53[4] = v46;
      v54 = 1024;
      v55 = v44 & 1;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "GAPA capabilitiesResponseEvent newlyPaired=%d invokeNow=%d", v53, 0xEu);
    }

    if (v44)
    {
      *(v48 + 604) = 0;
      sub_1003427B8(a1, v48, 1, (v44 >> 1) & 1);
    }
  }

  return sub_1000088CC(v51);
}

void sub_100342470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003424AC(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10081B980();
  }

  v2 = off_100B50AC8;
  v3 = *(a1 + 32);

  return sub_1005D345C(v2, v3, 1);
}

uint64_t sub_100342504(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10081B980();
  }

  v2 = off_100B50AC8;
  v3 = *(a1 + 32);

  return sub_1005D34E8(v2, v3, 1);
}

uint64_t sub_10034255C(uint64_t a1, uint64_t a2)
{
  sub_100548D28(a2);
  if (qword_100B508E0 != -1)
  {
    sub_10081B994();
  }

  sub_10051A00C(off_100B508D8, a2);
  result = sub_1000E012C(a2, 0x40u);
  if (result)
  {
    v4 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting up spatial audio", __p, 2u);
    }

    if (qword_100B50AE0 != -1)
    {
      sub_10081A23C();
    }

    sub_1004DBC20(qword_100B50AD8, a2, 1);
    v14 = 0;
    if (qword_100B508F0 != -1)
    {
      sub_10081A4E4();
    }

    result = sub_1000BE6E8(off_100B508E8);
    if (result)
    {
      v6 = sub_1000BE4B4(result, v5);
      result = (*(*v6 + 1224))(v6, a2, &v14);
      if (result)
      {
        v7 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, __p);
          if (v13 >= 0)
          {
            v8 = __p;
          }

          else
          {
            v8 = __p[0];
          }

          *buf = 136446210;
          v16 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Initialize spatial audio to true for %{public}s", buf, 0xCu);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }
        }

        CFPreferencesSetAppValue(@"spatial-audio-accessory-feature", kCFBooleanTrue, @"com.apple.springboard");
        v9 = CFPreferencesAppSynchronize(@"com.apple.springboard");
        v11 = *sub_1000BE4B4(v9, v10);
        return (*(v11 + 1232))();
      }
    }
  }

  return result;
}

void sub_1003427B8(_BOOL8 a1, uint64_t a2, int a3, int a4)
{
  if (!a2)
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081BCD8();
    }

    return;
  }

  v5 = *(a2 + 80) - 8194;
  v6 = v5 > 0xE;
  v7 = (1 << v5) & 0x409B;
  if (!v6 && v7 != 0)
  {
    return;
  }

  v78 = *a2;
  if (!*a2)
  {
    return;
  }

  v10 = a1;
  if (!*(a2 + 128))
  {
    sub_1000BE6F8((v78 + 128), keys);
    if (SHIBYTE(keys[2]) >= 0)
    {
      v16 = keys;
    }

    else
    {
      v16 = keys[0];
    }

    v17 = CFStringCreateWithCString(kCFAllocatorDefault, v16, 0x8000100u);
    if (SHIBYTE(keys[2]) < 0)
    {
      operator delete(keys[0]);
    }

    if (!v17)
    {
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_10081BC3C();
      }

      return;
    }

    Connection = acc_transportClient_createConnection();
    if (!Connection)
    {
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_10081BBA0();
      }

      CFRelease(v17);
      return;
    }

    *(a2 + 128) = Connection;
    CFRelease(v17);
  }

  if (*(a2 + 152) == 1)
  {
    v11 = 0;
    while (1)
    {
      v12 = *(a2 + 160 + v11);
      if (v12)
      {
        if (*(v12 + 24))
        {
          break;
        }
      }

      v11 += 8;
      if (v11 == 256)
      {
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
        {
          sub_10081B9A8();
        }

        break;
      }
    }

    v99 = _NSConcreteStackBlock;
    v100 = 3221225472;
    v101 = sub_10034F55C;
    v102 = &unk_100AEC180;
    v103 = v10;
    v104 = v78;
    Endpoint = acc_transportClient_createEndpoint();
    v14 = qword_100BCE8C0;
    if (Endpoint)
    {
      a1 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
      if (a1)
      {
        sub_1000E5A58(v78, keys);
        v15 = SHIBYTE(keys[2]) >= 0 ? keys : keys[0];
        *buf = 136446466;
        *&buf[4] = v15;
        *&buf[12] = 2112;
        *&buf[14] = Endpoint;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware: device %{public}s endpoint = %@", buf, 0x16u);
        if (SHIBYTE(keys[2]) < 0)
        {
          operator delete(keys[0]);
        }
      }

      *(a2 + 136) = Endpoint;
      *(a2 + 152) = 0;
    }

    else
    {
      a1 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        sub_10081B9E4();
      }
    }
  }

  v19 = 0;
  v84 = kCFACCInfo_Name;
  v83 = kCFACCInfo_Manufacturer;
  v81 = kCFACCInfo_SerialNumber;
  v82 = kCFACCInfo_Model;
  v79 = kCFACCInfo_FirmwareVersionActive;
  v80 = kCFACCInfo_HardwareVersion;
  v20 = kCFACCInfo_FirmwareVersionPending;
  while (1)
  {
    v21 = *(a2 + 8 * v19 + 160);
    if (v21)
    {
      if (!v21[11])
      {
        break;
      }
    }

LABEL_49:
    if (++v19 == 32)
    {
      if (!a3)
      {
        return;
      }

      v34 = *(a2 + 192);
      if (v34)
      {
        if (*(v34 + 88))
        {
          v35 = sub_10000C798(a1, a2);
          v36 = (*(*v35 + 352))(v35);
          if (v36 & 1) != 0 || (v38 = sub_10000C798(v36, v37), v39 = (*(*v38 + 416))(v38), (v39) || (v41 = sub_10000C798(v39, v40), (*(*v41 + 456))(v41)))
          {
            *buf = 0;
            v42 = acc_transportClient_createEndpoint();
            v43 = objc_opt_new();
            v44 = *(v34 + 64);
            v86 = *(v34 + 72);
            v85 = *(v34 + 24);
            if ([v44 length] >= 2)
            {
              v45 = qword_100BCE8C0;
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(keys[0]) = 141558275;
                *(keys + 4) = 1752392040;
                WORD2(keys[1]) = 2113;
                *(&keys[1] + 6) = v44;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware: Left bud serial %{private, mask.hash}@", keys, 0x16u);
              }

              v46 = [NSNumber numberWithInt:2];
              v47 = [NSDictionary dictionaryWithObjectsAndKeys:v46, kCFACCProperties_Endpoint_AACP_CertificateInfo_Type, v44, kCFACCProperties_Endpoint_AACP_CertificateInfo_Serial, 0];
              [v43 addObject:v47];
            }

            if ([v86 length] >= 2)
            {
              v48 = qword_100BCE8C0;
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(keys[0]) = 141558275;
                *(keys + 4) = 1752392040;
                WORD2(keys[1]) = 2113;
                *(&keys[1] + 6) = v86;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware: Right bud serial %{private, mask.hash}@", keys, 0x16u);
              }

              v49 = [NSNumber numberWithInt:3];
              v50 = [NSDictionary dictionaryWithObjectsAndKeys:v49, kCFACCProperties_Endpoint_AACP_CertificateInfo_Type, v86, kCFACCProperties_Endpoint_AACP_CertificateInfo_Serial, 0];
              [v43 addObject:v50];
            }

            if (![v43 count] && objc_msgSend(v85, "length") >= 2)
            {
              v51 = qword_100BCE8C0;
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(keys[0]) = 141558275;
                *(keys + 4) = 1752392040;
                WORD2(keys[1]) = 2113;
                *(&keys[1] + 6) = v85;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware: Single tethered serial %{private, mask.hash}@", keys, 0x16u);
              }

              v52 = [NSNumber numberWithInt:1];
              v53 = [NSDictionary dictionaryWithObjectsAndKeys:v52, kCFACCProperties_Endpoint_AACP_CertificateInfo_Type, v85, kCFACCProperties_Endpoint_AACP_CertificateInfo_Serial, 0];
              [v43 addObject:v53];

              *buf = 1;
            }

            v54 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(keys[0]) = 141558275;
              *(keys + 4) = 1752392040;
              WORD2(keys[1]) = 2113;
              *(&keys[1] + 6) = v43;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware: Dictionary %{private, mask.hash}@", keys, 0x16u);
            }

            if (v42)
            {
              v55 = [v43 count];
              v56 = qword_100BCE8C0;
              if (v55)
              {
                if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
                {
                  v57 = *(a2 + 128);
                  LODWORD(keys[0]) = 138543618;
                  *(keys + 4) = v42;
                  WORD2(keys[1]) = 2114;
                  *(&keys[1] + 6) = v57;
                  _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware: Creating certificate endpoint %{public}@ for %{public}@", keys, 0x16u);
                }

                *(a2 + 144) = v42;
                *valuePtr = sub_1000E012C(v78, 9u);
                v58 = sub_10000E92C();
                if ((*(*v58 + 760))(v58))
                {
                  *valuePtr = 0;
                }

                v59 = qword_100BCE8C0;
                if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(keys[0]) = 67109120;
                  HIDWORD(keys[0]) = *valuePtr;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware: isCertificateSupported %d", keys, 8u);
                }

                v60 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, valuePtr);
                acc_transportClient_setPropertyForEndpointWithUUID();
                *__p = a4;
                v61 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, __p);
                acc_transportClient_setPropertyForEndpointWithUUID();
                acc_transportClient_setPropertyForEndpointWithUUID();
                v62 = sub_1003374B4(v10, v78, a2, *valuePtr != 0);
                if (v62)
                {
                  *(a2 + 600) = 1;
                  v64 = sub_10000F034(v62, v63);
                  LODWORD(keys[0]) = *(v78 + 128);
                  WORD2(keys[0]) = *(v78 + 132);
                  (*(*v64 + 392))(v64, keys, 1, 0);
                  v88 = 3;
                  if (qword_100B50950 != -1)
                  {
                    sub_10081A480();
                  }

                  sub_10033C47C(off_100B50948, v78, &v88);
                  v65 = *buf;
                  if (!*buf)
                  {
                    if (v88 == 1)
                    {
                      v65 = 2;
                    }

                    else
                    {
                      v65 = 3;
                    }

                    *buf = v65;
                  }

                  v66 = qword_100BCE8C0;
                  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(keys[0]) = 67109120;
                    HIDWORD(keys[0]) = v65;
                    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware GAPA_AUTH_SUPPORTED for this connection certificateInfoType=%d", keys, 8u);
                  }

                  Mutable = CFArrayCreateMutable(0, 0, 0);
                  v68 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buf);
                  CFArrayAppendValue(Mutable, v68);
                  acc_transportClient_setPropertyForEndpointWithUUID();
                  CFRelease(v68);
                  CFArrayRemoveAllValues(Mutable);
                  CFRelease(Mutable);
                }

                acc_transportClient_setEndpointPropertyDidChangeHandler();
                acc_transportClient_setEndpointPropertyDidChangeHandler();
                acc_transportClient_setEndpointPropertyDidChangeHandler();
                CFRelease(v60);
                CFRelease(v61);
              }

              else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
              {
                sub_1000E5A58(v78, keys);
                sub_10081BA80();
              }

              CFRelease(v42);
            }

            else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
            {
              sub_1000E5A58(v78, keys);
              sub_10081BAD4();
            }
          }

          acc_transportClient_setPropertyForConnectionWithUUID();
          v72 = acc_transportClient_publishConnection();
          v73 = qword_100BCE8C0;
          if (v72)
          {
            if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            sub_1000E5A58(v78, buf);
            if ((buf[23] & 0x80u) == 0)
            {
              v74 = buf;
            }

            else
            {
              v74 = *buf;
            }

            v75 = *(a2 + 128);
            *valuePtr = 136446466;
            *&valuePtr[4] = v74;
            v110 = 2112;
            *v111 = v75;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware: Published connection for device %{public}s, connection %@", valuePtr, 0x16u);
LABEL_118:
            if ((buf[23] & 0x80000000) == 0)
            {
              return;
            }

            v71 = *buf;
LABEL_120:
            operator delete(v71);
            return;
          }

          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
          {
            sub_1000E5A58(v78, buf);
            if ((buf[23] & 0x80u) == 0)
            {
              v76 = buf;
            }

            else
            {
              v76 = *buf;
            }

            v77 = *(a2 + 128);
            *valuePtr = 136446466;
            *&valuePtr[4] = v76;
            v110 = 2112;
            *v111 = v77;
            _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "publishAccRemoteFirmware: Failed to publish connection for device %{public}s, connection %@", valuePtr, 0x16u);
            goto LABEL_118;
          }
        }

        else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
        {
          sub_10081BB28();
        }
      }

      else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_10081BB64();
      }

      return;
    }
  }

  v119 = 0;
  v118 = 0u;
  memset(keys, 0, sizeof(keys));
  v116 = 0;
  v115 = 0u;
  memset(buf, 0, sizeof(buf));
  v94 = _NSConcreteStackBlock;
  v95 = 3221225472;
  v96 = sub_10034F77C;
  v97 = &unk_100AEC1A0;
  v98 = v10;
  v22 = acc_transportClient_createEndpoint();
  if (v22)
  {
    v89 = _NSConcreteStackBlock;
    v90 = 3221225472;
    v91 = sub_10034FCE4;
    v92 = &unk_100AEC1C0;
    v93 = v10;
    acc_transportClient_setEndpointPropertyDidChangeHandler();
    v21[11] = v22;
    keys[0] = v84;
    keys[1] = v83;
    keys[2] = v82;
    keys[3] = v81;
    *&v118 = v80;
    *(&v118 + 1) = v79;
    v119 = v20;
    v23 = v21[2];
    v24 = v21[3];
    *buf = *v21;
    *&buf[8] = v23;
    *&buf[16] = v21[1];
    *&buf[24] = v24;
    *(&v115 + 1) = v21[10];
    v25 = v21[5];
    *&v115 = v21[6];
    Length = CFStringGetLength(v25);
    v27 = 5;
    if (!Length)
    {
      v27 = 4;
    }

    v116 = v21[v27];
    v28 = CFDictionaryCreate(kCFAllocatorDefault, keys, buf, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    acc_transportClient_setAccessoryInfo();
    v29 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, v21 + 12);
    acc_transportClient_setPropertyForEndpointWithUUID();
    v30 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v78, __p);
      v31 = __p;
      if (v108 < 0)
      {
        v31 = *__p;
      }

      v32 = *(a2 + 128);
      v33 = v21[11];
      *valuePtr = 136446978;
      *&valuePtr[4] = v31;
      v110 = 1024;
      *v111 = v19;
      *&v111[4] = 2112;
      *&v111[6] = v32;
      v112 = 2112;
      v113 = v33;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware: Created EA endpoint for device %{public}s (index %d), connection %@, endpoint %@", valuePtr, 0x26u);
      if (v108 < 0)
      {
        operator delete(*__p);
      }
    }

    CFRelease(v28);
    CFRelease(v29);
    goto LABEL_49;
  }

  v69 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(v78, valuePtr);
    v70 = v111[9] >= 0 ? valuePtr : *valuePtr;
    *__p = 136446466;
    *&__p[4] = v70;
    v106 = 1024;
    v107 = v19;
    _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "publishAccRemoteFirmware: Failed to create CoreAccessories EA endpoint for device %{public}s (index %d)", __p, 0x12u);
    if ((v111[9] & 0x80000000) != 0)
    {
      v71 = *valuePtr;
      goto LABEL_120;
    }
  }
}

void sub_10034398C(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, __p, 1);
  if (v8)
  {
    v19[0] = 0;
    v19[1] = 0;
    sub_100007F88(v19, a1 + 360);
    v9 = *(a1 + 336);
    v10 = *(a1 + 344);
    while (v9 != v10)
    {
      v11 = *v9;
      if (**v9 == v8)
      {
        v12 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000C23E0(v8, __p);
          v13 = v18 >= 0 ? __p : __p[0];
          *buf = 136315394;
          v21 = v13;
          v22 = 1024;
          v23 = a3;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "received battery info from device %s num reports = %d", buf, 0x12u);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (a3)
        {
          v14 = a3;
          v15 = a4;
          do
          {
            v16 = v15[3] - 5;
            if (v16 >= 0xFFFFFFFE)
            {
              sub_100343C20(v11, *v15);
            }

            sub_100343E00(v11, v15, v16 < 0xFFFFFFFE);
            v15 += 5;
            --v14;
          }

          while (v14);
        }

        if (_os_feature_enabled_impl())
        {
          if (qword_100B508E0 != -1)
          {
            sub_10081A1D8();
          }

          sub_100514C5C(off_100B508D8, 7, v8, 5 * a3, a4);
        }

        goto LABEL_27;
      }

      ++v9;
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081BD14();
    }

LABEL_27:
    sub_1000088CC(v19);
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081BD50();
  }
}

void sub_100343BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100343C20(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_100355A20(v2, __p);
    v5 = v18 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "destroy battery info %{public}s", buf, 0xCu);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *(a1 + 32);
  v7 = a1 + 32;
  v6 = v8;
  if (v8)
  {
    v9 = (v7 - 8);
    v10 = v7;
    do
    {
      v11 = *(v6 + 32);
      v12 = v11 >= v2;
      v13 = v11 < v2;
      if (v12)
      {
        v10 = v6;
      }

      v6 = *(v6 + 8 * v13);
    }

    while (v6);
    if (v10 != v7 && *(v10 + 32) <= v2)
    {
      v14 = *(v10 + 40);
      if (v14)
      {
        v15 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          sub_100355A20(v2, __p);
          if (v18 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          *buf = 136315138;
          v20 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "battery instance for %s found. Destroying...", buf, 0xCu);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }

        (*(*v14 + 8))(v14);
      }

      sub_10002717C(v9, v10);
      operator delete(v10);
    }
  }
}

uint64_t sub_100343E00(uint64_t *a1, char *a2, int a3)
{
  v6 = a1[4];
  v7 = a1 + 3;
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = *a2;
  v9 = a1 + 4;
  do
  {
    v10 = *(v6 + 32);
    v11 = v10 >= v8;
    v12 = v10 < v8;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * v12);
  }

  while (v6);
  if (v9 == a1 + 4 || v8 < *(v9 + 32))
  {
LABEL_9:
    v13 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_100355A20(*a2, __p);
      if (v59 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      v15 = a2[2];
      v16 = a2[3];
      if (v16 == 1)
      {
        v17 = "Yes";
      }

      else
      {
        v17 = "No";
      }

      if (a2[3])
      {
        v18 = "No";
      }

      else
      {
        v18 = "Yes";
      }

      *buf = 136447490;
      if (v16 == 5)
      {
        v19 = "Yes";
      }

      else
      {
        v19 = "No";
      }

      *&buf[4] = v14;
      *&buf[12] = 1024;
      if (v16 == 6)
      {
        v20 = "Yes";
      }

      else
      {
        v20 = "No";
      }

      *&buf[14] = v15;
      *&buf[18] = 2082;
      *&buf[20] = v17;
      v61 = 2082;
      v62 = v18;
      v63 = 2080;
      v64 = v19;
      v65 = 2080;
      v66 = v20;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Create Battery for %{public}s battery, battery level %d, charging = %{public}s fully charged = %{public}s DEOC charging = %s OBC charging = %s", buf, 0x3Au);
      if (v59 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_1004328AC(*a1);
  }

  v21 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_100355A20(v8, __p);
    v22 = v59 >= 0 ? __p : __p[0];
    v23 = a2[2];
    v24 = a2[3];
    v25 = v24 == 1 ? "Yes" : "No";
    v26 = a2[3] ? "No" : "Yes";
    *buf = 136447490;
    v27 = v24 == 5 ? "Yes" : "No";
    *&buf[4] = v22;
    *&buf[12] = 1024;
    v28 = v24 == 6 ? "Yes" : "No";
    *&buf[14] = v23;
    *&buf[18] = 2080;
    *&buf[20] = v25;
    v61 = 2082;
    v62 = v26;
    v63 = 2080;
    v64 = v27;
    v65 = 2080;
    v66 = v28;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Update Battery for %{public}s battery, battery level %d, charging = %s fully charged = %{public}s DEOC charging = %s OBC charging = %s", buf, 0x3Au);
    if (v59 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v29 = v9[5];
  if (!v29)
  {
    v32 = 0;
    goto LABEL_87;
  }

  (*(*v29 + 48))(v9[5], a2[2]);
  v30 = a2[3];
  if (v30 > 6)
  {
    v31 = 0;
  }

  else
  {
    v31 = dword_1008A5FA0[v30];
  }

  (*(*v29 + 64))(v29, v31);
  sub_100355A54(a1, *a2, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    v33 = *&buf[8];
    operator delete(*buf);
    if (!v33)
    {
      goto LABEL_59;
    }
  }

  else if (!buf[23])
  {
    goto LABEL_59;
  }

  *buf = a2;
  v34 = sub_100361F0C(v7, a2, &unk_1008A9BD0, buf)[5];
  sub_100355A54(a1, *a2, buf);
  (*(*v34 + 72))(v34, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

LABEL_59:
  v32 = 0;
  v35 = a2[3];
  if (v35 >= 7)
  {
    v36 = 0;
  }

  else
  {
    v36 = 0x4050000020103uLL >> (8 * v35);
  }

  v37 = *a2;
  if (*a2 <= 3u)
  {
    if (v37 == 1)
    {
      v47 = sub_10053F8E4(*a1, 1);
      v48 = a2[2];
      v40 = v47 != v48;
      if (v47 != v48)
      {
        sub_100540560(*a1, v48, 1);
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    if (v37 == 2)
    {
      v41 = sub_10053F8E4(*a1, 2);
      v42 = a2[2];
      v40 = v41 != v42;
      if (v41 != v42)
      {
        sub_100540560(*a1, v42, 2);
        goto LABEL_78;
      }

LABEL_79:
      v32 = v40 | sub_1005406CC(*a1, v36, v37);
    }
  }

  else
  {
    switch(v37)
    {
      case 4:
        v43 = sub_10053F8E4(*a1, 4);
        v44 = a2[2];
        v40 = v43 != v44;
        if (v43 != v44)
        {
          sub_100540560(*a1, v44, 4);
          goto LABEL_78;
        }

        goto LABEL_79;
      case 8:
        v45 = sub_10053F8E4(*a1, 8);
        v46 = a2[2];
        v40 = v45 != v46;
        if (v45 != v46)
        {
          sub_100540560(*a1, v46, 8);
          goto LABEL_78;
        }

        goto LABEL_79;
      case 0x10:
        v38 = sub_10053F8E4(*a1, 16);
        v39 = a2[2];
        v40 = v38 != v39;
        if (v38 != v39)
        {
          sub_100540560(*a1, v39, 16);
LABEL_78:
          v40 = 1;
          goto LABEL_79;
        }

        goto LABEL_79;
    }
  }

  LODWORD(__p[0]) = 0;
  v57 = 0;
  v56 = 0;
  sub_1000C2364(*a1, __p, &v57 + 1, &v57, &v56);
  v49 = [CBProductInfo productInfoWithProductID:v57];
  if (([v49 flags] & 0x100000) != 0 && HIDWORD(v57) == 76)
  {
    v50 = *a2 == 8;

    v32 = !v50 & v32;
  }

  else
  {

    v50 = 0;
  }

  if (((_os_feature_enabled_impl() | v50) & 1) == 0)
  {
    if (a3)
    {
      sub_100355B3C(a1, *a2, buf);
      (*(*v29 + 24))(v29, buf);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

LABEL_87:
  memset(buf, 0, 24);
  v51 = a2[3];
  v52 = sub_100579608(buf, 3, 0);
  *&buf[16] = v51;
  v54 = sub_10000F034(v52, v53);
  (*(*v54 + 56))(v54, buf);
  return v32;
}

void sub_1003447F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100344840(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  v6 = sub_1000E6554(off_100B508E8, buf, 1);
  if (v6)
  {
    v30[0] = 0;
    v30[1] = 0;
    sub_100007F88(v30, a1 + 360);
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      v8 = *i;
      if (**i == v6)
      {
        v9 = sub_1000E356C(v6);
        if (v9)
        {
          v10 = sub_10033C45C(v9, *a3);
          v11 = v10;
          v12 = sub_10033C45C(v10, a3[1]);
          v13 = v8[10];
          if (v13 == 1)
          {
            v14 = 2;
          }

          else
          {
            v14 = 1;
          }

          v15 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v6, __p);
            v16 = *__p;
            v17 = off_100AED320[v11];
            if (v32 >= 0)
            {
              v16 = __p;
            }

            v18 = off_100AED320[v12];
            *buf = 136446722;
            *&buf[4] = v16;
            *&buf[12] = 2082;
            *&buf[14] = v17;
            *&buf[22] = 2082;
            v34 = v18;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "received in-ear state update from device %{public}s primary bud state = %{public}s, secondary bud state = %{public}s", buf, 0x20u);
            if (v32 < 0)
            {
              operator delete(*__p);
            }
          }

          v19 = v8[8];
          v20 = v11 != v19;
          if (v11 != v19)
          {
            v8[8] = v11;
            memset(buf, 0, sizeof(buf));
            v21 = sub_100579608(buf, 2, v6);
            *&buf[16] = v13;
            *&buf[20] = v11;
            v23 = sub_10000F034(v21, v22);
            (*(*v23 + 56))(v23, buf);
          }

          if (v12 != v8[9])
          {
            v8[9] = v12;
            memset(buf, 0, sizeof(buf));
            v24 = sub_100579608(buf, 2, v6);
            *&buf[16] = v14;
            *&buf[20] = v12;
            v26 = sub_10000F034(v24, v25);
            (*(*v26 + 56))(v26, buf);
            v20 = 1;
          }

          sub_10000801C(v30);
          if (v20)
          {
            sub_10033BBAC(v27, v6);
          }
        }

        else
        {
          v28 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v6, buf);
            v29 = (buf[23] & 0x80u) == 0 ? buf : *buf;
            *__p = 136446210;
            *&__p[4] = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Ignoring in-ear status update from device %{public}s that's disabled for tracking in-ear detection", __p, 0xCu);
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }
        }

        goto LABEL_10;
      }
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081BDF0();
    }

LABEL_10:
    sub_1000088CC(v30);
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081BE2C();
  }
}

void sub_100344BD8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  v6 = sub_1000E6554(off_100B508E8, buf, 1);
  if (v6)
  {
    v57[0] = 0;
    v57[1] = 0;
    sub_100007F88(v57, a1 + 360);
    v7 = *(a1 + 336);
    v8 = *(a1 + 344);
    if (v7 == v8)
    {
LABEL_7:
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_10081BEF4();
      }
    }

    else
    {
      while (1)
      {
        v9 = *v7;
        if (**v7 == v6)
        {
          break;
        }

        if (++v7 == v8)
        {
          goto LABEL_7;
        }
      }

      v10 = *a3;
      if (v10 == 2)
      {
        v11 = 2;
      }

      else
      {
        v11 = 3;
      }

      if (v10 == 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v6, __p);
        if (v59 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = *__p;
        }

        v15 = "unknown";
        if (v10 == 2)
        {
          v15 = "right";
        }

        if (v10 == 1)
        {
          v15 = "left";
        }

        v16 = "Yes";
        v17 = *(a1 + 430);
        v18 = a3[3];
        v19 = a3[2] == 0;
        *buf = 136447234;
        *&buf[4] = v14;
        v20 = "is";
        if (v19)
        {
          v16 = "No";
        }

        if (!v17)
        {
          v20 = "not";
        }

        *&buf[12] = 2082;
        *v61 = v15;
        *&v61[8] = 2082;
        v62 = v16;
        v63 = 2082;
        v64 = v20;
        if (v18)
        {
          v21 = "enabled";
        }

        else
        {
          v21 = "disabled";
        }

        v65 = 2082;
        v66 = v21;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "received role state from device %{public}s, primary bud side is %{public}s, secondary connected = %{public}s, magnet %{public}s connected, quickdisconnect %{public}s", buf, 0x34u);
        if (v59 < 0)
        {
          operator delete(*__p);
        }
      }

      v22 = v9[10];
      v23 = v12 != v22;
      if (v12 != v22)
      {
        if (v22 != 3 && v9[8] != 3 && v9[9] != 3)
        {
          if (qword_100B50940 != -1)
          {
            sub_10081BECC();
          }

          sub_10062ED90(off_100B50938, v6);
        }

        v9[10] = v12;
      }

      if (!a3[2] && sub_1000E356C(v6) && v9[9] != 3)
      {
        v9[9] = 3;
        v23 = 1;
      }

      sub_10000801C(v57);
      if (v23)
      {
        sub_10033BBAC(v24, v6);
        if (sub_100337E54(a1, v6))
        {
          v25 = qword_100BCE8C0;
          v26 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
          if (v26)
          {
            sub_1000BE6F8((v6 + 128), buf);
            v28 = v61[9] >= 0 ? buf : *buf;
            *__p = 67109378;
            *&__p[4] = v12;
            *&__p[8] = 2082;
            *&__p[10] = v28;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Sending current primary bud side as %d to other end of magnet link for device %{public}s", __p, 0x12u);
            if ((v61[9] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          v29 = sub_100432610(v26, v27);
          sub_1000BE6F8((v6 + 128), v55);
          (*(*v29 + 160))(v29, v55, v12);
          if (v56 < 0)
          {
            operator delete(v55[0]);
          }

          v30 = qword_100BCE8C0;
          v31 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
          if (v31)
          {
            v33 = v9[11];
            v34 = v9[9];
            *buf = 67109632;
            *&buf[4] = v33;
            *&buf[8] = 1024;
            *&buf[10] = v12;
            *v61 = 1024;
            *&v61[2] = v34;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Primary bud info over magnet link before -> %d, primary bud info from Headset -> %d, current connection secondary bud in ear status -> %d", buf, 0x14u);
          }

          v35 = sub_10000C798(v31, v32);
          if (!(*(*v35 + 368))(v35) || (v36 = v9[11], v36 == 3) || v12 == v36 || v9[9] != 3)
          {
            if (sub_100338390(v9))
            {
              v43 = qword_100BCE8C0;
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
              {
                v44 = 605;
                if (v9[617])
                {
                  v44 = 611;
                }

                v45 = &v9[v44];
                v46 = *(v45 + 2);
                *__p = *v45;
                *&__p[4] = v46;
                v47 = sub_100304810(__p);
                *buf = 136446210;
                *&buf[4] = v47;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Peer source %{public}s is currently connected in TiPi, skip connection stealing", buf, 0xCu);
              }
            }

            else if (a3[3] && sub_1003453C8(v9, v42))
            {
              v48 = qword_100BCE8C0;
              v49 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
              if (v49)
              {
                sub_1000E5A58(v6, buf);
                v51 = v61[9] >= 0 ? buf : *buf;
                *__p = 136446210;
                *&__p[4] = v51;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Sending message to Phone/Watch to connect to device %{public}s", __p, 0xCu);
                if ((v61[9] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }

              v52 = sub_100432610(v49, v50);
              sub_1000BE6F8((v6 + 128), v53);
              (*(*v52 + 144))(v52, v53, a3[3] != 0);
              if (v54 < 0)
              {
                operator delete(v53[0]);
              }
            }
          }

          else
          {
            v37 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v6, __p);
              v38 = v59 >= 0 ? __p : *__p;
              v39 = v9[11];
              *buf = 136446722;
              *&buf[4] = v38;
              *&buf[12] = 1024;
              *v61 = v39;
              *&v61[4] = 1024;
              *&v61[6] = v12;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Info update from Headset, Primary bud side  for device %{public}s seen locally is different from that of companion, we see  %d, and companion sees %d. Requesting connected Bud to be secondary", buf, 0x18u);
              if (v59 < 0)
              {
                operator delete(*__p);
              }
            }

            sub_100331844(a1, v6, 8, 2, 1);
            v40 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v6, buf);
              v41 = v61[9] >= 0 ? buf : *buf;
              *__p = 136446210;
              *&__p[4] = v41;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Schedule reconnection to W1 device after LSTO (5 seconds) on Gizmo, device : %{public}s", __p, 0xCu);
              if ((v61[9] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            *buf = *(v6 + 128);
            *&buf[4] = *(v6 + 132);
            if (qword_100B50AC0 != -1)
            {
              sub_10081A96C();
            }

            sub_100595470(off_100B50AB8, buf);
          }
        }
      }
    }

    sub_1000088CC(v57);
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081BF30();
  }
}

BOOL sub_1003453C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  if ((*(*v3 + 368))(v3) & 1) != 0 || (*(a1 + 728))
  {
    return 1;
  }

  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if ((*(off_100B50948 + 520) & 1) != 0 || sub_100338390(a1))
  {
    return 0;
  }

  for (i = *(a1 + 736); i != *(a1 + 744); i += 8)
  {
    if (*(i + 6) - 1 <= 1 && (*(i + 7) & 8) != 0)
    {
      return 0;
    }
  }

  return sub_1000E5DB8(*a1) != 1;
}

uint64_t sub_1003454A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *buf = *a2;
  LOWORD(v23) = *(a2 + 4);
  result = sub_1000E6554(off_100B508E8, buf, 1);
  v9 = result;
  if (result)
  {
    v21[0] = 0;
    v21[1] = 0;
    sub_100007F88(v21, a1 + 360);
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      v11 = *i;
      if (**i == v9)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
LABEL_9:
    v12 = qword_100BCE8C0;
    if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v13 = a4 == 1 ? "Pair success" : "Pair failed";
    sub_1000C23E0(v9, __p);
    v14 = v20;
    v15 = __p[0];
    v16 = sub_100304810(a3);
    v17 = __p;
    *buf = 136446722;
    if (v14 < 0)
    {
      v17 = v15;
    }

    v23 = v13;
    v24 = 2080;
    v25 = v17;
    v26 = 2080;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "received easy pair response %{public}s from device %s, for address %s ", buf, 0x20u);
    if (v20 < 0)
    {
      operator delete(__p[0]);
      if (v11)
      {
LABEL_17:
        v18 = v11[6];
        if (v18)
        {
          *buf = *a2;
          LOWORD(v23) = *(a2 + 4);
          LODWORD(__p[0]) = *a3;
          WORD2(__p[0]) = *(a3 + 4);
          sub_1003236C4(v18, buf, __p, a4 != 1);
        }
      }
    }

    else
    {
LABEL_16:
      if (v11)
      {
        goto LABEL_17;
      }
    }

    return sub_1000088CC(v21);
  }

  return result;
}

uint64_t sub_1003456D8(uint64_t a1, uint64_t a2, unint64_t a3, int a4, int a5)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  result = sub_1000504C8(off_100B508E8, a2, 1);
  if (result)
  {
    v11 = result;
    v21[0] = 0;
    v21[1] = 0;
    sub_100007F88(v21, a1 + 360);
    v12 = *(a1 + 336);
    v13 = *(a1 + 344);
    while (v12 != v13)
    {
      v14 = *v12;
      if (**v12 == v11)
      {
        v15 = sub_1002D3618(a3);
        v28 = v15;
        v29 = WORD2(v15);
        v16 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          v17 = sub_100304810(&v28);
          v18 = "Connected";
          if (!a4)
          {
            v18 = "Disconnected";
          }

          *buf = 136446722;
          v23 = v17;
          v24 = 2082;
          v25 = v18;
          if (a5 == 1)
          {
            v19 = "Source";
          }

          else
          {
            v19 = "UTP";
          }

          v26 = 2082;
          v27 = v19;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received connection state info : target addr = %{public}s, connState %{public}s, connType = %{public}s ", buf, 0x20u);
        }

        if (a5 == 1)
        {
          buf[0] = BYTE5(a3);
          buf[1] = BYTE4(a3);
          buf[2] = BYTE3(a3);
          buf[3] = BYTE2(a3);
          LOBYTE(v23) = BYTE1(a3);
          BYTE1(v23) = a3;
          sub_100338020(v14, buf, a4);
          v20 = sub_100338390(v14);
          sub_1003382B0(v20, v11, v20);
        }

        return sub_1000088CC(v21);
      }

      ++v12;
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v11, buf);
      sub_10081BFD0();
    }

    return sub_1000088CC(v21);
  }

  return result;
}

void sub_100345924(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  v7 = sub_1000504C8(off_100B508E8, a2, 1);
  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  sub_100007E30(__p, "");
  if (a4 == 2)
  {
    sub_100007E30(v17, "streaming A2DP");
  }

  else if (a4 == 1)
  {
    sub_100007E30(v17, "streaming SCO");
  }

  else if (a4)
  {
    sub_100007E30(v17, "in unknown state");
  }

  else
  {
    sub_100007E30(v17, "stopped streaming");
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = *v17;
  v20 = v18;
  v8 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(v7, v17);
    if (v18 >= 0)
    {
      v9 = v17;
    }

    else
    {
      v9 = v17[0];
    }

    v10 = __p;
    if (v20 < 0)
    {
      v10 = __p[0];
    }

    *buf = 136315394;
    v22 = v9;
    v23 = 2080;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received device %s stream state info: %s", buf, 0x16u);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }
  }

  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 360);
  if (v7)
  {
    v11 = *(a1 + 336);
    v12 = *(a1 + 344);
    while (v11 != v12)
    {
      v13 = *v11;
      if (**v11 == v7)
      {
        if (*(v13 + 4) != a4)
        {
          if (qword_100B508E0 != -1)
          {
            sub_10081A1D8();
          }

          sub_100518F34(off_100B508D8, v7, a4);
        }

        v14 = 0;
        *(v13 + 4) = a4;
        goto LABEL_28;
      }

      ++v11;
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000C23E0(v7, v17);
    sub_10081C024();
  }

  v14 = 1;
LABEL_28:
  sub_10000801C(v16);
  if (v14)
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_1000C23E0(v7, buf);
      sub_10081C078();
    }
  }

  else
  {
    sub_100345C5C(v15, v7, a4);
  }

  sub_1000088CC(v16);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100345C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_1000088CC(&a10);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100345C5C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = qword_100BCE8C0;
  v6 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_INFO);
  if (v6)
  {
    sub_1000C23E0(a2, __p);
    if (v18 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136315138;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Notify stream state change for device %s", buf, 0xCu);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = sub_1000D999C(v6, v7);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100354F14;
  v15[3] = &unk_100AE15D8;
  v15[4] = a2;
  v16 = a3;
  sub_10000CA94(v9, v15);
  v12 = sub_1000DAB84(v10, v11);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100354F6C;
  v13[3] = &unk_100AE15D8;
  v13[4] = a2;
  v14 = a3;
  sub_10000CA94(v12, v13);
}

unsigned __int8 *sub_100345DE4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *buf = *a2;
  LOWORD(v25) = *(a2 + 4);
  result = sub_1000E6554(off_100B508E8, buf, 1);
  v9 = result;
  if (result)
  {
    v23[0] = 0;
    v23[1] = 0;
    sub_100007F88(v23, a1 + 360);
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      v11 = *i;
      if (**i == v9)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
LABEL_9:
    v12 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v13 = "paired";
      }

      else
      {
        v13 = "not paired";
      }

      sub_1000C23E0(v9, __p);
      v14 = v22;
      v15 = __p[0];
      v16 = sub_100304810(a3);
      v17 = __p;
      v18 = *(v11 + 12);
      if (v14 < 0)
      {
        v17 = v15;
      }

      *buf = 136446978;
      v25 = v13;
      v26 = 2080;
      v27 = v17;
      v28 = 2080;
      v29 = v16;
      v30 = 1024;
      v31 = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "received triangle status response %{public}s from device %s, for address %s, easy unpairing? - %d", buf, 0x26u);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else if (!v11)
    {
      return sub_1000088CC(v23);
    }

    *(v11 + 84) = a4;
    if (*(v11 + 12) == 1)
    {
      *(v11 + 12) = 0;
      if (qword_100B50F88 != -1)
      {
        sub_10081A944();
      }

      sub_1006E1070(off_100B50F80, v9, 2u);
    }

    else
    {
      v19 = v11[6];
      if (v19)
      {
        *buf = *a2;
        LOWORD(v25) = *(a2 + 4);
        LODWORD(__p[0]) = *a3;
        WORD2(__p[0]) = *(a3 + 4);
        if (a4)
        {
          v20 = 2;
        }

        else
        {
          v20 = 1;
        }

        sub_1003231E0(v19, buf, __p, v20);
      }
    }

    return sub_1000088CC(v23);
  }

  return result;
}

uint64_t sub_100346074(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v5) = a3;
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, buf, 1);
  *&v80[3] = 0;
  *v80 = 0;
  v91 = 0;
  v92 = 0;
  v90 = 0uLL;
  v88 = 0;
  v89 = 0;
  v79[0] = 0;
  v79[1] = 0;
  sub_100007F88(v79, a1 + 360);
  if (v8)
  {
    for (i = *(a1 + 336); ; ++i)
    {
      if (i == *(a1 + 344))
      {
        return sub_1000088CC(v79);
      }

      if (**i == v8)
      {
        break;
      }
    }

    if (v5 && a4)
    {
      v11 = v8[1016];
      if (qword_100B50AB0 != -1)
      {
        sub_10081A1B0();
      }

      v12 = off_100B50AA8;
      if (sub_1000E25D8(off_100B50AA8, v9))
      {
        v78 = v12[240];
        if (v11)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v78 = 0;
        if (v11)
        {
          goto LABEL_24;
        }
      }

      if (v8[1044] == 1)
      {
        if (qword_100B50AB0 != -1)
        {
          sub_10081A1B0();
        }

        if ((sub_1000E2570(off_100B50AA8, v8) & v78 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }

      if (v78)
      {
LABEL_22:
        if ((v8[1046] & 1) != 0 || v8[1045] == 1)
        {
          goto LABEL_24;
        }

        v80[0] = 0;
        *&v80[1] = *a2;
        *&v80[5] = *(a2 + 4);
        if (qword_100B51078 != -1)
        {
          sub_10081C0CC();
        }

        sub_1000AF8E0(off_100B51070, (v80[1] << 40) | (v80[2] << 32) | (v80[3] << 24) | (v80[4] << 16) | (v80[5] << 8) | v80[6] | (v80[0] << 48), &v91);
        if (qword_100B508C0 != -1)
        {
          sub_10081AD54();
        }

        sub_1007CA58C(off_100B508B8, v80, &v90);
        v5 = v5;
        for (j = (a4 + 8); ; j += 2)
        {
          v43 = qword_100BCE960;
          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
          {
            v44 = *(j - 4);
            v45 = *(j - 3);
            sub_1000C23E0(v8, __p);
            v46 = v87 >= 0 ? __p : *__p;
            *buf = 67109634;
            *&buf[4] = v44;
            *&buf[8] = 1024;
            *&buf[10] = v45;
            *v82 = 2080;
            *&v82[2] = v46;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "received Key update with keyType = %x, keyLength = %d  from device%s ", buf, 0x18u);
            if (v87 < 0)
            {
              operator delete(*__p);
            }
          }

          v47 = *(j - 4);
          if (v47 == 1)
          {
            break;
          }

LABEL_142:
          if (v47 != 4)
          {
            goto LABEL_171;
          }

          if (**j == v88 && *(*j + 8) == v89)
          {
            v68 = qword_100BCE960;
            if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_171;
            }

            sub_1000C23E0(v8, buf);
            v69 = buf;
            if (v82[9] < 0)
            {
              v69 = *buf;
            }

            *__p = 136315138;
            *&__p[4] = v69;
            v70 = v68;
            v71 = " Received invalid Enc key from %s";
            v72 = 12;
            goto LABEL_186;
          }

          if (qword_100B50AB0 != -1)
          {
            sub_10081A1B0();
          }

          sub_10055C778(off_100B50AA8, v8, *j);
          if (v91 == **j && v92 == *(*j + 8))
          {
            goto LABEL_171;
          }

          if (qword_100B51078 != -1)
          {
            sub_10081C0CC();
          }

          sub_10079E618(off_100B51070, v80, *j);
          v62 = sub_1000E2738(v60, v61);
          v63 = (*(*v62 + 88))(v62, v8, 3, *j);
          v64 = qword_100BCE960;
          v65 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR);
          if (v63)
          {
            if (!v65)
            {
              goto LABEL_171;
            }

            sub_1000C23E0(v8, __p);
            v66 = v87 >= 0 ? __p : *__p;
            *buf = 141558531;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *v82 = v66;
            *&v82[8] = 1024;
            v83 = v63;
            _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "Failed to store encryption key to storage for device %{private, mask.hash}s with error %d", buf, 0x1Cu);
            if ((v87 & 0x80000000) == 0)
            {
              goto LABEL_171;
            }

            v67 = *__p;
            goto LABEL_188;
          }

          if (v65)
          {
            sub_1000C23E0(v8, buf);
            v76 = buf;
            if (v82[9] < 0)
            {
              v76 = *buf;
            }

            *__p = 141558275;
            *&__p[4] = 1752392040;
            v85 = 2081;
            v86 = v76;
            v70 = v64;
            v71 = "Successfully stored encryption key to storage for device %{private, mask.hash}s ";
            v72 = 22;
LABEL_186:
            _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, v71, __p, v72);
            if ((v82[9] & 0x80000000) != 0)
            {
              v67 = *buf;
LABEL_188:
              operator delete(v67);
            }
          }

LABEL_171:
          if (*(j - 4) == 256)
          {
            v74 = **j;
            if (qword_100B50AB0 != -1)
            {
              sub_10081A1B0();
            }

            sub_10055CBF4(off_100B50AA8, v8, v74);
          }

          if (!--v5)
          {
            return sub_1000088CC(v79);
          }
        }

        if (**j == v88 && *(*j + 8) == v89)
        {
          v57 = qword_100BCE960;
          if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_141;
          }

          sub_1000C23E0(v8, buf);
          v75 = buf;
          if (v82[9] < 0)
          {
            v75 = *buf;
          }

          *__p = 136315138;
          *&__p[4] = v75;
          _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, " Received invalid IRK from %s", __p, 0xCu);
        }

        else
        {
          if (qword_100B50AB0 != -1)
          {
            sub_10081A1B0();
          }

          sub_10055C400(off_100B50AA8, v8, *j);
          if (v90 == **j && *(&v90 + 1) == *(*j + 8))
          {
            goto LABEL_141;
          }

          if (qword_100B508C0 != -1)
          {
            sub_10081AD54();
          }

          sub_1007BE07C(off_100B508B8, v80, *j);
          v52 = sub_1000E2738(v50, v51);
          v53 = (*(*v52 + 88))(v52, v8, 2, *j);
          v54 = qword_100BCE960;
          if (v53)
          {
            if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_141;
            }

            sub_1000C23E0(v8, __p);
            v55 = v87 >= 0 ? __p : *__p;
            *buf = 141558531;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *v82 = v55;
            *&v82[8] = 1024;
            v83 = v53;
            _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Failed to store IRK to storage for device %{private, mask.hash}s with error %d", buf, 0x1Cu);
            if ((v87 & 0x80000000) == 0)
            {
              goto LABEL_141;
            }

            v56 = *__p;
            goto LABEL_182;
          }

          if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_INFO))
          {
LABEL_141:
            v47 = *(j - 4);
            goto LABEL_142;
          }

          sub_1000C23E0(v8, buf);
          v73 = buf;
          if (v82[9] < 0)
          {
            v73 = *buf;
          }

          *__p = 141558275;
          *&__p[4] = 1752392040;
          v85 = 2081;
          v86 = v73;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "Successfully stored IRK to storage for device %{private, mask.hash}s ", __p, 0x16u);
        }

        if ((v82[9] & 0x80000000) != 0)
        {
          v56 = *buf;
LABEL_182:
          operator delete(v56);
          goto LABEL_141;
        }

        goto LABEL_141;
      }

LABEL_24:
      v80[0] = 0;
      *&v80[1] = *a2;
      *&v80[5] = *(a2 + 4);
      if (qword_100B508C0 != -1)
      {
        sub_10081AD54();
      }

      v13 = sub_1007CA58C(off_100B508B8, v80, &v90);
      v14 = 0;
      v15 = v5;
      for (k = (a4 + 8); ; k += 2)
      {
        v17 = qword_100BCE960;
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(k - 4);
          v19 = *(k - 3);
          sub_1000C23E0(v8, __p);
          v20 = __p;
          if (v87 < 0)
          {
            v20 = *__p;
          }

          *buf = 67109634;
          *&buf[4] = v18;
          *&buf[8] = 1024;
          *&buf[10] = v19;
          *v82 = 2080;
          *&v82[2] = v20;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Device received non-magic Key update with keyType = %x, keyLength = %d from device%s ", buf, 0x18u);
          if (v87 < 0)
          {
            operator delete(*__p);
          }
        }

        v21 = *(k - 4);
        if (!((v21 != 1) | v13 & 1))
        {
          break;
        }

LABEL_65:
        if (v21 != 4)
        {
          goto LABEL_97;
        }

        if (v91 == **k && v92 == *(*k + 8))
        {
          v36 = qword_100BCE960;
          if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_97;
          }

          sub_1000C23E0(v8, buf);
          v37 = buf;
          if (v82[9] < 0)
          {
            v37 = *buf;
          }

          *__p = 136315138;
          *&__p[4] = v37;
          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Receive invalid non-magic Enc Key from %s", __p, 0xCu);
          if ((v82[9] & 0x80000000) == 0)
          {
            goto LABEL_97;
          }

          v38 = *buf;
          goto LABEL_90;
        }

        if (qword_100B51078 != -1)
        {
          sub_10081C0CC();
        }

        sub_10079E618(off_100B51070, v80, *k);
        if (v11)
        {
          v35 = (*sub_1000E2738(v33, v34) + 112);
LABEL_83:
          v14 = (*v35)();
          goto LABEL_84;
        }

        if (v78 & 1) == 0 || (v8[1046] & 1) != 0 || (v8[1045])
        {
          goto LABEL_82;
        }

        if (v8[1044] == 1)
        {
          if (qword_100B50AB0 != -1)
          {
            sub_10081A1B0();
          }

          v33 = sub_1000E2570(off_100B50AA8, v8);
          if ((v33 & 1) == 0)
          {
LABEL_82:
            v35 = (*sub_1000E2738(v33, v34) + 88);
            goto LABEL_83;
          }
        }

LABEL_84:
        v39 = qword_100BCE960;
        if (!v14)
        {
          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_INFO))
          {
            sub_1000C23E0(v8, buf);
            v41 = buf;
            if (v82[9] < 0)
            {
              v41 = *buf;
            }

            *__p = 141558275;
            *&__p[4] = 1752392040;
            v85 = 2081;
            v86 = v41;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Successfully stored non-magic Enc Key to storage for device %{private, mask.hash}s ", __p, 0x16u);
            if ((v82[9] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          v14 = 0;
          goto LABEL_97;
        }

        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
        {
          sub_1000C23E0(v8, __p);
          v40 = __p;
          if (v87 < 0)
          {
            v40 = *__p;
          }

          *buf = 141558531;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *v82 = v40;
          *&v82[8] = 1024;
          v83 = v14;
          _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to store non-magic Enc Key to storage for device %{private, mask.hash}s with error %d", buf, 0x1Cu);
          if (v87 < 0)
          {
            v38 = *__p;
LABEL_90:
            operator delete(v38);
          }
        }

LABEL_97:
        if (!--v15)
        {
          return sub_1000088CC(v79);
        }
      }

      if (v90 == **k && *(&v90 + 1) == *(*k + 8))
      {
        v26 = qword_100BCE960;
        if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_64;
        }

        sub_1000C23E0(v8, buf);
        v27 = buf;
        if (v82[9] < 0)
        {
          v27 = *buf;
        }

        *__p = 136315138;
        *&__p[4] = v27;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Received invalid non-magic key from %s", __p, 0xCu);
        if ((v82[9] & 0x80000000) == 0)
        {
          goto LABEL_64;
        }

        v28 = *buf;
        goto LABEL_57;
      }

      if (qword_100B508C0 != -1)
      {
        sub_10081AD54();
      }

      sub_1007BE07C(off_100B508B8, v80, *k);
      if (v11)
      {
        v25 = (*sub_1000E2738(v23, v24) + 112);
      }

      else
      {
        if ((v78 & 1) != 0 && (v8[1046] & 1) == 0 && (v8[1045] & 1) == 0)
        {
          if (v8[1044] != 1)
          {
            goto LABEL_51;
          }

          if (qword_100B50AB0 != -1)
          {
            sub_10081A1B0();
          }

          v23 = sub_1000E2570(off_100B50AA8, v8);
          if (v23)
          {
            goto LABEL_51;
          }
        }

        v25 = (*sub_1000E2738(v23, v24) + 88);
      }

      v14 = (*v25)();
LABEL_51:
      v29 = qword_100BCE960;
      if (!v14)
      {
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_INFO))
        {
          sub_1000C23E0(v8, buf);
          v31 = buf;
          if (v82[9] < 0)
          {
            v31 = *buf;
          }

          *__p = 141558275;
          *&__p[4] = 1752392040;
          v85 = 2081;
          v86 = v31;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Successfully stored non-magic key to storage for device %{private, mask.hash}s ", __p, 0x16u);
          if ((v82[9] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        v14 = 0;
        goto LABEL_64;
      }

      if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }

      sub_1000C23E0(v8, __p);
      v30 = __p;
      if (v87 < 0)
      {
        v30 = *__p;
      }

      *buf = 141558531;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *v82 = v30;
      *&v82[8] = 1024;
      v83 = v14;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to store non-magic key to storage for device %{private, mask.hash}s with error %d", buf, 0x1Cu);
      if ((v87 & 0x80000000) == 0)
      {
LABEL_64:
        v21 = *(k - 4);
        goto LABEL_65;
      }

      v28 = *__p;
LABEL_57:
      operator delete(v28);
      goto LABEL_64;
    }
  }

  return sub_1000088CC(v79);
}

void sub_100346F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100346F8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *buf = *a2;
  LOWORD(v21) = *(a2 + 4);
  result = sub_1000E6554(off_100B508E8, buf, 1);
  v11 = result;
  if (result)
  {
    v19[0] = 0;
    v19[1] = 0;
    sub_100007F88(v19, a1 + 360);
    v12 = *(a1 + 336);
    v13 = *(a1 + 344);
    while (v12 != v13)
    {
      v14 = *v12;
      if (**v12 == v11)
      {
        goto LABEL_9;
      }

      ++v12;
    }

    v14 = 0;
LABEL_9:
    v15 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = sub_100304810(a2);
      *buf = 136315906;
      v21 = v16;
      v22 = 1024;
      v23 = a3;
      v24 = 1024;
      v25 = a4;
      v26 = 1024;
      v27 = a5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Receive command status from device %s, commandType = %d, result -> %d, reason -> %d", buf, 0x1Eu);
    }

    v17 = sub_1000E2140(v11, 0x20u);
    v18 = a3 == 20 && v17;
    if (v14)
    {
      if (v18)
      {
        sub_10034714C(v14, a4, a5);
      }
    }

    return sub_1000088CC(v19);
  }

  return result;
}

void sub_10034714C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[84];
  if (v3)
  {
    v7 = a1[83];
    v8 = *(*(a1[80] + ((v7 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v7 & 0x3FF));
    a1[84] = v3 - 1;
    a1[83] = v7 + 1;
    sub_100362700((a1 + 79), 1);
    if (v8 == 1)
    {
      v9 = qword_100BCE8C0;
      if (*(a1 + 618))
      {
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(*a1, __p);
          v10 = v14 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v16 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Acknowledgement request TiPi connection priority list update for device %{public}s", buf, 0xCu);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }

        *(a1 + 618) = 0;
        if (qword_100B508E0 != -1)
        {
          sub_10081A1D8();
        }

        sub_100518ECC(off_100B508D8, *a1, 1, a2, a3);
        v11 = a1[78];
        if (v11)
        {
          [v11 invalidate];
          v12 = a1[78];
          a1[78] = 0;
        }
      }

      else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_10081C0F4();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081C130();
  }
}

uint64_t sub_10034731C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000C5E0(a4);
  v9 = sub_10000C5F8(a4);

  return sub_100347390(a1, a2, a3, v8, v9);
}

uint64_t sub_100347390(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v54 = a4;
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  result = sub_1000E6554(off_100B508E8, buf, 1);
  v18 = result;
  if (result)
  {
    if (a3 <= 127)
    {
      if (a3 == 2 || a3 == 4)
      {
        goto LABEL_66;
      }

      if (a3 != 32)
      {
LABEL_26:
        v31 = qword_100BCE8C0;
        if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          return sub_100348258((a1 + 560), v18, a3, a5, v54);
        }

        sub_1000E5A58(v18, __p);
        if (v58 >= 0)
        {
          v32 = __p;
        }

        else
        {
          v32 = *__p;
        }

        *buf = 136446722;
        *&buf[4] = v32;
        *&buf[12] = 1024;
        *&buf[14] = a3;
        *&buf[18] = 1024;
        v60 = a4;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Received custom message from %{public}s: type 0x%x, len %u", buf, 0x18u);
LABEL_31:
        if (v58 < 0)
        {
          operator delete(*__p);
        }

        return sub_100348258((a1 + 560), v18, a3, a5, v54);
      }

      v19 = sub_10000C798(result, v11);
      v20 = (*(*v19 + 352))(v19);
      if ((v20 & 1) == 0)
      {
        v22 = sub_10000C798(v20, v21);
        v23 = (*(*v22 + 416))(v22);
        if ((v23 & 1) == 0)
        {
          v25 = sub_10000C798(v23, v24);
          if (!(*(*v25 + 456))(v25))
          {
            goto LABEL_66;
          }
        }
      }

      v52 = 0;
      v53 = 0;
      sub_100007F88(&v52, a1 + 360);
      for (i = *(a1 + 336); i != *(a1 + 344); ++i)
      {
        v27 = *i;
        if (**i == v18)
        {
          v50 = *(v27 + 85);
          v51 = *(v27 + 93);
          if (!(*(&v50 + 3) | BYTE5(v50)))
          {
            *(&v50 + 3) = *(a5 + 48);
            BYTE5(v50) = *(a5 + 50);
            LOWORD(v50) = *(a5 + 36);
            BYTE2(v50) = *(a5 + 38);
            *(&v51 + 1) = *(a5 + 54);
            HIBYTE(v51) = *(a5 + 56);
            if (100 * v50 + 10 * BYTE1(v50) + BYTE2(v50) >= 0x174 && *(v27 + 20) == 8194)
            {
              v37 = qword_100BCE8C0;
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
              {
                sub_1000E5A58(v18, buf);
                v38 = v60 >= 0 ? buf : *buf;
                v39 = *(v27 + 20);
                *__p = 136446466;
                *&__p[4] = v38;
                v56 = 1024;
                v57 = v39;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Enabling enhanced double tap feature support on device %{public}s (pid = 0x%x)", __p, 0x12u);
                if (SHIBYTE(v60) < 0)
                {
                  operator delete(*buf);
                }
              }

              sub_10053E4FC(v18, 14, 1);
            }

            v40 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              *&buf[4] = BYTE3(v50);
              *&buf[8] = 1024;
              *&buf[10] = BYTE4(v50);
              *&buf[14] = 1024;
              *&buf[16] = BYTE5(v50);
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "case F/W version from Headset  %d, %d, %d", buf, 0x14u);
              v40 = qword_100BCE8C0;
            }

            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              *&buf[4] = BYTE1(v51);
              *&buf[8] = 1024;
              *&buf[10] = BYTE2(v51);
              *&buf[14] = 1024;
              *&buf[16] = HIBYTE(v51);
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "case H/W version from Headset  %d, %d, %d", buf, 0x14u);
              v40 = qword_100BCE8C0;
            }

            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = *(a5 + 36);
              v42 = *(a5 + 37);
              v43 = *(a5 + 38);
              *buf = 67109632;
              *&buf[4] = v41;
              *&buf[8] = 1024;
              *&buf[10] = v42;
              *&buf[14] = 1024;
              *&buf[16] = v43;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Active Bud F/W version from Headset  %d, %d, %d", buf, 0x14u);
              v40 = qword_100BCE8C0;
            }

            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v44 = *(a5 + 39);
              v45 = *(a5 + 40);
              v46 = *(a5 + 41);
              *buf = 67109632;
              *&buf[4] = v44;
              *&buf[8] = 1024;
              *&buf[10] = v45;
              *&buf[14] = 1024;
              *&buf[16] = v46;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Pending Bud F/W version from Headset  %d, %d, %d", buf, 0x14u);
            }

            *(v27 + 85) = v50;
            *(v27 + 93) = v51;
            if (qword_100B540C0 != -1)
            {
              sub_10081C1F4();
            }

            v47 = (*(*off_100B540B8 + 120))(off_100B540B8, *v27);
            if (v47)
            {
              sub_100347B74(v47, v27);
            }
          }

          sub_10000801C(&v52);
          sub_1000088CC(&v52);
          goto LABEL_66;
        }
      }
    }

    else
    {
      if (a3 < 0x40000)
      {
        if (a3 != 128 && a3 != 1024)
        {
          goto LABEL_26;
        }

LABEL_66:
        if (qword_100B51308 != -1)
        {
          sub_10081AC08();
        }

        sub_1004B5068(qword_100B51300, a2, a3, v54, a5);
        return sub_100348258((a1 + 560), v18, a3, a5, v54);
      }

      if (a3 != 0x40000)
      {
        if (a3 == 0x100000)
        {
          v28 = sub_10018176C(a5, (a4 - 2), v12, v13, v14, v15, v16, v17);
          if (v28 == 1)
          {
            *buf = 0;
            *&buf[8] = 0;
            v29 = sub_100007F88(buf, a1 + 360);
            for (j = *(a1 + 336); ; ++j)
            {
              if (j == *(a1 + 344))
              {
                v35 = buf;
                return sub_1000088CC(v35);
              }

              if (**j == v18)
              {
                break;
              }
            }

            sub_10034811C(v29, *j, v18, &v54, a5);
            sub_1000088CC(buf);
          }

          v48 = qword_100BCE8C0;
          if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEBUG))
          {
            return sub_100348258((a1 + 560), v18, a3, a5, v54);
          }

          sub_1000E5A58(v18, __p);
          if (v58 >= 0)
          {
            v49 = __p;
          }

          else
          {
            v49 = *__p;
          }

          *buf = 136446722;
          *&buf[4] = v49;
          *&buf[12] = 1024;
          *&buf[14] = v28;
          *&buf[18] = 1024;
          v60 = v54;
          _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Received AACP_CUSTOM_MESSAGE_TYPE_SENSOR_WX message from %{public}s: protocol %u, len %u", buf, 0x18u);
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      v52 = 0;
      v53 = 0;
      v33 = sub_100007F88(&v52, a1 + 360);
      for (k = *(a1 + 336); k != *(a1 + 344); ++k)
      {
        if (**k == v18)
        {
          sub_10034811C(v33, *k, v18, &v54, a5);
          v36 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEBUG))
          {
            sub_1000E5A58(v18, buf);
            sub_10081C16C(buf, &v54, __p, v36);
          }

          sub_1000088CC(&v52);
          return sub_100348258((a1 + 560), v18, a3, a5, v54);
        }
      }
    }

    v35 = &v52;
    return sub_1000088CC(v35);
  }

  return result;
}

void sub_100347B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100347B74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 80) == 8194)
    {
      v3 = *a2;
      if (*a2)
      {
        v4 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000C23E0(v3, __p);
          v5 = __p[23] >= 0 ? __p : *__p;
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v5;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "publishW1RemoteFirmware: Publishing F/W version for %{private, mask.hash}s", buf, 0x16u);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        v31 = 0;
        cStr = 0;
        v29 = 0;
        v28 = 0;
        v16 = *(a2 + 85);
        v17 = *(a2 + 93);
        if (*(&v16 + 3) | BYTE5(v16))
        {
          sub_1000BE6F8((v3 + 128), __p);
          if (__p[23] >= 0)
          {
            v6 = __p;
          }

          else
          {
            v6 = *__p;
          }

          v7 = CFStringCreateWithCString(kCFAllocatorDefault, v6, 0x8000100u);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          if (v7)
          {
            sprintf(&cStr, "%d.%d.%d", BYTE3(v16), BYTE4(v16), BYTE5(v16));
            v8 = CFStringCreateWithCString(kCFAllocatorDefault, &cStr, 0x8000100u);
            if (v8)
            {
              sprintf(&v28, "%d.%d.%d", BYTE1(v17), BYTE2(v17), HIBYTE(v17));
              v9 = CFStringCreateWithCString(kCFAllocatorDefault, &v28, 0x8000100u);
              if (v9)
              {
                Connection = acc_transportClient_createConnection();
                if (Connection)
                {
                  Endpoint = acc_transportClient_createEndpoint();
                  v12 = qword_100BCE8C0;
                  if (Endpoint)
                  {
                    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
                    {
                      *__p = 138412546;
                      *&__p[4] = Connection;
                      *&__p[12] = 2112;
                      *&__p[14] = Endpoint;
                      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "publishW1RemoteFirmware: connection %@ endpoint %@", __p, 0x16u);
                    }

                    *(a2 + 112) = Connection;
                    *(a2 + 120) = Endpoint;
                    *__p = kCFACCInfo_Name;
                    *&__p[8] = __PAIR128__(kCFACCInfo_Model, kCFACCInfo_Manufacturer);
                    v24 = kCFACCInfo_SerialNumber;
                    v25 = kCFACCInfo_HardwareVersion;
                    v26 = kCFACCInfo_FirmwareVersionActive;
                    v27 = kCFACCInfo_FirmwareVersionPending;
                    *buf = @"AirPods Case";
                    *&buf[8] = @"Apple Inc";
                    *&buf[16] = @"A1602";
                    v19 = kCFNull;
                    v20 = v9;
                    v21 = v8;
                    v22 = kCFNull;
                    v13 = CFDictionaryCreate(kCFAllocatorDefault, __p, buf, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                    acc_transportClient_setAccessoryInfo();
                    CFRelease(v13);
                    acc_transportClient_setPropertyForConnectionWithUUID();
                    acc_transportClient_publishConnection();
                    CFRelease(v7);
                    CFRelease(v8);
                    CFRelease(v9);
                  }

                  else
                  {
                    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
                    {
                      sub_10081C21C();
                    }

                    CFRelease(Connection);
                    CFRelease(v9);
                    CFRelease(v8);
                    CFRelease(v7);
                  }
                }

                else
                {
                  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
                  {
                    sub_10081C2B8();
                  }

                  CFRelease(v9);
                  CFRelease(v8);
                  CFRelease(v7);
                }
              }

              else
              {
                if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
                {
                  sub_10081C354();
                }

                CFRelease(v8);
                CFRelease(v7);
              }
            }

            else
            {
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
              {
                sub_10081C3F0();
              }

              CFRelease(v7);
            }
          }

          else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
          {
            sub_10081C48C();
          }
        }

        else
        {
          v14 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000C23E0(v3, __p);
            v15 = __p[23] >= 0 ? __p : *__p;
            *buf = 141558275;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Warning: publishW1RemoteFirmware: No case version info available for %{private, mask.hash}s", buf, 0x16u);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081C528();
  }
}

void sub_1003480F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10034811C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5)
{
  if (*a4 >= 2u && (sub_1000E3218(a3, 0xE0u) != 2 || *(a2 + 16) != 1))
  {
    v9 = *a4 - 2;
    v10 = *(a5 + v9);
    if (v10 != *(a2 + 760))
    {
      v11 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        v12[0] = 67109120;
        v12[1] = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received new sensor data v2 JB: %u", v12, 8u);
      }

      *(a2 + 760) = v10;
      if (qword_100B50940 != -1)
      {
        sub_10081BECC();
      }

      sub_10062D068(off_100B50938, a3, v10);
    }

    *a4 = v9;
  }
}

uint64_t sub_100348258(unint64_t **a1, uint64_t a2, int a3, const void *a4, size_t a5)
{
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, (a1 + 3));
  v7 = *a1;
  if (*a1 == a1[1])
  {
    v19 = 106;
  }

  else
  {
    do
    {
      if (qword_100B50B88 != -1)
      {
        sub_10081C564();
      }

      if (sub_100076290(qword_100B50B80, *v7))
      {
        v7 += 4;
        v8 = a1[1];
      }

      else
      {
        v9 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: AACPDebugUtils, Invalid BTAccessoryManager handle - removing associated callbacks", buf, 2u);
        }

        v10 = a1[1];
        if (v7 + 4 == v10)
        {
          v8 = v7;
        }

        else
        {
          v11 = v7;
          v8 = v7;
          do
          {
            v12 = v8[4];
            v8 += 4;
            v13 = v11[5];
            *v11 = v12;
            v11[1] = v13;
            *(v11 + 4) = *(v11 + 12);
            v11[3] = v11[7];
            v14 = v11 + 8;
            v11 = v8;
          }

          while (v14 != v10);
        }

        a1[1] = v8;
      }
    }

    while (v7 != v8);
    v15 = *a1;
    v16 = (v8 - *a1) >> 5;
    *buf = 0;
    v23 = 0;
    v24 = 0;
    sub_100362C7C(buf, v15, v8, v16);
    sub_10000801C(v25);
    v18 = *buf;
    v17 = v23;
    if (*buf != v23)
    {
      do
      {
        if (qword_100B50B88 != -1)
        {
          sub_10081C564();
        }

        sub_100076290(qword_100B50B80, *v18);
        if (qword_100B508F0 != -1)
        {
          sub_10081A4E4();
        }

        sub_10056A4C4(off_100B508E8, *v18, a2);
        if ((a3 & ~*(v18 + 16)) == 0)
        {
          if (qword_100B540D0 != -1)
          {
            sub_10081C58C();
          }

          operator new();
        }

        v18 += 32;
      }

      while (v18 != v17);
      v18 = *buf;
    }

    if (v18)
    {
      v23 = v18;
      operator delete(v18);
    }

    v19 = 0;
  }

  sub_1000088CC(v25);
  return v19;
}

void sub_10034852C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100348584(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v5 = sub_1000E6554(off_100B508E8, __p, 1);
  v6 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(v5, __p);
    if (v9 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136315394;
    v11 = v7;
    v12 = 1024;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "received tap interval info from device %s, tapInterval = %d", buf, 0x12u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1003486B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *buf = *a2;
  *v31 = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, buf, 1);
  v9 = v8;
  if (v8)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      if (**i == v8)
      {
        v11 = qword_100BCE8C0;
        v12 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          sub_100333C10(a1, a3, a4, v28);
          v13 = v29;
          v14 = v28[0];
          sub_1000E5A58(v9, __p);
          if (v13 >= 0)
          {
            v14 = v28;
          }

          v16 = sub_100333BE4(v15, a3);
          if (v27 >= 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = __p[0];
          }

          *buf = 136446978;
          *v31 = v16;
          *&v31[8] = 1024;
          *v32 = a3;
          *&v32[4] = 2082;
          v33 = v14;
          v34 = 2082;
          v35 = v17;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received %{public}s (control cmd 0x%02X) as %{public}s from device %{public}s", buf, 0x26u);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }

          if (v29 < 0)
          {
            operator delete(v28[0]);
          }
        }

        switch(a3)
        {
          case 6:
            v18 = a4 == 0;
            v19 = a4 != 0;
            v20 = v18;
            sub_100349058(a1, v9, v20);
            sub_100548A1C(v9, v19);
            if (qword_100B508E0 != -1)
            {
              goto LABEL_99;
            }

            goto LABEL_92;
          case 10:
            sub_10033DF90(a1, v9, a4 != 1, 2);
            if (qword_100B508E0 == -1)
            {
              goto LABEL_92;
            }

            goto LABEL_99;
          case 13:
            v23 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *v31 = a4;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Set ListeningMode device setting : ListeningMode value %d", buf, 8u);
            }

            v24 = sub_100546AA8(v9, a4);
            sub_100338DBC(v24, v9);
            if (qword_100B508E0 == -1)
            {
              goto LABEL_92;
            }

            goto LABEL_99;
          case 22:
            v22 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109888;
              *v31 = a4;
              *&v31[4] = 1024;
              *&v31[6] = BYTE1(a4);
              *v32 = 1024;
              *&v32[2] = BYTE2(a4);
              LOWORD(v33) = 1024;
              *(&v33 + 2) = BYTE3(a4);
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Received ClickHoldMode device setting: right 0x%02X, left 0x%02X, prevRight 0x%02X, prevLeft 0x%02X", buf, 0x1Au);
            }

            sub_1005470CC(v9, a4);
            if (qword_100B508E0 == -1)
            {
              goto LABEL_92;
            }

            goto LABEL_99;
          case 23:
            sub_1005471A8(v9, a4);
            if (qword_100B508E0 != -1)
            {
              sub_10081A1D8();
            }

            sub_100519EFC(off_100B508D8, v9, 16, "Double Click Interval");
            return;
          case 24:
            sub_10054723C(v9, a4);
            if (qword_100B508E0 != -1)
            {
              sub_10081A1D8();
            }

            sub_100519EFC(off_100B508D8, v9, 18, "Click and Hold Interval");
            return;
          case 27:
            sub_1005472D0(v9, a4);
            if (qword_100B508E0 != -1)
            {
              sub_10081A1D8();
            }

            sub_100519EFC(off_100B508D8, v9, 21, "One Bud ANC Mode");
            return;
          case 28:
            sub_100547364(v9, a4);
            if (qword_100B508E0 == -1)
            {
              goto LABEL_92;
            }

            goto LABEL_99;
          case 30:
            sub_1005473AC(v9, a4);
            if (qword_100B508E0 == -1)
            {
              goto LABEL_92;
            }

            goto LABEL_99;
          case 31:
            sub_1005473F4(v9, a4);
            if (qword_100B508E0 != -1)
            {
              sub_10081A1D8();
            }

            sub_100519738(off_100B508D8, v9);
            if (qword_100B508E0 != -1)
            {
              sub_10081A1D8();
            }

            sub_100519EFC(off_100B508D8, v9, 17, "Chime Volume");
            return;
          case 35:
            sub_100547518(v9, a4);
            if (qword_100B508E0 != -1)
            {
              sub_10081A1D8();
            }

            sub_100519EFC(off_100B508D8, v9, 20, "Volume Swipe Interval");
            return;
          case 36:
            v21 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *v31 = a4;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Prox Card Status: Received Call Management: 0x%x", buf, 8u);
            }

            sub_100547688(v9, a4);
            sub_100338AC0(a1, v9, 36, a4);
            if (qword_100B508E0 == -1)
            {
              goto LABEL_92;
            }

            goto LABEL_99;
          case 37:
            sub_100547484(v9, a4);
            if (qword_100B508E0 != -1)
            {
              sub_10081A1D8();
            }

            sub_100519EFC(off_100B508D8, v9, 19, "Volume Swipe Mode");
            return;
          case 38:
            sub_1005475AC(v9, a4);
            if (qword_100B50AE0 != -1)
            {
              sub_10081A23C();
            }

            sub_1004DBB68(qword_100B50AD8, v9, a4);
            if (qword_100B508E0 == -1)
            {
              goto LABEL_92;
            }

            goto LABEL_99;
          case 39:
            sub_10054775C(v9, a4);
            sub_100338CE0(a1);
            if (qword_100B508E0 == -1)
            {
              goto LABEL_92;
            }

            goto LABEL_99;
          case 40:
            sub_1003336B8(v12, v9, a4);
            sub_1005477F8(v9, a4);
            if (qword_100B508E0 == -1)
            {
              goto LABEL_92;
            }

            goto LABEL_99;
          case 41:
            sub_1005478DC(v9, a4);
            if (qword_100B508E0 == -1)
            {
              goto LABEL_92;
            }

LABEL_99:
            sub_10081A1D8();
LABEL_92:
            sub_100519738(off_100B508D8, v9);
            break;
          case 44:
            sub_10054FBF8(v9, a4);
            sub_10054FCD0(v9, BYTE1(a4));
            break;
          case 46:
            sub_1005479C0(v9, a4);
            break;
          case 47:
            sub_100548150(v9, a4);
            break;
          case 48:
            sub_100547A5C(v9, a4);
            break;
          case 49:
            sub_100547978(v9, a4);
            if (qword_100B508E0 != -1)
            {
              sub_10081A1D8();
            }

            sub_100519EFC(off_100B508D8, v9, 24, "In Case Tone");
            break;
          case 50:
            sub_100547E04(v9, a4);
            break;
          case 51:
            sub_1005481EC(v9, a4);
            break;
          case 52:
            sub_100548288(v9, a4);
            break;
          case 53:
            sub_100547EA0(v9, a4);
            break;
          case 55:
            sub_100548324(v9, a4);
            break;
          case 56:
            sub_100547AF8(v9, a4);
            break;
          case 57:
            sub_100547F3C(v9, a4);
            break;
          case 59:
            sub_100547B94(v9, a4);
            break;
          case 61:
            sub_100547C30(v9, a4);
            break;
          case 62:
            sub_100547FD8(v9, a4);
            break;
          case 63:
            sub_1005480B4(v9, a4);
            break;
          case 64:
            sub_100547D68(v9, a4);
            break;
          case 65:
            sub_100547CCC(v9, a4);
            break;
          default:
            v25 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *v31 = a3;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Unsupported control type = %d", buf, 8u);
            }

            break;
        }

        return;
      }
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081C5B4();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081C5F0();
  }
}

void sub_100349034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100349058(uint64_t a1, uint64_t a2, char a3)
{
  v20[0] = 0;
  v20[1] = 0;
  v6 = sub_100007F88(v20, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      if (**i == a2)
      {
        v10 = sub_1000D999C(v6, v7);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10035BE18;
        v18[3] = &unk_100AE15D8;
        v18[4] = a2;
        v19 = a3;
        sub_10000CA94(v10, v18);
        v13 = sub_1000DAB84(v11, v12);
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10035BE70;
        v16[3] = &unk_100AE15D8;
        v16[4] = a2;
        v17 = a3;
        sub_10000CA94(v13, v16);
        goto LABEL_9;
      }
    }
  }

  v9 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setHijackAudioRoute unable to find AACP connection", v15, 2u);
  }

LABEL_9:
  sub_1000088CC(v20);
  return 0;
}

uint64_t sub_1003491D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *&v95 = a5;
  v5 = a4;
  LODWORD(v94) = a3;
  v96 = a1;
  if (qword_100B508F0 != -1)
  {
    v83 = a2;
    sub_100819FC0();
    a2 = v83;
  }

  *v118 = *a2;
  v93 = a2;
  *&v118[4] = *(a2 + 4);
  result = sub_1000E6554(off_100B508E8, v118, 1);
  v7 = result;
  if (!result)
  {
    return result;
  }

  v115[0] = 0;
  v115[1] = 0;
  v8 = sub_100007F88(v115, v96 + 360);
  v9 = *(v96 + 336);
  v10 = *(v96 + 344);
  if (v9 == v10)
  {
LABEL_7:
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v7, v118);
      sub_10081C968();
    }

    return sub_1000088CC(v115);
  }

  while (1)
  {
    v11 = *v9;
    if (**v9 == v7)
    {
      break;
    }

    if (++v9 == v10)
    {
      goto LABEL_7;
    }
  }

  if ((v94 - 3) <= 0xFFFFFFFD)
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081C8F8();
    }

    return sub_1000088CC(v115);
  }

  v88 = &v84;
  v12 = byte_1008A5F68[v94];
  __chkstk_darwin(v8);
  bzero(&v84 - 32 * v12, v13);
  if (v12 + 2 > v5)
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081C888();
    }

    return sub_1000088CC(v115);
  }

  if (*v95 > 0x1Fu)
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081C818();
    }

    return sub_1000088CC(v115);
  }

  v90 = *v95;
  v16 = 0;
  v89 = (&v84 - 32 * v12 + 320);
  v85 = v12;
  if (v12 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v12;
  }

  v91 = (&v84 - 32 * v12);
  v92 = v17;
  v18 = 2;
  *&v15 = 136446466;
  v87 = v15;
  *&v15 = 67109632;
  v86 = v15;
  while (1)
  {
    if (v18 >= v5)
    {
      v23 = qword_100BCE8C0;
      v14 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR);
      if (v14)
      {
        *v118 = v86;
        *&v118[4] = v16;
        *&v118[8] = 1024;
        *&v118[10] = v18;
        *v119 = 1024;
        *&v119[2] = v5;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "versionInfoEvent: Reached end of strings in version info, count %d, %d >= %d", v118, 0x14u);
      }

      v91[256 * v16] = 0;
      goto LABEL_49;
    }

    v19 = (v95 + v18);
    if (v16 == 10)
    {
      v20 = 0;
      v21 = 0;
      do
      {
        v22 = v19[v20];
        if ((v22 - 48) > 9)
        {
          break;
        }

        if (v21 > 0x19999999 || 10 * v21 > 47 - v22)
        {
          v21 = 0;
          break;
        }

        v21 = 10 * v21 + v22 - 48;
        ++v20;
      }

      while (v20 != 10);
      v28 = sub_100340A44(v14, v21);
      v29 = v28;
      v30 = [v28 UTF8String];
      v31 = v90 == 4;
      strcpy(v89, v30);

      v14 = strlen(v19);
      v18 += v14 + 1;
      if (v31)
      {
        sub_100543C80(v7, v21);
        v32 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v7, v118);
          v33 = v118;
          if (v119[9] < 0)
          {
            v33 = *v118;
          }

          *buf = v87;
          *&buf[4] = v89;
          *&buf[12] = 2082;
          *&buf[14] = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Identification - Apple Audio Device firmware version of %{public}s for device %{public}s received.", buf, 0x16u);
          if ((v119[9] & 0x80000000) != 0)
          {
            operator delete(*v118);
          }
        }

        sub_100538900(v7);
      }

      goto LABEL_49;
    }

    v14 = strlen((v95 + v18));
    if (v14 != 1 || *v19 != 48)
    {
      break;
    }

    v91[256 * v16] = 0;
    v18 += 2;
LABEL_49:
    if (++v16 == v92)
    {
      v35 = v90;
      if (v90 == 13)
      {
        sub_100007E30(&v97, v89);
        sub_100541E60(v7, &v97);
        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }
      }

      else if (v90 == 4)
      {
        memset(buf, 0, sizeof(buf));
        v112 = 0;
        v113 = 0;
        v114 = 0;
        sub_1000DFC04(v7, &v112);
        v109 = 0;
        v110 = 0;
        v111 = 0;
        sub_10003E428(&v109, v112, v113, 0xAAAAAAAAAAAAAAABLL * ((v113 - v112) >> 3));
        v36 = v94;
        if (0xAAAAAAAAAAAAAAABLL * ((v110 - v109) >> 3) < 4)
        {
          LODWORD(v86) = 0;
        }

        else
        {
          v37 = *(v109 + 95);
          if ((v37 & 0x8000000000000000) != 0)
          {
            v37 = *(v109 + 80);
          }

          LODWORD(v86) = v37 > 1;
        }

        *v118 = &v109;
        sub_1000161FC(v118);
        sub_100007E30(v118, "");
        sub_10034A52C(buf, v118);
        if ((v119[9] & 0x80000000) != 0)
        {
          operator delete(*v118);
        }

        if ((v36 - 1) <= 1)
        {
          if (v85 <= 2)
          {
            v39 = 2;
          }

          else
          {
            v39 = v85;
          }

          v40 = v91 + 256;
          v41 = v39 - 1;
          do
          {
            sub_100007E30(v118, v40);
            sub_10034A52C(buf, v118);
            if ((v119[9] & 0x80000000) != 0)
            {
              operator delete(*v118);
            }

            v40 += 256;
            --v41;
          }

          while (v41);
        }

        memset(v108, 0, sizeof(v108));
        sub_10003E428(v108, *buf, *&buf[8], 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3));
        memset(v107, 0, sizeof(v107));
        v42 = sub_10003E428(v107, v112, v113, 0xAAAAAAAAAAAAAAABLL * ((v113 - v112) >> 3));
        v43 = sub_10034A65C(v42, v108, v107);
        *v118 = v107;
        sub_1000161FC(v118);
        *v118 = v108;
        sub_1000161FC(v118);
        if ((v43 & 1) == 0)
        {
          v44 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *v118 = 0;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "versionInfoEvent: New version information received", v118, 2u);
          }

          v45 = [CBProductInfo productInfoWithProductID:*(v11 + 20)];
          v46 = ([v45 flags] & 0x100000) == 0;
          if ((v46 | v86))
          {

            goto LABEL_83;
          }

          v104 = 0;
          v105 = 0;
          v106 = 0;
          sub_10003E428(&v104, *buf, *&buf[8], 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3));
          if (0xAAAAAAAAAAAAAAABLL * ((v105 - v104) >> 3) < 4)
          {
            *v118 = &v104;
            sub_1000161FC(v118);

LABEL_83:
            v35 = v90;
          }

          else
          {
            v47 = *(v104 + 95);
            if ((v47 & 0x8000000000000000) != 0)
            {
              v47 = *(v104 + 80);
            }

            v48 = v47 > 1;
            *v118 = &v104;
            sub_1000161FC(v118);

            v35 = v90;
            if (v48)
            {
              v51 = sub_100007EE8(v49, v50);
              v102[0] = _NSConcreteStackBlock;
              v102[1] = 3321888768;
              v102[2] = sub_10034A864;
              v102[3] = &unk_100AEC150;
              v102[4] = v7;
              memset(v103, 0, sizeof(v103));
              sub_10003E428(v103, *buf, *&buf[8], 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3));
              sub_10000CA94(v51, v102);
              *v118 = v103;
              sub_1000161FC(v118);
            }
          }

          memset(v101, 0, sizeof(v101));
          sub_10003E428(v101, *buf, *&buf[8], 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3));
          sub_100541A24(v7, v101);
          *v118 = v101;
          sub_1000161FC(v118);
          sub_1000DFC04(v7, buf);
        }

        if (qword_100B50AB0 != -1)
        {
          sub_10081A1B0();
          v35 = v90;
        }

        sub_100561C34(off_100B50AA8, v7);
        v52 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v7, v116);
          v53 = v117;
          v54 = v116[0];
          v55 = sub_1000E2C2C(v7);
          v56 = v116;
          v57 = *(v11 + 20);
          if (v53 < 0)
          {
            v56 = v54;
          }

          v58 = "no";
          *v118 = 136446978;
          *&v118[4] = v56;
          *&v118[12] = 2082;
          if (v55)
          {
            v58 = "yes";
          }

          *v119 = v58;
          *&v119[8] = 1024;
          *&v119[10] = v57;
          v120 = 2082;
          v121 = v89;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "versionInfoEvent: Device %{public}s dev-fused: %{public}s pId: 0x%x FW version: %{public}s", v118, 0x26u);
          if (v117 < 0)
          {
            operator delete(v116[0]);
          }
        }

        if (strlen(v91 + 768) <= 1)
        {
          v98 = 0;
          v99 = 0;
          v100 = 0;
          sub_10003E428(&v98, *buf, *&buf[8], 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3));
          if (0xAAAAAAAAAAAAAAABLL * ((v99 - v98) >> 3) < 4)
          {
            goto LABEL_101;
          }

          v59 = *(v98 + 95);
          if ((v59 & 0x8000000000000000) != 0)
          {
            v59 = *(v98 + 80);
          }

          if (v59 < 2)
          {
LABEL_101:
            v60 = "?";
          }

          else
          {
            v60 = (*buf + 72);
            if (*(*buf + 95) < 0)
            {
              v60 = *v60;
            }
          }

          snprintf(v91 + 768, 0x100uLL, "%s", v60);
          *v118 = &v98;
          sub_1000161FC(v118);
        }

        v61 = sub_10000E92C();
        v62 = (*(*v61 + 160))(v61);
        if (v62)
        {
          v63 = sub_10033F3C8(v62, v93);
          v64 = v63;
          v65 = [v63 UTF8String];
          v66 = v91;
          v67 = fopen(v65, "w");
          if (v67)
          {
            fwrite("App Version Info Collected from Accessory Device\n\n", 0x32uLL, 1uLL, v67);
            fwrite("New Features Enabled: 1\n", 0x18uLL, 1uLL, v67);
            v68 = sub_100304810(v93);
            fprintf(v67, "Device Bluetooth Address: %s\n", v68);
            fprintf(v67, "Device Product ID: %d\n", *(v11 + 20));
            v69 = sub_1000E2C2C(v7);
            v94 = v63;
            v70 = "Prod-fused";
            if (v69)
            {
              v70 = "Dev-fused";
            }

            fprintf(v67, "Fusing: %s\n\n", v70);
            v71 = 0;
            v72 = 8 * v92;
            do
            {
              v73 = strlen(v66);
              if (v71 == 32 && (v74 = v73, v73 >= 20))
              {
                __chkstk_darwin(v73);
                v75 = &v84 - ((v74 + 9) & 0xFFFFFFFFFFFFFFF0);
                if (v76 >= 4)
                {
                  v77 = v74 - 9;
                }

                else
                {
                  v77 = 0;
                }

                bzero(v75 + 3, v77);
                *v75 = *(v66 + 3);
                v75[2] = v66[5];
                v75[3] = 46;
                *(v75 + 2) = *(v66 + 3);
                v75[6] = v66[8];
                v75[7] = 46;
                *(v75 + 4) = *(v66 + 9);
                v75[10] = v66[11];
                v75[11] = 126;
                memcpy(v75 + 12, v66 + 19, v74 - 19);
                v75[v74 - 7] = 0;
                fprintf(v67, "%s: %s (%s)\n", off_100B54018[0], &v84 - ((v74 + 9) & 0xFFFFFFFFFFFFFFF0), v66);
              }

              else
              {
                fprintf(v67, "%s: %s\n", off_100B53FF8[v71 / 8], v66);
              }

              v71 += 8;
              v66 += 256;
            }

            while (v72 != v71);
            fclose(v67);
            v63 = v94;
          }

          else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
          {
            v78 = __error();
            sub_10081C70C(v63, v78, v116);
          }

          v35 = v90;
        }

        if (qword_100B508D0 != -1)
        {
          sub_10081AB8C();
          v35 = v90;
        }

        sub_100790AA4();
        *v118 = &v112;
        sub_1000161FC(v118);
        *v118 = buf;
        sub_1000161FC(v118);
        v38 = 1;
LABEL_123:
        v94 = v11 + 20;
        v79 = v11[v35 + 20];
        if (v79)
        {
          v80 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v7, buf);
            v81 = (buf[23] & 0x80u) == 0 ? buf : *buf;
            v82 = v11[16];
            *v118 = 136446722;
            *&v118[4] = v81;
            *&v118[12] = 1024;
            *v119 = v35;
            *&v119[4] = 2112;
            *&v119[6] = v82;
            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "versionInfoEvent: Overwriting already existing version info for device %{public}s (index = %d); destroying old CoreAcc connection %@", v118, 0x1Cu);
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }

          sub_10035C394(v79);
          operator delete();
        }

        LODWORD(v92) = v38;
        operator new();
      }

      v38 = 0;
      goto LABEL_123;
    }
  }

  if ((v16 - 11) <= 1)
  {
    v24 = [[NSUUID alloc] initWithUUIDBytes:v19];
    v25 = [v24 UUIDString];
    v26 = v25;
    v27 = [v25 UTF8String];
    strcpy(&v91[256 * v16], v27);

    v18 += 17;
    goto LABEL_49;
  }

  if (strnlen(v19, 0x100uLL) < 0x100)
  {
    v34 = strcpy(&v91[256 * v16], v19);
    v14 = strlen(v34);
    v18 += v14 + 1;
    goto LABEL_49;
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081C690();
  }

  return sub_1000088CC(v115);
}

void sub_10034A390(_Unwind_Exception *a1)
{
  *(v2 - 176) = v1;
  sub_1000161FC((v2 - 176));
  *(v2 - 176) = v2 - 248;
  sub_1000161FC((v2 - 176));
  *(v2 - 176) = v2 - 128;
  sub_1000161FC((v2 - 176));
  sub_1000088CC(v2 - 224);
  _Unwind_Resume(a1);
}

BOOL sub_10034A4D4(uint64_t a1, void *a2, unsigned int a3)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= a3)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v3 = *a2 + 24 * a3;
  v4 = *(v3 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(v3 + 8);
  }

  return v4 > 1;
}

const void **sub_10034A52C(const void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000C7698();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_10035FDB8(result, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = result[1] - *result;
    v15 = (v12 - v14);
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_100360AC8(v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 2) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v7 = (v4 + 24);
  }

  v3[1] = v7;
  return result;
}

uint64_t sub_10034A65C(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = a2[1];
  if (v6 - v5 != a3[1] - *a3)
  {
    return 0;
  }

  if (v6 != v5)
  {
    v8 = 0;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3);
    v10 = 23;
    do
    {
      if (v10 != 23)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        sub_10003E428(&v31, v5, v6, v9);
        if (0xAAAAAAAAAAAAAAABLL * ((v32 - v31) >> 3) <= v8)
        {
          goto LABEL_10;
        }

        v11 = *(v31 + v10);
        if ((v11 & 0x8000000000000000) != 0)
        {
          v11 = *(v31 + v10 - 15);
        }

        if (v11 < 2)
        {
LABEL_10:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          sub_10003E428(&v28, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
          if (0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3) <= v8)
          {
            v34 = &v28;
            sub_1000161FC(&v34);
            v34 = &v31;
            sub_1000161FC(&v34);
            goto LABEL_29;
          }

          v12 = *(v28 + v10);
          if ((v12 & 0x8000000000000000) != 0)
          {
            v12 = *(v28 + v10 - 15);
          }

          v34 = &v28;
          sub_1000161FC(&v34);
          v34 = &v31;
          sub_1000161FC(&v34);
          if (v12 < 2)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v34 = &v31;
          sub_1000161FC(&v34);
        }

        v13 = (*a2 + v10);
        v14 = (*a3 + v10);
        v15 = *v13;
        if (v15 >= 0)
        {
          v16 = *v13;
        }

        else
        {
          v16 = *(v13 - 15);
        }

        v17 = *v14;
        v18 = v17;
        if ((v17 & 0x80u) != 0)
        {
          v17 = *(v14 - 15);
        }

        if (v16 != v17)
        {
          return 0;
        }

        v21 = *(v13 - 23);
        v19 = (v13 - 23);
        v20 = v21;
        v22 = v15 >= 0 ? v19 : v20;
        v25 = *(v14 - 23);
        v24 = v14 - 23;
        v23 = v25;
        v26 = v18 >= 0 ? v24 : v23;
        if (memcmp(v22, v26, v16))
        {
          return 0;
        }
      }

LABEL_29:
      ++v8;
      v5 = *a2;
      v6 = a2[1];
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 3);
      v10 += 24;
    }

    while (v9 > v8);
  }

  return 1;
}

void sub_10034A848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  sub_1000161FC(&a16);
  _Unwind_Resume(a1);
}

void sub_10034A864(uint64_t a1)
{
  v13[0] = 0;
  v13[1] = 0;
  if (qword_100B51078 != -1)
  {
    sub_10081B02C();
  }

  v2 = *(a1 + 32);
  v3 = sub_1000AF8E0(off_100B51070, (v2[128] << 40) | (v2[129] << 32) | (v2[130] << 24) | (v2[131] << 16) | (v2[132] << 8) | v2[133], v13);
  v4 = qword_100BCE8C0;
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = (v5 + 72);
      if (*(v5 + 95) < 0)
      {
        v6 = *v6;
      }

      v11 = 136315138;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "versionInfoEvent: Setting key for %s", &v11, 0xCu);
    }

    if (qword_100B51078 != -1)
    {
      sub_10081C0CC();
    }

    v7 = *(a1 + 40);
    v8 = (v7 + 72);
    if (*(v7 + 95) < 0)
    {
      v8 = *v8;
    }

    v9 = off_100B51070;
    v10 = [NSString stringWithUTF8String:v8];
    sub_1007B0C38(v9, v10, v13);
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081C9BC();
  }
}

uint64_t *sub_10034AA10(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = (a1 + 40);
  v2[2] = 0;
  return sub_10003E428(v2, *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
}

void sub_10034AA64(uint64_t a1, int *a2, unsigned int a3, unsigned int a4, const UInt8 *a5)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  v14 = *a2;
  v15 = *(a2 + 2);
  v10 = sub_1000E6554(off_100B508E8, &v14, 1);
  if (v10)
  {
    for (i = *(a1 + 336); ; ++i)
    {
      if (i == *(a1 + 344))
      {
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
        {
          sub_10081CB28();
        }

        return;
      }

      if (**i == v10)
      {
        break;
      }
    }

    if (a3 <= 0x1F && (v12 = (*i)[a3 + 20]) != 0 && *(v12 + 97) == 1 && *(v12 + 88))
    {
      v13 = CFDataCreate(kCFAllocatorDefault, a5, a4);
      if ((acc_transportClient_processIncomingData() & 1) != 0 || !os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        if (!v13)
        {
          return;
        }

        goto LABEL_17;
      }

      sub_10081C9F8();
      if (v13)
      {
LABEL_17:
        CFRelease(v13);
      }
    }

    else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081CA90();
    }
  }
}

void sub_10034ABFC(uint64_t a1, uint64_t a2, unsigned int a3, const UInt8 *a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, __p, 1);
  if (v8)
  {
    v9 = v8;
    for (i = *(a1 + 336); ; i += 8)
    {
      if (i == *(a1 + 344))
      {
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
        {
          sub_10081CCF0();
        }

        return;
      }

      if (**i == v8)
      {
        break;
      }
    }

    v11 = qword_100BCE8C0;
    if (*(*i + 136))
    {
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v9, __p);
        if (v15 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        *buf = 67109378;
        v17 = a3;
        v18 = 2082;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "authenticationDataEvent: Processing %d bytes received from device %{public}s", buf, 0x12u);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v13 = CFDataCreate(kCFAllocatorDefault, a4, a3);
      if ((acc_transportClient_processIncomingData() & 1) != 0 || !os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        if (!v13)
        {
          return;
        }

        goto LABEL_21;
      }

      sub_10081CBC0();
      if (v13)
      {
LABEL_21:
        CFRelease(v13);
      }
    }

    else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081CC58();
    }
  }
}

void sub_10034AE18(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6)
{
  v7 = a5;
  v8 = a4;
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *buf = *a2;
  *v21 = *(a2 + 4);
  v11 = sub_1000E6554(off_100B508E8, buf, 1);
  if (v11)
  {
    v12 = v11;
    v13 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(v12, __p);
      v14 = v19 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *v21 = v14;
      *&v21[8] = 1024;
      v22 = a3;
      v23 = 1024;
      v24 = v8;
      v25 = 1024;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "received setup command from device %s, setupType = %d, opType = %d, pldLen = %d", buf, 0x1Eu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (a3 == 1)
    {
      if (v7 >= 2)
      {
        if (!a6)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/aacp/AACPClient.mm", 5939, "pldData");
        }

        v15 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *a6;
          *buf = 67109376;
          *v21 = v8;
          *&v21[4] = 1024;
          *&v21[6] = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "received seal setup operation opType = %d result = %d", buf, 0xEu);
        }
      }

      if (qword_100B508E0 != -1)
      {
        sub_10081A1D8();
      }

      sub_100518DD4(off_100B508D8, v12, 1, v8, v7, a6);
    }

    else
    {
      v17 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v21 = a3;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unsupported setup type = %d", buf, 8u);
      }
    }
  }
}

void sub_10034B07C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *buf = *a2;
  LOWORD(v27) = *(a2 + 4);
  v5 = sub_1000E6554(off_100B508E8, buf, 1);
  if (v5)
  {
    v6 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a3;
      v8 = *(a3 + 1);
      v9 = *(a3 + 3);
      v10 = *(a3 + 7);
      v11 = a3[9];
      v12 = *(a3 + 10);
      v13 = *(a3 + 18);
      v14 = *(a3 + 22);
      if (!v14)
      {
        v14 = "";
      }

      *buf = 67110914;
      v27 = v7;
      v28 = 1024;
      v29 = v8;
      v30 = 1024;
      v31 = v9;
      v32 = 1024;
      v33 = v10;
      v34 = 1024;
      v35 = v11;
      v36 = 2048;
      v37 = v12;
      v38 = 1024;
      v39 = v13;
      v40 = 2082;
      v41 = v14;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "caseInfoResponseEvent: messageVersion = %u, vendorID = %u, productID = %u, vendorIDSource = %u, caseColor = %u, caseVersion = %llu, reserved = %u, caseName = %{public}s", buf, 0x3Au);
    }

    v15 = *a3;
    v16 = *(a3 + 1);
    v17 = *(a3 + 3);
    v18 = *(a3 + 7);
    v19 = a3[9];
    v20 = *(a3 + 10);
    v21 = *(a3 + 18);
    if (*(a3 + 22))
    {
      v22 = *(a3 + 22);
    }

    else
    {
      v22 = "";
    }

    sub_100007E30(&__p, v22);
    sub_100541F64(v5, v15, v16, v17, v18, v19, v20, v21, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (sub_1000E356C(v5))
    {
      v23 = 0xFFFFLL;
    }

    else
    {
      v23 = 65533;
    }

    sub_1003393C0(a1, v5, 0xFFFFLL, v23);
    if (qword_100B50AB0 != -1)
    {
      sub_10081A1B0();
    }

    sub_100562F10(off_100B50AA8, v5);
  }
}

void sub_10034B2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10034B2E0(uint64_t a1, uint64_t a2, int a3, int a4, char *a5)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  v15 = *a2;
  LOWORD(v16) = *(a2 + 4);
  v9 = sub_1000E6554(off_100B508E8, &v15, 1);
  if (v9)
  {
    v10 = v9;
    v11 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *a5;
      v15 = 67109632;
      v16 = a3;
      v17 = 1024;
      v18 = a4;
      v19 = 1024;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "deviceInfoEvent: devInfoType = %u, devInfoLen = %u, devInfoData=%d", &v15, 0x14u);
    }

    if (a3 == 1)
    {
      v13 = sub_10054B004(v10, *a5);
      sub_10034B464(v13, v10);
    }

    else
    {
      v14 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 67109120;
        v16 = a3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unsupported device info type = %d", &v15, 8u);
      }
    }
  }
}

void sub_10034B464(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE8C0;
  v4 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    sub_1000C23E0(a2, __p);
    if (v14 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315138;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notify EU region bit change for device %s", buf, 0xCu);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = sub_1000D999C(v4, v5);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100354FC4;
  v12[3] = &unk_100ADF8F8;
  v12[4] = a2;
  sub_10000CA94(v7, v12);
  v10 = sub_1000DAB84(v8, v9);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100355024;
  v11[3] = &unk_100ADF8F8;
  v11[4] = a2;
  sub_10000CA94(v10, v11);
}

uint64_t sub_10034B5E0(uint64_t a1, uint64_t a2, unsigned int *a3, int a4, unsigned __int8 *a5)
{
  v9 = *a5;
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  v15 = *a2;
  LOWORD(v16) = *(a2 + 4);
  result = sub_1000E6554(off_100B508E8, &v15, 1);
  if (result)
  {
    v11 = result;
    v12 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_100304810(a2);
      v14 = "Unknown";
      v15 = 136315650;
      v16 = v13;
      if (v9 == 1)
      {
        v14 = "Audio Arbitration";
      }

      v17 = 2080;
      v18 = v14;
      v19 = 1024;
      v20 = a4 - 1;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Receive relay message from device %s, relayMessageType -> %s, relayMessageLen -> %d", &v15, 0x1Cu);
    }

    if (qword_100B508E0 != -1)
    {
      sub_10081A1D8();
    }

    return sub_100518DD8(off_100B508D8, v11, a3, v9, (a4 - 1), a5 + 1);
  }

  return result;
}

uint64_t sub_10034B768(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, char *a7, size_t a8, char *__src)
{
  v27[0] = 0;
  v27[1] = 0;
  sub_100007F88(v27, a1 + 360);
  if (qword_100B508F0 != -1)
  {
    sub_10081A4E4();
  }

  *buf = *a2;
  LOWORD(v29) = *(a2 + 4);
  v17 = sub_1000E6554(off_100B508E8, buf, 1);
  if (!v17 || (v18 = *(a1 + 336), v19 = *(a1 + 344), v18 == v19))
  {
LABEL_7:
    v21 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      if (a7[23] < 0)
      {
        a7 = *a7;
      }

      *buf = 67110402;
      v29 = a3;
      v30 = 1024;
      v31 = a4;
      v32 = 1024;
      v33 = a5;
      v34 = 1024;
      v35 = a6;
      v36 = 2080;
      v37 = a7;
      v38 = 1024;
      v39 = a8;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "AACPClient::getCertificatesResponseEvent (not handled, connection is gone) - certSeqNum == %d, responseInfo == %d, endpointType == %d, serialNumberLength == %d, serialNumber == %s, certificateLength == %d", buf, 0x2Au);
    }
  }

  else
  {
    while (1)
    {
      v20 = *v18;
      if (**v18 == v17)
      {
        break;
      }

      if (++v18 == v19)
      {
        goto LABEL_7;
      }
    }

    v22 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v23 = a7;
      if (a7[23] < 0)
      {
        v23 = *a7;
      }

      *buf = 67110402;
      v29 = a3;
      v30 = 1024;
      v31 = a4;
      v32 = 1024;
      v33 = a5;
      v34 = 1024;
      v35 = a6;
      v36 = 2080;
      v37 = v23;
      v38 = 1024;
      v39 = a8;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "AACPClient::getCertificatesResponseEvent - certSeqNum == %d, responseInfo == %d, endpointType == %d, serialNumberLength == %d, serialNumber == %s, certificateLength == %d", buf, 0x2Au);
    }

    if (a7[23] < 0)
    {
      sub_100008904(__p, *a7, *(a7 + 1));
    }

    else
    {
      *__p = *a7;
      v26 = *(a7 + 2);
    }

    sub_10034BA34(v20, a2, a3, a4, a5, a6, __p, a8, __src);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return sub_1000088CC(v27);
}

uint64_t sub_10034BA34(uint64_t a1, int *a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, size_t a8, char *__src)
{
  v9 = a8;
  v11 = a3;
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 536);
  if (*(a1 + 528))
  {
    v14 = *(a1 + 532);
    goto LABEL_3;
  }

  if (v11)
  {
    v14 = *(a1 + 532);
    if (v14 != -1)
    {
LABEL_3:
      if (v14 == v11)
      {
        if (!v11)
        {
          operator new();
        }

        sub_10035FB3C(*(*(a1 + 512) - 8), *(*(*(a1 + 512) - 8) + 8), __src, &__src[v9], v9);
        switch(a4)
        {
          case 2:
            *(a1 + 528) = 0;
            *(a1 + 532) = -1;
            sub_100355E1C(a1);
            v17 = sub_10000F034(v15, v16);
            v19 = *a2;
            v20 = *(a2 + 2);
            (*(*v17 + 392))(v17, &v19, 3, 0);
            break;
          case 1:
            *(a1 + 528) = 1;
            *(a1 + 532) = 0;
            break;
          case 0:
            *(a1 + 528) = 0;
            ++*(a1 + 532);
            break;
        }
      }

      else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_10081CD88();
      }

      goto LABEL_19;
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081CE04();
  }

LABEL_19:
  sub_10000801C(v21);
  return sub_1000088CC(v21);
}

uint64_t sub_10034BD5C(uint64_t a1, int *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 360);
  if (qword_100B508F0 != -1)
  {
    sub_10081A4E4();
  }

  __p = *a2;
  __p_4 = *(a2 + 2);
  sub_1000E6554(off_100B508E8, &__p, 1);
  if (v4 == 1)
  {
    if (a3[1] - *a3 == 1)
    {
      operator new();
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081CEB0();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081CE40();
  }

  return sub_1000088CC(v10);
}

void sub_10034BF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10034BF9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v6 = a3;
  v33[0] = 0;
  v33[1] = 0;
  sub_100007F88(v33, a1 + 360);
  if (v6 < 2)
  {
    v9 = *a5;
    v8 = a5[1];
    v10 = +[NSDate date];
    [v10 timeIntervalSince1970];
    v12 = v11;

    v13 = v8 - v9;
    v14 = v13 / 0x11u;
    v15 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v35 = v13 / 0x11u;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "AACPClient::getBTEventHistoryListMessageEvent - Last %u BT Events \n", buf, 8u);
    }

    if (v13 >= 0x11u)
    {
      v16 = 0;
      v17 = v13;
      if (v14 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v14;
      }

      v19 = v18 + 16 * v18;
      v20 = 1;
      while (v16 + 17 <= v17)
      {
        memset(v32, 0, 17);
        v21 = *a5 + v16;
        v22 = *(v21 + 16);
        v32[0] = *v21;
        LOBYTE(v32[1]) = v22;
        v31 = 0;
        v30 = 0;
        v23 = sub_1000075EC(&v30, v32 + 8, 6uLL);
        v24 = sub_10034C2A0(v12, v23, a4, *&v32[0]);
        v25 = sub_10034C3AC(a1, BYTE14(v32[0]), *(v32 + 15));
        v26 = sub_100304810(&v30);
        v27 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109890;
          v35 = v20;
          v36 = 2114;
          v37 = v24;
          v38 = 2082;
          v39 = v26;
          v40 = 2114;
          v41 = v25;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "BTEventHistory: %2d. Time: %{public}@, BT Addr: %{public}s, Event: %{public}@", buf, 0x26u);
        }

        v16 += 17;
        ++v20;
        if (v19 == v16)
        {
          return sub_1000088CC(v33);
        }
      }

      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_10081CF20();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081CF5C();
  }

  return sub_1000088CC(v33);
}

void sub_10034C258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

id sub_10034C2A0(double a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = [[NSDate alloc] initWithTimeIntervalSince1970:a1 - a3 / 1000000.0 + a4 / 1000000.0];
  v5 = objc_alloc_init(NSDateFormatter);
  [v5 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS zzz"];
  v6 = [v5 stringFromDate:v4];
  v7 = [NSString stringWithFormat:@"%@", v6];

  return v7;
}

void sub_10034C380(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_10034C3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 <= 5)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        [NSString stringWithFormat:@"Pairing, Status: %u", a3, v7];
      }

      else if (a2 == 4)
      {
        [NSString stringWithFormat:@"Unpairing, Status: %u", a3, v7];
      }

      else
      {
        [NSString stringWithFormat:@"UTP Connect, Status: %u", a3, v7];
      }

      goto LABEL_29;
    }

    if (a2 == 1)
    {
      if (a3 == 2)
      {
        [NSString stringWithFormat:@"Connect, Direction: Source initiated, Status %u", 2, v7];
      }

      else if (a3 == 1)
      {
        [NSString stringWithFormat:@"Connect, Direction: Accessory initiated, Status %u", 1, v7];
      }

      else
      {
        [NSString stringWithFormat:@"Connect, Invalid direction: %u", a3, v7];
      }

      goto LABEL_29;
    }

    if (a2 != 2)
    {
      goto LABEL_26;
    }

    [NSString stringWithFormat:@"Disconnect, Reason: %u", a3, v7];
  }

  else
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        [NSString stringWithFormat:@"UTP Disconnect, Reason: %u", a3, v7];
      }

      else if (a2 == 7)
      {
        [NSString stringWithFormat:@"LE Connect, Status: %u", a3, v7];
      }

      else
      {
        [NSString stringWithFormat:@"LE Disconnect, Reason: %u", a3, v7];
      }

      goto LABEL_29;
    }

    switch(a2)
    {
      case 9:
        [NSString stringWithFormat:@"Connect, Accessory Initiated, Status: %u", a3, v7];
        break;
      case 0xA:
        [NSString stringWithFormat:@"Connect, Source Initiated, Status: %u", a3, v7];
        break;
      case 0xB:
        v4 = sub_10035532C(a1, a3);
        v5 = [NSString stringWithFormat:@"Disconnect Req, Reason: %@ (%u)", v4, a3];

        goto LABEL_30;
      default:
LABEL_26:
        [NSString stringWithFormat:@"Unknown: %X, Status: %u", a2, a3];
        break;
    }
  }

  v5 = LABEL_29:;
LABEL_30:

  return v5;
}

uint64_t sub_10034C5FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 360);
  if (qword_100B508F0 != -1)
  {
    sub_10081A4E4();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v5 = sub_1000E6554(off_100B508E8, __p, 1);
  if (v5)
  {
    v6 = a3[1] - *a3;
    v7 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v5, __p);
      v8 = v11 >= 0 ? __p : __p[0];
      *buf = 136446466;
      v14 = v8;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Conversation Detect Message Received from device %{public}s, len -> %u", buf, 0x12u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B508E0 != -1)
    {
      sub_10081A1D8();
    }

    sub_100518E5C(off_100B508D8, v5, v6, *a3);
  }

  return sub_1000088CC(v12);
}

void sub_10034C78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10034C7B0(uint64_t a1, uint64_t a2, unsigned __int8 **a3)
{
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 360);
  if (qword_100B508F0 != -1)
  {
    sub_10081A4E4();
  }

  *buf = *a2;
  LOWORD(v24) = *(a2 + 4);
  v6 = sub_1000E6554(off_100B508E8, buf, 1);
  v7 = *a3;
  v8 = **a3;
  if (v8 == 1)
  {
    v13 = *(v7 + 1);
    v14 = *(v7 + 2);
    v15 = *(v7 + 3);
    v16 = *(v7 + 4);
    v17 = *(v7 + 6);
    v18 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110144;
      v24 = v13;
      v25 = 1024;
      v26 = v14;
      v27 = 1024;
      v28 = v15;
      v29 = 1024;
      v30 = v16;
      v31 = 1024;
      v32 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "AACPClient::adaptiveVolumeMessageRecvEvent: setAdaptiveVolumeRequestTargets media: %u, telephony: %u, voiceCommand: %u, rampUpRate: %u ms, rampDownRate: %u ms", buf, 0x20u);
    }

    v19 = sub_10034CB08(a1, v13 | (v14 << 8) | (v15 << 16) | (v16 << 24) | (v17 << 40));
    if (qword_100B50AE0 != -1)
    {
      sub_10081A23C();
    }

    sub_1004DAFF4(qword_100B50AD8, v6, v19);
  }

  else if (v8 == 4)
  {
    v9 = *(v7 + 1);
    v10 = *(v7 + 2);
    v11 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v24 = v9;
      v25 = 1024;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "AACPClient::adaptiveVolumeMessageRecvEvent: setDRC mode: %u, version: %u", buf, 0xEu);
    }

    if (v10 == 1)
    {
      if (qword_100B540B0 != -1)
      {
        sub_10081B958();
      }

      sub_1006C214C(qword_100B540A8, v6, v9);
      if (qword_100B50AE0 != -1)
      {
        sub_10081A23C();
      }

      v12 = v9 != 0;
      goto LABEL_25;
    }

    if (!v10)
    {
      if (qword_100B540B0 != -1)
      {
        sub_10081B958();
      }

      v12 = v9 == 1;
      sub_1006C20F8(qword_100B540A8, v6, v12);
      if (qword_100B50AE0 != -1)
      {
        sub_10081A23C();
      }

LABEL_25:
      sub_1004DB094(qword_100B50AD8, v6, v12);
    }
  }

  else
  {
    v20 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "AACPClient::adaptiveVolumeMessageRecvEvent: invalid message type", buf, 2u);
    }
  }

  return sub_1000088CC(v22);
}

id sub_10034CB08(uint64_t a1, unint64_t a2)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 360);
  v3 = objc_alloc_init(NSMutableDictionary);
  *&v4 = a2 / 100.0;
  v5 = [NSNumber numberWithFloat:v4];
  [v3 setObject:v5 forKey:@"kCBMsgArgParamAutoVolumeMediaTarget"];
  *&v6 = BYTE1(a2) / 100.0;
  v7 = [NSNumber numberWithFloat:v6];
  [v3 setObject:v7 forKey:@"kCBMsgArgParamAutoVolumeTelephonyTarget"];
  *&v8 = BYTE2(a2) / 100.0;
  v9 = [NSNumber numberWithFloat:v8];
  [v3 setObject:v9 forKey:@"kCBMsgArgParamAutoVolumeVoiceTarget"];
  *&v10 = (a2 >> 24);
  v11 = [NSNumber numberWithFloat:v10];
  [v3 setObject:v11 forKey:@"kCBMsgArgParamAutoVolumeRampUpRate"];
  *&v12 = (HIDWORD(a2) >> 8);
  v13 = [NSNumber numberWithFloat:v12];
  [v3 setObject:v13 forKey:@"kCBMsgArgParamAutoVolumeRampDownRate"];

  sub_1000088CC(v15);

  return v3;
}

void sub_10034CCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = v12;

  sub_1000088CC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10034CD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 360);
  if (qword_100B508F0 != -1)
  {
    sub_10081A4E4();
  }

  *buf = *a2;
  LOWORD(v10) = *(a2 + 4);
  v5 = sub_1000E6554(off_100B508E8, buf, 1);
  v6 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Prox Card Status: Received Prox Card Features: 0x%llx", buf, 0xCu);
  }

  sub_1005393CC(v5, a3);
  return sub_1000088CC(v8);
}

void sub_10034CE58(uint64_t a1, uint64_t a2, int a3, unsigned __int8 **a4)
{
  v6 = qword_100BCE8C0;
  v7 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
  if (a3 <= 1)
  {
    if (!a3)
    {
      if (!v7)
      {
        return;
      }

      v21 = (*a4)[8];
      v22 = (*a4)[7];
      v23 = (*a4)[6];
      v24 = (*a4)[5];
      v25 = (*a4)[4];
      v26 = (*a4)[3];
      v27 = *(*a4 + 1);
      v28 = **a4;
      v33 = 67110912;
      v34 = v28;
      v35 = 1024;
      v36 = v27;
      v37 = 1024;
      v38 = v26;
      v39 = 1024;
      v40 = v25;
      v41 = 1024;
      v42 = v24;
      v43 = 1024;
      v44 = v23;
      v45 = 1024;
      v46 = v22;
      v47 = 1024;
      v48 = v21;
      v14 = "PerfStats: Connection Record | Direction: %u, Baseband time: %u, BBFC Scan Req Received: %u, Num 2.4G connections: %u, Num hrb connections: %u, UTP state: %u, RSSI: %u, Audio state: %u";
      v15 = v6;
      v16 = 50;
      goto LABEL_17;
    }

    if (a3 == 1)
    {
      if (!v7)
      {
        return;
      }

      v8 = *(*a4 + 9);
      v9 = *(*a4 + 7);
      v10 = *(*a4 + 5);
      v11 = *(*a4 + 3);
      v12 = *(*a4 + 1);
      v13 = **a4;
      v33 = 67110400;
      v34 = v13;
      v35 = 1024;
      v36 = v12;
      v37 = 1024;
      v38 = v11;
      v39 = 1024;
      v40 = v10;
      v41 = 1024;
      v42 = v9;
      v43 = 1024;
      v44 = v8;
      v14 = "PerfStats: Boot time Record | Boot type: %u, Boot time total: %u, Boot time end: %u, Boot time nvram init: %u, Boot time core loading: %u, UTP setup time: %u";
      v15 = v6;
      v16 = 38;
      goto LABEL_17;
    }

LABEL_10:
    if (!v7)
    {
      return;
    }

    v33 = 67109120;
    v34 = a3;
    v14 = "Invalid subtype %d";
    v15 = v6;
    v16 = 8;
    goto LABEL_17;
  }

  if (a3 == 2)
  {
    if (!v7)
    {
      return;
    }

    v29 = *(*a4 + 3);
    v30 = *(*a4 + 2);
    v31 = *(*a4 + 1);
    v32 = **a4;
    v33 = 67109888;
    v34 = v32;
    v35 = 1024;
    v36 = v31;
    v37 = 1024;
    v38 = v30;
    v39 = 1024;
    v40 = v29;
    v14 = "PerfStats: A2dp Record | AM setup: %u, DSP setup: %u, UTP config: %u, Snoop setup: %u";
  }

  else
  {
    if (a3 != 3)
    {
      goto LABEL_10;
    }

    if (!v7)
    {
      return;
    }

    v17 = *(*a4 + 3);
    v18 = *(*a4 + 2);
    v19 = *(*a4 + 1);
    v20 = **a4;
    v33 = 67109888;
    v34 = v20;
    v35 = 1024;
    v36 = v19;
    v37 = 1024;
    v38 = v18;
    v39 = 1024;
    v40 = v17;
    v14 = "PerfStats: Sco Record | AM setup: %u, DSP setup: %u, UTP config: %u, Snoop setup: %u";
  }

  v15 = v6;
  v16 = 26;
LABEL_17:
  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v33, v16);
}

uint64_t sub_10034D0FC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 360);
  if (qword_100B508D0 != -1)
  {
    sub_10081AB8C();
  }

  sub_1000CC438(off_100B508C8, a2, v12);
  v7 = sub_10004DF60(v12);
  v9 = sub_100432610(v7, v8);
  (*(*v9 + 208))(v9, v7, a3, a4);

  return sub_1000088CC(v11);
}

void sub_10034D1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10034D218(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 360);
  if (sub_100341598(a1, a2))
  {
    if (qword_100B508F0 != -1)
    {
      sub_10081A4E4();
    }

    LODWORD(__p[0]) = *a2;
    WORD2(__p[0]) = *(a2 + 4);
    v6 = sub_1000E6554(off_100B508E8, __p, 1);
    if (v6)
    {
      v7 = a3[1] - *a3;
      v8 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v6, __p);
        v9 = v12 >= 0 ? __p : __p[0];
        *buf = 136446466;
        v15 = v9;
        v16 = 1024;
        v17 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Multimodal Context Message Received from device %{public}s, len -> %u", buf, 0x12u);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (qword_100B508E0 != -1)
      {
        sub_10081A1D8();
      }

      sub_100515048(off_100B508D8, v6, v7, *a3);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081CFCC();
  }

  return sub_1000088CC(v13);
}

void sub_10034D3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10034D404(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 360);
  if (qword_100B508F0 != -1)
  {
    sub_10081A4E4();
  }

  *buf = *a2;
  LOWORD(v16) = *(a2 + 4);
  v5 = sub_1000E6554(off_100B508E8, buf, 1);
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1] - *a3;
    v8 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *v6;
      sub_1000E5A58(v5, __p);
      v10 = v13 >= 0 ? __p : __p[0];
      *buf = 67109634;
      v16 = v9;
      v17 = 2082;
      v18 = v10;
      v19 = 1024;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PME Config Message, subtype %d received from device %{public}s, len -> %u", buf, 0x18u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B508E0 != -1)
    {
      sub_10081A1D8();
    }

    sub_1005155B8(off_100B508D8, v5, v7, *a3);
  }

  return sub_1000088CC(v14);
}

void sub_10034D5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10034D5C8(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v31[0] = 0;
  v31[1] = 0;
  sub_100007F88(v31, a1 + 360);
  v8 = sub_100341598(a1, a2);
  v9 = qword_100BCE8C0;
  if (v8)
  {
    v26 = a2;
    v27 = v8;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (a4[1] - *a4) >> 3;
      *buf = 67109376;
      v33 = a3;
      v34 = 2048;
      v35 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "tipiTableEvent: Setting state %d and table of size %zu", buf, 0x12u);
    }

    v28 = a3;
    v12 = *a4;
    v11 = a4[1];
    if (v11 != *a4)
    {
      v13 = 0;
      v14 = qword_100BCE8C0;
      do
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = sub_100304810(v12 + 8 * v13);
          v16 = *a4 + 8 * v13;
          v17 = *(v16 + 6);
          LODWORD(v16) = *(v16 + 7);
          *buf = 67109891;
          v33 = v13 + 1;
          v34 = 2081;
          v35 = v15;
          v36 = 1024;
          v37 = v17;
          v38 = 1024;
          v39 = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "tipiTableEvent:   Entry %d: addr %{private}s, connectionStatus %u, stateFlags 0x%02x", buf, 0x1Eu);
          v14 = qword_100BCE8C0;
          ++v13;
          v12 = *a4;
          v11 = a4[1];
        }

        else
        {
          ++v13;
        }
      }

      while (v13 < (v11 - v12) >> 3);
    }

    *(v27 + 729) = v28;
    sub_100361EA4(&__p, a4);
    if (v27 + 92 != &__p)
    {
      sub_100362760(v27 + 92, __p, v30, (v30 - __p) >> 3);
    }

    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }

    sub_10000801C(v31);
    v18 = objc_alloc_init(CBDevice);
    v19 = [[NSData alloc] initWithBytes:v26 length:6];
    [v18 setBtAddressData:v19];

    v20 = objc_alloc_init(NSMutableArray);
    for (i = *a4; i != a4[1]; i += 8)
    {
      v22 = objc_alloc_init(CBDevice);
      v23 = [[NSData alloc] initWithBytes:i length:6];
      [v22 setBtAddressData:v23];

      [v22 setTipiConnectionStatus:*(i + 6)];
      [v22 setTipiState:*(i + 7)];
      [v20 addObject:v22];
    }

    [v18 setTipiDevices:v20];
    v24 = +[NSNotificationCenter defaultCenter];
    [v24 postNotificationName:@"com.apple.bluetooth.TipiChanged" object:v18 userInfo:0];
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081D008();
  }

  return sub_1000088CC(v31);
}
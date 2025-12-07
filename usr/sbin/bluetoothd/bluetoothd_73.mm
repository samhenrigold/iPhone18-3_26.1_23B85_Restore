uint64_t sub_10052C050(unint64_t a1, _DWORD *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (v4)
  {
    v5 = v4;
    result = 0;
    *a2 = -*(v5 + 1016);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083FE30();
    }

    return 7;
  }

  return result;
}

uint64_t sub_10052C0E4(unint64_t a1, int *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = v4;
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    v6 = sub_1000E2140(v5, 0x1Bu);
    result = 0;
    *a2 = v6 << 31 >> 31;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E55C();
    }

    return 212;
  }

  return result;
}

uint64_t sub_10052C1B4(unint64_t a1, _DWORD *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (v4)
  {
    v5 = v4;
    result = 0;
    *a2 = -*(v5 + 1032);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083FE64();
    }

    return 7;
  }

  return result;
}

uint64_t sub_10052C248(unint64_t a1, _DWORD *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = sub_10053D064(v4);
  result = 0;
  *a2 = v5;
  return result;
}

uint64_t sub_10052C2B0(unint64_t a1, _DWORD *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = sub_10053D11C(v4);
  result = 0;
  *a2 = v5;
  return result;
}

uint64_t sub_10052C318(unint64_t a1, int a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (v4)
  {
    v5 = v4;
    if (qword_100B50950 != -1)
    {
      sub_10083FE98();
    }

    v6 = off_100B50948;

    return sub_100349058(v6, v5, a2 != 0);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083FEAC();
    }

    return 7;
  }
}

uint64_t sub_10052C3E0(unint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_10000C7D0(a1, a2);
  if (!(*(*v6 + 3240))(v6))
  {
    return 2;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v7 = sub_1000E41C0(off_100B508E8, a1);
  if (v7)
  {
    v9 = v7;
    v10 = *(v7 + 128) | (*(v7 + 132) << 32);
    v11 = sub_10000C7D0(v7, v8);
    v12 = sub_1000DEB14(v9);
    v13 = *(*v11 + 56);

    return v13(v11, v10, v12, a2, a3 != 0, a3 != 0, 1, 1);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083FEE0();
    }

    return 7;
  }
}

uint64_t sub_10052C538(unint64_t a1, int *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = sub_10054F768(v4);
  result = 0;
  *a2 = v5 << 31 >> 31;
  return result;
}

uint64_t sub_10052C5A4(unint64_t a1, _DWORD *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    if (qword_100B508F0 != -1)
    {
      sub_10083FB04();
    }

    v4 = sub_1000E41C0(off_100B508E8, a1);
    if (v4)
    {
      v5 = sub_1000E45E8(v4);
      result = 0;
      *a2 = v5;
    }

    else
    {
      return 7;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E55C();
    }

    return 212;
  }

  return result;
}

uint64_t sub_10052C664(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    if (qword_100B508F0 != -1)
    {
      sub_10083FB04();
    }

    v4 = sub_1000E41C0(off_100B508E8, a1);
    if (v4)
    {
      v5 = v4;
      v6 = sub_100537AF8(v4, v2);
      v8 = sub_1000DAB84(v6, v7);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10052C7D4;
      v15[3] = &unk_100ADF940;
      v15[4] = v5;
      v16 = v2;
      sub_10000CA94(v8, v15);
      v11 = sub_1000D999C(v9, v10);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10052C82C;
      v13[3] = &unk_100ADF940;
      v13[4] = v5;
      v14 = v2;
      sub_10000CA94(v11, v13);
      return 0;
    }

    else
    {
      return 7;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E55C();
    }

    return 212;
  }
}

void sub_10052C7D4(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10083FD50();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_1004DD40C(v2, v3, v4);
}

void sub_10052C82C(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10083FF14();
  }

  v2 = off_100B50AC8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_1005E78B0(v2, v3, v4);
}

uint64_t sub_10052C884(unint64_t a1, _DWORD *a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v4 = sub_1000E41C0(off_100B508E8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = sub_1000E31D0(v4);
  result = 0;
  *a2 = ((v5 >> 1) & 1) - 1;
  return result;
}

uint64_t sub_10052CE54(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8)
{
  v9 = a6;
  v10 = a7;
  return a2(a3, a4, a5, &v9, a8);
}

uint64_t sub_10052CEC4(unint64_t a1, unint64_t *a2)
{
  if (qword_100B50B88 != -1)
  {
    sub_10083FF28();
  }

  v4 = sub_1000117DC(qword_100B50B80, a1);
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v5 = sub_100571C4C(off_100B50898, a1);
  *a2 = v5;
  if (v5)
  {
    return 0;
  }

  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    if (v4)
    {
      sub_10083FF3C(v4, v8, v7);
    }

    else
    {
      sub_10083FFD0(v8, v7);
    }
  }

  return 7;
}

uint64_t sub_10052CFD0(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v6 = sub_100059CB8(off_100B50898, a1);
  if (!v6)
  {
    return 7;
  }

  return sub_100572DEC(v6, a1, a2, a3);
}

uint64_t sub_10052D05C(uint64_t a1, __int128 *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  return sub_100572EE4(v4, a1, a2);
}

uint64_t sub_10052D0D4(unint64_t a1, int a2, int a3)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v6 = sub_100059CB8(off_100B50898, a1);
  if (!v6)
  {
    return 7;
  }

  v7 = v6;
  if (qword_100B50B88 != -1)
  {
    sub_10083FF28();
  }

  v8 = sub_1000117DC(qword_100B50B80, a1);
  if (v8)
  {
    v9 = v8;
    if (qword_100B50B88 != -1)
    {
      sub_10083FF28();
    }

    v10 = qword_100B50B80;
    v11 = sub_100011794(v9);
    v12 = sub_100618F20(v10, v11);
    v13 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(v9, __p);
      v14 = __p[0];
      v15 = "off";
      if (v28 >= 0)
      {
        v14 = __p;
      }

      if (a3 == -1)
      {
        v15 = "on";
      }

      *buf = 136446722;
      v30 = v14;
      v31 = 2082;
      v32 = v15;
      if (a2 == 1)
      {
        v16 = "Bluetooth";
      }

      else
      {
        v16 = "Unknown";
      }

      v33 = 2082;
      v34 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Session %{public}s is turning power %{public}s for module %{public}s", buf, 0x20u);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_100067238())
    {
      CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
      if (CTGreenTeaOsLogHandle)
      {
        v18 = CTGreenTeaOsLogHandle;
        if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
        {
          sub_100018384(v9, __p);
          v19 = __p[0];
          v20 = "off";
          if (v28 >= 0)
          {
            v19 = __p;
          }

          if (a3 == -1)
          {
            v20 = "on";
          }

          *buf = 136446722;
          v30 = v19;
          v31 = 2082;
          v32 = v20;
          if (a2 == 1)
          {
            v21 = "Bluetooth";
          }

          else
          {
            v21 = "Unknown";
          }

          v33 = 2082;
          v34 = v21;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Session %{public}s is turning power %{public}s for module %{public}s", buf, 0x20u);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v23 = sub_10000E92C();
  v24 = (*(*v23 + 8))(v23);
  if (a3 || (v24 & 1) != 0)
  {
    if (a3)
    {
      return sub_1005745E0(v7, v12);
    }
  }

  else
  {
    v26 = sub_10000F034(v24, v25);
    (*(*v26 + 160))(v26, 3);
  }

  return sub_100572D98(v7, v12);
}

uint64_t sub_10052D400(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v3 = sub_10000C798(a1, a2);
  if ((*(*v3 + 840))(v3, 1))
  {
    *a2 = -1;
  }

  return 0;
}

uint64_t sub_10052D468(unint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v2 = sub_100059CB8(off_100B50898, a1);
  if (!v2)
  {
    return 7;
  }

  v3 = v2;
  if (qword_100B50B88 != -1)
  {
    sub_10083FF28();
  }

  v4 = sub_1000117DC(qword_100B50B80, a1);
  if (v4)
  {
    v6 = v4;
    if (sub_100067238())
    {
      CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
      if (CTGreenTeaOsLogHandle)
      {
        v8 = CTGreenTeaOsLogHandle;
        if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
        {
          sub_100018384(v6, __p);
          if (v12 >= 0)
          {
            v9 = __p;
          }

          else
          {
            v9 = __p[0];
          }

          *buf = 136446210;
          v14 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Session %{public}s is asking to power down local device ", buf, 0xCu);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  return sub_1005747C8(v3, v5);
}

uint64_t sub_10052D5C4(unint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v2 = sub_100059CB8(off_100B50898, a1);
  if (!v2)
  {
    return 7;
  }

  v3 = v2;
  if (qword_100B50B88 != -1)
  {
    sub_10083FF28();
  }

  v4 = sub_1000117DC(qword_100B50B80, a1);
  if (v4)
  {
    v6 = v4;
    if (sub_100067238())
    {
      CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
      if (CTGreenTeaOsLogHandle)
      {
        v8 = CTGreenTeaOsLogHandle;
        if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
        {
          sub_100018384(v6, __p);
          if (v12 >= 0)
          {
            v9 = __p;
          }

          else
          {
            v9 = __p[0];
          }

          *buf = 136446210;
          v14 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Session %{public}s is asking to reset local device", buf, 0xCu);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  return sub_10057480C(v3, v5);
}

uint64_t sub_10052D720(uint64_t a1, _DWORD *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  v6 = 0;
  result = sub_10057499C(v4, &v6);
  if (result)
  {
    return 1;
  }

  *a2 = -v6;
  return result;
}

uint64_t sub_10052D7A4(uint64_t a1, char *a2, size_t a3)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v6 = sub_100059CB8(off_100B50898, a1);
  if (!v6)
  {
    return 7;
  }

  v14 = 0;
  v13 = 0;
  result = sub_100574B84(v6, &v13);
  if (!result)
  {
    __source = 0;
    v11 = 0;
    v12 = 0;
    sub_1000BE6F8(&v13, &__source);
    if (SHIBYTE(v12) < 0)
    {
      if (v11 + 1 > a3)
      {
        v8 = 5;
LABEL_15:
        operator delete(__source);
        return v8;
      }

      p_source = __source;
    }

    else
    {
      if (HIBYTE(v12) + 1 > a3)
      {
        return 5;
      }

      p_source = &__source;
    }

    strlcpy(a2, p_source, a3);
    v8 = 0;
    result = 0;
    if (SHIBYTE(v12) < 0)
    {
      goto LABEL_15;
    }
  }

  return result;
}

void sub_10052D8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052D8C0(unint64_t a1, int a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = v4;
  if (qword_100B50B88 != -1)
  {
    sub_10083FF28();
  }

  v6 = sub_1000117DC(qword_100B50B80, a1);
  if (v6)
  {
    v7 = v6;
    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(v7, __p);
      v9 = __p[0];
      v10 = "discoverable";
      if (v13 >= 0)
      {
        v9 = __p;
      }

      if (!a2)
      {
        v10 = "not discoverable";
      }

      *buf = 136446466;
      v15 = v9;
      v16 = 2080;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to set local device %s", buf, 0x16u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return sub_100572080(v5, a1, a2 != 0);
}

uint64_t sub_10052DA48(unint64_t a1, int a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  return sub_100571E5C(v4, a1, a2 != 0);
}

uint64_t sub_10052DAC4(uint64_t a1, _DWORD *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  v6 = 0;
  result = sub_1005755A4(v4, &v6);
  if (!result)
  {
    *a2 = -v6;
  }

  return result;
}

uint64_t sub_10052DB40(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v8 = sub_100059CB8(off_100B50898, a1);
  if (!v8)
  {
    return 7;
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  v9 = sub_10009E064(v8, &__p);
  if (!v9)
  {
    v10 = 0;
    if (a4)
    {
      v11 = __p;
      while (v11 != v16)
      {
        v12 = *v11;
        if (qword_100B508F0 != -1)
        {
          sub_10084001C();
        }

        v13 = sub_10056A4C4(off_100B508E8, a1, v12);
        if (!v13)
        {
          v9 = 7;
          goto LABEL_16;
        }

        *(a2 + 8 * v10++) = v13;
        ++v11;
        if (a4 == v10)
        {
          v10 = a4;
          break;
        }
      }
    }

    v9 = 0;
    *a3 = v10;
  }

LABEL_16:
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_10052DC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052DC8C(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v8 = sub_100059CB8(off_100B50898, a1);
  if (!v8)
  {
    return 7;
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  v9 = sub_100575620(v8, &__p);
  if (!v9)
  {
    v10 = 0;
    if (a4)
    {
      v11 = __p;
      while (v11 != v16)
      {
        v12 = *v11;
        if (qword_100B508F0 != -1)
        {
          sub_10084001C();
        }

        v13 = sub_10056A4C4(off_100B508E8, a1, v12);
        if (!v13)
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_100840044();
          }

          v9 = 7;
          goto LABEL_18;
        }

        *(a2 + 8 * v10++) = v13;
        ++v11;
        if (a4 == v10)
        {
          v10 = a4;
          break;
        }
      }
    }

    v9 = 0;
    *a3 = v10;
  }

LABEL_18:
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_10052DDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052DE00(uint64_t a1, _DWORD *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  v6 = 0;
  result = sub_10057566C(v4, &v6);
  if (!result)
  {
    *a2 = -v6;
  }

  return result;
}

uint64_t sub_10052DE7C(uint64_t a1, int *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = sub_100575E24(v4);
  result = 0;
  *a2 = v5 << 31 >> 31;
  return result;
}

void sub_10052DEE8(uint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v2 = sub_100059CB8(off_100B50898, a1);
  if (v2)
  {

    sub_1005749E8(v2);
  }
}

uint64_t sub_10052DF54(uint64_t a1, _DWORD *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  v6 = 0;
  result = sub_100574B30(v4, &v6);
  if (!result)
  {
    *a2 = -v6;
  }

  return result;
}

uint64_t sub_10052DFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v8 = sub_100059CB8(off_100B50898, a1);
  if (!v8)
  {
    return 7;
  }

  return sub_100574A2C(v8, a2, a3, a4);
}

uint64_t sub_10052E060(uint64_t a1, uint64_t a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  return sub_100574A98(v4, a2);
}

uint64_t sub_10052E0D4(uint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v2 = sub_100059CB8(off_100B50898, a1);
  if (!v2)
  {
    return 7;
  }

  return sub_100574AEC(v2);
}

uint64_t sub_10052E140(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a1)
  {
    v5 = a1;
    if (qword_100B508A0 != -1)
    {
      sub_1000AD694();
    }

    a1 = sub_100059CB8(off_100B50898, v5);
    if (!a1)
    {
      return 7;
    }
  }

  v6 = sub_10000C798(a1, a2);
  v7 = (*(*v6 + 56))(v6, a2);
  result = 0;
  *a3 = v7;
  return result;
}

uint64_t sub_10052E1E0(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v10 = sub_100059CB8(off_100B50898, a1);
  if (!v10)
  {
    return 7;
  }

  return sub_100573A14(v10, a1, a2, a3, a4, a5);
}

uint64_t sub_10052E288(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v10 = sub_100059CB8(off_100B50898, a1);
  if (!v10)
  {
    return 7;
  }

  return sub_100573CD8(v10, a1, a2, a3, a4, a5);
}

uint64_t sub_10052E330(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v6 = sub_100059CB8(off_100B50898, a1);
  if (v6)
  {

    return sub_100572FC0(v6, a1, a2, a3);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100840078();
    }

    return 7;
  }
}

uint64_t sub_10052E3E4(uint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v2 = sub_100059CB8(off_100B50898, a1);
  if (v2)
  {

    return sub_1005722A4(v2, a1);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008400AC();
    }

    return 7;
  }
}

uint64_t sub_10052E47C(uint64_t a1, uint64_t a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (v4)
  {

    return sub_1005730A0(v4, a1, a2);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008400E0();
    }

    return 7;
  }
}

uint64_t sub_10052E51C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v6 = sub_100059CB8(off_100B50898, a1);
  if (v6)
  {

    return sub_100573154(v6, a1, a2, a3);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100840114();
    }

    return 7;
  }
}

uint64_t sub_10052E5D0(uint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v2 = sub_100059CB8(off_100B50898, a1);
  if (v2)
  {

    return sub_1005722A4(v2, a1);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100840148();
    }

    return 7;
  }
}

uint64_t sub_10052E668(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v12 = sub_100059CB8(off_100B50898, a1);
  if (v12)
  {

    return sub_100573204(v12, a1, a2 != 0, a3, a4, a5, a6);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084017C();
    }

    return 7;
  }
}

uint64_t sub_10052E744(uint64_t a1, int a2, uint64_t a3)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v6 = sub_100059CB8(off_100B50898, a1);
  if (v6)
  {

    return sub_100573328(v6, a1, a2 != 0, a3);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008401E4();
    }

    return 7;
  }
}

uint64_t sub_10052E7FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v12 = sub_100059CB8(off_100B50898, a1);
  if (v12)
  {

    return sub_1005734E8(v12, a1, a2, a3, a4, a5, a6);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100840218();
    }

    return 7;
  }
}

uint64_t sub_10052E8D4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v24 = sub_100059CB8(off_100B50898, a1);
  if (v24)
  {
    return sub_100573608(v24, a1, a2 != 0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10084024C();
  }

  return 7;
}

uint64_t sub_10052E9D4(uint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v2 = sub_100059CB8(off_100B50898, a1);
  if (v2)
  {

    return sub_1005756B8(v2);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100840280();
    }

    return 7;
  }
}

uint64_t sub_10052EA68(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, unint64_t a5)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v10 = sub_100059CB8(off_100B50898, a1);
  if (v10)
  {
    if (a5 >= 0xFE)
    {
      v11 = 254;
    }

    else
    {
      v11 = a5;
    }

    return sub_1005757DC(v10, a2, a3, a4, v11);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008402B4();
    }

    return 7;
  }
}

uint64_t sub_10052EB3C(unint64_t a1, char *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008402E8();
    }

    return 7;
  }

  v5 = v4;
  if (qword_100B50B88 != -1)
  {
    sub_10083FF28();
  }

  v6 = sub_1000117DC(qword_100B50B80, a1);
  if (!v6)
  {
    return 7;
  }

  return sub_100574850(v5, v6, a2);
}

uint64_t sub_10052EC1C(unint64_t a1, uint64_t a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084031C();
    }

    return 7;
  }

  v5 = v4;
  if (qword_100B50B88 != -1)
  {
    sub_10083FF28();
  }

  v6 = sub_1000117DC(qword_100B50B80, a1);
  if (!v6)
  {
    return 7;
  }

  return sub_100574348(v5, v6, a2);
}

uint64_t sub_10052ECFC(unint64_t a1, unint64_t a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100840364();
    }

    return 7;
  }

  v5 = v4;
  if (qword_100B50B88 != -1)
  {
    sub_10083FF28();
  }

  v6 = sub_1000117DC(qword_100B50B80, a1);
  if (!v6)
  {
    return 7;
  }

  v7 = v6;
  if (qword_100B508F0 != -1)
  {
    sub_100840350();
  }

  v8 = sub_1000E41C0(off_100B508E8, a2);
  if (!v8)
  {
    return 7;
  }

  return sub_100574424(v5, v7, v8);
}

uint64_t sub_10052EE0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C7D0(a1, a2);
  v3 = sub_100413630(v2);
  v4 = v3;
  v6 = *sub_10000C7D0(v3, v5);
  if (v4)
  {
    return (*(v6 + 1920))();
  }

  else
  {
    return (*(v6 + 1192))();
  }
}

uint64_t sub_10052EEBC(unint64_t a1, int a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  return sub_100574640(v4, a1, a2 != 0);
}

uint64_t sub_10052EF38(uint64_t a1, int *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = sub_100574ECC(v4);
  result = 0;
  *a2 = v5 << 31 >> 31;
  return result;
}

uint64_t sub_10052EFA4(uint64_t a1, char *a2, unint64_t *a3, unint64_t a4)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v8 = sub_100059CB8(off_100B50898, a1);
  if (v8)
  {
    return sub_100574F10(v8, a2, a3, a4);
  }

  else
  {
    return 7;
  }
}

uint64_t sub_10052F01C(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  if (!sub_100059CB8(off_100B50898, a1))
  {
    return 7;
  }

  if (qword_100B50940 != -1)
  {
    sub_100840398();
  }

  if (sub_100637810(off_100B50938, a2, a3))
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

uint64_t sub_10052F0B8(uint64_t a1, int *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  if (!sub_100059CB8(off_100B50898, a1))
  {
    return 7;
  }

  if (qword_100B50940 != -1)
  {
    sub_100840398();
  }

  v4 = sub_100630E30(off_100B50938);
  result = 0;
  *a2 = v4 << 31 >> 31;
  return result;
}

uint64_t sub_10052F144(uint64_t a1, char *a2, size_t a3)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  if (!sub_100059CB8(off_100B50898, a1))
  {
    return 7;
  }

  memset(&__source, 0, sizeof(__source));
  if (qword_100B547B0 != -1)
  {
    sub_1008403AC();
  }

  if ((sub_1006127E8(off_100B547A8, &__source) & 1) == 0)
  {
    v7 = 1;
    goto LABEL_16;
  }

  if (SHIBYTE(__source.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__source.__r_.__value_.__l.__size_ + 1 <= a3)
    {
      p_source = __source.__r_.__value_.__r.__words[0];
      goto LABEL_15;
    }

LABEL_13:
    v7 = 5;
    goto LABEL_16;
  }

  if (HIBYTE(__source.__r_.__value_.__r.__words[2]) + 1 > a3)
  {
    goto LABEL_13;
  }

  p_source = &__source;
LABEL_15:
  strlcpy(a2, p_source, a3);
  v7 = 0;
LABEL_16:
  if (SHIBYTE(__source.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__source.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_10052F24C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052F268(uint64_t a1, _WORD *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  if (!sub_100059CB8(off_100B50898, a1))
  {
    return 7;
  }

  if (a2)
  {
    if (qword_100B512B8 != -1)
    {
      sub_1008403C0();
    }

    v4 = qword_100B512B0;
    if (qword_100B512B0)
    {

      return sub_10031A318(v4, a2);
    }

    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008403D4();
    }

    return 7;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100840408();
  }

  return 3;
}

uint64_t sub_10052F35C(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  if (!sub_100059CB8(off_100B50898, a1))
  {
    return 7;
  }

  if (!a2)
  {
    return 3;
  }

  v6 = [[NSUUID alloc] initWithUUIDBytes:a2];
  v8 = sub_1000D999C(v6, v7);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10052F484;
  v11[3] = &unk_100ADF920;
  v9 = v6;
  v12 = v9;
  v13 = a3;
  sub_10000CA94(v8, v11);

  return 0;
}

uint64_t sub_10052F484(uint64_t a1)
{
  if (qword_100B54080 != -1)
  {
    sub_10084043C();
  }

  v1 = off_100B54078;

  return sub_1006FCE54(v1);
}

uint64_t sub_10052F7CC(unsigned int *a1)
{
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  v25 = 0u;
  sub_100007AD0(&v25);
  v2 = __p;
  sub_1000E5A58(*(a1 + 1), __p);
  if (v24 < 0)
  {
    v2 = __p[0];
  }

  v3 = strlen(v2);
  v4 = sub_100007774(&v26, v2, v3);
  v5 = sub_100007774(v4, ", ", 2);
  v6 = *a1;
  if (v6 > 3)
  {
    v7 = "Unknown";
  }

  else
  {
    v7 = off_100AFC310[v6];
  }

  v8 = strlen(v7);
  v9 = sub_100007774(v5, v7, v8);
  v10 = sub_100007774(v9, ", ", 2);
  if (*(a1 + 16))
  {
    v11 = "Incoming";
  }

  else
  {
    v11 = "Outgoing";
  }

  v12 = sub_100007774(v10, v11, 8);
  sub_100007774(v12, ", connected: [ ", 15);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = __p;
  sub_1005977A0(a1 + 6);
  if (v24 < 0)
  {
    v13 = __p[0];
  }

  v14 = strlen(v13);
  v15 = sub_100007774(&v26, v13, v14);
  sub_100007774(v15, "], pending: [ ", 14);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = __p;
  sub_1005977A0(a1 + 5);
  if (v24 < 0)
  {
    v16 = __p[0];
  }

  v17 = strlen(v16);
  v18 = sub_100007774(&v26, v16, v17);
  v19 = sub_100007774(v18, "], ", 3);
  v41 = *(a1 + 17);
  v20 = sub_100007774(v19, &v41, 1);
  sub_100007774(v20, " attempt(s)", 11);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  *&v26 = v21;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[1]);
  }

  std::locale::~locale(v27);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10052FB2C(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_10052FB80(unsigned int *a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 1), __p);
    if ((SBYTE7(v19) & 0x80u) == 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
    *(buf.__r_.__value_.__r.__words + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Device %{public}s", &buf, 0xCu);
    if (SBYTE7(v19) < 0)
    {
      operator delete(__p[0]);
    }

    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a1;
    if (v4 > 3)
    {
      v5 = "Unknown";
    }

    else
    {
      v5 = off_100AFC310[v4];
    }

    LODWORD(__p[0]) = 136446210;
    *(__p + 4) = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    State: %{public}s", __p, 0xCu);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 16))
    {
      v6 = "Incoming";
    }

    else
    {
      v6 = "Outgoing";
    }

    LODWORD(__p[0]) = 136446210;
    *(__p + 4) = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    Direction: %{public}s", __p, 0xCu);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005977A0(a1 + 6);
    if ((SBYTE7(v19) & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
    *(buf.__r_.__value_.__r.__words + 4) = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    Connected services: %{public}s", &buf, 0xCu);
    if (SBYTE7(v19) < 0)
    {
      operator delete(__p[0]);
    }

    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005977A0(a1 + 5);
    v8 = (SBYTE7(v19) & 0x80u) == 0 ? __p : __p[0];
    LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
    *(buf.__r_.__value_.__r.__words + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    Pending services: %{public}s", &buf, 0xCu);
    if (SBYTE7(v19) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v26 = 0;
  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  v22 = 0u;
  *v23 = 0u;
  v20 = 0u;
  *v21 = 0u;
  *__p = 0u;
  v19 = 0u;
  sub_1000DE474(__p + 1);
  BYTE2(v19) = 0;
  BYTE4(v19) = 0;
  BYTE2(v21[0]) = 0;
  BYTE4(v21[0]) = 0;
  DWORD1(v24[1]) = 0;
  v20 = 0uLL;
  *(&v19 + 1) = 0;
  LOBYTE(v21[0]) = 0;
  v22 = 0uLL;
  v21[1] = 0;
  LOBYTE(v23[0]) = 0;
  memset(v24, 0, 19);
  v23[1] = 0;
  BYTE8(v24[1]) = 1;
  *(&v24[1] + 14) = 0;
  *(&v24[1] + 9) = 0;
  v25 = 0uLL;
  *(&v24[2] + 1) = 0;
  LOBYTE(v26) = 0;
  *(&v26 + 2) = 0;
  memset(&buf, 0, sizeof(buf));
  if (sub_100536A18(*(a1 + 1), __p) && LOBYTE(v23[0]) == 1 && (std::string::operator=(&buf, &v23[1]), (v23[0] & 1) != 0))
  {
    v9 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    p_buf = &buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    v15 = 136446210;
    v16 = p_buf;
    v11 = "statedump:    Make of device is: %{public}s";
    v12 = v9;
    v13 = 12;
  }

  else
  {
    v14 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    LOWORD(v15) = 0;
    v11 = "statedump:    Make of device is unknown";
    v12 = v14;
    v13 = 2;
  }

  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v15, v13);
LABEL_41:
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24[0]) < 0)
  {
    operator delete(v23[1]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[1]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(*(&v19 + 1));
  }

  nullsub_21();
}

void sub_10052FFC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100320BE8(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_10052FFEC(uint64_t a1)
{
  *a1 = off_100AFC038;
  *(a1 + 8) = off_100AFC088;
  *(a1 + 16) = &off_100AFC0B8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_100044BBC((a1 + 56));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 136) = 0;
  return a1;
}

void sub_100530090(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1005300B4(void *a1)
{
  *a1 = off_100AFC038;
  a1[1] = off_100AFC088;
  a1[2] = &off_100AFC0B8;
  sub_100530184(a1);
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  sub_10007A068((a1 + 7));
  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_100530160(_Unwind_Exception *a1)
{
  v3 = *(v1 + 120);
  if (v3)
  {
    *(v1 + 128) = v3;
    operator delete(v3);
  }

  sub_100840450(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100530184(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 56);
  v3 = *(a1 + 120);
  v2 = *(a1 + 128);
  if (v3 != v2)
  {
    do
    {
      if (*v3)
      {
        operator delete();
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 120);
  }

  *(a1 + 128) = v3;
  *(a1 + 144) = 0;
  return sub_1000088CC(v5);
}

void sub_100530218(void *a1)
{
  sub_1005300B4(a1);

  operator delete();
}

void sub_100530250(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_1008404A0();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 8);
  v4 = *sub_10000C798(v2, v3);
  if ((*(v4 + 456))())
  {
    v7 = 0;
    v5 = sub_100017E6C();
    (*(*v5 + 160))(v5, &v7);
    (*(*a1 + 56))(a1, v7);
    v6 = sub_100017E6C();
    sub_100532818(v6 + 744, a1 + 16);
  }
}

void sub_100530354(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  if ((*(*v3 + 456))(v3))
  {
    v4 = sub_100017E6C() + 744;

    sub_100532AB8(v4, a1 + 16);
  }
}

uint64_t sub_1005303D0(uint64_t a1)
{
  v1 = sub_100530184(a1);
  v3 = sub_10000C798(v1, v2);
  result = (*(*v3 + 440))(v3);
  if (result)
  {
    v6 = *(*sub_10000C7D0(result, v5) + 1072);

    return v6();
  }

  return result;
}

BOOL sub_100530480(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 56);
  for (i = *(a1 + 120); ; i += 8)
  {
    if (i == *(a1 + 128))
    {
      v5 = 1;
      goto LABEL_7;
    }

    if (*(*i + 8) == a2)
    {
      break;
    }
  }

  v5 = **i == 0;
LABEL_7:
  sub_1000088CC(v7);
  return v5;
}

uint64_t sub_100530500(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 56);
  for (i = *(a1 + 120); ; ++i)
  {
    if (i == *(a1 + 128))
    {
      v3 = 0;
      goto LABEL_7;
    }

    if ((**i | 2) == 3)
    {
      break;
    }
  }

  v3 = 1;
LABEL_7:
  sub_1000088CC(v5);
  return v3;
}

uint64_t sub_100530578(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 56);
  v5 = *(a1 + 120);
  v4 = *(a1 + 128);
  while (v5 != v4)
  {
    if ((**v5 | 2) == 3)
    {
      v7 = *(*v5 + 8);
      sub_1000C2484(a2, &v7);
      v4 = *(a1 + 128);
    }

    v5 += 8;
  }

  if (qword_100B540E0 != -1)
  {
    sub_1008404B4();
  }

  sub_1007391B4(off_100B540D8, a2);
  if (qword_100B54380 != -1)
  {
    sub_1008404DC();
  }

  sub_10069095C(off_100B54378, a2);
  return sub_1000088CC(v8);
}

void sub_100530654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053066C(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 56);
  v4 = *(a1 + 120);
  v5 = *(a1 + 128);
  while (v4 != v5)
  {
    v6 = *v4;
    if (*(*v4 + 8) == a2)
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

BOOL sub_1005306DC(uint64_t a1, uint64_t a2, int a3)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 56);
  for (i = *(a1 + 120); ; i += 8)
  {
    if (i == *(a1 + 128))
    {
      v7 = 0;
      goto LABEL_7;
    }

    if (*(*i + 8) == a2)
    {
      break;
    }
  }

  v7 = (*(*i + 24) & a3) != 0;
LABEL_7:
  sub_1000088CC(v9);
  return v7;
}

uint64_t sub_100530768(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 56);
  for (i = *(a1 + 120); ; i += 8)
  {
    if (i == *(a1 + 128))
    {
      v5 = 0;
      goto LABEL_7;
    }

    if (*(*i + 8) == a2)
    {
      break;
    }
  }

  v5 = *(*i + 20);
LABEL_7:
  sub_1000088CC(v7);
  return v5;
}

uint64_t sub_1005307E0(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 56);
  for (i = *(a1 + 120); ; i += 8)
  {
    if (i == *(a1 + 128))
    {
      v5 = 0;
      goto LABEL_7;
    }

    if (*(*i + 8) == a2)
    {
      break;
    }
  }

  v5 = *(*i + 24);
LABEL_7:
  sub_1000088CC(v7);
  return v5;
}

uint64_t sub_100530858(uint64_t a1)
{
  v2 = sub_100530500(a1);
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 56);
  if (*(a1 + 145) == 1)
  {
    if ((v2 & 1) == 0 && (*(a1 + 144) & 1) == 0)
    {
      *(a1 + 145) = 0;
      sub_10000801C(v10);
      v5 = sub_100017F4C(v3, v4);
      v6 = &stru_100AFC0C0;
LABEL_8:
      sub_10000CA94(v5, v6);
    }
  }

  else if ((v2 & 1) != 0 || *(a1 + 144) == 1)
  {
    *(a1 + 145) = 1;
    sub_10000801C(v10);
    v5 = sub_100017F4C(v7, v8);
    v6 = &stru_100AFC0E0;
    goto LABEL_8;
  }

  return sub_1000088CC(v10);
}

void sub_100530918(id a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_100840504();
  }

  v2 = off_100B50F60;

  sub_100530960(v2, 0);
}

void sub_100530960(os_unfair_lock_s *a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "not in progress";
    if (a2)
    {
      v5 = "in progress";
    }

    *buf = 136315138;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending 'connection %s' notification", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100532160;
  v6[3] = &unk_100AFC160;
  v7 = a2;
  sub_100532094(a1 + 6, v6);
}

void sub_100530A7C(id a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_100840504();
  }

  v2 = off_100B50F60;

  sub_100530960(v2, 1);
}

uint64_t sub_100530AC4(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 56);
  *(a1 + 144) = 1;
  sub_10000801C(v3);
  sub_100530858(a1);
  return sub_1000088CC(v3);
}

uint64_t sub_100530B30(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 56);
  *(a1 + 144) = 0;
  sub_10000801C(v3);
  sub_100530858(a1);
  return sub_1000088CC(v3);
}

uint64_t sub_100530B98(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 56);
  for (i = *(a1 + 120); ; ++i)
  {
    if (i == *(a1 + 128))
    {
      operator new();
    }

    if (*(*i + 8) == a2)
    {
      break;
    }
  }

  v6 = *i;
  sub_10000801C(v7);
  sub_100530858(a1);
  return sub_1000088CC(v7);
}

void sub_100530C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100530C74(uint64_t a1, uint64_t a2, int a3)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 56);
  v7 = *(a1 + 120);
  v6 = *(a1 + 128);
  if (v7 != v6)
  {
    v8 = v6 - v7 - 8;
    while (1)
    {
      v9 = *v7;
      if (*(*v7 + 8) == a2)
      {
        break;
      }

      ++v7;
      v8 -= 8;
      if (v7 == v6)
      {
        goto LABEL_16;
      }
    }

    if (!*(v9 + 17) && !*(v9 + 24))
    {
      if (v7 + 1 != v6)
      {
        memmove(v7, v7 + 1, v8);
      }

      *(a1 + 128) = v7 + v8;
      operator delete();
    }

    if (a3 && (*(a1 + 144) & 1) != 0)
    {
      sub_10000801C(v11);
      if (qword_100B50F88 != -1)
      {
        sub_100840518();
      }

      sub_1000E5328(off_100B50F80, a2, a3);
      sub_100007FB8(v11);
    }
  }

LABEL_16:
  sub_10000801C(v11);
  sub_100530858(a1);
  return sub_1000088CC(v11);
}

uint64_t sub_100530DB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v6 = a4;
  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (a5)
    {
      v11 = "incoming";
    }

    else
    {
      v11 = "outgoing";
    }

    v12 = sub_10057CC18(v6);
    sub_1000E5A58(a2, __p);
    if (v37 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 136446722;
    v39 = v11;
    v40 = 2082;
    v41 = v12;
    v42 = 2082;
    v43 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received %{public}s connection attempt for %{public}s profile on device %{public}s", buf, 0x20u);
    if (v37 < 0)
    {
      operator delete(__p[0]);
    }

    v10 = qword_100BCE8D8;
  }

  v14 = os_signpost_enabled(v10);
  if (v14)
  {
    v16 = a5 ? "incoming" : "outgoing";
    v17 = sub_10057CC18(v6);
    sub_1000E5A58(a2, __p);
    v18 = v37 >= 0 ? __p : __p[0];
    *buf = 136446722;
    v39 = v16;
    v40 = 2082;
    v41 = v17;
    v42 = 2082;
    v43 = v18;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BTSignPost", "Received %{public}s connection attempt for %{public}s profile on device %{public}s", buf, 0x20u);
    if (v37 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v19 = sub_10000C798(v14, v15);
  v20 = (*(*v19 + 384))(v19) ^ 1;
  if (v6 != 14)
  {
    LOBYTE(v20) = 1;
  }

  if ((v20 & 1) == 0)
  {
    v21 = objc_alloc_init(CARConnectionTimeStore);
    v22 = +[NSDate date];
    v23 = [CARConnectionEvent eventWithName:CARBluetoothWirelessIAPProfileConnectionAttempt type:1 date:v22 payload:0];

    [v21 syncSendConnectionEvent:v23 completion:&stru_100AFC120];
  }

  v35[0] = 0;
  v35[1] = 0;
  sub_100007F88(v35, a1 + 56);
  for (i = *(a1 + 120); ; ++i)
  {
    if (i == *(a1 + 128))
    {
      operator new();
    }

    v25 = *i;
    if (*(*i + 8) == a2)
    {
      break;
    }
  }

  v34 = *i;
  v27 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v28 = *(v25 + 16);
    sub_1000E5A58(a2, __p);
    v29 = "outgoing";
    if (v28)
    {
      v29 = "incoming";
    }

    v30 = __p[0];
    v31 = *(v25 + 17);
    if (v37 >= 0)
    {
      v30 = __p;
    }

    *buf = 136446722;
    v39 = v29;
    v40 = 2082;
    v41 = v30;
    v42 = 1024;
    LODWORD(v43) = v31;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Already tracking an %{public}s connection for device %{public}s with %d pending attempt(s)", buf, 0x1Cu);
    if (v37 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v32 = *(v25 + 20);
  if ((v32 & a3) != 0)
  {
    v33 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v39) = a3;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Ignoring duplicate connection attempt for service 0x%x", buf, 8u);
    }
  }

  else
  {
    *(v25 + 20) = v32 | a3;
    *(v25 + 16) = a5;
    *v25 = 1;
    ++*(v25 + 17);
    sub_10054D5C0(a2);
    sub_10000801C(v35);
    sub_100530858(a1);
  }

  return sub_1000088CC(v35);
}

void sub_100531230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100531278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_10057CC18(v6);
    sub_1000E5A58(a2, __p);
    if (v55 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = *__p;
    }

    *buf = 136446722;
    *&buf[4] = v11;
    v57 = 2082;
    v58 = v12;
    v59 = 1024;
    v60 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received connection result for %{public}s profile on device %{public}s - result was %d", buf, 0x1Cu);
    if (v55 < 0)
    {
      operator delete(*__p);
    }

    v10 = qword_100BCE8D8;
  }

  v13 = os_signpost_enabled(v10);
  if (v13)
  {
    v15 = sub_10057CC18(v6);
    sub_1000E5A58(a2, __p);
    v16 = v55 >= 0 ? __p : *__p;
    *buf = 136446722;
    *&buf[4] = v15;
    v57 = 2082;
    v58 = v16;
    v59 = 1024;
    v60 = a5;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BTSignPost", "Received connection result for %{public}s profile on device %{public}s - result was %d", buf, 0x1Cu);
    if (v55 < 0)
    {
      operator delete(*__p);
    }
  }

  v17 = sub_10000C798(v13, v14);
  v18 = (*(*v17 + 384))(v17) ^ 1;
  if (v6 != 14)
  {
    LOBYTE(v18) = 1;
  }

  if ((v18 & 1) == 0)
  {
    v19 = objc_alloc_init(CARConnectionTimeStore);
    v20 = +[NSDate date];
    v21 = CARBluetoothWirelessIAPProfileConnectionSuccess;
    v50 = CARBluetoothWirelessIAPProfileConnectionSuccess;
    v22 = [NSNumber numberWithInt:a5];
    v51 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v24 = [CARConnectionEvent eventWithName:v21 type:1 date:v20 payload:v23];

    [v19 syncSendConnectionEvent:v24 completion:&stru_100AFC140];
  }

  v49[0] = 0;
  v49[1] = 0;
  v25 = sub_100007F88(v49, a1 + 56);
  v48 = 0;
  v27 = *(a1 + 120);
  v28 = *(a1 + 128);
  if (v27 == v28)
  {
LABEL_22:
    if (!a5)
    {
      operator new();
    }

LABEL_47:
    sub_100017F4C(v25, v26);
    operator new();
  }

  v29 = v27 + 8;
  while (1)
  {
    v30 = *v27;
    if (*(*v27 + 8) == a2)
    {
      break;
    }

    v27 += 8;
    v29 += 8;
    if (v27 == v28)
    {
      goto LABEL_22;
    }
  }

  v48 = *v27;
  v31 = *(v30 + 20);
  if ((v31 & v7) != 0)
  {
    *(v30 + 20) = v31 & ~v7;
    v32 = *(v30 + 17);
    if (v32)
    {
      goto LABEL_26;
    }

    v34 = qword_100BCE8D8;
    v25 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT);
    if (v25)
    {
      sub_10052F7CC(v30);
      if (v59 >= 0)
      {
        v42 = buf;
      }

      else
      {
        v42 = *buf;
      }

      *__p = 136446210;
      *&__p[4] = v42;
      _os_log_fault_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "Found mismatch between connection attempts and connection results - dumping connection state:\n%{public}s", __p, 0xCu);
      if (SHIBYTE(v59) < 0)
      {
        operator delete(*buf);
      }

      v32 = *(v30 + 17);
      if (v32)
      {
LABEL_26:
        *(v30 + 17) = v32 - 1;
      }
    }

    if (!a5)
    {
      v36 = *(v30 + 20);
      *(v30 + 24) |= v7;
      if (v36)
      {
        if (*(v30 + 17))
        {
          goto LABEL_47;
        }
      }

      else if (!*(v30 + 17))
      {
LABEL_46:
        *v30 = 2;
        goto LABEL_47;
      }

      v40 = qword_100BCE8D8;
      v25 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT);
      if (v25)
      {
        v47 = v36;
        sub_1005977A0(&v47);
        v45 = v59 >= 0 ? buf : *buf;
        v46 = *(v30 + 17);
        *__p = 136446466;
        *&__p[4] = v45;
        v53 = 1024;
        v54 = v46;
        _os_log_fault_impl(&_mh_execute_header, v40, OS_LOG_TYPE_FAULT, "Found mismatch between pending services(%{public}s) and pending attempts (%d)", __p, 0x12u);
        if (SHIBYTE(v59) < 0)
        {
          operator delete(*buf);
        }
      }

      goto LABEL_46;
    }

    v35 = *(v30 + 20);
    if (v35)
    {
      if (*(v30 + 17))
      {
        goto LABEL_47;
      }
    }

    else if (!*(v30 + 17))
    {
LABEL_40:
      if (!*(v30 + 24))
      {
        v38 = *(a1 + 128);
        v39 = v38 - v29;
        if (v38 != v29)
        {
          memmove(v29 - 8, v29, v38 - v29);
        }

        *(a1 + 128) = &v29[v39 - 8];
        operator delete();
      }

      goto LABEL_46;
    }

    v37 = qword_100BCE8D8;
    v25 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT);
    if (v25)
    {
      v47 = v35;
      sub_1005977A0(&v47);
      v43 = v59 >= 0 ? buf : *buf;
      v44 = *(v30 + 17);
      *__p = 136446466;
      *&__p[4] = v43;
      v53 = 1024;
      v54 = v44;
      _os_log_fault_impl(&_mh_execute_header, v37, OS_LOG_TYPE_FAULT, "Found mismatch between pending services(%{public}s) and pending attempts (%d)", __p, 0x12u);
      if (SHIBYTE(v59) < 0)
      {
        operator delete(*buf);
      }
    }

    goto LABEL_40;
  }

  v33 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
  {
    sub_100840540(v7, v33);
  }

  sub_1000088CC(v49);
  return 0;
}

void sub_100531954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_1005319BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6)
{
  v8 = a4;
  v31 = a3;
  v12 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_10057CC18(v8);
    sub_1000E5A58(a2, __p);
    if (v30 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    *buf = 136446978;
    *v34 = v13;
    *&v34[8] = 2082;
    v35 = v14;
    v36 = 1024;
    v37 = a5;
    v38 = 1024;
    v39 = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received disconnection result for %{public}s profile on device %{public}s - result was %d - reason was %d", buf, 0x22u);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = qword_100BCE8D8;
  }

  if (os_signpost_enabled(v12))
  {
    v15 = sub_10057CC18(v8);
    sub_1000E5A58(a2, __p);
    v16 = v30 >= 0 ? __p : __p[0];
    *buf = 136446978;
    *v34 = v15;
    *&v34[8] = 2082;
    v35 = v16;
    v36 = 1024;
    v37 = a5;
    v38 = 1024;
    v39 = a6;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BTSignPost", "Received disconnection result for %{public}s profile on device %{public}s - result was %d - reason was %d", buf, 0x22u);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, a1 + 56);
  v18 = *(a1 + 120);
  v17 = *(a1 + 128);
  if (v18 == v17)
  {
LABEL_18:
    if (!a5)
    {
      v21 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
      {
        sub_1005977A0(&v31);
        sub_1008405B8(buf, v32, v21);
      }

      sub_10000801C(__p);
      sub_100017F4C(v22, v23);
      operator new();
    }

    v20 = 0;
LABEL_24:
    v24 = v20 == 0;
    goto LABEL_25;
  }

  v19 = v17 - v18 - 8;
  while (1)
  {
    v20 = *v18;
    if (*(*v18 + 8) == a2)
    {
      break;
    }

    ++v18;
    v19 -= 8;
    if (v18 == v17)
    {
      goto LABEL_18;
    }
  }

  if (a5)
  {
    goto LABEL_24;
  }

  v26 = *(v20 + 24) & ~a3;
  *(v20 + 24) = v26;
  if (!v26 && !*(v20 + 20))
  {
    if (v18 + 1 != v17)
    {
      memmove(v18, v18 + 1, v19);
    }

    *(a1 + 128) = v18 + v19;
    operator delete();
  }

  v27 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v28 = *(v20 + 20);
    *buf = 67109376;
    *v34 = v26;
    *&v34[4] = 1024;
    *&v34[6] = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "There is at least one connected (0x%08x) or pending (0x%08x) service left", buf, 0xEu);
  }

  v24 = 0;
LABEL_25:
  sub_1000088CC(__p);
  return v24;
}

void sub_100531D74(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ----------------- Connection Manager ----------------", &buf, 2u);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 144))
    {
      v3 = "Yes";
    }

    else
    {
      v3 = "No";
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Pairing in progress: %{public}s", &buf, 0xCu);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 145))
    {
      v4 = "Yes";
    }

    else
    {
      v4 = "No";
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Connection in progress: %{public}s", &buf, 0xCu);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Connections:", &buf, 2u);
  }

  buf = 0uLL;
  v27 = 0;
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 56);
  v6 = *(a1 + 120);
  v5 = *(a1 + 128);
  if (v6 != v5)
  {
    v7 = 0;
    do
    {
      v8 = *v6;
      if (v7 >= v27)
      {
        v10 = buf;
        v11 = (v7 - buf) >> 5;
        v12 = v11 + 1;
        if ((v11 + 1) >> 59)
        {
          sub_1000C7698();
        }

        v13 = v27 - buf;
        if ((v27 - buf) >> 4 > v12)
        {
          v12 = v13 >> 4;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFE0)
        {
          v14 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          sub_100532D98(&buf, v14);
        }

        v15 = (v7 - buf) >> 5;
        v16 = (32 * v11);
        v17 = v8[1];
        *v16 = *v8;
        v16[1] = v17;
        v18 = 32 * v11 - 32 * v15;
        if (v10 != v7)
        {
          v19 = v10;
          v20 = v18;
          do
          {
            v21 = *v19;
            v22 = v19[1];
            v19 += 2;
            *v20 = v21;
            v20[1] = v22;
            v20 += 2;
          }

          while (v19 != v7);
        }

        v7 = v16 + 2;
        *&buf = v18;
        *(&buf + 1) = v16 + 2;
        v27 = 0;
        if (v10)
        {
          operator delete(v10);
        }
      }

      else
      {
        v9 = v8[1];
        *v7 = *v8;
        v7[1] = v9;
        v7 += 2;
      }

      *(&buf + 1) = v7;
      ++v6;
    }

    while (v6 != v5);
  }

  sub_1000088CC(v25);
  v24 = *(&buf + 1);
  v23 = buf;
  if (buf != *(&buf + 1))
  {
    do
    {
      sub_10052FB80(v23);
      v23 += 8;
    }

    while (v23 != v24);
    v23 = buf;
  }

  if (v23)
  {
    *(&buf + 1) = v23;
    operator delete(v23);
  }
}

void sub_100532064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100532094(os_unfair_lock_s *a1, void *a2)
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

void sub_100532190(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v7 = v20 >= 0 ? &__p : __p;
    *buf = 136446466;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending 'device connected' notification for device %{public}s with result %d", buf, 0x12u);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p);
    }
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100532418;
  v16[3] = &unk_100AFC180;
  v16[4] = a2;
  v17 = a3;
  sub_100532094(a1 + 6, v16);
  __p = 0;
  v19 = 0;
  v20 = 0;
  v8 = sub_1000ADA24(a1, &__p);
  v10 = __p;
  v9 = v19;
  v12 = sub_100017F4C(v8, v11);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10053244C;
  v14[3] = &unk_100AE0900;
  v15 = (v9 - v10) >> 3;
  sub_10000CA94(v12, v14);
  if (qword_100B50AA0 != -1)
  {
    sub_10084062C();
  }

  sub_1005A0484(off_100B50A98, 0);
  if (!a3)
  {
    sub_1000DEEA4(a2, buf);
    if (v22 >= 0)
    {
      v13 = v22;
    }

    else
    {
      v13 = *&buf[8];
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      operator delete(*buf);
      if (v13)
      {
        goto LABEL_20;
      }
    }

    else if (v13)
    {
      goto LABEL_20;
    }

    if (qword_100B50DB8 != -1)
    {
      sub_100840654();
    }

    sub_1005C76B8(off_100B50DB0, a2);
  }

LABEL_20:
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }
}

void sub_1005323EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10053244C(uint64_t a1)
{
  if (qword_100B50910 != -1)
  {
    sub_10084067C();
  }

  v2 = off_100B50908;
  v3 = *(a1 + 32);

  sub_1005BBC68(v2, v3);
}

void sub_1005324A0(os_unfair_lock_s *a1, uint64_t a2, int a3, int a4)
{
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v9 = v22 >= 0 ? &__p : __p;
    *buf = 136446466;
    v24 = v9;
    v25 = 1024;
    v26 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending 'device disconnected' notification for device %{public}s with result %d", buf, 0x12u);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1005326A0;
  v17[3] = &unk_100AFC1A0;
  v17[4] = a2;
  v18 = a3;
  v19 = a4;
  sub_100532094(a1 + 6, v17);
  __p = 0;
  v21 = 0;
  v22 = 0;
  v10 = sub_1000ADA24(a1, &__p);
  v12 = __p;
  v11 = v21;
  v14 = sub_100017F4C(v10, v13);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1005326D4;
  v15[3] = &unk_100AE0900;
  v16 = (v11 - v12) >> 3;
  sub_10000CA94(v14, v15);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }
}

void sub_100532678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005326D4(uint64_t a1)
{
  if (qword_100B50910 != -1)
  {
    sub_10084067C();
  }

  v2 = off_100B50908;
  v3 = *(a1 + 32);

  sub_1005BBC68(v2, v3);
}

void sub_100532748(uint64_t a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_100840504();
  }

  v2 = off_100B50F60;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);

  sub_100532190(v2, v3, v4);
}

void sub_1005327B8(uint64_t a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_100840504();
  }

  v2 = off_100B50F60;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 28);

  sub_1005324A0(v2, v3, v4, v5);
}

void sub_100532818(uint64_t a1, uint64_t a2)
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
    sub_1005328E4((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1005328E4(void *a1, char *__src, char *a3)
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

void sub_100532A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100532AB8(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

void sub_100532D98(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_10053301C(uint64_t a1, int *a2)
{
  v4 = sub_100044BBC(a1);
  sub_100044BBC(v4 + 1);
  v5 = *a2;
  v6 = *(a2 + 2);
  *(a1 + 184) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 132) = v6;
  *(a1 + 128) = v5;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 328) = a1 + 336;
  *(a1 + 420) = 0;
  *(a1 + 368) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0;
  sub_100044BBC((a1 + 432));
  *(a1 + 496) = &off_100AE0A78;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 532) = 0;
  *(a1 + 536) = 0;
  *(a1 + 540) = 0;
  *(a1 + 544) = 0;
  *(a1 + 548) = 0;
  *(a1 + 552) = 0;
  *(a1 + 556) = 0;
  *(a1 + 560) = 0;
  *(a1 + 564) = 0;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  *(a1 + 582) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 592) = a1 + 600;
  *(a1 + 616) = 0;
  *(a1 + 640) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 648) = 256;
  *(a1 + 658) = 0;
  *(a1 + 650) = 0;
  *(a1 + 653) = 0;
  *(a1 + 660) = 1;
  *(a1 + 724) = 0;
  *(a1 + 708) = 0u;
  *(a1 + 678) = 0;
  *(a1 + 662) = 0u;
  *(a1 + 684) = 0u;
  *(a1 + 700) = 0;
  *(a1 + 748) = 0u;
  *(a1 + 772) = 0;
  *(a1 + 764) = 0;
  *(a1 + 776) = 4;
  *(a1 + 796) = 0xFFFF00000000;
  *(a1 + 784) = 0;
  *(a1 + 791) = 0;
  *(a1 + 804) = 1;
  *(a1 + 808) = 0;
  *(a1 + 824) = 0;
  *(a1 + 849) = 0;
  *(a1 + 860) = 0;
  *(a1 + 1047) = 0;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 1049) = 1;
  *(a1 + 1051) = -65536;
  *(a1 + 1056) = 0;
  *(a1 + 1060) = 0;
  *(a1 + 1064) = &off_100AE0A78;
  *(a1 + 1072) = 0;
  *(a1 + 1152) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1184) = 0u;
  *(a1 + 1296) = 0;
  *(a1 + 1304) = 0;
  *(a1 + 1290) = 0;
  *(a1 + 1282) = 0;
  *(a1 + 1148) = 0;
  *(a1 + 1124) = 0u;
  *(a1 + 1140) = 0;
  *(a1 + 1176) = 0;
  *(a1 + 1212) = 0u;
  *(a1 + 1280) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  sub_100007E30((a1 + 1312), "");
  *(a1 + 1368) = 0;
  *(a1 + 1380) = 0;
  *(a1 + 1384) = 0;
  *(a1 + 1388) = 0;
  *(a1 + 1392) = 0;
  *(a1 + 1396) = 0;
  *(a1 + 1420) = 0;
  *(a1 + 1424) = 0;
  *(a1 + 1344) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1415) = 0;
  *(a1 + 1436) = 0x10000;
  *(a1 + 1428) = 0;
  *(a1 + 1440) = 0;
  *(a1 + 1448) = 0;
  *(a1 + 1484) = 0;
  *(a1 + 1488) = 0;
  *(a1 + 1496) = 512;
  *(a1 + 1500) = 0;
  *(a1 + 1528) = 0;
  *(a1 + 1520) = 0;
  *(a1 + 1504) = 0u;
  *(a1 + 1536) = 0xFFFFFFFFLL;
  sub_100007E30((a1 + 1544), "");
  *(a1 + 1568) = 0;
  *(a1 + 1570) = 0;
  *(a1 + 1572) = 0;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 544) = 0;
  *(a1 + 536) = 0;
  *(a1 + 552) = 0;
  *(a1 + 528) = 0;
  *(a1 + 560) = 0;
  *(a1 + 816) = 0x600000003;
  *(a1 + 828) = xmmword_1008A9E80;
  *(a1 + 844) = 0;
  *(a1 + 848) = 2;
  *(a1 + 850) = 0;
  *(a1 + 852) = 80;
  *(a1 + 856) = 0;
  *(a1 + 864) = 0;
  *(a1 + 880) = 0;
  *(a1 + 876) = 0;
  *(a1 + 868) = 0;
  *(a1 + 888) = 1;
  *(a1 + 892) = 0;
  *(a1 + 900) = 0u;
  *(a1 + 916) = 0u;
  *(a1 + 932) = 0;
  *(a1 + 940) = xmmword_1008A49A0;
  *(a1 + 956) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1020) = 0;
  *(a1 + 1028) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1050) = 0;
  *(a1 + 740) = 0;
  *(a1 + 708) = 0u;
  *(a1 + 724) = 0u;
  *(a1 + 1043) = 0;
  *(a1 + 1036) = 0;
  v7 = sub_10000E92C();
  sub_100007E30(v13, "Device");
  sub_100007E30(__p, "enableSDPPrint");
  (*(*v7 + 72))(v7, v13, __p, a1 + 1048);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  v8 = sub_10000E92C();
  sub_100007E30(v13, "Device");
  sub_100007E30(__p, "wipeIDCache");
  (*(*v8 + 72))(v8, v13, __p, a1 + 1050);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  *(a1 + 1360) = 0;
  *(a1 + 1336) = -1;
  v9 = *(a1 + 1344);
  *(a1 + 1344) = 0;

  *(a1 + 1452) = 0u;
  *(a1 + 1468) = 0u;
  sub_100533704(a1);
  *(a1 + 1512) = *(a1 + 1504);
  *(a1 + 1576) = 0;
  return a1;
}

void sub_10053353C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_1003617DC((v20 + 1584));
  if (*(v20 + 1567) < 0)
  {
    operator delete(*v24);
  }

  v28 = *(v20 + 1504);
  if (v28)
  {
    *(v20 + 1512) = v28;
    operator delete(v28);
  }

  if (*(v20 + 1335) < 0)
  {
    operator delete(*v23);
  }

  v29 = (v20 + 1184);
  if (*(v20 + 1279) < 0)
  {
    operator delete(*(v20 + 1256));
  }

  a15 = (v20 + 1232);
  sub_1000161FC(&a15);
  v30 = *v29;
  if (*v29)
  {
    *(v20 + 1192) = v30;
    operator delete(v30);
  }

  *(v20 + 1064) = v22;
  v31 = *(v20 + 1072);
  if (v31)
  {
    sub_10000C808(v31);
  }

  v32 = *(v20 + 992);
  if (v32)
  {
    *(v20 + 1000) = v32;
    operator delete(v32);
  }

  v33 = *v26;
  if (*v26)
  {
    *(v20 + 976) = v33;
    operator delete(v33);
  }

  v34 = *(v20 + 752);
  if (v34)
  {
    *(v20 + 760) = v34;
    operator delete(v34);
  }

  a15 = (v20 + 624);
  sub_1005503DC(&a15);
  sub_10037505C(v20 + 592, *(v20 + 600));
  *(v20 + 496) = v21;
  v35 = *(v20 + 504);
  if (v35)
  {
    sub_10000C808(v35);
  }

  sub_10007A068(v25 + 96);
  if (*(v20 + 415) < 0)
  {
    operator delete(*(v20 + 392));
  }

  sub_10000CEDC(v25 - 8, *(v20 + 336));
  if (*(v20 + 303) < 0)
  {
    operator delete(*(v20 + 280));
  }

  if (*(v20 + 263) < 0)
  {
    operator delete(*(v20 + 240));
  }

  if (*(v20 + 223) < 0)
  {
    operator delete(*(v20 + 200));
  }

  sub_10007A068(v20 + 64);
  sub_10007A068(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_100533704(uint64_t a1)
{
  v454[0] = 0;
  v454[1] = 0;
  sub_100007F88(v454, a1);
  if (qword_100B508F0 != -1)
  {
    sub_100840690();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    if (qword_100B50910 != -1)
    {
      sub_1008406F4();
    }

    v2 = sub_1005BBA08(off_100B50908);
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT) && ((sub_1000E5A58(a1, __p), (SBYTE7(__p[1]) & 0x80u) == 0) ? (v4 = __p) : (v4 = *&__p[0]), LODWORD(buf.__r_.__value_.__l.__data_) = 136446210, *(buf.__r_.__value_.__r.__words + 4) = v4, _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Read device %{public}s settings", &buf, 0xCu), SBYTE7(__p[1]) < 0))
    {
      operator delete(*&__p[0]);
      if ((v2 & 1) == 0)
      {
LABEL_12:
        if (*(a1 + 1050) != 1)
        {
          goto LABEL_25;
        }
      }
    }

    else if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    *(a1 + 748) = 0;
    v5 = qword_100BCE8D8;
    v6 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      v8 = *(a1 + 1050);
      LODWORD(__p[0]) = 67109376;
      DWORD1(__p[0]) = v2;
      WORD4(__p[0]) = 1024;
      *(__p + 10) = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Identification - wiping ID cache due to build version update %d, override %d", __p, 0xEu);
    }

    v9 = sub_1000BE4B4(v6, v7);
    v10 = (*(*v9 + 56))(v9, a1, 0);
    if (v10)
    {
      v10 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR);
      if (v10)
      {
        sub_10084071C();
      }
    }

    v12 = sub_1000BE4B4(v10, v11);
    if ((*(*v12 + 72))(v12, a1, 0) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100840758();
    }

LABEL_25:
    *&__p[0] = 0;
    v13 = sub_100016250(__p);
    v14 = SLODWORD(__p[0]);
    v15 = SWORD2(__p[0]);
    memset(&buf, 0, sizeof(buf));
    v17 = sub_1000BE4B4(v13, v16);
    v18 = (*(*v17 + 32))(v17, a1, &buf);
    if (v18)
    {
      v19 = sub_1000295DC(a1);
      if (v19)
      {
        v21 = IsAppleInternalBuild();
        v22 = v21 != 0;
        if (v21)
        {
          v479 = 0;
          v477 = 0u;
          v478 = 0u;
          v475 = 0u;
          v476 = 0u;
          v473 = 0u;
          v474 = 0u;
          v471 = 0u;
          v472 = 0u;
          *v469 = 0u;
          memset(v470, 0, sizeof(v470));
          *v467 = 0u;
          v468 = 0u;
          memset(__p, 0, sizeof(__p));
          sub_100007AD0(__p);
          v23 = sub_100007774(&__p[1], "Read name result failure = ", 27);
          std::to_string(&__str, v18);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            LODWORD(p_str) = __str.__r_.__value_.__l.__data_;
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v25 = __str.__r_.__value_.__r.__words[1];
          }

          v26 = sub_100007774(v23, p_str, v25);
          v27 = sub_100007774(v26, ", device address = ", 19);
          v28 = v451;
          sub_1000BE6F8((a1 + 128), v451);
          if (v452 < 0)
          {
            v28 = v451[0];
          }

          v29 = strlen(v28);
          v30 = sub_100007774(v27, v28, v29);
          v31 = sub_100007774(v30, ", value = ", 10);
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          v33 = strlen(p_buf);
          sub_100007774(v31, p_buf, v33);
          if (v452 < 0)
          {
            operator delete(v451[0]);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::stringbuf::str();
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v34 = &__str;
          }

          else
          {
            v34 = __str.__r_.__value_.__r.__words[0];
          }

          sub_1001C4B04(v34);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          *&__p[1] = v35;
          if (SHIBYTE(v470[0]) < 0)
          {
            operator delete(v469[1]);
          }

          std::locale::~locale(&__p[2]);
          std::iostream::~basic_iostream();
          v36 = std::ios::~ios();
        }

        else
        {
          v44 = qword_100BCE8D8;
          v36 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT);
          if (v36)
          {
            sub_1000BE6F8((a1 + 128), &__str);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v375 = &__str;
            }

            else
            {
              v375 = __str.__r_.__value_.__r.__words[0];
            }

            v376 = &buf;
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v376 = buf.__r_.__value_.__r.__words[0];
            }

            LODWORD(__p[0]) = 67109891;
            DWORD1(__p[0]) = v18;
            WORD4(__p[0]) = 2082;
            *(__p + 10) = v375;
            WORD1(__p[1]) = 2160;
            *(&__p[1] + 4) = 1752392040;
            WORD6(__p[1]) = 2081;
            *(&__p[1] + 14) = v376;
            _os_log_fault_impl(&_mh_execute_header, v44, OS_LOG_TYPE_FAULT, "Read name result failure = %d, device address = %{public}s, value = %{private, mask.hash}s", __p, 0x26u);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }
        }

        v45 = sub_10000F034(v36, v37);
        v19 = (*(*v45 + 456))(v45, 0);
LABEL_63:
        memset(&__str, 0, sizeof(__str));
        v46 = sub_1000BE4B4(v19, v20);
        v47 = (*(*v46 + 208))(v46, a1, &__str);
        if (v47)
        {
          if (v22)
          {
            if (qword_100B53FE8 != -1)
            {
              sub_100840794();
            }

            sub_100578CA8(qword_100B53FE0, 4);
            v47 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR);
            if (v47)
            {
              sub_1000E5A58(a1, v451);
              sub_1008407BC();
            }
          }
        }

        else
        {
          v47 = std::string::operator=((a1 + 280), &__str);
        }

        v49 = sub_1000BE4B4(v47, v48);
        v50 = (*(*v49 + 224))(v49, a1, &buf);
        if (!v50)
        {
          v50 = std::string::operator=((a1 + 200), &buf);
          *(a1 + 224) = v14;
          *(a1 + 232) = v15;
        }

        v450 = 0;
        v52 = sub_1000BE4B4(v50, v51);
        v53 = (*(*v52 + 256))(v52, a1, &v450);
        if (!v53)
        {
          *(a1 + 304) = v450;
          *(a1 + 312) = v14;
          *(a1 + 320) = v15;
          if (qword_100B508F0 != -1)
          {
            sub_100840690();
          }

          *(a1 + 176) = sub_10056BEAC(off_100B508E8, (a1 + 304), a1);
          *(a1 + 184) = v14;
          *(a1 + 192) = v15;
        }

        v54 = qword_100BCE8D8;
        v55 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
        if (v55)
        {
          LODWORD(__p[0]) = 67109376;
          DWORD1(__p[0]) = v53;
          WORD4(__p[0]) = 1024;
          *(__p + 10) = v450;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Read classOfDevice result %d, value = 0x%x", __p, 0xEu);
        }

        v449[0] = 0;
        v449[1] = 0;
        v448 = v449;
        v57 = sub_1000BE4B4(v55, v56);
        v58 = (*(*v57 + 240))(v57, a1, &v448);
        if (!v58)
        {
          v58 = (a1 + 328);
          if ((a1 + 328) != &v448)
          {
            v58 = sub_1005506E8(v58, v448, v449);
          }

          *(a1 + 352) = v14;
          *(a1 + 360) = v15;
        }

        *(a1 + 1124) = 0;
        *(a1 + 1127) = 0;
        *(a1 + 1144) = 0;
        *(a1 + 1152) = 0;
        v60 = sub_1000BE4B4(v58, v59);
        v61 = (*(*v60 + 1496))(v60, a1);
        v447 = 0;
        v63 = sub_1000BE4B4(v61, v62);
        v64 = (*(*v63 + 1528))(v63, a1, &v447);
        v65 = qword_100BCE8D8;
        v66 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
        if (v66)
        {
          v68 = v447;
          sub_1000E5A58(a1, &v464);
          v69 = v465 >= 0 ? &v464 : v464;
          LODWORD(__p[0]) = 67109634;
          DWORD1(__p[0]) = v64;
          WORD4(__p[0]) = 1024;
          *(__p + 10) = v68;
          HIWORD(__p[0]) = 2082;
          *&__p[1] = v69;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "readGAPA result %d, value = 0x%x for %{public}s", __p, 0x18u);
          if (SHIBYTE(v465) < 0)
          {
            operator delete(v464);
          }
        }

        v70 = v447;
        if (v64)
        {
          v70 = 0;
        }

        *(a1 + 576) = v70;
        v71 = sub_1000BE4B4(v66, v67);
        v72 = (*(*v71 + 288))(v71, a1, a1 + 592);
        if (!v72)
        {
          if (qword_100B547A0 != -1)
          {
            sub_100840818();
          }

          sub_1006137F4(off_100B54798, a1);
          sub_10000801C(v454);
          if (qword_100B508F0 != -1)
          {
            sub_100840690();
          }

          sub_10056B15C(off_100B508E8, a1, 4);
          sub_100007FB8(v454);
        }

        v446 = 0;
        v74 = sub_1000BE4B4(v72, v73);
        v75 = (*(*v74 + 304))(v74, a1, &v446);
        if (v75)
        {
          v76 = 0;
          v77 = 0;
          v78 = 0x100010000;
        }

        else
        {
          v77 = v446;
          v76 = v446 & 1;
          v78 = *&vshl_u16((*&vdup_n_s16(v446) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
        }

        *(a1 + 650) = v76;
        *(a1 + 651) = vuzp1_s8(v78, v78).u32[0];
        *(a1 + 1392) = v77;
        v79 = qword_100BCE8D8;
        v80 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
        if (v80)
        {
          LODWORD(__p[0]) = 67109376;
          DWORD1(__p[0]) = v75;
          WORD4(__p[0]) = 1024;
          *(__p + 10) = v446;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Read PhonebookSyncSettings result %d, settings 0x%x", __p, 0xEu);
        }

        v445 = 0;
        v82 = sub_1000BE4B4(v80, v81);
        v83 = (*(*v82 + 416))(v82, a1, &v445);
        v85 = v445;
        if (v83)
        {
          v85 = 0;
        }

        *(a1 + 655) = v85;
        v444 = 0;
        v86 = sub_1000BE4B4(v83, v84);
        v87 = (*(*v86 + 432))(v86, a1, &v444);
        if (v87)
        {
          v88 = 0;
        }

        else
        {
          v88 = v444;
        }

        *(a1 + 662) = v88;
        v89 = qword_100BCE8D8;
        v90 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
        if (v90)
        {
          LODWORD(__p[0]) = 67109376;
          DWORD1(__p[0]) = v87;
          WORD4(__p[0]) = 1024;
          *(__p + 10) = v88;
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Read lastAVRCPVersion result %d, version %d", __p, 0xEu);
        }

        v443 = 0;
        v92 = sub_1000BE4B4(v90, v91);
        v93 = (*(*v92 + 448))(v92, a1, &v443);
        v95 = v443;
        if (v93)
        {
          v95 = 0;
        }

        *(a1 + 664) = v95;
        v442 = 0;
        v96 = sub_1000BE4B4(v93, v94);
        v97 = (*(*v96 + 464))(v96, a1, &v442);
        v99 = v442;
        if (v97)
        {
          v99 = 0;
        }

        *(a1 + 666) = v99;
        v441 = 0;
        v100 = sub_1000BE4B4(v97, v98);
        v101 = (*(*v100 + 480))(v100, a1, &v441);
        v103 = v441;
        if (v101)
        {
          v103 = 0;
        }

        *(a1 + 668) = v103;
        v440 = 0;
        v104 = sub_1000BE4B4(v101, v102);
        v105 = (*(*v104 + 496))(v104, a1, &v440);
        v107 = v440;
        if (v105)
        {
          v107 = 0;
        }

        *(a1 + 670) = v107;
        v439 = 0;
        v108 = sub_1000BE4B4(v105, v106);
        v109 = (*(*v108 + 512))(v108, a1, &v439);
        v111 = v439;
        if (v109)
        {
          v111 = 0;
        }

        *(a1 + 672) = v111;
        v438 = 0;
        v112 = sub_1000BE4B4(v109, v110);
        v113 = (*(*v112 + 528))(v112, a1, &v438);
        v115 = v438;
        if (v113)
        {
          v115 = 0;
        }

        *(a1 + 674) = v115;
        v437 = 0;
        v116 = sub_1000BE4B4(v113, v114);
        v117 = (*(*v116 + 544))(v116, a1, &v437);
        v119 = v437;
        if (v117)
        {
          v119 = 0;
        }

        *(a1 + 676) = v119;
        v436 = 0;
        v120 = sub_1000BE4B4(v117, v118);
        v121 = (*(*v120 + 560))(v120, a1, &v436);
        v123 = v436;
        if (v121)
        {
          v123 = 0;
        }

        *(a1 + 678) = v123;
        v435 = 0;
        v124 = sub_1000BE4B4(v121, v122);
        v125 = (*(*v124 + 576))(v124, a1, &v435);
        v127 = v435;
        if (v125)
        {
          v127 = 0;
        }

        *(a1 + 680) = v127;
        v434 = 0;
        v128 = sub_1000BE4B4(v125, v126);
        v129 = (*(*v128 + 592))(v128, a1, &v434);
        v131 = v434;
        if (v129)
        {
          v131 = 0;
        }

        *(a1 + 682) = v131;
        v433 = 0;
        v132 = sub_1000BE4B4(v129, v130);
        v133 = (*(*v132 + 608))(v132, a1, &v433);
        v135 = v433;
        if (v133)
        {
          v135 = 0;
        }

        *(a1 + 684) = v135;
        v432 = 0;
        v136 = sub_1000BE4B4(v133, v134);
        v137 = (*(*v136 + 624))(v136, a1, &v432);
        v139 = v432;
        if (v137)
        {
          v139 = 0;
        }

        *(a1 + 686) = v139;
        v431 = 0;
        v140 = sub_1000BE4B4(v137, v138);
        v141 = (*(*v140 + 640))(v140, a1, &v431);
        v143 = v431;
        if (v141)
        {
          v143 = 0;
        }

        *(a1 + 688) = v143;
        v430 = 0;
        v144 = sub_1000BE4B4(v141, v142);
        v145 = (*(*v144 + 656))(v144, a1, &v430);
        v147 = v430;
        if (v145)
        {
          v147 = 0;
        }

        *(a1 + 690) = v147;
        v429 = 0;
        v148 = sub_1000BE4B4(v145, v146);
        v149 = (*(*v148 + 672))(v148, a1, &v429);
        v151 = v429;
        if (v149)
        {
          v151 = 0;
        }

        *(a1 + 692) = v151;
        v428 = 0;
        v152 = sub_1000BE4B4(v149, v150);
        v153 = (*(*v152 + 688))(v152, a1, &v428);
        v155 = v428;
        if (v153)
        {
          v155 = 0;
        }

        *(a1 + 694) = v155;
        v427 = 0;
        v156 = sub_1000BE4B4(v153, v154);
        v157 = (*(*v156 + 704))(v156, a1, &v427);
        v159 = v427;
        if (v157)
        {
          v159 = 0;
        }

        *(a1 + 696) = v159;
        v426 = 0;
        v160 = sub_1000BE4B4(v157, v158);
        v161 = (*(*v160 + 720))(v160, a1, &v426);
        v163 = v426;
        if (v161)
        {
          v163 = 0;
        }

        *(a1 + 698) = v163;
        v425 = 0;
        v164 = sub_1000BE4B4(v161, v162);
        v165 = (*(*v164 + 736))(v164, a1, &v425);
        v167 = v425;
        if (v165)
        {
          v167 = 0;
        }

        *(a1 + 700) = v167;
        *(a1 + 704) = 0;
        v168 = sub_1000BE4B4(v165, v166);
        v169 = (*(*v168 + 48))(v168, a1, a1 + 708);
        if (v169)
        {
          *(a1 + 748) = 0;
        }

        else
        {
          *(a1 + 748) = 1;
          v171 = qword_100BCE8D8;
          v169 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
          if (v169)
          {
            sub_1000E5A58(a1, &v464);
            v172 = v465 >= 0 ? &v464 : v464;
            LODWORD(__p[0]) = 136446722;
            *(__p + 4) = v172;
            WORD6(__p[0]) = 1042;
            *(__p + 14) = 20;
            WORD1(__p[1]) = 2098;
            *(&__p[1] + 4) = a1 + 708;
            _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "Primary Identification - persisted {device %{public}s, %{public}.20P}", __p, 0x1Cu);
            if (SHIBYTE(v465) < 0)
            {
              operator delete(v464);
            }
          }
        }

        v173 = sub_1000BE4B4(v169, v170);
        if ((*(*v173 + 64))(v173, a1, a1 + 728))
        {
          *(a1 + 749) = 0;
        }

        else
        {
          *(a1 + 749) = 1;
          v174 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a1, &v464);
            v175 = v465 >= 0 ? &v464 : v464;
            LODWORD(__p[0]) = 136446722;
            *(__p + 4) = v175;
            WORD6(__p[0]) = 1042;
            *(__p + 14) = 20;
            WORD1(__p[1]) = 2098;
            *(&__p[1] + 4) = a1 + 728;
            _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_DEFAULT, "Secondary Identification  - persisted {device %{public}s, %{public}.20P}", __p, 0x1Cu);
            if (SHIBYTE(v465) < 0)
            {
              operator delete(v464);
            }
          }
        }

        v176 = qword_100BCE8D8;
        v177 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
        if (v177)
        {
          sub_1000E5A58(a1, __p);
          v179 = (SBYTE7(__p[1]) & 0x80u) == 0 ? __p : *&__p[0];
          LODWORD(v464) = 136446210;
          *(&v464 + 4) = v179;
          _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_DEFAULT, "Read SDP mirroring state for device %{public}s", &v464, 0xCu);
          if (SBYTE7(__p[1]) < 0)
          {
            operator delete(*&__p[0]);
          }
        }

        v424 = 0;
        v180 = sub_1000BE4B4(v177, v178);
        if ((*(*v180 + 752))(v180, a1, &v424))
        {
          *(a1 + 660) = 1;
          goto LABEL_194;
        }

        *&v472 = 0;
        v471 = 0u;
        memset(v470, 0, sizeof(v470));
        v468 = 0u;
        *v469 = 0u;
        *v467 = 0u;
        memset(__p, 0, sizeof(__p));
        sub_1000DE474(__p + 1);
        BYTE2(__p[1]) = 0;
        BYTE4(__p[1]) = 0;
        BYTE2(v467[0]) = 0;
        BYTE4(v467[0]) = 0;
        DWORD1(v470[1]) = 0;
        memset(&__p[1] + 8, 0, 24);
        LOBYTE(v467[0]) = 0;
        v467[1] = 0;
        v468 = 0uLL;
        LOBYTE(v469[0]) = 0;
        v469[1] = 0;
        memset(v470, 0, 19);
        BYTE8(v470[1]) = 1;
        *(&v470[1] + 14) = 0;
        *(&v470[1] + 9) = 0;
        *(&v470[2] + 1) = 0;
        v471 = 0uLL;
        LOBYTE(v472) = 0;
        *(&v472 + 2) = 0;
        v181 = sub_100536A18(a1, __p);
        v183 = sub_10000C7D0(v181, v182);
        if (sub_1004106D0(v183, 0xBB8u) && BYTE4(v472) == 1)
        {
          if (v424)
          {
LABEL_187:
            if (SHIBYTE(v470[0]) < 0)
            {
              operator delete(v469[1]);
            }

            if (SHIBYTE(v468) < 0)
            {
              operator delete(v467[1]);
            }

            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(*(&__p[1] + 1));
            }

            nullsub_21();
LABEL_194:
            *(a1 + 760) = *(a1 + 752);
            v190 = qword_100BCE8D8;
            v191 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
            if (v191)
            {
              sub_1000E5A58(a1, __p);
              v193 = (SBYTE7(__p[1]) & 0x80u) == 0 ? __p : *&__p[0];
              LODWORD(v464) = 136446210;
              *(&v464 + 4) = v193;
              _os_log_impl(&_mh_execute_header, v190, OS_LOG_TYPE_DEFAULT, "Read group list for %{public}s", &v464, 0xCu);
              if (SBYTE7(__p[1]) < 0)
              {
                operator delete(*&__p[0]);
              }
            }

            v194 = sub_1000BE4B4(v191, v192);
            v195 = (*(*v194 + 320))(v194, a1, a1 + 752);
            if (v195)
            {
              LODWORD(__p[0]) = -1;
              sub_10036F480((a1 + 752), __p);
            }

            v423 = 0;
            v197 = sub_1000BE4B4(v195, v196);
            v198 = (*(*v197 + 384))(v197, a1, &v423);
            if (!v198)
            {
              v200 = v423;
              *(a1 + 751) = v423;
              v201 = v200 ? 32 : 0;
              *(a1 + 1392) = *(a1 + 1392) & 0xFFFFFFDF | v201;
              v198 = sub_1000295DC(a1);
              if ((v198 & 1) == 0)
              {
                v198 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR);
                if (v198)
                {
                  sub_100840840();
                }
              }
            }

            v422 = 0;
            v202 = sub_1000BE4B4(v198, v199);
            v203 = (*(*v202 + 400))(v202, a1, &v422);
            if (!v203)
            {
              *(a1 + 794) = v422 != 0;
            }

            v205 = sub_1000BE4B4(v203, v204);
            v206 = (*(*v205 + 360))(v205, a1);
            v421 = 0;
            v208 = sub_1000BE4B4(v206, v207);
            v209 = (*(*v208 + 368))(v208, a1, &v421);
            if (!v209)
            {
              *(a1 + 368) = v421;
            }

            v420 = 0;
            v211 = sub_1000BE4B4(v209, v210);
            v212 = (*(*v211 + 1248))(v211, a1, &v420);
            *(a1 + 1016) = v420;
            v419 = 0;
            v214 = sub_1000BE4B4(v212, v213);
            v215 = (*(*v214 + 1248))(v214, a1, &v419);
            v217 = v419;
            *(a1 + 1032) = v419;
            if (*(a1 + 1016) == 1)
            {
              v218 = qword_100BCE8D8;
              v219 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
              if (v219)
              {
                v221 = "is not";
                if (v217)
                {
                  v221 = "is";
                }

                LODWORD(__p[0]) = 136315138;
                *(__p + 4) = v221;
                _os_log_impl(&_mh_execute_header, v218, OS_LOG_TYPE_DEFAULT, "Wireless Splitter this is a guest device that %s in contacts", __p, 0xCu);
              }

              LODWORD(__p[0]) = 0;
              v222 = sub_1000BE4B4(v219, v220);
              v215 = (*(*v222 + 1272))(v222, a1, __p);
              if (!v215)
              {
                *(a1 + 1020) = __p[0];
              }
            }

            v418 = 0;
            v223 = sub_1000BE4B4(v215, v216);
            v224 = (*(*v223 + 1296))(v223, a1, &v418);
            *(a1 + 1041) = v418;
            v417 = 0;
            v226 = sub_1000BE4B4(v224, v225);
            v227 = (*(*v226 + 1312))(v226, a1, &v417);
            *(a1 + 1044) = v417;
            v416 = 0;
            v229 = sub_1000BE4B4(v227, v228);
            v230 = (*(*v229 + 1328))(v229, a1, &v416);
            if (!v230)
            {
              *(a1 + 1045) = v416;
            }

            v231 = qword_100BCE8D8;
            v232 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
            if (v232)
            {
              LODWORD(__p[0]) = 67109376;
              DWORD1(__p[0]) = v230;
              WORD4(__p[0]) = 1024;
              *(__p + 10) = v416;
              _os_log_impl(&_mh_execute_header, v231, OS_LOG_TYPE_DEFAULT, "Read Temporary Managed Pairing Mode result %d, value = %d", __p, 0xEu);
            }

            v415 = 0;
            v234 = sub_1000BE4B4(v232, v233);
            v235 = (*(*v234 + 1344))(v234, a1, &v415);
            *(a1 + 1046) = v415;
            v414 = 0;
            v237 = sub_1000BE4B4(v235, v236);
            v238 = (*(*v237 + 832))(v237, a1, &v414);
            if (!v238)
            {
              *(a1 + 796) = v414;
            }

            v413 = 0;
            v240 = sub_1000BE4B4(v238, v239);
            v241 = (*(*v240 + 848))(v240, a1, &v413);
            if (!v241)
            {
              *(a1 + 800) = v413;
            }

            v242 = qword_100BCE8D8;
            v243 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
            if (v243)
            {
              LODWORD(__p[0]) = 67109376;
              DWORD1(__p[0]) = v241;
              WORD4(__p[0]) = 1024;
              *(__p + 10) = v413;
              _os_log_impl(&_mh_execute_header, v242, OS_LOG_TYPE_DEFAULT, "Read doubleTapAction result %d, value = %d", __p, 0xEu);
            }

            v412 = 0;
            v245 = sub_1000BE4B4(v243, v244);
            v246 = (*(*v245 + 864))(v245, a1, &v412);
            if (!v246)
            {
              *(a1 + 804) = v412;
            }

            v247 = qword_100BCE8D8;
            v248 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
            if (v248)
            {
              LODWORD(__p[0]) = 67109376;
              DWORD1(__p[0]) = v246;
              WORD4(__p[0]) = 1024;
              *(__p + 10) = v412;
              _os_log_impl(&_mh_execute_header, v247, OS_LOG_TYPE_DEFAULT, "Read InEarDetectionEnabled result %d, value = %d", __p, 0xEu);
            }

            v411 = 0;
            v250 = sub_1000BE4B4(v248, v249);
            v251 = (*(*v250 + 880))(v250, a1, &v411);
            if (!v251)
            {
              *(a1 + 808) = v411;
            }

            v252 = qword_100BCE8D8;
            v253 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
            if (v253)
            {
              sub_1000E5A58(a1, &v464);
              v255 = v465 >= 0 ? &v464 : v464;
              LODWORD(__p[0]) = 136446722;
              *(__p + 4) = v255;
              WORD6(__p[0]) = 1024;
              *(__p + 14) = v251;
              WORD1(__p[1]) = 1024;
              DWORD1(__p[1]) = v411;
              _os_log_impl(&_mh_execute_header, v252, OS_LOG_TYPE_DEFAULT, "[%{public}s] Read smart route result %d, mode = %d", __p, 0x18u);
              if (SHIBYTE(v465) < 0)
              {
                operator delete(v464);
              }
            }

            v410 = 0;
            v256 = sub_1000BE4B4(v253, v254);
            v257 = (*(*v256 + 920))(v256, a1, &v410);
            if (!v257)
            {
              *(a1 + 816) = v410;
            }

            v464 = 0uLL;
            v465 = 0;
            v259 = sub_1000BE4B4(v257, v258);
            v260 = (*(*v259 + 936))(v259, a1, &v464);
            if (!v260)
            {
              v262 = (a1 + 1232);
              if ((a1 + 1232) != &v464)
              {
                sub_1000DFCBC((a1 + 1232), v464, *(&v464 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v464 + 1) - v464) >> 3));
              }

              v263 = qword_100BCE8D8;
              v260 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
              if (v260)
              {
                v264 = *v262;
                v265 = (*v262 + 72);
                if (*(*v262 + 95) < 0)
                {
                  v265 = *v265;
                }

                v266 = (v264 + 240);
                if (*(v264 + 263) < 0)
                {
                  v266 = *v266;
                }

                LODWORD(__p[0]) = 141558531;
                *(__p + 4) = 1752392040;
                WORD6(__p[0]) = 2081;
                *(__p + 14) = v265;
                WORD3(__p[1]) = 2082;
                *(&__p[1] + 1) = v266;
                _os_log_impl(&_mh_execute_header, v263, OS_LOG_TYPE_DEFAULT, "AACPVersionInfo initialized: serial number %{private, mask.hash}s firmware version %{public}s", __p, 0x20u);
              }
            }

            memset(&v463, 0, sizeof(v463));
            v267 = sub_1000BE4B4(v260, v261);
            if (!(*(*v267 + 952))(v267, a1, &v463))
            {
              std::string::operator=((a1 + 1256), &v463);
            }

            v467[0] = 0;
            memset(__p, 0, sizeof(__p));
            v268 = sub_100007E30(&__p[2], "");
            v270 = sub_1000BE4B4(v268, v269);
            v271 = (*(*v270 + 968))(v270, a1, __p);
            if (!v271)
            {
              *(a1 + 1280) = __p[0];
              *(a1 + 1292) = *(__p + 12);
              v271 = std::string::operator=((a1 + 1312), &__p[2]);
            }

            v409 = 0;
            v273 = sub_1000BE4B4(v271, v272);
            v274 = (*(*v273 + 984))(v273, a1, &v409);
            if (!v274)
            {
              *(a1 + 820) = v409;
            }

            v408 = 0;
            v276 = sub_1000BE4B4(v274, v275);
            v277 = (*(*v276 + 1000))(v276, a1, &v408);
            if (!v277)
            {
              *(a1 + 828) = v408;
            }

            v407 = 0;
            v279 = sub_1000BE4B4(v277, v278);
            v280 = (*(*v279 + 1016))(v279, a1, &v407);
            if (!v280)
            {
              *(a1 + 832) = v407;
            }

            v406 = 0;
            v282 = sub_1000BE4B4(v280, v281);
            v283 = (*(*v282 + 1032))(v282, a1, &v406);
            if (!v283)
            {
              *(a1 + 836) = v406;
            }

            v405 = 0;
            v285 = sub_1000BE4B4(v283, v284);
            v286 = (*(*v285 + 1048))(v285, a1, &v405);
            if (!v286)
            {
              *(a1 + 840) = v405;
            }

            v404 = 0;
            v288 = sub_1000BE4B4(v286, v287);
            v289 = (*(*v288 + 1064))(v288, a1, &v404);
            if (!v289)
            {
              *(a1 + 844) = v404;
            }

            v403 = 0;
            v291 = sub_1000BE4B4(v289, v290);
            v292 = (*(*v291 + 1096))(v291, a1, &v403);
            if (!v292)
            {
              *(a1 + 864) = v403;
            }

            v402 = 0;
            v294 = sub_1000BE4B4(v292, v293);
            v295 = (*(*v294 + 1112))(v294, a1, &v402);
            if (!v295)
            {
              *(a1 + 868) = v402;
            }

            v401 = 0;
            v297 = sub_1000BE4B4(v295, v296);
            v298 = (*(*v297 + 1160))(v297, a1, &v401);
            if (!v298)
            {
              *(a1 + 876) = v401;
            }

            v400 = 0;
            v300 = sub_1000BE4B4(v298, v299);
            v301 = (*(*v300 + 1144))(v300, a1, &v400);
            if (!v301)
            {
              *(a1 + 1536) = v400;
            }

            v399 = 0;
            v303 = sub_1000BE4B4(v301, v302);
            v304 = (*(*v303 + 1128))(v303, a1, &v399);
            if (!v304)
            {
              *(a1 + 872) = v399;
            }

            v398 = 0;
            v306 = sub_1000BE4B4(v304, v305);
            v307 = (*(*v306 + 1080))(v306, a1, &v398);
            if (!v307)
            {
              *(a1 + 848) = v398;
            }

            v397 = 0;
            v309 = sub_1000BE4B4(v307, v308);
            v310 = (*(*v309 + 1176))(v309, a1, &v397);
            if (!v310)
            {
              *(a1 + 944) = v397;
            }

            v394 = 0;
            v395 = 0;
            v396 = 0;
            v312 = sub_1000BE4B4(v310, v311);
            v313 = (*(*v312 + 1192))(v312, a1, &v394);
            if (!v313)
            {
              v313 = (a1 + 968);
              if ((a1 + 968) != &v394)
              {
                v313 = sub_100550954(v313, v394, v395, v395 - v394);
              }
            }

            v391 = 0;
            v392 = 0;
            v393 = 0;
            v315 = sub_1000BE4B4(v313, v314);
            v316 = (*(*v315 + 1208))(v315, a1, &v391);
            if (!v316)
            {
              v316 = (a1 + 992);
              if ((a1 + 992) != &v391)
              {
                v316 = sub_1003A5C5C(v316, v391, v392, (v392 - v391) >> 2);
              }
            }

            v390 = 0;
            v318 = sub_1000BE4B4(v316, v317);
            v319 = (*(*v318 + 1352))(v318, a1, &v390);
            if (!v319)
            {
              *(a1 + 424) = v390;
            }

            v389 = 0;
            v321 = sub_1000BE4B4(v319, v320);
            v322 = (*(*v321 + 1368))(v321, a1, &v389);
            if (!v322)
            {
              *(a1 + 428) = v389;
            }

            v388 = 0.0;
            v324 = sub_1000BE4B4(v322, v323);
            v325 = (*(*v324 + 1384))(v324, a1, &v388);
            v327 = v388;
            if (v325)
            {
              v327 = -1.0;
            }

            *(a1 + 1180) = v327;
            v328 = sub_1000BE4B4(v325, v326);
            v385 = 0;
            v386 = 0;
            v387 = 0;
            (*(*v328 + 1400))(v328, a1, &v385);
            if (v385)
            {
              v386 = v385;
              operator delete(v385);
            }

            v329 = sub_1003A5C5C((a1 + 1184), 0, 0, 0);
            *(a1 + 376) = 0;
            *(a1 + 384) = 0;
            v384 = -1;
            v331 = sub_1000BE4B4(v329, v330);
            v332 = (*(*v331 + 1416))(v331, a1, &v384);
            v333 = qword_100BCE8D8;
            v334 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
            if (v334)
            {
              *v455 = 67109376;
              *&v455[4] = v384;
              v456 = 1024;
              v457 = v332;
              _os_log_impl(&_mh_execute_header, v333, OS_LOG_TYPE_DEFAULT, "readEncryptionKeySize: %d, result: %d", v455, 0xEu);
            }

            if (!v332)
            {
              *(a1 + 1053) = v384;
            }

            v383 = -1;
            v336 = sub_1000BE4B4(v334, v335);
            v337 = (*(*v336 + 1432))(v336, a1, &v383);
            v338 = qword_100BCE8D8;
            v339 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
            if (v339)
            {
              *v455 = 67109376;
              *&v455[4] = v383;
              v456 = 1024;
              v457 = v337;
              _os_log_impl(&_mh_execute_header, v338, OS_LOG_TYPE_DEFAULT, "readEncryptionMode: %d, result: %d", v455, 0xEu);
            }

            if (!v337)
            {
              *(a1 + 1054) = v383;
            }

            v382 = 0;
            v341 = sub_1000BE4B4(v339, v340);
            v342 = (*(*v341 + 1448))(v341, a1, &v382);
            if (!v342)
            {
              *(a1 + 1056) = v382;
            }

            v344 = sub_10000C798(v342, v343);
            v345 = (*(*v344 + 416))(v344);
            if (v345)
            {
              v347 = sub_100536B0C(a1);
              v348 = qword_100BCE8D8;
              v345 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
              if (v345)
              {
                *v455 = 67109120;
                *&v455[4] = v347;
                _os_log_impl(&_mh_execute_header, v348, OS_LOG_TYPE_DEFAULT, "Number of services %d supporting PSM/RFCOMM", v455, 8u);
              }
            }

            v381 = 0;
            v349 = sub_1000BE4B4(v345, v346);
            v350 = (*(*v349 + 1464))(v349, a1, &v381);
            v351 = qword_100BCE8D8;
            v352 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
            if (v352)
            {
              v354 = *(a1 + 1428);
              *v455 = 67109120;
              *&v455[4] = v354;
              _os_log_impl(&_mh_execute_header, v351, OS_LOG_TYPE_DEFAULT, "Read hidDeviceBehavior : %d", v455, 8u);
            }

            if (v350)
            {
              v355 = qword_100BCE8D8;
              v352 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
              if (v352)
              {
                v356 = *(a1 + 1428);
                *v455 = 67109120;
                *&v455[4] = v356;
                _os_log_impl(&_mh_execute_header, v355, OS_LOG_TYPE_DEFAULT, "Failed to read hidDeviceBehavior : %d", v455, 8u);
              }
            }

            else
            {
              *(a1 + 1428) = v381;
            }

            v380 = 0;
            v357 = sub_1000BE4B4(v352, v353);
            v358 = (*(*v357 + 1480))(v357, a1, &v380);
            v359 = qword_100BCE8D8;
            v360 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
            if (v360)
            {
              *v455 = 67109120;
              *&v455[4] = v380;
              _os_log_impl(&_mh_execute_header, v359, OS_LOG_TYPE_DEFAULT, "Read userSelectedDeviceType : %d", v455, 8u);
            }

            if (v358)
            {
              v362 = qword_100BCE8D8;
              v360 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
              v363 = 0;
              if (v360)
              {
                *v455 = 67109120;
                *&v455[4] = v358;
                _os_log_impl(&_mh_execute_header, v362, OS_LOG_TYPE_DEFAULT, "Failed to read userSelectedDeviceType due to error: %d", v455, 8u);
                v363 = 0;
              }
            }

            else
            {
              v363 = v380;
            }

            *(a1 + 1484) = v363;
            v379 = 0;
            v364 = sub_1000BE4B4(v360, v361);
            v365 = (*(*v364 + 1512))(v364, a1, &v379);
            v366 = qword_100BCE8D8;
            if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_331;
            }

            sub_100007E30(v455, off_100AFC518[v379]);
            v367 = v458;
            v368 = *v455;
            sub_1000E5A58(a1, v377);
            v369 = v455;
            if (v367 < 0)
            {
              v369 = v368;
            }

            if (v378 >= 0)
            {
              v370 = v377;
            }

            else
            {
              v370 = v377[0];
            }

            *v459 = 136315394;
            v460 = v369;
            v461 = 2082;
            v462 = v370;
            _os_log_impl(&_mh_execute_header, v366, OS_LOG_TYPE_DEFAULT, "Read CarPlayType : %s for %{public}s", v459, 0x16u);
            if (v378 < 0)
            {
              operator delete(v377[0]);
            }

            if (v458 < 0)
            {
              operator delete(*v455);
              if (v365)
              {
                goto LABEL_332;
              }
            }

            else
            {
LABEL_331:
              if (v365)
              {
LABEL_332:
                v371 = qword_100BCE8D8;
                if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                {
                  *v455 = 67109120;
                  *&v455[4] = v365;
                  _os_log_impl(&_mh_execute_header, v371, OS_LOG_TYPE_DEFAULT, "Failed to read CarPlayType due to error: %d", v455, 8u);
                }

                if (sub_1000DFB74(a1, 0x40000u) != 4)
                {
                  *(a1 + 1572) = 0;
LABEL_340:
                  if (v391)
                  {
                    v392 = v391;
                    operator delete(v391);
                  }

                  if (v394)
                  {
                    v395 = v394;
                    operator delete(v394);
                  }

                  if (SHIBYTE(v467[0]) < 0)
                  {
                    operator delete(*&__p[2]);
                  }

                  if (SHIBYTE(v463.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v463.__r_.__value_.__l.__data_);
                  }

                  *&__p[0] = &v464;
                  sub_1000161FC(__p);
                  sub_10000CEDC(&v448, v449[0]);
                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(buf.__r_.__value_.__l.__data_);
                  }

                  return sub_1000088CC(v454);
                }

                v372 = 1;
LABEL_339:
                *(a1 + 1572) = v372;
                goto LABEL_340;
              }
            }

            v372 = v379;
            goto LABEL_339;
          }

          LOBYTE(v394) = 0;
          v184 = sub_10000E92C();
          sub_100007E30(&v464, "SDPMirroring");
          sub_100007E30(&v463, "DisableSDPMirroring");
          v185 = (*(*v184 + 72))(v184, &v464, &v463, &v394);
          if (SHIBYTE(v463.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v463.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v465) < 0)
          {
            operator delete(v464);
          }

          v186 = qword_100BCE8D8;
          v187 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
          if (v185)
          {
            if (v187)
            {
              sub_1000E5A58(a1, &v464);
              v188 = v465 >= 0 ? &v464 : v464;
              LODWORD(v463.__r_.__value_.__l.__data_) = 136446210;
              *(v463.__r_.__value_.__r.__words + 4) = v188;
              _os_log_impl(&_mh_execute_header, v186, OS_LOG_TYPE_DEFAULT, "SDP mirroring state for device %{public}s is correct as key is present. Updating.", &v463, 0xCu);
              if (SHIBYTE(v465) < 0)
              {
                operator delete(v464);
              }
            }

            v189 = v394 ^ 1;
          }

          else
          {
            if (v187)
            {
              sub_1000E5A58(a1, &v464);
              v374 = v465 >= 0 ? &v464 : v464;
              LODWORD(v463.__r_.__value_.__l.__data_) = 136446210;
              *(v463.__r_.__value_.__r.__words + 4) = v374;
              _os_log_impl(&_mh_execute_header, v186, OS_LOG_TYPE_DEFAULT, "SDP mirroring state for device %{public}s is incorrect as key isn't present. Resetting.", &v463, 0xCu);
              if (SHIBYTE(v465) < 0)
              {
                operator delete(v464);
              }
            }

            v189 = 1;
          }
        }

        else
        {
          v189 = v424;
        }

        *(a1 + 660) = v189;
        goto LABEL_187;
      }
    }

    else
    {
      v38 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000BE6F8((a1 + 128), &__str);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = &__str;
        }

        else
        {
          v39 = __str.__r_.__value_.__r.__words[0];
        }

        v40 = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v40 = buf.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p[0]) = 136446723;
        *(__p + 4) = v39;
        WORD6(__p[0]) = 2160;
        *(__p + 14) = 1752392040;
        WORD3(__p[1]) = 2081;
        *(&__p[1] + 1) = v40;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Read name result success, device address = %{public}s, value = %{private, mask.hash}s", __p, 0x20u);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      v41 = std::string::operator=((a1 + 240), &buf);
      *(a1 + 264) = v14;
      *(a1 + 272) = v15;
      *(a1 + 1433) = 1;
      v43 = sub_10000F034(v41, v42);
      v19 = (*(*v43 + 456))(v43, 1);
    }

    v22 = 0;
    goto LABEL_63;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008406B8();
  }

  return sub_1000088CC(v454);
}

void sub_100536438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57, __int128 a58)
{
  sub_100320BE8(&STACK[0x210]);
  sub_10000CEDC(&a45, a46);
  if (a57 < 0)
  {
    operator delete(__p);
  }

  if (*(v58 - 105) < 0)
  {
    operator delete(*(v58 - 128));
  }

  sub_1000088CC(&a58);
  _Unwind_Resume(a1);
}

uint64_t sub_100536730(uint64_t a1)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Clearing SDP local memory database", buf, 2u);
  }

  v3 = *(a1 + 592);
  v4 = (a1 + 600);
  if (v3 != (a1 + 600))
  {
    do
    {
      *buf = 0;
      v14 = 0;
      v15 = 0;
      sub_10041F568(buf, (v3 + 5));
      v5 = *buf;
      if (*buf != &v14)
      {
        do
        {
          v12 = *(v5 + 5);
          sub_10037D4F4(&v12);
          v6 = v5[1];
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
              v7 = v5[2];
              v8 = *v7 == v5;
              v5 = v7;
            }

            while (!v8);
          }

          v5 = v7;
        }

        while (v7 != &v14);
      }

      sub_10000CEDC(buf, v14);
      v14 = 0;
      v15 = 0;
      *buf = &v14;
      sub_10037D4F4(v3[4]);
      free(v3[4]);
      sub_10000CEDC(buf, v14);
      v9 = v3[1];
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
          v10 = v3[2];
          v8 = *v10 == v3;
          v3 = v10;
        }

        while (!v8);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  sub_10037505C(a1 + 592, *(a1 + 600));
  *(a1 + 592) = v4;
  *v4 = 0u;
  if ([*(a1 + 1368) count])
  {
    [*(a1 + 1368) removeAllObjects];
  }

  return sub_1000088CC(v16);
}

void sub_1005368D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100536908(unsigned __int8 *a1)
{
  result = sub_1000295DC(a1);
  if ((result & 1) == 0)
  {
    v3 = qword_100BCE8D8;
    v4 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      sub_1000E5A58(a1, __p);
      if (v9 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 136446210;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing device %{public}s from disk", buf, 0xCu);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = sub_1000BE4B4(v4, v5);
    return (*(*v7 + 24))(v7, a1);
  }

  return result;
}

BOOL sub_100536A18(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1);
  v4 = *(a1 + 632);
  v5 = *(a1 + 624);
  if (v4 != v5)
  {
    *a2 = *v5;
    sub_1006E5F04((a2 + 1), (v5 + 1));
    v6 = *(v5 + 18);
    *(a2 + 20) = *(v5 + 20);
    *(a2 + 18) = v6;
    std::string::operator=((a2 + 24), (v5 + 24));
    v7 = *(v5 + 48);
    *(a2 + 52) = *(v5 + 52);
    *(a2 + 48) = v7;
    std::string::operator=((a2 + 56), (v5 + 56));
    *(a2 + 80) = *(v5 + 80);
    std::string::operator=((a2 + 88), (v5 + 88));
    v8 = *(v5 + 112);
    v9 = *(v5 + 128);
    v10 = *(v5 + 144);
    *(a2 + 159) = *(v5 + 159);
    *(a2 + 128) = v9;
    *(a2 + 144) = v10;
    *(a2 + 112) = v8;
  }

  sub_1000088CC(v12);
  return v4 != v5;
}

uint64_t sub_100536B0C(uint64_t a1)
{
  v73[0] = 0;
  v73[1] = 0;
  sub_100007F88(v73, a1);
  if ([*(a1 + 1368) count])
  {
    [*(a1 + 1368) removeAllObjects];
  }

  else
  {
    v1 = +[NSMutableArray array];
    v2 = *(a1 + 1368);
    *(a1 + 1368) = v1;
  }

  v3 = *(a1 + 592);
  v4 = (a1 + 600);
  if (v3 != (a1 + 600))
  {
    v5 = 0;
    v66 = (a1 + 600);
    while (1)
    {
      v72 = 0uLL;
      v72 = *v3[4];
      v90 = 0uLL;
      v91 = 0;
      v6 = sub_10053BFB4(a1, &v72, 4u, &v90);
      v7 = v90;
      if (v6)
      {
        v67 = v3;
        v8 = *(&v90 + 1);
        if (v90 != *(&v90 + 1))
        {
          while (1)
          {
            v9 = v7[1];
            if ((v9 & 1) == 0)
            {
              if (v7[1])
              {
                break;
              }
            }

LABEL_77:
            v7 += 8;
            if (v7 == v8)
            {
              v7 = v90;
              goto LABEL_79;
            }
          }

          v10 = 0;
          v11 = (*(v7 + 1) + 24);
          while (2)
          {
            v12 = *(v11 - 4);
            if (v12 == 3)
            {
              v19 = *v11;
              v20 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                *v88 = 67109120;
                *&v88[4] = v19;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "RFCOMM CID: %d", v88, 8u);
              }

              memset(v88, 0, sizeof(v88));
              v89 = 0;
              sub_100007E30(v88, "RFCOMM ServiceClass: ");
              memset(&v71, 0, sizeof(v71));
              if (v72 == 3)
              {
                if (WORD1(v72) > 4u)
                {
                  v32 = [NSData dataWithBytes:*(&v72 + 1) length:?];
                  v33 = qword_100BCE8D8;
                  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *&buf[4] = v32;
                    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "service long UUID: %@", buf, 0xCu);
                  }

                  v34 = *(a1 + 1368);
                  v74[0] = @"kCBMsgArgServiceUUID";
                  v74[1] = @"kCBMsgArgRFCOMMChannelID";
                  v75[0] = v32;
                  v35 = [NSNumber numberWithUnsignedChar:v19, v66];
                  v75[1] = v35;
                  v36 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:2];
                  [v34 addObject:v36];

                  v37 = sub_100302240(*(&v72 + 1));
                  std::string::assign(&v71, v37);
                }

                else
                {
                  if (WORD1(v72) == 2)
                  {
                    LOWORD(__p[0]) = bswap32(WORD4(v72)) >> 16;
                    v21 = [NSData dataWithBytes:__p length:2];
                    v22 = qword_100BCE8D8;
                    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109378;
                      *&buf[4] = DWORD2(v72);
                      *&buf[8] = 2112;
                      *&buf[10] = v21;
                      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "service short UUID: (0x%x) %@", buf, 0x12u);
                    }

                    v23 = *(a1 + 1368);
                    v78[0] = @"kCBMsgArgServiceUUID";
                    v78[1] = @"kCBMsgArgRFCOMMChannelID";
                    v79[0] = v21;
                    v24 = [NSNumber numberWithUnsignedChar:v19, v66];
                    v79[1] = v24;
                    v25 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:2];
                    [v23 addObject:v25];
                  }

                  else
                  {
                    LODWORD(__p[0]) = bswap32(DWORD2(v72));
                    v50 = [NSData dataWithBytes:__p length:?];
                    v51 = qword_100BCE8D8;
                    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109378;
                      *&buf[4] = DWORD2(v72);
                      *&buf[8] = 2112;
                      *&buf[10] = v50;
                      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "service short UUID: (0x%x) %@", buf, 0x12u);
                    }

                    v52 = *(a1 + 1368);
                    v76[0] = @"kCBMsgArgServiceUUID";
                    v76[1] = @"kCBMsgArgRFCOMMChannelID";
                    v77[0] = v50;
                    v53 = [NSNumber numberWithUnsignedChar:v19, v66];
                    v77[1] = v53;
                    v54 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:2];
                    [v52 addObject:v54];
                  }

                  v55 = sub_10030253C(DWORD2(v72));
                  std::string::assign(&v71, v55);
                }

                v5 = (v5 + 1);
              }

              memset(buf, 0, 24);
              sub_100007E30(buf, "\n");
              __p[0] = 0;
              __p[1] = 0;
              v70 = 0;
              sub_10053B318(v88, &v71.__r_.__value_.__l.__data_, &v80);
              if ((buf[23] & 0x80u) == 0)
              {
                v56 = buf;
              }

              else
              {
                v56 = *buf;
              }

              if ((buf[23] & 0x80u) == 0)
              {
                v57 = buf[23];
              }

              else
              {
                v57 = *&buf[8];
              }

              v58 = std::string::append(&v80, v56, v57);
              v59 = *&v58->__r_.__value_.__l.__data_;
              v70 = v58->__r_.__value_.__r.__words[2];
              *__p = v59;
              v58->__r_.__value_.__l.__size_ = 0;
              v58->__r_.__value_.__r.__words[2] = 0;
              v58->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v80.__r_.__value_.__l.__data_);
              }

              v48 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                v49 = __p;
                if (v70 < 0)
                {
                  v49 = __p[0];
                }

LABEL_66:
                LODWORD(v80.__r_.__value_.__l.__data_) = 136315138;
                *(v80.__r_.__value_.__r.__words + 4) = v49;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%s", &v80, 0xCu);
              }

LABEL_67:
              if (SHIBYTE(v70) < 0)
              {
                operator delete(__p[0]);
              }

              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v71.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v89) < 0)
              {
                operator delete(*v88);
              }
            }

            else if (v12 == 256)
            {
              v13 = *v11;
              memset(v88, 0, sizeof(v88));
              v89 = 0;
              sub_100007E30(v88, "L2CAP ServiceClass: ");
              memset(&v71, 0, sizeof(v71));
              if (v72 == 3)
              {
                if (WORD1(v72) > 4u)
                {
                  v26 = [NSData dataWithBytes:*(&v72 + 1) length:?];
                  v27 = qword_100BCE8D8;
                  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *&buf[4] = v26;
                    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "service long UUID: %@", buf, 0xCu);
                  }

                  v28 = *(a1 + 1368);
                  v82[0] = @"kCBMsgArgServiceUUID";
                  v82[1] = @"kCBMsgArgPSM";
                  v83[0] = v26;
                  v29 = [NSNumber numberWithUnsignedShort:v13, v66];
                  v83[1] = v29;
                  v30 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:2];
                  [v28 addObject:v30];

                  v31 = sub_100302240(*(&v72 + 1));
                  std::string::assign(&v71, v31);
                }

                else
                {
                  if (WORD1(v72) == 2)
                  {
                    LOWORD(__p[0]) = bswap32(WORD4(v72)) >> 16;
                    v14 = [NSData dataWithBytes:__p length:2];
                    v15 = qword_100BCE8D8;
                    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109378;
                      *&buf[4] = DWORD2(v72);
                      *&buf[8] = 2112;
                      *&buf[10] = v14;
                      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "service short UUID: (0x%x) %@", buf, 0x12u);
                    }

                    v16 = *(a1 + 1368);
                    v86[0] = @"kCBMsgArgServiceUUID";
                    v86[1] = @"kCBMsgArgPSM";
                    v87[0] = v14;
                    v17 = [NSNumber numberWithUnsignedShort:v13, v66];
                    v87[1] = v17;
                    v18 = [NSDictionary dictionaryWithObjects:v87 forKeys:v86 count:2];
                    [v16 addObject:v18];
                  }

                  else
                  {
                    LODWORD(__p[0]) = bswap32(DWORD2(v72));
                    v38 = [NSData dataWithBytes:__p length:?];
                    v39 = qword_100BCE8D8;
                    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109378;
                      *&buf[4] = DWORD2(v72);
                      *&buf[8] = 2112;
                      *&buf[10] = v38;
                      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "service short UUID: (0x%x) %@", buf, 0x12u);
                    }

                    v40 = *(a1 + 1368);
                    v84[0] = @"kCBMsgArgServiceUUID";
                    v84[1] = @"kCBMsgArgPSM";
                    v85[0] = v38;
                    v41 = [NSNumber numberWithUnsignedShort:v13, v66];
                    v85[1] = v41;
                    v42 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:2];
                    [v40 addObject:v42];
                  }

                  v43 = sub_10030253C(DWORD2(v72));
                  std::string::assign(&v71, v43);
                }

                v5 = (v5 + 1);
              }

              memset(buf, 0, 24);
              sub_100007E30(buf, "\n");
              __p[0] = 0;
              __p[1] = 0;
              v70 = 0;
              sub_10053B318(v88, &v71.__r_.__value_.__l.__data_, &v80);
              if ((buf[23] & 0x80u) == 0)
              {
                v44 = buf;
              }

              else
              {
                v44 = *buf;
              }

              if ((buf[23] & 0x80u) == 0)
              {
                v45 = buf[23];
              }

              else
              {
                v45 = *&buf[8];
              }

              v46 = std::string::append(&v80, v44, v45);
              v47 = *&v46->__r_.__value_.__l.__data_;
              v70 = v46->__r_.__value_.__r.__words[2];
              *__p = v47;
              v46->__r_.__value_.__l.__size_ = 0;
              v46->__r_.__value_.__r.__words[2] = 0;
              v46->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v80.__r_.__value_.__l.__data_);
              }

              v48 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                v49 = __p;
                if (v70 < 0)
                {
                  v49 = __p[0];
                }

                goto LABEL_66;
              }

              goto LABEL_67;
            }

            v11 += 32;
            v10 += 2;
            if (v10 >= v9)
            {
              v8 = *(&v90 + 1);
              goto LABEL_77;
            }

            continue;
          }
        }

LABEL_79:
        v4 = v66;
        v3 = v67;
        if (v7 != v8)
        {
          do
          {
            memset(v88, 0, sizeof(v88));
            *v88 = *v7;
            sub_10037D4F4(v88);
            v7 += 8;
          }

          while (v7 != *(&v90 + 1));
          v7 = v90;
        }
      }

      if (v7)
      {
        *(&v90 + 1) = v7;
        operator delete(v7);
      }

      v60 = v3[1];
      if (v60)
      {
        do
        {
          v61 = v60;
          v60 = *v60;
        }

        while (v60);
      }

      else
      {
        do
        {
          v61 = v3[2];
          v62 = *v61 == v3;
          v3 = v61;
        }

        while (!v62);
      }

      v3 = v61;
      if (v61 == v4)
      {
        goto LABEL_92;
      }
    }
  }

  v5 = 0;
LABEL_92:
  v63 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v64 = *(a1 + 1368);
    LODWORD(v90) = 138412290;
    *(&v90 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Services dictionary: %@", &v90, 0xCu);
  }

  sub_1000088CC(v73);
  return v5;
}

uint64_t sub_1005377D0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *a2 = *(a1 + 136);
  return sub_1000088CC(v5);
}

uint64_t sub_10053781C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (*(a1 + 303) < 0)
  {
    sub_100008904(a2, *(a1 + 280), *(a1 + 288));
  }

  else
  {
    *a2 = *(a1 + 280);
    *(a2 + 16) = *(a1 + 296);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_1005378A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (*(a1 + 223) < 0)
  {
    sub_100008904(a2, *(a1 + 200), *(a1 + 208));
  }

  else
  {
    *a2 = *(a1 + 200);
    *(a2 + 16) = *(a1 + 216);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100537920(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1);
  v2 = *(a1 + 328);
  v3 = (a1 + 336);
  if (v2 == (a1 + 336))
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      if (*(v2 + 8) == 4)
      {
        v4 = *(v2 + 7) | v4;
      }

      v5 = v2[1];
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
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  sub_1000088CC(v9);
  return v4;
}

uint64_t sub_1005379CC(uint64_t a1, _DWORD *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  if (*(a1 + 312) == 0)
  {
    v5 = 0;
  }

  else
  {
    *a2 = *(a1 + 304);
    v5 = 1;
  }

  sub_1000088CC(v6);
  return v5;
}

uint64_t sub_100537A38(void *a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (a1[23])
  {
    v2 = 1;
  }

  else
  {
    v2 = a1[24] != 0;
  }

  if (a1[28])
  {
    v2 |= 2u;
  }

  else if (a1[29])
  {
    v2 |= 2u;
  }

  if (a1[33])
  {
    v2 |= 8u;
  }

  else if (a1[34])
  {
    v2 |= 8u;
  }

  if (a1[44])
  {
    v3 = v2 | 4;
  }

  else if (a1[45])
  {
    v3 = v2 | 4;
  }

  else
  {
    v3 = v2;
  }

  sub_1000088CC(v5);
  return v3;
}

uint64_t sub_100537AF8(uint64_t a1, int a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v4 = sub_100007F88(v8, a1);
  *(a1 + 1484) = a2;
  v6 = sub_1000BE4B4(v4, v5);
  (*(*v6 + 1488))(v6, a1, *(a1 + 1484));
  return sub_1000088CC(v8);
}

uint64_t sub_100537B8C(uint64_t a1)
{
  v6 = 0;
  sub_1000216B4(&v6);
  v5 = 0;
  if (sub_10023DB58(a1 + 128, &v5))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v5 + 278);
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v8 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HDR link is connected %d", buf, 8u);
    }
  }

  sub_10002249C(&v6);
  return v2;
}

BOOL sub_100537C88(uint64_t a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_100840890();
  }

  v2 = off_100B50F60;

  return sub_100530480(v2, a1);
}

unsigned int *sub_100537CDC(uint64_t a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_100840890();
  }

  result = sub_10053066C(off_100B50F60, a1);
  if (result)
  {
    return *result;
  }

  return result;
}

BOOL sub_100537D2C(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v2 = *(a1 + 176);
  v4 = v2 == 17 || v2 == 22;
  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_100537D80(uint64_t a1, int a2)
{
  if (qword_100B54220 != -1)
  {
    sub_1008408A4();
  }

  v4 = sub_1003C62F8(qword_100B54218, 2);
  v32 = 0;
  v33[0] = 0;
  v33[1] = 0;
  sub_100703E38(v4, &v32);
  v5 = v32;
  if (v32 != v33)
  {
    v29 = a2;
    while (1)
    {
      v6 = (v5 + 4);
      v7 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000DEEA4(a1, __p);
        v21 = __p;
        if (v31 < 0)
        {
          v21 = __p[0];
        }

        if (*(v5 + 55) < 0)
        {
          v22 = *v6;
        }

        else
        {
          v22 = v5 + 4;
        }

        v26 = *(v5 + 28);
        *buf = 136446978;
        *&buf[4] = v21;
        *&buf[12] = 2080;
        *&buf[14] = v22;
        v35 = 1024;
        v36 = a2;
        v37 = 1024;
        v38 = v26;
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Identification - isAutomationDongle comparing Friendly Names: %{public}s and %s, and Chipset Manufacturer IDs: %d and %d", buf, 0x22u);
        if (v31 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if ((*(v5 + 55) & 0x8000000000000000) != 0)
      {
        if (!v5[5])
        {
          goto LABEL_37;
        }
      }

      else if (!*(v5 + 55))
      {
        goto LABEL_37;
      }

      sub_1000DEEA4(a1, buf);
      v8 = HIBYTE(v35);
      v9 = SHIBYTE(v35);
      v10 = *buf;
      if (v35 >= 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      if (v35 < 0)
      {
        v8 = *&buf[8];
      }

      if (*(v5 + 55) >= 0)
      {
        v12 = *(v5 + 55);
      }

      else
      {
        v6 = v5[4];
        v12 = v5[5];
      }

      if (!v12)
      {
        goto LABEL_33;
      }

      if (v8 < v12)
      {
        v13 = 0;
        goto LABEL_34;
      }

      v14 = a1;
      v15 = &v11[v8];
      v16 = *v6;
      v17 = v11;
      while (1)
      {
        v18 = v8 - v12;
        if (v18 == -1 || (v19 = memchr(v17, v16, v18 + 1)) == 0)
        {
LABEL_26:
          v13 = 0;
          a2 = v29;
          a1 = v14;
          goto LABEL_34;
        }

        v20 = v19;
        if (!memcmp(v19, v6, v12))
        {
          break;
        }

        v17 = v20 + 1;
        v8 = v15 - (v20 + 1);
        if (v8 < v12)
        {
          goto LABEL_26;
        }
      }

      v13 = 0;
      a1 = v14;
      if (v20 != v15)
      {
        break;
      }

      a2 = v29;
LABEL_34:
      if (v9 < 0)
      {
        operator delete(v10);
      }

      if (v13)
      {
        v27 = 1;
        goto LABEL_50;
      }

LABEL_37:
      v23 = v5[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v5[2];
          v25 = *v24 == v5;
          v5 = v24;
        }

        while (!v25);
      }

      v5 = v24;
      if (v24 == v33)
      {
        goto LABEL_48;
      }
    }

    a2 = v29;
    if (v20 - v11 == -1)
    {
      goto LABEL_34;
    }

LABEL_33:
    v13 = *(v5 + 28) == a2;
    goto LABEL_34;
  }

LABEL_48:
  v27 = 0;
LABEL_50:
  sub_10004B61C(&v32, v33[0]);
  return v27;
}

BOOL sub_1005380B4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 176) == 25;
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100538104(uint64_t a1, _OWORD *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if ((a1 + 136) != a2)
  {
    *(a1 + 136) = *a2;
  }

  return sub_1000088CC(v5);
}

uint64_t sub_10053815C(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 1040) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_1005381A4(uint64_t a1, __int16 a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 1042) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_1005381EC(uint64_t a1, char a2, _OWORD *a3)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  *(a1 + 152) = a2;
  if ((a1 + 160) != a3)
  {
    *(a1 + 160) = *a3;
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100538254(uint64_t a1, int a2, _OWORD *a3)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1);
  v6 = *(a1 + 176);
  *(a1 + 176) = a2;
  if ((a1 + 184) != a3)
  {
    *(a1 + 184) = *a3;
  }

  if (*(a1 + 520))
  {
    if (_os_feature_enabled_impl())
    {
      if (v6 != a2)
      {
        if (qword_100B508F0 != -1)
        {
          sub_100840690();
        }

        sub_10056B15C(off_100B508E8, a1, 26);
      }
    }

    else
    {
      (*(**(a1 + 520) + 16))(*(a1 + 520));
    }
  }

  return sub_1000088CC(v8);
}

uint64_t sub_100538354(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1);
  v6 = (a1 + 224);
  if (*(a1 + 224) == 0)
  {
    goto LABEL_15;
  }

  v7 = *(a1 + 223);
  if (v7 >= 0)
  {
    v8 = *(a1 + 223);
  }

  else
  {
    v8 = *(a1 + 208);
  }

  v9 = *(a2 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (v8 == v9 && (v7 >= 0 ? (v11 = (a1 + 200)) : (v11 = *(a1 + 200)), v10 >= 0 ? (v12 = a2) : (v12 = *a2), !memcmp(v11, v12, v8)))
  {
    if (v6 != a3)
    {
      *v6 = *a3;
    }
  }

  else
  {
LABEL_15:
    std::string::operator=((a1 + 200), a2);
    if (v6 != a3)
    {
      *v6 = *a3;
    }

    sub_10000801C(v17);
    v13 = sub_1000295DC(a1);
    if (v13)
    {
      v15 = sub_1000BE4B4(v13, v14);
      (*(*v15 + 232))(v15, a1, a2);
    }
  }

  return sub_1000088CC(v17);
}

uint64_t sub_100538494(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v36[0] = 0;
  v36[1] = 0;
  sub_100007F88(v36, a1);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_1000D8E68(a2, &v33);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  sub_1005388CC(a1, &v30);
  memset(&__str, 0, sizeof(__str));
  v6 = HIBYTE(v32);
  if (v32 >= 0)
  {
    v7 = HIBYTE(v32);
  }

  else
  {
    v7 = v31;
  }

  v8 = &v33;
  if (v7)
  {
    v8 = &v30;
  }

  else
  {
    v6 = HIBYTE(v35);
  }

  if (v6 < 0)
  {
    if (v7)
    {
      v9 = v31;
    }

    else
    {
      v9 = v34;
    }

    sub_100008904(&__str, v8->__r_.__value_.__l.__data_, v9);
  }

  else
  {
    __str = *v8;
  }

  v10 = (a1 + 264);
  if (!*(a1 + 264) && !*(a1 + 272))
  {
    goto LABEL_28;
  }

  v11 = *(a1 + 263);
  if (v11 >= 0)
  {
    v12 = *(a1 + 263);
  }

  else
  {
    v12 = *(a1 + 248);
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (v12 == size && (v11 >= 0 ? (v14 = (a1 + 240)) : (v14 = *(a1 + 240)), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v15 = &__str) : (v15 = __str.__r_.__value_.__r.__words[0]), !memcmp(v14, v15, v12)))
  {
    if (v10 != a3)
    {
      *v10 = *a3;
    }
  }

  else
  {
LABEL_28:
    std::string::operator=((a1 + 240), &__str);
    if (v10 != a3)
    {
      *v10 = *a3;
    }

    *(a1 + 1433) = 1;
    sub_10000801C(v36);
    v16 = sub_1000295DC(a1);
    if (v16)
    {
      v18 = sub_1000BE4B4(v16, v17);
      v19 = (*(*v18 + 40))(v18, a1, &__str);
      v20 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000BE6F8((a1 + 128), __p);
        if (v28 >= 0)
        {
          v21 = __p;
        }

        else
        {
          v21 = __p[0];
        }

        p_str = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        *buf = 67109891;
        v38 = v19;
        v39 = 2082;
        v40 = v21;
        v41 = 2160;
        v42 = 1752392040;
        v43 = 2081;
        v44 = p_str;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "setName result = %d, device address = %{public}s, value = %{private, mask.hash}s", buf, 0x26u);
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100538900(a1);
    }

    v23 = sub_1000E36A0(v16, v17);
    sub_1000BE6F8((a1 + 128), v25);
    (*(*v23 + 40))(v23, v25);
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 1);
    if (*(a1 + 520) && (_os_feature_enabled_impl() & 1) == 0)
    {
      (*(**(a1 + 520) + 16))(*(a1 + 520));
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v33);
  }

  return sub_1000088CC(v36);
}

void sub_100538848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  sub_1000088CC(v36 - 96);
  _Unwind_Resume(a1);
}

void *sub_1005388CC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[98];
  if ((v2 & 0x800) != 0)
  {
    v3 = "DUALSHOCK 4 Wireless Controller";
  }

  else
  {
    if ((v2 & 0x2000) == 0)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      return result;
    }

    v3 = "DualSense Wireless Controller";
  }

  return sub_100007E30(a2, v3);
}

void sub_100538900(uint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_1000E2FD0();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    if (*(a1 + 748) == 1)
    {
      v44 = *(a1 + 724);
      v43 = *(a1 + 708);
      if (*(a1 + 1132) != 76 || (v2 = *(a1 + 1136) - 8194, v2 > 0x2D) || ((1 << v2) & 0x200020037F9BLL) == 0)
      {
        if (*(a1 + 1125) != 1 || (*(a1 + 1145) & 0x10) == 0)
        {
          goto LABEL_25;
        }
      }

      __p[0] = 0;
      __p[1] = 0;
      sub_100007F88(__p, a1);
      v3 = *(a1 + 704);
      v4 = sub_1000088CC(__p);
      if (!v3)
      {
        goto LABEL_25;
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      memset(__p, 0, sizeof(__p));
      v6 = sub_1000BE4B4(v4, v5);
      if ((*(*v6 + 80))(v6, a1, __p, 80))
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_1008408F4();
        }

        goto LABEL_24;
      }

      v9 = DWORD2(v26);
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v10 = *(a1 + 704);
      sub_1000088CC(buf);
      if (v9 == v10)
      {
LABEL_24:
        sub_1000E3D14(__p);
LABEL_25:
        v11 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a1, buf);
          if (v23 >= 0)
          {
            v12 = buf;
          }

          else
          {
            v12 = *buf;
          }

          LODWORD(__p[0]) = 136446722;
          *(__p + 4) = v12;
          WORD2(__p[1]) = 1042;
          *(&__p[1] + 6) = 20;
          WORD1(__p[2]) = 2098;
          *(&__p[2] + 4) = &v43;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Identification - Identification hash exists for device %{public}s, primary hash %{public}.20P", __p, 0x1Cu);
          if (SHIBYTE(v23) < 0)
          {
            operator delete(*buf);
          }
        }

        return;
      }

      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a1, v19);
        v14 = v20;
        v15 = v19[0];
        v16 = DWORD2(v26);
        v17 = sub_100543C38(a1);
        v18 = v19;
        *buf = 136446722;
        if (v14 < 0)
        {
          v18 = v15;
        }

        *&buf[4] = v18;
        *&buf[12] = 1026;
        *&buf[14] = v16;
        v22 = 1026;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Identification - Apple Audio Device - firmware version has changed for device %{public}s (old firmware version %{public}d, new firmware version %{public}d)- regenerating primary hash.", buf, 0x18u);
        if (v20 < 0)
        {
          operator delete(v19[0]);
        }
      }

      *(a1 + 750) = 0;
      sub_100543DA4(a1);
      sub_1000E3D14(__p);
    }

    else
    {
      v7 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a1, __p);
        v8 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
        *buf = 136446210;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Identification - Identification hash does not exist for device %{public}s - generating.", buf, 0xCu);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100543DA4(a1);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008408B8();
  }
}

void sub_100538CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000E3D14(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_100538D30(uint64_t a1, uint64_t a2, int a3)
{
  v34[0] = 0;
  v34[1] = 0;
  sub_100007F88(v34, a1);
  memset(&__str, 0, sizeof(__str));
  sub_1000D8E68(a2, &__str);
  v6 = *(a1 + 263);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    v9 = *(a1 + 263);
  }

  else
  {
    v9 = *(a1 + 248);
  }

  if (v6 >= 0)
  {
    v10 = (a1 + 240);
  }

  else
  {
    v10 = *(a1 + 240);
  }

  if (v9 >= size)
  {
    v11 = size;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(p_str, v10, v11);
  if (v9 == size && v12 == 0 && v9 != 0)
  {
    std::string::assign((a1 + 280), "");
    v25 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      sub_1000E5A58(a1, __p);
      if (v42 >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = *__p;
      }

      *buf = 136315138;
      v36 = v27;
      v21 = "Same username and name, empty out nickname for: %s";
      v22 = v25;
      v23 = OS_LOG_TYPE_INFO;
      v24 = 12;
LABEL_43:
      _os_log_impl(&_mh_execute_header, v22, v23, v21, buf, v24);
      if (v42 < 0)
      {
        operator delete(*__p);
      }

      goto LABEL_45;
    }

    goto LABEL_45;
  }

  v15 = *(a1 + 303);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a1 + 288);
  }

  if (v15 != size || (v16 >= 0 ? (v17 = (a1 + 280)) : (v17 = *(a1 + 280)), memcmp(v17, p_str, size)))
  {
    std::string::operator=((a1 + 280), &__str);
    v18 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, __p);
      if (v42 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = *__p;
      }

      v20 = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v20 = __str.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      v36 = v19;
      v37 = 2080;
      v38 = v20;
      v21 = "User defined name for %s updated to %s";
      v22 = v18;
      v23 = OS_LOG_TYPE_DEFAULT;
      v24 = 22;
      goto LABEL_43;
    }

LABEL_45:
    sub_10000801C(v34);
    v28 = sub_1000295DC(a1);
    if (v28)
    {
      v30 = sub_1000BE4B4(v28, v29);
      (*(*v30 + 216))(v30, a1, &__str);
      if (*(a1 + 520))
      {
        if ((_os_feature_enabled_impl() & 1) == 0)
        {
          (*(**(a1 + 520) + 16))(*(a1 + 520));
        }
      }
    }

    if (a3)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100840690();
      }

      sub_10056B15C(off_100B508E8, a1, 4098);
    }

    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 2);
    if (qword_100B508E0 != -1)
    {
      sub_100840930();
    }

    sub_100518C8C(off_100B508D8, a1);
    goto LABEL_58;
  }

  v32 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *__p = 136315394;
    *&__p[4] = v10;
    v40 = 2080;
    v41 = p_str;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Did not change user defined name from %s updated to %s", __p, 0x16u);
  }

LABEL_58:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return sub_1000088CC(v34);
}

void sub_100539110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_10053914C(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1);
  v4 = *(a1 + 1500);
  *(a1 + 1500) = a2;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, __p);
    v6 = v9 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v12 = v6;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User routed changed: Device %{public}s, value %d", buf, 0x12u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v4 != a2)
  {
    sub_10000801C(v10);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v10);
}

void sub_10053929C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005392BC(uint64_t a1, char **a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if ((a1 + 1504) != a2)
  {
    sub_100550954((a1 + 1504), *a2, a2[1], a2[1] - *a2);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_10053932C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(a1 + 1504);
  v5 = *(a1 + 1512);
  if (v5 != v4)
  {
    sub_1000C9104(a2, v5 - v4);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_1005393CC(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v4 = sub_100007F88(v8, a1);
  *(a1 + 1536) = a2;
  v6 = sub_1000BE4B4(v4, v5);
  (*(*v6 + 1152))(v6, a1, *(a1 + 1536));
  return sub_1000088CC(v8);
}

uint64_t sub_100539460(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1536);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005394A8(uint64_t a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = *(a1 + 420);
  if (v4 != a2)
  {
    *(a1 + 420) = a2;
  }

  sub_10000801C(v6);
  if (v4 != a2)
  {
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 3);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_100539554(uint64_t a1, unsigned int a2, int a3, _OWORD *a4, int a5)
{
  v27 = a2;
  v26[0] = 0;
  v26[1] = 0;
  sub_100007F88(v26, a1);
  v10 = *(a1 + 336);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = a1 + 336;
  do
  {
    v12 = *(v10 + 28);
    v13 = v12 >= a2;
    v14 = v12 < a2;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == a1 + 336 || *(v11 + 28) > a2 || *(v11 + 32) != a3 && (a3 || a2 != 0x40000))
  {
LABEL_9:
    v23 = &v27;
    *(sub_100023DF0(a1 + 328, &v27, &unk_1008A9BD0, &v23) + 8) = a3;
    a5 = 1;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_100550C98(&v23, a1 + 328);
  if ((a1 + 352) != a4)
  {
    *(a1 + 352) = *a4;
  }

  sub_10000801C(v26);
  if ((a5 & sub_1000295DC(a1)) == 1)
  {
    v15 = qword_100BCE8D8;
    v16 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      sub_1000E5A58(a1, __p);
      if (v22 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      *buf = 136446210;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Writing capabilities map to disk for device %{public}s", buf, 0xCu);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v19 = sub_1000BE4B4(v16, v17);
    (*(*v19 + 248))(v19, a1, &v23);
  }

  *(a1 + 649) = 0;
  sub_10000CEDC(&v23, v24);
  return sub_1000088CC(v26);
}

void sub_10053976C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void *);
  v13 = va_arg(va1, void);
  sub_10000CEDC(va, v12);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005397A4(uint64_t a1, uint64_t *a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Update magic paired device name to %s", &v7, 0xCu);
  }

  if (qword_100B508E0 != -1)
  {
    sub_100840930();
  }

  return sub_100518C8C(off_100B508D8, a1);
}

uint64_t sub_10053988C(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  v2 = *(a1 + 632);
  v3 = *(a1 + 624);
  while (v2 != v3)
  {
    v2 -= 168;
    sub_100550FBC(a1 + 624, v2);
  }

  *(a1 + 632) = v3;
  return sub_1000088CC(v5);
}

uint64_t sub_1005398FC(void *a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = a1[79];
  if (v4 >= a1[80])
  {
    v5 = sub_100551020(a1 + 78, a2);
  }

  else
  {
    sub_100551168(a1[79], a2);
    v5 = v4 + 168;
    a1[79] = v4 + 168;
  }

  a1[79] = v5;
  return sub_1000088CC(v7);
}

uint64_t sub_1005399A0(uint64_t a1)
{
  v2 = sub_10000E92C();
  if (!(*(*v2 + 8))(v2))
  {
    goto LABEL_21;
  }

  LOBYTE(v35) = 0;
  v3 = sub_10000E92C();
  sub_100007E30(buf, "CATT");
  sub_100007E30(__p, "ForceDisableAll");
  (*(*v3 + 72))(v3, buf, __p, &v35);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  if (v35 == 1)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Classic GATT service ForceDisableAll override, disabling classic att support", buf, 2u);
    }

    v5 = 0;
    return v5 & 1;
  }

  v38[0] = 0;
  v6 = *(a1 + 1128);
  if (v6 == 2)
  {
    v7 = 1452;
    goto LABEL_14;
  }

  if (v6 == 1)
  {
    v7 = 76;
LABEL_14:
    v8 = *(a1 + 1132) != v7;
    goto LABEL_16;
  }

  v8 = 1;
LABEL_16:
  v9 = sub_10000E92C();
  sub_100007E30(buf, "CATT");
  sub_100007E30(__p, "AllowAppleDevices");
  (*(*v9 + 72))(v9, buf, __p, v38);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  if (v8 || (v38[0] & 1) == 0)
  {
LABEL_21:
    v10 = *(a1 + 1132);
    if (v10 != 76 || ((v11 = *(a1 + 1136) - 8202, v12 = v11 > 0x25, v13 = (1 << v11) & 0x200020033FLL, !v12) ? (v14 = v13 == 0) : (v14 = 1), v14))
    {
      if (*(a1 + 1125) != 1 || (*(a1 + 1146) & 0x80) == 0)
      {
        v15 = 0;
        goto LABEL_40;
      }
    }

    v16 = *(a1 + 1128);
    if (v16 == 2)
    {
      v17 = 1452;
    }

    else
    {
      if (v16 != 1)
      {
        v19 = 0;
        goto LABEL_39;
      }

      v17 = 76;
    }

    v19 = v10 == v17;
LABEL_39:
    v15 = (*(a1 + 176) < 0x30uLL) & (0x8000001B0000uLL >> *(a1 + 176)) & v19;
LABEL_40:
    v35 = xmmword_1008A9EA0;
    v20 = *(a1 + 1128);
    if (v20 == 2)
    {
      v21 = 1452;
    }

    else
    {
      if (v20 != 1)
      {
        goto LABEL_46;
      }

      v21 = 76;
    }

    if (v10 == v21)
    {
      v22 = 0;
      goto LABEL_47;
    }

LABEL_46:
    v22 = sub_10053A020(a1, &v35, 4u);
LABEL_47:
    v5 = v15 | v22;
    v23 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v24 = ((v15 | v22) & 1) != 0 ? "" : "not ";
      sub_1000E5A58(a1, __p);
      v25 = v37 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *&buf[4] = v24;
      *&buf[12] = 2082;
      *&buf[14] = v25;
      *&buf[22] = 1024;
      *&buf[24] = v15;
      *&buf[28] = 1024;
      *&buf[30] = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Classic GATT service is %ssupported for device %{public}s. appleDeviceAllowedForCatt %d, nonAppleWithSdpAttribute %d", buf, 0x22u);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v46 = 0;
    v45 = 0u;
    memset(v44, 0, sizeof(v44));
    v42 = 0u;
    *v43 = 0u;
    *v41 = 0u;
    memset(buf, 0, sizeof(buf));
    sub_1000DE474(&buf[1]);
    buf[18] = 0;
    buf[20] = 0;
    BYTE2(v41[0]) = 0;
    BYTE4(v41[0]) = 0;
    DWORD1(v44[1]) = 0;
    memset(&buf[24], 0, 24);
    LOBYTE(v41[0]) = 0;
    v42 = 0uLL;
    v41[1] = 0;
    LOBYTE(v43[0]) = 0;
    memset(v44, 0, 19);
    v43[1] = 0;
    BYTE8(v44[1]) = 1;
    *(&v44[1] + 14) = 0;
    *(&v44[1] + 9) = 0;
    v45 = 0uLL;
    *(&v44[2] + 1) = 0;
    LOBYTE(v46) = 0;
    *(&v46 + 2) = 0;
    v26 = sub_100536A18(a1, buf);
    v27 = BYTE12(v45);
    v28 = sub_10053A224(a1);
    __p[0] = 0;
    __p[1] = 0;
    sub_100007F88(__p, a1);
    v29 = v26 & v27;
    v30 = *(a1 + 176);
    sub_1000088CC(__p);
    if (v30 == 22 || v30 == 17)
    {
      v31 = *(a1 + 1124) ^ 1;
    }

    else
    {
      v31 = 0;
    }

    if ((v28 | v29) & 1) != 0 || (v31)
    {
      v32 = qword_100BCE8D8;
      v5 = 0;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a1, __p);
        if (v37 >= 0)
        {
          v33 = __p;
        }

        else
        {
          v33 = __p[0];
        }

        *v38 = 136446210;
        v39 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Override CATT feature to disable for %{public}s", v38, 0xCu);
        if (v37 < 0)
        {
          operator delete(__p[0]);
        }

        v5 = 0;
      }
    }

    if (SHIBYTE(v44[0]) < 0)
    {
      operator delete(v43[1]);
    }

    if (SHIBYTE(v42) < 0)
    {
      operator delete(v41[1]);
    }

    if (buf[47] < 0)
    {
      operator delete(*&buf[24]);
    }

    nullsub_21();
    return v5 & 1;
  }

  v18 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Classic GATT service AllowAppleDevices override, forcing classic att support", buf, 2u);
  }

  v5 = 1;
  return v5 & 1;
}

BOOL sub_100539FE8(uint64_t a1)
{
  v1 = *(a1 + 1128);
  if (v1 == 2)
  {
    v2 = 1452;
    return *(a1 + 1132) == v2;
  }

  if (v1 == 1)
  {
    v2 = 76;
    return *(a1 + 1132) == v2;
  }

  return 0;
}

BOOL sub_10053A020(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  if (*a2 != 3)
  {
    return 0;
  }

  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1);
  v6 = *(a1 + 592);
  v7 = (a1 + 600);
  if (v6 == v7)
  {
LABEL_10:
    v11 = 0;
  }

  else
  {
    while (!sub_10037E730(v6[4], a2))
    {
      v8 = v6[1];
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
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
      if (v9 == v7)
      {
        goto LABEL_10;
      }
    }

    v21 = 0;
    v22[0] = 0;
    v22[1] = 0;
    sub_10041F568(&v21, (v6 + 5));
    v12 = v22[0];
    if (!v22[0])
    {
      goto LABEL_20;
    }

    v13 = v22;
    v14 = v22[0];
    do
    {
      v15 = *(v14 + 32);
      v16 = v15 >= a3;
      v17 = v15 < a3;
      if (v16)
      {
        v13 = v14;
      }

      v14 = *(v14 + 8 * v17);
    }

    while (v14);
    if (v13 == v22 || *(v13 + 8) > a3)
    {
LABEL_20:
      v13 = v22;
    }

    v11 = v22 != v13;
    v18 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      v19 = "has not";
      if (v22 != v13)
      {
        v19 = "has";
      }

      *buf = 67109378;
      v25 = a3;
      v26 = 2082;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "SDP attribute 0x%04x %{public}s been found", buf, 0x12u);
      v12 = v22[0];
    }

    sub_10000CEDC(&v21, v12);
  }

  sub_1000088CC(v23);
  return v11;
}

void sub_10053A204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053A224(uint64_t a1)
{
  __p = 0;
  v25 = 0;
  v26 = 0;
  p_p = &__p;
  sub_1000DEEA4(a1, &__p);
  if (v26 >= 0)
  {
    v2 = &__p + HIBYTE(v26);
  }

  else
  {
    v2 = __p + v25;
  }

  if (v26 < 0)
  {
    p_p = __p;
  }

  while (p_p != v2)
  {
    *p_p = __tolower(*p_p);
    ++p_p;
  }

  if (qword_100B54220 != -1)
  {
    sub_100840958();
  }

  v3 = sub_1003C62F8(qword_100B54218, 2);
  v22 = 0;
  v23[0] = 0;
  v23[1] = 0;
  sub_100703D28(v3, &v22);
  v4 = v22;
  if (v22 == v23)
  {
LABEL_42:
    v20 = 0;
  }

  else
  {
    if (v26 >= 0)
    {
      v5 = &__p;
    }

    else
    {
      v5 = __p;
    }

    if (v26 >= 0)
    {
      v6 = HIBYTE(v26);
    }

    else
    {
      v6 = v25;
    }

    v7 = &v5[v6];
    while (1)
    {
      v8 = *(v4 + 55);
      v9 = v8 >= 0 ? v4 + 4 : v4[4];
      v10 = v8 >= 0 ? *(v4 + 55) : v4[5];
      if (!v10)
      {
        break;
      }

      if (v6 >= v10)
      {
        v14 = *v9;
        v15 = v6;
        v16 = v5;
        do
        {
          v17 = v15 - v10;
          if (v17 == -1)
          {
            break;
          }

          v18 = memchr(v16, v14, v17 + 1);
          if (!v18)
          {
            break;
          }

          v19 = v18;
          if (!memcmp(v18, v9, v10))
          {
            if (v19 == v7 || v19 - v5 == -1)
            {
              break;
            }

            goto LABEL_41;
          }

          v16 = v19 + 1;
          v15 = v7 - (v19 + 1);
        }

        while (v15 >= v10);
      }

      v11 = v4[1];
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
          v12 = v4[2];
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v4 = v12;
      if (v12 == v23)
      {
        goto LABEL_42;
      }
    }

LABEL_41:
    v20 = 1;
  }

  sub_10004B61C(&v22, v23[0]);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  return v20;
}

void sub_10053A414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10053A440(uint64_t a1)
{
  if (*(a1 + 1125) == 1)
  {
    v1 = (*(a1 + 1158) >> 3) & 1;
  }

  else
  {
    v1 = 0;
  }

  v2 = _os_feature_enabled_impl();
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109376;
    v5[1] = v2;
    v6 = 1024;
    v7 = v1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device::supportsUARPOverAACP: feature flag: %u, DID bit: %u", v5, 0xEu);
  }

  return v1 & v2;
}

uint64_t sub_10053A52C(uint64_t a1)
{
  v13 = 0;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  v9 = 0u;
  *__p = 0u;
  v7 = 0u;
  *v8 = 0u;
  v5 = 0u;
  *v6 = 0u;
  sub_1000DE474(&v5 + 1);
  BYTE2(v6[0]) = 0;
  BYTE4(v6[0]) = 0;
  BYTE2(v8[0]) = 0;
  BYTE4(v8[0]) = 0;
  DWORD1(v11[1]) = 0;
  v7 = 0uLL;
  v6[1] = 0;
  LOBYTE(v8[0]) = 0;
  v9 = 0uLL;
  v8[1] = 0;
  LOBYTE(__p[0]) = 0;
  memset(v11, 0, 19);
  __p[1] = 0;
  BYTE8(v11[1]) = 1;
  *(&v11[1] + 14) = 0;
  *(&v11[1] + 9) = 0;
  v12 = 0uLL;
  *(&v11[2] + 1) = 0;
  LOBYTE(v13) = 0;
  *(&v13 + 2) = 0;
  v2 = sub_100536A18(a1, &v5);
  v3 = BYTE14(v12);
  if (SHIBYTE(v11[0]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[1]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[1]);
  }

  nullsub_21();
  return v2 & v3;
}

uint64_t sub_10053A674(uint64_t a1)
{
  __p = 0;
  v25 = 0;
  v26 = 0;
  p_p = &__p;
  sub_1000DEEA4(a1, &__p);
  if (v26 >= 0)
  {
    v2 = &__p + HIBYTE(v26);
  }

  else
  {
    v2 = __p + v25;
  }

  if (v26 < 0)
  {
    p_p = __p;
  }

  while (p_p != v2)
  {
    *p_p = __tolower(*p_p);
    ++p_p;
  }

  if (qword_100B54220 != -1)
  {
    sub_100840958();
  }

  v3 = sub_1003C62F8(qword_100B54218, 2);
  v22 = 0;
  v23[0] = 0;
  v23[1] = 0;
  sub_100703C60(v3, &v22);
  v4 = v22;
  if (v22 == v23)
  {
LABEL_42:
    v20 = 0;
  }

  else
  {
    if (v26 >= 0)
    {
      v5 = &__p;
    }

    else
    {
      v5 = __p;
    }

    if (v26 >= 0)
    {
      v6 = HIBYTE(v26);
    }

    else
    {
      v6 = v25;
    }

    v7 = &v5[v6];
    while (1)
    {
      v8 = *(v4 + 55);
      v9 = v8 >= 0 ? v4 + 4 : v4[4];
      v10 = v8 >= 0 ? *(v4 + 55) : v4[5];
      if (!v10)
      {
        break;
      }

      if (v6 >= v10)
      {
        v14 = *v9;
        v15 = v6;
        v16 = v5;
        do
        {
          v17 = v15 - v10;
          if (v17 == -1)
          {
            break;
          }

          v18 = memchr(v16, v14, v17 + 1);
          if (!v18)
          {
            break;
          }

          v19 = v18;
          if (!memcmp(v18, v9, v10))
          {
            if (v19 == v7 || v19 - v5 == -1)
            {
              break;
            }

            goto LABEL_41;
          }

          v16 = v19 + 1;
          v15 = v7 - (v19 + 1);
        }

        while (v15 >= v10);
      }

      v11 = v4[1];
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
          v12 = v4[2];
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v4 = v12;
      if (v12 == v23)
      {
        goto LABEL_42;
      }
    }

LABEL_41:
    v20 = 1;
  }

  sub_10004B61C(&v22, v23[0]);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  return v20;
}

void sub_10053A864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10053A888(uint64_t a1)
{
  v36 = 0;
  v35 = 0u;
  memset(v34, 0, sizeof(v34));
  v32 = 0u;
  *v33 = 0u;
  v30 = 0u;
  *v31 = 0u;
  v28 = 0u;
  *v29 = 0u;
  sub_1000DE474(&v28 + 1);
  BYTE2(v29[0]) = 0;
  BYTE4(v29[0]) = 0;
  BYTE2(v31[0]) = 0;
  BYTE4(v31[0]) = 0;
  DWORD1(v34[1]) = 0;
  v30 = 0uLL;
  v29[1] = 0;
  LOBYTE(v31[0]) = 0;
  v32 = 0uLL;
  v31[1] = 0;
  LOBYTE(v33[0]) = 0;
  memset(v34, 0, 19);
  v33[1] = 0;
  BYTE8(v34[1]) = 1;
  *(&v34[1] + 14) = 0;
  *(&v34[1] + 9) = 0;
  v35 = 0uLL;
  *(&v34[2] + 1) = 0;
  LOBYTE(v36) = 0;
  *(&v36 + 2) = 0;
  if (sub_100536A18(a1, &v28) && (v36 & 0x1000000) != 0)
  {
    v2 = 1;
  }

  else
  {
    __p = 0;
    v26 = 0;
    v27 = 0;
    p_p = &__p;
    sub_1000DEEA4(a1, &__p);
    if (v27 >= 0)
    {
      v4 = &__p + HIBYTE(v27);
    }

    else
    {
      v4 = __p + v26;
    }

    if (v27 < 0)
    {
      p_p = __p;
    }

    while (p_p != v4)
    {
      *p_p = __tolower(*p_p);
      ++p_p;
    }

    if (qword_100B54220 != -1)
    {
      sub_100840958();
    }

    v5 = sub_1003C62F8(qword_100B54218, 2);
    v23 = 0;
    v24[0] = 0;
    v24[1] = 0;
    sub_100703CC4(v5, &v23);
    v6 = v23;
    if (v23 == v24)
    {
LABEL_45:
      v2 = 0;
    }

    else
    {
      if (v27 >= 0)
      {
        v7 = &__p;
      }

      else
      {
        v7 = __p;
      }

      if (v27 >= 0)
      {
        v8 = HIBYTE(v27);
      }

      else
      {
        v8 = v26;
      }

      v9 = &v7[v8];
      while (1)
      {
        v10 = *(v6 + 55);
        v11 = v10 >= 0 ? v6 + 4 : v6[4];
        v12 = v10 >= 0 ? *(v6 + 55) : v6[5];
        if (!v12)
        {
          break;
        }

        if (v8 >= v12)
        {
          v16 = *v11;
          v17 = v8;
          v18 = v7;
          do
          {
            v19 = v17 - v12;
            if (v19 == -1)
            {
              break;
            }

            v20 = memchr(v18, v16, v19 + 1);
            if (!v20)
            {
              break;
            }

            v21 = v20;
            if (!memcmp(v20, v11, v12))
            {
              if (v21 == v9 || v21 - v7 == -1)
              {
                break;
              }

              goto LABEL_44;
            }

            v18 = v21 + 1;
            v17 = v9 - (v21 + 1);
          }

          while (v17 >= v12);
        }

        v13 = v6[1];
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
            v14 = v6[2];
            v15 = *v14 == v6;
            v6 = v14;
          }

          while (!v15);
        }

        v6 = v14;
        if (v14 == v24)
        {
          goto LABEL_45;
        }
      }

LABEL_44:
      v2 = 1;
    }

    sub_10004B61C(&v23, v24[0]);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }
  }

  if (SHIBYTE(v34[0]) < 0)
  {
    operator delete(v33[1]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[1]);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[1]);
  }

  nullsub_21();
  return v2;
}

void sub_10053AB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_100320BE8(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_10053ABC4(uint64_t a1)
{
  v13 = 0;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  v9 = 0u;
  *__p = 0u;
  v7 = 0u;
  *v8 = 0u;
  v5 = 0u;
  *v6 = 0u;
  sub_1000DE474(&v5 + 1);
  BYTE2(v6[0]) = 0;
  BYTE4(v6[0]) = 0;
  BYTE2(v8[0]) = 0;
  BYTE4(v8[0]) = 0;
  DWORD1(v11[1]) = 0;
  v7 = 0uLL;
  v6[1] = 0;
  LOBYTE(v8[0]) = 0;
  v9 = 0uLL;
  v8[1] = 0;
  LOBYTE(__p[0]) = 0;
  memset(v11, 0, 19);
  __p[1] = 0;
  BYTE8(v11[1]) = 1;
  *(&v11[1] + 14) = 0;
  *(&v11[1] + 9) = 0;
  v12 = 0uLL;
  *(&v11[2] + 1) = 0;
  LOBYTE(v13) = 0;
  *(&v13 + 2) = 0;
  v2 = sub_100536A18(a1, &v5);
  v3 = HIBYTE(v12);
  if (SHIBYTE(v11[0]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[1]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[1]);
  }

  nullsub_21();
  return v2 & v3;
}

uint64_t sub_10053AD0C(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 416) = a2;
  return sub_1000088CC(v5);
}

void sub_10053AD54(uint64_t a1)
{
  v46[0] = 0;
  v46[1] = 0;
  v2 = sub_100007F88(v46, a1);
  v3 = *(a1 + 592);
  v5 = sub_1000BE4B4(v2, v4);
  (*(*v5 + 344))(v5, a1);
  v6 = sub_1001BBBC4();
  if (v6 && (v7 = sub_1001BBB30(0), v7))
  {
    v28 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "Memory Manager initialization failed\n";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
    }

    sub_1000C52F4(v7);
    __break(1u);
  }

  else
  {
    if (v3 != (a1 + 600))
    {
      do
      {
        v8 = v3[4];
        buf = 0uLL;
        v49 = 0;
        sub_100007E30(&buf, "\n|>> ServiceClass: ");
        memset(&v45, 0, sizeof(v45));
        if (*v8 == 3)
        {
          if (*(v8 + 2) > 4u)
          {
            v9 = sub_100302240(*(v8 + 8));
          }

          else
          {
            v9 = sub_10030253C(*(v8 + 8));
          }

          std::string::assign(&v45, v9);
        }

        v42 = 0;
        v43 = 0;
        v44 = 0;
        sub_100007E30(&v42, "\n");
        v40 = 0uLL;
        v41 = 0;
        sub_10053B318(&buf, &v45.__r_.__value_.__l.__data_, &v47);
        if (v44 >= 0)
        {
          v10 = &v42;
        }

        else
        {
          v10 = v42;
        }

        if (v44 >= 0)
        {
          v11 = HIBYTE(v44);
        }

        else
        {
          v11 = v43;
        }

        v12 = std::string::append(&v47, v10, v11);
        v13 = *&v12->__r_.__value_.__l.__data_;
        v41 = v12->__r_.__value_.__r.__words[2];
        v40 = v13;
        v12->__r_.__value_.__l.__size_ = 0;
        v12->__r_.__value_.__r.__words[2] = 0;
        v12->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }

        v14 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          v15 = &v40;
          if (v41 < 0)
          {
            v15 = v40;
          }

          LODWORD(v47.__r_.__value_.__l.__data_) = 136315138;
          *(v47.__r_.__value_.__r.__words + 4) = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s", &v47, 0xCu);
        }

        memset(&v47, 0, sizeof(v47));
        sub_10041F568(&v47, (v3 + 5));
        v16 = v47.__r_.__value_.__r.__words[0];
        if (v47.__r_.__value_.__l.__data_ != &v47.__r_.__value_.__r.__words[1])
        {
          do
          {
            v39 = *(v16 + 40);
            v37[0] = 0;
            v37[1] = 0;
            v38 = 0;
            sub_100007E30(v37, "|Attribute Key: ");
            v35[0] = 0;
            v35[1] = 0;
            v36 = 0;
            v17 = sub_1003021E8(*(v16 + 32));
            sub_100007E30(v35, v17);
            v32 = 0;
            v33 = 0;
            v34 = 0;
            sub_100007E30(&v32, "\n");
            __p[0] = 0;
            __p[1] = 0;
            v31 = 0;
            sub_10053B318(v37, v35, &v29);
            if (v34 >= 0)
            {
              v18 = &v32;
            }

            else
            {
              v18 = v32;
            }

            if (v34 >= 0)
            {
              v19 = HIBYTE(v34);
            }

            else
            {
              v19 = v33;
            }

            v20 = std::string::append(&v29, v18, v19);
            v21 = *&v20->__r_.__value_.__l.__data_;
            v31 = v20->__r_.__value_.__r.__words[2];
            *__p = v21;
            v20->__r_.__value_.__l.__size_ = 0;
            v20->__r_.__value_.__r.__words[2] = 0;
            v20->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v29.__r_.__value_.__l.__data_);
            }

            if (v31 >= 0)
            {
              v22 = __p;
            }

            else
            {
              v22 = __p[0];
            }

            sub_100238CA8(&v39, v22);
            if (SHIBYTE(v31) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v34) < 0)
            {
              operator delete(v32);
            }

            if (SHIBYTE(v36) < 0)
            {
              operator delete(v35[0]);
            }

            if (SHIBYTE(v38) < 0)
            {
              operator delete(v37[0]);
            }

            v23 = *(v16 + 8);
            if (v23)
            {
              do
              {
                v24 = v23;
                v23 = v23->__r_.__value_.__r.__words[0];
              }

              while (v23);
            }

            else
            {
              do
              {
                v24 = *(v16 + 16);
                v25 = v24->__r_.__value_.__r.__words[0] == v16;
                v16 = v24;
              }

              while (!v25);
            }

            v16 = v24;
          }

          while (v24 != &v47.__r_.__value_.__r.__words[1]);
        }

        sub_10000CEDC(&v47, v47.__r_.__value_.__l.__size_);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(v40);
        }

        if (SHIBYTE(v44) < 0)
        {
          operator delete(v42);
        }

        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v49) < 0)
        {
          operator delete(buf);
        }

        v26 = v3[1];
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
            v27 = v3[2];
            v25 = *v27 == v3;
            v3 = v27;
          }

          while (!v25);
        }

        v3 = v27;
      }

      while (v27 != (a1 + 600));
    }

    if (v6)
    {
      sub_1001BBB94();
    }

    sub_1000088CC(v46);
  }
}

char *sub_10053B318@<X0>(const void **a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  result = sub_1003A5170(a3, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t sub_10053B3EC(uint64_t a1, uint64_t a2, void *a3)
{
  v43[0] = 0;
  v43[1] = 0;
  sub_100007F88(v43, a1);
  v6 = *(a1 + 592);
  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, &__p);
    v8 = v42 >= 0 ? &__p : __p;
    LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
    *(buf.__r_.__value_.__r.__words + 4) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting SDP Attributes for %{public}s", &buf, 0xCu);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(__p);
    }
  }

  if (v6 != (a1 + 600))
  {
    while (!sub_10037E730(v6[4], a2))
    {
      v9 = v6[1];
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
          v10 = v6[2];
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
      if (v10 == (a1 + 600))
      {
        goto LABEL_24;
      }
    }

    __p = 0;
    v41 = 0;
    v42 = 0;
    sub_10041F568(&__p, (v6 + 5));
    v12 = __p;
    if (__p != &v41)
    {
      do
      {
        *&buf.__r_.__value_.__l.__data_ = *(v12 + 40);
        sub_10037D4F4(&buf);
        v13 = *(v12 + 1);
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
            v14 = *(v12 + 2);
            v11 = *v14 == v12;
            v12 = v14;
          }

          while (!v11);
        }

        v12 = v14;
      }

      while (v14 != &v41);
    }

    sub_10000CEDC(&__p, v41);
    v41 = 0;
    v42 = 0;
    __p = &v41;
    sub_10037D4F4(v6[4]);
    free(v6[4]);
    sub_100480394((a1 + 592), v6);
    sub_10000CEDC(&__p, v41);
  }

LABEL_24:
  __p = 0;
  v41 = 0;
  v42 = 0;
  sub_100007E30(&__p, "\n|>> ServiceClass: ");
  memset(&buf, 0, sizeof(buf));
  if (*a2 == 3)
  {
    if (*(a2 + 2) > 4u)
    {
      v15 = sub_100302240(*(a2 + 8));
    }

    else
    {
      v15 = sub_10030253C(*(a2 + 8));
    }

    std::string::assign(&buf, v15);
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  sub_100007E30(&v37, "\n");
  sub_10053B318(&__p, &buf.__r_.__value_.__l.__data_, &v36);
  if (v39 >= 0)
  {
    v16 = &v37;
  }

  else
  {
    v16 = v37;
  }

  if (v39 >= 0)
  {
    v17 = HIBYTE(v39);
  }

  else
  {
    v17 = v38;
  }

  v18 = std::string::append(&v36, v16, v17);
  v19 = v18->__r_.__value_.__r.__words[0];
  v20 = SHIBYTE(v18->__r_.__value_.__r.__words[2]);
  v18->__r_.__value_.__r.__words[0] = 0;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  *&v36.__r_.__value_.__r.__words[1] = 0uLL;
  v36.__r_.__value_.__r.__words[0] = &v36.__r_.__value_.__l.__size_;
  v23 = *a3;
  v21 = a3 + 1;
  v22 = v23;
  if (v23 != v21)
  {
    do
    {
      v35 = *(v22 + 8);
      v34 = *(v22 + 5);
      v33 = 0uLL;
      if (sub_10037E830(&v33, &v34))
      {
        v44 = &v35;
        v24 = sub_10041F130(&v36, &v35, &unk_1008A9BD0, &v44);
        *(v24 + 5) = v33;
      }

      v25 = v22[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v22[2];
          v11 = *v26 == v22;
          v22 = v26;
        }

        while (!v11);
      }

      v22 = v26;
    }

    while (v26 != v21);
  }

  *&v33 = malloc_type_calloc(1uLL, 0x10uLL, 0x10F2040C8FBA5E1uLL);
  sub_10037E830(v33, a2);
  *&v34 = &v33;
  v27 = (sub_10041F204(a1 + 592, &v33, &unk_1008A9BD0, &v34) + 5);
  if (v27 != &v36)
  {
    sub_10041F2E0(v27, v36.__r_.__value_.__l.__data_, &v36.__r_.__value_.__l.__size_);
  }

  sub_10000801C(v43);
  v28 = sub_10053B94C(a1);
  v30 = sub_100017F4C(v28, v29);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10053BF5C;
  v32[3] = &unk_100ADF8F8;
  v32[4] = a1;
  sub_10000CA94(v30, v32);
  sub_10000CEDC(&v36, v36.__r_.__value_.__l.__size_);
  if (v20 < 0)
  {
    operator delete(v19);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p);
  }

  return sub_1000088CC(v43);
}

BOOL sub_10053B94C(_BYTE *a1)
{
  v43 = xmmword_1008A9EB0;
  v2 = sub_10053A020(a1, &v43, 0);
  if (v2)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    if (sub_10053BFB4(a1, &v43, 0x205u, &v40) && sub_10053BFB4(a1, &v43, 0x201u, &v37))
    {
      v3 = v40;
      if (v41 - v40 == 16)
      {
        v4 = *(v40 + 2);
      }

      else
      {
        v4 = 0;
      }

      v19 = v37;
      v18 = v38;
      if (v38 - v37 == 16)
      {
        v5 = *(v37 + 2);
      }

      else
      {
        v5 = 0;
      }

      if (v40 != v41)
      {
        do
        {
          *buf = 0;
          *&buf[8] = 0;
          *buf = *v3;
          sub_10037D4F4(buf);
          ++v3;
        }

        while (v3 != v41);
        v19 = v37;
        v18 = v38;
      }

      if (v19 != v18)
      {
        do
        {
          *buf = 0;
          *&buf[8] = 0;
          *buf = *v19;
          sub_10037D4F4(buf);
          ++v19;
        }

        while (v19 != v38);
      }
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    if (sub_10053BFB4(a1, &v43, 0x202u, &v34))
    {
      v7 = v34;
      v6 = v35;
      if (v35 - v34 == 16)
      {
        v8 = *(v34 + 2);
      }

      else
      {
        v8 = 0;
      }

      while (v7 != v6)
      {
        *buf = 0;
        *&buf[8] = 0;
        *buf = *v7;
        sub_10037D4F4(buf);
        ++v7;
        v6 = v35;
      }
    }

    else
    {
      v8 = 0;
    }

    if (sub_10053BFB4(a1, &v43, 0x203u, &v31))
    {
      v10 = v31;
      v9 = v32;
      if (v32 - v31 == 16)
      {
        v11 = *(v31 + 2);
      }

      else
      {
        v11 = 0;
      }

      while (v10 != v9)
      {
        *buf = 0;
        *&buf[8] = 0;
        *buf = *v10;
        sub_10037D4F4(buf);
        ++v10;
        v9 = v32;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, __p);
      v13 = v21 >= 0 ? __p : __p[0];
      *buf = 136447234;
      *&buf[4] = v13;
      *&buf[12] = 1024;
      *&buf[14] = v4;
      v45 = 1024;
      v46 = v5;
      v47 = 1024;
      v48 = v8;
      v49 = 1024;
      v50 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "storeSdpDid “%{public}s deviceId information: vidSrc 0x%x vid 0x%x pid 0x%x version 0x%x", buf, 0x24u);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10053D890(a1, v4, v5, v8, v11);
    if (sub_10053BFB4(a1, &v43, 0xA000u, &v28))
    {
      if (v29 != v28)
      {
        if (*(v28 + 1) == 4)
        {
          sub_10053DCEC(a1, *(v28 + 2), 0);
        }

        else
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_100840980();
          }

          a1[1125] = 0;
        }
      }

      for (i = v28; i != v29; ++i)
      {
        *buf = 0;
        *&buf[8] = 0;
        *buf = *i;
        sub_10037D4F4(buf);
      }
    }

    else
    {
      a1[1125] = 0;
    }

    if (sub_10053BFB4(a1, &v43, 0xA001u, &v22))
    {
      if (v23 != v22)
      {
        if (*(v22 + 1) == 8)
        {
          sub_10053DFDC(a1, **(v22 + 1), 0);
        }

        else
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_1008409F8();
          }

          a1[1126] = 0;
        }
      }

      for (j = v22; j != v23; ++j)
      {
        *buf = 0;
        *&buf[8] = 0;
        *buf = *j;
        sub_10037D4F4(buf);
      }
    }

    else
    {
      a1[1126] = 0;
    }

    if (sub_10053BFB4(a1, &v43, 0xAFFFu, &v25))
    {
      if (v26 != v25)
      {
        if (*(v25 + 1) == 2)
        {
          sub_10053E160(a1, *(v25 + 4));
        }

        else
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_100840A70();
          }

          a1[1127] = 0;
        }
      }

      for (k = v25; k != v26; ++k)
      {
        *buf = 0;
        *&buf[8] = 0;
        *buf = *k;
        sub_10037D4F4(buf);
      }
    }

    else
    {
      a1[1127] = 0;
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }

    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }
  }

  return v2;
}
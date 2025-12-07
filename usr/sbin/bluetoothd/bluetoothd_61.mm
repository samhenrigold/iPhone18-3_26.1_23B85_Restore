uint64_t sub_10041C62C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  sub_100419F60(a1, a2, "SdpCacheVersion", &v6 + 1);
  sub_100419F60(a1, a2, "SdpCacheSize", &v6);
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v8 = HIDWORD(v6);
    v9 = 1024;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SDP cache [version 0x%x, size 0x%x]", buf, 0xEu);
  }

  return 0;
}

uint64_t sub_10041C714(uint64_t a1, _WORD *a2)
{
  v15 = &off_100AE0A78;
  v16 = 0;
  v12 = 0;
  v13 = 0;
  if (sub_10053C7C8(a2, &v15, &v13 + 1, &v13, &v12 + 1, &v12))
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v5 = v18 >= 0 ? __p : *__p;
      *buf = 136446210;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Writing HID Data to disk for %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(*__p);
      }
    }

    v6 = sub_10000C5E0(&v15);
    v14 = v6;
    if (v6 <= 0x1000)
    {
      sub_1004190E0(a1, a2, "HIDDescriptorSize", &v14, 8);
      v7 = sub_10000C5F8(&v15);
      sub_1004190E0(a1, a2, "HIDDescriptor", v7, v14);
      sub_1004190E0(a1, a2, "HIDVendorID", &v13 + 2, 2);
      sub_1004190E0(a1, a2, "HIDVendorIDSource", &v13, 2);
      sub_1004190E0(a1, a2, "HIDProductID", &v12 + 2, 2);
      sub_1004190E0(a1, a2, "HIDVersion", &v12, 2);
      v8 = 0;
      goto LABEL_15;
    }

    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      *__p = 134217984;
      *&__p[4] = v6;
      _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Writing HID descriptor size %zu which is too large!", __p, 0xCu);
      v9 = qword_100BCE8D8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10082A228(v6, v9, v10);
    }
  }

  v8 = 1;
LABEL_15:
  v15 = &off_100AE0A78;
  if (v16)
  {
    sub_10000C808(v16);
  }

  return v8;
}

uint64_t sub_10041C9C0(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  v16 = 0;
  if (sub_100418FF4(v1, v2, "HIDDescriptorSize", &v16, 8))
  {
    return 1;
  }

  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v3, __p);
    v7 = v19 >= 0 ? __p : *__p;
    LODWORD(buf) = 136446210;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reading HID Data from disk for %{public}s", &buf, 0xCu);
    if (v19 < 0)
    {
      operator delete(*__p);
    }
  }

  v8 = v16;
  if (v16 > 0x1000)
  {
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      *__p = 134217984;
      *&__p[4] = v8;
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Reading HID descriptor size %zu which is too large!", __p, 0xCu);
      v8 = v16;
      if (v16 <= 0x1000)
      {
        goto LABEL_11;
      }

      v11 = qword_100BCE8D8;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10082A298(v8, v11, v12);
    }

    return 1;
  }

LABEL_11:
  bzero(__p, 0x1000uLL);
  v15 = -1;
  v14 = 0;
  v13 = 0;
  if (sub_100418FF4(v4, v3, "HIDDescriptor", __p, v8))
  {
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10082A308(&v16, v9, v10);
    }
  }

  sub_100418FF4(v4, v3, "HIDVendorID", &v15, 2);
  sub_100418FF4(v4, v3, "HIDVendorIDSource", &v14, 2);
  sub_100418FF4(v4, v3, "HIDProductID", &v13 + 2, 2);
  sub_100418FF4(v4, v3, "HIDVersion", &v13, 2);
  sub_10000C704(&buf, __p, v16);
  sub_10053C5E0(v3, &buf, v15, v14, SHIWORD(v13), v13);
  *&buf = &off_100AE0A78;
  if (*(&buf + 1))
  {
    sub_10000C808(*(&buf + 1));
  }

  return 0;
}

void sub_10041CC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12)
{
  if (a12)
  {
    sub_10000C808(a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10041CCD4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 0;
  result = sub_100419F60(a1, a2, "LastSeenTime", &v5);
  if (result)
  {
    return 1;
  }

  *a3 = v5;
  return result;
}

uint64_t sub_10041CD60(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "MicMode", &v4, 4);
  return 0;
}

uint64_t sub_10041CDAC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "DoubleTapAction", &v4, 4);
  return 0;
}

uint64_t sub_10041CDF4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a3)
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  sub_10041ACA8(a1, a2, "InEarDetection", v7);
  objc_autoreleasePoolPop(v6);
  return 0;
}

uint64_t sub_10041CEA0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "SpatialAudioAllowed", &v4, 4);
  return 0;
}

uint64_t sub_10041CED8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "SmartRouteMode", &v4, 4);
  return 0;
}

uint64_t sub_10041CF24(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "ListeningMode", &v4, 4);
  return 0;
}

uint64_t sub_10041CF5C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  *v25 = 0;
  v26 = 0;
  v27 = 0;
  sub_1000E3B80(a3);
  v7 = *(a3 + 8);
  v6 = *(a3 + 16);
  if (v7 >= v6)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a3) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000C7698();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a3) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    v24 = a3;
    if (v12)
    {
      sub_10035FDB8(a3, v12);
    }

    v13 = 24 * v9;
    *v13 = 0;
    *(v13 + 23) = 0;
    v8 = 24 * v9 + 24;
    v14 = *(a3 + 8) - *a3;
    v15 = 24 * v9 - v14;
    memcpy((v13 - v14), *a3, v14);
    v16 = *a3;
    *a3 = v15;
    *(a3 + 8) = v8;
    v17 = *(a3 + 16);
    *(a3 + 16) = 0;
    __p.__r_.__value_.__r.__words[2] = v16;
    v23 = v17;
    __p.__r_.__value_.__r.__words[0] = v16;
    __p.__r_.__value_.__l.__size_ = v16;
    sub_100360AC8(&__p);
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    v8 = v7 + 24;
  }

  *(a3 + 8) = v8;
  for (i = 1; ; ++i)
  {
    memset(&__p, 0, sizeof(__p));
    sprintf(v25, "AACPVersionInfo%d", i);
    if (sub_100418E10(a1, a2, v25, &__p))
    {
      break;
    }

    sub_100338878(a3, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v20 = *a3;
  v19 = *(a3 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v19 - v20) >> 3) < sub_100541D78(a2, 1))
  {
    return 1;
  }

  if (*(*a3 + 71) < 0)
  {
    if (!*(*a3 + 56))
    {
      return 1;
    }
  }

  else if (!*(*a3 + 71))
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10041D19C(uint64_t a1, uint64_t a2, void *a3)
{
  *v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_1000E2D2C(a2, 2u, v10);
  if (v11 < 0)
  {
    v9 = v10[1];
    operator delete(v10[0]);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else if (v11)
  {
LABEL_3:
    if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) >= 2)
    {
      v6 = 1;
      v7 = 24;
      do
      {
        sprintf(v12, "AACPVersionInfo%d", v6);
        sub_100418F44(a1, a2, v12, (*a3 + v7));
        ++v6;
        v7 += 24;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) > v6);
    }

    return 0;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10082A37C();
  }

  return 1;
}

uint64_t sub_10041D324(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (sub_100418FF4(a1, a2, "CaseInfoMessageVersion", a3, 1))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10082A3B0();
    }

    return 1;
  }

  if (*a3 >= 2u)
  {
    v6 = 8;
  }

  else
  {
    v6 = 2;
  }

  if (sub_100418FF4(a1, a2, "CaseInfoVersion", (a3 + 16), v6))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10082A440();
    }

    return 1;
  }

  sub_100418FF4(a1, a2, "CaseInfoVID", (a3 + 2), 2);
  sub_100418FF4(a1, a2, "CaseInfoPID", (a3 + 4), 4);
  sub_100418FF4(a1, a2, "CaseInfoVIDSource", (a3 + 8), 2);
  sub_100418FF4(a1, a2, "CaseInfoColor", (a3 + 10), 1);
  sub_100418E10(a1, a2, "CaseInfoName", (a3 + 32));
  return 0;
}

uint64_t sub_10041D488(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = (a3 + 32);
  if (*a3 >= 2u)
  {
    v7 = 8;
  }

  else
  {
    v7 = 2;
  }

  sub_1004190E0(a1, a2, "CaseInfoVersion", (a3 + 16), v7);
  sub_1004190E0(a1, a2, "CaseInfoMessageVersion", a3, 1);
  sub_1004190E0(a1, a2, "CaseInfoVID", (a3 + 2), 2);
  sub_1004190E0(a1, a2, "CaseInfoPID", (a3 + 4), 4);
  sub_1004190E0(a1, a2, "CaseInfoVIDSource", (a3 + 8), 2);
  sub_1004190E0(a1, a2, "CaseInfoColor", (a3 + 10), 1);
  sub_100418F44(a1, a2, "CaseInfoName", v6);
  return 0;
}

uint64_t sub_10041D59C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "ListeningModeConfigs", &v4, 4);
  return 0;
}

uint64_t sub_10041D5E8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "SingleClickMode", &v4, 4);
  return 0;
}

uint64_t sub_10041D634(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "DoubleClickMode", &v4, 4);
  return 0;
}

uint64_t sub_10041D680(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "ClickHoldMode", &v4, 4);
  return 0;
}

uint64_t sub_10041D6CC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "SingleClickInterval", &v4, 4);
  return 0;
}

uint64_t sub_10041D718(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "ClickHoldInterval", &v4, 4);
  return 0;
}

uint64_t sub_10041D764(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "OneBudANCMode", &v4, 1);
  return 0;
}

uint64_t sub_10041D7B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "VolumeSwipeMode", &v4, 1);
  return 0;
}

uint64_t sub_10041D7FC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "VolumeSwipeInterval", &v4, 4);
  return 0;
}

uint64_t sub_10041D848(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "AdaptiveVolumeMode", &v4, 1);
  return 0;
}

uint64_t sub_10041D894(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "UplinkEQBudConfig", &v4, 4);
  return 0;
}

uint64_t sub_10041D8E0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "CallManagementConfig", &v4, 4);
  return 0;
}

uint64_t sub_10041D92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "AdaptiveControlsProxStatusKey", &v4, 8);
  return 0;
}

uint64_t sub_10041D964(uint64_t a1, uint64_t a2, char **a3)
{
  v11 = 0;
  if (sub_100419F60(a1, a2, "AACPCapabilitiesLength", &v11))
  {
    return 1;
  }

  v7 = v11;
  if (v11 < 1)
  {
    return 12;
  }

  v8 = *a3;
  v9 = a3[1] - *a3;
  if (v11 != v9)
  {
    v10 = 0;
    if (v11 <= v9)
    {
      if (v11 < v9)
      {
        a3[1] = &v8[v11];
      }
    }

    else
    {
      sub_10041F894(a3, v11 - v9, &v10);
      v8 = *a3;
    }
  }

  return sub_100418FF4(a1, a2, "AACPCapabilitiesBits", v8, v7);
}

uint64_t sub_10041DA24(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  if (v7 == *a3)
  {
    v8 = qword_100BCE8D8;
    v9 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    LODWORD(v6) = v7;
    if (v9)
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "writeAACPCapabilityBits delete key", v11, 2u);
      v6 = *a3;
      v7 = a3[1];
    }
  }

  sub_10041A024(a1, a2, "AACPCapabilitiesLength", (v7 - v6));
  sub_1004190E0(a1, a2, "AACPCapabilitiesBits", *a3, a3[1] - *a3);
  return 0;
}

uint64_t sub_10041DAF4(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = 0;
  v6 = sub_100419F60(a1, a2, "AACPCapabilitiesIntegersLength", &v17);
  if (v6)
  {
    return 1;
  }

  v8 = v17;
  if (v17 - 256 < 0xFFFFFF01)
  {
    return 12;
  }

  if (v17 != (a3[1] - *a3) >> 2)
  {
    *buf = 0;
    sub_10041DCD4(a3, v17, buf);
  }

  __chkstk_darwin(v6);
  v9 = v15 - ((4 * v8 + 15) & 0x7FFFFFFF0);
  bzero(v9, 4 * v8);
  if (sub_100418FF4(a1, a2, "AACPCapabulitiesIntegers", v9, (4 * v8)))
  {
    return 1;
  }

  v15[1] = v15;
  v11 = 0;
  v12 = qword_100BCE8D8;
  v13 = v9 + 3;
  *&v10 = 67109376;
  v16 = v10;
  do
  {
    v14 = *(v13 - 3);
    *(*a3 + 4 * v11) = v14;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = v16;
      v19 = v11;
      v20 = 1024;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "readAACPCapabilityIntegers: index %d, value %d", buf, 0xEu);
      v12 = qword_100BCE8D8;
    }

    v13 += 4;
    ++v11;
  }

  while (v8 != v11);
  return 0;
}

void sub_10041DCD4(void *result, unint64_t a2, int *a3)
{
  v3 = (result[1] - *result) >> 2;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    sub_10041F9D8(result, a2 - v3, a3);
  }
}

uint64_t sub_10041DD04(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1] - *a3;
  if ((v3 >> 2) > 0xFF)
  {
    return 3;
  }

  v6 = a2;
  v7 = a1;
  v8 = sub_10041A024(a1, a2, "AACPCapabilitiesIntegersLength", v3 >> 2);
  v9 = a3[1];
  v10 = v9 - *a3;
  if (v9 == *a3)
  {
    v23 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, v10))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "writeAACPCapabilityIntegers delete key", buf, 2u);
    }

    sub_1004190E0(v7, v6, "AACPCapabulitiesIntegers", 0, 0);
  }

  else
  {
    __chkstk_darwin(v8);
    v12 = v24 - v11;
    bzero(v24 - v11, v13);
    v16 = *a3;
    v15 = a3[1];
    if (v15 == *a3)
    {
      v22 = 0;
    }

    else
    {
      v24[1] = v24;
      v25 = v7;
      v26 = v6;
      v17 = 0;
      v18 = qword_100BCE8D8;
      *&v14 = 67109376;
      v27 = v14;
      v19 = v12;
      v24[0] = v12;
      do
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(v16 + 4 * v17);
          *buf = v27;
          v29 = v17;
          v30 = 1024;
          v31 = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "writeAACPCapabilityIntegers: index %d, value %d", buf, 0xEu);
          v18 = qword_100BCE8D8;
          v16 = *a3;
          v15 = a3[1];
        }

        v21 = v16 + 4 * v17;
        *v19 = *v21;
        v19[2] = *(v21 + 2);
        v19[3] = *(v21 + 3);
        ++v17;
        v22 = v15 - v16;
        v19 += 4;
      }

      while (v17 < (v15 - v16) >> 2);
      v7 = v25;
      v6 = v26;
      v12 = v24[0];
    }

    sub_1004190E0(v7, v6, "AACPCapabulitiesIntegers", v12, v22);
  }

  return 0;
}

uint64_t sub_10041DF60(uint64_t a1, uint64_t a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a3)
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  sub_10041ACA8(a1, a2, "SpatialAudioPrefInitialized", v7);
  objc_autoreleasePoolPop(v6);
  return 0;
}

uint64_t sub_10041DFD0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a3)
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  sub_10041ACA8(a1, a2, "GuestMode", v7);
  objc_autoreleasePoolPop(v6);
  return 0;
}

uint64_t sub_10041E050(uint64_t a1, uint64_t a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a3)
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  sub_10041ACA8(a1, a2, "GuestModeNotInContacts", v7);
  objc_autoreleasePoolPop(v6);
  return 0;
}

BOOL sub_10041E0F8(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 0;
  result = sub_100419F60(a1, a2, "GuestLastSeenTime", &v5);
  if (result)
  {
    return 1;
  }

  *a3 = v5;
  return result;
}

uint64_t sub_10041E148(uint64_t a1, uint64_t a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a3)
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  sub_10041ACA8(a1, a2, "OwnerAutoAggregation", v7);
  objc_autoreleasePoolPop(v6);
  return 0;
}

uint64_t sub_10041E1C8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a3)
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  sub_10041ACA8(a1, a2, "OwnerNoMagicPairing", v7);
  objc_autoreleasePoolPop(v6);
  return 0;
}

uint64_t sub_10041E248(uint64_t a1, uint64_t a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a3)
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  sub_10041ACA8(a1, a2, "TemporaryManagedPairing", v7);
  objc_autoreleasePoolPop(v6);
  return 0;
}

uint64_t sub_10041E2C8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a3)
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  sub_10041ACA8(a1, a2, "GuestPairingMode", v7);
  objc_autoreleasePoolPop(v6);
  return 0;
}

uint64_t sub_10041E35C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "ColorInfo", &v4, 4);
  return 0;
}

uint64_t sub_10041E3A8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "MIDFeatureBits", &v4, 4);
  return 0;
}

uint64_t sub_10041E3F4(uint64_t a1, uint64_t a2, float a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "DosimetrySensitivity", &v4, 4);
  return 0;
}

uint64_t sub_10041E42C(uint64_t a1, uint64_t a2, const void **a3)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  if (sub_100418FF4(a1, a2, "DosimetryVolumeCurve", v15, 0x44))
  {
    return 1;
  }

  v5 = 0;
  v6 = a3[1];
  do
  {
    v7 = a3[2];
    if (v6 >= v7)
    {
      v8 = *a3;
      v9 = v6 - *a3;
      v10 = v9 >> 2;
      v11 = (v9 >> 2) + 1;
      if (v11 >> 62)
      {
        sub_1000C7698();
      }

      v12 = v7 - v8;
      if (v12 >> 1 > v11)
      {
        v11 = v12 >> 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v13 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        sub_10036F560(a3, v13);
      }

      *(4 * v10) = *(v15 + v5);
      v6 = (4 * v10 + 4);
      memcpy(0, v8, v9);
      v14 = *a3;
      *a3 = 0;
      a3[1] = v6;
      a3[2] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v6 = *(v15 + v5);
      v6 += 4;
    }

    a3[1] = v6;
    v5 += 4;
  }

  while (v5 != 68);
  return 0;
}

uint64_t sub_10041E59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  __chkstk_darwin(a1);
  v8 = &v12 - v7;
  bzero(&v12 - v7, v9);
  v10 = v6 - v5;
  if (v10)
  {
    memmove(v8, v5, v10);
  }

  sub_1004190E0(a1, a2, "DosimetryVolumeCurve", v8, v10);
  return 0;
}

uint64_t sub_10041E688(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "EncryptionKeySize", &v4, 1);
  return 0;
}

uint64_t sub_10041E6D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "EncryptionMode", &v4, 1);
  return 0;
}

uint64_t sub_10041E720(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "LowSecurityStatus", &v4, 4);
  return 0;
}

uint64_t sub_10041E76C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "HIDDeviceBehavior", &v4, 4);
  return 0;
}

uint64_t sub_10041E7B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "UserSelectedDeviceType", &v4, 1);
  return 0;
}

uint64_t sub_10041E804(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "CarPlayType", &v4, 4);
  return 0;
}

void sub_10041E83C(uint64_t a1, uint64_t a2)
{
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  if (sub_100419F60(a1, a2, "DeviceIdVendorSource", &v29 + 1))
  {
    v4 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    sub_1000E5A58(a2, __p);
    if (v36 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = *__p;
    }

    *buf = 136446210;
    *&buf[4] = v5;
    v6 = "Did not read property DID_VID_SOURCE_KEY on device %{public}s";
LABEL_19:
    v9 = v4;
LABEL_20:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(*__p);
    }

    return;
  }

  if (sub_100419F60(a1, a2, "DeviceIdVendor", &v29))
  {
    v4 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    sub_1000E5A58(a2, __p);
    if (v36 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    *buf = 136446210;
    *&buf[4] = v7;
    v6 = "Did not read property DID_VID_KEY on device %{public}s";
    goto LABEL_19;
  }

  if (sub_100419F60(a1, a2, "DeviceIdProduct", &v28 + 1))
  {
    v4 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    sub_1000E5A58(a2, __p);
    if (v36 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = *__p;
    }

    *buf = 136446210;
    *&buf[4] = v8;
    v6 = "Did not read property DID_PID_KEY on device %{public}s";
    goto LABEL_19;
  }

  v10 = sub_100419F60(a1, a2, "DeviceIdVersion", &v28);
  v11 = qword_100BCE8D8;
  v12 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (!v12)
    {
      return;
    }

    sub_1000E5A58(a2, __p);
    if (v36 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = *__p;
    }

    *buf = 136446210;
    *&buf[4] = v13;
    v6 = "Did not read property DID_VERSION_KEY on device %{public}s";
    v9 = v11;
    goto LABEL_20;
  }

  if (v12)
  {
    sub_1000E5A58(a2, buf);
    if (v31 >= 0)
    {
      v14 = buf;
    }

    else
    {
      v14 = *buf;
    }

    v16 = v29;
    v15 = HIDWORD(v29);
    v18 = v28;
    v17 = HIDWORD(v28);
    *__p = 136447234;
    *&__p[4] = v14;
    v33 = 1024;
    v34 = HIDWORD(v29);
    v35 = 1024;
    v36 = v29;
    v37 = 1024;
    v38 = HIDWORD(v28);
    v39 = 1024;
    v40 = v28;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "readDID %{public}s deviceId information: vidSrc 0x%x vid 0x%x pid 0x%x version 0x%x", __p, 0x24u);
    if (v31 < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v16 = v29;
    v15 = HIDWORD(v29);
    v18 = v28;
    v17 = HIDWORD(v28);
  }

  sub_10053D890(a2, v15, v16, v17, v18);
  if (!sub_100419F60(a1, a2, "AppleDevFeatures", &v27 + 1))
  {
    v19 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v20 = v36 >= 0 ? __p : *__p;
      *buf = 136446210;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Did read property APPLE_DEV_FEATURES_KEY on device %{public}s", buf, 0xCu);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(*__p);
      }
    }

    sub_10053DCEC(a2, SHIDWORD(v27), 1);
  }

  v21 = sub_100419F60(a1, a2, "AppleDevFeaturesVersion", &v27);
  if (!v21)
  {
    v22 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v23 = v36 >= 0 ? __p : *__p;
      *buf = 136446210;
      *&buf[4] = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Did read property APPLE_DEV_FEATURES_VERSION_KEY on device %{public}s", buf, 0xCu);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(*__p);
      }
    }

    sub_10053E160(a2, v27);
  }

  if (!sub_10041B480(v21, a2, "AppleDevExtendedFeatures", &v26))
  {
    v24 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v25 = v36 >= 0 ? __p : *__p;
      *buf = 136446210;
      *&buf[4] = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Did read property APPLE_DEV_EXTENDED_FEATURES_KEY on device %{public}s", buf, 0xCu);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(*__p);
      }
    }

    sub_10053DFDC(a2, __ROR8__(v26, 32), 1);
  }
}

void sub_10041ED6C(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  if (sub_1000C2364(a2, &v15 + 1, &v15, &v14 + 1, &v14))
  {
    sub_10041A024(a1, a2, "DeviceIdVendorSource", HIDWORD(v15));
    sub_10041A024(a1, a2, "DeviceIdVendor", v15);
    sub_10041A024(a1, a2, "DeviceIdProduct", HIDWORD(v14));
    sub_10041A024(a1, a2, "DeviceIdVersion", v14);
    if (sub_10053E4A8(a2, &v13 + 1))
    {
      sub_10041A024(a1, a2, "AppleDevFeatures", HIDWORD(v13));
      v4 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        v5 = v11 >= 0 ? __p : __p[0];
        *buf = 136446210;
        v17 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did write APPLE_DEV_FEATURES_KEY info for %{public}s to disk", buf, 0xCu);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    if (sub_10053E4C4(a2, &v13))
    {
      sub_10041A024(a1, a2, "AppleDevFeaturesVersion", v13);
      v6 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        v7 = v11 >= 0 ? __p : __p[0];
        *buf = 136446210;
        v17 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Did write APPLE_DEV_FEATURES_VERSION_KEY info for %{public}s to disk", buf, 0xCu);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    if (sub_10053E4E0(a2, &v12))
    {
      sub_10041B758(a1, a2, "AppleDevExtendedFeatures", HIDWORD(v12) | (v12 << 32));
      v8 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        if (v11 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        *buf = 136446210;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Did write APPLE_DEV_EXTENDED_FEATURES_KEY info for %{public}s to disk", buf, 0xCu);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10082A4D0();
  }
}

uint64_t sub_10041F090(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  sub_1004190E0(a1, a2, "GAPAFlags", &v4, 4);
  return 0;
}

uint64_t *sub_10041F130(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

void *sub_10041F204(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
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

void *sub_10041F2E0(void *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_100083B10(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 8) = *(v9 + 8);
          *(v8 + 5) = *(v9 + 5);
          sub_10041F44C(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_100083B10(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_100084E60(&v12);
  }

  if (a2 != a3)
  {
    sub_10041F4BC(v5, (a2 + 4));
  }

  return result;
}

void sub_10041F438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100084E60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10041F44C(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 8))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_8:
  sub_10000856C(a1, v3, v5, a2);
  return a2;
}

void *sub_10041F568(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10041F5C0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10041F5C0(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10041F648(v5, (v5 + 8), v4 + 8, (v4 + 8));
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
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_10041F648(uint64_t **a1, uint64_t *a2, unsigned int *a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_10041F6EC(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_10041F6EC(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_10041F894(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      sub_1000C7698();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void sub_10041F9D8(uint64_t a1, unint64_t a2, int *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 2)
  {
    if (a2)
    {
      v12 = 0;
      v13 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = v6 + 4 * a2;
      v17 = *a3;
      v18 = v14 + 4;
      v19 = (v6 + 8);
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1008A49A0)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1008A4990)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_1000C7698();
    }

    v9 = v7 >> 2;
    v10 = v5 - *a1;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_10036F560(a1, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = 4 * v9 + 4 * a2;
    v25 = *a3;
    v26 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1008A49A0)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1008A4990)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = *(a1 + 8) - *a1;
    v33 = v23 - v32;
    memcpy((v23 - v32), *a1, v32);
    v34 = *a1;
    *a1 = v33;
    *(a1 + 8) = v24;
    *(a1 + 16) = 0;
    if (v34)
    {

      operator delete(v34);
    }
  }
}

void *sub_10041FC20(void *a1)
{
  *a1 = &off_100AF5510;
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  a1[1] = dispatch_queue_create("com.apple.MobileBluetooth.LeDeviceCache", v2);
  return a1;
}

uint64_t sub_10041FC80(uint64_t a1)
{
  *a1 = &off_100AF5510;
  dispatch_release(*(a1 + 8));
  return a1;
}

void sub_10041FCC8(uint64_t a1)
{
  *a1 = &off_100AF5510;
  dispatch_release(*(a1 + 8));

  operator delete();
}

uint64_t sub_10041FD30(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10041FDE0;
  block[3] = &unk_100AE0EB8;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_10041FDE0(void *a1)
{
  v2 = a1[5];
  v3 = +[LeDeviceCache sharedInstance];
  *(*(a1[4] + 8) + 24) = [v3 initializeDatabases:a1[6] queue:*(v2 + 8)];
}

uint64_t sub_10041FE60(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = *(a1 + 8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10041FF40;
  v12[3] = &unk_100AF5570;
  v13 = v7;
  v14 = &v17;
  v15 = a3;
  v16 = a4;
  v9 = v7;
  dispatch_sync(v8, v12);
  v10 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v10;
}

void sub_10041FF40(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[LeDeviceCache sharedInstance];
  *(*(*(a1 + 40) + 8) + 24) = [v3 loadPairedDevice:*(a1 + 32) address:*(a1 + 48) ifMissing:*(a1 + 56)];

  objc_autoreleasePoolPop(v2);
}

void sub_10041FFC8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100420064;
  v8[3] = &unk_100AE1200;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  dispatch_sync(v6, v8);
}

void sub_100420064(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[LeDeviceCache sharedInstance];
  [v3 removeDevicesDuplicatesOf:*(a1 + 40) originalUuid:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1004200D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004201A8;
  block[3] = &unk_100AF5598;
  v12 = &v14;
  v13 = a3;
  v11 = v5;
  v7 = v5;
  dispatch_sync(v6, block);
  v8 = *(v15 + 6);

  _Block_object_dispose(&v14, 8);
  return v8;
}

void sub_1004201A8(void *a1)
{
  v2 = +[LeDeviceCache sharedInstance];
  *(*(a1[5] + 8) + 24) = [v2 duplicatePairedDevicesForAddress:a1[6] originalUuid:a1[4]];
}

void sub_100420224(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100420294;
  block[3] = &unk_100ADF8F8;
  block[4] = a2;
  dispatch_sync(v2, block);
}

void sub_100420294(uint64_t a1)
{
  v2 = +[LeDeviceCache sharedInstance];
  [v2 removeDevice:*(a1 + 32) internal:0];
}

void sub_100420314(id a1)
{
  v1 = +[LeDeviceCache sharedInstance];
  [v1 clearAllDatabases];
}

void sub_100420388(id a1)
{
  v1 = +[LeDeviceCache sharedInstance];
  [v1 printDebug];
}

void sub_1004203EC(id a1)
{
  if (!qword_100B6D790)
  {
    v1 = objc_alloc_init(LeDeviceCache);
    v2 = qword_100B6D790;
    qword_100B6D790 = v1;
  }
}

void sub_1004206F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_1004211BC(uint64_t a1)
{
  v2 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = MKBDeviceUnlockedSinceBoot();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received MKB first unlock notification. MKBDeviceUnlockedSinceBoot returns : %d", v8, 8u);
  }

  if (MKBDeviceUnlockedSinceBoot() != 1 && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
  {
    sub_10082A734();
  }

  v5 = *(a1 + 32);
  v3 = (a1 + 32);
  v4 = v5;
  if (!v5[3])
  {
    v6 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received first unlock notification - loading protected cache", v8, 2u);
      v4 = *v3;
    }

    if ([v4 loadDatabase:1])
    {
      [*v3 updateProtectedCacheMetrics];
    }

    else
    {
      v7 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        sub_10082A768(v3, v7);
      }
    }
  }
}

void sub_100421414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1004257E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_1000161FC(&__p);

  _Unwind_Resume(a1);
}

void sub_100425AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_1000161FC(&__p);

  _Unwind_Resume(a1);
}

void sub_1004275E8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10042867C()
{
  v0 = objc_autoreleasePoolPush();
  qword_100BCE4E0[0] = objc_opt_class();
  qword_100BCE4E8 = objc_opt_class();
  qword_100BCE4F0 = objc_opt_class();
  qword_100BCE4F8 = objc_opt_class();
  qword_100BCE500 = objc_opt_class();
  qword_100BCE508 = objc_opt_class();
  qword_100BCE510 = objc_opt_class();
  qword_100BCE518 = objc_opt_class();
  qword_100BCE520 = objc_opt_class();
  qword_100BCE528 = objc_opt_class();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100428744(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  *a1 = off_100AF5648;
  *(a1 + 16) = off_100AF56B8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = a1 + 56;
  v3 = (a1 + 48);
  *(a1 + 64) = 0;
  sub_100321440((a1 + 72), (a1 + 16), "com.apple.BTServer.map", 0);
  for (i = qword_100BCE8A8; i != &qword_100BCE8A0; i = *(i + 8))
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v11 = 0;
    if (*(i + 39) < 0)
    {
      sub_100008904(__dst, *(i + 16), *(i + 24));
    }

    else
    {
      *__dst = *(i + 16);
      v11 = *(i + 32);
    }

    memset(v9, 0, sizeof(v9));
    sub_10042A4D0(__p, __dst, v9);
    sub_10042B1B0(v3, __p, __p);
    v12 = &v8;
    sub_10042AF8C(&v12);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = v9;
    sub_10042AF8C(__p);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  sub_100321480(a1 + 72);
  sub_100428938(a1);
  return a1;
}

void sub_1004288C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_10042B10C(v24, *v25);
  sub_10042B02C(&a10);
  _Unwind_Resume(a1);
}

void sub_100428938(uint64_t a1)
{
  sub_1003216CC(a1 + 72, "kStart", 0, 0);
  v2 = *sub_100017E6C();
  if (((*(v2 + 472))() & 1) == 0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1004291B0;
    v3[3] = &unk_100AEB340;
    v3[4] = a1;
    sub_1003217F4(a1 + 72, "kGetImCoreInitialMessages", 0, v3);
  }
}

void sub_100428A1C(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100428A8C;
  v1[3] = &unk_100ADF8F8;
  v1[4] = a1;
  sub_100321530(a1 + 72, v1);
}

void sub_100428A8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54340 != -1)
  {
    sub_10082B2DC();
  }

  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100428B24;
  v2[3] = &unk_100ADF8F8;
  v2[4] = v1;
  sub_1005897E0(qword_100B54338, v2);
}

uint64_t sub_100428B24(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

size_t sub_100428B54(uint64_t a1, char *a2)
{
  v5 = time(0);
  v3 = localtime(&v5);
  return strftime(a2, 0x10uLL, "%Y%m%dT%H%M%S", v3);
}

void sub_100428BA8(uint64_t a1, uint64_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v17 = 0;
  v4 = *a2;
  if (*(*a2 + 111) < 0)
  {
    sub_100008904(__p, *(v4 + 88), *(v4 + 96));
    v4 = *a2;
  }

  else
  {
    *__p = *(v4 + 88);
    v17 = *(v4 + 104);
  }

  string = 0;
  v14 = 0;
  v15 = 0;
  sub_100428D64(v4, &string);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_10042A780((*a2 + 136), 0, &v10);
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (SHIBYTE(v15) < 0)
  {
    if (!v14)
    {
      goto LABEL_10;
    }

    p_string = string;
  }

  else
  {
    if (!HIBYTE(v15))
    {
      goto LABEL_10;
    }

    p_string = &string;
  }

  xpc_dictionary_set_string(v5, "kRecipientPhoneNumber", p_string);
LABEL_10:
  if (SHIBYTE(v12) < 0)
  {
    if (!v11)
    {
      goto LABEL_16;
    }

    v8 = v10;
  }

  else
  {
    if (!HIBYTE(v12))
    {
      goto LABEL_16;
    }

    v8 = &v10;
  }

  xpc_dictionary_set_string(v6, "kRecipientEmail", v8);
LABEL_16:
  if (v17 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  xpc_dictionary_set_string(v6, "kBody", v9);
  sub_1003216CC(a1 + 72, "kSendTextMessage", v6, 0);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v10);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(string);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100428D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_100428D64(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10042A6A4((a1 + 136), 0, v3);
  *a2 = *v3;
  *(a2 + 16) = v4;
  v3[1] = 0;
  v4 = 0;
  v3[0] = 0;
  if (v6 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v4) < 0)
    {
      operator delete(v3[0]);
    }
  }
}

void sub_100428DD4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  sub_100428E6C(a1, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100428E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100428E6C(uint64_t result@<X0>, const std::string *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(result + 48);
  v5 = (result + 56);
  if (v4 == (result + 56))
  {
LABEL_14:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    while (1)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      sub_10042A55C(&v13, v4[7], v4[8], (v4[8] - v4[7]) >> 4);
      v7 = v13;
      v8 = v14;
      v16 = a2;
      if (v13 != v14)
      {
        while (!sub_10042A7E0(&v16, v7))
        {
          v7 += 2;
          if (v7 == v8)
          {
            v7 = v8;
            break;
          }
        }

        v8 = v14;
      }

      if (v7 != v8)
      {
        break;
      }

      v17 = &v13;
      sub_10042AF8C(&v17);
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
      if (v10 == v5)
      {
        goto LABEL_14;
      }
    }

    *a3 = *v7;
    v12 = v7[1];
    a3[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = &v13;
    sub_10042AF8C(&v17);
  }
}

void sub_100428F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14)
{
  a14 = &a10;
  sub_10042AF8C(&a14);
  _Unwind_Resume(a1);
}

void sub_100428FB4(uint64_t a1, void **a2)
{
  v2 = a2;
  v11 = 0;
  v12 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(&__p, *a2, a2[1]);
  }

  else
  {
    __p = *a2;
  }

  sub_100428E6C(a1, &__p, &v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = v11;
  if (v11)
  {
    *(v11 + 122) = 1;
    memset(buf, 0, sizeof(buf));
    v14 = 0;
    if (*(v4 + 31) < 0)
    {
      sub_100008904(buf, *(v4 + 8), *(v4 + 16));
    }

    else
    {
      v5 = *(v4 + 8);
      v14 = *(v4 + 24);
      *buf = v5;
    }

    v7 = xpc_dictionary_create(0, 0, 0);
    v8 = v7;
    if (v14 >= 0)
    {
      v9 = buf;
    }

    else
    {
      v9 = *buf;
    }

    xpc_dictionary_set_string(v7, "kMessageGUID", v9);
    sub_1003216CC(a1 + 72, "kMarkMessageRead", v8, 0);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v6 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 23) < 0)
      {
        v2 = *v2;
      }

      *buf = 136315138;
      *&buf[4] = v2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Could not mark message %s{public} read, guid does not exist", buf, 0xCu);
    }
  }

  if (v12)
  {
    sub_100117644(v12);
  }
}

void sub_100429160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17)
  {
    sub_100117644(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004291B0(uint64_t a1, xpc_object_t xdict)
{
  v2 = *(a1 + 32);
  value = xpc_dictionary_get_value(xdict, "kMsgArgs");
  if (value)
  {
    v4 = value;
    sub_100007E30(__p, "inbox");
    sub_100429244(v2, v4, __p, 0);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100429228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100429244(void *a1, xpc_object_t xdict, unsigned __int8 *a3, int a4)
{
  value = xpc_dictionary_get_value(xdict, "kMessagesInfo");
  if (value)
  {
    v8 = value;
    if (xpc_get_type(value) == &_xpc_type_array)
    {
      v55 = 0;
      v56 = &v55;
      v57 = 0x4812000000;
      v58 = sub_1000422E8;
      v59 = sub_100042618;
      v60 = "";
      memset(v61, 0, sizeof(v61));
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_1004298A0;
      applier[3] = &unk_100AF56D8;
      applier[4] = &v55;
      xpc_array_apply(v8, applier);
      v10 = v56[6];
      v9 = v56[7];
      if (v10 != v9)
      {
        v11 = &qword_100BCEAA8;
        v37 = a4;
        do
        {
          v13 = *v10;
          v12 = v10[1];
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (a3[23] < 0)
          {
            sub_100008904(__p, *a3, *(a3 + 1));
          }

          else
          {
            *__p = *a3;
            v53 = *(a3 + 2);
          }

          v50 = v13;
          v51 = v12;
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*a1 + 56))(a1, __p, &v50);
          if (v51)
          {
            sub_100117644(v51);
          }

          if (SHIBYTE(v53) < 0)
          {
            operator delete(__p[0]);
          }

          v14 = *v11;
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v11;
            v16 = a3;
            if (a3[23] < 0)
            {
              v16 = *a3;
            }

            sub_100429A1C(v13, &v49);
            if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v17 = &v49;
            }

            else
            {
              v17 = v49.__r_.__value_.__r.__words[0];
            }

            if (*(v13 + 31) < 0)
            {
              sub_100008904(__dst, *(v13 + 8), *(v13 + 16));
            }

            else
            {
              v18 = *(v13 + 8);
              v48 = *(v13 + 24);
              *__dst = v18;
            }

            v19 = __dst;
            if (v48 < 0)
            {
              v19 = __dst[0];
            }

            *buf = 136315650;
            *&buf[4] = v16;
            v63 = 2080;
            v64 = v17;
            v65 = 2080;
            v66 = v19;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Inserting record into %s with shortGUID %s and messageGUID %s", buf, 0x20u);
            if (SHIBYTE(v48) < 0)
            {
              operator delete(__dst[0]);
            }

            v11 = v15;
            if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v49.__r_.__value_.__l.__data_);
            }

            a4 = v37;
          }

          if (!a4)
          {
            goto LABEL_72;
          }

          v20 = a3[23];
          if (a3[23] < 0)
          {
            v22 = *(a3 + 1);
            if (v22 != 5)
            {
              goto LABEL_48;
            }

            v21 = *a3;
          }

          else
          {
            v21 = a3;
            if (v20 != 5)
            {
              goto LABEL_43;
            }
          }

          v23 = *v21;
          v24 = v21[4];
          if (v23 == 1868721769 && v24 == 120)
          {
            v28 = sub_100017E6C();
            if (!(*(*v28 + 472))(v28))
            {
              v36 = a1[1];
              v45 = v13;
              v46 = v12;
              if (v12)
              {
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              (**v36)(v36, &v45);
              v34 = v46;
              if (!v46)
              {
                goto LABEL_72;
              }

              goto LABEL_71;
            }

            v20 = a3[23];
            if ((v20 & 0x80) != 0)
            {
LABEL_47:
              v22 = *(a3 + 1);
LABEL_48:
              if (v22 != 6)
              {
                goto LABEL_55;
              }

              v27 = *a3;
              v26 = 1;
              goto LABEL_50;
            }
          }

          else if ((v20 & 0x80) != 0)
          {
            goto LABEL_47;
          }

LABEL_43:
          v26 = 0;
          if (v20 != 6)
          {
            goto LABEL_54;
          }

          v27 = a3;
LABEL_50:
          v29 = *v27;
          v30 = *(v27 + 2);
          if (v29 == 1651799407 && v30 == 30831)
          {
            v35 = a1[1];
            v43 = v13;
            v44 = v12;
            if (v12)
            {
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v35 + 8))(v35, &v43, 1);
            v34 = v44;
            if (!v44)
            {
              goto LABEL_72;
            }

            goto LABEL_71;
          }

LABEL_54:
          if (!v26)
          {
            v32 = a3;
            if (v20 == 4)
            {
              goto LABEL_59;
            }

            goto LABEL_72;
          }

LABEL_55:
          if (*(a3 + 1) == 4)
          {
            v32 = *a3;
LABEL_59:
            if (*v32 != 1953391987)
            {
              goto LABEL_72;
            }

            sub_100007E30(v41, "outbox");
            sub_100429A1C(v13, &v40);
            sub_100429BB4(a1, v41, &v40);
            if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v40.__r_.__value_.__l.__data_);
            }

            if (v42 < 0)
            {
              operator delete(v41[0]);
            }

            v33 = a1[1];
            v38 = v13;
            v39 = v12;
            if (v12)
            {
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v33 + 16))(v33, &v38);
            v34 = v39;
            if (!v39)
            {
              goto LABEL_72;
            }

LABEL_71:
            sub_100117644(v34);
          }

LABEL_72:
          if (v12)
          {
            sub_100117644(v12);
          }

          v10 += 2;
        }

        while (v10 != v9);
      }

      _Block_object_dispose(&v55, 8);
      *buf = v61;
      sub_10042AF8C(buf);
    }
  }
}

void sub_1004297C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a32)
  {
    sub_100117644(a32);
  }

  if (v49)
  {
    sub_100117644(v49);
  }

  _Block_object_dispose((v50 - 216), 8);
  *(v50 - 144) = a10;
  sub_10042AF8C((v50 - 144));
  _Unwind_Resume(a1);
}

void sub_1004299EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100117644(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100429A1C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string(&v13, (a1 + 8), 0, 8uLL, &v12);
  std::string::basic_string(&v12, (a1 + 8), 9uLL, 4uLL, &v11);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v12;
  }

  else
  {
    v4 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v13, v4, size);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string(&v11, (a1 + 8), 0xEuLL, 3uLL, &v15);
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v11;
  }

  else
  {
    v8 = v11.__r_.__value_.__r.__words[0];
  }

  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v11.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v14, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_100429B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_100429BB4(uint64_t a1, const void **a2, uint64_t ***a3)
{
  v4 = a2;
  v5 = sub_10042A910(a1 + 48, a2);
  v6 = *v5;
  v7 = v5[1];
  *v14 = a3;
  if (v6 != v7)
  {
    while (!sub_10042A94C(v14, v6))
    {
      v6 += 16;
      if (v6 == v7)
      {
        v6 = v7;
        break;
      }
    }

    v7 = v5[1];
  }

  v8 = qword_100BCEAA8;
  v9 = os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT);
  if (v6 == v7)
  {
    if (v9)
    {
      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      if (*(v4 + 23) < 0)
      {
        v4 = *v4;
      }

      *v14 = 136315394;
      *&v14[4] = a3;
      v15 = 2080;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Deletion Failure on short GUID %s from folder %s", v14, 0x16u);
    }
  }

  else
  {
    if (v9)
    {
      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      if (*(v4 + 23) < 0)
      {
        v4 = *v4;
      }

      *v14 = 136315394;
      *&v14[4] = a3;
      v15 = 2080;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Deletion Success on short GUID %s from folder %s", v14, 0x16u);
      v7 = v5[1];
    }

    sub_10042AA50(v14, (v6 + 16), v7, v6);
    v11 = v10;
    v12 = v5[1];
    if (v12 != v10)
    {
      do
      {
        v13 = *(v12 - 8);
        if (v13)
        {
          sub_100117644(v13);
        }

        v12 -= 16;
      }

      while (v12 != v11);
    }

    v5[1] = v11;
  }
}

void sub_100429D7C(uint64_t a1, char *a2, xpc_object_t object)
{
  xpc_retain(object);
  v11 = 0uLL;
  v12 = 0;
  sub_100007E30(&v11, a2);
  if (qword_100B54340 != -1)
  {
    sub_10082B2F0();
  }

  v6 = qword_100B54338;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_100429EC4;
  v7[3] = &unk_100AF56F8;
  v7[4] = a1;
  if (SHIBYTE(v12) < 0)
  {
    sub_100008904(__p, v11, *(&v11 + 1));
  }

  else
  {
    *__p = v11;
    v9 = v12;
  }

  v10 = object;
  sub_1005897E0(v6, v7);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }
}

void sub_100429E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 - 33) < 0)
  {
    operator delete(*(v19 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_100429EC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    if (*(a1 + 48) == 13 && **v3 == 0x6567617373654D6BLL && *(*v3 + 5) == 0x6465646441656761)
    {
      goto LABEL_41;
    }

    if (*(a1 + 48) == 19)
    {
      v8 = **v3 == 0x676E69646E65506BLL && *(*v3 + 8) == 0x7373654D646E6553;
      if (v8 && *(*v3 + 11) == 0x6567617373654D64)
      {
LABEL_43:
        v17 = *(a1 + 64);
        sub_100007E30(v20, "outbox");
        sub_100429244(v2, v17, v20, 1);
        if ((v21 & 0x80000000) == 0)
        {
          goto LABEL_46;
        }

        v14 = v20;
        goto LABEL_45;
      }
    }

    if (*(a1 + 48) != 12)
    {
      goto LABEL_46;
    }

    v3 = *v3;
LABEL_29:
    v10 = *v3;
    v11 = v3[2];
    if (v10 == 0x6567617373654D6BLL && v11 == 1953391955)
    {
      v13 = *(a1 + 64);
      sub_100007E30(v18, "sent");
      sub_100429244(v2, v13, v18, 1);
      if (v19 < 0)
      {
        v14 = v18;
        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

  v4 = *(a1 + 63);
  if (v4 == 12)
  {
    goto LABEL_29;
  }

  if (v4 != 13)
  {
    if (v4 != 19)
    {
      goto LABEL_46;
    }

    v5 = *v3 == 0x676E69646E65506BLL && *(a1 + 48) == 0x7373654D646E6553;
    if (!v5 || *(a1 + 51) != 0x6567617373654D64)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  if (*v3 == 0x6567617373654D6BLL && *(a1 + 45) == 0x6465646441656761)
  {
LABEL_41:
    v16 = *(a1 + 64);
    sub_100007E30(v22, "inbox");
    sub_100429244(v2, v16, v22, 1);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    v14 = v22;
LABEL_45:
    operator delete(*v14);
  }

LABEL_46:
  xpc_release(*(a1 + 64));
}

void sub_10042A134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10042A17C(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_100008904(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

void sub_10042A1A8(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_10042A1D0(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  sub_10042AABC(a1, __p, a3);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10042A248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10042A264(uint64_t a1, uint64_t a2)
{
  sub_100007E30(v8, "inbox");
  sub_100007E30(v6, "deleted");
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  sub_10042AD6C(a1, v8, v6, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_10042A31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void **sub_10042A368(uint64_t a1, const void **a2, __int128 *a3)
{
  v4 = sub_10042A910(a1 + 48, a2);

  return sub_10042ABD0(v4, a3);
}

void *sub_10042A3A4(void *a1)
{
  *a1 = off_100AF5648;
  a1[2] = off_100AF56B8;
  sub_10032147C((a1 + 9));
  sub_10042B10C((a1 + 6), a1[7]);
  v3 = (a1 + 3);
  sub_10042B02C(&v3);
  return a1;
}

void sub_10042A430(void *a1)
{
  *a1 = off_100AF5648;
  a1[2] = off_100AF56B8;
  sub_10032147C((a1 + 9));
  sub_10042B10C((a1 + 6), a1[7]);
  v2 = (a1 + 3);
  sub_10042B02C(&v2);
  operator delete();
}

char *sub_10042A4D0(char *__dst, __int128 *a2, void **a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  *(__dst + 3) = 0;
  *(__dst + 4) = 0;
  *(__dst + 5) = 0;
  sub_10042A55C(__dst + 3, *a3, a3[1], (a3[1] - *a3) >> 4);
  return __dst;
}

void sub_10042A540(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10042A55C(uint64_t *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    sub_10042A5D4(result, a4);
  }

  return result;
}

void sub_10042A5D4(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_10042A610(a1, a2);
  }

  sub_1000C7698();
}

void sub_10042A610(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_10042A658(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_10042AF8C(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_10042A6A4@<X0>(void *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[29];
  if (0x6DB6DB6DB6DB6DB7 * ((result[30] - v4) >> 3) <= a2)
  {
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  else
  {
    v5 = (v4 + 56 * a2);
    if (*(v5 + 23) < 0)
    {
      result = sub_100008904(a3, *v5, *(v5 + 1));
    }

    else
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 2);
      *a3 = v6;
    }

    *(a3 + 24) = *(v5 + 6);
    if (*(v5 + 55) < 0)
    {
      return sub_100008904((a3 + 32), *(v5 + 4), *(v5 + 5));
    }

    else
    {
      v7 = v5[2];
      *(a3 + 48) = *(v5 + 6);
      *(a3 + 32) = v7;
    }
  }

  return result;
}

void sub_10042A764(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10042A780@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = result[35];
  if (0xAAAAAAAAAAAAAAABLL * ((result[36] - v3) >> 3) <= a2)
  {
    return sub_100007E30(a3, "");
  }

  v4 = (v3 + 24 * a2);
  if (*(v4 + 23) < 0)
  {
    return sub_100008904(a3, *v4, *(v4 + 1));
  }

  v5 = *v4;
  a3[2] = *(v4 + 2);
  *a3 = v5;
  return result;
}

BOOL sub_10042A7E0(const std::string **a1, uint64_t *a2)
{
  memset(&v13, 0, sizeof(v13));
  sub_100429A1C(*a2, &v13);
  size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  v4 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  v5 = v13.__r_.__value_.__r.__words[0];
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  else
  {
    v5 = &v13;
  }

  if (size)
  {
    v6 = 0;
    while (v5->__r_.__value_.__s.__data_[v6] == 48)
    {
      if (size == ++v6)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v6 = -1;
  }

  v7 = *a1;
  v8 = SHIBYTE((*a1)->__r_.__value_.__r.__words[2]);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = v7->__r_.__value_.__r.__words[0];
    v8 = v7->__r_.__value_.__l.__size_;
    if (!v8)
    {
LABEL_16:
      v10 = -1;
      goto LABEL_17;
    }
  }

  else
  {
    v9 = *a1;
    if (!*(&(*a1)->__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }
  }

  v10 = 0;
  while (v9->__r_.__value_.__s.__data_[v10] == 48)
  {
    if (v8 == ++v10)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  if (v6 == -1 && v10 == -1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 0;
    if (v6 != -1 && v10 != -1)
    {
      v11 = std::string::compare(&v13, v6, 0xFFFFFFFFFFFFFFFFLL, v7, v10, 0xFFFFFFFFFFFFFFFFLL) == 0;
      v4 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }
  }

  if (v4 < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_10042A8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10042A910(uint64_t a1, const void **a2)
{
  v4 = 0;
  v2 = *sub_100044BC4(a1, &v4, a2);
  if (!v2)
  {
    abort();
  }

  return v2 + 56;
}

BOOL sub_10042A94C(const std::string **a1, uint64_t *a2)
{
  memset(&v12, 0, sizeof(v12));
  sub_100429A1C(*a2, &v12);
  size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v12;
  }

  else
  {
    v4 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v5 = 0;
    while (v4->__r_.__value_.__s.__data_[v5] == 48)
    {
      if (size == ++v5)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v5 = -1;
  }

  v6 = *a1;
  v7 = SHIBYTE((*a1)->__r_.__value_.__r.__words[2]);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = v6->__r_.__value_.__r.__words[0];
    v7 = v6->__r_.__value_.__l.__size_;
    if (!v7)
    {
LABEL_18:
      v9 = -1;
      goto LABEL_19;
    }
  }

  else
  {
    v8 = *a1;
    if (!*(&(*a1)->__r_.__value_.__s + 23))
    {
      goto LABEL_18;
    }
  }

  v9 = 0;
  while (v8->__r_.__value_.__s.__data_[v9] == 48)
  {
    if (v7 == ++v9)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  v10 = std::string::compare(&v12, v5, 0xFFFFFFFFFFFFFFFFLL, v6, v9, 0xFFFFFFFFFFFFFFFFLL);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v10 == 0;
}

void sub_10042AA34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_10042AA50(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_100117644(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_10042AABC(uint64_t a1@<X0>, const void **a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a1 + 56 != sub_10000EEB8(a1 + 48, a2))
  {
    v6 = sub_10042A910(a1 + 48, a2);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    sub_10042A55C(&v11, *v6, v6[1], (v6[1] - *v6) >> 4);
    v7 = v11;
    for (i = v12; v7 != i; v7 += 2)
    {
      v9 = v7[1];
      *&v10 = *v7;
      *(&v10 + 1) = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      sub_10042ABD0(a3, &v10);
      if (*(&v10 + 1))
      {
        sub_100117644(*(&v10 + 1));
      }
    }

    *&v10 = &v11;
    sub_10042AF8C(&v10);
  }
}

void sub_10042AB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10042AF8C(va);
  _Unwind_Resume(a1);
}

void **sub_10042ABD0(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_1000C7698();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_10042A610(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
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
    result = sub_10042ACE4(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void **sub_10042ACE4(void **a1)
{
  sub_10042AD18(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10042AD18(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_100117644(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void sub_10042AD6C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v17 = 0;
  v18 = 0;
  if (*(a4 + 23) < 0)
  {
    sub_100008904(&__dst, *a4, *(a4 + 1));
  }

  else
  {
    __dst = *a4;
  }

  sub_100428E6C(a1, &__dst, &v17);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100008904(v14, *a2, *(a2 + 8));
  }

  else
  {
    *v14 = *a2;
    v15 = *(a2 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100008904(__p, *a4, *(a4 + 1));
  }

  else
  {
    *__p = *a4;
    v13 = *(a4 + 2);
  }

  sub_100429BB4(a1, v14, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100008904(v10, *a3, *(a3 + 8));
  }

  else
  {
    *v10 = *a3;
    v11 = *(a3 + 16);
  }

  v8 = v17;
  v9 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 56))(a1, v10, &v8);
  if (v9)
  {
    sub_100117644(v9);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (v18)
  {
    sub_100117644(v18);
  }
}

void sub_10042AF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  v32 = *(v30 - 40);
  if (v32)
  {
    sub_100117644(v32);
  }

  _Unwind_Resume(exception_object);
}

void sub_10042AF8C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10042AFE0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10042AFE0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_100117644(v4);
    }
  }

  a1[1] = v2;
}

void sub_10042B02C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        sub_10042B0B4(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10042B0B4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_10042B10C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10042B10C(a1, *a2);
    sub_10042B10C(a1, a2[1]);
    sub_10042B168((a2 + 4));

    operator delete(a2);
  }
}

void sub_10042B168(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_10042AF8C(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_10042B1B0(uint64_t **a1, const void **a2, uint64_t a3)
{
  v5 = 0;
  v3 = *sub_100044BC4(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_10042B288(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10042B168(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_10042B3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_10042B414(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10042B3D0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10042B414(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 1007) < 0)
    {
      operator delete(*(a2 + 984));
    }

    sub_10069F44C(a2 + 560);
    sub_10069F44C(a2 + 136);
    if (*(a2 + 111) < 0)
    {
      operator delete(*(a2 + 88));
    }

    if (*(a2 + 87) < 0)
    {
      operator delete(*(a2 + 64));
    }

    if (*(a2 + 63) < 0)
    {
      operator delete(*(a2 + 40));
    }

    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    operator delete();
  }
}

uint64_t sub_10042B4C0(uint64_t a1, void *a2, void *a3, char a4)
{
  v8 = a2;
  v9 = a3;
  *(a1 + 8) = 0;
  *a1 = off_100AF5790;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  objc_storeStrong((a1 + 8), a2);
  v10 = objc_alloc_init(NSMutableArray);
  v11 = *(a1 + 24);
  *(a1 + 24) = v10;

  v12 = objc_alloc_init(NSMutableSet);
  v13 = *(a1 + 32);
  *(a1 + 32) = v12;

  sub_10042B5BC(a1, v9);
  return a1;
}

void sub_10042B5BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 8);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding %@ to %@ session", &v6, 0x16u);
  }

  [*(a1 + 24) addObject:v3];
  sub_10042B8F8(a1, v3);
}

uint64_t sub_10042B6B8(uint64_t a1)
{
  *a1 = off_100AF5790;
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 8);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Tearing down CattPendingConnection for %@", &v6, 0xCu);
  }

  return a1;
}

void sub_10042B7A8(uint64_t a1)
{
  sub_10042B6B8(a1);

  operator delete();
}

id sub_10042B7E0(uint64_t a1, int a2)
{
  *(a1 + 16) = a2;
  if (a2)
  {
    v3 = *(a1 + 24);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10042B870;
    v6[3] = &unk_100AF57A0;
    v6[4] = a1;
    return [v3 enumerateObjectsUsingBlock:v6];
  }

  else
  {
    v5 = *(a1 + 32);

    return [v5 removeAllObjects];
  }
}

void sub_10042B870(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = v6;
  if ([*(v7 + 32) containsObject:?])
  {
    *a4 = 1;
  }

  else
  {
    sub_10042B8F8(v7, v8);
  }
}

void sub_10042B8F8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10082B318();
  }

  v4 = sub_100046458(off_100B508C8, v3, 0);
  if (qword_100B508F0 != -1)
  {
    sub_10082B32C();
  }

  v5 = sub_1000504C8(off_100B508E8, v4, 1);
  if (v5)
  {
    if (qword_100B50910 != -1)
    {
      sub_10082B340();
    }

    if (*(off_100B50908 + 205) & 1) != 0 || (*(off_100B50908 + 206) & 1) != 0 || (*(off_100B50908 + 207))
    {
      v6 = 1;
    }

    else
    {
      v6 = *(off_100B50908 + 212);
    }

    v7 = sub_10054D62C(v5, 10);
    v8 = [*(a1 + 32) containsObject:v3];
    if (sub_100537C88(v5) && v6 & 1 | ((*(a1 + 16) & 1) == 0) | v8 & 1 | v7)
    {
      v9 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v5, __p);
        if (v16 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        v11 = *(a1 + 16);
        *buf = 136447234;
        v18 = v10;
        v19 = 1024;
        v20 = v11;
        v21 = 1024;
        v22 = v6 & 1;
        v23 = 1024;
        v24 = v7;
        v25 = 1024;
        v26 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not making outgoing page to device %{public}s isForegroundActive %d, streaming %d, tooRecentConnection %d, alreadyPaged %d", buf, 0x24u);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      if (qword_100B50AC0 != -1)
      {
        sub_10082B354();
      }

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10042BC24;
      v14[3] = &unk_100ADF8F8;
      v14[4] = v5;
      sub_100592E70(off_100B50AB8, v14);
    }
  }

  else
  {
    v12 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_100063D0C(v4);
      *buf = 138412290;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No device found for device %@", buf, 0xCu);
    }
  }
}

void sub_10042BC24(uint64_t a1)
{
  if (qword_100B50AC0 != -1)
  {
    sub_10082B354();
  }

  v3 = *(a1 + 32);
  v2 = (a1 + 32);
  v4 = sub_1000E077C(off_100B50AB8, v3);
  v5 = qword_100BCE988;
  if ((v4 & 0x100000) != 0)
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10082B368(v2);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(*v2, &__p);
      v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136446210;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Making outgoing connection to device %{public}s for CATT", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (qword_100B50AC0 != -1)
    {
      sub_10082B408();
    }

    v7 = *v2;
    memset(&__p, 0, sizeof(__p));
    v8 = sub_10059234C(off_100B50AB8, v7, 0x100000, &__p, 0);
    v9 = v8;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v9)
      {
        return;
      }
    }

    else if (!v8)
    {
      return;
    }

    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10082B430(v2);
    }
  }
}

void sub_10042BDC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10042BDEC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 24) indexOfObject:?] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_10042BE68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 8);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing %@ from %@ session", &v6, 0x16u);
  }

  [*(a1 + 24) removeObject:v3];
}

id sub_10042BF54(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = [*(a1 + 24) description];
  v5 = [*(a1 + 32) description];
  v6 = [NSString stringWithFormat:@"%@ isForegroundActive: %d Devices: %@, Devices already paged: %@", v2, v3, v4, v5];

  return v6;
}

uint64_t sub_10042C320(uint64_t a1, int a2, int a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_100044BBC((a1 + 16));
  *(a1 + 80) = a2;
  *(a1 + 88) = a4;
  *(a1 + 96) = a3;
  sub_10042FA54(a1 + 136);
  sub_10042FA54(a1 + 12512);
  sub_100364534((a1 + 24864));
  sub_100044BBC((a1 + 24912));
  *(a1 + 12488) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 12496) = 0;
  *(a1 + 12504) = 0;
  *(a1 + 24976) = 0;
  *(a1 + 24977) = -1;
  *(a1 + 24981) = -1;
  *(a1 + 24984) = 0;
  *(a1 + 24992) = dispatch_queue_create("com.apple.bluetooth.netrbclientqueue", 0);
  return a1;
}

void sub_10042C3EC(_Unwind_Exception *a1)
{
  sub_1003645A0((v1 + v3));
  sub_10042FA9C(v1 + v2);
  sub_10042FA9C(v1 + 136);
  sub_10007A068(v1 + 16);
  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10042C448(uint64_t a1)
{
  dispatch_release(*(a1 + 24992));
  sub_10007A068(a1 + 24912);
  sub_1003645A0((a1 + 24864));
  sub_10042FA9C(a1 + 12512);
  sub_10042FA9C(a1 + 136);
  sub_10007A068(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_10042C4B8(uint64_t result)
{
  if (*(result + 88))
  {
    operator new();
  }

  return result;
}

uint64_t sub_10042C548(uint64_t a1, uint64_t a2)
{
  memset(&v8, 0, sizeof(v8));
  v7 = 0;
  if (!a2)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10082B5C0();
    }

    return 3470;
  }

  if (*(a1 + 24984))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10082B4D0();
    }

    return 3470;
  }

  *(a1 + 12496) = 0;
  if (sub_10042C7B8(a1))
  {
    if (*(a1 + 80) != 1)
    {
LABEL_13:
      sub_10042FA10(a1 + 136);
      sub_10042FA10(a1 + 12512);
      *(a1 + 24984) = a2;
      sub_10042CA04(a1);
      pthread_attr_init(&v8);
      pthread_attr_setdetachstate(&v8, 2);
      pthread_attr_getschedparam(&v8, &v7);
      v7.sched_priority = 50;
      pthread_attr_setschedparam(&v8, &v7);
      pthread_create((a1 + 128), &v8, sub_10042CA94, a1);
      pthread_create((a1 + 12488), &v8, sub_10042CAB0, a1);
      pthread_create((a1 + 12504), &v8, sub_10042CACC, a1);
      return 0;
    }

    v5 = _NETRBClientCreate();
    *(a1 + 120) = v5;
    if (v5)
    {
      if (_NETRBClientIsAllowedMoreHost())
      {
        goto LABEL_13;
      }

      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10082B548();
      }
    }

    else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10082B584();
    }

    v6 = *(a1 + 104);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 104) = 0;
    }

    if (*(a1 + 120))
    {
      _NETRBClientDestroy();
      *(a1 + 120) = 0;
    }

    return 2101;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10082B50C();
    }

    return 3471;
  }
}

BOOL sub_10042C7B8(uint64_t a1)
{
  v18 = 0;
  v17 = 0;
  if (sub_100243324(&v17))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10082B5FC();
    }

    return *(a1 + 104) != 0;
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    LOBYTE(v17) = v17 | 2;
    if (v2 != 1)
    {
      *(&v17 + 1) = bswap32(v2) >> 16;
    }
  }

  v3 = CFDataCreate(kCFAllocatorDefault, &v17, 6);
  if (v3)
  {
    v4 = v3;
    keys[0] = @"InterfaceRole";
    v5 = *(a1 + 80);
    v6 = @"Bluetooth P2P";
    if (!v5)
    {
      v6 = @"Bluetooth PAN";
    }

    if (v5 == 1)
    {
      v7 = @"Bluetooth PAN-NAP";
    }

    else
    {
      v7 = v6;
    }

    values[0] = v7;
    v8 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!v8)
    {
      goto LABEL_26;
    }

    v9 = v8;
    if (*(a1 + 80) == 2)
    {
      LODWORD(keys[0]) = 1000;
      v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, keys);
      if (!v10)
      {
LABEL_25:
        CFRelease(v9);
LABEL_26:
        CFRelease(v4);
        return *(a1 + 104) != 0;
      }

      v11 = v10;
      v12 = kCFBooleanTrue;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    keys[0] = kIOEthernetHardwareAddress;
    keys[1] = @"IOUserEthernetInterfaceMergeProperties";
    keys[2] = @"P2PInstance";
    keys[3] = @"MaxTransferUnit";
    values[0] = v4;
    values[1] = v9;
    values[2] = v12;
    values[3] = v11;
    if (v12)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    v14 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, v13, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v14)
    {
      v15 = v14;
      *(a1 + 104) = IOEthernetControllerCreate();
      CFRelease(v15);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    goto LABEL_25;
  }

  return *(a1 + 104) != 0;
}

uint64_t sub_10042CA04(uint64_t a1)
{
  result = *(a1 + 104);
  if (result)
  {
    IOEthernetControllerRegisterEnableCallback();
    IOEthernetControllerRegisterDisableCallback();
    v3 = *(a1 + 104);

    return _IOEthernetControllerRegisterPacketAvailableCallback(v3, sub_10042CDF0, a1);
  }

  return result;
}

uint64_t sub_10042CAE8(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 16);
  if (*(a1 + 24984))
  {
    *(a1 + 24984) = 0;
    if (*(a1 + 80) == 1 && *(a1 + 120))
    {
      if ((_NETRBClientSetHostCount() & 1) == 0 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10082B638();
      }

      if ((_NETRBClientStopService() & 1) == 0 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10082B674();
      }

      if ((_NETRBClientDestroy() & 1) == 0 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10082B6B0();
      }
    }

    *(a1 + 12496) = 0;
    sub_10042FAD0(a1 + 136);
    sub_10042FAD0(a1 + 12512);
    if (*(a1 + 104))
    {
      IOEthernetControllerSetLinkStatus();
    }

    if (*(a1 + 112) && *(a1 + 104))
    {
      IOEthernetControllerUnscheduleFromRunLoop();
    }

    while (1)
    {
      v2 = *(a1 + 112);
      if (!v2)
      {
        break;
      }

      CFRunLoopStop(v2);
      sub_10000801C(v6);
      usleep(0x2710u);
      sub_100007FB8(v6);
    }

    v3 = *(a1 + 104);
    if (v3)
    {
      CFRelease(v3);
      v4 = 0;
      *(a1 + 104) = 0;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 2105;
  }

  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_10042CC9C(uint64_t a1)
{
  result = *(a1 + 120);
  if (result)
  {
    if (_NETRBClientIsAllowedMoreHost())
    {
      if (_NETRBClientAddHost())
      {
        return 0;
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_10082B6EC();
        }

        return 3472;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10082B548();
      }

      return 3473;
    }
  }

  return result;
}

uint64_t sub_10042CD40(uint64_t a1)
{
  if (*(a1 + 120))
  {
    _NETRBClientRemoveHost();
  }

  return 0;
}

BOOL sub_10042CD6C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 16);
  if (*(a1 + 104))
  {
    v2 = IOEthernetControllerSetLinkStatus() == 0;
  }

  else
  {
    v2 = 0;
  }

  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10042CDF8(pthread_cond_t *a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, &a1[519]);
  sub_100364600(a1 + 518);
  a1[260].__opaque[8] ^= 1u;
  return sub_1000088CC(v3);
}

uint64_t sub_10042CE6C(uint64_t a1, const void *a2, unsigned int a3)
{
  result = 3474;
  if (a3 && *(a1 + 104))
  {
    result = sub_10042FB1C(a1 + 12512);
    if (result)
    {
      memcpy(result, a2, a3);
      sub_10042FC30(a1 + 12512, a3);
      return 0;
    }
  }

  return result;
}

uint64_t sub_10042CEDC(uint64_t a1)
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  sub_10042DC64(&v7, a1);
  while (1)
  {
    v2 = sub_10042FBA0(a1 + 12512, &v9);
    if (!v2)
    {
      break;
    }

    if (*(a1 + 24976) == 1 && (*v2 & 1) == 0)
    {
      v3 = *(a1 + 24977);
      *(v2 + 4) = *(a1 + 24981);
      *v2 = v3;
    }

    v4 = IOEthernetControllerWritePacket();
    if (v4)
    {
      v5 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v11 = v4;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "OI_NETIFC_Write() failed with %d", buf, 8u);
      }
    }

    sub_10042FCA0(a1 + 12512);
  }

  if (v8)
  {
    sub_100117644(v8);
  }

  return 0;
}

uint64_t sub_10042D064(uint64_t a1)
{
  result = sub_10042FB1C(a1 + 136);
  if (result)
  {
    v3 = result;
    do
    {
      result = IOEthernetControllerReadPacket();
      if (result < 1)
      {
        break;
      }

      if (*(a1 + 24976) == 1 && (*v3 & 1) == 0)
      {
        v4 = *(v3 + 6);
        *(a1 + 24981) = *(v3 + 10);
        *(a1 + 24977) = v4;
      }

      sub_10042FC30(a1 + 136, result);
      result = sub_10042FB1C(a1 + 136);
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_10042D100(uint64_t a1)
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  sub_10042DC64(&v7, a1);
  while (1)
  {
    v2 = sub_10042FBA0(a1 + 136, &v9);
    if (!v2)
    {
      break;
    }

    if (*(a1 + 12496) == 1)
    {
      *buf = 0;
      v11 = 0;
      sub_100007F88(buf, a1 + 24912);
      if (*(a1 + 12496) == 1)
      {
        sub_1003645F8((a1 + 24864), buf);
      }

      sub_1000088CC(buf);
    }

    sub_1000031B0();
    v3 = *(a1 + 24984);
    if (!v3)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10082B728();
      }

      sub_10000C198();
      break;
    }

    v4 = v3(v2, v9);
    if (v4)
    {
      v5 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v4;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "BTStackReceiveCallBack returned error %d", buf, 8u);
      }
    }

    else
    {
      *(a1 + 12496) ^= 1u;
    }

    sub_10000C198();
    pthread_yield_np();
    sub_10042FCA0(a1 + 136);
  }

  *(a1 + 12488) = 0;
  if (v8)
  {
    sub_100117644(v8);
  }

  return 0;
}

void sub_10042D2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, char a15)
{
  if (a13)
  {
    sub_100117644(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10042D2F4(uint64_t a1)
{
  v33[0] = 0;
  v33[1] = 0;
  sub_100007F88(v33, a1 + 16);
  v31 = 0;
  v32 = 0;
  sub_10042DC64(&v31, a1);
  if (!*(a1 + 104))
  {
    goto LABEL_88;
  }

  IONetworkInterfaceObject = IOEthernetControllerGetIONetworkInterfaceObject();
  v3 = IONetworkInterfaceObject;
  if (IONetworkInterfaceObject)
  {
    IOObjectRetain(IONetworkInterfaceObject);
    sub_10000801C(v33);
    if (*(a1 + 104))
    {
      v4 = 0;
      do
      {
        CFProperty = IORegistryEntryCreateCFProperty(v3, @"BSD Name", kCFAllocatorDefault, 0);
        if (CFProperty)
        {
          break;
        }

        usleep(0x186A0u);
        CFProperty = 0;
        if (!*(a1 + 104))
        {
          break;
        }
      }

      while (v4++ < 0x31);
    }

    else
    {
      CFProperty = 0;
    }

    sub_100007FB8(v33);
    if (*(a1 + 104))
    {
      v7 = *(a1 + 80);
      if ((v7 | 2) == 2)
      {
        v8 = _SCNetworkInterfaceCreateWithIONetworkInterfaceObject();
        if (!v8)
        {
          SCError();
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_10082BB20();
          }

          goto LABEL_79;
        }

        v9 = SCPreferencesCreateWithAuthorization(kCFAllocatorDefault, @"BT-PAN", 0, 0);
        prefs = v9;
        if (!v9)
        {
          SCError();
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_10082BAB0();
          }

          goto LABEL_78;
        }

        if (!SCPreferencesLock(v9, 1u))
        {
          SCPreferencesSynchronize(prefs);
          if (!SCPreferencesLock(prefs, 1u))
          {
            SCError();
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              sub_10082BA40();
            }

            goto LABEL_77;
          }
        }

        cf = SCNetworkSetCopyCurrent(prefs);
        if (cf)
        {
          if (SCNetworkSetEstablishDefaultInterfaceConfiguration() || !SCError())
          {
            theArray = SCNetworkServiceCopyAll(prefs);
            if (theArray)
            {
              Count = CFArrayGetCount(theArray);
              if (Count >= 1)
              {
                v11 = 0;
LABEL_24:
                ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
                for (i = SCNetworkServiceGetInterface(ValueAtIndex); ; i = SCNetworkInterfaceGetInterface(v14))
                {
                  v14 = i;
                  if (!i)
                  {
                    if (++v11 != Count)
                    {
                      goto LABEL_24;
                    }

                    goto LABEL_70;
                  }

                  if (CFEqual(v8, i))
                  {
                    break;
                  }
                }

                v17 = &kSCValNetIPv4ConfigMethodDHCP;
                if (v7 == 2)
                {
                  v17 = &kSCValNetIPv4ConfigMethodLinkLocal;
                }

                sub_10042DB24(ValueAtIndex, kSCNetworkProtocolTypeIPv4, kSCPropNetIPv4ConfigMethod, *v17);
                v18 = &kSCValNetIPv6ConfigMethodAutomatic;
                if (v7 == 2)
                {
                  v18 = &kSCValNetIPv6ConfigMethodLinkLocal;
                }

                sub_10042DB24(ValueAtIndex, kSCNetworkProtocolTypeIPv6, kSCPropNetIPv6ConfigMethod, *v18);
                if (!ValueAtIndex)
                {
                  goto LABEL_70;
                }

                v19 = SCNetworkSetCopyAll(prefs);
                v27 = v19;
                if (!v19)
                {
                  SCError();
                  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
                  {
                    sub_10082B924();
                  }

                  goto LABEL_72;
                }

                v20 = CFArrayGetCount(v19);
                if (v20 < 1)
                {
LABEL_66:
                  if (SCPreferencesCommitChanges(prefs))
                  {
                    if (!SCPreferencesApplyChanges(prefs))
                    {
                      SCError();
                      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
                      {
                        sub_10082B7D4();
                      }
                    }
                  }

                  else
                  {
                    SCError();
                    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
                    {
                      sub_10082B844();
                    }
                  }
                }

                else
                {
                  v21 = 0;
                  while (1)
                  {
                    v22 = CFArrayGetValueAtIndex(v27, v21);
                    v23 = SCNetworkSetCopyServices(v22);
                    v24 = v23;
                    if (!v23 || (v36.length = CFArrayGetCount(v23), v36.location = 0, v25 = CFArrayContainsValue(v24, v36, ValueAtIndex), CFRelease(v24), !v25))
                    {
                      if (!SCNetworkSetAddService(v22, ValueAtIndex))
                      {
                        break;
                      }
                    }

                    if (v20 == ++v21)
                    {
                      goto LABEL_66;
                    }
                  }

                  SCError();
                  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
                  {
                    sub_10082B8B4();
                  }
                }

                SCPreferencesUnlock(prefs);
                CFRelease(v27);
                goto LABEL_73;
              }
            }

LABEL_70:
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              sub_10082B994();
            }

LABEL_72:
            SCPreferencesUnlock(prefs);
LABEL_73:
            if (theArray)
            {
              CFRelease(theArray);
            }

            if (cf)
            {
              CFRelease(cf);
            }

LABEL_77:
            CFRelease(prefs);
LABEL_78:
            CFRelease(v8);
            goto LABEL_79;
          }

          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_10082B764();
          }
        }

        else
        {
          SCError();
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_10082B9D0();
          }
        }

        theArray = 0;
        goto LABEL_72;
      }

      *buffer = 0;
      v35 = 0;
      if (CFProperty && CFStringGetCString(CFProperty, buffer, 16, 0x600u))
      {
        v15 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v15, netrbClientDeviceType, 4uLL);
        xpc_dictionary_set_string(v15, netrbClientInterfaceName, buffer);
        started = _NETRBClientStartService();
        xpc_release(v15);
        if (started)
        {
          if (_NETRBClientAddHost())
          {
LABEL_79:
            IOObjectRelease(v3);
            *(a1 + 112) = CFRunLoopGetCurrent();
            if (*(a1 + 104))
            {
              IOEthernetControllerScheduleWithRunLoop();
              if (CFProperty)
              {
                CFRelease(CFProperty);
              }

              sub_10000801C(v33);
              CFRunLoopRun();
              sub_100007FB8(v33);
              goto LABEL_88;
            }

            v3 = 0;
            goto LABEL_84;
          }

          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_10082B6EC();
          }
        }

        else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_10082BB90();
        }
      }

      else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10082BBCC();
      }

      sub_10042C4B8(a1);
    }

    else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10082BC08();
    }

LABEL_84:
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    if (v3)
    {
      IOObjectRelease(v3);
    }

    goto LABEL_88;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10082BC44();
  }

LABEL_88:
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  sub_10000801C(v33);
  if (v32)
  {
    sub_100117644(v32);
  }

  sub_1000088CC(v33);
  return 0;
}

void sub_10042DA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, ...)
{
  va_start(va, a15);
  if (a15)
  {
    sub_100117644(a15);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10042DB24(const __SCNetworkService *a1, const __CFString *a2, const void *a3, const void *a4)
{
  v8 = SCNetworkServiceCopyProtocol(a1, a2);
  if (v8)
  {
LABEL_4:
    Configuration = SCNetworkProtocolGetConfiguration(v8);
    if (Configuration)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Configuration);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v11 = MutableCopy;
    CFDictionarySetValue(MutableCopy, a3, a4);
    v12 = SCNetworkProtocolSetConfiguration(v8, v11);
    CFRelease(v11);
    if (v8)
    {
      CFRelease(v8);
    }

    if (!v12)
    {
      SCError();
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10082BC80();
      }
    }

    return;
  }

  if (SCNetworkServiceAddProtocolType(a1, a2))
  {
    v8 = SCNetworkServiceCopyProtocol(a1, a2);
    goto LABEL_4;
  }

  SCError();
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10082BCF0();
  }
}

void sub_10042DC64(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
    goto LABEL_5;
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
LABEL_5:
    sub_10042DCA8();
    sub_10042DCA8();
  }
}

void sub_10042DCC0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v8 = a2;
  v9 = a1;
  v10 = sub_100007EE8(a1, a2);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10042DFF0;
  v11[3] = &unk_100AF5928;
  v11[4] = a4;
  v13 = a5;
  v12 = v9;
  v14 = v8;
  v15 = a3;
  sub_10000CA94(v10, v11);
}

void sub_10042DD6C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, char a6)
{
  v9 = a2;
  v10 = a1;
  v11 = sub_100007EE8(a1, a2);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10042E1D0;
  v12[3] = &unk_100AF5948;
  v15 = a6;
  v16 = v9;
  v17 = a3;
  v13 = v10;
  v14 = a5;
  sub_10000CA94(v11, v12);
}

void sub_10042DE14(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = sub_100007EE8(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10042E4C8;
  v5[3] = &unk_100AF5990;
  v6 = v3;
  v7 = v2;
  sub_10000CA94(v4, v5);
}

void sub_10042DE98(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = sub_100007EE8(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10042E58C;
  v5[3] = &unk_100AF5990;
  v6 = v3;
  v7 = v2;
  sub_10000CA94(v4, v5);
}

void sub_10042DF1C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10042F430;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

void sub_10042DF98(id a1)
{
  v1 = 0;
  sub_1000216B4(&v1);
  sub_1002D3318(off_100AF58B8);
  sub_10002249C(&v1);
}

void sub_10042DFF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C7D0(a1, a2);
  (*(*v3 + 4344))(v3, 1, *(a1 + 32), 63, 1);
  if (*(a1 + 44) == 1)
  {
    if (qword_100B54350 != -1)
    {
      sub_10082BD74();
    }

    v4 = qword_100B54348;
    v5 = *(a1 + 40);
    v6 = *(a1 + 45);
    v7 = *(a1 + 46);

    sub_10042E0E0(v4, v5, v6, v7);
  }

  else
  {
    if (qword_100B54360 != -1)
    {
      sub_10082BD60();
    }

    v8 = qword_100B54358;
    v9 = *(a1 + 40);
    v10 = *(a1 + 45);
    v11 = *(a1 + 46);

    sub_10042E158(v8, v9, v10, v11);
  }
}

void sub_10042E0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100B512F8 != -1)
  {
    sub_10082BD88();
  }

  v8 = off_100B512F0;
  v9 = *(a1 + 16);

  sub_1003AE1F4(v8, v9, a2, a3, a4, 1);
}

void sub_10042E158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100B512F8 != -1)
  {
    sub_10082BD88();
  }

  v8 = off_100B512F0;
  v9 = *(a1 + 16);

  sub_1003AE1F4(v8, v9, a2, a3, a4, 0);
}

void sub_10042E1D0(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    if (qword_100B54350 != -1)
    {
      sub_10082BD74();
    }

    v2 = qword_100B54348;
    v3 = *(a1 + 41);
    v4 = *(a1 + 42);
    v5 = *(a1 + 32);
    v6 = *(a1 + 36);

    sub_10042E280(v2, v5, v3, v4, v6);
  }

  else
  {
    if (qword_100B54360 != -1)
    {
      sub_10082BD60();
    }

    v7 = qword_100B54358;
    v8 = *(a1 + 41);
    v9 = *(a1 + 42);
    v10 = *(a1 + 32);
    v11 = *(a1 + 36);

    sub_10042E308(v7, v10, v8, v9, v11);
  }
}

void sub_10042E280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_100B512F8 != -1)
  {
    sub_10082BD88();
  }

  v10 = off_100B512F0;
  v11 = *(a1 + 16);

  sub_1003AE310(v10, v11, a2, a3, a4, a5, 1);
}

void sub_10042E308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_100B512F8 != -1)
  {
    sub_10082BD88();
  }

  v10 = off_100B512F0;
  v11 = *(a1 + 16);

  sub_1003AE310(v10, v11, a2, a3, a4, a5, 0);
}

uint64_t sub_10042E390(uint64_t a1)
{
  *a1 = &off_100AF58F0;
  if (qword_100B6D7A0 != -1)
  {
    sub_10082BD9C();
  }

  *a1 = off_100AF5978;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v3 = 0;
  sub_1000216B4(&v3);
  sub_1002D331C(off_100AF58C8);
  sub_10002249C(&v3);
  return a1;
}

uint64_t sub_10042E44C(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 8) = 1;
  return result;
}

void sub_10042E45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B512F8 != -1)
  {
    sub_10082BD88();
  }

  v6 = off_100B512F0;
  v7 = *(a1 + 16);

  sub_1003AE0B8(v6, v7, a2, a3);
}

void sub_10042E4C8(uint64_t a1)
{
  if (qword_100B54350 != -1)
  {
    sub_10082BD74();
  }

  v2 = qword_100B54348;
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);

  sub_10042E45C(v2, v3, v4);
}

void sub_10042E520(uint64_t a1, int a2, unsigned int a3)
{
  if (qword_100B512F8 != -1)
  {
    sub_10082BD88();
  }

  v6 = off_100B512F0;
  v7 = *(a1 + 16);

  sub_1003AE164(v6, v7, a2, a3);
}

void sub_10042E58C(uint64_t a1)
{
  if (qword_100B54350 != -1)
  {
    sub_10082BD74();
  }

  v2 = qword_100B54348;
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);

  sub_10042E520(v2, v3, v4);
}

void sub_10042E5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) == 1 && *(a1 + 16) == a2)
  {
    v32 = 0uLL;
    *&v33 = 0;
    v34[0] = 0;
    v34[1] = 0;
    v35 = 0;
    *(&v32 + 4) = vrev64_s32(*a3);
    HIDWORD(v10) = *(a3 + 8);
    LODWORD(v10) = HIDWORD(v10);
    *&v33 = (v10 >> 16);
    LOBYTE(v32) = *(a3 + 12);
    WORD6(v32) = *(a3 + 13);
    BYTE14(v32) = *(a3 + 15);
    BYTE4(v33) = *(a3 + 16);
    if (BYTE4(v33))
    {
      v11 = 0;
      v12 = *(a3 + 24);
      v13 = 10 * BYTE4(v33);
      do
      {
        v14 = v34 + v11;
        *(v14 + 2) = *(v12 + v11);
        *v14 = *(v12 + v11 + 4);
        *(v14 + 6) = *(v12 + v11 + 5);
        v11 += 10;
      }

      while (v13 != v11);
    }

    *(&v33 + 1) = v34;
    v31 = 0;
    sub_1000216B4(&v31);
    v22 = sub_100217B20(&v32, v15, v16, v17, v18, v19, v20, v21);
    v23 = sub_100022214(&v31);
    if (v22)
    {
      v25 = sub_100007EE8(v23, v24);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10042E818;
      v27[3] = &unk_100AF59B0;
      v30 = v22;
      v28 = v32;
      v29 = v33;
      sub_10000CA94(v25, v27);
    }

    sub_10002249C(&v31);
  }

  else
  {
    v5 = qword_100BCEA50;
    v6 = os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      sub_10082BDB0(a2, v5, v8);
    }

    v9 = sub_100007EE8(v6, v7);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10042E870;
    v26[3] = &unk_100ADF8F8;
    v26[4] = a3;
    sub_10000CA94(v9, v26);
  }
}

void sub_10042E818(uint64_t a1)
{
  if (qword_100B54350 != -1)
  {
    sub_10082BD74();
  }

  v2 = qword_100B54348;
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);

  sub_10042E45C(v2, v3, v4);
}

void sub_10042E870(uint64_t a1)
{
  if (qword_100B54350 != -1)
  {
    sub_10082BD74();
  }

  v2 = qword_100B54348;
  v3 = *(*(a1 + 32) + 12);

  sub_10042E45C(v2, 101, v3);
}

void sub_10042E8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) == 1 && *(a1 + 16) == a2)
  {
    v19 = 0;
    sub_1000216B4(&v19);
    v10 = sub_10021819C(a3);
    v11 = sub_100022214(&v19);
    if (v10)
    {
      v13 = sub_100007EE8(v11, v12);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10042EA34;
      v16[3] = &unk_100AF5990;
      v17 = v10;
      v18 = a3;
      sub_10000CA94(v13, v16);
    }

    sub_10002249C(&v19);
  }

  else
  {
    v5 = qword_100BCEA50;
    v6 = os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      sub_10082BE4C(a2, v5, v8);
    }

    v9 = sub_100007EE8(v6, v7);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10042EA8C;
    v14[3] = &unk_100AF3580;
    v15 = a3;
    sub_10000CA94(v9, v14);
  }
}

void sub_10042EA34(uint64_t a1)
{
  if (qword_100B54350 != -1)
  {
    sub_10082BD74();
  }

  v2 = qword_100B54348;
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);

  sub_10042E520(v2, v3, v4);
}

void sub_10042EA8C(uint64_t a1)
{
  if (qword_100B54350 != -1)
  {
    sub_10082BD74();
  }

  v2 = qword_100B54348;
  v3 = *(a1 + 32);

  sub_10042E520(v2, 101, v3);
}

void sub_10042EAE4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (*(a1 + 8) == 1 && *(a1 + 16) == a2)
  {
    v10 = a3[32];
    v29 = 0;
    v30 = 0;
    v28 = 0;
    sub_1000216B4(&v28);
    v15 = *(a3 + 3);
    if (v10 <= 2 && v15 != 0)
    {
      v17 = &v29;
      v18 = &v30;
      do
      {
        *v17 = *(v15 + 16);
        *(v27 + 3) = 0;
        v27[0] = 0;
        v19 = sub_10009A66C(v15[3]);
        v27[0] = v19;
        BYTE2(v27[1]) = BYTE6(v19);
        LOWORD(v27[1]) = WORD2(v19);
        *v18 = sub_1002558C0(v27);
        v18 = (v18 + 4);
        v15 = *v15;
        v17 = (v17 + 1);
      }

      while (v15);
    }

    v20 = sub_1002D3414(*a3, v10, &v29, &v30, v11, v12, v13, v14);
    v21 = sub_100022214(&v28);
    if (v20)
    {
      v23 = sub_100007EE8(v21, v22);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10042ECFC;
      v25[3] = &unk_100ADF940;
      v26 = v20;
      v25[4] = a3;
      sub_10000CA94(v23, v25);
    }

    sub_10002249C(&v28);
  }

  else
  {
    v5 = qword_100BCEA50;
    v6 = os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      sub_10082BEE8(a2, v5, v8);
    }

    v9 = sub_100007EE8(v6, v7);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10042ED5C;
    v24[3] = &unk_100ADF8F8;
    v24[4] = a3;
    sub_10000CA94(v9, v24);
  }
}

void sub_10042ECFC(uint64_t a1)
{
  if (qword_100B54350 != -1)
  {
    sub_10082BD74();
  }

  v2 = qword_100B54348;
  v3 = *(a1 + 40);
  v4 = **(a1 + 32);

  sub_10042E0E0(v2, v3, v4, 0);
}

void sub_10042ED5C(uint64_t a1)
{
  if (qword_100B54350 != -1)
  {
    sub_10082BD74();
  }

  v2 = qword_100B54348;
  v3 = **(a1 + 32);

  sub_10042E0E0(v2, 101, v3, 0);
}

void sub_10042EDBC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (*(a1 + 8) == 1 && *(a1 + 16) == a2)
  {
    v23 = 0;
    sub_1000216B4(&v23);
    v12 = sub_1002D3524();
    v13 = sub_100022214(&v23);
    if (v12)
    {
      v15 = sub_100007EE8(v13, v14);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10042EF38;
      v19[3] = &unk_100AE0ED8;
      v20 = v12;
      v21 = a3;
      v22 = a4;
      sub_10000CA94(v15, v19);
    }

    sub_10002249C(&v23);
  }

  else
  {
    v7 = qword_100BCEA50;
    v8 = os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      sub_10082BF84(a2, v7, v10);
    }

    v11 = sub_100007EE8(v8, v9);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10042EF98;
    v16[3] = &unk_100AF59D0;
    v17 = a3;
    v18 = a4;
    sub_10000CA94(v11, v16);
  }
}

void sub_10042EF38(uint64_t a1)
{
  if (qword_100B54350 != -1)
  {
    sub_10082BD74();
  }

  v2 = qword_100B54348;
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = *(a1 + 37);

  sub_10042E280(v2, v3, v4, v5, v3);
}

void sub_10042EF98(uint64_t a1)
{
  if (qword_100B54350 != -1)
  {
    sub_10082BD74();
  }

  v2 = qword_100B54348;
  v3 = *(a1 + 32);
  v4 = *(a1 + 33);

  sub_10042E280(v2, 101, v3, v4, 101);
}

uint64_t sub_10042EFF8(uint64_t a1)
{
  *a1 = &off_100AF58F0;
  if (qword_100B6D7A0 != -1)
  {
    sub_10082BD9C();
  }

  *a1 = &off_100AF5A00;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v3 = 0;
  sub_1000216B4(&v3);
  sub_1002D3398(&off_100AF58D8);
  sub_10002249C(&v3);
  return a1;
}

uint64_t sub_10042F0B4(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 8) = 1;
  return result;
}

_BYTE *sub_10042F0C4(_BYTE *result, uint64_t a2, int a3, int a4, int a5)
{
  if (result[8] == 1 && *(result + 2) == a2)
  {
    v8 = 0;
    sub_1000216B4(&v8);
    sub_1002D34A8(a3, a4, a5);
    return sub_10002249C(&v8);
  }

  return result;
}

void sub_10042F154(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (*(a1 + 8) == 1 && *(a1 + 16) == a2)
  {
    v23 = 0;
    sub_1000216B4(&v23);
    v12 = sub_1002D3524();
    v13 = sub_100022214(&v23);
    if (v12)
    {
      v15 = sub_100007EE8(v13, v14);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10042F2D0;
      v19[3] = &unk_100AE0ED8;
      v20 = v12;
      v21 = a3;
      v22 = a4;
      sub_10000CA94(v15, v19);
    }

    sub_10002249C(&v23);
  }

  else
  {
    v7 = qword_100BCEA50;
    v8 = os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      sub_10082C020(a2, v7, v10);
    }

    v11 = sub_100007EE8(v8, v9);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10042F330;
    v16[3] = &unk_100AF59D0;
    v17 = a3;
    v18 = a4;
    sub_10000CA94(v11, v16);
  }
}

void sub_10042F2D0(uint64_t a1)
{
  if (qword_100B54360 != -1)
  {
    sub_10082BD60();
  }

  v2 = qword_100B54358;
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = *(a1 + 37);

  sub_10042E308(v2, v3, v4, v5, v3);
}

void sub_10042F330(uint64_t a1)
{
  if (qword_100B54360 != -1)
  {
    sub_10082BD60();
  }

  v2 = qword_100B54358;
  v3 = *(a1 + 32);
  v4 = *(a1 + 33);

  sub_10042E308(v2, 101, v3, v4, 101);
}

void sub_10042F390(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v9 = v7;
  if (qword_100B512F8 == -1)
  {
    v8 = v7;
  }

  else
  {
    sub_10082BD88();
    v8 = v9;
  }

  sub_1003AE438(off_100B512F0, *(a1 + 16), v8, a3, a4);
}

_BYTE *sub_10042F430(uint64_t a1)
{
  v11 = 0;
  sub_1000216B4(&v11);
  v2 = sub_100255A20(**(a1 + 32));
  sub_100022214(&v11);
  if (v2 && (v3 = (v2[1] << 40) | (v2[2] << 32) | (v2[3] << 24) | (v2[4] << 16) | (v2[5] << 8) | v2[6] | (*v2 << 48)) != 0)
  {
    v12[0] = 0;
    v12[1] = 0;
    if (qword_100B508D0 != -1)
    {
      sub_10082C0BC();
    }

    sub_1000498D4(off_100B508C8, v3, 0, 1u, 0, 0, v12);
    v4 = *(a1 + 32);
    v5 = *(v4 + 10);
    v6 = *(v4 + 11);
    if (qword_100B54360 != -1)
    {
      sub_10082C0E4();
    }

    v7 = qword_100B54358;
    v8 = sub_10004DF60(v12);
    sub_10042F390(v7, v8, v5, v6);
  }

  else
  {
    v9 = qword_100BCEA50;
    if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR))
    {
      sub_10082C10C(v9);
    }
  }

  return sub_10002249C(&v11);
}

uint64_t sub_10042F784(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_100018384(a1, va);
}

void sub_10042F7E4(id *a1)
{
  sub_10042F79C(a1);

  operator delete();
}

void sub_10042F81C(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "HciTransportOpen";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v13, 0xCu);
  }

  *(a1 + 8) = *a2;
  v5 = objc_retainBlock(*(a2 + 16));
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;

  v7 = objc_retainBlock(*(a2 + 48));
  v8 = *(a1 + 24);
  *(a1 + 24) = v7;

  v9 = objc_retainBlock(*(a2 + 56));
  v10 = *(a1 + 32);
  *(a1 + 32) = v9;

  v11 = objc_retainBlock(*(a2 + 64));
  v12 = *(a1 + 40);
  *(a1 + 40) = v11;
}

void sub_10042F92C(void *a1)
{
  v2 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "HciTransportClose";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v3 = a1[2];
  a1[2] = 0;

  v4 = a1[3];
  a1[3] = 0;

  v5 = a1[4];
  a1[4] = 0;

  v6 = a1[5];
  a1[5] = 0;
}

uint64_t sub_10042FA10(uint64_t a1)
{
  pthread_mutex_init(a1, 0);
  result = pthread_cond_init((a1 + 64), 0);
  *(a1 + 12336) = 0;
  *(a1 + 12341) = 0;
  return result;
}

uint64_t sub_10042FA54(uint64_t a1)
{
  pthread_mutex_init(a1, 0);
  pthread_cond_init((a1 + 64), 0);
  *(a1 + 12336) = 0;
  *(a1 + 12341) = 0;
  return a1;
}

uint64_t sub_10042FA9C(uint64_t a1)
{
  pthread_cond_destroy((a1 + 64));
  pthread_mutex_destroy(a1);
  return a1;
}

uint64_t sub_10042FAD0(uint64_t a1)
{
  pthread_mutex_lock(a1);
  *(a1 + 12348) = 1;
  pthread_cond_signal((a1 + 64));

  return pthread_mutex_unlock(a1);
}

uint64_t sub_10042FB1C(uint64_t a1)
{
  pthread_mutex_lock(a1);
  while (*(a1 + 12344) == 8)
  {
    if (*(a1 + 12348))
    {
      break;
    }

    pthread_cond_wait((a1 + 64), a1);
  }

  if (*(a1 + 12348))
  {
    v2 = 0;
  }

  else
  {
    v2 = a1 + 1528 * *(a1 + 12340) + 112;
  }

  pthread_mutex_unlock(a1);
  return v2;
}

uint64_t sub_10042FBA0(uint64_t a1, void *a2)
{
  pthread_mutex_lock(a1);
  while (!*(a1 + 12344))
  {
    if (*(a1 + 12348))
    {
      break;
    }

    pthread_cond_wait((a1 + 64), a1);
  }

  if (*(a1 + 12348))
  {
    v4 = 0;
  }

  else
  {
    v5 = a1 + 1528 * *(a1 + 12336);
    v4 = v5 + 112;
    *a2 = *(v5 + 1632);
  }

  pthread_mutex_unlock(a1);
  return v4;
}

uint64_t sub_10042FC30(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(a1);
  v4 = *(a1 + 12340);
  *(a1 + 1528 * v4 + 1632) = a2;
  *(a1 + 12340) = (v4 + 1) & 7;
  v5 = *(a1 + 12344);
  *(a1 + 12344) = v5 + 1;
  if (!v5)
  {
    pthread_cond_signal((a1 + 64));
  }

  return pthread_mutex_unlock(a1);
}

uint64_t sub_10042FCA0(uint64_t a1)
{
  pthread_mutex_lock(a1);
  *(a1 + 12336) = (*(a1 + 12336) + 1) & 7;
  v2 = *(a1 + 12344);
  *(a1 + 12344) = v2 - 1;
  if (v2 == 8)
  {
    pthread_cond_signal((a1 + 64));
  }

  return pthread_mutex_unlock(a1);
}

uint64_t sub_10042FE9C(uint64_t a1, uint64_t a2)
{
  if (qword_100B6D7E0 != -1)
  {
    sub_10082C18C();
  }

  return qword_100B6D7D8;
}

void sub_10043000C(id a1)
{
  v1 = getenv("BT_CHIP");
  if (v1 && !strcmp(v1, "ACI BT"))
  {
    operator new();
  }

  bzero(__str, 0x400uLL);
  v9 = 1024;
  v2 = sysctlbyname("kern.bootargs", __str, &v9, 0, 0);
  if (!v2)
  {
    v2 = strtok(__str, " ");
    if (v2)
    {
      v5 = v2;
      do
      {
        if (strstr(v5, "bt_pcie_srs"))
        {
          v6 = strchr(v5, 61);
          if (strtol(v6 + 1, 0, 10) == 1)
          {
            operator new();
          }
        }

        v2 = strtok(0, " ");
        v5 = v2;
      }

      while (v2);
    }
  }

  if (sub_10009B9DC(v2, v3) == 9)
  {
    operator new();
  }

  v4 = sub_100017E6C();
  if ((*(*v4 + 280))(v4))
  {
    operator new();
  }

  if (!qword_100B6D808)
  {
    v33 = 1046806126;
    buf = xmmword_1008A6BD0;
    v30 = xmmword_1008A6BE4;
    v31 = -188760945;
    v28 = xmmword_1008A6BF8;
    v29 = -2114570942;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -1639077591;
    buf = xmmword_1008A6C0C;
    v30 = xmmword_1008A6C20;
    v31 = 338555555;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 1032708406;
    buf = xmmword_1008A6C34;
    v30 = xmmword_1008A6C48;
    v31 = 729903963;
    v28 = xmmword_1008A6C5C;
    v29 = 1275676051;
    v26 = xmmword_1008A6C70;
    v27 = 1908474541;
    v25 = 1839812531;
    v24 = xmmword_1008A6C84;
    v23 = -1403227947;
    v22 = xmmword_1008A6C98;
    v21 = 729118884;
    v20 = xmmword_1008A6CAC;
    v19 = -489993439;
    v18 = xmmword_1008A6CC0;
    v17 = 886875686;
    v16 = xmmword_1008A6CD4;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -1527788847;
    buf = xmmword_1008A6CE8;
    v30 = xmmword_1008A6CFC;
    v31 = 1532898719;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -350584140;
    buf = xmmword_1008A6D10;
    v30 = xmmword_1008A6D24;
    v31 = -1418383976;
    v28 = xmmword_1008A6D38;
    v29 = 368778837;
    v26 = xmmword_1008A6D4C;
    v27 = -1213485500;
    v25 = -1022451852;
    v24 = xmmword_1008A6D60;
    v23 = 1729782187;
    v22 = xmmword_1008A6D74;
    v21 = 996646949;
    v20 = xmmword_1008A6D88;
    v19 = -563086000;
    v18 = xmmword_1008A6D9C;
    v17 = -199226823;
    v16 = xmmword_1008A6DB0;
    v15 = -1283070668;
    v14 = xmmword_1008A6DC4;
    v13 = 1412427398;
    v12 = xmmword_1008A6DD8;
    v11 = 160260070;
    v10 = xmmword_1008A6DEC;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 317289457;
    buf = xmmword_1008A6E00;
    v30 = xmmword_1008A6E14;
    v31 = 401945557;
    v28 = xmmword_1008A6E28;
    v29 = -1157300313;
    v26 = xmmword_1008A6E3C;
    v27 = -2132668294;
    v25 = 372777383;
    v24 = xmmword_1008A6E50;
    v23 = -858079590;
    v22 = xmmword_1008A6E64;
    v21 = -212523443;
    v20 = xmmword_1008A6E78;
    v19 = 646100384;
    v18 = xmmword_1008A6E8C;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 289690957;
    buf = xmmword_1008A6EA0;
    v30 = xmmword_1008A6EB4;
    v31 = 586720268;
    v28 = xmmword_1008A6EC8;
    v29 = -414334491;
    v26 = xmmword_1008A6EDC;
    v27 = -1509831889;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 414393924;
    buf = xmmword_1008A6EF0;
    v30 = xmmword_1008A6F04;
    v31 = 897736383;
    v28 = xmmword_1008A6F18;
    v29 = -996295886;
    v26 = xmmword_1008A6F2C;
    v27 = -453987047;
    v25 = -337121064;
    v24 = xmmword_1008A6F40;
    v23 = 450980336;
    v22 = xmmword_1008A6F54;
    v21 = -1843102369;
    v20 = xmmword_1008A6F68;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -232427879;
    buf = xmmword_1008A6F7C;
    v30 = xmmword_1008A6F90;
    v31 = -427474227;
    v28 = xmmword_1008A6FA4;
    v29 = 1477534141;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 2030516999;
    buf = xmmword_1008A6FB8;
    v30 = xmmword_1008A6FCC;
    v31 = -762483149;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -1276010597;
    buf = xmmword_1008A6FE0;
    v30 = xmmword_1008A6FF4;
    v31 = -1926937532;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -1902732724;
    buf = xmmword_1008A7008;
    v30 = xmmword_1008A701C;
    v31 = 300442574;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -342357580;
    buf = xmmword_1008A7030;
    v30 = xmmword_1008A7044;
    v31 = -1294188889;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -820493242;
    buf = xmmword_1008A7058;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -61007701;
    buf = xmmword_1008A706C;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -235416490;
    buf = xmmword_1008A7080;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -121925081;
    buf = xmmword_1008A7094;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 1126727276;
    buf = xmmword_1008A70A8;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 300130091;
    buf = xmmword_1008A70BC;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 343814884;
    buf = xmmword_1008A70D0;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -1675932945;
    buf = xmmword_1008A70E4;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 1278131292;
    buf = xmmword_1008A70F8;
    v30 = xmmword_1008A710C;
    v31 = -1841712216;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 659506830;
    buf = xmmword_1008A7120;
    v30 = xmmword_1008A7134;
    v31 = 213746202;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 1071957977;
    buf = xmmword_1008A7148;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 438437663;
    buf = xmmword_1008A715C;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -382792827;
    buf = xmmword_1008A7170;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 1575123478;
    buf = xmmword_1008A7184;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 123138233;
    buf = xmmword_1008A7198;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 681511593;
    buf = xmmword_1008A71AC;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 713503427;
    buf = xmmword_1008A71C0;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -1632750650;
    buf = xmmword_1008A71D4;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -1431778695;
    buf = xmmword_1008A71E8;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 533419158;
    buf = xmmword_1008A71FC;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 1106979518;
    buf = xmmword_1008A7210;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -1820426635;
    buf = xmmword_1008A7224;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -937652876;
    buf = xmmword_1008A7238;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -609570151;
    buf = xmmword_1008A724C;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -874769875;
    buf = xmmword_1008A7260;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 169342588;
    buf = xmmword_1008A7274;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 1874287171;
    buf = xmmword_1008A7288;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -781324731;
    buf = xmmword_1008A729C;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 1223847566;
    buf = xmmword_1008A72B0;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 185580364;
    buf = xmmword_1008A72C4;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 1214880059;
    buf = xmmword_1008A72D8;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 426359977;
    buf = xmmword_1008A72EC;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 345196535;
    buf = xmmword_1008A7300;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 440949464;
    buf = xmmword_1008A7314;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -695298128;
    buf = xmmword_1008A7328;
    v30 = xmmword_1008A733C;
    v31 = 1614584579;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 804488105;
    buf = xmmword_1008A7350;
    v30 = xmmword_1008A7364;
    v31 = 324288768;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 460218192;
    buf = xmmword_1008A7378;
    v30 = xmmword_1008A738C;
    v31 = 127894440;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 2144905009;
    buf = xmmword_1008A73A0;
    v30 = xmmword_1008A73B4;
    v31 = 1070997468;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 688565114;
    buf = xmmword_1008A73C8;
    v30 = xmmword_1008A73C8;
    v31 = 688565114;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -493418906;
    buf = xmmword_1008A73DC;
    v30 = xmmword_1008A73DC;
    v31 = -493418906;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -545612308;
    buf = xmmword_1008A73F0;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 1178062702;
    buf = xmmword_1008A7404;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -773054213;
    buf = xmmword_1008A7418;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -1204420428;
    buf = xmmword_1008A742C;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 958549802;
    buf = xmmword_1008A7440;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -12497897;
    buf = xmmword_1008A7454;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 1377540371;
    buf = xmmword_1008A7468;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -518121279;
    buf = xmmword_1008A747C;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 1878025452;
    buf = xmmword_1008A7490;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 1725957070;
    buf = xmmword_1008A74A4;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 538967431;
    buf = xmmword_1008A74B8;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 2060712151;
    buf = xmmword_1008A74CC;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 802516499;
    buf = xmmword_1008A74E0;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -1919324456;
    buf = xmmword_1008A74F4;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 1127969586;
    buf = xmmword_1008A7508;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 1292009573;
    buf = xmmword_1008A751C;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -1047119348;
    buf = xmmword_1008A7530;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -1346985080;
    buf = xmmword_1008A7544;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -1243071412;
    buf = xmmword_1008A7558;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 2017356181;
    buf = xmmword_1008A756C;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 1737149739;
    buf = xmmword_1008A7580;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -1918230744;
    buf = xmmword_1008A7594;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 1899561076;
    buf = xmmword_1008A75A8;
    v30 = xmmword_1008A75BC;
    v31 = 1425254930;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -435113336;
    buf = xmmword_1008A75D0;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -1997581659;
    buf = xmmword_1008A75E4;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -1441055153;
    buf = xmmword_1008A75F8;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -2098731532;
    buf = xmmword_1008A760C;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 1156396021;
    buf = xmmword_1008A7620;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -340360463;
    buf = xmmword_1008A7634;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 1605231531;
    buf = xmmword_1008A7648;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -1231738393;
    buf = xmmword_1008A765C;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = 164967128;
    buf = xmmword_1008A7670;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -584398440;
    buf = xmmword_1008A7684;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v33 = -879476163;
    buf = xmmword_1008A7698;
    if (MGIsDeviceOneOfType())
    {
      operator new();
    }

    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = MGGetProductType();
      sub_10082C1DC(v8, &buf, v7);
    }
  }
}

uint64_t sub_100432410(uint64_t a1, uint64_t a2)
{
  if (qword_100B6D840 != -1)
  {
    sub_10082C24C();
  }

  return qword_100B6D838;
}

uint64_t sub_100432498(uint64_t a1, uint64_t a2)
{
  if (qword_100B6D850 != -1)
  {
    sub_10082C260();
  }

  return qword_100B6D848;
}

void sub_1004324D0(id a1)
{
  if (sub_1005FC878(a1, v1))
  {
    operator new();
  }
}

uint64_t sub_100432610(uint64_t a1, uint64_t a2)
{
  if (qword_100B6D880 != -1)
  {
    sub_10082C29C();
  }

  return qword_100B6D878;
}

uint64_t sub_100432718(uint64_t a1, uint64_t a2)
{
  if (qword_100B6D8A0 != -1)
  {
    sub_10082C2C4();
  }

  return qword_100B6D898;
}

uint64_t sub_1004327A0(uint64_t a1, uint64_t a2)
{
  if (qword_100B6D8B0 != -1)
  {
    sub_10082C2D8();
  }

  return qword_100B6D8A8;
}

uint64_t sub_100432918(uint64_t a1, uint64_t a2)
{
  if (qword_100B54370 != -1)
  {
    sub_10082C2EC();
  }

  return qword_100B54368;
}

id sub_100432950()
{
  if (_os_feature_enabled_impl())
  {
    if (qword_100B6D8C0 != -1)
    {
      sub_10082C300();
    }

    v0 = qword_100B6D8B8;
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void sub_1004329B8(id a1)
{
  v1 = +[SPOwnerInterface cbPeripheralManagementSession];
  v2 = qword_100B6D8B8;
  qword_100B6D8B8 = v1;
}

void *sub_1004329F8(uint64_t a1, uint64_t a2)
{
  if (qword_100B54380 != -1)
  {
    sub_10082C314();
  }

  return off_100B54378;
}

void sub_100432C48(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_10036F560(a1, 1uLL);
}

void sub_100432CC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id sub_100432CDC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  if (a3 == -1)
  {
    v11 = 0;
  }

  else
  {
    if (a3 == -2)
    {
      v5 = qword_100BCE978;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_FAULT))
      {
        sub_10082C328(v5);
      }
    }

    v6 = [CNGroup predicateForiOSLegacyIdentifier:a3];
    v13 = 0;
    v7 = [v4 groupsMatchingPredicate:v6 error:&v13];
    v8 = v13;
    if ([v7 count] == 1)
    {
      v9 = [v7 firstObject];
      v10 = [v9 identifier];
      v11 = [CNContact predicateForContactsInGroupWithIdentifier:v10];
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
      {
        sub_10082C3AC();
      }

      v11 = 0;
    }
  }

  return v11;
}

id sub_100432E94(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = a2;
  v13 = a3;
  v14 = [CNContactFetchRequest alloc];
  v15 = sub_100435F04(v14, v10, a7);
  v16 = [v14 initWithKeysToFetch:v15];

  v17 = +[NSMutableArray array];
  [v16 setPredicate:v13];
  if (v10 == 2)
  {
    [v16 setSortOrder:1];
  }

  v26 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100436128;
  v24[3] = &unk_100AF5D88;
  v18 = v17;
  v25 = v18;
  [v12 enumerateContactsWithFetchRequest:v16 error:&v26 usingBlock:v24];
  v19 = v26;
  if (v19)
  {
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10082C414();
    }

    v18 = 0;
  }

  else
  {
    sub_100435F9C(0, v18, v10);
    sub_100436070(v20, v18, v9, v8);
  }

  v21 = v25;
  v22 = v18;

  return v18;
}

void sub_1004330AC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v15 = v4;
  v6 = [[CNFavorites alloc] initWithContactStore:v4];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 entries];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) contactProperty];
        v13 = [v12 contact];

        v14 = [v5 indexOfObject:v13];
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v5 insertObject:v13 atIndex:v9];
        }

        else
        {
          if (v14 < v9)
          {
            goto LABEL_11;
          }

          [v5 exchangeObjectAtIndex:v14 withObjectAtIndex:v9];
        }

        ++v9;
LABEL_11:
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

uint64_t sub_100433334()
{
  v0 = objc_autoreleasePoolPush();
  v14 = objc_alloc_init(CNContactStore);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = [[CNFavorites alloc] initWithContactStore:v14];
  v1 = [v15 entries];
  v2 = [v1 countByEnumeratingWithState:&v16 objects:v20 count:16];
  context = v0;
  v3 = 0;
  if (v2)
  {
    v4 = *v17;
    v5 = CNActionTypeAudioCall;
    v6 = CNActionBundleIdentifierPhone;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 actionType];
        if ([v9 isEqualToString:v5])
        {
          v10 = [v8 bundleIdentifier];
          v11 = [v10 isEqualToString:v6];

          v3 = v3 + (v11 & 1);
        }

        else
        {
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v2);
  }

  objc_autoreleasePoolPop(context);
  return v3;
}

void sub_100433708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100433828()
{
  v0 = objc_autoreleasePoolPush();
  v12 = objc_alloc_init(CNContactStore);
  v1 = [[CNFavorites alloc] initWithContactStore:v12];
  v13 = [NSMutableArray array:v0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [v1 entries];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = *v15;
    v5 = CNActionTypeAudioCall;
    v6 = CNActionBundleIdentifierPhone;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 actionType];
        if ([v9 isEqualToString:v5])
        {
          v10 = [v8 bundleIdentifier];
          v11 = [v10 isEqualToString:v6];

          if (v11)
          {
            [v13 addObject:v8];
          }
        }

        else
        {
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  operator new();
}

uint64_t sub_100433B4C(unsigned int a1)
{
  v10 = 0;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  memset(&v7, 0, sizeof(v7));
  if (a1 != 1)
  {
    if (!a1)
    {
      v1 = +[Communicator myNumber];
      v2 = v1;
      if (v1)
      {
        std::string::assign(v8, [v1 UTF8String]);
      }

      else
      {
        v4 = qword_100BCE978;
        if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
        {
          sub_10082C47C(v4);
        }

        std::string::assign(v8, "**APPLE**");
      }

      *&v8[24] = 2;
      v5 = sub_100438B14(@"MY_NUMBER", @"My Number");
      std::string::assign(&v7, [v5 UTF8String]);

      operator new();
    }

    if (a1 >= 3)
    {
      v3 = qword_100BCE978;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_FAULT))
      {
        sub_10082C4C0(v3);
      }
    }
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9);
  }

  if ((v8[23] & 0x80000000) != 0)
  {
    operator delete(*v8);
  }

  return 0;
}

void sub_100433E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (*(v35 - 113) < 0)
  {
    operator delete(*(v35 - 136));
  }

  sub_1000DA6C8(v35 - 112);
  _Unwind_Resume(a1);
}

uint64_t sub_100433F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(CNContactStore);
  v7 = [CNContact predicateForLegacyIdentifier:a2];
  v8 = sub_1004340A8(v3);
  v9 = [v6 unifiedContactsMatchingPredicate:v7 keysToFetch:v8 error:0];
  if ([v9 count])
  {
    operator new();
  }

  objc_autoreleasePoolPop(v5);
  return 0;
}

id sub_1004340A8(int a1)
{
  v2 = +[NSMutableArray array];
  if ((a1 & 6) != 0)
  {
    v3 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
    [v2 addObject:v3];

    if ((a1 & 4) != 0)
    {
      [v2 addObject:CNContactPhoneticGivenNameKey];
      [v2 addObject:CNContactPhoneticFamilyNameKey];
    }
  }

  if ((a1 & 0x80) != 0)
  {
    [v2 addObject:CNContactPhoneNumbersKey];
  }

  if ((a1 & 8) != 0)
  {
    [v2 addObject:CNContactThumbnailImageDataKey];
  }

  if ((a1 & 0x20) != 0)
  {
    [v2 addObject:CNContactPostalAddressesKey];
  }

  if ((a1 & 0x100) != 0)
  {
    [v2 addObject:CNContactEmailAddressesKey];
  }

  if ((a1 & 0x1000) != 0)
  {
    [v2 addObject:CNContactJobTitleKey];
  }

  if ((a1 & 0x10000) != 0)
  {
    [v2 addObject:CNContactOrganizationNameKey];
    [v2 addObject:CNContactDepartmentNameKey];
  }

  if ((a1 & 0x100000) != 0)
  {
    [v2 addObject:CNContactUrlAddressesKey];
  }

  if ((a1 & 0x200000) != 0)
  {
    [v2 addObject:CNContactIOSLegacyIdentifierKey];
  }

  if ((a1 & 0x800000) != 0)
  {
    [v2 addObject:CNContactNicknameKey];
  }

  return v2;
}

void sub_10043425C(uint64_t a1, void *a2, int a3, int a4)
{
  v110 = a2;
  v109 = a3;
  if ((a3 & 6) == 0)
  {
    goto LABEL_44;
  }

  if ((a3 & 2) != 0)
  {
    v6 = [CNContactFormatter stringFromContact:v110 style:0];
    v7 = v6;
    if (v6)
    {
      sub_100007E30(&__str, [v6 UTF8String]);
      std::string::operator=((a1 + 16), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }
  }

  v8 = [v110 givenName];
  v9 = [v8 length];
  if (!v9)
  {
    v4 = [v110 familyName];
    if (![v4 length])
    {

      goto LABEL_20;
    }
  }

  v10 = [v110 contactType] == 1;
  if (!v9)
  {

    if (v10)
    {
      goto LABEL_20;
    }

LABEL_13:
    v11 = [v110 givenName];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
      sub_100007E30(&v168, [v12 UTF8String]);
      std::string::operator=((a1 + 64), &v168);
      if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v168.__r_.__value_.__l.__data_);
      }
    }

    v14 = [v110 familyName];
    v15 = v14;
    if (!v14)
    {
      goto LABEL_27;
    }

    v16 = v14;
    sub_100007E30(&v167, [v15 UTF8String]);
    std::string::operator=((a1 + 40), &v167);
    if ((SHIBYTE(v167.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    v17 = &v167;
    goto LABEL_26;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_20:
  v15 = [v110 organizationName];
  if (!v15)
  {
    goto LABEL_27;
  }

  v18 = +[CNContactsUserDefaults sharedDefaults];
  v19 = [v18 sortOrder] == 2;

  v20 = v15;
  if (v19)
  {
    sub_100007E30(&v170, [v15 UTF8String]);
    std::string::operator=((a1 + 64), &v170);
    if ((SHIBYTE(v170.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    v17 = &v170;
  }

  else
  {
    sub_100007E30(&v169, [v15 UTF8String]);
    std::string::operator=((a1 + 40), &v169);
    if ((SHIBYTE(v169.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    v17 = &v169;
  }

LABEL_26:
  operator delete(v17->__r_.__value_.__l.__data_);
LABEL_27:

  v21 = [v110 middleName];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
    sub_100007E30(&v166, [v22 UTF8String]);
    std::string::operator=((a1 + 88), &v166);
    if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v166.__r_.__value_.__l.__data_);
    }
  }

  v24 = [v110 namePrefix];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
    sub_100007E30(&v165, [v25 UTF8String]);
    std::string::operator=((a1 + 112), &v165);
    if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v165.__r_.__value_.__l.__data_);
    }
  }

  v27 = [v110 nameSuffix];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
    sub_100007E30(&v164, [v28 UTF8String]);
    std::string::operator=((a1 + 136), &v164);
    if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v164.__r_.__value_.__l.__data_);
    }
  }

  if ((a3 & 4) != 0)
  {
    v30 = [v110 phoneticFamilyName];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
      sub_100007E30(&v163, [v31 UTF8String]);
      std::string::operator=((a1 + 160), &v163);
      if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v163.__r_.__value_.__l.__data_);
      }
    }

    v33 = [v110 phoneticGivenName];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
      sub_100007E30(&v162, [v34 UTF8String]);
      std::string::operator=((a1 + 184), &v162);
      if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v162.__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_44:
  if ((a3 & 0x80) != 0)
  {
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    obj = [v110 phoneNumbers];
    v36 = [obj countByEnumeratingWithState:&v158 objects:v175 count:16];
    if (v36)
    {
      v37 = *v159;
      do
      {
        for (i = 0; i != v36; i = i + 1)
        {
          if (*v159 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v158 + 1) + 8 * i);
          *&v143 = 0;
          v141 = 0u;
          v142 = 0u;
          v140 = 0u;
          v40 = [v39 value];
          v41 = [v40 stringValue];
          v42 = sub_100436134(v41);

          v43 = v42;
          std::string::assign(&v140, [v42 UTF8String]);
          v44 = [v39 label];
          v45 = v44;
          if (v44)
          {
            DWORD2(v141) = sub_100436374(v44);
            if (a4)
            {
              v46 = [CNLabeledValue localizedStringForLabel:v45];
              v47 = v46;
              std::string::assign(&v142, [v46 UTF8String]);
            }
          }

          if (SBYTE7(v141) < 0)
          {
            sub_100008904(&__dst, v140, *(&v140 + 1));
          }

          else
          {
            __dst = v140;
            v154 = v141;
          }

          v155 = DWORD2(v141);
          if (SBYTE7(v143) < 0)
          {
            sub_100008904(&__p, v142, *(&v142 + 1));
          }

          else
          {
            __p = v142;
            v157 = v143;
          }

          sub_100437C00((a1 + 232), &__dst);
          if (SHIBYTE(v157) < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v154) < 0)
          {
            operator delete(__dst);
          }

          if (SBYTE7(v143) < 0)
          {
            operator delete(v142);
          }

          if (SBYTE7(v141) < 0)
          {
            operator delete(v140);
          }
        }

        v36 = [obj countByEnumeratingWithState:&v158 objects:v175 count:16];
      }

      while (v36);
    }

    LOBYTE(a3) = v109;
  }

  if ((a3 & 8) != 0)
  {
    v48 = [v110 thumbnailImageData];
    v49 = v48 == 0;

    if (!v49)
    {
      v50 = [v110 thumbnailImageData];
      v51 = sub_1004364A0(v50);

      if (v51)
      {
        v52 = [v51 base64EncodedStringWithOptions:0];
        v53 = v52;
        sub_100007E30(&v152, [v52 UTF8String]);
        std::string::operator=((a1 + 208), &v152);
        if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v152.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v54 = v109;
  if ((v109 & 0x20) != 0)
  {
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v55 = [v110 postalAddresses];
    v56 = [v55 countByEnumeratingWithState:&v148 objects:v174 count:16];
    if (v56)
    {
      v57 = *v149;
      do
      {
        for (j = 0; j != v56; j = j + 1)
        {
          if (*v149 != v57)
          {
            objc_enumerationMutation(v55);
          }

          v59 = *(*(&v148 + 1) + 8 * j);
          v146 = 0u;
          v147 = 0u;
          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          v60 = [v59 value];
          v61 = [v60 street];

          if (v61)
          {
            v62 = v61;
            std::string::assign(&v140, [v61 UTF8String]);
          }

          v63 = [v59 value];
          v64 = [v63 city];

          if (v64)
          {
            v65 = v64;
            std::string::assign((&v141 + 8), [v64 UTF8String]);
          }

          v66 = [v59 value];
          v67 = [v66 state];

          if (v67)
          {
            v68 = v67;
            std::string::assign(&v143, [v67 UTF8String]);
          }

          v69 = [v59 value];
          v70 = [v69 postalCode];

          if (v70)
          {
            v71 = v70;
            std::string::assign((&v144 + 8), [v70 UTF8String]);
          }

          v72 = [v59 value];
          v73 = [v72 country];

          if (v73)
          {
            v74 = v73;
            std::string::assign(&v146, [v73 UTF8String]);
          }

          v75 = [v59 label];
          v76 = v75;
          if (v75)
          {
            DWORD2(v147) = sub_100436374(v75);
          }

          sub_100438398(v130, &v140);
          v77 = *(a1 + 264);
          if (v77 >= *(a1 + 272))
          {
            v78 = sub_100438078((a1 + 256), v130);
            v79 = a1;
          }

          else
          {
            sub_100438398(*(a1 + 264), v130);
            v78 = v77 + 128;
            v79 = a1;
            *(a1 + 264) = v77 + 128;
          }

          *(v79 + 264) = v78;
          if (v139 < 0)
          {
            operator delete(v138);
          }

          if (v137 < 0)
          {
            operator delete(v136);
          }

          if (v135 < 0)
          {
            operator delete(v134);
          }

          if (v133 < 0)
          {
            operator delete(v132);
          }

          if (v131 < 0)
          {
            operator delete(v130[0]);
          }

          if (SBYTE7(v147) < 0)
          {
            operator delete(v146);
          }

          if (SHIBYTE(v145) < 0)
          {
            operator delete(*(&v144 + 1));
          }

          if (SBYTE7(v144) < 0)
          {
            operator delete(v143);
          }

          if (SHIBYTE(v142) < 0)
          {
            operator delete(*(&v141 + 1));
          }

          if (SBYTE7(v141) < 0)
          {
            operator delete(v140);
          }
        }

        v56 = [v55 countByEnumeratingWithState:&v148 objects:v174 count:16];
      }

      while (v56);
    }

    v54 = v109;
  }

  if ((v54 & 0x100) != 0)
  {
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v80 = [v110 emailAddresses];
    v81 = [v80 countByEnumeratingWithState:&v126 objects:v173 count:16];
    if (v81)
    {
      v82 = *v127;
      do
      {
        for (k = 0; k != v81; k = k + 1)
        {
          if (*v127 != v82)
          {
            objc_enumerationMutation(v80);
          }

          v84 = *(*(&v126 + 1) + 8 * k);
          v140 = 0uLL;
          *&v141 = 0;
          v85 = [v84 value];
          v86 = v85;
          if (v85)
          {
            v87 = v85;
            std::string::assign(&v140, [v86 UTF8String]);
          }

          if (SBYTE7(v141) < 0)
          {
            sub_100008904(&v124, v140, *(&v140 + 1));
          }

          else
          {
            v124 = v140;
            v125 = v141;
          }

          sub_1004384F4((a1 + 280), &v124);
          if (SHIBYTE(v125) < 0)
          {
            operator delete(v124);
          }

          if (SBYTE7(v141) < 0)
          {
            operator delete(v140);
          }
        }

        v81 = [v80 countByEnumeratingWithState:&v126 objects:v173 count:16];
      }

      while (v81);
    }

    v54 = v109;
  }

  if ((v54 & 0x1000) != 0)
  {
    v88 = [v110 jobTitle];
    v89 = v88;
    if (v88)
    {
      v90 = v88;
      sub_100007E30(&v123, [v89 UTF8String]);
      std::string::operator=((a1 + 304), &v123);
      if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v123.__r_.__value_.__l.__data_);
      }
    }
  }

  if ((v109 & 0x10000) != 0)
  {
    v91 = [v110 organizationName];
    v92 = v91;
    if (v91)
    {
      v93 = v91;
      sub_100007E30(&v122, [v92 UTF8String]);
      std::string::operator=((a1 + 328), &v122);
      if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v122.__r_.__value_.__l.__data_);
      }
    }

    v94 = [v110 departmentName];
    v95 = v94;
    if (v94)
    {
      v96 = v94;
      sub_100007E30(&v121, [v95 UTF8String]);
      std::string::operator=((a1 + 352), &v121);
      if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v121.__r_.__value_.__l.__data_);
      }
    }
  }

  v97 = v109;
  if ((v109 & 0x100000) != 0)
  {
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v98 = [v110 urlAddresses];
    v99 = [v98 countByEnumeratingWithState:&v117 objects:v172 count:16];
    if (v99)
    {
      v100 = *v118;
      do
      {
        for (m = 0; m != v99; m = m + 1)
        {
          if (*v118 != v100)
          {
            objc_enumerationMutation(v98);
          }

          v102 = *(*(&v117 + 1) + 8 * m);
          v140 = 0uLL;
          *&v141 = 0;
          v103 = [v102 value];
          v104 = v103;
          if (v103)
          {
            v105 = v103;
            std::string::assign(&v140, [v104 UTF8String]);
          }

          if (SBYTE7(v141) < 0)
          {
            sub_100008904(v115, v140, *(&v140 + 1));
          }

          else
          {
            *v115 = v140;
            v116 = v141;
          }

          sub_100438758((a1 + 376), v115);
          if (SHIBYTE(v116) < 0)
          {
            operator delete(v115[0]);
          }

          if (SBYTE7(v141) < 0)
          {
            operator delete(v140);
          }
        }

        v99 = [v98 countByEnumeratingWithState:&v117 objects:v172 count:16];
      }

      while (v99);
    }

    v97 = v109;
  }

  if ((v97 & 0x200000) != 0)
  {
    *(a1 + 8) = [v110 iOSLegacyIdentifier] + 2;
  }

  if ((v109 & 0x800000) != 0)
  {
    v106 = [v110 nickname];
    v107 = v106;
    if (v106)
    {
      v108 = v106;
      sub_100007E30(&v114, [v107 UTF8String]);
      std::string::operator=((a1 + 400), &v114);
      if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v114.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_100435054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(STACK[0x3E0]);
  }

  _Unwind_Resume(a1);
}

void *sub_100435524(uint64_t a1, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = (*(*a1 + 72))(a1, a2 - 2);
  }

  else
  {
    v2 = sub_100433B4C(a2);
  }

  if (v2)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_1004355F8(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_autoreleasePoolPush();
  v11 = objc_alloc_init(CNContactStore);
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v12 = [NSString stringWithUTF8String:a2];
  v13 = [CNContact predicateForContactsMatchingName:v12];

  sub_100432E94(a1, v11, v13, a3, a4, a5, 0);
  if (objc_claimAutoreleasedReturnValue())
  {
    operator new();
  }

  objc_autoreleasePoolPop(v10);
  return 0;
}

uint64_t sub_1004357A0(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_autoreleasePoolPush();
  v11 = objc_alloc_init(CNContactStore);
  v12 = [CNPhoneNumber alloc];
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v13 = [NSString stringWithUTF8String:a2];
  v14 = [v12 initWithStringValue:v13];

  v15 = [CNContact predicateForContactsMatchingPhoneNumber:v14];
  sub_100432E94(a1, v11, v15, a3, a4, a5, 0);
  if (objc_claimAutoreleasedReturnValue())
  {
    operator new();
  }

  objc_autoreleasePoolPop(v10);
  return 0;
}

uint64_t sub_100435974(uint64_t a1, unsigned int a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(CNContactStore);
  v5 = [[CNFavorites alloc] initWithContactStore:v4];
  v6 = [v5 entries];
  v7 = [v6 count];

  if (v7 > a2)
  {
    v8 = [v5 entries];
    v9 = [v8 objectAtIndexedSubscript:a2];

    v10 = [v9 actionType];
    if ([v10 isEqualToString:CNActionTypeAudioCall])
    {
      v11 = [v9 bundleIdentifier];
      v12 = [v11 isEqualToString:CNActionBundleIdentifierPhone];

      if (v12)
      {
        operator new();
      }
    }

    else
    {
    }
  }

  objc_autoreleasePoolPop(v3);
  return 0;
}

void sub_100435BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000DA6C8(&a20);
  _Unwind_Resume(a1);
}

void sub_100435CA4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(CNContactStore);
  v19[0] = CNContactNicknameKey;
  v19[1] = CNContactGivenNameKey;
  v4 = [NSArray arrayWithObjects:v19 count:2];
  v5 = objc_alloc_init(NSString);
  v18 = 0;
  v6 = [v3 _ios_meContactWithKeysToFetch:v4 error:&v18];
  v7 = v18;
  if (!v7)
  {
    v9 = [v6 nickname];
    v10 = [v9 length] == 0;

    if (v10)
    {
      v12 = [v6 givenName];
      v13 = [v12 length] == 0;

      if (v13)
      {
LABEL_9:
        v15 = v5;
        sub_100007E30(&v16, [v5 UTF8String]);
        *a1 = v16;
        a1[2] = v17;
        goto LABEL_10;
      }

      v11 = [v6 givenName];
    }

    else
    {
      v11 = [v6 nickname];
    }

    v14 = v11;

    v5 = v14;
    goto LABEL_9;
  }

  v8 = qword_100BCE978;
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
  {
    sub_10082C544(v7, v8);
  }

LABEL_10:

  objc_autoreleasePoolPop(v2);
}

void sub_100435E90(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

id sub_100435F04(uint64_t a1, int a2, int a3)
{
  v5 = +[NSMutableArray array];
  v6 = v5;
  if (a2 == 1)
  {
    [v5 addObject:CNContactIOSLegacyIdentifierKey];
  }

  if (a3)
  {
    [v6 addObject:CNContactPhoneNumbersKey];
  }

  return v6;
}

void sub_100435F9C(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  if (a3 == 1)
  {
    [v4 sortUsingComparator:&stru_100AF5D60];
  }
}

int64_t sub_10043600C(id a1, CNContact *a2, CNContact *a3)
{
  v4 = a3;
  v5 = [(CNContact *)a2 iOSLegacyIdentifier];
  v6 = [(CNContact *)v4 iOSLegacyIdentifier];
  if (v5 < v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = v5 > v6;
  }

  return v7;
}

void sub_100436070(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v8 = a2;
  v6 = a4 + a3;
  if ([v8 count] > v6)
  {
    [v8 removeObjectsInRange:{v6, objc_msgSend(v8, "count") - v6}];
  }

  if (a3)
  {
    if ([v8 count] >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = [v8 count];
    }

    [v8 removeObjectsInRange:{0, v7}];
  }
}

id sub_100436134(void *a1)
{
  v1 = a1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [&off_100B34570 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v13 = *v15;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v15 != v13)
        {
          objc_enumerationMutation(&off_100B34570);
        }

        v4 = *(*(&v14 + 1) + 8 * i);
        v5 = objc_alloc_init(NSNumberFormatter);
        v6 = [NSLocale localeWithLocaleIdentifier:v4];
        [v5 setLocale:v6];

        v7 = 0;
        v8 = v1;
        do
        {
          v9 = [NSNumber numberWithInteger:v7];
          v10 = [v5 stringFromNumber:v9];
          v11 = [v9 stringValue];
          v1 = [v8 stringByReplacingOccurrencesOfString:v10 withString:v11];

          ++v7;
          v8 = v1;
        }

        while (v7 != 10);
      }

      v2 = [&off_100B34570 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v2);
  }

  return v1;
}

uint64_t sub_100436374(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:CNLabelPhoneNumberMobile])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:CNLabelPhoneNumberiPhone])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:CNLabelHome])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:CNLabelWork])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:CNLabelPhoneNumberMain])
  {
    v2 = 5;
  }

  else if (([v1 isEqualToString:CNLabelPhoneNumberHomeFax] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", CNLabelPhoneNumberWorkFax) & 1) != 0 || objc_msgSend(v1, "isEqualToString:", CNLabelPhoneNumberOtherFax))
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

NSMutableData *sub_1004364A0(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = objc_autoreleasePoolPush();
  v15[0] = kCGImageSourceCreateThumbnailFromImageAlways;
  v15[1] = kCGImageSourceThumbnailMaxPixelSize;
  v16[0] = &__kCFBooleanTrue;
  v16[1] = &off_100B33840;
  v4 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v5 = CGImageSourceCreateWithData(v1, 0);
  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v5, 0, v4);
  v7 = CGImageDestinationCreateWithData(v2, @"public.jpeg", 1uLL, 0);
  v13 = kCGImageDestinationLossyCompressionQuality;
  v14 = &off_100B34738;
  v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  CGImageDestinationAddImage(v7, ThumbnailAtIndex, v8);
  CGImageDestinationFinalize(v7);
  CFRelease(v5);
  CFRelease(ThumbnailAtIndex);
  CFRelease(v7);
  if (v2 && [(__CFData *)v2 length])
  {
    v9 = 1;
  }

  else
  {
    v10 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
    {
      sub_10082C5BC(v10);
    }

    v9 = 0;
  }

  objc_autoreleasePoolPop(v3);
  if (v9)
  {
    v11 = v2;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_1004366E4(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100436758(const std::string *a1)
{
  if (!std::string::compare(a1, "mobile"))
  {
    return 1;
  }

  if (!std::string::compare(a1, "iPhone"))
  {
    return 2;
  }

  if (!std::string::compare(a1, "home"))
  {
    return 3;
  }

  if (!std::string::compare(a1, "work"))
  {
    return 4;
  }

  if (!std::string::compare(a1, "main"))
  {
    return 5;
  }

  if (!std::string::compare(a1, "home fax") || !std::string::compare(a1, "work fax") || !std::string::compare(a1, "other fax"))
  {
    return 6;
  }

  return 0;
}

uint64_t sub_100436848(uint64_t a1, size_t a2, void *a3)
{
  v5 = a3;
  sub_1006A622C(a1, a2);
  *a1 = off_100AF5DB8;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_1004368C4(uint64_t a1)
{

  return sub_1006A6298(a1);
}

id sub_100436910(uint64_t a1, int a2)
{
  if (*(a1 + 32) != a2)
  {
    *(a1 + 32) = a2;
    v3 = sub_1004340A8(a2);
    v4 = *(a1 + 40);
    *(a1 + 40) = v3;
  }

  v5 = *(a1 + 40);

  return v5;
}

void *sub_10043696C(void *a1, void *a2, _DWORD *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  sub_100436848(a1, ([v8 count] + ((a3[2] - *a3) >> 2)), v7);
  *a1 = off_100AF5DE8;
  sub_1003A5D88(a1 + 6, a3);
  a1[9] = v8;

  return a1;
}

void sub_100436A04(_Unwind_Exception *a1)
{
  sub_1004368C4(v2);

  _Unwind_Resume(a1);
}

uint64_t sub_100436A28(uint64_t a1)
{
  *a1 = off_100AF5DE8;

  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  return sub_1004368C4(a1);
}

void sub_100436A94(uint64_t a1)
{
  sub_100436A28(a1);

  operator delete();
}

uint64_t sub_100436ACC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1 = *(a1 + 56);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(a1 + 72);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  v5 = (v1 - v2) >> 2;
  if (v4)
  {
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        if ([v8 isKeyAvailable:{CNContactPhoneNumbersKey, v13}])
        {
          v10 = [v8 phoneNumbers];
          v11 = [v10 count];

          LOWORD(v5) = v5 + v11;
        }

        objc_autoreleasePoolPop(v9);
        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  return v5;
}

uint64_t sub_100436C4C(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v4 = *(a1 + 48);
  if (a2 >= ((*(a1 + 56) - v4) >> 2))
  {
    operator new();
  }

  v5 = *(v4 + 4 * a2);

  return sub_100433B4C(v5);
}

uint64_t sub_100436DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100570884(a2);
  v5 = objc_alloc_init(CNContactStore);
  sub_100436848(a1, v4, v5);

  *a1 = off_100AF5E18;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  v6 = objc_alloc_init(NSDateFormatter);
  v7 = *(a1 + 56);
  *(a1 + 56) = v6;

  v8 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [*(a1 + 56) setLocale:v8];

  [*(a1 + 56) setDateFormat:@"yyyyMMdd'T'HHmmss"];
  return a1;
}

void sub_100436EC0(_Unwind_Exception *a1)
{
  v3 = v2;

  sub_1004368C4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100436EF8(uint64_t a1)
{
  *a1 = off_100AF5E18;
  sub_1005707E4(*(a1 + 48));

  return sub_1004368C4(a1);
}

void sub_100436F78(uint64_t a1)
{
  sub_100436EF8(a1);

  operator delete();
}

void sub_1004374E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1000DA6C8(v29 - 144);

  _Unwind_Resume(a1);
}

void *sub_1004375E0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  sub_100436848(a1, [v6 count], v5);
  *a1 = off_100AF5E48;
  a1[6] = v6;

  return a1;
}

uint64_t sub_10043766C(uint64_t a1)
{

  return sub_1004368C4(a1);
}

void sub_1004376A8(uint64_t a1)
{
  sub_1004368C4(a1);

  operator delete();
}

void sub_1004379BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000DA6C8(&a20);
  _Unwind_Resume(a1);
}

void sub_100437AB8(void *a1)
{
  sub_100437B84(a1);

  operator delete();
}

uint64_t sub_100437B84(void *a1)
{
  *a1 = &off_100AF5F00;
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_1006A6298(a1);
}

uint64_t sub_100437C00(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100437CF8(a1, a2);
  }

  else
  {
    sub_100437C40(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void *sub_100437C40(void *result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_100008904(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = *(a2 + 6);
  if (*(a2 + 55) < 0)
  {
    result = sub_100008904((v4 + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v6 = a2[2];
    *(v4 + 48) = *(a2 + 6);
    *(v4 + 32) = v6;
  }

  v3[1] = v4 + 56;
  return result;
}

void sub_100437CD0(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_100437CF8(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1000C7698();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_100437EA4(a1, v6);
  }

  v7 = 56 * v2;
  v16 = 0;
  v17 = v7;
  v18 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  *(v7 + 24) = *(a2 + 6);
  if (*(a2 + 55) < 0)
  {
    sub_100008904((v7 + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v9 = a2[2];
    *(v7 + 48) = *(a2 + 6);
    *(v7 + 32) = v9;
  }

  *&v18 = v18 + 56;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  sub_100437F00(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_100437FFC(&v16);
  return v15;
}

void sub_100437E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  sub_100437FFC(va);
  _Unwind_Resume(a1);
}

void sub_100437EA4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_100437F00(uint64_t result, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 2);
      *a4 = v8;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
      *(a4 + 24) = *(v7 + 6);
      v9 = v7[2];
      *(a4 + 48) = *(v7 + 6);
      *(a4 + 32) = v9;
      *(v7 + 5) = 0;
      *(v7 + 6) = 0;
      *(v7 + 4) = 0;
      v7 = (v7 + 56);
      a4 += 56;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      sub_100437FA4(result, v5);
      v5 = (v5 + 56);
    }
  }
}

void sub_100437FA4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void **sub_100437FFC(void **a1)
{
  sub_100438030(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}
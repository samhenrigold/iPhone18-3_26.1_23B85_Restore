void sub_1006790DC(uint64_t a1, uint64_t a2, void *a3, unsigned __int16 *a4, int a5)
{
  v8 = a3;
  if (*(a1 + 80) >= 1)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    v10 = v8;
    v11 = v10;
    if (v10)
    {
      *uuid = 0;
      v13 = 0;
      [v10 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v9, "kCBMsgArgDeviceUUID", uuid);
    }

    xpc_dictionary_set_int64(v9, "kCBPhyStatsRSSI", *a4);
    xpc_dictionary_set_int64(v9, "kCBPhyStatsTransmitPER", a4[1]);
    xpc_dictionary_set_int64(v9, "kCBPhyStatsTransmitPERNumberOfPackets", a4[2]);
    xpc_dictionary_set_int64(v9, "kCBPhyStatsTransmitClassicPER", a4[3]);
    xpc_dictionary_set_int64(v9, "kCBPhyStatsTransmitClassicPERNumberOfPackets", a4[4]);
    xpc_dictionary_set_int64(v9, "kCBPhyStatsReceivePER", a4[5]);
    xpc_dictionary_set_int64(v9, "kCBPhyStatsReceivePERNumberOfPackets", a4[6]);
    xpc_dictionary_set_int64(v9, "kCBPhyStatsReceiveClassicPER", a4[7]);
    xpc_dictionary_set_int64(v9, "kCBPhyStatsReceiveClassicPERNumberOfPackets", a4[8]);
    xpc_dictionary_set_int64(v9, "kCBMsgArgResult", a5);
    sub_10004DFB8(a1, 228, v9, 1);
  }
}

void sub_1006792B0(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, unsigned int a5, int a6, unsigned int a7)
{
  v12 = a3;
  v13 = xpc_dictionary_create(0, 0, 0);
  v14 = v12;
  v15 = v14;
  if (v14)
  {
    *uuid = 0;
    v17 = 0;
    [v14 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v13, "kCBMsgArgDeviceUUID", uuid);
  }

  xpc_dictionary_set_int64(v13, "kCBMsgArgPowerAssertionExecutionState", a7);
  xpc_dictionary_set_int64(v13, "kCBMsgArgPowerAssertionDuration", a5);
  xpc_dictionary_set_int64(v13, "kCBMsgArgPowerAssertionBegin", a4);
  xpc_dictionary_set_int64(v13, "kCBMsgArgResult", a6);
  sub_10004DFB8(a1, 225, v13, 1);
}

void sub_100679418(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, unint64_t a6)
{
  v10 = a3;
  if (a6)
  {
    sub_10004DFB4(uu2, v10);
    v11 = sub_10004E34C(a1 + 208, uu2);
    v12 = v11;
    if (a1 + 216 != v11)
    {
      v13 = *(v11 + 56);
      if (v13)
      {
        v14 = (v11 + 48);
        v15 = (v11 + 56);
        do
        {
          v16 = *(v13 + 32);
          v17 = v16 >= a6;
          v18 = v16 < a6;
          if (v17)
          {
            v15 = v13;
          }

          v13 = *(v13 + 8 * v18);
        }

        while (v13);
        if (v15 != (v11 + 56) && v15[4] <= a6)
        {
          v19 = *(a6 + 8);
          v20 = sub_1004861F0(a6, a4, a5);
          sub_10004DFB8(a1, v19, v20, 1);
          sub_10002717C(v14, v15);
          operator delete(v15);
          if (!*(v12 + 64))
          {
            sub_10067D88C((a1 + 208), v12);
          }

          (*(*a6 + 8))(a6);
        }
      }
    }
  }
}

BOOL sub_1006795AC(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = 0;
  v4 = sub_100013DE8(a3, &v18);
  if (!v4)
  {
    v5 = *(a1 + 32);
    v7 = v5[1];
    v6 = v5[2];
    if (v7 >= v6)
    {
      v9 = *v5;
      v10 = v7 - *v5;
      v11 = v10 >> 3;
      v12 = (v10 >> 3) + 1;
      if (v12 >> 61)
      {
        sub_1000C7698();
      }

      v13 = v6 - v9;
      if (v13 >> 2 > v12)
      {
        v12 = v13 >> 2;
      }

      v14 = v13 >= 0x7FFFFFFFFFFFFFF8;
      v15 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v12;
      }

      if (v15)
      {
        sub_10035EAA4(v5, v15);
      }

      *(8 * v11) = v18;
      v8 = 8 * v11 + 8;
      memcpy(0, v9, v10);
      v16 = *v5;
      *v5 = 0;
      v5[1] = v8;
      v5[2] = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = v18;
      v8 = (v7 + 8);
    }

    v5[1] = v8;
  }

  return v4 == 0;
}

uint64_t sub_1006796BC(void *a1, uint64_t a2)
{
  if (xpc_get_type(a1) == &_xpc_type_array)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_100679790;
    applier[3] = &unk_100AEE500;
    applier[4] = a2;
    if (xpc_array_apply(a1, applier))
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B164(a1);
    }

    return 3;
  }
}

uint64_t sub_100679790(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = 0uLL;
  v22 = 0;
  sub_10003A364(&v21);
  if (sub_100013CA4(a3, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgUUID"))
  {
    return 0;
  }

  v19 = xmmword_1008A4AF8;
  v20 = 0;
  if (sub_10004E15C(&v21, &v19))
  {
    return 0;
  }

  v19 = xmmword_1008A4B0C;
  v20 = 0;
  if (sub_10004E15C(&v21, &v19))
  {
    return 0;
  }

  v19 = xmmword_1008A4AD0;
  v20 = 0;
  if (sub_10004E15C(&v21, &v19))
  {
    return 0;
  }

  v19 = xmmword_1008A4AE4;
  v20 = 0;
  if (sub_10004E15C(&v21, &v19))
  {
    v10 = sub_100013C04(a3, "kCBMsgArgData");
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      if (strlen([v11 UTF8String]) < 0x10000)
      {
        operator new();
      }

      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085B8AC();
      }
    }

    return 0;
  }

  v19 = xmmword_1008A4B20;
  v20 = 0;
  if (sub_10004E15C(&v21, &v19))
  {
    *&v19 = &off_100AE0A78;
    *(&v19 + 1) = 0;
    value = xpc_dictionary_get_value(a3, "kCBMsgArgData");
    if (!sub_1000C9980(value, &v19) && sub_10000C5E0(&v19) == 7)
    {
      sub_10072502C(&v19, 2uLL);
      sub_10072502C(&v19, 3uLL);
      sub_10072502C(&v19, 5uLL);
      sub_10072502C(&v19, 6uLL);
      operator new();
    }

    *&v19 = &off_100AE0A78;
    v15 = *(&v19 + 1);
    if (*(&v19 + 1))
    {
LABEL_18:
      sub_10000C808(v15);
    }
  }

  else
  {
    v17 = &off_100AE0A78;
    v18 = 0;
    v14 = xpc_dictionary_get_value(a3, "kCBMsgArgData");
    if (!sub_1000C9980(v14, &v17) && sub_10000C5E0(&v17) <= 0x200)
    {
      operator new();
    }

    v17 = &off_100AE0A78;
    v15 = v18;
    if (v18)
    {
      goto LABEL_18;
    }
  }

  return 0;
}

void sub_100679C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, atomic_uint *a18)
{
  if (a18)
  {
    sub_10000C808(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100679D08(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = 0uLL;
  v12 = 0;
  sub_10003A364(&v11);
  if (!sub_100013CA4(a3, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgAttributeID"))
  {
    operator new();
  }

  return 0;
}

void sub_10067A13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, atomic_uint *a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a33)
  {
    sub_10000C808(a33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10067A1B8(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 80) <= 1)
  {
    v4 = *(a3 + 8);
    v5 = *(v4 + 64);
    if (a2)
    {
      v6 = *(v4 + 72);
    }

    else
    {
      v6 = *(v4 + 72);
      if (v5 != v6)
      {
        while (1)
        {
          *buf = xmmword_1008A4DDC;
          v13 = 0;
          if (sub_10004E15C(v5, buf))
          {
            break;
          }

          v5 += 20;
          if (v5 == v6)
          {
            v5 = v6;
            break;
          }
        }

        v6 = *(v4 + 72);
      }

      if (v5 != v6)
      {
        v7 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Contact tracing UUID advertising is not allowed.", buf, 2u);
        }

        return 3;
      }

      v5 = *(v4 + 64);
    }

    if (v5 != v6)
    {
      while (1)
      {
        if (qword_100B541E8 != -1)
        {
          sub_1000E7B38();
        }

        if ((sub_1004EB220(qword_100B541E0, v5, *(a1 + 184)) & 1) == 0)
        {
          v9 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a1 + 96);
            sub_10003B85C(v5, buf);
            v11 = buf;
            if (v14 < 0)
            {
              v11 = *buf;
            }

            *v15 = 138412546;
            v16 = v10;
            v17 = 2080;
            v18 = v11;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ wants to advertise for restricted service (%s)", v15, 0x16u);
            if (v14 < 0)
            {
              operator delete(*buf);
            }
          }

          *buf = xmmword_1008A4DB4;
          v13 = -1171415960;
          if (sub_10004E15C(v5, buf))
          {
            break;
          }

          *buf = xmmword_1008A4F34;
          v13 = 0;
          if (sub_10004E15C(v5, buf))
          {
            break;
          }
        }

        v5 += 20;
        if (v5 == v6)
        {
          return 0;
        }
      }

      return 3;
    }
  }

  return 0;
}

uint64_t sub_10067A424(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v6 = a2;
  v4 = sub_100099408((a1 + 112), a2, &unk_1008A9BD0, &v6);
  return sub_10000AE20(v4 + 56, a3);
}

uint64_t sub_10067A474(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_data)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(object);
    v7 = [NSData dataWithBytes:bytes_ptr length:xpc_data_get_length(object)];
    v8 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
    {
      v10 = 134218242;
      v11 = a2;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Adding zone %lu = %{public}@", &v10, 0x16u);
    }

    [*(*(a1 + 32) + 112) addObject:v7];
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085B8E8();
  }

  return 1;
}

uint64_t sub_10067A5E4(uint64_t *a1, uint64_t a2, xpc_object_t object)
{
  v6 = a1[5];
  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    return 0;
  }

  v89 = 0;
  v90 = 0;
  v87 = 0;
  v88 = &off_100AE0A78;
  v85 = -127;
  v86 = &off_100AE0A78;
  v83 = 1;
  v84 = 0;
  v81 = 1;
  v82 = 1;
  v79 = 0;
  v80 = 2;
  v77 = 0;
  v78 = 0;
  v75 = 0xFFFF;
  v76 = 0xFFFF;
  v74 = 0xFFFF;
  v98 = 0uLL;
  v99 = 0;
  v8 = sub_10003A364(&v98);
  v73 = 0;
  v10 = sub_10000C798(v8, v9);
  if ((*(*v10 + 656))(v10))
  {
    v82 = 3;
  }

  value = xpc_dictionary_get_value(object, "kCBScanOptionFilterManufacturerID");
  if (value && sub_10037CAD8(value, &v73))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B958();
    }

    goto LABEL_49;
  }

  v12 = xpc_dictionary_get_value(object, "kCBScanOptionAppleFilterPayload");
  if (v12 && sub_1000C9980(v12, &v88))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B994();
    }

    goto LABEL_49;
  }

  v13 = xpc_dictionary_get_value(object, "kCBScanOptionAppleFilterPayloadMask");
  if (v13 && sub_1000C9980(v13, &v86))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B9D0();
    }

    goto LABEL_49;
  }

  v14 = xpc_dictionary_get_value(object, "kCBScanOptionAppleFilterForceDups");
  if (v14 && sub_100013DE8(v14, &v84))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085BA0C();
    }

    goto LABEL_49;
  }

  v15 = xpc_dictionary_get_value(object, "kCBScanOptionAllowDuplicates");
  if (v15 && sub_100013DE8(v15, &v84))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085BA48();
    }

    goto LABEL_49;
  }

  v16 = xpc_dictionary_get_value(object, "kCBScanOptionAppleFilterBypassFilterDuplicate");
  if (v16 && sub_100013DE8(v16, &v83))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085BA84();
    }

    goto LABEL_49;
  }

  v17 = xpc_dictionary_get_value(object, "kCBScanOptionAppleFilterTargetCore");
  if (v17 && sub_100013DE8(v17, &v82))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085BAC0();
    }

    goto LABEL_49;
  }

  v18 = xpc_dictionary_get_value(object, "kCBScanOptionAppleFilterRSSIThresholdOrder");
  if (v18 && sub_100013DE8(v18, &v81))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    goto LABEL_49;
  }

  v19 = xpc_dictionary_get_value(object, "kCBScanOption127dBmReport");
  if (v19 && sub_100013DE8(v19, &v78))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    goto LABEL_49;
  }

  v20 = xpc_dictionary_get_value(object, "kCBScanOption27dBmReport");
  if (!v20 || !sub_100013DE8(v20, &v77))
  {
    if (xpc_dictionary_get_value(object, "kCBScanOptionPeers"))
    {
      v21 = sub_100066200(object, "kCBScanOptionPeers");
      if (!v21)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085BB38();
        }

        goto LABEL_49;
      }
    }

    else
    {
      v21 = 0;
    }

    v24 = xpc_dictionary_get_value(object, "kCBScanOptionAppleFilterAddressType");
    if (v24)
    {
      v24 = sub_100013DE8(v24, &v80);
      if (v24)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085BB74();
        }

LABEL_71:
        v22 = 0;
        goto LABEL_50;
      }
    }

    if (*(v6 + 80) == 2)
    {
      v26 = sub_10000C7D0(v24, v25);
      if ((*(*v26 + 2712))(v26))
      {
        v27 = xpc_dictionary_get_value(object, "kCBScanOptionRespondToObjectLocatorWithThisType");
        if (v27)
        {
          if (sub_100013DE8(v27, &v79))
          {
            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_10085BBB0();
            }

            goto LABEL_71;
          }
        }
      }
    }

    if (xpc_dictionary_get_value(object, "kCBOptionUseCaseList"))
    {
      v22 = sub_10006638C(object, "kCBOptionUseCaseList");
      if (!v22)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085BBEC();
        }

        goto LABEL_71;
      }
    }

    else
    {
      v22 = 0;
    }

    v28 = xpc_dictionary_get_value(object, "kCBScanOptionScanWindow");
    if (v28 && sub_1000DB500(v28, &v76))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085BC28();
      }

      goto LABEL_50;
    }

    v29 = xpc_dictionary_get_value(object, "kCBScanOptionScanInterval");
    if (v29 && sub_1000DB500(v29, &v75))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085BC64();
      }

      goto LABEL_50;
    }

    v30 = xpc_dictionary_get_value(object, "kCBScanOptionScanIntervalBackground");
    if (v30 && sub_1000DB500(v30, &v74))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085BCA0();
      }

      goto LABEL_50;
    }

    v31 = xpc_dictionary_get_value(object, "kCBScanOptionFilterServiceUUID");
    if (v31)
    {
      sub_100065E5C(v31, &v98);
      if (v32)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085BCDC();
        }

        goto LABEL_50;
      }
    }

    v33 = object;
    v34 = sub_100013C04(object, "kCBScanOptionFilterIdentifierString");
    v35 = v34;
    if (v34 && [(__CFString *)v34 length])
    {
      v65 = v35;
    }

    else
    {

      v65 = @"default";
    }

    if (v90 == 18 && _os_feature_enabled_impl())
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085BE80();
      }

LABEL_101:
      v7 = 0;
LABEL_151:

      goto LABEL_51;
    }

    v36 = xpc_dictionary_get_value(object, "kCBScanOptionAppleFilterRssi");
    v66 = xpc_dictionary_get_value(v33, "kCBScanOptionAppleFilterPuckType");
    if (v36 && sub_100013DE8(v36, &v85))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085BD18();
      }

      goto LABEL_101;
    }

    v63 = sub_100013C04(v33, "kCBScanOptionFilterNameMatchString");
    v64 = sub_1000C9AAC(v33, "kCBScanOptionFilterNameMatchNSStringCompareOptions");
    if (v64)
    {
      v37 = [v64 unsignedIntValue];
      v62 = 1000;
LABEL_110:
      v40 = v73;
      if (v73)
      {
        v41 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
        {
          v67 = a1[4];
          sub_10000C250(&v88, v96);
          v42 = v97;
          v43 = *v96;
          sub_10000C250(&v86, __p);
          v44 = v96;
          if (v42 < 0)
          {
            v44 = v43;
          }

          v45 = __p;
          if (v72 < 0)
          {
            v45 = __p[0];
          }

          *buf = 134220546;
          *&buf[4] = a2;
          *&buf[12] = 2112;
          *&buf[14] = v65;
          v92 = 2112;
          v93 = v67;
          v94 = 1024;
          *v95 = v40;
          *&v95[4] = 2080;
          *&v95[6] = v44;
          *&v95[14] = 2080;
          *&v95[16] = v45;
          *&v95[24] = 2048;
          *&v95[26] = v85;
          *&v95[34] = 2048;
          *&v95[36] = v84;
          *&v95[44] = 2048;
          *&v95[46] = v83;
          *&v95[54] = 2048;
          *&v95[56] = v82;
          *&v95[64] = 2048;
          *&v95[66] = v81;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "addEnhancedFilter index:%zu filterId:%@ clientName:%@ mfgrID:%d payload:%s payloadFilter:%s rssi:%lld forceDups:%lld bypassFilterDuplicate:%lld,t targetCore:%lld, rssiThreshold:%lld", buf, 0x6Cu);
          if (v72 < 0)
          {
            operator delete(__p[0]);
          }

          if (v97 < 0)
          {
            operator delete(*v96);
          }

          LOWORD(v40) = v73;
        }

        sub_10067B6F0(a1[6], v65, a1[4], v40, &v88, &v86, v85, v84, v83, v82, v81, 0, 0, 1);
        goto LABEL_142;
      }

      if (v98)
      {
        v46 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
        {
          v68 = a1[4];
          sub_10003B85C(&v98, v96);
          if (v97 >= 0)
          {
            v47 = v96;
          }

          else
          {
            v47 = *v96;
          }

          sub_10000C250(&v88, __p);
          v48 = v72;
          v49 = __p[0];
          sub_10000C250(&v86, v69);
          v50 = __p;
          if (v48 < 0)
          {
            v50 = v49;
          }

          v51 = v69;
          if (v70 < 0)
          {
            v51 = v69[0];
          }

          *buf = 134220546;
          *&buf[4] = a2;
          *&buf[12] = 2112;
          *&buf[14] = v65;
          v92 = 2112;
          v93 = v68;
          v94 = 2080;
          *v95 = v47;
          *&v95[8] = 2080;
          *&v95[10] = v50;
          *&v95[18] = 2080;
          *&v95[20] = v51;
          *&v95[28] = 2048;
          *&v95[30] = v85;
          *&v95[38] = 2048;
          *&v95[40] = v84;
          *&v95[48] = 2048;
          *&v95[50] = v83;
          *&v95[58] = 2048;
          *&v95[60] = v82;
          *&v95[68] = 2048;
          *&v95[70] = v81;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "addEnhancedFilter index:%zu filterId:%@ clientName:%@ uuid:%s payload:%s payloadFilter:%s rssi:%lld forceDups:%lld bypassFilterDuplicate:%lld,t targetCore:%lld, rssiThreshold:%lld", buf, 0x70u);
          if (v70 < 0)
          {
            operator delete(v69[0]);
          }

          if (v72 < 0)
          {
            operator delete(__p[0]);
          }

          if (v97 < 0)
          {
            operator delete(*v96);
          }
        }

        v52 = a1[6];
        v53 = a1[4];
        *buf = v98;
        *&buf[16] = v99;
        sub_10003B48C(v52, v65, v53, buf, &v88, &v86, v85, v84, v82, v81, 0, 0, 1);
        goto LABEL_142;
      }

      if ([v63 length])
      {
        v54 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
        {
          v55 = a1[4];
          *buf = 134220546;
          *&buf[4] = a2;
          *&buf[12] = 2112;
          *&buf[14] = v65;
          v92 = 2112;
          v93 = v55;
          v94 = 2112;
          *v95 = v63;
          *&v95[8] = 1024;
          *&v95[10] = v62;
          *&v95[14] = 2048;
          *&v95[16] = v37;
          *&v95[24] = 2048;
          *&v95[26] = v85;
          *&v95[34] = 2048;
          *&v95[36] = v84;
          *&v95[44] = 2048;
          *&v95[46] = v83;
          *&v95[54] = 2048;
          *&v95[56] = v82;
          *&v95[64] = 2048;
          *&v95[66] = v81;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "addEnhancedFilter index:%zu filterId:%@ clientName:%@ nameMatchStr:%@ nameMatchOpt:%d NSStringCompareOptions:%lu rssi:%lld forceDups:%lld bypassFilterDuplicate:%lld,t targetCore:%lld, rssiThreshold:%lld", buf, 0x6Cu);
        }

        sub_10067B818(a1[6], v65, a1[4], v63, v62, v37, v85, v84, v82, v81, 0, 0, 1);
        goto LABEL_142;
      }

      if (*(v6 + 170) == 1)
      {
        if (v66 && !sub_100013DE8(v66, &v90))
        {
          if (v36 && !sub_100013DE8(v36, &v85))
          {
            if (sub_10000C5E0(&v86))
            {
              if (sub_10000C5E0(&v88))
              {
                HIBYTE(v61) = 1;
                LOBYTE(v61) = v79 != 0;
                sub_100032784(a1[6], a1[4], v90, v80, &v88, &v86, v85, v84, v83, v82, v81, v21, v61, v78 != 0, v77 != 0, 1, v22, __SPAIR64__(v75, v76), v74);
LABEL_142:
                v56 = a1[6];
                v57 = *(v56 + 120);
                for (i = *(v56 + 128); v57 != i; v57 += 112)
                {
                  v59 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
                  {
                    sub_10007FC10(v57);
                    v60 = buf;
                    if (v92 < 0)
                    {
                      v60 = *buf;
                    }

                    *v96 = 136315138;
                    *&v96[4] = v60;
                    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "%s", v96, 0xCu);
                    if (SHIBYTE(v92) < 0)
                    {
                      operator delete(*buf);
                    }
                  }
                }

                v7 = 1;
                goto LABEL_150;
              }

              if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
              {
                sub_10085BD90();
              }
            }

            else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_10085BDCC();
            }
          }

          else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_10085BE08();
          }
        }

        else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085BE44();
        }
      }

LABEL_163:
      v7 = 0;
LABEL_150:

      goto LABEL_151;
    }

    v38 = sub_100013C04(v33, "kCBScanOptionFilterNameMatchOption");
    if ([v38 isEqualToString:@"kCBScanOptionFilterNameMatchOptionStartsWith"])
    {
      v39 = 1;
    }

    else
    {
      if (([v38 isEqualToString:@"kCBScanOptionFilterNameMatchOptionEndsWith"] & 1) == 0)
      {
        if (([v38 isEqualToString:@"kCBScanOptionFilterNameMatchOptionContains"] & 1) == 0 && objc_msgSend(v38, "length"))
        {
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_10085BD54();
          }

          goto LABEL_163;
        }

        v62 = 0;
        goto LABEL_109;
      }

      v39 = 2;
    }

    v62 = v39;
LABEL_109:

    v37 = 0;
    goto LABEL_110;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
LABEL_44:
    sub_10085BAFC();
  }

LABEL_49:
  v22 = 0;
  v21 = 0;
LABEL_50:
  v7 = 0;
LABEL_51:

  v86 = &off_100AE0A78;
  if (v87)
  {
    sub_10000C808(v87);
  }

  v88 = &off_100AE0A78;
  if (v89)
  {
    sub_10000C808(v89);
  }

  return v7;
}

void sub_10067B590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, atomic_uint *a42, uint64_t a43, atomic_uint *a44)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v46 - 137) < 0)
  {
    operator delete(*(v46 - 160));
  }

  if (a42)
  {
    sub_10000C808(a42);
  }

  if (a44)
  {
    sub_10000C808(a44);
  }

  _Unwind_Resume(a1);
}

void sub_10067B6F0(uint64_t a1, void *a2, void *a3, __int16 a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14)
{
  sub_10067C124(v15, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  sub_10067C0C4(a1 + 120, v15);

  v18 = &off_100AE0A78;
  if (v19)
  {
    sub_10000C808(v19);
  }

  v16 = &off_100AE0A78;
  if (v17)
  {
    sub_10000C808(v17);
  }
}

void sub_10067B7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001388F0(va);
  _Unwind_Resume(a1);
}

void sub_10067B818(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, char a6, int a7, char a8, char a9, char a10, char a11, char a12, char a13)
{
  sub_10067C298(v14, a2, a3, a4, a5, a7, a6, a8, a9, a10, a11, a12, a13, 1);
  sub_10067C0C4(a1 + 120, v14);

  v17 = &off_100AE0A78;
  if (v18)
  {
    sub_10000C808(v18);
  }

  v15 = &off_100AE0A78;
  if (v16)
  {
    sub_10000C808(v16);
  }
}

void sub_10067B930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001388F0(va);
  _Unwind_Resume(a1);
}

id sub_10067B94C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) hasPrefix:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_10067B9A0(uint64_t a1, void *a2, __int128 **a3, char a4, int a5)
{
  v9 = sub_10048616C(a1, 192, a2);
  *v9 = off_100AF79F8;
  sub_10000CB74(v9 + 3, a3);
  *(a1 + 48) = a4;
  *(a1 + 52) = a5;
  return a1;
}

uint64_t sub_10067BA24(uint64_t a1, void *a2, uint64_t a3, __int128 **a4, char a5, int a6)
{
  v11 = sub_10048616C(a1, 201, a2);
  v11[3] = a3;
  *v11 = off_100AF7A20;
  sub_10000CB74(v11 + 4, a4);
  *(a1 + 56) = a5;
  *(a1 + 60) = a6;
  return a1;
}

uint64_t sub_10067BAB8(uint64_t a1, void *a2, uint64_t a3, __int128 **a4)
{
  v7 = sub_10048616C(a1, 202, a2);
  v7[3] = a3;
  *v7 = off_100AF7A48;
  sub_10000CB74(v7 + 4, a4);
  return a1;
}

void sub_10067BB38(uint64_t a1)
{
  sub_1004861BC(a1);

  operator delete();
}

void sub_10067BB74(uint64_t a1)
{
  sub_1004861BC(a1);

  operator delete();
}

uint64_t *sub_10067BBAC(uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_10067BC20(a1, 0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 1));
  }

  return a1;
}

void sub_10067BC20(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x199999999999999ALL)
  {
    sub_10067BC68(a1, a2);
  }

  sub_1000C7698();
}

void sub_10067BC68(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x199999999999999ALL)
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_10067BCBC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_100139064(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_10067BD34(a1, i + 16, i + 1);
  }

  return a1;
}

uint64_t **sub_10067BD34(void *a1, unsigned __int8 *a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % a1[1];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 16) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t sub_10067BF6C(uint64_t a1, __int16 a2, const void *a3, unsigned int a4)
{
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *a1 = off_100B08C60;
  *(a1 + 8) = a1 + 24;
  *(a1 + 26) = 0;
  *(a1 + 44) = 0;
  *(a1 + 28) = xmmword_1008AAC3C;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  sub_1006E3E30(a1, a3, a4);
  if (a3)
  {
    v7 = a4 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  *(a1 + 20) = v8;
  return a1;
}

uint64_t sub_10067C00C(uint64_t a1, __int16 a2, __int128 *a3, const void *a4, uint64_t a5)
{
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *a1 = off_100B08D08;
  *(a1 + 8) = a1 + 24;
  v6 = *a3;
  v7 = *(a3 + 4);
  *(a1 + 24) = a2;
  *(a1 + 26) = 0;
  *(a1 + 28) = v6;
  *(a1 + 44) = v7;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  sub_1006E4624(a1, a4, a5);
  return a1;
}

uint64_t sub_10067C0C4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_10006E108(a1, a2);
  }

  else
  {
    sub_100018288(a1, *(a1 + 8), a2);
    result = v3 + 112;
    *(a1 + 8) = v3 + 112;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10067C124(uint64_t a1, void *a2, void *a3, __int16 a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14)
{
  v21 = a2;
  v22 = a3;
  v23 = v21;
  *a1 = v23;
  v24 = v22;
  *(a1 + 8) = v24;
  *(a1 + 16) = a4;
  sub_10003A364((a1 + 20));
  v25 = *(a5 + 8);
  *(a1 + 40) = &off_100AE0A78;
  *(a1 + 48) = v25;
  if (v25)
  {
    sub_10000C69C(v25);
  }

  v26 = *(a6 + 8);
  *(a1 + 56) = &off_100AE0A78;
  *(a1 + 64) = v26;
  if (v26)
  {
    sub_10000C69C(v26);
  }

  *(a1 + 72) = a7;
  *(a1 + 73) = a8;
  *(a1 + 74) = a9;
  *(a1 + 75) = a10;
  *(a1 + 76) = a11;
  *(a1 + 77) = a12;
  *(a1 + 78) = a13;
  *(a1 + 79) = a14;
  *(a1 + 96) = 0;
  *(a1 + 104) = 2;

  return a1;
}

void sub_10067C25C(_Unwind_Exception *a1)
{
  *(v1 + 40) = v4;
  v6 = *(v1 + 48);
  if (v6)
  {
    sub_10000C808(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10067C298(uint64_t a1, void *a2, void *a3, void *a4, int a5, uint64_t a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14)
{
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = v21;
  *a1 = v24;
  v25 = v22;
  *(a1 + 8) = v25;
  *(a1 + 16) = 0;
  sub_10003A364((a1 + 20));
  *(a1 + 40) = &off_100AE0A78;
  *(a1 + 48) = 0;
  *(a1 + 56) = &off_100AE0A78;
  *(a1 + 64) = 0;
  *(a1 + 72) = a7;
  *(a1 + 73) = a8;
  *(a1 + 74) = a9;
  *(a1 + 75) = a10;
  *(a1 + 76) = a11;
  *(a1 + 77) = a12;
  *(a1 + 78) = a13;
  *(a1 + 79) = a14;
  *(a1 + 80) = a5;
  *(a1 + 88) = a6;
  *(a1 + 96) = v23;
  *(a1 + 104) = 3;

  return a1;
}

uint64_t sub_10067C3E8(uint64_t a1, __int16 a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__p = 0u;
  v7 = 0u;
  v4 = 0u;
  memset(v5, 0, sizeof(v5));
  sub_100008760(&v4);
  if (a2)
  {
    sub_100007774(&v4, "NSCaseInsensitiveSearch,", 24);
  }

  if ((a2 & 2) != 0)
  {
    sub_100007774(&v4, "NSLiteralSearch,", 16);
  }

  if ((a2 & 4) != 0)
  {
    sub_100007774(&v4, "NSBackwardsSearch,", 18);
  }

  if ((a2 & 8) != 0)
  {
    sub_100007774(&v4, "NSAnchoredSearch,", 17);
  }

  if ((a2 & 0x40) != 0)
  {
    sub_100007774(&v4, "NSNumericSearch,", 16);
  }

  if ((a2 & 0x80) != 0)
  {
    sub_100007774(&v4, "NSDiacriticInsensitiveSearch,", 29);
  }

  if ((a2 & 0x100) != 0)
  {
    sub_100007774(&v4, "NSWidthInsensitiveSearch,", 25);
  }

  if ((a2 & 0x400) != 0)
  {
    sub_100007774(&v4, "NSRegularExpressionSearch,", 26);
  }

  std::stringbuf::str();
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v5);
  std::ostream::~ostream();
  return std::ios::~ios();
}

__int128 *sub_10067C898(char **a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = a1[1];
    v8 = a1[2];
    if ((0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 2)) >= a5)
    {
      v14 = v7 - a2;
      if ((0xCCCCCCCCCCCCCCCDLL * ((v7 - a2) >> 2)) >= a5)
      {
        v17 = a2 + 20 * a5;
        v18 = &v7[-20 * a5];
        v19 = a1[1];
        while (v18 < v7)
        {
          v20 = *v18;
          *(v19 + 4) = *(v18 + 4);
          *v19 = v20;
          v19 += 20;
          v18 += 20;
        }

        a1[1] = v19;
        if (v7 != v17)
        {
          v21 = v7 - 20;
          v22 = v17 - v7;
          v23 = &v21[-20 * a5];
          do
          {
            v24 = *v23;
            *(v21 + 4) = *(v23 + 4);
            *v21 = v24;
            v21 -= 20;
            v23 -= 20;
            v22 += 20;
          }

          while (v22);
        }

        v25 = 0;
        do
        {
          v26 = a2 + v25;
          v27 = *v6;
          *(v26 + 4) = *(v6 + 4);
          *v26 = v27;
          v6 = (v6 + 20);
          v25 += 20;
        }

        while (v6 != (a3 + 20 * a5));
      }

      else
      {
        v15 = a1[1];
        if ((a3 + v14) == a4)
        {
          v16 = a1[1];
        }

        else
        {
          v31 = (a3 + v14);
          v16 = a1[1];
          do
          {
            v32 = *v31;
            *(v16 + 4) = *(v31 + 4);
            *v16 = v32;
            v16 += 20;
            v31 = (v31 + 20);
            v15 += 20;
          }

          while (v31 != a4);
        }

        a1[1] = v15;
        if (v14 >= 1)
        {
          v33 = a2 + 20 * a5;
          v34 = &v15[-20 * a5];
          v35 = v15;
          while (v34 < v7)
          {
            v36 = *v34;
            *(v35 + 4) = *(v34 + 4);
            *v35 = v36;
            v35 += 20;
            v34 += 20;
          }

          a1[1] = v35;
          if (v16 != v33)
          {
            v37 = v15 - 20;
            v38 = v33 - v15;
            v39 = &v37[-20 * a5];
            do
            {
              v40 = *v39;
              *(v37 + 4) = *(v39 + 4);
              *v37 = v40;
              v37 -= 20;
              v39 -= 20;
              v38 += 20;
            }

            while (v38);
          }

          v41 = 0;
          do
          {
            v42 = a2 + v41;
            v43 = *v6;
            *(v42 + 4) = *(v6 + 4);
            *v42 = v43;
            v6 = (v6 + 20);
            v41 += 20;
          }

          while (v6 != (a3 + v14));
        }
      }
    }

    else
    {
      v9 = *a1;
      v10 = a5 - 0x3333333333333333 * ((v7 - *a1) >> 2);
      if (v10 > 0xCCCCCCCCCCCCCCCLL)
      {
        sub_1000C7698();
      }

      v11 = a2 - v9;
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 2);
      if (2 * v12 > v10)
      {
        v10 = 2 * v12;
      }

      if (v12 >= 0x666666666666666)
      {
        v13 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v13 = v10;
      }

      v49 = a1;
      if (v13)
      {
        sub_100018404(a1, v13);
      }

      v28 = 4 * (v11 >> 2);
      __p = 0;
      v46 = v28;
      v48 = 0;
      v29 = 20 * a5;
      do
      {
        v30 = *v6;
        *(v28 + 16) = *(v6 + 4);
        *v28 = v30;
        v28 += 20;
        v6 = (v6 + 20);
        v29 -= 20;
      }

      while (v29);
      v47 = 4 * (v11 >> 2) + 20 * a5;
      v5 = sub_10067CBF0(a1, &__p, v5);
      if (v47 != v46)
      {
        v47 = (v47 - v46 - 20) % 0x14uLL + v46;
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_10067CBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10067CBF0(char **a1, void *a2, __int128 *a3)
{
  v4 = a1[1];
  result = a2[1];
  v6 = a2[2];
  if (v4 == a3)
  {
    v10 = a2[1];
    v9 = a3;
  }

  else
  {
    v7 = a3;
    do
    {
      v8 = *v7;
      *(v6 + 16) = *(v7 + 4);
      *v6 = v8;
      v6 += 20;
      v7 = (v7 + 20);
    }

    while (v7 != v4);
    v9 = a1[1];
    v10 = a2[1];
    v6 = a2[2];
  }

  a2[2] = v6 + v9 - a3;
  a1[1] = a3;
  v11 = *a1;
  v12 = (v10 + *a1 - a3);
  if (*a1 != a3)
  {
    v13 = v12;
    do
    {
      v14 = *v11;
      *(v13 + 4) = *(v11 + 4);
      *v13 = v14;
      v13 = (v13 + 20);
      v11 += 20;
    }

    while (v11 != a3);
    v11 = *a1;
  }

  a2[1] = v12;
  *a1 = v12;
  a1[1] = v11;
  a2[1] = v11;
  v15 = a1[1];
  a1[1] = a2[2];
  a2[2] = v15;
  v16 = a1[2];
  a1[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
  return result;
}

char *sub_10067CCB4(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 1)
  {
    v11 = *a1;
    if (a5 + ((v10 - *a1) >> 1) < 0)
    {
      sub_1000C7698();
    }

    v12 = __dst - v11;
    v13 = v9 - v11;
    if (v13 <= a5 + ((v10 - *a1) >> 1))
    {
      v14 = a5 + ((v10 - *a1) >> 1);
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    if (v15)
    {
      sub_1003705C4(a1, v15);
    }

    v33 = 2 * v16;
    v34 = 2 * a5;
    v35 = (2 * v16);
    do
    {
      v36 = *v7;
      v7 += 2;
      *v35++ = v36;
      v34 -= 2;
    }

    while (v34);
    memcpy((v33 + 2 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 2 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (2 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 1;
  if (v18 >= a5)
  {
    v29 = &__dst[2 * a5];
    v30 = (v10 - 2 * a5);
    v31 = a1[1];
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    a1[1] = v31;
    if (v10 != v29)
    {
      memmove(&__dst[2 * a5], __dst, v10 - v29);
    }

    v28 = 2 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_30;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(a1[1], &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  a1[1] = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[2 * a5];
    v23 = v10 + v20;
    if (&v21[-2 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -2 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 2;
        v24 += 2;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    a1[1] = v23;
    if (v21 != v22)
    {
      memmove(&v5[2 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_30:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

std::string *sub_10067CED8(void *a1, std::string *a2, std::string *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v19 = a5;
        sub_10067D124(a1, a2, a1[1], &a2[a5]);
        v20 = &v7[v19];
        v21 = v5;
        do
        {
          std::string::operator=(v21++, v7++);
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1[1] = sub_1000DFE5C(a1, (a3 + v16), a4, a1[1]);
        if (v16 >= 1)
        {
          sub_10067D124(a1, v5, v10, &v5[a5]);
          v18 = v5;
          do
          {
            std::string::operator=(v18++, v7++);
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1000C7698();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v33 = a1;
      if (v15)
      {
        sub_10035FDB8(a1, v15);
      }

      v30 = 0;
      v31 = 8 * (v13 >> 3);
      v32 = v31;
      sub_10067D194(&v30, a3, a5);
      v22 = v31;
      memcpy(v32, v5, a1[1] - v5);
      v23 = *a1;
      v24 = v31;
      *&v32 = v32 + a1[1] - v5;
      a1[1] = v5;
      v25 = v5 - v23;
      v26 = (v24 - (v5 - v23));
      memcpy(v26, v23, v25);
      v27 = *a1;
      *a1 = v26;
      v28 = a1[2];
      *(a1 + 1) = v32;
      *&v32 = v27;
      *(&v32 + 1) = v28;
      v30 = v27;
      v31 = v27;
      sub_100360AC8(&v30);
      return v22;
    }
  }

  return v5;
}

uint64_t sub_10067D124(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      v8 += 24;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_10067D228(&v12, a2, v7, v6);
}

void *sub_10067D194(void *result, __int128 *a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = v4 + 24 * a3;
    v7 = 24 * a3;
    do
    {
      if (*(a2 + 23) < 0)
      {
        result = sub_100008904(v4, *a2, *(a2 + 1));
      }

      else
      {
        v8 = *a2;
        *(v4 + 16) = *(a2 + 2);
        *v4 = v8;
      }

      v4 += 24;
      a2 = (a2 + 24);
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

uint64_t sub_10067D228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t *sub_10067D88C(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10002717C(a1, a2);
  sub_10000CEDC(a2 + 48, *(a2 + 56));
  operator delete(a2);
  return v3;
}

void *sub_10067D8CC(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_10004A7D0(a1, &v6, uu1);
  if (!result)
  {
    sub_10067D970();
  }

  return result;
}

void sub_10067D9F0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10067DA0C(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10067DA0C(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_10000CEDC((a2 + 6), a2[7]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t **sub_10067DAD4(void *a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % a1[1];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 16) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

unsigned __int8 *sub_10067DD7C(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    while (!sub_10004E15C(v3 + 28, a3))
    {
      v6 = *(v3 + 1);
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
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
      if (v7 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

void sub_10067DE14()
{
  v0 = objc_autoreleasePoolPush();
  sub_100364534(&stru_100BCE850);
  __cxa_atexit(sub_1003645A0, &stru_100BCE850, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10067DE80(uint64_t a1, uint64_t a2, void *a3, __int16 a4, char a5, int a6)
{
  v11 = a3;
  *a1 = a2;
  *(a1 + 8) = v11;
  *(a1 + 16) = a4;
  *(a1 + 18) = a5;
  *(a1 + 20) = a6;
  *(a1 + 24) = 0x300000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  return a1;
}

uint64_t sub_10067DF0C(uint64_t a1, unsigned int a2)
{
  v4 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    v5 = off_100B05178[*(a1 + 32)];
    v6 = a2;
    v7 = off_100B05178[a2];
    v8 = off_100B051C0[*(a1 + 48)];
    v9 = *(a1 + 8);
    v11 = 136446978;
    v12 = v5;
    v13 = 2082;
    v14 = v7;
    v15 = 2082;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Protocol state change (P: %{public}s => %{public}s / L: %{public}s) for device %{public}@", &v11, 0x2Au);
  }

  else
  {
    v6 = a2;
  }

  *(a1 + 32) = a2;
  return qword_1008AAC98[v6];
}

uint64_t sub_10067E020(uint64_t a1, unsigned int a2)
{
  v4 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    v5 = off_100B05178[*(a1 + 32)];
    v6 = off_100B051C0[*(a1 + 48)];
    v7 = a2;
    v8 = off_100B051C0[a2];
    v9 = *(a1 + 8);
    v11 = 136446978;
    v12 = v5;
    v13 = 2082;
    v14 = v6;
    v15 = 2082;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Link state change (P: %{public}s / L: %{public}s => %{public}s) for device %{public}@", &v11, 0x2Au);
  }

  else
  {
    v7 = a2;
  }

  *(a1 + 48) = a2;
  return qword_1008AACE0[v7];
}

void sub_10067E134(uint64_t a1)
{
  v2 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    v3 = off_100B05178[*(a1 + 32)];
    v4 = off_100B051C0[*(a1 + 48)];
    v5 = *(a1 + 8);
    v6 = 136446722;
    v7 = v3;
    v8 = 2082;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: State is (P: %{public}s / L: %{public}s) for device %{public}@", &v6, 0x20u);
  }
}

__n128 sub_10067E214(uint64_t a1, uint64_t a2, int a3, _OWORD *a4, _OWORD *a5, int a6, __n128 *a7, __n128 *a8)
{
  *(a1 + 8) = 1;
  *a1 = &off_100B051F0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a6;
  *(a1 + 92) = a3;
  if (!a3)
  {
    *(a1 + 44) = *a4;
    *(a1 + 28) = *a5;
    result = *a7;
    *(a1 + 60) = *a7;
    if (a8)
    {
      result = *a8;
      *(a1 + 76) = *a8;
    }
  }

  return result;
}

void sub_10067E274(uint64_t a1)
{
  if (qword_100B50AB0 != -1)
  {
    sub_10085BF58();
  }

  v2 = off_100B50AA8;
  v3 = *(a1 + 16);
  v4 = *(a1 + 92);
  v5 = *(a1 + 24);

  sub_100567388(v2, v3, v4, a1 + 44, (a1 + 28), v5, (a1 + 60));
}

uint64_t sub_10067E360(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 8;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0u;
  v5 = (a1 + 40);
  *(a1 + 88) = 0u;
  v6 = (a1 + 88);
  *(a1 + 116) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 120) = 1;
  *(a1 + 124) = 0;
  sub_10069EDF0(a1 + 136);
  sub_10069EDF0(a1 + 560);
  sub_100007E30((a1 + 984), "UNKNOWN");
  v77 = 0;
  memset(v76, 0, sizeof(v76));
  v74 = 0u;
  *__src = 0u;
  sub_10069EDF0(&v74);
  v73 = 0;
  v71 = 0u;
  memset(v72, 0, sizeof(v72));
  sub_10069EDF0(&v71);
  value = xpc_dictionary_get_value(a2, "kMessageGUID");
  v8 = value;
  if (value && xpc_get_type(value) == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(v8);
    std::string::assign(v4, string_ptr);
  }

  v10 = xpc_dictionary_get_value(a2, "kBody");
  v11 = v10;
  if (v10 && xpc_get_type(v10) == &_xpc_type_string)
  {
    v12 = xpc_string_get_string_ptr(v11);
    std::string::assign(v6, v12);
    *(a1 + 112) = strlen(v12);
  }

  v13 = xpc_dictionary_get_value(a2, "kSubject");
  v14 = v13;
  if (v13 && xpc_get_type(v13) == &_xpc_type_string)
  {
    v15 = xpc_string_get_string_ptr(v14);
    std::string::assign((v4 + 56), v15);
  }

  v16 = xpc_dictionary_get_value(a2, "kSenderFormattedName");
  v17 = v16;
  if (v16)
  {
    if (xpc_get_type(v16) == &_xpc_type_string)
    {
      v36 = xpc_string_get_string_ptr(v17);
      if (v36)
      {
        sub_100007E30(&v70, v36);
        std::string::operator=(__src, &v70);
        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v18 = xpc_dictionary_get_value(a2, "kSenderEmail");
  v19 = v18;
  if (v18 && xpc_get_type(v18) == &_xpc_type_string)
  {
    v37 = xpc_string_get_string_ptr(v19);
    if (v37)
    {
      memset(v64, 0, 24);
      std::string::assign(v64, v37);
      if ((v64[23] & 0x80000000) != 0)
      {
        sub_100008904(__dst, *v64, *&v64[8]);
      }

      else
      {
        *__dst = *v64;
        v69 = *&v64[16];
      }

      sub_1004384F4(&v76[15] + 1, __dst);
      if (SHIBYTE(v69) < 0)
      {
        operator delete(__dst[0]);
      }

      if ((v64[23] & 0x80000000) != 0)
      {
        operator delete(*v64);
      }
    }

    if (SBYTE7(v76[0]) < 0)
    {
      sub_100008904(v64, __src[0], __src[1]);
    }

    else
    {
      *v64 = *__src;
      *&v64[16] = *&v76[0];
    }

    if ((v64[23] & 0x80000000) != 0)
    {
      v42 = *&v64[8];
      operator delete(*v64);
      if (!v37 || v42)
      {
        goto LABEL_14;
      }
    }

    else if (!v37 || v64[23])
    {
      goto LABEL_14;
    }

    sub_100007E30(&v67, v37);
    std::string::operator=(__src, &v67);
    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }
  }

LABEL_14:
  v20 = xpc_dictionary_get_value(a2, "kSenderPhoneNumber");
  v21 = v20;
  if (!v20 || xpc_get_type(v20) != &_xpc_type_string)
  {
    goto LABEL_16;
  }

  v38 = xpc_string_get_string_ptr(v21);
  if (v38)
  {
    v66 = 0;
    *v65 = 0u;
    memset(v64, 0, sizeof(v64));
    std::string::assign(v64, v38);
    if ((v64[23] & 0x80000000) != 0)
    {
      sub_100008904(v59, *v64, *&v64[8]);
    }

    else
    {
      *v59 = *v64;
      v60 = *&v64[16];
    }

    v61 = *&v64[24];
    if (SHIBYTE(v66) < 0)
    {
      sub_100008904(&v62, v65[0], v65[1]);
    }

    else
    {
      v62 = *v65;
      v63 = v66;
    }

    sub_100437C00(&v76[12] + 1, v59);
    if (SHIBYTE(v63) < 0)
    {
      operator delete(v62);
    }

    if (SHIBYTE(v60) < 0)
    {
      operator delete(v59[0]);
    }

    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65[0]);
    }

    if ((v64[23] & 0x80000000) != 0)
    {
      operator delete(*v64);
    }
  }

  if (SBYTE7(v76[0]) < 0)
  {
    sub_100008904(v64, __src[0], __src[1]);
  }

  else
  {
    *v64 = *__src;
    *&v64[16] = *&v76[0];
  }

  if ((v64[23] & 0x80000000) != 0)
  {
    v43 = *&v64[8];
    operator delete(*v64);
    if (!v38 || v43)
    {
      goto LABEL_16;
    }
  }

  else if (!v38 || v64[23])
  {
    goto LABEL_16;
  }

  sub_100007E30(&v58, v38);
  std::string::operator=(__src, &v58);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

LABEL_16:
  if (SBYTE7(v76[0]) < 0)
  {
    sub_100008904(&__str, __src[0], __src[1]);
  }

  else
  {
    *&__str.__r_.__value_.__l.__data_ = *__src;
    __str.__r_.__value_.__r.__words[2] = *&v76[0];
  }

  std::string::operator=((v76 + 8), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v22 = xpc_dictionary_get_value(a2, "kRecipientFormattedName");
  v23 = v22;
  if (v22)
  {
    if (xpc_get_type(v22) == &_xpc_type_string)
    {
      v39 = xpc_string_get_string_ptr(v23);
      if (v39)
      {
        sub_100007E30(&v56, v39);
        std::string::operator=(v72, &v56);
        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v56.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v24 = xpc_dictionary_get_value(a2, "kRecipientEmail");
  v25 = v24;
  if (v24 && xpc_get_type(v24) == &_xpc_type_string)
  {
    v40 = xpc_string_get_string_ptr(v25);
    if (v40)
    {
      memset(v64, 0, 24);
      std::string::assign(v64, v40);
      if ((v64[23] & 0x80000000) != 0)
      {
        sub_100008904(v54, *v64, *&v64[8]);
      }

      else
      {
        *v54 = *v64;
        v55 = *&v64[16];
      }

      sub_1004384F4(&v72[264], v54);
      if (SHIBYTE(v55) < 0)
      {
        operator delete(v54[0]);
      }

      if ((v64[23] & 0x80000000) != 0)
      {
        operator delete(*v64);
      }
    }

    if ((v72[23] & 0x80000000) != 0)
    {
      sub_100008904(v64, *v72, *&v72[8]);
    }

    else
    {
      *v64 = *v72;
      *&v64[16] = *&v72[16];
    }

    if ((v64[23] & 0x80000000) != 0)
    {
      v44 = *&v64[8];
      operator delete(*v64);
      if (!v40 || v44)
      {
        goto LABEL_25;
      }
    }

    else if (!v40 || v64[23])
    {
      goto LABEL_25;
    }

    sub_100007E30(&v53, v40);
    std::string::operator=(v72, &v53);
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }
  }

LABEL_25:
  v26 = xpc_dictionary_get_value(a2, "kRecipientPhoneNumber");
  v27 = v26;
  if (!v26 || xpc_get_type(v26) != &_xpc_type_string)
  {
    goto LABEL_27;
  }

  v41 = xpc_string_get_string_ptr(v27);
  if (v41)
  {
    v66 = 0;
    *v65 = 0u;
    memset(v64, 0, sizeof(v64));
    std::string::assign(v64, v41);
    if ((v64[23] & 0x80000000) != 0)
    {
      sub_100008904(v48, *v64, *&v64[8]);
    }

    else
    {
      *v48 = *v64;
      v49 = *&v64[16];
    }

    v50 = *&v64[24];
    if (SHIBYTE(v66) < 0)
    {
      sub_100008904(&v51, v65[0], v65[1]);
    }

    else
    {
      v51 = *v65;
      v52 = v66;
    }

    sub_100437C00(&v72[216], v48);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(v48[0]);
    }

    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65[0]);
    }

    if ((v64[23] & 0x80000000) != 0)
    {
      operator delete(*v64);
    }
  }

  if ((v72[23] & 0x80000000) != 0)
  {
    sub_100008904(v64, *v72, *&v72[8]);
  }

  else
  {
    *v64 = *v72;
    *&v64[16] = *&v72[16];
  }

  if ((v64[23] & 0x80000000) != 0)
  {
    v45 = *&v64[8];
    operator delete(*v64);
    if (!v41 || v45)
    {
      goto LABEL_27;
    }
  }

  else if (!v41 || v64[23])
  {
    goto LABEL_27;
  }

  sub_100007E30(&v47, v41);
  std::string::operator=(v72, &v47);
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

LABEL_27:
  if ((v72[23] & 0x80000000) != 0)
  {
    sub_100008904(&__p, *v72, *&v72[8]);
  }

  else
  {
    __p = *v72;
  }

  std::string::operator=(&v72[24], &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v28 = xpc_dictionary_get_value(a2, "kMessageId");
  v29 = v28;
  if (v28 && xpc_get_type(v28) == &_xpc_type_int64)
  {
    *(a1 + 128) = xpc_int64_get_value(v29);
  }

  v30 = xpc_dictionary_get_value(a2, "kAppType");
  v31 = v30;
  if (v30 && xpc_get_type(v30) == &_xpc_type_string)
  {
    v32 = xpc_string_get_string_ptr(v31);
    std::string::assign(v5, v32);
  }

  v33 = xpc_dictionary_get_value(a2, "kIsRead");
  v34 = v33;
  if (v33 && xpc_get_type(v33) == &_xpc_type_BOOL)
  {
    *(a1 + 122) = xpc_BOOL_get_value(v34);
  }

  *(a1 + 32) = xpc_dictionary_get_date(a2, "kDate") / 0x3B9ACA00uLL;
  sub_10067EF60(v4 + 128, &v74);
  sub_10067EF60(a1 + 560, &v71);
  *(a1 + 123) = 0;
  sub_10069F44C(&v71);
  sub_10069F44C(&v74);
  return a1;
}

void sub_10067ED38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1000DA6C8(&a48);
  sub_10069F44C(&a64);
  sub_10069F44C(&STACK[0x350]);
  if (v64[1007] < 0)
  {
    operator delete(*v68);
  }

  sub_10069F44C((v64 + 560));
  sub_10069F44C((v65 + 16));
  if (v64[111] < 0)
  {
    operator delete(*v67);
  }

  if (v64[87] < 0)
  {
    operator delete(v65[7]);
  }

  if (v64[63] < 0)
  {
    operator delete(*v66);
  }

  if (v64[31] < 0)
  {
    operator delete(*v65);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10067EF60(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  std::string::operator=((a1 + 16), (a2 + 16));
  std::string::operator=((a1 + 40), (a2 + 40));
  std::string::operator=((a1 + 64), (a2 + 64));
  std::string::operator=((a1 + 88), (a2 + 88));
  std::string::operator=((a1 + 112), (a2 + 112));
  std::string::operator=((a1 + 136), (a2 + 136));
  std::string::operator=((a1 + 160), (a2 + 160));
  std::string::operator=((a1 + 184), (a2 + 184));
  std::string::operator=((a1 + 208), (a2 + 208));
  if (a1 == a2)
  {
    std::string::operator=((a1 + 304), (a2 + 304));
    std::string::operator=((a1 + 328), (a2 + 328));
    std::string::operator=((a1 + 352), (a2 + 352));
  }

  else
  {
    sub_10068010C((a1 + 232), *(a2 + 232), *(a2 + 240), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 240) - *(a2 + 232)) >> 3));
    sub_100680498((a1 + 256), *(a2 + 256), *(a2 + 264), (*(a2 + 264) - *(a2 + 256)) >> 7);
    sub_1006807AC((a1 + 280), *(a2 + 280), *(a2 + 288), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 288) - *(a2 + 280)) >> 3));
    std::string::operator=((a1 + 304), (a2 + 304));
    std::string::operator=((a1 + 328), (a2 + 328));
    std::string::operator=((a1 + 352), (a2 + 352));
    sub_10068094C((a1 + 376), *(a2 + 376), *(a2 + 384), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 384) - *(a2 + 376)) >> 3));
  }

  std::string::operator=((a1 + 400), (a2 + 400));
  return a1;
}

uint64_t sub_10067F0DC(uint64_t a1, const std::string *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 8;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  v5 = (a1 + 88);
  *(a1 + 116) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 120) = 1;
  *(a1 + 124) = 0;
  sub_10069EDF0(a1 + 136);
  sub_10069EDF0(a1 + 560);
  sub_100007E30((a1 + 984), "UNKNOWN");
  memset(&v115, 0, sizeof(v115));
  memset(&v114, 0, sizeof(v114));
  memset(&v113, 0, sizeof(v113));
  memset(&v112, 0, sizeof(v112));
  v6 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v6 < 0)
  {
    size = a2->__r_.__value_.__l.__size_;
    if (size)
    {
      v7 = a2->__r_.__value_.__r.__words[0];
      goto LABEL_6;
    }

LABEL_182:
    *a1 = ++qword_100B54D40;
    *(a1 + 32) = time(0);
    std::string::operator=(v5, &v115);
    v85 = *(a1 + 111);
    if (v85 < 0)
    {
      v85 = *(a1 + 96);
    }

    *(a1 + 112) = v85;
    v110 = 0;
    memset(__str, 0, sizeof(__str));
    sub_10069EDF0(__str);
    v86 = SHIBYTE(v114.__r_.__value_.__r.__words[2]);
    if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v87 = SHIBYTE(v114.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v87 = v114.__r_.__value_.__l.__size_;
    }

    v88 = &v114;
    if (!v87)
    {
      v88 = &v113;
    }

    v89 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
    if (v87)
    {
      v89 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
    }

    if (v89 < 0)
    {
      if (v87)
      {
        v90 = v114.__r_.__value_.__l.__size_;
      }

      else
      {
        v90 = v113.__r_.__value_.__l.__size_;
      }

      sub_100008904(&__dst, v88->__r_.__value_.__l.__data_, v90);
    }

    else
    {
      __dst = *v88;
    }

    std::string::operator=(&__str[16], &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v91 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
    if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v91 = v113.__r_.__value_.__l.__size_;
    }

    if (v91)
    {
      v107 = 0;
      *v106 = 0u;
      memset(v105, 0, sizeof(v105));
      std::string::operator=(v105, &v113);
      if ((v105[23] & 0x80000000) != 0)
      {
        sub_100008904(v100, *v105, *&v105[8]);
      }

      else
      {
        *v100 = *v105;
        v101 = *&v105[16];
      }

      v102 = *&v105[24];
      if (SHIBYTE(v107) < 0)
      {
        sub_100008904(&v103, v106[0], v106[1]);
      }

      else
      {
        v103 = *v106;
        v104 = v107;
      }

      sub_100437C00(&__str[232], v100);
      if (SHIBYTE(v104) < 0)
      {
        operator delete(v103);
      }

      if (SHIBYTE(v101) < 0)
      {
        operator delete(v100[0]);
      }

      if (SHIBYTE(v107) < 0)
      {
        operator delete(v106[0]);
      }

      if ((v105[23] & 0x80000000) != 0)
      {
        operator delete(*v105);
      }
    }

    v92 = HIBYTE(v112.__r_.__value_.__r.__words[2]);
    if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v92 = v112.__r_.__value_.__l.__size_;
    }

    if (v92)
    {
      memset(v105, 0, 24);
      std::string::operator=(v105, &v112);
      if ((v105[23] & 0x80000000) != 0)
      {
        sub_100008904(v98, *v105, *&v105[8]);
      }

      else
      {
        *v98 = *v105;
        v99 = *&v105[16];
      }

      sub_1004384F4(&__str[280], v98);
      if (SHIBYTE(v99) < 0)
      {
        operator delete(v98[0]);
      }

      if ((v105[23] & 0x80000000) != 0)
      {
        operator delete(*v105);
      }
    }

    sub_10067EF60(v4 + 128, __str);
    v19 = v86 >> 63;
    sub_10069F44C(__str);
    goto LABEL_227;
  }

  if (!*(&a2->__r_.__value_.__s + 23))
  {
    goto LABEL_182;
  }

  v7 = a2;
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
LABEL_6:
  v9 = v7 + size;
  if (size >= 9)
  {
    v10 = v7;
    do
    {
      v11 = memchr(v10, 66, size - 8);
      if (!v11)
      {
        break;
      }

      if (*v11 == 0x534D3A4E49474542 && v11[8] == 71)
      {
        goto LABEL_15;
      }

      v10 = (v11 + 1);
      size = v9 - v10;
    }

    while (v9 - v10 > 8);
  }

  v11 = v9;
LABEL_15:
  if (v11 == v9)
  {
    v13 = -1;
  }

  else
  {
    v13 = v11 - v7;
  }

  if ((v6 & 0x80000000) != 0)
  {
    v14 = a2->__r_.__value_.__r.__words[0];
    v6 = a2->__r_.__value_.__l.__size_;
  }

  else
  {
    v14 = a2;
  }

  if (v6 >= 9)
  {
    v15 = v14 + v6;
    v16 = v14;
    do
    {
      v17 = memchr(v16, 13, v6 - 8);
      if (!v17)
      {
        break;
      }

      if (*v17 == 0x534D3A444E450A0DLL && v17[8] == 71)
      {
        LODWORD(v19) = 0;
        v20 = v17 - v14;
        if (v17 == v15)
        {
          v20 = -1;
        }

        if (v13 == -1 || v20 == -1)
        {
          goto LABEL_227;
        }

        std::string::basic_string(__str, a2, v13 + 11, v20 - (v13 + 11), v105);
        if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v115.__r_.__value_.__l.__data_);
        }

        v115 = *__str;
        v21 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
        if (v21 < 0)
        {
          v22 = a2->__r_.__value_.__r.__words[0];
          v23 = a2->__r_.__value_.__l.__size_;
        }

        else
        {
          v22 = a2;
          v23 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
        }

        v24 = v22 + v23;
        if (v23 >= 10)
        {
          v26 = v22;
          do
          {
            v25 = memchr(v26, 66, v23 - 9);
            if (!v25)
            {
              break;
            }

            if (*v25 == 0x45423A4E49474542 && *(v25 + 4) == 22094)
            {
              goto LABEL_49;
            }

            v26 = (v25 + 1);
            v23 = v24 - v26;
          }

          while (v24 - v26 > 9);
          v25 = v24;
        }

        else
        {
          v25 = v22 + v23;
        }

LABEL_49:
        v28 = v25 - v22;
        if (v25 == v24)
        {
          v28 = -1;
        }

        if ((v21 & 0x80000000) != 0)
        {
          v29 = a2->__r_.__value_.__r.__words[0];
          v21 = a2->__r_.__value_.__l.__size_;
        }

        else
        {
          v29 = a2;
        }

        if (v21 >= 8)
        {
          __p = v28;
          v30 = v29 + v21;
          v31 = v29;
          while (1)
          {
            v32 = memchr(v31, 69, v21 - 7);
            if (!v32)
            {
              break;
            }

            if (*v32 == 0x564E45423A444E45)
            {
              LODWORD(v19) = 0;
              v33 = v32 - v29;
              if (v32 == v30)
              {
                v33 = -1;
              }

              if (__p == -1 || v33 == -1)
              {
                goto LABEL_227;
              }

              memset(__str, 0, 24);
              std::string::basic_string(__str, a2, __p + 12, v33 - (__p + 12), v105);
              v34 = __str[23];
              if (__str[23] >= 0)
              {
                v35 = __str;
              }

              else
              {
                v35 = *__str;
              }

              if (__str[23] >= 0)
              {
                v36 = __str[23];
              }

              else
              {
                v36 = *&__str[8];
              }

              v37 = &v35[v36];
              __pa = *__str;
              if (v36 >= 11)
              {
                v39 = v36;
                v40 = v35;
                do
                {
                  v38 = memchr(v40, 66, v39 - 10);
                  if (!v38)
                  {
                    break;
                  }

                  if (*v38 == 0x43563A4E49474542 && *(v38 + 3) == 0x44524143563A4E49)
                  {
                    goto LABEL_81;
                  }

                  v40 = v38 + 1;
                  v39 = v37 - v40;
                }

                while (v37 - v40 > 10);
                v38 = &v35[v36];
              }

              else
              {
                v38 = &v35[v36];
              }

LABEL_81:
              v42 = v38 - v35;
              if (v38 == v37)
              {
                v42 = -1;
              }

              v94 = v42;
              if (v36 >= 9)
              {
                v43 = v35;
                do
                {
                  v44 = memchr(v43, 69, v36 - 8);
                  if (!v44)
                  {
                    break;
                  }

                  if (*v44 == 0x524143563A444E45 && v44[8] == 68)
                  {
                    v46 = v44 - v35;
                    if (v44 == v37)
                    {
                      v46 = -1;
                    }

                    if (v94 == -1 || v46 == -1)
                    {
                      break;
                    }

                    memset(v105, 0, 24);
                    std::string::basic_string(v105, __str, v94 + 13, v46 - (v94 + 13), &v111);
                    if (v105[23] >= 0)
                    {
                      v47 = v105;
                    }

                    else
                    {
                      v47 = *v105;
                    }

                    if (v105[23] >= 0)
                    {
                      v48 = v105[23];
                    }

                    else
                    {
                      v48 = *&v105[8];
                    }

                    v49 = &v47[v48];
                    if (v48 >= 4)
                    {
                      v50 = v48;
                      v51 = v47;
                      do
                      {
                        v52 = memchr(v51, 13, v50 - 3);
                        if (!v52)
                        {
                          break;
                        }

                        if (*v52 == 978192909)
                        {
                          goto LABEL_108;
                        }

                        v51 = v52 + 1;
                        v50 = v49 - v51;
                      }

                      while (v49 - v51 > 3);
                    }

                    v52 = &v47[v48];
LABEL_108:
                    if (v52 == v49)
                    {
                      v53 = 3;
                    }

                    else
                    {
                      v53 = v52 - v47 + 4;
                    }

                    v54 = v48 - v53;
                    if (v48 >= v53)
                    {
                      if (v54 >= 2)
                      {
                        v57 = &v47[v53];
                        do
                        {
                          v56 = memchr(v57, 13, v54 - 1);
                          if (!v56)
                          {
                            break;
                          }

                          if (*v56 == 2573)
                          {
                            goto LABEL_122;
                          }

                          v57 = v56 + 1;
                          v54 = v49 - v57;
                        }

                        while (v49 - v57 > 1);
                        v56 = &v47[v48];
                      }

                      else
                      {
                        v56 = &v47[v48];
                      }

LABEL_122:
                      v55 = v56 - v47;
                      if (v56 == v49)
                      {
                        v55 = -1;
                      }
                    }

                    else
                    {
                      v55 = -1;
                    }

                    std::string::basic_string(&v111, v105, v53, v55 - v53, v116);
                    v58 = v105[23];
                    v60 = *v105;
                    v59 = *&v105[8];
                    v114 = v111;
                    if (v105[23] >= 0)
                    {
                      v61 = v105;
                    }

                    else
                    {
                      v61 = *v105;
                    }

                    if (v105[23] >= 0)
                    {
                      v62 = v105[23];
                    }

                    else
                    {
                      v62 = *&v105[8];
                    }

                    if (v62 >= 4)
                    {
                      v63 = &v61[v62];
                      v64 = v62;
                      __pb = v61;
                      do
                      {
                        v65 = memchr(v61, 84, v64 - 3);
                        if (!v65)
                        {
                          break;
                        }

                        if (*v65 == 978077012)
                        {
                          if (v65 != v63)
                          {
                            v66 = v65 - __pb;
                            if (v65 - __pb != -1)
                            {
                              v67 = v66 + 4;
                              v68 = v62 >= (v66 + 4);
                              v69 = v62 - (v66 + 4);
                              if (v68)
                              {
                                if (v69 >= 2)
                                {
                                  v71 = &__pb[v67];
                                  do
                                  {
                                    v72 = memchr(v71, 13, v69 - 1);
                                    if (!v72)
                                    {
                                      break;
                                    }

                                    if (*v72 == 2573)
                                    {
                                      goto LABEL_146;
                                    }

                                    v71 = v72 + 1;
                                    v69 = v63 - v71;
                                  }

                                  while (v63 - v71 > 1);
                                }

                                v72 = v63;
LABEL_146:
                                v70 = v72 - __pb;
                                if (v72 == v63)
                                {
                                  v70 = -1;
                                }
                              }

                              else
                              {
                                v70 = -1;
                              }

                              std::string::basic_string(&v111, v105, v67, v70 - v67, v116);
                              if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v113.__r_.__value_.__l.__data_);
                              }

                              v113 = v111;
                              v58 = v105[23];
                              v60 = *v105;
                              v59 = *&v105[8];
                            }
                          }

                          break;
                        }

                        v61 = v65 + 1;
                        v64 = v63 - v61;
                      }

                      while (v63 - v61 >= 4);
                    }

                    if ((v58 & 0x80u) != 0)
                    {
                      v73 = v59;
                    }

                    else
                    {
                      v60 = v105;
                      v73 = v58;
                    }

                    if (v73 >= 6)
                    {
                      v74 = &v60[v73];
                      v75 = v73;
                      v76 = v60;
                      do
                      {
                        v77 = memchr(v76, 69, v75 - 5);
                        if (!v77)
                        {
                          break;
                        }

                        if (*v77 == 1229016389 && *(v77 + 2) == 14924)
                        {
                          if (v77 != v74)
                          {
                            v79 = v77 - v60;
                            if (v77 - v60 != -1)
                            {
                              v80 = v79 + 8;
                              v68 = v73 >= (v79 + 8);
                              v81 = v73 - (v79 + 8);
                              if (v68)
                              {
                                if (v81 >= 2)
                                {
                                  v83 = &v60[v80];
                                  do
                                  {
                                    v84 = memchr(v83, 13, v81 - 1);
                                    if (!v84)
                                    {
                                      break;
                                    }

                                    if (*v84 == 2573)
                                    {
                                      goto LABEL_173;
                                    }

                                    v83 = v84 + 1;
                                    v81 = v74 - v83;
                                  }

                                  while (v74 - v83 > 1);
                                }

                                v84 = &v60[v73];
LABEL_173:
                                v82 = v84 - v60;
                                if (v84 == v74)
                                {
                                  v82 = -1;
                                }
                              }

                              else
                              {
                                v82 = -1;
                              }

                              std::string::basic_string(&v111, v105, v80, v82 - v80, v116);
                              if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v112.__r_.__value_.__l.__data_);
                              }

                              v112 = v111;
                              LOBYTE(v58) = v105[23];
                            }
                          }

                          break;
                        }

                        v76 = v77 + 1;
                        v75 = v74 - v76;
                      }

                      while (v74 - v76 >= 6);
                    }

                    if ((v58 & 0x80) != 0)
                    {
                      operator delete(*v105);
                    }

                    if ((__str[23] & 0x80000000) != 0)
                    {
                      operator delete(*__str);
                    }

                    goto LABEL_182;
                  }

                  v43 = v44 + 1;
                  v36 = v37 - v43;
                }

                while (v37 - v43 >= 9);
              }

              if (v34 < 0)
              {
                operator delete(__pa);
              }

              goto LABEL_55;
            }

            LODWORD(v19) = 0;
            v31 = (v32 + 1);
            v21 = v30 - v31;
            if (v30 - v31 < 8)
            {
              goto LABEL_227;
            }
          }
        }

        break;
      }

      v16 = (v17 + 1);
      v6 = v15 - v16;
    }

    while (v15 - v16 >= 9);
  }

LABEL_55:
  LODWORD(v19) = 0;
LABEL_227:
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v19)
    {
      goto LABEL_232;
    }

    goto LABEL_231;
  }

  operator delete(v113.__r_.__value_.__l.__data_);
  if (v19)
  {
LABEL_231:
    operator delete(v114.__r_.__value_.__l.__data_);
  }

LABEL_232:
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v115.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_10067FBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, void **a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (*(v57 - 201) < 0)
  {
    operator delete(*(v57 - 224));
  }

  if (*(v57 - 169) < 0)
  {
    operator delete(*(v57 - 192));
  }

  if (*(v57 - 137) < 0)
  {
    operator delete(*(v57 - 160));
  }

  if (*(v57 - 105) < 0)
  {
    operator delete(*(v57 - 128));
  }

  if (*(v54 + 1007) < 0)
  {
    operator delete(*a12);
  }

  sub_10069F44C(v54 + 560);
  sub_10069F44C((v56 + 16));
  if (*(v54 + 111) < 0)
  {
    operator delete(*v55);
  }

  if (*(v54 + 87) < 0)
  {
    operator delete(*(v54 + 64));
  }

  if (*(v54 + 63) < 0)
  {
    operator delete(*a11);
  }

  if (*(v54 + 31) < 0)
  {
    operator delete(*v56);
  }

  _Unwind_Resume(a1);
}

void sub_10067FDA4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 39) < 0)
  {
    sub_100008904(__dst, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *__dst = *(a1 + 16);
    *&v17 = *(a1 + 32);
  }

  if (SBYTE7(v17) < 0)
  {
    v4 = __dst[1];
    operator delete(__dst[0]);
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (BYTE7(v17))
  {
LABEL_6:
    sub_1006A1690(a1, 0, 391, 0);
    return;
  }

  v19 = 0;
  v17 = 0u;
  *__p = 0u;
  *__dst = 0u;
  sub_10042A6A4(a1, 0, __dst);
  std::operator+<char>();
  v5 = std::string::append(&v13, "\r\nTEL;CHARSET=UTF-8:");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if ((SBYTE7(v17) & 0x80u) == 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst[0];
  }

  if ((SBYTE7(v17) & 0x80u) == 0)
  {
    v8 = BYTE7(v17);
  }

  else
  {
    v8 = __dst[1];
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v15, "\r\nEND:VCARD\r\n");
  v12 = *&v11->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&v11->__r_.__value_.__l + 2);
  *a2 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v17) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_10067FF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_1000DA6C8(&a30);
  _Unwind_Resume(a1);
}

uint64_t sub_10067FFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10069F12C(v4, a1 + 136);
  sub_10067FDA4(v4, a2);
  return sub_10069F44C(v4);
}

void sub_10067FFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10069F44C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100680000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10069F12C(v4, a1 + 560);
  sub_10067FDA4(v4, a2);
  return sub_10069F44C(v4);
}

void sub_10068004C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10069F44C(va);
  _Unwind_Resume(a1);
}

void *sub_100680060@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v9 = 0;
  v10[0] = 0;
  *(v10 + 5) = 0;
  v5 = localtime((a1 + 32));
  if (a2)
  {
    v6 = "%Y%m%dT%H%M%S%z";
    v7 = 21;
  }

  else
  {
    v6 = "%Y%m%dT%H%M%S";
    v7 = 16;
  }

  strftime(&v9, v7, v6, v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return sub_100007E30(a3, &v9);
}

void sub_10068010C(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_10068028C(a1);
    if (a4 <= 0x492492492492492)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
      {
        v10 = 0x492492492492492;
      }

      else
      {
        v10 = v9;
      }

      sub_1006802F8(a1, v10);
    }

    sub_1000C7698();
  }

  v11 = a1[1] - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v11 >> 3) >= a4)
  {
    sub_100680420(&v16, __str, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v14 = (v14 - 56);
        sub_100437FA4(a1, v14);
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    sub_100680420(&v15, __str, (__str + v11), v8);
    a1[1] = sub_100680348(a1, __str + v11, a3, a1[1]);
  }
}

void sub_10068028C(char **a1)
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
        v3 -= 56;
        sub_100437FA4(a1, v3);
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

void sub_1006802F8(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_100437EA4(a1, a2);
  }

  sub_1000C7698();
}

uint64_t sub_100680348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        sub_100008904(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      v11 = a4 + v7;
      v12 = a2 + v7;
      *(a4 + v7 + 24) = *(a2 + v7 + 24);
      if (*(a2 + v7 + 55) < 0)
      {
        sub_100008904((v11 + 32), *(v12 + 32), *(v12 + 40));
      }

      else
      {
        v13 = *(v12 + 32);
        *(v11 + 48) = *(v12 + 48);
        *(v11 + 32) = v13;
      }

      v7 += 56;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_100680400(_Unwind_Exception *exception_object)
{
  if (*(v1 + v2 + 23) < 0)
  {
    operator delete(*(v1 + v2));
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100680420(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    LODWORD(this[1].__r_.__value_.__l.__data_) = v5[1].__r_.__value_.__l.__data_;
    std::string::operator=((this + 32), (v5 + 32));
    this = (this + 56);
    v5 = (v5 + 56);
  }

  while (v5 != v6);
  return v6;
}

void sub_100680498(uint64_t *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (a1[2] - *a1) >> 7)
  {
    sub_1006805F8(a1);
    if (!(a4 >> 57))
    {
      v8 = a1[2] - *a1;
      v9 = v8 >> 6;
      if (v8 >> 6 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFF80)
      {
        v10 = 0x1FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100680638(a1, v10);
    }

    sub_1000C7698();
  }

  v11 = a1[1] - v7;
  if (a4 <= v11 >> 7)
  {
    sub_100680674(&v18, __str, a3, v7);
    sub_100680710(a1, v16);
  }

  else
  {
    v12 = (__str + v11);
    sub_100680674(&v17, __str, (__str + v11), v7);
    if (v12 == a3)
    {
      v13 = a1[1];
    }

    else
    {
      v13 = a1[1];
      v14 = v13;
      do
      {
        v15 = sub_100438398(v14, v12);
        v12 += 8;
        v14 = v15 + 128;
        v13 += 128;
      }

      while (v12 != a3);
    }

    a1[1] = v13;
  }
}

void sub_1006805F8(uint64_t a1)
{
  if (*a1)
  {
    sub_100680710(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_100680638(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    sub_100438188(a1, a2);
  }

  sub_1000C7698();
}

std::string *sub_100680674(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    std::string::operator=(this + 2, v5 + 2);
    std::string::operator=(this + 3, v5 + 3);
    std::string::operator=(this + 4, v5 + 4);
    LODWORD(this[5].__r_.__value_.__l.__data_) = v5[5].__r_.__value_.__l.__data_;
    this = (this + 128);
    v5 = (v5 + 128);
  }

  while (v5 != v6);
  return v6;
}

void sub_100680710(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      if (*(v4 - 9) < 0)
      {
        operator delete(*(v4 - 4));
      }

      if (*(v4 - 33) < 0)
      {
        operator delete(*(v4 - 7));
      }

      if (*(v4 - 57) < 0)
      {
        operator delete(*(v4 - 10));
      }

      if (*(v4 - 81) < 0)
      {
        operator delete(*(v4 - 13));
      }

      v5 = v4 - 16;
      if (*(v4 - 105) < 0)
      {
        operator delete(*v5);
      }

      v4 -= 16;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

void sub_1006807AC(uint64_t *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_10003E3E8(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_10035FD6C(a1, v10);
    }

    sub_1000C7698();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_1000DFE5C(a1, (v6 + v12), a3, v11);
  }
}

void sub_10068094C(uint64_t *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_10003E3E8(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_10035FD6C(a1, v10);
    }

    sub_1000C7698();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_1000DFE5C(a1, (v6 + v12), a3, v11);
  }
}

uint64_t sub_100680AEC(uint64_t a1)
{
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  sub_100008760(&v11);
  if (*(a1 + 120) == 1)
  {
    sub_100007774(&v11, "LENGTH:", 7);
    if (*(a1 + 111) < 0)
    {
      sub_100008904(__p, *(a1 + 88), *(a1 + 96));
    }

    else
    {
      *__p = *(a1 + 88);
      v10 = *(a1 + 104);
    }

    v2 = std::ostream::operator<<();
    sub_100007774(v2, "\r\n", 2);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    v3 = sub_100007774(&v11, "BEGIN:MSG", 9);
    sub_100007774(v3, "\r\n", 2);
    if (*(a1 + 111) < 0)
    {
      sub_100008904(__p, *(a1 + 88), *(a1 + 96));
    }

    else
    {
      *__p = *(a1 + 88);
      v10 = *(a1 + 104);
    }

    if (v10 >= 0)
    {
      v4 = __p;
    }

    else
    {
      LODWORD(v4) = __p[0];
    }

    if (v10 >= 0)
    {
      v5 = HIBYTE(v10);
    }

    else
    {
      v5 = __p[1];
    }

    v6 = sub_100007774(&v11, v4, v5);
    sub_100007774(v6, "\r\n", 2);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    v7 = sub_100007774(&v11, "END:MSG", 7);
    sub_100007774(v7, "\r\n", 2);
  }

  std::stringbuf::str();
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[1]);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_100680DD8(uint64_t a1, char a2)
{
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  *v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  memset(v33, 0, sizeof(v33));
  sub_100008760(&v32);
  v4 = sub_100007774(&v32, "BEGIN:BMSG", 10);
  sub_100007774(v4, "\r\n", 2);
  v5 = sub_100007774(&v32, "VERSION:1.0", 11);
  sub_100007774(v5, "\r\n", 2);
  v6 = sub_100007774(&v32, "STATUS:", 7);
  if (*(a1 + 122))
  {
    v7 = "READ";
  }

  else
  {
    v7 = "UNREAD";
  }

  if (*(a1 + 122))
  {
    v8 = 4;
  }

  else
  {
    v8 = 6;
  }

  v9 = sub_100007774(v6, v7, v8);
  sub_100007774(v9, "\r\n", 2);
  v10 = sub_100007774(&v32, "TYPE:SMS_GSM", 12);
  sub_100007774(v10, "\r\n", 2);
  v11 = sub_100007774(&v32, "FOLDER:telecom/msg/inbox", 24);
  sub_100007774(v11, "\r\n", 2);
  if ((a2 & 1) == 0)
  {
    v12 = sub_100007774(&v32, "NOTIFICATION:1", 14);
    sub_100007774(v12, "\r\n", 2);
  }

  sub_10067FFA0(a1, __p);
  if (v31 >= 0)
  {
    v13 = __p;
  }

  else
  {
    LODWORD(v13) = __p[0];
  }

  if (v31 >= 0)
  {
    v14 = HIBYTE(v31);
  }

  else
  {
    v14 = __p[1];
  }

  sub_100007774(&v32, v13, v14);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  v15 = sub_100007774(&v32, "BEGIN:BENV", 10);
  sub_100007774(v15, "\r\n", 2);
  sub_100680000(a1, __p);
  if (v31 >= 0)
  {
    v16 = __p;
  }

  else
  {
    LODWORD(v16) = __p[0];
  }

  if (v31 >= 0)
  {
    v17 = HIBYTE(v31);
  }

  else
  {
    v17 = __p[1];
  }

  sub_100007774(&v32, v16, v17);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  v18 = sub_100007774(&v32, "BEGIN:BBODY", 11);
  sub_100007774(v18, "\r\n", 2);
  if (*(a1 + 120))
  {
    v19 = sub_100007774(&v32, "CHARSET:UTF-8", 13);
    sub_100007774(v19, "\r\n", 2);
    v20 = sub_100007774(&v32, "LANGUAGE:", 9);
    if (*(a1 + 1007) < 0)
    {
      sub_100008904(__p, *(a1 + 984), *(a1 + 992));
    }

    else
    {
      *__p = *(a1 + 984);
      v31 = *(a1 + 1000);
    }

    if (v31 >= 0)
    {
      v21 = __p;
    }

    else
    {
      LODWORD(v21) = __p[0];
    }

    v22 = v31 >= 0 ? HIBYTE(v31) : LODWORD(__p[1]);
    v23 = sub_100007774(v20, v21, v22);
    sub_100007774(v23, "\r\n", 2);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100680AEC(a1);
  if (v31 >= 0)
  {
    v24 = __p;
  }

  else
  {
    LODWORD(v24) = __p[0];
  }

  if (v31 >= 0)
  {
    v25 = HIBYTE(v31);
  }

  else
  {
    v25 = __p[1];
  }

  sub_100007774(&v32, v24, v25);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  v26 = sub_100007774(&v32, "END:BBODY", 9);
  sub_100007774(v26, "\r\n", 2);
  v27 = sub_100007774(&v32, "END:BENV", 8);
  sub_100007774(v27, "\r\n", 2);
  v28 = sub_100007774(&v32, "END:BMSG", 8);
  sub_100007774(v28, "\r\n", 2);
  std::stringbuf::str();
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[1]);
  }

  std::locale::~locale(v33);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_1006812C8(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5)
{
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  *v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  memset(v58, 0, sizeof(v58));
  sub_100008760(&v57);
  if (a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = -1;
  }

  sub_100007774(&v57, "<msg ", 5);
  v11 = sub_100007774(&v57, "handle=", 8);
  sub_100429A1C(a1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    LODWORD(p_p) = __p.__r_.__value_.__l.__data_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = __p.__r_.__value_.__r.__words[1];
  }

  v14 = sub_100007774(v11, p_p, v13);
  sub_100007774(v14, " ", 2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v10 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if ((v10 & 1) == 0)
  {
    goto LABEL_28;
  }

  v15 = sub_100007774(&v57, "subject=", 9);
  if (*(a1 + 87) < 0)
  {
    sub_100008904(&v54, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    v54 = *(a1 + 64);
  }

  std::string::basic_string(&__dst, &v54, 0, a3, &v72);
  sub_10050DDC8(&__dst, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__p;
  }

  else
  {
    LODWORD(v16) = __p.__r_.__value_.__l.__data_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__r.__words[1];
  }

  v18 = sub_100007774(v15, v16, v17);
  sub_100007774(v18, " ", 2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((v10 & 2) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  operator delete(v54.__r_.__value_.__l.__data_);
  if ((v10 & 2) == 0)
  {
    goto LABEL_38;
  }

LABEL_29:
  v19 = sub_100007774(&v57, "datetime=", 10);
  sub_100680060(a1, a5, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &__p;
  }

  else
  {
    LODWORD(v20) = __p.__r_.__value_.__l.__data_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[1];
  }

  v22 = sub_100007774(v19, v20, v21);
  sub_100007774(v22, " ", 2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v10 & 4) == 0)
  {
    goto LABEL_51;
  }

LABEL_38:
  v23 = sub_100007774(&v57, "sender_name=", 13);
  if (*(a1 + 175) < 0)
  {
    sub_100008904(&__dst, *(a1 + 152), *(a1 + 160));
  }

  else
  {
    __dst = *(a1 + 152);
  }

  sub_10050DDC8(&__dst, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &__p;
  }

  else
  {
    LODWORD(v24) = __p.__r_.__value_.__l.__data_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = __p.__r_.__value_.__r.__words[1];
  }

  v26 = sub_100007774(v23, v24, v25);
  sub_100007774(v26, " ", 2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((v10 & 8) == 0)
    {
      goto LABEL_63;
    }
  }

  else
  {
LABEL_51:
    if ((v10 & 8) == 0)
    {
      goto LABEL_63;
    }
  }

  memset(&__p, 0, sizeof(__p));
  sub_100681FD8((a1 + 136), &__p);
  memset(&__dst, 0, sizeof(__dst));
  sub_10050DDC8(&__p, &__dst);
  v27 = sub_100007774(&v57, "sender_addressing=", 19);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    LODWORD(p_dst) = __dst.__r_.__value_.__l.__data_;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = __dst.__r_.__value_.__r.__words[1];
  }

  v30 = sub_100007774(v27, p_dst, v29);
  sub_100007774(v30, " ", 2);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v10 & 0x10) == 0)
  {
    goto LABEL_74;
  }

LABEL_63:
  v31 = sub_100007774(&v57, "recipient_name=", 16);
  if (*(a1 + 599) < 0)
  {
    sub_100008904(&__p, *(a1 + 576), *(a1 + 584));
  }

  else
  {
    __p = *(a1 + 576);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &__p;
  }

  else
  {
    LODWORD(v32) = __p.__r_.__value_.__l.__data_;
  }

  v33 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : LODWORD(__p.__r_.__value_.__r.__words[1]);
  v34 = sub_100007774(v31, v32, v33);
  sub_100007774(v34, " ", 2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_84;
    }
  }

  else
  {
LABEL_74:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_84;
    }
  }

  v35 = sub_100007774(&v57, "recipient_addressing=", 22);
  sub_100681FD8((a1 + 560), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = &__p;
  }

  else
  {
    LODWORD(v36) = __p.__r_.__value_.__l.__data_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v37 = __p.__r_.__value_.__r.__words[1];
  }

  v38 = sub_100007774(v35, v36, v37);
  sub_100007774(v38, " ", 2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_84:
  if ((v10 & 0x40) != 0 && a2 <= 3)
  {
    sub_100007774(&v57, off_100B05238[a2], qword_1008AAD00[a2]);
  }

  if ((v10 & 0x80) != 0)
  {
    sub_100007774(&v57, "size=", 6);
    v39 = std::ostream::operator<<();
    sub_100007774(v39, " ", 2);
  }

  if ((v10 & 0x100) != 0)
  {
    v40 = sub_100007774(&v57, "reception_status=", 18);
    v41 = sub_100007774(v40, "complete", 8);
    sub_100007774(v41, " ", 2);
  }

  if ((v10 & 0x200) != 0)
  {
    v42 = sub_100007774(&v57, "text=", 6);
    v43 = sub_100007774(v42, "yes", 3);
    sub_100007774(v43, " ", 2);
  }

  if ((v10 & 0x400) != 0)
  {
    sub_100007774(&v57, "attachment_size=", 17);
    v44 = std::ostream::operator<<();
    sub_100007774(v44, " ", 2);
  }

  if ((v10 & 0x1000) != 0)
  {
    v45 = sub_100007774(&v57, "read=", 6);
    if (*(a1 + 122))
    {
      v46 = "yes";
    }

    else
    {
      v46 = "no";
    }

    if (*(a1 + 122))
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    v48 = sub_100007774(v45, v46, v47);
    sub_100007774(v48, " ", 2);
  }

  if ((v10 & 0x2000) != 0)
  {
    v49 = sub_100007774(&v57, "sent=", 6);
    if (*(a1 + 123))
    {
      v50 = "yes";
    }

    else
    {
      v50 = "no";
    }

    if (*(a1 + 123))
    {
      v51 = 3;
    }

    else
    {
      v51 = 2;
    }

    v52 = sub_100007774(v49, v50, v51);
    sub_100007774(v52, " ", 2);
  }

  sub_100007774(&v57, "/>", 2);
  std::stringbuf::str();
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59[1]);
  }

  std::locale::~locale(v58);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_100681AFC(uint64_t result)
{
  *result = -1;
  *(result + 4) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_100681B14(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v2 = (a1 + 16);
  while (v3 != v4)
  {
    v3 -= 1008;
    sub_1006820BC(v2, v3);
  }

  *(a1 + 24) = v4;
  v6 = v2;
  sub_100682154(&v6);
  return a1;
}

uint64_t sub_100681B80(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3 >= a1[4])
  {
    result = sub_1006821DC(a1 + 2, a2);
  }

  else
  {
    sub_100681E18(a1[3], a2);
    result = v3 + 1008;
    a1[3] = v3 + 1008;
  }

  a1[3] = result;
  return result;
}

uint64_t sub_100681BD4(unsigned __int8 *a1, unsigned int a2)
{
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v14 = 0u;
  v15 = 0u;
  *v13 = 0u;
  memset(v12, 0, sizeof(v12));
  v11 = 0u;
  sub_100008760(&v11);
  sub_100007774(&v11, "<MAP-msg-listing version=1.0>", 31);
  for (i = *(a1 + 2); i != *(a1 + 3); i += 1008)
  {
    sub_1006812C8(i, a2, *a1, *(a1 + 1), a1[8]);
    if ((v10 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      LODWORD(p_p) = __p;
    }

    if ((v10 & 0x80u) == 0)
    {
      v6 = v10;
    }

    else
    {
      v6 = v9;
    }

    sub_100007774(&v11, p_p, v6);
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }

  sub_100007774(&v11, "</MAP-msg-listing>", 18);
  std::stringbuf::str();
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[1]);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_100681E18(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100008904((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  *(a1 + 32) = *(a2 + 32);
  if (*(a2 + 63) < 0)
  {
    sub_100008904((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
  }

  if (*(a2 + 87) < 0)
  {
    sub_100008904((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v6;
  }

  if (*(a2 + 111) < 0)
  {
    sub_100008904((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v7;
  }

  v8 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v8;
  sub_10069F12C(a1 + 136, a2 + 136);
  sub_10069F12C(a1 + 560, a2 + 560);
  v9 = (a1 + 984);
  if (*(a2 + 1007) < 0)
  {
    sub_100008904(v9, *(a2 + 984), *(a2 + 992));
  }

  else
  {
    v10 = *(a2 + 984);
    *(a1 + 1000) = *(a2 + 1000);
    *v9 = v10;
  }

  return a1;
}

void sub_100681F54(_Unwind_Exception *a1)
{
  sub_10069F44C(v1 + 560);
  sub_10069F44C(v1 + 136);
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void sub_100681FD8(void *a1@<X0>, void *a2@<X8>)
{
  sub_10042A6A4(a1, 0, v9);
  v4 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v4 = v9[1];
  }

  if (v4)
  {
    sub_10042A6A4(a1, 0, v5);
    *a2 = *v5;
    a2[2] = v6;
    v5[1] = 0;
    v6 = 0;
    v5[0] = 0;
    if (v8 < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v6) < 0)
      {
        operator delete(v5[0]);
      }
    }
  }

  else
  {
    sub_10042A780(a1, 0, a2);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_1006820A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1000DA6C8(va);
  _Unwind_Resume(a1);
}

void sub_1006820BC(uint64_t a1, uint64_t a2)
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
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

void sub_100682154(void ***a1)
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
        v4 -= 1008;
        sub_1006820BC(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1006821DC(unint64_t *a1, uint64_t a2)
{
  v2 = 0xEFBEFBEFBEFBEFBFLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x41041041041041)
  {
    sub_1000C7698();
  }

  if (0xDF7DF7DF7DF7DF7ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDF7DF7DF7DF7DF7ELL * ((a1[2] - *a1) >> 4);
  }

  if (0xEFBEFBEFBEFBEFBFLL * ((a1[2] - *a1) >> 4) >= 0x20820820820820)
  {
    v6 = 0x41041041041041;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100682324(a1, v6);
  }

  v13 = 0;
  v14 = 1008 * v2;
  sub_100681E18(1008 * v2, a2);
  v15 = 1008 * v2 + 1008;
  v7 = a1[1];
  v8 = 1008 * v2 + *a1 - v7;
  sub_100682380(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100682404(&v13);
  return v12;
}

void sub_100682310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100682404(va);
  _Unwind_Resume(a1);
}

void sub_100682324(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x41041041041042)
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_100682380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      sub_100681E18(a4, v8);
      v8 += 1008;
      a4 += 1008;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      sub_1006820BC(a1, v6);
      v6 += 1008;
    }
  }
}

void **sub_100682404(void **a1)
{
  sub_100682438(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100682438(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 1008;
    sub_1006820BC(v4, i - 1008);
  }
}

void sub_1006824A8(uint64_t a1, __int16 a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 124) = a3;
  operator new();
}

void sub_100682790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 + 119) < 0)
  {
    operator delete(*(v40 + 96));
  }

  if (*(v40 + 95) < 0)
  {
    operator delete(*(v40 + 72));
  }

  if (*(v40 + 71) < 0)
  {
    operator delete(*(v40 + 48));
  }

  if (*(v40 + 47) < 0)
  {
    operator delete(*v41);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1006828BC@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a2, "<folder-listing version=1.0>\n");
  for (i = *(a1 + 16); i != a1 + 8; i = *(i + 8))
  {
    v5 = *(i + 16);
    if (*(v5 + 55) < 0)
    {
      sub_100008904(&v13, *(v5 + 32), *(v5 + 40));
    }

    else
    {
      v13 = *(v5 + 32);
    }

    v6 = std::string::insert(&v13, 0, "<folder name=");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v14, "/>\n");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v16 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v16 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if (v16 >= 0)
    {
      v11 = HIBYTE(v16);
    }

    else
    {
      v11 = __p[1];
    }

    std::string::append(a2, v10, v11);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  return std::string::append(a2, "</folder-listing>\n");
}

void sub_100682A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100682A80(std::string *a1, void *a2, int a3)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  sub_100685FC4(&v26, a1->__r_.__value_.__l.__size_ + 8);
  memset(&__str, 0, sizeof(__str));
  if (byte_100BCE888[23] < 0)
  {
    sub_100008904(&__str, *byte_100BCE888, *&byte_100BCE888[8]);
  }

  else
  {
    __str = *byte_100BCE888;
  }

  if (a3 && (v6 = *a1->__r_.__value_.__l.__size_) != 0)
  {
    v7 = 0;
    a1->__r_.__value_.__l.__size_ = v6;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v7 = 1738;
  }

  if (*(a2 + 23) < 0)
  {
    v11 = a2[1];
    if (v11 || (a3 & 1) == 0)
    {
      size = a1;
      if (v11)
      {
        if (v11 != 1)
        {
          goto LABEL_37;
        }

        v10 = *a2;
LABEL_19:
        size = a1;
        if (*v10 == 47)
        {
          goto LABEL_20;
        }

LABEL_37:
        size = v27;
        if (v27 == &v26)
        {
LABEL_50:
          if ((v8 & 1) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_21;
        }

        while (1)
        {
          v16 = size->__r_.__value_.__r.__words[2];
          if (*(a2 + 23) < 0)
          {
            sub_100008904(&__dst, *a2, a2[1]);
          }

          else
          {
            __dst = *a2;
            v24 = a2[2];
          }

          v17 = SHIBYTE(v24);
          v18 = __dst;
          if (v24 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          v20 = (v16 + 32);
          if (*(v16 + 55) < 0)
          {
            v20 = *v20;
          }

          v21 = strcasecmp(p_dst, v20);
          if (v17 < 0)
          {
            operator delete(v18);
          }

          if (!v21)
          {
            break;
          }

          size = size->__r_.__value_.__l.__size_;
          if (size == &v26)
          {
            goto LABEL_50;
          }
        }
      }

LABEL_20:
      a1->__r_.__value_.__l.__size_ = size->__r_.__value_.__r.__words[2];
    }
  }

  else if (*(a2 + 23) || (a3 & 1) == 0)
  {
    size = a1;
    if (*(a2 + 23))
    {
      v10 = a2;
      if (*(a2 + 23) != 1)
      {
        goto LABEL_37;
      }

      goto LABEL_19;
    }

    goto LABEL_20;
  }

LABEL_21:
  sub_1006828BC(a1->__r_.__value_.__l.__size_, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&__str, p_p, v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::operator=(a1 + 1, &__str);
  v7 = 0;
LABEL_30:
  v22 = 0;
  sub_1000216B4(&v22);
  sub_1002209B0(LOWORD(a1->__r_.__value_.__l.__data_), v7);
  v14 = qword_100BCEAA8;
  if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 67109378;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = v7;
    LOWORD(__p.__r_.__value_.__r.__words[1]) = 2080;
    *(&__p.__r_.__value_.__r.__words[1] + 2) = a2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Setpath returning %{bluetooth:OI_STATUS}u for folder: %s", &__p, 0x12u);
  }

  sub_10002249C(&v22);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_100028EB4(&v26);
  return v7;
}

double sub_100682DCC(uint64_t a1, unsigned __int8 *a2)
{
  sub_100681BD4(a2, *(a1 + 4));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  result = *&v4;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_100682E28(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100686068(v2);
    operator delete();
  }

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

  return a1;
}

uint64_t sub_100682EAC(uint64_t a1)
{
  result = sub_10032F49C(a1, 21);
  *result = off_100B05268;
  *(result + 288) = 0;
  *(result + 264) = 0;
  *(result + 272) = 0;
  *(result + 256) = off_100B052E8;
  *(result + 280) = 0;
  return result;
}

uint64_t sub_100682F10()
{
  v4 = off_100B05318;
  v3 = 0;
  sub_1000216B4(&v3);
  v0 = sub_10021F6B0(off_100B54D48, off_100B54D58, &v4, 393855, 2);
  if (v0)
  {
    v1 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_ERROR))
    {
      sub_10085BF6C(v0, v1);
    }
  }

  sub_10002249C(&v3);
  return v0;
}

uint64_t sub_100682FC8()
{
  v1 = 0;
  sub_1000216B4(&v1);
  sub_10021FA30();
  sub_10002249C(&v1);
  return 0;
}

uint64_t sub_10068301C(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCEAA8;
  if (*(a1 + 288) != a2 && os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_FAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "MAP is being asked to disconnect a device that it's not tracking", __p, 2u);
    v4 = qword_100BCEAA8;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1006831D8(a1, __p);
    v5 = v12 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending disconnect indication to device %{public}s", buf, 0xCu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = 0;
  sub_1000216B4(&v10);
  v6 = sub_10021FBB8(*(a1 + 280));
  if (v6)
  {
    v7 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, __p);
      sub_10085BFE4(__p, buf, v6, v7);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  sub_10002249C(&v10);
  return v8;
}

void sub_1006831D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    sub_1000E5A58(v2, a2);
  }

  else
  {
    sub_100007E30(a2, "<null>");
  }
}

void sub_1006831F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_10085C068();
  }

  WORD2(v28) = WORD2(a2);
  LODWORD(v28) = a2;
  v6 = sub_1000E6554(off_100B508E8, &v28, 1);
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
  if (sub_100536A18(v6, &v28) && BYTE12(v34[2]) == 1)
  {
    LODWORD(__p[0]) = 0;
    *buf = 0;
    *v27 = 0;
    *v23 = 0;
    v7 = sub_1000C2364(v6, __p, buf, v27, v23);
    if (*buf)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8 == 1 && *v27 != 0;
    v18 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = "BANNED";
      if (v9)
      {
        v19 = "ALLOWED (DId)";
      }

      *v26 = 136446210;
      *&v26[4] = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Device has a denylist, current BAN state is %{public}s\n", v26, 0xCu);
    }
  }

  else
  {
    __p[0] = 0;
    sub_100016250(__p);
    *v26 = SLODWORD(__p[0]);
    *&v26[8] = SWORD2(__p[0]);
    sub_100539554(v6, 0x200u, 4, v26, 0);
    if (sub_10057DFAC(a1, v6) && (sub_1005412C4(v6) & 1) != 0)
    {
      v9 = 1;
    }

    else
    {
      v10 = qword_100BCEAA8;
      if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v6, v26);
        sub_10085C07C(v26, v27, v10);
      }

      v9 = 0;
    }
  }

  v22 = 0;
  sub_1000216B4(&v22);
  v11 = sub_10021FDA8(a3, v9);
  sub_100022214(&v22);
  if (v11 == 0 && v9)
  {
    v12 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v6, __p);
      v13 = v21 >= 0 ? __p : __p[0];
      *buf = 136446466;
      *&buf[4] = v13;
      *&buf[12] = 1024;
      *&buf[14] = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Accepting incoming connection attempt from device %{public}s with connection ID %d", buf, 0x12u);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }
    }

    *buf = xmmword_1008AAD20;
    __p[0] = 0;
    __p[1] = 0;
    v21 = 0;
    if (sub_10053BFB4(v6, buf, 0x317u, __p))
    {
      v14 = *(__p[0] + 2);
      v15 = qword_100BCEAA8;
      if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 67109120;
        v24 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Supported features bits are: 0x%x", v23, 8u);
      }
    }

    else
    {
      v17 = qword_100BCEAA8;
      if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No supported features", v23, 2u);
      }
    }

    *(a1 + 288) = v6;
    *(a1 + 280) = a3;
    operator new();
  }

  if (v11)
  {
    v16 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_ERROR))
    {
      sub_10085C0F0(v9, v11, v16);
    }
  }

  sub_10002249C(&v22);
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
}

void sub_100683708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_10002249C(&a15);
  sub_100320BE8(&a28);
  _Unwind_Resume(a1);
}

void sub_1006837A4(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 288);
  v4 = qword_100BCEAA8;
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1006831D8(a1, __p);
      if (v10 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      *buf = 136446210;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received disconnect event from device %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      v3 = *(a1 + 288);
    }

    sub_10057E710(a1, v3, 0, a3);
    (***(a1 + 264))();
    *(a1 + 264) = 0;
    sub_100687E60((a1 + 272), 0);
    *(a1 + 280) = 0;
    *(a1 + 288) = 0;
  }

  else
  {
    v8 = a2;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_ERROR))
    {
      sub_10085C190(v8, v4);
    }
  }
}

void sub_100683928(uint64_t a1, uint64_t *a2)
{
  sub_100429A1C(*a2, &__p);
  sub_100683998(a1, &__p, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10068397C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100683998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && (v4 = *(a1 + 272), *(v4 + 120)))
  {
    v5 = a3;
    v6 = *(v4 + 124);
    v25 = 0;
    v26 = 0;
    v7 = *(a1 + 264);
    if (*(a2 + 23) < 0)
    {
      sub_100008904(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v24 = *(a2 + 16);
    }

    v9 = (*(*v7 + 32))(&v25, v7, __p);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    v10 = *(*(a1 + 272) + 124) & 0x40000;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v11 = v26;
    v19[0] = v25;
    v19[1] = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1006840D4(v9, 0, v19, v5, (v6 >> 6) & 1, v10 != 0);
    if (v11)
    {
      sub_100117644(v11);
    }

    v12 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1006831D8(a1, v17);
      if (v18 >= 0)
      {
        v13 = v17;
      }

      else
      {
        v13 = v17[0];
      }

      v14 = &v20;
      if (v22 < 0)
      {
        v14 = v20;
      }

      *buf = 136315650;
      v28 = v13;
      v29 = 2080;
      v30 = v14;
      v31 = 1024;
      v32 = v10 >> 18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating CarKit %s with event: %s and UTCOffsetSupport: %d", buf, 0x1Cu);
      if (v18 < 0)
      {
        operator delete(v17[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    if (v22 >= 0)
    {
      v15 = &v20;
    }

    else
    {
      v15 = v20;
    }

    v16 = HIBYTE(v22);
    if (v22 < 0)
    {
      v16 = v21;
    }

    sub_10021FF38(*(a1 + 280), v15, v16);
    sub_10002249C(buf);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(v20);
    }

    if (v26)
    {
      sub_100117644(v26);
    }
  }

  else
  {
    v8 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to send event notification which is explicitly filtered out, ignoring.", buf, 2u);
    }
  }
}

_BYTE *sub_100683CAC(uint64_t a1, uint64_t *a2, int a3)
{
  v10 = 0;
  sub_1000216B4(&v10);
  v6 = *(a1 + 280);
  if (a3)
  {
    sub_100429A1C(*a2, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    sub_100220318(v6, p_p, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_100220318(v6, 0, 114);
  }

  sub_100022214(&v10);
  return sub_10002249C(&v10);
}

void sub_100683D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C(&a18);
  _Unwind_Resume(a1);
}

void sub_100683D90(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(v4 + 123) = 1;
  sub_100429A1C(v4, &__p);
  sub_100683998(a1, &__p, 4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_100429A1C(*a2, &v5);
  sub_100683998(a1, &v5, 8);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_100683E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_100683E58(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  if (*(*a3 + 111) < 0)
  {
    sub_100008904(buf, *(v5 + 88), *(v5 + 96));
  }

  else
  {
    *buf = *(v5 + 88);
    v25 = *(v5 + 104);
  }

  v6 = HIBYTE(v25);
  if (v25 < 0)
  {
    v6 = *&buf[8];
  }

  if (v6)
  {
    sub_100428D64(*a3, __p);
    v7 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v7 = __p[1];
    }

    if (v7)
    {
      v8 = 0;
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_10042A780((*a3 + 136), 0, v20);
      v15 = v20[1];
      if (v21 >= 0)
      {
        v15 = v21;
      }

      v8 = v15 == 0;
      if ((v21 & 0x8000000000000000) != 0)
      {
        operator delete(v20[0]);
      }

      if ((v23 & 0x80) == 0)
      {
LABEL_12:
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    operator delete(__p[0]);
    goto LABEL_12;
  }

  v8 = 1;
  if (v25 < 0)
  {
LABEL_13:
    operator delete(*buf);
  }

LABEL_14:
  v9 = qword_100BCEAA8;
  v10 = os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Could not send message to BTMap due to missing info", buf, 2u);
    }

    v11 = a3[1];
    v18 = *a3;
    v19 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 96))(a1, &v18, 0);
    v12 = v19;
    if (!v19)
    {
      return;
    }

LABEL_26:
    sub_100117644(v12);
    return;
  }

  if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending message to BTMap to be sent through IMCore", buf, 2u);
  }

  v13 = a1[33];
  v14 = a3[1];
  v16 = *a3;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v13 + 16))(v13, &v16);
  v12 = v17;
  if (v17)
  {
    goto LABEL_26;
  }
}

void sub_10068407C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006840D4(uint64_t a1, unsigned int a2, uint64_t *a3, int a4, int a5, int a6)
{
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  *v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  memset(v71, 0, sizeof(v71));
  v69 = 0u;
  sub_100007AD0(&v69);
  memset(&v68, 0, sizeof(v68));
  memset(&v67, 0, sizeof(v67));
  memset(&v66, 0, sizeof(v66));
  v11 = sub_100007774(&v70, "<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>", 56);
  sub_100007774(v11, "\r\n", 2);
  v12 = sub_100007774(&v70, "<MAP-event-report version=", 27);
  if (a5)
  {
    v13 = "1.1";
  }

  else
  {
    v13 = "1.0";
  }

  v14 = sub_100007774(v12, v13, 3);
  sub_100007774(v14, ">", 2);
  if (a2 < 4)
  {
    std::string::assign(&v68, off_100B05478[a2]);
  }

  if (a4 <= 7)
  {
    if (a4 == 1)
    {
      std::string::assign(&v67, "NewMessage");
      v17 = "inbox";
      goto LABEL_24;
    }

    if (a4 == 2)
    {
      std::string::assign(&v67, "MessageDeleted");
      v17 = "deleted";
      goto LABEL_24;
    }

    if (a4 != 4)
    {
      goto LABEL_25;
    }

    v16 = "MessageShift";
    goto LABEL_22;
  }

  if (a4 > 31)
  {
    if (a4 != 32)
    {
      if (a4 != 64)
      {
        goto LABEL_25;
      }

      v15 = "DeliveryFailure";
      goto LABEL_18;
    }

    v16 = "DeliverySuccess";
LABEL_22:
    std::string::assign(&v67, v16);
    v17 = "sent";
    goto LABEL_24;
  }

  if (a4 == 8)
  {
    v16 = "SendingSuccess";
    goto LABEL_22;
  }

  if (a4 != 16)
  {
    goto LABEL_25;
  }

  v15 = "SendingFailure";
LABEL_18:
  std::string::assign(&v67, v15);
  v17 = "outbox";
LABEL_24:
  std::string::assign(&v66, v17);
LABEL_25:
  v18 = sub_100007774(&v70, "<event type=", 12);
  v19 = sub_100007774(v18, "", 1);
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v67;
  }

  else
  {
    LODWORD(v20) = v67.__r_.__value_.__l.__data_;
  }

  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v67.__r_.__value_.__r.__words[1];
  }

  v22 = sub_100007774(v19, v20, v21);
  sub_100007774(v22, " ", 2);
  v23 = sub_100007774(&v70, "handle=", 7);
  v24 = sub_100007774(v23, "", 1);
  sub_100429A1C(*a3, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    LODWORD(p_p) = __p.__r_.__value_.__l.__data_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = __p.__r_.__value_.__r.__words[1];
  }

  v27 = sub_100007774(v24, p_p, v26);
  sub_100007774(v27, " ", 2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v28 = sub_100007774(&v70, "folder=", 7);
  v29 = sub_100007774(v28, "", 1);
  v30 = sub_100007774(v29, "telecom/msg/", 12);
  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &v66;
  }

  else
  {
    LODWORD(v31) = v66.__r_.__value_.__l.__data_;
  }

  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = v66.__r_.__value_.__r.__words[1];
  }

  v33 = sub_100007774(v30, v31, v32);
  sub_100007774(v33, " ", 2);
  if (a4 == 4)
  {
    v34 = sub_100007774(&v70, "old_folder=", 11);
    v35 = sub_100007774(v34, "", 1);
    v36 = sub_100007774(v35, "telecom/msg/outbox", 18);
    v37 = " ";
    v38 = 2;
  }

  else
  {
    if (a4 != 1 || !a5)
    {
      goto LABEL_85;
    }

    v39 = sub_100007774(&v70, "datetime=", 9);
    v40 = sub_100007774(v39, "", 1);
    sub_100680060(*a3, a6, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &__p;
    }

    else
    {
      LODWORD(v41) = __p.__r_.__value_.__l.__data_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = __p.__r_.__value_.__r.__words[1];
    }

    v43 = sub_100007774(v40, v41, v42);
    sub_100007774(v43, " ", 2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v44 = sub_100007774(&v70, "subject=", 8);
    v45 = sub_100007774(v44, "", 1);
    v46 = *a3;
    if (*(*a3 + 87) < 0)
    {
      sub_100008904(v63, *(v46 + 64), *(v46 + 72));
    }

    else
    {
      *v63 = *(v46 + 64);
      v64 = *(v46 + 80);
    }

    sub_10050DDC8(v63, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = &__p;
    }

    else
    {
      LODWORD(v47) = __p.__r_.__value_.__l.__data_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v48 = __p.__r_.__value_.__r.__words[1];
    }

    v49 = sub_100007774(v45, v47, v48);
    sub_100007774(v49, " ", 2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63[0]);
    }

    v50 = sub_100007774(&v70, "sender_name=", 12);
    v51 = sub_100007774(v50, "", 1);
    v52 = *a3;
    if (*(*a3 + 175) < 0)
    {
      sub_100008904(v63, *(v52 + 152), *(v52 + 160));
    }

    else
    {
      *v63 = *(v52 + 152);
      v64 = *(v52 + 168);
    }

    sub_10050DDC8(v63, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v53 = &__p;
    }

    else
    {
      LODWORD(v53) = __p.__r_.__value_.__l.__data_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v54 = __p.__r_.__value_.__r.__words[1];
    }

    v55 = sub_100007774(v51, v53, v54);
    sub_100007774(v55, " ", 2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63[0]);
    }

    v37 = "priority=no ";
    v38 = 14;
    v36 = &v70;
  }

  sub_100007774(v36, v37, v38);
LABEL_85:
  v56 = sub_100007774(&v70, "msg_type=", 9);
  v57 = sub_100007774(v56, "", 1);
  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v58 = &v68;
  }

  else
  {
    LODWORD(v58) = v68.__r_.__value_.__l.__data_;
  }

  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v59 = v68.__r_.__value_.__r.__words[1];
  }

  v60 = sub_100007774(v57, v58, v59);
  sub_100007774(v60, "", 1);
  sub_100007774(&v70, "/>", 2);
  sub_100007774(&v70, "</MAP-event-report>", 19);
  std::stringbuf::str();
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  *&v70 = v61;
  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72[1]);
  }

  std::locale::~locale(v71);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10068484C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100684904(void *a1, int a2, uint64_t **a3)
{
  v6 = *(a3 + 23);
  if (v6 < 0)
  {
    v8 = *a3;
    v7 = (a3[1] + *a3);
  }

  else
  {
    v7 = (a3 + v6);
    v8 = a3;
  }

  while (v8 != v7)
  {
    *v8 = __toupper(*v8);
    v8 = (v8 + 1);
  }

  v9 = qword_100BCEAA8;
  if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1006831D8(a1, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v11 = a3;
    if (*(a3 + 23) < 0)
    {
      v11 = *a3;
    }

    *buf = 136446466;
    *&buf[4] = p_p;
    *&buf[12] = 2080;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'GetMessageEvent' from %{public}s for messageHandle %s", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  v12 = a1[33];
  if (!v12)
  {
    goto LABEL_30;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100008904(v19, *a3, a3[1]);
  }

  else
  {
    *v19 = *a3;
    v20 = a3[2];
  }

  (*(*v12 + 32))(buf, v12, v19);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (*buf)
  {
    sub_1000C23E0(a1[36], &__p);
    v13 = std::string::compare(&__p, "HandsFreeLink");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v14 = a1[34];
    sub_100680DD8(*buf, v13 == 0);
    v15 = v14 + 96;
    std::string::operator=((v14 + 96), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v16 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sending BMessage response to 'GetMessageEvent'", &__p, 2u);
    }

    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_1000216B4(&__p);
    v17 = *(v14 + 119);
    if (v17 < 0)
    {
      v15 = *(v14 + 96);
      v17 = *(v14 + 104);
    }

    sub_100220128(a2, v15, v17, 1, 0);
  }

  else
  {
LABEL_30:
    v18 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No matching message found.", &__p, 2u);
    }

    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_1000216B4(&__p);
    sub_100220128(a2, 0, 0, 1, 114);
  }

  sub_10002249C(&__p);
  if (*&buf[8])
  {
    sub_100117644(*&buf[8]);
  }
}

void sub_100684C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  sub_10002249C(&__p);
  if (a24)
  {
    sub_100117644(a24);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100684C78(uint64_t a1, unsigned int a2, std::string *p_str, int a4, unsigned int a5, char a6, int a7, int a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v17 = qword_100BCEAA8;
  if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1006831D8(a1, __p);
    v18 = __p[0];
    if ((SBYTE7(v72) & 0x80u) == 0)
    {
      v18 = __p;
    }

    v19 = p_str;
    if (SHIBYTE(p_str->__r_.__value_.__r.__words[2]) < 0)
    {
      v19 = p_str->__r_.__value_.__r.__words[0];
    }

    v20 = (*(*(a1 + 272) + 124) >> 18) & 1;
    *buf = 136448002;
    *&buf[4] = v18;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    *&buf[18] = 2080;
    *&buf[20] = v19;
    *&buf[28] = 1024;
    *&buf[30] = a4;
    *&buf[34] = 1024;
    *&buf[36] = a8;
    *&buf[40] = 1024;
    *&buf[42] = a7;
    *&buf[46] = 1024;
    LODWORD(v78[0]) = a11;
    WORD2(v78[0]) = 1024;
    *(v78 + 6) = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received 'GetMessageListingEvent' from device %{public}s (connectionId: %u, path: %s, maxListCount: %u, filterMessageType: %u, parameterMask: %u, filterReadStatus: %u, UTCOffsetTimeSupport: %d)", buf, 0x3Au);
    if (SBYTE7(v72) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v73 = 0;
  v72 = 0u;
  *__p = 0u;
  sub_100681AFC(__p);
  *__s = 0;
  v85 = 0;
  v83 = 0;
  v82 = 0u;
  memset(v81, 0, sizeof(v81));
  *v80 = 0u;
  v79 = 0u;
  *v78 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_1000DE474(&buf[1]);
  buf[18] = 0;
  buf[20] = 0;
  BYTE2(v78[0]) = 0;
  BYTE4(v78[0]) = 0;
  DWORD1(v81[1]) = 0;
  memset(&buf[24], 0, 24);
  LOBYTE(v78[0]) = 0;
  v78[1] = 0;
  v79 = 0uLL;
  LOBYTE(v80[0]) = 0;
  v80[1] = 0;
  memset(v81, 0, 19);
  BYTE8(v81[1]) = 1;
  *(&v81[1] + 14) = 0;
  *(&v81[1] + 9) = 0;
  *(&v81[2] + 1) = 0;
  v82 = 0uLL;
  LOBYTE(v83) = 0;
  *(&v83 + 2) = 0;
  LOBYTE(__p[0]) = a6;
  HIDWORD(__p[0]) = a7;
  v21 = *(a1 + 272);
  LOBYTE(__p[1]) = (*(v21 + 124) & 0x40000) != 0;
  memset(&__str, 0, sizeof(__str));
  v22 = *(v21 + 8);
  if (*(v22 + 55) < 0)
  {
    sub_100008904(&__str, *(v22 + 32), *(v22 + 40));
  }

  else
  {
    __str = *(v22 + 32);
  }

  memset(&v69, 0, sizeof(v69));
  v23 = SHIBYTE(p_str->__r_.__value_.__r.__words[2]);
  if ((v23 & 0x8000000000000000) == 0)
  {
    if (*(&p_str->__r_.__value_.__s + 23))
    {
      goto LABEL_13;
    }

LABEL_17:
    p_str = &__str;
LABEL_18:
    std::string::operator=(&v69, p_str);
    goto LABEL_25;
  }

  if (!p_str->__r_.__value_.__l.__size_)
  {
    goto LABEL_17;
  }

LABEL_13:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__str.__r_.__value_.__l.__size_ != 3)
    {
      goto LABEL_25;
    }

    v24 = __str.__r_.__value_.__r.__words[0];
    goto LABEL_21;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) == 3)
  {
    v24 = &__str;
LABEL_21:
    data_low = LOWORD(v24->__r_.__value_.__l.__data_);
    v26 = v24->__r_.__value_.__s.__data_[2];
    if (data_low != 29549 || v26 != 103)
    {
      goto LABEL_25;
    }

    v43 = *(a1 + 272);
    if ((v23 & 0x80000000) != 0)
    {
      sub_100008904(v67, p_str->__r_.__value_.__l.__data_, p_str->__r_.__value_.__l.__size_);
    }

    else
    {
      *v67 = *&p_str->__r_.__value_.__l.__data_;
      v68 = p_str->__r_.__value_.__r.__words[2];
    }

    v44 = sub_1006854FC(v43, v67);
    if (SHIBYTE(v68) < 0)
    {
      operator delete(v67[0]);
    }

    if ((v44 & 1) == 0)
    {
      v45 = qword_100BCEAA8;
      if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
      {
        if (SHIBYTE(p_str->__r_.__value_.__r.__words[2]) < 0)
        {
          p_str = p_str->__r_.__value_.__r.__words[0];
        }

        v46 = *(*(a1 + 272) + 8);
        if (*(v46 + 55) < 0)
        {
          sub_100008904(v65, *(v46 + 32), *(v46 + 40));
        }

        else
        {
          *v65 = *(v46 + 32);
          v66 = *(v46 + 48);
        }

        v47 = v65;
        if (v66 < 0)
        {
          v47 = v65[0];
        }

        *v74 = 136315394;
        *&v74[4] = p_str;
        v75 = 2080;
        v76 = v47;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "No such folder %s at path %s", v74, 0x16u);
        if (SHIBYTE(v66) < 0)
        {
          operator delete(v65[0]);
        }
      }

      LOBYTE(v65[0]) = 0;
      sub_1000216B4(v65);
      v41 = sub_10022055C(a2, 0, 0, 0, 0, 0);
      sub_10002249C(v65);
      goto LABEL_70;
    }

    goto LABEL_18;
  }

LABEL_25:
  v65[1] = 0;
  v65[0] = 0;
  v66 = 0;
  v28 = *(a1 + 264);
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100008904(&__dst, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v69;
  }

  (*(*v28 + 40))(v65, v28, &__dst);
  v48 = a1;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v29 = v65[1];
  if (v65[1] != v65[0])
  {
    v30 = 0;
    v31 = 0;
    while (1)
    {
      v32 = *(v29 - 2);
      v33 = *(v29 - 1);
      v29 -= 16;
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v34 = *(v32 + 122);
      if (a11)
      {
        if (a11 & 2) != 0 || (*(v32 + 122))
        {
          goto LABEL_52;
        }
      }

      else if ((a11 & 2) != 0 && !*(v32 + 122))
      {
        goto LABEL_52;
      }

      ++v30;
      if (a4 && v30 > a5 && v30 <= a5 + a4)
      {
        sub_1006812C4();
        sub_100681B80(__p, v51);
        if (v63 < 0)
        {
          operator delete(v62);
        }

        sub_10069F44C(&v61);
        sub_10069F44C(&v60);
        if (v59 < 0)
        {
          operator delete(v58);
        }

        if (v57 < 0)
        {
          operator delete(v56);
        }

        if (v55 < 0)
        {
          operator delete(v54);
        }

        if (v53 < 0)
        {
          operator delete(v52);
          if (!v33)
          {
            goto LABEL_54;
          }

LABEL_53:
          sub_100117644(v33);
          goto LABEL_54;
        }
      }

LABEL_52:
      if (v33)
      {
        goto LABEL_53;
      }

LABEL_54:
      v31 |= v34 ^ 1;
      if (v29 == v65[0])
      {
        goto LABEL_59;
      }
    }
  }

  v31 = 0;
  v30 = 0;
LABEL_59:
  if (a4)
  {
    sub_100682DCC(*(v48 + 272), __p);
    v35 = *(v48 + 272);
    v36 = *(v35 + 71);
    if (v36 < 0)
    {
      v37 = *(v35 + 48);
      v36 = *(v35 + 56);
    }

    else
    {
      v37 = v35 + 48;
    }

    v40 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
    {
      *v74 = 67109120;
      *&v74[4] = v30;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "getMessageListingEvent count = %u", v74, 8u);
    }

    v39 = v48;
  }

  else
  {
    v38 = qword_100BCEAA8;
    v39 = v48;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
    {
      *v74 = 67109120;
      *&v74[4] = v30;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "getMessageListingEvent only returning the count %d", v74, 8u);
    }

    LOWORD(v36) = 0;
    v37 = 0;
  }

  (*(**(v39 + 264) + 8))(*(v39 + 264), __s);
  v74[0] = 0;
  sub_1000216B4(v74);
  v41 = sub_10022055C(a2, v31 & 1, v30, v37, v36, __s);
  sub_10002249C(v74);
  *v74 = v65;
  sub_10042AF8C(v74);
LABEL_70:
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v81[0]) < 0)
  {
    operator delete(v80[1]);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78[1]);
  }

  if (buf[47] < 0)
  {
    operator delete(*&buf[24]);
  }

  nullsub_21();
  sub_100681B7C(__p);
  return v41;
}

void sub_100685410(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x46F]) < 0)
  {
    operator delete(STACK[0x458]);
  }

  if (SLOBYTE(STACK[0x487]) < 0)
  {
    operator delete(STACK[0x470]);
  }

  sub_100320BE8(&STACK[0x4E0]);
  sub_100681B7C(&STACK[0x490]);
  _Unwind_Resume(a1);
}

uint64_t sub_1006854FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  v3 = sub_100687C08(v2, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_100685574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100685590(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v8 = qword_100BCEAA8;
  if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1006831D8(a1, __p);
    if (v18 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136446722;
    v20 = v9;
    v21 = 1024;
    v22 = a3;
    v23 = 1024;
    v24 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'GetFolderListing' event from device %{public}s (maxListCount=%d, startOffset=%d)", buf, 0x18u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = qword_100BCEAA8;
  }

  v10 = *(a1 + 272);
  v11 = *(*(v10 + 8) + 24);
  v12 = (v10 + 24);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = (v10 + 24);
    if (*(v10 + 47) < 0)
    {
      v13 = *v12;
    }

    *buf = 136315138;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Folder listing = %s", buf, 0xCu);
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  v14 = *(v10 + 47);
  if (v14 < 0)
  {
    v12 = *(v10 + 24);
    v14 = *(v10 + 32);
  }

  v15 = sub_1002207D4(a2, v11, v12, v14);
  sub_10002249C(buf);
  return v15;
}

void sub_100685740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10068575C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  v6 = *(a1 + 272);
  v7 = 1738;
  if (v6 && (a6 & 1) == 0)
  {
    if (*(a3 + 23) < 0)
    {
      sub_100008904(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v11 = *(a3 + 16);
    }

    v7 = sub_100682A80(v6, __p, a5);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v7;
}

void sub_1006857EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100685808(uint64_t a1, unsigned int a2, int a3, uint64_t **a4)
{
  v8 = *(a4 + 23);
  if (v8 < 0)
  {
    v10 = *a4;
    v9 = (a4[1] + *a4);
  }

  else
  {
    v9 = (a4 + v8);
    v10 = a4;
  }

  while (v10 != v9)
  {
    *v10 = __toupper(*v10);
    v10 = (v10 + 1);
  }

  v11 = qword_100BCEAA8;
  if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1006831D8(a1, __p);
    v12 = __p[0];
    if (v19 >= 0)
    {
      v12 = __p;
    }

    v13 = a4;
    if (*(a4 + 23) < 0)
    {
      v13 = *a4;
    }

    *buf = 136446722;
    v21 = v12;
    v22 = 1024;
    v23 = a3;
    v24 = 2080;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received 'SetReadStatus' event from device %{public}s (readFlag=%d, messageGUID=%s)", buf, 0x1Cu);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v14 = *(a1 + 264);
  if (v14)
  {
    if (*(a4 + 23) < 0)
    {
      sub_100008904(v16, *a4, a4[1]);
    }

    else
    {
      *v16 = *a4;
      v17 = a4[2];
    }

    (*(*v14 + 24))(v14, v16);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
    }
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  sub_100220A24(a2, 0);
  return sub_10002249C(buf);
}

void sub_1006859E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100685A14(uint64_t a1, unsigned int a2, int a3, uint64_t **a4)
{
  v8 = *(a4 + 23);
  if (v8 < 0)
  {
    v10 = *a4;
    v9 = (a4[1] + *a4);
  }

  else
  {
    v9 = (a4 + v8);
    v10 = a4;
  }

  while (v10 != v9)
  {
    *v10 = __toupper(*v10);
    v10 = (v10 + 1);
  }

  v11 = qword_100BCEAA8;
  if (!os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_12;
  }

  sub_1006831D8(a1, __p);
  v12 = __p[0];
  if (v23 >= 0)
  {
    v12 = __p;
  }

  v13 = a4;
  if (*(a4 + 23) < 0)
  {
    v13 = *a4;
  }

  *buf = 136446722;
  v25 = v12;
  v26 = 1024;
  v27 = a3;
  v28 = 2080;
  v29 = v13;
  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received 'SetDeleteStatus' from device %{public}s (deleteFlag=%d, messageHandle=%s)", buf, 0x1Cu);
  if (v23 < 0)
  {
    operator delete(__p[0]);
    if (a3)
    {
LABEL_13:
      v14 = *(a1 + 264);
      if (v14)
      {
        if (*(a4 + 23) < 0)
        {
          sub_100008904(__dst, *a4, a4[1]);
        }

        else
        {
          *__dst = *a4;
          v21 = a4[2];
        }

        (*(*v14 + 48))(v14, __dst);
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__dst[0]);
        }
      }

      if (*(a4 + 23) < 0)
      {
        sub_100008904(v18, *a4, a4[1]);
      }

      else
      {
        *v18 = *a4;
        v19 = a4[2];
      }

      sub_100683998(a1, v18, 2);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(v18[0]);
      }

      v16 = 0;
      goto LABEL_29;
    }
  }

  else
  {
LABEL_12:
    if (a3)
    {
      goto LABEL_13;
    }
  }

  v15 = qword_100BCEAA8;
  if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_ERROR))
  {
    sub_10085C20C(v15);
  }

  v16 = 1706;
LABEL_29:
  buf[0] = 0;
  sub_1000216B4(buf);
  sub_100220A24(a2, v16);
  return sub_10002249C(buf);
}

void sub_100685C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100685CB4(uint64_t a1, unsigned int a2, int a3)
{
  v6 = qword_100BCEAA8;
  if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 288), __p);
    if (v10 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136446210;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received 'SetNotificationFilter' from device %{public}s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(*(a1 + 272) + 120) = a3;
  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  sub_100220AA0(a2, 0);
  return sub_10002249C(__p);
}

void sub_100685DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100685DE4(void *a1)
{
  *a1 = off_100B05268;
  a1[32] = off_100B052E8;
  sub_100687E60(a1 + 34, 0);

  return sub_10032F580(a1);
}

void sub_100685E60(void *a1)
{
  *a1 = off_100B05268;
  a1[32] = off_100B052E8;
  sub_100687E60(a1 + 34, 0);
  sub_10032F580(a1);

  operator delete();
}

uint64_t sub_100685EF8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = a2;
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100008904((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v5;
  }

  if (a2)
  {
    operator new();
  }

  return a1;
}

uint64_t *sub_100685FC4(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return a1;
}

uint64_t sub_100686068(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != (a1 + 8))
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        sub_100686068(v4);
        operator delete();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_100028EB4(v2);
  return a1;
}

void sub_1006860EC(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v10 = *a1;
  v11 = *(a1 + 2);
  if (qword_100B54340 != -1)
  {
    sub_10085C250();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100686244;
  v6[3] = &unk_100ADF8F8;
  v8 = v10;
  v9 = v11;
  v7 = a5;
  sub_1005897E0(qword_100B54338, v6);
}

void sub_1006861A4(__int16 a1, int a2)
{
  if (qword_100B54340 != -1)
  {
    sub_10085C250();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006863C0;
  v4[3] = &unk_100AE0ED8;
  v6 = a1;
  v5 = a2;
  sub_1005897E0(qword_100B54338, v4);
}

void sub_100686244(uint64_t a1)
{
  if (qword_100B54DB8 != -1)
  {
    sub_10085C264();
  }

  v2 = qword_100B54DB0;
  v3 = *(a1 + 34) | (*(a1 + 38) << 32);
  v4 = *(a1 + 32);

  sub_1006831F4(v2, v3, v4);
}

void sub_1006863C0(uint64_t a1)
{
  if (qword_100B54DB8 != -1)
  {
    sub_10085C264();
  }

  v2 = qword_100B54DB0;
  v3 = *(a1 + 36);
  v4 = *(a1 + 32);

  sub_1006837A4(v2, v3, v4);
}

void sub_100686418(__int16 a1, char *a2, char a3, char a4, char a5)
{
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  sub_100007E30(v17, a2);
  if (qword_100B54340 != -1)
  {
    sub_10085C278();
  }

  v9 = qword_100B54338;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3321888768;
  v10[2] = sub_1006871FC;
  v10[3] = &unk_100B05368;
  v13 = a1;
  if (SHIBYTE(v18) < 0)
  {
    sub_100008904(&__p, v17[0], v17[1]);
  }

  else
  {
    __p = *v17;
    v12 = v18;
  }

  v14 = a3;
  v15 = a4;
  v16 = a5;
  sub_1005897E0(v9, v10);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_100686534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100686568(int a1, const void *a2, unsigned int a3)
{
  v6 = qword_100BCEAA8;
  if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a1;
    *&buf[8] = 1024;
    *&buf[10] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sendMessage(connectionId=%u, bodyDataLen=%u)", buf, 0xEu);
  }

  memset(buf, 0, sizeof(buf));
  v14 = 0;
  if (a3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = a3;
  if (a3)
  {
    memcpy(buf, a2, a3);
  }

  buf[a3] = 0;
  if (qword_100B54340 != -1)
  {
    sub_10085C278();
  }

  v7 = qword_100B54338;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_1006872C0;
  v9[3] = &unk_100B05398;
  v8 = SHIBYTE(v14);
  if (SHIBYTE(v14) < 0)
  {
    sub_100008904(__p, *buf, *&buf[8]);
  }

  else
  {
    *__p = *buf;
    v11 = v14;
  }

  v12 = a1;
  sub_1005897E0(v7, v9);
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(*buf);
    return;
  }

  operator delete(__p[0]);
  if (v8 < 0)
  {
    goto LABEL_17;
  }
}

void sub_1006867A0(__int16 a1, char *a2, __int16 a3, __int16 a4, char a5, int a6, char a7, _OWORD *a8, _OWORD *a9, char a10, _OWORD *a11, _OWORD *a12, char a13)
{
  v14 = qword_100BCEAA8;
  if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Got stack call for getMessageListing", buf, 2u);
  }

  memset(buf, 0, sizeof(buf));
  v17 = 0;
  if (a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = "";
  }

  sub_100007E30(buf, v15);
  operator new();
}

void sub_100686C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  operator delete(v33);
  operator delete(v32);
  operator delete(v31);
  operator delete(v30);
  if (*(v34 - 89) < 0)
  {
    operator delete(*(v34 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_100686CDC(__int16 a1, __int16 a2, __int16 a3)
{
  if (qword_100B54340 != -1)
  {
    sub_10085C250();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10068791C;
  v6[3] = &unk_100AE0ED8;
  v7 = a1;
  v8 = a2;
  v9 = a3;
  sub_1005897E0(qword_100B54338, v6);
}

void sub_100686D8C(__int16 a1, char *a2, __int16 a3, char a4, char a5)
{
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  sub_100007E30(v17, a2);
  if (qword_100B54340 != -1)
  {
    sub_10085C278();
  }

  v9 = qword_100B54338;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3321888768;
  v10[2] = sub_100687978;
  v10[3] = &unk_100B053F8;
  v13 = a1;
  if (SHIBYTE(v18) < 0)
  {
    sub_100008904(&__p, v17[0], v17[1]);
  }

  else
  {
    __p = *v17;
    v12 = v18;
  }

  v14 = a3;
  v15 = a4;
  v16 = a5;
  sub_1005897E0(v9, v10);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_100686EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100686EDC(__int16 a1, char a2, char *__s)
{
  v11 = 0uLL;
  v12 = 0;
  sub_100007E30(&v11, __s);
  if (qword_100B54340 != -1)
  {
    sub_10085C278();
  }

  v5 = qword_100B54338;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_100687A30;
  v6[3] = &unk_100B05428;
  v9 = a1;
  v10 = a2;
  if (SHIBYTE(v12) < 0)
  {
    sub_100008904(&__p, v11, *(&v11 + 1));
  }

  else
  {
    __p = v11;
    v8 = v12;
  }

  sub_1005897E0(v5, v6);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }
}

void sub_100686FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 - 33) < 0)
  {
    operator delete(*(v19 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_100687018(__int16 a1, char a2, char *__s)
{
  v11 = 0uLL;
  v12 = 0;
  sub_100007E30(&v11, __s);
  if (qword_100B54340 != -1)
  {
    sub_10085C278();
  }

  v5 = qword_100B54338;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_100687AF0;
  v6[3] = &unk_100B05428;
  v9 = a1;
  v10 = a2;
  if (SHIBYTE(v12) < 0)
  {
    sub_100008904(&__p, v11, *(&v11 + 1));
  }

  else
  {
    __p = v11;
    v8 = v12;
  }

  sub_1005897E0(v5, v6);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }
}

void sub_100687120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 - 33) < 0)
  {
    operator delete(*(v19 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_10068715C(__int16 a1, int a2)
{
  if (qword_100B54340 != -1)
  {
    sub_10085C250();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100687BB0;
  v4[3] = &unk_100AE0ED8;
  v6 = a1;
  v5 = a2;
  sub_1005897E0(qword_100B54338, v4);
}

void sub_1006871FC(uint64_t a1)
{
  if (qword_100B54DB8 != -1)
  {
    sub_10085C264();
  }

  v2 = qword_100B54DB0;
  v3 = *(a1 + 56);
  if (*(a1 + 55) < 0)
  {
    sub_100008904(__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *__p = *(a1 + 32);
    v5 = *(a1 + 48);
  }

  sub_100684904(v2, v3, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006872A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006872C0(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_100687424(uint64_t a1)
{
  if (qword_100B54DB8 != -1)
  {
    sub_10085C264();
  }

  v2 = qword_100B54DB0;
  v3 = *(a1 + 156);
  if (*(a1 + 55) < 0)
  {
    sub_100008904(&__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    __p = *(a1 + 32);
  }

  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (v4 != v5)
  {
    if (v4 - v5 >= 0)
    {
      operator new();
    }

    goto LABEL_21;
  }

  v7 = *(a1 + 80);
  v6 = *(a1 + 88);
  if (v6 != v7)
  {
    if (v6 - v7 >= 0)
    {
      operator new();
    }

    goto LABEL_21;
  }

  v9 = *(a1 + 104);
  v8 = *(a1 + 112);
  if (v8 != v9)
  {
    if (v8 - v9 >= 0)
    {
      operator new();
    }

    goto LABEL_21;
  }

  v11 = *(a1 + 128);
  v10 = *(a1 + 136);
  if (v10 != v11)
  {
    if (v10 - v11 >= 0)
    {
      operator new();
    }

LABEL_21:
    sub_1000C7698();
  }

  sub_100684C78(v2, v3, &__p, *(a1 + 158), *(a1 + 160), *(a1 + 162), *(a1 + 152), *(a1 + 163), v12, v13, *(a1 + 164));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10068764C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v22)
  {
    operator delete(v22);
    if (!v23)
    {
LABEL_4:
      if (__p)
      {
        operator delete(__p);
      }

      if (a22 < 0)
      {
        operator delete(a17);
      }

      _Unwind_Resume(exception_object);
    }
  }

  else if (!v23)
  {
    goto LABEL_4;
  }

  operator delete(v23);
  goto LABEL_4;
}

uint64_t *sub_1006876D0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    sub_100008904((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v6 = *(a2 + 56);
  v5 = *(a2 + 64);
  if (v5 != v6)
  {
    sub_1000C9104((a1 + 56), v5 - v6);
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  if (v7 != v8)
  {
    sub_1000C9104((a1 + 80), v7 - v8);
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v10 = *(a2 + 104);
  v9 = *(a2 + 112);
  if (v9 != v10)
  {
    sub_1000C9104((a1 + 104), v9 - v10);
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  result = (a1 + 128);
  *(a1 + 144) = 0;
  v13 = *(a2 + 128);
  v12 = *(a2 + 136);
  if (v12 != v13)
  {
    sub_1000C9104(result, v12 - v13);
  }

  return result;
}

void sub_100687830(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 112) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 88) = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v8;
    operator delete(v8);
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void sub_100687894(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    *(a1 + 64) = v5;
    operator delete(v5);
  }

  if (*(a1 + 55) < 0)
  {
    v6 = *(a1 + 32);

    operator delete(v6);
  }
}

uint64_t sub_10068791C(unsigned __int16 *a1)
{
  if (qword_100B54DB8 != -1)
  {
    sub_10085C264();
  }

  v2 = qword_100B54DB0;
  v3 = a1[16];
  v4 = a1[17];
  v5 = a1[18];

  return sub_100685590(v2, v3, v4, v5);
}

void sub_100687978(uint64_t a1)
{
  if (qword_100B54DB8 != -1)
  {
    sub_10085C264();
  }

  v2 = qword_100B54DB0;
  if (*(a1 + 55) < 0)
  {
    sub_100008904(__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *__p = *(a1 + 32);
    v4 = *(a1 + 48);
  }

  sub_10068575C(v2, 0, __p, 0, *(a1 + 60), *(a1 + 61));
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100687A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100687A30(uint64_t a1)
{
  if (qword_100B54DB8 != -1)
  {
    sub_10085C264();
  }

  v2 = qword_100B54DB0;
  v3 = *(a1 + 56);
  v4 = *(a1 + 58);
  if (*(a1 + 55) < 0)
  {
    sub_100008904(__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *__p = *(a1 + 32);
    v6 = *(a1 + 48);
  }

  sub_100685808(v2, v3, v4, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100687AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100687AF0(uint64_t a1)
{
  if (qword_100B54DB8 != -1)
  {
    sub_10085C264();
  }

  v2 = qword_100B54DB0;
  v3 = *(a1 + 56);
  v4 = *(a1 + 58);
  if (*(a1 + 55) < 0)
  {
    sub_100008904(__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *__p = *(a1 + 32);
    v6 = *(a1 + 48);
  }

  sub_100685A14(v2, v3, v4, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100687B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100687BB0(uint64_t a1)
{
  if (qword_100B54DB8 != -1)
  {
    sub_10085C264();
  }

  v2 = qword_100B54DB0;
  v3 = *(a1 + 36);
  v4 = *(a1 + 32);

  return sub_100685CB4(v2, v3, v4);
}

uint64_t sub_100687C08(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 16);
  if (v3 == a1 + 8)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  while (1)
  {
    v7 = *(v3 + 16);
    v8 = *(v7 + 55);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v7 + 40);
    }

    if (v6 == v8)
    {
      v10 = v5 >= 0 ? a2 : *a2;
      v13 = *(v7 + 32);
      v11 = v7 + 32;
      v12 = v13;
      v14 = (v9 >= 0 ? v11 : v12);
      if (!memcmp(v10, v14, v6))
      {
        break;
      }
    }

    v3 = *(v3 + 8);
    if (v3 == v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100687CB8(uint64_t a1)
{
  if (*(a1 + 1007) < 0)
  {
    operator delete(*(a1 + 984));
  }

  sub_10069F44C(a1 + 560);
  sub_10069F44C(a1 + 136);
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t *sub_100687D3C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (a3)
  {
    sub_100687DD0(a1, 0, 0, a2);
  }

  return a1;
}

uint64_t sub_100687E60(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100682E28(result);

    operator delete();
  }

  return result;
}

void sub_100687F14()
{
  v0 = objc_autoreleasePoolPush();
  sub_100007E30(byte_100BCE888, "<?xml version=1.0?>\n<!DOCTYPE folder-listing SYSTEM obex-folder-listing.dtd>\n");
  __cxa_atexit(&std::string::~string, byte_100BCE888, &_mh_execute_header);
  sub_100007E30(v2, "inbox");
  sub_100007E30(v3, "sent");
  sub_100007E30(v4, "outbox");
  sub_100007E30(v5, "deleted");
  sub_100687D3C(&qword_100BCE8A0, v2, 4);
  for (i = 0; i != -12; i -= 3)
  {
    if (SHIBYTE(v5[i + 2]) < 0)
    {
      operator delete(v5[i]);
    }
  }

  __cxa_atexit(sub_100682480, &qword_100BCE8A0, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_100688068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 95);
  v13 = -96;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 24;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 24;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

char *sub_1006880CC(char *__dst, double a2)
{
  v2 = a2;
  if (a2 >= 0.0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -v2;
  }

  memset(v12, 0, sizeof(v12));
  if (v3 >= 1)
  {
    v4 = __dst;
    if (a2 < 0.0)
    {
      if (v2)
      {
        __dst = memcpy(v12, __dst, 8 * -a2);
      }

      if (v2 != 128)
      {
        v10 = v2 ^ 0x80u;
        v11 = v4;
        do
        {
          *v11 = *&v11[8 * -v2];
          v11 += 8;
          --v10;
        }

        while (v10);
      }

      if (v2)
      {
        v4 = &v4[-8 * v3 + 1024];
        v9 = 8 * v3;
        return memcpy(v4, v12, v9);
      }
    }

    else
    {
      v5 = a2;
      if (a2)
      {
        __dst = memcpy(v12, &__dst[-8 * a2 + 1024], 8 * a2);
      }

      if (v2 <= 127)
      {
        v6 = 127 - v2;
        v7 = v4 + 1016;
        v8 = 128;
        do
        {
          *v7-- = *&v4[8 * v6];
          --v8;
          --v6;
        }

        while (v8 > v2);
      }

      if (v5)
      {
        v9 = 8 * v5;
        return memcpy(v4, v12, v9);
      }
    }
  }

  return __dst;
}

uint64_t *sub_100688248(uint64_t *result, int a2, int a3, int *a4, unsigned int *a5)
{
  if (a2 <= a3)
  {
    v6 = result;
    v7 = (a3 - 1);
    *a4 = 1;
    v8 = *result;
    if (a3 < 2)
    {
      goto LABEL_45;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = v8 - 8;
    v13 = a2;
    v35 = a4;
    v34 = a2;
    while (1)
    {
      v14 = v11;
      v15 = *(v12 + 8 * v13);
      *(v12 + 8 * v13) = *(v8 + 8 * v7);
      *(v8 + 8 * v7) = v15;
      v16 = v11;
      v17 = -1;
      v18 = v11;
      do
      {
        v19 = *(v8 + 8 * v16);
        if (v19 == v15)
        {
          *(v8 + 8 * v16) = *(v8 + 8 * v18);
          *(v8 + 8 * v18) = v19;
          ++v17;
        }

        else
        {
          if (v19 >= v15)
          {
            goto LABEL_11;
          }

          *(v8 + 8 * v16) = *(v8 + 8 * v18);
          *(v8 + 8 * v18) = v19;
        }

        ++v18;
LABEL_11:
        ++v16;
      }

      while (v16 < v7);
      *(v8 + 8 * v7) = *(v8 + 8 * v18);
      *(v8 + 8 * v18) = v15;
      v11 = (v18 + 1);
      if (v11 < a2)
      {
        goto LABEL_15;
      }

      v20 = v18 - v17;
      *a4 = v20;
      if (v20 <= a2)
      {
        LODWORD(v7) = v18;
        goto LABEL_45;
      }

      v7 = (v18 - 1);
      v11 = v14;
LABEL_15:
      v21 = v7 - v11;
      v22 = v7 - v11 + 1;
      if (v10)
      {
        v23 = v21 < a3 / 2;
        a3 = v21 + 1;
        if (!v23)
        {
          goto LABEL_20;
        }

        a3 = v21 + 1;
LABEL_29:
        if (v21 < 2)
        {
          goto LABEL_41;
        }

        v30 = *(v8 + 8 * v11);
        v31 = v11 + (v21 >> 1);
        v32 = *(v8 + 8 * v31);
        v33 = *(v8 + 8 * v7);
        if (v30 < v32)
        {
          if (v32 >= v33)
          {
            if (v30 >= v33)
            {
              v31 = v11;
            }

            else
            {
              v31 = v7;
            }
          }

          goto LABEL_39;
        }

        if (v30 < v33)
        {
          goto LABEL_41;
        }

        if (v32 < v33)
        {
          v31 = v7;
        }

LABEL_39:
        if (v31 <= v11)
        {
LABEL_41:
          v9 = 0;
        }

        else
        {
          v9 = 0;
          *(v8 + 8 * v11) = *(v8 + 8 * v31);
          *(v8 + 8 * v31) = v30;
        }
      }

      else
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_29;
        }

LABEL_20:
        if (v21 < 1)
        {
          v9 = 1;
        }

        else
        {
          v36 = v10;
          v37 = v7;
          v41 = v11 + 1;
          v40 = (v8 + 8 * v11);
          v42 = v11;
          v38 = a3;
          v39 = v11 + 5;
          do
          {
            v24 = v22 / 5;
            *a5 = v22 % 5;
            if (v22 >= 5)
            {
              v25 = v24;
              v26 = v39;
              v27 = v40;
              do
              {
                result = sub_100688530(v6, (v26 - 4), v26);
                v28 = *v27;
                *v27++ = *(v12 + 8 * result);
                *(v12 + 8 * result) = v28;
                v26 += 5;
                --v25;
              }

              while (v25);
            }

            if ((v22 % 5) > 0)
            {
              result = sub_100688530(v6, (v41 + 5 * v24), v22 + v42);
              v29 = *(v8 + 8 * (v24 + v42));
              *(v8 + 8 * (v24 + v42)) = *(v12 + 8 * result);
              *(v12 + 8 * result) = v29;
              ++v24;
            }

            v22 = v24;
          }

          while (v24 > 1);
          v9 = 1;
          a4 = v35;
          a2 = v34;
          a3 = v38;
          v7 = v37;
          v10 = v36;
          v11 = v42;
        }
      }

      v10 ^= 1u;
      v13 = v11 + 1;
      *a4 = v11 + 1;
      if (v7 <= v11)
      {
LABEL_45:
        v5 = v7 + 1;
        goto LABEL_46;
      }
    }
  }

  v5 = 0;
  *a4 = 0;
LABEL_46:
  *a5 = v5;
  return result;
}

uint64_t sub_100688530(uint64_t *a1, uint64_t a2, int a3)
{
  if (a2 != a3)
  {
    v3 = a2 + 1;
    if (v3 != a3)
    {
      v4 = a2 + 2;
      if (a2 + 2 == a3 || (v5 = a2 + 3, a2 + 3 == a3))
      {
        v6 = (*a1 + 8 * a2);
        v8 = *(v6 - 1);
        v7 = *v6;
        v9 = *(*a1 + 8 * v3);
        if (v8 >= *v6)
        {
          if (v8 >= v9)
          {
            if (v7 >= v9)
            {
              return v3;
            }

            else
            {
              return v4;
            }
          }
        }

        else
        {
          if (v8 >= v9)
          {
            LODWORD(v4) = a2;
          }

          if (v7 >= v9)
          {
            return v4;
          }

          else
          {
            return v3;
          }
        }
      }

      else
      {
        v10 = *a1;
        v11 = *(*a1 + 8 * (a2 - 1));
        v12 = *(*a1 + 8 * a2);
        v13 = *(*a1 + 8 * v3);
        if (v11 >= v12)
        {
          if (v12 >= v13)
          {
            v17 = a2 + 2;
          }

          else
          {
            v17 = a2 + 1;
          }

          if (v12 >= v13)
          {
            v18 = a2;
          }

          else
          {
            v18 = a2 + 1;
          }

          if (v11 >= v13)
          {
            v14 = v17;
          }

          else
          {
            v14 = v3;
          }

          if (v11 >= v13)
          {
            v15 = v18;
          }

          else
          {
            v15 = a2 - 1;
          }

          if (v11 >= v13)
          {
            v16 = a2;
          }

          else
          {
            v16 = v4;
          }
        }

        else if (v12 >= v13)
        {
          if (v11 >= v13)
          {
            v14 = v4;
          }

          else
          {
            v14 = a2;
          }

          if (v11 >= v13)
          {
            v15 = a2 - 1;
          }

          else
          {
            v15 = a2 + 1;
          }

          v16 = a2 + 1;
        }

        else
        {
          v14 = a2;
          v15 = a2;
          v16 = a2 + 2;
        }

        v19 = *(v10 + 8 * v4);
        v20 = *(v10 + 8 * v5);
        v21 = v20 < v19;
        if (v20 < v19)
        {
          v22 = *(v10 + 8 * v5);
        }

        else
        {
          v22 = *(v10 + 8 * v4);
        }

        if (v20 < v19)
        {
          v23 = a2 + 1;
        }

        else
        {
          v19 = *(v10 + 8 * v5);
          v23 = a2;
        }

        if (v21)
        {
          LODWORD(v3) = a2;
        }

        a2 = v14;
        if (v19 >= *(v10 + 8 * v14 - 8))
        {
          v24 = *(v10 + 8 * v15);
          if (v19 >= v24)
          {
            if (v22 >= v24)
            {
              a2 = v16;
              if (v22 < *(v10 + 8 * v16 - 8))
              {
                return (v23 + 3);
              }
            }

            else
            {
              return (v15 + 1);
            }
          }

          else
          {
            return (v3 + 3);
          }
        }
      }
    }
  }

  return a2;
}

double sub_100688678(uint64_t a1, int a2, double a3, double a4, __n128 a5, __n128 a6)
{
  a6.n128_u64[0] = *a1;
  a5.n128_u64[0] = *(a1 + 8);
  if (a2 >= 2)
  {
    v7 = a2 - 1;
    v18 = vdupq_n_s64(0x7FDFFFFFFFFFFFFFuLL);
    do
    {
      v8 = *(a1 + 24);
      *&v9.f64[0] = a6.n128_u64[0];
      *&v9.f64[1] = a5.n128_u64[0];
      v20 = a5;
      v21 = *(a1 + 16);
      v19 = a6;
      if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_f64(vabsq_f64(v9), v18), vcgtq_f64(vabsq_f64(v21), v18)))))
      {
        v10 = sub_10068B384(a6.n128_f64[0] * 0.5, a5.n128_f64[0] * 0.5);
        v11 = v21.f64[0] * 0.5;
        v12 = v8 * 0.5;
      }

      else
      {
        v10 = sub_10068B384(a6.n128_f64[0], a5.n128_f64[0]);
        v11 = v21.f64[0];
        v12 = v8;
      }

      v13 = sub_10068B384(v11, v12);
      a6 = v19;
      a5 = v20;
      if (v10 == v13)
      {
        v10 = sub_100688804(v20.n128_f64[0], v19.n128_f64[0]);
        v13 = sub_100688804(v8, v21.f64[0]);
        if (v10 == v13)
        {
          if (v19.n128_f64[0] >= 0.0)
          {
            v13 = v8;
          }

          else
          {
            v13 = v20.n128_f64[0];
          }

          if (v19.n128_f64[0] >= 0.0)
          {
            v14 = v20.n128_f64[0];
          }

          else
          {
            v14 = v8;
          }

          if (v10 >= 0.0)
          {
            v15 = v19.n128_f64[0];
          }

          else
          {
            v15 = v21.f64[0];
          }

          if (v10 >= 0.0)
          {
            v16 = v21.f64[0];
          }

          else
          {
            v16 = v19.n128_f64[0];
          }

          if (v19.n128_f64[0] == v21.f64[0])
          {
            v10 = v14;
          }

          else
          {
            v13 = v15;
            v10 = v16;
          }

          a5 = v20;
          a6 = v19;
          if (v10 == v13)
          {
            goto LABEL_28;
          }
        }

        else
        {
          a6 = v19;
          a5 = v20;
        }
      }

      if (v10 > v13)
      {
        a6.n128_u64[0] = *(a1 + 16);
        a5.n128_u64[0] = *(a1 + 24);
      }

LABEL_28:
      --v7;
    }

    while (v7);
  }

  return a6.n128_f64[0];
}
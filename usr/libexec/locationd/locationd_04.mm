void sub_100044810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100044914(char *a1, int a2, unsigned int *a3, uint64_t *a4)
{
  if (qword_1025D4600 != -1)
  {
    sub_10023F73C();
  }

  v8 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v9 = *a3;
    v10 = sub_100048D98(*a3);
    v11 = *a4;
    v12 = *(a4 + 5);
    v17[0] = 67109890;
    v17[1] = v9;
    v18 = 2080;
    v19 = v10;
    v20 = 2048;
    v21 = v11;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLIENT: registerForNotification, register for notification, %d, %s, desiredAccuracy, %.1lf, operatingMode, %d", v17, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101906690(a3, a4);
  }

  if (*a3 - 1 > 1)
  {
    v14 = a1;
    v15 = a2;
    v13 = a3;
  }

  else
  {
    v17[0] = 0;
    v13 = v17;
    v14 = a1;
    v15 = a2;
  }

  return sub_100044404(v14, v15, v13, a4);
}

uint64_t sub_100044A78(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100044180(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_100044B2C(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = sub_10002FB10(a1, a2, a3);
  if (v6)
  {
    if (*a2 <= 0x27 && ((1 << *a2) & 0x800000041FLL) != 0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (*(a1 + 110) == 1)
      {
        v9 = *(a3 + 88);
        if (v9 >= 0.0)
        {
          v10 = v9 + *(a3 + 76);
          v11 = v10 - Current;
          if (v10 < Current)
          {
            v11 = 0.0;
          }

          else
          {
            v10 = Current;
          }

          *(a3 + 76) = v10;
          *(a3 + 88) = v11;
        }

        else
        {
          *(a3 + 76) = Current;
        }
      }

      if (qword_1025D48C0 != -1)
      {
        sub_101906A28();
      }

      v12 = qword_1025D48C8;
      if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
      {
        sub_10000EC00(&v47, "Restored-");
        v13 = *(a1 + 31);
        if (v13 >= 0)
        {
          v14 = (a1 + 8);
        }

        else
        {
          v14 = *(a1 + 8);
        }

        if (v13 >= 0)
        {
          v15 = *(a1 + 31);
        }

        else
        {
          v15 = *(a1 + 16);
        }

        v16 = std::string::append(&v47, v14, v15);
        v17 = *&v16->__r_.__value_.__l.__data_;
        *&__p[16] = *(&v16->__r_.__value_.__l + 2);
        *__p = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        v18 = __p;
        if (__p[23] < 0)
        {
          v18 = *__p;
        }

        v19 = *(a3 + 4);
        v20 = *(a3 + 12);
        v21 = *(a3 + 20);
        v22 = *(a3 + 96);
        v23 = *(a3 + 76);
        v24 = *(a3 + 88);
        v25 = *(a3 + 128);
        *buf = 136317443;
        v64 = v18;
        v65 = 1024;
        v66 = 1;
        v67 = 2053;
        v68 = v19;
        v69 = 2053;
        v70 = v20;
        v71 = 2048;
        v72 = v21;
        v73 = 1026;
        v74 = v22;
        v75 = 2050;
        v76 = v23;
        v77 = 2050;
        v78 = Current - v23;
        v79 = 2050;
        v80 = v24;
        v81 = 1026;
        v82 = v25;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%{public}d,LocationTimestamp,%{public}.3f,Age,%{public}.3f,Lifespan,%{public}.3f,Integrity,%{public}d", buf, 0x5Au);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(123, 2))
      {
        sub_101906A3C(buf);
        v27 = qword_1025D48C8;
        sub_10000EC00(&v46, "Restored-");
        v30 = *(a1 + 8);
        v29 = a1 + 8;
        v28 = v30;
        v31 = *(v29 + 23);
        if (v31 >= 0)
        {
          v32 = v29;
        }

        else
        {
          v32 = v28;
        }

        if (v31 >= 0)
        {
          v33 = *(v29 + 23);
        }

        else
        {
          v33 = *(v29 + 8);
        }

        v34 = std::string::append(&v46, v32, v33);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v47.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
        *&v47.__r_.__value_.__l.__data_ = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        v36 = &v47;
        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v36 = v47.__r_.__value_.__r.__words[0];
        }

        v37 = *(a3 + 4);
        v38 = *(a3 + 12);
        v39 = *(a3 + 20);
        v40 = *(a3 + 96);
        v41 = *(a3 + 76);
        v42 = *(a3 + 88);
        v43 = *(a3 + 128);
        *__p = 136317443;
        *&__p[4] = v36;
        *&__p[12] = 1024;
        *&__p[14] = 1;
        *&__p[18] = 2053;
        *&__p[20] = v37;
        v49 = 2053;
        v50 = v38;
        v51 = 2048;
        v52 = v39;
        v53 = 1026;
        v54 = v40;
        v55 = 2050;
        v56 = v41;
        v57 = 2050;
        v58 = Current - v41;
        v59 = 2050;
        v60 = v42;
        v61 = 1026;
        v62 = v43;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v27, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%{public}d,LocationTimestamp,%{public}.3f,Age,%{public}.3f,Lifespan,%{public}.3f,Integrity,%{public}d", __p, 90);
        v45 = v44;
        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("LOCATION", 1, 0, 2, "virtual BOOL CLLocationProvider::getNotification(const CLLocationProvider_Type::Notification &, CLLocationProvider_Type::NotificationData &)", "%s\n", v45);
        if (v45 != buf)
        {
          free(v45);
        }
      }
    }
  }

  return v6;
}

void sub_100044F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100044F7C(_BYTE *result)
{
  if ((result[1160] & 1) == 0)
  {
    result[1160] = 1;
    v1 = *(result + 5);
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10004309C;
    v2[3] = &unk_102449A78;
    v2[4] = result;
    return [v1 afterInterval:v2 async:0.1];
  }

  return result;
}

void sub_10004500C(uint64_t a1, uint64_t a2, unint64_t a3, int a4, int a5)
{
  if (a2 >= 9)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v39 = 68289282;
      *v40 = 2082;
      *&v40[2] = "";
      *&v40[10] = 2050;
      *&v40[12] = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sbim Out of bounds access -- entity class too large, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld}", &v39, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v7 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v39 = 68289282;
      *v40 = 2082;
      *&v40[2] = "";
      *&v40[10] = 2050;
      *&v40[12] = a2;
      v8 = "#sbim Out of bounds access -- entity class too large";
      v9 = "{msg%{public}.0s:#sbim Out of bounds access -- entity class too large, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld}";
      v10 = v7;
LABEL_17:
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v8, v9, &v39, 0x1Cu);
      return;
    }

    return;
  }

  if (a3 < 3)
  {
    if (!a3)
    {
      return;
    }

    v17 = 0;
    v18 = 0;
    v19 = a2;
    do
    {
      if (*(a1 + 1392 + 12 * a2 + 4 * v17))
      {
        v18 = v17;
      }

      ++v17;
    }

    while (v17 != 3);
    v20 = a1 + 1392 + 12 * a2;
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v22 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_46;
      }

      v23 = *(v20 + 4 * a3);
      if (v23 != -1)
      {
        v24 = v23 + 1;
LABEL_30:
        *(v20 + 4 * a3) = v24;
        goto LABEL_46;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
        v22 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v26 = v22[245];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        v39 = 68289538;
        *v40 = 2082;
        *&v40[2] = "";
        *&v40[10] = 2050;
        *&v40[12] = a2;
        *&v40[20] = 2050;
        *&v40[22] = a3;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sbim Count overflow!, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld, arrowState:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld}", &v39, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v27 = off_1025D47A8;
      v28 = os_signpost_enabled(off_1025D47A8);
      v22 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      if (!v28)
      {
        goto LABEL_46;
      }

      v39 = 68289538;
      *v40 = 2082;
      *&v40[2] = "";
      *&v40[10] = 2050;
      *&v40[12] = a2;
      *&v40[20] = 2050;
      *&v40[22] = a3;
      v29 = "#sbim Count overflow!";
      v30 = "{msg%{public}.0s:#sbim Count overflow!, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld, arrowState:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld}";
    }

    else
    {
      v25 = *(v20 + 4 * a3);
      if (v25)
      {
        v24 = v25 - 1;
        goto LABEL_30;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
        v22 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v31 = v22[245];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        v39 = 68289538;
        *v40 = 2082;
        *&v40[2] = "";
        *&v40[10] = 2050;
        *&v40[12] = a2;
        *&v40[20] = 2050;
        *&v40[22] = a3;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sbim Count underflow!, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld, arrowState:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld}", &v39, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v27 = off_1025D47A8;
      v32 = os_signpost_enabled(off_1025D47A8);
      v22 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      if (!v32)
      {
        goto LABEL_46;
      }

      v39 = 68289538;
      *v40 = 2082;
      *&v40[2] = "";
      *&v40[10] = 2050;
      *&v40[12] = a2;
      *&v40[20] = 2050;
      *&v40[22] = a3;
      v29 = "#sbim Count underflow!";
      v30 = "{msg%{public}.0s:#sbim Count underflow!, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld, arrowState:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld}";
    }

    _os_signpost_emit_with_name_impl(dword_100000000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v29, v30, &v39, 0x26u);
    v22 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
LABEL_46:
    v33 = 0;
    v34 = 0;
    do
    {
      if (*(a1 + 12 * v19 + 1392 + 4 * v33))
      {
        v34 = v33;
      }

      ++v33;
    }

    while (v33 != 3);
    if (p_info[244] != -1)
    {
      sub_10192D4D0();
      v22 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v35 = v22[245];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v36 = *(v20 + 4 * a3);
      if (a4 == 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = -1;
      }

      v39 = 68290562;
      *v40 = 2082;
      *&v40[2] = "";
      *&v40[10] = 2050;
      *&v40[12] = a2;
      *&v40[20] = 1026;
      *&v40[22] = v37;
      *&v40[26] = 2050;
      *&v40[28] = a3;
      *&v40[36] = 1026;
      *&v40[38] = v36;
      *v41 = 2050;
      *&v41[2] = v18;
      v42 = 2050;
      v43 = v34;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sbim entity class count updated, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld, change:%{public}d, arrowStateBeingChanged:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld, newCount:%{public}u, oldArrowState:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld, newArrowState:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld}", &v39, 0x46u);
    }

    if (v18 != v34)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v38 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v39 = 68290050;
        *v40 = 2082;
        *&v40[2] = "";
        *&v40[10] = 2050;
        *&v40[12] = a2;
        *&v40[20] = 2050;
        *&v40[22] = v18;
        *&v40[30] = 2050;
        *&v40[32] = v34;
        *&v40[40] = 1026;
        *v41 = a5 == 1;
        _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sbim entity class arrow state changed, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld, oldArrowState:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld, newArrowState:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld, dueToDeauthorization:%{public}hhd}", &v39, 0x36u);
      }

      [*(a1 + 1504) entityClass:a2 didChangeArrowState:v34 dueToDeauthorization:{a5 == 1, v39, *v40, *&v40[8], *&v40[16], *&v40[24]}];
    }

    return;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v12 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
  {
    v39 = 68289282;
    *v40 = 2082;
    *&v40[2] = "";
    *&v40[10] = 2050;
    *&v40[12] = a3;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sbim Out of bounds access -- arrow state too large, arrowState:%{public}lu}", &v39, 0x1Cu);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v13 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    v39 = 68289282;
    *v40 = 2082;
    *&v40[2] = "";
    *&v40[10] = 2050;
    *&v40[12] = a3;
    v8 = "#sbim Out of bounds access -- arrow state too large";
    v9 = "{msg%{public}.0s:#sbim Out of bounds access -- arrow state too large, arrowState:%{public}lu}";
    v10 = v13;
    goto LABEL_17;
  }
}

void sub_100045720(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 128) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101AD1C4C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLSLCSubscription::onSLCNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101AD1C60();
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "activity";
      v17 = 2050;
      v18 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLSLCSubscription::onSLCNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  if (!*a2)
  {
    sub_1000458F0(a4, a3);
  }

  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000458F0(uint64_t a1, uint64_t a2)
{
  sub_100022008(v17, a2);
  v3 = [CLLocation alloc];
  v15[6] = v17[6];
  v15[7] = v17[7];
  v16[0] = v18[0];
  *(v16 + 12) = *(v18 + 12);
  v15[2] = v17[2];
  v15[3] = v17[3];
  v15[4] = v17[4];
  v15[5] = v17[5];
  v15[0] = v17[0];
  v15[1] = v17[1];
  v4 = [v3 initWithClientLocation:v15];
  v5 = [*(a1 + 64) legacyClientKey];
  v6 = *(a1 + 480);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_1000EB850;
  v7[3] = &unk_1024BEDB0;
  v7[5] = a1;
  sub_100022008(&v8, v17);
  v7[4] = v5;
  [v6 handleProvisionalIntermediationForService:3 forClientKey:v5 at:v4 withReply:v7];

  if (v13)
  {
    sub_100008080(v13);
  }

  if (v12 < 0)
  {
    operator delete(__p);
  }

  if (v10)
  {
    sub_100008080(v10);
  }

  if (v9)
  {
    sub_100008080(v9);
  }

  if (v23)
  {
    sub_100008080(v23);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v20)
  {
    sub_100008080(v20);
  }

  if (v19)
  {
    sub_100008080(v19);
  }
}

void sub_100045AB8(_Unwind_Exception *a1)
{
  sub_100311054(v1 + 48);
  sub_100311054(&STACK[0x6F8]);
  _Unwind_Resume(a1);
}

void sub_100045AEC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  v9 = sub_1000184F4(a1, a3);
  if ([v9 isAuthSharingSubIdentity])
  {
    v9 = [v9 anchorKeyPath];
  }

  v10 = a4[7];
  v53 = a4[6];
  v54 = v10;
  v55[0] = a4[8];
  *(v55 + 12) = *(a4 + 140);
  v11 = a4[3];
  *&buf[32] = a4[2];
  v50 = v11;
  v12 = a4[5];
  v51 = a4[4];
  v52 = v12;
  v13 = a4[1];
  *buf = *a4;
  *&buf[16] = v13;
  v14 = sub_10004FEC8(a1, v9, buf);
  if ([(CLClientManagerAuthorizationContext *)v14 isAuthorizedForServiceType:a2])
  {
    if ([(CLClientManagerAuthorizationContext *)v14 isNonProvisionallyAuthorizedForServiceType:a2])
    {
      v15 = a5[2];
      v16 = a5;
      v17 = 1;
LABEL_21:

      v15(v16, v17);
      return;
    }

    if ([(CLClientManagerAuthorizationContext *)v14 transientAwareRegistrationResult]!= 8)
    {
      v15 = a5[2];
      v16 = a5;
      v17 = 0;
      goto LABEL_21;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v19 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v9;
      *&buf[28] = 2050;
      *&buf[30] = a2;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Handle #provisional intermediation for service, Client:%{public, location:escape_only}@, serviceType:%{public}lu}", buf, 0x26u);
    }

    v20 = *(a1 + 264);
    if (!v20)
    {
      goto LABEL_41;
    }

    if (v9)
    {
      objc_msgSend_cppClientKey(v9);
      v21 = buf[23];
      v22 = *&buf[8];
    }

    else
    {
      v22 = 0;
      v21 = 0;
      memset(buf, 0, 24);
    }

    v23 = *(v20 + 23);
    if (v23 >= 0)
    {
      v24 = *(v20 + 23);
    }

    else
    {
      v24 = *(v20 + 8);
    }

    if ((v21 & 0x80u) == 0)
    {
      v22 = v21;
    }

    if (v24 == v22)
    {
      if (v23 >= 0)
      {
        v25 = v20;
      }

      else
      {
        v25 = *v20;
      }

      if ((v21 & 0x80u) == 0)
      {
        v26 = buf;
      }

      else
      {
        v26 = *buf;
      }

      v20 = memcmp(v25, v26, v24) != 0;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v20 = 1;
      if ((v21 & 0x80) == 0)
      {
LABEL_41:
        v27 = -1.0;
        if (*(a1 + 304) > 0.0)
        {
          [*(a1 + 40) currentLatchedAbsoluteTimestamp];
          v27 = v28 - *(a1 + 304);
        }

        v48[0] = [v9 userlessClientKeyPath];
        v47[1] = @"Challenger";
        v48[1] = [NSNumber numberWithBool:v20];
        v47[2] = @"OnDeckDuration";
        v48[2] = [NSNumber numberWithDouble:v27];
        [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:3];
        AnalyticsSendEvent();
        [*(a1 + 296) nextFireDelay];
        if (v29 >= 1.79769313e308)
        {
          goto LABEL_101;
        }

        v30 = *(a1 + 264);
        if (!v30)
        {
          goto LABEL_101;
        }

        if (v9)
        {
          objc_msgSend_cppClientKey(v9);
          v31 = buf[23];
          v32 = *&buf[8];
        }

        else
        {
          v32 = 0;
          v31 = 0;
          memset(buf, 0, 24);
        }

        v33 = *(v30 + 23);
        if (v33 >= 0)
        {
          v34 = *(v30 + 23);
        }

        else
        {
          v34 = v30[1];
        }

        if ((v31 & 0x80u) == 0)
        {
          v32 = v31;
        }

        if (v34 == v32)
        {
          if (v33 >= 0)
          {
            v35 = v30;
          }

          else
          {
            v35 = *v30;
          }

          if ((v31 & 0x80u) == 0)
          {
            v36 = buf;
          }

          else
          {
            v36 = *buf;
          }

          v37 = memcmp(v35, v36, v34) != 0;
        }

        else
        {
          v37 = 1;
        }

        if ((v31 & 0x80) != 0)
        {
          operator delete(*buf);
        }

        if (v37)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v38 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v39 = *(a1 + 264);
            if (*(v39 + 23) < 0)
            {
              v39 = *v39;
            }

            *buf = 68289538;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2114;
            *&buf[20] = v9;
            *&buf[28] = 2082;
            *&buf[30] = v39;
            _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Dropping #provisional intermediation reigning king is not yet stale, Client:%{public, location:escape_only}@, kingOfTheDeck:%{public, location:escape_only}s}", buf, 0x26u);
          }

          (a5[2])(a5, 0);
        }

        else
        {
LABEL_101:
          if (*(a1 + 272))
          {
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }

            v40 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289282;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              *&buf[18] = 2114;
              *&buf[20] = v9;
              _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Skipping #provisional intermediation throne change because of outstanding prompt, wouldBeKing:%{public, location:escape_only}@}", buf, 0x1Cu);
            }
          }

          else
          {
            v41 = *(a1 + 264);
            if (!v41)
            {
              goto LABEL_84;
            }

            if (v9)
            {
              objc_msgSend_cppClientKey(v9);
            }

            else
            {
              memset(buf, 0, 24);
            }

            v42 = sub_1006E0DE8(v41, buf);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            if (!v42)
            {
LABEL_84:
              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }

              v43 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
              {
                v44 = *(a1 + 264);
                if (v44)
                {
                  if (v44[23] < 0)
                  {
                    v44 = *v44;
                  }
                }

                else
                {
                  v44 = "nobody";
                }

                *buf = 68289538;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                *&buf[18] = 2114;
                *&buf[20] = v9;
                *&buf[28] = 2082;
                *&buf[30] = v44;
                _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Taking #provisional intermediation kingOfTheDeck, newKing:%{public, location:escape_only}@, oldKing:%{public, location:escape_only}s}", buf, 0x26u);
              }

              if (v9)
              {
                objc_msgSend_cppClientKey(v9);
              }

              else
              {
                memset(buf, 0, 24);
              }

              operator new();
            }

            v45 = *(a1 + 288);
            if (v45)
            {
              (*(v45 + 16))(v45, 0);

              *(a1 + 288) = 0;
            }

            *(a1 + 288) = [a5 copy];
            [*(a1 + 296) setNextFireDelay:300.0];
            [*(a1 + 40) currentLatchedAbsoluteTimestamp];
            *(a1 + 304) = v46;
            *(a1 + 280) = 1;
          }
        }

        return;
      }
    }

    operator delete(*buf);
    goto LABEL_41;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v18 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289794;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2114;
    *&buf[20] = v9;
    *&buf[28] = 2114;
    *&buf[30] = v14;
    *&buf[38] = 2050;
    *&buf[40] = a2;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#provisional intermediation Client not authorized for serviceType, Client:%{public, location:escape_only}@, AuthContext:%{public, location:escape_only}@, serviceType:%{public}lu}", buf, 0x30u);
  }

  (a5[2])(a5, 0);
}

void sub_10004629C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100046330(uint64_t result)
{
  if ((result - 1) >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_100046340(UInt8 *bytes, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v30 = 0;
  v29 = 1;
  if ((*a3 & 1) == 0)
  {
    v6 = *(bytes + 24) == 3 && *(bytes + 33) == 2;
  }

  v8 = *(bytes + 101);
  if (v8 && *(sub_100F2FD0C(v8) + 76) >= *(a3 + 8) && !v6)
  {
    if (*(a3 + 3))
    {
      v19 = 1;
    }

    else
    {
      v19 = sub_10030D934(*(bytes + 101));
    }

    v30 = v19;
    v22 = sub_100F2FD0C(*(bytes + 101));
    v17 = CFDataCreate(kCFAllocatorDefault, v22, 156 * v19);
    v29 = *(sub_1007F2CF8(*(bytes + 101)) + 52);
    if (*(a3 + 2) != 1)
    {
      v18 = 0;
      if (!v17)
      {
        goto LABEL_44;
      }

      goto LABEL_32;
    }

    v23 = sub_1007F2CF8(*(bytes + 101));
    v18 = CFDataCreate(kCFAllocatorDefault, v23, 560 * v19);
  }

  else
  {
    v9 = *(bytes + 7);
    v27[6] = *(bytes + 6);
    v27[7] = v9;
    v28[0] = *(bytes + 8);
    *(v28 + 12) = *(bytes + 140);
    v10 = *(bytes + 3);
    v27[2] = *(bytes + 2);
    v27[3] = v10;
    v11 = *(bytes + 5);
    v27[4] = *(bytes + 4);
    v27[5] = v11;
    v12 = *(bytes + 1);
    v27[0] = *bytes;
    v27[1] = v12;
    if (v6)
    {
      result = sub_101342F50(v27, (bytes + 160));
      if (!result)
      {
        return result;
      }

      v14 = kCFAllocatorDefault;
      v15 = v27;
      v16 = kCFAllocatorDefault;
    }

    else
    {
      v14 = kCFAllocatorDefault;
      v16 = kCFAllocatorDefault;
      v15 = bytes;
    }

    v17 = CFDataCreate(v16, v15, 156);
    v30 = 1;
    v29 = bytes[212];
    if (*(a3 + 2) == 1)
    {
      memset(v26, 0, 512);
      sub_10023F924(v26, (bytes + 160));
      v18 = CFDataCreate(v14, v26, 560);
    }

    else
    {
      v18 = 0;
    }

    v20 = *(bytes + 165);
    if (v20 && (sub_1000433CC(a2, "CoarseMetaData", v20) & 1) == 0)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101BC7CB0();
      }

      v21 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v26[0]) = 0;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "Failed to convert Coarse MetaData to nvp", v26, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BC7CD8();
        if (!v17)
        {
          goto LABEL_44;
        }

LABEL_32:
        if (!sub_1000433CC(a2, "Locations", v17) || !sub_10004345C(a2, "LocationCount", &v30) || !sub_100043360(a2, "ForceMapMatching", (a3 + 1)) || !sub_100043360(a2, "IsFitnessMatch", &v29))
        {
          if (qword_1025D48A0 != -1)
          {
            sub_101BC7CB0();
          }

          v24 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
          {
            LOWORD(v26[0]) = 0;
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "Failed to convert location to nvp", v26, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101BC7DAC();
          }

          v30 = 0;
        }

        CFRelease(v17);
        goto LABEL_44;
      }
    }
  }

  if (v17)
  {
    goto LABEL_32;
  }

LABEL_44:
  if (v18)
  {
    if ((sub_1000433CC(a2, "LocationsPrivate", v18) & 1) == 0)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101BC7CB0();
      }

      v25 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v26[0]) = 0;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_FAULT, "Failed to convert location private to nvp", v26, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BC7E80();
      }
    }

    CFRelease(v18);
  }

  return v30;
}

const void **sub_100046778(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_100007070(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100019DF4(a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_1000469F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v8 = sub_100046330(a2);
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v9 = 2;
      goto LABEL_16;
    }

    if (a3 != 3)
    {
      goto LABEL_17;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_101A81328();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v12 = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = v6;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Got max arrow state!, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld}", &v12, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_101A81380();
      }
    }

    v11 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v12 = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = v6;
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Got max arrow state!", "{msg%{public}.0s:Got max arrow state!, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld}", &v12, 0x1Cu);
    }

LABEL_14:
    v9 = 0;
    goto LABEL_16;
  }

  if (!a3)
  {
    goto LABEL_14;
  }

  if (a3 == 1)
  {
    v9 = 1;
LABEL_16:
    *(a1 + 4 * v8 + 156) = v9;
  }

LABEL_17:
  if ((v4 & 1) != 0 || sub_100046BEC(a1, v6))
  {
    sub_100046C98(a1, v4);
  }
}

uint64_t sub_100046BEC(uint64_t a1, unsigned int a2)
{
  v4 = a1 + 112;
  (*(*(a1 + 112) + 16))(a1 + 112);
  if (a2 < 8 && ((0x87u >> a2) & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a1 + a2 + 145);
  }

  (*(*v4 + 24))(v4);
  return v5 & 1;
}

void sub_100046C98(uint64_t a1, int a2)
{
  v3 = 0;
  v4 = 0;
  do
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101A81380();
    }

    v5 = off_1025D47A8;
    v6 = a1 + 4 * v3;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(v6 + 156);
      *buf = 68289538;
      v32 = 0;
      v33 = 2082;
      v34 = "";
      v35 = 2050;
      v36 = v3;
      v37 = 2050;
      v38 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sbim: entity class state mask, class:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld, mask:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld}", buf, 0x26u);
    }

    if (sub_100046BEC(a1, v3))
    {
      v4 |= *(v6 + 156);
    }

    ++v3;
  }

  while (v3 != 9);
  v9 = 0;
  v10 = a1 + 224;
  *&v8 = 68289794;
  v27 = v8;
  do
  {
    v11 = v9 == 1;
    if (v9 == 2)
    {
      v11 = 2;
    }

    v12 = *(a1 + 8 * v9 + 200);
    v13 = *(a1 + 192);
    v14 = v13 & v11;
    v15 = v11 & v4;
    if ((v13 & v11) != 0 && v15 == 0)
    {
      if (*(v10 + v9) != 1 || a2 != 0)
      {
        v19 = sub_1000F49A8(1);
        if (v9 == 2)
        {
          v20 = 1;
        }

        else
        {
          v20 = a2;
        }

        if (v20)
        {
          v21 = 0.0;
        }

        else
        {
          v21 = v19;
        }

        if (![v12 handler])
        {
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_100D92AB4;
          v29[3] = &unk_102455A60;
          v29[4] = a1;
          v30 = v9;
          [v12 setHandler:v29];
        }

        if (qword_1025D47A0 != -1)
        {
          sub_101A81380();
        }

        v22 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289538;
          v32 = 0;
          v33 = 2082;
          v34 = "";
          v35 = 2050;
          v36 = v9;
          v37 = 1026;
          LODWORD(v38) = v21;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sbim: scheduling arrow demotion timer, state:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld, delay:%{public}d}", buf, 0x22u);
        }

        [v12 setNextFireDelay:v21];
        *(v10 + v9) = 1;
      }
    }

    else
    {
      if (v14)
      {
        if (*(v10 + v9) != 1 || v15 == 0)
        {
          goto LABEL_51;
        }
      }

      else if (!v15)
      {
        goto LABEL_51;
      }

      *(a1 + 192) = v13 | v11;
      [v12 setNextFireDelay:{1.79769313e308, v27}];
      *(v10 + v9) = 0;
      if (v14)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_101A81380();
        }

        v23 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          v24 = *(a1 + 192);
          *buf = v27;
          v32 = 0;
          v33 = 2082;
          v34 = "";
          v35 = 2050;
          v36 = v9;
          v37 = 2050;
          v38 = v24;
          v39 = 2050;
          v40 = v24;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sbim: only cancelling a demotion timer due to another demotion timer in-flight, state:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld, mask:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld, newMask:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld}", buf, 0x30u);
        }
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_101A81380();
        }

        v25 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          v26 = *(a1 + 192);
          *buf = 68289538;
          v32 = 0;
          v33 = 2082;
          v34 = "";
          v35 = 2050;
          v36 = v9;
          v37 = 2050;
          v38 = v26;
          _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sbim: promoting arrow, state:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld, mask:%{public, location:CLLocationDictionaryUtilitiesArrowState}lld}", buf, 0x26u);
        }

        sub_1000470DC(a1);
      }
    }

LABEL_51:
    ++v9;
  }

  while (v9 != 3);
}

uint64_t sub_1000470DC(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101A81328();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 68289026;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:sbim: Posting status bar icon visibility change notification}", v7, 0x12u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, CLShouldDisplayStatusBarIconChangedNotification, 0, 0, 0);
  v4 = *(a1 + 192);
  result = _os_feature_enabled_impl();
  if ((result & 1) == 0)
  {
    if ((v4 & 2) != 0)
    {
      v6 = 2;
    }

    else
    {
      v6 = v4 & 1;
    }

    return [objc_msgSend(objc_msgSend(*(a1 + 128) "vendor")];
  }

  return result;
}

void sub_100047218(uint64_t a1)
{
  if (qword_1025D4890 != -1)
  {
    sub_101916140();
  }

  v2 = qword_1025D4898;
  if (os_log_type_enabled(qword_1025D4898, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 48);
    v5 = *(v3 + 49);
    v6 = *(v3 + 50);
    v7 = *(v3 + 51);
    v8 = *(v3 + 52);
    v9 = *(v3 + 56);
    v10 = *(v3 + 60);
    v11 = *(v3 + 64);
    LODWORD(v3) = *(v3 + 68);
    v12[0] = 67111168;
    v12[1] = v4;
    v13 = 1024;
    v14 = v5;
    v15 = 1024;
    v16 = v6;
    v17 = 1024;
    v18 = v7;
    v19 = 1024;
    v20 = v8;
    v21 = 1024;
    v22 = v9;
    v23 = 1024;
    v24 = v10;
    v25 = 1024;
    v26 = v11;
    v27 = 0;
    v28 = 4;
    v29 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "location system state, cell available, %d, wifi available, %d, passcode locked, %d, airplane mode enabled, %d, accessory connected, %d, reachability, %d, powered, %d, gpsCoexWifi, %d, gpsCoexBt, %d", v12, 0x38u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101916154(a1);
  }

  (*(*(a1 + 40) + 16))();
  dispatch_release(*(a1 + 32));
}

__n128 sub_10004738C(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  *(&a2[3] + 8) = 0uLL;
  a2[3].n128_u64[0] = 0;
  return result;
}

__n128 sub_1000473A8(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

uint64_t sub_1000473CC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 48) = v2;
  return result;
}

__n128 sub_1000473E0(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

uint64_t sub_100047404(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

__n128 sub_100047424(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v2;
  v3 = *(a2 + 80);
  v4 = *(a2 + 96);
  v5 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v5;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  result = *(a2 + 144);
  v7 = *(a2 + 160);
  v8 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v7;
  *(a1 + 176) = v8;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_100047458(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 53) = *(a2 + 53);
  *(result + 48) = v2;
  return result;
}

uint64_t sub_10004746C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

__n128 sub_10004748C(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  return result;
}

__n128 sub_1000474A0(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  v2 = *(a2 + 64);
  v3 = *(a2 + 80);
  v4 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v4;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  result = *(a2 + 128);
  v6 = *(a2 + 144);
  v7 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v6;
  *(a1 + 160) = v7;
  *(a1 + 128) = result;
  return result;
}

__n128 sub_1000474F4(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  v2 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v2;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  v3 = *(a2 + 88);
  v4 = *(a2 + 104);
  *(a1 + 118) = *(a2 + 118);
  *(a1 + 104) = v4;
  *(a1 + 88) = v3;
  v5 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v5;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 136) = 0;
  v6 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 160) = v6;
  v7 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v7;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  v8 = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 208) = v8;
  v9 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v9;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  v10 = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 256) = v10;
  v11 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 280) = v11;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  result = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 304) = result;
  return result;
}

__n128 sub_100047618(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v2;
  v3 = *(a2 + 80);
  v4 = *(a2 + 96);
  v5 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v5;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  result = *(a2 + 144);
  v7 = *(a2 + 160);
  v8 = *(a2 + 176);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 160) = v7;
  *(a1 + 176) = v8;
  *(a1 + 144) = result;
  return result;
}

void *sub_10004764C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v2;
  *(a2 + 56) = 0u;
  *(a2 + 48) = 0;
  v3 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v3;
  *(a2 + 80) = 0u;
  *(a2 + 72) = 0;
  v4 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v4;
  *(a2 + 104) = 0u;
  *(a2 + 96) = 0;
  v5 = *(a2 + 200);
  v6 = *(a2 + 216);
  v7 = *(a2 + 229);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 229) = v7;
  *(a1 + 216) = v6;
  *(a1 + 200) = v5;
  v8 = *(a2 + 120);
  v9 = *(a2 + 136);
  v10 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v10;
  *(a1 + 136) = v9;
  *(a1 + 120) = v8;
  v11 = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 240) = v11;
  *(a2 + 256) = 0;
  *(a2 + 240) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 264) = *(a2 + 264);
  *(a2 + 264) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 288) = 0;
  *(a2 + 272) = 0u;
  v12 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 296) = v12;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0u;
  v13 = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 320) = v13;
  *(a2 + 328) = 0u;
  *(a2 + 320) = 0;
  v14 = *(a2 + 344);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 344) = v14;
  *(a2 + 360) = 0;
  *(a2 + 344) = 0u;
  v16 = *(a2 + 448);
  v15 = *(a2 + 464);
  v17 = *(a2 + 432);
  *(a1 + 477) = *(a2 + 477);
  *(a1 + 448) = v16;
  *(a1 + 464) = v15;
  *(a1 + 432) = v17;
  v18 = *(a2 + 368);
  v19 = *(a2 + 384);
  v20 = *(a2 + 416);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = v20;
  *(a1 + 368) = v18;
  *(a1 + 384) = v19;
  v21 = *(a2 + 488);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 488) = v21;
  *(a2 + 504) = 0;
  *(a2 + 488) = 0u;
  *(a1 + 512) = 0;
  *(a1 + 512) = *(a2 + 512);
  *(a2 + 512) = 0;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  *(a2 + 536) = 0;
  *(a2 + 520) = 0u;
  return memcpy((a1 + 544), (a2 + 544), 0x458uLL);
}

__n128 sub_100047814(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

__n128 sub_100047848(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

__n128 sub_10004786C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v2;
  v3 = *(a2 + 80);
  v4 = *(a2 + 96);
  v5 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v5;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  result = *(a2 + 144);
  v7 = *(a2 + 160);
  v8 = *(a2 + 176);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 160) = v7;
  *(a1 + 176) = v8;
  *(a1 + 144) = result;
  return result;
}

__n128 sub_1000478B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  v2 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v2;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  v3 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v3;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0;
  v4 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v4;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  result = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = result;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  v6 = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 160) = v6;
  return result;
}

uint64_t sub_1000479A0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t sub_1000479C0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

__n128 sub_1000479E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v2;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  v3 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v3;
  result = *(a2 + 120);
  v5 = *(a2 + 136);
  v6 = *(a2 + 152);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 152) = v6;
  *(a1 + 136) = v5;
  *(a1 + 120) = result;
  return result;
}

void *sub_100047A2C(void *result, void *a2)
{
  result[6] = result + 6;
  result[7] = result + 6;
  result[8] = 0;
  v2 = a2[8];
  if (v2)
  {
    v4 = a2[6];
    v3 = a2[7];
    v5 = *(v4 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = result[6];
    *(v7 + 8) = v3;
    *v3 = v7;
    result[6] = v4;
    *(v4 + 8) = result + 6;
    result[8] = v2;
    a2[8] = 0;
  }

  return result;
}

uint64_t sub_100047A74(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 50) = *(a2 + 50);
  *(result + 48) = v2;
  return result;
}

__n128 sub_100047AA8(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

__n128 sub_100047ACC(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

__n128 sub_100047B50(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

__n128 sub_100047B64(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

__n128 sub_100047B88(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3] = 0uLL;
  return result;
}

uint64_t sub_100047B98(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

__n128 sub_100047BA8(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

__n128 sub_100047BDC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  v9 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  v12 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v12;
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  v13 = *(a2 + 240);
  v14 = *(a2 + 256);
  v15 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 256) = v14;
  *(a1 + 272) = v15;
  *(a1 + 240) = v13;
  sub_10067DFB8(a1 + 296, (a2 + 296));
  result = *(a2 + 336);
  *(a1 + 336) = result;
  return result;
}

uint64_t sub_100047C5C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

__n128 sub_100047C6C(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 64);
  v3 = *(a2 + 80);
  v4 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 64) = result;
  return result;
}

__n128 sub_100047C90(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3] = 0uLL;
  return result;
}

__n128 sub_100047CAC(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 352) = 0;
  if (*(a2 + 352) == 1)
  {
    v4 = *(a2 + 48);
    v5 = *(a2 + 64);
    v6 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v6;
    *(a1 + 48) = v4;
    *(a1 + 64) = v5;
    v7 = *(a2 + 112);
    v8 = *(a2 + 128);
    v9 = *(a2 + 160);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v9;
    *(a1 + 112) = v7;
    *(a1 + 128) = v8;
    v10 = *(a2 + 176);
    v11 = *(a2 + 192);
    v12 = *(a2 + 224);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 224) = v12;
    *(a1 + 176) = v10;
    *(a1 + 192) = v11;
    v13 = *(a2 + 240);
    v14 = *(a2 + 256);
    v15 = *(a2 + 272);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 256) = v14;
    *(a1 + 272) = v15;
    *(a1 + 240) = v13;
    sub_10067DFB8(a1 + 296, (a2 + 296));
    result = *(a2 + 336);
    *(a1 + 336) = result;
    *(a1 + 352) = 1;
  }

  return result;
}

void sub_100047D60(void *a1, uint64_t a2)
{
  v4 = objc_alloc_init(CLDaemonStatsFetchLocationSystemStateAdapter);
  v5 = dispatch_group_create();
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x4812000000;
  v25[3] = sub_10004748C;
  v25[4] = nullsub_42;
  v25[5] = &unk_10238AE8B;
  v26 = 0;
  v27 = 0;
  v28 = 1000;
  v29 = 0;
  v30 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3812000000;
  v23[3] = sub_1000ED2C0;
  v23[4] = sub_1000EC57C;
  v24 = v5;
  dispatch_group_enter(v5);
  v6 = [objc_msgSend(a1 "vendor")];
  [v6 registerDelegate:v4 inSilo:{objc_msgSend(a1, "silo")}];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000EC648;
  v22[3] = &unk_10246C470;
  v22[4] = v25;
  v22[5] = v23;
  [v6 fetchIsCellAvailableWithReply:v22];
  v7 = [objc_msgSend(a1 "vendor")];
  [v7 registerDelegate:v4 inSilo:{objc_msgSend(a1, "silo")}];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000EC658;
  v21[3] = &unk_10246C470;
  v21[4] = v25;
  v21[5] = v23;
  [v7 fetchIsWifiAvailableWithReply:v21];
  v8 = [objc_msgSend(a1 "vendor")];
  [v8 registerDelegate:v4 inSilo:{objc_msgSend(a1, "silo")}];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000EC684;
  v20[3] = &unk_10246C498;
  v20[4] = v25;
  v20[5] = v23;
  [v8 fetchDataAvailabilityWithReply:v20];
  v9 = [objc_msgSend(a1 "vendor")];
  [v9 registerDelegate:v4 inSilo:{objc_msgSend(a1, "silo")}];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000EC69C;
  v19[3] = &unk_10246C470;
  v19[4] = v25;
  v19[5] = v23;
  [v9 fetchIsAirplaneModeEnabledWithReply:v19];
  v10 = [objc_msgSend(a1 "vendor")];
  [v10 registerDelegate:v4 inSilo:{objc_msgSend(a1, "silo")}];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000EC61C;
  v18[3] = &unk_10246C470;
  v18[4] = v25;
  v18[5] = v23;
  [v10 fetchIsAccessoryConnectedWithReply:v18];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000EC6AC;
  v17[3] = &unk_10246C498;
  v17[4] = v25;
  v17[5] = v23;
  [v9 fetchReachabilityWithReply:v17];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000EC6BC;
  v16[3] = &unk_10246C470;
  v16[4] = v25;
  v16[5] = v23;
  [v9 fetchIsBatteryConnectedWithReply:v16];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000EC5FC;
  v15[3] = &unk_10246C4C0;
  v15[4] = v25;
  v15[5] = v23;
  [v9 fetchWirelessModemClientCountWithReply:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000EC668;
  v14[3] = &unk_10246C470;
  v14[4] = v25;
  v14[5] = v23;
  [v7 fetchIsAssociatedWithReply:v14];
  v11 = [objc_msgSend(a1 "vendor")];
  [v11 registerDelegate:v4 inSilo:{objc_msgSend(a1, "silo")}];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000EC62C;
  v13[3] = &unk_10246C470;
  v13[4] = v25;
  v13[5] = v23;
  [v11 fetchHasConnectedDevicesWithReply:v13];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047218;
  block[3] = &unk_10246C4E8;
  block[6] = v25;
  block[4] = v5;
  block[5] = a2;
  dispatch_group_notify(v5, [objc_msgSend(a1 "silo")], block);
  _Block_object_dispose(v23, 8);
  if (v24)
  {
    dispatch_group_leave(v24);
  }

  _Block_object_dispose(v25, 8);
}

void sub_100048338(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 232), 8);
  v3 = *(v1 - 184);
  if (v3)
  {
    dispatch_group_leave(v3);
  }

  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_100048384(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void sub_100048398(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1000483B4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1000483CC(uint64_t a1)
{
  v3 = *(a1 + 48);
  v1 = (a1 + 48);
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    sub_10046F36C(v1, v2);
  }
}

uint64_t sub_1000483F4(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100048458(uint64_t a1)
{
  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 87) < 0)
  {
    v2 = *(a1 + 64);

    operator delete(v2);
  }
}

void sub_10004851C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_100048564(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    v2 = *(a1 + 64);

    operator delete(v2);
  }
}

void sub_100048618(uint64_t a1)
{
  v2 = *(a1 + 272);
  if (v2)
  {
    *(a1 + 280) = v2;
    operator delete(v2);
  }

  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
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
    v3 = *(a1 + 48);

    operator delete(v3);
  }
}

uint64_t sub_1000486B8(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100048710(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void sub_100048748(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1000487D8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1000487F0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_100008080(v1);
  }
}

uint64_t sub_100048800(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_100048828(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t sub_100048854(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100048890(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_100008080(v1);
  }
}

uint64_t sub_1000488A4(uint64_t result)
{
  if (*(result + 352) == 1)
  {
    return sub_100134860(result + 296);
  }

  return result;
}

uint64_t *sub_1000488C8(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

uint64_t sub_1000489F4(char *a1, int a2, int *a3)
{
  HIDWORD(v25) = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 28) >= v11)
            {
              v12 = v9;
            }

            v9 = *(v9 + 8 * (*(v9 + 28) < v11));
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_10011753C((v15 + 40), &v25 + 1);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_10189010C();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v35 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v27 = 2082;
                v28 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v35 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_10189010C();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                v21 = qword_1025D47F8;
                (*(*a1 + 160))(buf, a1, a3);
                if (v29 >= 0)
                {
                  v22 = buf;
                }

                else
                {
                  v22 = *buf;
                }

                v30 = 136446466;
                v31 = v20;
                v32 = 2082;
                v33 = v22;
                LODWORD(v25) = 22;
                _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v21, 17, "%{public}s; notification %{public}s not found", &v30, v25);
                v24 = v23;
                if (v29 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLLocationProvider_Type::Notification, CLLocationProvider_Type::NotificationData, char, CLLocationProvider_Type::RegInfo>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLLocationProvider_Type::Notification, NotificationData_T = CLLocationProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLLocationProvider_Type::RegInfo]", "%s\n", v24);
                if (v24 != __p)
                {
                  free(v24);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

const char *sub_100048D98(unsigned int a1)
{
  if (a1 > 0x31)
  {
    return "Unknown";
  }

  else
  {
    return (&off_1024E1448)[a1];
  }
}

void sub_100048DBC(uint64_t a1, uint64_t a2)
{
  v4 = CLConnectionMessage::name(*a2);
  if ((*(*a1 + 48))(a1, v4))
  {
    v5 = CLConnectionMessage::name(*a2);
    if (![*(a1 + 112) isNonProvisionallyAuthorizedForServiceTypeMask:{sub_1000491B0(a1, v5)}])
    {
      if (qword_1025D4790 != -1)
      {
        sub_1019EEFF0();
      }

      v17 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
      {
        v18 = CLConnectionMessage::name(*a2);
        if (*(v18 + 23) >= 0)
        {
          v19 = v18;
        }

        else
        {
          v19 = *v18;
        }

        *buf = 68289282;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2082;
        v29 = v19;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Client not authorized for message, message:%{public, location:escape_only}s}", buf, 0x1Cu);
      }

      sub_100B20834((a1 + 128), a2);
    }

    v6 = *(a2 + 8);
    v22 = *a2;
    v23 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    CLConnection::sendMessage();
    if (v23)
    {
      sub_100008080(v23);
    }

    v7 = *(a2 + 16);
    if ((v7 & 0x7F) != 0)
    {
      sub_1000F6870(a1, v7, *(a2 + 24));
      v8 = *(a2 + 16) & 0x14;
      if (!v8)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_1019EED30();
        }

        v9 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
        {
          v10 = *(a1 + 48);
          *buf = 68289282;
          v25 = 0;
          v26 = 2082;
          v27 = "";
          v28 = 2114;
          v29 = v10;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:markReceivingLocationInformation, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
        }
      }

      v11 = *(a1 + 16);
      if ([*(a1 + 48) isAuthLimited])
      {
        v12 = sub_1001D2EC4(*(a1 + 16), *(a1 + 48));
      }

      else
      {
        v12 = *(a1 + 48);
      }

      v20 = CLConnectionMessage::name(*a2);
      v21 = 1;
      if (*(v20 + 23) < 0 && *(v20 + 8) == 39)
      {
        v21 = memcmp(*v20, "kCLConnectionMessageCompensatedLocation", 0x27uLL) != 0;
      }

      sub_1000F6390(v11, v12, v21, v8 != 0);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019EEDF4();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 48);
      v15 = CLConnectionMessage::name(*a2);
      if (*(v15 + 23) >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = *v15;
      }

      *buf = 68289538;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2114;
      v29 = v14;
      v30 = 2082;
      v31 = v16;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Warning Client not interested in this message, ClientKeyPath:%{public, location:escape_only}@, message:%{public, location:escape_only}s}", buf, 0x26u);
    }
  }
}

void sub_100049124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100049144(uint64_t a1, uint64_t *a2)
{
  if (sub_1000494D4(a2))
  {
    return 1;
  }

  v5 = *(a1 + 152);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  return [v5 objectForKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v6)}] != 0;
}

uint64_t sub_1000491B0(uint64_t a1, const void **a2)
{
  v3 = a1;
  v4 = *(a2 + 23);
  v5 = a2[1];
  if (v4 < 0 && v5 == 28)
  {
    if (**a2 != 0x656E6E6F434C436BLL || *(*a2 + 1) != 0x73654D6E6F697463 || *(*a2 + 2) != 0x61636F4C65676173 || *(*a2 + 6) != 1852795252)
    {
      goto LABEL_54;
    }

LABEL_19:
    if (sub_1000F42C0(a1, a2))
    {
      return 16;
    }

    if ([*(v3 + 112) inUseLevelIsAtLeast:3])
    {
      return 16;
    }

    return 32;
  }

  if ((v4 & 0x80000000) == 0 || v5 != 39)
  {
    if (v4 < 0 && v5 == 36)
    {
      if (memcmp(*a2, "kCLConnectionMessageRegionMonitoring", 0x24uLL))
      {
        goto LABEL_54;
      }
    }

    else
    {
      if ((v4 & 0x80000000) == 0 || v5 != 31)
      {
        if (v4 < 0 && v5 == 27)
        {
          v14 = **a2 == 0x656E6E6F434C436BLL && *(*a2 + 1) == 0x73654D6E6F697463;
          v15 = v14 && *(*a2 + 2) == 0x676E615265676173;
          if (v15 && *(*a2 + 19) == 0x676E69676E615265)
          {
            return 4;
          }
        }

        goto LABEL_54;
      }

      if (**a2 != 0x656E6E6F434C436BLL || *(*a2 + 1) != 0x73654D6E6F697463 || *(*a2 + 2) != 0x6967655265676173 || *(*a2 + 23) != 0x65746174536E6F69)
      {
        goto LABEL_54;
      }
    }

    return 3;
  }

  v9 = *a2;
  a1 = memcmp(*a2, "kCLConnectionMessageCompensatedLocation", 0x27uLL);
  if (!a1)
  {
    goto LABEL_19;
  }

  a1 = memcmp(v9, "kCLConnectionMessageLocationUnavailable", 0x27uLL);
  if (!a1)
  {
    goto LABEL_19;
  }

LABEL_54:
  if (sub_100030AF8(a2, "kCLConnectionMessageSignificantLocationChange"))
  {
    return 2048;
  }

  if (sub_100030AF8(a2, "kCLConnectionMessageSignificantLocationVisit") || sub_100030AF8(a2, "kCLConnectionMessageSignificantLocationVisitState"))
  {
    return 64;
  }

  if (sub_100030AF8(a2, "kCLConnectionMessageTranscriptFetch"))
  {
    return 65552;
  }

  return 0;
}

id sub_100049444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000184F4(a1, a2);
  sub_10004F0EC(a1, v5, a3, v8);
  sub_100049B48(a1, v5, v8);
  LODWORD(a3) = v8[30];
  Current = CFAbsoluteTimeGetCurrent();
  result = sub_10002FE04(a1, Current, v5, 5uLL, a3, 0, 0);
  if (result)
  {
    return [*(a1 + 136) persist];
  }

  return result;
}

BOOL sub_1000494D4(void *a1)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if (v2 < 0 && v3 == 39)
  {
    v4 = *a1;
    v5 = "kCLConnectionMessageAuthorizationStatus";
    v6 = 39;
  }

  else if (v2 < 0 && v3 == 36)
  {
    v4 = *a1;
    v5 = "kCLConnectionMessageRegionMonitoring";
    v6 = 36;
  }

  else
  {
    if (v2 < 0 && v3 == 31)
    {
      if (**a1 == 0x656E6E6F434C436BLL && *(*a1 + 8) == 0x73654D6E6F697463 && *(*a1 + 16) == 0x6967655265676173 && *(*a1 + 23) == 0x65746174536E6F69)
      {
        return 1;
      }

      goto LABEL_8;
    }

    if (v2 < 0 && v3 == 41)
    {
      v4 = *a1;
      v5 = "kCLConnectionMessageRegionMonitoringError";
      v6 = 41;
    }

    else if (v2 < 0 && v3 == 51)
    {
      v4 = *a1;
      v5 = "kCLConnectionMessageRegionMonitoringResponseDelayed";
      v6 = 51;
    }

    else
    {
      if ((v2 & 0x80000000) == 0 || v3 != 54)
      {
        goto LABEL_8;
      }

      v4 = *a1;
      v5 = "kCLConnectionMessageRegionMonitoringNoLocationWatchdog";
      v6 = 54;
    }
  }

  if (!memcmp(v4, v5, v6))
  {
    return 1;
  }

LABEL_8:
  if (sub_100030AF8(a1, "kCLConnectionMessageRegionMonitoringSetupCompleted") || sub_100030AF8(a1, "LocationManager/kCLConnectionMessageRegistration") || sub_100030AF8(a1, "kCLConnectionMessageError") || sub_100030AF8(a1, "kCLConnectionMessageBatch") || sub_100030AF8(a1, "kCLConnectionMessageAutopauseStatus") || sub_100030AF8(a1, "kCLConnectionMessageSignificantLocationVisit") || sub_100030AF8(a1, "kCLConnectionMessageSignificantLocationVisitState") || sub_100030AF8(a1, "kCLConnectionMessageLocationPush"))
  {
    return 1;
  }

  return sub_100030AF8(a1, "kCLConnectionMessageTranscriptSession");
}

uint64_t sub_1000496E4(uint64_t a1, char **a2, void *a3)
{
  sub_10000EC00(&__p, *a2);
  CLConnectionMessage::CLConnectionMessage();
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_100049740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10004975C(uint64_t a1)
{
  result = sub_1000497E8((a1 + 288), &v3);
  if (result)
  {
    v2 = result[3];
    if (!v2)
    {
      sub_10022F99C();
    }

    if (!result)
    {
      sub_1019F67D8();
    }
  }

  return result;
}

void *sub_1000497E8(void *a1, uint64_t *a2)
{
  v3 = *(*a2 + 8);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v3;
    if (v3 >= *&v7)
    {
      v10 = v3 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v3;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    do
    {
      v13 = v12[1];
      if (v3 == v13)
      {
        if (sub_10004FCC4(v12[2], *a2))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v13 >= *&v7)
          {
            v13 %= *&v7;
          }
        }

        else
        {
          v13 &= *&v7 - 1;
        }

        if (v13 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t sub_1000498FC(uint64_t a1, unsigned int *a2)
{
  v4 = *a2;
  if (v4 < 9 && ((0x1DFu >> v4) & 1) != 0)
  {
    v5 = dword_101C8D948[v4];
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v7 = *a2;
      v10[0] = 67240192;
      v10[1] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "unknown registsration result %{public}d", v10, 8u);
    }

    v5 = 0;
    if (sub_10000A100(121, 0))
    {
      sub_101932DC0(a2);
      v5 = 0;
    }
  }

  if ([*(a1 + 120) locationServicesEnabledStatus] == 1)
  {
    v8 = v5;
  }

  else
  {
    v8 = 2;
  }

  if (v8 <= 2)
  {
    if ([*(a1 + 120) locationRestricted])
    {
      return 1;
    }

    else
    {
      return v8;
    }
  }

  return v5;
}

void *sub_100049A40(uint64_t a1)
{
  result = sub_1000497E8((a1 + 288), &v3);
  if (result)
  {
    v2 = result[3];
    if (!v2)
    {
      sub_10022F99C();
    }

    if (!result)
    {
      sub_1019F67D8();
    }
  }

  return result;
}

void sub_100049B48(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = sub_100033370(a1, a2);
  v6 = v5;
  if (v5)
  {
    objc_msgSend_cppClientKey(v5);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v19 = 0;
  }

  if (*a3 == 1)
  {
    if (sub_1000F2C44(a1, v6, a3))
    {
      sub_1000F2BC4((a1 + 752), __p, __p);
      if (([*(a1 + 136) isKeyPathRegisteredSystemService:v6] & 1) == 0)
      {
        sub_1000F2BC4((a1 + 776), __p, __p);
      }
    }

    if (*(a3 + 1) == INFINITY)
    {
      if (*(a3 + 6))
      {
        if (a3[29])
        {
          v8 = 2147483650.0;
        }

        else
        {
          v8 = -1.0;
        }

        [*(a1 + 136) setDouble:@"LocationDesiredAccuracy" forKey:v6 atKeyPath:v8];
        v9 = sub_1000F3B98(v8);
        [*(a1 + 136) setArray:v9 forKey:@"LocationTechnologiesInUse" atKeyPath:v6];
        CFRelease(v9);
      }

      else
      {
        [*(a1 + 136) removeValueForKey:@"LocationDesiredAccuracy" atKeyPath:v6];
        [*(a1 + 136) removeValueForKey:@"LocationTechnologiesInUse" atKeyPath:v6];
      }
    }

    else
    {
      [*(a1 + 136) setDouble:@"LocationDesiredAccuracy" forKey:v6 atKeyPath:?];
      v7 = sub_1000F3B98(*(a3 + 1));
      [*(a1 + 136) setArray:v7 forKey:@"LocationTechnologiesInUse" atKeyPath:v6];
      CFRelease(v7);
    }

    v10 = *(a1 + 136);
    if (*(a3 + 2) <= 0.0)
    {
      [v10 removeValueForKey:@"LocationDistanceFilter" atKeyPath:v6];
    }

    else
    {
      [v10 setDouble:@"LocationDistanceFilter" forKey:v6 atKeyPath:?];
    }

    [*(a1 + 136) setBool:a3[28] forKey:@"BatchEnabled" atKeyPath:v6];
  }

  else
  {
    sub_10004EB70((a1 + 752), __p);
    sub_10004EB70((a1 + 776), __p);
    [*(a1 + 136) removeValueForKey:@"LocationTechnologiesInUse" atKeyPath:v6];
    [*(a1 + 136) removeValueForKey:@"LocationDesiredAccuracy" atKeyPath:v6];
    [*(a1 + 136) removeValueForKey:@"LocationDistanceFilter" atKeyPath:v6];
    [*(a1 + 136) removeValueForKey:@"BatchEnabled" atKeyPath:v6];
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v11 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 768);
    *buf = 134349056;
    v23 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "currently %{public}lu non-system location clients", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192DC88(buf);
    v15 = *(a1 + 768);
    v20 = 134349056;
    v21 = v15;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "currently %{public}lu non-system location clients", &v20, 12);
    v17 = v16;
    sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::setClientState(CLClientKeyPath *, const CLClientManager_Type::ClientState &)", "%s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  v13 = *a3;
  Current = CFAbsoluteTimeGetCurrent();
  sub_10002FE04(a1, Current, v6, 4uLL, v13, 0, 0);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100049F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100049F74(void *a1, char **a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_1000496E4((a1 + 3), a2, a3);
  return a1;
}

void sub_100049FD0(uint64_t a1)
{
  v2 = *(a1 + 236);
  sub_10000EC00(__p, "kCLConnectionMessageLocation");
  v3 = sub_10004B3BC(a1);
  if ((v68[9] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v4 = sub_100030B7C(a1, 4);
  if ((v3 & v4 & 1) == 0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v8 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 24);
      *__p = 138412802;
      *&__p[4] = v9;
      v67 = 1024;
      *v68 = v3;
      *&v68[4] = 1024;
      *&v68[6] = v4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "PAUSE: '%@' not a location client (%d), or not authorized (%d).", __p, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1025D4790 != -1)
      {
        sub_101B133E0();
      }

      v53 = *(a1 + 24);
      v57 = 138412802;
      v58 = v53;
      v59 = 1024;
      *v60 = v3;
      *&v60[4] = 1024;
      *&v60[6] = v4;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4798, 2, "PAUSE: '%@' not a location client (%d), or not authorized (%d).", &v57, 24);
      v55 = v54;
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationSubscription::checkPauseState()", "%s\n", v54);
      if (v55 != __p)
      {
        free(v55);
      }
    }

    goto LABEL_16;
  }

  v5 = *(a1 + 188);
  if (v5 == 1)
  {
    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v6 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 24);
      *__p = 138412290;
      *&__p[4] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "PAUSE: '%@' overridden to off.", __p, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B142D0();
    }

LABEL_16:
    *(a1 + 236) = 0;
    goto LABEL_17;
  }

  if (v5 != 2)
  {
    v15 = *(a1 + 184);
    if (v15 <= 4 && (v5 != 3 || v15 != 2))
    {
      if (qword_1025D4790 != -1)
      {
        sub_101B133E0();
      }

      v33 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
      {
        v34 = *(a1 + 24);
        *__p = 138412290;
        *&__p[4] = v34;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "PAUSE: '%@' not allowed to pause.", __p, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B13E68();
      }

      goto LABEL_16;
    }
  }

  if (*(a1 + 224) == -1.0)
  {
    *(a1 + 236) = 0;
    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v16 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 24);
      v18 = *(a1 + 224);
      *__p = 138412546;
      *&__p[4] = v17;
      v67 = 2048;
      *v68 = v18;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "PAUSE: '%@' not backgrounded right now (%.1f).", __p, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B141BC(a1);
    }
  }

  else if ((v2 & 1) != 0 || *(a1 + 240) != 1 || sub_1001CA9C4() <= *(a1 + 224) + *(a1 + 544))
  {
    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v35 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
    {
      v36 = *(a1 + 24);
      v37 = *(a1 + 240);
      v38 = sub_1001CA9C4();
      v39 = *(a1 + 224);
      v40 = *(a1 + 544);
      *__p = 138413570;
      *&__p[4] = v36;
      v67 = 1024;
      *v68 = v2;
      *&v68[4] = 1024;
      *&v68[6] = v37;
      *v69 = 2048;
      *&v69[2] = v38;
      *&v69[10] = 2048;
      v70 = v39;
      v71 = 2048;
      v72 = v40;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "PAUSE: '%@' not changing state wasPaused: %d lastState: %d now clock: %f timestamp: %f thresh: %f.", __p, 0x36u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1025D4790 != -1)
      {
        sub_101B133E0();
      }

      v41 = qword_1025D4798;
      v42 = *(a1 + 24);
      v43 = *(a1 + 240);
      v44 = sub_1001CA9C4();
      v45 = *(a1 + 224);
      v46 = *(a1 + 544);
      v57 = 138413570;
      v58 = v42;
      v59 = 1024;
      *v60 = v2;
      *&v60[4] = 1024;
      *&v60[6] = v43;
      *v61 = 2048;
      *&v61[2] = v44;
      v62 = 2048;
      v63 = v45;
      v64 = 2048;
      v65 = v46;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v41, 2, "PAUSE: '%@' not changing state wasPaused: %d lastState: %d now clock: %f timestamp: %f thresh: %f.", &v57, 54);
      v48 = v47;
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationSubscription::checkPauseState()", "%s\n", v47);
      if (v48 != __p)
      {
        free(v48);
      }
    }
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v21 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
    {
      v22 = sub_1001CA9C4();
      v23 = *(a1 + 224);
      v24 = *(a1 + 544);
      *__p = 134218496;
      *&__p[4] = v22;
      v67 = 2048;
      *v68 = v23;
      *&v68[8] = 2048;
      *v69 = v24;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "PAUSE: now clock %f timestamp %f thresh %f.", __p, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B13F5C(a1 + 224, (a1 + 544));
    }

    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v25 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a1 + 24);
      v27 = *(a1 + 232);
      v28 = *(a1 + 238);
      v29 = *(a1 + 239);
      v30 = *(a1 + 237);
      *__p = 138413314;
      *&__p[4] = v26;
      v67 = 1024;
      *v68 = v27;
      *&v68[4] = 1024;
      *&v68[6] = v28;
      *v69 = 1024;
      *&v69[2] = v29;
      *&v69[6] = 1024;
      *&v69[8] = v30;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "PAUSE: client: '%@' type: %d states: veh %d fit %d oth %d", __p, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B14084(a1);
    }

    v31 = *(a1 + 232);
    if (v31 == 3)
    {
      v32 = *(a1 + 239);
    }

    else if (v31 == 2)
    {
      v32 = *(a1 + 238);
    }

    else
    {
      v32 = *(a1 + 237);
    }

    *(a1 + 236) = v32;
  }

LABEL_17:
  if (qword_1025D4790 != -1)
  {
    sub_101B133E0();
  }

  v10 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 24);
    v12 = *(a1 + 236);
    *__p = 138413058;
    *&__p[4] = v11;
    v67 = 2048;
    *v68 = a1;
    *&v68[8] = 1024;
    *v69 = v2;
    *&v69[4] = 1024;
    *&v69[6] = v12;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "PAUSE: %@ (%p) changed from %d to %d", __p, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v49 = *(a1 + 24);
    v50 = *(a1 + 236);
    v57 = 138413058;
    v58 = v49;
    v59 = 2048;
    *v60 = a1;
    *&v60[8] = 1024;
    *v61 = v2;
    *&v61[4] = 1024;
    *&v61[6] = v50;
    LODWORD(v56) = 34;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4798, 2, "PAUSE: %@ (%p) changed from %d to %d", &v57, v56);
    v52 = v51;
    sub_100152C7C("Generic", 1, 0, 2, "void CLLocationSubscription::checkPauseState()", "%s\n", v51);
    if (v52 != __p)
    {
      free(v52);
    }
  }

  if (v2 != *(a1 + 236))
  {
    if (*(a1 + 236))
    {
      if (qword_1025D4790 != -1)
      {
        sub_101B133E0();
      }

      v13 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(a1 + 24);
        *__p = 138412290;
        *&__p[4] = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "PAUSE: Pausing client '%@'", __p, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B144C0();
      }

      sub_100050114(a1);
    }

    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v19 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      v20 = *(a1 + 24);
      *__p = 138543362;
      *&__p[4] = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "PAUSE: Resuming client '%{public}@' (This should be handled on framework side)", __p, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B143C4();
    }

    sub_10108460C(a1, 0);
    sub_10004B904(a1);
  }
}

void sub_10004A9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004A9CC(uint64_t a1)
{
  if ((sub_100030B7C(a1, 4) & 1) == 0)
  {
    sub_10004D690(a1);
  }

  v2 = [*(a1 + 16) inUseLevelIsAtLeast:5];
  v3 = -1.0;
  if ((v2 & 1) == 0)
  {
    if (*(a1 + 224) != -1.0)
    {
      goto LABEL_7;
    }

    v3 = sub_1001CA9C4();
  }

  *(a1 + 224) = v3;
LABEL_7:
  sub_10004B3E4(a1);
  sub_10004B4B4(a1);
  if ([*(a1 + 16) transientAwareRegistrationResult] - 2 <= 2)
  {
    *(a1 + 236) = 0;
    sub_100050114(a1);
  }

  v5 = *(a1 + 512);
  if (v5)
  {
    v4 = sub_101081CB0(v5, *(a1 + 16));
  }

  if (*(a1 + 58) == 1 && [*(a1 + 16) inUseLevelIsAtLeast:{5, v4}])
  {
    *(a1 + 58) = 0;
    Current = CFAbsoluteTimeGetCurrent();
    *(a1 + 504) = *(a1 + 504) + Current - *(a1 + 64);
    *(a1 + 64) = 0xBFF0000000000000;
    if (qword_1025D4790 != -1)
    {
      sub_100312440();
    }

    v7 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 24);
      v9 = *(a1 + 500);
      v10 = *(a1 + 504);
      v12[0] = 68290050;
      v12[1] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2114;
      v16 = v8;
      v17 = 2050;
      v18 = Current;
      v19 = 1026;
      v20 = v9;
      v21 = 2050;
      v22 = v10;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#cblsPowerSaver LossTracking disabled due to App Foregrounding, Client:%{public, location:escape_only}@, endTime:%{public}f, LocationLoss:%{public}d, RuntimeLoss:%{public}f}", v12, 0x36u);
    }
  }

  sub_10004B904(a1);
  v11 = [*(a1 + 16) inUseLevelIsAtLeast:5];
  if (v11)
  {
    sub_10004CDCC(a1, 0);
  }

  [*(a1 + 96) setBackgrounded:v11 ^ 1];
  sub_100049FD0(a1);
}

uint64_t sub_10004ABDC(uint64_t a1, void *a2)
{
  if (qword_1025D4790 != -1)
  {
    sub_1019EEFF0();
  }

  v4 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 112);
    *buf = 68289794;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2114;
    *&buf[20] = v5;
    v50 = 2114;
    v51 = v6;
    v52 = 2114;
    v53 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthContext Set authorization context, ckp:%{public, location:escape_only}@, prevAuthContext:%{public, location:escape_only}@, newAuthContext:%{public, location:escape_only}@}", buf, 0x30u);
  }

  v7 = *(a1 + 112);
  v8 = a2;
  *(a1 + 112) = v8;
  sub_10004B2DC(*(a1 + 16), *(a1 + 48), *(a1 + 160), v8);
  for (i = *(a1 + 304); i; i = *i)
  {
    sub_10004B274(i[3], *(a1 + 112));
  }

  result = [v7 isEqual:*(a1 + 112)];
  if ((result & 1) == 0)
  {
    v11 = [*(a1 + 112) transientAwareRegistrationResult];
    if (v11 <= 8)
    {
      if (((1 << v11) & 0x1C) != 0)
      {
        sub_10004E990(a1);
        v22 = 0;
        v23 = a1;
LABEL_69:
        sub_100049444(*(a1 + 16), *(a1 + 48), v23);
        return sub_10004ED44(*(a1 + 16), a1, v22);
      }

      if (((1 << v11) & 0x103) != 0)
      {
        *&v43 = &v43;
        *(&v43 + 1) = &v43;
        v44 = 0;
        v12 = a1 + 128;
        sub_10004FFD4(&v43, (a1 + 128));
        for (j = *(&v43 + 1); j != &v43; j = *(j + 8))
        {
          v14 = CLConnectionMessage::name(*(j + 16));
          if ((*(*a1 + 48))(a1, v14))
          {
            if (qword_1025D4790 != -1)
            {
              sub_1001456E8();
            }

            v15 = qword_1025D4798;
            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
            {
              v16 = CLConnectionMessage::name(*(j + 16));
              if (*(v16 + 23) >= 0)
              {
                v17 = v16;
              }

              else
              {
                v17 = *v16;
              }

              *buf = 68289282;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              *&buf[18] = 2082;
              *&buf[20] = v17;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:client authorized; sending out cached message, msg:%{public, location:escape_only}s}", buf, 0x1Cu);
            }

            v18 = *(j + 24);
            v40 = *(j + 16);
            v41 = v18;
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v42 = *(j + 32);
            sub_100048DBC(a1, &v40);
            if (v41)
            {
              sub_100008080(v41);
            }
          }

          else
          {
            if (qword_1025D4790 != -1)
            {
              sub_1001456E8();
            }

            v19 = qword_1025D4798;
            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
            {
              v20 = CLConnectionMessage::name(*(j + 16));
              if (*(v20 + 23) >= 0)
              {
                v21 = v20;
              }

              else
              {
                v21 = *v20;
              }

              *buf = 68289282;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              *&buf[18] = 2082;
              *&buf[20] = v21;
              _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:client authorized but no longer interested in cached message; discarding cache, msg:%{public, location:escape_only}s}", buf, 0x1Cu);
            }
          }
        }

        if (*(a1 + 144))
        {
          sub_10000EC00(&v39, "{ ");
          for (k = *(a1 + 136); k != v12; k = *(k + 8))
          {
            v25 = CLConnectionMessage::name(*(k + 16));
            v26 = v25;
            if (*(v25 + 23) >= 0)
            {
              v27 = *(v25 + 23);
            }

            else
            {
              v27 = *(v25 + 8);
            }

            sub_100070148(buf, v27 + 1);
            if (buf[23] >= 0)
            {
              v28 = buf;
            }

            else
            {
              v28 = *buf;
            }

            if (v27)
            {
              if (v26[23] >= 0)
              {
                v29 = v26;
              }

              else
              {
                v29 = *v26;
              }

              memmove(v28, v29, v27);
            }

            *&v28[v27] = 32;
            if (buf[23] >= 0)
            {
              v30 = buf;
            }

            else
            {
              v30 = *buf;
            }

            if (buf[23] >= 0)
            {
              v31 = buf[23];
            }

            else
            {
              v31 = *&buf[8];
            }

            std::string::append(&v39, v30, v31);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          std::string::append(&v39, "}", 1uLL);
          if (qword_1025D47A0 != -1)
          {
            sub_1019EED30();
          }

          v32 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v33 = *(a1 + 48);
            v34 = &v39;
            if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v34 = v39.__r_.__value_.__r.__words[0];
            }

            *buf = 138412546;
            *&buf[4] = v33;
            *&buf[12] = 2080;
            *&buf[14] = v34;
            _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "#Warning %@ is still not authorized for %s, dropping", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019EEDB0(buf);
            v35 = *(a1 + 48);
            v36 = &v39;
            if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v36 = v39.__r_.__value_.__r.__words[0];
            }

            v45 = 138412546;
            v46 = v35;
            v47 = 2080;
            v48 = v36;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 0, "#Warning %@ is still not authorized for %s, dropping", &v45, 22);
            v38 = v37;
            sub_100152C7C("Generic", 1, 0, 2, "void CLDaemonClient::setAuthorizationContext(CLClientManagerAuthorizationContext *)", "%s\n", v37);
            if (v38 != buf)
            {
              free(v38);
            }
          }

          sub_10004FF5C((a1 + 128));
          if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v39.__r_.__value_.__l.__data_);
          }
        }

        sub_10004FF5C(&v43);
      }

      else if (v11 == 5 && [*(a1 + 112) registrationResult] == 5)
      {
        sub_1019EF004();
      }
    }

    sub_10004E990(a1);
    v23 = 0;
    v22 = 1;
    goto LABEL_69;
  }

  return result;
}

void sub_10004B200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_10004FF5C(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_10004B274(id *a1, void *a2)
{
  v4 = a2;

  a1[2] = a2;
  v5 = *(*a1 + 3);

  return v5(a1);
}

void sub_10004B2DC(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1000184F4(a1, a2);
  if ([a4 isAuthorizedForServiceTypeMask:a3])
  {
    if (![a4 registrationResult])
    {
      v8 = [objc_msgSend(a1[17] readonlyStoreAtKeyPath:{v7), "dictionary"}];
      v9 = sub_1000326F8(v8);
      LODWORD(v8) = sub_10004306C(v8);
      if ((a3 & ~sub_10003275C(1, [a4 inUseLevel], v9, v8, 0, 0, 0)) != 0)
      {

        sub_1000E3764(a1, v7);
      }
    }
  }
}

id sub_10004B3E4(uint64_t a1)
{
  result = [*(a1 + 16) inUseLevelIsAtLeast:3];
  if (*(a1 + 208) != 1.79769313e308 && (v3 = result, (result = [*(a1 + 176) objectForKeyedSubscript:@"kCLConnectionMessageDesiredAccuracyKey"]) != 0) && (result = objc_msgSend(result, "doubleValue"), v3))
  {
    v5 = v4;
    if (*(a1 + 88) != 1 || *(a1 + 80) != v4)
    {
      result = [sub_1000EE5BC(a1) takeAccuracyEnablementAssertionForClient:*(a1 + 48) withDesiredAccuracy:v4];
      *(a1 + 80) = v5;
      *(a1 + 88) = 1;
    }
  }

  else if (*(a1 + 88) == 1)
  {
    result = [sub_1000EE5BC(a1) releaseAccuracyEnablementAssertionForClient:*(a1 + 48)];
    *(a1 + 80) = 0x7FF0000000000000;
    *(a1 + 88) = 0;
  }

  return result;
}

void sub_10004B4B4(uint64_t a1)
{
  v2 = [*(a1 + 24) description];
  v3 = *(a1 + 208);
  if (v3 == 1.79769313e308 || *(a1 + 89) != 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 90);
  }

  v5 = *(a1 + 44);
  v6 = sub_10004D4E0(a1);
  v7 = v6;
  if ((v4 & 1) == (*(a1 + 96) != 0))
  {
    goto LABEL_14;
  }

  if ((v4 & v6 & 1) == 0)
  {
    if ((v4 & 1) == 0)
    {
      v18 = sub_100114CE4(a1, 0);
      v19 = [*(a1 + 8) silo];
      v29 = _NSConcreteStackBlock;
      v30 = 3221225472;
      v31 = sub_101084B38;
      v32 = &unk_10249E458;
      v35 = v5;
      v33 = v2;
      v34 = v18;
      [v19 afterInterval:&v29 async:1.0];
      v11 = "Releasing";
      goto LABEL_15;
    }

LABEL_14:
    v11 = "None";
    goto LABEL_15;
  }

  v8 = -[CLStatusBarAssertion initWithPid:name:queue:backgrounded:registration:]([CLStatusBarAssertion alloc], "initWithPid:name:queue:backgrounded:registration:", v5, [*(a1 + 24) description], objc_msgSend(objc_msgSend(*(a1 + 8), "silo"), "queue"), *(a1 + 224) != -1.0, objc_msgSend(*(a1 + 16), "registrationResult"));
  v9 = sub_100114CE4(a1, v8);
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    sub_101B13960();
  }

  v11 = "Acquiring";
LABEL_15:
  sub_10004D508(a1);
  if (qword_1025D4790 != -1)
  {
    sub_101B133E0();
  }

  v12 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v2 UTF8String];
    v14 = "N";
    v15 = "N";
    if (*(a1 + 89) == 1)
    {
      if (*(a1 + 90))
      {
        v15 = "Y";
      }

      else
      {
        v15 = "N";
      }
    }

    *buf = 136316674;
    v51 = v13;
    v52 = 1024;
    if (v3 == 1.79769313e308)
    {
      v16 = "N";
    }

    else
    {
      v16 = "Y";
    }

    v53 = v5;
    if (v4)
    {
      v17 = "Y";
    }

    else
    {
      v17 = "N";
    }

    v54 = 2080;
    if (v7)
    {
      v14 = "Y";
    }

    v55 = v15;
    v56 = 2080;
    v57 = v16;
    v58 = 2080;
    v59 = v17;
    v60 = 2080;
    v61 = v14;
    v62 = 2080;
    v63 = v11;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#visibility For %s (PID:%d)  Background:%s  Started:%s  > Needed:%s  Eligible:%s  Action:%s", buf, 0x44u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v20 = qword_1025D4798;
    v21 = [v2 UTF8String];
    v22 = "N";
    v23 = "N";
    if (*(a1 + 89) == 1)
    {
      if (*(a1 + 90))
      {
        v23 = "Y";
      }

      else
      {
        v23 = "N";
      }
    }

    v36 = 136316674;
    if (v3 == 1.79769313e308)
    {
      v24 = "N";
    }

    else
    {
      v24 = "Y";
    }

    v37 = v21;
    v38 = 1024;
    if (v4)
    {
      v25 = "Y";
    }

    else
    {
      v25 = "N";
    }

    v39 = v5;
    if (v7)
    {
      v22 = "Y";
    }

    v40 = 2080;
    v41 = v23;
    v42 = 2080;
    v43 = v24;
    v44 = 2080;
    v45 = v25;
    v46 = 2080;
    v47 = v22;
    v48 = 2080;
    v49 = v11;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v20, 2, "#visibility For %s (PID:%d)  Background:%s  Started:%s  > Needed:%s  Eligible:%s  Action:%s", &v36, 68, v28, v29, v30, v31, v32);
    v27 = v26;
    sub_100152C7C("Generic", 1, 0, 2, "void CLLocationSubscription::updateVisibilityAssertion()", "%s\n", v26);
    if (v27 != buf)
    {
      free(v27);
    }
  }
}

void sub_10004B904(uint64_t a1)
{
  sub_10000EC00(__p, "kCLConnectionMessageLocation");
  v2 = sub_10004B3BC(a1);
  v3 = v2;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if ((v3 & 1) == 0)
    {
      return;
    }
  }

  else if ((v2 & 1) == 0)
  {
    return;
  }

  v107[0] = _NSConcreteStackBlock;
  v107[1] = 3221225472;
  v108 = sub_1002FAD84;
  v109 = &unk_102449A78;
  v110 = a1;
  if ((sub_100030B7C(a1, 4) & 1) == 0)
  {
    if ([*(a1 + 16) transientAwareRegistrationResult] == 2 || objc_msgSend(*(a1 + 16), "transientAwareRegistrationResult") == 3)
    {
      v108(v107);
    }

    else
    {
      if (qword_1025D4790 != -1)
      {
        sub_101B133E0();
      }

      v10 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 24);
        v12 = sub_1007F2CF8(a1);
        *__p = 68289538;
        *&__p[8] = 2082;
        *&__p[10] = "";
        *&__p[18] = 2114;
        *&__p[20] = v11;
        v123 = 2050;
        *v124 = v12;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:client not authorized for location; not starting yet, Client:%{public, location:escape_only}@, DC:%{public}p}", __p, 0x26u);
      }

      if (!*(a1 + 576))
      {
        v13 = [objc_msgSend(*(a1 + 8) "silo")];
        *(a1 + 576) = v13;
        v106[0] = _NSConcreteStackBlock;
        v106[1] = 3221225472;
        v106[2] = sub_101084C4C;
        v106[3] = &unk_10244FAF0;
        v106[4] = v107;
        v106[5] = a1;
        [v13 setHandler:v106];
        [*(a1 + 576) setNextFireDelay:2.0 interval:1.79769313e308];
      }
    }

    sub_100050114(a1);
  }

  [*(a1 + 576) invalidate];

  *(a1 + 576) = 0;
  if (*(a1 + 236) == 1)
  {
    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v4 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 24);
      *__p = 138543362;
      *&__p[4] = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Client '%{public}@' paused, not starting location", __p, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B13D74();
    }

    return;
  }

  if (qword_1025D4790 != -1)
  {
    sub_101B133E0();
  }

  v6 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 24);
    v8 = sub_1007F2CF8(a1);
    *__p = 68289538;
    *&__p[8] = 2082;
    *&__p[10] = "";
    *&__p[18] = 2114;
    *&__p[20] = v7;
    v123 = 2050;
    *v124 = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:client authorized for location; starting shortly, Client:%{public, location:escape_only}@, DC:%{public}p}", __p, 0x26u);
  }

  sub_1000F3054(a1, 16);
  if ([*(a1 + 176) objectForKeyedSubscript:@"kCLConnectionMessageDesiredAccuracyKey"])
  {
    [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageDesiredAccuracyKey", "doubleValue"}];
  }

  else
  {
    v9 = -1.0;
  }

  v105 = v9;
  if ([*(a1 + 176) objectForKeyedSubscript:@"kCLConnectionMessageDistanceFilterKey"])
  {
    [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageDistanceFilterKey", "doubleValue"}];
    v15 = v14;
  }

  else
  {
    v15 = -1.0;
  }

  v16 = [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageDynamicAccuracyReductionKey", "BOOLValue"}];
  v17 = [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageAlteredAccessoryLocationsKey", "BOOLValue"}];
  if ([*(a1 + 176) objectForKeyedSubscript:@"kCLConnectionMessageActivityTypeKey"])
  {
    v18 = [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageActivityTypeKey", "intValue"}];
  }

  else
  {
    v18 = 0;
  }

  if (v15 >= 0.0)
  {
    v19 = v15;
  }

  else
  {
    v19 = -1.0;
  }

  if (qword_1025D4790 != -1)
  {
    sub_101B133E0();
  }

  v20 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v21 = sub_1007F2CF8(a1);
    v22 = *(a1 + 24);
    *__p = 68291330;
    *&__p[8] = 2082;
    *&__p[10] = "";
    *&__p[18] = 2050;
    *&__p[20] = a1;
    v123 = 2050;
    *v124 = v21;
    *&v124[8] = 2114;
    *&v124[10] = v22;
    *&v124[18] = 2050;
    v125 = v105;
    v126 = 2050;
    v127 = v19;
    v128 = 1026;
    v129 = 0;
    v130 = 1026;
    v131 = v16;
    v132 = 1026;
    v133 = v17;
    v134 = 1026;
    v135 = v18;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LocationSubcription #pwrlog authorized client subscribing, this:%{public}p, DC:%{public}p, ClientKeyPath:%{public, location:escape_only}@, DesiredAccuracy:%{public}f, DistanceFilter:%{public}f, OperatingMode:%{public}d, DynamicAccuracyReductionEnabled:%{public}d, AllowsAlteredAccessoryLocations:%{public}d, ActivityType:%{public}d}", __p, 0x5Cu);
  }

  if (qword_1025D4620 != -1)
  {
    sub_101B13474();
  }

  v23 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 24);
    *__p = 138543618;
    *&__p[4] = v24;
    *&__p[12] = 2050;
    *&__p[14] = v105;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "@ClxClient, register, %{public}@, accuracy, %{public}.1lf", __p, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B13B30(a1);
  }

  if (v105 == 2147483640.0)
  {
    sub_10004DAD8(a1, 1);
LABEL_54:
    v105 = 2147483650.0;
    goto LABEL_55;
  }

  if (v105 == 2147483640.0)
  {
    sub_10004DAD8(a1, 0);
    goto LABEL_54;
  }

  sub_10004DAD8(a1, 0xFFFFFFFFLL);
  if (v105 < 100.0)
  {
    v27 = 0;
    goto LABEL_85;
  }

  if (v105 < 1000.0)
  {
    v34 = 1;
    v27 = 1;
    goto LABEL_86;
  }

  if (v105 < 6378135.0)
  {
    v27 = 2;
    goto LABEL_85;
  }

  if (v105 < 6383135.0)
  {
    v27 = v105 == 6380001.0;
    v35 = (a1 + 16);
    [*(a1 + 16) isAuthorizedForServiceType:{12, v105}];
    v34 = 1;
    v36 = 1;
    goto LABEL_87;
  }

LABEL_55:
  sub_10000EC00(__p, "com.apple.locationd.spectator");
  v25 = sub_1001C2F40(a1);
  v26 = v25;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (v26)
    {
      goto LABEL_57;
    }
  }

  else if (v25)
  {
LABEL_57:
    if (v105 == 2147483650.0)
    {
      v27 = 4;
LABEL_85:
      v34 = 1;
      goto LABEL_86;
    }

    if (v105 == 2147483650.0)
    {
      v27 = 5;
      goto LABEL_85;
    }

    if (v105 == 2147483640.0)
    {
      v27 = 22;
      goto LABEL_85;
    }

    if (v105 == 2147483640.0)
    {
      *__p = 3600;
      *&__p[4] = 257;
      *&__p[8] = "bundle";
      sub_10004DA14(a1);
      sub_1005F3624(__p);
    }

    if (v105 == 2147483640.0)
    {
      v27 = 39;
      goto LABEL_85;
    }

    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v91 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      v92 = *(a1 + 24);
      *__p = 68289282;
      *&__p[8] = 2082;
      *&__p[10] = "";
      *&__p[18] = 2114;
      *&__p[20] = v92;
      _os_log_impl(dword_100000000, v91, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Not registering for location updates; the planets don't align, Client:%{public, location:escape_only}@}", __p, 0x1Cu);
      if (qword_1025D4790 != -1)
      {
        sub_101B133E0();
      }
    }

    v30 = qword_1025D4798;
    if (!os_signpost_enabled(qword_1025D4798))
    {
      goto LABEL_68;
    }

    v93 = *(a1 + 24);
    *__p = 68289282;
    *&__p[8] = 2082;
    *&__p[10] = "";
    *&__p[18] = 2114;
    *&__p[20] = v93;
    v32 = "Not registering for location updates; the planets don't align";
    v33 = "{msg%{public}.0s:Not registering for location updates; the planets don't align, Client:%{public, location:escape_only}@}";
    goto LABEL_67;
  }

  if (qword_1025D4790 != -1)
  {
    sub_101B133E0();
  }

  v28 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
  {
    v29 = *(a1 + 24);
    *__p = 68289282;
    *&__p[8] = 2082;
    *&__p[10] = "";
    *&__p[18] = 2114;
    *&__p[20] = v29;
    _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Not registering for location updates; desiredAccuracy is too high, Client:%{public, location:escape_only}@}", __p, 0x1Cu);
    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }
  }

  v30 = qword_1025D4798;
  if (!os_signpost_enabled(qword_1025D4798))
  {
    goto LABEL_68;
  }

  v31 = *(a1 + 24);
  *__p = 68289282;
  *&__p[8] = 2082;
  *&__p[10] = "";
  *&__p[18] = 2114;
  *&__p[20] = v31;
  v32 = "Not registering for location updates; desiredAccuracy is too high";
  v33 = "{msg%{public}.0s:Not registering for location updates; desiredAccuracy is too high, Client:%{public, location:escape_only}@}";
LABEL_67:
  _os_signpost_emit_with_name_impl(dword_100000000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v32, v33, __p, 0x1Cu);
LABEL_68:
  v34 = 0;
  v27 = 50;
LABEL_86:
  v35 = (a1 + 16);
  v36 = [*(a1 + 16) isAuthorizedForServiceType:12] ^ 1;
LABEL_87:
  *(a1 + 57) = v36;
  if (!v27)
  {
    sub_10004D9B8(a1, 1);
LABEL_101:
    sub_10004D9B8(a1, 2);
    goto LABEL_102;
  }

  sub_10004D9B8(a1, 0);
  if (*(a1 + 241) == 1)
  {
    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v37 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
    {
      v38 = *(a1 + 24);
      *__p = 68289282;
      *&__p[8] = 2082;
      *&__p[10] = "";
      *&__p[18] = 2114;
      *&__p[20] = v38;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:BATCH: stop because accuracy changed, Client:%{public, location:escape_only}@}", __p, 0x1Cu);
    }

    sub_101083F3C(a1, 0xD);
  }

  if (v27 == 1)
  {
    goto LABEL_101;
  }

  sub_10004D9B8(a1, 1);
  if (v27 == 2)
  {
LABEL_102:
    sub_10004D9B8(a1, 4);
    goto LABEL_103;
  }

  sub_10004D9B8(a1, 2);
  if (v27 == 4)
  {
LABEL_103:
    sub_10004D9B8(a1, 5);
    goto LABEL_104;
  }

  sub_10004D9B8(a1, 4);
  if (v27 == 5 || (sub_10004D9B8(a1, 5), v27 != 22))
  {
LABEL_104:
    sub_10004D9B8(a1, 22);
    v39 = sub_10004DA14(a1);
    [*(*v39 + 16) unregister:*(*v39 + 8) forNotification:12];
    if (v27 == 39)
    {
      goto LABEL_106;
    }
  }

  sub_10004D9B8(a1, 39);
LABEL_106:
  if (!v34)
  {
    sub_100043020((a1 + 512), 0);
    return;
  }

  v40 = (a1 + 512);
  if (sub_1000F42F8(a1))
  {
    sub_100043020((a1 + 512), 0);
  }

  else
  {
    v41 = *v40;
    if (!*v40)
    {
      *v111 = [*(a1 + 24) legacyClientKey];
      sub_1000F20A4();
    }

    if (*(v41 + 40) != v105)
    {
      sub_1001EC150(*v40);
      *(v41 + 40) = v105;
    }
  }

  if (qword_1025D4790 != -1)
  {
    sub_101B133E0();
  }

  v42 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    v43 = sub_100048D98(v27);
    *__p = 67109634;
    *&__p[4] = v27;
    *&__p[8] = 2080;
    *&__p[10] = v43;
    *&__p[18] = 2048;
    *&__p[20] = v105;
    _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "register for notification, %d, %s, desiredAccuracy, %.1f", __p, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B13C44(v27, &v105);
  }

  *(a1 + 304) = v105;
  *(a1 + 208) = CFAbsoluteTimeGetCurrent();
  *(a1 + 196) = v27;
  *__p = 0xBFF0000000000000;
  *&__p[8] = v19;
  *&__p[16] = 0;
  *&__p[24] = 0;
  *&__p[20] = 0;
  sub_1000F4320(a1, v27, __p);
  sub_10004B4B4(a1);
  sub_10004B3E4(a1);
  if (*(a1 + 241) == 1 && v19 > 0.0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v44 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
    {
      v45 = *(a1 + 24);
      *__p = 68289282;
      *&__p[8] = 2082;
      *&__p[10] = "";
      *&__p[18] = 2114;
      *&__p[20] = v45;
      _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:BATCH: stop because distance filtered, Client:%{public, location:escape_only}@}", __p, 0x1Cu);
    }

    sub_101083F3C(a1, 0xE);
  }

  if (*(a1 + 57))
  {
    v46 = sub_10004D8F4(a1);
    [*(*v46 + 16) unregister:*(*v46 + 8) forNotification:8];
    v47 = sub_10004D8F4(a1);
    [*(*v47 + 16) unregister:*(*v47 + 8) forNotification:17];
    v48 = sub_10004D8F4(a1);
    [*(*v48 + 16) unregister:*(*v48 + 8) forNotification:34];
    v49 = sub_10004D8F4(a1);
    [*(*v49 + 16) unregister:*(*v49 + 8) forNotification:35];
    v50 = 0;
  }

  else
  {
    v51 = v105 < -1.0;
    v52 = sub_10004D8F4(a1);
    v54 = *(*v52 + 8);
    v53 = *(*v52 + 16);
    if (v51)
    {
      [v53 register:v54 forNotification:8 registrationInfo:0];
    }

    else
    {
      [v53 unregister:v54 forNotification:8];
    }

    v55 = *(a1 + 193);
    v56 = *(a1 + 194);
    v57 = v105 < 100.0;
    v58 = sub_10004D8F4(a1);
    v60 = *(*v58 + 8);
    v59 = *(*v58 + 16);
    if ((v57 & (v56 | v55)) != 0)
    {
      [v59 register:v60 forNotification:17 registrationInfo:0];
      v50 = 1;
    }

    else
    {
      [v59 unregister:v60 forNotification:17];
      v50 = 0;
    }

    sub_1000F3AA8(a1, v105 <= -1.0);
    v61 = *(a1 + 232);
    v62 = (v61 == 4 || v61 == 2) && ([*v35 inUseLevelIsAtLeast:5] & 1) != 0;
    sub_1000F3B0C(a1, v62);
  }

  __asm { FMOV            V0.2D, #-1.0 }

  *__p = _Q0;
  *&__p[16] = 0;
  *&__p[24] = 0;
  *&__p[20] = 0;
  sub_1000F4320(a1, 9, __p);
  if (qword_1025D4790 != -1)
  {
    sub_101B133E0();
  }

  v68 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v69 = *(a1 + 24);
    v70 = *(a1 + 44);
    v71 = sub_1007F2CF8(a1);
    v72 = *(a1 + 193);
    *__p = 138413570;
    *&__p[4] = v69;
    *&__p[12] = 1024;
    *&__p[14] = v70;
    *&__p[18] = 2048;
    *&__p[20] = v71;
    v123 = 1024;
    *v124 = v72;
    *&v124[4] = 2048;
    *&v124[6] = v105;
    *&v124[14] = 1024;
    *&v124[16] = v50;
    _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_DEFAULT, "CLMM,Client,'%@',pid,%u,DC,%p,allowsMapCorrection,%d,desiredAccuracy,%lf,kNotificationMapMatching,%d", __p, 0x32u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v94 = qword_1025D4798;
    v95 = *(a1 + 24);
    v96 = *(a1 + 44);
    v97 = sub_1007F2CF8(a1);
    v98 = *(a1 + 193);
    *v111 = 138413570;
    *&v111[4] = v95;
    v112 = 1024;
    v113 = v96;
    v114 = 2048;
    v115 = v97;
    v116 = 1024;
    v117 = v98;
    v118 = 2048;
    v119 = v105;
    v120 = 1024;
    v121 = v50;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v94, 0, "CLMM,Client,'%@',pid,%u,DC,%p,allowsMapCorrection,%d,desiredAccuracy,%lf,kNotificationMapMatching,%d", v111, 50);
    v100 = v99;
    sub_100152C7C("Generic", 1, 0, 2, "void CLLocationSubscription::startLocation_nl()", "%s\n", v99);
    if (v100 != __p)
    {
      free(v100);
    }
  }

  *(a1 + 216) = 0;
  if (v15 > 0.0 || v105 >= 1000.0 && v105 <= 6383135.0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v73 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v74 = *(a1 + 24);
      *__p = 68289282;
      *&__p[8] = 2082;
      *&__p[10] = "";
      *&__p[18] = 2114;
      *&__p[20] = v74;
      _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#provisional force intermediation - high dF or acc(#cblsPowerSaver), Client:%{public, location:escape_only}@}", __p, 0x1Cu);
    }

    v75 = sub_1000E5608(a1);
    v76 = [*(a1 + 24) legacyClientKey];
    v104[0] = _NSConcreteStackBlock;
    v104[1] = 3221225472;
    v104[2] = sub_1001FAD8C;
    v104[3] = &unk_1024638F8;
    v104[4] = a1;
    [v75 handleProvisionalIntermediationForService:5 forClientKey:v76 at:0 withReply:v104];
  }

  if (v27 <= 0x27 && ((1 << v27) & 0x8000400030) != 0 || sub_1000F3088(a1))
  {
    sub_100050420(a1, 1);
    v78 = *(a1 + 184);
    v77 = *(a1 + 188);
    if (v78 < 5)
    {
      if (v77 != 2 && (v78 != 2 || v77 != 3))
      {
LABEL_163:
        if (*(a1 + 58) != 1)
        {
          return;
        }

        goto LABEL_164;
      }
    }

    else if (v77 == 1)
    {
      goto LABEL_163;
    }

    sub_10004D6B8(a1);
    goto LABEL_163;
  }

  if (v105 < 110.0)
  {
    v88 = sub_100048D98(v27);
    *(a1 + 216) = sub_1000F1C70(a1, v88);
  }

  sub_10004CDCC(a1, 1);
  v90 = *(a1 + 184);
  v89 = *(a1 + 188);
  if (v90 < 5)
  {
    if (v89 != 2 && (v90 != 2 || v89 != 3))
    {
      goto LABEL_189;
    }
  }

  else if (v89 == 1)
  {
    goto LABEL_189;
  }

  if (sub_1000F3990(a1))
  {
    sub_100111058(a1);
  }

LABEL_189:
  if (sub_1000F42F8(a1))
  {
    goto LABEL_163;
  }

LABEL_164:
  if (qword_1025D4790 != -1)
  {
    sub_101B133E0();
  }

  v79 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    v80 = *(a1 + 24);
    v81 = sub_1007F2CF8(a1);
    v82 = *(a1 + 58);
    *__p = 68289794;
    *&__p[8] = 2082;
    *&__p[10] = "";
    *&__p[18] = 2114;
    *&__p[20] = v80;
    v123 = 2050;
    *v124 = v81;
    *&v124[8] = 1026;
    *&v124[10] = v82;
    _os_log_impl(dword_100000000, v79, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#cblsPowerSaver starting metric session (LocationUpdateSession), Client:%{public, location:escape_only}@, DC:%{public}p, LossTrackingEnabled:%{public}hhd}", __p, 0x2Cu);
  }

  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 312) = 1;
  *(a1 + 384) = v105;
  *(a1 + 392) = v19;
  *(a1 + 320) = Current;
  sub_1000F2F74(a1, __p);
  v84 = (a1 + 328);
  if (*(a1 + 351) < 0)
  {
    operator delete(*v84);
  }

  *v84 = *__p;
  *(a1 + 344) = *&__p[16];
  v85 = *(a1 + 560);
  v86 = *(a1 + 568);
  if (v86)
  {
    atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v86->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100008080(v86);
  }

  v87 = *(a1 + 8);
  v101[0] = _NSConcreteStackBlock;
  v101[1] = 3321888768;
  v101[2] = sub_10017EC04;
  v101[3] = &unk_1024CAC70;
  v101[4] = a1;
  v101[5] = v85;
  v102 = v86;
  if (v86)
  {
    atomic_fetch_add_explicit(&v86->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v103 = Current;
  sub_100047D60(v87, v101);
  if (v102)
  {
    std::__shared_weak_count::__release_weak(v102);
  }

  if (v86)
  {
    std::__shared_weak_count::__release_weak(v86);
  }
}

void sub_10004CD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  if (v50)
  {
    std::__shared_weak_count::__release_weak(v50);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004CDCC(uint64_t a1, int a2)
{
  *(a1 + 120) |= a2;
  if (objc_opt_class())
  {
    v3 = *(a1 + 112);
    if (*(a1 + 120) && *(a1 + 89) == 1)
    {
      v4 = *(a1 + 112);
      if (*(a1 + 90) == 1)
      {
        v5 = sub_10004D4E0(a1);
        v4 = *(a1 + 112);
        if (v5)
        {
          if (v4)
          {
            goto LABEL_22;
          }

          if (qword_1025D47A0 != -1)
          {
            sub_101B13524();
          }

          v6 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
          {
            v7 = *(a1 + 44);
            v8 = *(a1 + 24);
            *buf = 68289538;
            v28 = 0;
            v29 = 2082;
            v30 = "";
            v31 = 1026;
            *v32 = v7;
            *&v32[4] = 2114;
            *&v32[6] = v8;
            _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:initializing process assertion to support background location for client, pid:%{public}u, Client:%{public, location:escape_only}@}", buf, 0x22u);
          }

          v35 = [RBSDomainAttribute attributeWithDomain:@"com.apple.locationd" name:@"Location"];
          v9 = [[RBSAssertion alloc] initWithExplanation:@"Location subscription" target:+[RBSTarget targetWithPid:](RBSTarget attributes:{"targetWithPid:", *(a1 + 44)), +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v35, 1)}];
          *(a1 + 112) = v9;
          v26 = 0;
          if (([v9 acquireWithError:&v26] & 1) == 0)
          {
            if (qword_1025D47A0 != -1)
            {
              sub_101B13408();
            }

            v10 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
            {
              v11 = *(a1 + 44);
              v12 = *(a1 + 24);
              *buf = 68289794;
              v28 = 0;
              v29 = 2082;
              v30 = "";
              v31 = 1026;
              *v32 = v11;
              *&v32[4] = 2114;
              *&v32[6] = v12;
              v33 = 2114;
              v34 = v26;
              _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't initialize process assertion for client, pid:%{public}u, Client:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x2Cu);
              if (qword_1025D47A0 != -1)
              {
                sub_101B13408();
              }
            }

            v13 = off_1025D47A8;
            if (os_signpost_enabled(off_1025D47A8))
            {
              v14 = *(a1 + 44);
              v15 = *(a1 + 24);
              *buf = 68289794;
              v28 = 0;
              v29 = 2082;
              v30 = "";
              v31 = 1026;
              *v32 = v14;
              *&v32[4] = 2114;
              *&v32[6] = v15;
              v33 = 2114;
              v34 = v26;
              _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Couldn't initialize process assertion for client", "{msg%{public}.0s:Couldn't initialize process assertion for client, pid:%{public}u, Client:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x2Cu);
            }
          }

          v4 = *(a1 + 112);
        }
      }
    }

    else
    {
      v4 = *(a1 + 112);
    }

    if (!v4)
    {
      goto LABEL_37;
    }

LABEL_22:
    if (*(a1 + 120) == 3)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101B13408();
      }

      v16 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_37;
      }

      v17 = *(a1 + 44);
      v18 = *(a1 + 24);
      *buf = 68289538;
      v28 = 0;
      v29 = 2082;
      v30 = "";
      v31 = 1026;
      *v32 = v17;
      *&v32[4] = 2114;
      *&v32[6] = v18;
      v19 = "{msg%{public}.0s:Client is performing batch location, allowing idle sleep., pid:%{public}u, Client:%{public, location:escape_only}@}";
      goto LABEL_36;
    }

    v20 = qword_1025D47A0;
    if ((*(a1 + 120) & 3) == 2)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101B13408();
      }

      v21 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v22 = *(a1 + 24);
      v23 = *(a1 + 44);
      *buf = 68289538;
      v28 = 0;
      v29 = 2082;
      v30 = "";
      v31 = 2114;
      *v32 = v22;
      *&v32[8] = 1026;
      *&v32[10] = v23;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Client is performing batch without location., Client:%{public, location:escape_only}@, pid:%{public}u}", buf, 0x22u);
      v20 = qword_1025D47A0;
    }

    if (v20 != -1)
    {
      sub_101B13408();
    }

LABEL_34:
    v16 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_37;
    }

    v24 = *(a1 + 44);
    v25 = *(a1 + 24);
    *buf = 68289538;
    v28 = 0;
    v29 = 2082;
    v30 = "";
    v31 = 1026;
    *v32 = v24;
    *&v32[4] = 2114;
    *&v32[6] = v25;
    v19 = "{msg%{public}.0s:Client is not performing batch location, preventing task suspend., pid:%{public}u, Client:%{public, location:escape_only}@}";
LABEL_36:
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, v19, buf, 0x22u);
LABEL_37:
    if ((v3 != 0) != (*(a1 + 112) != 0))
    {
      sub_1001C3758(a1);
    }
  }
}

uint64_t sub_10004D2DC(uint64_t a1)
{
  if ([*(a1 + 112) inUseLevelIsAtLeast:5])
  {
    if (qword_1025D4790 != -1)
    {
      sub_1019EEFF0();
    }

    v2 = qword_1025D4798;
    if (!os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
    {
      return 1;
    }

    v3 = *(a1 + 48);
    v10 = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2114;
    v15 = v3;
    v4 = "{msg%{public}.0s:Allowing process assertion due to foreground-ish status, ClientKeyPath:%{public, location:escape_only}@}";
LABEL_11:
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, v4, &v10, 0x1Cu);
    return 1;
  }

  if (sub_1000DF624(*(a1 + 16), a1))
  {
    if (qword_1025D4790 != -1)
    {
      sub_1019EEFF0();
    }

    v2 = qword_1025D4798;
    if (!os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
    {
      return 1;
    }

    v5 = *(a1 + 48);
    v10 = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2114;
    v15 = v5;
    v4 = "{msg%{public}.0s:Allowing process assertion due to client manager., ClientKeyPath:%{public, location:escape_only}@}";
    goto LABEL_11;
  }

  if (qword_1025D4790 != -1)
  {
    sub_1019EEFF0();
  }

  v7 = qword_1025D4798;
  v8 = os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v8)
  {
    v9 = *(a1 + 48);
    v10 = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2114;
    v15 = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Denying process assertion, ClientKeyPath:%{public, location:escape_only}@}", &v10, 0x1Cu);
    return 0;
  }

  return result;
}

id sub_10004D508(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    if (*(a1 + 56) == 1)
    {
      if (*(a1 + 91))
      {
LABEL_4:
        v3 = 1;
LABEL_10:
        [v2 setDesiredEnablementState:v3];
        goto LABEL_11;
      }

      if (([*(a1 + 16) isAuthorizedForServiceType:13] & 1) == 0 && objc_msgSend(*(a1 + 16), "inUseLevelIsAtLeast:", 4))
      {
        v2 = *(a1 + 96);
        goto LABEL_4;
      }

      v2 = *(a1 + 96);
    }

    v3 = 0;
    goto LABEL_10;
  }

LABEL_11:
  v4 = *(a1 + 104) != 0;
  result = [*(a1 + 96) isEnabled];
  if (v4 != result)
  {
    __p[13] = 0;
    if (result)
    {
      sub_10000EC00(__p, "Ongoing visibility assertion");
      sub_100F35520(a1, __p, 4);
      operator new();
    }

    result = *(a1 + 104);
    *(a1 + 104) = 0;
    if (result)
    {
      sub_10014588C(result);
      operator delete();
    }
  }

  return result;
}

void sub_10004D6B8(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    [*(v2 + 16) unregister:*(v2 + 8) forNotification:0];
    if (qword_1025D4790 != -1)
    {
      sub_100312440();
    }

    v3 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 24);
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = v4;
      v5 = "{msg%{public}.0s:PAUSE: Client unregistered for autopause notifications, Client:%{public, location:escape_only}@}";
      v6 = v3;
      v7 = OS_LOG_TYPE_DEBUG;
LABEL_10:
      _os_log_impl(dword_100000000, v6, v7, v5, &v10, 0x1Cu);
    }
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_100312440();
    }

    v8 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 24);
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = v9;
      v5 = "{msg%{public}.0s:#Warning PAUSE: Unregistering for autopause notification when client does not exist, Client:%{public, location:escape_only}@}";
      v6 = v8;
      v7 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }
  }

  *(a1 + 240) = 0;
}

uint64_t sub_10004D830(uint64_t a1)
{
  if (!*(a1 + 144))
  {
    sub_1000EE0B0();
  }

  return a1 + 144;
}

uint64_t sub_10004D8F4(uint64_t a1)
{
  if (!*(a1 + 136))
  {
    sub_1000EE2FC();
  }

  return a1 + 136;
}

id sub_10004D9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004D830(a1);
  [*(*v4 + 16) unregister:*(*v4 + 8) forNotification:a2];
  v5 = sub_10004D8F4(a1);
  v7 = *(*v5 + 8);
  v6 = *(*v5 + 16);

  return [v6 unregister:v7 forNotification:a2];
}

uint64_t sub_10004DA14(uint64_t a1)
{
  if (!*(a1 + 152))
  {
    sub_1000EE3E8();
  }

  return a1 + 152;
}

void sub_10004DAD8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 200) != a2)
  {
    if (a2 != -1)
    {
      sub_10000EC00(__p, "com.apple.locationd.spectator");
      v4 = sub_1001C2F40(a1);
      v5 = v4;
      if (v11 < 0)
      {
        operator delete(*__p);
        if ((v5 & 1) == 0)
        {
          return;
        }
      }

      else if ((v4 & 1) == 0)
      {
        return;
      }
    }

    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v6 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 24);
      *__p = 138543618;
      *&__p[4] = v7;
      v9 = 1026;
      v10 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "client '%{public}@' updating RhythmicGnss with CLRhythmicGnssWakeMode, %{public}.1d", __p, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B13624(a1);
    }

    [objc_msgSend(objc_msgSend(*(a1 + 8) "vendor")];
    [objc_msgSend(objc_msgSend(*(a1 + 8) "vendor")];
    *(a1 + 200) = a2;
  }
}

void sub_10004DC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10004DC80(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_1018900F8();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_10189095C(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_10004DE5C(uint64_t a1, unsigned int a2, int *a3)
{
  v18 = a2;
  sub_10004E0F8(a1, a2, a3);
  if (*a3 == 12)
  {
    *buf = 12;
    v6 = sub_10000608C(a1, buf, 1);
    v7 = *(a1 + 284);
    if (v6 != v7 && v7 >= 1)
    {
      v9 = v6;
      if (qword_1025D4630 != -1)
      {
        sub_1018CD6B8();
      }

      v10 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v18;
        v11 = sub_1005A4D14(a1 + 704, &v18, &unk_101C66300, buf)[5];
        *buf = 67240707;
        *&buf[4] = v9;
        v25 = 1026;
        v26 = a2;
        v27 = 2081;
        v28 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "@WsbReg, clients, %{public}d, minus, idname, %{public}d, %{private}s", buf, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4630 != -1)
        {
          sub_1018CD6B8();
        }

        v13 = qword_1025D4638;
        v14 = v18;
        v19 = &v18;
        v15 = sub_1005A4D14(a1 + 704, &v18, &unk_101C66300, &v19)[5];
        LODWORD(v19) = 67240707;
        HIDWORD(v19) = v9;
        v20 = 1026;
        v21 = v14;
        v22 = 2081;
        v23 = v15;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v13, 0, "@WsbReg, clients, %{public}d, minus, idname, %{public}d, %{private}s", &v19, 24);
        v17 = v16;
        sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiService::unregisterForNotification(int, const CLWifiService_Type::Notification &)", "%s\n", v16);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      sub_10059F6DC(a1, 0, v18, 0);
      sub_100592C18(a1, 0, 0);
      *(a1 + 284) = v9;
    }

    sub_10004E764(a1, "unreg");
  }

  return 1;
}

uint64_t sub_10004E0F8(char *a1, int a2, int *a3)
{
  HIDWORD(v25) = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 28) >= v11)
            {
              v12 = v9;
            }

            v9 = *(v9 + 8 * (*(v9 + 28) < v11));
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_10011753C((v15 + 40), &v25 + 1);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_1002E9770();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v35 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v27 = 2082;
                v28 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v35 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_1002E9770();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                v21 = qword_1025D47F8;
                (*(*a1 + 160))(buf, a1, a3);
                if (v29 >= 0)
                {
                  v22 = buf;
                }

                else
                {
                  v22 = *buf;
                }

                v30 = 136446466;
                v31 = v20;
                v32 = 2082;
                v33 = v22;
                LODWORD(v25) = 22;
                _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v21, 17, "%{public}s; notification %{public}s not found", &v30, v25);
                v24 = v23;
                if (v29 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLWifiService_Type::Notification, CLWifiService_Type::NotificationData, char, CLWifiService_Type::RegInfo>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLWifiService_Type::Notification, NotificationData_T = CLWifiService_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLWifiService_Type::RegInfo]", "%s\n", v24);
                if (v24 != __p)
                {
                  free(v24);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

uint64_t sub_10004E49C(char *a1, uint64_t a2, unsigned int *a3)
{
  v14 = a2;
  v6 = (*(*a1 + 104))(a1);
  if (qword_1025D47A0 != -1)
  {
    sub_101919C50();
  }

  v7 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v8 = *a3;
    v9 = sub_100048D98(*a3);
    *buf = 67109634;
    v16 = v8;
    v17 = 2080;
    v18 = v9;
    v19 = 1024;
    v20 = v6;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLIENT: unregister for notification, %d, %s, wasRegistered, %d", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191A47C(a3, v6);
  }

  v10 = sub_1000489F4(a1, a2, a3);
  if (v10)
  {
    if (((*a3 < 3) & v6) == 1)
    {
      sub_1000EEBB4(a1, 0);
      sub_1000EF7C4(a1);
    }

    *buf = 0;
    if (((*(*a1 + 104))(a1, a2, buf) & 1) == 0)
    {
      v13 = 1;
      if (((*(*a1 + 104))(a1, a2, &v13) & 1) == 0)
      {
        v12 = 2;
        if (((*(*a1 + 104))(a1, a2, &v12) & 1) == 0)
        {
          sub_10004E6E0((a1 + 1072), &v14);
        }
      }
    }
  }

  return v10;
}

uint64_t sub_10004E6E0(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 28) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  sub_10045E8A0(a1, v4);
  operator delete(v4);
  return 1;
}

void sub_10004E764(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 720) != *(a1 + 284))
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018CEDA0();
    }

    v4 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 720);
      v6 = *(a1 + 284);
      *buf = 136446722;
      v18 = a2;
      v19 = 1026;
      v20 = v5;
      v21 = 1026;
      v22 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "WsbClients, mismatch, %{public}s, %{public}d, %{public}d, #CloneMe", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4630 != -1)
      {
        sub_1018CD6B8();
      }

      v7 = *(a1 + 720);
      v8 = *(a1 + 284);
      v11 = 136446722;
      v12 = a2;
      v13 = 1026;
      v14 = v7;
      v15 = 1026;
      v16 = v8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "WsbClients, mismatch, %{public}s, %{public}d, %{public}d, #CloneMe", &v11, 24);
      v10 = v9;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::wsbConfirmClientCounts(const char *)", "%s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }
}

uint64_t sub_10004E990(uint64_t a1)
{
  v2 = *(a1 + 16);
  LODWORD(v6) = [*(a1 + 112) transientAwareRegistrationResult];
  result = sub_1000498FC(v2, &v6);
  if (*(a1 + 72) == 1)
  {
    v4 = result;
    v5 = [*(a1 + 112) isAuthorizedForServiceType:12] ^ 1;
    v7[0] = @"kCLConnectionMessageStatusKey";
    v8[0] = [NSNumber numberWithUnsignedInt:v4];
    v7[1] = @"kCLConnectionMessageCompensationKey";
    v8[1] = [NSNumber numberWithBool:(v4 != 0) & v5];
    v7[2] = @"kCLConnectionMessageAuthorizedForWidgetUpdatesKey";
    v8[2] = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 112) authorizedForWidgetUpdates]);
    v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
    sub_10004EACC(a1, &v6);
  }

  return result;
}

void sub_10004EB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004EB70(uint64_t **a1, char *a2)
{
  v3 = sub_10045EF04(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_1001D2ED0(a1, v3);
  return 1;
}

void sub_10004EBB8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 241);
  v5 = *(a1 + 112);
  if (!sub_100030B7C(a1, 4))
  {
    goto LABEL_9;
  }

  sub_10000EC00(&__p, "kCLConnectionMessageLocation");
  v6 = sub_10004B3BC(a1);
  v7 = v6;
  if ((v14 & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_9:
    v11 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  operator delete(__p);
  if ((v7 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageDesiredAccuracyKey", "doubleValue"}];
  v9 = v8;
  [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageDistanceFilterKey", "doubleValue"}];
  if (fabs(v9 + -2147483650.0) >= 2.22044605e-16 && fabs(v9 + -2147483650.0) >= 2.22044605e-16 && fabs(v9 + -2147483640.0) >= 2.22044605e-16)
  {
    v12 = 0;
    v11 = 1;
    goto LABEL_11;
  }

  v11 = 0;
  v12 = 1;
LABEL_10:
  v9 = INFINITY;
  v10 = 0x7FF0000000000000;
LABEL_11:
  *a2 = v11;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = 0;
  *(a2 + 28) = v4;
  *(a2 + 29) = v12;
  *(a2 + 30) = v5 != 0;
  *(a2 + 32) = 1;
}

void sub_10004ED28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004ED44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  sub_10004EDC4(a1, a2, a3, &v9);
  v5 = sub_1000344B0(a2, 0);
  v6 = v9;
  Current = CFAbsoluteTimeGetCurrent();

  return sub_10002FE04(a1, Current, v5, 2uLL, v6, 0, 0);
}

void sub_10004EDC4(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  *a4 = 0;
  v8 = sub_1000344B0(a2, 0);
  v9 = *(a1 + 840);
  if (v9 != (a1 + 848))
  {
    v10 = v8;
    v11 = 0;
    while (1)
    {
      v12 = v9[5];
      v13 = [sub_1000344B0(v12 0)];
      if (v12 == a2)
      {
        v14 = a3;
      }

      else
      {
        v14 = 1;
      }

      if ((v13 & v14) != 1)
      {
        goto LABEL_11;
      }

      ++v11;
      if (!sub_10004F818(v12, 2))
      {
        goto LABEL_11;
      }

      sub_10000EC00(__p, "kCLConnectionMessageRanging");
      v15 = (*(*v12 + 48))(v12, __p);
      v16 = v15;
      if (SHIBYTE(v38) < 0)
      {
        break;
      }

      if (v15)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = v9[1];
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
          v18 = v9[2];
          v19 = *v18 == v9;
          v9 = v18;
        }

        while (!v19);
      }

      v9 = v18;
      if (v18 == (a1 + 848))
      {
        goto LABEL_21;
      }
    }

    operator delete(*__p);
    if ((v16 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    *a4 = 1;
    goto LABEL_11;
  }

  v11 = 0;
LABEL_21:
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v20 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v21 = sub_1000344B0(a2, 0);
    v22 = *a4;
    *__p = 138412802;
    *&__p[4] = v21;
    v35 = 1024;
    v36 = v11;
    v37 = 1024;
    v38 = v22;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "client, '%@', app's client cnt, %d, active, %d", __p, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v23 = off_1025D47A8;
    v24 = sub_1000344B0(a2, 0);
    v25 = *a4;
    v28 = 138412802;
    v29 = v24;
    v30 = 1024;
    v31 = v11;
    v32 = 1024;
    v33 = v25;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v23, 2, "client, '%@', app's client cnt, %d, active, %d", &v28, 24);
    v27 = v26;
    sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::getAggregateRangeAppInfo(CLDaemonClient *, BOOL, BOOL &)", "%s\n", v26);
    if (v27 != __p)
    {
      free(v27);
    }
  }
}

void sub_10004F0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004F0EC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = vdupq_n_s64(0x7FF0000000000000uLL);
  *(a4 + 6) = 0;
  *(a4 + 27) = 0;
  v7 = a1[105];
  v8 = a1 + 106;
  if (v7 == a1 + 106)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = v7[5];
      v12 = [sub_1000344B0(v11 0)];
      v13 = v11 != a3 || a3 == 0;
      if (v13 && v12 != 0)
      {
        sub_10004F774(v11, &buf);
        if (BYTE2(v46) == 1)
        {
          sub_10004F6C4(a4, &buf);
        }

        ++v10;
      }

      v15 = v7[1];
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
          v16 = v7[2];
          v13 = *v16 == v7;
          v7 = v16;
        }

        while (!v13);
      }

      v7 = v16;
    }

    while (v16 != v8);
  }

  v17 = a1[114];
  if (v17 != a1 + 115)
  {
    v39 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      v21 = v17[5];
      if ([sub_100008880(v21) isEqual:a2])
      {
        if ((*(*v21 + 24))(v21) == 1)
        {
          ++HIDWORD(v39);
          (*(*v21 + 56))(&buf, v21);
          v19 = (buf | v19) != 0;
        }

        else
        {
          if ((*(*v21 + 24))(v21) != 8)
          {
            if ((*(*v21 + 24))(v21) == 3)
            {
              ++v18;
            }

            goto LABEL_31;
          }

          LODWORD(v39) = v39 + 1;
          (*(*v21 + 56))(&buf, v21);
          v20 = (buf | v20) != 0;
        }

        sub_10004F6C4(a4, &buf);
      }

LABEL_31:
      v22 = v17[1];
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
          v23 = v17[2];
          v13 = *v23 == v17;
          v17 = v23;
        }

        while (!v13);
      }

      v17 = v23;
      if (v23 == a1 + 115)
      {
        goto LABEL_39;
      }
    }
  }

  v20 = 0;
  v19 = 0;
  v18 = 0;
  v39 = 0;
LABEL_39:
  v37 = v18;
  v24 = a1[117];
  v25 = a1 + 118;
  if (v24 != a1 + 118)
  {
    v26 = 0;
    v38 = 0;
    v27 = 0;
    while (1)
    {
      v28 = v24[4];
      if ([sub_100008880(v28) isEqual:a2])
      {
        if ((*(*v28 + 24))(v28) == 1)
        {
          ++v27;
          (*(*v28 + 56))(&buf, v28);
          v19 = (buf | v19) != 0;
        }

        else
        {
          if ((*(*v28 + 24))(v28) != 8)
          {
            if ((*(*v28 + 24))(v28) == 3)
            {
              ++v26;
            }

            goto LABEL_49;
          }

          ++v38;
          (*(*v28 + 56))(&buf, v28);
          v20 = (buf | v20) != 0;
        }

        sub_10004F6C4(a4, &buf);
      }

LABEL_49:
      v29 = v24[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v24[2];
          v13 = *v30 == v24;
          v24 = v30;
        }

        while (!v13);
      }

      v24 = v30;
      if (v30 == v25)
      {
        goto LABEL_57;
      }
    }
  }

  v27 = 0;
  v38 = 0;
  v26 = 0;
LABEL_57:
  a4[30] |= (v19 || v20) && v26 + v37 > 0;
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v31 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v32 = *a4;
    v33 = a4[29];
    v34 = a4[28];
    v35 = *(a4 + 1);
    v36 = *(a4 + 2);
    buf = 68292354;
    v41 = 2082;
    v42 = "";
    v43 = 2114;
    v44 = a2;
    v45 = 1026;
    v46 = v10;
    v47 = 1026;
    v48 = HIDWORD(v39);
    v49 = 1026;
    v50 = v27;
    v51 = 1026;
    v52 = v39;
    v53 = 1026;
    v54 = v38;
    v55 = 1026;
    v56 = v37;
    v57 = 1026;
    v58 = v26;
    v59 = 1026;
    v60 = v32;
    v61 = 1026;
    v62 = v33;
    v63 = 1026;
    v64 = v34;
    v65 = 2050;
    v66 = v35;
    v67 = 2050;
    v68 = v36;
    _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Aggregated Client State, Client:%{public, location:escape_only}@, app's CLDC cnt:%{public}d, DICLU cnt[connected:]:%{public}d, DICLU cnt[disconnected:]:%{public}d, DICLPC cnt[connected:]:%{public}d, DICLPC cnt[disconnected:]:%{public}d, DICBAS cnt[disconnected:]:%{public}d, DICBAS cnt[disconnected:]:%{public}d, active:%{public}hhd, spectator:%{public}hhd, batchEnabled:%{public}hhd, desiredAccuracy:%{public}f, distanceFilter:%{public}f}", &buf, 0x6Cu);
  }
}

uint64_t sub_10004F6C4(uint64_t result, uint64_t a2)
{
  *result = (*result | *a2) & 1;
  *(result + 28) = (*(result + 28) | *(a2 + 28)) & 1;
  *(result + 29) = (*(result + 29) | *(a2 + 29)) & 1;
  *(result + 30) = (*(result + 30) | *(a2 + 30)) & 1;
  v2 = *(result + 8);
  v3 = 0x41DFFFFFFE400000;
  if (v2 != 2147483640.0)
  {
    v4 = *(a2 + 8);
    if (v4 != 2147483640.0)
    {
      v3 = 0x41DFFFFFFE800000;
      if (v2 != 2147483640.0 && v4 != 2147483640.0)
      {
        if (v4 >= v2)
        {
          v3 = *(result + 8);
        }

        else
        {
          v3 = *(a2 + 8);
        }
      }
    }
  }

  *(result + 8) = v3;
  v6 = *(a2 + 16);
  if (v6 >= *(result + 16))
  {
    v6 = *(result + 16);
  }

  *(result + 16) = v6;
  return result;
}

double sub_10004F774@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 32) = 0;
  v4 = sub_100049A40(a1);
  if (v4)
  {
    sub_10004EBB8(v4, &v9);
    v5 = v10;
    *a2 = v9;
    *(a2 + 16) = v5;
    *(a2 + 32) = v11;
  }

  v6 = sub_10004975C(a1);
  if (v6)
  {
    sub_1001C3794(v6, &v9);
    if (*(a2 + 32))
    {
      if (v11 == 1)
      {
        sub_10004F6C4(a2, &v9);
      }
    }

    else
    {
      result = *&v9;
      v8 = v10;
      *a2 = v9;
      *(a2 + 16) = v8;
      *(a2 + 32) = v11;
    }
  }

  return result;
}

id sub_10004F82C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = [a2 subIdentityType];
  if (result == 122)
  {
    v6 = [a2 zoneId];
    v7 = [objc_msgSend(*(v4 + 136) readonlyStoreAtKeyPath:{a2), "dictionary"}];
    result = [objc_msgSend(v7 objectForKeyedSubscript:{@"Provenance", "intValue"}];
    if (result == 1)
    {
      result = [objc_msgSend(v7 objectForKeyedSubscript:{@"Type", "intValue"}];
      if (result == 1)
      {
        v8 = *(v4 + 352);
        v9 = *(a1 + 40);
        v10 = *(v9 + 23);
        if (*(a1 + 48) == 1)
        {
          if (v10 < 0)
          {
            v9 = *v9;
          }

          v11 = [NSString stringWithUTF8String:v9];
          [objc_msgSend(v7 objectForKeyedSubscript:{@"Latitude", "doubleValue"}];
          v13 = v12;
          [objc_msgSend(v7 objectForKeyedSubscript:{@"Longitude", "doubleValue"}];
          v15 = v14;
          [objc_msgSend(v7 objectForKeyedSubscript:{@"Radius", "doubleValue"}];

          return [v8 startCircularZoneMonitoringForClient:v11 withZoneId:v6 latitude:v13 longitude:v15 radius:v16];
        }

        else
        {
          if (v10 < 0)
          {
            v9 = *v9;
          }

          v17 = [NSString stringWithUTF8String:v9];

          return [v8 stopCircularZoneMonitoringForClient:v17 withZoneId:v6];
        }
      }
    }
  }

  return result;
}

void sub_10004F9C8(uint64_t a1, void *a2, __CFString **a3)
{
  *a2 = 0;
  switch(a1)
  {
    case 0:
      *a2 = @"BeaconRegionTimeStarted";
      v4 = &off_1024D79D8;
      goto LABEL_16;
    case 1:
      *a2 = @"FenceTimeStarted";
      v4 = &off_1024D79E8;
      goto LABEL_16;
    case 2:
      *a2 = @"RangeTimeStarted";
      v4 = &off_1024D79F8;
      goto LABEL_16;
    case 3:
      *a2 = @"SignificantTimeStarted";
      v4 = &off_1024D7A08;
      goto LABEL_16;
    case 4:
      *a2 = @"LocationTimeStarted";
      v4 = &off_1024D7A18;
      goto LABEL_16;
    case 5:
      *a2 = @"BackgroundLocationTimeStarted";
      v4 = &off_1024D7A28;
      goto LABEL_16;
    case 6:
      *a2 = @"VisitTimeStarted";
      v4 = &off_1024D7A38;
      goto LABEL_16;
    case 7:
      *a2 = @"RemoteLocationTimeStarted";
      v4 = &off_1024D7AD0;
      goto LABEL_16;
    case 8:
      *a2 = @"MicroLocationTimeStarted";
      v4 = &off_1024D7AF0;
      goto LABEL_16;
    case 9:
      *a2 = @"RemoteFenceTimeStarted";
      v4 = &off_1024D7AE0;
      goto LABEL_16;
    case 10:
      *a2 = @"ReceivingLocationInformationTimeStarted";
      v4 = &off_1024D7A48;
      goto LABEL_16;
    case 11:
      *a2 = @"NonPersistentSignificantTimeStarted";
      v4 = &off_1024D7A58;
      goto LABEL_16;
    case 15:
      *a2 = @"PushTimeStarted";
      v4 = &off_1024D7A68;
      goto LABEL_16;
    case 16:
      *a2 = @"TranscriptTimeStarted";
      v4 = &off_1024D7A78;
LABEL_16:
      v5 = *v4;
      *a3 = v5;
      break;
    default:
      v5 = *a3;
      break;
  }

  if (*a2)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v8[0] = 68289282;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2050;
      v12 = a1;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Unsupported CLClientServiceType, serviceType:%{public}lu}", v8, 0x1Cu);
    }
  }
}

BOOL sub_10004FCC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

id sub_10004FD1C(uint64_t a1, uint64_t *a2, char a3)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v6))}];
  v8 = *(a1 + 136);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004F82C;
  v10[3] = &unk_102470660;
  v11 = a3;
  v10[4] = a1;
  v10[5] = a2;
  return [v8 iterateIdentitiesRelatedToKeyPath:v7 withBlock:v10];
}

id sub_10004FE2C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = sub_1000184F4(a1, a3);
  if (!a4)
  {
    return 0;
  }

  v8 = v6;
  sub_10001A3E8(v6, v7);
  v9 = sub_10001CF3C();
  if (a2 != 3 || !v9)
  {
    return 0;
  }

  v10 = [v8 bundlePath];
  v11 = [NSString stringWithUTF8String:"/System/Library/LocationBundles/AppleWatchFaces.bundle"];

  return [v10 isEqualToString:v11];
}

CLClientManagerAuthorizationContext *sub_10004FEC8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = sub_1000184F4(a1, a2);
  if (sub_1000317E4(a1, v5))
  {

    return sub_100018FC8(a1, v5, a3);
  }

  else
  {
    v7 = *(a1 + 1104);
    v8 = [v5 legacyClientKey];

    return [v7 objectForKeyedSubscript:v8];
  }
}

void sub_10004FF5C(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          sub_100008080(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

__int128 *sub_10004FFD4(__int128 *result, uint64_t **a2)
{
  v2 = *(result + 2);
  *(result + 2) = a2[2];
  a2[2] = v2;
  v3 = *result;
  *result = *a2;
  *a2 = v3;
  if (*(result + 2))
  {
    **(result + 1) = result;
    v4 = *result;
  }

  else
  {
    *result = result;
    v4 = result;
  }

  *(v4 + 1) = result;
  if (a2[2])
  {
    *a2[1] = a2;
    v5 = *a2;
  }

  else
  {
    *a2 = a2;
    v5 = a2;
  }

  v5[1] = a2;
  return result;
}

void sub_100050048(uint64_t *result, uint64_t a2)
{
  v2 = result[8];
  if ((v2 & a2) != 0)
  {
    v3 = a2;
    result[8] = v2 & ~a2;
    if ((a2 & 0x10) != 0)
    {
      v5 = result[2];
      if ([result[6] isAuthLimited])
      {
        v6 = sub_1001D2EC4(result[2], result[6]);
      }

      else
      {
        v6 = result[6];
      }

      sub_10017E59C(v5, v6, 4);
    }

    if ((v3 & 4) != 0)
    {
      v7 = result[2];
      if ([result[6] isAuthLimited])
      {
        v8 = sub_1001D2EC4(result[2], result[6]);
      }

      else
      {
        v8 = result[6];
      }

      sub_10017E59C(v7, v8, 2);
    }
  }
}

void sub_100050114(uint64_t a1)
{
  if (qword_1025D4790 != -1)
  {
    sub_100312440();
  }

  v2 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 24);
    v14 = 68289538;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2114;
    v19 = v3;
    v20 = 2050;
    v21 = sub_1007F2CF8(a1);
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:stopLocation_nl, Client:%{public, location:escape_only}@, DC:%{public}p}", &v14, 0x26u);
  }

  if (*(a1 + 241) == 1)
  {
    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v4 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 24);
      v14 = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:BATCH: stop because stopping location for, Client:%{public, location:escape_only}@}", &v14, 0x1Cu);
    }

    sub_101083F3C(a1, 0xC);
  }

  sub_10004D690(a1);
  sub_10004DAD8(a1, 0xFFFFFFFFLL);
  *(a1 + 208) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 196) = -1;
  sub_10004D9B8(a1, 2);
  sub_10004D9B8(a1, 1);
  sub_10004D9B8(a1, 4);
  sub_10004D9B8(a1, 39);
  sub_10004D9B8(a1, 5);
  sub_10004D9B8(a1, 0);
  sub_10004D9B8(a1, 9);
  v6 = sub_10004D8F4(a1);
  [*(*v6 + 16) unregister:*(*v6 + 8) forNotification:8];
  v7 = sub_10004D8F4(a1);
  [*(*v7 + 16) unregister:*(*v7 + 8) forNotification:17];
  v8 = sub_10004D8F4(a1);
  [*(*v8 + 16) unregister:*(*v8 + 8) forNotification:22];
  v9 = sub_10004D8F4(a1);
  [*(*v9 + 16) unregister:*(*v9 + 8) forNotification:34];
  v10 = sub_10004D8F4(a1);
  [*(*v10 + 16) unregister:*(*v10 + 8) forNotification:35];
  v11 = sub_10004DA14(a1);
  [*(*v11 + 16) unregister:*(*v11 + 8) forNotification:12];
  sub_10004B4B4(a1);
  sub_10004B3E4(a1);
  v13 = *(a1 + 184);
  v12 = *(a1 + 188);
  if (v13 < 5)
  {
    if (v12 != 2 && (v13 != 2 || v12 != 3))
    {
LABEL_18:

      *(a1 + 216) = 0;
      sub_100050790(a1 + 520);
    }
  }

  else if (v12 == 1)
  {
    goto LABEL_18;
  }

  sub_10004D6B8(a1);
  goto LABEL_18;
}

void sub_100050420(uint64_t a1, int a2)
{
  *(a1 + 120) &= ~a2;
  if (!objc_opt_class())
  {
    return;
  }

  if (!*(a1 + 112))
  {
    goto LABEL_18;
  }

  if (*(a1 + 120) == 3)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B13524();
    }

    v3 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    v4 = *(a1 + 24);
    v5 = *(a1 + 44);
    *buf = 68289538;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2114;
    v26 = v4;
    v27 = 1026;
    v28 = v5;
    v6 = "{msg%{public}.0s:Client is performing batch location, allowing idle sleep., Client:%{public, location:escape_only}@, pid:%{public}u}";
    goto LABEL_17;
  }

  if ((*(a1 + 120) & 3) != 2)
  {
    goto LABEL_13;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101B13524();
  }

  v7 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 44);
    *buf = 68289538;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2114;
    v26 = v8;
    v27 = 1026;
    v28 = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Client is performing batch without location., Client:%{public, location:escape_only}@, pid:%{public}u}", buf, 0x22u);
LABEL_13:
    if (qword_1025D47A0 != -1)
    {
      sub_101B13408();
    }
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 24);
    v11 = *(a1 + 44);
    *buf = 68289538;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2114;
    v26 = v10;
    v27 = 1026;
    v28 = v11;
    v6 = "{msg%{public}.0s:Client is not performing batch location, preventing task suspend., Client:%{public, location:escape_only}@, pid:%{public}u}";
LABEL_17:
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, v6, buf, 0x22u);
LABEL_18:
    if (qword_1025D47A0 != -1)
    {
      sub_101B13408();
    }
  }

LABEL_20:
  v12 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 120);
    if (*(a1 + 89) == 1)
    {
      v14 = *(a1 + 90);
    }

    else
    {
      v14 = 0;
    }

    *buf = 68289538;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2050;
    v26 = v13;
    v27 = 1026;
    v28 = v14;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:release process assertion, fProcessAssertionReason:%{public, location:CLClientProcessAssertionReasons}lld, backgroundLocationDesired:%{public}hhd}", buf, 0x22u);
  }

  if (!*(a1 + 120) || *(a1 + 89) != 1 || (*(a1 + 90) & 1) == 0)
  {
    v15 = *(a1 + 112);
    v16 = *(a1 + 24);
    *(a1 + 112) = 0;
    v17 = *(a1 + 44);
    v18 = [*(a1 + 8) silo];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001479B0;
    v19[3] = &unk_10249E458;
    v20 = v17;
    v19[4] = v15;
    v19[5] = v16;
    [v18 afterInterval:v19 async:1.0];
  }
}

uint64_t sub_100050828(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 108))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v8;
  v8[0] = 0;
  v8[1] = 0;
  v9 = a2;
  v3 = (a1 + 104);
  ++*(a1 + 104);
  v10 = (a1 + 104);
  v4 = sub_1000488C8(a1 + 80, (a1 + 104), &unk_101C66300, &v10);
  if (v4 + 5 != &v7)
  {
    sub_1000508F4(v4 + 5, v7, v8);
  }

  v5 = v8[0];
  v4[8] = v9;
  v2 = *v3;
  sub_1003C93BC(&v7, v5);
  return v2;
}

void *sub_1000508F4(void *result, int *a2, int *a3)
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
      v13 = sub_10047CC44(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = v9[7];
          sub_10047CBD4(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_10047CC44(v13);
          }

          v10 = *(v9 + 1);
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
              a2 = *(v9 + 2);
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

    result = sub_10047CC98(&v12);
  }

  if (a2 != a3)
  {
    sub_10005B258(v5, a2 + 7);
  }

  return result;
}

void sub_100050A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10047CC98(va);
  _Unwind_Resume(a1);
}

void sub_100050A58(void *a1)
{
  v2 = [[CLDaemonClientAdapter alloc] initWithDaemonClient:a1];
  a1[5] = v2;
  [(CLDaemonClientAdapter *)v2 setValid:1];
  sub_100058FD4();
}

void sub_100050B4C(void *a1, CLConnection *a2, uint64_t a3, void *a4, uint64_t a5)
{
  *a1 = off_102494BF8;
  a1[1] = &off_102494CD0;
  a1[2] = a3;
  a1[3] = a4;
  a1[4] = [a4 silo];
  a1[12] = 0;
  *(a1 + 104) = 0;
  *(a1 + 5) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 71) = 0;
  a1[10] = 0;
  *(a1 + 22) = 0;
  a1[14] = sub_100051208(4);
  *(a1 + 120) = 1;
  a1[16] = a1 + 16;
  a1[17] = a1 + 16;
  a1[18] = 0;
  v7 = objc_opt_new();
  a1[22] = 0;
  a1[21] = a1 + 22;
  a1[19] = v7;
  a1[20] = 0;
  a1[23] = 0;
  *(a1 + 96) = 0;
  *(a1 + 194) = 0;
  *(a1 + 13) = 0u;
  *(a1 + 196) = 0;
  *(a1 + 204) = 0;
  *(a1 + 14) = 0u;
  *(a1 + 15) = 0u;
  a1[32] = 0;
  a1[33] = a2;
  a1[34] = 0xFFFFFFFFLL;
  *(a1 + 18) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 80) = 1065353216;
  *(a1 + 41) = 0u;
  *(a1 + 43) = 0u;
  *(a1 + 90) = 1065353216;
  *(a1 + 92) = 65537;
  a1[47] = 0;
  a1[48] = 0;
  a1[49] = 0;
  a1[50] = off_10245B020;
  operator new();
}

uint64_t sub_100051208(int a1)
{
  v4 = 0u;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10076CBFC;
  v3[3] = &unk_10245D2A8;
  if (qword_102659EC0 != -1)
  {
    dispatch_once(&qword_102659EC0, v3);
  }

  if (a1 == 4)
  {
    return qword_102659EB8;
  }

  if (a1 == 5)
  {
    return qword_102659EB0;
  }

  return 0;
}

uint64_t sub_1000512D0(uint64_t a1)
{
  if (qword_10265CA08 != -1)
  {
    sub_1019EED58();
  }

  return CLConnection::setDefaultMessageHandler();
}

void sub_100051364(uint64_t a1, void *a2)
{
  v156 = objc_alloc_init(NSAutoreleasePool);
  v165 = 0u;
  v166 = 0u;
  v161 = a1;
  CLConnection::getAuditToken(*(a1 + 264));
  memset(buf, 0, 32);
  v3 = sub_1000539F8(buf);
  if (![(CLClientKeyPath *)v3 isValidCKP])
  {
    if (qword_1025D4790 != -1)
    {
      sub_1001456E8();
    }

    v4 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_ERROR))
    {
      v5 = *(v161 + 272);
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1026;
      *&buf[20] = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Couldn't get information from PID for DaemonClient registration. Defaulting natural identity to nullCKP., pid:%{public}u}", buf, 0x18u);
      if (qword_1025D4790 != -1)
      {
        sub_1001456E8();
      }
    }

    v6 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      v7 = *(v161 + 272);
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1026;
      *&buf[20] = v7;
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Couldn't get information from PID for DaemonClient registration. Defaulting natural identity to nullCKP.", "{msg%{public}.0s:Couldn't get information from PID for DaemonClient registration. Defaulting natural identity to nullCKP., pid:%{public}u}", buf, 0x18u);
    }
  }

  if (a2)
  {
    v155 = [(CLClientKeyPath *)v3 bundleId];
    v8 = sub_100055670(*(v161 + 16), v3);
    v9 = [(CLClientKeyPath *)v8 isValidCKP];
    v10 = v9;
    if (v9)
    {
      v11 = v8;
    }

    else
    {
      v11 = v3;
    }

    v153 = v11;
    v154 = [a2 objectForKeyedSubscript:@"kCLConnectionMessageBundleIdentifierKey"];
    v12 = [a2 objectForKeyedSubscript:@"kCLConnectionMessageBundlePathKey"];
    if ([a2 objectForKey:@"kCLConnectionMessageClientSDKKey"])
    {
      v13 = [objc_msgSend(a2 objectForKeyedSubscript:{@"kCLConnectionMessageClientSDKKey", "unsignedIntValue"}];
      v14 = v161;
      *(v161 + 192) = (v13 & 0xFFF80000) != 0;
      *(v161 + 193) = HIWORD(v13) > 0xAu;
      v15 = v13 > 0xCFFFF;
    }

    else
    {
      *(v161 + 192) = [objc_msgSend(a2 objectForKeyedSubscript:{@"kCLConnectionMessageClientSDKAtLeast2014Key", "unsignedIntValue"}] != 0;
      *(v161 + 193) = [objc_msgSend(a2 objectForKeyedSubscript:{@"kCLConnectionMessageClientSDKAtLeast2017Key", "unsignedIntValue"}] != 0;
      v15 = [objc_msgSend(a2 objectForKeyedSubscript:{@"kCLConnectionMessageClientSDKAtLeast2019Key", "unsignedIntValue"}] != 0;
      v14 = v161;
    }

    *(v14 + 194) = v15;
    if (qword_1025D47A0 != -1)
    {
      sub_1019EED30();
    }

    v17 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(v161 + 192);
      v19 = *(v161 + 193);
      v20 = *(v161 + 194);
      *buf = 68290050;
      *&buf[8] = 2082;
      *&buf[4] = 0;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v153;
      *&buf[28] = 1026;
      *&buf[30] = v18;
      *&buf[34] = 1026;
      *&buf[36] = v19;
      *&buf[40] = 1026;
      *&buf[42] = v20;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:client sdk, NaturalKeyPath:%{public, location:escape_only}@, sdkAtLeast2014?:%{public}hhd, sdkAtLeast2017?:%{public}hhd, sdkAtLeast2019?:%{public}hhd}", buf, 0x2Eu);
    }

    if (!(v154 | v12))
    {
      goto LABEL_42;
    }

    sub_10000EC00(buf, "com.apple.locationd.effective_bundle");
    v21 = (*(*v161 + 40))(v161, buf);
    v22 = v21;
    if (buf[23] < 0)
    {
      operator delete(*buf);
      if (v22)
      {
        goto LABEL_28;
      }
    }

    else if (v21)
    {
LABEL_28:
      if (v12)
      {
        v152 = [v12 stringByResolvingSymlinksInPath];
        if (v154)
        {
          v23 = [objc_msgSend(objc_msgSend(*(v161 + 24) "vendor")];
        }

        else
        {
          v23 = 1;
        }

        bundleURL = [NSURL fileURLWithPath:v152 isDirectory:1];
        if (([(NSURL *)bundleURL checkResourceIsReachableAndReturnError:0]& v23) != 1)
        {
          goto LABEL_201;
        }

        CLConnection::getAuditToken(*(v161 + 264));
        v159 = [NSBundle bundleWithURL:bundleURL];
        sub_100054014(v164);
        if (v168 >= 0)
        {
          v69 = __p;
        }

        else
        {
          v69 = __p[0];
        }

        v150 = [NSString stringWithUTF8String:v69];
        v70 = [(NSBundle *)v159 objectForInfoDictionaryKey:@"CLSystemServiceRadars"];
        if (v70 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v182 = 0u;
          v183 = 0u;
          memset(v181, 0, sizeof(v181));
          v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70);
          if (v71)
          {
            v72 = *v181[2];
            do
            {
              v73 = 0;
              do
              {
                if (*v181[2] != v72)
                {
                  objc_enumerationMutation(v70);
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (qword_1025D47A0 != -1)
                  {
                    sub_1019EED30();
                  }

                  v74 = off_1025D47A8;
                  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
                  {
                    v75 = [(NSBundle *)v159 bundlePath];
                    *v172 = 68289539;
                    v173 = 2082;
                    v174 = "";
                    v175 = 2113;
                    v176 = v75;
                    v177 = 2113;
                    v178 = v70;
                    _os_log_impl(dword_100000000, v74, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationPrivacy System Service's CLSystemServiceRadars key does not only include radar numbers., Bundle:%{private, location:escape_only}@, RadarsArray:%{private, location:escape_only}@}", v172, 0x26u);
                  }
                }

                ++v73;
              }

              while (v71 != v73);
              v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70);
            }

            while (v71);
          }
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            sub_1019EED30();
          }

          v76 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v77 = [(NSBundle *)v159 bundlePath];
            *buf = 68289283;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2113;
            *&buf[20] = v77;
            _os_log_impl(dword_100000000, v76, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationPrivacy System Service has no listed radars, Bundle:%{private, location:escape_only}@}", buf, 0x1Cu);
          }
        }

        if (sub_1000425A0([(NSBundle *)v159 bundlePath]) && ![(NSBundle *)v159 objectForInfoDictionaryKey:@"CLSystemService"])
        {
          if (qword_1025D47A0 != -1)
          {
            sub_1019EED30();
          }

          v78 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v79 = [(NSBundle *)v159 bundlePath];
            *v172 = 68289283;
            v173 = 2082;
            v174 = "";
            v175 = 2113;
            v176 = v79;
            _os_log_impl(dword_100000000, v78, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationPrivacy Bundle for LocationdInternalSystemService not marked as SystemService., Bundle:%{private, location:escape_only}@}", v172, 0x1Cu);
          }
        }

        v80 = [(NSBundle *)v159 objectForInfoDictionaryKey:@"CLEligibleMasqueraders"];
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }

        v81 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
        {
          v82 = [(NSString *)[(NSBundle *)v159 bundlePath] UTF8String];
          *v172 = 68289539;
          v173 = 2082;
          v174 = "";
          v175 = 2113;
          v176 = v80;
          v177 = 2081;
          v178 = v82;
          _os_log_impl(dword_100000000, v81, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLEligibleMasqueraders for bundle, EligibleMasqueraders:%{private, location:escape_only}@, Bundle:%{private, location:escape_only}s}", v172, 0x26u);
        }

        if (v80 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if (([(NSString *)v80 containsObject:v150]& 1) == 0)
          {
            if (qword_1025D4790 != -1)
            {
              sub_1001456E8();
            }

            v83 = qword_1025D4798;
            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
            {
              v84 = [(NSString *)[(NSBundle *)v159 bundlePath] UTF8String];
              v85 = v168 >= 0 ? __p : __p[0];
              v86 = [[NSString stringWithUTF8String:?]];
              v87 = [[(NSString *)v80 description] UTF8String];
              *v172 = 68289794;
              v173 = 2082;
              v174 = "";
              v175 = 2082;
              v176 = v84;
              v177 = 2082;
              v178 = v86;
              v179 = 2082;
              v180 = v87;
              _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid masquerader for bundle, Bundle:%{public, location:escape_only}s, Client ProcessPath:%{public, location:escape_only}s, EligibleMasqueraders for bundle:%{public, location:escape_only}s}", v172, 0x30u);
              if (qword_1025D4790 != -1)
              {
                sub_1001456E8();
              }
            }

            v88 = qword_1025D4798;
            if (os_signpost_enabled(qword_1025D4798))
            {
              v89 = [(NSString *)[(NSBundle *)v159 bundlePath] UTF8String];
              if (v168 >= 0)
              {
                v90 = __p;
              }

              else
              {
                v90 = __p[0];
              }

              v91 = [[NSString stringWithUTF8String:?]];
              v92 = [[(NSString *)v80 description] UTF8String];
              *v172 = 68289794;
              v173 = 2082;
              v174 = "";
              v175 = 2082;
              v176 = v89;
              v177 = 2082;
              v178 = v91;
              v179 = 2082;
              v180 = v92;
              _os_signpost_emit_with_name_impl(dword_100000000, v88, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid masquerader for bundle", "{msg%{public}.0s:Invalid masquerader for bundle, Bundle:%{public, location:escape_only}s, Client ProcessPath:%{public, location:escape_only}s, EligibleMasqueraders for bundle:%{public, location:escape_only}s}", v172, 0x30u);
            }

            v93 = 0;
LABEL_190:
            if (v168 < 0)
            {
              operator delete(__p[0]);
            }

            if (v93)
            {
              v96 = sub_100033370(*(v161 + 16), [CLClientKeyPath clientKeyPathWithClientAnchor:v152 anchorType:112]);
              if (v154)
              {
                v97 = sub_100033370(*(v161 + 16), [CLClientKeyPath clientKeyPathWithClientAnchor:v154 anchorType:105]);
                if (([v97 isValidCKP] & 1) == 0)
                {
                  if (qword_1025D4790 != -1)
                  {
                    sub_1001456E8();
                  }

                  v134 = qword_1025D4798;
                  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 68289794;
                    *&buf[4] = 0;
                    *&buf[8] = 2082;
                    *&buf[10] = "";
                    *&buf[18] = 2114;
                    *&buf[20] = v153;
                    *&buf[28] = 2114;
                    *&buf[30] = v152;
                    *&buf[38] = 2114;
                    *&buf[40] = v154;
                    _os_log_impl(dword_100000000, v134, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed auth-limited masquerading attempt; effectiveBundleIdentifier failed to register, but didn't we just check that it's installed??, NaturalKeyPath:%{public, location:escape_only}@, effectiveBundlePath:%{public, location:escape_only}@, effectiveBundleIdentifier:%{public, location:escape_only}@}", buf, 0x30u);
                    if (qword_1025D4790 != -1)
                    {
                      sub_1001456E8();
                    }
                  }

                  v135 = qword_1025D4798;
                  if (os_signpost_enabled(qword_1025D4798))
                  {
                    *buf = 68289794;
                    *&buf[4] = 0;
                    *&buf[8] = 2082;
                    *&buf[10] = "";
                    *&buf[18] = 2114;
                    *&buf[20] = v153;
                    *&buf[28] = 2114;
                    *&buf[30] = v152;
                    *&buf[38] = 2114;
                    *&buf[40] = v154;
                    _os_signpost_emit_with_name_impl(dword_100000000, v135, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed auth-limited masquerading attempt; effectiveBundleIdentifier failed to register, but didn't we just check that it's installed??", "{msg%{public}.0s:Failed auth-limited masquerading attempt; effectiveBundleIdentifier failed to register, but didn't we just check that it's installed??, NaturalKeyPath:%{public, location:escape_only}@, effectiveBundlePath:%{public, location:escape_only}@, effectiveBundleIdentifier:%{public, location:escape_only}@}", buf, 0x30u);
                  }

                  v99 = 0;
                  v27 = 0;
                  goto LABEL_269;
                }

                v96 = sub_100033370(*(v161 + 16), +[CLClientKeyPath clientKeyPathWithClientAnchor:anchorType:subIdentityId:subIdentityType:](CLClientKeyPath, "clientKeyPathWithClientAnchor:anchorType:subIdentityId:subIdentityType:", [v97 bundleId], 108, v152, 112));
              }

              v98 = v96;
              v99 = v154 == 0;
              if (qword_1025D4790 != -1)
              {
                sub_1001456E8();
              }

              v100 = qword_1025D4798;
              if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
              {
                v101 = sub_100055728(*(v161 + 16), v98);
                *buf = 68289794;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                *&buf[18] = 2114;
                *&buf[20] = v153;
                *&buf[28] = 2114;
                *&buf[30] = v98;
                *&buf[38] = 1026;
                *&buf[40] = v101;
                _os_log_impl(dword_100000000, v100, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Client is setting effective bundle path, NaturalKeyPath:%{public, location:escape_only}@, MasqueradingKeyPath:%{public, location:escape_only}@, SystemService:%{public}hhd}", buf, 0x2Cu);
              }

              v27 = 1;
              v153 = v98;
LABEL_269:
              v28 = CFBundleCreate(kCFAllocatorDefault, bundleURL);
              v158 = v99;
              v157 = 0;
              v26 = 0;
              *(v161 + 104) = 1;
              goto LABEL_38;
            }

LABEL_201:
            if (qword_1025D4790 != -1)
            {
              sub_1001456E8();
            }

            v102 = qword_1025D4798;
            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
            {
              *buf = 68289794;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              *&buf[18] = 2114;
              *&buf[20] = v153;
              *&buf[28] = 2114;
              *&buf[30] = v152;
              *&buf[38] = 2114;
              *&buf[40] = v154;
              _os_log_impl(dword_100000000, v102, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Failed bundle-path masquerading attempt, NaturalKeyPath:%{public, location:escape_only}@, NewBundlePath:%{public, location:escape_only}@, NewLimitingBundleId:%{public, location:escape_only}@}", buf, 0x30u);
              if (qword_1025D4790 != -1)
              {
                sub_1001456E8();
              }
            }

            v103 = qword_1025D4798;
            if (os_signpost_enabled(qword_1025D4798))
            {
              *buf = 68289794;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              *&buf[18] = 2114;
              v8 = v153;
              *&buf[20] = v153;
              *&buf[28] = 2114;
              *&buf[30] = v152;
              *&buf[38] = 2114;
              *&buf[40] = v154;
              _os_signpost_emit_with_name_impl(dword_100000000, v103, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed bundle-path masquerading attempt", "{msg%{public}.0s:Failed bundle-path masquerading attempt, NaturalKeyPath:%{public, location:escape_only}@, NewBundlePath:%{public, location:escape_only}@, NewLimitingBundleId:%{public, location:escape_only}@}", buf, 0x30u);
              v157 = 0;
              v26 = 0;
              v27 = 0;
LABEL_51:
              v28 = 0;
              v158 = 1;
              goto LABEL_52;
            }

LABEL_37:
            v157 = 0;
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v158 = 1;
LABEL_38:
            v8 = v153;
            goto LABEL_52;
          }
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            sub_1019EED30();
          }

          v94 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v95 = [(NSBundle *)v159 bundlePath];
            *v172 = 68289539;
            v173 = 2082;
            v174 = "";
            v175 = 2113;
            v176 = v95;
            v177 = 2113;
            v178 = v150;
            _os_log_impl(dword_100000000, v94, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationPrivacy Masquerading bundle has no EligibleMasqueraders, Bundle:%{private, location:escape_only}@, Masquerader:%{private, location:escape_only}@}", v172, 0x26u);
          }
        }

        v93 = 1;
        goto LABEL_190;
      }

      if (v154)
      {
        v29 = sub_100033370(*(v161 + 16), [CLClientKeyPath clientKeyPathWithClientAnchor:v154 anchorType:105]);
        if ([(CLClientKeyPath *)v8 isValidCKP])
        {
          v8 = v153;
        }

        else
        {
          v122 = sub_100055670(*(v161 + 16), v153);
          if ([(CLClientKeyPath *)v122 isValidCKP])
          {
            v8 = v122;
          }

          else
          {
            v8 = v153;
          }
        }

        v123 = v29;
        if ([(CLClientKeyPath *)v8 isValidCKP])
        {
          v124 = [(NSString *)[(CLClientKeyPath *)v29 bundleId] isEqualToString:[(CLClientKeyPath *)v8 bundleId]];
        }

        else
        {
          v124 = 0;
        }

        v125 = [(NSString *)v155 isEqualToString:[(CLClientKeyPath *)v29 bundleId]];
        v126 = [(CLClientKeyPath *)v29 bundleId];
        v158 = v124;
        v157 = v125;
        if ([objc_msgSend(objc_msgSend(*(v161 + 24) "vendor")])
        {
          if (qword_1025D4790 != -1)
          {
            sub_1001456E8();
          }

          v127 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
          {
            v128 = [(CLClientKeyPath *)v8 bundleId];
            v129 = [(CLClientKeyPath *)v123 bundleId];
            *buf = 68290050;
            *&buf[8] = 2082;
            *&buf[4] = 0;
            *&buf[10] = "";
            *&buf[18] = 2114;
            *&buf[20] = v128;
            *&buf[28] = 2114;
            *&buf[30] = v129;
            *&buf[38] = 1026;
            *&buf[40] = v124;
            *&buf[44] = 1026;
            *&buf[46] = v125;
            _os_log_impl(dword_100000000, v127, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Client is setting effective bundle identifier, NaturalBundleId:%{public, location:escape_only}@, MasqueradingBundleId:%{public, location:escape_only}@, shouldAuthSlide:%{public}hhd, shouldUpdateEntitlements:%{public}hhd}", buf, 0x32u);
          }

          v130 = sub_1000E9840(v126);
          if (v130)
          {
            v131 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v130, kCFURLPOSIXPathStyle, 0);
            if (v131)
            {
              v28 = CFBundleCreate(kCFAllocatorDefault, v131);
              CFRelease(v131);
              v26 = 0;
            }

            else
            {
              v26 = 0;
              v28 = 0;
            }
          }

          else
          {
            HasPrefix = CFStringHasPrefix(v126, @"com.apple.webapp-");
            v28 = 0;
            v26 = HasPrefix != 0;
          }

          v27 = 1;
          *(v161 + 104) = 1;
          v8 = v123;
        }

        else
        {
          if (qword_1025D4790 != -1)
          {
            sub_1001456E8();
          }

          v132 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
          {
            v133 = [(__CFString *)v126 UTF8String];
            *buf = 138543618;
            *&buf[4] = v8;
            *&buf[12] = 2082;
            *&buf[14] = v133;
            _os_log_impl(dword_100000000, v132, OS_LOG_TYPE_FAULT, "Client '%{public}@' is attempting to masquerade as uninstalled app with effective bundle identifier '%{public}s'", buf, 0x16u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1019EED6C(buf);
            v145 = qword_1025D4798;
            v146 = [(__CFString *)v126 UTF8String];
            LODWORD(v181[0]) = 138543618;
            *(v181 + 4) = v8;
            WORD2(v181[1]) = 2082;
            *(&v181[1] + 6) = v146;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v145, 17, "Client '%{public}@' is attempting to masquerade as uninstalled app with effective bundle identifier '%{public}s'", v181, 22);
            v148 = v147;
            sub_100152C7C("Generic", 1, 0, 0, "void CLDaemonClient::processRegistration(NSDictionary *)", "%s\n", v147);
            if (v148 != buf)
            {
              free(v148);
            }
          }

          v26 = 0;
          v27 = 0;
          v28 = 0;
        }

LABEL_52:
        v31 = v8;
        v32 = sub_10005571C(*(v161 + 16), v8);
        if ([objc_msgSend(v32 arrayForKey:@"PluginBundleIds" defaultValue:{0), "containsObject:", v155}])
        {
          *(v161 + 96) = v155;
        }

        *(v161 + 90) = [v32 BOOLForKey:@"IsAppClip" defaultValue:0];
        *(v161 + 74) = [v32 BOOLForKey:@"DefaultAccuracyReduced" defaultValue:0];
        *(v161 + 73) = [v32 BOOLForKey:@"AuthRequestsDisabled" defaultValue:0];
        v34 = sub_100055728(*(v161 + 16), v8);
        *(v161 + 91) = v34;
        if (v27 && (*(v161 + 104) & 1) == 0)
        {
          if (*(v161 + 96))
          {
            if (qword_1025D4790 != -1)
            {
              sub_1001456E8();
            }

            v35 = qword_1025D4798;
            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v8;
              _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEFAULT, "Client '%{public}@' is a plugin, auto-masquerading as its containing app", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1019EED6C(buf);
              LODWORD(v181[0]) = 138543362;
              *(v181 + 4) = v8;
              LODWORD(v149) = 12;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 0, "Client '%{public}@' is a plugin, auto-masquerading as its containing app", v181, v149);
              v138 = v137;
              sub_100152C7C("Generic", 1, 0, 2, "void CLDaemonClient::processRegistration(NSDictionary *)", "%s\n", v137);
              if (v138 != buf)
              {
                free(v138);
              }
            }

            if (sub_100058F3C(*(v161 + 272)))
            {
              v36 = *(v161 + 96);
              if (v36)
              {
                v33 = sub_100055734(v36);
                if (v33)
                {
                  v37 = [NSBundle bundleWithURL:v33];
                  if (!v37)
                  {
                    if (qword_1025D47A0 != -1)
                    {
                      sub_1019EED30();
                    }

                    v38 = off_1025D47A8;
                    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 68289282;
                      *&buf[4] = 0;
                      *&buf[8] = 2082;
                      *&buf[10] = "";
                      *&buf[18] = 2114;
                      *&buf[20] = v31;
                      _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Avocado couldn't get bundle for client, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
                      if (qword_1025D47A0 != -1)
                      {
                        sub_1019EED30();
                      }
                    }

                    v39 = off_1025D47A8;
                    if (os_signpost_enabled(off_1025D47A8))
                    {
                      *buf = 68289282;
                      *&buf[4] = 0;
                      *&buf[8] = 2082;
                      *&buf[10] = "";
                      *&buf[18] = 2114;
                      *&buf[20] = v31;
                      _os_signpost_emit_with_name_impl(dword_100000000, v39, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Avocado couldn't get bundle for client", "{msg%{public}.0s:#Avocado couldn't get bundle for client, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
                    }

                    v27 = 0;
                  }

                  if ((sub_1004E974C(v37) & 1) == 0)
                  {
                    if (qword_1025D47A0 != -1)
                    {
                      sub_1019EED30();
                    }

                    v40 = off_1025D47A8;
                    v27 = 0;
                    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 68289282;
                      *&buf[4] = 0;
                      *&buf[8] = 2082;
                      *&buf[10] = "";
                      *&buf[18] = 2114;
                      *&buf[20] = v31;
                      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning #Avocado client did not set NSWidgetWantsLocation key in their info.plist, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
                      v27 = 0;
                    }
                  }
                }
              }
            }
          }

          v41 = [(CLClientKeyPath *)v31 bundleId];
          sub_10001A3E8(v41, v42);
          if (!sub_10001CF3C())
          {
            goto LABEL_84;
          }

          v43 = *(v161 + 96);
          if (!v43)
          {
            goto LABEL_84;
          }

          sub_10000EC00(buf, [v43 UTF8String]);
          v46 = sub_10106229C(buf, v44);
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          v41 = *(v161 + 96);
          if (!v46)
          {
            v28 = sub_101061E48(*(v161 + 96), v45);
            if (!v28)
            {
              if (qword_1025D4790 != -1)
              {
                sub_1001456E8();
              }

              v67 = qword_1025D4798;
              if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68289282;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                *&buf[18] = 2114;
                *&buf[20] = v31;
                _os_log_impl(dword_100000000, v67, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Could not find placeholder bundle for client, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
              }

              v28 = 0;
            }
          }

          else
          {
LABEL_84:
            v47 = sub_100055734(v41);
            if (v47)
            {
              v28 = CFBundleCreate(kCFAllocatorDefault, v47);
            }
          }
        }

        v48 = [objc_msgSend(a2 objectForKeyedSubscript:{@"kCLConnectionMessageSubidentityKey", "stringByReplacingOccurrencesOfString:withString:", @":", @"-"}];
        if (v48)
        {
          if (qword_1025D4790 != -1)
          {
            sub_1001456E8();
          }

          v49 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289538;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2114;
            *&buf[20] = v31;
            *&buf[28] = 2114;
            *&buf[30] = v48;
            _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:registering website daemon client, ClientKeyPath:%{public, location:escape_only}@, website:%{public, location:escape_only}@}", buf, 0x26u);
          }

          v31 = [(CLClientKeyPath *)v31 clientKeyPathWithReplacementSubIdentityId:v48 subIdentityType:119];
        }

        sub_100056270(v161, v31);
        if (*(v161 + 48))
        {
          v51 = v27;
        }

        else
        {
          v51 = 0;
        }

        *(v161 + 80) = 0;
        v52 = sub_1000558E0(v161, v50);
        if (*(v161 + 104) == 1 && !v28)
        {
          if (v26)
          {
            *(v161 + 80) = 3;
          }

          else
          {
            if (qword_1025D47A0 != -1)
            {
              sub_1019EED30();
            }

            v60 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
            {
              v61 = *(v161 + 48);
              *buf = 138543362;
              *&buf[4] = v61;
              _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_FAULT, "Could not access bundle for masquerading client %{public}@", buf, 0xCu);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1019EEDB0(buf);
              v142 = *(v161 + 48);
              LODWORD(v181[0]) = 138543362;
              *(v181 + 4) = v142;
              LODWORD(v149) = 12;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Could not access bundle for masquerading client %{public}@", v181, v149);
              v144 = v143;
              sub_100152C7C("Generic", 1, 0, 0, "void CLDaemonClient::processRegistration(NSDictionary *)", "%s\n", v143);
              if (v144 != buf)
              {
                free(v144);
              }
            }
          }

          v62 = 0;
          *v172 = 0;
          if (!v51)
          {
LABEL_240:
            sub_100059AD4(v161, v172);
          }

LABEL_227:
          v111 = *(v161 + 48);
          if (((v34 ^ 1) & v158) != 0)
          {
            sub_100056BBC(*(v161 + 16), *(v161 + 48), *(v161 + 80), *(v161 + 74));
          }

          v112 = *(v161 + 16);
          v113 = [objc_msgSend(v111 "legacyClientKey")];
          if (v113)
          {
            v114 = v113;
          }

          else
          {
            v114 = "";
          }

          sub_10000EC00(buf, v114);
          sub_100056FA0(v112, buf, v62);
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          v115 = *(v161 + 16);
          UniqueRemotePid = CLConnection::getUniqueRemotePid(*(v161 + 264));
          sub_100057698(v115, v111, UniqueRemotePid, 1);
          if (v157)
          {
            v117 = *(v161 + 16);
            sub_10000EC00(buf, "com.apple.developer.corelocation.learned-routes-access");
            v118 = (*(*v161 + 40))(v161, buf);
            sub_10000EC00(v181, "com.apple.developer.corelocation.visit-history-access");
            v119 = (*(*v161 + 40))(v161, v181);
            sub_100057914(v117, v111, v118, v119);
            if (SHIBYTE(v181[2]) < 0)
            {
              operator delete(v181[0]);
            }

            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }

          v120 = sub_100059A1C(*(v161 + 16), v111);
          v169[0] = @"kCLConnectionMessageClientKeyForIdentityValidation";
          v121 = [*(v161 + 48) clientKey];
          v169[1] = @"kCLConnectionMessageMonitorLedgerAccessKey";
          v170[0] = v121;
          v170[1] = v120;
          *v172 = [NSDictionary dictionaryWithObjects:v170 forKeys:v169 count:2];
          goto LABEL_240;
        }

        if ((v51 & 1) == 0)
        {
          *v172 = 0;
          goto LABEL_240;
        }

        sub_10001A3E8(v52, v53);
        if (sub_10001CF3C())
        {
          v54 = *(v161 + 96);
          v55 = v54 != 0;
          if (v54 && !v28)
          {
            if (qword_1025D4790 != -1)
            {
              sub_1001456E8();
            }

            v56 = qword_1025D4798;
            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
            {
              v57 = *(v161 + 48);
              *buf = 68289282;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              *&buf[18] = 2114;
              *&buf[20] = v57;
              _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:WatchKit-Plugin connecting on watch , but companion placeholder bundle not found, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
              if (qword_1025D4790 != -1)
              {
                sub_1001456E8();
              }
            }

            v58 = qword_1025D4798;
            if (os_signpost_enabled(qword_1025D4798))
            {
              v59 = *(v161 + 48);
              *buf = 68289282;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              *&buf[18] = 2114;
              *&buf[20] = v59;
              _os_signpost_emit_with_name_impl(dword_100000000, v58, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "WatchKit-Plugin connecting on watch , but companion placeholder bundle not found", "{msg%{public}.0s:WatchKit-Plugin connecting on watch , but companion placeholder bundle not found, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
            }
          }
        }

        else
        {
          v55 = 0;
        }

        if ((*(*v161 + 80))(v161))
        {
          *(v161 + 80) |= 1uLL;
          v63 = [(CLClientKeyPath *)v31 bundlePath];
          v62 = 0;
          if (sub_1000E64F4(v63, v64))
          {
            v65 = v161;
            *(v161 + 80) |= 4uLL;
            goto LABEL_218;
          }
        }

        else
        {
          if (*(v161 + 193))
          {
            v66 = 2;
          }

          else
          {
            v66 = *(v161 + 192);
          }

          v162[0] = _NSConcreteStackBlock;
          v162[1] = 3221225472;
          v162[2] = sub_10005567C;
          v162[3] = &unk_102494D10;
          v162[4] = v161;
          v162[5] = v28;
          v163 = v55;
          v68 = *(v161 + 80) | sub_1000564F4(v66, v162);
          *(v161 + 80) = v68;
          if (!v28)
          {
            v62 = 0;
            goto LABEL_209;
          }

          v62 = [NSMutableDictionary dictionaryWithDictionary:sub_1000565F4(v28)];
        }

        v68 = *(v161 + 80);
LABEL_209:
        if (v68 == 1)
        {
          if (qword_1025D4790 != -1)
          {
            sub_1001456E8();
          }

          v104 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
          {
            v105 = *(v161 + 48);
            *buf = 138543362;
            *&buf[4] = v105;
            _os_log_impl(dword_100000000, v104, OS_LOG_TYPE_DEFAULT, "%{public}@ is creating a CLLocationManager, but does not have any NSLocation*UsageDescription keys", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019EED6C(buf);
            v106 = *(v161 + 48);
            LODWORD(v181[0]) = 138543362;
            *(v181 + 4) = v106;
            LODWORD(v149) = 12;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 0, "%{public}@ is creating a CLLocationManager, but does not have any NSLocation*UsageDescription keys", v181, v149);
            v108 = v107;
            sub_100152C7C("Generic", 1, 0, 2, "void CLDaemonClient::processRegistration(NSDictionary *)", "%s\n", v107);
            if (v108 != buf)
            {
              free(v108);
            }
          }

          goto LABEL_224;
        }

        v65 = v161;
LABEL_218:
        if (*(v65 + 90) == 1)
        {
          if (qword_1025D4790 != -1)
          {
            sub_1001456E8();
          }

          v109 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
          {
            v110 = *(v161 + 48);
            *buf = 68289282;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2114;
            *&buf[20] = v110;
            _os_log_impl(dword_100000000, v109, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#appclip Removing Always from allowable authorizations, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
          }

          *(v161 + 80) &= ~4uLL;
        }

LABEL_224:
        if (v28)
        {
          CFRelease(v28);
        }

        *v172 = 0;
        goto LABEL_227;
      }

LABEL_42:
      if ((v10 & 1) != 0 || (v8 = sub_100033370(*(v161 + 16), v3), [(CLClientKeyPath *)v8 isValidCKP]))
      {
        v27 = 1;
      }

      else
      {
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }

        v30 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2114;
          *&buf[20] = v3;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning naturalKeyPath registration resulted in nullCKP, NaturalKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        v27 = 0;
        v8 = v3;
      }

      v157 = [(NSString *)v155 isEqualToString:[(CLClientKeyPath *)v8 bundleId]];
      v26 = 0;
      goto LABEL_51;
    }

    if (qword_1025D4790 != -1)
    {
      sub_1001456E8();
    }

    v24 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(v161 + 48);
      *buf = 138544130;
      *&buf[4] = v25;
      *&buf[12] = 2082;
      *&buf[14] = "com.apple.locationd.effective_bundle";
      *&buf[22] = 2114;
      *&buf[24] = v154;
      *&buf[32] = 2114;
      *&buf[34] = v12;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "#Warning Client '%{public}@' does not have required entitlement '%{public}s' to set effective bundle identifier, '%{public}@', or effective bundle, '%{public}@'", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019EED6C(buf);
      v139 = *(v161 + 48);
      LODWORD(v181[0]) = 138544130;
      *(v181 + 4) = v139;
      WORD2(v181[1]) = 2082;
      *(&v181[1] + 6) = "com.apple.locationd.effective_bundle";
      HIWORD(v181[2]) = 2114;
      v181[3] = v154;
      LOWORD(v182) = 2114;
      *(&v182 + 2) = v12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 0, "#Warning Client '%{public}@' does not have required entitlement '%{public}s' to set effective bundle identifier, '%{public}@', or effective bundle, '%{public}@'", v181, 42);
      v141 = v140;
      sub_100152C7C("Generic", 1, 0, 2, "void CLDaemonClient::processRegistration(NSDictionary *)", "%s\n", v140);
      if (v141 != buf)
      {
        free(v141);
      }
    }

    goto LABEL_37;
  }

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v16 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2114;
    *&buf[20] = v3;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Processing Registrationless client, NaturalKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  sub_100056270(v161, v3);
}

void sub_100053930(uint64_t a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  sub_100053ECC(a1, __p);
  *a2 = 0;
  v6 = HIBYTE(v10);
  v7 = SHIBYTE(v10);
  if (v10 < 0)
  {
    v6 = __p[1];
  }

  if (v6)
  {
    *a3 = *__p;
    a3[2] = v10;
  }

  else
  {
    *a2 = 1;
    sub_100054014(a1);
    if (v7 < 0)
    {
      v8 = __p[0];

      operator delete(v8);
    }
  }
}

void sub_1000539E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CLClientKeyPath *sub_1000539F8(uint64_t a1)
{
  v8 = 0;
  sub_100053930(a1, &v8, &__p);
  if (SBYTE3(v13) >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v2 = [NSString stringWithUTF8String:p_p];
  if (SBYTE3(v13) < 0)
  {
    operator delete(__p);
  }

  if ([(NSString *)v2 length])
  {
    if (v8)
    {
      v3 = 101;
    }

    else
    {
      v3 = 105;
    }

    v4 = [CLClientKeyPath clientKeyPathWithUserName:0 clientAnchor:v2 anchorType:v3];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      __p = 68289282;
      v10 = 2082;
      v11 = "";
      v12 = 2114;
      v13 = v4;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Determined clientKeyPath from audit token, clientKeyPath:%{public, location:escape_only}@}", &__p, 0x1Cu);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      __p = 68289026;
      v10 = 2082;
      v11 = "";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Failed to get client info from audit token to create clientKeyPath. Returning #nullCKP}", &__p, 0x12u);
    }

    return +[CLClientKeyPath nullClientKeyPath];
  }

  return v4;
}

void sub_100053BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100053E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100053ECC(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_100054014(a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v4 = sub_100053C00(p_p);
  if (v4)
  {
    v5 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v4, kCFURLPOSIXPathStyle, 0);
    if (v5)
    {
      v6 = _CFBundleCopyBundleURLForExecutableURL();
      if (v6)
      {
        Unique = _CFBundleCreateUnique();
        v8 = Unique;
        if (Unique)
        {
          Identifier = CFBundleGetIdentifier(Unique);
          if (Identifier)
          {
            sub_1000238CC(Identifier, &v10);
            *a2 = v10;
            a2[2] = v11;
          }

          CFRelease(v8);
        }

        CFRelease(v6);
      }

      CFRelease(v5);
    }

    CFRelease(v4);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }
}

void sub_100053FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100054014(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v1->__r_.__value_.__r.__words[0] = 0;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  result = proc_pidpath_audittoken(v3, buffer, 0x1000u);
  if (result >= 1)
  {
    return sub_100006044(v2, buffer);
  }

  return result;
}

void sub_1000540B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000540D0(uint64_t a1, CLConnection *a2, uint64_t a3)
{
  v6 = CLConnectionMessage::name(*a3);
  v7 = __p;
  sub_10000EC00(__p, "/");
  v8 = *(v6 + 23);
  if ((v8 & 0x80u) == 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = *v6;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v6 + 8);
  }

  if ((v128 & 0x80u) == 0)
  {
    v10 = v128;
  }

  else
  {
    v7 = __p[0];
    v10 = __p[1];
  }

  if (v10)
  {
    v11 = &v9[v8];
    if (v8 >= v10)
    {
      v28 = *v7;
      v29 = v9;
      do
      {
        v30 = v8 - v10;
        if (v30 == -1)
        {
          break;
        }

        v31 = memchr(v29, v28, v30 + 1);
        if (!v31)
        {
          break;
        }

        v12 = v31;
        if (!memcmp(v31, v7, v10))
        {
          goto LABEL_12;
        }

        v29 = v12 + 1;
        v8 = v11 - (v12 + 1);
      }

      while (v8 >= v10);
    }

    v12 = v11;
LABEL_12:
    if (v12 == v11)
    {
      v13 = -1;
    }

    else
    {
      v13 = v12 - v9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::string::basic_string(&v126, v6, 0, v13, buf);
  if ((*(&v126.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    v14 = &v126;
    if (HIBYTE(v126.__r_.__value_.__r.__words[2]) == 14)
    {
      goto LABEL_98;
    }

    if (HIBYTE(v126.__r_.__value_.__r.__words[2]) != 15)
    {
      if (HIBYTE(v126.__r_.__value_.__r.__words[2]) != 19)
      {
        goto LABEL_102;
      }

      goto LABEL_29;
    }

    if (v126.__r_.__value_.__r.__words[0] != 0x6E6F697461636F4CLL || *(v126.__r_.__value_.__r.__words + 7) != 0x726567616E614D6ELL)
    {
LABEL_75:
      if (HIBYTE(v126.__r_.__value_.__r.__words[2]) != 14)
      {
        if (HIBYTE(v126.__r_.__value_.__r.__words[2]) == 19)
        {
          v35 = v126.__r_.__value_.__r.__words[0] == 0x756363416C6C7546 && v126.__r_.__value_.__l.__size_ == 0x7373655379636172;
          if (v35 && *(&v126.__r_.__value_.__r.__words[1] + 3) == 0x6E6F697373655379)
          {
            goto LABEL_104;
          }
        }

        goto LABEL_102;
      }

      goto LABEL_96;
    }

LABEL_71:
    v33 = *a3;
    v34 = *(a3 + 8);
    v125[0] = v33;
    v125[1] = v34;
    if (v34)
    {
      atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100053C1C(a1, a2, v125);
  }

  if (v126.__r_.__value_.__l.__size_ == 15 && *v126.__r_.__value_.__l.__data_ == 0x6E6F697461636F4CLL && *(v126.__r_.__value_.__r.__words[0] + 7) == 0x726567616E614D6ELL)
  {
    goto LABEL_71;
  }

  size = v126.__r_.__value_.__l.__size_;
  if (v126.__r_.__value_.__l.__size_ == 25)
  {
    goto LABEL_38;
  }

  if (v126.__r_.__value_.__l.__size_ != 19)
  {
    goto LABEL_86;
  }

  v14 = v126.__r_.__value_.__r.__words[0];
LABEL_29:
  v17 = v14->__r_.__value_.__r.__words[0];
  v18 = v14->__r_.__value_.__l.__size_;
  v19 = *(&v14->__r_.__value_.__r.__words[1] + 3);
  if (v17 == 0x6E6F697461636F4CLL && v18 == 0x4C72657461647055 && v19 == 0x6576694C72657461)
  {
    goto LABEL_104;
  }

  size = v126.__r_.__value_.__l.__size_;
  if ((*(&v126.__r_.__value_.__s + 23) & 0x80) == 0 || v126.__r_.__value_.__l.__size_ != 25)
  {
    if ((*(&v126.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_75;
    }

LABEL_86:
    if (size == 14)
    {
      v14 = v126.__r_.__value_.__r.__words[0];
LABEL_98:
      v39 = v14->__r_.__value_.__r.__words[0];
      v40 = *(v14->__r_.__value_.__r.__words + 6);
      if (v39 == 0x5365636976726553 && v40 == 0x6E6F697373655365)
      {
        goto LABEL_104;
      }

      goto LABEL_102;
    }

    if (size != 19)
    {
      goto LABEL_102;
    }

    if (*v126.__r_.__value_.__l.__data_ == 0x756363416C6C7546 && *(v126.__r_.__value_.__r.__words[0] + 8) == 0x7373655379636172 && *(v126.__r_.__value_.__r.__words[0] + 11) == 0x6E6F697373655379)
    {
      goto LABEL_104;
    }

    if (HIBYTE(v126.__r_.__value_.__r.__words[2]) != 14)
    {
      goto LABEL_102;
    }

LABEL_96:
    v14 = &v126;
    goto LABEL_98;
  }

LABEL_38:
  if (*v126.__r_.__value_.__l.__data_ == 0x6E6F697461636F4CLL && *(v126.__r_.__value_.__r.__words[0] + 8) == 0x4872657461647055 && *(v126.__r_.__value_.__r.__words[0] + 16) == 0x616369726F747369 && *(v126.__r_.__value_.__r.__words[0] + 24) == 108)
  {
    goto LABEL_104;
  }

  v25 = *v126.__r_.__value_.__l.__data_ == 0x756F72676B636142 && *(v126.__r_.__value_.__r.__words[0] + 8) == 0x697669746341646ELL;
  v26 = v25 && *(v126.__r_.__value_.__r.__words[0] + 16) == 0x6F69737365537974;
  if (v26 && *(v126.__r_.__value_.__r.__words[0] + 24) == 110)
  {
    goto LABEL_104;
  }

LABEL_102:
  if (sub_100030AF8(&v126, "VisitedPlacesHistorical") || sub_100030AF8(&v126, "VisitedPlacesLive"))
  {
LABEL_104:
    v42 = *a3;
    v43 = *(a3 + 8);
    v124[0] = v42;
    v124[1] = v43;
    if (v43)
    {
      atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
    }

    sub_10076DF98(a1, a2, v124, &v126);
LABEL_107:
    if (v43)
    {
      sub_100008080(v43);
    }

    goto LABEL_109;
  }

  if (sub_100030AF8(&v126, "Monitor"))
  {
    v44 = *a3;
    v43 = *(a3 + 8);
    v123[0] = v44;
    v123[1] = v43;
    if (v43)
    {
      atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
    }

    sub_10076E784(a1, a2, v123);
    goto LABEL_107;
  }

  if (sub_100030AF8(&v126, "MotionActivityLite"))
  {
    v45 = *(a3 + 8);
    v122[0] = *a3;
    v122[1] = v45;
    if (v45)
    {
      atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
    }

    sub_10076EB04(a1, a2, v122);
  }

  if (sub_100030AF8(&v126, "InUseAssertion"))
  {
    v46 = *(a3 + 8);
    v121[0] = *a3;
    v121[1] = v46;
    if (v46)
    {
      atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
    }

    sub_1000E1D50(a1, a2, v121);
  }

  if (sub_100030AF8(&v126, "LocationIndependenceAssertion"))
  {
    v47 = *(a3 + 8);
    v120[0] = *a3;
    v120[1] = v47;
    if (v47)
    {
      atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
    }

    sub_10076EE6C(a1, a2, v120);
  }

  if (sub_100030AF8(&v126, "kCLConnectionMessageBBTimeFreqTransferAssert"))
  {
    v48 = *(a3 + 8);
    v119[0] = *a3;
    v119[1] = v48;
    if (v48)
    {
      atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
    }

    sub_10076F1D4(a1, a2, v119);
  }

  if (sub_100030AF8(&v126, "kCLConnectionMessageGnssDisablementAssertReq"))
  {
    v49 = *(a3 + 8);
    v118[0] = *a3;
    v118[1] = v49;
    if (v49)
    {
      atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
    }

    sub_10076F53C(a1, a2, v118);
  }

  if (sub_100030AF8(&v126, "kCLConnectionMessageBBGnssStatusQuery"))
  {
    v50 = *(a3 + 8);
    v117[0] = *a3;
    v117[1] = v50;
    if (v50)
    {
      atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
    }

    sub_10076F8A4(a1, a2, v117);
  }

  if (sub_100030AF8(&v126, "EmergencyEnablementAssertion"))
  {
    v51 = *(a3 + 8);
    v116[0] = *a3;
    v116[1] = v51;
    if (v51)
    {
      atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
    }

    sub_10076FC0C(a1, a2, v116);
  }

  if (sub_100030AF8(&v126, "kCLConnectionMessageGnssExtensionsClient"))
  {
    v52 = *(a3 + 8);
    v115[0] = *a3;
    v115[1] = v52;
    if (v52)
    {
      atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
    }

    sub_10076FF74(a1, a2, v115);
  }

  if (sub_100030AF8(&v126, "LaunchdManagedClients"))
  {
    Dictionary = CLConnectionMessage::getDictionary(*a3);
    v54 = [Dictionary objectForKeyedSubscript:@"UUID"];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v55 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v56 = [v54 UTF8String];
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v56;
      _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:UserEventAgent reached out to locationd with registration message., UUID:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    if (!*(a1 + 960))
    {
      *(a1 + 960) = a2;
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v57 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        CLConnection::getName(a2);
        v58 = buf[23] >= 0 ? buf : *buf;
        *v140 = 136446210;
        *&v140[4] = v58;
        _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEFAULT, "UserEventAgent connected (from %{public}s)", v140, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192DC88(buf);
        v93 = off_1025D47A8;
        CLConnection::getName(a2);
        if (v141 >= 0)
        {
          v94 = v140;
        }

        else
        {
          v94 = *v140;
        }

        *v138 = 136446210;
        *&v138[4] = v94;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v93, 0, "UserEventAgent connected (from %{public}s)", v138, 12);
        v96 = v95;
        if (SHIBYTE(v141) < 0)
        {
          operator delete(*v140);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::handleNewConnectionWithFirstMsg(CLConnection *, std::shared_ptr<CLConnectionMessage>)", "%s\n", v96);
        if (v96 != buf)
        {
          free(v96);
        }
      }

      CLConnection::start(*(a1 + 960));
      goto LABEL_109;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v74 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v75 = v140;
      CLConnection::getName(*(a1 + 960));
      if (v141 < 0)
      {
        v75 = *v140;
      }

      CLConnection::getName(a2);
      v76 = v139;
      v77 = *v138;
      RemotePid = CLConnection::getRemotePid(a2);
      v79 = v138;
      *buf = 68290563;
      if (v76 < 0)
      {
        v79 = v77;
      }

      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v75;
      *&buf[28] = 2082;
      *&buf[30] = v79;
      v130 = 2114;
      v131 = Dictionary;
      v132 = 1026;
      v133 = RemotePid;
      v134 = 2082;
      v135 = "assert";
      v136 = 2081;
      v137 = "!fUserEventAgentConnection";
      _os_log_impl(dword_100000000, v74, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Connection to User Event Agent already exists., ExistingConnection:%{public, location:escape_only}s, IncomingConnection:%{public, location:escape_only}s, Payload:%{public, location:escape_only}@, PID:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x4Au);
      if (v139 < 0)
      {
        operator delete(*v138);
      }

      if (SHIBYTE(v141) < 0)
      {
        operator delete(*v140);
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v80 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v81 = v140;
      CLConnection::getName(*(a1 + 960));
      if (v141 < 0)
      {
        v81 = *v140;
      }

      CLConnection::getName(a2);
      v82 = v139;
      v83 = *v138;
      v84 = CLConnection::getRemotePid(a2);
      v85 = v138;
      *buf = 68290563;
      if (v82 < 0)
      {
        v85 = v83;
      }

      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v81;
      *&buf[28] = 2082;
      *&buf[30] = v85;
      v130 = 2114;
      v131 = Dictionary;
      v132 = 1026;
      v133 = v84;
      v134 = 2082;
      v135 = "assert";
      v136 = 2081;
      v137 = "!fUserEventAgentConnection";
      _os_signpost_emit_with_name_impl(dword_100000000, v80, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Connection to User Event Agent already exists.", "{msg%{public}.0s:Connection to User Event Agent already exists., ExistingConnection:%{public, location:escape_only}s, IncomingConnection:%{public, location:escape_only}s, Payload:%{public, location:escape_only}@, PID:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x4Au);
      if (v139 < 0)
      {
        operator delete(*v138);
      }

      if (SHIBYTE(v141) < 0)
      {
        operator delete(*v140);
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v86 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v87 = *(a1 + 960);
      v88 = v140;
      CLConnection::getName(v87);
      if (v141 < 0)
      {
        v88 = *v140;
      }

      CLConnection::getName(a2);
      v89 = v139;
      v90 = *v138;
      v91 = CLConnection::getRemotePid(a2);
      v92 = v138;
      *buf = 68290563;
      if (v89 < 0)
      {
        v92 = v90;
      }

      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v88;
      *&buf[28] = 2082;
      *&buf[30] = v92;
      v130 = 2114;
      v131 = Dictionary;
      v132 = 1026;
      v133 = v91;
      v134 = 2082;
      v135 = "assert";
      v136 = 2081;
      v137 = "!fUserEventAgentConnection";
      _os_log_impl(dword_100000000, v86, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Connection to User Event Agent already exists., ExistingConnection:%{public, location:escape_only}s, IncomingConnection:%{public, location:escape_only}s, Payload:%{public, location:escape_only}@, PID:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x4Au);
      if (v139 < 0)
      {
        operator delete(*v138);
      }

      if (SHIBYTE(v141) < 0)
      {
        operator delete(*v140);
      }
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/ClientManagement/CLClientManager_Unified.mm", 898, "handleNewConnectionWithFirstMsg");
  }

  else
  {
    if (sub_100030AF8(&v126, "Health"))
    {
      v59 = *(a3 + 8);
      v114[0] = *a3;
      v114[1] = v59;
      if (v59)
      {
        atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1007702DC(a1, a2, v114);
    }

    if (sub_100030AF8(&v126, "SpringTracking"))
    {
      v60 = *(a3 + 8);
      v113[0] = *a3;
      v113[1] = v60;
      if (v60)
      {
        atomic_fetch_add_explicit((v60 + 8), 1uLL, memory_order_relaxed);
      }

      sub_100770644(a1, a2, v113);
    }

    if (sub_100030AF8(&v126, "DurianManagement"))
    {
      v61 = *(a3 + 8);
      v112[0] = *a3;
      v112[1] = v61;
      if (v61)
      {
        atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1007709AC(a1, a2, v112);
    }

    if (sub_100030AF8(&v126, "DistributedSensing"))
    {
      v62 = *(a3 + 8);
      v111[0] = *a3;
      v111[1] = v62;
      if (v62)
      {
        atomic_fetch_add_explicit((v62 + 8), 1uLL, memory_order_relaxed);
      }

      sub_100770D14(a1, a2, v111);
    }

    if (sub_100030AF8(&v126, "kCLConnectionMessageAudioAccessoryUsageMetricsSubscription"))
    {
      v63 = *(a3 + 8);
      v110[0] = *a3;
      v110[1] = v63;
      if (v63)
      {
        atomic_fetch_add_explicit((v63 + 8), 1uLL, memory_order_relaxed);
      }

      sub_10077107C(a1, a2, v110);
    }

    if (sub_100030AF8(&v126, "WaterSubmersion"))
    {
      v64 = *(a3 + 8);
      v109[0] = *a3;
      v109[1] = v64;
      if (v64)
      {
        atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1007713E4(a1, a2, v109);
    }

    if (!sub_100030AF8(&v126, "CoreLocationAgent"))
    {
      if (sub_100030AF8(&v126, "PedestrianFence"))
      {
        v65 = *(a3 + 8);
        v106[0] = *a3;
        v106[1] = v65;
        if (v65)
        {
          atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100771D20(a1, a2, v106);
      }

      if (sub_100030AF8(&v126, "IMUCal"))
      {
        v66 = *(a3 + 8);
        v105[0] = *a3;
        v105[1] = v66;
        if (v66)
        {
          atomic_fetch_add_explicit((v66 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100772088(a1, a2, v105);
      }

      if (sub_100030AF8(&v126, "kCLConnectionMessageCheckInNoMovementSubscription"))
      {
        v72 = *(a3 + 8);
        v104[0] = *a3;
        v104[1] = v72;
        if (v72)
        {
          atomic_fetch_add_explicit((v72 + 8), 1uLL, memory_order_relaxed);
        }

        sub_1007723F0(a1, a2, v104);
      }

      if (sub_100030AF8(&v126, "DeviceImpact"))
      {
        v73 = *(a3 + 8);
        v103[0] = *a3;
        v103[1] = v73;
        if (v73)
        {
          atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100772758(a1, a2, v103);
      }

      v97 = sub_100030AF8(&v126, "GNSSMotion");
      v98 = *a3;
      if (v97)
      {
        v99 = *(a3 + 8);
        v102[0] = *a3;
        v102[1] = v99;
        if (v99)
        {
          atomic_fetch_add_explicit((v99 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100772AC0(a1, a2, v102);
      }

      v100 = *(a3 + 8);
      v101[0] = v98;
      v101[1] = v100;
      if (v100)
      {
        atomic_fetch_add_explicit((v100 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1001458E0(a1, a2, v101);
    }

    CLConnection::getUserName(a2);
    if (a1 + 896 == sub_10045EF04(a1 + 888, v140))
    {
      v106[2] = _NSConcreteStackBlock;
      v106[3] = 3321888768;
      v106[4] = sub_10077174C;
      v106[5] = &unk_10246FC50;
      v106[6] = a1;
      if (SHIBYTE(v141) < 0)
      {
        sub_100007244(&v107, *v140, *&v140[8]);
      }

      else
      {
        v107 = *v140;
        v108 = v141;
      }

      CLConnection::setDefaultMessageHandler();
      if (SHIBYTE(v141) < 0)
      {
        sub_100007244(buf, *v140, *&v140[8]);
      }

      else
      {
        *buf = *v140;
        *&buf[16] = v141;
      }

      *&buf[24] = a2;
      sub_1007AD334((a1 + 888), buf, buf);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      CLConnection::start(a2);
      if (qword_1025D47A0 == -1)
      {
        goto LABEL_209;
      }

      goto LABEL_279;
    }

    sub_10192DACC();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/ClientManagement/CLClientManager_Unified.mm", 933, "handleNewConnectionWithFirstMsg");
  }

  __break(1u);
LABEL_279:
  sub_10192D4D0();
LABEL_209:
  v67 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v68 = SHIBYTE(v141);
    v69 = *v140;
    CLConnection::getName(a2);
    v70 = v140;
    if (v68 < 0)
    {
      v70 = v69;
    }

    if (v139 >= 0)
    {
      v71 = v138;
    }

    else
    {
      v71 = *v138;
    }

    *buf = 68289538;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = v70;
    *&buf[28] = 2082;
    *&buf[30] = v71;
    _os_log_impl(dword_100000000, v67, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CoreLocationAgent connected, User:%{public, location:escape_only}s, Connection:%{public, location:escape_only}s}", buf, 0x26u);
    if (v139 < 0)
    {
      operator delete(*v138);
    }
  }

  if (SHIBYTE(v108) < 0)
  {
    operator delete(v107);
  }

  if (SHIBYTE(v141) < 0)
  {
    operator delete(*v140);
  }

LABEL_109:
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  if (v128 < 0)
  {
    operator delete(__p[0]);
  }
}
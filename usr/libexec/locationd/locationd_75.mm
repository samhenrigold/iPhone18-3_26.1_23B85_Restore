void sub_10050F938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10050F958(uint64_t a1)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (sub_10124BBAC(*(a1 + 184), &v7, *(a1 + 248)) == 100)
  {
    v2 = v7;
    if (v7 == v8)
    {
      goto LABEL_6;
    }

    __p = 0;
    v5 = 0;
    v6 = 0;
    sub_10051212C(&__p, v7, v8, (v8 - v7) >> 5);
    v3 = 0;
    (*(*a1 + 152))(a1, &v3, &__p, 0, 0xFFFFFFFFLL, 0);
    *(a1 + 248) = *(v8 - 3);
    if (__p)
    {
      v5 = __p;
      operator delete(__p);
    }
  }

  v2 = v7;
LABEL_6:
  if (v2)
  {
    v8 = v2;
    operator delete(v2);
  }
}

void sub_10050FA34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10050FAE8(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 1)
  {
    return 0;
  }

  if (!*a2)
  {
    sub_10050F958(a1);
  }

  return 1;
}

uint64_t sub_10050FB28(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10050FBCC;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102656980 != -1)
  {
    dispatch_once(&qword_102656980, block);
  }

  if (byte_102656978)
  {
    return 1;
  }

  sub_10001A3E8(a1, a2);
  return sub_10001CF3C();
}

id sub_10050FBCC(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "vendor")];
  byte_102656978 = result;
  return result;
}

void *sub_10050FBFC(void *result, uint64_t a2, _DWORD *a3, _BYTE *a4)
{
  v4 = result;
  if (*a3 == 4)
  {
    v5 = *a4;
    if (*a4 != *(result + 93))
    {
      if (qword_1025D4200 != -1)
      {
        sub_1018AF84C();
      }

      v6 = v4 + 93;
      v7 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *v6;
        v11[0] = 67240448;
        v11[1] = v8;
        v12 = 1026;
        v13 = v5;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Activity mode from %{public}d to %{public}d", v11, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B04E8();
      }

      *v6 = v5;
      if (v5 == 1)
      {
        if (qword_1025D4200 != -1)
        {
          sub_1018AFA78();
        }

        v9 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11[0]) = 0;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "StandPlus, running stand minute estimator", v11, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018B06F4();
        }

        [*(v4[20] + 16) register:*(v4[20] + 8) forNotification:5 registrationInfo:0];
        sub_10050FEA4(v4 + 47, 0);
        operator new();
      }

      if (qword_1025D4200 != -1)
      {
        sub_1018AFA78();
      }

      v10 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11[0]) = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "StandPlus, stopping stand minute estimator", v11, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B0600();
      }

      [*(v4[20] + 16) unregister:*(v4[20] + 8) forNotification:5];
      return sub_10050FEA4(v4 + 47, 0);
    }
  }

  else if (!*a3)
  {
    *(result + 120) = *a4 & a4[1];
  }

  return result;
}

void *sub_10050FEA4(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_1000F8B58(v2 + 26);
    sub_1003FFD68(v2 + 20);
    sub_100102BC8(v2 + 14);
    v3 = v2[1];
    if (v3)
    {
      v2[2] = v3;
      operator delete(v3);
    }

    operator delete();
  }

  return result;
}

void sub_10050FF24(uint64_t result, uint64_t a2, _DWORD *a3, __int128 *a4)
{
  if (*a3 == 5)
  {
    v8 = *(result + 376);
    if (v8)
    {
      sub_1004A99B4(v8, a4);
    }
  }

  else if (*a3 == 2)
  {
    v4 = *a4;
    v5 = a4[1];
    v6 = a4[2];
    *(result + 356) = *(a4 + 44);
    *(result + 328) = v5;
    *(result + 344) = v6;
    *(result + 312) = v4;
    v7 = *(result + 376);
    if (v7)
    {
      sub_1004AA74C(v7, a4);
    }
  }
}

void sub_10050FF78(uint64_t a1, uint64_t *a2)
{
  if (objc_opt_class())
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018AF84C();
    }

    v4 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *a2;
      v6 = a2[1];
      v7 = *(a2 + 4);
      *buf = 134349568;
      v16 = v5;
      v17 = 2050;
      v18 = v6;
      v19 = 1026;
      v20 = v7;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "StandPlus,bucketStart,%{public}f,bucketEnd,%{public}f,count,%{public}d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B07E8();
    }

    if (*(a2 + 4) >= 1)
    {
      v8 = +[HKQuantitySample quantitySampleWithType:quantity:startDate:endDate:](HKQuantitySample, "quantitySampleWithType:quantity:startDate:endDate:", +[HKQuantityType quantityTypeForIdentifier:](HKQuantityType, "quantityTypeForIdentifier:", HKQuantityTypeIdentifierAppleStandTime), +[HKQuantity quantityWithUnit:doubleValue:](HKQuantity, "quantityWithUnit:doubleValue:", +[HKUnit secondUnit], *(a2 + 4) * 60.0), [NSDate dateWithTimeIntervalSinceReferenceDate:*a2], [NSDate dateWithTimeIntervalSinceReferenceDate:*(a2 + 1)]);
      v9 = *(a1 + 384);
      v14 = v8;
      v10 = [NSArray arrayWithObjects:&v14 count:1];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1005101B4;
      v11[3] = &unk_10245B7B0;
      v12 = *a2;
      v13 = a2[2];
      [v9 saveObjects:v10 withCompletion:v11];
    }
  }
}

void sub_1005101B4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018AF84C();
    }

    v4 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v9 = 134349056;
      v10 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "StandPlus successfully pushed to HKHealthStore, startBucket, %{public}f", &v9, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B0A1C(a1);
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018AF84C();
    }

    v7 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = a3;
      v11 = 2050;
      v12 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "HKHealthStore, StandPlus, saveObjects failed on, %{error}@, for startBucket, %{public}f", &v9, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B0908(a3, a1);
    }
  }
}

void sub_100510330(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v25 = 0;
  v26 = 0;
  sub_10124BBAC(*(a1 + 184), &__p, *a2);
  v4 = __p;
  if (__p == v25)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(v4 + 4);
      if (v7 == *(a2 + 16))
      {
        ++v5;
      }

      if (v7 == 2)
      {
        ++v6;
      }

      v4 += 4;
    }

    while (v4 != v25);
  }

  if (v5 | v6)
  {
    v8 = *(v25 - 3);
    if (v8 > *(a2 + 8))
    {
      if (qword_1025D4200 != -1)
      {
        sub_1018AFA78();
      }

      v9 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a2 + 8);
        *buf = 134349312;
        v38 = v8;
        v39 = 2050;
        v40 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "StandPlus,warning,time went backward,alreadyLogged,%{public}f,new,%{public}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B0B20(buf);
        v20 = *(a2 + 8);
        v27 = 134349312;
        v28 = v8;
        v29 = 2050;
        v30 = v20;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 16, "StandPlus,warning,time went backward,alreadyLogged,%{public}f,new,%{public}f", &v27, 22);
        v22 = v21;
        sub_100152C7C("Generic", 1, 0, 0, "virtual void CLSedentaryTimerNotifier::onStoreSedentaryAlarm(CLSedentaryAlarmData)", "%s\n", v21);
        if (v22 != buf)
        {
          free(v22);
        }
      }
    }

    if (qword_1025D4200 != -1)
    {
      sub_1018AFA78();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      v12 = *a2;
      v13 = *(a2 + 8);
      v14 = *(a2 + 16);
      *buf = 134350080;
      v38 = v12;
      v39 = 2050;
      v40 = v13;
      v41 = 1026;
      v42 = v14;
      v43 = 1026;
      v44 = v5;
      v45 = 1026;
      v46 = v6;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "StandPlus,warning,attempting to log bad alarm,startTime,%{public}f,firedTime,%{public}f,type,%{public}d,count,%{public}d,countReset,%{public}d", buf, 0x28u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B0B20(buf);
      v15 = *a2;
      v16 = *(a2 + 8);
      v17 = *(a2 + 16);
      v27 = 134350080;
      v28 = v15;
      v29 = 2050;
      v30 = v16;
      v31 = 1026;
      v32 = v17;
      v33 = 1026;
      v34 = v5;
      v35 = 1026;
      v36 = v6;
      LODWORD(v23) = 40;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 16, "StandPlus,warning,attempting to log bad alarm,startTime,%{public}f,firedTime,%{public}f,type,%{public}d,count,%{public}d,countReset,%{public}d", &v27, v23);
      v19 = v18;
      sub_100152C7C("Generic", 1, 0, 0, "virtual void CLSedentaryTimerNotifier::onStoreSedentaryAlarm(CLSedentaryAlarmData)", "%s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }

  else
  {
    sub_100510704(a1 + 200, a2);
  }

  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }
}

void sub_1005106D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100510704(uint64_t a1, double *a2)
{
  result = sub_1005131D0(*(a1 + 24), a2);
  if ((*(a1 + 41) & 1) == 0)
  {
    result = sub_100099160(*(a1 + 24) + 72);
    if (result)
    {
      *(a1 + 41) = 1;

      return sub_10050F380(a1);
    }
  }

  return result;
}

uint64_t sub_100510774(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = &off_10245BCE0;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

void sub_100510918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_100510948(uint64_t result, uint64_t a2)
{
  v9 = a2;
  if ((*(result + 108) & 1) == 0)
  {
    v4 = *(result + 88);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = result + 80;
    v6 = result + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != result + 88 && *(v6 + 32) <= a2)
    {
      while (*(v6 + 56))
      {
        *buf = *(*(v6 + 40) + 28);
        (*(*result + 112))(result, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_1018AFED0();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = (result + 8);
        if (*(result + 31) < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B0B64();
      }
    }
  }
}

uint64_t sub_100510AEC(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100109F14(a4);
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

uint64_t sub_100510CA4(uint64_t a1, uint64_t a2, int *a3, char *a4)
{
  v31 = a2;
  if (*(a1 + 108))
  {
    return 0;
  }

  v5 = a2;
  v7 = *(a1 + 88);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 32) >= a2)
      {
        v10 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < a2));
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 32) <= a2)
    {
      v30 = v10;
      v13 = *a3;
      v16 = *(v10 + 48);
      v15 = v10 + 48;
      v14 = v16;
      if (!v16)
      {
        goto LABEL_25;
      }

      v17 = v15;
      do
      {
        if (*(v14 + 28) >= v13)
        {
          v17 = v14;
        }

        v14 = *(v14 + 8 * (*(v14 + 28) < v13));
      }

      while (v14);
      if (v17 == v15 || v13 < *(v17 + 28))
      {
LABEL_25:
        v17 = v15;
      }

      v18 = *(a1 + 64);
      if (!v18)
      {
        goto LABEL_33;
      }

      v19 = a1 + 64;
      do
      {
        if (*(v18 + 32) >= v13)
        {
          v19 = v18;
        }

        v18 = *(v18 + 8 * (*(v18 + 32) < v13));
      }

      while (v18);
      if (v19 != a1 + 64 && v13 >= *(v19 + 32))
      {
        v29 = v19;
        v26 = *(v19 + 56);
        v27 = *a4;
        *buf = &v31;
        *(sub_100007FA0(v19 + 40, &v31, &unk_101C66300, buf) + 32) = v27;
        memset(buf, 0, sizeof(buf));
        if (v17 == v15)
        {
          if ((*(*a1 + 128))(a1, a3, buf))
          {
            sub_100513A10(buf);
          }

          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }
        }

        if (v26)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v20 = a1 + 56;
        v29 = a1 + 64;
        v21 = byte_1025D68E1;
        v28 = v13;
        *buf = &v28;
        *(sub_100024014(a1 + 56, &v28, &unk_101C66300, buf) + 80) = v21;
        v28 = *a3;
        *buf = &v28;
        v22 = sub_100024014(a1 + 56, &v28, &unk_101C66300, buf);
        v23 = v22[9];
        v22[8] = 0;
        v22[9] = 0;
        if (v23)
        {
          sub_100008080(v23);
        }

        v24 = *a4;
        v28 = *a3;
        *buf = &v28;
        v25 = sub_100024014(v20, &v28, &unk_101C66300, buf);
        *buf = &v31;
        *(sub_100007FA0((v25 + 5), &v31, &unk_101C66300, buf) + 32) = v24;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v17 == v15)
      {
        *buf = *a3;
        sub_1003C9410(v30 + 40, buf, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_1018AFED0();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    *&buf[12] = 1026;
    *&buf[14] = v5;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_1018B0C68();
    return 0;
  }

  return result;
}

void sub_100511068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100511090(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = a2;
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
      sub_1018AFED0();
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
      v19 = v3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_1018B0D74();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100511224(char *a1, int a2, int *a3)
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
              sub_10004E6E0((v15 + 40), &v25 + 1);
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
                sub_1018AFEE4();
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
                  sub_1018AFEE4();
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

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLSedentaryTimerNotifier_Type::Notification, CLSedentaryTimerNotifier_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLSedentaryTimerNotifier_Type::Notification, NotificationData_T = CLSedentaryTimerNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v24);
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

uint64_t sub_1005115C8(uint64_t a1, int *a2, void **a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  if (v8 != a3)
  {
    sub_100513B58(a3, *v8, v8[1], (v8[1] - *v8) >> 5);
  }

  return 1;
}

void sub_1005116EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100511704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  (*(*a1 + 152))(a1, a2, &__p, a3, a4, 0);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_100511774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100511790(uint64_t a1, int *a2, uint64_t a3, int a4, int a5)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = *a2;
    v9 = a1 + 64;
    do
    {
      if (*(v6 + 32) >= v8)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v8));
    }

    while (v6);
    if (v9 == v7 || v8 < *(v9 + 32))
    {
LABEL_9:
      v12 = v13;
      memset(v13, 0, 32);
      sub_100248B84(buf, a2, &v12);
      sub_10047D8C8(v7 - 8, buf);
    }

    if (a4)
    {
      sub_100512D64();
    }

    v10 = *(v9 + 72);
    *(v9 + 64) = 0;
    *(v9 + 72) = 0;
    if (v10)
    {
      sub_100008080(v10);
    }

    if (*(v9 + 56))
    {
      sub_1005127CC(a3);
    }
  }
}

void sub_100511C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_101865570(va);
  sub_101864718(v16 - 144);
  _Unwind_Resume(a1);
}

void sub_100511C68(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018AFED0();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v32 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B0F98(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018AFED0();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v32 = v5;
      v33 = 2048;
      v34[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B0E78(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      v8 = (a1 + 8);
      do
      {
        v9 = v7[5];
        if (v9 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_1018AFEE4();
            }

            v10 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v11 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v11 = *v8;
              }

              v12 = *(v7 + 8);
              v13 = *(v9 + 7);
              *buf = 136315650;
              v32 = v11;
              v33 = 1024;
              LODWORD(v34[0]) = v12;
              WORD2(v34[0]) = 1024;
              *(v34 + 6) = v13;
              _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_1018AFEE4();
              }

              v17 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v17 = *v8;
              }

              v18 = *(v7 + 8);
              v19 = *(v9 + 7);
              v25 = 136315650;
              v26 = v17;
              v27 = 1024;
              v28 = v18;
              v29 = 1024;
              v30 = v19;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 2, "%s; clients, id: %d, notification: %d", &v25, 24, v24);
              v21 = v20;
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLSedentaryTimerNotifier_Type::Notification, CLSedentaryTimerNotifier_Type::NotificationData>::listClients() [Notification_T = CLSedentaryTimerNotifier_Type::Notification, NotificationData_T = CLSedentaryTimerNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v20);
              if (v21 != buf)
              {
                free(v21);
              }
            }

            v14 = v9[1];
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
                v15 = v9[2];
                v16 = *v15 == v9;
                v9 = v15;
              }

              while (!v16);
            }

            v9 = v15;
          }

          while (v15 != v7 + 6);
        }

        v22 = v7[1];
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
            v23 = v7[2];
            v16 = *v23 == v7;
            v7 = v23;
          }

          while (!v16);
        }

        v7 = v23;
      }

      while (v23 != (a1 + 88));
    }
  }
}

void sub_10051202C(uint64_t a1)
{
  sub_1005139A0(a1);

  operator delete();
}

id sub_100512064(uint64_t a1, int a2, void *a3)
{
  result = sub_100512F3C(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

void sub_1005120E4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t *sub_10051212C(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1005121A8(result, a4);
  }

  return result;
}

void sub_10051218C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005121A8(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1005120E4(a1, a2);
  }

  sub_10028C64C();
}

double sub_10051226C(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_100512298(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_10051236C(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_1005123BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005124A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10051258C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100512640(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10189B1B8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100512658(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_100512688(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005126C8(uint64_t a1, double **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = (*a2)[1];
  v5 = *(a1 + 136);
  if (v4 <= v5)
  {
    v4 = *(a1 + 136);
  }

  v6 = v3 + 3;
  if (v3 + 3 == v2)
  {
    v7 = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = *v3;
    do
    {
      v9 = *v6;
      v10 = v6[1];
      v6 += 3;
      v7 = (v7 + ((v9 - v8) / v4));
      if (v10 <= v5)
      {
        v4 = *(a1 + 136);
      }

      else
      {
        v4 = v10;
      }

      v8 = v9;
    }

    while (v6 != v2);
  }

  if (v4 != 1.79769313e308)
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018AF84C();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning No expiration rule was added so the number of records will be unbounded.", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B10A8();
    }
  }

  return v7;
}

void sub_1005128B0(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v39 = v9;
        v10 = sub_100512F3C(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v38 = v16;
              sub_100512C6C(a1, &v38, &v39, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v39 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v38 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_1018AFEE4();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v45 = v19;
                v46 = 1026;
                v47 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_1018AFEE4();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v40 = 136446466;
                v41 = v33;
                v42 = 1026;
                v43 = v34;
                LODWORD(v37) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 17, "%{public}s; unknown client %{public}d", &v40, v37);
                v36 = v35;
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLSedentaryTimerNotifier_Type::Notification, CLSedentaryTimerNotifier_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLSedentaryTimerNotifier_Type::Notification, NotificationData_T = CLSedentaryTimerNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v36 != buf)
                {
                  free(v36);
                }
              }
            }
          }

          while (v11 != (v39 + 48));
        }
      }
    }
  }
}

_BYTE *sub_100512C6C(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_100512F3C(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13, &unk_101C66300, &v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

uint64_t sub_100512DD0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *a1 = off_10245BC50;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0;
  sub_10051212C((a1 + 24), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 5);
  return a1;
}

void sub_100512E68(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10245BC50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100512EBC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

uint64_t sub_100512ED8(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

id sub_100512F3C(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_100512F9C(a1);
}

id sub_100512F9C(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018B1194();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C7CF4ELL & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B11A8();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018B1194();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C7CF4ELL & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B12B0();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

uint64_t sub_1005131D0(uint64_t a1, double *a2)
{
  v5 = a1 + 112;
  v4 = *(a1 + 112);
  v6 = a1 + 72;
  *&v22[1] = a1 + 112;
  (*(v4 + 16))(a1 + 112);
  v23 = 256;
  v22[0] = *a2;
  if (sub_10009CB48(v6, v22))
  {
    if (sub_100099160(v6))
    {
      (*(*a1 + 80))(a1, a2, 0);
    }

    else if ((*(a1 + 128) & 1) == 0)
    {
      v12 = *(a1 + 216);
      if (v12 > *(a1 + 256))
      {
        ++*(a1 + 208);
        *(a1 + 216) = v12 - 1;
        sub_10051373C(a1 + 176, 1);
        if (qword_1025D4200 != -1)
        {
          sub_1018AFA78();
        }

        v13 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Maximum number of entries exceeded, throwing out oldest entry.", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018B0B20(buf);
          v21[0] = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 2, "Maximum number of entries exceeded, throwing out oldest entry.", v21, 2);
          v19 = v18;
          sub_100152C7C("Generic", 1, 0, 2, "void CLActivityRecorderDb<CLSedentaryAlarmData>::addSuspectRecord(const T &) [T = CLSedentaryAlarmData, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v18);
          if (v19 != buf)
          {
            free(v19);
          }
        }
      }

      if (qword_1025D4270 != -1)
      {
        sub_1018B13B8();
      }

      v14 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Buffer was added to since db was inaccesible.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B13E0(buf);
        v21[0] = 0;
        LODWORD(v20) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 2, "Buffer was added to since db was inaccesible.", v21, v20);
        v17 = v16;
        sub_100152C7C("Generic", 1, 0, 2, "void CLActivityRecorderDb<CLSedentaryAlarmData>::addSuspectRecord(const T &) [T = CLSedentaryAlarmData, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v16);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      v7 = sub_1005136AC((a1 + 176), a2);
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018AFA78();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      v9 = (a1 + 88);
      if (*(a1 + 111) < 0)
      {
        v9 = *v9;
      }

      *buf = 68289538;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 1026;
      v29 = v22[0];
      v30 = 2082;
      v31 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CL database error, record contains invalid time, invalid time:%{public}d, name:%{public, location:escape_only}s}", buf, 0x22u);
      if (qword_1025D4200 != -1)
      {
        sub_1018AFA78();
      }
    }

    v10 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      v11 = (a1 + 88);
      if (*(a1 + 111) < 0)
      {
        v11 = *v11;
      }

      *buf = 68289538;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 1026;
      v29 = v22[0];
      v30 = 2082;
      v31 = v11;
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CL database error, record contains invalid time", "{msg%{public}.0s:CL database error, record contains invalid time, invalid time:%{public}d, name:%{public, location:escape_only}s}", buf, 0x22u);
    }
  }

  return (*(*v5 + 24))(v5, v7);
}

void sub_100513678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

__n128 sub_1005136AC(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 16 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1005137CC(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F));
  result = *a2;
  v10 = *(a2 + 16);
  *v8 = *a2;
  v8[1] = v10;
  ++a1[5];
  return result;
}

uint64_t sub_10051373C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x80)
  {
    a2 = 1;
  }

  if (v2 < 0x100)
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
    *(a1 + 32) -= 128;
  }

  return v4 ^ 1u;
}

void sub_1005137CC(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
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
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_100513954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005139A0(uint64_t a1)
{
  *a1 = &off_10245BCE0;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_100513AF4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_100513B58(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1005121A8(v6, v10);
    }

    sub_10028C64C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t sub_100513C84()
{
  sub_10000EC00(qword_1026568B8, "VO2MaxPowerBudgetEstimatorLastExtendedBudgetAllotmentReason");
  __cxa_atexit(&std::string::~string, qword_1026568B8, dword_100000000);
  qword_1026568D0 = off_10245B8D8;
  qword_1026568E8 = &qword_1026568D0;
  __cxa_atexit(sub_1003EE78C, &qword_1026568D0, dword_100000000);
  qword_1026568F0 = off_10245B958;
  qword_102656908 = &qword_1026568F0;
  __cxa_atexit(sub_1003EE78C, &qword_1026568F0, dword_100000000);
  qword_102656910 = off_10245B9D8;
  qword_102656928 = &qword_102656910;
  __cxa_atexit(sub_1003EE790, &qword_102656910, dword_100000000);
  qword_102656930 = off_10245BA58;
  qword_102656948 = &qword_102656930;

  return __cxa_atexit(sub_1003EE790, &qword_102656930, dword_100000000);
}

void sub_10051513C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100008080(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_10051515C(const char *a1, float *a2)
{
  sub_10001CAF4(&v7);
  v4 = sub_1004FBE40(v7, a1, a2);
  if (*v8)
  {
    sub_100008080(*v8);
  }

  if (v4)
  {
    if (qword_1025D4330 != -1)
    {
      sub_1018B1424();
    }

    v5 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_INFO))
    {
      v6 = *a2;
      v7 = 68289538;
      *v8 = 2082;
      *&v8[2] = "";
      v9 = 2082;
      v10 = a1;
      v11 = 1026;
      v12 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Overriding behavior feature, key:%{public, location:escape_only}s, value:%{public}d}", &v7, 0x22u);
    }
  }
}

void sub_100515280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005152A0(const char *a1, int *a2)
{
  sub_10001CAF4(&v7);
  v4 = sub_10005BBE4(v7, a1, a2);
  if (*v8)
  {
    sub_100008080(*v8);
  }

  if (v4)
  {
    if (qword_1025D4330 != -1)
    {
      sub_1018B1424();
    }

    v5 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_INFO))
    {
      v6 = *a2;
      v7 = 68289538;
      *v8 = 2082;
      *&v8[2] = "";
      v9 = 2082;
      v10 = a1;
      v11 = 1026;
      v12 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Overriding behavior feature, key:%{public, location:escape_only}s, value:%{public}d}", &v7, 0x22u);
    }
  }
}

void sub_1005153C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005153E0(const char *a1, uint64_t *a2)
{
  sub_10001CAF4(&v7);
  v4 = sub_1004FBB50(v7, a1, a2, 0xFFFFFFFFLL);
  if (*v8)
  {
    sub_100008080(*v8);
  }

  if (v4)
  {
    if (qword_1025D4330 != -1)
    {
      sub_1018B1424();
    }

    v5 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_INFO))
    {
      v6 = *a2;
      v7 = 68289538;
      *v8 = 2082;
      *&v8[2] = "";
      v9 = 2082;
      v10 = a1;
      v11 = 1026;
      v12 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Overriding behavior feature, key:%{public, location:escape_only}s, value:%{public}d}", &v7, 0x22u);
    }
  }
}

void sub_100515500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_100515940(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = *(a2 + 16);
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  *(a1 + 52) = *(a2 + 52);
  result = *(a2 + 68);
  *(a1 + 68) = result;
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 90) = *(a2 + 90);
  return result;
}

double sub_1005159E8(uint64_t a1)
{
  *a1 = xmmword_101C7CFD0;
  *(a1 + 16) = xmmword_101C7CFF0;
  *(a1 + 32) = 0x4100000041A00000;
  *(a1 + 40) = 0xA00000018;
  *(a1 + 48) = xmmword_101C7D000;
  *(a1 + 64) = 1110704128;
  *&result = 0x200000008;
  *(a1 + 68) = xmmword_101C7D010;
  *(a1 + 84) = 0;
  *(a1 + 87) = 0;
  return result;
}

unint64_t sub_100515A3C(unsigned __int16 *a1, float a2)
{
  v3 = 0;
  __p = 0;
  v41 = 0;
  v42 = 0;
  v4 = vcvts_n_f32_u32(a1[2], 8uLL);
  v5 = vcvts_n_f32_u32(a1[3], 8uLL);
  v6 = 10;
  v7 = vcvts_n_f32_u32(a1[1], 8uLL);
  do
  {
    v8 = a1[v6];
    if (v8 != 0x8000 && v4 <= 60.0)
    {
      a2 = vcvts_n_f32_s32(v8, 6uLL);
      v10 = a2 + (v7 * 1000.0);
      if (v3 >= v42)
      {
        v11 = (v3 - __p) >> 3;
        if ((v11 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v12 = (v42 - __p) >> 2;
        if (v12 <= v11 + 1)
        {
          v12 = v11 + 1;
        }

        if (v42 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          sub_1000B9708(&__p, v13);
        }

        v14 = (8 * v11);
        *v14 = v4;
        v14[1] = v10;
        v3 = (8 * v11 + 8);
        memcpy((8 * v11 - (v41 - __p)), __p, v41 - __p);
        v15 = __p;
        __p = (8 * v11 - (v41 - __p));
        v41 = v3;
        v42 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v3 = v4;
        v3[1] = v10;
        v3 += 2;
      }

      v41 = v3;
    }

    ++v6;
    v4 = v5 + v4;
  }

  while (v6 != 110);
  v16 = __p;
  if (__p == v3)
  {
    v35 = 14;
    if (!__p)
    {
      return v35;
    }

    goto LABEL_48;
  }

  __src = 0;
  v38 = 0;
  v39 = 0;
  v17 = v3 - 2;
  if (__p == v3 - 2)
  {
    v34 = 0.0;
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = v16 + 2;
      v20 = v41;
      if (v41 != v16 + 2)
      {
        v21 = v16 + 2;
        do
        {
          a2 = v21[1] - v16[1];
          v22 = a2 / (*v21 - *v16);
          if (v18 >= v39)
          {
            v23 = __src;
            v24 = v18 - __src;
            v25 = (v18 - __src) >> 2;
            v26 = v25 + 1;
            if ((v25 + 1) >> 62)
            {
              sub_10028C64C();
            }

            v27 = v39 - __src;
            if ((v39 - __src) >> 1 > v26)
            {
              v26 = v27 >> 1;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v28 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v26;
            }

            if (v28)
            {
              sub_1000B85D0(&__src, v28);
            }

            v29 = v25;
            v30 = (4 * v25);
            v31 = &v30[-v29];
            *v30 = v22;
            v18 = v30 + 1;
            memcpy(v31, v23, v24);
            v32 = __src;
            __src = v31;
            v38 = v18;
            v39 = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            *v18++ = v22;
          }

          v38 = v18;
          v21 += 2;
        }

        while (v21 != v20);
      }

      v16 += 2;
    }

    while (v19 != v17);
    v33 = __src;
    if (__src == v18)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = sub_100515D80(__src, v18, a2);
      v33 = __src;
    }

    if (v33)
    {
      v38 = v33;
      operator delete(v33);
    }
  }

  v35 = (LODWORD(v34) << 32) | 0xE;
  v16 = __p;
  if (__p)
  {
LABEL_48:
    v41 = v16;
    operator delete(v16);
  }

  return v35;
}

void sub_100515D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

float sub_100515D80(float *a1, float *a2, float a3)
{
  v3 = a2 - a1;
  if (a2 - a1 <= 3)
  {
    sub_1018B144C();
  }

  v4 = a1;
  v5 = (v3 >> 1) & 0x3FFFFFFFFFFFFFFCLL;
  v6 = (a1 + v5);
  if ((a1 + v5) != a2)
  {
    sub_100515E40(a1, (a1 + v5), a2, a3);
  }

  if ((v3 & 4) != 0)
  {
    return *v6;
  }

  if (v5)
  {
    v7 = v4 + 1;
    if (v4 + 1 != v6)
    {
      v8 = *v4;
      v9 = v4 + 1;
      do
      {
        v10 = *v9++;
        v11 = v10;
        if (v8 < v10)
        {
          v8 = v11;
          v4 = v7;
        }

        v7 = v9;
      }

      while (v9 != v6);
    }
  }

  return *v4 + ((*v6 - *v4) * 0.5);
}

void sub_100515E40(float *result, float *a2, float *a3, float a4)
{
  while (a3 != a2)
  {
    v4 = a3 - result;
    if (v4 < 2)
    {
      break;
    }

    if (v4 == 3)
    {
      v37 = result[1];
      v38 = *(a3 - 1);
      if (v37 < v38)
      {
        v39 = *(result + 1);
      }

      else
      {
        v39 = *(a3 - 1);
      }

      if (v37 < v38)
      {
        v37 = *(a3 - 1);
      }

      *(a3 - 1) = v37;
      *(result + 1) = v39;
      v40 = *(a3 - 1);
      if (v40 < *result)
      {
        v41 = *(a3 - 1);
      }

      else
      {
        v41 = *result;
      }

      if (v40 < *result)
      {
        v40 = *result;
      }

      *(a3 - 1) = v40;
      v42 = result[1];
      if (v41 < v42)
      {
        v41 = result[1];
      }

      else
      {
        *result = v42;
      }

      result[1] = v41;
      return;
    }

    if (v4 == 2)
    {
      v43 = *(a3 - 1);
      v44 = *result;
      if (v43 < *result)
      {
        *result = v43;
        *(a3 - 1) = v44;
      }

      return;
    }

    if (v4 <= 7)
    {
      sub_10051610C(result, a3, a4);
      return;
    }

    v5 = &result[(a3 - result) >> 3];
    v6 = a3 - 1;
    v7 = *(a3 - 1);
    v8 = *v5;
    if (*v5 < v7)
    {
      v9 = *v5;
    }

    else
    {
      v9 = *(a3 - 1);
    }

    if (*v5 < v7)
    {
      v10 = *(a3 - 1);
    }

    else
    {
      v10 = *v5;
    }

    *v6 = v10;
    *v5 = v9;
    v11 = *v6;
    v12 = *result;
    if (*v6 < *result)
    {
      v13 = *v6;
    }

    else
    {
      v13 = *result;
    }

    if (*v6 < *result)
    {
      v14 = *result;
    }

    else
    {
      v14 = *v6;
    }

    *v6 = v14;
    v15 = *v5;
    v16 = *v5;
    if (v13 >= *v5)
    {
      *result = v15;
      v16 = v13;
    }

    v17 = v11 >= v12;
    if (v13 >= v15)
    {
      v17 = 1;
    }

    *v5 = v16;
    if (v8 >= v7)
    {
      v17 = 1;
    }

    a4 = *result;
    if (*result >= v16)
    {
      v18 = a3 - 1;
      while (--v18 != result)
      {
        if (*v18 < v16)
        {
          *result = *v18;
          *v18 = a4;
          if (v17)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          goto LABEL_33;
        }
      }

      v28 = result + 1;
      if (a4 >= *v6)
      {
        while (v28 != v6)
        {
          v29 = *v28;
          if (a4 < *v28)
          {
            *v28++ = *v6;
            *v6 = v29;
            goto LABEL_65;
          }

          ++v28;
        }

        return;
      }

LABEL_65:
      if (v28 == v6)
      {
        return;
      }

      while (1)
      {
        v32 = *result;
        do
        {
          v33 = *v28++;
          a4 = v33;
        }

        while (v32 >= v33);
        v34 = v28 - 1;
        do
        {
          v35 = *--v6;
          v36 = v35;
        }

        while (v32 < v35);
        if (v34 >= v6)
        {
          break;
        }

        *v34 = v36;
        *v6 = a4;
      }

      result = v28 - 1;
      if (v34 > a2)
      {
        return;
      }
    }

    else
    {
      v18 = a3 - 1;
LABEL_33:
      v19 = result + 1;
      if (result + 1 >= v18)
      {
        v23 = result + 1;
      }

      else
      {
        v20 = result + 1;
        while (1)
        {
          v21 = *v5;
          do
          {
            v22 = *v20++;
            a4 = v22;
          }

          while (v22 < v21);
          v23 = v20 - 1;
          do
          {
            v24 = *--v18;
            v25 = v24;
          }

          while (v24 >= v21);
          if (v23 >= v18)
          {
            break;
          }

          *v23 = v25;
          *v18 = a4;
          ++v17;
          if (v23 == v5)
          {
            v5 = v18;
          }
        }
      }

      if (v23 != v5)
      {
        a4 = *v5;
        v26 = *v23;
        if (*v5 < *v23)
        {
          *v23 = a4;
          *v5 = v26;
          ++v17;
        }
      }

      if (v23 == a2)
      {
        return;
      }

      if (!v17)
      {
        if (v23 <= a2)
        {
          v30 = v23 + 1;
          while (v30 != a3)
          {
            v31 = *(v30 - 1);
            a4 = *v30++;
            if (a4 < v31)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v23)
          {
            v27 = *(v19 - 1);
            a4 = *v19++;
            if (a4 < v27)
            {
              goto LABEL_49;
            }
          }
        }

        return;
      }

LABEL_49:
      if (v23 <= a2)
      {
        result = v23 + 1;
      }

      else
      {
        a3 = v23;
      }
    }
  }
}

float sub_10051610C(float *a1, float *a2, float result)
{
  while (a1 != a2 - 1)
  {
    v3 = a1++;
    if (v3 != a2 && a1 != a2)
    {
      result = *v3;
      v4 = a1;
      v5 = v3;
      v6 = a1;
      do
      {
        v7 = *v6++;
        v8 = v7;
        if (v7 < result)
        {
          result = v8;
          v5 = v4;
        }

        v4 = v6;
      }

      while (v6 != a2);
      if (v5 != v3)
      {
        result = *v3;
        *v3 = *v5;
        *v5 = result;
      }
    }
  }

  return result;
}

uint64_t sub_100516180(uint64_t a1, uint64_t a2)
{
  sub_10000EC00(__p, "");
  sub_100516338(a1, "CLMotionStateRecorderDb", a2, __p, 1, 4.0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_10245BD98;
  *(a1 + 72) = off_10245BE48;
  sub_100DD42E4((a1 + 480), 0, 0);
  sub_100DD42E4((a1 + 496), 0, 0);
  sub_100DD42E4((a1 + 512), 0, 0);
  sub_100DD42E4((a1 + 528), 0, 0);
  sub_100DD42E4((a1 + 544), 0, 0);
  sub_100DD42E4((a1 + 560), 0, 0);
  sub_100DD42E4((a1 + 576), 0, 0);
  sub_100DD42E4((a1 + 592), 0, 0);
  sub_100DD42E4((a1 + 608), 0, 0);
  sub_100DD42E4((a1 + 624), 0, 0);
  sub_100DD42E4((a1 + 640), 0, 0);
  *(a1 + 656) = 0u;
  (*(*a1 + 112))(a1);
  return a1;
}

void sub_10051630C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100516338(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v6 = a5;
  v8 = a3;
  *(a1 + 8) = 0u;
  v12 = (a1 + 8);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = off_102456270;
  sub_1003FFA38((a1 + 8));
  *v12 = &off_1024562B8;
  *a1 = off_10245BF28;
  *(a1 + 72) = off_10245BFD0;
  sub_101052EEC(a1 + 72, a2, v8, a1, a6, a4, v6, 0);
  *a1 = off_10245BF28;
  *(a1 + 72) = off_10245BFD0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 384) = 12000;
  *(a1 + 392) = off_102456270;
  sub_1003FFA38((a1 + 400));
  *(a1 + 400) = &off_1024562B8;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  v13 = *(a1 + 112);
  v17 = a1 + 112;
  (*(v13 + 16))(a1 + 112);
  v18 = 256;
  if ((v8 & 1) == 0)
  {
    if (*(a4 + 23) < 0)
    {
      sub_100007244(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v16 = *(a4 + 16);
    }

    sub_101053788(a1 + 72, __p);
  }

  *(a1 + 232) = 0xBFF0000000000000;
  (*(*(a1 + 112) + 24))(a1 + 112);
  return a1;
}

void sub_100516710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1017EC98C(&a19);
  *a11 = v29;
  sub_1003FFCFC(v30);
  sub_10051B848(v28);
  sub_1010532A4(v27);
  *v25 = a12;
  sub_1003FFCFC(v26);
  _Unwind_Resume(a1);
}

void *sub_1005167B8(void *a1)
{
  *a1 = off_10245BF28;
  v2 = a1 + 9;
  a1[9] = off_10245BFD0;
  sub_10051B984(a1, 0, 0);
  a1[49] = off_102456270;
  sub_1003FFCFC(a1 + 50);
  sub_10051B848(a1 + 22);
  sub_1010532A4(v2);
  *a1 = off_102456270;
  sub_1003FFCFC(a1 + 1);
  return a1;
}

void *sub_100516888(void *a1)
{
  *a1 = off_10245BD98;
  a1[9] = off_10245BE48;
  sub_100516908(a1, 0, 0);

  return sub_1005167B8(a1);
}

void sub_100516908(uint64_t a1, void *a2, const void *a3)
{
  if ((a2 != 0) != (a3 != 0))
  {
    sub_1018B14E4();
  }

  *(a1 + 656) = a2;
  v6 = *(a1 + 664);
  if (v6)
  {
    _Block_release(v6);
  }

  if (a3)
  {
    *(a1 + 664) = _Block_copy(a3);
  }
}

void sub_10051698C(void *a1)
{
  sub_100516888(a1);

  operator delete();
}

void sub_1005169C4(uint64_t a1)
{
  sub_100516888((a1 - 72));

  operator delete();
}

uint64_t sub_100516A00(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v5 = a1 + 112;
  v4 = *(a1 + 112);
  v20 = a1 + 112;
  (*(v4 + 16))(a1 + 112);
  v21 = 256;
  if (*(*(a2 + 8) - 16) != 1.79769313e308)
  {
    if (qword_1025D4250 != -1)
    {
      sub_1018B16B4();
    }

    v13 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "Programmer error, we expect an expiration record!", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B16C8(buf);
      v19 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4258, 17, "Programmer error, we expect an expiration record!", &v19, 2);
      v15 = v14;
      sub_100152C7C("Generic", 1, 0, 0, "virtual long CLMotionStateRecorderDb::aggregateRecords(const CLAggregationRules &)", "%s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    goto LABEL_19;
  }

  if (!sub_100099160(v3 + 72))
  {
    goto LABEL_19;
  }

  sub_100144CA0((v3 + 512), buf);
  v6 = sub_100008880(*buf);
  Current = CFAbsoluteTimeGetCurrent();
  v8 = sub_1001A3BD4(v6, 1, Current - *(*(a2 + 8) - 24));
  v9 = v8;
  v10 = *(v3 + 80);
  if (v8)
  {
    v11 = sub_100008880(*buf);
    sub_1001A3DEC(v10, v11);
    v12 = sub_100516CEC(v3);
    *(v3 + 132) = v12;
    v3 = v12;
  }

  else
  {
    v16 = *(v10 + 88) <= 0 ? 0x7FFFFFFFFFFFFFFFLL : *(v10 + 88);
    sub_1001B16EC(*(v3 + 80), v16);
  }

  v17 = *buf;
  *buf = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  if (!v9)
  {
LABEL_19:
    v3 = -1;
  }

  (*(*v5 + 24))(v5);
  return v3;
}

void sub_100516CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100516CEC(uint64_t a1)
{
  if (!sub_100099160(a1 + 72))
  {
    return 0xFFFFFFFFLL;
  }

  sub_100144CA0((a1 + 480), &v8);
  v3 = sub_100008880(v8);
  v4 = sqlite3_step(v3);
  if (v4 == 100)
  {
    v5 = sub_100008880(v8);
    v1 = sqlite3_column_int(v5, 0);
  }

  v6 = v8;
  v8 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (v4 != 100)
  {
    return 0xFFFFFFFFLL;
  }

  return v1;
}

void sub_100516D98(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_100516DE0(void *a1, void *a2, double a3, double a4)
{
  v8 = a1[14];
  v7 = a1 + 14;
  v9 = (v7 - 5);
  v95 = v7;
  (*(v8 + 16))();
  v97 = 256;
  if (!sub_100099160(v9))
  {
    v41 = a2;
    v39 = *a2;
    v40 = v41[1];
LABEL_40:
    if (v97)
    {
      pthread_mutex_unlock(v96);
    }

    else
    {
      (*(*v95 + 24))(v95);
    }

    return 0xCCCCCCCCCCCCCCCDLL * ((v40 - v39) >> 5);
  }

  sub_100144CA0(a1 + 80, &v94);
  v79 = a2;
  v10 = sub_100008880(v94);
  if (sub_1001A3BD4(v10, 1, a3))
  {
    while (!sub_10051749C(&v94, v81))
    {
      v11 = v82;
      v12 = v83;
      v13 = v84;
      v14 = v85;
      v15 = v86;
      v16 = v87;
      v17 = v88;
      v18 = v89;
      v19 = v92;
      v20 = v93;
      v21 = v79[1];
      v22 = v79[2];
      if (v21 >= v22)
      {
        v28 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - *v79) >> 5);
        v29 = v28 + 1;
        if (v28 + 1 > 0x199999999999999)
        {
          sub_10028C64C();
        }

        v30 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - *v79) >> 5);
        if (2 * v30 > v29)
        {
          v29 = 2 * v30;
        }

        if (v30 >= 0xCCCCCCCCCCCCCCLL)
        {
          v31 = 0x199999999999999;
        }

        else
        {
          v31 = v29;
        }

        if (v31)
        {
          sub_10051A070(v79, v31);
        }

        v32 = 160 * v28;
        *v32 = v90;
        *(v32 + 8) = a3;
        *(v32 + 24) = v11;
        *(v32 + 28) = v12;
        *(v32 + 29) = v13;
        *(v32 + 30) = v14;
        *(v32 + 31) = v15;
        *(v32 + 32) = v16;
        *(v32 + 33) = v17;
        *(v32 + 35) = v18;
        *(v32 + 36) = v103;
        *(v32 + 52) = v104;
        *(v32 + 60) = v19;
        *(v32 + 62) = v20;
        v33 = v101;
        v34 = *v102;
        *(v32 + 88) = *&v102[9];
        *(v32 + 79) = v34;
        *(v32 + 63) = v33;
        *(v32 + 104) = 0;
        v35 = v99;
        *(v32 + 105) = v98;
        *(v32 + 121) = v35;
        *(v32 + 137) = *v100;
        *(v32 + 152) = *&v100[15];
        v26 = 160 * v28 + 160;
        v27 = v79;
        v36 = v79[1] - *v79;
        v37 = (160 * v28 - v36);
        memcpy(v37, *v79, v36);
        v38 = *v79;
        *v79 = v37;
        v79[1] = v26;
        v79[2] = 0;
        if (v38)
        {
          operator delete(v38);
        }
      }

      else
      {
        *v21 = v90;
        *(v21 + 8) = a3;
        *(v21 + 24) = v11;
        *(v21 + 28) = v12;
        *(v21 + 29) = v13;
        *(v21 + 30) = v14;
        *(v21 + 31) = v15;
        *(v21 + 32) = v16;
        *(v21 + 33) = v17;
        *(v21 + 35) = v18;
        *(v21 + 36) = v103;
        *(v21 + 52) = v104;
        *(v21 + 60) = v19;
        *(v21 + 62) = v20;
        v23 = v101;
        v24 = *v102;
        *(v21 + 88) = *&v102[9];
        *(v21 + 79) = v24;
        *(v21 + 63) = v23;
        *(v21 + 104) = 0;
        v25 = v99;
        *(v21 + 105) = v98;
        *(v21 + 121) = v25;
        *(v21 + 137) = *v100;
        v26 = v21 + 160;
        *(v21 + 152) = *&v100[15];
        v27 = v79;
      }

      v27[1] = v26;
    }
  }

  sub_100144CA0(a1 + 76, &v80);
  v42 = sub_100008880(v80);
  v43 = v79;
  if (sub_1001A3BD4(v42, 1, a3))
  {
    v44 = sub_100008880(v80);
    if (sub_1001A3BD4(v44, 2, a4))
    {
      while (!sub_10051749C(&v80, v81))
      {
        v45 = v91;
        v46 = v82;
        v47 = v83;
        v48 = v84;
        v49 = v85;
        v50 = v86;
        v51 = v87;
        v52 = v88;
        v53 = v89;
        v54 = v92;
        v55 = v93;
        v56 = v79;
        v57 = v79[1];
        v58 = v79[2];
        if (v57 >= v58)
        {
          v63 = 0xCCCCCCCCCCCCCCCDLL * ((v57 - *v79) >> 5);
          v64 = v63 + 1;
          if (v63 + 1 > 0x199999999999999)
          {
            sub_10028C64C();
          }

          v65 = 0xCCCCCCCCCCCCCCCDLL * ((v58 - *v79) >> 5);
          if (2 * v65 > v64)
          {
            v64 = 2 * v65;
          }

          if (v65 >= 0xCCCCCCCCCCCCCCLL)
          {
            v66 = 0x199999999999999;
          }

          else
          {
            v66 = v64;
          }

          if (v66)
          {
            sub_10051A070(v79, v66);
          }

          v67 = 160 * v63;
          *v67 = v90;
          *(v67 + 8) = v45;
          *(v67 + 24) = v46;
          *(v67 + 28) = v47;
          *(v67 + 29) = v48;
          *(v67 + 30) = v49;
          *(v67 + 31) = v50;
          *(v67 + 32) = v51;
          *(v67 + 33) = v52;
          *(v67 + 35) = v53;
          *(v67 + 36) = v103;
          *(v67 + 52) = v104;
          *(v67 + 60) = v54;
          *(v67 + 62) = v55;
          v68 = v101;
          v69 = *v102;
          *(v67 + 88) = *&v102[9];
          *(v67 + 79) = v69;
          *(v67 + 63) = v68;
          *(v67 + 104) = 0;
          v70 = v99;
          *(v67 + 105) = v98;
          *(v67 + 121) = v70;
          *(v67 + 137) = *v100;
          *(v67 + 152) = *&v100[15];
          v62 = 160 * v63 + 160;
          v71 = v79[1] - *v79;
          v72 = (160 * v63 - v71);
          memcpy(v72, *v79, v71);
          v73 = *v79;
          *v79 = v72;
          v79[1] = v62;
          v79[2] = 0;
          v56 = v79;
          if (v73)
          {
            operator delete(v73);
          }
        }

        else
        {
          *v57 = v90;
          *(v57 + 8) = v45;
          *(v57 + 24) = v46;
          *(v57 + 28) = v47;
          *(v57 + 29) = v48;
          *(v57 + 30) = v49;
          *(v57 + 31) = v50;
          *(v57 + 32) = v51;
          *(v57 + 33) = v52;
          *(v57 + 35) = v53;
          *(v57 + 36) = v103;
          *(v57 + 52) = v104;
          *(v57 + 60) = v54;
          *(v57 + 62) = v55;
          v59 = v101;
          v60 = *v102;
          *(v57 + 88) = *&v102[9];
          *(v57 + 79) = v60;
          *(v57 + 63) = v59;
          *(v57 + 104) = 0;
          v61 = v99;
          *(v57 + 105) = v98;
          *(v57 + 121) = v61;
          *(v57 + 137) = *v100;
          v62 = v57 + 160;
          *(v57 + 152) = *&v100[15];
        }

        v56[1] = v62;
      }

      v43 = v79;
    }
  }

  v74 = v80;
  v80 = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  v75 = v94;
  v94 = 0;
  if (v75)
  {
    (*(*v75 + 8))(v75);
  }

  v76 = v43;
  v39 = *v43;
  v40 = v76[1];
  if ((v97 & 0x100) != 0)
  {
    goto LABEL_40;
  }

  return 0xCCCCCCCCCCCCCCCDLL * ((v40 - v39) >> 5);
}

void sub_1005173F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if (a18)
  {
    (*(*a18 + 8))(a18, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10051749C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100008880(*a1);
  v5 = sqlite3_step(v4);
  if (v5 == 101)
  {
    return 1;
  }

  if (v5 != 100)
  {
    return 2;
  }

  v6 = sub_100008880(*a1);
  *a2 = sqlite3_column_int(v6, 0);
  v7 = sub_100008880(*a1);
  *(a2 + 24) = sqlite3_column_double(v7, 1);
  v8 = sub_100008880(*a1);
  *(a2 + 16) = sqlite3_column_double(v8, 2);
  v9 = sub_100008880(*a1);
  *(a2 + 4) = sqlite3_column_int(v9, 3);
  v10 = sub_100008880(*a1);
  *(a2 + 8) = sqlite3_column_int(v10, 4);
  v11 = sub_100008880(*a1);
  *(a2 + 9) = sqlite3_column_int(v11, 5);
  v12 = sub_100008880(*a1);
  *(a2 + 10) = sqlite3_column_int(v12, 6);
  v13 = sub_100008880(*a1);
  *(a2 + 11) = sqlite3_column_int(v13, 7);
  v14 = sub_100008880(*a1);
  *(a2 + 12) = sqlite3_column_int(v14, 8) != 0;
  v15 = sub_100008880(*a1);
  *(a2 + 13) = sqlite3_column_int(v15, 9) != 0;
  v16 = sub_100008880(*a1);
  *(a2 + 14) = sqlite3_column_int(v16, 10);
  v17 = sub_100008880(*a1);
  *(a2 + 32) = sqlite3_column_int(v17, 11);
  v18 = sub_100008880(*a1);
  v19 = sqlite3_column_int(v18, 12);
  result = 0;
  *(a2 + 33) = v19;
  return result;
}

void sub_100517608(uint64_t a1)
{
  if (sub_100023B68(*(a1 + 80)))
  {
    sub_1005177E8(a1);
    sub_100608EC8(*(a1 + 80), "MotionStateHistory", qword_102656988, &qword_102656C28, 0);
    *(a1 + 480) = sub_100614C1C(*(a1 + 80), "SELECT COUNT(*) FROM MotionStateHistory");
    *(a1 + 488) = v2;
    *(a1 + 496) = sub_100614C1C(*(a1 + 80), "SELECT * FROM MotionStateHistory ORDER BY startTime ASC");
    *(a1 + 504) = v3;
    *(a1 + 512) = sub_100614C1C(*(a1 + 80), "DELETE FROM MotionStateHistory WHERE startTime < ?");
    *(a1 + 520) = v4;
    *(a1 + 528) = sub_100614C1C(*(a1 + 80), "DELETE FROM MotionStateHistory WHERE startTime > ?");
    *(a1 + 536) = v5;
    *(a1 + 544) = sub_100614C1C(*(a1 + 80), "DELETE FROM MotionStateHistory");
    *(a1 + 552) = v6;
    *(a1 + 560) = sub_100614C1C(*(a1 + 80), "INSERT INTO MotionStateHistory (startTime, timestamp, type, confidence, mounted, mountedConfidence, turn, isVehicular, isMoving, vehicleExitState, vehicularFlagsData, vehicleType) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
    *(a1 + 568) = v7;
    *(a1 + 576) = sub_100614C1C(*(a1 + 80), "UPDATE MotionStateHistory SET startTime = startTime + ?");
    *(a1 + 584) = v8;
    *(a1 + 592) = sub_100614C1C(*(a1 + 80), "SELECT * FROM MotionStateHistory ORDER BY startTime DESC LIMIT 1");
    *(a1 + 600) = v9;
    *(a1 + 608) = sub_100614C1C(*(a1 + 80), "SELECT * FROM MotionStateHistory WHERE ? <= startTime AND startTime <= ? ORDER BY startTime ASC");
    *(a1 + 616) = v10;
    *(a1 + 624) = sub_100614C1C(*(a1 + 80), "SELECT * FROM MotionStateHistory WHERE startTime >= ? and startTime < ? ORDER BY startTime ASC");
    *(a1 + 632) = v11;
    *(a1 + 640) = sub_100614C1C(*(a1 + 80), "SELECT * FROM MotionStateHistory WHERE startTime < ?  ORDER BY startTime DESC LIMIT 1");
    *(a1 + 648) = v12;
    *(a1 + 132) = sub_100516CEC(a1);
  }

  else
  {
    if (qword_1025D4250 != -1)
    {
      sub_1018B16B4();
    }

    v13 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "Device is locked and we are unable to open the database", v14, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B170C();
    }
  }
}

void sub_1005177E8(uint64_t a1)
{
  if (sub_10060A6D8(*(a1 + 80), "MotionStateHistory"))
  {
    v4 = "id";
    v5 = 5;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    sub_100611268(*(a1 + 80), "MotionStateHistory", "id", &v4);
  }

  if (qword_1025D4200 != -1)
  {
    sub_1018B1800();
  }

  v2 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "MotionStateHistory table doesn't even exist", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B1814();
  }
}

void sub_100517D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a23);
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  sub_10026C504(&a61);
  _Unwind_Resume(a1);
}

uint64_t sub_100517E40(uint64_t a1)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    sub_100144CA0((a1 + 544), &v7);
    v3 = *(a1 + 80);
    v4 = sub_100008880(v7);
    sub_1001A3DEC(v3, v4);
    v5 = *(a1 + 80);
    if (*(v5 + 88) <= 0)
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = *(v5 + 88);
    }

    sub_1001B16EC(v5, v6);
    *(a1 + 132) = 0;
    result = v7;
    v7 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_100517EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100517F08(uint64_t a1, uint64_t a2)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    (*(*a1 + 120))(a1, a2, 1);
    sub_100144CA0((a1 + 528), &v14);
    v5 = sub_100008880(v14);
    if (sub_1001A3BD4(v5, 1, *(a2 + 8)))
    {
      v6 = *(a1 + 80);
      v7 = sub_100008880(v14);
      sub_1001A3DEC(v6, v7);
      *(a1 + 132) = sub_100516CEC(a1);
    }

    else
    {
      if (qword_1025D4250 != -1)
      {
        sub_1018B190C();
      }

      v8 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "Failed to delete records", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B16C8(buf);
        v13 = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4258, 17, "Failed to delete records", &v13, 2);
        v12 = v11;
        sub_100152C7C("Generic", 1, 0, 0, "virtual void CLMotionStateRecorderDb::deleteRecordsAfterInsertUL(const CLMotionCoprocessorInterface::MotionState &)", "%s\n", v11);
        if (v12 != buf)
        {
          free(v12);
        }
      }
    }

    v9 = *(a1 + 80);
    if (*(v9 + 88) <= 0)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = *(v9 + 88);
    }

    sub_1001B16EC(v9, v10);
    result = v14;
    v14 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_100518130(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100518178(uint64_t a1, double a2)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    sub_100144CA0((a1 + 576), &v12);
    v5 = sub_100008880(v12);
    if (sub_1001A3BD4(v5, 1, a2))
    {
      v6 = *(a1 + 80);
      v7 = sub_100008880(v12);
      sub_1001A3DEC(v6, v7);
    }

    else
    {
      if (qword_1025D4250 != -1)
      {
        sub_1018B190C();
      }

      v8 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "Failed to shift records", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B16C8(buf);
        v11 = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4258, 17, "Failed to shift records", &v11, 2);
        v10 = v9;
        sub_100152C7C("Generic", 1, 0, 0, "virtual void CLMotionStateRecorderDb::shiftRecordsByUL(CFTimeInterval)", "%s\n", v9);
        if (v10 != buf)
        {
          free(v10);
        }
      }
    }

    result = v12;
    v12 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_100518354(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10051839C(uint64_t a1, uint64_t a2)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    sub_100144CA0((a1 + 560), &v19);
    v5 = sub_100008880(v19);
    if (sub_1001A3BD4(v5, 1, *(a2 + 8)))
    {
      v6 = sub_100008880(v19);
      if (sub_1001A3BD4(v6, 2, *a2))
      {
        v7 = sub_100008880(v19);
        if (sub_100073700(v7, 3, *(a2 + 24)))
        {
          v8 = sub_100008880(v19);
          if (sub_100073700(v8, 4, *(a2 + 28)))
          {
            v9 = sub_100008880(v19);
            if (sub_100073700(v9, 5, *(a2 + 29)))
            {
              v10 = sub_100008880(v19);
              if (sub_100073700(v10, 6, *(a2 + 30)))
              {
                v11 = sub_100008880(v19);
                if (sub_100073700(v11, 7, *(a2 + 31)))
                {
                  v12 = sub_100008880(v19);
                  if (sub_100073700(v12, 8, *(a2 + 32)))
                  {
                    v13 = sub_100008880(v19);
                    if (sub_100073700(v13, 9, *(a2 + 33)))
                    {
                      v14 = sub_100008880(v19);
                      if (sub_100073700(v14, 10, *(a2 + 35)))
                      {
                        v15 = sub_100008880(v19);
                        if (sub_100073700(v15, 11, *(a2 + 60)))
                        {
                          v16 = sub_100008880(v19);
                          if (sub_100073700(v16, 12, *(a2 + 62)))
                          {
                            v17 = *(a1 + 80);
                            v18 = sub_100008880(v19);
                            sub_1001A3DEC(v17, v18);
                            ++*(a1 + 132);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_100518554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_100518570(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

BOOL sub_10051857C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 24);
  v4 = *(a3 + 24);
  if (v3 == v4 && *(a2 + 28) >= *(a3 + 28) && *(a2 + 60) == *(a3 + 60))
  {
    return 1;
  }

  result = 1;
  if (v4 != 2 && v4 != 512)
  {
    v6 = v3 == 4 && v4 == 12;
    if (!v6 && (v3 != 16 || v4 != 32))
    {
      v7 = (v4 & 0xFFFFEFFF) == 0x2000;
      return v3 == 4096 && v7;
    }
  }

  return result;
}

uint64_t sub_100518600(uint64_t a1, uint64_t a2)
{
  if (!sub_100099160(a1 + 72))
  {
    return 2;
  }

  sub_100144CA0((a1 + 592), &v13);
  v4 = sub_10051749C(&v13, v7);
  if (!v4)
  {
    *a2 = v10;
    *(a2 + 24) = v7[1];
    *(a2 + 28) = v7[2];
    *(a2 + 32) = v8;
    *(a2 + 35) = v9;
    *(a2 + 60) = v11;
    *(a2 + 62) = v12;
    *(a2 + 104) = 0;
  }

  v5 = v13;
  v13 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return v4;
}

void sub_1005186D0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  *(v1 - 24) = 0;
  if (v3)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005186EC(uint64_t a1, const void **a2)
{
  v5 = *(a1 + 112);
  v4 = a1 + 112;
  v6 = v4 - 40;
  v51 = v4;
  (*(v5 + 16))();
  v53 = 256;
  if (!sub_100099160(v6))
  {
    goto LABEL_20;
  }

  sub_100144CA0((a1 + 496), &v50);
  while (!sub_10051749C(&v50, v37))
  {
    v7 = v47;
    v8 = v38;
    v9 = v39;
    v10 = v40;
    v11 = v41;
    v12 = v42;
    v13 = v43;
    v14 = v44;
    v15 = v45;
    v16 = v48;
    v17 = v49;
    v18 = a2[1];
    v19 = a2[2];
    if (v18 >= v19)
    {
      v24 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - *a2) >> 5);
      v25 = v24 + 1;
      if (v24 + 1 > 0x199999999999999)
      {
        sub_10028C64C();
      }

      v26 = 0xCCCCCCCCCCCCCCCDLL * ((v19 - *a2) >> 5);
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      if (v26 >= 0xCCCCCCCCCCCCCCLL)
      {
        v27 = 0x199999999999999;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        sub_10051A070(a2, v27);
      }

      v28 = 160 * v24;
      *v28 = v46;
      *(v28 + 8) = v7;
      *(v28 + 24) = v8;
      *(v28 + 28) = v9;
      *(v28 + 29) = v10;
      *(v28 + 30) = v11;
      *(v28 + 31) = v12;
      *(v28 + 32) = v13;
      *(v28 + 33) = v14;
      *(v28 + 35) = v15;
      *(v28 + 36) = v59;
      *(v28 + 52) = v60;
      *(v28 + 60) = v16;
      *(v28 + 62) = v17;
      v29 = v57;
      v30 = *v58;
      *(v28 + 88) = *&v58[9];
      *(v28 + 79) = v30;
      *(v28 + 63) = v29;
      v31 = v55;
      *(v28 + 105) = v54;
      *(v28 + 121) = v31;
      *(v28 + 137) = *v56;
      *(v28 + 152) = *&v56[15];
      v23 = (160 * v24 + 160);
      v32 = *a2;
      v33 = a2[1] - *a2;
      v34 = (160 * v24 - v33);
      *(v28 + 104) = 0;
      memcpy(v34, v32, v33);
      v35 = *a2;
      *a2 = v34;
      a2[1] = v23;
      a2[2] = 0;
      if (v35)
      {
        operator delete(v35);
      }
    }

    else
    {
      *v18 = v46;
      *(v18 + 1) = v7;
      *(v18 + 6) = v8;
      v18[28] = v9;
      v18[29] = v10;
      v18[30] = v11;
      v18[31] = v12;
      v18[32] = v13;
      v18[33] = v14;
      v18[35] = v15;
      *(v18 + 36) = v59;
      *(v18 + 52) = v60;
      v18[60] = v16;
      v18[62] = v17;
      v20 = v57;
      v21 = *v58;
      *(v18 + 88) = *&v58[9];
      *(v18 + 79) = v21;
      *(v18 + 63) = v20;
      v18[104] = 0;
      v22 = v55;
      *(v18 + 105) = v54;
      *(v18 + 121) = v22;
      *(v18 + 137) = *v56;
      v23 = v18 + 160;
      *(v18 + 19) = *&v56[15];
    }

    a2[1] = v23;
  }

  result = v50;
  v50 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if ((v53 & 0x100) != 0)
  {
LABEL_20:
    if (v53)
    {
      return pthread_mutex_unlock(v52);
    }

    else
    {
      return (*(*v51 + 24))(v51);
    }
  }

  return result;
}

void sub_100518A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100518A90(void *a1, uint64_t a2, double a3, double a4)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v21) & 0x80000000) == 0)
  {
    if (BYTE3(v21))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_1018B1478();
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v19 = 2082;
      *&v19[2] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018B1478();
      }
    }

    v13 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v19 = 2082;
      *&v19[2] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getEntriesByTimeRange", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018B1478();
      }
    }

    v14 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v19 = 2082;
      *&v19[2] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "getTableName() != ";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Activity/CLActivityRecorderDb.h", 607, "getEntriesByTimeRange");
    __break(1u);
  }

  v11 = *v19;
  operator delete(*buf);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (sub_100099160((a1 + 9)))
  {
    sub_10003848C(buf);
    v5 = sub_100038730(&v19[8], "SELECT * FROM ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((v17 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v7 = v17;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_100038730(v5, v6, v7);
    sub_100038730(v8, " WHERE startTime > ? and startTime <= ? ORDER BY rowid ASC", 58);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = a1[10];
    sub_100073518(buf, __p);
    if ((v17 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(v9, v10);
  }

  return 2;
}

void sub_100519114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a38);
  _Unwind_Resume(a1);
}

uint64_t sub_10051919C(uint64_t a1)
{
  v3 = *(a1 + 112);
  v2 = a1 + 112;
  v4 = v2 - 40;
  v13 = v2;
  (*(v3 + 16))();
  if (!sub_100099160(v4))
  {
    sub_10051BBD0(a1);
  }

  if (qword_1025D4200 != -1)
  {
    sub_1018B1800();
  }

  v5 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    v6 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v6 = *v6;
    }

    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v17 = 2082;
    v18 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Database is already opened., name:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (*(a1 + 216))
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018B1478();
    }

    v7 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 216);
      *buf = 134349056;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "In memory buffer should have been empty! Instead it had a size of %{public}lu.", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B14A0(buf);
      v10 = *(a1 + 216);
      v14 = 134349056;
      v15 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 17, "In memory buffer should have been empty! Instead it had a size of %{public}lu.", &v14, 12);
      v12 = v11;
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLActivityRecorderDb<CLMotionCoprocessorInterface::MotionState>::setDatabaseAccessible() [T = CLMotionCoprocessorInterface::MotionState, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  (*(*v13 + 24))(v13);
  return 1;
}

void sub_100519888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

id *sub_1005198C4(uint64_t a1, uint64_t a2, char a3)
{
  v38[0] = os_transaction_create();
  v38[1] = 0;
  if (*(a1 + 232) > 0.0 && (*(*a1 + 136))(a1, a1 + 224, a2))
  {
    (*(*a1 + 72))(a1, a1 + 224, a2);
    return sub_10001A420(v38);
  }

  if ((a3 & 1) == 0)
  {
    sub_100144A84(*(a1 + 80));
  }

  v6 = (*(*a1 + 104))(a1, v36);
  if (v6 == 1)
  {
    (*(*a1 + 120))(a1, a2, 1);
  }

  else
  {
    if (v6)
    {
      if (qword_1025D4200 != -1)
      {
        sub_1018B1478();
      }

      v14 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Failed to insert record due to failure from reading the most recent entry.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B14A0(buf);
        LOWORD(v39) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 17, "Failed to insert record due to failure from reading the most recent entry.", &v39, 2);
        v16 = v15;
        sub_100152C7C("Generic", 1, 0, 0, "virtual void CLActivityRecorderDb<CLMotionCoprocessorInterface::MotionState>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLMotionCoprocessorInterface::MotionState, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v15);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      goto LABEL_41;
    }

    v7 = *(a2 + 8);
    v8 = v37;
    v9 = v7 - v37;
    if (v7 - v37 < 0.0)
    {
      v9 = -(v7 - v37);
    }

    if (v9 > 604800.0)
    {
      if (qword_1025D4200 != -1)
      {
        sub_1018B1478();
      }

      v10 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a2 + 8);
        *buf = 134349312;
        v44 = v37;
        v45 = 2050;
        v46 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Notice Potential CM database inconsistency, time jump %{public}lf %{public}lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B14A0(buf);
        v28 = *(a2 + 8);
        v39 = 134349312;
        v40 = v37;
        v41 = 2050;
        v42 = v28;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 0, "#Notice Potential CM database inconsistency, time jump %{public}lf %{public}lf", &v39, 22);
        v30 = v29;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLMotionCoprocessorInterface::MotionState>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLMotionCoprocessorInterface::MotionState, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v29);
        if (v30 != buf)
        {
          free(v30);
        }
      }

      CLWriteStackshot();
      v7 = *(a2 + 8);
      v8 = v37;
    }

    if (v7 < v8)
    {
      if (v8 - v7 < 10.0)
      {
        if (qword_1025D4200 != -1)
        {
          sub_1018B1478();
        }

        v12 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v13 = *(a2 + 8);
          *buf = 134217984;
          v44 = v13;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the recent past.  Deleting records after %f.", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018B14A0(buf);
          v31 = *(a2 + 8);
          v39 = 134217984;
          v40 = v31;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 1, "Entry being recorded has a startTime in the recent past.  Deleting records after %f.", COERCE_DOUBLE(&v39));
          v33 = v32;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLMotionCoprocessorInterface::MotionState>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLMotionCoprocessorInterface::MotionState, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v32);
          if (v33 != buf)
          {
            free(v33);
          }
        }

        (*(*a1 + 88))(a1, a2);
        goto LABEL_40;
      }

      v17 = *(a1 + 136);
      if (qword_1025D4200 != -1)
      {
        sub_1018B1478();
      }

      v18 = v7 - v8 - v17;
      v19 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v44 = v18;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the substantial past.  Shift records by %f.", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B14A0(buf);
        v39 = 134217984;
        v40 = v18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 1, "Entry being recorded has a startTime in the substantial past.  Shift records by %f.", COERCE_DOUBLE(&v39));
        v35 = v34;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLMotionCoprocessorInterface::MotionState>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLMotionCoprocessorInterface::MotionState, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v34);
        if (v35 != buf)
        {
          free(v35);
        }
      }

      (*(*a1 + 96))(a1, v18);
    }

    (*(*a1 + 144))(a1, v36, a1 + 224, a2);
    (*(*a1 + 120))(a1, a2, 1);
  }

LABEL_40:
  v20 = *(a2 + 16);
  *(a1 + 224) = *a2;
  *(a1 + 240) = v20;
  v21 = *(a2 + 32);
  v22 = *(a2 + 48);
  v23 = *(a2 + 80);
  *(a1 + 288) = *(a2 + 64);
  *(a1 + 304) = v23;
  *(a1 + 256) = v21;
  *(a1 + 272) = v22;
  v24 = *(a2 + 96);
  v25 = *(a2 + 112);
  v26 = *(a2 + 144);
  *(a1 + 352) = *(a2 + 128);
  *(a1 + 368) = v26;
  *(a1 + 320) = v24;
  *(a1 + 336) = v25;
LABEL_41:
  if ((a3 & 1) == 0)
  {
    sub_1001454E0(*(a1 + 80));
  }

  return sub_10001A420(v38);
}

void sub_10051A070(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    operator new();
  }

  sub_1001D0818();
}

BOOL sub_10051A0C8(uint64_t *a1, void *a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v20) & 0x80000000) == 0)
  {
    if (BYTE3(v20))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_1018B1478();
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018B1478();
      }
    }

    v13 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getAllRecords", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018B1478();
      }
    }

    v14 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Activity/CLActivityRecorderDb.h", 528, "getAllRecords");
    __break(1u);
  }

  v11 = *v18;
  operator delete(*buf);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160((a1 + 9));
  if (result)
  {
    a2[1] = *a2;
    sub_10003848C(buf);
    v5 = sub_100038730(&v18[8], "SELECT * from ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((v16 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v7 = v16;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_100038730(v5, v6, v7);
    sub_100038730(v8, " ORDER BY id ASC", 16);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = a1[10];
    sub_100073518(buf, __p);
    if ((v16 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(v9, v10);
  }

  return result;
}

void sub_10051A708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (v38)
  {
    (*(*v38 + 8))(v38, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_10026C504(&a38);
  _Unwind_Resume(a1);
}

__n128 sub_10051A790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v3;
  v4 = *(a3 + 32);
  v5 = *(a3 + 48);
  v6 = *(a3 + 80);
  *(a2 + 64) = *(a3 + 64);
  *(a2 + 80) = v6;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  result = *(a3 + 96);
  v8 = *(a3 + 112);
  v9 = *(a3 + 144);
  *(a2 + 128) = *(a3 + 128);
  *(a2 + 144) = v9;
  *(a2 + 96) = result;
  *(a2 + 112) = v8;
  return result;
}

BOOL sub_10051A7BC(void *a1, uint64_t a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v20) & 0x80000000) == 0)
  {
    if (BYTE3(v20))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_1018B1478();
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018B1478();
      }
    }

    v13 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018B1478();
      }
    }

    v14 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Activity/CLActivityRecorderDb.h", 560, "deleteRecordsAfterInsertUL");
    __break(1u);
  }

  v11 = *v18;
  operator delete(*buf);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160((a1 + 9));
  if (result)
  {
    (*(*a1 + 120))(a1, a2, 1);
    sub_10003848C(buf);
    v5 = sub_100038730(&v18[8], "DELETE FROM ", 12);
    (*(*a1 + 64))(__p, a1);
    if ((v16 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v7 = v16;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_100038730(v5, v6, v7);
    sub_100038730(v8, " WHERE startTime > ?", 20);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = a1[10];
    sub_100073518(buf, __p);
    if ((v16 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(v9, v10);
  }

  return result;
}

void sub_10051AD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

BOOL sub_10051AD70(void *a1, double a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v19) & 0x80000000) == 0)
  {
    if (BYTE3(v19))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_1018B1478();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018B1478();
      }
    }

    v12 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of shiftRecordsByUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018B1478();
      }
    }

    v13 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Activity/CLActivityRecorderDb.h", 577, "shiftRecordsByUL");
    __break(1u);
  }

  v10 = *v17;
  operator delete(*buf);
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160((a1 + 9));
  if (result)
  {
    sub_10003848C(buf);
    v4 = sub_100038730(&v17[8], "UPDATE ", 7);
    (*(*a1 + 64))(__p, a1);
    if ((v15 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v15 & 0x80u) == 0)
    {
      v6 = v15;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = sub_100038730(v4, v5, v6);
    sub_100038730(v7, " SET startTime = startTime + ?", 30);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = a1[10];
    sub_100073518(buf, __p);
    if ((v15 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    sub_1000388D8(v8, v9);
  }

  return result;
}

void sub_10051B290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_10051B2E4(void *a1, uint64_t a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v19) & 0x80000000) == 0)
  {
    if (BYTE3(v19))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_1018B1478();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018B1478();
      }
    }

    v12 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getMostRecentRecordUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018B1478();
      }
    }

    v13 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Activity/CLActivityRecorderDb.h", 592, "getMostRecentRecordUL");
    __break(1u);
  }

  v10 = *v17;
  operator delete(*buf);
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (sub_100099160((a1 + 9)))
  {
    sub_10003848C(buf);
    v3 = sub_100038730(&v17[8], "SELECT * FROM ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((v15 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v15 & 0x80u) == 0)
    {
      v5 = v15;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = sub_100038730(v3, v4, v5);
    sub_100038730(v6, " ORDER BY ROWID DESC LIMIT 1", 28);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = a1[10];
    sub_100073518(buf, __p);
    if ((v15 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    sub_1000388D8(v7, v8);
  }

  return 2;
}

void sub_10051B7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a13)
  {
    sub_101880BC0();
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_10051B848(void *a1)
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
    v5 = 12;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 25;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1003EE22C(a1);
}

uint64_t sub_10051B8F4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_100008880(*a2);
  v7 = sqlite3_step(v6);
  if (v7 == 101)
  {
    return 1;
  }

  if (v7 != 100)
  {
    return 2;
  }

  (*(*a1 + 128))(a1, a2, a3);
  return 0;
}

void sub_10051B984(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (qword_1025D4200 != -1)
  {
    sub_1018B1800();
  }

  v6 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    (*(*a1 + 64))(__p, a1);
    v7 = v12 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v14 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "%s insert handle set.", buf, 0xCu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B19A0(a1);
  }

  if ((!a2 || !a3) && a2 | a3)
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018B1478();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 64))(__p, a1);
      v9 = v12 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v14 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "%s, Invalid update finished handlers.", buf, 0xCu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B1AE8(a1);
    }
  }

  *(a1 + 464) = a2;
  v10 = *(a1 + 472);
  if (v10)
  {
    _Block_release(v10);
  }

  if (a3)
  {
    *(a1 + 472) = _Block_copy(a3);
  }
}

void sub_10051BC4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10051BC98()
{
  qword_102656988[0] = "id";
  dword_102656990 = 1;
  word_102656994 = 1;
  byte_102656998 = 0;
  byte_1026569B0 = 0;
  qword_1026569B8 = "startTime";
  dword_1026569C0 = 2;
  word_1026569C4 = 0;
  byte_1026569C8 = 0;
  byte_1026569E0 = 0;
  qword_1026569E8 = "timestamp";
  dword_1026569F0 = 2;
  word_1026569F4 = 0;
  byte_1026569F8 = 0;
  byte_102656A10 = 0;
  qword_102656A18 = "type";
  dword_102656A20 = 1;
  word_102656A24 = 0;
  byte_102656A28 = 0;
  byte_102656A40 = 0;
  qword_102656A48 = "confidence";
  dword_102656A50 = 1;
  word_102656A54 = 0;
  byte_102656A58 = 0;
  byte_102656A70 = 0;
  qword_102656A78 = "mounted";
  dword_102656A80 = 1;
  word_102656A84 = 0;
  byte_102656A88 = 0;
  byte_102656AA0 = 0;
  qword_102656AA8 = "mountedConfidence";
  dword_102656AB0 = 1;
  word_102656AB4 = 0;
  byte_102656AB8 = 0;
  byte_102656AD0 = 0;
  qword_102656AD8 = "turn";
  dword_102656AE0 = 1;
  word_102656AE4 = 0;
  byte_102656AE8 = 0;
  byte_102656B00 = 0;
  qword_102656B08 = "isVehicular";
  dword_102656B10 = 1;
  word_102656B14 = 0;
  byte_102656B18 = 0;
  byte_102656B30 = 0;
  qword_102656B38 = "isMoving";
  dword_102656B40 = 1;
  word_102656B44 = 0;
  byte_102656B48 = 0;
  byte_102656B60 = 0;
  qword_102656B68 = "vehicleExitState";
  dword_102656B70 = 1;
  word_102656B74 = 0;
  byte_102656B78 = 0;
  byte_102656B90 = 0;
  qword_102656B98 = "vehicularFlagsData";
  dword_102656BA0 = 1;
  word_102656BA4 = 0;
  byte_102656BA8 = 0;
  byte_102656BC0 = 0;
  qword_102656BC8 = "vehicleType";
  dword_102656BD0 = 1;
  word_102656BD4 = 0;
  byte_102656BD8 = 0;
  byte_102656BF0 = 0;
  qword_102656BF8 = 0;
  dword_102656C00 = 5;
  word_102656C04 = 0;
  byte_102656C08 = 0;
  byte_102656C20 = 0;
  qword_102656C28 = "startTime";
  unk_102656C30 = 0;
}

void sub_10051BE3C(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.2D, #10.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 24) = xmmword_101C7D210;
  *(a1 + 40) = 0x4024000000000000;
  v22[0] = 0;
  sub_100126E84(&v24, "EnableMultiSportSimulation", v22, 0);
  v6 = v25;
  *a1 = v25;
  if (v6 == 1)
  {
    *buf = 0;
    sub_10183A3AC(v22, "MultiSportSimulatedPauseTime", buf, 0);
    if (v22[0] == 1)
    {
      v7 = v23[0];
      _NF = v23[0] < 10.0;
      if (v23[0] < 10.0)
      {
        v7 = 10.0;
      }

      *(a1 + 8) = v7;
      if (_NF)
      {
        if (qword_1025D43F0 != -1)
        {
          sub_1018B1C3C();
        }

        v9 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v23[0];
          *&buf[12] = 2048;
          *&buf[14] = 0x4024000000000000;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "MultiSportSim, failed to set pause time %f, min time is %f", buf, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018B1C64();
        }
      }
    }

    *v31 = 0;
    sub_10183A3AC(buf, "MultiSportSimulatedTransitionTime", v31, 0);
    if (buf[0] == 1)
    {
      v10 = v23[0];
      v11 = v23[0] < 10.0;
      if (v23[0] < 10.0)
      {
        v10 = 10.0;
      }

      *(a1 + 16) = v10;
      if (v11)
      {
        if (qword_1025D43F0 != -1)
        {
          sub_1018B1C3C();
        }

        v12 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
        {
          *v31 = 134218240;
          *&v31[4] = *&buf[8];
          *&v31[12] = 2048;
          *&v31[14] = 0x4024000000000000;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "MultiSportSim, failed to set transition time %f, min time is %f", v31, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018B1D50();
        }
      }
    }

    *v30 = 0;
    sub_10183A3AC(v31, "MultiSportSimulatedLegTime", v30, 0);
    if (v31[0] == 1)
    {
      v13 = *&v31[8];
      v14 = *&v31[8] < 10.0;
      if (*&v31[8] < 10.0)
      {
        v13 = 20.0;
      }

      *(a1 + 24) = v13;
      if (v14)
      {
        if (qword_1025D43F0 != -1)
        {
          sub_1018B1C3C();
        }

        v15 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
        {
          *v30 = 134218240;
          *&v30[4] = *&v31[8];
          *&v30[12] = 2048;
          *&v30[14] = 0x4024000000000000;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "MultiSportSim, failed to set leg time %f, min time is %f", v30, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018B1E3C();
        }
      }
    }

    *v29 = 0;
    sub_10183A3AC(v30, "MultiSportSimulatedSwimmingPrewarm", v29, 0);
    if (v30[0] == 1)
    {
      v16 = *&v30[8];
      v17 = *&v30[8] <= 0.0;
      if (*&v30[8] >= 10.0)
      {
        v17 = 1;
      }

      if (!v17)
      {
        v16 = 15.0;
      }

      *(a1 + 32) = v16;
      if (!v17)
      {
        if (qword_1025D43F0 != -1)
        {
          sub_1018B1C3C();
        }

        v18 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
        {
          *v29 = 134218240;
          *&v29[4] = *&v30[8];
          *&v29[12] = 2048;
          *&v29[14] = 0x4024000000000000;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "MultiSportSim, failed to swim prewarm time %f, value must be <= 0 (disable prewarm) or > %f", v29, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018B1F28();
        }
      }
    }

    *v26 = 0;
    sub_10183A3AC(v29, "MultiSportSimulatedOutdoorCyclingPrewarm", v26, 0);
    if (v29[0] == 1)
    {
      v19 = *&v29[8];
      v20 = *&v29[8] <= 0.0;
      if (*&v29[8] >= 10.0)
      {
        v20 = 1;
      }

      if (!v20)
      {
        v19 = 10.0;
      }

      *(a1 + 40) = v19;
      if (!v20)
      {
        if (qword_1025D43F0 != -1)
        {
          sub_1018B1C3C();
        }

        v21 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
        {
          *v26 = 134218240;
          *&v26[4] = *&v29[8];
          v27 = 2048;
          v28 = 0x4024000000000000;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "MultiSportSim, failed to swim prewarm time %f, value must be <= 0 (disable prewarm) or > %f", v26, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018B1F28();
        }
      }
    }
  }
}

void sub_10051C3B4(_Unwind_Exception *a1)
{
  sub_1000F8B58(v2);
  sub_10051C8C8(v1);
  _Unwind_Resume(a1);
}

void sub_10051C3D0(double *a1, uint64_t a2)
{
  v4 = *(a1 + 60);
  v5 = *(a1 + 61);
  a1[64] = 0.0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v7 = *(a1 + 61);
      v4 = (*(a1 + 60) + 8);
      *(a1 + 60) = v4;
      v6 = (v7 - v4) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v8 = 85;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = 170;
  }

  *(a1 + 63) = v8;
LABEL_8:
  v9 = a1[58];
  v35 = 1;
  v10 = *(a1 + 7);
  if (*(a1 + 8) == v10 || (v11 = *(a1 + 10), v12 = *(v10 + 8 * (v11 / 0x1A)) + 152 * (v11 % 0x1A), v13 = *(v10 + 8 * ((*(a1 + 11) + v11) / 0x1A)) + 152 * ((*(a1 + 11) + v11) % 0x1A), v12 == v13))
  {
LABEL_29:
    if (qword_1025D43F0 != -1)
    {
      sub_1018B1C3C();
    }

    v22 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a2 + 8);
      v24 = *(a2 + 16);
      v25 = *(a2 + 24);
      v26 = *(a2 + 32);
      v27 = *(a2 + 40);
      *__p = 134219008;
      *&__p[4] = v23;
      *&__p[12] = 2048;
      *&__p[14] = v24;
      *&__p[22] = 2048;
      *&__p[24] = v25;
      v37 = 2048;
      v38 = v26;
      v39 = 2048;
      v40 = v27;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "MultiSportSimParams,pauseTime,%f,transistionTime,%f,legTime,%f,swimPrewarmTime,%f,outdoorCyclingPrewarmTime,%f", __p, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B2118(a2);
    }

    return;
  }

  v14 = v9 + 5.0;
  v15 = (v10 + 8 * (v11 / 0x1A));
  while (1)
  {
    v17 = (v12 + 32);
    v16 = *(v12 + 32);
    if (v16 > 16)
    {
      break;
    }

    if (v16 == 2)
    {
      goto LABEL_17;
    }

    if (v16 != 4)
    {
      if (v16 != 5)
      {
        goto LABEL_36;
      }

      *__p = xmmword_101C7D260;
      *&__p[16] = unk_101C7D270;
      *&v42 = 0;
      v41 = 0uLL;
      sub_10051EDB8(&v41, __p, &v37, 2uLL);
      v18 = sub_10051C968(a1, *v17, a2, &v41, &v35, v14, 0.0);
LABEL_18:
      v14 = v18;
      v19 = v41;
      if (v41)
      {
        *(&v41 + 1) = v41;
LABEL_25:
        operator delete(v19);
        goto LABEL_26;
      }

      goto LABEL_26;
    }

    *&v41 = 19;
    *(&v41 + 1) = 0x500000004;
    memset(__p, 0, 24);
    sub_10051EDB8(__p, &v41, &v42, 1uLL);
    v20 = sub_10051C968(a1, *v17, a2, __p, &v35, v14, *(a2 + 40));
LABEL_23:
    v14 = v20;
    v19 = *__p;
    if (*__p)
    {
      *&__p[8] = *__p;
      goto LABEL_25;
    }

LABEL_26:
    v12 += 152;
    if (v12 - *v15 == 3952)
    {
      v21 = v15[1];
      ++v15;
      v12 = v21;
    }

    if (v12 == v13)
    {
      goto LABEL_29;
    }
  }

  if ((v16 - 17) < 2)
  {
LABEL_17:
    *__p = xmmword_101C7D240;
    *&__p[16] = unk_101C7D250;
    *&v42 = 0;
    v41 = 0uLL;
    sub_10051EDB8(&v41, __p, &v37, 2uLL);
    v18 = sub_10051C968(a1, *v17, a2, &v41, &v35, v14, 0.0);
    goto LABEL_18;
  }

  if (v16 == 19)
  {
    *&v41 = 4;
    *(&v41 + 1) = dword_100000000;
    memset(__p, 0, 24);
    sub_10051EDB8(__p, &v41, &v42, 1uLL);
    v20 = sub_10051C968(a1, *v17, a2, __p, &v35, v14, *(a2 + 32));
    goto LABEL_23;
  }

LABEL_36:
  if (qword_1025D43F0 != -1)
  {
    sub_1018B1C3C();
  }

  v28 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_FAULT))
  {
    v29 = *v17;
    *__p = 134217984;
    *&__p[4] = v29;
    _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_FAULT, "MultiSportSim,Unsported WorkoutType: %ld! nothing will be simulated", __p, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018B2014();
  }

  v30 = *(a1 + 60);
  v31 = *(a1 + 61);
  a1[64] = 0.0;
  v32 = (v31 - v30) >> 3;
  if (v32 >= 3)
  {
    do
    {
      operator delete(*v30);
      v33 = *(a1 + 61);
      v30 = (*(a1 + 60) + 8);
      *(a1 + 60) = v30;
      v32 = (v33 - v30) >> 3;
    }

    while (v32 > 2);
  }

  if (v32 == 1)
  {
    v34 = 85;
LABEL_48:
    *(a1 + 63) = v34;
  }

  else if (v32 == 2)
  {
    v34 = 170;
    goto LABEL_48;
  }
}

void sub_10051C888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10051C8C8(uint64_t a1)
{
  *a1 = &off_1024AF190;
  v3 = (a1 + 112);
  sub_10051D6DC(&v3);
  sub_100106180((a1 + 48));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

double sub_10051C93C(unsigned int a1, uint64_t a2)
{
  if (a1 <= 7)
  {
    return *(a2 + *&asc_101C7D2A0[8 * a1]) + dbl_101C7D2E0[a1];
  }

  return result;
}

double sub_10051C968(uint64_t a1, uint64_t a2, double *a3, uint64_t **a4, _BYTE *a5, double a6, double a7)
{
  __p = 0;
  v101 = 0;
  v102 = 0;
  memset(&v99[7], 0, 7);
  v13 = a7 > 0.0;
  if (a7 > 0.0)
  {
    v14 = a3[3];
    v86 = a6 + a7;
    v85 = a6 + a7 + v14 * 0.5 + a3[1];
    v89 = v85 + a7;
    v90 = a6 + a7 + v14 * 0.5;
    v88 = v85 + a7 + v14 * 0.5;
    v87 = a3[2] + v88;
    if ((*a5 & 1) == 0)
    {
      sub_1001AB518(&__p, 1uLL);
    }

    goto LABEL_6;
  }

  v15 = a3[3];
  v89 = a6 + v15 * 0.5 + a3[1];
  v90 = a6 + v15 * 0.5;
  v88 = v89 + v15 * 0.5;
  v87 = a3[2] + v88;
  if (*a5)
  {
    v85 = 0.0;
    v86 = a6;
    a6 = 0.0;
LABEL_6:
    v16 = 0;
    v17 = 0;
    *a5 = 0;
    goto LABEL_18;
  }

  v85 = 0.0;
  v86 = a6;
  a6 = 0.0;
  v18 = __p;
  v19 = -__p;
  v20 = 0xAAAAAAAAAAAAAAABLL * (-__p >> 3);
  v21 = v20 + 1;
  if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10028C64C();
  }

  if (0x5555555555555556 * (-__p >> 3) > v21)
  {
    v21 = 0x5555555555555556 * (-__p >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * (-__p >> 3) >= 0x555555555555555)
  {
    v21 = 0xAAAAAAAAAAAAAAALL;
  }

  if (v21)
  {
    sub_1001AB518(&__p, v21);
  }

  v22 = 8 * (-__p >> 3);
  v17 = 0;
  *v22 = v86;
  *(v22 + 8) = a2;
  *(v22 + 16) = 2;
  v16 = 24 * v20 + 24;
  v23 = (24 * v20 - v19);
  memcpy(v23, v18, v19);
  v25 = __p;
  __p = v23;
  v101 = v16;
  v102 = 0;
  if (v25)
  {
    operator delete(v25);
    v17 = v102;
  }

  v101 = (24 * v20 + 24);
  *a5 = 0;
  if (v16 < v17)
  {
    *(24 * v20 + 0x18) = v90;
    *(24 * v20 + 0x20) = a2;
    *(24 * v20 + 0x28) = 1;
    v26 = 24 * v20 + 48;
    goto LABEL_27;
  }

LABEL_18:
  v27 = __p;
  v28 = v16 - __p;
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v16 - __p) >> 3);
  v30 = v29 + 1;
  if (v29 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10028C64C();
  }

  if (0x5555555555555556 * ((v17 - __p) >> 3) > v30)
  {
    v30 = 0x5555555555555556 * ((v17 - __p) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v17 - __p) >> 3) >= 0x555555555555555)
  {
    v30 = 0xAAAAAAAAAAAAAAALL;
  }

  if (v30)
  {
    sub_1001AB518(&__p, v30);
  }

  v31 = 8 * ((v16 - __p) >> 3);
  v17 = 0;
  *v31 = v90;
  *(v31 + 8) = a2;
  *(v31 + 16) = 1;
  v26 = 24 * v29 + 24;
  v32 = (24 * v29 - v28);
  memcpy(v32, v27, v28);
  v33 = __p;
  __p = v32;
  v101 = v26;
  v102 = 0;
  if (v33)
  {
    operator delete(v33);
    v17 = v102;
  }

LABEL_27:
  v101 = v26;
  if (a7 > 0.0)
  {
    if (v26 >= v17)
    {
      v34 = __p;
      v35 = v26 - __p;
      v36 = 0xAAAAAAAAAAAAAAABLL * ((v26 - __p) >> 3);
      v37 = v36 + 1;
      if (v36 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_10028C64C();
      }

      if (0x5555555555555556 * ((v17 - __p) >> 3) > v37)
      {
        v37 = 0x5555555555555556 * ((v17 - __p) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v17 - __p) >> 3) >= 0x555555555555555)
      {
        v37 = 0xAAAAAAAAAAAAAAALL;
      }

      if (v37)
      {
        sub_1001AB518(&__p, v37);
      }

      v38 = 8 * ((v26 - __p) >> 3);
      v17 = 0;
      *v38 = v85;
      *(v38 + 8) = a2;
      *(v38 + 16) = 0x200000000;
      v26 = 24 * v36 + 24;
      v39 = (24 * v36 - v35);
      memcpy(v39, v34, v35);
      v40 = __p;
      __p = v39;
      v101 = v26;
      v102 = 0;
      if (v40)
      {
        operator delete(v40);
        v17 = v102;
      }
    }

    else
    {
      *v26 = v85;
      *(v26 + 8) = a2;
      *(v26 + 16) = 0x200000000;
      v26 += 24;
    }

    v101 = v26;
  }

  if (v26 >= v17)
  {
    v42 = __p;
    v43 = v26 - __p;
    v44 = 0xAAAAAAAAAAAAAAABLL * ((v26 - __p) >> 3);
    v45 = v44 + 1;
    if (v44 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10028C64C();
    }

    if (0x5555555555555556 * ((v17 - __p) >> 3) > v45)
    {
      v45 = 0x5555555555555556 * ((v17 - __p) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v17 - __p) >> 3) >= 0x555555555555555)
    {
      v45 = 0xAAAAAAAAAAAAAAALL;
    }

    if (v45)
    {
      sub_1001AB518(&__p, v45);
    }

    v46 = 8 * ((v26 - __p) >> 3);
    v17 = 0;
    *v46 = v89;
    *(v46 + 8) = a2;
    *(v46 + 16) = 2;
    v41 = 24 * v44 + 24;
    v47 = (v46 - v43);
    memcpy((v46 - v43), v42, v43);
    v48 = __p;
    __p = v47;
    v101 = v41;
    v102 = 0;
    if (v48)
    {
      operator delete(v48);
      v17 = v102;
    }
  }

  else
  {
    *v26 = v89;
    *(v26 + 8) = a2;
    *(v26 + 16) = 2;
    v41 = v26 + 24;
  }

  v101 = v41;
  if (v41 >= v17)
  {
    v50 = __p;
    v51 = v41 - __p;
    v52 = 0xAAAAAAAAAAAAAAABLL * ((v41 - __p) >> 3);
    v53 = v52 + 1;
    if (v52 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10028C64C();
    }

    if (0x5555555555555556 * ((v17 - __p) >> 3) > v53)
    {
      v53 = 0x5555555555555556 * ((v17 - __p) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v17 - __p) >> 3) >= 0x555555555555555)
    {
      v53 = 0xAAAAAAAAAAAAAAALL;
    }

    if (v53)
    {
      sub_1001AB518(&__p, v53);
    }

    v54 = 24 * v52;
    *v54 = v88;
    *(v54 + 8) = a2;
    *(v54 + 16) = 1;
    v49 = (24 * v52 + 24);
    v55 = (24 * v52 - v51);
    memcpy(v55, v50, v51);
    v56 = __p;
    __p = v55;
    v101 = v49;
    v102 = 0;
    if (v56)
    {
      operator delete(v56);
    }
  }

  else
  {
    *v41 = v88;
    *(v41 + 8) = a2;
    v24.n128_u64[0] = 1;
    *(v41 + 16) = 1;
    v49 = (v41 + 24);
  }

  v101 = v49;
  v57 = *a4;
  v58 = a4[1];
  if (*a4 != v58)
  {
    do
    {
      v59 = *v57;
      v60 = *(v57 + 8);
      v61 = *(v57 + 12);
      v91 = a6;
      v92 = v86;
      v93 = v90;
      v94 = v85;
      v95 = v89;
      v96 = v88;
      v97 = v87;
      v98 = v13;
      *v99 = *&v99[7];
      *&v99[3] = *&v99[10];
      v62 = sub_10051C93C(v60, &v91);
      v91 = a6;
      v92 = v86;
      v93 = v90;
      v94 = v85;
      v95 = v89;
      v96 = v88;
      v97 = v87;
      v98 = v13;
      *v99 = *&v99[7];
      *&v99[3] = *&v99[10];
      v63 = sub_10051C93C(v61, &v91);
      v24.n128_f64[0] = v63 - v62;
      if (v63 - v62 > 3.84)
      {
        v64 = v102;
        if (v49 >= v102)
        {
          v66 = __p;
          v67 = v49 - __p;
          v68 = 0xAAAAAAAAAAAAAAABLL * ((v49 - __p) >> 3);
          v69 = v68 + 1;
          if (v68 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v102 - __p) >> 3) > v69)
          {
            v69 = 0x5555555555555556 * ((v102 - __p) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v102 - __p) >> 3) >= 0x555555555555555)
          {
            v69 = 0xAAAAAAAAAAAAAAALL;
          }

          if (v69)
          {
            sub_1001AB518(&__p, v69);
          }

          v70 = 8 * ((v49 - __p) >> 3);
          *v70 = v62;
          v64 = 0;
          *(v70 + 8) = v59;
          *(v70 + 16) = 0x200000000;
          v65 = 24 * v68 + 24;
          v71 = (24 * v68 - v67);
          memcpy((v70 - v67), v66, v67);
          v72 = __p;
          __p = v71;
          v101 = v65;
          v102 = 0;
          if (v72)
          {
            operator delete(v72);
            v64 = v102;
          }
        }

        else
        {
          v49->n128_f64[0] = v62;
          v49->n128_u64[1] = v59;
          v65 = &v49[1].n128_u64[1];
          v49[1].n128_u64[0] = 0x200000000;
        }

        v101 = v65;
        if (v65 >= v64)
        {
          v73 = __p;
          v74 = v65 - __p;
          v75 = 0xAAAAAAAAAAAAAAABLL * ((v65 - __p) >> 3);
          v76 = v75 + 1;
          if (v75 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v64 - __p) >> 3) > v76)
          {
            v76 = 0x5555555555555556 * ((v64 - __p) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v64 - __p) >> 3) >= 0x555555555555555)
          {
            v76 = 0xAAAAAAAAAAAAAAALL;
          }

          if (v76)
          {
            sub_1001AB518(&__p, v76);
          }

          v77 = 8 * ((v65 - __p) >> 3);
          *v77 = v63;
          *(v77 + 8) = v59;
          *(v77 + 16) = dword_100000000;
          v49 = (24 * v75 + 24);
          v78 = (24 * v75 - v74);
          memcpy((v77 - v74), v73, v74);
          v79 = __p;
          __p = v78;
          v101 = v49;
          v102 = 0;
          if (v79)
          {
            operator delete(v79);
          }
        }

        else
        {
          *v65 = v63;
          *(v65 + 8) = v59;
          v49 = (v65 + 24);
          v24.n128_u64[0] = dword_100000000;
          *(v65 + 16) = dword_100000000;
        }

        v101 = v49;
      }

      v57 += 16;
    }

    while (v57 != v58);
  }

  v80 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v49 - __p) >> 3));
  if (v49 == __p)
  {
    v81 = 0;
  }

  else
  {
    v81 = v80;
  }

  sub_10051D79C(__p, v49, v81, 1, v24);
  v83 = __p;
  v82 = v101;
  if (__p != v101)
  {
    do
    {
      sub_10051D35C((a1 + 472), v83);
      v83 = (v83 + 24);
    }

    while (v83 != v82);
    v83 = __p;
  }

  if (v83)
  {
    v101 = v83;
    operator delete(v83);
  }

  return v87 + 2.56;
}

void sub_10051D318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10051D35C(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 170 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10051EE2C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  result = *a2;
  v8[1].n128_u64[0] = a2[1].n128_u64[0];
  *v8 = result;
  ++a1[5];
  return result;
}

uint64_t sub_10051D40C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  v4 = result;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = (result + 504);
  while (v4[64])
  {
    v7 = *(v4[60] + 8 * (v4[63] / 0xAAuLL)) + 24 * (v4[63] % 0xAAuLL);
    v8 = *v7;
    if (*v7 > *(a2 + 296))
    {
      break;
    }

    v9 = v8 + -5.0;
    v11 = *(v7 + 16);
    v10 = *(v7 + 20);
    v12 = *(v7 + 8);
    v13 = a3[1];
    v14 = a3[2];
    if (v13 >= v14)
    {
      v16 = *a3;
      v17 = v13 - *a3;
      v18 = v17 >> 5;
      v19 = (v17 >> 5) + 1;
      if (v19 >> 59)
      {
        sub_10028C64C();
      }

      v20 = v14 - v16;
      if (v20 >> 4 > v19)
      {
        v19 = v20 >> 4;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFE0)
      {
        v19 = 0x7FFFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        sub_1003F6B14(a3, v19);
      }

      v21 = 32 * v18;
      *v21 = v8;
      *(v21 + 8) = v9;
      *(v21 + 16) = v11;
      *(v21 + 20) = v10;
      *(v21 + 24) = v12;
      v15 = (32 * v18 + 32);
      v22 = (v21 - 32 * (v17 >> 5));
      memcpy(v22, v16, v17);
      v23 = *a3;
      *a3 = v22;
      a3[1] = v15;
      a3[2] = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v13 = v8;
      v13[1] = v9;
      *(v13 + 4) = v11;
      *(v13 + 5) = v10;
      v15 = v13 + 4;
      *(v13 + 3) = v12;
    }

    a3[1] = v15;
    *v6 = vaddq_s64(*v6, xmmword_101C66230);
    result = sub_10027E208((v4 + 59), 1);
  }

  return result;
}

void sub_10051D5C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10051D5E8(void *a1)
{
  *a1 = off_10245C040;
  sub_1000F8B58(a1 + 59);

  return sub_10051C8C8(a1);
}

void sub_10051D640(void *a1)
{
  *a1 = off_10245C040;
  sub_1000F8B58(a1 + 59);
  sub_10051C8C8(a1);

  operator delete();
}

void sub_10051D6DC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10051D730(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_10051D730(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 32))(result);
    }
  }

  v1[1] = v2;
  return result;
}

__n128 sub_10051D79C(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = &a2[-2].n128_u64[1];
  v10 = a2 - 3;
  v11 = &a2[-5].n128_f64[1];
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v90 = a2[-2].n128_f64[1];
        v89 = &a2[-2].n128_i8[8];
        result.n128_f64[0] = v90;
        if (v90 >= v12->n128_f64[0])
        {
          return result;
        }

LABEL_106:
        v198 = v12[1].n128_u64[0];
        v169 = *v12;
        v94 = *v89;
        v12[1].n128_u64[0] = *(v89 + 2);
        *v12 = v94;
        result = v169;
        *(v89 + 2) = v198;
LABEL_107:
        *v89 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v91 = (v12 + 24);
      v95 = v12[1].n128_f64[1];
      v96 = v12 + 3;
      v97 = v12[3].n128_f64[0];
      if (v95 >= v12->n128_f64[0])
      {
        if (v97 < v95)
        {
          v138 = v12[2].n128_u64[1];
          result = *v91;
          *v91 = *v96;
          v12[2].n128_u64[1] = v12[4].n128_u64[0];
          *v96 = result;
          v12[4].n128_u64[0] = v138;
          if (v12[1].n128_f64[1] < v12->n128_f64[0])
          {
            v201 = v12[1].n128_u64[0];
            v174 = *v12;
            *v12 = *v91;
            v12[1].n128_u64[0] = v12[2].n128_u64[1];
            result.n128_u64[1] = v174.n128_u64[1];
            *v91 = v174;
            v12[2].n128_u64[1] = v201;
          }
        }
      }

      else
      {
        if (v97 < v95)
        {
          v199 = v12[1].n128_u64[0];
          v170 = *v12;
          *v12 = *v96;
          v12[1].n128_u64[0] = v12[4].n128_u64[0];
          result.n128_u64[1] = v170.n128_u64[1];
          *v96 = v170;
          v98 = v199;
          goto LABEL_177;
        }

        v203 = v12[1].n128_u64[0];
        v177 = *v12;
        *v12 = *v91;
        v12[1].n128_u64[0] = v12[2].n128_u64[1];
        *v91 = v177;
        v12[2].n128_u64[1] = v203;
        if (v97 < v12[1].n128_f64[1])
        {
          v98 = v12[2].n128_u64[1];
          result = *v91;
          *v91 = *v96;
          v12[2].n128_u64[1] = v12[4].n128_u64[0];
          *v96 = result;
LABEL_177:
          v12[4].n128_u64[0] = v98;
        }
      }

      result.n128_u64[0] = *v9;
      if (*v9 >= v96->n128_f64[0])
      {
        return result;
      }

      result = *v96;
      v144 = v12[4].n128_u64[0];
      v145 = a2[-1].n128_u64[1];
      *v96 = *v9;
      v12[4].n128_u64[0] = v145;
      a2[-1].n128_u64[1] = v144;
      *v9 = result;
      result.n128_u64[0] = v96->n128_u64[0];
      if (v96->n128_f64[0] >= v91->n128_f64[0])
      {
        return result;
      }

      v146 = v12[2].n128_u64[1];
      result = *v91;
      *v91 = *v96;
      v12[2].n128_u64[1] = v12[4].n128_u64[0];
      *v96 = result;
      v12[4].n128_u64[0] = v146;
LABEL_181:
      result.n128_u64[0] = v12[1].n128_u64[1];
      if (result.n128_f64[0] < v12->n128_f64[0])
      {
        v204 = v12[1].n128_u64[0];
        v178 = *v12;
        *v12 = *v91;
        v12[1].n128_u64[0] = v91[1].n128_u64[0];
        result = v178;
        *v91 = v178;
        v91[1].n128_u64[0] = v204;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_10051E704(v12, (v12 + 24), v12 + 3, (v12 + 72), &a2[-2].n128_u64[1], result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v99 = (v12 + 24);
      v101 = v12 == a2 || v99 == a2;
      if (a4)
      {
        if (!v101)
        {
          v102 = 0;
          v103 = v12;
          do
          {
            v104 = v99;
            result.n128_u64[0] = v103[1].n128_u64[1];
            if (result.n128_f64[0] < v103->n128_f64[0])
            {
              v171 = v103[2];
              v105 = v102;
              while (1)
              {
                v106 = v12 + v105;
                *(v106 + 24) = *(v12 + v105);
                *(v106 + 5) = *(v12[1].n128_u64 + v105);
                if (!v105)
                {
                  break;
                }

                v105 -= 24;
                if (result.n128_f64[0] >= *(v106 - 3))
                {
                  v107 = &v12[1].n128_i64[1] + v105;
                  goto LABEL_126;
                }
              }

              v107 = v12;
LABEL_126:
              *v107 = result.n128_u64[0];
              result = v171;
              *(v107 + 8) = v171;
            }

            v99 = (v104 + 24);
            v102 += 24;
            v103 = v104;
          }

          while (&v104[1].n128_i8[8] != a2);
        }
      }

      else if (!v101)
      {
        do
        {
          v139 = v99;
          result.n128_u64[0] = a1[1].n128_u64[1];
          if (result.n128_f64[0] < a1->n128_f64[0])
          {
            v175 = a1[2];
            v140 = v99;
            do
            {
              *v140 = *(v140 - 24);
              v140[1].n128_u64[0] = v140[-1].n128_u64[1];
              v141 = v140[-3].n128_f64[0];
              v140 = (v140 - 24);
            }

            while (result.n128_f64[0] < v141);
            v140->n128_u64[0] = result.n128_u64[0];
            result = v175;
            *(v140 + 8) = v175;
          }

          v99 = (v99 + 24);
          a1 = v139;
        }

        while (&v139[1].n128_i8[8] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v108 = (v14 - 2) >> 1;
        v109 = v108;
        do
        {
          v110 = v109;
          if (v108 >= v109)
          {
            v111 = (2 * v109) | 1;
            v112 = &v12->n128_f64[3 * v111];
            if (2 * v110 + 2 < v14 && *v112 < v112[3])
            {
              v112 += 3;
              v111 = 2 * v110 + 2;
            }

            v113 = &v12->n128_f64[3 * v110];
            v114 = *v113;
            if (*v112 >= *v113)
            {
              v172 = *(v113 + 1);
              do
              {
                v115 = v113;
                v113 = v112;
                v116 = *v112;
                v115[2] = v112[2];
                *v115 = v116;
                if (v108 < v111)
                {
                  break;
                }

                v117 = 2 * v111;
                v111 = (2 * v111) | 1;
                v112 = &v12->n128_f64[3 * v111];
                v118 = v117 + 2;
                if (v118 < v14 && *v112 < v112[3])
                {
                  v112 += 3;
                  v111 = v118;
                }
              }

              while (*v112 >= v114);
              *v113 = v114;
              *(v113 + 1) = v172;
            }
          }

          v109 = v110 - 1;
        }

        while (v110);
        v119 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v120 = 0;
          v200 = v12[1].n128_u64[0];
          v173 = *v12;
          v121 = v12;
          do
          {
            v122 = v121;
            v123 = v121 + 24 * v120;
            v121 = (v123 + 24);
            v124 = 2 * v120;
            v120 = (2 * v120) | 1;
            v125 = v124 + 2;
            if (v125 < v119)
            {
              v127 = *(v123 + 6);
              v126 = (v123 + 48);
              if (v126[-2].n128_f64[1] < v127)
              {
                v121 = v126;
                v120 = v125;
              }
            }

            v128 = *v121;
            v122[1].n128_u64[0] = v121[1].n128_u64[0];
            *v122 = v128;
          }

          while (v120 <= ((v119 - 2) >> 1));
          a2 = (a2 - 24);
          if (v121 == a2)
          {
            result = v173;
            v121[1].n128_u64[0] = v200;
            *v121 = v173;
          }

          else
          {
            v129 = *a2;
            v121[1].n128_u64[0] = a2[1].n128_u64[0];
            *v121 = v129;
            result = v173;
            a2[1].n128_u64[0] = v200;
            *a2 = v173;
            v130 = v121 - v12 + 24;
            if (v130 >= 25)
            {
              v131 = (-2 - 0x5555555555555555 * (v130 >> 3)) >> 1;
              v132 = (v12 + 24 * v131);
              result.n128_u64[0] = v121->n128_u64[0];
              if (v132->n128_f64[0] < v121->n128_f64[0])
              {
                v149 = *(v121 + 8);
                do
                {
                  v133 = v121;
                  v121 = v132;
                  v134 = *v132;
                  v133[1].n128_u64[0] = v132[1].n128_u64[0];
                  *v133 = v134;
                  if (!v131)
                  {
                    break;
                  }

                  v131 = (v131 - 1) >> 1;
                  v132 = (v12 + 24 * v131);
                }

                while (v132->n128_f64[0] < result.n128_f64[0]);
                v121->n128_u64[0] = result.n128_u64[0];
                result = v149;
                *(v121 + 8) = v149;
              }
            }
          }
        }

        while (v119-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = *v9;
    if (v13 >= 0xC01)
    {
      v18 = v16->n128_f64[0];
      if (v16->n128_f64[0] >= v12->n128_f64[0])
      {
        if (v17 < v18)
        {
          v181 = v16[1].n128_u64[0];
          v152 = *v16;
          v22 = *v9;
          v16[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v16 = v22;
          a2[-1].n128_u64[1] = v181;
          *v9 = v152;
          if (v16->n128_f64[0] < v12->n128_f64[0])
          {
            v182 = v12[1].n128_u64[0];
            v153 = *v12;
            v23 = *v16;
            v12[1].n128_u64[0] = v16[1].n128_u64[0];
            *v12 = v23;
            v16[1].n128_u64[0] = v182;
            *v16 = v153;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v179 = v12[1].n128_u64[0];
          v150 = *v12;
          v19 = *v9;
          v12[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v12 = v19;
          goto LABEL_26;
        }

        v185 = v12[1].n128_u64[0];
        v156 = *v12;
        v26 = *v16;
        v12[1].n128_u64[0] = v16[1].n128_u64[0];
        *v12 = v26;
        v16[1].n128_u64[0] = v185;
        *v16 = v156;
        if (*v9 < v16->n128_f64[0])
        {
          v179 = v16[1].n128_u64[0];
          v150 = *v16;
          v27 = *v9;
          v16[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v16 = v27;
LABEL_26:
          a2[-1].n128_u64[1] = v179;
          *v9 = v150;
        }
      }

      v28 = (v12 + 24);
      v29 = &v12->n128_f64[3 * v15];
      v31 = *(v29 - 3);
      v30 = (v29 - 3);
      v32 = v31;
      v33 = v10->n128_f64[0];
      if (v31 >= v12[1].n128_f64[1])
      {
        if (v33 < v32)
        {
          v186 = v30[1].n128_u64[0];
          v157 = *v30;
          v37 = *v10;
          v30[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v30 = v37;
          a2[-2].n128_u64[0] = v186;
          *v10 = v157;
          if (v30->n128_f64[0] < v28->n128_f64[0])
          {
            v38 = *v28;
            v39 = v12[2].n128_u64[1];
            v40 = v30[1].n128_u64[0];
            *v28 = *v30;
            v12[2].n128_u64[1] = v40;
            v30[1].n128_u64[0] = v39;
            *v30 = v38;
          }
        }
      }

      else
      {
        if (v33 < v32)
        {
          v34 = *v28;
          v35 = v12[2].n128_u64[1];
          v36 = a2[-2].n128_u64[0];
          *v28 = *v10;
          v12[2].n128_u64[1] = v36;
          a2[-2].n128_u64[0] = v35;
          goto LABEL_38;
        }

        v43 = *v28;
        v44 = v12[2].n128_u64[1];
        v45 = v30[1].n128_u64[0];
        *v28 = *v30;
        v12[2].n128_u64[1] = v45;
        v30[1].n128_u64[0] = v44;
        *v30 = v43;
        if (v10->n128_f64[0] < v30->n128_f64[0])
        {
          v188 = v30[1].n128_u64[0];
          v159 = *v30;
          v46 = *v10;
          v30[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v30 = v46;
          v34 = v159;
          a2[-2].n128_u64[0] = v188;
LABEL_38:
          *v10 = v34;
        }
      }

      v47 = v12 + 3;
      v48 = &v12->n128_f64[3 * v15];
      v50 = v48[3];
      v49 = (v48 + 3);
      v51 = v50;
      v52 = *v11;
      if (v50 >= v12[3].n128_f64[0])
      {
        if (v52 < v51)
        {
          v189 = v49[1].n128_u64[0];
          v160 = *v49;
          v56 = *v11;
          v49[1].n128_u64[0] = a2[-4].n128_u64[1];
          *v49 = v56;
          a2[-4].n128_u64[1] = v189;
          *v11 = v160;
          if (v49->n128_f64[0] < v47->n128_f64[0])
          {
            v57 = *v47;
            v58 = v12[4].n128_u64[0];
            v59 = v49[1].n128_u64[0];
            *v47 = *v49;
            v12[4].n128_u64[0] = v59;
            v49[1].n128_u64[0] = v58;
            *v49 = v57;
          }
        }
      }

      else
      {
        if (v52 < v51)
        {
          v53 = *v47;
          v54 = v12[4].n128_u64[0];
          v55 = a2[-4].n128_u64[1];
          *v47 = *v11;
          v12[4].n128_u64[0] = v55;
          a2[-4].n128_u64[1] = v54;
          goto LABEL_47;
        }

        v60 = *v47;
        v61 = v12[4].n128_u64[0];
        v62 = v49[1].n128_u64[0];
        *v47 = *v49;
        v12[4].n128_u64[0] = v62;
        v49[1].n128_u64[0] = v61;
        *v49 = v60;
        if (*v11 < v49->n128_f64[0])
        {
          v190 = v49[1].n128_u64[0];
          v161 = *v49;
          v63 = *v11;
          v49[1].n128_u64[0] = a2[-4].n128_u64[1];
          *v49 = v63;
          v53 = v161;
          a2[-4].n128_u64[1] = v190;
LABEL_47:
          *v11 = v53;
        }
      }

      v64 = v16->n128_f64[0];
      v65 = v49->n128_f64[0];
      if (v16->n128_f64[0] >= v30->n128_f64[0])
      {
        if (v65 < v64)
        {
          v192 = v16[1].n128_u64[0];
          v163 = *v16;
          *v16 = *v49;
          v16[1].n128_u64[0] = v49[1].n128_u64[0];
          v49[1].n128_u64[0] = v192;
          *v49 = v163;
          if (v16->n128_f64[0] < v30->n128_f64[0])
          {
            v193 = v30[1].n128_u64[0];
            v164 = *v30;
            *v30 = *v16;
            v30[1].n128_u64[0] = v16[1].n128_u64[0];
            v16[1].n128_u64[0] = v193;
            *v16 = v164;
          }
        }
      }

      else
      {
        if (v65 < v64)
        {
          v191 = v30[1].n128_u64[0];
          v162 = *v30;
          *v30 = *v49;
          v30[1].n128_u64[0] = v49[1].n128_u64[0];
          goto LABEL_56;
        }

        v194 = v30[1].n128_u64[0];
        v165 = *v30;
        *v30 = *v16;
        v30[1].n128_u64[0] = v16[1].n128_u64[0];
        v16[1].n128_u64[0] = v194;
        *v16 = v165;
        if (v49->n128_f64[0] < v16->n128_f64[0])
        {
          v191 = v16[1].n128_u64[0];
          v162 = *v16;
          *v16 = *v49;
          v16[1].n128_u64[0] = v49[1].n128_u64[0];
LABEL_56:
          v49[1].n128_u64[0] = v191;
          *v49 = v162;
        }
      }

      v195 = v12[1].n128_u64[0];
      v166 = *v12;
      v66 = *v16;
      v12[1].n128_u64[0] = v16[1].n128_u64[0];
      *v12 = v66;
      v16[1].n128_u64[0] = v195;
      *v16 = v166;
      goto LABEL_58;
    }

    v20 = v12->n128_f64[0];
    if (v12->n128_f64[0] >= v16->n128_f64[0])
    {
      if (v17 < v20)
      {
        v183 = v12[1].n128_u64[0];
        v154 = *v12;
        v24 = *v9;
        v12[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v12 = v24;
        a2[-1].n128_u64[1] = v183;
        *v9 = v154;
        if (v12->n128_f64[0] < v16->n128_f64[0])
        {
          v184 = v16[1].n128_u64[0];
          v155 = *v16;
          v25 = *v12;
          v16[1].n128_u64[0] = v12[1].n128_u64[0];
          *v16 = v25;
          v12[1].n128_u64[0] = v184;
          *v12 = v155;
        }
      }

      goto LABEL_58;
    }

    if (v17 >= v20)
    {
      v187 = v16[1].n128_u64[0];
      v158 = *v16;
      v41 = *v12;
      v16[1].n128_u64[0] = v12[1].n128_u64[0];
      *v16 = v41;
      v12[1].n128_u64[0] = v187;
      *v12 = v158;
      if (*v9 >= v12->n128_f64[0])
      {
        goto LABEL_58;
      }

      v180 = v12[1].n128_u64[0];
      v151 = *v12;
      v42 = *v9;
      v12[1].n128_u64[0] = a2[-1].n128_u64[1];
      *v12 = v42;
    }

    else
    {
      v180 = v16[1].n128_u64[0];
      v151 = *v16;
      v21 = *v9;
      v16[1].n128_u64[0] = a2[-1].n128_u64[1];
      *v16 = v21;
    }

    a2[-1].n128_u64[1] = v180;
    *v9 = v151;
LABEL_58:
    --a3;
    v67 = v12->n128_f64[0];
    if ((a4 & 1) != 0 || v12[-2].n128_f64[1] < v67)
    {
      v68 = 0;
      v147 = *(v12 + 8);
      do
      {
        v69 = v12[1].n128_f64[v68 + 1];
        v68 += 3;
      }

      while (v69 < v67);
      v70 = v12 + v68 * 8;
      v71 = a2;
      if (v68 == 3)
      {
        v71 = a2;
        do
        {
          if (v70 >= v71)
          {
            break;
          }

          v73 = v71[-2].n128_f64[1];
          v71 = (v71 - 24);
        }

        while (v73 >= v67);
      }

      else
      {
        do
        {
          v72 = v71[-2].n128_f64[1];
          v71 = (v71 - 24);
        }

        while (v72 >= v67);
      }

      v12 = (v12 + v68 * 8);
      if (v70 < v71)
      {
        v74 = v71;
        do
        {
          v196 = v12[1].n128_u64[0];
          v167 = *v12;
          v75 = *v74;
          v12[1].n128_u64[0] = v74[1].n128_u64[0];
          *v12 = v75;
          v74[1].n128_u64[0] = v196;
          *v74 = v167;
          do
          {
            v76 = v12[1].n128_f64[1];
            v12 = (v12 + 24);
          }

          while (v76 < v67);
          do
          {
            v77 = v74[-2].n128_f64[1];
            v74 = (v74 - 24);
          }

          while (v77 >= v67);
        }

        while (v12 < v74);
      }

      if (&v12[-2].n128_i8[8] != a1)
      {
        v78 = *(v12 - 24);
        a1[1].n128_u64[0] = v12[-1].n128_u64[1];
        *a1 = v78;
      }

      v12[-2].n128_f64[1] = v67;
      result = v147;
      v12[-1] = v147;
      if (v70 < v71)
      {
        goto LABEL_79;
      }

      v79 = sub_10051E94C(a1, &v12[-2].n128_i64[1], v147);
      if (sub_10051E94C(v12, a2, v80))
      {
        a2 = (v12 - 24);
        if (!v79)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v79)
      {
LABEL_79:
        result = sub_10051D79C(a1, (v12 - 24), a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      v148 = *(v12 + 8);
      if (v67 >= *v9)
      {
        v82 = &v12[1].n128_u64[1];
        do
        {
          v12 = v82;
          if (v82 >= a2)
          {
            break;
          }

          v82 += 24;
        }

        while (v67 >= v12->n128_f64[0]);
      }

      else
      {
        do
        {
          v81 = v12[1].n128_f64[1];
          v12 = (v12 + 24);
        }

        while (v67 >= v81);
      }

      v83 = a2;
      if (v12 < a2)
      {
        v83 = a2;
        do
        {
          v84 = v83[-2].n128_f64[1];
          v83 = (v83 - 24);
        }

        while (v67 < v84);
      }

      while (v12 < v83)
      {
        v197 = v12[1].n128_u64[0];
        v168 = *v12;
        v85 = *v83;
        v12[1].n128_u64[0] = v83[1].n128_u64[0];
        *v12 = v85;
        v83[1].n128_u64[0] = v197;
        *v83 = v168;
        do
        {
          v86 = v12[1].n128_f64[1];
          v12 = (v12 + 24);
        }

        while (v67 >= v86);
        do
        {
          v87 = v83[-2].n128_f64[1];
          v83 = (v83 - 24);
        }

        while (v67 < v87);
      }

      if (&v12[-2].n128_i8[8] != a1)
      {
        v88 = *(v12 - 24);
        a1[1].n128_u64[0] = v12[-1].n128_u64[1];
        *a1 = v88;
      }

      a4 = 0;
      v12[-2].n128_f64[1] = v67;
      result = v148;
      v12[-1] = v148;
    }
  }

  v91 = (v12 + 24);
  result.n128_u64[0] = v12[1].n128_u64[1];
  v92 = a2[-2].n128_u64[1];
  v89 = &a2[-2].n128_i8[8];
  v93 = *&v92;
  if (result.n128_f64[0] >= v12->n128_f64[0])
  {
    if (v93 >= result.n128_f64[0])
    {
      return result;
    }

    result = *v91;
    v136 = v12[2].n128_u64[1];
    v137 = *(v89 + 2);
    *v91 = *v89;
    v12[2].n128_u64[1] = v137;
    *(v89 + 2) = v136;
    *v89 = result;
    goto LABEL_181;
  }

  if (v93 < result.n128_f64[0])
  {
    goto LABEL_106;
  }

  v202 = v12[1].n128_u64[0];
  v176 = *v12;
  *v12 = *v91;
  v12[1].n128_u64[0] = v12[2].n128_u64[1];
  result.n128_u64[1] = v176.n128_u64[1];
  *v91 = v176;
  v12[2].n128_u64[1] = v202;
  result.n128_u64[0] = *v89;
  if (*v89 < v12[1].n128_f64[1])
  {
    result = *v91;
    v142 = v12[2].n128_u64[1];
    v143 = *(v89 + 2);
    *v91 = *v89;
    v12[2].n128_u64[1] = v143;
    *(v89 + 2) = v142;
    goto LABEL_107;
  }

  return result;
}

__n128 sub_10051E704(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unint64_t *a5, __n128 result)
{
  v6 = a2->n128_f64[0];
  v7 = a3->n128_f64[0];
  if (a2->n128_f64[0] >= a1->n128_f64[0])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a3->n128_f64[0] < a2->n128_f64[0])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f64[0] < a3->n128_f64[0])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3->n128_f64[0] < a2->n128_f64[0])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  result.n128_u64[0] = *a5;
  if (*a5 < a4->n128_f64[0])
  {
    v23 = a4[1].n128_u64[0];
    result = *a4;
    v24 = a5[2];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[2] = v23;
    result.n128_u64[0] = a4->n128_u64[0];
    if (a4->n128_f64[0] < a3->n128_f64[0])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      result.n128_u64[0] = a3->n128_u64[0];
      if (a3->n128_f64[0] < a2->n128_f64[0])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        result.n128_u64[0] = a2->n128_u64[0];
        if (a2->n128_f64[0] < a1->n128_f64[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL sub_10051E94C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v8 = *(a2 - 24);
      v4 = (a2 - 24);
      v9 = v8;
      if (v7 < *a1)
      {
        if (v9 >= v7)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (v4->n128_f64[0] < *(a1 + 24))
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_48:
      if (*(a1 + 24) < *a1)
      {
        v61 = *(a1 + 16);
        v62 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v62;
        v6[1].n128_u64[0] = v61;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_10051E704(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v6->n128_f64[0] < v24)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v22 >= v20)
    {
      v54 = *(a1 + 16);
      v55 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v55;
      *(a1 + 40) = v54;
      if (v22 >= *(a1 + 24))
      {
        goto LABEL_45;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_45:
    if (*v23 >= v21->n128_f64[0])
    {
      return 1;
    }

    v56 = *(a1 + 64);
    v57 = *v21;
    v58 = *(a2 - 8);
    *v21 = *v23;
    *(a1 + 64) = v58;
    *v23 = v57;
    *(a2 - 8) = v56;
    if (v21->n128_f64[0] >= v6->n128_f64[0])
    {
      return 1;
    }

    v59 = *(a1 + 40);
    v60 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v60;
    *(a1 + 64) = v59;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 24);
    v4 = (a2 - 24);
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v15->n128_f64[0] < v17)
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (v14 < *(a1 + 24))
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v47;
    if (*v47 < v13->n128_f64[0])
    {
      v64 = *(v47 + 8);
      v51 = v48;
      while (1)
      {
        v52 = a1 + v51;
        *(v52 + 72) = *(a1 + v51 + 48);
        *(v52 + 88) = *(a1 + v51 + 64);
        if (v51 == -48)
        {
          break;
        }

        v51 -= 24;
        if (v50 >= *(v52 + 24))
        {
          v53 = a1 + v51 + 72;
          goto LABEL_39;
        }
      }

      v53 = a1;
LABEL_39:
      *v53 = v50;
      *(v53 + 8) = v64;
      if (++v49 == 8)
      {
        return v47 + 24 == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 += 24;
    if (v47 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_10051EDB8(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004BF97C(result, a4);
  }

  return result;
}

void sub_10051EE10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10051EE2C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
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
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_10051EFB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10051F000(uint64_t a1, double *a2)
{
  if ((atomic_load_explicit(&qword_102656C50, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_102656C50))
    {
      LODWORD(v6[0]) = 8;
      qword_102656C40 = 0;
      unk_102656C48 = 0;
      qword_102656C38 = 0;
      sub_1004579D4(&qword_102656C38, v6, v6 + 1, 1uLL);
      __cxa_atexit(sub_10051F310, &qword_102656C38, dword_100000000);
      __cxa_guard_release(&qword_102656C50);
    }
  }

  v7 = 0;
  *v6 = xmmword_101C78400;
  memset(&v6[2], 0, 135);
  v8 = xmmword_101C78400;
  v9 = 0;
  v10 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0u;
  v16 = xmmword_101C78400;
  v17 = 0;
  v18 = 0;
  v19 = 0xFFEFFFFFFFFFFFFFLL;
  v30 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  v31 = 0u;
  v32 = 0xFFEFFFFFFFFFFFFFLL;
  v33 = 0;
  v34 = 0;
  v39 = 0;
  v40 = 0;
  v45 = 0;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  v35 = 0u;
  v36 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  memset(v44, 0, sizeof(v44));
  v46 = 0xFFEFFFFFFFFFFFFFLL;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0xFFEFFFFFFFFFFFFFLL;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0xFFEFFFFFFFFFFFFFLL;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0xFFEFFFFFFFFFFFFFLL;
  v78 = 0u;
  v79 = 0x80000000800000;
  v80 = 0u;
  v81 = xmmword_101C78410;
  v82 = 0x80000000800000;
  v83 = 0u;
  v84 = 0u;
  v85 = 0;
  v86 = 0xFFEFFFFFFFFFFFFFLL;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0;
  v94 = 0xFFEFFFFFFFFFFFFFLL;
  v95 = 0;
  v96 = 0;
  v97 = 0xFFEFFFFFFFFFFFFFLL;
  v98 = 7;
  v99 = 0xFFEFFFFFFFFFFFFFLL;
  v100 = 0;
  v102 = 0;
  v101 = 0u;
  if (!sub_1000C2B7C(a2, &qword_102656C38, v6))
  {
    return 0;
  }

  if (*(&v52 + 1) > 0.0)
  {
    v4 = *(a1 + 8) + 1;
    *(a1 + 8) = v4;
    if (v4 >= 0x24)
    {
      *(a1 + 8) = 0;
      return 2;
    }

    return 0;
  }

  result = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_10051F310(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10051F3A0(id *a1)
{
  *a1 = off_10245C0E8;
  sub_10051F3F8(a1);

  return sub_1010753C4(a1);
}

void sub_10051F3F8(id *a1)
{
  [a1[26] invalidate];

  a1[26] = 0;
  [a1[27] invalidate];

  a1[27] = 0;
  [a1[28] invalidate];

  a1[28] = 0;
  [a1[29] invalidate];

  a1[29] = 0;
}

void sub_10051F46C(id *a1)
{
  sub_10051F3A0(a1);

  operator delete();
}

void sub_10051F4A4(uint64_t a1, void *a2)
{
  if (a2 && [a2 length])
  {
    [a2 getBytes:buf length:24];
    if (!*buf)
    {
      v5 = v8;
      v6 = v9;
      if (*(&v8 + 1))
      {
        if (*(a1 + 117) != *(&v8 + 1))
        {
          sub_101075508(a1, &v5);
        }

        sub_10051F670(a1);
      }

      else
      {
        sub_10051F5C0(a1);
      }
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018B2258();
    }

    v4 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "MotionStateObserver, Invalid data received.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B226C();
    }
  }
}

id sub_10051F5C0(uint64_t a1)
{
  sub_1010757E0(a1);
  if (qword_1025D4200 != -1)
  {
    sub_1018B2258();
  }

  v2 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "MotionStateObserver, Disabling update timer.", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B2358();
  }

  return [*(a1 + 136) setNextFireDelay:1.79769313e308 interval:1.79769313e308];
}

id sub_10051F670(uint64_t a1)
{
  [*(a1 + 136) invalidate];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10051F774;
  v5[3] = &unk_102449A78;
  v5[4] = a1;
  [*(a1 + 136) setHandler:v5];
  if (qword_1025D4200 != -1)
  {
    sub_1018B2444();
  }

  v2 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "MotionStateObserver, Starting update timer.", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B246C();
  }

  return [*(a1 + 136) setNextFireDelay:90.0];
}

void *sub_10051F774(void *result)
{
  v1 = result[4];
  if (*(v1 + 117))
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018B2258();
    }

    v2 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      v3 = 134217984;
      v4 = 0x4056800000000000;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "MotionStateObserver, Timing out session since we have not heard a response in %f seconds.", &v3, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B2558();
    }

    return sub_10051F5C0(v1);
  }

  return result;
}

void sub_10051F864(uint64_t result, _DWORD *a2, unsigned __int8 *a3)
{
  if (*a2 == 6)
  {
    v3 = *a3;
    if (*(result + 192) != v3)
    {
      *(result + 192) = v3;
      sub_10051F88C(result);
    }
  }
}

void sub_10051F88C(uint64_t a1)
{
  if (+[CMActivityAlarmLocal activityAlarmAvailable])
  {
    sub_10051F3F8(a1);
    if (*(a1 + 192) == 1 && *(a1 + 144) == 1 && (*buf = 1, sub_10000608C(a1, buf, 1)))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v15 = *(a1 + 146);
      v16 = *(a1 + 162);
      v3 = Current < *&v15;
      v4 = vabdd_f64(Current, *&v15);
      if (v3 || v4 > 320.0)
      {
        v15 = 0x10000000000000uLL;
        v16 = 0;
      }

      sub_101075918(a1, &v15);
      v14 = 1;
      *buf = v15;
      *&buf[16] = v16;
      (*(*a1 + 152))(a1, &v14, buf, 0, 0xFFFFFFFFLL, 0);
      if (qword_1025D4200 != -1)
      {
        sub_1018B2444();
      }

      v6 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        *&buf[4] = v15;
        *&buf[12] = 1024;
        *&buf[14] = DWORD2(v15);
        *&buf[18] = 1024;
        v18 = HIDWORD(v15);
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "MotionStateObserver,VehicularTracking,MotionState,startTime,%.3f,activityType,%d,vehicularConfidence,%d", buf, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B265C(&v15);
      }

      if ((HIDWORD(v15) - 2) < 3)
      {
        v7 = *(a1 + 200) + 300.0;
        v8 = sub_10051FBA0(a1, 4, v7);
        v9 = 224;
LABEL_28:
        *(a1 + v9) = v8;
        v12 = 5;
        v13 = 232;
LABEL_29:
        *(a1 + v13) = sub_10051FBA0(a1, v12, 10.0);
        return;
      }

      if (!HIDWORD(v15))
      {
        v12 = 4;
        v13 = 208;
        goto LABEL_29;
      }

      if (HIDWORD(v15) == 1)
      {
        v11 = *(a1 + 200) + 300.0;
        *(a1 + 224) = sub_10051FBA0(a1, 4, v11);
        v8 = sub_10051FBA0(a1, 16, 10.0);
        v9 = 216;
        goto LABEL_28;
      }
    }

    else
    {
      if (qword_1025D4200 != -1)
      {
        sub_1018B2444();
      }

      v10 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "MotionStateObserver,VehicularTracking,STOP", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B2778();
      }
    }
  }
}

void sub_10051FB7C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (!*a2)
  {
    v3 = *(a3 + 3);
    if (*(a1 + 144) != v3)
    {
      *(a1 + 144) = v3;
      sub_10051F88C(a1);
    }
  }
}

CMActivityAlarmLocal *sub_10051FBA0(uint64_t a1, uint64_t a2, float a3)
{
  if (qword_1025D4200 != -1)
  {
    sub_1018B2258();
  }

  v6 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    v19 = a2;
    v20 = 2048;
    v21 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "MotionStateObserver,VehicularTracking,setActivityAlarm,%d,duration,%0.3f", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4200 != -1)
    {
      sub_1018B2444();
    }

    v7 = a3;
    v15[0] = 67109376;
    v15[1] = a2;
    v16 = 2048;
    v17 = v7;
    LODWORD(v13) = 18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 2, "MotionStateObserver,VehicularTracking,setActivityAlarm,%d,duration,%0.3f", v15, v13);
    v12 = v11;
    sub_100152C7C("Generic", 1, 0, 2, "CMActivityAlarm *CLMotionStateObserverCompanion::createActivityAlarm(const CMActivityAlarmTrigger, const float)", "%s\n", v11);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  else
  {
    v7 = a3;
  }

  v8 = [CMActivityAlarmLocal alloc];
  v9 = [*(a1 + 40) queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10051FDD8;
  v14[3] = &unk_10245C1D8;
  v14[4] = a1;
  return [(CMActivityAlarmLocal *)v8 initWithTrigger:a2 duration:v9 onQueue:v14 withHandler:v7];
}

id sub_10051FDE0(uint64_t a1, void *a2)
{
  if (qword_1025D4200 != -1)
  {
    sub_1018B2258();
  }

  v4 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 67109120;
    v7[1] = [a2 trigger];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "MotionStateObserver,VehicularTracking,onActivityAlarm,%d", v7, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B2864(a2);
  }

  result = [a2 trigger];
  if (result == 16)
  {
LABEL_10:
    [a2 activityDuration];
    if (*(a1 + 200) >= v6)
    {
      v6 = *(a1 + 200);
    }

    *(a1 + 200) = v6;
    return sub_10051F88C(a1);
  }

  if (result != 5)
  {
    if (result != 4)
    {
      return result;
    }

    goto LABEL_10;
  }

  *(a1 + 200) = 0;
  return sub_10051F88C(a1);
}

void sub_10051FF10(_BYTE *result, void *a2)
{
  v9 = a2;
  if ((result[108] & 1) == 0)
  {
    v4 = *(result + 11);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = (result + 80);
    v6 = result + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != result + 88 && *(v6 + 8) <= a2)
    {
      while (*(v6 + 7))
      {
        *buf = *(*(v6 + 5) + 28);
        (*(*result + 112))(result, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_1018B2978();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = result + 8;
        if (result[31] < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B298C(result, a2);
      }
    }
  }
}

BOOL sub_10052018C(uint64_t a1, void *a2, int *a3)
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
      sub_1018B2978();
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
      sub_1018B2B9C(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100520320(char *a1, int a2, int *a3)
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
              sub_10004E6E0((v15 + 40), &v25 + 1);
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
                sub_1018B2CA4();
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
                  sub_1018B2CA4();
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

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLMotionStateObserver_Type::Notification, CLMotionStateObserver_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLMotionStateObserver_Type::Notification, NotificationData_T = CLMotionStateObserver_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v24);
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

uint64_t sub_1005207A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  return (*(*a1 + 152))(a1, a2, v5, a3, a4, 0);
}

void sub_1005207FC(uint64_t a1, int *a2, uint64_t a3, int a4, int a5)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = *a2;
    v9 = a1 + 64;
    do
    {
      if (*(v6 + 32) >= v8)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v8));
    }

    while (v6);
    if (v9 == v7 || v8 < *(v9 + 32))
    {
LABEL_9:
      v12 = v13;
      memset(v13, 0, 32);
      sub_100248B84(buf, a2, &v12);
      sub_10047D8C8(v7 - 8, buf);
    }

    if (a4)
    {
      operator new();
    }

    v10 = *(v9 + 72);
    *(v9 + 64) = 0;
    *(v9 + 72) = 0;
    if (v10)
    {
      sub_100008080(v10);
    }

    if (*(v9 + 56))
    {
      sub_1005210C0(a3);
    }
  }
}

void sub_100520CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_101865570(va);
  sub_101864718(v16 - 144);
  _Unwind_Resume(a1);
}

void sub_100520D00(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018B2978();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v32 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B2DEC(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018B2978();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v32 = v5;
      v33 = 2048;
      v34[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B2CCC(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      v8 = (a1 + 8);
      do
      {
        v9 = v7[5];
        if (v9 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_1018B2CA4();
            }

            v10 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v11 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v11 = *v8;
              }

              v12 = *(v7 + 8);
              v13 = *(v9 + 7);
              *buf = 136315650;
              v32 = v11;
              v33 = 1024;
              LODWORD(v34[0]) = v12;
              WORD2(v34[0]) = 1024;
              *(v34 + 6) = v13;
              _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_1018B2CA4();
              }

              v17 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v17 = *v8;
              }

              v18 = *(v7 + 8);
              v19 = *(v9 + 7);
              v25 = 136315650;
              v26 = v17;
              v27 = 1024;
              v28 = v18;
              v29 = 1024;
              v30 = v19;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 2, "%s; clients, id: %d, notification: %d", &v25, 24, v24);
              v21 = v20;
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLMotionStateObserver_Type::Notification, CLMotionStateObserver_Type::NotificationData>::listClients() [Notification_T = CLMotionStateObserver_Type::Notification, NotificationData_T = CLMotionStateObserver_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v20);
              if (v21 != buf)
              {
                free(v21);
              }
            }

            v14 = v9[1];
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
                v15 = v9[2];
                v16 = *v15 == v9;
                v9 = v15;
              }

              while (!v16);
            }

            v9 = v15;
          }

          while (v15 != v7 + 6);
        }

        v22 = v7[1];
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
            v23 = v7[2];
            v16 = *v23 == v7;
            v7 = v23;
          }

          while (!v16);
        }

        v7 = v23;
      }

      while (v23 != (a1 + 88));
    }
  }
}

void sub_100521174(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v39 = v9;
        v10 = sub_1005216C4(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v38 = v16;
              sub_100521530(a1, &v38, &v39, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v39 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v38 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_1018B2CA4();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v45 = v19;
                v46 = 1026;
                v47 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_1018B2CA4();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v40 = 136446466;
                v41 = v33;
                v42 = 1026;
                v43 = v34;
                LODWORD(v37) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 17, "%{public}s; unknown client %{public}d", &v40, v37);
                v36 = v35;
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLMotionStateObserver_Type::Notification, CLMotionStateObserver_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLMotionStateObserver_Type::Notification, NotificationData_T = CLMotionStateObserver_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v36 != buf)
                {
                  free(v36);
                }
              }
            }
          }

          while (v11 != (v39 + 48));
        }
      }
    }
  }
}

_BYTE *sub_100521530(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_1005216C4(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13, &unk_101C66300, &v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

void sub_100521648(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10245C240;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005216A4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

id sub_1005216C4(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_100521760(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_1005218FC(a1);
    }

    else
    {
      return 0;
    }
  }
}

id sub_100521760(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_100521AC4(&v8, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018B2EFC();
    }

    v3 = qword_1025D41A8;
    if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 134218498;
    v10 = v2;
    v11 = 2048;
    v12 = 0;
    v13 = 2080;
    v14 = 0x8000000101C7D3C2 & 0x7FFFFFFFFFFFFFFFLL;
    v4 = v3;
    v5 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018B2EFC();
    }

    v7 = qword_1025D41A8;
    if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    *buf = 134218498;
    v10 = v2;
    v11 = 2048;
    v12 = 0;
    v13 = 2080;
    v14 = 0x8000000101C7D3C2 & 0x7FFFFFFFFFFFFFFFLL;
    v4 = v7;
    v5 = OS_LOG_TYPE_FAULT;
  }

  _os_log_impl(dword_100000000, v4, v5, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
  return 0;
}

id sub_1005218FC(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018B2EFC();
      }

      v3 = qword_1025D41A8;
      if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v8 = 134218498;
      v9 = v2;
      v10 = 2048;
      v11 = 0;
      v12 = 2080;
      v13 = 0x8000000101C7D3C2 & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v3;
      v5 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018B2EFC();
      }

      v7 = qword_1025D41A8;
      if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }

      v8 = 134218498;
      v9 = v2;
      v10 = 2048;
      v11 = 0;
      v12 = 2080;
      v13 = 0x8000000101C7D3C2 & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v7;
      v5 = OS_LOG_TYPE_FAULT;
    }

    _os_log_impl(dword_100000000, v4, v5, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v8, 0x20u);
    return 0;
  }

  return [a1 cppObjectPtr];
}
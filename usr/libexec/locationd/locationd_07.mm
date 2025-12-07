void sub_100077CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_1004906DC(va);
  _Unwind_Resume(a1);
}

void sub_100077DD8(uint64_t a1, int *a2, CFDictionaryRef *a3)
{
  if (qword_1025D4660 != -1)
  {
    sub_101617000();
  }

  v6 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_100072010(a2);
    sub_1000238CC(v7, __p);
    v8 = (SBYTE7(v30) & 0x80u) == 0 ? __p : __p[0];
    *buf = 68289282;
    *&buf[4] = 0;
    v36 = 2082;
    v37 = "";
    v38 = 2082;
    v39 = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#nilr,#supl,received CT notification, notification:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (SBYTE7(v30) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = sub_100072010(a2);
  if (CFEqual(@"kSimStatusChangeNotification", v9))
  {
    *__p = 0u;
    v30 = 0u;
    v31 = 1065353216;
    if (sub_10116D8D4(*a3, __p))
    {
      *buf = a1 + 2564;
      v10 = sub_1009166D0(__p, (a1 + 2564), &unk_101C66300, buf);
      std::string::operator=((a1 + 376), v10 + 1);
      *buf = a1 + 2564;
      v11 = sub_1009166D0(__p, (a1 + 2564), &unk_101C66300, buf);
      std::string::operator=((a1 + 432), v11 + 2);
      *buf = a1 + 2564;
      v12 = sub_1009166D0(__p, (a1 + 2564), &unk_101C66300, buf);
      std::string::operator=((a1 + 400), v12 + 3);
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101616E5C();
      }

      v16 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 2564);
        *buf = 67109120;
        *&buf[4] = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "#ins%d,#nilr,#supl,copySimStatusChangeFromDictionary error", buf, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10161A1F8(buf);
        v20 = *(a1 + 2564);
        LODWORD(v34[0]) = 67109120;
        HIDWORD(v34[0]) = v20;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 16, "#ins%d,#nilr,#supl,copySimStatusChangeFromDictionary error", v34);
        v22 = v21;
        sub_100152C7C("Generic", 1, 0, 0, "void CLNilrSupl::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v21);
        if (v22 != buf)
        {
          free(v22);
        }
      }
    }

    sub_1009165FC(__p);
  }

  else
  {
    v13 = sub_100072010(a2);
    if (CFEqual(@"kSuplInitPayloadNotification", v13))
    {
      v34[0] = 0;
      __p[0] = 0;
      __p[1] = 0;
      *&v30 = 0;
      if (sub_10116D5A0(*a3, v34, __p))
      {
        if (qword_1025D4660 != -1)
        {
          sub_101616C5C();
        }

        v14 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 2564);
          *buf = 67109120;
          *&buf[4] = v15;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#ins%d,#nilr,#supl,#supl suplInitCT", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101616C84(buf);
          v23 = *(a1 + 2564);
          v32 = 67109120;
          v33 = v23;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4668, 0, "#ins%d,#nilr,#supl,#supl suplInitCT", &v32);
          v25 = v24;
          sub_100152C7C("Generic", 1, 0, 2, "void CLNilrSupl::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v24);
          if (v25 != buf)
          {
            free(v25);
          }
        }

        sub_10160D850(a1, __p);
      }

      else
      {
        if (qword_1025D4660 != -1)
        {
          sub_101616C5C();
        }

        v18 = qword_1025D4668;
        if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
        {
          v19 = *(a1 + 2564);
          *buf = 67109120;
          *&buf[4] = v19;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "#ins%d,#nilr,#supl,copySuplPayloadfromDictionary returned error", buf, 8u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101616C84(buf);
          v26 = *(a1 + 2564);
          v32 = 67109120;
          v33 = v26;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4668, 16, "#ins%d,#nilr,#supl,copySuplPayloadfromDictionary returned error", &v32);
          v28 = v27;
          sub_100152C7C("Generic", 1, 0, 0, "void CLNilrSupl::onTelephonyNotification(const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v27);
          if (v28 != buf)
          {
            free(v28);
          }
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }
}

void sub_10007837C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000783BC(uint64_t a1, int *a2)
{
  v4 = sub_100072010(a2);
  if (CFEqual(v4, @"kAtLeastOneVoiceCallInProgress") && (*(a1 + 53) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1003115AC();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "L5Context,kAtLeastOneVoiceCallInProgress", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A653D4();
    }

    *(a1 + 53) = 1;
    goto LABEL_19;
  }

  v5 = sub_100072010(a2);
  if (CFEqual(v5, @"kNoVoiceCallInProgress") && *(a1 + 53) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1003115AC();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "L5Context,kNoVoiceCallInProgress", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A654B8();
    }

    *(a1 + 53) = 0;
LABEL_19:
    sub_10017DC7C(a1);
  }
}

void sub_10007852C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 24) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B75BF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLHarvestControllerExternal::onTelephonyNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B75C08();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLHarvestControllerExternal::onTelephonyNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100078824(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100078708(uint64_t a1, int a2, int *a3, uint64_t a4, int a5)
{
  v10 = sub_100072010(a3);
  if (CFEqual(v10, kCTCallStatusChangeNotification))
  {
    v14 = 0;
    if ((*(**(a1 + 48) + 304))(*(a1 + 48), &v14))
    {
      *(a1 + 972) = v14;
    }
  }

  sub_100039440(a1);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100079310;
  v12[3] = &unk_10245FB88;
  v13 = a2;
  if (a5)
  {
    v11 = 5;
  }

  else
  {
    v11 = 4;
  }

  v12[4] = a3;
  v12[5] = a4;
  sub_100071CE4(a1, v11, v12);
  sub_100039584(a1);
}

void sub_100078824(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  if (!v5)
  {
    sub_1001376D8(v5, a2);
  }

  sub_100078708(v5, a2, a3, a4, 0);
}

void sub_100078850(uint64_t a1, uint64_t a2, int *a3, void **a4)
{
  if (qword_1025D47D0 != -1)
  {
    sub_1002CEC74();
  }

  v7 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v8 = sub_100072010(a3);
    sub_1000238CC(v8, &__p);
    v9 = v54[13] >= 0 ? &__p : __p;
    v10 = *(a1 + 417);
    *buf = 68289794;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    *&buf[20] = 1;
    *&buf[28] = 2082;
    *&buf[30] = v9;
    v58 = 1026;
    LODWORD(v59) = v10;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#msim onTelephonyNotification, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, notification:%{public, location:escape_only}s, harvestingDisabledDueToInvalidInUseSubsriptionsCount:%{public}hhd}", buf, 0x2Cu);
    if ((v54[13] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  sub_100079344(a1, a3, a4);
  sub_100079540(a1, a3, a4);
  if ((*(a1 + 417) & 1) == 0)
  {
    v11 = (*(**(a1 + 368) + 56))(*(a1 + 368));
    ++*(a1 + 204);
    v12 = (*(**(a1 + 56) + 184))(*(a1 + 56), v11);
    v13 = sub_100072010(a3);
    if (CFEqual(v13, @"kCellInfoNotification"))
    {
      sub_100079BE8(a1, a4);
      if (v12)
      {
        memset(buf, 0, 32);
        *&buf[32] = 1065353216;
        sub_100065478(*a4, buf);
        v51[0] = 0;
        __p = v51;
        v14 = [sub_1000646F8(buf v51];
        if (sub_1000649A0(v14, v15))
        {
          v51[0] = 1;
          __p = v51;
          v16 = [sub_1000646F8(buf v51] != 0;
          if (!v14)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v16 = 0;
          if (!v14)
          {
            goto LABEL_36;
          }
        }

        if (*(a1 + 488) == 1)
        {
          if (qword_1025D47D0 != -1)
          {
            sub_101AAABD0();
          }

          v21 = (a1 + 488);
          v22 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
          {
            __p = 68289282;
            v53 = 2082;
            *v54 = "";
            *&v54[8] = 2050;
            *&v54[10] = 1;
            _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#msim pending cellMonitorRefreshRequest found for SimOne, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &__p, 0x1Cu);
          }

          sub_100E66E44(a1, v11, 0);
          goto LABEL_43;
        }

LABEL_36:
        if (!v16 || *(a1 + 512) != 1)
        {
          goto LABEL_44;
        }

        if (qword_1025D47D0 != -1)
        {
          sub_101AAABD0();
        }

        v21 = (a1 + 512);
        v23 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
        {
          __p = 68289282;
          v53 = 2082;
          *v54 = "";
          *&v54[8] = 2050;
          *&v54[10] = 1;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#msim pending cellMonitorRefreshRequest found for SimTwo, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &__p, 0x1Cu);
        }

        sub_100E66E44(a1, v11, 1);
LABEL_43:
        *v21 = 0;
LABEL_44:
        sub_100075100(buf);
        return;
      }

      if (qword_1025D47D0 != -1)
      {
        sub_101AAABD0();
      }

      v20 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = 1;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:onTelephonyNotification gps location not eligible - skip harvetsing, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x1Cu);
      }
    }

    else
    {
      v17 = sub_100072010(a3);
      if (CFEqual(v17, @"kServingCellChangedNotification") || (v18 = sub_100072010(a3), CFEqual(v18, @"kServingNetworkChangedNotification")))
      {
        if ([*a4 objectForKey:@"kSlotOne"])
        {
          if (qword_1025D47D0 != -1)
          {
            sub_101AAABD0();
          }

          v19 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "#msim CellMonitorRefresh requested for SimOne", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AAB244();
          }

          *(a1 + 488) = 1;
          (*(**(a1 + 352) + 144))(*(a1 + 352), 0);
        }

        else if ([*a4 objectForKey:@"kSlotTwo"])
        {
          if (qword_1025D47D0 != -1)
          {
            sub_101AAABD0();
          }

          v24 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "#msim CellMonitorRefresh requested for SimTwo", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AAB328();
          }

          *(a1 + 512) = 1;
          (*(**(a1 + 352) + 144))(*(a1 + 352), 1);
        }

        else
        {
          if (qword_1025D47D0 != -1)
          {
            sub_101AAABD0();
          }

          v35 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_FAULT))
          {
            v36 = sub_100072010(a3);
            sub_1000238CC(v36, &__p);
            if (v54[13] >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            v38 = *a4;
            *buf = 68289794;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2050;
            *&buf[20] = 1;
            *&buf[28] = 2082;
            *&buf[30] = p_p;
            v58 = 2114;
            v59 = v38;
            _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#msim onTelephonyNotification received notification for invalid slot, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, notification:%{public, location:escape_only}s, Data:%{public, location:escape_only}@}", buf, 0x30u);
            if ((v54[13] & 0x80000000) != 0)
            {
              operator delete(__p);
            }

            if (qword_1025D47D0 != -1)
            {
              sub_101AAABD0();
            }
          }

          v39 = qword_1025D47D8;
          if (os_signpost_enabled(qword_1025D47D8))
          {
            v40 = sub_100072010(a3);
            sub_1000238CC(v40, &__p);
            v41 = v54[13] >= 0 ? &__p : __p;
            v42 = *a4;
            *buf = 68289794;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2050;
            *&buf[20] = 1;
            *&buf[28] = 2082;
            *&buf[30] = v41;
            v58 = 2114;
            v59 = v42;
            _os_signpost_emit_with_name_impl(dword_100000000, v39, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#msim onTelephonyNotification received notification for invalid slot", "{msg%{public}.0s:#msim onTelephonyNotification received notification for invalid slot, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, notification:%{public, location:escape_only}s, Data:%{public, location:escape_only}@}", buf, 0x30u);
            if ((v54[13] & 0x80000000) != 0)
            {
              operator delete(__p);
            }
          }
        }
      }

      else
      {
        v25 = sub_100072010(a3);
        if (CFEqual(v25, @"kTimingAdvanceInfoNotification"))
        {
          if (*a4)
          {
            sub_100005548(v51, *a4);
            v26 = (a1 + 528);
            sub_1000052CC(v51, @"kTimingAdvanceLTEKey", (a1 + 528));
            v27 = (a1 + 532);
            sub_1000052CC(v51, @"kTimingAdvanceNRKey", (a1 + 532));
            v28 = (a1 + 536);
            sub_100023B78(v51, @"kTimingAdvanceTimeStampKey", (a1 + 536));
            sub_10001CBC0(v51, @"kTimingAdvanceisLTEKey", (a1 + 544));
            sub_10001CBC0(v51, @"kTimingAdvanceisNRKey", (a1 + 545));
            if (qword_1025D47D0 != -1)
            {
              sub_101AAABD0();
            }

            v29 = qword_1025D47D8;
            if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
            {
              v30 = *v26;
              v31 = *v27;
              v32 = *v28;
              v33 = *(a1 + 544);
              v34 = *(a1 + 545);
              *buf = 67241216;
              *&buf[4] = v30;
              *&buf[8] = 1026;
              *&buf[10] = v31;
              *&buf[14] = 2050;
              *&buf[16] = v32;
              *&buf[24] = 1026;
              *&buf[26] = v33;
              *&buf[30] = 1026;
              *&buf[32] = v34;
              _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "#timingadvance,lte_ta_val,%{public}d,nr_ta_val,%{public}d,taQuerytimestamp,%{public}.3f,istaLte,%{public}d,istaNr,%{public}d", buf, 0x24u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101AAB40C(buf);
              v44 = *v26;
              v45 = *v27;
              v46 = *v28;
              v47 = *(a1 + 544);
              v48 = *(a1 + 545);
              LODWORD(__p) = 67241216;
              HIDWORD(__p) = v44;
              v53 = 1026;
              *v54 = v45;
              *&v54[4] = 2050;
              *&v54[6] = v46;
              *&v54[14] = 1026;
              *&v54[16] = v47;
              v55 = 1026;
              v56 = v48;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47D8, 2, "#timingadvance,lte_ta_val,%{public}d,nr_ta_val,%{public}d,taQuerytimestamp,%{public}.3f,istaLte,%{public}d,istaNr,%{public}d", &__p, 36);
              v50 = v49;
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLSubHarvesterCell::onTelephonyHarvestNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v49);
              if (v50 != buf)
              {
                free(v50);
              }
            }

            sub_100005DA4();
          }

          else
          {
            if (qword_1025D47D0 != -1)
            {
              sub_101AAABD0();
            }

            v43 = qword_1025D47D8;
            if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "#timingadvance data is empty", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101AAB450();
            }
          }
        }
      }
    }
  }
}

void sub_100079344(uint64_t a1, int *a2, id *a3)
{
  v5 = sub_100072010(a2);
  if (CFEqual(v5, @"kSubscriptionsInUseNotification"))
  {
    v6 = [*a3 valueForKey:@"kSubscriptionsInUseKey"];
    v7 = [v6 count];
    if (qword_1025D47D0 != -1)
    {
      sub_1002CEC74();
    }

    v8 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 424);
      v12 = 68290050;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = 1;
      v18 = 2114;
      v19 = v9;
      v20 = 2114;
      v21 = v6;
      v22 = 1026;
      v23 = v6 == 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#msim updated InUseSubscriptions, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, OldInUseSubscriptions:%{public, location:escape_only}@, NewInUseSubscriptions:%{public, location:escape_only}@, hasError:%{public}hhd}", &v12, 0x36u);
    }

    *(a1 + 424) = v6;
    if (v6)
    {
      v10 = v7 >= 3;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_101AAABD0();
      }

      v11 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 68289282;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2050;
        v17 = 1;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#msim Cell-Harvesting does not support more than 2 in-use subscriptions. Harvester disabled, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &v12, 0x1Cu);
      }

      *(a1 + 417) = 1;
    }
  }
}

void sub_100079540(uint64_t a1, int *a2, id *a3)
{
  v5 = sub_100072010(a2);
  if (CFEqual(v5, @"kSimInfoChangedNotification"))
  {
    v6 = [*a3 objectForKey:@"kSlotOne"];
    v7 = [*a3 objectForKey:@"kSlotTwo"];
    if (qword_1025D47D0 != -1)
    {
      sub_1002CEC74();
    }

    v8 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 68289795;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2050;
      v13 = 1;
      v14 = 2113;
      v15 = v6;
      v16 = 2113;
      v17 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#msim update sim info, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, SimOneInfo:%{private, location:escape_only}@, SimTwoInfo:%{private, location:escape_only}@}", v9, 0x30u);
    }

    if (v6)
    {

      *(a1 + 480) = v6;
    }

    if (v7)
    {

      *(a1 + 504) = v7;
    }
  }
}

uint64_t sub_1000796B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1072))
  {
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v2 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning: faking harvest eligibility}", &v9, 0x12u);
    }

    return 1;
  }

  if ((*(*a1 + 160))(a1))
  {
    if ((*(**(a1 + 168) + 48))(*(a1 + 168), a2))
    {
      return 1;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v8 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "Pos harvesting not eligible as gps harvetsing is ineligible", &v9, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018C5358();
      return 0;
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_100248BFC();
    }

    v6 = qword_1025D47D8;
    result = os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO);
    if (result)
    {
      v7 = (*(*a1 + 64))(a1) - *(a2 + 76);
      v9 = 68289283;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2049;
      v14 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:not harvesting, harvesting now allowed, age_s:%{private}.09f}", &v9, 0x1Cu);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100079924(uint64_t a1, uint64_t a2)
{
  if (!sub_100072814(a2) || vabdd_f64((*(**(a1 + 32) + 64))(*(a1 + 32)), *(a2 + 76)) > 5.0)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_10197B988();
    }

    v4 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v5 = vabdd_f64((*(**(a1 + 32) + 64))(*(a1 + 32)), *(a2 + 76));
      v14 = 134217984;
      *v15 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "invalid/stale location (age %.3fs) - ignoring", &v14, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_10197BD90(a1, a2);
    return 0;
  }

  v7 = (a1 + 72);
  if (*(a1 + 72) > 4)
  {
    if (*(a1 + 88) < 181 || (*(a1 + 64) & 1) != 0)
    {
      return 1;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_10197B988();
    }

    v10 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 88);
      v12 = *(a1 + 96);
      v13 = *(a1 + 104);
      v14 = 67109633;
      *v15 = v11;
      *&v15[4] = 2053;
      *&v15[6] = v12;
      v16 = 2053;
      v17 = v13;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "%d consecutive clamps at <%{sensitive}+.8f,%{sensitive}+.8f> - not harvesting", &v14, 0x1Cu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_10197BB64((a1 + 88), a1);
      return 0;
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_10197B988();
    }

    v8 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v9 = *v7;
      v14 = 67109376;
      *v15 = v9;
      *&v15[4] = 1024;
      *&v15[6] = 5;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "not harvesting yet; GPS warming count is %d < %d", &v14, 0xEu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_10197BC80(v7);
      return 0;
    }
  }

  return result;
}

id sub_100079BE8(uint64_t a1, id *a2)
{
  v4 = [*a2 objectForKey:@"kSlotOne"];
  v5 = [*a2 objectForKey:@"kSlotTwo"];
  if (qword_1025D47D0 != -1)
  {
    sub_1002CEC74();
  }

  v6 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 68289794;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2050;
    v12 = 1;
    v13 = 2114;
    v14 = v4;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#msim update CellInfo, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, CellInfoSimOne:%{public, location:escape_only}@, CellInfoSimTwo:%{public, location:escape_only}@}", v8, 0x30u);
  }

  if ([v4 count])
  {

    *(a1 + 472) = v4;
  }

  result = [v5 count];
  if (result)
  {

    result = v5;
    *(a1 + 496) = result;
  }

  return result;
}

void sub_100079D4C(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  if (qword_1025D4620 != -1)
  {
    sub_1018FE88C();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 1875962727 * ((a1[1] - *a1) >> 3);
    *buf = 67240448;
    *&buf[4] = a2 + 1;
    *&buf[8] = 1026;
    *&buf[10] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@CellService, selection, inst, %{public}d, count, %{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FE8A0(a2, a1);
  }

  v7 = &a4[3 * a2];
  v8 = *v7;
  for (i = v7[1]; i != v8; sub_1000720CC(i))
  {
    i -= 696;
  }

  v7[1] = v8;
  v11 = *a1;
  v10 = a1[1];
  if (*a1 == v10)
  {
    *&v135[4] = 0;
  }

  else
  {
    *&v135[8] = 0;
    *v135 = (a2 + 1);
    do
    {
      *v185 = *v11;
      v12 = *(v11 + 16);
      v13 = *(v11 + 32);
      v14 = *(v11 + 48);
      *&v185[60] = *(v11 + 60);
      *&v185[48] = v14;
      *&v185[32] = v13;
      *&v185[16] = v12;
      v186 = *(v11 + 80);
      v188 = 0;
      v189 = 0;
      v187 = 0;
      sub_10038EB38(&v187, *(v11 + 88), *(v11 + 96), (*(v11 + 96) - *(v11 + 88)) >> 2);
      v190 = *(v11 + 112);
      v15 = *(v11 + 128);
      v16 = *(v11 + 144);
      v17 = *(v11 + 176);
      v193 = *(v11 + 160);
      v194 = v17;
      v191 = v15;
      v192 = v16;
      v18 = *(v11 + 192);
      v19 = *(v11 + 208);
      v20 = *(v11 + 240);
      v197 = *(v11 + 224);
      v198 = v20;
      v195 = v18;
      v196 = v19;
      v21 = *(v11 + 256);
      v22 = *(v11 + 272);
      v23 = *(v11 + 288);
      *(v201 + 12) = *(v11 + 300);
      v200 = v22;
      v201[0] = v23;
      v199 = v21;
      if (*(v11 + 343) < 0)
      {
        sub_100007244(&__p, *(v11 + 320), *(v11 + 328));
      }

      else
      {
        v24 = *(v11 + 320);
        v203 = *(v11 + 336);
        __p = v24;
      }

      v25 = *(v11 + 344);
      v26 = *(v11 + 376);
      v205 = *(v11 + 360);
      v206 = v26;
      v204 = v25;
      v27 = *(v11 + 392);
      v28 = *(v11 + 408);
      v29 = *(v11 + 440);
      v209 = *(v11 + 424);
      v210 = v29;
      v207 = v27;
      v208 = v28;
      v30 = *(v11 + 456);
      v31 = *(v11 + 472);
      v32 = *(v11 + 488);
      v214 = *(v11 + 504);
      v212 = v31;
      v213 = v32;
      v211 = v30;
      v33 = *(v11 + 512);
      v34 = *(v11 + 528);
      v35 = *(v11 + 560);
      v217 = *(v11 + 544);
      v218 = v35;
      v215 = v33;
      v216 = v34;
      v36 = *(v11 + 576);
      v37 = *(v11 + 592);
      v38 = *(v11 + 624);
      v221 = *(v11 + 608);
      v222 = v38;
      v219 = v36;
      v220 = v37;
      v39 = *(v11 + 640);
      v40 = *(v11 + 656);
      v41 = *(v11 + 672);
      v226 = *(v11 + 688);
      v224 = v40;
      v225 = v41;
      v223 = v39;
      if (v185[0])
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018FE9CC();
        }

        v42 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_10007A8CC(v185, buf);
          v43 = buf;
          if (buf[23] < 0)
          {
            v43 = *buf;
          }

          *v136 = 67240451;
          *&v136[4] = a2 + 1;
          v137 = 2081;
          v138 = v43;
          _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "@CellService, selection, inst, %{public}d, %{private}s", v136, 0x12u);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018FE9F4(buf);
          v46 = qword_1025D4628;
          sub_10007A8CC(v185, v136);
          v47 = v136;
          if (v139 < 0)
          {
            v47 = *v136;
          }

          v140[0] = 67240451;
          v140[1] = a2 + 1;
          v141 = 2081;
          v142 = v47;
          LODWORD(v131) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v46, 0, "@CellService, selection, inst, %{public}d, %{private}s", v140, v131);
          v49 = v48;
          if (v139 < 0)
          {
            operator delete(*v136);
          }

          sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::selectCurrentCells(CLCellVector, int, CLCellVector &, CLCellVector (&)[2])", "%s\n", v49);
          if (v49 != buf)
          {
            free(v49);
          }
        }

        sub_10007AD10(v185, -1, -1, -1, -1);
        ++*&v135[8];
        if (*&v185[4])
        {
          v44 = v7[1];
          if (v44 >= v7[2])
          {
            v45 = sub_10058ABF4(v7, v185);
          }

          else
          {
            sub_10007AEC8(v7, v185);
            v45 = v44 + 696;
          }

          v7[1] = v45;
        }

        else
        {
          sub_10007B05C(v7, *v7 + 696 * *&v135[4], v185);
          ++*&v135[4];
        }
      }

      if (SHIBYTE(v203) < 0)
      {
        operator delete(__p);
      }

      if (v187)
      {
        v188 = v187;
        operator delete(v187);
      }

      v11 += 696;
    }

    while (v11 != v10);
    if (*&v135[4])
    {
      sub_10007B458(v7, *v7 + 696 * *&v135[4], v7[1]);
    }

    else
    {
      *&v135[4] = 0;
    }
  }

  v50 = *a3;
  for (j = a3[1]; j != v50; sub_1000720CC(j))
  {
    j -= 696;
  }

  a3[1] = v50;
  v52 = *a4;
  v53 = a4[1];
  if (*a4 != v53)
  {
    do
    {
      *buf = *v52;
      v54 = *(v52 + 16);
      v55 = *(v52 + 32);
      v56 = *(v52 + 48);
      *&buf[60] = *(v52 + 60);
      *&buf[32] = v55;
      *&buf[48] = v56;
      *&buf[16] = v54;
      v144 = *(v52 + 80);
      v146 = 0;
      v147 = 0;
      v145 = 0;
      sub_10038EB38(&v145, *(v52 + 88), *(v52 + 96), (*(v52 + 96) - *(v52 + 88)) >> 2);
      v148 = *(v52 + 112);
      v57 = *(v52 + 128);
      v58 = *(v52 + 144);
      v59 = *(v52 + 176);
      v151 = *(v52 + 160);
      v152 = v59;
      v149 = v57;
      v150 = v58;
      v60 = *(v52 + 192);
      v61 = *(v52 + 208);
      v62 = *(v52 + 240);
      v155 = *(v52 + 224);
      v156 = v62;
      v153 = v60;
      v154 = v61;
      v63 = *(v52 + 256);
      v64 = *(v52 + 272);
      v65 = *(v52 + 288);
      *(v159 + 12) = *(v52 + 300);
      v158 = v64;
      v159[0] = v65;
      v157 = v63;
      if (*(v52 + 343) < 0)
      {
        sub_100007244(&v160, *(v52 + 320), *(v52 + 328));
      }

      else
      {
        v66 = *(v52 + 320);
        v161 = *(v52 + 336);
        v160 = v66;
      }

      v67 = *(v52 + 344);
      v68 = *(v52 + 376);
      v163 = *(v52 + 360);
      v164 = v68;
      v162 = v67;
      v69 = *(v52 + 392);
      v70 = *(v52 + 408);
      v71 = *(v52 + 440);
      v167 = *(v52 + 424);
      v168 = v71;
      v165 = v69;
      v166 = v70;
      v72 = *(v52 + 456);
      v73 = *(v52 + 472);
      v74 = *(v52 + 488);
      v172 = *(v52 + 504);
      v170 = v73;
      v171 = v74;
      v169 = v72;
      v75 = *(v52 + 512);
      v76 = *(v52 + 528);
      v77 = *(v52 + 560);
      v175 = *(v52 + 544);
      v176 = v77;
      v173 = v75;
      v174 = v76;
      v78 = *(v52 + 576);
      v79 = *(v52 + 592);
      v80 = *(v52 + 624);
      v179 = *(v52 + 608);
      v180 = v80;
      v177 = v78;
      v178 = v79;
      v81 = *(v52 + 640);
      v82 = *(v52 + 656);
      v83 = *(v52 + 672);
      v184 = *(v52 + 688);
      v182 = v82;
      v183 = v83;
      v181 = v81;
      v84 = a3[1];
      if (v84 >= a3[2])
      {
        v85 = sub_10058ABF4(a3, buf);
      }

      else
      {
        sub_10007AEC8(a3, buf);
        v85 = v84 + 696;
      }

      a3[1] = v85;
      if (SHIBYTE(v161) < 0)
      {
        operator delete(v160);
      }

      if (v145)
      {
        v146 = v145;
        operator delete(v145);
      }

      v52 += 696;
    }

    while (v52 != v53);
  }

  v86 = a4[3];
  for (k = a4[4]; v86 != k; v86 += 696)
  {
    *buf = *v86;
    v88 = *(v86 + 16);
    v89 = *(v86 + 32);
    v90 = *(v86 + 48);
    *&buf[60] = *(v86 + 60);
    *&buf[32] = v89;
    *&buf[48] = v90;
    *&buf[16] = v88;
    v144 = *(v86 + 80);
    v146 = 0;
    v147 = 0;
    v145 = 0;
    sub_10038EB38(&v145, *(v86 + 88), *(v86 + 96), (*(v86 + 96) - *(v86 + 88)) >> 2);
    v148 = *(v86 + 112);
    v91 = *(v86 + 128);
    v92 = *(v86 + 144);
    v93 = *(v86 + 176);
    v151 = *(v86 + 160);
    v152 = v93;
    v149 = v91;
    v150 = v92;
    v94 = *(v86 + 192);
    v95 = *(v86 + 208);
    v96 = *(v86 + 240);
    v155 = *(v86 + 224);
    v156 = v96;
    v153 = v94;
    v154 = v95;
    v97 = *(v86 + 256);
    v98 = *(v86 + 272);
    v99 = *(v86 + 288);
    *(v159 + 12) = *(v86 + 300);
    v158 = v98;
    v159[0] = v99;
    v157 = v97;
    if (*(v86 + 343) < 0)
    {
      sub_100007244(&v160, *(v86 + 320), *(v86 + 328));
    }

    else
    {
      v100 = *(v86 + 320);
      v161 = *(v86 + 336);
      v160 = v100;
    }

    v101 = *(v86 + 344);
    v102 = *(v86 + 376);
    v163 = *(v86 + 360);
    v164 = v102;
    v162 = v101;
    v103 = *(v86 + 392);
    v104 = *(v86 + 408);
    v105 = *(v86 + 440);
    v167 = *(v86 + 424);
    v168 = v105;
    v165 = v103;
    v166 = v104;
    v106 = *(v86 + 456);
    v107 = *(v86 + 472);
    v108 = *(v86 + 488);
    v172 = *(v86 + 504);
    v170 = v107;
    v171 = v108;
    v169 = v106;
    v109 = *(v86 + 512);
    v110 = *(v86 + 528);
    v111 = *(v86 + 560);
    v175 = *(v86 + 544);
    v176 = v111;
    v173 = v109;
    v174 = v110;
    v112 = *(v86 + 576);
    v113 = *(v86 + 592);
    v114 = *(v86 + 624);
    v179 = *(v86 + 608);
    v180 = v114;
    v177 = v112;
    v178 = v113;
    v115 = *(v86 + 640);
    v116 = *(v86 + 656);
    v117 = *(v86 + 672);
    v184 = *(v86 + 688);
    v182 = v116;
    v183 = v117;
    v181 = v115;
    v118 = a3[1];
    if (v118 >= a3[2])
    {
      v119 = sub_10058ABF4(a3, buf);
    }

    else
    {
      sub_10007AEC8(a3, buf);
      v119 = v118 + 696;
    }

    a3[1] = v119;
    if (SHIBYTE(v161) < 0)
    {
      operator delete(v160);
    }

    if (v145)
    {
      v146 = v145;
      operator delete(v145);
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018FE9CC();
  }

  v120 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v121 = 0x66FD0EB66FD0EB67 * ((a3[1] - *a3) >> 3);
    v122 = 0x66FD0EB66FD0EB67 * ((a1[1] - *a1) >> 3);
    v123 = 0x66FD0EB66FD0EB67 * ((a4[1] - *a4) >> 3);
    v124 = 0x66FD0EB66FD0EB67 * ((a4[4] - a4[3]) >> 3);
    *buf = 134350592;
    *&buf[4] = v121;
    *&buf[12] = 1026;
    *&buf[14] = a2;
    *&buf[18] = 2050;
    *&buf[20] = v122;
    *&buf[28] = 1026;
    *&buf[30] = *&v135[8];
    *&buf[34] = 1026;
    *&buf[36] = *&v135[4];
    *&buf[40] = 2050;
    *&buf[42] = v123;
    *&buf[50] = 2050;
    *&buf[52] = v124;
    _os_log_impl(dword_100000000, v120, OS_LOG_TYPE_DEFAULT, "CellFlow, selectsize, %{public}lu, thisslot, %{public}d, %{public}lu, valid, %{public}d, serving, %{public}d, slotcells, %{public}lu, %{public}lu", buf, 0x3Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_1018FE9CC();
    }

    v125 = 0x66FD0EB66FD0EB67 * ((a3[1] - *a3) >> 3);
    v126 = 0x66FD0EB66FD0EB67 * ((a1[1] - *a1) >> 3);
    v127 = 0x66FD0EB66FD0EB67 * ((a4[1] - *a4) >> 3);
    v128 = 0x66FD0EB66FD0EB67 * ((a4[4] - a4[3]) >> 3);
    *v185 = 134350592;
    *&v185[4] = v125;
    *&v185[12] = 1026;
    *&v185[14] = a2;
    *&v185[18] = 2050;
    *&v185[20] = v126;
    *&v185[28] = 1026;
    *&v185[30] = *&v135[8];
    *&v185[34] = 1026;
    *&v185[36] = *&v135[4];
    *&v185[40] = 2050;
    *&v185[42] = v127;
    *&v185[50] = 2050;
    *&v185[52] = v128;
    LODWORD(v131) = 60;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "CellFlow, selectsize, %{public}lu, thisslot, %{public}d, %{public}lu, valid, %{public}d, serving, %{public}d, slotcells, %{public}lu, %{public}lu", v185, v131);
    v130 = v129;
    sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::selectCurrentCells(CLCellVector, int, CLCellVector &, CLCellVector (&)[2])", "%s\n", v129);
    if (v130 != buf)
    {
      free(v130);
    }
  }
}

uint64_t sub_10007A8CC@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  sub_10003848C(v19);
  v4 = sub_10007ACC8(a1[2]);
  v5 = strlen(v4);
  v6 = sub_100038730(&v20, v4, v5);
  v7 = sub_100038730(v6, ", ", 2);
  v8 = sub_10007ACEC(a1[1]);
  v9 = strlen(v8);
  sub_100038730(v7, v8, v9);
  v10 = a1[2];
  if (v10 < 3)
  {
LABEL_4:
    v11 = sub_100038730(&v20, ", ", 2);
    sub_100075418(&__p);
    if ((v18 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v18 & 0x80u) == 0)
    {
      v13 = v18;
    }

    else
    {
      v13 = v17;
    }

    goto LABEL_10;
  }

  if (v10 == 9)
  {
    v11 = sub_100038730(&v20, ", ", 2);
    sub_100075418(&__p);
    if ((v18 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v18 & 0x80u) == 0)
    {
      v13 = v18;
    }

    else
    {
      v13 = v17;
    }
  }

  else
  {
    if (v10 == 7)
    {
      goto LABEL_4;
    }

    if (v10 - 3 > 2)
    {
      if (v10 == 10)
      {
        v11 = sub_100038730(&v20, ", ", 2);
        sub_100642C8C(&__p);
        if ((v18 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v18 & 0x80u) == 0)
        {
          v13 = v18;
        }

        else
        {
          v13 = v17;
        }
      }

      else
      {
        if (v10 != 6)
        {
          sub_100038730(&v20, ", UnknownCell", 13);
          goto LABEL_12;
        }

        v11 = sub_100038730(&v20, ", ", 2);
        sub_100075418(&__p);
        if ((v18 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v18 & 0x80u) == 0)
        {
          v13 = v18;
        }

        else
        {
          v13 = v17;
        }
      }
    }

    else
    {
      v11 = sub_100038730(&v20, ", ", 2);
      sub_100641C10(&__p);
      if ((v18 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v18 & 0x80u) == 0)
      {
        v13 = v18;
      }

      else
      {
        v13 = v17;
      }
    }
  }

LABEL_10:
  sub_100038730(v11, p_p, v13);
  if (v18 < 0)
  {
    operator delete(__p);
  }

LABEL_12:
  sub_100073518(v19, a2);
  v20 = v14;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10007AC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a15);
  _Unwind_Resume(a1);
}

const char *sub_10007ACC8(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return "Invalid";
  }

  else
  {
    return off_102464468[a1];
  }
}

const char *sub_10007ACEC(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Invalid";
  }

  else
  {
    return off_102464448[a1];
  }
}

void sub_10007AD10(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v6 = *(a1 + 8);
  if (v6 < 3)
  {
    goto LABEL_4;
  }

  if (v6 == 9)
  {
    *(a1 + 60) = a2;
    *(a1 + 64) = a3;
    *(a1 + 68) = a4;
    *(a1 + 72) = a5;
  }

  else
  {
    if (v6 == 7)
    {
LABEL_4:
      *(a1 + 28) = a2;
      *(a1 + 32) = a3;
      *(a1 + 36) = a4;
      *(a1 + 40) = a5;
      goto LABEL_5;
    }

    if (v6 - 3 > 2)
    {
      if (v6 == 10)
      {
        *(a1 + 624) = a2;
        *(a1 + 628) = a3;
        *(a1 + 656) = a4;
        *(a1 + 660) = a5;
        *(a1 + 632) = -1;
        *(a1 + 640) = 0u;
      }

      else if (v6 == 6)
      {
        *(a1 + 528) = a2;
        *(a1 + 532) = a3;
        *(a1 + 560) = a4;
        *(a1 + 564) = a5;
        *(a1 + 536) = -1;
        *(a1 + 544) = 0u;
      }
    }

    else
    {
      *(a1 + 128) = -1;
      *(a1 + 136) = -1;
      *(a1 + 140) = a4;
      *(a1 + 144) = a5;
    }
  }

LABEL_5:
  if (qword_1025D48A0 != -1)
  {
    sub_101B7C774();
  }

  v7 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    sub_10123DED0(a1, __p);
    v8 = v10 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v12 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CELL_LOC: override to, %s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B7C860(a1);
  }
}

__n128 sub_10007AEC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(v4 + 60) = *(a2 + 60);
  *(v4 + 32) = v6;
  *(v4 + 48) = v7;
  *(v4 + 16) = v5;
  *(v4 + 80) = *(a2 + 80);
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  sub_10038EB38((v4 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
  *(v4 + 112) = *(a2 + 112);
  v8 = *(a2 + 128);
  v9 = *(a2 + 144);
  v10 = *(a2 + 176);
  *(v4 + 160) = *(a2 + 160);
  *(v4 + 176) = v10;
  *(v4 + 128) = v8;
  *(v4 + 144) = v9;
  v11 = *(a2 + 192);
  v12 = *(a2 + 208);
  v13 = *(a2 + 240);
  *(v4 + 224) = *(a2 + 224);
  *(v4 + 240) = v13;
  *(v4 + 192) = v11;
  *(v4 + 208) = v12;
  v14 = *(a2 + 256);
  v15 = *(a2 + 272);
  v16 = *(a2 + 288);
  *(v4 + 300) = *(a2 + 300);
  *(v4 + 272) = v15;
  *(v4 + 288) = v16;
  *(v4 + 256) = v14;
  if (*(a2 + 343) < 0)
  {
    sub_100007244((v4 + 320), *(a2 + 320), *(a2 + 328));
  }

  else
  {
    v17 = *(a2 + 320);
    *(v4 + 336) = *(a2 + 336);
    *(v4 + 320) = v17;
  }

  v18 = *(a2 + 344);
  v19 = *(a2 + 376);
  *(v4 + 360) = *(a2 + 360);
  *(v4 + 376) = v19;
  *(v4 + 344) = v18;
  v20 = *(a2 + 392);
  v21 = *(a2 + 408);
  v22 = *(a2 + 440);
  *(v4 + 424) = *(a2 + 424);
  *(v4 + 440) = v22;
  *(v4 + 392) = v20;
  *(v4 + 408) = v21;
  v23 = *(a2 + 456);
  v24 = *(a2 + 472);
  v25 = *(a2 + 488);
  *(v4 + 504) = *(a2 + 504);
  *(v4 + 472) = v24;
  *(v4 + 488) = v25;
  *(v4 + 456) = v23;
  v26 = *(a2 + 512);
  v27 = *(a2 + 528);
  v28 = *(a2 + 560);
  *(v4 + 544) = *(a2 + 544);
  *(v4 + 560) = v28;
  *(v4 + 512) = v26;
  *(v4 + 528) = v27;
  v29 = *(a2 + 576);
  v30 = *(a2 + 592);
  v31 = *(a2 + 624);
  *(v4 + 608) = *(a2 + 608);
  *(v4 + 624) = v31;
  *(v4 + 576) = v29;
  *(v4 + 592) = v30;
  result = *(a2 + 640);
  v33 = *(a2 + 656);
  v34 = *(a2 + 672);
  *(v4 + 688) = *(a2 + 688);
  *(v4 + 656) = v33;
  *(v4 + 672) = v34;
  *(v4 + 640) = result;
  *(a1 + 8) = v4 + 696;
  return result;
}

void sub_10007B034(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 96) = v5;
    operator delete(v5);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

uint64_t sub_10007B05C(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v18 = *a1;
    v19 = 0x66FD0EB66FD0EB67 * ((v6 - *a1) >> 3) + 1;
    if (v19 > 0x5E293205E29320)
    {
      sub_10028C64C();
    }

    v20 = a2 - v18;
    v21 = 0x66FD0EB66FD0EB67 * ((v7 - v18) >> 3);
    v22 = 2 * v21;
    if (2 * v21 <= v19)
    {
      v22 = 0x66FD0EB66FD0EB67 * ((v6 - *a1) >> 3) + 1;
    }

    if (v21 >= 0x2F149902F14990)
    {
      v23 = 0x5E293205E29320;
    }

    else
    {
      v23 = v22;
    }

    *&v68 = a1;
    if (v23)
    {
      sub_100071EDC(a1, v23);
    }

    *&v66 = 0;
    *(&v66 + 1) = 8 * (v20 >> 3);
    v67 = *(&v66 + 1);
    sub_1006823FC(&v66, a3);
    v4 = sub_100682698(a1, &v66, v4);
    sub_10006FAE8(&v66);
  }

  else if (a2 == v6)
  {
    sub_10007AEC8(a1, a3);
  }

  else
  {
    v8 = a3[3];
    v68 = a3[2];
    v69[0] = v8;
    *(v69 + 12) = *(a3 + 60);
    v9 = a3[1];
    v66 = *a3;
    v67 = v9;
    v70 = *(a3 + 20);
    v110 = a1;
    v72 = 0;
    v10 = *(a3 + 11);
    v11 = *(a3 + 12);
    v71 = 0uLL;
    sub_10038EB38(&v71, v10, v11, (v11 - v10) >> 2);
    *(v84 + 12) = *(a3 + 300);
    v12 = a3[18];
    v83 = a3[17];
    v84[0] = v12;
    v13 = a3[14];
    v79 = a3[13];
    v80 = v13;
    v14 = a3[16];
    v81 = a3[15];
    v82 = v14;
    v15 = a3[10];
    v75 = a3[9];
    v76 = v15;
    v16 = a3[12];
    v77 = a3[11];
    v78 = v16;
    v17 = a3[8];
    v73 = a3[7];
    v74 = v17;
    if (*(a3 + 343) < 0)
    {
      sub_100007244(&v85, *(a3 + 40), *(a3 + 41));
    }

    else
    {
      v85 = a3[20];
      v86 = *(a3 + 42);
    }

    v24 = *(a3 + 488);
    v95 = *(a3 + 472);
    v96 = v24;
    v25 = *(a3 + 424);
    v91 = *(a3 + 408);
    v92 = v25;
    v26 = *(a3 + 456);
    v93 = *(a3 + 440);
    v94 = v26;
    v27 = *(a3 + 360);
    v87 = *(a3 + 344);
    v88 = v27;
    v28 = *(a3 + 392);
    v89 = *(a3 + 376);
    v90 = v28;
    v97 = *(a3 + 126);
    v29 = a3[41];
    v106 = a3[40];
    v107 = v29;
    v108 = a3[42];
    v109 = *(a3 + 172);
    v30 = a3[37];
    v102 = a3[36];
    v103 = v30;
    v31 = a3[39];
    v104 = a3[38];
    v105 = v31;
    v32 = a3[33];
    v98 = a3[32];
    v99 = v32;
    v33 = a3[35];
    v100 = a3[34];
    v101 = v33;
    sub_10068227C(a1, v4, a1[1], v4 + 696);
    *v4 = v66;
    v34 = v67;
    v35 = v68;
    v36 = v69[0];
    *(v4 + 60) = *(v69 + 12);
    *(v4 + 32) = v35;
    *(v4 + 48) = v36;
    *(v4 + 16) = v34;
    *(v4 + 80) = v70;
    v37 = *(v4 + 88);
    if (v37)
    {
      *(v4 + 96) = v37;
      operator delete(v37);
      *(v4 + 88) = 0;
      *(v4 + 96) = 0;
      *(v4 + 104) = 0;
    }

    *(v4 + 88) = v71;
    *(v4 + 104) = v72;
    v72 = 0;
    v71 = 0uLL;
    v38 = v77;
    v40 = v74;
    v39 = v75;
    *(v4 + 160) = v76;
    *(v4 + 176) = v38;
    *(v4 + 128) = v40;
    *(v4 + 144) = v39;
    v41 = v81;
    v43 = v78;
    v42 = v79;
    *(v4 + 224) = v80;
    *(v4 + 240) = v41;
    *(v4 + 192) = v43;
    *(v4 + 208) = v42;
    v45 = v83;
    v44 = v84[0];
    v46 = v82;
    *(v4 + 300) = *(v84 + 12);
    *(v4 + 272) = v45;
    *(v4 + 288) = v44;
    *(v4 + 256) = v46;
    *(v4 + 112) = v73;
    if (*(v4 + 343) < 0)
    {
      operator delete(*(v4 + 320));
    }

    v47 = v85;
    *(v4 + 336) = v86;
    *(v4 + 320) = v47;
    HIBYTE(v86) = 0;
    LOBYTE(v85) = 0;
    v49 = v92;
    v48 = v93;
    v50 = v91;
    *(v4 + 392) = v90;
    *(v4 + 408) = v50;
    *(v4 + 424) = v49;
    *(v4 + 440) = v48;
    v52 = v88;
    v51 = v89;
    *(v4 + 344) = v87;
    *(v4 + 360) = v52;
    *(v4 + 376) = v51;
    v53 = v94;
    v54 = v95;
    v55 = v96;
    *(v4 + 504) = v97;
    *(v4 + 472) = v54;
    *(v4 + 488) = v55;
    *(v4 + 456) = v53;
    v56 = v98;
    v57 = v99;
    v58 = v101;
    *(v4 + 544) = v100;
    *(v4 + 560) = v58;
    *(v4 + 512) = v56;
    *(v4 + 528) = v57;
    v59 = v102;
    v60 = v103;
    v61 = v105;
    *(v4 + 608) = v104;
    *(v4 + 624) = v61;
    *(v4 + 576) = v59;
    *(v4 + 592) = v60;
    v62 = v106;
    v63 = v107;
    v64 = v108;
    *(v4 + 688) = v109;
    *(v4 + 656) = v63;
    *(v4 + 672) = v64;
    *(v4 + 640) = v62;
    sub_1000720CC(&v66);
  }

  return v4;
}

void sub_10007B41C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10007B458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    sub_100682930(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v7 -= 696;
        sub_1000720CC(v7);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void sub_10007B4D8(uint64_t a1, uint64_t a2)
{
  nullsub_34();
  CFAbsoluteTimeGetCurrent();

  sub_10007BAA4(a1 + 120);
}

BOOL sub_10007B534(uint64_t a1)
{
  v4 = 0;
  v2 = 1;
  if (!sub_10000608C(a1, &v4, 1))
  {
    v5 = 3;
    return sub_10000608C(a1, &v5, 1) != 0;
  }

  return v2;
}

uint64_t sub_10007B5A0(uint64_t a1)
{
  v1 = a1;
  if (a1 < 0xC && ((0xEFFu >> a1) & 1) != 0)
  {
    v2 = 0x7EFu >> a1;
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018FE88C();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67240450;
      v5[1] = v1;
      v6 = 2082;
      v7 = sub_10007ACC8(v1);
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CellLoc, Invalid rat, %{public}d, %{public}s, #CloneMe", v5, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FEAA4(v1);
    }

    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

id sub_10007B6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_msgSend(*(a1 - 88) "vendor")];

  return [v5 syncgetBestMatchLocation:a3 forCell:a2];
}

void sub_10007B700(uint64_t a1)
{
  if (sub_1000735C0(*(a1 + 688)))
  {
    v2 = *(a1 + 688);
    sub_10000EC00(__p, "CellDatabase");
    v3 = sub_1006C5194(a1);
    v4 = sub_100652BD4(*(v3 + 32));
    sub_100BBF9F8(v2, __p, v4);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = *(a1 + 688);
    sub_10000EC00(__p, "CellLocalDatabase");
    v6 = sub_1006C521C(a1);
    v7 = sub_100652BD4(*(v6 + 32));
    sub_100BBF9F8(v5, __p, v7);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = *(a1 + 688);
    sub_10000EC00(__p, "CdmaCellDatabase");
    v9 = sub_1006C52A4(a1);
    v10 = sub_100652BD4(*(v9 + 32));
    sub_100BBF9F8(v8, __p, v10);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v11 = *(a1 + 688);
    sub_10000EC00(__p, "CdmaCellLocalDatabase");
    v12 = sub_1006C532C(a1);
    v13 = sub_100652BD4(*(v12 + 32));
    sub_100BBF9F8(v11, __p, v13);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v14 = *(a1 + 688);
    sub_10000EC00(__p, "ScdmaCellDatabase");
    v15 = sub_1006C5084(a1);
    v16 = sub_100652BD4(*(v15 + 32));
    sub_100BBF9F8(v14, __p, v16);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v17 = *(a1 + 688);
    sub_10000EC00(__p, "ScdmaCellLocalDatabase");
    v18 = sub_1006C510C(a1);
    v19 = sub_100652BD4(*(v18 + 32));
    sub_100BBF9F8(v17, __p, v19);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v20 = *(a1 + 688);
    sub_10000EC00(__p, "LteCellDatabase");
    v21 = sub_100090470(a1);
    v22 = sub_100652BD4(*(v21 + 32));
    sub_100BBF9F8(v20, __p, v22);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v23 = *(a1 + 688);
    sub_10000EC00(__p, "LteCellLocalDatabase");
    v24 = sub_10007BA1C(a1);
    v25 = sub_100652BD4(*(v24 + 32));
    sub_100BBF9F8(v23, __p, v25);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v26 = *(a1 + 688);
    sub_10000EC00(__p, "NrCellDatabase");
    v27 = sub_1006C53B4(a1);
    v28 = sub_100652BD4(*(v27 + 32));
    sub_100BBF9F8(v26, __p, v28);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v29 = *(a1 + 688);
    sub_10000EC00(__p, "NrCellLocalDatabase");
    v30 = sub_1006C543C(a1);
    v31 = sub_100652BD4(*(v30 + 32));
    sub_100BBF9F8(v29, __p, v31);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_10007B9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10007BA1C(uint64_t a1)
{
  result = *(a1 + 272);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_10007BAA4(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v455 = v4;
  v456 = v5;
  v461 = v6;
  sub_10000EC00(&v542, "none");
  sub_10000EC00(&v540, "none");
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (qword_1025D4620 != -1)
  {
    sub_1018FE9CC();
  }

  v8 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *v456;
    v10 = v456[1];
    v12 = (*(*v461 + 40))(v461);
    v13 = *(v3 + 96);
    v14 = vabdd_f64(v1, *(v3 + 76));
    *buf = 134349824;
    *&buf[4] = 0x66FD0EB66FD0EB67 * ((v10 - v11) >> 3);
    *&buf[12] = 1026;
    *&buf[14] = v12;
    *&buf[18] = 2050;
    *&buf[20] = v14;
    *&buf[28] = 1026;
    *&buf[30] = v13;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "CellFlow, compute, cells, %{public}zu, spectators, %{public}d, last, %{public}.1lf, type, %{public}d", buf, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FE9F4(buf);
    v369 = qword_1025D4628;
    v371 = *v456;
    v370 = v456[1];
    v372 = (*(*v461 + 40))(v461);
    v373 = *(v3 + 96);
    v374 = vabdd_f64(v1, *(v3 + 76));
    *v560 = 134349824;
    *&v560[4] = 0x66FD0EB66FD0EB67 * ((v370 - v371) >> 3);
    *&v560[12] = 1026;
    *&v560[14] = v372;
    *&v560[18] = 2050;
    *&v560[20] = v374;
    *&v560[28] = 1026;
    *&v560[30] = v373;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v369, 0, "CellFlow, compute, cells, %{public}zu, spectators, %{public}d, last, %{public}.1lf, type, %{public}d", v560, 34);
    v376 = v375;
    sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v375);
    if (v376 != buf)
    {
      free(v376);
    }
  }

  v16 = *v456;
  v15 = v456[1];
  if (v15 == *v456)
  {
    (*(*v461 + 56))(v461, "nocells");
    goto LABEL_488;
  }

  v458 = 0;
  v17 = 0;
  v538 = 0;
  v537 = 0;
  v539 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v460 = _Q0;
  v457 = v15;
  do
  {
    v22 = v16[2];
    if (v22 >= 8 && (v22 - 9) >= 2)
    {
      if (p_info[196] != -1)
      {
        sub_1018FE9CC();
        v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v44 = v8[197];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        sub_10123DED0(v16, buf);
        v45 = buf;
        if (buf[23] < 0)
        {
          v45 = *buf;
        }

        *v560 = 136446210;
        *&v560[4] = v45;
        _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEFAULT, "CellMatch, invalid cell, %{public}s, #CloneMe", v560, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FE9F4(buf);
        v8 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        v46 = qword_1025D4628;
        sub_10123DED0(v16, v560);
        v47 = v560;
        if (v560[23] < 0)
        {
          v47 = *v560;
        }

        *v577 = 136446210;
        *&v577[4] = v47;
        LODWORD(v453) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v46, 0, "CellMatch, invalid cell, %{public}s, #CloneMe", v577, v453);
        v39 = v48;
        if ((v560[23] & 0x80000000) != 0)
        {
          operator delete(*v560);
        }

        goto LABEL_52;
      }
    }

    else
    {
      if (sub_10007B5A0(v22))
      {
        sub_10000EC00(v618, "none");
        sub_10000EC00(&v618[24], "weak");
        sub_10000EC00(&v618[48], "strong");
        sub_10000EC00(&v618[72], "exact");
        LODWORD(v470[0]) = 0;
        *&v560[12] = 0;
        *&v560[4] = 0;
        *&v560[20] = xmmword_101C75BF0;
        *&v560[36] = v460;
        *&v560[52] = v460;
        *&v560[68] = v460;
        *v560 = 0xFFFF;
        v561 = 0;
        v562 = 0xBFF0000000000000;
        v563 = 0uLL;
        LODWORD(v564) = 0;
        *(&v564 + 4) = 0xBFF0000000000000;
        HIDWORD(v564) = 0x7FFFFFFF;
        memset(v565, 0, 25);
        LODWORD(v470[0]) = (*(*v461 + 24))(v461, v16, v560);
        v536 = 0;
        *&v577[12] = 0;
        *&v577[4] = 0;
        *&v577[20] = xmmword_101C75BF0;
        *&v577[36] = v460;
        *&v577[52] = v460;
        *&v577[68] = v460;
        *v577 = 0xFFFF;
        v578 = 0;
        v579 = 0xBFF0000000000000;
        v580 = 0;
        v581 = 0;
        LODWORD(v582) = 0;
        *(&v582 + 4) = 0xBFF0000000000000;
        HIDWORD(v582) = 0x7FFFFFFF;
        *&v584 = 0;
        v583 = 0uLL;
        BYTE8(v584) = 0;
        if (SLODWORD(v470[0]) <= 2)
        {
          v536 = (*(*v461 + 32))(v461, v16, v577);
        }

        if (p_info[196] != -1)
        {
          sub_1018FE9CC();
          v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        v23 = v8[197];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = &v618[24 * SLODWORD(v470[0])];
          if (v24[23] < 0)
          {
            v24 = *v24;
          }

          sub_1000753AC(v16, v543);
          v25 = v545[9];
          v26 = *v543;
          sub_100072AFC(v560, __p);
          v27 = v543;
          if (v25 < 0)
          {
            v27 = v26;
          }

          v28 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            v28 = __p[0];
          }

          *buf = 136446723;
          *&buf[4] = v24;
          *&buf[12] = 2081;
          *&buf[14] = v27;
          *&buf[22] = 2085;
          *&buf[24] = v28;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "CellMatch, best network, %{public}s, %{private}s, location, %{sensitive}s", buf, 0x20u);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          v8 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
          if ((v545[9] & 0x80000000) != 0)
          {
            operator delete(*v543);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (p_info[196] != -1)
          {
            sub_1018FE9CC();
            v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          }

          v69 = v8[197];
          v70 = &v618[24 * SLODWORD(v470[0])];
          if (v70[23] < 0)
          {
            v70 = *v70;
          }

          sub_1000753AC(v16, __p);
          v71 = SHIBYTE(__p[2]);
          v72 = __p[0];
          sub_100072AFC(v560, &v534);
          v73 = __p;
          if (v71 < 0)
          {
            v73 = v72;
          }

          v74 = &v534;
          if (v535 < 0)
          {
            v74 = v534;
          }

          *v543 = 136446723;
          *&v543[4] = v70;
          v544 = 2081;
          *v545 = v73;
          *&v545[8] = 2085;
          *&v545[10] = v74;
          LODWORD(v453) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v69, 2, "CellMatch, best network, %{public}s, %{private}s, location, %{sensitive}s", v543, v453);
          v76 = v75;
          if (SHIBYTE(v535) < 0)
          {
            operator delete(v534);
          }

          v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v76);
          if (v76 != buf)
          {
            free(v76);
          }
        }

        if (p_info[196] != -1)
        {
          sub_1018FE9CC();
          v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        v29 = v8[197];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v30 = &v618[24 * v536];
          if (v30[23] < 0)
          {
            v30 = *v30;
          }

          sub_100072AFC(v577, buf);
          v31 = buf;
          if (buf[23] < 0)
          {
            v31 = *buf;
          }

          *v543 = 136446467;
          *&v543[4] = v30;
          v544 = 2085;
          *v545 = v31;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "CellMatch, best tile, %{public}s, location, %{sensitive}s", v543, 0x16u);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (p_info[196] != -1)
          {
            sub_1018FE9CC();
            v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          }

          v77 = v8[197];
          v78 = &v618[24 * v536];
          if (v78[23] < 0)
          {
            v78 = *v78;
          }

          sub_100072AFC(v577, v543);
          v79 = v543;
          if (v545[9] < 0)
          {
            v79 = *v543;
          }

          LODWORD(__p[0]) = 136446467;
          *(__p + 4) = v78;
          WORD2(__p[1]) = 2085;
          *(&__p[1] + 6) = v79;
          LODWORD(v453) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v77, 2, "CellMatch, best tile, %{public}s, location, %{sensitive}s", __p, v453);
          v81 = v80;
          if ((v545[9] & 0x80000000) != 0)
          {
            operator delete(*v543);
          }

          sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v81);
          if (v81 != buf)
          {
            free(v81);
          }
        }

        v533 = 1;
        if (LODWORD(v470[0]) | v536)
        {
          if (SLODWORD(v470[0]) >= v536)
          {
            v533 = SLODWORD(v470[0]) < 3;
            v42 = v538;
            if (v538 >= v539)
            {
              v43 = sub_100094F30(&v537, v16, v470, v560, &v533);
            }

            else
            {
              sub_100682BEC(&v537, v16, v470, v560, &v533);
              v43 = v42 + 864;
            }

            v538 = v43;
            if (SHIBYTE(v541) < 0)
            {
              *(&v540 + 1) = 7;
              v50 = v540;
            }

            else
            {
              HIBYTE(v541) = 7;
              v50 = &v540;
            }

            strcpy(v50, "network");
            std::string::operator=(&v542, &v618[24 * SLODWORD(v470[0])]);
            ++HIDWORD(v458);
          }

          else
          {
            v533 = v536 < 2;
            v40 = v538;
            if (v538 >= v539)
            {
              v41 = sub_100094F30(&v537, v16, &v536, v577, &v533);
            }

            else
            {
              sub_100682BEC(&v537, v16, &v536, v577, &v533);
              v41 = v40 + 864;
            }

            v538 = v41;
            if (SHIBYTE(v541) < 0)
            {
              *(&v540 + 1) = 5;
              v49 = v540;
            }

            else
            {
              HIBYTE(v541) = 5;
              v49 = &v540;
            }

            strcpy(v49, "tiles");
            std::string::operator=(&v542, &v618[24 * v536]);
            LODWORD(v458) = v458 + 1;
          }

          if (p_info[196] != -1)
          {
            sub_1018FE9CC();
            v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          }

          v51 = v8[197];
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            sub_1000753AC(v16, v543);
            v52 = v543;
            if (v545[9] < 0)
            {
              v52 = *v543;
            }

            v53 = &v540;
            if (v541 < 0)
            {
              v53 = v540;
            }

            v54 = &v618[24 * SLODWORD(v470[0])];
            if (v54[23] < 0)
            {
              v54 = *v54;
            }

            v55 = &v618[24 * v536];
            if (v55[23] < 0)
            {
              v55 = *v55;
            }

            *buf = 136381699;
            *&buf[4] = v52;
            *&buf[12] = 2082;
            *&buf[14] = v53;
            *&buf[22] = 2082;
            *&buf[24] = v54;
            *&buf[32] = 2082;
            *&buf[34] = v55;
            *&buf[42] = 1026;
            *&buf[44] = v533;
            _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_INFO, "CellMatch, prefer, %{private}s, %{public}s, levels, %{public}s, %{public}s, als, %{public}d", buf, 0x30u);
            if ((v545[9] & 0x80000000) != 0)
            {
              operator delete(*v543);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018FE9F4(buf);
            v8 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
            v95 = qword_1025D4628;
            sub_1000753AC(v16, __p);
            v96 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v96 = __p[0];
            }

            v97 = &v540;
            if (v541 < 0)
            {
              v97 = v540;
            }

            v98 = &v618[24 * SLODWORD(v470[0])];
            if (v98[23] < 0)
            {
              v98 = *v98;
            }

            v99 = &v618[24 * v536];
            if (v99[23] < 0)
            {
              v99 = *v99;
            }

            *v543 = 136381699;
            *&v543[4] = v96;
            v544 = 2082;
            *v545 = v97;
            *&v545[8] = 2082;
            *&v545[10] = v98;
            *&v545[18] = 2082;
            *&v545[20] = v99;
            *&v545[28] = 1026;
            *&v545[30] = v533;
            LODWORD(v453) = 48;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v95, 1, "CellMatch, prefer, %{private}s, %{public}s, levels, %{public}s, %{public}s, als, %{public}d", v543, v453);
            v101 = v100;
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v101);
            if (v101 != buf)
            {
              free(v101);
            }
          }
        }

        else
        {
          buf[0] = 1;
          v32 = v538;
          if (v538 >= v539)
          {
            v33 = sub_100094F30(&v537, v16, v470, v560, buf);
          }

          else
          {
            sub_100682BEC(&v537, v16, v470, v560, buf);
            v33 = v32 + 864;
          }

          v538 = v33;
          v17 = (v17 + 1);
        }

        if (p_info[196] != -1)
        {
          sub_1018FE9CC();
          v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        v56 = v8[197];
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = v17;
          sub_1000753AC(v16, v543);
          v58 = v545[9];
          v59 = *v543;
          v60 = SHIBYTE(v542.__r_.__value_.__r.__words[2]);
          v61 = v542.__r_.__value_.__r.__words[0];
          v62 = SHIBYTE(v541);
          v63 = v540;
          sub_100075160(v16, __p);
          v64 = &v540;
          if (v62 < 0)
          {
            v64 = v63;
          }

          v65 = &v542;
          if (v60 < 0)
          {
            v65 = v61;
          }

          v66 = v543;
          if (v58 < 0)
          {
            v66 = v59;
          }

          *buf = 136381699;
          v67 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            v67 = __p[0];
          }

          *&buf[4] = v66;
          *&buf[12] = 2082;
          *&buf[14] = v65;
          *&buf[22] = 2082;
          *&buf[24] = v64;
          *&buf[32] = 2082;
          *&buf[34] = v67;
          *&buf[42] = 1026;
          *&buf[44] = v533;
          _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEFAULT, "@CellFlow, match, %{private}s, %{public}s, %{public}s, rat, %{public}s, needsAls, %{public}d", buf, 0x30u);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          v8 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          v17 = v57;
          v15 = v457;
          if ((v545[9] & 0x80000000) != 0)
          {
            operator delete(*v543);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018FE9F4(buf);
          HIDWORD(v454) = v17;
          v82 = qword_1025D4628;
          sub_1000753AC(v16, __p);
          v83 = SHIBYTE(__p[2]);
          v84 = __p[0];
          v85 = SHIBYTE(v542.__r_.__value_.__r.__words[2]);
          v86 = v542.__r_.__value_.__r.__words[0];
          v87 = SHIBYTE(v541);
          v88 = v540;
          sub_100075160(v16, &v534);
          v89 = &v540;
          if (v87 < 0)
          {
            v89 = v88;
          }

          v90 = &v542;
          if (v85 < 0)
          {
            v90 = v86;
          }

          v91 = __p;
          if (v83 < 0)
          {
            v91 = v84;
          }

          *v543 = 136381699;
          v92 = &v534;
          if (v535 < 0)
          {
            v92 = v534;
          }

          *&v543[4] = v91;
          v544 = 2082;
          *v545 = v90;
          *&v545[8] = 2082;
          *&v545[10] = v89;
          *&v545[18] = 2082;
          *&v545[20] = v92;
          *&v545[28] = 1026;
          *&v545[30] = v533;
          LODWORD(v454) = 48;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v82, 0, "@CellFlow, match, %{private}s, %{public}s, %{public}s, rat, %{public}s, needsAls, %{public}d", v543, v454);
          v94 = v93;
          if (SHIBYTE(v535) < 0)
          {
            operator delete(v534);
          }

          v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          v17 = HIDWORD(v453);
          v15 = v457;
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v94);
          if (v94 != buf)
          {
            free(v94);
          }
        }

        for (i = 0; i != -96; i -= 24)
        {
          if (v618[i + 95] < 0)
          {
            operator delete(*&v618[i + 72]);
          }
        }

        goto LABEL_118;
      }

      if (p_info[196] != -1)
      {
        sub_1018FE9CC();
        v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v34 = v8[197];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        sub_10123DED0(v16, buf);
        v35 = buf;
        if (buf[23] < 0)
        {
          v35 = *buf;
        }

        *v560 = 136380675;
        *&v560[4] = v35;
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "CellMatch, ignoring cell, %{private}s", v560, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FE9F4(buf);
        v8 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        v36 = qword_1025D4628;
        sub_10123DED0(v16, v560);
        v37 = v560;
        if (v560[23] < 0)
        {
          v37 = *v560;
        }

        *v577 = 136380675;
        *&v577[4] = v37;
        LODWORD(v453) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v36, 2, "CellMatch, ignoring cell, %{private}s", v577, v453);
        v39 = v38;
        if ((v560[23] & 0x80000000) != 0)
        {
          operator delete(*v560);
        }

LABEL_52:
        sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v39);
        if (v39 != buf)
        {
          free(v39);
        }
      }
    }

LABEL_118:
    v16 += 174;
  }

  while (v16 != v15);
  (*(*v461 + 96))(v461, HIDWORD(v458), v458, v17);
  v102 = v538;
  v103 = v537;
  if (v538 == v537)
  {
    v459 = 0;
  }

  else
  {
    v104 = 0;
    memset(v560, 0, 24);
    do
    {
      if (!*(v103 + 4))
      {
        if (v104 >= *&v560[16])
        {
          v104 = sub_10009722C(v560, v103);
        }

        else
        {
          sub_100682DE0(v560, v103);
          v104 += 864;
        }

        *&v560[8] = v104;
      }

      v103 += 864;
    }

    while (v103 != v102);
    v105 = *v560;
    if (v104 == *v560)
    {
      v144 = v537;
      v145 = v538;
      if (v537 != v538)
      {
        while (1)
        {
          *buf = *v144;
          v146 = *(v144 + 16);
          v147 = *(v144 + 32);
          v148 = *(v144 + 48);
          *&buf[60] = *(v144 + 60);
          *&buf[32] = v147;
          *&buf[48] = v148;
          *&buf[16] = v146;
          *&v624[4] = *(v144 + 80);
          v625 = 0;
          v626 = 0;
          *&v624[12] = 0;
          sub_10038EB38(&v624[12], *(v144 + 88), *(v144 + 96), (*(v144 + 96) - *(v144 + 88)) >> 2);
          v627 = *(v144 + 112);
          v149 = *(v144 + 128);
          v150 = *(v144 + 144);
          v151 = *(v144 + 176);
          v630 = *(v144 + 160);
          v631 = v151;
          v628 = v149;
          v629 = v150;
          v152 = *(v144 + 192);
          v153 = *(v144 + 208);
          v154 = *(v144 + 240);
          v634 = *(v144 + 224);
          v635 = v154;
          v632 = v152;
          v633 = v153;
          v155 = *(v144 + 256);
          v156 = *(v144 + 272);
          v157 = *(v144 + 288);
          *(v638 + 12) = *(v144 + 300);
          v637 = v156;
          v638[0] = v157;
          v636 = v155;
          if (*(v144 + 343) < 0)
          {
            sub_100007244(&v639, *(v144 + 320), *(v144 + 328));
          }

          else
          {
            v158 = *(v144 + 320);
            v640 = *(v144 + 336);
            v639 = v158;
          }

          v159 = *(v144 + 344);
          v160 = *(v144 + 376);
          v642 = *(v144 + 360);
          v643 = v160;
          v641 = v159;
          v161 = *(v144 + 392);
          v162 = *(v144 + 408);
          v163 = *(v144 + 440);
          v646 = *(v144 + 424);
          v647 = v163;
          v644 = v161;
          v645 = v162;
          v164 = *(v144 + 456);
          v165 = *(v144 + 472);
          v166 = *(v144 + 488);
          v651 = *(v144 + 504);
          v649 = v165;
          v650 = v166;
          v648 = v164;
          v167 = *(v144 + 512);
          v168 = *(v144 + 528);
          v169 = *(v144 + 560);
          v654 = *(v144 + 544);
          v655 = v169;
          v652 = v167;
          v653 = v168;
          v170 = *(v144 + 576);
          v171 = *(v144 + 592);
          v172 = *(v144 + 624);
          v658 = *(v144 + 608);
          v659 = v172;
          v656 = v170;
          v657 = v171;
          v173 = *(v144 + 640);
          v174 = *(v144 + 656);
          v175 = *(v144 + 672);
          v663 = *(v144 + 688);
          v661 = v174;
          v662 = v175;
          v660 = v173;
          v664 = *(v144 + 696);
          v176 = *(v144 + 716);
          v665 = *(v144 + 700);
          v666 = v176;
          v177 = *(v144 + 780);
          v179 = *(v144 + 732);
          v178 = *(v144 + 748);
          v669 = *(v144 + 764);
          v670 = v177;
          v667 = v179;
          v668 = v178;
          v181 = *(v144 + 812);
          v180 = *(v144 + 828);
          v182 = *(v144 + 796);
          *&v673[12] = *(v144 + 840);
          v672 = v181;
          *v673 = v180;
          v671 = v182;
          v183 = *(v144 + 856);
          v674 = v183;
          if (SHIBYTE(v640) < 0)
          {
            operator delete(v639);
          }

          if (*&v624[12])
          {
            v625 = *&v624[12];
            operator delete(*&v624[12]);
          }

          if (v183)
          {
            break;
          }

          v144 += 864;
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          if (v144 == v145)
          {
            v144 = v145;
            goto LABEL_205;
          }
        }

        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
LABEL_205:
        v145 = v538;
      }

      _ZF = v144 == v145;
    }

    else
    {
      while (1)
      {
        *buf = *v105;
        v106 = *(v105 + 16);
        v107 = *(v105 + 32);
        v108 = *(v105 + 48);
        *&buf[60] = *(v105 + 60);
        *&buf[32] = v107;
        *&buf[48] = v108;
        *&buf[16] = v106;
        *&v624[4] = *(v105 + 80);
        v625 = 0;
        v626 = 0;
        *&v624[12] = 0;
        sub_10038EB38(&v624[12], *(v105 + 88), *(v105 + 96), (*(v105 + 96) - *(v105 + 88)) >> 2);
        v627 = *(v105 + 112);
        v109 = *(v105 + 128);
        v110 = *(v105 + 144);
        v111 = *(v105 + 176);
        v630 = *(v105 + 160);
        v631 = v111;
        v628 = v109;
        v629 = v110;
        v112 = *(v105 + 192);
        v113 = *(v105 + 208);
        v114 = *(v105 + 240);
        v634 = *(v105 + 224);
        v635 = v114;
        v632 = v112;
        v633 = v113;
        v115 = *(v105 + 256);
        v116 = *(v105 + 272);
        v117 = *(v105 + 288);
        *(v638 + 12) = *(v105 + 300);
        v637 = v116;
        v638[0] = v117;
        v636 = v115;
        if (*(v105 + 343) < 0)
        {
          sub_100007244(&v639, *(v105 + 320), *(v105 + 328));
        }

        else
        {
          v118 = *(v105 + 320);
          v640 = *(v105 + 336);
          v639 = v118;
        }

        v119 = *(v105 + 344);
        v120 = *(v105 + 376);
        v642 = *(v105 + 360);
        v643 = v120;
        v641 = v119;
        v121 = *(v105 + 392);
        v122 = *(v105 + 408);
        v123 = *(v105 + 440);
        v646 = *(v105 + 424);
        v647 = v123;
        v644 = v121;
        v645 = v122;
        v124 = *(v105 + 456);
        v125 = *(v105 + 472);
        v126 = *(v105 + 488);
        v651 = *(v105 + 504);
        v649 = v125;
        v650 = v126;
        v648 = v124;
        v127 = *(v105 + 512);
        v128 = *(v105 + 528);
        v129 = *(v105 + 560);
        v654 = *(v105 + 544);
        v655 = v129;
        v652 = v127;
        v653 = v128;
        v130 = *(v105 + 576);
        v131 = *(v105 + 592);
        v132 = *(v105 + 624);
        v658 = *(v105 + 608);
        v659 = v132;
        v656 = v130;
        v657 = v131;
        v133 = *(v105 + 640);
        v134 = *(v105 + 656);
        v135 = *(v105 + 672);
        v663 = *(v105 + 688);
        v661 = v134;
        v662 = v135;
        v660 = v133;
        v664 = *(v105 + 696);
        v136 = *(v105 + 716);
        v665 = *(v105 + 700);
        v666 = v136;
        v137 = *(v105 + 780);
        v139 = *(v105 + 732);
        v138 = *(v105 + 748);
        v669 = *(v105 + 764);
        v670 = v137;
        v667 = v139;
        v668 = v138;
        v141 = *(v105 + 812);
        v140 = *(v105 + 828);
        v142 = *(v105 + 796);
        *&v673[12] = *(v105 + 840);
        v672 = v141;
        *v673 = v140;
        v671 = v142;
        v143 = *(v105 + 856);
        v674 = v143;
        if (SHIBYTE(v640) < 0)
        {
          operator delete(v639);
        }

        if (*&v624[12])
        {
          v625 = *&v624[12];
          operator delete(*&v624[12]);
        }

        if (v143)
        {
          break;
        }

        v105 += 864;
        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        if (v105 == v104)
        {
          v105 = v104;
          goto LABEL_203;
        }
      }

      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
LABEL_203:
      _ZF = v105 == *&v560[8];
    }

    v185 = !_ZF;
    v459 = v185;
    *buf = v560;
    sub_100093EE8(buf);
    v103 = v537;
    v102 = v538;
  }

  memset(__p, 0, 24);
  sub_100097884(__p, v103, v102, 0x84BDA12F684BDA13 * ((v102 - v103) >> 5));
  v186 = 126 - 2 * __clz(0x84BDA12F684BDA13 * ((__p[1] - __p[0]) >> 5));
  if (__p[1] == __p[0])
  {
    v187 = 0;
  }

  else
  {
    v187 = v186;
  }

  sub_100095494(__p[0], __p[1], v187, 1);
  if (p_info[196] != -1)
  {
    sub_1018FE9CC();
    v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  }

  v188 = v8[197];
  if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
  {
    v189 = 0x66FD0EB66FD0EB67 * ((v456[1] - *v456) >> 3);
    *buf = 134349824;
    *&buf[4] = v189;
    *&buf[12] = 2050;
    *&buf[14] = 0x84BDA12F684BDA13 * ((v538 - v537) >> 5);
    *&buf[22] = 2050;
    *&buf[24] = 0x84BDA12F684BDA13 * ((__p[1] - __p[0]) >> 5);
    *&buf[32] = 1026;
    *&buf[34] = v459;
    _os_log_impl(dword_100000000, v188, OS_LOG_TYPE_DEFAULT, "@CellFlow, counts, in, %{public}lu, sortIn, %{public}lu, sortOut, %{public}lu, shouldQuery, %{public}d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FE9F4(buf);
    v8 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v377 = 0x66FD0EB66FD0EB67 * ((v456[1] - *v456) >> 3);
    *v560 = 134349824;
    *&v560[4] = v377;
    *&v560[12] = 2050;
    *&v560[14] = 0x84BDA12F684BDA13 * ((v538 - v537) >> 5);
    *&v560[22] = 2050;
    *&v560[24] = 0x84BDA12F684BDA13 * ((__p[1] - __p[0]) >> 5);
    *&v560[32] = 1026;
    *&v560[34] = v459;
    LODWORD(v453) = 38;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "@CellFlow, counts, in, %{public}lu, sortIn, %{public}lu, sortOut, %{public}lu, shouldQuery, %{public}d", v560, v453);
    v379 = v378;
    sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v378);
    if (v379 != buf)
    {
      free(v379);
    }
  }

  v190 = __p[0];
  for (j = __p[1]; v190 != j; v190 += 864)
  {
    if (p_info[196] != -1)
    {
      sub_1018FE9CC();
      v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v192 = v8[197];
    if (os_log_type_enabled(v192, OS_LOG_TYPE_DEBUG))
    {
      sub_1000753AC(v190, buf);
      v193 = buf[23];
      v194 = *buf;
      sub_100072AFC((v190 + 700), v560);
      if (v193 >= 0)
      {
        v195 = buf;
      }

      else
      {
        v195 = v194;
      }

      if (v560[23] >= 0)
      {
        v196 = v560;
      }

      else
      {
        v196 = *v560;
      }

      *v577 = 136380931;
      *&v577[4] = v195;
      *&v577[12] = 2085;
      *&v577[14] = v196;
      _os_log_impl(dword_100000000, v192, OS_LOG_TYPE_DEBUG, "CellMatch, preferred cell matches, in ascending order, %{private}s, %{sensitive}s", v577, 0x16u);
      if ((v560[23] & 0x80000000) != 0)
      {
        operator delete(*v560);
      }

      v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    if (sub_10000A100(121, 2))
    {
      sub_1018FE9F4(buf);
      v197 = qword_1025D4628;
      sub_1000753AC(v190, v560);
      v198 = v560[23];
      v199 = *v560;
      sub_100072AFC((v190 + 700), v577);
      if (v198 >= 0)
      {
        v200 = v560;
      }

      else
      {
        v200 = v199;
      }

      v201 = v577;
      if (v577[23] < 0)
      {
        v201 = *v577;
      }

      *v618 = 136380931;
      *&v618[4] = v200;
      *&v618[12] = 2085;
      *&v618[14] = v201;
      LODWORD(v453) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v197, 2, "CellMatch, preferred cell matches, in ascending order, %{private}s, %{sensitive}s", v618, v453);
      v203 = v202;
      if ((v577[23] & 0x80000000) != 0)
      {
        operator delete(*v577);
      }

      v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      if ((v560[23] & 0x80000000) != 0)
      {
        operator delete(*v560);
      }

      sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v203);
      if (v203 != buf)
      {
        free(v203);
      }

      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }
  }

  *&v618[12] = 0;
  *&v618[4] = 0;
  *&v618[20] = xmmword_101C75BF0;
  *&v618[36] = v460;
  *&v618[52] = v460;
  *&v618[68] = v460;
  *v618 = 0xFFFF;
  *&v618[84] = 0;
  *&v618[88] = 0xBFF0000000000000;
  v619 = 0uLL;
  *(&v620 + 4) = 0xBFF0000000000000;
  LODWORD(v620) = 0;
  HIDWORD(v620) = 0x7FFFFFFF;
  memset(v621, 0, 25);
  v204 = *v456;
  *v577 = **v456;
  v205 = *(v204 + 1);
  v206 = *(v204 + 2);
  v207 = *(v204 + 3);
  *&v577[60] = *(v204 + 15);
  *&v577[32] = v206;
  *&v577[48] = v207;
  *&v577[80] = v204[20];
  v581 = 0;
  v579 = 0;
  v580 = 0;
  v208 = *(v204 + 11);
  v209 = *(v204 + 12);
  *&v577[16] = v205;
  sub_10038EB38(&v579, v208, v209, (v209 - v208) >> 2);
  v210 = *(v204 + 16);
  v211 = *(v204 + 17);
  v212 = *(v204 + 18);
  *(v593 + 12) = *(v204 + 75);
  v582 = *(v204 + 7);
  v213 = *(v204 + 8);
  v214 = *(v204 + 9);
  v215 = *(v204 + 11);
  v585 = *(v204 + 10);
  v586 = v215;
  v583 = v213;
  v584 = v214;
  v216 = *(v204 + 12);
  v217 = *(v204 + 13);
  v218 = *(v204 + 15);
  v589 = *(v204 + 14);
  v590 = v218;
  v587 = v216;
  v588 = v217;
  v592 = v211;
  v593[0] = v212;
  v591 = v210;
  if (*(v204 + 343) < 0)
  {
    sub_100007244(&__src, *(v204 + 40), *(v204 + 41));
  }

  else
  {
    v219 = *(v204 + 20);
    __src.__r_.__value_.__r.__words[2] = *(v204 + 42);
    *&__src.__r_.__value_.__l.__data_ = v219;
  }

  v220 = *(v204 + 86);
  v221 = *(v204 + 94);
  v596 = *(v204 + 90);
  v597 = v221;
  v595 = v220;
  v222 = *(v204 + 98);
  v223 = *(v204 + 102);
  v224 = *(v204 + 110);
  v600 = *(v204 + 106);
  v601 = v224;
  v598 = v222;
  v599 = v223;
  v225 = v204[126];
  v226 = *(v204 + 114);
  v227 = *(v204 + 122);
  v603 = *(v204 + 118);
  v604 = v227;
  v602 = v226;
  v605 = v225;
  v228 = *(v204 + 32);
  v229 = *(v204 + 33);
  v230 = *(v204 + 35);
  v608 = *(v204 + 34);
  v609 = v230;
  v606 = v228;
  v607 = v229;
  v231 = *(v204 + 36);
  v232 = *(v204 + 37);
  v233 = *(v204 + 39);
  v612 = *(v204 + 38);
  v613 = v233;
  v610 = v231;
  v611 = v232;
  v234 = *(v204 + 40);
  v235 = *(v204 + 41);
  v236 = *(v204 + 42);
  v617 = v204[172];
  v615 = v235;
  v616 = v236;
  v614 = v234;
  v237 = __p[1];
  if (__p[1] != __p[0])
  {
    *v577 = *(__p[1] - 54);
    v238 = *(__p[1] - 53);
    v239 = *(__p[1] - 52);
    v240 = *(__p[1] - 51);
    *&v577[60] = *(__p[1] - 804);
    *&v577[32] = v239;
    *&v577[48] = v240;
    *&v577[16] = v238;
    *&v577[80] = *(__p[1] - 196);
    if (v577 != __p[1] - 864)
    {
      sub_100731D80(&v579, *(__p[1] - 97), *(__p[1] - 96), (*(__p[1] - 96) - *(__p[1] - 97)) >> 2);
    }

    v582 = *(v237 - 47);
    v241 = *(v237 - 46);
    v242 = *(v237 - 45);
    v243 = *(v237 - 43);
    v585 = *(v237 - 44);
    v586 = v243;
    v583 = v241;
    v584 = v242;
    v244 = *(v237 - 42);
    v245 = *(v237 - 41);
    v246 = *(v237 - 39);
    v589 = *(v237 - 40);
    v590 = v246;
    v587 = v244;
    v588 = v245;
    v247 = *(v237 - 38);
    v248 = *(v237 - 37);
    v249 = *(v237 - 36);
    *(v593 + 12) = *(v237 - 564);
    v592 = v248;
    v593[0] = v249;
    v591 = v247;
    std::string::operator=(&__src, (v237 - 34));
    v250 = *(v237 - 520);
    v251 = *(v237 - 488);
    v596 = *(v237 - 504);
    v597 = v251;
    v595 = v250;
    v252 = *(v237 - 472);
    v253 = *(v237 - 456);
    v254 = *(v237 - 424);
    v600 = *(v237 - 440);
    v601 = v254;
    v598 = v252;
    v599 = v253;
    v255 = *(v237 - 408);
    v256 = *(v237 - 392);
    v257 = *(v237 - 376);
    v605 = *(v237 - 90);
    v603 = v256;
    v604 = v257;
    v602 = v255;
    v258 = *(v237 - 22);
    v259 = *(v237 - 21);
    v260 = *(v237 - 19);
    v608 = *(v237 - 20);
    v609 = v260;
    v606 = v258;
    v607 = v259;
    v261 = *(v237 - 18);
    v262 = *(v237 - 17);
    v263 = *(v237 - 15);
    v612 = *(v237 - 16);
    v613 = v263;
    v610 = v261;
    v611 = v262;
    v264 = *(v237 - 14);
    v265 = *(v237 - 13);
    v266 = *(v237 - 12);
    v617 = *(v237 - 44);
    v615 = v265;
    v616 = v266;
    v614 = v264;
    v267 = *(v237 - 148);
    *v618 = *(v237 - 164);
    *&v618[16] = v267;
    v268 = *(v237 - 132);
    v269 = *(v237 - 116);
    v270 = *(v237 - 84);
    *&v618[64] = *(v237 - 100);
    *&v618[80] = v270;
    *&v618[32] = v268;
    *&v618[48] = v269;
    v271 = *(v237 - 68);
    v272 = *(v237 - 52);
    v273 = *(v237 - 36);
    *&v621[12] = *(v237 - 24);
    v620 = v272;
    *v621 = v273;
    v619 = v271;
  }

  v533 = 0;
  if (v459 && (*(*v461 + 40))(v461))
  {
    v533 = (*(*v461 + 72))(v461);
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (p_info[196] != -1)
  {
    sub_1018FE9CC();
    v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  }

  v275 = v8[197];
  if (os_log_type_enabled(v275, OS_LOG_TYPE_DEBUG))
  {
    sub_100075160(v577, v560);
    v276 = v560[23];
    v277 = *v560;
    sub_100096990(v577, v543);
    v278 = v560;
    if (v276 < 0)
    {
      v278 = v277;
    }

    if (v545[9] >= 0)
    {
      v279 = v543;
    }

    else
    {
      v279 = *v543;
    }

    v280 = &v540;
    if (v541 < 0)
    {
      v280 = v540;
    }

    v281 = &v542;
    if ((v542.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v281 = v542.__r_.__value_.__r.__words[0];
    }

    *buf = 136447747;
    *&buf[4] = v455;
    *&buf[12] = 2082;
    *&buf[14] = v278;
    *&buf[22] = 2082;
    *&buf[24] = v279;
    *&buf[32] = 2049;
    *&buf[34] = *&v618[20];
    *&buf[42] = 2082;
    *&buf[44] = v280;
    *&buf[52] = 2082;
    *&buf[54] = v281;
    *&buf[62] = 1026;
    *&buf[64] = Current % 10;
    _os_log_impl(dword_100000000, v275, OS_LOG_TYPE_DEBUG, "UclpMetric, fixattempt, %{public}s, %{public}s, %{public}s, acc, %{private}.0f, %{public}s, %{public}s, submit10, %{public}d", buf, 0x44u);
    if ((v545[9] & 0x80000000) != 0)
    {
      operator delete(*v543);
    }

    v8 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if ((v560[23] & 0x80000000) != 0)
    {
      operator delete(*v560);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FE9F4(buf);
    v380 = qword_1025D4628;
    sub_100075160(v577, v543);
    v381 = v545[9];
    v382 = *v543;
    sub_100096990(v577, &v534);
    v383 = v543;
    if (v381 < 0)
    {
      v383 = v382;
    }

    if (v535 >= 0)
    {
      v384 = &v534;
    }

    else
    {
      v384 = v534;
    }

    v385 = &v540;
    if (v541 < 0)
    {
      v385 = v540;
    }

    v386 = &v542;
    if ((v542.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v386 = v542.__r_.__value_.__r.__words[0];
    }

    *v560 = 136447747;
    *&v560[4] = v455;
    *&v560[12] = 2082;
    *&v560[14] = v383;
    *&v560[22] = 2082;
    *&v560[24] = v384;
    *&v560[32] = 2049;
    *&v560[34] = *&v618[20];
    *&v560[42] = 2082;
    *&v560[44] = v385;
    *&v560[52] = 2082;
    *&v560[54] = v386;
    *&v560[62] = 1026;
    *&v560[64] = Current % 10;
    LODWORD(v453) = 68;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v380, 2, "UclpMetric, fixattempt, %{public}s, %{public}s, %{public}s, acc, %{private}.0f, %{public}s, %{public}s, submit10, %{public}d", v560, v453);
    v388 = v387;
    if (SHIBYTE(v535) < 0)
    {
      operator delete(v534);
    }

    v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    if ((v545[9] & 0x80000000) != 0)
    {
      operator delete(*v543);
    }

    sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v388);
    if (v388 != buf)
    {
      free(v388);
    }
  }

  if (!(Current % 10))
  {
    v472 = _NSConcreteStackBlock;
    v473 = 3321888768;
    v478 = *&v577[16];
    v479 = *&v577[32];
    v480[0] = *&v577[48];
    *(v480 + 12) = *&v577[60];
    v474 = sub_10025BFA4;
    v475 = &unk_1024685C0;
    v476 = v455;
    v477 = *v577;
    v481 = *&v577[80];
    v483 = 0;
    v484 = 0;
    v482 = 0;
    sub_10038EB38(&v482, v579, v580, (v580 - v579) >> 2);
    v494 = v591;
    v495 = v592;
    v496[0] = v593[0];
    *(v496 + 12) = *(v593 + 12);
    v492 = v589;
    v493 = v590;
    v490 = v587;
    v491 = v588;
    v486 = v583;
    v487 = v584;
    v488 = v585;
    v489 = v586;
    v485 = v582;
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100007244(&v497, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
    }

    else
    {
      v497 = __src;
    }

    v506 = v603;
    v507 = v604;
    v508 = v605;
    v502 = v599;
    v503 = v600;
    v504 = v601;
    v505 = v602;
    v498 = v595;
    v499 = v596;
    v500 = v597;
    v501 = v598;
    v517 = v614;
    v518 = v615;
    v519 = v616;
    v513 = v610;
    v514 = v611;
    v515 = v612;
    v516 = v613;
    v509 = v606;
    v510 = v607;
    v511 = v608;
    v512 = v609;
    v520 = v617;
    *&v532[12] = *&v621[12];
    v530 = v619;
    v531 = v620;
    *v532 = *v621;
    v526 = *&v618[32];
    v527 = *&v618[48];
    v528 = *&v618[64];
    v529 = *&v618[80];
    v524 = *v618;
    v525 = *&v618[16];
    if (SHIBYTE(v541) < 0)
    {
      sub_100007244(&v521, v540, *(&v540 + 1));
    }

    else
    {
      v521 = v540;
      v522 = v541;
    }

    if (SHIBYTE(v542.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100007244(&v523, v542.__r_.__value_.__l.__data_, v542.__r_.__value_.__l.__size_);
    }

    else
    {
      v523 = v542;
    }

    AnalyticsSendEventLazy();
    if (SHIBYTE(v523.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v523.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v522) < 0)
    {
      operator delete(v521);
    }

    if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v497.__r_.__value_.__l.__data_);
    }

    if (v482)
    {
      v483 = v482;
      operator delete(v482);
    }
  }

  if (*&v618[20] < 0.0)
  {
    if (p_info[196] != -1)
    {
      sub_1018FE9CC();
      v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v283 = v8[197];
    if (os_log_type_enabled(v283, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000753AC(v577, buf);
      v284 = buf[23] >= 0 ? buf : *buf;
      *v560 = 136380931;
      *&v560[4] = v284;
      *&v560[12] = 1026;
      *&v560[14] = v533;
      _os_log_impl(dword_100000000, v283, OS_LOG_TYPE_DEFAULT, "@ClxCell, Fix, 0, ll, N/A, Unknown, %{private}s, querying, %{public}d", v560, 0x12u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FE9F4(buf);
      v8 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      v389 = qword_1025D4628;
      sub_1000753AC(v577, v560);
      if (v560[23] >= 0)
      {
        v390 = v560;
      }

      else
      {
        v390 = *v560;
      }

      *v543 = 136380931;
      *&v543[4] = v390;
      v544 = 1026;
      *v545 = v533;
      LODWORD(v453) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v389, 0, "@ClxCell, Fix, 0, ll, N/A, Unknown, %{private}s, querying, %{public}d", v543, v453);
      v392 = v391;
      if ((v560[23] & 0x80000000) != 0)
      {
        operator delete(*v560);
      }

      sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v392);
      if (v392 != buf)
      {
        free(v392);
      }
    }

    v285 = *v461;
    if (v533)
    {
      v286 = (v285 + 104);
      v287 = "alsquery";
    }

    else
    {
      v286 = (v285 + 56);
      v287 = "nofix";
    }

    (*v286)(v461, v287);
    if (*&v577[8] == 10)
    {
      if ((*(*v461 + 48))(v461))
      {
        (*(*v461 + 80))(v461, "nr cell nofix");
      }

      else
      {
        if (p_info[196] != -1)
        {
          sub_1018FE9CC();
          v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        v310 = v8[197];
        if (os_log_type_enabled(v310, OS_LOG_TYPE_DEFAULT))
        {
          v311 = (*(*v461 + 48))(v461);
          *buf = 67240192;
          *&buf[4] = v311;
          _os_log_impl(dword_100000000, v310, OS_LOG_TYPE_DEFAULT, "CellFlow, skipreqwifi, locationclients, %{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018FE9F4(buf);
          v312 = qword_1025D4628;
          v313 = (*(*v461 + 48))(v461);
          *v560 = 67240192;
          *&v560[4] = v313;
          LODWORD(v453) = 8;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v312, 0, "CellFlow, skipreqwifi, locationclients, %{public}d", v560, v453);
          v315 = v314;
          sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v314);
          if (v315 != buf)
          {
            free(v315);
          }
        }
      }
    }

    goto LABEL_483;
  }

  if (*&v577[8] == 6)
  {
    v288 = *(sub_10007513C(v577, v282) + 56);
  }

  else
  {
    v288 = -1;
  }

  v289 = (*(*v461 + 112))(v461, v577, v618);
  if (p_info[196] != -1)
  {
    sub_1018FE9CC();
    v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  }

  v290 = v8[197];
  if (os_log_type_enabled(v290, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000753AC(v577, v560);
    if (v560[23] >= 0)
    {
      v291 = v560;
    }

    else
    {
      v291 = *v560;
    }

    v292 = *&v618[20];
    if (v541 >= 0)
    {
      v293 = &v540;
    }

    else
    {
      v293 = v540;
    }

    if ((v542.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v294 = &v542;
    }

    else
    {
      v294 = v542.__r_.__value_.__r.__words[0];
    }

    sub_100075160(v577, v543);
    v295 = v545[9];
    v296 = *v543;
    sub_100096990(v577, &v534);
    v297 = v543;
    if (v295 < 0)
    {
      v297 = v296;
    }

    if (v535 >= 0)
    {
      v298 = &v534;
    }

    else
    {
      v298 = v534;
    }

    *buf = 136382723;
    *&buf[4] = v291;
    *&buf[12] = 2049;
    *&buf[14] = v292;
    *&buf[22] = 2082;
    *&buf[24] = v293;
    *&buf[32] = 2082;
    *&buf[34] = v294;
    *&buf[42] = 2082;
    *&buf[44] = v297;
    *&buf[52] = 2082;
    *&buf[54] = v298;
    *&buf[62] = 1026;
    *&buf[64] = v289;
    *&buf[68] = 1026;
    *&buf[70] = v288;
    *&buf[74] = 2082;
    *v624 = v455;
    _os_log_impl(dword_100000000, v290, OS_LOG_TYPE_DEFAULT, "CellFlow, fix, %{private}s, acc, %{private}.0f, %{public}s, %{public}s, %{public}s, %{public}s, notify, %{public}d, deploymentType, %{public}d, %{public}s", buf, 0x54u);
    if (SHIBYTE(v535) < 0)
    {
      operator delete(v534);
    }

    v8 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if ((v545[9] & 0x80000000) != 0)
    {
      operator delete(*v543);
    }

    if ((v560[23] & 0x80000000) != 0)
    {
      operator delete(*v560);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FE9F4(buf);
    v393 = qword_1025D4628;
    sub_1000753AC(v577, v543);
    if (v545[9] >= 0)
    {
      v394 = v543;
    }

    else
    {
      v394 = *v543;
    }

    v395 = *&v618[20];
    if (v541 >= 0)
    {
      v396 = &v540;
    }

    else
    {
      v396 = v540;
    }

    if ((v542.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v397 = &v542;
    }

    else
    {
      v397 = v542.__r_.__value_.__r.__words[0];
    }

    sub_100075160(v577, &v534);
    v398 = SHIBYTE(v535);
    v399 = v534;
    sub_100096990(v577, v470);
    v400 = &v534;
    if (v398 < 0)
    {
      v400 = v399;
    }

    if (v471 >= 0)
    {
      v401 = v470;
    }

    else
    {
      v401 = v470[0];
    }

    *v560 = 136382723;
    *&v560[4] = v394;
    *&v560[12] = 2049;
    *&v560[14] = v395;
    *&v560[22] = 2082;
    *&v560[24] = v396;
    *&v560[32] = 2082;
    *&v560[34] = v397;
    *&v560[42] = 2082;
    *&v560[44] = v400;
    *&v560[52] = 2082;
    *&v560[54] = v401;
    *&v560[62] = 1026;
    *&v560[64] = v289;
    *&v560[68] = 1026;
    *&v560[70] = v288;
    *&v560[74] = 2082;
    *&v560[76] = v455;
    LODWORD(v453) = 84;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v393, 0, "CellFlow, fix, %{private}s, acc, %{private}.0f, %{public}s, %{public}s, %{public}s, %{public}s, notify, %{public}d, deploymentType, %{public}d, %{public}s", v560, v453);
    v403 = v402;
    if (v471 < 0)
    {
      operator delete(v470[0]);
    }

    v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    if (SHIBYTE(v535) < 0)
    {
      operator delete(v534);
    }

    if ((v545[9] & 0x80000000) != 0)
    {
      operator delete(*v543);
    }

    sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v403);
    if (v403 != buf)
    {
      free(v403);
    }
  }

  if (v541 >= 0)
  {
    v299 = HIBYTE(v541);
  }

  else
  {
    v299 = *(&v540 + 1);
  }

  sub_100070148(buf, v299 + 1);
  if (buf[23] >= 0)
  {
    v300 = buf;
  }

  else
  {
    v300 = *buf;
  }

  if (v299)
  {
    if (v541 >= 0)
    {
      v301 = &v540;
    }

    else
    {
      v301 = v540;
    }

    memmove(v300, v301, v299);
  }

  *&v300[v299] = 58;
  if ((v542.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v302 = &v542;
  }

  else
  {
    v302 = v542.__r_.__value_.__r.__words[0];
  }

  if ((v542.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v542.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v542.__r_.__value_.__l.__size_;
  }

  v304 = std::string::append(buf, v302, size);
  v305 = *&v304->__r_.__value_.__l.__data_;
  v535 = v304->__r_.__value_.__r.__words[2];
  v534 = v305;
  v304->__r_.__value_.__l.__size_ = 0;
  v304->__r_.__value_.__r.__words[2] = 0;
  v304->__r_.__value_.__r.__words[0] = 0;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (sub_10002807C(*&v618[4], *&v618[12]))
  {
    if (p_info[196] != -1)
    {
      sub_1018FE9CC();
      v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v308 = v8[197];
    if (os_log_type_enabled(v308, OS_LOG_TYPE_DEBUG))
    {
      v309 = &v534;
      if (v535 < 0)
      {
        v309 = v534;
      }

      *buf = 136380931;
      *&buf[4] = "cell, null";
      *&buf[12] = 2081;
      *&buf[14] = v309;
      _os_log_impl(dword_100000000, v308, OS_LOG_TYPE_DEBUG, "ClxMetric, islands, %{private}s, %{private}s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FE9F4(buf);
      v404 = &v534;
      if (v535 < 0)
      {
        v404 = v534;
      }

      *v560 = 136380931;
      *&v560[4] = "cell, null";
      *&v560[12] = 2081;
      *&v560[14] = v404;
      LODWORD(v453) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "ClxMetric, islands, %{private}s, %{private}s", v560, v453);
      v406 = v405;
      sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v405);
      if (v406 != buf)
      {
        free(v406);
      }

      v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v464 = _NSConcreteStackBlock;
    v465 = 3321888768;
    v466 = sub_1006818A0;
    v467 = &unk_1024685F0;
    if (SHIBYTE(v535) < 0)
    {
      sub_100007244(&v468, v534, *(&v534 + 1));
    }

    else
    {
      v468 = v534;
      v469 = v535;
    }

    AnalyticsSendEventLazy();
    if (SHIBYTE(v469) < 0)
    {
      operator delete(v468);
    }
  }

  v307.n128_u64[0] = *&v618[4];
  v306.n128_u64[0] = -1.0;
  if (*&v618[4] != -1.0)
  {
    goto LABEL_388;
  }

  v307.n128_u64[0] = *&v618[12];
  if (*&v618[12] != -1.0)
  {
    goto LABEL_388;
  }

  if (p_info[196] != -1)
  {
    sub_1018FE9CC();
    v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  }

  v316 = v8[197];
  if (os_log_type_enabled(v316, OS_LOG_TYPE_DEBUG))
  {
    v317 = &v534;
    if (v535 < 0)
    {
      v317 = v534;
    }

    *buf = 136380931;
    *&buf[4] = "cell, sentinel";
    *&buf[12] = 2081;
    *&buf[14] = v317;
    _os_log_impl(dword_100000000, v316, OS_LOG_TYPE_DEBUG, "ClxMetric, islands, %{private}s, %{private}s", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FE9F4(buf);
    v407 = &v534;
    if (v535 < 0)
    {
      v407 = v534;
    }

    *v560 = 136380931;
    *&v560[4] = "cell, sentinel";
    *&v560[12] = 2081;
    *&v560[14] = v407;
    LODWORD(v453) = 22;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "ClxMetric, islands, %{private}s, %{private}s", v560, v453);
    v409 = v408;
    sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v408);
    if (v409 != buf)
    {
      free(v409);
    }

    v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  }

  if (SHIBYTE(v535) < 0)
  {
    sub_100007244(&v462, v534, *(&v534 + 1));
  }

  else
  {
    v462 = v534;
    v463 = v535;
  }

  AnalyticsSendEventLazy();
  if (SHIBYTE(v463) < 0)
  {
    operator delete(v462);
    if (v289)
    {
LABEL_389:
      if (*&v621[4] != 1)
      {
        if (p_info[196] != -1)
        {
          sub_1018FE9CC();
          v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        v318 = v8[197];
        if (os_log_type_enabled(v318, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v318, OS_LOG_TYPE_FAULT, "reference frame is not properly set", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018FE9F4(buf);
          *v560 = 0;
          LODWORD(v453) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 17, "reference frame is not properly set", v560, v453);
          v450 = v449;
          sub_100152C7C("Generic", 1, 0, 0, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v449);
          if (v450 != buf)
          {
            free(v450);
          }

          v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        *&v621[4] = 1;
      }

      if (!*&v618[84])
      {
        if (p_info[196] != -1)
        {
          sub_1018FE9CC();
          v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        v319 = v8[197];
        if (os_log_type_enabled(v319, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v319, OS_LOG_TYPE_ERROR, "confidence is not properly set", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018FE9F4(buf);
          *v560 = 0;
          LODWORD(v453) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "confidence is not properly set", v560, v453);
          v452 = v451;
          sub_100152C7C("Generic", 1, 0, 0, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v451);
          if (v452 != buf)
          {
            free(v452);
          }

          v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        *&v618[84] = 70;
      }

      if (p_info[196] != -1)
      {
        sub_1018FE9CC();
        v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v320 = v8[197];
      if (os_log_type_enabled(v320, OS_LOG_TYPE_DEFAULT))
      {
        v321 = *&v618[4];
        v322 = *&v618[12];
        v323 = *&v618[20];
        sub_1000753AC(v577, v560);
        v324 = v560[23] >= 0 ? v560 : *v560;
        *buf = 134546947;
        *&buf[4] = v321;
        *&buf[12] = 2053;
        *&buf[14] = v322;
        *&buf[22] = 2050;
        *&buf[24] = v323;
        *&buf[32] = 2081;
        *&buf[34] = v324;
        *&buf[42] = 1026;
        *&buf[44] = v619;
        *&buf[48] = 2050;
        *&buf[50] = *&v618[76];
        _os_log_impl(dword_100000000, v320, OS_LOG_TYPE_DEFAULT, "@ClxCell, Fix, 1, ll, %{sensitive}.7f, %{sensitive}.7f, acc, %{public}.2f, course, -1.0, key, %{private}s, type, %{public}d, timestamp, %{public}.3f", buf, 0x3Au);
        if ((v560[23] & 0x80000000) != 0)
        {
          operator delete(*v560);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FE9F4(buf);
        v410 = qword_1025D4628;
        v411 = *&v618[4];
        v412 = *&v618[12];
        v413 = *&v618[20];
        sub_1000753AC(v577, v543);
        if (v545[9] >= 0)
        {
          v414 = v543;
        }

        else
        {
          v414 = *v543;
        }

        *v560 = 134546947;
        *&v560[4] = v411;
        *&v560[12] = 2053;
        *&v560[14] = v412;
        *&v560[22] = 2050;
        *&v560[24] = v413;
        *&v560[32] = 2081;
        *&v560[34] = v414;
        *&v560[42] = 1026;
        *&v560[44] = v619;
        *&v560[48] = 2050;
        *&v560[50] = *&v618[76];
        LODWORD(v453) = 58;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v410, 0, "@ClxCell, Fix, 1, ll, %{sensitive}.7f, %{sensitive}.7f, acc, %{public}.2f, course, -1.0, key, %{private}s, type, %{public}d, timestamp, %{public}.3f", v560, v453);
        v416 = v415;
        if ((v545[9] & 0x80000000) != 0)
        {
          operator delete(*v543);
        }

        sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v416);
        if (v416 != buf)
        {
          free(v416);
        }

        v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      *&v618[76] = v1;
      sub_100027CA8(v618);
      sub_100021AFC(v560);
      v563 = v619;
      v564 = v620;
      v565[0] = *v621;
      *(v565 + 12) = *&v621[12];
      *&v560[32] = *&v618[32];
      *&v560[48] = *&v618[48];
      *&v560[64] = *&v618[64];
      v561 = *&v618[84];
      *v560 = *v618;
      *&v560[16] = *&v618[16];
      *&v560[76] = v1;
      v562 = 0xBFF0000000000000;
      v566 = 0;
      v567 = sub_1000137E0();
      v570 = sub_1000081AC();
      v536 = 0;
      if (sub_1001D381C(&v536, *&v618[4], *&v618[12]))
      {
        v569 = v536;
        v568 = 1;
      }

      if (qword_1025D48C0 != -1)
      {
        sub_1018FEA38();
        v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v325 = qword_1025D48C8;
      if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
      {
        v326 = *&v560[4];
        v327 = *&v560[12];
        v328 = *&v560[20];
        v329 = v561;
        v330 = v562;
        v331 = sub_1001FD6E4(v563);
        v332 = v563;
        sub_10123DED0(v577, v543);
        if (v545[9] >= 0)
        {
          v333 = v543;
        }

        else
        {
          v333 = *v543;
        }

        *buf = 136317955;
        *&buf[4] = "Cell";
        *&buf[12] = 1024;
        *&buf[14] = 1;
        *&buf[18] = 2053;
        *&buf[20] = v326;
        *&buf[28] = 2053;
        *&buf[30] = v327;
        *&buf[38] = 2048;
        *&buf[40] = v328;
        *&buf[48] = 1024;
        *&buf[50] = v329;
        *&buf[54] = 2048;
        *&buf[56] = v330;
        *&buf[64] = 2080;
        *&buf[66] = v331;
        *&buf[74] = 1024;
        *v624 = v332;
        *&v624[4] = 2080;
        *&v624[6] = v333;
        *&v624[14] = 1024;
        *&v624[16] = -1;
        LOWORD(v625) = 1024;
        *(&v625 + 2) = v565[0];
        _os_log_impl(dword_100000000, v325, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Confidence,%d,Lifespan,%.3f,SubType,%s,MatchLevel,%d,cell,%s,Transmit,%d,integrity,%d", buf, 0x66u);
        if ((v545[9] & 0x80000000) != 0)
        {
          operator delete(*v543);
        }

        v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      if (sub_10000A100(123, 2))
      {
        sub_1018FEA60(buf);
        v417 = qword_1025D48C8;
        v418 = *&v560[4];
        v419 = *&v560[12];
        v420 = *&v560[20];
        v421 = v561;
        v422 = v562;
        v423 = sub_1001FD6E4(v563);
        v424 = v563;
        sub_10123DED0(v577, v470);
        if (v471 >= 0)
        {
          v425 = v470;
        }

        else
        {
          v425 = v470[0];
        }

        *v543 = 136317955;
        *&v543[4] = "Cell";
        v544 = 1024;
        *v545 = 1;
        *&v545[4] = 2053;
        *&v545[6] = v418;
        *&v545[14] = 2053;
        *&v545[16] = v419;
        *&v545[24] = 2048;
        *&v545[26] = v420;
        v546 = 1024;
        v547 = v421;
        v548 = 2048;
        v549 = v422;
        v550 = 2080;
        v551 = v423;
        v552 = 1024;
        v553 = v424;
        v554 = 2080;
        v555 = v425;
        v556 = 1024;
        v557 = -1;
        v558 = 1024;
        v559 = v565[0];
        LODWORD(v453) = 102;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v417, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Confidence,%d,Lifespan,%.3f,SubType,%s,MatchLevel,%d,cell,%s,Transmit,%d,integrity,%d", v543, v453);
        v427 = v426;
        if (v471 < 0)
        {
          operator delete(v470[0]);
        }

        sub_100152C7C("LOCATION", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v427);
        if (v427 != buf)
        {
          free(v427);
        }

        v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        v289 = v289;
      }

      if (sub_100071CA0())
      {
        sub_10004FD18();
        *v543 = v563;
        sub_10004345C(buf, "cellMatch", v543);
        sub_100043360(buf, "query", &v533);
        sub_100116D68(buf, "hAcc", &v618[20]);
        sub_100071CAC(buf, "locationd");
        sub_100005DA4();
      }

      (*(*v461 + 64))(v461, v560);

      if (v575)
      {
        sub_100008080(v575);
      }

      if (v574 < 0)
      {
        operator delete(v573);
      }

      if (v572)
      {
        sub_100008080(v572);
      }

      if (v571)
      {
        sub_100008080(v571);
      }
    }
  }

  else
  {
LABEL_388:
    if (v289)
    {
      goto LABEL_389;
    }
  }

  (*(*v461 + 104))(v461, "fix", v306, v307);
  v334 = v619;
  if (v619 == 6)
  {
    v335 = (*(*v461 + 120))(v461);
    (*(*v461 + 128))(v461, v618, v577, v335, v289, v1);
    v336 = (*(*v461 + 120))(v461);
    *&v618[20] = sub_100681A10(v577, v618, v336);
    v334 = v619;
  }

  if ((v334 & 0xFFFFFFFE) == 6)
  {
    v338 = *v456;
    v337 = v456[1];
    if (*v456 == v337)
    {
      v344 = *v456;
      v339 = *v456;
    }

    else
    {
      v339 = *v456;
      while (1)
      {
        v340 = v339[2];
        v341 = v340 > 7;
        v342 = (1 << v340) & 0x87;
        if (!v341 && v342 != 0)
        {
          break;
        }

        v339 += 174;
        if (v339 == v337)
        {
          v339 = v456[1];
          break;
        }
      }

      v344 = *v456;
      do
      {
        if (v344[2] == 3)
        {
          goto LABEL_451;
        }

        v344 += 174;
      }

      while (v344 != v337);
      v344 = v456[1];
LABEL_451:
      while (v338[2] != 6)
      {
        v338 += 174;
        if (v338 == v337)
        {
          v338 = v456[1];
          break;
        }
      }
    }

    if (p_info[196] != -1)
    {
      sub_1018FE9CC();
      v8 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v345 = v8[197];
    if (os_log_type_enabled(v345, OS_LOG_TYPE_DEFAULT))
    {
      v346 = (v456[1] - *v456) >> 3;
      *buf = 134349824;
      *&buf[4] = 0x66FD0EB66FD0EB67 * v346;
      *&buf[12] = 1026;
      *&buf[14] = v339 != v337;
      *&buf[18] = 1026;
      *&buf[20] = v344 != v337;
      *&buf[24] = 1026;
      *&buf[26] = v338 != v337;
      _os_log_impl(dword_100000000, v345, OS_LOG_TYPE_DEFAULT, "@CellLoc, tiledl, cells, %{public}lu, gsm, %{public}d, cdma, %{public}d, lte, %{public}d", buf, 0x1Eu);
    }

    v347 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (sub_10000A100(121, 2))
    {
      sub_1018FE9F4(buf);
      v428 = 0x66FD0EB66FD0EB67 * ((v456[1] - *v456) >> 3);
      *v560 = 134349824;
      *&v560[4] = v428;
      *&v560[12] = 1026;
      *&v560[14] = v339 != v337;
      *&v560[18] = 1026;
      *&v560[20] = v344 != v337;
      *&v560[24] = 1026;
      *&v560[26] = v338 != v337;
      LODWORD(v453) = 30;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "@CellLoc, tiledl, cells, %{public}lu, gsm, %{public}d, cdma, %{public}d, lte, %{public}d", v560, v453);
      v430 = v429;
      sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v429);
      if (v430 != buf)
      {
        free(v430);
      }

      v347 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    if (v339 != v337)
    {
      if (p_info[196] != -1)
      {
        sub_1018FE9CC();
      }

      v348 = v347[197];
      if (os_log_type_enabled(v348, OS_LOG_TYPE_DEBUG))
      {
        v349 = *&v618[4];
        v350 = *&v618[12];
        v351 = sub_100097C68(v339);
        *buf = 134546177;
        *&buf[4] = v349;
        *&buf[12] = 2053;
        *&buf[14] = v350;
        *&buf[22] = 2048;
        *&buf[24] = v351;
        _os_log_impl(dword_100000000, v348, OS_LOG_TYPE_DEBUG, "CellLoc, requestDownload, GSM, %{sensitive}.8f, %{sensitive}.8f, seckey, %llu", buf, 0x20u);
      }

      v347 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      if (sub_10000A100(121, 2))
      {
        sub_1018FE9F4(buf);
        v431 = qword_1025D4628;
        v432 = *&v618[4];
        v433 = *&v618[12];
        v434 = sub_100097C68(v339);
        *v560 = 134546177;
        *&v560[4] = v432;
        *&v560[12] = 2053;
        *&v560[14] = v433;
        *&v560[22] = 2048;
        *&v560[24] = v434;
        LODWORD(v453) = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v431, 2, "CellLoc, requestDownload, GSM, %{sensitive}.8f, %{sensitive}.8f, seckey, %llu", v560, v453);
        v436 = v435;
        sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v435);
        if (v436 != buf)
        {
          free(v436);
        }

        v347 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v352 = *&v618[4];
      v353 = *&v618[12];
      v354 = sub_100097C68(v339);
      (*(*v461 + 88))(v461, 3, v354, v352, v353);
    }

    if (v344 != v337)
    {
      if (p_info[196] != -1)
      {
        sub_1018FE9CC();
      }

      v355 = v347[197];
      if (os_log_type_enabled(v355, OS_LOG_TYPE_DEBUG))
      {
        v356 = *&v618[4];
        v357 = *&v618[12];
        v358 = sub_100097C68(v344);
        *buf = 134546177;
        *&buf[4] = v356;
        *&buf[12] = 2053;
        *&buf[14] = v357;
        *&buf[22] = 2048;
        *&buf[24] = v358;
        _os_log_impl(dword_100000000, v355, OS_LOG_TYPE_DEBUG, "CellLoc, requestDownload, CDMA, %{sensitive}.8f, %{sensitive}.8f, seckey, %llu", buf, 0x20u);
        v347 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FE9F4(buf);
        v437 = qword_1025D4628;
        v438 = *&v618[4];
        v439 = *&v618[12];
        v440 = sub_100097C68(v344);
        *v560 = 134546177;
        *&v560[4] = v438;
        *&v560[12] = 2053;
        *&v560[14] = v439;
        *&v560[22] = 2048;
        *&v560[24] = v440;
        LODWORD(v453) = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v437, 2, "CellLoc, requestDownload, CDMA, %{sensitive}.8f, %{sensitive}.8f, seckey, %llu", v560, v453);
        v442 = v441;
        sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v441);
        if (v442 != buf)
        {
          free(v442);
        }

        v347 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v359 = *&v618[4];
      v360 = *&v618[12];
      v361 = sub_100097C68(v344);
      (*(*v461 + 88))(v461, 5, v361, v359, v360);
    }

    if (v338 != v337)
    {
      if (p_info[196] != -1)
      {
        sub_1018FE9CC();
      }

      v362 = v347[197];
      if (os_log_type_enabled(v362, OS_LOG_TYPE_DEBUG))
      {
        v363 = *&v618[4];
        v364 = *&v618[12];
        v365 = sub_100097C68(v338);
        *buf = 134546177;
        *&buf[4] = v363;
        *&buf[12] = 2053;
        *&buf[14] = v364;
        *&buf[22] = 2048;
        *&buf[24] = v365;
        _os_log_impl(dword_100000000, v362, OS_LOG_TYPE_DEBUG, "CellLoc, requestDownload, LTE, %{sensitive}.8f, %{sensitive}.8f, seckey, %llu", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FE9F4(buf);
        v443 = qword_1025D4628;
        v444 = *&v618[4];
        v445 = *&v618[12];
        v446 = sub_100097C68(v338);
        *v560 = 134546177;
        *&v560[4] = v444;
        *&v560[12] = 2053;
        *&v560[14] = v445;
        *&v560[22] = 2048;
        *&v560[24] = v446;
        LODWORD(v453) = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v443, 2, "CellLoc, requestDownload, LTE, %{sensitive}.8f, %{sensitive}.8f, seckey, %llu", v560, v453);
        v448 = v447;
        sub_100152C7C("Generic", 1, 0, 2, "static void CLUnifiedCellLocationProviderLogic::computeCellLocation(ICellLocationProvider *, const char *, const CLCellVector &, const CLDaemonLocation &, const CFAbsoluteTime)", "%s\n", v447);
        if (v448 != buf)
        {
          free(v448);
        }
      }

      v366 = *&v618[4];
      v367 = *&v618[12];
      v368 = sub_100097C68(v338);
      (*(*v461 + 88))(v461, 4, v368, v366, v367);
    }
  }

  if (SHIBYTE(v535) < 0)
  {
    operator delete(v534);
  }

LABEL_483:
  (*(*v461 + 16))(v461, "recalc", v1, 300.0);
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  if (v579)
  {
    v580 = v579;
    operator delete(v579);
  }

  *buf = __p;
  sub_100093EE8(buf);
  *buf = &v537;
  sub_100093EE8(buf);
LABEL_488:
  if (SHIBYTE(v541) < 0)
  {
    operator delete(v540);
  }

  if (SHIBYTE(v542.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v542.__r_.__value_.__l.__data_);
  }
}

void sub_10007FE80(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  sub_10056D2F4(&STACK[0xC10]);
  STACK[0xF90] = &STACK[0xF70];
  sub_100093EE8(&STACK[0xF90]);
  STACK[0x5F0] = &STACK[0x538];
  sub_100093EE8(&STACK[0x5F0]);
  if (SLOBYTE(STACK[0x567]) < 0)
  {
    operator delete(STACK[0x550]);
  }

  if (SLOBYTE(STACK[0x57F]) < 0)
  {
    operator delete(STACK[0x568]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100080270(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  sub_10007B700(a1);
  *a3 = 0xFFFF;
  *(a3 + 12) = 0;
  *(a3 + 4) = 0;
  *(a3 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 36) = _Q0;
  *(a3 + 52) = _Q0;
  *(a3 + 68) = _Q0;
  *(a3 + 84) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0xBFF0000000000000;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0xBFF0000000000000;
  *(a3 + 124) = 0x7FFFFFFF;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  if (*a2 != 1)
  {
    goto LABEL_11;
  }

  v12 = a2[2];
  if ((v12 - 3) <= 2)
  {
    v13 = sub_1006CB140(a2, v6);
    sub_1006C9E54(a1, v13, a3);
  }

  if (v12 <= 5)
  {
    if (v12 >= 3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v12 <= 8)
  {
    if (v12 == 6)
    {
      v19 = sub_10007513C(a2, v6);
      sub_1000814AC(a1, v19, a3);
    }

    if (v12 != 7)
    {
      goto LABEL_11;
    }

LABEL_10:
    v14 = sub_1006CBCE4(a2);
    sub_1006CB168(a1, v14, a3);
  }

  if (v12 == 9)
  {
    v20 = sub_1006CCAA0(a2, v6);
    sub_1006CBF24(a1, v20, a3);
  }

  if (v12 == 10)
  {
    v18 = sub_100681E80(a2, v6);
    sub_1006CCAC4(a1, v18, a3);
  }

LABEL_11:
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v15 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    sub_10123DED0(a2, __p);
    v16 = v34 >= 0 ? __p : __p[0];
    *buf = 136315394;
    *&buf[4] = v16;
    v26 = 1024;
    v27 = 0;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CELL_LOC: best match cell, %s, bestMatch, %d", buf, 0x12u);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v21 = qword_1025D4628;
    sub_10123DED0(a2, buf);
    if (v28 >= 0)
    {
      v22 = buf;
    }

    else
    {
      v22 = *buf;
    }

    v29 = 136315394;
    v30 = v22;
    v31 = 1024;
    v32 = 0;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v21, 2, "CELL_LOC: best match cell, %s, bestMatch, %d", &v29, 18);
    v24 = v23;
    if (v28 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "CLNetworkLocationProvider::BestMatchLevel CLNetworkLocationProvider::getBestMatchLocation(const CLCell &, CLDaemonLocation &)", "%s\n", v24);
    if (v24 != __p)
    {
      free(v24);
    }
  }

  return 0;
}

void sub_1000805D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v5;
  v14[4] = *(a2 + 64);
  v15 = *(a2 + 80);
  v6 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v6;
  sub_100081198(&v13);
  *a3 = 0xFFFF;
  *(a3 + 4) = 0;
  *(a3 + 12) = 0;
  *(a3 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 36) = _Q0;
  *(a3 + 52) = _Q0;
  *(a3 + 68) = _Q0;
  *(a3 + 84) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0xBFF0000000000000;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0xBFF0000000000000;
  *(a3 + 124) = 0x7FFFFFFF;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  v12 = sub_10007BA1C(a1);
  sub_100082734(*(v12 + 32), v14, a3);
}

void sub_100081108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100081198@<X0>(void *a2@<X8>)
{
  sub_10003848C(v20);
  v3 = sub_100038730(&v21, "[", 1);
  sub_100038730(v3, " MCC=", 5);
  v4 = std::ostream::operator<<();
  sub_100038730(v4, " AND MNC=", 9);
  v5 = std::ostream::operator<<();
  sub_100038730(v5, " AND TAC=", 9);
  v6 = std::ostream::operator<<();
  sub_100038730(v6, " AND CI=", 8);
  v7 = std::ostream::operator<<();
  sub_100038730(v7, " AND UARFCN=", 12);
  v8 = std::ostream::operator<<();
  sub_100038730(v8, " AND PID=", 9);
  v9 = std::ostream::operator<<();
  sub_100038730(v9, " AND RSCP=", 10);
  v10 = std::ostream::operator<<();
  sub_100038730(v10, " AND ECN0=", 10);
  v11 = std::ostream::operator<<();
  sub_100038730(v11, " AND BANDINFO=", 14);
  v12 = std::ostream::operator<<();
  sub_100038730(v12, " AND DEPLOYMENTTYPE=", 20);
  v13 = std::ostream::operator<<();
  sub_100038730(v13, " AND BANDWIDTH=", 15);
  v14 = std::ostream::operator<<();
  sub_100038730(v14, " ]", 2);
  sub_100073518(v20, __p);
  if (v19 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  sub_10000EC00(a2, v15);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = v16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100081468(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1000814AC(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = a2[3];
  v10[2] = a2[2];
  v10[3] = v3;
  v10[4] = a2[4];
  v11 = *(a2 + 10);
  v4 = a2[1];
  v10[0] = *a2;
  v10[1] = v4;
  *a3 = 0xFFFF;
  *(a3 + 12) = 0;
  *(a3 + 4) = 0;
  *(a3 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 36) = _Q0;
  *(a3 + 52) = _Q0;
  *(a3 + 68) = _Q0;
  *(a3 + 84) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0xBFF0000000000000;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0xBFF0000000000000;
  *(a3 + 124) = 0x7FFFFFFF;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  sub_1000805D8(a1, v10, a3);
}

void sub_100082044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (*(v36 - 73) < 0)
  {
    operator delete(*(v36 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_10008209C(uint64_t a1, uint64_t a2, sqlite3_int64 *a3)
{
  sub_10003848C(&v23);
  v4 = sub_100038730(v24, "SELECT ", 7);
  v5 = strlen("ROWID");
  v6 = sub_100038730(v4, "ROWID", v5);
  v7 = sub_100038730(v6, " FROM ", 6);
  v8 = (a1 + 232);
  if (*(a1 + 255) < 0)
  {
    v8 = *v8;
  }

  v9 = strlen(v8);
  v10 = sub_100038730(v7, v8, v9);
  v11 = sub_100038730(v10, " WHERE ", 7);
  v12 = sub_100038730(v11, "MCC", 3);
  v13 = sub_100038730(v12, "=? AND ", 7);
  v14 = sub_100038730(v13, "MNC", 3);
  v15 = sub_100038730(v14, "=? AND ", 7);
  v16 = sub_100038730(v15, "TAC", 3);
  v17 = sub_100038730(v16, "=? AND ", 7);
  v18 = sub_100038730(v17, "CI", 2);
  sub_100038730(v18, "=?", 2);
  if ((v27 & 0x10) != 0)
  {
    v20 = v26;
    if (v26 < v25)
    {
      v26 = v25;
      v20 = v25;
    }

    v21 = v24[6];
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v19 = 0;
      v29 = 0;
      goto LABEL_16;
    }

    v21 = v24[3];
    v20 = v24[5];
  }

  v19 = v20 - v21;
  if ((v20 - v21) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v19 >= 0x17)
  {
    operator new();
  }

  v29 = v20 - v21;
  if (v19)
  {
    memmove(&__dst, v21, v19);
  }

LABEL_16:
  *(&__dst + v19) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  sub_1000388D8(a1 + 64, p_dst);
}

void sub_1000826A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (v59)
  {
    (*(*v59 + 8))(v59, a2, a3, a4, a5, a6, a7, a8);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1000827B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = (a1 + 640);
  if (v3 != a3)
  {
    sub_1000755FC(v3, *a3, a3[1], 0x66FD0EB66FD0EB67 * ((a3[1] - *a3) >> 3));
  }
}

uint64_t sub_1000827E4(uint64_t a1)
{
  if (*(a1 + 696) == 1)
  {
    if (*(a1 + 343) < 0)
    {
      operator delete(*(a1 + 320));
    }

    v2 = *(a1 + 88);
    if (v2)
    {
      *(a1 + 96) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

void sub_100082834(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = v2;
      v2 = *v2;
      if (*(v3 + 720) == 1)
      {
        if (*(v3 + 367) < 0)
        {
          operator delete(v3[43]);
        }

        v4 = v3[14];
        if (v4)
        {
          v3[15] = v4;
          operator delete(v4);
        }
      }

      operator delete(v3);
    }

    while (v2);
  }
}

void sub_10008289C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_100082834(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_1000828F8(_DWORD *a1)
{
  sub_10001CAF4(buf);
  v70[0] = 0;
  v2 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", v70, 0xFFFFFFFFLL);
  v3 = v2 & v70[0];
  if (v96)
  {
    sub_100008080(v96);
  }

  if (v3)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,processServingCell", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CAF40();
    }
  }

  v70[0] = 0;
  v79 = 0;
  v80[0] = 0;
  *buf = v80;
  if (*(sub_100084258(a1 + 340, v80, &unk_101C66300, buf) + 720) == 1)
  {
    v80[0] = 0;
    *buf = v80;
    v5 = sub_100084258(a1 + 340, v80, &unk_101C66300, buf);
    sub_1000836F0(v70, (v5 + 3));
LABEL_14:
    if (v79 != 1)
    {
      goto LABEL_81;
    }

    if (v71 < 3)
    {
      goto LABEL_18;
    }

    if (v71 == 9)
    {
      sub_10001CAF4(buf);
      LOBYTE(v80[0]) = 0;
      v13 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", v80, 0xFFFFFFFFLL);
      v15 = (v13 & v80[0]);
      if (v96)
      {
        sub_100008080(v96);
      }

      if (v15)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1016C8BF0();
        }

        v16 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,kCellInfoNotification SCDMA", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1016C8DD8(buf);
          LOWORD(v80[0]) = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gnssawd,Cellular-AWD,kCellInfoNotification SCDMA", v80, 2);
          v62 = v61;
          sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::processServingCell()", "%s\n", v61);
          if (v62 != buf)
          {
            free(v62);
          }
        }
      }

      a1[651] = *sub_1006CCAA0(v70, v14);
      a1[652] = *(sub_1006CCAA0(v70, v17) + 4);
      goto LABEL_73;
    }

    if (v71 == 7)
    {
LABEL_18:
      sub_10001CAF4(buf);
      LOBYTE(v80[0]) = 0;
      v7 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", v80, 0xFFFFFFFFLL);
      v8 = (v7 & v80[0]);
      if (v96)
      {
        sub_100008080(v96);
      }

      if (v8)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1016C8BF0();
        }

        v9 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,kCellInfoNotification GSM", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1016C8DD8(buf);
          LOWORD(v80[0]) = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gnssawd,Cellular-AWD,kCellInfoNotification GSM", v80, 2);
          v60 = v59;
          sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::processServingCell()", "%s\n", v59);
          if (v60 != buf)
          {
            free(v60);
          }
        }
      }

      a1[651] = *sub_1006CBCE4(v70);
      a1[652] = *(sub_1006CBCE4(v70) + 4);
      sub_1000844AC(a1);
    }

    else
    {
      if (v71 - 3 > 2)
      {
        if (v71 == 10)
        {
          sub_10001CAF4(buf);
          LOBYTE(v80[0]) = 0;
          v30 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", v80, 0xFFFFFFFFLL);
          v32 = (v30 & v80[0]);
          if (v96)
          {
            sub_100008080(v96);
          }

          if (v32)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1016C8BF0();
            }

            v33 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,kCellInfoNotification 5G", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1016C8DD8(buf);
              LOWORD(v80[0]) = 0;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gnssawd,Cellular-AWD,kCellInfoNotification 5G", v80, 2);
              v68 = v67;
              sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::processServingCell()", "%s\n", v67);
              if (v68 != buf)
              {
                free(v68);
              }
            }
          }

          a1[651] = *sub_100681E80(v70, v31);
          a1[652] = *(sub_100681E80(v70, v34) + 4);
          a1[655] = *(sub_100681E80(v70, v35) + 32);
          sub_1000844AC(a1);
        }

        else
        {
          if (v71 != 6)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1016C8BF0();
            }

            v47 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_INFO, "#warning,#gnssawd,Cellular-AWD,Unhandled serving cell", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1016C8DD8(buf);
              LOWORD(v80[0]) = 0;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#warning,#gnssawd,Cellular-AWD,Unhandled serving cell", v80, 2);
              v49 = v48;
              sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::processServingCell()", "%s\n", v48);
              if (v49 != buf)
              {
                free(v49);
              }
            }

            goto LABEL_73;
          }

          sub_10001CAF4(buf);
          LOBYTE(v80[0]) = 0;
          v24 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", v80, 0xFFFFFFFFLL);
          v26 = (v24 & v80[0]);
          if (v96)
          {
            sub_100008080(v96);
          }

          if (v26)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1016C8BF0();
            }

            v27 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,kCellInfoNotification LTE", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1016C8DD8(buf);
              LOWORD(v80[0]) = 0;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gnssawd,Cellular-AWD,kCellInfoNotification LTE", v80, 2);
              v66 = v65;
              sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::processServingCell()", "%s\n", v65);
              if (v66 != buf)
              {
                free(v66);
              }
            }
          }

          a1[651] = *sub_10007513C(v70, v25);
          a1[652] = *(sub_10007513C(v70, v28) + 4);
          a1[655] = *(sub_10007513C(v70, v29) + 24);
          sub_1000844AC(a1);
        }
      }

      else
      {
        sub_10001CAF4(buf);
        LOBYTE(v80[0]) = 0;
        v18 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", v80, 0xFFFFFFFFLL);
        v20 = (v18 & v80[0]);
        if (v96)
        {
          sub_100008080(v96);
        }

        if (v20)
        {
          if (qword_1025D4650 != -1)
          {
            sub_1016C8BF0();
          }

          v21 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,kCellInfoNotification CDMA", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1016C8DD8(buf);
            LOWORD(v80[0]) = 0;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gnssawd,Cellular-AWD,kCellInfoNotification CDMA", v80, 2);
            v64 = v63;
            sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::processServingCell()", "%s\n", v63);
            if (v64 != buf)
            {
              free(v64);
            }
          }
        }

        a1[653] = *(sub_1006CB140(v70, v19) + 32);
        a1[654] = *(sub_1006CB140(v70, v22) + 36);
        a1[655] = *(sub_1006CB140(v70, v23) + 48);
      }

      a1[615] = a1[614];
    }

LABEL_73:
    a1[656] = v71;
    sub_10001CAF4(buf);
    LOBYTE(v80[0]) = 0;
    v36 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", v80, 0xFFFFFFFFLL);
    v37 = (v36 & v80[0]);
    if (v96)
    {
      sub_100008080(v96);
    }

    if (!v37)
    {
      goto LABEL_81;
    }

    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v38 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v39 = a1[651];
      v40 = a1[652];
      v41 = a1[653];
      v42 = a1[654];
      v43 = a1[655];
      v44 = a1[656];
      v45 = a1[660];
      v46 = a1[659];
      *buf = 67110912;
      *&buf[4] = v39;
      LOWORD(v96) = 1024;
      *(&v96 + 2) = v40;
      HIWORD(v96) = 1024;
      v97 = v41;
      v98 = 1024;
      v99 = v42;
      v100 = 1024;
      v101 = v43;
      v102 = 1024;
      v103 = v44;
      v104 = 1024;
      v105 = v45;
      v106 = 1024;
      v107 = v46;
      _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,processServingCell,MCC,%d,MNC,%d,SID,%d,NID,%d,BandInfo,%d,RAT,%d,RSRP,%d,SNR,%d", buf, 0x32u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_81;
    }

    sub_1016C8DD8(buf);
    v50 = a1[651];
    v51 = a1[652];
    v52 = a1[653];
    v53 = a1[654];
    v54 = a1[655];
    v55 = a1[656];
    v56 = a1[660];
    v57 = a1[659];
    v80[0] = 67110912;
    v80[1] = v50;
    v81 = 1024;
    v82 = v51;
    v83 = 1024;
    v84 = v52;
    v85 = 1024;
    v86 = v53;
    v87 = 1024;
    v88 = v54;
    v89 = 1024;
    v90 = v55;
    v91 = 1024;
    v92 = v56;
    v93 = 1024;
    v94 = v57;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gnssawd,Cellular-AWD,processServingCell,MCC,%d,MNC,%d,SID,%d,NID,%d,BandInfo,%d,RAT,%d,RSRP,%d,SNR,%d", v80, 50, v69, *v70, v71, v72, v73, v74);
    v12 = v58;
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::processServingCell()", "%s\n", v58);
LABEL_95:
    if (v12 != buf)
    {
      free(v12);
    }

    goto LABEL_81;
  }

  v80[0] = 1;
  *buf = v80;
  if (*(sub_100084258(a1 + 340, v80, &unk_101C66300, buf) + 720) == 1)
  {
    v80[0] = 1;
    *buf = v80;
    v6 = sub_100084258(a1 + 340, v80, &unk_101C66300, buf);
    sub_1000836F0(v70, (v6 + 3));
    goto LABEL_14;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1016C8BF0();
  }

  v10 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "#warning,#gnssawd,Couldn't get current serving cell", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1016C8DD8(buf);
    LOWORD(v80[0]) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#warning,#gnssawd,Couldn't get current serving cell", v80, 2);
    v12 = v11;
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::processServingCell()", "%s\n", v11);
    goto LABEL_95;
  }

LABEL_81:
  if (v79 == 1)
  {
    if (v78 < 0)
    {
      operator delete(__p);
    }

    if (v75)
    {
      v76 = v75;
      operator delete(v75);
    }
  }
}

void sub_100083650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000827E4(va);
  _Unwind_Resume(a1);
}

__n128 sub_1000836F0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 696) == *(a2 + 696))
  {
    if (*(a1 + 696))
    {
      *a1 = *a2;
      v4 = *(a2 + 16);
      v5 = *(a2 + 32);
      v6 = *(a2 + 48);
      *(a1 + 60) = *(a2 + 60);
      *(a1 + 32) = v5;
      *(a1 + 48) = v6;
      *(a1 + 16) = v4;
      *(a1 + 80) = *(a2 + 80);
      if (a1 != a2)
      {
        sub_100731D80((a1 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
      }

      *(a1 + 112) = *(a2 + 112);
      v7 = *(a2 + 128);
      v8 = *(a2 + 144);
      v9 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v9;
      *(a1 + 128) = v7;
      *(a1 + 144) = v8;
      v10 = *(a2 + 192);
      v11 = *(a2 + 208);
      v12 = *(a2 + 240);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 240) = v12;
      *(a1 + 192) = v10;
      *(a1 + 208) = v11;
      v13 = *(a2 + 256);
      v14 = *(a2 + 272);
      v15 = *(a2 + 288);
      *(a1 + 300) = *(a2 + 300);
      *(a1 + 272) = v14;
      *(a1 + 288) = v15;
      *(a1 + 256) = v13;
      std::string::operator=((a1 + 320), (a2 + 320));
      v17 = *(a2 + 360);
      v16 = *(a2 + 376);
      *(a1 + 344) = *(a2 + 344);
      *(a1 + 360) = v17;
      *(a1 + 376) = v16;
      v18 = *(a2 + 440);
      v20 = *(a2 + 392);
      v19 = *(a2 + 408);
      *(a1 + 424) = *(a2 + 424);
      *(a1 + 440) = v18;
      *(a1 + 392) = v20;
      *(a1 + 408) = v19;
      v22 = *(a2 + 472);
      v21 = *(a2 + 488);
      v23 = *(a2 + 456);
      *(a1 + 504) = *(a2 + 504);
      *(a1 + 472) = v22;
      *(a1 + 488) = v21;
      *(a1 + 456) = v23;
      v24 = *(a2 + 640);
      v25 = *(a2 + 656);
      v26 = *(a2 + 672);
      *(a1 + 688) = *(a2 + 688);
      *(a1 + 656) = v25;
      *(a1 + 672) = v26;
      *(a1 + 640) = v24;
      v27 = *(a2 + 576);
      v28 = *(a2 + 592);
      v29 = *(a2 + 624);
      *(a1 + 608) = *(a2 + 608);
      *(a1 + 624) = v29;
      *(a1 + 576) = v27;
      *(a1 + 592) = v28;
      result = *(a2 + 512);
      v31 = *(a2 + 528);
      v32 = *(a2 + 560);
      *(a1 + 544) = *(a2 + 544);
      *(a1 + 560) = v32;
      *(a1 + 512) = result;
      *(a1 + 528) = v31;
    }
  }

  else if (*(a1 + 696))
  {
    if (*(a1 + 343) < 0)
    {
      operator delete(*(a1 + 320));
    }

    v33 = *(a1 + 88);
    if (v33)
    {
      *(a1 + 96) = v33;
      operator delete(v33);
    }

    *(a1 + 696) = 0;
  }

  else
  {
    *a1 = *a2;
    v34 = *(a2 + 16);
    v35 = *(a2 + 32);
    v36 = *(a2 + 48);
    *(a1 + 60) = *(a2 + 60);
    *(a1 + 32) = v35;
    *(a1 + 48) = v36;
    *(a1 + 16) = v34;
    v37 = *(a2 + 80);
    *(a1 + 88) = 0;
    *(a1 + 80) = v37;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    sub_10038EB38((a1 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
    *(a1 + 112) = *(a2 + 112);
    v38 = *(a2 + 128);
    v39 = *(a2 + 144);
    v40 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = v40;
    *(a1 + 144) = v39;
    *(a1 + 128) = v38;
    v41 = *(a2 + 192);
    v42 = *(a2 + 208);
    v43 = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 224) = v43;
    *(a1 + 208) = v42;
    *(a1 + 192) = v41;
    v44 = *(a2 + 256);
    v45 = *(a2 + 272);
    v46 = *(a2 + 288);
    *(a1 + 300) = *(a2 + 300);
    *(a1 + 288) = v46;
    *(a1 + 272) = v45;
    *(a1 + 256) = v44;
    if (*(a2 + 343) < 0)
    {
      sub_100007244((a1 + 320), *(a2 + 320), *(a2 + 328));
    }

    else
    {
      v47 = *(a2 + 320);
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 320) = v47;
    }

    v48 = *(a2 + 344);
    v49 = *(a2 + 376);
    *(a1 + 360) = *(a2 + 360);
    *(a1 + 376) = v49;
    *(a1 + 344) = v48;
    v50 = *(a2 + 392);
    v51 = *(a2 + 408);
    v52 = *(a2 + 440);
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 440) = v52;
    *(a1 + 392) = v50;
    *(a1 + 408) = v51;
    v53 = *(a2 + 456);
    v54 = *(a2 + 472);
    v55 = *(a2 + 488);
    *(a1 + 504) = *(a2 + 504);
    *(a1 + 472) = v54;
    *(a1 + 488) = v55;
    *(a1 + 456) = v53;
    v56 = *(a2 + 512);
    v57 = *(a2 + 528);
    v58 = *(a2 + 560);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 560) = v58;
    *(a1 + 512) = v56;
    *(a1 + 528) = v57;
    v59 = *(a2 + 576);
    v60 = *(a2 + 592);
    v61 = *(a2 + 624);
    *(a1 + 608) = *(a2 + 608);
    *(a1 + 624) = v61;
    *(a1 + 576) = v59;
    *(a1 + 592) = v60;
    result = *(a2 + 640);
    v62 = *(a2 + 656);
    v63 = *(a2 + 672);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 656) = v62;
    *(a1 + 672) = v63;
    *(a1 + 640) = result;
    *(a1 + 696) = 1;
  }

  return result;
}

void sub_1000839B8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 96) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000839D4(uint64_t a1, void **a2)
{
  *(a1 + 44) = 0;
  v3 = *a2;
  if (!*a2)
  {
    return;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 1065353216;
  if (!sub_100065478(v3, v12))
  {
    goto LABEL_27;
  }

  *buf = 0;
  v17 = buf;
  v4 = sub_1000646F8(v12, buf, &unk_101C66300, &v17);
  if (v4[3])
  {
    sub_1000658D0(0, v12, &v14);
    v4 = sub_100065934(&v14, buf);
    if (v28 == 1 && *v19 == 6)
    {
      *(a1 + 40) = *(sub_10007513C(buf, v5) + 24);
      *(a1 + 32) = sub_1000081AC();
      *(a1 + 44) = 1;
      if ((v28 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (!v28)
    {
      goto LABEL_13;
    }

    if (v27 < 0)
    {
      operator delete(__p);
    }

    v4 = v24;
    if (v24)
    {
      v25 = v24;
      operator delete(v24);
    }
  }

LABEL_13:
  v7 = v14;
  for (i = v15; i != v7; sub_1000720CC(i))
  {
    i -= 696;
  }

  v15 = v7;
  if (sub_1000649A0(v4, v5))
  {
    *buf = 1;
    v17 = buf;
    if (sub_1000646F8(v12, buf, &unk_101C66300, &v17)[3])
    {
      sub_1000658D0(1, v12, &v14);
      sub_100065934(&v14, buf);
      if (v28 == 1 && *v19 == 6)
      {
        *(a1 + 40) = *(sub_10007513C(buf, v8) + 24);
        *(a1 + 32) = sub_1000081AC();
        *(a1 + 44) = 1;
        if ((v28 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else if (!v28)
      {
        goto LABEL_27;
      }

      if (v27 < 0)
      {
        operator delete(__p);
      }

      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }
    }
  }

LABEL_27:
  sub_100075100(v12);
  *buf = &v14;
  sub_100072124(buf);
  if (*(a1 + 44))
  {
    if (qword_1025D4650 != -1)
    {
      sub_10167F100();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 32);
      *buf = 68289538;
      *&buf[4] = 0;
      *v19 = 2082;
      *&v19[2] = "";
      v20 = 1026;
      v21 = v10;
      v22 = 2050;
      v23 = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#imd,Received notification, band_info:%{public}u, MachTime(s):%{public}f}", buf, 0x22u);
    }
  }
}

double *sub_100083CFC(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      sub_10167D190(v2, *(a1 + 20));
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10167F27C();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#imd,Unable to get uplink frequency disabling BT AFH", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10167F5F0();
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      sub_10167D180(v4);
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    if (*(a1 + 44) == 1)
    {
      return sub_100083DDC(result, *(a1 + 40), *(a1 + 32));
    }
  }

  return result;
}

uint64_t sub_100083DDC(double *a1, int a2, double a3)
{
  v6 = sub_1000081AC();
  if ((a2 - 13) >= 2)
  {
    a3 = *a1;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10168D4CC();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v8 = *a1;
      v13 = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1026;
      v18 = a2;
      v19 = 2050;
      v20 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssInterference, CLLTEBand13Band14Handler::handleBand, logging new fMachTimeOfLastBand13Band14Notification, LTE-Band:%{public}u, fMachTimeOfLastBand13Band14Notification:%{public}f}", &v13, 0x22u);
    }

    *a1 = a3;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10168D6E4();
  }

  v9 = v6 - a3;
  v10 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v11 = *a1;
    v13 = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 1026;
    v18 = a2;
    v19 = 2050;
    v20 = v11;
    v21 = 1026;
    v22 = v9 < 259200.0;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssInterference, CLLTEBand13Band14Handler::handleBand, , LTE-Band:%{public}u, fMachTimeOfLastBand13Band14Notification:%{public}f, band13Band14UsedRecently:%{public}d}", &v13, 0x28u);
  }

  return sub_100084BB8((a1 + 1), v9 < 259200.0, 1);
}

uint64_t *sub_100083FC4(void *a1, int *a2, uint64_t a3, _DWORD **a4)
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
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
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

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void *sub_10008422C@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 0xC)
  {
    v2 = "UnhandledRAT";
  }

  else
  {
    v2 = (&off_1024FBA38)[a1];
  }

  return sub_10000EC00(a2, v2);
}

uint64_t *sub_100084258(void *a1, int *a2, uint64_t a3, _DWORD **a4)
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
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
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

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

id sub_1000844AC(id *a1)
{
  sub_10001CAF4(buf);
  v10 = 0;
  v2 = sub_10001CB4C(*buf, "EnableGnssAwdVerboseLogging", &v10, 0xFFFFFFFFLL);
  v3 = v2 & v10;
  if (v9)
  {
    sub_100008080(v9);
  }

  if (v3)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#gnssawd,Cellular-AWD,fetchSignalStrengthMeasurementsWithReply", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CB024();
    }
  }

  v5 = [objc_msgSend(*a1 "vendor")];
  [v5 registerDelegate:sub_1000736A8((a1 + 318)) inSilo:{objc_msgSend(*a1, "silo")}];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008EBE8;
  v7[3] = &unk_1024FA0E8;
  v7[4] = a1;
  return [v5 fetchSignalStrengthMeasurementForSim:0 withReply:v7];
}

void sub_10008461C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100084634(uint64_t a1, int *a2, CFDictionaryRef *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10167F240();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssInterference::onTelephonyNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10167F254();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssInterference::onTelephonyNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100084800(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

double *sub_100084800(uint64_t a1, uint64_t a2, int *a3, CFDictionaryRef *a4)
{
  if (qword_1025D4650 != -1)
  {
    sub_10167F27C();
  }

  v7 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v8 = sub_100072010(a3);
    sub_1000238CC(v8, __p);
    v9 = v14 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v16 = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#imd,gnss,onTelephonyNotification,Received notification,%s", buf, 0xCu);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10167F4A4(a3);
  }

  v10 = sub_100072010(a3);
  if (CFEqual(@"kUplinkFreqBwNotification", v10))
  {
    sub_10167EB48(a1, a4);
  }

  else
  {
    v11 = sub_100072010(a3);
    if (CFEqual(@"kCellInfoNotification", v11))
    {
      sub_1000839D4(a1, a4);
    }
  }

  return sub_100083CFC(a1);
}

void sub_100084988(uint64_t a1, void *a2, char a3)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v10 = 67240192;
    v11 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "isBand13Active,%{public}d", &v10, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101945668(a2);
  }

  if (*(a1 + 576) != a2)
  {
    if (!*(a1 + 576) || (a3 & 1) != 0)
    {
      *(a1 + 648) = *(a1 + 568);
      *(a1 + 656) = *(a1 + 576);
      sub_100806104((a1 + 664), a1 + 584);
      sub_100806104((a1 + 696), a1 + 616);
      *(a1 + 576) = a2;
      sub_1001BF630(a1 + 2576, 15);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v8 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1 + 576);
        v10 = 67240192;
        v11 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLGnssController::handleLTEBand13Or14State, fOperatingContext.fDeviceOperatingContext.fB13, %{public}d", &v10, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101945830((a1 + 576));
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v10) = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "fB13 currently set,not resetting it", &v10, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101945754();
      }
    }
  }
}

uint64_t sub_100084BB8(uint64_t a1, char a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1000CF05C();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void sub_100084C14(uint64_t result, int a2, uint64_t a3)
{
  v28 = a2;
  if (*(a3 + 696) != 1)
  {
    return;
  }

  v5 = sub_1000735F4((result + 664), &v28);
  if (v5)
  {
    v26 = *(v5 + 3);
    v27 = v5[5];
    v7 = *(v5 + 68);
    v8 = *(a3 + 8);
    if (v8 < 3)
    {
      goto LABEL_6;
    }

    if (v8 == 9)
    {
      v9 = *sub_1006CCAA0(a3, v6);
      v10 = sub_1006CCAA0(a3, v20);
      goto LABEL_7;
    }

    if (v8 == 7)
    {
LABEL_6:
      v9 = *sub_1006CBCE4(a3);
      v10 = sub_1006CBCE4(a3);
    }

    else
    {
      if (v8 - 3 <= 2)
      {
        v13 = *(sub_1006CB140(a3, v6) + 32);
        v12 = *(sub_1006CB140(a3, v21) + 36);
        v11 = -1;
        v9 = -1;
        goto LABEL_8;
      }

      if (v8 == 10)
      {
        v9 = *sub_100681E80(a3, v6);
        v10 = sub_100681E80(a3, v23);
      }

      else
      {
        if (v8 != 6)
        {
          v9 = *(v5 + 12);
          v11 = *(v5 + 13);
          v13 = *(v5 + 14);
          v12 = *(v5 + 15);
          goto LABEL_8;
        }

        v9 = *sub_10007513C(a3, v6);
        v10 = sub_10007513C(a3, v22);
      }
    }

LABEL_7:
    v11 = *(v10 + 4);
    v12 = -1;
    v13 = -1;
LABEL_8:
    v14 = *(a3 + 8);
    if (qword_1025D4660 != -1)
    {
      sub_1016AB5AC();
    }

    v15 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v28;
      sub_10008422C(v14, __p);
      if (v25 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      *buf = 68290563;
      *&buf[4] = 0;
      v30 = 2082;
      v31 = "";
      v32 = 1026;
      v33 = v16;
      v34 = 2082;
      v35 = v17;
      v36 = 1025;
      v37 = v9;
      v38 = 1025;
      v39 = v11;
      v40 = 1025;
      v41 = v13;
      v42 = 1025;
      v43 = v12;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#awd,handleCellInfoNotification, inst:%{public}d, RAT:%{public, location:escape_only}s, MCC:%{private}d, MNC:%{private}d, SID:%{private}d, NID:%{private}d}", buf, 0x3Au);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *buf = &v28;
    v18 = sub_100083FC4((result + 664), &v28, &unk_101C66300, buf);
    *(v18 + 3) = v26;
    v18[5] = v27;
    *(v18 + 12) = v9;
    *(v18 + 13) = v11;
    *(v18 + 14) = v13;
    *(v18 + 15) = v12;
    *(v18 + 16) = v14;
    *(v18 + 68) = v7;
    return;
  }

  if (qword_1025D4660 != -1)
  {
    sub_1016AB5AC();
  }

  v19 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "#awd,#Warning,handleCellInfoNotification,fTelephonyInfoMap,null", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1016AC548();
  }
}

id sub_100084F30(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a2 == 1 && sub_1000649A0(a1, a2))
  {
    if (a2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:v6];
    v8 = [CTServiceDescriptor descriptorWithSubscriptionContext:v7];
    v9 = *(a1 + 16);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008EA94;
    v12[3] = &unk_10247E6E8;
    v12[4] = v7;
    v12[5] = a3;
    return [v9 getSignalStrengthMeasurements:v8 completion:v12];
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,getSignalStrengthMeasurements, invalid SimInstance : %d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101976BC8(a2);
    }

    return (*(a3 + 16))(a3, 0);
  }
}

uint64_t sub_1000850D0(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  *(a1 + 4) = -1;
  *(a1 + 16) = -1;
  sub_10000EC00((a1 + 24), "");
  return a1;
}

uint64_t sub_10008511C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v10 = (a5 * 10000.0);
  v11 = (a6 * 10000.0);
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101ABEA90();
    }

    v13 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v17[0] = 67437057;
      v17[1] = v10;
      v18 = 1029;
      v19 = v11;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "TileFile, Delta lat/lon zero, %{sensitive}d, %{sensitive}d, #CloneMe", v17, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101ABED50(v10, v11);
    }

    LODWORD(v11) = 10000;
    LODWORD(v10) = 10000;
  }

  v14 = ((a3 + 90.0) * 10000.0) / v10 * v10;
  v15 = ((a4 + 180.0) * 10000.0) / v11 * v11;
  *(a1 + 4) = v15;
  *(a1 + 8) = v14;
  *(a1 + 16) = a2;
  return sub_10008914C(a1, v14, v15, a2);
}

uint64_t sub_1000852BC(unsigned int *a1)
{
  if (!sub_100089158(a1) || !sub_100089284(a1))
  {
    return 0;
  }

  return sub_100085664(a1);
}

uint64_t sub_10008535C(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_1000857B4(v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_1000857B4(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

uint64_t sub_1000853E0(uint64_t a1, unsigned int *a2)
{
  if (sub_1000852BC(a2))
  {
    return a1 + 8 != sub_10008535C(a1, a2);
  }

  if (qword_1025D4620 != -1)
  {
    sub_10195C830();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
  {
    sub_100B4EFD4(a2, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136380675;
    v10 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Invalid tile ID: %{private}s, #CloneMe", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_10195C844();
    return 0;
  }

  return result;
}

uint64_t sub_100085520(uint64_t a1, unsigned int *a2)
{
  if (sub_1000852BC(a2))
  {
    v4 = sub_10008535C(a1, a2);
    if (a1 + 8 != v4)
    {
      return *(v4 + 80);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10195C830();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      sub_100B4EFD4(a2, __p);
      if (v9 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      *buf = 136380675;
      v11 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "Invalid tile ID: %{private}s, #CloneMe", buf, 0xCu);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_10195C93C();
    }
  }

  return 0;
}

uint64_t sub_100085664(uint64_t a1)
{
  if (!*(a1 + 7) && !*(a1 + 11))
  {
    return 1;
  }

  if (qword_1025D4620 != -1)
  {
    sub_1019F693C();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    sub_100B4EFD4(a1, __p);
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    v8 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Invalid tile hash: %s", buf, 0xCu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1019F6B7C();
    return 0;
  }

  return result;
}

const char *sub_100085790(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return "?";
  }

  else
  {
    return (&off_1024CC2E0)[a1];
  }
}

uint64_t sub_1000857B4(uint64_t a1, uint64_t a2)
{
  if ((sub_1000852BC(a1) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1019F693C();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      sub_100B4EFD4(a1, __p);
      v5 = v23 >= 0 ? __p : __p[0];
      *buf = 136380675;
      v25 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Invalid tile ID: %{private}s, #CloneMe", buf, 0xCu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019F6C84();
    }
  }

  if ((sub_1000852BC(a2) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1019F6D8C();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      sub_100B4EFD4(a2, __p);
      v7 = v23 >= 0 ? __p : __p[0];
      *buf = 136380675;
      v25 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "Invalid tile ID: %{private}s, #CloneMe", buf, 0xCu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019F6DB4();
    }
  }

  v8 = *a1 < *a2;
  if (*a1 != *a2)
  {
    return v8;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  v8 = v9 < v10;
  if (v9 != v10)
  {
    return v8;
  }

  v11 = *(a1 + 4);
  v12 = *(a2 + 4);
  v8 = v11 < v12;
  if (v11 != v12)
  {
    return v8;
  }

  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
  if (v13 != v14)
  {
    return v13 < v14;
  }

  v15 = *(a1 + 47);
  if (v15 >= 0)
  {
    v16 = *(a1 + 47);
  }

  else
  {
    v16 = *(a1 + 32);
  }

  v17 = *(a2 + 47);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a2 + 32);
  }

  if (v16 != v17)
  {
    return (sub_100019438((a1 + 24), (a2 + 24)) & 0x80u) != 0;
  }

  v19 = v15 >= 0 ? (a1 + 24) : *(a1 + 24);
  v20 = v18 >= 0 ? (a2 + 24) : *(a2 + 24);
  result = memcmp(v19, v20, v16);
  if (result)
  {
    return (sub_100019438((a1 + 24), (a2 + 24)) & 0x80u) != 0;
  }

  return result;
}

uint64_t sub_100085A44(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 40);
  (*(*v2 + 16))(v2);
  LODWORD(v1) = *(v1 + 32);
  (*(*v2 + 24))(v2);
  return v1 ^ 1;
}

int32x2_t sub_100085AC4(uint64_t a1, unsigned int a2, unsigned int a3, float32_t a4, float32x2_t a5)
{
  a5.f32[1] = a4;
  result = vcvt_s32_f32(vmla_f32(vcvt_f32_s32(*(a1 + 4)), a5, vcvt_f32_s32(vmul_s32(__PAIR64__(a2, a3), vdup_n_s32(0x2710u)))));
  *(a1 + 4) = result;
  return result;
}

uint64_t sub_100085AF8(uint64_t a1, uint64_t a2)
{
  sub_10008F9D4(v5, a2);
  if (v5[6])
  {
    v2 = 1;
  }

  else
  {
    v2 = v5[0] >= 0x3E8u;
  }

  v3 = !v2;
  sub_10008F96C(v5);
  return v3;
}

uint64_t sub_100085B48(uint64_t a1, uint64_t a2)
{
  result = sub_10008F96C(a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_102470D40[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t sub_100085BAC(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (qword_1025D4870 != -1)
  {
    sub_10023F764();
  }

  v6 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    sub_100A68070(a1, *a2, __p);
    v7 = v38 >= 0 ? __p : __p[0];
    v8 = *a2;
    *buf = 136446466;
    *&buf[4] = v7;
    v30 = 1026;
    v31 = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#ca,setMeasurements,measurement,%{public}s, %{public}d", buf, 0x12u);
    if (v38 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D4870 != -1)
    {
      sub_1019D3ECC();
    }

    v18 = qword_1025D4878;
    sub_100A68070(a1, *a2, buf);
    if (v32 >= 0)
    {
      v19 = buf;
    }

    else
    {
      v19 = *buf;
    }

    v20 = *a2;
    v33 = 136446466;
    v34 = v19;
    v35 = 1026;
    v36 = v20;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v18, 2, "#ca,setMeasurements,measurement,%{public}s, %{public}d", &v33, 18);
    v22 = v21;
    if (v32 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL AnalyticsLogger<CLAnalyticsMeasurements, CLAnalyticsTriggers>::setMeasurementValue(const Measurement &, MeasurementValueType) [Measurement = CLAnalyticsMeasurements, Trigger = CLAnalyticsTriggers, MeasurementValueType = std::variant<int, long long, unsigned long long, unsigned int, float, double, std::string, BOOL>]", "%s\n", v22);
    if (v22 != __p)
    {
      free(v22);
    }
  }

  LODWORD(__p[0]) = *a2;
  v9 = sub_1000735F4((a1 + 8), __p);
  if (v9)
  {
    v10 = *(a3 + 24);
    if (v10 == -1)
    {
      sub_1003D0A08();
    }

    v11 = v9[6];
    __p[0] = buf;
    v12 = (off_102488B60[v10])(__p, a3);
    if (!sub_10004FCC4(v12, v11))
    {
      goto LABEL_16;
    }
  }

  sub_1000883AC(a1, *a2, __p);
  sub_10008852C(v28, a3);
  if (!v39)
  {
    sub_1000CF05C();
  }

  v13 = (*(*v39 + 48))(v39, v28);
  sub_10008F96C(v28);
  sub_10008FA70(__p);
  if (v13)
  {
    __p[0] = a2;
    v14 = sub_10008FB08((a1 + 48), a2, &unk_101C66300, __p);
    sub_10008FD6C((v14 + 3), a3);
    return 1;
  }

  else
  {
LABEL_16:
    if (qword_1025D4870 != -1)
    {
      sub_1019D3ECC();
    }

    v16 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      sub_100A68070(a1, *a2, __p);
      v17 = v38 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v17;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#ca,ERROR,invalid,measurement,%{public}s", buf, 0xCu);
      if (v38 < 0)
      {
        operator delete(__p[0]);
      }
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      bzero(__p, 0x65CuLL);
      if (qword_1025D4870 != -1)
      {
        sub_1019D3ECC();
      }

      v23 = qword_1025D4878;
      sub_100A68070(a1, *a2, buf);
      if (v32 >= 0)
      {
        v24 = buf;
      }

      else
      {
        v24 = *buf;
      }

      v33 = 136446210;
      v34 = v24;
      LODWORD(v27) = 12;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v23, 2, "#ca,ERROR,invalid,measurement,%{public}s", &v33, v27);
      v26 = v25;
      if (v32 < 0)
      {
        operator delete(*buf);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL AnalyticsLogger<CLAnalyticsMeasurements, CLAnalyticsTriggers>::setMeasurementValue(const Measurement &, MeasurementValueType) [Measurement = CLAnalyticsMeasurements, Trigger = CLAnalyticsTriggers, MeasurementValueType = std::variant<int, long long, unsigned long long, unsigned int, float, double, std::string, BOOL>]", "%s\n", v26);
      if (v26 != __p)
      {
        free(v26);
      }

      return 0;
    }
  }

  return result;
}

void sub_100086060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_10008FA70(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10008608C(void *a1, int *a2, uint64_t a3, _DWORD **a4)
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
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
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

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_1000862F0(uint64_t a1, int *a2, CFDictionaryRef *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 208) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019D5A14();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLAnalyticsLogger::onTelephonyNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019D5A28();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAnalyticsLogger::onTelephonyNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000864BC(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000864BC(uint64_t a1, uint64_t a2, int *a3, CFDictionaryRef *a4)
{
  if (qword_1025D4870 != -1)
  {
    sub_10023F764();
  }

  v7 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_100072010(a3);
    sub_1000238CC(v8, __p);
    v9 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    *buf = 136446210;
    *&buf[4] = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#ca,onTelephonyServiceNotification,%{public}s", buf, 0xCu);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019D5A50(a3);
  }

  v10 = sub_100072010(a3);
  if (CFEqual(@"kEmergencyModeChangeNotification", v10))
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019D3ECC();
    }

    v11 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#ca,kEmergencyModeChangeNotification", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019D5B9C();
    }

    return;
  }

  v12 = sub_100072010(a3);
  if (CFEqual(v12, @"kDataStatusNotification"))
  {
    *buf = 0u;
    v115 = 0u;
    v116 = 1065353216;
    if (sub_10116D15C(*a4, buf))
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019D3ECC();
      }

      v13 = qword_1025D4878;
      v14 = os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        LODWORD(v107) = 0;
        *&v105[0] = &v107;
        v16 = *(sub_1006E20E0(buf, &v107, &unk_101C66300, v105) + 52);
        __p[0] = 68289538;
        LOWORD(__p[1]) = 2082;
        *(&__p[1] + 2) = "";
        WORD1(__p[2]) = 1026;
        HIDWORD(__p[2]) = 0;
        v119 = 1026;
        v120 = v16;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ca,kDataStatusNotification, inst:%{public}d, InHomeCountry:%{public}d}", __p, 0x1Eu);
      }

      if (sub_1000649A0(v14, v15))
      {
        if (qword_1025D4870 != -1)
        {
          sub_1019D3ECC();
        }

        v17 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v107) = 1;
          *&v105[0] = &v107;
          v18 = *(sub_1006E20E0(buf, &v107, &unk_101C66300, v105) + 52);
          __p[0] = 68289538;
          LOWORD(__p[1]) = 2082;
          *(&__p[1] + 2) = "";
          WORD1(__p[2]) = 1026;
          HIDWORD(__p[2]) = 1;
          v119 = 1026;
          v120 = v18;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ca,kDataStatusNotification, inst:%{public}d, InHomeCountry:%{public}d}", __p, 0x1Eu);
        }
      }
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019D3ECC();
      }

      v22 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#ca,kDataStatusNotification,error fetching InHomeCountry", __p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019D3EF4(__p);
        LOWORD(v105[0]) = 0;
        _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4878, 2, "#ca,kDataStatusNotification,error fetching InHomeCountry", v105, 2);
        v75 = v74;
        sub_100152C7C("Generic", 1, 0, 2, "void CLAnalyticsLogger::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v74);
        if (v75 != __p)
        {
          free(v75);
        }
      }
    }

    sub_1004906DC(buf);
    return;
  }

  v19 = sub_100072010(a3);
  if (CFEqual(v19, @"kAltAccountConfiguredNotification"))
  {
    buf[0] = 0;
    if (sub_10116E980(*a4, buf))
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019D3ECC();
      }

      v20 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(__p[0]) = 67174657;
        HIDWORD(__p[0]) = buf[0];
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#ca,kAltAccountConfiguredNotification,isAltAccountConfigured,%{private}d", __p, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019D5C80();
      }

      LODWORD(__p[0]) = 30;
      if (buf[0] == 1)
      {
        v111[0] = 1;
        v111[6] = 0;
        sub_100085BAC(a1, __p, v111);
        v21 = v111;
      }

      else
      {
        v110[0] = 0;
        v110[6] = 0;
        sub_100085BAC(a1, __p, v110);
        v21 = v110;
      }

      sub_10008F96C(v21);
    }

    return;
  }

  v23 = sub_100072010(a3);
  if (CFEqual(v23, @"kCellInfoNotification"))
  {
    v24 = *a4;
    if (!*a4)
    {
      return;
    }

    v107 = 0;
    v108 = 0;
    v109 = 0;
    memset(v105, 0, sizeof(v105));
    v106 = 1065353216;
    if (sub_100065478(v24, v105))
    {
      LODWORD(__p[0]) = 0;
      *buf = __p;
      if (sub_1000646F8(v105, __p, &unk_101C66300, buf)[3])
      {
        sub_1000658D0(0, v105, &v107);
        sub_100065934(&v107, buf);
        if (v117)
        {
          if (qword_1025D4870 != -1)
          {
            sub_1019D3ECC();
          }

          v25 = qword_1025D4878;
          if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
          {
            __p[0] = 67109120;
            _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "#ca,kCellInfoNotification,serving cell found for sim,%d", __p, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019D3EF4(__p);
            v112 = 67109120;
            v113 = 0;
            _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4878, 2, "#ca,kCellInfoNotification,serving cell found for sim,%d", &v112);
            v79 = v78;
            sub_100152C7C("Generic", 1, 0, 2, "void CLAnalyticsLogger::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v78);
            if (v79 != __p)
            {
              free(v79);
            }
          }

          sub_100087E98(a1, 0, buf);
        }

        else
        {
          if (qword_1025D4870 != -1)
          {
            sub_1019D3ECC();
          }

          v66 = qword_1025D4878;
          if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(__p[0]) = 0;
            _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEBUG, "#ca,kCellInfoNotification,serving cell missing", __p, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019D3EF4(__p);
            LOWORD(v112) = 0;
            _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4878, 2, "#ca,kCellInfoNotification,serving cell missing", &v112, 2);
            v81 = v80;
            sub_100152C7C("Generic", 1, 0, 2, "void CLAnalyticsLogger::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v80);
            if (v81 != __p)
            {
              free(v81);
            }
          }
        }

        v62 = sub_1000827E4(buf);
      }

      else
      {
        if (qword_1025D4870 != -1)
        {
          sub_1019D3ECC();
        }

        v61 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
        {
          __p[0] = 67109120;
          _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEBUG, "#ca,kCellInfoNotification,received nil CellInfo from CT for sim %d", __p, 8u);
        }

        v62 = sub_10000A100(121, 2);
        if (v62)
        {
          sub_1019D3EF4(__p);
          *buf = 67109120;
          *&buf[4] = 0;
          _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4878, 2, "#ca,kCellInfoNotification,received nil CellInfo from CT for sim %d", buf);
          v65 = v64;
          v62 = sub_100152C7C("Generic", 1, 0, 2, "void CLAnalyticsLogger::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v64);
          if (v65 != __p)
          {
            free(v65);
          }
        }
      }

      v68 = v107;
      for (i = v108; i != v68; sub_1000720CC(i))
      {
        i -= 696;
      }

      v108 = v68;
      if (!sub_1000649A0(v62, v63))
      {
        goto LABEL_161;
      }

      LODWORD(__p[0]) = 1;
      *buf = __p;
      if (sub_1000646F8(v105, __p, &unk_101C66300, buf)[3])
      {
        sub_1000658D0(1, v105, &v107);
        sub_100065934(&v107, buf);
        if (v117)
        {
          if (qword_1025D4870 != -1)
          {
            sub_1019D3ECC();
          }

          v69 = qword_1025D4878;
          if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
          {
            __p[0] = 0x104000100;
            _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_DEBUG, "#ca,kCellInfoNotification,serving cell found for sim,%d", __p, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019D3EF4(__p);
            v112 = 67109120;
            v113 = 1;
            _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4878, 2, "#ca,kCellInfoNotification,serving cell found for sim,%d", &v112);
            v85 = v84;
            sub_100152C7C("Generic", 1, 0, 2, "void CLAnalyticsLogger::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v84);
            if (v85 != __p)
            {
              free(v85);
            }
          }

          sub_100087E98(a1, 1, buf);
        }

        else
        {
          if (qword_1025D4870 != -1)
          {
            sub_1019D3ECC();
          }

          v73 = qword_1025D4878;
          if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(__p[0]) = 0;
            _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_DEBUG, "#ca,kCellInfoNotification,serving cell missing", __p, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019D3EF4(__p);
            LOWORD(v112) = 0;
            LODWORD(v88) = 2;
            _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4878, 2, "#ca,kCellInfoNotification,serving cell missing", &v112, v88);
            v87 = v86;
            sub_100152C7C("Generic", 1, 0, 2, "void CLAnalyticsLogger::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v86);
            if (v87 != __p)
            {
              free(v87);
            }
          }
        }

        sub_1000827E4(buf);
LABEL_161:
        sub_100075100(v105);
        __p[0] = &v107;
        sub_100072124(__p);
        return;
      }

      if (qword_1025D4870 != -1)
      {
        sub_1019D3ECC();
      }

      v70 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        __p[0] = 0x104000100;
        _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_DEBUG, "#ca,kCellInfoNotification,received nil CellInfo from CT for sim %d", __p, 8u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_161;
      }

      sub_1019D3EF4(__p);
      *buf = 67109120;
      *&buf[4] = 1;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4878, 2, "#ca,kCellInfoNotification,received nil CellInfo from CT for sim %d", buf);
      v39 = v71;
      sub_100152C7C("Generic", 1, 0, 2, "void CLAnalyticsLogger::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v71);
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019D3ECC();
      }

      v37 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "#ca,kCellInfoNotification,error fetching cell info", __p, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_161;
      }

      sub_1019D3EF4(__p);
      *buf = 0;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4878, 2, "#ca,kCellInfoNotification,error fetching cell info", buf, 2);
      v39 = v38;
      sub_100152C7C("Generic", 1, 0, 2, "void CLAnalyticsLogger::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v38);
    }

    if (v39 != __p)
    {
      free(v39);
    }

    goto LABEL_161;
  }

  v26 = sub_100072010(a3);
  if (CFEqual(v26, @"kSubscriberMccAndMncNotification"))
  {
    *buf = 0u;
    v115 = 0u;
    v116 = 1065353216;
    if (sub_10009404C(*a4, buf))
    {
      LODWORD(v105[0]) = 0;
      __p[0] = v105;
      v27 = *(sub_10009422C(buf, v105, &unk_101C66300, __p) + 5);
      LODWORD(v105[0]) = 0;
      __p[0] = v105;
      v28 = *(sub_10009422C(buf, v105, &unk_101C66300, __p) + 6);
      LODWORD(v105[0]) = 0;
      __p[0] = v105;
      v29 = *(sub_10009422C(buf, v105, &unk_101C66300, __p) + 28);
      if (qword_1025D4870 != -1)
      {
        sub_1019D3ECC();
      }

      v30 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        __p[0] = 68290050;
        LOWORD(__p[1]) = 2082;
        *(&__p[1] + 2) = "";
        WORD1(__p[2]) = 1026;
        HIDWORD(__p[2]) = 0;
        v119 = 1026;
        v120 = v27;
        v121 = 1026;
        v122 = v28;
        v123 = 1026;
        v124 = v29;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ca,kSubscriberMccAndMncNotification, CarrierSim:%{public}d, Carriermcc:%{public}d, CarrierMnc:%{public}d, is3DigitMnc:%{public}hhd}", __p, 0x2Au);
      }

      LODWORD(__p[0]) = 4;
      v104[0] = v27;
      v104[6] = 0;
      sub_100085BAC(a1, __p, v104);
      sub_10008F96C(v104);
      LODWORD(__p[0]) = 5;
      v103[0] = v28;
      v103[6] = 0;
      sub_100085BAC(a1, __p, v103);
      sub_10008F96C(v103);
      LODWORD(v105[0]) = 6;
      sub_10008FF14(v27, __p);
      v100 = *__p;
      v101 = __p[2];
      memset(__p, 0, sizeof(__p));
      v102 = 6;
      sub_100085BAC(a1, v105, &v100);
      v31 = sub_10008F96C(&v100);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      if (sub_1000649A0(v31, v32))
      {
        LODWORD(v105[0]) = 1;
        __p[0] = v105;
        v33 = *(sub_10009422C(buf, v105, &unk_101C66300, __p) + 5);
        LODWORD(v105[0]) = 1;
        __p[0] = v105;
        v34 = *(sub_10009422C(buf, v105, &unk_101C66300, __p) + 6);
        LODWORD(v105[0]) = 1;
        __p[0] = v105;
        v35 = *(sub_10009422C(buf, v105, &unk_101C66300, __p) + 28);
        if (qword_1025D4870 != -1)
        {
          sub_1019D3ECC();
        }

        v36 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
        {
          __p[0] = 68290050;
          LOWORD(__p[1]) = 2082;
          *(&__p[1] + 2) = "";
          WORD1(__p[2]) = 1026;
          HIDWORD(__p[2]) = 1;
          v119 = 1026;
          v120 = v33;
          v121 = 1026;
          v122 = v34;
          v123 = 1026;
          v124 = v35;
          _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ca,kSubscriberMccAndMncNotification, CarrierSim:%{public}d, CarrierMcc:%{public}d, CarrierMnc:%{public}d, is3DigitMnc:%{public}hhd}", __p, 0x2Au);
        }

        LODWORD(__p[0]) = 12;
        v99[0] = v33;
        v99[6] = 0;
        sub_100085BAC(a1, __p, v99);
        sub_10008F96C(v99);
        LODWORD(__p[0]) = 13;
        v98[0] = v34;
        v98[6] = 0;
        sub_100085BAC(a1, __p, v98);
        sub_10008F96C(v98);
        LODWORD(v105[0]) = 16;
        sub_10008FF14(v33, __p);
        v95 = *__p;
        v96 = __p[2];
        memset(__p, 0, sizeof(__p));
        v97 = 6;
        sub_100085BAC(a1, v105, &v95);
        sub_10008F96C(&v95);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019D3ECC();
      }

      v60 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_DEBUG, "#ca,kSubscriberMccAndMncNotification,error fetching MCC and MNC", __p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019D3EF4(__p);
        LOWORD(v105[0]) = 0;
        _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4878, 2, "#ca,kSubscriberMccAndMncNotification,error fetching MCC and MNC", v105, 2);
        v77 = v76;
        sub_100152C7C("Generic", 1, 0, 2, "void CLAnalyticsLogger::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v76);
        if (v77 != __p)
        {
          free(v77);
        }
      }
    }

    sub_1004906DC(buf);
  }

  else
  {
    v40 = sub_100072010(a3);
    if (CFEqual(v40, @"kSubscriptionChangeNotification"))
    {
      v41 = *a4;
      if (*a4)
      {
        *buf = 0u;
        v115 = 0u;
        v116 = 1065353216;
        if (sub_10116E14C(v41, buf))
        {
          LODWORD(v107) = 0;
          LODWORD(v105[0]) = 33;
          __p[0] = &v107;
          if (*(sub_1009160E8(buf, &v107, &unk_101C66300, __p) + 20))
          {
            v42 = 1;
          }

          else
          {
            v42 = 2;
          }

          v94[0] = v42;
          v94[6] = 0;
          sub_100085BAC(a1, v105, v94);
          sub_10008F96C(v94);
          LODWORD(v105[0]) = 34;
          __p[0] = &v107;
          if (*(sub_1009160E8(buf, &v107, &unk_101C66300, __p) + 21))
          {
            v43 = 1;
          }

          else
          {
            v43 = 2;
          }

          v93[0] = v43;
          v93[6] = 0;
          sub_100085BAC(a1, v105, v93);
          sub_10008F96C(v93);
          LODWORD(v105[0]) = 22;
          __p[0] = &v107;
          if (*(sub_1009160E8(buf, &v107, &unk_101C66300, __p) + 22))
          {
            v44 = 1;
          }

          else
          {
            v44 = 2;
          }

          v92[0] = v44;
          v92[6] = 0;
          sub_100085BAC(a1, v105, v92);
          sub_10008F96C(v92);
          if (qword_1025D4870 != -1)
          {
            sub_1019D3ECC();
          }

          v45 = qword_1025D4878;
          v46 = os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT);
          if (v46)
          {
            v48 = v107;
            *&v105[0] = &v107;
            v49 = *(sub_1009160E8(buf, &v107, &unk_101C66300, v105) + 20);
            *&v105[0] = &v107;
            v50 = *(sub_1009160E8(buf, &v107, &unk_101C66300, v105) + 21);
            *&v105[0] = &v107;
            v51 = *(sub_1009160E8(buf, &v107, &unk_101C66300, v105) + 22);
            __p[0] = 68290050;
            LOWORD(__p[1]) = 2082;
            *(&__p[1] + 2) = "";
            WORD1(__p[2]) = 1026;
            HIDWORD(__p[2]) = v48;
            v119 = 1026;
            v120 = v49;
            v121 = 1026;
            v122 = v50;
            v123 = 1026;
            v124 = v51;
            _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ca,kSubscriptionChangeNotification, sim:%{public}d, userDataPreferred:%{public}hhd, userDefaultVoice:%{public}hhd, isSimPresent:%{public}hhd}", __p, 0x2Au);
          }

          if (sub_1000649A0(v46, v47))
          {
            v112 = 1;
            LODWORD(v105[0]) = 35;
            __p[0] = &v112;
            if (*(sub_1009160E8(buf, &v112, &unk_101C66300, __p) + 20))
            {
              v52 = 1;
            }

            else
            {
              v52 = 2;
            }

            v91[0] = v52;
            v91[6] = 0;
            sub_100085BAC(a1, v105, v91);
            sub_10008F96C(v91);
            LODWORD(v105[0]) = 36;
            __p[0] = &v112;
            if (*(sub_1009160E8(buf, &v112, &unk_101C66300, __p) + 21))
            {
              v53 = 1;
            }

            else
            {
              v53 = 2;
            }

            v90[0] = v53;
            v90[6] = 0;
            sub_100085BAC(a1, v105, v90);
            sub_10008F96C(v90);
            LODWORD(v105[0]) = 23;
            __p[0] = &v112;
            if (*(sub_1009160E8(buf, &v112, &unk_101C66300, __p) + 22))
            {
              v54 = 1;
            }

            else
            {
              v54 = 2;
            }

            v89[0] = v54;
            v89[6] = 0;
            sub_100085BAC(a1, v105, v89);
            sub_10008F96C(v89);
            if (qword_1025D4870 != -1)
            {
              sub_1019D3ECC();
            }

            v55 = qword_1025D4878;
            if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
            {
              v56 = v112;
              *&v105[0] = &v112;
              v57 = *(sub_1009160E8(buf, &v112, &unk_101C66300, v105) + 20);
              *&v105[0] = &v112;
              v58 = *(sub_1009160E8(buf, &v112, &unk_101C66300, v105) + 21);
              *&v105[0] = &v112;
              v59 = *(sub_1009160E8(buf, &v112, &unk_101C66300, v105) + 22);
              __p[0] = 68290050;
              LOWORD(__p[1]) = 2082;
              *(&__p[1] + 2) = "";
              WORD1(__p[2]) = 1026;
              HIDWORD(__p[2]) = v56;
              v119 = 1026;
              v120 = v57;
              v121 = 1026;
              v122 = v58;
              v123 = 1026;
              v124 = v59;
              _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ca,kSubscriptionChangeNotification, sim:%{public}d, userDataPreferred:%{public}hhd, userDefaultVoice:%{public}hhd, isSimPresent:%{public}hhd}", __p, 0x2Au);
            }
          }
        }

        else
        {
          if (qword_1025D4870 != -1)
          {
            sub_1019D3ECC();
          }

          v72 = qword_1025D4878;
          if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
          {
            LOWORD(__p[0]) = 0;
            _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_ERROR, "#ca,kSubscriptionChangeNotification,error fetching context", __p, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1019D3EF4(__p);
            LOWORD(v105[0]) = 0;
            _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4878, 16, "#ca,kSubscriptionChangeNotification,error fetching context", v105, 2);
            v83 = v82;
            sub_100152C7C("Generic", 1, 0, 0, "void CLAnalyticsLogger::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v82);
            if (v83 != __p)
            {
              free(v83);
            }
          }
        }

        sub_1004906DC(buf);
      }
    }
  }
}

void sub_100087CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1000827E4(&STACK[0x230]);
  sub_100075100(&a59);
  STACK[0x4F0] = &a65;
  sub_100072124(&STACK[0x4F0]);
  _Unwind_Resume(a1);
}

void sub_100087E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 696) != 1)
  {
    return;
  }

  v4 = a2;
  v6 = *(a3 + 8);
  if (v6 < 3)
  {
    goto LABEL_5;
  }

  if (v6 == 9)
  {
    v18 = *sub_1006CCAA0(a3, a2);
    v7 = sub_1006CCAA0(a3, v14);
    goto LABEL_6;
  }

  if (v6 == 7)
  {
LABEL_5:
    v18 = *sub_1006CBCE4(a3);
    v7 = sub_1006CBCE4(a3);
  }

  else
  {
    if (v6 - 3 <= 2)
    {
      v10 = *(sub_1006CB140(a3, a2) + 32);
      v9 = *(sub_1006CB140(a3, v15) + 36);
      v8 = -1;
      v18 = -1;
      goto LABEL_7;
    }

    if (v6 == 10)
    {
      v18 = *sub_100681E80(a3, a2);
      v7 = sub_100681E80(a3, v17);
    }

    else
    {
      if (v6 != 6)
      {
        v8 = 0;
        v18 = 0;
        v10 = 0;
        v9 = -1;
        goto LABEL_7;
      }

      v18 = *sub_10007513C(a3, a2);
      v7 = sub_10007513C(a3, v16);
    }
  }

LABEL_6:
  v8 = *(v7 + 4);
  v9 = -1;
  v10 = -1;
LABEL_7:
  if (qword_1025D4870 != -1)
  {
    sub_10023F764();
  }

  v11 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68290307;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = v4;
    v33 = 1025;
    v34 = v18;
    v35 = 1025;
    v36 = v8;
    v37 = 1025;
    v38 = v10;
    v39 = 1025;
    v40 = v9;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ca,handleCellInfoNotification, inst:%{public}d, OperatorMCC:%{private}d, OperatorMNC:%{private}d, OperatorSID:%{private}d, OperatorNID:%{private}d}", buf, 0x30u);
    if (qword_1025D4870 != -1)
    {
      sub_1019D3ECC();
    }
  }

  v12 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289794;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = 0;
    v33 = 1026;
    v34 = v18;
    v35 = 1026;
    v36 = v8;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ca,kSubscriberMccAndMncNotification, CarrierSim:%{public}d, Carriermcc:%{public}d, CarrierMnc:%{public}d}", buf, 0x24u);
  }

  if (v4 == 1)
  {
    *buf = 14;
    v24[0] = v18;
    v24[6] = 0;
    sub_100085BAC(a1, buf, v24);
    sub_10008F96C(v24);
    *buf = 15;
    v23[0] = v8;
    v23[6] = 0;
    sub_100085BAC(a1, buf, v23);
    sub_10008F96C(v23);
    *buf = 21;
    v22[0] = *(a3 + 8);
    v22[6] = 0;
    sub_100085BAC(a1, buf, v22);
    sub_10008F96C(v22);
    if (v18 - 1 > 0x3E6)
    {
      return;
    }

    v28 = 18;
    sub_10008FF14(v18, buf);
    v19 = *buf;
    v20 = *&buf[16];
    memset(buf, 0, sizeof(buf));
    v21 = 6;
    sub_100085BAC(a1, &v28, &v19);
    v13 = &v19;
    goto LABEL_20;
  }

  if (!v4)
  {
    *buf = 8;
    v31[0] = v18;
    v31[6] = 0;
    sub_100085BAC(a1, buf, v31);
    sub_10008F96C(v31);
    *buf = 9;
    v30[0] = v8;
    v30[6] = 0;
    sub_100085BAC(a1, buf, v30);
    sub_10008F96C(v30);
    *buf = 20;
    v29[0] = *(a3 + 8);
    v29[6] = 0;
    sub_100085BAC(a1, buf, v29);
    sub_10008F96C(v29);
    if (v18 - 1 <= 0x3E6)
    {
      v28 = 10;
      sub_10008FF14(v18, buf);
      v25 = *buf;
      v26 = *&buf[16];
      memset(buf, 0, sizeof(buf));
      v27 = 6;
      sub_100085BAC(a1, &v28, &v25);
      v13 = &v25;
LABEL_20:
      sub_10008F96C(v13);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }
  }
}

void sub_10008831C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10008F96C(va);
  if (*(v5 - 137) < 0)
  {
    operator delete(*(v5 - 160));
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1000883AC@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = a2;
  result = sub_1000735F4((a1 + 8), &v5);
  if (result)
  {
    return sub_100088494(a3, (result + 8));
  }

  *a3 = off_102488BB0;
  a3[1] = sub_100A73060;
  a3[3] = a3;
  return result;
}

uint64_t *sub_100088428(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v11 = a2;
  v12 = &v11;
  result = sub_10008608C((a1 + 248), &v11, &unk_101C66300, &v12);
  *(result + 12) = a3;
  *(result + 13) = a4;
  *(result + 14) = a5;
  *(result + 15) = a6;
  return result;
}

uint64_t sub_100088494(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10008852C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  sub_100085B48(a1, a2);
  return a1;
}

uint64_t sub_100088574(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102488ED0;
  a2[1] = v2;
  return result;
}

uint64_t sub_100088608(uint64_t a1, unsigned int a2, uint64_t a3, double a4, double a5, double a6)
{
  v57 = a2;
  if (a2 - 3 >= 3)
  {
    sub_101B15A94(a1, a4, a5, a6);
  }

  if (*(a1 + 129))
  {
    sub_1000850D0(&v53, &v57);
    if (SHIBYTE(v56) < 0)
    {
      *(&v55 + 1) = 0;
      v11 = v55;
    }

    else
    {
      HIBYTE(v56) = 0;
      v11 = &v55;
    }

    *v11 = 0;
    v15 = sub_100088E8C(v53, (a1 + 400));
    if (*(a1 + 144))
    {
      sub_10008511C(&v53, a3, a4, a5, *(v15 + 152), *(v15 + 160));
      if (sub_1000852BC(&v53))
      {
        if (qword_1025D4620 != -1)
        {
          sub_1000E1C54();
        }

        v16 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          v17 = v57;
          v18 = sub_100085790(v57);
          sub_100B4EFD4(&v53, __p);
          v19 = __p[23] >= 0 ? __p : *__p;
          v20 = *(a1 + 336);
          *buf = 67241475;
          *v65 = v17;
          *&v65[4] = 2082;
          *&v65[6] = v18;
          *&v65[14] = 2053;
          *&v65[16] = a4;
          v66 = 2053;
          *v67 = a5;
          *&v67[8] = 2081;
          v68 = v19;
          v69 = 1026;
          v70 = v20;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "TileDl, requestDownload, type, %{public}d, %{public}s, location, %{sensitive}14.8lf, %{sensitive}14.8lf, id, %{private}s, reachability, %{public}d", buf, 0x36u);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B15D14(buf);
          v37 = qword_1025D4628;
          v38 = v57;
          v39 = sub_100085790(v57);
          sub_100B4EFD4(&v53, v51);
          if (v52 >= 0)
          {
            v40 = v51;
          }

          else
          {
            v40 = v51[0];
          }

          v41 = *(a1 + 336);
          *__p = 67241475;
          *&__p[4] = v38;
          *&__p[8] = 2082;
          *&__p[10] = v39;
          *&__p[18] = 2053;
          *&__p[20] = a4;
          v59 = 2053;
          *v60 = a5;
          *&v60[8] = 2081;
          v61 = v40;
          v62 = 1026;
          v63 = v41;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v37, 2, "TileDl, requestDownload, type, %{public}d, %{public}s, location, %{sensitive}14.8lf, %{sensitive}14.8lf, id, %{private}s, reachability, %{public}d", __p, 54);
          v43 = v42;
          if (v52 < 0)
          {
            operator delete(v51[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, CFAbsoluteTime)", "%s\n", v43);
          if (v43 != buf)
          {
            free(v43);
          }
        }

        v21 = *(a1 + 360);
        v47 = v53;
        v48 = v54;
        if (SHIBYTE(v56) < 0)
        {
          sub_100007244(&v49, v55, *(&v55 + 1));
        }

        else
        {
          v49 = v55;
          v50 = v56;
        }

        v31 = sub_100089C18(v21, &v47, a6);
        v32 = v31;
        if (SHIBYTE(v50) < 0)
        {
          operator delete(v49);
          if (!v32)
          {
LABEL_48:
            v14 = 1;
LABEL_49:
            if (SHIBYTE(v56) < 0)
            {
              operator delete(v55);
            }

            return v14;
          }
        }

        else if (!v31)
        {
          goto LABEL_48;
        }

        v33 = (*(**(a1 + 352) + 40))(*(a1 + 352));
        if (qword_1025D4620 != -1)
        {
          sub_1000E1C54();
        }

        v34 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67240192;
          *v65 = v33;
          _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEFAULT, "@TileSched, cell, set, %{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B15D14(buf);
          *__p = 67240192;
          *&__p[4] = v33;
          LODWORD(v46) = 8;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "@TileSched, cell, set, %{public}d", __p, v46, v47, v48);
          v45 = v44;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, CFAbsoluteTime)", "%s\n", v44);
          if (v45 != buf)
          {
            free(v45);
          }
        }

        goto LABEL_48;
      }

      if (qword_1025D4620 != -1)
      {
        sub_1000E1C54();
      }

      v30 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134546689;
        *v65 = a4;
        *&v65[8] = 2053;
        *&v65[10] = a5;
        *&v65[18] = 1024;
        *&v65[20] = v53;
        v66 = 1024;
        *v67 = DWORD1(v53);
        *&v67[4] = 1024;
        *&v67[6] = DWORD2(v53);
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "@TileError, RequestID, ll, %{sensitive}.3lf, %{sensitive}.3lf, tid, %d, %d, %d", buf, 0x28u);
      }

      if (!sub_10000A100(121, 2))
      {
LABEL_37:
        v14 = 0;
        goto LABEL_49;
      }

      sub_101B15D14(buf);
      *__p = 134546689;
      *&__p[4] = a4;
      *&__p[12] = 2053;
      *&__p[14] = a5;
      *&__p[22] = 1024;
      *&__p[24] = v53;
      v59 = 1024;
      *v60 = DWORD1(v53);
      *&v60[4] = 1024;
      *&v60[6] = DWORD2(v53);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "@TileError, RequestID, ll, %{sensitive}.3lf, %{sensitive}.3lf, tid, %d, %d, %d", __p, 40);
      v29 = v36;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, CFAbsoluteTime)", "%s\n", v36);
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_1000E1C54();
      }

      v22 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
      {
        v23 = v57;
        v24 = sub_100085790(v57);
        *buf = 67240451;
        *v65 = v23;
        *&v65[4] = 2081;
        *&v65[6] = v24;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "@TileDl, requestDownload, type, %{public}d, %{private}s, not active", buf, 0x12u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_37;
      }

      sub_101B15D14(buf);
      v25 = qword_1025D4628;
      v26 = v57;
      v27 = sub_100085790(v57);
      *__p = 67240451;
      *&__p[4] = v26;
      *&__p[8] = 2081;
      *&__p[10] = v27;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v25, 1, "@TileDl, requestDownload, type, %{public}d, %{private}s, not active", __p, 18);
      v29 = v28;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, CFAbsoluteTime)", "%s\n", v28);
    }

    if (v29 != buf)
    {
      free(v29);
    }

    goto LABEL_37;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101B1583C();
  }

  v12 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 128);
    *buf = 67240192;
    *v65 = v13;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "TileDl, ignore before first unlock, fDataProtectionEnabled, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B15C20(a1);
  }

  return 0;
}

void sub_100088E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100088E8C(uint64_t a1, void *a2)
{
  v2 = a1;
  result = sub_10007253C(a2, a1);
  if (!result)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B1E8A4();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      v9 = v2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "TileMgr, invalid tileType, %{public}d, #CloneMe", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B1E8B8(v2);
    }

    if (qword_1025D4600 != -1)
    {
      sub_101B1E9DC();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "false";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4600 != -1)
      {
        sub_101B1E9DC();
      }
    }

    v6 = qword_1025D4608;
    if (os_signpost_enabled(qword_1025D4608))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "false";
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4600 != -1)
      {
        sub_101B1E9DC();
      }
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "false";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Tiles/CLTilesManagerUtility.mm", 77, "getTilesSet");
  }

  return result;
}

uint64_t sub_10008914C(uint64_t result, int a2, int a3, uint64_t a4)
{
  *(result + 4) = a3;
  *(result + 8) = a2;
  *(result + 16) = a4;
  return result;
}

uint64_t sub_100089158(unsigned int *a1)
{
  if ((a1[1] & 0x80000000) == 0 && (a1[2] & 0x80000000) == 0)
  {
    return 1;
  }

  if (qword_1025D4620 != -1)
  {
    sub_1019F693C();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    sub_100B4EFD4(a1, __p);
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    v8 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Invalid tile x, y: %s", buf, 0xCu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1019F6950();
    return 0;
  }

  return result;
}

BOOL sub_100089284(unsigned int *a1)
{
  v1 = *a1;
  if (*a1 >= 0xD)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1019F693C();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *a1;
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Invalid tile type: %d", v6, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019F6A58(a1);
    }
  }

  return v1 < 0xD;
}

uint64_t sub_100089378(int a1, unsigned int a2)
{
  if (a1 == 2)
  {
    return 1;
  }

  else
  {
    return a2;
  }
}

BOOL sub_100089384(uint64_t a1, uint64_t a2, double a3)
{
  __p = 0uLL;
  v30 = 0;
  v6 = (a2 + 48);
  *buf = a2 + 48;
  v7 = sub_10008E7C8((a1 + 24), a2 + 48, &unk_101C66300, buf, &v31);
  v8 = sub_100085A44(a2);
  v9 = sub_10008E860(a2);
  v10 = sub_100089378(*(a1 + 104), *(a1 + 109));
  v11 = sub_10007280C(a2);
  v12 = &__p + 10;
  v13 = vabdd_f64(a3, v11);
  if (*(v7 + 88) == 1)
  {
    v14 = 0;
    HIBYTE(v30) = 10;
    WORD4(__p) = 29555;
    v15 = "DlProgress";
LABEL_8:
    *&__p = *v15;
    goto LABEL_9;
  }

  if (((v9 | v8 ^ 1) & 1) == 0)
  {
    v14 = v13 >= *(a1 + 88);
    HIBYTE(v30) = 10;
    WORD4(__p) = 31090;
    v15 = "1st/Re-Try";
    goto LABEL_8;
  }

  if ((v9 ^ 1 | v8 ^ 1))
  {
    if ((v9 ^ 1 | v8))
    {
      v14 = 0;
      v12 = &__p + 5;
      HIBYTE(v30) = 5;
      qmemcpy(&__p, "Empty", 5);
      goto LABEL_9;
    }

    v14 = sub_100ED9330(a2, v10, a3, 1.0);
    v12 = &__p + 11;
    HIBYTE(v30) = 11;
    *(&__p + 7) = 1953720696;
    v15 = "DoesntExist";
    goto LABEL_8;
  }

  v14 = 0;
  v12 = &__p + 14;
  HIBYTE(v30) = 14;
  qmemcpy(&__p, "RefreshSkipped", 14);
LABEL_9:
  *v12 = 0;
  if (qword_1025D4620 != -1)
  {
    sub_101AED57C();
  }

  v16 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v17 = sub_100085790(*v6);
    v18 = sub_100085338(v6);
    v19 = sub_100085314(v6);
    p_p = &__p;
    if (v30 < 0)
    {
      p_p = __p;
    }

    *buf = 136448003;
    *&buf[4] = v17;
    v48 = 2053;
    v49 = v18;
    v50 = 2053;
    v51 = v19;
    v52 = 1026;
    v53 = v14;
    v54 = 1026;
    v55 = v9;
    v56 = 1026;
    v57 = v8;
    v58 = 2050;
    v59 = v13;
    v60 = 2082;
    v61 = p_p;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "@TileReq, %{public}s, attempts, llsw, %{sensitive}.2lf, %{sensitive}.2lf, isDownload, %{public}d, lastSuccess, %{public}d, existsOnServer, %{public}d, sinceLastDownload, %{public}.1lf, path, %{public}s", buf, 0x46u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AED538(buf);
    v22 = qword_1025D4628;
    v23 = sub_100085790(*v6);
    v24 = sub_100085338(v6);
    v25 = sub_100085314(v6);
    v26 = &__p;
    if (v30 < 0)
    {
      v26 = __p;
    }

    v31 = 136448003;
    v32 = v23;
    v33 = 2053;
    v34 = v24;
    v35 = 2053;
    v36 = v25;
    v37 = 1026;
    v38 = v14;
    v39 = 1026;
    v40 = v9;
    v41 = 1026;
    v42 = v8;
    v43 = 2050;
    v44 = v13;
    v45 = 2082;
    v46 = v26;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v22, 1, "@TileReq, %{public}s, attempts, llsw, %{sensitive}.2lf, %{sensitive}.2lf, isDownload, %{public}d, lastSuccess, %{public}d, existsOnServer, %{public}d, sinceLastDownload, %{public}.1lf, path, %{public}s", &v31, 70);
    v28 = v27;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileDownloader::canRequestBasedOnAttempts(CLTileFile *, CFAbsoluteTime)", "%s\n", v27);
    if (v28 != buf)
    {
      free(v28);
    }
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  return v14;
}

void sub_1000897A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000897E8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_1000857B4(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1000857B4((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}
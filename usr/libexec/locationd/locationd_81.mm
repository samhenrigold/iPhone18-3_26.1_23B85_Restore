NSDictionary *sub_100588CA0(unsigned __int8 *a1)
{
  v3[0] = @"kDataAttachedKey";
  v4[0] = [NSNumber numberWithBool:*a1];
  v3[1] = @"kDataIndicatorKey";
  v4[1] = [NSNumber numberWithInt:*(a1 + 1)];
  v3[2] = @"kDataIndicatorOverrideKey";
  v4[2] = [NSNumber numberWithInt:*(a1 + 2)];
  v3[3] = @"kDataRoamAllowedKey";
  v4[3] = [NSNumber numberWithBool:a1[12]];
  v3[4] = @"kDataRadioAccessTechnologyKey";
  v4[4] = [NSNumber numberWithInt:*(a1 + 4)];
  v3[5] = @"kDataPlanSignalingReductionOverrideKey";
  v4[5] = [NSNumber numberWithBool:a1[20]];
  v3[6] = @"kDataCellularDataPossibleKey";
  v4[6] = [NSNumber numberWithBool:a1[21]];
  v3[7] = @"kDataActiveContextsKey";
  v4[7] = [NSNumber numberWithUnsignedInt:*(a1 + 6)];
  v3[8] = @"kDataTotalActiveContextsKey";
  v4[8] = [NSNumber numberWithUnsignedInt:*(a1 + 7)];
  v3[9] = @"kDataInHomeCountryKey";
  v4[9] = [NSNumber numberWithBool:a1[32]];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:10];
}

uint64_t sub_100588E28(uint64_t a1, void *a2)
{
  *a1 = 0;
  if (a2)
  {
    *a1 = [a2 isRegisteredForSMS];
    *(a1 + 1) = [a2 isRegisteredForVoice];
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C7FD0();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#clct,CLCTImsRegStatus, status is null", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CC0BC();
    }
  }

  return a1;
}

BOOL *sub_100588EEC(BOOL *a1, const __CFDictionary *a2)
{
  *a1 = 0;
  v3 = a1 + 1;
  sub_100005548(v11, a2);
  if (sub_10001CBC0(v11, @"kIsRegisteredForSmsOverImsKey", a1))
  {
    if ((sub_10001CBC0(v11, @"kIsRegisteredForVoiceOverImsKey", v3) & 1) == 0)
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018C8028();
      }

      v4 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#clct,CLCTImsRegStatus, couldn't get value for RegisteredForVoiceOverIms", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C7FE4(buf);
        v10[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTImsRegStatus, couldn't get value for RegisteredForVoiceOverIms", v10, 2);
        v6 = v5;
        sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTImsRegStatus::CLCTImsRegStatus(CFDictionaryRef)", "%s\n", v5);
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#clct,CLCTImsRegStatus, couldn't get value for RegisteredForSmsOverIms", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C7FE4(buf);
      v10[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTImsRegStatus, couldn't get value for RegisteredForSmsOverIms", v10, 2);
      v6 = v9;
      sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTImsRegStatus::CLCTImsRegStatus(CFDictionaryRef)", "%s\n", v9);
LABEL_16:
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  sub_100005DA4();
  return a1;
}

NSDictionary *sub_1005891A4(unsigned __int8 *a1)
{
  v4[0] = @"kIsRegisteredForSmsOverImsKey";
  v2 = [NSNumber numberWithBool:*a1];
  v4[1] = @"kIsRegisteredForVoiceOverImsKey";
  v5[0] = v2;
  v5[1] = [NSNumber numberWithBool:a1[1]];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
}

uint64_t sub_100589248(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  if (a2)
  {
    *a1 = [objc_msgSend(a2 "userDataPreferred")];
    *(a1 + 1) = [objc_msgSend(a2 "userDefaultVoice")];
    *(a1 + 2) = [a2 isSimPresent];
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C7FD0();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#clct,CLCTXPCServiceSubscriptionContext, context is null", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CC1A0();
    }
  }

  return a1;
}

BOOL *sub_100589324(BOOL *a1, const __CFDictionary *a2)
{
  *a1 = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  v4 = a1 + 2;
  sub_100005548(v14, a2);
  if ((sub_10001CBC0(v14, @"kUserDataPreferredKey", a1) & 1) == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v8 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#clct,CLCTXPCServiceSubscriptionContext, couldn't get value for userDataPreferred", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_21;
    }

    sub_1018C7FE4(buf);
    v13[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTXPCServiceSubscriptionContext, couldn't get value for userDataPreferred", v13, 2);
    v7 = v9;
    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTXPCServiceSubscriptionContext::CLCTXPCServiceSubscriptionContext(CFDictionaryRef)", "%s\n", v9);
LABEL_23:
    if (v7 != buf)
    {
      free(v7);
    }

    goto LABEL_21;
  }

  if ((sub_10001CBC0(v14, @"kUserDefaultVoiceKey", v3) & 1) == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v10 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#clct,CLCTXPCServiceSubscriptionContext, couldn't get value for userDefaultVoice", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_21;
    }

    sub_1018C7FE4(buf);
    v13[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTXPCServiceSubscriptionContext, couldn't get value for userDefaultVoice", v13, 2);
    v7 = v12;
    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTXPCServiceSubscriptionContext::CLCTXPCServiceSubscriptionContext(CFDictionaryRef)", "%s\n", v12);
    goto LABEL_23;
  }

  if ((sub_10001CBC0(v14, @"kSimPresentKey", v4) & 1) == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#clct,CLCTXPCServiceSubscriptionContext, couldn't get value for isSimPresent", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C7FE4(buf);
      v13[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTXPCServiceSubscriptionContext, couldn't get value for isSimPresent", v13, 2);
      v7 = v6;
      sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTXPCServiceSubscriptionContext::CLCTXPCServiceSubscriptionContext(CFDictionaryRef)", "%s\n", v6);
      goto LABEL_23;
    }
  }

LABEL_21:
  sub_100005DA4();
  return a1;
}

NSDictionary *sub_1005896EC(unsigned __int8 *a1)
{
  v3[0] = @"kUserDataPreferredKey";
  v4[0] = [NSNumber numberWithBool:*a1];
  v3[1] = @"kUserDefaultVoiceKey";
  v4[1] = [NSNumber numberWithBool:a1[1]];
  v3[2] = @"kSimPresentKey";
  v4[2] = [NSNumber numberWithBool:a1[2]];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

void sub_100589900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_10058996C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_102460798;
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

void sub_100589A50(_BYTE *result, void *a2)
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
        sub_1018C9738();
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
        sub_1018CC474(result, a2);
      }
    }
  }
}

BOOL sub_100589CCC(uint64_t a1, void *a2, unsigned int *a3)
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
    v11 = sub_10006E830(a3, a2);
    v14 = *(v6 + 48);
    v13 = v6 + 48;
    v12 = v14;
    if (!v14)
    {
      goto LABEL_24;
    }

    v15 = v13;
    do
    {
      if (*(v12 + 28) >= v11)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v11));
    }

    while (v12);
    if (v15 == v13 || v11 < *(v15 + 28))
    {
LABEL_24:
      v15 = v13;
    }

    return v15 != v13;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_1018C9738();
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
      sub_1018CC68C(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100589E64(char *a1, uint64_t a2, unsigned int *a3)
{
  HIDWORD(v27) = a2;
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
        v8 = sub_10006E830(a3, a2);
        v12 = *(v7 + 6);
        v11 = v7 + 48;
        v10 = v12;
        if (v12)
        {
          v13 = v11;
          do
          {
            if (*(v10 + 28) >= v8)
            {
              v13 = v10;
            }

            v10 = *(v10 + 8 * (*(v10 + 28) < v8));
          }

          while (v10);
          if (v13 != v11 && v8 >= *(v13 + 7))
          {
            LODWORD(__p[0]) = sub_10006E830(a3, v9);
            sub_10004E6E0((v11 - 8), __p);
            v15 = sub_10006E830(a3, v14);
            v16 = *(a1 + 8);
            if (!v16)
            {
              goto LABEL_23;
            }

            v17 = a1 + 64;
            do
            {
              if (*(v16 + 32) >= v15)
              {
                v17 = v16;
              }

              v16 = *(v16 + 8 * (*(v16 + 32) < v15));
            }

            while (v16);
            if (v17 != a1 + 64 && v15 >= *(v17 + 8))
            {
              sub_10004E6E0((v17 + 40), &v27 + 1);
              if (!*(v17 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_1018C974C();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 8;
                if (a1[31] < 0)
                {
                  v19 = *v19;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v37 >= 0)
                {
                  v20 = __p;
                }

                else
                {
                  v20 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v19;
                v29 = 2082;
                v30 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v37 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_1018C974C();
                }

                v22 = a1 + 8;
                if (a1[31] < 0)
                {
                  v22 = *v22;
                }

                v23 = qword_1025D47F8;
                (*(*a1 + 160))(buf, a1, a3);
                if (v31 >= 0)
                {
                  v24 = buf;
                }

                else
                {
                  v24 = *buf;
                }

                v32 = 136446466;
                v33 = v22;
                v34 = 2082;
                v35 = v24;
                LODWORD(v27) = 22;
                _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v23, 17, "%{public}s; notification %{public}s not found", &v32, v27);
                v26 = v25;
                if (v31 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLTelephonyService_Type::Notification, CLTelephonyService_Type::NotificationData, char, char>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLTelephonyService_Type::Notification, NotificationData_T = CLTelephonyService_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v26);
                if (v26 != __p)
                {
                  free(v26);
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

void sub_10058A21C(uint64_t a1, unsigned int *a2)
{
  v3 = sub_10006E830(a2, a2);
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  if (v6)
  {
    v7 = v5;
    do
    {
      if (*(v4 + 32) >= v3)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v3));
    }

    while (v4);
    if (v7 != v5 && v3 >= *(v7 + 32))
    {
      v8 = *(v7 + 72);
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      if (v8)
      {

        sub_100008080(v8);
      }
    }
  }
}

uint64_t sub_10058A2A4(uint64_t a1, unsigned int *a2, const void **a3)
{
  v5 = sub_10006E830(a2, a2);
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  if (!v8)
  {
    return 0;
  }

  v9 = v7;
  do
  {
    if (*(v6 + 32) >= v5)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < v5));
  }

  while (v6);
  if (v9 == v7)
  {
    return 0;
  }

  if (v5 < *(v9 + 32))
  {
    return 0;
  }

  v10 = *(v9 + 64);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    CFRetain(*v10);
  }

  v12 = *a3;
  *a3 = v11;
  v14 = v12;
  sub_10006E914(&v14);
  return 1;
}

void sub_10058A3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10058A3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  (*(*a1 + 152))(a1, a2, &v5, a3, a4, 0);
  return sub_10006E914(&v5);
}

void sub_10058A45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10006E914(va);
  _Unwind_Resume(a1);
}

void sub_10058A470(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018C9738();
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
      sub_1018CC8B8(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018C9738();
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
      sub_1018CC794(a1);
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
              sub_1018C974C();
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
                sub_1018C974C();
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
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLTelephonyService_Type::Notification, CLTelephonyService_Type::NotificationData, char, char>::listClients() [Notification_T = CLTelephonyService_Type::Notification, NotificationData_T = CLTelephonyService_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v20);
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

void sub_10058A834(uint64_t a1)
{
  sub_10058B0C4(a1);

  operator delete();
}

uint64_t *sub_10058A94C(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

uint64_t sub_10058AA50(uint64_t a1, int a2)
{
  *a1 = a2;
  sub_10000EC00((a1 + 8), [@"kBundleIDUnavailable" UTF8String]);
  *(a1 + 32) = 0;
  sub_10000EC00((a1 + 40), [@"kBundleVersionUnavailable" UTF8String]);
  *(a1 + 64) = 0;
  sub_10004FD18();
  *(a1 + 88) = 0;
  sub_10004FD18();
  *(a1 + 112) = 0;
  sub_10004FD18();
  *(a1 + 136) = 0;
  return a1;
}

void sub_10058AAD4(_Unwind_Exception *a1)
{
  sub_100005DA4();
  sub_100005DA4();
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10058AB28(uint64_t a1)
{
  sub_100005DA4();
  sub_100005DA4();
  sub_100005DA4();
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

uint64_t sub_10058ABF4(uint64_t *a1, uint64_t a2)
{
  v2 = 0x66FD0EB66FD0EB67 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x5E293205E29320)
  {
    sub_10028C64C();
  }

  if (0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x66FD0EB66FD0EB67 * ((a1[2] - *a1) >> 3)) >= 0x2F149902F14990)
  {
    v6 = 0x5E293205E29320;
  }

  else
  {
    v6 = v3;
  }

  v48 = a1;
  if (v6)
  {
    sub_100071EDC(a1, v6);
  }

  v7 = 696 * v2;
  v45 = 0;
  v46 = v7;
  v47 = (696 * v2);
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  *(v7 + 60) = *(a2 + 60);
  *(v7 + 32) = v9;
  *(v7 + 48) = v10;
  *(v7 + 16) = v8;
  *v7 = *a2;
  *(v7 + 80) = *(a2 + 80);
  v11 = 696 * v2;
  *(v11 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  sub_10038EB38((v11 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
  *(v7 + 112) = *(a2 + 112);
  v12 = *(a2 + 128);
  v13 = *(a2 + 144);
  v14 = *(a2 + 176);
  *(v7 + 160) = *(a2 + 160);
  *(v7 + 176) = v14;
  *(v7 + 128) = v12;
  *(v7 + 144) = v13;
  v15 = *(a2 + 192);
  v16 = *(a2 + 208);
  v17 = *(a2 + 240);
  *(v7 + 224) = *(a2 + 224);
  *(v7 + 240) = v17;
  *(v7 + 192) = v15;
  *(v7 + 208) = v16;
  v18 = *(a2 + 256);
  v19 = *(a2 + 272);
  v20 = *(a2 + 288);
  *(v7 + 300) = *(a2 + 300);
  *(v7 + 272) = v19;
  *(v7 + 288) = v20;
  *(v7 + 256) = v18;
  if (*(a2 + 343) < 0)
  {
    sub_100007244((v7 + 320), *(a2 + 320), *(a2 + 328));
  }

  else
  {
    v21 = *(a2 + 320);
    *(v7 + 336) = *(a2 + 336);
    *(v7 + 320) = v21;
  }

  v22 = *(a2 + 344);
  v23 = *(a2 + 376);
  *(v7 + 360) = *(a2 + 360);
  *(v7 + 376) = v23;
  *(v7 + 344) = v22;
  v24 = *(a2 + 392);
  v25 = *(a2 + 408);
  v26 = *(a2 + 440);
  *(v7 + 424) = *(a2 + 424);
  *(v7 + 440) = v26;
  *(v7 + 392) = v24;
  *(v7 + 408) = v25;
  v27 = *(a2 + 456);
  v28 = *(a2 + 472);
  v29 = *(a2 + 488);
  *(v7 + 504) = *(a2 + 504);
  *(v7 + 472) = v28;
  *(v7 + 488) = v29;
  *(v7 + 456) = v27;
  v30 = *(a2 + 512);
  v31 = *(a2 + 528);
  v32 = *(a2 + 560);
  *(v7 + 544) = *(a2 + 544);
  *(v7 + 560) = v32;
  *(v7 + 512) = v30;
  *(v7 + 528) = v31;
  v33 = *(a2 + 576);
  v34 = *(a2 + 592);
  v35 = *(a2 + 624);
  *(v7 + 608) = *(a2 + 608);
  *(v7 + 624) = v35;
  *(v7 + 576) = v33;
  *(v7 + 592) = v34;
  v36 = *(a2 + 640);
  v37 = *(a2 + 656);
  v38 = *(a2 + 672);
  *(v7 + 688) = *(a2 + 688);
  *(v7 + 656) = v37;
  *(v7 + 672) = v38;
  *(v7 + 640) = v36;
  *&v47 = v47 + 696;
  v39 = a1[1];
  v40 = v46 + *a1 - v39;
  sub_10006F96C(a1, *a1, v39, v40);
  v41 = *a1;
  *a1 = v40;
  v42 = a1[2];
  v44 = v47;
  *(a1 + 1) = v47;
  *&v47 = v41;
  *(&v47 + 1) = v42;
  v45 = v41;
  v46 = v41;
  sub_10006FAE8(&v45);
  return v44;
}

void sub_10058AE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v10 = *v7;
  if (*v7)
  {
    *(v8 + 96) = v10;
    operator delete(v10);
  }

  sub_10006FAE8(va);
  _Unwind_Resume(a1);
}

void sub_10058B040(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102460728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10058B0C4(uint64_t a1)
{
  *a1 = off_102460798;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

const void **sub_10058B210(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    sub_10006E914(result);

    operator delete();
  }

  return result;
}

void sub_10058B254(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v4 - 60) = v2;
  *(v4 - 56) = 1026;
  *(a1 + 10) = v3;
}

BOOL sub_10058B2C0(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_1000238CC(a1, va);
}

double sub_10058B2D8(uint64_t a1)
{
  *(a1 + 56) = 0;
  *a1 = 0u;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0xBFF0000000000000;
  result = NAN;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  return result;
}

void sub_10058B308(void *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v3 = *(a2 + 16);
  if (v3 > 15)
  {
    if (v3 == 16)
    {
      *(a1 + 56) = 0;
    }

    else if (v3 == 17)
    {
      *(a1 + 56) = 1;
    }
  }

  else if (v3 == 13)
  {
    *a1 = 0u;
    a1[3] = 0;
    a1[4] = 0;
    a1[2] = 0xBFF0000000000000;
    a1[5] = -1;
    *(a1 + 24) = 0;
    *(a1 + 13) = 0;
    *(a1 + 56) = 1;
    *a1 = *a2;
    v5 = *(a2 + 176);
    v15[10] = *(a2 + 160);
    v15[11] = v5;
    v15[12] = *(a2 + 192);
    v16 = *(a2 + 208);
    v6 = *(a2 + 112);
    v15[6] = *(a2 + 96);
    v15[7] = v6;
    v7 = *(a2 + 144);
    v15[8] = *(a2 + 128);
    v15[9] = v7;
    v8 = *(a2 + 48);
    v15[2] = *(a2 + 32);
    v15[3] = v8;
    v9 = *(a2 + 80);
    v15[4] = *(a2 + 64);
    v15[5] = v9;
    v10 = *(a2 + 16);
    v15[0] = *a2;
    v15[1] = v10;
    v11 = sub_100BDFE34(v15);
    *(a1 + 10) = v11;
    sub_100BDFDAC(v11, v15);
    *(a1 + 49) = v15[0];
  }

  else if (v3 == 15)
  {
    if ((a1[5] & 0x80000000) == 0)
    {
      a1[1] = *(a2 + 8);
      sub_10058B520(a1);
    }

    *(a1 + 56) = 0;
    *a1 = 0u;
    a1[3] = 0;
    a1[4] = 0;
    a1[2] = 0xBFF0000000000000;
    a1[5] = -1;
    *(a1 + 24) = 0;
    *(a1 + 13) = 0;
  }

  if (qword_1025D4580 != -1)
  {
    sub_1018CCCFC();
  }

  v12 = qword_1025D4588;
  if (os_log_type_enabled(qword_1025D4588, OS_LOG_TYPE_DEBUG))
  {
    v13 = *v4;
    v14 = *(a1 + 56);
    LODWORD(v15[0]) = 67109376;
    DWORD1(v15[0]) = v13;
    WORD4(v15[0]) = 1024;
    *(v15 + 10) = v14;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "[CLNoMovement] analytics: eventType,%d,isCollectingSessionMetrics,%d", v15, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CCD24(v4, a1);
  }
}

void sub_10058B520(uint64_t a1)
{
  if (objc_opt_class() && ([+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")] & 1) != 0)
  {
    v18[0] = @"sessionDuration";
    v2 = llround((*(a1 + 8) - *a1) / 60.0);
    if (v2 >= 180)
    {
      v3 = 180;
    }

    else
    {
      v3 = v2;
    }

    v19[0] = [NSNumber numberWithInt:v3];
    v18[1] = @"timeToTriggerNoMovement";
    v4 = llround(*(a1 + 16) / 60.0);
    if (v4 >= 180)
    {
      v5 = 180;
    }

    else
    {
      v5 = v4;
    }

    v19[1] = [NSNumber numberWithInt:v5];
    v18[2] = @"averagePercentEpochsInNonTriggerWindows";
    v6 = ((*(a1 + 32) / *(a1 + 24)) * 100.0);
    if (v6 >= 100)
    {
      v7 = 100;
    }

    else
    {
      v7 = v6;
    }

    v19[2] = [NSNumber numberWithInt:v7];
    v18[3] = @"averagePercentEpochsInTriggerWindows";
    v8 = ((*(a1 + 36) / *(a1 + 24)) * 100.0);
    if (v8 >= 100)
    {
      v9 = 100;
    }

    else
    {
      v9 = v8;
    }

    v19[3] = [NSNumber numberWithInt:v9];
    v18[4] = @"percentValidHeadsetEpochs";
    v10 = (100.0 - (*(a1 + 28) / *(a1 + 24)) * 100.0);
    if (v10 >= 100)
    {
      v11 = 100;
    }

    else
    {
      v11 = v10;
    }

    v19[4] = [NSNumber numberWithInt:v11];
    v18[5] = @"hkWorkoutActivityType";
    v19[5] = [NSNumber numberWithInt:*(a1 + 40)];
    v18[6] = @"detectionType";
    v19[6] = [NSNumber numberWithInt:*(a1 + 44)];
    v18[7] = @"enteredNoMovementState";
    v19[7] = [NSNumber numberWithBool:*(a1 + 48)];
    v18[8] = @"shouldServeDetectionToClients";
    v19[8] = [NSNumber numberWithBool:*(a1 + 49)];
    v18[9] = @"numClients";
    v19[9] = [NSNumber numberWithInt:*(a1 + 52)];
    v12 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:10];
    if (qword_1025D4580 != -1)
    {
      sub_1018CCCFC();
    }

    v13 = qword_1025D4588;
    if (os_log_type_enabled(qword_1025D4588, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "[CLNoMovement] analytics: session metrics %{public}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CCE4C(v12);
    }

    AnalyticsSendEventLazy();
    if (qword_1025D4580 != -1)
    {
      sub_1018CCCFC();
    }

    v14 = qword_1025D4588;
    if (os_log_type_enabled(qword_1025D4588, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "[CLNoMovement] analytics: uploaded phone session metrics", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CCF5C();
    }
  }

  else
  {
    if (qword_1025D4580 != -1)
    {
      sub_1018CD04C();
    }

    v15 = qword_1025D4588;
    if (os_log_type_enabled(qword_1025D4588, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "[CLNoMovement] analytics: no IHA authorization", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD060();
    }
  }
}

_DWORD *sub_10058B928(_DWORD *result, int a2, void *a3, unsigned int a4)
{
  if (*(result + 56) == 1)
  {
    v15 = v6;
    v16 = v5;
    v17 = v4;
    v12 = result;
    ++result[6];
    if (a2 == 3 && (a4 & 0x80000000) != 0)
    {
      ++result[7];
    }

    result = [a3 state];
    if (result == 2 && (v12[12] & 1) == 0)
    {
      v12[11] = [a3 detectionType];
      *(v12 + 48) = 1;
      result = [a3 startTime];
      *(v12 + 2) = v13 - *v12;
    }

    if ((a4 & 0x80000000) == 0)
    {
      v14 = a4;
      if (*(v12 + 48) == 1)
      {
        *(v12 + 9) = *(v12 + 9) + v14;
      }

      else
      {
        *(v12 + 8) = *(v12 + 8) + v14;
      }
    }
  }

  return result;
}

uint64_t sub_10058B9FC(uint64_t result, int a2)
{
  if (*(result + 56) == 1)
  {
    v2 = *(result + 52);
    if (v2 <= a2)
    {
      v2 = a2;
    }

    *(result + 52) = v2;
  }

  return result;
}

void sub_10058BBAC(id a1)
{
  v2 = sub_10001A3E8(a1, v1);
  if (sub_10001CF04(v2, v3))
  {
    byte_102656F40 = 1;
  }
}

void sub_10058BE38()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

float sub_10058BEB0(float **a1, int a2)
{
  v2 = a1[1];
  if (*a1 == v2)
  {
    v4 = 0.0;
    v3 = 0.0;
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
    v5 = *a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      v5 += 2;
      v3 = v3 + (v6 * v7);
      v4 = v4 + (v7 * v7);
    }

    while (v5 != v2);
  }

  v8 = 0;
  result = v3 / fmaxf(v4, 0.0001);
  if (a2 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a2;
  }

  do
  {
    if (*a1 == v2)
    {
      v12 = 0.0;
      v11 = 0.0;
    }

    else
    {
      v11 = 0.0;
      v12 = 0.0;
      v13 = *a1;
      do
      {
        v15 = *v13;
        v14 = v13[1];
        v13 += 2;
        v16 = 1.0 / fmaxf(fabsf(v14 - (v15 * result)), 0.0001);
        v11 = v11 + ((v14 * v16) * v15);
        v12 = v12 + ((v15 * v16) * v15);
      }

      while (v13 != v2);
    }

    ++v8;
    result = v11 / fmaxf(v12, 0.0001);
  }

  while (v8 != v10);
  return result;
}

uint64_t sub_10058BF6C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return sub_10058CC10(v2, a2);
}

double sub_10058BF7C(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  result = 0.0;
  *(v1 + 896) = 0;
  *(v1 + 904) = 0;
  return result;
}

unsigned __int16 *sub_10058BF9C(unsigned __int16 *result)
{
  if (result)
  {
    v1 = (result - 4);
  }

  else
  {
    v1 = 0;
  }

  *(v1 + 112) = 0;
  v1[226] = 0;
  if (*(v1 + 23))
  {
    result = sub_100457AE8(v1 + 22, 0);
    v2 = *result;
  }

  else
  {
    v2 = 0;
  }

  v1[229] = v2;
  v1[230] = 0;
  return result;
}

uint64_t sub_10058BFF8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return sub_10058CCF0(v2, a2);
}

double sub_10058C008(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  result = 0.0;
  *(v1 + 896) = 0;
  *(v1 + 904) = 0;
  return result;
}

uint64_t sub_10058C024(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return sub_10058CF70(v2, a2);
}

double sub_10058C034(uint64_t a1)
{
  *(a1 + 8) = &unk_102460890;
  *(a1 + 16) = 13;
  *(a1 + 24) = 512;
  *a1 = off_1024609D8;
  *(a1 + 28) = 1;
  *(a1 + 44) = 0xC00000000;
  *(a1 + 40) = 1031798784;
  *(a1 + 100) = 1;
  *(a1 + 120) = 6;
  *(a1 + 112) = 0;
  *(a1 + 148) = 1;
  *(a1 + 168) = 6;
  *(a1 + 160) = 0;
  *(a1 + 196) = 1;
  *(a1 + 216) = 47;
  *(a1 + 208) = 0;
  *(a1 + 408) = 1;
  *(a1 + 424) = 0x400000000;
  *(a1 + 420) = 0;
  *(a1 + 448) = off_10247E150;
  *(a1 + 456) = 0x4039000000000000;
  *(a1 + 464) = xmmword_101C7F490;
  *(a1 + 480) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 512) = 1;
  *(a1 + 528) = 0x4B00000000;
  *(a1 + 524) = 0;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0xC08F380000000000;
  *(a1 + 864) = 0xC08F380000000000;
  *(a1 + 872) = 0;
  *(a1 + 880) = 0;
  *(a1 + 888) = 0;
  result = 0.0;
  *(a1 + 896) = xmmword_101C7F4A0;
  *(a1 + 912) = 0;
  *(a1 + 916) = 0;
  return result;
}

uint64_t sub_10058C164(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = *(a1 + 908);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v6 < 0 == v5)
  {
    result = 0;
    *(a1 + 908) = v6;
    return result;
  }

  v8 = *(a1 + 214);
  if (*(a1 + 216) != v8)
  {
    return 0;
  }

  if (*(a1 + 214))
  {
    v11 = 0;
    LODWORD(v12) = 0;
    do
    {
      v12 = *sub_1000C4370((a1 + 212), v11++) + v12;
    }

    while (v8 != v11);
    v13 = *(a1 + 216);
    v14 = 100 * v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v15 = v14 / v13;
  if (v15 <= 19)
  {
    result = 0;
    *(a1 + 912) = 0;
    return result;
  }

  v16 = *(a1 + 912);
  *(a1 + 912) = v16 + 1;
  if (v15 < 0x4C)
  {
    return 0;
  }

  result = 0;
  if (v16 >= 46 && !*(a2 + 20))
  {
    result = 0;
    if ((*(a2 + 80) & 1) == 0 && *(a2 + 16) >= 5)
    {
      *a3 = v16 + 1 + (v13 * 0.2);
      return 1;
    }
  }

  return result;
}

uint64_t sub_10058C28C(uint64_t a1)
{
  v1 = *(a1 + 18);
  if (!*(a1 + 18))
  {
    return 0;
  }

  v3 = 0;
  LODWORD(v4) = 0;
  do
  {
    v4 = (*sub_1000C4370((a1 + 16), v3++) + v4);
  }

  while (v1 != v3);
  return v4;
}

uint64_t sub_10058C2F0(uint64_t a1, double *a2)
{
  *buf = 7;
  *&buf[8] = 8;
  v56 = 0;
  v57 = 0;
  __p = 0;
  sub_1004579D4(&__p, buf, &buf[12], 3uLL);
  sub_10090303C(a1 + 448, a2);
  v110[0] = xmmword_101C78400;
  v113 = 0;
  memset(&v110[1], 0, 96);
  v111 = 0u;
  memset(v112, 0, sizeof(v112));
  v114 = xmmword_101C78400;
  v115 = 0;
  v116 = 0;
  memset(v117, 0, sizeof(v117));
  v118 = 0;
  v120 = 0;
  v121 = 0;
  v119 = 0u;
  v122 = xmmword_101C78400;
  v123 = 0;
  v124 = 0;
  v125 = 0xFFEFFFFFFFFFFFFFLL;
  v136 = 0;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  memset(v135, 0, sizeof(v135));
  v137 = 0u;
  v138 = 0xFFEFFFFFFFFFFFFFLL;
  v139 = 0;
  v140 = 0;
  v145 = 0;
  v146 = 0;
  v151 = 0;
  v143 = 0u;
  memset(v144, 0, sizeof(v144));
  v141 = 0u;
  v142 = 0u;
  v149 = 0;
  v147 = 0u;
  v148 = 0u;
  memset(v150, 0, sizeof(v150));
  v152 = 0xFFEFFFFFFFFFFFFFLL;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0xFFEFFFFFFFFFFFFFLL;
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0xFFEFFFFFFFFFFFFFLL;
  v179 = 0;
  v180 = 0;
  v181 = 0;
  v182 = 0;
  v183 = 0xFFEFFFFFFFFFFFFFLL;
  v184 = 0u;
  v185 = 0x80000000800000;
  v186 = 0u;
  v187 = xmmword_101C78410;
  v188 = 0x80000000800000;
  v189 = 0u;
  v190 = 0u;
  v191 = 0;
  v192 = 0xFFEFFFFFFFFFFFFFLL;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v199 = 0;
  v200 = 0xFFEFFFFFFFFFFFFFLL;
  v201 = 0;
  v202 = 0;
  v203 = 0xFFEFFFFFFFFFFFFFLL;
  v204 = 7;
  v205 = 0xFFEFFFFFFFFFFFFFLL;
  v206 = 0;
  v208 = 0;
  v207 = 0u;
  if (sub_1000C2B7C(a2, &__p, v110))
  {
    if (*&v186 >= *&v184)
    {
      v4 = *&v184;
    }

    else
    {
      v4 = *&v186;
    }

    v5 = v163 & 0xFD;
    v6 = DWORD2(v166) < 2 && v5 != 1;
    *buf = v6;
    sub_1000C42AC((a1 + 116), buf);
    *(a1 + 100) = 1;
    *buf = DWORD2(v166) < 2;
    sub_1000C42AC((a1 + 164), buf);
    *(a1 + 148) = 1;
    if (DWORD2(v166))
    {
      v7 = 0;
    }

    else
    {
      v7 = v5 != 1;
    }

    *buf = v7;
    sub_1000C42AC((a1 + 212), buf);
    v8 = v4 * 57.296;
    *(a1 + 196) = 1;
    v9 = *(a1 + 46);
    v10 = *(a1 + 48);
    v11 = *(a1 + 44);
    if (v11 + v9 >= v10)
    {
      v12 = *(a1 + 48);
    }

    else
    {
      v12 = 0;
    }

    *(a1 + 4 * (v11 + v9 - v12) + 52) = *(&v184 + 1) * 57.296;
    if (v10 <= v9)
    {
      if (v11 + 1 < v10)
      {
        LOWORD(v10) = 0;
      }

      *(a1 + 44) = v11 + 1 - v10;
    }

    else
    {
      *(a1 + 46) = v9 + 1;
    }

    *(a1 + 28) = 1;
    *buf = v8 > 10.0;
    sub_1000C42AC((a1 + 424), buf);
    *(a1 + 408) = 1;
    v13 = *(a1 + 118);
    if (*(a1 + 120) == v13 && *(a1 + 48) == *(a1 + 46) && *(a1 + 428) == *(a1 + 426))
    {
      LODWORD(v50) = 0;
      v49 = 0.0;
      v48 = 0u;
      v51 = xmmword_101C7F4B0;
      *v52 = 0xC08F380000000000;
      v52[8] = 0;
      *&v52[16] = 0;
      v52[24] = 0;
      LOBYTE(v53) = 0;
      HIDWORD(v53) = 0;
      v54 = 0;
      if (*(a1 + 28) == 1)
      {
        sub_100457CE4((a1 + 28));
        v13 = *(a1 + 118);
      }

      v14 = *(a1 + 36);
      LOBYTE(v53) = v5 == 1;
      v15 = sqrt(v14);
      v16 = v14 <= 0.0;
      v17 = 0.0;
      if (!v16)
      {
        v17 = v15;
      }

      *&v48 = v8;
      *(&v48 + 1) = v17;
      HIDWORD(v49) = DWORD2(v166);
      LODWORD(v50) = DWORD1(v111);
      if (v13)
      {
        v18 = 0;
        v19 = 0;
        v20 = v13;
        do
        {
          v19 += *sub_1000C4370((a1 + 116), v18++);
        }

        while (v20 != v18);
      }

      else
      {
        v19 = 0;
      }

      LODWORD(v49) = v19;
      v21 = *(a1 + 864);
      v51 = *(a1 + 848);
      *v52 = v21;
      *&v52[9] = *(a1 + 873);
      v22 = *(a1 + 166);
      if (*(a1 + 166))
      {
        v23 = 0;
        v24 = 0;
        do
        {
          v24 += *sub_1000C4370((a1 + 164), v23++);
        }

        while (v22 != v23);
      }

      else
      {
        v24 = 0;
      }

      HIDWORD(v53) = v24;
      v25 = *(a1 + 426);
      if (*(a1 + 426))
      {
        v26 = 0;
        v27 = 0;
        do
        {
          v27 += *sub_1000C4370((a1 + 424), v26++);
        }

        while (v25 != v26);
      }

      else
      {
        v27 = 0;
      }

      v54 = v27;
      sub_1000CE87C(a1 + 8, 0, &v48);
      v47 = 0;
      if (sub_10058C164(a1, &v48, &v47))
      {
        *(a1 + 904) = v47;
        sub_1000CE87C(a1 + 8, 4, buf);
      }

      v46 = *(a1 + 24);
      if (qword_1025D43F0 != -1)
      {
        sub_1018CD370();
      }

      v28 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_INFO))
      {
        v29 = *(a1 + 896);
        v30 = *(a1 + 900);
        v31 = *(a1 + 214);
        if (*(a1 + 214))
        {
          v32 = 0;
          v33 = 0;
          do
          {
            v33 += *sub_1000C4370((a1 + 212), v32++);
          }

          while (v31 != v32);
        }

        else
        {
          v33 = 0;
        }

        v34 = *(a1 + 904);
        v35 = *(a1 + 920);
        *buf = 67112448;
        *&buf[4] = v46;
        *&buf[8] = 1024;
        *&buf[10] = v29;
        v86 = 1024;
        v87 = v30;
        v88 = 1024;
        v89 = v33;
        v90 = 1024;
        v91 = v34;
        v92 = 2048;
        v93 = *(&v48 + 1);
        v94 = 2048;
        v95 = v48;
        v96 = 1024;
        v97 = v5 == 1;
        v98 = 1024;
        v99 = HIDWORD(v49);
        v100 = 2048;
        v101 = *&v50;
        v102 = 1024;
        v103 = LODWORD(v49);
        v104 = 2048;
        v105 = *v52;
        v106 = 1024;
        v107 = v52[8];
        v108 = 2048;
        v109 = v35;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_INFO, "IndoorPedStop,state,%d,headingCnt,%d,stepCount,%d,zeroStepCount,%d,likelyExitCount,%d,longStd,%f,shortStd,%f,rails,%d,currentSteps,%d,vm,%f,recentZeroSteps,%d,exertionDelta,%f,exertionIsLow,%d,headingDelta,%f", buf, 0x6Au);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD398(buf);
        v38 = qword_1025D43F8;
        v39 = *(a1 + 896);
        v40 = *(a1 + 900);
        v41 = sub_10058C28C(a1 + 196);
        v42 = *(a1 + 904);
        v43 = *(a1 + 920);
        v58[0] = 67112448;
        v58[1] = v46;
        v59 = 1024;
        v60 = v39;
        v61 = 1024;
        v62 = v40;
        v63 = 1024;
        v64 = v41;
        v65 = 1024;
        v66 = v42;
        v67 = 2048;
        v68 = *(&v48 + 1);
        v69 = 2048;
        v70 = v48;
        v71 = 1024;
        v72 = v5 == 1;
        v73 = 1024;
        v74 = HIDWORD(v49);
        v75 = 2048;
        v76 = *&v50;
        v77 = 1024;
        v78 = LODWORD(v49);
        v79 = 2048;
        v80 = *v52;
        v81 = 1024;
        v82 = v52[8];
        v83 = 2048;
        v84 = v43;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v38, 1, "IndoorPedStop,state,%d,headingCnt,%d,stepCount,%d,zeroStepCount,%d,likelyExitCount,%d,longStd,%f,shortStd,%f,rails,%d,currentSteps,%d,vm,%f,recentZeroSteps,%d,exertionDelta,%f,exertionIsLow,%d,headingDelta,%f", v58, 106, v46, v48, DWORD2(v48), v49, v50, v51, DWORD2(v51), *v52, *&v52[8], *&v52[16], *&v52[24], v53);
        v45 = v44;
        sub_100152C7C("Generic", 1, 0, 2, "virtual CLWorkoutPredictor_Type::WorkoutStopDetectionEvent CLTreadmillWorkoutStopModel::update(const CLWorkoutPredictorInputs &)", "%s\n", v44);
        if (v45 != buf)
        {
          free(v45);
        }
      }

      if (*(a1 + 24) == 4)
      {
        v36 = 1;
        goto LABEL_58;
      }
    }
  }

  else
  {
    BYTE1(v89) = 13;
    strcpy(buf, "TreadmillStop");
    sub_100F9942C(a2, buf, &__p);
    if (SBYTE1(v89) < 0)
    {
      operator delete(*buf);
    }
  }

  v36 = 0;
LABEL_58:
  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }

  return v36;
}

void sub_10058CB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10058CC10(uint64_t result, uint64_t a2)
{
  if (*(a2 + 8) <= 30.0)
  {
    v4 = *(result + 896);
    *(result + 896) = v4 + 1;
    v5 = *(result + 900) + *(a2 + 20);
    *(result + 900) = v5;
    if (v4 >= 70 && v5 >= 181)
    {
      *&v6[1] = v2;
      v7 = v3;
      return sub_1000CE87C(result + 8, 1, v6);
    }
  }

  else
  {
    *(result + 896) = 0;
  }

  return result;
}

BOOL sub_10058CC88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 < 5 || (v3 = *(a2 + 40), v3 == -999.0))
  {
    v5 = 0;
  }

  else
  {
    v4 = *(a2 + 48);
    v5 = v4 == -999.0;
    v6 = v4 - v3;
    if (v6 < -10.0)
    {
      v5 = 1;
    }

    if (v4 == -999.0)
    {
      v5 = 0;
    }

    if (v6 == -999.0)
    {
      v5 = 0;
    }
  }

  return *(a2 + 88) > 0 && v2 > 0 || v5;
}

uint64_t sub_10058CCF0(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 904);
  v4 = *(a1 + 916);
  if (*(a1 + 46))
  {
    v5 = *sub_100457AE8((a1 + 44), *(a1 + 46) - 1);
  }

  else
  {
    v5 = 0.0;
  }

  v6 = vabds_f32(v4, v5);
  if (*(a1 + 920) >= v6)
  {
    v6 = *(a1 + 920);
  }

  *(a1 + 920) = v6;
  v7 = *(a2 + 8) > 30.0 && *a2 > 5.0;
  if (*(a2 + 32) <= -1.0)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a2 + 56);
  }

  if (*(a2 + 20))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a2 + 80) ^ 1;
  }

  if ((v7 | v8) & 1) != 0 || *(a2 + 24) < 1.5 || (v9)
  {
    ++*(a1 + 896);
  }

  if (v6 <= 0.0)
  {
    v10 = 40.0;
  }

  else
  {
    v10 = fmaxf(180.0 / v6, 1.0) * 40.0;
  }

  result = sub_10058CE78(a1, a2);
  if (result)
  {
    v12 = a1 + 8;
    v13 = &v16;
    v14 = 2;
  }

  else
  {
    if ((fminf(v10, 70.0) / 2.56) >= *(a1 + 896))
    {
      return result;
    }

    v12 = a1 + 8;
    v13 = &v15;
    v14 = 3;
  }

  return sub_1000CE87C(v12, v14, v13);
}

uint64_t sub_10058CE78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = -999.0;
  if (v2 == -999.0 || (v4 = *(a2 + 48), v3 = -999.0, v4 == -999.0))
  {
    v5 = 0;
  }

  else
  {
    v3 = v4 - v2;
    v5 = v4 - v2 != -999.0;
  }

  if (*a2 >= 10.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a2 + 20) + *(a1 + 900);
  }

  *(a1 + 900) = v6;
  v8 = v3 > -40.0 && *(a1 + 904) > 70 && v5;
  v9 = v8 && *(a1 + 920) < 180.0 && *(a1 + 24) != 3;
  v10 = v3 < 0.0;
  v11 = v3 * v3 * 0.05 + 60.0;
  if (v11 <= 60.0)
  {
    v10 = 0;
  }

  if (!v5 || !v10)
  {
    v11 = 60.0;
  }

  return (v11 < v6) | v9;
}

uint64_t sub_10058CF70(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 904);
  result = sub_10058CE78(a1, a2);
  if (result)
  {
    v5 = a1 + 8;
    v6 = &v10;
    v7 = 2;
    return sub_1000CE87C(v5, v7, v6);
  }

  v8 = *(a2 + 20) >= 1 && *a2 > 10.0;
  if (*(a1 + 904) >= 59 && (*(a2 + 84) > 0 || v8))
  {
    v5 = a1 + 8;
    v6 = &v9;
    v7 = 5;
    return sub_1000CE87C(v5, v7, v6);
  }

  return result;
}

void *sub_10058D014(void *a1)
{
  *a1 = off_1024609D8;
  a1[56] = off_10247E150;
  v2 = a1[61];
  if (v2)
  {
    a1[62] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10058D084(void *a1)
{
  *a1 = off_1024609D8;
  a1[56] = off_10247E150;
  v2 = a1[61];
  if (v2)
  {
    a1[62] = v2;
    operator delete(v2);
  }

  operator delete();
}

BOOL sub_10058D5A0(uint64_t a1)
{
  v2 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v3 = *(a1 + 312);
  (*(*(a1 + 832) + 24))(v2);
  return v3 != 0;
}

void sub_10058D708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 40) = v13;
  sub_1000B96B4((v14 - 40));
  a10 = &a13;
  sub_1000B96B4(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10058D738(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1 + 832;
  v15[3] = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v16 = 256;
  if (*(a1 + 246) == 1)
  {
    sub_100597514(a1, 0);
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = 0x2E8BA2E8BA2E8BA3 * ((v8 - *a2) >> 3);
  memset(v15, 0, 24);
  sub_1005A43FC(v15, v7, v8, v9);
  v10 = *a3;
  v11 = a3[1];
  v12 = 0x2E8BA2E8BA2E8BA3 * ((v11 - *a3) >> 3);
  memset(v14, 0, sizeof(v14));
  sub_1005A43FC(v14, v10, v11, v12);
  sub_1005980EC(a1, v15, v14);
  *(a1 + 248) = 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3) + 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3);
  if (*(a1 + 244) == 1)
  {
    sub_100597514(a1, 1);
  }

  v17 = v14;
  sub_1000B96B4(&v17);
  v14[0] = v15;
  sub_1000B96B4(v14);
  return (*(*v6 + 24))(v6);
}

void sub_10058D8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_10058D9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000B96B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10058D9D0(uint64_t a1, uint64_t *a2)
{
  v4 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v5 = *(a1 + 544);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 544) = 0;
  }

  if (sub_1005A1FBC(a1, a2, (a1 + 544), 0))
  {
    sub_10059EA50(a1);
  }

  return (*(*v4 + 24))(v4);
}

void sub_10058DA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10058DAB0(uint64_t a1, uint64_t *a2)
{
  v4 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v5 = *(a1 + 536);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 536) = 0;
  }

  if (sub_1005A1FBC(a1, a2, (a1 + 536), 1))
  {
    sub_10059EA50(a1);
  }

  return (*(*v4 + 24))(v4);
}

void sub_10058DB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_10058DBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000B96B4(va);
  _Unwind_Resume(a1);
}

void sub_10058DC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000B96B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10058DD28(uint64_t a1, _OWORD *a2, int a3)
{
  v6 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v7 = *(a1 + 764);
  v8 = *(a1 + 780);
  v9 = *(a1 + 812);
  a2[2] = *(a1 + 796);
  a2[3] = v9;
  *a2 = v7;
  a2[1] = v8;
  if (a3)
  {
    *(a1 + 796) = 0u;
    *(a1 + 812) = 0u;
    *(a1 + 764) = 0u;
    *(a1 + 780) = 0u;
  }

  return (*(*v6 + 24))(v6);
}

void sub_10058DEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 - 40) = v14;
  sub_1000B96B4((v15 - 40));
  *(v15 - 40) = &a14;
  sub_1000B96B4((v15 - 40));
  _Unwind_Resume(a1);
}

void sub_10058DFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 - 40) = v14;
  sub_1000B96B4((v15 - 40));
  *(v15 - 40) = &a14;
  sub_1000B96B4((v15 - 40));
  _Unwind_Resume(a1);
}

void sub_10058E08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a23 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10058E128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10058E150@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 104;
  v16 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104);
  v17 = 256;
  v9 = qword_102637AD0;
  if (byte_102637AD8[23] < 0)
  {
    sub_100007244(&__p, *byte_102637AD8, *&byte_102637AD8[8]);
  }

  else
  {
    __p = *byte_102637AD8;
    v11 = *&byte_102637AD8[16];
  }

  v12 = xmmword_102637AF0;
  v13 = xmmword_102637B00;
  v14 = xmmword_102637B10;
  v15 = qword_102637B20;
  if (sub_1005A0E68(a1, &v9))
  {
    sub_100C5D538(&v9, &v6);
    *a2 = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = v8;
    *(a2 + 40) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 40) = 0;
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  return (*(*v4 + 24))(v4);
}

uint64_t sub_10058E2FC(uint64_t a1, int a2)
{
  v4 = a1 + 832;
  v7[3] = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v8 = 256;
  memset(v7, 0, 24);
  memset(v6, 0, sizeof(v6));
  sub_1005980EC(a1, v7, v6);
  if (a2)
  {
    *(a1 + 248) = 0;
  }

  v9 = v6;
  sub_1000B96B4(&v9);
  v6[0] = v7;
  sub_1000B96B4(v6);
  return (*(*v4 + 24))(v4);
}

void sub_10058E3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  *(v15 - 56) = v14;
  sub_1000B96B4((v15 - 56));
  sub_1000B96B4(&a9);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_10058E500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13 == 1)
  {
    sub_1018CD5F8(&a10);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10058E618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13 == 1)
  {
    sub_1018CD5F8(&a10);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10058E71C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10058E7FC(void *a1, int a2)
{
  v4 = a1 + 104;
  v15 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104);
  v16 = 256;
  if (a1[37] && a1[93])
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD6A4();
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v19 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "IMD: quiesceWifi, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(buf);
      v17[0] = 67109120;
      v17[1] = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "IMD: quiesceWifi, %d", v17);
      v12 = v11;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::quiesceWifi(BOOL)", "%s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v6 = a1[93];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005A2FE0;
    block[3] = &unk_102460CC8;
    block[4] = a1;
    v14 = a2;
    dispatch_async(v6, block);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD6A4();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#Warning IMD: ignore quiesceWifi configuration, shutdown", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(buf);
      LOWORD(v17[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning IMD: ignore quiesceWifi configuration, shutdown", v17, 2);
      v10 = v9;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::quiesceWifi(BOOL)", "%s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  return (*(*v4 + 24))(v4);
}

void sub_10058EB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10058EBB4(uint64_t a1, const void **a2, int a3, int a4)
{
  valuePtr = 27;
  v6 = a1 + 832;
  v49 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v50 = 256;
  cf = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  v7 = WiFiDeviceClientCopyProperty();
  Count = CFArrayGetCount(v7);
  if (Count >= 1)
  {
    v9 = 0;
    v45 = a4;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v9);
      if (CFDictionaryGetTypeID() == ValueAtIndex)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v11 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "WifiMgr, WiFiDeviceClientCopyProperty, invalid object in APPLE80211_IOC_SUPPORTED_CHANNELS", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018CD5B4(buf);
          LOWORD(v52) = 0;
          LODWORD(v43) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 17, "WifiMgr, WiFiDeviceClientCopyProperty, invalid object in APPLE80211_IOC_SUPPORTED_CHANNELS", &v52, v43);
          v37 = v36;
          sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::getSupportedChannels(std::vector<int> &, BOOL, BOOL)", "%s\n", v36);
          if (v37 != buf)
          {
            free(v37);
          }
        }

        CFShow(ValueAtIndex);
      }

      else
      {
        sub_100005548(v48, ValueAtIndex);
        v47 = -1;
        if (sub_1000052CC(v48, @"SUP_CHANNEL", &v47))
        {
          if (qword_1025D48A0 != -1)
          {
            sub_1018CD638();
          }

          v12 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218496;
            v59 = v9;
            v60 = 2048;
            v61 = Count;
            v62 = 1024;
            v63 = v47;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "WIFI: index, %ld, %ld, channel, %d", buf, 0x1Cu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018CD660(buf);
            v52 = 134218496;
            v53 = v9;
            v54 = 2048;
            v55 = Count;
            v56 = 1024;
            v57 = v47;
            LODWORD(v43) = 28;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "WIFI: index, %ld, %ld, channel, %d", &v52, v43, cf);
            v39 = v38;
            sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::getSupportedChannels(std::vector<int> &, BOOL, BOOL)", "%s\n", v38);
            if (v39 != buf)
            {
              free(v39);
            }
          }

          v13 = v47;
          if (a3 && v47 <= 14)
          {
            v15 = a2[1];
            v14 = a2[2];
            if (v15 >= v14)
            {
              v18 = *a2;
              v19 = v15 - *a2;
              v20 = v19 >> 2;
              v21 = (v19 >> 2) + 1;
              if (v21 >> 62)
              {
                goto LABEL_66;
              }

              v22 = v14 - v18;
              if (v22 >> 1 > v21)
              {
                v21 = v22 >> 1;
              }

              v23 = v22 >= 0x7FFFFFFFFFFFFFFCLL;
              v24 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v23)
              {
                v24 = v21;
              }

              if (v24)
              {
                sub_1000B85D0(a2, v24);
              }

              *(4 * v20) = v47;
              v16 = (4 * v20 + 4);
              memcpy(0, v18, v19);
              v25 = *a2;
              *a2 = 0;
              a2[1] = v16;
              a2[2] = 0;
              if (v25)
              {
                operator delete(v25);
              }

              a4 = v45;
            }

            else
            {
              *v15 = v47;
              v16 = v15 + 4;
            }

            a2[1] = v16;
            v13 = v47;
          }

          if (a4 && v13 >= 15)
          {
            v27 = a2[1];
            v26 = a2[2];
            if (v27 >= v26)
            {
              v29 = *a2;
              v30 = v27 - *a2;
              v31 = v30 >> 2;
              v32 = (v30 >> 2) + 1;
              if (v32 >> 62)
              {
LABEL_66:
                sub_10028C64C();
              }

              v33 = v26 - v29;
              if (v33 >> 1 > v32)
              {
                v32 = v33 >> 1;
              }

              v23 = v33 >= 0x7FFFFFFFFFFFFFFCLL;
              v34 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v23)
              {
                v34 = v32;
              }

              if (v34)
              {
                sub_1000B85D0(a2, v34);
              }

              *(4 * v31) = v13;
              v28 = (4 * v31 + 4);
              memcpy(0, v29, v30);
              v35 = *a2;
              *a2 = 0;
              a2[1] = v28;
              a2[2] = 0;
              if (v35)
              {
                operator delete(v35);
              }

              a4 = v45;
            }

            else
            {
              *v27 = v13;
              v28 = v27 + 4;
            }

            a2[1] = v28;
          }
        }

        else
        {
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v17 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "WifiManager, WiFiDeviceClientCopyProperty, invalid APPLE80211KEY_SUP_CHANNEL", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018CD5B4(buf);
            LOWORD(v52) = 0;
            LODWORD(v43) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 17, "WifiManager, WiFiDeviceClientCopyProperty, invalid APPLE80211KEY_SUP_CHANNEL", &v52, v43);
            v41 = v40;
            sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::getSupportedChannels(std::vector<int> &, BOOL, BOOL)", "%s\n", v40);
            if (v41 != buf)
            {
              free(v41);
            }
          }

          CFShow(ValueAtIndex);
        }

        sub_100005DA4();
      }

      ++v9;
    }

    while (Count != v9);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return (*(*v6 + 24))(v6);
}

void sub_10058F238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100005DA4();
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10058F2CC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1 + 832;
  v16 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v17 = 256;
  v15 = 0;
  WiFiManagerClientSetPower();
  if (sub_100599BF8(a1, &v15))
  {
    v5 = v15;
    if (v15 == v2)
    {
      v6 = 1;
      goto LABEL_10;
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240448;
      v23 = v2;
      v24 = 1026;
      v25 = v5;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "WifiMgr, WiFiManagerClientSetPower, fail, request, %{public}d, query, %{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(buf);
      v18 = 67240448;
      v19 = v2;
      v20 = 1026;
      v21 = v5;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "WifiMgr, WiFiManagerClientSetPower, fail, request, %{public}d, query, %{public}d", &v18, 14);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLWifiService::setPower(BOOL)", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v6 = 0;
LABEL_10:
  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v8 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    *buf = 67240448;
    v23 = v2;
    v24 = 1026;
    v25 = v6;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "WifiMgr, WiFiManagerClientSetPower, request, %{public}d, %{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v18 = 67240448;
    v19 = v2;
    v20 = 1026;
    v21 = v6;
    LODWORD(v14) = 14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 1, "WifiMgr, WiFiManagerClientSetPower, request, %{public}d, %{public}d", &v18, v14);
    v11 = v10;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::setPower(BOOL)", "%s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  (*(*v4 + 24))(v4);
  return 1;
}

void sub_10058F620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10058F690(uint64_t a1, int a2)
{
  v9 = a2;
  v4 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  if (qword_1025D48A0 != -1)
  {
    sub_1018CD6A4();
  }

  v5 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v12 = a2;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "setBackgroundExitScanCount, %d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD660(buf);
    v10[0] = 67109120;
    v10[1] = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "setBackgroundExitScanCount, %d", v10);
    v8 = v7;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::setBackgroundExitScanCount(int)", "%s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  if (*(a1 + 312))
  {
    sub_10004FD18();
    sub_1000F2D48(buf, @"IO80211InterfaceBGScanLostNetTO", &v9);
    sub_10007005C(buf);
    WiFiDeviceClientSetProperty();
    sub_100005DA4();
  }

  return (*(*v4 + 24))(v4);
}

void sub_10058F8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_10058F934(uint64_t a1, int a2)
{
  v4 = a1 + 832;
  v11 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v12 = 256;
  v5 = *(a1 + 304);
  if (v5)
  {
    if (a2)
    {
      WiFiManagerClientEnable();
    }

    else
    {
      WiFiManagerClientDisable();
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD6A4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning no wifi interface available", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(buf);
      v10 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning no wifi interface available", &v10, 2);
      v8 = v7;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::setAutoJoin(BOOL)", "%s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  (*(*v4 + 24))(v4);
  return v5 != 0;
}

void sub_10058FB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10058FB4C(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = sub_100F678AC(a1, "CLWifiService", a2);
  *v5 = off_102460AA0;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  *(v5 + 11) = 0u;
  *(v5 + 12) = 0u;
  *(v5 + 13) = 0u;
  *(v5 + 217) = 0u;
  *(v5 + 233) = 255;
  *(v5 + 236) = 0xE1000000000;
  *(v5 + 122) = 0;
  *(v5 + 246) = 0;
  v5[31] = 0;
  sub_10000EC00(&buf, "60:c5:47:4f:51:1d");
  *(a1 + 256) = sub_100196E8C(&buf);
  sub_10000EC00(&context, "60:c5:47:4d:cd:6f");
  *(a1 + 264) = sub_100196E8C(&context);
  sub_10000EC00(&__p, "60:c5:47:4f:51:1c");
  *(a1 + 272) = sub_100196E8C(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(context.retain) < 0)
  {
    operator delete(context.version);
  }

  if (v68 < 0)
  {
    operator delete(buf);
  }

  *(a1 + 280) = 0;
  *(a1 + 288) = 0xBFF0000000000000;
  v6 = (a1 + 296);
  *(a1 + 336) = 0;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 400) = xmmword_101C7F570;
  *(a1 + 416) = xmmword_101C75BF0;
  *(a1 + 432) = -1;
  *(a1 + 560) = 0;
  *(a1 + 648) = 0;
  *(a1 + 656) = 0;
  *(a1 + 552) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 664) = 1;
  *(a1 + 712) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = a1 + 712;
  *(a1 + 740) = 0;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  *(a1 + 752) = -kCFAbsoluteTimeIntervalSince1970;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0;
  sub_100536F74(a1 + 832, "CLWifiService internal state", 1, 1);
  v7 = *a3;
  *a3 = 0;
  *(a1 + 848) = v7;
  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v8 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "WifiService, init", &buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(&buf);
    LOWORD(context.version) = 0;
    _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiService, init", &context, 2);
    v42 = v41;
    sub_100152C7C("Generic", 1, 0, 2, "CLWifiService::CLWifiService(id<CLIntersiloUniverse>, std::unique_ptr<IExternal>)", "%s\n", v41);
    if (v42 != &buf)
    {
      free(v42);
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v9 = qword_1025D4628;
  v10 = os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    v12 = sub_10001A3E8(v10, v11);
    v14 = sub_10071A480(v12, v13);
    v15 = "No";
    if (v14)
    {
      v15 = "Yes";
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v15;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "@Wsb, init, WSB support, %{public}s", &buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(&buf);
    v43 = qword_1025D4628;
    v46 = sub_10001A3E8(v44, v45);
    v48 = sub_10071A480(v46, v47);
    v49 = "No";
    if (v48)
    {
      v49 = "Yes";
    }

    LODWORD(context.version) = 136446210;
    *(&context.version + 4) = v49;
    LODWORD(v61) = 12;
    _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v43, 0, "@Wsb, init, WSB support, %{public}s", &context, v61);
    v51 = v50;
    sub_100152C7C("Generic", 1, 0, 2, "CLWifiService::CLWifiService(id<CLIntersiloUniverse>, std::unique_ptr<IExternal>)", "%s\n", v50);
    if (v51 != &buf)
    {
      free(v51);
    }
  }

  memset(&__p, 0, sizeof(__p));
  sub_10001CAF4(&buf);
  v16 = sub_100175094(buf, "WifiExcludedAp", &__p);
  if (*(&buf + 1))
  {
    sub_100008080(*(&buf + 1));
  }

  if (v16)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v17 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf) = 136446210;
      *(&buf + 4) = p_p;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "WifiService, gExcludedAP, %{public}s", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(&buf);
      v54 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v54 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(context.version) = 136446210;
      *(&context.version + 4) = v54;
      LODWORD(v61) = 12;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiService, gExcludedAP, %{public}s", &context, v61);
      v56 = v55;
      sub_100152C7C("Generic", 1, 0, 2, "CLWifiService::CLWifiService(id<CLIntersiloUniverse>, std::unique_ptr<IExternal>)", "%s\n", v55);
      if (v56 != &buf)
      {
        free(v56);
      }
    }

    v19 = sub_100196E8C(&__p);
    if ((byte_102656F88 & 1) == 0)
    {
      byte_102656F88 = 1;
    }

    qword_102656F80 = v19;
  }

  v20 = dispatch_queue_create("CLWifiService scanning", 0);
  *(a1 + 744) = v20;
  if (!v20)
  {
    sub_1018CD724();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/WifiService/CLWifiService.mm", 379, "CLWifiService");
    __break(1u);
LABEL_76:
    sub_1018CD6B8();
    goto LABEL_56;
  }

  context.version = 0;
  context.info = a1;
  memset(&context.retain, 0, 56);
  context.perform = sub_1002DC604;
  v21 = CFRunLoopSourceCreate(kCFAllocatorDefault, 0, &context);
  *v6 = v21;
  if (!v21)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v22 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "WifiService, ctor, fDpcSource is NULL", &buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(&buf);
      LOWORD(v64) = 0;
      LODWORD(v61) = 2;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4628, 16, "WifiService, ctor, fDpcSource is NULL", &v64, v61);
      v60 = v59;
      sub_100152C7C("Generic", 1, 0, 0, "CLWifiService::CLWifiService(id<CLIntersiloUniverse>, std::unique_ptr<IExternal>)", "%s\n", v59);
      if (v60 != &buf)
      {
        free(v60);
      }
    }
  }

  v23 = sub_100107858();
  CFRunLoopAddSource(v23, *v6, kCFRunLoopCommonModes);
  sub_10001CAF4(&buf);
  v24 = sub_1000B9370(buf, "WifiMaxAge", (a1 + 400));
  if (*(&buf + 1))
  {
    sub_100008080(*(&buf + 1));
  }

  if ((v24 & 1) == 0)
  {
    *(a1 + 400) = 0x4014000000000000;
  }

  sub_10001CAF4(&buf);
  v25 = sub_10001CB4C(buf, "WifiPassiveScansOnly", (a1 + 232), 0xFFFFFFFFLL);
  if (*(&buf + 1))
  {
    sub_100008080(*(&buf + 1));
  }

  if (v25)
  {
    if (*(a1 + 232))
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v26 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "WifiService, passive scans only", &buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD5B4(&buf);
        LOWORD(v64) = 0;
        LODWORD(v61) = 2;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiService, passive scans only", &v64, v61);
        v28 = v27;
        sub_100152C7C("Generic", 1, 0, 2, "CLWifiService::CLWifiService(id<CLIntersiloUniverse>, std::unique_ptr<IExternal>)", "%s\n", v27);
        if (v28 != &buf)
        {
          free(v28);
        }
      }
    }
  }

  else
  {
    *(a1 + 232) = 0;
  }

  sub_1005909E0(a1);
  sub_1005915A8(a1);
  v29 = [*(a1 + 40) newTimer];
  *(a1 + 656) = v29;
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_100592130;
  v62[3] = &unk_102449A78;
  v62[4] = a1;
  [v29 setHandler:v62];
  [*(a1 + 656) setNextFireDelay:90.0];
  if (qword_1025D4630 != -1)
  {
    goto LABEL_76;
  }

LABEL_56:
  v30 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134349056;
    *(&buf + 4) = 0x4056800000000000;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "WsbClients, timer, %{public}0.f", &buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD6E0(&buf);
    v64 = 134349056;
    v65 = 0x4056800000000000;
    LODWORD(v61) = 12;
    _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4638, 2, "WsbClients, timer, %{public}0.f", &v64, v61);
    v53 = v52;
    sub_100152C7C("Generic", 1, 0, 2, "CLWifiService::CLWifiService(id<CLIntersiloUniverse>, std::unique_ptr<IExternal>)", "%s\n", v52);
    if (v53 != &buf)
    {
      free(v53);
    }
  }

  v31 = [[CLMetricEventBins alloc] initWithInternalName:@"scanW" binPeriod:5 aggregationPeriod:3600 atCurrentTime:1 andSubmit:CFAbsoluteTimeGetCurrent()];
  *(a1 + 672) = v31;
  v33 = sub_10001A3E8(v31, v32);
  [(CLMetricEventBins *)v31 setDimensionInt:sub_100316E74(v33)];
  v34 = [[CLMetricEventBins alloc] initWithInternalName:@"scanA" binPeriod:5 aggregationPeriod:3600 atCurrentTime:1 andSubmit:CFAbsoluteTimeGetCurrent()];
  *(a1 + 680) = v34;
  v36 = sub_10001A3E8(v34, v35);
  v37 = [(CLMetricEventBins *)v34 setDimensionInt:sub_100316E74(v36)];
  if (sub_100F96FF8(v37, v38))
  {
    sub_1005925C0(a1);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v39 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEFAULT, "AONSense, not registering for aonsensed scans as it is not enabled", &buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(&buf);
      LOWORD(v64) = 0;
      LODWORD(v61) = 2;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4628, 0, "AONSense, not registering for aonsensed scans as it is not enabled", &v64, v61);
      v58 = v57;
      sub_100152C7C("Generic", 1, 0, 2, "CLWifiService::CLWifiService(id<CLIntersiloUniverse>, std::unique_ptr<IExternal>)", "%s\n", v57);
      if (v58 != &buf)
      {
        free(v58);
      }
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1005907A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  v47 = *(v44 + 848);
  *(v44 + 848) = 0;
  if (v47)
  {
    (*(*v47 + 8))(v47, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_10053700C(v44 + 832);
  sub_1003C93BC(v44 + 704, *(v44 + 712));
  if (*(v44 + 648) == 1 && *(v44 + 591) < 0)
  {
    operator delete(*(v44 + 568));
  }

  a39 = (v44 + 512);
  sub_1000B96B4(&a39);
  a39 = (v44 + 480);
  sub_1000B96B4(&a39);
  a39 = (v44 + 448);
  sub_1000B96B4(&a39);
  sub_1005A45E0(v45);
  sub_100F67A20(v44);
  _Unwind_Resume(a1);
}

void sub_1005909C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1018CD8B8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005909E0(uint64_t a1)
{
  v2 = sub_1005A10F4();
  v3 = sub_1005A1170();
  if (qword_1025D48A0 != -1)
  {
    sub_1018CD6A4();
  }

  valuePtr = 0;
  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    *&buf[4] = v2;
    *&buf[8] = 2048;
    *&buf[10] = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "wifi scan iterations %d dwell time is %lldms", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD8F0(v2, v3);
  }

  valuePtr = 2;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  *(a1 + 112) = v5;
  if (!v5)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "failed to initialize fScanTypePassive", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD9FC();
    }
  }

  valuePtr = 1;
  v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  *(a1 + 120) = v7;
  if (!v7)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v8 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "failed to initialize fScanTypeActive", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CDAE0();
    }
  }

  v76[0] = xmmword_101C7F580;
  v76[1] = unk_101C7F590;
  *buf = v76;
  *v48 = &v77;
  v9 = sub_1005A11F0(a1, v2, 1, 30, buf, v48, 50, 2, 1);
  *(a1 + 152) = v9;
  if (!v9)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsHarvest5GhzSet1", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CDBC4();
    }
  }

  *v74 = xmmword_101C7F5A0;
  *&v74[12] = *(&xmmword_101C7F5A0 + 12);
  *buf = v74;
  *v48 = &v75;
  v11 = sub_1005A11F0(a1, v2, 1, 30, buf, v48, 50, 2, 1);
  *(a1 + 160) = v11;
  if (!v11)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v12 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsHarvest5GhzSet2", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CDCA8();
    }
  }

  v72 = 165;
  v71[0] = xmmword_101C7F5BC;
  v71[1] = unk_101C7F5CC;
  *buf = v71;
  *v48 = &v73;
  v13 = sub_1005A11F0(a1, v2, 1, 30, buf, v48, 50, 2, 1);
  *(a1 + 168) = v13;
  if (!v13)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v14 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsHarvest5GhzSet3", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CDD8C();
    }
  }

  v69 = 11;
  v68 = 0x600000001;
  *buf = &v68;
  *v48 = &v70;
  v15 = sub_1005A11F0(a1, v2, 1, 14, buf, v48, v3, 0, 0);
  *(a1 + 136) = v15;
  if (!v15)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v16 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsHarvest2GhzSet1", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CDE70();
    }
  }

  v66 = 0xD0000000CLL;
  v65[0] = xmmword_101C7F5E0;
  v65[1] = unk_101C7F5F0;
  *buf = v65;
  *v48 = &v67;
  v17 = sub_1005A11F0(a1, v2, 1, 14, buf, v48, v3, 0, 0);
  *(a1 + 144) = v17;
  if (!v17)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v18 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsHarvest2GhzSet2", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CDF54();
    }
  }

  v63 = 11;
  v62 = 0x600000001;
  *buf = &v62;
  *v48 = &v64;
  v19 = sub_1005A11F0(a1, v2, 1, 14, buf, v48, 50, 0, 0);
  *(a1 + 128) = v19;
  if (!v19)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v20 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsFast", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CE038();
    }
  }

  v60 = 11;
  v59 = 0x600000001;
  *buf = &v59;
  *v48 = &v61;
  v21 = sub_1005A11F0(a1, v2, 1, 14, buf, v48, v3, 0, 0);
  *(a1 + 176) = v21;
  if (!v21)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v22 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsStage1", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CE11C();
    }
  }

  v57 = 0xD0000000CLL;
  v56[0] = xmmword_101C7F5E0;
  v56[1] = unk_101C7F5F0;
  *buf = v56;
  *v48 = &v58;
  v23 = sub_1005A11F0(a1, v2, 1, 14, buf, v48, v3, 0, 0);
  *(a1 + 184) = v23;
  if (!v23)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v24 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsStage2", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CE200();
    }
  }

  v54 = 0xA10000009DLL;
  v53[0] = xmmword_101C7F608;
  v53[1] = unk_101C7F618;
  *buf = v53;
  *v48 = &v55;
  v25 = sub_1005A11F0(a1, v2, 1, 30, buf, v48, v3, 0, 0);
  *(a1 + 192) = v25;
  if (!v25)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v26 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptions5GhzStage1", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CE2E4();
    }
  }

  v81 = 13;
  *buf = xmmword_101C7F630;
  *&buf[16] = xmmword_101C7F640;
  v80 = xmmword_101C7F650;
  *v48 = buf;
  *v42 = &v82;
  v27 = sub_1005A11F0(a1, v2, 1, 14, v48, v42, v3, 0, 0);
  v29 = xmmword_101C7F650;
  v28 = xmmword_101C7F640;
  v30 = xmmword_101C7F630;
  *(a1 + 200) = v27;
  if (!v27)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v31 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *v48 = 0;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsNormal", v48, 2u);
    }

    v32 = sub_10000A100(121, 0);
    v28 = xmmword_101C7F640;
    v30 = xmmword_101C7F630;
    v29 = xmmword_101C7F650;
    if (v32)
    {
      sub_1018CE3C8();
      v29 = xmmword_101C7F650;
      v28 = xmmword_101C7F640;
      v30 = xmmword_101C7F630;
    }
  }

  v51 = 13;
  *v48 = v30;
  v49 = v28;
  v50 = v29;
  *v42 = v48;
  *v47 = &v52;
  v33 = sub_1005A11F0(a1, 3, 1, 14, v42, v47, v3, 0, 0);
  v35 = xmmword_101C7F650;
  v34 = xmmword_101C7F640;
  v36 = xmmword_101C7F630;
  *(a1 + 208) = v33;
  if (!v33)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v37 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *v42 = 0;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsThorough", v42, 2u);
    }

    v38 = sub_10000A100(121, 0);
    v34 = xmmword_101C7F640;
    v36 = xmmword_101C7F630;
    v35 = xmmword_101C7F650;
    if (v38)
    {
      sub_1018CE4AC();
      v35 = xmmword_101C7F650;
      v34 = xmmword_101C7F640;
      v36 = xmmword_101C7F630;
    }
  }

  v45 = 13;
  *v42 = v36;
  v43 = v34;
  v44 = v35;
  *v47 = v42;
  v41 = &v46;
  v39 = sub_1005A11F0(a1, v2, 1, 14, v47, &v41, v3, *(a1 + 400), 0);
  *(a1 + 216) = v39;
  if (!v39)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v40 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *v47 = 0;
      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsCached", v47, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CE590();
    }
  }

  *(a1 + 224) = 0;
}

uint64_t sub_1005915A8(uint64_t a1)
{
  v2 = a1 + 832;
  v36 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v37 = 256;
  if (qword_1025D4620 != -1)
  {
    sub_1018CD624();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v48 = 0;
    v49 = 2082;
    *v50 = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:WifiMgr, allocateWifiArtifacts}", buf, 0x12u);
  }

  *(a1 + 246) = 0;
  v4 = *(a1 + 320);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 320) = 0;
  }

  if (*(a1 + 312))
  {
    WiFiDeviceClientRegisterPowerCallback();
    WiFiDeviceClientRegisterResumeScanCallback();
    WiFiDeviceClientRegisterExtendedLinkCallback();
    WiFiDeviceClientRegisterBssidChangeCallback();
    WiFiDeviceClientRegisterBgScanSuspendResumeCallback();
    WiFiDeviceClientRegisterScanUpdateCallback();
    WiFiDeviceClientRegisterLQMCallback();
    WiFiDeviceClientRegister24GHzNetworkInCriticalStateCallback();
    CFRelease(*(a1 + 312));
    *(a1 + 312) = 0;
  }

  if (*(a1 + 304))
  {
    goto LABEL_12;
  }

  v5 = WiFiManagerClientCreate();
  *(a1 + 304) = v5;
  if (v5)
  {
    sub_100107858();
    WiFiManagerClientScheduleWithRunLoop();
    WiFiManagerClientRegisterServerRestartCallback();
    WiFiManagerClientRegisterWowStateChangedCallback();
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    WiFiManagerClientRegisterBackgroundScanCallback();
LABEL_12:
    v6 = WiFiManagerClientCopyDevices();
    v7 = v6;
    if (v6)
    {
      if (*(a1 + 336) == 1)
      {
        *(a1 + 336) = 0;
      }

      if (CFArrayGetCount(v6))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
        *(a1 + 312) = ValueAtIndex;
        if (ValueAtIndex && (v9 = CFGetTypeID(ValueAtIndex), v9 == WiFiDeviceClientGetTypeID()))
        {
          CFRetain(*(a1 + 312));
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v10 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            InterfaceName = WiFiDeviceClientGetInterfaceName();
            sub_1000238CC(InterfaceName, &__p);
            v12 = v30 >= 0 ? &__p : __p;
            *buf = 68289282;
            v48 = 0;
            v49 = 2082;
            *v50 = "";
            *&v50[8] = 2082;
            *&v50[10] = v12;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:WifiMgr, allocation , wifi interface:%{public, location:escape_only}s}", buf, 0x1Cu);
            if (SHIBYTE(v30) < 0)
            {
              operator delete(__p);
            }
          }

          WiFiDeviceClientRegisterPowerCallback();
          WiFiDeviceClientRegisterResumeScanCallback();
          WiFiDeviceClientRegisterExtendedLinkCallback();
          WiFiDeviceClientRegisterBssidChangeCallback();
          WiFiDeviceClientRegisterBgScanSuspendResumeCallback();
          WiFiDeviceClientRegisterScanUpdateCallback();
          WiFiDeviceClientRegisterLQMCallback();
          WiFiDeviceClientRegister24GHzNetworkInCriticalStateCallback();
          *(a1 + 320) = WiFiDeviceClientCopyCurrentNetwork();
          __p = qword_102637AD0;
          if (byte_102637AD8[23] < 0)
          {
            sub_100007244(&v30, *byte_102637AD8, *&byte_102637AD8[8]);
          }

          else
          {
            v30 = *byte_102637AD8;
            v31 = *&byte_102637AD8[16];
          }

          v32 = xmmword_102637AF0;
          v33 = xmmword_102637B00;
          v34 = xmmword_102637B10;
          v35 = qword_102637B20;
          sub_1005954EC(a1, &__p);
          *buf = -256;
          LOBYTE(v49) = 0;
          v53 = 0;
          memset(v54, 0, sizeof(v54));
          v55 = 0;
          sub_1002DEB0C(&v49, &__p);
          BYTE2(v55) = 0;
          v21 = v52;
          *v38 = 6;
          (*(*a1 + 152))(a1, v38, buf, 1, 0xFFFFFFFFLL, 0);
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v22 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v53;
            v24 = v52;
            sub_1000ECD9C(&v28);
            v25 = v24 > 0 ? v23 : 0;
            v26 = (v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v28 : v28.__r_.__value_.__r.__words[0];
            *v38 = 68289795;
            *&v38[4] = 0;
            v39 = 2082;
            v40 = "";
            v41 = 1026;
            v42 = v25;
            v43 = 2081;
            v44 = v26;
            v45 = 2049;
            v46 = v21;
            _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@ClxLink, associate , isAssociated:%{public}hhd, mac:%{private, location:escape_only}s, channel:%{private}ld}", v38, 0x2Cu);
            if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v28.__r_.__value_.__l.__data_);
            }
          }

          WiFiManagerClientGetWoWState();
          sub_100595C08(a1);
          sub_100595FAC(a1);
          *(a1 + 752) = -kCFAbsoluteTimeIntervalSince1970;
          *(a1 + 760) = 0;
          CFRelease(v7);
          sub_1005961D0(a1);
          *v38 = &v54[8];
          sub_1000B96B4(v38);
          if (v53 == 1 && v51 < 0)
          {
            operator delete(*&v50[6]);
          }

          if (SHIBYTE(v31) < 0)
          {
            operator delete(v30);
          }
        }

        else
        {
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v15 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
          {
            *buf = 68289026;
            v48 = 0;
            v49 = 2082;
            *v50 = "";
            _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:WifiMgr, wifi device failure}", buf, 0x12u);
            if (qword_1025D4620 != -1)
            {
              sub_1018CD58C();
            }
          }

          v16 = qword_1025D4628;
          if (os_signpost_enabled(qword_1025D4628))
          {
            *buf = 68289026;
            v48 = 0;
            v49 = 2082;
            *v50 = "";
            _os_signpost_emit_with_name_impl(dword_100000000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "WifiMgr, wifi device failure", "{msg%{public}.0s:WifiMgr, wifi device failure}", buf, 0x12u);
          }

          sub_100592810(a1, "DeviceFail");
          *(a1 + 312) = 0;
          CFRelease(v7);
        }
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v17 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289026;
          v48 = 0;
          v49 = 2082;
          *v50 = "";
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:WifiMgr, wifi zero devices}", buf, 0x12u);
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }
        }

        v18 = qword_1025D4628;
        if (os_signpost_enabled(qword_1025D4628))
        {
          *buf = 68289026;
          v48 = 0;
          v49 = 2082;
          *v50 = "";
          _os_signpost_emit_with_name_impl(dword_100000000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "WifiMgr, wifi zero devices", "{msg%{public}.0s:WifiMgr, wifi zero devices}", buf, 0x12u);
        }

        sub_100592810(a1, "DevicesZero");
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v13 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        v48 = 0;
        v49 = 2082;
        *v50 = "";
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:WifiMgr, wifi devices failure}", buf, 0x12u);
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }
      }

      v14 = qword_1025D4628;
      if (os_signpost_enabled(qword_1025D4628))
      {
        *buf = 68289026;
        v48 = 0;
        v49 = 2082;
        *v50 = "";
        _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "WifiMgr, wifi devices failure", "{msg%{public}.0s:WifiMgr, wifi devices failure}", buf, 0x12u);
      }

      sub_100592810(a1, "DevicesNull");
      sub_100593E4C(a1);
      if ((*(a1 + 336) & 1) == 0)
      {
        *(a1 + 328) = sub_1000081AC();
        *(a1 + 336) = 1;
      }
    }

    return (*(*v2 + 24))(v2);
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v19 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v48 = 0;
    v49 = 2082;
    *v50 = "";
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:WifiMgr, WiFiManagerClientCreate failed}", buf, 0x12u);
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }
  }

  v20 = qword_1025D4628;
  if (os_signpost_enabled(qword_1025D4628))
  {
    *buf = 68289026;
    v48 = 0;
    v49 = 2082;
    *v50 = "";
    _os_signpost_emit_with_name_impl(dword_100000000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "WifiMgr, WiFiManagerClientCreate failed", "{msg%{public}.0s:WifiMgr, WiFiManagerClientCreate failed}", buf, 0x12u);
  }

  sub_100592810(a1, "ManagerNull");
  return (*(*v2 + 24))(v2);
}

uint64_t sub_100592138(uint64_t a1)
{
  v2 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_1025D4620 != -1)
  {
    sub_1018CD624();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 664);
    *buf = 67240192;
    LODWORD(v20) = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "WsbTimer, first, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v9 = *(a1 + 664);
    v17 = 67240192;
    LODWORD(v18) = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "WsbTimer, first, %{public}d", &v17, 8);
    v11 = v10;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWsbAnalyticsTimer()", "%s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  [*(a1 + 656) setNextFireDelay:14400.0];
  if (qword_1025D4630 != -1)
  {
    sub_1018CD6B8();
  }

  v6 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v20 = 0x40CC200000000000;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "WsbClients, timer, %{public}0.f", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD6E0(buf);
    v17 = 134349056;
    v18 = 0x40CC200000000000;
    LODWORD(v16) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "WsbClients, timer, %{public}0.f", &v17, v16);
    v13 = v12;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWsbAnalyticsTimer()", "%s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  if (*(a1 + 664))
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018CD6B8();
    }

    v7 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "WsbClients, status, start", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD6E0(buf);
      LOWORD(v17) = 0;
      LODWORD(v16) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "WsbClients, status, start", &v17, v16);
      v15 = v14;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWsbAnalyticsTimer()", "%s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    *(a1 + 688) = Current;
    *(a1 + 696) = Current;
  }

  else
  {
    sub_10059F6DC(a1, 0, 0, 1);
  }

  *(a1 + 664) = 0;
  sub_10004E764(a1, "timer");
  return (*(*v2 + 24))(v2);
}

void sub_100592588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1005925C0(uint64_t a1)
{
  if ([+[_TtC10CLAONSense21CLAONSenseWiFiService isAvailable] shared]
  {
    v2 = +[_TtC10CLAONSense21CLAONSenseWiFiService shared];
    v11 = 0;
    v3 = [*(a1 + 40) queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1003147B4;
    v10[3] = &unk_102460CA8;
    v10[4] = a1;
    v4 = [(CLAONSenseWiFiService *)v2 registerForWifiScanResultsWithQueue:v3 error:&v11 callback:v10];
    if (v4)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v5 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "AONSense, successfully registered for aonsensed scans", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CE870();
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v7 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        v8 = [objc_msgSend(v11 "localizedDescription")];
        *buf = 136446210;
        v13 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Error registering for AON scan results: %{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CE758(&v11);
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "AONSense is unavailable, unable to register for scans", buf, 2u);
    }

    v4 = 0;
    if (sub_10000A100(121, 0))
    {
      sub_1018CE674();
      return 0;
    }
  }

  return v4;
}

uint64_t sub_100592810(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 832;
  block[5] = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v10 = 256;
  if (qword_1025D4620 != -1)
  {
    sub_1018CD624();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v14 = a2;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "WifiService, re-schedule allocate, %{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v11 = 136446210;
    v12 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiService, re-schedule allocate, %{public}s", &v11, 12);
    v8 = v7;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::scheduleWifiArtifactsAllocation(const char *)", "%s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100592A84;
  block[3] = &unk_102449A78;
  block[4] = a1;
  if (qword_102656F60 != -1)
  {
    dispatch_once(&qword_102656F60, block);
  }

  return (*(*v4 + 24))(v4);
}

void sub_100592A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

id sub_100592A84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100592AFC;
  v4[3] = &unk_102449A78;
  v4[4] = v1;
  return [v2 afterInterval:v4 async:5.0];
}

void sub_100592AFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 312))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v2 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "WifiService, device, previously retrieved", v4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CE954();
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "WifiService, device, timer retrieve", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CEA38();
    }

    sub_1005915A8(v1);
    sub_100592C18(v1, 1, 1);
  }
}

void sub_100592C18(uint64_t a1, int a2, int a3)
{
  v4[2] = a1 + 832;
  (*(*(a1 + 832) + 16))();
  v5 = 256;
  v4[0] = 0;
  v4[1] = 0;
  v3 = v4;
  operator new();
}

void sub_100593DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_100140738(a18);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_100593E4C(uint64_t a1)
{
  if (*(a1 + 336) == 1)
  {
    v2 = sub_1000081AC();
    if ((*(a1 + 336) & 1) == 0)
    {
      sub_100173BA0();
    }

    v3 = v2 - *(a1 + 328);
    if (v3 >= 10.0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD624();
      }

      v4 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        v5 = 134349056;
        v6 = v3;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "WifiMgr, wifi devices failure, WiFiManagerClientCopyDevices return NULL for %{public}.1f seconds", &v5, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CEB1C(v3);
      }
    }
  }
}

void sub_100593F58(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiManagerRestartCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "activity";
      v16 = 2050;
      v17 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiManagerRestartCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v9 = 0;
  }

  v6 = [*(a2 + 32) silo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005A3F14;
  v7[3] = &unk_10245D2A8;
  v7[4] = a2;
  v7[5] = a1;
  [v6 sync:v7];
  if (v9 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100594168(uint64_t a1, char a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiManagerClientWowStateChangedCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "activity";
      v19 = 2050;
      v20 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiManagerClientWowStateChangedCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v12 = 0;
  }

  v8 = [*(a3 + 32) silo];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005A3F1C;
  v9[3] = &unk_10245D288;
  v9[4] = a3;
  v9[5] = a1;
  v10 = a2;
  [v8 sync:v9];
  if (v12 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id sub_100594380(const void *a1, const void *a2, uint64_t a3)
{
  CFRetain(a1);
  CFRetain(a2);
  v6 = *(a3 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005991F8;
  v8[3] = &unk_10245D2F0;
  v8[4] = a3;
  v8[5] = a1;
  v8[6] = a2;
  return [v6 async:v8];
}

void sub_10059441C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiManagerBackgroundScanCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiManagerBackgroundScanCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  v10 = [*(a4 + 32) silo];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1005A3F28;
  v11[3] = &unk_1024605D8;
  v11[4] = a4;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  [v10 sync:v11];
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100594640(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiDeviceClientPowerCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "activity";
      v16 = 2050;
      v17 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiDeviceClientPowerCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v9 = 0;
  }

  v6 = [*(a2 + 32) silo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005A3F38;
  v7[3] = &unk_10245D2A8;
  v7[4] = a2;
  v7[5] = a1;
  [v6 sync:v7];
  if (v9 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100594850(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiDeviceClientResumeScanCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "activity";
      v16 = 2050;
      v17 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiDeviceClientResumeScanCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v9 = 0;
  }

  v6 = [*(a2 + 32) silo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005A3F40;
  v7[3] = &unk_10245D2A8;
  v7[4] = a2;
  v7[5] = a1;
  [v6 sync:v7];
  if (v9 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100594A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiDeviceClientLinkExtendedCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiDeviceClientLinkExtendedCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  v8 = [*(a3 + 32) silo];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005A3F48;
  v9[3] = &unk_10245D2F0;
  v9[4] = a3;
  v9[5] = a1;
  v9[6] = a2;
  [v8 sync:v9];
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100594C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiDeviceClientBssidChangeCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiDeviceClientBssidChangeCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  v8 = [*(a3 + 32) silo];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005A3F58;
  v9[3] = &unk_10245D2F0;
  v9[4] = a3;
  v9[5] = a1;
  v9[6] = a2;
  [v8 sync:v9];
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100594E90(uint64_t a1, char a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiDeviceClientBgScanSuspendResumeCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "activity";
      v19 = 2050;
      v20 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiDeviceClientBgScanSuspendResumeCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v12 = 0;
  }

  v8 = [*(a3 + 32) silo];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005A3F68;
  v9[3] = &unk_10245D288;
  v9[4] = a3;
  v9[5] = a1;
  v10 = a2;
  [v8 sync:v9];
  if (v12 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1005950A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a5 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v16 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiDeviceClientScanCacheCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "activity";
      v23 = 2050;
      v24 = a5;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiDeviceClientScanCacheCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v16 = 0;
  }

  v12 = [*(a5 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1005A3F78;
  v13[3] = &unk_102460E08;
  v13[4] = a5;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v14 = a4;
  [v12 sync:v13];
  if (v16 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1005952D4(uint64_t a1, char a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiDeviceClient24GHzNetworkInCriticalStateCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "activity";
      v19 = 2050;
      v20 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiDeviceClient24GHzNetworkInCriticalStateCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v12 = 0;
  }

  v8 = [*(a3 + 32) silo];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005A3F8C;
  v9[3] = &unk_10245D288;
  v9[4] = a3;
  v9[5] = a1;
  v10 = a2;
  [v8 sync:v9];
  if (v12 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1005954EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 832;
  v41 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v42 = 256;
  *a2 = qword_102637AD0;
  std::string::operator=((a2 + 8), byte_102637AD8);
  v5 = xmmword_102637AF0;
  v6 = xmmword_102637B00;
  v7 = xmmword_102637B10;
  *(a2 + 80) = qword_102637B20;
  *(a2 + 48) = v6;
  *(a2 + 64) = v7;
  *(a2 + 32) = v5;
  sub_1000F8F80(a1 + 560, &byte_102637A70);
  if (*(a1 + 312))
  {
    v9 = *(a1 + 320);
    if (v9)
    {
      v10 = sub_1002DEC54(v8, v9, a2, 0);
      if (v10)
      {
        sub_1002DEB0C(a1 + 560, a2);
        *(a1 + 608) = 0;
        v11 = WiFiDeviceClientCopyCurrentNetwork();
        if (v11)
        {
          Property = WiFiNetworkGetProperty();
          if (Property)
          {
            v13 = CFEqual(Property, kCFBooleanTrue) != 0;
          }

          else
          {
            v13 = 1;
          }

          *(a1 + 625) = v13;
          CFRelease(v11);
LABEL_29:
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v22 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
          {
            v40.__r_.__value_.__r.__words[0] = *a2;
            sub_1000ECD9C(&__p);
            v23 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            v24 = *(a2 + 40);
            v25 = *(a2 + 32);
            v26 = *(a2 + 65);
            *buf = 67241219;
            v49 = v10;
            v50 = 2081;
            v51 = v23;
            v52 = 1026;
            v53 = v24;
            v54 = 1026;
            v55 = v25;
            v56 = 1026;
            v57 = v26;
            _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "WifiMgr, queryAssoc, %{public}d, mac, %{private}s, channel, %{public}d, rssi, %{public}d, isMoving, %{public}d", buf, 0x24u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018CD5B4(buf);
            v32 = qword_1025D4628;
            sub_1000ECD9C(&v40);
            if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v33 = &v40;
            }

            else
            {
              v33 = v40.__r_.__value_.__r.__words[0];
            }

            v34 = *(a2 + 40);
            v35 = *(a2 + 32);
            v36 = *(a2 + 65);
            LODWORD(__p.__r_.__value_.__l.__data_) = 67241219;
            HIDWORD(__p.__r_.__value_.__r.__words[0]) = v10;
            LOWORD(__p.__r_.__value_.__r.__words[1]) = 2081;
            *(&__p.__r_.__value_.__r.__words[1] + 2) = v33;
            WORD1(__p.__r_.__value_.__r.__words[2]) = 1026;
            HIDWORD(__p.__r_.__value_.__r.__words[2]) = v34;
            v44 = 1026;
            v45 = v35;
            v46 = 1026;
            v47 = v36;
            LODWORD(v39) = 36;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v32, 1, "WifiMgr, queryAssoc, %{public}d, mac, %{private}s, channel, %{public}d, rssi, %{public}d, isMoving, %{public}d", &__p, v39);
            v38 = v37;
            if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v40.__r_.__value_.__l.__data_);
            }

            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::queryAssociatedNetwork(CLWifiService_Type::AccessPoint &)", "%s\n", v38);
            if (v38 != buf)
            {
              free(v38);
            }
          }

          goto LABEL_38;
        }

        if (qword_1025D4620 != -1)
        {
          sub_1018CD624();
        }

        v20 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "WifiMgr, queryAssoc, Unable to copy current network", buf, 2u);
        }

        if (!sub_10000A100(121, 0))
        {
          goto LABEL_29;
        }

        sub_1018CD5B4(buf);
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "WifiMgr, queryAssoc, Unable to copy current network", &__p, 2);
        v19 = v21;
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLWifiService::queryAssociatedNetwork(CLWifiService_Type::AccessPoint &)", "%s\n", v21);
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018CD624();
        }

        v17 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67240192;
          v49 = 0;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "WifiMgr, queryAssoc, fail, ap, %{public}d", buf, 8u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_29;
        }

        sub_1018CD5B4(buf);
        __p.__r_.__value_.__r.__words[0] = 67240192;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiMgr, queryAssoc, fail, ap, %{public}d", &__p, 8);
        v19 = v18;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::queryAssociatedNetwork(CLWifiService_Type::AccessPoint &)", "%s\n", v18);
      }

      if (v19 != buf)
      {
        free(v19);
      }

      goto LABEL_29;
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018CD624();
  }

  v14 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 312) == 0;
    v16 = *(a1 + 320) == 0;
    *buf = 67240448;
    v49 = v15;
    v50 = 1026;
    LODWORD(v51) = v16;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "WifiMgr, queryAssoc, fail, device, %{public}d, network, %{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v28 = *(a1 + 312) == 0;
    v29 = *(a1 + 320) == 0;
    LODWORD(__p.__r_.__value_.__l.__data_) = 67240448;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = v28;
    LOWORD(__p.__r_.__value_.__r.__words[1]) = 1026;
    *(&__p.__r_.__value_.__r.__words[1] + 2) = v29;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiMgr, queryAssoc, fail, device, %{public}d, network, %{public}d", &__p, 14);
    v31 = v30;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::queryAssociatedNetwork(CLWifiService_Type::AccessPoint &)", "%s\n", v30);
    if (v31 != buf)
    {
      free(v31);
    }
  }

  v10 = 0;
LABEL_38:
  (*(*v4 + 24))(v4);
  return v10;
}

void sub_100595BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100595C08(void *a1)
{
  v2 = a1 + 104;
  v12 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104);
  v13 = 256;
  v3 = _os_activity_create(dword_100000000, "CL: onWiFiManagerClientWowStateChangedCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v18 = 0;
    v19 = 2082;
    *__p = "";
    *&__p[8] = 2082;
    *&__p[10] = "activity";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiManagerClientWowStateChangedCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  WoWState = WiFiManagerClientGetWoWState();
  if (qword_1025D48A0 != -1)
  {
    sub_1018CD638();
  }

  v6 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    v18 = WoWState;
    v19 = 2048;
    *__p = a1;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Got onWiFiManagerClientWowStateChangedCallback callback, isEnabled, %d, refcon, %p", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD660(buf);
    LODWORD(v14) = 67109376;
    HIDWORD(v14) = WoWState;
    v15 = 2048;
    v16 = a1;
    LODWORD(v10) = 18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "Got onWiFiManagerClientWowStateChangedCallback callback, isEnabled, %d, refcon, %p", &v14, v10);
    v9 = v8;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerClientWowStateChangedCallback(WiFiManagerClientRef, Boolean)", "%s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  *buf = -256;
  LOBYTE(v19) = 0;
  v22 = 0;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  *(&v24 + 1) = WoWState != 0;
  LODWORD(v14) = 11;
  (*(*a1 + 152))(a1, &v14, buf, 1, 0xFFFFFFFFLL, 0);
  v14 = &v23[8];
  sub_1000B96B4(&v14);
  if (v22 == 1 && v21 < 0)
  {
    operator delete(*&__p[6]);
  }

  os_activity_scope_leave(&state);
  return (*(*v2 + 24))(v2);
}

void sub_100595F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_activity_scope_state_s state, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  os_activity_scope_leave(&state);
  sub_1017EC98C(&a13);
  _Unwind_Resume(a1);
}

void sub_100595FAC(uint64_t a1)
{
  v2 = a1 + 832;
  v16 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v17 = 256;
  v9 = qword_102637AD0;
  if (byte_102637AD8[23] < 0)
  {
    sub_100007244(&v10, *byte_102637AD8, *&byte_102637AD8[8]);
  }

  else
  {
    v10 = *byte_102637AD8;
    v11 = *&byte_102637AD8[16];
  }

  v12 = xmmword_102637AF0;
  v13 = xmmword_102637B00;
  v14 = xmmword_102637B10;
  v15 = qword_102637B20;
  sub_1005954EC(a1, &v9);
  v3 = *(a1 + 224);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 224) = 0;
  }

  if (sub_1002DFF48(a1, &v9))
  {
    if (DWORD2(v12) == -1)
    {
      sub_1018CEC34();
      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/WifiService/CLWifiService.mm", 2555, "createScanOptionsChannel");
      __break(1u);
      return;
    }

    v8 = DWORD2(v12);
    v4[0] = &v8;
    v7 = &v9;
    *(a1 + 224) = sub_1005A171C(a1, 1, 1, 14, v4, &v7, 110, 0, 0);
    sub_1002DEB0C(a1 + 560, &v9);
  }

  else
  {
    sub_1002E80E0(v4, &qword_102637AD0);
    sub_1000F8A78(a1 + 560, v4);
    if (v6 == 1 && v5 < 0)
    {
      operator delete(v4[1]);
    }
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }

  (*(*v2 + 24))(v2);
}

uint64_t sub_1005961D0(uint64_t a1)
{
  v2 = a1 + 832;
  v25 = a1 + 832;
  v3 = (*(*(a1 + 832) + 16))(a1 + 832);
  v26 = 256;
  v5 = byte_102656F78;
  if ((byte_102656F78 & 1) == 0)
  {
    v6 = sub_10001A3E8(v3, v4);
    byte_102656F79 = (sub_10003A088(v6, v7) & 0x8000) != 0;
    byte_102656F78 = 1;
  }

  v24 = 0;
  sub_100599BF8(a1, &v24);
  v8 = *(a1 + 392);
  *(a1 + 392) = byte_102656F79;
  if (qword_1025D48A0 != -1)
  {
    sub_1018CD6A4();
  }

  v9 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 392);
    v11 = *(a1 + 552);
    *buf = 67109888;
    *v33 = v10;
    *&v33[4] = 1024;
    *&v33[6] = v8;
    v34 = 1024;
    LODWORD(__p[0]) = byte_102656F79;
    WORD2(__p[0]) = 1024;
    *(__p + 6) = v11;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "WiFi tracking available now %d (was %d) (%d %d)", buf, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD660(buf);
    v16 = *(a1 + 392);
    v17 = *(a1 + 552);
    *v27 = 67109888;
    *&v27[4] = v16;
    *&v27[8] = 1024;
    *&v27[10] = v8;
    v28 = 1024;
    v29 = byte_102656F79;
    v30 = 1024;
    v31 = v17;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "WiFi tracking available now %d (was %d) (%d %d)", v27, 26, v23, v25);
    v19 = v18;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::processTrackingAndPower()", "%s\n", v18);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  if (v5)
  {
    v12 = *(a1 + 392);
    if (v8 != v12)
    {
      *buf = -256;
      v33[4] = 0;
      v37 = 0;
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      BYTE1(v40) = v12;
      *v27 = 10;
      (*(*a1 + 152))(a1, v27, buf, 0, 0xFFFFFFFFLL, 0);
      *v27 = &v38 + 8;
      sub_1000B96B4(v27);
      if (v37 == 1 && v36 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (qword_1025D4630 != -1)
  {
    sub_1018CD6B8();
  }

  v13 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 552))
    {
      v14 = "On";
    }

    else
    {
      v14 = "Off";
    }

    *buf = 136315138;
    *v33 = v14;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "WifiNotify, Power, %s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD6E0(buf);
    v20 = *(a1 + 552) ? "On" : "Off";
    *v27 = 136315138;
    *&v27[4] = v20;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "WifiNotify, Power, %s", v27);
    v22 = v21;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::processTrackingAndPower()", "%s\n", v21);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  buf[1] = -1;
  v33[4] = 0;
  v37 = 0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0;
  buf[0] = *(a1 + 552);
  *v27 = 1;
  (*(*a1 + 152))(a1, v27, buf, 1, 0xFFFFFFFFLL, 0);
  *v27 = &v38 + 8;
  sub_1000B96B4(v27);
  if (v37 == 1 && v36 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(*v2 + 24))(v2);
}

void sub_1005966C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100596718(uint64_t a1)
{
  *a1 = off_102460AA0;
  sub_100596840(a1);
  v2 = *(a1 + 848);
  *(a1 + 848) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_10053700C(a1 + 832);
  sub_1003C93BC(a1 + 704, *(a1 + 712));
  if (*(a1 + 648) == 1 && *(a1 + 591) < 0)
  {
    operator delete(*(a1 + 568));
  }

  v4 = (a1 + 512);
  sub_1000B96B4(&v4);
  v4 = (a1 + 480);
  sub_1000B96B4(&v4);
  v4 = (a1 + 448);
  sub_1000B96B4(&v4);
  sub_1005A45E0((a1 + 344));
  return sub_100F67A20(a1);
}

void sub_100596808(uint64_t a1)
{
  sub_100596718(a1);

  operator delete();
}

uint64_t sub_100596840(uint64_t a1)
{
  v2 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  *(a1 + 108) = 1;
  v3 = *(a1 + 296);
  if (v3)
  {
    CFRunLoopSourceInvalidate(v3);
    v4 = *(a1 + 296);
    *(a1 + 296) = 0;
    CFRelease(v4);
  }

  v5 = *(a1 + 320);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 320) = 0;
  }

  if (*(a1 + 312))
  {
    WiFiDeviceClientSetRangeable();
    WiFiDeviceClientRegisterRangingReportCallback();
    CFRelease(*(a1 + 312));
    *(a1 + 312) = 0;
  }

  if (*(a1 + 304))
  {
    sub_100107858();
    WiFiManagerClientUnscheduleFromRunLoop();
    CFRelease(*(a1 + 304));
    *(a1 + 304) = 0;
  }

  *(a1 + 672) = 0;
  *(a1 + 680) = 0;
  v6 = *(a1 + 536);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 536) = 0;
  }

  v7 = *(a1 + 544);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 544) = 0;
  }

  v8 = *(a1 + 112);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 112) = 0;
  }

  v9 = *(a1 + 120);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 120) = 0;
  }

  v10 = *(a1 + 128);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 128) = 0;
  }

  v11 = *(a1 + 176);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 176) = 0;
  }

  v12 = *(a1 + 184);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 184) = 0;
  }

  v13 = *(a1 + 192);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 192) = 0;
  }

  v14 = *(a1 + 200);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 200) = 0;
  }

  v15 = *(a1 + 208);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 208) = 0;
  }

  v16 = *(a1 + 216);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 216) = 0;
  }

  v17 = *(a1 + 224);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 224) = 0;
  }

  v18 = *(a1 + 136);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 136) = 0;
  }

  v19 = *(a1 + 144);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 144) = 0;
  }

  v20 = *(a1 + 152);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 152) = 0;
  }

  v21 = *(a1 + 160);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 160) = 0;
  }

  v22 = *(a1 + 168);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 168) = 0;
  }

  v23 = *(a1 + 744);
  if (v23)
  {
    dispatch_release(v23);
    *(a1 + 744) = 0;
  }

  return (*(*v2 + 24))(v2);
}

void sub_100596A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100596B08(uint64_t a1)
{
  v2 = a1 + 832;
  v14 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v15 = 256;
  if (*(a1 + 304) && *(a1 + 312))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, @"BGSCAN_CACHE", kCFBooleanFalse);
    CFDictionaryAddValue(Mutable, @"BGSCAN_CACHE_WSB_ROLLOVER", kCFBooleanFalse);
    v4 = +[NSMutableArray array];
    v5 = [NSNumber numberWithInteger:1];
    v6 = +[NSMutableDictionary dictionary];
    [v6 setObject:v5 forKey:@"CHANNEL"];
    [v4 addObject:v6];
    CFDictionarySetValue(Mutable, @"SCAN_CHANNELS", v4);
    WiFiManagerClientSetBGScanCacheState();
    CFRelease(Mutable);
    *(a1 + 236) = 0xE1000000000;
    *(a1 + 244) = 0;
    if (qword_1025D4630 != -1)
    {
      sub_1018CEDA0();
    }

    v7 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "@WsbReg, disabled", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD6E0(buf);
      v13 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@WsbReg, disabled", &v13, 2);
      v9 = v8;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::turnOffWsb()", "%s\n", v8);
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018CEDA0();
    }

    v10 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "@Wsb, No wifi interface available, WARNING", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD6E0(buf);
      v13 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 1, "@Wsb, No wifi interface available, WARNING", &v13, 2);
      v9 = v12;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::turnOffWsb()", "%s\n", v12);
LABEL_16:
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  return (*(*v2 + 24))(v2);
}

void sub_100596E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100596EE0(uint64_t a1)
{
  v2 = a1 + 832;
  v8 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v9 = 256;
  if (*(a1 + 304) && *(a1 + 312))
  {
    if (*(a1 + 236) != 2 || *(a1 + 284) <= 0)
    {
      WiFiManagerClientRegisterBackgroundScanCacheCallback();
      sub_100597120(a1, 0, 1);
      *(a1 + 236) = 2;
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "@WsbWarn, No wifi interface available, #CloneMe", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      v7 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "@WsbWarn, No wifi interface available, #CloneMe", &v7, 2);
      v6 = v5;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::turnOnWsb()", "%s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  return (*(*v2 + 24))(v2);
}

void sub_1005970F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_100597120(uint64_t a1, int a2, int a3)
{
  theDict = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(theDict, @"BGSCAN_CACHE", kCFBooleanTrue);
  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 13;
  }

  Mutable = CFArrayCreateMutable(0, v4, &kCFTypeArrayCallBacks);
  v6 = 0;
  valuePtr = 1;
  v7 = 1;
  do
  {
    if (!a3 || v7 <= 0xB && ((1 << v7) & 0x842) != 0)
    {
      v8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v10 = v9;
      if (v8)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v12 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67240704;
          v28 = valuePtr;
          v29 = 2050;
          v30 = v8;
          v31 = 2050;
          v32 = v10;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "@WsbWarn, channel fail, %{public}d channelDict, %{public}p, channelNumber, %{public}p, #CloneMe", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v22[0] = 67240704;
          v22[1] = valuePtr;
          v23 = 2050;
          v24 = v8;
          v25 = 2050;
          v26 = v10;
          LODWORD(v18) = 28;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "@WsbWarn, channel fail, %{public}d channelDict, %{public}p, channelNumber, %{public}p, #CloneMe", v22, v18);
          v14 = v13;
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::enableDefaultWsbProfile(BOOL, BOOL)", "%s\n", v13);
          if (v14 != buf)
          {
            free(v14);
          }
        }
      }

      else
      {
        CFDictionaryAddValue(v8, @"CHANNEL", v9);
        CFArrayAppendValue(Mutable, v8);
      }

      CFRelease(v8);
      CFRelease(v10);
      v6 = (v6 + 1);
      v7 = valuePtr;
    }

    valuePtr = v7 + 1;
  }

  while (v7++ < 13);
  CFDictionarySetValue(theDict, @"SCAN_CHANNELS", Mutable);
  if (a2)
  {
    v16 = kCFBooleanTrue;
  }

  else
  {
    v16 = kCFBooleanFalse;
  }

  CFDictionaryAddValue(theDict, @"BGSCAN_CACHE_WSB_ROLLOVER", v16);
  WiFiManagerClientSetBGScanCacheState();
  CFRelease(Mutable);
  CFRelease(theDict);
  if (qword_1025D4630 != -1)
  {
    sub_1018CD6B8();
  }

  v17 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *buf = 67240192;
    v28 = v6;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "@WsbReg, enable, chs, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CEDB4(v6);
  }
}

void sub_100597514(uint64_t a1, int a2)
{
  if (!sub_100038FB4(a1 + 832))
  {
    sub_1018CEEB4();
  }

  if (*(a1 + 248) || *(a1 + 246) == a2)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018CEDA0();
    }

    v4 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 248);
      v6 = *(a1 + 246);
      LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
      *(buf.__r_.__value_.__r.__words + 4) = v5;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1026;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = a2;
      WORD1(buf.__r_.__value_.__r.__words[2]) = 1026;
      HIDWORD(buf.__r_.__value_.__r.__words[2]) = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "@WsbActive, Skip, networks, %{public}lu, turnOn, %{public}d, isSampleScan, %{public}d", &buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1025D4630 != -1)
      {
        sub_1018CD6B8();
      }

      v53 = *(a1 + 248);
      v54 = *(a1 + 246);
      LODWORD(__dst.__r_.__value_.__l.__data_) = 134349568;
      *(__dst.__r_.__value_.__r.__words + 4) = v53;
      WORD2(__dst.__r_.__value_.__r.__words[1]) = 1026;
      *(&__dst.__r_.__value_.__r.__words[1] + 6) = a2;
      WORD1(__dst.__r_.__value_.__r.__words[2]) = 1026;
      HIDWORD(__dst.__r_.__value_.__r.__words[2]) = v54;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4638, 1, "@WsbActive, Skip, networks, %{public}lu, turnOn, %{public}d, isSampleScan, %{public}d", &__dst, 24);
      v56 = v55;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::programSampleNetworks(BOOL)", "%s\n", v55);
      if (v56 != &buf)
      {
        free(v56);
      }
    }
  }

  else
  {
    *(a1 + 246) = a2;
    if (*(a1 + 688) != 0.0 && *(a1 + 720))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v8 = (Current - *(a1 + 696)) / 60.0;
      if (v8 >= 1.0)
      {
        v9 = "active:off";
        v10 = *(a1 + 728);
        if (v10 == 1)
        {
          v9 = "active:fences";
        }

        if (v10 == 2)
        {
          v11 = "active:fake";
        }

        else
        {
          v11 = v9;
        }

        if (qword_1025D4630 != -1)
        {
          sub_1018CEDA0();
        }

        v12 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
          *(buf.__r_.__value_.__r.__words + 4) = v11;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "WsbMetric, regmode, %{public}s, duration, %{public}.1f", &buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CF03C(v8);
        }

        v77 = _NSConcreteStackBlock;
        v78 = 3221225472;
        v79 = sub_10059802C;
        v80 = &unk_102451C38;
        v81 = v11;
        v82 = v8;
        AnalyticsSendEventLazy();
      }

      if (a2)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }

      *(a1 + 728) = v13;
      *(a1 + 696) = Current;
    }

    if (a2)
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      memset(v73, 0, sizeof(v73));
      if (qword_1025D4630 != -1)
      {
        sub_1018CD6B8();
      }

      v14 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
      {
        p_dst = &__dst;
        sub_1000ECD9C(&__dst);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        sub_1000ECD9C(&v72);
        v16 = SHIBYTE(v72.__r_.__value_.__r.__words[2]);
        v17 = v72.__r_.__value_.__r.__words[0];
        sub_1000ECD9C(&__p);
        v18 = &v72;
        if (v16 < 0)
        {
          v18 = v17;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136381187;
        *(buf.__r_.__value_.__r.__words + 4) = p_dst;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v18;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2081;
        v86 = p_p;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "@WsbActive, Create, %{private}s, %{private}s, %{private}s", &buf, 0x20u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v72.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD6E0(&buf);
        v57 = qword_1025D4638;
        v58 = &v72;
        sub_1000ECD9C(&v72);
        if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v58 = v72.__r_.__value_.__r.__words[0];
        }

        sub_1000ECD9C(&__p);
        v59 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        v60 = __p.__r_.__value_.__r.__words[0];
        sub_1000ECD9C(&v70);
        v61 = &__p;
        if (v59 < 0)
        {
          v61 = v60;
        }

        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = &v70;
        }

        else
        {
          v62 = v70.__r_.__value_.__r.__words[0];
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 136381187;
        *(__dst.__r_.__value_.__r.__words + 4) = v58;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2081;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v61;
        HIWORD(__dst.__r_.__value_.__r.__words[2]) = 2081;
        v84 = v62;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v57, 1, "@WsbActive, Create, %{private}s, %{private}s, %{private}s", &__dst, 32);
        v64 = v63;
        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v72.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::programSampleNetworks(BOOL)", "%s\n", v64);
        if (v64 != &buf)
        {
          free(v64);
        }
      }

      if (byte_102637AD8[23] < 0)
      {
        sub_100007244(&__dst, *byte_102637AD8, *&byte_102637AD8[8]);
      }

      else
      {
        __dst = *byte_102637AD8;
      }

      data = xmmword_102637AF0;
      v22 = DWORD1(xmmword_102637AF0);
      v69 = DWORD1(xmmword_102637AF0);
      LODWORD(v70.__r_.__value_.__l.__data_) = xmmword_102637AF0;
      v23 = *(&xmmword_102637B00 + 1);
      v25 = xmmword_102637B00;
      __p.__r_.__value_.__r.__words[0] = v25 >> 64;
      v24 = v25;
      v72.__r_.__value_.__r.__words[0] = xmmword_102637B00;
      v26 = xmmword_102637B10;
      v68 = xmmword_102637B10;
      v27 = BYTE1(xmmword_102637B10);
      v67 = BYTE1(xmmword_102637B10);
      v28 = DWORD1(xmmword_102637B10);
      v65 = 1;
      v66 = DWORD1(xmmword_102637B10);
      v29 = v75;
      if (v75 >= v76)
      {
        v31 = sub_1005A3F9C(&v74, (a1 + 256), &__dst, &v70, &v69, &v65, &v72, &__p, &v68, &v67, &v66);
      }

      else
      {
        v30 = *(a1 + 256);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100007244(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          v22 = v69;
          data = v70.__r_.__value_.__l.__data_;
          v24 = v72.__r_.__value_.__r.__words[0];
          v23 = __p.__r_.__value_.__r.__words[0];
          v26 = v68;
          v27 = v67;
          v28 = v66;
        }

        else
        {
          buf = __dst;
        }

        *v29 = v30;
        v32 = *&buf.__r_.__value_.__l.__data_;
        *(v29 + 24) = *(&buf.__r_.__value_.__l + 2);
        *(v29 + 8) = v32;
        *(v29 + 32) = data;
        *(v29 + 36) = v22;
        *(v29 + 40) = 1;
        *(v29 + 48) = v24;
        *(v29 + 56) = v23;
        *(v29 + 64) = v26;
        *(v29 + 65) = v27;
        *(v29 + 68) = v28;
        *(v29 + 72) = 0;
        v31 = v29 + 88;
        *(v29 + 80) = 0;
      }

      v75 = v31;
      v65 = 6;
      if (v31 >= v76)
      {
        v34 = sub_1005A3F9C(&v74, (a1 + 264), &__dst, &v70, &v69, &v65, &v72, &__p, &v68, &v67, &v66);
      }

      else
      {
        v33 = *(a1 + 264);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100007244(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        }

        else
        {
          buf = __dst;
        }

        v36 = v69;
        v35 = v70.__r_.__value_.__l.__data_;
        v37 = v72.__r_.__value_.__r.__words[0];
        v38 = __p.__r_.__value_.__r.__words[0];
        v39 = v68;
        v40 = v67;
        v41 = v66;
        *v31 = v33;
        v42 = buf.__r_.__value_.__r.__words[2];
        *(v31 + 8) = *&buf.__r_.__value_.__l.__data_;
        *(v31 + 24) = v42;
        *(v31 + 32) = v35;
        *(v31 + 36) = v36;
        *(v31 + 40) = 6;
        *(v31 + 48) = v37;
        *(v31 + 56) = v38;
        *(v31 + 64) = v39;
        *(v31 + 65) = v40;
        *(v31 + 68) = v41;
        *(v31 + 72) = 0;
        v34 = v31 + 88;
        *(v31 + 80) = 0;
      }

      v75 = v34;
      v65 = 11;
      if (v34 >= v76)
      {
        v44 = sub_1005A3F9C(&v74, (a1 + 272), &__dst, &v70, &v69, &v65, &v72, &__p, &v68, &v67, &v66);
      }

      else
      {
        v43 = *(a1 + 272);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100007244(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        }

        else
        {
          buf = __dst;
        }

        v46 = v69;
        v45 = v70.__r_.__value_.__l.__data_;
        v47 = v72.__r_.__value_.__r.__words[0];
        v48 = __p.__r_.__value_.__r.__words[0];
        v49 = v68;
        v50 = v67;
        v51 = v66;
        *v34 = v43;
        v52 = buf.__r_.__value_.__r.__words[2];
        *(v34 + 8) = *&buf.__r_.__value_.__l.__data_;
        *(v34 + 24) = v52;
        *(v34 + 32) = v45;
        *(v34 + 36) = v46;
        *(v34 + 40) = 11;
        *(v34 + 48) = v47;
        *(v34 + 56) = v48;
        *(v34 + 64) = v49;
        *(v34 + 65) = v50;
        *(v34 + 68) = v51;
        *(v34 + 72) = 0;
        v44 = v34 + 88;
        *(v34 + 80) = 0;
      }

      v75 = v44;
      sub_1005980EC(a1, &v74, v73);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      buf.__r_.__value_.__r.__words[0] = v73;
      sub_1000B96B4(&buf);
      buf.__r_.__value_.__r.__words[0] = &v74;
      sub_1000B96B4(&buf);
    }

    else
    {
      if (qword_1025D4630 != -1)
      {
        sub_1018CD6B8();
      }

      v20 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "@WsbActive, Clear", &buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CF168();
      }

      sub_10058E2FC(a1, 0);
    }
  }
}

void sub_100597E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char **a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char *a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  a23 = &a29;
  sub_1000B96B4(&a23);
  a29 = &a32;
  sub_1000B96B4(&a29);
  _Unwind_Resume(a1);
}

uint64_t *sub_100597F68(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

NSDictionary *sub_10059802C(uint64_t a1)
{
  v4[0] = @"active";
  v3[0] = @"mode";
  v3[1] = @"submode";
  v4[1] = [NSString stringWithUTF8String:*(a1 + 32)];
  v3[2] = @"duration";
  v4[2] = [NSNumber numberWithDouble:*(a1 + 40)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

uint64_t sub_1005980EC(CFTypeRef *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1 + 104;
  (*(a1[104] + 2))(a1 + 104);
  if (qword_1025D48A0 != -1)
  {
    sub_1018CD6A4();
  }

  v7 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3);
    v9 = 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3);
    *buf = 134218240;
    v22 = v8;
    v23 = 2048;
    v24 = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "setExitAndEntryScanNetworks, entry, %lu, exit, %lu", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD660(buf);
    v13 = 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3);
    v14 = 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3);
    v17 = 134218240;
    v18 = v13;
    v19 = 2048;
    v20 = v14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "setExitAndEntryScanNetworks, entry, %lu, exit, %lu", &v17, 22);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::setExitAndEntryScanNetworks(const std::vector<CLWifiService_Type::AccessPoint> &, const std::vector<CLWifiService_Type::AccessPoint> &)", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v10 = a1[68];
  if (v10)
  {
    CFRelease(v10);
    a1[68] = 0;
  }

  v11 = a1[67];
  if (v11)
  {
    CFRelease(v11);
    a1[67] = 0;
  }

  if (sub_1005A1FBC(a1, a2, a1 + 67, 1) && sub_1005A1FBC(a1, a3, a1 + 68, 0))
  {
    sub_10059EA50(a1);
  }

  return (*(*v6 + 24))(v6);
}

void sub_1005983A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1005983D8(uint64_t a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    v5 = 0;
    memset(&__p, 0, sizeof(__p));
    goto LABEL_132;
  }

  memset(&__p, 0, sizeof(__p));
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v5 = 0;
    goto LABEL_132;
  }

  v4 = 0;
  v5 = 0;
  theArraya = theArray;
  while (1)
  {
    CFArrayGetValueAtIndex(theArraya, v4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
    }

    Property = WiFiNetworkGetProperty();
    if (!Property || !sub_100005A24(Property, &__p))
    {
      break;
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      break;
    }

    if (qword_1025D4630 != -1)
    {
      sub_1018CD6B8();
    }

    v8 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136381187;
      *&buf[4] = p_p;
      *&buf[12] = 1026;
      *&buf[14] = v4;
      *&buf[18] = 2050;
      *&buf[20] = Count;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "@WsbActive, network, %{private}s, %{public}d, %{public}ld", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD6E0(buf);
      v48 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v48 = __p.__r_.__value_.__r.__words[0];
      }

      *v71 = 136381187;
      *&v71[4] = v48;
      *&v71[12] = 1026;
      *&v71[14] = v4;
      *&v71[18] = 2050;
      *&v71[20] = Count;
      LODWORD(v57) = 28;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "@WsbActive, network, %{private}s, %{public}d, %{public}ld", v71, v57);
      v50 = v49;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::replaceMatchingNetworks(CFArrayRef)", "%s\n", v49);
      if (v50 != buf)
      {
        free(v50);
      }
    }

    v10 = 0;
    v11 = (a1 + 256);
    do
    {
      sub_1000ECD9C(buf);
      v12 = buf[23];
      v14 = *buf;
      v13 = *&buf[8];
      v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &__p;
      }

      else
      {
        v15 = __p.__r_.__value_.__l.__size_;
        v16 = __p.__r_.__value_.__r.__words[0];
      }

      if (buf[23] < 0)
      {
        v17 = *buf;
      }

      else
      {
        v13 = buf[23];
        v17 = buf;
      }

      if (v13 >= v15)
      {
        v18 = v15;
      }

      else
      {
        v18 = v13;
      }

      v19 = v13 == v15;
      if (memcmp(v16, v17, v18))
      {
        v19 = 0;
      }

      if (v12 < 0)
      {
        operator delete(v14);
        if (!v19)
        {
          goto LABEL_101;
        }
      }

      else if (!v19)
      {
        goto LABEL_101;
      }

      v20 = rand();
      if (v20 == -1)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }

      v22 = *(a1 + 280);
      *(a1 + 280) = v22 + 1;
      if (v22)
      {
        v23 = "56:78";
      }

      else
      {
        v23 = "12:34";
      }

      sub_10000EC00(v71, v23);
      std::to_string(&v63, (v21 >> 6) % 99);
      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24.__i_ = &v63;
      }

      else
      {
        v24.__i_ = v63.__r_.__value_.__r.__words[0];
      }

      std::string::insert(&v63, v24, 58);
      v64 = v63;
      memset(&v63, 0, sizeof(v63));
      std::string::push_back(&v64, 58);
      v65 = v64;
      memset(&v64, 0, sizeof(v64));
      std::to_string(&v62, (v21 >> 4) % 99);
      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v62;
      }

      else
      {
        v25 = v62.__r_.__value_.__r.__words[0];
      }

      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v26 = v62.__r_.__value_.__l.__size_;
      }

      v27 = std::string::append(&v65, v25, v26);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v66.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v66.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      std::string::push_back(&v66, 58);
      v67 = v66;
      memset(&v66, 0, sizeof(v66));
      std::to_string(&v61, (v21 >> 2) % 99);
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v61;
      }

      else
      {
        v29 = v61.__r_.__value_.__r.__words[0];
      }

      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = v61.__r_.__value_.__l.__size_;
      }

      v31 = std::string::append(&v67, v29, v30);
      v32 = *&v31->__r_.__value_.__l.__data_;
      v68.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&v68.__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      std::string::push_back(&v68, 58);
      v70 = v68;
      memset(&v68, 0, sizeof(v68));
      std::to_string(&v60, v21 % 99);
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v60;
      }

      else
      {
        v33 = v60.__r_.__value_.__r.__words[0];
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = v60.__r_.__value_.__l.__size_;
      }

      v35 = std::string::append(&v70, v33, v34);
      v36 = *&v35->__r_.__value_.__l.__data_;
      *&buf[16] = *(&v35->__r_.__value_.__l + 2);
      *buf = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      if (buf[23] >= 0)
      {
        v37 = buf;
      }

      else
      {
        v37 = *buf;
      }

      if (buf[23] >= 0)
      {
        v38 = buf[23];
      }

      else
      {
        v38 = *&buf[8];
      }

      std::string::append(v71, v37, v38);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      *v11 = sub_100196E8C(v71);
      if (qword_1025D4630 != -1)
      {
        sub_1018CD6B8();
      }

      v39 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000ECD9C(&v70);
        v40 = &v70;
        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v40 = v70.__r_.__value_.__r.__words[0];
        }

        v41 = *(a1 + 280);
        *buf = 67175171;
        *&buf[4] = v10;
        *&buf[8] = 2081;
        *&buf[10] = v40;
        *&buf[18] = 1026;
        *&buf[20] = v41;
        _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEFAULT, "@WsbActive, Match, %{private}d, newmac, %{private}s, matches, %{public}d, #CloneMe", buf, 0x18u);
        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD6E0(buf);
        v42 = qword_1025D4638;
        sub_1000ECD9C(&v68);
        v43 = &v68;
        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v43 = v68.__r_.__value_.__r.__words[0];
        }

        v44 = *(a1 + 280);
        LODWORD(v70.__r_.__value_.__l.__data_) = 67175171;
        HIDWORD(v70.__r_.__value_.__r.__words[0]) = v10;
        LOWORD(v70.__r_.__value_.__r.__words[1]) = 2081;
        *(&v70.__r_.__value_.__r.__words[1] + 2) = v43;
        WORD1(v70.__r_.__value_.__r.__words[2]) = 1026;
        HIDWORD(v70.__r_.__value_.__r.__words[2]) = v44;
        LODWORD(v57) = 24;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v42, 0, "@WsbActive, Match, %{private}d, newmac, %{private}s, matches, %{public}d, #CloneMe", &v70, v57);
        v46 = v45;
        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v68.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::replaceMatchingNetworks(CFArrayRef)", "%s\n", v46);
        if (v46 != buf)
        {
          free(v46);
        }
      }

      if ((v71[23] & 0x80000000) != 0)
      {
        operator delete(*v71);
      }

      ++v5;
LABEL_101:
      ++v10;
      ++v11;
    }

    while (v10 != 3);
    if (v5)
    {
      if (qword_1025D4630 != -1)
      {
        sub_1018CD6B8();
      }

      v47 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        *&buf[4] = v5;
        _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEFAULT, "WsbClients, status, samplematch, %{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD6E0(buf);
        *v71 = 67240192;
        *&v71[4] = v5;
        LODWORD(v57) = 8;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "WsbClients, status, samplematch, %{public}d", v71, v57);
        v52 = v51;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::replaceMatchingNetworks(CFArrayRef)", "%s\n", v51);
        if (v52 != buf)
        {
          free(v52);
        }
      }
    }

    if (++v4 == Count)
    {
      goto LABEL_132;
    }
  }

  if (qword_1025D4630 != -1)
  {
    sub_1018CD6B8();
  }

  v53 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *buf = 67240448;
    *&buf[4] = v4;
    *&buf[8] = 2050;
    *&buf[10] = Count;
    _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_INFO, "@WsbActive, network, invalid, %{public}d, %{public}ld", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD6E0(buf);
    *v71 = 67240448;
    *&v71[4] = v4;
    *&v71[8] = 2050;
    *&v71[10] = Count;
    LODWORD(v57) = 18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 1, "@WsbActive, network, invalid, %{public}d, %{public}ld", v71, v57);
    v55 = v54;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::replaceMatchingNetworks(CFArrayRef)", "%s\n", v54);
    if (v55 != buf)
    {
      free(v55);
    }
  }

LABEL_132:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5 != 0;
}

void sub_100598E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100598FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiManagerBackgroundScanCacheCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiManagerBackgroundScanCacheCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  v10 = [*(a4 + 32) silo];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1005A422C;
  v11[3] = &unk_1024605D8;
  v11[4] = a4;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  [v10 sync:v11];
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1005991F8(uint64_t a1, uint64_t a2)
{
  sub_100599240(*(a1 + 32), a2, *(a1 + 48));
  CFRelease(*(a1 + 40));
  v3 = *(a1 + 48);

  CFRelease(v3);
}

uint64_t sub_100599240(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 104;
  v26 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104, a2);
  v27 = 256;
  v6 = _os_activity_create(dword_100000000, "CL: onWiFiDeviceClientAttachedCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v37 = 2082;
    v38 = "";
    v39 = 2082;
    v40 = "activity";
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiDeviceClientAttachedCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (a3)
  {
    if (a1[39])
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v8 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        InterfaceName = WiFiDeviceClientGetInterfaceName();
        v10 = buf;
        sub_1000238CC(InterfaceName, buf);
        if (SBYTE3(v40) < 0)
        {
          v10 = *buf;
        }

        v11 = WiFiDeviceClientGetInterfaceName();
        sub_1000238CC(v11, __p);
        if (v24 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        *v28 = 136315394;
        *&v28[4] = v10;
        v29 = 2080;
        v30 = v12;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "WifiMgr, prefer existing device, %s, ignoring %s", v28, 0x16u);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE3(v40) < 0)
        {
          operator delete(*buf);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_36;
      }

      sub_1018CD5B4(buf);
      v13 = qword_1025D4628;
      v14 = WiFiDeviceClientGetInterfaceName();
      v15 = __p;
      sub_1000238CC(v14, __p);
      if (v24 < 0)
      {
        v15 = __p[0];
      }

      v16 = WiFiDeviceClientGetInterfaceName();
      sub_1000238CC(v16, v28);
      if (v31 >= 0)
      {
        v17 = v28;
      }

      else
      {
        v17 = *v28;
      }

      v32 = 136315394;
      v33 = v15;
      v34 = 2080;
      v35 = v17;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v13, 0, "WifiMgr, prefer existing device, %s, ignoring %s", &v32, 22);
      v19 = v18;
      if (v31 < 0)
      {
        operator delete(*v28);
      }

      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientAttachedCallback(WiFiManagerClientRef, WiFiDeviceClientRef)", "%s\n", v19);
      if (v19 == buf)
      {
        goto LABEL_36;
      }

LABEL_41:
      free(v19);
      goto LABEL_36;
    }

    sub_1005915A8(a1);
    if (a1[39] && a1[38])
    {
      sub_100592C18(a1, 1, 1);
      *buf = 0;
      (*(*a1 + 144))(a1, buf, 0, 0xFFFFFFFFLL);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v20 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "WifiMgr, onWifiDeviceClientAttachedCallback, NULL device", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(buf);
      LOWORD(__p[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "WifiMgr, onWifiDeviceClientAttachedCallback, NULL device", __p, 2);
      v19 = v22;
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiDeviceClientAttachedCallback(WiFiManagerClientRef, WiFiDeviceClientRef)", "%s\n", v22);
      if (v19 != buf)
      {
        goto LABEL_41;
      }
    }
  }

LABEL_36:
  os_activity_scope_leave(&state);
  return (*(*v5 + 24))(v5);
}

void sub_100599720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, os_activity_scope_state_s state, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  os_activity_scope_leave(&state);
  sub_1017EC98C(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_100599794(uint64_t a1)
{
  v2 = a1 + 832;
  v22 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v23 = 256;
  v3 = _os_activity_create(dword_100000000, "CL: onWiFiDeviceClientPowerCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v26 = 2082;
    v27 = "";
    v28 = 2082;
    v29 = "activity";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiDeviceClientPowerCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  sub_1000F8F80(a1 + 560, &byte_102637A70);
  v15 = 0;
  v18 = 0;
  v14 = -256;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  if (sub_100599BF8(a1, &v14))
  {
    *(a1 + 552) = v14;
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 552);
      *buf = 67240192;
      *&buf[4] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "WifiMgr, onWiFiDeviceClientPowerCallback, fIsWifiPowered, %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      v9 = *(a1 + 552);
      v24[0] = 67240192;
      v24[1] = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiMgr, onWiFiDeviceClientPowerCallback, fIsWifiPowered, %{public}d", v24, 8);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientPowerCallback(WiFiDeviceClientRef)", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    sub_1005961D0(a1);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "WifiService, could not retrieve power state", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(buf);
      LOWORD(v24[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "WifiService, could not retrieve power state", v24, 2);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiDeviceClientPowerCallback(WiFiDeviceClientRef)", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    *(a1 + 552) = v14;
  }

  *buf = v19 + 8;
  sub_1000B96B4(buf);
  if (v18 == 1 && v17 < 0)
  {
    operator delete(__p);
  }

  os_activity_scope_leave(&state);
  return (*(*v2 + 24))(v2);
}

void sub_100599BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, os_activity_scope_state_s state, ...)
{
  va_start(va, state);
  sub_100318B88(&a12);
  os_activity_scope_leave(&state);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100599BF8(uint64_t a1, BOOL *a2)
{
  v4 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  if (*(a1 + 296))
  {
    if (*(a1 + 312))
    {
      v5 = WiFiDeviceClientGetPower() != 0;
      *a2 = v5;
      *(a1 + 552) = v5;
      if (qword_1025D4620 != -1)
      {
        sub_1018CD624();
      }

      v6 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 552);
        *buf = 67240192;
        v21 = v7;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "WifiMgr, WiFiDeviceClientGetPower, %{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD5B4(buf);
        v12 = *(a1 + 552);
        v19[0] = 67240192;
        v19[1] = v12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiMgr, WiFiDeviceClientGetPower, %{public}d", v19, 8);
        v14 = v13;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::queryPowerState(BOOL &)", "%s\n", v13);
        if (v14 != buf)
        {
          free(v14);
        }
      }

      v8 = 1;
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD624();
      }

      v10 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "WifiService, queryPowerState, fWifiDevice is NULL", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD5B4(buf);
        LOWORD(v19[0]) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiService, queryPowerState, fWifiDevice is NULL", v19, 2);
        v18 = v17;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::queryPowerState(BOOL &)", "%s\n", v17);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      v8 = 0;
      *(a1 + 552) = 0;
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "WifiService, queryPowerState, fDpcSource is NULL", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      LOWORD(v19[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiService, queryPowerState, fDpcSource is NULL", v19, 2);
      v16 = v15;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::queryPowerState(BOOL &)", "%s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v8 = 0;
  }

  (*(*v4 + 24))(v4);
  return v8;
}

void sub_10059A008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10059A040(double *a1)
{
  v2 = a1 + 104;
  v7 = a1 + 104;
  (*(*(a1 + 104) + 16))(a1 + 104);
  v8 = 256;
  v3 = _os_activity_create(dword_100000000, "CL: onWiFiDeviceClientResumeScanCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "activity";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiDeviceClientResumeScanCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  sub_100063E40(a1);
  if (a1[51] >= 0.0)
  {
    a1[51] = -1.0;
  }

  *buf = 2;
  (*(*a1 + 144))(a1, buf, 0, 0xFFFFFFFFLL);
  os_activity_scope_leave(&state);
  return (*(*v2 + 24))(v2);
}

uint64_t sub_10059A24C(void *a1, uint64_t a2, const __CFDictionary *a3)
{
  v5 = a1 + 104;
  v44 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104, a2);
  v45 = 256;
  v6 = _os_activity_create(dword_100000000, "CL: onWiFiDeviceClientLinkExtendedCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiDeviceClientLinkExtendedCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  sub_100063E40(a1);
  v8 = a1[40];
  if (v8)
  {
    CFRelease(v8);
    a1[40] = 0;
  }

  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"LINK_CHANGED_NETWORK");
    a1[40] = Value;
    if (Value)
    {
      CFRetain(Value);
    }
  }

  sub_100595FAC(a1);
  v36 = -256;
  LOBYTE(v37[0]) = 0;
  v40 = 0;
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  if (sub_1000ECA98(a1))
  {
    __p[0] = qword_102637AD0;
    if (byte_102637AD8[23] < 0)
    {
      sub_100007244(&__p[1], *byte_102637AD8, *&byte_102637AD8[8]);
    }

    else
    {
      *&__p[1] = *byte_102637AD8;
      v31 = *&byte_102637AD8[16];
    }

    v32 = xmmword_102637AF0;
    v33 = xmmword_102637B00;
    v34 = xmmword_102637B10;
    v35 = qword_102637B20;
    if ((sub_1002DFF48(a1, __p) & 1) == 0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v10 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "WifiService, linkextend1 failed", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CD5B4(buf);
        LOWORD(v46) = 0;
        LODWORD(v29) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "WifiService, linkextend1 failed", &v46, v29, __p[0]);
        v26 = v25;
        sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiDeviceClientLinkExtendedCallback(WiFiDeviceClientRef, CFDictionaryRef)", "%s\n", v25);
        if (v26 != buf)
        {
          free(v26);
        }
      }
    }

    sub_1002DEB0C(v37, __p);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[1]);
    }
  }

  BYTE2(v42) = 0;
  if (a3)
  {
    sub_100005548(__p, a3);
    sub_10001CBC0(__p, @"LINKDOWN_IS_INVOL", &v42 + 2);
    v11 = v40;
    if (v39 <= 0)
    {
      v11 = 0;
    }

    HIBYTE(v29) = v11;
    sub_10001CBC0(__p, @"LINK_CHANGED_IS_LINKDOWN", &v29 + 7);
    if (HIBYTE(v29) == 1)
    {
      sub_1000F8F80(v37, &byte_102637A70);
    }

    else if (v40 != 1 || v39 <= 0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v15 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "WifiService, linkextend2 failed", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CD5B4(buf);
        LOWORD(v46) = 0;
        LODWORD(v29) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "WifiService, linkextend2 failed", &v46, v29);
        v28 = v27;
        sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiDeviceClientLinkExtendedCallback(WiFiDeviceClientRef, CFDictionaryRef)", "%s\n", v27);
        if (v28 != buf)
        {
          free(v28);
        }
      }
    }

    sub_1004FFDC0(__p, "linkChangedEventDataDict");
    sub_100005DA4();
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v12 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "WifiMgr, onWiFiDeviceClientLinkExtendedCallback, linkChangedEventDataDict null", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(buf);
      LOWORD(__p[0]) = 0;
      LODWORD(v29) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "WifiMgr, onWiFiDeviceClientLinkExtendedCallback, linkChangedEventDataDict null", __p, v29);
      v14 = v13;
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiDeviceClientLinkExtendedCallback(WiFiDeviceClientRef, CFDictionaryRef)", "%s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  memset(__p, 0, sizeof(__p));
  if (v40 == 1 && v39 >= 1)
  {
    v46 = v37[0];
    sub_1000ECD9C(buf);
    v16 = v39;
    *__p = *buf;
    __p[2] = *&buf[16];
  }

  else
  {
    v16 = DWORD2(xmmword_102637AF0);
    HIBYTE(__p[2]) = 3;
    qmemcpy(__p, "N/A", 3);
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v17 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v40;
    if (v39 <= 0)
    {
      v18 = 0;
    }

    v19 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v19 = __p[0];
    }

    *buf = 67240707;
    *&buf[4] = v18;
    *&buf[8] = 2081;
    *&buf[10] = v19;
    *&buf[18] = 1025;
    *&buf[20] = v16;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "@ClxLink, associate, %{public}d, %{private}s, %{private}d", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v21 = v40;
    if (v39 <= 0)
    {
      v21 = 0;
    }

    v22 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v22 = __p[0];
    }

    LODWORD(v46) = 67240707;
    HIDWORD(v46) = v21;
    v47 = 2081;
    v48 = v22;
    v49 = 1025;
    v50 = v16;
    LODWORD(v29) = 24;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "@ClxLink, associate, %{public}d, %{private}s, %{private}d", &v46, v29);
    v24 = v23;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientLinkExtendedCallback(WiFiDeviceClientRef, CFDictionaryRef)", "%s\n", v23);
    if (v24 != buf)
    {
      free(v24);
    }
  }

  *buf = 6;
  (*(*a1 + 152))(a1, buf, &v36, 1, 0xFFFFFFFFLL, 0);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  *buf = &v41[8];
  sub_1000B96B4(buf);
  if (v40 == 1 && v38 < 0)
  {
    operator delete(v37[1]);
  }

  os_activity_scope_leave(&state);
  return (*(*v5 + 24))(v5);
}

void sub_10059AAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, os_activity_scope_state_s state, char a47)
{
  sub_100005DA4();
  sub_100318B88(&a28);
  os_activity_scope_leave(&state);
  sub_1017EC98C(&a47);
  _Unwind_Resume(a1);
}

uint64_t sub_10059AB64(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + 104;
  v51 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104, a2);
  v52 = 256;
  v8 = _os_activity_create(dword_100000000, "CL: onWiFiDeviceClientBssidChangeCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiDeviceClientBssidChangeCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  sub_100063E40(a1);
  sub_100595FAC(a1);
  v41 = -256;
  v42[0] = 0;
  v46 = 0;
  v47 = 0u;
  v48 = 0u;
  v49 = 0;
  v34 = qword_102637AD0;
  v10 = &v34;
  if (byte_102637AD8[23] < 0)
  {
    sub_100007244(&v35, *byte_102637AD8, *&byte_102637AD8[8]);
  }

  else
  {
    v35 = *byte_102637AD8;
    v36 = *&byte_102637AD8[16];
  }

  v37 = xmmword_102637AF0;
  v38 = xmmword_102637B00;
  v39 = xmmword_102637B10;
  v40 = qword_102637B20;
  v11 = sub_1002DFF48(a1, &v34);
  v12 = sub_1000ECA98(a1);
  if (v11 != v12)
  {
    sub_1018CF338();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/WifiService/CLWifiService.mm", 1315, "onWiFiDeviceClientBssidChangeCallback");
    __break(1u);
LABEL_62:
    sub_1018CD58C();
    goto LABEL_44;
  }

  v3 = &v41;
  if (v11)
  {
    v12 = sub_1002DEB0C(v42, &v34);
  }

  if (sub_1002DEC54(v12, a3, &v34, 0))
  {
    sub_1002DEB0C(v42, &v34);
    if (v11)
    {
      Property = WiFiNetworkGetProperty();
      if (Property)
      {
        v14 = CFEqual(Property, kCFBooleanTrue) != 0;
      }

      else
      {
        v14 = 1;
      }

      v45 = v14;
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v18 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_100C5CFB0(v42, buf);
      v19 = buf[23] >= 0 ? buf : *buf;
      *v53 = 136380675;
      *&v53[4] = v19;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "WifiMgr, associated state changed to %{private}s", v53, 0xCu);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      v28 = qword_1025D4628;
      sub_100C5CFB0(v42, v53);
      if (SBYTE3(v55) >= 0)
      {
        v29 = v53;
      }

      else
      {
        v29 = *v53;
      }

      LODWORD(__p[0]) = 136380675;
      *(__p + 4) = v29;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v28, 0, "WifiMgr, associated state changed to %{private}s", __p, 12);
      v17 = v30;
      if (SBYTE3(v55) < 0)
      {
        operator delete(*v53);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientBssidChangeCallback(WiFiDeviceClientRef, WiFiNetworkRef)", "%s\n", v17);
      if (v17 != buf)
      {
LABEL_75:
        free(v17);
      }
    }
  }

  else
  {
    sub_1000F8F80(v42, &byte_102637A70);
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v15 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "WifiMgr, onWiFiDeviceClientBssidChangeCallback, invalid roam network", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(buf);
      *v53 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "WifiMgr, onWiFiDeviceClientBssidChangeCallback, invalid roam network", v53, 2);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiDeviceClientBssidChangeCallback(WiFiDeviceClientRef, WiFiNetworkRef)", "%s\n", v16);
      if (v17 != buf)
      {
        goto LABEL_75;
      }
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v61 = 0;
  sub_10000EC00(v32, "");
  if (v11)
  {
    *v53 = v34;
    sub_10018F0D0(buf);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *buf;
    v61 = *&buf[16];
    v4 = DWORD2(v37);
    if (SHIBYTE(v36) < 0)
    {
      sub_100007244(buf, v35, *(&v35 + 1));
    }

    else
    {
      *buf = v35;
      *&buf[16] = v36;
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32[0]);
    }

    *v32 = *buf;
    v33 = *&buf[16];
    LODWORD(v10) = v37;
  }

  else
  {
    LODWORD(v10) = 0;
    v4 = 0;
  }

  if (qword_1025D4620 != -1)
  {
    goto LABEL_62;
  }

LABEL_44:
  v20 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v21 = __p;
    if (v61 < 0)
    {
      v21 = __p[0];
    }

    v22 = v32;
    if (v33 < 0)
    {
      v22 = v32[0];
    }

    *buf = 67110147;
    *&buf[4] = v11;
    *&buf[8] = 2081;
    *&buf[10] = v21;
    *&buf[18] = 2081;
    *&buf[20] = v22;
    v63 = 1024;
    v64 = v4;
    v65 = 1024;
    v66 = v10;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "WifiMgr, roaming, associated, %d, ap, %{private}s, ssid, %{private}s, %d, %d", buf, 0x28u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v24 = __p;
    if (v61 < 0)
    {
      v24 = __p[0];
    }

    v25 = v32;
    if (v33 < 0)
    {
      v25 = v32[0];
    }

    *v53 = 67110147;
    *&v53[4] = v11;
    *&v53[8] = 2081;
    *&v53[10] = v24;
    v54 = 2081;
    v55 = v25;
    v56 = 1024;
    v57 = v4;
    v58 = 1024;
    v59 = v10;
    LODWORD(v31) = 40;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiMgr, roaming, associated, %d, ap, %{private}s, ssid, %{private}s, %d, %d", v53, v31);
    v27 = v26;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientBssidChangeCallback(WiFiDeviceClientRef, WiFiNetworkRef)", "%s\n", v26);
    if (v27 != buf)
    {
      free(v27);
    }
  }

  *buf = 7;
  (*(*a1 + 152))(a1, buf, &v41, 0, 0xFFFFFFFFLL, 0);
  sub_1000F8F80((a1 + 70), (v3 + 4));
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }

  *buf = v3 + 56;
  sub_1000B96B4(buf);
  if (v46 == 1 && v44 < 0)
  {
    operator delete(v43);
  }

  os_activity_scope_leave(&state);
  return (*(*v7 + 24))(v7);
}

void sub_10059B3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, os_activity_scope_state_s state, char a50)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_100318B88(&a31);
  os_activity_scope_leave(&state);
  sub_1017EC98C(&a50);
  _Unwind_Resume(a1);
}

uint64_t sub_10059B46C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a1 + 832;
  v17 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832, a2);
  v18 = 256;
  v6 = _os_activity_create(dword_100000000, "CL: onWiFiDeviceClientBgScanSuspendResumeCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2082;
    v27 = "activity";
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiDeviceClientBgScanSuspendResumeCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }
  }

  v8 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 416);
    *buf = 67240448;
    v23 = a3;
    v24 = 2050;
    v25 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "WifiMgr, resume, %{public}d, timestamp, %{public}.1f", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v13 = *(a1 + 416);
    v19[0] = 67240448;
    v19[1] = a3;
    v20 = 2050;
    v21 = v13;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiMgr, resume, %{public}d, timestamp, %{public}.1f", v19, 18);
    v15 = v14;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientBgScanSuspendResumeCallback(WiFiDeviceClientRef, Boolean)", "%s\n", v14);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  v10 = *(a1 + 416);
  if (a3)
  {
    if (v10 < 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
LABEL_13:
      *(a1 + 416) = Current;
    }
  }

  else
  {
    Current = -1.0;
    if (v10 >= 0.0)
    {
      goto LABEL_13;
    }
  }

  os_activity_scope_leave(&state);
  return (*(*v5 + 24))(v5);
}

void sub_10059B74C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_activity_scope_state_s state, ...)
{
  va_start(va, state);
  os_activity_scope_leave(&state);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_10059B784(uint64_t a1, uint64_t a2, int a3)
{
  v8 = -256;
  v9 = 0;
  v12 = 0;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  sub_100063E40(a1);
  BYTE3(v14) = a3;
  if (qword_1025D4620 != -1)
  {
    sub_1018CD624();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "WifiMgr, network critical, %d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v15[0] = 67109120;
    v15[1] = a3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "WifiMgr, network critical, %d", v15);
    v7 = v6;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClient24GHzNetworkInCriticalStateCallback(WiFiDeviceClientRef, BOOL)", "%s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  *buf = 13;
  (*(*a1 + 152))(a1, buf, &v8, 1, 0xFFFFFFFFLL, 0);
  *buf = v13 + 8;
  sub_1000B96B4(buf);
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }
}

void sub_10059B998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100318B88(va);
  _Unwind_Resume(a1);
}

void sub_10059B9BC(uint64_t a1, uint64_t a2, const __CFDictionary *a3, const __CFArray *a4, int a5)
{
  v9 = _os_activity_create(dword_100000000, "CL: onWiFiDeviceClientScanCacheCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v9, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v10 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiDeviceClientScanCacheCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (!a4 || a5)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v13 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240448;
      *&buf[4] = a5;
      *&buf[8] = 2050;
      *&buf[10] = a4;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "WifiMgr, error, cache callback, %{public}d, %{public}p", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(buf);
      *v28 = 67240448;
      *&v28[4] = a5;
      *&v28[8] = 2050;
      *&v28[10] = a4;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "WifiMgr, error, cache callback, %{public}d, %{public}p", v28, 18);
      v15 = v14;
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiDeviceClientScanCacheCallback(WiFiDeviceClientRef, CFDictionaryRef, CFArrayRef, WiFiError)", "%s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  else
  {
    sub_100063E40(a1);
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v11 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      Count = CFArrayGetCount(a4);
      *buf = 134349056;
      *&buf[4] = Count;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "WifiMgr, onWiFiDeviceClientScanCacheCallback, %{public}lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      v16 = qword_1025D4628;
      v17 = CFArrayGetCount(a4);
      *v28 = 134349056;
      *&v28[4] = v17;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v16, 1, "WifiMgr, onWiFiDeviceClientScanCacheCallback, %{public}lu", v28, 12);
      v19 = v18;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientScanCacheCallback(WiFiDeviceClientRef, CFDictionaryRef, CFArrayRef, WiFiError)", "%s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    v24 = a1 + 832;
    (*(*(a1 + 832) + 16))();
    v26 = 256;
    sub_100005548(v23, a3);
    if ((atomic_load_explicit(&qword_102656F70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656F70))
    {
      sub_10001CAF4(buf);
      v28[0] = 0;
      v20 = sub_10001CB4C(*buf, "printScanResultsCSV", v28, 0xFFFFFFFFLL);
      v21 = v20 & v28[0];
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }

      byte_102656F68 = v21;
      __cxa_guard_release(&qword_102656F70);
    }

    if (byte_102656F68 == 1)
    {
      sub_1004FFDC0(v23, "scanResults");
    }

    buf[0] = 5;
    sub_1002DC1B0((a1 + 764), buf);
    ++*(a1 + 764);
    *(a1 + 432) = 5;
    *(a1 + 440) = CFAbsoluteTimeGetCurrent();
    sub_10014E54C((a1 + 448));
    sub_1002E0A48(a1, a4, (a1 + 400), (a1 + 448), "cache");
    sub_1002E2588(a1, (a1 + 448), *(a1 + 432));
    if (*(a1 + 456) != *(a1 + 448))
    {
      buf[0] = 0;
      buf[8] = 0;
      v32 = 0;
      memset(v33, 0, sizeof(v33));
      v34 = 0;
      buf[1] = *(a1 + 432);
      (*(*a1 + 224))(a1, &v33[8], v33);
      sub_1002E1CB0(a1, v28);
      if (v30 == 1)
      {
        sub_1002DEB0C(&buf[8], v28);
      }

      v22 = 3;
      (*(*a1 + 152))(a1, &v22, buf, 1, 0xFFFFFFFFLL, 0);
      [*(a1 + 672) processEventTime:CFAbsoluteTimeGetCurrent()];
      if (v30 == 1 && v29 < 0)
      {
        operator delete(*&v28[8]);
      }

      *v28 = &v33[8];
      sub_1000B96B4(v28);
      if (v32 == 1 && buf[39] < 0)
      {
        operator delete(*&buf[16]);
      }
    }

    sub_100005DA4();
    if (HIBYTE(v26) == 1)
    {
      if (v26)
      {
        pthread_mutex_unlock(v25);
      }

      else
      {
        (*(*v24 + 24))(v24);
      }
    }
  }

  os_activity_scope_leave(&state);
}

void sub_10059BFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, os_activity_scope_state_s state, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  v38 = *(v36 + 8);
  if (v38)
  {
    sub_100008080(v38);
  }

  __cxa_guard_abort(&qword_102656F70);
  sub_100005DA4();
  sub_1017EC98C(&a14);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_10059C0B4(uint64_t a1, uint64_t a2, uint64_t a3, const __CFArray *a4)
{
  v120 = a1 + 832;
  (*(*(a1 + 832) + 16))();
  v122 = 256;
  v5 = _os_activity_create(dword_100000000, "CL: onWiFiManagerBackgroundScanCacheCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiManagerBackgroundScanCacheCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (qword_1025D4630 != -1)
  {
    sub_1018CD6B8();
  }

  v7 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 284);
    v9 = *(a1 + 244);
    v10 = *(a1 + 245);
    v11 = *(a1 + 246);
    v13 = *(a1 + 236);
    v12 = *(a1 + 240);
    *buf = 67241472;
    *&buf[4] = v8;
    *&buf[8] = 1026;
    *&buf[10] = v12;
    *&buf[14] = 1026;
    *&buf[16] = v9;
    *&buf[20] = 1026;
    *&buf[22] = v10;
    *&buf[26] = 1026;
    *&buf[28] = v11;
    *&buf[32] = 1026;
    v131 = v13;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "WsbReg, snap, clients, %{public}d, interval, %{public}d, active, %{public}d, rollover, %{public}d, sample, %{public}d, state, %{public}d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD6E0(buf);
    v83 = *(a1 + 284);
    v84 = *(a1 + 244);
    v85 = *(a1 + 245);
    v86 = *(a1 + 246);
    v88 = *(a1 + 236);
    v87 = *(a1 + 240);
    *v125 = 67241472;
    *&v125[4] = v83;
    *&v125[8] = 1026;
    *&v125[10] = v87;
    *&v125[14] = 1026;
    *&v125[16] = v84;
    *&v125[20] = 1026;
    *&v125[22] = v85;
    *&v125[26] = 1026;
    *&v125[28] = v86;
    LOWORD(v126) = 1026;
    *(&v126 + 2) = v88;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "WsbReg, snap, clients, %{public}d, interval, %{public}d, active, %{public}d, rollover, %{public}d, sample, %{public}d, state, %{public}d", v125, 38);
    v90 = v89;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v89);
    if (v90 != buf)
    {
      free(v90);
    }
  }

  if (!sub_100596AC4(a1))
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018CD6B8();
    }

    v14 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "@WsbCb, error, got WSB scans but not ready for WSB scans? Please audit the logic", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD6E0(buf);
      *v125 = 0;
      LODWORD(v103) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 16, "@WsbCb, error, got WSB scans but not ready for WSB scans? Please audit the logic", v125, v103);
      v94 = v93;
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v93);
      if (v94 != buf)
      {
        free(v94);
      }
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (!a4)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018CD6B8();
    }

    v30 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "@WsbCb, count, 0", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD6E0(buf);
      *v125 = 0;
      LODWORD(v103) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@WsbCb, count, 0", v125, v103);
      v100 = v99;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v99);
      if (v100 != buf)
      {
        free(v100);
      }
    }

    v104 = 0;
    goto LABEL_142;
  }

  Count = CFArrayGetCount(a4);
  [(__CFArray *)a4 objectAtIndexedSubscript:((Count << 32) - 0x100000000) >> 32];
  IntProperty = WiFiNetworkGetIntProperty();
  Property = WiFiNetworkGetProperty();
  v104 = Count;
  if (Current - IntProperty > *(a1 + 504) || 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 520) - *(a1 + 512)) >> 3) != Count)
  {
    v25 = sub_10001A3E8(Property, v19);
    v27 = sub_10071A7C4(v25, v26);
    if (qword_1025D4630 != -1)
    {
      sub_1018CD6B8();
    }

    v28 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240448;
      *&buf[4] = Count;
      *&buf[8] = 2050;
      *&buf[10] = Current;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "@WsbCb, count, %{public}d, currtime, %{public}.1f", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD6E0(buf);
      *v125 = 67240448;
      *&v125[4] = Count;
      *&v125[8] = 2050;
      *&v125[10] = Current;
      LODWORD(v103) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@WsbCb, count, %{public}d, currtime, %{public}.1f", v125, v103);
      v96 = v95;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v95);
      if (v96 != buf)
      {
        free(v96);
      }

      if ((Count & 0x80000000) == 0)
      {
LABEL_33:
        if (v27 >= Count)
        {
          goto LABEL_39;
        }
      }
    }

    else if ((Count & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    if (qword_1025D4630 != -1)
    {
      sub_1018CD6B8();
    }

    v29 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240448;
      *&buf[4] = Count;
      *&buf[8] = 1026;
      *&buf[10] = v27;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_ERROR, "@WsbCb, out of range, %{public}d, max, %{public}d, #CloneMe", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD6E0(buf);
      *v125 = 67240448;
      *&v125[4] = Count;
      *&v125[8] = 1026;
      *&v125[10] = v27;
      LODWORD(v103) = 14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 16, "@WsbCb, out of range, %{public}d, max, %{public}d, #CloneMe", v125, v103);
      v102 = v101;
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v101);
      if (v102 != buf)
      {
        free(v102);
      }
    }

LABEL_39:
    *(a1 + 504) = Current;
    sub_10014E54C((a1 + 512));
    memset(&v118, 0, sizeof(v118));
    if (byte_102637AD8[23] < 0)
    {
      sub_100007244(&__dst, *byte_102637AD8, *&byte_102637AD8[8]);
      *v125 = qword_102637AD0;
      if (byte_102637AD8[23] < 0)
      {
        sub_100007244(&v125[8], *byte_102637AD8, *&byte_102637AD8[8]);
LABEL_49:
        v126 = xmmword_102637AF0;
        v127 = xmmword_102637B00;
        v128 = xmmword_102637B10;
        v129 = qword_102637B20;
        if (Count < 1)
        {
          v75 = 0;
        }

        else
        {
          v31 = 0;
          v106 = 0;
          do
          {
            if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
            {
              *v118.__r_.__value_.__l.__data_ = 0;
              v118.__r_.__value_.__l.__size_ = 0;
            }

            else
            {
              v118.__r_.__value_.__s.__data_[0] = 0;
              *(&v118.__r_.__value_.__s + 23) = 0;
            }

            v32 = a4;
            v33 = [(__CFArray *)a4 objectAtIndexedSubscript:v31];
            v34 = WiFiNetworkGetProperty();
            sub_100005A24(v34, &v118);
            v35 = WiFiNetworkGetIntProperty();
            v36 = WiFiNetworkGetIntProperty();
            if (v33 && WiFiNetworkGetChannel())
            {
              v37 = off_102460F98[WiFiNetworkGetOperatingBand()];
            }

            else
            {
              v37 = "NA";
            }

            sub_10000EC00(v115, v37);
            v38 = WiFiNetworkGetIntProperty();
            v39 = WiFiNetworkGetIntProperty();
            IsApplePersonalHotspot = WiFiNetworkIsApplePersonalHotspot();
            v114 = 0;
            v41 = WiFiNetworkGetProperty();
            if (!v41 || (sub_1002DEACC(v41, &v114) & 1) == 0)
            {
              v114 = 0;
            }

            v42 = sub_100196E8C(&v118);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100007244(&v107, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
            }

            else
            {
              v107 = __dst;
            }

            __p = v107;
            memset(&v107, 0, sizeof(v107));
            v108 = v42;
            LODWORD(v110) = v35;
            *(&v110 + 4) = __PAIR64__(v36, v39);
            *&v111 = v38;
            *(&v111 + 1) = Current - v38;
            LOBYTE(v112) = IsApplePersonalHotspot != 0;
            BYTE1(v112) = 1;
            DWORD1(v112) = v114;
            BYTE8(v112) = 0;
            v113 = 0;
            a4 = v32;
            if (WiFiNetworkGetIntProperty())
            {
              BYTE8(v112) = 1;
              *v125 = v108;
              std::string::operator=(&v125[8], &__p);
              v126 = v110;
              v127 = v111;
              v128 = v112;
              v129 = v113;
              if (qword_1025D4630 != -1)
              {
                sub_1018CD6B8();
              }

              v43 = qword_1025D4638;
              if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
              {
                sub_100C5CA98(&v108, buf);
                v44 = buf;
                if (buf[23] < 0)
                {
                  v44 = *buf;
                }

                *v124 = 136380675;
                *&v124[4] = v44;
                _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEFAULT, "@WsbCb, associated AP, %{private}s", v124, 0xCu);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }

              if (sub_10000A100(121, 2))
              {
                sub_1018CD6E0(buf);
                v45 = qword_1025D4638;
                sub_100C5CA98(&v108, v124);
                v46 = v124;
                if (v124[23] < 0)
                {
                  v46 = *v124;
                }

                LODWORD(v123.__r_.__value_.__l.__data_) = 136380675;
                *(v123.__r_.__value_.__r.__words + 4) = v46;
                LODWORD(v103) = 12;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v45, 0, "@WsbCb, associated AP, %{private}s", &v123, v103);
                v48 = v47;
                if ((v124[23] & 0x80000000) != 0)
                {
                  operator delete(*v124);
                }

                sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v48);
                if (v48 != buf)
                {
                  free(v48);
                }
              }
            }

            else
            {
              BYTE8(v112) = 0;
            }

            v113 = *&Current;
            if ((DWORD2(v110) - 257) >= 0xFFFFFF00 && *&v111 >= 0.0 && *&v111 <= 86400.0 && (*buf = v108, sub_10018D3FC(buf)))
            {
              v56 = *(a1 + 520);
              if (v56 >= *(a1 + 528))
              {
                v59 = sub_10014E208((a1 + 512), &v108);
                v60 = a1;
              }

              else
              {
                *v56 = v108;
                v57 = (v56 + 8);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_100007244(v57, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                }

                else
                {
                  v58 = *&__p.__r_.__value_.__l.__data_;
                  *(v56 + 24) = *(&__p.__r_.__value_.__l + 2);
                  *v57 = v58;
                }

                v61 = v110;
                v62 = v111;
                v63 = v112;
                *(v56 + 80) = v113;
                *(v56 + 48) = v62;
                *(v56 + 64) = v63;
                *(v56 + 32) = v61;
                v59 = v56 + 88;
                v60 = a1;
                *(a1 + 520) = v56 + 88;
              }

              *(v60 + 520) = v59;
              [*(v60 + 672) processEventTime:Current - v38];
            }

            else
            {
              if (qword_1025D4630 != -1)
              {
                sub_1018CD6B8();
              }

              v49 = qword_1025D4638;
              if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
              {
                v50 = DWORD2(v110);
                v51 = v111;
                v123.__r_.__value_.__r.__words[0] = v108;
                sub_1000ECD9C(v124);
                v52 = v124;
                if (v124[23] < 0)
                {
                  v52 = *v124;
                }

                *buf = 67240963;
                *&buf[4] = 1;
                *&buf[8] = 1026;
                *&buf[10] = v50;
                *&buf[14] = 2050;
                *&buf[16] = v51;
                *&buf[24] = 2081;
                *&buf[26] = v52;
                _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_ERROR, "@WsbCb, bad, %{public}d, channel, %{public}d, age, %{public}.0f, mac, %{private}s", buf, 0x22u);
                if ((v124[23] & 0x80000000) != 0)
                {
                  operator delete(*v124);
                }
              }

              ++v106;
              if (sub_10000A100(121, 0))
              {
                sub_1018CD6E0(buf);
                v69 = qword_1025D4638;
                v70 = DWORD2(v110);
                v71 = v111;
                sub_1000ECD9C(&v123);
                v72 = &v123;
                if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v72 = v123.__r_.__value_.__r.__words[0];
                }

                *v124 = 67240963;
                *&v124[4] = 1;
                *&v124[8] = 1026;
                *&v124[10] = v70;
                *&v124[14] = 2050;
                *&v124[16] = v71;
                *&v124[24] = 2081;
                *&v124[26] = v72;
                LODWORD(v103) = 34;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v69, 16, "@WsbCb, bad, %{public}d, channel, %{public}d, age, %{public}.0f, mac, %{private}s", v124, v103);
                v74 = v73;
                if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v123.__r_.__value_.__l.__data_);
                }

                sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v74);
                if (v74 != buf)
                {
                  free(v74);
                }
              }
            }

            if (qword_1025D4630 != -1)
            {
              sub_1018CD6B8();
            }

            v53 = qword_1025D4638;
            if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
            {
              sub_100C5CA98(&v108, v124);
              v54 = v124;
              if (v124[23] < 0)
              {
                v54 = *v124;
              }

              v55 = v115;
              if (v116 < 0)
              {
                v55 = v115[0];
              }

              *buf = 67240707;
              *&buf[4] = v31 + 1;
              *&buf[8] = 2081;
              *&buf[10] = v54;
              *&buf[18] = 2082;
              *&buf[20] = v55;
              _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEBUG, "@WsbCb, AP, %{public}d, %{private}s, band, %{public}s", buf, 0x1Cu);
              if ((v124[23] & 0x80000000) != 0)
              {
                operator delete(*v124);
              }
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018CD6E0(buf);
              v64 = qword_1025D4638;
              sub_100C5CA98(&v108, &v123);
              v65 = &v123;
              if ((v123.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v65 = v123.__r_.__value_.__r.__words[0];
              }

              v66 = v115;
              if (v116 < 0)
              {
                v66 = v115[0];
              }

              *v124 = 67240707;
              *&v124[4] = v31 + 1;
              *&v124[8] = 2081;
              *&v124[10] = v65;
              *&v124[18] = 2082;
              *&v124[20] = v66;
              LODWORD(v103) = 28;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v64, 2, "@WsbCb, AP, %{public}d, %{private}s, band, %{public}s", v124, v103);
              v68 = v67;
              if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v123.__r_.__value_.__l.__data_);
              }

              sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v68);
              if (v68 != buf)
              {
                free(v68);
              }
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v116 < 0)
            {
              operator delete(v115[0]);
            }

            ++v31;
          }

          while ((v104 & 0x7FFFFFFF) != v31);
          v75 = 4 * v106;
        }

        if (v75 < v104)
        {
          *buf = -256;
          buf[8] = 0;
          v133 = 0;
          memset(v134, 0, sizeof(v134));
          v135 = 0;
          sub_1002DEB0C(&buf[8], v125);
          HIDWORD(v135) = 1;
          (*(*a1 + 240))(a1, &v134[8], v134);
          LODWORD(v108) = 12;
          (*(*a1 + 152))(a1, &v108, buf, 0, 0xFFFFFFFFLL, 0);
          v108 = &v134[8];
          sub_1000B96B4(&v108);
          if (v133 == 1 && v132 < 0)
          {
            operator delete(*&buf[16]);
          }
        }

        if ((v125[31] & 0x80000000) != 0)
        {
          operator delete(*&v125[8]);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v118.__r_.__value_.__l.__data_);
        }

        v76 = v75 < v104;
        LODWORD(Count) = v104;
        if (!v76)
        {
          goto LABEL_143;
        }

LABEL_142:
        v77 = a1;
        goto LABEL_149;
      }
    }

    else
    {
      __dst = *byte_102637AD8;
      *v125 = qword_102637AD0;
    }

    *&v125[8] = *byte_102637AD8;
    *&v125[24] = *&byte_102637AD8[16];
    goto LABEL_49;
  }

  if (qword_1025D4630 != -1)
  {
    sub_1018CD6B8();
  }

  v20 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
  {
    v21 = *(a1 + 504);
    *buf = 134349568;
    *&buf[4] = Current - IntProperty;
    *&buf[12] = 2050;
    *&buf[14] = v21;
    *&buf[22] = 1026;
    *&buf[24] = Count;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "@WsbCb, duplicate, times, %{public}.1f, %{public}.1f, count, %{public}d, #CloneMe", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018CD6E0(buf);
    v22 = *(a1 + 504);
    *v125 = 134349568;
    *&v125[4] = Current - IntProperty;
    *&v125[12] = 2050;
    *&v125[14] = v22;
    *&v125[22] = 1026;
    *&v125[24] = Count;
    LODWORD(v103) = 28;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 16, "@WsbCb, duplicate, times, %{public}.1f, %{public}.1f, count, %{public}d, #CloneMe", v125, v103);
    v24 = v23;
    sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v23);
    if (v24 != buf)
    {
      free(v24);
    }
  }

LABEL_143:
  if (qword_1025D4630 != -1)
  {
    sub_1018CD6B8();
    LODWORD(Count) = v104;
  }

  v78 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    *&buf[4] = Count;
    _os_log_impl(dword_100000000, v78, OS_LOG_TYPE_DEBUG, "WsbMetric, groupresult, discard, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD6E0(buf);
    *v125 = 67240192;
    *&v125[4] = v104;
    LODWORD(v103) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "WsbMetric, groupresult, discard, %{public}d", v125, v103);
    v98 = v97;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v97);
    if (v98 != buf)
    {
      free(v98);
    }
  }

  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  v77 = a1;
  sub_10014E54C((a1 + 512));
  v104 = 0;
LABEL_149:
  v79 = *(v77 + 288);
  if (v79 <= 0.0)
  {
    v80 = -1;
  }

  else
  {
    v80 = (Current - v79);
  }

  if (*(v77 + 246))
  {
    v81 = "fake";
  }

  else if (*(v77 + 248))
  {
    v81 = "fences";
  }

  else
  {
    v81 = "off";
  }

  if (qword_1025D4630 != -1)
  {
    sub_1018CD6B8();
  }

  v82 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240706;
    *&buf[4] = v104;
    *&buf[8] = 1026;
    *&buf[10] = v80;
    *&buf[14] = 2082;
    *&buf[16] = v81;
    _os_log_impl(dword_100000000, v82, OS_LOG_TYPE_DEBUG, "WsbMetric, callback, aps, %{public}d, delta, %{public}d, active, %{public}s", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD6E0(buf);
    *v125 = 67240706;
    *&v125[4] = v104;
    *&v125[8] = 1026;
    *&v125[10] = v80;
    *&v125[14] = 2082;
    *&v125[16] = v81;
    LODWORD(v103) = 24;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "WsbMetric, callback, aps, %{public}d, delta, %{public}d, active, %{public}s", v125, v103);
    v92 = v91;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v91);
    if (v92 != buf)
    {
      free(v92);
    }
  }

  AnalyticsSendEventLazy();
  *(a1 + 288) = Current;
  os_activity_scope_leave(&state);
  if (HIBYTE(v122) == 1)
  {
    if (v122)
    {
      pthread_mutex_unlock(v121);
    }

    else
    {
      (*(*v120 + 24))(v120);
    }
  }
}